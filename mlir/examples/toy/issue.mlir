module  {
  func @main() {
    %cst_4 = arith.constant 1.000000e+00 : f64
    %2 = memref.alloc() : memref<2x3xf64>
    %c0 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    memref.store %cst_4, %2[%c0, %c0_5] : memref<2x3xf64>
    memref.dealloc %2 : memref<2x3xf64>
    return
  }
}
