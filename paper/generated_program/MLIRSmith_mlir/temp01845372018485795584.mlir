module {
  func.func @func1(%arg0: i32) -> tensor<1xf32> {
    %c681434178_i32 = arith.constant 681434178 : i32
    %c975889895_i32 = arith.constant 975889895 : i32
    %c1222311867_i32 = arith.constant 1222311867 : i32
    %false = arith.constant false
    %c1400963913_i64 = arith.constant 1400963913 : i64
    %cst = arith.constant 3.468800e+04 : f16
    %true = arith.constant true
    %false_0 = arith.constant false
    %c898350871_i32 = arith.constant 898350871 : i32
    %c-16617_i16 = arith.constant -16617 : i16
    %cst_1 = arith.constant 4.166400e+04 : f16
    %c1141727645_i64 = arith.constant 1141727645 : i64
    %c1954031314_i64 = arith.constant 1954031314 : i64
    %cst_2 = arith.constant 1.104000e+04 : f16
    %cst_3 = arith.constant 2.11066035E+9 : f32
    %cst_4 = arith.constant 0x4E179B46 : f32
    %0 = tensor.empty() : tensor<15x15xi16>
    %1 = tensor.empty() : tensor<15x13xi16>
    %2 = tensor.empty() : tensor<15x13xf32>
    %3 = tensor.empty() : tensor<15x15xf32>
    %4 = tensor.empty() : tensor<1xi1>
    %5 = tensor.empty() : tensor<15x2xf16>
    %6 = tensor.empty() : tensor<15x13xi16>
    %7 = tensor.empty() : tensor<15x15xi64>
    %8 = tensor.empty() : tensor<15x2xi16>
    %9 = tensor.empty() : tensor<1xi32>
    %10 = tensor.empty() : tensor<15x13xf16>
    %11 = tensor.empty() : tensor<1xi32>
    %12 = tensor.empty() : tensor<15x15xi16>
    %13 = tensor.empty() : tensor<15x13xi1>
    %14 = tensor.empty() : tensor<15x15xf32>
    %15 = tensor.empty() : tensor<1xf32>
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
    %alloc = memref.alloc() : memref<15x15xi64>
    %alloc_5 = memref.alloc() : memref<1xi32>
    %alloc_6 = memref.alloc() : memref<1xf32>
    %alloc_7 = memref.alloc() : memref<15x13xi1>
    %alloc_8 = memref.alloc() : memref<15x13xi1>
    %alloc_9 = memref.alloc() : memref<15x2xf32>
    %alloc_10 = memref.alloc() : memref<15x13xi1>
    %alloc_11 = memref.alloc() : memref<15x13xf32>
    %alloc_12 = memref.alloc() : memref<15x2xi64>
    %alloc_13 = memref.alloc() : memref<1xf16>
    %alloc_14 = memref.alloc() : memref<15x2xi64>
    %alloc_15 = memref.alloc() : memref<1xi1>
    %alloc_16 = memref.alloc() : memref<15x2xf16>
    %alloc_17 = memref.alloc() : memref<15x2xi32>
    %alloc_18 = memref.alloc() : memref<15x15xi1>
    %alloc_19 = memref.alloc() : memref<15x15xf16>
    %16 = tensor.empty() : tensor<15x13xf32>
    %17 = linalg.copy ins(%2 : tensor<15x13xf32>) outs(%16 : tensor<15x13xf32>) -> tensor<15x13xf32>
    %alloc_20 = memref.alloc() : memref<13x15xf16>
    linalg.transpose ins(%10 : tensor<15x13xf16>) outs(%alloc_20 : memref<13x15xf16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<13xf16>
    %reduced = linalg.reduce ins(%10 : tensor<15x13xf16>) outs(%18 : tensor<13xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %274 = tensor.empty() : tensor<15x13xi16>
        %275 = linalg.matmul ins(%0, %1 : tensor<15x15xi16>, tensor<15x13xi16>) outs(%274 : tensor<15x13xi16>) -> tensor<15x13xi16>
        %276 = index.maxs %c14, %c14
        %277 = index.maxu %c3, %c9
        %278 = arith.minsi %c1400963913_i64, %c1400963913_i64 : i64
        %279 = math.expm1 %cst_3 : f32
        %280 = memref.realloc %alloc_15 : memref<1xi1> to memref<1xi1>
        %281 = math.copysign %cst_2, %cst : f16
        %282 = vector.broadcast %false : i1 to vector<1xi1>
        %283 = vector.extract_strided_slice %282 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %cst_39 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_39 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c0, %c3) to (%c14, %c5) step (%c12, %c14) {
      %274 = arith.remf %cst_4, %cst_4 : f32
      %275 = arith.maxui %c1954031314_i64, %c1141727645_i64 : i64
      %276 = tensor.empty() : tensor<2x2xi16>
      %277 = tensor.empty() : tensor<15x2xi16>
      %278 = linalg.matmul ins(%8, %276 : tensor<15x2xi16>, tensor<2x2xi16>) outs(%277 : tensor<15x2xi16>) -> tensor<15x2xi16>
      %279 = vector.broadcast %c-16617_i16 : i16 to vector<1xi16>
      %280 = vector.bitcast %279 : vector<1xi16> to vector<1xi16>
      %281 = vector.broadcast %cst_3 : f32 to vector<15x2xf32>
      %282 = vector.fma %281, %281, %281 : vector<15x2xf32>
      %283 = affine.load %alloc_12[%c5, %c0] : memref<15x2xi64>
      %284 = index.divu %c2, %c8
      %285 = tensor.empty() : tensor<15x15xf32>
      %286 = math.powf %cst, %cst_2 : f16
      %287 = scf.execute_region -> memref<15x2xi1> {
        %295 = math.round %cst_3 : f32
        %296 = math.tan %16 : tensor<15x13xf32>
        %297 = vector.broadcast %c-16617_i16 : i16 to vector<1x1xi16>
        %298 = vector.outerproduct %279, %279, %297 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<15x13xf32> into tensor<15x13x1xf32>
        %299 = tensor.empty() : tensor<15x13xf32>
        %300 = linalg.matmul ins(%3, %17 : tensor<15x15xf32>, tensor<15x13xf32>) outs(%299 : tensor<15x13xf32>) -> tensor<15x13xf32>
        %301 = vector.bitcast %280 : vector<1xi16> to vector<1xi16>
        %302 = arith.remf %cst_1, %cst_1 : f16
        %303 = math.expm1 %cst_2 : f16
        %304 = math.expm1 %2 : tensor<15x13xf32>
        %305 = bufferization.clone %alloc_17 : memref<15x2xi32> to memref<15x2xi32>
        %306 = arith.floordivsi %c1141727645_i64, %c1400963913_i64 : i64
        %307 = math.ceil %285 : tensor<15x15xf32>
        %308 = arith.xori %c1222311867_i32, %c975889895_i32 : i32
        %309 = arith.ceildivsi %c1954031314_i64, %c1954031314_i64 : i64
        %310 = math.ctpop %8 : tensor<15x2xi16>
        %311 = arith.divsi %c1222311867_i32, %c898350871_i32 : i32
        %alloc_39 = memref.alloc() : memref<15x2xi1>
        scf.yield %alloc_39 : memref<15x2xi1>
      }
      %288 = math.tanh %14 : tensor<15x15xf32>
      %289 = index.sub %c3, %284
      %290 = scf.index_switch %c13 -> i1 
      case 1 {
        %295 = vector.matrix_multiply %280, %279 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %296 = vector.flat_transpose %295 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %297 = vector.shuffle %280, %280 [1] : vector<1xi16>, vector<1xi16>
        %298 = vector.extract %295[0] : vector<1xi16>
        %299 = vector.create_mask %c4, %c0 : vector<15x2xi1>
        %300 = math.ctpop %12 : tensor<15x15xi16>
        %301 = affine.load %alloc_20[%c11, %c4] : memref<13x15xf16>
        %302 = index.maxs %c7, %c6
        %303 = math.log10 %3 : tensor<15x15xf32>
        %collapsed_39 = tensor.collapse_shape %7 [[0, 1]] : tensor<15x15xi64> into tensor<225xi64>
        %304 = math.copysign %285, %14 : tensor<15x15xf32>
        %305 = bufferization.to_tensor %alloc_7 : memref<15x13xi1>
        %306 = math.ctlz %true : i1
        %307 = arith.maxsi %false, %false_0 : i1
        %308 = arith.negf %cst_4 : f32
        %309 = math.round %285 : tensor<15x15xf32>
        scf.yield %false : i1
      }
      default {
        %295 = math.cos %285 : tensor<15x15xf32>
        %296 = arith.ori %false_0, %true : i1
        %297 = math.sqrt %5 : tensor<15x2xf16>
        %alloc_39 = memref.alloc() : memref<13x1xi16>
        %298 = tensor.empty() : tensor<15x1xi16>
        %299 = linalg.matmul ins(%1, %alloc_39 : tensor<15x13xi16>, memref<13x1xi16>) outs(%298 : tensor<15x1xi16>) -> tensor<15x1xi16>
        %300 = math.floor %15 : tensor<1xf32>
        %301 = arith.andi %false_0, %false : i1
        %302 = math.ipowi %9, %11 : tensor<1xi32>
        %303 = arith.remf %cst_1, %cst : f16
        %304 = arith.remf %cst_4, %cst_3 : f32
        %305 = arith.negf %cst_2 : f16
        %306 = math.tanh %5 : tensor<15x2xf16>
        %307 = vector.broadcast %false : i1 to vector<1xi1>
        %308 = vector.maskedload %alloc_15[%c0], %307, %307 : memref<1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %309 = math.fma %cst, %cst, %cst_2 : f16
        %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        %310 = index.divu %c10, %c7
        %311 = math.log %cst_1 : f16
        scf.yield %false_0 : i1
      }
      %291 = vector.broadcast %cst_2 : f16 to vector<f16>
      %292 = vector.transfer_write %291, %reduced[%289] : vector<f16>, tensor<13xf16>
      %293 = arith.maxui %false, %false_0 : i1
      %294 = bufferization.clone %alloc_8 : memref<15x13xi1> to memref<15x13xi1>
      scf.yield
    }
    %19 = affine.vector_load %alloc_18[%c7, %c2] : memref<15x15xi1>, vector<2xi1>
    affine.vector_store %19, %alloc_7[%c9, %c5] : memref<15x13xi1>, vector<2xi1>
    %20 = tensor.empty() : tensor<1xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%15, %20 : tensor<1xf32>, tensor<1xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = math.atan2 %2, %2 : tensor<15x13xf32>
    %24 = math.expm1 %21 : tensor<f32>
    %25 = bufferization.clone %alloc_17 : memref<15x2xi32> to memref<15x2xi32>
    %26 = arith.shrui %c681434178_i32, %c681434178_i32 : i32
    %27 = arith.remf %cst, %cst : f16
    %splat = tensor.splat %cst_2 : tensor<15x15xf16>
    %28 = arith.shrui %c1954031314_i64, %c1400963913_i64 : i64
    %29 = math.ctlz %4 : tensor<1xi1>
    %30 = vector.broadcast %cst_3 : f32 to vector<f32>
    %31 = vector.transfer_write %30, %20[%c14] : vector<f32>, tensor<1xf32>
    %32 = math.sqrt %3 : tensor<15x15xf32>
    scf.index_switch %c11 
    case 1 {
      %274 = vector.transpose %19, [0] : vector<2xi1> to vector<2xi1>
      %275 = arith.shrsi %c975889895_i32, %c898350871_i32 : i32
      %276 = tensor.empty(%c3) : tensor<15x?xi1>
      %alloc_39 = memref.alloc() : memref<15x2xi16>
      memref.tensor_store %8, %alloc_39 : memref<15x2xi16>
      %rank_40 = tensor.rank %8 : tensor<15x2xi16>
      %277 = index.ceildivu %c4, %c10
      %278 = memref.realloc %alloc_6 : memref<1xf32> to memref<15xf32>
      %279 = math.log2 %cst_3 : f32
      %280 = vector.reduction <add>, %19 : vector<2xi1> into i1
      %281 = index.sub %rank_40, %c11
      %282 = bufferization.to_tensor %alloc_8 : memref<15x13xi1>
      %283 = vector.load %alloc_6[%c0] : memref<1xf32>, vector<15x2xf32>
      %true_41 = index.bool.constant true
      %true_42 = index.bool.constant true
      %284 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %dest_43, %accumulated_value_44 = vector.scan <mul>, %283, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<15x2xf32>, vector<15xf32>
      %285 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %286 = vector.broadcast %false_0 : i1 to vector<1xi1>
      %287 = vector.maskedload %alloc_11[%c6, %c10], %286, %285 : memref<15x13xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      scf.yield
    }
    case 2 {
      %extracted_39 = tensor.extract %18[%c11] : tensor<13xf16>
      %274 = affine.load %alloc_19[%c12, %c13] : memref<15x15xf16>
      %275 = math.rsqrt %17 : tensor<15x13xf32>
      %276 = math.fma %extracted_39, %extracted_39, %274 : f16
      %277 = memref.atomic_rmw ori %c1954031314_i64, %alloc_14[%c4, %c0] : (i64, memref<15x2xi64>) -> i64
      %278 = vector.broadcast %cst_4 : f32 to vector<2x15x13xf32>
      %279 = vector.broadcast %cst_3 : f32 to vector<2x15xf32>
      %dest_40, %accumulated_value_41 = vector.scan <add>, %278, %279 {inclusive = true, reduction_dim = 2 : i64} : vector<2x15x13xf32>, vector<2x15xf32>
      memref.assume_alignment %alloc_14, 4 : memref<15x2xi64>
      %280 = math.floor %16 : tensor<15x13xf32>
      %281 = math.cos %2 : tensor<15x13xf32>
      memref.store %cst, %alloc_13[%c0] : memref<1xf16>
      %282 = tensor.empty(%c9) : tensor<?x2xi32>
      %283 = math.log10 %10 : tensor<15x13xf16>
      %284 = math.log10 %2 : tensor<15x13xf32>
      %285 = vector.splat %c4 : vector<1xindex>
      %286 = math.copysign %22, %21 : tensor<f32>
      %287 = bufferization.clone %25 : memref<15x2xi32> to memref<15x2xi32>
      scf.yield
    }
    case 3 {
      %274 = arith.xori %c898350871_i32, %c898350871_i32 : i32
      %collapsed_39 = tensor.collapse_shape %1 [[0, 1]] : tensor<15x13xi16> into tensor<195xi16>
      %275 = math.roundeven %20 : tensor<1xf32>
      %276 = vector.bitcast %19 : vector<2xi1> to vector<2xi1>
      scf.index_switch %c1 
      case 1 {
        %286 = vector.broadcast %cst_2 : f16 to vector<f16>
        %287 = vector.transfer_write %286, %reduced[%c2] : vector<f16>, tensor<13xf16>
        %288 = arith.maxui %c681434178_i32, %c681434178_i32 : i32
        %289 = math.expm1 %14 : tensor<15x15xf32>
        %290 = vector.splat %c11 : vector<1xindex>
        memref.copy %alloc_10, %alloc_7 : memref<15x13xi1> to memref<15x13xi1>
        %291 = memref.realloc %alloc_15 : memref<1xi1> to memref<2xi1>
        %292 = index.divu %c11, %c15
        %293 = math.ctlz %11 : tensor<1xi32>
        %294 = math.ipowi %4, %4 : tensor<1xi1>
        %295 = math.roundeven %cst_2 : f16
        %296 = index.divu %c6, %c8
        %297 = vector.load %alloc[%c4, %c0] : memref<15x15xi64>, vector<15x2xi64>
        memref.tensor_store %15, %alloc_6 : memref<1xf32>
        %298 = vector.splat %c898350871_i32 : vector<15x13xi32>
        %299 = math.exp2 %reduced : tensor<13xf16>
        %300 = arith.floordivsi %c1141727645_i64, %c1400963913_i64 : i64
        scf.yield
      }
      default {
        %286 = arith.maxf %cst_3, %cst_3 : f32
        %287 = math.rsqrt %2 : tensor<15x13xf32>
        memref.copy %alloc_7, %alloc_8 : memref<15x13xi1> to memref<15x13xi1>
        %from_elements = tensor.from_elements %c1400963913_i64, %c1954031314_i64, %c1954031314_i64, %c1400963913_i64, %c1954031314_i64, %c1141727645_i64, %c1954031314_i64, %c1141727645_i64, %c1954031314_i64, %c1141727645_i64, %c1954031314_i64, %c1400963913_i64, %c1400963913_i64, %c1954031314_i64, %c1954031314_i64, %c1954031314_i64, %c1954031314_i64, %c1141727645_i64, %c1141727645_i64, %c1954031314_i64, %c1400963913_i64, %c1400963913_i64, %c1400963913_i64, %c1141727645_i64, %c1400963913_i64, %c1954031314_i64, %c1141727645_i64, %c1400963913_i64, %c1400963913_i64, %c1954031314_i64 : tensor<15x2xi64>
        %288 = math.absi %12 : tensor<15x15xi16>
        %289 = math.log %15 : tensor<1xf32>
        %290 = vector.bitcast %276 : vector<2xi1> to vector<2xi1>
        %291 = arith.minui %c975889895_i32, %c975889895_i32 : i32
        %292 = index.ceildivs %c0, %c12
        %293 = index.ceildivu %c1, %c13
        %294 = vector.splat %c13 : vector<1xindex>
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %276, %276, %false : vector<2xi1>, vector<2xi1> into i1
        %296 = vector.broadcast %false_0 : i1 to vector<15xi1>
        %297 = vector.maskedload %alloc_18[%c12, %c5], %296, %296 : memref<15x15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %298 = affine.max affine_map<(d0, d1) -> (-(d1 + 4), d0 floordiv 64 + 2)>(%c7, %c13)
        %299 = math.log1p %22 : tensor<f32>
        %300 = arith.shrui %true, %true : i1
      }
      %splat_40 = tensor.splat %false : tensor<15x2xi1>
      %277 = vector.insert %false_0, %19 [0] : i1 into vector<2xi1>
      %278 = tensor.empty() : tensor<15x15xi64>
      %279 = arith.remf %cst_4, %cst_4 : f32
      %280 = arith.maxf %cst, %cst_1 : f16
      %281 = math.floor %5 : tensor<15x2xf16>
      %282 = index.divs %c15, %c5
      %283 = math.ceil %20 : tensor<1xf32>
      %rank_41 = tensor.rank %11 : tensor<1xi32>
      %284 = vector.transpose %19, [0] : vector<2xi1> to vector<2xi1>
      %285 = tensor.empty(%c12, %c5) : tensor<?x?xf16>
      scf.yield
    }
    default {
      %274 = vector.create_mask %c7, %c15 : vector<15x13xi1>
      %275 = vector.transpose %30, [] : vector<f32> to vector<f32>
      %276 = arith.ceildivsi %c1222311867_i32, %c1222311867_i32 : i32
      %277 = math.copysign %reduced, %reduced : tensor<13xf16>
      %278 = memref.atomic_rmw addf %cst_3, %alloc_6[%c0] : (f32, memref<1xf32>) -> f32
      %279 = vector.broadcast %true : i1 to vector<2x2xi1>
      %280 = vector.outerproduct %19, %19, %279 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
      %splat_39 = tensor.splat %cst : tensor<15x13xf16>
      %281 = arith.divf %cst, %cst_2 : f16
      %extracted_40 = tensor.extract %3[%c8, %c12] : tensor<15x15xf32>
      %282 = index.floordivs %c8, %c6
      %283 = vector.load %alloc_5[%c0] : memref<1xi32>, vector<15x13xi32>
      %284 = vector.splat %c9 : vector<15x13xindex>
      %285 = vector.splat %true : vector<15x15xi1>
      %286 = affine.max affine_map<(d0) -> (d0 * 2, d0)>(%c12)
      %287 = scf.index_switch %c7 -> index 
      case 1 {
        %289 = arith.maxf %cst, %cst_1 : f16
        %290 = arith.maxsi %c898350871_i32, %c975889895_i32 : i32
        %291 = math.ipowi %12, %0 : tensor<15x15xi16>
        %292 = vector.broadcast %c975889895_i32 : i32 to vector<i32>
        %293 = vector.transfer_write %292, %9[%c13] : vector<i32>, tensor<1xi32>
        %294 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %295 = index.mul %c14, %282
        %296 = math.absi %13 : tensor<15x13xi1>
        %cst_41 = arith.constant 1.26378125E+9 : f32
        %297 = math.rsqrt %5 : tensor<15x2xf16>
        %298 = math.roundeven %cst_4 : f32
        %299 = vector.load %alloc_16[%c6, %c0] : memref<15x2xf16>, vector<15x13xf16>
        %300 = math.log1p %cst : f16
        %301 = vector.create_mask %c5, %c4 : vector<15x15xi1>
        %302 = vector.shuffle %294, %294 [2] : vector<2xi1>, vector<2xi1>
        %from_elements = tensor.from_elements %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c898350871_i32, %c898350871_i32, %c1222311867_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32 : tensor<15x15xi32>
        affine.store %cst_2, %alloc_16[%c7, %c15] : memref<15x2xf16>
        scf.yield %c7 : index
      }
      case 2 {
        %289 = index.ceildivu %c14, %c9
        %290 = arith.xori %c-16617_i16, %c-16617_i16 : i16
        %291 = math.rsqrt %21 : tensor<f32>
        %292 = math.absi %9 : tensor<1xi32>
        %293 = math.absi %c1222311867_i32 : i32
        %false_41 = arith.constant false
        %294 = affine.max affine_map<(d0, d1) -> (d1 * 4, d0 + d1 - 8, d0 + d1 - 8)>(%c11, %c10)
        %295 = vector.broadcast %false : i1 to vector<15xi1>
        %dest_42, %accumulated_value_43 = vector.scan <minsi>, %274, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<15x13xi1>, vector<15xi1>
        %296 = math.roundeven %16 : tensor<15x13xf32>
        %297 = vector.extract %19[1] : vector<2xi1>
        %298 = vector.broadcast %c6 : index to vector<15xindex>
        %299 = vector.broadcast %true : i1 to vector<15xi1>
        %300 = vector.broadcast %c1141727645_i64 : i64 to vector<15xi64>
        vector.scatter %alloc_14[%c9, %c1] [%298], %299, %300 : memref<15x2xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        affine.store %false, %alloc_8[%c7, %c14] : memref<15x13xi1>
        %301 = vector.broadcast %c1400963913_i64 : i64 to vector<1xi64>
        %302 = tensor.empty() : tensor<15x2xf16>
        %true_44 = index.bool.constant true
        %303 = math.ceil %reduced : tensor<13xf16>
        scf.yield %c3 : index
      }
      case 3 {
        %289 = arith.maxf %cst_3, %cst_4 : f32
        %290 = arith.minsi %c1141727645_i64, %c1400963913_i64 : i64
        %291 = math.exp2 %16 : tensor<15x13xf32>
        %292 = arith.divui %c1400963913_i64, %c1141727645_i64 : i64
        %293 = memref.atomic_rmw minf %extracted_40, %alloc_11[%c1, %c5] : (f32, memref<15x13xf32>) -> f32
        %294 = arith.maxui %c681434178_i32, %c898350871_i32 : i32
        %295 = vector.broadcast %c975889895_i32 : i32 to vector<13xi32>
        %dest_41, %accumulated_value_42 = vector.scan <add>, %283, %295 {inclusive = false, reduction_dim = 0 : i64} : vector<15x13xi32>, vector<13xi32>
        %296 = arith.andi %c1954031314_i64, %c1954031314_i64 : i64
        %297 = arith.andi %c1222311867_i32, %c898350871_i32 : i32
        %298 = math.expm1 %5 : tensor<15x2xf16>
        %false_43 = index.bool.constant false
        %alloc_44 = memref.alloc() : memref<15x13xi16>
        memref.tensor_store %1, %alloc_44 : memref<15x13xi16>
        %299 = vector.insertelement %cst_4, %30[] : vector<f32>
        %300 = math.ceil %5 : tensor<15x2xf16>
        %301 = index.divu %c5, %c12
        %302 = math.tanh %10 : tensor<15x13xf16>
        scf.yield %c0 : index
      }
      case 4 {
        %289 = vector.broadcast %true : i1 to vector<13xi1>
        %290 = vector.insert %289, %274 [14] : vector<13xi1> into vector<15x13xi1>
        %291 = tensor.empty() : tensor<1xi64>
        %292 = vector.broadcast %c975889895_i32 : i32 to vector<13x13xi32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %283, %283, %292 : vector<15x13xi32>, vector<15x13xi32> into vector<13x13xi32>
        %alloca_41 = memref.alloca() : memref<15x15xf16>
        %294 = arith.negf %cst : f16
        %295 = math.copysign %22, %22 : tensor<f32>
        %extracted_42 = tensor.extract %1[%c0, %c10] : tensor<15x13xi16>
        %296 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %297 = vector.transfer_write %296, %splat[%c2, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf16>, tensor<15x15xf16>
        %298 = vector.broadcast %c15 : index to vector<1xindex>
        %299 = vector.broadcast %false : i1 to vector<1xi1>
        vector.scatter %alloc_13[%c0] [%298], %299, %296 : memref<1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %300 = tensor.empty() : tensor<15x13xi32>
        %301 = math.fpowi %17, %300 : tensor<15x13xf32>, tensor<15x13xi32>
        %302 = math.expm1 %18 : tensor<13xf16>
        %303 = vector.bitcast %296 : vector<1xf16> to vector<1xf16>
        %304 = index.floordivs %c14, %c7
        memref.copy %alloc_7, %alloc_10 : memref<15x13xi1> to memref<15x13xi1>
        %305 = math.exp2 %cst_2 : f16
        %306 = arith.ori %c1141727645_i64, %c1141727645_i64 : i64
        scf.yield %c0 : index
      }
      default {
        %289 = vector.shuffle %30, %30 [0, 1] : vector<f32>, vector<f32>
        %290 = vector.broadcast %cst_2 : f16 to vector<f16>
        %291 = vector.transfer_write %290, %10[%282, %c2] : vector<f16>, tensor<15x13xf16>
        %292 = vector.splat %c5 : vector<1xindex>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %293 = vector.transfer_read %7[%286, %c8], %c0_i64_41 : tensor<15x15xi64>, vector<i64>
        %294 = arith.andi %c898350871_i32, %c1222311867_i32 : i32
        %295 = math.expm1 %20 : tensor<1xf32>
        %296 = math.ceil %cst_1 : f16
        %297 = arith.xori %c-16617_i16, %c-16617_i16 : i16
        %298 = vector.insertelement %false, %19[%c3 : index] : vector<2xi1>
        %299 = bufferization.to_tensor %alloc_20 : memref<13x15xf16>
        %300 = vector.broadcast %false : i1 to vector<15xi1>
        %dest_42, %accumulated_value_43 = vector.scan <and>, %274, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<15x13xi1>, vector<15xi1>
        %301 = math.expm1 %cst_4 : f32
        %false_44 = arith.constant false
        %302 = arith.maxui %c1400963913_i64, %c1954031314_i64 : i64
        %splat_45 = tensor.splat %cst : tensor<15x15xf16>
        %303 = index.floordivs %c11, %c9
        scf.yield %c5 : index
      }
      %288 = memref.realloc %alloc_6 : memref<1xf32> to memref<15xf32>
    }
    %33 = vector.shuffle %19, %19 [0, 1, 2] : vector<2xi1>, vector<2xi1>
    %34 = arith.minui %false, %false_0 : i1
    %35 = math.atan2 %cst_2, %cst_1 : f16
    %36 = arith.shrsi %c1400963913_i64, %c1400963913_i64 : i64
    memref.store %c898350871_i32, %alloc_5[%c0] : memref<1xi32>
    %37 = tensor.empty() : tensor<1xf16>
    %38 = arith.remf %cst_1, %cst_1 : f16
    %39 = math.rsqrt %15 : tensor<1xf32>
    %40 = vector.extract %19[1] : vector<2xi1>
    %41 = vector.broadcast %cst : f16 to vector<1xf16>
    %42 = vector.broadcast %false : i1 to vector<1xi1>
    %43 = vector.broadcast %c975889895_i32 : i32 to vector<1xi32>
    %44 = vector.gather %10[%c3, %c4] [%43], %42, %41 : tensor<15x13xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %45 = arith.floordivsi %c1954031314_i64, %c1954031314_i64 : i64
    %46 = affine.max affine_map<(d0) -> (d0, -d0 + 8, d0, d0 * 2)>(%c6)
    %47 = math.ceil %cst_4 : f32
    %48 = index.casts %c5 : index to i32
    %49 = bufferization.clone %alloc_20 : memref<13x15xf16> to memref<13x15xf16>
    %50 = arith.divsi %c975889895_i32, %c975889895_i32 : i32
    %51 = bufferization.clone %alloc_12 : memref<15x2xi64> to memref<15x2xi64>
    %52 = tensor.empty(%c13) : tensor<15x?xf32>
    %53 = math.log10 %15 : tensor<1xf32>
    %54 = math.ipowi %11, %9 : tensor<1xi32>
    %55 = vector.insert %true, %42 [0] : i1 into vector<1xi1>
    %56 = math.round %14 : tensor<15x15xf32>
    %57 = arith.addf %cst, %cst_1 : f16
    %58 = index.ceildivs %c7, %c10
    %59 = math.sqrt %15 : tensor<1xf32>
    %60 = math.copysign %cst, %cst_1 : f16
    %61 = index.casts %c5 : index to i32
    %62 = math.ceil %cst : f16
    scf.execute_region {
      %from_elements = tensor.from_elements %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2 : tensor<15x2xf16>
      %274 = tensor.empty() : tensor<2x15xf16>
      %275 = tensor.empty() : tensor<15x15xf16>
      %276 = linalg.matmul ins(%5, %274 : tensor<15x2xf16>, tensor<2x15xf16>) outs(%275 : tensor<15x15xf16>) -> tensor<15x15xf16>
      %277 = math.sqrt %2 : tensor<15x13xf32>
      %278 = tensor.empty() : tensor<15x15xi16>
      %279 = linalg.matmul ins(%12, %12 : tensor<15x15xi16>, tensor<15x15xi16>) outs(%278 : tensor<15x15xi16>) -> tensor<15x15xi16>
      %280 = vector.splat %c7 : vector<15x13xindex>
      %281 = tensor.empty() : tensor<15x13xf32>
      %282 = linalg.matmul ins(%14, %2 : tensor<15x15xf32>, tensor<15x13xf32>) outs(%281 : tensor<15x13xf32>) -> tensor<15x13xf32>
      scf.execute_region {
        %290 = bufferization.to_tensor %alloc_12 : memref<15x2xi64>
        %291 = index.divs %c9, %c14
        %true_41 = index.bool.constant true
        %292 = arith.maxf %cst, %cst_1 : f16
        %293 = arith.divsi %true, %true_41 : i1
        %294 = vector.gather %from_elements[%46, %c7] [%43], %42, %41 : tensor<15x2xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %295 = memref.realloc %alloc_15 : memref<1xi1> to memref<15xi1>
        %296 = index.maxs %58, %c7
        affine.store %false, %alloc_8[%c8, %c8] : memref<15x13xi1>
        %297 = math.copysign %17, %16 : tensor<15x13xf32>
        %298 = math.exp2 %cst_3 : f32
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %43, %43, %c681434178_i32 : vector<1xi32>, vector<1xi32> into i32
        %300 = vector.create_mask %c9, %c10 : vector<15x13xi1>
        %false_42 = index.bool.constant false
        %301 = arith.subi %c975889895_i32, %c1222311867_i32 : i32
        %extracted_43 = tensor.extract %6[%c12, %c2] : tensor<15x13xi16>
        scf.yield
      }
      %283 = index.divs %c10, %c5
      %284 = index.ceildivu %c15, %c12
      %285 = arith.shrsi %false, %false_0 : i1
      %splat_39 = tensor.splat %cst_1 : tensor<15x2xf16>
      %false_40 = index.bool.constant false
      %286 = arith.remsi %c898350871_i32, %c1222311867_i32 : i32
      %287 = index.ceildivs %c1, %c5
      %288 = index.ceildivs %c4, %c5
      %289 = math.log10 %3 : tensor<15x15xf32>
      scf.yield
    }
    %63 = tensor.empty() : tensor<15x13xf16>
    %64 = math.roundeven %22 : tensor<f32>
    %65 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
    %66 = vector.broadcast %c1141727645_i64 : i64 to vector<1xi64>
    affine.store %false, %alloc_8[%c6, %c13] : memref<15x13xi1>
    %67 = vector.shuffle %41, %44 [0] : vector<1xf16>, vector<1xf16>
    %68 = arith.ori %c1222311867_i32, %c681434178_i32 : i32
    %cst_21 = arith.constant 1.000000e+00 : f32
    %69 = vector.transfer_read %20[%58], %cst_21 : tensor<1xf32>, vector<f32>
    %70 = arith.shrsi %c681434178_i32, %c975889895_i32 : i32
    bufferization.dealloc_tensor %7 : tensor<15x15xi64>
    %71 = math.copysign %2, %17 : tensor<15x13xf32>
    %72 = arith.remf %cst_21, %cst_4 : f32
    %73 = index.maxu %c13, %c0
    %splat_22 = tensor.splat %true : tensor<15x13xi1>
    %74 = math.absf %14 : tensor<15x15xf32>
    %75 = math.roundeven %20 : tensor<1xf32>
    %cst_23 = arith.constant 1.79980787E+9 : f32
    %76 = vector.broadcast %false_0 : i1 to vector<13xi1>
    %77 = vector.maskedload %alloc_18[%c4, %c7], %76, %76 : memref<15x15xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
    %78 = vector.flat_transpose %65 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %79 = index.floordivs %73, %c4
    %80 = arith.negf %cst_3 : f32
    %81 = arith.divf %cst_2, %cst : f16
    %82 = math.ipowi %1, %1 : tensor<15x13xi16>
    %83 = vector.broadcast %cst_4 : f32 to vector<1xf32>
    %84 = math.ipowi %c898350871_i32, %c975889895_i32 : i32
    %85 = vector.reduction <mul>, %42 : vector<1xi1> into i1
    %86 = arith.minf %cst_1, %cst_1 : f16
    %87 = vector.extract_strided_slice %76 {offsets = [4], sizes = [1], strides = [1]} : vector<13xi1> to vector<1xi1>
    %88 = arith.shrsi %c1954031314_i64, %c1400963913_i64 : i64
    %89 = arith.divui %c1141727645_i64, %c1954031314_i64 : i64
    %90 = index.divu %c13, %c4
    %91 = math.rsqrt %reduced : tensor<13xf16>
    %92 = math.absi %11 : tensor<1xi32>
    affine.store %c898350871_i32, %alloc_17[%c3, %c7] : memref<15x2xi32>
    %93 = vector.shuffle %76, %19 [0, 2, 3, 5, 6, 7, 8, 12, 13] : vector<13xi1>, vector<2xi1>
    %94 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
    %95 = vector.outerproduct %83, %83, %94 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    %96 = bufferization.clone %49 : memref<13x15xf16> to memref<13x15xf16>
    %97 = arith.shrui %c898350871_i32, %c1222311867_i32 : i32
    %98 = arith.maxf %cst, %cst_2 : f16
    %99 = index.mul %c2, %c3
    %100 = vector.bitcast %87 : vector<1xi1> to vector<1xi1>
    %101 = affine.max affine_map<(d0) -> (d0 mod 64, d0 mod 64, ((d0 floordiv 4) ceildiv 2) ceildiv 128)>(%c5)
    %102 = math.copysign %5, %5 : tensor<15x2xf16>
    scf.execute_region {
      %274 = vector.matrix_multiply %43, %43 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %275 = tensor.empty() : tensor<15x2xi1>
      %276 = vector.broadcast %false_0 : i1 to vector<15x2xi1>
      %277 = vector.broadcast %c898350871_i32 : i32 to vector<15x2xi32>
      %278 = vector.gather %275[%c4, %101] [%277], %276, %276 : tensor<15x2xi1>, vector<15x2xi32>, vector<15x2xi1>, vector<15x2xi1> into vector<15x2xi1>
      memref.copy %alloc_8, %alloc_7 : memref<15x13xi1> to memref<15x13xi1>
      %279 = vector.maskedload %alloc_15[%c0], %87, %78 : memref<1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %280 = arith.xori %c975889895_i32, %c975889895_i32 : i32
      %alloc_39 = memref.alloc() : memref<15x15xi64>
      memref.copy %alloc, %alloc_39 : memref<15x15xi64> to memref<15x15xi64>
      %281 = tensor.empty() : tensor<15x15xf32>
      %mapped_40 = linalg.map ins(%3 : tensor<15x15xf32>) outs(%281 : tensor<15x15xf32>)
        (%in: f32) {
          %291 = index.ceildivs %c5, %c14
          %292 = math.round %21 : tensor<f32>
          %293 = vector.matrix_multiply %83, %83 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %294 = index.sub %c13, %c10
          bufferization.dealloc_tensor %3 : tensor<15x15xf32>
          %cst_42 = arith.constant 3.548000e+03 : f16
          %295 = arith.divsi %false, %false : i1
          %rank_43 = tensor.rank %22 : tensor<f32>
          %296 = math.tan %cst : f16
          %297 = arith.shrui %c1954031314_i64, %c1400963913_i64 : i64
          %298 = arith.shrui %false_0, %true : i1
          %299 = index.mul %c3, %c6
          %300 = index.divs %c0, %90
          %301 = math.log10 %14 : tensor<15x15xf32>
          %302 = math.ipowi %11, %11 : tensor<1xi32>
          %303 = arith.ceildivsi %true, %false_0 : i1
          %304 = math.roundeven %22 : tensor<f32>
          memref.tensor_store %17, %alloc_11 : memref<15x13xf32>
          %305 = math.ctpop %4 : tensor<1xi1>
          %306 = vector.maskedload %alloc_18[%c6, %c2], %19, %19 : memref<15x15xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %307 = vector.extract_strided_slice %65 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %alloc_44 = memref.alloc() : memref<15x2xf32>
          memref.copy %alloc_9, %alloc_44 : memref<15x2xf32> to memref<15x2xf32>
          %308 = index.add %c13, %299
          %309 = math.round %15 : tensor<1xf32>
          %310 = arith.subi %false, %false_0 : i1
          %311 = math.exp %cst_3 : f32
          %312 = arith.cmpf ueq, %cst_1, %cst : f16
          %313 = affine.max affine_map<(d0) -> ((-(d0 ceildiv 2) - d0 * 32) * 32, d0 ceildiv 2, -(d0 ceildiv 2 + d0), (-(d0 ceildiv 2) - d0 * 32) * 32)>(%rank_43)
          %314 = math.cttz %8 : tensor<15x2xi16>
          %315 = math.round %5 : tensor<15x2xf16>
          %316 = vector.reduction <mul>, %78 : vector<1xi1> into i1
          %317 = math.fma %cst_21, %cst_4, %in : f32
          %cst_45 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_45 : f32
        }
      %282 = index.sub %c7, %58
      %283 = vector.reduction <and>, %42 : vector<1xi1> into i1
      %284 = memref.realloc %alloc_13 : memref<1xf16> to memref<1xf16>
      %285 = affine.if affine_set<(d0, d1) : (d0 + d1 * 2 == 0, (d1 * 2 + d0 mod 128) * 128 == 0, d1 * 2 == 0, d1 == 0)>(%c3, %c13) -> i1 {
        %291 = arith.maxf %cst_1, %cst_2 : f16
        %292 = tensor.empty() : tensor<15x13xi32>
        %293 = math.fpowi %17, %292 : tensor<15x13xf32>, tensor<15x13xi32>
        %294 = arith.mulf %cst_1, %cst_1 : f16
        %295 = memref.atomic_rmw addf %cst_2, %96[%c9, %c7] : (f16, memref<13x15xf16>) -> f16
        %296 = bufferization.clone %49 : memref<13x15xf16> to memref<13x15xf16>
        %297 = affine.max affine_map<(d0, d1, d2) -> (d1 + d0, d2, d2 floordiv 64 + d0)>(%c7, %c7, %c9)
        %298 = affine.min affine_map<(d0) -> (-(-d0 - d0 ceildiv 2), d0)>(%c3)
        %from_elements = tensor.from_elements %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c975889895_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c898350871_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c898350871_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c681434178_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c681434178_i32, %c975889895_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c681434178_i32, %c1222311867_i32, %c1222311867_i32, %c1222311867_i32, %c898350871_i32, %c1222311867_i32, %c1222311867_i32, %c681434178_i32, %c1222311867_i32, %c681434178_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c975889895_i32, %c681434178_i32, %c1222311867_i32, %c975889895_i32, %c1222311867_i32, %c1222311867_i32, %c975889895_i32, %c898350871_i32, %c681434178_i32, %c681434178_i32, %c975889895_i32, %c975889895_i32, %c681434178_i32, %c975889895_i32, %c898350871_i32, %c898350871_i32, %c681434178_i32, %c898350871_i32, %c975889895_i32, %c975889895_i32 : tensor<15x15xi32>
        affine.yield %true : i1
      } else {
        %291 = math.floor %2 : tensor<15x13xf32>
        %292 = index.divu %c14, %79
        %293 = vector.load %alloc_14[%c2, %c0] : memref<15x2xi64>, vector<15x2xi64>
        %294 = math.ipowi %7, %7 : tensor<15x15xi64>
        %295 = memref.realloc %alloc_6 : memref<1xf32> to memref<15xf32>
        %cst_42 = arith.constant 1.000000e+00 : f16
        %296 = vector.transfer_read %63[%73, %c3], %cst_42 : tensor<15x13xf16>, vector<15xf16>
        %297 = math.ctlz %splat_22 : tensor<15x13xi1>
        %rank_43 = tensor.rank %3 : tensor<15x15xf32>
        affine.yield %false_0 : i1
      }
      %286 = math.ipowi %4, %4 : tensor<1xi1>
      %287 = arith.xori %false_0, %true : i1
      %288 = index.maxs %c5, %c8
      %289 = vector.broadcast %true : i1 to vector<13x13xi1>
      %290 = vector.outerproduct %76, %76, %289 {kind = #vector.kind<maxsi>} : vector<13xi1>, vector<13xi1>
      %splat_41 = tensor.splat %c1954031314_i64 : tensor<15x13xi64>
      scf.yield
    }
    %103 = index.divu %c2, %79
    %104 = vector.broadcast %cst_4 : f32 to vector<f32>
    %105 = vector.transfer_write %104, %15[%c12] : vector<f32>, tensor<1xf32>
    %c1_i32 = arith.constant 1 : i32
    %106 = vector.transfer_read %11[%c12], %c1_i32 : tensor<1xi32>, vector<i32>
    %107 = arith.addi %c-16617_i16, %c-16617_i16 : i16
    %108 = index.castu %c-16617_i16 : i16 to index
    %109 = arith.shrsi %c898350871_i32, %c1222311867_i32 : i32
    %110 = arith.xori %false_0, %false_0 : i1
    %111 = math.sqrt %16 : tensor<15x13xf32>
    %112 = arith.divf %cst_1, %cst_1 : f16
    %113 = bufferization.clone %alloc_14 : memref<15x2xi64> to memref<15x2xi64>
    %114 = math.absi %12 : tensor<15x15xi16>
    %115 = index.ceildivs %46, %c8
    %116 = vector.shuffle %30, %30 [0, 1] : vector<f32>, vector<f32>
    %117 = math.exp %20 : tensor<1xf32>
    %118 = index.castu %c3 : index to i32
    affine.for %arg1 = 0 to 10 {
    }
    %119 = math.ctlz %c681434178_i32 : i32
    %120 = bufferization.clone %alloc : memref<15x15xi64> to memref<15x15xi64>
    %121 = index.ceildivu %108, %c0
    %122 = arith.minsi %true, %true : i1
    %123 = math.copysign %63, %10 : tensor<15x13xf16>
    %124 = vector.extract_strided_slice %44 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
    %125 = index.divs %99, %c8
    %126 = vector.bitcast %65 : vector<1xi1> to vector<1xi1>
    %127 = math.expm1 %10 : tensor<15x13xf16>
    %128 = math.atan2 %10, %63 : tensor<15x13xf16>
    %129 = math.absi %9 : tensor<1xi32>
    %130 = index.divu %90, %c0
    %true_24 = index.bool.constant true
    %131 = math.copysign %17, %17 : tensor<15x13xf32>
    %132 = tensor.empty() : tensor<15x2xi64>
    %alloc_25 = memref.alloc() : memref<15x2xi1>
    %133 = vector.broadcast %false_0 : i1 to vector<15x13xi1>
    %134 = vector.broadcast %c975889895_i32 : i32 to vector<15x13xi32>
    %135 = vector.gather %alloc_25[%121, %130] [%134], %133, %133 : memref<15x2xi1>, vector<15x13xi32>, vector<15x13xi1>, vector<15x13xi1> into vector<15x13xi1>
    %136 = arith.maxf %cst_1, %cst : f16
    %137 = vector.splat %c8 : vector<15x15xindex>
    %138 = vector.bitcast %124 : vector<1xf16> to vector<1xf16>
    %139 = math.log10 %5 : tensor<15x2xf16>
    %140 = arith.cmpf ueq, %cst_1, %cst_1 : f16
    %141 = affine.max affine_map<(d0, d1, d2) -> (d0 * -64)>(%c12, %c7, %c4)
    %142 = index.sub %73, %46
    bufferization.dealloc_tensor %7 : tensor<15x15xi64>
    %143 = arith.shrsi %c1400963913_i64, %c1954031314_i64 : i64
    %144 = vector.matrix_multiply %66, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %145 = math.expm1 %21 : tensor<f32>
    %146 = math.tanh %cst_1 : f16
    %147 = vector.broadcast %c1_i32 : i32 to vector<15xi32>
    %148 = vector.broadcast %false_0 : i1 to vector<15xi1>
    %149 = vector.maskedload %alloc_5[%c0], %148, %147 : memref<1xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
    %150 = math.expm1 %63 : tensor<15x13xf16>
    %151 = math.sqrt %10 : tensor<15x13xf16>
    memref.tensor_store %13, %alloc_10 : memref<15x13xi1>
    %152 = vector.broadcast %c898350871_i32 : i32 to vector<15x15xi32>
    %153 = vector.outerproduct %147, %147, %152 {kind = #vector.kind<minsi>} : vector<15xi32>, vector<15xi32>
    %inserted = tensor.insert %cst_21 into %3[%c10, %c7] : tensor<15x15xf32>
    %154 = math.tanh %cst_21 : f32
    scf.execute_region {
      %274 = vector.flat_transpose %138 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %275 = arith.minf %cst_21, %cst_3 : f32
      %276 = vector.broadcast %true_24 : i1 to vector<1x1xi1>
      %277 = vector.outerproduct %78, %100, %276 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
      %278 = tensor.empty() : tensor<1xi64>
      %279 = memref.atomic_rmw addf %cst_21, %alloc_6[%c0] : (f32, memref<1xf32>) -> f32
      %280 = arith.minsi %c-16617_i16, %c-16617_i16 : i16
      %281 = arith.shrui %c1141727645_i64, %c1954031314_i64 : i64
      %282 = index.divu %130, %115
      %283 = vector.bitcast %76 : vector<13xi1> to vector<13xi1>
      %284 = arith.maxui %c1954031314_i64, %c1954031314_i64 : i64
      %285 = arith.minf %cst_21, %cst_4 : f32
      %286 = vector.splat %c1222311867_i32 : vector<15x13xi32>
      %287 = index.ceildivu %108, %121
      %288 = arith.remsi %c1_i32, %c898350871_i32 : i32
      %289 = math.roundeven %18 : tensor<13xf16>
      %290 = affine.load %alloc_20[%c3, %c6] : memref<13x15xf16>
      scf.yield
    }
    %155 = arith.ori %c681434178_i32, %c1222311867_i32 : i32
    %156 = affine.if affine_set<(d0, d1, d2) : (-d1 - 16 >= 0, (d2 - (((-d1) floordiv 64) floordiv 64) mod 8) mod 32 == 0, d2 - (((-d1) floordiv 64) floordiv 64) mod 8 == 0)>(%c8, %c4, %c11) -> i1 {
      %274 = arith.remsi %c1_i32, %c1_i32 : i32
      %275 = math.ipowi %1, %6 : tensor<15x13xi16>
      %276 = index.castu %c1954031314_i64 : i64 to index
      %277 = index.maxu %142, %276
      bufferization.dealloc_tensor %splat : tensor<15x15xf16>
      %278 = scf.if %true_24 -> (memref<1xi16>) {
        %281 = index.divu %c8, %115
        %282 = vector.create_mask %c5, %79 : vector<15x13xi1>
        %283 = math.tanh %3 : tensor<15x15xf32>
        %collapsed_39 = tensor.collapse_shape %0 [[0, 1]] : tensor<15x15xi16> into tensor<225xi16>
        %alloc_40 = memref.alloc() : memref<225xi16>
        memref.tensor_store %collapsed_39, %alloc_40 : memref<225xi16>
        %284 = math.floor %18 : tensor<13xf16>
        %285 = math.ipowi %c1400963913_i64, %c1141727645_i64 : i64
        %286 = math.absf %cst_1 : f16
        %alloc_41 = memref.alloc() : memref<1xi16>
        scf.yield %alloc_41 : memref<1xi16>
      } else {
        %alloc_39 = memref.alloc() : memref<15x13xi16>
        memref.tensor_store %6, %alloc_39 : memref<15x13xi16>
        %281 = arith.shli %false_0, %false : i1
        %282 = arith.xori %true, %true_24 : i1
        %283 = arith.shrsi %c1222311867_i32, %c1_i32 : i32
        %284 = math.round %2 : tensor<15x13xf32>
        %285 = tensor.empty() : tensor<15x13xi32>
        %286 = math.fpowi %10, %285 : tensor<15x13xf16>, tensor<15x13xi32>
        %287 = index.sub %99, %99
        %288 = math.ctlz %c681434178_i32 : i32
        %alloc_40 = memref.alloc() : memref<1xi16>
        scf.yield %alloc_40 : memref<1xi16>
      }
      %279 = math.absf %cst_3 : f32
      %280 = arith.shrsi %c1400963913_i64, %c1954031314_i64 : i64
      affine.yield %false : i1
    } else {
      %274 = index.ceildivu %c11, %108
      %275 = arith.floordivsi %true, %false : i1
      affine.store %c1222311867_i32, %alloc_17[%c10, %c6] : memref<15x2xi32>
      %276 = index.floordivs %c3, %c5
      %generated_39 = tensor.generate %c2 {
      ^bb0(%arg1: index, %arg2: index):
        %280 = arith.shrsi %c-16617_i16, %c-16617_i16 : i16
        %281 = arith.andi %c1141727645_i64, %c1141727645_i64 : i64
        %282 = arith.remf %cst_4, %cst_3 : f32
        %283 = math.fpowi %15, %9 : tensor<1xf32>, tensor<1xi32>
        tensor.yield %c975889895_i32 : i32
      } : tensor<?x15xi32>
      %277 = math.ctlz %9 : tensor<1xi32>
      %278 = arith.ori %c975889895_i32, %c898350871_i32 : i32
      %279 = math.log10 %3 : tensor<15x15xf32>
      affine.yield %true : i1
    }
    %157 = arith.maxsi %c1_i32, %c1_i32 : i32
    %158 = vector.insert %false, %77 [6] : i1 into vector<13xi1>
    %159 = math.expm1 %15 : tensor<1xf32>
    %160 = arith.divf %cst_1, %cst_2 : f16
    affine.store %c1400963913_i64, %113[%c6, %c11] : memref<15x2xi64>
    %161 = arith.subi %c975889895_i32, %c975889895_i32 : i32
    %162 = vector.maskedload %alloc_15[%c0], %148, %148 : memref<1xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
    %163 = math.rsqrt %20 : tensor<1xf32>
    %164 = affine.if affine_set<(d0, d1) : (d0 floordiv 32 == 0, d1 * 128 + d0 * 2 - 1 + 136 == 0, d0 == 0, d1 * 128 >= 0)>(%c6, %c13) -> memref<15x15xf16> {
      %274 = vector.insertelement %false_0, %162[%101 : index] : vector<15xi1>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d3, d3 floordiv 4 - d0 ceildiv 2 - 1)>(%142, %121, %c8, %130)
      affine.store %cst, %49[%c9, %c0] : memref<13x15xf16>
      %276 = index.sub %c7, %103
      %277 = vector.bitcast %148 : vector<15xi1> to vector<15xi1>
      %278 = arith.divui %c1954031314_i64, %c1954031314_i64 : i64
      memref.copy %alloc_10, %alloc_8 : memref<15x13xi1> to memref<15x13xi1>
      %279 = arith.maxf %cst_3, %cst_3 : f32
      affine.yield %alloc_19 : memref<15x15xf16>
    } else {
      %274 = memref.realloc %alloc_6 : memref<1xf32> to memref<2xf32>
      %275 = affine.min affine_map<(d0) -> (d0 * -2, (d0 + 1) floordiv 128)>(%141)
      %276 = memref.realloc %alloc_15 : memref<1xi1> to memref<2xi1>
      %277 = index.maxs %46, %99
      %278 = affine.if affine_set<(d0) : (d0 >= 0, (d0 floordiv 16) * 4 == 0, (d0 floordiv 16) mod 8 + 16 == 0)>(%c11) -> memref<15x2xf16> {
        %282 = math.log10 %cst : f16
        %283 = arith.xori %c898350871_i32, %c975889895_i32 : i32
        %284 = arith.ori %c1954031314_i64, %c1141727645_i64 : i64
        %285 = index.maxu %c9, %141
        %286 = math.atan %14 : tensor<15x15xf32>
        %287 = tensor.empty() : tensor<15x2xi64>
        %288 = vector.insertelement %true_24, %162[%142 : index] : vector<15xi1>
        %289 = math.cttz %true : i1
        affine.yield %alloc_16 : memref<15x2xf16>
      } else {
        %282 = vector.shuffle %133, %133 [1, 3, 4, 6, 7, 8, 9, 11, 15, 17, 18, 19, 21, 26, 28] : vector<15x13xi1>, vector<15x13xi1>
        %283 = index.sub %90, %142
        %284 = affine.load %alloc_13[%c0] : memref<1xf16>
        %285 = arith.ori %true_24, %false_0 : i1
        %286 = math.floor %18 : tensor<13xf16>
        memref.copy %alloc, %120 : memref<15x15xi64> to memref<15x15xi64>
        %287 = index.ceildivs %283, %142
        %288 = arith.divsi %c1954031314_i64, %c1400963913_i64 : i64
        affine.yield %alloc_16 : memref<15x2xf16>
      }
      %279 = arith.remf %cst_3, %cst_4 : f32
      %280 = math.roundeven %5 : tensor<15x2xf16>
      %281 = math.fma %15, %15, %20 : tensor<1xf32>
      affine.yield %alloc_19 : memref<15x15xf16>
    }
    %165 = bufferization.to_tensor %alloc_20 : memref<13x15xf16>
    %166 = math.ctpop %12 : tensor<15x15xi16>
    %167 = arith.shrsi %true, %true : i1
    %168 = affine.if affine_set<(d0, d1) : (d0 floordiv 32 == 0, d1 * 128 + d0 * 2 - 1 + 136 == 0, d0 == 0, d1 * 128 >= 0)>(%c3, %c2) -> i1 {
      %274 = arith.remsi %c898350871_i32, %c898350871_i32 : i32
      %275 = vector.maskedload %120[%c13, %c6], %100, %66 : memref<15x15xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
      scf.index_switch %c12 
      case 1 {
        %280 = arith.mulf %cst, %cst : f16
        %281 = vector.flat_transpose %65 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %282 = index.ceildivs %58, %108
        memref.copy %alloc_12, %51 : memref<15x2xi64> to memref<15x2xi64>
        %283 = vector.create_mask %46, %c14 : vector<15x15xi1>
        %284 = index.ceildivs %103, %c8
        %285 = vector.broadcast %cst_4 : f32 to vector<15x2xf32>
        %286 = vector.fma %285, %285, %285 : vector<15x2xf32>
        %287 = vector.extract_strided_slice %135 {offsets = [3], sizes = [1], strides = [1]} : vector<15x13xi1> to vector<1x13xi1>
        %inserted_40 = tensor.insert %true into %4[%c0] : tensor<1xi1>
        %288 = index.castu %c14 : index to i32
        %alloca_41 = memref.alloca() : memref<15x2xf32>
        %289 = math.ceil %14 : tensor<15x15xf32>
        %290 = math.rsqrt %14 : tensor<15x15xf32>
        %cst_42 = arith.constant 1.12865523E+9 : f32
        %291 = math.absi %12 : tensor<15x15xi16>
        %292 = math.fma %14, %3, %14 : tensor<15x15xf32>
        scf.yield
      }
      case 2 {
        %280 = math.ctpop %false_0 : i1
        %281 = index.floordivs %c5, %c10
        %282 = index.castu %c-16617_i16 : i16 to index
        %283 = arith.remf %cst_1, %cst_2 : f16
        %284 = tensor.empty(%c15, %115) : tensor<?x?xi32>
        %285 = math.floor %14 : tensor<15x15xf32>
        %286 = math.absf %14 : tensor<15x15xf32>
        %287 = vector.extract_strided_slice %138 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %288 = math.fma %3, %3, %14 : tensor<15x15xf32>
        %289 = vector.broadcast %cst_3 : f32 to vector<15x15xf32>
        %290 = arith.floordivsi %c1222311867_i32, %c898350871_i32 : i32
        %291 = vector.shuffle %289, %289 [0, 3, 4, 5, 7, 8, 10, 11, 12, 13, 14, 15, 17, 20, 22, 23, 24, 27, 28, 29] : vector<15x15xf32>, vector<15x15xf32>
        %292 = index.ceildivs %142, %c11
        %293 = arith.ori %false, %true_24 : i1
        %294 = math.floor %22 : tensor<f32>
        %295 = arith.divf %cst_2, %cst : f16
        scf.yield
      }
      case 3 {
        affine.store %c1954031314_i64, %alloc_12[%c4, %c10] : memref<15x2xi64>
        %280 = math.ceil %16 : tensor<15x13xf32>
        %281 = math.log10 %10 : tensor<15x13xf16>
        %282 = math.copysign %14, %14 : tensor<15x15xf32>
        %283 = vector.extract_strided_slice %138 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %284 = tensor.empty() : tensor<15x13xi32>
        %285 = math.fpowi %2, %284 : tensor<15x13xf32>, tensor<15x13xi32>
        %286 = index.ceildivu %c8, %c3
        %287 = arith.addi %c898350871_i32, %c1_i32 : i32
        %288 = index.sub %c9, %141
        %289 = vector.insert %false_0, %77 [6] : i1 into vector<13xi1>
        %290 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
        %291 = vector.outerproduct %41, %138, %290 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
        %292 = vector.bitcast %138 : vector<1xf16> to vector<1xf16>
        %293 = arith.shrsi %true, %false : i1
        %294 = math.absi %11 : tensor<1xi32>
        %295 = arith.cmpf ult, %cst_3, %cst_3 : f32
        %296 = math.copysign %cst_4, %cst_3 : f32
        scf.yield
      }
      case 4 {
        %280 = arith.maxf %cst_1, %cst_1 : f16
        %281 = math.expm1 %16 : tensor<15x13xf32>
        %282 = vector.flat_transpose %162 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
        %283 = vector.broadcast %true : i1 to vector<13x13xi1>
        %284 = vector.outerproduct %77, %76, %283 {kind = #vector.kind<minsi>} : vector<13xi1>, vector<13xi1>
        %alloc_40 = memref.alloc() : memref<1xi32>
        memref.copy %alloc_5, %alloc_40 : memref<1xi32> to memref<1xi32>
        %285 = math.sqrt %18 : tensor<13xf16>
        %286 = tensor.empty() : tensor<15x15xf16>
        %287 = linalg.matmul ins(%10, %165 : tensor<15x13xf16>, tensor<13x15xf16>) outs(%286 : tensor<15x15xf16>) -> tensor<15x15xf16>
        %288 = vector.load %alloc_10[%c14, %c7] : memref<15x13xi1>, vector<1xi1>
        %289 = vector.broadcast %90 : index to vector<1xindex>
        vector.scatter %51[%c9, %c0] [%289], %126, %275 : memref<15x2xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %290 = tensor.empty(%130) : tensor<?xi32>
        %291 = vector.splat %c681434178_i32 : vector<15x2xi32>
        %292 = index.ceildivs %58, %c11
        %293 = vector.broadcast %c681434178_i32 : i32 to vector<15x2xi32>
        %294 = math.cos %10 : tensor<15x13xf16>
        %295 = math.log10 %3 : tensor<15x15xf32>
        %296 = vector.extract_strided_slice %100 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        scf.yield
      }
      default {
        %280 = math.sqrt %5 : tensor<15x2xf16>
        %281 = vector.insert %c975889895_i32, %43 [0] : i32 into vector<1xi32>
        memref.tensor_store %4, %alloc_15 : memref<1xi1>
        %282 = vector.broadcast %c1954031314_i64 : i64 to vector<1x1xi64>
        %283 = vector.outerproduct %275, %144, %282 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %284 = vector.flat_transpose %275 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %285 = math.round %cst_4 : f32
        %286 = math.log10 %10 : tensor<15x13xf16>
        %287 = math.ctpop %12 : tensor<15x15xi16>
        %alloc_40 = memref.alloc() : memref<1xi1>
        memref.copy %alloc_15, %alloc_40 : memref<1xi1> to memref<1xi1>
        %288 = affine.max affine_map<(d0, d1) -> (d1 * 2 - 2, 0, d0 floordiv 8, d0)>(%c5, %121)
        %289 = math.tanh %3 : tensor<15x15xf32>
        %dest_41, %accumulated_value_42 = vector.scan <or>, %135, %162 {inclusive = true, reduction_dim = 1 : i64} : vector<15x13xi1>, vector<15xi1>
        %290 = math.copysign %2, %16 : tensor<15x13xf32>
        %291 = math.exp2 %cst_2 : f16
        %292 = vector.broadcast %c1 : index to vector<15xindex>
        %293 = vector.broadcast %cst_2 : f16 to vector<15xf16>
        vector.scatter %49[%c8, %c13] [%292], %162, %293 : memref<13x15xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        %294 = math.round %5 : tensor<15x2xf16>
      }
      %276 = math.log %cst : f16
      %277 = vector.splat %130 : vector<15x13xindex>
      %278 = math.tanh %cst_3 : f32
      %279 = bufferization.clone %alloc_8 : memref<15x13xi1> to memref<15x13xi1>
      %rank_39 = tensor.rank %10 : tensor<15x13xf16>
      affine.yield %false_0 : i1
    } else {
      %274 = vector.gather %alloc_25[%142, %c6] [%134], %133, %135 : memref<15x2xi1>, vector<15x13xi32>, vector<15x13xi1>, vector<15x13xi1> into vector<15x13xi1>
      scf.execute_region {
        %280 = index.casts %c11 : index to i32
        %281 = math.ceil %5 : tensor<15x2xf16>
        %282 = index.casts %true_24 : i1 to index
        %283 = affine.load %alloc_14[%c10, %c12] : memref<15x2xi64>
        %284 = math.ceil %cst_21 : f32
        %285 = math.tan %15 : tensor<1xf32>
        %286 = arith.ceildivsi %c1222311867_i32, %c1_i32 : i32
        %287 = index.ceildivs %130, %141
        %288 = math.floor %165 : tensor<13x15xf16>
        affine.store %false_0, %alloc_10[%c7, %c4] : memref<15x13xi1>
        %289 = arith.divui %c1954031314_i64, %283 : i64
        %290 = math.log %14 : tensor<15x15xf32>
        %291 = arith.minsi %true_24, %false_0 : i1
        %292 = index.divs %c9, %142
        %293 = arith.andi %c681434178_i32, %c681434178_i32 : i32
        %294 = math.cos %2 : tensor<15x13xf32>
        scf.yield
      }
      %275 = arith.negf %cst_21 : f32
      %276 = math.exp2 %22 : tensor<f32>
      %false_39 = arith.constant false
      %277 = index.sub %79, %108
      %278 = index.add %130, %c6
      %279 = math.copysign %15, %20 : tensor<1xf32>
      affine.yield %false_0 : i1
    }
    memref.copy %alloc_8, %alloc_7 : memref<15x13xi1> to memref<15x13xi1>
    %169 = bufferization.to_tensor %96 : memref<13x15xf16>
    %170 = math.cttz %11 : tensor<1xi32>
    %171 = arith.andi %c975889895_i32, %c1_i32 : i32
    %172 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %78, %126, %false : vector<1xi1>, vector<1xi1> into i1
    %173 = arith.addf %cst_3, %cst_21 : f32
    %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<15x13xi16> into tensor<195xi16>
    %174 = math.rsqrt %reduced : tensor<13xf16>
    %175 = arith.minf %cst_4, %cst_4 : f32
    %176 = bufferization.clone %alloc_7 : memref<15x13xi1> to memref<15x13xi1>
    %generated = tensor.generate %c4 {
    ^bb0(%arg1: index):
      scf.index_switch %115 
      case 1 {
        %276 = math.exp %169 : tensor<13x15xf16>
        %rank_39 = tensor.rank %4 : tensor<1xi1>
        %277 = tensor.empty() : tensor<13x13xf32>
        %278 = tensor.empty() : tensor<15x13xf32>
        %279 = linalg.matmul ins(%16, %277 : tensor<15x13xf32>, tensor<13x13xf32>) outs(%278 : tensor<15x13xf32>) -> tensor<15x13xf32>
        %280 = bufferization.to_memref %14 : memref<15x15xf32>
        %281 = affine.load %alloc_11[%c7, %c2] : memref<15x13xf32>
        %282 = index.floordivs %c12, %108
        %283 = math.expm1 %15 : tensor<1xf32>
        bufferization.dealloc_tensor %reduced : tensor<13xf16>
        %284 = vector.extract %19[1] : vector<2xi1>
        %285 = arith.maxf %cst_21, %cst_4 : f32
        %286 = vector.shuffle %83, %83 [1] : vector<1xf32>, vector<1xf32>
        %287 = arith.xori %c1_i32, %c681434178_i32 : i32
        %288 = arith.xori %c975889895_i32, %c1222311867_i32 : i32
        %cst_40 = arith.constant 0x4CF7348A : f32
        %289 = tensor.empty() : tensor<13x13xi1>
        %290 = tensor.empty() : tensor<15x13xi1>
        %291 = linalg.matmul ins(%13, %289 : tensor<15x13xi1>, tensor<13x13xi1>) outs(%290 : tensor<15x13xi1>) -> tensor<15x13xi1>
        %292 = arith.ori %c1141727645_i64, %c1400963913_i64 : i64
        scf.yield
      }
      default {
        %276 = index.add %141, %130
        %277 = index.sub %90, %arg1
        %278 = math.floor %18 : tensor<13xf16>
        %279 = math.roundeven %reduced : tensor<13xf16>
        %280 = math.sqrt %18 : tensor<13xf16>
        %281 = vector.broadcast %c1400963913_i64 : i64 to vector<15x2xi64>
        %282 = arith.remf %cst_2, %cst_2 : f16
        affine.store %c1954031314_i64, %alloc[%c14, %c12] : memref<15x15xi64>
        %283 = arith.divf %cst_2, %cst_2 : f16
        memref.copy %alloc_20, %49 : memref<13x15xf16> to memref<13x15xf16>
        %284 = vector.broadcast %c1954031314_i64 : i64 to vector<15x15xi64>
        %285 = arith.cmpf oge, %cst_3, %cst_3 : f32
        %286 = math.sqrt %reduced : tensor<13xf16>
        %287 = math.floor %cst_3 : f32
        %288 = index.divs %c6, %c11
        %289 = math.expm1 %15 : tensor<1xf32>
      }
      %274 = tensor.empty() : tensor<15x13xi1>
      memref.store %cst_2, %alloc_13[%c0] : memref<1xf16>
      %275 = index.divu %58, %c1
      tensor.yield %cst_3 : f32
    } : tensor<?xf32>
    %177 = vector.create_mask %c1 : vector<1xi1>
    %178 = math.round %splat : tensor<15x15xf16>
    %179 = math.ceil %5 : tensor<15x2xf16>
    %alloc_26 = memref.alloc() : memref<15x2xf16>
    memref.copy %alloc_16, %alloc_26 : memref<15x2xf16> to memref<15x2xf16>
    %180 = arith.shli %c1222311867_i32, %c975889895_i32 : i32
    %alloc_27 = memref.alloc() : memref<15x13xf16>
    %181 = vector.broadcast %cst_2 : f16 to vector<15x2xf16>
    %182 = vector.broadcast %true_24 : i1 to vector<15x2xi1>
    %183 = vector.broadcast %c975889895_i32 : i32 to vector<15x2xi32>
    %184 = vector.gather %alloc_27[%125, %121] [%183], %182, %181 : memref<15x13xf16>, vector<15x2xi32>, vector<15x2xi1>, vector<15x2xf16> into vector<15x2xf16>
    %185 = vector.reduction <add>, %41 : vector<1xf16> into f16
    %186 = arith.divui %c1400963913_i64, %c1141727645_i64 : i64
    %187 = vector.shuffle %83, %83 [1] : vector<1xf32>, vector<1xf32>
    %alloc_28 = memref.alloc() : memref<13x13xi16>
    %188 = tensor.empty() : tensor<15x13xi16>
    %189 = linalg.matmul ins(%6, %alloc_28 : tensor<15x13xi16>, memref<13x13xi16>) outs(%188 : tensor<15x13xi16>) -> tensor<15x13xi16>
    %190 = arith.divf %cst, %cst : f16
    %191 = vector.broadcast %false : i1 to vector<1x1xi1>
    %192 = vector.outerproduct %65, %78, %191 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    %193 = vector.load %alloc_10[%c5, %c3] : memref<15x13xi1>, vector<1xi1>
    %194 = math.atan2 %splat, %splat : tensor<15x15xf16>
    %195 = arith.xori %true, %false_0 : i1
    %196 = affine.if affine_set<(d0, d1, d2) : (d0 - d2 - 24 == 0, (d2 + 1) mod 4 >= 0)>(%c3, %c6, %c3) -> f32 {
      %274 = math.sqrt %10 : tensor<15x13xf16>
      %275 = arith.maxf %cst, %cst_2 : f16
      scf.if %false {
        %281 = vector.gather %alloc_9[%c8, %108] [%43], %87, %83 : memref<15x2xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %extracted_39 = tensor.extract %16[%c13, %c1] : tensor<15x13xf32>
        %282 = arith.xori %false, %true : i1
        %283 = vector.broadcast %c975889895_i32 : i32 to vector<15x15xi32>
        %284 = vector.broadcast %true_24 : i1 to vector<15x15xi1>
        %285 = vector.gather %alloc_5[%125] [%283], %284, %283 : memref<1xi32>, vector<15x15xi32>, vector<15x15xi1>, vector<15x15xi32> into vector<15x15xi32>
        %286 = index.floordivs %c10, %141
        %287 = arith.remf %cst_1, %cst_2 : f16
        %288 = bufferization.to_tensor %alloc_11 : memref<15x13xf32>
        %289 = vector.bitcast %126 : vector<1xi1> to vector<1xi1>
      }
      %276 = scf.execute_region -> f32 {
        %281 = affine.load %alloc[%c6, %c2] : memref<15x15xi64>
        %282 = arith.subi %true, %false_0 : i1
        %283 = arith.floordivsi %281, %c1400963913_i64 : i64
        %284 = arith.negf %cst_2 : f16
        %285 = arith.minf %cst_1, %cst_2 : f16
        %collapsed_39 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x15xi16> into tensor<225xi16>
        %c815041373_i32 = arith.constant 815041373 : i32
        %286 = arith.remf %cst_21, %cst_4 : f32
        %287 = vector.splat %c1222311867_i32 : vector<15x2xi32>
        %288 = math.log10 %5 : tensor<15x2xf16>
        %289 = bufferization.clone %alloc_25 : memref<15x2xi1> to memref<15x2xi1>
        %290 = math.expm1 %cst_21 : f32
        %291 = arith.ceildivsi %c1222311867_i32, %c898350871_i32 : i32
        %292 = vector.broadcast %281 : i64 to vector<15x15xi64>
        %splat_40 = tensor.splat %false_0 : tensor<15x15xi1>
        %293 = math.sqrt %reduced : tensor<13xf16>
        scf.yield %cst_4 : f32
      }
      %277 = arith.maxf %cst_21, %cst_4 : f32
      %278 = math.tanh %63 : tensor<15x13xf16>
      %279 = arith.remf %cst_1, %cst_1 : f16
      %280 = math.ipowi %4, %4 : tensor<1xi1>
      affine.yield %cst_4 : f32
    } else {
      %274 = arith.remsi %true_24, %false_0 : i1
      %275 = arith.shrsi %false, %true_24 : i1
      %c-32056_i16 = arith.constant -32056 : i16
      %276 = arith.floordivsi %c975889895_i32, %c1222311867_i32 : i32
      %277 = index.maxu %c1, %c9
      %278 = index.floordivs %c12, %c0
      %279 = arith.remf %cst_21, %cst_21 : f32
      %280 = index.mul %125, %c5
      affine.yield %cst_21 : f32
    }
    %197 = arith.negf %cst_1 : f16
    %198 = tensor.empty() : tensor<15x2xi32>
    %199 = math.fpowi %5, %198 : tensor<15x2xf16>, tensor<15x2xi32>
    %200 = arith.floordivsi %c1141727645_i64, %c1141727645_i64 : i64
    %201 = vector.transpose %77, [0] : vector<13xi1> to vector<13xi1>
    %202 = vector.broadcast %cst_4 : f32 to vector<2xf32>
    %203 = vector.transfer_write %202, %3[%c3, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf32>, tensor<15x15xf32>
    %204 = tensor.empty() : tensor<15x13xi16>
    %mapped = linalg.map ins(%6, %6 : tensor<15x13xi16>, tensor<15x13xi16>) outs(%204 : tensor<15x13xi16>)
      (%in: i16, %in_39: i16) {
        %274 = tensor.empty() : tensor<15x15xf16>
        %275 = linalg.matmul ins(%63, %165 : tensor<15x13xf16>, tensor<13x15xf16>) outs(%274 : tensor<15x15xf16>) -> tensor<15x15xf16>
        %276 = index.ceildivs %121, %142
        %277 = math.ipowi %false_0, %true : i1
        %278 = memref.realloc %alloc_5 : memref<1xi32> to memref<1xi32>
        %279 = index.add %c4, %46
        %280 = vector.bitcast %135 : vector<15x13xi1> to vector<15x13xi1>
        affine.store %cst_4, %alloc_11[%c8, %c11] : memref<15x13xf32>
        %281 = arith.remsi %c1_i32, %c1222311867_i32 : i32
        %282 = index.divu %c14, %c15
        %cst_40 = arith.constant 1.000000e+00 : f16
        %283 = vector.transfer_read %5[%c4, %c10], %cst_40 : tensor<15x2xf16>, vector<f16>
        %284 = vector.extract_strided_slice %83 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %285 = math.rsqrt %20 : tensor<1xf32>
        %alloc_41 = memref.alloc() : memref<15x15xf32>
        memref.tensor_store %3, %alloc_41 : memref<15x15xf32>
        %286 = math.ceil %15 : tensor<1xf32>
        bufferization.dealloc_tensor %splat_22 : tensor<15x13xi1>
        %287 = affine.if affine_set<(d0) : (d0 >= 0, (d0 floordiv 16) * 4 == 0, (d0 floordiv 16) mod 8 + 16 == 0)>(%c12) -> memref<1xi32> {
          %305 = math.atan %cst_4 : f32
          %306 = math.ctpop %c975889895_i32 : i32
          %307 = memref.atomic_rmw assign %c975889895_i32, %25[%c9, %c0] : (i32, memref<15x2xi32>) -> i32
          %308 = math.roundeven %21 : tensor<f32>
          %309 = math.absi %c975889895_i32 : i32
          %310 = vector.bitcast %134 : vector<15x13xi32> to vector<15x13xf32>
          %311 = math.roundeven %cst_4 : f32
          %312 = math.copysign %15, %20 : tensor<1xf32>
          affine.yield %alloc_5 : memref<1xi32>
        } else {
          %305 = arith.shrsi %c681434178_i32, %c1222311867_i32 : i32
          %306 = index.ceildivs %58, %c1
          %307 = vector.insert %cst_2, %138 [0] : f16 into vector<1xf16>
          bufferization.dealloc_tensor %13 : tensor<15x13xi1>
          %308 = index.divu %c3, %279
          %true_42 = index.bool.constant true
          %309 = index.divs %306, %c6
          %310 = arith.ori %false_0, %true_24 : i1
          affine.yield %alloc_5 : memref<1xi32>
        }
        %288 = arith.shrsi %c1400963913_i64, %c1400963913_i64 : i64
        %289 = tensor.empty(%108, %90) : tensor<?x?xi32>
        %290 = math.ipowi %13, %13 : tensor<15x13xi1>
        %291 = vector.broadcast %c-16617_i16 : i16 to vector<i16>
        %292 = vector.transfer_write %291, %collapsed[%142] : vector<i16>, tensor<195xi16>
        %293 = vector.gather %alloc_19[%103, %c7] [%43], %87, %124 : memref<15x15xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %294 = index.mul %141, %c9
        %295 = affine.for %arg1 = 0 to 99 iter_args(%arg2 = %c10) -> (index) {
          affine.yield %130 : index
        }
        %296 = math.ceil %cst_40 : f16
        %297 = vector.load %alloc_7[%c9, %c10] : memref<15x13xi1>, vector<15x15xi1>
        %298 = index.floordivs %58, %130
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 8 + d0 ceildiv 4 - d0 * 2)>(%279, %c4, %c13, %99)
        %300 = vector.reduction <minui>, %42 : vector<1xi1> into i1
        %301 = arith.cmpf ult, %cst, %cst_40 : f16
        %302 = vector.broadcast %c1_i32 : i32 to vector<15x13xi32>
        %303 = math.fma %2, %2, %2 : tensor<15x13xf32>
        %304 = vector.splat %cst_21 : vector<15x15xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %205 = math.log1p %3 : tensor<15x15xf32>
    scf.index_switch %c14 
    case 1 {
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 4 - 128, d3, d1 * -16, d2 floordiv 4 - 128)>(%108, %115, %101, %c13)
      %275 = math.tanh %14 : tensor<15x15xf32>
      %false_39 = index.bool.constant false
      %276 = arith.shrui %true_24, %false_0 : i1
      %277 = affine.for %arg1 = 0 to 0 iter_args(%arg2 = %188) -> (tensor<15x13xi16>) {
        affine.yield %1 : tensor<15x13xi16>
      }
      %278 = vector.reduction <minsi>, %42 : vector<1xi1> into i1
      %collapsed_40 = tensor.collapse_shape %10 [[0, 1]] : tensor<15x13xf16> into tensor<195xf16>
      %279 = vector.matrix_multiply %162, %77 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 13 : i32} : (vector<15xi1>, vector<13xi1>) -> vector<195xi1>
      %280 = math.copysign %16, %2 : tensor<15x13xf32>
      %281 = math.absi %c-16617_i16 : i16
      %282 = arith.divsi %c1_i32, %c681434178_i32 : i32
      %283 = arith.addi %c1_i32, %c898350871_i32 : i32
      %rank_41 = tensor.rank %169 : tensor<13x15xf16>
      %284 = arith.remf %cst_3, %cst_3 : f32
      %285 = arith.maxui %c1_i32, %c975889895_i32 : i32
      %286 = tensor.empty(%101) : tensor<?xi32>
      scf.yield
    }
    case 2 {
      %274 = vector.broadcast %cst_2 : f16 to vector<2xf16>
      %dest_39, %accumulated_value_40 = vector.scan <mul>, %184, %274 {inclusive = true, reduction_dim = 0 : i64} : vector<15x2xf16>, vector<2xf16>
      %275 = index.divs %c1, %103
      %276 = math.exp2 %20 : tensor<1xf32>
      %277 = math.ipowi %13, %splat_22 : tensor<15x13xi1>
      %278 = vector.broadcast %c12 : index to vector<1xindex>
      vector.scatter %alloc_9[%c8, %c0] [%278], %177, %83 : memref<15x2xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %279 = memref.realloc %alloc_5 : memref<1xi32> to memref<2xi32>
      scf.index_switch %c0 
      case 1 {
        %289 = arith.shrui %false_0, %false_0 : i1
        %290 = affine.max affine_map<(d0, d1) -> (d1 + 64, (d0 - 4) mod 64, d1 + 72, d0 + 64)>(%c1, %142)
        %291 = index.maxu %c10, %99
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %100, %100, %true : vector<1xi1>, vector<1xi1> into i1
        %293 = math.absi %13 : tensor<15x13xi1>
        %294 = math.roundeven %cst : f16
        %295 = vector.bitcast %134 : vector<15x13xi32> to vector<15x13xi32>
        %296 = index.ceildivs %c7, %142
        %297 = vector.load %alloc_14[%c6, %c1] : memref<15x2xi64>, vector<15x2xi64>
        %298 = vector.transpose %183, [1, 0] : vector<15x2xi32> to vector<2x15xi32>
        %alloc_41 = memref.alloc() : memref<15x13xi16>
        memref.tensor_store %6, %alloc_41 : memref<15x13xi16>
        %299 = math.rsqrt %20 : tensor<1xf32>
        %300 = arith.subi %c975889895_i32, %c975889895_i32 : i32
        %301 = vector.extract_strided_slice %42 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %302 = arith.maxf %cst_1, %cst_1 : f16
        %303 = bufferization.to_memref %3 : memref<15x15xf32>
        scf.yield
      }
      case 2 {
        %289 = math.fpowi %cst_2, %c975889895_i32 : f16, i32
        %290 = index.add %c15, %c8
        %291 = math.round %169 : tensor<13x15xf16>
        affine.store %c975889895_i32, %25[%c2, %c4] : memref<15x2xi32>
        %292 = math.ipowi %0, %12 : tensor<15x15xi16>
        %293 = vector.transpose %126, [0] : vector<1xi1> to vector<1xi1>
        %294 = memref.realloc %alloc_13 : memref<1xf16> to memref<15xf16>
        %splat_41 = tensor.splat %false : tensor<1xi1>
        %295 = arith.negf %cst_21 : f32
        %296 = arith.divf %cst_3, %cst_21 : f32
        %297 = memref.realloc %alloc_15 : memref<1xi1> to memref<15xi1>
        %298 = math.atan %17 : tensor<15x13xf32>
        %299 = arith.xori %true, %true : i1
        %300 = vector.broadcast %cst : f16 to vector<15xf16>
        %dest_42, %accumulated_value_43 = vector.scan <add>, %181, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<15x2xf16>, vector<15xf16>
        %from_elements = tensor.from_elements %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16, %c-16617_i16 : tensor<15x15xi16>
        %301 = arith.xori %c975889895_i32, %c1222311867_i32 : i32
        scf.yield
      }
      default {
        %alloc_41 = memref.alloc() : memref<1xf16>
        memref.copy %alloc_13, %alloc_41 : memref<1xf16> to memref<1xf16>
        %289 = arith.xori %true_24, %true : i1
        %290 = vector.gather %25[%c5, %c5] [%43], %78, %43 : memref<15x2xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %291 = math.ipowi %1, %6 : tensor<15x13xi16>
        %292 = arith.negf %cst_2 : f16
        %extracted_42 = tensor.extract %7[%c12, %c14] : tensor<15x15xi64>
        %293 = math.roundeven %5 : tensor<15x2xf16>
        %294 = affine.max affine_map<(d0) -> (d0, (d0 + 8) * 32, d0 + 9, d0 + 9)>(%275)
        %295 = math.sqrt %5 : tensor<15x2xf16>
        %296 = tensor.empty() : tensor<15x15xi32>
        %297 = vector.broadcast %c898350871_i32 : i32 to vector<15x15xi32>
        %298 = vector.broadcast %false_0 : i1 to vector<15x15xi1>
        %299 = vector.gather %296[%c14, %c12] [%297], %298, %297 : tensor<15x15xi32>, vector<15x15xi32>, vector<15x15xi1>, vector<15x15xi32> into vector<15x15xi32>
        %300 = vector.gather %alloc_16[%c0, %142] [%290], %126, %124 : memref<15x2xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %301 = arith.maxsi %c1400963913_i64, %c1954031314_i64 : i64
        %dest_43, %accumulated_value_44 = vector.scan <minui>, %135, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<15x13xi1>, vector<13xi1>
        %302 = arith.xori %c1222311867_i32, %c898350871_i32 : i32
        %303 = math.absi %extracted_42 : i64
        %304 = index.sub %121, %c3
      }
      %280 = vector.matrix_multiply %193, %177 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %281 = arith.maxf %cst_3, %cst_3 : f32
      %282 = arith.subi %c1222311867_i32, %c975889895_i32 : i32
      %283 = arith.floordivsi %false_0, %false : i1
      %284 = vector.load %alloc[%c5, %c14] : memref<15x15xi64>, vector<15x15xi64>
      %285 = index.divu %c1, %90
      %286 = math.log10 %5 : tensor<15x2xf16>
      %287 = arith.shrsi %c1141727645_i64, %c1141727645_i64 : i64
      %288 = math.cttz %c1954031314_i64 : i64
      scf.yield
    }
    default {
      %274 = vector.broadcast %true : i1 to vector<1xi1>
      %275 = arith.xori %c898350871_i32, %c1_i32 : i32
      %276 = memref.alloca_scope  -> (i16) {
        %288 = vector.broadcast %false : i1 to vector<2x2xi1>
        %289 = vector.outerproduct %19, %19, %288 {kind = #vector.kind<mul>} : vector<2xi1>, vector<2xi1>
        %290 = index.divs %103, %c5
        %291 = arith.negf %cst_4 : f32
        %292 = arith.shrui %c681434178_i32, %c1_i32 : i32
        %293 = math.tanh %22 : tensor<f32>
        %cst_41 = arith.constant 2.14684134E+9 : f32
        %294 = index.castu %103 : index to i32
        %c2118237507_i64 = arith.constant 2118237507 : i64
        %295 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c8, %c4, %108, %c3)
        %296 = arith.maxui %c1400963913_i64, %c1400963913_i64 : i64
        %297 = vector.matrix_multiply %124, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %298 = arith.divsi %c1222311867_i32, %c1_i32 : i32
        memref.copy %alloc_14, %113 : memref<15x2xi64> to memref<15x2xi64>
        %299 = index.mul %90, %c3
        %300 = vector.extract_strided_slice %100 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %301 = arith.maxf %cst, %cst_2 : f16
        %302 = math.copysign %20, %20 : tensor<1xf32>
        %303 = math.ctlz %12 : tensor<15x15xi16>
        %304 = math.ctlz %8 : tensor<15x2xi16>
        %305 = math.tanh %169 : tensor<13x15xf16>
        %306 = math.tanh %cst_4 : f32
        %307 = vector.insert %cst_3, %202 [1] : f32 into vector<2xf32>
        %308 = math.cos %17 : tensor<15x13xf32>
        %309 = math.expm1 %reduced : tensor<13xf16>
        %310 = tensor.empty(%121) : tensor<?x13xf32>
        %311 = index.sub %103, %c6
        %312 = arith.mulf %cst_3, %cst_4 : f32
        %313 = vector.load %49[%c3, %c8] : memref<13x15xf16>, vector<15x2xf16>
        %314 = arith.ori %false_0, %true_24 : i1
        %315 = index.casts %c1954031314_i64 : i64 to index
        %316 = arith.divsi %true_24, %true : i1
        %317 = math.fma %2, %2, %16 : tensor<15x13xf32>
        memref.alloca_scope.return %c-16617_i16 : i16
      }
      %collapsed_39 = tensor.collapse_shape %8 [[0, 1]] : tensor<15x2xi16> into tensor<30xi16>
      %277 = arith.minf %cst_4, %cst_3 : f32
      %278 = arith.shrui %c681434178_i32, %c681434178_i32 : i32
      %279 = vector.matrix_multiply %77, %274 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<1xi1>) -> vector<13xi1>
      %280 = math.copysign %16, %17 : tensor<15x13xf32>
      %281 = index.floordivs %c4, %c1
      %282 = bufferization.to_tensor %alloc_6 : memref<1xf32>
      %283 = arith.andi %false_0, %true : i1
      %284 = arith.shrui %c1141727645_i64, %c1954031314_i64 : i64
      %285 = bufferization.to_tensor %49 : memref<13x15xf16>
      %alloc_40 = memref.alloc() : memref<15x13xi16>
      memref.tensor_store %6, %alloc_40 : memref<15x13xi16>
      %286 = index.sub %79, %c13
      %287 = arith.divsi %true, %true : i1
    }
    %dest, %accumulated_value = vector.scan <maxui>, %182, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<15x2xi1>, vector<2xi1>
    %dest_29, %accumulated_value_30 = vector.scan <minui>, %135, %162 {inclusive = false, reduction_dim = 1 : i64} : vector<15x13xi1>, vector<15xi1>
    %206 = tensor.empty() : tensor<f32>
    %mapped_31 = linalg.map ins(%22 : tensor<f32>) outs(%206 : tensor<f32>)
      (%in: f32) {
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %124, %41, %cst : vector<1xf16>, vector<1xf16> into f16
        %275 = vector.flat_transpose %87 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %276 = arith.cmpf ueq, %cst_3, %cst_21 : f32
        %277 = affine.if affine_set<(d0, d1, d2, d3) : (d3 * 8 >= 0, d1 - d0 + 32 == 0, d3 * 4 == 0, d1 - d0 == 0)>(%c8, %c7, %c3, %c0) -> memref<15x13xi1> {
          %303 = math.round %15 : tensor<1xf32>
          %304 = math.ctlz %8 : tensor<15x2xi16>
          %305 = index.divu %c3, %c15
          %306 = bufferization.clone %alloc_20 : memref<13x15xf16> to memref<13x15xf16>
          %307 = vector.splat %c681434178_i32 : vector<15x15xi32>
          %false_41 = arith.constant false
          %308 = vector.reduction <mul>, %162 : vector<15xi1> into i1
          %309 = index.divs %141, %c8
          affine.yield %alloc_10 : memref<15x13xi1>
        } else {
          %303 = index.ceildivs %c2, %141
          %304 = bufferization.clone %alloc_13 : memref<1xf16> to memref<1xf16>
          %305 = math.cttz %collapsed : tensor<195xi16>
          %306 = index.divu %142, %c10
          %307 = index.casts %c975889895_i32 : i32 to index
          %308 = vector.create_mask %307 : vector<1xi1>
          %309 = arith.remf %cst_2, %cst : f16
          %310 = index.maxu %c14, %c15
          affine.yield %176 : memref<15x13xi1>
        }
        affine.store %cst, %alloc_19[%c3, %c10] : memref<15x15xf16>
        %278 = arith.xori %c1141727645_i64, %c1141727645_i64 : i64
        %279 = math.roundeven %splat : tensor<15x15xf16>
        %280 = affine.apply affine_map<(d0) -> (d0 mod 32)>(%c14)
        %281 = index.mul %c5, %c8
        %282 = math.log1p %14 : tensor<15x15xf32>
        %283 = arith.addf %cst_2, %cst_2 : f16
        %284 = vector.reduction <add>, %83 : vector<1xf32> into f32
        %285 = index.ceildivu %c10, %c12
        %286 = index.divu %c14, %c0
        memref.copy %120, %alloc : memref<15x15xi64> to memref<15x15xi64>
        %287 = arith.xori %c1_i32, %c898350871_i32 : i32
        %288 = vector.bitcast %133 : vector<15x13xi1> to vector<15x13xi1>
        %289 = math.absf %15 : tensor<1xf32>
        %290 = index.sub %142, %108
        %291 = arith.cmpf ord, %cst_3, %cst_21 : f32
        %292 = arith.remsi %c1222311867_i32, %c1222311867_i32 : i32
        %293 = math.absi %c975889895_i32 : i32
        %294 = scf.execute_region -> memref<15x15xf32> {
          %303 = index.ceildivu %130, %101
          %304 = arith.shrsi %c898350871_i32, %c1222311867_i32 : i32
          %305 = math.floor %splat : tensor<15x15xf16>
          %306 = arith.maxsi %c681434178_i32, %c1_i32 : i32
          %307 = index.divu %c14, %c0
          %308 = vector.matrix_multiply %177, %162 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xi1>, vector<15xi1>) -> vector<15xi1>
          %309 = arith.remsi %c1400963913_i64, %c1141727645_i64 : i64
          %310 = vector.create_mask %c4, %c2 : vector<15x15xi1>
          %311 = vector.splat %108 : vector<15x13xindex>
          %312 = arith.minf %in, %cst_3 : f32
          %313 = index.divs %c10, %303
          %314 = index.castu %c1400963913_i64 : i64 to index
          %315 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2, -((d2 + d0) floordiv 8))>(%303, %314, %303, %c15)
          %316 = math.sqrt %14 : tensor<15x15xf32>
          %317 = math.roundeven %14 : tensor<15x15xf32>
          %318 = index.divu %101, %46
          %alloc_41 = memref.alloc() : memref<15x15xf32>
          scf.yield %alloc_41 : memref<15x15xf32>
        }
        %295 = math.cttz %0 : tensor<15x15xi16>
        %cst_39 = arith.constant 0x4E31477B : f32
        %296 = math.absi %c1400963913_i64 : i64
        %297 = affine.for %arg1 = 0 to 27 iter_args(%arg2 = %c975889895_i32) -> (i32) {
          affine.yield %c681434178_i32 : i32
        }
        %298 = arith.shrui %c1_i32, %c1_i32 : i32
        %299 = vector.splat %290 : vector<15x15xindex>
        %300 = math.cttz %9 : tensor<1xi32>
        %301 = math.ctlz %true : i1
        %302 = arith.minui %c975889895_i32, %c975889895_i32 : i32
        %cst_40 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_40 : f32
      }
    %207 = affine.load %alloc_8[%c15, %c7] : memref<15x13xi1>
    %208 = math.fma %5, %5, %5 : tensor<15x2xf16>
    %splat_32 = tensor.splat %cst_4 : tensor<1xf32>
    %209 = arith.negf %cst_21 : f32
    %210 = math.sqrt %14 : tensor<15x15xf32>
    %211 = math.tanh %cst_2 : f16
    %212 = math.round %3 : tensor<15x15xf32>
    %213 = index.floordivs %c3, %58
    affine.store %true, %alloc_25[%c0, %c12] : memref<15x2xi1>
    %214 = arith.xori %false_0, %207 : i1
    %215 = math.roundeven %22 : tensor<f32>
    %216 = arith.divui %c1222311867_i32, %c975889895_i32 : i32
    %217 = index.maxu %c13, %108
    %218 = math.log1p %splat_32 : tensor<1xf32>
    %219 = arith.subi %c975889895_i32, %c975889895_i32 : i32
    %220 = arith.remf %cst_3, %cst_21 : f32
    %221 = math.ipowi %204, %6 : tensor<15x13xi16>
    %222 = math.fma %18, %18, %reduced : tensor<13xf16>
    %223 = arith.negf %cst : f16
    %224 = math.log1p %reduced : tensor<13xf16>
    %225 = scf.execute_region -> memref<15x2xf32> {
      %274 = math.atan %169 : tensor<13x15xf16>
      %275 = vector.matrix_multiply %149, %147 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %276 = arith.shrui %false_0, %207 : i1
      %277 = index.divu %58, %c14
      %278 = vector.bitcast %42 : vector<1xi1> to vector<1xi1>
      %279 = math.ipowi %4, %4 : tensor<1xi1>
      %280 = tensor.empty() : tensor<1xf16>
      %281 = vector.gather %280[%103] [%183], %182, %181 : tensor<1xf16>, vector<15x2xi32>, vector<15x2xi1>, vector<15x2xf16> into vector<15x2xf16>
      %282 = math.ceil %5 : tensor<15x2xf16>
      %283 = vector.maskedload %alloc_17[%c9, %c0], %148, %149 : memref<15x2xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %284 = arith.ceildivsi %true_24, %true_24 : i1
      %alloc_39 = memref.alloc() : memref<15x15xi16>
      memref.tensor_store %12, %alloc_39 : memref<15x15xi16>
      %285 = math.floor %15 : tensor<1xf32>
      %286 = math.ctpop %12 : tensor<15x15xi16>
      %287 = bufferization.to_memref %13 : memref<15x13xi1>
      %288 = math.ipowi %c1141727645_i64, %c1141727645_i64 : i64
      %289 = math.absi %1 : tensor<15x13xi16>
      scf.yield %alloc_9 : memref<15x2xf32>
    }
    %226 = affine.load %113[%c0, %c4] : memref<15x2xi64>
    scf.index_switch %c4 
    case 1 {
      memref.copy %49, %alloc_20 : memref<13x15xf16> to memref<13x15xf16>
      scf.execute_region {
        %293 = index.divs %c15, %c0
        %294 = arith.maxui %true, %207 : i1
        %295 = tensor.empty(%101) : tensor<15x?xi64>
        %296 = index.divu %130, %141
        %297 = arith.floordivsi %c-16617_i16, %c-16617_i16 : i16
        %298 = arith.maxf %cst, %cst : f16
        %299 = vector.extract_strided_slice %65 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %300 = math.sqrt %cst_21 : f32
        %301 = index.ceildivs %c12, %c14
        %302 = math.fma %18, %18, %18 : tensor<13xf16>
        %303 = math.ipowi %4, %4 : tensor<1xi1>
        %304 = memref.atomic_rmw assign %cst_21, %alloc_9[%c1, %c0] : (f32, memref<15x2xf32>) -> f32
        %305 = math.ipowi %7, %7 : tensor<15x15xi64>
        %306 = arith.shli %c898350871_i32, %c1_i32 : i32
        %307 = tensor.empty(%c13) : tensor<15x?xi32>
        %308 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 8 + d0 ceildiv 4 - d0 * 2)>(%c5, %c3, %c12, %293)
        scf.yield
      }
      %274 = arith.subi %false, %true_24 : i1
      %275 = vector.load %alloc_14[%c4, %c1] : memref<15x2xi64>, vector<15x15xi64>
      %276 = tensor.empty() : tensor<15x15xi1>
      %277 = vector.broadcast %true : i1 to vector<15x15xi1>
      %278 = vector.broadcast %c681434178_i32 : i32 to vector<15x15xi32>
      %279 = vector.gather %276[%46, %141] [%278], %277, %277 : tensor<15x15xi1>, vector<15x15xi32>, vector<15x15xi1>, vector<15x15xi1> into vector<15x15xi1>
      %280 = vector.broadcast %cst_4 : f32 to vector<13xf32>
      %281 = vector.transfer_write %280, %14[%125, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xf32>, tensor<15x15xf32>
      %282 = vector.multi_reduction <add>, %76, %207 [0] : vector<13xi1> to i1
      %283 = math.log %cst : f16
      %284 = arith.maxf %cst_21, %cst_3 : f32
      %285 = math.ceil %63 : tensor<15x13xf16>
      %286 = bufferization.to_tensor %120 : memref<15x15xi64>
      %cst_39 = arith.constant 1.000000e+00 : f16
      %cst_40 = arith.constant 0.000000e+00 : f16
      %287 = vector.transfer_read %63[%73, %c12], %cst_40 : tensor<15x13xf16>, vector<f16>
      %288 = math.fpowi %cst_1, %c1_i32 : f16, i32
      %289 = arith.maxui %true_24, %true : i1
      %290 = vector.broadcast %cst : f16 to vector<15xf16>
      %291 = vector.maskedload %alloc_19[%c9, %c4], %162, %290 : memref<15x15xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %292 = math.atan %splat_32 : tensor<1xf32>
      scf.yield
    }
    case 2 {
      %274 = arith.xori %false, %false : i1
      %splat_39 = tensor.splat %c681434178_i32 : tensor<15x13xi32>
      %dest_40, %accumulated_value_41 = vector.scan <maxui>, %133, %76 {inclusive = true, reduction_dim = 0 : i64} : vector<15x13xi1>, vector<13xi1>
      %275 = arith.subi %true, %true : i1
      %276 = index.divs %c6, %c3
      %277 = math.ctpop %c1222311867_i32 : i32
      %278 = index.sub %79, %c3
      %279 = math.roundeven %10 : tensor<15x13xf16>
      %280 = memref.realloc %alloc_6 : memref<1xf32> to memref<13xf32>
      %281 = arith.cmpf oeq, %cst_21, %cst_21 : f32
      %282 = vector.matrix_multiply %138, %41 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %283 = arith.ori %true_24, %false_0 : i1
      %284 = arith.divf %cst, %cst_2 : f16
      %285 = vector.broadcast %99 : index to vector<15xindex>
      vector.scatter %alloc_7[%c13, %c5] [%285], %148, %162 : memref<15x13xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %286 = arith.shrui %c1222311867_i32, %c898350871_i32 : i32
      %from_elements = tensor.from_elements %cst_4 : tensor<1xf32>
      scf.yield
    }
    case 3 {
      %alloc_39 = memref.alloc() : memref<1xf32>
      memref.copy %alloc_6, %alloc_39 : memref<1xf32> to memref<1xf32>
      %dest_40, %accumulated_value_41 = vector.scan <xor>, %135, %76 {inclusive = false, reduction_dim = 0 : i64} : vector<15x13xi1>, vector<13xi1>
      memref.tensor_store %9, %alloc_5 : memref<1xi32>
      %274 = arith.shrsi %c1222311867_i32, %c975889895_i32 : i32
      %275 = arith.subi %true_24, %true_24 : i1
      %276 = index.maxs %101, %99
      %277 = arith.maxf %cst, %cst_1 : f16
      %278 = vector.insertelement %c1400963913_i64, %66[%103 : index] : vector<1xi64>
      %rank_42 = tensor.rank %17 : tensor<15x13xf32>
      memref.tensor_store %15, %alloc_6 : memref<1xf32>
      %279 = math.copysign %22, %21 : tensor<f32>
      %280 = vector.broadcast %c681434178_i32 : i32 to vector<1x1xi32>
      %281 = vector.outerproduct %43, %43, %280 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
      %282 = arith.shrsi %true, %false_0 : i1
      %283 = affine.load %49[%c5, %c2] : memref<13x15xf16>
      %284 = index.ceildivs %79, %115
      %285 = arith.floordivsi %c1222311867_i32, %c1_i32 : i32
      scf.yield
    }
    case 4 {
      %274 = vector.create_mask %c14 : vector<1xi1>
      memref.tensor_store %5, %alloc_16 : memref<15x2xf16>
      %275 = math.rsqrt %15 : tensor<1xf32>
      %276 = arith.negf %cst_1 : f16
      %277 = arith.divsi %c1222311867_i32, %c1222311867_i32 : i32
      %278 = vector.broadcast %c681434178_i32 : i32 to vector<15x13xi32>
      %279 = index.ceildivs %c8, %125
      %280 = vector.matrix_multiply %65, %100 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %281 = math.absi %12 : tensor<15x15xi16>
      %rank_39 = tensor.rank %10 : tensor<15x13xf16>
      %282 = vector.bitcast %66 : vector<1xi64> to vector<1xi64>
      %283 = index.ceildivs %141, %130
      %284 = arith.xori %true_24, %true_24 : i1
      scf.index_switch %213 
      case 1 {
        %287 = vector.load %alloc_5[%c0] : memref<1xi32>, vector<1xi32>
        %288 = arith.ori %c1400963913_i64, %c1954031314_i64 : i64
        %289 = math.copysign %10, %10 : tensor<15x13xf16>
        %290 = arith.ceildivsi %207, %true_24 : i1
        %291 = arith.maxsi %207, %207 : i1
        %292 = vector.insertelement %false, %77[%125 : index] : vector<13xi1>
        %293 = vector.flat_transpose %19 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %294 = index.floordivs %108, %c5
        %295 = index.divu %c12, %c1
        %296 = tensor.empty() : tensor<1xi64>
        %297 = index.maxu %115, %c0
        %298 = vector.broadcast %cst_4 : f32 to vector<15x13xf32>
        %299 = vector.fma %298, %298, %298 : vector<15x13xf32>
        %300 = arith.shrui %true_24, %207 : i1
        memref.copy %120, %alloc : memref<15x15xi64> to memref<15x15xi64>
        %alloca_41 = memref.alloca() : memref<15x2xf16>
        %301 = arith.maxsi %c898350871_i32, %c1222311867_i32 : i32
        scf.yield
      }
      default {
        %287 = math.copysign %10, %10 : tensor<15x13xf16>
        %288 = arith.negf %cst_21 : f32
        %289 = arith.cmpf olt, %cst_4, %cst_21 : f32
        %290 = memref.atomic_rmw mulf %cst_1, %alloc_13[%c0] : (f16, memref<1xf16>) -> f16
        %c1_i16 = arith.constant 1 : i16
        %291 = vector.transfer_read %8[%125, %125], %c1_i16 : tensor<15x2xi16>, vector<2xi16>
        %292 = vector.load %alloc_5[%c0] : memref<1xi32>, vector<1xi32>
        %293 = arith.shrui %c1222311867_i32, %c1_i32 : i32
        %294 = math.ipowi %13, %13 : tensor<15x13xi1>
        %295 = index.divu %46, %121
        %296 = math.exp2 %splat : tensor<15x15xf16>
        %c1808887844_i32 = arith.constant 1808887844 : i32
        %297 = math.log10 %2 : tensor<15x13xf32>
        %298 = vector.reduction <or>, %87 : vector<1xi1> into i1
        %299 = arith.cmpf oeq, %cst_2, %cst_2 : f16
        %300 = vector.bitcast %292 : vector<1xi32> to vector<1xf32>
        %301 = index.divs %c7, %c1
      }
      %collapsed_40 = tensor.collapse_shape %3 [[0, 1]] : tensor<15x15xf32> into tensor<225xf32>
      %285 = vector.broadcast %false : i1 to vector<1x1xi1>
      %286 = vector.outerproduct %78, %42, %285 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
      scf.yield
    }
    default {
      %274 = vector.matrix_multiply %77, %42 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<1xi1>) -> vector<13xi1>
      scf.index_switch %115 
      case 1 {
        %false_42 = index.bool.constant false
        %286 = arith.ori %true_24, %true_24 : i1
        %from_elements = tensor.from_elements %c1954031314_i64, %c1141727645_i64, %c1954031314_i64, %226, %c1141727645_i64, %226, %c1400963913_i64, %226, %c1954031314_i64, %c1954031314_i64, %c1400963913_i64, %c1141727645_i64, %c1400963913_i64, %c1141727645_i64, %226, %c1141727645_i64, %226, %226, %226, %c1954031314_i64, %c1141727645_i64, %226, %c1954031314_i64, %c1400963913_i64, %c1400963913_i64, %c1141727645_i64, %c1141727645_i64, %c1954031314_i64, %c1954031314_i64, %c1141727645_i64 : tensor<15x2xi64>
        %287 = vector.flat_transpose %162 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
        %288 = math.log %63 : tensor<15x13xf16>
        %289 = arith.cmpf ole, %cst, %cst_2 : f16
        %290 = index.mul %c5, %99
        memref.tensor_store %from_elements, %113 : memref<15x2xi64>
        %291 = index.maxu %c4, %115
        %292 = math.copysign %cst_21, %cst_21 : f32
        %293 = arith.floordivsi %false, %false : i1
        %294 = vector.shuffle %19, %274 [0, 2, 3, 4, 8, 10, 11] : vector<2xi1>, vector<13xi1>
        %295 = index.ceildivu %c14, %46
        %296 = math.ipowi %198, %198 : tensor<15x2xi32>
        %297 = bufferization.to_tensor %alloc_6 : memref<1xf32>
        %298 = vector.maskedload %alloc[%c13, %c14], %87, %144 : memref<15x15xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        scf.yield
      }
      case 2 {
        %dest_42, %accumulated_value_43 = vector.scan <and>, %182, %148 {inclusive = true, reduction_dim = 1 : i64} : vector<15x2xi1>, vector<15xi1>
        %286 = math.tan %21 : tensor<f32>
        %287 = vector.load %alloc_7[%c6, %c10] : memref<15x13xi1>, vector<1xi1>
        %288 = vector.broadcast %true : i1 to vector<15x13xi1>
        %289 = math.ctpop %13 : tensor<15x13xi1>
        %290 = index.ceildivu %c8, %c15
        %291 = math.tanh %15 : tensor<1xf32>
        %true_44 = index.bool.constant true
        %292 = bufferization.to_tensor %51 : memref<15x2xi64>
        %293 = arith.addi %226, %c1141727645_i64 : i64
        %inserted_45 = tensor.insert %207 into %splat_22[%c7, %c12] : tensor<15x13xi1>
        %294 = math.cttz %false_0 : i1
        %295 = vector.broadcast %c975889895_i32 : i32 to vector<1x1xi32>
        %296 = vector.outerproduct %43, %43, %295 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %297 = index.sub %c2, %c0
        %298 = arith.ori %c-16617_i16, %c-16617_i16 : i16
        %299 = vector.insert %cst, %41 [0] : f16 into vector<1xf16>
        scf.yield
      }
      default {
        %286 = arith.divsi %c681434178_i32, %c898350871_i32 : i32
        %287 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        memref.tensor_store %splat_32, %alloc_6 : memref<1xf32>
        %288 = tensor.empty() : tensor<15x13xi1>
        %289 = arith.remsi %c681434178_i32, %c1222311867_i32 : i32
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d1)>(%130, %141, %121, %46)
        %291 = math.cttz %c898350871_i32 : i32
        %292 = arith.cmpf ueq, %cst_3, %cst_4 : f32
        %293 = math.log %169 : tensor<13x15xf16>
        %294 = arith.maxui %c1141727645_i64, %c1400963913_i64 : i64
        %295 = vector.splat %101 : vector<15x2xindex>
        %296 = index.maxu %79, %c11
        %297 = arith.divui %c1_i32, %c1_i32 : i32
        %298 = math.log1p %206 : tensor<f32>
        %299 = math.roundeven %20 : tensor<1xf32>
        %false_42 = index.bool.constant false
      }
      %275 = arith.maxf %cst_4, %cst_3 : f32
      %collapsed_39 = tensor.collapse_shape %splat [[0, 1]] : tensor<15x15xf16> into tensor<225xf16>
      %extracted_40 = tensor.extract %10[%c0, %c9] : tensor<15x13xf16>
      %276 = arith.minsi %false_0, %false : i1
      %277 = index.sub %125, %99
      %278 = arith.negf %extracted_40 : f16
      %279 = arith.remf %cst, %cst_1 : f16
      %280 = arith.subi %true, %207 : i1
      %281 = arith.andi %true, %false : i1
      %282 = index.divu %90, %103
      %283 = math.roundeven %cst_21 : f32
      %284 = bufferization.to_tensor %96 : memref<13x15xf16>
      %285 = vector.extract %65[0] : vector<1xi1>
      %alloc_41 = memref.alloc() : memref<15x15xf32>
      memref.tensor_store %14, %alloc_41 : memref<15x15xf32>
    }
    %227 = arith.xori %c975889895_i32, %c681434178_i32 : i32
    %228 = arith.subi %c1954031314_i64, %c1954031314_i64 : i64
    %229 = bufferization.clone %25 : memref<15x2xi32> to memref<15x2xi32>
    %230 = math.ceil %16 : tensor<15x13xf32>
    %231 = vector.broadcast %cst_1 : f16 to vector<2xf16>
    %dest_33, %accumulated_value_34 = vector.scan <mul>, %184, %231 {inclusive = true, reduction_dim = 0 : i64} : vector<15x2xf16>, vector<2xf16>
    %alloca = memref.alloca() : memref<15x2xi16>
    affine.store %226, %alloc_14[%c2, %c1] : memref<15x2xi64>
    %232 = math.cttz %c975889895_i32 : i32
    %alloc_35 = memref.alloc() : memref<15x15xi16>
    %233 = vector.broadcast %c-16617_i16 : i16 to vector<1xi16>
    %234 = vector.gather %alloc_35[%c3, %130] [%43], %65, %233 : memref<15x15xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
    %235 = arith.minui %c975889895_i32, %c898350871_i32 : i32
    %236 = math.absf %5 : tensor<15x2xf16>
    %237 = vector.broadcast %c1400963913_i64 : i64 to vector<2xi64>
    %238 = vector.maskedload %alloc[%c10, %c1], %19, %237 : memref<15x15xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %239 = index.sub %142, %c6
    %240 = index.sub %c4, %108
    %241 = math.cttz %true : i1
    %242 = arith.divui %c1222311867_i32, %c681434178_i32 : i32
    %rank = tensor.rank %4 : tensor<1xi1>
    %243 = arith.remui %c1400963913_i64, %c1954031314_i64 : i64
    %c738005004_i64 = arith.constant 738005004 : i64
    %244 = arith.andi %c1954031314_i64, %226 : i64
    %245 = math.roundeven %cst_1 : f16
    %246 = arith.negf %cst_4 : f32
    %247 = arith.mulf %cst, %cst_2 : f16
    %248 = math.floor %5 : tensor<15x2xf16>
    %249 = vector.matrix_multiply %144, %237 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi64>, vector<2xi64>) -> vector<2xi64>
    %250 = vector.broadcast %cst_21 : f32 to vector<15xf32>
    %251 = vector.maskedload %225[%c6, %c1], %148, %250 : memref<15x2xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
    %252 = vector.create_mask %121 : vector<1xi1>
    %253 = arith.negf %cst : f16
    %254 = math.expm1 %15 : tensor<1xf32>
    %255 = math.expm1 %206 : tensor<f32>
    %256 = arith.divui %c1954031314_i64, %c1141727645_i64 : i64
    %257 = math.rsqrt %5 : tensor<15x2xf16>
    %258 = affine.if affine_set<(d0) : (0 == 0, 0 == 0)>(%c13) -> f16 {
      %274 = math.log10 %14 : tensor<15x15xf32>
      %275 = math.log10 %10 : tensor<15x13xf16>
      %276 = math.ctlz %8 : tensor<15x2xi16>
      %277 = scf.index_switch %101 -> i16 
      case 1 {
        %extracted_40 = tensor.extract %0[%c13, %c7] : tensor<15x15xi16>
        %281 = arith.shrui %false_0, %207 : i1
        %282 = bufferization.to_tensor %alloc_18 : memref<15x15xi1>
        %283 = math.expm1 %17 : tensor<15x13xf32>
        %284 = index.ceildivs %73, %121
        %285 = math.roundeven %18 : tensor<13xf16>
        %286 = vector.gather %alloc_9[%c12, %73] [%43], %177, %83 : memref<15x2xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %287 = index.ceildivs %c7, %103
        %inserted_41 = tensor.insert %cst_3 into %14[%c9, %c8] : tensor<15x15xf32>
        %288 = math.absi %c975889895_i32 : i32
        %289 = math.cttz %8 : tensor<15x2xi16>
        %290 = index.floordivs %141, %284
        %291 = arith.ceildivsi %c1141727645_i64, %c1141727645_i64 : i64
        %292 = arith.negf %cst_4 : f32
        %293 = tensor.empty() : tensor<2x1xf16>
        %294 = tensor.empty() : tensor<15x1xf16>
        %295 = linalg.matmul ins(%5, %293 : tensor<15x2xf16>, tensor<2x1xf16>) outs(%294 : tensor<15x1xf16>) -> tensor<15x1xf16>
        %296 = math.expm1 %14 : tensor<15x15xf32>
        scf.yield %c-16617_i16 : i16
      }
      default {
        %281 = arith.xori %true, %207 : i1
        %282 = math.tan %cst : f16
        %283 = arith.negf %cst : f16
        %284 = vector.broadcast %true_24 : i1 to vector<13x13xi1>
        %285 = vector.outerproduct %76, %76, %284 {kind = #vector.kind<add>} : vector<13xi1>, vector<13xi1>
        %286 = vector.broadcast %207 : i1 to vector<1xi1>
        %287 = arith.muli %c975889895_i32, %c1_i32 : i32
        %288 = math.expm1 %206 : tensor<f32>
        %289 = math.cttz %c-16617_i16 : i16
        %290 = math.absi %c1954031314_i64 : i64
        %291 = vector.broadcast %cst_21 : f32 to vector<f32>
        %292 = vector.transfer_write %291, %15[%c5] : vector<f32>, tensor<1xf32>
        %293 = math.log10 %10 : tensor<15x13xf16>
        %294 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %295 = vector.outerproduct %124, %124, %294 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        %296 = vector.insertelement %c-16617_i16, %234[%c7 : index] : vector<1xi16>
        %297 = vector.flat_transpose %177 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %collapsed_40 = tensor.collapse_shape %1 [[0, 1]] : tensor<15x13xi16> into tensor<195xi16>
        %cst_41 = arith.constant 0x4C966A90 : f32
        scf.yield %c-16617_i16 : i16
      }
      %extracted_39 = tensor.extract %204[%c14, %c4] : tensor<15x13xi16>
      %278 = scf.execute_region -> memref<15x2xi1> {
        %281 = index.ceildivs %213, %c0
        %282 = arith.minsi %true, %false : i1
        %true_40 = index.bool.constant true
        %283 = math.ceil %2 : tensor<15x13xf32>
        %284 = vector.broadcast %false : i1 to vector<1x1xi1>
        %285 = vector.outerproduct %100, %126, %284 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
        %286 = bufferization.to_tensor %alloc_10 : memref<15x13xi1>
        %287 = arith.remf %cst_1, %cst : f16
        memref.copy %113, %51 : memref<15x2xi64> to memref<15x2xi64>
        %288 = math.tanh %169 : tensor<13x15xf16>
        %289 = vector.bitcast %249 : vector<2xi64> to vector<2xi64>
        %290 = arith.negf %cst_4 : f32
        %291 = math.absi %true_24 : i1
        %292 = arith.shrsi %extracted_39, %extracted_39 : i16
        %293 = math.ctpop %0 : tensor<15x15xi16>
        %294 = math.copysign %cst_4, %cst_4 : f32
        %295 = index.divs %79, %115
        scf.yield %alloc_25 : memref<15x2xi1>
      }
      %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 8 + d0 ceildiv 4 - d0 * 2)>(%c7, %c8, %73, %101)
      %280 = affine.load %alloc_13[%c13] : memref<1xf16>
      affine.yield %cst_2 : f16
    } else {
      %274 = vector.gather %alloc_25[%90, %58] [%43], %177, %100 : memref<15x2xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %275 = index.divu %c7, %c8
      %276 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 floordiv 2) mod 8 - d1, d3 + 16)>(%c9, %103, %213, %239)
      %277 = vector.gather %51[%c1, %73] [%43], %100, %66 : memref<15x2xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
      %278 = vector.broadcast %c0 : index to vector<15xindex>
      %279 = vector.broadcast %cst_1 : f16 to vector<15xf16>
      vector.scatter %49[%c8, %c6] [%278], %148, %279 : memref<13x15xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      scf.execute_region {
        %282 = arith.muli %true_24, %true_24 : i1
        %283 = vector.create_mask %c6, %79 : vector<15x13xi1>
        %284 = affine.max affine_map<(d0, d1, d2) -> (d2 * 31, d2 + 48)>(%c11, %103, %c1)
        %285 = index.divu %c5, %101
        %286 = arith.xori %207, %true : i1
        %287 = math.absi %8 : tensor<15x2xi16>
        memref.tensor_store %splat_32, %alloc_6 : memref<1xf32>
        %288 = arith.remui %c681434178_i32, %c1222311867_i32 : i32
        %289 = arith.minf %cst_21, %cst_4 : f32
        %290 = math.ceil %169 : tensor<13x15xf16>
        %291 = arith.xori %c1954031314_i64, %226 : i64
        %292 = vector.splat %c8 : vector<15x13xindex>
        %293 = arith.mulf %cst_3, %cst_21 : f32
        %294 = math.rsqrt %cst : f16
        %295 = math.sqrt %5 : tensor<15x2xf16>
        %296 = index.ceildivu %239, %115
        scf.yield
      }
      %280 = arith.subi %c1222311867_i32, %c898350871_i32 : i32
      %281 = vector.extract_strided_slice %177 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      affine.yield %cst_1 : f16
    }
    %259 = math.sqrt %21 : tensor<f32>
    %extracted = tensor.extract %4[%c0] : tensor<1xi1>
    %260 = tensor.empty() : tensor<1xi16>
    %261 = index.divs %103, %115
    %262 = vector.broadcast %c975889895_i32 : i32 to vector<2xi32>
    %263 = vector.maskedload %alloc_5[%c0], %19, %262 : memref<1xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
    %264 = vector.broadcast %cst_21 : f32 to vector<f32>
    vector.transfer_write %264, %alloc_9[%115, %125] : vector<f32>, memref<15x2xf32>
    %dest_36, %accumulated_value_37 = vector.scan <minsi>, %182, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<15x2xi1>, vector<2xi1>
    %265 = math.floor %18 : tensor<13xf16>
    %266 = math.cttz %false_0 : i1
    %267 = vector.broadcast %c1400963913_i64 : i64 to vector<i64>
    vector.transfer_write %267, %alloc[%141, %c7] : vector<i64>, memref<15x15xi64>
    %268 = bufferization.clone %alloc_8 : memref<15x13xi1> to memref<15x13xi1>
    %269 = tensor.empty() : tensor<1xi32>
    %270 = linalg.copy ins(%11 : tensor<1xi32>) outs(%269 : tensor<1xi32>) -> tensor<1xi32>
    %271 = tensor.empty() : tensor<2x15xi64>
    %transposed = linalg.transpose ins(%alloc_12 : memref<15x2xi64>) outs(%271 : tensor<2x15xi64>) permutation = [1, 0] 
    %alloc_38 = memref.alloc() : memref<15xf16>
    linalg.reduce ins(%5 : tensor<15x2xf16>) outs(%alloc_38 : memref<15xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %274 = math.log1p %21 : tensor<f32>
        %275 = arith.mulf %cst_1, %cst_2 : f16
        affine.store %c1141727645_i64, %alloc[%c6, %c11] : memref<15x15xi64>
        %276 = tensor.empty() : tensor<15x15xf16>
        %mapped_39 = linalg.map ins(%splat, %splat, %alloc_19 : tensor<15x15xf16>, tensor<15x15xf16>, memref<15x15xf16>) outs(%276 : tensor<15x15xf16>)
          (%in_42: f16, %in_43: f16, %in_44: f16) {
            %280 = memref.atomic_rmw andi %226, %51[%c12, %c1] : (i64, memref<15x2xi64>) -> i64
            %281 = arith.subi %c898350871_i32, %c898350871_i32 : i32
            %282 = tensor.empty() : tensor<15x2xi16>
            %283 = linalg.matmul ins(%0, %8 : tensor<15x15xi16>, tensor<15x2xi16>) outs(%282 : tensor<15x2xi16>) -> tensor<15x2xi16>
            %284 = bufferization.clone %49 : memref<13x15xf16> to memref<13x15xf16>
            %285 = math.roundeven %16 : tensor<15x13xf32>
            %286 = arith.maxui %c1222311867_i32, %c1_i32 : i32
            %287 = math.exp2 %in_43 : f16
            %288 = vector.broadcast %cst_21 : f32 to vector<15x2xf32>
            %289 = vector.gather %3[%141, %c9] [%183], %182, %288 : tensor<15x15xf32>, vector<15x2xi32>, vector<15x2xi1>, vector<15x2xf32> into vector<15x2xf32>
            %290 = arith.xori %false, %207 : i1
            %291 = math.absf %18 : tensor<13xf16>
            %292 = arith.shrsi %c-16617_i16, %c-16617_i16 : i16
            %293 = math.cttz %c1141727645_i64 : i64
            %true_45 = index.bool.constant true
            %294 = arith.subi %false_0, %false : i1
            %cst_46 = arith.constant 5.004800e+04 : f16
            %295 = vector.broadcast %c6 : index to vector<15xindex>
            %296 = vector.broadcast %cst_1 : f16 to vector<15xf16>
            vector.scatter %284[%c5, %c4] [%295], %162, %296 : memref<13x15xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
            %297 = math.tanh %reduced : tensor<13xf16>
            %298 = math.absi %11 : tensor<1xi32>
            %299 = vector.flat_transpose %126 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
            %300 = arith.maxui %c1954031314_i64, %c1954031314_i64 : i64
            %301 = math.tanh %22 : tensor<f32>
            %302 = math.expm1 %165 : tensor<13x15xf16>
            bufferization.dealloc_tensor %3 : tensor<15x15xf32>
            %303 = math.cttz %207 : i1
            %304 = vector.gather %alloc_15[%c0] [%183], %182, %182 : memref<1xi1>, vector<15x2xi32>, vector<15x2xi1>, vector<15x2xi1> into vector<15x2xi1>
            %305 = index.sub %c10, %115
            %306 = vector.broadcast %c-16617_i16 : i16 to vector<15xi16>
            %307 = vector.maskedload %alloc_35[%c11, %c3], %148, %306 : memref<15x15xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
            %308 = index.ceildivs %c14, %c1
            %alloc_47 = memref.alloc() : memref<15x2xi1>
            memref.copy %alloc_25, %alloc_47 : memref<15x2xi1> to memref<15x2xi1>
            %309 = index.mul %c5, %305
            %310 = arith.divf %in, %in_43 : f16
            %311 = vector.broadcast %c-16617_i16 : i16 to vector<i16>
            %312 = vector.transfer_write %311, %1[%c7, %c4] : vector<i16>, tensor<15x13xi16>
            %cst_48 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_48 : f16
          }
        %277 = math.log10 %10 : tensor<15x13xf16>
        %278 = index.divs %101, %213
        %279 = arith.maxf %init, %cst : f16
        %alloc_40 = memref.alloc() : memref<1xf32>
        memref.copy %alloc_6, %alloc_40 : memref<1xf32> to memref<1xf32>
        %cst_41 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_41 : f16
      }
    %272 = scf.parallel (%arg1) = (%141) to (%125) step (%c13) init (%181) -> vector<15x2xf16> {
      %274 = arith.mulf %cst_4, %cst_3 : f32
      bufferization.dealloc_tensor %12 : tensor<15x15xi16>
      %275 = bufferization.clone %113 : memref<15x2xi64> to memref<15x2xi64>
      %276 = math.sqrt %cst_1 : f16
      %277 = index.ceildivs %58, %arg1
      %278 = math.absi %c681434178_i32 : i32
      %splat_39 = tensor.splat %cst_4 : tensor<15x13xf32>
      %279 = index.castu %extracted : i1 to index
      %280 = vector.broadcast %cst : f16 to vector<1x1xf16>
      %281 = vector.outerproduct %138, %44, %280 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
      %282 = math.ipowi %1, %1 : tensor<15x13xi16>
      bufferization.dealloc_tensor %5 : tensor<15x2xf16>
      %283 = math.log10 %cst_21 : f32
      %284 = math.log10 %63 : tensor<15x13xf16>
      %285 = math.cttz %true : i1
      %286 = arith.subi %c1400963913_i64, %c1400963913_i64 : i64
      %287 = index.floordivs %277, %c12
      %288 = vector.broadcast %cst : f16 to vector<15x2xf16>
      scf.reduce(%288)  : vector<15x2xf16> {
      ^bb0(%arg2: vector<15x2xf16>, %arg3: vector<15x2xf16>):
        %289 = math.cos %splat : tensor<15x15xf16>
        affine.store %false, %176[%c9, %c8] : memref<15x13xi1>
        %290 = math.log10 %3 : tensor<15x15xf32>
        %291 = math.copysign %15, %15 : tensor<1xf32>
        %292 = arith.remf %cst, %cst_2 : f16
        %c-6108_i16 = arith.constant -6108 : i16
        %293 = vector.shuffle %249, %66 [0, 1, 2] : vector<2xi64>, vector<1xi64>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %83, %83, %cst_4 : vector<1xf32>, vector<1xf32> into f32
        %295 = vector.broadcast %cst_1 : f16 to vector<15x2xf16>
        scf.reduce.return %295 : vector<15x2xf16>
      }
      scf.yield
    }
    %273 = affine.vector_load %alloc_20[%46, %c5] : memref<13x15xf16>, vector<1xf16>
    affine.vector_store %162, %176[%90, %79] : memref<15x13xi1>, vector<15xi1>
    vector.print %19 : vector<2xi1>
    vector.print %30 : vector<f32>
    vector.print %41 : vector<1xf16>
    vector.print %42 : vector<1xi1>
    vector.print %43 : vector<1xi32>
    vector.print %44 : vector<1xf16>
    vector.print %65 : vector<1xi1>
    vector.print %66 : vector<1xi64>
    vector.print %76 : vector<13xi1>
    vector.print %77 : vector<13xi1>
    vector.print %78 : vector<1xi1>
    vector.print %83 : vector<1xf32>
    vector.print %87 : vector<1xi1>
    vector.print %100 : vector<1xi1>
    vector.print %104 : vector<f32>
    vector.print %124 : vector<1xf16>
    vector.print %126 : vector<1xi1>
    vector.print %133 : vector<15x13xi1>
    vector.print %134 : vector<15x13xi32>
    vector.print %135 : vector<15x13xi1>
    vector.print %138 : vector<1xf16>
    vector.print %144 : vector<1xi64>
    vector.print %147 : vector<15xi32>
    vector.print %148 : vector<15xi1>
    vector.print %149 : vector<15xi32>
    vector.print %162 : vector<15xi1>
    vector.print %177 : vector<1xi1>
    vector.print %181 : vector<15x2xf16>
    vector.print %182 : vector<15x2xi1>
    vector.print %183 : vector<15x2xi32>
    vector.print %184 : vector<15x2xf16>
    vector.print %193 : vector<1xi1>
    vector.print %202 : vector<2xf32>
    vector.print %233 : vector<1xi16>
    vector.print %234 : vector<1xi16>
    vector.print %237 : vector<2xi64>
    vector.print %238 : vector<2xi64>
    vector.print %249 : vector<2xi64>
    vector.print %250 : vector<15xf32>
    vector.print %251 : vector<15xf32>
    vector.print %252 : vector<1xi1>
    vector.print %262 : vector<2xi32>
    vector.print %263 : vector<2xi32>
    vector.print %264 : vector<f32>
    vector.print %267 : vector<i64>
    vector.print %273 : vector<1xf16>
    vector.print %c681434178_i32 : i32
    vector.print %c975889895_i32 : i32
    vector.print %c1222311867_i32 : i32
    vector.print %false : i1
    vector.print %c1400963913_i64 : i64
    vector.print %cst : f16
    vector.print %true : i1
    vector.print %false_0 : i1
    vector.print %c898350871_i32 : i32
    vector.print %c-16617_i16 : i16
    vector.print %cst_1 : f16
    vector.print %c1141727645_i64 : i64
    vector.print %c1954031314_i64 : i64
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %cst_21 : f32
    vector.print %c1_i32 : i32
    vector.print %true_24 : i1
    vector.print %207 : i1
    vector.print %226 : i64
    vector.print %extracted : i1
    return %15 : tensor<1xf32>
  }
}
