import os

log_dirs = ["/Users/haoyu/workspace/mlir-fuzz/exp/fuzz1/log/", "/Users/haoyu/workspace/mlir-fuzz/exp/fuzz/log/"]

strs = ["function getMemorySpaceAsInt, file BuiltinTypes.cpp", "expected linalg op with buffer semantics",
        "unimplemented types for ConstantOp", "cast<Ty>() argument of incompatible type!",
        "mlir::vector::InsertElementOp::fold", "mlir::scf::(anonymous namespace)::WhileOpInterface::verifyAnalysis",
        "replaceSCFOutputValue<mlir::scf::IfOp, mlir::spirv::SelectionOp>",
        "expected 'from' to be contained within the map",
        "mlir::BufferViewFlowAnalysis::build(mlir::Operation*)",
        "\"Invalid entry region without an attached successor region\""
        "Invalid entry region without an attached successor region",
        "(all_equal({std::distance(adl_begin(t), adl_end(t))",
        # "Building op `llvm.br` but it isn't registered in this MLIRContext",
        "entrySuccessor",
        "ops expected to have a common surrounding block",
        "have a common surrounding block",
        "canonicalizeMinMaxOpInLoop", "GenericAtomicRMWOpLowering", "SmallVector.h",
        "dyn_cast on a non-existent value",
        "Bit position out of bounds!",
        "B's values aren't unique",
        "(succeeded(ConcreteT::verify(getDefaultDiagnosticEmitFn(ctx), args...)))"
        ]


def not_contain(f, strs):
    with open(f, 'r') as log:
        for line in log.readlines():
            for s in strs:
                if line.find(s) != -1:
                    return False
        return True


for d in log_dirs:
    for file in os.listdir(d):
        filename = d + file
        if not_contain(filename, strs):
            print(filename)
