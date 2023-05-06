module {
  func.func nested @func1(%arg0: memref<8x11xi1>) -> memref<8x11xi16> {
    %cst = arith.constant 1.68461888E+9 : f32
    %false = arith.constant false
    %c32383_i16 = arith.constant 32383 : i16
    %c154354586_i32 = arith.constant 154354586 : i32
    %c1911719112_i64 = arith.constant 1911719112 : i64
    %true = arith.constant true
    %c486122104_i32 = arith.constant 486122104 : i32
    %c-31560_i16 = arith.constant -31560 : i16
    %cst_0 = arith.constant 1.74613645E+9 : f32
    %c1939014484_i64 = arith.constant 1939014484 : i64
    %cst_1 = arith.constant 0x4D2A3867 : f32
    %cst_2 = arith.constant 2.336000e+04 : f16
    %c31224_i16 = arith.constant 31224 : i16
    %c1192060489_i64 = arith.constant 1192060489 : i64
    %cst_3 = arith.constant 5.651200e+04 : f16
    %cst_4 = arith.constant 1.64039693E+9 : f32
    %0 = tensor.empty() : tensor<8x11xi64>
    %1 = tensor.empty() : tensor<8x11xf32>
    %2 = tensor.empty() : tensor<8x11xi16>
    %3 = tensor.empty() : tensor<8x11xi1>
    %4 = tensor.empty() : tensor<10xi1>
    %5 = tensor.empty() : tensor<8x11xf32>
    %6 = tensor.empty() : tensor<10xi32>
    %7 = tensor.empty() : tensor<8x11xi32>
    %8 = tensor.empty() : tensor<8x11xf32>
    %9 = tensor.empty() : tensor<8x11xf32>
    %10 = tensor.empty() : tensor<10xi1>
    %11 = tensor.empty() : tensor<8x11xi64>
    %12 = tensor.empty() : tensor<8x11xi64>
    %13 = tensor.empty() : tensor<8x11xi1>
    %14 = tensor.empty() : tensor<10xi16>
    %15 = tensor.empty() : tensor<8x11xi1>
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
    %alloc = memref.alloc() : memref<10xi32>
    %alloc_5 = memref.alloc() : memref<10xi16>
    %alloc_6 = memref.alloc() : memref<10xf32>
    %alloc_7 = memref.alloc() : memref<8x11xi32>
    %alloc_8 = memref.alloc() : memref<10xi32>
    %alloc_9 = memref.alloc() : memref<8x11xf32>
    %alloc_10 = memref.alloc() : memref<10xi32>
    %alloc_11 = memref.alloc() : memref<10xi32>
    %alloc_12 = memref.alloc() : memref<10xf32>
    %alloc_13 = memref.alloc() : memref<8x8x8xi16>
    %alloc_14 = memref.alloc() : memref<10xi1>
    %alloc_15 = memref.alloc() : memref<8x11xi64>
    %alloc_16 = memref.alloc() : memref<10xf32>
    %alloc_17 = memref.alloc() : memref<10xf16>
    %alloc_18 = memref.alloc() : memref<8x8x8xi1>
    %alloc_19 = memref.alloc() : memref<8x11xf32>
    %16 = tensor.empty() : tensor<10xi32>
    %17 = linalg.copy ins(%6 : tensor<10xi32>) outs(%16 : tensor<10xi32>) -> tensor<10xi32>
    %18 = tensor.empty() : tensor<10xi32>
    %transposed = linalg.transpose ins(%16 : tensor<10xi32>) outs(%18 : tensor<10xi32>) permutation = [0] 
    %19 = tensor.empty() : tensor<8xf32>
    %reduced = linalg.reduce ins(%9 : tensor<8x11xf32>) outs(%19 : tensor<8xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %generated_44 = tensor.generate %c14 {
        ^bb0(%arg1: index, %arg2: index):
          %250 = math.log2 %9 : tensor<8x11xf32>
          %251 = vector.broadcast %c31224_i16 : i16 to vector<8x8xi16>
          %252 = vector.broadcast %c-31560_i16 : i16 to vector<8xi16>
          %dest_48, %accumulated_value_49 = vector.scan <maxui>, %251, %252 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xi16>, vector<8xi16>
          %253 = arith.shrui %c486122104_i32, %c154354586_i32 : i32
          %254 = arith.floordivsi %false, %false : i1
          tensor.yield %c154354586_i32 : i32
        } : tensor<?x11xi32>
        %collapsed_45 = tensor.collapse_shape %12 [[0, 1]] : tensor<8x11xi64> into tensor<88xi64>
        %245 = index.floordivs %c5, %c6
        %246 = index.maxs %c9, %c14
        %247 = math.log1p %5 : tensor<8x11xf32>
        %248 = math.tan %cst : f32
        %249 = arith.ori %c154354586_i32, %c486122104_i32 : i32
        %rank_46 = tensor.rank %10 : tensor<10xi1>
        %cst_47 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_47 : f32
      }
    scf.parallel (%arg1) = (%c11) to (%c13) step (%c5) {
      %245 = memref.load %alloc_13[%c5, %c1, %c7] : memref<8x8x8xi16>
      %246 = index.divs %c0, %c10
      %247 = memref.load %alloc_10[%c4] : memref<10xi32>
      %248 = arith.divui %c1192060489_i64, %c1939014484_i64 : i64
      %249 = math.powf %9, %8 : tensor<8x11xf32>
      %250 = math.copysign %5, %1 : tensor<8x11xf32>
      %251 = arith.shrui %c154354586_i32, %c154354586_i32 : i32
      %252 = arith.divsi %c1911719112_i64, %c1939014484_i64 : i64
      %253 = math.exp2 %19 : tensor<8xf32>
      %254 = arith.shrui %c154354586_i32, %c154354586_i32 : i32
      %255 = memref.load %alloc_12[%c4] : memref<10xf32>
      %256 = math.ctpop %10 : tensor<10xi1>
      %257 = vector.broadcast %c1911719112_i64 : i64 to vector<8xi64>
      %258 = vector.matrix_multiply %257, %257 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %259 = math.ctlz %16 : tensor<10xi32>
      %260 = vector.broadcast %c8 : index to vector<11xindex>
      %261 = vector.broadcast %true : i1 to vector<11xi1>
      %262 = vector.broadcast %c-31560_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_13[%c2, %c0, %c0] [%260], %261, %262 : memref<8x8x8xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %263 = vector.splat %cst_4 : vector<8x11xf32>
      scf.yield
    }
    %20 = affine.vector_load %alloc_7[%c10, %c3] : memref<8x11xi32>, vector<11xi32>
    affine.vector_store %20, %alloc_7[%c10, %c2] : memref<8x11xi32>, vector<11xi32>
    %alloc_20 = memref.alloc() : memref<10xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc, %alloc_20 : memref<10xi32>, memref<10xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = math.log10 %9 : tensor<8x11xf32>
    memref.assume_alignment %alloc_9, 4 : memref<8x11xf32>
    %24 = arith.shli %c1939014484_i64, %c1939014484_i64 : i64
    %25 = index.maxu %c7, %c1
    %extracted = tensor.extract %14[%c5] : tensor<10xi16>
    %26 = arith.subi %c1911719112_i64, %c1939014484_i64 : i64
    %27 = math.atan2 %8, %8 : tensor<8x11xf32>
    %28 = index.sub %c1, %c10
    %29 = arith.ceildivsi %c1939014484_i64, %c1911719112_i64 : i64
    %extracted_21 = tensor.extract %13[%c0, %c3] : tensor<8x11xi1>
    %30 = math.ceil %cst_1 : f32
    %31 = math.atan2 %8, %9 : tensor<8x11xf32>
    %32 = memref.load %alloc_9[%c2, %c2] : memref<8x11xf32>
    %33 = math.cos %9 : tensor<8x11xf32>
    %extracted_22 = tensor.extract %0[%c6, %c1] : tensor<8x11xi64>
    %34 = math.log2 %9 : tensor<8x11xf32>
    %35 = arith.remsi %c32383_i16, %c31224_i16 : i16
    %36 = arith.ceildivsi %extracted, %c-31560_i16 : i16
    %splat = tensor.splat %extracted : tensor<8x11xi16>
    %extracted_23 = tensor.extract %7[%c7, %c1] : tensor<8x11xi32>
    %37 = affine.max affine_map<(d0, d1, d2) -> ((-(d1 - (d1 + 64))) mod 64, 0, d0 * 128 - (d1 - (d1 + 64)), d0)>(%c15, %c8, %c15)
    %38 = math.fma %1, %5, %8 : tensor<8x11xf32>
    %39 = index.add %c12, %c9
    %true_24 = index.bool.constant true
    %40 = bufferization.to_tensor %alloc_16 : memref<10xf32>
    %41 = arith.negf %cst_0 : f32
    %42 = memref.realloc %alloc_11 : memref<10xi32> to memref<8xi32>
    %43 = index.ceildivu %28, %c15
    bufferization.dealloc_tensor %15 : tensor<8x11xi1>
    memref.copy %alloc, %alloc_10 : memref<10xi32> to memref<10xi32>
    %44 = vector.splat %cst_0 : vector<8x11xf32>
    %false_25 = index.bool.constant false
    %45 = vector.extract %20[10] : vector<11xi32>
    %46 = tensor.empty() : tensor<8x11xi16>
    %mapped = linalg.map ins(%splat, %2, %splat : tensor<8x11xi16>, tensor<8x11xi16>, tensor<8x11xi16>) outs(%46 : tensor<8x11xi16>)
      (%in: i16, %in_44: i16, %in_45: i16) {
        %245 = index.ceildivs %c5, %43
        %246 = index.divs %c5, %245
        %247 = math.cttz %10 : tensor<10xi1>
        %248 = vector.multi_reduction <maxui>, %20, %c154354586_i32 [0] : vector<11xi32> to i32
        %249 = vector.broadcast %c486122104_i32 : i32 to vector<11x8xi32>
        %dest_46, %accumulated_value_47 = vector.scan <maxui>, %249, %20 {inclusive = true, reduction_dim = 1 : i64} : vector<11x8xi32>, vector<11xi32>
        memref.copy %alloc_19, %alloc_9 : memref<8x11xf32> to memref<8x11xf32>
        affine.store %248, %alloc_10[%c2] : memref<10xi32>
        %250 = math.log10 %cst_4 : f32
        %251 = arith.shrui %c154354586_i32, %c154354586_i32 : i32
        %252 = math.tan %9 : tensor<8x11xf32>
        %253 = arith.remf %cst_3, %cst_3 : f16
        %254 = vector.matrix_multiply %20, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %255 = arith.cmpf one, %cst_1, %cst : f32
        %256 = arith.muli %248, %c154354586_i32 : i32
        %257 = tensor.empty() : tensor<8x8x8xi64>
        %258 = tensor.empty() : tensor<8x8xi64>
        %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %257 : tensor<8x8xi64>, tensor<8x8x8xi64>) outs(%257 : tensor<8x8x8xi64>) {
        ^bb0(%in_49: i64, %in_50: i64, %out: i64):
          %275 = affine.load %alloc_10[%c8] : memref<10xi32>
          memref.tensor_store %12, %alloc_15 : memref<8x11xi64>
          %276 = arith.maxui %in_50, %c1911719112_i64 : i64
          %277 = arith.andi %275, %extracted_23 : i32
          %278 = index.floordivs %245, %c1
          %279 = math.tanh %cst : f32
          %280 = vector.create_mask %278 : vector<10xi1>
          %281 = arith.negf %cst_0 : f32
          %false_51 = index.bool.constant false
          %282 = vector.broadcast %c486122104_i32 : i32 to vector<8xi32>
          %283 = vector.broadcast %true_24 : i1 to vector<8xi1>
          %284 = vector.maskedload %alloc_10[%c3], %283, %282 : memref<10xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
          %285 = index.mul %c5, %c6
          %286 = arith.shrui %false, %true_24 : i1
          %287 = arith.maxui %extracted_21, %false_51 : i1
          %288 = arith.minsi %c-31560_i16, %c31224_i16 : i16
          %splat_52 = tensor.splat %c1911719112_i64 : tensor<8x11xi64>
          %289 = index.casts %extracted_22 : i64 to index
          %290 = vector.shuffle %254, %254 [0] : vector<1xi32>, vector<1xi32>
          %291 = math.cos %19 : tensor<8xf32>
          %splat_53 = tensor.splat %275 : tensor<10xi32>
          %292 = tensor.empty(%245, %c3) : tensor<?x?xf32>
          %293 = arith.subi %in, %c-31560_i16 : i16
          %294 = math.ipowi %splat_53, %18 : tensor<10xi32>
          %alloc_54 = memref.alloc() : memref<11x8xi64>
          %295 = tensor.empty() : tensor<8x8xi64>
          %296 = linalg.matmul ins(%splat_52, %alloc_54 : tensor<8x11xi64>, memref<11x8xi64>) outs(%295 : tensor<8x8xi64>) -> tensor<8x8xi64>
          %297 = index.mul %c8, %43
          %298 = arith.shrsi %248, %c154354586_i32 : i32
          %299 = math.cttz %splat : tensor<8x11xi16>
          %300 = vector.flat_transpose %283 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
          %301 = arith.remf %cst_4, %cst : f32
          %302 = memref.realloc %alloc_17 : memref<10xf16> to memref<11xf16>
          %303 = vector.multi_reduction <mul>, %280, %false_51 [0] : vector<10xi1> to i1
          %304 = vector.broadcast %cst_1 : f32 to vector<f32>
          vector.transfer_write %304, %alloc_19[%43, %c0] : vector<f32>, memref<8x11xf32>
          %305 = math.exp %8 : tensor<8x11xf32>
          linalg.yield %in_49 : i64
        } -> tensor<8x8x8xi64>
        %260 = affine.load %alloc_10[%c15] : memref<10xi32>
        %c-2174_i16 = arith.constant -2174 : i16
        %rank_48 = tensor.rank %4 : tensor<10xi1>
        %261 = arith.addf %cst_4, %cst_4 : f32
        %262 = arith.maxui %false, %extracted_21 : i1
        %263 = vector.splat %c10 : vector<10xindex>
        %264 = index.sub %c8, %c9
        %265 = index.divu %c8, %43
        %266 = scf.while (%arg1 = %248) : (i32) -> i32 {
          %275 = vector.broadcast %cst : f32 to vector<8x11xf32>
          %276 = math.exp %reduced : tensor<8xf32>
          %splat_49 = tensor.splat %true : tensor<10xi1>
          %277 = vector.shuffle %20, %20 [0, 1, 2, 3, 4, 5, 7, 10, 13, 15, 16, 18, 19, 21] : vector<11xi32>, vector<11xi32>
          %278 = vector.splat %246 : vector<10xindex>
          %279 = index.mul %37, %265
          %280 = vector.broadcast %cst_4 : f32 to vector<8x8x8xf32>
          %281 = vector.fma %280, %280, %280 : vector<8x8x8xf32>
          %282 = tensor.empty() : tensor<11x8xi1>
          %283 = tensor.empty() : tensor<8x8xi1>
          %284 = linalg.matmul ins(%3, %282 : tensor<8x11xi1>, tensor<11x8xi1>) outs(%283 : tensor<8x8xi1>) -> tensor<8x8xi1>
          scf.condition(%false) %extracted_23 : i32
        } do {
        ^bb0(%arg1: i32):
          %collapsed_49 = tensor.collapse_shape %9 [[0, 1]] : tensor<8x11xf32> into tensor<88xf32>
          %275 = arith.addf %cst_0, %cst : f32
          affine.store %false, %alloc_14[%c7] : memref<10xi1>
          %276 = arith.subi %extracted_23, %248 : i32
          %277 = bufferization.clone %alloc_8 : memref<10xi32> to memref<10xi32>
          %278 = math.log1p %9 : tensor<8x11xf32>
          %279 = vector.create_mask %c15 : vector<10xi1>
          %280 = arith.remf %cst_0, %cst : f32
          bufferization.dealloc_tensor %1 : tensor<8x11xf32>
          %281 = arith.maxsi %c-31560_i16, %c32383_i16 : i16
          %282 = math.rsqrt %1 : tensor<8x11xf32>
          %283 = math.cttz %c486122104_i32 : i32
          %284 = arith.remf %cst_2, %cst_2 : f16
          %285 = math.exp2 %40 : tensor<10xf32>
          %286 = index.add %265, %c10
          %287 = arith.maxui %extracted, %c-31560_i16 : i16
          scf.yield %extracted_23 : i32
        }
        %267 = arith.negf %cst_2 : f16
        %268 = math.powf %cst_4, %cst : f32
        %269 = arith.divsi %c31224_i16, %c31224_i16 : i16
        %270 = index.mul %c6, %c12
        %271 = math.ctpop %in_45 : i16
        %272 = arith.remf %cst_3, %cst_2 : f16
        %273 = math.sqrt %1 : tensor<8x11xf32>
        %274 = arith.andi %c-31560_i16, %c32383_i16 : i16
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %47 = math.log1p %cst_0 : f32
    %48 = math.ipowi %3, %15 : tensor<8x11xi1>
    %49 = math.floor %40 : tensor<10xf32>
    %50 = math.floor %9 : tensor<8x11xf32>
    %51 = arith.negf %cst_3 : f16
    %52 = arith.addf %cst_3, %cst_3 : f16
    affine.store %true, %alloc_14[%c5] : memref<10xi1>
    %rank = tensor.rank %10 : tensor<10xi1>
    %generated = tensor.generate %c1, %c4, %28 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %245 = math.floor %40 : tensor<10xf32>
      %246 = vector.reduction <maxsi>, %20 : vector<11xi32> into i32
      %247 = bufferization.to_tensor %alloc_18 : memref<8x8x8xi1>
      %248 = arith.remui %c1192060489_i64, %c1192060489_i64 : i64
      tensor.yield %c1911719112_i64 : i64
    } : tensor<?x?x?xi64>
    %53 = index.mul %c4, %c9
    %54 = math.powf %9, %9 : tensor<8x11xf32>
    %55 = arith.ceildivsi %c1911719112_i64, %extracted_22 : i64
    %56 = math.ceil %1 : tensor<8x11xf32>
    %57 = tensor.empty() : tensor<10xi1>
    %58 = memref.load %alloc[%c9] : memref<10xi32>
    %59 = arith.subi %extracted_23, %c154354586_i32 : i32
    %60 = tensor.empty() : tensor<8x11xi64>
    %mapped_26 = linalg.map ins(%alloc_15 : memref<8x11xi64>) outs(%60 : tensor<8x11xi64>)
      (%in: i64) {
        %245 = arith.andi %in, %c1911719112_i64 : i64
        %246 = math.log10 %cst_0 : f32
        %247 = vector.broadcast %true : i1 to vector<8x11x8xi1>
        %248 = vector.broadcast %false : i1 to vector<8x11xi1>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %247, %248 {inclusive = true, reduction_dim = 2 : i64} : vector<8x11x8xi1>, vector<8x11xi1>
        %splat_46 = tensor.splat %cst_2 : tensor<8x11xf16>
        %249 = tensor.empty() : tensor<8x8x8xi32>
        %250 = arith.remf %cst_4, %cst_4 : f32
        %251 = math.roundeven %1 : tensor<8x11xf32>
        %252 = vector.multi_reduction <maxsi>, %20, %extracted_23 [0] : vector<11xi32> to i32
        %253 = arith.shrui %c1192060489_i64, %c1911719112_i64 : i64
        %254 = vector.reduction <maxui>, %20 : vector<11xi32> into i32
        %255 = vector.broadcast %252 : i32 to vector<8xi32>
        %256 = vector.broadcast %true_24 : i1 to vector<8xi1>
        %257 = vector.maskedload %alloc_11[%c6], %256, %255 : memref<10xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %258 = vector.flat_transpose %255 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
        %259 = arith.subi %false_25, %false : i1
        %260 = bufferization.to_tensor %alloc_16 : memref<10xf32>
        %261 = index.divu %c6, %c13
        %false_47 = index.bool.constant false
        %262 = bufferization.to_tensor %alloc_12 : memref<10xf32>
        %263 = tensor.empty() : tensor<8x11xi32>
        %264 = arith.minf %cst_0, %cst_1 : f32
        %265 = arith.shli %false_25, %true : i1
        affine.store %c31224_i16, %alloc_13[%c4, %c1, %c7] : memref<8x8x8xi16>
        %266 = scf.while (%arg1 = %c1192060489_i64) : (i64) -> i64 {
          %279 = memref.realloc %alloc_8 : memref<10xi32> to memref<8xi32>
          memref.copy %alloc_16, %alloc_6 : memref<10xf32> to memref<10xf32>
          %280 = math.round %8 : tensor<8x11xf32>
          %281 = bufferization.clone %alloc_15 : memref<8x11xi64> to memref<8x11xi64>
          %alloc_50 = memref.alloc() : memref<8x11xf16>
          memref.tensor_store %splat_46, %alloc_50 : memref<8x11xf16>
          %282 = arith.divsi %false, %false_47 : i1
          %extracted_51 = tensor.extract %7[%c6, %c1] : tensor<8x11xi32>
          %283 = vector.extract %20[7] : vector<11xi32>
          scf.condition(%extracted_21) %c1911719112_i64 : i64
        } do {
        ^bb0(%arg1: i64):
          memref.copy %alloc, %alloc_10 : memref<10xi32> to memref<10xi32>
          %279 = math.rsqrt %cst : f32
          %280 = math.log %262 : tensor<10xf32>
          %extracted_50 = tensor.extract %15[%c5, %c10] : tensor<8x11xi1>
          %281 = arith.ceildivsi %false_25, %true : i1
          %282 = arith.addf %cst_1, %cst : f32
          %283 = vector.reduction <xor>, %258 : vector<8xi32> into i32
          %284 = arith.remf %cst_3, %cst_3 : f16
          %285 = memref.realloc %alloc_17 : memref<10xf16> to memref<8xf16>
          %286 = vector.splat %false : vector<8x8x8xi1>
          %287 = index.sub %rank, %53
          %288 = vector.broadcast %c31224_i16 : i16 to vector<11xi16>
          %289 = vector.transfer_write %288, %2[%c15, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<8x11xi16>
          %290 = arith.remf %cst_1, %cst_4 : f32
          %291 = arith.remf %cst_1, %cst_4 : f32
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %256, %256, %extracted_21 : vector<8xi1>, vector<8xi1> into i1
          %293 = vector.reduction <xor>, %288 : vector<11xi16> into i16
          scf.yield %c1939014484_i64 : i64
        }
        %267 = arith.ceildivsi %c-31560_i16, %c32383_i16 : i16
        %268 = vector.broadcast %false_25 : i1 to vector<11x11xi1>
        %269 = vector.broadcast %false_47 : i1 to vector<11xi1>
        %dest_48, %accumulated_value_49 = vector.scan <minsi>, %268, %269 {inclusive = true, reduction_dim = 0 : i64} : vector<11x11xi1>, vector<11xi1>
        %270 = math.ipowi %7, %263 : tensor<8x11xi32>
        %271 = arith.maxui %false, %false : i1
        %272 = arith.divui %in, %extracted_22 : i64
        %273 = vector.broadcast %cst_0 : f32 to vector<8xf32>
        %274 = vector.maskedload %alloc_6[%c5], %256, %273 : memref<10xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %275 = bufferization.clone %alloc_16 : memref<10xf32> to memref<10xf32>
        %276 = math.roundeven %40 : tensor<10xf32>
        %277 = arith.maxsi %c1192060489_i64, %in : i64
        %278 = vector.insert %252, %258 [4] : i32 into vector<8xi32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %61 = vector.extract %20[9] : vector<11xi32>
    %62 = bufferization.clone %alloc : memref<10xi32> to memref<10xi32>
    %63 = arith.divui %extracted_23, %extracted_23 : i32
    scf.if %false {
      %245 = index.sub %c10, %c12
      %246 = affine.min affine_map<(d0, d1) -> (d0 + 32, (d1 * 2) ceildiv 8 - (d0 + 32))>(%c9, %c7)
      memref.tensor_store %10, %alloc_14 : memref<10xi1>
      %247 = arith.addf %cst, %cst : f32
      %248 = arith.minui %extracted_23, %c154354586_i32 : i32
      %249 = index.divu %37, %c12
      %250 = tensor.empty() : tensor<8x11xi64>
      %mapped_44 = linalg.map ins(%11, %0 : tensor<8x11xi64>, tensor<8x11xi64>) outs(%250 : tensor<8x11xi64>)
        (%in: i64, %in_45: i64) {
          memref.tensor_store %5, %alloc_19 : memref<8x11xf32>
          %252 = math.expm1 %40 : tensor<10xf32>
          %253 = arith.maxui %c-31560_i16, %c31224_i16 : i16
          %254 = arith.remui %c486122104_i32, %c486122104_i32 : i32
          %255 = vector.broadcast %false_25 : i1 to vector<10xi1>
          %256 = vector.splat %c14 : vector<10xindex>
          %257 = arith.ceildivsi %extracted, %c-31560_i16 : i16
          %258 = math.atan2 %40, %40 : tensor<10xf32>
          %splat_46 = tensor.splat %cst_0 : tensor<8x11xf32>
          %cst_47 = arith.constant 0x4E507603 : f32
          %259 = arith.ceildivsi %extracted_22, %c1939014484_i64 : i64
          %260 = index.divu %28, %245
          %false_48 = index.bool.constant false
          %261 = arith.subi %true, %false_48 : i1
          %262 = index.maxu %c0, %c14
          %263 = math.cttz %c486122104_i32 : i32
          %264 = vector.insertelement %c154354586_i32, %20[%c0 : index] : vector<11xi32>
          %265 = memref.atomic_rmw mins %c154354586_i32, %alloc_10[%c7] : (i32, memref<10xi32>) -> i32
          %266 = arith.andi %in_45, %c1939014484_i64 : i64
          %267 = bufferization.clone %alloc_9 : memref<8x11xf32> to memref<8x11xf32>
          %cst_49 = arith.constant 1.32661722E+9 : f32
          vector.print %255 : vector<10xi1>
          %268 = index.castu %53 : index to i32
          %269 = math.powf %8, %9 : tensor<8x11xf32>
          %270 = math.tan %cst_4 : f32
          %271 = math.tanh %splat_46 : tensor<8x11xf32>
          %272 = math.roundeven %cst_0 : f32
          %273 = arith.muli %extracted, %c32383_i16 : i16
          %alloc_50 = memref.alloc() : memref<11x11xi16>
          %274 = tensor.empty() : tensor<8x11xi16>
          %275 = linalg.matmul ins(%2, %alloc_50 : tensor<8x11xi16>, memref<11x11xi16>) outs(%274 : tensor<8x11xi16>) -> tensor<8x11xi16>
          %276 = vector.bitcast %20 : vector<11xi32> to vector<11xi32>
          %277 = vector.broadcast %cst_1 : f32 to vector<8x11xf32>
          %278 = vector.fma %277, %277, %277 : vector<8x11xf32>
          %279 = math.roundeven %cst_1 : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %251 = math.rsqrt %5 : tensor<8x11xf32>
    }
    %64 = index.add %c13, %c6
    %65 = math.log2 %cst_3 : f16
    %66 = memref.realloc %alloc : memref<10xi32> to memref<10xi32>
    %67 = math.tan %8 : tensor<8x11xf32>
    %68 = arith.shrsi %c486122104_i32, %extracted_23 : i32
    %69 = math.floor %cst : f32
    %70 = arith.maxsi %extracted_22, %c1939014484_i64 : i64
    %71 = arith.divsi %false_25, %extracted_21 : i1
    %72 = arith.remf %cst_4, %cst_4 : f32
    %73 = vector.bitcast %20 : vector<11xi32> to vector<11xi32>
    bufferization.dealloc_tensor %15 : tensor<8x11xi1>
    %cast = tensor.cast %19 : tensor<8xf32> to tensor<?xf32>
    %74 = math.log10 %5 : tensor<8x11xf32>
    memref.assume_alignment %alloc_13, 4 : memref<8x8x8xi16>
    %75 = index.casts %extracted_23 : i32 to index
    %76 = vector.extract %20[0] : vector<11xi32>
    %77 = math.log2 %cst_2 : f16
    affine.store %cst_4, %alloc_6[%c0] : memref<10xf32>
    %78 = arith.addf %cst_1, %cst_0 : f32
    %79 = arith.shrsi %c1939014484_i64, %c1192060489_i64 : i64
    %80 = arith.addi %extracted_22, %c1939014484_i64 : i64
    %81 = math.fma %40, %40, %40 : tensor<10xf32>
    %82 = math.powf %cst_4, %cst_1 : f32
    %83 = arith.minui %true_24, %false : i1
    %84 = math.powf %cst_2, %cst_3 : f16
    %85 = arith.andi %c1911719112_i64, %c1939014484_i64 : i64
    %86 = math.ctlz %c1939014484_i64 : i64
    %87 = math.log2 %8 : tensor<8x11xf32>
    %88 = math.ctpop %3 : tensor<8x11xi1>
    %89 = math.copysign %1, %8 : tensor<8x11xf32>
    %90 = vector.transpose %20, [0] : vector<11xi32> to vector<11xi32>
    %91 = math.log10 %cst_2 : f16
    %92 = vector.create_mask %c7, %c4 : vector<8x11xi1>
    %93 = math.log %9 : tensor<8x11xf32>
    %94 = math.expm1 %5 : tensor<8x11xf32>
    %95 = bufferization.to_tensor %alloc_11 : memref<10xi32>
    %96 = tensor.empty() : tensor<11x11xi1>
    %97 = tensor.empty() : tensor<8x11xi1>
    %98 = linalg.matmul ins(%15, %96 : tensor<8x11xi1>, tensor<11x11xi1>) outs(%97 : tensor<8x11xi1>) -> tensor<8x11xi1>
    %99 = math.tanh %cst_3 : f16
    %100 = arith.muli %c1192060489_i64, %c1911719112_i64 : i64
    %101 = math.rsqrt %19 : tensor<8xf32>
    %102 = math.atan2 %8, %8 : tensor<8x11xf32>
    memref.tensor_store %6, %alloc_8 : memref<10xi32>
    %103 = arith.remf %cst_2, %cst_3 : f16
    scf.execute_region {
      %245 = memref.load %alloc_5[%c4] : memref<10xi16>
      %246 = math.log10 %19 : tensor<8xf32>
      %247 = math.absf %cst_3 : f16
      %248 = math.log10 %40 : tensor<10xf32>
      %249 = math.log10 %reduced : tensor<8xf32>
      %250 = vector.multi_reduction <mul>, %73, %c486122104_i32 [0] : vector<11xi32> to i32
      %251 = vector.extract %73[3] : vector<11xi32>
      %252 = vector.transpose %92, [0, 1] : vector<8x11xi1> to vector<8x11xi1>
      %253 = vector.insertelement %extracted_23, %73[%75 : index] : vector<11xi32>
      %254 = arith.divui %c1911719112_i64, %c1911719112_i64 : i64
      %255 = vector.extract %73[4] : vector<11xi32>
      %256 = vector.extract %92[2] : vector<8x11xi1>
      %257 = bufferization.to_tensor %alloc_18 : memref<8x8x8xi1>
      %258 = vector.broadcast %c486122104_i32 : i32 to vector<i32>
      %259 = vector.transfer_write %258, %17[%c13] : vector<i32>, tensor<10xi32>
      %260 = vector.multi_reduction <and>, %20, %250 [0] : vector<11xi32> to i32
      %261 = arith.minui %c32383_i16, %extracted : i16
      scf.yield
    }
    %c574113275_i32 = arith.constant 574113275 : i32
    %104 = index.add %37, %43
    %105 = math.atan2 %cst_1, %cst_0 : f32
    memref.assume_alignment %alloc_5, 8 : memref<10xi16>
    %106 = index.maxu %39, %c6
    %107 = arith.remf %cst_1, %cst : f32
    %108 = arith.andi %extracted_22, %extracted_22 : i64
    %109 = vector.bitcast %20 : vector<11xi32> to vector<11xi32>
    memref.store %cst_0, %alloc_16[%c3] : memref<10xf32>
    %110 = index.add %43, %c15
    %111 = math.atan2 %9, %9 : tensor<8x11xf32>
    %112 = arith.shrsi %true, %false : i1
    %113 = vector.splat %cst_4 : vector<8x11xf32>
    %114 = memref.load %alloc_13[%c7, %c6, %c2] : memref<8x8x8xi16>
    %extracted_27 = tensor.extract %14[%c7] : tensor<10xi16>
    %115 = arith.maxui %extracted_27, %c31224_i16 : i16
    %116 = vector.extract %73[1] : vector<11xi32>
    scf.if %false {
      %245 = arith.negf %cst : f32
      %246 = math.log %1 : tensor<8x11xf32>
      %247 = bufferization.to_tensor %alloc_5 : memref<10xi16>
      %248 = vector.shuffle %73, %20 [0, 1, 2, 5, 7, 10, 12, 15, 16, 21] : vector<11xi32>, vector<11xi32>
      %249 = arith.shrsi %c1911719112_i64, %c1911719112_i64 : i64
      %cst_44 = arith.constant 1.76173094E+9 : f32
      %250 = arith.maxsi %extracted, %extracted : i16
      %251 = arith.ceildivsi %c32383_i16, %c-31560_i16 : i16
    } else {
      %245 = arith.ori %c-31560_i16, %c-31560_i16 : i16
      %246 = math.expm1 %1 : tensor<8x11xf32>
      %247 = index.casts %75 : index to i32
      %248 = math.absi %c-31560_i16 : i16
      %249 = tensor.empty() : tensor<8x8x8xi64>
      %250 = tensor.empty() : tensor<8xi64>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250, %249 : tensor<8xi64>, tensor<8x8x8xi64>) outs(%249 : tensor<8x8x8xi64>) {
      ^bb0(%in: i64, %in_46: i64, %out: i64):
        %255 = arith.divui %extracted_23, %c154354586_i32 : i32
        %256 = bufferization.clone %alloc_14 : memref<10xi1> to memref<10xi1>
        %257 = vector.extract %73[0] : vector<11xi32>
        %258 = math.rsqrt %9 : tensor<8x11xf32>
        %259 = arith.shrsi %extracted_22, %in_46 : i64
        %cast_47 = tensor.cast %12 : tensor<8x11xi64> to tensor<?x?xi64>
        %260 = vector.transpose %20, [0] : vector<11xi32> to vector<11xi32>
        %261 = math.atan2 %cst_0, %cst : f32
        %262 = vector.broadcast %cst_3 : f16 to vector<8x11xf16>
        bufferization.dealloc_tensor %60 : tensor<8x11xi64>
        %263 = arith.addf %cst_0, %cst_1 : f32
        %264 = arith.subi %c1911719112_i64, %extracted_22 : i64
        %265 = math.ipowi %10, %10 : tensor<10xi1>
        %266 = math.roundeven %9 : tensor<8x11xf32>
        %267 = arith.shrui %c486122104_i32, %c154354586_i32 : i32
        %268 = bufferization.clone %alloc_10 : memref<10xi32> to memref<10xi32>
        %269 = math.ceil %40 : tensor<10xf32>
        %false_48 = index.bool.constant false
        %270 = math.ctpop %15 : tensor<8x11xi1>
        %271 = math.rsqrt %cst_1 : f32
        %272 = math.rsqrt %cst_4 : f32
        %273 = math.ceil %cst_0 : f32
        %274 = index.divs %c15, %28
        %275 = arith.divf %cst, %cst : f32
        %276 = vector.bitcast %92 : vector<8x11xi1> to vector<8x11xi1>
        %277 = math.ipowi %11, %0 : tensor<8x11xi64>
        %278 = arith.muli %false_25, %false_48 : i1
        %279 = arith.addi %c1911719112_i64, %out : i64
        %280 = math.sqrt %19 : tensor<8xf32>
        %281 = arith.ceildivsi %extracted_22, %c1911719112_i64 : i64
        %282 = math.roundeven %8 : tensor<8x11xf32>
        %283 = memref.load %alloc_12[%c6] : memref<10xf32>
        linalg.yield %in_46 : i64
      } -> tensor<8x8x8xi64>
      %rank_44 = tensor.rank %8 : tensor<8x11xf32>
      %252 = memref.load %alloc_16[%c5] : memref<10xf32>
      %alloc_45 = memref.alloc() : memref<11x8xf32>
      %253 = tensor.empty() : tensor<8x8xf32>
      %254 = linalg.matmul ins(%5, %alloc_45 : tensor<8x11xf32>, memref<11x8xf32>) outs(%253 : tensor<8x8xf32>) -> tensor<8x8xf32>
    }
    %117 = vector.create_mask %43, %c0 : vector<8x11xi1>
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<8x11xf32> into tensor<88xf32>
    %118 = math.fma %8, %9, %5 : tensor<8x11xf32>
    %119 = math.log1p %5 : tensor<8x11xf32>
    %120 = math.round %9 : tensor<8x11xf32>
    %121 = vector.broadcast %extracted_23 : i32 to vector<i32>
    %122 = vector.transfer_write %121, %transposed[%110] : vector<i32>, tensor<10xi32>
    %123 = arith.minsi %extracted, %c31224_i16 : i16
    %124 = math.cos %cst_1 : f32
    %125 = arith.maxui %true, %false_25 : i1
    %126 = arith.maxsi %c31224_i16, %extracted : i16
    %127 = vector.broadcast %true_24 : i1 to vector<10xi1>
    %generated_28 = tensor.generate %c12 {
    ^bb0(%arg1: index, %arg2: index):
      %245 = arith.remui %true_24, %extracted_21 : i1
      %246 = arith.ori %true, %true_24 : i1
      %extracted_44 = tensor.extract %1[%c1, %c8] : tensor<8x11xf32>
      %247 = index.ceildivs %c11, %c13
      tensor.yield %extracted_44 : f32
    } : tensor<?x11xf32>
    %128 = vector.shuffle %117, %117 [1, 2, 3, 5, 6, 8, 10, 11] : vector<8x11xi1>, vector<8x11xi1>
    %extracted_29 = tensor.extract %5[%c0, %c4] : tensor<8x11xf32>
    %129 = memref.realloc %alloc_12 : memref<10xf32> to memref<8xf32>
    %130 = bufferization.to_tensor %alloc_8 : memref<10xi32>
    %131 = arith.addf %cst, %cst_4 : f32
    %132 = affine.min affine_map<(d0) -> (d0 + (d0 + 2) mod 16 - 64)>(%c9)
    memref.assume_alignment %alloc_19, 1 : memref<8x11xf32>
    %133 = math.fma %cst_0, %cst, %cst_0 : f32
    %134 = arith.shrsi %c-31560_i16, %c-31560_i16 : i16
    %135 = bufferization.clone %alloc_10 : memref<10xi32> to memref<10xi32>
    %alloc_30 = memref.alloc() : memref<8x8x8xi16>
    memref.copy %alloc_13, %alloc_30 : memref<8x8x8xi16> to memref<8x8x8xi16>
    %136 = math.round %cst_2 : f16
    %137 = arith.negf %extracted_29 : f32
    %138 = math.ipowi %18, %17 : tensor<10xi32>
    %139 = arith.remf %cst_3, %cst_2 : f16
    %140 = math.absf %cst : f32
    %141 = math.tanh %cst_1 : f32
    %extracted_31 = tensor.extract %3[%c0, %c1] : tensor<8x11xi1>
    %142 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, d0 == 0)>(%c7, %c15, %c5, %c3) -> i1 {
      %245 = vector.extract %109[0] : vector<11xi32>
      %246 = arith.maxui %c31224_i16, %c31224_i16 : i16
      %247 = math.log10 %5 : tensor<8x11xf32>
      %248 = vector.flat_transpose %73 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
      %249 = vector.matrix_multiply %109, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
      %250 = arith.ceildivsi %true, %false_25 : i1
      %251 = vector.broadcast %false : i1 to vector<11xi1>
      %252 = vector.maskedload %alloc_20[%c5], %251, %20 : memref<10xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
      %253 = math.ctlz %130 : tensor<10xi32>
      affine.yield %false : i1
    } else {
      %245 = index.divu %c6, %c1
      bufferization.dealloc_tensor %2 : tensor<8x11xi16>
      memref.assume_alignment %alloc_8, 16 : memref<10xi32>
      %alloc_44 = memref.alloc() : memref<10xi16>
      memref.copy %alloc_5, %alloc_44 : memref<10xi16> to memref<10xi16>
      %246 = bufferization.to_memref %2 : memref<8x11xi16>
      %247 = math.ceil %9 : tensor<8x11xf32>
      %248 = math.cttz %extracted_27 : i16
      %249 = math.cttz %false_25 : i1
      affine.yield %true_24 : i1
    }
    %143 = arith.andi %c1939014484_i64, %c1911719112_i64 : i64
    %144 = vector.transpose %127, [0] : vector<10xi1> to vector<10xi1>
    %145 = math.expm1 %collapsed : tensor<88xf32>
    %146 = arith.muli %extracted_21, %extracted_21 : i1
    %147 = index.divs %c4, %c0
    %148 = math.ceil %extracted_29 : f32
    %149 = arith.addf %cst_1, %cst_4 : f32
    %150 = math.log10 %extracted_29 : f32
    %151 = vector.reduction <minsi>, %73 : vector<11xi32> into i32
    %152 = math.log1p %9 : tensor<8x11xf32>
    %153 = tensor.empty() : tensor<11x8xi16>
    %154 = tensor.empty() : tensor<8x8xi16>
    %155 = linalg.matmul ins(%46, %153 : tensor<8x11xi16>, tensor<11x8xi16>) outs(%154 : tensor<8x8xi16>) -> tensor<8x8xi16>
    %156 = arith.divsi %true, %true_24 : i1
    %false_32 = index.bool.constant false
    affine.store %c486122104_i32, %alloc_10[%c10] : memref<10xi32>
    %157 = math.roundeven %9 : tensor<8x11xf32>
    %158 = arith.remsi %c-31560_i16, %c-31560_i16 : i16
    %159 = index.ceildivu %28, %c11
    %160 = tensor.empty() : tensor<8x11xi64>
    %mapped_33 = linalg.map ins(%11 : tensor<8x11xi64>) outs(%160 : tensor<8x11xi64>)
      (%in: i64) {
        %245 = math.powf %cst_4, %cst : f32
        %246 = math.ipowi %c-31560_i16, %extracted_27 : i16
        %247 = tensor.empty() : tensor<i32>
        %mapped_44 = linalg.map ins(%21 : tensor<i32>) outs(%247 : tensor<i32>)
          (%in_47: i32) {
            %273 = arith.cmpi ule, %extracted_21, %extracted_21 : i1
            %274 = bufferization.to_tensor %alloc_10 : memref<10xi32>
            %275 = math.log1p %cst : f32
            %276 = math.ipowi %7, %7 : tensor<8x11xi32>
            %277 = arith.cmpf une, %cst_1, %cst_0 : f32
            %278 = math.log1p %5 : tensor<8x11xf32>
            %279 = bufferization.clone %alloc_20 : memref<10xi32> to memref<10xi32>
            %280 = arith.divui %c1192060489_i64, %c1939014484_i64 : i64
            %281 = arith.minf %cst_0, %cst_0 : f32
            %282 = math.ipowi %10, %10 : tensor<10xi1>
            %283 = math.expm1 %extracted_29 : f32
            %284 = memref.load %alloc_18[%c6, %c2, %c0] : memref<8x8x8xi1>
            %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %109, %73, %c154354586_i32 : vector<11xi32>, vector<11xi32> into i32
            %extracted_48 = tensor.extract %13[%c6, %c4] : tensor<8x11xi1>
            %286 = arith.cmpf false, %cst_1, %cst : f32
            %287 = vector.broadcast %c154354586_i32 : i32 to vector<i32>
            %288 = vector.transfer_write %287, %18[%c2] : vector<i32>, tensor<10xi32>
            %289 = arith.minui %extracted_23, %c486122104_i32 : i32
            %290 = math.tan %9 : tensor<8x11xf32>
            vector.print %73 : vector<11xi32>
            %c1339050156_i32 = arith.constant 1339050156 : i32
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_49 = arith.constant 0 : i32
            %291 = vector.transfer_read %alloc_20[%75], %c0_i32_49 : memref<10xi32>, vector<i32>
            %false_50 = index.bool.constant false
            %292 = bufferization.clone %alloc_12 : memref<10xf32> to memref<10xf32>
            %293 = math.floor %cst_0 : f32
            %294 = math.floor %5 : tensor<8x11xf32>
            %295 = vector.extract_strided_slice %117 {offsets = [6], sizes = [2], strides = [1]} : vector<8x11xi1> to vector<2x11xi1>
            %296 = math.atan2 %9, %9 : tensor<8x11xf32>
            %297 = vector.extract %117[4] : vector<8x11xi1>
            %298 = arith.divsi %c1939014484_i64, %c1911719112_i64 : i64
            %299 = vector.transpose %287, [] : vector<i32> to vector<i32>
            %300 = index.add %43, %c4
            %301 = math.absf %9 : tensor<8x11xf32>
            %c0_i32_51 = arith.constant 0 : i32
            linalg.yield %c0_i32_51 : i32
          }
        %false_45 = index.bool.constant false
        %248 = math.copysign %1, %1 : tensor<8x11xf32>
        %249 = index.sub %132, %c0
        %alloc_46 = memref.alloc() : memref<8xf32>
        memref.tensor_store %19, %alloc_46 : memref<8xf32>
        %250 = arith.andi %true_24, %true : i1
        %251 = arith.remui %in, %c1911719112_i64 : i64
        scf.index_switch %75 
        case 1 {
          %273 = vector.broadcast %false : i1 to vector<11xi1>
          %dest_47, %accumulated_value_48 = vector.scan <minsi>, %117, %273 {inclusive = false, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
          %274 = index.floordivs %c5, %53
          %275 = arith.remf %cst_1, %cst_4 : f32
          %276 = index.maxs %25, %c1
          memref.assume_alignment %alloc_11, 4 : memref<10xi32>
          %277 = affine.apply affine_map<(d0) -> ((d0 mod 16) ceildiv 8)>(%c9)
          %278 = arith.maxui %c32383_i16, %c31224_i16 : i16
          %279 = vector.splat %c1911719112_i64 : vector<8x11xi64>
          %280 = math.atan2 %5, %5 : tensor<8x11xf32>
          %281 = math.tanh %5 : tensor<8x11xf32>
          %282 = arith.negf %cst_3 : f16
          %283 = arith.addf %cst_2, %cst_3 : f16
          %284 = index.casts %extracted_23 : i32 to index
          %285 = arith.remf %cst_1, %cst_1 : f32
          memref.store %cst_0, %alloc_12[%c3] : memref<10xf32>
          %286 = vector.transpose %127, [0] : vector<10xi1> to vector<10xi1>
          scf.yield
        }
        case 2 {
          %273 = math.copysign %8, %1 : tensor<8x11xf32>
          %274 = arith.floordivsi %extracted, %c32383_i16 : i16
          %275 = arith.divsi %extracted_23, %c486122104_i32 : i32
          %alloc_47 = memref.alloc() : memref<10xi16>
          memref.copy %alloc_5, %alloc_47 : memref<10xi16> to memref<10xi16>
          memref.store %true, %alloc_14[%c1] : memref<10xi1>
          %276 = math.cttz %14 : tensor<10xi16>
          %277 = arith.remf %cst_2, %cst_3 : f16
          %278 = vector.broadcast %false_25 : i1 to vector<i1>
          %279 = vector.transfer_write %278, %13[%c14, %c10] : vector<i1>, tensor<8x11xi1>
          %280 = vector.reduction <minsi>, %20 : vector<11xi32> into i32
          %281 = arith.maxui %extracted_22, %c1939014484_i64 : i64
          %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %127, %127, %true_24 : vector<10xi1>, vector<10xi1> into i1
          %283 = tensor.empty() : tensor<11x8xi1>
          %284 = tensor.empty() : tensor<8x8xi1>
          %285 = linalg.matmul ins(%15, %283 : tensor<8x11xi1>, tensor<11x8xi1>) outs(%284 : tensor<8x8xi1>) -> tensor<8x8xi1>
          %286 = index.mul %c14, %147
          %287 = math.roundeven %1 : tensor<8x11xf32>
          %288 = vector.transpose %117, [1, 0] : vector<8x11xi1> to vector<11x8xi1>
          %289 = vector.broadcast %false_25 : i1 to vector<8xi1>
          %dest_48, %accumulated_value_49 = vector.scan <minui>, %117, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<8x11xi1>, vector<8xi1>
          scf.yield
        }
        case 3 {
          %273 = math.floor %5 : tensor<8x11xf32>
          %extracted_47 = tensor.extract %13[%c4, %c1] : tensor<8x11xi1>
          %274 = vector.bitcast %92 : vector<8x11xi1> to vector<8x11xi1>
          %275 = vector.splat %c5 : vector<8x11xindex>
          %276 = vector.multi_reduction <and>, %20, %73 [] : vector<11xi32> to vector<11xi32>
          memref.assume_alignment %alloc_12, 2 : memref<10xf32>
          %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %73, %20, %extracted_23 : vector<11xi32>, vector<11xi32> into i32
          %278 = arith.remf %cst_3, %cst_3 : f16
          %279 = vector.transpose %274, [0, 1] : vector<8x11xi1> to vector<8x11xi1>
          %280 = arith.subi %c154354586_i32, %c486122104_i32 : i32
          %splat_48 = tensor.splat %c1192060489_i64 : tensor<8x11xi64>
          %281 = arith.maxsi %true_24, %extracted_21 : i1
          %282 = math.tanh %19 : tensor<8xf32>
          %283 = memref.realloc %alloc_11 : memref<10xi32> to memref<8xi32>
          %284 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
          %285 = arith.maxui %true, %false_25 : i1
          scf.yield
        }
        default {
          %splat_47 = tensor.splat %true : tensor<8x11xi1>
          %273 = memref.realloc %alloc_14 : memref<10xi1> to memref<10xi1>
          %274 = tensor.empty() : tensor<11x11xi1>
          %275 = tensor.empty() : tensor<8x11xi1>
          %276 = linalg.matmul ins(%97, %274 : tensor<8x11xi1>, tensor<11x11xi1>) outs(%275 : tensor<8x11xi1>) -> tensor<8x11xi1>
          %277 = math.cos %1 : tensor<8x11xf32>
          %278 = arith.remui %false_32, %true : i1
          %279 = math.ceil %cst_3 : f16
          %280 = arith.maxui %c486122104_i32, %extracted_23 : i32
          %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %109, %109, %c154354586_i32 : vector<11xi32>, vector<11xi32> into i32
          %282 = arith.maxui %true_24, %false_32 : i1
          %283 = bufferization.to_tensor %alloc_15 : memref<8x11xi64>
          %284 = vector.flat_transpose %127 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          %285 = math.expm1 %19 : tensor<8xf32>
          %286 = vector.splat %false : vector<10xi1>
          %287 = index.sub %c8, %25
          %288 = memref.load %62[%c1] : memref<10xi32>
          %289 = math.absi %splat : tensor<8x11xi16>
        }
        %252 = math.roundeven %5 : tensor<8x11xf32>
        %253 = arith.muli %extracted_27, %extracted : i16
        %254 = arith.remui %false, %false_45 : i1
        %255 = tensor.empty() : tensor<11x11xi64>
        %256 = tensor.empty() : tensor<8x11xi64>
        %257 = linalg.matmul ins(%11, %255 : tensor<8x11xi64>, tensor<11x11xi64>) outs(%256 : tensor<8x11xi64>) -> tensor<8x11xi64>
        %258 = math.ctpop %c32383_i16 : i16
        %259 = math.cos %5 : tensor<8x11xf32>
        memref.assume_alignment %alloc_7, 8 : memref<8x11xi32>
        %alloca = memref.alloca() : memref<10xi32>
        %260 = arith.remf %cst_2, %cst_2 : f16
        %261 = math.ceil %40 : tensor<10xf32>
        %262 = math.rsqrt %9 : tensor<8x11xf32>
        %263 = arith.maxui %extracted_21, %false : i1
        %264 = math.roundeven %1 : tensor<8x11xf32>
        %265 = index.maxs %28, %159
        %266 = vector.transpose %127, [0] : vector<10xi1> to vector<10xi1>
        %267 = index.casts %c0 : index to i32
        %268 = arith.floordivsi %c1939014484_i64, %c1911719112_i64 : i64
        %269 = scf.while (%arg1 = %109) : (vector<11xi32>) -> vector<11xi32> {
          %273 = index.castu %extracted_21 : i1 to index
          affine.store %extracted_29, %alloc_12[%c3] : memref<10xf32>
          %274 = bufferization.clone %alloc_17 : memref<10xf16> to memref<10xf16>
          %275 = vector.matrix_multiply %20, %73 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
          %276 = arith.divf %cst_4, %cst_1 : f32
          %277 = math.log2 %collapsed : tensor<88xf32>
          %278 = math.expm1 %cst_1 : f32
          %279 = arith.addi %extracted_27, %c-31560_i16 : i16
          scf.condition(%true) %73 : vector<11xi32>
        } do {
        ^bb0(%arg1: vector<11xi32>):
          %273 = math.ctpop %c-31560_i16 : i16
          %274 = tensor.empty(%c9) : tensor<?x8x8xi16>
          %275 = arith.addf %cst_2, %cst_2 : f16
          %276 = arith.andi %c154354586_i32, %c486122104_i32 : i32
          %277 = math.log1p %8 : tensor<8x11xf32>
          %278 = index.ceildivu %43, %c3
          %279 = arith.divui %false_25, %false_25 : i1
          %280 = math.expm1 %1 : tensor<8x11xf32>
          bufferization.dealloc_tensor %14 : tensor<10xi16>
          %281 = arith.andi %true_24, %false : i1
          %282 = arith.shrsi %false_32, %false_45 : i1
          memref.tensor_store %5, %alloc_19 : memref<8x11xf32>
          %283 = memref.atomic_rmw mins %extracted_23, %alloc_7[%c7, %c7] : (i32, memref<8x11xi32>) -> i32
          %284 = math.log %9 : tensor<8x11xf32>
          %285 = math.ctpop %4 : tensor<10xi1>
          %alloc_47 = memref.alloc() : memref<10xf16>
          memref.copy %alloc_17, %alloc_47 : memref<10xf16> to memref<10xf16>
          scf.yield %109 : vector<11xi32>
        }
        %270 = vector.broadcast %extracted_21 : i1 to vector<10xi1>
        %271 = vector.reduction <minui>, %270 : vector<10xi1> into i1
        %272 = arith.negf %cst_2 : f16
        memref.assume_alignment %135, 1 : memref<10xi32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %161 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%c1, %147, %37, %106)
    %162 = math.expm1 %1 : tensor<8x11xf32>
    %163 = memref.realloc %alloc : memref<10xi32> to memref<10xi32>
    %164 = memref.realloc %135 : memref<10xi32> to memref<10xi32>
    %165 = vector.broadcast %false_25 : i1 to vector<8xi1>
    %166 = vector.multi_reduction <add>, %117, %165 [1] : vector<8x11xi1> to vector<8xi1>
    %167 = arith.cmpi sge, %extracted_21, %true : i1
    %168 = memref.atomic_rmw maxu %c154354586_i32, %alloc_11[%c1] : (i32, memref<10xi32>) -> i32
    %169 = math.atan2 %5, %9 : tensor<8x11xf32>
    scf.index_switch %28 
    case 1 {
      %245 = math.cttz %17 : tensor<10xi32>
      %246 = math.cos %1 : tensor<8x11xf32>
      %247 = arith.shrsi %extracted_31, %false_25 : i1
      %dest_44, %accumulated_value_45 = vector.scan <add>, %92, %165 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11xi1>, vector<8xi1>
      %248 = arith.minf %cst_3, %cst_3 : f16
      %249 = arith.negf %cst_0 : f32
      %250 = math.log1p %9 : tensor<8x11xf32>
      %251 = vector.create_mask %25, %25 : vector<8x11xi1>
      %252 = math.exp %collapsed : tensor<88xf32>
      %253 = math.powf %cst_0, %cst_1 : f32
      %254 = vector.broadcast %cst_0 : f32 to vector<8x11xf32>
      %255 = vector.fma %254, %254, %254 : vector<8x11xf32>
      %false_46 = index.bool.constant false
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %256 = vector.transfer_read %0[%c2, %c7], %c0_i64 : tensor<8x11xi64>, vector<i64>
      %generated_47 = tensor.generate %c2 {
      ^bb0(%arg1: index):
        %258 = vector.broadcast %c31224_i16 : i16 to vector<i16>
        vector.transfer_write %258, %alloc_5[%147] : vector<i16>, memref<10xi16>
        memref.store %c486122104_i32, %alloc_10[%c8] : memref<10xi32>
        %259 = math.roundeven %cst_4 : f32
        %260 = arith.remui %false_25, %true : i1
        tensor.yield %true_24 : i1
      } : tensor<?xi1>
      %257 = arith.shli %c1_i64, %c1911719112_i64 : i64
      %splat_48 = tensor.splat %cst_4 : tensor<8x11xf32>
      scf.yield
    }
    case 2 {
      %245 = arith.addf %cst, %cst_4 : f32
      %246 = math.fma %cst_0, %cst, %cst_4 : f32
      affine.store %c154354586_i32, %alloc_10[%c13] : memref<10xi32>
      %247 = arith.remsi %c1911719112_i64, %extracted_22 : i64
      %248 = math.log10 %9 : tensor<8x11xf32>
      %249 = arith.addf %extracted_29, %cst_4 : f32
      %250 = memref.atomic_rmw addi %c-31560_i16, %alloc_5[%c3] : (i16, memref<10xi16>) -> i16
      %251 = bufferization.clone %alloc : memref<10xi32> to memref<10xi32>
      %collapsed_44 = tensor.collapse_shape %1 [[0, 1]] : tensor<8x11xf32> into tensor<88xf32>
      affine.store %c486122104_i32, %alloc_8[%c12] : memref<10xi32>
      %252 = math.atan2 %cst_2, %cst_3 : f16
      %253 = math.log1p %cst_4 : f32
      %254 = affine.apply affine_map<(d0) -> ((d0 floordiv 2 + (-d0) floordiv 4 + 128 - 32) floordiv 64)>(%c13)
      affine.store %c-31560_i16, %alloc_13[%c10, %c15, %c0] : memref<8x8x8xi16>
      %255 = vector.extract %117[0] : vector<8x11xi1>
      %generated_45 = tensor.generate %c12, %147 {
      ^bb0(%arg1: index, %arg2: index):
        %256 = math.cttz %11 : tensor<8x11xi64>
        %257 = affine.apply affine_map<(d0, d1) -> (d1 - 56)>(%28, %53)
        %258 = math.ipowi %17, %130 : tensor<10xi32>
        %259 = index.divs %25, %arg2
        tensor.yield %cst_3 : f16
      } : tensor<?x?xf16>
      scf.yield
    }
    case 3 {
      %245 = index.mul %rank, %110
      %246 = math.ctlz %14 : tensor<10xi16>
      %247 = scf.index_switch %rank -> i32 
      case 1 {
        %258 = math.log10 %cst : f32
        %259 = index.sub %159, %c1
        %260 = vector.multi_reduction <minsi>, %20, %20 [] : vector<11xi32> to vector<11xi32>
        %261 = math.log10 %cst_2 : f16
        %262 = vector.broadcast %cst_1 : f32 to vector<8x8x8xf32>
        %263 = vector.fma %262, %262, %262 : vector<8x8x8xf32>
        %264 = math.absf %cst_1 : f32
        %265 = arith.maxui %false_32, %extracted_21 : i1
        %266 = memref.load %alloc_11[%c1] : memref<10xi32>
        %267 = arith.muli %extracted_23, %extracted_23 : i32
        %268 = memref.atomic_rmw muli %c486122104_i32, %alloc[%c8] : (i32, memref<10xi32>) -> i32
        %269 = math.cttz %extracted_23 : i32
        %270 = vector.matrix_multiply %20, %73 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %271 = bufferization.clone %62 : memref<10xi32> to memref<10xi32>
        %272 = vector.broadcast %cst_0 : f32 to vector<8x11xf32>
        %273 = vector.broadcast %extracted_23 : i32 to vector<8x11xi32>
        %274 = vector.gather %alloc_19[%c8, %64] [%273], %117, %272 : memref<8x11xf32>, vector<8x11xi32>, vector<8x11xi1>, vector<8x11xf32> into vector<8x11xf32>
        %275 = math.log1p %extracted_29 : f32
        %276 = memref.load %alloc_9[%c7, %c5] : memref<8x11xf32>
        scf.yield %c154354586_i32 : i32
      }
      case 2 {
        %258 = math.ctlz %18 : tensor<10xi32>
        %259 = vector.shuffle %109, %109 [3, 4, 6, 7, 8, 9, 12, 13, 15, 17, 19, 21] : vector<11xi32>, vector<11xi32>
        %260 = vector.broadcast %false : i1 to vector<11x11xi1>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %117, %92, %260 : vector<8x11xi1>, vector<8x11xi1> into vector<11x11xi1>
        %262 = arith.xori %extracted, %c31224_i16 : i16
        %splat_47 = tensor.splat %c-31560_i16 : tensor<8x11xi16>
        %263 = vector.transpose %117, [0, 1] : vector<8x11xi1> to vector<8x11xi1>
        %264 = math.atan2 %cst_2, %cst_2 : f16
        %265 = arith.maxui %c1939014484_i64, %c1192060489_i64 : i64
        %cst_48 = arith.constant 0x4DBA2788 : f32
        %266 = math.cttz %c154354586_i32 : i32
        %267 = vector.broadcast %false_32 : i1 to vector<11xi1>
        %268 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %165, %117, %267 : vector<8xi1>, vector<8x11xi1> into vector<11xi1>
        %269 = bufferization.to_tensor %alloc_14 : memref<10xi1>
        %270 = arith.shrsi %false_25, %false_25 : i1
        %271 = math.absf %cst_0 : f32
        vector.print %117 : vector<8x11xi1>
        %272 = math.cttz %160 : tensor<8x11xi64>
        scf.yield %extracted_23 : i32
      }
      case 3 {
        %258 = math.ipowi %true_24, %false_32 : i1
        %259 = arith.negf %cst_0 : f32
        %260 = vector.broadcast %true : i1 to vector<11xi1>
        %dest_47, %accumulated_value_48 = vector.scan <or>, %117, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
        %261 = arith.shrui %extracted_27, %extracted : i16
        %alloc_49 = memref.alloc() : memref<8x11xi1>
        memref.tensor_store %3, %alloc_49 : memref<8x11xi1>
        %262 = vector.load %alloc_8[%c5] : memref<10xi32>, vector<8x11xi32>
        memref.tensor_store %6, %alloc_8 : memref<10xi32>
        %263 = affine.min affine_map<(d0) -> ((d0 * 32 + 2) floordiv 64 - (d0 * 32 + 2), d0 * 16 + d0 floordiv 2 + 64 - 128, d0 + 132, (d0 * 32 + 2) floordiv 64)>(%28)
        %rank_50 = tensor.rank %8 : tensor<8x11xf32>
        %264 = vector.load %alloc_6[%c6] : memref<10xf32>, vector<8x8x8xf32>
        %265 = arith.ceildivsi %extracted_27, %c-31560_i16 : i16
        %266 = arith.divsi %c1911719112_i64, %c1939014484_i64 : i64
        %267 = index.maxu %28, %161
        %268 = index.sub %147, %c2
        %269 = memref.realloc %alloc_20 : memref<10xi32> to memref<11xi32>
        %270 = math.cttz %c486122104_i32 : i32
        scf.yield %extracted_23 : i32
      }
      default {
        %258 = arith.remf %cst_2, %cst_3 : f16
        %259 = math.tan %cst_3 : f16
        %260 = arith.remf %cst_1, %cst_0 : f32
        %261 = vector.extract_strided_slice %165 {offsets = [0], sizes = [1], strides = [1]} : vector<8xi1> to vector<1xi1>
        %262 = math.absf %cst_4 : f32
        %263 = arith.ceildivsi %c1192060489_i64, %c1911719112_i64 : i64
        %rank_47 = tensor.rank %16 : tensor<10xi32>
        %264 = math.ctlz %10 : tensor<10xi1>
        %265 = arith.negf %cst_0 : f32
        %266 = arith.andi %true_24, %true : i1
        memref.copy %alloc_20, %135 : memref<10xi32> to memref<10xi32>
        %267 = math.log10 %9 : tensor<8x11xf32>
        %268 = math.atan2 %8, %9 : tensor<8x11xf32>
        %rank_48 = tensor.rank %0 : tensor<8x11xi64>
        %269 = arith.divf %cst_0, %cst_1 : f32
        %270 = index.divs %106, %28
        scf.yield %c486122104_i32 : i32
      }
      %248 = math.cttz %21 : tensor<i32>
      %249 = arith.subi %false_32, %false_32 : i1
      %250 = index.ceildivu %c3, %c3
      %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %127, %127, %false_32 : vector<10xi1>, vector<10xi1> into i1
      %252 = index.maxs %161, %64
      %253 = arith.muli %true, %false : i1
      %254 = math.ceil %cst_0 : f32
      %false_44 = index.bool.constant false
      %extracted_45 = tensor.extract %6[%c8] : tensor<10xi32>
      %255 = vector.shuffle %20, %20 [0, 4, 7, 9, 10, 11, 14, 16, 18] : vector<11xi32>, vector<11xi32>
      %256 = arith.mulf %cst, %cst : f32
      %257 = index.casts %extracted_45 : i32 to index
      %cast_46 = tensor.cast %9 : tensor<8x11xf32> to tensor<?x?xf32>
      scf.yield
    }
    default {
      %245 = index.divu %c9, %c0
      %246 = arith.shrui %c1192060489_i64, %c1939014484_i64 : i64
      %247 = math.rsqrt %1 : tensor<8x11xf32>
      memref.copy %alloc, %alloc_20 : memref<10xi32> to memref<10xi32>
      %248 = math.log %5 : tensor<8x11xf32>
      %249 = math.roundeven %reduced : tensor<8xf32>
      %250 = arith.cmpi ult, %extracted_27, %c32383_i16 : i16
      %cst_44 = arith.constant 1.00496749E+9 : f32
      %251 = arith.shrsi %extracted_23, %c486122104_i32 : i32
      %252 = index.mul %39, %c8
      %253 = bufferization.clone %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
      %254 = index.floordivs %c1, %110
      %255 = scf.if %false_32 -> (memref<8x8x8xi32>) {
        %259 = math.log1p %collapsed : tensor<88xf32>
        %260 = index.add %132, %110
        %261 = vector.shuffle %117, %117 [2, 9, 10, 13, 14] : vector<8x11xi1>, vector<8x11xi1>
        %262 = math.atan2 %1, %9 : tensor<8x11xf32>
        %263 = vector.extract %109[1] : vector<11xi32>
        affine.store %extracted_23, %alloc[%c4] : memref<10xi32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_45 = arith.constant 0 : i16
        %264 = vector.transfer_read %2[%260, %c1], %c0_i16_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<8x11xi16>, vector<11xi16>
        %265 = arith.muli %extracted_21, %true : i1
        %alloc_46 = memref.alloc() : memref<8x8x8xi32>
        scf.yield %alloc_46 : memref<8x8x8xi32>
      } else {
        %alloc_45 = memref.alloc() : memref<8x11xi32>
        memref.copy %alloc_7, %alloc_45 : memref<8x11xi32> to memref<8x11xi32>
        affine.store %cst_0, %alloc_6[%c2] : memref<10xf32>
        %259 = index.maxs %39, %245
        %extracted_46 = tensor.extract %8[%c0, %c9] : tensor<8x11xf32>
        %260 = arith.maxsi %extracted_21, %extracted_21 : i1
        %261 = vector.insertelement %extracted_23, %109[%c6 : index] : vector<11xi32>
        %262 = math.cos %5 : tensor<8x11xf32>
        %263 = vector.extract %20[6] : vector<11xi32>
        %alloc_47 = memref.alloc() : memref<8x8x8xi32>
        scf.yield %alloc_47 : memref<8x8x8xi32>
      }
      %256 = arith.negf %cst_0 : f32
      %257 = vector.reduction <and>, %73 : vector<11xi32> into i32
      %258 = math.log %40 : tensor<10xf32>
    }
    %170 = math.rsqrt %5 : tensor<8x11xf32>
    %171 = math.tan %1 : tensor<8x11xf32>
    %172 = math.rsqrt %8 : tensor<8x11xf32>
    bufferization.dealloc_tensor %10 : tensor<10xi1>
    %173 = math.fma %9, %9, %5 : tensor<8x11xf32>
    %174 = arith.remui %true_24, %false_32 : i1
    %175 = arith.divsi %extracted, %c-31560_i16 : i16
    %176 = arith.cmpf une, %cst_4, %cst_4 : f32
    %177 = vector.transpose %73, [0] : vector<11xi32> to vector<11xi32>
    %178 = index.casts %c2 : index to i32
    %179 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
    %180 = arith.addf %cst_4, %cst : f32
    %181 = index.ceildivu %132, %rank
    %182 = index.divu %c0, %c13
    %183 = vector.transpose %73, [0] : vector<11xi32> to vector<11xi32>
    %184 = math.floor %collapsed : tensor<88xf32>
    %inserted = tensor.insert %extracted_21 into %3[%c7, %c4] : tensor<8x11xi1>
    memref.alloca_scope  {
      %245 = vector.multi_reduction <add>, %127, %127 [] : vector<10xi1> to vector<10xi1>
      %246 = vector.create_mask %43, %c2 : vector<8x11xi1>
      %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<10xi32> into tensor<10x1xi32>
      %splat_44 = tensor.splat %extracted_21 : tensor<8x8x8xi1>
      %247 = arith.remui %false, %false_32 : i1
      %248 = arith.shli %extracted_22, %extracted_22 : i64
      %249 = arith.floordivsi %c-31560_i16, %c32383_i16 : i16
      %250 = arith.ori %c1939014484_i64, %c1192060489_i64 : i64
      %extracted_45 = tensor.extract %154[%c5, %c0] : tensor<8x8xi16>
      %251 = arith.subi %false_25, %true : i1
      %252 = arith.andi %extracted_27, %extracted : i16
      %alloc_46 = memref.alloc() : memref<11x8xi64>
      %253 = tensor.empty() : tensor<8x8xi64>
      %254 = linalg.matmul ins(%60, %alloc_46 : tensor<8x11xi64>, memref<11x8xi64>) outs(%253 : tensor<8x8xi64>) -> tensor<8x8xi64>
      %255 = math.absf %1 : tensor<8x11xf32>
      %256 = vector.maskedload %alloc_14[%c0], %165, %165 : memref<10xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
      %257 = memref.atomic_rmw addi %extracted_45, %alloc_5[%c4] : (i16, memref<10xi16>) -> i16
      %alloc_47 = memref.alloc() : memref<8x11xi32>
      memref.copy %alloc_7, %alloc_47 : memref<8x11xi32> to memref<8x11xi32>
      %258 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %258, %alloc_16[%104] : vector<f32>, memref<10xf32>
      %259 = arith.remf %cst_4, %extracted_29 : f32
      %alloc_48 = memref.alloc() : memref<8x8x8xi64>
      %260 = math.atan2 %cst, %cst_0 : f32
      %261 = arith.muli %c32383_i16, %extracted_27 : i16
      %262 = math.cttz %c486122104_i32 : i32
      %263 = math.round %5 : tensor<8x11xf32>
      vector.print %117 : vector<8x11xi1>
      %264 = arith.maxsi %c1939014484_i64, %extracted_22 : i64
      %265 = arith.remf %cst_3, %cst_3 : f16
      %266 = vector.splat %c12 : vector<8x11xindex>
      %267 = arith.ceildivsi %c-31560_i16, %c31224_i16 : i16
      %268 = arith.maxui %c32383_i16, %extracted_27 : i16
      %269 = math.floor %9 : tensor<8x11xf32>
      %270 = math.roundeven %1 : tensor<8x11xf32>
      %271 = math.log10 %8 : tensor<8x11xf32>
    }
    %185 = arith.negf %cst_3 : f16
    %rank_34 = tensor.rank %14 : tensor<10xi16>
    %186 = math.exp %reduced : tensor<8xf32>
    %187 = vector.broadcast %extracted_23 : i32 to vector<8xi32>
    %188 = vector.maskedload %alloc_10[%c7], %165, %187 : memref<10xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %collapsed_35 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x11xf32> into tensor<88xf32>
    %189 = arith.maxui %extracted_23, %c486122104_i32 : i32
    %190 = vector.maskedload %alloc_7[%c2, %c4], %165, %188 : memref<8x11xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %191 = vector.splat %cst_1 : vector<10xf32>
    %192 = arith.ceildivsi %extracted_31, %false_25 : i1
    %193 = math.cos %cst_1 : f32
    %194 = math.roundeven %1 : tensor<8x11xf32>
    %195 = math.ipowi %c-31560_i16, %c31224_i16 : i16
    %196 = bufferization.to_tensor %62 : memref<10xi32>
    %197 = arith.cmpf ord, %cst_2, %cst_2 : f16
    %198 = arith.andi %c1192060489_i64, %c1939014484_i64 : i64
    %199 = arith.shrsi %c154354586_i32, %c486122104_i32 : i32
    %200 = scf.while (%arg1 = %187) : (vector<8xi32>) -> vector<8xi32> {
      %245 = vector.broadcast %false_32 : i1 to vector<11xi1>
      %246 = vector.maskedload %62[%c6], %245, %20 : memref<10xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
      %247 = arith.divf %cst_3, %cst_3 : f16
      %248 = vector.create_mask %25, %c0 : vector<8x11xi1>
      %249 = math.exp %19 : tensor<8xf32>
      %250 = math.round %collapsed_35 : tensor<88xf32>
      %251 = bufferization.clone %alloc_7 : memref<8x11xi32> to memref<8x11xi32>
      %252 = scf.if %extracted_31 -> (f32) {
        %true_44 = index.bool.constant true
        %254 = arith.subi %c-31560_i16, %extracted : i16
        %255 = memref.realloc %alloc_10 : memref<10xi32> to memref<11xi32>
        %256 = arith.negf %cst_4 : f32
        %true_45 = index.bool.constant true
        %257 = vector.broadcast %extracted_29 : f32 to vector<8x11xf32>
        %258 = vector.fma %257, %257, %257 : vector<8x11xf32>
        %259 = math.powf %cst, %cst_1 : f32
        bufferization.dealloc_tensor %14 : tensor<10xi16>
        scf.yield %cst_0 : f32
      } else {
        %254 = math.absf %5 : tensor<8x11xf32>
        %255 = arith.subi %extracted_31, %true : i1
        %256 = index.ceildivu %75, %c11
        bufferization.dealloc_tensor %15 : tensor<8x11xi1>
        %257 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %258 = vector.fma %257, %257, %257 : vector<10xf32>
        %259 = vector.reduction <add>, %258 : vector<10xf32> into f32
        %260 = math.rsqrt %40 : tensor<10xf32>
        %261 = math.ipowi %c486122104_i32, %extracted_23 : i32
        scf.yield %cst_1 : f32
      }
      %253 = arith.maxui %c32383_i16, %extracted : i16
      scf.condition(%false_25) %188 : vector<8xi32>
    } do {
    ^bb0(%arg1: vector<8xi32>):
      %245 = math.log2 %40 : tensor<10xf32>
      %246 = math.cos %collapsed : tensor<88xf32>
      %247 = math.log1p %cst : f32
      %248 = vector.matrix_multiply %187, %188 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
      %249 = arith.negf %cst_0 : f32
      %250 = math.powf %5, %1 : tensor<8x11xf32>
      %251 = math.powf %reduced, %reduced : tensor<8xf32>
      %252 = vector.transpose %121, [] : vector<i32> to vector<i32>
      %253 = tensor.empty() : tensor<8x8x8xi64>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%253 : tensor<8x8x8xi64>) {
      ^bb0(%out: i64):
        %260 = index.divu %c15, %161
        %261 = math.expm1 %reduced : tensor<8xf32>
        %262 = arith.shli %extracted_31, %extracted_31 : i1
        memref.copy %alloc, %alloc_10 : memref<10xi32> to memref<10xi32>
        %263 = math.powf %extracted_29, %cst_1 : f32
        %264 = arith.remsi %true, %extracted_21 : i1
        %265 = arith.addf %cst_3, %cst_3 : f16
        %266 = arith.remf %cst_2, %cst_2 : f16
        %267 = math.log1p %8 : tensor<8x11xf32>
        %268 = memref.atomic_rmw andi %c486122104_i32, %62[%c1] : (i32, memref<10xi32>) -> i32
        %269 = arith.divsi %c1192060489_i64, %c1192060489_i64 : i64
        memref.copy %alloc_16, %alloc_12 : memref<10xf32> to memref<10xf32>
        %270 = vector.multi_reduction <maxsi>, %109, %extracted_23 [0] : vector<11xi32> to i32
        %271 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d2, d2, d1 + d2, d2)>(%c5, %c2, %132, %c1)
        %splat_45 = tensor.splat %true_24 : tensor<10xi1>
        %272 = math.ceil %1 : tensor<8x11xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %73, %c486122104_i32 : vector<11xi32>, vector<11xi32> into i32
        %274 = bufferization.to_tensor %alloc_8 : memref<10xi32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %187, %188, %c486122104_i32 : vector<8xi32>, vector<8xi32> into i32
        %276 = math.powf %cst, %cst_0 : f32
        %rank_46 = tensor.rank %13 : tensor<8x11xi1>
        %277 = math.absf %1 : tensor<8x11xf32>
        %alloc_47 = memref.alloc() : memref<8x11xi16>
        memref.tensor_store %46, %alloc_47 : memref<8x11xi16>
        memref.assume_alignment %alloc_10, 1 : memref<10xi32>
        %278 = arith.floordivsi %false_32, %false_25 : i1
        %279 = math.copysign %cst_2, %cst_3 : f16
        %alloc_48 = memref.alloc() : memref<8x11xi32>
        memref.copy %alloc_7, %alloc_48 : memref<8x11xi32> to memref<8x11xi32>
        %280 = index.ceildivu %c13, %260
        %281 = index.mul %159, %271
        %282 = math.ctpop %160 : tensor<8x11xi64>
        %collapsed_49 = tensor.collapse_shape %160 [[0, 1]] : tensor<8x11xi64> into tensor<88xi64>
        %283 = vector.reduction <maxui>, %165 : vector<8xi1> into i1
        linalg.yield %c1192060489_i64 : i64
      } -> tensor<8x8x8xi64>
      %255 = math.absf %5 : tensor<8x11xf32>
      bufferization.dealloc_tensor %14 : tensor<10xi16>
      %256 = index.ceildivu %25, %c5
      %257 = math.ctpop %c-31560_i16 : i16
      %258 = index.sub %106, %53
      %259 = arith.shrui %c-31560_i16, %c32383_i16 : i16
      %rank_44 = tensor.rank %4 : tensor<10xi1>
      scf.yield %188 : vector<8xi32>
    }
    %201 = arith.cmpf ueq, %cst_1, %cst_4 : f32
    %202 = math.tan %collapsed : tensor<88xf32>
    %203 = math.tanh %1 : tensor<8x11xf32>
    %204 = arith.shrui %c486122104_i32, %c154354586_i32 : i32
    %205 = index.floordivs %c5, %c7
    %206 = index.floordivs %c9, %132
    %207 = math.cos %cst_1 : f32
    %208 = math.roundeven %5 : tensor<8x11xf32>
    memref.copy %alloc_12, %alloc_6 : memref<10xf32> to memref<10xf32>
    %209 = affine.load %alloc_7[%c13, %c2] : memref<8x11xi32>
    %210 = vector.shuffle %187, %73 [0, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14, 15] : vector<8xi32>, vector<11xi32>
    %211 = affine.min affine_map<(d0, d1) -> (d0, d0 * 128)>(%53, %147)
    %212 = arith.divsi %extracted, %extracted : i16
    %213 = vector.splat %181 : vector<8x8x8xindex>
    %214 = math.expm1 %collapsed_35 : tensor<88xf32>
    %alloc_36 = memref.alloc() : memref<8x11xi1>
    memref.tensor_store %13, %alloc_36 : memref<8x11xi1>
    %215 = arith.negf %cst_0 : f32
    %216 = vector.multi_reduction <or>, %73, %109 [] : vector<11xi32> to vector<11xi32>
    %217 = arith.remui %c1911719112_i64, %c1939014484_i64 : i64
    %218 = scf.while (%arg1 = %alloc_19) : (memref<8x11xf32>) -> memref<8x11xf32> {
      %245 = vector.create_mask %c8 : vector<10xi1>
      %246 = arith.xori %extracted, %extracted_27 : i16
      %247 = math.roundeven %5 : tensor<8x11xf32>
      %248 = index.ceildivu %c5, %c8
      %249 = arith.maxf %cst, %cst_4 : f32
      %250 = affine.if affine_set<(d0) : ((d0 ceildiv 16) * -4 == 0, d0 == 0, d0 ceildiv 16 == 0)>(%c4) -> memref<8x8x8xi1> {
        %253 = math.absi %15 : tensor<8x11xi1>
        %254 = arith.divf %cst_1, %cst_0 : f32
        %255 = arith.maxui %extracted_31, %true_24 : i1
        %256 = vector.shuffle %179, %109 [0, 1, 2, 3, 5, 6, 7, 9, 10, 11, 13, 19, 20] : vector<11xi32>, vector<11xi32>
        %257 = vector.shuffle %165, %245 [2, 3, 7, 8, 9, 12, 14, 15, 16] : vector<8xi1>, vector<10xi1>
        %258 = arith.ori %c-31560_i16, %extracted : i16
        %259 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - ((d3 - d1) floordiv 64 + d3 + 8), d2, d0, d1 - 1)>(%64, %147, %c2, %248)
        %260 = vector.transpose %165, [0] : vector<8xi1> to vector<8xi1>
        affine.yield %alloc_18 : memref<8x8x8xi1>
      } else {
        %253 = math.rsqrt %cst_2 : f16
        %254 = vector.shuffle %179, %179 [1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 15, 17, 19, 20] : vector<11xi32>, vector<11xi32>
        %255 = vector.matrix_multiply %190, %20 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 11 : i32} : (vector<8xi32>, vector<11xi32>) -> vector<88xi32>
        %256 = vector.matrix_multiply %187, %188 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
        %257 = arith.andi %false_32, %false : i1
        %258 = vector.extract %165[3] : vector<8xi1>
        %259 = arith.remui %c486122104_i32, %extracted_23 : i32
        %260 = math.rsqrt %cst_3 : f16
        affine.yield %alloc_18 : memref<8x8x8xi1>
      }
      %251 = vector.transpose %179, [0] : vector<11xi32> to vector<11xi32>
      %252 = scf.execute_region -> vector<8x11xi1> {
        %253 = math.atan2 %5, %1 : tensor<8x11xf32>
        %254 = vector.extract %245[4] : vector<10xi1>
        memref.store %c1939014484_i64, %alloc_15[%c5, %c4] : memref<8x11xi64>
        %255 = memref.load %135[%c0] : memref<10xi32>
        %256 = math.tanh %9 : tensor<8x11xf32>
        %257 = affine.load %alloc_19[%c4, %c6] : memref<8x11xf32>
        %258 = math.ctpop %true : i1
        %259 = arith.subi %c1911719112_i64, %c1911719112_i64 : i64
        %260 = math.log1p %cst_1 : f32
        %261 = arith.addi %c486122104_i32, %c486122104_i32 : i32
        %262 = math.floor %19 : tensor<8xf32>
        %263 = math.fma %cst_2, %cst_3, %cst_2 : f16
        %264 = arith.ceildivsi %true_24, %false_32 : i1
        %265 = arith.ceildivsi %c1939014484_i64, %extracted_22 : i64
        %266 = arith.minsi %true_24, %true_24 : i1
        %rank_44 = tensor.rank %18 : tensor<10xi32>
        scf.yield %92 : vector<8x11xi1>
      }
      scf.condition(%true) %alloc_9 : memref<8x11xf32>
    } do {
    ^bb0(%arg1: memref<8x11xf32>):
      %245 = arith.shrui %true, %true : i1
      %splat_44 = tensor.splat %false : tensor<8x8x8xi1>
      %246 = arith.divsi %c154354586_i32, %209 : i32
      %247 = math.cos %5 : tensor<8x11xf32>
      %generated_45 = tensor.generate %104, %147 {
      ^bb0(%arg2: index, %arg3: index):
        %258 = arith.divf %cst, %cst_0 : f32
        %259 = vector.extract %20[7] : vector<11xi32>
        %alloc_49 = memref.alloc() : memref<11x10xf32>
        %260 = tensor.empty() : tensor<8x10xf32>
        %261 = linalg.matmul ins(%5, %alloc_49 : tensor<8x11xf32>, memref<11x10xf32>) outs(%260 : tensor<8x10xf32>) -> tensor<8x10xf32>
        %262 = index.casts %28 : index to i32
        tensor.yield %true : i1
      } : tensor<?x?xi1>
      %248 = arith.andi %extracted_27, %extracted : i16
      %249 = tensor.empty() : tensor<11x8xi64>
      %250 = tensor.empty() : tensor<8x8xi64>
      %251 = linalg.matmul ins(%11, %249 : tensor<8x11xi64>, tensor<11x8xi64>) outs(%250 : tensor<8x8xi64>) -> tensor<8x8xi64>
      %252 = vector.matrix_multiply %20, %73 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
      %true_46 = index.bool.constant true
      %253 = vector.broadcast %true : i1 to vector<11xi1>
      %dest_47, %accumulated_value_48 = vector.scan <add>, %92, %253 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
      affine.store %true_46, %alloc_18[%c3, %c5, %c6] : memref<8x8x8xi1>
      %254 = index.divs %75, %c11
      %255 = index.maxu %104, %c9
      %c864766367_i32 = arith.constant 864766367 : i32
      %256 = index.sub %rank_34, %43
      %257 = arith.minsi %extracted_31, %true : i1
      scf.yield %alloc_9 : memref<8x11xf32>
    }
    %219 = arith.divui %c1939014484_i64, %c1192060489_i64 : i64
    %220 = arith.addf %cst, %extracted_29 : f32
    %221 = vector.transpose %127, [0] : vector<10xi1> to vector<10xi1>
    %extracted_37 = tensor.extract %12[%c0, %c2] : tensor<8x11xi64>
    %222 = math.expm1 %19 : tensor<8xf32>
    bufferization.dealloc_tensor %generated_28 : tensor<?x11xf32>
    %223 = arith.maxf %extracted_29, %cst_1 : f32
    %224 = tensor.empty() : tensor<8x8x8xi64>
    %alloc_38 = memref.alloc() : memref<8x8xi64>
    %alloc_39 = memref.alloc() : memref<8xi64>
    %225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38, %alloc_39 : memref<8x8xi64>, memref<8xi64>) outs(%224 : tensor<8x8x8xi64>) {
    ^bb0(%in: i64, %in_44: i64, %out: i64):
      %245 = index.mul %c2, %c1
      %246 = arith.subi %false_32, %extracted_31 : i1
      %247 = bufferization.to_tensor %alloc_6 : memref<10xf32>
      %248 = arith.cmpf one, %cst_0, %extracted_29 : f32
      scf.execute_region {
        %277 = arith.divui %true, %extracted_21 : i1
        memref.copy %alloc_8, %alloc : memref<10xi32> to memref<10xi32>
        %278 = vector.broadcast %extracted_29 : f32 to vector<10xf32>
        %279 = vector.fma %278, %278, %278 : vector<10xf32>
        %280 = vector.broadcast %159 : index to vector<10xindex>
        vector.scatter %alloc_18[%c7, %c2, %c7] [%280], %127, %127 : memref<8x8x8xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %281 = index.divs %39, %c3
        %282 = vector.transpose %109, [0] : vector<11xi32> to vector<11xi32>
        %283 = arith.minf %cst_0, %extracted_29 : f32
        %284 = vector.broadcast %extracted_23 : i32 to vector<i32>
        vector.transfer_write %284, %alloc_20[%181] : vector<i32>, memref<10xi32>
        %285 = vector.extract %165[6] : vector<8xi1>
        %286 = index.maxu %c7, %106
        %extracted_49 = tensor.extract %6[%c8] : tensor<10xi32>
        %287 = vector.bitcast %92 : vector<8x11xi1> to vector<8x11xi1>
        %288 = vector.reduction <add>, %73 : vector<11xi32> into i32
        %289 = math.atan2 %5, %1 : tensor<8x11xf32>
        %290 = vector.broadcast %cst_3 : f16 to vector<f16>
        vector.transfer_write %290, %alloc_17[%28] : vector<f16>, memref<10xf16>
        %291 = math.log %cst_4 : f32
        scf.yield
      }
      %249 = math.roundeven %1 : tensor<8x11xf32>
      %250 = arith.negf %extracted_29 : f32
      %251 = math.expm1 %247 : tensor<10xf32>
      %252 = math.log2 %9 : tensor<8x11xf32>
      %253 = index.add %c2, %c9
      %254 = arith.remui %in, %extracted_37 : i64
      %255 = bufferization.clone %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
      %256 = math.fma %1, %5, %9 : tensor<8x11xf32>
      %257 = index.divu %106, %c5
      %258 = bufferization.clone %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
      %alloc_45 = memref.alloc() : memref<11x11xi16>
      %259 = tensor.empty() : tensor<8x11xi16>
      %260 = linalg.matmul ins(%46, %alloc_45 : tensor<8x11xi16>, memref<11x11xi16>) outs(%259 : tensor<8x11xi16>) -> tensor<8x11xi16>
      %261 = vector.bitcast %187 : vector<8xi32> to vector<8xi32>
      %262 = vector.broadcast %cst_0 : f32 to vector<8x11xf32>
      %263 = vector.fma %262, %262, %262 : vector<8x11xf32>
      %264 = index.maxu %37, %106
      %265 = math.cttz %3 : tensor<8x11xi1>
      %266 = bufferization.to_tensor %alloc_20 : memref<10xi32>
      %267 = arith.minf %extracted_29, %cst_1 : f32
      %268 = math.log2 %reduced : tensor<8xf32>
      %269 = math.expm1 %cst_3 : f16
      %270 = arith.maxui %in, %c1192060489_i64 : i64
      %271 = tensor.empty() : tensor<8x8x8xi64>
      %alloc_46 = memref.alloc() : memref<8xi64>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<8xi64>) outs(%271 : tensor<8x8x8xi64>) {
      ^bb0(%in_49: i64, %out_50: i64):
        %true_51 = index.bool.constant true
        %277 = arith.remf %cst_3, %cst_3 : f16
        %278 = memref.realloc %alloc_8 : memref<10xi32> to memref<11xi32>
        bufferization.dealloc_tensor %2 : tensor<8x11xi16>
        %279 = math.log %extracted_29 : f32
        %280 = arith.negf %extracted_29 : f32
        %281 = index.divu %39, %147
        %282 = math.rsqrt %cst_3 : f16
        %283 = vector.extract %263[3] : vector<8x11xf32>
        %284 = vector.extract %92[5] : vector<8x11xi1>
        %extracted_52 = tensor.extract %15[%c4, %c2] : tensor<8x11xi1>
        %285 = arith.shrui %true, %true_24 : i1
        %286 = arith.divui %extracted_23, %c486122104_i32 : i32
        %287 = math.roundeven %9 : tensor<8x11xf32>
        %inserted_53 = tensor.insert %c-31560_i16 into %splat[%c2, %c8] : tensor<8x11xi16>
        %splat_54 = tensor.splat %extracted : tensor<8x8x8xi16>
        %288 = arith.subi %in_49, %out : i64
        %289 = math.ceil %5 : tensor<8x11xf32>
        %290 = bufferization.clone %alloc_17 : memref<10xf16> to memref<10xf16>
        %291 = math.tanh %cst_1 : f32
        %292 = math.tan %5 : tensor<8x11xf32>
        %293 = math.round %9 : tensor<8x11xf32>
        %294 = arith.addf %cst_2, %cst_3 : f16
        %295 = math.copysign %8, %9 : tensor<8x11xf32>
        %296 = math.log10 %247 : tensor<10xf32>
        %297 = vector.splat %161 : vector<10xindex>
        %298 = affine.apply affine_map<(d0, d1) -> (d1 - 56)>(%c14, %43)
        %299 = arith.ceildivsi %extracted_22, %in_49 : i64
        %extracted_55 = tensor.extract %11[%c3, %c8] : tensor<8x11xi64>
        %300 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 mod 64 - d3) * 4, d2 mod 64, (d2 mod 64 - d3) * 128)>(%c5, %298, %211, %39)
        %cst_56 = arith.constant 1.000000e+00 : f32
        %301 = vector.transfer_read %alloc_12[%25], %cst_56 : memref<10xf32>, vector<f32>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %109, %179, %c486122104_i32 : vector<11xi32>, vector<11xi32> into i32
        linalg.yield %in : i64
      } -> tensor<8x8x8xi64>
      %true_47 = index.bool.constant true
      %273 = math.rsqrt %1 : tensor<8x11xf32>
      %274 = arith.floordivsi %out, %c1192060489_i64 : i64
      %275 = vector.shuffle %20, %20 [1, 7, 8, 9, 10, 12, 18, 19, 20, 21] : vector<11xi32>, vector<11xi32>
      %276 = math.ctlz %extracted_23 : i32
      %extracted_48 = tensor.extract %9[%c0, %c0] : tensor<8x11xf32>
      linalg.yield %c1939014484_i64 : i64
    } -> tensor<8x8x8xi64>
    %226 = vector.multi_reduction <maxui>, %117, %117 [] : vector<8x11xi1> to vector<8x11xi1>
    %227 = math.log10 %8 : tensor<8x11xf32>
    %collapsed_40 = tensor.collapse_shape %9 [[0, 1]] : tensor<8x11xf32> into tensor<88xf32>
    memref.copy %alloc_9, %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
    %228 = math.absf %collapsed_40 : tensor<88xf32>
    %229 = arith.addf %cst, %cst_1 : f32
    %230 = math.roundeven %9 : tensor<8x11xf32>
    %231 = vector.extract %165[3] : vector<8xi1>
    %232 = vector.broadcast %extracted_21 : i1 to vector<11xi1>
    %dest, %accumulated_value = vector.scan <or>, %92, %232 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
    %233 = math.cos %8 : tensor<8x11xf32>
    %234 = vector.insert %false_32, %127 [5] : i1 into vector<10xi1>
    bufferization.dealloc_tensor %2 : tensor<8x11xi16>
    %235 = index.sub %c0, %c14
    %236 = arith.ori %c32383_i16, %extracted_27 : i16
    %237 = arith.andi %c32383_i16, %c-31560_i16 : i16
    %238 = arith.divui %false, %false_32 : i1
    %239 = arith.maxui %extracted_21, %false : i1
    %240 = arith.maxui %extracted_22, %c1911719112_i64 : i64
    %241 = tensor.empty(%104) : tensor<?x11xf32>
    %242 = linalg.copy ins(%generated_28 : tensor<?x11xf32>) outs(%241 : tensor<?x11xf32>) -> tensor<?x11xf32>
    %alloc_41 = memref.alloc() : memref<11x8xi64>
    linalg.transpose ins(%11 : tensor<8x11xi64>) outs(%alloc_41 : memref<11x8xi64>) permutation = [1, 0] 
    %243 = tensor.empty() : tensor<i1>
    %reduced_42 = linalg.reduce ins(%alloc_14 : memref<10xi1>) outs(%243 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        affine.store %extracted_29, %alloc_16[%c8] : memref<10xf32>
        %245 = vector.transpose %188, [0] : vector<8xi32> to vector<8xi32>
        %246 = arith.negf %cst_1 : f32
        affine.store %cst_0, %alloc_12[%c5] : memref<10xf32>
        %247 = math.round %5 : tensor<8x11xf32>
        %248 = memref.load %alloc_19[%c6, %c10] : memref<8x11xf32>
        %249 = affine.load %alloc_15[%c1, %c13] : memref<8x11xi64>
        %250 = math.atan2 %collapsed_35, %collapsed : tensor<88xf32>
        %false_44 = arith.constant false
        linalg.yield %false_44 : i1
      }
    scf.parallel (%arg1) = (%c14) to (%c2) step (%c11) {
      %245 = arith.remui %c486122104_i32, %c486122104_i32 : i32
      %246 = arith.subi %extracted_21, %false_32 : i1
      %247 = index.mul %c3, %43
      %248 = arith.subi %extracted_27, %c-31560_i16 : i16
      %249 = tensor.empty() : tensor<8x11xi64>
      %mapped_44 = linalg.map ins(%11, %0 : tensor<8x11xi64>, tensor<8x11xi64>) outs(%249 : tensor<8x11xi64>)
        (%in: i64, %in_46: i64) {
          %260 = bufferization.clone %alloc_6 : memref<10xf32> to memref<10xf32>
          %261 = arith.shrsi %extracted_23, %209 : i32
          %262 = arith.ori %c32383_i16, %c-31560_i16 : i16
          %263 = index.divs %c14, %c4
          %264 = arith.remui %c-31560_i16, %c31224_i16 : i16
          memref.copy %alloc_6, %alloc_12 : memref<10xf32> to memref<10xf32>
          %265 = math.log2 %collapsed : tensor<88xf32>
          %266 = vector.matrix_multiply %190, %187 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
          %267 = index.sub %106, %c11
          %268 = index.add %182, %104
          %269 = math.fma %1, %9, %9 : tensor<8x11xf32>
          %270 = bufferization.clone %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
          %271 = index.castu %c1911719112_i64 : i64 to index
          %272 = arith.shrsi %c-31560_i16, %c-31560_i16 : i16
          %273 = arith.subi %false, %true : i1
          %274 = memref.load %alloc_16[%c7] : memref<10xf32>
          %275 = bufferization.to_tensor %alloc_9 : memref<8x11xf32>
          %276 = vector.broadcast %extracted_21 : i1 to vector<11xi1>
          %dest_47, %accumulated_value_48 = vector.scan <maxsi>, %92, %276 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
          %277 = math.fma %collapsed, %collapsed_40, %collapsed : tensor<88xf32>
          %cst_49 = arith.constant 0x4DFF7EA5 : f32
          %278 = arith.andi %extracted_27, %c31224_i16 : i16
          %279 = math.log2 %collapsed_40 : tensor<88xf32>
          %280 = vector.shuffle %92, %117 [1, 4, 6, 7, 8, 9, 10, 12] : vector<8x11xi1>, vector<8x11xi1>
          %281 = math.absi %3 : tensor<8x11xi1>
          %282 = math.ctpop %21 : tensor<i32>
          %283 = vector.splat %c9 : vector<8x8x8xindex>
          %284 = vector.shuffle %73, %179 [2, 5, 6, 10, 11, 13, 15, 16, 17, 20] : vector<11xi32>, vector<11xi32>
          %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %266, %266, %c154354586_i32 : vector<1xi32>, vector<1xi32> into i32
          %286 = arith.ceildivsi %extracted_37, %c1939014484_i64 : i64
          %287 = math.powf %19, %reduced : tensor<8xf32>
          %288 = index.ceildivu %c12, %159
          %289 = math.absf %5 : tensor<8x11xf32>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %250 = math.ceil %extracted_29 : f32
      %251 = arith.addi %c31224_i16, %extracted : i16
      %252 = memref.realloc %alloc_10 : memref<10xi32> to memref<8xi32>
      %253 = vector.flat_transpose %190 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
      %254 = index.divu %182, %75
      %255 = arith.divui %false_32, %extracted_21 : i1
      %256 = math.exp %cst_4 : f32
      %257 = scf.execute_region -> i16 {
        %260 = arith.minsi %c1911719112_i64, %extracted_22 : i64
        %c983452714_i64 = arith.constant 983452714 : i64
        %261 = vector.insertelement %c154354586_i32, %109[%37 : index] : vector<11xi32>
        %262 = index.casts %rank : index to i32
        %263 = arith.negf %extracted_29 : f32
        %264 = bufferization.clone %alloc_19 : memref<8x11xf32> to memref<8x11xf32>
        %265 = math.log10 %19 : tensor<8xf32>
        %266 = math.ipowi %130, %95 : tensor<10xi32>
        %267 = math.fma %extracted_29, %extracted_29, %cst_0 : f32
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %127, %127, %true : vector<10xi1>, vector<10xi1> into i1
        %269 = tensor.empty() : tensor<10xi32>
        %270 = bufferization.clone %alloc_14 : memref<10xi1> to memref<10xi1>
        %false_46 = index.bool.constant false
        %271 = vector.reduction <mul>, %73 : vector<11xi32> into i32
        %272 = math.absf %cst_3 : f16
        memref.tensor_store %6, %alloc_20 : memref<10xi32>
        scf.yield %c31224_i16 : i16
      }
      bufferization.dealloc_tensor %transposed : tensor<10xi32>
      %258 = tensor.empty() : tensor<8x11xi64>
      %mapped_45 = linalg.map ins(%249 : tensor<8x11xi64>) outs(%258 : tensor<8x11xi64>)
        (%in: i64) {
          %extracted_46 = tensor.extract %242[%c0, %c9] : tensor<?x11xf32>
          %rank_47 = tensor.rank %2 : tensor<8x11xi16>
          %260 = arith.cmpi ule, %c1939014484_i64, %c1911719112_i64 : i64
          %261 = bufferization.to_tensor %alloc_7 : memref<8x11xi32>
          %262 = math.cttz %160 : tensor<8x11xi64>
          %263 = index.mul %c11, %161
          %264 = math.round %collapsed_40 : tensor<88xf32>
          %265 = arith.remf %cst, %cst_1 : f32
          %true_48 = index.bool.constant true
          %266 = bufferization.to_memref %2 : memref<8x11xi16>
          %rank_49 = tensor.rank %18 : tensor<10xi32>
          %267 = math.tanh %cst : f32
          %268 = index.add %132, %c4
          %269 = arith.maxui %c31224_i16, %extracted : i16
          %270 = arith.remsi %c32383_i16, %c31224_i16 : i16
          %271 = arith.divf %extracted_46, %cst_4 : f32
          %272 = arith.divf %cst_3, %cst_2 : f16
          %273 = tensor.empty(%181, %247, %c6) : tensor<?x?x?xf16>
          %274 = arith.divsi %extracted_21, %false_25 : i1
          %275 = vector.broadcast %in : i64 to vector<8x11xi64>
          %276 = vector.reduction <add>, %20 : vector<11xi32> into i32
          %277 = index.casts %true : i1 to index
          memref.store %209, %135[%c4] : memref<10xi32>
          %278 = math.fma %1, %8, %5 : tensor<8x11xf32>
          %279 = vector.broadcast %cst_3 : f16 to vector<8x11xf16>
          %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %188, %190, %c154354586_i32 : vector<8xi32>, vector<8xi32> into i32
          memref.assume_alignment %alloc_10, 1 : memref<10xi32>
          %281 = index.mul %64, %c0
          %282 = vector.reduction <maxsi>, %127 : vector<10xi1> into i1
          %283 = index.mul %c5, %132
          %alloc_50 = memref.alloc() : memref<11x10xf32>
          %284 = tensor.empty() : tensor<8x10xf32>
          %285 = linalg.matmul ins(%1, %alloc_50 : tensor<8x11xf32>, memref<11x10xf32>) outs(%284 : tensor<8x10xf32>) -> tensor<8x10xf32>
          %286 = arith.minf %cst_4, %cst : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %259 = math.ctpop %extracted_22 : i64
      scf.yield
    }
    %244 = affine.vector_load %alloc_6[%25] : memref<10xf32>, vector<10xf32>
    affine.vector_store %165, %alloc_18[%64, %147, %c7] : memref<8x8x8xi1>, vector<8xi1>
    vector.print %20 : vector<11xi32>
    vector.print %73 : vector<11xi32>
    vector.print %92 : vector<8x11xi1>
    vector.print %109 : vector<11xi32>
    vector.print %117 : vector<8x11xi1>
    vector.print %121 : vector<i32>
    vector.print %127 : vector<10xi1>
    vector.print %165 : vector<8xi1>
    vector.print %179 : vector<11xi32>
    vector.print %187 : vector<8xi32>
    vector.print %188 : vector<8xi32>
    vector.print %190 : vector<8xi32>
    vector.print %244 : vector<10xf32>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %c32383_i16 : i16
    vector.print %c154354586_i32 : i32
    vector.print %c1911719112_i64 : i64
    vector.print %true : i1
    vector.print %c486122104_i32 : i32
    vector.print %c-31560_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1939014484_i64 : i64
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c31224_i16 : i16
    vector.print %c1192060489_i64 : i64
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %extracted : i16
    vector.print %extracted_21 : i1
    vector.print %extracted_22 : i64
    vector.print %extracted_23 : i32
    vector.print %true_24 : i1
    vector.print %false_25 : i1
    vector.print %extracted_27 : i16
    vector.print %extracted_29 : f32
    vector.print %extracted_31 : i1
    vector.print %false_32 : i1
    vector.print %209 : i32
    vector.print %extracted_37 : i64
    %alloc_43 = memref.alloc() : memref<8x11xi16>
    return %alloc_43 : memref<8x11xi16>
  }
}
