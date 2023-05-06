module {
  func.func @func1(%arg0: vector<1x8x8xf32>, %arg1: vector<12x1xf16>) -> tensor<12x1xi16> {
    %c646883787_i64 = arith.constant 646883787 : i64
    %true = arith.constant true
    %cst = arith.constant 5.683200e+04 : f16
    %true_0 = arith.constant true
    %false = arith.constant false
    %true_1 = arith.constant true
    %c24690_i16 = arith.constant 24690 : i16
    %false_2 = arith.constant false
    %cst_3 = arith.constant 1.85535718E+9 : f32
    %cst_4 = arith.constant 6.441600e+04 : f16
    %false_5 = arith.constant false
    %true_6 = arith.constant true
    %c321629512_i64 = arith.constant 321629512 : i64
    %c460963850_i64 = arith.constant 460963850 : i64
    %cst_7 = arith.constant 0x4D7348EF : f32
    %cst_8 = arith.constant 0x4DC6D6F6 : f32
    %0 = tensor.empty() : tensor<1x8x8xi32>
    %1 = tensor.empty() : tensor<8x1xi1>
    %2 = tensor.empty() : tensor<1xf32>
    %3 = tensor.empty() : tensor<1xf16>
    %4 = tensor.empty() : tensor<12x1xf32>
    %5 = tensor.empty() : tensor<1xi32>
    %6 = tensor.empty() : tensor<1xi1>
    %7 = tensor.empty() : tensor<1x8x8xi16>
    %8 = tensor.empty() : tensor<12x1xf32>
    %9 = tensor.empty() : tensor<12x1xi16>
    %10 = tensor.empty() : tensor<8x1xi1>
    %11 = tensor.empty() : tensor<1x8x8xi1>
    %12 = tensor.empty() : tensor<8x1xi64>
    %13 = tensor.empty() : tensor<12x1xf16>
    %14 = tensor.empty() : tensor<1x8x8xi16>
    %15 = tensor.empty() : tensor<12x1xi16>
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
    %alloc = memref.alloc() : memref<1x8x8xi1>
    %alloc_9 = memref.alloc() : memref<1x8x8xi64>
    %alloc_10 = memref.alloc() : memref<1xi32>
    %alloc_11 = memref.alloc() : memref<1xf32>
    %alloc_12 = memref.alloc() : memref<8x1xi1>
    %alloc_13 = memref.alloc() : memref<12x1xi32>
    %alloc_14 = memref.alloc() : memref<1x8x8xi64>
    %alloc_15 = memref.alloc() : memref<8x1xi16>
    %alloc_16 = memref.alloc() : memref<1xf16>
    %alloc_17 = memref.alloc() : memref<1x8x8xi32>
    %alloc_18 = memref.alloc() : memref<1xf16>
    %alloc_19 = memref.alloc() : memref<8x1xf32>
    %alloc_20 = memref.alloc() : memref<8x1xi32>
    %alloc_21 = memref.alloc() : memref<12x1xi64>
    %alloc_22 = memref.alloc() : memref<1x8x8xi64>
    %alloc_23 = memref.alloc() : memref<12x1xi32>
    %16 = tensor.empty() : tensor<12x1xf16>
    %17 = linalg.copy ins(%13 : tensor<12x1xf16>) outs(%16 : tensor<12x1xf16>) -> tensor<12x1xf16>
    %alloc_24 = memref.alloc() : memref<8x1x8xi1>
    linalg.transpose ins(%11 : tensor<1x8x8xi1>) outs(%alloc_24 : memref<8x1x8xi1>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<1xi1>
    %reduced = linalg.reduce ins(%10 : tensor<8x1xi1>) outs(%18 : tensor<1xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %262 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 2, (d2 floordiv 4 + 8) * 128, (d0 ceildiv 2 + d0 - 2) floordiv 16 - (d0 ceildiv 2 + d0 - 2))>(%c7, %c5, %c13)
        %263 = math.roundeven %4 : tensor<12x1xf32>
        %cast_56 = tensor.cast %14 : tensor<1x8x8xi16> to tensor<?x?x?xi16>
        %264 = arith.divui %in, %true : i1
        %265 = arith.xori %init, %init : i1
        %266 = math.exp %8 : tensor<12x1xf32>
        %267 = math.tan %4 : tensor<12x1xf32>
        %268 = arith.maxsi %in, %true_1 : i1
        %true_57 = arith.constant true
        linalg.yield %true_57 : i1
      }
    scf.parallel (%arg2, %arg3) = (%c15, %c10) to (%c12, %c4) step (%c3, %c8) {
      memref.store %cst, %alloc_18[%c0] : memref<1xf16>
      %alloc_56 = memref.alloc() : memref<1xi1>
      %262 = tensor.empty() : tensor<8xi16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15, %262 : memref<8x1xi16>, tensor<8xi16>) outs(%14 : tensor<1x8x8xi16>) {
      ^bb0(%in: i16, %in_59: i16, %out: i16):
        %278 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        %279 = vector.broadcast %cst_7 : f32 to vector<12x12xf32>
        %280 = vector.outerproduct %278, %278, %279 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %281 = vector.transfer_read %13[%c1, %c6], %cst_60 : tensor<12x1xf16>, vector<12xf16>
        %282 = arith.remui %c646883787_i64, %c460963850_i64 : i64
        %283 = index.ceildivu %c3, %c11
        %284 = arith.shrui %c24690_i16, %in_59 : i16
        %285 = math.sqrt %cst_3 : f32
        %c1_i32_61 = arith.constant 1 : i32
        %286 = memref.atomic_rmw maxu %c1_i32_61, %alloc_13[%c3, %c0] : (i32, memref<12x1xi32>) -> i32
        %287 = tensor.empty() : tensor<1x1xi64>
        %288 = tensor.empty() : tensor<8x1xi64>
        %289 = linalg.matmul ins(%12, %287 : tensor<8x1xi64>, tensor<1x1xi64>) outs(%288 : tensor<8x1xi64>) -> tensor<8x1xi64>
        %290 = index.mul %c12, %c13
        %291 = vector.broadcast %cst : f16 to vector<1xf16>
        %292 = vector.matrix_multiply %291, %291 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        bufferization.dealloc_tensor %9 : tensor<12x1xi16>
        %293 = arith.remui %false_5, %true_6 : i1
        %294 = index.casts %false : i1 to index
        %295 = arith.subi %c24690_i16, %in_59 : i16
        %296 = index.casts %c1 : index to i32
        %c0_i32 = arith.constant 0 : i32
        %297 = math.fpowi %cst_4, %c0_i32 : f16, i32
        %298 = arith.divui %c321629512_i64, %c321629512_i64 : i64
        %299 = math.log10 %2 : tensor<1xf32>
        vector.print %292 : vector<1xf16>
        %300 = math.absi %c0_i32 : i32
        bufferization.dealloc_tensor %11 : tensor<1x8x8xi1>
        %301 = arith.maxf %cst_8, %cst_7 : f32
        %302 = memref.load %alloc_10[%c0] : memref<1xi32>
        %303 = math.sqrt %16 : tensor<12x1xf16>
        %304 = bufferization.clone %alloc_18 : memref<1xf16> to memref<1xf16>
        %305 = vector.reduction <maxf>, %291 : vector<1xf16> into f16
        %306 = math.log1p %3 : tensor<1xf16>
        %true_62 = index.bool.constant true
        %307 = math.log2 %13 : tensor<12x1xf16>
        %from_elements_63 = tensor.from_elements %c0_i32 : tensor<1xi32>
        %false_64 = arith.constant false
        %308 = vector.transfer_read %alloc_24[%c12, %c8, %c8], %false_64 : memref<8x1x8xi1>, vector<1xi1>
        %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<12x1xf16> into tensor<12xf16>
        linalg.yield %c24690_i16 : i16
      } -> tensor<1x8x8xi16>
      %264 = math.atan2 %3, %3 : tensor<1xf16>
      %265 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %266 = vector.bitcast %265 : vector<1xf32> to vector<1xi32>
      %alloc_57 = memref.alloc() : memref<1x12xf32>
      %267 = tensor.empty() : tensor<12x12xf32>
      %268 = linalg.matmul ins(%8, %alloc_57 : tensor<12x1xf32>, memref<1x12xf32>) outs(%267 : tensor<12x12xf32>) -> tensor<12x12xf32>
      %true_58 = index.bool.constant true
      %269 = math.atan %4 : tensor<12x1xf32>
      %270 = math.ctlz %12 : tensor<8x1xi64>
      %271 = arith.floordivsi %c321629512_i64, %c646883787_i64 : i64
      %272 = tensor.empty() : tensor<12x1xi1>
      %273 = math.floor %2 : tensor<1xf32>
      %274 = index.ceildivu %c12, %c5
      %275 = math.tan %4 : tensor<12x1xf32>
      %276 = arith.cmpf uno, %cst_7, %cst_7 : f32
      %277 = math.log10 %cst_7 : f32
      scf.yield
    }
    %19 = affine.vector_load %alloc_19[%c10, %c11] : memref<8x1xf32>, vector<12xf32>
    affine.vector_store %19, %alloc_19[%c11, %c11] : memref<8x1xf32>, vector<12xf32>
    %20 = tensor.empty() : tensor<1xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%reduced, %20 : tensor<1xi1>, tensor<1xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = index.mul %c9, %c14
    %cast = tensor.cast %9 : tensor<12x1xi16> to tensor<?x?xi16>
    %alloc_25 = memref.alloc() : memref<1x8xf16>
    %24 = tensor.empty() : tensor<12x8xf16>
    %25 = linalg.matmul ins(%17, %alloc_25 : tensor<12x1xf16>, memref<1x8xf16>) outs(%24 : tensor<12x8xf16>) -> tensor<12x8xf16>
    %26 = index.casts %c24690_i16 : i16 to index
    %27 = bufferization.clone %alloc_10 : memref<1xi32> to memref<1xi32>
    %28 = arith.maxsi %false_2, %false_2 : i1
    %29 = math.absf %13 : tensor<12x1xf16>
    %30 = tensor.empty() : tensor<12x1xf32>
    %mapped = linalg.map ins(%4, %8, %4 : tensor<12x1xf32>, tensor<12x1xf32>, tensor<12x1xf32>) outs(%30 : tensor<12x1xf32>)
      (%in: f32, %in_56: f32, %in_57: f32) {
        %alloca_58 = memref.alloca() : memref<1xi1>
        %262 = math.log1p %cst_8 : f32
        %263 = vector.create_mask %c2, %c3 : vector<12x1xi1>
        memref.assume_alignment %alloc_23, 8 : memref<12x1xi32>
        %cst_59 = arith.constant 4.736000e+04 : f16
        %alloc_60 = memref.alloc() : memref<1xf32>
        memref.copy %alloc_11, %alloc_60 : memref<1xf32> to memref<1xf32>
        %264 = arith.maxf %cst_4, %cst_4 : f16
        %265 = math.fma %in_56, %cst_8, %in : f32
        %266 = arith.remf %in_56, %cst_8 : f32
        %alloc_61 = memref.alloc() : memref<8x1xi32>
        memref.copy %alloc_20, %alloc_61 : memref<8x1xi32> to memref<8x1xi32>
        %267 = memref.alloca_scope  -> (i32) {
          %290 = math.atan2 %30, %8 : tensor<12x1xf32>
          %expanded_70 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x1xi64> into tensor<8x1x1xi64>
          %291 = math.cos %13 : tensor<12x1xf16>
          %292 = tensor.empty() : tensor<12x1xi32>
          %293 = math.fpowi %13, %292 : tensor<12x1xf16>, tensor<12x1xi32>
          %294 = math.log1p %cst_3 : f32
          %295 = index.ceildivu %26, %c14
          %296 = arith.divui %true_0, %true_0 : i1
          %297 = bufferization.clone %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
          %298 = arith.xori %false_5, %false : i1
          %299 = arith.subi %c646883787_i64, %c321629512_i64 : i64
          %300 = math.ctlz %6 : tensor<1xi1>
          %301 = math.tan %8 : tensor<12x1xf32>
          %c1_i32_71 = arith.constant 1 : i32
          %302 = math.fpowi %in, %c1_i32_71 : f32, i32
          %303 = arith.xori %c646883787_i64, %c646883787_i64 : i64
          %304 = math.copysign %4, %30 : tensor<12x1xf32>
          %305 = index.ceildivu %c14, %c0
          %306 = bufferization.to_tensor %alloc_13 : memref<12x1xi32>
          %307 = arith.shrui %false_5, %true_1 : i1
          %308 = arith.floordivsi %c460963850_i64, %c321629512_i64 : i64
          memref.assume_alignment %alloc_19, 2 : memref<8x1xf32>
          %309 = vector.broadcast %c460963850_i64 : i64 to vector<1x8x8xi64>
          %310 = memref.realloc %alloc_10 : memref<1xi32> to memref<12xi32>
          %311 = bufferization.clone %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
          %312 = vector.reduction <minf>, %19 : vector<12xf32> into f32
          %313 = math.exp %16 : tensor<12x1xf16>
          %314 = arith.maxui %true, %true_0 : i1
          %315 = vector.broadcast %23 : index to vector<1xindex>
          %316 = vector.broadcast %true_1 : i1 to vector<1xi1>
          vector.scatter %alloc[%c0, %c5, %c4] [%315], %316, %316 : memref<1x8x8xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %317 = index.mul %c14, %c7
          %318 = arith.cmpi sle, %c24690_i16, %c24690_i16 : i16
          vector.print %309 : vector<1x8x8xi64>
          %319 = math.exp %cst_8 : f32
          %320 = arith.floordivsi %true_0, %true : i1
          memref.alloca_scope.return %c1_i32_71 : i32
        }
        %from_elements_62 = tensor.from_elements %c460963850_i64, %c646883787_i64, %c321629512_i64, %c460963850_i64, %c460963850_i64, %c460963850_i64, %c321629512_i64, %c460963850_i64, %c646883787_i64, %c321629512_i64, %c460963850_i64, %c321629512_i64 : tensor<12x1xi64>
        %cst_63 = arith.constant 1.620800e+04 : f16
        %268 = math.floor %cst : f16
        %269 = arith.minui %false_5, %true_1 : i1
        %270 = tensor.empty() : tensor<8xi16>
        %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<8xi16>) outs(%14 : tensor<1x8x8xi16>) {
        ^bb0(%in_70: i16, %out: i16):
          %c1768082794_i64 = arith.constant 1768082794 : i64
          %290 = vector.insert %in_57, %19 [10] : f32 into vector<12xf32>
          %291 = math.fpowi %in_57, %267 : f32, i32
          %292 = arith.shli %c460963850_i64, %c646883787_i64 : i64
          %293 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xf32> to vector<12xf32>
          %294 = arith.floordivsi %c646883787_i64, %c460963850_i64 : i64
          %295 = math.tanh %cst_4 : f16
          %296 = index.divu %c0, %c14
          %297 = arith.maxsi %true, %true : i1
          %298 = math.ctlz %5 : tensor<1xi32>
          %299 = index.floordivs %c6, %c6
          %300 = arith.minui %true, %false : i1
          %301 = arith.xori %false_2, %true_0 : i1
          %302 = bufferization.to_tensor %alloc_21 : memref<12x1xi64>
          %extracted = tensor.extract %6[%c0] : tensor<1xi1>
          %303 = index.divs %c11, %c10
          %304 = vector.bitcast %263 : vector<12x1xi1> to vector<12x1xi1>
          %305 = index.divs %c9, %c4
          %306 = arith.xori %false, %true_1 : i1
          %307 = memref.load %alloc_14[%c0, %c4, %c6] : memref<1x8x8xi64>
          %308 = index.mul %c2, %c1
          memref.assume_alignment %alloc_14, 16 : memref<1x8x8xi64>
          %309 = vector.broadcast %false_2 : i1 to vector<12xi1>
          %dest_71, %accumulated_value_72 = vector.scan <add>, %263, %309 {inclusive = true, reduction_dim = 1 : i64} : vector<12x1xi1>, vector<12xi1>
          %310 = arith.xori %true_0, %true_1 : i1
          %311 = arith.addi %true_0, %extracted : i1
          %312 = bufferization.to_tensor %alloc_12 : memref<8x1xi1>
          %313 = affine.max affine_map<(d0) -> (d0 + 66)>(%c3)
          %314 = math.log1p %in_57 : f32
          %315 = bufferization.to_memref %from_elements_62 : memref<12x1xi64>
          %316 = index.casts %c2 : index to i32
          %317 = vector.insertelement %cst_8, %19[%313 : index] : vector<12xf32>
          %318 = math.rsqrt %cst_4 : f16
          linalg.yield %out : i16
        } -> tensor<1x8x8xi16>
        %272 = tensor.empty() : tensor<1xi1>
        %mapped_64 = linalg.map ins(%6, %reduced, %6 : tensor<1xi1>, tensor<1xi1>, tensor<1xi1>) outs(%272 : tensor<1xi1>)
          (%in_70: i1, %in_71: i1, %in_72: i1) {
            %290 = bufferization.clone %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
            %291 = vector.broadcast %false : i1 to vector<1xi1>
            %dest_73, %accumulated_value_74 = vector.scan <maxui>, %263, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<12x1xi1>, vector<1xi1>
            %c93227763_i64 = arith.constant 93227763 : i64
            %292 = vector.broadcast %c10 : index to vector<7xindex>
            %293 = vector.broadcast %false_2 : i1 to vector<7xi1>
            %294 = vector.broadcast %267 : i32 to vector<7xi32>
            vector.scatter %alloc_10[%c0] [%292], %293, %294 : memref<1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
            affine.store %c321629512_i64, %alloc_14[%c12, %c2, %c15] : memref<1x8x8xi64>
            %295 = math.floor %cst_4 : f16
            %296 = affine.max affine_map<(d0) -> (-d0 + d0 - 1, d0 * 8, d0 - 1)>(%c1)
            %297 = index.maxu %c2, %c14
            %298 = math.expm1 %cst_8 : f32
            %299 = vector.multi_reduction <maxf>, %19, %19 [] : vector<12xf32> to vector<12xf32>
            %300 = index.sub %c7, %c12
            %301 = affine.max affine_map<(d0) -> ((d0 * 8) floordiv 64, d0 ceildiv 64, d0 ceildiv 64 + 128, 0)>(%c6)
            affine.store %cst, %alloc_18[%c12] : memref<1xf16>
            memref.assume_alignment %alloc_16, 4 : memref<1xf16>
            %302 = tensor.empty() : tensor<1x7xi16>
            %303 = tensor.empty() : tensor<12x7xi16>
            %304 = linalg.matmul ins(%9, %302 : tensor<12x1xi16>, tensor<1x7xi16>) outs(%303 : tensor<12x7xi16>) -> tensor<12x7xi16>
            %collapsed = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<1x8x8xi16> into tensor<8x8xi16>
            %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %in_56 : vector<12xf32>, vector<12xf32> into f32
            %306 = math.fpowi %in_56, %267 : f32, i32
            %307 = bufferization.to_memref %20 : memref<1xi1>
            %308 = bufferization.to_memref %20 : memref<1xi1>
            %309 = bufferization.clone %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
            %310 = arith.mulf %in, %cst_7 : f32
            %expanded_75 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<1x8x8xi32> into tensor<1x8x8x1xi32>
            %311 = math.tanh %cst_8 : f32
            %312 = affine.load %308[%c1] : memref<1xi1>
            %313 = arith.maxsi %true_1, %in_72 : i1
            %314 = arith.remf %cst, %cst : f16
            %315 = vector.insertelement %in_56, %19[%c11 : index] : vector<12xf32>
            %316 = vector.reduction <maxf>, %19 : vector<12xf32> into f32
            %317 = math.tan %2 : tensor<1xf32>
            %c1134244337_i32 = arith.constant 1134244337 : i32
            %318 = bufferization.clone %alloc_15 : memref<8x1xi16> to memref<8x1xi16>
            %true_76 = arith.constant true
            linalg.yield %true_76 : i1
          }
        %273 = index.ceildivu %26, %c8
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_65 = arith.constant 0 : i16
        %274 = vector.transfer_read %14[%c13, %273, %c14], %c0_i16_65 : tensor<1x8x8xi16>, vector<i16>
        %275 = vector.broadcast %in : f32 to vector<12x1xf32>
        %276 = vector.fma %275, %275, %275 : vector<12x1xf32>
        %splat_66 = tensor.splat %c460963850_i64 : tensor<12x1xi64>
        %277 = math.ceil %13 : tensor<12x1xf16>
        %278 = memref.alloca_scope  -> (memref<1x8x8xi32>) {
          %290 = math.log2 %16 : tensor<12x1xf16>
          %291 = math.ctlz %11 : tensor<1x8x8xi1>
          memref.tensor_store %5, %alloc_10 : memref<1xi32>
          %292 = arith.shrui %c646883787_i64, %c321629512_i64 : i64
          %293 = math.log1p %cst_3 : f32
          %294 = arith.remf %cst_7, %in_56 : f32
          %295 = arith.divui %c321629512_i64, %c321629512_i64 : i64
          %296 = arith.xori %267, %267 : i32
          %297 = vector.splat %c1 : vector<1xindex>
          memref.copy %alloc_18, %alloc_16 : memref<1xf16> to memref<1xf16>
          %298 = vector.insertelement %in, %19[%c9 : index] : vector<12xf32>
          %299 = arith.floordivsi %true_6, %true_1 : i1
          %300 = math.rsqrt %2 : tensor<1xf32>
          %splat_70 = tensor.splat %c646883787_i64 : tensor<1xi64>
          %301 = index.sizeof
          %302 = index.mul %c3, %c10
          %303 = vector.broadcast %false_5 : i1 to vector<12xi1>
          %dest_71, %accumulated_value_72 = vector.scan <maxsi>, %263, %303 {inclusive = true, reduction_dim = 1 : i64} : vector<12x1xi1>, vector<12xi1>
          %304 = math.exp2 %13 : tensor<12x1xf16>
          %305 = math.log1p %2 : tensor<1xf32>
          %306 = math.round %cst_7 : f32
          %splat_73 = tensor.splat %cst_8 : tensor<12x1xf32>
          %307 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64 + 8, d0 * 16)>(%c14, %c8, %23, %c6)
          %308 = math.fpowi %cst_4, %267 : f16, i32
          %309 = arith.maxsi %false, %false_5 : i1
          %310 = arith.subi %267, %267 : i32
          %311 = arith.divf %cst, %cst : f16
          %312 = memref.realloc %alloc_10 : memref<1xi32> to memref<8xi32>
          %313 = math.copysign %30, %4 : tensor<12x1xf32>
          %314 = math.sqrt %cst : f16
          %315 = math.ctpop %c24690_i16 : i16
          %316 = arith.remf %in, %in : f32
          %317 = arith.remf %cst_7, %cst_7 : f32
          memref.alloca_scope.return %alloc_17 : memref<1x8x8xi32>
        }
        %279 = math.tanh %in_57 : f32
        %alloc_67 = memref.alloc() : memref<8xi32>
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %alloc_67, %alloc_67 : memref<1x8x8xi32>, memref<8xi32>, memref<8xi32>) outs(%0 : tensor<1x8x8xi32>) {
        ^bb0(%in_70: i32, %in_71: i32, %in_72: i32, %out: i32):
          %290 = bufferization.to_tensor %alloc_10 : memref<1xi32>
          %291 = math.tanh %cst_3 : f32
          %292 = index.divu %c12, %26
          %293 = vector.broadcast %c13 : index to vector<1xindex>
          %294 = vector.broadcast %false : i1 to vector<1xi1>
          vector.scatter %alloc_24[%c0, %c0, %c2] [%293], %294, %294 : memref<8x1x8xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %295 = arith.ceildivsi %267, %267 : i32
          %296 = math.tan %2 : tensor<1xf32>
          %alloc_73 = memref.alloc() : memref<1x8x8xi1>
          memref.copy %alloc, %alloc_73 : memref<1x8x8xi1> to memref<1x8x8xi1>
          memref.store %in_71, %alloc_17[%c0, %c2, %c2] : memref<1x8x8xi32>
          %297 = arith.maxf %cst_7, %in : f32
          memref.assume_alignment %alloc_19, 8 : memref<8x1xf32>
          %298 = math.ctlz %false_2 : i1
          %alloc_74 = memref.alloc() : memref<8x1xf32>
          memref.copy %alloc_19, %alloc_74 : memref<8x1xf32> to memref<8x1xf32>
          %c1_i32_75 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %299 = vector.transfer_read %0[%c12, %c5, %23], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<1x8x8xi32>, vector<8xi32>
          %300 = math.exp2 %13 : tensor<12x1xf16>
          %301 = arith.divui %c321629512_i64, %c321629512_i64 : i64
          %302 = math.roundeven %8 : tensor<12x1xf32>
          %303 = math.ctpop %21 : tensor<i1>
          %304 = bufferization.to_tensor %alloc_21 : memref<12x1xi64>
          affine.store %cst, %alloc_16[%c12] : memref<1xf16>
          %305 = bufferization.to_tensor %alloc_14 : memref<1x8x8xi64>
          %rank_76 = tensor.rank %9 : tensor<12x1xi16>
          %expanded_77 = tensor.expand_shape %2 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
          %extracted = tensor.extract %8[%c10, %c0] : tensor<12x1xf32>
          %306 = arith.remui %false_2, %false : i1
          %307 = math.log %13 : tensor<12x1xf16>
          %308 = vector.broadcast %cst_8 : f32 to vector<12x12xf32>
          %309 = vector.outerproduct %19, %19, %308 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
          %310 = vector.reduction <add>, %19 : vector<12xf32> into f32
          %311 = index.sizeof
          %312 = math.cttz %15 : tensor<12x1xi16>
          %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<8x1xi64> into tensor<8xi64>
          %313 = vector.broadcast %in_57 : f32 to vector<1xf32>
          %314 = vector.multi_reduction <mul>, %275, %313 [0] : vector<12x1xf32> to vector<1xf32>
          %315 = arith.divf %cst_4, %cst_4 : f16
          linalg.yield %267 : i32
        } -> tensor<1x8x8xi32>
        %281 = tensor.empty() : tensor<1x8x8xf16>
        %282 = vector.broadcast %cst_4 : f16 to vector<12x1xf16>
        %283 = vector.broadcast %267 : i32 to vector<12x1xi32>
        %284 = vector.gather %281[%c2, %c7, %c9] [%283], %263, %282 : tensor<1x8x8xf16>, vector<12x1xi32>, vector<12x1xi1>, vector<12x1xf16> into vector<12x1xf16>
        %285 = math.atan2 %13, %16 : tensor<12x1xf16>
        %286 = affine.load %alloc_16[%c5] : memref<1xf16>
        %287 = index.mul %c15, %c13
        %288 = index.maxu %287, %c5
        %false_68 = index.bool.constant false
        %289 = affine.apply affine_map<(d0) -> (d0)>(%23)
        %cst_69 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_69 : f32
      }
    bufferization.dealloc_tensor %7 : tensor<1x8x8xi16>
    %31 = index.mul %c15, %c4
    %32 = affine.apply affine_map<(d0) -> (d0 floordiv 32)>(%c6)
    %33 = math.sqrt %8 : tensor<12x1xf32>
    %34 = affine.load %alloc_12[%c13, %c12] : memref<8x1xi1>
    %35 = affine.for %arg2 = 0 to 39 iter_args(%arg3 = %true_6) -> (i1) {
      affine.yield %true_0 : i1
    }
    %36 = math.fpowi %3, %5 : tensor<1xf16>, tensor<1xi32>
    %37 = bufferization.to_tensor %alloc_22 : memref<1x8x8xi64>
    %38 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
    %39 = bufferization.to_tensor %alloc_22 : memref<1x8x8xi64>
    %40 = arith.divf %cst_3, %cst_3 : f32
    %41 = tensor.empty() : tensor<1x8x8xi64>
    %mapped_26 = linalg.map ins(%alloc_14, %alloc_22 : memref<1x8x8xi64>, memref<1x8x8xi64>) outs(%41 : tensor<1x8x8xi64>)
      (%in: i64, %in_56: i64) {
        %262 = index.mul %c2, %c15
        %263 = math.ctlz %9 : tensor<12x1xi16>
        %264 = math.log10 %4 : tensor<12x1xf32>
        %265 = math.log2 %13 : tensor<12x1xf16>
        memref.alloca_scope  {
          %287 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xf32> to vector<12xf32>
          %288 = arith.shrui %34, %true_0 : i1
          %289 = arith.shrui %c321629512_i64, %c460963850_i64 : i64
          %290 = math.tan %cst_3 : f32
          memref.store %cst_4, %alloc_16[%c0] : memref<1xf16>
          %291 = vector.broadcast %cst_3 : f32 to vector<12x1xf32>
          %292 = vector.fma %291, %291, %291 : vector<12x1xf32>
          %293 = vector.insertelement %cst_3, %19[%c6 : index] : vector<12xf32>
          %294 = vector.broadcast %c321629512_i64 : i64 to vector<12xi64>
          vector.transfer_write %294, %alloc_21[%c4, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, memref<12x1xi64>
          %295 = tensor.empty(%c12, %c15) : tensor<?x?x8xi16>
          %296 = arith.xori %c321629512_i64, %in : i64
          %alloc_61 = memref.alloc() : memref<1x7xi1>
          %297 = tensor.empty() : tensor<8x7xi1>
          %298 = linalg.matmul ins(%1, %alloc_61 : tensor<8x1xi1>, memref<1x7xi1>) outs(%297 : tensor<8x7xi1>) -> tensor<8x7xi1>
          %299 = index.maxu %c12, %c2
          %300 = vector.create_mask %c8, %32 : vector<8x1xi1>
          %301 = arith.divsi %c24690_i16, %c24690_i16 : i16
          %302 = arith.ceildivsi %true, %true_0 : i1
          %303 = affine.load %alloc_21[%c10, %c11] : memref<12x1xi64>
          %304 = vector.create_mask %262, %c9 : vector<12x1xi1>
          %305 = vector.broadcast %34 : i1 to vector<1xi1>
          %dest_62, %accumulated_value_63 = vector.scan <xor>, %304, %305 {inclusive = true, reduction_dim = 0 : i64} : vector<12x1xi1>, vector<1xi1>
          %306 = math.atan %cst_7 : f32
          %307 = math.rsqrt %3 : tensor<1xf16>
          %308 = memref.realloc %27 : memref<1xi32> to memref<7xi32>
          %309 = arith.shli %c646883787_i64, %in : i64
          %310 = math.fpowi %3, %5 : tensor<1xf16>, tensor<1xi32>
          %311 = index.ceildivu %c14, %c0
          %312 = arith.divui %true_6, %false_5 : i1
          %313 = affine.load %alloc_17[%c9, %c14, %c0] : memref<1x8x8xi32>
          %314 = arith.remui %true_0, %false_2 : i1
          %315 = math.copysign %3, %3 : tensor<1xf16>
          %316 = bufferization.to_tensor %27 : memref<1xi32>
          %317 = math.copysign %24, %24 : tensor<12x8xf16>
          %318 = vector.broadcast %cst_3 : f32 to vector<1xf32>
          %319 = vector.fma %318, %318, %318 : vector<1xf32>
          %320 = arith.maxui %c321629512_i64, %in : i64
        }
        %266 = memref.load %alloc_13[%c8, %c0] : memref<12x1xi32>
        memref.tensor_store %0, %alloc_17 : memref<1x8x8xi32>
        %267 = vector.insertelement %cst_8, %19[%c10 : index] : vector<12xf32>
        %268 = arith.maxui %true_0, %true_6 : i1
        %269 = math.ctlz %15 : tensor<12x1xi16>
        %270 = bufferization.to_tensor %alloc_13 : memref<12x1xi32>
        %271 = bufferization.to_memref %10 : memref<8x1xi1>
        %272 = arith.floordivsi %false_5, %true_1 : i1
        %273 = math.powf %8, %4 : tensor<12x1xf32>
        %splat_57 = tensor.splat %c646883787_i64 : tensor<1x8x8xi64>
        %274 = vector.broadcast %cst_7 : f32 to vector<12x1xf32>
        %275 = vector.fma %274, %274, %274 : vector<12x1xf32>
        vector.print %19 : vector<12xf32>
        %276 = arith.maxui %true_1, %true_0 : i1
        %277 = arith.minsi %false_2, %true : i1
        %278 = index.sizeof
        %from_elements_58 = tensor.from_elements %cst_7, %cst_8, %cst_7, %cst_8, %cst_3, %cst_3, %cst_3, %cst_3, %cst_8, %cst_3, %cst_7, %cst_3 : tensor<12x1xf32>
        %279 = math.cttz %270 : tensor<12x1xi32>
        memref.alloca_scope  {
          %287 = arith.floordivsi %c24690_i16, %c24690_i16 : i16
          %288 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
          %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %274, %274, %288 : vector<12x1xf32>, vector<12x1xf32> into vector<1x1xf32>
          bufferization.dealloc_tensor %5 : tensor<1xi32>
          %290 = arith.minf %cst, %cst : f16
          %291 = math.copysign %cst_8, %cst_8 : f32
          %292 = arith.xori %in, %in_56 : i64
          %293 = vector.extract %274[11] : vector<12x1xf32>
          %cast_61 = tensor.cast %15 : tensor<12x1xi16> to tensor<?x?xi16>
          %294 = math.log1p %from_elements_58 : tensor<12x1xf32>
          %295 = arith.divui %true_6, %true_1 : i1
          %296 = arith.remf %cst_8, %cst_3 : f32
          %297 = math.sqrt %4 : tensor<12x1xf32>
          %extracted = tensor.extract %12[%c6, %c0] : tensor<8x1xi64>
          %298 = index.divs %c1, %23
          %299 = math.fpowi %16, %270 : tensor<12x1xf16>, tensor<12x1xi32>
          %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
          %splat_62 = tensor.splat %cst_7 : tensor<8x1xf32>
          %301 = math.copysign %cst_7, %cst_8 : f32
          bufferization.dealloc_tensor %0 : tensor<1x8x8xi32>
          %302 = index.divs %31, %c9
          %303 = arith.maxui %34, %true_1 : i1
          %304 = math.cttz %5 : tensor<1xi32>
          %305 = arith.maxui %true_6, %false : i1
          %306 = vector.splat %32 : vector<12x1xindex>
          %c0_i32 = arith.constant 0 : i32
          %from_elements_63 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<8x1xi32>
          %307 = math.rsqrt %4 : tensor<12x1xf32>
          %308 = vector.broadcast %c646883787_i64 : i64 to vector<12x1xi64>
          %309 = vector.broadcast %true_0 : i1 to vector<12x1xi1>
          %310 = vector.broadcast %c0_i32 : i32 to vector<12x1xi32>
          %311 = vector.gather %alloc_21[%c2, %c6] [%310], %309, %308 : memref<12x1xi64>, vector<12x1xi32>, vector<12x1xi1>, vector<12x1xi64> into vector<12x1xi64>
          %312 = math.tanh %13 : tensor<12x1xf16>
          %313 = affine.load %alloc_15[%c10, %c10] : memref<8x1xi16>
          %314 = math.exp2 %8 : tensor<12x1xf32>
          %315 = vector.reduction <minf>, %293 : vector<1xf32> into f32
          %316 = affine.load %alloc_17[%c2, %c7, %c13] : memref<1x8x8xi32>
        }
        %280 = math.ceil %4 : tensor<12x1xf32>
        %alloca_59 = memref.alloca() : memref<12x1xi16>
        %true_60 = arith.constant true
        %281 = index.add %c5, %31
        %282 = arith.andi %c460963850_i64, %in_56 : i64
        %283 = vector.extract %275[2] : vector<12x1xf32>
        %284 = arith.remf %cst, %cst : f16
        %285 = arith.maxsi %c24690_i16, %c24690_i16 : i16
        %286 = arith.shrui %false, %true_0 : i1
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %c1_i64 = arith.constant 1 : i64
    %42 = vector.transfer_read %alloc_9[%c12, %c15, %c15], %c1_i64 : memref<1x8x8xi64>, vector<i64>
    memref.assume_alignment %alloc_16, 1 : memref<1xf16>
    %43 = math.log10 %cst_8 : f32
    %44 = tensor.empty() : tensor<12x1xf32>
    %mapped_27 = linalg.map ins(%30, %8, %4 : tensor<12x1xf32>, tensor<12x1xf32>, tensor<12x1xf32>) outs(%44 : tensor<12x1xf32>)
      (%in: f32, %in_56: f32, %in_57: f32) {
        %262 = vector.splat %c321629512_i64 : vector<1xi64>
        %263 = arith.shli %false_5, %34 : i1
        %c1_i32_58 = arith.constant 1 : i32
        memref.store %c1_i32_58, %alloc_13[%c2, %c0] : memref<12x1xi32>
        %264 = bufferization.to_memref %9 : memref<12x1xi16>
        %265 = vector.multi_reduction <add>, %19, %in [0] : vector<12xf32> to f32
        vector.print %19 : vector<12xf32>
        %266 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128 + d2 - (d1 - d3 - d3 ceildiv 2) - 128 + d2)>(%c8, %c3, %c11, %26)
        %267 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
        %268 = index.sub %c10, %c9
        %269 = arith.maxsi %c321629512_i64, %c460963850_i64 : i64
        %270 = math.cttz %10 : tensor<8x1xi1>
        scf.index_switch %c7 
        case 1 {
          memref.store %c1_i32_58, %alloc_17[%c0, %c4, %c7] : memref<1x8x8xi32>
          %292 = math.cttz %true_1 : i1
          %293 = arith.shrui %false_5, %false : i1
          %294 = math.cos %8 : tensor<12x1xf32>
          %295 = arith.cmpi eq, %false_5, %true_6 : i1
          %296 = bufferization.to_tensor %alloc_9 : memref<1x8x8xi64>
          %297 = math.log2 %44 : tensor<12x1xf32>
          %298 = index.mul %c6, %c3
          %299 = index.maxu %c1, %c7
          memref.assume_alignment %alloc_15, 16 : memref<8x1xi16>
          %from_elements_61 = tensor.from_elements %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16 : tensor<1x8x8xi16>
          %300 = math.rsqrt %cst_7 : f32
          %301 = math.log1p %in : f32
          memref.assume_alignment %alloc_24, 16 : memref<8x1x8xi1>
          %302 = index.divu %23, %298
          %303 = memref.realloc %27 : memref<1xi32> to memref<8xi32>
          scf.yield
        }
        case 2 {
          %292 = arith.maxsi %true, %true_0 : i1
          %293 = arith.minsi %false_2, %34 : i1
          %294 = math.exp %in_56 : f32
          %cst_61 = arith.constant 3.054400e+04 : f16
          %295 = memref.load %alloc_23[%c10, %c0] : memref<12x1xi32>
          %296 = math.rsqrt %4 : tensor<12x1xf32>
          %297 = arith.xori %c1_i64, %c321629512_i64 : i64
          %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
          %299 = vector.broadcast %c24690_i16 : i16 to vector<8x1xi16>
          %300 = vector.broadcast %false : i1 to vector<8x1xi1>
          %301 = vector.broadcast %c1_i32_58 : i32 to vector<8x1xi32>
          %302 = vector.gather %15[%c11, %c14] [%301], %300, %299 : tensor<12x1xi16>, vector<8x1xi32>, vector<8x1xi1>, vector<8x1xi16> into vector<8x1xi16>
          %303 = arith.shrui %34, %true_0 : i1
          %alloc_62 = memref.alloc() : memref<1xi32>
          %304 = arith.cmpi ult, %34, %false_2 : i1
          %305 = arith.shrui %c1_i64, %c321629512_i64 : i64
          vector.print %302 : vector<8x1xi16>
          %306 = vector.shuffle %301, %301 [0, 2, 3, 4, 5, 9, 10, 11, 12, 14, 15] : vector<8x1xi32>, vector<8x1xi32>
          %307 = arith.subi %c1_i64, %c646883787_i64 : i64
          scf.yield
        }
        case 3 {
          %292 = math.tan %13 : tensor<12x1xf16>
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %267, %in_57 : vector<12xf32>, vector<12xf32> into f32
          %collapsed_61 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<1x8x8xi32> into tensor<8x8xi32>
          %294 = math.copysign %3, %3 : tensor<1xf16>
          %295 = arith.xori %c460963850_i64, %c460963850_i64 : i64
          %alloc_62 = memref.alloc() : memref<1x7xi1>
          %296 = tensor.empty() : tensor<8x7xi1>
          %297 = linalg.matmul ins(%1, %alloc_62 : tensor<8x1xi1>, memref<1x7xi1>) outs(%296 : tensor<8x7xi1>) -> tensor<8x7xi1>
          %298 = arith.xori %true_1, %false_2 : i1
          %299 = arith.minui %true_6, %true_0 : i1
          memref.copy %alloc_13, %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
          %alloc_63 = memref.alloc() : memref<1x12xi64>
          %300 = tensor.empty() : tensor<8x12xi64>
          %301 = linalg.matmul ins(%12, %alloc_63 : tensor<8x1xi64>, memref<1x12xi64>) outs(%300 : tensor<8x12xi64>) -> tensor<8x12xi64>
          %alloca_64 = memref.alloca() : memref<1x8x8xi16>
          %302 = vector.reduction <mul>, %267 : vector<12xf32> into f32
          %303 = vector.broadcast %32 : index to vector<1xindex>
          %304 = vector.broadcast %true_0 : i1 to vector<1xi1>
          %305 = vector.broadcast %c1_i32_58 : i32 to vector<1xi32>
          vector.scatter %alloc_13[%c4, %c0] [%303], %304, %305 : memref<12x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
          %306 = math.roundeven %265 : f32
          %alloc_65 = memref.alloc() : memref<8x1xi1>
          memref.copy %alloc_12, %alloc_65 : memref<8x1xi1> to memref<8x1xi1>
          %307 = vector.broadcast %c1_i32_58 : i32 to vector<1x12x8xi32>
          %308 = vector.broadcast %c1_i32_58 : i32 to vector<12x8xi32>
          %dest_66, %accumulated_value_67 = vector.scan <maxui>, %307, %308 {inclusive = true, reduction_dim = 0 : i64} : vector<1x12x8xi32>, vector<12x8xi32>
          scf.yield
        }
        default {
          %splat_61 = tensor.splat %265 : tensor<12x1xf32>
          %alloc_62 = memref.alloc() : memref<1x1xf32>
          %292 = tensor.empty() : tensor<12x1xf32>
          %293 = linalg.matmul ins(%44, %alloc_62 : tensor<12x1xf32>, memref<1x1xf32>) outs(%292 : tensor<12x1xf32>) -> tensor<12x1xf32>
          %294 = arith.subi %34, %34 : i1
          %295 = tensor.empty() : tensor<1x1xi1>
          %296 = tensor.empty() : tensor<8x1xi1>
          %297 = linalg.matmul ins(%1, %295 : tensor<8x1xi1>, tensor<1x1xi1>) outs(%296 : tensor<8x1xi1>) -> tensor<8x1xi1>
          %298 = memref.load %alloc_9[%c0, %c2, %c3] : memref<1x8x8xi64>
          %299 = memref.realloc %alloc_16 : memref<1xf16> to memref<8xf16>
          %300 = vector.matrix_multiply %19, %267 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
          %301 = vector.broadcast %cst_8 : f32 to vector<12x12xf32>
          %302 = vector.outerproduct %267, %19, %301 {kind = #vector.kind<maxf>} : vector<12xf32>, vector<12xf32>
          %303 = arith.maxf %cst_8, %265 : f32
          %304 = math.atan %in_57 : f32
          %from_elements_63 = tensor.from_elements %in_57 : tensor<1xf32>
          %305 = arith.addi %false, %false_5 : i1
          %306 = math.sqrt %3 : tensor<1xf16>
          %307 = math.log10 %292 : tensor<12x1xf32>
          %308 = math.exp2 %cst_8 : f32
          %309 = index.maxu %32, %26
        }
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %267, %267, %265 : vector<12xf32>, vector<12xf32> into f32
        %272 = math.absi %false_2 : i1
        %273 = math.round %cst : f16
        %274 = arith.divui %c321629512_i64, %c1_i64 : i64
        %275 = math.fma %cst_8, %in, %cst_8 : f32
        %276 = math.copysign %8, %4 : tensor<12x1xf32>
        %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<12x1xf32> into tensor<12xf32>
        %277 = math.exp %2 : tensor<1xf32>
        memref.store %c24690_i16, %alloc_15[%c6, %c0] : memref<8x1xi16>
        %278 = scf.index_switch %c11 -> i32 
        case 1 {
          %292 = arith.remf %cst_8, %265 : f32
          %293 = bufferization.to_tensor %alloc : memref<1x8x8xi1>
          %294 = bufferization.clone %alloc_24 : memref<8x1x8xi1> to memref<8x1x8xi1>
          memref.copy %alloc_14, %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
          %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %267, %267, %cst_8 : vector<12xf32>, vector<12xf32> into f32
          %296 = index.mul %c3, %c15
          %expanded_61 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<12x1xi16> into tensor<12x1x1xi16>
          %297 = math.floor %2 : tensor<1xf32>
          %298 = vector.extract %19[8] : vector<12xf32>
          %alloc_62 = memref.alloc() : memref<1x8x8xi16>
          memref.tensor_store %7, %alloc_62 : memref<1x8x8xi16>
          %false_63 = arith.constant false
          %false_64 = arith.constant false
          %299 = vector.transfer_read %alloc_24[%c11, %c7, %c10], %false_64 : memref<8x1x8xi1>, vector<i1>
          %alloc_65 = memref.alloc() : memref<1x7xi1>
          %300 = tensor.empty() : tensor<8x7xi1>
          %301 = linalg.matmul ins(%10, %alloc_65 : tensor<8x1xi1>, memref<1x7xi1>) outs(%300 : tensor<8x7xi1>) -> tensor<8x7xi1>
          %302 = math.fpowi %cst_3, %c1_i32_58 : f32, i32
          %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %267, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
          %collapsed_66 = tensor.collapse_shape %41 [[0, 1], [2]] : tensor<1x8x8xi64> into tensor<8x8xi64>
          %from_elements_67 = tensor.from_elements %c321629512_i64, %c460963850_i64, %c321629512_i64, %c460963850_i64, %c1_i64, %c646883787_i64, %c460963850_i64, %c460963850_i64 : tensor<8x1xi64>
          scf.yield %c1_i32_58 : i32
        }
        case 2 {
          %292 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
          %293 = arith.maxsi %c460963850_i64, %c646883787_i64 : i64
          %294 = arith.ceildivsi %c1_i64, %c1_i64 : i64
          %295 = math.floor %44 : tensor<12x1xf32>
          %296 = affine.max affine_map<(d0, d1) -> (d0 + 8, (d0 - d1) * 128, (-d1) mod 16, -d1 + (d0 - d1) * 128 + 16)>(%c4, %32)
          memref.copy %alloc_13, %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
          %297 = arith.shrui %true_6, %true_0 : i1
          %expanded_61 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
          %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %267, %267, %in_57 : vector<12xf32>, vector<12xf32> into f32
          %299 = index.casts %26 : index to i32
          %300 = math.copysign %4, %4 : tensor<12x1xf32>
          %301 = math.expm1 %cst_8 : f32
          %302 = index.add %c5, %23
          %303 = index.add %266, %268
          %304 = arith.floordivsi %34, %false : i1
          %305 = index.ceildivs %266, %c0
          scf.yield %c1_i32_58 : i32
        }
        default {
          %292 = math.cos %4 : tensor<12x1xf32>
          %293 = index.sub %23, %c1
          %294 = index.divs %26, %268
          %295 = math.log10 %3 : tensor<1xf16>
          %296 = math.log1p %in_56 : f32
          %297 = vector.broadcast %true_6 : i1 to vector<i1>
          vector.transfer_write %297, %alloc_24[%c14, %c5, %c9] : vector<i1>, memref<8x1x8xi1>
          %298 = affine.max affine_map<(d0) -> (-(d0 floordiv 32 + d0), (d0 floordiv 32) floordiv 4, d0 * 4)>(%c12)
          %299 = vector.bitcast %267 : vector<12xf32> to vector<12xf32>
          %300 = arith.shrui %true_0, %false : i1
          affine.store %c460963850_i64, %alloc_9[%c13, %c8, %c6] : memref<1x8x8xi64>
          %301 = arith.minui %false_5, %false_5 : i1
          %302 = vector.shuffle %297, %297 [0, 1] : vector<i1>, vector<i1>
          memref.store %c1_i32_58, %alloc_10[%c0] : memref<1xi32>
          %303 = math.cttz %true_6 : i1
          %304 = arith.shli %true_0, %false_2 : i1
          %collapsed_61 = tensor.collapse_shape %41 [[0, 1], [2]] : tensor<1x8x8xi64> into tensor<8x8xi64>
          scf.yield %c1_i32_58 : i32
        }
        %279 = bufferization.to_memref %5 : memref<1xi32>
        %280 = math.ctpop %5 : tensor<1xi32>
        %281 = vector.broadcast %c12 : index to vector<1xindex>
        %282 = vector.broadcast %true : i1 to vector<1xi1>
        %283 = vector.broadcast %c646883787_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_22[%c0, %c1, %c5] [%281], %282, %283 : memref<1x8x8xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %284 = arith.ceildivsi %c321629512_i64, %c460963850_i64 : i64
        %285 = math.ctlz %1 : tensor<8x1xi1>
        %286 = vector.reduction <add>, %267 : vector<12xf32> into f32
        %287 = math.ctlz %7 : tensor<1x8x8xi16>
        %288 = vector.broadcast %c6 : index to vector<8xindex>
        %289 = vector.broadcast %34 : i1 to vector<8xi1>
        %290 = vector.broadcast %c1_i32_58 : i32 to vector<8xi32>
        vector.scatter %alloc_20[%c0, %c0] [%288], %289, %290 : memref<8x1xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
        %alloca_59 = memref.alloca() : memref<12x1xi1>
        %291 = math.expm1 %16 : tensor<12x1xf16>
        %cst_60 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_60 : f32
      }
    %false_28 = index.bool.constant false
    %45 = memref.load %alloc_16[%c0] : memref<1xf16>
    memref.store %c646883787_i64, %alloc_22[%c0, %c6, %c5] : memref<1x8x8xi64>
    %46 = arith.divsi %34, %true : i1
    %47 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%41 : tensor<1x8x8xi64>) {
    ^bb0(%out: i64):
      %262 = memref.realloc %alloc_11 : memref<1xf32> to memref<1xf32>
      %263 = affine.apply affine_map<(d0) -> ((d0 + 64) * 2)>(%23)
      %264 = math.log2 %cst_3 : f32
      memref.alloca_scope  {
        %290 = index.ceildivu %c9, %c2
        %291 = arith.shrui %true_1, %false_28 : i1
        %292 = arith.xori %c646883787_i64, %c1_i64 : i64
        %293 = vector.splat %c321629512_i64 : vector<12x1xi64>
        %alloc_61 = memref.alloc() : memref<1xi1>
        memref.tensor_store %6, %alloc_61 : memref<1xi1>
        %294 = bufferization.clone %alloc : memref<1x8x8xi1> to memref<1x8x8xi1>
        %295 = memref.realloc %alloc_10 : memref<1xi32> to memref<12xi32>
        %296 = math.cttz %false_5 : i1
        %297 = math.ctlz %6 : tensor<1xi1>
        %298 = vector.broadcast %cst_7 : f32 to vector<8x1xf32>
        %299 = vector.fma %298, %298, %298 : vector<8x1xf32>
        %300 = arith.ori %true_0, %true_1 : i1
        %301 = arith.mulf %cst_3, %cst_3 : f32
        %false_62 = index.bool.constant false
        %c1_i32_63 = arith.constant 1 : i32
        %from_elements_64 = tensor.from_elements %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63, %c1_i32_63 : tensor<12x1xi32>
        %302 = arith.maxf %cst_4, %cst_4 : f16
        %303 = arith.remui %c646883787_i64, %c646883787_i64 : i64
        %304 = math.tan %24 : tensor<12x8xf16>
        %305 = math.log1p %cst_3 : f32
        %306 = arith.shli %c646883787_i64, %c1_i64 : i64
        %307 = arith.minf %cst_8, %cst_8 : f32
        %308 = arith.cmpi ule, %c646883787_i64, %c1_i64 : i64
        %309 = tensor.empty(%290) : tensor<?xi32>
        %310 = math.log %16 : tensor<12x1xf16>
        %311 = math.floor %44 : tensor<12x1xf32>
        %312 = bufferization.to_tensor %alloc_20 : memref<8x1xi32>
        %313 = math.tan %30 : tensor<12x1xf32>
        %314 = math.roundeven %cst_4 : f16
        %315 = vector.insertelement %cst_8, %19[%c13 : index] : vector<12xf32>
        %316 = math.fpowi %cst_8, %c1_i32_63 : f32, i32
        %317 = math.cos %3 : tensor<1xf16>
        %318 = math.floor %cst_3 : f32
        %from_elements_65 = tensor.from_elements %true_6, %34, %false_2, %true_6, %false_2, %false, %true_1, %true_1 : tensor<8x1xi1>
      }
      %265 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %266 = arith.remf %cst_7, %cst_8 : f32
      %267 = bufferization.to_tensor %alloc_16 : memref<1xf16>
      %268 = index.sub %c0, %263
      %269 = arith.minui %true_1, %true_1 : i1
      %270 = bufferization.to_tensor %alloc_9 : memref<1x8x8xi64>
      %271 = index.divs %c1, %c12
      %alloc_56 = memref.alloc() : memref<1x8xi16>
      %272 = tensor.empty() : tensor<12x8xi16>
      %273 = linalg.matmul ins(%9, %alloc_56 : tensor<12x1xi16>, memref<1x8xi16>) outs(%272 : tensor<12x8xi16>) -> tensor<12x8xi16>
      %rank_57 = tensor.rank %17 : tensor<12x1xf16>
      %274 = math.powf %3, %3 : tensor<1xf16>
      %275 = math.powf %cst_3, %cst_3 : f32
      %276 = index.ceildivu %26, %c13
      %277 = math.log2 %44 : tensor<12x1xf32>
      %cast_58 = tensor.cast %16 : tensor<12x1xf16> to tensor<?x?xf16>
      %278 = math.log10 %24 : tensor<12x8xf16>
      %c296996510_i32 = arith.constant 296996510 : i32
      %279 = bufferization.to_memref %14 : memref<1x8x8xi16>
      %280 = math.roundeven %cst_8 : f32
      %alloc_59 = memref.alloc() : memref<8x8xi64>
      %alloc_60 = memref.alloc() : memref<8xi64>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %alloc_59, %alloc_60 : tensor<8x1xi64>, memref<8x8xi64>, memref<8xi64>) outs(%41 : tensor<1x8x8xi64>) {
      ^bb0(%in: i64, %in_61: i64, %in_62: i64, %out_63: i64):
        %c1102619838_i32 = arith.constant 1102619838 : i32
        %expanded_64 = tensor.expand_shape %3 [[0, 1]] : tensor<1xf16> into tensor<1x1xf16>
        %290 = math.ctpop %22 : tensor<i1>
        %291 = math.log2 %cst_8 : f32
        %292 = affine.max affine_map<(d0) -> (d0 * 8, d0 * -7, (d0 * 2) floordiv 64)>(%c13)
        %293 = vector.broadcast %cst_3 : f32 to vector<1x8x8xf32>
        %294 = vector.fma %293, %293, %293 : vector<1x8x8xf32>
        %alloca_65 = memref.alloca() : memref<12x1xi32>
        %295 = bufferization.to_tensor %alloc_10 : memref<1xi32>
        %296 = arith.subi %false_28, %34 : i1
        %297 = vector.broadcast %c12 : index to vector<7xindex>
        %298 = vector.broadcast %true : i1 to vector<7xi1>
        %299 = vector.broadcast %c321629512_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_14[%c0, %c5, %c6] [%297], %298, %299 : memref<1x8x8xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %300 = index.maxu %292, %rank_57
        %301 = math.atan %267 : tensor<1xf16>
        %302 = vector.broadcast %cst_7 : f32 to vector<8x1xf32>
        %303 = vector.fma %302, %302, %302 : vector<8x1xf32>
        %304 = tensor.empty() : tensor<1x8xi64>
        %305 = tensor.empty() : tensor<8x8xi64>
        %306 = linalg.matmul ins(%12, %304 : tensor<8x1xi64>, tensor<1x8xi64>) outs(%305 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %307 = math.cos %4 : tensor<12x1xf32>
        %308 = index.mul %271, %c4
        %309 = vector.insertelement %cst_7, %265[%300 : index] : vector<1xf32>
        %310 = vector.broadcast %cst_7 : f32 to vector<f32>
        %311 = vector.transfer_write %310, %30[%c3, %271] : vector<f32>, tensor<12x1xf32>
        %312 = math.powf %3, %3 : tensor<1xf16>
        %313 = index.casts %c15 : index to i32
        %314 = bufferization.clone %alloc : memref<1x8x8xi1> to memref<1x8x8xi1>
        %315 = vector.broadcast %cst_8 : f32 to vector<1x1xf32>
        %316 = vector.outerproduct %265, %265, %315 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %317 = vector.load %alloc_21[%c11, %c0] : memref<12x1xi64>, vector<1xi64>
        %318 = memref.load %alloc_24[%c6, %c0, %c7] : memref<8x1x8xi1>
        %319 = arith.remf %cst_4, %cst : f16
        %320 = bufferization.to_tensor %alloc_9 : memref<1x8x8xi64>
        %321 = math.log1p %cst_4 : f16
        %322 = tensor.empty() : tensor<1x7xi16>
        %323 = tensor.empty() : tensor<12x7xi16>
        %324 = linalg.matmul ins(%15, %322 : tensor<12x1xi16>, tensor<1x7xi16>) outs(%323 : tensor<12x7xi16>) -> tensor<12x7xi16>
        %325 = math.floor %3 : tensor<1xf16>
        %326 = index.sub %c9, %c14
        %327 = arith.floordivsi %in, %in_62 : i64
        %328 = math.copysign %cst_8, %cst_7 : f32
        linalg.yield %out_63 : i64
      } -> tensor<1x8x8xi64>
      bufferization.dealloc_tensor %18 : tensor<1xi1>
      %282 = scf.index_switch %c8 -> f32 
      case 1 {
        %290 = index.add %c11, %c15
        %291 = index.maxu %c3, %23
        %292 = arith.divf %cst_3, %cst_8 : f32
        %293 = arith.maxsi %false, %true_1 : i1
        %294 = vector.extract %19[5] : vector<12xf32>
        memref.store %c460963850_i64, %alloc_22[%c0, %c0, %c6] : memref<1x8x8xi64>
        %295 = math.ceil %13 : tensor<12x1xf16>
        %296 = vector.broadcast %268 : index to vector<12xindex>
        %297 = vector.broadcast %false : i1 to vector<12xi1>
        %c1_i32_61 = arith.constant 1 : i32
        %298 = vector.broadcast %c1_i32_61 : i32 to vector<12xi32>
        vector.scatter %alloc_20[%c3, %c0] [%296], %297, %298 : memref<8x1xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        bufferization.dealloc_tensor %1 : tensor<8x1xi1>
        %299 = bufferization.clone %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %300 = memref.realloc %alloc_11 : memref<1xf32> to memref<7xf32>
        %301 = arith.remf %cst, %cst_4 : f16
        %302 = vector.shuffle %265, %19 [3, 7, 8, 9, 11, 12] : vector<1xf32>, vector<12xf32>
        %303 = index.ceildivu %c13, %23
        %304 = arith.maxui %c1_i64, %c646883787_i64 : i64
        %305 = math.sqrt %13 : tensor<12x1xf16>
        scf.yield %cst_8 : f32
      }
      case 2 {
        %extracted = tensor.extract %20[%c0] : tensor<1xi1>
        %290 = arith.maxsi %true, %true : i1
        %291 = index.mul %c15, %c14
        %292 = vector.splat %c321629512_i64 : vector<12x1xi64>
        %alloc_61 = memref.alloc() : memref<1x8xi64>
        %293 = tensor.empty() : tensor<8x8xi64>
        %294 = linalg.matmul ins(%12, %alloc_61 : tensor<8x1xi64>, memref<1x8xi64>) outs(%293 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %295 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128 + d2 - (d1 - d3 - d3 ceildiv 2) - 128 + d2)>(%276, %32, %c13, %268)
        %alloca_62 = memref.alloca() : memref<12x1xf16>
        %296 = math.exp %cst_3 : f32
        %297 = math.powf %13, %13 : tensor<12x1xf16>
        %298 = index.ceildivu %c3, %c2
        %299 = index.divs %298, %c8
        %300 = vector.flat_transpose %265 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %301 = tensor.empty() : tensor<12x1xi32>
        %302 = math.fpowi %13, %301 : tensor<12x1xf16>, tensor<12x1xi32>
        %303 = index.divu %263, %c4
        %304 = vector.insert %cst_8, %19 [11] : f32 into vector<12xf32>
        %305 = math.log10 %13 : tensor<12x1xf16>
        scf.yield %cst_7 : f32
      }
      default {
        %290 = bufferization.to_memref %2 : memref<1xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %291 = vector.transfer_read %272[%c15, %c2], %c0_i16 : tensor<12x8xi16>, vector<i16>
        %292 = index.add %31, %32
        %293 = vector.matrix_multiply %265, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
        %294 = arith.xori %c321629512_i64, %c321629512_i64 : i64
        %c23518_i16 = arith.constant 23518 : i16
        %295 = math.sqrt %44 : tensor<12x1xf32>
        %alloc_61 = memref.alloc() : memref<1x8xi16>
        %296 = tensor.empty() : tensor<12x8xi16>
        %297 = linalg.matmul ins(%9, %alloc_61 : tensor<12x1xi16>, memref<1x8xi16>) outs(%296 : tensor<12x8xi16>) -> tensor<12x8xi16>
        %298 = math.ctpop %6 : tensor<1xi1>
        %299 = arith.divf %cst_7, %cst_7 : f32
        %300 = math.exp %cst_8 : f32
        %cast_62 = tensor.cast %11 : tensor<1x8x8xi1> to tensor<?x?x?xi1>
        %301 = index.sizeof
        %302 = bufferization.to_memref %9 : memref<12x1xi16>
        %303 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xf32> to vector<12xf32>
        %304 = math.cttz %21 : tensor<i1>
        scf.yield %cst_3 : f32
      }
      %283 = bufferization.to_tensor %alloc_19 : memref<8x1xf32>
      %284 = memref.load %alloc_9[%c0, %c5, %c5] : memref<1x8x8xi64>
      %285 = vector.multi_reduction <minf>, %265, %cst_7 [0] : vector<1xf32> to f32
      %286 = arith.remsi %false_28, %false_2 : i1
      %287 = math.expm1 %44 : tensor<12x1xf32>
      %288 = index.mul %c12, %c7
      %289 = memref.alloca_scope  -> (memref<1x8x8xi16>) {
        %290 = math.ctpop %false_28 : i1
        %291 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + d2)>(%c14, %rank_57, %32, %268)
        %292 = vector.splat %false_2 : vector<1x8x8xi1>
        %293 = vector.broadcast %c8 : index to vector<8xindex>
        %294 = vector.broadcast %34 : i1 to vector<8xi1>
        %295 = vector.broadcast %out : i64 to vector<8xi64>
        vector.scatter %alloc_21[%c10, %c0] [%293], %294, %295 : memref<12x1xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %296 = math.log1p %44 : tensor<12x1xf32>
        %297 = arith.remf %cst_8, %cst_3 : f32
        %298 = index.floordivs %263, %276
        %299 = vector.create_mask %c3, %rank_57, %c5 : vector<1x8x8xi1>
        %300 = math.cttz %12 : tensor<8x1xi64>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_61 = arith.constant 0 : i64
        %301 = vector.transfer_read %270[%26, %32, %rank_57], %c0_i64_61 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<1x8x8xi64>, vector<7xi64>
        %302 = affine.load %alloc[%c3, %c2, %c12] : memref<1x8x8xi1>
        %303 = math.atan2 %30, %8 : tensor<12x1xf32>
        %304 = bufferization.clone %alloc_11 : memref<1xf32> to memref<1xf32>
        %305 = bufferization.clone %279 : memref<1x8x8xi16> to memref<1x8x8xi16>
        %306 = bufferization.to_tensor %alloc_11 : memref<1xf32>
        %collapsed = tensor.collapse_shape %16 [[0, 1]] : tensor<12x1xf16> into tensor<12xf16>
        %307 = math.atan %cst_8 : f32
        %extracted = tensor.extract %4[%c9, %c0] : tensor<12x1xf32>
        %308 = math.copysign %17, %17 : tensor<12x1xf16>
        %309 = vector.broadcast %c11 : index to vector<1xindex>
        %310 = vector.broadcast %false_2 : i1 to vector<1xi1>
        vector.scatter %alloc_24[%c4, %c0, %c3] [%309], %310, %310 : memref<8x1x8xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %splat_62 = tensor.splat %false_5 : tensor<12x1xi1>
        %311 = arith.andi %c321629512_i64, %c321629512_i64 : i64
        %312 = index.divu %rank_57, %276
        %313 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3 - 2, 0)>(%263, %298, %23, %291)
        %314 = math.rsqrt %4 : tensor<12x1xf32>
        %315 = vector.matrix_multiply %265, %265 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %316 = arith.cmpi sge, %302, %false_5 : i1
        %317 = math.tanh %17 : tensor<12x1xf16>
        %318 = math.ctlz %41 : tensor<1x8x8xi64>
        %319 = vector.matrix_multiply %315, %315 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %320 = index.ceildivu %288, %288
        %321 = arith.shrui %c321629512_i64, %c646883787_i64 : i64
        memref.alloca_scope.return %305 : memref<1x8x8xi16>
      }
      linalg.yield %c1_i64 : i64
    } -> tensor<1x8x8xi64>
    %48 = affine.load %alloc_22[%c3, %c6, %c15] : memref<1x8x8xi64>
    %c1_i32 = arith.constant 1 : i32
    %from_elements = tensor.from_elements %c1_i32 : tensor<1xi32>
    %49 = arith.xori %48, %c460963850_i64 : i64
    %50 = affine.load %27[%c13] : memref<1xi32>
    %51 = bufferization.to_memref %15 : memref<12x1xi16>
    %alloca = memref.alloca() : memref<12x1xf32>
    %52 = arith.remf %cst_8, %cst_3 : f32
    %alloca_29 = memref.alloca() : memref<1x8x8xi64>
    %53 = arith.remf %cst_8, %cst_3 : f32
    %54 = arith.maxui %false_2, %true_0 : i1
    %55 = index.ceildivu %c3, %c12
    %56 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
    vector.print %19 : vector<12xf32>
    %57 = index.maxu %c1, %c2
    %58 = bufferization.to_memref %7 : memref<1x8x8xi16>
    %59 = affine.load %alloc_9[%c11, %c14, %c4] : memref<1x8x8xi64>
    %60 = math.cos %8 : tensor<12x1xf32>
    %61 = math.floor %8 : tensor<12x1xf32>
    %62 = math.log1p %8 : tensor<12x1xf32>
    memref.store %c1_i32, %alloc_17[%c0, %c0, %c0] : memref<1x8x8xi32>
    %63 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<1x8x8xi32>) {
    ^bb0(%out: i32):
      %262 = arith.shrsi %34, %false : i1
      %263 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
      %264 = vector.insertelement %cst_8, %19[%c9 : index] : vector<12xf32>
      %265 = index.divs %c8, %c11
      %266 = vector.broadcast %cst_8 : f32 to vector<12x12xf32>
      %267 = vector.outerproduct %263, %263, %266 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
      %268 = affine.load %alloc_17[%c7, %c14, %c7] : memref<1x8x8xi32>
      %269 = arith.divf %cst_7, %cst_7 : f32
      %270 = tensor.empty(%c9) : tensor<1x8x?xi64>
      %271 = math.atan2 %16, %13 : tensor<12x1xf16>
      %rank_56 = tensor.rank %21 : tensor<i1>
      %272 = arith.subi %true_0, %34 : i1
      %273 = math.powf %4, %8 : tensor<12x1xf32>
      %274 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %275 = vector.fma %274, %274, %274 : vector<1xf32>
      %276 = math.ipowi %c646883787_i64, %48 : i64
      %277 = index.ceildivu %c12, %c8
      %278 = math.floor %8 : tensor<12x1xf32>
      %279 = index.sub %265, %c12
      %280 = math.exp2 %13 : tensor<12x1xf16>
      %splat_57 = tensor.splat %c1_i64 : tensor<8x1xi64>
      %281 = bufferization.clone %alloc_20 : memref<8x1xi32> to memref<8x1xi32>
      %282 = math.tanh %30 : tensor<12x1xf32>
      %283 = arith.ori %out, %50 : i32
      %284 = vector.insert %cst_3, %275 [0] : f32 into vector<1xf32>
      bufferization.dealloc_tensor %1 : tensor<8x1xi1>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<1x8x8xi32>) {
      ^bb0(%out_59: i32):
        %cast_60 = tensor.cast %44 : tensor<12x1xf32> to tensor<?x?xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_61 = arith.constant 0 : i32
        %294 = vector.transfer_read %0[%26, %23, %c12], %c0_i32_61 : tensor<1x8x8xi32>, vector<i32>
        %295 = bufferization.clone %alloc_24 : memref<8x1x8xi1> to memref<8x1x8xi1>
        %296 = math.absf %17 : tensor<12x1xf16>
        %297 = math.cttz %c646883787_i64 : i64
        affine.store %c24690_i16, %alloc_15[%c10, %c3] : memref<8x1xi16>
        %298 = index.maxu %c14, %31
        %299 = vector.splat %c4 : vector<8x1xindex>
        %collapsed = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<1x8x8xi1> into tensor<8x8xi1>
        %300 = arith.maxsi %c321629512_i64, %c646883787_i64 : i64
        %301 = affine.load %alloc_18[%c9] : memref<1xf16>
        %302 = arith.maxf %cst_4, %cst_4 : f16
        %collapsed_62 = tensor.collapse_shape %37 [[0, 1], [2]] : tensor<1x8x8xi64> into tensor<8x8xi64>
        %303 = math.log %17 : tensor<12x1xf16>
        %expanded_63 = tensor.expand_shape %30 [[0], [1, 2]] : tensor<12x1xf32> into tensor<12x1x1xf32>
        %304 = index.add %c8, %c7
        %305 = math.log1p %301 : f16
        %306 = arith.minui %c1_i32, %c0_i32 : i32
        %307 = math.cttz %c24690_i16 : i16
        %308 = bufferization.to_memref %cast_60 : memref<?x?xf32>
        %309 = index.add %c6, %rank_56
        %310 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %310, %alloc_16[%277] : vector<f16>, memref<1xf16>
        affine.store %c24690_i16, %51[%c11, %c2] : memref<12x1xi16>
        %alloca_64 = memref.alloca() : memref<12x1xi16>
        %311 = arith.addi %c321629512_i64, %c460963850_i64 : i64
        %312 = index.add %c7, %c12
        %313 = arith.maxui %true, %true_1 : i1
        %alloc_65 = memref.alloc() : memref<1x1xi16>
        %314 = tensor.empty() : tensor<12x1xi16>
        %315 = linalg.matmul ins(%9, %alloc_65 : tensor<12x1xi16>, memref<1x1xi16>) outs(%314 : tensor<12x1xi16>) -> tensor<12x1xi16>
        %alloc_66 = memref.alloc() : memref<1x8xf16>
        %316 = tensor.empty() : tensor<12x8xf16>
        %317 = linalg.matmul ins(%13, %alloc_66 : tensor<12x1xf16>, memref<1x8xf16>) outs(%316 : tensor<12x8xf16>) -> tensor<12x8xf16>
        memref.assume_alignment %58, 2 : memref<1x8x8xi16>
        %318 = memref.realloc %alloc_11 : memref<1xf32> to memref<12xf32>
        %alloc_67 = memref.alloc() : memref<1xi32>
        linalg.yield %50 : i32
      } -> tensor<1x8x8xi32>
      %286 = bufferization.to_tensor %alloc_14 : memref<1x8x8xi64>
      %from_elements_58 = tensor.from_elements %false_28, %false_5, %true_1, %true, %true_0, %34, %false_2, %true : tensor<8x1xi1>
      %287 = vector.flat_transpose %275 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %288 = bufferization.clone %51 : memref<12x1xi16> to memref<12x1xi16>
      %289 = math.sqrt %cst_3 : f32
      %290 = vector.broadcast %true_6 : i1 to vector<1xi1>
      %291 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
      %292 = vector.gather %alloc_12[%rank_56, %c8] [%291], %290, %290 : memref<8x1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %c0_i64 = arith.constant 0 : i64
      %293 = vector.transfer_read %41[%c6, %rank_56, %c4], %c0_i64 : tensor<1x8x8xi64>, vector<i64>
      linalg.yield %out : i32
    } -> tensor<1x8x8xi32>
    affine.store %c1_i64, %alloc_14[%c5, %c6, %c12] : memref<1x8x8xi64>
    %64 = arith.shrui %true_1, %false_2 : i1
    %65 = math.ceil %cst : f16
    %66 = vector.insertelement %cst_3, %19[%55 : index] : vector<12xf32>
    %67 = math.tan %cst_4 : f16
    %68 = math.log10 %8 : tensor<12x1xf32>
    memref.alloca_scope  {
      %262 = tensor.empty() : tensor<12x1xi32>
      %263 = math.fpowi %17, %262 : tensor<12x1xf16>, tensor<12x1xi32>
      %264 = arith.shrui %c646883787_i64, %c321629512_i64 : i64
      %265 = bufferization.to_tensor %alloc_17 : memref<1x8x8xi32>
      %266 = arith.muli %c646883787_i64, %c321629512_i64 : i64
      %267 = math.log2 %cst_3 : f32
      %268 = math.exp2 %8 : tensor<12x1xf32>
      %269 = affine.max affine_map<(d0, d1, d2) -> (d0 - d2 - (d2 - (d0 - d2)) mod 16)>(%c3, %c6, %c8)
      %270 = arith.remf %cst_7, %cst_3 : f32
      %271 = math.log2 %cst_4 : f16
      %272 = arith.floordivsi %true_1, %true_0 : i1
      %cast_56 = tensor.cast %17 : tensor<12x1xf16> to tensor<?x?xf16>
      %273 = math.cttz %5 : tensor<1xi32>
      %274 = math.log1p %17 : tensor<12x1xf16>
      %275 = arith.divui %true_1, %34 : i1
      %alloc_57 = memref.alloc() : memref<8xi64>
      %alloc_58 = memref.alloc() : memref<1x8xi64>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_58, %alloc_57 : memref<8xi64>, memref<1x8xi64>, memref<8xi64>) outs(%41 : tensor<1x8x8xi64>) {
      ^bb0(%in: i64, %in_61: i64, %in_62: i64, %out: i64):
        %292 = index.sub %57, %c4
        %293 = math.rsqrt %4 : tensor<12x1xf32>
        %294 = arith.shrui %in_61, %c460963850_i64 : i64
        %295 = bufferization.clone %alloc_19 : memref<8x1xf32> to memref<8x1xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %296 = vector.transfer_read %7[%c12, %c11, %c6], %c0_i16 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<1x8x8xi16>, vector<1xi16>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_63 = arith.constant 0 : i64
        %297 = vector.transfer_read %37[%c9, %23, %c12], %c0_i64_63 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<1x8x8xi64>, vector<12xi64>
        %298 = vector.multi_reduction <add>, %19, %cst_3 [0] : vector<12xf32> to f32
        %299 = affine.apply affine_map<(d0) -> (d0 + 64)>(%c3)
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_8 : vector<12xf32>, vector<12xf32> into f32
        %301 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
        %302 = math.cos %2 : tensor<1xf32>
        %303 = math.tanh %30 : tensor<12x1xf32>
        %304 = math.expm1 %13 : tensor<12x1xf16>
        %305 = arith.remf %cst_8, %cst_3 : f32
        %alloc_64 = memref.alloc() : memref<12x1xf32>
        memref.tensor_store %44, %alloc_64 : memref<12x1xf32>
        %306 = bufferization.to_tensor %alloc_24 : memref<8x1x8xi1>
        %307 = arith.negf %cst_7 : f32
        %from_elements_65 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %50, %50, %c1_i32, %50, %50, %c1_i32, %50, %50 : tensor<12x1xi32>
        %308 = vector.broadcast %298 : f32 to vector<1x1xf32>
        %309 = vector.outerproduct %301, %301, %308 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %310 = math.log2 %17 : tensor<12x1xf16>
        %311 = arith.cmpi ne, %34, %true : i1
        %312 = bufferization.to_memref %7 : memref<1x8x8xi16>
        %313 = math.exp %13 : tensor<12x1xf16>
        %314 = vector.matrix_multiply %301, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
        %315 = bufferization.to_tensor %alloc_11 : memref<1xf32>
        %316 = bufferization.to_tensor %alloc_14 : memref<1x8x8xi64>
        %317 = math.rsqrt %2 : tensor<1xf32>
        %318 = arith.maxui %true_1, %false : i1
        %alloca_66 = memref.alloca() : memref<8x1xi1>
        %alloc_67 = memref.alloc() : memref<1xf16>
        %from_elements_68 = tensor.from_elements %false_2, %false_5, %true_0, %false_5, %true_6, %false, %false_2, %true_0, %true, %false, %false_2, %false : tensor<12x1xi1>
        %c1_i32_69 = arith.constant 1 : i32
        %319 = vector.transfer_read %265[%269, %c11, %c2], %c1_i32_69 : tensor<1x8x8xi32>, vector<8x8xi32>
        linalg.yield %in : i64
      } -> tensor<1x8x8xi64>
      %277 = memref.realloc %alloc_16 : memref<1xf16> to memref<7xf16>
      %278 = vector.broadcast %cst_8 : f32 to vector<1x8x8xf32>
      %279 = vector.fma %278, %278, %278 : vector<1x8x8xf32>
      %280 = index.divs %c4, %c14
      %281 = index.sizeof
      %282 = math.floor %cst_3 : f32
      %283 = memref.load %alloc_21[%c11, %c0] : memref<12x1xi64>
      %284 = index.mul %c6, %57
      %c1756132713_i64 = arith.constant 1756132713 : i64
      %285 = index.divs %c13, %c0
      %alloc_59 = memref.alloc() : memref<1x8x8xi16>
      %286 = math.absf %17 : tensor<12x1xf16>
      %287 = arith.minf %cst, %cst : f16
      %288 = arith.maxsi %48, %c460963850_i64 : i64
      %289 = arith.maxui %c321629512_i64, %c1_i64 : i64
      %290 = index.maxu %c6, %32
      %from_elements_60 = tensor.from_elements %cst_7, %cst_3, %cst_3, %cst_7, %cst_7, %cst_8, %cst_3, %cst_7, %cst_7, %cst_7, %cst_8, %cst_8 : tensor<12x1xf32>
      %291 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
    }
    %alloc_30 = memref.alloc() : memref<12x8xf16>
    memref.tensor_store %24, %alloc_30 : memref<12x8xf16>
    %69 = math.log %44 : tensor<12x1xf32>
    %alloc_31 = memref.alloc() : memref<8x1xi1>
    memref.copy %alloc_12, %alloc_31 : memref<8x1xi1> to memref<8x1xi1>
    %70 = index.divu %c2, %c9
    %71 = math.log2 %24 : tensor<12x8xf16>
    %72 = vector.insertelement %cst_3, %19[%c6 : index] : vector<12xf32>
    %73 = math.powf %3, %3 : tensor<1xf16>
    %74 = arith.maxf %cst_8, %cst_3 : f32
    %splat = tensor.splat %c646883787_i64 : tensor<8x1xi64>
    %75 = math.cttz %20 : tensor<1xi1>
    %76 = tensor.empty() : tensor<1x1xi1>
    %77 = tensor.empty() : tensor<8x1xi1>
    %78 = linalg.matmul ins(%1, %76 : tensor<8x1xi1>, tensor<1x1xi1>) outs(%77 : tensor<8x1xi1>) -> tensor<8x1xi1>
    %alloc_32 = memref.alloc() : memref<8x8xi32>
    %79 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %alloc_32 : memref<8x1xi32>, memref<8x8xi32>) outs(%0 : tensor<1x8x8xi32>) {
    ^bb0(%in: i32, %in_56: i32, %out: i32):
      %262 = vector.bitcast %19 : vector<12xf32> to vector<12xf32>
      %263 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0)>(%c9, %c10, %c2, %c15) -> f32 {
        %290 = vector.multi_reduction <add>, %19, %cst_8 [0] : vector<12xf32> to f32
        %291 = arith.floordivsi %false_5, %34 : i1
        %292 = vector.reduction <maxf>, %19 : vector<12xf32> into f32
        %293 = index.floordivs %c9, %c12
        affine.store %50, %alloc_23[%c10, %c12] : memref<12x1xi32>
        %294 = arith.maxui %in_56, %50 : i32
        %295 = arith.maxsi %true_1, %true : i1
        %alloca_61 = memref.alloca() : memref<1x8x8xi1>
        affine.yield %cst_3 : f32
      } else {
        %alloc_61 = memref.alloc() : memref<12x1xf32>
        memref.tensor_store %4, %alloc_61 : memref<12x1xf32>
        %290 = affine.max affine_map<(d0, d1) -> (d1, d1 * 127)>(%c12, %c8)
        %291 = arith.subi %c24690_i16, %c24690_i16 : i16
        %292 = math.copysign %13, %16 : tensor<12x1xf16>
        %alloca_62 = memref.alloca() : memref<12x1xi64>
        %293 = arith.xori %48, %48 : i64
        %294 = affine.load %alloc_19[%c11, %c7] : memref<8x1xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %295 = vector.transfer_read %7[%c3, %c5, %31], %c0_i16 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<1x8x8xi16>, vector<8x12xi16>
        affine.yield %cst_3 : f32
      }
      %264 = math.log1p %16 : tensor<12x1xf16>
      %alloc_57 = memref.alloc() : memref<8xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %alloc_57 : memref<8x1xi32>, memref<8xi32>) outs(%0 : tensor<1x8x8xi32>) {
      ^bb0(%in_61: i32, %in_62: i32, %out_63: i32):
        %290 = math.floor %cst_3 : f32
        %291 = math.log1p %24 : tensor<12x8xf16>
        %292 = index.maxu %c6, %c5
        %293 = affine.load %alloc_17[%c8, %c3, %c2] : memref<1x8x8xi32>
        memref.assume_alignment %alloc_16, 2 : memref<1xf16>
        %294 = vector.broadcast %cst_7 : f32 to vector<8x12xf32>
        %dest_64, %accumulated_value_65 = vector.scan <maxf>, %294, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<8x12xf32>, vector<12xf32>
        %295 = bufferization.clone %58 : memref<1x8x8xi16> to memref<1x8x8xi16>
        %alloc_66 = memref.alloc() : memref<1x12xi1>
        %296 = tensor.empty() : tensor<8x12xi1>
        %297 = linalg.matmul ins(%77, %alloc_66 : tensor<8x1xi1>, memref<1x12xi1>) outs(%296 : tensor<8x12xi1>) -> tensor<8x12xi1>
        %298 = vector.transpose %262, [0] : vector<12xf32> to vector<12xf32>
        %true_67 = arith.constant true
        %299 = vector.transfer_read %10[%c10, %c6], %true_67 : tensor<8x1xi1>, vector<7xi1>
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %262, %cst_8 : vector<12xf32>, vector<12xf32> into f32
        %301 = vector.multi_reduction <maxf>, %19, %cst_8 [0] : vector<12xf32> to f32
        %302 = math.copysign %cst, %cst : f16
        memref.store %cst_4, %alloc_18[%c0] : memref<1xf16>
        memref.tensor_store %1, %alloc_12 : memref<8x1xi1>
        %303 = arith.ceildivsi %c1_i64, %59 : i64
        %304 = vector.multi_reduction <maxf>, %19, %cst_7 [0] : vector<12xf32> to f32
        %305 = math.floor %2 : tensor<1xf32>
        %expanded_68 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x1xi64> into tensor<8x1x1xi64>
        %306 = math.cos %cst_7 : f32
        %307 = arith.remf %cst, %cst : f16
        %rank_69 = tensor.rank %11 : tensor<1x8x8xi1>
        %308 = index.divu %c10, %c12
        %309 = math.expm1 %24 : tensor<12x8xf16>
        %310 = vector.extract %262[10] : vector<12xf32>
        %311 = math.log2 %3 : tensor<1xf16>
        %312 = arith.floordivsi %false_5, %true_6 : i1
        %313 = arith.shrui %34, %false_28 : i1
        memref.assume_alignment %58, 8 : memref<1x8x8xi16>
        %314 = arith.maxui %true_6, %true_1 : i1
        %315 = math.expm1 %cst_8 : f32
        %316 = affine.max affine_map<(d0, d1) -> (((d1 ceildiv 2) mod 4) floordiv 16, d1, (d1 ceildiv 2) * 4, (d1 ceildiv 2) * 4)>(%c5, %57)
        linalg.yield %out_63 : i32
      } -> tensor<1x8x8xi32>
      %cst_58 = arith.constant 1.81600794E+9 : f32
      %266 = arith.addi %true_0, %true_0 : i1
      %267 = math.ctlz %splat : tensor<8x1xi64>
      %268 = math.cos %16 : tensor<12x1xf16>
      %from_elements_59 = tensor.from_elements %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4 : tensor<1x8x8xf16>
      memref.copy %27, %alloc_10 : memref<1xi32> to memref<1xi32>
      %269 = arith.shli %true_0, %34 : i1
      %270 = index.sub %c15, %c6
      memref.store %cst_7, %alloc_19[%c6, %c0] : memref<8x1xf32>
      %271 = arith.negf %cst : f16
      %272 = bufferization.clone %alloc_14 : memref<1x8x8xi64> to memref<1x8x8xi64>
      %273 = math.ctpop %reduced : tensor<1xi1>
      %274 = math.absf %17 : tensor<12x1xf16>
      %expanded_60 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
      %275 = vector.load %alloc_19[%c0, %c0] : memref<8x1xf32>, vector<8x1xf32>
      %276 = tensor.empty() : tensor<12x1xi32>
      %277 = math.fpowi %13, %276 : tensor<12x1xf16>, tensor<12x1xi32>
      %278 = bufferization.clone %alloc_11 : memref<1xf32> to memref<1xf32>
      %279 = arith.muli %true_1, %false : i1
      %280 = math.floor %cst_4 : f16
      %281 = math.cttz %6 : tensor<1xi1>
      %282 = index.divu %55, %23
      %283 = vector.broadcast %cst_7 : f32 to vector<1xf32>
      %284 = vector.insert %283, %275 [6] : vector<1xf32> into vector<8x1xf32>
      %285 = memref.realloc %27 : memref<1xi32> to memref<8xi32>
      %286 = index.sub %c13, %c13
      %287 = arith.divsi %34, %false : i1
      %288 = math.exp %3 : tensor<1xf16>
      memref.assume_alignment %alloc_11, 1 : memref<1xf32>
      %289 = vector.extract %262[7] : vector<12xf32>
      linalg.yield %50 : i32
    } -> tensor<1x8x8xi32>
    %80 = bufferization.clone %27 : memref<1xi32> to memref<1xi32>
    %81 = vector.multi_reduction <mul>, %19, %cst_7 [0] : vector<12xf32> to f32
    affine.store %false_5, %alloc_12[%c15, %c8] : memref<8x1xi1>
    affine.for %arg2 = 0 to 82 {
    }
    %82 = index.divs %c12, %c2
    memref.tensor_store %1, %alloc_12 : memref<8x1xi1>
    %83 = memref.realloc %27 : memref<1xi32> to memref<7xi32>
    memref.copy %alloc_9, %alloc_14 : memref<1x8x8xi64> to memref<1x8x8xi64>
    %84 = index.divu %c0, %c11
    %alloc_33 = memref.alloc() : memref<1x8xi16>
    %85 = tensor.empty() : tensor<12x8xi16>
    %86 = linalg.matmul ins(%9, %alloc_33 : tensor<12x1xi16>, memref<1x8xi16>) outs(%85 : tensor<12x8xi16>) -> tensor<12x8xi16>
    %from_elements_34 = tensor.from_elements %50 : tensor<1xi32>
    %87 = index.maxu %31, %c10
    %88 = tensor.empty() : tensor<1x8x8xf16>
    %89 = vector.broadcast %cst : f16 to vector<12x1xf16>
    %90 = vector.broadcast %false : i1 to vector<12x1xi1>
    %91 = vector.broadcast %50 : i32 to vector<12x1xi32>
    %92 = vector.gather %88[%c0, %26, %82] [%91], %90, %89 : tensor<1x8x8xf16>, vector<12x1xi32>, vector<12x1xi1>, vector<12x1xf16> into vector<12x1xf16>
    %93 = index.divu %c9, %c11
    %94 = arith.shli %50, %c1_i32 : i32
    affine.store %true_6, %alloc_24[%c0, %c3, %c4] : memref<8x1x8xi1>
    %95 = index.sub %c9, %87
    %rank = tensor.rank %15 : tensor<12x1xi16>
    %96 = arith.divsi %true_6, %true : i1
    %97 = math.tanh %4 : tensor<12x1xf32>
    %98 = index.maxu %70, %c6
    memref.copy %80, %27 : memref<1xi32> to memref<1xi32>
    %99 = arith.cmpi sgt, %false_2, %true : i1
    %100 = math.round %4 : tensor<12x1xf32>
    %101 = vector.insertelement %cst_7, %19[%87 : index] : vector<12xf32>
    %102 = tensor.empty() : tensor<1x8xf32>
    %103 = tensor.empty() : tensor<12x8xf32>
    %104 = linalg.matmul ins(%4, %102 : tensor<12x1xf32>, tensor<1x8xf32>) outs(%103 : tensor<12x8xf32>) -> tensor<12x8xf32>
    %105 = index.maxu %c6, %31
    %cast_35 = tensor.cast %from_elements : tensor<1xi32> to tensor<?xi32>
    memref.copy %alloc_9, %alloc_14 : memref<1x8x8xi64> to memref<1x8x8xi64>
    %106 = math.cos %cst_4 : f16
    %107 = math.log10 %cst_4 : f16
    %108 = arith.addi %false_5, %true_0 : i1
    %109 = vector.broadcast %c0 : index to vector<8xindex>
    %110 = vector.broadcast %true_1 : i1 to vector<8xi1>
    %111 = vector.broadcast %81 : f32 to vector<8xf32>
    vector.scatter %alloc_19[%c3, %c0] [%109], %110, %111 : memref<8x1xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<1xf16> into tensor<1x1xf16>
    %112 = affine.apply affine_map<(d0, d1) -> (d1 * -32 - 16)>(%c4, %c8)
    %113 = scf.while (%arg2 = %alloc_16) : (memref<1xf16>) -> memref<1xf16> {
      %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<12x1xi16> into tensor<12xi16>
      %262 = math.atan2 %17, %17 : tensor<12x1xf16>
      %263 = math.exp2 %cst_8 : f32
      %264 = index.divu %c1, %57
      %265 = math.floor %cst_4 : f16
      memref.alloca_scope  {
        %cast_57 = tensor.cast %12 : tensor<8x1xi64> to tensor<?x?xi64>
        %266 = arith.cmpi sle, %c321629512_i64, %59 : i64
        %alloc_58 = memref.alloc() : memref<8x1xi16>
        memref.copy %alloc_15, %alloc_58 : memref<8x1xi16> to memref<8x1xi16>
        %267 = index.casts %55 : index to i32
        %268 = math.log2 %cst_7 : f32
        %269 = arith.minui %false, %false_28 : i1
        %270 = affine.load %alloc_10[%c1] : memref<1xi32>
        affine.store %c646883787_i64, %alloc_9[%c8, %c8, %c4] : memref<1x8x8xi64>
        memref.assume_alignment %alloc_17, 4 : memref<1x8x8xi32>
        %extracted = tensor.extract %cast_57[%c0, %c0] : tensor<?x?xi64>
        %271 = arith.addi %true_0, %false_28 : i1
        %272 = memref.realloc %arg2 : memref<1xf16> to memref<8xf16>
        memref.copy %27, %80 : memref<1xi32> to memref<1xi32>
        %273 = affine.max affine_map<(d0) -> (0, 0)>(%112)
        %274 = arith.maxsi %c24690_i16, %c24690_i16 : i16
        %275 = vector.extract %19[5] : vector<12xf32>
        %276 = math.ceil %expanded : tensor<1x1xf16>
        %cast_59 = tensor.cast %11 : tensor<1x8x8xi1> to tensor<?x?x?xi1>
        vector.print %19 : vector<12xf32>
        %277 = vector.broadcast %34 : i1 to vector<1x1xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %90, %90, %277 : vector<12x1xi1>, vector<12x1xi1> into vector<1x1xi1>
        memref.store %c646883787_i64, %alloc_9[%c0, %c1, %c4] : memref<1x8x8xi64>
        %279 = arith.negf %cst_4 : f16
        memref.assume_alignment %alloc_21, 8 : memref<12x1xi64>
        %280 = math.floor %cst_8 : f32
        %281 = affine.max affine_map<(d0, d1, d2) -> (32, d0 ceildiv 8, (d2 + 8) ceildiv 32, (d2 + 8) ceildiv 32)>(%rank, %c5, %c0)
        %282 = arith.minui %34, %false_28 : i1
        %283 = math.log1p %2 : tensor<1xf32>
        %284 = affine.load %arg2[%c13] : memref<1xf16>
        %alloca_60 = memref.alloca() : memref<12x1xi64>
        %285 = index.sub %c8, %c11
        %286 = memref.load %alloc_19[%c5, %c0] : memref<8x1xf32>
        %287 = index.add %105, %c2
      }
      bufferization.dealloc_tensor %2 : tensor<1xf32>
      %from_elements_56 = tensor.from_elements %c24690_i16 : tensor<1xi16>
      scf.condition(%34) %alloc_16 : memref<1xf16>
    } do {
    ^bb0(%arg2: memref<1xf16>):
      %262 = vector.broadcast %cst_4 : f16 to vector<12xf16>
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %92, %262 {inclusive = true, reduction_dim = 1 : i64} : vector<12x1xf16>, vector<12xf16>
      %263 = math.exp %cst_4 : f16
      %264 = affine.if affine_set<(d0, d1, d2) : (d1 - 16 == 0)>(%c14, %c7, %c15) -> i32 {
        %275 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %91, %91, %275 : vector<12x1xi32>, vector<12x1xi32> into vector<1x1xi32>
        %277 = vector.broadcast %c15 : index to vector<12xindex>
        %278 = vector.broadcast %true_0 : i1 to vector<12xi1>
        %279 = vector.broadcast %50 : i32 to vector<12xi32>
        vector.scatter %alloc_13[%c4, %c0] [%277], %278, %279 : memref<12x1xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %collapsed = tensor.collapse_shape %85 [[0, 1]] : tensor<12x8xi16> into tensor<96xi16>
        vector.print %91 : vector<12x1xi32>
        %280 = arith.maxsi %c646883787_i64, %c646883787_i64 : i64
        %281 = affine.load %alloc_21[%c2, %c3] : memref<12x1xi64>
        %282 = vector.multi_reduction <maxf>, %19, %19 [] : vector<12xf32> to vector<12xf32>
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %14[%c3, %31, %c14], %c0_i16 : tensor<1x8x8xi16>, vector<8x1xi16>
        affine.yield %c1_i32 : i32
      } else {
        bufferization.dealloc_tensor %2 : tensor<1xf32>
        %275 = arith.remsi %c460963850_i64, %c1_i64 : i64
        %276 = arith.shrsi %true, %true_0 : i1
        %277 = index.divu %105, %70
        %278 = bufferization.clone %alloc_17 : memref<1x8x8xi32> to memref<1x8x8xi32>
        %279 = math.floor %88 : tensor<1x8x8xf16>
        %280 = arith.divsi %true_0, %false_5 : i1
        %281 = math.ctlz %splat : tensor<8x1xi64>
        affine.yield %50 : i32
      }
      %265 = math.tan %16 : tensor<12x1xf16>
      %alloc_58 = memref.alloc() : memref<12x1xi64>
      %266 = vector.bitcast %91 : vector<12x1xi32> to vector<12x1xi32>
      %267 = vector.insertelement %81, %19[%c10 : index] : vector<12xf32>
      %268 = vector.shuffle %19, %19 [2, 4, 5, 7, 8, 9, 11, 12, 15, 16, 19, 20, 21, 22] : vector<12xf32>, vector<12xf32>
      %269 = arith.shrui %c460963850_i64, %c321629512_i64 : i64
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d1 floordiv 32, d1 * 4)>(%98, %c10, %31, %c3)
      %271 = memref.realloc %arg2 : memref<1xf16> to memref<1xf16>
      %272 = vector.insertelement %cst_8, %19[%c0 : index] : vector<12xf32>
      %273 = memref.alloca_scope  -> (f32) {
        %275 = arith.maxsi %true_1, %false_2 : i1
        %276 = arith.divui %false_28, %true_6 : i1
        %277 = arith.divf %cst, %cst : f16
        %278 = arith.shrui %false_2, %true_0 : i1
        %279 = vector.broadcast %cst_3 : f32 to vector<12x1xf32>
        %280 = vector.fma %279, %279, %279 : vector<12x1xf32>
        %281 = vector.splat %cst_7 : vector<8x1xf32>
        %282 = arith.andi %59, %c321629512_i64 : i64
        %283 = arith.minsi %c1_i32, %50 : i32
        %284 = memref.realloc %27 : memref<1xi32> to memref<7xi32>
        %285 = vector.reduction <mul>, %19 : vector<12xf32> into f32
        %286 = math.ctpop %22 : tensor<i1>
        %true_60 = arith.constant true
        %287 = math.copysign %8, %8 : tensor<12x1xf32>
        memref.copy %alloc_23, %alloc_13 : memref<12x1xi32> to memref<12x1xi32>
        %288 = memref.realloc %alloc_11 : memref<1xf32> to memref<1xf32>
        memref.assume_alignment %alloc_10, 2 : memref<1xi32>
        %289 = vector.shuffle %266, %266 [5, 6, 7, 8, 11, 17, 19, 21, 22, 23] : vector<12x1xi32>, vector<12x1xi32>
        %290 = arith.divf %cst, %cst_4 : f16
        %dest_61, %accumulated_value_62 = vector.scan <maxf>, %280, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<12x1xf32>, vector<12xf32>
        %291 = index.divs %c14, %70
        %292 = arith.cmpf une, %cst_8, %cst_7 : f32
        %c19551279_i32 = arith.constant 19551279 : i32
        %293 = arith.shrui %59, %c460963850_i64 : i64
        %294 = arith.floordivsi %c460963850_i64, %c460963850_i64 : i64
        %295 = index.divu %c15, %rank
        %296 = index.divu %c4, %c9
        %297 = math.roundeven %17 : tensor<12x1xf16>
        %298 = bufferization.to_tensor %alloc_12 : memref<8x1xi1>
        %299 = index.maxu %87, %c10
        %300 = math.exp2 %cst_8 : f32
        %301 = vector.shuffle %280, %280 [1, 3, 4, 6, 7, 12, 16, 19, 20, 22] : vector<12x1xf32>, vector<12x1xf32>
        %302 = math.atan %2 : tensor<1xf32>
        memref.alloca_scope.return %81 : f32
      }
      %splat_59 = tensor.splat %cst_3 : tensor<1x8x8xf32>
      memref.assume_alignment %alloc_24, 4 : memref<8x1x8xi1>
      %274 = math.cos %8 : tensor<12x1xf32>
      scf.yield %alloc_16 : memref<1xf16>
    }
    %114 = math.tan %3 : tensor<1xf16>
    memref.copy %27, %alloc_10 : memref<1xi32> to memref<1xi32>
    %115 = arith.divf %81, %81 : f32
    %116 = math.floor %4 : tensor<12x1xf32>
    %117 = arith.maxsi %c646883787_i64, %c1_i64 : i64
    %118 = arith.divui %59, %c646883787_i64 : i64
    %119 = vector.broadcast %cst_4 : f16 to vector<1xf16>
    %dest, %accumulated_value = vector.scan <maxf>, %92, %119 {inclusive = false, reduction_dim = 0 : i64} : vector<12x1xf16>, vector<1xf16>
    %120 = math.log10 %cst_7 : f32
    %121 = scf.while (%arg2 = %19) : (vector<12xf32>) -> vector<12xf32> {
      %262 = memref.load %alloc_19[%c6, %c0] : memref<8x1xf32>
      %263 = arith.shrui %50, %c1_i32 : i32
      %264 = vector.splat %false_28 : vector<12x1xi1>
      %265 = arith.floordivsi %true, %true_1 : i1
      %266 = math.expm1 %44 : tensor<12x1xf32>
      %alloc_56 = memref.alloc() : memref<12x1xf32>
      memref.tensor_store %8, %alloc_56 : memref<12x1xf32>
      scf.if %false_5 {
        %268 = math.exp %44 : tensor<12x1xf32>
        %269 = index.divs %32, %57
        %270 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
        %271 = math.tan %2 : tensor<1xf32>
        %272 = arith.shrui %c321629512_i64, %59 : i64
        %273 = math.floor %cst_4 : f16
        %cast_57 = tensor.cast %2 : tensor<1xf32> to tensor<?xf32>
        %alloca_58 = memref.alloca() : memref<8x1xf32>
      } else {
        %268 = arith.minui %true_1, %true_1 : i1
        %269 = index.mul %c4, %c13
        %270 = math.log2 %8 : tensor<12x1xf32>
        %271 = math.roundeven %16 : tensor<12x1xf16>
        %272 = arith.divui %false, %false_28 : i1
        %alloc_57 = memref.alloc() : memref<8x1xi64>
        memref.tensor_store %splat, %alloc_57 : memref<8x1xi64>
        %273 = vector.broadcast %cst : f16 to vector<12xf16>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %92, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<12x1xf16>, vector<12xf16>
        %274 = vector.broadcast %cst_4 : f16 to vector<1x1xf16>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %92, %89, %274 : vector<12x1xf16>, vector<12x1xf16> into vector<1x1xf16>
      }
      %267 = arith.cmpi sge, %true, %true : i1
      scf.condition(%false_2) %19 : vector<12xf32>
    } do {
    ^bb0(%arg2: vector<12xf32>):
      %262 = scf.index_switch %c3 -> memref<8x1xi16> 
      case 1 {
        %280 = index.casts %93 : index to i32
        %281 = math.floor %cst_4 : f16
        %282 = bufferization.to_memref %15 : memref<12x1xi16>
        %283 = math.tan %16 : tensor<12x1xf16>
        %284 = arith.maxf %cst_3, %81 : f32
        %285 = vector.broadcast %cst_7 : f32 to vector<12x12xf32>
        %286 = vector.outerproduct %19, %19, %285 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        %287 = math.log2 %cst_8 : f32
        %288 = index.maxu %c5, %23
        %289 = index.divu %c5, %55
        %290 = math.log1p %expanded : tensor<1x1xf16>
        %291 = math.copysign %30, %4 : tensor<12x1xf32>
        %292 = vector.broadcast %81 : f32 to vector<8x1xf32>
        %293 = vector.fma %292, %292, %292 : vector<8x1xf32>
        %294 = vector.broadcast %cst : f16 to vector<1xf16>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %89, %294 {inclusive = true, reduction_dim = 0 : i64} : vector<12x1xf16>, vector<1xf16>
        %alloc_58 = memref.alloc() : memref<1x8x8xi1>
        memref.copy %alloc, %alloc_58 : memref<1x8x8xi1> to memref<1x8x8xi1>
        memref.copy %alloc_23, %alloc_13 : memref<12x1xi32> to memref<12x1xi32>
        %295 = tensor.empty() : tensor<12x1xi32>
        %296 = math.fpowi %30, %295 : tensor<12x1xf32>, tensor<12x1xi32>
        scf.yield %alloc_15 : memref<8x1xi16>
      }
      default {
        %280 = math.tan %24 : tensor<12x8xf16>
        %281 = bufferization.clone %80 : memref<1xi32> to memref<1xi32>
        %282 = index.maxu %c2, %70
        %283 = arith.andi %true_1, %true : i1
        %284 = index.add %c6, %98
        %expanded_56 = tensor.expand_shape %103 [[0], [1, 2]] : tensor<12x8xf32> into tensor<12x8x1xf32>
        %285 = vector.shuffle %19, %19 [0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 19] : vector<12xf32>, vector<12xf32>
        %286 = math.cttz %7 : tensor<1x8x8xi16>
        %c2022168525_i64 = arith.constant 2022168525 : i64
        %287 = bufferization.to_memref %18 : memref<1xi1>
        %288 = arith.remf %cst_4, %cst : f16
        %289 = math.log2 %8 : tensor<12x1xf32>
        %290 = vector.load %alloc_15[%c7, %c0] : memref<8x1xi16>, vector<1x8x8xi16>
        %291 = vector.insertelement %cst_7, %19[%c14 : index] : vector<12xf32>
        %292 = index.sub %c1, %282
        %293 = math.atan2 %8, %4 : tensor<12x1xf32>
        scf.yield %alloc_15 : memref<8x1xi16>
      }
      %263 = bufferization.to_tensor %alloc : memref<1x8x8xi1>
      %264 = arith.cmpi sgt, %c321629512_i64, %c460963850_i64 : i64
      %265 = index.casts %95 : index to i32
      %266 = bufferization.clone %alloc_10 : memref<1xi32> to memref<1xi32>
      %267 = tensor.empty() : tensor<12x8xi32>
      %268 = math.fpowi %103, %267 : tensor<12x8xf32>, tensor<12x8xi32>
      %269 = vector.reduction <minf>, %19 : vector<12xf32> into f32
      %270 = vector.broadcast %cst_3 : f32 to vector<12x1xf32>
      %271 = vector.fma %270, %270, %270 : vector<12x1xf32>
      %272 = math.log10 %cst_8 : f32
      %273 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %274 = math.log %88 : tensor<1x8x8xf16>
      %275 = index.divs %98, %112
      %276 = index.casts %c1_i64 : i64 to index
      %277 = math.floor %expanded : tensor<1x1xf16>
      %278 = bufferization.to_memref %5 : memref<1xi32>
      %279 = arith.maxsi %false_28, %true : i1
      scf.yield %19 : vector<12xf32>
    }
    %122 = math.copysign %cst_8, %81 : f32
    %123 = index.sub %c0, %70
    %124 = vector.broadcast %c6 : index to vector<8xindex>
    %125 = vector.broadcast %true_1 : i1 to vector<8xi1>
    vector.scatter %alloc[%c0, %c4, %c1] [%124], %125, %125 : memref<1x8x8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
    %126 = arith.divui %c24690_i16, %c24690_i16 : i16
    %alloc_36 = memref.alloc() : memref<8x1x8xi1>
    memref.copy %alloc_24, %alloc_36 : memref<8x1x8xi1> to memref<8x1x8xi1>
    %127 = arith.shrui %c24690_i16, %c24690_i16 : i16
    %128 = scf.if %false_28 -> (memref<8x1xi1>) {
      %262 = arith.ceildivsi %c1_i64, %c1_i64 : i64
      %263 = math.exp %4 : tensor<12x1xf32>
      %from_elements_56 = tensor.from_elements %cst_4, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4 : tensor<1x8x8xf16>
      %264 = math.log10 %16 : tensor<12x1xf16>
      %265 = arith.divui %c646883787_i64, %c321629512_i64 : i64
      bufferization.dealloc_tensor %reduced : tensor<1xi1>
      %266 = index.divu %55, %82
      %267 = arith.xori %false_5, %true : i1
      scf.yield %alloc_12 : memref<8x1xi1>
    } else {
      affine.store %cst_7, %alloc_19[%c2, %c15] : memref<8x1xf32>
      %262 = arith.addi %c24690_i16, %c24690_i16 : i16
      %263 = index.divs %c12, %105
      %264 = arith.shrui %false_28, %true : i1
      vector.print %91 : vector<12x1xi32>
      %c1_i64_56 = arith.constant 1 : i64
      %265 = vector.transfer_read %alloc_22[%c0, %c8, %32], %c1_i64_56 : memref<1x8x8xi64>, vector<1x8xi64>
      %266 = arith.divf %cst_8, %cst_3 : f32
      %267 = memref.realloc %alloc_16 : memref<1xf16> to memref<8xf16>
      scf.yield %alloc_12 : memref<8x1xi1>
    }
    %129 = math.log1p %cst_4 : f16
    %130 = index.ceildivu %32, %70
    %131 = index.maxu %112, %130
    %132 = vector.extract %89[1] : vector<12x1xf16>
    %from_elements_37 = tensor.from_elements %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16, %c24690_i16 : tensor<12x1xi16>
    %133 = math.log2 %cst : f16
    %134 = arith.remf %cst_3, %81 : f32
    %135 = bufferization.clone %80 : memref<1xi32> to memref<1xi32>
    %136 = vector.insert %cst, %132 [0] : f16 into vector<1xf16>
    %137 = math.floor %30 : tensor<12x1xf32>
    memref.store %50, %alloc_23[%c2, %c0] : memref<12x1xi32>
    %138 = bufferization.to_memref %from_elements_37 : memref<12x1xi16>
    memref.copy %alloc_13, %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
    %139 = math.floor %cst : f16
    %140 = bufferization.clone %51 : memref<12x1xi16> to memref<12x1xi16>
    %expanded_38 = tensor.expand_shape %39 [[0], [1], [2, 3]] : tensor<1x8x8xi64> into tensor<1x8x8x1xi64>
    %alloc_39 = memref.alloc() : memref<8x7xf16>
    %141 = tensor.empty() : tensor<12x7xf16>
    %142 = linalg.matmul ins(%24, %alloc_39 : tensor<12x8xf16>, memref<8x7xf16>) outs(%141 : tensor<12x7xf16>) -> tensor<12x7xf16>
    %143 = vector.insert %cst_3, %19 [4] : f32 into vector<12xf32>
    %144 = vector.broadcast %cst_8 : f32 to vector<1x8x8xf32>
    %145 = vector.fma %144, %144, %144 : vector<1x8x8xf32>
    %146 = math.powf %103, %103 : tensor<12x8xf32>
    %147 = arith.shli %c321629512_i64, %48 : i64
    %148 = index.maxu %98, %87
    %cst_40 = arith.constant 0x4E612006 : f32
    %149 = tensor.empty() : tensor<1x8x8xf16>
    %150 = vector.broadcast %81 : f32 to vector<1xf32>
    %151 = vector.fma %150, %150, %150 : vector<1xf32>
    %152 = affine.max affine_map<(d0) -> (d0 floordiv 2 + 64, (d0 floordiv 2) floordiv 128, (d0 - 8) ceildiv 64)>(%c7)
    %153 = math.cttz %expanded_38 : tensor<1x8x8x1xi64>
    %154 = math.exp2 %2 : tensor<1xf32>
    %155 = scf.while (%arg2 = %80) : (memref<1xi32>) -> memref<1xi32> {
      %expanded_56 = tensor.expand_shape %24 [[0], [1, 2]] : tensor<12x8xf16> into tensor<12x8x1xf16>
      %262 = index.sub %130, %26
      %263 = index.add %c11, %c5
      %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<8x1xi1> into tensor<8xi1>
      %264 = scf.while (%arg3 = %81) : (f32) -> f32 {
        %268 = math.powf %3, %3 : tensor<1xf16>
        %269 = index.divu %c8, %112
        %270 = vector.broadcast %cst_7 : f32 to vector<1x8x8xf32>
        %271 = vector.fma %270, %145, %270 : vector<1x8x8xf32>
        %272 = tensor.empty() : tensor<1x8xi1>
        %273 = tensor.empty() : tensor<8x8xi1>
        %274 = linalg.matmul ins(%10, %272 : tensor<8x1xi1>, tensor<1x8xi1>) outs(%273 : tensor<8x8xi1>) -> tensor<8x8xi1>
        %275 = arith.remsi %false_28, %false : i1
        %276 = arith.xori %c1_i64, %c646883787_i64 : i64
        %277 = arith.shrui %c1_i64, %c1_i64 : i64
        %278 = math.log10 %16 : tensor<12x1xf16>
        scf.condition(%false_28) %cst_8 : f32
      } do {
      ^bb0(%arg3: f32):
        %268 = index.divu %57, %84
        %269 = index.divu %105, %rank
        memref.copy %alloc_14, %alloc_22 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %cst_57 = arith.constant 0x4E59781B : f32
        %270 = math.floor %3 : tensor<1xf16>
        %271 = math.log1p %4 : tensor<12x1xf32>
        %272 = math.powf %cst_3, %81 : f32
        %273 = arith.divui %true, %true_1 : i1
        %dest_58, %accumulated_value_59 = vector.scan <add>, %89, %132 {inclusive = true, reduction_dim = 0 : i64} : vector<12x1xf16>, vector<1xf16>
        %274 = math.atan2 %141, %141 : tensor<12x7xf16>
        %alloca_60 = memref.alloca() : memref<1x8x8xi32>
        %275 = math.atan2 %17, %13 : tensor<12x1xf16>
        %276 = math.ctlz %6 : tensor<1xi1>
        %expanded_61 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
        %277 = arith.maxui %c24690_i16, %c24690_i16 : i16
        %278 = affine.max affine_map<(d0) -> (d0 mod 128 - 2, d0 - (d0 * 2 - 128), 0, d0 - (d0 * 2 - 128))>(%148)
        scf.yield %cst_7 : f32
      }
      %265 = math.ctlz %15 : tensor<12x1xi16>
      %266 = index.casts %55 : index to i32
      %267 = math.log2 %13 : tensor<12x1xf16>
      scf.condition(%true_1) %135 : memref<1xi32>
    } do {
    ^bb0(%arg2: memref<1xi32>):
      %262 = vector.multi_reduction <maxf>, %132, %132 [] : vector<1xf16> to vector<1xf16>
      %263 = arith.xori %true_1, %true_1 : i1
      %alloc_56 = memref.alloc() : memref<8x1xi16>
      memref.copy %alloc_15, %alloc_56 : memref<8x1xi16> to memref<8x1xi16>
      %264 = tensor.empty() : tensor<8x12xf16>
      %265 = tensor.empty() : tensor<12x12xf16>
      %266 = linalg.matmul ins(%24, %264 : tensor<12x8xf16>, tensor<8x12xf16>) outs(%265 : tensor<12x12xf16>) -> tensor<12x12xf16>
      %267 = arith.cmpi sle, %false_28, %34 : i1
      %268 = math.ctlz %true_0 : i1
      %269 = math.exp %24 : tensor<12x8xf16>
      %270 = math.exp %17 : tensor<12x1xf16>
      %271 = math.absi %5 : tensor<1xi32>
      %272 = bufferization.to_memref %30 : memref<12x1xf32>
      %rank_57 = tensor.rank %7 : tensor<1x8x8xi16>
      %273 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
      %274 = vector.insert %273, %91 [9] : vector<1xi32> into vector<12x1xi32>
      memref.store %cst_8, %alloc_19[%c4, %c0] : memref<8x1xf32>
      %275 = vector.load %alloc_24[%c0, %c0, %c5] : memref<8x1x8xi1>, vector<1xi1>
      %276 = tensor.empty() : tensor<12x1xi32>
      %mapped_58 = linalg.map ins(%alloc_13, %alloc_13 : memref<12x1xi32>, memref<12x1xi32>) outs(%276 : tensor<12x1xi32>)
        (%in: i32, %in_59: i32) {
          %278 = math.round %44 : tensor<12x1xf32>
          %279 = math.log1p %cst : f16
          %280 = math.round %4 : tensor<12x1xf32>
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_60 = arith.constant 0 : i32
          %281 = vector.transfer_read %alloc_10[%c14], %c0_i32_60 : memref<1xi32>, vector<i32>
          %282 = arith.addi %c1_i64, %c1_i64 : i64
          %283 = vector.extract %89[7] : vector<12x1xf16>
          %284 = math.cttz %18 : tensor<1xi1>
          %285 = math.round %81 : f32
          %286 = vector.broadcast %cst_3 : f32 to vector<12x1xf32>
          %287 = vector.fma %286, %286, %286 : vector<12x1xf32>
          %288 = arith.xori %c646883787_i64, %c646883787_i64 : i64
          %289 = arith.floordivsi %c460963850_i64, %48 : i64
          %290 = arith.floordivsi %true, %false : i1
          %291 = bufferization.clone %alloc_22 : memref<1x8x8xi64> to memref<1x8x8xi64>
          %292 = arith.muli %false, %true_1 : i1
          %293 = math.roundeven %4 : tensor<12x1xf32>
          %294 = math.atan2 %3, %3 : tensor<1xf16>
          %alloca_61 = memref.alloca() : memref<8x1xi64>
          %295 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
          %296 = arith.maxf %cst_8, %cst_7 : f32
          %297 = index.mul %c0, %31
          %298 = vector.broadcast %c24690_i16 : i16 to vector<8x1xi16>
          %299 = vector.broadcast %true_0 : i1 to vector<8x1xi1>
          %300 = vector.broadcast %in : i32 to vector<8x1xi32>
          %301 = vector.gather %14[%c0, %95, %c3] [%300], %299, %298 : tensor<1x8x8xi16>, vector<8x1xi32>, vector<8x1xi1>, vector<8x1xi16> into vector<8x1xi16>
          %302 = index.mul %112, %c10
          %303 = math.roundeven %expanded : tensor<1x1xf16>
          %304 = math.tanh %44 : tensor<12x1xf32>
          %305 = math.round %cst_3 : f32
          %306 = arith.shrui %false_5, %34 : i1
          %307 = arith.divui %50, %c0_i32 : i32
          %alloc_62 = memref.alloc() : memref<1x7xi1>
          %308 = tensor.empty() : tensor<8x7xi1>
          %309 = linalg.matmul ins(%77, %alloc_62 : tensor<8x1xi1>, memref<1x7xi1>) outs(%308 : tensor<8x7xi1>) -> tensor<8x7xi1>
          %alloca_63 = memref.alloca() : memref<8x1xi16>
          %310 = index.divu %c4, %26
          %311 = math.copysign %cst, %cst_4 : f16
          %312 = arith.remsi %in_59, %50 : i32
          %c1_i32_64 = arith.constant 1 : i32
          linalg.yield %c1_i32_64 : i32
        }
      %277 = math.cttz %c1_i64 : i64
      scf.yield %arg2 : memref<1xi32>
    }
    %156 = math.tanh %cst_8 : f32
    %157 = math.absf %8 : tensor<12x1xf32>
    %false_41 = arith.constant false
    %158 = vector.transfer_read %alloc_12[%26, %c0], %false_41 : memref<8x1xi1>, vector<12xi1>
    %cast_42 = tensor.cast %85 : tensor<12x8xi16> to tensor<?x?xi16>
    %159 = math.log %cst : f16
    %160 = index.mul %32, %c11
    %alloca_43 = memref.alloca() : memref<1x8x8xi64>
    %161 = vector.broadcast %cst_3 : f32 to vector<8x8xf32>
    %162 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %151, %145, %161 : vector<1xf32>, vector<1x8x8xf32> into vector<8x8xf32>
    %163 = math.exp %30 : tensor<12x1xf32>
    %164 = vector.matrix_multiply %19, %151 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<1xf32>) -> vector<12xf32>
    affine.store %c1_i32, %80[%c13] : memref<1xi32>
    %165 = math.copysign %141, %141 : tensor<12x7xf16>
    %166 = arith.maxui %c1_i32, %50 : i32
    %rank_44 = tensor.rank %from_elements : tensor<1xi32>
    %167 = arith.remui %c1_i64, %c646883787_i64 : i64
    %168 = arith.shrui %true_1, %false_41 : i1
    %169 = arith.maxsi %c1_i32, %c1_i32 : i32
    %170 = tensor.empty() : tensor<8x8xf16>
    %171 = tensor.empty() : tensor<8x1xf16>
    %172 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%170, %88, %171 : tensor<8x8xf16>, tensor<1x8x8xf16>, tensor<8x1xf16>) outs(%88 : tensor<1x8x8xf16>) {
    ^bb0(%in: f16, %in_56: f16, %in_57: f16, %out: f16):
      %262 = vector.multi_reduction <add>, %164, %cst_8 [0] : vector<12xf32> to f32
      %263 = vector.broadcast %in : f16 to vector<12x1xf16>
      %264 = index.maxu %23, %c4
      memref.assume_alignment %alloc_17, 4 : memref<1x8x8xi32>
      %265 = arith.minui %c460963850_i64, %c646883787_i64 : i64
      bufferization.dealloc_tensor %15 : tensor<12x1xi16>
      %extracted = tensor.extract %30[%c5, %c0] : tensor<12x1xf32>
      %266 = arith.muli %c24690_i16, %c24690_i16 : i16
      %267 = arith.floordivsi %c460963850_i64, %48 : i64
      %268 = math.cttz %11 : tensor<1x8x8xi1>
      %269 = math.expm1 %cst_3 : f32
      %270 = arith.cmpi slt, %true_0, %false_41 : i1
      %271 = memref.load %80[%c0] : memref<1xi32>
      %272 = index.divu %31, %264
      %false_58 = index.bool.constant false
      %273 = math.ctlz %true_0 : i1
      %274 = index.maxu %264, %c14
      %275 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %276 = vector.fma %275, %151, %151 : vector<1xf32>
      %277 = memref.realloc %alloc_18 : memref<1xf16> to memref<1xf16>
      memref.alloca_scope  {
        %288 = vector.create_mask %57, %264 : vector<12x1xi1>
        %289 = arith.subi %59, %c646883787_i64 : i64
        %290 = vector.broadcast %in_56 : f16 to vector<12xf16>
        %dest_60, %accumulated_value_61 = vector.scan <minf>, %89, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<12x1xf16>, vector<12xf16>
        %291 = math.exp %4 : tensor<12x1xf32>
        %292 = bufferization.to_tensor %58 : memref<1x8x8xi16>
        %true_62 = arith.constant true
        %293 = vector.transfer_read %11[%130, %c15, %c7], %true_62 : tensor<1x8x8xi1>, vector<12x8xi1>
        %294 = math.cttz %false_41 : i1
        %295 = bufferization.to_memref %39 : memref<1x8x8xi64>
        %296 = math.cos %24 : tensor<12x8xf16>
        %297 = arith.floordivsi %true_62, %true_1 : i1
        %298 = affine.load %135[%c10] : memref<1xi32>
        %299 = math.cos %24 : tensor<12x8xf16>
        %300 = math.exp %cst_4 : f16
        %301 = index.ceildivu %130, %148
        %302 = arith.maxui %true_1, %34 : i1
        %303 = arith.maxf %in_57, %out : f16
        %304 = arith.xori %true, %false_2 : i1
        %305 = index.ceildivu %c5, %123
        %306 = math.tan %2 : tensor<1xf32>
        %307 = bufferization.clone %128 : memref<8x1xi1> to memref<8x1xi1>
        %308 = index.ceildivu %305, %26
        %309 = vector.broadcast %81 : f32 to vector<1xf32>
        %310 = vector.fma %309, %309, %150 : vector<1xf32>
        memref.assume_alignment %alloc_14, 16 : memref<1x8x8xi64>
        %311 = arith.maxui %false_5, %false_58 : i1
        %312 = bufferization.clone %alloc_15 : memref<8x1xi16> to memref<8x1xi16>
        %313 = math.roundeven %expanded : tensor<1x1xf16>
        %314 = math.floor %2 : tensor<1xf32>
        %315 = math.roundeven %4 : tensor<12x1xf32>
        %316 = math.exp2 %30 : tensor<12x1xf32>
        %317 = arith.maxui %50, %c1_i32 : i32
        %318 = vector.broadcast %c2 : index to vector<1xindex>
        %319 = vector.broadcast %false_41 : i1 to vector<1xi1>
        vector.scatter %alloc_11[%c0] [%318], %319, %151 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %expanded_63 = tensor.expand_shape %44 [[0], [1, 2]] : tensor<12x1xf32> into tensor<12x1x1xf32>
      }
      %278 = arith.xori %true, %false : i1
      %279 = arith.minui %c646883787_i64, %c646883787_i64 : i64
      %280 = math.sqrt %3 : tensor<1xf16>
      affine.store %in_57, %alloc_16[%c2] : memref<1xf16>
      %281 = vector.insertelement %cst_7, %164[%98 : index] : vector<12xf32>
      %282 = math.fpowi %88, %0 : tensor<1x8x8xf16>, tensor<1x8x8xi32>
      %283 = arith.addi %false_58, %true_1 : i1
      %284 = index.sub %c12, %rank_44
      %285 = arith.shrui %c321629512_i64, %c460963850_i64 : i64
      %splat_59 = tensor.splat %cst_3 : tensor<12x1xf32>
      %286 = bufferization.clone %alloc_21 : memref<12x1xi64> to memref<12x1xi64>
      %287 = math.ctpop %41 : tensor<1x8x8xi64>
      linalg.yield %in : f16
    } -> tensor<1x8x8xf16>
    %173 = math.tan %16 : tensor<12x1xf16>
    %174 = math.exp2 %149 : tensor<1x8x8xf16>
    %175 = index.mul %130, %rank_44
    %176 = vector.broadcast %cst_7 : f32 to vector<8x8xf32>
    %177 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %145, %150, %176 : vector<1x8x8xf32>, vector<1xf32> into vector<8x8xf32>
    %cast_45 = tensor.cast %15 : tensor<12x1xi16> to tensor<?x?xi16>
    %178 = arith.remui %50, %50 : i32
    %179 = arith.maxui %true_1, %34 : i1
    %180 = arith.maxui %false_2, %true : i1
    %181 = vector.broadcast %cst_3 : f32 to vector<1xf32>
    %182 = vector.fma %181, %151, %150 : vector<1xf32>
    %183 = memref.alloca_scope  -> (memref<12x1xf32>) {
      %262 = arith.divsi %false, %false : i1
      %263 = math.ctlz %9 : tensor<12x1xi16>
      %264 = index.maxu %26, %148
      %265 = memref.alloca_scope  -> (memref<8x1xi32>) {
        %291 = arith.xori %false, %true_6 : i1
        %292 = index.mul %c12, %26
        %293 = affine.load %alloc_10[%c11] : memref<1xi32>
        %294 = affine.max affine_map<(d0, d1) -> (d1 * -128)>(%c11, %264)
        %295 = vector.broadcast %cst_7 : f32 to vector<8x8xf32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %151, %144, %295 : vector<1xf32>, vector<1x8x8xf32> into vector<8x8xf32>
        %cast_58 = tensor.cast %from_elements_37 : tensor<12x1xi16> to tensor<?x?xi16>
        %297 = math.ctlz %15 : tensor<12x1xi16>
        vector.print %151 : vector<1xf32>
        %298 = arith.muli %true_1, %true : i1
        %299 = arith.maxf %cst, %cst_4 : f16
        %300 = math.fpowi %cst_7, %293 : f32, i32
        %301 = arith.divf %cst_3, %81 : f32
        %302 = index.divu %26, %93
        %303 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
        %304 = vector.outerproduct %181, %182, %303 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %extracted = tensor.extract %cast_42[%c0, %c0] : tensor<?x?xi16>
        memref.copy %alloc_22, %alloc_14 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %305 = arith.shli %false_28, %34 : i1
        %306 = index.ceildivu %105, %57
        %307 = math.cttz %c1_i64 : i64
        %alloc_59 = memref.alloc() : memref<1x7xi64>
        %308 = tensor.empty() : tensor<8x7xi64>
        %309 = linalg.matmul ins(%12, %alloc_59 : tensor<8x1xi64>, memref<1x7xi64>) outs(%308 : tensor<8x7xi64>) -> tensor<8x7xi64>
        %310 = index.add %105, %rank_44
        %311 = arith.subi %c1_i32, %293 : i32
        %312 = arith.remf %cst_3, %cst_8 : f32
        %from_elements_60 = tensor.from_elements %48 : tensor<1xi64>
        %313 = vector.broadcast %32 : index to vector<12xindex>
        %314 = vector.broadcast %true_0 : i1 to vector<12xi1>
        %315 = vector.broadcast %c24690_i16 : i16 to vector<12xi16>
        vector.scatter %58[%c0, %c1, %c0] [%313], %314, %315 : memref<1x8x8xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %316 = math.atan2 %141, %141 : tensor<12x7xf16>
        memref.tensor_store %1, %alloc_12 : memref<8x1xi1>
        %317 = math.cos %2 : tensor<1xf32>
        %318 = math.roundeven %3 : tensor<1xf16>
        %319 = index.maxu %82, %152
        %320 = vector.broadcast %81 : f32 to vector<8x8xf32>
        %321 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %151, %145, %320 : vector<1xf32>, vector<1x8x8xf32> into vector<8x8xf32>
        %alloc_61 = memref.alloc() : memref<1x12xf32>
        %322 = tensor.empty() : tensor<12x12xf32>
        %323 = linalg.matmul ins(%4, %alloc_61 : tensor<12x1xf32>, memref<1x12xf32>) outs(%322 : tensor<12x12xf32>) -> tensor<12x12xf32>
        memref.alloca_scope.return %alloc_20 : memref<8x1xi32>
      }
      memref.store %true_1, %alloc_24[%c3, %c0, %c7] : memref<8x1x8xi1>
      %266 = math.sqrt %4 : tensor<12x1xf32>
      %267 = arith.maxf %cst_3, %cst_8 : f32
      %268 = index.sizeof
      %269 = arith.shrui %c460963850_i64, %59 : i64
      %270 = index.add %148, %c11
      %271 = affine.load %128[%c13, %c7] : memref<8x1xi1>
      %272 = affine.if affine_set<(d0, d1, d2) : (d0 + d1 - d2 == 0, d0 + 2 == 0)>(%c10, %c5, %c1) -> memref<12x1xi1> {
        %291 = math.cos %3 : tensor<1xf16>
        %292 = math.floor %2 : tensor<1xf32>
        %293 = affine.max affine_map<(d0, d1, d2, d3) -> (-(((d3 floordiv 8) ceildiv 32) ceildiv 2), d0 + 16)>(%c9, %270, %26, %123)
        %294 = arith.cmpf ogt, %cst_4, %cst : f16
        %295 = vector.matrix_multiply %19, %182 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<1xf32>) -> vector<12xf32>
        affine.store %cst_3, %alloc_11[%c15] : memref<1xf32>
        %296 = math.powf %cst_3, %cst_7 : f32
        %297 = index.casts %c321629512_i64 : i64 to index
        %alloc_58 = memref.alloc() : memref<12x1xi1>
        affine.yield %alloc_58 : memref<12x1xi1>
      } else {
        %291 = math.cttz %1 : tensor<8x1xi1>
        %292 = index.mul %152, %c8
        %alloc_58 = memref.alloc() : memref<1x7xi1>
        %293 = tensor.empty() : tensor<8x7xi1>
        %294 = linalg.matmul ins(%10, %alloc_58 : tensor<8x1xi1>, memref<1x7xi1>) outs(%293 : tensor<8x7xi1>) -> tensor<8x7xi1>
        %cast_59 = tensor.cast %0 : tensor<1x8x8xi32> to tensor<?x?x?xi32>
        %295 = math.roundeven %16 : tensor<12x1xf16>
        %296 = math.exp %17 : tensor<12x1xf16>
        %297 = vector.multi_reduction <maxf>, %164, %19 [] : vector<12xf32> to vector<12xf32>
        %298 = math.ctlz %11 : tensor<1x8x8xi1>
        %alloc_60 = memref.alloc() : memref<12x1xi1>
        affine.yield %alloc_60 : memref<12x1xi1>
      }
      memref.assume_alignment %58, 2 : memref<1x8x8xi16>
      %273 = arith.maxsi %true_1, %false_2 : i1
      %274 = arith.xori %59, %59 : i64
      %275 = math.log1p %13 : tensor<12x1xf16>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_7 : vector<12xf32>, vector<12xf32> into f32
      %277 = math.powf %141, %141 : tensor<12x7xf16>
      %278 = arith.ceildivsi %false_41, %false_41 : i1
      %279 = vector.splat %264 : vector<1xindex>
      %280 = vector.insertelement %81, %182[%c2 : index] : vector<1xf32>
      %281 = math.ceil %2 : tensor<1xf32>
      %282 = math.atan2 %17, %16 : tensor<12x1xf16>
      %283 = arith.cmpf ueq, %cst_7, %81 : f32
      %284 = vector.create_mask %c3, %148 : vector<8x1xi1>
      %285 = arith.muli %59, %c646883787_i64 : i64
      %286 = index.ceildivu %c12, %264
      %287 = bufferization.clone %alloc_16 : memref<1xf16> to memref<1xf16>
      %c1_i16 = arith.constant 1 : i16
      %288 = vector.transfer_read %7[%rank, %264, %c7], %c1_i16 : tensor<1x8x8xi16>, vector<i16>
      %289 = vector.load %138[%c6, %c0] : memref<12x1xi16>, vector<12x1xi16>
      %290 = math.floor %149 : tensor<1x8x8xf16>
      %expanded_56 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<12x1xi16> into tensor<12x1x1xi16>
      %alloc_57 = memref.alloc() : memref<12x1xf32>
      memref.alloca_scope.return %alloc_57 : memref<12x1xf32>
    }
    %184 = arith.floordivsi %false_5, %true_6 : i1
    %185 = tensor.empty() : tensor<12x1xf16>
    %186 = linalg.matmul ins(%17, %expanded : tensor<12x1xf16>, tensor<1x1xf16>) outs(%185 : tensor<12x1xf16>) -> tensor<12x1xf16>
    %187 = math.exp2 %44 : tensor<12x1xf32>
    %188 = arith.maxui %c646883787_i64, %c460963850_i64 : i64
    %189 = vector.matrix_multiply %19, %151 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<1xf32>) -> vector<12xf32>
    %190 = arith.divf %cst, %cst_4 : f16
    memref.alloca_scope  {
      %262 = math.powf %2, %2 : tensor<1xf32>
      %263 = index.mul %57, %c6
      %expanded_56 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<12x1xf32> into tensor<12x1x1xf32>
      memref.tensor_store %7, %58 : memref<1x8x8xi16>
      %264 = arith.remsi %50, %c1_i32 : i32
      %265 = math.atan %cst_3 : f32
      %266 = arith.subi %c321629512_i64, %c460963850_i64 : i64
      %267 = affine.load %alloc_20[%c4, %c3] : memref<8x1xi32>
      %268 = vector.shuffle %132, %132 [0, 1] : vector<1xf16>, vector<1xf16>
      vector.print %89 : vector<12x1xf16>
      %269 = index.maxu %c3, %c14
      %270 = index.maxu %23, %70
      %271 = vector.broadcast %26 : index to vector<7xindex>
      %272 = vector.broadcast %true_0 : i1 to vector<7xi1>
      %273 = vector.broadcast %cst_4 : f16 to vector<7xf16>
      vector.scatter %alloc_18[%c0] [%271], %272, %273 : memref<1xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %274 = math.roundeven %16 : tensor<12x1xf16>
      %275 = memref.alloca_scope  -> (i16) {
        %291 = arith.ori %267, %c1_i32 : i32
        %292 = affine.max affine_map<(d0, d1, d2) -> (-d1, d0)>(%c6, %c6, %263)
        %cast_58 = tensor.cast %13 : tensor<12x1xf16> to tensor<?x?xf16>
        %293 = memref.load %140[%c4, %c0] : memref<12x1xi16>
        memref.assume_alignment %alloc_22, 2 : memref<1x8x8xi64>
        %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%112, %c1, %95, %c0)
        %295 = vector.broadcast %true_0 : i1 to vector<12xi1>
        %dest_59, %accumulated_value_60 = vector.scan <minsi>, %90, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<12x1xi1>, vector<12xi1>
        %296 = arith.maxsi %48, %48 : i64
        %297 = index.divu %c8, %c11
        %298 = memref.load %alloc_22[%c0, %c5, %c6] : memref<1x8x8xi64>
        %299 = arith.divf %cst_8, %cst_3 : f32
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %181, %151, %cst_7 : vector<1xf32>, vector<1xf32> into f32
        %301 = arith.divui %true_6, %34 : i1
        %302 = vector.reduction <minf>, %19 : vector<12xf32> into f32
        %303 = math.expm1 %expanded_56 : tensor<12x1x1xf32>
        %alloc_61 = memref.alloc() : memref<1xi1>
        %304 = vector.reduction <maxf>, %182 : vector<1xf32> into f32
        %305 = index.divs %93, %c3
        %306 = arith.shrui %c321629512_i64, %c321629512_i64 : i64
        %307 = vector.broadcast %cst_7 : f32 to vector<8x1xf32>
        %308 = vector.fma %307, %307, %307 : vector<8x1xf32>
        %cast_62 = tensor.cast %15 : tensor<12x1xi16> to tensor<?x?xi16>
        %309 = math.expm1 %expanded : tensor<1x1xf16>
        %310 = vector.broadcast %148 : index to vector<8xindex>
        %311 = vector.broadcast %false : i1 to vector<8xi1>
        %312 = vector.broadcast %cst : f16 to vector<8xf16>
        vector.scatter %alloc_16[%c0] [%310], %311, %312 : memref<1xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %313 = math.round %8 : tensor<12x1xf32>
        %314 = index.sub %rank, %rank_44
        %315 = index.divs %112, %c2
        %cast_63 = tensor.cast %2 : tensor<1xf32> to tensor<?xf32>
        %316 = arith.addi %59, %c321629512_i64 : i64
        %317 = vector.splat %c0 : vector<1xindex>
        %318 = arith.ceildivsi %false_2, %true_1 : i1
        %319 = arith.shli %false, %false_5 : i1
        %320 = arith.shrui %true_1, %34 : i1
        memref.alloca_scope.return %c24690_i16 : i16
      }
      %alloca_57 = memref.alloca() : memref<1xf32>
      %276 = vector.insert %132, %92 [8] : vector<1xf16> into vector<12x1xf16>
      %277 = arith.minui %48, %c646883787_i64 : i64
      %278 = affine.load %alloc_14[%c9, %c14, %c7] : memref<1x8x8xi64>
      %279 = bufferization.clone %27 : memref<1xi32> to memref<1xi32>
      %280 = math.tan %81 : f32
      %281 = vector.broadcast %false_41 : i1 to vector<8x1xi1>
      %282 = affine.max affine_map<(d0, d1) -> (d0 * 4, d0 * 4, d0 * -2)>(%c9, %269)
      %283 = vector.splat %c2 : vector<12x1xindex>
      %284 = math.expm1 %8 : tensor<12x1xf32>
      %285 = arith.shrui %267, %50 : i32
      %286 = vector.multi_reduction <minf>, %145, %81 [0, 1, 2] : vector<1x8x8xf32> to f32
      scf.index_switch %175 
      case 1 {
        %cast_58 = tensor.cast %17 : tensor<12x1xf16> to tensor<?x?xf16>
        %291 = vector.broadcast %cst : f16 to vector<1xf16>
        memref.assume_alignment %alloc_9, 1 : memref<1x8x8xi64>
        %292 = arith.shli %278, %c321629512_i64 : i64
        %293 = math.expm1 %expanded : tensor<1x1xf16>
        %extracted = tensor.extract %37[%c0, %c5, %c6] : tensor<1x8x8xi64>
        memref.tensor_store %41, %alloc_14 : memref<1x8x8xi64>
        %from_elements_59 = tensor.from_elements %275, %275, %275, %c24690_i16, %275, %275, %275, %c24690_i16, %275, %c24690_i16, %275, %c24690_i16 : tensor<12x1xi16>
        %true_60 = arith.constant true
        %false_61 = arith.constant false
        %294 = vector.transfer_read %6[%c13], %false_61 : tensor<1xi1>, vector<i1>
        %295 = math.ceil %2 : tensor<1xf32>
        vector.print %189 : vector<12xf32>
        %296 = arith.maxui %c460963850_i64, %278 : i64
        %297 = math.ctlz %14 : tensor<1x8x8xi16>
        %298 = bufferization.to_memref %12 : memref<8x1xi64>
        %expanded_62 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
        %299 = math.sqrt %2 : tensor<1xf32>
        scf.yield
      }
      case 2 {
        %291 = math.log2 %13 : tensor<12x1xf16>
        %292 = index.ceildivu %c1, %26
        %293 = vector.broadcast %cst_3 : f32 to vector<12x1xf32>
        %294 = vector.fma %293, %293, %293 : vector<12x1xf32>
        %295 = index.divs %152, %c0
        %296 = index.mul %130, %269
        %297 = arith.remf %286, %cst_8 : f32
        memref.copy %alloc_22, %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %298 = index.casts %263 : index to i32
        %299 = bufferization.to_tensor %alloc_24 : memref<8x1x8xi1>
        memref.assume_alignment %alloc_13, 8 : memref<12x1xi32>
        %300 = math.expm1 %2 : tensor<1xf32>
        %301 = index.divs %55, %c9
        %302 = arith.subi %59, %c646883787_i64 : i64
        %303 = memref.realloc %135 : memref<1xi32> to memref<12xi32>
        %304 = index.floordivs %130, %c1
        %splat_58 = tensor.splat %c460963850_i64 : tensor<8x1xi64>
        scf.yield
      }
      default {
        memref.store %50, %alloc_10[%c0] : memref<1xi32>
        %291 = math.log2 %24 : tensor<12x8xf16>
        %292 = bufferization.clone %alloc_18 : memref<1xf16> to memref<1xf16>
        %293 = arith.divf %cst_7, %286 : f32
        %294 = vector.reduction <add>, %181 : vector<1xf32> into f32
        memref.copy %alloc_14, %alloc_22 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %295 = arith.maxsi %275, %c24690_i16 : i16
        %296 = vector.load %alloc_9[%c0, %c0, %c0] : memref<1x8x8xi64>, vector<12x1xi64>
        %297 = math.ctlz %expanded_38 : tensor<1x8x8x1xi64>
        %298 = arith.shrui %50, %267 : i32
        %299 = index.divs %c11, %c10
        %splat_58 = tensor.splat %275 : tensor<12x1xi16>
        %300 = vector.multi_reduction <and>, %90, %90 [] : vector<12x1xi1> to vector<12x1xi1>
        %301 = math.ctlz %77 : tensor<8x1xi1>
        %302 = arith.subi %278, %278 : i64
        %303 = vector.insertelement %81, %181[%130 : index] : vector<1xf32>
      }
      %287 = vector.reduction <mul>, %132 : vector<1xf16> into f16
      %288 = arith.floordivsi %false_2, %false_28 : i1
      %289 = math.ctlz %6 : tensor<1xi1>
      %290 = math.tanh %88 : tensor<1x8x8xf16>
    }
    %191 = vector.shuffle %144, %144 [1] : vector<1x8x8xf32>, vector<1x8x8xf32>
    %192 = math.exp %30 : tensor<12x1xf32>
    %193 = bufferization.clone %128 : memref<8x1xi1> to memref<8x1xi1>
    %194 = vector.broadcast %cst_3 : f32 to vector<1x8xf32>
    %dest_46, %accumulated_value_47 = vector.scan <maxf>, %145, %194 {inclusive = false, reduction_dim = 1 : i64} : vector<1x8x8xf32>, vector<1x8xf32>
    %195 = index.add %130, %31
    %196 = vector.shuffle %132, %132 [1] : vector<1xf16>, vector<1xf16>
    %197 = math.log1p %88 : tensor<1x8x8xf16>
    %198 = math.floor %149 : tensor<1x8x8xf16>
    %199 = math.exp2 %4 : tensor<12x1xf32>
    %200 = bufferization.clone %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
    %201 = arith.floordivsi %c24690_i16, %c24690_i16 : i16
    %splat_48 = tensor.splat %c321629512_i64 : tensor<1x8x8xi64>
    %202 = affine.if affine_set<(d0, d1, d2) : (0 == 0, d1 == 0)>(%c3, %c5, %c9) -> i32 {
      %alloc_56 = memref.alloc() : memref<8xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat, %37, %alloc_56 : tensor<8x1xi64>, tensor<1x8x8xi64>, memref<8xi64>) outs(%splat_48 : tensor<1x8x8xi64>) {
      ^bb0(%in: i64, %in_58: i64, %in_59: i64, %out: i64):
        %268 = vector.broadcast %81 : f32 to vector<1x8x8xf32>
        %269 = vector.fma %268, %268, %144 : vector<1x8x8xf32>
        %270 = math.cos %185 : tensor<12x1xf16>
        %271 = vector.insertelement %cst, %132[%82 : index] : vector<1xf16>
        %272 = math.absf %expanded : tensor<1x1xf16>
        %273 = math.log10 %3 : tensor<1xf16>
        %274 = affine.load %alloc_17[%c9, %c5, %c3] : memref<1x8x8xi32>
        %cast_60 = tensor.cast %77 : tensor<8x1xi1> to tensor<?x?xi1>
        %alloca_61 = memref.alloca() : memref<12x1xf16>
        %275 = math.floor %4 : tensor<12x1xf32>
        %276 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %277 = vector.fma %276, %276, %150 : vector<1xf32>
        %alloc_62 = memref.alloc() : memref<12x7xf16>
        memref.tensor_store %141, %alloc_62 : memref<12x7xf16>
        %278 = vector.broadcast %81 : f32 to vector<8x8xf32>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %144, %276, %278 : vector<1x8x8xf32>, vector<1xf32> into vector<8x8xf32>
        %280 = arith.negf %cst_8 : f32
        %281 = arith.maxui %false_5, %false : i1
        %282 = tensor.empty() : tensor<12x1xi32>
        %283 = math.fpowi %30, %282 : tensor<12x1xf32>, tensor<12x1xi32>
        %cast_63 = tensor.cast %149 : tensor<1x8x8xf16> to tensor<?x?x?xf16>
        %284 = vector.insertelement %cst_8, %19[%c13 : index] : vector<12xf32>
        %285 = arith.divui %false_41, %false : i1
        %286 = index.sub %c2, %95
        %287 = bufferization.to_tensor %193 : memref<8x1xi1>
        %288 = math.tan %4 : tensor<12x1xf32>
        %289 = math.ceil %cst_3 : f32
        %290 = math.ctpop %7 : tensor<1x8x8xi16>
        %291 = vector.shuffle %92, %89 [0, 2, 4, 5, 6, 10, 11, 12, 18, 19, 20, 22] : vector<12x1xf16>, vector<12x1xf16>
        %292 = tensor.empty() : tensor<12x7xi32>
        %293 = math.fpowi %141, %292 : tensor<12x7xf16>, tensor<12x7xi32>
        %alloc_64 = memref.alloc() : memref<1x8x8xi16>
        %294 = index.ceildivu %32, %c0
        %295 = arith.minsi %true_0, %false_41 : i1
        %296 = math.log2 %149 : tensor<1x8x8xf16>
        %297 = vector.load %128[%c7, %c0] : memref<8x1xi1>, vector<8x1xi1>
        %298 = math.copysign %16, %13 : tensor<12x1xf16>
        %299 = math.tan %3 : tensor<1xf16>
        linalg.yield %out : i64
      } -> tensor<1x8x8xi64>
      %263 = math.atan2 %13, %13 : tensor<12x1xf16>
      %264 = math.tan %16 : tensor<12x1xf16>
      %rank_57 = tensor.rank %8 : tensor<12x1xf32>
      memref.alloca_scope  {
        %268 = math.absi %false_5 : i1
        %269 = bufferization.clone %128 : memref<8x1xi1> to memref<8x1xi1>
        %270 = math.roundeven %2 : tensor<1xf32>
        %271 = math.tanh %8 : tensor<12x1xf32>
        bufferization.dealloc_tensor %15 : tensor<12x1xi16>
        %272 = memref.load %183[%c5, %c0] : memref<12x1xf32>
        %273 = arith.xori %c321629512_i64, %c460963850_i64 : i64
        %274 = arith.shrui %false_2, %true : i1
        %275 = arith.maxui %34, %false : i1
        %from_elements_58 = tensor.from_elements %81 : tensor<1xf32>
        %alloca_59 = memref.alloca() : memref<8x1xf32>
        affine.store %c646883787_i64, %alloc_22[%c11, %c11, %c12] : memref<1x8x8xi64>
        %276 = arith.minui %48, %c646883787_i64 : i64
        %277 = math.floor %3 : tensor<1xf16>
        %278 = vector.broadcast %cst_8 : f32 to vector<1x8xf32>
        %dest_60, %accumulated_value_61 = vector.scan <minf>, %145, %278 {inclusive = true, reduction_dim = 1 : i64} : vector<1x8x8xf32>, vector<1x8xf32>
        %279 = bufferization.to_tensor %alloc_18 : memref<1xf16>
        %280 = index.add %23, %c10
        %281 = index.divu %c15, %c9
        %282 = index.sizeof
        bufferization.dealloc_tensor %85 : tensor<12x8xi16>
        %283 = vector.splat %true_6 : vector<1x8x8xi1>
        %284 = index.floordivs %32, %c5
        memref.store %c1_i32, %alloc_17[%c0, %c6, %c1] : memref<1x8x8xi32>
        memref.assume_alignment %alloc_19, 8 : memref<8x1xf32>
        %285 = index.sub %105, %281
        %286 = vector.insert %cst_8, %182 [0] : f32 into vector<1xf32>
        %287 = math.roundeven %103 : tensor<12x8xf32>
        %288 = vector.shuffle %182, %164 [3, 4, 7, 12] : vector<1xf32>, vector<12xf32>
        %289 = math.expm1 %3 : tensor<1xf16>
        %290 = math.expm1 %3 : tensor<1xf16>
        %291 = bufferization.clone %alloc_23 : memref<12x1xi32> to memref<12x1xi32>
        %rank_62 = tensor.rank %10 : tensor<8x1xi1>
      }
      %265 = vector.insertelement %81, %150[%57 : index] : vector<1xf32>
      %266 = vector.create_mask %70, %rank : vector<12x1xi1>
      %267 = arith.floordivsi %false, %true : i1
      affine.yield %50 : i32
    } else {
      %262 = math.sqrt %cst_4 : f16
      memref.assume_alignment %140, 4 : memref<12x1xi16>
      %263 = arith.divf %cst_4, %cst_4 : f16
      %264 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
      %dest_56, %accumulated_value_57 = vector.scan <minui>, %91, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<12x1xi32>, vector<1xi32>
      %265 = arith.floordivsi %false_5, %false_28 : i1
      %alloca_58 = memref.alloca() : memref<8x1xi16>
      %266 = memref.load %27[%c0] : memref<1xi32>
      %267 = index.sizeof
      affine.yield %c1_i32 : i32
    }
    %203 = arith.maxsi %c646883787_i64, %48 : i64
    %204 = vector.insertelement %cst_8, %189[%105 : index] : vector<12xf32>
    %205 = math.powf %cst, %cst : f16
    %206 = arith.cmpi ne, %true_6, %false : i1
    %207 = arith.maxui %c24690_i16, %c24690_i16 : i16
    %208 = math.sqrt %13 : tensor<12x1xf16>
    %c1433237688_i32 = arith.constant 1433237688 : i32
    %209 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0, d0 floordiv 16 >= 0, d3 >= 0, d1 ceildiv 64 + 2 >= 0)>(%c2, %c10, %c14, %c9) -> memref<12x1xi32> {
      %262 = vector.extract %92[9] : vector<12x1xf16>
      %263 = math.powf %8, %44 : tensor<12x1xf32>
      %264 = index.mul %c5, %87
      memref.assume_alignment %alloc_11, 1 : memref<1xf32>
      %265 = tensor.empty() : tensor<12x7xf16>
      %mapped_56 = linalg.map ins(%141 : tensor<12x7xf16>) outs(%265 : tensor<12x7xf16>)
        (%in: f16) {
          %269 = index.add %c1, %93
          %270 = arith.maxf %cst_8, %cst_3 : f32
          %271 = arith.divf %cst, %cst_4 : f16
          bufferization.dealloc_tensor %41 : tensor<1x8x8xi64>
          %272 = arith.minf %cst_7, %cst_7 : f32
          %alloc_57 = memref.alloc() : memref<12x1xi64>
          memref.copy %alloc_21, %alloc_57 : memref<12x1xi64> to memref<12x1xi64>
          %273 = vector.broadcast %false : i1 to vector<1xi1>
          %274 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
          %275 = vector.gather %77[%131, %rank] [%274], %273, %273 : tensor<8x1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %276 = arith.maxsi %c1_i64, %c321629512_i64 : i64
          %277 = math.tanh %cst_3 : f32
          %c-11453_i16 = arith.constant -11453 : i16
          %expanded_58 = tensor.expand_shape %5 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
          %false_59 = index.bool.constant false
          %278 = math.ceil %30 : tensor<12x1xf32>
          %279 = vector.flat_transpose %150 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          memref.tensor_store %2, %alloc_11 : memref<1xf32>
          %280 = bufferization.clone %128 : memref<8x1xi1> to memref<8x1xi1>
          %281 = math.ctlz %15 : tensor<12x1xi16>
          %282 = vector.extract %262[0] : vector<1xf16>
          %283 = math.copysign %cst_3, %cst_7 : f32
          %collapsed = tensor.collapse_shape %149 [[0, 1], [2]] : tensor<1x8x8xf16> into tensor<8x8xf16>
          %284 = vector.flat_transpose %181 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %expanded_60 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<12x1xf16> into tensor<12x1x1xf16>
          %cast_61 = tensor.cast %10 : tensor<8x1xi1> to tensor<?x?xi1>
          %285 = math.log1p %30 : tensor<12x1xf32>
          %286 = math.floor %44 : tensor<12x1xf32>
          %287 = math.ctpop %14 : tensor<1x8x8xi16>
          %288 = affine.load %alloc_20[%c11, %c2] : memref<8x1xi32>
          %289 = arith.minf %cst_7, %cst_8 : f32
          %290 = arith.muli %true_6, %true_1 : i1
          memref.copy %alloc_22, %alloc_9 : memref<1x8x8xi64> to memref<1x8x8xi64>
          %extracted = tensor.extract %4[%c0, %c0] : tensor<12x1xf32>
          %291 = arith.xori %true_1, %false_5 : i1
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %266 = arith.xori %false_41, %false_2 : i1
      %267 = math.sqrt %149 : tensor<1x8x8xf16>
      %268 = math.log2 %24 : tensor<12x8xf16>
      affine.yield %alloc_13 : memref<12x1xi32>
    } else {
      %262 = math.cos %8 : tensor<12x1xf32>
      %263 = vector.broadcast %cst_3 : f32 to vector<1x8x8xf32>
      %264 = vector.fma %263, %145, %145 : vector<1x8x8xf32>
      %265 = bufferization.clone %alloc_24 : memref<8x1x8xi1> to memref<8x1x8xi1>
      %266 = arith.subi %c24690_i16, %c24690_i16 : i16
      %267 = math.tan %141 : tensor<12x7xf16>
      %268 = tensor.empty() : tensor<12x1xi32>
      %269 = math.fpowi %13, %268 : tensor<12x1xf16>, tensor<12x1xi32>
      memref.tensor_store %4, %183 : memref<12x1xf32>
      %270 = memref.atomic_rmw maxu %c1_i32, %80[%c0] : (i32, memref<1xi32>) -> i32
      affine.yield %alloc_13 : memref<12x1xi32>
    }
    %210 = index.ceildivs %c15, %148
    %alloc_49 = memref.alloc() : memref<1xi16>
    %211 = vector.broadcast %c24690_i16 : i16 to vector<8x1xi16>
    %212 = vector.broadcast %false_41 : i1 to vector<8x1xi1>
    %213 = vector.broadcast %50 : i32 to vector<8x1xi32>
    %214 = vector.gather %alloc_49[%82] [%213], %212, %211 : memref<1xi16>, vector<8x1xi32>, vector<8x1xi1>, vector<8x1xi16> into vector<8x1xi16>
    scf.index_switch %123 
    case 1 {
      %262 = vector.reduction <add>, %164 : vector<12xf32> into f32
      %263 = arith.minui %false, %false_5 : i1
      %264 = vector.shuffle %150, %182 [0, 1] : vector<1xf32>, vector<1xf32>
      %265 = index.ceildivu %c1, %148
      %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<12x1xi16> into tensor<12xi16>
      %266 = vector.broadcast %false_41 : i1 to vector<1x1xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %90, %90, %266 : vector<12x1xi1>, vector<12x1xi1> into vector<1x1xi1>
      %268 = math.floor %81 : f32
      %269 = math.cttz %collapsed : tensor<12xi16>
      %270 = arith.maxsi %true_1, %false_5 : i1
      %271 = vector.broadcast %81 : f32 to vector<12x12xf32>
      %272 = vector.outerproduct %164, %189, %271 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
      vector.print %214 : vector<8x1xi16>
      %273 = vector.shuffle %145, %145 [0] : vector<1x8x8xf32>, vector<1x8x8xf32>
      %274 = arith.divf %cst_8, %81 : f32
      %275 = affine.load %alloc_9[%c9, %c3, %c1] : memref<1x8x8xi64>
      affine.store %true, %alloc[%c4, %c4, %c14] : memref<1x8x8xi1>
      %276 = arith.xori %true_1, %false_41 : i1
      scf.yield
    }
    case 2 {
      %262 = vector.bitcast %91 : vector<12x1xi32> to vector<12x1xi32>
      %263 = math.cttz %false_5 : i1
      %264 = index.sizeof
      %265 = vector.broadcast %cst_7 : f32 to vector<1x8xf32>
      %dest_56, %accumulated_value_57 = vector.scan <add>, %144, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<1x8x8xf32>, vector<1x8xf32>
      %266 = vector.splat %23 : vector<8x1xindex>
      %267 = scf.if %true -> (i1) {
        %280 = vector.extract %262[5] : vector<12x1xi32>
        %281 = math.sqrt %185 : tensor<12x1xf16>
        %282 = math.cttz %false : i1
        %283 = tensor.empty() : tensor<12x1xi64>
        %284 = vector.broadcast %59 : i64 to vector<12x1xi64>
        %285 = vector.gather %283[%rank_44, %210] [%262], %90, %284 : tensor<12x1xi64>, vector<12x1xi32>, vector<12x1xi1>, vector<12x1xi64> into vector<12x1xi64>
        %286 = math.ctpop %41 : tensor<1x8x8xi64>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_58 = arith.constant 0 : i64
        %287 = vector.transfer_read %39[%31, %31, %c9], %c0_i64_58 : tensor<1x8x8xi64>, vector<i64>
        %288 = math.log1p %cst_4 : f16
        %289 = memref.realloc %alloc_16 : memref<1xf16> to memref<1xf16>
        scf.yield %false : i1
      } else {
        %280 = math.floor %13 : tensor<12x1xf16>
        %281 = math.log1p %cst_8 : f32
        %282 = arith.maxui %true_6, %false_5 : i1
        %283 = vector.broadcast %31 : index to vector<8xindex>
        %284 = vector.broadcast %false_2 : i1 to vector<8xi1>
        %285 = vector.broadcast %cst_8 : f32 to vector<8xf32>
        vector.scatter %alloc_11[%c0] [%283], %284, %285 : memref<1xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        memref.assume_alignment %58, 1 : memref<1x8x8xi16>
        %286 = math.cttz %true_0 : i1
        %287 = math.absf %16 : tensor<12x1xf16>
        %288 = bufferization.to_tensor %80 : memref<1xi32>
        scf.yield %false : i1
      }
      %268 = math.fpowi %81, %50 : f32, i32
      %269 = arith.andi %false_28, %267 : i1
      %270 = math.rsqrt %81 : f32
      %271 = math.tanh %30 : tensor<12x1xf32>
      %272 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
      %273 = vector.insert %272, %91 [9] : vector<1xi32> into vector<12x1xi32>
      %274 = tensor.empty() : tensor<1x1xf16>
      %275 = linalg.matmul ins(%expanded, %expanded : tensor<1x1xf16>, tensor<1x1xf16>) outs(%274 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %276 = math.tan %44 : tensor<12x1xf32>
      %277 = vector.load %135[%c0] : memref<1xi32>, vector<1xi32>
      %278 = math.log %30 : tensor<12x1xf32>
      %279 = vector.matrix_multiply %132, %132 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      scf.yield
    }
    default {
      %262 = bufferization.to_tensor %alloc_13 : memref<12x1xi32>
      %263 = vector.reduction <maxf>, %189 : vector<12xf32> into f32
      %264 = arith.remsi %c460963850_i64, %c646883787_i64 : i64
      %from_elements_56 = tensor.from_elements %81 : tensor<1xf32>
      %265 = scf.if %false_2 -> (f32) {
        %273 = math.ctlz %true_1 : i1
        %274 = index.maxu %c12, %98
        vector.print %151 : vector<1xf32>
        %from_elements_60 = tensor.from_elements %c646883787_i64, %c460963850_i64, %c321629512_i64, %c1_i64, %c460963850_i64, %c1_i64, %c1_i64, %59, %59, %48, %c321629512_i64, %48 : tensor<12x1xi64>
        %275 = vector.broadcast %c24690_i16 : i16 to vector<8xi16>
        %dest_61, %accumulated_value_62 = vector.scan <maxui>, %214, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<8x1xi16>, vector<8xi16>
        memref.store %59, %alloc_21[%c7, %c0] : memref<12x1xi64>
        %276 = math.exp2 %expanded : tensor<1x1xf16>
        memref.assume_alignment %193, 2 : memref<8x1xi1>
        scf.yield %cst_3 : f32
      } else {
        %273 = math.atan %149 : tensor<1x8x8xf16>
        %274 = index.casts %c3 : index to i32
        %275 = index.casts %195 : index to i32
        %276 = arith.remf %cst_3, %cst_3 : f32
        %277 = vector.broadcast %c24690_i16 : i16 to vector<1x1xi16>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %211, %214, %277 : vector<8x1xi16>, vector<8x1xi16> into vector<1x1xi16>
        %279 = arith.minui %c1_i32, %50 : i32
        %280 = arith.negf %cst_8 : f32
        %281 = vector.matrix_multiply %181, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
        scf.yield %cst_8 : f32
      }
      %266 = math.floor %185 : tensor<12x1xf16>
      %267 = arith.maxui %34, %false_5 : i1
      %268 = arith.maxui %c1_i32, %c1_i32 : i32
      %c-26451_i16 = arith.constant -26451 : i16
      %alloca_57 = memref.alloca() : memref<8x1xf32>
      %269 = index.casts %c1_i32 : i32 to index
      %270 = arith.divsi %false_2, %true_1 : i1
      %271 = arith.minui %true_0, %true_0 : i1
      %272 = math.log %17 : tensor<12x1xf16>
      %expanded_58 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<1x8x8xi32> into tensor<1x8x8x1xi32>
      %cast_59 = tensor.cast %37 : tensor<1x8x8xi64> to tensor<?x?x?xi64>
    }
    %215 = math.cttz %22 : tensor<i1>
    %216 = affine.load %alloc_20[%c5, %c0] : memref<8x1xi32>
    %217 = arith.minui %true_6, %true_6 : i1
    %cst_50 = arith.constant 1.34232576E+9 : f32
    %218 = tensor.empty() : tensor<12x1xf16>
    %mapped_51 = linalg.map ins(%17, %17 : tensor<12x1xf16>, tensor<12x1xf16>) outs(%218 : tensor<12x1xf16>)
      (%in: f16, %in_56: f16) {
        %262 = vector.load %80[%c0] : memref<1xi32>, vector<1x8x8xi32>
        %c2023456065_i64 = arith.constant 2023456065 : i64
        %263 = arith.andi %59, %c646883787_i64 : i64
        %264 = math.tanh %141 : tensor<12x7xf16>
        %265 = vector.multi_reduction <and>, %90, %false_28 [0, 1] : vector<12x1xi1> to i1
        %266 = math.expm1 %cst_7 : f32
        %267 = affine.load %80[%c6] : memref<1xi32>
        %268 = tensor.empty() : tensor<1x1xf32>
        %269 = tensor.empty() : tensor<12x1xf32>
        %270 = linalg.matmul ins(%30, %268 : tensor<12x1xf32>, tensor<1x1xf32>) outs(%269 : tensor<12x1xf32>) -> tensor<12x1xf32>
        %271 = math.log2 %185 : tensor<12x1xf16>
        %272 = math.floor %cst : f16
        %273 = index.sizeof
        memref.copy %alloc_12, %193 : memref<8x1xi1> to memref<8x1xi1>
        %alloc_57 = memref.alloc() : memref<i1>
        memref.tensor_store %22, %alloc_57 : memref<i1>
        %extracted = tensor.extract %from_elements_37[%c6, %c0] : tensor<12x1xi16>
        %alloc_58 = memref.alloc() : memref<1xi16>
        memref.copy %alloc_49, %alloc_58 : memref<1xi16> to memref<1xi16>
        %collapsed = tensor.collapse_shape %24 [[0, 1]] : tensor<12x8xf16> into tensor<96xf16>
        %expanded_59 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<12x1xi16> into tensor<12x1x1xi16>
        %274 = math.log10 %81 : f32
        %275 = index.maxu %c12, %152
        %276 = index.ceildivu %c4, %275
        %277 = memref.alloca_scope  -> (f32) {
          %cast_62 = tensor.cast %44 : tensor<12x1xf32> to tensor<?x?xf32>
          bufferization.dealloc_tensor %expanded : tensor<1x1xf16>
          %289 = math.exp %cst_8 : f32
          %290 = arith.mulf %cst_3, %cst_3 : f32
          %collapsed_63 = tensor.collapse_shape %cast_62 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
          %291 = vector.flat_transpose %181 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %splat_64 = tensor.splat %cst_7 : tensor<1x8x8xf32>
          memref.tensor_store %from_elements_37, %51 : memref<12x1xi16>
          affine.store %cst_8, %183[%c11, %c5] : memref<12x1xf32>
          affine.store %false_28, %128[%c3, %c6] : memref<8x1xi1>
          %292 = bufferization.clone %138 : memref<12x1xi16> to memref<12x1xi16>
          %293 = arith.shli %216, %c1_i32 : i32
          %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %181, %291, %cst_7 : vector<1xf32>, vector<1xf32> into f32
          %295 = index.add %c13, %c14
          %296 = index.divu %276, %c1
          %297 = arith.xori %59, %c321629512_i64 : i64
          vector.print %19 : vector<12xf32>
          %298 = arith.xori %c24690_i16, %extracted : i16
          %299 = arith.maxsi %216, %267 : i32
          %300 = math.expm1 %103 : tensor<12x8xf32>
          %301 = math.log %30 : tensor<12x1xf32>
          %302 = math.expm1 %81 : f32
          %303 = arith.maxf %cst_3, %cst_8 : f32
          %304 = arith.maxf %in_56, %cst : f16
          %305 = arith.mulf %cst_4, %in_56 : f16
          %alloca_65 = memref.alloca() : memref<8x1xf16>
          %306 = math.floor %185 : tensor<12x1xf16>
          %alloca_66 = memref.alloca() : memref<1xi1>
          memref.assume_alignment %140, 2 : memref<12x1xi16>
          %307 = index.divu %148, %210
          %308 = math.exp %24 : tensor<12x8xf16>
          %309 = bufferization.clone %alloc_18 : memref<1xf16> to memref<1xf16>
          memref.alloca_scope.return %cst_3 : f32
        }
        %278 = memref.alloca_scope  -> (f32) {
          %false_62 = arith.constant false
          %289 = vector.transfer_read %1[%c10, %195], %false_62 : tensor<8x1xi1>, vector<i1>
          %290 = vector.splat %cst_3 : vector<12x1xf32>
          %291 = vector.create_mask %70, %195, %148 : vector<1x8x8xi1>
          %292 = arith.muli %c1_i64, %c646883787_i64 : i64
          %293 = bufferization.to_tensor %alloc_21 : memref<12x1xi64>
          %294 = math.tanh %4 : tensor<12x1xf32>
          %295 = vector.broadcast %false : i1 to vector<12xi1>
          %dest_63, %accumulated_value_64 = vector.scan <minui>, %90, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<12x1xi1>, vector<12xi1>
          vector.print %145 : vector<1x8x8xf32>
          %296 = vector.splat %cst_4 : vector<8x1xf16>
          memref.assume_alignment %alloc_12, 1 : memref<8x1xi1>
          %collapsed_65 = tensor.collapse_shape %17 [[0, 1]] : tensor<12x1xf16> into tensor<12xf16>
          %297 = math.floor %218 : tensor<12x1xf16>
          %298 = arith.remui %267, %216 : i32
          %299 = arith.maxsi %false_41, %false : i1
          %300 = math.tan %185 : tensor<12x1xf16>
          %301 = arith.maxui %267, %267 : i32
          %302 = math.tanh %185 : tensor<12x1xf16>
          %303 = arith.floordivsi %false, %34 : i1
          %304 = index.sub %rank, %175
          %305 = index.sub %c6, %131
          %306 = bufferization.to_memref %14 : memref<1x8x8xi16>
          %307 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
          %308 = vector.outerproduct %164, %164, %307 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
          %309 = math.exp2 %cst_7 : f32
          %310 = vector.broadcast %cst_7 : f32 to vector<8x1xf32>
          %311 = vector.fma %310, %310, %310 : vector<8x1xf32>
          %312 = memref.load %51[%c0, %c0] : memref<12x1xi16>
          %313 = vector.broadcast %277 : f32 to vector<8x8xf32>
          %314 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %145, %151, %313 : vector<1x8x8xf32>, vector<1xf32> into vector<8x8xf32>
          %315 = math.absi %1 : tensor<8x1xi1>
          %316 = index.maxu %276, %c4
          %317 = vector.insert %cst_8, %151 [0] : f32 into vector<1xf32>
          %318 = math.log1p %collapsed_65 : tensor<12xf16>
          %319 = vector.insertelement %cst_8, %182[%105 : index] : vector<1xf32>
          %320 = arith.muli %c1_i64, %c460963850_i64 : i64
          memref.alloca_scope.return %cst_3 : f32
        }
        %279 = arith.divsi %216, %50 : i32
        %280 = math.ctlz %50 : i32
        %281 = math.cos %8 : tensor<12x1xf32>
        %282 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0)>(%c15, %c4, %c5, %c12) -> memref<1x8x8xf32> {
          %289 = math.exp2 %185 : tensor<12x1xf16>
          %290 = vector.insert %132, %89 [6] : vector<1xf16> into vector<12x1xf16>
          %291 = vector.create_mask %82, %98 : vector<8x1xi1>
          memref.store %false_28, %alloc_12[%c0, %c0] : memref<8x1xi1>
          %292 = arith.maxui %true, %false : i1
          %293 = index.add %130, %98
          %294 = index.casts %87 : index to i32
          %cst_62 = arith.constant 1.000000e+00 : f32
          %cst_63 = arith.constant 0.000000e+00 : f32
          %295 = vector.transfer_read %183[%84, %130], %cst_63 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<12x1xf32>, vector<12xf32>
          %alloc_64 = memref.alloc() : memref<1x8x8xf32>
          affine.yield %alloc_64 : memref<1x8x8xf32>
        } else {
          %289 = vector.gather %5[%275] [%91], %90, %91 : tensor<1xi32>, vector<12x1xi32>, vector<12x1xi1>, vector<12x1xi32> into vector<12x1xi32>
          %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d2 + (d3 + d2) mod 32 + d1 + 64, ((d3 + d2) mod 32) floordiv 4)>(%rank, %c4, %123, %175)
          %291 = arith.divf %81, %278 : f32
          %292 = arith.andi %50, %c1_i32 : i32
          %293 = arith.subi %false_41, %false_41 : i1
          %294 = index.maxu %93, %130
          %295 = math.powf %269, %4 : tensor<12x1xf32>
          %296 = vector.create_mask %c2, %93 : vector<12x1xi1>
          %alloc_62 = memref.alloc() : memref<1x8x8xf32>
          affine.yield %alloc_62 : memref<1x8x8xf32>
        }
        %283 = index.sub %31, %c4
        %284 = bufferization.clone %alloc_12 : memref<8x1xi1> to memref<8x1xi1>
        %285 = index.ceildivu %131, %rank_44
        %286 = math.floor %2 : tensor<1xf32>
        %alloc_60 = memref.alloc() : memref<1x8x8xi16>
        memref.copy %58, %alloc_60 : memref<1x8x8xi16> to memref<1x8x8xi16>
        %287 = tensor.empty() : tensor<12x1xf16>
        %288 = linalg.matmul ins(%13, %expanded : tensor<12x1xf16>, tensor<1x1xf16>) outs(%287 : tensor<12x1xf16>) -> tensor<12x1xf16>
        %cst_61 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_61 : f16
      }
    %219 = arith.maxui %c1_i32, %216 : i32
    %220 = math.cos %185 : tensor<12x1xf16>
    vector.print %164 : vector<12xf32>
    %221 = vector.multi_reduction <mul>, %181, %150 [] : vector<1xf32> to vector<1xf32>
    %222 = tensor.empty() : tensor<12x1xf16>
    %223 = linalg.matmul ins(%185, %expanded : tensor<12x1xf16>, tensor<1x1xf16>) outs(%222 : tensor<12x1xf16>) -> tensor<12x1xf16>
    %224 = affine.load %200[%c12, %c8] : memref<12x1xi32>
    %225 = vector.insertelement %cst_3, %151[%87 : index] : vector<1xf32>
    bufferization.dealloc_tensor %7 : tensor<1x8x8xi16>
    %alloca_52 = memref.alloca() : memref<1xi32>
    %226 = math.tan %141 : tensor<12x7xf16>
    %227 = arith.mulf %cst_3, %cst_8 : f32
    %228 = arith.minui %c1_i32, %50 : i32
    bufferization.dealloc_tensor %1 : tensor<8x1xi1>
    %229 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d0 - 4)>(%84, %rank_44, %c11, %210)
    %230 = arith.negf %cst_3 : f32
    %231 = arith.shrui %50, %c1_i32 : i32
    memref.assume_alignment %alloc_49, 1 : memref<1xi16>
    %232 = math.fpowi %cst, %c1_i32 : f16, i32
    %233 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, d1 + 16)>(%c0, %84, %c11, %93)
    %alloc_53 = memref.alloc() : memref<1x8x8x1xi64>
    memref.tensor_store %expanded_38, %alloc_53 : memref<1x8x8x1xi64>
    %234 = math.cos %141 : tensor<12x7xf16>
    %235 = arith.divui %59, %48 : i64
    memref.assume_alignment %alloc_9, 2 : memref<1x8x8xi64>
    %236 = vector.insert %cst_8, %189 [6] : f32 into vector<12xf32>
    %237 = tensor.empty() : tensor<8x1xi32>
    %238 = vector.broadcast %224 : i32 to vector<1x8x8xi32>
    %239 = vector.broadcast %34 : i1 to vector<1x8x8xi1>
    %240 = vector.gather %237[%c10, %87] [%238], %239, %238 : tensor<8x1xi32>, vector<1x8x8xi32>, vector<1x8x8xi1>, vector<1x8x8xi32> into vector<1x8x8xi32>
    %241 = arith.subi %c24690_i16, %c24690_i16 : i16
    %242 = arith.maxsi %34, %false_28 : i1
    %243 = math.ctpop %6 : tensor<1xi1>
    %244 = arith.andi %true_0, %true : i1
    %245 = memref.alloca_scope  -> (memref<12x1xi32>) {
      %262 = arith.addi %false_2, %false : i1
      %263 = affine.for %arg2 = 0 to 97 iter_args(%arg3 = %224) -> (i32) {
        affine.yield %216 : i32
      }
      %264 = math.cttz %12 : tensor<8x1xi64>
      %265 = vector.insertelement %cst, %132[%31 : index] : vector<1xf16>
      %266 = vector.matrix_multiply %181, %182 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      memref.copy %alloc_12, %193 : memref<8x1xi1> to memref<8x1xi1>
      %267 = scf.if %34 -> (memref<1x8x8xi16>) {
        %294 = math.floor %cst_8 : f32
        %295 = math.floor %expanded : tensor<1x1xf16>
        %cast_60 = tensor.cast %10 : tensor<8x1xi1> to tensor<?x?xi1>
        %296 = vector.create_mask %c11, %32, %23 : vector<1x8x8xi1>
        %297 = memref.realloc %80 : memref<1xi32> to memref<7xi32>
        %298 = vector.broadcast %cst_7 : f32 to vector<12x1xf32>
        %299 = vector.fma %298, %298, %298 : vector<12x1xf32>
        %300 = math.ctpop %true : i1
        %301 = index.sub %c12, %32
        scf.yield %58 : memref<1x8x8xi16>
      } else {
        %294 = vector.broadcast %c24690_i16 : i16 to vector<1x1xi16>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %214, %211, %294 : vector<8x1xi16>, vector<8x1xi16> into vector<1x1xi16>
        %296 = index.divs %c12, %c15
        %297 = affine.load %128[%c15, %c2] : memref<8x1xi1>
        %298 = math.floor %13 : tensor<12x1xf16>
        %cast_60 = tensor.cast %10 : tensor<8x1xi1> to tensor<?x?xi1>
        %alloc_61 = memref.alloc() : memref<12x1xf32>
        memref.copy %183, %alloc_61 : memref<12x1xf32> to memref<12x1xf32>
        %299 = arith.addi %c646883787_i64, %c321629512_i64 : i64
        %300 = math.copysign %13, %16 : tensor<12x1xf16>
        scf.yield %58 : memref<1x8x8xi16>
      }
      %268 = vector.broadcast %c24690_i16 : i16 to vector<1x8x8xi16>
      %269 = vector.gather %alloc_15[%rank_44, %152] [%240], %239, %268 : memref<8x1xi16>, vector<1x8x8xi32>, vector<1x8x8xi1>, vector<1x8x8xi16> into vector<1x8x8xi16>
      %270 = vector.broadcast %cst_4 : f16 to vector<1x1xf16>
      %271 = vector.outerproduct %132, %132, %270 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
      %272 = arith.divf %cst_7, %cst_8 : f32
      %273 = scf.while (%arg2 = %151) : (vector<1xf32>) -> vector<1xf32> {
        %294 = arith.cmpi slt, %216, %216 : i32
        %295 = vector.insert %81, %182 [0] : f32 into vector<1xf32>
        %296 = math.atan %8 : tensor<12x1xf32>
        %297 = math.log2 %8 : tensor<12x1xf32>
        %298 = math.round %4 : tensor<12x1xf32>
        %299 = math.cos %81 : f32
        %300 = math.log10 %8 : tensor<12x1xf32>
        %301 = math.ctpop %14 : tensor<1x8x8xi16>
        scf.condition(%false) %181 : vector<1xf32>
      } do {
      ^bb0(%arg2: vector<1xf32>):
        %294 = arith.maxsi %false, %true_0 : i1
        %295 = bufferization.to_memref %3 : memref<1xf16>
        %alloc_60 = memref.alloc() : memref<12x1xf16>
        %296 = math.round %8 : tensor<12x1xf32>
        %297 = arith.xori %c460963850_i64, %c321629512_i64 : i64
        %298 = tensor.empty() : tensor<8x1xf16>
        %299 = vector.broadcast %cst_4 : f16 to vector<8x1xf16>
        %300 = vector.gather %298[%195, %c8] [%213], %212, %299 : tensor<8x1xf16>, vector<8x1xi32>, vector<8x1xi1>, vector<8x1xf16> into vector<8x1xf16>
        %301 = index.mul %c15, %55
        %302 = arith.muli %c321629512_i64, %c646883787_i64 : i64
        %303 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2, d0 floordiv 2, (d0 ceildiv 128) ceildiv 2, -((d0 ceildiv 128) mod 8))>(%130, %301, %84, %130)
        %304 = bufferization.clone %alloc_22 : memref<1x8x8xi64> to memref<1x8x8xi64>
        %305 = math.roundeven %cst_3 : f32
        %expanded_61 = tensor.expand_shape %6 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        %collapsed = tensor.collapse_shape %218 [[0, 1]] : tensor<12x1xf16> into tensor<12xf16>
        %306 = vector.insertelement %cst_8, %151[%93 : index] : vector<1xf32>
        %307 = math.log2 %141 : tensor<12x7xf16>
        memref.copy %140, %138 : memref<12x1xi16> to memref<12x1xi16>
        scf.yield %181 : vector<1xf32>
      }
      %274 = vector.create_mask %rank_44 : vector<1xi1>
      %275 = math.tan %expanded : tensor<1x1xf16>
      %276 = tensor.empty() : tensor<12x1xf16>
      %277 = linalg.matmul ins(%13, %expanded : tensor<12x1xf16>, tensor<1x1xf16>) outs(%276 : tensor<12x1xf16>) -> tensor<12x1xf16>
      affine.store %cst_4, %alloc_16[%c5] : memref<1xf16>
      %278 = math.sqrt %276 : tensor<12x1xf16>
      %279 = vector.reduction <maxf>, %132 : vector<1xf16> into f16
      %280 = vector.reduction <add>, %274 : vector<1xi1> into i1
      %281 = tensor.empty() : tensor<1xf16>
      %mapped_56 = linalg.map ins(%3 : tensor<1xf16>) outs(%281 : tensor<1xf16>)
        (%in: f16) {
          %294 = vector.broadcast %95 : index to vector<7xindex>
          %295 = vector.broadcast %true : i1 to vector<7xi1>
          %296 = vector.broadcast %216 : i32 to vector<7xi32>
          vector.scatter %80[%c0] [%294], %295, %296 : memref<1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %297 = index.ceildivu %23, %c5
          %298 = vector.matrix_multiply %164, %164 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
          %299 = arith.minsi %false_28, %false_28 : i1
          %300 = math.rsqrt %2 : tensor<1xf32>
          %301 = vector.insert %274, %212 [4] : vector<1xi1> into vector<8x1xi1>
          %rank_60 = tensor.rank %11 : tensor<1x8x8xi1>
          %alloc_61 = memref.alloc() : memref<8x1xi16>
          %302 = math.tanh %2 : tensor<1xf32>
          %303 = vector.broadcast %148 : index to vector<7xindex>
          %304 = vector.broadcast %false : i1 to vector<7xi1>
          %305 = vector.broadcast %in : f16 to vector<7xf16>
          vector.scatter %alloc_18[%c0] [%303], %304, %305 : memref<1xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
          %306 = index.mul %95, %175
          affine.store %224, %alloc_23[%c11, %c8] : memref<12x1xi32>
          %307 = arith.minf %in, %cst : f16
          affine.store %50, %200[%c6, %c14] : memref<12x1xi32>
          %308 = index.mul %105, %123
          %309 = bufferization.to_tensor %alloc_13 : memref<12x1xi32>
          %310 = index.ceildivu %55, %152
          %true_62 = index.bool.constant true
          %311 = index.maxs %31, %93
          %312 = arith.minui %c1_i64, %59 : i64
          %313 = arith.shli %c460963850_i64, %48 : i64
          %314 = math.log %cst_4 : f16
          %315 = vector.broadcast %c460963850_i64 : i64 to vector<7xi64>
          %316 = vector.transfer_write %315, %12[%105, %55] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<8x1xi64>
          %317 = math.exp2 %16 : tensor<12x1xf16>
          %318 = vector.broadcast %23 : index to vector<8xindex>
          %319 = vector.broadcast %false_2 : i1 to vector<8xi1>
          %320 = vector.broadcast %cst_3 : f32 to vector<8xf32>
          vector.scatter %183[%c8, %c0] [%318], %319, %320 : memref<12x1xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
          %321 = math.ctlz %0 : tensor<1x8x8xi32>
          %322 = math.expm1 %13 : tensor<12x1xf16>
          %323 = arith.divui %216, %c1_i32 : i32
          %324 = index.maxu %c11, %c0
          %325 = math.exp %13 : tensor<12x1xf16>
          %326 = vector.broadcast %true_1 : i1 to vector<7xi1>
          %327 = vector.transfer_write %326, %10[%c3, %233] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, tensor<8x1xi1>
          %328 = arith.maxsi %false_5, %false_2 : i1
          %cst_63 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_63 : f16
        }
      %expanded_57 = tensor.expand_shape %18 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
      %282 = math.log2 %185 : tensor<12x1xf16>
      bufferization.dealloc_tensor %3 : tensor<1xf16>
      %283 = vector.broadcast %216 : i32 to vector<8x8xi32>
      %dest_58, %accumulated_value_59 = vector.scan <add>, %240, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<1x8x8xi32>, vector<8x8xi32>
      %284 = index.ceildivu %c13, %70
      %285 = index.mul %57, %c10
      %286 = math.cos %13 : tensor<12x1xf16>
      %287 = vector.shuffle %189, %19 [2, 4, 5, 6, 7, 8, 9, 11, 12, 14, 15, 16, 18, 19, 20, 21, 23] : vector<12xf32>, vector<12xf32>
      %288 = index.mul %31, %c12
      %289 = math.atan2 %expanded, %expanded : tensor<1x1xf16>
      %290 = math.roundeven %276 : tensor<12x1xf16>
      %291 = arith.ceildivsi %c1_i32, %224 : i32
      %292 = vector.broadcast %81 : f32 to vector<12x12xf32>
      %293 = vector.outerproduct %19, %189, %292 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
      memref.alloca_scope.return %alloc_13 : memref<12x1xi32>
    }
    %246 = math.powf %141, %141 : tensor<12x7xf16>
    %247 = math.exp2 %8 : tensor<12x1xf32>
    %248 = arith.cmpf une, %81, %cst_8 : f32
    %249 = arith.maxf %cst, %cst_4 : f16
    %250 = vector.multi_reduction <minf>, %150, %81 [0] : vector<1xf32> to f32
    %251 = vector.reduction <mul>, %150 : vector<1xf32> into f32
    %252 = vector.insertelement %250, %19[%rank_44 : index] : vector<12xf32>
    %false_54 = index.bool.constant false
    %253 = arith.shrui %c1_i32, %c1_i32 : i32
    %254 = arith.maxui %true_6, %false_28 : i1
    %255 = index.ceildivu %c12, %160
    %256 = vector.insertelement %cst_4, %132[%c4 : index] : vector<1xf16>
    %257 = tensor.empty() : tensor<1x8x8xi64>
    %258 = linalg.copy ins(%37 : tensor<1x8x8xi64>) outs(%257 : tensor<1x8x8xi64>) -> tensor<1x8x8xi64>
    %259 = tensor.empty() : tensor<1x8xi1>
    %transposed = linalg.transpose ins(%77 : tensor<8x1xi1>) outs(%259 : tensor<1x8xi1>) permutation = [1, 0] 
    %260 = tensor.empty() : tensor<f32>
    %reduced_55 = linalg.reduce ins(%8 : tensor<12x1xf32>) outs(%260 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %262 = arith.divsi %34, %false_5 : i1
        %263 = vector.broadcast %c2 : index to vector<12xindex>
        %264 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %alloc[%c0, %c5, %c6] [%263], %264, %264 : memref<1x8x8xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %265 = math.ctpop %20 : tensor<1xi1>
        %266 = affine.apply affine_map<(d0) -> (d0 + 64)>(%131)
        %267 = vector.insertelement %in, %19[%233 : index] : vector<12xf32>
        %268 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + d2 - 64) * 4)>(%c9, %rank_44, %255, %c15)
        %269 = arith.minui %c460963850_i64, %48 : i64
        %270 = index.maxu %c2, %c11
        %cst_56 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_56 : f32
      }
    scf.parallel (%arg2) = (%233) to (%123) step (%c13) {
      %262 = arith.ceildivsi %48, %c460963850_i64 : i64
      %263 = math.ctpop %5 : tensor<1xi32>
      %264 = vector.broadcast %81 : f32 to vector<8x8xf32>
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %145, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<1x8x8xf32>, vector<8x8xf32>
      %265 = arith.negf %cst : f16
      %266 = math.log2 %17 : tensor<12x1xf16>
      %267 = math.cttz %true_1 : i1
      %268 = bufferization.clone %alloc_10 : memref<1xi32> to memref<1xi32>
      %269 = vector.broadcast %57 : index to vector<7xindex>
      %270 = vector.broadcast %false_2 : i1 to vector<7xi1>
      %271 = vector.broadcast %216 : i32 to vector<7xi32>
      vector.scatter %alloc_20[%c1, %c0] [%269], %270, %271 : memref<8x1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
      %272 = scf.while (%arg3 = %80) : (memref<1xi32>) -> memref<1xi32> {
        %278 = math.tan %cst_3 : f32
        %279 = arith.cmpf false, %cst_8, %cst_3 : f32
        %280 = math.expm1 %141 : tensor<12x7xf16>
        %281 = memref.realloc %alloc_10 : memref<1xi32> to memref<1xi32>
        %282 = memref.atomic_rmw minu %216, %alloc_17[%c0, %c6, %c7] : (i32, memref<1x8x8xi32>) -> i32
        %283 = math.cttz %splat : tensor<8x1xi64>
        %284 = math.copysign %222, %13 : tensor<12x1xf16>
        %285 = vector.broadcast %216 : i32 to vector<8x1xi32>
        scf.condition(%true_0) %80 : memref<1xi32>
      } do {
      ^bb0(%arg3: memref<1xi32>):
        %278 = math.ctpop %15 : tensor<12x1xi16>
        %279 = arith.subi %true_6, %true_1 : i1
        %280 = memref.load %alloc_11[%c0] : memref<1xf32>
        %281 = arith.maxsi %true_1, %false_54 : i1
        vector.print %145 : vector<1x8x8xf32>
        %282 = index.divs %112, %70
        %283 = memref.realloc %alloc_10 : memref<1xi32> to memref<12xi32>
        %284 = bufferization.to_tensor %135 : memref<1xi32>
        %285 = math.floor %81 : f32
        %286 = vector.broadcast %c1_i32 : i32 to vector<8x8x8x8xi32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %238, %238, %286 : vector<1x8x8xi32>, vector<1x8x8xi32> into vector<8x8x8x8xi32>
        %288 = vector.create_mask %arg2, %c12 : vector<12x1xi1>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %150, %150, %81 : vector<1xf32>, vector<1xf32> into f32
        %290 = affine.max affine_map<(d0) -> (d0 - 16, (d0 mod 4) ceildiv 2, (d0 mod 4) * 4)>(%c9)
        %291 = vector.broadcast %true_0 : i1 to vector<1x1xi1>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %90, %90, %291 : vector<12x1xi1>, vector<12x1xi1> into vector<1x1xi1>
        memref.assume_alignment %58, 4 : memref<1x8x8xi16>
        %293 = index.mul %arg2, %70
        scf.yield %80 : memref<1xi32>
      }
      %expanded_58 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<1x8x8xi16> into tensor<1x8x8x1xi16>
      %273 = index.add %105, %c2
      %274 = tensor.empty() : tensor<1xf16>
      %275 = bufferization.to_tensor %alloc_20 : memref<8x1xi32>
      %276 = math.log2 %274 : tensor<1xf16>
      %c1_i64_59 = arith.constant 1 : i64
      %277 = vector.transfer_read %splat[%c13, %c14], %c1_i64_59 : tensor<8x1xi64>, vector<12xi64>
      %splat_60 = tensor.splat %c24690_i16 : tensor<1x8x8xi16>
      scf.yield
    }
    %261 = affine.vector_load %alloc_13[%c0, %c6] : memref<12x1xi32>, vector<7xi32>
    affine.vector_store %182, %alloc_11[%c6] : memref<1xf32>, vector<1xf32>
    vector.print %19 : vector<12xf32>
    vector.print %89 : vector<12x1xf16>
    vector.print %90 : vector<12x1xi1>
    vector.print %91 : vector<12x1xi32>
    vector.print %92 : vector<12x1xf16>
    vector.print %132 : vector<1xf16>
    vector.print %144 : vector<1x8x8xf32>
    vector.print %145 : vector<1x8x8xf32>
    vector.print %150 : vector<1xf32>
    vector.print %151 : vector<1xf32>
    vector.print %164 : vector<12xf32>
    vector.print %181 : vector<1xf32>
    vector.print %182 : vector<1xf32>
    vector.print %189 : vector<12xf32>
    vector.print %211 : vector<8x1xi16>
    vector.print %212 : vector<8x1xi1>
    vector.print %213 : vector<8x1xi32>
    vector.print %214 : vector<8x1xi16>
    vector.print %238 : vector<1x8x8xi32>
    vector.print %239 : vector<1x8x8xi1>
    vector.print %240 : vector<1x8x8xi32>
    vector.print %261 : vector<7xi32>
    vector.print %c646883787_i64 : i64
    vector.print %true : i1
    vector.print %cst : f16
    vector.print %true_0 : i1
    vector.print %false : i1
    vector.print %true_1 : i1
    vector.print %c24690_i16 : i16
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %false_5 : i1
    vector.print %true_6 : i1
    vector.print %c321629512_i64 : i64
    vector.print %c460963850_i64 : i64
    vector.print %cst_7 : f32
    vector.print %cst_8 : f32
    vector.print %34 : i1
    vector.print %c1_i64 : i64
    vector.print %false_28 : i1
    vector.print %48 : i64
    vector.print %c1_i32 : i32
    vector.print %50 : i32
    vector.print %59 : i64
    vector.print %81 : f32
    vector.print %false_41 : i1
    vector.print %216 : i32
    vector.print %224 : i32
    vector.print %250 : f32
    vector.print %false_54 : i1
    return %from_elements_37 : tensor<12x1xi16>
  }
}
