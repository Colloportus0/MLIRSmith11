module {
  func.func private @func1() -> memref<6x8x16xi64> {
    %c-31681_i16 = arith.constant -31681 : i16
    %c1439632664_i64 = arith.constant 1439632664 : i64
    %c1811427327_i32 = arith.constant 1811427327 : i32
    %c1731481554_i64 = arith.constant 1731481554 : i64
    %cst = arith.constant 0x4CC6F462 : f32
    %c-12520_i16 = arith.constant -12520 : i16
    %c1910113794_i32 = arith.constant 1910113794 : i32
    %cst_0 = arith.constant 1.569600e+04 : f16
    %c1368919089_i32 = arith.constant 1368919089 : i32
    %c1716536641_i32 = arith.constant 1716536641 : i32
    %c-5864_i16 = arith.constant -5864 : i16
    %cst_1 = arith.constant 0x4D800F2D : f32
    %true = arith.constant true
    %cst_2 = arith.constant 6.105600e+04 : f16
    %c-22873_i16 = arith.constant -22873 : i16
    %c1540477454_i64 = arith.constant 1540477454 : i64
    %0 = tensor.empty() : tensor<12xi16>
    %1 = tensor.empty() : tensor<12x6xi1>
    %2 = tensor.empty() : tensor<12x6xi32>
    %3 = tensor.empty() : tensor<12x6xf32>
    %4 = tensor.empty() : tensor<6x8x16xf16>
    %5 = tensor.empty() : tensor<12x6xi32>
    %6 = tensor.empty() : tensor<6x8x16xi16>
    %7 = tensor.empty() : tensor<6x8x16xi64>
    %8 = tensor.empty() : tensor<6x8x16xi64>
    %9 = tensor.empty() : tensor<12xi64>
    %10 = tensor.empty() : tensor<12xf16>
    %11 = tensor.empty() : tensor<12x6xi16>
    %12 = tensor.empty() : tensor<12xi1>
    %13 = tensor.empty() : tensor<6x8x16xi64>
    %14 = tensor.empty() : tensor<12xf32>
    %15 = tensor.empty() : tensor<12x6xi32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c8 = arith.constant 8 : index
    %c9 = arith.constant 9 : index
    %c10 = arith.constant 10 : index
    %c11 = arith.constant 11 : index
    %c12 = arith.constant 12 : index
    %c13 = arith.constant 13 : index
    %c14 = arith.constant 14 : index
    %c15 = arith.constant 15 : index
    %alloc = memref.alloc() : memref<12xi1>
    %alloc_3 = memref.alloc() : memref<6x8x16xf16>
    %alloc_4 = memref.alloc() : memref<12x6xi16>
    %alloc_5 = memref.alloc() : memref<12xi32>
    %alloc_6 = memref.alloc() : memref<12xi1>
    %alloc_7 = memref.alloc() : memref<12x6xf32>
    %alloc_8 = memref.alloc() : memref<6x8x16xi1>
    %alloc_9 = memref.alloc() : memref<6x8x16xf16>
    %alloc_10 = memref.alloc() : memref<12xi16>
    %alloc_11 = memref.alloc() : memref<12xi64>
    %alloc_12 = memref.alloc() : memref<6x8x16xi16>
    %alloc_13 = memref.alloc() : memref<6x8x16xi32>
    %alloc_14 = memref.alloc() : memref<6x8x16xi64>
    %alloc_15 = memref.alloc() : memref<12xi32>
    %alloc_16 = memref.alloc() : memref<12xf32>
    %alloc_17 = memref.alloc() : memref<12xi32>
    %16 = tensor.empty() : tensor<6x8x16xi64>
    %17 = linalg.copy ins(%13 : tensor<6x8x16xi64>) outs(%16 : tensor<6x8x16xi64>) -> tensor<6x8x16xi64>
    %18 = tensor.empty() : tensor<16x6x8xi32>
    %transposed = linalg.transpose ins(%alloc_13 : memref<6x8x16xi32>) outs(%18 : tensor<16x6x8xi32>) permutation = [2, 0, 1] 
    %alloc_18 = memref.alloc() : memref<8xi64>
    linalg.reduce ins(%8 : tensor<6x8x16xi64>) outs(%alloc_18 : memref<8xi64>) dimensions = [0, 2] 
      (%in: i64, %init: i64) {
        %extracted_38 = tensor.extract %6[%c5, %c4, %c9] : tensor<6x8x16xi16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %278 = vector.transfer_read %11[%c8, %c14], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<12x6xi16>, vector<12xi16>
        %279 = math.ipowi %8, %8 : tensor<6x8x16xi64>
        %280 = index.add %c14, %c0
        %alloc_39 = memref.alloc() : memref<12x6xf16>
        %281 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        %282 = vector.broadcast %true : i1 to vector<12xi1>
        %283 = vector.broadcast %c1910113794_i32 : i32 to vector<12xi32>
        %284 = vector.gather %alloc_39[%c4, %c12] [%283], %282, %281 : memref<12x6xf16>, vector<12xi32>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %285 = math.expm1 %cst_1 : f32
        %286 = affine.max affine_map<(d0, d1, d2) -> (-(d1 - d0), d1 + 64, (d1 + 64) ceildiv 16)>(%c7, %c0, %c5)
        %287 = math.floor %cst_2 : f16
        %c1_i64_40 = arith.constant 1 : i64
        linalg.yield %c1_i64_40 : i64
      }
    scf.parallel (%arg0, %arg1) = (%c3, %c0) to (%c4, %c14) step (%c4, %c13) {
      %278 = math.absi %true : i1
      %279 = tensor.empty() : tensor<12xi64>
      %280 = index.ceildivu %c12, %arg1
      %c1_i64_38 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %281 = vector.transfer_read %279[%c7], %c0_i64 : tensor<12xi64>, vector<i64>
      %282 = math.log1p %10 : tensor<12xf16>
      affine.store %c1731481554_i64, %alloc_11[%c9] : memref<12xi64>
      %283 = affine.load %alloc_7[%c11, %c4] : memref<12x6xf32>
      %284 = math.cttz %c1731481554_i64 : i64
      bufferization.dealloc_tensor %7 : tensor<6x8x16xi64>
      %285 = vector.broadcast %cst_2 : f16 to vector<12x6xf16>
      %286 = vector.shuffle %285, %285 [1, 2, 3, 4, 6, 7, 9, 12, 14, 15, 16, 17, 21, 22] : vector<12x6xf16>, vector<12x6xf16>
      %287 = math.fpowi %cst_0, %c1811427327_i32 : f16, i32
      %288 = arith.cmpf uge, %283, %283 : f32
      %289 = math.floor %14 : tensor<12xf32>
      %290 = math.log2 %14 : tensor<12xf32>
      %291 = index.divu %c9, %c1
      %292 = vector.broadcast %c1368919089_i32 : i32 to vector<12x6xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_4[%c12, %c8] : memref<12x6xi16>, vector<12xi16>
    affine.vector_store %19, %alloc_10[%c14] : memref<12xi16>, vector<12xi16>
    %alloc_19 = memref.alloc() : memref<12xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%9, %alloc_19 : tensor<12xi64>, memref<12xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = math.cttz %c-5864_i16 : i16
    %23 = math.floor %10 : tensor<12xf16>
    memref.store %cst_2, %alloc_9[%c5, %c0, %c14] : memref<6x8x16xf16>
    %24 = arith.minsi %c1811427327_i32, %c1811427327_i32 : i32
    %25 = arith.xori %c1716536641_i32, %c1910113794_i32 : i32
    %cst_20 = arith.constant 1.000000e+00 : f16
    %26 = vector.transfer_read %4[%c9, %c4, %c5], %cst_20 : tensor<6x8x16xf16>, vector<12x16xf16>
    %27 = arith.maxf %cst_1, %cst_1 : f32
    %28 = math.floor %cst_1 : f32
    %29 = memref.atomic_rmw assign %cst, %alloc_7[%c3, %c0] : (f32, memref<12x6xf32>) -> f32
    %30 = arith.floordivsi %c-22873_i16, %c-5864_i16 : i16
    %31 = math.tanh %14 : tensor<12xf32>
    %32 = math.ipowi %18, %18 : tensor<16x6x8xi32>
    %33 = math.fma %cst_2, %cst_0, %cst_20 : f16
    %34 = affine.if affine_set<(d0, d1, d2) : (d2 - 8 >= 0)>(%c0, %c9, %c8) -> memref<12xi16> {
      affine.for %arg0 = 0 to 19 {
      }
      %cast = tensor.cast %14 : tensor<12xf32> to tensor<?xf32>
      %278 = math.fpowi %3, %5 : tensor<12x6xf32>, tensor<12x6xi32>
      %279 = arith.maxsi %c1731481554_i64, %c1439632664_i64 : i64
      %280 = math.tanh %cst_1 : f32
      %281 = arith.addi %c-5864_i16, %c-22873_i16 : i16
      %282 = arith.mulf %cst_0, %cst_20 : f16
      %283 = arith.divsi %c1368919089_i32, %c1910113794_i32 : i32
      affine.yield %alloc_10 : memref<12xi16>
    } else {
      %278 = arith.divsi %c1811427327_i32, %c1368919089_i32 : i32
      %279 = arith.remui %c1811427327_i32, %c1716536641_i32 : i32
      memref.tensor_store %7, %alloc_14 : memref<6x8x16xi64>
      %280 = arith.shli %c1731481554_i64, %c1439632664_i64 : i64
      %281 = arith.maxui %c1910113794_i32, %c1910113794_i32 : i32
      memref.assume_alignment %alloc_5, 4 : memref<12xi32>
      %282 = arith.maxf %cst_0, %cst_20 : f16
      %from_elements_38 = tensor.from_elements %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32 : tensor<6x8x16xi32>
      affine.yield %alloc_10 : memref<12xi16>
    }
    %35 = index.add %c0, %c0
    %36 = math.floor %cst_20 : f16
    %37 = index.sizeof
    %38 = arith.maxf %cst_0, %cst_20 : f16
    %39 = affine.load %alloc_10[%c2] : memref<12xi16>
    %40 = arith.andi %c1716536641_i32, %c1811427327_i32 : i32
    %41 = index.casts %39 : i16 to index
    %42 = math.absi %2 : tensor<12x6xi32>
    %43 = math.absi %c-5864_i16 : i16
    %44 = math.exp2 %3 : tensor<12x6xf32>
    %45 = index.divs %c1, %41
    %extracted = tensor.extract %1[%c10, %c4] : tensor<12x6xi1>
    %46 = math.exp %14 : tensor<12xf32>
    %47 = math.cttz %7 : tensor<6x8x16xi64>
    %48 = index.casts %c1910113794_i32 : i32 to index
    %49 = math.atan %14 : tensor<12xf32>
    %50 = index.ceildivs %45, %c6
    %51 = index.casts %c0 : index to i32
    %52 = math.floor %4 : tensor<6x8x16xf16>
    %53 = arith.maxf %cst, %cst_1 : f32
    %extracted_21 = tensor.extract %14[%c7] : tensor<12xf32>
    %54 = vector.splat %39 : vector<6x8x16xi16>
    %55 = math.sqrt %4 : tensor<6x8x16xf16>
    %56 = arith.divui %c-31681_i16, %c-31681_i16 : i16
    %true_22 = arith.constant true
    %57 = vector.load %alloc_4[%c11, %c1] : memref<12x6xi16>, vector<12x6xi16>
    %58 = arith.ori %c1368919089_i32, %c1368919089_i32 : i32
    %59 = vector.shuffle %57, %57 [0, 2, 4, 5, 6, 8, 10, 14, 19, 22, 23] : vector<12x6xi16>, vector<12x6xi16>
    %60 = arith.shrsi %c-12520_i16, %c-31681_i16 : i16
    %61 = arith.mulf %cst_2, %cst_2 : f16
    %62 = index.ceildivu %c8, %c4
    %63 = math.round %14 : tensor<12xf32>
    %64 = arith.divsi %39, %c-5864_i16 : i16
    %65 = arith.cmpf uno, %cst, %cst : f32
    affine.store %c1731481554_i64, %alloc_18[%c13] : memref<8xi64>
    memref.store %true, %alloc_8[%c3, %c2, %c4] : memref<6x8x16xi1>
    %66 = memref.atomic_rmw addf %cst_0, %alloc_9[%c4, %c5, %c4] : (f16, memref<6x8x16xf16>) -> f16
    %67 = tensor.empty() : tensor<12xi32>
    %68 = math.fpowi %14, %67 : tensor<12xf32>, tensor<12xi32>
    %69 = vector.broadcast %cst_0 : f16 to vector<f16>
    %70 = vector.transfer_write %69, %10[%c9] : vector<f16>, tensor<12xf16>
    %71 = vector.broadcast %c-22873_i16 : i16 to vector<6xi16>
    %72 = vector.insert %71, %57 [7] : vector<6xi16> into vector<12x6xi16>
    %73 = arith.maxsi %true, %extracted : i1
    %74 = vector.broadcast %c-5864_i16 : i16 to vector<i16>
    vector.transfer_write %74, %alloc_10[%62] : vector<i16>, memref<12xi16>
    memref.alloca_scope  {
      %278 = tensor.empty() : tensor<12xi64>
      %279 = arith.floordivsi %c-31681_i16, %c-22873_i16 : i16
      %280 = index.add %c5, %c11
      %281 = arith.shrsi %c1716536641_i32, %c1368919089_i32 : i32
      %282 = arith.divf %cst_1, %cst_1 : f32
      %cst_38 = arith.constant 1.000000e+00 : f32
      %283 = vector.transfer_read %3[%c15, %50], %cst_38 : tensor<12x6xf32>, vector<16xf32>
      %284 = arith.maxsi %c1910113794_i32, %c1811427327_i32 : i32
      %285 = math.absi %39 : i16
      %286 = vector.broadcast %extracted_21 : f32 to vector<12x6xf32>
      %287 = vector.fma %286, %286, %286 : vector<12x6xf32>
      %288 = affine.min affine_map<(d0, d1, d2) -> (d2, (d0 * 8) floordiv 128, (d1 - 16) mod 128, d1)>(%c7, %c4, %c9)
      %289 = bufferization.clone %alloc_3 : memref<6x8x16xf16> to memref<6x8x16xf16>
      %290 = math.fma %3, %3, %3 : tensor<12x6xf32>
      %291 = bufferization.to_tensor %alloc_17 : memref<12xi32>
      %292 = math.ipowi %39, %c-22873_i16 : i16
      %293 = math.fma %cst_38, %cst, %cst : f32
      %294 = vector.insertelement %cst_20, %69[] : vector<f16>
      %295 = memref.load %alloc_15[%c7] : memref<12xi32>
      %296 = arith.cmpf ueq, %cst_2, %cst_20 : f16
      %297 = math.atan %3 : tensor<12x6xf32>
      %298 = arith.mulf %cst_0, %cst_20 : f16
      %299 = index.mul %c8, %35
      %300 = arith.ori %c-31681_i16, %c-5864_i16 : i16
      %301 = arith.maxf %extracted_21, %extracted_21 : f32
      %302 = math.atan2 %cst_38, %cst : f32
      %303 = memref.atomic_rmw mulf %cst, %alloc_7[%c9, %c5] : (f32, memref<12x6xf32>) -> f32
      %304 = index.maxu %c12, %c0
      %collapsed_39 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
      %305 = scf.while (%arg0 = %287) : (vector<12x6xf32>) -> vector<12x6xf32> {
        %308 = vector.matrix_multiply %71, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<6xi16>, vector<12xi16>) -> vector<2xi16>
        %309 = bufferization.to_memref %6 : memref<6x8x16xi16>
        %310 = math.powf %14, %14 : tensor<12xf32>
        %311 = arith.divsi %extracted, %true : i1
        %312 = tensor.empty() : tensor<12x6xi64>
        %c0_i16 = arith.constant 0 : i16
        %313 = vector.transfer_read %0[%c1], %c0_i16 : tensor<12xi16>, vector<i16>
        %314 = vector.broadcast %cst_38 : f32 to vector<6x8x16xf32>
        %315 = vector.fma %314, %314, %314 : vector<6x8x16xf32>
        %316 = math.absi %16 : tensor<6x8x16xi64>
        scf.condition(%extracted) %286 : vector<12x6xf32>
      } do {
      ^bb0(%arg0: vector<12x6xf32>):
        %308 = arith.ori %c1540477454_i64, %c1439632664_i64 : i64
        affine.store %c1439632664_i64, %alloc_14[%c1, %c12, %c5] : memref<6x8x16xi64>
        %309 = math.sqrt %3 : tensor<12x6xf32>
        %310 = memref.atomic_rmw minu %c-12520_i16, %alloc_4[%c8, %c2] : (i16, memref<12x6xi16>) -> i16
        %311 = math.tan %cst_20 : f16
        %312 = math.tan %cst_1 : f32
        %313 = math.cos %extracted_21 : f32
        %314 = arith.divui %c-22873_i16, %c-22873_i16 : i16
        %315 = affine.load %alloc[%c2] : memref<12xi1>
        %316 = math.copysign %extracted_21, %cst_38 : f32
        %317 = vector.shuffle %74, %74 [0, 1] : vector<i16>, vector<i16>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_41 = arith.constant 0 : i16
        %318 = vector.transfer_read %alloc_12[%304, %288, %288], %c0_i16_41 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<6x8x16xi16>, vector<6xi16>
        %319 = index.ceildivs %c6, %288
        %320 = math.fpowi %10, %291 : tensor<12xf16>, tensor<12xi32>
        %321 = vector.extract %19[2] : vector<12xi16>
        %322 = vector.broadcast %c8 : index to vector<8xindex>
        %323 = vector.broadcast %true : i1 to vector<8xi1>
        %324 = vector.broadcast %cst_20 : f16 to vector<8xf16>
        vector.scatter %289[%c2, %c7, %c12] [%322], %323, %324 : memref<6x8x16xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        scf.yield %287 : vector<12x6xf32>
      }
      affine.store %c1439632664_i64, %alloc_14[%c12, %c2, %c11] : memref<6x8x16xi64>
      %306 = arith.ceildivsi %c1439632664_i64, %c1540477454_i64 : i64
      %307 = index.mul %c6, %41
      %splat_40 = tensor.splat %extracted_21 : tensor<6x8x16xf32>
    }
    %75 = index.mul %c0, %c5
    %76 = arith.shrui %c-5864_i16, %39 : i16
    %77 = affine.max affine_map<(d0) -> (d0 mod 4 - 16, (-(d0 mod 4 - 15)) ceildiv 32, d0)>(%c8)
    %c1_i64 = arith.constant 1 : i64
    %78 = vector.transfer_read %alloc_14[%c14, %c13, %48], %c1_i64 : memref<6x8x16xi64>, vector<8x6xi64>
    %79 = arith.shrui %c1811427327_i32, %c1910113794_i32 : i32
    %80 = math.round %4 : tensor<6x8x16xf16>
    %true_23 = arith.constant true
    %81 = vector.transfer_read %alloc_8[%41, %c14, %77], %true_23 : memref<6x8x16xi1>, vector<8xi1>
    %82 = arith.ori %39, %c-22873_i16 : i16
    %83 = math.round %3 : tensor<12x6xf32>
    %84 = index.maxs %c7, %41
    %85 = vector.extract %57[7] : vector<12x6xi16>
    %86 = math.sqrt %10 : tensor<12xf16>
    %87 = affine.max affine_map<(d0, d1) -> (d0, d1 mod 32, d0 + 8, d1 mod 32)>(%c0, %84)
    %88 = math.log %cst : f32
    %89 = arith.andi %c-31681_i16, %c-22873_i16 : i16
    %90 = index.sizeof
    %91 = bufferization.clone %alloc_13 : memref<6x8x16xi32> to memref<6x8x16xi32>
    %92 = math.absi %c1439632664_i64 : i64
    %93 = vector.broadcast %true : i1 to vector<12xi1>
    %94 = vector.broadcast %c1716536641_i32 : i32 to vector<12xi32>
    %95 = vector.gather %alloc_10[%c13] [%94], %93, %19 : memref<12xi16>, vector<12xi32>, vector<12xi1>, vector<12xi16> into vector<12xi16>
    %from_elements = tensor.from_elements %c1540477454_i64, %c1540477454_i64, %c1_i64, %c1439632664_i64, %c1_i64, %c1731481554_i64, %c1731481554_i64, %c1_i64, %c1439632664_i64, %c1540477454_i64, %c1439632664_i64, %c1_i64 : tensor<12xi64>
    %96 = math.absf %10 : tensor<12xf16>
    %97 = math.cos %cst_1 : f32
    %98 = math.atan %10 : tensor<12xf16>
    %99 = tensor.empty() : tensor<6x8x16xi32>
    %100 = vector.broadcast %c1368919089_i32 : i32 to vector<6x8x16xi32>
    %101 = vector.broadcast %true_23 : i1 to vector<6x8x16xi1>
    %102 = vector.gather %99[%50, %c2, %c5] [%100], %101, %100 : tensor<6x8x16xi32>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xi32> into vector<6x8x16xi32>
    %103 = affine.apply affine_map<(d0, d1) -> ((d1 + 64) * -2048)>(%c5, %c2)
    %104 = arith.shli %c-31681_i16, %c-12520_i16 : i16
    %105 = vector.splat %c1716536641_i32 : vector<12xi32>
    %106 = math.absf %14 : tensor<12xf32>
    %107 = math.cttz %c-12520_i16 : i16
    %108 = tensor.empty(%c8) : tensor<?x6xi1>
    %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<12x6xf32> into tensor<72xf32>
    %109 = math.floor %collapsed : tensor<72xf32>
    %110 = tensor.empty() : tensor<12x6xi16>
    %mapped = linalg.map ins(%11, %alloc_4 : tensor<12x6xi16>, memref<12x6xi16>) outs(%110 : tensor<12x6xi16>)
      (%in: i16, %in_38: i16) {
        %278 = math.exp2 %cst_2 : f16
        %279 = math.absi %5 : tensor<12x6xi32>
        %280 = arith.mulf %cst_0, %cst_2 : f16
        %281 = math.fma %14, %14, %14 : tensor<12xf32>
        %alloca_39 = memref.alloca() : memref<12x6xi32>
        %282 = affine.load %alloc_13[%c3, %c9, %c8] : memref<6x8x16xi32>
        %283 = affine.load %alloc_7[%c0, %c9] : memref<12x6xf32>
        %284 = math.ipowi %6, %6 : tensor<6x8x16xi16>
        %285 = math.atan2 %cst, %cst_1 : f32
        %286 = arith.shrui %true_23, %extracted : i1
        memref.assume_alignment %alloc_8, 16 : memref<6x8x16xi1>
        %287 = math.fpowi %cst, %c1368919089_i32 : f32, i32
        %288 = math.powf %cst_1, %cst : f32
        %289 = math.tanh %3 : tensor<12x6xf32>
        %290 = affine.for %arg0 = 0 to 41 iter_args(%arg1 = %c10) -> (index) {
          affine.yield %c15 : index
        }
        %291 = arith.divui %c-22873_i16, %in : i16
        %292 = scf.while (%arg0 = %85) : (vector<6xi16>) -> vector<6xi16> {
          %308 = math.tan %cst_20 : f16
          %309 = vector.broadcast %extracted_21 : f32 to vector<12xf32>
          %310 = vector.gather %14[%c0] [%94], %93, %309 : tensor<12xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
          %311 = math.exp2 %10 : tensor<12xf16>
          %312 = math.tan %cst_20 : f16
          %313 = arith.divf %cst, %283 : f32
          %314 = math.exp2 %cst_1 : f32
          %315 = vector.broadcast %c1910113794_i32 : i32 to vector<12xi32>
          %316 = math.cttz %15 : tensor<12x6xi32>
          scf.condition(%extracted) %71 : vector<6xi16>
        } do {
        ^bb0(%arg0: vector<6xi16>):
          memref.assume_alignment %alloc_8, 4 : memref<6x8x16xi1>
          %c1_i32 = arith.constant 1 : i32
          %308 = vector.transfer_read %18[%c0, %75, %62], %c1_i32 : tensor<16x6x8xi32>, vector<i32>
          %309 = arith.divf %cst, %cst : f32
          %310 = math.ipowi %15, %15 : tensor<12x6xi32>
          %311 = math.expm1 %cst_0 : f16
          %312 = index.maxs %c11, %c8
          %313 = vector.insert %extracted, %93 [4] : i1 into vector<12xi1>
          %314 = arith.minsi %c1439632664_i64, %c1540477454_i64 : i64
          %315 = vector.broadcast %cst_2 : f16 to vector<12xf16>
          %316 = arith.shli %in, %c-12520_i16 : i16
          %317 = math.exp2 %collapsed : tensor<72xf32>
          %cast = tensor.cast %9 : tensor<12xi64> to tensor<?xi64>
          %318 = math.rsqrt %cst_2 : f16
          %319 = arith.mulf %extracted_21, %cst : f32
          %320 = vector.matrix_multiply %93, %93 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %321 = vector.splat %cst_1 : vector<12xf32>
          scf.yield %71 : vector<6xi16>
        }
        %293 = math.absi %16 : tensor<6x8x16xi64>
        %294 = math.log1p %3 : tensor<12x6xf32>
        %295 = affine.load %alloc_9[%c5, %c2, %c3] : memref<6x8x16xf16>
        %296 = arith.addf %extracted_21, %cst_1 : f32
        %297 = index.castu %c1439632664_i64 : i64 to index
        %298 = arith.divui %true_23, %true : i1
        %299 = arith.andi %c1731481554_i64, %c1439632664_i64 : i64
        %300 = vector.broadcast %c1_i64 : i64 to vector<6x8x16xi64>
        %301 = vector.splat %c10 : vector<12xindex>
        %302 = tensor.empty() : tensor<12x6xi32>
        %mapped_40 = linalg.map ins(%5 : tensor<12x6xi32>) outs(%302 : tensor<12x6xi32>)
          (%in_41: i32) {
            %308 = index.ceildivs %84, %35
            %309 = math.ctlz %13 : tensor<6x8x16xi64>
            %310 = arith.remf %283, %extracted_21 : f32
            %311 = math.log %3 : tensor<12x6xf32>
            %312 = index.divu %297, %45
            %313 = arith.maxui %c-12520_i16, %in : i16
            %314 = vector.splat %extracted_21 : vector<12xf32>
            %315 = math.floor %3 : tensor<12x6xf32>
            %316 = math.copysign %14, %14 : tensor<12xf32>
            %317 = memref.load %alloc_8[%c0, %c7, %c1] : memref<6x8x16xi1>
            %318 = arith.maxf %cst_1, %cst : f32
            %319 = arith.remf %cst, %cst : f32
            vector.print %57 : vector<12x6xi16>
            %320 = tensor.empty() : tensor<72xi32>
            %321 = math.fpowi %collapsed, %320 : tensor<72xf32>, tensor<72xi32>
            %322 = vector.broadcast %in_41 : i32 to vector<12x12xi32>
            %323 = vector.outerproduct %94, %94, %322 {kind = #vector.kind<or>} : vector<12xi32>, vector<12xi32>
            %324 = vector.matrix_multiply %94, %94 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<12xi32>) -> vector<1xi32>
            %325 = arith.xori %c-31681_i16, %c-31681_i16 : i16
            %326 = vector.flat_transpose %71 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
            %327 = math.exp2 %cst_20 : f16
            %splat_42 = tensor.splat %in : tensor<12xi16>
            %collapsed_43 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
            %328 = index.castu %c1716536641_i32 : i32 to index
            affine.store %c1540477454_i64, %alloc_19[%c4] : memref<12xi64>
            %splat_44 = tensor.splat %true : tensor<6x8x16xi1>
            %329 = math.copysign %10, %10 : tensor<12xf16>
            %330 = arith.divsi %c1716536641_i32, %c1716536641_i32 : i32
            %331 = index.divu %103, %c6
            %332 = vector.broadcast %extracted : i1 to vector<12x12xi1>
            %333 = vector.outerproduct %93, %93, %332 {kind = #vector.kind<add>} : vector<12xi1>, vector<12xi1>
            %334 = math.round %4 : tensor<6x8x16xf16>
            %inserted = tensor.insert %extracted into %1[%c8, %c1] : tensor<12x6xi1>
            %335 = vector.splat %c1811427327_i32 : vector<6x8x16xi32>
            %336 = arith.divsi %extracted, %extracted : i1
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %303 = arith.cmpf olt, %extracted_21, %cst_1 : f32
        %304 = affine.if affine_set<(d0) : (d0 mod 128 >= 0, 0 == 0, d0 mod 128 >= 0, d0 == 0)>(%c10) -> i16 {
          %308 = arith.maxui %c1540477454_i64, %c1540477454_i64 : i64
          %true_41 = arith.constant true
          %309 = index.mul %c0, %c7
          %310 = arith.remf %cst_2, %cst_20 : f16
          %from_elements_42 = tensor.from_elements %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %282, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %282, %c1910113794_i32, %282, %c1910113794_i32, %282, %282, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %282, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %282, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %282, %c1811427327_i32, %282, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %282, %c1811427327_i32, %c1716536641_i32, %282, %282, %282, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %282, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %282, %c1910113794_i32, %c1368919089_i32 : tensor<12x6xi32>
          %311 = vector.broadcast %c1368919089_i32 : i32 to vector<12x6xi32>
          %312 = index.maxu %c2, %c14
          %313 = math.log2 %10 : tensor<12xf16>
          affine.yield %c-12520_i16 : i16
        } else {
          %308 = index.add %c9, %c2
          memref.copy %alloc_19, %alloc_11 : memref<12xi64> to memref<12xi64>
          %309 = memref.atomic_rmw addi %c1811427327_i32, %91[%c3, %c1, %c14] : (i32, memref<6x8x16xi32>) -> i32
          %310 = math.log %cst_2 : f16
          %311 = vector.extract %102[0, 6] : vector<6x8x16xi32>
          %312 = math.absf %10 : tensor<12xf16>
          %313 = arith.mulf %cst_0, %cst_20 : f16
          %cst_41 = arith.constant 1.000000e+00 : f32
          %314 = vector.transfer_read %14[%c3], %cst_41 : tensor<12xf32>, vector<f32>
          affine.yield %c-12520_i16 : i16
        }
        %305 = arith.addf %cst_2, %295 : f16
        %306 = arith.maxsi %in, %c-31681_i16 : i16
        %307 = math.exp2 %4 : tensor<6x8x16xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %111 = math.cos %4 : tensor<6x8x16xf16>
    %112 = vector.broadcast %true : i1 to vector<6x8x16xi1>
    %113 = arith.remf %cst_1, %extracted_21 : f32
    %114 = math.fma %3, %3, %3 : tensor<12x6xf32>
    %115 = math.ctlz %11 : tensor<12x6xi16>
    %116 = arith.divsi %c-22873_i16, %c-12520_i16 : i16
    %117 = scf.if %true_23 -> (i1) {
      %278 = vector.transpose %112, [2, 0, 1] : vector<6x8x16xi1> to vector<16x6x8xi1>
      %splat_38 = tensor.splat %cst_20 : tensor<12xf16>
      %279 = affine.if affine_set<(d0) : (d0 - 8 == 0, (d0 mod 8) ceildiv 64 == 0, d0 - 9 >= 0, ((d0 mod 8) ceildiv 64) mod 4 >= 0)>(%c15) -> memref<12xi64> {
        %285 = math.cos %collapsed : tensor<72xf32>
        %286 = arith.mulf %cst_0, %cst_20 : f16
        %287 = arith.maxf %cst_1, %cst_1 : f32
        %288 = index.sizeof
        %289 = arith.floordivsi %c1910113794_i32, %c1716536641_i32 : i32
        %290 = vector.splat %c14 : vector<12x6xindex>
        %291 = math.sqrt %extracted_21 : f32
        %292 = index.ceildivs %c4, %c13
        affine.yield %alloc_19 : memref<12xi64>
      } else {
        %c0_i64 = arith.constant 0 : i64
        %285 = vector.transfer_read %8[%77, %103, %c1], %c0_i64 : tensor<6x8x16xi64>, vector<i64>
        %286 = vector.broadcast %true : i1 to vector<8x16x8x16xi1>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %112, %112, %286 : vector<6x8x16xi1>, vector<6x8x16xi1> into vector<8x16x8x16xi1>
        %288 = arith.remui %c1439632664_i64, %c1540477454_i64 : i64
        %289 = arith.floordivsi %c1910113794_i32, %c1811427327_i32 : i32
        %290 = math.absi %c-12520_i16 : i16
        %291 = vector.broadcast %extracted_21 : f32 to vector<12xf32>
        %292 = index.add %c7, %45
        %293 = index.casts %37 : index to i32
        affine.yield %alloc_11 : memref<12xi64>
      }
      %280 = vector.broadcast %c-22873_i16 : i16 to vector<12x12xi16>
      %281 = vector.outerproduct %95, %19, %280 {kind = #vector.kind<maxsi>} : vector<12xi16>, vector<12xi16>
      %splat_39 = tensor.splat %c1731481554_i64 : tensor<12xi64>
      %282 = arith.mulf %extracted_21, %cst : f32
      %283 = math.rsqrt %10 : tensor<12xf16>
      %284 = memref.alloca_scope  -> (f16) {
        %285 = vector.transpose %69, [] : vector<f16> to vector<f16>
        vector.print %112 : vector<6x8x16xi1>
        %286 = math.log1p %collapsed : tensor<72xf32>
        %287 = arith.cmpf ule, %cst_20, %cst_0 : f16
        %288 = arith.maxsi %c1910113794_i32, %c1716536641_i32 : i32
        %289 = index.mul %84, %77
        %290 = arith.shrui %c-22873_i16, %39 : i16
        %291 = math.cttz %7 : tensor<6x8x16xi64>
        %292 = arith.addi %c1811427327_i32, %c1716536641_i32 : i32
        %293 = arith.divui %c1910113794_i32, %c1716536641_i32 : i32
        memref.assume_alignment %alloc_9, 8 : memref<6x8x16xf16>
        %alloc_40 = memref.alloc() : memref<12x6xf32>
        memref.copy %alloc_7, %alloc_40 : memref<12x6xf32> to memref<12x6xf32>
        %c0_i64 = arith.constant 0 : i64
        %294 = vector.transfer_read %alloc_19[%c10], %c0_i64 : memref<12xi64>, vector<i64>
        %295 = math.rsqrt %cst_0 : f16
        %296 = vector.extract %57[1] : vector<12x6xi16>
        %297 = vector.broadcast %extracted : i1 to vector<i1>
        vector.transfer_write %297, %alloc[%c13] : vector<i1>, memref<12xi1>
        %298 = affine.min affine_map<(d0, d1, d2) -> (0, d2 * 8, -d1, d2 * 8 - d1 floordiv 64)>(%77, %90, %289)
        %299 = arith.mulf %extracted_21, %cst_1 : f32
        %300 = index.add %37, %41
        affine.store %true_23, %alloc_8[%c11, %c6, %c4] : memref<6x8x16xi1>
        %301 = arith.maxf %cst_0, %cst_20 : f16
        %c0_i64_41 = arith.constant 0 : i64
        %302 = vector.transfer_read %8[%c9, %c5, %298], %c0_i64_41 : tensor<6x8x16xi64>, vector<12x12xi64>
        %303 = affine.max affine_map<(d0) -> (((d0 ceildiv 8) * 64) ceildiv 128)>(%c2)
        %304 = bufferization.to_memref %5 : memref<12x6xi32>
        %305 = math.ipowi %7, %16 : tensor<6x8x16xi64>
        %extracted_42 = tensor.extract %13[%c4, %c3, %c1] : tensor<6x8x16xi64>
        %306 = arith.minf %cst_0, %cst_0 : f16
        %307 = vector.transpose %95, [0] : vector<12xi16> to vector<12xi16>
        %308 = index.maxs %50, %298
        %309 = vector.broadcast %cst : f32 to vector<6x8x16xf32>
        %310 = vector.fma %309, %309, %309 : vector<6x8x16xf32>
        %311 = math.round %cst_20 : f16
        %collapsed_43 = tensor.collapse_shape %transposed [[0, 1], [2]] : tensor<16x6x8xi32> into tensor<96x8xi32>
        memref.alloca_scope.return %cst_2 : f16
      }
      scf.yield %true : i1
    } else {
      %278 = index.maxs %84, %48
      memref.alloca_scope  {
        %283 = vector.matrix_multiply %93, %93 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %284 = math.absf %cst_1 : f32
        %285 = arith.divui %c1368919089_i32, %c1716536641_i32 : i32
        %from_elements_40 = tensor.from_elements %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_20, %cst_20, %cst_20, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_2, %cst_0, %cst_2, %cst_20, %cst_2, %cst_2, %cst_2, %cst_2, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_20, %cst_20, %cst_2, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_0 : tensor<12x6xf16>
        %286 = arith.shrui %c1368919089_i32, %c1716536641_i32 : i32
        %287 = arith.divf %cst, %cst_1 : f32
        %288 = vector.splat %45 : vector<12xindex>
        %289 = arith.divsi %c1716536641_i32, %c1716536641_i32 : i32
        %290 = vector.insertelement %true_23, %283[%c15 : index] : vector<1xi1>
        %291 = math.absf %cst_0 : f16
        %c-31088_i16 = arith.constant -31088 : i16
        %292 = math.log10 %4 : tensor<6x8x16xf16>
        %293 = math.fma %collapsed, %collapsed, %collapsed : tensor<72xf32>
        %294 = arith.remui %c-22873_i16, %c-12520_i16 : i16
        %295 = affine.max affine_map<(d0) -> ((d0 + 126) * 128, d0 - 2, (d0 - 2) * 512 - ((d0 - 6) mod 16) ceildiv 4, d0 - 2)>(%37)
        %296 = index.ceildivs %c10, %278
        %297 = vector.load %alloc_15[%c4] : memref<12xi32>, vector<12x6xi32>
        %298 = vector.extract %100[1] : vector<6x8x16xi32>
        %299 = arith.remui %true, %true : i1
        %300 = math.powf %cst_2, %cst_20 : f16
        %301 = arith.floordivsi %c-22873_i16, %39 : i16
        %302 = vector.splat %90 : vector<12x6xindex>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %303 = vector.transfer_read %alloc_18[%c13], %c0_i64_41 : memref<8xi64>, vector<i64>
        %304 = vector.matrix_multiply %71, %85 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
        %305 = arith.maxf %cst_0, %cst_20 : f16
        %306 = arith.shli %c0_i64, %c1540477454_i64 : i64
        %307 = arith.divf %cst_0, %cst_2 : f16
        %308 = arith.divf %cst_1, %extracted_21 : f32
        %309 = math.fma %cst_2, %cst_2, %cst_20 : f16
        %310 = math.sqrt %cst_2 : f16
        %311 = index.sizeof
        %312 = math.ipowi %true, %true_23 : i1
      }
      %splat_38 = tensor.splat %cst_1 : tensor<12xf32>
      %279 = index.maxs %c3, %c6
      %280 = scf.while (%arg0 = %102) : (vector<6x8x16xi32>) -> vector<6x8x16xi32> {
        %283 = arith.andi %c1910113794_i32, %c1910113794_i32 : i32
        %284 = arith.divui %c-22873_i16, %c-12520_i16 : i16
        %285 = arith.mulf %cst_0, %cst_20 : f16
        %286 = math.atan %3 : tensor<12x6xf32>
        %287 = index.sizeof
        %288 = math.absi %11 : tensor<12x6xi16>
        %289 = vector.insertelement %c-31681_i16, %19[%48 : index] : vector<12xi16>
        %290 = arith.subi %c1811427327_i32, %c1716536641_i32 : i32
        scf.condition(%extracted) %100 : vector<6x8x16xi32>
      } do {
      ^bb0(%arg0: vector<6x8x16xi32>):
        %cast = tensor.cast %0 : tensor<12xi16> to tensor<?xi16>
        %283 = arith.floordivsi %c1368919089_i32, %c1716536641_i32 : i32
        %284 = arith.floordivsi %c1540477454_i64, %c1731481554_i64 : i64
        %285 = math.log1p %splat_38 : tensor<12xf32>
        %286 = index.ceildivs %45, %45
        %287 = index.ceildivu %45, %50
        %288 = arith.mulf %cst_2, %cst_2 : f16
        %289 = math.expm1 %cst_2 : f16
        %290 = memref.atomic_rmw minu %c-31681_i16, %alloc_10[%c5] : (i16, memref<12xi16>) -> i16
        %291 = index.sizeof
        %292 = arith.ceildivsi %extracted, %extracted : i1
        %293 = arith.maxui %true, %true : i1
        %294 = arith.ori %c1910113794_i32, %c1368919089_i32 : i32
        %295 = vector.broadcast %extracted : i1 to vector<6x8x16xi1>
        %296 = arith.addi %c1368919089_i32, %c1910113794_i32 : i32
        %297 = arith.maxf %cst_2, %cst_2 : f16
        scf.yield %102 : vector<6x8x16xi32>
      }
      %281 = math.ipowi %2, %5 : tensor<12x6xi32>
      %282 = math.expm1 %4 : tensor<6x8x16xf16>
      %extracted_39 = tensor.extract %17[%c5, %c7, %c2] : tensor<6x8x16xi64>
      scf.yield %extracted : i1
    }
    %118 = math.fma %3, %3, %3 : tensor<12x6xf32>
    %119 = arith.mulf %cst_1, %cst : f32
    %120 = arith.remsi %true_23, %true_23 : i1
    %121 = tensor.empty() : tensor<72xi32>
    %122 = math.fpowi %collapsed, %121 : tensor<72xf32>, tensor<72xi32>
    %123 = arith.remui %c-5864_i16, %c-5864_i16 : i16
    %cst_24 = arith.constant 1.32737702E+9 : f32
    %124 = math.powf %cst, %cst_1 : f32
    %125 = arith.floordivsi %extracted, %true_23 : i1
    %126 = scf.execute_region -> tensor<12x6xf16> {
      %278 = arith.floordivsi %c1368919089_i32, %c1716536641_i32 : i32
      %279 = arith.remf %cst_2, %cst_2 : f16
      %280 = arith.divsi %c1368919089_i32, %c1716536641_i32 : i32
      %281 = vector.create_mask %c7, %37, %c6 : vector<6x8x16xi1>
      %282 = math.powf %3, %3 : tensor<12x6xf32>
      %283 = scf.while (%arg0 = %57) : (vector<12x6xi16>) -> vector<12x6xi16> {
        %294 = vector.splat %c-31681_i16 : vector<12x6xi16>
        %295 = arith.maxsi %c1540477454_i64, %c1540477454_i64 : i64
        %296 = index.maxs %c0, %c2
        %297 = vector.transpose %281, [1, 0, 2] : vector<6x8x16xi1> to vector<8x6x16xi1>
        %298 = index.ceildivs %c2, %35
        %299 = arith.divui %c1731481554_i64, %c1540477454_i64 : i64
        %300 = arith.andi %117, %117 : i1
        %301 = index.maxs %103, %62
        scf.condition(%117) %57 : vector<12x6xi16>
      } do {
      ^bb0(%arg0: vector<12x6xi16>):
        %294 = arith.shrui %39, %c-31681_i16 : i16
        %295 = index.divs %c15, %c12
        %296 = math.round %10 : tensor<12xf16>
        %297 = arith.remf %cst_0, %cst_0 : f16
        %298 = math.atan2 %collapsed, %collapsed : tensor<72xf32>
        %299 = index.ceildivs %48, %c10
        %300 = math.atan2 %cst_20, %cst_2 : f16
        %301 = arith.divui %39, %c-31681_i16 : i16
        %302 = arith.shli %true, %true : i1
        %collapsed_38 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
        %extracted_39 = tensor.extract %8[%c2, %c0, %c10] : tensor<6x8x16xi64>
        %303 = arith.cmpi sge, %true, %true : i1
        %304 = math.copysign %10, %10 : tensor<12xf16>
        %305 = math.sqrt %10 : tensor<12xf16>
        %306 = math.absf %cst_2 : f16
        %307 = arith.subi %true, %117 : i1
        scf.yield %57 : vector<12x6xi16>
      }
      %284 = math.absi %117 : i1
      %285 = arith.andi %c-31681_i16, %39 : i16
      %286 = arith.remsi %c1731481554_i64, %c1439632664_i64 : i64
      %287 = arith.subi %c-12520_i16, %c-22873_i16 : i16
      %288 = math.fma %cst, %cst_1, %extracted_21 : f32
      %289 = math.fma %collapsed, %collapsed, %collapsed : tensor<72xf32>
      %expanded = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<16x6x8xi32> into tensor<16x6x8x1xi32>
      %290 = math.exp2 %3 : tensor<12x6xf32>
      %291 = vector.transpose %74, [] : vector<i16> to vector<i16>
      %292 = arith.maxf %cst_0, %cst_20 : f16
      %293 = tensor.empty() : tensor<12x6xf16>
      scf.yield %293 : tensor<12x6xf16>
    }
    %127 = arith.negf %cst_1 : f32
    %128 = math.absi %9 : tensor<12xi64>
    %129 = arith.remf %extracted_21, %cst : f32
    %130 = arith.mulf %extracted_21, %extracted_21 : f32
    %131 = math.log2 %14 : tensor<12xf32>
    %132 = math.absf %cst_0 : f16
    %133 = math.exp2 %10 : tensor<12xf16>
    %134 = memref.alloca_scope  -> (i1) {
      %278 = memref.load %alloc_8[%c4, %c6, %c6] : memref<6x8x16xi1>
      %279 = math.ipowi %11, %11 : tensor<12x6xi16>
      %280 = math.ipowi %1, %1 : tensor<12x6xi1>
      affine.store %c1540477454_i64, %alloc_19[%c14] : memref<12xi64>
      %281 = math.absi %11 : tensor<12x6xi16>
      %282 = memref.load %alloc_17[%c4] : memref<12xi32>
      %283 = vector.broadcast %117 : i1 to vector<12xi1>
      %284 = math.tanh %cst_1 : f32
      %285 = index.ceildivs %62, %87
      %286 = math.ceil %10 : tensor<12xf16>
      %287 = arith.xori %c1368919089_i32, %c1368919089_i32 : i32
      %288 = math.ipowi %c1811427327_i32, %c1368919089_i32 : i32
      %289 = affine.load %alloc_14[%c8, %c7, %c10] : memref<6x8x16xi64>
      %from_elements_38 = tensor.from_elements %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32 : tensor<12xi32>
      %290 = index.sizeof
      %291 = vector.load %alloc_10[%c6] : memref<12xi16>, vector<12x6xi16>
      %292 = arith.maxf %cst_20, %cst_0 : f16
      memref.assume_alignment %alloc_19, 2 : memref<12xi64>
      scf.if %true_23 {
        %303 = math.atan %4 : tensor<6x8x16xf16>
        %alloc_44 = memref.alloc() : memref<12x6xi1>
        %304 = vector.gather %alloc_44[%50, %c1] [%100], %112, %101 : memref<12x6xi1>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xi1> into vector<6x8x16xi1>
        %305 = vector.splat %41 : vector<12x6xindex>
        %306 = math.exp %3 : tensor<12x6xf32>
        %307 = vector.broadcast %cst_2 : f16 to vector<12x6xf16>
        %308 = vector.splat %c10 : vector<12x6xindex>
        %309 = vector.splat %103 : vector<12xindex>
        %310 = affine.apply affine_map<(d0, d1, d2) -> (((d2 - d0) * 32) mod 128 - 64)>(%c8, %84, %c6)
      }
      %293 = tensor.empty() : tensor<6x8x16xi64>
      %mapped_39 = linalg.map ins(%alloc_14 : memref<6x8x16xi64>) outs(%293 : tensor<6x8x16xi64>)
        (%in: i64) {
          %303 = math.copysign %10, %10 : tensor<12xf16>
          %304 = math.absi %99 : tensor<6x8x16xi32>
          %305 = vector.matrix_multiply %85, %71 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
          %306 = index.sizeof
          %307 = arith.mulf %cst_0, %cst_2 : f16
          %308 = arith.addf %cst_0, %cst_20 : f16
          %309 = affine.max affine_map<(d0) -> (d0, 63, d0 * 2)>(%c15)
          %310 = bufferization.to_memref %15 : memref<12x6xi32>
          %311 = math.fma %10, %10, %10 : tensor<12xf16>
          %312 = index.mul %50, %c3
          %c533617151_i32 = arith.constant 533617151 : i32
          %313 = math.cttz %39 : i16
          %314 = arith.divui %extracted, %117 : i1
          %315 = math.log2 %extracted_21 : f32
          %316 = vector.extract %95[4] : vector<12xi16>
          %317 = vector.transpose %100, [0, 1, 2] : vector<6x8x16xi32> to vector<6x8x16xi32>
          %318 = arith.cmpf ult, %cst_1, %cst_1 : f32
          %319 = arith.remf %cst_1, %extracted_21 : f32
          %320 = math.atan2 %cst, %extracted_21 : f32
          %321 = vector.shuffle %283, %283 [0, 4, 6, 8, 9, 12, 13, 16, 18, 21, 23] : vector<12xi1>, vector<12xi1>
          %322 = math.copysign %3, %3 : tensor<12x6xf32>
          %323 = arith.ori %c1439632664_i64, %c1_i64 : i64
          %324 = arith.cmpf ueq, %cst, %cst : f32
          %325 = math.round %3 : tensor<12x6xf32>
          memref.assume_alignment %alloc_18, 8 : memref<8xi64>
          %326 = arith.divui %39, %c-5864_i16 : i16
          %327 = math.cos %126 : tensor<12x6xf16>
          %328 = math.cttz %293 : tensor<6x8x16xi64>
          %329 = tensor.empty() : tensor<12xi32>
          %330 = arith.maxf %cst_2, %cst_0 : f16
          %331 = vector.transpose %305, [0] : vector<1xi16> to vector<1xi16>
          %332 = math.exp %cst_2 : f16
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %294 = vector.matrix_multiply %19, %85 {lhs_columns = 6 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<6xi16>) -> vector<2xi16>
      %295 = memref.load %alloc_17[%c1] : memref<12xi32>
      %from_elements_40 = tensor.from_elements %cst_2, %cst_20, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_20, %cst_20, %cst_0, %cst_0, %cst_2, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_20, %cst_0, %cst_2, %cst_20, %cst_2, %cst_0, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_20, %cst_2, %cst_2, %cst_2, %cst_20, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_2, %cst_20, %cst_2, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_20, %cst_20, %cst_2, %cst_20, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_20, %cst_2, %cst_20, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_20, %cst_20, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_2, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_2, %cst_2, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_20, %cst_2, %cst_0, %cst_20, %cst_20, %cst_2, %cst_20, %cst_20, %cst_20, %cst_20, %cst_0, %cst_20, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_20, %cst_2, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_2, %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_2, %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_20, %cst_2, %cst_20, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_20, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_20, %cst_20, %cst_2, %cst_20, %cst_0, %cst_0, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_20, %cst_2, %cst_2, %cst_20, %cst_20, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_20, %cst_20, %cst_20, %cst_20, %cst_2, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_20, %cst_20, %cst_2, %cst_0, %cst_0, %cst_2, %cst_20, %cst_0, %cst_0, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_20, %cst_2, %cst_0, %cst_2, %cst_20, %cst_2, %cst_20, %cst_2, %cst_20, %cst_0, %cst_2, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_20, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_20, %cst_0, %cst_20, %cst_2, %cst_2, %cst_2, %cst_20, %cst_0, %cst_0, %cst_2, %cst_20, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_20, %cst_2, %cst_2, %cst_20, %cst_0, %cst_2, %cst_20, %cst_20, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_20, %cst_2, %cst_20, %cst_2, %cst_20, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_2, %cst_20, %cst_2, %cst_20, %cst_0, %cst_0, %cst_2, %cst_2, %cst_20, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_20, %cst_20, %cst_2, %cst_2, %cst_0, %cst_2, %cst_20, %cst_0, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_0, %cst_2, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_2, %cst_0, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_20, %cst_2, %cst_20, %cst_20, %cst_0, %cst_0, %cst_2, %cst_20, %cst_0, %cst_2, %cst_2, %cst_20, %cst_20, %cst_20, %cst_20, %cst_0, %cst_20, %cst_20, %cst_20, %cst_0, %cst_0, %cst_0, %cst_20, %cst_20, %cst_0, %cst_0, %cst_20, %cst_0, %cst_0, %cst_0, %cst_2, %cst_20, %cst_0, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_2, %cst_20, %cst_20, %cst_20, %cst_0, %cst_2, %cst_20, %cst_20, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_20, %cst_2, %cst_0, %cst_20, %cst_20, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_20, %cst_2, %cst_20, %cst_2, %cst_20, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_20, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_20, %cst_2, %cst_20, %cst_2, %cst_2, %cst_0, %cst_20, %cst_20, %cst_20 : tensor<6x8x16xf16>
      %296 = math.fma %cst_0, %cst_0, %cst_0 : f16
      %297 = vector.transpose %94, [0] : vector<12xi32> to vector<12xi32>
      %from_elements_41 = tensor.from_elements %39, %39, %c-31681_i16, %39, %c-5864_i16, %39, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %39 : tensor<12xi16>
      %298 = math.absi %293 : tensor<6x8x16xi64>
      %299 = tensor.empty() : tensor<12x6xf32>
      %mapped_42 = linalg.map ins(%3 : tensor<12x6xf32>) outs(%299 : tensor<12x6xf32>)
        (%in: f32) {
          %303 = arith.andi %c-12520_i16, %c-31681_i16 : i16
          %304 = arith.xori %c-5864_i16, %c-31681_i16 : i16
          %collapsed_44 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x6xi1> into tensor<72xi1>
          %305 = math.log1p %10 : tensor<12xf16>
          %inserted = tensor.insert %c1716536641_i32 into %5[%c8, %c5] : tensor<12x6xi32>
          %306 = index.castu %37 : index to i32
          %307 = arith.remui %c1716536641_i32, %c1368919089_i32 : i32
          %308 = arith.floordivsi %c1731481554_i64, %c1439632664_i64 : i64
          %309 = tensor.empty() : tensor<12xi16>
          %310 = arith.mulf %cst, %extracted_21 : f32
          %311 = index.ceildivu %c14, %90
          %312 = math.exp %cst_20 : f16
          %313 = math.log1p %collapsed : tensor<72xf32>
          %314 = math.round %cst_2 : f16
          %315 = memref.realloc %alloc_19 : memref<12xi64> to memref<6xi64>
          %316 = arith.divsi %c-22873_i16, %c-12520_i16 : i16
          %c1_i64_45 = arith.constant 1 : i64
          %317 = vector.transfer_read %13[%c13, %285, %45], %c1_i64_45 : tensor<6x8x16xi64>, vector<i64>
          %318 = math.cttz %12 : tensor<12xi1>
          %319 = index.maxu %c11, %35
          %320 = vector.gather %alloc_12[%c2, %c3, %319] [%94], %93, %19 : memref<6x8x16xi16>, vector<12xi32>, vector<12xi1>, vector<12xi16> into vector<12xi16>
          %c-24857_i16 = arith.constant -24857 : i16
          %321 = memref.load %alloc_6[%c11] : memref<12xi1>
          %322 = arith.divui %c1_i64_45, %289 : i64
          %323 = index.ceildivu %c10, %37
          %324 = arith.shrui %39, %c-31681_i16 : i16
          memref.assume_alignment %alloc_10, 8 : memref<12xi16>
          %325 = math.rsqrt %126 : tensor<12x6xf16>
          memref.assume_alignment %alloc_6, 1 : memref<12xi1>
          %326 = math.absf %4 : tensor<6x8x16xf16>
          %327 = arith.divui %c-31681_i16, %c-12520_i16 : i16
          %328 = vector.insert %extracted, %93 [3] : i1 into vector<12xi1>
          %329 = arith.addi %c1910113794_i32, %c1910113794_i32 : i32
          %cst_46 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_46 : f32
        }
      %300 = memref.load %alloc_18[%c5] : memref<8xi64>
      %collapsed_43 = tensor.collapse_shape %5 [[0, 1]] : tensor<12x6xi32> into tensor<72xi32>
      %301 = index.ceildivu %35, %c1
      %302 = scf.index_switch %c10 -> memref<12xi64> 
      case 1 {
        %303 = index.sizeof
        %304 = arith.maxf %cst_2, %cst_0 : f16
        %305 = arith.remsi %c-12520_i16, %c-22873_i16 : i16
        %306 = vector.shuffle %57, %291 [1, 2, 3, 4, 5, 7, 8, 9, 10, 13, 15, 17, 18, 21] : vector<12x6xi16>, vector<12x6xi16>
        %307 = affine.apply affine_map<(d0, d1) -> ((d1 + 64) * -2048)>(%c6, %c2)
        %308 = math.log1p %10 : tensor<12xf16>
        %309 = vector.extract %112[1, 6] : vector<6x8x16xi1>
        %310 = memref.atomic_rmw mins %289, %alloc_14[%c4, %c5, %c12] : (i64, memref<6x8x16xi64>) -> i64
        %311 = vector.shuffle %19, %19 [0, 1, 2, 3, 5, 8, 9, 10, 12, 13, 14, 16, 21, 23] : vector<12xi16>, vector<12xi16>
        %312 = vector.insertelement %c-22873_i16, %95[%c15 : index] : vector<12xi16>
        %313 = vector.broadcast %c1368919089_i32 : i32 to vector<6x16xi32>
        %dest, %accumulated_value = vector.scan <maxsi>, %102, %313 {inclusive = true, reduction_dim = 1 : i64} : vector<6x8x16xi32>, vector<6x16xi32>
        %314 = vector.insertelement %extracted, %93[%307 : index] : vector<12xi1>
        %315 = arith.remf %cst_1, %extracted_21 : f32
        %316 = vector.broadcast %303 : index to vector<6xindex>
        %317 = vector.broadcast %true : i1 to vector<6xi1>
        %318 = vector.broadcast %c1716536641_i32 : i32 to vector<6xi32>
        vector.scatter %alloc_5[%c1] [%316], %317, %318 : memref<12xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %319 = index.casts %c1811427327_i32 : i32 to index
        %320 = math.absf %4 : tensor<6x8x16xf16>
        scf.yield %alloc_11 : memref<12xi64>
      }
      case 2 {
        %303 = arith.remui %c1716536641_i32, %c1811427327_i32 : i32
        %304 = index.casts %c5 : index to i32
        %305 = vector.shuffle %102, %100 [0, 1, 3, 4, 5, 6, 7, 8, 10] : vector<6x8x16xi32>, vector<6x8x16xi32>
        %306 = arith.remsi %c1811427327_i32, %c1811427327_i32 : i32
        memref.assume_alignment %alloc_14, 2 : memref<6x8x16xi64>
        %expanded = tensor.expand_shape %67 [[0, 1]] : tensor<12xi32> into tensor<12x1xi32>
        %extracted_44 = tensor.extract %7[%c1, %c1, %c8] : tensor<6x8x16xi64>
        %307 = math.cos %14 : tensor<12xf32>
        %308 = math.absf %cst_20 : f16
        %309 = math.copysign %4, %4 : tensor<6x8x16xf16>
        %310 = vector.matrix_multiply %93, %283 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %311 = tensor.empty() : tensor<12x6xi32>
        %312 = arith.muli %289, %c1439632664_i64 : i64
        %313 = math.exp %cst_0 : f16
        memref.store %c1368919089_i32, %alloc_13[%c1, %c5, %c0] : memref<6x8x16xi32>
        %314 = index.maxu %41, %c3
        scf.yield %alloc_19 : memref<12xi64>
      }
      case 3 {
        %303 = arith.andi %true_23, %117 : i1
        %304 = math.exp2 %4 : tensor<6x8x16xf16>
        %305 = vector.broadcast %c1716536641_i32 : i32 to vector<12x12xi32>
        %306 = vector.outerproduct %94, %94, %305 {kind = #vector.kind<maxui>} : vector<12xi32>, vector<12xi32>
        vector.print %283 : vector<12xi1>
        %cst_44 = arith.constant 4.921600e+04 : f16
        vector.print %95 : vector<12xi16>
        %307 = math.ctlz %11 : tensor<12x6xi16>
        %308 = math.tanh %from_elements_40 : tensor<6x8x16xf16>
        %309 = arith.minf %extracted_21, %extracted_21 : f32
        %310 = arith.divsi %c-5864_i16, %c-12520_i16 : i16
        %311 = arith.divf %cst_1, %cst_1 : f32
        %312 = tensor.empty(%48, %90) : tensor<?x?xi32>
        %313 = vector.extract %57[8] : vector<12x6xi16>
        %314 = arith.floordivsi %true_23, %117 : i1
        %315 = math.cos %14 : tensor<12xf32>
        %316 = arith.xori %289, %c1_i64 : i64
        scf.yield %alloc_11 : memref<12xi64>
      }
      case 4 {
        %303 = math.absi %c1811427327_i32 : i32
        %splat_44 = tensor.splat %true : tensor<12x6xi1>
        %304 = arith.divui %true, %true_23 : i1
        %305 = index.maxu %c3, %301
        memref.store %c1910113794_i32, %alloc_15[%c11] : memref<12xi32>
        %306 = math.roundeven %extracted_21 : f32
        %307 = math.absi %8 : tensor<6x8x16xi64>
        %308 = affine.min affine_map<(d0, d1) -> (d1 - (d0 floordiv 2 + 128), (d0 floordiv 2 + 128) * 4 - 32, d0 floordiv 2 + 2)>(%290, %c12)
        %splat_45 = tensor.splat %289 : tensor<12xi64>
        %309 = vector.load %alloc_3[%c2, %c5, %c10] : memref<6x8x16xf16>, vector<12xf16>
        %310 = math.tanh %14 : tensor<12xf32>
        affine.store %c1540477454_i64, %alloc_19[%c6] : memref<12xi64>
        %311 = index.casts %true_23 : i1 to index
        %312 = arith.shrsi %c-5864_i16, %c-22873_i16 : i16
        %313 = memref.atomic_rmw maxs %c1368919089_i32, %alloc_13[%c3, %c5, %c11] : (i32, memref<6x8x16xi32>) -> i32
        %314 = arith.cmpf ult, %cst_20, %cst_0 : f16
        scf.yield %alloc_19 : memref<12xi64>
      }
      default {
        %303 = vector.matrix_multiply %93, %283 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %304 = index.add %c15, %90
        %305 = arith.ceildivsi %c1540477454_i64, %c1439632664_i64 : i64
        %306 = math.tanh %cst_20 : f16
        %307 = arith.shrui %c-22873_i16, %39 : i16
        %308 = math.powf %10, %10 : tensor<12xf16>
        %309 = arith.cmpf oeq, %cst_2, %cst_20 : f16
        %310 = vector.matrix_multiply %93, %303 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<1xi1>) -> vector<12xi1>
        %false = arith.constant false
        %false_44 = arith.constant false
        %311 = vector.transfer_read %alloc_6[%35], %false_44 : memref<12xi1>, vector<i1>
        %c1_i16 = arith.constant 1 : i16
        %312 = vector.transfer_read %0[%35], %c1_i16 : tensor<12xi16>, vector<i16>
        %313 = index.ceildivs %77, %45
        vector.print %93 : vector<12xi1>
        %314 = vector.flat_transpose %71 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
        %315 = math.log1p %cst_20 : f16
        %316 = arith.subi %c-5864_i16, %c-22873_i16 : i16
        %317 = arith.maxui %c1_i64, %c1731481554_i64 : i64
        scf.yield %alloc_19 : memref<12xi64>
      }
      memref.alloca_scope.return %extracted : i1
    }
    %135 = math.ipowi %c1910113794_i32, %c1910113794_i32 : i32
    %136 = math.exp2 %3 : tensor<12x6xf32>
    %137 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + d3 floordiv 2 - 32 - 64 >= 0, d3 mod 2 >= 0)>(%c3, %c10, %c10, %c14) -> i32 {
      %278 = math.fma %cst_0, %cst_20, %cst_2 : f16
      %279 = math.expm1 %cst : f32
      %280 = arith.shrui %c-22873_i16, %c-5864_i16 : i16
      %281 = math.absf %3 : tensor<12x6xf32>
      %282 = index.sizeof
      affine.store %c-31681_i16, %alloc_12[%c7, %c4, %c2] : memref<6x8x16xi16>
      %283 = math.log2 %3 : tensor<12x6xf32>
      %284 = index.ceildivu %c4, %41
      affine.yield %c1368919089_i32 : i32
    } else {
      %278 = index.casts %87 : index to i32
      %279 = arith.cmpf ult, %cst_2, %cst_2 : f16
      %280 = math.tan %14 : tensor<12xf32>
      %281 = math.ipowi %1, %1 : tensor<12x6xi1>
      %282 = vector.extract %100[5] : vector<6x8x16xi32>
      %283 = tensor.empty() : tensor<6x8x16xi64>
      %mapped_38 = linalg.map ins(%13, %alloc_14, %8 : tensor<6x8x16xi64>, memref<6x8x16xi64>, tensor<6x8x16xi64>) outs(%283 : tensor<6x8x16xi64>)
        (%in: i64, %in_39: i64, %in_40: i64) {
          %286 = arith.divui %in_40, %in : i64
          %287 = index.ceildivs %75, %c3
          %288 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d1) ceildiv 8)>(%77, %c6, %c9)
          %289 = math.copysign %cst_2, %cst_20 : f16
          %290 = arith.remf %cst, %cst_1 : f32
          %291 = arith.ori %c-31681_i16, %c-5864_i16 : i16
          %292 = arith.shrui %c1439632664_i64, %in_40 : i64
          %collapsed_41 = tensor.collapse_shape %283 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
          %293 = arith.cmpf false, %cst_0, %cst_20 : f16
          %294 = index.maxu %75, %35
          %295 = vector.broadcast %cst_1 : f32 to vector<12xf32>
          %296 = vector.fma %295, %295, %295 : vector<12xf32>
          %297 = arith.addi %true_23, %true : i1
          %298 = math.expm1 %collapsed : tensor<72xf32>
          %299 = math.powf %collapsed, %collapsed : tensor<72xf32>
          %300 = arith.maxf %extracted_21, %extracted_21 : f32
          %301 = vector.splat %87 : vector<12xindex>
          %302 = arith.ceildivsi %c1439632664_i64, %c1_i64 : i64
          vector.print %57 : vector<12x6xi16>
          %303 = vector.transpose %93, [0] : vector<12xi1> to vector<12xi1>
          %304 = affine.max affine_map<(d0, d1) -> (d0, d1 - d0 + 64, -(d1 - d0))>(%c12, %c13)
          %305 = index.sizeof
          memref.assume_alignment %alloc_17, 1 : memref<12xi32>
          %306 = math.log2 %10 : tensor<12xf16>
          %307 = vector.broadcast %c1811427327_i32 : i32 to vector<8xi32>
          %308 = vector.broadcast %117 : i1 to vector<8xi1>
          %309 = vector.maskedload %alloc_17[%c0], %308, %307 : memref<12xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
          %310 = memref.atomic_rmw ori %c1716536641_i32, %alloc_17[%c3] : (i32, memref<12xi32>) -> i32
          %311 = arith.floordivsi %c-5864_i16, %c-12520_i16 : i16
          %312 = arith.xori %39, %c-31681_i16 : i16
          %313 = vector.matrix_multiply %19, %95 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
          %314 = vector.broadcast %in_40 : i64 to vector<12xi64>
          %315 = vector.transfer_write %314, %13[%c13, %37, %50] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi64>, tensor<6x8x16xi64>
          %316 = math.tanh %extracted_21 : f32
          %317 = arith.addf %cst_2, %cst_20 : f16
          %318 = arith.remsi %c1439632664_i64, %c1_i64 : i64
          %c1_i64_42 = arith.constant 1 : i64
          linalg.yield %c1_i64_42 : i64
        }
      %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + 1)>(%c15, %c15, %87, %48)
      %285 = math.exp2 %cst_2 : f16
      affine.yield %c1368919089_i32 : i32
    }
    %138 = math.rsqrt %126 : tensor<12x6xf16>
    %139 = arith.mulf %cst_0, %cst_0 : f16
    %140 = math.floor %4 : tensor<6x8x16xf16>
    %141 = scf.if %true_23 -> (memref<12xf16>) {
      %from_elements_38 = tensor.from_elements %c-22873_i16, %c-12520_i16, %39, %c-5864_i16, %c-31681_i16, %39, %c-5864_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-5864_i16, %39, %39, %c-22873_i16, %c-22873_i16, %39, %39, %c-31681_i16, %c-12520_i16, %39, %c-5864_i16, %c-12520_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %39, %c-22873_i16, %c-12520_i16, %c-31681_i16, %39, %c-31681_i16, %c-12520_i16, %39, %c-12520_i16, %c-12520_i16, %c-31681_i16, %39, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %39, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %c-5864_i16, %c-5864_i16, %c-5864_i16, %39, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %39, %c-12520_i16, %39, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %39, %c-31681_i16, %c-22873_i16, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-5864_i16, %c-31681_i16, %39, %c-12520_i16, %c-22873_i16, %39, %c-22873_i16, %c-5864_i16, %39, %c-31681_i16, %c-5864_i16, %39, %c-12520_i16, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %39, %c-31681_i16, %c-5864_i16, %39, %39, %c-5864_i16, %c-5864_i16, %39, %39, %39, %c-31681_i16, %c-5864_i16, %c-5864_i16, %39, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %39, %c-12520_i16, %c-12520_i16, %c-31681_i16, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-5864_i16, %c-31681_i16, %c-12520_i16, %39, %c-12520_i16, %c-22873_i16, %c-31681_i16, %39, %39, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-5864_i16, %39, %c-5864_i16, %c-5864_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %39, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %39, %c-31681_i16, %c-5864_i16, %c-31681_i16, %39, %c-22873_i16, %c-31681_i16, %39, %39, %c-22873_i16, %39, %c-5864_i16, %39, %c-12520_i16, %39, %c-22873_i16, %39, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %39, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %39, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-22873_i16, %39, %c-12520_i16, %c-5864_i16, %c-31681_i16, %39, %c-12520_i16, %c-12520_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %39, %c-22873_i16, %c-5864_i16, %39, %c-12520_i16, %c-31681_i16, %c-5864_i16, %39, %c-22873_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-31681_i16, %c-12520_i16, %39, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-31681_i16, %39, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-5864_i16, %c-12520_i16, %39, %c-12520_i16, %39, %c-12520_i16, %39, %39, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %39, %c-5864_i16, %c-31681_i16, %39, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %39, %c-22873_i16, %39, %c-5864_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %39, %c-31681_i16, %c-31681_i16, %c-31681_i16, %39, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %39, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %39, %c-31681_i16, %c-22873_i16, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %39, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-5864_i16, %39, %c-5864_i16, %c-5864_i16, %39, %c-5864_i16, %39, %c-31681_i16, %39, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %39, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %39, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %39, %c-31681_i16, %c-5864_i16, %c-12520_i16, %39, %c-5864_i16, %c-22873_i16, %39, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-12520_i16, %39, %c-31681_i16, %c-5864_i16, %c-31681_i16, %c-12520_i16, %39, %c-22873_i16, %39, %c-5864_i16, %c-22873_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %c-5864_i16, %39, %c-22873_i16, %39, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-12520_i16, %39, %c-31681_i16, %c-5864_i16, %c-22873_i16, %39, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-31681_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-31681_i16, %39, %c-31681_i16, %c-5864_i16, %c-5864_i16, %39, %c-12520_i16, %39, %c-5864_i16, %c-22873_i16, %c-5864_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-31681_i16, %c-22873_i16, %39, %c-22873_i16, %c-22873_i16, %39, %c-22873_i16, %c-31681_i16, %39, %39, %39, %c-31681_i16, %c-22873_i16, %39, %c-31681_i16, %c-12520_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-5864_i16, %39, %c-31681_i16, %39, %c-5864_i16, %39, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-5864_i16, %c-22873_i16, %39, %c-12520_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-5864_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %39, %c-12520_i16, %c-5864_i16, %c-5864_i16, %c-12520_i16, %39, %c-5864_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-22873_i16, %39, %39, %39, %c-31681_i16, %39, %39, %c-12520_i16, %39, %39, %39, %c-22873_i16, %c-31681_i16, %39, %39, %c-31681_i16, %c-5864_i16, %c-5864_i16, %39, %c-5864_i16, %39, %c-12520_i16, %c-22873_i16, %c-5864_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-22873_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %39, %39, %c-31681_i16, %c-31681_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-5864_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %39, %c-12520_i16, %c-5864_i16, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %39, %c-22873_i16, %c-5864_i16, %c-31681_i16, %39, %c-31681_i16, %c-12520_i16, %39, %c-31681_i16, %c-12520_i16, %c-12520_i16, %39, %c-5864_i16, %c-31681_i16, %c-5864_i16, %c-31681_i16, %39, %39, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-31681_i16, %c-31681_i16, %c-5864_i16, %39, %39, %c-12520_i16, %c-22873_i16, %c-31681_i16, %c-22873_i16, %c-5864_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %39, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-31681_i16, %39, %39, %c-22873_i16, %c-22873_i16, %39, %c-22873_i16, %39, %c-31681_i16, %39, %39, %c-31681_i16, %c-5864_i16, %39, %c-12520_i16, %39, %39, %c-12520_i16, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %39, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-5864_i16, %39, %c-12520_i16, %39, %c-31681_i16, %39, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-5864_i16, %c-12520_i16, %c-22873_i16, %39, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-5864_i16, %c-22873_i16, %c-5864_i16, %c-12520_i16, %39, %c-31681_i16, %39, %c-5864_i16, %c-22873_i16, %39, %c-5864_i16, %c-22873_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %c-5864_i16, %c-31681_i16, %c-12520_i16, %c-31681_i16, %c-12520_i16, %39, %c-22873_i16, %39, %c-5864_i16, %c-31681_i16, %c-22873_i16, %39, %39, %c-31681_i16, %39, %c-12520_i16, %39, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-22873_i16, %c-31681_i16, %c-22873_i16, %39, %c-5864_i16, %c-12520_i16, %c-12520_i16, %c-5864_i16, %c-5864_i16, %c-31681_i16, %c-12520_i16, %c-12520_i16, %c-31681_i16, %c-5864_i16, %39, %c-12520_i16, %c-12520_i16, %c-22873_i16, %c-22873_i16, %39, %c-31681_i16, %c-31681_i16, %c-5864_i16, %c-5864_i16, %c-22873_i16, %39, %39, %c-31681_i16, %c-5864_i16, %c-22873_i16, %c-22873_i16, %c-22873_i16, %c-31681_i16, %39, %c-12520_i16, %c-22873_i16, %c-31681_i16, %39, %39, %39, %c-22873_i16, %c-5864_i16, %39, %c-31681_i16, %c-31681_i16, %39, %c-12520_i16, %c-12520_i16, %c-12520_i16, %c-31681_i16, %c-31681_i16, %c-12520_i16 : tensor<6x8x16xi16>
      %278 = vector.broadcast %75 : index to vector<16xindex>
      %279 = vector.broadcast %117 : i1 to vector<16xi1>
      %280 = vector.broadcast %cst_2 : f16 to vector<16xf16>
      vector.scatter %alloc_9[%c1, %c7, %c4] [%278], %279, %280 : memref<6x8x16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
      %281 = math.copysign %14, %14 : tensor<12xf32>
      %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d0 mod 32)>(%c10, %c2, %c14, %c14)
      %283 = vector.load %alloc_12[%c3, %c7, %c14] : memref<6x8x16xi16>, vector<12xi16>
      %284 = arith.remf %cst_1, %cst_1 : f32
      %285 = vector.transpose %85, [0] : vector<6xi16> to vector<6xi16>
      %286 = arith.floordivsi %c1910113794_i32, %c1910113794_i32 : i32
      %alloc_39 = memref.alloc() : memref<12xf16>
      scf.yield %alloc_39 : memref<12xf16>
    } else {
      %278 = tensor.empty() : tensor<6x8x16xi32>
      %mapped_38 = linalg.map ins(%99 : tensor<6x8x16xi32>) outs(%278 : tensor<6x8x16xi32>)
        (%in: i32) {
          %285 = arith.divui %117, %true : i1
          %286 = math.cos %3 : tensor<12x6xf32>
          %287 = math.powf %cst_0, %cst_2 : f16
          %288 = index.maxu %c3, %84
          %289 = vector.gather %alloc_8[%c15, %37, %75] [%102], %112, %101 : memref<6x8x16xi1>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xi1> into vector<6x8x16xi1>
          %290 = vector.splat %c11 : vector<12xindex>
          %291 = vector.broadcast %c1368919089_i32 : i32 to vector<8x16xi32>
          %292 = vector.insert %291, %102 [0] : vector<8x16xi32> into vector<6x8x16xi32>
          %293 = vector.flat_transpose %85 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
          %294 = vector.matrix_multiply %71, %85 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
          %295 = vector.shuffle %289, %289 [0, 3, 6, 7, 11] : vector<6x8x16xi1>, vector<6x8x16xi1>
          %splat_41 = tensor.splat %extracted_21 : tensor<12xf32>
          %296 = math.ctlz %9 : tensor<12xi64>
          %297 = math.copysign %4, %4 : tensor<6x8x16xf16>
          %298 = arith.maxf %extracted_21, %cst : f32
          %299 = arith.ceildivsi %c-31681_i16, %39 : i16
          %300 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, 0)>(%48, %c15, %c3, %37)
          %301 = arith.mulf %cst_1, %cst_1 : f32
          memref.assume_alignment %alloc_16, 8 : memref<12xf32>
          %302 = arith.divf %cst_1, %extracted_21 : f32
          %extracted_42 = tensor.extract %splat_41[%c7] : tensor<12xf32>
          %303 = arith.remf %cst_2, %cst_0 : f16
          %304 = vector.extract %289[1] : vector<6x8x16xi1>
          %305 = affine.load %alloc_8[%c13, %c4, %c12] : memref<6x8x16xi1>
          %306 = vector.broadcast %c1910113794_i32 : i32 to vector<8xi32>
          %dest, %accumulated_value = vector.scan <maxui>, %291, %306 {inclusive = true, reduction_dim = 1 : i64} : vector<8x16xi32>, vector<8xi32>
          %alloc_43 = memref.alloc() : memref<8xi64>
          memref.copy %alloc_18, %alloc_43 : memref<8xi64> to memref<8xi64>
          %307 = math.floor %collapsed : tensor<72xf32>
          %308 = vector.bitcast %71 : vector<6xi16> to vector<6xi16>
          %309 = index.add %288, %35
          %310 = arith.ori %in, %c1811427327_i32 : i32
          %311 = arith.shli %c1540477454_i64, %c1540477454_i64 : i64
          %312 = arith.remf %extracted_42, %cst : f32
          %313 = vector.broadcast %c-31681_i16 : i16 to vector<12xi16>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %279 = affine.min affine_map<(d0, d1, d2) -> (-(d1 floordiv 16), -d0)>(%37, %37, %75)
      %280 = memref.load %alloc_9[%c2, %c3, %c4] : memref<6x8x16xf16>
      %281 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 64, (d1 + d0 + d3) floordiv 16)>(%c6, %37, %c10, %35)
      %282 = math.absi %c1439632664_i64 : i64
      %283 = math.atan2 %10, %10 : tensor<12xf16>
      %284 = math.absi %18 : tensor<16x6x8xi32>
      %splat_39 = tensor.splat %c-5864_i16 : tensor<6x8x16xi16>
      %alloc_40 = memref.alloc() : memref<12xf16>
      scf.yield %alloc_40 : memref<12xf16>
    }
    %142 = scf.if %true -> (memref<12x6xi1>) {
      %278 = index.mul %c1, %c10
      %279 = vector.broadcast %c-31681_i16 : i16 to vector<12xi16>
      %280 = vector.transpose %57, [0, 1] : vector<12x6xi16> to vector<12x6xi16>
      %281 = arith.subi %c1_i64, %c1731481554_i64 : i64
      memref.copy %alloc_17, %alloc_5 : memref<12xi32> to memref<12xi32>
      %282 = vector.broadcast %c-22873_i16 : i16 to vector<i16>
      %283 = vector.transfer_write %282, %110[%c9, %41] : vector<i16>, tensor<12x6xi16>
      %284 = vector.broadcast %c-31681_i16 : i16 to vector<12x12xi16>
      %285 = vector.outerproduct %279, %279, %284 {kind = #vector.kind<mul>} : vector<12xi16>, vector<12xi16>
      %286 = math.cttz %5 : tensor<12x6xi32>
      %alloc_38 = memref.alloc() : memref<12x6xi1>
      scf.yield %alloc_38 : memref<12x6xi1>
    } else {
      %extracted_38 = tensor.extract %16[%c4, %c7, %c12] : tensor<6x8x16xi64>
      %splat_39 = tensor.splat %c-31681_i16 : tensor<12xi16>
      %cast = tensor.cast %8 : tensor<6x8x16xi64> to tensor<?x?x?xi64>
      %278 = math.fma %cst_1, %extracted_21, %cst : f32
      %279 = vector.broadcast %cst_1 : f32 to vector<6x8x16xf32>
      %280 = vector.gather %14[%c8] [%102], %101, %279 : tensor<12xf32>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xf32> into vector<6x8x16xf32>
      %281 = vector.splat %cst : vector<6x8x16xf32>
      %282 = math.floor %10 : tensor<12xf16>
      memref.copy %alloc_19, %alloc_11 : memref<12xi64> to memref<12xi64>
      %alloc_40 = memref.alloc() : memref<12x6xi1>
      scf.yield %alloc_40 : memref<12x6xi1>
    }
    %143 = arith.remf %cst_1, %extracted_21 : f32
    %144 = math.sqrt %cst_2 : f16
    %145 = vector.broadcast %c-31681_i16 : i16 to vector<12xi16>
    %146 = bufferization.clone %alloc_11 : memref<12xi64> to memref<12xi64>
    %147 = arith.maxf %cst, %extracted_21 : f32
    %148 = math.cos %3 : tensor<12x6xf32>
    %149 = index.mul %75, %c11
    affine.for %arg0 = 0 to 57 {
    }
    %150 = scf.if %extracted -> (f16) {
      %278 = tensor.empty() : tensor<12x6xi64>
      %279 = math.absf %cst_1 : f32
      %280 = vector.shuffle %100, %100 [1, 7, 8, 10, 11] : vector<6x8x16xi32>, vector<6x8x16xi32>
      %281 = math.atan2 %3, %3 : tensor<12x6xf32>
      %282 = math.exp2 %cst_20 : f16
      %283 = index.casts %77 : index to i32
      %284 = math.copysign %14, %14 : tensor<12xf32>
      memref.alloca_scope  {
        %285 = index.ceildivu %87, %c12
        %286 = math.fpowi %cst_20, %c1910113794_i32 : f16, i32
        %287 = index.divu %84, %62
        %288 = arith.mulf %cst_1, %extracted_21 : f32
        %extracted_38 = tensor.extract %110[%c11, %c2] : tensor<12x6xi16>
        %289 = bufferization.clone %alloc_17 : memref<12xi32> to memref<12xi32>
        %290 = arith.shrui %c1811427327_i32, %c1910113794_i32 : i32
        %291 = arith.ceildivsi %extracted, %true_23 : i1
        %collapsed_39 = tensor.collapse_shape %5 [[0, 1]] : tensor<12x6xi32> into tensor<72xi32>
        memref.store %c-12520_i16, %alloc_10[%c8] : memref<12xi16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_40 = arith.constant 0 : i32
        %292 = vector.transfer_read %67[%c12], %c0_i32_40 : tensor<12xi32>, vector<i32>
        %293 = vector.broadcast %c1368919089_i32 : i32 to vector<i32>
        vector.transfer_write %293, %alloc_17[%c14] : vector<i32>, memref<12xi32>
        %294 = math.absi %117 : i1
        %295 = math.log2 %cst_20 : f16
        %296 = math.fpowi %126, %2 : tensor<12x6xf16>, tensor<12x6xi32>
        %297 = vector.transpose %112, [0, 2, 1] : vector<6x8x16xi1> to vector<6x16x8xi1>
        %298 = arith.shrui %true_23, %134 : i1
        %299 = math.log1p %4 : tensor<6x8x16xf16>
        %300 = index.mul %c0, %c7
        affine.store %c1716536641_i32, %alloc_15[%c7] : memref<12xi32>
        %301 = math.floor %3 : tensor<12x6xf32>
        %302 = math.cos %cst_2 : f16
        %303 = affine.apply affine_map<(d0) -> ((-(d0 + 1)) ceildiv 4)>(%287)
        %304 = math.absf %cst_1 : f32
        memref.assume_alignment %alloc_9, 2 : memref<6x8x16xf16>
        %305 = vector.load %alloc_8[%c3, %c1, %c3] : memref<6x8x16xi1>, vector<12x6xi1>
        %306 = math.copysign %cst_0, %cst_20 : f16
        %307 = math.cttz %5 : tensor<12x6xi32>
        %308 = vector.broadcast %true : i1 to vector<8x16xi1>
        %309 = vector.insert %308, %101 [2] : vector<8x16xi1> into vector<6x8x16xi1>
        %collapsed_41 = tensor.collapse_shape %15 [[0, 1]] : tensor<12x6xi32> into tensor<72xi32>
        %310 = math.tanh %4 : tensor<6x8x16xf16>
        %311 = vector.insertelement %cst_2, %69[] : vector<f16>
      }
      scf.yield %cst_20 : f16
    } else {
      %278 = math.cos %cst_20 : f16
      %279 = math.absi %c1716536641_i32 : i32
      scf.if %true {
        %285 = math.copysign %cst_1, %cst_1 : f32
        %286 = arith.divf %cst_2, %cst_0 : f16
        %287 = vector.bitcast %71 : vector<6xi16> to vector<6xi16>
        %288 = tensor.empty() : tensor<6x8x16xi64>
        %289 = arith.andi %134, %extracted : i1
        %290 = arith.maxsi %c-22873_i16, %39 : i16
        %291 = index.ceildivu %45, %62
        %292 = vector.insert %85, %57 [9] : vector<6xi16> into vector<12x6xi16>
      }
      memref.copy %alloc, %alloc_6 : memref<12xi1> to memref<12xi1>
      memref.assume_alignment %alloc, 1 : memref<12xi1>
      %280 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
      %281 = vector.broadcast %extracted : i1 to vector<16xi1>
      %282 = vector.maskedload %146[%c10], %281, %280 : memref<12xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      %283 = arith.divsi %c1540477454_i64, %c1439632664_i64 : i64
      %284 = vector.bitcast %71 : vector<6xi16> to vector<6xi16>
      scf.yield %cst_20 : f16
    }
    %splat = tensor.splat %c-12520_i16 : tensor<12xi16>
    affine.for %arg0 = 0 to 11 {
    }
    %151 = math.absi %12 : tensor<12xi1>
    %152 = arith.remf %cst_0, %150 : f16
    memref.assume_alignment %alloc_9, 2 : memref<6x8x16xf16>
    %153 = math.cttz %21 : tensor<i64>
    memref.alloca_scope  {
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_38 = arith.constant 0 : i16
      %278 = vector.transfer_read %alloc_4[%c3, %c14], %c0_i16_38 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<12x6xi16>, vector<16xi16>
      %279 = index.casts %c0_i16 : i16 to index
      %280 = math.rsqrt %10 : tensor<12xf16>
      %281 = math.roundeven %cst_0 : f16
      %282 = arith.maxf %cst_2, %cst_0 : f16
      %283 = vector.matrix_multiply %145, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
      %284 = arith.maxui %c1368919089_i32, %c1811427327_i32 : i32
      %285 = math.log1p %cst_0 : f16
      %286 = math.sqrt %3 : tensor<12x6xf32>
      %287 = tensor.empty() : tensor<6x8x16xi16>
      %mapped_39 = linalg.map ins(%6 : tensor<6x8x16xi16>) outs(%287 : tensor<6x8x16xi16>)
        (%in: i16) {
          %309 = arith.maxui %c1910113794_i32, %c1910113794_i32 : i32
          %310 = arith.remsi %c1368919089_i32, %c1716536641_i32 : i32
          %311 = vector.transpose %74, [] : vector<i16> to vector<i16>
          %312 = arith.ori %extracted, %117 : i1
          %313 = arith.minsi %c1_i64, %c1_i64 : i64
          %314 = math.tanh %10 : tensor<12xf16>
          %315 = math.sqrt %14 : tensor<12xf32>
          %316 = index.ceildivu %90, %c13
          %317 = index.sub %62, %c15
          memref.store %134, %alloc_6[%c9] : memref<12xi1>
          %318 = vector.broadcast %c1910113794_i32 : i32 to vector<16xi32>
          %319 = vector.broadcast %true_23 : i1 to vector<16xi1>
          %320 = vector.maskedload %alloc_17[%c7], %319, %318 : memref<12xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
          %321 = arith.remsi %117, %117 : i1
          %322 = vector.flat_transpose %319 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
          %323 = memref.atomic_rmw minu %c1540477454_i64, %alloc_18[%c1] : (i64, memref<8xi64>) -> i64
          %324 = math.log %126 : tensor<12x6xf16>
          %325 = arith.floordivsi %117, %true : i1
          %326 = affine.load %alloc_14[%c6, %c1, %c5] : memref<6x8x16xi64>
          %327 = arith.divui %c1540477454_i64, %c1439632664_i64 : i64
          %328 = vector.shuffle %283, %19 [0, 1, 3, 4] : vector<1xi16>, vector<12xi16>
          %329 = math.absi %12 : tensor<12xi1>
          %330 = arith.cmpf false, %extracted_21, %cst_1 : f32
          %331 = arith.minsi %c1731481554_i64, %c1731481554_i64 : i64
          %332 = vector.broadcast %103 : index to vector<6xindex>
          %333 = vector.broadcast %true : i1 to vector<6xi1>
          vector.scatter %alloc_6[%c10] [%332], %333, %333 : memref<12xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %334 = arith.shli %c1540477454_i64, %c1731481554_i64 : i64
          %335 = vector.shuffle %319, %322 [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 15, 17, 18, 19, 21, 22, 25, 27, 31] : vector<16xi1>, vector<16xi1>
          %336 = math.absi %15 : tensor<12x6xi32>
          %337 = memref.atomic_rmw mulf %cst_0, %141[%c5] : (f16, memref<12xf16>) -> f16
          %338 = math.copysign %10, %10 : tensor<12xf16>
          %339 = math.exp %14 : tensor<12xf32>
          %340 = math.copysign %10, %10 : tensor<12xf16>
          %341 = math.log2 %cst : f32
          %342 = vector.insert %39, %19 [6] : i16 into vector<12xi16>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      vector.print %100 : vector<6x8x16xi32>
      %288 = arith.divf %extracted_21, %cst : f32
      %289 = index.maxu %37, %48
      %290 = index.ceildivu %84, %45
      %291 = math.log1p %150 : f16
      %292 = math.exp2 %150 : f16
      %293 = affine.max affine_map<(d0) -> ((d0 + d0 ceildiv 16) ceildiv 16, d0 ceildiv 16)>(%62)
      %294 = vector.broadcast %c5 : index to vector<12xindex>
      %295 = vector.broadcast %cst_0 : f16 to vector<12xf16>
      vector.scatter %141[%c10] [%294], %93, %295 : memref<12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %296 = vector.broadcast %c1811427327_i32 : i32 to vector<12x6xi32>
      %297 = vector.broadcast %true : i1 to vector<12x6xi1>
      %298 = vector.gather %67[%84] [%296], %297, %296 : tensor<12xi32>, vector<12x6xi32>, vector<12x6xi1>, vector<12x6xi32> into vector<12x6xi32>
      scf.if %true {
        %309 = index.mul %c10, %103
        %310 = math.copysign %3, %3 : tensor<12x6xf32>
        %311 = math.tan %collapsed : tensor<72xf32>
        %312 = index.ceildivs %c11, %293
        %313 = arith.shrui %134, %extracted : i1
        %314 = arith.minui %c1439632664_i64, %c1_i64 : i64
        %315 = math.atan2 %3, %3 : tensor<12x6xf32>
        bufferization.dealloc_tensor %18 : tensor<16x6x8xi32>
      } else {
        %309 = memref.load %alloc[%c9] : memref<12xi1>
        %310 = vector.broadcast %39 : i16 to vector<6x8x16xi16>
        %inserted = tensor.insert %c-31681_i16 into %splat[%c5] : tensor<12xi16>
        %alloc_42 = memref.alloc() : memref<6x8x16xi16>
        memref.copy %alloc_12, %alloc_42 : memref<6x8x16xi16> to memref<6x8x16xi16>
        %311 = math.tan %3 : tensor<12x6xf32>
        %312 = vector.shuffle %310, %310 [0, 1, 2, 4, 6, 7, 8, 11] : vector<6x8x16xi16>, vector<6x8x16xi16>
        %313 = affine.load %alloc[%c3] : memref<12xi1>
        %314 = tensor.empty() : tensor<12x6xi1>
      }
      %299 = tensor.empty() : tensor<12x6xi16>
      %mapped_40 = linalg.map ins(%110, %110 : tensor<12x6xi16>, tensor<12x6xi16>) outs(%299 : tensor<12x6xi16>)
        (%in: i16, %in_42: i16) {
          %309 = arith.addf %cst_0, %cst_2 : f16
          %310 = arith.remf %150, %cst_20 : f16
          %311 = vector.broadcast %48 : index to vector<6xindex>
          %312 = vector.broadcast %117 : i1 to vector<6xi1>
          vector.scatter %142[%c8, %c5] [%311], %312, %312 : memref<12x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %313 = vector.broadcast %150 : f16 to vector<12xf16>
          %314 = vector.gather %141[%75] [%94], %93, %313 : memref<12xf16>, vector<12xi32>, vector<12xi1>, vector<12xf16> into vector<12xf16>
          %collapsed_43 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<6x8x16xi16> into tensor<48x16xi16>
          %315 = vector.broadcast %cst : f32 to vector<6x8x16xf32>
          %316 = vector.gather %3[%c8, %37] [%100], %101, %315 : tensor<12x6xf32>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xf32> into vector<6x8x16xf32>
          %317 = math.exp2 %150 : f16
          %318 = index.ceildivs %75, %290
          %319 = vector.matrix_multiply %283, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi16>, vector<12xi16>) -> vector<12xi16>
          %cst_44 = arith.constant 1.000000e+00 : f16
          %320 = vector.transfer_read %4[%50, %c13, %48], %cst_44 : tensor<6x8x16xf16>, vector<8x8xf16>
          %321 = vector.broadcast %cst : f32 to vector<12xf32>
          %322 = vector.fma %321, %321, %321 : vector<12xf32>
          %collapsed_45 = tensor.collapse_shape %18 [[0, 1], [2]] : tensor<16x6x8xi32> into tensor<96x8xi32>
          %323 = math.fpowi %cst_44, %c1811427327_i32 : f16, i32
          %324 = math.rsqrt %cst_1 : f32
          %325 = vector.gather %142[%279, %318] [%296], %297, %297 : memref<12x6xi1>, vector<12x6xi32>, vector<12x6xi1>, vector<12x6xi1> into vector<12x6xi1>
          %c1_i64_46 = arith.constant 1 : i64
          %326 = vector.transfer_read %9[%90], %c1_i64_46 : tensor<12xi64>, vector<i64>
          %cst_47 = arith.constant 0x4E653EBC : f32
          %327 = index.ceildivu %c5, %318
          %328 = math.atan %126 : tensor<12x6xf16>
          %329 = arith.divf %cst_20, %150 : f16
          %330 = arith.andi %c-12520_i16, %c-31681_i16 : i16
          %331 = math.ipowi %c1439632664_i64, %c1_i64 : i64
          %332 = affine.min affine_map<(d0) -> (d0, (-d0) ceildiv 16, d0 floordiv 2, d0)>(%c15)
          %333 = bufferization.to_memref %12 : memref<12xi1>
          %334 = math.ctlz %c1540477454_i64 : i64
          %335 = vector.gather %alloc_4[%c10, %77] [%94], %93, %95 : memref<12x6xi16>, vector<12xi32>, vector<12xi1>, vector<12xi16> into vector<12xi16>
          %splat_48 = tensor.splat %true : tensor<12xi1>
          %336 = math.absf %150 : f16
          %337 = arith.maxf %cst_0, %cst_0 : f16
          %338 = index.divu %75, %48
          %339 = vector.broadcast %c13 : index to vector<12xindex>
          vector.scatter %142[%c0, %c5] [%339], %93, %93 : memref<12x6xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
          %340 = vector.broadcast %cst_2 : f16 to vector<12xf16>
          %c0_i16_49 = arith.constant 0 : i16
          linalg.yield %c0_i16_49 : i16
        }
      %300 = arith.ceildivsi %117, %117 : i1
      %301 = arith.divsi %c-5864_i16, %39 : i16
      %302 = scf.while (%arg0 = %94) : (vector<12xi32>) -> vector<12xi32> {
        %309 = bufferization.to_memref %8 : memref<6x8x16xi64>
        %310 = arith.addi %c1731481554_i64, %c1439632664_i64 : i64
        %311 = bufferization.to_memref %21 : memref<i64>
        %312 = arith.mulf %150, %cst_0 : f16
        %313 = math.cttz %299 : tensor<12x6xi16>
        %314 = arith.maxf %150, %cst_2 : f16
        %315 = arith.ori %c-12520_i16, %c0_i16 : i16
        %316 = arith.andi %c1368919089_i32, %c1716536641_i32 : i32
        scf.condition(%true) %94 : vector<12xi32>
      } do {
      ^bb0(%arg0: vector<12xi32>):
        %309 = arith.muli %c-31681_i16, %c-22873_i16 : i16
        %310 = vector.broadcast %cst : f32 to vector<12xf32>
        %311 = vector.fma %310, %310, %310 : vector<12xf32>
        %312 = arith.maxsi %c1_i64, %c1731481554_i64 : i64
        %313 = bufferization.clone %alloc_14 : memref<6x8x16xi64> to memref<6x8x16xi64>
        %314 = math.fma %extracted_21, %cst, %cst : f32
        %splat_42 = tensor.splat %cst_20 : tensor<12xf16>
        %315 = math.exp2 %4 : tensor<6x8x16xf16>
        %extracted_43 = tensor.extract %12[%c11] : tensor<12xi1>
        %316 = vector.gather %3[%c7, %c15] [%94], %93, %310 : tensor<12x6xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        memref.copy %alloc_17, %alloc_15 : memref<12xi32> to memref<12xi32>
        %317 = arith.divsi %true_23, %117 : i1
        %318 = tensor.empty(%c4) : tensor<6x?x16xf32>
        %319 = math.copysign %126, %126 : tensor<12x6xf16>
        %320 = arith.ceildivsi %134, %117 : i1
        %321 = math.ipowi %c1811427327_i32, %c1368919089_i32 : i32
        %322 = math.atan %14 : tensor<12xf32>
        scf.yield %94 : vector<12xi32>
      }
      %alloca_41 = memref.alloca() : memref<12x6xi32>
      %303 = arith.remui %39, %c0_i16 : i16
      %304 = vector.splat %134 : vector<12xi1>
      %305 = arith.maxsi %c1910113794_i32, %c1910113794_i32 : i32
      %306 = arith.shrui %c1811427327_i32, %c1811427327_i32 : i32
      %307 = arith.maxf %cst_2, %cst_2 : f16
      memref.store %c1540477454_i64, %alloc_11[%c9] : memref<12xi64>
      %308 = arith.shrui %c1910113794_i32, %c1716536641_i32 : i32
    }
    %154 = math.cttz %9 : tensor<12xi64>
    %155 = arith.maxf %cst, %cst : f32
    %156 = math.cttz %99 : tensor<6x8x16xi32>
    %157 = index.ceildivs %c10, %48
    %158 = memref.atomic_rmw mins %c1716536641_i32, %alloc_17[%c3] : (i32, memref<12xi32>) -> i32
    %159 = arith.shrui %c1910113794_i32, %c1716536641_i32 : i32
    %160 = math.exp2 %150 : f16
    %161 = vector.transpose %145, [0] : vector<12xi16> to vector<12xi16>
    %162 = math.ctlz %39 : i16
    %163 = affine.for %arg0 = 0 to 115 iter_args(%arg1 = %c14) -> (index) {
      affine.yield %35 : index
    }
    %164 = index.add %50, %45
    %165 = index.sizeof
    %alloca = memref.alloca() : memref<12xi1>
    %166 = scf.while (%arg0 = %c1439632664_i64) : (i64) -> i64 {
      %expanded = tensor.expand_shape %99 [[0], [1], [2, 3]] : tensor<6x8x16xi32> into tensor<6x8x16x1xi32>
      %278 = math.log1p %4 : tensor<6x8x16xf16>
      %279 = math.log1p %10 : tensor<12xf16>
      %280 = index.add %c0, %c7
      %281 = tensor.empty() : tensor<6x8x16xi64>
      %mapped_38 = linalg.map ins(%7, %13, %8 : tensor<6x8x16xi64>, tensor<6x8x16xi64>, tensor<6x8x16xi64>) outs(%281 : tensor<6x8x16xi64>)
        (%in: i64, %in_39: i64, %in_40: i64) {
          %285 = math.fma %cst_2, %cst_0, %cst_0 : f16
          %286 = arith.maxf %150, %cst_2 : f16
          %287 = arith.divui %c1368919089_i32, %c1368919089_i32 : i32
          %288 = index.sizeof
          %289 = index.sizeof
          %c11527_i16 = arith.constant 11527 : i16
          %290 = math.fma %4, %4, %4 : tensor<6x8x16xf16>
          %291 = vector.shuffle %112, %101 [1, 2, 5, 6, 9, 10, 11] : vector<6x8x16xi1>, vector<6x8x16xi1>
          %splat_41 = tensor.splat %cst_0 : tensor<6x8x16xf16>
          %292 = math.fma %10, %10, %10 : tensor<12xf16>
          %293 = math.floor %cst_0 : f16
          %294 = arith.shli %extracted, %extracted : i1
          %295 = bufferization.clone %alloc_14 : memref<6x8x16xi64> to memref<6x8x16xi64>
          %296 = vector.broadcast %c-22873_i16 : i16 to vector<6x8x16xi16>
          %297 = vector.splat %c-12520_i16 : vector<12xi16>
          vector.print %112 : vector<6x8x16xi1>
          %from_elements_42 = tensor.from_elements %cst, %cst, %cst, %extracted_21, %cst_1, %cst_1, %cst, %extracted_21, %cst_1, %cst, %cst, %cst : tensor<12xf32>
          %298 = arith.divui %true, %true : i1
          %299 = affine.load %alloc_3[%c0, %c9, %c11] : memref<6x8x16xf16>
          %300 = vector.broadcast %true_23 : i1 to vector<6xi1>
          %301 = vector.maskedload %alloc_12[%c3, %c5, %c13], %300, %85 : memref<6x8x16xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %302 = math.tanh %14 : tensor<12xf32>
          %303 = index.casts %c-31681_i16 : i16 to index
          %304 = arith.maxf %extracted_21, %extracted_21 : f32
          %305 = affine.load %alloc_3[%c3, %c11, %c3] : memref<6x8x16xf16>
          %306 = vector.create_mask %c12, %c14, %c9 : vector<6x8x16xi1>
          %collapsed_43 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
          %307 = arith.subi %c1716536641_i32, %c1368919089_i32 : i32
          %308 = math.tanh %305 : f16
          %309 = index.divu %288, %37
          %310 = math.atan2 %from_elements_42, %from_elements_42 : tensor<12xf32>
          %311 = arith.divf %cst_20, %cst_2 : f16
          %312 = affine.max affine_map<(d0, d1) -> (d1 mod 4 + 64, d1 floordiv 2, d1 floordiv 2, d0)>(%37, %149)
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %282 = index.castu %48 : index to i32
      %283 = math.powf %cst, %cst_1 : f32
      %284 = vector.matrix_multiply %85, %85 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
      scf.condition(%true_23) %arg0 : i64
    } do {
    ^bb0(%arg0: i64):
      %278 = arith.subi %true, %true : i1
      %279 = index.add %c0, %c10
      %inserted = tensor.insert %arg0 into %13[%c2, %c7, %c8] : tensor<6x8x16xi64>
      %280 = arith.remsi %c-22873_i16, %c-31681_i16 : i16
      %281 = index.ceildivs %279, %35
      %282 = arith.shrui %c-31681_i16, %c-22873_i16 : i16
      %283 = index.maxu %c13, %c11
      %284 = index.sizeof
      %285 = math.fpowi %cst_1, %c1811427327_i32 : f32, i32
      %286 = math.exp2 %cst_20 : f16
      %287 = index.sizeof
      %288 = math.tan %collapsed : tensor<72xf32>
      %289 = affine.load %91[%c2, %c9, %c2] : memref<6x8x16xi32>
      %290 = vector.bitcast %100 : vector<6x8x16xi32> to vector<6x8x16xi32>
      %291 = math.tanh %3 : tensor<12x6xf32>
      %292 = vector.extract %71[4] : vector<6xi16>
      scf.yield %c1540477454_i64 : i64
    }
    %167 = index.maxu %164, %45
    %168 = arith.cmpf ult, %cst_1, %cst_1 : f32
    %169 = vector.transpose %145, [0] : vector<12xi16> to vector<12xi16>
    %170 = arith.floordivsi %c1716536641_i32, %c1910113794_i32 : i32
    %171 = vector.broadcast %c1_i64 : i64 to vector<i64>
    %172 = vector.transfer_write %171, %17[%48, %c15, %c6] : vector<i64>, tensor<6x8x16xi64>
    %173 = math.absf %extracted_21 : f32
    %174 = bufferization.clone %alloc_10 : memref<12xi16> to memref<12xi16>
    %175 = math.exp %14 : tensor<12xf32>
    %176 = arith.addf %extracted_21, %extracted_21 : f32
    vector.print %69 : vector<f16>
    %177 = math.powf %cst_0, %cst_20 : f16
    %178 = index.maxs %50, %c6
    %179 = arith.mulf %150, %cst_20 : f16
    %180 = index.mul %167, %167
    %181 = index.casts %c2 : index to i32
    %cst_25 = arith.constant 0x4E1F274A : f32
    %182 = math.rsqrt %cst_1 : f32
    %from_elements_26 = tensor.from_elements %cst_20, %cst_20, %cst_20, %cst_2, %cst_2, %cst_2, %cst_0, %150, %cst_2, %cst_2, %cst_2, %150, %150, %cst_20, %cst_0, %cst_2, %cst_0, %cst_20, %cst_2, %cst_20, %cst_0, %cst_20, %cst_20, %150, %cst_20, %150, %cst_0, %cst_2, %150, %cst_2, %cst_0, %150, %cst_2, %150, %cst_2, %cst_0, %cst_20, %cst_20, %150, %150, %cst_20, %cst_20, %cst_0, %cst_20, %150, %150, %cst_20, %cst_2, %cst_0, %cst_20, %cst_20, %150, %cst_2, %cst_0, %cst_20, %150, %cst_2, %150, %cst_0, %cst_2, %cst_2, %cst_0, %150, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %150 : tensor<12x6xf16>
    %183 = index.maxu %48, %75
    %184 = index.divu %c10, %164
    %185 = arith.divui %134, %134 : i1
    %186 = vector.broadcast %cst_1 : f32 to vector<12xf32>
    %187 = vector.gather %alloc_16[%50] [%94], %93, %186 : memref<12xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
    %188 = arith.andi %117, %134 : i1
    %189 = arith.maxf %cst_0, %cst_20 : f16
    %190 = arith.cmpf ule, %150, %cst_0 : f16
    %191 = math.log1p %4 : tensor<6x8x16xf16>
    affine.store %extracted, %alloc_6[%c1] : memref<12xi1>
    %192 = arith.divui %c1439632664_i64, %c1540477454_i64 : i64
    %193 = arith.shli %c1540477454_i64, %c1540477454_i64 : i64
    %194 = vector.broadcast %c1540477454_i64 : i64 to vector<i64>
    %195 = vector.transfer_write %194, %9[%157] : vector<i64>, tensor<12xi64>
    %196 = math.log2 %4 : tensor<6x8x16xf16>
    memref.assume_alignment %alloc_13, 16 : memref<6x8x16xi32>
    %197 = vector.broadcast %c1439632664_i64 : i64 to vector<6x12xi64>
    %198 = vector.transfer_write %197, %17[%50, %c0, %84] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x12xi64>, tensor<6x8x16xi64>
    %199 = vector.broadcast %c1731481554_i64 : i64 to vector<6xi64>
    %200 = vector.broadcast %117 : i1 to vector<6xi1>
    %201 = vector.maskedload %alloc_18[%c0], %200, %199 : memref<8xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %202 = tensor.empty(%c8) : tensor<6x8x?xi1>
    %203 = math.fma %extracted_21, %cst_1, %extracted_21 : f32
    %204 = arith.remf %cst_20, %150 : f16
    %205 = arith.andi %extracted, %true : i1
    %206 = tensor.empty() : tensor<12xi16>
    %mapped_27 = linalg.map ins(%174 : memref<12xi16>) outs(%206 : tensor<12xi16>)
      (%in: i16) {
        %278 = arith.mulf %150, %cst_2 : f16
        %279 = vector.broadcast %c0 : index to vector<6xindex>
        %280 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        vector.scatter %alloc_16[%c2] [%279], %200, %280 : memref<12xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %281 = tensor.empty(%c8) : tensor<?xi32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_38 = arith.constant 0 : i16
        %282 = vector.transfer_read %splat[%41], %c0_i16_38 : tensor<12xi16>, vector<i16>
        %283 = math.fma %cst, %cst_1, %cst : f32
        %284 = math.tanh %126 : tensor<12x6xf16>
        %285 = vector.transpose %74, [] : vector<i16> to vector<i16>
        %286 = index.mul %62, %167
        %287 = arith.remf %cst_1, %cst_1 : f32
        %288 = index.ceildivs %75, %c15
        %false = arith.constant false
        %from_elements_39 = tensor.from_elements %true_23, %true_23, %extracted, %134, %extracted, %true_23, %true_23, %117, %134, %true_23, %117, %true, %117, %extracted, %true_23, %extracted, %134, %117, %134, %true_23, %true, %134, %extracted, %true_23, %134, %134, %true, %extracted, %extracted, %117, %134, %true, %true_23, %true, %true, %134, %134, %134, %134, %extracted, %true_23, %true_23, %extracted, %true, %117, %117, %extracted, %extracted, %134, %extracted, %extracted, %true, %true_23, %extracted, %true_23, %extracted, %extracted, %134, %117, %extracted, %true, %extracted, %true, %extracted, %134, %extracted, %117, %117, %117, %true_23, %117, %117, %117, %117, %true, %true_23, %true_23, %134, %extracted, %134, %134, %true_23, %true, %117, %true_23, %extracted, %true_23, %extracted, %extracted, %true_23, %117, %true_23, %extracted, %134, %true, %134, %true_23, %134, %117, %134, %extracted, %117, %extracted, %134, %extracted, %117, %true, %extracted, %extracted, %true, %extracted, %extracted, %134, %117, %134, %134, %true, %extracted, %117, %134, %117, %134, %134, %true, %117, %134, %true, %134, %true_23, %extracted, %extracted, %true_23, %extracted, %extracted, %true_23, %true, %134, %134, %134, %true, %117, %134, %134, %true, %extracted, %extracted, %117, %true, %134, %extracted, %true_23, %true, %true, %117, %true, %134, %134, %134, %134, %extracted, %extracted, %true, %117, %134, %extracted, %134, %extracted, %117, %true_23, %117, %117, %true, %extracted, %true, %true_23, %true, %true, %true_23, %true_23, %true_23, %134, %117, %134, %extracted, %extracted, %117, %extracted, %true, %extracted, %134, %true, %extracted, %true, %134, %true_23, %true_23, %true, %extracted, %117, %117, %134, %true_23, %extracted, %true_23, %true_23, %134, %134, %true, %117, %extracted, %117, %true_23, %true_23, %117, %117, %true, %true, %extracted, %true_23, %true, %117, %true, %117, %117, %true, %134, %extracted, %134, %134, %134, %134, %true_23, %true_23, %117, %117, %true_23, %134, %134, %134, %true_23, %extracted, %true_23, %134, %134, %true, %true_23, %117, %extracted, %117, %extracted, %true_23, %true, %true_23, %true, %117, %true_23, %extracted, %134, %true, %134, %true, %extracted, %true_23, %true_23, %134, %true, %117, %134, %extracted, %true, %134, %true, %extracted, %true_23, %134, %true, %extracted, %extracted, %true, %extracted, %true, %extracted, %117, %true_23, %true, %117, %134, %extracted, %117, %true, %extracted, %true_23, %134, %true, %true, %true, %true_23, %134, %true, %134, %true, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %134, %117, %true, %true, %134, %extracted, %true_23, %true, %117, %true, %134, %117, %117, %true, %true_23, %extracted, %117, %true, %true_23, %117, %117, %true_23, %true, %134, %134, %extracted, %true, %extracted, %true_23, %true_23, %extracted, %true_23, %117, %true, %true_23, %117, %117, %117, %extracted, %134, %true_23, %true, %extracted, %134, %true, %134, %extracted, %true, %true, %true, %extracted, %134, %134, %true_23, %extracted, %true, %117, %117, %true_23, %117, %true, %extracted, %true_23, %true, %true, %true, %true_23, %true_23, %true, %extracted, %extracted, %117, %134, %117, %134, %true_23, %134, %true, %117, %134, %134, %117, %117, %true, %true_23, %true, %134, %extracted, %true_23, %134, %134, %true, %true_23, %134, %134, %117, %true_23, %134, %117, %extracted, %true_23, %extracted, %true, %true, %true_23, %true_23, %extracted, %true, %117, %extracted, %true_23, %117, %extracted, %extracted, %117, %true_23, %134, %true, %117, %true_23, %true_23, %true_23, %134, %134, %true, %extracted, %134, %extracted, %true_23, %117, %117, %134, %extracted, %117, %134, %117, %extracted, %extracted, %134, %134, %true_23, %extracted, %extracted, %117, %extracted, %extracted, %134, %true_23, %134, %extracted, %true_23, %134, %true, %117, %extracted, %true_23, %true_23, %true, %134, %134, %true, %extracted, %117, %134, %true_23, %true_23, %117, %134, %true, %true_23, %134, %true, %true, %true, %134, %117, %extracted, %true, %117, %134, %true_23, %134, %extracted, %true, %extracted, %true, %true, %true_23, %extracted, %117, %117, %134, %true_23, %extracted, %extracted, %true_23, %true, %true, %true_23, %true_23, %134, %117, %134, %117, %134, %extracted, %extracted, %true_23, %true, %true_23, %true_23, %true, %true_23, %extracted, %true_23, %extracted, %true_23, %117, %134, %extracted, %true_23, %117, %true_23, %134, %extracted, %extracted, %true_23, %true, %134, %134, %extracted, %true_23, %true, %extracted, %extracted, %134, %true_23, %extracted, %extracted, %extracted, %134, %134, %117, %true_23, %134, %true, %true, %true_23, %extracted, %true_23, %true_23, %true, %134, %extracted, %extracted, %extracted, %extracted, %117, %134, %117, %extracted, %true, %134, %true, %true_23, %134, %true_23, %134, %extracted, %134, %extracted, %true, %134, %134, %true, %extracted, %134, %117, %true_23, %true, %117, %extracted, %true, %extracted, %extracted, %extracted, %true_23, %extracted, %true, %true, %extracted, %true_23, %true_23, %extracted, %extracted, %extracted, %117, %extracted, %true, %extracted, %true, %134, %extracted, %true, %117, %true_23, %117, %134, %true, %true, %true, %true, %true, %true, %true, %117, %extracted, %true, %true_23, %extracted, %true_23, %true, %true, %true, %true_23, %extracted, %134, %134, %134, %extracted, %extracted, %extracted, %134, %extracted, %117, %true_23, %true, %134, %extracted, %extracted, %extracted, %117, %true, %134, %true_23, %134, %extracted, %134, %117, %extracted, %true, %true, %extracted, %117, %true, %extracted, %extracted, %true_23, %true_23, %extracted, %true, %true_23, %134, %true_23, %134, %extracted, %true, %extracted, %true, %117, %true, %134, %117, %true_23, %true, %extracted, %true, %true_23, %true_23, %134, %117, %true_23, %extracted, %134, %true, %true, %true_23, %134, %extracted, %true, %extracted, %134, %extracted, %134, %117, %true, %extracted, %true_23, %extracted, %117, %true_23, %134, %extracted, %134, %117, %extracted, %117, %extracted, %true, %true_23, %true, %true, %true_23, %134, %extracted, %true, %true, %134, %134, %extracted, %true_23, %134, %extracted, %134, %true, %true_23, %117, %extracted, %true_23, %134, %117, %true, %true_23, %extracted, %134, %117, %true_23, %117, %true, %true_23, %true, %extracted, %true_23, %extracted, %117, %117, %true, %true_23, %134, %true_23, %extracted, %extracted, %117, %true, %117, %true, %134, %true, %extracted, %true_23, %134 : tensor<6x8x16xi1>
        %289 = arith.andi %c1731481554_i64, %c1731481554_i64 : i64
        %290 = math.cttz %8 : tensor<6x8x16xi64>
        %291 = math.copysign %14, %14 : tensor<12xf32>
        %292 = vector.splat %c3 : vector<12xindex>
        memref.assume_alignment %alloc_9, 2 : memref<6x8x16xf16>
        %293 = math.ctlz %extracted : i1
        %294 = math.tanh %extracted_21 : f32
        %295 = memref.atomic_rmw ori %c1_i64, %alloc_14[%c2, %c2, %c8] : (i64, memref<6x8x16xi64>) -> i64
        %296 = math.exp %extracted_21 : f32
        %297 = arith.shrui %c1540477454_i64, %c1731481554_i64 : i64
        %298 = vector.shuffle %199, %199 [0, 4, 5, 7, 9, 10] : vector<6xi64>, vector<6xi64>
        %299 = math.ceil %10 : tensor<12xf16>
        memref.store %c1731481554_i64, %alloc_11[%c0] : memref<12xi64>
        %300 = math.atan %extracted_21 : f32
        %301 = vector.extract %145[9] : vector<12xi16>
        %from_elements_40 = tensor.from_elements %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32 : tensor<12xi32>
        %302 = arith.andi %39, %39 : i16
        %303 = arith.addi %c-31681_i16, %39 : i16
        %304 = math.atan %150 : f16
        %305 = index.sizeof
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %207 = vector.shuffle %57, %57 [0, 1, 6, 7, 12, 14, 15, 17, 20, 21, 23] : vector<12x6xi16>, vector<12x6xi16>
    %208 = affine.if affine_set<(d0) : (d0 == 0)>(%c9) -> memref<6x8x16xi1> {
      %278 = arith.shli %c1439632664_i64, %c1_i64 : i64
      %279 = arith.remf %cst, %extracted_21 : f32
      %280 = vector.transpose %145, [0] : vector<12xi16> to vector<12xi16>
      %281 = vector.broadcast %c1540477454_i64 : i64 to vector<12x6xi64>
      %282 = index.sizeof
      memref.store %c-31681_i16, %alloc_10[%c10] : memref<12xi16>
      %283 = arith.mulf %extracted_21, %cst : f32
      %284 = index.divs %35, %90
      affine.yield %alloc_8 : memref<6x8x16xi1>
    } else {
      %278 = arith.maxui %c-31681_i16, %c-31681_i16 : i16
      %279 = math.tanh %14 : tensor<12xf32>
      %280 = arith.shli %true, %extracted : i1
      %c2106375084_i64 = arith.constant 2106375084 : i64
      %cst_38 = arith.constant 2.950400e+04 : f16
      %281 = math.fpowi %10, %67 : tensor<12xf16>, tensor<12xi32>
      %282 = index.casts %c-22873_i16 : i16 to index
      %283 = vector.splat %45 : vector<12xindex>
      affine.yield %alloc_8 : memref<6x8x16xi1>
    }
    %209 = math.log %3 : tensor<12x6xf32>
    %210 = vector.insert %39, %85 [2] : i16 into vector<6xi16>
    %211 = arith.xori %c1_i64, %c1_i64 : i64
    %212 = math.ctlz %6 : tensor<6x8x16xi16>
    %213 = vector.load %alloc_17[%c9] : memref<12xi32>, vector<12xi32>
    %214 = math.expm1 %150 : f16
    %215 = math.powf %3, %3 : tensor<12x6xf32>
    %216 = arith.divui %c1439632664_i64, %c1_i64 : i64
    %217 = affine.apply affine_map<(d0, d1, d2) -> (d0 * -64)>(%c7, %180, %c8)
    %218 = arith.andi %c1_i64, %c1731481554_i64 : i64
    %219 = arith.remsi %c-12520_i16, %c-31681_i16 : i16
    %220 = math.log2 %collapsed : tensor<72xf32>
    %221 = arith.shrui %c-31681_i16, %c-22873_i16 : i16
    %222 = index.floordivs %c14, %50
    %223 = math.cttz %13 : tensor<6x8x16xi64>
    memref.alloca_scope  {
      %278 = math.cos %3 : tensor<12x6xf32>
      %279 = math.copysign %14, %14 : tensor<12xf32>
      %280 = math.log1p %collapsed : tensor<72xf32>
      %281 = arith.andi %c-22873_i16, %c-5864_i16 : i16
      %282 = affine.min affine_map<(d0) -> ((-d0) ceildiv 32, (-d0) ceildiv 32, -d0)>(%37)
      %283 = index.maxs %75, %c15
      %c1_i64_38 = arith.constant 1 : i64
      %284 = vector.transfer_read %17[%37, %75, %84], %c1_i64_38 : tensor<6x8x16xi64>, vector<12x12xi64>
      %285 = memref.load %91[%c3, %c2, %c3] : memref<6x8x16xi32>
      %286 = math.fma %extracted_21, %extracted_21, %extracted_21 : f32
      %287 = math.atan %cst_20 : f16
      %from_elements_39 = tensor.from_elements %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1910113794_i32, %c1811427327_i32, %c1368919089_i32, %c1368919089_i32, %c1910113794_i32, %c1716536641_i32, %c1910113794_i32, %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1910113794_i32, %c1368919089_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1811427327_i32, %c1716536641_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1811427327_i32, %c1910113794_i32, %c1910113794_i32, %c1910113794_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32 : tensor<6x8x16xi32>
      %288 = vector.extract %199[5] : vector<6xi64>
      %289 = vector.extract %199[4] : vector<6xi64>
      %290 = math.log10 %4 : tensor<6x8x16xf16>
      %291 = math.exp %126 : tensor<12x6xf16>
      %292 = index.divu %50, %c14
      %293 = vector.shuffle %171, %194 [0, 1] : vector<i64>, vector<i64>
      %294 = math.rsqrt %from_elements_26 : tensor<12x6xf16>
      scf.if %134 {
        %307 = arith.floordivsi %extracted, %extracted : i1
        memref.tensor_store %11, %alloc_4 : memref<12x6xi16>
        %308 = tensor.empty() : tensor<12x6xi1>
        %309 = arith.divsi %c1_i64, %c1731481554_i64 : i64
        %310 = math.atan2 %collapsed, %collapsed : tensor<72xf32>
        %311 = arith.divui %c1731481554_i64, %c1439632664_i64 : i64
        %312 = affine.load %91[%c7, %c5, %c6] : memref<6x8x16xi32>
        %313 = vector.broadcast %c-31681_i16 : i16 to vector<6x6xi16>
        %314 = vector.outerproduct %71, %71, %313 {kind = #vector.kind<or>} : vector<6xi16>, vector<6xi16>
      } else {
        %307 = vector.shuffle %187, %186 [1, 3, 5, 7, 14, 15, 17, 18, 19, 20, 21, 22, 23] : vector<12xf32>, vector<12xf32>
        %308 = vector.broadcast %c1368919089_i32 : i32 to vector<6xi32>
        %309 = vector.transfer_write %308, %15[%c14, %164] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, tensor<12x6xi32>
        %310 = arith.divui %c-31681_i16, %c-5864_i16 : i16
        %311 = math.absi %8 : tensor<6x8x16xi64>
        %312 = math.exp2 %extracted_21 : f32
        %313 = arith.ori %c1368919089_i32, %c1811427327_i32 : i32
        %314 = math.copysign %extracted_21, %extracted_21 : f32
        %315 = affine.apply affine_map<(d0) -> ((-(d0 + 1)) ceildiv 4)>(%c15)
      }
      memref.assume_alignment %alloc_13, 16 : memref<6x8x16xi32>
      %295 = vector.broadcast %c1811427327_i32 : i32 to vector<8x16xi32>
      %296 = vector.transfer_write %295, %from_elements_39[%90, %90, %37] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x16xi32>, tensor<6x8x16xi32>
      %297 = arith.mulf %cst_1, %cst_1 : f32
      %298 = affine.apply affine_map<(d0) -> ((-(d0 + 1)) ceildiv 4)>(%c11)
      %299 = math.copysign %4, %4 : tensor<6x8x16xf16>
      %300 = vector.broadcast %150 : f16 to vector<12x6xf16>
      %301 = arith.remsi %true_23, %117 : i1
      %302 = memref.atomic_rmw minu %c-12520_i16, %alloc_4[%c5, %c0] : (i16, memref<12x6xi16>) -> i16
      %303 = math.ctlz %7 : tensor<6x8x16xi64>
      %inserted = tensor.insert %c1_i64 into %9[%c8] : tensor<12xi64>
      %304 = index.sizeof
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_40 = arith.constant 0 : i32
      %305 = vector.transfer_read %5[%c5, %c7], %c0_i32_40 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<12x6xi32>, vector<12xi32>
      %306 = math.tan %10 : tensor<12xf16>
    }
    %224 = arith.divsi %c1731481554_i64, %c1540477454_i64 : i64
    %225 = vector.broadcast %c-31681_i16 : i16 to vector<8xi16>
    %226 = vector.broadcast %117 : i1 to vector<8xi1>
    %227 = vector.maskedload %alloc_12[%c3, %c1, %c2], %226, %225 : memref<6x8x16xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %228 = math.copysign %cst_2, %cst_0 : f16
    %229 = vector.broadcast %cst : f32 to vector<6x8x16xf32>
    %230 = vector.broadcast %cst_0 : f16 to vector<12x6xf16>
    %231 = arith.addf %extracted_21, %extracted_21 : f32
    %232 = tensor.empty() : tensor<6x12xi16>
    %233 = tensor.empty() : tensor<12x12xi16>
    %234 = linalg.matmul ins(%110, %232 : tensor<12x6xi16>, tensor<6x12xi16>) outs(%233 : tensor<12x12xi16>) -> tensor<12x12xi16>
    %235 = arith.remui %c-5864_i16, %c-22873_i16 : i16
    %alloc_28 = memref.alloc() : memref<6x12xf16>
    %236 = tensor.empty() : tensor<12x12xf16>
    %237 = linalg.matmul ins(%from_elements_26, %alloc_28 : tensor<12x6xf16>, memref<6x12xf16>) outs(%236 : tensor<12x12xf16>) -> tensor<12x12xf16>
    %238 = arith.subi %c-12520_i16, %39 : i16
    %239 = math.log2 %4 : tensor<6x8x16xf16>
    %240 = vector.broadcast %c-31681_i16 : i16 to vector<6x8x16xi16>
    %241 = affine.if affine_set<(d0, d1, d2) : (d1 >= 0, d0 + 2 == 0)>(%c15, %c3, %c15) -> i64 {
      %278 = math.powf %10, %10 : tensor<12xf16>
      %279 = vector.broadcast %183 : index to vector<16xindex>
      %280 = vector.broadcast %true : i1 to vector<16xi1>
      %281 = vector.broadcast %c-5864_i16 : i16 to vector<16xi16>
      vector.scatter %174[%c7] [%279], %280, %281 : memref<12xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
      %alloca_38 = memref.alloca() : memref<12xf32>
      %282 = affine.load %alloc_14[%c0, %c3, %c12] : memref<6x8x16xi64>
      %true_39 = arith.constant true
      %283 = math.absi %117 : i1
      %284 = math.ipowi %c1910113794_i32, %c1910113794_i32 : i32
      %285 = math.atan2 %3, %3 : tensor<12x6xf32>
      affine.yield %c1_i64 : i64
    } else {
      %278 = index.sizeof
      %279 = tensor.empty() : tensor<12xi16>
      %splat_38 = tensor.splat %117 : tensor<12xi1>
      %280 = affine.max affine_map<(d0) -> (d0 * 2, (d0 * 2 + 16) * 32, d0 mod 128)>(%c9)
      %281 = math.exp %from_elements_26 : tensor<12x6xf16>
      %282 = math.cos %150 : f16
      %283 = affine.for %arg0 = 0 to 81 iter_args(%arg1 = %186) -> (vector<12xf32>) {
        affine.yield %186 : vector<12xf32>
      }
      %284 = math.atan2 %from_elements_26, %from_elements_26 : tensor<12x6xf16>
      affine.yield %c1731481554_i64 : i64
    }
    %collapsed_29 = tensor.collapse_shape %3 [[0, 1]] : tensor<12x6xf32> into tensor<72xf32>
    %242 = index.ceildivu %c11, %c1
    %243 = memref.atomic_rmw andi %c-31681_i16, %174[%c10] : (i16, memref<12xi16>) -> i16
    %splat_30 = tensor.splat %c1368919089_i32 : tensor<6x8x16xi32>
    %244 = math.absf %from_elements_26 : tensor<12x6xf16>
    %245 = bufferization.to_memref %67 : memref<12xi32>
    %246 = arith.maxui %c1368919089_i32, %c1811427327_i32 : i32
    %collapsed_31 = tensor.collapse_shape %11 [[0, 1]] : tensor<12x6xi16> into tensor<72xi16>
    %247 = vector.splat %c1439632664_i64 : vector<12xi64>
    %248 = math.exp2 %cst_2 : f16
    %249 = math.powf %14, %14 : tensor<12xf32>
    %250 = vector.broadcast %117 : i1 to vector<12xi1>
    %251 = scf.if %117 -> (f16) {
      %collapsed_38 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
      %278 = arith.remui %c1716536641_i32, %c1368919089_i32 : i32
      %279 = arith.remf %150, %150 : f16
      %280 = math.powf %collapsed, %collapsed_29 : tensor<72xf32>
      %281 = vector.reduction <mul>, %71 : vector<6xi16> into i16
      %282 = memref.load %245[%c7] : memref<12xi32>
      %283 = vector.broadcast %39 : i16 to vector<i16>
      vector.transfer_write %283, %174[%50] : vector<i16>, memref<12xi16>
      %284 = arith.maxui %true_23, %extracted : i1
      scf.yield %150 : f16
    } else {
      memref.alloca_scope  {
        %287 = memref.atomic_rmw addf %cst, %alloc_7[%c2, %c3] : (f32, memref<12x6xf32>) -> f32
        %288 = math.log %extracted_21 : f32
        %289 = math.floor %cst_20 : f16
        %290 = arith.mulf %cst_1, %cst_1 : f32
        %291 = arith.subi %c1439632664_i64, %c1_i64 : i64
        %292 = arith.remf %cst_0, %cst_20 : f16
        %293 = math.fma %from_elements_26, %from_elements_26, %from_elements_26 : tensor<12x6xf16>
        %294 = math.exp %cst_2 : f16
        %295 = index.castu %117 : i1 to index
        %splat_38 = tensor.splat %cst_0 : tensor<6x8x16xf16>
        %296 = index.maxu %c6, %75
        memref.store %c-12520_i16, %alloc_12[%c4, %c6, %c13] : memref<6x8x16xi16>
        %297 = arith.cmpf ugt, %cst, %extracted_21 : f32
        %298 = tensor.empty() : tensor<6x8x16xi16>
        %299 = arith.ori %c1439632664_i64, %c1540477454_i64 : i64
        %300 = arith.divui %c1716536641_i32, %c1910113794_i32 : i32
        %301 = index.casts %true : i1 to index
        %302 = math.exp2 %14 : tensor<12xf32>
        %303 = math.floor %3 : tensor<12x6xf32>
        %304 = arith.shrsi %c1811427327_i32, %c1910113794_i32 : i32
        %305 = tensor.empty() : tensor<6x8x16xf16>
        %306 = arith.remui %117, %true : i1
        %307 = arith.mulf %cst_0, %cst_2 : f16
        %308 = arith.maxui %c1_i64, %c1439632664_i64 : i64
        %309 = arith.shrui %c-31681_i16, %c-5864_i16 : i16
        memref.copy %alloc_17, %alloc_5 : memref<12xi32> to memref<12xi32>
        %310 = math.floor %cst : f32
        %311 = arith.ori %c1910113794_i32, %c1811427327_i32 : i32
        %312 = arith.shrui %c1439632664_i64, %c1439632664_i64 : i64
        %313 = math.fma %14, %14, %14 : tensor<12xf32>
        %314 = math.cos %10 : tensor<12xf16>
        %315 = math.log2 %cst : f32
      }
      %278 = vector.broadcast %c1_i64 : i64 to vector<12x6xi64>
      %279 = vector.broadcast %134 : i1 to vector<12x6xi1>
      %280 = vector.broadcast %c1910113794_i32 : i32 to vector<12x6xi32>
      %281 = vector.gather %146[%48] [%280], %279, %278 : memref<12xi64>, vector<12x6xi32>, vector<12x6xi1>, vector<12x6xi64> into vector<12x6xi64>
      %false = index.bool.constant false
      %282 = affine.for %arg0 = 0 to 14 iter_args(%arg1 = %87) -> (index) {
        affine.yield %149 : index
      }
      %283 = math.fpowi %150, %c1910113794_i32 : f16, i32
      %284 = math.log1p %10 : tensor<12xf16>
      %285 = math.ceil %236 : tensor<12x12xf16>
      %286 = index.maxu %87, %184
      scf.yield %150 : f16
    }
    %252 = vector.shuffle %102, %100 [2, 3, 5, 7, 9, 11] : vector<6x8x16xi32>, vector<6x8x16xi32>
    %253 = arith.divsi %c-5864_i16, %39 : i16
    %from_elements_32 = tensor.from_elements %c1716536641_i32, %c1811427327_i32, %c1716536641_i32, %c1716536641_i32, %c1368919089_i32, %c1716536641_i32, %c1368919089_i32, %c1811427327_i32, %c1811427327_i32, %c1716536641_i32, %c1368919089_i32, %c1368919089_i32 : tensor<12xi32>
    affine.store %134, %alloc_6[%c7] : memref<12xi1>
    %254 = vector.shuffle %57, %57 [2, 17, 19, 20, 21, 22] : vector<12x6xi16>, vector<12x6xi16>
    %255 = arith.remsi %c1731481554_i64, %c1731481554_i64 : i64
    %extracted_33 = tensor.extract %6[%c3, %c4, %c9] : tensor<6x8x16xi16>
    %alloc_34 = memref.alloc() : memref<6x16xi16>
    %256 = tensor.empty() : tensor<12x16xi16>
    %257 = linalg.matmul ins(%11, %alloc_34 : tensor<12x6xi16>, memref<6x16xi16>) outs(%256 : tensor<12x16xi16>) -> tensor<12x16xi16>
    %258 = arith.maxsi %extracted_33, %extracted_33 : i16
    %259 = arith.ceildivsi %c1811427327_i32, %c1910113794_i32 : i32
    %cst_35 = arith.constant 1.000000e+00 : f32
    %260 = vector.transfer_read %3[%84, %167], %cst_35 : tensor<12x6xf32>, vector<f32>
    %261 = arith.andi %c1716536641_i32, %c1368919089_i32 : i32
    %262 = math.atan2 %cst, %cst_1 : f32
    %263 = math.absf %cst : f32
    %264 = memref.atomic_rmw ori %c-5864_i16, %174[%c9] : (i16, memref<12xi16>) -> i16
    %265 = affine.load %alloc_5[%c7] : memref<12xi32>
    %266 = vector.matrix_multiply %200, %226 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<6xi1>, vector<8xi1>) -> vector<12xi1>
    %267 = vector.broadcast %c1731481554_i64 : i64 to vector<16xi64>
    %268 = vector.broadcast %117 : i1 to vector<16xi1>
    %269 = vector.maskedload %alloc_14[%c3, %c1, %c3], %268, %267 : memref<6x8x16xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
    %270 = vector.extract %229[0] : vector<6x8x16xf32>
    %271 = index.casts %c-22873_i16 : i16 to index
    %272 = tensor.empty() : tensor<12xi16>
    %mapped_36 = linalg.map ins(%174, %splat, %splat : memref<12xi16>, tensor<12xi16>, tensor<12xi16>) outs(%272 : tensor<12xi16>)
      (%in: i16, %in_38: i16, %in_39: i16) {
        %278 = vector.load %alloc_9[%c1, %c5, %c14] : memref<6x8x16xf16>, vector<12xf16>
        %cast = tensor.cast %5 : tensor<12x6xi32> to tensor<?x?xi32>
        %279 = math.absi %c1910113794_i32 : i32
        %280 = math.powf %cst_0, %251 : f16
        %281 = math.exp2 %cst_0 : f16
        %282 = scf.index_switch %48 -> f16 
        case 1 {
          %307 = math.copysign %cst_1, %cst : f32
          %308 = arith.andi %c1910113794_i32, %c1368919089_i32 : i32
          %309 = affine.max affine_map<(d0, d1) -> (d1, -((d0 ceildiv 4) floordiv 128))>(%c1, %242)
          %310 = tensor.empty(%217) : tensor<?xf16>
          %311 = index.maxu %c1, %c0
          memref.assume_alignment %alloc_10, 8 : memref<12xi16>
          %312 = index.maxu %50, %271
          %313 = arith.maxsi %c1439632664_i64, %c1731481554_i64 : i64
          %314 = math.cos %236 : tensor<12x12xf16>
          %315 = arith.shli %in_39, %in_39 : i16
          %316 = math.exp2 %cst_1 : f32
          %317 = vector.broadcast %cst_2 : f16 to vector<6xf16>
          %dest, %accumulated_value = vector.scan <mul>, %230, %317 {inclusive = true, reduction_dim = 0 : i64} : vector<12x6xf16>, vector<6xf16>
          %318 = tensor.empty(%c6) : tensor<?xi64>
          %319 = index.castu %true_23 : i1 to index
          %320 = vector.transpose %112, [2, 0, 1] : vector<6x8x16xi1> to vector<16x6x8xi1>
          %321 = vector.broadcast %in : i16 to vector<i16>
          %322 = vector.transfer_write %321, %256[%84, %c10] : vector<i16>, tensor<12x16xi16>
          scf.yield %cst_2 : f16
        }
        case 2 {
          %splat_41 = tensor.splat %true : tensor<12x6xi1>
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %307 = vector.transfer_read %splat_30[%90, %c11, %149], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x8x16xi32>, vector<6xi32>
          %308 = math.absf %3 : tensor<12x6xf32>
          %309 = vector.broadcast %cst_35 : f32 to vector<12xf32>
          %collapsed_42 = tensor.collapse_shape %5 [[0, 1]] : tensor<12x6xi32> into tensor<72xi32>
          %false = arith.constant false
          %false_43 = arith.constant false
          %310 = vector.transfer_read %12[%103], %false_43 : tensor<12xi1>, vector<i1>
          %311 = arith.andi %c1910113794_i32, %c1_i32 : i32
          %312 = vector.extract %93[3] : vector<12xi1>
          %313 = math.log2 %collapsed_29 : tensor<72xf32>
          %314 = math.fma %3, %3, %3 : tensor<12x6xf32>
          %315 = tensor.empty() : tensor<12xf32>
          %316 = memref.load %alloc_16[%c4] : memref<12xf32>
          %317 = vector.broadcast %117 : i1 to vector<12x6xi1>
          %318 = vector.broadcast %265 : i32 to vector<12x6xi32>
          %319 = vector.gather %alloc[%c5] [%318], %317, %317 : memref<12xi1>, vector<12x6xi32>, vector<12x6xi1>, vector<12x6xi1> into vector<12x6xi1>
          %extracted_44 = tensor.extract %from_elements[%c7] : tensor<12xi64>
          %collapsed_45 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<6x8x16xi64> into tensor<48x16xi64>
          %320 = math.floor %10 : tensor<12xf16>
          scf.yield %cst_2 : f16
        }
        case 3 {
          %307 = math.log2 %150 : f16
          %308 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 128, d0 floordiv 64)>(%103, %c5, %c11, %c10)
          %309 = index.divu %c0, %c0
          %extracted_41 = tensor.extract %8[%c3, %c3, %c3] : tensor<6x8x16xi64>
          %310 = math.ctlz %from_elements_32 : tensor<12xi32>
          %311 = math.rsqrt %14 : tensor<12xf32>
          %312 = math.exp2 %cst_2 : f16
          %313 = vector.insert %c-31681_i16, %227 [3] : i16 into vector<8xi16>
          %314 = bufferization.clone %alloc_14 : memref<6x8x16xi64> to memref<6x8x16xi64>
          %315 = vector.broadcast %cst_20 : f16 to vector<6xf16>
          %dest, %accumulated_value = vector.scan <maxf>, %230, %315 {inclusive = false, reduction_dim = 0 : i64} : vector<12x6xf16>, vector<6xf16>
          %316 = arith.maxui %c1540477454_i64, %c1731481554_i64 : i64
          %317 = vector.extract %100[1] : vector<6x8x16xi32>
          %318 = vector.broadcast %c-31681_i16 : i16 to vector<12xi16>
          %319 = math.cttz %true_23 : i1
          %320 = math.log2 %4 : tensor<6x8x16xf16>
          %321 = math.cos %cst : f32
          scf.yield %150 : f16
        }
        default {
          %307 = vector.broadcast %c1910113794_i32 : i32 to vector<8x16xi32>
          %308 = vector.insert %307, %102 [1] : vector<8x16xi32> into vector<6x8x16xi32>
          %309 = math.ipowi %splat_30, %99 : tensor<6x8x16xi32>
          %310 = math.ipowi %from_elements_32, %67 : tensor<12xi32>
          %311 = arith.mulf %cst_1, %cst : f32
          %312 = arith.addf %150, %150 : f16
          %313 = math.log %collapsed : tensor<72xf32>
          %alloc_41 = memref.alloc() : memref<6x16xf16>
          %314 = tensor.empty() : tensor<12x16xf16>
          %315 = linalg.matmul ins(%from_elements_26, %alloc_41 : tensor<12x6xf16>, memref<6x16xf16>) outs(%314 : tensor<12x16xf16>) -> tensor<12x16xf16>
          %316 = math.exp2 %cst_35 : f32
          %317 = vector.load %alloc_14[%c4, %c5, %c10] : memref<6x8x16xi64>, vector<12xi64>
          %318 = arith.ori %c1368919089_i32, %c1716536641_i32 : i32
          %319 = affine.max affine_map<(d0, d1, d2) -> (d2 - d0 + 16, -((d2 - d0) ceildiv 32))>(%167, %62, %77)
          memref.copy %alloc_19, %146 : memref<12xi64> to memref<12xi64>
          %320 = math.absf %4 : tensor<6x8x16xf16>
          %321 = index.ceildivs %90, %c8
          %322 = math.copysign %cst_0, %150 : f16
          %323 = vector.broadcast %cst_0 : f16 to vector<12x6xf16>
          scf.yield %cst_0 : f16
        }
        %283 = memref.load %alloc_18[%c7] : memref<8xi64>
        %284 = arith.andi %extracted, %117 : i1
        %285 = math.log1p %cst_0 : f16
        %286 = tensor.empty() : tensor<6x8xi32>
        %287 = tensor.empty() : tensor<12x8xi32>
        %288 = linalg.matmul ins(%2, %286 : tensor<12x6xi32>, tensor<6x8xi32>) outs(%287 : tensor<12x8xi32>) -> tensor<12x8xi32>
        memref.tensor_store %9, %alloc_19 : memref<12xi64>
        %289 = arith.maxf %cst, %cst_1 : f32
        %290 = math.round %3 : tensor<12x6xf32>
        %291 = arith.ceildivsi %39, %in_38 : i16
        %from_elements_40 = tensor.from_elements %extracted_33, %extracted_33, %c-22873_i16, %in_38, %in_39, %in_39, %c-31681_i16, %c-22873_i16, %c-12520_i16, %c-5864_i16, %c-31681_i16, %c-22873_i16 : tensor<12xi16>
        %292 = vector.broadcast %cst_2 : f16 to vector<12xf16>
        memref.assume_alignment %alloc_3, 4 : memref<6x8x16xf16>
        %293 = vector.matrix_multiply %201, %199 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi64>, vector<6xi64>) -> vector<1xi64>
        %expanded = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<6x8x16xi64> into tensor<6x8x16x1xi64>
        %294 = vector.gather %10[%165] [%213], %266, %292 : tensor<12xf16>, vector<12xi32>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %295 = affine.for %arg0 = 0 to 49 iter_args(%arg1 = %222) -> (index) {
          affine.yield %c1 : index
        }
        %296 = math.copysign %10, %10 : tensor<12xf16>
        %297 = vector.extract %85[4] : vector<6xi16>
        %298 = arith.floordivsi %c1910113794_i32, %c1811427327_i32 : i32
        %299 = math.powf %14, %14 : tensor<12xf32>
        %300 = vector.broadcast %cst_2 : f16 to vector<6x8x16xf16>
        %301 = vector.gather %141[%164] [%102], %101, %300 : memref<12xf16>, vector<6x8x16xi32>, vector<6x8x16xi1>, vector<6x8x16xf16> into vector<6x8x16xf16>
        %302 = index.maxu %242, %183
        %303 = vector.maskedload %alloc_8[%c2, %c6, %c11], %268, %268 : memref<6x8x16xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
        %304 = tensor.empty() : tensor<6x8x16xi16>
        memref.assume_alignment %245, 16 : memref<12xi32>
        %305 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 16 - (d0 + 16), d0 floordiv 64 - d3 mod 4, d1 mod 16)>(%c12, %c13, %c14, %45)
        %306 = index.sub %180, %164
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %273 = tensor.empty() : tensor<12xi16>
    %274 = linalg.copy ins(%0 : tensor<12xi16>) outs(%273 : tensor<12xi16>) -> tensor<12xi16>
    %275 = tensor.empty() : tensor<12xi16>
    %transposed_37 = linalg.transpose ins(%174 : memref<12xi16>) outs(%275 : tensor<12xi16>) permutation = [0] 
    %276 = tensor.empty() : tensor<8x16xi32>
    %reduced = linalg.reduce ins(%91 : memref<6x8x16xi32>) outs(%276 : tensor<8x16xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %278 = arith.maxui %117, %134 : i1
        %279 = math.cttz %275 : tensor<12xi16>
        %280 = math.log %251 : f16
        %281 = vector.splat %cst_2 : vector<6x8x16xf16>
        %282 = vector.extract %201[4] : vector<6xi64>
        %283 = bufferization.clone %alloc_7 : memref<12x6xf32> to memref<12x6xf32>
        %284 = arith.shli %in, %c1716536641_i32 : i32
        %285 = arith.minui %134, %extracted : i1
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg0) = (%222) to (%c15) step (%c12) {
      %278 = arith.mulf %150, %150 : f16
      memref.assume_alignment %alloc_6, 8 : memref<12xi1>
      %279 = affine.min affine_map<(d0, d1) -> (d0 * -4, d0, d0 - 32)>(%271, %62)
      %280 = arith.divui %c1_i64, %c1439632664_i64 : i64
      %281 = index.ceildivs %41, %75
      %282 = arith.maxsi %c-12520_i16, %39 : i16
      %283 = bufferization.to_memref %transposed_37 : memref<12xi16>
      %284 = math.fma %extracted_21, %cst_35, %extracted_21 : f32
      %285 = arith.cmpf olt, %251, %cst_0 : f16
      %286 = index.mul %77, %77
      %287 = math.absf %150 : f16
      %288 = vector.broadcast %c3 : index to vector<12xindex>
      vector.scatter %alloc_17[%c5] [%288], %250, %213 : memref<12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
      %289 = math.fma %236, %236, %236 : tensor<12x12xf16>
      %extracted_38 = tensor.extract %13[%c2, %c4, %c1] : tensor<6x8x16xi64>
      %290 = math.log2 %cst_20 : f16
      %291 = vector.transpose %199, [0] : vector<6xi64> to vector<6xi64>
      scf.yield
    }
    %277 = affine.vector_load %alloc_6[%184] : memref<12xi1>, vector<12xi1>
    affine.vector_store %277, %alloc_8[%c7, %242, %103] : memref<6x8x16xi1>, vector<12xi1>
    vector.print %19 : vector<12xi16>
    vector.print %57 : vector<12x6xi16>
    vector.print %69 : vector<f16>
    vector.print %71 : vector<6xi16>
    vector.print %74 : vector<i16>
    vector.print %85 : vector<6xi16>
    vector.print %93 : vector<12xi1>
    vector.print %94 : vector<12xi32>
    vector.print %95 : vector<12xi16>
    vector.print %100 : vector<6x8x16xi32>
    vector.print %101 : vector<6x8x16xi1>
    vector.print %102 : vector<6x8x16xi32>
    vector.print %112 : vector<6x8x16xi1>
    vector.print %145 : vector<12xi16>
    vector.print %171 : vector<i64>
    vector.print %186 : vector<12xf32>
    vector.print %187 : vector<12xf32>
    vector.print %194 : vector<i64>
    vector.print %197 : vector<6x12xi64>
    vector.print %199 : vector<6xi64>
    vector.print %200 : vector<6xi1>
    vector.print %201 : vector<6xi64>
    vector.print %213 : vector<12xi32>
    vector.print %225 : vector<8xi16>
    vector.print %226 : vector<8xi1>
    vector.print %227 : vector<8xi16>
    vector.print %229 : vector<6x8x16xf32>
    vector.print %230 : vector<12x6xf16>
    vector.print %240 : vector<6x8x16xi16>
    vector.print %250 : vector<12xi1>
    vector.print %266 : vector<12xi1>
    vector.print %267 : vector<16xi64>
    vector.print %268 : vector<16xi1>
    vector.print %269 : vector<16xi64>
    vector.print %270 : vector<8x16xf32>
    vector.print %277 : vector<12xi1>
    vector.print %c-31681_i16 : i16
    vector.print %c1439632664_i64 : i64
    vector.print %c1811427327_i32 : i32
    vector.print %c1731481554_i64 : i64
    vector.print %cst : f32
    vector.print %c-12520_i16 : i16
    vector.print %c1910113794_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1368919089_i32 : i32
    vector.print %c1716536641_i32 : i32
    vector.print %c-5864_i16 : i16
    vector.print %cst_1 : f32
    vector.print %true : i1
    vector.print %cst_2 : f16
    vector.print %c-22873_i16 : i16
    vector.print %c1540477454_i64 : i64
    vector.print %cst_20 : f16
    vector.print %39 : i16
    vector.print %extracted : i1
    vector.print %extracted_21 : f32
    vector.print %c1_i64 : i64
    vector.print %true_23 : i1
    vector.print %117 : i1
    vector.print %134 : i1
    vector.print %150 : f16
    vector.print %251 : f16
    vector.print %extracted_33 : i16
    vector.print %cst_35 : f32
    vector.print %265 : i32
    return %alloc_14 : memref<6x8x16xi64>
  }
}
