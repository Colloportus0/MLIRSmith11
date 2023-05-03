module {
  func @main() {
    %cst = arith.constant 6.000000e+00 : f64
    %cst_0 = arith.constant 5.000000e+00 : f64
    %cst_1 = arith.constant 4.000000e+00 : f64
    %cst_2 = arith.constant 3.000000e+00 : f64
    %cst_3 = arith.constant 2.000000e+00 : f64
    %cst_4 = arith.constant 1.000000e+00 : f64
    %0 = memref.alloc() : memref<3x2xf64>
    %1 = memref.alloc() : memref<3x2xf64>
    %2 = memref.alloc() : memref<2x3xf64>
    affine.store %cst_4, %2[0, 0] : memref<2x3xf64>
    affine.store %cst_3, %2[0, 1] : memref<2x3xf64>
    affine.store %cst_2, %2[0, 2] : memref<2x3xf64>
    affine.store %cst_1, %2[1, 0] : memref<2x3xf64>
    affine.store %cst_0, %2[1, 1] : memref<2x3xf64>
    affine.store %cst, %2[1, 2] : memref<2x3xf64>
    memref.dealloc %2 : memref<2x3xf64>
    memref.dealloc %1 : memref<3x2xf64>
    memref.dealloc %0 : memref<3x2xf64>
    return
  }
}
