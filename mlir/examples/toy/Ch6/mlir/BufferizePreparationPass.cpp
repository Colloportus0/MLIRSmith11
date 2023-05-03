//
// Created by Stan Wang on 2023/1/29.
//
#include "mlir/IR/BuiltinDialect.h"
#include "toy/Dialect.h"
#include "toy/Passes.h"

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Bufferization/Transforms/Transforms.h"
#include "mlir/Dialect/Bufferization/IR/BufferizationOpsDialect.h.inc"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/Sequence.h"

using namespace mlir;

namespace {

struct BufferizationPreparationPass
    : public mlir::PassWrapper<BufferizationPreparationPass,
                               OperationPass<ModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(BufferizationPreparationPass)

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<bufferization::BufferizationDialect>();
  }
  void runOnOperation() final;
};
} // namespace

void BufferizationPreparationPass::runOnOperation() {
  RewritePatternSet patterns(&getContext());
  bufferization::populateEmptyTensorToAllocTensorPattern(patterns);
  auto module = mlir::OperationPass<ModuleOp>::getOperation();

  mlir::ConversionTarget target(getContext());
  target.addLegalDialect<bufferization::BufferizationDialect>();
  target.addIllegalOp<tensor::EmptyOp>();

  if (failed(applyPartialConversion(module, target, std::move(patterns)))){
    return signalPassFailure();
  }
}

std::unique_ptr<mlir::Pass> mlir::toy::createBufferizationPreparationPass() {
  return std::make_unique<BufferizationPreparationPass>();
}
