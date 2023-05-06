module {
  func.func private @func1(%arg0: memref<7x4xi16>, %arg1: f16, %arg2: memref<15x11xf32>) {
    %c349314485_i32 = arith.constant 349314485 : i32
    %cst = arith.constant 1.48139418E+9 : f32
    %c-29481_i16 = arith.constant -29481 : i16
    %c-12489_i16 = arith.constant -12489 : i16
    %c-26382_i16 = arith.constant -26382 : i16
    %cst_0 = arith.constant 1.455000e+09 : f32
    %c1375187546_i32 = arith.constant 1375187546 : i32
    %c580135393_i64 = arith.constant 580135393 : i64
    %c446210263_i64 = arith.constant 446210263 : i64
    %c1845219569_i32 = arith.constant 1845219569 : i32
    %false = arith.constant false
    %c23118_i16 = arith.constant 23118 : i16
    %c635472731_i64 = arith.constant 635472731 : i64
    %cst_1 = arith.constant 1.399200e+04 : f16
    %cst_2 = arith.constant 2.14624166E+9 : f32
    %cst_3 = arith.constant 0x4D2452D2 : f32
    %0 = tensor.empty() : tensor<7x4xf16>
    %1 = tensor.empty() : tensor<7x4xf32>
    %2 = tensor.empty() : tensor<7x4xi16>
    %3 = tensor.empty() : tensor<15x11xf16>
    %4 = tensor.empty() : tensor<7x4xi32>
    %5 = tensor.empty() : tensor<7x7xi16>
    %6 = tensor.empty() : tensor<7x7xi32>
    %7 = tensor.empty() : tensor<7x4xi32>
    %8 = tensor.empty() : tensor<7x7xi1>
    %9 = tensor.empty() : tensor<7x4xi16>
    %10 = tensor.empty() : tensor<7x4xi16>
    %11 = tensor.empty() : tensor<7x7xi1>
    %12 = tensor.empty() : tensor<15x11xi32>
    %13 = tensor.empty() : tensor<7x4xi1>
    %14 = tensor.empty() : tensor<7x7xf16>
    %15 = tensor.empty() : tensor<7x4xi1>
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
    %alloc = memref.alloc() : memref<15x11xf16>
    %alloc_4 = memref.alloc() : memref<15x11xf16>
    %alloc_5 = memref.alloc() : memref<7x4xi64>
    %alloc_6 = memref.alloc() : memref<7x4xf16>
    %alloc_7 = memref.alloc() : memref<7x4xi64>
    %alloc_8 = memref.alloc() : memref<7x4xf32>
    %alloc_9 = memref.alloc() : memref<7x7xf16>
    %alloc_10 = memref.alloc() : memref<15x11xi64>
    %alloc_11 = memref.alloc() : memref<15x11xi16>
    %alloc_12 = memref.alloc() : memref<15x11xi1>
    %alloc_13 = memref.alloc() : memref<15x11xi32>
    %alloc_14 = memref.alloc() : memref<7x7xi16>
    %alloc_15 = memref.alloc() : memref<7x7xi32>
    %alloc_16 = memref.alloc() : memref<7x4xf16>
    %alloc_17 = memref.alloc() : memref<7x4xi16>
    %alloc_18 = memref.alloc() : memref<7x4xi16>
    %16 = tensor.empty() : tensor<7x7xf16>
    %17 = linalg.copy ins(%14 : tensor<7x7xf16>) outs(%16 : tensor<7x7xf16>) -> tensor<7x7xf16>
    %18 = tensor.empty() : tensor<4x7xi16>
    %transposed = linalg.transpose ins(%2 : tensor<7x4xi16>) outs(%18 : tensor<4x7xi16>) permutation = [1, 0] 
    %alloc_19 = memref.alloc() : memref<15xi64>
    linalg.reduce ins(%alloc_10 : memref<15x11xi64>) outs(%alloc_19 : memref<15xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %262 = arith.maxui %c635472731_i64, %in : i64
        %263 = math.ipowi %c23118_i16, %c-26382_i16 : i16
        %expanded_44 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
        %264 = math.round %3 : tensor<15x11xf16>
        %265 = tensor.empty() : tensor<1x7xi16>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265 : tensor<1x7xi16>) outs(%expanded_44 : tensor<7x4x1xi16>) {
        ^bb0(%in_45: i16, %out: i16):
          %270 = math.round %14 : tensor<7x7xf16>
          %271 = vector.broadcast %cst : f32 to vector<1xf32>
          %272 = vector.multi_reduction <maxf>, %271, %cst_2 [0] : vector<1xf32> to f32
          %273 = math.absf %1 : tensor<7x4xf32>
          %274 = arith.maxsi %c1845219569_i32, %c349314485_i32 : i32
          %275 = affine.max affine_map<(d0) -> (((d0 floordiv 128) ceildiv 16) * 64 + 128)>(%c8)
          %276 = arith.floordivsi %c635472731_i64, %init : i64
          %277 = vector.broadcast %272 : f32 to vector<1x1xf32>
          %278 = vector.outerproduct %271, %271, %277 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
          %279 = vector.broadcast %cst : f32 to vector<7x4xf32>
          %280 = vector.fma %279, %279, %279 : vector<7x4xf32>
          %281 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
          %282 = vector.outerproduct %271, %271, %281 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
          %283 = vector.transpose %279, [1, 0] : vector<7x4xf32> to vector<4x7xf32>
          %284 = vector.broadcast %cst_0 : f32 to vector<4xf32>
          %285 = vector.insert %284, %280 [6] : vector<4xf32> into vector<7x4xf32>
          %collapsed_46 = tensor.collapse_shape %14 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
          %286 = index.mul %c8, %c11
          %287 = math.round %cst_0 : f32
          %288 = index.mul %275, %286
          %dest_47, %accumulated_value_48 = vector.scan <mul>, %280, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xf32>, vector<4xf32>
          %289 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
          %290 = vector.fma %289, %289, %280 : vector<7x4xf32>
          %291 = bufferization.clone %alloc_14 : memref<7x7xi16> to memref<7x7xi16>
          %292 = arith.remf %cst, %272 : f32
          %alloca = memref.alloca() : memref<7x4xf32>
          %splat_49 = tensor.splat %272 : tensor<7x4xf32>
          %293 = math.expm1 %0 : tensor<7x4xf16>
          %294 = index.maxs %c9, %c11
          %295 = math.round %cst_2 : f32
          %296 = arith.divui %c-12489_i16, %out : i16
          %297 = index.divu %c7, %c6
          %298 = arith.muli %out, %in_45 : i16
          %299 = vector.insert %284, %280 [2] : vector<4xf32> into vector<7x4xf32>
          %300 = arith.maxui %in, %in : i64
          %301 = arith.remui %in, %init : i64
          %302 = math.exp %cst_1 : f16
          %303 = math.exp %cst_3 : f32
          linalg.yield %c23118_i16 : i16
        } -> tensor<7x4x1xi16>
        %267 = arith.maxui %c23118_i16, %c-12489_i16 : i16
        %268 = vector.load %alloc_18[%c3, %c0] : memref<7x4xi16>, vector<15x11xi16>
        %269 = vector.transpose %268, [0, 1] : vector<15x11xi16> to vector<15x11xi16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg3, %arg4) = (%c14, %c12) to (%c4, %c13) step (%c14, %c13) {
      %extracted_44 = tensor.extract %13[%c6, %c1] : tensor<7x4xi1>
      %262 = arith.ori %c1375187546_i32, %c349314485_i32 : i32
      %263 = arith.remf %cst_3, %cst : f32
      %264 = affine.for %arg5 = 0 to 100 iter_args(%arg6 = %10) -> (tensor<7x4xi16>) {
        affine.yield %9 : tensor<7x4xi16>
      }
      %265 = math.sqrt %16 : tensor<7x7xf16>
      %rank_45 = tensor.rank %1 : tensor<7x4xf32>
      %266 = vector.broadcast %c635472731_i64 : i64 to vector<1xi64>
      %267 = vector.bitcast %266 : vector<1xi64> to vector<1xi64>
      %268 = arith.minsi %c23118_i16, %c-12489_i16 : i16
      %269 = arith.divf %cst, %cst_3 : f32
      %270 = math.ceil %3 : tensor<15x11xf16>
      %271 = arith.cmpi ule, %c446210263_i64, %c635472731_i64 : i64
      %272 = arith.maxsi %c1375187546_i32, %c1375187546_i32 : i32
      %273 = arith.minf %cst_3, %cst_2 : f32
      %generated_46 = tensor.generate %c5, %c2 {
      ^bb0(%arg5: index, %arg6: index):
        %276 = math.log %cst_2 : f32
        %277 = arith.negf %cst_2 : f32
        %278 = affine.max affine_map<(d0, d1) -> (d1, d0)>(%rank_45, %c10)
        %279 = arith.divsi %c635472731_i64, %c580135393_i64 : i64
        tensor.yield %false : i1
      } : tensor<?x?xi1>
      %274 = math.tanh %1 : tensor<7x4xf32>
      %275 = bufferization.clone %alloc_16 : memref<7x4xf16> to memref<7x4xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_14[%c6, %c6] : memref<7x7xi16>, vector<7xi16>
    affine.vector_store %19, %alloc_18[%c9, %c8] : memref<7x4xi16>, vector<7xi16>
    %alloc_20 = memref.alloc() : memref<15xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%alloc_19, %alloc_20 : memref<15xi64>, memref<15xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = vector.extract_strided_slice %19 {offsets = [1], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
    %23 = scf.if %false -> (i64) {
      %collapsed_44 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
      %262 = arith.shrui %c446210263_i64, %c635472731_i64 : i64
      %263 = math.fma %1, %1, %1 : tensor<7x4xf32>
      %264 = arith.remf %cst_2, %cst_3 : f32
      %265 = arith.maxsi %c23118_i16, %c-29481_i16 : i16
      %266 = index.add %c6, %c4
      %267 = arith.divf %cst_3, %cst_3 : f32
      %268 = math.exp2 %0 : tensor<7x4xf16>
      scf.yield %c580135393_i64 : i64
    } else {
      %262 = arith.ori %c23118_i16, %c-12489_i16 : i16
      %263 = math.exp2 %17 : tensor<7x7xf16>
      %264 = tensor.empty() : tensor<7x4xi64>
      %265 = vector.broadcast %c580135393_i64 : i64 to vector<15x11xi64>
      %266 = vector.broadcast %false : i1 to vector<15x11xi1>
      %267 = vector.broadcast %c1845219569_i32 : i32 to vector<15x11xi32>
      %268 = vector.gather %264[%c12, %c14] [%267], %266, %265 : tensor<7x4xi64>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi64> into vector<15x11xi64>
      %269 = arith.maxui %c-29481_i16, %c23118_i16 : i16
      %270 = math.ceil %cst_1 : f16
      %271 = vector.broadcast %c446210263_i64 : i64 to vector<7x4xi64>
      %272 = vector.broadcast %false : i1 to vector<7x4xi1>
      %273 = vector.broadcast %c1845219569_i32 : i32 to vector<7x4xi32>
      %274 = vector.gather %264[%c14, %c12] [%273], %272, %271 : tensor<7x4xi64>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi64> into vector<7x4xi64>
      %collapsed_44 = tensor.collapse_shape %3 [[0, 1]] : tensor<15x11xf16> into tensor<165xf16>
      %extracted_45 = tensor.extract %12[%c8, %c8] : tensor<15x11xi32>
      scf.yield %c446210263_i64 : i64
    }
    %24 = math.cttz %7 : tensor<7x4xi32>
    %25 = memref.load %alloc_11[%c10, %c1] : memref<15x11xi16>
    %26 = arith.shrui %23, %23 : i64
    scf.index_switch %c0 
    case 1 {
      %generated_44 = tensor.generate %c0 {
      ^bb0(%arg3: index, %arg4: index):
        %279 = arith.ceildivsi %c1845219569_i32, %c1845219569_i32 : i32
        %280 = memref.atomic_rmw assign %23, %alloc_19[%c10] : (i64, memref<15xi64>) -> i64
        %281 = math.cos %0 : tensor<7x4xf16>
        %false_51 = index.bool.constant false
        tensor.yield %c1845219569_i32 : i32
      } : tensor<?x11xi32>
      %262 = vector.broadcast %c2 : index to vector<11xindex>
      %263 = vector.broadcast %false : i1 to vector<11xi1>
      %264 = vector.broadcast %c-29481_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_17[%c6, %c2] [%262], %263, %264 : memref<7x4xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %265 = vector.matrix_multiply %22, %19 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xi16>, vector<7xi16>) -> vector<21xi16>
      %266 = affine.min affine_map<(d0, d1, d2) -> (d2, d0)>(%c11, %c14, %c9)
      %267 = math.ipowi %6, %6 : tensor<7x7xi32>
      %268 = arith.negf %cst_2 : f32
      %269 = math.ipowi %6, %6 : tensor<7x7xi32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %265, %265, %c-12489_i16 : vector<21xi16>, vector<21xi16> into i16
      %271 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
      %272 = vector.broadcast %cst : f32 to vector<4xf32>
      %dest_45, %accumulated_value_46 = vector.scan <add>, %271, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xf32>, vector<4xf32>
      %extracted_47 = tensor.extract %20[] : tensor<i64>
      %273 = arith.maxsi %false, %false : i1
      %rank_48 = tensor.rank %5 : tensor<7x7xi16>
      %274 = vector.broadcast %23 : i64 to vector<15x15x11xi64>
      %275 = vector.broadcast %c580135393_i64 : i64 to vector<15x11xi64>
      %dest_49, %accumulated_value_50 = vector.scan <or>, %274, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<15x15x11xi64>, vector<15x11xi64>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %22, %22, %c-26382_i16 : vector<3xi16>, vector<3xi16> into i16
      %277 = vector.bitcast %22 : vector<3xi16> to vector<3xi16>
      %278 = vector.extract_strided_slice %22 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
      scf.yield
    }
    case 2 {
      %262 = arith.remf %cst_2, %cst_3 : f32
      %263 = math.exp2 %0 : tensor<7x4xf16>
      %264 = arith.remf %cst_0, %cst_0 : f32
      %265 = arith.remui %c-26382_i16, %c-29481_i16 : i16
      %266 = index.sub %c11, %c14
      %267 = arith.cmpi ne, %c-29481_i16, %c-12489_i16 : i16
      %268 = math.copysign %cst_1, %cst_1 : f16
      %269 = vector.load %alloc_20[%c11] : memref<15xi64>, vector<7x4xi64>
      %270 = arith.divui %c-29481_i16, %c-29481_i16 : i16
      %271 = math.cos %0 : tensor<7x4xf16>
      %272 = index.sub %c11, %c9
      %273 = index.add %c0, %c3
      %274 = index.castu %273 : index to i32
      %275 = index.ceildivs %c13, %c14
      %276 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %277 = index.ceildivu %c1, %c10
      scf.yield
    }
    case 3 {
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %c-29481_i16 : vector<7xi16>, vector<7xi16> into i16
      %263 = tensor.empty(%c12) : tensor<?x7xi64>
      %264 = math.sqrt %0 : tensor<7x4xf16>
      %265 = math.cos %3 : tensor<15x11xf16>
      %266 = arith.ori %c-26382_i16, %c-26382_i16 : i16
      %267 = arith.maxsi %c635472731_i64, %23 : i64
      %268 = vector.broadcast %false : i1 to vector<7x4xi1>
      %269 = math.expm1 %cst_2 : f32
      %270 = math.copysign %3, %3 : tensor<15x11xf16>
      %271 = arith.cmpf false, %cst_0, %cst : f32
      %272 = index.castu %c446210263_i64 : i64 to index
      %273 = arith.ceildivsi %c23118_i16, %c23118_i16 : i16
      %274 = math.tanh %1 : tensor<7x4xf32>
      %275 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %276 = math.rsqrt %17 : tensor<7x7xf16>
      %277 = vector.broadcast %false : i1 to vector<4x4xi1>
      %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %268, %268, %277 : vector<7x4xi1>, vector<7x4xi1> into vector<4x4xi1>
      scf.yield
    }
    case 4 {
      %262 = arith.maxui %23, %c446210263_i64 : i64
      %263 = tensor.empty() : tensor<7x4xi32>
      %mapped_44 = linalg.map ins(%7, %4, %7 : tensor<7x4xi32>, tensor<7x4xi32>, tensor<7x4xi32>) outs(%263 : tensor<7x4xi32>)
        (%in: i32, %in_47: i32, %in_48: i32) {
          %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d3 + d0, (d1 - d3 + d0) * 2, d2 ceildiv 64 + 64, d0 + d1 - d3 + d0 - 24)>(%c12, %c6, %c12, %c11)
          %278 = vector.multi_reduction <maxsi>, %22, %c-26382_i16 [0] : vector<3xi16> to i16
          affine.store %c349314485_i32, %alloc_13[%c6, %c8] : memref<15x11xi32>
          %279 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
          %alloca = memref.alloca() : memref<7x4xi1>
          %280 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
          %281 = index.ceildivu %c2, %c12
          %inserted_49 = tensor.insert %c-29481_i16 into %10[%c1, %c1] : tensor<7x4xi16>
          %282 = vector.splat %c2 : vector<7x7xindex>
          %283 = arith.divf %cst_3, %cst_0 : f32
          %284 = math.atan %3 : tensor<15x11xf16>
          %285 = affine.max affine_map<(d0, d1, d2) -> (d0 - 64, d2, d0 * 8)>(%c9, %281, %c12)
          %286 = math.fma %3, %3, %3 : tensor<15x11xf16>
          %287 = arith.remf %cst_3, %cst_2 : f32
          %288 = bufferization.clone %alloc_17 : memref<7x4xi16> to memref<7x4xi16>
          %289 = arith.maxui %in, %in_48 : i32
          %false_50 = index.bool.constant false
          %290 = vector.broadcast %cst_1 : f16 to vector<7xf16>
          %dest_51, %accumulated_value_52 = vector.scan <maxf>, %280, %290 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xf16>, vector<7xf16>
          %291 = arith.ceildivsi %in, %in : i32
          %292 = vector.shuffle %19, %279 [0, 1, 4, 7, 9, 10] : vector<7xi16>, vector<7xi16>
          %293 = math.ceil %16 : tensor<7x7xf16>
          %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 2, d3, d2 mod 2)>(%c1, %c1, %c14, %c8)
          %295 = arith.maxsi %in_48, %c1375187546_i32 : i32
          %296 = vector.broadcast %cst_1 : f16 to vector<7xf16>
          %dest_53, %accumulated_value_54 = vector.scan <add>, %280, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf16>, vector<7xf16>
          %297 = math.ipowi %7, %263 : tensor<7x4xi32>
          %298 = math.log10 %17 : tensor<7x7xf16>
          %299 = vector.broadcast %cst_1 : f16 to vector<7xf16>
          %dest_55, %accumulated_value_56 = vector.scan <mul>, %280, %299 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xf16>, vector<7xf16>
          %alloc_57 = memref.alloc() : memref<15x11xi32>
          memref.copy %alloc_13, %alloc_57 : memref<15x11xi32> to memref<15x11xi32>
          memref.store %cst_1, %alloc_9[%c1, %c0] : memref<7x7xf16>
          %300 = vector.broadcast %c6 : index to vector<7xindex>
          %301 = vector.broadcast %false_50 : i1 to vector<7xi1>
          %302 = vector.broadcast %c1375187546_i32 : i32 to vector<7xi32>
          vector.scatter %alloc_15[%c0, %c3] [%300], %301, %302 : memref<7x7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %303 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
          %304 = index.mul %c11, %281
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %264 = vector.broadcast %c15 : index to vector<7xindex>
      %265 = vector.broadcast %false : i1 to vector<7xi1>
      %266 = vector.broadcast %23 : i64 to vector<7xi64>
      vector.scatter %alloc_19[%c8] [%264], %265, %266 : memref<15xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %267 = memref.load %alloc_4[%c11, %c0] : memref<15x11xf16>
      %268 = arith.divsi %c580135393_i64, %23 : i64
      %expanded_45 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
      %extracted_46 = tensor.extract %10[%c1, %c2] : tensor<7x4xi16>
      %269 = arith.floordivsi %false, %false : i1
      memref.assume_alignment %alloc_5, 2 : memref<7x4xi64>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %22, %22, %c-12489_i16 : vector<3xi16>, vector<3xi16> into i16
      %271 = index.sizeof
      %272 = affine.min affine_map<(d0, d1) -> ((((d0 + 128) * 2) floordiv 16) floordiv 2, d0, d0 - (d0 + 128) ceildiv 32 + 128, d0)>(%c5, %c8)
      %273 = arith.ori %c446210263_i64, %c580135393_i64 : i64
      %274 = math.fma %cst_3, %cst, %cst_2 : f32
      %275 = arith.maxsi %c1845219569_i32, %c1375187546_i32 : i32
      %276 = index.sub %271, %271
      scf.yield
    }
    default {
      %generated_44 = tensor.generate %c4 {
      ^bb0(%arg3: index, %arg4: index):
        memref.store %c446210263_i64, %alloc_19[%c11] : memref<15xi64>
        %275 = arith.shrui %c1845219569_i32, %c349314485_i32 : i32
        %276 = affine.min affine_map<(d0) -> (d0, -d0 + 32, d0 * -4)>(%c8)
        %277 = math.fma %1, %1, %1 : tensor<7x4xf32>
        tensor.yield %false : i1
      } : tensor<?x11xi1>
      %262 = arith.minsi %c-29481_i16, %c-12489_i16 : i16
      %263 = vector.matrix_multiply %22, %19 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xi16>, vector<7xi16>) -> vector<21xi16>
      %264 = math.rsqrt %cst_2 : f32
      %cast = tensor.cast %6 : tensor<7x7xi32> to tensor<?x?xi32>
      %265 = arith.ori %c349314485_i32, %c1845219569_i32 : i32
      %266 = vector.bitcast %22 : vector<3xi16> to vector<3xi16>
      %267 = vector.broadcast %c446210263_i64 : i64 to vector<15x7xi64>
      %268 = vector.broadcast %c635472731_i64 : i64 to vector<7xi64>
      %dest_45, %accumulated_value_46 = vector.scan <minsi>, %267, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<15x7xi64>, vector<7xi64>
      %269 = index.sizeof
      memref.store %c580135393_i64, %alloc_20[%c8] : memref<15xi64>
      %270 = vector.matrix_multiply %266, %22 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      vector.print %263 : vector<21xi16>
      %271 = arith.addf %cst_1, %cst_1 : f16
      memref.assume_alignment %alloc_4, 8 : memref<15x11xf16>
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %270, %270, %c-26382_i16 : vector<1xi16>, vector<1xi16> into i16
      %273 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %274 = vector.fma %273, %273, %273 : vector<7x7xf32>
    }
    %27 = math.rsqrt %0 : tensor<7x4xf16>
    %false_21 = index.bool.constant false
    %28 = arith.remf %cst_0, %cst_0 : f32
    %29 = arith.divf %cst_3, %cst_3 : f32
    %rank = tensor.rank %9 : tensor<7x4xi16>
    %30 = index.maxs %c13, %c10
    %rank_22 = tensor.rank %13 : tensor<7x4xi1>
    %31 = index.sub %c8, %c6
    %32 = arith.cmpi uge, %c-26382_i16, %c-26382_i16 : i16
    %generated = tensor.generate %c9, %c9 {
    ^bb0(%arg3: index, %arg4: index):
      %262 = math.absf %3 : tensor<15x11xf16>
      vector.print %19 : vector<7xi16>
      %generated_44 = tensor.generate %c4, %c9 {
      ^bb0(%arg5: index, %arg6: index):
        %264 = bufferization.clone %alloc_6 : memref<7x4xf16> to memref<7x4xf16>
        %265 = math.absf %cst : f32
        %extracted_45 = tensor.extract %11[%c4, %c6] : tensor<7x7xi1>
        %splat_46 = tensor.splat %false : tensor<15x11xi1>
        tensor.yield %c1375187546_i32 : i32
      } : tensor<?x?xi32>
      %263 = arith.negf %cst_1 : f16
      tensor.yield %cst_1 : f16
    } : tensor<?x?xf16>
    %33 = math.log1p %14 : tensor<7x7xf16>
    %34 = index.floordivs %c4, %c7
    %35 = vector.multi_reduction <minsi>, %22, %c23118_i16 [0] : vector<3xi16> to i16
    %generated_23 = tensor.generate %c11, %c11 {
    ^bb0(%arg3: index, %arg4: index):
      %262 = arith.mulf %cst_1, %cst_1 : f16
      %263 = arith.maxui %35, %c23118_i16 : i16
      %264 = vector.matrix_multiply %22, %22 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %265 = arith.mulf %cst_0, %cst_3 : f32
      tensor.yield %cst_1 : f16
    } : tensor<?x?xf16>
    %36 = arith.addf %cst_1, %cst_1 : f16
    %37 = index.floordivs %c10, %c9
    %38 = arith.subi %c-12489_i16, %c-26382_i16 : i16
    %39 = math.absf %1 : tensor<7x4xf32>
    %40 = arith.floordivsi %c1845219569_i32, %c349314485_i32 : i32
    %41 = math.round %3 : tensor<15x11xf16>
    %42 = tensor.empty() : tensor<7x7xf32>
    %43 = arith.divui %c446210263_i64, %c635472731_i64 : i64
    vector.print %19 : vector<7xi16>
    %44 = vector.multi_reduction <maxsi>, %19, %c-29481_i16 [0] : vector<7xi16> to i16
    %45 = arith.remui %c580135393_i64, %c446210263_i64 : i64
    %46 = bufferization.to_memref %15 : memref<7x4xi1>
    %47 = math.cttz %8 : tensor<7x7xi1>
    %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
    scf.index_switch %c9 
    case 1 {
      %splat_44 = tensor.splat %cst_1 : tensor<7x4xf16>
      %262 = math.cttz %expanded : tensor<7x7x1xi1>
      %263 = index.ceildivu %c13, %c0
      %collapsed_45 = tensor.collapse_shape %transposed [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
      %264 = math.cos %cst_0 : f32
      %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<7x4xf16>
      %265 = affine.for %arg3 = 0 to 71 iter_args(%arg4 = %9) -> (tensor<7x4xi16>) {
        affine.yield %arg4 : tensor<7x4xi16>
      }
      scf.execute_region {
        %273 = vector.broadcast %cst : f32 to vector<7x4xf32>
        %274 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %dest_47, %accumulated_value_48 = vector.scan <mul>, %273, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xf32>, vector<7xf32>
        %275 = math.cos %3 : tensor<15x11xf16>
        %276 = math.ipowi %false, %false_21 : i1
        %extracted_49 = tensor.extract %14[%c0, %c4] : tensor<7x7xf16>
        %277 = vector.broadcast %cst : f32 to vector<11x11xf32>
        %278 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %277, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<11x11xf32>, vector<11xf32>
        %279 = index.add %263, %263
        %280 = vector.transpose %19, [0] : vector<7xi16> to vector<7xi16>
        %281 = vector.reduction <xor>, %19 : vector<7xi16> into i16
        %282 = math.ctpop %13 : tensor<7x4xi1>
        %283 = vector.transpose %19, [0] : vector<7xi16> to vector<7xi16>
        %284 = index.castu %c580135393_i64 : i64 to index
        %285 = arith.remui %35, %c23118_i16 : i16
        %286 = arith.maxsi %35, %c-12489_i16 : i16
        %287 = arith.ori %c-12489_i16, %44 : i16
        %288 = index.mul %c1, %c11
        %289 = arith.divui %c-29481_i16, %c-26382_i16 : i16
        scf.yield
      }
      %266 = arith.minf %cst_2, %cst_0 : f32
      %267 = affine.if affine_set<(d0, d1) : (((-d0) ceildiv 2) * 32768 == 0)>(%c9, %c11) -> i16 {
        %273 = arith.addf %cst_0, %cst_3 : f32
        %274 = math.ipowi %10, %10 : tensor<7x4xi16>
        %275 = affine.min affine_map<(d0, d1, d2) -> (d1 + 2)>(%rank, %c13, %c11)
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3, -((-d2 + d0 + d2) mod 128))>(%30, %31, %c11, %c10)
        %277 = arith.floordivsi %false, %false : i1
        %278 = vector.broadcast %c5 : index to vector<15xindex>
        %279 = vector.broadcast %false_21 : i1 to vector<15xi1>
        vector.scatter %46[%c5, %c1] [%278], %279, %279 : memref<7x4xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %expanded_47 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<4x7xi16> into tensor<4x7x1xi16>
        %280 = index.ceildivu %c6, %c7
        affine.yield %c-12489_i16 : i16
      } else {
        %273 = arith.andi %c635472731_i64, %c580135393_i64 : i64
        %splat_47 = tensor.splat %44 : tensor<7x7xi16>
        %274 = arith.shrui %false, %false : i1
        %275 = arith.divf %cst_3, %cst_0 : f32
        %276 = vector.matrix_multiply %22, %22 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
        %277 = arith.divf %cst_1, %cst_1 : f16
        %splat_48 = tensor.splat %false_21 : tensor<15x11xi1>
        memref.store %cst_0, %alloc_8[%c0, %c0] : memref<7x4xf32>
        affine.yield %35 : i16
      }
      %extracted_46 = tensor.extract %10[%c5, %c0] : tensor<7x4xi16>
      %268 = math.exp %cst_0 : f32
      %269 = vector.insert %c-26382_i16, %19 [6] : i16 into vector<7xi16>
      %270 = arith.andi %44, %c23118_i16 : i16
      %271 = index.sub %c11, %31
      %272 = arith.muli %false_21, %false : i1
      scf.yield
    }
    default {
      %262 = vector.splat %c15 : vector<7x7xindex>
      %263 = arith.cmpi sle, %c-26382_i16, %c-12489_i16 : i16
      %264 = arith.remui %false_21, %false_21 : i1
      vector.print %19 : vector<7xi16>
      %265 = bufferization.clone %alloc_5 : memref<7x4xi64> to memref<7x4xi64>
      %expanded_44 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
      %true_45 = index.bool.constant true
      scf.if %false {
        memref.assume_alignment %alloc_9, 1 : memref<7x7xf16>
        %277 = vector.shuffle %22, %19 [5, 6, 7, 9] : vector<3xi16>, vector<7xi16>
        %278 = tensor.empty() : tensor<7x4xi64>
        %279 = vector.broadcast %23 : i64 to vector<15x11xi64>
        %280 = vector.broadcast %false : i1 to vector<15x11xi1>
        %281 = vector.broadcast %c1845219569_i32 : i32 to vector<15x11xi32>
        %282 = vector.gather %278[%c9, %c4] [%281], %280, %279 : tensor<7x4xi64>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi64> into vector<15x11xi64>
        %283 = math.expm1 %0 : tensor<7x4xf16>
        %284 = math.exp2 %cst_2 : f32
        %285 = math.expm1 %cst_2 : f32
        %286 = bufferization.clone %alloc_13 : memref<15x11xi32> to memref<15x11xi32>
        affine.store %cst_1, %alloc_4[%c0, %c9] : memref<15x11xf16>
      } else {
        %277 = math.roundeven %17 : tensor<7x7xf16>
        %278 = vector.broadcast %false_21 : i1 to vector<7x4xi1>
        %279 = vector.broadcast %c349314485_i32 : i32 to vector<7x4xi32>
        %280 = vector.gather %13[%c7, %30] [%279], %278, %278 : tensor<7x4xi1>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi1> into vector<7x4xi1>
        %281 = index.sub %31, %c1
        %282 = vector.broadcast %false : i1 to vector<4xi1>
        %dest_46, %accumulated_value_47 = vector.scan <minui>, %278, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %283 = math.ipowi %23, %23 : i64
        %284 = math.absf %cst_2 : f32
        %285 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %286 = vector.splat %c349314485_i32 : vector<15x11xi32>
      }
      %266 = scf.index_switch %c8 -> vector<7x7xi16> 
      case 1 {
        %277 = index.sub %c8, %30
        %278 = arith.mulf %cst_2, %cst_0 : f32
        %279 = math.round %14 : tensor<7x7xf16>
        %280 = math.log %14 : tensor<7x7xf16>
        %281 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 8)>(%c8, %c13)
        %expanded_46 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<7x7x1xi1> into tensor<7x7x1x1xi1>
        %282 = math.cttz %expanded_46 : tensor<7x7x1x1xi1>
        %283 = vector.extract_strided_slice %19 {offsets = [1], sizes = [6], strides = [1]} : vector<7xi16> to vector<6xi16>
        %284 = vector.insert %c-29481_i16, %283 [3] : i16 into vector<6xi16>
        %285 = arith.divsi %35, %c-12489_i16 : i16
        %286 = index.sub %c15, %c12
        %287 = index.castu %c8 : index to i32
        %false_47 = index.bool.constant false
        %288 = vector.broadcast %cst_1 : f16 to vector<4x11xf16>
        %289 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %288, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<4x11xf16>, vector<4xf16>
        %expanded_50 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
        %290 = arith.shrsi %false_47, %false_47 : i1
        %291 = vector.broadcast %c-12489_i16 : i16 to vector<7x7xi16>
        scf.yield %291 : vector<7x7xi16>
      }
      case 2 {
        %277 = arith.mulf %cst_3, %cst_2 : f32
        %278 = vector.broadcast %c23118_i16 : i16 to vector<3x3xi16>
        %279 = vector.outerproduct %22, %22, %278 {kind = #vector.kind<add>} : vector<3xi16>, vector<3xi16>
        %alloca = memref.alloca() : memref<7x7xi32>
        %280 = vector.multi_reduction <add>, %19, %c-12489_i16 [0] : vector<7xi16> to i16
        bufferization.dealloc_tensor %14 : tensor<7x7xf16>
        %281 = math.round %3 : tensor<15x11xf16>
        %282 = math.log2 %14 : tensor<7x7xf16>
        %alloca_46 = memref.alloca() : memref<7x7xf16>
        %283 = affine.load %alloc_20[%c8] : memref<15xi64>
        %284 = math.round %14 : tensor<7x7xf16>
        %285 = math.cos %42 : tensor<7x7xf32>
        %286 = vector.broadcast %cst_1 : f16 to vector<15x7xf16>
        %287 = vector.broadcast %cst_1 : f16 to vector<15xf16>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %286, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<15x7xf16>, vector<15xf16>
        %288 = arith.ori %c-12489_i16, %280 : i16
        memref.store %cst_1, %alloc_6[%c0, %c1] : memref<7x4xf16>
        %289 = arith.remui %c23118_i16, %c-12489_i16 : i16
        %290 = memref.load %alloc_9[%c1, %c2] : memref<7x7xf16>
        %291 = vector.broadcast %c23118_i16 : i16 to vector<7x7xi16>
        scf.yield %291 : vector<7x7xi16>
      }
      default {
        %277 = index.ceildivu %c14, %37
        %278 = math.fma %cst, %cst_0, %cst_2 : f32
        %279 = vector.shuffle %22, %22 [2, 5] : vector<3xi16>, vector<3xi16>
        %cast = tensor.cast %7 : tensor<7x4xi32> to tensor<?x?xi32>
        affine.store %44, %alloc_18[%c12, %c6] : memref<7x4xi16>
        %280 = arith.divui %c-29481_i16, %c-26382_i16 : i16
        %281 = arith.subi %35, %c23118_i16 : i16
        %282 = bufferization.to_tensor %alloc_8 : memref<7x4xf32>
        %283 = vector.broadcast %c446210263_i64 : i64 to vector<4xi64>
        vector.transfer_write %283, %alloc_5[%c4, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi64>, memref<7x4xi64>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %284 = vector.transfer_read %3[%rank_22, %c1], %cst_47 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<15x11xf16>, vector<11xf16>
        %285 = index.sizeof
        %286 = math.expm1 %17 : tensor<7x7xf16>
        %287 = math.sqrt %14 : tensor<7x7xf16>
        %288 = arith.remui %c1375187546_i32, %c1845219569_i32 : i32
        %expanded_48 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<7x4xi1> into tensor<7x4x1xi1>
        affine.store %true_45, %alloc_12[%c11, %c11] : memref<15x11xi1>
        %289 = vector.broadcast %c-29481_i16 : i16 to vector<7x7xi16>
        scf.yield %289 : vector<7x7xi16>
      }
      %267 = memref.load %alloc_10[%c9, %c3] : memref<15x11xi64>
      %268 = math.expm1 %0 : tensor<7x4xf16>
      %269 = arith.andi %35, %35 : i16
      %270 = math.rsqrt %cst_0 : f32
      %271 = vector.broadcast %c-12489_i16 : i16 to vector<3x3xi16>
      %272 = vector.outerproduct %22, %22, %271 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
      %273 = arith.divf %cst_2, %cst_2 : f32
      %274 = vector.broadcast %c11 : index to vector<15xindex>
      %275 = vector.broadcast %false : i1 to vector<15xi1>
      %276 = vector.broadcast %c-12489_i16 : i16 to vector<15xi16>
      vector.scatter %alloc_18[%c6, %c0] [%274], %275, %276 : memref<7x4xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
    }
    %48 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0 mod 64)>(%c3, %c2, %c5, %c14)
    %49 = math.round %1 : tensor<7x4xf32>
    %50 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<7x7x1xi1>) {
    ^bb0(%out: i1):
      %262 = arith.remui %23, %c635472731_i64 : i64
      %263 = vector.extract_strided_slice %22 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi16> to vector<3xi16>
      %264 = memref.realloc %alloc_20 : memref<15xi64> to memref<11xi64>
      %265 = math.absf %cst_2 : f32
      %266 = math.fma %1, %1, %1 : tensor<7x4xf32>
      %267 = vector.broadcast %cst_3 : f32 to vector<11x11xf32>
      %268 = vector.broadcast %cst_0 : f32 to vector<11xf32>
      %dest_44, %accumulated_value_45 = vector.scan <mul>, %267, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<11x11xf32>, vector<11xf32>
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %263, %263, %c23118_i16 : vector<3xi16>, vector<3xi16> into i16
      %270 = vector.broadcast %c1375187546_i32 : i32 to vector<15x11xi32>
      %271 = vector.broadcast %false : i1 to vector<15x11xi1>
      %272 = vector.gather %4[%c5, %c2] [%270], %271, %270 : tensor<7x4xi32>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi32> into vector<15x11xi32>
      %273 = index.maxs %c15, %31
      %274 = vector.multi_reduction <minsi>, %22, %22 [] : vector<3xi16> to vector<3xi16>
      %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d2, (d0 * 32) ceildiv 128, d0 * 32)>(%30, %31, %34, %c2)
      %276 = vector.matrix_multiply %22, %263 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %277 = arith.floordivsi %c349314485_i32, %c1375187546_i32 : i32
      %278 = math.cos %1 : tensor<7x4xf32>
      %279 = math.absf %cst_2 : f32
      %280 = math.ipowi %transposed, %transposed : tensor<4x7xi16>
      %splat_46 = tensor.splat %c446210263_i64 : tensor<7x4xi64>
      %281 = vector.matrix_multiply %19, %263 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xi16>, vector<3xi16>) -> vector<21xi16>
      %282 = math.log10 %0 : tensor<7x4xf16>
      %283 = vector.broadcast %c1845219569_i32 : i32 to vector<15xi32>
      %dest_47, %accumulated_value_48 = vector.scan <xor>, %270, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<15x11xi32>, vector<15xi32>
      %284 = arith.divsi %false, %false_21 : i1
      %285 = vector.broadcast %false : i1 to vector<7x4xi1>
      %286 = arith.maxf %cst_2, %cst : f32
      %287 = math.ipowi %c580135393_i64, %c635472731_i64 : i64
      %alloca = memref.alloca() : memref<7x4xi32>
      %288 = vector.transpose %281, [0] : vector<21xi16> to vector<21xi16>
      %289 = arith.floordivsi %c23118_i16, %c-12489_i16 : i16
      %290 = arith.minsi %c23118_i16, %44 : i16
      %291 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %292 = tensor.empty() : tensor<7x7xi64>
      %293 = vector.broadcast %23 : i64 to vector<15x11xi64>
      %294 = vector.gather %292[%37, %30] [%270], %271, %293 : tensor<7x7xi64>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi64> into vector<15x11xi64>
      %295 = bufferization.to_memref %7 : memref<7x4xi32>
      %296 = math.ipowi %11, %8 : tensor<7x7xi1>
      linalg.yield %false : i1
    } -> tensor<7x7x1xi1>
    %51 = vector.extract_strided_slice %19 {offsets = [3], sizes = [1], strides = [1]} : vector<7xi16> to vector<1xi16>
    memref.assume_alignment %alloc_11, 1 : memref<15x11xi16>
    %52 = arith.addf %cst_0, %cst_0 : f32
    %53 = math.exp %14 : tensor<7x7xf16>
    %54 = vector.broadcast %c23118_i16 : i16 to vector<7x4xi16>
    %55 = vector.broadcast %false_21 : i1 to vector<7x4xi1>
    %56 = vector.broadcast %c1375187546_i32 : i32 to vector<7x4xi32>
    %57 = vector.gather %5[%31, %c2] [%56], %55, %54 : tensor<7x7xi16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi16> into vector<7x4xi16>
    %58 = arith.maxf %cst_3, %cst_2 : f32
    %59 = vector.broadcast %44 : i16 to vector<4xi16>
    %60 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %57, %19, %59 : vector<7x4xi16>, vector<7xi16> into vector<4xi16>
    %61 = vector.broadcast %c-26382_i16 : i16 to vector<4xi16>
    %62 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %57, %19, %61 : vector<7x4xi16>, vector<7xi16> into vector<4xi16>
    %collapsed = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<7x7x1xi1> into tensor<49x1xi1>
    %63 = vector.flat_transpose %51 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
    %64 = arith.ceildivsi %false, %false : i1
    %65 = vector.broadcast %false_21 : i1 to vector<4xi1>
    %dest, %accumulated_value = vector.scan <mul>, %55, %65 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
    %expanded_24 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x4xf32> into tensor<7x4x1xf32>
    %collapsed_25 = tensor.collapse_shape %10 [[0, 1]] : tensor<7x4xi16> into tensor<28xi16>
    %66 = arith.ori %c580135393_i64, %c580135393_i64 : i64
    %67 = vector.insert %c-29481_i16, %22 [0] : i16 into vector<3xi16>
    %68 = arith.maxsi %false, %false_21 : i1
    %69 = arith.floordivsi %c23118_i16, %c-29481_i16 : i16
    %expanded_26 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
    %70 = math.absf %0 : tensor<7x4xf16>
    %71 = index.sub %c14, %c7
    %72 = vector.broadcast %c-29481_i16 : i16 to vector<4xi16>
    %73 = vector.insert %72, %54 [4] : vector<4xi16> into vector<7x4xi16>
    %74 = arith.divui %23, %c635472731_i64 : i64
    %75 = vector.multi_reduction <mul>, %55, %false_21 [0, 1] : vector<7x4xi1> to i1
    %generated_27 = tensor.generate %c2, %c7 {
    ^bb0(%arg3: index, %arg4: index):
      %262 = index.sub %71, %c4
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %263 = vector.transfer_read %14[%c14, %c15], %cst_45 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<7x7xf16>, vector<11xf16>
      %264 = vector.broadcast %37 : index to vector<7xindex>
      %265 = vector.broadcast %false_21 : i1 to vector<7xi1>
      vector.scatter %alloc_14[%c2, %c5] [%264], %265, %19 : memref<7x7xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %266 = arith.mulf %cst_44, %cst_1 : f16
      tensor.yield %cst_2 : f32
    } : tensor<?x?xf32>
    %76 = arith.remui %c-12489_i16, %c-12489_i16 : i16
    %77 = vector.extract_strided_slice %63 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %78 = math.ipowi %2, %9 : tensor<7x4xi16>
    %79 = math.atan %14 : tensor<7x7xf16>
    %80 = math.log %expanded_24 : tensor<7x4x1xf32>
    %81 = arith.shrsi %44, %44 : i16
    %82 = affine.load %alloc_13[%c11, %c15] : memref<15x11xi32>
    vector.print %63 : vector<1xi16>
    %83 = arith.remf %cst_3, %cst_0 : f32
    %84 = arith.divsi %false, %false : i1
    %expanded_28 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
    %85 = arith.divf %cst_0, %cst_2 : f32
    %86 = arith.ori %23, %c446210263_i64 : i64
    %87 = arith.divsi %c446210263_i64, %c446210263_i64 : i64
    %88 = bufferization.clone %alloc_13 : memref<15x11xi32> to memref<15x11xi32>
    %89 = memref.atomic_rmw assign %cst_1, %alloc_16[%c6, %c2] : (f16, memref<7x4xf16>) -> f16
    %90 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %91 = vector.transpose %55, [0, 1] : vector<7x4xi1> to vector<7x4xi1>
    %92 = index.castu %c0 : index to i32
    %93 = arith.addf %cst_2, %cst : f32
    %94 = arith.remui %23, %c446210263_i64 : i64
    affine.store %c1845219569_i32, %alloc_15[%c12, %c4] : memref<7x7xi32>
    memref.copy %alloc_20, %alloc_19 : memref<15xi64> to memref<15xi64>
    %95 = arith.divsi %c-26382_i16, %44 : i16
    bufferization.dealloc_tensor %15 : tensor<7x4xi1>
    %96 = tensor.empty() : tensor<7x4xf16>
    %97 = affine.min affine_map<(d0, d1, d2) -> (d0 + 4, d2, d0)>(%rank, %c2, %c9)
    %98 = arith.maxsi %75, %false_21 : i1
    %99 = arith.remf %cst_1, %cst_1 : f16
    %100 = memref.load %alloc_8[%c2, %c3] : memref<7x4xf32>
    %101 = tensor.empty() : tensor<7x4xf16>
    %mapped = linalg.map ins(%0, %0 : tensor<7x4xf16>, tensor<7x4xf16>) outs(%101 : tensor<7x4xf16>)
      (%in: f16, %in_44: f16) {
        %262 = vector.broadcast %false_21 : i1 to vector<4xi1>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %55, %262 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %263 = vector.broadcast %75 : i1 to vector<15x11xi1>
        %264 = vector.broadcast %82 : i32 to vector<15x11xi32>
        %265 = vector.gather %46[%c0, %rank] [%264], %263, %263 : memref<7x4xi1>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi1> into vector<15x11xi1>
        %266 = math.exp2 %14 : tensor<7x7xf16>
        %267 = vector.extract_strided_slice %57 {offsets = [1], sizes = [2], strides = [1]} : vector<7x4xi16> to vector<2x4xi16>
        %268 = arith.remf %cst_0, %cst_2 : f32
        %269 = affine.load %alloc_20[%c15] : memref<15xi64>
        %270 = math.copysign %96, %101 : tensor<7x4xf16>
        vector.print %77 : vector<1xi16>
        %271 = arith.mulf %cst_1, %in_44 : f16
        memref.assume_alignment %alloc, 8 : memref<15x11xf16>
        %272 = math.expm1 %expanded_28 : tensor<7x7x1xf16>
        memref.copy %alloc_19, %alloc_20 : memref<15xi64> to memref<15xi64>
        %generated_47 = tensor.generate %c8, %c7 {
        ^bb0(%arg3: index, %arg4: index):
          %293 = arith.divsi %c580135393_i64, %c446210263_i64 : i64
          %294 = vector.broadcast %false_21 : i1 to vector<15xi1>
          %dest_49, %accumulated_value_50 = vector.scan <add>, %265, %294 {inclusive = false, reduction_dim = 1 : i64} : vector<15x11xi1>, vector<15xi1>
          %295 = vector.broadcast %75 : i1 to vector<15xi1>
          %dest_51, %accumulated_value_52 = vector.scan <mul>, %263, %295 {inclusive = true, reduction_dim = 1 : i64} : vector<15x11xi1>, vector<15xi1>
          memref.assume_alignment %alloc_12, 4 : memref<15x11xi1>
          tensor.yield %c1375187546_i32 : i32
        } : tensor<?x?xi32>
        affine.store %in, %alloc_4[%c7, %c12] : memref<15x11xf16>
        %273 = vector.flat_transpose %51 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %274 = arith.divf %cst_0, %cst_0 : f32
        %275 = vector.reduction <mul>, %22 : vector<3xi16> into i16
        %276 = index.mul %97, %c4
        bufferization.dealloc_tensor %expanded_26 : tensor<7x4x1xi16>
        %277 = math.atan %expanded_28 : tensor<7x7x1xf16>
        %278 = bufferization.clone %alloc_19 : memref<15xi64> to memref<15xi64>
        %279 = math.log %cst_3 : f32
        %280 = arith.floordivsi %c446210263_i64, %c446210263_i64 : i64
        %281 = vector.extract_strided_slice %263 {offsets = [9], sizes = [6], strides = [1]} : vector<15x11xi1> to vector<6x11xi1>
        %282 = memref.load %alloc_12[%c13, %c10] : memref<15x11xi1>
        %283 = math.cos %14 : tensor<7x7xf16>
        %284 = vector.multi_reduction <maxui>, %77, %273 [] : vector<1xi16> to vector<1xi16>
        %285 = math.exp2 %in_44 : f16
        %286 = math.ctlz %5 : tensor<7x7xi16>
        %287 = arith.maxui %c635472731_i64, %c635472731_i64 : i64
        %288 = vector.broadcast %35 : i16 to vector<7x7xi16>
        %289 = vector.broadcast %false : i1 to vector<7x7xi1>
        %290 = vector.broadcast %c1845219569_i32 : i32 to vector<7x7xi32>
        %291 = vector.gather %alloc_18[%rank_22, %c15] [%290], %289, %288 : memref<7x4xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
        %292 = index.ceildivu %c10, %c15
        %cst_48 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_48 : f16
      }
    %102 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
    %103 = vector.broadcast %false_21 : i1 to vector<7x7xi1>
    %104 = vector.broadcast %c349314485_i32 : i32 to vector<7x7xi32>
    %105 = vector.gather %0[%c8, %c2] [%104], %103, %102 : tensor<7x4xf16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf16> into vector<7x7xf16>
    %106 = vector.matrix_multiply %22, %22 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    %107 = affine.load %alloc_5[%c1, %c11] : memref<7x4xi64>
    %true = index.bool.constant true
    %108 = index.sub %71, %37
    %109 = vector.reduction <maxsi>, %90 : vector<4xi16> into i16
    %110 = tensor.empty() : tensor<7x4xi64>
    %111 = vector.broadcast %c580135393_i64 : i64 to vector<7x4xi64>
    %112 = vector.gather %110[%c2, %30] [%56], %55, %111 : tensor<7x4xi64>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi64> into vector<7x4xi64>
    %113 = math.absi %7 : tensor<7x4xi32>
    %114 = scf.execute_region -> index {
      %262 = vector.insertelement %35, %106[%c10 : index] : vector<1xi16>
      affine.for %arg3 = 0 to 98 {
      }
      %263 = math.log %3 : tensor<15x11xf16>
      %264 = arith.remf %cst, %cst_0 : f32
      %265 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %dest_44, %accumulated_value_45 = vector.scan <add>, %105, %265 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf16>, vector<7xf16>
      %266 = scf.while (%arg3 = %alloc_6) : (memref<7x4xf16>) -> memref<7x4xf16> {
        %276 = arith.remf %cst_1, %cst_1 : f16
        %277 = vector.matrix_multiply %22, %19 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xi16>, vector<7xi16>) -> vector<21xi16>
        %278 = math.round %cst_0 : f32
        %279 = memref.load %alloc_6[%c2, %c3] : memref<7x4xf16>
        %extracted_49 = tensor.extract %expanded[%c6, %c0, %c0] : tensor<7x7x1xi1>
        %280 = arith.mulf %cst_2, %cst : f32
        %281 = vector.extract_strided_slice %277 {offsets = [14], sizes = [5], strides = [1]} : vector<21xi16> to vector<5xi16>
        %282 = math.absf %cst_1 : f16
        scf.condition(%extracted_49) %alloc_6 : memref<7x4xf16>
      } do {
      ^bb0(%arg3: memref<7x4xf16>):
        %276 = index.ceildivu %c5, %c0
        %277 = math.ctlz %10 : tensor<7x4xi16>
        %278 = arith.floordivsi %c580135393_i64, %c635472731_i64 : i64
        %279 = arith.divsi %c349314485_i32, %c1845219569_i32 : i32
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %103, %103, %103 : vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
        %281 = math.cos %42 : tensor<7x7xf32>
        %282 = index.add %c12, %c8
        %283 = arith.floordivsi %c580135393_i64, %c446210263_i64 : i64
        %284 = vector.broadcast %c-26382_i16 : i16 to vector<1x1xi16>
        %285 = vector.outerproduct %63, %63, %284 {kind = #vector.kind<or>} : vector<1xi16>, vector<1xi16>
        bufferization.dealloc_tensor %13 : tensor<7x4xi1>
        %286 = memref.realloc %alloc_19 : memref<15xi64> to memref<7xi64>
        %287 = arith.minf %cst_3, %cst : f32
        %288 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
        %289 = arith.floordivsi %23, %c635472731_i64 : i64
        %290 = vector.splat %c446210263_i64 : vector<7x4xi64>
        %291 = vector.insert %90, %54 [0] : vector<4xi16> into vector<7x4xi16>
        scf.yield %arg3 : memref<7x4xf16>
      }
      %267 = affine.min affine_map<(d0) -> (-d0, (d0 mod 2) * -15)>(%c0)
      %268 = vector.broadcast %c1845219569_i32 : i32 to vector<4xi32>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %56, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi32>, vector<4xi32>
      %269 = math.expm1 %1 : tensor<7x4xf32>
      %270 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %271 = math.log1p %cst_3 : f32
      %c43 = arith.constant 43 : index
      %extracted_48 = tensor.extract %collapsed[%c43, %c0] : tensor<49x1xi1>
      %272 = vector.matrix_multiply %19, %106 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<1xi16>) -> vector<7xi16>
      %273 = arith.subi %107, %c446210263_i64 : i64
      %274 = index.maxs %c5, %267
      %275 = math.cos %3 : tensor<15x11xf16>
      scf.yield %97 : index
    }
    %collapsed_29 = tensor.collapse_shape %8 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
    %115 = vector.shuffle %63, %90 [3, 4] : vector<1xi16>, vector<4xi16>
    %116 = math.rsqrt %0 : tensor<7x4xf16>
    %117 = arith.remf %cst_3, %cst : f32
    %118 = vector.broadcast %c1845219569_i32 : i32 to vector<7x7xi32>
    %119 = arith.shrsi %44, %c23118_i16 : i16
    %120 = scf.index_switch %30 -> i64 
    case 1 {
      %262 = vector.transpose %22, [0] : vector<3xi16> to vector<3xi16>
      %263 = vector.insert %c23118_i16, %77 [0] : i16 into vector<1xi16>
      %264 = math.exp2 %16 : tensor<7x7xf16>
      memref.store %c-12489_i16, %alloc_17[%c2, %c1] : memref<7x4xi16>
      %265 = bufferization.to_memref %96 : memref<7x4xf16>
      %266 = math.round %1 : tensor<7x4xf32>
      %267 = scf.execute_region -> memref<7x4xi32> {
        %274 = math.cttz %20 : tensor<i64>
        %275 = memref.realloc %alloc_20 : memref<15xi64> to memref<4xi64>
        vector.print %72 : vector<4xi16>
        %276 = math.round %cst_1 : f16
        memref.store %c-12489_i16, %alloc_18[%c6, %c3] : memref<7x4xi16>
        %rank_48 = tensor.rank %96 : tensor<7x4xf16>
        %277 = vector.broadcast %c1845219569_i32 : i32 to vector<4xi32>
        %278 = vector.insert %277, %56 [0] : vector<4xi32> into vector<7x4xi32>
        %expanded_49 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
        %279 = math.ceil %expanded_28 : tensor<7x7x1xf16>
        %280 = index.sub %30, %c7
        %281 = vector.multi_reduction <maxsi>, %57, %c-12489_i16 [0, 1] : vector<7x4xi16> to i16
        memref.assume_alignment %alloc_17, 2 : memref<7x4xi16>
        %282 = math.atan %expanded_24 : tensor<7x4x1xf32>
        %true_50 = index.bool.constant true
        %283 = math.rsqrt %cst_1 : f16
        %284 = arith.addf %cst_3, %cst_0 : f32
        %alloc_51 = memref.alloc() : memref<7x4xi32>
        scf.yield %alloc_51 : memref<7x4xi32>
      }
      vector.print %112 : vector<7x4xi64>
      %268 = arith.andi %c-29481_i16, %c-29481_i16 : i16
      %alloc_44 = memref.alloc() : memref<4xi16>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44 : memref<4xi16>) outs(%expanded_26 : tensor<7x4x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %274 = math.atan %3 : tensor<15x11xf16>
        %275 = math.expm1 %cst_1 : f16
        %276 = arith.maxf %cst_1, %cst_1 : f16
        %277 = index.castu %true : i1 to index
        %278 = math.sqrt %cst_3 : f32
        %279 = math.ceil %cst_2 : f32
        %280 = arith.divui %c349314485_i32, %82 : i32
        %281 = math.cttz %44 : i16
        %282 = math.log2 %cst_2 : f32
        %283 = vector.multi_reduction <mul>, %55, %55 [] : vector<7x4xi1> to vector<7x4xi1>
        %cast = tensor.cast %9 : tensor<7x4xi16> to tensor<?x?xi16>
        %284 = vector.create_mask %97, %c12 : vector<7x4xi1>
        %false_48 = index.bool.constant false
        %285 = arith.subi %107, %c580135393_i64 : i64
        %286 = math.expm1 %3 : tensor<15x11xf16>
        %287 = vector.transpose %57, [1, 0] : vector<7x4xi16> to vector<4x7xi16>
        %288 = arith.divf %cst, %cst_2 : f32
        %289 = index.add %97, %c12
        %290 = vector.reduction <minui>, %51 : vector<1xi16> into i16
        %291 = arith.minui %82, %c349314485_i32 : i32
        %292 = arith.ceildivsi %107, %c446210263_i64 : i64
        %rank_49 = tensor.rank %8 : tensor<7x7xi1>
        %293 = math.exp %cst_1 : f16
        %294 = index.maxs %34, %48
        %295 = vector.splat %c1845219569_i32 : vector<7x4xi32>
        %296 = math.round %expanded_24 : tensor<7x4x1xf32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %118, %104, %118 : vector<7x7xi32>, vector<7x7xi32> into vector<7x7xi32>
        %298 = vector.broadcast %cst_1 : f16 to vector<7x4xf16>
        %299 = vector.gather %3[%c10, %97] [%56], %284, %298 : tensor<15x11xf16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf16> into vector<7x4xf16>
        %300 = arith.minui %23, %23 : i64
        %301 = index.maxs %34, %30
        %302 = vector.broadcast %cst_1 : f16 to vector<f16>
        %303 = vector.transfer_write %302, %96[%c14, %71] : vector<f16>, tensor<7x4xf16>
        %304 = vector.reduction <add>, %90 : vector<4xi16> into i16
        linalg.yield %out : i16
      } -> tensor<7x4x1xi16>
      %alloc_45 = memref.alloc() : memref<4x7xi16>
      memref.tensor_store %18, %alloc_45 : memref<4x7xi16>
      %270 = vector.bitcast %56 : vector<7x4xi32> to vector<7x4xi32>
      %271 = arith.remui %c1845219569_i32, %c349314485_i32 : i32
      %272 = arith.divsi %75, %true : i1
      %273 = vector.broadcast %c1375187546_i32 : i32 to vector<4xi32>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %270, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi32>, vector<4xi32>
      vector.print %19 : vector<7xi16>
      scf.yield %c446210263_i64 : i64
    }
    case 2 {
      %262 = arith.minsi %c-26382_i16, %c23118_i16 : i16
      %263 = math.atan %1 : tensor<7x4xf32>
      %264 = math.round %cst_1 : f16
      affine.store %cst_1, %alloc[%c0, %c10] : memref<15x11xf16>
      %265 = arith.ori %44, %c-26382_i16 : i16
      %266 = vector.gather %8[%c3, %c13] [%104], %103, %103 : tensor<7x7xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
      %267 = arith.maxf %cst_3, %cst_0 : f32
      %268 = math.log2 %cst_2 : f32
      %269 = math.cos %expanded_24 : tensor<7x4x1xf32>
      %270 = arith.remui %44, %c-29481_i16 : i16
      %271 = vector.multi_reduction <xor>, %63, %51 [] : vector<1xi16> to vector<1xi16>
      %272 = affine.min affine_map<(d0, d1) -> ((d1 + 96) floordiv 64, d1 * 64, (d1 + 96) floordiv 64, d0 - 64)>(%34, %c0)
      %273 = vector.flat_transpose %51 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
      %274 = vector.splat %272 : vector<7x4xindex>
      %275 = arith.cmpf oge, %cst_3, %cst : f32
      %276 = math.atan %cst_0 : f32
      scf.yield %c635472731_i64 : i64
    }
    case 3 {
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %77, %51, %44 : vector<1xi16>, vector<1xi16> into i16
      %263 = arith.addf %cst_1, %cst_1 : f16
      %264 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 32) * 2)>(%c8, %97, %c7)
      %265 = math.absi %75 : i1
      %266 = arith.divsi %false_21, %false_21 : i1
      %267 = vector.reduction <maxui>, %90 : vector<4xi16> into i16
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_28 : tensor<7x7x1xf16>) outs(%expanded_28 : tensor<7x7x1xf16>) {
      ^bb0(%in: f16, %out: f16):
        %rank_46 = tensor.rank %generated_27 : tensor<?x?xf32>
        %275 = arith.divsi %c580135393_i64, %107 : i64
        %alloc_47 = memref.alloc() : memref<7x7xi16>
        memref.copy %alloc_14, %alloc_47 : memref<7x7xi16> to memref<7x7xi16>
        %276 = math.round %3 : tensor<15x11xf16>
        %277 = math.round %expanded_28 : tensor<7x7x1xf16>
        %expanded_48 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
        %278 = vector.multi_reduction <xor>, %55, %55 [] : vector<7x4xi1> to vector<7x4xi1>
        %279 = arith.andi %c1375187546_i32, %c349314485_i32 : i32
        memref.store %c1845219569_i32, %alloc_15[%c0, %c6] : memref<7x7xi32>
        %280 = index.ceildivu %c12, %c7
        %281 = index.maxu %c3, %c4
        affine.store %cst_1, %alloc_9[%c15, %c6] : memref<7x7xf16>
        %282 = arith.maxui %c349314485_i32, %82 : i32
        %283 = math.fma %cst_1, %in, %in : f16
        %284 = math.absf %cst_1 : f16
        %285 = vector.transpose %105, [1, 0] : vector<7x7xf16> to vector<7x7xf16>
        %286 = vector.insert %c23118_i16, %77 [0] : i16 into vector<1xi16>
        %287 = vector.broadcast %264 : index to vector<7xindex>
        %288 = vector.broadcast %75 : i1 to vector<7xi1>
        %289 = vector.broadcast %c349314485_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_13[%c7, %c3] [%287], %288, %289 : memref<15x11xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %rank_49 = tensor.rank %10 : tensor<7x4xi16>
        %290 = math.log %96 : tensor<7x4xf16>
        %cast = tensor.cast %14 : tensor<7x7xf16> to tensor<?x?xf16>
        %291 = math.cos %in : f16
        %292 = math.ipowi %c1375187546_i32, %c1375187546_i32 : i32
        %293 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %294 = index.casts %c5 : index to i32
        memref.tensor_store %96, %alloc_16 : memref<7x4xf16>
        %295 = arith.minsi %75, %false_21 : i1
        %296 = vector.bitcast %111 : vector<7x4xi64> to vector<7x4xi64>
        %297 = math.expm1 %cst : f32
        %298 = math.floor %3 : tensor<15x11xf16>
        %299 = index.maxs %c0, %c3
        %300 = affine.load %46[%c3, %c0] : memref<7x4xi1>
        linalg.yield %cst_1 : f16
      } -> tensor<7x7x1xf16>
      %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%37, %rank_22, %c12, %30)
      %270 = bufferization.to_memref %17 : memref<7x7xf16>
      %extracted_44 = tensor.extract %1[%c1, %c1] : tensor<7x4xf32>
      %splat_45 = tensor.splat %23 : tensor<7x4xi64>
      %271 = math.atan %17 : tensor<7x7xf16>
      vector.print %102 : vector<7x7xf16>
      %272 = vector.insert %c23118_i16, %90 [1] : i16 into vector<4xi16>
      %273 = vector.bitcast %102 : vector<7x7xf16> to vector<7x7xi16>
      %274 = arith.remui %c-29481_i16, %c23118_i16 : i16
      scf.yield %107 : i64
    }
    default {
      %262 = tensor.empty() : tensor<7x7xf32>
      %mapped_44 = linalg.map ins(%42, %42 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%262 : tensor<7x7xf32>)
        (%in: f32, %in_48: f32) {
          %expanded_49 = tensor.expand_shape %110 [[0], [1, 2]] : tensor<7x4xi64> into tensor<7x4x1xi64>
          %273 = vector.bitcast %54 : vector<7x4xi16> to vector<7x4xi16>
          %274 = index.mul %c8, %c8
          %275 = vector.shuffle %54, %273 [2, 5, 6, 7, 9, 10, 12] : vector<7x4xi16>, vector<7x4xi16>
          affine.store %cst_1, %alloc_9[%c5, %c11] : memref<7x7xf16>
          %276 = math.round %42 : tensor<7x7xf32>
          %277 = index.ceildivs %31, %c11
          %extracted_50 = tensor.extract %expanded_26[%c4, %c1, %c0] : tensor<7x4x1xi16>
          %278 = affine.apply affine_map<(d0, d1, d2) -> ((-d0) ceildiv 4)>(%37, %31, %71)
          %279 = vector.broadcast %in : f32 to vector<7x7xf32>
          %280 = vector.fma %279, %279, %279 : vector<7x7xf32>
          %alloc_51 = memref.alloc() : memref<15x11xf16>
          %281 = vector.extract %280[2] : vector<7x7xf32>
          %282 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
          %283 = math.exp %14 : tensor<7x7xf16>
          %284 = index.sizeof
          %285 = arith.divf %cst_0, %cst_3 : f32
          %286 = index.ceildivu %274, %c12
          %287 = math.ctpop %8 : tensor<7x7xi1>
          %288 = arith.remui %c-29481_i16, %c-12489_i16 : i16
          %289 = vector.broadcast %cst : f32 to vector<7x4xf32>
          %290 = vector.fma %289, %289, %289 : vector<7x4xf32>
          %291 = arith.divsi %c-26382_i16, %44 : i16
          %292 = index.divs %c5, %37
          %293 = math.exp2 %14 : tensor<7x7xf16>
          %294 = arith.ceildivsi %82, %82 : i32
          %295 = index.maxs %c8, %c15
          %c37 = arith.constant 37 : index
          %inserted_52 = tensor.insert %true into %collapsed[%c37, %c0] : tensor<49x1xi1>
          %cast = tensor.cast %transposed : tensor<4x7xi16> to tensor<?x?xi16>
          %296 = arith.maxsi %c-29481_i16, %c23118_i16 : i16
          %297 = affine.min affine_map<(d0) -> ((-d0) floordiv 16 + 32, d0 * -2)>(%278)
          %298 = arith.floordivsi %extracted_50, %c-26382_i16 : i16
          %299 = index.sub %c8, %c15
          %300 = index.mul %c4, %31
          %cst_53 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_53 : f32
        }
      %collapsed_45 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x11xi32> into tensor<165xi32>
      %263 = memref.load %88[%c0, %c8] : memref<15x11xi32>
      %264 = memref.load %alloc_7[%c5, %c1] : memref<7x4xi64>
      %265 = math.expm1 %1 : tensor<7x4xf32>
      affine.store %c1845219569_i32, %alloc_15[%c6, %c14] : memref<7x7xi32>
      %266 = arith.remf %cst, %cst_3 : f32
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<7x7x1xi1>) {
      ^bb0(%out: i1):
        %273 = arith.maxf %cst_1, %cst_1 : f16
        %274 = vector.extract_strided_slice %22 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi16> to vector<3xi16>
        %275 = vector.flat_transpose %90 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        memref.store %c446210263_i64, %alloc_7[%c0, %c0] : memref<7x4xi64>
        %276 = vector.transpose %57, [1, 0] : vector<7x4xi16> to vector<4x7xi16>
        %277 = math.atan %262 : tensor<7x7xf32>
        %278 = math.exp2 %17 : tensor<7x7xf16>
        %279 = vector.broadcast %cst_1 : f16 to vector<7x4xf16>
        %280 = vector.gather %alloc_16[%c0, %c11] [%56], %55, %279 : memref<7x4xf16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf16> into vector<7x4xf16>
        %collapsed_48 = tensor.collapse_shape %generated_23 [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %19, %19, %c-29481_i16 : vector<7xi16>, vector<7xi16> into i16
        %expanded_49 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x4xf32> into tensor<7x4x1xf32>
        %282 = bufferization.clone %alloc : memref<15x11xf16> to memref<15x11xf16>
        %283 = vector.extract_strided_slice %275 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
        %284 = index.divs %34, %c6
        %285 = vector.broadcast %c1845219569_i32 : i32 to vector<7xi32>
        %286 = vector.insert %285, %118 [1] : vector<7xi32> into vector<7x7xi32>
        %287 = memref.load %46[%c0, %c0] : memref<7x4xi1>
        %288 = memref.atomic_rmw minf %cst_1, %alloc[%c12, %c5] : (f16, memref<15x11xf16>) -> f16
        %289 = arith.negf %cst_0 : f32
        %290 = index.mul %c7, %c3
        %291 = arith.ceildivsi %out, %false_21 : i1
        %292 = math.ceil %expanded_28 : tensor<7x7x1xf16>
        %293 = arith.cmpf one, %cst_3, %cst_0 : f32
        %294 = math.log2 %17 : tensor<7x7xf16>
        %expanded_50 = tensor.expand_shape %110 [[0], [1, 2]] : tensor<7x4xi64> into tensor<7x4x1xi64>
        %295 = arith.shrui %82, %82 : i32
        %296 = vector.broadcast %c14 : index to vector<4xindex>
        %297 = vector.broadcast %out : i1 to vector<4xi1>
        %298 = vector.broadcast %c1375187546_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_15[%c5, %c2] [%296], %297, %298 : memref<7x7xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %299 = vector.reduction <minui>, %51 : vector<1xi16> into i16
        %300 = vector.broadcast %cst_3 : f32 to vector<15x11xf32>
        %301 = vector.fma %300, %300, %300 : vector<15x11xf32>
        memref.assume_alignment %alloc_5, 8 : memref<7x4xi64>
        %cast = tensor.cast %12 : tensor<15x11xi32> to tensor<?x?xi32>
        %302 = bufferization.clone %alloc : memref<15x11xf16> to memref<15x11xf16>
        %extracted_51 = tensor.extract %20[] : tensor<i64>
        linalg.yield %true : i1
      } -> tensor<7x7x1xi1>
      scf.index_switch %c4 
      case 1 {
        %273 = arith.muli %c-29481_i16, %c-12489_i16 : i16
        %274 = arith.remui %c-26382_i16, %44 : i16
        %275 = arith.minf %cst, %cst_3 : f32
        %276 = math.log10 %16 : tensor<7x7xf16>
        %277 = arith.maxui %c635472731_i64, %c635472731_i64 : i64
        %278 = vector.broadcast %cst : f32 to vector<4xf32>
        %279 = vector.transfer_write %278, %1[%c8, %97] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf32>, tensor<7x4xf32>
        %280 = arith.ori %c446210263_i64, %107 : i64
        %281 = index.sub %c14, %34
        %282 = index.ceildivu %c13, %c14
        %283 = math.expm1 %0 : tensor<7x4xf16>
        %284 = math.log %expanded_28 : tensor<7x7x1xf16>
        %285 = vector.broadcast %c-26382_i16 : i16 to vector<1x1xi16>
        %286 = vector.outerproduct %106, %77, %285 {kind = #vector.kind<or>} : vector<1xi16>, vector<1xi16>
        %cast = tensor.cast %expanded : tensor<7x7x1xi1> to tensor<?x?x?xi1>
        %287 = arith.xori %false_21, %false_21 : i1
        %288 = vector.load %alloc_10[%c9, %c4] : memref<15x11xi64>, vector<7x4xi64>
        %289 = math.cttz %82 : i32
        scf.yield
      }
      case 2 {
        %273 = arith.andi %c-26382_i16, %c-29481_i16 : i16
        %274 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 16 + d2, -(d2 mod 8))>(%108, %c10, %c4)
        %275 = vector.reduction <maxsi>, %90 : vector<4xi16> into i16
        %276 = index.sub %c2, %108
        %277 = arith.maxui %c349314485_i32, %c349314485_i32 : i32
        %278 = index.ceildivu %30, %114
        %279 = math.cttz %13 : tensor<7x4xi1>
        %expanded_48 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x7xi32> into tensor<7x7x1xi32>
        %cast = tensor.cast %2 : tensor<7x4xi16> to tensor<?x?xi16>
        %280 = arith.maxf %cst_3, %cst_0 : f32
        memref.assume_alignment %46, 16 : memref<7x4xi1>
        %281 = arith.ori %c580135393_i64, %c635472731_i64 : i64
        %282 = math.rsqrt %cst_0 : f32
        %283 = vector.extract_strided_slice %77 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %284 = arith.maxsi %35, %c-12489_i16 : i16
        %285 = vector.splat %107 : vector<7x7xi64>
        scf.yield
      }
      case 3 {
        %273 = vector.broadcast %107 : i64 to vector<4x4xi64>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %111, %111, %273 : vector<7x4xi64>, vector<7x4xi64> into vector<4x4xi64>
        %rank_48 = tensor.rank %262 : tensor<7x7xf32>
        %275 = arith.remui %c349314485_i32, %c1845219569_i32 : i32
        %276 = math.round %42 : tensor<7x7xf32>
        %277 = arith.remui %c23118_i16, %35 : i16
        %278 = vector.broadcast %cst_2 : f32 to vector<15x11xf32>
        %279 = vector.fma %278, %278, %278 : vector<15x11xf32>
        %280 = vector.broadcast %c-26382_i16 : i16 to vector<1x1xi16>
        %281 = vector.outerproduct %63, %77, %280 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
        %282 = math.exp %17 : tensor<7x7xf16>
        %283 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
        %284 = vector.fma %283, %283, %283 : vector<7x4xf32>
        %285 = arith.cmpi sle, %c1375187546_i32, %c349314485_i32 : i32
        %alloc_49 = memref.alloc() : memref<7x4xf32>
        memref.copy %alloc_8, %alloc_49 : memref<7x4xf32> to memref<7x4xf32>
        %alloc_50 = memref.alloc() : memref<7x7xi32>
        memref.copy %alloc_15, %alloc_50 : memref<7x7xi32> to memref<7x7xi32>
        %286 = vector.insertelement %c23118_i16, %22[%c6 : index] : vector<3xi16>
        %cast = tensor.cast %101 : tensor<7x4xf16> to tensor<?x?xf16>
        %287 = index.add %c6, %c11
        %288 = arith.remf %cst_3, %cst_0 : f32
        scf.yield
      }
      case 4 {
        %273 = vector.transpose %22, [0] : vector<3xi16> to vector<3xi16>
        %274 = vector.load %alloc_4[%c0, %c9] : memref<15x11xf16>, vector<7x4xf16>
        %275 = vector.load %alloc_16[%c4, %c1] : memref<7x4xf16>, vector<15x11xf16>
        %276 = vector.reduction <xor>, %22 : vector<3xi16> into i16
        memref.store %c1845219569_i32, %alloc_15[%c4, %c1] : memref<7x7xi32>
        %alloca = memref.alloca() : memref<7x7xi64>
        %277 = index.maxs %c0, %c14
        %alloca_48 = memref.alloca() : memref<15x11xi64>
        %278 = math.sqrt %17 : tensor<7x7xf16>
        %279 = vector.broadcast %c10 : index to vector<11xindex>
        %280 = vector.broadcast %false : i1 to vector<11xi1>
        %281 = vector.broadcast %cst_1 : f16 to vector<11xf16>
        vector.scatter %alloc_16[%c3, %c3] [%279], %280, %281 : memref<7x4xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %282 = math.exp %expanded_24 : tensor<7x4x1xf32>
        %283 = math.ctlz %transposed : tensor<4x7xi16>
        %284 = memref.atomic_rmw maxf %cst, %alloc_8[%c2, %c1] : (f32, memref<7x4xf32>) -> f32
        %285 = math.cttz %collapsed_29 : tensor<49xi1>
        affine.store %c349314485_i32, %88[%c6, %c1] : memref<15x11xi32>
        %286 = index.mul %c14, %c7
        scf.yield
      }
      default {
        %273 = arith.shrsi %true, %75 : i1
        %274 = math.log10 %expanded_28 : tensor<7x7x1xf16>
        %275 = arith.maxf %cst_3, %cst : f32
        %276 = arith.muli %c-12489_i16, %c23118_i16 : i16
        %277 = vector.shuffle %90, %19 [0, 1, 2, 6, 8, 10] : vector<4xi16>, vector<7xi16>
        affine.store %c1375187546_i32, %alloc_13[%c8, %c8] : memref<15x11xi32>
        %278 = arith.xori %35, %c-29481_i16 : i16
        %279 = arith.floordivsi %c1845219569_i32, %82 : i32
        %280 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %281 = arith.andi %35, %35 : i16
        %282 = math.round %3 : tensor<15x11xf16>
        %283 = memref.atomic_rmw addi %c580135393_i64, %alloc_10[%c3, %c5] : (i64, memref<15x11xi64>) -> i64
        %284 = vector.load %alloc_5[%c5, %c1] : memref<7x4xi64>, vector<7x7xi64>
        %285 = vector.matrix_multiply %106, %63 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %286 = vector.multi_reduction <mul>, %112, %c446210263_i64 [0, 1] : vector<7x4xi64> to i64
        %287 = arith.muli %75, %false_21 : i1
      }
      vector.print %104 : vector<7x7xi32>
      %268 = arith.maxf %cst_0, %cst_3 : f32
      %alloc_46 = memref.alloc() : memref<15x11xi32>
      %269 = math.absi %c635472731_i64 : i64
      %270 = tensor.empty() : tensor<7x7xf32>
      %mapped_47 = linalg.map ins(%42, %42, %42 : tensor<7x7xf32>, tensor<7x7xf32>, tensor<7x7xf32>) outs(%270 : tensor<7x7xf32>)
        (%in: f32, %in_48: f32, %in_49: f32) {
          memref.store %44, %alloc_18[%c3, %c2] : memref<7x4xi16>
          %273 = math.absf %101 : tensor<7x4xf16>
          %274 = index.ceildivu %c14, %c13
          %275 = arith.cmpf ueq, %cst_1, %cst_1 : f16
          %276 = memref.load %alloc_16[%c5, %c3] : memref<7x4xf16>
          %277 = math.ceil %17 : tensor<7x7xf16>
          %collapsed_50 = tensor.collapse_shape %18 [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
          %278 = arith.ceildivsi %c-29481_i16, %c-26382_i16 : i16
          %279 = memref.load %alloc_13[%c4, %c0] : memref<15x11xi32>
          %280 = arith.maxf %cst, %cst_0 : f32
          %281 = vector.load %alloc_7[%c5, %c2] : memref<7x4xi64>, vector<15x11xi64>
          %282 = arith.andi %75, %true : i1
          %283 = math.cos %96 : tensor<7x4xf16>
          %expanded_51 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<4x7xi16> into tensor<4x7x1xi16>
          %284 = math.expm1 %cst_1 : f16
          %285 = arith.remui %82, %c1845219569_i32 : i32
          %true_52 = index.bool.constant true
          %286 = bufferization.to_memref %96 : memref<7x4xf16>
          affine.store %c23118_i16, %alloc_11[%c5, %c15] : memref<15x11xi16>
          %true_53 = index.bool.constant true
          %287 = affine.min affine_map<(d0) -> ((d0 - 48) floordiv 32, (d0 - 4) * 32 - 32, d0 * 2)>(%c11)
          %288 = math.sqrt %1 : tensor<7x4xf32>
          %289 = math.roundeven %17 : tensor<7x7xf16>
          %290 = index.divs %48, %rank_22
          %291 = affine.max affine_map<(d0) -> (-d0, ((-d0) mod 64) floordiv 4)>(%c3)
          %292 = arith.remf %cst, %cst_2 : f32
          %293 = arith.divf %cst_0, %in_49 : f32
          %294 = math.atan2 %270, %262 : tensor<7x7xf32>
          %295 = vector.broadcast %cst_1 : f16 to vector<7xf16>
          %296 = vector.insert %295, %102 [1] : vector<7xf16> into vector<7x7xf16>
          %297 = arith.divsi %c446210263_i64, %c580135393_i64 : i64
          %alloc_54 = memref.alloc() : memref<7x7xi1>
          memref.tensor_store %11, %alloc_54 : memref<7x7xi1>
          %rank_55 = tensor.rank %8 : tensor<7x7xi1>
          %cst_56 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_56 : f32
        }
      %271 = math.round %cst_2 : f32
      %272 = math.fma %14, %14, %14 : tensor<7x7xf16>
      scf.yield %23 : i64
    }
    vector.print %57 : vector<7x4xi16>
    %121 = affine.load %alloc_17[%c8, %c9] : memref<7x4xi16>
    %expanded_30 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<15x11xf16> into tensor<15x11x1xf16>
    %122 = math.expm1 %3 : tensor<15x11xf16>
    %123 = arith.cmpf ogt, %cst_2, %cst_3 : f32
    %124 = index.add %97, %34
    %125 = scf.index_switch %71 -> f16 
    case 1 {
      %262 = vector.broadcast %82 : i32 to vector<7xi32>
      %263 = vector.insert %262, %118 [3] : vector<7xi32> into vector<7x7xi32>
      %264 = arith.ceildivsi %c446210263_i64, %c635472731_i64 : i64
      %expanded_44 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
      %265 = arith.maxui %121, %c23118_i16 : i16
      %generated_45 = tensor.generate %c4 {
      ^bb0(%arg3: index, %arg4: index):
        %276 = arith.ceildivsi %c635472731_i64, %107 : i64
        %cst_49 = arith.constant 1.000000e+00 : f16
        %cst_50 = arith.constant 0.000000e+00 : f16
        %277 = vector.transfer_read %0[%c5, %48], %cst_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x4xf16>, vector<4xf16>
        %alloc_51 = memref.alloc() : memref<7x7xi64>
        %278 = vector.broadcast %23 : i64 to vector<15x11xi64>
        %279 = vector.broadcast %true : i1 to vector<15x11xi1>
        %280 = vector.broadcast %c1375187546_i32 : i32 to vector<15x11xi32>
        %281 = vector.gather %alloc_51[%c6, %c6] [%280], %279, %278 : memref<7x7xi64>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi64> into vector<15x11xi64>
        %282 = vector.bitcast %102 : vector<7x7xf16> to vector<7x7xi16>
        tensor.yield %82 : i32
      } : tensor<?x4xi32>
      %266 = vector.gather %alloc_18[%c1, %c8] [%56], %55, %54 : memref<7x4xi16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi16> into vector<7x4xi16>
      %267 = arith.shrui %c-26382_i16, %44 : i16
      %268 = vector.flat_transpose %90 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %alloc_46 = memref.alloc() : memref<7xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<7xi1>) outs(%expanded : tensor<7x7x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %276 = arith.maxf %cst_3, %cst_0 : f32
        %277 = arith.subi %c580135393_i64, %107 : i64
        %278 = arith.maxui %c349314485_i32, %c1845219569_i32 : i32
        %279 = arith.mulf %cst, %cst : f32
        %280 = vector.broadcast %75 : i1 to vector<7xi1>
        %281 = vector.insert %280, %103 [5] : vector<7xi1> into vector<7x7xi1>
        %282 = memref.atomic_rmw assign %c23118_i16, %alloc_17[%c3, %c3] : (i16, memref<7x4xi16>) -> i16
        vector.print %268 : vector<4xi16>
        %283 = arith.floordivsi %121, %c-12489_i16 : i16
        %284 = math.log %expanded_24 : tensor<7x4x1xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %268, %57, %19 : vector<4xi16>, vector<7x4xi16> into vector<7xi16>
        %cast = tensor.cast %5 : tensor<7x7xi16> to tensor<?x?xi16>
        %286 = arith.cmpi ule, %in, %true : i1
        %287 = math.sqrt %42 : tensor<7x7xf32>
        %rank_49 = tensor.rank %3 : tensor<15x11xf16>
        %288 = math.floor %cst_3 : f32
        %289 = math.round %cst : f32
        %290 = affine.min affine_map<(d0, d1, d2) -> ((d0 ceildiv 4) ceildiv 2 - 1, ((d2 floordiv 64) floordiv 32) mod 16 + 1, (d2 floordiv 64) floordiv 32 + (d0 ceildiv 4) ceildiv 2 + 64, d2)>(%30, %c2, %71)
        %291 = arith.cmpf ord, %cst_0, %cst : f32
        %292 = math.log1p %101 : tensor<7x4xf16>
        memref.assume_alignment %alloc_20, 2 : memref<15xi64>
        %293 = index.ceildivu %c0, %37
        %294 = math.sqrt %cst_2 : f32
        memref.store %c-26382_i16, %alloc_18[%c6, %c0] : memref<7x4xi16>
        %295 = math.ctlz %107 : i64
        %296 = arith.muli %121, %c23118_i16 : i16
        %297 = math.cttz %8 : tensor<7x7xi1>
        %298 = arith.divsi %c-26382_i16, %c-12489_i16 : i16
        %299 = math.round %16 : tensor<7x7xf16>
        %300 = vector.flat_transpose %262 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %301 = arith.andi %35, %c-12489_i16 : i16
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_50 = arith.constant 0 : i16
        %302 = vector.transfer_read %expanded_26[%c15, %71, %c12], %c0_i16_50 : tensor<7x4x1xi16>, vector<i16>
        %303 = vector.broadcast %290 : index to vector<4xindex>
        %304 = vector.broadcast %in : i1 to vector<4xi1>
        %305 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        vector.scatter %alloc_6[%c2, %c0] [%303], %304, %305 : memref<7x4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        linalg.yield %in : i1
      } -> tensor<7x7x1xi1>
      %270 = vector.broadcast %82 : i32 to vector<4x4xi32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %56, %56, %270 : vector<7x4xi32>, vector<7x4xi32> into vector<4x4xi32>
      %272 = arith.remf %cst, %cst_3 : f32
      %collapsed_47 = tensor.collapse_shape %2 [[0, 1]] : tensor<7x4xi16> into tensor<28xi16>
      %splat_48 = tensor.splat %cst_3 : tensor<7x7xf32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_26 : tensor<7x4x1xi16>) outs(%expanded_44 : tensor<7x4x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %276 = math.absf %3 : tensor<15x11xf16>
        %277 = tensor.empty() : tensor<7x4xi64>
        %true_49 = arith.constant true
        %278 = vector.multi_reduction <minf>, %102, %102 [] : vector<7x7xf16> to vector<7x7xf16>
        %279 = arith.ceildivsi %23, %c446210263_i64 : i64
        %280 = math.cttz %collapsed : tensor<49x1xi1>
        %collapsed_50 = tensor.collapse_shape %101 [[0, 1]] : tensor<7x4xf16> into tensor<28xf16>
        %281 = math.cttz %7 : tensor<7x4xi32>
        %282 = math.cttz %expanded_26 : tensor<7x4x1xi16>
        %283 = vector.broadcast %c1375187546_i32 : i32 to vector<4xi32>
        %dest_51, %accumulated_value_52 = vector.scan <mul>, %56, %283 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi32>, vector<4xi32>
        %284 = arith.cmpf ult, %cst_0, %cst : f32
        %285 = vector.gather %46[%114, %31] [%56], %55, %55 : memref<7x4xi1>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi1> into vector<7x4xi1>
        %286 = arith.remf %cst_2, %cst_2 : f32
        %287 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %288 = math.exp %cst_2 : f32
        %289 = index.castu %c-26382_i16 : i16 to index
        %290 = memref.atomic_rmw ori %c580135393_i64, %alloc_5[%c2, %c2] : (i64, memref<7x4xi64>) -> i64
        %291 = index.maxs %rank, %c3
        %splat_53 = tensor.splat %false_21 : tensor<7x4xi1>
        %292 = arith.andi %in, %c-12489_i16 : i16
        %293 = math.atan %splat_48 : tensor<7x7xf32>
        %294 = vector.broadcast %31 : index to vector<4xindex>
        %295 = vector.broadcast %false : i1 to vector<4xi1>
        vector.scatter %alloc_18[%c2, %c3] [%294], %295, %72 : memref<7x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %296 = math.ctpop %7 : tensor<7x4xi32>
        %297 = math.ctpop %c-29481_i16 : i16
        memref.store %cst_1, %alloc[%c6, %c0] : memref<15x11xf16>
        %298 = math.sqrt %1 : tensor<7x4xf32>
        %299 = bufferization.clone %alloc_10 : memref<15x11xi64> to memref<15x11xi64>
        %collapsed_54 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        %300 = memref.realloc %alloc_20 : memref<15xi64> to memref<11xi64>
        %301 = math.cos %expanded_28 : tensor<7x7x1xf16>
        %302 = arith.mulf %cst_1, %cst_1 : f16
        %303 = math.exp %0 : tensor<7x4xf16>
        linalg.yield %121 : i16
      } -> tensor<7x4x1xi16>
      %274 = arith.xori %c1845219569_i32, %82 : i32
      %275 = arith.ori %c1845219569_i32, %c349314485_i32 : i32
      scf.yield %cst_1 : f16
    }
    default {
      %262 = bufferization.clone %alloc_5 : memref<7x4xi64> to memref<7x4xi64>
      %263 = bufferization.clone %alloc_20 : memref<15xi64> to memref<15xi64>
      %264 = math.exp2 %expanded_28 : tensor<7x7x1xf16>
      %265 = arith.remf %cst_0, %cst_2 : f32
      %266 = index.ceildivu %c6, %c15
      %267 = math.fma %cst_1, %cst_1, %cst_1 : f16
      %268 = vector.transpose %22, [0] : vector<3xi16> to vector<3xi16>
      %269 = math.sqrt %14 : tensor<7x7xf16>
      memref.assume_alignment %alloc_12, 16 : memref<15x11xi1>
      %270 = math.atan %42 : tensor<7x7xf32>
      %271 = vector.broadcast %cst_3 : f32 to vector<7x4xf32>
      %272 = vector.gather %1[%c10, %c0] [%56], %55, %271 : tensor<7x4xf32>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf32> into vector<7x4xf32>
      %273 = arith.mulf %cst_1, %cst_1 : f16
      %274 = math.sqrt %cst : f32
      %275 = arith.remf %cst_1, %cst_1 : f16
      %276 = arith.ori %c1375187546_i32, %c1845219569_i32 : i32
      %277 = arith.ceildivsi %23, %c446210263_i64 : i64
      scf.yield %cst_1 : f16
    }
    %126 = bufferization.clone %alloc_13 : memref<15x11xi32> to memref<15x11xi32>
    %127 = vector.extract %63[0] : vector<1xi16>
    %128 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9 : tensor<7x4xi16>) outs(%expanded_26 : tensor<7x4x1xi16>) {
    ^bb0(%in: i16, %out: i16):
      %rank_44 = tensor.rank %12 : tensor<15x11xi32>
      %262 = vector.reduction <and>, %19 : vector<7xi16> into i16
      %263 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
      %264 = vector.fma %263, %263, %263 : vector<7x4xf32>
      %265 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %266 = vector.multi_reduction <minf>, %102, %265 [1] : vector<7x7xf16> to vector<7xf16>
      %267 = vector.reduction <add>, %265 : vector<7xf16> into f16
      %268 = arith.maxui %false_21, %false : i1
      %269 = arith.minf %cst_2, %cst_2 : f32
      %false_45 = arith.constant false
      %270 = vector.transfer_read %11[%c1, %c5], %false_45 : tensor<7x7xi1>, vector<4xi1>
      %collapsed_46 = tensor.collapse_shape %10 [[0, 1]] : tensor<7x4xi16> into tensor<28xi16>
      %271 = arith.ceildivsi %c-26382_i16, %c-26382_i16 : i16
      %272 = index.ceildivu %108, %37
      %273 = math.absf %cst_1 : f16
      %274 = vector.transpose %55, [0, 1] : vector<7x4xi1> to vector<7x4xi1>
      %275 = math.ctlz %44 : i16
      %276 = vector.multi_reduction <add>, %106, %in [0] : vector<1xi16> to i16
      %277 = affine.if affine_set<(d0, d1, d2) : (d0 * 16 + 1 >= 0, d0 * 16 >= 0, (d0 * 4) mod 8 >= 0)>(%c0, %c7, %c7) -> f32 {
        %293 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
        %294 = vector.fma %293, %293, %293 : vector<7x7xf32>
        %295 = math.ipowi %8, %11 : tensor<7x7xi1>
        %296 = arith.maxsi %true, %false_45 : i1
        %297 = vector.matrix_multiply %72, %90 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %298 = arith.remui %23, %23 : i64
        %299 = arith.divf %cst_1, %cst_1 : f16
        %false_50 = index.bool.constant false
        %300 = vector.insert %cst_1, %265 [6] : f16 into vector<7xf16>
        affine.yield %cst_3 : f32
      } else {
        %293 = arith.floordivsi %82, %c1375187546_i32 : i32
        %294 = math.cos %cst : f32
        %295 = arith.floordivsi %35, %c23118_i16 : i16
        %296 = memref.atomic_rmw maxs %c446210263_i64, %alloc_20[%c0] : (i64, memref<15xi64>) -> i64
        %297 = math.ipowi %true, %false : i1
        %298 = arith.mulf %cst_3, %cst_0 : f32
        %299 = math.round %16 : tensor<7x7xf16>
        %300 = math.round %expanded_24 : tensor<7x4x1xf32>
        affine.yield %cst_3 : f32
      }
      %278 = arith.divui %c23118_i16, %44 : i16
      %279 = memref.load %alloc_5[%c5, %c1] : memref<7x4xi64>
      %280 = arith.minf %cst_1, %cst_1 : f16
      %281 = vector.broadcast %97 : index to vector<15xindex>
      %282 = vector.broadcast %true : i1 to vector<15xi1>
      %283 = vector.broadcast %cst_1 : f16 to vector<15xf16>
      vector.scatter %alloc[%c2, %c9] [%281], %282, %283 : memref<15x11xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %284 = tensor.empty() : tensor<7x4xi1>
      %285 = arith.remf %cst_1, %cst_1 : f16
      %286 = index.maxs %c2, %rank
      %287 = vector.reduction <or>, %19 : vector<7xi16> into i16
      %288 = bufferization.clone %46 : memref<7x4xi1> to memref<7x4xi1>
      vector.print %55 : vector<7x4xi1>
      %false_47 = arith.constant false
      %289 = vector.transfer_read %13[%c3, %c4], %false_47 : tensor<7x4xi1>, vector<11xi1>
      %290 = arith.floordivsi %true, %true : i1
      %291 = math.ipowi %c23118_i16, %44 : i16
      %292 = arith.minsi %c1375187546_i32, %82 : i32
      %splat_48 = tensor.splat %cst : tensor<7x4xf32>
      %generated_49 = tensor.generate %c2 {
      ^bb0(%arg3: index, %arg4: index):
        %293 = vector.broadcast %c9 : index to vector<15xindex>
        %294 = vector.broadcast %false_45 : i1 to vector<15xi1>
        %295 = vector.broadcast %cst_1 : f16 to vector<15xf16>
        vector.scatter %alloc_4[%c0, %c8] [%293], %294, %295 : memref<15x11xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        affine.store %true, %alloc_12[%c0, %c3] : memref<15x11xi1>
        %296 = math.rsqrt %14 : tensor<7x7xf16>
        %297 = vector.bitcast %118 : vector<7x7xi32> to vector<7x7xi32>
        tensor.yield %44 : i16
      } : tensor<?x4xi16>
      linalg.yield %c-29481_i16 : i16
    } -> tensor<7x4x1xi16>
    %129 = math.tan %cst_1 : f16
    memref.assume_alignment %alloc_11, 4 : memref<15x11xi16>
    %130 = arith.xori %true, %true : i1
    %131 = vector.reduction <add>, %77 : vector<1xi16> into i16
    %132 = math.log10 %cst_0 : f32
    %133 = math.sqrt %96 : tensor<7x4xf16>
    %134 = index.divs %30, %c9
    %135 = vector.reduction <add>, %72 : vector<4xi16> into i16
    %136 = arith.negf %cst : f32
    %137 = math.absf %cst_3 : f32
    %138 = vector.create_mask %48, %c11 : vector<15x11xi1>
    %139 = math.log %0 : tensor<7x4xf16>
    %140 = arith.maxsi %82, %82 : i32
    %141 = arith.divui %false, %75 : i1
    %142 = affine.max affine_map<(d0, d1) -> (((-d1) mod 4) floordiv 32)>(%c9, %114)
    %143 = scf.index_switch %c0 -> index 
    case 1 {
      %alloc_44 = memref.alloc() : memref<15x11xi1>
      memref.copy %alloc_12, %alloc_44 : memref<15x11xi1> to memref<15x11xi1>
      %262 = vector.bitcast %138 : vector<15x11xi1> to vector<15x11xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %51, %77, %44 : vector<1xi16>, vector<1xi16> into i16
      %264 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %265 = vector.multi_reduction <add>, %102, %264 [0] : vector<7x7xf16> to vector<7xf16>
      %266 = memref.atomic_rmw assign %c349314485_i32, %alloc_15[%c3, %c4] : (i32, memref<7x7xi32>) -> i32
      %267 = arith.maxf %cst_1, %cst_1 : f16
      %268 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 2 + 128, d0 ceildiv 2 - d0 mod 8)>(%c11, %31)
      memref.assume_alignment %alloc_13, 8 : memref<15x11xi32>
      %269 = index.add %c15, %rank_22
      memref.store %c23118_i16, %alloc_11[%c5, %c0] : memref<15x11xi16>
      scf.execute_region {
        %275 = tensor.empty() : tensor<7x7xf16>
        %276 = memref.atomic_rmw maxu %35, %alloc_17[%c5, %c1] : (i16, memref<7x4xi16>) -> i16
        %277 = arith.negf %cst_1 : f16
        %278 = math.absf %expanded_28 : tensor<7x7x1xf16>
        %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%31, %c12, %c12, %c13)
        %280 = math.absf %cst : f32
        %281 = arith.ceildivsi %false_21, %false : i1
        %282 = index.divs %c15, %71
        %283 = math.atan %cst : f32
        %collapsed_47 = tensor.collapse_shape %transposed [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
        %284 = vector.flat_transpose %63 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %285 = math.expm1 %14 : tensor<7x7xf16>
        %286 = vector.splat %114 : vector<15x11xindex>
        %287 = vector.bitcast %63 : vector<1xi16> to vector<1xi16>
        %288 = arith.andi %121, %c-26382_i16 : i16
        %289 = vector.reduction <or>, %51 : vector<1xi16> into i16
        scf.yield
      }
      %270 = vector.reduction <maxsi>, %106 : vector<1xi16> into i16
      %alloc_45 = memref.alloc() : memref<7x7xf32>
      %271 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
      %272 = vector.gather %alloc_45[%rank, %c9] [%104], %103, %271 : memref<7x7xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
      %collapsed_46 = tensor.collapse_shape %10 [[0, 1]] : tensor<7x4xi16> into tensor<28xi16>
      %273 = arith.remf %cst, %cst_3 : f32
      %274 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      scf.yield %31 : index
    }
    default {
      %262 = vector.splat %c3 : vector<7x4xindex>
      %263 = vector.broadcast %c349314485_i32 : i32 to vector<7xi32>
      %dest_44, %accumulated_value_45 = vector.scan <maxui>, %118, %263 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi32>, vector<7xi32>
      %264 = arith.divui %c1375187546_i32, %c1375187546_i32 : i32
      %expanded_46 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
      %265 = math.atan %0 : tensor<7x4xf16>
      %266 = arith.maxsi %35, %c-26382_i16 : i16
      memref.store %107, %alloc_7[%c6, %c1] : memref<7x4xi64>
      %collapsed_47 = tensor.collapse_shape %14 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
      %267 = math.absf %3 : tensor<15x11xf16>
      %268 = bufferization.clone %alloc_10 : memref<15x11xi64> to memref<15x11xi64>
      %269 = vector.broadcast %cst_0 : f32 to vector<15x11xf32>
      %270 = vector.fma %269, %269, %269 : vector<15x11xf32>
      %271 = math.atan2 %cst_0, %cst_2 : f32
      %alloc_48 = memref.alloc() : memref<15x11xf32>
      %272 = vector.broadcast %cst : f32 to vector<7x4xf32>
      %273 = vector.gather %alloc_48[%c10, %31] [%56], %55, %272 : memref<15x11xf32>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf32> into vector<7x4xf32>
      %splat_49 = tensor.splat %c635472731_i64 : tensor<7x7xi64>
      %274 = scf.index_switch %37 -> index 
      case 1 {
        %276 = math.sqrt %1 : tensor<7x4xf32>
        %from_elements = tensor.from_elements %c349314485_i32, %c349314485_i32, %c1845219569_i32, %c1375187546_i32, %82, %c1845219569_i32, %c349314485_i32, %82, %c349314485_i32, %c349314485_i32, %c1845219569_i32, %c349314485_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c1845219569_i32, %c1845219569_i32, %c1375187546_i32, %c349314485_i32, %c349314485_i32, %c349314485_i32, %82, %c1845219569_i32, %82, %c1845219569_i32, %c1375187546_i32, %c1845219569_i32, %c1845219569_i32, %82, %c349314485_i32, %c1375187546_i32, %c1375187546_i32, %c1845219569_i32, %c349314485_i32, %c1375187546_i32, %82, %82, %82, %c1845219569_i32, %c1845219569_i32, %c1375187546_i32, %82, %c1845219569_i32, %c1845219569_i32, %c1375187546_i32, %c1375187546_i32, %c1375187546_i32, %c1375187546_i32, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c349314485_i32, %82, %82, %c1375187546_i32, %82, %c1375187546_i32, %c1845219569_i32, %c349314485_i32, %c349314485_i32, %82, %c349314485_i32, %c349314485_i32, %82, %82, %82, %c1845219569_i32, %c1845219569_i32, %82, %c349314485_i32, %c1845219569_i32, %82, %c1375187546_i32, %c1845219569_i32, %c1845219569_i32, %c349314485_i32, %c349314485_i32, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c1845219569_i32, %82, %c1375187546_i32, %c1845219569_i32, %c1845219569_i32, %c1375187546_i32, %c1375187546_i32, %c349314485_i32, %c1845219569_i32, %c1375187546_i32, %c1375187546_i32, %c1375187546_i32, %c1375187546_i32, %c1845219569_i32, %82, %c1845219569_i32, %c1375187546_i32, %c1375187546_i32, %c1845219569_i32, %c1845219569_i32, %c1845219569_i32, %c349314485_i32, %c1375187546_i32, %82, %82, %c349314485_i32, %c1375187546_i32, %c1845219569_i32, %c349314485_i32, %c1845219569_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %82, %c1845219569_i32, %c349314485_i32, %c349314485_i32, %82, %82, %c349314485_i32, %c349314485_i32, %c1845219569_i32, %82, %82, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c1845219569_i32, %c1845219569_i32, %82, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c349314485_i32, %c349314485_i32, %c1845219569_i32, %c349314485_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %c1845219569_i32, %c1375187546_i32, %c1375187546_i32, %82, %82, %c1375187546_i32, %c1375187546_i32, %82, %c1845219569_i32, %c1375187546_i32, %c349314485_i32, %c1375187546_i32, %c349314485_i32, %c349314485_i32, %c1375187546_i32, %82 : tensor<15x11xi32>
        %277 = affine.min affine_map<(d0) -> (-d0 - 4)>(%48)
        %278 = index.divs %c11, %c12
        %279 = arith.cmpf ogt, %cst_0, %cst_2 : f32
        %expanded_50 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x4xf32> into tensor<7x4x1xf32>
        %extracted_51 = tensor.extract %1[%c4, %c0] : tensor<7x4xf32>
        memref.assume_alignment %alloc_6, 2 : memref<7x4xf16>
        %280 = arith.ceildivsi %121, %c-29481_i16 : i16
        %281 = arith.divsi %false, %false_21 : i1
        %282 = math.absi %c23118_i16 : i16
        %283 = arith.addf %cst, %cst_2 : f32
        %expanded_52 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<4x7xi16> into tensor<4x7x1xi16>
        %284 = arith.andi %c-26382_i16, %121 : i16
        %285 = arith.remui %44, %c-12489_i16 : i16
        %286 = index.maxs %c4, %31
        scf.yield %c11 : index
      }
      case 2 {
        %276 = vector.reduction <maxui>, %51 : vector<1xi16> into i16
        %277 = index.sizeof
        %278 = arith.divui %c1845219569_i32, %c1375187546_i32 : i32
        %279 = math.log10 %expanded_28 : tensor<7x7x1xf16>
        %280 = arith.minui %c1845219569_i32, %c349314485_i32 : i32
        %281 = arith.minf %cst_2, %cst_0 : f32
        affine.store %c-26382_i16, %alloc_18[%c5, %c4] : memref<7x4xi16>
        %282 = memref.load %alloc_17[%c0, %c1] : memref<7x4xi16>
        %283 = arith.divui %true, %true : i1
        %284 = arith.maxui %false, %false_21 : i1
        %285 = vector.reduction <add>, %51 : vector<1xi16> into i16
        %286 = vector.bitcast %102 : vector<7x7xf16> to vector<7x7xf16>
        %287 = vector.broadcast %c0 : index to vector<7xindex>
        %288 = vector.broadcast %75 : i1 to vector<7xi1>
        vector.scatter %alloc_14[%c0, %c5] [%287], %288, %19 : memref<7x7xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %false_50 = index.bool.constant false
        %289 = vector.gather %110[%134, %134] [%56], %55, %112 : tensor<7x4xi64>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi64> into vector<7x4xi64>
        %290 = arith.maxui %true, %false_21 : i1
        scf.yield %c14 : index
      }
      case 3 {
        %276 = arith.ori %c446210263_i64, %c580135393_i64 : i64
        %277 = vector.splat %c10 : vector<7x4xindex>
        %278 = math.atan %0 : tensor<7x4xf16>
        %279 = index.sub %71, %30
        %280 = vector.extract %138[4] : vector<15x11xi1>
        %281 = arith.cmpi ugt, %c1845219569_i32, %82 : i32
        %282 = math.expm1 %expanded_30 : tensor<15x11x1xf16>
        %283 = vector.multi_reduction <maxf>, %102, %cst_1 [0, 1] : vector<7x7xf16> to f16
        %284 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
        %285 = vector.fma %284, %284, %284 : vector<7x7xf32>
        %286 = arith.shrsi %c23118_i16, %35 : i16
        memref.store %283, %alloc_4[%c6, %c6] : memref<15x11xf16>
        %287 = arith.andi %121, %44 : i16
        %288 = arith.shrui %c-29481_i16, %c-26382_i16 : i16
        %alloca = memref.alloca() : memref<7x4xi64>
        %289 = arith.shli %c23118_i16, %121 : i16
        %rank_50 = tensor.rank %6 : tensor<7x7xi32>
        scf.yield %c3 : index
      }
      default {
        %276 = arith.remf %cst_3, %cst : f32
        %277 = vector.flat_transpose %22 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %278 = arith.maxf %cst_0, %cst_2 : f32
        %279 = arith.maxsi %c635472731_i64, %107 : i64
        %280 = arith.remf %cst, %cst : f32
        %alloc_50 = memref.alloc() : memref<7x7xi32>
        %281 = memref.load %alloc_11[%c0, %c9] : memref<15x11xi16>
        memref.assume_alignment %alloc_4, 8 : memref<15x11xf16>
        %282 = memref.load %alloc_12[%c10, %c3] : memref<15x11xi1>
        %283 = vector.broadcast %c23118_i16 : i16 to vector<4x4xi16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %54, %54, %283 : vector<7x4xi16>, vector<7x4xi16> into vector<4x4xi16>
        %285 = vector.extract_strided_slice %77 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %286 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
        %287 = vector.fma %286, %273, %273 : vector<7x4xf32>
        %288 = arith.shrsi %c-29481_i16, %c-26382_i16 : i16
        %expanded_51 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
        %289 = vector.broadcast %c7 : index to vector<11xindex>
        %290 = vector.broadcast %false : i1 to vector<11xi1>
        %291 = vector.broadcast %c1845219569_i32 : i32 to vector<11xi32>
        vector.scatter %88[%c11, %c1] [%289], %290, %291 : memref<15x11xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %292 = math.ceil %cst_0 : f32
        scf.yield %31 : index
      }
      %275 = vector.extract_strided_slice %272 {offsets = [0], sizes = [2], strides = [1]} : vector<7x4xf32> to vector<2x4xf32>
      scf.yield %c11 : index
    }
    %144 = math.ipowi %11, %11 : tensor<7x7xi1>
    %collapsed_31 = tensor.collapse_shape %110 [[0, 1]] : tensor<7x4xi64> into tensor<28xi64>
    %145 = math.expm1 %cst_0 : f32
    %146 = vector.broadcast %c446210263_i64 : i64 to vector<4x4xi64>
    %147 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %111, %112, %146 : vector<7x4xi64>, vector<7x4xi64> into vector<4x4xi64>
    %148 = arith.ceildivsi %c-26382_i16, %44 : i16
    %149 = bufferization.clone %126 : memref<15x11xi32> to memref<15x11xi32>
    %150 = arith.ori %c-29481_i16, %c23118_i16 : i16
    %151 = index.add %c3, %c0
    %152 = index.add %31, %c10
    %153 = math.rsqrt %17 : tensor<7x7xf16>
    %154 = math.cos %3 : tensor<15x11xf16>
    %155 = index.divs %c6, %48
    %156 = index.mul %c13, %c15
    %expanded_32 = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<49x1xi1> into tensor<49x1x1xi1>
    %157 = tensor.empty() : tensor<15x11xf16>
    %mapped_33 = linalg.map ins(%alloc : memref<15x11xf16>) outs(%157 : tensor<15x11xf16>)
      (%in: f16) {
        %262 = index.castu %c-29481_i16 : i16 to index
        %263 = bufferization.to_tensor %alloc_11 : memref<15x11xi16>
        %264 = arith.mulf %cst_1, %in : f16
        %265 = arith.minf %cst_1, %in : f16
        %266 = memref.load %126[%c9, %c8] : memref<15x11xi32>
        %267 = math.cos %0 : tensor<7x4xf16>
        %268 = index.maxs %152, %c10
        %extracted_44 = tensor.extract %12[%c1, %c3] : tensor<15x11xi32>
        %269 = vector.transpose %19, [0] : vector<7xi16> to vector<7xi16>
        %270 = arith.maxsi %c23118_i16, %35 : i16
        %from_elements = tensor.from_elements %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_2, %cst, %cst_3, %cst, %cst, %cst, %cst_2, %cst_2, %cst_3, %cst_3, %cst, %cst_0, %cst, %cst_3, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_3, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst_3, %cst, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst, %cst_3, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_3, %cst, %cst_0, %cst_3, %cst, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_2, %cst_3, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_3, %cst_0, %cst_2, %cst, %cst_2, %cst_3, %cst_2, %cst_3, %cst_0, %cst_3, %cst, %cst, %cst_0, %cst_2, %cst_3, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst_3, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst_3, %cst_3, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_3, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_3, %cst_2, %cst_0, %cst_0, %cst_3, %cst, %cst, %cst, %cst_0, %cst_2, %cst_3, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst_2, %cst_0 : tensor<15x11xf32>
        %271 = index.divs %142, %97
        %272 = affine.min affine_map<(d0, d1, d2) -> (d1 + d2, d2, d0 mod 64)>(%c11, %142, %c10)
        %273 = vector.transpose %106, [0] : vector<1xi16> to vector<1xi16>
        %274 = index.mul %c7, %c8
        %275 = arith.minui %121, %35 : i16
        %276 = vector.matrix_multiply %51, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %277 = vector.reduction <add>, %22 : vector<3xi16> into i16
        %inserted_45 = tensor.insert %true into %13[%c3, %c2] : tensor<7x4xi1>
        %278 = bufferization.to_memref %12 : memref<15x11xi32>
        %splat_46 = tensor.splat %c580135393_i64 : tensor<15x11xi64>
        %279 = affine.load %126[%c12, %c6] : memref<15x11xi32>
        %280 = memref.realloc %alloc_20 : memref<15xi64> to memref<7xi64>
        %281 = arith.remf %in, %in : f16
        bufferization.dealloc_tensor %5 : tensor<7x7xi16>
        affine.store %35, %alloc_17[%c14, %c0] : memref<7x4xi16>
        %282 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %283 = arith.maxui %c446210263_i64, %c580135393_i64 : i64
        %284 = index.sub %c11, %271
        affine.store %cst_1, %alloc_4[%c3, %c9] : memref<15x11xf16>
        %285 = vector.bitcast %63 : vector<1xi16> to vector<1xi16>
        %286 = math.expm1 %in : f16
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    %158 = arith.maxf %cst_0, %cst_3 : f32
    %159 = memref.atomic_rmw addf %cst_0, %alloc_8[%c0, %c1] : (f32, memref<7x4xf32>) -> f32
    %160 = arith.remsi %75, %false : i1
    %161 = tensor.empty() : tensor<4x4xi16>
    %162 = linalg.matmul ins(%transposed, %9 : tensor<4x7xi16>, tensor<7x4xi16>) outs(%161 : tensor<4x4xi16>) -> tensor<4x4xi16>
    %expanded_34 = tensor.expand_shape %96 [[0], [1, 2]] : tensor<7x4xf16> into tensor<7x4x1xf16>
    %163 = arith.cmpf ugt, %cst_0, %cst_0 : f32
    %164 = affine.load %alloc_10[%c10, %c11] : memref<15x11xi64>
    %165 = vector.flat_transpose %51 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
    %166 = index.add %c3, %c9
    %167 = math.expm1 %cst : f32
    %168 = vector.broadcast %164 : i64 to vector<4x4xi64>
    %169 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %112, %112, %168 : vector<7x4xi64>, vector<7x4xi64> into vector<4x4xi64>
    %generated_35 = tensor.generate %c7, %c3 {
    ^bb0(%arg3: index, %arg4: index):
      %262 = bufferization.to_tensor %alloc_20 : memref<15xi64>
      %263 = math.exp %cst_0 : f32
      %264 = math.round %14 : tensor<7x7xf16>
      %265 = math.fma %expanded_30, %expanded_30, %expanded_30 : tensor<15x11x1xf16>
      tensor.yield %c580135393_i64 : i64
    } : tensor<?x?xi64>
    %inserted = tensor.insert %c349314485_i32 into %6[%c5, %c6] : tensor<7x7xi32>
    %170 = arith.divf %cst_1, %cst_1 : f16
    %171 = arith.ceildivsi %false_21, %false_21 : i1
    %172 = vector.extract %111[2] : vector<7x4xi64>
    %173 = vector.insertelement %c-26382_i16, %63[%c14 : index] : vector<1xi16>
    %174 = vector.flat_transpose %90 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %175 = vector.flat_transpose %172 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
    %176 = arith.maxui %c580135393_i64, %c446210263_i64 : i64
    %177 = vector.broadcast %c-29481_i16 : i16 to vector<7xi16>
    %178 = vector.transfer_write %177, %9[%152, %155] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<7x4xi16>
    %179 = arith.minf %cst_0, %cst_3 : f32
    %180 = arith.maxui %c23118_i16, %c-12489_i16 : i16
    %181 = math.tan %1 : tensor<7x4xf32>
    %182 = index.sub %30, %114
    %183 = index.maxs %c11, %97
    %184 = tensor.empty() : tensor<7x4xi64>
    %splat = tensor.splat %107 : tensor<7x7xi64>
    %185 = math.cttz %12 : tensor<15x11xi32>
    %186 = affine.if affine_set<(d0, d1) : (((-d0) ceildiv 2) * 32768 == 0)>(%c13, %c3) -> memref<7x4xi1> {
      %262 = arith.addf %cst, %cst : f32
      %263 = vector.multi_reduction <xor>, %22, %c23118_i16 [0] : vector<3xi16> to i16
      %264 = vector.extract_strided_slice %51 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %265 = tensor.empty() : tensor<15x11xf16>
      %266 = vector.bitcast %22 : vector<3xi16> to vector<3xi16>
      %267 = vector.insertelement %c-29481_i16, %19[%c5 : index] : vector<7xi16>
      %268 = index.ceildivu %37, %c9
      memref.store %c-29481_i16, %alloc_14[%c3, %c5] : memref<7x7xi16>
      affine.yield %46 : memref<7x4xi1>
    } else {
      %262 = affine.min affine_map<(d0, d1, d2) -> (d1 ceildiv 128, d1 - (d0 ceildiv 128) * 64 - 128, d1 ceildiv 128, 0)>(%71, %30, %114)
      %263 = math.absf %3 : tensor<15x11xf16>
      %264 = arith.ceildivsi %107, %23 : i64
      %265 = arith.remf %cst_0, %cst_2 : f32
      %266 = vector.splat %124 : vector<15x11xindex>
      %267 = math.round %cst_3 : f32
      %268 = arith.remf %cst_3, %cst_3 : f32
      %269 = vector.broadcast %82 : i32 to vector<7xi32>
      %dest_44, %accumulated_value_45 = vector.scan <minsi>, %104, %269 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi32>, vector<7xi32>
      affine.yield %46 : memref<7x4xi1>
    }
    %187 = math.ipowi %false_21, %false : i1
    %extracted = tensor.extract %16[%c0, %c5] : tensor<7x7xf16>
    %188 = arith.minsi %c-26382_i16, %44 : i16
    %189 = memref.realloc %alloc_19 : memref<15xi64> to memref<4xi64>
    %190 = arith.xori %164, %164 : i64
    %collapsed_36 = tensor.collapse_shape %16 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
    %191 = tensor.empty() : tensor<7x4xi64>
    %192 = vector.multi_reduction <add>, %165, %63 [] : vector<1xi16> to vector<1xi16>
    %193 = vector.extract %174[0] : vector<4xi16>
    %194 = index.add %c14, %182
    bufferization.dealloc_tensor %110 : tensor<7x4xi64>
    %195 = vector.broadcast %cst_1 : f16 to vector<7xf16>
    %196 = vector.insert %195, %102 [0] : vector<7xf16> into vector<7x7xf16>
    %197 = arith.minsi %c-29481_i16, %44 : i16
    %198 = affine.for %arg3 = 0 to 87 iter_args(%arg4 = %155) -> (index) {
      affine.yield %c5 : index
    }
    %199 = math.copysign %3, %3 : tensor<15x11xf16>
    %200 = bufferization.clone %alloc_16 : memref<7x4xf16> to memref<7x4xf16>
    %201 = vector.broadcast %false_21 : i1 to vector<7xi1>
    %dest_37, %accumulated_value_38 = vector.scan <maxui>, %103, %201 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
    %202 = vector.broadcast %false_21 : i1 to vector<7xi1>
    %203 = vector.multi_reduction <xor>, %103, %202 [0] : vector<7x7xi1> to vector<7xi1>
    %204 = vector.insertelement %23, %172[%c3 : index] : vector<4xi64>
    %205 = arith.mulf %cst, %cst_0 : f32
    %generated_39 = tensor.generate %c2, %114 {
    ^bb0(%arg3: index, %arg4: index):
      %262 = vector.multi_reduction <or>, %174, %44 [0] : vector<4xi16> to i16
      %alloca = memref.alloca() : memref<7x7xi16>
      %263 = index.castu %75 : i1 to index
      %264 = math.round %3 : tensor<15x11xf16>
      tensor.yield %extracted : f16
    } : tensor<?x?xf16>
    %206 = math.ceil %0 : tensor<7x4xf16>
    %207 = index.mul %124, %166
    %208 = vector.splat %c1375187546_i32 : vector<7x4xi32>
    %extracted_40 = tensor.extract %110[%c5, %c1] : tensor<7x4xi64>
    %209 = arith.ceildivsi %c-26382_i16, %35 : i16
    %210 = math.roundeven %0 : tensor<7x4xf16>
    %211 = math.atan %cst_1 : f16
    %212 = math.exp2 %157 : tensor<15x11xf16>
    %213 = math.round %3 : tensor<15x11xf16>
    %214 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 16)>(%c15, %156)
    %215 = vector.matrix_multiply %165, %51 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
    %216 = bufferization.clone %alloc_6 : memref<7x4xf16> to memref<7x4xf16>
    %217 = arith.muli %23, %107 : i64
    %218 = arith.maxsi %c-12489_i16, %c-12489_i16 : i16
    %219 = vector.broadcast %c23118_i16 : i16 to vector<15x11xi16>
    %220 = vector.broadcast %c349314485_i32 : i32 to vector<15x11xi32>
    %221 = vector.gather %alloc_18[%c9, %c5] [%220], %138, %219 : memref<7x4xi16>, vector<15x11xi32>, vector<15x11xi1>, vector<15x11xi16> into vector<15x11xi16>
    %222 = arith.shli %23, %107 : i64
    %223 = math.rsqrt %14 : tensor<7x7xf16>
    %224 = math.expm1 %14 : tensor<7x7xf16>
    %225 = math.round %0 : tensor<7x4xf16>
    %226 = vector.bitcast %165 : vector<1xi16> to vector<1xf16>
    %227 = affine.load %alloc_15[%c1, %c9] : memref<7x7xi32>
    %228 = arith.minf %cst_0, %cst_0 : f32
    %229 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %90, %57, %19 : vector<4xi16>, vector<7x4xi16> into vector<7xi16>
    memref.assume_alignment %alloc_13, 8 : memref<15x11xi32>
    %230 = arith.addf %cst_2, %cst_0 : f32
    %231 = math.round %3 : tensor<15x11xf16>
    %232 = arith.divf %cst_0, %cst_3 : f32
    %233 = arith.divui %35, %c-12489_i16 : i16
    %234 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 128 - 16, d2, (d1 ceildiv 2) floordiv 4 + 2, 0)>(%97, %c4, %71)
    %235 = vector.gather %4[%c8, %c13] [%56], %55, %56 : tensor<7x4xi32>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi32> into vector<7x4xi32>
    memref.assume_alignment %alloc_9, 4 : memref<7x7xf16>
    %236 = arith.divsi %164, %c635472731_i64 : i64
    %237 = affine.if affine_set<(d0, d1) : (d0 >= 0, d0 mod 2 >= 0, -((d0 + (d0 - 2) mod 64) ceildiv 32) - 64 >= 0)>(%c15, %c13) -> i1 {
      %262 = arith.floordivsi %107, %extracted_40 : i64
      %263 = math.log2 %expanded_24 : tensor<7x4x1xf32>
      %264 = arith.maxui %c446210263_i64, %23 : i64
      %265 = math.log2 %expanded_24 : tensor<7x4x1xf32>
      %266 = index.sub %124, %155
      %267 = bufferization.clone %alloc_15 : memref<7x7xi32> to memref<7x7xi32>
      %268 = vector.broadcast %82 : i32 to vector<7xi32>
      %dest_44, %accumulated_value_45 = vector.scan <minsi>, %104, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi32>, vector<7xi32>
      %expanded_46 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<15x11xi32> into tensor<15x11x1xi32>
      affine.yield %false : i1
    } else {
      %262 = arith.minui %c23118_i16, %c-26382_i16 : i16
      %263 = math.absf %101 : tensor<7x4xf16>
      %264 = math.ipowi %collapsed, %collapsed : tensor<49x1xi1>
      %265 = arith.subi %75, %false_21 : i1
      %266 = vector.broadcast %71 : index to vector<4xindex>
      %267 = vector.broadcast %true : i1 to vector<4xi1>
      vector.scatter %alloc_17[%c6, %c2] [%266], %267, %72 : memref<7x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %268 = arith.ori %true, %75 : i1
      %269 = bufferization.to_memref %generated_27 : memref<?x?xf32>
      %270 = vector.extract_strided_slice %138 {offsets = [6], sizes = [2], strides = [1]} : vector<15x11xi1> to vector<2x11xi1>
      affine.yield %false : i1
    }
    %238 = arith.subi %c446210263_i64, %c635472731_i64 : i64
    bufferization.dealloc_tensor %16 : tensor<7x7xf16>
    %239 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 mod 2) mod 64)>(%214, %108, %c1, %124)
    %240 = math.round %3 : tensor<15x11xf16>
    %241 = vector.matrix_multiply %175, %175 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
    %242 = arith.maxf %cst_2, %cst_0 : f32
    %243 = vector.reduction <minui>, %241 : vector<1xi64> into i64
    %244 = math.round %1 : tensor<7x4xf32>
    %245 = math.copysign %101, %0 : tensor<7x4xf16>
    %alloc_41 = memref.alloc() : memref<7x4xi32>
    %246 = vector.gather %alloc_41[%c9, %207] [%104], %103, %118 : memref<7x4xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
    %247 = vector.broadcast %c23118_i16 : i16 to vector<1x1xi16>
    %248 = vector.outerproduct %215, %77, %247 {kind = #vector.kind<mul>} : vector<1xi16>, vector<1xi16>
    %249 = math.copysign %1, %1 : tensor<7x4xf32>
    %expanded_42 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<4x7xi16> into tensor<4x7x1xi16>
    %250 = arith.maxsi %82, %227 : i32
    %251 = arith.floordivsi %false, %true : i1
    memref.store %cst_1, %alloc_16[%c3, %c1] : memref<7x4xf16>
    %252 = index.maxs %c8, %71
    %253 = arith.remui %121, %121 : i16
    %254 = arith.floordivsi %164, %c580135393_i64 : i64
    %255 = math.sqrt %42 : tensor<7x7xf32>
    %256 = math.ipowi %collapsed_25, %collapsed_25 : tensor<28xi16>
    %257 = tensor.empty() : tensor<7x4xi1>
    %258 = linalg.copy ins(%13 : tensor<7x4xi1>) outs(%257 : tensor<7x4xi1>) -> tensor<7x4xi1>
    %alloc_43 = memref.alloc() : memref<7x7xi1>
    linalg.transpose ins(%11 : tensor<7x7xi1>) outs(%alloc_43 : memref<7x7xi1>) permutation = [1, 0] 
    %259 = tensor.empty() : tensor<7xi64>
    %reduced = linalg.reduce ins(%110 : tensor<7x4xi64>) outs(%259 : tensor<7xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %generated_44 = tensor.generate %114 {
        ^bb0(%arg3: index, %arg4: index):
          %269 = arith.subi %c-29481_i16, %c23118_i16 : i16
          %270 = math.expm1 %0 : tensor<7x4xf16>
          %271 = arith.muli %c635472731_i64, %c446210263_i64 : i64
          %272 = vector.broadcast %227 : i32 to vector<11xi32>
          %dest_45, %accumulated_value_46 = vector.scan <minui>, %220, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<15x11xi32>, vector<11xi32>
          tensor.yield %c635472731_i64 : i64
        } : tensor<?x7xi64>
        %262 = arith.xori %false, %true : i1
        %263 = arith.remui %c-12489_i16, %35 : i16
        %264 = vector.reduction <maxui>, %241 : vector<1xi64> into i64
        %265 = vector.outerproduct %195, %195, %102 {kind = #vector.kind<add>} : vector<7xf16>, vector<7xf16>
        %266 = math.cos %3 : tensor<15x11xf16>
        %267 = math.absf %101 : tensor<7x4xf16>
        %268 = math.cos %3 : tensor<15x11xf16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %260 = scf.parallel (%arg3, %arg4) = (%108, %48) to (%152, %c9) step (%c8, %c5) init (%true) -> i1 {
      %262 = vector.broadcast %true : i1 to vector<4xi1>
      %263 = vector.insert %262, %55 [0] : vector<4xi1> into vector<7x4xi1>
      %264 = math.round %157 : tensor<15x11xf16>
      %265 = math.round %42 : tensor<7x7xf32>
      memref.assume_alignment %alloc_10, 4 : memref<15x11xi64>
      %266 = vector.shuffle %106, %215 [1] : vector<1xi16>, vector<1xi16>
      %267 = math.roundeven %cst_1 : f16
      %268 = arith.andi %c-26382_i16, %c-29481_i16 : i16
      %269 = vector.broadcast %c1 : index to vector<7xindex>
      vector.scatter %alloc_4[%c5, %c0] [%269], %202, %195 : memref<15x11xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %270 = math.log1p %expanded_28 : tensor<7x7x1xf16>
      %cast = tensor.cast %expanded : tensor<7x7x1xi1> to tensor<?x?x?xi1>
      %271 = arith.addf %cst_1, %cst_1 : f16
      %272 = vector.reduction <mul>, %262 : vector<4xi1> into i1
      %273 = index.divs %71, %183
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %274 = vector.transfer_read %collapsed_36[%155], %cst_45 : tensor<49xf16>, vector<f16>
      %generated_46 = tensor.generate %114, %rank {
      ^bb0(%arg5: index, %arg6: index):
        %expanded_48 = tensor.expand_shape %184 [[0], [1, 2]] : tensor<7x4xi64> into tensor<7x4x1xi64>
        %276 = math.fpowi %cst_3, %227 : f32, i32
        %277 = math.ceil %expanded_30 : tensor<15x11x1xf16>
        %278 = arith.remf %cst_0, %cst_0 : f32
        tensor.yield %c580135393_i64 : i64
      } : tensor<?x?xi64>
      %275 = vector.reduction <and>, %241 : vector<1xi64> into i64
      %false_47 = arith.constant false
      scf.reduce(%false_47)  : i1 {
      ^bb0(%arg5: i1, %arg6: i1):
        %276 = index.divs %156, %c4
        %277 = arith.cmpi ne, %c-12489_i16, %121 : i16
        %278 = arith.shrui %c-26382_i16, %c23118_i16 : i16
        %279 = vector.extract %226[0] : vector<1xf16>
        %280 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %281 = math.cos %3 : tensor<15x11xf16>
        %282 = vector.reduction <xor>, %90 : vector<4xi16> into i16
        %283 = math.copysign %cst_1, %extracted : f16
        %false_48 = arith.constant false
        scf.reduce.return %false_48 : i1
      }
      scf.yield
    }
    %261 = affine.vector_load %alloc_20[%152] : memref<15xi64>, vector<4xi64>
    affine.vector_store %106, %alloc_14[%rank, %97] : memref<7x7xi16>, vector<1xi16>
    vector.print %19 : vector<7xi16>
    vector.print %22 : vector<3xi16>
    vector.print %51 : vector<1xi16>
    vector.print %54 : vector<7x4xi16>
    vector.print %55 : vector<7x4xi1>
    vector.print %56 : vector<7x4xi32>
    vector.print %57 : vector<7x4xi16>
    vector.print %63 : vector<1xi16>
    vector.print %72 : vector<4xi16>
    vector.print %77 : vector<1xi16>
    vector.print %90 : vector<4xi16>
    vector.print %102 : vector<7x7xf16>
    vector.print %103 : vector<7x7xi1>
    vector.print %104 : vector<7x7xi32>
    vector.print %105 : vector<7x7xf16>
    vector.print %106 : vector<1xi16>
    vector.print %111 : vector<7x4xi64>
    vector.print %112 : vector<7x4xi64>
    vector.print %118 : vector<7x7xi32>
    vector.print %138 : vector<15x11xi1>
    vector.print %165 : vector<1xi16>
    vector.print %172 : vector<4xi64>
    vector.print %174 : vector<4xi16>
    vector.print %175 : vector<4xi64>
    vector.print %177 : vector<7xi16>
    vector.print %195 : vector<7xf16>
    vector.print %202 : vector<7xi1>
    vector.print %215 : vector<1xi16>
    vector.print %219 : vector<15x11xi16>
    vector.print %220 : vector<15x11xi32>
    vector.print %221 : vector<15x11xi16>
    vector.print %226 : vector<1xf16>
    vector.print %235 : vector<7x4xi32>
    vector.print %241 : vector<1xi64>
    vector.print %246 : vector<7x7xi32>
    vector.print %261 : vector<4xi64>
    vector.print %c349314485_i32 : i32
    vector.print %cst : f32
    vector.print %c-29481_i16 : i16
    vector.print %c-12489_i16 : i16
    vector.print %c-26382_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1375187546_i32 : i32
    vector.print %c580135393_i64 : i64
    vector.print %c446210263_i64 : i64
    vector.print %c1845219569_i32 : i32
    vector.print %false : i1
    vector.print %c23118_i16 : i16
    vector.print %c635472731_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %23 : i64
    vector.print %false_21 : i1
    vector.print %35 : i16
    vector.print %44 : i16
    vector.print %75 : i1
    vector.print %82 : i32
    vector.print %107 : i64
    vector.print %true : i1
    vector.print %121 : i16
    vector.print %164 : i64
    vector.print %extracted : f16
    vector.print %extracted_40 : i64
    vector.print %227 : i32
    return
  }
}
