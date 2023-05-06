module {
  func.func @func1(%arg0: index) {
    %false = arith.constant false
    %c291171020_i32 = arith.constant 291171020 : i32
    %cst = arith.constant 1.971200e+04 : f16
    %c814819294_i32 = arith.constant 814819294 : i32
    %c1163687881_i32 = arith.constant 1163687881 : i32
    %cst_0 = arith.constant 3.740800e+04 : f16
    %true = arith.constant true
    %c27006_i16 = arith.constant 27006 : i16
    %cst_1 = arith.constant 1.85512346E+9 : f32
    %cst_2 = arith.constant 0x4D5B84B7 : f32
    %cst_3 = arith.constant 1.90355136E+9 : f32
    %c1371185289_i32 = arith.constant 1371185289 : i32
    %c28906_i16 = arith.constant 28906 : i16
    %cst_4 = arith.constant 2.284000e+03 : f16
    %cst_5 = arith.constant 4.467200e+04 : f16
    %false_6 = arith.constant false
    %0 = tensor.empty() : tensor<8x6xi32>
    %1 = tensor.empty() : tensor<8x6xi1>
    %2 = tensor.empty() : tensor<7x7xi64>
    %3 = tensor.empty() : tensor<8x6xi16>
    %4 = tensor.empty() : tensor<6x7x6xi32>
    %5 = tensor.empty() : tensor<8x6xi32>
    %6 = tensor.empty() : tensor<7x7xf32>
    %7 = tensor.empty() : tensor<7x7xi64>
    %8 = tensor.empty() : tensor<7xf16>
    %9 = tensor.empty() : tensor<7xi32>
    %10 = tensor.empty() : tensor<7xf32>
    %11 = tensor.empty() : tensor<8x6xi16>
    %12 = tensor.empty() : tensor<8x6xi16>
    %13 = tensor.empty() : tensor<7x7xf32>
    %14 = tensor.empty() : tensor<8x6xf16>
    %15 = tensor.empty() : tensor<8x6xf16>
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
    %alloc = memref.alloc() : memref<7x7xf32>
    %alloc_7 = memref.alloc() : memref<6x7x6xi16>
    %alloc_8 = memref.alloc() : memref<7x7xi32>
    %alloc_9 = memref.alloc() : memref<7x7xi1>
    %alloc_10 = memref.alloc() : memref<7xf16>
    %alloc_11 = memref.alloc() : memref<7xi64>
    %alloc_12 = memref.alloc() : memref<8x6xi32>
    %alloc_13 = memref.alloc() : memref<7x7xf32>
    %alloc_14 = memref.alloc() : memref<7xi16>
    %alloc_15 = memref.alloc() : memref<7x7xi16>
    %alloc_16 = memref.alloc() : memref<8x6xi1>
    %alloc_17 = memref.alloc() : memref<7x7xi16>
    %alloc_18 = memref.alloc() : memref<6x7x6xf16>
    %alloc_19 = memref.alloc() : memref<6x7x6xi64>
    %alloc_20 = memref.alloc() : memref<6x7x6xi16>
    %alloc_21 = memref.alloc() : memref<8x6xf32>
    %16 = tensor.empty() : tensor<8x6xi1>
    %17 = linalg.copy ins(%1 : tensor<8x6xi1>) outs(%16 : tensor<8x6xi1>) -> tensor<8x6xi1>
    %18 = tensor.empty() : tensor<6x6x7xi32>
    %transposed = linalg.transpose ins(%4 : tensor<6x7x6xi32>) outs(%18 : tensor<6x6x7xi32>) permutation = [2, 0, 1] 
    %alloc_22 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_17 : memref<7x7xi16>) outs(%alloc_22 : memref<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %249 = math.log1p %cst : f16
        %250 = index.floordivs %c0, %c3
        %251 = arith.floordivsi %c28906_i16, %in : i16
        %alloc_52 = memref.alloc() : memref<6x7x6xi1>
        %252 = vector.broadcast %true : i1 to vector<8x6xi1>
        %253 = vector.broadcast %c291171020_i32 : i32 to vector<8x6xi32>
        %254 = vector.gather %alloc_52[%c10, %c1, %c1] [%253], %252, %252 : memref<6x7x6xi1>, vector<8x6xi32>, vector<8x6xi1>, vector<8x6xi1> into vector<8x6xi1>
        %255 = arith.minsi %in, %c27006_i16 : i16
        %256 = index.ceildivs %c5, %c13
        %collapsed_53 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %257 = vector.splat %cst_1 : vector<6x7x6xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1) = (%c7) to (%c14) step (%c11) {
      %249 = math.ipowi %0, %5 : tensor<8x6xi32>
      %250 = math.cttz %12 : tensor<8x6xi16>
      %alloc_52 = memref.alloc() : memref<8x6xi16>
      memref.tensor_store %12, %alloc_52 : memref<8x6xi16>
      %251 = arith.divui %true, %false : i1
      %splat_53 = tensor.splat %c1371185289_i32 : tensor<6x7x6xi32>
      %252 = math.expm1 %cst : f16
      %253 = vector.broadcast %c291171020_i32 : i32 to vector<7xi32>
      %254 = arith.negf %cst_5 : f16
      %255 = tensor.empty() : tensor<7xi32>
      %alloc_54 = memref.alloc() : memref<8x6xi32>
      %256 = vector.load %alloc_7[%c5, %c4, %c2] : memref<6x7x6xi16>, vector<7xi16>
      %257 = tensor.empty() : tensor<8x6xi32>
      %mapped_55 = linalg.map ins(%alloc_12, %0 : memref<8x6xi32>, tensor<8x6xi32>) outs(%257 : tensor<8x6xi32>)
        (%in: i32, %in_56: i32) {
          %263 = index.mul %c11, %c5
          %264 = arith.divsi %false, %false : i1
          %265 = math.powf %cst_2, %cst_3 : f32
          %266 = vector.extract_strided_slice %256 {offsets = [3], sizes = [4], strides = [1]} : vector<7xi16> to vector<4xi16>
          %267 = math.log10 %cst_1 : f32
          %268 = vector.broadcast %c2 : index to vector<8xindex>
          %269 = vector.broadcast %false_6 : i1 to vector<8xi1>
          %270 = vector.broadcast %cst_5 : f16 to vector<8xf16>
          vector.scatter %alloc_18[%c2, %c3, %c4] [%268], %269, %270 : memref<6x7x6xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
          %271 = bufferization.clone %alloc_17 : memref<7x7xi16> to memref<7x7xi16>
          %272 = index.casts %c7 : index to i32
          %273 = vector.load %271[%c4, %c6] : memref<7x7xi16>, vector<6x7x6xi16>
          %splat_57 = tensor.splat %c1163687881_i32 : tensor<6x7x6xi32>
          %274 = arith.minui %c27006_i16, %c28906_i16 : i16
          %rank_58 = tensor.rank %11 : tensor<8x6xi16>
          %275 = vector.load %alloc_18[%c0, %c0, %c5] : memref<6x7x6xf16>, vector<7xf16>
          %276 = index.mul %c7, %263
          %277 = math.tanh %15 : tensor<8x6xf16>
          memref.assume_alignment %alloc_19, 8 : memref<6x7x6xi64>
          %278 = index.maxs %c0, %c10
          %279 = math.round %8 : tensor<7xf16>
          %280 = arith.remf %cst_1, %cst_3 : f32
          %281 = index.sub %c9, %c3
          %282 = arith.shrui %c27006_i16, %c28906_i16 : i16
          %283 = arith.maxui %false, %true : i1
          %284 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 - d3) * 8 + d3 + d3 - 1)>(%c11, %c13, %c11, %281)
          %285 = arith.minf %cst_5, %cst : f16
          %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %275, %275, %cst_0 : vector<7xf16>, vector<7xf16> into f16
          %287 = math.rsqrt %14 : tensor<8x6xf16>
          %288 = math.fma %8, %8, %8 : tensor<7xf16>
          %289 = math.floor %cst_1 : f32
          %290 = arith.maxsi %in, %in : i32
          memref.store %c28906_i16, %alloc_17[%c4, %c4] : memref<7x7xi16>
          %291 = arith.mulf %cst_3, %cst_1 : f32
          %292 = arith.subi %c1371185289_i32, %c814819294_i32 : i32
          %c1_i32_59 = arith.constant 1 : i32
          linalg.yield %c1_i32_59 : i32
        }
      %258 = vector.broadcast %cst_1 : f32 to vector<8x6xf32>
      %259 = vector.fma %258, %258, %258 : vector<8x6xf32>
      %260 = index.ceildivs %c0, %c15
      %261 = vector.reduction <minsi>, %253 : vector<7xi32> into i32
      %262 = index.casts %true : i1 to index
      scf.yield
    }
    %19 = affine.vector_load %alloc_12[%c13, %c11] : memref<8x6xi32>, vector<8xi32>
    affine.vector_store %19, %alloc_8[%c11, %c9] : memref<7x7xi32>, vector<8xi32>
    %alloc_23 = memref.alloc() : memref<7xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%9, %alloc_23 : tensor<7xi32>, memref<7xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = arith.maxsi %c27006_i16, %c27006_i16 : i16
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %23 = vector.transfer_read %alloc_8[%c0, %c11], %c0_i32 : memref<7x7xi32>, vector<i32>
    %24 = arith.cmpf oge, %cst_3, %cst_1 : f32
    %25 = arith.xori %c1_i32, %c1371185289_i32 : i32
    %26 = index.mul %c1, %c14
    %27 = math.log10 %14 : tensor<8x6xf16>
    memref.store %false, %alloc_9[%c4, %c2] : memref<7x7xi1>
    %28 = bufferization.clone %alloc_12 : memref<8x6xi32> to memref<8x6xi32>
    %29 = vector.extract_strided_slice %19 {offsets = [4], sizes = [3], strides = [1]} : vector<8xi32> to vector<3xi32>
    %30 = vector.create_mask %c9 : vector<7xi1>
    %31 = arith.remf %cst_0, %cst : f16
    %32 = arith.ori %c1_i32, %c1371185289_i32 : i32
    %33 = math.ipowi %12, %11 : tensor<8x6xi16>
    memref.store %c1371185289_i32, %alloc_12[%c4, %c4] : memref<8x6xi32>
    %cast = tensor.cast %5 : tensor<8x6xi32> to tensor<?x?xi32>
    %34 = vector.broadcast %c291171020_i32 : i32 to vector<7x6x4xi32>
    %35 = vector.broadcast %c291171020_i32 : i32 to vector<6x4xi32>
    %dest, %accumulated_value = vector.scan <minsi>, %34, %35 {inclusive = true, reduction_dim = 0 : i64} : vector<7x6x4xi32>, vector<6x4xi32>
    %36 = math.log1p %14 : tensor<8x6xf16>
    %37 = arith.minsi %c1163687881_i32, %c1_i32 : i32
    %generated = tensor.generate %c1 {
    ^bb0(%arg1: index):
      %249 = math.expm1 %15 : tensor<8x6xf16>
      affine.store %c814819294_i32, %alloc_8[%c14, %c6] : memref<7x7xi32>
      %250 = math.ctpop %c1163687881_i32 : i32
      memref.store %true, %alloc_9[%c0, %c4] : memref<7x7xi1>
      %c1_i64_52 = arith.constant 1 : i64
      tensor.yield %c1_i64_52 : i64
    } : tensor<?xi64>
    %38 = math.log10 %cst_1 : f32
    scf.if %false_6 {
      %249 = index.add %26, %c5
      %alloc_52 = memref.alloc() : memref<7x6xi32>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<7x6xi32>) outs(%transposed : tensor<6x6x7xi32>) {
      ^bb0(%in: i32, %out: i32):
        %259 = math.log1p %cst : f16
        %260 = vector.extract_strided_slice %29 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
        %261 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 127)>(%249, %c14, %c4)
        %262 = arith.shrui %c1_i32, %out : i32
        %263 = arith.minui %in, %c814819294_i32 : i32
        %alloca_53 = memref.alloca() : memref<8x6xi32>
        %264 = vector.reduction <xor>, %30 : vector<7xi1> into i1
        %265 = math.copysign %8, %8 : tensor<7xf16>
        %266 = math.log2 %8 : tensor<7xf16>
        %267 = vector.extract_strided_slice %29 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
        %268 = arith.shrsi %c291171020_i32, %c1163687881_i32 : i32
        %true_54 = arith.constant true
        %from_elements_55 = tensor.from_elements %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16 : tensor<8x6xi16>
        %269 = vector.extract_strided_slice %260 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
        %270 = math.fpowi %15, %0 : tensor<8x6xf16>, tensor<8x6xi32>
        %271 = bufferization.to_tensor %alloc_11 : memref<7xi64>
        %272 = vector.extract_strided_slice %29 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
        %273 = index.divu %c1, %c15
        %274 = arith.divf %cst_3, %cst_1 : f32
        %275 = vector.flat_transpose %267 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %276 = math.cttz %1 : tensor<8x6xi1>
        %277 = bufferization.to_tensor %alloc_9 : memref<7x7xi1>
        memref.tensor_store %5, %28 : memref<8x6xi32>
        %278 = vector.reduction <add>, %30 : vector<7xi1> into i1
        %279 = affine.apply affine_map<(d0, d1) -> (d0 - d1 + d1 ceildiv 16)>(%26, %c2)
        %rank_56 = tensor.rank %9 : tensor<7xi32>
        %280 = math.log1p %13 : tensor<7x7xf32>
        %281 = math.round %15 : tensor<8x6xf16>
        %cast_57 = tensor.cast %7 : tensor<7x7xi64> to tensor<?x?xi64>
        %282 = index.divu %c8, %c3
        %283 = arith.addi %c28906_i16, %c27006_i16 : i16
        memref.assume_alignment %alloc_12, 1 : memref<8x6xi32>
        linalg.yield %c1163687881_i32 : i32
      } -> tensor<6x6x7xi32>
      %251 = index.casts %c10 : index to i32
      memref.alloca_scope  {
        %259 = math.atan %10 : tensor<7xf32>
        %260 = arith.maxui %c27006_i16, %c28906_i16 : i16
        %261 = vector.load %alloc_11[%c6] : memref<7xi64>, vector<8x6xi64>
        %262 = vector.extract %19[5] : vector<8xi32>
        %263 = bufferization.clone %alloc_21 : memref<8x6xf32> to memref<8x6xf32>
        %264 = vector.bitcast %30 : vector<7xi1> to vector<7xi1>
        %265 = vector.flat_transpose %264 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %266 = index.casts %c13 : index to i32
        %alloc_53 = memref.alloc() : memref<8x6xf16>
        memref.tensor_store %14, %alloc_53 : memref<8x6xf16>
        %267 = tensor.empty() : tensor<6x7x6xi16>
        %268 = vector.broadcast %c27006_i16 : i16 to vector<6x7x6xi16>
        %269 = vector.broadcast %false : i1 to vector<6x7x6xi1>
        %270 = vector.broadcast %c1_i32 : i32 to vector<6x7x6xi32>
        %271 = vector.gather %267[%c3, %c9, %26] [%270], %269, %268 : tensor<6x7x6xi16>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi16> into vector<6x7x6xi16>
        %272 = arith.shli %true, %true : i1
        %273 = vector.transpose %269, [1, 2, 0] : vector<6x7x6xi1> to vector<7x6x6xi1>
        %splat_54 = tensor.splat %cst_4 : tensor<8x6xf16>
        %274 = arith.maxsi %false, %false : i1
        %275 = vector.broadcast %c27006_i16 : i16 to vector<7x6x7x6xi16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %268, %268, %275 : vector<6x7x6xi16>, vector<6x7x6xi16> into vector<7x6x7x6xi16>
        %277 = vector.create_mask %c13, %249 : vector<7x7xi1>
        %splat_55 = tensor.splat %cst_3 : tensor<6x7x6xf32>
        %278 = index.divs %c4, %c13
        %279 = vector.broadcast %249 : index to vector<6xindex>
        %280 = vector.broadcast %false_6 : i1 to vector<6xi1>
        %281 = vector.broadcast %c1163687881_i32 : i32 to vector<6xi32>
        vector.scatter %alloc_23[%c6] [%279], %280, %281 : memref<7xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %282 = vector.broadcast %true : i1 to vector<4xi1>
        %283 = vector.transfer_write %282, %16[%c12, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, tensor<8x6xi1>
        %284 = index.casts %false_6 : i1 to index
        %285 = arith.remf %cst_0, %cst : f16
        %286 = vector.broadcast %cst_5 : f16 to vector<8x6xf16>
        %287 = vector.broadcast %false_6 : i1 to vector<8x6xi1>
        %288 = vector.broadcast %c1163687881_i32 : i32 to vector<8x6xi32>
        %289 = vector.gather %15[%c8, %c8] [%288], %287, %286 : tensor<8x6xf16>, vector<8x6xi32>, vector<8x6xi1>, vector<8x6xf16> into vector<8x6xf16>
        %290 = index.ceildivs %c8, %c13
        %291 = index.sub %c10, %278
        %292 = vector.bitcast %268 : vector<6x7x6xi16> to vector<6x7x6xi16>
        %from_elements_56 = tensor.from_elements %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1 : tensor<7xf32>
        %293 = arith.ceildivsi %c28906_i16, %c27006_i16 : i16
        %294 = arith.minsi %c1371185289_i32, %c1_i32 : i32
        %295 = vector.broadcast %c10 : index to vector<6xindex>
        %296 = vector.broadcast %true : i1 to vector<6xi1>
        vector.scatter %alloc_9[%c6, %c5] [%295], %296, %296 : memref<7x7xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %297 = arith.addi %false_6, %false_6 : i1
        %298 = math.log1p %14 : tensor<8x6xf16>
      }
      %252 = arith.andi %false_6, %false : i1
      %253 = arith.divf %cst_4, %cst_5 : f16
      %254 = math.log10 %13 : tensor<7x7xf32>
      %255 = vector.broadcast %cst_1 : f32 to vector<8x6xf32>
      %256 = vector.broadcast %true : i1 to vector<8x6xi1>
      %257 = vector.broadcast %c1163687881_i32 : i32 to vector<8x6xi32>
      %258 = vector.gather %alloc[%c3, %c10] [%257], %256, %255 : memref<7x7xf32>, vector<8x6xi32>, vector<8x6xi1>, vector<8x6xf32> into vector<8x6xf32>
    } else {
      memref.store %cst_2, %alloc_21[%c7, %c5] : memref<8x6xf32>
      %249 = tensor.empty() : tensor<7x7xi64>
      %250 = linalg.matmul ins(%2, %2 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%249 : tensor<7x7xi64>) -> tensor<7x7xi64>
      %251 = index.divs %c4, %c2
      %252 = math.absi %false : i1
      %rank_52 = tensor.rank %7 : tensor<7x7xi64>
      %253 = vector.multi_reduction <xor>, %29, %29 [] : vector<3xi32> to vector<3xi32>
      %254 = vector.insert %false_6, %30 [6] : i1 into vector<7xi1>
      %255 = math.round %6 : tensor<7x7xf32>
    }
    %39 = affine.for %arg1 = 0 to 119 iter_args(%arg2 = %11) -> (tensor<8x6xi16>) {
      affine.yield %arg2 : tensor<8x6xi16>
    }
    %40 = math.fma %6, %13, %13 : tensor<7x7xf32>
    %41 = bufferization.clone %alloc_10 : memref<7xf16> to memref<7xf16>
    %42 = math.absf %cst_3 : f32
    memref.store %cst_0, %41[%c4] : memref<7xf16>
    %43 = math.absf %14 : tensor<8x6xf16>
    %44 = index.add %c6, %c7
    %45 = tensor.empty() : tensor<6xi32>
    %46 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%45 : tensor<6xi32>) outs(%18 : tensor<6x6x7xi32>) {
    ^bb0(%in: i32, %out: i32):
      %249 = bufferization.to_memref %13 : memref<7x7xf32>
      %alloc_52 = memref.alloc() : memref<6x7x6xi32>
      %250 = vector.broadcast %c291171020_i32 : i32 to vector<6x7x6xi32>
      %251 = vector.broadcast %false : i1 to vector<6x7x6xi1>
      %252 = vector.gather %alloc_52[%c13, %c7, %c0] [%250], %251, %250 : memref<6x7x6xi32>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi32> into vector<6x7x6xi32>
      %253 = arith.minf %cst_5, %cst_4 : f16
      %254 = vector.flat_transpose %30 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %255 = vector.load %alloc_23[%c1] : memref<7xi32>, vector<7xi32>
      %alloc_53 = memref.alloc() : memref<6x7xi32>
      %alloc_54 = memref.alloc() : memref<7x6xi32>
      %alloc_55 = memref.alloc() : memref<6x6xi32>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %alloc_54, %alloc_55 : memref<6x7xi32>, memref<7x6xi32>, memref<6x6xi32>) outs(%4 : tensor<6x7x6xi32>) {
      ^bb0(%in_60: i32, %in_61: i32, %in_62: i32, %out_63: i32):
        %281 = arith.xori %in_60, %in_62 : i32
        %282 = arith.minf %cst_1, %cst_3 : f32
        %283 = tensor.empty() : tensor<7x7xi32>
        %284 = math.fpowi %13, %283 : tensor<7x7xf32>, tensor<7x7xi32>
        %285 = math.sqrt %14 : tensor<8x6xf16>
        %286 = vector.transpose %252, [1, 2, 0] : vector<6x7x6xi32> to vector<7x6x6xi32>
        %287 = vector.extract_strided_slice %254 {offsets = [1], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
        %288 = arith.divsi %in_60, %c291171020_i32 : i32
        %289 = math.ceil %13 : tensor<7x7xf32>
        %290 = index.mul %c14, %c13
        %291 = arith.remui %c1_i32, %in_60 : i32
        %292 = arith.maxui %c1163687881_i32, %out : i32
        %293 = arith.shli %c28906_i16, %c27006_i16 : i16
        %294 = vector.broadcast %c291171020_i32 : i32 to vector<7x6x7x6xi32>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %252, %252, %294 : vector<6x7x6xi32>, vector<6x7x6xi32> into vector<7x6x7x6xi32>
        %296 = vector.flat_transpose %287 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        memref.store %cst_5, %alloc_10[%c1] : memref<7xf16>
        %collapsed_64 = tensor.collapse_shape %14 [[0, 1]] : tensor<8x6xf16> into tensor<48xf16>
        %297 = vector.create_mask %c1, %c15 : vector<8x6xi1>
        %298 = index.maxs %c1, %c13
        %299 = vector.broadcast %c9 : index to vector<4xindex>
        %300 = vector.broadcast %true : i1 to vector<4xi1>
        %301 = vector.broadcast %cst_0 : f16 to vector<4xf16>
        vector.scatter %alloc_18[%c5, %c2, %c3] [%299], %300, %301 : memref<6x7x6xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %302 = arith.cmpi sle, %out_63, %in : i32
        %303 = arith.remf %cst_3, %cst_1 : f32
        %304 = vector.broadcast %in : i32 to vector<7x6xi32>
        %305 = vector.insert %304, %252 [0] : vector<7x6xi32> into vector<6x7x6xi32>
        %306 = index.casts %c5 : index to i32
        bufferization.dealloc_tensor %15 : tensor<8x6xf16>
        %true_65 = arith.constant true
        %307 = math.cos %15 : tensor<8x6xf16>
        %rank_66 = tensor.rank %12 : tensor<8x6xi16>
        %308 = index.maxs %c12, %c1
        %309 = arith.mulf %cst_3, %cst_1 : f32
        %310 = index.ceildivs %26, %c4
        %311 = arith.cmpf olt, %cst_0, %cst_5 : f16
        %312 = bufferization.to_tensor %alloc_19 : memref<6x7x6xi64>
        linalg.yield %c1163687881_i32 : i32
      } -> tensor<6x7x6xi32>
      %257 = affine.max affine_map<(d0) -> (0, 0, d0, d0 - 4)>(%c7)
      %258 = arith.ori %false, %false : i1
      %259 = index.add %c11, %c8
      %260 = bufferization.to_memref %generated : memref<?xi64>
      %261 = index.floordivs %26, %c2
      %262 = affine.load %alloc_22[] : memref<i16>
      %263 = math.ctpop %5 : tensor<8x6xi32>
      %264 = vector.splat %c1371185289_i32 : vector<7x7xi32>
      %false_56 = index.bool.constant false
      %265 = vector.extract_strided_slice %252 {offsets = [3, 5], sizes = [2, 1], strides = [1, 1]} : vector<6x7x6xi32> to vector<2x1x6xi32>
      %rank_57 = tensor.rank %9 : tensor<7xi32>
      %266 = vector.broadcast %c1371185289_i32 : i32 to vector<6x6xi32>
      %dest_58, %accumulated_value_59 = vector.scan <xor>, %250, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<6x7x6xi32>, vector<6x6xi32>
      %267 = arith.minui %false_56, %true : i1
      %268 = arith.remui %c1371185289_i32, %c1_i32 : i32
      %269 = vector.broadcast %false_56 : i1 to vector<6x6xi1>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %251, %30, %269 : vector<6x7x6xi1>, vector<7xi1> into vector<6x6xi1>
      %271 = arith.minsi %false_6, %false_6 : i1
      %272 = index.add %261, %c7
      %273 = arith.maxsi %false_6, %false : i1
      %274 = tensor.empty() : tensor<8x6xi1>
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 - d3) * 8 + d3 + d3 - 1)>(%c4, %c10, %261, %c6)
      %276 = arith.minsi %in, %c1371185289_i32 : i32
      %277 = index.casts %272 : index to i32
      %278 = arith.divui %false_56, %false : i1
      vector.print %254 : vector<7xi1>
      %279 = vector.load %249[%c4, %c2] : memref<7x7xf32>, vector<8x6xf32>
      %280 = arith.muli %c291171020_i32, %in : i32
      linalg.yield %c1163687881_i32 : i32
    } -> tensor<6x6x7xi32>
    %47 = vector.broadcast %c814819294_i32 : i32 to vector<6x7x6xi32>
    %48 = vector.broadcast %false : i1 to vector<6x7x6xi1>
    %49 = vector.gather %4[%c1, %c5, %c6] [%47], %48, %47 : tensor<6x7x6xi32>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi32> into vector<6x7x6xi32>
    %50 = vector.reduction <maxui>, %19 : vector<8xi32> into i32
    %51 = arith.shrui %c814819294_i32, %c1163687881_i32 : i32
    %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<8x6xf16> into tensor<48xf16>
    %52 = arith.minf %cst_4, %cst : f16
    %53 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 64)>(%c3, %c11, %c8, %c15)
    %54 = index.casts %c13 : index to i32
    %55 = vector.broadcast %false : i1 to vector<7x6xi1>
    %56 = vector.insert %55, %48 [1] : vector<7x6xi1> into vector<6x7x6xi1>
    %57 = vector.splat %cst_2 : vector<7x7xf32>
    %58 = memref.realloc %41 : memref<7xf16> to memref<6xf16>
    %59 = index.mul %44, %c13
    %60 = arith.maxsi %c1163687881_i32, %c291171020_i32 : i32
    %61 = arith.maxf %cst_1, %cst_2 : f32
    %62 = math.ctpop %5 : tensor<8x6xi32>
    %63 = vector.extract_strided_slice %48 {offsets = [0], sizes = [5], strides = [1]} : vector<6x7x6xi1> to vector<5x7x6xi1>
    %64 = memref.load %alloc_20[%c3, %c4, %c2] : memref<6x7x6xi16>
    %65 = vector.reduction <minsi>, %19 : vector<8xi32> into i32
    %66 = arith.maxui %false_6, %false : i1
    %67 = math.copysign %8, %8 : tensor<7xf16>
    %68 = arith.mulf %cst_0, %cst : f16
    %69 = math.log1p %15 : tensor<8x6xf16>
    %70 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %71 = arith.maxf %cst_4, %cst_0 : f16
    %72 = index.floordivs %c4, %c6
    %73 = arith.cmpi sge, %false, %false : i1
    %74 = math.round %cst_1 : f32
    %75 = math.log1p %6 : tensor<7x7xf32>
    %76 = bufferization.clone %alloc_16 : memref<8x6xi1> to memref<8x6xi1>
    %77 = scf.if %true -> (i32) {
      %249 = index.ceildivs %c7, %c0
      %250 = vector.extract_strided_slice %55 {offsets = [4], sizes = [3], strides = [1]} : vector<7x6xi1> to vector<3x6xi1>
      %cst_52 = arith.constant 1.000000e+00 : f16
      %251 = vector.transfer_read %alloc_10[%c11], %cst_52 : memref<7xf16>, vector<f16>
      %252 = vector.flat_transpose %30 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %253 = arith.divf %cst_0, %cst_5 : f16
      %254 = math.powf %13, %6 : tensor<7x7xf32>
      %splat_53 = tensor.splat %cst_3 : tensor<7x7xf32>
      %cst_54 = arith.constant 5.123200e+04 : f16
      scf.yield %c1163687881_i32 : i32
    } else {
      %249 = memref.realloc %alloc_14 : memref<7xi16> to memref<7xi16>
      %250 = arith.minui %c27006_i16, %c28906_i16 : i16
      %251 = memref.load %alloc_15[%c6, %c2] : memref<7x7xi16>
      %252 = arith.maxf %cst_0, %cst_5 : f16
      %253 = tensor.empty() : tensor<6x7x6xi64>
      %c0_i64 = arith.constant 0 : i64
      %254 = vector.broadcast %c0_i64 : i64 to vector<6x7x6xi64>
      %255 = vector.gather %253[%c9, %c12, %59] [%47], %48, %254 : tensor<6x7x6xi64>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi64> into vector<6x7x6xi64>
      %c286871332_i64 = arith.constant 286871332 : i64
      %256 = arith.shrsi %false, %true : i1
      %257 = index.sub %53, %c9
      scf.yield %c1_i32 : i32
    }
    %78 = arith.mulf %cst_0, %cst_4 : f16
    affine.store %false, %alloc_9[%c13, %c10] : memref<7x7xi1>
    %79 = math.ipowi %3, %11 : tensor<8x6xi16>
    %80 = arith.minui %false, %true : i1
    %81 = vector.broadcast %c1163687881_i32 : i32 to vector<6x7xi32>
    %82 = vector.multi_reduction <and>, %49, %81 [2] : vector<6x7x6xi32> to vector<6x7xi32>
    %83 = math.cttz %17 : tensor<8x6xi1>
    %from_elements = tensor.from_elements %true, %false_6, %false, %true, %true, %false_6, %true : tensor<7xi1>
    %84 = math.cttz %4 : tensor<6x7x6xi32>
    %85 = index.mul %c5, %c9
    %86 = vector.matrix_multiply %19, %29 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 3 : i32} : (vector<8xi32>, vector<3xi32>) -> vector<24xi32>
    %87 = math.log1p %14 : tensor<8x6xf16>
    %88 = vector.extract %48[2] : vector<6x7x6xi1>
    %89 = index.maxs %26, %59
    %90 = math.exp2 %6 : tensor<7x7xf32>
    %91 = arith.xori %c27006_i16, %c28906_i16 : i16
    %c1614019387_i32 = arith.constant 1614019387 : i32
    %92 = arith.mulf %cst_0, %cst_5 : f16
    memref.tensor_store %17, %alloc_16 : memref<8x6xi1>
    %93 = bufferization.clone %alloc_18 : memref<6x7x6xf16> to memref<6x7x6xf16>
    affine.store %cst_4, %93[%c15, %c0, %c4] : memref<6x7x6xf16>
    %94 = arith.addi %c28906_i16, %c28906_i16 : i16
    %95 = vector.splat %c15 : vector<6x7x6xindex>
    %96 = index.castu %c6 : index to i32
    %dest_24, %accumulated_value_25 = vector.scan <maxui>, %49, %81 {inclusive = true, reduction_dim = 2 : i64} : vector<6x7x6xi32>, vector<6x7xi32>
    %97 = vector.load %alloc_8[%c2, %c1] : memref<7x7xi32>, vector<8x6xi32>
    %98 = index.maxs %c14, %c2
    %99 = arith.addi %c1_i32, %77 : i32
    memref.alloca_scope  {
      %249 = arith.remf %cst_0, %cst : f16
      %250 = math.cos %cst_4 : f16
      %251 = math.cos %cst_3 : f32
      %252 = math.copysign %cst_0, %cst : f16
      %253 = affine.max affine_map<(d0, d1, d2) -> ((d0 + 15) * 2 + d0 - 1 + 4, ((d0 - 1) * 2 + d1) mod 8, d2, -(d0 + 15))>(%98, %89, %c15)
      %extracted_52 = tensor.extract %0[%c6, %c0] : tensor<8x6xi32>
      %254 = arith.remsi %c1371185289_i32, %c1163687881_i32 : i32
      %255 = arith.shrui %extracted_52, %77 : i32
      %256 = arith.minsi %c814819294_i32, %c1_i32 : i32
      %257 = vector.broadcast %c1_i32 : i32 to vector<7x6x7x6xi32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %49, %47, %257 : vector<6x7x6xi32>, vector<6x7x6xi32> into vector<7x6x7x6xi32>
      %from_elements_53 = tensor.from_elements %false, %true, %false_6, %false_6, %true, %true, %false, %true, %false, %false_6, %false, %false_6, %false, %false, %false, %true, %false, %false, %true, %false_6, %false, %false_6, %false, %false, %false_6, %true, %true, %true, %false, %true, %false, %false_6, %true, %false_6, %false, %true, %false, %false_6, %true, %true, %false, %false, %false_6, %false, %false_6, %true, %true, %false_6, %false, %true, %false, %false_6, %false_6, %false, %false, %true, %false_6, %true, %false_6, %false, %false_6, %false, %false, %true, %false_6, %true, %false, %false, %false, %false_6, %false, %true, %false_6, %true, %true, %true, %false, %true, %true, %false_6, %false_6, %false_6, %false, %false_6, %false, %false, %true, %true, %false, %true, %false_6, %false, %true, %true, %false_6, %true, %true, %true, %true, %false_6, %false_6, %false, %false, %false_6, %false, %false, %false, %true, %true, %false_6, %true, %true, %false, %false_6, %false, %false_6, %false_6, %true, %true, %true, %false_6, %false, %false, %false_6, %false, %true, %false_6, %true, %false_6, %false, %false, %false, %true, %true, %false, %false, %true, %true, %false_6, %true, %true, %false_6, %false, %false, %true, %false_6, %false_6, %false, %false, %true, %false, %false, %true, %false_6, %true, %true, %false_6, %false_6, %false_6, %true, %false_6, %false, %false_6, %true, %false_6, %false_6, %true, %true, %true, %false_6, %false_6, %false, %false_6, %false, %false, %true, %true, %false, %false, %false, %false_6, %false, %true, %false, %true, %false, %true, %false_6, %false_6, %true, %false_6, %false, %false_6, %false, %false_6, %true, %true, %true, %true, %false_6, %true, %false, %true, %false_6, %false_6, %false_6, %false, %false_6, %false, %true, %false, %false, %true, %false_6, %false_6, %true, %false_6, %true, %false_6, %false, %false_6, %true, %false, %false_6, %false, %true, %false, %false, %false_6, %false, %false_6, %true, %false_6, %false, %false_6, %true, %false, %true, %false, %true, %false_6, %false_6, %true, %false_6, %true, %true, %false_6, %false, %false, %false_6, %false_6, %false : tensor<6x7x6xi1>
      %rank_54 = tensor.rank %13 : tensor<7x7xf32>
      %259 = index.castu %c28906_i16 : i16 to index
      %260 = math.copysign %8, %8 : tensor<7xf16>
      %261 = math.log1p %15 : tensor<8x6xf16>
      %262 = arith.addi %77, %c291171020_i32 : i32
      %263 = scf.execute_region -> memref<6x7x6xf32> {
        %277 = arith.shrsi %false_6, %true : i1
        %278 = math.expm1 %10 : tensor<7xf32>
        memref.store %c27006_i16, %alloc_20[%c5, %c3, %c1] : memref<6x7x6xi16>
        %279 = arith.divsi %c28906_i16, %c28906_i16 : i16
        %280 = math.absf %10 : tensor<7xf32>
        %281 = arith.muli %extracted_52, %77 : i32
        %282 = memref.atomic_rmw minf %cst_4, %alloc_10[%c5] : (f16, memref<7xf16>) -> f16
        %283 = math.log1p %cst_2 : f32
        %284 = arith.remf %cst_1, %cst_1 : f32
        %285 = arith.floordivsi %c1371185289_i32, %77 : i32
        %286 = arith.addi %false, %false : i1
        %287 = tensor.empty() : tensor<6x7x6xi16>
        %288 = math.fma %cst_0, %cst_4, %cst : f16
        %c882964430_i64 = arith.constant 882964430 : i64
        %collapsed_57 = tensor.collapse_shape %2 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
        %289 = index.sub %44, %c2
        %alloc_58 = memref.alloc() : memref<6x7x6xf32>
        scf.yield %alloc_58 : memref<6x7x6xf32>
      }
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<6x6x7xi32>) {
      ^bb0(%out: i32):
        %277 = math.atan %14 : tensor<8x6xf16>
        %278 = arith.maxui %true, %false_6 : i1
        %279 = vector.extract_strided_slice %81 {offsets = [4], sizes = [2], strides = [1]} : vector<6x7xi32> to vector<2x7xi32>
        %280 = vector.broadcast %false : i1 to vector<6xi1>
        %281 = vector.insert %280, %55 [0] : vector<6xi1> into vector<7x6xi1>
        %282 = vector.broadcast %out : i32 to vector<7x7xi32>
        %283 = vector.broadcast %false : i1 to vector<7x7xi1>
        %284 = vector.gather %28[%c13, %c1] [%282], %283, %282 : memref<8x6xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
        %285 = arith.floordivsi %c814819294_i32, %out : i32
        %286 = arith.addi %c27006_i16, %c27006_i16 : i16
        vector.print %279 : vector<2x7xi32>
        memref.store %cst_1, %alloc[%c4, %c1] : memref<7x7xf32>
        %287 = vector.extract %279[0] : vector<2x7xi32>
        %cst_57 = arith.constant 1.000000e+00 : f16
        %cst_58 = arith.constant 0.000000e+00 : f16
        %288 = vector.transfer_read %8[%c2], %cst_58 : tensor<7xf16>, vector<f16>
        %289 = math.log1p %13 : tensor<7x7xf32>
        %alloc_59 = memref.alloc() : memref<8x6xf32>
        %290 = vector.splat %253 : vector<7xindex>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %29, %29, %c1371185289_i32 : vector<3xi32>, vector<3xi32> into i32
        %292 = math.round %6 : tensor<7x7xf32>
        %293 = math.floor %10 : tensor<7xf32>
        %294 = tensor.empty() : tensor<8x6xf32>
        %295 = math.exp %6 : tensor<7x7xf32>
        %296 = math.absi %1 : tensor<8x6xi1>
        %297 = arith.remui %extracted_52, %extracted_52 : i32
        %c0_i64 = arith.constant 0 : i64
        affine.store %c0_i64, %alloc_11[%c4] : memref<7xi64>
        %298 = arith.ceildivsi %false, %false_6 : i1
        %299 = index.ceildivs %89, %c6
        %300 = arith.shrsi %false_6, %true : i1
        %301 = vector.multi_reduction <maxsi>, %55, %280 [0] : vector<7x6xi1> to vector<6xi1>
        %302 = arith.cmpf uno, %cst_0, %cst_5 : f16
        %303 = arith.remf %cst_3, %cst_3 : f32
        %304 = tensor.empty() : tensor<7xf32>
        %305 = vector.splat %259 : vector<7xindex>
        %306 = arith.divui %c814819294_i32, %77 : i32
        %307 = math.absi %extracted_52 : i32
        linalg.yield %c1163687881_i32 : i32
      } -> tensor<6x6x7xi32>
      %265 = math.ctpop %false : i1
      memref.assume_alignment %alloc_14, 16 : memref<7xi16>
      %266 = bufferization.to_memref %4 : memref<6x7x6xi32>
      %267 = tensor.empty() : tensor<8x6xf16>
      %268 = arith.maxsi %77, %c1163687881_i32 : i32
      %269 = arith.ori %true, %false_6 : i1
      %270 = vector.flat_transpose %30 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %271 = math.fma %14, %14, %267 : tensor<8x6xf16>
      vector.print %48 : vector<6x7x6xi1>
      %272 = arith.ceildivsi %true, %false_6 : i1
      %273 = vector.load %alloc_17[%c4, %c5] : memref<7x7xi16>, vector<7xi16>
      %274 = tensor.empty() : tensor<8x6xi16>
      %mapped_55 = linalg.map ins(%12, %12 : tensor<8x6xi16>, tensor<8x6xi16>) outs(%274 : tensor<8x6xi16>)
        (%in: i16, %in_57: i16) {
          %277 = math.absi %11 : tensor<8x6xi16>
          %278 = arith.shrsi %false, %false : i1
          %279 = math.ctpop %12 : tensor<8x6xi16>
          %280 = math.exp %10 : tensor<7xf32>
          %alloc_58 = memref.alloc() : memref<7x7xf32>
          %281 = vector.extract_strided_slice %70 {offsets = [1], sizes = [2], strides = [1]} : vector<8xi32> to vector<2xi32>
          %282 = vector.reduction <minsi>, %281 : vector<2xi32> into i32
          %283 = math.ctpop %c27006_i16 : i16
          %284 = vector.load %alloc_14[%c5] : memref<7xi16>, vector<7x7xi16>
          %285 = math.fma %cst_2, %cst_3, %cst_1 : f32
          %286 = index.add %c8, %59
          %287 = math.powf %cst_4, %cst_4 : f16
          %288 = affine.apply affine_map<(d0, d1) -> (((d1 * -2) floordiv 4 + d1 * 2) ceildiv 2)>(%72, %c0)
          %289 = arith.mulf %cst, %cst_5 : f16
          bufferization.dealloc_tensor %4 : tensor<6x7x6xi32>
          %290 = arith.maxui %c814819294_i32, %c814819294_i32 : i32
          %291 = math.floor %collapsed : tensor<48xf16>
          %292 = arith.subi %77, %c1371185289_i32 : i32
          %293 = index.sizeof
          %294 = vector.broadcast %293 : index to vector<6xindex>
          %295 = vector.broadcast %false_6 : i1 to vector<6xi1>
          %296 = vector.broadcast %cst_0 : f16 to vector<6xf16>
          vector.scatter %alloc_18[%c4, %c6, %c5] [%294], %295, %296 : memref<6x7x6xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
          %297 = vector.broadcast %c814819294_i32 : i32 to vector<6xi32>
          %298 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %19, %97, %297 : vector<8xi32>, vector<8x6xi32> into vector<6xi32>
          %299 = arith.floordivsi %c1163687881_i32, %c1371185289_i32 : i32
          %300 = math.log10 %cst_2 : f32
          %301 = math.ctpop %from_elements : tensor<7xi1>
          %302 = math.absi %4 : tensor<6x7x6xi32>
          %303 = arith.addi %c27006_i16, %in_57 : i16
          %304 = arith.remf %cst_4, %cst_5 : f16
          %305 = index.casts %77 : i32 to index
          %306 = math.log1p %14 : tensor<8x6xf16>
          %307 = vector.broadcast %c12 : index to vector<8xindex>
          %308 = vector.broadcast %true : i1 to vector<8xi1>
          vector.scatter %alloc_12[%c1, %c4] [%307], %308, %19 : memref<8x6xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
          %309 = arith.divui %c291171020_i32, %c291171020_i32 : i32
          %310 = math.round %15 : tensor<8x6xf16>
          %c0_i16_59 = arith.constant 0 : i16
          linalg.yield %c0_i16_59 : i16
        }
      %275 = tensor.empty() : tensor<7x6xi32>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed, %275 : tensor<6x6x7xi32>, tensor<7x6xi32>) outs(%transposed : tensor<6x6x7xi32>) {
      ^bb0(%in: i32, %in_57: i32, %out: i32):
        %277 = index.maxs %53, %89
        %278 = math.round %collapsed : tensor<48xf16>
        %279 = arith.ori %false, %false_6 : i1
        %280 = arith.maxui %out, %c1371185289_i32 : i32
        %281 = index.floordivs %c15, %98
        %282 = math.atan %267 : tensor<8x6xf16>
        %283 = arith.minf %cst_1, %cst_3 : f32
        %284 = arith.addf %cst_3, %cst_3 : f32
        %285 = arith.minf %cst_5, %cst_4 : f16
        %286 = vector.extract %29[2] : vector<3xi32>
        %287 = math.exp2 %13 : tensor<7x7xf32>
        %288 = index.casts %out : i32 to index
        %alloca_58 = memref.alloca() : memref<7xf16>
        %289 = arith.divui %c27006_i16, %c28906_i16 : i16
        %290 = math.ctpop %false : i1
        %291 = arith.divsi %c28906_i16, %c27006_i16 : i16
        vector.print %86 : vector<24xi32>
        %292 = vector.extract %49[4] : vector<6x7x6xi32>
        %alloc_59 = memref.alloc() : memref<7x7xf32>
        %collapsed_60 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x6xi16> into tensor<48xi16>
        %293 = index.maxs %c7, %c8
        %294 = arith.muli %false_6, %false : i1
        %295 = arith.maxui %c1_i32, %in : i32
        %296 = math.copysign %8, %8 : tensor<7xf16>
        %297 = tensor.empty() : tensor<8x6xi32>
        %298 = math.floor %15 : tensor<8x6xf16>
        memref.store %false, %76[%c0, %c4] : memref<8x6xi1>
        %299 = arith.divui %in, %c814819294_i32 : i32
        %300 = arith.minf %cst_2, %cst_3 : f32
        %cst_61 = arith.constant 1.42984051E+9 : f32
        %301 = math.copysign %8, %8 : tensor<7xf16>
        %302 = math.round %cst_4 : f16
        linalg.yield %c291171020_i32 : i32
      } -> tensor<6x6x7xi32>
      %from_elements_56 = tensor.from_elements %false, %false, %false, %false, %false, %true, %false, %false, %true, %true, %false, %false, %false, %false_6, %true, %false, %false, %true, %false_6, %false, %false_6, %true, %false, %false_6, %true, %false, %false, %false, %false, %true, %false_6, %false_6, %false, %false, %true, %false_6, %false_6, %true, %false, %false_6, %true, %false_6, %false, %true, %true, %false_6, %true, %false : tensor<8x6xi1>
    }
    %100 = arith.maxf %cst_0, %cst_0 : f16
    %generated_26 = tensor.generate %c13 {
    ^bb0(%arg1: index):
      %c658028164_i32 = arith.constant 658028164 : i32
      %249 = memref.load %alloc_15[%c1, %c5] : memref<7x7xi16>
      %from_elements_52 = tensor.from_elements %c28906_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c27006_i16 : tensor<8x6xi16>
      %250 = vector.broadcast %true : i1 to vector<6x6xi1>
      %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %48, %250 {inclusive = false, reduction_dim = 1 : i64} : vector<6x7x6xi1>, vector<6x6xi1>
      tensor.yield %c28906_i16 : i16
    } : tensor<?xi16>
    %101 = math.log10 %cst_5 : f16
    %102 = math.log1p %cst_3 : f32
    %rank = tensor.rank %12 : tensor<8x6xi16>
    %103 = arith.addf %cst_3, %cst_3 : f32
    %104 = arith.shrui %c28906_i16, %c28906_i16 : i16
    %105 = math.copysign %cst_0, %cst_0 : f16
    %c1_i64 = arith.constant 1 : i64
    memref.store %c1_i64, %alloc_19[%c0, %c2, %c1] : memref<6x7x6xi64>
    %106 = arith.minf %cst_4, %cst_4 : f16
    scf.if %false {
      %249 = math.ctpop %0 : tensor<8x6xi32>
      %250 = arith.maxsi %c1371185289_i32, %c1371185289_i32 : i32
      %251 = vector.transpose %19, [0] : vector<8xi32> to vector<8xi32>
      memref.store %c28906_i16, %alloc_7[%c1, %c2, %c2] : memref<6x7x6xi16>
      %252 = vector.load %28[%c7, %c3] : memref<8x6xi32>, vector<6x7x6xi32>
      %253 = math.expm1 %cst_4 : f16
      %254 = index.divu %53, %c10
      %255 = math.exp2 %10 : tensor<7xf32>
    } else {
      %249 = arith.floordivsi %false_6, %false : i1
      %250 = math.floor %cst_1 : f32
      %251 = math.ctpop %0 : tensor<8x6xi32>
      %252 = index.maxs %c10, %72
      vector.print %97 : vector<8x6xi32>
      %253 = tensor.empty() : tensor<6x4xi1>
      %254 = tensor.empty() : tensor<8x4xi1>
      %255 = linalg.matmul ins(%16, %253 : tensor<8x6xi1>, tensor<6x4xi1>) outs(%254 : tensor<8x4xi1>) -> tensor<8x4xi1>
      %256 = index.mul %c15, %85
      scf.execute_region {
        %257 = vector.extract_strided_slice %70 {offsets = [6], sizes = [2], strides = [1]} : vector<8xi32> to vector<2xi32>
        %258 = math.fma %15, %15, %15 : tensor<8x6xf16>
        %c0_i64 = arith.constant 0 : i64
        %259 = vector.transfer_read %alloc_19[%c1, %c15, %252], %c0_i64 : memref<6x7x6xi64>, vector<8x6xi64>
        %260 = index.mul %c11, %c13
        %261 = arith.maxsi %c27006_i16, %c27006_i16 : i16
        %262 = memref.realloc %alloc_23 : memref<7xi32> to memref<8xi32>
        %263 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) mod 2)>(%c11, %c4)
        %264 = arith.remsi %c28906_i16, %c27006_i16 : i16
        %265 = arith.maxui %c1371185289_i32, %c1_i32 : i32
        %extracted_52 = tensor.extract %4[%c0, %c5, %c5] : tensor<6x7x6xi32>
        %266 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
        %267 = tensor.empty() : tensor<8x6xi32>
        %268 = vector.extract_strided_slice %48 {offsets = [1], sizes = [5], strides = [1]} : vector<6x7x6xi1> to vector<5x7x6xi1>
        %269 = math.rsqrt %14 : tensor<8x6xf16>
        %collapsed_53 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x6xi16> into tensor<48xi16>
        %270 = vector.flat_transpose %86 {columns = 6 : i32, rows = 4 : i32} : vector<24xi32> -> vector<24xi32>
        scf.yield
      }
    }
    %alloc_27 = memref.alloc() : memref<6x7x6xf16>
    %107 = arith.maxui %c1163687881_i32, %77 : i32
    %108 = arith.cmpf uno, %cst_2, %cst_3 : f32
    %109 = math.expm1 %cst_2 : f32
    %110 = index.ceildivs %26, %c2
    %111 = arith.muli %c1_i32, %c1163687881_i32 : i32
    %112 = tensor.empty() : tensor<7x7xi64>
    %113 = linalg.matmul ins(%2, %7 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%112 : tensor<7x7xi64>) -> tensor<7x7xi64>
    %114 = index.maxs %c3, %c5
    %115 = index.divu %c5, %114
    %alloca = memref.alloca() : memref<8x6xi1>
    %116 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %117 = arith.ceildivsi %true, %true : i1
    %splat = tensor.splat %c1371185289_i32 : tensor<6x7x6xi32>
    %118 = math.log10 %15 : tensor<8x6xf16>
    %119 = tensor.empty() : tensor<8x6xi1>
    %mapped = linalg.map ins(%alloc_16, %1 : memref<8x6xi1>, tensor<8x6xi1>) outs(%119 : tensor<8x6xi1>)
      (%in: i1, %in_52: i1) {
        %249 = vector.broadcast %true : i1 to vector<6xi1>
        %250 = vector.insert %249, %88 [1] : vector<6xi1> into vector<7x6xi1>
        %251 = math.floor %8 : tensor<7xf16>
        scf.if %false_6 {
          %276 = arith.divsi %false_6, %true : i1
          %277 = math.floor %8 : tensor<7xf16>
          %278 = vector.flat_transpose %86 {columns = 6 : i32, rows = 4 : i32} : vector<24xi32> -> vector<24xi32>
          %279 = math.tanh %13 : tensor<7x7xf32>
          %280 = arith.cmpf ogt, %cst_2, %cst_2 : f32
          %281 = math.log1p %10 : tensor<7xf32>
          %282 = vector.broadcast %cst_2 : f32 to vector<7xf32>
          %283 = vector.broadcast %77 : i32 to vector<7xi32>
          %284 = vector.gather %10[%114] [%283], %30, %282 : tensor<7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          %285 = arith.divsi %in_52, %false_6 : i1
        }
        %252 = math.atan %cst_0 : f16
        %cst_53 = arith.constant 1.000000e+00 : f32
        %253 = vector.transfer_read %6[%44, %53], %cst_53 : tensor<7x7xf32>, vector<6xf32>
        %254 = math.log10 %cst_2 : f32
        %255 = index.sizeof
        %256 = arith.shli %c28906_i16, %c28906_i16 : i16
        %257 = math.ctpop %true : i1
        %258 = arith.maxui %c1371185289_i32, %c1_i32 : i32
        %259 = math.round %8 : tensor<7xf16>
        %260 = arith.minf %cst_53, %cst_1 : f32
        %261 = arith.xori %false_6, %in_52 : i1
        %262 = math.log1p %13 : tensor<7x7xf32>
        %263 = arith.addi %77, %77 : i32
        %264 = arith.shli %c1_i32, %c1_i32 : i32
        %265 = index.sub %c15, %c3
        %collapsed_54 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %266 = bufferization.to_memref %6 : memref<7x7xf32>
        %267 = arith.remf %cst_3, %cst_1 : f32
        %268 = arith.ori %c814819294_i32, %77 : i32
        %splat_55 = tensor.splat %c1_i32 : tensor<6x7x6xi32>
        %269 = scf.while (%arg1 = %cst_0) : (f16) -> f16 {
          %276 = arith.addf %cst_3, %cst_53 : f32
          %277 = tensor.empty() : tensor<6x8xf16>
          %278 = tensor.empty() : tensor<8x8xf16>
          %279 = linalg.matmul ins(%15, %277 : tensor<8x6xf16>, tensor<6x8xf16>) outs(%278 : tensor<8x8xf16>) -> tensor<8x8xf16>
          %280 = bufferization.clone %alloc_18 : memref<6x7x6xf16> to memref<6x7x6xf16>
          %281 = vector.splat %53 : vector<8x6xindex>
          %282 = arith.floordivsi %true, %false_6 : i1
          %283 = math.tanh %13 : tensor<7x7xf32>
          %284 = vector.bitcast %30 : vector<7xi1> to vector<7xi1>
          %285 = arith.addi %false, %in_52 : i1
          scf.condition(%in_52) %cst_5 : f16
        } do {
        ^bb0(%arg1: f16):
          %276 = vector.flat_transpose %249 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
          %277 = vector.reduction <or>, %30 : vector<7xi1> into i1
          %alloca_59 = memref.alloca() : memref<7xf16>
          %278 = arith.xori %c1_i32, %c814819294_i32 : i32
          %279 = arith.maxsi %in_52, %false_6 : i1
          %280 = index.divs %c12, %115
          %281 = arith.mulf %cst_2, %cst_2 : f32
          %282 = math.ipowi %9, %9 : tensor<7xi32>
          %283 = arith.addi %false_6, %in_52 : i1
          %284 = vector.broadcast %c814819294_i32 : i32 to vector<7x6x8xi32>
          %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %47, %97, %284 : vector<6x7x6xi32>, vector<8x6xi32> into vector<7x6x8xi32>
          %286 = memref.realloc %alloc_23 : memref<7xi32> to memref<8xi32>
          %287 = index.floordivs %59, %c10
          vector.print %97 : vector<8x6xi32>
          %288 = index.sizeof
          %289 = vector.broadcast %rank : index to vector<7xindex>
          vector.scatter %76[%c0, %c0] [%289], %30, %30 : memref<8x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          %290 = bufferization.to_tensor %alloc_16 : memref<8x6xi1>
          scf.yield %cst_0 : f16
        }
        %270 = math.exp %cst : f16
        %from_elements_56 = tensor.from_elements %true, %in, %in, %in_52, %false, %false, %in, %false_6, %true, %in_52, %true, %in, %true, %in_52, %false_6, %in_52, %in_52, %in_52, %false_6, %in, %in_52, %false, %in, %true, %in, %false_6, %in, %in_52, %in, %false, %in_52, %in, %false, %true, %false_6, %in, %true, %in_52, %false, %in, %false, %true, %in, %in_52, %false_6, %false, %true, %false, %in_52 : tensor<7x7xi1>
        vector.print %81 : vector<6x7xi32>
        %extracted_57 = tensor.extract %8[%c4] : tensor<7xf16>
        %271 = arith.ceildivsi %false_6, %in_52 : i1
        %272 = arith.cmpi ule, %c814819294_i32, %c814819294_i32 : i32
        %273 = vector.extract_strided_slice %249 {offsets = [3], sizes = [2], strides = [1]} : vector<6xi1> to vector<2xi1>
        %274 = tensor.empty() : tensor<6x7x6xf16>
        %275 = math.round %cst_0 : f16
        %false_58 = arith.constant false
        linalg.yield %false_58 : i1
      }
    %generated_28 = tensor.generate %c2, %59 {
    ^bb0(%arg1: index, %arg2: index):
      %249 = arith.shrui %c1_i32, %c1163687881_i32 : i32
      %250 = math.exp2 %cst : f16
      %251 = math.rsqrt %cst : f16
      %splat_52 = tensor.splat %cst_1 : tensor<7x7xf32>
      tensor.yield %c1_i64 : i64
    } : tensor<?x?xi64>
    %generated_29 = tensor.generate %c7 {
    ^bb0(%arg1: index, %arg2: index):
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<6x6x7xi32>) {
      ^bb0(%out: i32):
        %251 = index.divu %c4, %c13
        %252 = vector.broadcast %cst_3 : f32 to vector<6x7x6xf32>
        %253 = vector.splat %251 : vector<7xindex>
        %254 = math.log1p %10 : tensor<7xf32>
        %255 = math.round %14 : tensor<8x6xf16>
        %256 = arith.shrui %true, %false : i1
        %257 = vector.create_mask %110, %c13 : vector<7x7xi1>
        %258 = vector.splat %72 : vector<7x7xindex>
        %259 = math.log10 %15 : tensor<8x6xf16>
        %260 = arith.shrsi %c28906_i16, %c27006_i16 : i16
        %261 = vector.extract %70[2] : vector<8xi32>
        %262 = math.atan %13 : tensor<7x7xf32>
        %263 = vector.flat_transpose %116 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
        %rank_53 = tensor.rank %12 : tensor<8x6xi16>
        %264 = vector.load %alloc_16[%c7, %c5] : memref<8x6xi1>, vector<8x6xi1>
        %265 = arith.shrsi %out, %c1163687881_i32 : i32
        %cast_54 = tensor.cast %15 : tensor<8x6xf16> to tensor<?x?xf16>
        %266 = vector.broadcast %cst_3 : f32 to vector<8x6xf32>
        %267 = vector.fma %266, %266, %266 : vector<8x6xf32>
        %268 = math.round %8 : tensor<7xf16>
        %269 = vector.extract %264[2] : vector<8x6xi1>
        %270 = math.rsqrt %13 : tensor<7x7xf32>
        %collapsed_55 = tensor.collapse_shape %119 [[0, 1]] : tensor<8x6xi1> into tensor<48xi1>
        %271 = bufferization.clone %alloc_14 : memref<7xi16> to memref<7xi16>
        %272 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %273 = vector.insert %272, %266 [3] : vector<6xf32> into vector<8x6xf32>
        %dest_56, %accumulated_value_57 = vector.scan <minui>, %47, %81 {inclusive = false, reduction_dim = 2 : i64} : vector<6x7x6xi32>, vector<6x7xi32>
        %274 = arith.xori %true, %false : i1
        %275 = math.atan %15 : tensor<8x6xf16>
        %276 = math.powf %6, %6 : tensor<7x7xf32>
        %277 = math.log10 %cst_3 : f32
        %278 = math.round %cst_3 : f32
        %279 = vector.broadcast %c7 : index to vector<6xindex>
        %280 = vector.broadcast %c28906_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_17[%c5, %c3] [%279], %269, %280 : memref<7x7xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %281 = vector.splat %c10 : vector<6x7x6xindex>
        linalg.yield %c1371185289_i32 : i32
      } -> tensor<6x6x7xi32>
      vector.print %70 : vector<8xi32>
      %rank_52 = tensor.rank %6 : tensor<7x7xf32>
      %250 = memref.alloca_scope  -> (i32) {
        %251 = affine.max affine_map<(d0, d1, d2) -> (d1, d2 floordiv 16, d0 * 8)>(%c10, %c12, %53)
        %252 = math.fpowi %15, %0 : tensor<8x6xf16>, tensor<8x6xi32>
        %253 = vector.broadcast %c1371185289_i32 : i32 to vector<6xi32>
        %254 = vector.insert %253, %49 [2, 1] : vector<6xi32> into vector<6x7x6xi32>
        %255 = math.ipowi %16, %119 : tensor<8x6xi1>
        %256 = arith.minui %true, %false_6 : i1
        %257 = math.tanh %cst_3 : f32
        %cast_53 = tensor.cast %0 : tensor<8x6xi32> to tensor<?x?xi32>
        memref.assume_alignment %alloc_14, 16 : memref<7xi16>
        %258 = affine.apply affine_map<(d0, d1) -> (d0 - d1 + d1 ceildiv 16)>(%c13, %114)
        %259 = arith.shrsi %c1_i64, %c1_i64 : i64
        %splat_54 = tensor.splat %cst_2 : tensor<8x6xf32>
        memref.store %cst_3, %alloc_21[%c1, %c1] : memref<8x6xf32>
        %260 = arith.cmpi ule, %c814819294_i32, %c814819294_i32 : i32
        %261 = math.ctpop %c814819294_i32 : i32
        %262 = vector.extract_strided_slice %47 {offsets = [1], sizes = [2], strides = [1]} : vector<6x7x6xi32> to vector<2x7x6xi32>
        memref.store %c291171020_i32, %alloc_8[%c3, %c6] : memref<7x7xi32>
        %263 = index.maxu %c14, %c11
        %264 = arith.addf %cst_1, %cst_1 : f32
        %265 = math.fma %10, %10, %10 : tensor<7xf32>
        %cast_55 = tensor.cast %18 : tensor<6x6x7xi32> to tensor<?x?x?xi32>
        %266 = index.sub %115, %c8
        %267 = arith.ceildivsi %false_6, %false : i1
        %268 = math.ipowi %true, %false : i1
        %269 = index.mul %85, %arg1
        %270 = vector.extract_strided_slice %19 {offsets = [6], sizes = [1], strides = [1]} : vector<8xi32> to vector<1xi32>
        %271 = arith.muli %c291171020_i32, %c814819294_i32 : i32
        %272 = arith.xori %c291171020_i32, %77 : i32
        %273 = index.sub %269, %c15
        %274 = arith.cmpi ne, %77, %c1371185289_i32 : i32
        memref.store %cst_4, %93[%c3, %c1, %c5] : memref<6x7x6xf16>
        %275 = vector.insert %88, %48 [5] : vector<7x6xi1> into vector<6x7x6xi1>
        %276 = tensor.empty() : tensor<7x7xi1>
        memref.alloca_scope.return %c1_i32 : i32
      }
      tensor.yield %true : i1
    } : tensor<?x7xi1>
    %120 = arith.minf %cst_1, %cst_1 : f32
    %121 = arith.divui %c291171020_i32, %c291171020_i32 : i32
    %122 = bufferization.to_memref %21 : memref<i32>
    %123 = index.ceildivs %c10, %c3
    %124 = arith.remf %cst_5, %cst_5 : f16
    %125 = math.round %14 : tensor<8x6xf16>
    %cst_30 = arith.constant 1.487000e+03 : f16
    %126 = scf.execute_region -> i16 {
      %249 = vector.extract %88[1] : vector<7x6xi1>
      memref.alloca_scope  {
        memref.assume_alignment %alloc_8, 16 : memref<7x7xi32>
        %264 = math.exp %13 : tensor<7x7xf32>
        %cst_53 = arith.constant 1.000000e+00 : f32
        %265 = vector.transfer_read %13[%rank, %c6], %cst_53 : tensor<7x7xf32>, vector<f32>
        %266 = math.absi %1 : tensor<8x6xi1>
        %267 = vector.broadcast %c1163687881_i32 : i32 to vector<6xi32>
        %dest_54, %accumulated_value_55 = vector.scan <and>, %81, %267 {inclusive = false, reduction_dim = 1 : i64} : vector<6x7xi32>, vector<6xi32>
        %268 = math.rsqrt %cst_5 : f16
        %269 = index.casts %77 : i32 to index
        %270 = arith.floordivsi %c28906_i16, %c28906_i16 : i16
        %271 = arith.cmpi uge, %c1163687881_i32, %c1_i32 : i32
        %272 = vector.create_mask %c13, %110, %c13 : vector<6x7x6xi1>
        %273 = math.exp %6 : tensor<7x7xf32>
        %274 = affine.load %93[%c9, %c4, %c3] : memref<6x7x6xf16>
        affine.store %c27006_i16, %alloc_14[%c6] : memref<7xi16>
        %275 = arith.divsi %false_6, %false_6 : i1
        %splat_56 = tensor.splat %c1371185289_i32 : tensor<8x6xi32>
        %276 = affine.load %alloc_7[%c10, %c10, %c13] : memref<6x7x6xi16>
        %277 = arith.shrui %false, %false_6 : i1
        %278 = vector.broadcast %c2 : index to vector<7xindex>
        %279 = vector.broadcast %cst : f16 to vector<7xf16>
        vector.scatter %alloc_18[%c0, %c0, %c3] [%278], %30, %279 : memref<6x7x6xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %280 = arith.minui %c1163687881_i32, %c1371185289_i32 : i32
        %281 = math.log1p %cst : f16
        %282 = arith.maxsi %276, %c28906_i16 : i16
        %alloc_57 = memref.alloc() : memref<7xi64>
        %283 = arith.divsi %c1371185289_i32, %c291171020_i32 : i32
        %284 = math.ctpop %12 : tensor<8x6xi16>
        %285 = arith.remsi %c1163687881_i32, %77 : i32
        %286 = arith.mulf %cst_3, %cst_2 : f32
        %287 = arith.maxsi %c1_i64, %c1_i64 : i64
        %288 = arith.remf %cst_3, %cst_1 : f32
        %289 = bufferization.to_memref %1 : memref<8x6xi1>
        %290 = math.log1p %10 : tensor<7xf32>
        %291 = arith.mulf %cst_5, %cst_5 : f16
        %292 = arith.shrsi %c814819294_i32, %c814819294_i32 : i32
      }
      %250 = affine.load %alloc_17[%c0, %c14] : memref<7x7xi16>
      %251 = arith.shrsi %c1_i64, %c1_i64 : i64
      %252 = index.ceildivs %c3, %110
      %253 = bufferization.to_memref %5 : memref<8x6xi32>
      %cast_52 = tensor.cast %11 : tensor<8x6xi16> to tensor<?x?xi16>
      %254 = vector.broadcast %c814819294_i32 : i32 to vector<7x7x6xi32>
      %255 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %81, %47, %254 : vector<6x7xi32>, vector<6x7x6xi32> into vector<7x7x6xi32>
      %256 = memref.load %alloc_14[%c1] : memref<7xi16>
      %257 = index.mul %c0, %110
      %258 = index.ceildivs %c11, %98
      %259 = bufferization.to_tensor %alloc_19 : memref<6x7x6xi64>
      %260 = affine.apply affine_map<(d0, d1) -> (((d1 * -2) floordiv 4 + d1 * 2) ceildiv 2)>(%115, %114)
      %261 = arith.remui %true, %true : i1
      %262 = affine.min affine_map<(d0) -> (d0 mod 2, (d0 mod 2) mod 8 - 128, d0 mod 2 + (d0 mod 2) ceildiv 128 - d0 mod 2, -(d0 mod 2 + (d0 mod 2) ceildiv 128 - d0 mod 2))>(%c13)
      %263 = math.absi %12 : tensor<8x6xi16>
      scf.yield %c27006_i16 : i16
    }
    %127 = math.ipowi %false_6, %false : i1
    %128 = math.atan %13 : tensor<7x7xf32>
    %129 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
    %130 = vector.fma %129, %129, %129 : vector<7x7xf32>
    %131 = math.ctpop %126 : i16
    %132 = math.copysign %8, %8 : tensor<7xf16>
    %133 = index.mul %110, %98
    %134 = arith.maxui %c1_i32, %c1371185289_i32 : i32
    affine.store %c28906_i16, %alloc_14[%c10] : memref<7xi16>
    %splat_31 = tensor.splat %c291171020_i32 : tensor<8x6xi32>
    %135 = arith.xori %77, %77 : i32
    %136 = arith.divsi %c1371185289_i32, %c1_i32 : i32
    %137 = vector.extract %29[0] : vector<3xi32>
    %splat_32 = tensor.splat %cst_0 : tensor<6x7x6xf16>
    %138 = tensor.empty() : tensor<7x7xi32>
    %rank_33 = tensor.rank %generated_29 : tensor<?x7xi1>
    %139 = vector.broadcast %false_6 : i1 to vector<6xi1>
    %140 = vector.insert %139, %55 [3] : vector<6xi1> into vector<7x6xi1>
    vector.print %139 : vector<6xi1>
    %dest_34, %accumulated_value_35 = vector.scan <add>, %55, %30 {inclusive = true, reduction_dim = 1 : i64} : vector<7x6xi1>, vector<7xi1>
    %dest_36, %accumulated_value_37 = vector.scan <and>, %47, %81 {inclusive = true, reduction_dim = 2 : i64} : vector<6x7x6xi32>, vector<6x7xi32>
    %141 = vector.matrix_multiply %86, %19 {lhs_columns = 8 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<24xi32>, vector<8xi32>) -> vector<3xi32>
    %142 = arith.shrui %77, %c1163687881_i32 : i32
    %143 = index.divu %c11, %c8
    %144 = index.add %c1, %c14
    %145 = index.floordivs %c0, %98
    %146 = index.sub %c4, %c10
    %147 = arith.ori %c1163687881_i32, %c1_i32 : i32
    %collapsed_38 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
    %148 = arith.minf %cst_1, %cst_3 : f32
    %149 = affine.load %28[%c12, %c6] : memref<8x6xi32>
    %alloca_39 = memref.alloca() : memref<6x7x6xf32>
    affine.store %cst_1, %alloc_13[%c9, %c9] : memref<7x7xf32>
    %splat_40 = tensor.splat %cst_5 : tensor<8x6xf16>
    %150 = arith.remf %cst_3, %cst_1 : f32
    %151 = arith.maxsi %false, %true : i1
    %152 = vector.create_mask %c9, %c9 : vector<8x6xi1>
    %153 = arith.mulf %cst_0, %cst : f16
    %154 = arith.remf %cst_0, %cst : f16
    %155 = vector.flat_transpose %86 {columns = 6 : i32, rows = 4 : i32} : vector<24xi32> -> vector<24xi32>
    %156 = vector.transpose %49, [2, 1, 0] : vector<6x7x6xi32> to vector<6x7x6xi32>
    %extracted = tensor.extract %cast[%c0, %c0] : tensor<?x?xi32>
    %157 = math.floor %8 : tensor<7xf16>
    %c0_i16 = arith.constant 0 : i16
    %158 = vector.transfer_read %alloc_14[%c7], %c0_i16 : memref<7xi16>, vector<i16>
    %159 = index.casts %77 : i32 to index
    %160 = arith.minsi %c1_i32, %c814819294_i32 : i32
    %161 = affine.apply affine_map<(d0) -> (d0 - (d0 + 2))>(%c10)
    %splat_41 = tensor.splat %cst_3 : tensor<7x7xf32>
    %162 = index.mul %c12, %c13
    %163 = math.floor %cst_1 : f32
    %164 = math.ipowi %9, %9 : tensor<7xi32>
    %165 = arith.maxsi %c814819294_i32, %149 : i32
    %166 = arith.shrsi %c1163687881_i32, %c814819294_i32 : i32
    %167 = memref.alloca_scope  -> (memref<8x6xf16>) {
      %249 = math.copysign %splat_41, %6 : tensor<7x7xf32>
      %250 = memref.realloc %alloc_23 : memref<7xi32> to memref<4xi32>
      %251 = vector.insert %77, %70 [3] : i32 into vector<8xi32>
      %252 = math.log1p %13 : tensor<7x7xf32>
      %253 = math.copysign %splat_40, %15 : tensor<8x6xf16>
      %254 = vector.reduction <xor>, %86 : vector<24xi32> into i32
      %255 = arith.maxsi %c0_i16, %c28906_i16 : i16
      %256 = vector.transpose %48, [0, 2, 1] : vector<6x7x6xi1> to vector<6x6x7xi1>
      %257 = arith.divui %c0_i16, %c27006_i16 : i16
      %258 = index.sizeof
      %259 = tensor.empty() : tensor<6x7xi32>
      %260 = tensor.empty() : tensor<8x7xi32>
      %261 = linalg.matmul ins(%0, %259 : tensor<8x6xi32>, tensor<6x7xi32>) outs(%260 : tensor<8x7xi32>) -> tensor<8x7xi32>
      %cast_52 = tensor.cast %11 : tensor<8x6xi16> to tensor<?x?xi16>
      memref.store %cst_2, %alloc_21[%c2, %c4] : memref<8x6xf32>
      %262 = math.ctpop %9 : tensor<7xi32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %29, %29, %149 : vector<3xi32>, vector<3xi32> into i32
      %264 = bufferization.clone %alloc_15 : memref<7x7xi16> to memref<7x7xi16>
      %265 = arith.divf %cst_5, %cst_0 : f16
      %cst_53 = arith.constant 1.000000e+00 : f16
      %266 = vector.transfer_read %collapsed[%123], %cst_53 : tensor<48xf16>, vector<f16>
      %splat_54 = tensor.splat %c1371185289_i32 : tensor<7x7xi32>
      %267 = vector.insert %139, %88 [4] : vector<6xi1> into vector<7x6xi1>
      %268 = arith.minf %cst_4, %cst : f16
      %269 = arith.floordivsi %c814819294_i32, %c814819294_i32 : i32
      %270 = arith.minui %c28906_i16, %126 : i16
      %271 = arith.ceildivsi %c28906_i16, %c0_i16 : i16
      %272 = arith.maxsi %true, %false_6 : i1
      %273 = math.ceil %6 : tensor<7x7xf32>
      %274 = arith.subi %c1_i32, %c1_i32 : i32
      %275 = arith.muli %false_6, %false_6 : i1
      %276 = vector.reduction <maxui>, %29 : vector<3xi32> into i32
      %generated_55 = tensor.generate %146 {
      ^bb0(%arg1: index, %arg2: index):
        %279 = arith.shrsi %77, %c1163687881_i32 : i32
        memref.store %cst_3, %alloc_21[%c7, %c5] : memref<8x6xf32>
        %280 = vector.broadcast %c1163687881_i32 : i32 to vector<7xi32>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %81, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<6x7xi32>, vector<7xi32>
        %281 = vector.splat %59 : vector<7x7xindex>
        tensor.yield %cst_5 : f16
      } : tensor<?x7xf16>
      %277 = arith.shli %c27006_i16, %126 : i16
      %278 = arith.remui %c0_i16, %126 : i16
      %alloc_56 = memref.alloc() : memref<8x6xf16>
      memref.alloca_scope.return %alloc_56 : memref<8x6xf16>
    }
    %168 = memref.load %alloc_11[%c4] : memref<7xi64>
    %169 = math.exp %14 : tensor<8x6xf16>
    %170 = index.maxu %162, %146
    %171 = math.ctpop %21 : tensor<i32>
    %172 = math.fma %15, %15, %15 : tensor<8x6xf16>
    %rank_42 = tensor.rank %1 : tensor<8x6xi1>
    %173 = arith.shrsi %77, %c1_i32 : i32
    %174 = index.ceildivs %rank_33, %145
    %175 = index.mul %85, %170
    %176 = arith.muli %c1371185289_i32, %c1_i32 : i32
    %177 = vector.splat %c291171020_i32 : vector<7xi32>
    %178 = arith.xori %c814819294_i32, %c1371185289_i32 : i32
    %179 = math.log2 %10 : tensor<7xf32>
    %180 = arith.divsi %77, %c1163687881_i32 : i32
    %181 = index.ceildivs %rank_42, %c3
    %182 = bufferization.to_memref %12 : memref<8x6xi16>
    %183 = math.floor %cst_2 : f32
    memref.store %c0_i16, %alloc_14[%c2] : memref<7xi16>
    %184 = arith.shli %c1_i32, %77 : i32
    %185 = math.fpowi %cst_5, %c1163687881_i32 : f16, i32
    %186 = vector.broadcast %cst_0 : f16 to vector<8xf16>
    %187 = vector.broadcast %false_6 : i1 to vector<8xi1>
    %188 = vector.maskedload %alloc_18[%c0, %c2, %c4], %187, %186 : memref<6x7x6xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
    %189 = arith.divsi %149, %c1163687881_i32 : i32
    %190 = math.cttz %c0_i16 : i16
    %191 = math.cos %cst_5 : f16
    %192 = arith.maxsi %extracted, %c1_i32 : i32
    %193 = math.ceil %cst_3 : f32
    %194 = arith.xori %false_6, %false : i1
    %splat_43 = tensor.splat %false_6 : tensor<6x7x6xi1>
    %195 = memref.realloc %alloc_11 : memref<7xi64> to memref<6xi64>
    %196 = vector.extract_strided_slice %152 {offsets = [1], sizes = [3], strides = [1]} : vector<8x6xi1> to vector<3x6xi1>
    %197 = tensor.empty() : tensor<6x7x6xi16>
    %mapped_44 = linalg.map ins(%alloc_20, %alloc_7, %alloc_20 : memref<6x7x6xi16>, memref<6x7x6xi16>, memref<6x7x6xi16>) outs(%197 : tensor<6x7x6xi16>)
      (%in: i16, %in_52: i16, %in_53: i16) {
        %249 = affine.max affine_map<(d0) -> (d0 * 4)>(%c7)
        %alloc_54 = memref.alloc() : memref<6x7xi32>
        %250 = tensor.empty() : tensor<8x7xi32>
        %251 = linalg.matmul ins(%5, %alloc_54 : tensor<8x6xi32>, memref<6x7xi32>) outs(%250 : tensor<8x7xi32>) -> tensor<8x7xi32>
        %252 = arith.maxsi %c1371185289_i32, %c291171020_i32 : i32
        %253 = affine.apply affine_map<(d0, d1) -> (((d1 * -2) floordiv 4 + d1 * 2) ceildiv 2)>(%144, %c8)
        %254 = index.sub %114, %rank_42
        %255 = arith.floordivsi %extracted, %c1163687881_i32 : i32
        affine.for %arg1 = 0 to 44 {
        }
        %256 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %257 = index.divu %174, %159
        %258 = index.sub %123, %c4
        %259 = arith.divf %cst_4, %cst_5 : f16
        vector.print %49 : vector<6x7x6xi32>
        %260 = math.round %splat_41 : tensor<7x7xf32>
        %261 = arith.minsi %c1371185289_i32, %c1163687881_i32 : i32
        %262 = math.sqrt %14 : tensor<8x6xf16>
        %263 = vector.load %alloc_22[] : memref<i16>, vector<8x6xi16>
        %264 = vector.broadcast %c15 : index to vector<6xindex>
        %265 = vector.broadcast %149 : i32 to vector<6xi32>
        vector.scatter %alloc_12[%c3, %c0] [%264], %139, %265 : memref<8x6xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %alloc_55 = memref.alloc() : memref<7x7xi64>
        %266 = math.fma %8, %8, %8 : tensor<7xf16>
        %267 = math.rsqrt %cst : f16
        %c1_i32_56 = arith.constant 1 : i32
        %c0_i32_57 = arith.constant 0 : i32
        %268 = vector.transfer_read %splat[%59, %c1, %c2], %c0_i32_57 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<6x7x6xi32>, vector<6x4xi32>
        scf.if %false {
          %279 = arith.ceildivsi %c27006_i16, %c0_i16 : i16
          %collapsed_62 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
          %c140475096_i32 = arith.constant 140475096 : i32
          %280 = vector.multi_reduction <maxsi>, %86, %86 [] : vector<24xi32> to vector<24xi32>
          %281 = math.log1p %10 : tensor<7xf32>
          %282 = arith.maxui %c0_i16, %in : i16
          %283 = tensor.empty(%123) : tensor<?xi16>
          memref.store %149, %alloc_23[%c4] : memref<7xi32>
        }
        %269 = tensor.empty() : tensor<7x7xi64>
        %mapped_58 = linalg.map ins(%7 : tensor<7x7xi64>) outs(%269 : tensor<7x7xi64>)
          (%in_62: i64) {
            %279 = math.floor %cst : f16
            %280 = math.cttz %11 : tensor<8x6xi16>
            %281 = vector.broadcast %c27006_i16 : i16 to vector<7xi16>
            %282 = arith.xori %c27006_i16, %c0_i16 : i16
            %283 = vector.splat %c14 : vector<7xindex>
            %284 = arith.mulf %cst_2, %cst_2 : f32
            %c1346665287_i64 = arith.constant 1346665287 : i64
            %cast_63 = tensor.cast %5 : tensor<8x6xi32> to tensor<?x?xi32>
            %285 = math.absi %in_53 : i16
            %286 = index.ceildivs %144, %146
            %287 = arith.remf %cst_3, %cst_1 : f32
            %288 = index.sub %c15, %c8
            %c319993858_i64 = arith.constant 319993858 : i64
            %289 = vector.extract_strided_slice %281 {offsets = [2], sizes = [5], strides = [1]} : vector<7xi16> to vector<5xi16>
            %290 = index.add %c11, %c9
            vector.print %281 : vector<7xi16>
            %291 = tensor.empty() : tensor<7x7xi1>
            %alloc_64 = memref.alloc() : memref<8x6xi64>
            %292 = arith.shrsi %in_52, %c27006_i16 : i16
            %293 = vector.splat %c3 : vector<7x7xindex>
            %294 = memref.realloc %alloc_10 : memref<7xf16> to memref<8xf16>
            %295 = index.castu %254 : index to i32
            %296 = vector.broadcast %in_53 : i16 to vector<6x6xi16>
            %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %263, %263, %296 : vector<8x6xi16>, vector<8x6xi16> into vector<6x6xi16>
            %298 = math.ceil %splat_41 : tensor<7x7xf32>
            memref.store %in_53, %182[%c2, %c4] : memref<8x6xi16>
            %299 = math.absi %4 : tensor<6x7x6xi32>
            %300 = arith.mulf %cst_1, %cst_1 : f32
            %301 = index.divu %26, %rank_42
            %cast_65 = tensor.cast %17 : tensor<8x6xi1> to tensor<?x?xi1>
            %302 = index.mul %c10, %258
            %rank_66 = tensor.rank %7 : tensor<7x7xi64>
            %collapsed_67 = tensor.collapse_shape %119 [[0, 1]] : tensor<8x6xi1> into tensor<48xi1>
            %c1_i64_68 = arith.constant 1 : i64
            linalg.yield %c1_i64_68 : i64
          }
        %cst_59 = arith.constant 1.000000e+00 : f32
        %cst_60 = arith.constant 0.000000e+00 : f32
        %270 = vector.transfer_read %10[%c10], %cst_60 : tensor<7xf32>, vector<f32>
        %271 = index.ceildivs %175, %c5
        %272 = vector.reduction <add>, %29 : vector<3xi32> into i32
        %273 = index.divs %c11, %174
        %274 = arith.divui %c27006_i16, %126 : i16
        %275 = arith.divsi %77, %c1163687881_i32 : i32
        %276 = arith.ceildivsi %true, %true : i1
        %alloc_61 = memref.alloc() : memref<6x6xi32>
        %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_61, %alloc_61 : memref<6x6xi32>, memref<6x6xi32>) outs(%4 : tensor<6x7x6xi32>) {
        ^bb0(%in_62: i32, %in_63: i32, %out: i32):
          %279 = arith.maxf %cst_2, %cst_3 : f32
          %280 = arith.maxsi %c1163687881_i32, %extracted : i32
          %alloc_64 = memref.alloc() : memref<6x7x6xi1>
          memref.tensor_store %splat_43, %alloc_64 : memref<6x7x6xi1>
          %281 = math.log2 %cst_5 : f16
          %c1_i64_65 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %282 = vector.transfer_read %7[%254, %rank_42], %c0_i64 : tensor<7x7xi64>, vector<i64>
          %283 = vector.multi_reduction <minui>, %88, %139 [0] : vector<7x6xi1> to vector<6xi1>
          memref.store %c1_i32_56, %alloc_12[%c4, %c4] : memref<8x6xi32>
          %284 = arith.maxsi %77, %c1_i32 : i32
          %dest_66, %accumulated_value_67 = vector.scan <minsi>, %152, %139 {inclusive = true, reduction_dim = 0 : i64} : vector<8x6xi1>, vector<6xi1>
          %rank_68 = tensor.rank %13 : tensor<7x7xf32>
          %c474241065_i64 = arith.constant 474241065 : i64
          %285 = vector.extract_strided_slice %152 {offsets = [2], sizes = [5], strides = [1]} : vector<8x6xi1> to vector<5x6xi1>
          %286 = math.floor %10 : tensor<7xf32>
          %cast_69 = tensor.cast %5 : tensor<8x6xi32> to tensor<?x?xi32>
          %collapsed_70 = tensor.collapse_shape %17 [[0, 1]] : tensor<8x6xi1> into tensor<48xi1>
          %287 = vector.broadcast %c1371185289_i32 : i32 to vector<6xi32>
          %288 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %97, %70, %287 : vector<8x6xi32>, vector<8xi32> into vector<6xi32>
          %289 = index.add %72, %c14
          %290 = arith.remui %false_6, %false_6 : i1
          %splat_71 = tensor.splat %c1_i32_56 : tensor<6x7x6xi32>
          %291 = affine.apply affine_map<(d0) -> ((((d0 - 128) ceildiv 8) floordiv 32) ceildiv 16 - (d0 - 128))>(%c6)
          %292 = vector.flat_transpose %141 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
          %293 = arith.floordivsi %true, %true : i1
          %294 = vector.broadcast %c11 : index to vector<4xindex>
          %295 = vector.broadcast %true : i1 to vector<4xi1>
          vector.scatter %alloc_9[%c1, %c4] [%294], %295, %295 : memref<7x7xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
          %296 = math.exp %14 : tensor<8x6xf16>
          %297 = index.casts %145 : index to i32
          %298 = arith.remf %cst, %cst_4 : f16
          %299 = math.log10 %8 : tensor<7xf16>
          %300 = arith.floordivsi %c1_i64, %c1_i64_65 : i64
          %301 = math.exp %cst_5 : f16
          %302 = math.absf %13 : tensor<7x7xf32>
          %303 = arith.addi %c0_i16, %in : i16
          %c0_i32_72 = arith.constant 0 : i32
          %304 = vector.transfer_read %9[%72], %c0_i32_72 : tensor<7xi32>, vector<i32>
          linalg.yield %in_62 : i32
        } -> tensor<6x7x6xi32>
        %278 = arith.mulf %cst_4, %cst : f16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %198 = math.absf %cst_5 : f16
    %199 = scf.while (%arg1 = %cst_1) : (f32) -> f32 {
      %249 = arith.shrsi %extracted, %c814819294_i32 : i32
      %250 = arith.cmpf one, %cst_0, %cst_5 : f16
      %cast_52 = tensor.cast %7 : tensor<7x7xi64> to tensor<?x?xi64>
      %alloc_53 = memref.alloc() : memref<6x4xi16>
      %251 = tensor.empty() : tensor<8x4xi16>
      %252 = linalg.matmul ins(%3, %alloc_53 : tensor<8x6xi16>, memref<6x4xi16>) outs(%251 : tensor<8x4xi16>) -> tensor<8x4xi16>
      %253 = arith.minui %c291171020_i32, %77 : i32
      %254 = math.expm1 %splat_41 : tensor<7x7xf32>
      %255 = vector.broadcast %c291171020_i32 : i32 to vector<7xi32>
      %256 = vector.gather %splat[%145, %c13, %89] [%255], %30, %255 : tensor<6x7x6xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %257 = math.log10 %arg1 : f32
      scf.condition(%false) %cst_3 : f32
    } do {
    ^bb0(%arg1: f32):
      %splat_52 = tensor.splat %149 : tensor<7x7xi32>
      %249 = arith.minui %c1371185289_i32, %c1371185289_i32 : i32
      %250 = vector.gather %splat_31[%c11, %26] [%97], %152, %97 : tensor<8x6xi32>, vector<8x6xi32>, vector<8x6xi1>, vector<8x6xi32> into vector<8x6xi32>
      %251 = vector.splat %170 : vector<7xindex>
      %rank_53 = tensor.rank %2 : tensor<7x7xi64>
      %c1839684890_i64 = arith.constant 1839684890 : i64
      %252 = affine.load %alloc_7[%c13, %c9, %c11] : memref<6x7x6xi16>
      %253 = scf.if %false_6 -> (i32) {
        %261 = arith.floordivsi %false, %false_6 : i1
        %rank_55 = tensor.rank %9 : tensor<7xi32>
        affine.store %extracted, %alloc_23[%c11] : memref<7xi32>
        %c1394086957_i32 = arith.constant 1394086957 : i32
        bufferization.dealloc_tensor %3 : tensor<8x6xi16>
        %262 = math.rsqrt %cst_4 : f16
        %263 = vector.broadcast %false : i1 to vector<6x6xi1>
        %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %196, %196, %263 : vector<3x6xi1>, vector<3x6xi1> into vector<6x6xi1>
        %265 = arith.cmpf ult, %cst_1, %cst_1 : f32
        scf.yield %c814819294_i32 : i32
      } else {
        %261 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) mod 2)>(%c5, %rank_33)
        %262 = vector.extract %187[5] : vector<8xi1>
        %263 = vector.extract %48[2] : vector<6x7x6xi1>
        %264 = bufferization.clone %alloc_18 : memref<6x7x6xf16> to memref<6x7x6xf16>
        %alloc_55 = memref.alloc() : memref<8x6xf32>
        memref.copy %alloc_21, %alloc_55 : memref<8x6xf32> to memref<8x6xf32>
        %265 = index.divu %85, %174
        %266 = math.ipowi %0, %5 : tensor<8x6xi32>
        %267 = vector.splat %161 : vector<6x7x6xindex>
        scf.yield %c1_i32 : i32
      }
      memref.store %252, %alloc_15[%c4, %c2] : memref<7x7xi16>
      %254 = math.log1p %8 : tensor<7xf16>
      %255 = math.round %10 : tensor<7xf32>
      %256 = arith.addf %cst_0, %cst_0 : f16
      %257 = math.expm1 %collapsed : tensor<48xf16>
      %generated_54 = tensor.generate %174 {
      ^bb0(%arg2: index):
        bufferization.dealloc_tensor %3 : tensor<8x6xi16>
        %261 = math.absi %5 : tensor<8x6xi32>
        %262 = vector.flat_transpose %141 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %263 = arith.minf %cst_3, %cst_2 : f32
        tensor.yield %false_6 : i1
      } : tensor<?xi1>
      %258 = vector.extract %187[4] : vector<8xi1>
      %259 = vector.broadcast %149 : i32 to vector<7xi32>
      %260 = vector.gather %4[%143, %143, %c5] [%259], %30, %259 : tensor<6x7x6xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      scf.yield %cst_3 : f32
    }
    %200 = affine.max affine_map<(d0) -> (d0 mod 16)>(%rank)
    %201 = arith.shli %c1371185289_i32, %extracted : i32
    %202 = math.floor %cst_3 : f32
    %203 = index.divu %85, %98
    %rank_45 = tensor.rank %0 : tensor<8x6xi32>
    %204 = arith.divsi %c1163687881_i32, %c1371185289_i32 : i32
    memref.store %c1371185289_i32, %122[] : memref<i32>
    %dest_46, %accumulated_value_47 = vector.scan <mul>, %152, %139 {inclusive = true, reduction_dim = 0 : i64} : vector<8x6xi1>, vector<6xi1>
    %205 = math.copysign %collapsed, %collapsed : tensor<48xf16>
    %206 = arith.addi %c27006_i16, %126 : i16
    %207 = math.round %13 : tensor<7x7xf32>
    %208 = arith.divsi %c291171020_i32, %c1_i32 : i32
    %209 = vector.transpose %81, [1, 0] : vector<6x7xi32> to vector<7x6xi32>
    %210 = math.log2 %15 : tensor<8x6xf16>
    %211 = index.divs %98, %203
    %212 = index.maxu %c8, %133
    vector.print %19 : vector<8xi32>
    %213 = arith.maxsi %false, %false : i1
    %214 = arith.minui %c27006_i16, %c28906_i16 : i16
    %215 = index.add %c4, %rank_33
    %cast_48 = tensor.cast %18 : tensor<6x6x7xi32> to tensor<?x?x?xi32>
    %rank_49 = tensor.rank %generated : tensor<?xi64>
    bufferization.dealloc_tensor %4 : tensor<6x7x6xi32>
    %216 = arith.cmpi sle, %false, %true : i1
    %217 = arith.remf %cst_4, %cst_0 : f16
    %218 = arith.divsi %c1163687881_i32, %extracted : i32
    %219 = arith.cmpf olt, %cst_2, %cst_2 : f32
    %220 = math.log2 %cst_1 : f32
    %221 = math.cos %13 : tensor<7x7xf32>
    %222 = arith.muli %126, %c0_i16 : i16
    %223 = arith.mulf %cst_2, %cst_3 : f32
    %224 = bufferization.to_tensor %167 : memref<8x6xf16>
    %225 = arith.minui %true, %false_6 : i1
    %226 = tensor.empty() : tensor<7x7xi16>
    %227 = arith.remsi %77, %77 : i32
    %228 = math.round %13 : tensor<7x7xf32>
    %229 = index.casts %c1163687881_i32 : i32 to index
    %230 = vector.broadcast %c1_i64 : i64 to vector<7x7xi64>
    %231 = vector.broadcast %false : i1 to vector<7x7xi1>
    %232 = vector.broadcast %77 : i32 to vector<7x7xi32>
    %233 = vector.gather %alloc_19[%133, %c5, %110] [%232], %231, %230 : memref<6x7x6xi64>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi64> into vector<7x7xi64>
    %234 = tensor.empty() : tensor<7x7xi32>
    %235 = tensor.empty(%161) : tensor<7x?xf32>
    %cast_50 = tensor.cast %12 : tensor<8x6xi16> to tensor<?x?xi16>
    %236 = math.log1p %splat_41 : tensor<7x7xf32>
    vector.print %97 : vector<8x6xi32>
    %237 = vector.multi_reduction <xor>, %187, %false_6 [0] : vector<8xi1> to i1
    %238 = index.castu %144 : index to i32
    %239 = math.powf %13, %6 : tensor<7x7xf32>
    %240 = math.copysign %splat_41, %6 : tensor<7x7xf32>
    %241 = math.expm1 %cst_2 : f32
    %242 = arith.ceildivsi %c1_i32, %c1_i32 : i32
    %243 = tensor.empty() : tensor<7xi1>
    %244 = linalg.copy ins(%from_elements : tensor<7xi1>) outs(%243 : tensor<7xi1>) -> tensor<7xi1>
    %245 = tensor.empty() : tensor<6x6x7xi32>
    %transposed_51 = linalg.transpose ins(%splat : tensor<6x7x6xi32>) outs(%245 : tensor<6x6x7xi32>) permutation = [2, 0, 1] 
    %246 = tensor.empty() : tensor<7xi64>
    %reduced = linalg.reduce ins(%2 : tensor<7x7xi64>) outs(%246 : tensor<7xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %249 = arith.addi %c1163687881_i32, %c1371185289_i32 : i32
        %250 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %19, %70, %149 : vector<8xi32>, vector<8xi32> into i32
        %251 = math.atan %cst_3 : f32
        %252 = vector.bitcast %88 : vector<7x6xi1> to vector<7x6xi1>
        %253 = arith.xori %77, %149 : i32
        %254 = math.powf %splat_41, %6 : tensor<7x7xf32>
        %255 = arith.divsi %c28906_i16, %c0_i16 : i16
        %256 = vector.splat %c9 : vector<7x7xindex>
        %c1_i64_52 = arith.constant 1 : i64
        linalg.yield %c1_i64_52 : i64
      }
    %247 = scf.parallel (%arg1) = (%26) to (%211) step (%c7) init (%116) -> vector<8xi32> {
      %249 = math.copysign %8, %8 : tensor<7xf16>
      %250 = arith.floordivsi %77, %c1163687881_i32 : i32
      %from_elements_52 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_5, %cst_4, %cst_4, %cst_5, %cst_5, %cst, %cst_5, %cst, %cst_5, %cst_5, %cst, %cst_5, %cst_4, %cst, %cst, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst, %cst_0, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_5, %cst, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst, %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_4, %cst, %cst_5, %cst_4, %cst_4, %cst, %cst, %cst_0, %cst_5, %cst, %cst, %cst_0, %cst_4, %cst, %cst_4, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_4, %cst_4, %cst_5, %cst_4, %cst_4, %cst_5, %cst_4, %cst_0, %cst_0, %cst, %cst, %cst_4, %cst_0, %cst_4, %cst, %cst, %cst_4, %cst_0, %cst_4, %cst_0, %cst, %cst_5, %cst_4, %cst_0, %cst_0, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_4, %cst_0, %cst_5, %cst_0, %cst_4, %cst_0, %cst_5, %cst, %cst, %cst, %cst_5, %cst_4, %cst_4, %cst_5, %cst, %cst, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_4, %cst_0, %cst_5, %cst, %cst_5, %cst_4, %cst_0, %cst_4, %cst_4, %cst, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst, %cst, %cst_4, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst, %cst, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst, %cst_0, %cst_0, %cst, %cst_4, %cst_5, %cst, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst, %cst_4, %cst, %cst, %cst_0, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst_0, %cst, %cst, %cst_4, %cst_5, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_0, %cst, %cst_0, %cst_4, %cst_0, %cst_5, %cst_5, %cst_4, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst, %cst_5, %cst, %cst_4, %cst, %cst, %cst_0, %cst : tensor<6x7x6xf16>
      %251 = math.absf %10 : tensor<7xf32>
      %252 = scf.if %false_6 -> (memref<6x7x6xi64>) {
        %261 = math.ctpop %3 : tensor<8x6xi16>
        %262 = math.round %14 : tensor<8x6xf16>
        %263 = math.log1p %cst_4 : f16
        %264 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %265 = vector.broadcast %extracted : i32 to vector<7xi32>
        %266 = vector.gather %6[%174, %59] [%265], %30, %264 : tensor<7x7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %267 = arith.maxsi %c291171020_i32, %c1371185289_i32 : i32
        %268 = arith.mulf %cst_5, %cst_4 : f16
        %269 = index.divu %181, %59
        %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 8)>(%c4, %211, %146, %98)
        scf.yield %alloc_19 : memref<6x7x6xi64>
      } else {
        %collapsed_56 = tensor.collapse_shape %generated_28 [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
        %261 = bufferization.clone %alloc_22 : memref<i16> to memref<i16>
        %262 = bufferization.to_tensor %alloc_22 : memref<i16>
        affine.store %false_6, %alloc_16[%c0, %c9] : memref<8x6xi1>
        %from_elements_57 = tensor.from_elements %c28906_i16, %c0_i16, %c28906_i16, %c0_i16, %c27006_i16, %126, %c0_i16, %c28906_i16, %126, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c0_i16, %126, %c28906_i16, %c27006_i16, %c28906_i16, %126, %c27006_i16, %c0_i16, %c28906_i16, %c27006_i16, %c28906_i16, %126, %c27006_i16, %126, %c0_i16, %126, %c28906_i16, %126, %c28906_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %126, %c0_i16, %126, %c0_i16, %c28906_i16, %126, %c27006_i16, %c27006_i16, %c27006_i16, %c0_i16, %c27006_i16, %c28906_i16, %c0_i16, %126, %c27006_i16, %126, %c28906_i16, %c27006_i16, %c28906_i16, %c0_i16, %126, %c0_i16, %c0_i16, %126, %c27006_i16, %c28906_i16, %126, %c0_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %126, %126, %c28906_i16, %c27006_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %c28906_i16, %126, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c27006_i16, %c28906_i16, %126, %c0_i16, %126, %c0_i16, %c28906_i16, %c0_i16, %c28906_i16, %126, %c0_i16, %c27006_i16, %c0_i16, %c0_i16, %c0_i16, %c28906_i16, %c27006_i16, %126, %c28906_i16, %c28906_i16, %c28906_i16, %c0_i16, %c27006_i16, %c0_i16, %c0_i16, %c27006_i16, %c28906_i16, %c28906_i16, %c0_i16, %126, %126, %c28906_i16, %126, %c28906_i16, %c28906_i16, %c0_i16, %126, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c0_i16, %c27006_i16, %126, %c27006_i16, %c28906_i16, %c27006_i16, %c28906_i16, %126, %c28906_i16, %c27006_i16, %c28906_i16, %c27006_i16, %c27006_i16, %c27006_i16, %126, %c27006_i16, %c28906_i16, %c28906_i16, %c0_i16, %c27006_i16, %c0_i16, %c0_i16, %126, %126, %c27006_i16, %c27006_i16, %c27006_i16, %126, %126, %c28906_i16, %126, %c28906_i16, %126, %c0_i16, %c0_i16, %126, %c0_i16, %c0_i16, %126, %c27006_i16, %c27006_i16, %c0_i16, %c28906_i16, %c28906_i16, %c0_i16, %c0_i16, %c28906_i16, %c28906_i16, %126, %c28906_i16, %c0_i16, %c27006_i16, %c28906_i16, %c0_i16, %c27006_i16, %126, %c27006_i16, %c28906_i16, %c0_i16, %c28906_i16, %c28906_i16, %c27006_i16, %c28906_i16, %126, %c28906_i16, %c28906_i16, %c0_i16, %126, %c27006_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c28906_i16, %c0_i16, %c28906_i16, %c27006_i16, %126, %c28906_i16, %126, %c0_i16, %126, %c27006_i16, %126, %c0_i16, %c27006_i16, %c27006_i16, %c0_i16, %126, %c27006_i16, %126, %c0_i16, %c0_i16, %126, %c27006_i16, %c0_i16, %c27006_i16, %c28906_i16, %c27006_i16, %126, %126, %c0_i16, %c0_i16, %c27006_i16, %c0_i16, %c27006_i16, %c28906_i16, %c0_i16, %c27006_i16, %c28906_i16, %126, %c27006_i16, %126, %126, %c28906_i16, %c28906_i16, %c0_i16, %126, %c0_i16, %c28906_i16, %126, %c27006_i16, %c27006_i16, %c0_i16, %c28906_i16 : tensor<6x7x6xi16>
        %263 = vector.splat %212 : vector<7xindex>
        %264 = bufferization.clone %alloc_12 : memref<8x6xi32> to memref<8x6xi32>
        %265 = arith.divui %extracted, %extracted : i32
        scf.yield %alloc_19 : memref<6x7x6xi64>
      }
      memref.alloca_scope  {
        %extracted_56 = tensor.extract %15[%c1, %c4] : tensor<8x6xf16>
        %261 = memref.realloc %alloc_10 : memref<7xf16> to memref<4xf16>
        %262 = math.fma %15, %15, %splat_40 : tensor<8x6xf16>
        %263 = arith.minui %c291171020_i32, %c1163687881_i32 : i32
        %264 = affine.min affine_map<(d0, d1, d2) -> (32, d1 floordiv 16 + 36)>(%rank_45, %c4, %c1)
        %265 = math.rsqrt %cst : f16
        %266 = affine.min affine_map<(d0) -> (d0, 0, -32, 0)>(%175)
        %267 = tensor.empty() : tensor<8x6xi1>
        %268 = math.log1p %extracted_56 : f16
        memref.assume_alignment %93, 16 : memref<6x7x6xf16>
        %269 = arith.xori %true, %237 : i1
        vector.print %232 : vector<7x7xi32>
        %270 = arith.cmpf ult, %cst_2, %cst_3 : f32
        %rank_57 = tensor.rank %112 : tensor<7x7xi64>
        %271 = vector.broadcast %170 : index to vector<7xindex>
        %272 = vector.broadcast %c1_i64 : i64 to vector<7xi64>
        vector.scatter %252[%c2, %c4, %c1] [%271], %30, %272 : memref<6x7x6xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %273 = math.floor %14 : tensor<8x6xf16>
        %274 = arith.floordivsi %237, %true : i1
        %275 = tensor.empty() : tensor<8x6xf32>
        %276 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        %277 = vector.broadcast %149 : i32 to vector<7xi32>
        %278 = vector.gather %275[%c0, %175] [%277], %30, %276 : tensor<8x6xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %c0_i32_58 = arith.constant 0 : i32
        %c0_i32_59 = arith.constant 0 : i32
        %279 = vector.transfer_read %splat[%72, %181, %145], %c0_i32_59 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<6x7x6xi32>, vector<4x7xi32>
        %280 = affine.max affine_map<(d0, d1) -> (d1 - d0 * 4 + 96, d0, d1 - 2)>(%rank_45, %c14)
        %281 = memref.realloc %41 : memref<7xf16> to memref<4xf16>
        %rank_60 = tensor.rank %splat : tensor<6x7x6xi32>
        %282 = arith.shli %c291171020_i32, %c814819294_i32 : i32
        %cst_61 = arith.constant 1.000000e+00 : f16
        %cst_62 = arith.constant 0.000000e+00 : f16
        %283 = vector.transfer_read %167[%c12, %c1], %cst_62 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<8x6xf16>, vector<4xf16>
        %284 = vector.broadcast %cst : f16 to vector<6xf16>
        %285 = vector.maskedload %alloc_10[%c3], %139, %284 : memref<7xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %286 = vector.extract %49[2] : vector<6x7x6xi32>
        %287 = arith.remui %c27006_i16, %c0_i16 : i16
        %288 = math.ctpop %246 : tensor<7xi64>
        %289 = math.ceil %14 : tensor<8x6xf16>
        %alloca_63 = memref.alloca() : memref<7x7xf32>
        %splat_64 = tensor.splat %false : tensor<7xi1>
        %290 = bufferization.clone %76 : memref<8x6xi1> to memref<8x6xi1>
      }
      %253 = affine.load %122[] : memref<i32>
      %254 = scf.if %false_6 -> (memref<7xi32>) {
        %261 = math.rsqrt %cst_0 : f16
        %262 = arith.minui %extracted, %c291171020_i32 : i32
        %263 = arith.addi %c1371185289_i32, %c1163687881_i32 : i32
        %264 = index.sizeof
        %265 = math.log2 %splat_32 : tensor<6x7x6xf16>
        %alloca_56 = memref.alloca() : memref<8x6xi1>
        %266 = arith.minf %cst_5, %cst_0 : f16
        %267 = affine.load %alloc_13[%c7, %c6] : memref<7x7xf32>
        scf.yield %alloc_23 : memref<7xi32>
      } else {
        %261 = arith.divsi %c1_i32, %77 : i32
        %262 = arith.maxui %253, %c291171020_i32 : i32
        %263 = arith.minsi %c27006_i16, %c0_i16 : i16
        %264 = bufferization.clone %alloc_9 : memref<7x7xi1> to memref<7x7xi1>
        %265 = math.log10 %8 : tensor<7xf16>
        %266 = bufferization.to_memref %3 : memref<8x6xi16>
        %267 = arith.shrsi %c1_i64, %c1_i64 : i64
        %268 = math.fma %cst_4, %cst_0, %cst : f16
        scf.yield %alloc_23 : memref<7xi32>
      }
      %true_53 = index.bool.constant true
      %from_elements_54 = tensor.from_elements %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_3, %cst_1, %cst_2, %cst_3, %cst_2, %cst_1, %cst_1, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_1, %cst_1, %cst_2, %cst_3, %cst_1, %cst_2, %cst_2, %cst_3, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2 : tensor<7x7xf32>
      %255 = bufferization.to_memref %splat_31 : memref<8x6xi32>
      %rank_55 = tensor.rank %18 : tensor<6x6x7xi32>
      %256 = math.exp %224 : tensor<8x6xf16>
      %257 = bufferization.clone %alloc_17 : memref<7x7xi16> to memref<7x7xi16>
      %258 = index.divu %rank_45, %211
      %259 = math.atan %splat_41 : tensor<7x7xf32>
      %260 = vector.broadcast %c291171020_i32 : i32 to vector<8xi32>
      scf.reduce(%260)  : vector<8xi32> {
      ^bb0(%arg2: vector<8xi32>, %arg3: vector<8xi32>):
        %261 = math.ipowi %0, %5 : tensor<8x6xi32>
        %262 = math.cos %cst_0 : f16
        memref.store %c1371185289_i32, %alloc_8[%c2, %c0] : memref<7x7xi32>
        %263 = index.add %89, %c10
        %264 = vector.load %alloc_10[%c4] : memref<7xf16>, vector<7xf16>
        %265 = arith.cmpi ule, %extracted, %extracted : i32
        %266 = arith.remf %cst_2, %cst_1 : f32
        %267 = arith.remf %cst_2, %cst_3 : f32
        %268 = vector.broadcast %c1163687881_i32 : i32 to vector<8xi32>
        scf.reduce.return %268 : vector<8xi32>
      }
      scf.yield
    }
    %248 = affine.vector_load %alloc_21[%145, %181] : memref<8x6xf32>, vector<4xf32>
    affine.vector_store %30, %alloc_9[%rank_42, %c6] : memref<7x7xi1>, vector<7xi1>
    vector.print %19 : vector<8xi32>
    vector.print %29 : vector<3xi32>
    vector.print %30 : vector<7xi1>
    vector.print %47 : vector<6x7x6xi32>
    vector.print %48 : vector<6x7x6xi1>
    vector.print %49 : vector<6x7x6xi32>
    vector.print %55 : vector<7x6xi1>
    vector.print %63 : vector<5x7x6xi1>
    vector.print %70 : vector<8xi32>
    vector.print %81 : vector<6x7xi32>
    vector.print %86 : vector<24xi32>
    vector.print %88 : vector<7x6xi1>
    vector.print %97 : vector<8x6xi32>
    vector.print %116 : vector<8xi32>
    vector.print %129 : vector<7x7xf32>
    vector.print %130 : vector<7x7xf32>
    vector.print %139 : vector<6xi1>
    vector.print %141 : vector<3xi32>
    vector.print %152 : vector<8x6xi1>
    vector.print %155 : vector<24xi32>
    vector.print %186 : vector<8xf16>
    vector.print %187 : vector<8xi1>
    vector.print %188 : vector<8xf16>
    vector.print %196 : vector<3x6xi1>
    vector.print %230 : vector<7x7xi64>
    vector.print %231 : vector<7x7xi1>
    vector.print %232 : vector<7x7xi32>
    vector.print %233 : vector<7x7xi64>
    vector.print %248 : vector<4xf32>
    vector.print %false : i1
    vector.print %c291171020_i32 : i32
    vector.print %cst : f16
    vector.print %c814819294_i32 : i32
    vector.print %c1163687881_i32 : i32
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %c27006_i16 : i16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %c1371185289_i32 : i32
    vector.print %c28906_i16 : i16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %false_6 : i1
    vector.print %c1_i32 : i32
    vector.print %77 : i32
    vector.print %c1_i64 : i64
    vector.print %126 : i16
    vector.print %149 : i32
    vector.print %extracted : i32
    vector.print %c0_i16 : i16
    vector.print %237 : i1
    return
  }
}
