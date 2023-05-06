module {
  func.func @func1() -> tensor<6x9xi1> {
    %c1756635832_i32 = arith.constant 1756635832 : i32
    %c736051292_i64 = arith.constant 736051292 : i64
    %cst = arith.constant 5.203200e+04 : f16
    %cst_0 = arith.constant 0x4E079D70 : f32
    %true = arith.constant true
    %cst_1 = arith.constant 2.09935386E+9 : f32
    %cst_2 = arith.constant 2.600000e+04 : f16
    %cst_3 = arith.constant 1.811200e+04 : f16
    %cst_4 = arith.constant 0x4DC4E9DE : f32
    %c1641654864_i64 = arith.constant 1641654864 : i64
    %c1367977502_i32 = arith.constant 1367977502 : i32
    %cst_5 = arith.constant 1.883200e+04 : f16
    %c14586_i16 = arith.constant 14586 : i16
    %c1672_i16 = arith.constant 1672 : i16
    %cst_6 = arith.constant 1.60844608E+9 : f32
    %c7704_i16 = arith.constant 7704 : i16
    %0 = tensor.empty() : tensor<6x9xi1>
    %1 = tensor.empty() : tensor<9x6xi1>
    %2 = tensor.empty() : tensor<6x9xf32>
    %3 = tensor.empty() : tensor<4xf32>
    %4 = tensor.empty() : tensor<6x9xf32>
    %5 = tensor.empty() : tensor<4xi32>
    %6 = tensor.empty() : tensor<9x6xi32>
    %7 = tensor.empty() : tensor<6x9xf32>
    %8 = tensor.empty() : tensor<9x6xi64>
    %9 = tensor.empty() : tensor<6x9xf32>
    %10 = tensor.empty() : tensor<9x6xf16>
    %11 = tensor.empty() : tensor<4xi16>
    %12 = tensor.empty() : tensor<6x9xf32>
    %13 = tensor.empty() : tensor<6x9xf16>
    %14 = tensor.empty() : tensor<6x9xi1>
    %15 = tensor.empty() : tensor<9x6xi32>
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
    %alloc = memref.alloc() : memref<4xi1>
    %alloc_7 = memref.alloc() : memref<4xi16>
    %alloc_8 = memref.alloc() : memref<9x6xf16>
    %alloc_9 = memref.alloc() : memref<4xi1>
    %alloc_10 = memref.alloc() : memref<6x9xi1>
    %alloc_11 = memref.alloc() : memref<9x6xf16>
    %alloc_12 = memref.alloc() : memref<6x9xi16>
    %alloc_13 = memref.alloc() : memref<6x9xi64>
    %alloc_14 = memref.alloc() : memref<4xi32>
    %alloc_15 = memref.alloc() : memref<4xi32>
    %alloc_16 = memref.alloc() : memref<6x9xf32>
    %alloc_17 = memref.alloc() : memref<9x6xi1>
    %alloc_18 = memref.alloc() : memref<6x9xf16>
    %alloc_19 = memref.alloc() : memref<9x6xi16>
    %alloc_20 = memref.alloc() : memref<9x6xi16>
    %alloc_21 = memref.alloc() : memref<6x9xi64>
    %16 = tensor.empty() : tensor<9x6xi1>
    %17 = linalg.copy ins(%1 : tensor<9x6xi1>) outs(%16 : tensor<9x6xi1>) -> tensor<9x6xi1>
    %18 = tensor.empty() : tensor<9x6xf32>
    %transposed = linalg.transpose ins(%9 : tensor<6x9xf32>) outs(%18 : tensor<9x6xf32>) permutation = [1, 0] 
    %alloc_22 = memref.alloc() : memref<9xi16>
    linalg.reduce ins(%alloc_12 : memref<6x9xi16>) outs(%alloc_22 : memref<9xi16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %275 = math.cttz %init : i16
        %276 = math.absi %5 : tensor<4xi32>
        %277 = tensor.empty() : tensor<9x6xi16>
        %278 = math.ceil %transposed : tensor<9x6xf32>
        affine.store %c1641654864_i64, %alloc_13[%c1, %c6] : memref<6x9xi64>
        %279 = vector.broadcast %c736051292_i64 : i64 to vector<6xi64>
        %280 = vector.broadcast %c736051292_i64 : i64 to vector<6x6xi64>
        %281 = vector.outerproduct %279, %279, %280 {kind = #vector.kind<maxsi>} : vector<6xi64>, vector<6xi64>
        %282 = arith.addi %c1672_i16, %init : i16
        %283 = affine.max affine_map<(d0, d1, d2) -> (d0, d1)>(%c8, %c14, %c4)
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg0) = (%c3) to (%c13) step (%c11) init (%alloc_21) -> memref<6x9xi64> {
      %275 = index.sizeof
      %276 = arith.ori %c1672_i16, %c7704_i16 : i16
      %277 = math.copysign %7, %12 : tensor<6x9xf32>
      %278 = index.add %c5, %c2
      %279 = arith.divf %cst_5, %cst_3 : f16
      %280 = affine.max affine_map<(d0) -> (d0 + 32, d0 + 32)>(%c1)
      %281 = affine.load %alloc_8[%c1, %c1] : memref<9x6xf16>
      %282 = arith.shrui %c736051292_i64, %c736051292_i64 : i64
      %283 = vector.broadcast %c736051292_i64 : i64 to vector<1xi64>
      %284 = vector.multi_reduction <maxsi>, %283, %c1641654864_i64 [0] : vector<1xi64> to i64
      %285 = vector.matrix_multiply %283, %283 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %286 = math.atan %10 : tensor<9x6xf16>
      %287 = math.ctpop %c1367977502_i32 : i32
      %288 = memref.realloc %alloc_9 : memref<4xi1> to memref<4xi1>
      scf.index_switch %c10 
      case 1 {
        memref.assume_alignment %alloc_11, 8 : memref<9x6xf16>
        %291 = bufferization.to_tensor %alloc_10 : memref<6x9xi1>
        %292 = math.ipowi %6, %6 : tensor<9x6xi32>
        %293 = math.sqrt %4 : tensor<6x9xf32>
        %inserted_35 = tensor.insert %c1756635832_i32 into %6[%c2, %c1] : tensor<9x6xi32>
        %294 = arith.remf %cst_3, %281 : f16
        %295 = index.sub %278, %c8
        %expanded_36 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x9xf32> into tensor<6x9x1xf32>
        %expanded_37 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<9x6xi32> into tensor<9x6x1xi32>
        %296 = vector.load %alloc_13[%c5, %c5] : memref<6x9xi64>, vector<6x9xi64>
        %297 = math.floor %7 : tensor<6x9xf32>
        %298 = index.castu %c8 : index to i32
        %collapsed_38 = tensor.collapse_shape %1 [[0, 1]] : tensor<9x6xi1> into tensor<54xi1>
        %299 = math.atan %10 : tensor<9x6xf16>
        %300 = math.log10 %3 : tensor<4xf32>
        %301 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %302 = vector.broadcast %true : i1 to vector<4xi1>
        %303 = vector.maskedload %alloc_16[%c0, %c7], %302, %301 : memref<6x9xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        scf.yield
      }
      default {
        %extracted = tensor.extract %6[%c6, %c3] : tensor<9x6xi32>
        %291 = math.exp %12 : tensor<6x9xf32>
        %292 = index.casts %c736051292_i64 : i64 to index
        %293 = arith.ori %c7704_i16, %c14586_i16 : i16
        %294 = index.floordivs %c2, %c0
        %295 = arith.divsi %c1672_i16, %c14586_i16 : i16
        %296 = index.casts %294 : index to i32
        %297 = math.ipowi %c1672_i16, %c1672_i16 : i16
        %298 = math.absf %12 : tensor<6x9xf32>
        %299 = math.log10 %12 : tensor<6x9xf32>
        %300 = math.atan2 %cst_5, %cst_2 : f16
        %301 = arith.ceildivsi %c14586_i16, %c14586_i16 : i16
        %302 = vector.insertelement %284, %283[%c2 : index] : vector<1xi64>
        %303 = memref.realloc %alloc_7 : memref<4xi16> to memref<4xi16>
        %304 = arith.minui %284, %c736051292_i64 : i64
        %305 = memref.load %alloc_9[%c1] : memref<4xi1>
      }
      %289 = memref.realloc %alloc_15 : memref<4xi32> to memref<3xi32>
      %290 = arith.addi %c1367977502_i32, %c1756635832_i32 : i32
      %alloc_34 = memref.alloc() : memref<6x9xi64>
      scf.reduce(%alloc_34)  : memref<6x9xi64> {
      ^bb0(%arg1: memref<6x9xi64>, %arg2: memref<6x9xi64>):
        %splat_35 = tensor.splat %284 : tensor<6x9xi64>
        %extracted = tensor.extract %10[%c0, %c5] : tensor<9x6xf16>
        %291 = arith.xori %c14586_i16, %c7704_i16 : i16
        %292 = arith.maxsi %c1641654864_i64, %284 : i64
        %293 = bufferization.to_memref %16 : memref<9x6xi1>
        %294 = math.absi %14 : tensor<6x9xi1>
        %295 = math.sqrt %4 : tensor<6x9xf32>
        %296 = vector.broadcast %cst_1 : f32 to vector<6x9xf32>
        %297 = vector.fma %296, %296, %296 : vector<6x9xf32>
        %alloc_36 = memref.alloc() : memref<6x9xi64>
        scf.reduce.return %alloc_36 : memref<6x9xi64>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_18[%c6, %c4] : memref<6x9xf16>, vector<3xf16>
    affine.vector_store %20, %alloc_18[%c2, %c11] : memref<6x9xf16>, vector<3xf16>
    %alloc_23 = memref.alloc() : memref<4xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%alloc_9, %alloc_23 : memref<4xi1>, memref<4xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = vector.extract %20[2] : vector<3xf16>
    %24 = index.divu %c7, %c3
    %25 = tensor.empty() : tensor<9x6xi16>
    %mapped = linalg.map ins(%alloc_19, %alloc_19 : memref<9x6xi16>, memref<9x6xi16>) outs(%25 : tensor<9x6xi16>)
      (%in: i16, %in_34: i16) {
        %275 = arith.remf %cst_3, %cst_2 : f16
        %276 = math.log10 %cst_0 : f32
        %277 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
        %278 = vector.outerproduct %20, %20, %277 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        %279 = math.log10 %12 : tensor<6x9xf32>
        %280 = arith.ceildivsi %true, %true : i1
        %281 = tensor.empty() : tensor<9x9x9xi1>
        %alloc_35 = memref.alloc() : memref<9xi1>
        %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_35 : memref<9xi1>) outs(%281 : tensor<9x9x9xi1>) {
        ^bb0(%in_38: i1, %out: i1):
          %308 = index.floordivs %c8, %c2
          %309 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf16> to vector<1xf16>
          %310 = affine.apply affine_map<(d0, d1) -> (d1)>(%c13, %c9)
          %311 = vector.broadcast %cst_0 : f32 to vector<6x9xf32>
          %312 = vector.fma %311, %311, %311 : vector<6x9xf32>
          %313 = bufferization.to_tensor %alloc_15 : memref<4xi32>
          %314 = vector.extract %20[2] : vector<3xf16>
          %true_39 = index.bool.constant true
          memref.copy %alloc_8, %alloc_11 : memref<9x6xf16> to memref<9x6xf16>
          %315 = tensor.empty(%24) : tensor<9x?xi64>
          %alloc_40 = memref.alloc() : memref<9x6xf32>
          memref.tensor_store %transposed, %alloc_40 : memref<9x6xf32>
          %316 = math.log10 %4 : tensor<6x9xf32>
          %317 = vector.flat_transpose %309 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
          %318 = vector.bitcast %317 : vector<1xf16> to vector<1xf16>
          %319 = vector.broadcast %310 : index to vector<4xindex>
          %320 = vector.broadcast %in_38 : i1 to vector<4xi1>
          %321 = vector.broadcast %cst_3 : f16 to vector<4xf16>
          vector.scatter %alloc_8[%c6, %c0] [%319], %320, %321 : memref<9x6xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %322 = math.exp %cst_4 : f32
          %323 = math.cos %7 : tensor<6x9xf32>
          %324 = math.cttz %in : i16
          %325 = arith.ori %c7704_i16, %in : i16
          %326 = math.rsqrt %13 : tensor<6x9xf16>
          %327 = memref.realloc %alloc_9 : memref<4xi1> to memref<4xi1>
          %328 = bufferization.to_memref %transposed : memref<9x6xf32>
          %329 = affine.load %alloc_16[%c4, %c9] : memref<6x9xf32>
          %330 = vector.extract %318[0] : vector<1xf16>
          %331 = math.cttz %1 : tensor<9x6xi1>
          %332 = vector.broadcast %cst_0 : f32 to vector<6xf32>
          %dest, %accumulated_value = vector.scan <mul>, %312, %332 {inclusive = false, reduction_dim = 1 : i64} : vector<6x9xf32>, vector<6xf32>
          %333 = arith.maxf %cst_1, %cst_4 : f32
          %334 = math.roundeven %9 : tensor<6x9xf32>
          %cst_41 = arith.constant 1.000000e+00 : f32
          %335 = vector.transfer_read %7[%c7, %c0], %cst_41 : tensor<6x9xf32>, vector<9xf32>
          %336 = math.exp %cst_5 : f16
          bufferization.dealloc_tensor %2 : tensor<6x9xf32>
          %337 = arith.andi %c14586_i16, %c7704_i16 : i16
          bufferization.dealloc_tensor %14 : tensor<6x9xi1>
          linalg.yield %out : i1
        } -> tensor<9x9x9xi1>
        %283 = arith.divsi %c7704_i16, %in : i16
        %284 = arith.minf %cst_2, %cst_5 : f16
        %285 = math.copysign %cst_0, %cst_0 : f32
        %286 = math.atan %4 : tensor<6x9xf32>
        %287 = math.rsqrt %7 : tensor<6x9xf32>
        %generated_36 = tensor.generate %c2 {
        ^bb0(%arg0: index):
          %308 = arith.maxf %cst_4, %cst_1 : f32
          %309 = math.ipowi %17, %16 : tensor<9x6xi1>
          %310 = arith.divf %cst_1, %cst_1 : f32
          %311 = vector.create_mask %c3, %c12 : vector<6x9xi1>
          tensor.yield %c1756635832_i32 : i32
        } : tensor<?xi32>
        %288 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %289 = math.copysign %2, %4 : tensor<6x9xf32>
        %290 = index.add %c8, %c8
        %291 = math.tanh %4 : tensor<6x9xf32>
        %292 = arith.remf %cst_4, %cst_6 : f32
        %293 = math.ipowi %c1367977502_i32, %c1367977502_i32 : i32
        %294 = vector.create_mask %c10, %c11 : vector<6x9xi1>
        %295 = math.cttz %22 : tensor<i1>
        %296 = arith.subi %c736051292_i64, %c1641654864_i64 : i64
        %297 = vector.create_mask %24, %c11 : vector<9x6xi1>
        %298 = math.fpowi %cst_6, %c1367977502_i32 : f32, i32
        %rank_37 = tensor.rank %7 : tensor<6x9xf32>
        %299 = arith.minsi %in, %c1672_i16 : i16
        %300 = arith.minsi %in_34, %c14586_i16 : i16
        %301 = math.log1p %3 : tensor<4xf32>
        %302 = arith.andi %true, %true : i1
        %303 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %304 = vector.fma %303, %303, %303 : vector<4xf32>
        %305 = index.divs %c15, %c4
        %306 = arith.ori %c736051292_i64, %c1641654864_i64 : i64
        %307 = math.ctpop %1 : tensor<9x6xi1>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %26 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf16> to vector<1xf16>
    %27 = tensor.empty() : tensor<9x9x9xi1>
    %28 = tensor.empty() : tensor<9x9xi1>
    %29 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%27, %28 : tensor<9x9x9xi1>, tensor<9x9xi1>) outs(%27 : tensor<9x9x9xi1>) {
    ^bb0(%in: i1, %in_34: i1, %out: i1):
      affine.store %cst, %alloc_8[%c5, %c6] : memref<9x6xf16>
      %275 = math.log1p %10 : tensor<9x6xf16>
      %276 = arith.minsi %c1756635832_i32, %c1756635832_i32 : i32
      %277 = math.sqrt %12 : tensor<6x9xf32>
      scf.if %in_34 {
        %301 = bufferization.to_memref %21 : memref<i1>
        %inserted_37 = tensor.insert %cst_2 into %10[%c1, %c0] : tensor<9x6xf16>
        %302 = vector.broadcast %cst_6 : f32 to vector<f32>
        %303 = vector.transfer_write %302, %7[%c8, %c14] : vector<f32>, tensor<6x9xf32>
        %304 = index.casts %24 : index to i32
        memref.assume_alignment %alloc_23, 4 : memref<4xi1>
        %305 = index.add %c13, %c12
        %306 = vector.broadcast %in : i1 to vector<6xi1>
        %307 = vector.transfer_write %306, %0[%c12, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi1>, tensor<6x9xi1>
        %308 = affine.max affine_map<(d0) -> (0, 0, 0, 0)>(%c1)
      } else {
        %301 = vector.broadcast %cst_6 : f32 to vector<9x6xf32>
        %302 = vector.fma %301, %301, %301 : vector<9x6xf32>
        %303 = arith.maxf %cst_6, %cst_6 : f32
        %304 = math.fpowi %cst_0, %c1367977502_i32 : f32, i32
        %305 = math.exp %cst_2 : f16
        %306 = math.exp %9 : tensor<6x9xf32>
        %307 = memref.realloc %alloc_22 : memref<9xi16> to memref<6xi16>
        %308 = math.ceil %13 : tensor<6x9xf16>
        %309 = arith.minf %cst_1, %cst_4 : f32
      }
      %278 = math.exp %cst_5 : f16
      %279 = vector.create_mask %c1, %c2 : vector<9x6xi1>
      %280 = affine.if affine_set<(d0, d1, d2) : ((d2 + d0) mod 16 + d0 >= 0)>(%c5, %c4, %c11) -> i16 {
        %301 = math.exp %3 : tensor<4xf32>
        %302 = vector.splat %c3 : vector<6x9xindex>
        %303 = math.log10 %cst_2 : f16
        %304 = math.rsqrt %4 : tensor<6x9xf32>
        memref.assume_alignment %alloc_9, 16 : memref<4xi1>
        %from_elements = tensor.from_elements %c7704_i16, %c7704_i16, %c1672_i16, %c1672_i16, %c1672_i16, %c14586_i16, %c14586_i16, %c1672_i16, %c7704_i16, %c14586_i16, %c14586_i16, %c1672_i16, %c14586_i16, %c7704_i16, %c7704_i16, %c1672_i16, %c14586_i16, %c14586_i16, %c14586_i16, %c7704_i16, %c7704_i16, %c7704_i16, %c7704_i16, %c14586_i16, %c14586_i16, %c7704_i16, %c1672_i16, %c1672_i16, %c7704_i16, %c14586_i16, %c7704_i16, %c7704_i16, %c14586_i16, %c1672_i16, %c14586_i16, %c7704_i16, %c1672_i16, %c14586_i16, %c7704_i16, %c7704_i16, %c7704_i16, %c1672_i16, %c14586_i16, %c1672_i16, %c7704_i16, %c1672_i16, %c14586_i16, %c14586_i16, %c7704_i16, %c1672_i16, %c14586_i16, %c14586_i16, %c7704_i16, %c1672_i16 : tensor<6x9xi16>
        %c839009542_i64 = arith.constant 839009542 : i64
        %305 = vector.matrix_multiply %20, %26 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<1xf16>) -> vector<3xf16>
        affine.yield %c14586_i16 : i16
      } else {
        %301 = arith.floordivsi %out, %in : i1
        %302 = math.fma %18, %18, %18 : tensor<9x6xf32>
        %303 = arith.remui %c1367977502_i32, %c1367977502_i32 : i32
        %304 = vector.broadcast %in_34 : i1 to vector<i1>
        vector.transfer_write %304, %alloc_9[%c0] : vector<i1>, memref<4xi1>
        %305 = vector.insertelement %true, %304[] : vector<i1>
        %306 = math.exp2 %13 : tensor<6x9xf16>
        %307 = vector.broadcast %c736051292_i64 : i64 to vector<4xi64>
        %308 = vector.broadcast %in : i1 to vector<4xi1>
        %309 = vector.maskedload %alloc_13[%c5, %c3], %308, %307 : memref<6x9xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %310 = vector.transpose %307, [0] : vector<4xi64> to vector<4xi64>
        affine.yield %c1672_i16 : i16
      }
      %281 = arith.ori %c1641654864_i64, %c1641654864_i64 : i64
      %282 = affine.load %alloc_10[%c7, %c5] : memref<6x9xi1>
      %283 = index.ceildivu %c13, %c6
      %alloca_35 = memref.alloca() : memref<9x6xi1>
      %284 = scf.index_switch %c5 -> index 
      case 1 {
        %301 = math.log10 %4 : tensor<6x9xf32>
        %302 = arith.divsi %in_34, %in : i1
        %303 = math.exp2 %10 : tensor<9x6xf16>
        %304 = math.expm1 %10 : tensor<9x6xf16>
        %305 = math.absf %2 : tensor<6x9xf32>
        memref.tensor_store %25, %alloc_19 : memref<9x6xi16>
        %306 = vector.shuffle %26, %20 [2] : vector<1xf16>, vector<3xf16>
        %extracted = tensor.extract %25[%c0, %c1] : tensor<9x6xi16>
        %307 = math.tan %10 : tensor<9x6xf16>
        %308 = math.tan %cst_0 : f32
        %309 = math.copysign %9, %9 : tensor<6x9xf32>
        %310 = math.ceil %7 : tensor<6x9xf32>
        %311 = math.exp2 %2 : tensor<6x9xf32>
        %312 = affine.load %alloc_16[%c11, %c14] : memref<6x9xf32>
        %313 = vector.broadcast %cst : f16 to vector<1x1xf16>
        %314 = vector.outerproduct %26, %26, %313 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        memref.assume_alignment %alloc_17, 16 : memref<9x6xi1>
        scf.yield %c0 : index
      }
      default {
        %false_37 = index.bool.constant false
        %301 = math.exp %cst_5 : f16
        %inserted_38 = tensor.insert %c1367977502_i32 into %5[%c1] : tensor<4xi32>
        bufferization.dealloc_tensor %16 : tensor<9x6xi1>
        %302 = vector.broadcast %c10 : index to vector<6xindex>
        %303 = vector.broadcast %282 : i1 to vector<6xi1>
        %304 = vector.broadcast %c1672_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_19[%c2, %c1] [%302], %303, %304 : memref<9x6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %false_39 = index.bool.constant false
        memref.copy %alloc_11, %alloc_8 : memref<9x6xf16> to memref<9x6xf16>
        %305 = memref.realloc %alloc_23 : memref<4xi1> to memref<4xi1>
        %306 = affine.max affine_map<(d0) -> ((d0 + d0 - 128) * 128, (d0 + d0 - 128) * 128)>(%283)
        %307 = math.exp2 %13 : tensor<6x9xf16>
        bufferization.dealloc_tensor %13 : tensor<6x9xf16>
        %308 = vector.broadcast %cst_5 : f16 to vector<1x1xf16>
        %309 = vector.outerproduct %26, %26, %308 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
        %310 = math.cttz %14 : tensor<6x9xi1>
        %311 = arith.floordivsi %in, %false_39 : i1
        %312 = vector.splat %cst_3 : vector<6x9xf16>
        %313 = vector.insertelement %cst, %26[%c9 : index] : vector<1xf16>
        scf.yield %c15 : index
      }
      %285 = arith.divsi %c14586_i16, %c1672_i16 : i16
      memref.assume_alignment %alloc_22, 2 : memref<9xi16>
      %286 = arith.subi %c1641654864_i64, %c736051292_i64 : i64
      %287 = affine.load %alloc_21[%c15, %c9] : memref<6x9xi64>
      %288 = index.divs %c3, %c9
      memref.tensor_store %11, %alloc_7 : memref<4xi16>
      %289 = index.maxu %c9, %c11
      %290 = math.sqrt %cst_2 : f16
      %291 = vector.broadcast %in : i1 to vector<i1>
      vector.transfer_write %291, %alloc_10[%c0, %c4] : vector<i1>, memref<6x9xi1>
      affine.store %c7704_i16, %alloc_22[%c8] : memref<9xi16>
      %292 = scf.while (%arg0 = %out) : (i1) -> i1 {
        %301 = bufferization.clone %alloc_10 : memref<6x9xi1> to memref<6x9xi1>
        %extracted = tensor.extract %5[%c3] : tensor<4xi32>
        %302 = arith.shrsi %extracted, %extracted : i32
        %303 = arith.ori %c1756635832_i32, %extracted : i32
        %304 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %305 = math.atan %cst_5 : f16
        %306 = index.casts %c7704_i16 : i16 to index
        %inserted_37 = tensor.insert %cst_6 into %7[%c3, %c1] : tensor<6x9xf32>
        scf.condition(%out) %282 : i1
      } do {
      ^bb0(%arg0: i1):
        %301 = arith.divf %cst_1, %cst_1 : f32
        %c-29800_i16 = arith.constant -29800 : i16
        %302 = math.absf %cst_1 : f32
        %from_elements = tensor.from_elements %cst_0, %cst_6, %cst_4, %cst_6, %cst_1, %cst_1, %cst_1, %cst_0, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_0, %cst_6, %cst_6, %cst_4, %cst_1, %cst_0, %cst_4, %cst_6, %cst_0, %cst_4, %cst_0, %cst_4, %cst_1, %cst_0, %cst_1, %cst_6, %cst_1, %cst_4, %cst_1, %cst_6, %cst_4, %cst_6, %cst_1, %cst_0, %cst_6, %cst_6, %cst_6, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_6, %cst_1, %cst_1, %cst_0, %cst_0, %cst_6, %cst_4, %cst_0, %cst_4 : tensor<9x6xf32>
        %303 = arith.divui %c7704_i16, %c14586_i16 : i16
        %304 = memref.realloc %alloc_7 : memref<4xi16> to memref<6xi16>
        %305 = math.cos %from_elements : tensor<9x6xf32>
        %306 = math.sqrt %9 : tensor<6x9xf32>
        %307 = vector.create_mask %289, %c4 : vector<6x9xi1>
        %308 = arith.shrsi %out, %out : i1
        %309 = bufferization.clone %alloc_11 : memref<9x6xf16> to memref<9x6xf16>
        %310 = arith.minsi %true, %arg0 : i1
        memref.assume_alignment %alloc_9, 4 : memref<4xi1>
        %311 = math.exp %cst_2 : f16
        %312 = math.ipowi %25, %25 : tensor<9x6xi16>
        %313 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
        %314 = vector.outerproduct %20, %20, %313 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        scf.yield %in_34 : i1
      }
      %293 = index.divs %c6, %c8
      %splat_36 = tensor.splat %cst_3 : tensor<6x9xf16>
      %294 = vector.extract_strided_slice %279 {offsets = [4], sizes = [3], strides = [1]} : vector<9x6xi1> to vector<3x6xi1>
      %295 = vector.broadcast %out : i1 to vector<4xi1>
      %296 = vector.transfer_write %295, %14[%c0, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, tensor<6x9xi1>
      %297 = index.floordivs %c9, %c15
      %298 = math.ctpop %8 : tensor<9x6xi64>
      %299 = scf.while (%arg0 = %alloc_8) : (memref<9x6xf16>) -> memref<9x6xf16> {
        %301 = affine.load %alloc[%c10] : memref<4xi1>
        %302 = index.casts %c13 : index to i32
        %303 = affine.apply affine_map<(d0, d1) -> ((d0 * -2) mod 64)>(%c0, %c14)
        %304 = index.sub %c0, %288
        %305 = vector.extract %26[0] : vector<1xf16>
        %306 = index.divs %289, %c8
        %307 = math.sqrt %7 : tensor<6x9xf32>
        %308 = affine.min affine_map<(d0) -> (d0 * 128 - (d0 * 8) mod 64 - d0, d0 * 15, -d0, ((d0 * 15) mod 32) ceildiv 64)>(%c8)
        scf.condition(%282) %arg0 : memref<9x6xf16>
      } do {
      ^bb0(%arg0: memref<9x6xf16>):
        %301 = arith.minf %cst_0, %cst_0 : f32
        %302 = index.ceildivu %c13, %c14
        %303 = arith.minf %cst_3, %cst_2 : f16
        %304 = arith.shli %282, %282 : i1
        %false_37 = index.bool.constant false
        %305 = tensor.empty() : tensor<6x9xf32>
        %306 = math.exp %cst_6 : f32
        vector.print %279 : vector<9x6xi1>
        %307 = arith.andi %c7704_i16, %c1672_i16 : i16
        %308 = math.atan %13 : tensor<6x9xf16>
        %309 = math.sqrt %transposed : tensor<9x6xf32>
        %310 = vector.insertelement %cst, %26[%c12 : index] : vector<1xf16>
        %311 = vector.broadcast %c2 : index to vector<6xindex>
        %312 = vector.broadcast %true : i1 to vector<6xi1>
        %313 = vector.broadcast %cst_2 : f16 to vector<6xf16>
        vector.scatter %alloc_18[%c3, %c2] [%311], %312, %313 : memref<6x9xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %314 = math.tan %4 : tensor<6x9xf32>
        %315 = vector.extract %279[1] : vector<9x6xi1>
        %316 = math.copysign %cst_3, %cst_2 : f16
        scf.yield %alloc_8 : memref<9x6xf16>
      }
      %300 = arith.remf %cst_5, %cst_2 : f16
      linalg.yield %282 : i1
    } -> tensor<9x9x9xi1>
    %30 = index.castu %c7704_i16 : i16 to index
    %false = index.bool.constant false
    %31 = math.ceil %12 : tensor<6x9xf32>
    %32 = bufferization.clone %alloc_21 : memref<6x9xi64> to memref<6x9xi64>
    %33 = arith.minsi %c736051292_i64, %c1641654864_i64 : i64
    %34 = affine.load %alloc_9[%c7] : memref<4xi1>
    %35 = vector.broadcast %cst_5 : f16 to vector<3x3xf16>
    %36 = vector.outerproduct %20, %20, %35 {kind = #vector.kind<minf>} : vector<3xf16>, vector<3xf16>
    %37 = arith.shli %c1756635832_i32, %c1756635832_i32 : i32
    %38 = arith.shrsi %c7704_i16, %c7704_i16 : i16
    %39 = arith.muli %false, %34 : i1
    %40 = math.roundeven %12 : tensor<6x9xf32>
    %41 = math.cos %9 : tensor<6x9xf32>
    %42 = bufferization.clone %alloc_21 : memref<6x9xi64> to memref<6x9xi64>
    %43 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
    %44 = math.fpowi %10, %15 : tensor<9x6xf16>, tensor<9x6xi32>
    %45 = math.exp %13 : tensor<6x9xf16>
    %46 = arith.minf %cst_4, %cst_4 : f32
    %47 = arith.divsi %c1756635832_i32, %c1367977502_i32 : i32
    %48 = affine.load %alloc_11[%c2, %c5] : memref<9x6xf16>
    %49 = index.maxs %c15, %c11
    %50 = vector.splat %cst : vector<4xf16>
    %51 = index.castu %c10 : index to i32
    %52 = arith.shli %c1641654864_i64, %c736051292_i64 : i64
    %53 = index.casts %c14586_i16 : i16 to index
    %expanded = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x9xi1> into tensor<6x9x1xi1>
    %54 = scf.index_switch %49 -> memref<9x6xf16> 
    case 1 {
      %275 = arith.ceildivsi %true, %false : i1
      %276 = index.floordivs %c7, %24
      %277 = index.sub %c14, %c0
      scf.if %false {
        %288 = arith.subi %false, %34 : i1
        %289 = index.maxu %49, %c15
        %false_35 = index.bool.constant false
        %290 = arith.shrsi %c1367977502_i32, %c1756635832_i32 : i32
        %291 = vector.splat %30 : vector<4xindex>
        %292 = index.castu %277 : index to i32
        %293 = math.ipowi %15, %15 : tensor<9x6xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %26, %cst : vector<1xf16>, vector<1xf16> into f16
      } else {
        %288 = bufferization.clone %alloc_21 : memref<6x9xi64> to memref<6x9xi64>
        %289 = arith.ori %c1756635832_i32, %c1367977502_i32 : i32
        %290 = bufferization.clone %288 : memref<6x9xi64> to memref<6x9xi64>
        %291 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %292 = vector.outerproduct %26, %26, %291 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        %293 = index.sub %c0, %c0
        bufferization.dealloc_tensor %10 : tensor<9x6xf16>
        %294 = math.copysign %cst_4, %cst_4 : f32
        %295 = index.castu %30 : index to i32
      }
      %278 = vector.extract %26[0] : vector<1xf16>
      %279 = math.absf %7 : tensor<6x9xf32>
      %280 = affine.apply affine_map<(d0, d1) -> (-(d1 ceildiv 128) - 4)>(%c9, %c13)
      memref.tensor_store %14, %alloc_10 : memref<6x9xi1>
      %281 = vector.bitcast %26 : vector<1xf16> to vector<1xf16>
      %282 = index.sub %c10, %c6
      %283 = vector.flat_transpose %281 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %284 = arith.maxf %cst_3, %cst_5 : f16
      %inserted_34 = tensor.insert %c1641654864_i64 into %8[%c2, %c2] : tensor<9x6xi64>
      %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %281, %281, %cst_5 : vector<1xf16>, vector<1xf16> into f16
      %286 = arith.addi %c1367977502_i32, %c1367977502_i32 : i32
      %287 = vector.create_mask %c10 : vector<4xi1>
      scf.yield %alloc_8 : memref<9x6xf16>
    }
    default {
      %275 = arith.addi %c7704_i16, %c14586_i16 : i16
      %276 = vector.create_mask %30, %30 : vector<6x9xi1>
      memref.tensor_store %13, %alloc_18 : memref<6x9xf16>
      %277 = index.maxu %c13, %30
      %278 = arith.divsi %c14586_i16, %c1672_i16 : i16
      %279 = bufferization.clone %alloc_22 : memref<9xi16> to memref<9xi16>
      %280 = vector.create_mask %c8, %c3 : vector<6x9xi1>
      %281 = bufferization.clone %32 : memref<6x9xi64> to memref<6x9xi64>
      %282 = arith.ori %c1672_i16, %c14586_i16 : i16
      %283 = bufferization.to_memref %4 : memref<6x9xf32>
      %284 = math.log1p %2 : tensor<6x9xf32>
      memref.assume_alignment %alloc_21, 1 : memref<6x9xi64>
      %285 = arith.minf %cst_0, %cst_1 : f32
      %286 = math.cttz %16 : tensor<9x6xi1>
      %287 = vector.reduction <add>, %20 : vector<3xf16> into f16
      %288 = arith.minsi %true, %true : i1
      scf.yield %alloc_8 : memref<9x6xf16>
    }
    %55 = vector.splat %c13 : vector<9x6xindex>
    %56 = vector.broadcast %c7704_i16 : i16 to vector<6x9xi16>
    %57 = vector.broadcast %false : i1 to vector<6x9xi1>
    %58 = vector.broadcast %c1756635832_i32 : i32 to vector<6x9xi32>
    %59 = vector.gather %alloc_20[%c14, %c9] [%58], %57, %56 : memref<9x6xi16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi16> into vector<6x9xi16>
    %60 = vector.splat %cst_2 : vector<9x6xf16>
    %61 = math.cttz %17 : tensor<9x6xi1>
    %62 = arith.divsi %true, %false : i1
    %63 = arith.divf %cst_3, %cst_2 : f16
    %64 = arith.maxf %cst_4, %cst_1 : f32
    %65 = arith.addf %48, %cst_3 : f16
    %66 = vector.insertelement %48, %20[%c11 : index] : vector<3xf16>
    %67 = bufferization.to_memref %3 : memref<4xf32>
    memref.assume_alignment %alloc_21, 1 : memref<6x9xi64>
    memref.assume_alignment %alloc_16, 16 : memref<6x9xf32>
    %68 = bufferization.to_tensor %alloc_15 : memref<4xi32>
    %generated = tensor.generate %49 {
    ^bb0(%arg0: index, %arg1: index):
      %275 = arith.addi %c1641654864_i64, %c1641654864_i64 : i64
      %276 = math.fma %2, %12, %9 : tensor<6x9xf32>
      %277 = arith.shrui %false, %true : i1
      %278 = arith.divui %34, %34 : i1
      tensor.yield %c7704_i16 : i16
    } : tensor<?x9xi16>
    scf.index_switch %53 
    case 1 {
      %275 = arith.subi %c7704_i16, %c1672_i16 : i16
      %276 = vector.extract_strided_slice %58 {offsets = [0], sizes = [4], strides = [1]} : vector<6x9xi32> to vector<4x9xi32>
      %277 = vector.bitcast %56 : vector<6x9xi16> to vector<6x9xi16>
      %278 = math.log1p %transposed : tensor<9x6xf32>
      %279 = arith.ori %c1641654864_i64, %c1641654864_i64 : i64
      %280 = math.sqrt %9 : tensor<6x9xf32>
      memref.copy %alloc_21, %alloc_13 : memref<6x9xi64> to memref<6x9xi64>
      %281 = scf.execute_region -> i16 {
        %288 = arith.addi %true, %34 : i1
        %289 = vector.broadcast %c14586_i16 : i16 to vector<9xi16>
        %dest, %accumulated_value = vector.scan <maxui>, %56, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<6x9xi16>, vector<9xi16>
        %290 = arith.floordivsi %true, %true : i1
        %291 = arith.minsi %34, %false : i1
        memref.tensor_store %7, %alloc_16 : memref<6x9xf32>
        %292 = bufferization.to_tensor %42 : memref<6x9xi64>
        %293 = math.atan %12 : tensor<6x9xf32>
        %294 = vector.broadcast %c1367977502_i32 : i32 to vector<i32>
        vector.transfer_write %294, %alloc_15[%c7] : vector<i32>, memref<4xi32>
        %295 = affine.load %alloc_9[%c6] : memref<4xi1>
        %296 = math.log1p %48 : f16
        %297 = arith.divsi %c1672_i16, %c14586_i16 : i16
        %298 = math.exp %4 : tensor<6x9xf32>
        %299 = tensor.empty() : tensor<6x9xi32>
        %300 = math.fpowi %4, %299 : tensor<6x9xf32>, tensor<6x9xi32>
        %301 = math.tan %cst_5 : f16
        %302 = math.floor %cst_5 : f16
        memref.copy %alloc_14, %43 : memref<4xi32> to memref<4xi32>
        scf.yield %c14586_i16 : i16
      }
      %collapsed_34 = tensor.collapse_shape %14 [[0, 1]] : tensor<6x9xi1> into tensor<54xi1>
      %282 = arith.remf %cst_3, %cst : f16
      %283 = arith.divui %c736051292_i64, %c736051292_i64 : i64
      %284 = math.powf %3, %3 : tensor<4xf32>
      %285 = arith.addf %cst_5, %cst_2 : f16
      %286 = math.atan %13 : tensor<6x9xf16>
      bufferization.dealloc_tensor %14 : tensor<6x9xi1>
      %287 = scf.while (%arg0 = %alloc_23) : (memref<4xi1>) -> memref<4xi1> {
        %288 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
        %289 = vector.outerproduct %20, %20, %288 {kind = #vector.kind<add>} : vector<3xf16>, vector<3xf16>
        %290 = index.divu %c4, %c12
        %291 = arith.addi %c1641654864_i64, %c736051292_i64 : i64
        %292 = affine.max affine_map<(d0, d1) -> (-(d0 - 130), ((d0 - 130) mod 4) ceildiv 32, (d0 floordiv 8) mod 32, d0 floordiv 8 + d0 - 128 + 128)>(%49, %c4)
        %293 = index.castu %c11 : index to i32
        %294 = math.atan %13 : tensor<6x9xf16>
        %295 = bufferization.to_memref %3 : memref<4xf32>
        %296 = arith.divf %cst, %48 : f16
        scf.condition(%34) %alloc_23 : memref<4xi1>
      } do {
      ^bb0(%arg0: memref<4xi1>):
        %288 = memref.load %67[%c2] : memref<4xf32>
        %289 = math.exp %13 : tensor<6x9xf16>
        %290 = arith.minsi %false, %true : i1
        bufferization.dealloc_tensor %13 : tensor<6x9xf16>
        %291 = index.castu %49 : index to i32
        %292 = vector.broadcast %cst_3 : f16 to vector<1x1xf16>
        %293 = vector.outerproduct %26, %26, %292 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
        %294 = math.copysign %13, %13 : tensor<6x9xf16>
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 64, d3, d1 - 4, d3 - 40)>(%53, %24, %c15, %c8)
        %296 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
        %297 = math.ctpop %17 : tensor<9x6xi1>
        %298 = memref.realloc %alloc_23 : memref<4xi1> to memref<3xi1>
        %299 = arith.cmpf false, %cst_0, %cst_6 : f32
        %300 = math.ctpop %5 : tensor<4xi32>
        %301 = arith.minsi %34, %34 : i1
        %302 = math.ctpop %5 : tensor<4xi32>
        %303 = arith.divsi %34, %34 : i1
        scf.yield %alloc_9 : memref<4xi1>
      }
      scf.yield
    }
    default {
      %275 = math.log10 %cst_6 : f32
      %276 = arith.ceildivsi %false, %true : i1
      %277 = vector.broadcast %cst_3 : f16 to vector<9xf16>
      vector.transfer_write %277, %alloc_8[%c5, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf16>, memref<9x6xf16>
      %278 = arith.maxf %cst_2, %cst_5 : f16
      %279 = math.copysign %cst, %cst_5 : f16
      %280 = math.cos %3 : tensor<4xf32>
      %281 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d3, d1)>(%c7, %c2, %c14, %c15)
      %282 = index.ceildivu %c11, %c8
      %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d1, d3, d0)>(%c13, %24, %c14, %c5)
      %284 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17 : memref<9x6xi1>) outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %290 = arith.ceildivsi %c736051292_i64, %c1641654864_i64 : i64
        %291 = math.atan2 %13, %13 : tensor<6x9xf16>
        %292 = math.roundeven %2 : tensor<6x9xf32>
        memref.assume_alignment %42, 8 : memref<6x9xi64>
        %293 = index.casts %c7704_i16 : i16 to index
        %294 = vector.broadcast %34 : i1 to vector<i1>
        vector.transfer_write %294, %alloc_23[%30] : vector<i1>, memref<4xi1>
        %295 = math.cos %4 : tensor<6x9xf32>
        %296 = vector.broadcast %cst : f16 to vector<1x1xf16>
        %297 = vector.outerproduct %26, %26, %296 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
        %298 = math.cttz %11 : tensor<4xi16>
        %299 = math.cos %cst_2 : f16
        %300 = vector.insertelement %cst, %20[%c14 : index] : vector<3xf16>
        %false_35 = index.bool.constant false
        %301 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %extracted = tensor.extract %21[] : tensor<i1>
        %302 = arith.addi %c1641654864_i64, %c736051292_i64 : i64
        %303 = index.sizeof
        %304 = math.fma %cst, %cst_2, %cst_2 : f16
        %305 = arith.shrui %false, %34 : i1
        %306 = bufferization.clone %42 : memref<6x9xi64> to memref<6x9xi64>
        %307 = index.floordivs %c6, %c7
        %308 = math.ctlz %16 : tensor<9x6xi1>
        %309 = math.sqrt %12 : tensor<6x9xf32>
        memref.assume_alignment %alloc_18, 2 : memref<6x9xf16>
        %310 = arith.divui %c7704_i16, %c14586_i16 : i16
        %311 = arith.subi %c7704_i16, %c7704_i16 : i16
        %312 = math.exp2 %4 : tensor<6x9xf32>
        %313 = math.roundeven %7 : tensor<6x9xf32>
        %314 = math.tan %cst_1 : f32
        %315 = affine.min affine_map<(d0, d1) -> (d0 * 2 - d1)>(%c12, %293)
        %316 = math.ctlz %15 : tensor<9x6xi32>
        %317 = bufferization.clone %alloc_18 : memref<6x9xf16> to memref<6x9xf16>
        %318 = math.powf %13, %13 : tensor<6x9xf16>
        linalg.yield %false : i1
      } -> tensor<6x9x1xi1>
      %285 = memref.atomic_rmw maxs %c7704_i16, %alloc_7[%c1] : (i16, memref<4xi16>) -> i16
      %286 = bufferization.clone %42 : memref<6x9xi64> to memref<6x9xi64>
      %287 = scf.execute_region -> i1 {
        %290 = arith.addf %cst_5, %cst_2 : f16
        %291 = math.rsqrt %3 : tensor<4xf32>
        %292 = math.exp %2 : tensor<6x9xf32>
        %293 = arith.divsi %c736051292_i64, %c736051292_i64 : i64
        %294 = arith.divf %cst_0, %cst_4 : f32
        %295 = affine.max affine_map<(d0) -> ((-d0) floordiv 64)>(%283)
        %296 = arith.divui %c7704_i16, %c7704_i16 : i16
        %alloca_35 = memref.alloca() : memref<6x9xf32>
        %297 = arith.minsi %c14586_i16, %c1672_i16 : i16
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * -16)>(%30, %c15, %c2, %c3)
        %299 = math.round %4 : tensor<6x9xf32>
        %300 = index.sub %c12, %c9
        %301 = vector.broadcast %c736051292_i64 : i64 to vector<i64>
        vector.transfer_write %301, %42[%c12, %c3] : vector<i64>, memref<6x9xi64>
        %302 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %303 = index.castu %c1756635832_i32 : i32 to index
        %304 = vector.bitcast %58 : vector<6x9xi32> to vector<6x9xf32>
        scf.yield %true : i1
      }
      %288 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d1 - (-d0 - (d3 - d1)) floordiv 64 == 0)>(%c15, %c12, %c15, %c13) -> i64 {
        %290 = index.add %c1, %c8
        %291 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %collapsed_35 = tensor.collapse_shape %14 [[0, 1]] : tensor<6x9xi1> into tensor<54xi1>
        %292 = index.casts %c8 : index to i32
        %293 = affine.max affine_map<(d0, d1, d2) -> (d1 * 64)>(%c14, %c14, %283)
        %294 = vector.multi_reduction <maxui>, %56, %c7704_i16 [0, 1] : vector<6x9xi16> to i16
        %295 = math.copysign %cst, %cst_5 : f16
        %296 = memref.realloc %alloc_7 : memref<4xi16> to memref<3xi16>
        affine.yield %c736051292_i64 : i64
      } else {
        %290 = math.exp2 %12 : tensor<6x9xf32>
        %291 = arith.minf %cst_1, %cst_1 : f32
        %292 = bufferization.clone %alloc_14 : memref<4xi32> to memref<4xi32>
        %293 = vector.broadcast %c1756635832_i32 : i32 to vector<9x9xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %58, %58, %293 : vector<6x9xi32>, vector<6x9xi32> into vector<9x9xi32>
        %295 = math.sqrt %48 : f16
        %296 = index.divs %c1, %24
        %297 = math.tanh %cst_3 : f16
        %298 = arith.ceildivsi %287, %287 : i1
        affine.yield %c1641654864_i64 : i64
      }
      %289 = math.round %12 : tensor<6x9xf32>
      %inserted_34 = tensor.insert %c14586_i16 into %11[%c2] : tensor<4xi16>
    }
    %69 = index.ceildivu %c2, %c12
    %70 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%30, %c1, %c14, %c14)
    %71 = math.exp %7 : tensor<6x9xf32>
    %72 = arith.minsi %c1367977502_i32, %c1756635832_i32 : i32
    %73 = arith.divui %false, %false : i1
    %74 = arith.divsi %c736051292_i64, %c736051292_i64 : i64
    %75 = math.atan2 %10, %10 : tensor<9x6xf16>
    %alloca = memref.alloca() : memref<9x6xi32>
    %76 = bufferization.clone %alloc_20 : memref<9x6xi16> to memref<9x6xi16>
    %77 = index.castu %c9 : index to i32
    %78 = arith.divf %cst_2, %cst_2 : f16
    %79 = math.rsqrt %4 : tensor<6x9xf32>
    %80 = vector.splat %c1672_i16 : vector<6x9xi16>
    %81 = math.exp2 %3 : tensor<4xf32>
    %82 = math.absf %10 : tensor<9x6xf16>
    %83 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 16)>(%c5, %c9, %c13, %c6)
    %cast = tensor.cast %5 : tensor<4xi32> to tensor<?xi32>
    %84 = math.cos %cst_2 : f16
    %85 = vector.bitcast %56 : vector<6x9xi16> to vector<6x9xi16>
    %86 = math.tanh %10 : tensor<9x6xf16>
    %87 = affine.load %alloc_12[%c0, %c12] : memref<6x9xi16>
    %88 = arith.muli %c1367977502_i32, %c1367977502_i32 : i32
    %89 = memref.atomic_rmw muli %c1367977502_i32, %alloc_14[%c3] : (i32, memref<4xi32>) -> i32
    %90 = index.castu %c0 : index to i32
    %91 = vector.splat %24 : vector<6x9xindex>
    %92 = tensor.empty(%c14) : tensor<9x?xi1>
    %93 = math.atan %cst_3 : f16
    %94 = math.atan2 %cst_5, %cst_5 : f16
    %cst_24 = arith.constant 1.000000e+00 : f32
    %95 = vector.transfer_read %7[%c0, %49], %cst_24 : tensor<6x9xf32>, vector<f32>
    %96 = math.log10 %12 : tensor<6x9xf32>
    %97 = arith.subi %c1367977502_i32, %c1756635832_i32 : i32
    %98 = scf.while (%arg0 = %alloc_11) : (memref<9x6xf16>) -> memref<9x6xf16> {
      %275 = tensor.empty() : tensor<4xi1>
      %mapped_34 = linalg.map ins(%alloc_23 : memref<4xi1>) outs(%275 : tensor<4xi1>)
        (%in: i1) {
          %286 = affine.max affine_map<(d0) -> (-d0, d0, d0 floordiv 8)>(%c8)
          %287 = math.copysign %9, %2 : tensor<6x9xf32>
          memref.assume_alignment %43, 4 : memref<4xi32>
          %288 = memref.realloc %alloc_22 : memref<9xi16> to memref<9xi16>
          %289 = math.powf %4, %12 : tensor<6x9xf32>
          %290 = math.roundeven %9 : tensor<6x9xf32>
          %291 = bufferization.clone %alloc_18 : memref<6x9xf16> to memref<6x9xf16>
          %292 = math.atan2 %4, %7 : tensor<6x9xf32>
          %293 = math.sqrt %10 : tensor<9x6xf16>
          %294 = vector.bitcast %59 : vector<6x9xi16> to vector<6x9xi16>
          %295 = vector.broadcast %c1672_i16 : i16 to vector<3xi16>
          %296 = vector.broadcast %34 : i1 to vector<3xi1>
          %297 = vector.maskedload %76[%c6, %c3], %296, %295 : memref<9x6xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %298 = arith.minf %cst_6, %cst_0 : f32
          %299 = vector.bitcast %295 : vector<3xi16> to vector<3xi16>
          %300 = arith.addi %c736051292_i64, %c736051292_i64 : i64
          %301 = math.exp %12 : tensor<6x9xf32>
          %302 = vector.broadcast %cst_0 : f32 to vector<6x9xf32>
          %303 = vector.fma %302, %302, %302 : vector<6x9xf32>
          %304 = vector.extract_strided_slice %295 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
          %305 = bufferization.clone %67 : memref<4xf32> to memref<4xf32>
          %306 = index.divs %c9, %c9
          %307 = index.maxu %70, %70
          %splat_36 = tensor.splat %cst : tensor<4xf16>
          %308 = math.log10 %transposed : tensor<9x6xf32>
          %309 = index.floordivs %c1, %24
          %310 = vector.reduction <or>, %297 : vector<3xi16> into i16
          %311 = math.rsqrt %cst_1 : f32
          %312 = arith.addf %cst_2, %cst_2 : f16
          %313 = math.rsqrt %2 : tensor<6x9xf32>
          %314 = vector.bitcast %59 : vector<6x9xi16> to vector<6x9xi16>
          %false_37 = index.bool.constant false
          %315 = math.roundeven %3 : tensor<4xf32>
          %316 = index.castu %true : i1 to index
          %317 = math.cttz %1 : tensor<9x6xi1>
          %false_38 = arith.constant false
          linalg.yield %false_38 : i1
        }
      %276 = arith.minui %c1367977502_i32, %c1756635832_i32 : i32
      %277 = vector.broadcast %true : i1 to vector<i1>
      %278 = vector.transfer_write %277, %275[%c7] : vector<i1>, tensor<4xi1>
      %279 = math.log1p %3 : tensor<4xf32>
      %280 = tensor.empty() : tensor<1x6x9xi1>
      %281 = tensor.empty() : tensor<9x1xi1>
      %282 = tensor.empty() : tensor<1x6xi1>
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280, %281, %282 : tensor<1x6x9xi1>, tensor<9x1xi1>, tensor<1x6xi1>) outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%in: i1, %in_36: i1, %in_37: i1, %out: i1):
        %286 = math.sqrt %cst_3 : f16
        %287 = arith.shli %c1672_i16, %87 : i16
        %inserted_38 = tensor.insert %cst_5 into %13[%c0, %c5] : tensor<6x9xf16>
        %288 = arith.divui %c1367977502_i32, %c1756635832_i32 : i32
        %289 = vector.insertelement %cst_3, %20[%c1 : index] : vector<3xf16>
        %290 = math.log10 %cst_24 : f32
        %291 = math.exp2 %3 : tensor<4xf32>
        %292 = vector.create_mask %c14, %c10 : vector<9x6xi1>
        memref.copy %arg0, %alloc_8 : memref<9x6xf16> to memref<9x6xf16>
        %293 = arith.divf %cst_4, %cst_6 : f32
        %extracted = tensor.extract %0[%c0, %c3] : tensor<6x9xi1>
        %294 = arith.minsi %in, %in_37 : i1
        %295 = index.casts %out : i1 to index
        %296 = index.maxu %c8, %c0
        %297 = index.casts %c2 : index to i32
        %298 = math.ctpop %6 : tensor<9x6xi32>
        %299 = math.ctpop %87 : i16
        %300 = affine.apply affine_map<(d0, d1) -> (((d0 - 16) mod 32) * 4 - 32)>(%c14, %c12)
        %301 = math.ipowi %25, %25 : tensor<9x6xi16>
        %302 = math.copysign %9, %9 : tensor<6x9xf32>
        affine.store %cst_2, %alloc_8[%c8, %c9] : memref<9x6xf16>
        memref.assume_alignment %alloc_15, 2 : memref<4xi32>
        %from_elements = tensor.from_elements %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32 : tensor<6x9xi32>
        %303 = arith.minf %cst_2, %cst_3 : f16
        %304 = math.round %7 : tensor<6x9xf32>
        %305 = affine.max affine_map<(d0, d1) -> (d1)>(%24, %c14)
        %306 = arith.addf %cst_0, %cst_24 : f32
        %307 = arith.addi %c736051292_i64, %c736051292_i64 : i64
        %308 = arith.ori %true, %out : i1
        %309 = arith.maxsi %c1641654864_i64, %c1641654864_i64 : i64
        bufferization.dealloc_tensor %1 : tensor<9x6xi1>
        memref.tensor_store %14, %alloc_10 : memref<6x9xi1>
        linalg.yield %in_37 : i1
      } -> tensor<6x9x1xi1>
      %284 = math.cttz %6 : tensor<9x6xi32>
      %cst_35 = arith.constant 4.867200e+04 : f16
      %285 = math.atan %4 : tensor<6x9xf32>
      scf.condition(%34) %arg0 : memref<9x6xf16>
    } do {
    ^bb0(%arg0: memref<9x6xf16>):
      %275 = arith.shrui %true, %true : i1
      %276 = math.fma %cst_1, %cst_0, %cst_1 : f32
      memref.copy %alloc_13, %42 : memref<6x9xi64> to memref<6x9xi64>
      %277 = math.floor %transposed : tensor<9x6xf32>
      %278 = vector.broadcast %cst : f16 to vector<3x3xf16>
      %279 = vector.outerproduct %20, %20, %278 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
      %280 = arith.remf %cst_6, %cst_4 : f32
      %281 = vector.reduction <add>, %20 : vector<3xf16> into f16
      %282 = vector.gather %0[%c4, %69] [%58], %57, %57 : tensor<6x9xi1>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi1> into vector<6x9xi1>
      %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d2 - 16, d0, 0)>(%c1, %69, %70, %c8)
      %284 = arith.minf %cst_1, %cst_24 : f32
      %285 = math.roundeven %transposed : tensor<9x6xf32>
      %286 = arith.minsi %c1367977502_i32, %c1756635832_i32 : i32
      %287 = arith.addf %cst_4, %cst_6 : f32
      %288 = math.ctlz %c14586_i16 : i16
      affine.store %c736051292_i64, %alloc_13[%c8, %c14] : memref<6x9xi64>
      %c25265_i16 = arith.constant 25265 : i16
      scf.yield %alloc_8 : memref<9x6xf16>
    }
    %99 = vector.splat %c13 : vector<6x9xindex>
    %100 = affine.load %alloc_18[%c11, %c1] : memref<6x9xf16>
    %101 = index.mul %53, %69
    %102 = vector.extract %56[2] : vector<6x9xi16>
    %103 = affine.min affine_map<(d0, d1, d2, d3) -> ((-(d1 - 128)) mod 64 + 2, d0)>(%c13, %c4, %83, %c2)
    %104 = affine.load %alloc_22[%c11] : memref<9xi16>
    %105 = index.ceildivu %53, %c3
    %106 = scf.if %false -> (memref<4xi32>) {
      %275 = bufferization.clone %alloc_12 : memref<6x9xi16> to memref<6x9xi16>
      %276 = vector.broadcast %c736051292_i64 : i64 to vector<6x9xi64>
      %277 = vector.gather %8[%101, %70] [%58], %57, %276 : tensor<9x6xi64>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi64> into vector<6x9xi64>
      %278 = vector.insertelement %104, %102[%c4 : index] : vector<9xi16>
      %279 = math.absf %9 : tensor<6x9xf32>
      %splat_34 = tensor.splat %c736051292_i64 : tensor<4xi64>
      %280 = tensor.empty() : tensor<6x9xi32>
      %281 = math.fpowi %2, %280 : tensor<6x9xf32>, tensor<6x9xi32>
      %282 = math.cttz %false : i1
      %283 = math.tan %18 : tensor<9x6xf32>
      scf.yield %alloc_15 : memref<4xi32>
    } else {
      %275 = math.round %transposed : tensor<9x6xf32>
      %276 = arith.addf %cst_1, %cst_4 : f32
      scf.index_switch %53 
      case 1 {
        %281 = math.rsqrt %cst_3 : f16
        %282 = math.ipowi %68, %5 : tensor<4xi32>
        %283 = math.floor %cst : f16
        %284 = index.castu %c1672_i16 : i16 to index
        %285 = tensor.empty(%c15) : tensor<?x9xi16>
        %286 = index.sub %24, %49
        %287 = memref.realloc %alloc_22 : memref<9xi16> to memref<9xi16>
        %288 = index.maxu %101, %284
        bufferization.dealloc_tensor %4 : tensor<6x9xf32>
        %289 = math.atan %10 : tensor<9x6xf16>
        %290 = math.absf %12 : tensor<6x9xf32>
        %291 = vector.broadcast %87 : i16 to vector<6xi16>
        %dest, %accumulated_value = vector.scan <or>, %59, %291 {inclusive = false, reduction_dim = 1 : i64} : vector<6x9xi16>, vector<6xi16>
        %292 = index.ceildivu %c7, %c12
        %293 = math.ctpop %6 : tensor<9x6xi32>
        %c1467375601_i32 = arith.constant 1467375601 : i32
        %294 = arith.minsi %87, %87 : i16
        scf.yield
      }
      case 2 {
        %281 = memref.load %alloc_23[%c2] : memref<4xi1>
        %282 = math.cttz %5 : tensor<4xi32>
        %283 = tensor.empty() : tensor<6x9xi32>
        %284 = math.fpowi %4, %283 : tensor<6x9xf32>, tensor<6x9xi32>
        %285 = tensor.empty(%c6) : tensor<?x6xi32>
        %286 = arith.shrsi %c1367977502_i32, %c1367977502_i32 : i32
        %287 = arith.minui %false, %34 : i1
        %288 = vector.bitcast %20 : vector<3xf16> to vector<3xf16>
        memref.assume_alignment %alloc_17, 1 : memref<9x6xi1>
        %289 = math.fpowi %12, %283 : tensor<6x9xf32>, tensor<6x9xi32>
        %290 = arith.shrsi %87, %c14586_i16 : i16
        %291 = math.ipowi %8, %8 : tensor<9x6xi64>
        %292 = index.ceildivu %c0, %c5
        %293 = index.ceildivu %105, %c0
        %294 = index.add %24, %c3
        %295 = math.cos %4 : tensor<6x9xf32>
        %296 = index.castu %c11 : index to i32
        scf.yield
      }
      case 3 {
        %281 = arith.negf %cst_2 : f16
        %282 = arith.maxf %cst_2, %cst_5 : f16
        %283 = arith.minf %cst_2, %cst : f16
        %inserted_35 = tensor.insert %34 into %1[%c0, %c0] : tensor<9x6xi1>
        %284 = vector.reduction <mul>, %26 : vector<1xf16> into f16
        %285 = math.exp %cst_5 : f16
        %286 = tensor.empty() : tensor<6x9xi16>
        %287 = vector.broadcast %c1672_i16 : i16 to vector<9x6xi16>
        %288 = vector.broadcast %false : i1 to vector<9x6xi1>
        %289 = vector.broadcast %c1367977502_i32 : i32 to vector<9x6xi32>
        %290 = vector.gather %286[%c13, %c8] [%289], %288, %287 : tensor<6x9xi16>, vector<9x6xi32>, vector<9x6xi1>, vector<9x6xi16> into vector<9x6xi16>
        memref.copy %alloc_9, %alloc : memref<4xi1> to memref<4xi1>
        %291 = index.floordivs %c15, %c2
        %292 = arith.divf %cst_1, %cst_1 : f32
        %293 = math.cos %cst_5 : f16
        %294 = index.casts %c10 : index to i32
        memref.tensor_store %11, %alloc_7 : memref<4xi16>
        %295 = vector.broadcast %c9 : index to vector<9xindex>
        %296 = vector.broadcast %true : i1 to vector<9xi1>
        vector.scatter %alloc_12[%c5, %c3] [%295], %296, %102 : memref<6x9xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %297 = math.round %9 : tensor<6x9xf32>
        %298 = index.castu %c7704_i16 : i16 to index
        scf.yield
      }
      case 4 {
        %281 = arith.maxf %cst_2, %cst_5 : f16
        %282 = arith.ori %c736051292_i64, %c1641654864_i64 : i64
        %283 = arith.subi %c1367977502_i32, %c1367977502_i32 : i32
        %284 = math.atan %transposed : tensor<9x6xf32>
        %285 = math.absf %48 : f16
        %alloc_35 = memref.alloc() : memref<9x6xf32>
        memref.tensor_store %18, %alloc_35 : memref<9x6xf32>
        memref.assume_alignment %alloc_7, 1 : memref<4xi16>
        %286 = math.round %7 : tensor<6x9xf32>
        %287 = index.maxu %c4, %c7
        %288 = memref.realloc %alloc_7 : memref<4xi16> to memref<6xi16>
        %289 = arith.subi %87, %c7704_i16 : i16
        %290 = bufferization.to_memref %22 : memref<i1>
        %291 = index.floordivs %c13, %c9
        %alloc_36 = memref.alloc() : memref<6x9xi1>
        %292 = vector.broadcast %c14 : index to vector<6xindex>
        %293 = vector.broadcast %false : i1 to vector<6xi1>
        %294 = vector.broadcast %cst_2 : f16 to vector<6xf16>
        vector.scatter %alloc_18[%c3, %c4] [%292], %293, %294 : memref<6x9xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %295 = arith.addf %cst_1, %cst_0 : f32
        scf.yield
      }
      default {
        %281 = bufferization.to_memref %3 : memref<4xf32>
        %282 = math.exp2 %3 : tensor<4xf32>
        memref.copy %32, %alloc_21 : memref<6x9xi64> to memref<6x9xi64>
        %283 = math.cttz %17 : tensor<9x6xi1>
        %284 = vector.create_mask %c2, %c13 : vector<6x9xi1>
        %285 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %286 = vector.outerproduct %26, %26, %285 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
        %287 = arith.addf %cst, %cst_2 : f16
        %288 = arith.shrsi %c1367977502_i32, %c1756635832_i32 : i32
        %289 = math.cttz %87 : i16
        %290 = bufferization.to_memref %2 : memref<6x9xf32>
        %291 = arith.shli %c1756635832_i32, %c1367977502_i32 : i32
        %splat_35 = tensor.splat %87 : tensor<9x6xi16>
        %292 = vector.reduction <mul>, %102 : vector<9xi16> into i16
        %293 = arith.cmpf true, %48, %cst_5 : f16
        %294 = arith.divui %c14586_i16, %c1672_i16 : i16
        %295 = bufferization.clone %alloc_20 : memref<9x6xi16> to memref<9x6xi16>
      }
      %277 = math.rsqrt %13 : tensor<6x9xf16>
      %alloca_34 = memref.alloca() : memref<6x9xi16>
      %278 = arith.minf %cst_0, %cst_6 : f32
      %279 = memref.realloc %alloc_23 : memref<4xi1> to memref<9xi1>
      %280 = arith.addf %cst_1, %cst_1 : f32
      scf.yield %43 : memref<4xi32>
    }
    %107 = tensor.empty() : tensor<6x9xi32>
    %108 = math.fpowi %13, %107 : tensor<6x9xf16>, tensor<6x9xi32>
    %109 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
    %110 = memref.realloc %106 : memref<4xi32> to memref<4xi32>
    %111 = vector.broadcast %c1367977502_i32 : i32 to vector<i32>
    %112 = vector.transfer_write %111, %5[%c8] : vector<i32>, tensor<4xi32>
    %113 = vector.broadcast %cst_0 : f32 to vector<3xf32>
    %114 = vector.broadcast %true : i1 to vector<3xi1>
    %115 = vector.maskedload %67[%c0], %114, %113 : memref<4xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
    %116 = vector.splat %c9 : vector<6x9xindex>
    %117 = vector.create_mask %83, %53 : vector<9x6xi1>
    %118 = memref.load %alloc_12[%c3, %c5] : memref<6x9xi16>
    %119 = arith.cmpf oeq, %cst_0, %cst_6 : f32
    %120 = arith.subi %c1641654864_i64, %c1641654864_i64 : i64
    memref.assume_alignment %alloc_19, 16 : memref<9x6xi16>
    %true_25 = arith.constant true
    %121 = vector.create_mask %c11, %53 : vector<6x9xi1>
    %122 = arith.minf %cst_24, %cst_4 : f32
    %123 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
    %124 = vector.outerproduct %113, %113, %123 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
    %125 = math.rsqrt %cst : f16
    %126 = arith.maxf %cst_4, %cst_1 : f32
    %127 = math.atan2 %cst_24, %cst_24 : f32
    %128 = math.floor %cst_4 : f32
    %129 = vector.load %alloc_9[%c2] : memref<4xi1>, vector<6x9xi1>
    %130 = arith.cmpf ogt, %48, %cst : f16
    %131 = math.cttz %68 : tensor<4xi32>
    %132 = math.atan %cst_6 : f32
    %133 = index.castu %49 : index to i32
    %134 = vector.broadcast %cst_24 : f32 to vector<3x3xf32>
    %135 = vector.outerproduct %115, %115, %134 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
    %136 = vector.broadcast %cst_5 : f16 to vector<1x1xf16>
    %137 = vector.outerproduct %26, %26, %136 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
    %138 = arith.floordivsi %34, %34 : i1
    %139 = affine.load %alloc_12[%c2, %c8] : memref<6x9xi16>
    %140 = bufferization.to_memref %68 : memref<4xi32>
    %141 = vector.splat %c15 : vector<6x9xindex>
    %142 = arith.divsi %c1641654864_i64, %c736051292_i64 : i64
    %143 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<6x9x1xi1>) {
    ^bb0(%out: i1):
      %275 = math.powf %2, %2 : tensor<6x9xf32>
      %276 = vector.splat %out : vector<4xi1>
      %277 = bufferization.clone %alloc_23 : memref<4xi1> to memref<4xi1>
      %278 = tensor.empty() : tensor<1x6x9xi1>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278 : tensor<1x6x9xi1>) outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%in: i1, %out_37: i1):
        %307 = affine.load %alloc_8[%c10, %c15] : memref<9x6xf16>
        %308 = vector.bitcast %121 : vector<6x9xi1> to vector<6x9xi1>
        %309 = arith.shrsi %c7704_i16, %139 : i16
        %310 = math.log1p %10 : tensor<9x6xf16>
        %311 = index.divu %70, %c12
        %312 = arith.shrui %87, %87 : i16
        %false_38 = index.bool.constant false
        %313 = index.divu %311, %30
        %314 = arith.cmpf uno, %cst_24, %cst_4 : f32
        %315 = index.castu %70 : index to i32
        %316 = affine.max affine_map<(d0, d1, d2, d3) -> (((-d0) ceildiv 8) mod 2 + 1, d0 - 2)>(%53, %c14, %c0, %30)
        %317 = affine.min affine_map<(d0, d1, d2) -> (d1, d1 + d0 + (-(d1 - d0) + d1 ceildiv 64) ceildiv 16)>(%70, %c3, %313)
        %318 = index.castu %c2 : index to i32
        %splat_39 = tensor.splat %c1756635832_i32 : tensor<6x9xi32>
        %319 = vector.multi_reduction <minui>, %59, %85 [] : vector<6x9xi16> to vector<6x9xi16>
        %320 = arith.minf %cst_3, %cst_5 : f16
        %321 = vector.splat %c1641654864_i64 : vector<9x6xi64>
        %322 = arith.minf %cst_3, %307 : f16
        %323 = math.atan %cst_6 : f32
        %324 = arith.addf %48, %307 : f16
        %325 = vector.create_mask %316, %c10 : vector<9x6xi1>
        %326 = math.round %cst : f16
        %327 = math.ceil %2 : tensor<6x9xf32>
        %alloc_40 = memref.alloc() : memref<9x6xf32>
        memref.tensor_store %transposed, %alloc_40 : memref<9x6xf32>
        %328 = arith.minf %cst_5, %48 : f16
        %329 = index.castu %69 : index to i32
        %330 = affine.min affine_map<(d0, d1) -> (d0 * 64, d0 * 512, (d1 * 4 + d0 * 32) mod 64 - 32)>(%c15, %70)
        %331 = math.atan %cst : f16
        %332 = arith.maxsi %c7704_i16, %c1672_i16 : i16
        %false_41 = index.bool.constant false
        %333 = math.fma %13, %13, %13 : tensor<6x9xf16>
        %334 = math.cttz %expanded : tensor<6x9x1xi1>
        linalg.yield %in : i1
      } -> tensor<6x9x1xi1>
      %280 = affine.if affine_set<(d0, d1, d2) : ((d2 + d0) mod 16 + d0 >= 0)>(%c3, %c14, %c6) -> memref<4xf32> {
        vector.print %56 : vector<6x9xi16>
        %307 = math.absf %12 : tensor<6x9xf32>
        %308 = math.copysign %2, %9 : tensor<6x9xf32>
        %309 = math.log10 %2 : tensor<6x9xf32>
        %310 = math.sqrt %transposed : tensor<9x6xf32>
        %311 = affine.min affine_map<(d0, d1, d2) -> (d2 - d0, d2 - d0, d0)>(%c8, %c10, %c4)
        %312 = vector.broadcast %cst_6 : f32 to vector<3x3xf32>
        %313 = vector.outerproduct %115, %115, %312 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
        %314 = vector.splat %c12 : vector<4xindex>
        affine.yield %67 : memref<4xf32>
      } else {
        %307 = index.ceildivu %c1, %c7
        %308 = index.mul %83, %c14
        %309 = math.cttz %68 : tensor<4xi32>
        %310 = math.rsqrt %7 : tensor<6x9xf32>
        %311 = math.atan %cst_4 : f32
        %312 = arith.cmpi sge, %c14586_i16, %139 : i16
        %313 = math.atan %12 : tensor<6x9xf32>
        %314 = arith.shli %c7704_i16, %c7704_i16 : i16
        affine.yield %67 : memref<4xf32>
      }
      %281 = arith.remui %139, %c7704_i16 : i16
      %282 = vector.splat %48 : vector<4xf16>
      %283 = bufferization.to_memref %13 : memref<6x9xf16>
      %284 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf16> to vector<1xf16>
      %285 = tensor.empty() : tensor<6x9xf32>
      %mapped_34 = linalg.map ins(%12 : tensor<6x9xf32>) outs(%285 : tensor<6x9xf32>)
        (%in: f32) {
          %307 = arith.maxf %cst_5, %100 : f16
          %308 = arith.remui %c736051292_i64, %c736051292_i64 : i64
          %309 = arith.divsi %c1672_i16, %c14586_i16 : i16
          memref.assume_alignment %277, 2 : memref<4xi1>
          %310 = arith.minsi %c1367977502_i32, %c1367977502_i32 : i32
          %311 = arith.xori %87, %c1672_i16 : i16
          %312 = index.add %c2, %c8
          %313 = math.rsqrt %in : f32
          %314 = math.log10 %cst_6 : f32
          %c1_i32_37 = arith.constant 1 : i32
          %315 = vector.transfer_read %6[%c7, %69], %c1_i32_37 : tensor<9x6xi32>, vector<i32>
          %316 = math.tanh %13 : tensor<6x9xf16>
          %317 = math.atan %12 : tensor<6x9xf32>
          %318 = math.cttz %25 : tensor<9x6xi16>
          %319 = math.sqrt %18 : tensor<9x6xf32>
          %320 = math.ipowi %c736051292_i64, %c1641654864_i64 : i64
          %321 = math.log1p %transposed : tensor<9x6xf32>
          %322 = math.absf %4 : tensor<6x9xf32>
          %323 = vector.extract %85[3] : vector<6x9xi16>
          %324 = tensor.empty() : tensor<6x9xi32>
          %325 = math.round %285 : tensor<6x9xf32>
          %326 = math.log1p %12 : tensor<6x9xf32>
          %327 = math.log10 %cst_2 : f16
          memref.assume_alignment %alloc_13, 2 : memref<6x9xi64>
          %328 = vector.load %106[%c1] : memref<4xi32>, vector<4xi32>
          %329 = arith.maxf %cst_5, %cst : f16
          %330 = vector.extract_strided_slice %59 {offsets = [0], sizes = [5], strides = [1]} : vector<6x9xi16> to vector<5x9xi16>
          %331 = vector.broadcast %true : i1 to vector<6xi1>
          %dest, %accumulated_value = vector.scan <maxui>, %129, %331 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi1>, vector<6xi1>
          memref.assume_alignment %alloc_7, 16 : memref<4xi16>
          %332 = arith.cmpi uge, %34, %out : i1
          %333 = affine.load %alloc_12[%c6, %c1] : memref<6x9xi16>
          %334 = math.ctpop %324 : tensor<6x9xi32>
          %335 = arith.shli %c1672_i16, %c14586_i16 : i16
          %cst_38 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_38 : f32
        }
      %286 = vector.broadcast %87 : i16 to vector<9x9xi16>
      %287 = vector.outerproduct %102, %102, %286 {kind = #vector.kind<mul>} : vector<9xi16>, vector<9xi16>
      %inserted_35 = tensor.insert %c1641654864_i64 into %8[%c8, %c4] : tensor<9x6xi64>
      %288 = math.exp2 %12 : tensor<6x9xf32>
      %289 = arith.subi %104, %c1672_i16 : i16
      %290 = vector.broadcast %c7704_i16 : i16 to vector<9x9xi16>
      %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %59, %56, %290 : vector<6x9xi16>, vector<6x9xi16> into vector<9x9xi16>
      %292 = arith.divui %139, %c7704_i16 : i16
      %293 = math.sqrt %cst_3 : f16
      %294 = arith.divui %c7704_i16, %87 : i16
      memref.assume_alignment %alloc_23, 2 : memref<4xi1>
      %295 = math.log10 %3 : tensor<4xf32>
      %from_elements = tensor.from_elements %cst, %cst, %100, %cst_3, %cst_5, %100, %cst_2, %cst, %48, %cst_3, %100, %100, %cst_5, %cst_3, %cst_2, %100, %cst, %100, %cst_3, %100, %cst, %cst_5, %cst, %100, %cst_3, %cst_5, %cst, %48, %cst, %100, %100, %cst_3, %100, %cst_2, %cst_2, %48, %cst, %100, %48, %cst_5, %cst, %cst_3, %cst_5, %48, %cst_5, %cst_3, %cst_2, %cst_2, %48, %100, %cst_2, %100, %48, %cst : tensor<6x9xf16>
      %296 = math.copysign %3, %3 : tensor<4xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %297 = vector.transfer_read %15[%c13, %c7], %c0_i32 : tensor<9x6xi32>, vector<i32>
      %298 = arith.divui %139, %104 : i16
      %299 = math.ctpop %68 : tensor<4xi32>
      %300 = vector.bitcast %85 : vector<6x9xi16> to vector<6x9xi16>
      %301 = vector.create_mask %c15, %c4 : vector<9x6xi1>
      %302 = index.divu %24, %c12
      %false_36 = index.bool.constant false
      %303 = index.floordivs %c6, %105
      %304 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
      %305 = vector.outerproduct %115, %113, %304 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
      %306 = affine.load %alloc_17[%c7, %c2] : memref<9x6xi1>
      linalg.yield %out : i1
    } -> tensor<6x9x1xi1>
    %144 = vector.broadcast %105 : index to vector<4xindex>
    %145 = vector.broadcast %true : i1 to vector<4xi1>
    %146 = vector.broadcast %c736051292_i64 : i64 to vector<4xi64>
    vector.scatter %alloc_21[%c3, %c7] [%144], %145, %146 : memref<6x9xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %147 = math.tan %4 : tensor<6x9xf32>
    %148 = arith.subi %c1756635832_i32, %c1367977502_i32 : i32
    %149 = math.ctpop %139 : i16
    %150 = arith.divf %cst_24, %cst_24 : f32
    memref.alloca_scope  {
      %275 = arith.minui %139, %139 : i16
      %276 = arith.minf %cst_0, %cst_1 : f32
      %277 = math.roundeven %cst_2 : f16
      %278 = vector.broadcast %true : i1 to vector<3xi1>
      %279 = vector.transfer_write %278, %14[%c4, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<6x9xi1>
      %280 = arith.minui %87, %c7704_i16 : i16
      %281 = index.add %c1, %c9
      %282 = affine.if affine_set<(d0) : (d0 * 4 >= 0, d0 == 0)>(%c12) -> f32 {
        %308 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
        %309 = arith.remui %c1756635832_i32, %c1756635832_i32 : i32
        %310 = arith.andi %c1672_i16, %c14586_i16 : i16
        %311 = math.floor %cst_3 : f16
        %312 = math.tan %13 : tensor<6x9xf16>
        %313 = math.roundeven %7 : tensor<6x9xf32>
        %314 = math.cttz %5 : tensor<4xi32>
        %315 = bufferization.to_memref %6 : memref<9x6xi32>
        affine.yield %cst_1 : f32
      } else {
        %308 = math.fpowi %10, %6 : tensor<9x6xf16>, tensor<9x6xi32>
        %309 = math.atan2 %12, %7 : tensor<6x9xf32>
        %310 = arith.ceildivsi %c1367977502_i32, %c1756635832_i32 : i32
        %311 = vector.bitcast %129 : vector<6x9xi1> to vector<6x9xi1>
        %312 = index.mul %c12, %281
        %313 = math.ipowi %6, %6 : tensor<9x6xi32>
        %314 = math.sqrt %cst_3 : f16
        %315 = math.ctpop %68 : tensor<4xi32>
        affine.yield %cst_0 : f32
      }
      affine.store %cst_2, %alloc_11[%c3, %c5] : memref<9x6xf16>
      %283 = index.divs %c13, %281
      %284 = memref.alloca_scope  -> (f16) {
        %308 = vector.multi_reduction <maxsi>, %278, %false [0] : vector<3xi1> to i1
        %309 = math.round %transposed : tensor<9x6xf32>
        %310 = affine.apply affine_map<(d0, d1) -> (-d1 + 128)>(%c4, %c7)
        %splat_36 = tensor.splat %cst_6 : tensor<6x9xf32>
        %311 = arith.remf %cst_4, %cst_24 : f32
        %312 = math.ctpop %104 : i16
        memref.assume_alignment %alloc_17, 8 : memref<9x6xi1>
        %313 = math.atan2 %4, %12 : tensor<6x9xf32>
        %314 = tensor.empty() : tensor<4xi1>
        %315 = affine.max affine_map<(d0) -> (d0)>(%c11)
        memref.tensor_store %16, %alloc_17 : memref<9x6xi1>
        %316 = index.floordivs %53, %105
        %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %26, %100 : vector<1xf16>, vector<1xf16> into f16
        %318 = vector.splat %true : vector<6x9xi1>
        %319 = affine.max affine_map<(d0) -> (d0 * 128, -d0, d0 * 4 - (-d0) ceildiv 2)>(%c9)
        %320 = arith.subi %true, %308 : i1
        %321 = math.log10 %7 : tensor<6x9xf32>
        %322 = arith.remui %c7704_i16, %c14586_i16 : i16
        %323 = arith.ori %87, %c7704_i16 : i16
        %324 = vector.broadcast %cst_4 : f32 to vector<9x6xf32>
        %325 = vector.fma %324, %324, %324 : vector<9x6xf32>
        %326 = math.tan %cst_2 : f16
        %327 = vector.broadcast %34 : i1 to vector<3xi1>
        %328 = vector.transfer_write %327, %14[%c1, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<6x9xi1>
        %329 = math.rsqrt %cst_3 : f16
        %330 = math.log1p %cst_24 : f32
        %331 = arith.addf %cst_3, %cst_2 : f16
        %inserted_37 = tensor.insert %cst_5 into %13[%c1, %c6] : tensor<6x9xf16>
        %332 = arith.floordivsi %308, %false : i1
        %333 = math.atan2 %9, %9 : tensor<6x9xf32>
        %334 = math.rsqrt %cst_1 : f32
        %335 = index.castu %49 : index to i32
        %336 = math.fpowi %transposed, %15 : tensor<9x6xf32>, tensor<9x6xi32>
        %337 = vector.broadcast %308 : i1 to vector<4xi1>
        %338 = vector.transfer_write %337, %0[%c13, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, tensor<6x9xi1>
        memref.alloca_scope.return %100 : f16
      }
      %alloc_34 = memref.alloc() : memref<6x1x9xi1>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34 : memref<6x1x9xi1>) outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %308 = bufferization.clone %67 : memref<4xf32> to memref<4xf32>
        %309 = math.roundeven %9 : tensor<6x9xf32>
        %310 = arith.muli %34, %false : i1
        %311 = math.round %2 : tensor<6x9xf32>
        %312 = arith.maxui %out, %34 : i1
        %313 = bufferization.clone %alloc_17 : memref<9x6xi1> to memref<9x6xi1>
        %314 = math.cttz %25 : tensor<9x6xi16>
        %315 = arith.divui %c7704_i16, %c7704_i16 : i16
        %316 = math.tan %10 : tensor<9x6xf16>
        %317 = math.log10 %100 : f16
        %318 = memref.realloc %alloc : memref<4xi1> to memref<3xi1>
        %319 = math.sqrt %4 : tensor<6x9xf32>
        %320 = bufferization.clone %76 : memref<9x6xi16> to memref<9x6xi16>
        %321 = vector.reduction <maxf>, %115 : vector<3xf32> into f32
        %322 = math.ipowi %11, %11 : tensor<4xi16>
        %323 = math.ctpop %false : i1
        %324 = math.round %48 : f16
        %325 = vector.broadcast %c1367977502_i32 : i32 to vector<i32>
        %326 = vector.transfer_write %325, %107[%c13, %c14] : vector<i32>, tensor<6x9xi32>
        %327 = math.tan %12 : tensor<6x9xf32>
        %328 = index.floordivs %c1, %c10
        %329 = math.tan %cst_2 : f16
        %330 = bufferization.clone %alloc_18 : memref<6x9xf16> to memref<6x9xf16>
        %331 = index.divu %49, %30
        %332 = affine.load %alloc_15[%c3] : memref<4xi32>
        %inserted_36 = tensor.insert %cst_3 into %10[%c2, %c0] : tensor<9x6xf16>
        %333 = math.fpowi %cst_3, %332 : f16, i32
        %334 = math.atan2 %284, %cst : f16
        %335 = bufferization.clone %43 : memref<4xi32> to memref<4xi32>
        %336 = index.maxu %c12, %c4
        %337 = bufferization.clone %140 : memref<4xi32> to memref<4xi32>
        %338 = math.cttz %expanded : tensor<6x9x1xi1>
        %339 = math.powf %18, %18 : tensor<9x6xf32>
        linalg.yield %34 : i1
      } -> tensor<6x9x1xi1>
      %286 = math.expm1 %284 : f16
      %287 = math.round %48 : f16
      %288 = math.round %cst_6 : f32
      %289 = vector.multi_reduction <mul>, %56, %c1672_i16 [0, 1] : vector<6x9xi16> to i16
      %290 = vector.flat_transpose %113 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %291 = math.tan %284 : f16
      %292 = index.floordivs %c9, %c2
      %293 = arith.divsi %139, %104 : i16
      %294 = math.cttz %289 : i16
      memref.assume_alignment %alloc_14, 8 : memref<4xi32>
      %295 = vector.bitcast %59 : vector<6x9xi16> to vector<6x9xf16>
      %296 = arith.minsi %c1756635832_i32, %c1756635832_i32 : i32
      %297 = tensor.empty() : tensor<6x9xf32>
      %mapped_35 = linalg.map ins(%9, %alloc_16, %4 : tensor<6x9xf32>, memref<6x9xf32>, tensor<6x9xf32>) outs(%297 : tensor<6x9xf32>)
        (%in: f32, %in_36: f32, %in_37: f32) {
          %308 = affine.max affine_map<(d0, d1) -> (d1 - (d1 + 16) + 26, d1 + 26, (d0 - (d1 - 4)) * 16384)>(%c14, %69)
          memref.copy %alloc_9, %alloc : memref<4xi1> to memref<4xi1>
          %309 = vector.load %alloc_10[%c3, %c1] : memref<6x9xi1>, vector<6x9xi1>
          %310 = vector.matrix_multiply %115, %115 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
          %311 = vector.insertelement %cst_0, %310[%283 : index] : vector<1xf32>
          %312 = arith.maxf %cst_24, %cst_6 : f32
          %313 = math.absi %34 : i1
          %314 = arith.divf %284, %cst_5 : f16
          %315 = arith.ceildivsi %false, %true : i1
          %316 = math.cttz %8 : tensor<9x6xi64>
          %317 = math.ctpop %5 : tensor<4xi32>
          %inserted_38 = tensor.insert %c1367977502_i32 into %cast[%c0] : tensor<?xi32>
          %318 = arith.shli %289, %104 : i16
          %319 = math.cttz %5 : tensor<4xi32>
          %320 = index.floordivs %70, %c12
          %321 = vector.broadcast %104 : i16 to vector<9x9xi16>
          %322 = vector.outerproduct %102, %102, %321 {kind = #vector.kind<minsi>} : vector<9xi16>, vector<9xi16>
          %323 = affine.load %alloc_21[%c5, %c8] : memref<6x9xi64>
          %324 = math.ceil %100 : f16
          %325 = math.cos %in_36 : f32
          %326 = memref.realloc %106 : memref<4xi32> to memref<9xi32>
          %327 = math.sqrt %cst_24 : f32
          memref.tensor_store %10, %alloc_11 : memref<9x6xf16>
          %328 = math.tan %48 : f16
          %329 = math.fpowi %9, %107 : tensor<6x9xf32>, tensor<6x9xi32>
          %330 = math.exp %284 : f16
          %false_39 = index.bool.constant false
          %331 = arith.ceildivsi %87, %c1672_i16 : i16
          %332 = arith.remf %in_36, %in_37 : f32
          %333 = index.floordivs %24, %101
          memref.assume_alignment %alloc_16, 16 : memref<6x9xf32>
          bufferization.dealloc_tensor %5 : tensor<4xi32>
          %334 = index.maxu %c0, %283
          %cst_40 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_40 : f32
        }
      %298 = math.ipowi %107, %107 : tensor<6x9xi32>
      %299 = math.roundeven %284 : f16
      %300 = bufferization.clone %43 : memref<4xi32> to memref<4xi32>
      %301 = math.ctlz %11 : tensor<4xi16>
      %302 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
      %303 = vector.outerproduct %26, %26, %302 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
      %304 = vector.broadcast %c1367977502_i32 : i32 to vector<i32>
      %305 = vector.transfer_write %304, %5[%69] : vector<i32>, tensor<4xi32>
      %306 = index.ceildivu %53, %c7
      %307 = arith.floordivsi %c7704_i16, %139 : i16
    }
    %151 = arith.divsi %c1672_i16, %c7704_i16 : i16
    %152 = arith.addi %34, %true : i1
    %153 = arith.muli %139, %c1672_i16 : i16
    %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<6x9xf16> into tensor<54xf16>
    %154 = math.atan2 %4, %12 : tensor<6x9xf32>
    %155 = index.mul %105, %c3
    %156 = arith.minsi %c1756635832_i32, %c1756635832_i32 : i32
    %157 = math.atan %cst_1 : f32
    %158 = affine.max affine_map<(d0, d1) -> (d1 mod 2, d1, d0 + (d1 + d0) floordiv 4 + 2)>(%103, %49)
    %159 = math.tanh %2 : tensor<6x9xf32>
    %160 = math.fpowi %cst_2, %c1367977502_i32 : f16, i32
    %161 = math.ipowi %6, %6 : tensor<9x6xi32>
    %162 = math.powf %2, %7 : tensor<6x9xf32>
    %163 = affine.min affine_map<(d0) -> (-(d0 + d0 mod 64 - 128) + d0 mod 64, (-(d0 + d0 mod 64 - 128)) ceildiv 16)>(%c13)
    %164 = math.exp %cst_4 : f32
    %splat = tensor.splat %cst_4 : tensor<6x9xf32>
    %165 = index.ceildivu %c9, %49
    %inserted = tensor.insert %cst_4 into %9[%c5, %c8] : tensor<6x9xf32>
    %166 = vector.create_mask %155 : vector<4xi1>
    %167 = vector.flat_transpose %115 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    scf.index_switch %49 
    case 1 {
      %275 = arith.maxf %cst_24, %cst_0 : f32
      %276 = vector.extract %59[5] : vector<6x9xi16>
      %277 = arith.cmpi uge, %139, %139 : i16
      %278 = math.round %2 : tensor<6x9xf32>
      %279 = math.absf %12 : tensor<6x9xf32>
      %280 = math.atan2 %100, %cst_2 : f16
      %281 = bufferization.clone %alloc_7 : memref<4xi16> to memref<4xi16>
      %282 = arith.addi %true, %34 : i1
      %283 = math.copysign %cst_5, %48 : f16
      %284 = index.mul %c10, %70
      %285 = bufferization.to_memref %1 : memref<9x6xi1>
      %286 = arith.cmpf uge, %cst_24, %cst_0 : f32
      %287 = index.floordivs %165, %c15
      %288 = arith.remui %true, %true : i1
      %289 = vector.reduction <and>, %276 : vector<9xi16> into i16
      %290 = arith.cmpi eq, %c736051292_i64, %c1641654864_i64 : i64
      scf.yield
    }
    case 2 {
      %275 = arith.addi %c7704_i16, %87 : i16
      %276 = math.cttz %c7704_i16 : i16
      %277 = arith.ceildivsi %true, %true : i1
      %278 = arith.minsi %c1641654864_i64, %c736051292_i64 : i64
      %279 = math.atan %cst : f16
      %true_34 = index.bool.constant true
      %280 = bufferization.to_memref %7 : memref<6x9xf32>
      %281 = math.powf %cst, %cst_2 : f16
      %282 = math.log %transposed : tensor<9x6xf32>
      %alloc_35 = memref.alloc() : memref<9x6xf32>
      memref.tensor_store %transposed, %alloc_35 : memref<9x6xf32>
      %283 = index.divu %c14, %69
      %284 = arith.addf %cst_2, %cst_2 : f16
      %285 = math.ipowi %87, %139 : i16
      %286 = vector.insertelement %cst_6, %113[%c15 : index] : vector<3xf32>
      memref.assume_alignment %42, 2 : memref<6x9xi64>
      memref.assume_alignment %alloc_19, 2 : memref<9x6xi16>
      scf.yield
    }
    default {
      %275 = index.ceildivu %49, %165
      %276 = math.round %48 : f16
      %277 = math.log1p %18 : tensor<9x6xf32>
      %278 = arith.maxf %cst_0, %cst_6 : f32
      %279 = math.absf %100 : f16
      %280 = vector.shuffle %20, %20 [3] : vector<3xf16>, vector<3xf16>
      %281 = math.log1p %4 : tensor<6x9xf32>
      %282 = index.ceildivu %105, %c12
      %283 = math.tan %cst_24 : f32
      %284 = math.round %cst_5 : f16
      %alloc_34 = memref.alloc() : memref<54xf16>
      memref.tensor_store %collapsed, %alloc_34 : memref<54xf16>
      %285 = index.castu %83 : index to i32
      %286 = math.cttz %34 : i1
      %287 = scf.index_switch %105 -> i64 
      case 1 {
        %289 = math.roundeven %7 : tensor<6x9xf32>
        %290 = math.atan %13 : tensor<6x9xf16>
        %291 = index.casts %c1641654864_i64 : i64 to index
        %292 = affine.min affine_map<(d0, d1) -> ((((d1 mod 8) mod 16) mod 128) ceildiv 64)>(%c1, %158)
        %293 = index.maxu %103, %c8
        %294 = affine.load %alloc_12[%c5, %c2] : memref<6x9xi16>
        %295 = math.log10 %9 : tensor<6x9xf32>
        %296 = tensor.empty() : tensor<6x6xf32>
        %297 = linalg.matmul ins(%splat, %transposed : tensor<6x9xf32>, tensor<9x6xf32>) outs(%296 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %298 = vector.broadcast %cst_2 : f16 to vector<3x3xf16>
        %299 = vector.outerproduct %109, %109, %298 {kind = #vector.kind<maxf>} : vector<3xf16>, vector<3xf16>
        %300 = math.absf %9 : tensor<6x9xf32>
        %301 = arith.muli %c1672_i16, %c1672_i16 : i16
        memref.copy %106, %alloc_14 : memref<4xi32> to memref<4xi32>
        %302 = arith.remui %c14586_i16, %294 : i16
        %303 = arith.cmpf ueq, %cst_4, %cst_1 : f32
        %304 = arith.divsi %c1367977502_i32, %c1367977502_i32 : i32
        %305 = math.powf %13, %13 : tensor<6x9xf16>
        scf.yield %c1641654864_i64 : i64
      }
      case 2 {
        %289 = arith.minsi %87, %87 : i16
        %290 = math.cttz %c1367977502_i32 : i32
        %291 = math.exp2 %cst_3 : f16
        %292 = math.tanh %transposed : tensor<9x6xf32>
        %293 = affine.max affine_map<(d0) -> ((-d0 + 5) floordiv 64, -((-d0 + 5) floordiv 64), d0 - 8)>(%c1)
        %expanded_35 = tensor.expand_shape %5 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %294 = tensor.empty() : tensor<6x9xf16>
        %splat_36 = tensor.splat %c1641654864_i64 : tensor<4xi64>
        %295 = index.maxu %c8, %30
        memref.copy %alloc_20, %76 : memref<9x6xi16> to memref<9x6xi16>
        %296 = index.divs %53, %165
        %297 = vector.load %43[%c1] : memref<4xi32>, vector<6x9xi32>
        %298 = math.sqrt %12 : tensor<6x9xf32>
        %299 = arith.minsi %c1756635832_i32, %c1367977502_i32 : i32
        memref.assume_alignment %43, 4 : memref<4xi32>
        %300 = math.tan %cst_6 : f32
        scf.yield %c1641654864_i64 : i64
      }
      case 3 {
        %289 = index.divu %275, %165
        %290 = memref.realloc %alloc : memref<4xi1> to memref<6xi1>
        %291 = arith.subi %c7704_i16, %87 : i16
        %292 = math.atan2 %7, %7 : tensor<6x9xf32>
        %293 = math.copysign %4, %9 : tensor<6x9xf32>
        %294 = index.mul %70, %49
        bufferization.dealloc_tensor %12 : tensor<6x9xf32>
        %295 = math.copysign %10, %10 : tensor<9x6xf16>
        %296 = tensor.empty() : tensor<9x6xf32>
        %297 = math.tanh %9 : tensor<6x9xf32>
        %298 = affine.min affine_map<(d0, d1, d2) -> (d0 * -4, ((d1 + d0) mod 64) * 16, d2)>(%c8, %69, %c3)
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %167, %113, %cst_6 : vector<3xf32>, vector<3xf32> into f32
        vector.print %57 : vector<6x9xi1>
        %300 = bufferization.clone %alloc_10 : memref<6x9xi1> to memref<6x9xi1>
        %301 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 4 + (d0 ceildiv 64 + d0 mod 4) ceildiv 32, d2 mod 8, (d0 ceildiv 64 + d0 mod 4) ceildiv 32, 1)>(%289, %275, %70)
        %302 = index.castu %69 : index to i32
        scf.yield %c1641654864_i64 : i64
      }
      case 4 {
        %289 = index.ceildivu %158, %c12
        %290 = arith.addf %cst_1, %cst_24 : f32
        %291 = arith.divui %34, %true : i1
        %292 = index.sub %83, %101
        %293 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
        %294 = math.tanh %cst_3 : f16
        affine.store %34, %293[%c2] : memref<4xi1>
        %295 = arith.addf %cst_6, %cst_24 : f32
        memref.assume_alignment %106, 8 : memref<4xi32>
        %296 = affine.load %106[%c13] : memref<4xi32>
        bufferization.dealloc_tensor %17 : tensor<9x6xi1>
        %297 = arith.addi %34, %true : i1
        %298 = math.cttz %1 : tensor<9x6xi1>
        %299 = arith.maxf %48, %cst : f16
        %300 = math.exp2 %9 : tensor<6x9xf32>
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d2 - (d0 - d2 - 16) + 8)>(%c11, %c5, %c10)
        scf.yield %c736051292_i64 : i64
      }
      default {
        %289 = math.round %100 : f16
        %290 = affine.load %alloc_17[%c14, %c15] : memref<9x6xi1>
        %291 = vector.bitcast %167 : vector<3xf32> to vector<3xf32>
        %292 = affine.load %alloc_14[%c8] : memref<4xi32>
        %293 = index.maxu %101, %c0
        %294 = math.log10 %9 : tensor<6x9xf32>
        %295 = memref.realloc %43 : memref<4xi32> to memref<9xi32>
        %296 = math.copysign %12, %12 : tensor<6x9xf32>
        %297 = math.ipowi %0, %0 : tensor<6x9xi1>
        memref.copy %alloc_11, %alloc_8 : memref<9x6xf16> to memref<9x6xf16>
        %inserted_35 = tensor.insert %cst_1 into %transposed[%c3, %c3] : tensor<9x6xf32>
        %298 = arith.minui %c1672_i16, %104 : i16
        %299 = vector.broadcast %cst_4 : f32 to vector<6x9xf32>
        %300 = vector.fma %299, %299, %299 : vector<6x9xf32>
        %301 = bufferization.to_memref %13 : memref<6x9xf16>
        %302 = math.sqrt %12 : tensor<6x9xf32>
        %false_36 = index.bool.constant false
        scf.yield %c1641654864_i64 : i64
      }
      memref.assume_alignment %42, 1 : memref<6x9xi64>
      %288 = math.floor %cst_6 : f32
    }
    %168 = math.exp2 %13 : tensor<6x9xf16>
    %169 = math.atan %cst_4 : f32
    %170 = arith.shrsi %true, %34 : i1
    %171 = scf.index_switch %69 -> f32 
    case 1 {
      %275 = math.floor %10 : tensor<9x6xf16>
      %splat_34 = tensor.splat %cst_3 : tensor<4xf16>
      %alloca_35 = memref.alloca() : memref<4xi32>
      %276 = arith.shrui %c1367977502_i32, %c1756635832_i32 : i32
      %277 = arith.shli %c14586_i16, %139 : i16
      %278 = tensor.empty() : tensor<6x9xi1>
      %279 = vector.broadcast %c14586_i16 : i16 to vector<i16>
      vector.transfer_write %279, %alloc_7[%c2] : vector<i16>, memref<4xi16>
      %alloc_36 = memref.alloc() : memref<9x6xi32>
      memref.tensor_store %6, %alloc_36 : memref<9x6xi32>
      %280 = math.atan %10 : tensor<9x6xf16>
      %281 = vector.broadcast %c1641654864_i64 : i64 to vector<4xi64>
      vector.transfer_write %281, %alloc_21[%103, %24] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi64>, memref<6x9xi64>
      %282 = scf.index_switch %158 -> tensor<6x9xf32> 
      case 1 {
        %288 = arith.shli %c736051292_i64, %c736051292_i64 : i64
        %289 = math.tan %cst : f16
        %290 = memref.realloc %alloc : memref<4xi1> to memref<3xi1>
        bufferization.dealloc_tensor %8 : tensor<9x6xi64>
        %291 = math.fma %4, %12, %9 : tensor<6x9xf32>
        %292 = math.expm1 %2 : tensor<6x9xf32>
        %293 = vector.broadcast %24 : index to vector<9xindex>
        %294 = vector.broadcast %34 : i1 to vector<9xi1>
        %295 = vector.broadcast %c1367977502_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_14[%c3] [%293], %294, %295 : memref<4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %alloc_37 = memref.alloc() : memref<4xf32>
        memref.copy %67, %alloc_37 : memref<4xf32> to memref<4xf32>
        %296 = math.floor %9 : tensor<6x9xf32>
        %297 = arith.addi %87, %104 : i16
        %298 = arith.addf %cst_2, %cst_5 : f16
        %299 = arith.maxf %cst_3, %cst_3 : f16
        %300 = vector.extract_strided_slice %281 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi64> to vector<3xi64>
        %301 = arith.ori %c1672_i16, %c7704_i16 : i16
        %302 = math.exp %100 : f16
        %303 = math.tanh %13 : tensor<6x9xf16>
        scf.yield %7 : tensor<6x9xf32>
      }
      case 2 {
        memref.copy %alloc_20, %alloc_19 : memref<9x6xi16> to memref<9x6xi16>
        %288 = bufferization.clone %alloc_16 : memref<6x9xf32> to memref<6x9xf32>
        %289 = memref.realloc %alloc_22 : memref<9xi16> to memref<6xi16>
        %290 = affine.load %42[%c13, %c0] : memref<6x9xi64>
        %291 = vector.matrix_multiply %102, %102 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
        %292 = vector.matrix_multiply %291, %291 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %293 = math.tanh %18 : tensor<9x6xf32>
        %294 = affine.min affine_map<(d0, d1) -> (d1 + 1)>(%c12, %c8)
        %extracted = tensor.extract %8[%c7, %c0] : tensor<9x6xi64>
        %295 = arith.floordivsi %34, %false : i1
        %296 = arith.addf %cst_6, %cst_1 : f32
        %297 = math.round %cst_3 : f16
        %298 = math.exp %collapsed : tensor<54xf16>
        %299 = math.ctpop %139 : i16
        %300 = arith.minf %100, %100 : f16
        %301 = arith.addi %c1756635832_i32, %c1756635832_i32 : i32
        scf.yield %2 : tensor<6x9xf32>
      }
      default {
        %288 = arith.ori %34, %true : i1
        %289 = arith.subi %c736051292_i64, %c1641654864_i64 : i64
        %290 = math.copysign %splat_34, %splat_34 : tensor<4xf16>
        %291 = math.exp %12 : tensor<6x9xf32>
        %292 = arith.subi %true, %false : i1
        bufferization.dealloc_tensor %10 : tensor<9x6xf16>
        %293 = math.absf %10 : tensor<9x6xf16>
        %294 = index.casts %c11 : index to i32
        %295 = arith.addf %cst_2, %cst_2 : f16
        %296 = arith.shrui %c1672_i16, %c14586_i16 : i16
        %297 = arith.addf %cst_4, %cst_24 : f32
        %298 = index.mul %c0, %158
        %299 = math.exp %13 : tensor<6x9xf16>
        %300 = vector.matrix_multiply %166, %166 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        bufferization.dealloc_tensor %6 : tensor<9x6xi32>
        %301 = arith.divsi %87, %c14586_i16 : i16
        scf.yield %splat : tensor<6x9xf32>
      }
      %283 = memref.realloc %43 : memref<4xi32> to memref<4xi32>
      %284 = math.absf %cst : f16
      %285 = vector.extract_strided_slice %57 {offsets = [1], sizes = [3], strides = [1]} : vector<6x9xi1> to vector<3x9xi1>
      %286 = math.exp %10 : tensor<9x6xf16>
      %287 = math.tan %4 : tensor<6x9xf32>
      scf.yield %cst_6 : f32
    }
    case 2 {
      %275 = arith.shli %c1367977502_i32, %c1367977502_i32 : i32
      %dest, %accumulated_value = vector.scan <minui>, %85, %102 {inclusive = false, reduction_dim = 0 : i64} : vector<6x9xi16>, vector<9xi16>
      memref.tensor_store %7, %alloc_16 : memref<6x9xf32>
      %276 = math.atan %cst_3 : f16
      %alloca_34 = memref.alloca() : memref<4xi16>
      %277 = arith.cmpf ule, %cst, %cst_2 : f16
      %278 = vector.bitcast %59 : vector<6x9xi16> to vector<6x9xi16>
      %279 = math.roundeven %3 : tensor<4xf32>
      bufferization.dealloc_tensor %10 : tensor<9x6xf16>
      %280 = vector.create_mask %163, %c1 : vector<6x9xi1>
      %281 = math.ctpop %c1672_i16 : i16
      %282 = vector.broadcast %c7704_i16 : i16 to vector<i16>
      %283 = vector.transfer_write %282, %11[%c13] : vector<i16>, tensor<4xi16>
      %284 = index.maxu %24, %c9
      %285 = memref.realloc %43 : memref<4xi32> to memref<4xi32>
      %286 = memref.realloc %140 : memref<4xi32> to memref<6xi32>
      %287 = math.fma %cst, %cst_3, %100 : f16
      scf.yield %cst_0 : f32
    }
    case 3 {
      memref.tensor_store %2, %alloc_16 : memref<6x9xf32>
      memref.copy %42, %alloc_21 : memref<6x9xi64> to memref<6x9xi64>
      %275 = vector.broadcast %49 : index to vector<4xindex>
      %276 = vector.broadcast %c1756635832_i32 : i32 to vector<4xi32>
      vector.scatter %106[%c1] [%275], %166, %276 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %277 = bufferization.to_memref %8 : memref<9x6xi64>
      %alloc_34 = memref.alloc() : memref<9x6xi16>
      %278 = vector.flat_transpose %166 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %279 = vector.extract %278[3] : vector<4xi1>
      %280 = index.floordivs %24, %c4
      %281 = arith.subi %34, %false : i1
      %282 = arith.muli %false, %34 : i1
      %283 = arith.minsi %c1641654864_i64, %c736051292_i64 : i64
      %284 = vector.extract %85[2] : vector<6x9xi16>
      %285 = bufferization.clone %alloc_13 : memref<6x9xi64> to memref<6x9xi64>
      %286 = math.ctpop %8 : tensor<9x6xi64>
      %287 = arith.subi %false, %true : i1
      %c25 = arith.constant 25 : index
      %inserted_35 = tensor.insert %48 into %collapsed[%c25] : tensor<54xf16>
      scf.yield %cst_0 : f32
    }
    default {
      %275 = bufferization.clone %alloc_10 : memref<6x9xi1> to memref<6x9xi1>
      %276 = index.sizeof
      %277 = vector.broadcast %cst_5 : f16 to vector<9x6xf16>
      %278 = vector.flat_transpose %167 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %279 = arith.subi %c736051292_i64, %c1641654864_i64 : i64
      %280 = arith.minui %false, %true : i1
      %281 = arith.maxui %87, %c1672_i16 : i16
      bufferization.dealloc_tensor %9 : tensor<6x9xf32>
      %282 = index.casts %105 : index to i32
      %283 = math.cttz %15 : tensor<9x6xi32>
      %284 = arith.shli %104, %139 : i16
      %285 = scf.execute_region -> f32 {
        memref.copy %76, %alloc_20 : memref<9x6xi16> to memref<9x6xi16>
        %290 = vector.flat_transpose %166 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %291 = arith.remf %cst_0, %cst_24 : f32
        %292 = arith.subi %c1756635832_i32, %c1756635832_i32 : i32
        %293 = math.exp2 %cst_0 : f32
        %294 = memref.realloc %alloc_22 : memref<9xi16> to memref<9xi16>
        %295 = memref.atomic_rmw muli %c1641654864_i64, %alloc_13[%c4, %c0] : (i64, memref<6x9xi64>) -> i64
        %296 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %297 = vector.outerproduct %26, %26, %296 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
        %collapsed_34 = tensor.collapse_shape %8 [[0, 1]] : tensor<9x6xi64> into tensor<54xi64>
        %298 = memref.realloc %106 : memref<4xi32> to memref<6xi32>
        %299 = math.exp %12 : tensor<6x9xf32>
        %300 = arith.divui %c1367977502_i32, %c1367977502_i32 : i32
        %301 = bufferization.clone %76 : memref<9x6xi16> to memref<9x6xi16>
        %302 = math.rsqrt %2 : tensor<6x9xf32>
        %303 = math.exp %9 : tensor<6x9xf32>
        %304 = vector.broadcast %cst_3 : f16 to vector<6x9xf16>
        %305 = vector.gather %alloc_18[%c0, %c4] [%58], %121, %304 : memref<6x9xf16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xf16> into vector<6x9xf16>
        scf.yield %cst_1 : f32
      }
      %286 = affine.for %arg0 = 0 to 49 iter_args(%arg1 = %false) -> (i1) {
        affine.yield %false : i1
      }
      %287 = math.cttz %25 : tensor<9x6xi16>
      %288 = math.cttz %6 : tensor<9x6xi32>
      %289 = math.atan2 %9, %2 : tensor<6x9xf32>
      scf.yield %cst_24 : f32
    }
    %172 = index.castu %34 : i1 to index
    %173 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + d3 + d1)>(%c4, %49, %53, %c0)
    %true_26 = index.bool.constant true
    %174 = affine.max affine_map<(d0) -> (d0 - 8, d0 - 8, d0 * 1024)>(%c1)
    %175 = vector.broadcast %c736051292_i64 : i64 to vector<6xi64>
    %176 = vector.transfer_write %175, %8[%c6, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi64>, tensor<9x6xi64>
    %177 = scf.index_switch %c4 -> tensor<6x9xf32> 
    case 1 {
      %275 = math.ipowi %6, %6 : tensor<9x6xi32>
      %276 = math.cttz %true : i1
      %277 = arith.divf %100, %cst_3 : f16
      %278 = bufferization.clone %alloc_9 : memref<4xi1> to memref<4xi1>
      %279 = affine.load %alloc_20[%c7, %c6] : memref<9x6xi16>
      %280 = vector.extract %20[1] : vector<3xf16>
      %281 = arith.divui %c7704_i16, %c1672_i16 : i16
      %282 = affine.if affine_set<(d0, d1, d2) : ((d0 mod 4) ceildiv 32 == 0)>(%c13, %c10, %c5) -> memref<9x6xi64> {
        %287 = bufferization.to_memref %9 : memref<6x9xf32>
        %288 = math.ipowi %21, %21 : tensor<i1>
        %289 = arith.ori %false, %true : i1
        %290 = math.cttz %104 : i16
        %291 = math.atan %2 : tensor<6x9xf32>
        %292 = math.log %13 : tensor<6x9xf16>
        %293 = index.maxu %174, %c0
        %294 = bufferization.to_tensor %alloc_11 : memref<9x6xf16>
        %alloc_35 = memref.alloc() : memref<9x6xi64>
        affine.yield %alloc_35 : memref<9x6xi64>
      } else {
        %287 = arith.ceildivsi %true_26, %34 : i1
        memref.copy %140, %106 : memref<4xi32> to memref<4xi32>
        %288 = math.tanh %3 : tensor<4xf32>
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 mod 128) floordiv 32 + ((d1 mod 128) ceildiv 64) floordiv 64, d1 * -8, d3 + d1 * 8)>(%174, %c2, %53, %c8)
        %inserted_35 = tensor.insert %cst_0 into %4[%c5, %c8] : tensor<6x9xf32>
        %290 = index.divu %c10, %103
        %291 = index.floordivs %101, %c3
        %292 = math.round %cst_24 : f32
        %alloc_36 = memref.alloc() : memref<9x6xi64>
        affine.yield %alloc_36 : memref<9x6xi64>
      }
      %283 = bufferization.clone %alloc_20 : memref<9x6xi16> to memref<9x6xi16>
      %284 = arith.remf %cst_4, %cst_6 : f32
      scf.execute_region {
        %287 = arith.divui %c7704_i16, %c7704_i16 : i16
        %288 = arith.addf %cst_6, %cst_6 : f32
        %289 = math.atan %cst_1 : f32
        %290 = arith.subi %c14586_i16, %c7704_i16 : i16
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d2 ceildiv 32, (d3 + 8) ceildiv 32, d2 ceildiv 32)>(%c0, %158, %83, %c9)
        %292 = tensor.empty() : tensor<6x9xi1>
        %293 = math.cttz %8 : tensor<9x6xi64>
        %294 = math.exp2 %3 : tensor<4xf32>
        %295 = arith.maxui %c1672_i16, %139 : i16
        %296 = vector.broadcast %101 : index to vector<6xindex>
        %297 = vector.broadcast %true : i1 to vector<6xi1>
        vector.scatter %alloc_9[%c0] [%296], %297, %297 : memref<4xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %298 = index.divs %101, %c0
        %extracted = tensor.extract %5[%c3] : tensor<4xi32>
        %299 = tensor.empty() : tensor<6x9xf32>
        %300 = arith.minsi %104, %c14586_i16 : i16
        %301 = math.exp %cst_4 : f32
        %302 = index.floordivs %c7, %69
        scf.yield
      }
      %rank_34 = tensor.rank %21 : tensor<i1>
      %285 = arith.ceildivsi %c1756635832_i32, %c1367977502_i32 : i32
      memref.copy %alloc_19, %76 : memref<9x6xi16> to memref<9x6xi16>
      memref.alloca_scope  {
        %287 = bufferization.clone %alloc_9 : memref<4xi1> to memref<4xi1>
        %288 = math.fpowi %13, %107 : tensor<6x9xf16>, tensor<6x9xi32>
        %289 = math.fpowi %cst_0, %c1756635832_i32 : f32, i32
        %290 = math.cttz %c736051292_i64 : i64
        %291 = tensor.empty() : tensor<9x9xf32>
        %292 = linalg.matmul ins(%18, %4 : tensor<9x6xf32>, tensor<6x9xf32>) outs(%291 : tensor<9x9xf32>) -> tensor<9x9xf32>
        %293 = vector.flat_transpose %115 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %294 = vector.broadcast %c736051292_i64 : i64 to vector<i64>
        vector.transfer_write %294, %alloc_13[%c2, %105] : vector<i64>, memref<6x9xi64>
        %295 = vector.broadcast %true_26 : i1 to vector<3x3xi1>
        %296 = vector.outerproduct %114, %114, %295 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
        %297 = tensor.empty() : tensor<6x9xi32>
        %298 = vector.broadcast %cst_24 : f32 to vector<6x9xf32>
        %299 = vector.fma %298, %298, %298 : vector<6x9xf32>
        %300 = math.ctpop %1 : tensor<9x6xi1>
        %301 = math.ctpop %15 : tensor<9x6xi32>
        %302 = math.absf %9 : tensor<6x9xf32>
        %303 = arith.floordivsi %c7704_i16, %c7704_i16 : i16
        %304 = affine.min affine_map<(d0, d1) -> (d1 mod 128 + d0 floordiv 64 - 16 - 4)>(%c5, %69)
        %305 = arith.negf %cst_3 : f16
        %306 = math.absf %13 : tensor<6x9xf16>
        %307 = affine.min affine_map<(d0, d1) -> (d0 - 32, (d1 - d0) * 4, (-d1) ceildiv 4)>(%53, %c14)
        %308 = math.atan2 %4, %12 : tensor<6x9xf32>
        %309 = math.ipowi %104, %279 : i16
        %310 = vector.broadcast %c12 : index to vector<3xindex>
        vector.scatter %278[%c3] [%310], %114, %114 : memref<4xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %from_elements = tensor.from_elements %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c1641654864_i64, %c1641654864_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c736051292_i64, %c1641654864_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c736051292_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c1641654864_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64, %c736051292_i64 : tensor<6x9xi64>
        %311 = math.sqrt %cst_0 : f32
        %312 = tensor.empty() : tensor<6x9xi32>
        %313 = vector.broadcast %c7704_i16 : i16 to vector<4xi16>
        vector.transfer_write %313, %alloc_12[%c5, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<6x9xi16>
        %314 = arith.remf %100, %100 : f16
        %315 = arith.maxui %c1756635832_i32, %c1756635832_i32 : i32
        %316 = arith.minf %48, %cst_3 : f16
        %317 = arith.shrsi %c1756635832_i32, %c1756635832_i32 : i32
        %318 = vector.create_mask %83 : vector<4xi1>
        affine.store %false, %287[%c11] : memref<4xi1>
        %extracted = tensor.extract %13[%c5, %c0] : tensor<6x9xf16>
      }
      %286 = math.copysign %9, %9 : tensor<6x9xf32>
      scf.yield %12 : tensor<6x9xf32>
    }
    case 2 {
      scf.if %true {
        %288 = math.ctpop %34 : i1
        %289 = vector.insertelement %cst_4, %115[%173 : index] : vector<3xf32>
        %290 = arith.remf %cst_24, %cst_0 : f32
        %291 = vector.broadcast %87 : i16 to vector<6xi16>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %59, %102, %291 : vector<6x9xi16>, vector<9xi16> into vector<6xi16>
        %293 = bufferization.clone %alloc_12 : memref<6x9xi16> to memref<6x9xi16>
        %true_35 = index.bool.constant true
        %alloc_36 = memref.alloc() : memref<54xf16>
        memref.tensor_store %collapsed, %alloc_36 : memref<54xf16>
        %splat_37 = tensor.splat %c7704_i16 : tensor<9x6xi16>
      } else {
        %288 = arith.negf %100 : f16
        %289 = arith.negf %cst_1 : f32
        %290 = math.copysign %10, %10 : tensor<9x6xf16>
        %291 = vector.splat %c6 : vector<9x6xindex>
        %292 = math.cos %cst_3 : f16
        %293 = arith.addf %cst_6, %cst_6 : f32
        %294 = arith.addi %34, %false : i1
        %295 = bufferization.to_tensor %106 : memref<4xi32>
      }
      %275 = vector.bitcast %85 : vector<6x9xi16> to vector<6x9xi16>
      %276 = bufferization.clone %67 : memref<4xf32> to memref<4xf32>
      %from_elements = tensor.from_elements %cst_3, %48, %cst_3, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %48, %cst_3, %48, %48, %cst, %100, %cst, %cst_5, %cst_3, %48, %cst_5, %cst_3, %cst_2, %48, %cst_2, %48, %cst_2, %cst_2, %cst, %cst_5, %100, %cst_3, %cst_5, %48, %cst_5, %cst, %cst_2, %48, %cst_5, %cst_2, %cst_2, %cst_3, %cst_3, %48, %cst_5, %cst_3, %cst_5, %48, %cst, %cst_3, %48, %48, %cst_3, %cst_5, %cst_3, %cst_3 : tensor<9x6xf16>
      %277 = affine.max affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%c2, %105, %83)
      %278 = arith.ori %34, %true_26 : i1
      %from_elements_34 = tensor.from_elements %false, %true, %34, %false, %true, %false, %false, %true, %true, %true_26, %true, %true_26, %34, %true_26, %true, %34, %true, %true, %false, %34, %false, %true_26, %true, %false, %true_26, %true, %34, %true_26, %true_26, %34, %true, %true, %true, %true_26, %34, %true_26, %false, %false, %34, %34, %34, %true, %34, %false, %34, %true, %false, %true_26, %false, %34, %true_26, %34, %true, %34 : tensor<6x9xi1>
      %279 = vector.broadcast %104 : i16 to vector<6xi16>
      %dest, %accumulated_value = vector.scan <maxui>, %59, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi16>, vector<6xi16>
      memref.tensor_store %11, %alloc_7 : memref<4xi16>
      %280 = arith.minsi %c1756635832_i32, %c1367977502_i32 : i32
      %281 = vector.broadcast %true : i1 to vector<9x9xi1>
      %282 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %121, %121, %281 : vector<6x9xi1>, vector<6x9xi1> into vector<9x9xi1>
      %283 = arith.divsi %c7704_i16, %c7704_i16 : i16
      %284 = index.floordivs %83, %c3
      %285 = math.round %cst : f16
      %286 = math.ipowi %21, %22 : tensor<i1>
      %287 = index.sizeof
      scf.yield %7 : tensor<6x9xf32>
    }
    case 3 {
      %275 = bufferization.clone %alloc_17 : memref<9x6xi1> to memref<9x6xi1>
      %276 = vector.insertelement %cst_24, %113[%c6 : index] : vector<3xf32>
      %277 = vector.insertelement %true, %166[%c14 : index] : vector<4xi1>
      %278 = arith.muli %false, %false : i1
      %279 = arith.cmpf ule, %48, %100 : f16
      %280 = vector.extract %129[4] : vector<6x9xi1>
      %281 = arith.andi %c1672_i16, %c14586_i16 : i16
      %282 = math.atan2 %13, %13 : tensor<6x9xf16>
      %283 = tensor.empty() : tensor<4xf16>
      %284 = math.exp %splat : tensor<6x9xf32>
      %285 = math.sqrt %cst_5 : f16
      %286 = math.tanh %cst_24 : f32
      scf.execute_region {
        %290 = index.castu %c13 : index to i32
        %rank_34 = tensor.rank %17 : tensor<9x6xi1>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (((d1 mod 32) * 2) floordiv 16)>(%c15, %c4, %c3)
        %292 = vector.broadcast %cst_6 : f32 to vector<6x9xf32>
        %293 = vector.fma %292, %292, %292 : vector<6x9xf32>
        %294 = arith.minf %cst_24, %cst_24 : f32
        %295 = memref.realloc %alloc_15 : memref<4xi32> to memref<9xi32>
        %296 = index.divu %172, %c5
        %297 = vector.transpose %167, [0] : vector<3xf32> to vector<3xf32>
        %298 = math.atan2 %cst_5, %cst_3 : f16
        %299 = math.absf %cst_2 : f16
        memref.copy %alloc_8, %alloc_11 : memref<9x6xf16> to memref<9x6xf16>
        %300 = math.cttz %expanded : tensor<6x9x1xi1>
        %301 = vector.bitcast %167 : vector<3xf32> to vector<3xf32>
        %302 = arith.cmpf ueq, %48, %48 : f16
        %303 = tensor.empty() : tensor<9x9xi1>
        %304 = linalg.matmul ins(%1, %14 : tensor<9x6xi1>, tensor<6x9xi1>) outs(%303 : tensor<9x9xi1>) -> tensor<9x9xi1>
        %305 = vector.bitcast %167 : vector<3xf32> to vector<3xf32>
        scf.yield
      }
      %287 = math.expm1 %splat : tensor<6x9xf32>
      %288 = arith.divf %cst_6, %cst_6 : f32
      %289 = math.log1p %cst_0 : f32
      scf.yield %9 : tensor<6x9xf32>
    }
    case 4 {
      %275 = bufferization.to_memref %13 : memref<6x9xf16>
      %276 = index.add %c6, %163
      %277 = vector.bitcast %58 : vector<6x9xi32> to vector<6x9xi32>
      %alloca_34 = memref.alloca() : memref<6x9xi32>
      %splat_35 = tensor.splat %c1672_i16 : tensor<6x9xi16>
      %cast_36 = tensor.cast %18 : tensor<9x6xf32> to tensor<?x?xf32>
      %278 = math.rsqrt %7 : tensor<6x9xf32>
      %279 = arith.maxsi %34, %true : i1
      %280 = affine.if affine_set<(d0, d1) : (d0 floordiv 64 - 1 == 0, 0 >= 0, d0 >= 0, d0 + d0 floordiv 64 - 1 >= 0)>(%c11, %c3) -> memref<4xf32> {
        %288 = math.log %cst : f16
        %289 = math.ctpop %22 : tensor<i1>
        %from_elements = tensor.from_elements %c14586_i16, %139, %c14586_i16, %87, %87, %87, %104, %139, %139, %c14586_i16, %104, %139, %c7704_i16, %87, %87, %c1672_i16, %104, %104, %c7704_i16, %c14586_i16, %c14586_i16, %139, %c14586_i16, %c1672_i16, %c7704_i16, %c1672_i16, %c7704_i16, %139, %c1672_i16, %104, %104, %c14586_i16, %104, %c1672_i16, %87, %104, %c1672_i16, %87, %139, %c14586_i16, %c1672_i16, %c1672_i16, %c7704_i16, %c7704_i16, %87, %104, %c1672_i16, %87, %c7704_i16, %c7704_i16, %c14586_i16, %c14586_i16, %c14586_i16, %c14586_i16 : tensor<6x9xi16>
        %290 = vector.bitcast %85 : vector<6x9xi16> to vector<6x9xi16>
        %291 = math.log1p %48 : f16
        %292 = math.tan %100 : f16
        %293 = index.ceildivu %c9, %c6
        %294 = affine.min affine_map<(d0, d1) -> (0, d0 mod 2, (d1 - (d0 + 64)) * 64 - 64, d0 * 8 - (d1 - (d0 + 64)) * 64)>(%155, %c3)
        affine.yield %67 : memref<4xf32>
      } else {
        %288 = arith.ceildivsi %false, %false : i1
        %289 = math.exp2 %transposed : tensor<9x6xf32>
        memref.assume_alignment %alloc_23, 4 : memref<4xi1>
        %290 = math.fpowi %cst_2, %c1367977502_i32 : f16, i32
        %291 = vector.insertelement %100, %109[%c5 : index] : vector<3xf16>
        %292 = arith.minsi %false, %34 : i1
        %293 = math.ipowi %16, %16 : tensor<9x6xi1>
        %294 = vector.bitcast %58 : vector<6x9xi32> to vector<6x9xi32>
        affine.yield %67 : memref<4xf32>
      }
      %281 = vector.multi_reduction <maxf>, %167, %cst_0 [0] : vector<3xf32> to f32
      %inserted_37 = tensor.insert %139 into %11[%c0] : tensor<4xi16>
      %282 = math.cttz %14 : tensor<6x9xi1>
      %283 = bufferization.clone %alloc_17 : memref<9x6xi1> to memref<9x6xi1>
      %284 = vector.broadcast %70 : index to vector<4xindex>
      %285 = vector.broadcast %139 : i16 to vector<4xi16>
      vector.scatter %alloc_19[%c0, %c0] [%284], %166, %285 : memref<9x6xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %286 = bufferization.to_memref %4 : memref<6x9xf32>
      %287 = arith.maxf %cst_6, %cst_24 : f32
      scf.yield %9 : tensor<6x9xf32>
    }
    default {
      %275 = math.log10 %12 : tensor<6x9xf32>
      %276 = math.powf %13, %13 : tensor<6x9xf16>
      %277 = tensor.empty() : tensor<4xi32>
      %mapped_34 = linalg.map ins(%43 : memref<4xi32>) outs(%277 : tensor<4xi32>)
        (%in: i32) {
          %291 = vector.create_mask %105, %155 : vector<9x6xi1>
          %292 = arith.minui %c736051292_i64, %c736051292_i64 : i64
          %293 = vector.broadcast %c7704_i16 : i16 to vector<6xi16>
          %294 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %85, %102, %293 : vector<6x9xi16>, vector<9xi16> into vector<6xi16>
          %295 = arith.minf %cst_1, %cst_4 : f32
          %296 = index.maxu %30, %c10
          %297 = vector.create_mask %c4 : vector<4xi1>
          %298 = affine.load %alloc_19[%c8, %c2] : memref<9x6xi16>
          %299 = index.ceildivu %70, %69
          %300 = arith.addi %c736051292_i64, %c736051292_i64 : i64
          %301 = affine.max affine_map<(d0, d1) -> (0, d0 * -2, d0 mod 4)>(%155, %299)
          %302 = index.floordivs %c7, %c7
          %303 = index.mul %173, %c7
          %304 = vector.extract_strided_slice %175 {offsets = [4], sizes = [2], strides = [1]} : vector<6xi64> to vector<2xi64>
          %305 = arith.maxf %100, %48 : f16
          %306 = math.log10 %transposed : tensor<9x6xf32>
          %307 = vector.matrix_multiply %109, %26 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<1xf16>) -> vector<3xf16>
          affine.store %48, %alloc_18[%c0, %c2] : memref<6x9xf16>
          %308 = math.atan %2 : tensor<6x9xf32>
          %309 = math.atan2 %18, %transposed : tensor<9x6xf32>
          %false_35 = index.bool.constant false
          %310 = bufferization.to_memref %expanded : memref<6x9x1xi1>
          %311 = math.ceil %4 : tensor<6x9xf32>
          %312 = math.atan %cst_5 : f16
          %313 = math.rsqrt %collapsed : tensor<54xf16>
          %314 = math.roundeven %cst_4 : f32
          %315 = index.sub %155, %c1
          %316 = arith.muli %104, %87 : i16
          %317 = bufferization.to_tensor %alloc_21 : memref<6x9xi64>
          memref.assume_alignment %alloc_16, 8 : memref<6x9xf32>
          %rank_36 = tensor.rank %generated : tensor<?x9xi16>
          %318 = math.copysign %transposed, %transposed : tensor<9x6xf32>
          %319 = math.floor %collapsed : tensor<54xf16>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %278 = math.sqrt %7 : tensor<6x9xf32>
      %279 = arith.addi %87, %104 : i16
      %280 = index.sub %158, %c9
      %281 = scf.if %true -> (f16) {
        %291 = vector.flat_transpose %167 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        affine.store %cst_4, %alloc_16[%c11, %c13] : memref<6x9xf32>
        %292 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - (d2 - d3) + d3 - 64, d0, d2)>(%24, %c14, %c13, %163)
        %cast_35 = tensor.cast %107 : tensor<6x9xi32> to tensor<?x?xi32>
        %293 = index.add %83, %c10
        %294 = arith.maxsi %true, %true : i1
        %295 = vector.broadcast %c1367977502_i32 : i32 to vector<9xi32>
        %296 = vector.broadcast %34 : i1 to vector<9xi1>
        %297 = vector.maskedload %140[%c3], %296, %295 : memref<4xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %alloca_36 = memref.alloca() : memref<9x6xi64>
        scf.yield %cst : f16
      } else {
        affine.store %34, %alloc_23[%c0] : memref<4xi1>
        %291 = math.cos %cst_3 : f16
        %292 = math.sqrt %9 : tensor<6x9xf32>
        %293 = arith.cmpf ugt, %cst_5, %cst : f16
        %294 = memref.realloc %alloc_15 : memref<4xi32> to memref<6xi32>
        %295 = math.fpowi %cst_1, %c1367977502_i32 : f32, i32
        %296 = arith.divsi %87, %139 : i16
        %297 = math.round %9 : tensor<6x9xf32>
        scf.yield %cst_3 : f16
      }
      %282 = arith.maxsi %87, %c7704_i16 : i16
      %283 = math.tanh %12 : tensor<6x9xf32>
      %284 = math.tanh %cst : f16
      %285 = vector.extract %167[0] : vector<3xf32>
      %286 = vector.bitcast %58 : vector<6x9xi32> to vector<6x9xf32>
      %287 = arith.ori %c1672_i16, %104 : i16
      %288 = math.cttz %68 : tensor<4xi32>
      %289 = math.absf %48 : f16
      %290 = vector.create_mask %103 : vector<4xi1>
      scf.yield %7 : tensor<6x9xf32>
    }
    %178 = tensor.empty() : tensor<6x9xi16>
    %179 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
    %180 = scf.while (%arg0 = %117) : (vector<9x6xi1>) -> vector<9x6xi1> {
      %275 = memref.atomic_rmw mulf %cst_4, %alloc_16[%c5, %c4] : (f32, memref<6x9xf32>) -> f32
      %276 = arith.andi %false, %true : i1
      %277 = vector.broadcast %c0 : index to vector<4xindex>
      %278 = vector.broadcast %c1641654864_i64 : i64 to vector<4xi64>
      vector.scatter %32[%c4, %c7] [%277], %166, %278 : memref<6x9xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %false_34 = index.bool.constant false
      %279 = scf.index_switch %174 -> memref<4xi32> 
      case 1 {
        memref.tensor_store %10, %alloc_11 : memref<9x6xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %cst_2 : vector<3xf16>, vector<3xf16> into f16
        %285 = math.exp2 %2 : tensor<6x9xf32>
        %collapsed_35 = tensor.collapse_shape %12 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %286 = vector.splat %c13 : vector<6x9xindex>
        %287 = index.floordivs %165, %c10
        memref.assume_alignment %alloc_13, 4 : memref<6x9xi64>
        %288 = vector.broadcast %87 : i16 to vector<9x9xi16>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %59, %59, %288 : vector<6x9xi16>, vector<6x9xi16> into vector<9x9xi16>
        %290 = vector.broadcast %c736051292_i64 : i64 to vector<6x6xi64>
        %291 = vector.outerproduct %175, %175, %290 {kind = #vector.kind<maxsi>} : vector<6xi64>, vector<6xi64>
        %292 = index.mul %70, %c8
        %293 = index.sub %c14, %53
        %dest, %accumulated_value = vector.scan <mul>, %85, %102 {inclusive = false, reduction_dim = 0 : i64} : vector<6x9xi16>, vector<9xi16>
        %extracted = tensor.extract %14[%c5, %c7] : tensor<6x9xi1>
        %294 = arith.minf %cst_1, %cst_0 : f32
        %295 = math.atan %transposed : tensor<9x6xf32>
        %alloc_36 = memref.alloc() : memref<54xf16>
        memref.tensor_store %collapsed, %alloc_36 : memref<54xf16>
        scf.yield %alloc_15 : memref<4xi32>
      }
      case 2 {
        %expanded_35 = tensor.expand_shape %68 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %284 = math.ctpop %87 : i16
        %285 = arith.divf %cst_4, %cst_1 : f32
        %286 = bufferization.clone %alloc_19 : memref<9x6xi16> to memref<9x6xi16>
        %287 = math.copysign %cst_24, %cst_0 : f32
        %288 = math.round %2 : tensor<6x9xf32>
        %289 = vector.broadcast %cst_6 : f32 to vector<6x9xf32>
        %290 = vector.fma %289, %289, %289 : vector<6x9xf32>
        %291 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %dest, %accumulated_value = vector.scan <add>, %290, %291 {inclusive = false, reduction_dim = 0 : i64} : vector<6x9xf32>, vector<9xf32>
        %292 = vector.broadcast %cst_0 : f32 to vector<6x9xf32>
        %293 = vector.fma %292, %290, %290 : vector<6x9xf32>
        %alloc_36 = memref.alloc() : memref<6x9x1xi1>
        memref.tensor_store %expanded, %alloc_36 : memref<6x9x1xi1>
        %from_elements = tensor.from_elements %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32, %c1756635832_i32, %c1367977502_i32, %c1756635832_i32 : tensor<9x6xi32>
        %294 = vector.reduction <add>, %113 : vector<3xf32> into f32
        %295 = arith.minf %48, %100 : f16
        %296 = index.mul %165, %49
        %extracted = tensor.extract %18[%c4, %c5] : tensor<9x6xf32>
        %expanded_37 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<6x9xi1> into tensor<6x9x1xi1>
        scf.yield %140 : memref<4xi32>
      }
      case 3 {
        %284 = vector.bitcast %57 : vector<6x9xi1> to vector<6x9xi1>
        memref.tensor_store %12, %alloc_16 : memref<6x9xf32>
        %285 = math.copysign %18, %18 : tensor<9x6xf32>
        %286 = arith.addf %cst_2, %100 : f16
        %287 = math.cos %48 : f16
        %288 = arith.maxui %c1756635832_i32, %c1756635832_i32 : i32
        %expanded_35 = tensor.expand_shape %178 [[0], [1, 2]] : tensor<6x9xi16> into tensor<6x9x1xi16>
        %289 = index.maxs %c7, %49
        %290 = math.tan %12 : tensor<6x9xf32>
        %291 = arith.minui %c1756635832_i32, %c1756635832_i32 : i32
        %292 = vector.matrix_multiply %114, %114 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        %293 = index.divu %c3, %69
        %294 = math.roundeven %cst_0 : f32
        %295 = math.atan %splat : tensor<6x9xf32>
        %296 = math.ipowi %139, %c7704_i16 : i16
        %297 = math.log2 %cst_0 : f32
        scf.yield %alloc_14 : memref<4xi32>
      }
      default {
        %284 = vector.insertelement %c736051292_i64, %175[%c0 : index] : vector<6xi64>
        %285 = math.cos %cst_3 : f16
        %286 = math.ceil %3 : tensor<4xf32>
        %inserted_35 = tensor.insert %c1367977502_i32 into %68[%c0] : tensor<4xi32>
        %287 = index.casts %c14586_i16 : i16 to index
        %expanded_36 = tensor.expand_shape %68 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %288 = arith.cmpi ult, %c736051292_i64, %c1641654864_i64 : i64
        %289 = arith.divf %cst_1, %cst_6 : f32
        %290 = index.divu %69, %c9
        %291 = index.maxu %c0, %c8
        %292 = math.absf %collapsed : tensor<54xf16>
        %293 = index.castu %c6 : index to i32
        %294 = index.divu %103, %c7
        %295 = math.cttz %11 : tensor<4xi16>
        %296 = arith.ceildivsi %c1756635832_i32, %c1756635832_i32 : i32
        %297 = arith.minf %cst_2, %cst : f16
        scf.yield %140 : memref<4xi32>
      }
      %280 = vector.broadcast %cst_2 : f16 to vector<4xf16>
      %281 = vector.maskedload %alloc_18[%c5, %c5], %166, %280 : memref<6x9xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %282 = arith.subi %34, %34 : i1
      %283 = scf.if %false_34 -> (memref<6x9xi32>) {
        %284 = bufferization.clone %alloc_16 : memref<6x9xf32> to memref<6x9xf32>
        %285 = math.copysign %cst, %cst : f16
        %286 = arith.maxui %true_26, %false_34 : i1
        %287 = math.cttz %17 : tensor<9x6xi1>
        %288 = index.floordivs %c0, %155
        %alloc_35 = memref.alloc() : memref<9x6xf32>
        memref.tensor_store %transposed, %alloc_35 : memref<9x6xf32>
        %289 = vector.create_mask %c5, %c14 : vector<6x9xi1>
        %290 = arith.shrsi %139, %87 : i16
        %alloc_36 = memref.alloc() : memref<6x9xi32>
        scf.yield %alloc_36 : memref<6x9xi32>
      } else {
        %284 = affine.max affine_map<(d0, d1) -> (d1 + 7)>(%174, %30)
        %285 = arith.addi %c7704_i16, %c14586_i16 : i16
        %286 = vector.broadcast %true_26 : i1 to vector<6xi1>
        %dest, %accumulated_value = vector.scan <xor>, %117, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<9x6xi1>, vector<6xi1>
        memref.tensor_store %68, %alloc_15 : memref<4xi32>
        %287 = math.atan2 %10, %10 : tensor<9x6xf16>
        %288 = index.maxu %53, %c3
        %289 = arith.ceildivsi %true, %false : i1
        %290 = vector.reduction <xor>, %114 : vector<3xi1> into i1
        %alloc_35 = memref.alloc() : memref<6x9xi32>
        scf.yield %alloc_35 : memref<6x9xi32>
      }
      scf.condition(%34) %117 : vector<9x6xi1>
    } do {
    ^bb0(%arg0: vector<9x6xi1>):
      %false_34 = index.bool.constant false
      %275 = math.exp %4 : tensor<6x9xf32>
      %276 = arith.maxsi %c14586_i16, %c14586_i16 : i16
      %277 = affine.if affine_set<(d0, d1, d2, d3) : (d3 floordiv 16 >= 0, -d3 >= 0, -(d3 floordiv 16 - d0 ceildiv 64) >= 0, d1 * 8 - 1 >= 0)>(%c4, %c15, %c13, %c9) -> memref<4xi32> {
        %291 = math.fpowi %splat, %107 : tensor<6x9xf32>, tensor<6x9xi32>
        %292 = affine.max affine_map<(d0, d1) -> (-(d0 - 16) - 64, -(d1 mod 64) + -(d0 - 16) - 64, d0, -(d0 - 16) - 64)>(%c9, %c4)
        %293 = math.sqrt %12 : tensor<6x9xf32>
        %294 = arith.minsi %34, %34 : i1
        %295 = arith.divui %false, %false_34 : i1
        %296 = math.atan %12 : tensor<6x9xf32>
        %297 = index.castu %false : i1 to index
        %298 = math.rsqrt %cst_24 : f32
        affine.yield %alloc_15 : memref<4xi32>
      } else {
        %291 = arith.minf %100, %100 : f16
        %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 32, d0 * 32)>(%103, %c3, %103, %c5)
        %cst_35 = arith.constant 1.000000e+00 : f32
        %cst_36 = arith.constant 0.000000e+00 : f32
        %293 = vector.transfer_read %3[%158], %cst_36 : tensor<4xf32>, vector<f32>
        %294 = math.ceil %13 : tensor<6x9xf16>
        %295 = index.castu %83 : index to i32
        %296 = math.tanh %4 : tensor<6x9xf32>
        %297 = arith.minsi %c1756635832_i32, %c1367977502_i32 : i32
        %splat_37 = tensor.splat %c1641654864_i64 : tensor<6x9xi64>
        affine.yield %alloc_14 : memref<4xi32>
      }
      %278 = math.absf %cst_4 : f32
      %279 = vector.broadcast %cst_6 : f32 to vector<3x3xf32>
      %280 = vector.outerproduct %167, %113, %279 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
      %281 = tensor.empty() : tensor<9x9xf16>
      %282 = linalg.matmul ins(%10, %13 : tensor<9x6xf16>, tensor<6x9xf16>) outs(%281 : tensor<9x9xf16>) -> tensor<9x9xf16>
      %283 = math.fpowi %18, %15 : tensor<9x6xf32>, tensor<9x6xi32>
      %284 = arith.shli %true, %true_26 : i1
      %285 = arith.minf %cst, %cst_5 : f16
      %286 = arith.minui %c1756635832_i32, %c1367977502_i32 : i32
      %287 = arith.cmpf oeq, %cst_24, %cst_0 : f32
      %288 = math.ipowi %8, %8 : tensor<9x6xi64>
      memref.tensor_store %12, %alloc_16 : memref<6x9xf32>
      %289 = arith.negf %48 : f16
      %290 = index.floordivs %105, %c5
      scf.yield %117 : vector<9x6xi1>
    }
    %181 = math.atan %2 : tensor<6x9xf32>
    %182 = arith.remf %cst, %cst_5 : f16
    %183 = memref.load %alloc_10[%c2, %c3] : memref<6x9xi1>
    %184 = math.sqrt %4 : tensor<6x9xf32>
    %185 = math.fma %18, %18, %18 : tensor<9x6xf32>
    %186 = math.absf %12 : tensor<6x9xf32>
    %187 = memref.atomic_rmw ori %87, %76[%c0, %c3] : (i16, memref<9x6xi16>) -> i16
    %188 = math.ceil %transposed : tensor<9x6xf32>
    %189 = arith.shrsi %87, %c1672_i16 : i16
    %190 = vector.create_mask %155, %174 : vector<6x9xi1>
    %191 = arith.maxf %cst_5, %cst : f16
    %192 = affine.load %alloc_11[%c7, %c1] : memref<9x6xf16>
    %193 = arith.minui %true, %false : i1
    %194 = vector.broadcast %cst_24 : f32 to vector<9xf32>
    %195 = vector.transfer_write %194, %transposed[%101, %155] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<9x6xf32>
    %196 = math.cttz %c1756635832_i32 : i32
    %197 = math.roundeven %2 : tensor<6x9xf32>
    %198 = bufferization.clone %140 : memref<4xi32> to memref<4xi32>
    %199 = math.cos %7 : tensor<6x9xf32>
    %200 = math.tanh %100 : f16
    %201 = arith.addi %false, %34 : i1
    %202 = math.sqrt %48 : f16
    %203 = bufferization.clone %140 : memref<4xi32> to memref<4xi32>
    %204 = math.sqrt %cst_5 : f16
    %205 = arith.divui %c1672_i16, %104 : i16
    %206 = vector.bitcast %175 : vector<6xi64> to vector<6xi64>
    %207 = math.ctpop %c1367977502_i32 : i32
    %208 = math.rsqrt %collapsed : tensor<54xf16>
    %209 = math.absi %c1756635832_i32 : i32
    %210 = arith.addf %cst_6, %cst_24 : f32
    %splat_27 = tensor.splat %104 : tensor<9x6xi16>
    %211 = scf.execute_region -> index {
      %275 = arith.shli %c736051292_i64, %c1641654864_i64 : i64
      %276 = math.atan %48 : f16
      %277 = math.tan %transposed : tensor<9x6xf32>
      %278 = arith.ori %c736051292_i64, %c736051292_i64 : i64
      %279 = memref.realloc %106 : memref<4xi32> to memref<9xi32>
      %280 = vector.create_mask %c1 : vector<4xi1>
      %281 = vector.insertelement %34, %280[%c12 : index] : vector<4xi1>
      %282 = math.ipowi %16, %1 : tensor<9x6xi1>
      %283 = arith.divf %cst_24, %cst_6 : f32
      %284 = math.log10 %7 : tensor<6x9xf32>
      %285 = vector.broadcast %c1641654864_i64 : i64 to vector<6x6xi64>
      %286 = vector.outerproduct %175, %206, %285 {kind = #vector.kind<maxsi>} : vector<6xi64>, vector<6xi64>
      %287 = index.sizeof
      %288 = arith.addf %cst, %cst_2 : f16
      %extracted = tensor.extract %2[%c4, %c7] : tensor<6x9xf32>
      %289 = arith.ori %c7704_i16, %c14586_i16 : i16
      %290 = index.castu %34 : i1 to index
      scf.yield %69 : index
    }
    %212 = math.copysign %3, %3 : tensor<4xf32>
    %213 = vector.matrix_multiply %115, %115 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
    %214 = vector.load %43[%c1] : memref<4xi32>, vector<4xi32>
    %215 = arith.remf %cst_2, %48 : f16
    scf.if %true_26 {
      %275 = bufferization.to_memref %6 : memref<9x6xi32>
      %276 = bufferization.clone %alloc_14 : memref<4xi32> to memref<4xi32>
      %277 = index.castu %c736051292_i64 : i64 to index
      %278 = arith.maxsi %104, %c1672_i16 : i16
      %279 = math.fma %48, %cst_3, %48 : f16
      %280 = vector.create_mask %101, %24 : vector<6x9xi1>
      %281 = arith.shrsi %c1756635832_i32, %c1756635832_i32 : i32
      %282 = math.copysign %cst_24, %cst_24 : f32
    }
    %216 = math.exp %cst_6 : f32
    %217 = arith.subi %c1641654864_i64, %c1641654864_i64 : i64
    %218 = scf.while (%arg0 = %57) : (vector<6x9xi1>) -> vector<6x9xi1> {
      %splat_34 = tensor.splat %48 : tensor<9x6xf16>
      %275 = math.ctpop %11 : tensor<4xi16>
      %276 = vector.bitcast %206 : vector<6xi64> to vector<6xi64>
      %277 = math.round %2 : tensor<6x9xf32>
      %278 = math.exp2 %9 : tensor<6x9xf32>
      %279 = arith.addf %cst, %cst_3 : f16
      %280 = vector.splat %139 : vector<6x9xi16>
      memref.copy %alloc_19, %alloc_20 : memref<9x6xi16> to memref<9x6xi16>
      scf.condition(%true) %57 : vector<6x9xi1>
    } do {
    ^bb0(%arg0: vector<6x9xi1>):
      %275 = arith.minui %false, %false : i1
      %276 = math.tanh %7 : tensor<6x9xf32>
      %277 = math.tan %7 : tensor<6x9xf32>
      %278 = vector.bitcast %26 : vector<1xf16> to vector<1xi16>
      %279 = math.log10 %cst_4 : f32
      bufferization.dealloc_tensor %6 : tensor<9x6xi32>
      %280 = math.absf %4 : tensor<6x9xf32>
      %281 = index.ceildivs %69, %c12
      %282 = math.exp2 %10 : tensor<9x6xf16>
      %283 = math.ipowi %8, %8 : tensor<9x6xi64>
      %284 = math.log10 %3 : tensor<4xf32>
      %285 = index.castu %c6 : index to i32
      %286 = math.fma %2, %12, %12 : tensor<6x9xf32>
      %287 = vector.reduction <add>, %206 : vector<6xi64> into i64
      %288 = math.cttz %17 : tensor<9x6xi1>
      %289 = math.atan %48 : f16
      scf.yield %121 : vector<6x9xi1>
    }
    %219 = math.sqrt %13 : tensor<6x9xf16>
    %220 = math.copysign %cst_5, %cst : f16
    %true_28 = index.bool.constant true
    %221 = math.tanh %cst_3 : f16
    %222 = arith.addi %true_28, %true_28 : i1
    %223 = vector.broadcast %c1756635832_i32 : i32 to vector<i32>
    %224 = vector.transfer_write %223, %68[%173] : vector<i32>, tensor<4xi32>
    %225 = index.mul %c8, %105
    %226 = arith.divsi %true_26, %true_28 : i1
    %227 = math.fma %cst_2, %cst_2, %cst_5 : f16
    scf.index_switch %24 
    case 1 {
      %275 = memref.realloc %43 : memref<4xi32> to memref<9xi32>
      %276 = index.castu %69 : index to i32
      %277 = memref.realloc %67 : memref<4xf32> to memref<9xf32>
      %278 = math.cos %cst_1 : f32
      %279 = math.fpowi %12, %107 : tensor<6x9xf32>, tensor<6x9xi32>
      %280 = math.absf %4 : tensor<6x9xf32>
      %281 = arith.subi %104, %87 : i16
      %282 = arith.shrsi %c1756635832_i32, %c1367977502_i32 : i32
      %283 = index.divs %225, %70
      %284 = affine.max affine_map<(d0, d1) -> (-((((d1 ceildiv 4) * 2) mod 128) ceildiv 2), d1 ceildiv 4, (d1 ceildiv 4) * 2 - 2, d1)>(%c3, %70)
      %285 = arith.shli %c14586_i16, %c1672_i16 : i16
      %286 = arith.muli %34, %true_28 : i1
      %287 = math.ctpop %139 : i16
      %288 = arith.divui %true, %true_26 : i1
      %289 = arith.mulf %100, %192 : f16
      %290 = math.cos %cst_3 : f16
      scf.yield
    }
    case 2 {
      %275 = arith.shrui %87, %87 : i16
      %276 = vector.broadcast %87 : i16 to vector<9x9xi16>
      %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %59, %56, %276 : vector<6x9xi16>, vector<6x9xi16> into vector<9x9xi16>
      %278 = math.roundeven %3 : tensor<4xf32>
      %279 = vector.insertelement %cst, %109[%165 : index] : vector<3xf16>
      %280 = vector.reduction <minf>, %113 : vector<3xf32> into f32
      %281 = arith.divui %c1756635832_i32, %c1756635832_i32 : i32
      %282 = arith.addi %c1672_i16, %c14586_i16 : i16
      %283 = vector.splat %cst_24 : vector<4xf32>
      %284 = math.rsqrt %10 : tensor<9x6xf16>
      %285 = vector.bitcast %59 : vector<6x9xi16> to vector<6x9xi16>
      memref.alloca_scope  {
        %290 = math.atan %cst_2 : f16
        %291 = math.exp %192 : f16
        %splat_36 = tensor.splat %cst_1 : tensor<4xf32>
        %292 = arith.divsi %c1367977502_i32, %c1756635832_i32 : i32
        %293 = math.ipowi %c14586_i16, %c1672_i16 : i16
        %294 = arith.shli %34, %34 : i1
        %295 = math.cttz %14 : tensor<6x9xi1>
        %296 = math.ipowi %11, %11 : tensor<4xi16>
        bufferization.dealloc_tensor %11 : tensor<4xi16>
        %297 = math.fma %192, %100, %48 : f16
        %298 = arith.floordivsi %c1367977502_i32, %c1756635832_i32 : i32
        %299 = vector.reduction <minui>, %214 : vector<4xi32> into i32
        %300 = arith.divf %cst_5, %cst_2 : f16
        memref.tensor_store %5, %198 : memref<4xi32>
        %301 = arith.cmpi sge, %139, %87 : i16
        %302 = arith.minf %192, %cst_3 : f16
        %303 = math.copysign %cst_3, %192 : f16
        %304 = math.exp %splat : tensor<6x9xf32>
        %305 = bufferization.to_memref %7 : memref<6x9xf32>
        %306 = memref.realloc %alloc_15 : memref<4xi32> to memref<4xi32>
        %307 = arith.ceildivsi %c7704_i16, %104 : i16
        %308 = math.ctpop %25 : tensor<9x6xi16>
        %309 = arith.andi %c736051292_i64, %c736051292_i64 : i64
        %310 = arith.remui %c1756635832_i32, %c1367977502_i32 : i32
        affine.store %c1641654864_i64, %alloc_13[%c15, %c9] : memref<6x9xi64>
        %311 = arith.divsi %104, %87 : i16
        %312 = arith.subi %c1641654864_i64, %c736051292_i64 : i64
        %313 = arith.minf %192, %100 : f16
        %314 = math.cttz %15 : tensor<9x6xi32>
        memref.assume_alignment %alloc_9, 8 : memref<4xi1>
        %315 = arith.subi %87, %104 : i16
        %316 = math.ctlz %14 : tensor<6x9xi1>
      }
      %false_34 = index.bool.constant false
      %286 = vector.splat %cst_0 : vector<4xf32>
      %287 = arith.cmpf ord, %48, %cst_3 : f16
      %alloc_35 = memref.alloc() : memref<1x9xi1>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_35 : memref<1x9xi1>) outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %290 = arith.shrsi %false, %false : i1
        %291 = index.floordivs %155, %c15
        %292 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3, 0, d1 + 32)>(%155, %155, %c14, %163)
        %293 = tensor.empty() : tensor<4xi32>
        %cst_36 = arith.constant 4.451200e+04 : f16
        %294 = math.atan2 %13, %13 : tensor<6x9xf16>
        %295 = arith.shli %c1367977502_i32, %c1756635832_i32 : i32
        %296 = arith.subi %87, %104 : i16
        %297 = index.mul %c14, %c1
        %298 = math.floor %cst_3 : f16
        %299 = vector.flat_transpose %194 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %300 = vector.extract_strided_slice %175 {offsets = [0], sizes = [1], strides = [1]} : vector<6xi64> to vector<1xi64>
        %301 = arith.minsi %c1756635832_i32, %c1367977502_i32 : i32
        %302 = math.roundeven %cst : f16
        %splat_37 = tensor.splat %34 : tensor<9x6xi1>
        %303 = math.exp2 %collapsed : tensor<54xf16>
        %304 = vector.broadcast %cst_0 : f32 to vector<9x6xf32>
        %305 = vector.fma %304, %304, %304 : vector<9x6xf32>
        %306 = vector.extract %206[1] : vector<6xi64>
        %307 = vector.create_mask %83 : vector<4xi1>
        %308 = arith.muli %c1672_i16, %c1672_i16 : i16
        %309 = math.floor %2 : tensor<6x9xf32>
        %cst_38 = arith.constant 1.000000e+00 : f32
        %cst_39 = arith.constant 0.000000e+00 : f32
        %310 = vector.transfer_read %2[%c7, %c0], %cst_39 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<6x9xf32>, vector<3xf32>
        %311 = math.copysign %12, %9 : tensor<6x9xf32>
        %312 = math.rsqrt %cst_24 : f32
        %313 = math.tanh %cst_3 : f16
        %314 = bufferization.clone %42 : memref<6x9xi64> to memref<6x9xi64>
        %315 = index.castu %true : i1 to index
        %316 = math.log10 %13 : tensor<6x9xf16>
        vector.print %299 : vector<9xf32>
        %317 = math.expm1 %9 : tensor<6x9xf32>
        %318 = math.ceil %3 : tensor<4xf32>
        %319 = arith.divf %cst_0, %cst_1 : f32
        linalg.yield %true_26 : i1
      } -> tensor<6x9x1xi1>
      %289 = arith.subi %c14586_i16, %87 : i16
      scf.yield
    }
    default {
      %275 = math.sqrt %12 : tensor<6x9xf32>
      %extracted = tensor.extract %6[%c4, %c4] : tensor<9x6xi32>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<6x9x1xi1>) {
      ^bb0(%out: i1):
        %289 = math.cttz %false : i1
        %290 = index.sizeof
        %291 = bufferization.to_tensor %76 : memref<9x6xi16>
        %292 = vector.extract_strided_slice %114 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
        %293 = math.exp %cst_5 : f16
        %294 = math.round %2 : tensor<6x9xf32>
        %295 = math.ctpop %14 : tensor<6x9xi1>
        %296 = vector.extract_strided_slice %117 {offsets = [0], sizes = [9], strides = [1]} : vector<9x6xi1> to vector<9x6xi1>
        %297 = index.maxu %165, %83
        %298 = memref.atomic_rmw muli %extracted, %106[%c0] : (i32, memref<4xi32>) -> i32
        %299 = vector.create_mask %c3, %174 : vector<9x6xi1>
        %300 = math.rsqrt %cst : f16
        %alloc_35 = memref.alloc() : memref<4xi16>
        memref.copy %alloc_7, %alloc_35 : memref<4xi16> to memref<4xi16>
        %301 = math.atan2 %cst_2, %100 : f16
        %302 = math.tanh %transposed : tensor<9x6xf32>
        %303 = arith.negf %cst_1 : f32
        %304 = math.sqrt %13 : tensor<6x9xf16>
        %305 = arith.shrui %true, %true_26 : i1
        %306 = index.casts %103 : index to i32
        %307 = index.castu %105 : index to i32
        %308 = arith.maxf %cst_2, %cst_5 : f16
        %309 = affine.min affine_map<(d0, d1) -> (d1 mod 32, d1 mod 32)>(%155, %290)
        %310 = bufferization.to_tensor %140 : memref<4xi32>
        %311 = math.atan %4 : tensor<6x9xf32>
        %312 = arith.subi %34, %false : i1
        %313 = arith.divui %104, %87 : i16
        %314 = index.castu %c7704_i16 : i16 to index
        %315 = arith.subi %87, %c14586_i16 : i16
        %316 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %317 = bufferization.to_tensor %43 : memref<4xi32>
        %318 = arith.shli %87, %139 : i16
        %319 = math.round %10 : tensor<9x6xf16>
        linalg.yield %true : i1
      } -> tensor<6x9x1xi1>
      %false_34 = index.bool.constant false
      %277 = scf.index_switch %c9 -> memref<4xf32> 
      case 1 {
        %289 = bufferization.to_memref %10 : memref<9x6xf16>
        %290 = math.exp %cst_6 : f32
        %291 = arith.divf %cst, %cst_3 : f16
        %292 = vector.reduction <minui>, %114 : vector<3xi1> into i1
        %293 = math.ipowi %104, %c1672_i16 : i16
        %294 = vector.broadcast %155 : index to vector<4xindex>
        %295 = vector.broadcast %cst : f16 to vector<4xf16>
        vector.scatter %alloc_8[%c0, %c3] [%294], %166, %295 : memref<9x6xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        memref.assume_alignment %alloc_15, 4 : memref<4xi32>
        %296 = arith.minsi %34, %34 : i1
        %splat_35 = tensor.splat %cst_6 : tensor<4xf32>
        %297 = math.ipowi %21, %21 : tensor<i1>
        %298 = vector.maskedload %106[%c2], %166, %214 : memref<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %299 = arith.divsi %c1672_i16, %139 : i16
        %300 = arith.subi %104, %c7704_i16 : i16
        %301 = arith.maxf %48, %48 : f16
        %302 = math.cos %4 : tensor<6x9xf32>
        %303 = vector.flat_transpose %213 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        scf.yield %67 : memref<4xf32>
      }
      case 2 {
        %inserted_35 = tensor.insert %c1672_i16 into %11[%c0] : tensor<4xi16>
        %289 = arith.shrui %false_34, %true : i1
        %290 = math.tan %cst_2 : f16
        %291 = vector.load %alloc_21[%c5, %c3] : memref<6x9xi64>, vector<9x6xi64>
        %292 = math.atan2 %7, %12 : tensor<6x9xf32>
        %293 = math.powf %cst_3, %cst_5 : f16
        %294 = math.exp %cst_3 : f16
        %295 = affine.max affine_map<(d0, d1, d2) -> (d1 - d0, d0, d1 - d0)>(%c7, %c5, %53)
        %296 = math.ipowi %14, %14 : tensor<6x9xi1>
        vector.print %56 : vector<6x9xi16>
        %297 = math.copysign %7, %7 : tensor<6x9xf32>
        %cast_36 = tensor.cast %14 : tensor<6x9xi1> to tensor<?x?xi1>
        %extracted_37 = tensor.extract %22[] : tensor<i1>
        %298 = arith.shli %false, %false_34 : i1
        %299 = arith.divf %48, %cst : f16
        %300 = math.fpowi %192, %c1756635832_i32 : f16, i32
        scf.yield %67 : memref<4xf32>
      }
      case 3 {
        %289 = vector.create_mask %225, %c3 : vector<6x9xi1>
        %290 = math.exp %3 : tensor<4xf32>
        %291 = memref.realloc %alloc_15 : memref<4xi32> to memref<4xi32>
        %splat_35 = tensor.splat %48 : tensor<6x9xf16>
        %292 = arith.divui %c1367977502_i32, %extracted : i32
        %293 = vector.extract %56[4] : vector<6x9xi16>
        %294 = math.exp %7 : tensor<6x9xf32>
        memref.assume_alignment %alloc_17, 16 : memref<9x6xi1>
        %295 = vector.matrix_multiply %213, %113 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xf32>, vector<3xf32>) -> vector<3xf32>
        memref.tensor_store %1, %alloc_17 : memref<9x6xi1>
        %true_36 = index.bool.constant true
        %expanded_37 = tensor.expand_shape %collapsed [[0, 1]] : tensor<54xf16> into tensor<54x1xf16>
        %296 = math.tanh %192 : f16
        %297 = math.atan %collapsed : tensor<54xf16>
        %298 = math.exp %cst_5 : f16
        %299 = arith.maxf %cst_2, %192 : f16
        scf.yield %67 : memref<4xf32>
      }
      case 4 {
        %collapsed_35 = tensor.collapse_shape %2 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %289 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
        %290 = vector.outerproduct %113, %167, %289 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
        %291 = arith.divf %cst_0, %cst_4 : f32
        %292 = math.sqrt %12 : tensor<6x9xf32>
        %alloc_36 = memref.alloc() : memref<6x9xi16>
        memref.copy %alloc_12, %alloc_36 : memref<6x9xi16> to memref<6x9xi16>
        memref.assume_alignment %alloc_9, 2 : memref<4xi1>
        %293 = vector.broadcast %extracted : i32 to vector<i32>
        %294 = vector.transfer_write %293, %5[%c1] : vector<i32>, tensor<4xi32>
        %295 = vector.broadcast %cst_4 : f32 to vector<f32>
        %296 = vector.transfer_write %295, %splat[%103, %c6] : vector<f32>, tensor<6x9xf32>
        %297 = index.castu %70 : index to i32
        %298 = bufferization.to_memref %6 : memref<9x6xi32>
        %299 = math.atan %cst_0 : f32
        %300 = vector.broadcast %true_28 : i1 to vector<9x9xi1>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %190, %190, %300 : vector<6x9xi1>, vector<6x9xi1> into vector<9x9xi1>
        %302 = math.copysign %13, %13 : tensor<6x9xf16>
        %303 = vector.create_mask %c13, %c14 : vector<6x9xi1>
        %alloca_37 = memref.alloca() : memref<6x9xi32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %113, %115, %cst_24 : vector<3xf32>, vector<3xf32> into f32
        scf.yield %67 : memref<4xf32>
      }
      default {
        %289 = vector.transpose %111, [] : vector<i32> to vector<i32>
        %290 = index.castu %false_34 : i1 to index
        %291 = vector.broadcast %cst_4 : f32 to vector<6x9xf32>
        %292 = vector.fma %291, %291, %291 : vector<6x9xf32>
        %inserted_35 = tensor.insert %false_34 into %1[%c5, %c5] : tensor<9x6xi1>
        %293 = arith.negf %cst_1 : f32
        %294 = math.absi %0 : tensor<6x9xi1>
        %295 = math.round %cst_4 : f32
        %296 = index.maxu %c2, %53
        %297 = affine.load %32[%c5, %c2] : memref<6x9xi64>
        bufferization.dealloc_tensor %8 : tensor<9x6xi64>
        %298 = math.sqrt %cst_2 : f16
        %299 = math.round %18 : tensor<9x6xf32>
        %300 = bufferization.to_tensor %alloc_13 : memref<6x9xi64>
        %301 = arith.divf %cst_6, %cst_1 : f32
        %302 = math.exp2 %13 : tensor<6x9xf16>
        %303 = math.cttz %11 : tensor<4xi16>
        scf.yield %67 : memref<4xf32>
      }
      %278 = arith.ceildivsi %false, %false_34 : i1
      %279 = tensor.empty(%163) : tensor<?x9xf32>
      %280 = vector.create_mask %101, %172 : vector<9x6xi1>
      %281 = vector.splat %c14586_i16 : vector<6x9xi16>
      %282 = math.sqrt %2 : tensor<6x9xf32>
      %283 = vector.transpose %194, [0] : vector<9xf32> to vector<9xf32>
      %284 = bufferization.clone %alloc_22 : memref<9xi16> to memref<9xi16>
      %285 = index.floordivs %c0, %165
      %286 = vector.transpose %20, [0] : vector<3xf16> to vector<3xf16>
      %287 = arith.shrui %false, %false_34 : i1
      %288 = vector.matrix_multiply %113, %115 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
    }
    %228 = index.castu %true : i1 to index
    %229 = arith.addi %139, %c7704_i16 : i16
    %230 = vector.flat_transpose %109 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
    %231 = affine.min affine_map<(d0, d1, d2) -> ((d0 ceildiv 64) * 64, -d1 - 30, d1)>(%c11, %c0, %c0)
    %232 = vector.reduction <maxf>, %115 : vector<3xf32> into f32
    %233 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0, (-d0) floordiv 32)>(%c10, %69, %c7, %c2)
    %234 = math.copysign %cst_3, %cst_2 : f16
    %235 = arith.divsi %true_28, %true_28 : i1
    %236 = index.ceildivu %c5, %c0
    %237 = arith.maxui %c1756635832_i32, %c1367977502_i32 : i32
    %238 = arith.maxf %cst_2, %100 : f16
    %239 = bufferization.to_memref %25 : memref<9x6xi16>
    %240 = vector.extract_strided_slice %102 {offsets = [3], sizes = [4], strides = [1]} : vector<9xi16> to vector<4xi16>
    %splat_29 = tensor.splat %cst_6 : tensor<6x9xf32>
    %241 = arith.remf %48, %cst_2 : f16
    %242 = arith.subi %104, %c7704_i16 : i16
    %243 = arith.divsi %34, %true_26 : i1
    %244 = math.atan2 %7, %12 : tensor<6x9xf32>
    %false_30 = index.bool.constant false
    %245 = math.absf %splat_29 : tensor<6x9xf32>
    %246 = arith.remui %87, %c7704_i16 : i16
    %247 = math.floor %13 : tensor<6x9xf16>
    %false_31 = index.bool.constant false
    %248 = index.divs %165, %c10
    %249 = arith.divsi %87, %c14586_i16 : i16
    %250 = affine.min affine_map<(d0, d1, d2) -> (d2 + d2 - d1)>(%155, %248, %53)
    %251 = arith.ceildivsi %false_30, %false_31 : i1
    %252 = math.round %cst_6 : f32
    %253 = arith.ori %true_28, %false_30 : i1
    %254 = index.sizeof
    %255 = math.copysign %2, %2 : tensor<6x9xf32>
    affine.store %cst_6, %alloc_16[%c1, %c9] : memref<6x9xf32>
    %256 = math.exp2 %cst_6 : f32
    %257 = scf.while (%arg0 = %alloc_16) : (memref<6x9xf32>) -> memref<6x9xf32> {
      %275 = arith.divsi %c1641654864_i64, %c736051292_i64 : i64
      %276 = vector.broadcast %cst_6 : f32 to vector<3x3xf32>
      %277 = vector.outerproduct %115, %167, %276 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
      %278 = math.fpowi %cst_0, %c1367977502_i32 : f32, i32
      %279 = arith.maxf %cst_6, %cst_24 : f32
      affine.store %c1756635832_i32, %203[%c10] : memref<4xi32>
      scf.if %true_26 {
        affine.store %c7704_i16, %alloc_22[%c2] : memref<9xi16>
        %281 = arith.divsi %c1367977502_i32, %c1756635832_i32 : i32
        %282 = bufferization.to_memref %7 : memref<6x9xf32>
        %283 = math.copysign %3, %3 : tensor<4xf32>
        %false_34 = index.bool.constant false
        %284 = math.log10 %cst_0 : f32
        %285 = math.tan %3 : tensor<4xf32>
        %286 = arith.ori %c1641654864_i64, %c736051292_i64 : i64
      }
      %280 = math.exp2 %cst_1 : f32
      %extracted = tensor.extract %11[%c1] : tensor<4xi16>
      scf.condition(%true_28) %arg0 : memref<6x9xf32>
    } do {
    ^bb0(%arg0: memref<6x9xf32>):
      %275 = vector.broadcast %cst_1 : f32 to vector<6x9xf32>
      %276 = vector.fma %275, %275, %275 : vector<6x9xf32>
      %277 = vector.create_mask %228, %53 : vector<9x6xi1>
      %278 = vector.transpose %275, [0, 1] : vector<6x9xf32> to vector<6x9xf32>
      %279 = index.floordivs %c7, %24
      %280 = arith.divui %104, %c7704_i16 : i16
      %281 = vector.create_mask %103 : vector<4xi1>
      %splat_34 = tensor.splat %cst_1 : tensor<6x9xf32>
      %282 = arith.minsi %false_30, %true : i1
      %283 = memref.atomic_rmw mulf %192, %alloc_11[%c1, %c1] : (f16, memref<9x6xf16>) -> f16
      %284 = index.ceildivu %101, %c10
      %285 = vector.create_mask %c9, %254 : vector<6x9xi1>
      %286 = affine.apply affine_map<(d0, d1) -> (-(d1 ceildiv 128) - 4)>(%c12, %c5)
      %287 = vector.create_mask %165, %163 : vector<9x6xi1>
      %288 = math.powf %4, %4 : tensor<6x9xf32>
      %289 = index.divu %c5, %70
      %290 = arith.andi %false, %34 : i1
      scf.yield %alloc_16 : memref<6x9xf32>
    }
    %258 = math.ipowi %c1641654864_i64, %c736051292_i64 : i64
    %259 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
    %260 = vector.outerproduct %113, %167, %259 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
    %261 = math.tan %cst_4 : f32
    %262 = math.copysign %cst_3, %cst_3 : f16
    memref.assume_alignment %alloc_14, 8 : memref<4xi32>
    %263 = math.sqrt %cst_0 : f32
    %264 = affine.max affine_map<(d0) -> ((((-d0) ceildiv 16 + 2) ceildiv 16) mod 16)>(%c9)
    %265 = math.log10 %cst_6 : f32
    %266 = vector.transpose %111, [] : vector<i32> to vector<i32>
    %267 = math.exp %18 : tensor<9x6xf32>
    bufferization.dealloc_tensor %5 : tensor<4xi32>
    %268 = index.casts %c12 : index to i32
    %rank = tensor.rank %splat : tensor<6x9xf32>
    %269 = arith.maxf %cst_0, %cst_6 : f32
    %270 = math.roundeven %cst_2 : f16
    %271 = tensor.empty() : tensor<6x9xi1>
    %272 = linalg.copy ins(%14 : tensor<6x9xi1>) outs(%271 : tensor<6x9xi1>) -> tensor<6x9xi1>
    %273 = tensor.empty() : tensor<6x9xi32>
    %transposed_32 = linalg.transpose ins(%6 : tensor<9x6xi32>) outs(%273 : tensor<6x9xi32>) permutation = [1, 0] 
    %alloc_33 = memref.alloc() : memref<9xi1>
    linalg.reduce ins(%alloc_17 : memref<9x6xi1>) outs(%alloc_33 : memref<9xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %275 = arith.minf %cst, %cst_5 : f16
        %276 = affine.max affine_map<(d0, d1) -> (-d1)>(%211, %49)
        %277 = arith.addi %c1641654864_i64, %c1641654864_i64 : i64
        %278 = math.ctpop %false : i1
        %279 = index.ceildivu %53, %rank
        %280 = vector.broadcast %cst_1 : f32 to vector<3x3xf32>
        %281 = vector.outerproduct %115, %115, %280 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
        %282 = vector.broadcast %true : i1 to vector<9xi1>
        %dest, %accumulated_value = vector.scan <mul>, %57, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<6x9xi1>, vector<9xi1>
        %283 = arith.ceildivsi %true, %in : i1
        %false_34 = arith.constant false
        linalg.yield %false_34 : i1
      }
    scf.parallel (%arg0) = (%53) to (%c13) step (%c15) {
      %275 = index.mul %c6, %248
      %276 = math.log1p %12 : tensor<6x9xf32>
      %extracted = tensor.extract %271[%c5, %c6] : tensor<6x9xi1>
      %277 = arith.remf %cst_4, %cst_6 : f32
      %278 = math.tanh %12 : tensor<6x9xf32>
      %279 = arith.minsi %87, %87 : i16
      %280 = arith.shrsi %c14586_i16, %104 : i16
      %281 = index.mul %c1, %250
      %282 = vector.broadcast %87 : i16 to vector<6xi16>
      %283 = vector.multi_reduction <or>, %56, %282 [1] : vector<6x9xi16> to vector<6xi16>
      %284 = index.castu %70 : index to i32
      %285 = vector.splat %c14 : vector<6x9xindex>
      %286 = math.ipowi %22, %21 : tensor<i1>
      %collapsed_34 = tensor.collapse_shape %107 [[0, 1]] : tensor<6x9xi32> into tensor<54xi32>
      memref.assume_alignment %179, 8 : memref<4xi1>
      %287 = math.rsqrt %cst_2 : f16
      %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %114, %114, %true : vector<3xi1>, vector<3xi1> into i1
      scf.yield
    }
    %274 = affine.vector_load %alloc_13[%236, %c15] : memref<6x9xi64>, vector<9xi64>
    affine.vector_store %114, %179[%231] : memref<4xi1>, vector<3xi1>
    vector.print %20 : vector<3xf16>
    vector.print %26 : vector<1xf16>
    vector.print %56 : vector<6x9xi16>
    vector.print %57 : vector<6x9xi1>
    vector.print %58 : vector<6x9xi32>
    vector.print %59 : vector<6x9xi16>
    vector.print %85 : vector<6x9xi16>
    vector.print %102 : vector<9xi16>
    vector.print %109 : vector<3xf16>
    vector.print %111 : vector<i32>
    vector.print %113 : vector<3xf32>
    vector.print %114 : vector<3xi1>
    vector.print %115 : vector<3xf32>
    vector.print %117 : vector<9x6xi1>
    vector.print %121 : vector<6x9xi1>
    vector.print %129 : vector<6x9xi1>
    vector.print %166 : vector<4xi1>
    vector.print %167 : vector<3xf32>
    vector.print %175 : vector<6xi64>
    vector.print %190 : vector<6x9xi1>
    vector.print %194 : vector<9xf32>
    vector.print %206 : vector<6xi64>
    vector.print %213 : vector<1xf32>
    vector.print %214 : vector<4xi32>
    vector.print %223 : vector<i32>
    vector.print %230 : vector<3xf16>
    vector.print %240 : vector<4xi16>
    vector.print %274 : vector<9xi64>
    vector.print %c1756635832_i32 : i32
    vector.print %c736051292_i64 : i64
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %true : i1
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c1641654864_i64 : i64
    vector.print %c1367977502_i32 : i32
    vector.print %cst_5 : f16
    vector.print %c14586_i16 : i16
    vector.print %c1672_i16 : i16
    vector.print %cst_6 : f32
    vector.print %c7704_i16 : i16
    vector.print %false : i1
    vector.print %34 : i1
    vector.print %48 : f16
    vector.print %87 : i16
    vector.print %cst_24 : f32
    vector.print %100 : f16
    vector.print %104 : i16
    vector.print %139 : i16
    vector.print %true_26 : i1
    vector.print %192 : f16
    vector.print %true_28 : i1
    vector.print %false_30 : i1
    vector.print %false_31 : i1
    return %271 : tensor<6x9xi1>
  }
}
