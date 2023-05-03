  memref.store %201, %alloc_19[%c0, %c3] : memref<4x4xi1>
    %242 = linalg.matmul ins(%8, %153 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%7 : tensor<4x4xi32>) -> tensor<4x4xi32>
    memref.store %159, %alloc_19[%c1, %c0] : memref<4x4xi1>
    %243 = arith.remui %77, %136 : i32
