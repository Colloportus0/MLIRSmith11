module {
  func.func @func1(%arg0: i64, %arg1: f32) -> index {
    %true = arith.constant true
    %c-30111_i16 = arith.constant -30111 : i16
    %false = arith.constant false
    %c-29182_i16 = arith.constant -29182 : i16
    %false_0 = arith.constant false
    %c29252_i16 = arith.constant 29252 : i16
    %c1571650467_i32 = arith.constant 1571650467 : i32
    %c1559528702_i64 = arith.constant 1559528702 : i64
    %c-21208_i16 = arith.constant -21208 : i16
    %cst = arith.constant 0x4DA55348 : f32
    %false_1 = arith.constant false
    %c27303_i16 = arith.constant 27303 : i16
    %c536847134_i64 = arith.constant 536847134 : i64
    %true_2 = arith.constant true
    %cst_3 = arith.constant 1.68955661E+9 : f32
    %c1859716050_i32 = arith.constant 1859716050 : i32
    %0 = tensor.empty() : tensor<4x5xf32>
    %1 = tensor.empty() : tensor<4x5xi1>
    %2 = tensor.empty() : tensor<15x12xi32>
    %3 = tensor.empty() : tensor<12xi16>
    %4 = tensor.empty() : tensor<4x5xi16>
    %5 = tensor.empty() : tensor<12xf32>
    %6 = tensor.empty() : tensor<15x12xi1>
    %7 = tensor.empty() : tensor<15x12xi64>
    %8 = tensor.empty() : tensor<5x4xi32>
    %9 = tensor.empty() : tensor<5x4xf32>
    %10 = tensor.empty() : tensor<5x4xf16>
    %11 = tensor.empty() : tensor<5x4xi16>
    %12 = tensor.empty() : tensor<15x12xi32>
    %13 = tensor.empty() : tensor<5x4xi16>
    %14 = tensor.empty() : tensor<15x12xf32>
    %15 = tensor.empty() : tensor<15x12xf16>
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
    %alloc = memref.alloc() : memref<5x4xi32>
    %alloc_4 = memref.alloc() : memref<15x12xf16>
    %alloc_5 = memref.alloc() : memref<4x5xi32>
    %alloc_6 = memref.alloc() : memref<12xf32>
    %alloc_7 = memref.alloc() : memref<15x12xf16>
    %alloc_8 = memref.alloc() : memref<5x4xf32>
    %alloc_9 = memref.alloc() : memref<4x5xi1>
    %alloc_10 = memref.alloc() : memref<4x5xf16>
    %alloc_11 = memref.alloc() : memref<5x4xi16>
    %alloc_12 = memref.alloc() : memref<12xf32>
    %alloc_13 = memref.alloc() : memref<5x4xi16>
    %alloc_14 = memref.alloc() : memref<5x4xi16>
    %alloc_15 = memref.alloc() : memref<15x12xf16>
    %alloc_16 = memref.alloc() : memref<15x12xi1>
    %alloc_17 = memref.alloc() : memref<4x5xf32>
    %alloc_18 = memref.alloc() : memref<4x5xf32>
    %16 = tensor.empty() : tensor<4x5xf32>
    %17 = linalg.copy ins(%0 : tensor<4x5xf32>) outs(%16 : tensor<4x5xf32>) -> tensor<4x5xf32>
    %alloc_19 = memref.alloc() : memref<4x5xf32>
    linalg.transpose ins(%9 : tensor<5x4xf32>) outs(%alloc_19 : memref<4x5xf32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<5xi32>
    %reduced = linalg.reduce ins(%alloc : memref<5x4xi32>) outs(%18 : tensor<5xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %243 = vector.broadcast %init : i32 to vector<1xi32>
        %244 = vector.multi_reduction <minui>, %243, %243 [] : vector<1xi32> to vector<1xi32>
        %245 = arith.divui %in, %in : i32
        %246 = arith.maxf %cst_3, %cst : f32
        %247 = math.tanh %cst_3 : f32
        scf.index_switch %c8 
        case 1 {
          %250 = affine.max affine_map<(d0, d1) -> (d1 + d1 * 2 + d0 - (d1 + d0 floordiv 2), ((d1 * 2 + d0) mod 4) mod 16, d1 + d1 * 2 + d0 - (d1 + d0 floordiv 2))>(%c6, %c3)
          %251 = index.mul %c1, %c12
          %252 = vector.shuffle %243, %243 [0, 1] : vector<1xi32>, vector<1xi32>
          %253 = arith.shrui %c27303_i16, %c29252_i16 : i16
          %254 = vector.broadcast %c1571650467_i32 : i32 to vector<5x4xi32>
          %255 = math.log2 %5 : tensor<12xf32>
          %256 = math.floor %0 : tensor<4x5xf32>
          %257 = arith.muli %c1859716050_i32, %init : i32
          %258 = math.atan2 %14, %14 : tensor<15x12xf32>
          %259 = index.floordivs %c11, %c2
          %260 = index.mul %251, %c12
          %261 = arith.maxsi %false_1, %false_0 : i1
          %262 = math.atan2 %16, %16 : tensor<4x5xf32>
          %263 = arith.floordivsi %c-21208_i16, %c-30111_i16 : i16
          %264 = vector.create_mask %c5, %c2 : vector<4x5xi1>
          %265 = math.floor %16 : tensor<4x5xf32>
          scf.yield
        }
        default {
          %250 = math.atan %15 : tensor<15x12xf16>
          %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %243, %243, %c1571650467_i32 : vector<1xi32>, vector<1xi32> into i32
          %252 = math.atan2 %0, %17 : tensor<4x5xf32>
          %253 = math.fma %9, %9, %9 : tensor<5x4xf32>
          %254 = vector.broadcast %false_1 : i1 to vector<12xi1>
          %255 = vector.broadcast %c-29182_i16 : i16 to vector<15x12xi16>
          %256 = arith.maxf %cst_3, %cst : f32
          %257 = math.ipowi %false_1, %false_0 : i1
          %258 = math.round %10 : tensor<5x4xf16>
          %259 = arith.minsi %init, %c1859716050_i32 : i32
          %260 = arith.mulf %cst_3, %cst : f32
          %from_elements_46 = tensor.from_elements %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3 : tensor<4x5xf32>
          %261 = arith.remui %init, %c1571650467_i32 : i32
          %262 = index.castu %c0 : index to i32
          memref.tensor_store %13, %alloc_14 : memref<5x4xi16>
          %263 = index.divs %c7, %c5
        }
        %248 = math.fma %0, %16, %0 : tensor<4x5xf32>
        %249 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<15x12xi32> into tensor<15x12x1xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg2, %arg3) = (%c9, %c0) to (%c2, %c2) step (%c11, %c10) {
      %243 = math.tanh %9 : tensor<5x4xf32>
      %244 = memref.atomic_rmw muli %c1571650467_i32, %alloc_5[%c1, %c4] : (i32, memref<4x5xi32>) -> i32
      %245 = memref.load %alloc_4[%c7, %c0] : memref<15x12xf16>
      %246 = index.divu %c4, %arg3
      %247 = math.log10 %9 : tensor<5x4xf32>
      %248 = index.maxs %c11, %c13
      %249 = math.log10 %cst : f32
      %250 = tensor.empty() : tensor<15x15x15xf32>
      %alloc_46 = memref.alloc() : memref<15x15xf32>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %alloc_46, %alloc_46 : memref<15x15xf32>, memref<15x15xf32>, memref<15x15xf32>) outs(%250 : tensor<15x15x15xf32>) {
      ^bb0(%in: f32, %in_49: f32, %in_50: f32, %out: f32):
        %259 = arith.divui %c-29182_i16, %c-30111_i16 : i16
        %260 = math.fma %5, %5, %5 : tensor<12xf32>
        %inserted = tensor.insert %c-21208_i16 into %13[%c3, %c2] : tensor<5x4xi16>
        %261 = index.ceildivs %c1, %c12
        %262 = arith.divui %false_1, %false_0 : i1
        %263 = math.log10 %15 : tensor<15x12xf16>
        %264 = vector.broadcast %c27303_i16 : i16 to vector<15x12xi16>
        %265 = math.sqrt %17 : tensor<4x5xf32>
        %c1_i16_51 = arith.constant 1 : i16
        %c0_i16_52 = arith.constant 0 : i16
        %266 = vector.transfer_read %4[%261, %c15], %c0_i16_52 : tensor<4x5xi16>, vector<i16>
        %267 = vector.transpose %264, [1, 0] : vector<15x12xi16> to vector<12x15xi16>
        %268 = math.fpowi %10, %8 : tensor<5x4xf16>, tensor<5x4xi32>
        %269 = vector.broadcast %c29252_i16 : i16 to vector<12xi16>
        %270 = vector.insert %269, %264 [11] : vector<12xi16> into vector<15x12xi16>
        %271 = affine.load %alloc_7[%c13, %c8] : memref<15x12xf16>
        %272 = index.maxu %c11, %c15
        %alloc_53 = memref.alloc() : memref<4x5xi16>
        memref.tensor_store %4, %alloc_53 : memref<4x5xi16>
        %273 = arith.remf %out, %cst : f32
        %274 = arith.mulf %in_50, %in_50 : f32
        %275 = arith.divsi %true_2, %true : i1
        %276 = math.cos %16 : tensor<4x5xf32>
        %277 = math.sqrt %14 : tensor<15x12xf32>
        %278 = arith.divsi %c-29182_i16, %c29252_i16 : i16
        %279 = vector.flat_transpose %269 {columns = 3 : i32, rows = 4 : i32} : vector<12xi16> -> vector<12xi16>
        %inserted_54 = tensor.insert %271 into %10[%c0, %c1] : tensor<5x4xf16>
        %280 = memref.load %alloc_11[%c0, %c3] : memref<5x4xi16>
        %281 = affine.max affine_map<(d0, d1) -> (d0 - 16, d1, d0 - (d0 - 16), d0 - 16)>(%c14, %c12)
        %282 = math.log10 %16 : tensor<4x5xf32>
        %283 = affine.min affine_map<(d0, d1, d2) -> (-(d1 ceildiv 128) - 7, d1 floordiv 32)>(%c10, %c8, %c4)
        memref.tensor_store %8, %alloc : memref<5x4xi32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %279, %269, %c-29182_i16 : vector<12xi16>, vector<12xi16> into i16
        %inserted_55 = tensor.insert %271 into %10[%c0, %c1] : tensor<5x4xf16>
        %285 = vector.shuffle %269, %279 [0, 2, 7, 8, 9, 13, 14, 15, 16, 19, 20, 21] : vector<12xi16>, vector<12xi16>
        %286 = affine.load %alloc_15[%c15, %c1] : memref<15x12xf16>
        linalg.yield %cst_3 : f32
      } -> tensor<15x15x15xf32>
      %252 = math.exp2 %15 : tensor<15x12xf16>
      %253 = memref.alloca_scope  -> (i16) {
        %259 = bufferization.clone %alloc_15 : memref<15x12xf16> to memref<15x12xf16>
        %260 = bufferization.to_tensor %alloc_7 : memref<15x12xf16>
        %261 = vector.create_mask %arg3, %c3 : vector<5x4xi1>
        %262 = arith.muli %c536847134_i64, %c1559528702_i64 : i64
        %263 = bufferization.clone %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        %264 = math.log1p %cst : f32
        %265 = affine.max affine_map<(d0, d1) -> (d1 + 8, d1 * 8 + d0 floordiv 4, -d0, d1)>(%c14, %c7)
        %266 = bufferization.clone %alloc_18 : memref<4x5xf32> to memref<4x5xf32>
        %267 = math.ceil %14 : tensor<15x12xf32>
        bufferization.dealloc_tensor %3 : tensor<12xi16>
        %268 = math.log1p %5 : tensor<12xf32>
        %269 = arith.maxsi %false_1, %false : i1
        %270 = index.ceildivs %c5, %c9
        %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<5x4xf32> into tensor<5x4x1xf32>
        %271 = index.maxu %c2, %c13
        %272 = arith.shrui %c-30111_i16, %c27303_i16 : i16
        %273 = index.ceildivs %271, %arg2
        %274 = math.powf %17, %17 : tensor<4x5xf32>
        %275 = bufferization.clone %alloc_9 : memref<4x5xi1> to memref<4x5xi1>
        %276 = vector.broadcast %c1859716050_i32 : i32 to vector<5xi32>
        %277 = vector.flat_transpose %276 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
        %cast_49 = tensor.cast %15 : tensor<15x12xf16> to tensor<?x?xf16>
        %278 = arith.minui %c-21208_i16, %c29252_i16 : i16
        %279 = math.log2 %14 : tensor<15x12xf32>
        %280 = arith.shrui %c29252_i16, %c-30111_i16 : i16
        %281 = bufferization.clone %266 : memref<4x5xf32> to memref<4x5xf32>
        %282 = arith.divf %cst_3, %cst : f32
        vector.print %277 : vector<5xi32>
        %283 = math.exp2 %16 : tensor<4x5xf32>
        %284 = index.divs %c5, %c9
        %285 = vector.flat_transpose %276 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
        %alloc_50 = memref.alloc() : memref<5x4x1xf32>
        memref.tensor_store %expanded, %alloc_50 : memref<5x4x1xf32>
        %286 = arith.muli %c-30111_i16, %c-21208_i16 : i16
        memref.alloca_scope.return %c29252_i16 : i16
      }
      %254 = bufferization.clone %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
      %255 = index.castu %c12 : index to i32
      %256 = memref.load %alloc_17[%c3, %c1] : memref<4x5xf32>
      %alloca_47 = memref.alloca() : memref<4x5xi64>
      %257 = tensor.empty() : tensor<15x12xf16>
      %mapped_48 = linalg.map ins(%15, %alloc_4 : tensor<15x12xf16>, memref<15x12xf16>) outs(%257 : tensor<15x12xf16>)
        (%in: f16, %in_49: f16) {
          %259 = arith.cmpi ugt, %c27303_i16, %c27303_i16 : i16
          %260 = vector.broadcast %c1859716050_i32 : i32 to vector<15xi32>
          %261 = vector.flat_transpose %260 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
          %262 = math.tanh %cst_3 : f32
          %263 = math.fma %in, %in, %in : f16
          vector.print %261 : vector<15xi32>
          %264 = arith.cmpf une, %in_49, %in_49 : f16
          %265 = math.ctpop %3 : tensor<12xi16>
          %266 = math.sqrt %0 : tensor<4x5xf32>
          memref.copy %alloc_14, %alloc_11 : memref<5x4xi16> to memref<5x4xi16>
          %267 = vector.multi_reduction <and>, %260, %261 [] : vector<15xi32> to vector<15xi32>
          %268 = math.floor %14 : tensor<15x12xf32>
          %alloc_50 = memref.alloc() : memref<12x12xi32>
          %269 = tensor.empty() : tensor<15x12xi32>
          %270 = linalg.matmul ins(%12, %alloc_50 : tensor<15x12xi32>, memref<12x12xi32>) outs(%269 : tensor<15x12xi32>) -> tensor<15x12xi32>
          %271 = arith.divui %true, %true : i1
          bufferization.dealloc_tensor %10 : tensor<5x4xf16>
          %272 = arith.divsi %false_0, %false_0 : i1
          memref.tensor_store %5, %alloc_12 : memref<12xf32>
          %273 = arith.remf %cst, %cst_3 : f32
          %274 = vector.reduction <maxui>, %261 : vector<15xi32> into i32
          %false_51 = index.bool.constant false
          %275 = arith.divsi %c-29182_i16, %c29252_i16 : i16
          %276 = affine.load %alloc_9[%c11, %c6] : memref<4x5xi1>
          memref.tensor_store %15, %alloc_4 : memref<15x12xf16>
          %277 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c1, %c9, %c0)
          %278 = arith.remf %in, %in_49 : f16
          %279 = arith.mulf %in, %in_49 : f16
          %280 = math.rsqrt %cst_3 : f32
          %281 = vector.extract %260[6] : vector<15xi32>
          %282 = arith.remf %in_49, %in : f16
          %283 = index.add %c11, %246
          %284 = vector.transpose %261, [0] : vector<15xi32> to vector<15xi32>
          bufferization.dealloc_tensor %12 : tensor<15x12xi32>
          %285 = index.floordivs %c0, %c10
          %cst_52 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_52 : f16
        }
      %258 = arith.shrui %true_2, %false : i1
      scf.yield
    }
    %19 = affine.vector_load %alloc_14[%c1, %c5] : memref<5x4xi16>, vector<5xi16>
    affine.vector_store %19, %alloc_14[%c15, %c2] : memref<5x4xi16>, vector<5xi16>
    %20 = tensor.empty() : tensor<12xi16>
    %21 = tensor.empty() : tensor<i16>
    %22 = linalg.dot ins(%3, %20 : tensor<12xi16>, tensor<12xi16>) outs(%21 : tensor<i16>) -> tensor<i16>
    %23 = index.divs %c11, %c0
    %24 = memref.load %alloc_16[%c6, %c0] : memref<15x12xi1>
    %25 = arith.divsi %c-29182_i16, %c29252_i16 : i16
    %26 = vector.extract %19[0] : vector<5xi16>
    %27 = math.tanh %9 : tensor<5x4xf32>
    %28 = index.add %c0, %c2
    %29 = memref.atomic_rmw assign %cst, %alloc_6[%c10] : (f32, memref<12xf32>) -> f32
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
    %alloc_20 = memref.alloc() : memref<5xi32>
    memref.tensor_store %reduced, %alloc_20 : memref<5xi32>
    %30 = tensor.empty() : tensor<5xi32>
    %mapped = linalg.map ins(%reduced, %reduced : tensor<5xi32>, tensor<5xi32>) outs(%30 : tensor<5xi32>)
      (%in: i32, %in_46: i32) {
        %243 = math.atan2 %cst, %cst : f32
        %244 = memref.atomic_rmw assign %c1571650467_i32, %alloc[%c1, %c3] : (i32, memref<5x4xi32>) -> i32
        %245 = arith.cmpi ne, %in, %in_46 : i32
        %c1_i16_47 = arith.constant 1 : i16
        %c0_i16_48 = arith.constant 0 : i16
        %246 = vector.transfer_read %20[%c2], %c0_i16_48 : tensor<12xi16>, vector<i16>
        %247 = index.casts %c10 : index to i32
        %248 = index.ceildivu %c5, %c4
        %249 = arith.divsi %c1_i16_47, %c-21208_i16 : i16
        %250 = vector.broadcast %c536847134_i64 : i64 to vector<15x12xi64>
        %c25292_i16 = arith.constant 25292 : i16
        %true_49 = arith.constant true
        %false_50 = arith.constant false
        %251 = vector.transfer_read %alloc_9[%c6, %28], %false_50 : memref<4x5xi1>, vector<i1>
        %252 = index.maxu %c12, %248
        %253 = arith.cmpf olt, %cst, %cst_3 : f32
        %alloc_51 = memref.alloc() : memref<12xi16>
        memref.tensor_store %20, %alloc_51 : memref<12xi16>
        %254 = index.divs %c7, %c13
        %inserted = tensor.insert %c-21208_i16 into %11[%c4, %c1] : tensor<5x4xi16>
        %255 = math.log10 %5 : tensor<12xf32>
        %256 = scf.index_switch %254 -> index 
        case 1 {
          %269 = affine.apply affine_map<(d0) -> (d0 + d0 floordiv 2 - (d0 + 4) + 3 - (d0 floordiv 2 + 2) + 5)>(%23)
          %270 = affine.load %alloc_19[%c10, %c8] : memref<4x5xf32>
          %271 = arith.muli %false_0, %false_0 : i1
          %272 = math.fpowi %14, %2 : tensor<15x12xf32>, tensor<15x12xi32>
          %273 = math.tanh %cst_3 : f32
          %274 = arith.muli %true_49, %false_1 : i1
          %275 = index.divs %c8, %252
          %276 = arith.remf %270, %cst_3 : f32
          %277 = arith.xori %in, %c1571650467_i32 : i32
          memref.tensor_store %5, %alloc_12 : memref<12xf32>
          %278 = arith.minsi %c27303_i16, %c-30111_i16 : i16
          %279 = math.fma %16, %0, %0 : tensor<4x5xf32>
          %280 = math.powf %14, %14 : tensor<15x12xf32>
          %281 = vector.extract %19[4] : vector<5xi16>
          %282 = math.rsqrt %9 : tensor<5x4xf32>
          %283 = arith.divsi %c27303_i16, %c-21208_i16 : i16
          scf.yield %252 : index
        }
        case 2 {
          %269 = arith.minsi %false_1, %false_0 : i1
          %270 = arith.divf %cst_3, %cst : f32
          bufferization.dealloc_tensor %3 : tensor<12xi16>
          %271 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
          %272 = index.sub %c6, %248
          %273 = math.round %cst_3 : f32
          %274 = math.expm1 %5 : tensor<12xf32>
          %275 = index.castu %c11 : index to i32
          %276 = math.exp2 %0 : tensor<4x5xf32>
          affine.store %cst, %alloc_12[%c12] : memref<12xf32>
          %277 = vector.extract %271[0] : vector<5xi16>
          %278 = arith.divsi %false, %true_2 : i1
          %279 = arith.ori %true_2, %false : i1
          %280 = vector.load %alloc_8[%c4, %c3] : memref<5x4xf32>, vector<5x4xf32>
          %281 = index.mul %c15, %252
          %splat_54 = tensor.splat %c536847134_i64 : tensor<4x5xi64>
          scf.yield %248 : index
        }
        default {
          %269 = arith.shrui %c29252_i16, %c-21208_i16 : i16
          %alloc_54 = memref.alloc() : memref<5x4xf16>
          %inserted_55 = tensor.insert %c1571650467_i32 into %8[%c3, %c3] : tensor<5x4xi32>
          %270 = index.castu %false : i1 to index
          %271 = math.cttz %c536847134_i64 : i64
          memref.copy %alloc_4, %alloc_15 : memref<15x12xf16> to memref<15x12xf16>
          %272 = arith.divf %cst_3, %cst : f32
          %273 = math.log2 %0 : tensor<4x5xf32>
          %274 = arith.divui %in_46, %in_46 : i32
          %275 = math.exp2 %10 : tensor<5x4xf16>
          %276 = math.tanh %17 : tensor<4x5xf32>
          %277 = index.mul %c6, %270
          %from_elements_56 = tensor.from_elements %c1571650467_i32, %c1571650467_i32, %in, %c1571650467_i32, %in_46, %in, %c1859716050_i32, %in_46, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %in_46, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %in, %in, %in_46, %in_46 : tensor<5x4xi32>
          %278 = arith.cmpi eq, %true, %false_0 : i1
          %cast_57 = tensor.cast %15 : tensor<15x12xf16> to tensor<?x?xf16>
          %279 = index.add %c13, %277
          scf.yield %28 : index
        }
        %257 = math.exp2 %15 : tensor<15x12xf16>
        %258 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
        %259 = vector.extract %250[13] : vector<15x12xi64>
        %260 = arith.cmpi ugt, %true, %true_49 : i1
        %generated = tensor.generate %c15, %c15 {
        ^bb0(%arg2: index, %arg3: index):
          %269 = arith.maxui %false_0, %false_0 : i1
          %270 = math.rsqrt %17 : tensor<4x5xf32>
          %271 = arith.shli %true_49, %false_1 : i1
          %272 = index.castu %c9 : index to i32
          %cst_54 = arith.constant 1.000000e+00 : f16
          tensor.yield %cst_54 : f16
        } : tensor<?x?xf16>
        %261 = index.castu %c0 : index to i32
        %262 = arith.addi %in_46, %c1859716050_i32 : i32
        %cast_52 = tensor.cast %11 : tensor<5x4xi16> to tensor<?x?xi16>
        %263 = vector.bitcast %258 : vector<1xi16> to vector<1xi16>
        %splat = tensor.splat %false : tensor<15x12xi1>
        %cst_53 = arith.constant 1.000000e+00 : f16
        %264 = vector.transfer_read %alloc_10[%23, %c13], %cst_53 : memref<4x5xf16>, vector<12xf16>
        %265 = arith.muli %c1571650467_i32, %c1571650467_i32 : i32
        %266 = vector.multi_reduction <xor>, %259, %259 [] : vector<12xi64> to vector<12xi64>
        %267 = vector.insertelement %c-29182_i16, %263[%c0 : index] : vector<1xi16>
        %268 = vector.multi_reduction <maxui>, %259, %c536847134_i64 [0] : vector<12xi64> to i64
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %31 = bufferization.to_memref %9 : memref<5x4xf32>
    memref.copy %alloc_12, %alloc_6 : memref<12xf32> to memref<12xf32>
    %32 = scf.if %false -> (f16) {
      %c1436836136_i32 = arith.constant 1436836136 : i32
      %243 = math.sqrt %cst : f32
      scf.if %true_2 {
        %246 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
        %247 = memref.load %alloc_7[%c3, %c6] : memref<15x12xf16>
        %248 = index.castu %c1571650467_i32 : i32 to index
        %249 = arith.remf %cst, %cst : f32
        %c-1116_i16 = arith.constant -1116 : i16
        %250 = bufferization.clone %alloc_17 : memref<4x5xf32> to memref<4x5xf32>
        %alloca_49 = memref.alloca() : memref<12xi16>
        %251 = math.rsqrt %cst : f32
      } else {
        %alloc_49 = memref.alloc() : memref<15x12xi1>
        memref.copy %alloc_16, %alloc_49 : memref<15x12xi1> to memref<15x12xi1>
        %246 = vector.broadcast %cst_3 : f32 to vector<4x5xf32>
        %247 = vector.fma %246, %246, %246 : vector<4x5xf32>
        %alloca_50 = memref.alloca() : memref<15x12xi32>
        %248 = arith.shrui %c1571650467_i32, %c1571650467_i32 : i32
        %collapsed_51 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x5xi1> into tensor<20xi1>
        %alloca_52 = memref.alloca() : memref<4x5xi64>
        %249 = math.log1p %14 : tensor<15x12xf32>
        %250 = arith.divf %cst, %cst : f32
      }
      memref.alloca_scope  {
        %cast_49 = tensor.cast %5 : tensor<12xf32> to tensor<?xf32>
        %246 = arith.minsi %c1859716050_i32, %c1571650467_i32 : i32
        %247 = math.fpowi %10, %8 : tensor<5x4xf16>, tensor<5x4xi32>
        %248 = vector.bitcast %19 : vector<5xi16> to vector<5xi16>
        %249 = arith.shli %false, %false_0 : i1
        %250 = vector.insertelement %c-30111_i16, %248[%c14 : index] : vector<5xi16>
        %251 = index.mul %c9, %c10
        %collapsed_50 = tensor.collapse_shape %17 [[0, 1]] : tensor<4x5xf32> into tensor<20xf32>
        %252 = affine.load %alloc_13[%c2, %c7] : memref<5x4xi16>
        %253 = vector.broadcast %c1859716050_i32 : i32 to vector<4x5xi32>
        %254 = vector.broadcast %false_0 : i1 to vector<4x5xi1>
        %255 = vector.gather %12[%c0, %28] [%253], %254, %253 : tensor<15x12xi32>, vector<4x5xi32>, vector<4x5xi1>, vector<4x5xi32> into vector<4x5xi32>
        %256 = arith.cmpf ueq, %cst_3, %cst : f32
        %257 = math.log1p %9 : tensor<5x4xf32>
        %258 = arith.shrui %c-29182_i16, %252 : i16
        %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<5x4xi16> into tensor<5x4x1xi16>
        %259 = vector.transpose %254, [1, 0] : vector<4x5xi1> to vector<5x4xi1>
        %260 = arith.xori %c29252_i16, %252 : i16
        %261 = index.maxu %c4, %23
        vector.print %254 : vector<4x5xi1>
        %262 = index.casts %c13 : index to i32
        %263 = arith.cmpf uno, %cst_3, %cst_3 : f32
        %264 = arith.cmpi uge, %c1859716050_i32, %c1571650467_i32 : i32
        %265 = vector.broadcast %c1571650467_i32 : i32 to vector<5x5xi32>
        %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %253, %253, %265 : vector<4x5xi32>, vector<4x5xi32> into vector<5x5xi32>
        %267 = bufferization.to_memref %1 : memref<4x5xi1>
        %268 = vector.transpose %254, [1, 0] : vector<4x5xi1> to vector<5x4xi1>
        memref.tensor_store %8, %alloc : memref<5x4xi32>
        %269 = arith.shrui %false, %true_2 : i1
        %270 = arith.andi %false_0, %false_1 : i1
        %271 = arith.shrui %c536847134_i64, %c536847134_i64 : i64
        %272 = arith.maxsi %c1571650467_i32, %c1859716050_i32 : i32
        %273 = math.tan %cst_3 : f32
        %274 = vector.broadcast %false_1 : i1 to vector<12xi1>
        memref.tensor_store %1, %alloc_9 : memref<4x5xi1>
      }
      %alloc_46 = memref.alloc() : memref<4x5xi16>
      memref.tensor_store %4, %alloc_46 : memref<4x5xi16>
      %244 = math.cttz %true_2 : i1
      %collapsed_47 = tensor.collapse_shape %8 [[0, 1]] : tensor<5x4xi32> into tensor<20xi32>
      %245 = bufferization.clone %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
      %cst_48 = arith.constant 1.000000e+00 : f16
      scf.yield %cst_48 : f16
    } else {
      %243 = arith.remf %cst_3, %cst : f32
      %244 = vector.extract %19[4] : vector<5xi16>
      %245 = math.copysign %5, %5 : tensor<12xf32>
      %246 = index.castu %c-30111_i16 : i16 to index
      %247 = tensor.empty() : tensor<5x4xi16>
      affine.for %arg2 = 0 to 114 {
      }
      %248 = arith.mulf %cst_3, %cst : f32
      %249 = arith.minf %cst_3, %cst_3 : f32
      %cst_46 = arith.constant 1.000000e+00 : f16
      scf.yield %cst_46 : f16
    }
    %33 = vector.transpose %19, [0] : vector<5xi16> to vector<5xi16>
    %34 = arith.maxf %cst_3, %cst_3 : f32
    %35 = arith.maxui %c29252_i16, %c-30111_i16 : i16
    %36 = affine.max affine_map<(d0) -> (d0 * 3, (d0 ceildiv 4) * -4)>(%c3)
    %alloca = memref.alloca() : memref<15x12xf16>
    %37 = memref.load %alloc_15[%c3, %c6] : memref<15x12xf16>
    %38 = index.floordivs %c5, %28
    %39 = arith.addf %32, %32 : f16
    %40 = math.powf %5, %5 : tensor<12xf32>
    %41 = bufferization.clone %alloc_4 : memref<15x12xf16> to memref<15x12xf16>
    scf.execute_region {
      %243 = math.ctpop %true_2 : i1
      %244 = tensor.empty() : tensor<15x15x15xf32>
      %alloc_46 = memref.alloc() : memref<15x15xf32>
      %245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %alloc_46 : memref<15x15xf32>, memref<15x15xf32>) outs(%244 : tensor<15x15x15xf32>) {
      ^bb0(%in: f32, %in_47: f32, %out: f32):
        %259 = vector.insert %c27303_i16, %19 [4] : i16 into vector<5xi16>
        %260 = arith.maxf %in, %cst : f32
        %alloca_48 = memref.alloca() : memref<12xf32>
        %261 = index.mul %c3, %28
        %262 = vector.multi_reduction <add>, %19, %19 [] : vector<5xi16> to vector<5xi16>
        %263 = arith.divsi %c-29182_i16, %c29252_i16 : i16
        affine.store %cst, %alloc_17[%c8, %c4] : memref<4x5xf32>
        %264 = math.cttz %c536847134_i64 : i64
        %265 = math.cttz %true : i1
        %266 = affine.load %alloc_8[%c14, %c4] : memref<5x4xf32>
        %267 = vector.broadcast %c536847134_i64 : i64 to vector<5x5xi64>
        %268 = vector.broadcast %c1559528702_i64 : i64 to vector<5xi64>
        %dest, %accumulated_value = vector.scan <and>, %267, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<5x5xi64>, vector<5xi64>
        %269 = arith.minf %cst, %266 : f32
        %alloc_49 = memref.alloc() : memref<5x4xi64>
        %270 = arith.mulf %266, %out : f32
        %271 = math.tanh %9 : tensor<5x4xf32>
        %272 = arith.divsi %c1859716050_i32, %c1859716050_i32 : i32
        %273 = vector.insert %c-30111_i16, %19 [4] : i16 into vector<5xi16>
        %274 = arith.xori %c-30111_i16, %c29252_i16 : i16
        %275 = arith.shrui %true, %false : i1
        %cst_50 = arith.constant 0x4DCE7168 : f32
        %276 = arith.cmpf ule, %cst, %in : f32
        %277 = arith.divf %266, %in_47 : f32
        %278 = arith.mulf %cst, %cst_3 : f32
        %279 = tensor.empty() : tensor<12xf16>
        %280 = arith.xori %c1571650467_i32, %c1571650467_i32 : i32
        %281 = index.add %c1, %c3
        affine.store %in_47, %alloc_19[%c15, %c2] : memref<4x5xf32>
        %282 = arith.minsi %false_1, %false_1 : i1
        %283 = index.divu %c11, %c1
        %284 = arith.cmpf olt, %in_47, %cst : f32
        %285 = math.log10 %cst_3 : f32
        %286 = math.atan2 %cst_3, %out : f32
        linalg.yield %in_47 : f32
      } -> tensor<15x15x15xf32>
      %246 = arith.xori %c1859716050_i32, %c1571650467_i32 : i32
      %247 = vector.broadcast %c29252_i16 : i16 to vector<5x5xi16>
      %248 = vector.outerproduct %19, %19, %247 {kind = #vector.kind<xor>} : vector<5xi16>, vector<5xi16>
      %249 = index.divu %c15, %c11
      %250 = index.mul %c3, %c8
      scf.execute_region {
        %259 = index.divs %c13, %c7
        %260 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 2 - d0 * 8, -d0, d0 mod 2, d0 mod 2 - d0 * 8)>(%c5, %c1, %249)
        %261 = math.log2 %16 : tensor<4x5xf32>
        %262 = index.divs %c13, %c4
        %263 = math.log1p %0 : tensor<4x5xf32>
        %from_elements_47 = tensor.from_elements %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32 : tensor<12xf16>
        %264 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %265 = vector.reduction <or>, %264 : vector<5xi16> into i16
        %266 = math.tanh %9 : tensor<5x4xf32>
        %267 = vector.insert %c27303_i16, %19 [2] : i16 into vector<5xi16>
        %268 = vector.shuffle %19, %264 [1, 2, 4, 5, 7] : vector<5xi16>, vector<5xi16>
        vector.print %264 : vector<5xi16>
        %269 = math.cttz %3 : tensor<12xi16>
        %alloc_48 = memref.alloc() : memref<5x4xf16>
        memref.tensor_store %10, %alloc_48 : memref<5x4xf16>
        %alloca_49 = memref.alloca() : memref<4x5xi32>
        %270 = math.ctpop %2 : tensor<15x12xi32>
        scf.yield
      }
      %251 = tensor.empty() : tensor<15x12xf32>
      %252 = vector.shuffle %19, %19 [0, 1, 2, 3, 4, 5, 7, 8] : vector<5xi16>, vector<5xi16>
      %253 = vector.create_mask %c9, %c14 : vector<5x4xi1>
      %254 = vector.extract %253[0] : vector<5x4xi1>
      %255 = arith.divf %cst_3, %cst_3 : f32
      %256 = memref.load %alloc_7[%c4, %c11] : memref<15x12xf16>
      %257 = math.ceil %15 : tensor<15x12xf16>
      %258 = vector.load %41[%c13, %c10] : memref<15x12xf16>, vector<5x4xf16>
      memref.copy %41, %alloc_7 : memref<15x12xf16> to memref<15x12xf16>
      scf.yield
    }
    %42 = vector.reduction <and>, %19 : vector<5xi16> into i16
    %43 = math.floor %15 : tensor<15x12xf16>
    %44 = arith.divf %32, %32 : f16
    %45 = memref.load %alloc_10[%c1, %c3] : memref<4x5xf16>
    %from_elements = tensor.from_elements %c-30111_i16, %c-21208_i16, %c27303_i16, %c27303_i16, %c29252_i16, %c-30111_i16, %c-21208_i16, %c29252_i16, %c-29182_i16, %c-29182_i16, %c-29182_i16, %c-29182_i16, %c-30111_i16, %c27303_i16, %c-30111_i16, %c-30111_i16, %c-30111_i16, %c-21208_i16, %c29252_i16, %c-29182_i16 : tensor<5x4xi16>
    %46 = affine.for %arg2 = 0 to 125 iter_args(%arg3 = %11) -> (tensor<5x4xi16>) {
      affine.yield %11 : tensor<5x4xi16>
    }
    %47 = math.fma %cst_3, %cst, %cst : f32
    %48 = vector.extract %19[3] : vector<5xi16>
    %49 = arith.cmpi ult, %c-30111_i16, %c-30111_i16 : i16
    %50 = arith.shrui %c1559528702_i64, %c1559528702_i64 : i64
    %51 = memref.atomic_rmw addi %c1571650467_i32, %alloc_5[%c1, %c0] : (i32, memref<4x5xi32>) -> i32
    affine.store %c27303_i16, %alloc_14[%c11, %c4] : memref<5x4xi16>
    %c1_i32 = arith.constant 1 : i32
    %52 = vector.transfer_read %alloc[%c0, %c10], %c1_i32 : memref<5x4xi32>, vector<i32>
    scf.execute_region {
      %243 = vector.broadcast %c5 : index to vector<12xindex>
      %244 = vector.broadcast %false_0 : i1 to vector<12xi1>
      %245 = vector.broadcast %32 : f16 to vector<12xf16>
      vector.scatter %alloc_15[%c9, %c10] [%243], %244, %245 : memref<15x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %246 = math.round %9 : tensor<5x4xf32>
      %from_elements_46 = tensor.from_elements %true, %false_0, %false_0, %false_0, %false_0, %false_1, %false_0, %true_2, %false, %false_1, %false, %false, %true_2, %false, %true_2, %false_1, %false, %false_1, %false_1, %false, %true_2, %false, %true_2, %false_1, %false_0, %false, %false, %true, %true_2, %false, %true_2, %true_2, %false, %false, %false_0, %false_0, %true_2, %false_0, %false_0, %false_1, %false, %false_0, %false_1, %false_0, %false_1, %false, %false_0, %false_1, %true, %true_2, %false_0, %true, %false_0, %true, %true_2, %false_0, %true, %true_2, %false_0, %false_1, %true_2, %true_2, %true_2, %true, %false_1, %false_1, %true_2, %true, %false, %true_2, %false, %false_0, %true_2, %false, %true_2, %false_1, %false_0, %true, %true_2, %true, %false_0, %false_1, %false_1, %false_1, %false_1, %false, %true, %true, %false, %false_0, %true_2, %true_2, %true_2, %false_0, %true, %false_1, %false_1, %false_1, %true_2, %false, %true, %false, %true_2, %true_2, %true, %false, %false, %false_1, %false_0, %false, %false_0, %true_2, %false_0, %false, %false, %false_1, %true, %false, %true_2, %false, %true, %false_1, %false, %false_1, %false, %false, %true_2, %true_2, %false_0, %true_2, %false_0, %false, %false_0, %true_2, %false_0, %true_2, %false, %false_1, %false_1, %false_0, %false_0, %false_1, %false_0, %true, %false_0, %true_2, %false_1, %false, %false, %false, %true, %false_1, %true, %true, %false, %false_0, %false, %false_1, %false_0, %true, %false_0, %false, %false_1, %true, %false_0, %false_1, %false_1, %true_2, %true, %false_0, %false, %false_1, %true_2, %true_2, %false_1, %false_0, %false_0, %false_1, %true, %false_0 : tensor<15x12xi1>
      %247 = vector.splat %32 : vector<4x5xf16>
      %248 = arith.maxsi %c1_i32, %c1859716050_i32 : i32
      %249 = vector.bitcast %19 : vector<5xi16> to vector<5xi16>
      %250 = arith.divsi %c1559528702_i64, %c536847134_i64 : i64
      %251 = math.log10 %cst_3 : f32
      %252 = bufferization.clone %alloc_9 : memref<4x5xi1> to memref<4x5xi1>
      %253 = bufferization.clone %31 : memref<5x4xf32> to memref<5x4xf32>
      %254 = vector.insert %c29252_i16, %19 [1] : i16 into vector<5xi16>
      %255 = vector.create_mask %c6, %c9 : vector<5x4xi1>
      %256 = index.divs %c12, %c12
      %257 = bufferization.clone %alloc_19 : memref<4x5xf32> to memref<4x5xf32>
      %c1_i32_47 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %258 = vector.transfer_read %18[%c5], %c0_i32 : tensor<5xi32>, vector<i32>
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x12xi32> into tensor<180xi32>
      scf.yield
    }
    memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
    %53 = vector.create_mask %c8, %c7 : vector<15x12xi1>
    %54 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %19, %19, %c-30111_i16 : vector<5xi16>, vector<5xi16> into i16
    %55 = math.tanh %15 : tensor<15x12xf16>
    %56 = vector.shuffle %19, %19 [1, 2, 3, 6, 8] : vector<5xi16>, vector<5xi16>
    %57 = bufferization.clone %alloc_14 : memref<5x4xi16> to memref<5x4xi16>
    %alloc_21 = memref.alloc() : memref<4x5xf32>
    %58 = arith.cmpi ult, %false_1, %false : i1
    %59 = math.ipowi %22, %21 : tensor<i16>
    %60 = arith.minf %32, %32 : f16
    %61 = scf.index_switch %36 -> index 
    case 1 {
      bufferization.dealloc_tensor %4 : tensor<4x5xi16>
      %243 = affine.for %arg2 = 0 to 11 iter_args(%arg3 = %alloc_5) -> (memref<4x5xi32>) {
        affine.yield %arg3 : memref<4x5xi32>
      }
      %244 = math.sqrt %9 : tensor<5x4xf32>
      %245 = math.cos %5 : tensor<12xf32>
      %246 = affine.min affine_map<(d0, d1, d2) -> (-(((d0 ceildiv 32) floordiv 4) ceildiv 32), d0, -(((d0 ceildiv 32) floordiv 4) ceildiv 32))>(%c4, %c13, %c6)
      %247 = arith.shrui %c-29182_i16, %c-29182_i16 : i16
      %248 = arith.andi %false_0, %false : i1
      memref.copy %alloc_15, %alloc_7 : memref<15x12xf16> to memref<15x12xf16>
      scf.if %true {
        %258 = index.add %246, %c10
        %259 = bufferization.to_memref %22 : memref<i16>
        %260 = arith.floordivsi %c536847134_i64, %c536847134_i64 : i64
        %261 = math.log10 %0 : tensor<4x5xf32>
        %262 = math.log1p %10 : tensor<5x4xf16>
        %263 = affine.apply affine_map<(d0) -> (d0 + d0 floordiv 2 - (d0 + 4) + 3 - (d0 floordiv 2 + 2) + 5)>(%c15)
        %alloc_46 = memref.alloc() : memref<4x5xi32>
        %264 = math.rsqrt %14 : tensor<15x12xf32>
      }
      %generated = tensor.generate %c2, %246 {
      ^bb0(%arg2: index, %arg3: index):
        %258 = arith.divsi %c536847134_i64, %c536847134_i64 : i64
        %c18668_i16 = arith.constant 18668 : i16
        vector.print %19 : vector<5xi16>
        %259 = tensor.empty() : tensor<4x4xf32>
        %260 = linalg.matmul ins(%0, %9 : tensor<4x5xf32>, tensor<5x4xf32>) outs(%259 : tensor<4x4xf32>) -> tensor<4x4xf32>
        tensor.yield %false_0 : i1
      } : tensor<?x?xi1>
      %249 = vector.extract %53[13] : vector<15x12xi1>
      %250 = math.log1p %collapsed : tensor<20xf32>
      %251 = vector.broadcast %c1559528702_i64 : i64 to vector<15x12xi64>
      %252 = vector.broadcast %c1559528702_i64 : i64 to vector<5x4xi64>
      %253 = vector.broadcast %false_1 : i1 to vector<5x4xi1>
      %254 = vector.broadcast %c1571650467_i32 : i32 to vector<5x4xi32>
      %255 = vector.gather %7[%c9, %c15] [%254], %253, %252 : tensor<15x12xi64>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi64> into vector<5x4xi64>
      %256 = math.round %0 : tensor<4x5xf32>
      %257 = math.tanh %15 : tensor<15x12xf16>
      scf.yield %c7 : index
    }
    default {
      memref.store %c-21208_i16, %alloc_13[%c2, %c0] : memref<5x4xi16>
      %generated = tensor.generate %c5, %c4 {
      ^bb0(%arg2: index, %arg3: index):
        %251 = vector.load %41[%c14, %c10] : memref<15x12xf16>, vector<5x4xf16>
        %252 = vector.create_mask %c2 : vector<12xi1>
        %253 = math.tanh %5 : tensor<12xf32>
        %254 = arith.divf %cst, %cst_3 : f32
        tensor.yield %c-30111_i16 : i16
      } : tensor<?x?xi16>
      %243 = memref.load %31[%c4, %c0] : memref<5x4xf32>
      %244 = index.sizeof
      affine.for %arg2 = 0 to 11 {
      }
      %245 = vector.transpose %19, [0] : vector<5xi16> to vector<5xi16>
      %246 = vector.create_mask %23, %28 : vector<4x5xi1>
      memref.tensor_store %9, %31 : memref<5x4xf32>
      scf.if %false_0 {
        %251 = vector.transpose %246, [0, 1] : vector<4x5xi1> to vector<4x5xi1>
        memref.copy %alloc_11, %57 : memref<5x4xi16> to memref<5x4xi16>
        %252 = arith.divf %32, %32 : f16
        %253 = arith.shli %c-29182_i16, %c-30111_i16 : i16
        %254 = arith.muli %false, %false : i1
        %255 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
        %256 = affine.min affine_map<(d0, d1) -> ((d0 mod 32 - 2) floordiv 16, -d0 - 64)>(%28, %23)
        %257 = math.cos %10 : tensor<5x4xf16>
      } else {
        %251 = index.divs %28, %c6
        %252 = vector.transpose %246, [0, 1] : vector<4x5xi1> to vector<4x5xi1>
        %alloc_46 = memref.alloc() : memref<5x4xf16>
        memref.tensor_store %10, %alloc_46 : memref<5x4xf16>
        %253 = math.atan %0 : tensor<4x5xf32>
        %alloc_47 = memref.alloc() : memref<12xi16>
        memref.tensor_store %20, %alloc_47 : memref<12xi16>
        %254 = math.tanh %16 : tensor<4x5xf32>
        %255 = arith.shrui %c1571650467_i32, %c1571650467_i32 : i32
        %256 = memref.atomic_rmw minf %32, %alloc_10[%c3, %c3] : (f16, memref<4x5xf16>) -> f16
      }
      %247 = arith.maxf %32, %32 : f16
      %248 = math.atan2 %14, %14 : tensor<15x12xf32>
      %249 = math.cos %cst_3 : f32
      memref.store %cst, %alloc_12[%c9] : memref<12xf32>
      %250 = math.powf %cst, %cst : f32
      bufferization.dealloc_tensor %0 : tensor<4x5xf32>
      vector.print %19 : vector<5xi16>
      scf.yield %36 : index
    }
    %62 = vector.transpose %19, [0] : vector<5xi16> to vector<5xi16>
    %63 = arith.cmpf oge, %32, %32 : f16
    %64 = scf.execute_region -> vector<5x4xi64> {
      %243 = math.log1p %cst_3 : f32
      %244 = tensor.empty(%c6) : tensor<?xf32>
      %245 = math.exp2 %0 : tensor<4x5xf32>
      %generated = tensor.generate %c4, %c0 {
      ^bb0(%arg2: index, %arg3: index):
        %262 = arith.maxsi %c1859716050_i32, %c1571650467_i32 : i32
        %263 = index.divs %38, %c1
        %264 = index.mul %c12, %36
        %265 = arith.maxui %c536847134_i64, %c1559528702_i64 : i64
        tensor.yield %c536847134_i64 : i64
      } : tensor<?x?xi64>
      %246 = vector.create_mask %c9, %c15 : vector<4x5xi1>
      %247 = vector.broadcast %c14 : index to vector<4xindex>
      %248 = vector.broadcast %false : i1 to vector<4xi1>
      %249 = vector.broadcast %32 : f16 to vector<4xf16>
      vector.scatter %alloc_15[%c1, %c1] [%247], %248, %249 : memref<15x12xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
      %250 = scf.execute_region -> tensor<4x5xf16> {
        %262 = index.maxu %c1, %38
        %263 = arith.xori %c536847134_i64, %c1559528702_i64 : i64
        %264 = arith.cmpf ord, %cst, %cst : f32
        %265 = arith.cmpf ult, %32, %32 : f16
        %266 = arith.cmpf oeq, %cst_3, %cst_3 : f32
        %cst_47 = arith.constant 1.000000e+00 : f32
        %267 = vector.transfer_read %5[%c12], %cst_47 : tensor<12xf32>, vector<f32>
        %268 = math.tanh %15 : tensor<15x12xf16>
        memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        vector.print %53 : vector<15x12xi1>
        %269 = math.ctpop %4 : tensor<4x5xi16>
        %alloc_48 = memref.alloc() : memref<4x5xi16>
        memref.tensor_store %4, %alloc_48 : memref<4x5xi16>
        %270 = arith.maxsi %true, %false_1 : i1
        %271 = math.ceil %cst_47 : f32
        %272 = index.casts %c0 : index to i32
        %273 = arith.addi %c-30111_i16, %c-29182_i16 : i16
        %274 = index.add %c1, %c6
        %275 = tensor.empty() : tensor<4x5xf16>
        scf.yield %275 : tensor<4x5xf16>
      }
      %251 = vector.transpose %53, [1, 0] : vector<15x12xi1> to vector<12x15xi1>
      %252 = index.maxu %c9, %c8
      %253 = index.floordivs %c11, %23
      %254 = bufferization.clone %alloc_14 : memref<5x4xi16> to memref<5x4xi16>
      %255 = memref.atomic_rmw assign %cst, %alloc_19[%c3, %c3] : (f32, memref<4x5xf32>) -> f32
      %256 = memref.atomic_rmw addi %c-29182_i16, %57[%c1, %c0] : (i16, memref<5x4xi16>) -> i16
      %257 = vector.broadcast %true : i1 to vector<12xi1>
      %258 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
      %259 = vector.gather %alloc_9[%23, %253] [%258], %257, %257 : memref<4x5xi1>, vector<12xi32>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      %260 = bufferization.clone %alloc_4 : memref<15x12xf16> to memref<15x12xf16>
      %collapsed_46 = tensor.collapse_shape %14 [[0, 1]] : tensor<15x12xf32> into tensor<180xf32>
      %261 = vector.broadcast %c536847134_i64 : i64 to vector<5x4xi64>
      scf.yield %261 : vector<5x4xi64>
    }
    %65 = math.powf %10, %10 : tensor<5x4xf16>
    %66 = vector.create_mask %c0 : vector<12xi1>
    memref.copy %alloc_7, %41 : memref<15x12xf16> to memref<15x12xf16>
    %alloc_22 = memref.alloc() : memref<15x12xf16>
    %67 = index.mul %c8, %c14
    %68 = math.cttz %false_0 : i1
    %69 = math.cttz %7 : tensor<15x12xi64>
    %70 = affine.max affine_map<(d0, d1, d2) -> (d2 - d1 + d1 floordiv 16)>(%c9, %c12, %28)
    %71 = index.add %70, %c1
    scf.execute_region {
      %243 = vector.shuffle %66, %66 [1, 3, 4, 6, 7, 8, 11, 12, 14, 16, 19, 21] : vector<12xi1>, vector<12xi1>
      %244 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      affine.store %cst, %alloc_17[%c2, %c4] : memref<4x5xf32>
      %245 = memref.atomic_rmw addf %32, %alloc_15[%c5, %c11] : (f16, memref<15x12xf16>) -> f16
      %246 = arith.minsi %true, %false_0 : i1
      %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<4x5xi16> into tensor<4x5x1xi16>
      %247 = math.ctpop %c1859716050_i32 : i32
      %248 = vector.splat %c-21208_i16 : vector<15x12xi16>
      %249 = arith.shrui %c-29182_i16, %c-29182_i16 : i16
      %250 = index.sizeof
      %251 = vector.broadcast %c5 : index to vector<4xindex>
      %252 = vector.broadcast %false_0 : i1 to vector<4xi1>
      %253 = vector.broadcast %cst_3 : f32 to vector<4xf32>
      vector.scatter %31[%c3, %c2] [%251], %252, %253 : memref<5x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %254 = math.floor %15 : tensor<15x12xf16>
      %255 = vector.multi_reduction <xor>, %66, %true [0] : vector<12xi1> to i1
      %256 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 64, d1)>(%71, %38, %c2, %c4)
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c-29182_i16 : vector<5xi16>, vector<5xi16> into i16
      %258 = scf.while (%arg2 = %alloc_16) : (memref<15x12xi1>) -> memref<15x12xi1> {
        %extracted = tensor.extract %20[%c11] : tensor<12xi16>
        affine.store %32, %alloc_15[%c3, %c2] : memref<15x12xf16>
        %259 = bufferization.clone %alloc : memref<5x4xi32> to memref<5x4xi32>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 + 8) ceildiv 16, d3 mod 64, d1 - 16)>(%67, %c9, %c5, %c14)
        %false_46 = arith.constant false
        %261 = math.fma %5, %5, %5 : tensor<12xf32>
        %262 = vector.broadcast %c13 : index to vector<4xindex>
        %263 = vector.broadcast %true_2 : i1 to vector<4xi1>
        %264 = vector.broadcast %c29252_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_13[%c1, %c2] [%262], %263, %264 : memref<5x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        scf.condition(%false_1) %alloc_16 : memref<15x12xi1>
      } do {
      ^bb0(%arg2: memref<15x12xi1>):
        %rank = tensor.rank %3 : tensor<12xi16>
        %true_46 = index.bool.constant true
        %259 = vector.shuffle %53, %53 [0, 1, 2, 6, 9, 12, 15, 18, 20, 22, 27, 28] : vector<15x12xi1>, vector<15x12xi1>
        %260 = vector.extract %19[0] : vector<5xi16>
        %261 = arith.maxsi %true_2, %false : i1
        %262 = math.floor %5 : tensor<12xf32>
        %263 = math.exp2 %15 : tensor<15x12xf16>
        %c1_i32_47 = arith.constant 1 : i32
        %264 = vector.transfer_read %reduced[%c9], %c1_i32_47 : tensor<5xi32>, vector<i32>
        %alloca_48 = memref.alloca() : memref<4x5xi1>
        %alloca_49 = memref.alloca() : memref<15x12xi16>
        %265 = index.castu %false : i1 to index
        %266 = vector.insertelement %c-21208_i16, %19[%36 : index] : vector<5xi16>
        %267 = math.powf %10, %10 : tensor<5x4xf16>
        %alloc_50 = memref.alloc() : memref<12xf32>
        %268 = arith.divf %cst, %cst_3 : f32
        %269 = math.rsqrt %10 : tensor<5x4xf16>
        scf.yield %arg2 : memref<15x12xi1>
      }
      scf.yield
    }
    %cast = tensor.cast %30 : tensor<5xi32> to tensor<?xi32>
    %72 = math.log1p %5 : tensor<12xf32>
    %73 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
    %74 = tensor.empty() : tensor<5x4xf32>
    %mapped_23 = linalg.map ins(%31, %9 : memref<5x4xf32>, tensor<5x4xf32>) outs(%74 : tensor<5x4xf32>)
      (%in: f32, %in_46: f32) {
        %243 = arith.shli %c29252_i16, %c29252_i16 : i16
        %244 = vector.shuffle %19, %19 [2, 3, 4, 5, 8] : vector<5xi16>, vector<5xi16>
        %245 = index.maxu %c11, %c5
        %246 = vector.splat %c-30111_i16 : vector<12xi16>
        %247 = math.fma %17, %16, %0 : tensor<4x5xf32>
        %248 = math.tanh %0 : tensor<4x5xf32>
        %249 = arith.subi %c1859716050_i32, %c1859716050_i32 : i32
        %250 = math.round %0 : tensor<4x5xf32>
        %251 = arith.maxsi %true, %false_1 : i1
        %252 = math.ctpop %false : i1
        %dest, %accumulated_value = vector.scan <maxui>, %53, %66 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
        %253 = index.mul %23, %71
        %254 = scf.while (%arg2 = %true_2) : (i1) -> i1 {
          %275 = vector.broadcast %c27303_i16 : i16 to vector<15x12xi16>
          %collapsed_51 = tensor.collapse_shape %16 [[0, 1]] : tensor<4x5xf32> into tensor<20xf32>
          %276 = vector.matrix_multiply %66, %66 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %277 = vector.insert %66, %53 [9] : vector<12xi1> into vector<15x12xi1>
          %278 = arith.shrui %false, %true_2 : i1
          %279 = arith.xori %false_1, %false_1 : i1
          %from_elements_52 = tensor.from_elements %true, %false_0, %arg2, %false_0, %false, %false_1, %false, %false_1, %arg2, %true, %true_2, %false, %false, %false_1, %false, %false_1, %arg2, %true, %false_0, %false_0 : tensor<5x4xi1>
          %280 = arith.mulf %32, %32 : f16
          scf.condition(%false_0) %false_1 : i1
        } do {
        ^bb0(%arg2: i1):
          bufferization.dealloc_tensor %9 : tensor<5x4xf32>
          %275 = vector.broadcast %true_2 : i1 to vector<12x12xi1>
          %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %53, %53, %275 : vector<15x12xi1>, vector<15x12xi1> into vector<12x12xi1>
          %277 = affine.max affine_map<(d0, d1, d2) -> ((d2 * 2) mod 64, d2 * 2, d1)>(%c12, %c4, %71)
          %278 = math.exp2 %14 : tensor<15x12xf32>
          %279 = math.fma %5, %5, %5 : tensor<12xf32>
          %dest_51, %accumulated_value_52 = vector.scan <xor>, %53, %66 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
          %280 = vector.insert %c27303_i16, %19 [2] : i16 into vector<5xi16>
          %281 = arith.xori %c29252_i16, %c-21208_i16 : i16
          %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<4x5xi16> into tensor<4x5x1xi16>
          %282 = index.mul %253, %c13
          %283 = math.atan2 %cst_3, %in : f32
          %284 = memref.atomic_rmw addi %c29252_i16, %alloc_14[%c0, %c0] : (i16, memref<5x4xi16>) -> i16
          %285 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%282, %c6, %71)
          %286 = arith.remf %in, %in_46 : f32
          %287 = arith.subi %true_2, %arg2 : i1
          %288 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + 8, d3 ceildiv 2 + 2, d3 - d0 + 4, d3 - d0)>(%c10, %67, %285, %c0)
          scf.yield %false : i1
        }
        %255 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 2) ceildiv 2, d1 ceildiv 2, d1 ceildiv 2 - 123, d1 ceildiv 2 + 1)>(%c0, %c6, %245, %c0)
        %256 = index.mul %c13, %38
        %257 = math.exp %14 : tensor<15x12xf32>
        %258 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, 0, d0)>(%c3, %23, %36, %c10)
        vector.print %19 : vector<5xi16>
        %259 = math.powf %14, %14 : tensor<15x12xf32>
        %260 = affine.load %alloc_7[%c6, %c14] : memref<15x12xf16>
        %261 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
        %262 = tensor.empty() : tensor<12xi32>
        %263 = vector.broadcast %c1859716050_i32 : i32 to vector<5x4xi32>
        %264 = vector.broadcast %false_1 : i1 to vector<5x4xi1>
        %265 = vector.gather %262[%c0] [%263], %264, %263 : tensor<12xi32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi32> into vector<5x4xi32>
        %266 = tensor.empty() : tensor<15x15x15xf32>
        %alloc_47 = memref.alloc() : memref<15xf32>
        %alloc_48 = memref.alloc() : memref<15x15xf32>
        %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %alloc_48, %266 : memref<15xf32>, memref<15x15xf32>, tensor<15x15x15xf32>) outs(%266 : tensor<15x15x15xf32>) {
        ^bb0(%in_51: f32, %in_52: f32, %in_53: f32, %out: f32):
          %275 = arith.cmpi sgt, %c536847134_i64, %c536847134_i64 : i64
          %276 = math.log10 %5 : tensor<12xf32>
          %277 = arith.andi %false_1, %true : i1
          %278 = math.log10 %out : f32
          %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%253, %28, %245, %c0)
          %280 = index.divu %c2, %23
          %281 = bufferization.to_memref %22 : memref<i16>
          %expanded = tensor.expand_shape %10 [[0], [1, 2]] : tensor<5x4xf16> into tensor<5x4x1xf16>
          affine.store %false, %alloc_9[%c7, %c4] : memref<4x5xi1>
          vector.print %19 : vector<5xi16>
          %282 = index.ceildivs %c14, %23
          %283 = affine.min affine_map<(d0) -> ((d0 + 2) mod 16 - ((d0 mod 128) * 2 + 16) + (d0 mod 128) * 32 + 1, (d0 mod 128) * 32 + 1, (d0 + 2) mod 16 - ((d0 mod 128) * 2 + 16) + (d0 mod 128) * 32 + 1)>(%23)
          %284 = math.fma %74, %74, %74 : tensor<5x4xf32>
          %285 = math.rsqrt %in_52 : f32
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_54 = arith.constant 0 : i32
          %286 = vector.transfer_read %8[%283, %283], %c0_i32_54 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x4xi32>, vector<15xi32>
          %287 = index.castu %c0_i32 : i32 to index
          %288 = vector.splat %c10 : vector<5x4xindex>
          memref.copy %alloc_11, %alloc_14 : memref<5x4xi16> to memref<5x4xi16>
          %expanded_55 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<4x5xi1> into tensor<4x5x1xi1>
          vector.print %263 : vector<5x4xi32>
          %289 = memref.load %alloc_8[%c3, %c3] : memref<5x4xf32>
          %290 = arith.maxui %c29252_i16, %c27303_i16 : i16
          memref.tensor_store %13, %alloc_13 : memref<5x4xi16>
          %291 = arith.muli %c1859716050_i32, %c1_i32 : i32
          %cast_56 = tensor.cast %collapsed : tensor<20xf32> to tensor<?xf32>
          %292 = arith.minsi %c27303_i16, %c-21208_i16 : i16
          %collapsed_57 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x12xi32> into tensor<180xi32>
          affine.store %c0_i32, %alloc_5[%c6, %c1] : memref<4x5xi32>
          %293 = math.log10 %in_46 : f32
          %294 = math.rsqrt %in_53 : f32
          %295 = index.mul %c2, %70
          %296 = arith.muli %false_1, %false_0 : i1
          linalg.yield %in_52 : f32
        } -> tensor<15x15x15xf32>
        %268 = tensor.empty(%c0) : tensor<5x?xf16>
        %269 = affine.load %alloc_17[%c8, %c5] : memref<4x5xf32>
        %270 = arith.muli %c-21208_i16, %c-21208_i16 : i16
        %inserted = tensor.insert %c-21208_i16 into %from_elements[%c0, %c2] : tensor<5x4xi16>
        %271 = arith.maxf %in_46, %in_46 : f32
        %alloca_49 = memref.alloca() : memref<12xf32>
        %272 = arith.maxui %c-29182_i16, %c29252_i16 : i16
        %273 = arith.maxf %in, %in : f32
        %274 = vector.multi_reduction <add>, %66, %true [0] : vector<12xi1> to i1
        %cst_50 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_50 : f32
      }
    %75 = vector.multi_reduction <minui>, %19, %c-21208_i16 [0] : vector<5xi16> to i16
    %76 = math.rsqrt %cst_3 : f32
    %77 = arith.maxf %cst, %cst : f32
    vector.print %53 : vector<15x12xi1>
    %78 = affine.apply affine_map<(d0, d1, d2, d3) -> ((-d1) floordiv 32)>(%c0, %67, %c9, %70)
    %79 = vector.matrix_multiply %66, %66 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
    %80 = vector.transpose %19, [0] : vector<5xi16> to vector<5xi16>
    %81 = arith.minf %cst_3, %cst : f32
    %82 = vector.insert %c29252_i16, %19 [2] : i16 into vector<5xi16>
    %83 = bufferization.clone %73 : memref<12xf32> to memref<12xf32>
    %alloc_24 = memref.alloc() : memref<5x4xi32>
    memref.copy %alloc, %alloc_24 : memref<5x4xi32> to memref<5x4xi32>
    %84 = affine.min affine_map<(d0, d1) -> (d0, d0 floordiv 2 - 72, d1 + 16, d0 floordiv 2 - 72)>(%c13, %23)
    %85 = math.log1p %32 : f16
    %alloc_25 = memref.alloc() : memref<15x12xi32>
    %86 = scf.while (%arg2 = %32) : (f16) -> f16 {
      affine.for %arg3 = 0 to 77 {
      }
      %243 = vector.extract %19[4] : vector<5xi16>
      %244 = vector.matrix_multiply %79, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
      %245 = math.floor %collapsed : tensor<20xf32>
      %246 = bufferization.to_memref %9 : memref<5x4xf32>
      %247 = arith.andi %c1571650467_i32, %c1_i32 : i32
      memref.alloca_scope  {
        %249 = arith.divui %c-21208_i16, %c-30111_i16 : i16
        %250 = math.atan2 %arg2, %arg2 : f16
        %251 = arith.muli %75, %c-30111_i16 : i16
        %252 = affine.min affine_map<(d0, d1, d2) -> (d2)>(%c4, %c4, %23)
        %253 = arith.xori %true_2, %false_0 : i1
        %collapsed_46 = tensor.collapse_shape %6 [[0, 1]] : tensor<15x12xi1> into tensor<180xi1>
        %254 = arith.shli %c1_i32, %c1_i32 : i32
        %255 = math.exp2 %16 : tensor<4x5xf32>
        %256 = vector.transpose %66, [0] : vector<12xi1> to vector<12xi1>
        %from_elements_47 = tensor.from_elements %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32 : tensor<5x4xi32>
        %257 = math.tanh %9 : tensor<5x4xf32>
        %false_48 = arith.constant false
        %258 = vector.transfer_read %alloc_16[%c3, %67], %false_48 : memref<15x12xi1>, vector<4xi1>
        %from_elements_49 = tensor.from_elements %false_48, %false_48, %false_48, %false_1, %false_0, %true, %false_0, %false_1, %false_0, %false_1, %false, %false_1 : tensor<12xi1>
        %259 = math.atan2 %14, %14 : tensor<15x12xf32>
        %260 = index.divs %71, %c7
        %261 = affine.load %alloc_10[%c0, %c12] : memref<4x5xf16>
        %262 = arith.shrui %75, %c-30111_i16 : i16
        %263 = math.cos %0 : tensor<4x5xf32>
        %264 = bufferization.clone %alloc_18 : memref<4x5xf32> to memref<4x5xf32>
        %265 = arith.xori %false_48, %false_48 : i1
        %cst_50 = arith.constant 1.43569485E+9 : f32
        %266 = vector.flat_transpose %244 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %alloca_51 = memref.alloca() : memref<5x4xf16>
        %267 = index.maxu %c12, %67
        %268 = bufferization.clone %41 : memref<15x12xf16> to memref<15x12xf16>
        %269 = arith.muli %c-30111_i16, %c-30111_i16 : i16
        %270 = math.ctpop %c1_i32 : i32
        %271 = vector.extract %66[4] : vector<12xi1>
        %272 = vector.create_mask %c4, %c11 : vector<15x12xi1>
        %273 = arith.shrui %c536847134_i64, %c536847134_i64 : i64
        %from_elements_52 = tensor.from_elements %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3 : tensor<12xf32>
        %274 = vector.insert %c-21208_i16, %19 [4] : i16 into vector<5xi16>
      }
      %248 = vector.create_mask %c15 : vector<12xi1>
      scf.condition(%true) %arg2 : f16
    } do {
    ^bb0(%arg2: f16):
      %243 = arith.xori %false_1, %false_1 : i1
      %244 = math.fma %cst_3, %cst_3, %cst : f32
      %245 = vector.insertelement %true, %66[%84 : index] : vector<12xi1>
      %246 = vector.matrix_multiply %79, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
      memref.store %cst_3, %alloc_18[%c1, %c3] : memref<4x5xf32>
      %247 = math.powf %arg2, %32 : f16
      %248 = vector.flat_transpose %66 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %249 = arith.muli %c27303_i16, %c-21208_i16 : i16
      %250 = vector.reduction <minsi>, %248 : vector<12xi1> into i1
      %251 = vector.transpose %246, [0] : vector<12xi1> to vector<12xi1>
      %252 = tensor.empty() : tensor<5x4xf32>
      %mapped_46 = linalg.map ins(%74, %9 : tensor<5x4xf32>, tensor<5x4xf32>) outs(%252 : tensor<5x4xf32>)
        (%in: f32, %in_47: f32) {
          %259 = vector.bitcast %19 : vector<5xi16> to vector<5xi16>
          %260 = index.divu %c8, %c6
          memref.assume_alignment %alloc_8, 8 : memref<5x4xf32>
          %261 = arith.minsi %75, %c27303_i16 : i16
          %262 = math.round %cst_3 : f32
          %inserted = tensor.insert %cst_3 into %14[%c7, %c8] : tensor<15x12xf32>
          %263 = arith.shrsi %true_2, %true_2 : i1
          %264 = vector.extract_strided_slice %246 {offsets = [0], sizes = [2], strides = [1]} : vector<12xi1> to vector<2xi1>
          %dest, %accumulated_value = vector.scan <or>, %53, %246 {inclusive = true, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
          %alloca_48 = memref.alloca() : memref<12xi64>
          %265 = index.sizeof
          %266 = math.powf %14, %14 : tensor<15x12xf32>
          %cast_49 = tensor.cast %1 : tensor<4x5xi1> to tensor<?x?xi1>
          affine.store %in_47, %83[%c11] : memref<12xf32>
          %267 = vector.flat_transpose %248 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
          %268 = index.divs %c7, %c7
          %269 = index.divs %c0, %36
          %c1513122827_i64 = arith.constant 1513122827 : i64
          %270 = index.divs %c3, %c2
          %alloc_50 = memref.alloc() : memref<15x12xi16>
          %271 = index.sub %67, %c8
          %272 = math.atan2 %10, %10 : tensor<5x4xf16>
          %273 = index.divs %70, %36
          %274 = affine.apply affine_map<(d0, d1, d2, d3) -> ((-d1) floordiv 32)>(%268, %c12, %c10, %c1)
          %275 = vector.broadcast %78 : index to vector<15xindex>
          %276 = vector.broadcast %true : i1 to vector<15xi1>
          %277 = vector.broadcast %c1571650467_i32 : i32 to vector<15xi32>
          vector.scatter %alloc[%c3, %c2] [%275], %276, %277 : memref<5x4xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
          %278 = bufferization.clone %alloc_5 : memref<4x5xi32> to memref<4x5xi32>
          %279 = vector.multi_reduction <add>, %267, %248 [] : vector<12xi1> to vector<12xi1>
          %280 = bufferization.to_memref %11 : memref<5x4xi16>
          %281 = arith.maxui %c536847134_i64, %c536847134_i64 : i64
          %282 = math.atan2 %17, %0 : tensor<4x5xf32>
          %283 = vector.matrix_multiply %267, %248 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %cast_51 = tensor.cast %10 : tensor<5x4xf16> to tensor<?x?xf16>
          %cst_52 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_52 : f32
        }
      affine.store %cst, %83[%c11] : memref<12xf32>
      %253 = vector.broadcast %cst_3 : f32 to vector<15x12xf32>
      %254 = vector.fma %253, %253, %253 : vector<15x12xf32>
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 4, (d2 * 4) mod 16, d2 floordiv 32)>(%38, %c9, %84, %78)
      %256 = index.mul %23, %c12
      %257 = vector.broadcast %true_2 : i1 to vector<12x12xi1>
      %258 = vector.outerproduct %66, %66, %257 {kind = #vector.kind<minsi>} : vector<12xi1>, vector<12xi1>
      scf.yield %arg2 : f16
    }
    %87 = tensor.empty() : tensor<5x5xi16>
    %88 = linalg.matmul ins(%11, %4 : tensor<5x4xi16>, tensor<4x5xi16>) outs(%87 : tensor<5x5xi16>) -> tensor<5x5xi16>
    %89 = arith.maxf %32, %32 : f16
    %90 = arith.minf %cst_3, %cst_3 : f32
    %91 = arith.mulf %32, %32 : f16
    %92 = math.log10 %14 : tensor<15x12xf32>
    %93 = index.sub %c7, %c12
    bufferization.dealloc_tensor %11 : tensor<5x4xi16>
    %94 = math.log1p %5 : tensor<12xf32>
    %95 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %96 = arith.shrui %c-21208_i16, %c-21208_i16 : i16
    %97 = vector.extract %53[6] : vector<15x12xi1>
    memref.copy %alloc_12, %83 : memref<12xf32> to memref<12xf32>
    %98 = arith.muli %true, %true_2 : i1
    memref.assume_alignment %alloc_8, 1 : memref<5x4xf32>
    %99 = math.atan %16 : tensor<4x5xf32>
    %100 = index.divs %28, %c0
    %101 = math.rsqrt %17 : tensor<4x5xf32>
    affine.store %c1859716050_i32, %alloc_5[%c12, %c10] : memref<4x5xi32>
    %102 = tensor.empty() : tensor<15x12xf32>
    %mapped_26 = linalg.map ins(%14, %14, %14 : tensor<15x12xf32>, tensor<15x12xf32>, tensor<15x12xf32>) outs(%102 : tensor<15x12xf32>)
      (%in: f32, %in_46: f32, %in_47: f32) {
        %243 = memref.atomic_rmw minf %32, %alloc_15[%c4, %c10] : (f16, memref<15x12xf16>) -> f16
        %244 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
        %245 = math.floor %in : f32
        %246 = math.cos %in_47 : f32
        %247 = index.divu %c2, %c13
        %248 = arith.minsi %75, %c27303_i16 : i16
        %249 = math.expm1 %9 : tensor<5x4xf32>
        %250 = math.powf %5, %5 : tensor<12xf32>
        %251 = vector.multi_reduction <or>, %66, %true [0] : vector<12xi1> to i1
        %252 = vector.create_mask %c9, %c1 : vector<15x12xi1>
        %253 = vector.insertelement %true_2, %79[%c5 : index] : vector<1xi1>
        %254 = arith.andi %c-21208_i16, %c-21208_i16 : i16
        %255 = vector.broadcast %75 : i16 to vector<4x5xi16>
        %256 = scf.execute_region -> index {
          %274 = bufferization.clone %31 : memref<5x4xf32> to memref<5x4xf32>
          %275 = arith.cmpf true, %in_46, %cst_3 : f32
          %276 = vector.matrix_multiply %79, %79 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %277 = memref.load %alloc_13[%c3, %c0] : memref<5x4xi16>
          %278 = vector.broadcast %false_1 : i1 to vector<15x12xi1>
          %alloca_52 = memref.alloca() : memref<15x12xi32>
          %279 = vector.shuffle %95, %97 [0, 2, 4, 7, 8, 11] : vector<1xi1>, vector<12xi1>
          %280 = index.add %c2, %38
          %281 = memref.atomic_rmw muli %c29252_i16, %57[%c1, %c0] : (i16, memref<5x4xi16>) -> i16
          %inserted = tensor.insert %c27303_i16 into %from_elements[%c0, %c2] : tensor<5x4xi16>
          %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 64, 0)>(%c11, %28, %93, %c7)
          %283 = vector.broadcast %c1_i32 : i32 to vector<15x12xi32>
          %284 = math.atan %15 : tensor<15x12xf16>
          memref.copy %alloc_6, %83 : memref<12xf32> to memref<12xf32>
          %285 = arith.cmpf oge, %in_46, %in_46 : f32
          %286 = math.floor %14 : tensor<15x12xf32>
          scf.yield %c2 : index
        }
        %257 = scf.if %true -> (f32) {
          %274 = vector.splat %71 : vector<15x12xindex>
          %splat = tensor.splat %c1559528702_i64 : tensor<5x4xi64>
          memref.copy %83, %alloc_6 : memref<12xf32> to memref<12xf32>
          %275 = arith.mulf %in, %in : f32
          %276 = vector.matrix_multiply %79, %95 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %277 = vector.extract_strided_slice %97 {offsets = [4], sizes = [1], strides = [1]} : vector<12xi1> to vector<1xi1>
          %278 = affine.min affine_map<(d0) -> (d0 - 1)>(%c8)
          %279 = math.atan2 %9, %9 : tensor<5x4xf32>
          scf.yield %cst : f32
        } else {
          %274 = bufferization.clone %73 : memref<12xf32> to memref<12xf32>
          %275 = index.floordivs %c14, %93
          %276 = bufferization.clone %274 : memref<12xf32> to memref<12xf32>
          %277 = bufferization.to_memref %22 : memref<i16>
          %278 = index.mul %247, %36
          %279 = index.castu %true_2 : i1 to index
          %280 = bufferization.to_memref %14 : memref<15x12xf32>
          %281 = math.expm1 %15 : tensor<15x12xf16>
          scf.yield %cst_3 : f32
        }
        %258 = arith.addf %cst, %cst : f32
        %259 = math.cttz %reduced : tensor<5xi32>
        %generated = tensor.generate %93, %23 {
        ^bb0(%arg2: index, %arg3: index):
          %274 = math.atan %in_46 : f32
          %275 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
          %276 = affine.load %alloc_9[%c7, %c3] : memref<4x5xi1>
          %alloc_52 = memref.alloc() : memref<4x5xi32>
          tensor.yield %false_1 : i1
        } : tensor<?x?xi1>
        %260 = arith.mulf %cst_3, %in_47 : f32
        %261 = arith.minsi %c1571650467_i32, %c1859716050_i32 : i32
        %262 = arith.minf %cst, %in : f32
        %263 = tensor.empty() : tensor<15x12xi32>
        %mapped_48 = linalg.map ins(%12 : tensor<15x12xi32>) outs(%263 : tensor<15x12xi32>)
          (%in_52: i32) {
            %274 = vector.broadcast %c-30111_i16 : i16 to vector<4xi16>
            %275 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %19, %255, %274 : vector<5xi16>, vector<4x5xi16> into vector<4xi16>
            %276 = arith.addi %c1571650467_i32, %c1571650467_i32 : i32
            %277 = tensor.empty() : tensor<15x12xi32>
            affine.store %cst, %alloc_6[%c12] : memref<12xf32>
            %278 = arith.shrui %false, %251 : i1
            %279 = math.cos %9 : tensor<5x4xf32>
            %280 = math.expm1 %16 : tensor<4x5xf32>
            %281 = memref.load %alloc_15[%c4, %c9] : memref<15x12xf16>
            %cast_53 = tensor.cast %12 : tensor<15x12xi32> to tensor<?x?xi32>
            %282 = arith.xori %false_1, %false_1 : i1
            %alloca_54 = memref.alloca() : memref<12xf32>
            %283 = index.casts %in_52 : i32 to index
            %284 = bufferization.clone %alloc_16 : memref<15x12xi1> to memref<15x12xi1>
            %285 = vector.insertelement %true, %95[%36 : index] : vector<1xi1>
            %286 = math.log10 %15 : tensor<15x12xf16>
            %287 = vector.matrix_multiply %97, %66 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
            %288 = arith.divsi %75, %c-29182_i16 : i16
            %true_55 = index.bool.constant true
            %289 = vector.broadcast %in_47 : f32 to vector<12xf32>
            %290 = vector.broadcast %c1571650467_i32 : i32 to vector<12xi32>
            %291 = vector.gather %102[%283, %84] [%290], %66, %289 : tensor<15x12xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
            %292 = vector.reduction <minsi>, %19 : vector<5xi16> into i16
            %293 = vector.create_mask %c13, %78 : vector<5x4xi1>
            %294 = affine.min affine_map<(d0, d1) -> (d1 + d0)>(%c1, %c1)
            %alloc_56 = memref.alloc() : memref<5x4xf16>
            %295 = vector.broadcast %32 : f16 to vector<15x12xf16>
            %296 = vector.broadcast %in_52 : i32 to vector<15x12xi32>
            %297 = vector.gather %alloc_56[%294, %256] [%296], %53, %295 : memref<5x4xf16>, vector<15x12xi32>, vector<15x12xi1>, vector<15x12xf16> into vector<15x12xf16>
            %collapsed_57 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x12xi32> into tensor<180xi32>
            %298 = memref.atomic_rmw mins %c27303_i16, %57[%c3, %c2] : (i16, memref<5x4xi16>) -> i16
            %inserted = tensor.insert %c1_i32 into %reduced[%c0] : tensor<5xi32>
            %299 = arith.andi %true_2, %251 : i1
            %300 = math.round %10 : tensor<5x4xf16>
            %301 = arith.mulf %cst, %in_46 : f32
            %302 = memref.atomic_rmw mulf %in, %73[%c4] : (f32, memref<12xf32>) -> f32
            %inserted_58 = tensor.insert %in into %102[%c5, %c5] : tensor<15x12xf32>
            %303 = arith.xori %c1_i32, %c1_i32 : i32
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %from_elements_49 = tensor.from_elements %false, %true, %false, %251, %true, %true_2, %false, %true, %false_1, %true_2, %251, %false, %true, %false_0, %251, %false_1, %false_1, %false, %false_1, %true, %true_2, %false, %true, %true_2, %false_0, %true, %251, %false, %false_0, %false_0, %false_1, %false_1, %true_2, %true, %false_1, %false_0, %true, %false, %true_2, %false, %false_0, %true_2, %false_1, %false_1, %true, %false_0, %true, %251, %true_2, %251, %251, %false_0, %false_0, %251, %false, %true_2, %true_2, %false_0, %false, %true, %true, %false_0, %false_1, %true_2, %false_0, %true_2, %true, %true_2, %true_2, %false_0, %true_2, %false_0, %false_1, %false, %251, %true, %251, %false, %false_0, %true, %true_2, %true_2, %251, %true, %true, %false, %true_2, %false_0, %false_1, %true, %false_0, %251, %true, %251, %251, %false_1, %false_0, %251, %false_1, %false, %251, %false_1, %false_1, %false_1, %true_2, %true, %251, %false, %false, %true, %false_0, %251, %true, %false_0, %false_1, %false_1, %true_2, %false_1, %false_0, %251, %251, %false, %true_2, %false_0, %false_1, %251, %false, %false_0, %true_2, %true_2, %true_2, %251, %false_0, %false_0, %false, %false_0, %251, %251, %false_0, %false, %false_1, %false, %251, %false_1, %true, %false, %false_1, %false, %false_1, %251, %false_0, %true, %251, %false, %false, %false, %true, %251, %true_2, %false_1, %true_2, %false_1, %true_2, %251, %251, %false_1, %251, %251, %false_0, %true_2, %true, %true, %false, %true_2, %false_1, %false, %false, %true, %251, %true : tensor<15x12xi1>
        %264 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %265 = vector.broadcast %true : i1 to vector<5x4xi1>
        %266 = vector.broadcast %c1_i32 : i32 to vector<5x4xi32>
        %267 = vector.gather %6[%c14, %28] [%266], %265, %265 : tensor<15x12xi1>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi1> into vector<5x4xi1>
        %268 = math.atan %in : f32
        %269 = affine.for %arg2 = 0 to 104 iter_args(%arg3 = %c0) -> (index) {
          affine.yield %70 : index
        }
        %270 = arith.maxf %257, %in_46 : f32
        %271 = arith.remf %cst_3, %cst_3 : f32
        %alloc_50 = memref.alloc() : memref<15x12xi64>
        memref.tensor_store %7, %alloc_50 : memref<15x12xi64>
        %272 = math.atan2 %in_47, %cst_3 : f32
        %273 = vector.load %alloc_13[%c2, %c3] : memref<5x4xi16>, vector<4x5xi16>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %103 = arith.andi %c27303_i16, %75 : i16
    %104 = scf.if %true -> (memref<12xi16>) {
      %243 = math.powf %32, %32 : f16
      %244 = tensor.empty() : tensor<15x15x15xf32>
      %alloc_46 = memref.alloc() : memref<15x15xf32>
      %245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<15x15xf32>) outs(%244 : tensor<15x15x15xf32>) {
      ^bb0(%in: f32, %out: f32):
        vector.print %66 : vector<12xi1>
        %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<4x5xi1> into tensor<4x5x1xi1>
        %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c29252_i16 : vector<5xi16>, vector<5xi16> into i16
        affine.store %75, %alloc_14[%c3, %c13] : memref<5x4xi16>
        %253 = vector.insertelement %true, %66[%c7 : index] : vector<12xi1>
        %254 = math.atan2 %32, %32 : f16
        %255 = tensor.empty() : tensor<15x12xi64>
        memref.assume_alignment %alloc_16, 8 : memref<15x12xi1>
        affine.store %in, %alloc_8[%c14, %c3] : memref<5x4xf32>
        %256 = math.sqrt %collapsed : tensor<20xf32>
        %257 = math.atan2 %cst, %out : f32
        memref.assume_alignment %alloc_17, 1 : memref<4x5xf32>
        %258 = math.fma %in, %out, %in : f32
        %259 = arith.muli %c-29182_i16, %c-30111_i16 : i16
        %260 = vector.insertelement %false_0, %79[%78 : index] : vector<1xi1>
        %261 = vector.splat %c27303_i16 : vector<5x4xi16>
        %262 = arith.shli %c1571650467_i32, %c1859716050_i32 : i32
        %263 = vector.insertelement %75, %19[%c12 : index] : vector<5xi16>
        %264 = bufferization.clone %alloc_11 : memref<5x4xi16> to memref<5x4xi16>
        %265 = vector.extract %97[4] : vector<12xi1>
        %dest, %accumulated_value = vector.scan <or>, %53, %97 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
        %266 = vector.create_mask %70, %c4 : vector<4x5xi1>
        %267 = arith.mulf %cst_3, %in : f32
        memref.copy %57, %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
        %268 = vector.broadcast %c0 : index to vector<4xindex>
        %269 = vector.broadcast %true_2 : i1 to vector<4xi1>
        %270 = vector.broadcast %c-29182_i16 : i16 to vector<4xi16>
        vector.scatter %57[%c2, %c3] [%268], %269, %270 : memref<5x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %271 = arith.divf %cst, %out : f32
        %272 = arith.minui %c1559528702_i64, %c536847134_i64 : i64
        %273 = bufferization.clone %41 : memref<15x12xf16> to memref<15x12xf16>
        %274 = arith.minf %in, %cst_3 : f32
        %275 = tensor.empty() : tensor<15x12xf16>
        %276 = vector.broadcast %cst : f32 to vector<12xf32>
        %277 = vector.broadcast %c1859716050_i32 : i32 to vector<12xi32>
        %278 = vector.gather %16[%c12, %c15] [%277], %97, %276 : tensor<4x5xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %279 = memref.load %alloc_11[%c1, %c2] : memref<5x4xi16>
        linalg.yield %cst : f32
      } -> tensor<15x15x15xf32>
      %246 = math.sqrt %14 : tensor<15x12xf32>
      %247 = index.mul %23, %93
      %248 = arith.maxf %cst, %cst : f32
      %249 = index.mul %c1, %36
      %250 = vector.bitcast %97 : vector<12xi1> to vector<12xi1>
      %251 = arith.shrui %true, %false_0 : i1
      %alloc_47 = memref.alloc() : memref<12xi16>
      scf.yield %alloc_47 : memref<12xi16>
    } else {
      %243 = math.round %5 : tensor<12xf32>
      %244 = vector.splat %c9 : vector<15x12xindex>
      %245 = index.castu %c8 : index to i32
      %246 = vector.broadcast %c-21208_i16 : i16 to vector<15x12xi16>
      %247 = math.exp %cst_3 : f32
      %248 = arith.remf %cst_3, %cst : f32
      %249 = index.divs %93, %84
      %250 = index.mul %c11, %38
      %alloc_46 = memref.alloc() : memref<12xi16>
      scf.yield %alloc_46 : memref<12xi16>
    }
    %alloc_27 = memref.alloc() : memref<5x4xi16>
    %105 = memref.atomic_rmw mins %c29252_i16, %alloc_11[%c3, %c0] : (i16, memref<5x4xi16>) -> i16
    %106 = math.round %14 : tensor<15x12xf32>
    memref.tensor_store %5, %83 : memref<12xf32>
    memref.alloca_scope  {
      %243 = index.castu %c27303_i16 : i16 to index
      %244 = vector.insertelement %false_1, %95[%c8 : index] : vector<1xi1>
      %245 = arith.divf %32, %32 : f16
      %246 = tensor.empty() : tensor<4x5xi16>
      %247 = math.fma %cst_3, %cst_3, %cst : f32
      %248 = math.log1p %cst_3 : f32
      %249 = arith.divui %c1_i32, %c1571650467_i32 : i32
      %250 = arith.minui %c-21208_i16, %c29252_i16 : i16
      %251 = math.floor %5 : tensor<12xf32>
      %alloc_46 = memref.alloc() : memref<5x4xf16>
      memref.tensor_store %10, %alloc_46 : memref<5x4xf16>
      %252 = tensor.empty() : tensor<15x12xi32>
      %253 = index.casts %c1559528702_i64 : i64 to index
      %254 = vector.broadcast %c-21208_i16 : i16 to vector<15x12xi16>
      %255 = index.maxu %c0, %243
      %256 = arith.muli %c1859716050_i32, %c1_i32 : i32
      %alloc_47 = memref.alloc() : memref<4x5xf16>
      %257 = math.floor %16 : tensor<4x5xf32>
      %258 = tensor.empty() : tensor<12xf32>
      %mapped_48 = linalg.map ins(%5 : tensor<12xf32>) outs(%258 : tensor<12xf32>)
        (%in: f32) {
          %270 = math.atan %15 : tensor<15x12xf16>
          %271 = math.ipowi %21, %21 : tensor<i16>
          %272 = memref.load %83[%c2] : memref<12xf32>
          %273 = vector.transpose %53, [1, 0] : vector<15x12xi1> to vector<12x15xi1>
          %274 = index.ceildivu %36, %28
          %275 = vector.matrix_multiply %95, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
          %276 = vector.multi_reduction <and>, %275, %66 [] : vector<12xi1> to vector<12xi1>
          %277 = math.log1p %16 : tensor<4x5xf32>
          %278 = math.log10 %258 : tensor<12xf32>
          %279 = arith.divf %cst, %cst_3 : f32
          %inserted_50 = tensor.insert %32 into %10[%c2, %c1] : tensor<5x4xf16>
          %280 = index.divs %c8, %c10
          %281 = math.exp %9 : tensor<5x4xf32>
          %collapsed_51 = tensor.collapse_shape %14 [[0, 1]] : tensor<15x12xf32> into tensor<180xf32>
          %282 = memref.load %83[%c1] : memref<12xf32>
          %283 = memref.atomic_rmw minu %c27303_i16, %alloc_13[%c1, %c0] : (i16, memref<5x4xi16>) -> i16
          %284 = arith.mulf %cst, %cst : f32
          %285 = arith.divsi %75, %c27303_i16 : i16
          %286 = math.atan2 %cst, %cst : f32
          %287 = index.mul %c3, %71
          %288 = math.ipowi %11, %11 : tensor<5x4xi16>
          %289 = math.log1p %cst_3 : f32
          %290 = affine.load %alloc_6[%c9] : memref<12xf32>
          %291 = arith.minf %cst, %in : f32
          %alloc_52 = memref.alloc() : memref<12xi16>
          memref.copy %104, %alloc_52 : memref<12xi16> to memref<12xi16>
          %292 = vector.transpose %275, [0] : vector<12xi1> to vector<12xi1>
          %293 = vector.create_mask %c2, %c6 : vector<5x4xi1>
          %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%28, %c4, %287, %c0)
          %295 = arith.muli %c1571650467_i32, %c1859716050_i32 : i32
          %296 = arith.maxf %cst, %290 : f32
          %297 = arith.maxf %cst_3, %in : f32
          %298 = arith.shrui %false_0, %true : i1
          %cst_53 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_53 : f32
        }
      %259 = math.log1p %74 : tensor<5x4xf32>
      %alloc_49 = memref.alloc() : memref<5xi32>
      memref.tensor_store %18, %alloc_49 : memref<5xi32>
      %260 = scf.while (%arg2 = %254) : (vector<15x12xi16>) -> vector<15x12xi16> {
        %270 = arith.cmpi uge, %75, %c27303_i16 : i16
        %271 = arith.divsi %false_1, %false_1 : i1
        %272 = arith.mulf %cst_3, %cst_3 : f32
        bufferization.dealloc_tensor %6 : tensor<15x12xi1>
        %273 = vector.broadcast %c27303_i16 : i16 to vector<15x12xi16>
        %274 = math.cos %102 : tensor<15x12xf32>
        %275 = vector.shuffle %53, %53 [1, 9, 11, 12, 13, 14, 15, 16, 19, 21, 22, 23, 24, 26] : vector<15x12xi1>, vector<15x12xi1>
        %276 = math.cos %10 : tensor<5x4xf16>
        scf.condition(%true_2) %254 : vector<15x12xi16>
      } do {
      ^bb0(%arg2: vector<15x12xi16>):
        %270 = math.exp2 %14 : tensor<15x12xf32>
        memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        %271 = arith.minui %true_2, %true_2 : i1
        %272 = math.round %5 : tensor<12xf32>
        %273 = arith.shli %c1559528702_i64, %c536847134_i64 : i64
        %274 = index.sizeof
        %275 = tensor.empty(%67) : tensor<4x?xi16>
        %276 = index.add %71, %c5
        %277 = vector.matrix_multiply %66, %79 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<1xi1>) -> vector<12xi1>
        %278 = arith.cmpf ult, %cst, %cst : f32
        %279 = vector.broadcast %false : i1 to vector<1x1xi1>
        %280 = vector.outerproduct %95, %79, %279 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
        %281 = arith.divsi %c29252_i16, %c-29182_i16 : i16
        %282 = index.castu %true : i1 to index
        %283 = index.divs %274, %243
        %284 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 8) ceildiv 8, (d2 ceildiv 8) floordiv 64)>(%c9, %255, %23)
        %285 = arith.maxf %cst_3, %cst_3 : f32
        scf.yield %254 : vector<15x12xi16>
      }
      affine.store %c27303_i16, %alloc_14[%c13, %c1] : memref<5x4xi16>
      %261 = arith.muli %c-29182_i16, %c-21208_i16 : i16
      %inserted = tensor.insert %cst_3 into %14[%c0, %c2] : tensor<15x12xf32>
      %262 = vector.broadcast %true : i1 to vector<12x12xi1>
      %263 = vector.outerproduct %66, %97, %262 {kind = #vector.kind<or>} : vector<12xi1>, vector<12xi1>
      %264 = index.sizeof
      memref.assume_alignment %alloc_12, 2 : memref<12xf32>
      %265 = math.log1p %cst : f32
      %266 = affine.max affine_map<(d0, d1) -> (d1 - 64, (d0 + d1 ceildiv 8 + 33) ceildiv 4)>(%100, %243)
      %267 = scf.if %true -> (i16) {
        memref.tensor_store %258, %alloc_12 : memref<12xf32>
        %270 = memref.atomic_rmw minf %32, %41[%c6, %c11] : (f16, memref<15x12xf16>) -> f16
        %collapsed_50 = tensor.collapse_shape %13 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
        bufferization.dealloc_tensor %102 : tensor<15x12xf32>
        %271 = arith.xori %c1_i32, %c1859716050_i32 : i32
        %272 = arith.shrui %c1571650467_i32, %c1859716050_i32 : i32
        %273 = arith.cmpi sge, %c536847134_i64, %c536847134_i64 : i64
        %274 = arith.divsi %false_1, %true : i1
        scf.yield %c-21208_i16 : i16
      } else {
        %270 = arith.maxsi %c1859716050_i32, %c1_i32 : i32
        %cast_50 = tensor.cast %from_elements : tensor<5x4xi16> to tensor<?x?xi16>
        %271 = arith.remf %cst_3, %cst_3 : f32
        %272 = arith.andi %false_1, %true_2 : i1
        %273 = math.sqrt %10 : tensor<5x4xf16>
        %274 = arith.mulf %32, %32 : f16
        %275 = vector.insertelement %true_2, %97[%36 : index] : vector<12xi1>
        %276 = math.round %15 : tensor<15x12xf16>
        scf.yield %75 : i16
      }
      %268 = affine.min affine_map<(d0) -> (d0 + (d0 * 2) floordiv 128 - 32)>(%c11)
      %269 = arith.shrui %c-21208_i16, %c-30111_i16 : i16
    }
    %107 = math.atan2 %32, %32 : f16
    %108 = vector.reduction <and>, %19 : vector<5xi16> into i16
    %109 = arith.divf %cst, %cst : f32
    %110 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
    %111 = memref.load %alloc_12[%c4] : memref<12xf32>
    %112 = math.rsqrt %cst_3 : f32
    affine.for %arg2 = 0 to 32 {
    }
    %113 = arith.cmpf olt, %cst_3, %cst_3 : f32
    %114 = bufferization.clone %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
    %115 = memref.alloca_scope  -> (i32) {
      %cast_46 = tensor.cast %13 : tensor<5x4xi16> to tensor<?x?xi16>
      %243 = math.log1p %102 : tensor<15x12xf32>
      %alloc_47 = memref.alloc() : memref<12x15xi32>
      %244 = tensor.empty() : tensor<15x15xi32>
      %245 = linalg.matmul ins(%12, %alloc_47 : tensor<15x12xi32>, memref<12x15xi32>) outs(%244 : tensor<15x15xi32>) -> tensor<15x15xi32>
      %246 = math.powf %0, %16 : tensor<4x5xf32>
      %247 = index.mul %c13, %100
      scf.execute_region {
        %268 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        %269 = vector.broadcast %c1571650467_i32 : i32 to vector<12xi32>
        %270 = vector.gather %alloc_12[%84] [%269], %66, %268 : memref<12xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %271 = memref.atomic_rmw mins %c29252_i16, %alloc_14[%c3, %c0] : (i16, memref<5x4xi16>) -> i16
        affine.store %cst_3, %83[%c0] : memref<12xf32>
        %272 = arith.muli %c1_i32, %c1_i32 : i32
        affine.store %75, %alloc_14[%c10, %c5] : memref<5x4xi16>
        %273 = vector.matrix_multiply %110, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi16>, vector<5xi16>) -> vector<5xi16>
        %274 = index.casts %c-29182_i16 : i16 to index
        %275 = arith.divf %32, %32 : f16
        %276 = arith.minsi %75, %c-29182_i16 : i16
        affine.store %c27303_i16, %104[%c7] : memref<12xi16>
        %277 = math.sqrt %14 : tensor<15x12xf32>
        %278 = arith.minsi %c1_i32, %c1859716050_i32 : i32
        %279 = index.divs %c11, %67
        memref.assume_alignment %114, 2 : memref<5x4xi16>
        %280 = vector.gather %9[%100, %c2] [%269], %97, %268 : tensor<5x4xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        bufferization.dealloc_tensor %6 : tensor<15x12xi1>
        scf.yield
      }
      %alloc_48 = memref.alloc() : memref<12xf32>
      %248 = arith.minsi %c1_i32, %c1571650467_i32 : i32
      %249 = math.log10 %32 : f16
      %250 = math.cos %102 : tensor<15x12xf32>
      %251 = arith.divsi %true_2, %true_2 : i1
      %252 = index.maxu %c1, %c4
      scf.execute_region {
        %268 = arith.andi %c1_i32, %c1571650467_i32 : i32
        %269 = vector.broadcast %cst : f32 to vector<4x5xf32>
        %270 = arith.divsi %75, %c-29182_i16 : i16
        %271 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<5xi16> to vector<1xi16>
        %272 = math.round %10 : tensor<5x4xf16>
        memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        %273 = math.floor %9 : tensor<5x4xf32>
        %274 = math.log10 %32 : f16
        %275 = arith.remf %32, %32 : f16
        %from_elements_51 = tensor.from_elements %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1_i32 : tensor<15x12xi32>
        %276 = index.ceildivs %c6, %67
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %97, %66, %false_0 : vector<12xi1>, vector<12xi1> into i1
        %278 = vector.broadcast %c1_i32 : i32 to vector<15x12xi32>
        %279 = vector.gather %alloc_5[%c12, %252] [%278], %53, %278 : memref<4x5xi32>, vector<15x12xi32>, vector<15x12xi1>, vector<15x12xi32> into vector<15x12xi32>
        %280 = index.castu %23 : index to i32
        memref.tensor_store %11, %alloc_13 : memref<5x4xi16>
        %281 = vector.transpose %278, [1, 0] : vector<15x12xi32> to vector<12x15xi32>
        scf.yield
      }
      %253 = arith.divf %cst, %cst : f32
      %254 = arith.divf %cst, %cst : f32
      affine.store %32, %41[%c13, %c13] : memref<15x12xf16>
      %255 = arith.xori %false, %false_0 : i1
      %256 = affine.min affine_map<(d0, d1) -> (-d0, d1, d0, (-d0 + 16) mod 128)>(%28, %c6)
      %257 = vector.flat_transpose %66 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %258 = arith.maxf %cst, %cst : f32
      %259 = affine.for %arg2 = 0 to 75 iter_args(%arg3 = %256) -> (index) {
        affine.yield %c7 : index
      }
      %260 = vector.shuffle %19, %19 [7] : vector<5xi16>, vector<5xi16>
      %261 = vector.broadcast %c27303_i16 : i16 to vector<15x12xi16>
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + (d2 floordiv 16) mod 8 - (d2 + d0) + d3, (d2 + d1) mod 32, (d2 floordiv 16) mod 8 - (d2 + d0), d2 + d0)>(%c8, %c7, %c11, %c6)
      %alloc_49 = memref.alloc() : memref<5x4xf16>
      memref.tensor_store %10, %alloc_49 : memref<5x4xf16>
      %263 = arith.shrui %true_2, %false_0 : i1
      %264 = index.mul %84, %c10
      %265 = arith.minui %false, %false_1 : i1
      %266 = math.ipowi %12, %2 : tensor<15x12xi32>
      %collapsed_50 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xf16> into tensor<20xf16>
      bufferization.dealloc_tensor %10 : tensor<5x4xf16>
      %267 = index.mul %c5, %c10
      memref.alloca_scope.return %c1571650467_i32 : i32
    }
    %116 = bufferization.to_memref %0 : memref<4x5xf32>
    %117 = math.tanh %9 : tensor<5x4xf32>
    %118 = index.divu %c9, %71
    vector.print %110 : vector<1xi16>
    %119 = math.atan %9 : tensor<5x4xf32>
    %120 = index.ceildivs %23, %c3
    %collapsed_28 = tensor.collapse_shape %0 [[0, 1]] : tensor<4x5xf32> into tensor<20xf32>
    %cast_29 = tensor.cast %4 : tensor<4x5xi16> to tensor<?x?xi16>
    %121 = math.absi %false_1 : i1
    %122 = tensor.empty() : tensor<12xf32>
    %mapped_30 = linalg.map ins(%83 : memref<12xf32>) outs(%122 : tensor<12xf32>)
      (%in: f32) {
        %243 = vector.transpose %66, [0] : vector<12xi1> to vector<12xi1>
        %244 = memref.atomic_rmw andi %75, %114[%c1, %c2] : (i16, memref<5x4xi16>) -> i16
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<15x12xi32> into tensor<15x12x1xi32>
        %245 = memref.atomic_rmw mulf %32, %alloc_10[%c1, %c1] : (f16, memref<4x5xf16>) -> f16
        %generated = tensor.generate %c0 {
        ^bb0(%arg2: index, %arg3: index):
          %266 = arith.cmpi ule, %c-29182_i16, %c-30111_i16 : i16
          %267 = vector.create_mask %c4, %c0 : vector<15x12xi1>
          %268 = math.rsqrt %74 : tensor<5x4xf32>
          %from_elements_50 = tensor.from_elements %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32 : tensor<15x12xf16>
          tensor.yield %32 : f16
        } : tensor<?x4xf16>
        %246 = arith.muli %false_1, %false_0 : i1
        %from_elements_46 = tensor.from_elements %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64 : tensor<5x4xi64>
        %247 = arith.muli %c27303_i16, %75 : i16
        %248 = memref.alloca_scope  -> (i64) {
          %alloca_50 = memref.alloca() : memref<4x5xi16>
          %266 = index.castu %c1571650467_i32 : i32 to index
          %267 = index.ceildivs %c14, %c12
          affine.store %cst, %83[%c2] : memref<12xf32>
          %268 = math.log1p %5 : tensor<12xf32>
          %269 = math.ceil %102 : tensor<15x12xf32>
          %270 = index.mul %c1, %c8
          %271 = tensor.empty() : tensor<15x12xi32>
          vector.print %97 : vector<12xi1>
          %272 = arith.cmpf ord, %cst, %cst : f32
          %273 = arith.muli %c-29182_i16, %c-29182_i16 : i16
          %274 = math.sqrt %10 : tensor<5x4xf16>
          %275 = memref.atomic_rmw mulf %cst, %83[%c7] : (f32, memref<12xf32>) -> f32
          %alloc_51 = memref.alloc() : memref<15x12xf32>
          memref.tensor_store %14, %alloc_51 : memref<15x12xf32>
          %from_elements_52 = tensor.from_elements %75, %c-21208_i16, %c-21208_i16, %c-30111_i16, %c29252_i16, %c27303_i16, %c-21208_i16, %c27303_i16, %c-21208_i16, %c-30111_i16, %c-29182_i16, %c-29182_i16, %c29252_i16, %c-29182_i16, %c-30111_i16, %c-21208_i16, %c-29182_i16, %c-30111_i16, %c-21208_i16, %c29252_i16, %c-30111_i16, %c-21208_i16, %75, %c29252_i16, %c-21208_i16, %75, %c29252_i16, %75, %c27303_i16, %c-29182_i16, %c29252_i16, %c-30111_i16, %75, %c27303_i16, %c-21208_i16, %75, %75, %c-29182_i16, %c-30111_i16, %c27303_i16, %c-29182_i16, %c-21208_i16, %c27303_i16, %c-29182_i16, %c-30111_i16, %c-21208_i16, %c-21208_i16, %c27303_i16, %75, %c29252_i16, %75, %c29252_i16, %c-21208_i16, %c-29182_i16, %c27303_i16, %c-30111_i16, %c-29182_i16, %c-30111_i16, %c-29182_i16, %c-29182_i16, %75, %c-21208_i16, %75, %c-30111_i16, %c29252_i16, %c-21208_i16, %75, %75, %c29252_i16, %c27303_i16, %c27303_i16, %c-21208_i16, %c29252_i16, %c29252_i16, %c-30111_i16, %c-30111_i16, %c29252_i16, %c27303_i16, %c-30111_i16, %c-21208_i16, %75, %c-21208_i16, %c-30111_i16, %c-30111_i16, %c29252_i16, %c-21208_i16, %c-21208_i16, %c29252_i16, %c27303_i16, %c29252_i16, %c29252_i16, %c-30111_i16, %c-29182_i16, %c-21208_i16, %c-30111_i16, %c29252_i16, %c-30111_i16, %c27303_i16, %c-30111_i16, %c-21208_i16, %c-21208_i16, %c-29182_i16, %c29252_i16, %c-30111_i16, %c-29182_i16, %c-21208_i16, %c29252_i16, %75, %c27303_i16, %c-21208_i16, %c27303_i16, %c-30111_i16, %c27303_i16, %c-21208_i16, %c-21208_i16, %c-21208_i16, %c-30111_i16, %c-30111_i16, %c-21208_i16, %c-21208_i16, %c-29182_i16, %c-21208_i16, %c-29182_i16, %c-29182_i16, %c29252_i16, %c29252_i16, %75, %c27303_i16, %c-29182_i16, %75, %75, %c-30111_i16, %c-21208_i16, %c29252_i16, %c-29182_i16, %75, %75, %c-29182_i16, %c27303_i16, %c29252_i16, %75, %c27303_i16, %75, %c27303_i16, %c29252_i16, %c29252_i16, %c-30111_i16, %c-29182_i16, %c-29182_i16, %c-29182_i16, %c-30111_i16, %c-29182_i16, %c-29182_i16, %c29252_i16, %75, %c27303_i16, %75, %c27303_i16, %c27303_i16, %c-29182_i16, %c-30111_i16, %c-30111_i16, %c27303_i16, %c-29182_i16, %75, %c29252_i16, %c-30111_i16, %c-21208_i16, %c-30111_i16, %c-29182_i16, %c27303_i16, %75, %c-29182_i16, %c-30111_i16, %c-30111_i16, %c-29182_i16, %c27303_i16, %c-29182_i16, %c27303_i16, %c-30111_i16 : tensor<15x12xi16>
          %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %75 : vector<5xi16>, vector<5xi16> into i16
          %277 = index.floordivs %c6, %67
          %278 = arith.maxui %115, %c1571650467_i32 : i32
          %c3509_i16 = arith.constant 3509 : i16
          %alloc_53 = memref.alloc() : memref<5x4xi64>
          memref.tensor_store %from_elements_46, %alloc_53 : memref<5x4xi64>
          %279 = arith.muli %c1571650467_i32, %c1571650467_i32 : i32
          %280 = math.sqrt %74 : tensor<5x4xf32>
          %alloc_54 = memref.alloc() : memref<15x12xf32>
          memref.tensor_store %14, %alloc_54 : memref<15x12xf32>
          %281 = math.log1p %0 : tensor<4x5xf32>
          %282 = index.divs %36, %78
          %alloca_55 = memref.alloca() : memref<4x5xi1>
          %283 = vector.broadcast %cst : f32 to vector<4x5xf32>
          %284 = arith.divf %32, %32 : f16
          %285 = math.ipowi %c-29182_i16, %c27303_i16 : i16
          %286 = math.powf %102, %14 : tensor<15x12xf32>
          %cst_56 = arith.constant 1.000000e+00 : f32
          %cst_57 = arith.constant 0.000000e+00 : f32
          %287 = vector.transfer_read %83[%c6], %cst_57 : memref<12xf32>, vector<f32>
          %288 = arith.divui %false, %false_0 : i1
          memref.alloca_scope.return %c536847134_i64 : i64
        }
        memref.assume_alignment %31, 4 : memref<5x4xf32>
        %249 = arith.shrui %c1_i32, %c1571650467_i32 : i32
        %250 = math.atan2 %122, %122 : tensor<12xf32>
        affine.store %c-30111_i16, %alloc_14[%c12, %c1] : memref<5x4xi16>
        %251 = vector.multi_reduction <mul>, %19, %19 [] : vector<5xi16> to vector<5xi16>
        %cast_47 = tensor.cast %12 : tensor<15x12xi32> to tensor<?x?xi32>
        %alloca_48 = memref.alloca() : memref<4x5xi64>
        %252 = math.ipowi %c27303_i16, %c27303_i16 : i16
        %253 = arith.shli %c536847134_i64, %c1559528702_i64 : i64
        affine.for %arg2 = 0 to 20 {
        }
        %254 = vector.create_mask %c12, %118 : vector<15x12xi1>
        %255 = affine.load %alloc_15[%c4, %c9] : memref<15x12xf16>
        %256 = arith.shrui %c1_i32, %c1_i32 : i32
        %257 = arith.andi %c1_i32, %c1859716050_i32 : i32
        %258 = arith.divsi %c-21208_i16, %c-30111_i16 : i16
        %259 = index.maxu %93, %71
        %260 = math.log10 %0 : tensor<4x5xf32>
        %261 = scf.while (%arg2 = %115) : (i32) -> i32 {
          %266 = arith.divf %32, %255 : f16
          %267 = math.log1p %16 : tensor<4x5xf32>
          %268 = index.ceildivs %c8, %c8
          %269 = vector.extract %110[0] : vector<1xi16>
          %alloca_50 = memref.alloca() : memref<15x12xi1>
          %270 = affine.min affine_map<(d0, d1) -> (-d0, d0)>(%78, %c9)
          %271 = index.mul %93, %c1
          %272 = index.ceildivs %36, %c1
          scf.condition(%false_0) %115 : i32
        } do {
        ^bb0(%arg2: i32):
          %266 = index.divs %84, %c6
          %true_50 = index.bool.constant true
          %267 = math.atan2 %10, %10 : tensor<5x4xf16>
          %268 = bufferization.clone %104 : memref<12xi16> to memref<12xi16>
          %269 = arith.xori %115, %c1859716050_i32 : i32
          %cast_51 = tensor.cast %expanded : tensor<15x12x1xi32> to tensor<?x?x?xi32>
          %270 = math.tanh %32 : f16
          %271 = index.maxs %c7, %28
          %expanded_52 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<5x4xi16> into tensor<5x4x1xi16>
          %272 = vector.transpose %53, [1, 0] : vector<15x12xi1> to vector<12x15xi1>
          %alloca_53 = memref.alloca() : memref<15x12xi64>
          %273 = math.powf %74, %9 : tensor<5x4xf32>
          %274 = index.divu %38, %c7
          %275 = vector.matrix_multiply %66, %95 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<1xi1>) -> vector<12xi1>
          %276 = arith.minf %in, %cst_3 : f32
          %277 = math.fma %102, %14, %14 : tensor<15x12xf32>
          scf.yield %c1859716050_i32 : i32
        }
        %262 = math.ceil %10 : tensor<5x4xf16>
        %263 = arith.minui %true, %true : i1
        %264 = math.fma %17, %0, %16 : tensor<4x5xf32>
        %265 = vector.bitcast %19 : vector<5xi16> to vector<5xi16>
        memref.alloca_scope  {
          %266 = math.absf %32 : f16
          %267 = math.cttz %3 : tensor<12xi16>
          %268 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 32)>(%c7, %120, %c13)
          %269 = arith.remf %cst_3, %cst : f32
          %270 = vector.transpose %79, [0] : vector<1xi1> to vector<1xi1>
          %271 = arith.divsi %c1_i32, %c1859716050_i32 : i32
          %272 = arith.xori %true, %false_0 : i1
          %273 = arith.muli %false_1, %true_2 : i1
          %274 = arith.maxf %cst, %cst_3 : f32
          %275 = vector.broadcast %c29252_i16 : i16 to vector<15x12xi16>
          %276 = math.cos %14 : tensor<15x12xf32>
          %277 = math.log2 %15 : tensor<15x12xf16>
          %278 = memref.atomic_rmw addf %in, %116[%c3, %c2] : (f32, memref<4x5xf32>) -> f32
          %279 = arith.divf %255, %32 : f16
          %280 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 32, ((d1 ceildiv 32) floordiv 64) floordiv 2, d1 + 2, -d0)>(%84, %c2)
          %281 = vector.insertelement %false, %79[%c1 : index] : vector<1xi1>
          %extracted = tensor.extract %generated[%c0, %c1] : tensor<?x4xf16>
          %282 = arith.ori %115, %115 : i32
          %283 = index.casts %115 : i32 to index
          %284 = arith.minf %in, %in : f32
          %285 = vector.create_mask %120, %118 : vector<4x5xi1>
          %286 = bufferization.to_memref %74 : memref<5x4xf32>
          %extracted_50 = tensor.extract %from_elements[%c2, %c2] : tensor<5x4xi16>
          %287 = memref.atomic_rmw addf %cst, %alloc_6[%c10] : (f32, memref<12xf32>) -> f32
          %288 = math.round %9 : tensor<5x4xf32>
          %cst_51 = arith.constant 0x4E68B3DC : f32
          affine.store %cst_3, %31[%c5, %c10] : memref<5x4xf32>
          %289 = math.log10 %extracted : f16
          %290 = affine.min affine_map<(d0, d1, d2) -> ((d1 floordiv 128 - 2) * 4 - (d1 - 64), d0 * 2, d1, (d0 ceildiv 2) floordiv 4)>(%283, %c5, %c8)
          affine.store %32, %alloc_7[%c9, %c4] : memref<15x12xf16>
          %291 = math.log10 %extracted : f16
          %292 = index.maxu %c12, %c12
        }
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    %123 = math.ipowi %true_2, %false : i1
    %124 = arith.shli %75, %c27303_i16 : i16
    memref.assume_alignment %104, 16 : memref<12xi16>
    %125 = math.log1p %17 : tensor<4x5xf32>
    %126 = vector.shuffle %95, %97 [0, 1, 2, 3, 6, 7, 11, 12] : vector<1xi1>, vector<12xi1>
    %127 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %66, %66, %false_0 : vector<12xi1>, vector<12xi1> into i1
    %cast_31 = tensor.cast %13 : tensor<5x4xi16> to tensor<?x?xi16>
    %cst_32 = arith.constant 1.84919731E+9 : f32
    %128 = math.atan2 %5, %5 : tensor<12xf32>
    %129 = arith.minf %cst, %cst : f32
    %130 = bufferization.clone %alloc_19 : memref<4x5xf32> to memref<4x5xf32>
    %131 = arith.maxf %cst_3, %cst : f32
    %132 = arith.xori %c1559528702_i64, %c1559528702_i64 : i64
    %133 = arith.minf %cst_3, %cst : f32
    %134 = vector.broadcast %c1571650467_i32 : i32 to vector<15x12xi32>
    %135 = math.expm1 %5 : tensor<12xf32>
    %136 = math.atan %15 : tensor<15x12xf16>
    %137 = math.atan2 %9, %74 : tensor<5x4xf32>
    %alloc_33 = memref.alloc() : memref<4x5xf16>
    %138 = bufferization.to_memref %1 : memref<4x5xi1>
    %139 = tensor.empty() : tensor<15x12xi16>
    %140 = scf.while (%arg2 = %cst) : (f32) -> f32 {
      scf.if %false {
        %250 = vector.create_mask %84 : vector<12xi1>
        %251 = math.cos %0 : tensor<4x5xf32>
        memref.copy %alloc_4, %alloc_7 : memref<15x12xf16> to memref<15x12xf16>
        memref.copy %alloc_18, %alloc_19 : memref<4x5xf32> to memref<4x5xf32>
        memref.store %cst_3, %73[%c11] : memref<12xf32>
        affine.store %false, %alloc_16[%c11, %c2] : memref<15x12xi1>
        %alloca_46 = memref.alloca() : memref<4x5xf32>
        %252 = arith.cmpf uge, %cst_3, %arg2 : f32
      } else {
        %250 = bufferization.clone %alloc_9 : memref<4x5xi1> to memref<4x5xi1>
        %cst_46 = arith.constant 1.000000e+00 : f32
        %cst_47 = arith.constant 0.000000e+00 : f32
        %251 = vector.transfer_read %74[%100, %71], %cst_47 : tensor<5x4xf32>, vector<f32>
        %252 = bufferization.clone %31 : memref<5x4xf32> to memref<5x4xf32>
        %253 = math.round %10 : tensor<5x4xf16>
        %254 = arith.remf %arg2, %cst_3 : f32
        %255 = memref.load %250[%c0, %c3] : memref<4x5xi1>
        %256 = bufferization.clone %83 : memref<12xf32> to memref<12xf32>
        %257 = arith.remf %32, %32 : f16
      }
      %243 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * -2, d1, -d3)>(%c9, %93, %100, %c8)
      %244 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %245 = bufferization.clone %57 : memref<5x4xi16> to memref<5x4xi16>
      %246 = math.rsqrt %0 : tensor<4x5xf32>
      %247 = scf.while (%arg3 = %alloc_10) : (memref<4x5xf16>) -> memref<4x5xf16> {
        %250 = math.expm1 %9 : tensor<5x4xf32>
        %cast_46 = tensor.cast %5 : tensor<12xf32> to tensor<?xf32>
        %251 = math.log2 %122 : tensor<12xf32>
        %252 = arith.mulf %arg2, %arg2 : f32
        %253 = arith.minf %32, %32 : f16
        %254 = arith.divsi %c-21208_i16, %c29252_i16 : i16
        %255 = index.sizeof
        %256 = math.log10 %10 : tensor<5x4xf16>
        scf.condition(%false_0) %arg3 : memref<4x5xf16>
      } do {
      ^bb0(%arg3: memref<4x5xf16>):
        %250 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
        %dest, %accumulated_value = vector.scan <minsi>, %134, %250 {inclusive = true, reduction_dim = 0 : i64} : vector<15x12xi32>, vector<12xi32>
        %inserted = tensor.insert %c-30111_i16 into %87[%c3, %c2] : tensor<5x5xi16>
        %alloca_46 = memref.alloca() : memref<5x4xi16>
        %251 = arith.maxui %false_1, %false_1 : i1
        %inserted_47 = tensor.insert %true_2 into %6[%c12, %c5] : tensor<15x12xi1>
        %252 = vector.broadcast %cst : f32 to vector<4x5xf32>
        %253 = vector.broadcast %false : i1 to vector<4x5xi1>
        %254 = vector.broadcast %c1_i32 : i32 to vector<4x5xi32>
        %255 = vector.gather %alloc_12[%c13] [%254], %253, %252 : memref<12xf32>, vector<4x5xi32>, vector<4x5xi1>, vector<4x5xf32> into vector<4x5xf32>
        %256 = vector.bitcast %95 : vector<1xi1> to vector<1xi1>
        %257 = vector.multi_reduction <add>, %53, %53 [] : vector<15x12xi1> to vector<15x12xi1>
        %258 = arith.maxui %c1859716050_i32, %c1859716050_i32 : i32
        %259 = arith.remui %c1859716050_i32, %115 : i32
        %260 = arith.minui %c-21208_i16, %c27303_i16 : i16
        %alloc_48 = memref.alloc() : memref<4x5xi1>
        %261 = vector.matrix_multiply %66, %66 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %alloc_49 = memref.alloc() : memref<20xf32>
        memref.tensor_store %collapsed, %alloc_49 : memref<20xf32>
        %262 = math.log1p %0 : tensor<4x5xf32>
        %alloca_50 = memref.alloca() : memref<12xf32>
        scf.yield %arg3 : memref<4x5xf16>
      }
      %248 = memref.atomic_rmw assign %c27303_i16, %245[%c0, %c0] : (i16, memref<5x4xi16>) -> i16
      %249 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1 + d3 + d1 floordiv 8, d1)>(%c11, %c0, %c15, %120)
      scf.condition(%true) %cst : f32
    } do {
    ^bb0(%arg2: f32):
      %243 = math.ctpop %true_2 : i1
      %244 = math.atan2 %102, %102 : tensor<15x12xf32>
      %245 = vector.create_mask %120, %78 : vector<4x5xi1>
      %246 = arith.divsi %c-21208_i16, %75 : i16
      %247 = math.powf %10, %10 : tensor<5x4xf16>
      %248 = vector.insertelement %true_2, %97[%c6 : index] : vector<12xi1>
      memref.alloca_scope  {
        %254 = math.cttz %13 : tensor<5x4xi16>
        %255 = arith.muli %c1859716050_i32, %115 : i32
        %from_elements_46 = tensor.from_elements %115, %c1_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %115, %c1859716050_i32 : tensor<12xi32>
        memref.tensor_store %17, %alloc_17 : memref<4x5xf32>
        %256 = vector.extract %134[3] : vector<15x12xi32>
        %from_elements_47 = tensor.from_elements %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64 : tensor<5x4xi64>
        memref.copy %31, %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        %257 = arith.addf %cst, %arg2 : f32
        %258 = vector.multi_reduction <maxui>, %79, %true [0] : vector<1xi1> to i1
        %259 = arith.muli %c29252_i16, %c-30111_i16 : i16
        memref.tensor_store %from_elements, %alloc_11 : memref<5x4xi16>
        %rank = tensor.rank %5 : tensor<12xf32>
        %260 = math.atan2 %cst, %cst : f32
        %c1_i32_48 = arith.constant 1 : i32
        %261 = vector.transfer_read %alloc_5[%c7, %28], %c1_i32_48 : memref<4x5xi32>, vector<i32>
        %262 = arith.shrui %c27303_i16, %c29252_i16 : i16
        %263 = arith.remf %cst, %arg2 : f32
        %264 = vector.transpose %79, [0] : vector<1xi1> to vector<1xi1>
        %cast_49 = tensor.cast %22 : tensor<i16> to tensor<i16>
        %265 = arith.muli %false, %true_2 : i1
        %266 = index.floordivs %70, %c14
        memref.copy %alloc_4, %alloc_15 : memref<15x12xf16> to memref<15x12xf16>
        %267 = vector.transpose %53, [1, 0] : vector<15x12xi1> to vector<12x15xi1>
        %268 = vector.insert %false, %79 [0] : i1 into vector<1xi1>
        %269 = arith.remf %32, %32 : f16
        %alloc_50 = memref.alloc() : memref<5x4xi32>
        %270 = math.round %5 : tensor<12xf32>
        %271 = math.atan2 %16, %16 : tensor<4x5xf32>
        %272 = math.ceil %17 : tensor<4x5xf32>
        %273 = arith.divui %c1_i32, %c1571650467_i32 : i32
        %274 = arith.divsi %c1859716050_i32, %c1859716050_i32 : i32
        %275 = index.maxu %38, %c11
        %276 = math.sqrt %16 : tensor<4x5xf32>
      }
      affine.store %cst_3, %alloc_12[%c14] : memref<12xf32>
      %249 = vector.extract %66[9] : vector<12xi1>
      memref.copy %alloc_11, %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
      %250 = affine.load %alloc_17[%c4, %c15] : memref<4x5xf32>
      scf.index_switch %71 
      case 1 {
        %254 = math.expm1 %10 : tensor<5x4xf16>
        %255 = math.log10 %0 : tensor<4x5xf32>
        %256 = vector.create_mask %c12, %67 : vector<15x12xi1>
        %257 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%118, %c14, %118)
        %258 = arith.cmpi ne, %false, %true : i1
        %259 = vector.broadcast %250 : f32 to vector<5x4xf32>
        %260 = vector.fma %259, %259, %259 : vector<5x4xf32>
        %261 = math.cttz %1 : tensor<4x5xi1>
        %262 = tensor.empty() : tensor<4x5xi32>
        vector.print %134 : vector<15x12xi32>
        %263 = arith.shli %true, %false_1 : i1
        %264 = math.atan2 %10, %10 : tensor<5x4xf16>
        %265 = index.ceildivs %c15, %257
        memref.tensor_store %9, %31 : memref<5x4xf32>
        %266 = math.tanh %15 : tensor<15x12xf16>
        %267 = arith.cmpi sle, %false_1, %true_2 : i1
        %268 = affine.max affine_map<(d0, d1, d2) -> ((d0 ceildiv 32) * 128)>(%23, %c5, %265)
        scf.yield
      }
      case 2 {
        %254 = math.atan2 %9, %9 : tensor<5x4xf32>
        %from_elements_46 = tensor.from_elements %false_0, %false_0, %false_1, %true, %false_0, %false_0, %true, %true_2, %true_2, %false, %false, %true, %false_1, %true, %false_0, %false_0, %false_0, %true, %true, %false_0 : tensor<4x5xi1>
        %255 = arith.shrui %false_0, %true : i1
        %256 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %257 = math.atan %17 : tensor<4x5xf32>
        %258 = arith.addi %true, %false_0 : i1
        %collapsed_47 = tensor.collapse_shape %11 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
        %from_elements_48 = tensor.from_elements %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64 : tensor<12xi64>
        %259 = math.cos %0 : tensor<4x5xf32>
        %260 = index.add %c7, %c9
        %261 = arith.divf %32, %32 : f16
        %262 = vector.shuffle %66, %79 [0, 1, 2, 3, 6, 8, 9, 11, 12] : vector<12xi1>, vector<1xi1>
        %263 = index.casts %false_0 : i1 to index
        %alloca_49 = memref.alloca() : memref<15x12xi1>
        %264 = vector.broadcast %c1571650467_i32 : i32 to vector<12x12xi32>
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %134, %134, %264 : vector<15x12xi32>, vector<15x12xi32> into vector<12x12xi32>
        %266 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
        %267 = vector.fma %266, %266, %266 : vector<5x4xf32>
        scf.yield
      }
      case 3 {
        %254 = arith.xori %c-21208_i16, %75 : i16
        %255 = vector.insertelement %c27303_i16, %110[%71 : index] : vector<1xi16>
        memref.copy %130, %alloc_17 : memref<4x5xf32> to memref<4x5xf32>
        %256 = index.divs %c4, %c10
        %collapsed_46 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
        %257 = arith.maxf %cst_3, %arg2 : f32
        %258 = math.cos %17 : tensor<4x5xf32>
        %259 = math.atan2 %10, %10 : tensor<5x4xf16>
        %260 = vector.matrix_multiply %95, %95 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %261 = arith.muli %c-30111_i16, %75 : i16
        %262 = arith.shrui %c1571650467_i32, %c1859716050_i32 : i32
        %rank = tensor.rank %reduced : tensor<5xi32>
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %79, %260, %true_2 : vector<1xi1>, vector<1xi1> into i1
        %264 = vector.broadcast %c-30111_i16 : i16 to vector<1x1xi16>
        %265 = vector.outerproduct %110, %110, %264 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
        %266 = arith.divsi %c1859716050_i32, %c1859716050_i32 : i32
        %267 = affine.load %alloc_9[%c13, %c6] : memref<4x5xi1>
        scf.yield
      }
      case 4 {
        memref.copy %130, %alloc_17 : memref<4x5xf32> to memref<4x5xf32>
        memref.store %arg2, %alloc_19[%c3, %c3] : memref<4x5xf32>
        %254 = arith.divui %false_0, %false_1 : i1
        %alloc_46 = memref.alloc() : memref<15x12xi64>
        memref.tensor_store %7, %alloc_46 : memref<15x12xi64>
        memref.copy %alloc_15, %41 : memref<15x12xf16> to memref<15x12xf16>
        %255 = vector.broadcast %arg2 : f32 to vector<12xf32>
        %256 = bufferization.to_memref %74 : memref<5x4xf32>
        %257 = math.powf %10, %10 : tensor<5x4xf16>
        %258 = bufferization.clone %alloc_7 : memref<15x12xf16> to memref<15x12xf16>
        %inserted = tensor.insert %arg2 into %collapsed_28[%c15] : tensor<20xf32>
        %259 = math.powf %cst_3, %cst : f32
        %260 = arith.cmpf ueq, %cst_3, %cst_3 : f32
        %261 = math.rsqrt %122 : tensor<12xf32>
        %262 = math.exp2 %17 : tensor<4x5xf32>
        %263 = arith.maxui %true, %false_1 : i1
        %264 = index.maxu %84, %36
        scf.yield
      }
      default {
        %254 = index.castu %115 : i32 to index
        %255 = tensor.empty() : tensor<12xf16>
        %256 = math.powf %arg2, %arg2 : f32
        %257 = math.log10 %cst : f32
        %258 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
        %dest, %accumulated_value = vector.scan <minsi>, %134, %258 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi32>, vector<12xi32>
        %259 = arith.xori %c1859716050_i32, %c1571650467_i32 : i32
        %260 = index.add %c2, %100
        %261 = arith.cmpf uge, %32, %32 : f16
        %262 = arith.mulf %arg2, %arg2 : f32
        %263 = vector.matrix_multiply %95, %97 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
        %264 = bufferization.clone %104 : memref<12xi16> to memref<12xi16>
        %265 = affine.max affine_map<(d0, d1) -> (-(d1 ceildiv 16), -(d1 mod 64), (d1 floordiv 4) * 16, d1)>(%c11, %71)
        %collapsed_46 = tensor.collapse_shape %2 [[0, 1]] : tensor<15x12xi32> into tensor<180xi32>
        %266 = index.maxu %c3, %c0
        %267 = arith.muli %c-30111_i16, %c27303_i16 : i16
        %268 = arith.cmpi ne, %c27303_i16, %c-30111_i16 : i16
      }
      %251 = vector.extract %66[7] : vector<12xi1>
      %252 = index.add %c10, %c15
      memref.tensor_store %17, %alloc_18 : memref<4x5xf32>
      %253 = index.castu %c12 : index to i32
      scf.yield %250 : f32
    }
    %alloc_34 = memref.alloc() : memref<12xi16>
    scf.execute_region {
      %243 = math.exp2 %16 : tensor<4x5xf32>
      %244 = math.atan2 %74, %74 : tensor<5x4xf32>
      %245 = vector.transpose %53, [0, 1] : vector<15x12xi1> to vector<15x12xi1>
      %246 = vector.create_mask %c13 : vector<12xi1>
      %247 = scf.if %true -> (i16) {
        %258 = vector.broadcast %true_2 : i1 to vector<15xi1>
        %dest, %accumulated_value = vector.scan <minsi>, %53, %258 {inclusive = true, reduction_dim = 1 : i64} : vector<15x12xi1>, vector<15xi1>
        %259 = affine.min affine_map<(d0, d1) -> (d1 floordiv 4 - 30)>(%36, %c7)
        %260 = arith.minui %c1571650467_i32, %c1859716050_i32 : i32
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %95, %95, %false : vector<1xi1>, vector<1xi1> into i1
        %from_elements_47 = tensor.from_elements %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3 : tensor<5x4xf32>
        %262 = vector.insertelement %false, %66[%c7 : index] : vector<12xi1>
        %inserted = tensor.insert %75 into %cast_31[%c0, %c0] : tensor<?x?xi16>
        %263 = index.castu %84 : index to i32
        scf.yield %c-29182_i16 : i16
      } else {
        %258 = vector.transpose %66, [0] : vector<12xi1> to vector<12xi1>
        %259 = memref.atomic_rmw mulf %cst, %116[%c1, %c3] : (f32, memref<4x5xf32>) -> f32
        %260 = math.atan2 %14, %14 : tensor<15x12xf32>
        %261 = arith.xori %c-30111_i16, %75 : i16
        memref.store %false_1, %138[%c3, %c1] : memref<4x5xi1>
        %262 = bufferization.clone %alloc_12 : memref<12xf32> to memref<12xf32>
        %alloc_47 = memref.alloc() : memref<12xi16>
        memref.copy %104, %alloc_47 : memref<12xi16> to memref<12xi16>
        %263 = math.atan2 %15, %15 : tensor<15x12xf16>
        scf.yield %c-21208_i16 : i16
      }
      %248 = math.ipowi %8, %8 : tensor<5x4xi32>
      %249 = bufferization.clone %alloc_10 : memref<4x5xf16> to memref<4x5xf16>
      %250 = memref.load %83[%c4] : memref<12xf32>
      %251 = affine.max affine_map<(d0, d1, d2) -> (d0 * 2)>(%78, %c10, %100)
      %252 = index.divs %71, %c3
      %from_elements_46 = tensor.from_elements %c1571650467_i32, %c1_i32, %115, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %115, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %115, %c1571650467_i32, %115, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %115, %c1571650467_i32, %c1_i32, %c1859716050_i32, %115, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1_i32, %115, %115, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %115, %c1_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %115, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %115, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %115, %c1_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %115, %115, %115, %115, %c1_i32, %115, %c1_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %115, %115, %c1859716050_i32, %c1571650467_i32, %115, %115, %c1571650467_i32, %c1859716050_i32, %115, %c1859716050_i32, %115, %c1859716050_i32, %c1_i32, %115, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %115, %c1_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %115, %c1571650467_i32, %115, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %115, %c1_i32 : tensor<15x12xi32>
      %253 = scf.while (%arg2 = %66) : (vector<12xi1>) -> vector<12xi1> {
        %258 = math.sqrt %10 : tensor<5x4xf16>
        %259 = math.atan2 %102, %14 : tensor<15x12xf32>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 2 + 132, d1 floordiv 2 - (-(d1 floordiv 2) - d0 + 32) + 132, d1, d0 * 512)>(%c7, %36, %118, %38)
        %261 = arith.muli %true_2, %true_2 : i1
        %c708456294_i64 = arith.constant 708456294 : i64
        %262 = index.floordivs %c11, %36
        %263 = index.divu %c11, %262
        %264 = math.tanh %10 : tensor<5x4xf16>
        scf.condition(%false_1) %97 : vector<12xi1>
      } do {
      ^bb0(%arg2: vector<12xi1>):
        %258 = index.add %84, %c12
        %259 = affine.max affine_map<(d0, d1) -> (d1 * 32)>(%120, %258)
        %alloca_47 = memref.alloca() : memref<15x12xi16>
        %260 = math.round %10 : tensor<5x4xf16>
        %alloca_48 = memref.alloca() : memref<12xf32>
        %261 = vector.extract_strided_slice %53 {offsets = [7], sizes = [8], strides = [1]} : vector<15x12xi1> to vector<8x12xi1>
        %262 = math.ceil %16 : tensor<4x5xf32>
        %263 = vector.insert %true, %66 [7] : i1 into vector<12xi1>
        %264 = tensor.empty() : tensor<12xf32>
        %265 = math.floor %74 : tensor<5x4xf32>
        %266 = arith.shrui %c29252_i16, %75 : i16
        memref.store %cst_3, %alloc_8[%c2, %c3] : memref<5x4xf32>
        vector.print %79 : vector<1xi1>
        %267 = vector.bitcast %79 : vector<1xi1> to vector<1xi1>
        %268 = arith.remf %cst_3, %cst_3 : f32
        %cast_49 = tensor.cast %1 : tensor<4x5xi1> to tensor<?x?xi1>
        scf.yield %97 : vector<12xi1>
      }
      %254 = vector.extract %97[7] : vector<12xi1>
      %255 = math.ipowi %6, %6 : tensor<15x12xi1>
      %256 = arith.shrui %c-21208_i16, %c-29182_i16 : i16
      %257 = arith.divsi %c536847134_i64, %c536847134_i64 : i64
      scf.yield
    }
    %141 = arith.andi %c29252_i16, %c-21208_i16 : i16
    %142 = bufferization.to_memref %8 : memref<5x4xi32>
    %143 = math.cos %9 : tensor<5x4xf32>
    %144 = math.atan2 %0, %0 : tensor<4x5xf32>
    %145 = arith.shli %c1571650467_i32, %c1571650467_i32 : i32
    %146 = vector.insert %66, %53 [0] : vector<12xi1> into vector<15x12xi1>
    %147 = arith.xori %c1559528702_i64, %c1559528702_i64 : i64
    %alloca_35 = memref.alloca() : memref<12xi64>
    %alloc_36 = memref.alloc() : memref<15x12xf32>
    %c1_i16 = arith.constant 1 : i16
    %c0_i16 = arith.constant 0 : i16
    %148 = vector.transfer_read %alloc_13[%c14, %c9], %c0_i16 : memref<5x4xi16>, vector<i16>
    %149 = math.round %10 : tensor<5x4xf16>
    %150 = scf.index_switch %38 -> vector<12xi1> 
    case 1 {
      %243 = math.ceil %9 : tensor<5x4xf32>
      %244 = arith.xori %c29252_i16, %75 : i16
      %245 = vector.broadcast %c29252_i16 : i16 to vector<5x4xi16>
      %246 = tensor.empty() : tensor<15x15x15xf32>
      %247 = tensor.empty() : tensor<15x15xf32>
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%247 : tensor<15x15xf32>) outs(%246 : tensor<15x15x15xf32>) {
      ^bb0(%in: f32, %out: f32):
        %257 = memref.load %73[%c0] : memref<12xf32>
        %258 = memref.load %alloc_13[%c2, %c0] : memref<5x4xi16>
        %259 = arith.shrui %true, %false_0 : i1
        %260 = math.exp %collapsed_28 : tensor<20xf32>
        %261 = index.divs %28, %23
        %262 = vector.bitcast %134 : vector<15x12xi32> to vector<15x12xi32>
        %263 = vector.broadcast %c1859716050_i32 : i32 to vector<4x5xi32>
        %264 = vector.broadcast %true_2 : i1 to vector<4x5xi1>
        %265 = vector.gather %alloc_5[%c3, %c14] [%263], %264, %263 : memref<4x5xi32>, vector<4x5xi32>, vector<4x5xi1>, vector<4x5xi32> into vector<4x5xi32>
        %266 = arith.xori %c1_i16, %c-21208_i16 : i16
        %267 = arith.muli %c-29182_i16, %c-29182_i16 : i16
        %268 = vector.broadcast %c1571650467_i32 : i32 to vector<12x12xi32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %134, %134, %268 : vector<15x12xi32>, vector<15x12xi32> into vector<12x12xi32>
        %270 = math.fma %in, %out, %cst : f32
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %271 = vector.transfer_read %alloc_15[%c4, %100], %cst_48 : memref<15x12xf16>, vector<f16>
        %rank = tensor.rank %18 : tensor<5xi32>
        %inserted = tensor.insert %out into %9[%c2, %c0] : tensor<5x4xf32>
        %272 = arith.remui %true_2, %false_1 : i1
        %273 = tensor.empty() : tensor<15x12xi32>
        %274 = arith.minui %c1_i16, %c-29182_i16 : i16
        %275 = arith.cmpf true, %out, %in : f32
        %276 = arith.shli %75, %c-29182_i16 : i16
        %277 = vector.broadcast %cst_47 : f16 to vector<5x4xf16>
        %278 = arith.shli %false_0, %false_1 : i1
        %279 = math.floor %122 : tensor<12xf32>
        %280 = affine.load %alloc_15[%c9, %c15] : memref<15x12xf16>
        %c0_i16_49 = arith.constant 0 : i16
        %281 = vector.transfer_read %from_elements[%c12, %c11], %c0_i16_49 : tensor<5x4xi16>, vector<5xi16>
        %282 = vector.extract %53[12] : vector<15x12xi1>
        %283 = arith.addf %cst_47, %32 : f16
        %284 = arith.remsi %c-30111_i16, %c-21208_i16 : i16
        %285 = math.fpowi %14, %2 : tensor<15x12xf32>, tensor<15x12xi32>
        memref.copy %alloc_6, %alloc_12 : memref<12xf32> to memref<12xf32>
        %286 = math.cttz %c27303_i16 : i16
        %287 = vector.create_mask %c10, %c12 : vector<4x5xi1>
        %288 = math.atan2 %out, %cst : f32
        linalg.yield %in : f32
      } -> tensor<15x15x15xf32>
      %generated = tensor.generate %118, %38 {
      ^bb0(%arg2: index, %arg3: index):
        %257 = index.floordivs %100, %c12
        memref.copy %73, %alloc_12 : memref<12xf32> to memref<12xf32>
        %258 = math.fma %74, %9, %74 : tensor<5x4xf32>
        %259 = vector.broadcast %115 : i32 to vector<15xi32>
        %dest, %accumulated_value = vector.scan <add>, %134, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<15x12xi32>, vector<15xi32>
        tensor.yield %115 : i32
      } : tensor<?x?xi32>
      %generated_46 = tensor.generate %28 {
      ^bb0(%arg2: index):
        %257 = bufferization.clone %142 : memref<5x4xi32> to memref<5x4xi32>
        %258 = math.log10 %14 : tensor<15x12xf32>
        %259 = vector.broadcast %c1859716050_i32 : i32 to vector<12x12xi32>
        %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %134, %134, %259 : vector<15x12xi32>, vector<15x12xi32> into vector<12x12xi32>
        %261 = arith.divsi %c-21208_i16, %c27303_i16 : i16
        tensor.yield %32 : f16
      } : tensor<?xf16>
      %249 = math.floor %14 : tensor<15x12xf32>
      %250 = arith.minsi %115, %c1859716050_i32 : i32
      %251 = arith.shrui %false_1, %false_0 : i1
      %252 = math.rsqrt %17 : tensor<4x5xf32>
      %253 = math.log1p %102 : tensor<15x12xf32>
      %254 = math.log1p %32 : f16
      scf.if %false_0 {
        %257 = arith.cmpf ule, %cst, %cst : f32
        %258 = tensor.empty() : tensor<5x5xf32>
        %259 = linalg.matmul ins(%9, %16 : tensor<5x4xf32>, tensor<4x5xf32>) outs(%258 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %260 = arith.shli %true, %false_0 : i1
        %261 = math.tanh %9 : tensor<5x4xf32>
        %262 = math.exp2 %74 : tensor<5x4xf32>
        memref.assume_alignment %alloc_17, 16 : memref<4x5xf32>
        %263 = vector.matrix_multiply %110, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi16>, vector<5xi16>) -> vector<5xi16>
        %264 = math.absi %12 : tensor<15x12xi32>
      }
      %255 = arith.divf %32, %32 : f16
      %256 = math.powf %collapsed, %collapsed : tensor<20xf32>
      memref.copy %alloc_11, %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
      scf.yield %66 : vector<12xi1>
    }
    case 2 {
      %243 = math.fma %cst, %cst_3, %cst_3 : f32
      %244 = bufferization.clone %41 : memref<15x12xf16> to memref<15x12xf16>
      %245 = arith.cmpi ult, %c536847134_i64, %c536847134_i64 : i64
      %246 = math.powf %74, %9 : tensor<5x4xf32>
      %247 = memref.atomic_rmw minf %32, %41[%c0, %c7] : (f16, memref<15x12xf16>) -> f16
      %alloca_46 = memref.alloca() : memref<12xi1>
      %248 = arith.muli %115, %c1_i32 : i32
      %249 = arith.mulf %cst, %cst_3 : f32
      %250 = arith.addi %false, %false_1 : i1
      %251 = vector.splat %78 : vector<5x4xindex>
      %252 = memref.load %alloc_9[%c2, %c2] : memref<4x5xi1>
      %253 = vector.bitcast %19 : vector<5xi16> to vector<5xf16>
      scf.index_switch %c7 
      case 1 {
        %256 = memref.load %alloc_19[%c0, %c1] : memref<4x5xf32>
        %257 = memref.load %73[%c11] : memref<12xf32>
        %258 = math.cttz %21 : tensor<i16>
        %259 = math.cos %9 : tensor<5x4xf32>
        %alloc_47 = memref.alloc() : memref<4x5xi16>
        memref.tensor_store %4, %alloc_47 : memref<4x5xi16>
        %260 = arith.ori %c1859716050_i32, %115 : i32
        %261 = memref.atomic_rmw minf %cst_3, %130[%c1, %c2] : (f32, memref<4x5xf32>) -> f32
        %262 = index.floordivs %c10, %c1
        %263 = arith.andi %c1559528702_i64, %c1559528702_i64 : i64
        affine.store %32, %41[%c12, %c11] : memref<15x12xf16>
        affine.store %c27303_i16, %alloc_14[%c3, %c5] : memref<5x4xi16>
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c1_i16 : vector<5xi16>, vector<5xi16> into i16
        %265 = memref.load %alloc[%c4, %c2] : memref<5x4xi32>
        %266 = math.floor %0 : tensor<4x5xf32>
        %267 = math.expm1 %102 : tensor<15x12xf32>
        %268 = arith.minf %cst_3, %cst_3 : f32
        scf.yield
      }
      default {
        vector.print %97 : vector<12xi1>
        %256 = math.fma %14, %14, %102 : tensor<15x12xf32>
        %inserted = tensor.insert %c1859716050_i32 into %2[%c9, %c0] : tensor<15x12xi32>
        %257 = vector.multi_reduction <xor>, %53, %53 [] : vector<15x12xi1> to vector<15x12xi1>
        %258 = arith.shli %c1859716050_i32, %c1571650467_i32 : i32
        %cast_47 = tensor.cast %14 : tensor<15x12xf32> to tensor<?x?xf32>
        %259 = arith.mulf %32, %32 : f16
        %from_elements_48 = tensor.from_elements %false_0, %true, %true, %false_0, %false_1, %true_2, %true_2, %true, %true, %false_1, %true, %false_0, %false_0, %false, %false_0, %false_0, %false, %false_0, %true_2, %true : tensor<5x4xi1>
        %260 = bufferization.clone %alloc_7 : memref<15x12xf16> to memref<15x12xf16>
        %261 = math.tanh %10 : tensor<5x4xf16>
        %262 = math.cos %16 : tensor<4x5xf32>
        %263 = math.log1p %cst : f32
        %264 = index.castu %false : i1 to index
        %265 = vector.multi_reduction <maxsi>, %66, %97 [] : vector<12xi1> to vector<12xi1>
        %266 = arith.mulf %32, %32 : f16
        memref.tensor_store %17, %alloc_17 : memref<4x5xf32>
      }
      memref.tensor_store %5, %alloc_6 : memref<12xf32>
      %254 = affine.min affine_map<(d0, d1, d2) -> (d2 * 32 + d1)>(%c13, %c1, %36)
      %255 = arith.xori %c-29182_i16, %c-29182_i16 : i16
      scf.yield %97 : vector<12xi1>
    }
    default {
      %243 = tensor.empty() : tensor<12xf32>
      %mapped_46 = linalg.map ins(%alloc_6 : memref<12xf32>) outs(%243 : tensor<12xf32>)
        (%in: f32) {
          %256 = math.powf %10, %10 : tensor<5x4xf16>
          %257 = arith.minui %c-21208_i16, %c27303_i16 : i16
          %258 = math.exp2 %17 : tensor<4x5xf32>
          affine.store %in, %alloc_6[%c3] : memref<12xf32>
          %alloca_49 = memref.alloca() : memref<4x5xi16>
          %259 = arith.cmpi ult, %c-21208_i16, %75 : i16
          %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d1 ceildiv 2)>(%70, %c2, %c7, %120)
          %261 = arith.maxui %c1859716050_i32, %c1_i32 : i32
          %262 = math.expm1 %32 : f16
          %263 = index.ceildivs %84, %93
          %264 = math.atan %cst_3 : f32
          %from_elements_50 = tensor.from_elements %cst, %cst, %cst_3, %in, %in, %in, %cst, %cst_3, %in, %cst_3, %in, %cst_3, %cst, %cst_3, %cst, %cst_3, %in, %cst_3, %in, %in : tensor<4x5xf32>
          %265 = index.casts %75 : i16 to index
          %from_elements_51 = tensor.from_elements %75, %c-21208_i16, %75, %75, %c-21208_i16, %c29252_i16, %c27303_i16, %c-30111_i16, %c-29182_i16, %c-30111_i16, %75, %c29252_i16 : tensor<12xi16>
          %266 = vector.insertelement %true, %97[%265 : index] : vector<12xi1>
          %267 = arith.maxui %c1_i32, %115 : i32
          %268 = arith.maxf %cst_3, %cst : f32
          %269 = math.rsqrt %cst_3 : f32
          %270 = arith.minf %32, %32 : f16
          %271 = math.floor %10 : tensor<5x4xf16>
          memref.assume_alignment %41, 2 : memref<15x12xf16>
          %272 = vector.broadcast %false : i1 to vector<15xi1>
          %273 = vector.multi_reduction <mul>, %53, %272 [1] : vector<15x12xi1> to vector<15xi1>
          %274 = index.casts %75 : i16 to index
          %275 = memref.load %83[%c10] : memref<12xf32>
          %276 = vector.broadcast %true : i1 to vector<12xi1>
          %277 = vector.broadcast %c-21208_i16 : i16 to vector<5x4xi16>
          %278 = math.expm1 %collapsed : tensor<20xf32>
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %c-21208_i16 : vector<5xi16>, vector<5xi16> into i16
          %280 = vector.matrix_multiply %276, %272 {lhs_columns = 3 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<12xi1>, vector<15xi1>) -> vector<20xi1>
          %281 = vector.extract %79[0] : vector<1xi1>
          %dest, %accumulated_value = vector.scan <or>, %277, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<5x4xi16>, vector<5xi16>
          %282 = vector.broadcast %c8 : index to vector<4xindex>
          %283 = vector.broadcast %false : i1 to vector<4xi1>
          %284 = vector.broadcast %32 : f16 to vector<4xf16>
          vector.scatter %alloc_10[%c1, %c3] [%282], %283, %284 : memref<4x5xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %cst_52 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_52 : f32
        }
      %244 = memref.alloca_scope  -> (i16) {
        %256 = vector.broadcast %100 : index to vector<4xindex>
        %257 = vector.broadcast %true_2 : i1 to vector<4xi1>
        vector.scatter %alloc_9[%c0, %c3] [%256], %257, %257 : memref<4x5xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        memref.copy %142, %alloc : memref<5x4xi32> to memref<5x4xi32>
        %258 = memref.atomic_rmw mulf %32, %alloc_15[%c5, %c6] : (f16, memref<15x12xf16>) -> f16
        %alloc_49 = memref.alloc() : memref<15x12xi1>
        memref.copy %alloc_16, %alloc_49 : memref<15x12xi1> to memref<15x12xi1>
        %259 = vector.broadcast %c-21208_i16 : i16 to vector<1x1xi16>
        %260 = vector.outerproduct %110, %110, %259 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
        %alloca_50 = memref.alloca() : memref<12xf16>
        %261 = vector.matrix_multiply %110, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi16>, vector<5xi16>) -> vector<5xi16>
        affine.store %c-21208_i16, %104[%c13] : memref<12xi16>
        %262 = arith.remf %cst_3, %cst_3 : f32
        %263 = vector.create_mask %c7, %c2 : vector<5x4xi1>
        %264 = math.round %5 : tensor<12xf32>
        %265 = arith.cmpi sge, %c536847134_i64, %c536847134_i64 : i64
        %266 = vector.broadcast %false_1 : i1 to vector<4xi1>
        %dest, %accumulated_value = vector.scan <mul>, %263, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xi1>, vector<4xi1>
        %267 = arith.mulf %cst_3, %cst : f32
        %268 = math.sqrt %74 : tensor<5x4xf32>
        %inserted_51 = tensor.insert %true into %6[%c1, %c7] : tensor<15x12xi1>
        %alloc_52 = memref.alloc() : memref<15x12xf16>
        bufferization.dealloc_tensor %7 : tensor<15x12xi64>
        %269 = math.round %243 : tensor<12xf32>
        %270 = arith.cmpf false, %cst_3, %cst : f32
        %271 = math.atan %0 : tensor<4x5xf32>
        %272 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %273 = vector.broadcast %c1859716050_i32 : i32 to vector<12xi32>
        %274 = vector.multi_reduction <or>, %134, %273 [0] : vector<15x12xi32> to vector<12xi32>
        %275 = arith.muli %false_1, %false_0 : i1
        affine.store %c1_i32, %alloc_5[%c13, %c12] : memref<4x5xi32>
        %from_elements_53 = tensor.from_elements %false_0, %true_2, %false_0, %true, %false, %true_2, %false_1, %true_2, %true_2, %true_2, %true, %false_0 : tensor<12xi1>
        %alloca_54 = memref.alloca() : memref<4x5xi64>
        %276 = arith.shli %c1859716050_i32, %c1859716050_i32 : i32
        %false_55 = index.bool.constant false
        %277 = math.log1p %10 : tensor<5x4xf16>
        %278 = arith.shrui %c1_i32, %c1571650467_i32 : i32
        vector.print %110 : vector<1xi16>
        memref.alloca_scope.return %c1_i16 : i16
      }
      %alloc_47 = memref.alloc() : memref<12xf16>
      %245 = vector.create_mask %c10 : vector<12xi1>
      %246 = arith.divf %cst_3, %cst_3 : f32
      %247 = index.floordivs %c7, %93
      %248 = arith.divsi %c-29182_i16, %c-30111_i16 : i16
      %249 = tensor.empty() : tensor<15x15x15xf32>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%249 : tensor<15x15x15xf32>) {
      ^bb0(%out: f32):
        %256 = memref.atomic_rmw mulf %out, %31[%c3, %c1] : (f32, memref<5x4xf32>) -> f32
        affine.store %75, %alloc_13[%c12, %c5] : memref<5x4xi16>
        %257 = bufferization.to_tensor %alloc_16 : memref<15x12xi1>
        %258 = arith.divsi %c1_i16, %244 : i16
        %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %79, %95, %false_1 : vector<1xi1>, vector<1xi1> into i1
        %260 = math.cttz %c-21208_i16 : i16
        %261 = arith.addf %32, %32 : f16
        %262 = vector.extract %134[3] : vector<15x12xi32>
        %263 = index.sizeof
        %264 = arith.maxsi %c27303_i16, %c27303_i16 : i16
        %265 = arith.muli %c29252_i16, %c29252_i16 : i16
        %266 = arith.minf %cst_3, %cst_3 : f32
        %collapsed_49 = tensor.collapse_shape %15 [[0, 1]] : tensor<15x12xf16> into tensor<180xf16>
        %267 = arith.divui %false_0, %false_1 : i1
        %268 = index.castu %false_0 : i1 to index
        %269 = math.round %9 : tensor<5x4xf32>
        %270 = index.mul %c12, %71
        %271 = math.exp2 %collapsed_49 : tensor<180xf16>
        %272 = math.cos %10 : tensor<5x4xf16>
        %273 = vector.insertelement %c-21208_i16, %110[%84 : index] : vector<1xi16>
        %274 = vector.insert %false, %95 [0] : i1 into vector<1xi1>
        %275 = math.absi %11 : tensor<5x4xi16>
        affine.store %32, %alloc_10[%c7, %c8] : memref<4x5xf16>
        %alloc_50 = memref.alloc() : memref<5x4xf16>
        %276 = arith.xori %c29252_i16, %c1_i16 : i16
        %277 = vector.broadcast %c1859716050_i32 : i32 to vector<12x12xi32>
        %278 = vector.outerproduct %262, %262, %277 {kind = #vector.kind<add>} : vector<12xi32>, vector<12xi32>
        %279 = arith.ori %true, %true_2 : i1
        %280 = tensor.empty() : tensor<15x12xi32>
        %281 = memref.load %alloc_12[%c6] : memref<12xf32>
        %282 = arith.andi %c1571650467_i32, %c1571650467_i32 : i32
        %283 = vector.insert %c1_i16, %19 [1] : i16 into vector<5xi16>
        %284 = arith.muli %false_1, %false : i1
        linalg.yield %out : f32
      } -> tensor<15x15x15xf32>
      %251 = math.exp2 %0 : tensor<4x5xf32>
      %252 = memref.atomic_rmw maxu %c27303_i16, %alloc_14[%c1, %c1] : (i16, memref<5x4xi16>) -> i16
      %253 = vector.create_mask %38, %c6 : vector<15x12xi1>
      %254 = bufferization.to_memref %1 : memref<4x5xi1>
      %collapsed_48 = tensor.collapse_shape %7 [[0, 1]] : tensor<15x12xi64> into tensor<180xi64>
      %inserted = tensor.insert %c1859716050_i32 into %2[%c6, %c9] : tensor<15x12xi32>
      affine.store %cst, %31[%c2, %c7] : memref<5x4xf32>
      %255 = index.mul %71, %c10
      scf.yield %66 : vector<12xi1>
    }
    %151 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 32)>(%c11, %70, %84)
    memref.tensor_store %3, %104 : memref<12xi16>
    %152 = bufferization.clone %alloc_4 : memref<15x12xf16> to memref<15x12xf16>
    %153 = math.fma %0, %17, %17 : tensor<4x5xf32>
    %154 = math.atan %122 : tensor<12xf32>
    %155 = vector.broadcast %c1859716050_i32 : i32 to vector<5x4xi32>
    %156 = memref.load %alloc_10[%c1, %c0] : memref<4x5xf16>
    %false_37 = arith.constant false
    %157 = vector.transfer_read %1[%38, %c3], %false_37 : tensor<4x5xi1>, vector<i1>
    %158 = index.divs %67, %c0
    %159 = arith.divui %c1571650467_i32, %115 : i32
    scf.execute_region {
      scf.index_switch %93 
      case 1 {
        %255 = math.ctpop %6 : tensor<15x12xi1>
        %256 = index.mul %23, %70
        %257 = bufferization.to_tensor %alloc_7 : memref<15x12xf16>
        %258 = vector.create_mask %c4, %36 : vector<4x5xi1>
        %259 = arith.maxui %c536847134_i64, %c536847134_i64 : i64
        %260 = vector.reduction <maxui>, %110 : vector<1xi16> into i16
        affine.store %cst, %alloc_8[%c6, %c5] : memref<5x4xf32>
        %261 = bufferization.clone %57 : memref<5x4xi16> to memref<5x4xi16>
        %262 = vector.broadcast %c1859716050_i32 : i32 to vector<5xi32>
        %dest, %accumulated_value = vector.scan <minui>, %155, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<5x4xi32>, vector<5xi32>
        %263 = math.tanh %102 : tensor<15x12xf32>
        %alloca_46 = memref.alloca() : memref<5x4xf32>
        %264 = vector.flat_transpose %66 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %265 = index.castu %70 : index to i32
        %266 = affine.apply affine_map<(d0, d1, d2, d3) -> ((-d1) floordiv 32)>(%c11, %c0, %c7, %c2)
        %267 = math.atan2 %collapsed_28, %collapsed : tensor<20xf32>
        %268 = arith.shrui %false_1, %false_1 : i1
        scf.yield
      }
      case 2 {
        %255 = index.ceildivs %c8, %78
        %256 = arith.cmpi sle, %false, %false_0 : i1
        %257 = math.ctpop %c27303_i16 : i16
        %258 = arith.divsi %c-30111_i16, %c1_i16 : i16
        %259 = arith.shrui %c-30111_i16, %75 : i16
        %260 = arith.remsi %c27303_i16, %c-30111_i16 : i16
        %261 = math.log10 %collapsed_28 : tensor<20xf32>
        %262 = arith.muli %c1571650467_i32, %c1859716050_i32 : i32
        %263 = tensor.empty() : tensor<4x4xf32>
        %264 = linalg.matmul ins(%16, %9 : tensor<4x5xf32>, tensor<5x4xf32>) outs(%263 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %265 = bufferization.clone %alloc_8 : memref<5x4xf32> to memref<5x4xf32>
        %266 = vector.broadcast %c7 : index to vector<5xindex>
        %267 = vector.broadcast %true : i1 to vector<5xi1>
        vector.scatter %alloc_11[%c0, %c1] [%266], %267, %19 : memref<5x4xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %268 = vector.transpose %95, [0] : vector<1xi1> to vector<1xi1>
        %cst_46 = arith.constant 1.000000e+00 : f32
        %cst_47 = arith.constant 0.000000e+00 : f32
        %269 = vector.transfer_read %alloc_18[%38, %151], %cst_47 : memref<4x5xf32>, vector<f32>
        %270 = vector.multi_reduction <add>, %19, %19 [] : vector<5xi16> to vector<5xi16>
        %271 = math.log1p %17 : tensor<4x5xf32>
        %272 = math.tanh %15 : tensor<15x12xf16>
        scf.yield
      }
      case 3 {
        %255 = index.floordivs %78, %67
        %alloca_46 = memref.alloca() : memref<5x4xi1>
        %256 = memref.atomic_rmw assign %cst, %alloc_6[%c7] : (f32, memref<12xf32>) -> f32
        %cst_47 = arith.constant 1.000000e+00 : f32
        %cst_48 = arith.constant 0.000000e+00 : f32
        %257 = vector.transfer_read %alloc_17[%c14, %158], %cst_48 : memref<4x5xf32>, vector<f32>
        %258 = arith.maxui %c1859716050_i32, %c1_i32 : i32
        affine.store %cst_3, %31[%c7, %c5] : memref<5x4xf32>
        %259 = arith.minui %115, %c1859716050_i32 : i32
        %260 = arith.shrui %false_0, %false_1 : i1
        %261 = arith.xori %false_0, %false_1 : i1
        %262 = arith.cmpi slt, %115, %115 : i32
        %263 = vector.bitcast %155 : vector<5x4xi32> to vector<5x4xi32>
        %264 = index.divs %255, %151
        %265 = arith.cmpf ule, %cst_47, %cst_47 : f32
        %266 = math.sqrt %collapsed : tensor<20xf32>
        %267 = arith.minsi %c1859716050_i32, %c1_i32 : i32
        %alloca_49 = memref.alloca() : memref<4x5xi64>
        scf.yield
      }
      case 4 {
        %255 = index.ceildivs %23, %67
        %256 = vector.transpose %155, [0, 1] : vector<5x4xi32> to vector<5x4xi32>
        %257 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %alloca_46 = memref.alloca() : memref<4x5xf32>
        %258 = vector.splat %false_0 : vector<15x12xi1>
        %259 = vector.broadcast %115 : i32 to vector<5x4xi32>
        %260 = arith.divui %c1_i32, %115 : i32
        %261 = memref.atomic_rmw assign %c-21208_i16, %alloc_13[%c0, %c0] : (i16, memref<5x4xi16>) -> i16
        affine.store %c1_i32, %alloc_5[%c4, %c9] : memref<4x5xi32>
        %262 = math.atan2 %32, %32 : f16
        %263 = math.rsqrt %74 : tensor<5x4xf32>
        %264 = math.round %17 : tensor<4x5xf32>
        %265 = vector.broadcast %71 : index to vector<4xindex>
        %266 = vector.broadcast %true_2 : i1 to vector<4xi1>
        vector.scatter %alloc_16[%c6, %c11] [%265], %266, %266 : memref<15x12xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %267 = arith.divui %true, %false_0 : i1
        %268 = math.atan2 %32, %32 : f16
        %269 = bufferization.clone %138 : memref<4x5xi1> to memref<4x5xi1>
        scf.yield
      }
      default {
        %255 = arith.cmpi sgt, %c1_i32, %c1859716050_i32 : i32
        %256 = vector.insert %false_37, %79 [0] : i1 into vector<1xi1>
        %257 = affine.min affine_map<(d0, d1, d2) -> ((d2 - d1 floordiv 16) mod 4)>(%93, %c5, %158)
        %258 = bufferization.to_memref %9 : memref<5x4xf32>
        %collapsed_46 = tensor.collapse_shape %0 [[0, 1]] : tensor<4x5xf32> into tensor<20xf32>
        %259 = affine.load %alloc_4[%c12, %c6] : memref<15x12xf16>
        %260 = tensor.empty() : tensor<20xi32>
        %261 = math.fpowi %collapsed_28, %260 : tensor<20xf32>, tensor<20xi32>
        %262 = arith.minsi %false_0, %true_2 : i1
        %263 = math.cttz %c1571650467_i32 : i32
        %264 = arith.shli %c-30111_i16, %c-29182_i16 : i16
        %265 = memref.atomic_rmw mulf %cst_3, %alloc_18[%c2, %c1] : (f32, memref<4x5xf32>) -> f32
        %266 = math.floor %15 : tensor<15x12xf16>
        %267 = vector.multi_reduction <mul>, %66, %97 [] : vector<12xi1> to vector<12xi1>
        affine.store %false_0, %alloc_16[%c10, %c11] : memref<15x12xi1>
        bufferization.dealloc_tensor %10 : tensor<5x4xf16>
        %inserted = tensor.insert %cst into %14[%c3, %c3] : tensor<15x12xf32>
      }
      %generated = tensor.generate %93, %70 {
      ^bb0(%arg2: index, %arg3: index):
        %255 = math.tanh %32 : f16
        %256 = index.castu %c1859716050_i32 : i32 to index
        %257 = index.mul %118, %c9
        %258 = vector.insertelement %false_0, %97[%71 : index] : vector<12xi1>
        tensor.yield %32 : f16
      } : tensor<?x?xf16>
      scf.index_switch %23 
      case 1 {
        %255 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %256 = math.log10 %74 : tensor<5x4xf32>
        %257 = tensor.empty() : tensor<5x4xi32>
        %258 = index.mul %c12, %c4
        %259 = vector.create_mask %c8, %c10 : vector<15x12xi1>
        %260 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %261 = arith.maxf %32, %32 : f16
        %262 = math.log1p %10 : tensor<5x4xf16>
        bufferization.dealloc_tensor %10 : tensor<5x4xf16>
        %true_46 = index.bool.constant true
        %263 = vector.create_mask %118, %c3 : vector<5x4xi1>
        %264 = arith.andi %c536847134_i64, %c1559528702_i64 : i64
        %265 = arith.maxui %c1559528702_i64, %c536847134_i64 : i64
        %266 = math.floor %5 : tensor<12xf32>
        %267 = math.round %15 : tensor<15x12xf16>
        %268 = math.rsqrt %0 : tensor<4x5xf32>
        scf.yield
      }
      default {
        %255 = vector.broadcast %c1_i32 : i32 to vector<4x5xi32>
        %256 = vector.bitcast %53 : vector<15x12xi1> to vector<15x12xi1>
        %257 = index.maxu %28, %93
        %258 = arith.addi %false, %false : i1
        %259 = memref.atomic_rmw addf %32, %alloc_10[%c1, %c2] : (f16, memref<4x5xf16>) -> f16
        %260 = vector.broadcast %cst : f32 to vector<5x4xf32>
        %261 = vector.broadcast %false_37 : i1 to vector<5x4xi1>
        %262 = vector.gather %alloc_19[%c7, %c6] [%155], %261, %260 : memref<4x5xf32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xf32> into vector<5x4xf32>
        %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
        %263 = vector.multi_reduction <maxui>, %66, %true_2 [0] : vector<12xi1> to i1
        %264 = bufferization.to_memref %12 : memref<15x12xi32>
        %265 = vector.broadcast %c536847134_i64 : i64 to vector<15x12xi64>
        %266 = arith.minf %cst, %cst_3 : f32
        %267 = arith.minf %32, %32 : f16
        %268 = vector.broadcast %c536847134_i64 : i64 to vector<12xi64>
        %269 = vector.insert %268, %265 [3] : vector<12xi64> into vector<15x12xi64>
        %270 = memref.load %57[%c4, %c3] : memref<5x4xi16>
        %alloca_47 = memref.alloca() : memref<5x4xi1>
        %271 = math.atan2 %cst_3, %cst_3 : f32
      }
      %243 = memref.load %alloc_14[%c0, %c3] : memref<5x4xi16>
      %244 = math.atan2 %cst, %cst : f32
      %245 = arith.andi %false_1, %true_2 : i1
      %246 = memref.atomic_rmw minu %c29252_i16, %alloc_13[%c4, %c0] : (i16, memref<5x4xi16>) -> i16
      affine.store %32, %alloc_7[%c7, %c1] : memref<15x12xf16>
      %247 = scf.while (%arg2 = %false_37) : (i1) -> i1 {
        %255 = math.floor %0 : tensor<4x5xf32>
        %256 = arith.divsi %c-30111_i16, %c29252_i16 : i16
        %257 = math.rsqrt %0 : tensor<4x5xf32>
        %false_46 = arith.constant false
        %258 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %259 = affine.load %152[%c12, %c12] : memref<15x12xf16>
        %260 = memref.load %116[%c0, %c3] : memref<4x5xf32>
        %261 = bufferization.clone %83 : memref<12xf32> to memref<12xf32>
        scf.condition(%false_37) %arg2 : i1
      } do {
      ^bb0(%arg2: i1):
        %255 = arith.divui %c29252_i16, %c-21208_i16 : i16
        %256 = arith.shli %true_2, %true_2 : i1
        %cst_46 = arith.constant 2.12663974E+9 : f32
        %257 = math.rsqrt %9 : tensor<5x4xf32>
        %258 = math.atan2 %122, %122 : tensor<12xf32>
        %259 = arith.divui %c1571650467_i32, %c1571650467_i32 : i32
        %260 = vector.broadcast %c1571650467_i32 : i32 to vector<15xi32>
        %dest, %accumulated_value = vector.scan <and>, %134, %260 {inclusive = true, reduction_dim = 1 : i64} : vector<15x12xi32>, vector<15xi32>
        %261 = index.castu %true_2 : i1 to index
        %262 = affine.min affine_map<(d0, d1) -> (d0 mod 8, d1 - 16)>(%38, %c10)
        %alloc_47 = memref.alloc() : memref<5xi32>
        memref.tensor_store %30, %alloc_47 : memref<5xi32>
        %263 = math.absf %0 : tensor<4x5xf32>
        %264 = vector.multi_reduction <or>, %53, %53 [] : vector<15x12xi1> to vector<15x12xi1>
        %265 = arith.xori %c1571650467_i32, %115 : i32
        %266 = vector.multi_reduction <minui>, %134, %134 [] : vector<15x12xi32> to vector<15x12xi32>
        %267 = math.round %17 : tensor<4x5xf32>
        %268 = affine.min affine_map<(d0, d1, d2) -> ((d2 + 128) * 64)>(%c0, %c2, %c4)
        scf.yield %false_37 : i1
      }
      %248 = index.maxu %67, %100
      %249 = affine.for %arg2 = 0 to 83 iter_args(%arg3 = %c10) -> (index) {
        affine.yield %28 : index
      }
      %250 = arith.cmpi uge, %c1571650467_i32, %115 : i32
      %251 = affine.load %alloc[%c11, %c6] : memref<5x4xi32>
      %252 = math.rsqrt %cst_3 : f32
      %253 = vector.create_mask %c1, %93 : vector<5x4xi1>
      %254 = arith.minsi %true_2, %true : i1
      scf.yield
    }
    %true_38 = arith.constant true
    %160 = vector.transfer_read %1[%151, %c2], %true_38 : tensor<4x5xi1>, vector<5xi1>
    %161 = arith.cmpf ogt, %cst, %cst : f32
    %162 = bufferization.clone %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
    memref.copy %alloc_7, %41 : memref<15x12xf16> to memref<15x12xf16>
    %163 = math.log2 %10 : tensor<5x4xf16>
    %from_elements_39 = tensor.from_elements %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64 : tensor<15x12xi64>
    %164 = math.atan2 %5, %5 : tensor<12xf32>
    %165 = math.round %cst : f32
    %cast_40 = tensor.cast %1 : tensor<4x5xi1> to tensor<?x?xi1>
    %166 = affine.apply affine_map<(d0, d1) -> (-(d0 mod 16))>(%c9, %c7)
    %167 = index.mul %93, %c5
    %168 = scf.execute_region -> vector<5x4xi64> {
      %true_46 = arith.constant true
      %243 = vector.transfer_read %alloc_9[%78, %71], %true_46 : memref<4x5xi1>, vector<i1>
      %244 = tensor.empty() : tensor<5x4xi16>
      %mapped_47 = linalg.map ins(%114, %alloc_14, %alloc_14 : memref<5x4xi16>, memref<5x4xi16>, memref<5x4xi16>) outs(%244 : tensor<5x4xi16>)
        (%in: i16, %in_51: i16, %in_52: i16) {
          %257 = memref.load %alloc_10[%c2, %c3] : memref<4x5xf16>
          %inserted = tensor.insert %false_37 into %6[%c7, %c6] : tensor<15x12xi1>
          %258 = arith.andi %in_52, %75 : i16
          %259 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
          %260 = vector.transpose %66, [0] : vector<12xi1> to vector<12xi1>
          bufferization.dealloc_tensor %cast_29 : tensor<?x?xi16>
          %261 = vector.insertelement %true_46, %95[%166 : index] : vector<1xi1>
          %262 = vector.extract %79[0] : vector<1xi1>
          %263 = arith.xori %c-21208_i16, %c29252_i16 : i16
          %264 = index.sizeof
          %265 = arith.mulf %32, %32 : f16
          %266 = math.expm1 %10 : tensor<5x4xf16>
          %267 = math.tanh %10 : tensor<5x4xf16>
          %268 = bufferization.to_memref %3 : memref<12xi16>
          %269 = arith.shrui %c29252_i16, %c-21208_i16 : i16
          %270 = arith.minf %cst_3, %cst_3 : f32
          %alloc_53 = memref.alloc() : memref<15x12xi32>
          memref.tensor_store %12, %alloc_53 : memref<15x12xi32>
          %alloc_54 = memref.alloc() : memref<12xf16>
          %271 = math.log1p %0 : tensor<4x5xf32>
          %272 = index.mul %120, %158
          %273 = index.sizeof
          %274 = vector.reduction <maxsi>, %66 : vector<12xi1> into i1
          memref.store %cst, %alloc_6[%c0] : memref<12xf32>
          %275 = arith.divui %true, %true_46 : i1
          %276 = arith.shrui %true_2, %false : i1
          %277 = vector.shuffle %79, %79 [0] : vector<1xi1>, vector<1xi1>
          %278 = affine.min affine_map<(d0, d1, d2) -> (d1)>(%166, %100, %c1)
          %dest, %accumulated_value = vector.scan <or>, %53, %97 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
          %extracted = tensor.extract %3[%c11] : tensor<12xi16>
          %279 = vector.matrix_multiply %95, %97 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
          %280 = arith.xori %c1_i32, %c1571650467_i32 : i32
          bufferization.dealloc_tensor %1 : tensor<4x5xi1>
          %c0_i16_55 = arith.constant 0 : i16
          linalg.yield %c0_i16_55 : i16
        }
      %from_elements_48 = tensor.from_elements %c1_i32, %c1_i32, %115, %c1859716050_i32, %115, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %115, %c1_i32, %115, %c1_i32, %115, %115, %c1_i32, %c1571650467_i32, %c1_i32, %115, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1859716050_i32, %115, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %115, %115, %c1571650467_i32, %c1_i32, %c1571650467_i32, %115, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %115, %115, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %115, %115, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %115, %115, %c1571650467_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %115, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1571650467_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %115, %c1_i32, %115, %115, %c1859716050_i32, %115, %c1859716050_i32, %115, %c1571650467_i32, %115, %115, %c1859716050_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %115, %c1571650467_i32, %115, %c1859716050_i32, %c1571650467_i32, %115, %115, %115, %115, %115, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1_i32, %c1859716050_i32, %115, %c1859716050_i32, %c1_i32, %c1_i32, %c1_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %115, %c1571650467_i32, %c1_i32, %c1571650467_i32, %c1859716050_i32, %115, %c1571650467_i32, %115, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1_i32, %115, %115, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %c1_i32, %c1859716050_i32, %c1571650467_i32, %c1859716050_i32, %c1859716050_i32, %c1571650467_i32, %115, %c1571650467_i32, %c1_i32, %115, %c1859716050_i32, %c1859716050_i32, %c1859716050_i32, %c1_i32, %115, %c1571650467_i32, %115, %115, %c1_i32, %c1859716050_i32, %115, %c1_i32, %c1571650467_i32, %c1859716050_i32, %c1_i32, %c1571650467_i32, %c1571650467_i32 : tensor<15x12xi32>
      %cast_49 = tensor.cast %3 : tensor<12xi16> to tensor<?xi16>
      %245 = vector.reduction <minsi>, %66 : vector<12xi1> into i1
      %246 = index.maxs %c13, %c12
      %247 = math.log2 %10 : tensor<5x4xf16>
      %alloca_50 = memref.alloca() : memref<5x4xi32>
      %248 = arith.shrui %c27303_i16, %c27303_i16 : i16
      %249 = arith.andi %false_1, %false : i1
      %250 = arith.divsi %false, %false_37 : i1
      %251 = arith.shrui %c29252_i16, %c-21208_i16 : i16
      %252 = vector.matrix_multiply %110, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi16>, vector<5xi16>) -> vector<5xi16>
      %253 = memref.atomic_rmw minf %32, %alloc_7[%c3, %c3] : (f16, memref<15x12xf16>) -> f16
      %254 = vector.extract %155[3] : vector<5x4xi32>
      %255 = vector.create_mask %28, %78 : vector<4x5xi1>
      %256 = vector.broadcast %c536847134_i64 : i64 to vector<5x4xi64>
      scf.yield %256 : vector<5x4xi64>
    }
    %169 = memref.atomic_rmw mulf %cst_3, %31[%c3, %c0] : (f32, memref<5x4xf32>) -> f32
    %170 = math.atan2 %5, %5 : tensor<12xf32>
    %alloca_41 = memref.alloca() : memref<15x12xf32>
    %171 = arith.mulf %32, %32 : f16
    %172 = memref.atomic_rmw maxf %cst, %alloc_6[%c0] : (f32, memref<12xf32>) -> f32
    %173 = math.log10 %15 : tensor<15x12xf16>
    %174 = math.floor %32 : f16
    %175 = vector.create_mask %38, %28 : vector<15x12xi1>
    %176 = index.divs %c15, %c5
    %177 = math.tanh %32 : f16
    %178 = vector.reduction <maxsi>, %66 : vector<12xi1> into i1
    %179 = index.castu %c7 : index to i32
    %180 = arith.andi %c-30111_i16, %c-21208_i16 : i16
    %181 = arith.muli %true_2, %true : i1
    %182 = arith.shli %true, %false_37 : i1
    %183 = scf.while (%arg2 = %cst) : (f32) -> f32 {
      %243 = affine.if affine_set<(d0) : (d0 - (d0 - 2) floordiv 16 >= 0, (d0 - 2) floordiv 16 >= 0)>(%c8) -> memref<4x5xf32> {
        %251 = vector.matrix_multiply %79, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
        %252 = arith.remf %arg2, %cst_3 : f32
        %253 = vector.multi_reduction <minsi>, %79, %95 [] : vector<1xi1> to vector<1xi1>
        %254 = affine.min affine_map<(d0) -> (d0 floordiv 8, (-(d0 ceildiv 64)) ceildiv 8, -(d0 ceildiv 64), d0 floordiv 8)>(%c13)
        %255 = math.atan %5 : tensor<12xf32>
        %rank = tensor.rank %10 : tensor<5x4xf16>
        %256 = math.expm1 %cst_3 : f32
        %257 = arith.ori %false_37, %false_0 : i1
        affine.yield %alloc_18 : memref<4x5xf32>
      } else {
        %251 = arith.divui %c1_i16, %c-30111_i16 : i16
        memref.store %true_38, %alloc_16[%c9, %c1] : memref<15x12xi1>
        %252 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %253 = math.atan2 %10, %10 : tensor<5x4xf16>
        %254 = arith.muli %false_37, %false_0 : i1
        bufferization.dealloc_tensor %22 : tensor<i16>
        bufferization.dealloc_tensor %from_elements_39 : tensor<15x12xi64>
        %255 = math.log1p %arg2 : f32
        affine.yield %alloc_18 : memref<4x5xf32>
      }
      %244 = vector.broadcast %arg2 : f32 to vector<5xf32>
      %245 = vector.broadcast %true : i1 to vector<5xi1>
      %246 = vector.maskedload %alloc_12[%c0], %245, %244 : memref<12xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %247 = math.fpowi %102, %12 : tensor<15x12xf32>, tensor<15x12xi32>
      %248 = vector.broadcast %c29252_i16 : i16 to vector<15x12xi16>
      %249 = arith.remf %32, %32 : f16
      %250 = affine.load %41[%c3, %c2] : memref<15x12xf16>
      vector.print %246 : vector<5xf32>
      %dest, %accumulated_value = vector.scan <or>, %175, %66 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
      scf.condition(%true_2) %cst_3 : f32
    } do {
    ^bb0(%arg2: f32):
      %243 = vector.bitcast %155 : vector<5x4xi32> to vector<5x4xi32>
      %244 = bufferization.clone %alloc : memref<5x4xi32> to memref<5x4xi32>
      %245 = affine.load %alloc_16[%c9, %c5] : memref<15x12xi1>
      memref.copy %alloc_6, %alloc_12 : memref<12xf32> to memref<12xf32>
      %246 = scf.while (%arg3 = %243) : (vector<5x4xi32>) -> vector<5x4xi32> {
        %257 = arith.minui %c-30111_i16, %c-21208_i16 : i16
        %258 = arith.minsi %c-21208_i16, %c1_i16 : i16
        %259 = vector.broadcast %115 : i32 to vector<15x12xi32>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d3 * 32 - ((d1 ceildiv 4) mod 64) * 64, d2 * 32)>(%c12, %c9, %38, %c15)
        %261 = vector.transpose %134, [1, 0] : vector<15x12xi32> to vector<12x15xi32>
        memref.store %arg2, %alloc_19[%c2, %c0] : memref<4x5xf32>
        %262 = index.mul %166, %36
        %263 = vector.transpose %19, [0] : vector<5xi16> to vector<5xi16>
        scf.condition(%245) %243 : vector<5x4xi32>
      } do {
      ^bb0(%arg3: vector<5x4xi32>):
        %257 = arith.cmpf ugt, %32, %32 : f16
        %258 = arith.maxf %cst_3, %cst : f32
        %259 = arith.andi %c-30111_i16, %c-30111_i16 : i16
        %260 = arith.minui %115, %c1859716050_i32 : i32
        %cast_48 = tensor.cast %1 : tensor<4x5xi1> to tensor<?x?xi1>
        %261 = vector.splat %false_37 : vector<5x4xi1>
        %262 = math.rsqrt %9 : tensor<5x4xf32>
        %inserted = tensor.insert %c536847134_i64 into %from_elements_39[%c10, %c4] : tensor<15x12xi64>
        %263 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %264 = math.log2 %17 : tensor<4x5xf32>
        %265 = math.atan2 %cst, %cst_3 : f32
        %266 = arith.shli %245, %true_2 : i1
        %267 = math.tanh %collapsed : tensor<20xf32>
        %268 = memref.atomic_rmw addf %32, %41[%c9, %c5] : (f16, memref<15x12xf16>) -> f16
        %269 = arith.floordivsi %c-30111_i16, %c-30111_i16 : i16
        %270 = tensor.empty(%100) : tensor<15x?xf16>
        scf.yield %155 : vector<5x4xi32>
      }
      %247 = arith.shrui %true_2, %false_0 : i1
      %248 = vector.broadcast %75 : i16 to vector<4x5xi16>
      vector.print %95 : vector<1xi1>
      %249 = vector.broadcast %true_2 : i1 to vector<1x1xi1>
      %250 = vector.outerproduct %79, %79, %249 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %251 = arith.remf %arg2, %cst : f32
      %252 = arith.divf %cst, %cst : f32
      %alloca_46 = memref.alloca() : memref<12xi16>
      %253 = vector.create_mask %151, %67 : vector<15x12xi1>
      %254 = arith.divui %c-21208_i16, %c27303_i16 : i16
      %255 = index.mul %c4, %c12
      %256 = tensor.empty() : tensor<5x4xf32>
      %mapped_47 = linalg.map ins(%9 : tensor<5x4xf32>) outs(%256 : tensor<5x4xf32>)
        (%in: f32) {
          %257 = math.absf %74 : tensor<5x4xf32>
          %258 = math.fma %14, %102, %102 : tensor<15x12xf32>
          memref.store %32, %alloc_15[%c14, %c10] : memref<15x12xf16>
          %259 = math.rsqrt %arg2 : f32
          %260 = math.absi %2 : tensor<15x12xi32>
          %cst_48 = arith.constant 1.000000e+00 : f16
          %261 = vector.transfer_read %10[%c2, %c13], %cst_48 : tensor<5x4xf16>, vector<f16>
          affine.store %c27303_i16, %104[%c13] : memref<12xi16>
          %262 = tensor.empty(%36, %c7) : tensor<?x?xi1>
          %263 = math.floor %16 : tensor<4x5xf32>
          %inserted = tensor.insert %c29252_i16 into %87[%c3, %c4] : tensor<5x5xi16>
          %264 = arith.divui %c1859716050_i32, %115 : i32
          %265 = arith.divui %c1571650467_i32, %c1_i32 : i32
          %266 = index.divs %c3, %118
          %267 = math.cttz %4 : tensor<4x5xi16>
          %from_elements_49 = tensor.from_elements %c536847134_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c1559528702_i64, %c536847134_i64, %c1559528702_i64 : tensor<5x4xi64>
          %268 = vector.create_mask %c0, %158 : vector<15x12xi1>
          %269 = math.log2 %14 : tensor<15x12xf32>
          memref.copy %alloc_15, %152 : memref<15x12xf16> to memref<15x12xf16>
          %270 = arith.ori %c1559528702_i64, %c1559528702_i64 : i64
          %271 = arith.maxsi %75, %c-30111_i16 : i16
          %272 = index.add %151, %c13
          %273 = vector.bitcast %79 : vector<1xi1> to vector<1xi1>
          %274 = math.round %0 : tensor<4x5xf32>
          %275 = vector.create_mask %118, %c6 : vector<5x4xi1>
          %276 = math.ipowi %13, %11 : tensor<5x4xi16>
          %277 = index.floordivs %c14, %c15
          %278 = math.fma %9, %256, %256 : tensor<5x4xf32>
          %279 = tensor.empty() : tensor<4x5xf16>
          %280 = vector.broadcast %cst_48 : f16 to vector<15x12xf16>
          %281 = vector.gather %279[%28, %120] [%134], %175, %280 : tensor<4x5xf16>, vector<15x12xi32>, vector<15x12xi1>, vector<15x12xf16> into vector<15x12xf16>
          %inserted_50 = tensor.insert %c27303_i16 into %139[%c5, %c2] : tensor<15x12xi16>
          %282 = index.castu %true_2 : i1 to index
          %dest, %accumulated_value = vector.scan <minui>, %53, %66 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xi1>, vector<12xi1>
          %283 = memref.load %130[%c2, %c4] : memref<4x5xf32>
          %cst_51 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_51 : f32
        }
      scf.yield %cst : f32
    }
    %184 = vector.broadcast %cst_3 : f32 to vector<12xf32>
    %185 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
    %186 = vector.gather %73[%151] [%185], %97, %184 : memref<12xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
    %alloc_42 = memref.alloc() : memref<5x4xi64>
    %187 = memref.atomic_rmw maxf %cst, %130[%c3, %c1] : (f32, memref<4x5xf32>) -> f32
    %188 = memref.load %alloc_11[%c3, %c1] : memref<5x4xi16>
    %189 = arith.remf %cst_3, %cst : f32
    %190 = vector.splat %c14 : vector<5x4xindex>
    %191 = index.maxu %23, %93
    %192 = arith.divsi %c-30111_i16, %c27303_i16 : i16
    %193 = arith.divf %cst, %cst : f32
    %194 = index.castu %120 : index to i32
    %195 = index.mul %c9, %93
    %196 = math.exp2 %collapsed_28 : tensor<20xf32>
    affine.store %cst_3, %alloc_19[%c5, %c6] : memref<4x5xf32>
    memref.tensor_store %5, %83 : memref<12xf32>
    %197 = arith.maxsi %c29252_i16, %c-21208_i16 : i16
    %198 = index.maxu %23, %93
    %199 = vector.transpose %186, [0] : vector<12xf32> to vector<12xf32>
    %200 = arith.divsi %false_0, %true_2 : i1
    %201 = vector.broadcast %c1_i32 : i32 to vector<5x4xi32>
    %202 = math.powf %9, %74 : tensor<5x4xf32>
    %203 = vector.broadcast %c1571650467_i32 : i32 to vector<12xi32>
    %204 = vector.broadcast %32 : f16 to vector<f16>
    vector.transfer_write %204, %alloc_10[%191, %176] : vector<f16>, memref<4x5xf16>
    %205 = index.ceildivs %100, %78
    %206 = math.rsqrt %0 : tensor<4x5xf32>
    %207 = math.fma %102, %14, %102 : tensor<15x12xf32>
    memref.tensor_store %17, %alloc_19 : memref<4x5xf32>
    %208 = math.exp2 %cst_3 : f32
    %209 = arith.shli %false, %true_38 : i1
    %210 = arith.maxui %false, %true_38 : i1
    %211 = index.castu %false : i1 to index
    %212 = index.divs %191, %93
    %213 = vector.broadcast %167 : index to vector<4xindex>
    %214 = vector.broadcast %false_1 : i1 to vector<4xi1>
    %215 = vector.broadcast %cst_3 : f32 to vector<4xf32>
    vector.scatter %116[%c0, %c2] [%213], %214, %215 : memref<4x5xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %216 = arith.cmpf olt, %cst, %cst : f32
    memref.copy %alloc_11, %57 : memref<5x4xi16> to memref<5x4xi16>
    %217 = scf.while (%arg2 = %31) : (memref<5x4xf32>) -> memref<5x4xf32> {
      %243 = arith.divsi %false_37, %true_2 : i1
      %244 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %186, %184, %cst : vector<12xf32>, vector<12xf32> into f32
      %245 = index.mul %36, %166
      %246 = scf.while (%arg3 = %true_38) : (i1) -> i1 {
        %250 = arith.cmpf oge, %cst, %cst : f32
        %251 = math.log1p %9 : tensor<5x4xf32>
        %cast_46 = tensor.cast %16 : tensor<4x5xf32> to tensor<?x?xf32>
        %252 = math.ipowi %arg3, %true : i1
        %cast_47 = tensor.cast %20 : tensor<12xi16> to tensor<?xi16>
        %253 = index.castu %c536847134_i64 : i64 to index
        %254 = arith.divsi %c29252_i16, %c29252_i16 : i16
        %255 = vector.shuffle %186, %186 [1, 2, 4, 6, 7, 9, 13, 14, 15, 18, 21] : vector<12xf32>, vector<12xf32>
        scf.condition(%false_37) %false_0 : i1
      } do {
      ^bb0(%arg3: i1):
        %250 = vector.broadcast %67 : index to vector<12xindex>
        vector.scatter %142[%c2, %c0] [%250], %97, %203 : memref<5x4xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %251 = arith.minsi %c1_i16, %75 : i16
        %c0_i32 = arith.constant 0 : i32
        %252 = vector.transfer_read %8[%38, %c7], %c0_i32 : tensor<5x4xi32>, vector<i32>
        %253 = index.divs %167, %38
        %254 = arith.minsi %c1571650467_i32, %115 : i32
        %alloc_46 = memref.alloc() : memref<15x12xi16>
        memref.copy %alloc_13, %alloc_14 : memref<5x4xi16> to memref<5x4xi16>
        %255 = math.log10 %17 : tensor<4x5xf32>
        %alloc_47 = memref.alloc() : memref<15x12xf32>
        memref.tensor_store %14, %alloc_47 : memref<15x12xf32>
        %256 = vector.transpose %204, [] : vector<f16> to vector<f16>
        %257 = memref.atomic_rmw minf %cst_3, %arg2[%c3, %c0] : (f32, memref<5x4xf32>) -> f32
        %258 = index.add %118, %151
        %from_elements_48 = tensor.from_elements %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32 : tensor<5x4xf16>
        %alloc_49 = memref.alloc() : memref<15x12xi1>
        %259 = math.log1p %74 : tensor<5x4xf32>
        %260 = arith.remsi %false_1, %true : i1
        scf.yield %false : i1
      }
      %247 = math.exp2 %15 : tensor<15x12xf16>
      %248 = arith.cmpi sgt, %true, %false_37 : i1
      %249 = arith.ceildivsi %c1_i16, %c27303_i16 : i16
      memref.copy %alloc_19, %alloc_17 : memref<4x5xf32> to memref<4x5xf32>
      scf.condition(%false) %31 : memref<5x4xf32>
    } do {
    ^bb0(%arg2: memref<5x4xf32>):
      %243 = arith.divui %c-21208_i16, %c-21208_i16 : i16
      %244 = vector.create_mask %205, %120 : vector<5x4xi1>
      %generated = tensor.generate %84 {
      ^bb0(%arg3: index):
        vector.print %19 : vector<5xi16>
        %259 = arith.shrui %false, %true : i1
        %260 = tensor.empty(%c11) : tensor<?x12xi64>
        %261 = vector.matrix_multiply %203, %185 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<12xi32>) -> vector<1xi32>
        tensor.yield %c-29182_i16 : i16
      } : tensor<?xi16>
      %245 = arith.divui %c29252_i16, %c27303_i16 : i16
      %246 = math.atan2 %16, %17 : tensor<4x5xf32>
      %247 = vector.broadcast %c1571650467_i32 : i32 to vector<12x12xi32>
      %248 = vector.outerproduct %185, %203, %247 {kind = #vector.kind<xor>} : vector<12xi32>, vector<12xi32>
      %249 = math.atan2 %14, %102 : tensor<15x12xf32>
      %250 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %186, %184, %cst : vector<12xf32>, vector<12xf32> into f32
      %251 = arith.cmpi eq, %c27303_i16, %c-29182_i16 : i16
      %252 = bufferization.clone %130 : memref<4x5xf32> to memref<4x5xf32>
      %253 = math.exp2 %collapsed : tensor<20xf32>
      %254 = tensor.empty() : tensor<5x4xf16>
      %mapped_46 = linalg.map ins(%10, %10, %10 : tensor<5x4xf16>, tensor<5x4xf16>, tensor<5x4xf16>) outs(%254 : tensor<5x4xf16>)
        (%in: f16, %in_47: f16, %in_48: f16) {
          %259 = vector.extract %244[0] : vector<5x4xi1>
          %260 = math.atan2 %10, %254 : tensor<5x4xf16>
          %261 = arith.shli %c-29182_i16, %c27303_i16 : i16
          %262 = memref.load %73[%c9] : memref<12xf32>
          %alloc_49 = memref.alloc() : memref<5x4xi16>
          memref.copy %alloc_18, %alloc_19 : memref<4x5xf32> to memref<4x5xf32>
          %263 = index.ceildivs %c6, %195
          %264 = vector.broadcast %c10 : index to vector<5xindex>
          %265 = vector.broadcast %false_0 : i1 to vector<5xi1>
          vector.scatter %114[%c2, %c0] [%264], %265, %19 : memref<5x4xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
          %266 = vector.broadcast %true_38 : i1 to vector<5x4xi1>
          %267 = arith.maxf %in, %in_47 : f16
          %268 = bufferization.clone %152 : memref<15x12xf16> to memref<15x12xf16>
          %269 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
          %270 = math.powf %0, %0 : tensor<4x5xf32>
          %271 = affine.max affine_map<(d0, d1) -> (((d1 ceildiv 2) * 2 - 4) mod 32)>(%c12, %38)
          %272 = math.copysign %collapsed, %collapsed_28 : tensor<20xf32>
          %273 = math.log10 %0 : tensor<4x5xf32>
          memref.assume_alignment %alloc_17, 16 : memref<4x5xf32>
          %274 = arith.minui %c1559528702_i64, %c536847134_i64 : i64
          %275 = arith.xori %c536847134_i64, %c1559528702_i64 : i64
          %276 = math.rsqrt %17 : tensor<4x5xf32>
          %277 = arith.remf %in_48, %in_48 : f16
          %278 = math.powf %15, %15 : tensor<15x12xf16>
          %279 = arith.divf %in_48, %32 : f16
          %280 = math.round %74 : tensor<5x4xf32>
          %281 = arith.minui %c1_i16, %c29252_i16 : i16
          %cst_50 = arith.constant 1.000000e+00 : f16
          %cst_51 = arith.constant 0.000000e+00 : f16
          %282 = vector.transfer_read %10[%158, %198], %cst_51 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x4xf16>, vector<15xf16>
          %283 = math.ipowi %false_0, %false_37 : i1
          %alloc_52 = memref.alloc() : memref<4x5xf16>
          %inserted = tensor.insert %cst into %74[%c0, %c1] : tensor<5x4xf32>
          %284 = arith.remf %in_48, %in_47 : f16
          %285 = vector.matrix_multiply %110, %110 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
          %286 = math.ceil %14 : tensor<15x12xf32>
          %cst_53 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_53 : f16
        }
      %255 = arith.minsi %c-30111_i16, %c-29182_i16 : i16
      %256 = arith.andi %75, %75 : i16
      %257 = index.castu %c-29182_i16 : i16 to index
      %258 = scf.execute_region -> memref<15x12xi16> {
        %259 = index.divs %100, %c6
        %260 = vector.create_mask %c8 : vector<12xi1>
        vector.print %79 : vector<1xi1>
        memref.store %cst, %252[%c1, %c1] : memref<4x5xf32>
        %261 = index.divs %c7, %c14
        %262 = vector.create_mask %84 : vector<12xi1>
        %263 = math.ceil %cst : f32
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %c-30111_i16 : vector<5xi16>, vector<5xi16> into i16
        %265 = math.log10 %32 : f16
        vector.print %155 : vector<5x4xi32>
        %266 = vector.create_mask %261, %205 : vector<15x12xi1>
        %267 = memref.load %alloc_7[%c0, %c4] : memref<15x12xf16>
        %c0_i64 = arith.constant 0 : i64
        %268 = vector.transfer_read %from_elements_39[%151, %c8], %c0_i64 : tensor<15x12xi64>, vector<i64>
        bufferization.dealloc_tensor %21 : tensor<i16>
        %269 = arith.shrui %false_0, %false : i1
        %270 = math.ipowi %c1859716050_i32, %c1859716050_i32 : i32
        %alloc_47 = memref.alloc() : memref<15x12xi16>
        scf.yield %alloc_47 : memref<15x12xi16>
      }
      scf.yield %alloc_8 : memref<5x4xf32>
    }
    %218 = vector.broadcast %c2 : index to vector<12xindex>
    vector.scatter %alloc_17[%c2, %c2] [%218], %97, %184 : memref<4x5xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %219 = arith.minf %cst_3, %cst_3 : f32
    %220 = math.ctpop %22 : tensor<i16>
    memref.copy %73, %83 : memref<12xf32> to memref<12xf32>
    %221 = arith.minsi %c-21208_i16, %c-21208_i16 : i16
    %222 = arith.divf %cst_3, %cst : f32
    %223 = math.ctpop %8 : tensor<5x4xi32>
    %224 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
    %225 = vector.fma %224, %224, %224 : vector<5x4xf32>
    %226 = vector.extract %175[1] : vector<15x12xi1>
    %227 = bufferization.to_memref %17 : memref<4x5xf32>
    %alloc_43 = memref.alloc() : memref<15x12xi1>
    memref.copy %alloc_16, %alloc_43 : memref<15x12xi1> to memref<15x12xi1>
    %228 = tensor.empty() : tensor<15x12xf16>
    %229 = vector.splat %c8 : vector<15x12xindex>
    %cst_44 = arith.constant 1.000000e+00 : f16
    %230 = vector.transfer_read %alloc_10[%c4, %c15], %cst_44 : memref<4x5xf16>, vector<f16>
    %231 = math.powf %5, %122 : tensor<12xf32>
    %232 = bufferization.to_memref %2 : memref<15x12xi32>
    %233 = vector.broadcast %c1859716050_i32 : i32 to vector<4xi32>
    %234 = vector.multi_reduction <add>, %155, %233 [0] : vector<5x4xi32> to vector<4xi32>
    %235 = affine.apply affine_map<(d0, d1, d2, d3) -> (-((d3 ceildiv 8 - 1) floordiv 8))>(%211, %c12, %93, %23)
    %236 = math.log2 %cst_3 : f32
    %237 = tensor.empty() : tensor<5x5xi16>
    %238 = linalg.copy ins(%87 : tensor<5x5xi16>) outs(%237 : tensor<5x5xi16>) -> tensor<5x5xi16>
    %239 = tensor.empty() : tensor<4x5xf32>
    %transposed = linalg.transpose ins(%alloc_8 : memref<5x4xf32>) outs(%239 : tensor<4x5xf32>) permutation = [1, 0] 
    %240 = tensor.empty() : tensor<i64>
    %reduced_45 = linalg.reduce ins(%from_elements_39 : tensor<15x12xi64>) outs(%240 : tensor<i64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        %243 = vector.broadcast %c2 : index to vector<12xindex>
        vector.scatter %alloc_19[%c3, %c4] [%243], %97, %184 : memref<4x5xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %244 = vector.create_mask %c2, %c0 : vector<15x12xi1>
        %245 = math.cos %collapsed : tensor<20xf32>
        %246 = arith.cmpf ule, %32, %32 : f16
        %247 = bufferization.clone %31 : memref<5x4xf32> to memref<5x4xf32>
        %248 = vector.insert %c-21208_i16, %19 [1] : i16 into vector<5xi16>
        %249 = vector.extract %225[4] : vector<5x4xf32>
        scf.if %true {
          %250 = vector.insertelement %115, %233[%c5 : index] : vector<4xi32>
          memref.assume_alignment %227, 8 : memref<4x5xf32>
          %251 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
          %252 = arith.shrsi %c536847134_i64, %init : i64
          %253 = index.castu %158 : index to i32
          %254 = math.ceil %14 : tensor<15x12xf32>
          %255 = arith.shrui %c536847134_i64, %in : i64
          memref.copy %alloc_9, %138 : memref<4x5xi1> to memref<4x5xi1>
        }
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %241 = scf.parallel (%arg2, %arg3) = (%c13, %166) to (%36, %38) step (%c7, %c7) init (%9) -> tensor<5x4xf32> {
      %243 = vector.broadcast %cst : f32 to vector<15x12xf32>
      %244 = vector.fma %243, %243, %243 : vector<15x12xf32>
      %dest, %accumulated_value = vector.scan <mul>, %243, %184 {inclusive = false, reduction_dim = 0 : i64} : vector<15x12xf32>, vector<12xf32>
      %245 = arith.maxf %32, %32 : f16
      %246 = arith.maxui %c1559528702_i64, %c536847134_i64 : i64
      %alloca_46 = memref.alloca() : memref<5x4xf32>
      %247 = vector.broadcast %false_0 : i1 to vector<1x1xi1>
      %248 = vector.outerproduct %95, %79, %247 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %249 = math.round %9 : tensor<5x4xf32>
      %250 = arith.shrui %c1_i32, %115 : i32
      %251 = math.log2 %9 : tensor<5x4xf32>
      %252 = index.castu %c1571650467_i32 : i32 to index
      %253 = math.tanh %0 : tensor<4x5xf32>
      %254 = index.ceildivu %arg3, %167
      %255 = scf.execute_region -> vector<4x5xf16> {
        %259 = arith.minf %32, %32 : f16
        %260 = bufferization.to_memref %0 : memref<4x5xf32>
        %261 = index.sizeof
        affine.store %c-21208_i16, %114[%c3, %c15] : memref<5x4xi16>
        %262 = arith.xori %c1571650467_i32, %c1859716050_i32 : i32
        %263 = arith.minui %c536847134_i64, %c536847134_i64 : i64
        %264 = affine.apply affine_map<(d0, d1) -> (-(d0 mod 16))>(%211, %c14)
        %265 = vector.create_mask %78, %c1 : vector<5x4xi1>
        %266 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %267 = vector.splat %false_0 : vector<12xi1>
        %268 = vector.broadcast %false_1 : i1 to vector<5x4xi1>
        %269 = vector.splat %false : vector<5x4xi1>
        %270 = vector.splat %c1_i16 : vector<5x4xi16>
        %271 = tensor.empty() : tensor<4x5xi32>
        %272 = vector.create_mask %c6, %c8 : vector<5x4xi1>
        %273 = vector.insertelement %c1859716050_i32, %203[%c10 : index] : vector<12xi32>
        %274 = vector.broadcast %32 : f16 to vector<4x5xf16>
        scf.yield %274 : vector<4x5xf16>
      }
      bufferization.dealloc_tensor %1 : tensor<4x5xi1>
      %256 = arith.minf %cst_44, %32 : f16
      %257 = math.tanh %239 : tensor<4x5xf32>
      %258 = tensor.empty() : tensor<5x4xf32>
      scf.reduce(%258)  : tensor<5x4xf32> {
      ^bb0(%arg4: tensor<5x4xf32>, %arg5: tensor<5x4xf32>):
        %259 = arith.remf %cst, %cst_3 : f32
        %260 = math.log10 %74 : tensor<5x4xf32>
        %261 = math.log10 %arg4 : tensor<5x4xf32>
        %262 = arith.shli %c1571650467_i32, %c1571650467_i32 : i32
        %263 = math.log10 %32 : f16
        %264 = vector.insertelement %true_2, %97[%23 : index] : vector<12xi1>
        %265 = arith.maxf %cst, %cst_3 : f32
        %266 = math.cos %cst_3 : f32
        %267 = tensor.empty() : tensor<5x4xf32>
        scf.reduce.return %267 : tensor<5x4xf32>
      }
      scf.yield
    }
    %242 = affine.vector_load %alloc_8[%c4, %235] : memref<5x4xf32>, vector<4xf32>
    affine.vector_store %242, %116[%211, %118] : memref<4x5xf32>, vector<4xf32>
    vector.print %19 : vector<5xi16>
    vector.print %53 : vector<15x12xi1>
    vector.print %66 : vector<12xi1>
    vector.print %79 : vector<1xi1>
    vector.print %95 : vector<1xi1>
    vector.print %97 : vector<12xi1>
    vector.print %110 : vector<1xi16>
    vector.print %134 : vector<15x12xi32>
    vector.print %155 : vector<5x4xi32>
    vector.print %175 : vector<15x12xi1>
    vector.print %184 : vector<12xf32>
    vector.print %185 : vector<12xi32>
    vector.print %186 : vector<12xf32>
    vector.print %201 : vector<5x4xi32>
    vector.print %203 : vector<12xi32>
    vector.print %204 : vector<f16>
    vector.print %224 : vector<5x4xf32>
    vector.print %225 : vector<5x4xf32>
    vector.print %226 : vector<12xi1>
    vector.print %233 : vector<4xi32>
    vector.print %242 : vector<4xf32>
    vector.print %true : i1
    vector.print %c-30111_i16 : i16
    vector.print %false : i1
    vector.print %c-29182_i16 : i16
    vector.print %false_0 : i1
    vector.print %c29252_i16 : i16
    vector.print %c1571650467_i32 : i32
    vector.print %c1559528702_i64 : i64
    vector.print %c-21208_i16 : i16
    vector.print %cst : f32
    vector.print %false_1 : i1
    vector.print %c27303_i16 : i16
    vector.print %c536847134_i64 : i64
    vector.print %true_2 : i1
    vector.print %cst_3 : f32
    vector.print %c1859716050_i32 : i32
    vector.print %32 : f16
    vector.print %c1_i32 : i32
    vector.print %75 : i16
    vector.print %115 : i32
    vector.print %c1_i16 : i16
    vector.print %false_37 : i1
    vector.print %true_38 : i1
    vector.print %cst_44 : f16
    return %93 : index
  }
}
