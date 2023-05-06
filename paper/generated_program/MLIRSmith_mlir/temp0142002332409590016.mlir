module {
  func.func @func1(%arg0: vector<3x9x3xi64>, %arg1: memref<9xi32>, %arg2: index) -> tensor<9xi1> {
    %c887830254_i32 = arith.constant 887830254 : i32
    %c1005151537_i32 = arith.constant 1005151537 : i32
    %cst = arith.constant 1.21282048E+9 : f32
    %cst_0 = arith.constant 3.169600e+04 : f16
    %c709515696_i64 = arith.constant 709515696 : i64
    %c-32218_i16 = arith.constant -32218 : i16
    %cst_1 = arith.constant 4.966400e+04 : f16
    %cst_2 = arith.constant 1.72556275E+9 : f32
    %c1636041013_i32 = arith.constant 1636041013 : i32
    %cst_3 = arith.constant 2.291200e+04 : f16
    %true = arith.constant true
    %false = arith.constant false
    %c-19590_i16 = arith.constant -19590 : i16
    %true_4 = arith.constant true
    %c17411_i16 = arith.constant 17411 : i16
    %c26906_i16 = arith.constant 26906 : i16
    %0 = tensor.empty() : tensor<9xi64>
    %1 = tensor.empty() : tensor<9xi16>
    %2 = tensor.empty() : tensor<9xi64>
    %3 = tensor.empty() : tensor<9xf16>
    %4 = tensor.empty() : tensor<9xi32>
    %5 = tensor.empty() : tensor<9xi1>
    %6 = tensor.empty() : tensor<13xf32>
    %7 = tensor.empty() : tensor<3x9x3xi16>
    %8 = tensor.empty() : tensor<13xf32>
    %9 = tensor.empty() : tensor<3x9x3xf32>
    %10 = tensor.empty() : tensor<13xi32>
    %11 = tensor.empty() : tensor<9xi1>
    %12 = tensor.empty() : tensor<9xf32>
    %13 = tensor.empty() : tensor<9xi16>
    %14 = tensor.empty() : tensor<3x9x3xi32>
    %15 = tensor.empty() : tensor<3x9x3xf16>
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
    %alloc = memref.alloc() : memref<9xi1>
    %alloc_5 = memref.alloc() : memref<13xi1>
    %alloc_6 = memref.alloc() : memref<9xf16>
    %alloc_7 = memref.alloc() : memref<9xi64>
    %alloc_8 = memref.alloc() : memref<3x9x3xi1>
    %alloc_9 = memref.alloc() : memref<13xi32>
    %alloc_10 = memref.alloc() : memref<13xf16>
    %alloc_11 = memref.alloc() : memref<9xi1>
    %alloc_12 = memref.alloc() : memref<13xi64>
    %alloc_13 = memref.alloc() : memref<13xi16>
    %alloc_14 = memref.alloc() : memref<9xf32>
    %alloc_15 = memref.alloc() : memref<9xi64>
    %alloc_16 = memref.alloc() : memref<9xi32>
    %alloc_17 = memref.alloc() : memref<9xf16>
    %alloc_18 = memref.alloc() : memref<9xf16>
    %alloc_19 = memref.alloc() : memref<9xf16>
    %16 = tensor.empty() : tensor<3x9x3xi32>
    %17 = linalg.copy ins(%14 : tensor<3x9x3xi32>) outs(%16 : tensor<3x9x3xi32>) -> tensor<3x9x3xi32>
    %alloc_20 = memref.alloc() : memref<9xf16>
    linalg.transpose ins(%alloc_17 : memref<9xf16>) outs(%alloc_20 : memref<9xf16>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<i1>
    linalg.reduce ins(%alloc_11 : memref<9xi1>) outs(%alloc_21 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %257 = bufferization.clone %alloc_19 : memref<9xf16> to memref<9xf16>
        %c1304487890_i64 = arith.constant 1304487890 : i64
        %258 = arith.addi %false, %init : i1
        %259 = arith.xori %c1636041013_i32, %c887830254_i32 : i32
        %260 = index.ceildivs %c5, %c13
        %261 = math.fpowi %8, %10 : tensor<13xf32>, tensor<13xi32>
        %262 = vector.broadcast %c1636041013_i32 : i32 to vector<3xi32>
        %263 = vector.matrix_multiply %262, %262 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
        %splat_45 = tensor.splat %in : tensor<13xi1>
        %true_46 = arith.constant true
        linalg.yield %true_46 : i1
      }
    scf.parallel (%arg3, %arg4) = (%c9, %c7) to (%c0, %c0) step (%c12, %c10) {
      %false_45 = index.bool.constant false
      %257 = bufferization.clone %alloc_20 : memref<9xf16> to memref<9xf16>
      %258 = math.log1p %cst_3 : f16
      %259 = math.rsqrt %cst_3 : f16
      %260 = index.add %c2, %c6
      %261 = arith.remf %cst_0, %cst_0 : f16
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<9xf32>) outs(%9 : tensor<3x9x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %268 = math.copysign %15, %15 : tensor<3x9x3xf16>
        bufferization.dealloc_tensor %1 : tensor<9xi16>
        %269 = math.fma %6, %8, %8 : tensor<13xf32>
        %270 = math.absf %3 : tensor<9xf16>
        %rank_50 = tensor.rank %7 : tensor<3x9x3xi16>
        %271 = index.ceildivu %arg3, %c15
        %272 = index.sizeof
        %alloc_51 = memref.alloc() : memref<3x9x3xi16>
        %273 = vector.broadcast %c-19590_i16 : i16 to vector<9xi16>
        %274 = vector.broadcast %false_45 : i1 to vector<9xi1>
        %275 = vector.broadcast %c887830254_i32 : i32 to vector<9xi32>
        %276 = vector.gather %alloc_51[%c10, %272, %c13] [%275], %274, %273 : memref<3x9x3xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %277 = arith.negf %cst : f32
        %278 = vector.broadcast %c-32218_i16 : i16 to vector<13xi16>
        %279 = math.atan2 %cst_2, %cst : f32
        %280 = vector.broadcast %in : f32 to vector<3x9x3xf32>
        %281 = vector.broadcast %true_4 : i1 to vector<3x9x3xi1>
        %282 = vector.broadcast %c887830254_i32 : i32 to vector<3x9x3xi32>
        %283 = vector.gather %6[%c14] [%282], %281, %280 : tensor<13xf32>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xf32> into vector<3x9x3xf32>
        %284 = math.log2 %cst_2 : f32
        %285 = vector.insertelement %c17411_i16, %273[%c6 : index] : vector<9xi16>
        %286 = vector.shuffle %278, %278 [1, 2, 3, 4, 6, 7, 8, 9, 13, 18, 21, 24] : vector<13xi16>, vector<13xi16>
        %alloc_52 = memref.alloc() : memref<9xi16>
        %287 = vector.gather %alloc_52[%c6] [%275], %274, %273 : memref<9xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %288 = vector.broadcast %cst_1 : f16 to vector<9xf16>
        %289 = vector.maskedload %alloc_18[%c7], %274, %288 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %290 = vector.bitcast %281 : vector<3x9x3xi1> to vector<3x9x3xi1>
        memref.store %cst_3, %257[%c5] : memref<9xf16>
        %291 = arith.cmpf olt, %in, %cst_2 : f32
        %292 = arith.addi %c17411_i16, %c-19590_i16 : i16
        %293 = arith.negf %cst : f32
        %cast_53 = tensor.cast %10 : tensor<13xi32> to tensor<?xi32>
        %294 = vector.flat_transpose %278 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
        %295 = index.add %c13, %c12
        %296 = vector.matrix_multiply %274, %274 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %297 = vector.extract_strided_slice %282 {offsets = [1, 7], sizes = [2, 1], strides = [1, 1]} : vector<3x9x3xi32> to vector<2x1x3xi32>
        %298 = math.copysign %cst, %cst : f32
        %299 = arith.addi %c-32218_i16, %c17411_i16 : i16
        %300 = math.copysign %3, %3 : tensor<9xf16>
        %301 = arith.remsi %c709515696_i64, %c709515696_i64 : i64
        %302 = vector.broadcast %c26906_i16 : i16 to vector<3x9x3xi16>
        linalg.yield %out : f32
      } -> tensor<3x9x3xf32>
      %cast_46 = tensor.cast %3 : tensor<9xf16> to tensor<?xf16>
      %extracted_47 = tensor.extract %15[%c1, %c5, %c1] : tensor<3x9x3xf16>
      %263 = math.rsqrt %cst_0 : f16
      %true_48 = index.bool.constant true
      %alloc_49 = memref.alloc() : memref<13xi32>
      memref.copy %alloc_9, %alloc_49 : memref<13xi32> to memref<13xi32>
      %264 = math.log2 %9 : tensor<3x9x3xf32>
      %265 = index.floordivs %c4, %c6
      %266 = math.atan2 %3, %3 : tensor<9xf16>
      %267 = math.round %15 : tensor<3x9x3xf16>
      scf.yield
    }
    %18 = affine.vector_load %alloc_20[%c13] : memref<9xf16>, vector<3xf16>
    affine.vector_store %18, %alloc_17[%c2] : memref<9xf16>, vector<3xf16>
    %19 = tensor.empty() : tensor<9xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%alloc_17, %19 : memref<9xf16>, tensor<9xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    memref.copy %alloc_19, %alloc_6 : memref<9xf16> to memref<9xf16>
    %22 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<3x9x3xf16>) {
    ^bb0(%out: f16):
      %257 = arith.subi %c-32218_i16, %c26906_i16 : i16
      %258 = math.atan %12 : tensor<9xf32>
      %259 = math.round %3 : tensor<9xf16>
      %260 = math.log2 %19 : tensor<9xf16>
      %261 = math.roundeven %19 : tensor<9xf16>
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 64, d3)>(%c0, %c4, %c14, %c12)
      %from_elements_45 = tensor.from_elements %cst_1, %cst_3, %cst_0, %out, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1 : tensor<9xf16>
      %263 = vector.multi_reduction <minf>, %18, %cst_3 [0] : vector<3xf16> to f16
      %264 = vector.transpose %18, [0] : vector<3xf16> to vector<3xf16>
      %265 = math.ipowi %1, %1 : tensor<9xi16>
      memref.assume_alignment %alloc_11, 1 : memref<9xi1>
      %266 = arith.mulf %263, %cst_3 : f16
      %267 = vector.reduction <maxf>, %18 : vector<3xf16> into f16
      %expanded = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<3x9x3xi32> into tensor<3x9x3x1xi32>
      scf.execute_region {
        %281 = math.atan %out : f16
        %282 = math.fpowi %3, %4 : tensor<9xf16>, tensor<9xi32>
        %283 = vector.broadcast %c709515696_i64 : i64 to vector<9xi64>
        %284 = vector.broadcast %true : i1 to vector<9xi1>
        %285 = vector.maskedload %alloc_12[%c7], %284, %283 : memref<13xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %286 = math.ctpop %expanded : tensor<3x9x3x1xi32>
        %287 = index.divu %c12, %c14
        %288 = arith.mulf %cst_2, %cst_2 : f32
        %289 = math.exp %263 : f16
        %splat_48 = tensor.splat %c1636041013_i32 : tensor<3x9x3xi32>
        %290 = arith.xori %false, %true : i1
        %291 = index.maxu %c6, %c10
        %292 = arith.maxsi %c1005151537_i32, %c1005151537_i32 : i32
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %293 = vector.transfer_read %9[%c0, %262, %c5], %cst_50 : tensor<3x9x3xf32>, vector<f32>
        %294 = arith.remsi %false, %true_4 : i1
        %295 = vector.create_mask %291, %c13, %262 : vector<3x9x3xi1>
        %alloca_51 = memref.alloca() : memref<9xi1>
        %296 = vector.extract %285[6] : vector<9xi64>
        scf.yield
      }
      %268 = arith.remsi %c26906_i16, %c-19590_i16 : i16
      %269 = index.divs %c10, %c1
      %270 = tensor.empty() : tensor<9xf32>
      %271 = math.atan %15 : tensor<3x9x3xf16>
      %272 = bufferization.to_memref %270 : memref<9xf32>
      %cast_46 = tensor.cast %10 : tensor<13xi32> to tensor<?xi32>
      %273 = math.cttz %5 : tensor<9xi1>
      %274 = math.ctpop %11 : tensor<9xi1>
      %275 = index.ceildivs %c2, %c11
      %276 = arith.minui %true, %false : i1
      %277 = index.add %c3, %c6
      %278 = tensor.empty() : tensor<13xi16>
      %expanded_47 = tensor.expand_shape %5 [[0, 1]] : tensor<9xi1> into tensor<9x1xi1>
      %279 = math.log1p %out : f16
      %c1398013181_i32 = arith.constant 1398013181 : i32
      memref.copy %alloc_11, %alloc : memref<9xi1> to memref<9xi1>
      %280 = arith.divui %c709515696_i64, %c709515696_i64 : i64
      linalg.yield %cst_0 : f16
    } -> tensor<3x9x3xf16>
    %23 = math.exp %12 : tensor<9xf32>
    %24 = math.log10 %cst_0 : f16
    %25 = math.ctpop %c-32218_i16 : i16
    %26 = affine.min affine_map<(d0, d1) -> (0, -(d0 - 1), d1 - 62)>(%c12, %c0)
    %27 = vector.create_mask %c5, %c13, %c13 : vector<3x9x3xi1>
    %28 = scf.index_switch %c9 -> index 
    case 1 {
      %257 = arith.minui %c-19590_i16, %c-32218_i16 : i16
      %258 = arith.xori %true_4, %false : i1
      %259 = arith.maxsi %c-19590_i16, %c26906_i16 : i16
      %260 = math.tan %15 : tensor<3x9x3xf16>
      %261 = bufferization.clone %alloc_6 : memref<9xf16> to memref<9xf16>
      %cast_45 = tensor.cast %20 : tensor<f16> to tensor<f16>
      %262 = arith.minsi %c1005151537_i32, %c1636041013_i32 : i32
      %263 = vector.matrix_multiply %18, %18 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
      %264 = index.mul %c9, %c0
      %265 = bufferization.clone %alloc_15 : memref<9xi64> to memref<9xi64>
      %266 = math.atan2 %3, %3 : tensor<9xf16>
      %cst_46 = arith.constant 1.000000e+00 : f32
      %267 = vector.transfer_read %6[%c15], %cst_46 : tensor<13xf32>, vector<f32>
      %268 = math.absf %12 : tensor<9xf32>
      %269 = scf.index_switch %c6 -> f16 
      case 1 {
        %272 = bufferization.to_tensor %alloc_9 : memref<13xi32>
        %false_47 = index.bool.constant false
        %273 = math.round %19 : tensor<9xf16>
        %alloc_48 = memref.alloc() : memref<13xi16>
        memref.copy %alloc_13, %alloc_48 : memref<13xi16> to memref<13xi16>
        %274 = bufferization.clone %alloc_20 : memref<9xf16> to memref<9xf16>
        %275 = arith.remsi %c26906_i16, %c26906_i16 : i16
        %276 = vector.shuffle %27, %27 [1, 2, 4] : vector<3x9x3xi1>, vector<3x9x3xi1>
        %277 = bufferization.clone %274 : memref<9xf16> to memref<9xf16>
        %278 = index.ceildivs %c3, %c9
        %279 = arith.maxf %cst_2, %cst : f32
        %280 = math.cttz %2 : tensor<9xi64>
        %alloca_49 = memref.alloca() : memref<3x9x3xf32>
        %281 = bufferization.to_tensor %265 : memref<9xi64>
        %282 = vector.reduction <add>, %263 : vector<1xf16> into f16
        %283 = math.ipowi %13, %1 : tensor<9xi16>
        %284 = index.floordivs %c15, %c14
        scf.yield %cst_3 : f16
      }
      default {
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %272 = vector.transfer_read %0[%c9], %c0_i64 : tensor<9xi64>, vector<i64>
        %inserted_47 = tensor.insert %true_4 into %5[%c6] : tensor<9xi1>
        %273 = math.absf %3 : tensor<9xf16>
        %274 = arith.divui %c-19590_i16, %c17411_i16 : i16
        %275 = math.ctpop %0 : tensor<9xi64>
        %276 = index.sub %c7, %c9
        %277 = vector.matrix_multiply %18, %263 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<1xf16>) -> vector<3xf16>
        %278 = arith.remsi %c-19590_i16, %c-19590_i16 : i16
        %279 = math.atan2 %15, %15 : tensor<3x9x3xf16>
        %280 = index.maxu %c0, %c13
        %281 = bufferization.to_memref %7 : memref<3x9x3xi16>
        memref.assume_alignment %261, 8 : memref<9xf16>
        %282 = arith.maxf %cst_46, %cst : f32
        %283 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %inserted_48 = tensor.insert %true_4 into %11[%c1] : tensor<9xi1>
        %alloc_49 = memref.alloc() : memref<i1>
        memref.copy %alloc_21, %alloc_49 : memref<i1> to memref<i1>
        scf.yield %cst_0 : f16
      }
      %270 = vector.create_mask %c5 : vector<9xi1>
      %271 = vector.matrix_multiply %263, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xf16>, vector<3xf16>) -> vector<3xf16>
      scf.yield %c15 : index
    }
    case 2 {
      %257 = math.cos %15 : tensor<3x9x3xf16>
      %258 = vector.load %alloc_18[%c8] : memref<9xf16>, vector<13xf16>
      %259 = arith.addi %c887830254_i32, %c887830254_i32 : i32
      %260 = bufferization.to_tensor %alloc_10 : memref<13xf16>
      %261 = vector.load %alloc_20[%c5] : memref<9xf16>, vector<3x9x3xf16>
      %262 = math.round %cst : f32
      %alloc_45 = memref.alloc() : memref<3x3x9xi32>
      %alloc_46 = memref.alloc() : memref<3x3xi32>
      %alloc_47 = memref.alloc() : memref<3x9xi32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_46, %alloc_47 : memref<3x3x9xi32>, memref<3x3xi32>, memref<3x9xi32>) outs(%14 : tensor<3x9x3xi32>) {
      ^bb0(%in: i32, %in_49: i32, %in_50: i32, %out: i32):
        vector.print %27 : vector<3x9x3xi1>
        memref.assume_alignment %alloc_10, 1 : memref<13xf16>
        %alloca_51 = memref.alloca() : memref<3x9x3xf16>
        %271 = index.mul %c3, %c9
        %c16523503_i64 = arith.constant 16523503 : i64
        %272 = index.floordivs %c13, %c11
        %extracted_52 = tensor.extract %2[%c1] : tensor<9xi64>
        %273 = math.log1p %12 : tensor<9xf32>
        %274 = affine.max affine_map<(d0) -> (d0 floordiv 2 - d0, d0 floordiv 2, d0 floordiv 2)>(%26)
        %275 = math.log1p %19 : tensor<9xf16>
        %276 = memref.load %alloc_19[%c1] : memref<9xf16>
        %alloca_53 = memref.alloca() : memref<13xi32>
        %277 = arith.divsi %false, %true : i1
        %278 = index.ceildivs %c13, %c4
        %279 = arith.minui %true_4, %true_4 : i1
        %alloc_54 = memref.alloc() : memref<13xi64>
        memref.copy %alloc_12, %alloc_54 : memref<13xi64> to memref<13xi64>
        %280 = arith.remsi %in_50, %out : i32
        %alloc_55 = memref.alloc() : memref<3x9x3xi64>
        memref.assume_alignment %alloc_15, 16 : memref<9xi64>
        %false_56 = arith.constant false
        %281 = vector.transfer_read %alloc[%c13], %false_56 : memref<9xi1>, vector<i1>
        %282 = memref.realloc %alloc_9 : memref<13xi32> to memref<13xi32>
        %283 = memref.realloc %alloc_13 : memref<13xi16> to memref<3xi16>
        %284 = arith.minui %c887830254_i32, %in_50 : i32
        %285 = index.ceildivs %c3, %c1
        %286 = vector.create_mask %c4 : vector<9xi1>
        %287 = arith.xori %false, %false : i1
        %288 = index.ceildivs %c3, %c0
        %289 = affine.min affine_map<(d0, d1, d2) -> (d1)>(%c14, %c15, %288)
        %290 = arith.muli %false_56, %true_4 : i1
        %291 = arith.addi %extracted_52, %c709515696_i64 : i64
        %292 = arith.minui %in_50, %in_50 : i32
        %293 = vector.shuffle %261, %261 [2, 3, 4] : vector<3x9x3xf16>, vector<3x9x3xf16>
        linalg.yield %out : i32
      } -> tensor<3x9x3xi32>
      %264 = bufferization.clone %alloc_5 : memref<13xi1> to memref<13xi1>
      %265 = scf.while (%arg3 = %alloc_17) : (memref<9xf16>) -> memref<9xf16> {
        %271 = vector.bitcast %258 : vector<13xf16> to vector<13xf16>
        %272 = arith.negf %cst_0 : f16
        %273 = bufferization.to_memref %11 : memref<9xi1>
        %274 = arith.maxf %cst_3, %cst_3 : f16
        %275 = arith.minui %c1005151537_i32, %c887830254_i32 : i32
        %276 = index.mul %c10, %26
        %277 = arith.minui %c709515696_i64, %c709515696_i64 : i64
        %278 = math.round %12 : tensor<9xf32>
        scf.condition(%true) %arg3 : memref<9xf16>
      } do {
      ^bb0(%arg3: memref<9xf16>):
        %271 = arith.xori %true_4, %true_4 : i1
        %272 = arith.xori %c26906_i16, %c17411_i16 : i16
        %273 = math.log %9 : tensor<3x9x3xf32>
        %274 = arith.remf %cst_1, %cst_3 : f16
        %275 = math.floor %12 : tensor<9xf32>
        %276 = affine.load %alloc_18[%c7] : memref<9xf16>
        %277 = tensor.empty() : tensor<13x9xi16>
        %alloc_49 = memref.alloc() : memref<9x9xi16>
        %278 = tensor.empty() : tensor<13x9xi16>
        %279 = linalg.matmul ins(%277, %alloc_49 : tensor<13x9xi16>, memref<9x9xi16>) outs(%278 : tensor<13x9xi16>) -> tensor<13x9xi16>
        %280 = arith.xori %c26906_i16, %c17411_i16 : i16
        %281 = arith.maxf %cst, %cst : f32
        %282 = tensor.empty() : tensor<9xi1>
        %283 = math.log2 %cst_3 : f16
        %284 = math.round %9 : tensor<3x9x3xf32>
        %collapsed_50 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x9x3xi16> into tensor<27x3xi16>
        %285 = math.atan2 %276, %276 : f16
        %286 = vector.multi_reduction <add>, %18, %276 [0] : vector<3xf16> to f16
        %287 = vector.broadcast %true : i1 to vector<13xi1>
        scf.yield %alloc_17 : memref<9xf16>
      }
      %266 = vector.create_mask %c12 : vector<13xi1>
      %267 = vector.create_mask %c1 : vector<13xi1>
      %268 = vector.broadcast %c26906_i16 : i16 to vector<9xi16>
      %alloca_48 = memref.alloca() : memref<13xf16>
      memref.alloca_scope  {
        %271 = index.add %c10, %c11
        %272 = arith.maxf %cst_0, %cst_1 : f16
        vector.print %266 : vector<13xi1>
        %273 = arith.minsi %c1636041013_i32, %c1636041013_i32 : i32
        %274 = math.atan %20 : tensor<f16>
        %275 = vector.broadcast %cst : f32 to vector<3x9x3xf32>
        %276 = math.absf %3 : tensor<9xf16>
        %277 = index.floordivs %c9, %c1
        %278 = math.ctpop %7 : tensor<3x9x3xi16>
        %279 = math.atan2 %3, %19 : tensor<9xf16>
        %280 = math.ctlz %4 : tensor<9xi32>
        %281 = index.divs %c2, %c3
        %282 = vector.insertelement %false, %267[%c10 : index] : vector<13xi1>
        memref.store %true, %alloc[%c3] : memref<9xi1>
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%c6, %c15, %c14, %c3)
        %284 = math.copysign %8, %8 : tensor<13xf32>
        %285 = arith.subi %c26906_i16, %c-19590_i16 : i16
        %286 = vector.broadcast %cst : f32 to vector<9x3xf32>
        %287 = vector.insert %286, %275 [0] : vector<9x3xf32> into vector<3x9x3xf32>
        %288 = math.fma %3, %19, %19 : tensor<9xf16>
        %289 = vector.create_mask %c15 : vector<9xi1>
        %alloc_49 = memref.alloc() : memref<9xf32>
        memref.copy %alloc_14, %alloc_49 : memref<9xf32> to memref<9xf32>
        %290 = arith.maxf %cst_2, %cst : f32
        %291 = math.exp %cst : f32
        %292 = arith.subi %c-19590_i16, %c-19590_i16 : i16
        %293 = bufferization.to_memref %6 : memref<13xf32>
        %294 = math.atan2 %21, %21 : tensor<f16>
        memref.assume_alignment %alloc_6, 1 : memref<9xf16>
        %295 = math.log10 %cst_0 : f16
        %296 = math.ipowi %0, %2 : tensor<9xi64>
        %297 = vector.broadcast %cst : f32 to vector<9xf32>
        %298 = vector.fma %297, %297, %297 : vector<9xf32>
        %299 = arith.minsi %true, %false : i1
        %300 = vector.transpose %18, [0] : vector<3xf16> to vector<3xf16>
      }
      %269 = index.maxu %c7, %c9
      %270 = arith.xori %c26906_i16, %c-19590_i16 : i16
      scf.yield %c15 : index
    }
    case 3 {
      memref.store %cst_1, %alloc_20[%c8] : memref<9xf16>
      %257 = bufferization.to_memref %7 : memref<3x9x3xi16>
      %258 = math.floor %12 : tensor<9xf32>
      %extracted_45 = tensor.extract %15[%c1, %c8, %c1] : tensor<3x9x3xf16>
      %259 = bufferization.to_tensor %alloc : memref<9xi1>
      %260 = math.atan2 %21, %20 : tensor<f16>
      %261 = arith.shrsi %c709515696_i64, %c709515696_i64 : i64
      %rank_46 = tensor.rank %9 : tensor<3x9x3xf32>
      %262 = arith.remsi %c1636041013_i32, %c1005151537_i32 : i32
      %263 = math.cos %cst_1 : f16
      %264 = arith.remsi %c17411_i16, %c26906_i16 : i16
      %265 = arith.remf %cst_2, %cst : f32
      %266 = arith.maxsi %true_4, %true_4 : i1
      %267 = math.copysign %3, %3 : tensor<9xf16>
      %268 = arith.mulf %extracted_45, %extracted_45 : f16
      %269 = vector.broadcast %c887830254_i32 : i32 to vector<9xi32>
      scf.yield %c14 : index
    }
    default {
      %c29636_i16 = arith.constant 29636 : i16
      %257 = math.round %3 : tensor<9xf16>
      %258 = arith.maxsi %true, %true_4 : i1
      %259 = index.floordivs %c10, %c3
      %260 = bufferization.clone %alloc : memref<9xi1> to memref<9xi1>
      %261 = vector.bitcast %18 : vector<3xf16> to vector<3xf16>
      %262 = math.round %20 : tensor<f16>
      %263 = math.atan %3 : tensor<9xf16>
      %264 = arith.negf %cst_0 : f16
      %265 = math.round %12 : tensor<9xf32>
      %266 = math.exp %9 : tensor<3x9x3xf32>
      %267 = arith.minui %true_4, %false : i1
      %268 = math.roundeven %15 : tensor<3x9x3xf16>
      %269 = bufferization.clone %alloc_12 : memref<13xi64> to memref<13xi64>
      %270 = arith.xori %true, %true : i1
      %alloca_45 = memref.alloca() : memref<13xi1>
      scf.yield %c15 : index
    }
    %29 = index.maxu %c1, %c13
    %30 = arith.addf %cst, %cst : f32
    %31 = arith.remf %cst, %cst : f32
    %32 = arith.minsi %c887830254_i32, %c1636041013_i32 : i32
    %cst_22 = arith.constant 3.150000e+02 : f16
    %33 = vector.transpose %27, [1, 2, 0] : vector<3x9x3xi1> to vector<9x3x3xi1>
    %34 = arith.addi %c26906_i16, %c-19590_i16 : i16
    %35 = vector.matrix_multiply %18, %18 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
    %36 = vector.flat_transpose %35 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %37 = vector.broadcast %false : i1 to vector<9x3x9x3xi1>
    %38 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %27, %27, %37 : vector<3x9x3xi1>, vector<3x9x3xi1> into vector<9x3x9x3xi1>
    %39 = vector.broadcast %true : i1 to vector<3x9xi1>
    %dest, %accumulated_value = vector.scan <minui>, %27, %39 {inclusive = true, reduction_dim = 2 : i64} : vector<3x9x3xi1>, vector<3x9xi1>
    %40 = scf.while (%arg3 = %alloc_17) : (memref<9xf16>) -> memref<9xf16> {
      %inserted_45 = tensor.insert %c887830254_i32 into %10[%c10] : tensor<13xi32>
      %257 = index.floordivs %26, %c4
      %258 = arith.maxf %cst_0, %cst_0 : f16
      %259 = math.copysign %6, %6 : tensor<13xf32>
      %260 = math.round %6 : tensor<13xf32>
      %cst_46 = arith.constant 1.000000e+00 : f16
      %cst_47 = arith.constant 0.000000e+00 : f16
      %261 = vector.transfer_read %3[%c1], %cst_47 : tensor<9xf16>, vector<f16>
      %262 = index.divs %c4, %257
      %263 = arith.shrsi %true_4, %false : i1
      scf.condition(%true) %alloc_17 : memref<9xf16>
    } do {
    ^bb0(%arg3: memref<9xf16>):
      %257 = math.ceil %9 : tensor<3x9x3xf32>
      %258 = math.tan %cst_3 : f16
      %259 = memref.realloc %alloc_13 : memref<13xi16> to memref<9xi16>
      %260 = affine.max affine_map<(d0, d1) -> (-((d1 ceildiv 128) ceildiv 32), d1 floordiv 2 + 4)>(%c1, %c6)
      %261 = bufferization.to_tensor %alloc_10 : memref<13xf16>
      %false_45 = index.bool.constant false
      %262 = arith.addi %c-19590_i16, %c17411_i16 : i16
      %alloc_46 = memref.alloc() : memref<3x9xf16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15, %alloc_46 : tensor<3x9x3xf16>, memref<3x9xf16>) outs(%15 : tensor<3x9x3xf16>) {
      ^bb0(%in: f16, %in_47: f16, %out: f16):
        %272 = arith.remsi %c17411_i16, %c17411_i16 : i16
        %273 = arith.minui %c1636041013_i32, %c1636041013_i32 : i32
        %274 = vector.reduction <add>, %18 : vector<3xf16> into f16
        %275 = vector.matrix_multiply %36, %35 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %276 = math.tanh %cst_3 : f16
        %277 = math.expm1 %9 : tensor<3x9x3xf32>
        %278 = vector.broadcast %true_4 : i1 to vector<9x3xi1>
        %dest_48, %accumulated_value_49 = vector.scan <maxsi>, %27, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<3x9x3xi1>, vector<9x3xi1>
        %279 = vector.shuffle %27, %27 [0, 1, 4, 5] : vector<3x9x3xi1>, vector<3x9x3xi1>
        %280 = math.log %20 : tensor<f16>
        %cast_50 = tensor.cast %4 : tensor<9xi32> to tensor<?xi32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %281 = vector.transfer_read %2[%c9], %c0_i64 : tensor<9xi64>, vector<i64>
        %282 = vector.insert %in, %35 [0] : f16 into vector<1xf16>
        %283 = tensor.empty(%c11) : tensor<3x?x3xf16>
        %284 = memref.load %alloc[%c7] : memref<9xi1>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %36, %275, %cst_3 : vector<1xf16>, vector<1xf16> into f16
        %286 = index.sub %c10, %c10
        %287 = arith.remf %out, %out : f16
        %288 = math.tanh %261 : tensor<13xf16>
        %289 = vector.broadcast %c1636041013_i32 : i32 to vector<13xi32>
        %290 = bufferization.clone %alloc : memref<9xi1> to memref<9xi1>
        %291 = vector.broadcast %c10 : index to vector<3xindex>
        %292 = vector.broadcast %false_45 : i1 to vector<3xi1>
        %293 = vector.broadcast %cst : f32 to vector<3xf32>
        vector.scatter %alloc_14[%c2] [%291], %292, %293 : memref<9xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %c78685281_i64 = arith.constant 78685281 : i64
        %294 = index.maxs %286, %c6
        %295 = index.add %c8, %c12
        %296 = math.ipowi %16, %16 : tensor<3x9x3xi32>
        %297 = arith.remsi %c1_i64, %c709515696_i64 : i64
        %298 = arith.subi %true, %false_45 : i1
        %299 = math.fma %3, %19, %3 : tensor<9xf16>
        %false_51 = arith.constant false
        %from_elements_52 = tensor.from_elements %c1636041013_i32, %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32 : tensor<9xi32>
        %300 = arith.xori %c887830254_i32, %c887830254_i32 : i32
        %301 = bufferization.clone %alloc_20 : memref<9xf16> to memref<9xf16>
        linalg.yield %out : f16
      } -> tensor<3x9x3xf16>
      %264 = index.ceildivs %260, %c12
      %265 = bufferization.to_tensor %alloc_19 : memref<9xf16>
      %266 = vector.broadcast %false : i1 to vector<9xi1>
      %267 = math.floor %cst_1 : f16
      %268 = bufferization.clone %alloc_5 : memref<13xi1> to memref<13xi1>
      %269 = arith.maxf %cst, %cst : f32
      %270 = arith.subi %true_4, %true_4 : i1
      %271 = arith.subi %c-32218_i16, %c17411_i16 : i16
      scf.yield %alloc_19 : memref<9xf16>
    }
    %41 = arith.divf %cst_2, %cst : f32
    %42 = arith.minui %c887830254_i32, %c887830254_i32 : i32
    %43 = arith.negf %cst_3 : f16
    %44 = index.maxu %c11, %26
    %45 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 2) mod 64)>(%c1, %c2, %c5, %c12)
    %46 = bufferization.clone %alloc_12 : memref<13xi64> to memref<13xi64>
    %47 = math.tan %15 : tensor<3x9x3xf16>
    %48 = arith.maxsi %false, %true : i1
    %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_3, %cst_3, %cst_0, %cst_1 : tensor<9xf16>
    %49 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%44, %c8, %c7)
    %50 = arith.xori %c1636041013_i32, %c887830254_i32 : i32
    %cst_23 = arith.constant 1.02500781E+9 : f32
    %51 = arith.ceildivsi %c26906_i16, %c26906_i16 : i16
    %alloc_24 = memref.alloc() : memref<9xi1>
    %52 = bufferization.to_tensor %alloc_14 : memref<9xf32>
    %53 = vector.broadcast %cst_3 : f16 to vector<1x1xf16>
    %54 = vector.outerproduct %36, %35, %53 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
    %55 = vector.broadcast %cst_3 : f16 to vector<9xf16>
    %56 = vector.broadcast %true_4 : i1 to vector<9xi1>
    %57 = vector.maskedload %alloc_18[%c2], %56, %55 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
    %58 = math.tan %3 : tensor<9xf16>
    %from_elements_25 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
    %59 = math.ctpop %10 : tensor<13xi32>
    %60 = vector.load %alloc_7[%c4] : memref<9xi64>, vector<9xi64>
    memref.copy %alloc_6, %alloc_20 : memref<9xf16> to memref<9xf16>
    %61 = vector.broadcast %c709515696_i64 : i64 to vector<9xi64>
    %62 = index.floordivs %c9, %c2
    %63 = math.fpowi %cst_2, %c1005151537_i32 : f32, i32
    %64 = arith.ori %true_4, %true_4 : i1
    vector.print %55 : vector<9xf16>
    %65 = tensor.empty() : tensor<3xf32>
    %66 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%65, %alloc_14 : tensor<3xf32>, memref<9xf32>) outs(%9 : tensor<3x9x3xf32>) {
    ^bb0(%in: f32, %in_45: f32, %out: f32):
      %257 = arith.shrui %true_4, %true_4 : i1
      %258 = math.round %cst_0 : f16
      %from_elements_46 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
      %259 = vector.broadcast %c709515696_i64 : i64 to vector<4xi64>
      %260 = vector.broadcast %true_4 : i1 to vector<4xi1>
      %261 = vector.maskedload %alloc_7[%c0], %260, %259 : memref<9xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %262 = memref.realloc %alloc_6 : memref<9xf16> to memref<4xf16>
      %263 = memref.alloca_scope  -> (i16) {
        %286 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 32)>(%c12, %c6, %c14)
        memref.store %false, %alloc[%c1] : memref<9xi1>
        %inserted_50 = tensor.insert %cst_0 into %3[%c1] : tensor<9xf16>
        %287 = vector.broadcast %false : i1 to vector<3x3xi1>
        %dest_51, %accumulated_value_52 = vector.scan <xor>, %27, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<3x9x3xi1>, vector<3x3xi1>
        %288 = vector.broadcast %c887830254_i32 : i32 to vector<3x9x3xi32>
        %289 = vector.broadcast %c887830254_i32 : i32 to vector<4xi32>
        %290 = vector.maskedload %alloc_16[%c3], %260, %289 : memref<9xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %291 = index.ceildivs %44, %c3
        %292 = vector.broadcast %true : i1 to vector<9xi1>
        %293 = arith.maxsi %c1636041013_i32, %c1005151537_i32 : i32
        %294 = math.exp %cst_3 : f16
        %295 = arith.negf %out : f32
        %296 = math.atan2 %21, %20 : tensor<f16>
        %splat_53 = tensor.splat %cst_1 : tensor<9xf16>
        %297 = vector.matrix_multiply %61, %61 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %298 = arith.floordivsi %c709515696_i64, %c709515696_i64 : i64
        %299 = vector.load %alloc_9[%c5] : memref<13xi32>, vector<3x9x3xi32>
        %300 = vector.broadcast %true : i1 to vector<9xi1>
        %inserted_54 = tensor.insert %c1636041013_i32 into %4[%c6] : tensor<9xi32>
        %301 = arith.addi %c-19590_i16, %c-32218_i16 : i16
        %302 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 2 - 2, d2, d3 - 8, d2 * -8)>(%c15, %44, %c13, %c2)
        %alloca_55 = memref.alloca() : memref<9xi32>
        %303 = arith.minsi %c1005151537_i32, %c1005151537_i32 : i32
        %304 = vector.shuffle %300, %260 [0, 4, 5, 7, 9, 11, 12] : vector<9xi1>, vector<4xi1>
        %305 = math.exp2 %splat_53 : tensor<9xf16>
        %306 = math.round %8 : tensor<13xf32>
        %307 = index.maxs %c15, %c4
        %308 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %309 = vector.fma %308, %308, %308 : vector<9xf32>
        %310 = vector.create_mask %c12 : vector<9xi1>
        %311 = arith.divui %c1005151537_i32, %c1005151537_i32 : i32
        %312 = index.sub %c7, %49
        %cast_56 = tensor.cast %7 : tensor<3x9x3xi16> to tensor<?x?x?xi16>
        %313 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1 - 2, (d1 - 2) ceildiv 4, d0 * 64)>(%c7, %c7, %c1, %c10)
        memref.alloca_scope.return %c17411_i16 : i16
      }
      %264 = math.atan2 %12, %12 : tensor<9xf32>
      memref.tensor_store %2, %alloc_7 : memref<9xi64>
      %265 = vector.shuffle %61, %261 [0, 3, 4, 6, 7, 10] : vector<9xi64>, vector<4xi64>
      %266 = math.ctlz %7 : tensor<3x9x3xi16>
      %267 = vector.maskedload %alloc_19[%c3], %56, %55 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %268 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
      scf.execute_region {
        %286 = index.floordivs %c8, %c5
        %287 = affine.max affine_map<(d0, d1) -> (d0 floordiv 2 + 1)>(%c11, %c0)
        %c1446373913_i32 = arith.constant 1446373913 : i32
        %288 = vector.flat_transpose %61 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %289 = arith.muli %c-32218_i16, %c-19590_i16 : i16
        %290 = arith.remf %in, %cst : f32
        %291 = index.add %c14, %c7
        memref.copy %alloc, %268 : memref<9xi1> to memref<9xi1>
        %292 = vector.create_mask %45 : vector<9xi1>
        %293 = math.log10 %15 : tensor<3x9x3xf16>
        %294 = index.maxu %c4, %c0
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %35, %35, %cst_3 : vector<1xf16>, vector<1xf16> into f16
        %296 = tensor.empty(%287) : tensor<?xf16>
        %297 = affine.min affine_map<(d0) -> (d0, (d0 + 8) ceildiv 32, d0 - 64)>(%29)
        %298 = arith.addf %cst_1, %cst_0 : f16
        %299 = bufferization.to_tensor %alloc_9 : memref<13xi32>
        scf.yield
      }
      %269 = index.mul %c6, %45
      %270 = index.mul %c10, %44
      %271 = tensor.empty() : tensor<13xi32>
      %mapped = linalg.map ins(%10 : tensor<13xi32>) outs(%271 : tensor<13xi32>)
        (%in_50: i32) {
          %286 = math.atan2 %21, %21 : tensor<f16>
          %287 = index.ceildivs %c2, %44
          %288 = vector.matrix_multiply %267, %36 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<1xf16>) -> vector<9xf16>
          %289 = math.ctpop %from_elements_46 : tensor<9xi64>
          %290 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 4) floordiv 32)>(%c0, %c11)
          %291 = arith.subi %c1636041013_i32, %c887830254_i32 : i32
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %36, %36, %cst_0 : vector<1xf16>, vector<1xf16> into f16
          %293 = bufferization.to_tensor %alloc_14 : memref<9xf32>
          %294 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 floordiv 2 + 16) floordiv 64, d2 floordiv 4)>(%49, %c2, %290, %c4)
          %295 = math.fma %19, %3, %3 : tensor<9xf16>
          %296 = math.exp %20 : tensor<f16>
          %297 = arith.minsi %c709515696_i64, %c709515696_i64 : i64
          %298 = tensor.empty() : tensor<3x9x3xi1>
          %299 = vector.broadcast %in_50 : i32 to vector<3x9x3xi32>
          %300 = vector.gather %298[%269, %c12, %45] [%299], %27, %27 : tensor<3x9x3xi1>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xi1> into vector<3x9x3xi1>
          %301 = math.floor %19 : tensor<9xf16>
          %alloca_51 = memref.alloca() : memref<13xf32>
          %cast_52 = tensor.cast %5 : tensor<9xi1> to tensor<?xi1>
          %302 = memref.realloc %268 : memref<9xi1> to memref<3xi1>
          %303 = vector.broadcast %45 : index to vector<13xindex>
          %304 = vector.broadcast %true_4 : i1 to vector<13xi1>
          %305 = vector.broadcast %cst_3 : f16 to vector<13xf16>
          vector.scatter %alloc_17[%c3] [%303], %304, %305 : memref<9xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
          %c0_i64 = arith.constant 0 : i64
          %306 = vector.transfer_read %0[%62], %c0_i64 : tensor<9xi64>, vector<i64>
          %307 = arith.negf %cst : f32
          %308 = math.fpowi %15, %16 : tensor<3x9x3xf16>, tensor<3x9x3xi32>
          %309 = arith.subi %true_4, %true_4 : i1
          %310 = arith.negf %cst_2 : f32
          %311 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1 - 16, (d2 ceildiv 64) mod 32)>(%c1, %62, %45, %287)
          %312 = math.ctpop %from_elements_25 : tensor<9xi64>
          %313 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 32) floordiv 4)>(%c7, %290)
          %314 = vector.create_mask %313 : vector<13xi1>
          %315 = math.copysign %19, %3 : tensor<9xf16>
          %316 = affine.min affine_map<(d0, d1, d2) -> (0, (-d2) ceildiv 64, 0)>(%311, %49, %c6)
          %317 = math.ctpop %c26906_i16 : i16
          %318 = vector.broadcast %cst : f32 to vector<9xf32>
          %319 = vector.fma %318, %318, %318 : vector<9xf32>
          %320 = math.round %9 : tensor<3x9x3xf32>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %inserted_47 = tensor.insert %c709515696_i64 into %0[%c2] : tensor<9xi64>
      %272 = tensor.empty() : tensor<9xi64>
      %273 = arith.remsi %263, %c26906_i16 : i16
      %274 = index.mul %c7, %26
      %275 = vector.load %alloc_18[%c7] : memref<9xf16>, vector<3x9x3xf16>
      %276 = vector.load %46[%c9] : memref<13xi64>, vector<13xi64>
      %collapsed_48 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x9x3xi16> into tensor<27x3xi16>
      %277 = math.copysign %8, %8 : tensor<13xf32>
      %278 = index.divu %c7, %c7
      %279 = arith.minsi %c887830254_i32, %c887830254_i32 : i32
      %280 = arith.divsi %c-19590_i16, %c-32218_i16 : i16
      %281 = arith.negf %cst_1 : f16
      %282 = arith.maxsi %c709515696_i64, %c709515696_i64 : i64
      %283 = arith.muli %false, %false : i1
      %284 = scf.index_switch %c13 -> index 
      case 1 {
        %286 = index.floordivs %c10, %c0
        %287 = bufferization.clone %alloc_8 : memref<3x9x3xi1> to memref<3x9x3xi1>
        %288 = math.log1p %6 : tensor<13xf32>
        %289 = math.atan2 %from_elements, %3 : tensor<9xf16>
        %290 = vector.broadcast %c1005151537_i32 : i32 to vector<i32>
        vector.transfer_write %290, %alloc_9[%c6] : vector<i32>, memref<13xi32>
        %291 = vector.create_mask %c3, %286, %45 : vector<3x9x3xi1>
        %292 = math.tan %from_elements : tensor<9xf16>
        %293 = index.sub %29, %c9
        %294 = vector.extract %261[1] : vector<4xi64>
        %rank_50 = tensor.rank %21 : tensor<f16>
        %295 = arith.shrsi %c17411_i16, %263 : i16
        %296 = math.ceil %15 : tensor<3x9x3xf16>
        memref.copy %46, %alloc_12 : memref<13xi64> to memref<13xi64>
        %297 = vector.broadcast %true : i1 to vector<9x3xi1>
        %298 = vector.insert %297, %291 [0] : vector<9x3xi1> into vector<3x9x3xi1>
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %61, %61, %c709515696_i64 : vector<9xi64>, vector<9xi64> into i64
        %300 = arith.minui %c1005151537_i32, %c887830254_i32 : i32
        scf.yield %62 : index
      }
      case 2 {
        %286 = memref.load %alloc_12[%c11] : memref<13xi64>
        %287 = affine.min affine_map<(d0, d1, d2) -> ((d0 + 16) * 2)>(%c7, %c12, %c14)
        %from_elements_50 = tensor.from_elements %cst_2, %cst_2, %in, %cst_2, %cst_2, %in, %in_45, %cst_2, %out : tensor<9xf32>
        %288 = arith.addf %out, %cst : f32
        memref.copy %alloc_17, %alloc_19 : memref<9xf16> to memref<9xf16>
        %splat_51 = tensor.splat %c709515696_i64 : tensor<13xi64>
        %289 = math.floor %cst_1 : f16
        %290 = tensor.empty() : tensor<13xf16>
        %291 = vector.broadcast %c1005151537_i32 : i32 to vector<9xi32>
        %292 = vector.gather %290[%49] [%291], %56, %57 : tensor<13xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %293 = bufferization.to_memref %2 : memref<9xi64>
        %294 = index.add %c9, %c5
        %295 = arith.addf %cst_1, %cst_0 : f16
        %cast_52 = tensor.cast %from_elements_25 : tensor<9xi64> to tensor<?xi64>
        %296 = math.copysign %from_elements_50, %12 : tensor<9xf32>
        %alloc_53 = memref.alloc() : memref<i1>
        memref.copy %alloc_21, %alloc_53 : memref<i1> to memref<i1>
        %297 = index.mul %c0, %269
        %298 = math.ctpop %263 : i16
        scf.yield %297 : index
      }
      case 3 {
        %c6332_i16 = arith.constant 6332 : i16
        %286 = arith.floordivsi %c1636041013_i32, %c1636041013_i32 : i32
        %287 = arith.subi %c17411_i16, %c-19590_i16 : i16
        %288 = math.ctlz %4 : tensor<9xi32>
        %289 = tensor.empty() : tensor<3x9xi16>
        %290 = tensor.empty() : tensor<27x9xi16>
        %291 = linalg.matmul ins(%collapsed_48, %289 : tensor<27x3xi16>, tensor<3x9xi16>) outs(%290 : tensor<27x9xi16>) -> tensor<27x9xi16>
        %292 = math.copysign %cst_1, %cst_0 : f16
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %36, %36, %cst_0 : vector<1xf16>, vector<1xf16> into f16
        %294 = vector.flat_transpose %259 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %295 = arith.minsi %c709515696_i64, %c709515696_i64 : i64
        %296 = vector.shuffle %36, %35 [0] : vector<1xf16>, vector<1xf16>
        %297 = math.atan %3 : tensor<9xf16>
        %298 = vector.broadcast %cst_3 : f16 to vector<f16>
        %299 = vector.transfer_write %298, %15[%29, %62, %c12] : vector<f16>, tensor<3x9x3xf16>
        %collapsed_50 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<3x9x3xf16> into tensor<27x3xf16>
        %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
        %300 = arith.minsi %c1005151537_i32, %c1005151537_i32 : i32
        %301 = math.floor %expanded : tensor<9x1xf16>
        scf.yield %29 : index
      }
      case 4 {
        %286 = vector.load %alloc_19[%c5] : memref<9xf16>, vector<13xf16>
        %alloc_50 = memref.alloc() : memref<13xi1>
        memref.copy %alloc_5, %alloc_50 : memref<13xi1> to memref<13xi1>
        %287 = math.copysign %12, %12 : tensor<9xf32>
        %288 = math.expm1 %8 : tensor<13xf32>
        %289 = arith.maxf %cst_0, %cst_3 : f16
        %290 = bufferization.clone %alloc : memref<9xi1> to memref<9xi1>
        %291 = math.ipowi %17, %14 : tensor<3x9x3xi32>
        memref.store %true, %alloc_8[%c0, %c1, %c0] : memref<3x9x3xi1>
        %292 = index.maxu %c4, %270
        %293 = bufferization.clone %alloc_8 : memref<3x9x3xi1> to memref<3x9x3xi1>
        %expanded = tensor.expand_shape %52 [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
        %294 = vector.broadcast %false : i1 to vector<3xi1>
        %295 = vector.maskedload %293[%c2, %c3, %c1], %294, %294 : memref<3x9x3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        bufferization.dealloc_tensor %5 : tensor<9xi1>
        %296 = memref.load %alloc_15[%c5] : memref<9xi64>
        %297 = vector.insertelement %true_4, %260[%278 : index] : vector<4xi1>
        %298 = math.exp %cst_0 : f16
        scf.yield %c7 : index
      }
      default {
        %286 = vector.broadcast %cst_3 : f16 to vector<f16>
        vector.transfer_write %286, %alloc_17[%62] : vector<f16>, memref<9xf16>
        %287 = index.maxs %44, %44
        %288 = arith.muli %false, %true_4 : i1
        %inserted_50 = tensor.insert %c1636041013_i32 into %271[%c7] : tensor<13xi32>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %289 = vector.transfer_read %8[%c4], %cst_51 : tensor<13xf32>, vector<f32>
        %290 = arith.minui %263, %c17411_i16 : i16
        %291 = arith.negf %cst_3 : f16
        %292 = index.ceildivs %c14, %c5
        %293 = math.exp %8 : tensor<13xf32>
        %true_52 = index.bool.constant true
        %294 = vector.flat_transpose %35 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %295 = vector.multi_reduction <minui>, %260, %260 [] : vector<4xi1> to vector<4xi1>
        %296 = math.floor %52 : tensor<9xf32>
        %297 = math.copysign %3, %from_elements : tensor<9xf16>
        %298 = arith.floordivsi %c887830254_i32, %c887830254_i32 : i32
        %299 = tensor.empty(%c4) : tensor<?xi32>
        scf.yield %44 : index
      }
      %alloc_49 = memref.alloc() : memref<9x3x3xi32>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49, %4 : memref<9x3x3xi32>, tensor<9xi32>) outs(%16 : tensor<3x9x3xi32>) {
      ^bb0(%in_50: i32, %in_51: i32, %out_52: i32):
        %286 = math.tanh %cst_3 : f16
        %287 = arith.muli %c17411_i16, %c26906_i16 : i16
        %288 = arith.divf %cst, %in_45 : f32
        %289 = vector.broadcast %cst : f32 to vector<f32>
        %290 = vector.transfer_write %289, %52[%274] : vector<f32>, tensor<9xf32>
        %291 = math.exp %out : f32
        %292 = math.atan2 %cst, %out : f32
        %293 = math.ceil %cst_3 : f16
        %294 = memref.realloc %alloc_7 : memref<9xi64> to memref<9xi64>
        %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
        %295 = vector.create_mask %c8 : vector<9xi1>
        %296 = bufferization.clone %alloc_6 : memref<9xf16> to memref<9xf16>
        %297 = math.ceil %6 : tensor<13xf32>
        %298 = vector.bitcast %260 : vector<4xi1> to vector<4xi1>
        %alloc_53 = memref.alloc() : memref<1x9xi64>
        %299 = tensor.empty() : tensor<9x9xi64>
        %300 = linalg.matmul ins(%expanded, %alloc_53 : tensor<9x1xi64>, memref<1x9xi64>) outs(%299 : tensor<9x9xi64>) -> tensor<9x9xi64>
        %301 = math.log10 %cst : f32
        %302 = math.round %cst : f32
        %303 = affine.min affine_map<(d0, d1, d2) -> (-((d0 + d2) ceildiv 16))>(%c14, %c1, %c13)
        %304 = arith.divsi %c1005151537_i32, %out_52 : i32
        %305 = vector.create_mask %278 : vector<9xi1>
        %306 = arith.shrsi %c1005151537_i32, %c887830254_i32 : i32
        %307 = memref.load %alloc_18[%c6] : memref<9xf16>
        %cast_54 = tensor.cast %6 : tensor<13xf32> to tensor<?xf32>
        %308 = bufferization.to_tensor %alloc_6 : memref<9xf16>
        %rank_55 = tensor.rank %4 : tensor<9xi32>
        %309 = vector.broadcast %in_51 : i32 to vector<13xi32>
        %310 = vector.reduction <or>, %305 : vector<9xi1> into i1
        %311 = math.round %8 : tensor<13xf32>
        %312 = bufferization.to_tensor %alloc : memref<9xi1>
        %rank_56 = tensor.rank %expanded : tensor<9x1xi64>
        %313 = vector.broadcast %in_51 : i32 to vector<3x9x3xi32>
        %314 = vector.gather %alloc[%c5] [%313], %27, %27 : memref<9xi1>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xi1> into vector<3x9x3xi1>
        %315 = arith.floordivsi %in_51, %c1005151537_i32 : i32
        %316 = arith.maxsi %c17411_i16, %c26906_i16 : i16
        linalg.yield %in_51 : i32
      } -> tensor<3x9x3xi32>
      linalg.yield %cst_2 : f32
    } -> tensor<3x9x3xf32>
    %alloca = memref.alloca() : memref<3x9x3xf16>
    %67 = vector.load %alloc_20[%c5] : memref<9xf16>, vector<3x9x3xf16>
    %68 = index.castu %c887830254_i32 : i32 to index
    %extracted = tensor.extract %1[%c2] : tensor<9xi16>
    %69 = affine.if affine_set<(d0, d1) : (-(d0 * 2 - d0 ceildiv 32) - 64 == 0, d0 - 8 >= 0, -(d0 * 2 - d0 ceildiv 32) - 64 == 0)>(%c14, %c2) -> memref<13xf16> {
      memref.tensor_store %4, %alloc_16 : memref<9xi32>
      %257 = arith.shrsi %c709515696_i64, %c709515696_i64 : i64
      %258 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %259 = vector.fma %258, %258, %258 : vector<9xf32>
      %260 = scf.while (%arg3 = %57) : (vector<9xf16>) -> vector<9xf16> {
        %264 = math.tan %cst_1 : f16
        %265 = bufferization.clone %alloc_14 : memref<9xf32> to memref<9xf32>
        %alloca_46 = memref.alloca() : memref<9xi32>
        %266 = index.add %29, %45
        %267 = math.fma %15, %15, %15 : tensor<3x9x3xf16>
        %268 = math.atan2 %3, %3 : tensor<9xf16>
        %269 = tensor.empty() : tensor<13x9xi16>
        %270 = tensor.empty() : tensor<9x4xi16>
        %271 = tensor.empty() : tensor<13x4xi16>
        %272 = linalg.matmul ins(%269, %270 : tensor<13x9xi16>, tensor<9x4xi16>) outs(%271 : tensor<13x4xi16>) -> tensor<13x4xi16>
        %273 = affine.min affine_map<(d0, d1) -> (0, d1, d0, 0)>(%c5, %45)
        scf.condition(%false) %55 : vector<9xf16>
      } do {
      ^bb0(%arg3: vector<9xf16>):
        %264 = tensor.empty() : tensor<9xi32>
        %265 = arith.divui %c17411_i16, %c17411_i16 : i16
        %266 = vector.broadcast %c887830254_i32 : i32 to vector<9xi32>
        %267 = arith.shrsi %extracted, %c17411_i16 : i16
        %268 = index.divs %c13, %c8
        %269 = arith.minui %false, %true : i1
        %270 = math.atan %cst_0 : f16
        %271 = arith.shrsi %c887830254_i32, %c887830254_i32 : i32
        %272 = vector.reduction <maxf>, %258 : vector<9xf32> into f32
        %273 = index.add %c5, %268
        %274 = math.ipowi %14, %16 : tensor<3x9x3xi32>
        %275 = affine.max affine_map<(d0, d1) -> (d0 floordiv 16 - (d0 + (d0 floordiv 16) ceildiv 32) ceildiv 2, d0 floordiv 16 - (d0 + (d0 floordiv 16) ceildiv 32) ceildiv 2, (d0 - 4) * 64, d0)>(%c9, %68)
        %276 = index.maxu %44, %c10
        %277 = math.atan %8 : tensor<13xf32>
        %278 = arith.cmpf false, %cst, %cst_2 : f32
        %279 = math.copysign %9, %9 : tensor<3x9x3xf32>
        scf.yield %55 : vector<9xf16>
      }
      %from_elements_45 = tensor.from_elements %cst, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst : tensor<9xf32>
      %261 = math.fma %12, %52, %from_elements_45 : tensor<9xf32>
      %262 = index.maxu %45, %c13
      %263 = vector.broadcast %true_4 : i1 to vector<9xi1>
      affine.yield %alloc_10 : memref<13xf16>
    } else {
      %257 = index.mul %c11, %c2
      %258 = math.copysign %3, %3 : tensor<9xf16>
      %259 = vector.matrix_multiply %36, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xf16>, vector<3xf16>) -> vector<3xf16>
      %260 = math.exp %12 : tensor<9xf32>
      %261 = arith.mulf %cst_1, %cst_3 : f16
      %splat_45 = tensor.splat %c-19590_i16 : tensor<3x9x3xi16>
      %262 = vector.matrix_multiply %259, %36 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<1xf16>) -> vector<3xf16>
      %263 = bufferization.clone %alloc_10 : memref<13xf16> to memref<13xf16>
      affine.yield %alloc_10 : memref<13xf16>
    }
    %70 = bufferization.clone %alloc_17 : memref<9xf16> to memref<9xf16>
    %71 = arith.negf %cst_1 : f16
    %72 = index.sub %c8, %c7
    %73 = math.copysign %6, %6 : tensor<13xf32>
    %from_elements_26 = tensor.from_elements %c1005151537_i32, %c887830254_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1005151537_i32, %c1636041013_i32, %c1005151537_i32, %c887830254_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c887830254_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c887830254_i32, %c887830254_i32, %c887830254_i32, %c887830254_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c887830254_i32, %c887830254_i32, %c1005151537_i32, %c887830254_i32, %c1005151537_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c1005151537_i32, %c887830254_i32, %c887830254_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c887830254_i32 : tensor<3x9x3xi32>
    %74 = vector.broadcast %c17411_i16 : i16 to vector<9xi16>
    %75 = memref.load %alloc_11[%c7] : memref<9xi1>
    %76 = arith.mulf %cst_1, %cst_3 : f16
    %77 = index.add %68, %49
    %78 = math.tan %cst_1 : f16
    %rank = tensor.rank %3 : tensor<9xf16>
    %79 = math.log2 %cst_3 : f16
    %80 = math.exp2 %15 : tensor<3x9x3xf16>
    %81 = arith.divsi %c709515696_i64, %c709515696_i64 : i64
    %82 = index.maxu %c9, %62
    %83 = index.castu %62 : index to i32
    %84 = vector.broadcast %cst_2 : f32 to vector<13xf32>
    %85 = vector.fma %84, %84, %84 : vector<13xf32>
    %from_elements_27 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
    %86 = scf.execute_region -> tensor<9xi32> {
      %257 = index.add %c12, %62
      %258 = arith.floordivsi %extracted, %c17411_i16 : i16
      %259 = arith.maxsi %c-19590_i16, %c26906_i16 : i16
      %260 = math.round %8 : tensor<13xf32>
      %261 = vector.broadcast %c1005151537_i32 : i32 to vector<i32>
      %262 = vector.transfer_write %261, %4[%c8] : vector<i32>, tensor<9xi32>
      %alloca_45 = memref.alloca() : memref<9xi16>
      %263 = index.castu %82 : index to i32
      %inserted_46 = tensor.insert %true_4 into %5[%c6] : tensor<9xi1>
      %264 = math.log2 %19 : tensor<9xf16>
      %265 = arith.minui %c1005151537_i32, %c1636041013_i32 : i32
      %266 = math.log1p %9 : tensor<3x9x3xf32>
      %267 = arith.maxf %cst_2, %cst_2 : f32
      %268 = index.ceildivs %rank, %c4
      %269 = math.atan2 %19, %from_elements : tensor<9xf16>
      %270 = math.exp %8 : tensor<13xf32>
      %271 = vector.bitcast %61 : vector<9xi64> to vector<9xi64>
      scf.yield %4 : tensor<9xi32>
    }
    %87 = math.rsqrt %9 : tensor<3x9x3xf32>
    %88 = scf.while (%arg3 = %alloc) : (memref<9xi1>) -> memref<9xi1> {
      %257 = arith.divsi %c1636041013_i32, %c1636041013_i32 : i32
      %inserted_45 = tensor.insert %c1636041013_i32 into %16[%c0, %c5, %c0] : tensor<3x9x3xi32>
      %258 = arith.divf %cst_1, %cst_0 : f16
      %259 = memref.alloca_scope  -> (i16) {
        %263 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        %264 = arith.muli %c709515696_i64, %c709515696_i64 : i64
        %265 = arith.addf %cst_0, %cst_0 : f16
        %266 = arith.mulf %cst, %cst : f32
        %splat_47 = tensor.splat %cst_3 : tensor<3x9x3xf16>
        %267 = affine.min affine_map<(d0, d1, d2) -> (-d2 - (-d2 - 2) + 4, -d2)>(%68, %26, %68)
        %268 = math.ceil %9 : tensor<3x9x3xf32>
        %269 = vector.broadcast %68 : index to vector<13xindex>
        %270 = vector.broadcast %true_4 : i1 to vector<13xi1>
        %271 = vector.broadcast %c709515696_i64 : i64 to vector<13xi64>
        vector.scatter %46[%c2] [%269], %270, %271 : memref<13xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %272 = index.mul %c8, %c2
        %273 = vector.broadcast %cst_0 : f16 to vector<9x3xf16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %18, %67, %273 : vector<3xf16>, vector<3x9x3xf16> into vector<9x3xf16>
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d3) floordiv 8)>(%72, %c10, %c8, %c8)
        %cast_48 = tensor.cast %4 : tensor<9xi32> to tensor<?xi32>
        %c1122856641_i64 = arith.constant 1122856641 : i64
        %276 = index.mul %c5, %82
        %277 = affine.min affine_map<(d0) -> (0, 0, 0)>(%c14)
        %278 = math.cttz %from_elements_25 : tensor<9xi64>
        %279 = math.log1p %21 : tensor<f16>
        %280 = index.maxu %c0, %c15
        %281 = vector.maskedload %alloc_18[%c2], %56, %55 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %282 = index.maxu %77, %77
        %283 = arith.divui %true_4, %false : i1
        %c0_i32_49 = arith.constant 0 : i32
        %284 = vector.transfer_read %14[%44, %275, %44], %c0_i32_49 : tensor<3x9x3xi32>, vector<3x4xi32>
        %285 = vector.create_mask %c6, %280, %72 : vector<3x9x3xi1>
        %from_elements_50 = tensor.from_elements %true_4, %true, %true, %true, %false, %true_4, %true_4, %true, %true_4, %true_4, %true_4, %true_4, %true : tensor<13xi1>
        %rank_51 = tensor.rank %12 : tensor<9xf32>
        %cast_52 = tensor.cast %52 : tensor<9xf32> to tensor<?xf32>
        %286 = arith.minsi %c0_i32_49, %c0_i32_49 : i32
        %287 = arith.remf %cst_3, %cst_0 : f16
        %288 = vector.broadcast %cst_1 : f16 to vector<9x3xf16>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %67, %18, %288 : vector<3x9x3xf16>, vector<3xf16> into vector<9x3xf16>
        %290 = arith.addi %c1636041013_i32, %c0_i32_49 : i32
        %291 = math.atan2 %9, %9 : tensor<3x9x3xf32>
        %292 = arith.addf %cst_1, %cst_1 : f16
        memref.alloca_scope.return %extracted : i16
      }
      %260 = math.atan %8 : tensor<13xf32>
      %261 = arith.floordivsi %c887830254_i32, %c1005151537_i32 : i32
      %from_elements_46 = tensor.from_elements %false, %true, %true, %false, %true_4, %true_4, %true_4, %true_4, %true, %false, %true, %true, %true : tensor<13xi1>
      %262 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 64)>(%c5, %c12, %45)
      scf.condition(%true_4) %alloc : memref<9xi1>
    } do {
    ^bb0(%arg3: memref<9xi1>):
      %257 = vector.load %alloc_12[%c3] : memref<13xi64>, vector<9xi64>
      %258 = scf.while (%arg4 = %alloc) : (memref<9xi1>) -> memref<9xi1> {
        %alloc_46 = memref.alloc() : memref<3x9x3xi1>
        memref.copy %alloc_8, %alloc_46 : memref<3x9x3xi1> to memref<3x9x3xi1>
        %274 = vector.bitcast %56 : vector<9xi1> to vector<9xi1>
        %275 = arith.muli %extracted, %c-32218_i16 : i16
        %276 = vector.load %alloc_10[%c7] : memref<13xf16>, vector<9xf16>
        %277 = arith.minsi %c26906_i16, %extracted : i16
        %278 = arith.maxsi %true_4, %true_4 : i1
        %279 = index.ceildivs %29, %c9
        %cst_47 = arith.constant 1.000000e+00 : f32
        %280 = vector.transfer_read %12[%29], %cst_47 : tensor<9xf32>, vector<f32>
        scf.condition(%true_4) %alloc : memref<9xi1>
      } do {
      ^bb0(%arg4: memref<9xi1>):
        %274 = math.atan2 %6, %6 : tensor<13xf32>
        %275 = math.ipowi %c1005151537_i32, %c1636041013_i32 : i32
        %276 = bufferization.clone %alloc_9 : memref<13xi32> to memref<13xi32>
        %alloc_46 = memref.alloc() : memref<f16>
        memref.tensor_store %21, %alloc_46 : memref<f16>
        %277 = index.floordivs %77, %rank
        %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<9xi32> into tensor<9x1xi32>
        %278 = math.powf %3, %from_elements : tensor<9xf16>
        %279 = math.log %9 : tensor<3x9x3xf32>
        %280 = math.round %12 : tensor<9xf32>
        %281 = math.atan2 %cst_0, %cst_3 : f16
        %282 = math.log10 %20 : tensor<f16>
        %283 = index.maxu %c9, %c15
        %cast_47 = tensor.cast %21 : tensor<f16> to tensor<f16>
        %284 = affine.min affine_map<(d0, d1, d2) -> (-d0, (-d0) ceildiv 16, (-d0) ceildiv 16)>(%c10, %72, %c8)
        %alloc_48 = memref.alloc() : memref<9xi32>
        memref.copy %alloc_16, %alloc_48 : memref<9xi32> to memref<9xi32>
        %285 = arith.divf %cst_0, %cst_3 : f16
        scf.yield %arg3 : memref<9xi1>
      }
      %259 = vector.flat_transpose %60 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
      %260 = arith.ori %c17411_i16, %c-19590_i16 : i16
      %261 = vector.broadcast %cst : f32 to vector<9xf32>
      %262 = vector.fma %261, %261, %261 : vector<9xf32>
      %263 = math.tan %6 : tensor<13xf32>
      %264 = arith.cmpf ugt, %cst, %cst : f32
      %265 = affine.for %arg4 = 0 to 68 iter_args(%arg5 = %10) -> (tensor<13xi32>) {
        affine.yield %10 : tensor<13xi32>
      }
      %alloc_45 = memref.alloc() : memref<3x4xi32>
      %266 = tensor.empty() : tensor<4x3xi32>
      %267 = tensor.empty() : tensor<3x3xi32>
      %268 = linalg.matmul ins(%alloc_45, %266 : memref<3x4xi32>, tensor<4x3xi32>) outs(%267 : tensor<3x3xi32>) -> tensor<3x3xi32>
      %269 = vector.insert %cst_2, %84 [8] : f32 into vector<13xf32>
      %270 = arith.negf %cst : f32
      %271 = arith.remf %cst_2, %cst_2 : f32
      bufferization.dealloc_tensor %86 : tensor<9xi32>
      %272 = math.cttz %false : i1
      %273 = vector.broadcast %c709515696_i64 : i64 to vector<i64>
      vector.transfer_write %273, %alloc_12[%c2] : vector<i64>, memref<13xi64>
      scf.execute_region {
        %274 = arith.maxsi %true, %true : i1
        %275 = affine.max affine_map<(d0, d1) -> (d0 - 32, (d0 + 16) * -4 - 64, d0 mod 32)>(%c1, %77)
        %276 = vector.create_mask %c1 : vector<9xi1>
        %277 = math.exp %6 : tensor<13xf32>
        %278 = math.copysign %6, %8 : tensor<13xf32>
        %cast_46 = tensor.cast %0 : tensor<9xi64> to tensor<?xi64>
        %collapsed_47 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x9x3xi16> into tensor<27x3xi16>
        %279 = arith.minui %c-32218_i16, %extracted : i16
        %280 = math.log10 %15 : tensor<3x9x3xf16>
        %281 = arith.maxf %cst_0, %cst_0 : f16
        %282 = math.round %3 : tensor<9xf16>
        %283 = vector.flat_transpose %60 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %284 = vector.bitcast %55 : vector<9xf16> to vector<9xf16>
        %false_48 = arith.constant false
        %285 = vector.broadcast %c1636041013_i32 : i32 to vector<3xi32>
        %286 = vector.broadcast %false : i1 to vector<3xi1>
        %287 = vector.maskedload %alloc_16[%c8], %286, %285 : memref<9xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %inserted_49 = tensor.insert %extracted into %13[%c7] : tensor<9xi16>
        scf.yield
      }
      scf.yield %alloc : memref<9xi1>
    }
    %89 = bufferization.to_memref %1 : memref<9xi16>
    %90 = affine.min affine_map<(d0, d1) -> (d1 + d0 + d0 mod 4, ((d1 + d0) floordiv 2 + d1 + d0 + d0 mod 4) floordiv 2, (d1 + d0) floordiv 2 + d1 + d0 + d0 mod 4)>(%77, %c1)
    %91 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4 + d0, d2 floordiv 128, d2 floordiv 128, 0)>(%c15, %82, %c8, %c3)
    %from_elements_28 = tensor.from_elements %true_4, %false, %false, %false, %true_4, %true, %true, %true, %true_4, %false, %true, %true, %true : tensor<13xi1>
    %92 = arith.maxf %cst_3, %cst_0 : f16
    %93 = index.sub %c9, %91
    %94 = math.atan2 %20, %20 : tensor<f16>
    %95 = affine.if affine_set<(d0, d1, d2) : (d2 == 0)>(%c2, %c3, %c7) -> f16 {
      %257 = math.tan %52 : tensor<9xf32>
      %258 = bufferization.to_tensor %alloc : memref<9xi1>
      %259 = arith.remf %cst_0, %cst_3 : f16
      %260 = affine.if affine_set<(d0, d1, d2) : (d0 + -d0 - d1 >= 0, d0 * 128 == 0, d2 + d1 >= 0)>(%c4, %c4, %c3) -> i1 {
        %264 = math.atan %6 : tensor<13xf32>
        %265 = arith.divui %c26906_i16, %c-19590_i16 : i16
        %266 = vector.load %alloc_8[%c0, %c1, %c0] : memref<3x9x3xi1>, vector<9xi1>
        %267 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %268 = vector.fma %267, %267, %267 : vector<9xf32>
        %269 = index.add %26, %44
        %270 = math.fma %cst_0, %cst_1, %cst_3 : f16
        %from_elements_46 = tensor.from_elements %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %c1636041013_i32 : tensor<9xi32>
        %271 = arith.negf %cst_0 : f16
        affine.yield %false : i1
      } else {
        %264 = vector.load %alloc_20[%c2] : memref<9xf16>, vector<9xf16>
        %265 = vector.create_mask %77 : vector<9xi1>
        %266 = vector.load %alloc_16[%c6] : memref<9xi32>, vector<9xi32>
        %267 = vector.bitcast %67 : vector<3x9x3xf16> to vector<3x9x3xf16>
        %268 = affine.max affine_map<(d0, d1) -> (-d1, d1 + 17, d1 + (d1 + 4) * 32 - (d1 - 16))>(%c15, %45)
        %269 = vector.broadcast %false : i1 to vector<i1>
        %270 = vector.transfer_write %269, %11[%44] : vector<i1>, tensor<9xi1>
        %271 = math.log10 %52 : tensor<9xf32>
        %272 = vector.matrix_multiply %264, %55 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
        affine.yield %false : i1
      }
      scf.index_switch %72 
      case 1 {
        %264 = arith.remf %cst_2, %cst : f32
        %265 = tensor.empty(%c3) : tensor<?xi32>
        %266 = memref.realloc %alloc_16 : memref<9xi32> to memref<13xi32>
        %267 = arith.divf %cst_3, %cst_0 : f16
        %268 = arith.negf %cst_1 : f16
        %269 = vector.multi_reduction <maxf>, %67, %67 [] : vector<3x9x3xf16> to vector<3x9x3xf16>
        %270 = arith.negf %cst_0 : f16
        %271 = vector.broadcast %c-19590_i16 : i16 to vector<9xi16>
        %272 = arith.mulf %cst_3, %cst_3 : f16
        %273 = vector.transpose %36, [0] : vector<1xf16> to vector<1xf16>
        %274 = memref.atomic_rmw addf %cst_3, %70[%c5] : (f16, memref<9xf16>) -> f16
        %275 = math.fma %6, %8, %8 : tensor<13xf32>
        %276 = vector.reduction <add>, %55 : vector<9xf16> into f16
        %277 = memref.atomic_rmw minf %cst_2, %alloc_14[%c1] : (f32, memref<9xf32>) -> f32
        %from_elements_46 = tensor.from_elements %c-32218_i16, %extracted, %c26906_i16, %c17411_i16, %c26906_i16, %c-32218_i16, %c-32218_i16, %c-32218_i16, %c17411_i16, %c-19590_i16, %c26906_i16, %c-19590_i16, %c-19590_i16, %c26906_i16, %extracted, %c-32218_i16, %c-32218_i16, %c-19590_i16, %c17411_i16, %c26906_i16, %c26906_i16, %c-19590_i16, %c17411_i16, %c-19590_i16, %c-19590_i16, %c17411_i16, %extracted, %c-32218_i16, %c26906_i16, %c-19590_i16, %c17411_i16, %c-19590_i16, %c-32218_i16, %c26906_i16, %c-32218_i16, %c17411_i16, %c-19590_i16, %c-32218_i16, %c-19590_i16, %c-32218_i16, %c17411_i16, %c17411_i16, %c-32218_i16, %c17411_i16, %c26906_i16, %c-19590_i16, %c-32218_i16, %c-19590_i16, %c26906_i16, %c17411_i16, %c-32218_i16, %c26906_i16, %c26906_i16, %c-19590_i16, %c26906_i16, %c-32218_i16, %c17411_i16, %c-19590_i16, %c-32218_i16, %c-19590_i16, %c26906_i16, %c17411_i16, %c-19590_i16, %c-32218_i16, %extracted, %c-19590_i16, %c-32218_i16, %extracted, %c-32218_i16, %extracted, %c26906_i16, %extracted, %c26906_i16, %c17411_i16, %c17411_i16, %c-19590_i16, %c-19590_i16, %c-19590_i16, %c17411_i16, %c-19590_i16, %c26906_i16 : tensor<3x9x3xi16>
        %cst_47 = arith.constant 1.5864151E+9 : f32
        scf.yield
      }
      default {
        %264 = arith.minsi %c1636041013_i32, %c1005151537_i32 : i32
        %265 = memref.load %alloc_18[%c7] : memref<9xf16>
        %266 = vector.extract_strided_slice %60 {offsets = [5], sizes = [2], strides = [1]} : vector<9xi64> to vector<2xi64>
        %267 = index.mul %91, %93
        %268 = arith.cmpf one, %cst_0, %cst_1 : f16
        %269 = index.sub %62, %c10
        %270 = arith.remsi %c1636041013_i32, %c887830254_i32 : i32
        %271 = arith.shli %extracted, %c26906_i16 : i16
        %272 = math.fma %3, %3, %from_elements : tensor<9xf16>
        %273 = vector.broadcast %false : i1 to vector<13xi1>
        %274 = vector.broadcast %c887830254_i32 : i32 to vector<13xi32>
        %275 = vector.gather %9[%77, %45, %c15] [%274], %273, %85 : tensor<3x9x3xf32>, vector<13xi32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %276 = index.add %c8, %c13
        %277 = tensor.empty() : tensor<4x13xi32>
        %alloc_46 = memref.alloc() : memref<13x3xi32>
        %278 = tensor.empty() : tensor<4x3xi32>
        %279 = linalg.matmul ins(%277, %alloc_46 : tensor<4x13xi32>, memref<13x3xi32>) outs(%278 : tensor<4x3xi32>) -> tensor<4x3xi32>
        %280 = arith.ceildivsi %c-19590_i16, %extracted : i16
        %true_47 = arith.constant true
        %281 = math.copysign %cst, %cst : f32
        %282 = index.floordivs %c14, %c11
      }
      %cst_45 = arith.constant 1.000000e+00 : f32
      %261 = vector.transfer_read %9[%c8, %c12, %c10], %cst_45 : tensor<3x9x3xf32>, vector<3x4xf32>
      %262 = arith.addf %cst_3, %cst_3 : f16
      %263 = math.atan %20 : tensor<f16>
      affine.yield %cst_1 : f16
    } else {
      %257 = vector.transpose %57, [0] : vector<9xf16> to vector<9xf16>
      %258 = arith.muli %extracted, %c17411_i16 : i16
      %259 = vector.broadcast %c1005151537_i32 : i32 to vector<i32>
      %260 = vector.transfer_write %259, %10[%45] : vector<i32>, tensor<13xi32>
      %261 = arith.negf %cst_0 : f16
      %262 = arith.remsi %c1636041013_i32, %c1636041013_i32 : i32
      %263 = arith.mulf %cst_1, %cst_1 : f16
      %264 = math.log1p %cst_1 : f16
      %265 = math.exp %9 : tensor<3x9x3xf32>
      affine.yield %cst_0 : f16
    }
    %c0_i32 = arith.constant 0 : i32
    %96 = vector.transfer_read %4[%93], %c0_i32 : tensor<9xi32>, vector<i32>
    %97 = vector.transpose %84, [0] : vector<13xf32> to vector<13xf32>
    %98 = arith.remsi %true, %true : i1
    bufferization.dealloc_tensor %4 : tensor<9xi32>
    %99 = vector.multi_reduction <add>, %57, %cst_3 [0] : vector<9xf16> to f16
    %inserted = tensor.insert %c1005151537_i32 into %17[%c0, %c6, %c0] : tensor<3x9x3xi32>
    %100 = arith.minui %c0_i32, %c0_i32 : i32
    %101 = tensor.empty() : tensor<3x3xi64>
    %102 = tensor.empty() : tensor<3x3xi64>
    %103 = linalg.matmul ins(%101, %101 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%102 : tensor<3x3xi64>) -> tensor<3x3xi64>
    %104 = math.cttz %c17411_i16 : i16
    %from_elements_29 = tensor.from_elements %true_4, %true, %false, %false, %false, %true, %true, %false, %false : tensor<9xi1>
    %105 = vector.create_mask %c7, %c0, %c2 : vector<3x9x3xi1>
    %106 = math.round %21 : tensor<f16>
    %107 = memref.alloca_scope  -> (i32) {
      %257 = arith.maxf %cst_2, %cst_2 : f32
      %cst_45 = arith.constant 1.993600e+04 : f16
      %258 = vector.matrix_multiply %61, %61 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
      %259 = vector.shuffle %57, %55 [0, 2, 7, 11, 12, 13, 15, 16, 17] : vector<9xf16>, vector<9xf16>
      %260 = arith.minui %c709515696_i64, %c709515696_i64 : i64
      %261 = math.round %9 : tensor<3x9x3xf32>
      %262 = vector.broadcast %cst : f32 to vector<9xf32>
      %263 = vector.fma %262, %262, %262 : vector<9xf32>
      %264 = math.absf %19 : tensor<9xf16>
      %265 = arith.mulf %cst_1, %99 : f16
      %266 = vector.broadcast %true : i1 to vector<3x3xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %27, %56, %266 : vector<3x9x3xi1>, vector<9xi1> into vector<3x3xi1>
      %268 = affine.for %arg3 = 0 to 10 iter_args(%arg4 = %258) -> (vector<1xi64>) {
        affine.yield %258 : vector<1xi64>
      }
      %269 = math.atan2 %99, %cst_1 : f16
      %270 = arith.subi %c1005151537_i32, %c0_i32 : i32
      %271 = vector.matrix_multiply %36, %55 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xf16>, vector<9xf16>) -> vector<9xf16>
      %272 = arith.floordivsi %c887830254_i32, %c887830254_i32 : i32
      %273 = memref.realloc %alloc_10 : memref<13xf16> to memref<3xf16>
      %274 = arith.divui %c17411_i16, %extracted : i16
      %275 = math.roundeven %12 : tensor<9xf32>
      %276 = vector.insert %cst_1, %18 [2] : f16 into vector<3xf16>
      %277 = arith.subi %extracted, %c-19590_i16 : i16
      %278 = arith.xori %c26906_i16, %c17411_i16 : i16
      %279 = bufferization.to_tensor %alloc_5 : memref<13xi1>
      %280 = vector.broadcast %true_4 : i1 to vector<3x9xi1>
      %dest_46, %accumulated_value_47 = vector.scan <minui>, %27, %280 {inclusive = true, reduction_dim = 2 : i64} : vector<3x9x3xi1>, vector<3x9xi1>
      bufferization.dealloc_tensor %5 : tensor<9xi1>
      %281 = vector.extract_strided_slice %262 {offsets = [2], sizes = [4], strides = [1]} : vector<9xf32> to vector<4xf32>
      %282 = index.divs %c4, %72
      %false_48 = arith.constant false
      %283 = vector.transfer_read %alloc_8[%91, %c5, %77], %false_48 : memref<3x9x3xi1>, vector<13xi1>
      %284 = index.sizeof
      %285 = vector.multi_reduction <maxf>, %281, %cst [0] : vector<4xf32> to f32
      %286 = arith.divui %true_4, %true_4 : i1
      %287 = affine.min affine_map<(d0, d1, d2) -> (0, 0, 0, 0)>(%44, %c4, %c9)
      %288 = arith.xori %extracted, %c17411_i16 : i16
      memref.alloca_scope.return %c0_i32 : i32
    }
    %108 = arith.addf %cst_1, %99 : f16
    %109 = math.tan %52 : tensor<9xf32>
    %alloc_30 = memref.alloc() : memref<9xi16>
    memref.copy %89, %alloc_30 : memref<9xi16> to memref<9xi16>
    %110 = arith.addf %cst_0, %cst_0 : f16
    memref.tensor_store %4, %alloc_16 : memref<9xi32>
    %c300205608_i32 = arith.constant 300205608 : i32
    %alloc_31 = memref.alloc() : memref<13xf32>
    %111 = vector.broadcast %cst_2 : f32 to vector<3x9x3xf32>
    %112 = vector.broadcast %c1005151537_i32 : i32 to vector<3x9x3xi32>
    %113 = vector.gather %alloc_31[%c14] [%112], %105, %111 : memref<13xf32>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xf32> into vector<3x9x3xf32>
    %114 = math.exp %3 : tensor<9xf16>
    %alloca_32 = memref.alloca() : memref<13xi32>
    %115 = arith.cmpf uno, %cst_2, %cst : f32
    %116 = vector.broadcast %true_4 : i1 to vector<3x3xi1>
    %117 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %105, %56, %116 : vector<3x9x3xi1>, vector<9xi1> into vector<3x3xi1>
    %from_elements_33 = tensor.from_elements %107, %c0_i32, %107, %c1005151537_i32, %c1005151537_i32, %c887830254_i32, %c1636041013_i32, %107, %c1636041013_i32, %c1005151537_i32, %c887830254_i32, %107, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c0_i32, %c887830254_i32, %c1636041013_i32, %c887830254_i32, %c1005151537_i32, %107, %c887830254_i32, %c0_i32, %c1005151537_i32, %c1636041013_i32, %c1636041013_i32, %107, %107, %c887830254_i32, %c1005151537_i32, %107, %c1005151537_i32, %c0_i32, %c0_i32, %c1636041013_i32, %c1636041013_i32, %c0_i32, %c1636041013_i32, %107, %c1005151537_i32, %c0_i32, %c1636041013_i32, %107, %c1005151537_i32, %c0_i32, %c1636041013_i32, %c0_i32, %107, %c1636041013_i32, %c1636041013_i32, %c1005151537_i32, %c0_i32, %c0_i32, %c1636041013_i32, %c0_i32, %c1005151537_i32, %c1005151537_i32, %c0_i32, %c0_i32, %c0_i32, %c887830254_i32, %107, %c1005151537_i32, %107, %c0_i32, %c1636041013_i32, %107, %c1005151537_i32, %c1005151537_i32, %c887830254_i32, %c0_i32, %c1636041013_i32, %c1636041013_i32, %c1636041013_i32, %c0_i32, %c1005151537_i32, %c1005151537_i32, %c0_i32, %107, %c887830254_i32, %c0_i32 : tensor<3x9x3xi32>
    %118 = tensor.empty() : tensor<9xf16>
    %119 = vector.transpose %85, [0] : vector<13xf32> to vector<13xf32>
    %120 = vector.shuffle %85, %85 [0, 1, 2, 3, 5, 6, 7, 11, 12, 13, 14, 16, 19, 21, 22, 24, 25] : vector<13xf32>, vector<13xf32>
    %121 = math.ceil %15 : tensor<3x9x3xf16>
    %122 = arith.maxf %99, %cst_0 : f16
    %123 = arith.remsi %c1636041013_i32, %c0_i32 : i32
    %124 = scf.while (%arg3 = %60) : (vector<9xi64>) -> vector<9xi64> {
      %257 = arith.addf %99, %cst_3 : f16
      %258 = math.exp2 %from_elements : tensor<9xf16>
      %259 = arith.shrsi %c17411_i16, %c26906_i16 : i16
      %260 = arith.xori %107, %c1005151537_i32 : i32
      %261 = math.round %cst : f32
      bufferization.dealloc_tensor %0 : tensor<9xi64>
      %262 = math.round %6 : tensor<13xf32>
      %263 = vector.broadcast %true_4 : i1 to vector<9x3xi1>
      %dest_45, %accumulated_value_46 = vector.scan <maxsi>, %27, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<3x9x3xi1>, vector<9x3xi1>
      scf.condition(%false) %60 : vector<9xi64>
    } do {
    ^bb0(%arg3: vector<9xi64>):
      %257 = tensor.empty() : tensor<9xi1>
      %258 = index.floordivs %26, %c11
      %259 = memref.load %89[%c6] : memref<9xi16>
      %true_45 = arith.constant true
      %260 = bufferization.to_memref %8 : memref<13xf32>
      %261 = arith.shli %c1005151537_i32, %107 : i32
      %262 = math.atan %9 : tensor<3x9x3xf32>
      %263 = arith.xori %c1005151537_i32, %107 : i32
      %264 = arith.divf %cst_1, %99 : f16
      %265 = vector.reduction <minf>, %36 : vector<1xf16> into f16
      %266 = arith.addi %c-32218_i16, %c-32218_i16 : i16
      %267 = arith.divf %99, %cst_0 : f16
      %268 = math.atan %from_elements : tensor<9xf16>
      %269 = arith.remsi %c26906_i16, %c-32218_i16 : i16
      %270 = vector.create_mask %82 : vector<13xi1>
      %expanded = tensor.expand_shape %102 [[0], [1, 2]] : tensor<3x3xi64> into tensor<3x3x1xi64>
      scf.yield %60 : vector<9xi64>
    }
    %125 = math.tanh %cst_3 : f16
    %126 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %61, %60, %c709515696_i64 : vector<9xi64>, vector<9xi64> into i64
    %127 = affine.max affine_map<(d0, d1, d2) -> ((-d1) ceildiv 128, (-d1) ceildiv 128, d2 floordiv 2 + d1)>(%c3, %c13, %90)
    bufferization.dealloc_tensor %16 : tensor<3x9x3xi32>
    %alloc_34 = memref.alloc() : memref<9xf32>
    memref.copy %alloc_14, %alloc_34 : memref<9xf32> to memref<9xf32>
    %128 = arith.mulf %cst, %cst : f32
    %129 = vector.bitcast %60 : vector<9xi64> to vector<9xi64>
    bufferization.dealloc_tensor %11 : tensor<9xi1>
    %130 = arith.remsi %c709515696_i64, %c709515696_i64 : i64
    %131 = affine.if affine_set<(d0, d1, d2) : (d2 == 0)>(%c10, %c11, %c15) -> i64 {
      %257 = math.exp %9 : tensor<3x9x3xf32>
      %258 = math.tan %15 : tensor<3x9x3xf16>
      %259 = arith.shrui %c1636041013_i32, %c1005151537_i32 : i32
      memref.copy %70, %alloc_20 : memref<9xf16> to memref<9xf16>
      %260 = arith.remsi %c887830254_i32, %c1005151537_i32 : i32
      %261 = math.log2 %21 : tensor<f16>
      %262 = math.roundeven %3 : tensor<9xf16>
      %263 = arith.cmpf uno, %cst_0, %cst_3 : f16
      affine.yield %c709515696_i64 : i64
    } else {
      %257 = bufferization.clone %alloc_13 : memref<13xi16> to memref<13xi16>
      %258 = arith.minsi %c1636041013_i32, %107 : i32
      %259 = math.exp %9 : tensor<3x9x3xf32>
      %260 = arith.ceildivsi %c-19590_i16, %c26906_i16 : i16
      %261 = vector.broadcast %cst_1 : f16 to vector<f16>
      %262 = vector.transfer_write %261, %19[%c7] : vector<f16>, tensor<9xf16>
      %263 = affine.max affine_map<(d0, d1) -> (d1 * 16)>(%72, %c0)
      %264 = math.ipowi %11, %5 : tensor<9xi1>
      %265 = tensor.empty() : tensor<9xi1>
      affine.yield %c709515696_i64 : i64
    }
    %collapsed = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x9x3xf32> into tensor<27x3xf32>
    %132 = index.mul %68, %26
    %133 = arith.minui %false, %true : i1
    %134 = arith.shrsi %c26906_i16, %c26906_i16 : i16
    %135 = arith.shrui %false, %true_4 : i1
    %136 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
    %137 = memref.load %alloc_18[%c7] : memref<9xf16>
    %138 = arith.divf %99, %cst_0 : f16
    %139 = math.tanh %118 : tensor<9xf16>
    %140 = tensor.empty() : tensor<9xi32>
    memref.store %true, %alloc[%c7] : memref<9xi1>
    %141 = vector.broadcast %c13 : index to vector<9xindex>
    vector.scatter %alloc[%c1] [%141], %56, %56 : memref<9xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
    %142 = tensor.empty() : tensor<9xi32>
    %143 = math.cttz %10 : tensor<13xi32>
    %144 = vector.broadcast %cst : f32 to vector<9xf32>
    %145 = vector.fma %144, %144, %144 : vector<9xf32>
    %146 = math.cttz %c0_i32 : i32
    %true_35 = arith.constant true
    %147 = vector.reduction <add>, %129 : vector<9xi64> into i64
    %148 = scf.while (%arg3 = %cst_1) : (f16) -> f16 {
      affine.for %arg4 = 0 to 41 {
      }
      %from_elements_45 = tensor.from_elements %true_4, %false, %true_4, %false, %true, %true_4, %false, %true_4, %true : tensor<9xi1>
      %257 = memref.load %alloc_13[%c11] : memref<13xi16>
      %258 = math.fma %cst_1, %cst_1, %cst_1 : f16
      %259 = memref.realloc %alloc : memref<9xi1> to memref<9xi1>
      %260 = vector.matrix_multiply %36, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xf16>, vector<9xf16>) -> vector<9xf16>
      %261 = vector.matrix_multiply %56, %56 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
      %262 = vector.splat %true_4 : vector<9xi1>
      scf.condition(%true) %99 : f16
    } do {
    ^bb0(%arg3: f16):
      %257 = arith.remf %cst_3, %cst_3 : f16
      %258 = vector.load %89[%c4] : memref<9xi16>, vector<13xi16>
      %259 = math.exp %9 : tensor<3x9x3xf32>
      %alloca_45 = memref.alloca() : memref<9xi32>
      %260 = index.sub %82, %c7
      %261 = vector.broadcast %107 : i32 to vector<3xi32>
      %262 = vector.multi_reduction <or>, %112, %261 [1, 2] : vector<3x9x3xi32> to vector<3xi32>
      %splat_46 = tensor.splat %99 : tensor<13xf16>
      %263 = vector.shuffle %85, %84 [6, 7, 9, 12, 13, 19, 20, 22, 23] : vector<13xf32>, vector<13xf32>
      %264 = arith.subi %c-32218_i16, %c-19590_i16 : i16
      %inserted_47 = tensor.insert %arg3 into %3[%c8] : tensor<9xf16>
      %265 = arith.addi %c-19590_i16, %c26906_i16 : i16
      %266 = tensor.empty() : tensor<3x9x3xf16>
      %mapped = linalg.map ins(%15 : tensor<3x9x3xf16>) outs(%266 : tensor<3x9x3xf16>)
        (%in: f16) {
          %270 = index.maxu %77, %c10
          %271 = arith.addi %c-19590_i16, %c26906_i16 : i16
          %272 = math.atan2 %cst_0, %cst_1 : f16
          %273 = math.ctpop %14 : tensor<3x9x3xi32>
          %274 = math.ctlz %c709515696_i64 : i64
          %275 = vector.reduction <add>, %84 : vector<13xf32> into f32
          %inserted_48 = tensor.insert %cst into %collapsed[%c8, %c2] : tensor<27x3xf32>
          %276 = arith.remsi %extracted, %extracted : i16
          %277 = arith.subi %true_4, %true : i1
          %278 = arith.negf %cst : f32
          %cast_49 = tensor.cast %5 : tensor<9xi1> to tensor<?xi1>
          %279 = math.ceil %266 : tensor<3x9x3xf16>
          %280 = memref.load %alloc_8[%c1, %c1, %c0] : memref<3x9x3xi1>
          %281 = math.cttz %from_elements_27 : tensor<9xi64>
          %282 = index.divs %260, %c13
          %283 = arith.muli %true_4, %false : i1
          %284 = affine.min affine_map<(d0, d1, d2, d3) -> (((-d0) mod 32) * 2, -d3)>(%c2, %c12, %260, %93)
          memref.assume_alignment %alloc_10, 8 : memref<13xf16>
          %from_elements_50 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
          %285 = index.sizeof
          %286 = index.add %c10, %c0
          %287 = arith.maxf %cst_1, %cst_0 : f16
          %288 = math.expm1 %99 : f16
          %from_elements_51 = tensor.from_elements %c-19590_i16, %c26906_i16, %extracted, %c17411_i16, %extracted, %c26906_i16, %c-32218_i16, %c-32218_i16, %extracted : tensor<9xi16>
          %from_elements_52 = tensor.from_elements %false, %false, %false, %true_4, %true_4, %false, %true_4, %false, %true, %false, %true, %false, %true : tensor<13xi1>
          %289 = vector.matrix_multiply %84, %145 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 9 : i32} : (vector<13xf32>, vector<9xf32>) -> vector<117xf32>
          %inserted_53 = tensor.insert %c0_i32 into %4[%c4] : tensor<9xi32>
          %290 = math.atan %cst_0 : f16
          %291 = vector.create_mask %62 : vector<9xi1>
          %292 = index.mul %72, %77
          %293 = math.ipowi %from_elements_51, %from_elements_51 : tensor<9xi16>
          %from_elements_54 = tensor.from_elements %c1636041013_i32, %c887830254_i32, %c1005151537_i32, %107, %c1636041013_i32, %c1636041013_i32, %c0_i32, %c887830254_i32, %c0_i32 : tensor<9xi32>
          %cst_55 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_55 : f16
        }
      %267 = arith.andi %107, %c1005151537_i32 : i32
      %c-11827_i16 = arith.constant -11827 : i16
      %268 = bufferization.clone %70 : memref<9xf16> to memref<9xf16>
      %269 = index.mul %c0, %c0
      scf.yield %cst_3 : f16
    }
    %149 = arith.divf %cst_1, %99 : f16
    %150 = bufferization.to_memref %collapsed : memref<27x3xf32>
    %151 = affine.min affine_map<(d0, d1) -> ((d1 - 8) ceildiv 128, d1 * 32, d1 mod 8, d1 * 32 + 8)>(%c9, %62)
    scf.index_switch %68 
    case 1 {
      %257 = index.mul %c3, %62
      %258 = vector.bitcast %18 : vector<3xf16> to vector<3xi16>
      %259 = vector.load %alloc_6[%c3] : memref<9xf16>, vector<3x9x3xf16>
      %alloca_45 = memref.alloca() : memref<13xi16>
      %260 = math.copysign %3, %3 : tensor<9xf16>
      %261 = index.ceildivs %rank, %93
      %262 = arith.remf %cst_3, %cst_3 : f16
      %263 = vector.load %70[%c6] : memref<9xf16>, vector<3x9x3xf16>
      %264 = vector.create_mask %c1, %49, %29 : vector<3x9x3xi1>
      %265 = vector.reduction <add>, %85 : vector<13xf32> into f32
      %266 = affine.min affine_map<(d0, d1, d2) -> (-(d2 - 16), d0 - (d2 - 16))>(%c13, %c2, %91)
      %267 = arith.maxf %cst_2, %cst : f32
      %from_elements_46 = tensor.from_elements %extracted, %extracted, %c26906_i16, %c26906_i16, %c-32218_i16, %c-19590_i16, %c-19590_i16, %extracted, %c-32218_i16 : tensor<9xi16>
      %268 = bufferization.clone %alloc_15 : memref<9xi64> to memref<9xi64>
      %269 = math.ceil %118 : tensor<9xf16>
      %270 = math.atan2 %cst_3, %cst_1 : f16
      scf.yield
    }
    case 2 {
      %257 = math.atan2 %99, %cst_3 : f16
      %258 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %259 = vector.fma %258, %258, %145 : vector<9xf32>
      %260 = tensor.empty() : tensor<3x3xi64>
      %261 = linalg.matmul ins(%102, %102 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%260 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %262 = arith.muli %c17411_i16, %c-32218_i16 : i16
      %263 = vector.insert %cst, %259 [5] : f32 into vector<9xf32>
      %264 = math.rsqrt %19 : tensor<9xf16>
      %265 = memref.alloca_scope  -> (i32) {
        %275 = bufferization.to_tensor %alloc_8 : memref<3x9x3xi1>
        %276 = index.ceildivs %c0, %45
        %277 = vector.load %alloc_14[%c0] : memref<9xf32>, vector<3x9x3xf32>
        %alloca_47 = memref.alloca() : memref<13xi16>
        %cst_48 = arith.constant 1.420800e+04 : f16
        %278 = vector.shuffle %277, %113 [2, 3, 5] : vector<3x9x3xf32>, vector<3x9x3xf32>
        %279 = vector.matrix_multiply %57, %57 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
        %280 = vector.matrix_multiply %145, %144 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
        %281 = arith.remf %cst, %cst_2 : f32
        %282 = vector.broadcast %99 : f16 to vector<13xf16>
        %283 = index.ceildivu %151, %91
        %284 = arith.divui %c0_i32, %107 : i32
        %from_elements_49 = tensor.from_elements %c-19590_i16, %c26906_i16, %c26906_i16, %c-32218_i16, %c17411_i16, %c26906_i16, %c-32218_i16, %c-32218_i16, %c-19590_i16 : tensor<9xi16>
        %285 = vector.multi_reduction <maxf>, %280, %280 [] : vector<1xf32> to vector<1xf32>
        %286 = bufferization.clone %alloc_21 : memref<i1> to memref<i1>
        %287 = vector.broadcast %true_4 : i1 to vector<4xi1>
        %288 = vector.maskedload %alloc_5[%c7], %287, %287 : memref<13xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %289 = arith.maxf %cst, %cst : f32
        %inserted_50 = tensor.insert %cst_3 into %118[%c2] : tensor<9xf16>
        %290 = math.log10 %cst_2 : f32
        %291 = math.log10 %cst_1 : f16
        %292 = arith.ceildivsi %extracted, %extracted : i16
        %293 = arith.ceildivsi %c-19590_i16, %c17411_i16 : i16
        %inserted_51 = tensor.insert %c887830254_i32 into %4[%c3] : tensor<9xi32>
        %extracted_52 = tensor.extract %86[%c0] : tensor<9xi32>
        %cast_53 = tensor.cast %86 : tensor<9xi32> to tensor<?xi32>
        %294 = arith.minui %extracted, %c-19590_i16 : i16
        %295 = math.log10 %3 : tensor<9xf16>
        %296 = math.tan %cst_1 : f16
        %297 = vector.broadcast %cst_3 : f16 to vector<3x9x3xf16>
        %298 = arith.minsi %true_4, %true_4 : i1
        %299 = arith.minsi %c0_i32, %107 : i32
        %300 = bufferization.clone %alloc_13 : memref<13xi16> to memref<13xi16>
        memref.alloca_scope.return %c887830254_i32 : i32
      }
      %266 = arith.negf %cst_3 : f16
      %267 = arith.addf %cst, %cst_2 : f32
      %268 = math.log2 %15 : tensor<3x9x3xf16>
      %269 = arith.minui %c26906_i16, %c17411_i16 : i16
      %alloc_45 = memref.alloc() : memref<3x9xi32>
      %270 = tensor.empty() : tensor<3x3xi32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %270 : memref<3x9xi32>, tensor<3x3xi32>) outs(%from_elements_26 : tensor<3x9x3xi32>) {
      ^bb0(%in: i32, %in_47: i32, %out: i32):
        %splat_48 = tensor.splat %c1005151537_i32 : tensor<9xi32>
        %275 = affine.max affine_map<(d0, d1, d2) -> (d2, d0 - d2 ceildiv 4 - (d1 - d2 ceildiv 4))>(%151, %c8, %c14)
        %276 = math.log2 %collapsed : tensor<27x3xf32>
        %rank_49 = tensor.rank %7 : tensor<3x9x3xi16>
        %277 = vector.matrix_multiply %56, %56 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %278 = vector.insertelement %c709515696_i64, %61[%127 : index] : vector<9xi64>
        %279 = arith.mulf %cst_3, %cst_1 : f16
        %280 = bufferization.to_memref %9 : memref<3x9x3xf32>
        %281 = tensor.empty(%127) : tensor<?xi32>
        %c19820_i16 = arith.constant 19820 : i16
        %282 = arith.remsi %out, %c1636041013_i32 : i32
        %283 = vector.broadcast %c17411_i16 : i16 to vector<i16>
        %284 = vector.transfer_write %283, %13[%127] : vector<i16>, tensor<9xi16>
        %285 = math.tanh %15 : tensor<3x9x3xf16>
        %286 = math.exp %12 : tensor<9xf32>
        %287 = math.copysign %collapsed, %collapsed : tensor<27x3xf32>
        %288 = arith.minsi %c-32218_i16, %c-32218_i16 : i16
        %289 = arith.ceildivsi %out, %in_47 : i32
        %290 = arith.divf %cst_1, %cst_1 : f16
        %291 = index.mul %c6, %c4
        %cast_50 = tensor.cast %1 : tensor<9xi16> to tensor<?xi16>
        %292 = arith.subi %c887830254_i32, %in_47 : i32
        %293 = bufferization.clone %alloc_15 : memref<9xi64> to memref<9xi64>
        %294 = math.log2 %9 : tensor<3x9x3xf32>
        %295 = vector.extract_strided_slice %258 {offsets = [5], sizes = [2], strides = [1]} : vector<9xf32> to vector<2xf32>
        %296 = math.log2 %cst_2 : f32
        %297 = index.ceildivs %rank_49, %275
        %298 = math.tan %15 : tensor<3x9x3xf16>
        %299 = vector.bitcast %74 : vector<9xi16> to vector<9xi16>
        %300 = arith.maxsi %c26906_i16, %c17411_i16 : i16
        %301 = arith.minf %cst_3, %cst_0 : f16
        %302 = vector.load %46[%c12] : memref<13xi64>, vector<3x9x3xi64>
        %303 = vector.broadcast %c709515696_i64 : i64 to vector<9x9xi64>
        %304 = vector.outerproduct %61, %60, %303 {kind = #vector.kind<xor>} : vector<9xi64>, vector<9xi64>
        linalg.yield %c1005151537_i32 : i32
      } -> tensor<3x9x3xi32>
      %inserted_46 = tensor.insert %cst_0 into %3[%c4] : tensor<9xf16>
      %272 = index.divs %c6, %45
      %273 = math.cttz %c26906_i16 : i16
      %274 = vector.extract %111[1, 6] : vector<3x9x3xf32>
      scf.yield
    }
    case 3 {
      %from_elements_45 = tensor.from_elements %c0_i32, %c887830254_i32, %c0_i32, %c0_i32, %c887830254_i32, %c1005151537_i32, %c887830254_i32, %c1005151537_i32, %c1636041013_i32 : tensor<9xi32>
      %257 = vector.create_mask %72, %c10, %91 : vector<3x9x3xi1>
      %258 = index.mul %c4, %93
      %259 = index.sub %c11, %258
      %260 = arith.negf %cst_2 : f32
      %alloc_46 = memref.alloc() : memref<13xi32>
      memref.copy %alloc_9, %alloc_46 : memref<13xi32> to memref<13xi32>
      %261 = math.cttz %from_elements_33 : tensor<3x9x3xi32>
      %alloc_47 = memref.alloc() : memref<9xi16>
      memref.copy %89, %alloc_47 : memref<9xi16> to memref<9xi16>
      %262 = affine.for %arg3 = 0 to 98 iter_args(%arg4 = %7) -> (tensor<3x9x3xi16>) {
        affine.yield %7 : tensor<3x9x3xi16>
      }
      %263 = index.maxu %29, %68
      %264 = math.ceil %52 : tensor<9xf32>
      %extracted_48 = tensor.extract %from_elements[%c4] : tensor<9xf16>
      %generated = tensor.generate %29 {
      ^bb0(%arg3: index):
        %268 = math.cttz %true : i1
        %269 = arith.subi %c-19590_i16, %c17411_i16 : i16
        %270 = vector.flat_transpose %57 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
        %alloc_49 = memref.alloc() : memref<13xf32>
        memref.copy %alloc_31, %alloc_49 : memref<13xf32> to memref<13xf32>
        tensor.yield %c887830254_i32 : i32
      } : tensor<?xi32>
      %265 = arith.floordivsi %107, %107 : i32
      %266 = vector.create_mask %c7, %259, %68 : vector<3x9x3xi1>
      %267 = vector.shuffle %129, %60 [0, 1, 2, 3, 5, 7, 8, 9, 11, 13, 14, 17] : vector<9xi64>, vector<9xi64>
      scf.yield
    }
    default {
      %extracted_45 = tensor.extract %13[%c5] : tensor<9xi16>
      %from_elements_46 = tensor.from_elements %true, %true_4, %true_4, %true, %true_4, %false, %false, %true, %false, %true_4, %true_4, %false, %true : tensor<13xi1>
      memref.alloca_scope  {
        %from_elements_51 = tensor.from_elements %99, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %99, %99, %cst_3, %cst_3, %99, %cst_3, %cst_0, %cst_3, %cst_3, %cst_1, %cst_0, %cst_3, %99, %cst_1, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %99, %cst_0, %cst_0, %cst_1, %cst_3, %99, %cst_1, %cst_1, %cst_3, %cst_0, %cst_0, %cst_1, %cst_0, %99, %cst_0, %cst_3, %cst_0, %cst_0, %99, %cst_3, %cst_3, %cst_1, %cst_1, %99, %99, %99, %cst_1, %99, %99, %cst_1, %99, %99, %cst_3, %99, %cst_3, %cst_3, %99, %99, %99, %cst_0, %cst_1, %cst_3, %99, %cst_0, %cst_0, %99, %cst_1, %cst_3, %cst_3, %cst_0, %99, %cst_0, %99, %99, %cst_3, %cst_0 : tensor<3x9x3xf16>
        %269 = vector.transpose %85, [0] : vector<13xf32> to vector<13xf32>
        %270 = math.ctpop %86 : tensor<9xi32>
        %271 = vector.matrix_multiply %35, %55 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xf16>, vector<9xf16>) -> vector<9xf16>
        %272 = vector.load %136[%c6] : memref<9xi1>, vector<13xi1>
        %273 = arith.mulf %99, %cst_1 : f16
        %274 = vector.create_mask %72 : vector<9xi1>
        %275 = index.maxu %c10, %77
        %276 = arith.remsi %extracted_45, %extracted : i16
        %alloc_52 = memref.alloc() : memref<9xi32>
        memref.copy %alloc_16, %alloc_52 : memref<9xi32> to memref<9xi32>
        %277 = memref.realloc %alloc_6 : memref<9xf16> to memref<4xf16>
        %278 = arith.shrsi %true_4, %false : i1
        %279 = arith.remf %cst_0, %cst_3 : f16
        %280 = affine.max affine_map<(d0, d1, d2) -> (0, d0 mod 16, d1, d1 + d2 - 64)>(%62, %c2, %44)
        %281 = vector.create_mask %c10 : vector<9xi1>
        %282 = math.round %19 : tensor<9xf16>
        %283 = vector.matrix_multiply %129, %60 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %284 = math.ceil %99 : f16
        %285 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %145, %113, %285 : vector<9xf32>, vector<3x9x3xf32> into vector<3x3xf32>
        %287 = vector.flat_transpose %56 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %288 = math.exp2 %cst_1 : f16
        %289 = bufferization.clone %alloc_7 : memref<9xi64> to memref<9xi64>
        %extracted_53 = tensor.extract %4[%c4] : tensor<9xi32>
        %290 = arith.andi %extracted_45, %extracted_45 : i16
        %291 = vector.broadcast %c-19590_i16 : i16 to vector<9xi16>
        %292 = math.roundeven %6 : tensor<13xf32>
        %from_elements_54 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_0, %cst_3, %99, %cst_0, %cst_1, %cst_0 : tensor<9xf16>
        %293 = arith.floordivsi %c-32218_i16, %c-32218_i16 : i16
        %294 = vector.maskedload %alloc_19[%c6], %287, %57 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        vector.print %111 : vector<3x9x3xf32>
        %295 = math.ctpop %c1005151537_i32 : i32
        %296 = math.fma %3, %from_elements, %118 : tensor<9xf16>
      }
      %257 = math.log1p %12 : tensor<9xf32>
      %258 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
      %dest_47, %accumulated_value_48 = vector.scan <maxf>, %113, %258 {inclusive = false, reduction_dim = 1 : i64} : vector<3x9x3xf32>, vector<3x3xf32>
      %cast_49 = tensor.cast %7 : tensor<3x9x3xi16> to tensor<?x?x?xi16>
      %259 = vector.broadcast %49 : index to vector<3xindex>
      %260 = vector.broadcast %true : i1 to vector<3xi1>
      vector.scatter %alloc_11[%c3] [%259], %260, %260 : memref<9xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %261 = arith.maxui %false, %true : i1
      %262 = index.mul %c4, %45
      %263 = arith.minsi %false, %true_4 : i1
      %264 = arith.maxsi %c709515696_i64, %c709515696_i64 : i64
      %265 = index.sub %c13, %90
      %266 = index.mul %68, %c12
      %267 = vector.matrix_multiply %55, %57 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
      %268 = math.fma %3, %3, %118 : tensor<9xf16>
      %inserted_50 = tensor.insert %c887830254_i32 into %86[%c6] : tensor<9xi32>
    }
    %152 = affine.load %alloc_31[%c1] : memref<13xf32>
    %153 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 64, d3 * 2)>(%c9, %72, %c14, %82)
    %154 = index.castu %c-19590_i16 : i16 to index
    %155 = arith.mulf %cst_0, %cst_0 : f16
    memref.alloca_scope  {
      %257 = arith.remsi %c1636041013_i32, %107 : i32
      %258 = affine.min affine_map<(d0, d1) -> (d0 floordiv 8 - d1, d0 + d1 - 128, d0 floordiv 8 - d1 - 32)>(%132, %29)
      %259 = math.exp2 %8 : tensor<13xf32>
      %260 = vector.broadcast %152 : f32 to vector<9xf32>
      %261 = vector.multi_reduction <add>, %113, %cst_2 [0, 1, 2] : vector<3x9x3xf32> to f32
      memref.copy %alloc_17, %alloc_18 : memref<9xf16> to memref<9xf16>
      %262 = math.ipowi %from_elements_29, %from_elements_29 : tensor<9xi1>
      %263 = bufferization.clone %alloc_31 : memref<13xf32> to memref<13xf32>
      %264 = bufferization.to_tensor %alloc_15 : memref<9xi64>
      %265 = index.mul %77, %90
      %cast_45 = tensor.cast %12 : tensor<9xf32> to tensor<?xf32>
      %266 = affine.for %arg3 = 0 to 32 iter_args(%arg4 = %132) -> (index) {
        affine.yield %c13 : index
      }
      %267 = math.round %cst_2 : f32
      %268 = math.round %8 : tensor<13xf32>
      %269 = tensor.empty() : tensor<3x9xf32>
      %270 = tensor.empty() : tensor<3x3x9xf32>
      %alloc_46 = memref.alloc() : memref<3xf32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %270, %alloc_46 : tensor<3x9xf32>, tensor<3x3x9xf32>, memref<3xf32>) outs(%9 : tensor<3x9x3xf32>) {
      ^bb0(%in: f32, %in_47: f32, %in_48: f32, %out: f32):
        %285 = math.rsqrt %261 : f32
        %alloca_49 = memref.alloca() : memref<13xi32>
        %286 = arith.xori %c1636041013_i32, %c887830254_i32 : i32
        %287 = arith.maxsi %c-32218_i16, %c-32218_i16 : i16
        %288 = arith.addf %cst_1, %cst_1 : f16
        %289 = arith.remsi %c-32218_i16, %extracted : i16
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %36, %36, %cst_3 : vector<1xf16>, vector<1xf16> into f16
        %291 = math.atan %99 : f16
        %292 = affine.min affine_map<(d0, d1) -> (d1 - d0, d1 - d0, d1 mod 4 - (d1 - d0) + 32)>(%77, %151)
        %293 = arith.ceildivsi %c0_i32, %c887830254_i32 : i32
        %294 = memref.realloc %alloc_11 : memref<9xi1> to memref<3xi1>
        %295 = vector.broadcast %261 : f32 to vector<13xf32>
        %296 = vector.fma %295, %84, %295 : vector<13xf32>
        %297 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 2 + d1 mod 2 - d2 + 12, (d1 + 8) floordiv 16)>(%c7, %77, %292, %c4)
        %rank_50 = tensor.rank %6 : tensor<13xf32>
        %298 = arith.minsi %false, %true : i1
        %alloc_51 = memref.alloc() : memref<13xi1>
        memref.copy %alloc_5, %alloc_51 : memref<13xi1> to memref<13xi1>
        %299 = math.tan %99 : f16
        %300 = arith.maxsi %extracted, %c26906_i16 : i16
        %301 = math.log10 %cst_0 : f16
        %302 = math.atan2 %52, %12 : tensor<9xf32>
        %303 = arith.divf %cst, %cst_2 : f32
        %304 = arith.remf %in_48, %in : f32
        %305 = vector.load %alloc_31[%c9] : memref<13xf32>, vector<3x9x3xf32>
        %306 = index.floordivs %258, %rank_50
        %true_52 = index.bool.constant true
        %307 = arith.remf %99, %cst_1 : f16
        %308 = arith.xori %c887830254_i32, %c1005151537_i32 : i32
        %309 = arith.subi %true, %true : i1
        %310 = vector.broadcast %c887830254_i32 : i32 to vector<9xi32>
        %311 = vector.gather %alloc_31[%c2] [%310], %56, %144 : memref<13xf32>, vector<9xi32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %312 = bufferization.to_memref %1 : memref<9xi16>
        %313 = vector.flat_transpose %295 {columns = 13 : i32, rows = 1 : i32} : vector<13xf32> -> vector<13xf32>
        %false_53 = arith.constant false
        %314 = vector.transfer_read %alloc_11[%rank], %false_53 : memref<9xi1>, vector<i1>
        linalg.yield %cst : f32
      } -> tensor<3x9x3xf32>
      %272 = arith.remf %cst, %cst_2 : f32
      affine.for %arg3 = 0 to 8 {
      }
      %273 = arith.maxsi %c-32218_i16, %c26906_i16 : i16
      %274 = math.round %118 : tensor<9xf16>
      scf.if %true {
        %285 = affine.max affine_map<(d0, d1, d2) -> (d0 - 4, d0)>(%265, %29, %c10)
        %286 = vector.reduction <minf>, %55 : vector<9xf16> into f16
        %287 = affine.max affine_map<(d0, d1, d2) -> (d1 * 32)>(%c0, %68, %285)
        %288 = bufferization.to_memref %0 : memref<9xi64>
        %289 = vector.broadcast %261 : f32 to vector<9x3xf32>
        %290 = vector.insert %289, %113 [1] : vector<9x3xf32> into vector<3x9x3xf32>
        %291 = arith.minsi %c1636041013_i32, %107 : i32
        %292 = math.atan %12 : tensor<9xf32>
        %293 = arith.xori %107, %c0_i32 : i32
      }
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<3x9x3xf32>) {
      ^bb0(%out: f32):
        %285 = affine.max affine_map<(d0, d1, d2) -> (0, d1)>(%c12, %c14, %93)
        %286 = vector.reduction <maxf>, %85 : vector<13xf32> into f32
        %287 = arith.addf %261, %261 : f32
        %288 = memref.realloc %alloc : memref<9xi1> to memref<13xi1>
        %289 = arith.muli %c0_i32, %c0_i32 : i32
        %290 = arith.maxf %cst_2, %out : f32
        %291 = index.divs %26, %c8
        %292 = math.tan %cst_2 : f32
        %293 = tensor.empty() : tensor<9xi16>
        %294 = math.fma %20, %20, %21 : tensor<f16>
        %cst_47 = arith.constant 1.000000e+00 : f32
        %295 = vector.transfer_read %8[%c9], %cst_47 : tensor<13xf32>, vector<f32>
        %296 = index.mul %49, %c3
        %297 = arith.maxsi %extracted, %c26906_i16 : i16
        %298 = vector.load %alloc_6[%c2] : memref<9xf16>, vector<9xf16>
        %299 = vector.insertelement %cst_0, %57[%93 : index] : vector<9xf16>
        %300 = vector.broadcast %44 : index to vector<9xindex>
        vector.scatter %alloc_21[] [%300], %56, %56 : memref<i1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
        %301 = math.atan %20 : tensor<f16>
        %302 = math.ipowi %16, %17 : tensor<3x9x3xi32>
        %303 = vector.broadcast %77 : index to vector<13xindex>
        %304 = vector.broadcast %true_4 : i1 to vector<13xi1>
        vector.scatter %263[%c5] [%303], %304, %85 : memref<13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %305 = vector.broadcast %out : f32 to vector<13xf32>
        %306 = vector.multi_reduction <add>, %260, %cst_47 [0] : vector<9xf32> to f32
        %307 = vector.broadcast %cst_47 : f32 to vector<13xf32>
        %308 = vector.fma %307, %305, %84 : vector<13xf32>
        %309 = math.ctpop %264 : tensor<9xi64>
        %310 = memref.realloc %alloc_13 : memref<13xi16> to memref<9xi16>
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 ceildiv 4) * 2) ceildiv 64 - 128, d0 + d2, (-d1) mod 32, d0 + d2)>(%62, %90, %c14, %c6)
        %312 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 mod 32)>(%265, %44, %c12, %153)
        %313 = math.cttz %c887830254_i32 : i32
        %314 = arith.minui %c26906_i16, %c-19590_i16 : i16
        %315 = vector.bitcast %84 : vector<13xf32> to vector<13xf32>
        %316 = math.rsqrt %9 : tensor<3x9x3xf32>
        %317 = vector.broadcast %cst_3 : f16 to vector<f16>
        %318 = vector.transfer_write %317, %3[%c6] : vector<f16>, tensor<9xf16>
        %from_elements_48 = tensor.from_elements %cst_0, %cst_3, %cst_0, %cst_0, %99, %99, %99, %99, %cst_1 : tensor<9xf16>
        linalg.yield %cst_2 : f32
      } -> tensor<3x9x3xf32>
      %276 = arith.mulf %99, %cst_3 : f16
      %277 = vector.shuffle %111, %113 [4] : vector<3x9x3xf32>, vector<3x9x3xf32>
      %278 = index.sizeof
      %279 = vector.load %150[%c10, %c2] : memref<27x3xf32>, vector<3x9x3xf32>
      %280 = math.log1p %8 : tensor<13xf32>
      memref.tensor_store %13, %89 : memref<9xi16>
      %281 = arith.shrui %true_4, %true_4 : i1
      %282 = arith.minsi %false, %false : i1
      %283 = vector.shuffle %260, %84 [0, 1, 2, 3, 4, 6, 8, 9, 13, 16, 18, 21] : vector<9xf32>, vector<13xf32>
      memref.store %261, %263[%c9] : memref<13xf32>
      %284 = math.cttz %1 : tensor<9xi16>
    }
    %156 = arith.subi %107, %c1636041013_i32 : i32
    %157 = math.log10 %52 : tensor<9xf32>
    %158 = arith.muli %true, %true : i1
    %159 = index.sub %151, %c6
    %splat = tensor.splat %c17411_i16 : tensor<9xi16>
    %160 = arith.addi %c1005151537_i32, %c1005151537_i32 : i32
    %161 = math.copysign %20, %20 : tensor<f16>
    bufferization.dealloc_tensor %2 : tensor<9xi64>
    %162 = arith.divui %extracted, %c17411_i16 : i16
    %163 = math.log10 %19 : tensor<9xf16>
    %164 = math.rsqrt %99 : f16
    %165 = vector.flat_transpose %55 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
    %166 = memref.realloc %46 : memref<13xi64> to memref<9xi64>
    %167 = arith.maxsi %true, %true : i1
    %168 = arith.divui %107, %c1636041013_i32 : i32
    %cast = tensor.cast %from_elements_33 : tensor<3x9x3xi32> to tensor<?x?x?xi32>
    %169 = vector.shuffle %111, %111 [0, 1, 2, 4, 5] : vector<3x9x3xf32>, vector<3x9x3xf32>
    %170 = arith.addf %99, %cst_3 : f16
    %171 = tensor.empty(%c3) : tensor<?x9x3xf32>
    %172 = vector.broadcast %c-19590_i16 : i16 to vector<i16>
    %173 = vector.transfer_write %172, %7[%c3, %72, %c3] : vector<i16>, tensor<3x9x3xi16>
    %174 = index.ceildivs %c15, %127
    %alloc_36 = memref.alloc() : memref<3x9xf32>
    %175 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_36, %52, %12 : memref<3x9xf32>, tensor<9xf32>, tensor<9xf32>) outs(%9 : tensor<3x9x3xf32>) {
    ^bb0(%in: f32, %in_45: f32, %in_46: f32, %out: f32):
      %257 = vector.transpose %67, [0, 2, 1] : vector<3x9x3xf16> to vector<3x3x9xf16>
      %258 = arith.maxf %99, %cst_3 : f16
      %259 = arith.shrui %c1005151537_i32, %107 : i32
      %260 = math.fma %in_45, %cst_2, %152 : f32
      %261 = vector.shuffle %67, %67 [0, 5] : vector<3x9x3xf16>, vector<3x9x3xf16>
      %262 = index.divu %93, %c10
      %263 = tensor.empty() : tensor<3x3xi64>
      %264 = linalg.matmul ins(%102, %102 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%263 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %265 = index.floordivs %127, %93
      %266 = arith.minui %c1005151537_i32, %c1636041013_i32 : i32
      %267 = index.add %c1, %44
      %268 = arith.divf %in, %in : f32
      %269 = math.copysign %9, %9 : tensor<3x9x3xf32>
      %270 = memref.realloc %alloc_10 : memref<13xf16> to memref<13xf16>
      %271 = arith.remf %99, %cst_0 : f16
      %272 = arith.maxui %c709515696_i64, %c709515696_i64 : i64
      %273 = index.floordivs %45, %265
      %274 = vector.broadcast %c1005151537_i32 : i32 to vector<13xi32>
      %275 = bufferization.clone %alloc_12 : memref<13xi64> to memref<13xi64>
      %276 = affine.if affine_set<(d0) : (d0 floordiv 32 + d0 ceildiv 128 + d0 == 0, d0 == 0)>(%c3) -> i32 {
        %289 = math.log1p %20 : tensor<f16>
        %290 = math.log1p %15 : tensor<3x9x3xf16>
        %291 = vector.flat_transpose %61 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %292 = index.maxu %265, %c9
        %293 = vector.maskedload %alloc_7[%c1], %56, %60 : memref<9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %294 = vector.load %alloc_14[%c8] : memref<9xf32>, vector<9xf32>
        %295 = arith.mulf %cst_1, %cst_3 : f16
        %296 = arith.cmpf ult, %cst_1, %cst_1 : f16
        affine.yield %c887830254_i32 : i32
      } else {
        %289 = arith.negf %cst : f32
        %290 = index.mul %c11, %c14
        %inserted_49 = tensor.insert %c887830254_i32 into %4[%c5] : tensor<9xi32>
        %291 = vector.broadcast %in : f32 to vector<13xf32>
        %292 = vector.fma %291, %291, %84 : vector<13xf32>
        %293 = vector.gather %alloc_14[%c11] [%112], %27, %113 : memref<9xf32>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xf32> into vector<3x9x3xf32>
        %294 = math.round %15 : tensor<3x9x3xf16>
        %295 = arith.remf %cst_3, %cst_1 : f16
        %296 = math.atan2 %in_45, %in_46 : f32
        affine.yield %107 : i32
      }
      %277 = memref.realloc %275 : memref<13xi64> to memref<4xi64>
      %278 = math.cttz %false : i1
      %279 = math.ipowi %263, %102 : tensor<3x3xi64>
      %280 = memref.alloca_scope  -> (memref<3x9x3xf32>) {
        %true_49 = index.bool.constant true
        %alloca_50 = memref.alloca() : memref<13xf16>
        %289 = vector.broadcast %in_45 : f32 to vector<13xf32>
        %290 = vector.fma %289, %85, %289 : vector<13xf32>
        %291 = memref.realloc %alloc_11 : memref<9xi1> to memref<3xi1>
        %292 = vector.shuffle %36, %57 [1, 2, 3, 4, 9] : vector<1xf16>, vector<9xf16>
        %293 = vector.broadcast %in_45 : f32 to vector<3x9x3xf32>
        %294 = vector.fma %293, %113, %111 : vector<3x9x3xf32>
        memref.copy %alloc_18, %alloc_19 : memref<9xf16> to memref<9xf16>
        memref.store %99, %alloc_6[%c7] : memref<9xf16>
        %295 = arith.cmpf ord, %cst_2, %152 : f32
        %296 = math.roundeven %cst_0 : f16
        %297 = arith.shli %false, %true_49 : i1
        %298 = affine.max affine_map<(d0) -> ((d0 floordiv 8 - 1) ceildiv 64, d0 floordiv 128, d0 * 128, ((d0 - 8) floordiv 128 + d0 + 128) ceildiv 64)>(%c2)
        %299 = math.log2 %6 : tensor<13xf32>
        %300 = index.ceildivs %62, %29
        %301 = vector.matrix_multiply %84, %84 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xf32>, vector<13xf32>) -> vector<1xf32>
        %302 = index.divu %298, %c14
        bufferization.dealloc_tensor %11 : tensor<9xi1>
        %303 = vector.broadcast %c0_i32 : i32 to vector<9xi32>
        %304 = vector.gather %10[%c11] [%303], %56, %303 : tensor<13xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %305 = index.sub %265, %151
        %306 = arith.maxsi %true_4, %true : i1
        %307 = index.maxu %c14, %153
        %308 = math.tan %152 : f32
        %extracted_51 = tensor.extract %4[%c5] : tensor<9xi32>
        %309 = vector.reduction <maxf>, %289 : vector<13xf32> into f32
        %310 = math.exp %15 : tensor<3x9x3xf16>
        %311 = vector.broadcast %c17411_i16 : i16 to vector<13xi16>
        %312 = vector.load %alloc_18[%c3] : memref<9xf16>, vector<9xf16>
        %313 = index.sub %127, %44
        %alloca_52 = memref.alloca() : memref<9xi1>
        %314 = math.ctpop %c1005151537_i32 : i32
        %315 = arith.shrsi %true, %false : i1
        %316 = arith.divui %c-19590_i16, %c17411_i16 : i16
        %alloc_53 = memref.alloc() : memref<3x9x3xf32>
        memref.alloca_scope.return %alloc_53 : memref<3x9x3xf32>
      }
      %281 = vector.broadcast %152 : f32 to vector<f32>
      %282 = vector.transfer_write %281, %8[%132] : vector<f32>, tensor<13xf32>
      %283 = scf.index_switch %159 -> memref<3x9x3xi64> 
      case 1 {
        %inserted_49 = tensor.insert %true_4 into %5[%c0] : tensor<9xi1>
        %289 = index.sub %c4, %127
        %290 = vector.broadcast %in_46 : f32 to vector<9x9xf32>
        %291 = vector.outerproduct %145, %144, %290 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
        %292 = math.log10 %118 : tensor<9xf16>
        %293 = vector.broadcast %152 : f32 to vector<9xf32>
        %294 = vector.broadcast %152 : f32 to vector<f32>
        %295 = vector.transfer_write %294, %9[%45, %174, %153] : vector<f32>, tensor<3x9x3xf32>
        %296 = math.exp2 %cst_0 : f16
        %297 = arith.minsi %107, %107 : i32
        %298 = bufferization.clone %89 : memref<9xi16> to memref<9xi16>
        %299 = tensor.empty() : tensor<9xf16>
        %300 = math.fma %collapsed, %collapsed, %collapsed : tensor<27x3xf32>
        %301 = index.add %159, %45
        %from_elements_50 = tensor.from_elements %c-32218_i16, %c-32218_i16, %c-32218_i16, %c17411_i16, %c-19590_i16, %c17411_i16, %c26906_i16, %extracted, %c-19590_i16, %c-32218_i16, %c-32218_i16, %c26906_i16, %c17411_i16, %c-19590_i16, %c26906_i16, %c-32218_i16, %c-32218_i16, %c-32218_i16, %c26906_i16, %c-32218_i16, %c26906_i16, %c26906_i16, %extracted, %c-32218_i16, %extracted, %extracted, %c-32218_i16, %c-19590_i16, %extracted, %c26906_i16, %c17411_i16, %extracted, %c17411_i16, %extracted, %c17411_i16, %c17411_i16, %c17411_i16, %extracted, %c-32218_i16, %c-19590_i16, %c-32218_i16, %c17411_i16, %c17411_i16, %c-19590_i16, %c17411_i16, %c-19590_i16, %c17411_i16, %c17411_i16, %c17411_i16, %c-19590_i16, %c26906_i16, %c-32218_i16, %c-19590_i16, %c-19590_i16, %c-19590_i16, %c26906_i16, %c-32218_i16, %c17411_i16, %c26906_i16, %extracted, %c26906_i16, %extracted, %c-19590_i16, %c-32218_i16, %c-32218_i16, %c26906_i16, %c26906_i16, %c26906_i16, %c26906_i16, %c-19590_i16, %c-32218_i16, %extracted, %c-32218_i16, %extracted, %c-19590_i16, %c-32218_i16, %c-19590_i16, %extracted, %c26906_i16, %c26906_i16, %c-32218_i16 : tensor<3x9x3xi16>
        %302 = bufferization.clone %alloc_31 : memref<13xf32> to memref<13xf32>
        %from_elements_51 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<3x9x3xi64>
        %303 = vector.maskedload %alloc_8[%c1, %c6, %c0], %56, %56 : memref<3x9x3xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %alloc_52 = memref.alloc() : memref<3x9x3xi64>
        scf.yield %alloc_52 : memref<3x9x3xi64>
      }
      case 2 {
        %289 = memref.realloc %alloc : memref<9xi1> to memref<3xi1>
        %290 = tensor.empty(%c15, %c3, %c10) : tensor<?x?x?xi32>
        %291 = vector.matrix_multiply %129, %61 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %292 = index.floordivs %262, %c8
        %from_elements_49 = tensor.from_elements %c887830254_i32, %c1005151537_i32, %107, %107, %c1636041013_i32, %107, %c1636041013_i32, %c0_i32, %c0_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %107, %107, %c1636041013_i32, %c887830254_i32, %c1636041013_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c1636041013_i32, %c0_i32, %c0_i32, %c1005151537_i32, %c0_i32, %c1005151537_i32, %107, %107, %c1636041013_i32, %107, %c887830254_i32, %107, %c1636041013_i32, %c887830254_i32, %c0_i32, %107, %c887830254_i32, %107, %c0_i32, %c0_i32, %c0_i32, %c1005151537_i32, %107, %c887830254_i32, %c0_i32, %c0_i32, %c1005151537_i32, %c1636041013_i32, %c0_i32, %c1636041013_i32, %107, %107, %c0_i32, %107, %c1636041013_i32, %c887830254_i32, %c1005151537_i32, %c1005151537_i32, %c1005151537_i32, %c0_i32, %c1005151537_i32, %c1636041013_i32, %c0_i32, %c887830254_i32, %c0_i32, %c1636041013_i32, %c1005151537_i32, %c1005151537_i32, %c887830254_i32, %c887830254_i32, %c1636041013_i32, %c1005151537_i32, %c1636041013_i32, %107, %c0_i32, %c1005151537_i32, %107, %c1636041013_i32, %107, %c1005151537_i32 : tensor<3x9x3xi32>
        %293 = vector.multi_reduction <maxui>, %74, %extracted [0] : vector<9xi16> to i16
        %294 = vector.load %46[%c1] : memref<13xi64>, vector<13xi64>
        %295 = affine.max affine_map<(d0) -> (0, 0)>(%82)
        %296 = bufferization.clone %alloc_14 : memref<9xf32> to memref<9xf32>
        %297 = arith.remf %in, %out : f32
        %298 = affine.max affine_map<(d0) -> (0, (-d0) ceildiv 2, d0 mod 64)>(%c8)
        %from_elements_50 = tensor.from_elements %cst_3, %cst_0, %99, %cst_1, %cst_0, %cst_0, %cst_3, %99, %cst_1, %99, %cst_3, %cst_0, %99 : tensor<13xf16>
        %inserted_51 = tensor.insert %107 into %14[%c0, %c4, %c2] : tensor<3x9x3xi32>
        %299 = bufferization.clone %alloc_6 : memref<9xf16> to memref<9xf16>
        %cst_52 = arith.constant 1.000000e+00 : f32
        %300 = vector.transfer_read %9[%151, %c2, %49], %cst_52 : tensor<3x9x3xf32>, vector<3xf32>
        %301 = arith.xori %c26906_i16, %extracted : i16
        %alloc_53 = memref.alloc() : memref<3x9x3xi64>
        scf.yield %alloc_53 : memref<3x9x3xi64>
      }
      default {
        %289 = arith.remsi %c-19590_i16, %c17411_i16 : i16
        %290 = vector.flat_transpose %18 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %291 = arith.minui %extracted, %extracted : i16
        %292 = index.sub %rank, %c4
        %c16 = arith.constant 16 : index
        %293 = vector.broadcast %cst : f32 to vector<4xf32>
        %294 = vector.broadcast %true_4 : i1 to vector<4xi1>
        %295 = vector.maskedload %150[%c16, %c1], %294, %293 : memref<27x3xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %cast_49 = tensor.cast %263 : tensor<3x3xi64> to tensor<?x?xi64>
        %296 = vector.maskedload %alloc_11[%c2], %56, %56 : memref<9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %297 = math.ceil %cst : f32
        %298 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        %cst_50 = arith.constant 0x4E6AAA76 : f32
        %299 = arith.remsi %c709515696_i64, %c709515696_i64 : i64
        %300 = math.round %52 : tensor<9xf32>
        %inserted_51 = tensor.insert %c1005151537_i32 into %from_elements_33[%c2, %c5, %c2] : tensor<3x9x3xi32>
        %301 = index.divs %c1, %c4
        %302 = index.maxu %c4, %c14
        %303 = math.floor %12 : tensor<9xf32>
        %alloc_52 = memref.alloc() : memref<3x9x3xi64>
        scf.yield %alloc_52 : memref<3x9x3xi64>
      }
      %284 = vector.load %alloc_7[%c4] : memref<9xi64>, vector<9xi64>
      %cast_47 = tensor.cast %from_elements_27 : tensor<9xi64> to tensor<?xi64>
      %285 = vector.broadcast %c17411_i16 : i16 to vector<i16>
      vector.transfer_write %285, %89[%82] : vector<i16>, memref<9xi16>
      %286 = index.ceildivs %c4, %c13
      %287 = arith.addi %extracted, %c26906_i16 : i16
      %extracted_48 = tensor.extract %11[%c1] : tensor<9xi1>
      %288 = math.round %9 : tensor<3x9x3xf32>
      linalg.yield %in_45 : f32
    } -> tensor<3x9x3xf32>
    %176 = vector.extract_strided_slice %55 {offsets = [3], sizes = [3], strides = [1]} : vector<9xf16> to vector<3xf16>
    %177 = scf.index_switch %132 -> memref<9xf16> 
    case 1 {
      %257 = arith.subi %true, %true : i1
      bufferization.dealloc_tensor %cast : tensor<?x?x?xi32>
      %extracted_45 = tensor.extract %2[%c5] : tensor<9xi64>
      %258 = math.ipowi %1, %1 : tensor<9xi16>
      %from_elements_46 = tensor.from_elements %true_4, %true, %true_4, %true_4, %false, %true, %true_4, %true, %true : tensor<9xi1>
      %259 = math.tan %118 : tensor<9xf16>
      %260 = math.copysign %19, %19 : tensor<9xf16>
      %261 = memref.realloc %alloc_20 : memref<9xf16> to memref<4xf16>
      bufferization.dealloc_tensor %from_elements_26 : tensor<3x9x3xi32>
      %262 = index.castu %extracted_45 : i64 to index
      %263 = vector.multi_reduction <maxsi>, %129, %extracted_45 [0] : vector<9xi64> to i64
      %264 = vector.transpose %145, [0] : vector<9xf32> to vector<9xf32>
      %265 = index.maxu %132, %c3
      %266 = arith.remsi %c-19590_i16, %c26906_i16 : i16
      %267 = vector.reduction <maxf>, %35 : vector<1xf16> into f16
      %268 = arith.muli %c887830254_i32, %c0_i32 : i32
      scf.yield %alloc_17 : memref<9xf16>
    }
    case 2 {
      %257 = tensor.empty() : tensor<9xi32>
      %mapped = linalg.map ins(%4, %140 : tensor<9xi32>, tensor<9xi32>) outs(%257 : tensor<9xi32>)
        (%in: i32, %in_51: i32) {
          %267 = arith.remsi %c1636041013_i32, %c887830254_i32 : i32
          %268 = math.absf %15 : tensor<3x9x3xf16>
          %269 = math.ipowi %107, %c887830254_i32 : i32
          %270 = vector.broadcast %false : i1 to vector<9xi1>
          %271 = arith.shrui %extracted, %c-32218_i16 : i16
          %272 = arith.shrui %107, %c1005151537_i32 : i32
          %273 = bufferization.to_memref %13 : memref<9xi16>
          %274 = math.ctpop %in : i32
          %275 = index.maxs %90, %82
          %276 = arith.xori %c1005151537_i32, %in_51 : i32
          %cast_52 = tensor.cast %3 : tensor<9xf16> to tensor<?xf16>
          %277 = vector.broadcast %cst_2 : f32 to vector<9xf32>
          %278 = vector.fma %277, %277, %144 : vector<9xf32>
          %279 = arith.subi %in_51, %c1636041013_i32 : i32
          %280 = vector.broadcast %true : i1 to vector<i1>
          vector.transfer_write %280, %alloc[%132] : vector<i1>, memref<9xi1>
          %281 = affine.max affine_map<(d0, d1, d2, d3) -> (32, -d1, 32)>(%c5, %154, %c11, %127)
          %282 = index.maxu %153, %c13
          %283 = vector.broadcast %cst_1 : f16 to vector<4xf16>
          %284 = vector.broadcast %true : i1 to vector<4xi1>
          %285 = vector.maskedload %alloc_20[%c2], %284, %283 : memref<9xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
          %286 = arith.mulf %cst_1, %cst_1 : f16
          %287 = bufferization.clone %150 : memref<27x3xf32> to memref<27x3xf32>
          %288 = vector.shuffle %280, %280 [0, 1] : vector<i1>, vector<i1>
          %289 = arith.minsi %c1636041013_i32, %c1005151537_i32 : i32
          %290 = arith.cmpi ult, %extracted, %c26906_i16 : i16
          %291 = tensor.empty(%c7) : tensor<?xi64>
          %292 = vector.broadcast %c887830254_i32 : i32 to vector<i32>
          %293 = vector.transfer_write %292, %17[%c5, %c8, %127] : vector<i32>, tensor<3x9x3xi32>
          %294 = arith.shrui %c26906_i16, %c26906_i16 : i16
          %295 = math.round %52 : tensor<9xf32>
          %296 = arith.maxsi %c17411_i16, %extracted : i16
          %297 = index.divs %68, %c8
          %298 = vector.transpose %165, [0] : vector<9xf16> to vector<9xf16>
          %299 = math.log10 %8 : tensor<13xf32>
          %300 = index.add %c4, %c3
          %rank_53 = tensor.rank %5 : tensor<9xi1>
          %c0_i32_54 = arith.constant 0 : i32
          linalg.yield %c0_i32_54 : i32
        }
      %258 = vector.gather %alloc_5[%c7] [%112], %27, %27 : memref<13xi1>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xi1> into vector<3x9x3xi1>
      %cst_45 = arith.constant 1.03330835E+9 : f32
      %259 = arith.remf %cst, %152 : f32
      %260 = arith.shrui %107, %c1005151537_i32 : i32
      %261 = bufferization.to_tensor %alloc_13 : memref<13xi16>
      %262 = arith.shrsi %c709515696_i64, %c709515696_i64 : i64
      %263 = math.ipowi %1, %1 : tensor<9xi16>
      %264 = math.ceil %6 : tensor<13xf32>
      %265 = arith.divui %c-32218_i16, %c17411_i16 : i16
      %collapsed_46 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x9x3xi32> into tensor<27x3xi32>
      %collapsed_47 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<3x9x3xi32> into tensor<27x3xi32>
      %266 = arith.maxsi %extracted, %c-19590_i16 : i16
      %extracted_48 = tensor.extract %12[%c8] : tensor<9xf32>
      %collapsed_49 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x9x3xf32> into tensor<27x3xf32>
      %extracted_50 = tensor.extract %1[%c1] : tensor<9xi16>
      scf.yield %alloc_20 : memref<9xf16>
    }
    default {
      %257 = arith.ori %true_4, %false : i1
      %258 = math.copysign %collapsed, %collapsed : tensor<27x3xf32>
      memref.store %false, %alloc[%c4] : memref<9xi1>
      %259 = arith.xori %c887830254_i32, %107 : i32
      %260 = affine.min affine_map<(d0, d1) -> (0, -(d0 - 8) + d0, (d0 - 8) * 4, (d0 floordiv 2) floordiv 128)>(%72, %c4)
      %261 = vector.broadcast %c-19590_i16 : i16 to vector<9xi16>
      %262 = bufferization.clone %alloc_13 : memref<13xi16> to memref<13xi16>
      %263 = tensor.empty() : tensor<13xf16>
      %264 = affine.min affine_map<(d0) -> (d0 mod 2 - 128, d0 mod 2 - 128, d0 * 32)>(%c4)
      %alloc_45 = memref.alloc() : memref<3x3xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45 : memref<3x3xi32>) outs(%17 : tensor<3x9x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %271 = memref.load %alloc_10[%c8] : memref<13xf16>
        %272 = tensor.empty() : tensor<3x9x3xi1>
        %273 = vector.gather %272[%c8, %68, %68] [%112], %27, %27 : tensor<3x9x3xi1>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xi1> into vector<3x9x3xi1>
        %274 = math.powf %12, %52 : tensor<9xf32>
        %275 = math.exp2 %21 : tensor<f16>
        %splat_46 = tensor.splat %c26906_i16 : tensor<13xi16>
        %276 = math.atan2 %9, %9 : tensor<3x9x3xf32>
        %277 = math.log1p %8 : tensor<13xf32>
        %278 = arith.remf %99, %cst_0 : f16
        %279 = math.copysign %cst_3, %cst_0 : f16
        %splat_47 = tensor.splat %cst_3 : tensor<9xf16>
        %280 = math.log10 %19 : tensor<9xf16>
        %281 = index.floordivs %77, %c4
        %282 = math.rsqrt %8 : tensor<13xf32>
        %283 = arith.subi %true, %false : i1
        %284 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
        %285 = arith.divui %extracted, %c26906_i16 : i16
        %286 = arith.mulf %cst_3, %cst_1 : f16
        %287 = vector.load %alloc_7[%c6] : memref<9xi64>, vector<13xi64>
        %288 = arith.addi %false, %true : i1
        %289 = vector.matrix_multiply %129, %61 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %290 = math.fma %collapsed, %collapsed, %collapsed : tensor<27x3xf32>
        %true_48 = arith.constant true
        %291 = vector.matrix_multiply %57, %165 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
        %292 = index.mul %c1, %49
        %293 = math.tan %21 : tensor<f16>
        %294 = arith.addf %cst_2, %cst : f32
        %295 = math.tan %99 : f16
        %296 = vector.broadcast %cst_3 : f16 to vector<9x9xf16>
        %297 = vector.outerproduct %165, %55, %296 {kind = #vector.kind<maxf>} : vector<9xf16>, vector<9xf16>
        %298 = memref.realloc %136 : memref<9xi1> to memref<4xi1>
        %299 = math.fma %19, %splat_47, %118 : tensor<9xf16>
        affine.store %c-32218_i16, %262[%c3] : memref<13xi16>
        %300 = index.floordivs %154, %c5
        linalg.yield %c0_i32 : i32
      } -> tensor<3x9x3xi32>
      %266 = scf.if %true_4 -> (memref<13xf32>) {
        %c26387_i16 = arith.constant 26387 : i16
        %271 = math.copysign %21, %21 : tensor<f16>
        %272 = vector.broadcast %cst : f32 to vector<9xf32>
        %273 = vector.fma %272, %144, %272 : vector<9xf32>
        %274 = arith.ori %107, %c0_i32 : i32
        %275 = tensor.empty() : tensor<3x3xi64>
        %276 = linalg.matmul ins(%102, %102 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%275 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %277 = vector.extract_strided_slice %261 {offsets = [0], sizes = [2], strides = [1]} : vector<9xi16> to vector<2xi16>
        %278 = vector.flat_transpose %273 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %279 = vector.broadcast %cst : f32 to vector<f32>
        %280 = vector.transfer_write %279, %12[%c10] : vector<f32>, tensor<9xf32>
        scf.yield %alloc_31 : memref<13xf32>
      } else {
        %271 = vector.create_mask %c1, %264, %93 : vector<3x9x3xi1>
        %272 = math.ctpop %c-32218_i16 : i16
        %273 = math.atan2 %118, %3 : tensor<9xf16>
        %274 = math.absf %263 : tensor<13xf16>
        %rank_46 = tensor.rank %12 : tensor<9xf32>
        %275 = arith.remf %cst_0, %cst_0 : f16
        %276 = arith.negf %152 : f32
        %277 = arith.remf %cst_2, %cst : f32
        scf.yield %alloc_31 : memref<13xf32>
      }
      %267 = arith.addi %c-19590_i16, %c26906_i16 : i16
      %268 = arith.divf %cst, %152 : f32
      %269 = arith.andi %c26906_i16, %c26906_i16 : i16
      memref.copy %alloc_18, %alloc_19 : memref<9xf16> to memref<9xf16>
      %270 = arith.negf %152 : f32
      scf.yield %alloc_6 : memref<9xf16>
    }
    %178 = index.mul %c13, %93
    %179 = index.sub %c5, %c5
    %180 = arith.minui %c26906_i16, %c-19590_i16 : i16
    %181 = vector.broadcast %c887830254_i32 : i32 to vector<13xi32>
    %182 = vector.broadcast %true : i1 to vector<13xi1>
    %183 = vector.gather %10[%29] [%181], %182, %181 : tensor<13xi32>, vector<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
    %from_elements_37 = tensor.from_elements %cst_0, %cst_1, %cst_0, %cst_1, %99, %cst_0, %cst_1, %cst_1, %cst_0, %99, %cst_3, %99, %99 : tensor<13xf16>
    %184 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<3x9x3xi16>) {
    ^bb0(%out: i16):
      %cst_45 = arith.constant 0x4C1E76EA : f32
      %257 = scf.execute_region -> vector<13xf16> {
        %285 = index.sub %72, %77
        %286 = arith.maxf %99, %cst_3 : f16
        memref.tensor_store %8, %alloc_31 : memref<13xf32>
        %287 = arith.negf %cst_2 : f32
        %288 = arith.shrsi %c-32218_i16, %c26906_i16 : i16
        %289 = arith.mulf %152, %cst_2 : f32
        %290 = math.tan %6 : tensor<13xf32>
        %291 = vector.load %alloc_7[%c2] : memref<9xi64>, vector<13xi64>
        %false_51 = index.bool.constant false
        %292 = bufferization.to_memref %1 : memref<9xi16>
        %293 = vector.flat_transpose %36 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %294 = math.fma %19, %19, %3 : tensor<9xf16>
        %295 = vector.reduction <maxf>, %57 : vector<9xf16> into f16
        %296 = vector.broadcast %107 : i32 to vector<3x9xi32>
        %dest_52, %accumulated_value_53 = vector.scan <minsi>, %112, %296 {inclusive = true, reduction_dim = 2 : i64} : vector<3x9x3xi32>, vector<3x9xi32>
        %297 = math.ceil %cst_3 : f16
        %extracted_54 = tensor.extract %118[%c2] : tensor<9xf16>
        %298 = vector.broadcast %extracted_54 : f16 to vector<13xf16>
        scf.yield %298 : vector<13xf16>
      }
      %258 = vector.load %alloc_18[%c6] : memref<9xf16>, vector<3x9x3xf16>
      %259 = math.tanh %cst_2 : f32
      memref.copy %alloc_19, %alloc_18 : memref<9xf16> to memref<9xf16>
      %260 = affine.min affine_map<(d0) -> (0, (d0 - 2) ceildiv 8, (d0 - 2) ceildiv 8)>(%26)
      %261 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
      %262 = arith.divf %cst_0, %cst_0 : f16
      %263 = arith.subi %c-32218_i16, %c-19590_i16 : i16
      %264 = vector.create_mask %44 : vector<9xi1>
      %265 = math.ceil %3 : tensor<9xf16>
      %266 = affine.max affine_map<(d0, d1, d2) -> (d2 * 16, d2 * 256, -d1 + 2)>(%77, %82, %c14)
      %267 = arith.ori %c-32218_i16, %c17411_i16 : i16
      %inserted_46 = tensor.insert %c709515696_i64 into %from_elements_27[%c3] : tensor<9xi64>
      %268 = scf.while (%arg3 = %alloc_10) : (memref<13xf16>) -> memref<13xf16> {
        %cst_51 = arith.constant 0x4E40DE17 : f32
        %285 = arith.xori %c17411_i16, %c26906_i16 : i16
        %286 = arith.remsi %c709515696_i64, %c709515696_i64 : i64
        %287 = math.ctlz %14 : tensor<3x9x3xi32>
        %288 = arith.divf %152, %152 : f32
        %289 = vector.extract %60[3] : vector<9xi64>
        %290 = vector.reduction <minf>, %35 : vector<1xf16> into f16
        %291 = index.floordivs %68, %266
        scf.condition(%true_4) %arg3 : memref<13xf16>
      } do {
      ^bb0(%arg3: memref<13xf16>):
        %285 = index.maxu %266, %c1
        %286 = math.ipowi %c-32218_i16, %c17411_i16 : i16
        %287 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
        %dest_51, %accumulated_value_52 = vector.scan <maxf>, %67, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<3x9x3xf16>, vector<3x3xf16>
        %288 = arith.xori %true_4, %false : i1
        %289 = memref.atomic_rmw minf %152, %alloc_31[%c2] : (f32, memref<13xf32>) -> f32
        %cst_53 = arith.constant 1.000000e+00 : f16
        %290 = vector.transfer_read %70[%90], %cst_53 : memref<9xf16>, vector<f16>
        %291 = math.ceil %118 : tensor<9xf16>
        %292 = index.divs %c12, %44
        %293 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 16) mod 32, -d1, d2 - 16, d2 - 16)>(%154, %153, %c2)
        %294 = math.log1p %19 : tensor<9xf16>
        %295 = index.divs %c3, %c6
        %296 = vector.create_mask %62, %c10, %132 : vector<3x9x3xi1>
        %297 = math.exp %15 : tensor<3x9x3xf16>
        %298 = arith.maxf %cst_1, %cst_1 : f16
        %inserted_54 = tensor.insert %false into %from_elements_28[%c12] : tensor<13xi1>
        %299 = vector.broadcast %152 : f32 to vector<3x9x3xf32>
        %300 = vector.fma %299, %111, %299 : vector<3x9x3xf32>
        scf.yield %alloc_10 : memref<13xf16>
      }
      %269 = math.log1p %15 : tensor<3x9x3xf16>
      %inserted_47 = tensor.insert %107 into %from_elements_33[%c2, %c3, %c2] : tensor<3x9x3xi32>
      %270 = vector.broadcast %c-32218_i16 : i16 to vector<9xi16>
      affine.for %arg3 = 0 to 32 {
      }
      %271 = arith.maxf %cst_2, %cst_2 : f32
      %272 = tensor.empty() : tensor<3x3xi64>
      %273 = linalg.matmul ins(%102, %102 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%272 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %274 = index.maxu %c0, %266
      %275 = bufferization.clone %alloc_17 : memref<9xf16> to memref<9xf16>
      %276 = math.fma %3, %19, %from_elements : tensor<9xf16>
      %277 = arith.negf %99 : f16
      %278 = bufferization.to_tensor %alloc_9 : memref<13xi32>
      %279 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %280 = vector.fma %279, %144, %279 : vector<9xf32>
      %281 = affine.load %alloc_19[%c5] : memref<9xf16>
      %282 = affine.for %arg3 = 0 to 29 iter_args(%arg4 = %140) -> (tensor<9xi32>) {
        affine.yield %arg4 : tensor<9xi32>
      }
      %283 = vector.broadcast %false : i1 to vector<9x3xi1>
      %dest_48, %accumulated_value_49 = vector.scan <minsi>, %27, %283 {inclusive = true, reduction_dim = 0 : i64} : vector<3x9x3xi1>, vector<9x3xi1>
      %cast_50 = tensor.cast %14 : tensor<3x9x3xi32> to tensor<?x?x?xi32>
      %284 = vector.reduction <maxf>, %280 : vector<9xf32> into f32
      linalg.yield %c-19590_i16 : i16
    } -> tensor<3x9x3xi16>
    %185 = arith.muli %c17411_i16, %c26906_i16 : i16
    %186 = arith.divf %cst_2, %152 : f32
    %187 = index.ceildivs %72, %132
    %188 = arith.maxf %cst, %cst : f32
    %189 = scf.while (%arg3 = %85) : (vector<13xf32>) -> vector<13xf32> {
      %257 = math.atan2 %8, %8 : tensor<13xf32>
      %258 = scf.while (%arg4 = %105) : (vector<3x9x3xi1>) -> vector<3x9x3xi1> {
        %264 = index.ceildivu %127, %72
        %alloca_46 = memref.alloca() : memref<9xf32>
        %265 = math.ceil %8 : tensor<13xf32>
        %cst_47 = arith.constant 1.000000e+00 : f32
        %cst_48 = arith.constant 0.000000e+00 : f32
        %266 = vector.transfer_read %6[%c8], %cst_48 : tensor<13xf32>, vector<f32>
        %267 = index.add %c9, %154
        %268 = index.maxu %45, %c10
        %269 = math.ipowi %17, %14 : tensor<3x9x3xi32>
        %270 = math.exp2 %9 : tensor<3x9x3xf32>
        scf.condition(%false) %27 : vector<3x9x3xi1>
      } do {
      ^bb0(%arg4: vector<3x9x3xi1>):
        %264 = vector.matrix_multiply %60, %129 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %265 = vector.splat %true_4 : vector<3x9x3xi1>
        %266 = affine.max affine_map<(d0, d1) -> (-(d0 - 128))>(%45, %77)
        %267 = vector.flat_transpose %84 {columns = 13 : i32, rows = 1 : i32} : vector<13xf32> -> vector<13xf32>
        %268 = bufferization.to_tensor %alloc_18 : memref<9xf16>
        %269 = arith.subi %c887830254_i32, %c887830254_i32 : i32
        %270 = arith.maxf %cst_1, %99 : f16
        %271 = math.log10 %cst : f32
        %272 = bufferization.to_tensor %alloc_31 : memref<13xf32>
        %273 = vector.matrix_multiply %55, %36 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<1xf16>) -> vector<9xf16>
        %274 = math.log10 %8 : tensor<13xf32>
        %275 = math.copysign %152, %cst : f32
        %276 = vector.broadcast %c1636041013_i32 : i32 to vector<4xi32>
        %277 = vector.broadcast %true : i1 to vector<4xi1>
        %278 = vector.maskedload %alloc_9[%c2], %277, %276 : memref<13xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %279 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 4, d1 + d2, d0 ceildiv 4, (d1 + d2) ceildiv 4)>(%266, %91, %rank)
        %280 = arith.negf %cst_0 : f16
        %281 = math.ctpop %14 : tensor<3x9x3xi32>
        scf.yield %27 : vector<3x9x3xi1>
      }
      %259 = math.cttz %4 : tensor<9xi32>
      %260 = index.ceildivs %c3, %159
      %splat_45 = tensor.splat %extracted : tensor<13xi16>
      %261 = math.exp %20 : tensor<f16>
      %262 = vector.shuffle %57, %36 [0, 1, 2, 3, 5, 6, 9] : vector<9xf16>, vector<1xf16>
      %263 = index.maxu %49, %c12
      scf.condition(%true) %84 : vector<13xf32>
    } do {
    ^bb0(%arg3: vector<13xf32>):
      %257 = arith.addi %true_4, %true_4 : i1
      %258 = index.ceildivs %c5, %rank
      %259 = vector.matrix_multiply %183, %181 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi32>, vector<13xi32>) -> vector<1xi32>
      %260 = vector.create_mask %29, %90, %258 : vector<3x9x3xi1>
      %261 = vector.reduction <add>, %56 : vector<9xi1> into i1
      %262 = math.ipowi %c709515696_i64, %c709515696_i64 : i64
      %263 = bufferization.clone %alloc_20 : memref<9xf16> to memref<9xf16>
      %264 = arith.addf %99, %cst_1 : f16
      %265 = vector.load %89[%c8] : memref<9xi16>, vector<3x9x3xi16>
      %alloca_45 = memref.alloca() : memref<9xi16>
      %266 = math.atan2 %99, %cst_3 : f16
      %267 = arith.remsi %c17411_i16, %c-32218_i16 : i16
      scf.index_switch %132 
      case 1 {
        %270 = arith.minui %107, %c1636041013_i32 : i32
        %271 = vector.broadcast %99 : f16 to vector<9x9xf16>
        %272 = vector.outerproduct %55, %55, %271 {kind = #vector.kind<maxf>} : vector<9xf16>, vector<9xf16>
        %273 = arith.ori %c1636041013_i32, %107 : i32
        %274 = index.ceildivs %187, %c6
        %275 = arith.ori %c1005151537_i32, %c1636041013_i32 : i32
        %276 = index.add %c12, %26
        %277 = vector.load %alloc_19[%c6] : memref<9xf16>, vector<9xf16>
        %278 = math.round %from_elements_37 : tensor<13xf16>
        %279 = vector.flat_transpose %129 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %280 = bufferization.to_tensor %alloc_17 : memref<9xf16>
        %281 = math.ipowi %14, %16 : tensor<3x9x3xi32>
        %282 = arith.remsi %c-32218_i16, %extracted : i16
        %cast_47 = tensor.cast %2 : tensor<9xi64> to tensor<?xi64>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %13[%c7], %c0_i16 : tensor<9xi16>, vector<i16>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %284 = vector.transfer_read %alloc_31[%c5], %cst_49 : memref<13xf32>, vector<f32>
        %from_elements_50 = tensor.from_elements %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_3, %99, %cst_1, %cst_1 : tensor<9xf16>
        scf.yield
      }
      case 2 {
        %270 = vector.maskedload %alloc_16[%c0], %182, %183 : memref<9xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %271 = arith.divsi %c709515696_i64, %c709515696_i64 : i64
        %272 = vector.transpose %259, [0] : vector<1xi32> to vector<1xi32>
        %273 = tensor.empty() : tensor<3x9x3xf32>
        %274 = math.copysign %152, %cst_2 : f32
        %275 = arith.maxf %cst_3, %cst_1 : f16
        %276 = affine.min affine_map<(d0, d1, d2) -> (-(d0 mod 64) - 128, d0 * 32, d1, -(d0 mod 64) - 128)>(%258, %c4, %49)
        %277 = vector.shuffle %182, %56 [0, 1, 2, 4, 5, 8, 13, 15, 18, 19, 21] : vector<13xi1>, vector<9xi1>
        %278 = index.maxu %82, %c6
        memref.store %cst, %alloc_14[%c5] : memref<9xf32>
        %279 = arith.maxsi %c-19590_i16, %c26906_i16 : i16
        %280 = bufferization.clone %46 : memref<13xi64> to memref<13xi64>
        %281 = index.sub %c6, %c0
        %splat_47 = tensor.splat %cst_2 : tensor<9xf32>
        %282 = vector.reduction <or>, %183 : vector<13xi32> into i32
        %283 = vector.broadcast %cst_2 : f32 to vector<3x9x3xf32>
        %284 = vector.fma %283, %113, %283 : vector<3x9x3xf32>
        scf.yield
      }
      default {
        %270 = math.copysign %8, %6 : tensor<13xf32>
        %271 = arith.addf %cst_1, %cst_0 : f16
        %272 = vector.create_mask %77, %c13, %159 : vector<3x9x3xi1>
        %273 = math.atan %15 : tensor<3x9x3xf16>
        %274 = math.log2 %3 : tensor<9xf16>
        %275 = arith.cmpf ugt, %99, %cst_1 : f16
        %splat_47 = tensor.splat %c1005151537_i32 : tensor<13xi32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %276 = vector.transfer_read %alloc_31[%29], %cst_49 : memref<13xf32>, vector<f32>
        %277 = vector.load %89[%c4] : memref<9xi16>, vector<9xi16>
        %278 = vector.transpose %67, [2, 1, 0] : vector<3x9x3xf16> to vector<3x9x3xf16>
        %279 = bufferization.clone %136 : memref<9xi1> to memref<9xi1>
        %280 = arith.divui %c887830254_i32, %c1005151537_i32 : i32
        %cst_50 = arith.constant 1.000000e+00 : f32
        %281 = vector.transfer_read %8[%178], %cst_50 : tensor<13xf32>, vector<f32>
        %from_elements_51 = tensor.from_elements %false, %false, %true, %true_4, %true_4, %true, %true_4, %true_4, %false, %true_4, %false, %true, %false, %true_4, %false, %true, %false, %true_4, %true, %true_4, %true_4, %false, %true_4, %true_4, %true, %true, %true_4, %true_4, %true, %true, %false, %true_4, %true_4, %true_4, %false, %true_4, %false, %true, %false, %true_4, %true, %true_4, %false, %true_4, %false, %true_4, %true, %false, %false, %false, %true_4, %false, %false, %false, %true, %true_4, %true, %false, %true, %false, %true_4, %true, %true, %true, %true_4, %true, %true, %true, %true, %true, %true, %true, %true, %false, %true_4, %false, %true, %true_4, %false, %true, %true_4 : tensor<3x9x3xi1>
        %282 = vector.broadcast %cst_1 : f16 to vector<3x3xf16>
        %283 = vector.outerproduct %18, %176, %282 {kind = #vector.kind<add>} : vector<3xf16>, vector<3xf16>
        memref.copy %70, %alloc_17 : memref<9xf16> to memref<9xf16>
      }
      %rank_46 = tensor.rank %17 : tensor<3x9x3xi32>
      %268 = arith.minsi %c1005151537_i32, %c0_i32 : i32
      %269 = scf.index_switch %127 -> tensor<3x9x3xi1> 
      case 1 {
        %270 = arith.negf %cst : f32
        %271 = math.roundeven %6 : tensor<13xf32>
        %272 = arith.mulf %cst_3, %99 : f16
        %273 = arith.remsi %c-32218_i16, %c26906_i16 : i16
        %274 = math.fma %19, %from_elements, %3 : tensor<9xf16>
        %275 = math.tan %99 : f16
        %276 = arith.shli %c709515696_i64, %c709515696_i64 : i64
        %277 = arith.maxsi %true_4, %false : i1
        %from_elements_47 = tensor.from_elements %false, %true, %true, %true_4, %true_4, %true, %true_4, %true, %true_4 : tensor<9xi1>
        %278 = arith.remf %cst_0, %cst_3 : f16
        %279 = vector.shuffle %183, %259 [0, 1, 2, 4, 7, 10, 12, 13] : vector<13xi32>, vector<1xi32>
        %280 = arith.muli %c1005151537_i32, %c887830254_i32 : i32
        %281 = vector.broadcast %152 : f32 to vector<9xf32>
        %282 = vector.fma %281, %144, %281 : vector<9xf32>
        %283 = arith.subi %c26906_i16, %extracted : i16
        %from_elements_48 = tensor.from_elements %c26906_i16, %extracted, %c17411_i16, %c-19590_i16, %extracted, %c26906_i16, %c-19590_i16, %c26906_i16, %c26906_i16 : tensor<9xi16>
        %rank_49 = tensor.rank %6 : tensor<13xf32>
        %284 = tensor.empty() : tensor<3x9x3xi1>
        scf.yield %284 : tensor<3x9x3xi1>
      }
      case 2 {
        %270 = arith.muli %c0_i32, %c0_i32 : i32
        %271 = arith.shrsi %true_4, %true : i1
        %272 = arith.shrsi %c709515696_i64, %c709515696_i64 : i64
        %273 = index.ceildivs %153, %187
        %274 = arith.subi %extracted, %c17411_i16 : i16
        %275 = math.tan %99 : f16
        %splat_47 = tensor.splat %152 : tensor<3x9x3xf32>
        %alloca_48 = memref.alloca() : memref<9xi64>
        %276 = index.mul %c0, %c2
        %277 = vector.maskedload %alloc_8[%c1, %c2, %c1], %56, %56 : memref<3x9x3xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %extracted_49 = tensor.extract %8[%c11] : tensor<13xf32>
        %278 = vector.broadcast %c1005151537_i32 : i32 to vector<13x13xi32>
        %279 = vector.outerproduct %183, %181, %278 {kind = #vector.kind<minui>} : vector<13xi32>, vector<13xi32>
        %280 = index.divs %179, %c4
        %rank_50 = tensor.rank %from_elements_33 : tensor<3x9x3xi32>
        %281 = bufferization.to_tensor %alloc_13 : memref<13xi16>
        %from_elements_51 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
        %282 = tensor.empty() : tensor<3x9x3xi1>
        scf.yield %282 : tensor<3x9x3xi1>
      }
      case 3 {
        %270 = vector.broadcast %cst_3 : f16 to vector<f16>
        %271 = vector.transfer_write %270, %from_elements_37[%72] : vector<f16>, tensor<13xf16>
        %272 = arith.floordivsi %c17411_i16, %c-32218_i16 : i16
        %273 = bufferization.clone %alloc_17 : memref<9xf16> to memref<9xf16>
        %alloca_47 = memref.alloca() : memref<3x9x3xi16>
        %c0_i16 = arith.constant 0 : i16
        %274 = vector.transfer_read %alloc_13[%29], %c0_i16 : memref<13xi16>, vector<i16>
        %275 = math.floor %15 : tensor<3x9x3xf16>
        memref.assume_alignment %alloc_31, 8 : memref<13xf32>
        %276 = arith.mulf %cst_3, %cst_1 : f16
        %277 = arith.muli %extracted, %extracted : i16
        %278 = arith.negf %cst_3 : f16
        %279 = arith.minsi %c-19590_i16, %c-19590_i16 : i16
        %280 = vector.bitcast %112 : vector<3x9x3xi32> to vector<3x9x3xi32>
        %281 = vector.flat_transpose %181 {columns = 13 : i32, rows = 1 : i32} : vector<13xi32> -> vector<13xi32>
        %282 = vector.bitcast %55 : vector<9xf16> to vector<9xf16>
        %283 = math.round %6 : tensor<13xf32>
        %284 = math.fma %6, %8, %6 : tensor<13xf32>
        %285 = tensor.empty() : tensor<3x9x3xi1>
        scf.yield %285 : tensor<3x9x3xi1>
      }
      default {
        %from_elements_47 = tensor.from_elements %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64, %c709515696_i64 : tensor<9xi64>
        %270 = vector.broadcast %c-32218_i16 : i16 to vector<13xi16>
        %271 = vector.gather %13[%29] [%183], %182, %270 : tensor<9xi16>, vector<13xi32>, vector<13xi1>, vector<13xi16> into vector<13xi16>
        %272 = arith.minui %107, %c0_i32 : i32
        %273 = arith.remf %152, %cst : f32
        %274 = arith.divf %cst_1, %cst_1 : f16
        %275 = math.log10 %21 : tensor<f16>
        %276 = vector.broadcast %false : i1 to vector<3xi1>
        %277 = vector.maskedload %70[%c5], %276, %176 : memref<9xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %from_elements_48 = tensor.from_elements %c-32218_i16, %c-32218_i16, %c-19590_i16, %c-19590_i16, %c17411_i16, %extracted, %extracted, %c26906_i16, %extracted : tensor<9xi16>
        %278 = arith.minsi %107, %c1636041013_i32 : i32
        %279 = math.copysign %12, %52 : tensor<9xf32>
        %280 = vector.shuffle %181, %181 [1, 2, 4, 7, 10, 11, 13, 14, 15, 16, 17, 20, 23, 24, 25] : vector<13xi32>, vector<13xi32>
        %281 = math.tan %cst_0 : f16
        %inserted_49 = tensor.insert %cst_0 into %20[] : tensor<f16>
        %282 = arith.minui %c17411_i16, %c17411_i16 : i16
        %283 = arith.mulf %99, %cst_0 : f16
        %284 = arith.remsi %extracted, %c-32218_i16 : i16
        %285 = tensor.empty() : tensor<3x9x3xi1>
        scf.yield %285 : tensor<3x9x3xi1>
      }
      scf.yield %84 : vector<13xf32>
    }
    %190 = bufferization.to_tensor %89 : memref<9xi16>
    %191 = arith.remf %cst_2, %152 : f32
    %192 = index.maxu %44, %c9
    %c0_i32_38 = arith.constant 0 : i32
    %193 = vector.transfer_read %86[%151], %c0_i32_38 : tensor<9xi32>, vector<i32>
    %alloc_39 = memref.alloc() : memref<27x3xf32>
    memref.copy %150, %alloc_39 : memref<27x3xf32> to memref<27x3xf32>
    %194 = math.round %21 : tensor<f16>
    %195 = vector.broadcast %true_4 : i1 to vector<3x3xi1>
    %196 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %56, %105, %195 : vector<9xi1>, vector<3x9x3xi1> into vector<3x3xi1>
    %197 = bufferization.clone %89 : memref<9xi16> to memref<9xi16>
    %198 = arith.maxf %99, %cst_3 : f16
    %199 = arith.muli %107, %c887830254_i32 : i32
    bufferization.dealloc_tensor %52 : tensor<9xf32>
    %200 = math.absf %8 : tensor<13xf32>
    %201 = arith.ceildivsi %true_4, %false : i1
    %202 = affine.min affine_map<(d0, d1, d2) -> (d2 floordiv 8 - d1, (d1 * 16) ceildiv 64, d1 * 16, d0 ceildiv 32)>(%82, %49, %151)
    %203 = vector.broadcast %cst_0 : f16 to vector<f16>
    %204 = vector.transfer_write %203, %118[%c11] : vector<f16>, tensor<9xf16>
    %205 = math.round %9 : tensor<3x9x3xf32>
    affine.for %arg3 = 0 to 68 {
    }
    %206 = tensor.empty(%c13, %77) : tensor<?x9x?xi16>
    %cst_40 = arith.constant 1.66046912E+9 : f32
    %c-17615_i16 = arith.constant -17615 : i16
    %207 = arith.shli %true_4, %false : i1
    %208 = arith.ori %c1636041013_i32, %c887830254_i32 : i32
    %209 = math.log %cst_0 : f16
    %210 = index.add %202, %c10
    %211 = vector.multi_reduction <minui>, %56, %56 [] : vector<9xi1> to vector<9xi1>
    %alloc_41 = memref.alloc() : memref<3xi32>
    %212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41 : memref<3xi32>) outs(%from_elements_33 : tensor<3x9x3xi32>) {
    ^bb0(%in: i32, %out: i32):
      %257 = arith.mulf %cst_1, %99 : f16
      %258 = scf.while (%arg3 = %c17411_i16) : (i16) -> i16 {
        %287 = memref.realloc %alloc_17 : memref<9xf16> to memref<4xf16>
        %288 = affine.min affine_map<(d0) -> (-d0, d0 * 4, d0)>(%26)
        %289 = index.sub %72, %68
        %290 = index.floordivs %82, %c6
        %291 = tensor.empty() : tensor<3x13xf32>
        %292 = tensor.empty() : tensor<27x13xf32>
        %293 = linalg.matmul ins(%collapsed, %291 : tensor<27x3xf32>, tensor<3x13xf32>) outs(%292 : tensor<27x13xf32>) -> tensor<27x13xf32>
        %294 = index.ceildivs %c7, %44
        %expanded = tensor.expand_shape %292 [[0], [1, 2]] : tensor<27x13xf32> into tensor<27x13x1xf32>
        %295 = math.copysign %cst_2, %cst : f32
        scf.condition(%false) %c26906_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %287 = arith.muli %false, %true : i1
        %288 = math.log10 %cst_2 : f32
        %c16 = arith.constant 16 : index
        %289 = vector.broadcast %c10 : index to vector<4xindex>
        %290 = vector.broadcast %true : i1 to vector<4xi1>
        %291 = vector.broadcast %152 : f32 to vector<4xf32>
        vector.scatter %150[%c16, %c1] [%289], %290, %291 : memref<27x3xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %292 = vector.extract_strided_slice %176 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf16> to vector<2xf16>
        %293 = vector.transpose %61, [0] : vector<9xi64> to vector<9xi64>
        %294 = math.ceil %6 : tensor<13xf32>
        %cast_48 = tensor.cast %21 : tensor<f16> to tensor<f16>
        %295 = arith.minui %c709515696_i64, %c709515696_i64 : i64
        %296 = arith.negf %cst_0 : f16
        %297 = index.casts %c12 : index to i32
        memref.copy %89, %197 : memref<9xi16> to memref<9xi16>
        %splat_49 = tensor.splat %cst : tensor<9xf32>
        %298 = vector.broadcast %c709515696_i64 : i64 to vector<13xi64>
        %299 = vector.maskedload %alloc_15[%c5], %182, %298 : memref<9xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
        %300 = index.floordivs %c9, %c11
        %301 = arith.mulf %cst, %cst : f32
        %302 = vector.multi_reduction <and>, %129, %c709515696_i64 [0] : vector<9xi64> to i64
        scf.yield %c17411_i16 : i16
      }
      %259 = index.sub %179, %202
      %260 = math.round %from_elements : tensor<9xf16>
      %261 = affine.if affine_set<(d0, d1) : (-(d0 * 2 - d0 ceildiv 32) - 64 == 0, d0 - 8 >= 0, -(d0 * 2 - d0 ceildiv 32) - 64 == 0)>(%c10, %c2) -> i64 {
        %287 = index.mul %159, %c1
        memref.store %true, %alloc_8[%c2, %c1, %c0] : memref<3x9x3xi1>
        memref.copy %89, %197 : memref<9xi16> to memref<9xi16>
        %288 = index.mul %127, %68
        %289 = math.atan %3 : tensor<9xf16>
        %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
        %290 = vector.insert %99, %57 [6] : f16 into vector<9xf16>
        %collapsed_48 = tensor.collapse_shape %from_elements_33 [[0, 1], [2]] : tensor<3x9x3xi32> into tensor<27x3xi32>
        affine.yield %c709515696_i64 : i64
      } else {
        %287 = vector.broadcast %true : i1 to vector<3xi1>
        %288 = vector.maskedload %alloc_19[%c0], %287, %176 : memref<9xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %289 = math.fpowi %from_elements_37, %10 : tensor<13xf16>, tensor<13xi32>
        %290 = index.maxu %c3, %45
        %291 = index.casts %extracted : i16 to index
        %292 = bufferization.clone %70 : memref<9xf16> to memref<9xf16>
        %293 = arith.maxsi %true, %false : i1
        %294 = index.divs %c11, %44
        %295 = vector.broadcast %c709515696_i64 : i64 to vector<i64>
        %296 = vector.transfer_write %295, %102[%c7, %153] : vector<i64>, tensor<3x3xi64>
        affine.yield %c709515696_i64 : i64
      }
      affine.for %arg3 = 0 to 100 {
      }
      %262 = arith.mulf %cst_1, %cst_3 : f16
      %263 = math.round %cst_0 : f16
      %264 = arith.minui %true, %true_4 : i1
      %265 = vector.insertelement %cst_2, %85[%c8 : index] : vector<13xf32>
      bufferization.dealloc_tensor %4 : tensor<9xi32>
      %266 = arith.divui %c1636041013_i32, %c0_i32_38 : i32
      %267 = arith.cmpf ord, %99, %cst_3 : f16
      %cst_45 = arith.constant 1.000000e+00 : f16
      %268 = vector.transfer_read %3[%c1], %cst_45 : tensor<9xf16>, vector<f16>
      %269 = math.copysign %cst_3, %cst_3 : f16
      %270 = arith.cmpf false, %cst_1, %cst_3 : f16
      %271 = math.ctpop %c709515696_i64 : i64
      %272 = math.ipowi %c-32218_i16, %c-32218_i16 : i16
      %273 = math.tan %15 : tensor<3x9x3xf16>
      %274 = arith.addf %cst, %cst : f32
      %275 = index.divu %93, %rank
      %276 = index.sub %178, %rank
      %277 = index.castu %c17411_i16 : i16 to index
      %278 = math.log1p %19 : tensor<9xf16>
      %279 = bufferization.to_memref %10 : memref<13xi32>
      %280 = arith.maxf %cst, %152 : f32
      %281 = scf.while (%arg3 = %56) : (vector<9xi1>) -> vector<9xi1> {
        %287 = vector.transpose %182, [0] : vector<13xi1> to vector<13xi1>
        %288 = arith.mulf %cst_2, %cst_2 : f32
        %289 = bufferization.to_memref %cast : memref<?x?x?xi32>
        %290 = tensor.empty() : tensor<3x3xi64>
        %291 = linalg.matmul ins(%102, %102 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%290 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %292 = math.log10 %8 : tensor<13xf32>
        %293 = vector.multi_reduction <add>, %85, %84 [] : vector<13xf32> to vector<13xf32>
        %294 = math.fma %cst_0, %99, %cst_3 : f16
        %295 = bufferization.to_tensor %alloc_13 : memref<13xi16>
        scf.condition(%true_4) %56 : vector<9xi1>
      } do {
      ^bb0(%arg3: vector<9xi1>):
        %287 = index.sub %c8, %179
        %288 = vector.maskedload %alloc[%c6], %182, %182 : memref<9xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %289 = vector.multi_reduction <minui>, %129, %c709515696_i64 [0] : vector<9xi64> to i64
        %290 = vector.transpose %61, [0] : vector<9xi64> to vector<9xi64>
        %291 = math.log1p %9 : tensor<3x9x3xf32>
        %292 = vector.broadcast %c0_i32_38 : i32 to vector<9xi32>
        %293 = vector.gather %3[%90] [%292], %56, %55 : tensor<9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %294 = bufferization.clone %alloc_12 : memref<13xi64> to memref<13xi64>
        %295 = arith.maxsi %extracted, %c17411_i16 : i16
        %296 = vector.gather %2[%c15] [%292], %56, %61 : tensor<9xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %297 = memref.load %70[%c5] : memref<9xf16>
        %298 = index.ceildivs %45, %68
        %299 = math.atan %9 : tensor<3x9x3xf32>
        %300 = arith.minui %c1005151537_i32, %c0_i32_38 : i32
        %301 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %302 = vector.fma %301, %301, %145 : vector<9xf32>
        %expanded = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<3x9x3xi16> into tensor<3x9x3x1xi16>
        %splat_48 = tensor.splat %cst_1 : tensor<3x9x3xf16>
        scf.yield %56 : vector<9xi1>
      }
      %alloc_46 = memref.alloc() : memref<3x9xf32>
      %282 = tensor.empty() : tensor<27x9xf32>
      %283 = linalg.matmul ins(%collapsed, %alloc_46 : tensor<27x3xf32>, memref<3x9xf32>) outs(%282 : tensor<27x9xf32>) -> tensor<27x9xf32>
      %284 = arith.negf %cst : f32
      %splat_47 = tensor.splat %cst_2 : tensor<13xf32>
      %285 = math.ctlz %0 : tensor<9xi64>
      %286 = math.fma %cst_3, %cst_45, %cst_3 : f16
      linalg.yield %out : i32
    } -> tensor<3x9x3xi32>
    %213 = math.exp %12 : tensor<9xf32>
    %214 = vector.broadcast %107 : i32 to vector<9xi32>
    %215 = vector.gather %12[%93] [%214], %56, %144 : tensor<9xf32>, vector<9xi32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
    %216 = arith.floordivsi %c1636041013_i32, %c1636041013_i32 : i32
    %217 = arith.minui %c0_i32, %c0_i32_38 : i32
    %218 = vector.load %46[%c3] : memref<13xi64>, vector<13xi64>
    %219 = vector.broadcast %c1005151537_i32 : i32 to vector<9xi32>
    %220 = arith.negf %cst_2 : f32
    affine.for %arg3 = 0 to 86 {
    }
    %221 = arith.addi %c887830254_i32, %c0_i32_38 : i32
    %222 = vector.broadcast %true : i1 to vector<9xi1>
    %223 = vector.broadcast %152 : f32 to vector<9xf32>
    %224 = vector.fma %223, %223, %145 : vector<9xf32>
    %225 = math.log10 %6 : tensor<13xf32>
    memref.tensor_store %6, %alloc_31 : memref<13xf32>
    %226 = math.exp %from_elements : tensor<9xf16>
    %227 = math.round %8 : tensor<13xf32>
    %228 = arith.shrsi %c17411_i16, %c-19590_i16 : i16
    %229 = arith.minsi %true, %true_4 : i1
    %230 = vector.matrix_multiply %165, %165 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
    %231 = math.tan %20 : tensor<f16>
    %232 = arith.subi %c1005151537_i32, %c1636041013_i32 : i32
    %233 = vector.shuffle %57, %230 [0, 1, 4, 6, 8] : vector<9xf16>, vector<1xf16>
    %234 = math.ctpop %c1636041013_i32 : i32
    %235 = arith.addf %cst_0, %99 : f16
    %236 = vector.shuffle %223, %84 [0, 2, 4, 5, 6, 9, 11, 12, 16, 21] : vector<9xf32>, vector<13xf32>
    %237 = bufferization.to_tensor %alloc_5 : memref<13xi1>
    %238 = math.atan %cst_0 : f16
    %239 = arith.divsi %extracted, %c17411_i16 : i16
    %240 = arith.mulf %cst_3, %cst_0 : f16
    scf.execute_region {
      %257 = bufferization.clone %alloc_15 : memref<9xi64> to memref<9xi64>
      %alloca_45 = memref.alloca() : memref<3x9x3xf32>
      %258 = vector.transpose %214, [0] : vector<9xi32> to vector<9xi32>
      %259 = bufferization.clone %136 : memref<9xi1> to memref<9xi1>
      %260 = arith.maxui %c0_i32, %107 : i32
      %261 = vector.broadcast %c887830254_i32 : i32 to vector<3x9x3xi32>
      %rank_46 = tensor.rank %13 : tensor<9xi16>
      %collapsed_47 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x9x3xi32> into tensor<27x3xi32>
      scf.if %true_4 {
        %269 = math.cttz %from_elements_33 : tensor<3x9x3xi32>
        %270 = vector.matrix_multiply %145, %215 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
        memref.assume_alignment %alloc_6, 4 : memref<9xf16>
        %271 = math.floor %15 : tensor<3x9x3xf16>
        %272 = arith.ceildivsi %c887830254_i32, %c0_i32 : i32
        %273 = vector.insertelement %cst, %85[%72 : index] : vector<13xf32>
        %274 = math.fma %12, %12, %52 : tensor<9xf32>
        %275 = index.floordivs %c1, %rank_46
      }
      %262 = math.tan %cst_3 : f16
      %263 = affine.min affine_map<(d0, d1) -> (-(d0 + 32), -(d0 + 32), d1 - (d0 + 32) * 129 + 8, d1 + 136)>(%154, %c2)
      %264 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d1 + 1 + 32, d1 * -32 - 2)>(%77, %62, %151, %179)
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %183, %183, %c887830254_i32 : vector<13xi32>, vector<13xi32> into i32
      %266 = vector.reduction <maxf>, %215 : vector<9xf32> into f32
      %267 = affine.min affine_map<(d0) -> (d0, d0 ceildiv 32, (-d0) mod 2, d0 ceildiv 32)>(%c7)
      %268 = arith.shrsi %c1005151537_i32, %c1005151537_i32 : i32
      scf.yield
    }
    memref.copy %alloc_17, %alloc_6 : memref<9xf16> to memref<9xf16>
    %241 = vector.transpose %144, [0] : vector<9xf32> to vector<9xf32>
    %242 = bufferization.clone %150 : memref<27x3xf32> to memref<27x3xf32>
    %243 = vector.broadcast %99 : f16 to vector<3x3xf16>
    %244 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %57, %67, %243 : vector<9xf16>, vector<3x9x3xf16> into vector<3x3xf16>
    %245 = arith.addf %99, %cst_3 : f16
    %cast_42 = tensor.cast %from_elements_26 : tensor<3x9x3xi32> to tensor<?x?x?xi32>
    bufferization.dealloc_tensor %from_elements_27 : tensor<9xi64>
    %246 = vector.gather %alloc_17[%c11] [%219], %56, %165 : memref<9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
    %247 = scf.execute_region -> i32 {
      %splat_45 = tensor.splat %cst : tensor<3x9x3xf32>
      %257 = math.ceil %15 : tensor<3x9x3xf16>
      %258 = arith.divui %c0_i32_38, %c1005151537_i32 : i32
      %259 = vector.broadcast %152 : f32 to vector<13xf32>
      %260 = vector.fma %259, %84, %259 : vector<13xf32>
      %261 = arith.xori %c17411_i16, %c-32218_i16 : i16
      %262 = vector.broadcast %cst_0 : f16 to vector<13xf16>
      %263 = vector.gather %19[%c2] [%183], %182, %262 : tensor<9xf16>, vector<13xi32>, vector<13xi1>, vector<13xf16> into vector<13xf16>
      %264 = math.round %15 : tensor<3x9x3xf16>
      %265 = vector.bitcast %67 : vector<3x9x3xf16> to vector<3x9x3xf16>
      %266 = index.divs %c7, %44
      %267 = index.mul %c6, %c7
      %268 = vector.broadcast %false : i1 to vector<3xi1>
      %269 = vector.maskedload %alloc_20[%c8], %268, %18 : memref<9xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %270 = math.round %21 : tensor<f16>
      memref.copy %alloc_7, %alloc_15 : memref<9xi64> to memref<9xi64>
      %271 = math.log1p %20 : tensor<f16>
      %272 = arith.maxsi %c887830254_i32, %107 : i32
      %cst_46 = arith.constant 1.000000e+00 : f32
      %273 = vector.transfer_read %150[%26, %c8], %cst_46 : memref<27x3xf32>, vector<f32>
      scf.yield %c887830254_i32 : i32
    }
    %collapsed_43 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x9x3xi32> into tensor<27x3xi32>
    %alloca_44 = memref.alloca() : memref<3x9x3xi32>
    %248 = math.fma %from_elements_37, %from_elements_37, %from_elements_37 : tensor<13xf16>
    %249 = arith.shrui %c887830254_i32, %c0_i32 : i32
    %250 = arith.negf %99 : f16
    %251 = tensor.empty() : tensor<9xi16>
    %252 = linalg.copy ins(%splat : tensor<9xi16>) outs(%251 : tensor<9xi16>) -> tensor<9xi16>
    %253 = tensor.empty() : tensor<13xf16>
    %transposed = linalg.transpose ins(%from_elements_37 : tensor<13xf16>) outs(%253 : tensor<13xf16>) permutation = [0] 
    %254 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%alloc_17 : memref<9xf16>) outs(%254 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %257 = bufferization.clone %alloc_17 : memref<9xf16> to memref<9xf16>
        %258 = index.maxu %c6, %c13
        %259 = arith.addi %c887830254_i32, %c1636041013_i32 : i32
        %260 = arith.muli %c0_i32, %c0_i32 : i32
        %false_45 = arith.constant false
        %261 = vector.transfer_read %alloc[%151], %false_45 : memref<9xi1>, vector<i1>
        %262 = vector.gather %19[%77] [%219], %222, %165 : tensor<9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %263 = affine.min affine_map<(d0) -> (d0 floordiv 8 + 1, d0 floordiv 8)>(%c7)
        %264 = scf.while (%arg3 = %true_4) : (i1) -> i1 {
          %alloca_47 = memref.alloca() : memref<13xi64>
          %265 = math.log10 %12 : tensor<9xf32>
          %266 = vector.create_mask %44 : vector<9xi1>
          %267 = vector.load %alloc_7[%c5] : memref<9xi64>, vector<9xi64>
          %268 = arith.maxf %cst_2, %152 : f32
          %269 = vector.load %257[%c4] : memref<9xf16>, vector<9xf16>
          %cst_48 = arith.constant 1.000000e+00 : f32
          %cst_49 = arith.constant 0.000000e+00 : f32
          %270 = vector.transfer_read %alloc_31[%44], %cst_49 : memref<13xf32>, vector<f32>
          %alloca_50 = memref.alloca() : memref<13xf32>
          scf.condition(%true) %false : i1
        } do {
        ^bb0(%arg3: i1):
          %265 = index.mul %c15, %c0
          %266 = math.cttz %from_elements_29 : tensor<9xi1>
          %267 = math.log10 %3 : tensor<9xf16>
          %268 = vector.broadcast %c10 : index to vector<13xindex>
          vector.scatter %alloc[%c0] [%268], %182, %182 : memref<9xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
          %269 = arith.maxsi %c887830254_i32, %c1005151537_i32 : i32
          %270 = vector.load %alloc_18[%c4] : memref<9xf16>, vector<9xf16>
          %271 = math.round %152 : f32
          %alloca_47 = memref.alloca() : memref<9xi32>
          %272 = arith.subi %true, %false_45 : i1
          %273 = arith.divf %cst_3, %cst_0 : f16
          %274 = vector.insert %cst, %84 [7] : f32 into vector<13xf32>
          %275 = arith.maxsi %c1636041013_i32, %107 : i32
          %276 = math.ipowi %from_elements_29, %11 : tensor<9xi1>
          %277 = arith.andi %247, %c0_i32 : i32
          %278 = arith.remf %152, %152 : f32
          %279 = math.copysign %init, %cst_3 : f16
          scf.yield %false_45 : i1
        }
        %cst_46 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_46 : f16
      }
    %255 = scf.parallel (%arg3) = (%159) to (%62) step (%c8) init (%2) -> tensor<9xi64> {
      %257 = vector.transpose %111, [1, 2, 0] : vector<3x9x3xf32> to vector<9x3x3xf32>
      %258 = vector.broadcast %c887830254_i32 : i32 to vector<3xi32>
      %259 = vector.broadcast %true : i1 to vector<3xi1>
      %260 = vector.maskedload %alloc_9[%c6], %259, %258 : memref<13xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
      %261 = arith.muli %true_4, %true_4 : i1
      %262 = index.floordivs %c6, %77
      %extracted_45 = tensor.extract %237[%c2] : tensor<13xi1>
      %263 = math.tan %99 : f16
      %264 = math.exp %99 : f16
      %265 = math.powf %cst_0, %99 : f16
      %266 = math.ctpop %0 : tensor<9xi64>
      %267 = arith.maxsi %false, %true_4 : i1
      %268 = math.log10 %21 : tensor<f16>
      %269 = vector.bitcast %259 : vector<3xi1> to vector<3xi1>
      %splat_46 = tensor.splat %true_4 : tensor<3x9x3xi1>
      %270 = affine.for %arg4 = 0 to 32 iter_args(%arg5 = %6) -> (tensor<13xf32>) {
        affine.yield %arg5 : tensor<13xf32>
      }
      %271 = vector.broadcast %cst : f32 to vector<13xf32>
      %272 = vector.fma %271, %84, %85 : vector<13xf32>
      %273 = math.atan %8 : tensor<13xf32>
      %274 = tensor.empty() : tensor<9xi64>
      scf.reduce(%274)  : tensor<9xi64> {
      ^bb0(%arg4: tensor<9xi64>, %arg5: tensor<9xi64>):
        %275 = math.atan %cst_2 : f32
        %collapsed_47 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x9x3xf32> into tensor<27x3xf32>
        %276 = arith.xori %c887830254_i32, %107 : i32
        %277 = vector.extract_strided_slice %113 {offsets = [0, 7], sizes = [1, 1], strides = [1, 1]} : vector<3x9x3xf32> to vector<1x1x3xf32>
        %278 = vector.broadcast %cst : f32 to vector<9x3xf32>
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %113, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<3x9x3xf32>, vector<9x3xf32>
        %279 = vector.gather %9[%127, %c6, %91] [%112], %105, %113 : tensor<3x9x3xf32>, vector<3x9x3xi32>, vector<3x9x3xi1>, vector<3x9x3xf32> into vector<3x9x3xf32>
        %280 = vector.flat_transpose %84 {columns = 13 : i32, rows = 1 : i32} : vector<13xf32> -> vector<13xf32>
        %281 = arith.muli %c17411_i16, %c26906_i16 : i16
        %282 = tensor.empty() : tensor<9xi64>
        scf.reduce.return %282 : tensor<9xi64>
      }
      scf.yield
    }
    %256 = affine.vector_load %alloc_12[%26] : memref<13xi64>, vector<9xi64>
    affine.vector_store %56, %alloc_5[%c3] : memref<13xi1>, vector<9xi1>
    vector.print %18 : vector<3xf16>
    vector.print %27 : vector<3x9x3xi1>
    vector.print %35 : vector<1xf16>
    vector.print %36 : vector<1xf16>
    vector.print %55 : vector<9xf16>
    vector.print %56 : vector<9xi1>
    vector.print %57 : vector<9xf16>
    vector.print %60 : vector<9xi64>
    vector.print %61 : vector<9xi64>
    vector.print %67 : vector<3x9x3xf16>
    vector.print %74 : vector<9xi16>
    vector.print %84 : vector<13xf32>
    vector.print %85 : vector<13xf32>
    vector.print %105 : vector<3x9x3xi1>
    vector.print %111 : vector<3x9x3xf32>
    vector.print %112 : vector<3x9x3xi32>
    vector.print %113 : vector<3x9x3xf32>
    vector.print %129 : vector<9xi64>
    vector.print %144 : vector<9xf32>
    vector.print %145 : vector<9xf32>
    vector.print %165 : vector<9xf16>
    vector.print %172 : vector<i16>
    vector.print %176 : vector<3xf16>
    vector.print %181 : vector<13xi32>
    vector.print %182 : vector<13xi1>
    vector.print %183 : vector<13xi32>
    vector.print %203 : vector<f16>
    vector.print %214 : vector<9xi32>
    vector.print %215 : vector<9xf32>
    vector.print %218 : vector<13xi64>
    vector.print %219 : vector<9xi32>
    vector.print %222 : vector<9xi1>
    vector.print %223 : vector<9xf32>
    vector.print %224 : vector<9xf32>
    vector.print %230 : vector<1xf16>
    vector.print %246 : vector<9xf16>
    vector.print %256 : vector<9xi64>
    vector.print %c887830254_i32 : i32
    vector.print %c1005151537_i32 : i32
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c709515696_i64 : i64
    vector.print %c-32218_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c1636041013_i32 : i32
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %false : i1
    vector.print %c-19590_i16 : i16
    vector.print %true_4 : i1
    vector.print %c17411_i16 : i16
    vector.print %c26906_i16 : i16
    vector.print %extracted : i16
    vector.print %c0_i32 : i32
    vector.print %99 : f16
    vector.print %107 : i32
    vector.print %152 : f32
    vector.print %c0_i32_38 : i32
    vector.print %247 : i32
    return %5 : tensor<9xi1>
  }
}
