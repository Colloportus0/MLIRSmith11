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
    %c0 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    memref.store %cst_4, %2[%c0, %c0_5] : memref<2x3xf64>
    %c0_6 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    memref.store %cst_3, %2[%c0_6, %c1] : memref<2x3xf64>
    %c0_7 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    memref.store %cst_2, %2[%c0_7, %c2] : memref<2x3xf64>
    %c1_8 = arith.constant 1 : index
    %c0_9 = arith.constant 0 : index
    memref.store %cst_1, %2[%c1_8, %c0_9] : memref<2x3xf64>
    %c1_10 = arith.constant 1 : index
    %c1_11 = arith.constant 1 : index
    memref.store %cst_0, %2[%c1_10, %c1_11] : memref<2x3xf64>
    %c1_12 = arith.constant 1 : index
    %c2_13 = arith.constant 2 : index
    memref.store %cst, %2[%c1_12, %c2_13] : memref<2x3xf64>
    %c0_14 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg0 = %c0_14 to %c3 step %c1_15 {
      %c0_19 = arith.constant 0 : index
      %c2_20 = arith.constant 2 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg1 = %c0_19 to %c2_20 step %c1_21 {
        %3 = memref.load %2[%arg1, %arg0] : memref<2x3xf64>
        memref.store %3, %1[%arg0, %arg1] : memref<3x2xf64>
      }
    }
    %c0_16 = arith.constant 0 : index
    %c3_17 = arith.constant 3 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg0 = %c0_16 to %c3_17 step %c1_18 {
      %c0_19 = arith.constant 0 : index
      %c2_20 = arith.constant 2 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg1 = %c0_19 to %c2_20 step %c1_21 {
        %3 = memref.load %1[%arg0, %arg1] : memref<3x2xf64>
        %4 = memref.load %1[%arg0, %arg1] : memref<3x2xf64>
        %5 = arith.mulf %3, %4 : f64
        memref.store %5, %0[%arg0, %arg1] : memref<3x2xf64>
      }
    }
    memref.dealloc %2 : memref<2x3xf64>
    memref.dealloc %1 : memref<3x2xf64>
    memref.dealloc %0 : memref<3x2xf64>
    return
  }
}

