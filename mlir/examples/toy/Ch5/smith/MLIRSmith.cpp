//
// Created by Stan Wang on 2022/9/13.
//

#include "smith/MLIRSmith.h"
#include "mlir/Dialect/Index/IR/IndexDialect.h"

using namespace mlir;

//
// void createFillMemrefFunc(OpBuilder &builder, Location loc, MemRefType) {
//  auto funcName = "fillMemref";
//  SmallVector<Type> argTypes;
//  SmallVector<Type> retTypes;
//  auto funcTy = FunctionType::get(builder.getContext(),  );
//}

void consumeEachTensor(OpBuilder &builder, Location loc, TypedValuePool &p) {
  for (auto tval : p.staticShapedTensorPool) {
    auto tensorType = tval.type.dyn_cast<RankedTensorType>();
    if (tensorType) {
      auto shapedType = tval.type.dyn_cast<ShapedType>();
      auto memrefType =
          MemRefType::get(shapedType.getShape(), shapedType.getElementType());

      auto mem = TypeValue(memrefType,
                           builder.create<memref::AllocOp>(loc, memrefType));
      p.addStaticShapedMemref(mem, "memref.alloc(consumeT)");

      builder.create<memref::TensorStoreOp>(loc, tval.val, mem.val);
    }
  }
}

struct GenOpLowering : public OpRewritePattern<toy::GenOp> {
  using OpRewritePattern<toy::GenOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(toy::GenOp op,
                                PatternRewriter &rewriter) const final {
    Location loc = op.getLoc();
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);

    /* using nano-second instead of seconds */
    srand((time_t)ts.tv_nsec);

    OpRegion region("builtin.module", 0);
    std::set<std::string> opsForModule = {"func.func"};
    auto regionGen = RegionGen(&region, {OpNameFilter(opsForModule)});
    regionGen.apply(rewriter, loc, 2);

    // ----------------------- End of Random Generating --------------------
    rewriter.eraseOp(op);
    return success();
  }
};

//===----------------------------------------------------------------------===//
// ToyToAffine RewritePatterns: Func operations
//===----------------------------------------------------------------------===//

struct FuncOpLowering : public OpConversionPattern<toy::FuncOp> {
  using OpConversionPattern<toy::FuncOp>::OpConversionPattern;

  LogicalResult
  matchAndRewrite(toy::FuncOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const final {
    // We only lower the main function as we expect that all other functions
    // have been inlined.
    if (op.getName() != "main")
      return failure();

    // Verify that the given main has no inputs and results.
    if (op.getNumArguments() || op.getFunctionType().getNumResults()) {
      return rewriter.notifyMatchFailure(op, [](Diagnostic &diag) {
        diag << "expected 'main' to have 0 inputs and 0 results";
      });
    }

    // Create a new non-toy function, with the same region.
    auto func = rewriter.create<mlir::func::FuncOp>(op.getLoc(), op.getName(),
                                                    op.getFunctionType());
    rewriter.inlineRegionBefore(op.getRegion(), func.getBody(), func.end());
    rewriter.eraseOp(op);
    return success();
  }
};

//===----------------------------------------------------------------------===//
// ToyToAffine RewritePatterns: Return operations
//===----------------------------------------------------------------------===//

struct ReturnOpLowering : public OpRewritePattern<toy::ReturnOp> {
  using OpRewritePattern<toy::ReturnOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(toy::ReturnOp op,
                                PatternRewriter &rewriter) const final {
    // During this lowering, we expect that all function calls have been
    // inlined.
    if (op.hasOperand())
      return failure();

    // We lower "toy.return" directly to "std.return".
    rewriter.replaceOpWithNewOp<func::ReturnOp>(op);
    return success();
  }
};

namespace {
struct MLIRSmithPass
    : public PassWrapper<MLIRSmithPass, OperationPass<ModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MLIRSmithPass)
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<scf::SCFDialect, linalg::LinalgDialect, AffineDialect,
                    arith::ArithDialect, index::IndexDialect,
                    memref::MemRefDialect, BuiltinDialect, math::MathDialect,
                    bufferization::BufferizationDialect, func::FuncDialect,
                    vector::VectorDialect>();
  }
  void runOnOperation() final;
};
} // namespace

void MLIRSmithPass::runOnOperation() {
  // The first thing to define is the conversion target. This will define the
  // final target for this lowering.
  ConversionTarget target(getContext());

  // We define the specific operations, or dialects, that are legal targets for
  // this lowering. In our case, we are lowering to a combination of the
  // `Affine`, `Arithmetic`, `MemRef`, and `Standard` dialects.
  target.addLegalDialect<scf::SCFDialect, linalg::LinalgDialect, AffineDialect,
                         arith::ArithDialect, memref::MemRefDialect,
                         math::MathDialect, func::FuncDialect,
                         index::IndexDialect, BuiltinDialect,
                         bufferization::BufferizationDialect,
                         tensor::TensorDialect, vector::VectorDialect>();

  // We also define the Toy dialect as Illegal so that the conversion will fail
  // if any of these operations are *not* converted. Given that we actually want
  // a partial lowering, we explicitly mark the Toy operations that don't want
  // to lower, `toy.print`, as `legal`. `toy.print` will still need its operands
  // to be updated though (as we convert from TensorType to MemRefType), so we
  // only treat it as `legal` if its operands are legal.
  target.addIllegalDialect<toy::ToyDialect>();
  target.addDynamicallyLegalOp<toy::PrintOp>(
      [](toy::PrintOp op) { return true; });

  // Now that the conversion target has been defined, we just need to provide
  // the set of patterns that will lower the Toy operations.
  RewritePatternSet patterns(&getContext());
  patterns.add<FuncOpLowering, GenOpLowering, ReturnOpLowering>(&getContext());

  // With the target and rewrite patterns defined, we can now attempt the
  // conversion. The conversion will signal failure if any of our `illegal`
  // operations were not converted successfully.
  if (failed(
          applyPartialConversion(getOperation(), target, std::move(patterns))))
    signalPassFailure();
}

int mlir::toy::printConfig() {
  std::cout << configJsonStr() << std::endl;
  return 0;
}

std::unique_ptr<Pass> mlir::toy::createMLIRSmithPass() {
  //  initConfig();
  initType();
  return std::make_unique<MLIRSmithPass>();
}
