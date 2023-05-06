module {
  func.func private @func1(%arg0: tensor<16xi32>) {
    %cst = arith.constant 1.074400e+04 : f16
    %true = arith.constant true
    %c518259140_i32 = arith.constant 518259140 : i32
    %cst_0 = arith.constant 5.308800e+04 : f16
    %c11478_i16 = arith.constant 11478 : i16
    %false = arith.constant false
    %c767048103_i32 = arith.constant 767048103 : i32
    %cst_1 = arith.constant 1.05796966E+9 : f32
    %cst_2 = arith.constant 0x4C9A2CC1 : f32
    %cst_3 = arith.constant 1.08286669E+9 : f32
    %cst_4 = arith.constant 3.734400e+04 : f16
    %c27529_i16 = arith.constant 27529 : i16
    %c372691768_i32 = arith.constant 372691768 : i32
    %false_5 = arith.constant false
    %cst_6 = arith.constant 1.974400e+04 : f16
    %cst_7 = arith.constant 1.36321114E+9 : f32
    %0 = tensor.empty() : tensor<1xi32>
    %1 = tensor.empty() : tensor<16xi32>
    %2 = tensor.empty() : tensor<1x16xi1>
    %3 = tensor.empty() : tensor<16xf32>
    %4 = tensor.empty() : tensor<16xf16>
    %5 = tensor.empty() : tensor<16xi16>
    %6 = tensor.empty() : tensor<16xi32>
    %7 = tensor.empty() : tensor<16xi1>
    %8 = tensor.empty() : tensor<16xi32>
    %9 = tensor.empty() : tensor<16xf32>
    %10 = tensor.empty() : tensor<1x16xi1>
    %11 = tensor.empty() : tensor<1xf16>
    %12 = tensor.empty() : tensor<16xf16>
    %13 = tensor.empty() : tensor<16xf16>
    %14 = tensor.empty() : tensor<1x16xi1>
    %15 = tensor.empty() : tensor<16xi1>
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
    %alloc = memref.alloc() : memref<16xi16>
    %alloc_8 = memref.alloc() : memref<16xi64>
    %alloc_9 = memref.alloc() : memref<1x16xf32>
    %alloc_10 = memref.alloc() : memref<1x16xi64>
    %alloc_11 = memref.alloc() : memref<16xi1>
    %alloc_12 = memref.alloc() : memref<16xf32>
    %alloc_13 = memref.alloc() : memref<1xi64>
    %alloc_14 = memref.alloc() : memref<16xi16>
    %alloc_15 = memref.alloc() : memref<16xf32>
    %alloc_16 = memref.alloc() : memref<16xi32>
    %alloc_17 = memref.alloc() : memref<1x16xi16>
    %alloc_18 = memref.alloc() : memref<16xf16>
    %alloc_19 = memref.alloc() : memref<16xi32>
    %alloc_20 = memref.alloc() : memref<1xf32>
    %alloc_21 = memref.alloc() : memref<1xf16>
    %alloc_22 = memref.alloc() : memref<1xf32>
    %16 = tensor.empty() : tensor<16xi32>
    %17 = linalg.copy ins(%8 : tensor<16xi32>) outs(%16 : tensor<16xi32>) -> tensor<16xi32>
    %18 = tensor.empty() : tensor<16xi16>
    %transposed = linalg.transpose ins(%5 : tensor<16xi16>) outs(%18 : tensor<16xi16>) permutation = [0] 
    %alloc_23 = memref.alloc() : memref<f16>
    linalg.reduce ins(%12 : tensor<16xf16>) outs(%alloc_23 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %245 = bufferization.clone %alloc_23 : memref<f16> to memref<f16>
        %246 = arith.shrui %false, %false_5 : i1
        %expanded_62 = tensor.expand_shape %3 [[0, 1]] : tensor<16xf32> into tensor<16x1xf32>
        %247 = arith.addf %init, %cst : f16
        %248 = arith.andi %c11478_i16, %c11478_i16 : i16
        %249 = arith.remui %true, %false_5 : i1
        %250 = index.add %c5, %c7
        %251 = arith.minsi %c27529_i16, %c11478_i16 : i16
        %cst_63 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_63 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c6, %c10) to (%c8, %c14) step (%c15, %c1) {
      memref.copy %alloc_16, %alloc_19 : memref<16xi32> to memref<16xi32>
      %245 = arith.shrui %false_5, %false_5 : i1
      memref.assume_alignment %alloc_14, 8 : memref<16xi16>
      %246 = arith.maxsi %c767048103_i32, %c767048103_i32 : i32
      %247 = arith.divf %cst_3, %cst_3 : f32
      %248 = math.absf %11 : tensor<1xf16>
      %249 = math.ctpop %14 : tensor<1x16xi1>
      %cast_62 = tensor.cast %12 : tensor<16xf16> to tensor<?xf16>
      %250 = vector.broadcast %c372691768_i32 : i32 to vector<1xi32>
      %251 = vector.extract %250[0] : vector<1xi32>
      %252 = bufferization.to_memref %17 : memref<16xi32>
      %generated_63 = tensor.generate %c11 {
      ^bb0(%arg3: index):
        %258 = math.exp %11 : tensor<1xf16>
        memref.assume_alignment %alloc_20, 16 : memref<1xf32>
        %259 = tensor.empty() : tensor<16x16xi1>
        %260 = tensor.empty() : tensor<1x16xi1>
        %261 = linalg.matmul ins(%10, %259 : tensor<1x16xi1>, tensor<16x16xi1>) outs(%260 : tensor<1x16xi1>) -> tensor<1x16xi1>
        %cast_64 = tensor.cast %3 : tensor<16xf32> to tensor<?xf32>
        tensor.yield %false : i1
      } : tensor<?xi1>
      %253 = memref.atomic_rmw mins %c11478_i16, %alloc[%c14] : (i16, memref<16xi16>) -> i16
      %254 = index.maxu %arg2, %arg1
      %255 = math.expm1 %cst_3 : f32
      %256 = vector.flat_transpose %250 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %257 = vector.broadcast %c27529_i16 : i16 to vector<1xi16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_9[%c5, %c12] : memref<1x16xf32>, vector<3xf32>
    affine.vector_store %19, %alloc_22[%c12] : memref<1xf32>, vector<3xf32>
    %alloc_24 = memref.alloc() : memref<16xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%alloc_12, %alloc_24 : memref<16xf32>, memref<16xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %c0_i32 = arith.constant 0 : i32
    %22 = vector.transfer_read %1[%c0], %c0_i32 : tensor<16xi32>, vector<i32>
    %23 = math.ipowi %16, %1 : tensor<16xi32>
    %c0_i32_25 = arith.constant 0 : i32
    %24 = vector.transfer_read %1[%c6], %c0_i32_25 : tensor<16xi32>, vector<i32>
    %25 = arith.remf %cst, %cst_6 : f16
    %26 = vector.extract %19[0] : vector<3xf32>
    %27 = vector.extract %19[1] : vector<3xf32>
    %28 = tensor.empty() : tensor<16xf16>
    %mapped = linalg.map ins(%13, %12, %13 : tensor<16xf16>, tensor<16xf16>, tensor<16xf16>) outs(%28 : tensor<16xf16>)
      (%in: f16, %in_62: f16, %in_63: f16) {
        bufferization.dealloc_tensor %9 : tensor<16xf32>
        %alloc_64 = memref.alloc() : memref<16xi32>
        %245 = index.floordivs %c14, %c12
        %246 = vector.broadcast %c0_i32 : i32 to vector<1x16xi32>
        %247 = vector.broadcast %false : i1 to vector<1x16xi1>
        %248 = vector.gather %0[%c11] [%246], %247, %246 : tensor<1xi32>, vector<1x16xi32>, vector<1x16xi1>, vector<1x16xi32> into vector<1x16xi32>
        %249 = vector.transpose %246, [0, 1] : vector<1x16xi32> to vector<1x16xi32>
        %250 = arith.remui %c767048103_i32, %c0_i32_25 : i32
        %251 = arith.cmpf ult, %cst_3, %cst_1 : f32
        %252 = index.castu %c15 : index to i32
        %253 = bufferization.to_tensor %alloc_19 : memref<16xi32>
        %254 = index.floordivs %c1, %c15
        %extracted_65 = tensor.extract %21[] : tensor<f32>
        %255 = arith.divf %cst_4, %cst_0 : f16
        %256 = arith.subi %c372691768_i32, %c767048103_i32 : i32
        %257 = memref.load %alloc_11[%c1] : memref<16xi1>
        %258 = arith.addf %cst, %cst : f16
        %259 = math.atan2 %4, %12 : tensor<16xf16>
        %true_66 = arith.constant true
        %260 = math.ceil %cst_4 : f16
        %261 = memref.atomic_rmw maxs %c27529_i16, %alloc_14[%c2] : (i16, memref<16xi16>) -> i16
        %262 = arith.minui %false_5, %true : i1
        %alloc_67 = memref.alloc() : memref<1xi32>
        memref.tensor_store %0, %alloc_67 : memref<1xi32>
        %263 = scf.index_switch %c4 -> index 
        case 1 {
          %272 = math.rsqrt %12 : tensor<16xf16>
          %273 = index.floordivs %c13, %c12
          %true_71 = arith.constant true
          %false_72 = arith.constant false
          %274 = vector.transfer_read %15[%254], %false_72 : tensor<16xi1>, vector<i1>
          %275 = vector.bitcast %246 : vector<1x16xi32> to vector<1x16xi32>
          %276 = math.roundeven %extracted_65 : f32
          %277 = vector.broadcast %c0_i32_25 : i32 to vector<16x16xi32>
          %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %248, %248, %277 : vector<1x16xi32>, vector<1x16xi32> into vector<16x16xi32>
          %279 = index.casts %c7 : index to i32
          %280 = arith.minf %extracted_65, %cst_3 : f32
          %281 = bufferization.clone %alloc_23 : memref<f16> to memref<f16>
          %282 = bufferization.clone %alloc_24 : memref<16xf32> to memref<16xf32>
          %283 = index.ceildivu %c2, %c7
          %284 = math.ctpop %5 : tensor<16xi16>
          %285 = arith.cmpf ult, %in_63, %in : f16
          %286 = arith.minf %cst_7, %cst_2 : f32
          %287 = bufferization.to_memref %13 : memref<16xf16>
          %288 = arith.floordivsi %c11478_i16, %c27529_i16 : i16
          scf.yield %c9 : index
        }
        default {
          %272 = arith.cmpi ule, %c11478_i16, %c11478_i16 : i16
          %273 = math.rsqrt %4 : tensor<16xf16>
          %274 = index.divs %c14, %c14
          %275 = vector.broadcast %c518259140_i32 : i32 to vector<16x16xi32>
          %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %248, %248, %275 : vector<1x16xi32>, vector<1x16xi32> into vector<16x16xi32>
          %277 = vector.bitcast %19 : vector<3xf32> to vector<3xf32>
          %278 = arith.muli %true, %true : i1
          %279 = arith.floordivsi %false, %false : i1
          %280 = vector.matrix_multiply %19, %277 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
          %rank_71 = tensor.rank %11 : tensor<1xf16>
          %281 = bufferization.clone %alloc_10 : memref<1x16xi64> to memref<1x16xi64>
          %282 = affine.load %alloc_24[%c14] : memref<16xf32>
          %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 2, (d2 mod 2) mod 16, d0 + 4)>(%c9, %c15, %254, %c2)
          %284 = arith.minui %c11478_i16, %c27529_i16 : i16
          %285 = bufferization.to_memref %4 : memref<16xf16>
          memref.store %cst_2, %alloc_15[%c10] : memref<16xf32>
          %286 = affine.load %alloc_12[%c0] : memref<16xf32>
          scf.yield %c12 : index
        }
        %264 = vector.broadcast %false : i1 to vector<16xi1>
        %265 = vector.reduction <and>, %264 : vector<16xi1> into i1
        %generated_68 = tensor.generate %c8 {
        ^bb0(%arg1: index):
          %272 = vector.broadcast %c518259140_i32 : i32 to vector<16xi32>
          %dest_71, %accumulated_value_72 = vector.scan <minui>, %248, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<1x16xi32>, vector<16xi32>
          %273 = index.divu %c11, %c4
          %alloc_73 = memref.alloc() : memref<1xf16>
          memref.copy %alloc_21, %alloc_73 : memref<1xf16> to memref<1xf16>
          %274 = affine.min affine_map<(d0) -> ((d0 * 8 - 16) * 2, d0 * 8 + 1, d0 mod 128, d0 * 8 - (d0 * 8 - 128) * 4 - 36)>(%c11)
          tensor.yield %c27529_i16 : i16
        } : tensor<?xi16>
        %266 = arith.muli %c372691768_i32, %c372691768_i32 : i32
        %inserted_69 = tensor.insert %true into %15[%c14] : tensor<16xi1>
        %267 = math.ctlz %0 : tensor<1xi32>
        %268 = arith.remf %in_62, %cst_0 : f16
        %269 = arith.xori %true, %true : i1
        %270 = vector.splat %c12 : vector<16xindex>
        %271 = index.divu %c14, %c3
        %cst_70 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_70 : f16
      }
    %29 = math.powf %cst, %cst_0 : f16
    %30 = arith.ori %c11478_i16, %c27529_i16 : i16
    %31 = vector.insert %cst_3, %19 [1] : f32 into vector<3xf32>
    %alloc_26 = memref.alloc() : memref<16xf16>
    %32 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_2 : vector<3xf32>, vector<3xf32> into f32
    %generated = tensor.generate %c5, %c15 {
    ^bb0(%arg1: index, %arg2: index):
      %245 = arith.ori %c372691768_i32, %c0_i32_25 : i32
      %246 = vector.load %alloc_24[%c7] : memref<16xf32>, vector<1xf32>
      %inserted_62 = tensor.insert %cst into %12[%c1] : tensor<16xf16>
      %expanded_63 = tensor.expand_shape %5 [[0, 1]] : tensor<16xi16> into tensor<16x1xi16>
      tensor.yield %c372691768_i32 : i32
    } : tensor<?x?xi32>
    %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
    %33 = bufferization.to_tensor %alloc_18 : memref<16xf16>
    %34 = math.round %9 : tensor<16xf32>
    %35 = math.cos %9 : tensor<16xf32>
    vector.print %19 : vector<3xf32>
    %36 = arith.shli %false, %true : i1
    %37 = index.castu %c518259140_i32 : i32 to index
    %38 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_3 : vector<3xf32>, vector<3xf32> into f32
    %39 = math.ctlz %2 : tensor<1x16xi1>
    %40 = index.ceildivu %c10, %c14
    %splat = tensor.splat %c767048103_i32 : tensor<1xi32>
    memref.assume_alignment %alloc_11, 8 : memref<16xi1>
    %41 = arith.cmpi sge, %true, %false : i1
    %42 = bufferization.clone %alloc_24 : memref<16xf32> to memref<16xf32>
    %43 = vector.extract %19[2] : vector<3xf32>
    %44 = vector.shuffle %19, %19 [2] : vector<3xf32>, vector<3xf32>
    %45 = index.ceildivs %40, %c12
    %46 = arith.minf %cst_2, %cst_2 : f32
    %47 = math.roundeven %cst_7 : f32
    %48 = memref.realloc %alloc_11 : memref<16xi1> to memref<3xi1>
    %49 = index.ceildivs %c14, %c10
    memref.copy %alloc_15, %alloc_24 : memref<16xf32> to memref<16xf32>
    %50 = arith.subi %false_5, %true : i1
    %51 = vector.broadcast %cst_3 : f32 to vector<3x1xf32>
    %52 = vector.broadcast %cst_3 : f32 to vector<1xf32>
    %dest, %accumulated_value = vector.scan <add>, %51, %52 {inclusive = false, reduction_dim = 0 : i64} : vector<3x1xf32>, vector<1xf32>
    %53 = vector.broadcast %c372691768_i32 : i32 to vector<16xi32>
    scf.index_switch %c8 
    case 1 {
      %245 = index.maxu %49, %c8
      %246 = arith.subi %false_5, %false : i1
      %cast_62 = tensor.cast %2 : tensor<1x16xi1> to tensor<?x?xi1>
      %cast_63 = tensor.cast %17 : tensor<16xi32> to tensor<?xi32>
      %247 = math.expm1 %13 : tensor<16xf16>
      %248 = arith.minui %c372691768_i32, %c767048103_i32 : i32
      %249 = arith.minf %cst_2, %cst_1 : f32
      %250 = scf.execute_region -> memref<1x16xi16> {
        %259 = arith.maxf %cst_7, %cst_7 : f32
        %260 = index.casts %40 : index to i32
        %261 = tensor.empty(%40) : tensor<?x16xi16>
        %262 = math.absf %11 : tensor<1xf16>
        %263 = arith.xori %c11478_i16, %c11478_i16 : i16
        %264 = math.rsqrt %cst : f16
        %rank_64 = tensor.rank %14 : tensor<1x16xi1>
        %265 = index.ceildivu %c1, %c14
        %266 = index.ceildivu %c2, %c9
        %c1_i64_65 = arith.constant 1 : i64
        %267 = memref.atomic_rmw maxu %c1_i64_65, %alloc_13[%c0] : (i64, memref<1xi64>) -> i64
        memref.tensor_store %1, %alloc_19 : memref<16xi32>
        %268 = index.maxu %c7, %c1
        %269 = vector.insertelement %c372691768_i32, %53[%37 : index] : vector<16xi32>
        %270 = math.ctpop %c0_i32 : i32
        %271 = arith.ceildivsi %c767048103_i32, %c767048103_i32 : i32
        %rank_66 = tensor.rank %6 : tensor<16xi32>
        scf.yield %alloc_17 : memref<1x16xi16>
      }
      %251 = math.tan %20 : tensor<f32>
      %252 = arith.ori %c767048103_i32, %c0_i32 : i32
      memref.copy %alloc, %alloc_14 : memref<16xi16> to memref<16xi16>
      %253 = arith.remf %cst_1, %cst_3 : f32
      %254 = tensor.empty() : tensor<16x3xi1>
      %255 = tensor.empty() : tensor<1x3xi1>
      %256 = linalg.matmul ins(%2, %254 : tensor<1x16xi1>, tensor<16x3xi1>) outs(%255 : tensor<1x3xi1>) -> tensor<1x3xi1>
      memref.store %cst_7, %alloc_20[%c0] : memref<1xf32>
      %257 = index.casts %c3 : index to i32
      %258 = arith.cmpi sle, %false, %false_5 : i1
      scf.yield
    }
    case 2 {
      %245 = math.fpowi %33, %6 : tensor<16xf16>, tensor<16xi32>
      %246 = scf.index_switch %c15 -> f16 
      case 1 {
        %extracted_65 = tensor.extract %15[%c14] : tensor<16xi1>
        %258 = arith.xori %c518259140_i32, %c0_i32 : i32
        %259 = bufferization.to_memref %0 : memref<1xi32>
        %260 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %261 = vector.fma %260, %260, %260 : vector<16xf32>
        %262 = math.round %expanded : tensor<16x1xf16>
        %cast_66 = tensor.cast %14 : tensor<1x16xi1> to tensor<?x?xi1>
        %263 = math.ctpop %7 : tensor<16xi1>
        %264 = arith.shrui %false, %false : i1
        %265 = vector.matrix_multiply %261, %261 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %266 = arith.maxf %cst, %cst : f16
        %267 = math.ceil %cst_1 : f32
        %268 = arith.minf %cst_3, %cst_1 : f32
        %alloc_67 = memref.alloc() : memref<1xf16>
        memref.copy %alloc_21, %alloc_67 : memref<1xf16> to memref<1xf16>
        bufferization.dealloc_tensor %2 : tensor<1x16xi1>
        %269 = vector.multi_reduction <maxf>, %19, %19 [] : vector<3xf32> to vector<3xf32>
        %270 = arith.remui %c11478_i16, %c27529_i16 : i16
        scf.yield %cst : f16
      }
      case 2 {
        %258 = index.add %c2, %c12
        %259 = arith.xori %false_5, %true : i1
        %260 = index.castu %c9 : index to i32
        %261 = vector.bitcast %53 : vector<16xi32> to vector<16xi32>
        %262 = arith.subi %false_5, %true : i1
        %263 = math.expm1 %cst_2 : f32
        %264 = vector.flat_transpose %53 {columns = 4 : i32, rows = 4 : i32} : vector<16xi32> -> vector<16xi32>
        %265 = arith.minf %cst_0, %cst_0 : f16
        memref.copy %alloc, %alloc_14 : memref<16xi16> to memref<16xi16>
        %266 = vector.bitcast %19 : vector<3xf32> to vector<3xf32>
        %267 = vector.matrix_multiply %19, %19 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %268 = arith.divui %c0_i32, %c372691768_i32 : i32
        memref.store %cst_6, %alloc_21[%c0] : memref<1xf16>
        %269 = math.rsqrt %12 : tensor<16xf16>
        %270 = math.floor %20 : tensor<f32>
        %271 = index.maxu %c12, %49
        scf.yield %cst_4 : f16
      }
      case 3 {
        %258 = index.maxu %c6, %c12
        %259 = math.ipowi %splat, %0 : tensor<1xi32>
        %260 = memref.atomic_rmw minf %cst_7, %alloc_9[%c0, %c12] : (f32, memref<1x16xf32>) -> f32
        %261 = arith.minui %c0_i32, %c372691768_i32 : i32
        %262 = bufferization.to_tensor %alloc_23 : memref<f16>
        %263 = arith.remui %false_5, %false_5 : i1
        %264 = math.log %4 : tensor<16xf16>
        %alloc_65 = memref.alloc() : memref<1x16xi16>
        %265 = affine.max affine_map<(d0) -> (d0, d0 mod 128 + d0)>(%45)
        %266 = arith.remui %c0_i32_25, %c767048103_i32 : i32
        %267 = math.absf %cst_7 : f32
        %collapsed_66 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %53, %53, %c0_i32 : vector<16xi32>, vector<16xi32> into i32
        %269 = vector.broadcast %false : i1 to vector<16x1xi1>
        %270 = vector.broadcast %false_5 : i1 to vector<1xi1>
        %dest_67, %accumulated_value_68 = vector.scan <maxui>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<16x1xi1>, vector<1xi1>
        %271 = index.castu %c4 : index to i32
        %272 = vector.flat_transpose %19 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        scf.yield %cst : f16
      }
      case 4 {
        %258 = index.maxu %45, %49
        %rank_65 = tensor.rank %10 : tensor<1x16xi1>
        %259 = vector.broadcast %c11478_i16 : i16 to vector<16xi16>
        %inserted_66 = tensor.insert %cst into %33[%c15] : tensor<16xf16>
        %260 = memref.realloc %alloc_22 : memref<1xf32> to memref<3xf32>
        %261 = index.casts %c518259140_i32 : i32 to index
        %262 = math.round %21 : tensor<f32>
        %263 = vector.splat %c7 : vector<1xindex>
        memref.tensor_store %6, %alloc_16 : memref<16xi32>
        %splat_67 = tensor.splat %cst_0 : tensor<1xf16>
        %inserted_68 = tensor.insert %c767048103_i32 into %0[%c0] : tensor<1xi32>
        bufferization.dealloc_tensor %4 : tensor<16xf16>
        %264 = math.expm1 %13 : tensor<16xf16>
        %265 = index.ceildivu %c8, %c14
        %266 = vector.splat %cst_6 : vector<16xf16>
        %splat_69 = tensor.splat %c0_i32_25 : tensor<1xi32>
        scf.yield %cst_4 : f16
      }
      default {
        %258 = math.absi %c767048103_i32 : i32
        %259 = math.tan %3 : tensor<16xf32>
        %alloc_65 = memref.alloc() : memref<1xf16>
        memref.copy %alloc_21, %alloc_65 : memref<1xf16> to memref<1xf16>
        %260 = index.ceildivu %c7, %c2
        %261 = vector.reduction <minf>, %19 : vector<3xf32> into f32
        %262 = bufferization.to_memref %12 : memref<16xf16>
        %263 = vector.transpose %53, [0] : vector<16xi32> to vector<16xi32>
        %264 = arith.ceildivsi %c372691768_i32, %c372691768_i32 : i32
        %265 = math.sqrt %9 : tensor<16xf32>
        %266 = vector.reduction <maxf>, %19 : vector<3xf32> into f32
        %267 = vector.multi_reduction <add>, %19, %cst_3 [0] : vector<3xf32> to f32
        %268 = arith.ceildivsi %c0_i32_25, %c0_i32_25 : i32
        %cast_66 = tensor.cast %5 : tensor<16xi16> to tensor<?xi16>
        %269 = memref.atomic_rmw mins %c11478_i16, %alloc[%c3] : (i16, memref<16xi16>) -> i16
        %270 = memref.load %alloc_24[%c13] : memref<16xf32>
        %271 = arith.negf %267 : f32
        scf.yield %cst_4 : f16
      }
      %cast_62 = tensor.cast %8 : tensor<16xi32> to tensor<?xi32>
      %247 = math.fpowi %cst_2, %c0_i32 : f32, i32
      %248 = math.cttz %0 : tensor<1xi32>
      %c0_i64_63 = arith.constant 0 : i64
      affine.store %c0_i64_63, %alloc_10[%c2, %c14] : memref<1x16xi64>
      %249 = arith.cmpi uge, %c767048103_i32, %c767048103_i32 : i32
      %cast_64 = tensor.cast %splat : tensor<1xi32> to tensor<?xi32>
      %250 = math.expm1 %cst_4 : f16
      %251 = arith.remui %c518259140_i32, %c767048103_i32 : i32
      %252 = math.rsqrt %cst_3 : f32
      %253 = vector.reduction <mul>, %19 : vector<3xf32> into f32
      %254 = math.ctpop %6 : tensor<16xi32>
      %255 = math.powf %3, %9 : tensor<16xf32>
      %256 = memref.load %alloc_8[%c3] : memref<16xi64>
      %257 = math.fpowi %cst_4, %c767048103_i32 : f16, i32
      scf.yield
    }
    default {
      %245 = math.ipowi %5, %transposed : tensor<16xi16>
      %246 = arith.minf %cst_1, %cst_2 : f32
      %247 = tensor.empty() : tensor<16xf32>
      %mapped_62 = linalg.map ins(%alloc_12, %42, %alloc_24 : memref<16xf32>, memref<16xf32>, memref<16xf32>) outs(%247 : tensor<16xf32>)
        (%in: f32, %in_65: f32, %in_66: f32) {
          %257 = vector.multi_reduction <maxf>, %19, %19 [] : vector<3xf32> to vector<3xf32>
          %258 = math.ceil %expanded : tensor<16x1xf16>
          %splat_67 = tensor.splat %false : tensor<1x16xi1>
          memref.assume_alignment %alloc_22, 8 : memref<1xf32>
          %259 = arith.subi %c518259140_i32, %c0_i32 : i32
          %260 = vector.bitcast %53 : vector<16xi32> to vector<16xi32>
          %261 = math.ipowi %c0_i32_25, %c372691768_i32 : i32
          %262 = index.ceildivs %45, %37
          %263 = arith.addf %in_66, %in : f32
          %264 = bufferization.to_memref %20 : memref<f32>
          %265 = vector.broadcast %cst_2 : f32 to vector<16xf32>
          %266 = vector.fma %265, %265, %265 : vector<16xf32>
          %inserted_68 = tensor.insert %true into %7[%c11] : tensor<16xi1>
          %267 = index.casts %c10 : index to i32
          %268 = vector.load %alloc_17[%c0, %c0] : memref<1x16xi16>, vector<1xi16>
          %269 = math.log1p %20 : tensor<f32>
          %270 = arith.muli %c0_i32, %c518259140_i32 : i32
          %271 = vector.broadcast %cst_2 : f32 to vector<1x3xf32>
          %dest_69, %accumulated_value_70 = vector.scan <mul>, %271, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<1x3xf32>, vector<3xf32>
          memref.store %cst_0, %alloc_23[] : memref<f16>
          %272 = vector.reduction <maxf>, %19 : vector<3xf32> into f32
          %273 = math.rsqrt %in : f32
          %274 = vector.bitcast %266 : vector<16xf32> to vector<16xf32>
          %275 = memref.realloc %alloc_24 : memref<16xf32> to memref<16xf32>
          %276 = math.absf %4 : tensor<16xf16>
          %277 = math.floor %21 : tensor<f32>
          %278 = arith.floordivsi %true, %true : i1
          %279 = index.add %49, %c6
          %alloca = memref.alloca() : memref<16xi16>
          %280 = index.add %c2, %c0
          %281 = arith.andi %c372691768_i32, %c518259140_i32 : i32
          %282 = arith.minui %c518259140_i32, %c518259140_i32 : i32
          vector.print %53 : vector<16xi32>
          %283 = arith.ori %c767048103_i32, %c767048103_i32 : i32
          %cst_71 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_71 : f32
        }
      %248 = arith.remf %cst_2, %cst_3 : f32
      %249 = affine.if affine_set<(d0, d1) : (d1 + 32 >= 0, -(d1 + 32) >= 0, d0 >= 0, (d1 * 4) mod 64 >= 0)>(%c13, %c6) -> memref<16xi1> {
        %257 = math.cos %cst_7 : f32
        %258 = math.sqrt %9 : tensor<16xf32>
        %259 = bufferization.to_tensor %alloc_13 : memref<1xi64>
        %alloc_65 = memref.alloc() : memref<16xf16>
        %260 = index.floordivs %c0, %c15
        %261 = tensor.empty() : tensor<1x16xf16>
        %262 = vector.broadcast %cst_4 : f16 to vector<16xf16>
        %263 = vector.broadcast %false_5 : i1 to vector<16xi1>
        %264 = vector.gather %261[%c6, %c3] [%53], %263, %262 : tensor<1x16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %265 = arith.andi %c767048103_i32, %c0_i32_25 : i32
        %expanded_66 = tensor.expand_shape %4 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        affine.yield %alloc_11 : memref<16xi1>
      } else {
        %257 = arith.ceildivsi %c767048103_i32, %c0_i32 : i32
        %258 = index.floordivs %c5, %c5
        %259 = arith.divui %c372691768_i32, %c767048103_i32 : i32
        %260 = math.round %13 : tensor<16xf16>
        %261 = math.ipowi %5, %transposed : tensor<16xi16>
        %262 = bufferization.to_memref %20 : memref<f32>
        %263 = math.sqrt %cst_1 : f32
        %264 = math.ipowi %2, %10 : tensor<1x16xi1>
        affine.yield %alloc_11 : memref<16xi1>
      }
      %250 = index.divs %c9, %c8
      %251 = arith.minf %cst, %cst_0 : f16
      memref.tensor_store %3, %42 : memref<16xf32>
      %252 = math.tanh %cst_0 : f16
      %splat_63 = tensor.splat %c372691768_i32 : tensor<1x16xi32>
      %253 = arith.minf %cst_2, %cst_7 : f32
      %254 = affine.apply affine_map<(d0, d1, d2) -> (((-d2) floordiv 4) mod 2)>(%40, %c8, %c9)
      %collapsed_64 = tensor.collapse_shape %splat_63 [[0, 1]] : tensor<1x16xi32> into tensor<16xi32>
      %255 = memref.realloc %alloc_24 : memref<16xf32> to memref<16xf32>
      %256 = vector.extract %19[0] : vector<3xf32>
      bufferization.dealloc_tensor %2 : tensor<1x16xi1>
    }
    bufferization.dealloc_tensor %expanded : tensor<16x1xf16>
    %54 = math.ipowi %c0_i32, %c767048103_i32 : i32
    %55 = arith.minf %cst_4, %cst : f16
    %56 = affine.max affine_map<(d0, d1) -> (-d1 + 16)>(%c12, %c0)
    %57 = math.sqrt %cst_0 : f16
    %58 = arith.floordivsi %c518259140_i32, %c0_i32 : i32
    %59 = arith.ori %c11478_i16, %c11478_i16 : i16
    %60 = arith.subi %c767048103_i32, %c0_i32_25 : i32
    memref.assume_alignment %alloc_22, 8 : memref<1xf32>
    %61 = math.log1p %12 : tensor<16xf16>
    %62 = vector.extract_strided_slice %19 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
    %63 = memref.atomic_rmw mins %c518259140_i32, %alloc_16[%c10] : (i32, memref<16xi32>) -> i32
    %64 = arith.maxsi %c0_i32_25, %c0_i32_25 : i32
    %65 = math.fpowi %cst_0, %c518259140_i32 : f16, i32
    %66 = arith.minui %c27529_i16, %c27529_i16 : i16
    %67 = math.roundeven %cst_7 : f32
    %68 = index.add %40, %c13
    %69 = index.add %c4, %c0
    %alloc_27 = memref.alloc() : memref<16xi32>
    memref.assume_alignment %alloc_20, 2 : memref<1xf32>
    %70 = arith.minui %c27529_i16, %c27529_i16 : i16
    %splat_28 = tensor.splat %c372691768_i32 : tensor<1xi32>
    %true_29 = index.bool.constant true
    %71 = arith.xori %true, %false : i1
    %72 = memref.load %alloc_11[%c7] : memref<16xi1>
    %cst_30 = arith.constant 9.408000e+03 : f16
    %73 = tensor.empty() : tensor<16xi64>
    %c1_i64 = arith.constant 1 : i64
    %74 = vector.broadcast %c1_i64 : i64 to vector<1x16xi64>
    %75 = vector.broadcast %true_29 : i1 to vector<1x16xi1>
    %76 = vector.broadcast %c0_i32_25 : i32 to vector<1x16xi32>
    %77 = vector.gather %73[%c5] [%76], %75, %74 : tensor<16xi64>, vector<1x16xi32>, vector<1x16xi1>, vector<1x16xi64> into vector<1x16xi64>
    memref.assume_alignment %alloc_21, 8 : memref<1xf16>
    %78 = math.powf %21, %21 : tensor<f32>
    %alloc_31 = memref.alloc() : memref<1xi32>
    %splat_32 = tensor.splat %c0_i32 : tensor<16xi32>
    memref.copy %alloc, %alloc_14 : memref<16xi16> to memref<16xi16>
    %79 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
    %dest_33, %accumulated_value_34 = vector.scan <or>, %77, %79 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
    %80 = index.add %37, %c1
    %81 = math.ctlz %false_5 : i1
    %82 = vector.splat %c2 : vector<16xindex>
    %83 = arith.divf %cst_7, %cst_7 : f32
    %84 = vector.broadcast %cst_6 : f16 to vector<1x16xf16>
    %85 = index.divu %80, %37
    %cast = tensor.cast %12 : tensor<16xf16> to tensor<?xf16>
    bufferization.dealloc_tensor %4 : tensor<16xf16>
    %86 = math.ipowi %c518259140_i32, %c372691768_i32 : i32
    %87 = vector.multi_reduction <add>, %19, %cst_2 [0] : vector<3xf32> to f32
    %88 = math.round %12 : tensor<16xf16>
    %89 = tensor.empty() : tensor<1xi32>
    %mapped_35 = linalg.map ins(%splat_28 : tensor<1xi32>) outs(%89 : tensor<1xi32>)
      (%in: i32) {
        %245 = arith.divui %c11478_i16, %c27529_i16 : i16
        %246 = arith.andi %c1_i64, %c1_i64 : i64
        %247 = index.divu %c12, %c1
        %248 = index.sizeof
        bufferization.dealloc_tensor %14 : tensor<1x16xi1>
        %249 = vector.broadcast %cst_3 : f32 to vector<16xf32>
        %250 = vector.fma %249, %249, %249 : vector<16xf32>
        %251 = vector.broadcast %true : i1 to vector<1x16xi1>
        %252 = arith.remf %cst_4, %cst_4 : f16
        %253 = arith.maxui %c1_i64, %c1_i64 : i64
        %254 = math.tan %20 : tensor<f32>
        %255 = index.maxu %68, %c2
        %256 = arith.ori %false, %true : i1
        %257 = index.ceildivu %c10, %37
        %rank_62 = tensor.rank %13 : tensor<16xf16>
        %258 = math.absf %87 : f32
        %259 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
          affine.store %c27529_i16, %alloc_14[%c12] : memref<16xi16>
          %273 = math.expm1 %expanded : tensor<16x1xf16>
          %274 = math.ctlz %c11478_i16 : i16
          %275 = bufferization.to_tensor %alloc_19 : memref<16xi32>
          %rank_66 = tensor.rank %16 : tensor<16xi32>
          %276 = math.ctlz %c0_i32 : i32
          memref.store %c0_i32_25, %alloc_16[%c3] : memref<16xi32>
          %277 = arith.floordivsi %true_29, %true : i1
          scf.condition(%false) %cst_3 : f32
        } do {
        ^bb0(%arg1: f32):
          %273 = arith.minf %arg1, %cst_1 : f32
          %274 = vector.bitcast %19 : vector<3xf32> to vector<3xf32>
          %275 = index.mul %c4, %c12
          %276 = arith.addf %cst_0, %cst_4 : f16
          %277 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
          %dest_66, %accumulated_value_67 = vector.scan <minui>, %74, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<1x16xi64>, vector<16xi64>
          %278 = index.add %255, %255
          %279 = index.divs %80, %c13
          %280 = index.divs %c6, %279
          %281 = index.casts %56 : index to i32
          %alloc_68 = memref.alloc() : memref<1x16xi1>
          memref.tensor_store %10, %alloc_68 : memref<1x16xi1>
          %282 = vector.multi_reduction <add>, %250, %cst_2 [0] : vector<16xf32> to f32
          memref.copy %alloc, %alloc_14 : memref<16xi16> to memref<16xi16>
          memref.store %c11478_i16, %alloc[%c11] : memref<16xi16>
          %283 = arith.subi %c11478_i16, %c27529_i16 : i16
          %284 = arith.floordivsi %false_5, %true_29 : i1
          %rank_69 = tensor.rank %6 : tensor<16xi32>
          scf.yield %282 : f32
        }
        %260 = index.casts %c11478_i16 : i16 to index
        %261 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + d2 - 1, d2, d2 - (d0 + d2 - 1))>(%c15, %c6, %255, %247)
        %262 = arith.remui %c27529_i16, %c11478_i16 : i16
        %263 = index.floordivs %69, %c1
        %rank_63 = tensor.rank %2 : tensor<1x16xi1>
        %264 = bufferization.to_memref %11 : memref<1xf16>
        %265 = math.rsqrt %cst_7 : f32
        %266 = scf.execute_region -> tensor<16xi16> {
          %273 = affine.max affine_map<(d0, d1) -> (d0 - 16, 0)>(%56, %248)
          %274 = affine.max affine_map<(d0, d1) -> (0, (d1 mod 8) * 8, -(d1 mod 8) + 20)>(%c2, %40)
          %275 = math.roundeven %cst_6 : f16
          %alloc_66 = memref.alloc() : memref<1xi32>
          memref.tensor_store %89, %alloc_66 : memref<1xi32>
          %276 = arith.negf %cst_1 : f32
          %277 = index.divu %49, %c2
          %278 = arith.subi %c27529_i16, %c11478_i16 : i16
          %rank_67 = tensor.rank %0 : tensor<1xi32>
          %collapsed_68 = tensor.collapse_shape %2 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
          %279 = memref.load %alloc_14[%c13] : memref<16xi16>
          %collapsed_69 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
          memref.tensor_store %16, %alloc_19 : memref<16xi32>
          %alloc_70 = memref.alloc() : memref<1x16xi1>
          memref.tensor_store %14, %alloc_70 : memref<1x16xi1>
          %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %250, %250, %cst_2 : vector<16xf32>, vector<16xf32> into f32
          %281 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
          %dest_71, %accumulated_value_72 = vector.scan <minsi>, %74, %281 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
          %282 = math.ctlz %c27529_i16 : i16
          scf.yield %5 : tensor<16xi16>
        }
        %267 = index.divu %c10, %248
        %268 = math.tanh %cst_0 : f16
        %269 = math.atan2 %13, %12 : tensor<16xf16>
        %270 = math.atan %28 : tensor<16xf16>
        memref.tensor_store %73, %alloc_8 : memref<16xi64>
        %271 = vector.splat %80 : vector<16xindex>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %250, %249, %87 : vector<16xf32>, vector<16xf32> into f32
        %rank_64 = tensor.rank %expanded : tensor<16x1xf16>
        %c0_i32_65 = arith.constant 0 : i32
        linalg.yield %c0_i32_65 : i32
      }
    %90 = affine.max affine_map<(d0, d1) -> ((((d0 mod 4) ceildiv 2) floordiv 4) * 4)>(%c9, %49)
    %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
    %91 = arith.addf %cst_4, %cst_6 : f16
    %92 = arith.cmpi ne, %c0_i32, %c0_i32 : i32
    %93 = vector.matrix_multiply %53, %53 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
    %94 = vector.broadcast %false : i1 to vector<16x16xi1>
    %95 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %75, %75, %94 : vector<1x16xi1>, vector<1x16xi1> into vector<16x16xi1>
    %96 = index.maxu %56, %56
    %97 = vector.insertelement %c518259140_i32, %53[%c10 : index] : vector<16xi32>
    %cst_36 = arith.constant 1.65247155E+9 : f32
    %extracted = tensor.extract %0[%c0] : tensor<1xi32>
    %98 = arith.negf %cst_2 : f32
    %99 = vector.insertelement %cst_2, %62[%68 : index] : vector<2xf32>
    %100 = arith.minsi %c0_i32, %extracted : i32
    %101 = index.mul %56, %c15
    %expanded_37 = tensor.expand_shape %18 [[0, 1]] : tensor<16xi16> into tensor<16x1xi16>
    %102 = scf.index_switch %c12 -> vector<16xi32> 
    case 1 {
      %245 = math.expm1 %cst_7 : f32
      %246 = math.tanh %28 : tensor<16xf16>
      %alloca = memref.alloca() : memref<16xf16>
      %247 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %53, %76, %93 : vector<16xi32>, vector<1x16xi32> into vector<1xi32>
      %248 = math.copysign %cst_0, %cst_4 : f16
      %249 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
      %dest_62, %accumulated_value_63 = vector.scan <or>, %77, %249 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
      bufferization.dealloc_tensor %1 : tensor<16xi32>
      %250 = math.ctlz %15 : tensor<16xi1>
      %251 = math.absi %14 : tensor<1x16xi1>
      %252 = arith.cmpi ugt, %c1_i64, %c1_i64 : i64
      %253 = math.expm1 %cst_3 : f32
      %254 = math.expm1 %12 : tensor<16xf16>
      %false_64 = index.bool.constant false
      %splat_65 = tensor.splat %c1_i64 : tensor<16xi64>
      %255 = index.casts %c6 : index to i32
      %cst_66 = arith.constant 1.000000e+00 : f32
      %cst_67 = arith.constant 0.000000e+00 : f32
      %256 = vector.transfer_read %alloc_15[%c3], %cst_67 : memref<16xf32>, vector<f32>
      scf.yield %53 : vector<16xi32>
    }
    default {
      %245 = affine.max affine_map<(d0, d1) -> (d0, -d1, -((-d1) floordiv 4), (-d1) floordiv 4)>(%40, %40)
      %collapsed_62 = tensor.collapse_shape %expanded_37 [[0, 1]] : tensor<16x1xi16> into tensor<16xi16>
      %246 = arith.addi %false_5, %false_5 : i1
      bufferization.dealloc_tensor %0 : tensor<1xi32>
      %247 = vector.broadcast %cst_7 : f32 to vector<1xf32>
      %248 = vector.broadcast %true : i1 to vector<1xi1>
      %249 = vector.gather %alloc_9[%56, %c9] [%93], %248, %247 : memref<1x16xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %cst_63 = arith.constant 0x4D2EFB32 : f32
      %250 = math.ctpop %c27529_i16 : i16
      %251 = arith.andi %c0_i32_25, %extracted : i32
      %252 = vector.transpose %62, [0] : vector<2xf32> to vector<2xf32>
      %253 = arith.muli %false, %false_5 : i1
      %254 = vector.bitcast %247 : vector<1xf32> to vector<1xf32>
      %255 = arith.minsi %c1_i64, %c1_i64 : i64
      %256 = bufferization.to_memref %5 : memref<16xi16>
      %257 = arith.andi %false, %false_5 : i1
      %258 = arith.minf %cst_4, %cst_6 : f16
      %cast_64 = tensor.cast %8 : tensor<16xi32> to tensor<?xi32>
      scf.yield %53 : vector<16xi32>
    }
    %103 = arith.xori %c0_i32, %extracted : i32
    %104 = math.absf %4 : tensor<16xf16>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32_38 = arith.constant 0 : i32
    %105 = vector.transfer_read %17[%c5], %c0_i32_38 : tensor<16xi32>, vector<i32>
    %true_39 = index.bool.constant true
    %106 = vector.create_mask %90 : vector<16xi1>
    %collapsed_40 = tensor.collapse_shape %2 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
    %107 = index.casts %c0_i32 : i32 to index
    %108 = arith.andi %c1_i32, %c372691768_i32 : i32
    %109 = math.ctlz %true_29 : i1
    scf.execute_region {
      affine.store %c1_i64, %alloc_10[%c8, %c8] : memref<1x16xi64>
      %245 = affine.max affine_map<(d0) -> (d0 * 256, d0 * -2)>(%69)
      %246 = vector.matrix_multiply %53, %53 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
      %247 = vector.insertelement %c0_i32_25, %53[%90 : index] : vector<16xi32>
      memref.tensor_store %7, %alloc_11 : memref<16xi1>
      %248 = arith.minsi %true_39, %true_39 : i1
      bufferization.dealloc_tensor %8 : tensor<16xi32>
      %249 = math.cttz %1 : tensor<16xi32>
      %250 = math.roundeven %4 : tensor<16xf16>
      %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_2 : vector<3xf32>, vector<3xf32> into f32
      %252 = memref.load %42[%c3] : memref<16xf32>
      %253 = index.divs %56, %96
      %254 = vector.broadcast %cst : f16 to vector<16xf16>
      %255 = vector.gather %alloc_18[%69] [%53], %106, %254 : memref<16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
      %256 = memref.load %alloc_13[%c0] : memref<1xi64>
      %257 = arith.xori %c0_i32, %extracted : i32
      %258 = math.ceil %12 : tensor<16xf16>
      scf.yield
    }
    %110 = math.ctlz %2 : tensor<1x16xi1>
    %111 = affine.load %alloc_9[%c2, %c14] : memref<1x16xf32>
    %112 = index.castu %c9 : index to i32
    %113 = index.sub %49, %c13
    %c1_i32_41 = arith.constant 1 : i32
    %114 = vector.transfer_read %splat[%85], %c1_i32_41 : tensor<1xi32>, vector<i32>
    %115 = index.divs %c0, %107
    %116 = arith.cmpf ugt, %cst_4, %cst_0 : f16
    %117 = arith.remui %c1_i64, %c1_i64 : i64
    %118 = vector.bitcast %84 : vector<1x16xf16> to vector<1x16xf16>
    %119 = vector.bitcast %19 : vector<3xf32> to vector<3xf32>
    %120 = affine.if affine_set<(d0, d1) : (d0 * 4 >= 0, d1 mod 2 + d1 + 2 == 0, -(d1 + 32) == 0)>(%c11, %c11) -> memref<1x16xi1> {
      %245 = vector.broadcast %cst_6 : f16 to vector<1xf16>
      %246 = arith.cmpf oge, %cst_0, %cst_6 : f16
      %247 = bufferization.to_memref %5 : memref<16xi16>
      %alloca = memref.alloca() : memref<1xi1>
      %248 = memref.atomic_rmw assign %cst_7, %alloc_22[%c0] : (f32, memref<1xf32>) -> f32
      %collapsed_62 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
      %249 = vector.multi_reduction <or>, %93, %93 [] : vector<1xi32> to vector<1xi32>
      %250 = vector.flat_transpose %245 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %alloc_63 = memref.alloc() : memref<1x16xi1>
      affine.yield %alloc_63 : memref<1x16xi1>
    } else {
      %245 = arith.minf %cst_2, %cst_7 : f32
      %246 = vector.broadcast %115 : index to vector<1xindex>
      %247 = vector.broadcast %true : i1 to vector<1xi1>
      vector.scatter %alloc_16[%c12] [%246], %247, %93 : memref<16xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %248 = affine.if affine_set<(d0, d1) : (16 == 0, (d1 floordiv 128) mod 128 >= 0, 144 >= 0)>(%c1, %c9) -> i32 {
        %257 = vector.broadcast %c1_i64 : i64 to vector<16x16xi64>
        %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %77, %77, %257 : vector<1x16xi64>, vector<1x16xi64> into vector<16x16xi64>
        %259 = math.tanh %28 : tensor<16xf16>
        %260 = math.absf %cst_4 : f16
        %261 = math.ctlz %6 : tensor<16xi32>
        %262 = index.divs %49, %115
        %263 = vector.broadcast %c1_i32 : i32 to vector<16xi32>
        %264 = arith.ceildivsi %false_5, %false_5 : i1
        %alloca = memref.alloca() : memref<1x16xf16>
        affine.yield %c1_i32_41 : i32
      } else {
        %257 = arith.subi %c0_i32, %c1_i32 : i32
        %258 = vector.broadcast %c11478_i16 : i16 to vector<16xi16>
        %259 = arith.divui %c0_i32_25, %c0_i32 : i32
        %260 = memref.realloc %alloc_18 : memref<16xf16> to memref<1xf16>
        %261 = vector.load %42[%c3] : memref<16xf32>, vector<1x16xf32>
        %262 = bufferization.clone %alloc : memref<16xi16> to memref<16xi16>
        %263 = math.rsqrt %cst_0 : f16
        %264 = math.round %9 : tensor<16xf32>
        affine.yield %c1_i32_41 : i32
      }
      %249 = tensor.empty() : tensor<3x3x3xi32>
      %250 = tensor.empty() : tensor<3x3xi32>
      %alloc_62 = memref.alloc() : memref<3xi32>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250, %alloc_62 : tensor<3x3xi32>, memref<3xi32>) outs(%249 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_64: i32, %out: i32):
        memref.tensor_store %11, %alloc_21 : memref<1xf16>
        %257 = index.divs %c9, %c3
        %258 = math.ctpop %expanded_37 : tensor<16x1xi16>
        %259 = index.divu %c6, %c10
        memref.store %c1_i64, %alloc_10[%c0, %c13] : memref<1x16xi64>
        %260 = index.casts %c27529_i16 : i16 to index
        %261 = memref.realloc %alloc_20 : memref<1xf32> to memref<16xf32>
        %262 = arith.minf %cst_4, %cst_4 : f16
        %263 = math.ipowi %10, %14 : tensor<1x16xi1>
        %264 = bufferization.to_tensor %alloc_20 : memref<1xf32>
        %265 = bufferization.to_memref %4 : memref<16xf16>
        %266 = math.log %cst_1 : f32
        %267 = math.fma %28, %13, %13 : tensor<16xf16>
        %inserted_65 = tensor.insert %c27529_i16 into %18[%c6] : tensor<16xi16>
        %268 = memref.load %alloc_17[%c0, %c3] : memref<1x16xi16>
        %269 = index.casts %in_64 : i32 to index
        %270 = bufferization.clone %alloc_14 : memref<16xi16> to memref<16xi16>
        %271 = math.tan %28 : tensor<16xf16>
        %expanded_66 = tensor.expand_shape %4 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        %272 = math.cos %9 : tensor<16xf32>
        %273 = math.round %33 : tensor<16xf16>
        %274 = bufferization.to_memref %8 : memref<16xi32>
        %275 = math.round %3 : tensor<16xf32>
        %276 = math.fpowi %cst_0, %c1_i32_41 : f16, i32
        memref.assume_alignment %alloc_9, 8 : memref<1x16xf32>
        %277 = arith.floordivsi %c11478_i16, %c27529_i16 : i16
        %alloca = memref.alloca() : memref<1xi64>
        %278 = affine.load %alloc_11[%c6] : memref<16xi1>
        %279 = vector.load %alloc_19[%c15] : memref<16xi32>, vector<1xi32>
        %c1_i64_67 = arith.constant 1 : i64
        %280 = vector.transfer_read %alloc_13[%c11], %c1_i64_67 : memref<1xi64>, vector<i64>
        %281 = arith.floordivsi %false, %true_39 : i1
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %119, %19, %cst_2 : vector<3xf32>, vector<3xf32> into f32
        linalg.yield %extracted : i32
      } -> tensor<3x3x3xi32>
      %252 = math.rsqrt %cst_7 : f32
      %253 = arith.maxui %c518259140_i32, %c767048103_i32 : i32
      %254 = vector.broadcast %c0_i32 : i32 to vector<16x16xi32>
      %255 = vector.outerproduct %53, %53, %254 {kind = #vector.kind<xor>} : vector<16xi32>, vector<16xi32>
      %256 = scf.execute_region -> i32 {
        bufferization.dealloc_tensor %5 : tensor<16xi16>
        %257 = arith.xori %true_29, %true_39 : i1
        %alloca = memref.alloca() : memref<16xf16>
        %258 = arith.shli %c518259140_i32, %c372691768_i32 : i32
        %alloca_64 = memref.alloca() : memref<16xi1>
        %259 = vector.broadcast %56 : index to vector<3xindex>
        %260 = vector.broadcast %false : i1 to vector<3xi1>
        vector.scatter %alloc_11[%c5] [%259], %260, %260 : memref<16xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %261 = index.sub %c0, %c9
        %262 = arith.maxui %extracted, %extracted : i32
        %alloc_65 = memref.alloc() : memref<16xi32>
        %263 = index.add %40, %115
        %264 = memref.load %alloc_21[%c0] : memref<1xf16>
        %265 = memref.realloc %alloc_21 : memref<1xf16> to memref<3xf16>
        %266 = arith.ceildivsi %c11478_i16, %c27529_i16 : i16
        %alloc_66 = memref.alloc() : memref<1x16xi1>
        memref.tensor_store %10, %alloc_66 : memref<1x16xi1>
        %267 = arith.remui %c0_i32_25, %c767048103_i32 : i32
        %268 = memref.realloc %alloc_22 : memref<1xf32> to memref<3xf32>
        scf.yield %c0_i32 : i32
      }
      %alloc_63 = memref.alloc() : memref<1x16xi1>
      affine.yield %alloc_63 : memref<1x16xi1>
    }
    %121 = memref.load %alloc_23[] : memref<f16>
    %122 = arith.maxsi %true_39, %true : i1
    %c1_i64_42 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %123 = vector.transfer_read %alloc_13[%96], %c0_i64 : memref<1xi64>, vector<i64>
    %124 = vector.multi_reduction <mul>, %62, %cst_7 [0] : vector<2xf32> to f32
    %125 = index.add %80, %c2
    %126 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 128 >= 0, d2 ceildiv 4 == 0, d1 floordiv 128 == 0)>(%c14, %c7, %c1) -> i1 {
      %245 = arith.mulf %cst_2, %cst_2 : f32
      %alloc_62 = memref.alloc() : memref<16x3xi1>
      %246 = tensor.empty() : tensor<1x3xi1>
      %247 = linalg.matmul ins(%14, %alloc_62 : tensor<1x16xi1>, memref<16x3xi1>) outs(%246 : tensor<1x3xi1>) -> tensor<1x3xi1>
      memref.tensor_store %8, %alloc_19 : memref<16xi32>
      %248 = math.log10 %11 : tensor<1xf16>
      %249 = scf.execute_region -> memref<16xi64> {
        %253 = arith.muli %true_29, %true_29 : i1
        %254 = math.atan2 %9, %3 : tensor<16xf32>
        %255 = math.fpowi %9, %8 : tensor<16xf32>, tensor<16xi32>
        %256 = index.ceildivu %c3, %90
        %257 = affine.load %alloc_21[%c3] : memref<1xf16>
        %258 = arith.cmpi ule, %c0_i32_25, %c767048103_i32 : i32
        %259 = arith.mulf %124, %cst_1 : f32
        %260 = index.divu %90, %80
        %261 = vector.bitcast %119 : vector<3xf32> to vector<3xf32>
        %262 = arith.negf %cst : f16
        %splat_63 = tensor.splat %cst_1 : tensor<1xf32>
        %263 = memref.load %alloc_17[%c0, %c3] : memref<1x16xi16>
        %264 = math.tanh %11 : tensor<1xf16>
        %265 = math.rsqrt %87 : f32
        %266 = arith.addf %cst_3, %124 : f32
        %267 = vector.shuffle %53, %93 [3, 6, 7, 10, 12, 15, 16] : vector<16xi32>, vector<1xi32>
        scf.yield %alloc_8 : memref<16xi64>
      }
      %250 = arith.xori %true_29, %false : i1
      %251 = math.copysign %cst_1, %cst_3 : f32
      %252 = index.floordivs %c7, %c13
      affine.yield %true : i1
    } else {
      %245 = arith.remui %c372691768_i32, %c1_i32_41 : i32
      %246 = math.tanh %4 : tensor<16xf16>
      %247 = index.ceildivu %c7, %90
      %248 = arith.mulf %cst_1, %87 : f32
      %249 = bufferization.to_memref %7 : memref<16xi1>
      %250 = vector.reduction <mul>, %62 : vector<2xf32> into f32
      %251 = vector.flat_transpose %119 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      scf.index_switch %c10 
      case 1 {
        %252 = arith.cmpf olt, %cst_0, %cst : f16
        %253 = math.ctpop %7 : tensor<16xi1>
        %254 = arith.ceildivsi %c27529_i16, %c27529_i16 : i16
        %rank_62 = tensor.rank %7 : tensor<16xi1>
        %255 = bufferization.to_memref %3 : memref<16xf32>
        %256 = index.divu %rank_62, %40
        %257 = arith.divui %extracted, %c0_i32_25 : i32
        %258 = arith.ori %c27529_i16, %c11478_i16 : i16
        %259 = arith.ceildivsi %c0_i32_25, %c518259140_i32 : i32
        %260 = arith.shli %c1_i32, %extracted : i32
        %261 = index.casts %c0_i32_25 : i32 to index
        %262 = arith.divui %extracted, %c767048103_i32 : i32
        %263 = vector.shuffle %118, %84 [1] : vector<1x16xf16>, vector<1x16xf16>
        %264 = tensor.empty() : tensor<16xi64>
        %265 = math.absf %124 : f32
        %splat_63 = tensor.splat %c372691768_i32 : tensor<1x16xi32>
        scf.yield
      }
      case 2 {
        %252 = arith.subi %extracted, %c372691768_i32 : i32
        %253 = arith.addf %cst_6, %cst_0 : f16
        %254 = vector.multi_reduction <or>, %76, %53 [0] : vector<1x16xi32> to vector<16xi32>
        %255 = index.divu %96, %247
        %256 = math.tanh %124 : f32
        %257 = arith.subi %c1_i32_41, %c767048103_i32 : i32
        %cast_62 = tensor.cast %1 : tensor<16xi32> to tensor<?xi32>
        %258 = vector.broadcast %cst_7 : f32 to vector<3x3xf32>
        %259 = vector.outerproduct %251, %19, %258 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
        %260 = bufferization.to_memref %13 : memref<16xf16>
        %c1_i32_63 = arith.constant 1 : i32
        %c0_i32_64 = arith.constant 0 : i32
        %261 = vector.transfer_read %6[%c9], %c0_i32_64 : tensor<16xi32>, vector<i32>
        %262 = math.log10 %87 : f32
        %263 = vector.shuffle %93, %93 [1] : vector<1xi32>, vector<1xi32>
        %264 = index.ceildivu %37, %c9
        %265 = arith.divf %cst_7, %cst_1 : f32
        %266 = arith.minsi %c0_i32, %c0_i32_25 : i32
        %267 = vector.broadcast %cst : f16 to vector<1xf16>
        %dest_65, %accumulated_value_66 = vector.scan <mul>, %84, %267 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xf16>, vector<1xf16>
        scf.yield
      }
      default {
        %252 = index.add %c7, %115
        %253 = bufferization.to_memref %transposed : memref<16xi16>
        %254 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %255 = vector.fma %254, %254, %254 : vector<1xf32>
        %256 = arith.xori %c372691768_i32, %c0_i32_25 : i32
        memref.store %cst_7, %alloc_12[%c14] : memref<16xf32>
        memref.tensor_store %73, %alloc_8 : memref<16xi64>
        %257 = math.ctpop %collapsed : tensor<16xi1>
        bufferization.dealloc_tensor %7 : tensor<16xi1>
        %258 = math.round %124 : f32
        %259 = arith.minf %cst_2, %cst_3 : f32
        %260 = index.divs %252, %c9
        %261 = arith.cmpf ule, %cst_3, %111 : f32
        %262 = arith.andi %c1_i32, %extracted : i32
        %c1946023497_i64 = arith.constant 1946023497 : i64
        %cast_62 = tensor.cast %expanded : tensor<16x1xf16> to tensor<?x?xf16>
        %263 = vector.reduction <mul>, %254 : vector<1xf32> into f32
      }
      affine.yield %true_39 : i1
    }
    %127 = math.absf %cst : f16
    %128 = arith.divui %c518259140_i32, %c767048103_i32 : i32
    %129 = vector.broadcast %c13 : index to vector<1xindex>
    %130 = vector.broadcast %false : i1 to vector<1xi1>
    %131 = vector.broadcast %c27529_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_14[%c5] [%129], %130, %131 : memref<16xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    scf.index_switch %c0 
    case 1 {
      %245 = math.ipowi %10, %10 : tensor<1x16xi1>
      %246 = vector.extract %119[1] : vector<3xf32>
      %247 = vector.load %alloc_21[%c0] : memref<1xf16>, vector<16xf16>
      %248 = math.cttz %17 : tensor<16xi32>
      %249 = index.divs %125, %c4
      %250 = arith.minf %cst_6, %cst_4 : f16
      %251 = math.ctlz %14 : tensor<1x16xi1>
      %252 = arith.cmpf ueq, %cst_7, %cst_3 : f32
      %253 = index.divu %c11, %115
      %254 = arith.andi %false, %true_29 : i1
      %255 = vector.bitcast %247 : vector<16xf16> to vector<16xf16>
      %256 = index.ceildivu %107, %c7
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %247, %247, %cst_6 : vector<16xf16>, vector<16xf16> into f16
      %258 = math.absf %cst_3 : f32
      %259 = vector.bitcast %247 : vector<16xf16> to vector<16xf16>
      %alloc_62 = memref.alloc() : memref<16xf16>
      memref.copy %alloc_18, %alloc_62 : memref<16xf16> to memref<16xf16>
      scf.yield
    }
    case 2 {
      %generated_62 = tensor.generate %96 {
      ^bb0(%arg1: index):
        %alloca = memref.alloca() : memref<16xi16>
        %256 = vector.shuffle %19, %119 [2] : vector<3xf32>, vector<3xf32>
        %257 = math.ctlz %73 : tensor<16xi64>
        %258 = arith.maxsi %true_39, %true_39 : i1
        tensor.yield %c1_i64 : i64
      } : tensor<?xi64>
      %245 = arith.shrui %true_29, %false_5 : i1
      %246 = vector.reduction <maxf>, %19 : vector<3xf32> into f32
      %247 = index.ceildivs %56, %c10
      %248 = arith.addf %cst_2, %cst_7 : f32
      %cast_63 = tensor.cast %33 : tensor<16xf16> to tensor<?xf16>
      %249 = arith.cmpf ule, %87, %111 : f32
      %250 = arith.cmpi sgt, %c27529_i16, %c27529_i16 : i16
      %extracted_64 = tensor.extract %17[%c5] : tensor<16xi32>
      %251 = index.divu %69, %40
      %252 = index.floordivs %c3, %c9
      memref.assume_alignment %alloc_13, 16 : memref<1xi64>
      scf.index_switch %69 
      case 1 {
        %256 = math.ctpop %c372691768_i32 : i32
        memref.tensor_store %9, %alloc_15 : memref<16xf32>
        %257 = index.castu %c0_i32 : i32 to index
        %258 = arith.subi %c1_i64_42, %c1_i64_42 : i64
        %259 = arith.maxui %extracted, %c767048103_i32 : i32
        bufferization.dealloc_tensor %8 : tensor<16xi32>
        %260 = math.exp %12 : tensor<16xf16>
        %261 = math.round %3 : tensor<16xf32>
        %262 = math.ipowi %8, %16 : tensor<16xi32>
        %263 = arith.remui %c0_i32, %c372691768_i32 : i32
        %264 = index.casts %c1_i32_41 : i32 to index
        %265 = vector.flat_transpose %93 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %cast_65 = tensor.cast %collapsed_40 : tensor<16xi1> to tensor<?xi1>
        %266 = vector.broadcast %113 : index to vector<16xindex>
        %267 = vector.broadcast %c11478_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_17[%c0, %c0] [%266], %106, %267 : memref<1x16xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        memref.copy %alloc_20, %alloc_22 : memref<1xf32> to memref<1xf32>
        %268 = arith.ori %c0_i32, %c1_i32_41 : i32
        scf.yield
      }
      case 2 {
        %256 = vector.broadcast %111 : f32 to vector<1x16xf32>
        %splat_65 = tensor.splat %false : tensor<16xi1>
        %257 = vector.extract %62[0] : vector<2xf32>
        %collapsed_66 = tensor.collapse_shape %expanded [[0, 1]] : tensor<16x1xf16> into tensor<16xf16>
        %258 = vector.broadcast %c1_i64 : i64 to vector<16x16xi64>
        %259 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %77, %74, %258 : vector<1x16xi64>, vector<1x16xi64> into vector<16x16xi64>
        %260 = vector.broadcast %cst_0 : f16 to vector<1xf16>
        %dest_67, %accumulated_value_68 = vector.scan <mul>, %118, %260 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xf16>, vector<1xf16>
        %261 = vector.insertelement %c0_i32, %53[%c1 : index] : vector<16xi32>
        %expanded_69 = tensor.expand_shape %8 [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
        %262 = arith.shrsi %true_39, %true_29 : i1
        %collapsed_70 = tensor.collapse_shape %expanded_37 [[0, 1]] : tensor<16x1xi16> into tensor<16xi16>
        %263 = arith.cmpi eq, %c0_i32, %c0_i32_25 : i32
        %264 = vector.create_mask %c14 : vector<16xi1>
        %265 = math.tanh %12 : tensor<16xf16>
        %266 = index.divs %c9, %c6
        bufferization.dealloc_tensor %5 : tensor<16xi16>
        %267 = vector.create_mask %c4, %c10 : vector<1x16xi1>
        scf.yield
      }
      default {
        %256 = arith.muli %c1_i32, %c1_i32_41 : i32
        %cst_65 = arith.constant 1.000000e+00 : f32
        %257 = vector.transfer_read %alloc_12[%c14], %cst_65 : memref<16xf32>, vector<f32>
        %258 = vector.matrix_multiply %106, %106 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
        %259 = vector.insert %true_29, %258 [0] : i1 into vector<1xi1>
        %260 = math.round %9 : tensor<16xf32>
        %rank_66 = tensor.rank %28 : tensor<16xf16>
        %261 = vector.load %alloc_19[%c12] : memref<16xi32>, vector<16xi32>
        %262 = arith.addf %cst_4, %cst_6 : f16
        %263 = math.log2 %11 : tensor<1xf16>
        %264 = math.log2 %12 : tensor<16xf16>
        %splat_67 = tensor.splat %c1_i64 : tensor<16xi64>
        %265 = vector.reduction <xor>, %93 : vector<1xi32> into i32
        %266 = index.castu %c767048103_i32 : i32 to index
        %267 = memref.realloc %alloc_15 : memref<16xf32> to memref<1xf32>
        %268 = math.fpowi %cst_65, %extracted_64 : f32, i32
        %269 = math.sqrt %cst_4 : f16
      }
      %253 = arith.andi %c0_i32, %extracted_64 : i32
      %254 = arith.andi %c372691768_i32, %c767048103_i32 : i32
      %255 = index.ceildivu %125, %c4
      scf.yield
    }
    default {
      %245 = vector.matrix_multiply %106, %106 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
      %246 = math.ctlz %splat : tensor<1xi32>
      %247 = index.ceildivs %c9, %c15
      %248 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %93, %93, %extracted : vector<1xi32>, vector<1xi32> into i32
      %inserted_62 = tensor.insert %extracted into %splat_32[%c2] : tensor<16xi32>
      %249 = math.absf %cst_3 : f32
      %250 = arith.remf %87, %cst_2 : f32
      %251 = arith.andi %false_5, %false_5 : i1
      %252 = arith.minf %cst_3, %cst_1 : f32
      affine.store %c27529_i16, %alloc_14[%c5] : memref<16xi16>
      %253 = arith.remf %cst_7, %87 : f32
      %254 = bufferization.to_memref %1 : memref<16xi32>
      %255 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 128 >= 0, d2 ceildiv 4 == 0, d1 floordiv 128 == 0)>(%c4, %c11, %c1) -> i32 {
        %259 = vector.load %alloc[%c9] : memref<16xi16>, vector<1x16xi16>
        %inserted_63 = tensor.insert %true into %2[%c0, %c8] : tensor<1x16xi1>
        %260 = vector.shuffle %84, %118 [0] : vector<1x16xf16>, vector<1x16xf16>
        %261 = arith.minf %cst_2, %124 : f32
        %inserted_64 = tensor.insert %c27529_i16 into %5[%c4] : tensor<16xi16>
        %262 = index.divs %68, %45
        %263 = vector.flat_transpose %93 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %alloc_65 = memref.alloc() : memref<16x16xi1>
        %264 = tensor.empty() : tensor<1x16xi1>
        %265 = linalg.matmul ins(%10, %alloc_65 : tensor<1x16xi1>, memref<16x16xi1>) outs(%264 : tensor<1x16xi1>) -> tensor<1x16xi1>
        affine.yield %c518259140_i32 : i32
      } else {
        %259 = arith.divui %c11478_i16, %c27529_i16 : i16
        %inserted_63 = tensor.insert %extracted into %1[%c5] : tensor<16xi32>
        %260 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%c11, %115, %c4)
        %261 = affine.load %alloc_20[%c8] : memref<1xf32>
        %262 = vector.load %alloc_19[%c6] : memref<16xi32>, vector<1xi32>
        %263 = memref.realloc %alloc_11 : memref<16xi1> to memref<3xi1>
        %264 = vector.transpose %75, [0, 1] : vector<1x16xi1> to vector<1x16xi1>
        %265 = vector.create_mask %c8 : vector<16xi1>
        affine.yield %c0_i32_25 : i32
      }
      %256 = vector.matrix_multiply %53, %53 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
      %257 = math.round %111 : f32
      %258 = vector.transpose %19, [0] : vector<3xf32> to vector<3xf32>
    }
    %132 = math.log10 %28 : tensor<16xf16>
    %133 = memref.load %alloc_15[%c14] : memref<16xf32>
    %134 = vector.bitcast %93 : vector<1xi32> to vector<1xi32>
    %inserted = tensor.insert %c767048103_i32 into %generated[%c0, %c0] : tensor<?x?xi32>
    %135 = index.casts %c0_i32_25 : i32 to index
    affine.store %cst_0, %alloc_18[%c0] : memref<16xf16>
    %136 = arith.remui %c518259140_i32, %c1_i32 : i32
    %rank = tensor.rank %14 : tensor<1x16xi1>
    %137 = vector.splat %c1_i64_42 : vector<1x16xi64>
    %138 = math.ceil %11 : tensor<1xf16>
    %139 = vector.flat_transpose %134 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %140 = index.floordivs %c10, %45
    %141 = vector.broadcast %c767048103_i32 : i32 to vector<i32>
    %142 = vector.transfer_write %141, %0[%49] : vector<i32>, tensor<1xi32>
    %143 = math.absf %87 : f32
    %144 = arith.ori %c1_i64_42, %c1_i64_42 : i64
    %cast_43 = tensor.cast %17 : tensor<16xi32> to tensor<?xi32>
    %145 = vector.broadcast %cst_6 : f16 to vector<16xf16>
    %dest_44, %accumulated_value_45 = vector.scan <minf>, %118, %145 {inclusive = true, reduction_dim = 0 : i64} : vector<1x16xf16>, vector<16xf16>
    %146 = tensor.empty() : tensor<16x3xi1>
    %147 = tensor.empty() : tensor<1x3xi1>
    %148 = linalg.matmul ins(%10, %146 : tensor<1x16xi1>, tensor<16x3xi1>) outs(%147 : tensor<1x3xi1>) -> tensor<1x3xi1>
    %149 = math.roundeven %124 : f32
    memref.assume_alignment %alloc_20, 8 : memref<1xf32>
    %150 = index.ceildivu %rank, %90
    %151 = math.log1p %cst_2 : f32
    %152 = vector.bitcast %139 : vector<1xi32> to vector<1xi32>
    %153 = math.fpowi %33, %6 : tensor<16xf16>, tensor<16xi32>
    %154 = tensor.empty() : tensor<1x16xi1>
    %mapped_46 = linalg.map ins(%10 : tensor<1x16xi1>) outs(%154 : tensor<1x16xi1>)
      (%in: i1) {
        %245 = math.ipowi %collapsed, %collapsed_40 : tensor<16xi1>
        %246 = arith.remf %cst_0, %cst_4 : f16
        %247 = index.maxu %c5, %c2
        %248 = arith.muli %c11478_i16, %c27529_i16 : i16
        %249 = arith.maxf %cst_4, %cst : f16
        %250 = vector.extract_strided_slice %53 {offsets = [0], sizes = [9], strides = [1]} : vector<16xi32> to vector<9xi32>
        %251 = math.tanh %cst_1 : f32
        %252 = math.ceil %3 : tensor<16xf32>
        %alloc_62 = memref.alloc() : memref<1xi16>
        %253 = vector.broadcast %c11478_i16 : i16 to vector<1xi16>
        %254 = vector.broadcast %true_29 : i1 to vector<1xi1>
        %255 = vector.gather %alloc_62[%101] [%139], %254, %253 : memref<1xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %256 = math.ctlz %true_29 : i1
        %257 = math.ctpop %0 : tensor<1xi32>
        %258 = index.castu %c372691768_i32 : i32 to index
        %259 = arith.minsi %in, %false : i1
        %260 = arith.floordivsi %c0_i32, %c518259140_i32 : i32
        %alloc_63 = memref.alloc() : memref<1x16xi1>
        memref.tensor_store %10, %alloc_63 : memref<1x16xi1>
        %261 = tensor.empty() : tensor<1xf16>
        %mapped_64 = linalg.map ins(%11, %11 : tensor<1xf16>, tensor<1xf16>) outs(%261 : tensor<1xf16>)
          (%in_69: f16, %in_70: f16) {
            %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %255, %253, %c11478_i16 : vector<1xi16>, vector<1xi16> into i16
            %280 = vector.broadcast %cst_3 : f32 to vector<1xf32>
            %281 = vector.fma %280, %280, %280 : vector<1xf32>
            %c1_i32_71 = arith.constant 1 : i32
            %c0_i32_72 = arith.constant 0 : i32
            %282 = vector.transfer_read %6[%107], %c0_i32_72 : tensor<16xi32>, vector<i32>
            %283 = math.atan2 %124, %cst_3 : f32
            %expanded_73 = tensor.expand_shape %splat [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
            %284 = vector.transpose %134, [0] : vector<1xi32> to vector<1xi32>
            %285 = vector.matrix_multiply %281, %119 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xf32>, vector<3xf32>) -> vector<3xf32>
            %286 = arith.floordivsi %c0_i32, %c1_i32 : i32
            %287 = affine.load %alloc_22[%c0] : memref<1xf32>
            %288 = index.floordivs %68, %115
            %289 = arith.negf %cst_6 : f16
            %290 = affine.load %42[%c4] : memref<16xf32>
            %291 = arith.remui %c767048103_i32, %c767048103_i32 : i32
            %292 = arith.divsi %c1_i32, %c767048103_i32 : i32
            %293 = arith.floordivsi %in, %in : i1
            memref.store %cst_7, %alloc_12[%c1] : memref<16xf32>
            %expanded_74 = tensor.expand_shape %89 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
            memref.store %cst_3, %alloc_12[%c1] : memref<16xf32>
            %294 = vector.broadcast %c1_i64 : i64 to vector<16x16xi64>
            %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %77, %74, %294 : vector<1x16xi64>, vector<1x16xi64> into vector<16x16xi64>
            %296 = memref.realloc %alloc_18 : memref<16xf16> to memref<3xf16>
            %297 = arith.remui %c0_i32_25, %c518259140_i32 : i32
            %cast_75 = tensor.cast %10 : tensor<1x16xi1> to tensor<?x?xi1>
            %298 = math.fpowi %4, %splat_32 : tensor<16xf16>, tensor<16xi32>
            %299 = memref.load %alloc_13[%c0] : memref<1xi64>
            %300 = index.divu %69, %c3
            %301 = index.maxu %125, %c7
            %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %285, %119, %cst_2 : vector<3xf32>, vector<3xf32> into f32
            %inserted_76 = tensor.insert %c1_i32 into %splat_32[%c6] : tensor<16xi32>
            %303 = vector.broadcast %288 : index to vector<16xindex>
            %304 = vector.broadcast %290 : f32 to vector<16xf32>
            vector.scatter %alloc_9[%c0, %c6] [%303], %106, %304 : memref<1x16xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
            %305 = memref.realloc %alloc : memref<16xi16> to memref<3xi16>
            %306 = vector.transpose %152, [0] : vector<1xi32> to vector<1xi32>
            %307 = affine.max affine_map<(d0, d1, d2) -> (d0 * 128)>(%96, %c5, %85)
            %cst_77 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_77 : f16
          }
        %262 = arith.shrui %false, %true : i1
        %263 = math.ctlz %c767048103_i32 : i32
        %264 = vector.broadcast %87 : f32 to vector<1x16xf32>
        %265 = vector.fma %264, %264, %264 : vector<1x16xf32>
        memref.assume_alignment %alloc_14, 1 : memref<16xi16>
        %266 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
        %dest_65, %accumulated_value_66 = vector.scan <xor>, %74, %266 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
        %267 = arith.xori %c0_i32_25, %c372691768_i32 : i32
        %268 = vector.broadcast %111 : f32 to vector<1xf32>
        %269 = vector.gather %9[%135] [%139], %254, %268 : tensor<16xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %270 = arith.shli %true_39, %false : i1
        %271 = affine.load %alloc_9[%c11, %c7] : memref<1x16xf32>
        %272 = tensor.empty() : tensor<16xf16>
        %mapped_67 = linalg.map ins(%33 : tensor<16xf16>) outs(%272 : tensor<16xf16>)
          (%in_69: f16) {
            %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %139, %139, %c0_i32_25 : vector<1xi32>, vector<1xi32> into i32
            %280 = tensor.empty() : tensor<1xi64>
            %281 = math.atan2 %cst, %cst_6 : f16
            %inserted_70 = tensor.insert %87 into %20[] : tensor<f32>
            %282 = vector.bitcast %152 : vector<1xi32> to vector<1xi32>
            %283 = math.ctpop %c518259140_i32 : i32
            %284 = index.add %258, %113
            %285 = math.powf %12, %12 : tensor<16xf16>
            %286 = arith.shrui %c1_i64, %c1_i64 : i64
            %287 = arith.subi %c1_i64, %c1_i64_42 : i64
            %inserted_71 = tensor.insert %cst_3 into %20[] : tensor<f32>
            %288 = arith.cmpi ugt, %c0_i32, %c372691768_i32 : i32
            %extracted_72 = tensor.extract %splat_28[%c0] : tensor<1xi32>
            %289 = math.round %4 : tensor<16xf16>
            %290 = math.round %cst_0 : f16
            %extracted_73 = tensor.extract %21[] : tensor<f32>
            %291 = vector.bitcast %75 : vector<1x16xi1> to vector<1x16xi1>
            %292 = arith.ori %extracted, %c372691768_i32 : i32
            memref.assume_alignment %alloc_17, 1 : memref<1x16xi16>
            %293 = math.absf %12 : tensor<16xf16>
            %294 = arith.subi %true, %true_39 : i1
            %295 = arith.mulf %124, %124 : f32
            %296 = bufferization.clone %alloc_22 : memref<1xf32> to memref<1xf32>
            %297 = math.ipowi %c767048103_i32, %c518259140_i32 : i32
            %expanded_74 = tensor.expand_shape %33 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
            %rank_75 = tensor.rank %1 : tensor<16xi32>
            %298 = vector.matrix_multiply %139, %139 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
            %expanded_76 = tensor.expand_shape %7 [[0, 1]] : tensor<16xi1> into tensor<16x1xi1>
            memref.assume_alignment %alloc_9, 2 : memref<1x16xf32>
            affine.store %c11478_i16, %alloc_17[%c5, %c11] : memref<1x16xi16>
            %299 = memref.atomic_rmw muli %c11478_i16, %alloc[%c15] : (i16, memref<16xi16>) -> i16
            %300 = vector.create_mask %135, %c13 : vector<1x16xi1>
            %cst_77 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_77 : f16
          }
        %273 = bufferization.clone %alloc_18 : memref<16xf16> to memref<16xf16>
        %274 = arith.ceildivsi %true, %false : i1
        %275 = index.divu %c4, %c0
        %276 = memref.atomic_rmw assign %87, %alloc_15[%c2] : (f32, memref<16xf32>) -> f32
        %277 = index.divu %c0, %56
        %278 = arith.ori %true, %true : i1
        %true_68 = arith.constant true
        linalg.yield %true_68 : i1
      }
    %155 = arith.divf %87, %111 : f32
    %inserted_47 = tensor.insert %c372691768_i32 into %17[%c2] : tensor<16xi32>
    %156 = arith.ori %true, %false : i1
    memref.assume_alignment %alloc_13, 2 : memref<1xi64>
    %157 = math.expm1 %12 : tensor<16xf16>
    %158 = scf.index_switch %c13 -> vector<1x16xi16> 
    case 1 {
      %245 = math.absf %124 : f32
      %246 = index.maxu %c11, %49
      %247 = arith.andi %c27529_i16, %c27529_i16 : i16
      %248 = index.ceildivu %115, %135
      %249 = index.add %115, %c2
      %250 = arith.addf %87, %cst_3 : f32
      %251 = arith.cmpi sge, %c1_i64, %c1_i64_42 : i64
      affine.store %c1_i32_41, %alloc_16[%c9] : memref<16xi32>
      %252 = vector.reduction <and>, %106 : vector<16xi1> into i1
      %collapsed_62 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
      %253 = arith.ceildivsi %c767048103_i32, %c372691768_i32 : i32
      %cast_63 = tensor.cast %15 : tensor<16xi1> to tensor<?xi1>
      %254 = index.maxu %c5, %45
      %255 = math.round %13 : tensor<16xf16>
      %256 = arith.minf %124, %cst_1 : f32
      %expanded_64 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<1x16xi1> into tensor<1x16x1xi1>
      %257 = vector.broadcast %c11478_i16 : i16 to vector<1x16xi16>
      scf.yield %257 : vector<1x16xi16>
    }
    case 2 {
      %generated_62 = tensor.generate %rank {
      ^bb0(%arg1: index):
        %expanded_65 = tensor.expand_shape %11 [[0, 1]] : tensor<1xf16> into tensor<1x1xf16>
        %257 = vector.flat_transpose %19 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %258 = vector.splat %c1 : vector<1xindex>
        %259 = arith.xori %extracted, %c0_i32_25 : i32
        tensor.yield %c0_i32_25 : i32
      } : tensor<?xi32>
      %245 = vector.bitcast %84 : vector<1x16xf16> to vector<1x16xf16>
      %alloca = memref.alloca() : memref<1xi32>
      %246 = math.expm1 %21 : tensor<f32>
      %247 = arith.ori %c1_i64, %c1_i64_42 : i64
      %248 = arith.divf %cst_3, %111 : f32
      %249 = math.ipowi %collapsed, %15 : tensor<16xi1>
      %250 = math.ceil %9 : tensor<16xf32>
      %251 = vector.matrix_multiply %139, %93 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %252 = index.add %c7, %c2
      bufferization.dealloc_tensor %13 : tensor<16xf16>
      %253 = arith.muli %c1_i64, %c1_i64_42 : i64
      %cast_63 = tensor.cast %3 : tensor<16xf32> to tensor<?xf32>
      %254 = bufferization.clone %alloc : memref<16xi16> to memref<16xi16>
      %rank_64 = tensor.rank %4 : tensor<16xf16>
      %255 = vector.bitcast %77 : vector<1x16xi64> to vector<1x16xi64>
      %256 = vector.broadcast %c27529_i16 : i16 to vector<1x16xi16>
      scf.yield %256 : vector<1x16xi16>
    }
    case 3 {
      %245 = vector.transpose %62, [0] : vector<2xf32> to vector<2xf32>
      %246 = math.exp %9 : tensor<16xf32>
      %247 = index.divu %c1, %113
      %248 = arith.floordivsi %false_5, %true : i1
      %rank_62 = tensor.rank %147 : tensor<1x3xi1>
      %249 = vector.shuffle %76, %76 [0] : vector<1x16xi32>, vector<1x16xi32>
      %250 = arith.minsi %c1_i64_42, %c1_i64 : i64
      %251 = vector.reduction <maxf>, %62 : vector<2xf32> into f32
      %252 = math.ctlz %c1_i32 : i32
      %253 = arith.shli %c1_i64, %c1_i64_42 : i64
      %254 = index.sub %80, %115
      %255 = arith.cmpf uno, %cst_0, %cst_4 : f16
      %256 = vector.extract %119[2] : vector<3xf32>
      %257 = memref.realloc %alloc_22 : memref<1xf32> to memref<16xf32>
      %258 = arith.maxui %false_5, %false : i1
      %259 = vector.broadcast %c1_i64_42 : i64 to vector<1xi64>
      %dest_63, %accumulated_value_64 = vector.scan <mul>, %77, %259 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
      %260 = vector.broadcast %c27529_i16 : i16 to vector<1x16xi16>
      scf.yield %260 : vector<1x16xi16>
    }
    case 4 {
      scf.execute_region {
        %259 = math.expm1 %11 : tensor<1xf16>
        %260 = index.sizeof
        %261 = math.round %cst_3 : f32
        %262 = arith.divf %cst_4, %cst_0 : f16
        %263 = arith.subi %false_5, %false : i1
        %264 = vector.matrix_multiply %53, %139 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<1xi32>) -> vector<16xi32>
        %cast_62 = tensor.cast %16 : tensor<16xi32> to tensor<?xi32>
        %265 = memref.realloc %alloc_15 : memref<16xf32> to memref<3xf32>
        %266 = bufferization.to_tensor %42 : memref<16xf32>
        %dest_63, %accumulated_value_64 = vector.scan <add>, %76, %93 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi32>, vector<1xi32>
        memref.store %cst, %alloc_23[] : memref<f16>
        %267 = bufferization.to_memref %266 : memref<16xf32>
        memref.assume_alignment %alloc_10, 8 : memref<1x16xi64>
        %expanded_65 = tensor.expand_shape %147 [[0], [1, 2]] : tensor<1x3xi1> into tensor<1x3x1xi1>
        %268 = arith.andi %c27529_i16, %c11478_i16 : i16
        %splat_66 = tensor.splat %c1_i64_42 : tensor<16xi64>
        scf.yield
      }
      %245 = bufferization.to_memref %4 : memref<16xf16>
      scf.execute_region {
        %259 = arith.divui %c0_i32_25, %c372691768_i32 : i32
        %260 = arith.ceildivsi %extracted, %c372691768_i32 : i32
        %false_62 = index.bool.constant false
        %261 = index.ceildivu %37, %c11
        %inserted_63 = tensor.insert %true_39 into %154[%c0, %c4] : tensor<1x16xi1>
        %262 = math.round %20 : tensor<f32>
        %alloca_64 = memref.alloca() : memref<1x16xf32>
        %263 = arith.xori %c0_i32, %c372691768_i32 : i32
        %264 = arith.cmpf oeq, %cst_3, %cst_2 : f32
        %265 = arith.minsi %c1_i64_42, %c1_i64 : i64
        %266 = vector.broadcast %c11478_i16 : i16 to vector<1xi16>
        %267 = vector.broadcast %true : i1 to vector<1xi1>
        %268 = vector.gather %alloc[%261] [%139], %267, %266 : memref<16xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %269 = index.ceildivu %c3, %c5
        %270 = arith.remui %c1_i64_42, %c1_i64_42 : i64
        %cst_65 = arith.constant 1.000000e+00 : f32
        %271 = vector.transfer_read %3[%c4], %cst_65 : tensor<16xf32>, vector<f32>
        %272 = index.casts %c1_i32_41 : i32 to index
        %273 = index.casts %false_62 : i1 to index
        scf.yield
      }
      %246 = vector.extract %74[0] : vector<1x16xi64>
      %247 = index.ceildivu %c9, %56
      %248 = vector.broadcast %c372691768_i32 : i32 to vector<1xi32>
      %249 = math.tanh %expanded : tensor<16x1xf16>
      %250 = bufferization.clone %alloc_9 : memref<1x16xf32> to memref<1x16xf32>
      %251 = arith.minsi %true_29, %false : i1
      %alloca = memref.alloca() : memref<1xi32>
      %252 = affine.load %alloc_21[%c7] : memref<1xf16>
      %253 = arith.xori %c1_i64, %c1_i64_42 : i64
      %254 = math.expm1 %87 : f32
      %255 = math.ctlz %c11478_i16 : i16
      %256 = math.fpowi %252, %c1_i32 : f16, i32
      %257 = math.ctlz %1 : tensor<16xi32>
      %258 = vector.broadcast %c11478_i16 : i16 to vector<1x16xi16>
      scf.yield %258 : vector<1x16xi16>
    }
    default {
      %245 = vector.broadcast %87 : f32 to vector<3x3xf32>
      %246 = vector.outerproduct %19, %119, %245 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
      %247 = math.fpowi %11, %splat : tensor<1xf16>, tensor<1xi32>
      memref.assume_alignment %alloc_22, 4 : memref<1xf32>
      %248 = arith.xori %c1_i64_42, %c1_i64 : i64
      %249 = index.divu %85, %c10
      %250 = math.log10 %3 : tensor<16xf32>
      %cst_62 = arith.constant 0x4E1FA648 : f32
      %251 = index.sub %c9, %c13
      %252 = arith.cmpi ugt, %c1_i32_41, %c0_i32 : i32
      %true_63 = index.bool.constant true
      %253 = math.fpowi %cst_1, %c1_i32 : f32, i32
      %collapsed_64 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
      %254 = arith.muli %false, %true_29 : i1
      %255 = math.log %9 : tensor<16xf32>
      %256 = arith.addf %cst_6, %cst_6 : f16
      %257 = arith.shli %false, %true_39 : i1
      %258 = vector.broadcast %c27529_i16 : i16 to vector<1x16xi16>
      scf.yield %258 : vector<1x16xi16>
    }
    %159 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %76, %139, %53 : vector<1x16xi32>, vector<1xi32> into vector<16xi32>
    %160 = arith.remf %cst, %cst : f16
    %161 = arith.subi %c1_i32, %c1_i32_41 : i32
    %162 = vector.broadcast %true_39 : i1 to vector<1xi1>
    %163 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %75, %106, %162 : vector<1x16xi1>, vector<16xi1> into vector<1xi1>
    %164 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %119, %119, %cst_3 : vector<3xf32>, vector<3xf32> into f32
    %165 = math.atan %20 : tensor<f32>
    %166 = arith.ori %true, %true : i1
    %167 = math.atan2 %cst_1, %cst_3 : f32
    %168 = math.absf %cst : f16
    scf.execute_region {
      %245 = memref.alloca_scope  -> (f32) {
        %259 = index.divs %49, %c6
        %260 = arith.andi %c1_i64, %c1_i64 : i64
        %expanded_63 = tensor.expand_shape %12 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        %collapsed_64 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
        %cast_65 = tensor.cast %18 : tensor<16xi16> to tensor<?xi16>
        %261 = vector.reduction <minui>, %93 : vector<1xi32> into i32
        %262 = vector.reduction <minf>, %62 : vector<2xf32> into f32
        %263 = bufferization.to_memref %15 : memref<16xi1>
        %inserted_66 = tensor.insert %c518259140_i32 into %generated[%c0, %c0] : tensor<?x?xi32>
        %cast_67 = tensor.cast %73 : tensor<16xi64> to tensor<?xi64>
        %264 = vector.insert %106, %75 [0] : vector<16xi1> into vector<1x16xi1>
        %collapsed_68 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
        %265 = vector.matrix_multiply %134, %93 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %266 = index.divs %96, %80
        %267 = math.rsqrt %9 : tensor<16xf32>
        %268 = arith.ori %c27529_i16, %c11478_i16 : i16
        memref.tensor_store %73, %alloc_8 : memref<16xi64>
        %269 = vector.broadcast %c1_i64 : i64 to vector<16x16xi64>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %77, %74, %269 : vector<1x16xi64>, vector<1x16xi64> into vector<16x16xi64>
        %cast_69 = tensor.cast %147 : tensor<1x3xi1> to tensor<?x?xi1>
        %271 = math.log %cst_3 : f32
        %272 = arith.cmpf ule, %cst_3, %cst_3 : f32
        %273 = vector.load %alloc_15[%c4] : memref<16xf32>, vector<16xf32>
        %274 = vector.bitcast %106 : vector<16xi1> to vector<16xi1>
        %275 = math.ctlz %154 : tensor<1x16xi1>
        %276 = math.ctpop %16 : tensor<16xi32>
        %277 = arith.divui %c1_i32_41, %c767048103_i32 : i32
        %278 = arith.remui %c518259140_i32, %extracted : i32
        %279 = index.divs %c3, %45
        %expanded_70 = tensor.expand_shape %13 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        %280 = math.fpowi %12, %6 : tensor<16xf16>, tensor<16xi32>
        %false_71 = index.bool.constant false
        %281 = math.log1p %12 : tensor<16xf16>
        memref.alloca_scope.return %cst_2 : f32
      }
      %246 = math.sqrt %cst_3 : f32
      %247 = index.floordivs %107, %c0
      %248 = vector.extract_strided_slice %106 {offsets = [1], sizes = [9], strides = [1]} : vector<16xi1> to vector<9xi1>
      %249 = arith.minsi %c1_i64_42, %c1_i64_42 : i64
      %250 = arith.divf %cst_1, %cst_1 : f32
      %251 = vector.load %alloc_22[%c0] : memref<1xf32>, vector<1x16xf32>
      %252 = arith.cmpf une, %cst_6, %cst_0 : f16
      %253 = arith.maxui %false_5, %false : i1
      memref.store %111, %alloc_15[%c10] : memref<16xf32>
      %254 = vector.broadcast %false_5 : i1 to vector<1xi1>
      %255 = bufferization.to_tensor %alloc_15 : memref<16xf32>
      %256 = arith.subi %false_5, %false : i1
      %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 8 - 8, d0 mod 4, d0)>(%69, %c3, %113, %c9)
      %258 = index.floordivs %rank, %c6
      %generated_62 = tensor.generate %69 {
      ^bb0(%arg1: index):
        %259 = vector.broadcast %extracted : i32 to vector<i32>
        %260 = vector.transfer_write %259, %17[%45] : vector<i32>, tensor<16xi32>
        %c1536951870_i32 = arith.constant 1536951870 : i32
        memref.tensor_store %18, %alloc_14 : memref<16xi16>
        %261 = arith.xori %c11478_i16, %c11478_i16 : i16
        tensor.yield %c1_i64_42 : i64
      } : tensor<?xi64>
      scf.yield
    }
    %169 = arith.divf %cst_7, %cst_2 : f32
    %170 = index.maxu %c2, %c12
    %171 = index.floordivs %40, %c12
    memref.alloca_scope  {
      %245 = arith.divf %cst_4, %cst_6 : f16
      %246 = arith.shrui %true_39, %true_29 : i1
      %false_62 = arith.constant false
      %247 = vector.transfer_read %10[%c9, %140], %false_62 : tensor<1x16xi1>, vector<3xi1>
      %248 = math.round %cst_6 : f16
      %249 = math.fpowi %cst_7, %c1_i32_41 : f32, i32
      %250 = math.cos %cst_4 : f16
      %251 = bufferization.to_memref %13 : memref<16xf16>
      %252 = math.absf %cst_3 : f32
      %253 = math.ceil %4 : tensor<16xf16>
      %254 = memref.alloca_scope  -> (memref<16xi64>) {
        %271 = memref.load %alloc_20[%c0] : memref<1xf32>
        %272 = vector.broadcast %true_39 : i1 to vector<16x16xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %75, %75, %272 : vector<1x16xi1>, vector<1x16xi1> into vector<16x16xi1>
        %274 = math.fma %9, %9, %3 : tensor<16xf32>
        %splat_66 = tensor.splat %111 : tensor<16xf32>
        %275 = arith.cmpi ugt, %true, %true_29 : i1
        %276 = math.powf %111, %cst_7 : f32
        %277 = arith.maxui %c11478_i16, %c11478_i16 : i16
        %278 = index.maxu %49, %96
        %279 = bufferization.clone %alloc_11 : memref<16xi1> to memref<16xi1>
        %280 = arith.xori %c1_i32_41, %c0_i32 : i32
        %281 = index.ceildivs %c15, %113
        %282 = vector.broadcast %true_29 : i1 to vector<16xi1>
        %283 = vector.transfer_write %282, %2[%c1, %56] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi1>, tensor<1x16xi1>
        memref.tensor_store %4, %alloc_18 : memref<16xf16>
        memref.tensor_store %4, %251 : memref<16xf16>
        %c-19176_i16 = arith.constant -19176 : i16
        %284 = index.divu %c9, %c9
        %285 = arith.cmpf ult, %cst_3, %124 : f32
        %286 = arith.cmpi ule, %c1_i64, %c1_i64_42 : i64
        %287 = memref.atomic_rmw minf %111, %alloc_22[%c0] : (f32, memref<1xf32>) -> f32
        %288 = vector.splat %c11478_i16 : vector<1xi16>
        %289 = arith.minf %cst_4, %cst : f16
        %splat_67 = tensor.splat %124 : tensor<16xf32>
        %290 = vector.load %42[%c10] : memref<16xf32>, vector<1x16xf32>
        %expanded_68 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x16xi1> into tensor<1x16x1xi1>
        %291 = vector.transpose %134, [0] : vector<1xi32> to vector<1xi32>
        %292 = math.powf %splat_66, %9 : tensor<16xf32>
        %293 = bufferization.clone %alloc_9 : memref<1x16xf32> to memref<1x16xf32>
        %294 = vector.reduction <maxui>, %134 : vector<1xi32> into i32
        %295 = math.sqrt %splat_66 : tensor<16xf32>
        %296 = index.add %45, %170
        %297 = math.round %13 : tensor<16xf16>
        %298 = vector.create_mask %284 : vector<16xi1>
        memref.alloca_scope.return %alloc_8 : memref<16xi64>
      }
      %alloca = memref.alloca() : memref<16xi1>
      %255 = arith.minui %false, %true : i1
      %256 = math.tanh %cst : f16
      %257 = arith.minsi %c372691768_i32, %c1_i32 : i32
      %258 = arith.minf %cst_4, %cst_4 : f16
      %259 = vector.extract %76[0] : vector<1x16xi32>
      %260 = arith.subi %false_62, %false : i1
      %cast_63 = tensor.cast %splat_32 : tensor<16xi32> to tensor<?xi32>
      %261 = math.ceil %87 : f32
      %262 = arith.remui %false, %true_39 : i1
      memref.copy %alloc_20, %alloc_22 : memref<1xf32> to memref<1xf32>
      %expanded_64 = tensor.expand_shape %6 [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
      %263 = arith.minf %124, %cst_7 : f32
      %264 = affine.max affine_map<(d0) -> (-(d0 + 32))>(%c15)
      vector.print %76 : vector<1x16xi32>
      %generated_65 = tensor.generate %90, %107 {
      ^bb0(%arg1: index, %arg2: index):
        %cast_66 = tensor.cast %transposed : tensor<16xi16> to tensor<?xi16>
        %alloca_67 = memref.alloca() : memref<1xi1>
        %271 = index.maxu %45, %c6
        %272 = arith.ori %extracted, %c1_i32 : i32
        tensor.yield %c767048103_i32 : i32
      } : tensor<?x?xi32>
      %265 = vector.matrix_multiply %259, %93 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<1xi32>) -> vector<16xi32>
      %266 = index.castu %true : i1 to index
      %267 = arith.remui %c0_i32, %c518259140_i32 : i32
      %268 = vector.load %alloc_16[%c9] : memref<16xi32>, vector<16xi32>
      %269 = index.floordivs %c9, %c0
      %270 = vector.flat_transpose %119 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    }
    %dest_48, %accumulated_value_49 = vector.scan <mul>, %75, %106 {inclusive = true, reduction_dim = 0 : i64} : vector<1x16xi1>, vector<16xi1>
    %172 = math.ipowi %5, %18 : tensor<16xi16>
    %expanded_50 = tensor.expand_shape %73 [[0, 1]] : tensor<16xi64> into tensor<16x1xi64>
    %173 = index.add %150, %101
    %generated_51 = tensor.generate %c3 {
    ^bb0(%arg1: index):
      %245 = vector.multi_reduction <minf>, %84, %84 [] : vector<1x16xf16> to vector<1x16xf16>
      %246 = bufferization.clone %alloc_18 : memref<16xf16> to memref<16xf16>
      %247 = math.ctpop %c11478_i16 : i16
      %248 = arith.minui %c518259140_i32, %c0_i32 : i32
      tensor.yield %c11478_i16 : i16
    } : tensor<?xi16>
    %174 = arith.andi %true_39, %false : i1
    %175 = arith.remsi %c0_i32, %c1_i32_41 : i32
    %rank_52 = tensor.rank %3 : tensor<16xf32>
    %176 = arith.addf %cst_4, %cst_0 : f16
    %177 = bufferization.clone %alloc_13 : memref<1xi64> to memref<1xi64>
    %178 = math.ceil %cst_0 : f16
    %179 = arith.cmpi uge, %c518259140_i32, %c0_i32_25 : i32
    %180 = arith.addi %extracted, %c372691768_i32 : i32
    %181 = index.add %c10, %c13
    %rank_53 = tensor.rank %16 : tensor<16xi32>
    %182 = bufferization.clone %alloc_17 : memref<1x16xi16> to memref<1x16xi16>
    %183 = math.roundeven %20 : tensor<f32>
    %184 = index.add %c6, %c11
    %185 = arith.cmpi ule, %true_29, %true_29 : i1
    %alloc_54 = memref.alloc() : memref<16xi32>
    %186 = arith.ori %c1_i32, %extracted : i32
    %187 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 128 >= 0, d2 ceildiv 4 == 0, d1 floordiv 128 == 0)>(%c10, %c4, %c10) -> i1 {
      %collapsed_62 = tensor.collapse_shape %expanded_37 [[0, 1]] : tensor<16x1xi16> into tensor<16xi16>
      %245 = index.divu %135, %115
      %246 = index.divu %45, %rank
      scf.index_switch %49 
      case 1 {
        %250 = affine.load %42[%c0] : memref<16xf32>
        %251 = vector.broadcast %true_39 : i1 to vector<1xi1>
        %dest_64, %accumulated_value_65 = vector.scan <mul>, %75, %251 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xi1>, vector<1xi1>
        %252 = arith.minui %extracted, %c518259140_i32 : i32
        %cst_66 = arith.constant 0x4DAF3586 : f32
        %collapsed_67 = tensor.collapse_shape %2 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
        %253 = index.castu %56 : index to i32
        bufferization.dealloc_tensor %4 : tensor<16xf16>
        %254 = index.ceildivu %135, %c3
        %255 = arith.floordivsi %c1_i32, %c0_i32_25 : i32
        %256 = vector.bitcast %53 : vector<16xi32> to vector<16xi32>
        %257 = vector.splat %96 : vector<1x16xindex>
        %258 = arith.subi %false, %true_29 : i1
        %259 = vector.multi_reduction <mul>, %139, %c0_i32_25 [0] : vector<1xi32> to i32
        %260 = arith.addf %cst_6, %cst_6 : f16
        memref.assume_alignment %alloc, 2 : memref<16xi16>
        %261 = bufferization.to_memref %21 : memref<f32>
        scf.yield
      }
      case 2 {
        %250 = memref.load %alloc_9[%c0, %c12] : memref<1x16xf32>
        %251 = arith.negf %cst_4 : f16
        %252 = arith.addf %cst_0, %cst_4 : f16
        %253 = affine.load %alloc_19[%c6] : memref<16xi32>
        %splat_64 = tensor.splat %124 : tensor<1x16xf32>
        %254 = math.ipowi %true_39, %true_29 : i1
        %splat_65 = tensor.splat %cst_3 : tensor<1xf32>
        %expanded_66 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<1x16xi1> into tensor<1x16x1xi1>
        %255 = affine.load %alloc_24[%c15] : memref<16xf32>
        %256 = arith.floordivsi %c1_i32, %c518259140_i32 : i32
        %257 = math.round %13 : tensor<16xf16>
        %258 = arith.addf %cst_2, %cst_1 : f32
        %259 = memref.atomic_rmw mulf %87, %42[%c14] : (f32, memref<16xf32>) -> f32
        %260 = affine.apply affine_map<(d0, d1) -> ((d1 mod 16) mod 64)>(%c11, %c1)
        %261 = arith.cmpi ne, %c372691768_i32, %253 : i32
        %262 = vector.extract %53[15] : vector<16xi32>
        scf.yield
      }
      default {
        %250 = arith.subi %c1_i32, %c1_i32 : i32
        %alloca = memref.alloca() : memref<1xi32>
        %251 = index.maxu %125, %125
        %252 = index.castu %rank : index to i32
        %253 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
        %dest_64, %accumulated_value_65 = vector.scan <maxui>, %77, %253 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
        %true_66 = index.bool.constant true
        %254 = math.powf %13, %13 : tensor<16xf16>
        %255 = vector.broadcast %c372691768_i32 : i32 to vector<16xi32>
        %inserted_67 = tensor.insert %cst_7 into %21[] : tensor<f32>
        %256 = math.ceil %4 : tensor<16xf16>
        %257 = vector.bitcast %152 : vector<1xi32> to vector<1xi32>
        %258 = arith.mulf %124, %124 : f32
        %rank_68 = tensor.rank %expanded : tensor<16x1xf16>
        %259 = index.divu %125, %125
        %260 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %76, %139, %53 : vector<1x16xi32>, vector<1xi32> into vector<16xi32>
        %261 = arith.maxui %false_5, %false : i1
      }
      %collapsed_63 = tensor.collapse_shape %2 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
      %247 = vector.extract_strided_slice %106 {offsets = [13], sizes = [1], strides = [1]} : vector<16xi1> to vector<1xi1>
      %248 = bufferization.to_memref %collapsed_62 : memref<16xi16>
      %249 = math.round %13 : tensor<16xf16>
      affine.yield %false_5 : i1
    } else {
      %alloca = memref.alloca() : memref<16xi1>
      %rank_62 = tensor.rank %11 : tensor<1xf16>
      %245 = arith.xori %c1_i64, %c1_i64_42 : i64
      %246 = arith.maxsi %c0_i32, %c1_i32 : i32
      %247 = arith.minf %cst_6, %cst : f16
      %alloca_63 = memref.alloca() : memref<1x16xi32>
      vector.print %76 : vector<1x16xi32>
      %248 = math.tanh %87 : f32
      affine.yield %true_29 : i1
    }
    memref.tensor_store %15, %alloc_11 : memref<16xi1>
    %188 = vector.create_mask %170 : vector<16xi1>
    %189 = arith.xori %false, %false : i1
    %190 = affine.load %177[%c1] : memref<1xi64>
    %191 = vector.transpose %62, [0] : vector<2xf32> to vector<2xf32>
    %192 = arith.subi %c518259140_i32, %c372691768_i32 : i32
    %193 = math.powf %cst_4, %cst : f16
    %194 = arith.minf %87, %124 : f32
    %195 = math.powf %9, %9 : tensor<16xf32>
    %196 = arith.minui %c1_i32, %c372691768_i32 : i32
    %197 = math.atan2 %11, %11 : tensor<1xf16>
    %198 = arith.addf %111, %111 : f32
    %199 = bufferization.clone %177 : memref<1xi64> to memref<1xi64>
    %200 = memref.alloca_scope  -> (memref<16xi64>) {
      %245 = vector.multi_reduction <minsi>, %93, %134 [] : vector<1xi32> to vector<1xi32>
      %246 = vector.shuffle %141, %141 [0, 1] : vector<i32>, vector<i32>
      memref.assume_alignment %alloc_13, 1 : memref<1xi64>
      %247 = arith.subi %extracted, %c1_i32_41 : i32
      %248 = math.cos %cst_3 : f32
      %249 = math.ceil %expanded : tensor<16x1xf16>
      %250 = math.expm1 %21 : tensor<f32>
      %251 = index.ceildivs %135, %107
      %cast_62 = tensor.cast %splat_32 : tensor<16xi32> to tensor<?xi32>
      %252 = math.cttz %16 : tensor<16xi32>
      %alloc_63 = memref.alloc() : memref<16xi64>
      memref.copy %alloc_8, %alloc_63 : memref<16xi64> to memref<16xi64>
      bufferization.dealloc_tensor %10 : tensor<1x16xi1>
      %253 = tensor.empty() : tensor<3x1xi1>
      %254 = tensor.empty() : tensor<1x1xi1>
      %255 = linalg.matmul ins(%147, %253 : tensor<1x3xi1>, tensor<3x1xi1>) outs(%254 : tensor<1x1xi1>) -> tensor<1x1xi1>
      %256 = memref.alloca_scope  -> (f16) {
        %277 = index.floordivs %c14, %69
        %278 = arith.negf %87 : f32
        %279 = vector.bitcast %77 : vector<1x16xi64> to vector<1x16xi64>
        %280 = math.ipowi %transposed, %transposed : tensor<16xi16>
        %281 = arith.andi %c0_i32, %c372691768_i32 : i32
        %282 = index.ceildivu %c2, %45
        %283 = index.add %173, %277
        %284 = math.round %4 : tensor<16xf16>
        %285 = index.castu %c27529_i16 : i16 to index
        %286 = index.maxu %115, %c12
        %287 = index.floordivs %c3, %45
        %288 = bufferization.clone %alloc : memref<16xi16> to memref<16xi16>
        %289 = arith.remui %c1_i32, %c1_i32 : i32
        %290 = index.sub %c4, %c2
        %collapsed_65 = tensor.collapse_shape %expanded_50 [[0, 1]] : tensor<16x1xi64> into tensor<16xi64>
        bufferization.dealloc_tensor %28 : tensor<16xf16>
        %291 = vector.bitcast %188 : vector<16xi1> to vector<16xi1>
        %292 = index.add %c14, %115
        %293 = arith.minf %cst_0, %cst_4 : f16
        %294 = bufferization.clone %42 : memref<16xf32> to memref<16xf32>
        %295 = vector.broadcast %c767048103_i32 : i32 to vector<i32>
        %296 = vector.transfer_write %295, %89[%173] : vector<i32>, tensor<1xi32>
        %297 = arith.cmpf uno, %cst_4, %cst_6 : f16
        %298 = arith.minsi %190, %c1_i64_42 : i64
        %splat_66 = tensor.splat %false_5 : tensor<1xi1>
        %299 = vector.flat_transpose %152 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %alloc_67 = memref.alloc() : memref<1x16xi1>
        memref.tensor_store %14, %alloc_67 : memref<1x16xi1>
        %300 = math.rsqrt %4 : tensor<16xf16>
        %301 = arith.andi %c1_i32, %c518259140_i32 : i32
        %302 = vector.extract %139[0] : vector<1xi32>
        %303 = math.roundeven %cst_3 : f32
        %304 = vector.load %182[%c0, %c8] : memref<1x16xi16>, vector<16xi16>
        %305 = memref.load %177[%c0] : memref<1xi64>
        memref.alloca_scope.return %cst_6 : f16
      }
      %257 = index.ceildivu %c2, %37
      %258 = math.ipowi %147, %147 : tensor<1x3xi1>
      %259 = tensor.empty() : tensor<16xf32>
      %mapped_64 = linalg.map ins(%3 : tensor<16xf32>) outs(%259 : tensor<16xf32>)
        (%in: f32) {
          %277 = arith.subi %c767048103_i32, %extracted : i32
          %278 = arith.cmpi sle, %c0_i32_25, %c767048103_i32 : i32
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %93, %152, %c0_i32_25 : vector<1xi32>, vector<1xi32> into i32
          %280 = bufferization.clone %alloc : memref<16xi16> to memref<16xi16>
          %cast_65 = tensor.cast %17 : tensor<16xi32> to tensor<?xi32>
          %281 = index.ceildivu %96, %c14
          %282 = math.powf %cst_3, %87 : f32
          %283 = vector.matrix_multiply %188, %106 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
          %284 = index.casts %c1 : index to i32
          %alloca = memref.alloca() : memref<16xi1>
          %285 = index.add %rank_52, %69
          %286 = bufferization.clone %alloc_10 : memref<1x16xi64> to memref<1x16xi64>
          %287 = index.maxu %171, %285
          %288 = arith.cmpi uge, %c11478_i16, %c27529_i16 : i16
          %289 = arith.subi %c518259140_i32, %extracted : i32
          %290 = math.tan %259 : tensor<16xf32>
          %291 = vector.flat_transpose %134 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %292 = index.floordivs %c7, %80
          %293 = vector.bitcast %74 : vector<1x16xi64> to vector<1x16xi64>
          %294 = index.ceildivu %69, %c15
          %295 = bufferization.clone %182 : memref<1x16xi16> to memref<1x16xi16>
          %296 = math.ipowi %c11478_i16, %c11478_i16 : i16
          %extracted_66 = tensor.extract %259[%c14] : tensor<16xf32>
          %297 = arith.maxui %true, %true_29 : i1
          memref.assume_alignment %alloc_14, 1 : memref<16xi16>
          %298 = arith.maxui %c1_i64_42, %190 : i64
          %alloc_67 = memref.alloc() : memref<1xf16>
          memref.copy %alloc_21, %alloc_67 : memref<1xf16> to memref<1xf16>
          %299 = math.rsqrt %cst_6 : f16
          %300 = arith.cmpi ugt, %c372691768_i32, %c1_i32_41 : i32
          bufferization.dealloc_tensor %33 : tensor<16xf16>
          %301 = arith.shrui %true_29, %true : i1
          %302 = arith.maxsi %false, %true : i1
          %cst_68 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_68 : f32
        }
      %260 = vector.broadcast %cst_4 : f16 to vector<16xf16>
      %261 = vector.insert %260, %84 [0] : vector<16xf16> into vector<1x16xf16>
      %262 = arith.muli %false_5, %false : i1
      %263 = tensor.empty() : tensor<1x16xi16>
      %264 = tensor.empty() : tensor<16x16xi16>
      %265 = linalg.matmul ins(%expanded_37, %263 : tensor<16x1xi16>, tensor<1x16xi16>) outs(%264 : tensor<16x16xi16>) -> tensor<16x16xi16>
      %266 = arith.remui %c27529_i16, %c27529_i16 : i16
      %267 = arith.minui %c1_i64, %190 : i64
      %268 = index.castu %c372691768_i32 : i32 to index
      %269 = math.cttz %c518259140_i32 : i32
      %270 = memref.realloc %alloc_15 : memref<16xf32> to memref<1xf32>
      %271 = index.maxu %107, %rank_52
      %272 = index.divu %150, %c6
      %273 = vector.splat %181 : vector<1xindex>
      memref.tensor_store %73, %alloc_8 : memref<16xi64>
      %274 = arith.ceildivsi %false, %true_29 : i1
      %275 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %53, %76, %134 : vector<16xi32>, vector<1x16xi32> into vector<1xi32>
      %276 = arith.ori %true_39, %true_39 : i1
      memref.alloca_scope.return %alloc_8 : memref<16xi64>
    }
    %201 = vector.splat %c15 : vector<1xindex>
    %alloc_55 = memref.alloc() : memref<1x16xi32>
    %202 = vector.extract %62[1] : vector<2xf32>
    %203 = math.tan %cst_7 : f32
    %204 = arith.mulf %cst_2, %cst_7 : f32
    %205 = arith.xori %c518259140_i32, %c0_i32 : i32
    %206 = vector.load %alloc_11[%c0] : memref<16xi1>, vector<16xi1>
    %207 = arith.cmpf ule, %111, %cst_2 : f32
    memref.assume_alignment %alloc_16, 16 : memref<16xi32>
    %208 = arith.divui %c1_i64_42, %c1_i64_42 : i64
    %209 = math.ctpop %6 : tensor<16xi32>
    %210 = vector.reduction <and>, %139 : vector<1xi32> into i32
    %211 = math.roundeven %cst_2 : f32
    %212 = arith.minf %111, %cst_7 : f32
    %213 = arith.remui %c518259140_i32, %c1_i32 : i32
    %214 = bufferization.to_tensor %42 : memref<16xf32>
    %215 = index.mul %rank_52, %40
    %216 = math.round %21 : tensor<f32>
    %217 = math.roundeven %3 : tensor<16xf32>
    %c1_i32_56 = arith.constant 1 : i32
    %c0_i32_57 = arith.constant 0 : i32
    %218 = vector.transfer_read %1[%113], %c0_i32_57 : tensor<16xi32>, vector<i32>
    %219 = math.atan %4 : tensor<16xf16>
    %220 = math.absf %13 : tensor<16xf16>
    %221 = math.round %87 : f32
    %inserted_58 = tensor.insert %c1_i32_41 into %8[%c8] : tensor<16xi32>
    %222 = vector.broadcast %111 : f32 to vector<3x3xf32>
    %223 = vector.outerproduct %19, %119, %222 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
    %224 = index.divs %c2, %85
    %225 = math.round %13 : tensor<16xf16>
    %rank_59 = tensor.rank %expanded_37 : tensor<16x1xi16>
    %226 = memref.load %alloc_14[%c6] : memref<16xi16>
    %227 = arith.addf %87, %cst_7 : f32
    %228 = math.rsqrt %33 : tensor<16xf16>
    %229 = index.add %171, %170
    %230 = math.ipowi %c1_i32, %c518259140_i32 : i32
    %231 = math.log1p %87 : f32
    %232 = math.absf %3 : tensor<16xf32>
    %233 = memref.load %alloc[%c14] : memref<16xi16>
    %234 = math.fpowi %111, %c0_i32 : f32, i32
    %235 = math.expm1 %13 : tensor<16xf16>
    %236 = arith.addf %cst_0, %cst_0 : f16
    %237 = arith.andi %true, %true_29 : i1
    %238 = vector.shuffle %93, %134 [0, 1] : vector<1xi32>, vector<1xi32>
    %239 = math.powf %33, %13 : tensor<16xf16>
    %240 = bufferization.to_memref %9 : memref<16xf32>
    bufferization.dealloc_tensor %2 : tensor<1x16xi1>
    %241 = tensor.empty() : tensor<16xi1>
    %242 = linalg.copy ins(%15 : tensor<16xi1>) outs(%241 : tensor<16xi1>) -> tensor<16xi1>
    %243 = tensor.empty() : tensor<16xi1>
    %transposed_60 = linalg.transpose ins(%15 : tensor<16xi1>) outs(%243 : tensor<16xi1>) permutation = [0] 
    %alloc_61 = memref.alloc() : memref<f16>
    linalg.reduce ins(%4 : tensor<16xf16>) outs(%alloc_61 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %245 = arith.subi %c1_i32_56, %c0_i32_25 : i32
        %alloca = memref.alloca() : memref<16xf32>
        %246 = arith.andi %c1_i32_56, %c372691768_i32 : i32
        %247 = scf.while (%arg1 = %134) : (vector<1xi32>) -> vector<1xi32> {
          %251 = index.add %c3, %45
          %252 = bufferization.to_memref %147 : memref<1x3xi1>
          %253 = math.ipowi %c518259140_i32, %c1_i32_41 : i32
          %rank_64 = tensor.rank %cast : tensor<?xf16>
          %false_65 = arith.constant false
          %true_66 = arith.constant true
          %254 = vector.transfer_read %7[%c7], %true_66 : tensor<16xi1>, vector<i1>
          %collapsed_67 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
          %255 = tensor.empty() : tensor<1x16xi16>
          %256 = vector.broadcast %c11478_i16 : i16 to vector<16xi16>
          %257 = vector.gather %255[%224, %69] [%53], %206, %256 : tensor<1x16xi16>, vector<16xi32>, vector<16xi1>, vector<16xi16> into vector<16xi16>
          scf.condition(%false_5) %152 : vector<1xi32>
        } do {
        ^bb0(%arg1: vector<1xi32>):
          %251 = arith.shrsi %c0_i32_25, %c0_i32 : i32
          %252 = math.ceil %4 : tensor<16xf16>
          %splat_64 = tensor.splat %124 : tensor<1xf32>
          %253 = index.mul %135, %107
          %254 = bufferization.clone %alloc_14 : memref<16xi16> to memref<16xi16>
          %collapsed_65 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
          %255 = index.maxu %171, %80
          %256 = index.ceildivu %135, %115
          %257 = index.add %rank_52, %184
          %258 = arith.ori %c1_i32_56, %c767048103_i32 : i32
          %259 = vector.multi_reduction <add>, %76, %c518259140_i32 [0, 1] : vector<1x16xi32> to i32
          %260 = bufferization.clone %alloc_16 : memref<16xi32> to memref<16xi32>
          %alloca_66 = memref.alloca() : memref<1xi32>
          %261 = memref.atomic_rmw maxf %cst_2, %alloc_24[%c4] : (f32, memref<16xf32>) -> f32
          %262 = arith.remui %false_5, %false_5 : i1
          %263 = tensor.empty() : tensor<1xi1>
          %264 = vector.gather %263[%125] [%53], %188, %106 : tensor<1xi1>, vector<16xi32>, vector<16xi1>, vector<16xi1> into vector<16xi1>
          scf.yield %139 : vector<1xi32>
        }
        %rank_62 = tensor.rank %cast_43 : tensor<?xi32>
        %248 = affine.load %alloc_11[%c15] : memref<16xi1>
        %249 = affine.if affine_set<(d0, d1) : (d1 == 0, d0 mod 4 >= 0, d1 mod 4 + 4 >= 0, d0 + 4 == 0)>(%c15, %c12) -> i32 {
          %251 = vector.broadcast %cst : f16 to vector<16xf16>
          %252 = vector.gather %4[%215] [%53], %206, %251 : tensor<16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
          %253 = arith.ceildivsi %c1_i64_42, %c1_i64_42 : i64
          %254 = vector.bitcast %251 : vector<16xf16> to vector<16xf16>
          %c1628384592_i64 = arith.constant 1628384592 : i64
          %255 = math.ctpop %10 : tensor<1x16xi1>
          %256 = index.floordivs %c14, %c2
          %257 = index.ceildivu %181, %68
          %258 = arith.minsi %c1_i32_56, %c0_i32_25 : i32
          affine.yield %c1_i32_41 : i32
        } else {
          %251 = memref.realloc %alloc_14 : memref<16xi16> to memref<1xi16>
          %252 = arith.ori %c0_i32_25, %c518259140_i32 : i32
          %253 = math.tanh %11 : tensor<1xf16>
          %254 = arith.minui %190, %c1_i64_42 : i64
          %255 = index.maxu %181, %90
          %256 = vector.broadcast %190 : i64 to vector<1x16xi64>
          %257 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
          %dest_64, %accumulated_value_65 = vector.scan <mul>, %74, %257 {inclusive = true, reduction_dim = 1 : i64} : vector<1x16xi64>, vector<1xi64>
          %258 = arith.shli %c1_i32_56, %c1_i32 : i32
          affine.yield %c767048103_i32 : i32
        }
        %250 = vector.shuffle %152, %53 [1, 5, 10, 15] : vector<1xi32>, vector<16xi32>
        %cst_63 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_63 : f16
      }
    scf.parallel (%arg1) = (%c0) to (%c11) step (%c13) {
      %245 = index.castu %true_39 : i1 to index
      %246 = math.round %11 : tensor<1xf16>
      %247 = index.divs %49, %c6
      %248 = vector.create_mask %224 : vector<16xi1>
      %249 = arith.cmpf ogt, %cst, %cst_6 : f16
      %250 = index.divu %45, %173
      %251 = index.sub %c11, %c1
      %252 = index.divu %251, %56
      %253 = memref.atomic_rmw assign %cst_7, %alloc_24[%c14] : (f32, memref<16xf32>) -> f32
      %254 = vector.bitcast %152 : vector<1xi32> to vector<1xi32>
      %255 = arith.subi %c1_i32, %c767048103_i32 : i32
      %256 = vector.load %182[%c0, %c2] : memref<1x16xi16>, vector<1x16xi16>
      %257 = math.ceil %cst_1 : f32
      %258 = vector.broadcast %c27529_i16 : i16 to vector<1xi16>
      %dest_62, %accumulated_value_63 = vector.scan <or>, %256, %258 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xi16>, vector<1xi16>
      %259 = math.ctpop %14 : tensor<1x16xi1>
      memref.store %cst_2, %alloc_12[%c4] : memref<16xf32>
      scf.yield
    }
    %244 = affine.vector_load %200[%69] : memref<16xi64>, vector<3xi64>
    affine.vector_store %19, %240[%215] : memref<16xf32>, vector<3xf32>
    vector.print %19 : vector<3xf32>
    vector.print %53 : vector<16xi32>
    vector.print %62 : vector<2xf32>
    vector.print %74 : vector<1x16xi64>
    vector.print %75 : vector<1x16xi1>
    vector.print %76 : vector<1x16xi32>
    vector.print %77 : vector<1x16xi64>
    vector.print %84 : vector<1x16xf16>
    vector.print %93 : vector<1xi32>
    vector.print %106 : vector<16xi1>
    vector.print %118 : vector<1x16xf16>
    vector.print %119 : vector<3xf32>
    vector.print %134 : vector<1xi32>
    vector.print %139 : vector<1xi32>
    vector.print %141 : vector<i32>
    vector.print %152 : vector<1xi32>
    vector.print %188 : vector<16xi1>
    vector.print %206 : vector<16xi1>
    vector.print %244 : vector<3xi64>
    vector.print %cst : f16
    vector.print %true : i1
    vector.print %c518259140_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c11478_i16 : i16
    vector.print %false : i1
    vector.print %c767048103_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %c27529_i16 : i16
    vector.print %c372691768_i32 : i32
    vector.print %false_5 : i1
    vector.print %cst_6 : f16
    vector.print %cst_7 : f32
    vector.print %c0_i32 : i32
    vector.print %c0_i32_25 : i32
    vector.print %true_29 : i1
    vector.print %c1_i64 : i64
    vector.print %87 : f32
    vector.print %extracted : i32
    vector.print %c1_i32 : i32
    vector.print %true_39 : i1
    vector.print %111 : f32
    vector.print %c1_i32_41 : i32
    vector.print %c1_i64_42 : i64
    vector.print %124 : f32
    vector.print %190 : i64
    vector.print %c1_i32_56 : i32
    return
  }
}
