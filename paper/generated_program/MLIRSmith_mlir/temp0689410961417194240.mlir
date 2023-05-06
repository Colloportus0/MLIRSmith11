module {
  func.func nested @func1(%arg0: f16, %arg1: tensor<3x3x12xi32>, %arg2: tensor<4x4xi1>) -> vector<4x4xi32> {
    %cst = arith.constant 3.788000e+03 : f16
    %true = arith.constant true
    %c2033627837_i32 = arith.constant 2033627837 : i32
    %c355998698_i64 = arith.constant 355998698 : i64
    %c531600830_i32 = arith.constant 531600830 : i32
    %c10137_i16 = arith.constant 10137 : i16
    %c1912650803_i64 = arith.constant 1912650803 : i64
    %c1899122811_i32 = arith.constant 1899122811 : i32
    %true_0 = arith.constant true
    %true_1 = arith.constant true
    %true_2 = arith.constant true
    %cst_3 = arith.constant 2.353600e+04 : f16
    %cst_4 = arith.constant 1.365600e+04 : f16
    %cst_5 = arith.constant 4.099200e+04 : f16
    %c1699623064_i32 = arith.constant 1699623064 : i32
    %c171926140_i32 = arith.constant 171926140 : i32
    %0 = tensor.empty() : tensor<4xf16>
    %1 = tensor.empty() : tensor<4xi64>
    %2 = tensor.empty() : tensor<4x4xf32>
    %3 = tensor.empty() : tensor<4xf32>
    %4 = tensor.empty() : tensor<4x4xi64>
    %5 = tensor.empty() : tensor<4xi1>
    %6 = tensor.empty() : tensor<12x4xf16>
    %7 = tensor.empty() : tensor<12x4xi64>
    %8 = tensor.empty() : tensor<3x3x12xi1>
    %9 = tensor.empty() : tensor<4x4xi32>
    %10 = tensor.empty() : tensor<3x3x12xi32>
    %11 = tensor.empty() : tensor<12x4xi64>
    %12 = tensor.empty() : tensor<12x4xi1>
    %13 = tensor.empty() : tensor<4x4xf32>
    %14 = tensor.empty() : tensor<3x3x12xi16>
    %15 = tensor.empty() : tensor<12x4xi32>
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
    %alloc = memref.alloc() : memref<3x3x12xi1>
    %alloc_6 = memref.alloc() : memref<4x4xf16>
    %alloc_7 = memref.alloc() : memref<4xf32>
    %alloc_8 = memref.alloc() : memref<3x3x12xf16>
    %alloc_9 = memref.alloc() : memref<12x4xi64>
    %alloc_10 = memref.alloc() : memref<12x4xi32>
    %alloc_11 = memref.alloc() : memref<12x4xf32>
    %alloc_12 = memref.alloc() : memref<12x4xf16>
    %alloc_13 = memref.alloc() : memref<3x3x12xi1>
    %alloc_14 = memref.alloc() : memref<12x4xf16>
    %alloc_15 = memref.alloc() : memref<12x4xi1>
    %alloc_16 = memref.alloc() : memref<4xf16>
    %alloc_17 = memref.alloc() : memref<4x4xi1>
    %alloc_18 = memref.alloc() : memref<4x4xf16>
    %alloc_19 = memref.alloc() : memref<3x3x12xi16>
    %alloc_20 = memref.alloc() : memref<12x4xi16>
    %16 = tensor.empty() : tensor<4xi64>
    %17 = linalg.copy ins(%1 : tensor<4xi64>) outs(%16 : tensor<4xi64>) -> tensor<4xi64>
    %18 = tensor.empty() : tensor<4xi64>
    %transposed = linalg.transpose ins(%1 : tensor<4xi64>) outs(%18 : tensor<4xi64>) permutation = [0] 
    %19 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%11 : tensor<12x4xi64>) outs(%19 : tensor<i64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        %246 = vector.broadcast %true_2 : i1 to vector<12x4xi1>
        %247 = vector.broadcast %c171926140_i32 : i32 to vector<12x4xi32>
        %248 = vector.gather %alloc_17[%c5, %c8] [%247], %246, %246 : memref<4x4xi1>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xi1> into vector<12x4xi1>
        %249 = arith.subi %true_1, %true_2 : i1
        %250 = arith.cmpf une, %cst, %cst_5 : f16
        %251 = vector.broadcast %cst_3 : f16 to vector<3xf16>
        %252 = vector.broadcast %true : i1 to vector<3xi1>
        %253 = vector.maskedload %alloc_18[%c1, %c3], %252, %251 : memref<4x4xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %254 = math.tanh %3 : tensor<4xf32>
        %255 = arith.minf %cst_5, %cst : f16
        %256 = index.divu %c5, %c15
        %splat_49 = tensor.splat %c1899122811_i32 : tensor<4x4xi32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg3, %arg4) = (%c11, %c4) to (%c15, %c10) step (%c9, %c2) {
      %246 = math.log10 %13 : tensor<4x4xf32>
      %247 = vector.broadcast %c1912650803_i64 : i64 to vector<3x3x12xi64>
      %cst_49 = arith.constant 1.000000e+00 : f32
      %248 = vector.broadcast %cst_49 : f32 to vector<4xf32>
      %249 = vector.fma %248, %248, %248 : vector<4xf32>
      bufferization.dealloc_tensor %6 : tensor<12x4xf16>
      %from_elements_50 = tensor.from_elements %true_0, %true, %true_0, %true_1, %true_2, %true, %true, %true_1, %true_1, %true, %true, %true_2, %true_1, %true_2, %true_2, %true : tensor<4x4xi1>
      %250 = arith.cmpi sgt, %true_0, %true_2 : i1
      %251 = vector.extract %248[0] : vector<4xf32>
      %252 = arith.maxui %c355998698_i64, %c1912650803_i64 : i64
      %253 = bufferization.to_memref %14 : memref<3x3x12xi16>
      %254 = math.tanh %cst_49 : f32
      %255 = arith.cmpf oge, %cst_3, %cst_4 : f16
      %collapsed_51 = tensor.collapse_shape %15 [[0, 1]] : tensor<12x4xi32> into tensor<48xi32>
      %256 = arith.divf %cst_49, %cst_49 : f32
      bufferization.dealloc_tensor %14 : tensor<3x3x12xi16>
      %257 = vector.shuffle %247, %247 [1, 3] : vector<3x3x12xi64>, vector<3x3x12xi64>
      %258 = tensor.empty() : tensor<12xi16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %253 : tensor<12xi16>, memref<3x3x12xi16>) outs(%14 : tensor<3x3x12xi16>) {
      ^bb0(%in: i16, %in_52: i16, %out: i16):
        %261 = math.expm1 %3 : tensor<4xf32>
        %262 = bufferization.clone %alloc_8 : memref<3x3x12xf16> to memref<3x3x12xf16>
        %263 = math.exp2 %cst : f16
        %cast = tensor.cast %9 : tensor<4x4xi32> to tensor<?x?xi32>
        %264 = arith.divf %cst_49, %cst_49 : f32
        %265 = arith.cmpi ule, %true_1, %true_1 : i1
        %266 = vector.broadcast %true_1 : i1 to vector<4x4xi1>
        %267 = vector.transfer_write %266, %8[%c6, %c8, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x4xi1>, tensor<3x3x12xi1>
        %268 = index.ceildivu %c10, %c1
        %269 = vector.transpose %266, [1, 0] : vector<4x4xi1> to vector<4x4xi1>
        %270 = index.floordivs %c13, %c15
        %271 = math.cos %2 : tensor<4x4xf32>
        %272 = arith.negf %cst_49 : f32
        %273 = affine.max affine_map<(d0, d1, d2) -> (d0, -d2 + d0 ceildiv 32 - 1, d1 mod 2 - 2)>(%arg3, %c6, %c1)
        %274 = vector.broadcast %cst : f16 to vector<12xf16>
        %275 = vector.broadcast %true_1 : i1 to vector<12xi1>
        %276 = vector.maskedload %alloc_18[%c1, %c2], %275, %274 : memref<4x4xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %277 = vector.broadcast %cst_49 : f32 to vector<4x4xf32>
        %278 = vector.outerproduct %249, %249, %277 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
        %279 = math.exp2 %6 : tensor<12x4xf16>
        %280 = vector.insert %cst_49, %248 [1] : f32 into vector<4xf32>
        bufferization.dealloc_tensor %cast : tensor<?x?xi32>
        %281 = math.absi %1 : tensor<4xi64>
        %282 = index.mul %c4, %270
        %283 = arith.shli %c2033627837_i32, %c171926140_i32 : i32
        %splat_53 = tensor.splat %true : tensor<12x4xi1>
        %284 = vector.bitcast %247 : vector<3x3x12xi64> to vector<3x3x12xi64>
        bufferization.dealloc_tensor %9 : tensor<4x4xi32>
        %285 = arith.floordivsi %c171926140_i32, %c1899122811_i32 : i32
        %286 = math.absi %true_0 : i1
        %287 = bufferization.to_memref %17 : memref<4xi64>
        %288 = index.floordivs %c4, %c13
        %289 = arith.divui %true_0, %true_0 : i1
        %290 = arith.muli %true, %true : i1
        %291 = vector.bitcast %247 : vector<3x3x12xi64> to vector<3x3x12xi64>
        %292 = index.casts %arg3 : index to i32
        linalg.yield %in : i16
      } -> tensor<3x3x12xi16>
      %260 = bufferization.clone %alloc_8 : memref<3x3x12xf16> to memref<3x3x12xf16>
      scf.yield
    }
    %20 = affine.vector_load %alloc_12[%c11, %c15] : memref<12x4xf16>, vector<16xf16>
    affine.vector_store %20, %alloc_14[%c9, %c15] : memref<12x4xf16>, vector<16xf16>
    %21 = tensor.empty() : tensor<4xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%18, %21 : tensor<4xi64>, tensor<4xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = arith.addf %cst_4, %cst_3 : f16
    %from_elements = tensor.from_elements %cst_5, %cst_4, %cst_4, %cst : tensor<4xf16>
    %generated = tensor.generate %c2 {
    ^bb0(%arg3: index):
      %246 = math.log1p %2 : tensor<4x4xf32>
      %inserted_49 = tensor.insert %c355998698_i64 into %7[%c10, %c3] : tensor<12x4xi64>
      %247 = math.log2 %13 : tensor<4x4xf32>
      %248 = arith.mulf %cst_5, %cst_5 : f16
      tensor.yield %c355998698_i64 : i64
    } : tensor<?xi64>
    bufferization.dealloc_tensor %14 : tensor<3x3x12xi16>
    %25 = arith.remf %cst_4, %cst_5 : f16
    %26 = vector.insert %cst, %20 [11] : f16 into vector<16xf16>
    %27 = vector.broadcast %cst : f16 to vector<3xf16>
    %28 = vector.broadcast %true : i1 to vector<3xi1>
    %29 = vector.maskedload %alloc_16[%c0], %28, %27 : memref<4xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %30 = arith.remf %cst, %cst_3 : f16
    %31 = math.tan %6 : tensor<12x4xf16>
    %32 = math.roundeven %3 : tensor<4xf32>
    %33 = vector.bitcast %29 : vector<3xf16> to vector<3xf16>
    %34 = arith.mulf %cst_3, %cst_5 : f16
    %35 = vector.broadcast %c531600830_i32 : i32 to vector<4x4xi32>
    bufferization.dealloc_tensor %15 : tensor<12x4xi32>
    %36 = affine.load %alloc_8[%c11, %c11, %c4] : memref<3x3x12xf16>
    %37 = scf.while (%arg3 = %alloc_10) : (memref<12x4xi32>) -> memref<12x4xi32> {
      %246 = math.powf %from_elements, %0 : tensor<4xf16>
      %247 = arith.subi %c1912650803_i64, %c1912650803_i64 : i64
      %248 = math.absi %c1912650803_i64 : i64
      %249 = math.sqrt %cst_4 : f16
      %250 = arith.maxf %cst_4, %cst_3 : f16
      %251 = arith.maxf %36, %cst_4 : f16
      %252 = math.absf %from_elements : tensor<4xf16>
      %253 = math.ctlz %c1699623064_i32 : i32
      scf.condition(%true) %alloc_10 : memref<12x4xi32>
    } do {
    ^bb0(%arg3: memref<12x4xi32>):
      %246 = vector.transpose %29, [0] : vector<3xf16> to vector<3xf16>
      %247 = arith.negf %cst_5 : f16
      %248 = arith.shli %true, %true_0 : i1
      %249 = math.ctlz %true_0 : i1
      memref.assume_alignment %alloc_19, 2 : memref<3x3x12xi16>
      %250 = arith.remsi %true, %true : i1
      %251 = math.copysign %3, %3 : tensor<4xf32>
      %252 = scf.index_switch %c9 -> tensor<4xf32> 
      case 1 {
        %260 = math.cttz %16 : tensor<4xi64>
        %261 = math.tan %36 : f16
        %262 = vector.broadcast %36 : f16 to vector<3x3xf16>
        %263 = vector.outerproduct %29, %29, %262 {kind = #vector.kind<add>} : vector<3xf16>, vector<3xf16>
        %264 = arith.remsi %true_2, %true_2 : i1
        %265 = math.tanh %0 : tensor<4xf16>
        %266 = math.tan %13 : tensor<4x4xf32>
        %267 = arith.negf %36 : f16
        %268 = math.cos %2 : tensor<4x4xf32>
        %269 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
        %270 = vector.outerproduct %27, %29, %269 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        %271 = memref.load %alloc_14[%c3, %c1] : memref<12x4xf16>
        %272 = math.log2 %cst : f16
        %273 = vector.broadcast %c171926140_i32 : i32 to vector<4xi32>
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %35, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4xi32>, vector<4xi32>
        %274 = vector.transpose %28, [0] : vector<3xi1> to vector<3xi1>
        %275 = index.maxs %c7, %c11
        %276 = index.sub %275, %275
        %277 = arith.cmpi ugt, %true_1, %true_2 : i1
        scf.yield %3 : tensor<4xf32>
      }
      case 2 {
        %260 = math.atan2 %cst, %cst_3 : f16
        memref.assume_alignment %alloc_15, 1 : memref<12x4xi1>
        %261 = math.expm1 %2 : tensor<4x4xf32>
        %262 = arith.maxf %36, %36 : f16
        %263 = math.tanh %2 : tensor<4x4xf32>
        %264 = arith.maxf %cst_5, %cst : f16
        %265 = vector.multi_reduction <minui>, %28, %28 [] : vector<3xi1> to vector<3xi1>
        %266 = arith.shrsi %c2033627837_i32, %c1899122811_i32 : i32
        %267 = arith.mulf %cst, %cst_5 : f16
        %268 = math.absf %0 : tensor<4xf16>
        %collapsed_49 = tensor.collapse_shape %12 [[0, 1]] : tensor<12x4xi1> into tensor<48xi1>
        %269 = vector.insertelement %cst_5, %33[%c9 : index] : vector<3xf16>
        %270 = index.casts %c8 : index to i32
        %271 = math.log1p %cst_4 : f16
        %272 = vector.insertelement %true_1, %28[%c2 : index] : vector<3xi1>
        %273 = math.absf %2 : tensor<4x4xf32>
        scf.yield %3 : tensor<4xf32>
      }
      default {
        %260 = math.rsqrt %from_elements : tensor<4xf16>
        %261 = arith.cmpf oeq, %cst_4, %36 : f16
        %262 = memref.atomic_rmw maxf %36, %alloc_18[%c0, %c3] : (f16, memref<4x4xf16>) -> f16
        %263 = vector.broadcast %c1699623064_i32 : i32 to vector<4xi32>
        %264 = vector.insert %263, %35 [3] : vector<4xi32> into vector<4x4xi32>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %265 = vector.broadcast %cst_49 : f32 to vector<16xf32>
        vector.transfer_write %265, %alloc_11[%c10, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, memref<12x4xf32>
        %266 = math.log1p %6 : tensor<12x4xf16>
        %267 = arith.floordivsi %c355998698_i64, %c1912650803_i64 : i64
        memref.assume_alignment %alloc, 8 : memref<3x3x12xi1>
        %268 = arith.negf %cst : f16
        %269 = math.cos %13 : tensor<4x4xf32>
        %dest_50, %accumulated_value_51 = vector.scan <or>, %35, %263 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
        %270 = math.cos %cst : f16
        %271 = index.maxs %c9, %c10
        %extracted_52 = tensor.extract %7[%c3, %c3] : tensor<12x4xi64>
        %272 = index.maxu %c1, %c6
        %273 = vector.bitcast %35 : vector<4x4xi32> to vector<4x4xi32>
        scf.yield %3 : tensor<4xf32>
      }
      scf.if %true_2 {
        %260 = math.absi %c171926140_i32 : i32
        %261 = memref.load %arg3[%c4, %c2] : memref<12x4xi32>
        %262 = arith.minf %cst_3, %cst_4 : f16
        %263 = math.tan %2 : tensor<4x4xf32>
        %264 = bufferization.to_memref %8 : memref<3x3x12xi1>
        %265 = index.casts %c0 : index to i32
        %266 = index.maxs %c13, %c7
        %splat_49 = tensor.splat %true_2 : tensor<4xi1>
      }
      %253 = math.tan %3 : tensor<4xf32>
      %254 = vector.transpose %28, [0] : vector<3xi1> to vector<3xi1>
      %255 = vector.shuffle %33, %27 [1, 2, 3, 4, 5] : vector<3xf16>, vector<3xf16>
      %256 = math.tanh %6 : tensor<12x4xf16>
      %257 = math.log2 %2 : tensor<4x4xf32>
      %258 = math.log10 %cst_5 : f16
      %259 = vector.broadcast %c531600830_i32 : i32 to vector<12x4xi32>
      scf.yield %alloc_10 : memref<12x4xi32>
    }
    memref.tensor_store %6, %alloc_12 : memref<12x4xf16>
    %38 = math.rsqrt %0 : tensor<4xf16>
    %39 = index.maxu %c10, %c3
    %40 = index.casts %true_2 : i1 to index
    scf.if %true_2 {
      %246 = arith.shli %c355998698_i64, %c355998698_i64 : i64
      %247 = vector.broadcast %c7 : index to vector<4xindex>
      %248 = vector.broadcast %true_0 : i1 to vector<4xi1>
      vector.scatter %alloc_15[%c2, %c0] [%247], %248, %248 : memref<12x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      %249 = scf.if %true_2 -> (memref<12x4xi32>) {
        %c1_i64 = arith.constant 1 : i64
        %256 = vector.transfer_read %7[%c8, %c15], %c1_i64 : tensor<12x4xi64>, vector<12xi64>
        %257 = index.maxu %c4, %c7
        %258 = math.expm1 %13 : tensor<4x4xf32>
        %259 = arith.divui %true, %true : i1
        %260 = math.log10 %13 : tensor<4x4xf32>
        %261 = vector.broadcast %c171926140_i32 : i32 to vector<4xi32>
        %dest_50, %accumulated_value_51 = vector.scan <or>, %35, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
        %262 = math.atan2 %0, %from_elements : tensor<4xf16>
        %263 = arith.cmpf olt, %cst_4, %36 : f16
        scf.yield %alloc_10 : memref<12x4xi32>
      } else {
        %256 = vector.extract %27[2] : vector<3xf16>
        %257 = math.copysign %2, %2 : tensor<4x4xf32>
        %258 = arith.muli %c171926140_i32, %c1699623064_i32 : i32
        %259 = index.maxu %c7, %c15
        %260 = arith.cmpi sle, %c10137_i16, %c10137_i16 : i16
        %261 = vector.matrix_multiply %33, %29 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
        %262 = arith.negf %36 : f16
        %263 = vector.transpose %29, [0] : vector<3xf16> to vector<3xf16>
        scf.yield %alloc_10 : memref<12x4xi32>
      }
      %250 = math.log10 %3 : tensor<4xf32>
      %251 = affine.load %alloc_6[%c4, %c6] : memref<4x4xf16>
      %cst_49 = arith.constant 1.000000e+00 : f32
      %252 = vector.broadcast %cst_49 : f32 to vector<3x3x12xf32>
      %253 = vector.fma %252, %252, %252 : vector<3x3x12xf32>
      %254 = bufferization.clone %249 : memref<12x4xi32> to memref<12x4xi32>
      %255 = arith.maxf %cst_4, %cst_3 : f16
    }
    %41 = vector.extract_strided_slice %28 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
    %42 = index.floordivs %c15, %c5
    %generated_21 = tensor.generate %c2 {
    ^bb0(%arg3: index, %arg4: index):
      %246 = vector.extract_strided_slice %29 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf16> to vector<2xf16>
      %247 = math.cos %cst_3 : f16
      %248 = vector.insert %cst_3, %20 [12] : f16 into vector<16xf16>
      %from_elements_49 = tensor.from_elements %true, %true_0, %true_0, %true_2 : tensor<4xi1>
      %cst_50 = arith.constant 1.000000e+00 : f32
      tensor.yield %cst_50 : f32
    } : tensor<?x4xf32>
    %43 = arith.ori %c531600830_i32, %c1899122811_i32 : i32
    %44 = arith.remui %c1899122811_i32, %c531600830_i32 : i32
    %45 = math.ctlz %23 : tensor<i64>
    %46 = memref.alloca_scope  -> (memref<12x4xi32>) {
      %246 = index.add %c1, %c15
      %cst_49 = arith.constant 1.000000e+00 : f32
      %247 = vector.broadcast %cst_49 : f32 to vector<4xf32>
      %248 = vector.broadcast %true_0 : i1 to vector<4xi1>
      %249 = vector.maskedload %alloc_11[%c0, %c2], %248, %247 : memref<12x4xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %250 = math.ctlz %c1912650803_i64 : i64
      %251 = arith.subi %true_1, %true_1 : i1
      %252 = index.castu %42 : index to i32
      %253 = arith.negf %36 : f16
      %254 = arith.remui %c531600830_i32, %c2033627837_i32 : i32
      %inserted_50 = tensor.insert %c355998698_i64 into %7[%c10, %c3] : tensor<12x4xi64>
      %255 = index.divs %c6, %c6
      %256 = arith.divf %36, %cst_5 : f16
      %257 = vector.bitcast %35 : vector<4x4xi32> to vector<4x4xi32>
      %258 = arith.andi %c2033627837_i32, %c1899122811_i32 : i32
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<3x3x12xi1>) {
      ^bb0(%out: i1):
        %279 = math.log %cst : f16
        %280 = vector.transpose %41, [0] : vector<2xi1> to vector<2xi1>
        %281 = index.ceildivu %c7, %255
        %282 = math.floor %13 : tensor<4x4xf32>
        %283 = math.cttz %8 : tensor<3x3x12xi1>
        %284 = arith.shli %c171926140_i32, %c171926140_i32 : i32
        %285 = memref.load %alloc_13[%c1, %c2, %c4] : memref<3x3x12xi1>
        %286 = arith.negf %cst_49 : f32
        %287 = index.maxs %c5, %246
        %288 = vector.broadcast %out : i1 to vector<16xi1>
        %289 = vector.maskedload %alloc_14[%c9, %c1], %288, %20 : memref<12x4xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %alloca_51 = memref.alloca() : memref<3x3x12xi32>
        %290 = arith.negf %cst : f16
        %alloc_52 = memref.alloc() : memref<4xi64>
        memref.tensor_store %transposed, %alloc_52 : memref<4xi64>
        %291 = math.copysign %cst_4, %cst_3 : f16
        %292 = vector.broadcast %cst_49 : f32 to vector<4x4xf32>
        %293 = vector.fma %292, %292, %292 : vector<4x4xf32>
        %294 = math.fpowi %6, %15 : tensor<12x4xf16>, tensor<12x4xi32>
        %295 = vector.create_mask %287, %281 : vector<4x4xi1>
        %296 = math.ctlz %5 : tensor<4xi1>
        %297 = bufferization.clone %alloc_12 : memref<12x4xf16> to memref<12x4xf16>
        %298 = math.rsqrt %6 : tensor<12x4xf16>
        %299 = arith.maxsi %c1912650803_i64, %c1912650803_i64 : i64
        %300 = vector.broadcast %cst_3 : f16 to vector<f16>
        vector.transfer_write %300, %alloc_16[%246] : vector<f16>, memref<4xf16>
        %301 = vector.outerproduct %248, %248, %295 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
        %302 = arith.remf %cst_4, %cst_5 : f16
        %303 = arith.maxf %36, %cst_3 : f16
        %304 = arith.remf %cst, %cst_5 : f16
        %305 = vector.transpose %288, [0] : vector<16xi1> to vector<16xi1>
        %inserted_53 = tensor.insert %c355998698_i64 into %21[%c0] : tensor<4xi64>
        %306 = arith.remui %out, %true_1 : i1
        %from_elements_54 = tensor.from_elements %true_2, %true_0, %true, %true_1, %true_0, %out, %true_1, %true_0, %out, %true_0, %true, %true_1, %true_1, %true_2, %true, %true_1 : tensor<4x4xi1>
        %307 = affine.load %alloc_9[%c15, %c13] : memref<12x4xi64>
        %308 = affine.min affine_map<(d0, d1) -> (0, d1 mod 16 + (d0 ceildiv 4 + 32) * 4, d1 floordiv 8 + d1 - 128, d0 ceildiv 4)>(%281, %40)
        linalg.yield %true_2 : i1
      } -> tensor<3x3x12xi1>
      %260 = math.atan2 %36, %cst_3 : f16
      %261 = arith.maxf %cst_4, %cst : f16
      %262 = index.ceildivu %c4, %c2
      %263 = arith.addi %c355998698_i64, %c355998698_i64 : i64
      %264 = index.divu %c3, %255
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %247, %247, %cst_49 : vector<4xf32>, vector<4xf32> into f32
      %266 = affine.max affine_map<(d0) -> (d0 * 2)>(%255)
      %267 = arith.ori %c171926140_i32, %c1899122811_i32 : i32
      %268 = math.log2 %36 : f16
      %269 = index.divu %246, %c3
      %270 = math.exp2 %13 : tensor<4x4xf32>
      %271 = affine.for %arg3 = 0 to 57 iter_args(%arg4 = %39) -> (index) {
        affine.yield %c10 : index
      }
      %272 = math.log2 %cst_5 : f16
      %273 = math.log1p %13 : tensor<4x4xf32>
      %274 = arith.mulf %cst_5, %cst_5 : f16
      %275 = vector.splat %cst_49 : vector<4x4xf32>
      %276 = arith.subi %c10137_i16, %c10137_i16 : i16
      %277 = arith.addi %c10137_i16, %c10137_i16 : i16
      %278 = vector.extract_strided_slice %29 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf16> to vector<1xf16>
      memref.alloca_scope.return %alloc_10 : memref<12x4xi32>
    }
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<12x4xi1> into tensor<48xi1>
    %47 = affine.if affine_set<(d0, d1) : (d1 == 0, d1 - 130 >= 0, d1 - 130 == 0, d0 ceildiv 8 - (d1 - 98) == 0)>(%c3, %c7) -> i1 {
      %246 = bufferization.clone %46 : memref<12x4xi32> to memref<12x4xi32>
      vector.print %27 : vector<3xf16>
      %247 = arith.shli %c1699623064_i32, %c2033627837_i32 : i32
      %248 = vector.broadcast %true_0 : i1 to vector<12x12xi1>
      %249 = vector.transfer_write %248, %8[%42, %c6, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x12xi1>, tensor<3x3x12xi1>
      %250 = arith.maxui %c355998698_i64, %c355998698_i64 : i64
      %251 = vector.bitcast %27 : vector<3xf16> to vector<3xf16>
      %252 = math.atan %6 : tensor<12x4xf16>
      bufferization.dealloc_tensor %from_elements : tensor<4xf16>
      affine.yield %true_0 : i1
    } else {
      %246 = math.atan2 %cst_4, %36 : f16
      %247 = arith.mulf %cst_5, %36 : f16
      %248 = bufferization.clone %alloc_11 : memref<12x4xf32> to memref<12x4xf32>
      %249 = arith.addf %cst_5, %36 : f16
      %250 = math.tanh %cst_5 : f16
      %251 = math.cttz %14 : tensor<3x3x12xi16>
      %252 = math.tanh %3 : tensor<4xf32>
      %253 = vector.transpose %35, [0, 1] : vector<4x4xi32> to vector<4x4xi32>
      affine.yield %true_0 : i1
    }
    %48 = index.floordivs %c13, %c7
    %49 = affine.max affine_map<(d0, d1, d2) -> (d1 * 4 - 2, d0 + d0 + d1 - d0 - (d0 + d1 - d0))>(%c7, %c6, %c13)
    %50 = index.divu %c7, %c8
    %51 = vector.multi_reduction <mul>, %20, %20 [] : vector<16xf16> to vector<16xf16>
    %52 = index.add %c9, %c12
    %53 = math.absf %13 : tensor<4x4xf32>
    %generated_22 = tensor.generate %52, %c12 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %246 = arith.muli %c2033627837_i32, %c171926140_i32 : i32
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<3x3x12xi1>) {
      ^bb0(%out: i1):
        %250 = math.log1p %13 : tensor<4x4xf32>
        %251 = arith.floordivsi %c355998698_i64, %c355998698_i64 : i64
        %252 = math.sqrt %from_elements : tensor<4xf16>
        %253 = index.floordivs %c3, %52
        %254 = vector.extract %20[11] : vector<16xf16>
        %255 = index.maxu %52, %c9
        %alloc_49 = memref.alloc() : memref<4x4xi1>
        %256 = affine.load %alloc_8[%c12, %c3, %c3] : memref<3x3x12xf16>
        %257 = arith.maxf %cst, %cst_3 : f16
        %258 = math.log2 %13 : tensor<4x4xf32>
        %259 = arith.subi %c2033627837_i32, %c1899122811_i32 : i32
        %260 = math.cttz %7 : tensor<12x4xi64>
        %cst_50 = arith.constant 1.000000e+00 : f32
        %261 = vector.broadcast %cst_50 : f32 to vector<3x3x12xf32>
        %262 = vector.fma %261, %261, %261 : vector<3x3x12xf32>
        %263 = arith.maxf %256, %cst_5 : f16
        %264 = vector.splat %c0 : vector<4xindex>
        %265 = arith.muli %c1699623064_i32, %c531600830_i32 : i32
        %266 = arith.mulf %cst_4, %cst_3 : f16
        %267 = arith.remf %36, %36 : f16
        %268 = math.exp2 %13 : tensor<4x4xf32>
        %269 = vector.extract %29[2] : vector<3xf16>
        %270 = arith.muli %c2033627837_i32, %c531600830_i32 : i32
        %271 = math.powf %cst, %256 : f16
        %272 = math.atan2 %3, %3 : tensor<4xf32>
        %273 = math.log2 %0 : tensor<4xf16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %27, %27, %256 : vector<3xf16>, vector<3xf16> into f16
        %275 = math.log2 %cst_5 : f16
        %276 = arith.negf %cst_5 : f16
        %277 = math.ctpop %c355998698_i64 : i64
        %278 = arith.andi %true_1, %out : i1
        %279 = affine.load %alloc_18[%c2, %c3] : memref<4x4xf16>
        %splat_51 = tensor.splat %cst : tensor<4x4xf16>
        memref.assume_alignment %alloc_18, 2 : memref<4x4xf16>
        linalg.yield %true_2 : i1
      } -> tensor<3x3x12xi1>
      %248 = math.expm1 %cst_5 : f16
      %249 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + d1 + d2 >= 0)>(%c10, %c12, %c3, %c14) -> memref<3x3x12xf32> {
        %250 = vector.load %alloc_16[%c0] : memref<4xf16>, vector<4xf16>
        %251 = arith.shli %c1699623064_i32, %c531600830_i32 : i32
        %252 = math.log2 %cst_4 : f16
        %253 = arith.maxf %cst_4, %cst_5 : f16
        %254 = index.casts %arg5 : index to i32
        vector.print %35 : vector<4x4xi32>
        %255 = math.atan2 %13, %13 : tensor<4x4xf32>
        %256 = bufferization.to_tensor %alloc_9 : memref<12x4xi64>
        %alloc_49 = memref.alloc() : memref<3x3x12xf32>
        affine.yield %alloc_49 : memref<3x3x12xf32>
      } else {
        %250 = math.log2 %2 : tensor<4x4xf32>
        %251 = vector.matrix_multiply %27, %27 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
        bufferization.dealloc_tensor %10 : tensor<3x3x12xi32>
        %from_elements_49 = tensor.from_elements %true_1, %true, %true_2, %true_1, %true_2, %true, %true_2, %true_0, %true, %true_1, %true_0, %true_0, %true_2, %true, %true, %true_0, %true, %true_0, %true_2, %true_2, %true, %true_2, %true_1, %true_2, %true_1, %true_1, %true_1, %true_0, %true_1, %true_0, %true_0, %true_1, %true, %true_0, %true_1, %true_0, %true, %true_1, %true_0, %true_0, %true_1, %true_2, %true_1, %true_1, %true_1, %true, %true_1, %true_0 : tensor<12x4xi1>
        %splat_50 = tensor.splat %c171926140_i32 : tensor<12x4xi32>
        bufferization.dealloc_tensor %splat_50 : tensor<12x4xi32>
        %252 = vector.load %alloc[%c2, %c2, %c7] : memref<3x3x12xi1>, vector<4x4xi1>
        %expanded_51 = tensor.expand_shape %1 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %alloc_52 = memref.alloc() : memref<3x3x12xf32>
        affine.yield %alloc_52 : memref<3x3x12xf32>
      }
      tensor.yield %c531600830_i32 : i32
    } : tensor<?x?x12xi32>
    %54 = arith.ori %true_0, %true_1 : i1
    %alloc_23 = memref.alloc() : memref<12x4xi1>
    %55 = math.log %6 : tensor<12x4xf16>
    %56 = vector.broadcast %c1899122811_i32 : i32 to vector<4xi32>
    %57 = vector.insert %56, %35 [0] : vector<4xi32> into vector<4x4xi32>
    %58 = math.tan %from_elements : tensor<4xf16>
    %59 = affine.load %alloc_20[%c3, %c10] : memref<12x4xi16>
    %60 = affine.load %alloc_8[%c0, %c8, %c0] : memref<3x3x12xf16>
    %61 = math.log2 %0 : tensor<4xf16>
    %62 = arith.addf %cst_5, %60 : f16
    %63 = vector.extract_strided_slice %27 {offsets = [0], sizes = [3], strides = [1]} : vector<3xf16> to vector<3xf16>
    %64 = vector.transpose %56, [0] : vector<4xi32> to vector<4xi32>
    memref.assume_alignment %alloc, 16 : memref<3x3x12xi1>
    %dest, %accumulated_value = vector.scan <minsi>, %35, %56 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xi32>, vector<4xi32>
    %65 = math.ipowi %true_2, %true_1 : i1
    %alloca = memref.alloca() : memref<4x4xf32>
    %66 = index.divs %40, %c1
    %67 = vector.multi_reduction <and>, %56, %56 [] : vector<4xi32> to vector<4xi32>
    %68 = math.expm1 %3 : tensor<4xf32>
    %69 = math.tan %6 : tensor<12x4xf16>
    %70 = arith.addi %c10137_i16, %59 : i16
    scf.if %true_1 {
      %dest_49, %accumulated_value_50 = vector.scan <mul>, %35, %56 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xi32>, vector<4xi32>
      %246 = math.sqrt %13 : tensor<4x4xf32>
      %247 = math.sqrt %cst_4 : f16
      %248 = index.add %c11, %c7
      %alloc_51 = memref.alloc() : memref<12x4xi1>
      bufferization.dealloc_tensor %8 : tensor<3x3x12xi1>
      memref.alloca_scope  {
        %250 = math.exp %2 : tensor<4x4xf32>
        %251 = math.tan %0 : tensor<4xf16>
        %252 = vector.broadcast %c1912650803_i64 : i64 to vector<i64>
        %253 = vector.transfer_write %252, %transposed[%c12] : vector<i64>, tensor<4xi64>
        %254 = memref.atomic_rmw assign %cst_5, %alloc_16[%c0] : (f16, memref<4xf16>) -> f16
        %255 = arith.maxf %cst, %60 : f16
        %256 = vector.multi_reduction <minui>, %35, %c2033627837_i32 [0, 1] : vector<4x4xi32> to i32
        %257 = math.log2 %13 : tensor<4x4xf32>
        %258 = arith.subi %c10137_i16, %59 : i16
        %259 = vector.splat %59 : vector<4xi16>
        %260 = affine.min affine_map<(d0) -> (0, 0, d0 - 32)>(%c0)
        %from_elements_52 = tensor.from_elements %c10137_i16, %59, %59, %c10137_i16, %59, %59, %59, %59, %59, %59, %c10137_i16, %c10137_i16, %c10137_i16, %59, %c10137_i16, %59, %59, %59, %c10137_i16, %c10137_i16, %c10137_i16, %c10137_i16, %c10137_i16, %59, %c10137_i16, %59, %c10137_i16, %59, %c10137_i16, %59, %59, %c10137_i16, %c10137_i16, %59, %c10137_i16, %c10137_i16, %59, %c10137_i16, %c10137_i16, %59, %c10137_i16, %59, %c10137_i16, %59, %c10137_i16, %59, %59, %c10137_i16 : tensor<12x4xi16>
        %inserted_53 = tensor.insert %c531600830_i32 into %10[%c2, %c0, %c0] : tensor<3x3x12xi32>
        %alloc_54 = memref.alloc() : memref<3x3x12xi16>
        %261 = vector.broadcast %36 : f16 to vector<3xf16>
        vector.transfer_write %261, %alloc_18[%c2, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, memref<4x4xf16>
        %262 = arith.cmpi uge, %c2033627837_i32, %c1699623064_i32 : i32
        %263 = index.casts %c4 : index to i32
        %264 = math.copysign %cst, %cst : f16
        %265 = arith.remsi %c355998698_i64, %c355998698_i64 : i64
        %266 = math.powf %36, %36 : f16
        %collapsed_55 = tensor.collapse_shape %7 [[0, 1]] : tensor<12x4xi64> into tensor<48xi64>
        %cst_56 = arith.constant 1.000000e+00 : f32
        %267 = vector.broadcast %cst_56 : f32 to vector<16xf32>
        %268 = vector.broadcast %true_2 : i1 to vector<16xi1>
        %269 = vector.maskedload %alloc_11[%c5, %c0], %268, %267 : memref<12x4xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %270 = arith.shli %true_1, %true : i1
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %267, %267, %cst_56 : vector<16xf32>, vector<16xf32> into f32
        %272 = index.mul %39, %48
        %273 = math.log1p %36 : f16
        %274 = memref.load %alloc_20[%c10, %c3] : memref<12x4xi16>
        %275 = index.maxu %260, %272
        %276 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 64, (d0 mod 4) floordiv 128)>(%48, %c6, %c4)
        %277 = math.log1p %cst_3 : f16
        affine.store %cst_3, %alloc_16[%c4] : memref<4xf16>
        %278 = index.divu %c8, %c3
        %279 = math.powf %cst_3, %cst_3 : f16
      }
      %249 = arith.muli %59, %c10137_i16 : i16
    } else {
      %246 = bufferization.to_memref %6 : memref<12x4xf16>
      %from_elements_49 = tensor.from_elements %c1699623064_i32, %c1899122811_i32, %c1699623064_i32, %c1699623064_i32, %c2033627837_i32, %c1899122811_i32, %c2033627837_i32, %c1699623064_i32, %c1899122811_i32, %c531600830_i32, %c1899122811_i32, %c2033627837_i32, %c2033627837_i32, %c1899122811_i32, %c171926140_i32, %c1899122811_i32, %c531600830_i32, %c531600830_i32, %c2033627837_i32, %c171926140_i32, %c2033627837_i32, %c2033627837_i32, %c171926140_i32, %c531600830_i32, %c531600830_i32, %c1699623064_i32, %c531600830_i32, %c1699623064_i32, %c2033627837_i32, %c1699623064_i32, %c1899122811_i32, %c171926140_i32, %c171926140_i32, %c1699623064_i32, %c171926140_i32, %c1899122811_i32, %c1699623064_i32, %c531600830_i32, %c1899122811_i32, %c531600830_i32, %c171926140_i32, %c1899122811_i32, %c2033627837_i32, %c2033627837_i32, %c1699623064_i32, %c2033627837_i32, %c531600830_i32, %c171926140_i32 : tensor<12x4xi32>
      %247 = index.add %42, %c9
      %248 = affine.if affine_set<(d0, d1, d2) : ((d0 * 8 + 8) * 4 == 0, d2 + 72 == 0, d2 + 64 >= 0, -(((d0 * 8 + 8) * 4) floordiv 16) >= 0)>(%c4, %c2, %c8) -> memref<4xf16> {
        %expanded_50 = tensor.expand_shape %16 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %253 = arith.negf %36 : f16
        %254 = arith.remf %60, %cst_5 : f16
        %255 = vector.insert %cst, %27 [1] : f16 into vector<3xf16>
        %256 = math.log2 %6 : tensor<12x4xf16>
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %63, %29, %cst_5 : vector<3xf16>, vector<3xf16> into f16
        %258 = arith.cmpi sge, %c1912650803_i64, %c1912650803_i64 : i64
        %259 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2 + 1, d1 floordiv 4, d3 - 16)>(%c0, %c3, %c8, %39)
        affine.yield %alloc_16 : memref<4xf16>
      } else {
        %253 = arith.cmpi eq, %c1699623064_i32, %c531600830_i32 : i32
        %from_elements_50 = tensor.from_elements %true_2, %true_0, %true, %true, %true_2, %true_0, %true_1, %true, %true_2, %true, %true_0, %true, %true, %true_0, %true_1, %true_2, %true, %true_2, %true_2, %true, %true_1, %true_2, %true_1, %true_0, %true, %true_1, %true_0, %true, %true, %true_0, %true_0, %true, %true, %true_1, %true_2, %true_1, %true_2, %true_0, %true_0, %true_1, %true_0, %true_2, %true_2, %true, %true, %true_1, %true_1, %true_2 : tensor<12x4xi1>
        %254 = math.fpowi %2, %9 : tensor<4x4xf32>, tensor<4x4xi32>
        %255 = math.absi %from_elements_50 : tensor<12x4xi1>
        %256 = vector.broadcast %true : i1 to vector<16xi1>
        %257 = vector.maskedload %alloc_17[%c2, %c2], %256, %256 : memref<4x4xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
        bufferization.dealloc_tensor %19 : tensor<i64>
        %258 = math.log10 %2 : tensor<4x4xf32>
        %259 = index.mul %49, %c12
        affine.yield %alloc_16 : memref<4xf16>
      }
      %249 = arith.maxui %true, %true_2 : i1
      %250 = math.fma %0, %0, %from_elements : tensor<4xf16>
      %251 = index.casts %c171926140_i32 : i32 to index
      %252 = bufferization.to_memref %1 : memref<4xi64>
    }
    %alloc_24 = memref.alloc() : memref<12x4xf32>
    %71 = math.fma %2, %2, %2 : tensor<4x4xf32>
    %72 = math.floor %36 : f16
    %73 = arith.subi %c171926140_i32, %c171926140_i32 : i32
    %74 = arith.mulf %cst, %cst : f16
    %75 = vector.load %alloc_12[%c8, %c3] : memref<12x4xf16>, vector<4x4xf16>
    %alloca_25 = memref.alloca() : memref<12x4xi64>
    %76 = math.absi %true_2 : i1
    scf.if %true_1 {
      %246 = bufferization.to_tensor %alloc : memref<3x3x12xi1>
      %splat_49 = tensor.splat %cst_3 : tensor<4x4xf16>
      %247 = bufferization.to_tensor %alloc_17 : memref<4x4xi1>
      %248 = math.absi %7 : tensor<12x4xi64>
      vector.print %20 : vector<16xf16>
      %249 = vector.extract %41[0] : vector<2xi1>
      %250 = index.ceildivu %c11, %c7
      %251 = math.log1p %3 : tensor<4xf32>
    } else {
      %246 = arith.maxsi %59, %c10137_i16 : i16
      %247 = vector.bitcast %28 : vector<3xi1> to vector<3xi1>
      %248 = vector.multi_reduction <maxf>, %27, %36 [0] : vector<3xf16> to f16
      %249 = arith.shrsi %c1699623064_i32, %c171926140_i32 : i32
      affine.store %true_2, %alloc[%c4, %c2, %c8] : memref<3x3x12xi1>
      %250 = math.copysign %2, %2 : tensor<4x4xf32>
      affine.for %arg3 = 0 to 47 {
      }
      %collapsed_49 = tensor.collapse_shape %13 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
    }
    %77 = vector.extract_strided_slice %28 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
    %78 = arith.remf %cst, %cst_4 : f16
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_26 = arith.constant 0 : i64
    %79 = vector.transfer_read %4[%c8, %c11], %c0_i64_26 : tensor<4x4xi64>, vector<i64>
    %80 = math.powf %3, %3 : tensor<4xf32>
    %81 = arith.shli %true, %true_0 : i1
    %splat = tensor.splat %c171926140_i32 : tensor<3x3x12xi32>
    %82 = math.exp2 %36 : f16
    %cst_27 = arith.constant 1.000000e+00 : f32
    %83 = vector.broadcast %cst_27 : f32 to vector<4xf32>
    %84 = vector.fma %83, %83, %83 : vector<4xf32>
    %85 = math.absi %true_1 : i1
    %86 = arith.remf %cst_4, %cst : f16
    %87 = math.tanh %cst : f16
    %88 = math.expm1 %3 : tensor<4xf32>
    %collapsed_28 = tensor.collapse_shape %4 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
    %89 = arith.shrsi %c1699623064_i32, %c1699623064_i32 : i32
    %90 = memref.load %alloc_8[%c2, %c0, %c8] : memref<3x3x12xf16>
    %91 = math.log1p %cst_4 : f16
    %92 = math.tanh %cst_27 : f32
    vector.print %75 : vector<4x4xf16>
    %splat_29 = tensor.splat %c0_i64 : tensor<4xi64>
    %93 = arith.mulf %cst_4, %cst_5 : f16
    %94 = arith.maxf %cst, %cst_4 : f16
    %95 = math.exp %2 : tensor<4x4xf32>
    %96 = math.copysign %cst_4, %cst_4 : f16
    %97 = index.divs %c15, %c2
    %98 = memref.load %alloc_14[%c6, %c1] : memref<12x4xf16>
    %99 = vector.broadcast %c355998698_i64 : i64 to vector<3xi64>
    %100 = vector.transfer_write %99, %4[%48, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, tensor<4x4xi64>
    %101 = affine.for %arg3 = 0 to 56 iter_args(%arg4 = %alloc_10) -> (memref<12x4xi32>) {
      affine.yield %alloc_10 : memref<12x4xi32>
    }
    %102 = affine.if affine_set<(d0, d1) : (d1 - 32 >= 0)>(%c12, %c5) -> i64 {
      %246 = arith.shli %c1699623064_i32, %c1699623064_i32 : i32
      %247 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 2, d1 * 2 + d0 - d2, d2 * -4, d2 - 32)>(%c15, %c2, %49, %c7)
      %248 = vector.broadcast %true_0 : i1 to vector<2x2xi1>
      %249 = vector.outerproduct %41, %41, %248 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
      %250 = vector.load %alloc_7[%c2] : memref<4xf32>, vector<4xf32>
      %251 = math.powf %cst_5, %cst : f16
      %252 = arith.ori %c1699623064_i32, %c171926140_i32 : i32
      %253 = arith.negf %60 : f16
      %254 = vector.broadcast %true_2 : i1 to vector<16xi1>
      %255 = vector.maskedload %alloc_14[%c2, %c0], %254, %20 : memref<12x4xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
      affine.yield %c1912650803_i64 : i64
    } else {
      %246 = math.absi %12 : tensor<12x4xi1>
      %247 = index.casts %c531600830_i32 : i32 to index
      %248 = vector.broadcast %c0_i64 : i64 to vector<4xi64>
      %249 = arith.mulf %cst, %cst_4 : f16
      %250 = math.exp2 %3 : tensor<4xf32>
      %alloca_49 = memref.alloca() : memref<4x4xi1>
      %251 = index.floordivs %c2, %52
      %alloca_50 = memref.alloca() : memref<4xi16>
      affine.yield %c0_i64 : i64
    }
    %103 = math.exp2 %60 : f16
    %splat_30 = tensor.splat %c531600830_i32 : tensor<4xi32>
    %104 = bufferization.to_memref %3 : memref<4xf32>
    %105 = math.copysign %0, %0 : tensor<4xf16>
    %106 = arith.negf %cst_27 : f32
    %107 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - 128, d2 mod 32)>(%39, %c1, %c6, %49)
    %108 = arith.cmpf une, %cst_27, %cst_27 : f32
    %109 = math.tan %0 : tensor<4xf16>
    %110 = index.floordivs %c12, %c9
    %111 = arith.maxui %c10137_i16, %c10137_i16 : i16
    %112 = index.divu %52, %c5
    %113 = math.absi %9 : tensor<4x4xi32>
    %114 = math.log2 %cst_4 : f16
    %generated_31 = tensor.generate %c15, %c1 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %246 = scf.execute_region -> tensor<3x3x12xi64> {
        %249 = math.powf %0, %0 : tensor<4xf16>
        %250 = arith.remui %c1699623064_i32, %c171926140_i32 : i32
        %extracted_51 = tensor.extract %9[%c2, %c3] : tensor<4x4xi32>
        bufferization.dealloc_tensor %15 : tensor<12x4xi32>
        %251 = vector.shuffle %41, %28 [0, 2, 3] : vector<2xi1>, vector<3xi1>
        %252 = math.absi %transposed : tensor<4xi64>
        %253 = arith.shli %extracted_51, %c2033627837_i32 : i32
        %254 = arith.cmpf ugt, %60, %60 : f16
        %255 = index.floordivs %arg5, %c14
        %256 = math.floor %cst : f16
        %inserted_52 = tensor.insert %c2033627837_i32 into %15[%c5, %c2] : tensor<12x4xi32>
        %257 = vector.create_mask %c6, %c7 : vector<12x4xi1>
        %collapsed_53 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<3x3x12xi32> into tensor<9x12xi32>
        %258 = arith.shrsi %true_0, %true : i1
        %259 = math.log2 %13 : tensor<4x4xf32>
        %260 = math.expm1 %13 : tensor<4x4xf32>
        %261 = tensor.empty() : tensor<3x3x12xi64>
        scf.yield %261 : tensor<3x3x12xi64>
      }
      %247 = vector.broadcast %cst_4 : f16 to vector<4xf16>
      %dest_49, %accumulated_value_50 = vector.scan <maxf>, %75, %247 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xf16>, vector<4xf16>
      %248 = arith.remsi %c10137_i16, %59 : i16
      %false = arith.constant false
      tensor.yield %true : i1
    } : tensor<?x?x12xi1>
    %115 = math.ctpop %9 : tensor<4x4xi32>
    %116 = arith.maxui %true_1, %true : i1
    %117 = math.tan %cst_4 : f16
    %118 = math.ceil %cst_5 : f16
    memref.assume_alignment %46, 4 : memref<12x4xi32>
    %119 = math.exp2 %from_elements : tensor<4xf16>
    %120 = vector.extract_strided_slice %33 {offsets = [0], sizes = [2], strides = [1]} : vector<3xf16> to vector<2xf16>
    %121 = index.ceildivu %c7, %c15
    %122 = arith.negf %36 : f16
    %123 = scf.index_switch %39 -> index 
    case 1 {
      %false = arith.constant false
      %false_49 = arith.constant false
      %246 = vector.transfer_read %alloc_15[%66, %c3], %false_49 : memref<12x4xi1>, vector<i1>
      %generated_50 = tensor.generate %c9 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %258 = vector.insertelement %cst_3, %33[%c9 : index] : vector<3xf16>
        %259 = vector.broadcast %false : i1 to vector<4xi1>
        %260 = vector.maskedload %alloc_13[%c0, %c0, %c7], %259, %259 : memref<3x3x12xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %collapsed_54 = tensor.collapse_shape %generated_31 [[0, 1], [2]] : tensor<?x?x12xi1> into tensor<?x12xi1>
        %261 = arith.minf %cst_3, %cst_5 : f16
        tensor.yield %false : i1
      } : tensor<?x3x12xi1>
      %247 = index.maxs %c3, %c3
      %splat_51 = tensor.splat %36 : tensor<12x4xf16>
      %248 = index.maxu %97, %c6
      %249 = math.absi %12 : tensor<12x4xi1>
      %250 = arith.subi %59, %c10137_i16 : i16
      %splat_52 = tensor.splat %cst_5 : tensor<12x4xf16>
      %251 = index.maxu %52, %c3
      %252 = index.floordivs %c14, %107
      %253 = math.ipowi %59, %c10137_i16 : i16
      %254 = arith.cmpf true, %cst_5, %cst_5 : f16
      %255 = vector.create_mask %42, %c1 : vector<4x4xi1>
      %collapsed_53 = tensor.collapse_shape %2 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
      %256 = math.log10 %6 : tensor<12x4xf16>
      %257 = index.floordivs %40, %97
      scf.yield %112 : index
    }
    default {
      %246 = math.copysign %2, %13 : tensor<4x4xf32>
      %247 = vector.shuffle %28, %77 [0, 1, 4, 5] : vector<3xi1>, vector<3xi1>
      %248 = arith.maxsi %c1899122811_i32, %c531600830_i32 : i32
      %249 = arith.divui %c355998698_i64, %c1912650803_i64 : i64
      %cst_49 = arith.constant 1.000000e+00 : f32
      %250 = vector.transfer_read %2[%c15, %107], %cst_49 : tensor<4x4xf32>, vector<3xf32>
      %251 = math.ctpop %7 : tensor<12x4xi64>
      %252 = index.maxu %50, %97
      %253 = vector.broadcast %cst_49 : f32 to vector<4x4xf32>
      %254 = vector.outerproduct %84, %84, %253 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
      %255 = arith.negf %60 : f16
      %256 = arith.shrsi %c531600830_i32, %c171926140_i32 : i32
      %257 = arith.remui %c355998698_i64, %c0_i64 : i64
      %258 = math.absi %22 : tensor<i64>
      %259 = arith.mulf %cst_3, %cst_3 : f16
      %260 = arith.subi %true_0, %true_1 : i1
      bufferization.dealloc_tensor %2 : tensor<4x4xf32>
      %261 = arith.cmpf uno, %36, %cst : f16
      scf.yield %c9 : index
    }
    %124 = index.maxu %40, %66
    bufferization.dealloc_tensor %1 : tensor<4xi64>
    %125 = arith.ori %c0_i64, %c1912650803_i64 : i64
    %generated_32 = tensor.generate %c14 {
    ^bb0(%arg3: index):
      %246 = math.expm1 %from_elements : tensor<4xf16>
      %247 = arith.maxf %cst_3, %cst_5 : f16
      %248 = vector.broadcast %cst_27 : f32 to vector<12x4xf32>
      %249 = vector.fma %248, %248, %248 : vector<12x4xf32>
      %250 = math.exp %cst_27 : f32
      tensor.yield %true : i1
    } : tensor<?xi1>
    %126 = math.log10 %3 : tensor<4xf32>
    %splat_33 = tensor.splat %cst_4 : tensor<4xf16>
    %127 = math.copysign %cst_3, %cst_5 : f16
    %128 = math.log %36 : f16
    %129 = arith.mulf %60, %cst : f16
    %130 = math.absi %1 : tensor<4xi64>
    %131 = arith.cmpf ugt, %cst_4, %36 : f16
    %splat_34 = tensor.splat %c171926140_i32 : tensor<3x3x12xi32>
    %132 = math.exp2 %6 : tensor<12x4xf16>
    affine.for %arg3 = 0 to 48 {
    }
    %133 = math.absi %17 : tensor<4xi64>
    %alloc_35 = memref.alloc() : memref<4xi64>
    %134 = vector.matrix_multiply %99, %99 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %135 = arith.shli %c10137_i16, %59 : i16
    %136 = vector.broadcast %cst_5 : f16 to vector<3x3xf16>
    %137 = vector.outerproduct %27, %33, %136 {kind = #vector.kind<maxf>} : vector<3xf16>, vector<3xf16>
    %138 = math.floor %0 : tensor<4xf16>
    %139 = arith.cmpf one, %cst_3, %cst_4 : f16
    %alloc_36 = memref.alloc() : memref<4x4xi1>
    %140 = math.tanh %cst : f16
    %141 = index.castu %true_0 : i1 to index
    %142 = vector.broadcast %true_2 : i1 to vector<16xi1>
    %143 = vector.maskedload %alloc_14[%c7, %c2], %142, %20 : memref<12x4xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
    %144 = index.sizeof
    %145 = bufferization.clone %alloc_20 : memref<12x4xi16> to memref<12x4xi16>
    %146 = arith.shrsi %c1699623064_i32, %c531600830_i32 : i32
    %147 = arith.shrsi %59, %c10137_i16 : i16
    %148 = arith.remui %c531600830_i32, %c1699623064_i32 : i32
    %alloc_37 = memref.alloc() : memref<4xi1>
    memref.tensor_store %5, %alloc_37 : memref<4xi1>
    %149 = math.atan2 %cst_3, %60 : f16
    %150 = index.divs %c14, %97
    %151 = index.ceildivu %c7, %c14
    %152 = math.sqrt %cst_5 : f16
    %153 = index.ceildivs %52, %107
    %154 = math.exp2 %cst_27 : f32
    %155 = math.log1p %13 : tensor<4x4xf32>
    %156 = index.sizeof
    %157 = vector.insert %60, %143 [7] : f16 into vector<16xf16>
    %158 = vector.broadcast %cst_4 : f16 to vector<4xf16>
    %159 = index.floordivs %112, %c6
    %160 = index.maxu %c4, %c14
    %161 = arith.remf %36, %60 : f16
    %162 = index.floordivs %160, %39
    %163 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %99, %99, %c1912650803_i64 : vector<3xi64>, vector<3xi64> into i64
    vector.print %84 : vector<4xf32>
    affine.for %arg3 = 0 to 23 {
    }
    %164 = math.log2 %cst : f16
    %165 = math.absi %5 : tensor<4xi1>
    %166 = bufferization.to_memref %0 : memref<4xf16>
    %167 = math.ctpop %collapsed_28 : tensor<16xi64>
    %168 = memref.realloc %alloc_7 : memref<4xf32> to memref<12xf32>
    %169 = math.exp2 %cst : f16
    %170 = index.ceildivu %42, %c14
    %171 = math.log1p %cst_27 : f32
    %172 = vector.load %alloc_7[%c2] : memref<4xf32>, vector<12x4xf32>
    %173 = arith.negf %60 : f16
    %174 = math.powf %3, %3 : tensor<4xf32>
    %175 = vector.broadcast %cst_27 : f32 to vector<12x4xf32>
    %176 = vector.fma %175, %172, %175 : vector<12x4xf32>
    %177 = vector.shuffle %20, %143 [0, 1, 2, 3, 5, 6, 9, 10, 11, 17, 21, 23, 29] : vector<16xf16>, vector<16xf16>
    %178 = math.copysign %6, %6 : tensor<12x4xf16>
    %179 = bufferization.to_memref %splat_33 : memref<4xf16>
    %180 = index.floordivs %144, %c14
    %181 = affine.if affine_set<(d0, d1) : (d1 == 0, d1 - 130 >= 0, d1 - 130 == 0, d0 ceildiv 8 - (d1 - 98) == 0)>(%c14, %c2) -> f16 {
      %246 = vector.broadcast %cst_27 : f32 to vector<4x4xf32>
      %247 = vector.fma %246, %246, %246 : vector<4x4xf32>
      %expanded_49 = tensor.expand_shape %splat_34 [[0], [1], [2, 3]] : tensor<3x3x12xi32> into tensor<3x3x12x1xi32>
      %248 = vector.transpose %56, [0] : vector<4xi32> to vector<4xi32>
      %249 = index.maxs %160, %180
      %250 = bufferization.clone %alloc : memref<3x3x12xi1> to memref<3x3x12xi1>
      %251 = index.floordivs %c8, %156
      %252 = bufferization.to_memref %12 : memref<12x4xi1>
      %253 = index.floordivs %66, %97
      affine.yield %60 : f16
    } else {
      %246 = math.round %6 : tensor<12x4xf16>
      %247 = bufferization.clone %alloc_15 : memref<12x4xi1> to memref<12x4xi1>
      %248 = vector.broadcast %cst_27 : f32 to vector<4xf32>
      %249 = vector.fma %248, %248, %84 : vector<4xf32>
      %250 = scf.if %true -> (i16) {
        %254 = arith.cmpi sge, %c531600830_i32, %c531600830_i32 : i32
        %255 = bufferization.clone %alloc_20 : memref<12x4xi16> to memref<12x4xi16>
        %256 = affine.min affine_map<(d0, d1) -> (d0 mod 16)>(%c9, %48)
        %257 = vector.broadcast %cst_27 : f32 to vector<3x3x12xf32>
        %258 = vector.fma %257, %257, %257 : vector<3x3x12xf32>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %259 = vector.transfer_read %3[%256], %cst_50 : tensor<4xf32>, vector<f32>
        %260 = vector.broadcast %cst_49 : f32 to vector<12xf32>
        %dest_51, %accumulated_value_52 = vector.scan <mul>, %175, %260 {inclusive = true, reduction_dim = 1 : i64} : vector<12x4xf32>, vector<12xf32>
        %261 = math.expm1 %cst_27 : f32
        %262 = math.log2 %0 : tensor<4xf16>
        scf.yield %59 : i16
      } else {
        %254 = vector.create_mask %151, %151 : vector<12x4xi1>
        %255 = index.add %170, %c12
        %256 = vector.broadcast %cst_5 : f16 to vector<f16>
        vector.transfer_write %256, %alloc_16[%c2] : vector<f16>, memref<4xf16>
        %257 = arith.negf %60 : f16
        %258 = vector.insert %83, %175 [5] : vector<4xf32> into vector<12x4xf32>
        %259 = math.log1p %cst : f16
        %260 = vector.load %alloc_6[%c1, %c0] : memref<4x4xf16>, vector<3x3x12xf16>
        %261 = math.atan2 %from_elements, %0 : tensor<4xf16>
        scf.yield %c10137_i16 : i16
      }
      %cast = tensor.cast %12 : tensor<12x4xi1> to tensor<?x?xi1>
      %251 = math.log2 %0 : tensor<4xf16>
      %252 = math.powf %13, %2 : tensor<4x4xf32>
      %253 = index.divu %153, %97
      affine.yield %cst_4 : f16
    }
    %182 = math.atan2 %6, %6 : tensor<12x4xf16>
    %183 = vector.create_mask %49, %48, %c6 : vector<3x3x12xi1>
    %184 = arith.remf %cst_27, %cst_27 : f32
    %185 = index.maxu %97, %c10
    %186 = memref.load %179[%c2] : memref<4xf16>
    %inserted = tensor.insert %c1899122811_i32 into %15[%c4, %c1] : tensor<12x4xi32>
    %187 = math.tanh %3 : tensor<4xf32>
    %188 = arith.subi %c531600830_i32, %c1899122811_i32 : i32
    %189 = vector.broadcast %c171926140_i32 : i32 to vector<i32>
    vector.transfer_write %189, %alloc_10[%97, %170] : vector<i32>, memref<12x4xi32>
    %190 = math.absi %c0_i64 : i64
    %extracted = tensor.extract %8[%c0, %c1, %c10] : tensor<3x3x12xi1>
    %191 = vector.broadcast %59 : i16 to vector<4x4xi16>
    %192 = math.cttz %21 : tensor<4xi64>
    %193 = index.maxu %50, %160
    %194 = arith.remf %60, %60 : f16
    %195 = vector.transpose %142, [0] : vector<16xi1> to vector<16xi1>
    %196 = index.ceildivu %c5, %c10
    %197 = vector.reduction <add>, %29 : vector<3xf16> into f16
    %extracted_38 = tensor.extract %4[%c0, %c1] : tensor<4x4xi64>
    %198 = arith.floordivsi %c1699623064_i32, %c531600830_i32 : i32
    %199 = arith.muli %true_1, %true_2 : i1
    %200 = index.maxu %144, %c4
    %201 = vector.broadcast %c531600830_i32 : i32 to vector<3xi32>
    vector.transfer_write %201, %46[%c4, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi32>, memref<12x4xi32>
    %202 = index.divu %42, %153
    %collapsed_39 = tensor.collapse_shape %generated_21 [[0, 1]] : tensor<?x4xf32> into tensor<?xf32>
    %203 = vector.load %alloc_11[%c2, %c2] : memref<12x4xf32>, vector<4x4xf32>
    %inserted_40 = tensor.insert %c2033627837_i32 into %15[%c8, %c2] : tensor<12x4xi32>
    %204 = arith.cmpi uge, %c531600830_i32, %c171926140_i32 : i32
    %205 = memref.load %alloc_6[%c3, %c1] : memref<4x4xf16>
    %206 = vector.broadcast %c1899122811_i32 : i32 to vector<4xi32>
    %207 = math.tan %cst_4 : f16
    %208 = index.divu %40, %162
    %209 = math.ctpop %8 : tensor<3x3x12xi1>
    %210 = math.absi %splat_30 : tensor<4xi32>
    bufferization.dealloc_tensor %generated_21 : tensor<?x4xf32>
    affine.for %arg3 = 0 to 70 {
    }
    %211 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d3 floordiv 8 - d3 floordiv 8)>(%c8, %180, %c7, %50)
    bufferization.dealloc_tensor %19 : tensor<i64>
    %212 = vector.extract_strided_slice %206 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi32> to vector<3xi32>
    %splat_41 = tensor.splat %true_1 : tensor<4xi1>
    %213 = bufferization.clone %alloc_6 : memref<4x4xf16> to memref<4x4xf16>
    %214 = vector.load %alloc_7[%c0] : memref<4xf32>, vector<12x4xf32>
    %splat_42 = tensor.splat %cst_4 : tensor<3x3x12xf16>
    %215 = index.floordivs %141, %124
    %216 = math.expm1 %13 : tensor<4x4xf32>
    %extracted_43 = tensor.extract %8[%c0, %c0, %c4] : tensor<3x3x12xi1>
    %217 = math.tan %6 : tensor<12x4xf16>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %218 = vector.transfer_read %9[%156, %c5], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x4xi32>, vector<16xi32>
    %219 = arith.divf %cst, %cst_5 : f16
    %220 = math.absi %10 : tensor<3x3x12xi32>
    %221 = vector.extract %183[2, 1] : vector<3x3x12xi1>
    vector.print %175 : vector<12x4xf32>
    %222 = vector.splat %c6 : vector<4x4xindex>
    %223 = vector.bitcast %99 : vector<3xi64> to vector<3xi64>
    %224 = math.absf %splat_42 : tensor<3x3x12xf16>
    %225 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %158, %158, %36 : vector<4xf16>, vector<4xf16> into f16
    %226 = vector.broadcast %true : i1 to vector<3x12xi1>
    %227 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %183, %77, %226 : vector<3x3x12xi1>, vector<3xi1> into vector<3x12xi1>
    %228 = arith.cmpi sle, %c0_i64, %c1912650803_i64 : i64
    %229 = math.exp %3 : tensor<4xf32>
    %true_44 = arith.constant true
    %230 = vector.transfer_read %splat_41[%110], %true_44 : tensor<4xi1>, vector<i1>
    %231 = math.tanh %splat_42 : tensor<3x3x12xf16>
    %232 = arith.cmpf une, %36, %cst_3 : f16
    %233 = vector.broadcast %cst_27 : f32 to vector<12x4xf32>
    %234 = arith.cmpi sgt, %c1912650803_i64, %extracted_38 : i64
    %235 = affine.max affine_map<(d0, d1, d2, d3) -> (d3)>(%124, %159, %200, %159)
    memref.assume_alignment %46, 16 : memref<12x4xi32>
    %236 = vector.insert %extracted_43, %77 [0] : i1 into vector<3xi1>
    %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<4x4xf32> into tensor<4x4x1xf32>
    %237 = affine.for %arg3 = 0 to 46 iter_args(%arg4 = %215) -> (index) {
      affine.yield %c13 : index
    }
    %238 = vector.reduction <minsi>, %142 : vector<16xi1> into i1
    %dest_45, %accumulated_value_46 = vector.scan <mul>, %176, %84 {inclusive = true, reduction_dim = 0 : i64} : vector<12x4xf32>, vector<4xf32>
    %239 = arith.cmpi eq, %c531600830_i32, %c531600830_i32 : i32
    %240 = tensor.empty(%40) : tensor<?xi64>
    %241 = linalg.copy ins(%generated : tensor<?xi64>) outs(%240 : tensor<?xi64>) -> tensor<?xi64>
    %242 = tensor.empty() : tensor<12x3x3xi16>
    %transposed_47 = linalg.transpose ins(%alloc_19 : memref<3x3x12xi16>) outs(%242 : tensor<12x3x3xi16>) permutation = [2, 0, 1] 
    %243 = tensor.empty() : tensor<4xi32>
    %reduced_48 = linalg.reduce ins(%9 : tensor<4x4xi32>) outs(%243 : tensor<4xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %246 = vector.broadcast %c5 : index to vector<12xindex>
        %247 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
        vector.scatter %alloc_10[%c9, %c0] [%246], %221, %247 : memref<12x4xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %248 = affine.if affine_set<(d0, d1, d2, d3) : (d3 * 2 == 0)>(%c15, %c13, %c9, %c11) -> i1 {
          %253 = arith.maxsi %true_44, %true_2 : i1
          %collapsed_50 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x4xi32> into tensor<16xi32>
          bufferization.dealloc_tensor %5 : tensor<4xi1>
          %254 = affine.min affine_map<(d0) -> (-((d0 * 4) mod 64 + d0 * 4), d0 * 4, -d0, ((d0 * 4) mod 64) ceildiv 4)>(%141)
          bufferization.dealloc_tensor %12 : tensor<12x4xi1>
          %255 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d0 * -64 + d3) * 2) mod 128)>(%c7, %141, %150, %c1)
          %256 = math.log1p %from_elements : tensor<4xf16>
          %257 = math.ctlz %extracted_43 : i1
          affine.yield %true : i1
        } else {
          %253 = index.maxu %c6, %c9
          %254 = arith.maxsi %c10137_i16, %c10137_i16 : i16
          %255 = bufferization.clone %alloc_7 : memref<4xf32> to memref<4xf32>
          %256 = arith.shrsi %c1699623064_i32, %c2033627837_i32 : i32
          %257 = index.castu %c10 : index to i32
          %258 = arith.maxsi %extracted, %extracted_43 : i1
          %259 = arith.shli %extracted, %true_2 : i1
          %260 = math.log2 %3 : tensor<4xf32>
          affine.yield %true : i1
        }
        vector.print %120 : vector<2xf16>
        %249 = math.ctpop %11 : tensor<12x4xi64>
        %250 = arith.mulf %36, %36 : f16
        %251 = vector.multi_reduction <minsi>, %134, %c0_i64 [0] : vector<1xi64> to i64
        %252 = arith.addf %36, %60 : f16
        bufferization.dealloc_tensor %3 : tensor<4xf32>
        %c0_i32_49 = arith.constant 0 : i32
        linalg.yield %c0_i32_49 : i32
      }
    %244 = scf.parallel (%arg3) = (%107) to (%215) step (%c15) init (%alloc_18) -> memref<4x4xf16> {
      %246 = vector.insert %36, %158 [2] : f16 into vector<4xf16>
      %247 = math.log1p %expanded : tensor<4x4x1xf32>
      %248 = math.absi %splat : tensor<3x3x12xi32>
      %249 = vector.broadcast %cst_27 : f32 to vector<12xf32>
      %250 = vector.multi_reduction <minf>, %176, %249 [1] : vector<12x4xf32> to vector<12xf32>
      %251 = arith.cmpi ult, %extracted_38, %c0_i64 : i64
      %252 = math.floor %60 : f16
      %253 = arith.maxf %cst_3, %cst_4 : f16
      %254 = index.sizeof
      %255 = math.powf %3, %3 : tensor<4xf32>
      %256 = vector.flat_transpose %120 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
      %257 = math.absi %c10137_i16 : i16
      %258 = arith.andi %extracted_43, %true_0 : i1
      %259 = index.maxu %156, %c11
      %260 = index.divu %c6, %c6
      %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 4, -d1 + 40, d0, -d1 + 8)>(%40, %196, %c6, %c4)
      %262 = arith.shrsi %true_1, %true_0 : i1
      %alloc_49 = memref.alloc() : memref<4x4xf16>
      scf.reduce(%alloc_49)  : memref<4x4xf16> {
      ^bb0(%arg4: memref<4x4xf16>, %arg5: memref<4x4xf16>):
        %263 = math.cttz %c1912650803_i64 : i64
        %264 = vector.broadcast %c1_i32 : i32 to vector<i32>
        %265 = vector.transfer_write %264, %15[%c11, %153] : vector<i32>, tensor<12x4xi32>
        %inserted_50 = tensor.insert %59 into %14[%c0, %c0, %c1] : tensor<3x3x12xi16>
        %266 = math.ctpop %7 : tensor<12x4xi64>
        %267 = vector.extract %158[3] : vector<4xf16>
        %268 = memref.load %arg4[%c1, %c3] : memref<4x4xf16>
        %269 = memref.load %alloc_17[%c0, %c3] : memref<4x4xi1>
        %270 = vector.transpose %203, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
        %alloc_51 = memref.alloc() : memref<4x4xf16>
        scf.reduce.return %alloc_51 : memref<4x4xf16>
      }
      scf.yield
    }
    %245 = affine.vector_load %alloc_16[%211] : memref<4xf16>, vector<12xf16>
    affine.vector_store %28, %alloc_17[%c10, %c1] : memref<4x4xi1>, vector<3xi1>
    vector.print %20 : vector<16xf16>
    vector.print %27 : vector<3xf16>
    vector.print %28 : vector<3xi1>
    vector.print %29 : vector<3xf16>
    vector.print %33 : vector<3xf16>
    vector.print %35 : vector<4x4xi32>
    vector.print %41 : vector<2xi1>
    vector.print %56 : vector<4xi32>
    vector.print %63 : vector<3xf16>
    vector.print %75 : vector<4x4xf16>
    vector.print %77 : vector<3xi1>
    vector.print %83 : vector<4xf32>
    vector.print %84 : vector<4xf32>
    vector.print %99 : vector<3xi64>
    vector.print %120 : vector<2xf16>
    vector.print %134 : vector<1xi64>
    vector.print %142 : vector<16xi1>
    vector.print %143 : vector<16xf16>
    vector.print %158 : vector<4xf16>
    vector.print %172 : vector<12x4xf32>
    vector.print %175 : vector<12x4xf32>
    vector.print %176 : vector<12x4xf32>
    vector.print %183 : vector<3x3x12xi1>
    vector.print %189 : vector<i32>
    vector.print %191 : vector<4x4xi16>
    vector.print %201 : vector<3xi32>
    vector.print %203 : vector<4x4xf32>
    vector.print %206 : vector<4xi32>
    vector.print %212 : vector<3xi32>
    vector.print %214 : vector<12x4xf32>
    vector.print %221 : vector<12xi1>
    vector.print %223 : vector<3xi64>
    vector.print %233 : vector<12x4xf32>
    vector.print %245 : vector<12xf16>
    vector.print %cst : f16
    vector.print %true : i1
    vector.print %c2033627837_i32 : i32
    vector.print %c355998698_i64 : i64
    vector.print %c531600830_i32 : i32
    vector.print %c10137_i16 : i16
    vector.print %c1912650803_i64 : i64
    vector.print %c1899122811_i32 : i32
    vector.print %true_0 : i1
    vector.print %true_1 : i1
    vector.print %true_2 : i1
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %c1699623064_i32 : i32
    vector.print %c171926140_i32 : i32
    vector.print %36 : f16
    vector.print %59 : i16
    vector.print %60 : f16
    vector.print %c0_i64 : i64
    vector.print %cst_27 : f32
    vector.print %extracted : i1
    vector.print %extracted_38 : i64
    vector.print %extracted_43 : i1
    vector.print %c1_i32 : i32
    vector.print %true_44 : i1
    return %35 : vector<4x4xi32>
  }
}
