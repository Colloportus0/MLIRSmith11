module {
  func.func nested @func1() -> tensor<2x1x1xi16> {
    %cst = arith.constant 5.411200e+04 : f16
    %c31184_i16 = arith.constant 31184 : i16
    %c17914_i16 = arith.constant 17914 : i16
    %cst_0 = arith.constant 0x4DC925AC : f32
    %c929795662_i32 = arith.constant 929795662 : i32
    %c6011_i16 = arith.constant 6011 : i16
    %cst_1 = arith.constant 0x4C3E96E3 : f32
    %c-699_i16 = arith.constant -699 : i16
    %cst_2 = arith.constant 1.632800e+04 : f16
    %false = arith.constant false
    %c336124344_i64 = arith.constant 336124344 : i64
    %cst_3 = arith.constant 1.48935462E+9 : f32
    %c856935031_i32 = arith.constant 856935031 : i32
    %c1680097510_i64 = arith.constant 1680097510 : i64
    %cst_4 = arith.constant 4.723200e+04 : f16
    %true = arith.constant true
    %0 = tensor.empty() : tensor<2x1x1xi32>
    %1 = tensor.empty() : tensor<1x1xi32>
    %2 = tensor.empty() : tensor<1x1xf16>
    %3 = tensor.empty() : tensor<2x1x1xi64>
    %4 = tensor.empty() : tensor<2x1x1xi1>
    %5 = tensor.empty() : tensor<1x1x3xi64>
    %6 = tensor.empty() : tensor<1x1x3xi64>
    %7 = tensor.empty() : tensor<1x1xi64>
    %8 = tensor.empty() : tensor<1x1xi32>
    %9 = tensor.empty() : tensor<1x1xf16>
    %10 = tensor.empty() : tensor<1x1xf16>
    %11 = tensor.empty() : tensor<1x1xf16>
    %12 = tensor.empty() : tensor<1x1xi32>
    %13 = tensor.empty() : tensor<1x1x3xi32>
    %14 = tensor.empty() : tensor<1x1x3xi64>
    %15 = tensor.empty() : tensor<3xi1>
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
    %alloc = memref.alloc() : memref<1x1x3xi64>
    %alloc_5 = memref.alloc() : memref<3xi16>
    %alloc_6 = memref.alloc() : memref<1x1xi64>
    %alloc_7 = memref.alloc() : memref<1x1xf16>
    %alloc_8 = memref.alloc() : memref<2x1x1xf16>
    %alloc_9 = memref.alloc() : memref<2x1x1xf16>
    %alloc_10 = memref.alloc() : memref<1x1x3xi64>
    %alloc_11 = memref.alloc() : memref<1x1x3xi32>
    %alloc_12 = memref.alloc() : memref<2x1x1xi32>
    %alloc_13 = memref.alloc() : memref<3xf32>
    %alloc_14 = memref.alloc() : memref<1x1xi64>
    %alloc_15 = memref.alloc() : memref<2x1x1xf16>
    %alloc_16 = memref.alloc() : memref<3xi64>
    %alloc_17 = memref.alloc() : memref<2x1x1xi16>
    %alloc_18 = memref.alloc() : memref<1x1x3xf32>
    %alloc_19 = memref.alloc() : memref<3xi16>
    %16 = tensor.empty() : tensor<1x1xi32>
    %17 = linalg.copy ins(%8 : tensor<1x1xi32>) outs(%16 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %18 = tensor.empty() : tensor<1x1xi32>
    %transposed = linalg.transpose ins(%16 : tensor<1x1xi32>) outs(%18 : tensor<1x1xi32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%alloc_5 : memref<3xi16>) outs(%19 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %266 = math.fpowi %10, %18 : tensor<1x1xf16>, tensor<1x1xi32>
        %267 = affine.if affine_set<(d0) : (-d0 >= 0, d0 == 0)>(%c12) -> memref<3xi1> {
          %275 = arith.remui %c17914_i16, %init : i16
          %276 = math.sqrt %9 : tensor<1x1xf16>
          %277 = vector.broadcast %c336124344_i64 : i64 to vector<1xi64>
          %278 = vector.multi_reduction <minui>, %277, %277 [] : vector<1xi64> to vector<1xi64>
          %279 = index.casts %c0 : index to i32
          %280 = math.log1p %11 : tensor<1x1xf16>
          %281 = arith.divf %cst_0, %cst_0 : f32
          %282 = arith.maxsi %c31184_i16, %c6011_i16 : i16
          %283 = affine.min affine_map<(d0, d1, d2) -> (d0, d2 floordiv 128 - d1, 0)>(%c6, %c14, %c14)
          %alloc_40 = memref.alloc() : memref<3xi1>
          affine.yield %alloc_40 : memref<3xi1>
        } else {
          %275 = vector.broadcast %false : i1 to vector<1xi1>
          %276 = vector.matrix_multiply %275, %275 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %277 = arith.divf %cst, %cst_4 : f16
          %splat_40 = tensor.splat %c6011_i16 : tensor<1x1xi16>
          %278 = arith.divf %cst_2, %cst_4 : f16
          %279 = affine.min affine_map<(d0, d1, d2) -> ((d2 + d0 mod 64) mod 16)>(%c12, %c10, %c15)
          %280 = vector.insert %true, %275 [0] : i1 into vector<1xi1>
          %281 = vector.broadcast %c336124344_i64 : i64 to vector<3xi64>
          %282 = vector.broadcast %false : i1 to vector<3xi1>
          %283 = vector.maskedload %alloc_6[%c0, %c0], %282, %281 : memref<1x1xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
          %284 = vector.insert %false, %275 [0] : i1 into vector<1xi1>
          %alloc_41 = memref.alloc() : memref<3xi1>
          affine.yield %alloc_41 : memref<3xi1>
        }
        %268 = vector.broadcast %c6011_i16 : i16 to vector<2xi16>
        %269 = vector.broadcast %false : i1 to vector<2xi1>
        %270 = vector.maskedload %alloc_17[%c0, %c0, %c0], %269, %268 : memref<2x1x1xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %cast_39 = tensor.cast %16 : tensor<1x1xi32> to tensor<?x?xi32>
        %271 = math.fma %9, %10, %11 : tensor<1x1xf16>
        %272 = arith.muli %c31184_i16, %in : i16
        %273 = math.tanh %11 : tensor<1x1xf16>
        %274 = arith.divf %cst_1, %cst_3 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %20 = scf.parallel (%arg0) = (%c12) to (%c8) step (%c14) init (%cst_1) -> f32 {
      %266 = index.casts %c1 : index to i32
      %alloc_39 = memref.alloc() : memref<1x1xf16>
      memref.copy %alloc_7, %alloc_39 : memref<1x1xf16> to memref<1x1xf16>
      %267 = math.tanh %cst_0 : f32
      %268 = vector.broadcast %true : i1 to vector<1x1xi1>
      %269 = vector.broadcast %cst_3 : f32 to vector<1x1x3xf32>
      %270 = vector.fma %269, %269, %269 : vector<1x1x3xf32>
      %271 = math.log %2 : tensor<1x1xf16>
      %272 = arith.floordivsi %c336124344_i64, %c1680097510_i64 : i64
      %273 = math.sqrt %cst_2 : f16
      %274 = index.divs %c14, %c5
      %275 = arith.muli %c6011_i16, %c31184_i16 : i16
      %276 = arith.divf %cst_3, %cst_3 : f32
      %277 = vector.splat %c856935031_i32 : vector<1x1xi32>
      %278 = math.absi %14 : tensor<1x1x3xi64>
      %279 = arith.remf %cst_3, %cst_1 : f32
      %280 = vector.create_mask %c2, %274, %c5 : vector<2x1x1xi1>
      %281 = index.mul %c14, %c2
      %282 = vector.shuffle %269, %269 [0, 1] : vector<1x1x3xf32>, vector<1x1x3xf32>
      %cst_40 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_40)  : f32 {
      ^bb0(%arg1: f32, %arg2: f32):
        %283 = math.fpowi %cst_4, %c856935031_i32 : f16, i32
        %extracted_41 = tensor.extract %1[%c0, %c0] : tensor<1x1xi32>
        %true_42 = index.bool.constant true
        %284 = arith.maxf %arg1, %cst_3 : f32
        %285 = index.sizeof
        %286 = arith.maxf %cst_3, %arg1 : f32
        %287 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %288 = vector.reduction <mul>, %287 : vector<1xf16> into f16
        %289 = math.ceil %cst_40 : f32
        %cst_43 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_43 : f32
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_16[%c11] : memref<3xi64>, vector<3xi64>
    affine.vector_store %21, %alloc_6[%c12, %c15] : memref<1x1xi64>, vector<3xi64>
    %alloc_20 = memref.alloc() : memref<3xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%alloc_13, %alloc_20 : memref<3xf32>, memref<3xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = tensor.empty() : tensor<3xf32>
    %mapped = linalg.map ins(%alloc_20 : memref<3xf32>) outs(%24 : tensor<3xf32>)
      (%in: f32) {
        %266 = math.round %24 : tensor<3xf32>
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 4, d2 - 4)>(%c5, %c5, %c3, %c1)
        %268 = memref.alloca_scope  -> (memref<2x1x1xi16>) {
          %292 = arith.mulf %cst_2, %cst_4 : f16
          %293 = math.floor %9 : tensor<1x1xf16>
          %294 = index.mul %267, %c5
          %295 = math.powf %9, %2 : tensor<1x1xf16>
          %296 = arith.negf %cst_1 : f32
          %297 = math.powf %11, %9 : tensor<1x1xf16>
          %298 = vector.broadcast %c12 : index to vector<3xindex>
          %299 = vector.broadcast %true : i1 to vector<3xi1>
          vector.scatter %alloc[%c0, %c0, %c0] [%298], %299, %21 : memref<1x1x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
          %300 = index.divu %c14, %294
          %301 = math.ctpop %19 : tensor<i16>
          %302 = affine.load %alloc[%c8, %c1, %c12] : memref<1x1x3xi64>
          memref.tensor_store %5, %alloc_10 : memref<1x1x3xi64>
          %true_46 = index.bool.constant true
          %303 = arith.floordivsi %c17914_i16, %c31184_i16 : i16
          %304 = math.ctpop %13 : tensor<1x1x3xi32>
          %expanded = tensor.expand_shape %8 [[0], [1, 2]] : tensor<1x1xi32> into tensor<1x1x1xi32>
          %305 = index.divu %c4, %c13
          %rank_47 = tensor.rank %13 : tensor<1x1x3xi32>
          %306 = math.fpowi %cst, %c929795662_i32 : f16, i32
          %307 = math.floor %2 : tensor<1x1xf16>
          %308 = arith.addi %c336124344_i64, %302 : i64
          %inserted_48 = tensor.insert %c1680097510_i64 into %7[%c0, %c0] : tensor<1x1xi64>
          %309 = math.log2 %10 : tensor<1x1xf16>
          %310 = arith.addf %cst, %cst_2 : f16
          %311 = math.round %11 : tensor<1x1xf16>
          %312 = math.powf %cst_0, %cst_1 : f32
          %313 = vector.matrix_multiply %21, %21 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
          %314 = math.absi %8 : tensor<1x1xi32>
          %315 = arith.addf %cst, %cst_2 : f16
          %316 = affine.apply affine_map<(d0, d1) -> (d1)>(%267, %c0)
          %317 = vector.matrix_multiply %21, %21 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
          %318 = math.roundeven %10 : tensor<1x1xf16>
          %319 = arith.minui %false, %true_46 : i1
          memref.alloca_scope.return %alloc_17 : memref<2x1x1xi16>
        }
        %269 = math.absi %transposed : tensor<1x1xi32>
        %270 = math.fma %2, %2, %9 : tensor<1x1xf16>
        %271 = arith.negf %cst_4 : f16
        %272 = affine.if affine_set<(d0, d1) : (0 >= 0, (-d0) ceildiv 2 + d0 == 0, d1 + d1 ceildiv 16 == 0, -((d1 ceildiv 16) ceildiv 64) == 0)>(%c11, %c12) -> memref<1x1x3xi16> {
          %292 = vector.broadcast %true : i1 to vector<1x1x3xi1>
          %293 = math.atan2 %23, %22 : tensor<f32>
          %c0_i64 = arith.constant 0 : i64
          %294 = vector.transfer_read %alloc_14[%c0, %c9], %c0_i64 : memref<1x1xi64>, vector<i64>
          %295 = bufferization.clone %alloc_9 : memref<2x1x1xf16> to memref<2x1x1xf16>
          %296 = vector.extract_strided_slice %292 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1x3xi1> to vector<1x1x3xi1>
          %297 = math.floor %24 : tensor<3xf32>
          %298 = math.absi %7 : tensor<1x1xi64>
          %299 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
          %alloc_46 = memref.alloc() : memref<1x1x3xi16>
          affine.yield %alloc_46 : memref<1x1x3xi16>
        } else {
          %292 = arith.shli %c1680097510_i64, %c1680097510_i64 : i64
          %splat_46 = tensor.splat %c856935031_i32 : tensor<2x1x1xi32>
          %293 = math.sqrt %in : f32
          %294 = arith.remui %c336124344_i64, %c1680097510_i64 : i64
          %295 = arith.shrsi %c6011_i16, %c6011_i16 : i16
          %296 = vector.broadcast %false : i1 to vector<2x1x1xi1>
          %297 = bufferization.to_memref %4 : memref<2x1x1xi1>
          %298 = arith.maxui %c856935031_i32, %c929795662_i32 : i32
          %alloc_47 = memref.alloc() : memref<1x1x3xi16>
          affine.yield %alloc_47 : memref<1x1x3xi16>
        }
        %273 = arith.maxf %cst_1, %cst_3 : f32
        memref.store %cst_1, %alloc_20[%c2] : memref<3xf32>
        %274 = vector.create_mask %c10, %c7, %c13 : vector<1x1x3xi1>
        %275 = arith.xori %c336124344_i64, %c336124344_i64 : i64
        %276 = vector.broadcast %cst_1 : f32 to vector<1x1x3xf32>
        scf.index_switch %c1 
        case 1 {
          %292 = math.atan %cst_1 : f32
          memref.copy %alloc_6, %alloc_14 : memref<1x1xi64> to memref<1x1xi64>
          %293 = memref.atomic_rmw ori %c1680097510_i64, %alloc_16[%c0] : (i64, memref<3xi64>) -> i64
          %294 = math.atan %2 : tensor<1x1xf16>
          %collapsed_46 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<1x1x3xi64> into tensor<1x3xi64>
          %295 = arith.minui %c929795662_i32, %c929795662_i32 : i32
          %true_47 = index.bool.constant true
          %296 = vector.broadcast %c5 : index to vector<1xindex>
          %297 = vector.broadcast %false : i1 to vector<1xi1>
          %298 = vector.broadcast %c31184_i16 : i16 to vector<1xi16>
          vector.scatter %268[%c0, %c0, %c0] [%296], %297, %298 : memref<2x1x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
          %299 = arith.maxsi %c929795662_i32, %c929795662_i32 : i32
          %300 = index.add %c15, %c5
          %301 = memref.realloc %alloc_5 : memref<3xi16> to memref<1xi16>
          %302 = arith.xori %true_47, %false : i1
          %303 = math.exp2 %cst_4 : f16
          %rank_48 = tensor.rank %6 : tensor<1x1x3xi64>
          %304 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
          %305 = math.absi %true_47 : i1
          scf.yield
        }
        default {
          bufferization.dealloc_tensor %13 : tensor<1x1x3xi32>
          %292 = arith.divui %c336124344_i64, %c336124344_i64 : i64
          %293 = math.ctpop %4 : tensor<2x1x1xi1>
          %294 = math.tanh %10 : tensor<1x1xf16>
          %295 = vector.broadcast %cst_3 : f32 to vector<1x1x3xf32>
          %296 = index.sub %c2, %c12
          %297 = vector.insertelement %c336124344_i64, %21[%c3 : index] : vector<3xi64>
          %298 = arith.remsi %c-699_i16, %c6011_i16 : i16
          %299 = math.fma %2, %9, %9 : tensor<1x1xf16>
          %300 = math.powf %cst, %cst : f16
          %301 = math.exp2 %9 : tensor<1x1xf16>
          %302 = arith.ori %c17914_i16, %c-699_i16 : i16
          %303 = index.add %267, %c13
          %304 = vector.transpose %274, [0, 1, 2] : vector<1x1x3xi1> to vector<1x1x3xi1>
          %305 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
          %306 = arith.minsi %c856935031_i32, %c929795662_i32 : i32
        }
        %cast_39 = tensor.cast %4 : tensor<2x1x1xi1> to tensor<?x?x?xi1>
        %277 = bufferization.to_memref %19 : memref<i16>
        %278 = arith.addi %false, %false : i1
        %279 = math.fpowi %cst_2, %c856935031_i32 : f16, i32
        %splat_40 = tensor.splat %c336124344_i64 : tensor<3xi64>
        %280 = arith.muli %false, %false : i1
        %281 = index.divs %c14, %c13
        %282 = vector.broadcast %c17914_i16 : i16 to vector<1xi16>
        %283 = vector.broadcast %false : i1 to vector<1xi1>
        %284 = vector.maskedload %alloc_17[%c1, %c0, %c0], %283, %282 : memref<2x1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %generated_41 = tensor.generate %c15 {
        ^bb0(%arg0: index):
          %292 = math.roundeven %in : f32
          %293 = arith.floordivsi %c336124344_i64, %c1680097510_i64 : i64
          %294 = math.fpowi %11, %18 : tensor<1x1xf16>, tensor<1x1xi32>
          %295 = arith.cmpf oge, %in, %cst_3 : f32
          tensor.yield %false : i1
        } : tensor<?xi1>
        %true_42 = index.bool.constant true
        %cast_43 = tensor.cast %18 : tensor<1x1xi32> to tensor<?x?xi32>
        %285 = index.casts %c336124344_i64 : i64 to index
        %286 = index.divs %c10, %c10
        %287 = math.cttz %1 : tensor<1x1xi32>
        %288 = math.atan2 %in, %cst_3 : f32
        %cast_44 = tensor.cast %12 : tensor<1x1xi32> to tensor<?x?xi32>
        %289 = arith.cmpf une, %cst_0, %cst_1 : f32
        %290 = math.log %cst_0 : f32
        %291 = vector.matrix_multiply %283, %283 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %cst_45 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_45 : f32
      }
    %extracted = tensor.extract %5[%c0, %c0, %c0] : tensor<1x1x3xi64>
    %25 = math.powf %9, %9 : tensor<1x1xf16>
    %26 = memref.realloc %alloc_20 : memref<3xf32> to memref<2xf32>
    %27 = math.ctpop %3 : tensor<2x1x1xi64>
    %28 = memref.atomic_rmw minu %c6011_i16, %alloc_5[%c0] : (i16, memref<3xi16>) -> i16
    %29 = scf.index_switch %c0 -> vector<3xf16> 
    case 1 {
      %266 = math.log10 %cst : f16
      %267 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %268 = vector.shuffle %267, %21 [1, 2, 3, 5] : vector<3xi64>, vector<3xi64>
      %269 = index.mul %c8, %c11
      %270 = arith.divf %cst_2, %cst_4 : f16
      %271 = affine.apply affine_map<(d0, d1, d2) -> (-d0)>(%c12, %c4, %c6)
      %cst_39 = arith.constant 1.000000e+00 : f16
      %272 = vector.transfer_read %alloc_15[%c13, %c3, %c2], %cst_39 : memref<2x1x1xf16>, vector<1x1xf16>
      %273 = math.round %2 : tensor<1x1xf16>
      %cst_40 = arith.constant 1.000000e+00 : f16
      %cst_41 = arith.constant 0.000000e+00 : f16
      %274 = vector.transfer_read %11[%c1, %c15], %cst_41 : tensor<1x1xf16>, vector<f16>
      %275 = arith.remf %cst_3, %cst_0 : f32
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %21, %267, %c1680097510_i64 : vector<3xi64>, vector<3xi64> into i64
      %splat_42 = tensor.splat %cst_39 : tensor<3xf16>
      %277 = math.roundeven %10 : tensor<1x1xf16>
      %rank_43 = tensor.rank %12 : tensor<1x1xi32>
      %278 = index.divs %c0, %c9
      %279 = vector.flat_transpose %267 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %280 = vector.broadcast %cst_39 : f16 to vector<3xf16>
      scf.yield %280 : vector<3xf16>
    }
    default {
      %266 = bufferization.to_memref %4 : memref<2x1x1xi1>
      %267 = memref.load %alloc_15[%c0, %c0, %c0] : memref<2x1x1xf16>
      %268 = tensor.empty() : tensor<1x1xi32>
      %mapped_39 = linalg.map ins(%8 : tensor<1x1xi32>) outs(%268 : tensor<1x1xi32>)
        (%in: i32) {
          %283 = vector.create_mask %c6, %c6, %c10 : vector<1x1x3xi1>
          %284 = math.ctpop %15 : tensor<3xi1>
          %285 = math.round %22 : tensor<f32>
          %286 = arith.addi %c-699_i16, %c6011_i16 : i16
          %287 = index.mul %c14, %c2
          %288 = math.atan %10 : tensor<1x1xf16>
          %289 = math.sqrt %10 : tensor<1x1xf16>
          %290 = arith.divui %in, %in : i32
          %rank_40 = tensor.rank %0 : tensor<2x1x1xi32>
          %291 = vector.transpose %283, [1, 0, 2] : vector<1x1x3xi1> to vector<1x1x3xi1>
          %cast_41 = tensor.cast %3 : tensor<2x1x1xi64> to tensor<?x?x?xi64>
          %292 = affine.load %alloc_19[%c15] : memref<3xi16>
          %293 = math.ipowi %16, %12 : tensor<1x1xi32>
          %294 = vector.extract_strided_slice %21 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi64> to vector<1xi64>
          %295 = vector.broadcast %287 : index to vector<1xindex>
          %296 = vector.broadcast %false : i1 to vector<1xi1>
          vector.scatter %alloc_16[%c1] [%295], %296, %294 : memref<3xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
          %297 = index.divs %c8, %c6
          %298 = math.rsqrt %cst_3 : f32
          %299 = arith.divsi %c336124344_i64, %c336124344_i64 : i64
          %300 = math.tan %cst : f16
          %301 = math.ctlz %13 : tensor<1x1x3xi32>
          %302 = affine.load %alloc_16[%c10] : memref<3xi64>
          %303 = vector.broadcast %cst_1 : f32 to vector<f32>
          vector.transfer_write %303, %alloc_13[%c0] : vector<f32>, memref<3xf32>
          %304 = arith.remsi %c1680097510_i64, %c1680097510_i64 : i64
          %305 = arith.minui %c-699_i16, %c-699_i16 : i16
          %306 = index.mul %c0, %c3
          %307 = math.exp2 %10 : tensor<1x1xf16>
          %308 = memref.load %alloc_17[%c1, %c0, %c0] : memref<2x1x1xi16>
          %309 = arith.cmpf uge, %cst, %cst_4 : f16
          %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %21, %21, %c1680097510_i64 : vector<3xi64>, vector<3xi64> into i64
          %311 = arith.remf %cst, %cst_4 : f16
          %312 = math.copysign %23, %22 : tensor<f32>
          %313 = arith.addf %cst_2, %cst_2 : f16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %269 = tensor.empty() : tensor<i32>
      %270 = math.fpowi %23, %269 : tensor<f32>, tensor<i32>
      %271 = arith.minui %c31184_i16, %c17914_i16 : i16
      %272 = arith.negf %cst_1 : f32
      %273 = index.divs %c7, %c5
      %274 = math.cos %cst : f16
      %275 = arith.negf %cst : f16
      %276 = math.copysign %2, %9 : tensor<1x1xf16>
      affine.store %c336124344_i64, %alloc_14[%c3, %c5] : memref<1x1xi64>
      %277 = vector.extract %21[1] : vector<3xi64>
      %278 = arith.remf %cst_0, %cst_1 : f32
      %279 = vector.reduction <or>, %21 : vector<3xi64> into i64
      %280 = arith.andi %c17914_i16, %c6011_i16 : i16
      %281 = memref.atomic_rmw andi %c17914_i16, %alloc_17[%c0, %c0, %c0] : (i16, memref<2x1x1xi16>) -> i16
      %282 = vector.broadcast %cst_4 : f16 to vector<3xf16>
      scf.yield %282 : vector<3xf16>
    }
    %30 = math.log2 %22 : tensor<f32>
    %31 = math.ipowi %14, %5 : tensor<1x1x3xi64>
    %32 = index.floordivs %c7, %c4
    %33 = arith.cmpf ueq, %cst_4, %cst_4 : f16
    %34 = arith.xori %c1680097510_i64, %c1680097510_i64 : i64
    %35 = index.divs %c11, %c6
    %36 = arith.divui %c856935031_i32, %c856935031_i32 : i32
    %37 = scf.if %true -> (memref<2x1x1xi16>) {
      %266 = vector.broadcast %35 : index to vector<3xindex>
      %267 = vector.broadcast %false : i1 to vector<3xi1>
      %268 = vector.broadcast %cst_1 : f32 to vector<3xf32>
      vector.scatter %alloc_18[%c0, %c0, %c2] [%266], %267, %268 : memref<1x1x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      scf.execute_region {
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %21, %21, %c1680097510_i64 : vector<3xi64>, vector<3xi64> into i64
        %275 = vector.bitcast %21 : vector<3xi64> to vector<3xi64>
        %collapsed_41 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<1x1x3xi64> into tensor<1x3xi64>
        %276 = index.ceildivs %c11, %c12
        %277 = math.ctpop %c6011_i16 : i16
        %278 = vector.bitcast %21 : vector<3xi64> to vector<3xi64>
        %279 = arith.maxsi %c6011_i16, %c31184_i16 : i16
        %cst_42 = arith.constant 1.219200e+04 : f16
        %280 = arith.remf %cst, %cst_2 : f16
        %281 = arith.remsi %true, %false : i1
        %282 = math.ctlz %8 : tensor<1x1xi32>
        %283 = vector.matrix_multiply %21, %275 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
        %splat_43 = tensor.splat %cst_3 : tensor<2x1x1xf32>
        %284 = math.sqrt %cst_2 : f16
        %285 = math.cttz %19 : tensor<i16>
        %alloc_44 = memref.alloc() : memref<1x1x3xi16>
        scf.yield
      }
      %269 = tensor.empty() : tensor<3xi16>
      %mapped_39 = linalg.map ins(%alloc_19, %alloc_19 : memref<3xi16>, memref<3xi16>) outs(%269 : tensor<3xi16>)
        (%in: i16, %in_41: i16) {
          %274 = bufferization.to_tensor %alloc_6 : memref<1x1xi64>
          %275 = math.sqrt %24 : tensor<3xf32>
          %276 = math.roundeven %9 : tensor<1x1xf16>
          %277 = tensor.empty() : tensor<i32>
          %278 = math.fpowi %23, %277 : tensor<f32>, tensor<i32>
          %279 = memref.realloc %alloc_5 : memref<3xi16> to memref<3xi16>
          %280 = math.absi %true : i1
          %splat_42 = tensor.splat %extracted : tensor<3xi64>
          %281 = vector.bitcast %21 : vector<3xi64> to vector<3xi64>
          %282 = arith.xori %c1680097510_i64, %extracted : i64
          %283 = index.sub %c9, %c13
          %284 = memref.atomic_rmw maxf %cst_2, %alloc_9[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
          %285 = math.roundeven %9 : tensor<1x1xf16>
          %286 = tensor.empty() : tensor<1x1xi64>
          %287 = linalg.matmul ins(%7, %274 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%286 : tensor<1x1xi64>) -> tensor<1x1xi64>
          %288 = math.ceil %cst_0 : f32
          %289 = index.mul %c7, %c13
          %290 = index.floordivs %c3, %c12
          %true_43 = arith.constant true
          %291 = index.sizeof
          %292 = math.round %cst : f16
          %293 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
          %294 = vector.fma %293, %293, %293 : vector<1x1xf32>
          %295 = math.ctlz %277 : tensor<i32>
          %296 = index.divs %c0, %c4
          %297 = vector.broadcast %cst_1 : f32 to vector<3xf32>
          %298 = vector.fma %297, %297, %297 : vector<3xf32>
          %299 = arith.shli %in, %in : i16
          %300 = arith.ori %c336124344_i64, %c1680097510_i64 : i64
          %301 = bufferization.clone %alloc_18 : memref<1x1x3xf32> to memref<1x1x3xf32>
          %302 = arith.remf %cst_4, %cst_4 : f16
          %303 = arith.remsi %c-699_i16, %c17914_i16 : i16
          %304 = math.tanh %cst_0 : f32
          %305 = vector.matrix_multiply %281, %281 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
          %306 = arith.divui %c1680097510_i64, %c336124344_i64 : i64
          %307 = tensor.empty() : tensor<1x1xi32>
          %308 = linalg.matmul ins(%8, %16 : tensor<1x1xi32>, tensor<1x1xi32>) outs(%307 : tensor<1x1xi32>) -> tensor<1x1xi32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %270 = math.round %10 : tensor<1x1xf16>
      %271 = math.cos %cst : f16
      %272 = vector.load %alloc_17[%c1, %c0, %c0] : memref<2x1x1xi16>, vector<2x1x1xi16>
      %273 = math.fpowi %cst_3, %c856935031_i32 : f32, i32
      %rank_40 = tensor.rank %14 : tensor<1x1x3xi64>
      scf.yield %alloc_17 : memref<2x1x1xi16>
    } else {
      %266 = arith.ori %c6011_i16, %c6011_i16 : i16
      %267 = index.sub %c10, %c6
      scf.execute_region {
        %extracted_39 = tensor.extract %9[%c0, %c0] : tensor<1x1xf16>
        %273 = math.ceil %10 : tensor<1x1xf16>
        %274 = memref.load %alloc_17[%c0, %c0, %c0] : memref<2x1x1xi16>
        %275 = arith.divf %cst_4, %cst_2 : f16
        %276 = math.fma %cst_1, %cst_1, %cst_3 : f32
        %from_elements_40 = tensor.from_elements %cst_2, %cst_4, %cst_4 : tensor<1x1x3xf16>
        %277 = index.castu %c6 : index to i32
        %278 = index.floordivs %c5, %c14
        %279 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %280 = arith.maxsi %c31184_i16, %c31184_i16 : i16
        %281 = math.log1p %24 : tensor<3xf32>
        %282 = arith.maxsi %true, %false : i1
        %283 = arith.maxui %c1680097510_i64, %c336124344_i64 : i64
        %284 = vector.multi_reduction <maxui>, %279, %c336124344_i64 [0] : vector<3xi64> to i64
        %285 = math.absf %22 : tensor<f32>
        %rank_41 = tensor.rank %2 : tensor<1x1xf16>
        scf.yield
      }
      %268 = vector.extract_strided_slice %21 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi64> to vector<2xi64>
      %269 = math.copysign %2, %2 : tensor<1x1xf16>
      %270 = math.ceil %cst_4 : f16
      %271 = math.cos %23 : tensor<f32>
      %272 = arith.addf %cst_4, %cst_2 : f16
      scf.yield %alloc_17 : memref<2x1x1xi16>
    }
    %38 = math.atan2 %22, %22 : tensor<f32>
    %39 = vector.extract %21[2] : vector<3xi64>
    %40 = scf.execute_region -> vector<3xi16> {
      %266 = arith.divf %cst_3, %cst_3 : f32
      memref.store %cst_3, %alloc_13[%c2] : memref<3xf32>
      %267 = math.floor %23 : tensor<f32>
      %268 = arith.remsi %c17914_i16, %c17914_i16 : i16
      %269 = index.add %c10, %c4
      %270 = vector.extract_strided_slice %21 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi64> to vector<3xi64>
      %271 = arith.subi %c-699_i16, %c-699_i16 : i16
      %272 = arith.cmpf olt, %cst_0, %cst_0 : f32
      %273 = bufferization.clone %alloc_19 : memref<3xi16> to memref<3xi16>
      %274 = math.rsqrt %10 : tensor<1x1xf16>
      %275 = math.atan %9 : tensor<1x1xf16>
      %276 = affine.load %alloc_8[%c7, %c13, %c7] : memref<2x1x1xf16>
      %277 = vector.flat_transpose %270 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %278 = index.maxu %35, %c3
      %279 = math.log10 %23 : tensor<f32>
      %280 = math.cos %276 : f16
      %281 = vector.broadcast %c-699_i16 : i16 to vector<3xi16>
      scf.yield %281 : vector<3xi16>
    }
    %41 = math.tanh %10 : tensor<1x1xf16>
    %42 = vector.matrix_multiply %21, %21 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %43 = index.mul %c10, %c1
    %44 = math.atan2 %cst_4, %cst : f16
    %45 = math.ctlz %c1680097510_i64 : i64
    %46 = arith.cmpf ueq, %cst_0, %cst_1 : f32
    %47 = affine.load %alloc_5[%c1] : memref<3xi16>
    %splat = tensor.splat %cst : tensor<1x1x3xf16>
    %48 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
    %49 = index.floordivs %c4, %c10
    %50 = index.mul %c14, %35
    %51 = scf.if %true -> (memref<1x1xf16>) {
      %266 = vector.reduction <mul>, %42 : vector<1xi64> into i64
      %267 = arith.divf %cst_2, %cst_2 : f16
      %268 = arith.minui %47, %47 : i16
      %inserted_39 = tensor.insert %c1680097510_i64 into %6[%c0, %c0, %c1] : tensor<1x1x3xi64>
      %269 = vector.create_mask %c1, %49 : vector<1x1xi1>
      %270 = math.tanh %11 : tensor<1x1xf16>
      %271 = arith.xori %c17914_i16, %47 : i16
      %272 = vector.reduction <maxui>, %21 : vector<3xi64> into i64
      scf.yield %alloc_7 : memref<1x1xf16>
    } else {
      %266 = vector.extract %21[2] : vector<3xi64>
      %rank_39 = tensor.rank %11 : tensor<1x1xf16>
      %267 = affine.load %alloc_12[%c1, %c0, %c12] : memref<2x1x1xi32>
      %268 = arith.cmpf ueq, %cst, %cst : f16
      %269 = vector.create_mask %50, %c7, %43 : vector<2x1x1xi1>
      %270 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %271 = math.sqrt %2 : tensor<1x1xf16>
      %272 = affine.load %alloc_13[%c5] : memref<3xf32>
      scf.yield %alloc_7 : memref<1x1xf16>
    }
    %52 = arith.remf %cst_2, %cst_2 : f16
    %53 = arith.maxf %cst_1, %cst_1 : f32
    %54 = math.ctpop %12 : tensor<1x1xi32>
    %from_elements = tensor.from_elements %c336124344_i64, %c1680097510_i64, %c1680097510_i64 : tensor<3xi64>
    %55 = arith.remsi %47, %c17914_i16 : i16
    %56 = vector.broadcast %c1680097510_i64 : i64 to vector<1x1x3xi64>
    %57 = arith.maxsi %c6011_i16, %c6011_i16 : i16
    %58 = vector.multi_reduction <maxsi>, %56, %48 [0, 1] : vector<1x1x3xi64> to vector<3xi64>
    %59 = math.tan %24 : tensor<3xf32>
    %60 = arith.andi %c856935031_i32, %c929795662_i32 : i32
    %from_elements_21 = tensor.from_elements %false, %true, %true : tensor<3xi1>
    %61 = math.powf %cst, %cst : f16
    %cast = tensor.cast %23 : tensor<f32> to tensor<f32>
    %62 = arith.minf %cst_1, %cst_3 : f32
    %63 = affine.apply affine_map<(d0) -> ((-d0) floordiv 64)>(%c9)
    %64 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
    %65 = vector.shuffle %48, %48 [3, 4, 5] : vector<3xi64>, vector<3xi64>
    %66 = index.divs %c12, %c9
    %67 = arith.andi %true, %false : i1
    %68 = arith.minui %c31184_i16, %47 : i16
    %69 = math.floor %cst_1 : f32
    %70 = math.ipowi %14, %14 : tensor<1x1x3xi64>
    %71 = arith.remsi %c6011_i16, %c31184_i16 : i16
    %72 = math.absi %c-699_i16 : i16
    scf.if %false {
      %266 = arith.cmpf ogt, %cst_0, %cst_1 : f32
      %267 = arith.maxsi %c856935031_i32, %c856935031_i32 : i32
      %268 = math.ceil %10 : tensor<1x1xf16>
      %269 = math.cttz %3 : tensor<2x1x1xi64>
      %270 = math.log2 %10 : tensor<1x1xf16>
      %271 = math.roundeven %2 : tensor<1x1xf16>
      %true_39 = index.bool.constant true
      %272 = arith.divui %c929795662_i32, %c856935031_i32 : i32
    }
    %73 = vector.broadcast %cst_4 : f16 to vector<f16>
    %74 = vector.transfer_write %73, %2[%c14, %32] : vector<f16>, tensor<1x1xf16>
    %75 = arith.maxsi %extracted, %extracted : i64
    %76 = vector.load %alloc_17[%c0, %c0, %c0] : memref<2x1x1xi16>, vector<3xi16>
    %77 = arith.remui %c929795662_i32, %c929795662_i32 : i32
    %78 = vector.broadcast %cst_0 : f32 to vector<1xf32>
    %79 = vector.broadcast %false : i1 to vector<1xi1>
    %80 = vector.maskedload %alloc_13[%c2], %79, %78 : memref<3xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
    %81 = arith.xori %c31184_i16, %c-699_i16 : i16
    scf.index_switch %49 
    case 1 {
      %rank_39 = tensor.rank %17 : tensor<1x1xi32>
      %rank_40 = tensor.rank %from_elements : tensor<3xi64>
      %266 = math.roundeven %10 : tensor<1x1xf16>
      %alloca = memref.alloca() : memref<1x1x3xi32>
      %267 = memref.atomic_rmw assign %cst, %alloc_7[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
      %268 = vector.extract_strided_slice %80 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %269 = math.tan %9 : tensor<1x1xf16>
      %270 = index.mul %c5, %c11
      %271 = math.sqrt %10 : tensor<1x1xf16>
      %false_41 = index.bool.constant false
      %272 = math.tan %cst_0 : f32
      %273 = math.ctpop %reduced : tensor<i16>
      %274 = vector.transpose %76, [0] : vector<3xi16> to vector<3xi16>
      %275 = scf.index_switch %c13 -> index 
      case 1 {
        %278 = vector.broadcast %c-699_i16 : i16 to vector<1x1xi16>
        %279 = vector.broadcast %c-699_i16 : i16 to vector<1xi16>
        %280 = vector.insert %279, %278 [0] : vector<1xi16> into vector<1x1xi16>
        %from_elements_42 = tensor.from_elements %false_41, %false : tensor<2x1x1xi1>
        %281 = arith.divui %c929795662_i32, %c856935031_i32 : i32
        %282 = index.ceildivs %c0, %c13
        %283 = index.mul %35, %270
        %284 = math.powf %cst_1, %cst_1 : f32
        %splat_43 = tensor.splat %cst_4 : tensor<2x1x1xf16>
        %285 = arith.muli %c929795662_i32, %c856935031_i32 : i32
        %false_44 = index.bool.constant false
        %286 = math.cttz %47 : i16
        memref.assume_alignment %alloc_12, 2 : memref<2x1x1xi32>
        bufferization.dealloc_tensor %2 : tensor<1x1xf16>
        %287 = memref.load %alloc_14[%c0, %c0] : memref<1x1xi64>
        %288 = memref.atomic_rmw maxu %c1680097510_i64, %alloc_16[%c0] : (i64, memref<3xi64>) -> i64
        %289 = math.rsqrt %9 : tensor<1x1xf16>
        scf.yield %c13 : index
      }
      case 2 {
        %278 = vector.broadcast %32 : index to vector<1xindex>
        vector.scatter %alloc_6[%c0, %c0] [%278], %79, %42 : memref<1x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %279 = index.sizeof
        %280 = vector.flat_transpose %64 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %281 = math.atan %10 : tensor<1x1xf16>
        %282 = arith.divui %47, %47 : i16
        %283 = math.round %cst_2 : f16
        %284 = math.floor %splat : tensor<1x1x3xf16>
        %285 = arith.floordivsi %c1680097510_i64, %c336124344_i64 : i64
        %286 = index.divu %c3, %c13
        %287 = arith.andi %false, %true : i1
        %288 = vector.create_mask %c13, %35, %c1 : vector<1x1x3xi1>
        %289 = index.divs %63, %c11
        %alloca_42 = memref.alloca() : memref<1x1x3xf16>
        %290 = arith.andi %47, %c31184_i16 : i16
        %291 = vector.broadcast %cst_3 : f32 to vector<3xf32>
        %292 = vector.fma %291, %291, %291 : vector<3xf32>
        %293 = index.castu %c11 : index to i32
        scf.yield %c1 : index
      }
      default {
        %278 = arith.shrsi %c856935031_i32, %c856935031_i32 : i32
        %279 = affine.load %alloc_7[%c15, %c14] : memref<1x1xf16>
        %280 = vector.broadcast %false_41 : i1 to vector<3xi1>
        %281 = vector.maskedload %alloc_14[%c0, %c0], %280, %21 : memref<1x1xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %282 = math.absf %22 : tensor<f32>
        %283 = index.mul %c14, %35
        %284 = math.ipowi %5, %14 : tensor<1x1x3xi64>
        %285 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        memref.copy %alloc_5, %alloc_19 : memref<3xi16> to memref<3xi16>
        %286 = math.floor %24 : tensor<3xf32>
        %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 8)>(%283, %c10, %c1, %c15)
        %288 = math.fpowi %splat, %13 : tensor<1x1x3xf16>, tensor<1x1x3xi32>
        %289 = math.atan %23 : tensor<f32>
        %290 = math.fma %11, %11, %10 : tensor<1x1xf16>
        %291 = math.cttz %6 : tensor<1x1x3xi64>
        %292 = arith.ori %c-699_i16, %c6011_i16 : i16
        %293 = math.copysign %cst_0, %cst_1 : f32
        scf.yield %rank_40 : index
      }
      %276 = arith.ori %true, %false_41 : i1
      %277 = math.absi %0 : tensor<2x1x1xi32>
      scf.yield
    }
    default {
      %266 = index.divs %c1, %c10
      %267 = math.rsqrt %10 : tensor<1x1xf16>
      %268 = arith.maxf %cst_0, %cst_1 : f32
      %269 = tensor.empty() : tensor<1x1xf16>
      %270 = linalg.matmul ins(%9, %10 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%269 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %271 = math.atan %cst_3 : f32
      %272 = math.ctlz %c-699_i16 : i16
      %from_elements_39 = tensor.from_elements %c6011_i16, %c31184_i16, %c6011_i16 : tensor<3xi16>
      %273 = vector.extract_strided_slice %76 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
      %274 = affine.load %alloc_20[%c14] : memref<3xf32>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 124, d0, d2, d2 mod 8)>(%c13, %c1, %266, %35)
      memref.alloca_scope  {
        %280 = arith.xori %c1680097510_i64, %extracted : i64
        %281 = memref.atomic_rmw assign %c856935031_i32, %alloc_11[%c0, %c0, %c2] : (i32, memref<1x1x3xi32>) -> i32
        memref.assume_alignment %alloc_11, 2 : memref<1x1x3xi32>
        %282 = arith.maxsi %c336124344_i64, %c1680097510_i64 : i64
        %283 = math.atan %cst_0 : f32
        %284 = vector.matrix_multiply %79, %79 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %285 = math.atan2 %274, %cst_3 : f32
        %286 = arith.xori %c336124344_i64, %c1680097510_i64 : i64
        %287 = arith.shrui %extracted, %c336124344_i64 : i64
        %288 = arith.floordivsi %c6011_i16, %c-699_i16 : i16
        %289 = memref.realloc %alloc_19 : memref<3xi16> to memref<3xi16>
        %290 = math.tanh %cst_0 : f32
        %alloca = memref.alloca() : memref<1x1x3xf32>
        %291 = vector.multi_reduction <minsi>, %48, %extracted [0] : vector<3xi64> to i64
        %292 = index.ceildivs %c9, %275
        %293 = affine.load %alloc_6[%c7, %c0] : memref<1x1xi64>
        %294 = index.sub %275, %43
        %295 = vector.broadcast %266 : index to vector<1xindex>
        %296 = vector.broadcast %c6011_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_5[%c2] [%295], %79, %296 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %297 = math.tan %22 : tensor<f32>
        %298 = math.cos %2 : tensor<1x1xf16>
        %299 = math.ipowi %c31184_i16, %c-699_i16 : i16
        %300 = vector.reduction <add>, %80 : vector<1xf32> into f32
        %301 = math.ctpop %5 : tensor<1x1x3xi64>
        %302 = tensor.empty() : tensor<2x1x1xi16>
        %303 = vector.broadcast %true : i1 to vector<3xi1>
        %304 = vector.broadcast %c929795662_i32 : i32 to vector<3xi32>
        %305 = vector.gather %302[%50, %50, %66] [%304], %303, %76 : tensor<2x1x1xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %306 = arith.addf %cst_3, %cst_1 : f32
        %307 = math.fpowi %cst, %c929795662_i32 : f16, i32
        %308 = math.roundeven %11 : tensor<1x1xf16>
        %309 = vector.extract %273[0] : vector<2xi16>
        %310 = arith.remf %cst, %cst : f16
        %311 = arith.andi %false, %true : i1
        %inserted_40 = tensor.insert %cst into %11[%c0, %c0] : tensor<1x1xf16>
        %312 = arith.maxf %cst_2, %cst_4 : f16
      }
      %276 = math.sqrt %2 : tensor<1x1xf16>
      %277 = math.ceil %cst_4 : f16
      %278 = math.atan2 %11, %9 : tensor<1x1xf16>
      %279 = index.floordivs %66, %c13
      affine.for %arg0 = 0 to 50 {
      }
    }
    %82 = vector.broadcast %c0 : index to vector<2xindex>
    %83 = vector.broadcast %true : i1 to vector<2xi1>
    %84 = vector.broadcast %extracted : i64 to vector<2xi64>
    vector.scatter %alloc_14[%c0, %c0] [%82], %83, %84 : memref<1x1xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %85 = memref.atomic_rmw andi %c336124344_i64, %alloc[%c0, %c0, %c1] : (i64, memref<1x1x3xi64>) -> i64
    %86 = index.divs %c4, %63
    %87 = math.tan %11 : tensor<1x1xf16>
    %88 = math.tanh %splat : tensor<1x1x3xf16>
    %89 = math.exp2 %10 : tensor<1x1xf16>
    %90 = arith.floordivsi %extracted, %c1680097510_i64 : i64
    %91 = arith.ori %c31184_i16, %47 : i16
    %92 = math.roundeven %cst_1 : f32
    %93 = arith.addf %cst_4, %cst_4 : f16
    %94 = math.atan %23 : tensor<f32>
    %95 = arith.divf %cst, %cst : f16
    %96 = arith.divsi %c336124344_i64, %c336124344_i64 : i64
    %97 = index.maxs %43, %c14
    %98 = arith.remf %cst_3, %cst_3 : f32
    %99 = math.sqrt %cst_1 : f32
    %100 = scf.execute_region -> index {
      %266 = bufferization.clone %alloc_5 : memref<3xi16> to memref<3xi16>
      memref.copy %alloc_17, %37 : memref<2x1x1xi16> to memref<2x1x1xi16>
      %267 = arith.divf %cst_3, %cst_3 : f32
      %268 = math.powf %cst_4, %cst : f16
      %269 = vector.extract %56[0, 0] : vector<1x1x3xi64>
      scf.execute_region {
        %278 = affine.load %alloc_18[%c2, %c2, %c6] : memref<1x1x3xf32>
        %279 = math.tan %10 : tensor<1x1xf16>
        %280 = index.sub %c14, %c15
        %281 = math.tan %2 : tensor<1x1xf16>
        %282 = math.round %278 : f32
        %283 = math.roundeven %cst_2 : f16
        %284 = math.powf %cst, %cst_4 : f16
        %285 = arith.maxui %c31184_i16, %47 : i16
        %286 = arith.divsi %false, %false : i1
        %287 = math.ctpop %14 : tensor<1x1x3xi64>
        %288 = vector.load %alloc_15[%c0, %c0, %c0] : memref<2x1x1xf16>, vector<1x1xf16>
        %289 = affine.min affine_map<(d0, d1) -> ((-(d0 - d1)) floordiv 16, d1 mod 4)>(%c14, %32)
        %290 = vector.transpose %80, [0] : vector<1xf32> to vector<1xf32>
        %291 = bufferization.to_memref %13 : memref<1x1x3xi32>
        %292 = index.add %c6, %c8
        %293 = math.cttz %5 : tensor<1x1x3xi64>
        scf.yield
      }
      %270 = bufferization.to_tensor %alloc_10 : memref<1x1x3xi64>
      memref.assume_alignment %alloc_15, 2 : memref<2x1x1xf16>
      memref.alloca_scope  {
        %278 = arith.maxf %cst, %cst_2 : f16
        %279 = math.cos %24 : tensor<3xf32>
        %280 = math.ctpop %c31184_i16 : i16
        %281 = vector.extract %64[2] : vector<3xi64>
        %282 = arith.maxf %cst_2, %cst_4 : f16
        %c1123665947_i64 = arith.constant 1123665947 : i64
        %283 = math.sqrt %cst_4 : f16
        %284 = memref.atomic_rmw ori %c17914_i16, %266[%c0] : (i16, memref<3xi16>) -> i16
        %285 = arith.divsi %c17914_i16, %c17914_i16 : i16
        %286 = arith.cmpf une, %cst_4, %cst_4 : f16
        %alloc_39 = memref.alloc() : memref<2x1x1xi16>
        %287 = arith.remsi %c929795662_i32, %c929795662_i32 : i32
        %288 = bufferization.to_tensor %alloc_19 : memref<3xi16>
        %289 = math.rsqrt %22 : tensor<f32>
        %290 = vector.broadcast %c17914_i16 : i16 to vector<3xi16>
        memref.store %47, %alloc_5[%c2] : memref<3xi16>
        %291 = arith.andi %c856935031_i32, %c929795662_i32 : i32
        %292 = index.mul %c0, %c0
        %293 = arith.floordivsi %c-699_i16, %c17914_i16 : i16
        %294 = arith.shrsi %c31184_i16, %47 : i16
        memref.assume_alignment %alloc_14, 4 : memref<1x1xi64>
        %295 = math.powf %24, %24 : tensor<3xf32>
        %296 = index.ceildivu %97, %c11
        %297 = index.ceildivs %50, %66
        %298 = math.sqrt %23 : tensor<f32>
        %299 = arith.divsi %c336124344_i64, %c336124344_i64 : i64
        %300 = vector.load %266[%c2] : memref<3xi16>, vector<2x1x1xi16>
        %301 = vector.insert %extracted, %48 [2] : i64 into vector<3xi64>
        %302 = arith.cmpf ule, %cst_3, %cst_0 : f32
        %303 = index.divs %c5, %66
        %304 = memref.atomic_rmw mulf %cst_2, %alloc_8[%c1, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
        %305 = math.log %cst_4 : f16
      }
      %271 = index.divs %66, %32
      %272 = arith.cmpf false, %cst_3, %cst_3 : f32
      %273 = math.exp2 %2 : tensor<1x1xf16>
      %274 = math.fma %24, %24, %24 : tensor<3xf32>
      %275 = arith.muli %c17914_i16, %c31184_i16 : i16
      %276 = math.rsqrt %2 : tensor<1x1xf16>
      %277 = vector.matrix_multiply %269, %269 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
      scf.yield %c1 : index
    }
    %101 = vector.broadcast %extracted : i64 to vector<1xi64>
    %102 = vector.transfer_write %101, %6[%35, %c6, %35] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<1x1x3xi64>
    %103 = arith.andi %c-699_i16, %c17914_i16 : i16
    %104 = scf.if %false -> (i16) {
      %266 = math.copysign %22, %23 : tensor<f32>
      %267 = affine.min affine_map<(d0) -> (-d0, (d0 floordiv 2) ceildiv 4, -d0, (d0 floordiv 2) floordiv 2)>(%c5)
      %268 = vector.shuffle %21, %42 [3] : vector<3xi64>, vector<1xi64>
      %269 = affine.min affine_map<(d0, d1, d2) -> (d0 * 32 - 16, d0 - (d0 - 128), d0, -d0)>(%c5, %c4, %c7)
      %270 = math.floor %10 : tensor<1x1xf16>
      %271 = bufferization.to_tensor %alloc_15 : memref<2x1x1xf16>
      %272 = math.absi %reduced : tensor<i16>
      %false_39 = index.bool.constant false
      scf.yield %c-699_i16 : i16
    } else {
      %266 = math.ctlz %13 : tensor<1x1x3xi32>
      %267 = index.ceildivs %c3, %c5
      %alloc_39 = memref.alloc() : memref<1x1x3xi1>
      memref.assume_alignment %alloc_18, 2 : memref<1x1x3xf32>
      %268 = math.roundeven %24 : tensor<3xf32>
      %269 = arith.divsi %extracted, %extracted : i64
      %270 = math.ceil %10 : tensor<1x1xf16>
      %271 = vector.load %37[%c1, %c0, %c0] : memref<2x1x1xi16>, vector<2x1x1xi16>
      scf.yield %c17914_i16 : i16
    }
    %105 = arith.maxsi %c336124344_i64, %c1680097510_i64 : i64
    %106 = math.floor %24 : tensor<3xf32>
    %107 = arith.remsi %c856935031_i32, %c856935031_i32 : i32
    %108 = math.ceil %cst_3 : f32
    %109 = tensor.empty() : tensor<1x1xi32>
    %110 = linalg.matmul ins(%18, %1 : tensor<1x1xi32>, tensor<1x1xi32>) outs(%109 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %111 = affine.if affine_set<(d0, d1) : (d1 >= 0, 0 >= 0, (d1 floordiv 4 + d0) * 128 >= 0)>(%c7, %c12) -> memref<1x1x3xi32> {
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %266 = vector.transfer_read %from_elements[%32], %c0_i64 : tensor<3xi64>, vector<i64>
      %267 = arith.remf %cst_2, %cst_4 : f16
      %268 = index.floordivs %100, %c1
      %269 = arith.andi %c929795662_i32, %c929795662_i32 : i32
      %270 = vector.broadcast %97 : index to vector<2xindex>
      %271 = vector.broadcast %true : i1 to vector<2xi1>
      %272 = vector.broadcast %c856935031_i32 : i32 to vector<2xi32>
      vector.scatter %alloc_11[%c0, %c0, %c0] [%270], %271, %272 : memref<1x1x3xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %273 = math.powf %10, %9 : tensor<1x1xf16>
      %274 = vector.multi_reduction <maxf>, %80, %78 [] : vector<1xf32> to vector<1xf32>
      %275 = math.log1p %cst_4 : f16
      affine.yield %alloc_11 : memref<1x1x3xi32>
    } else {
      %266 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      memref.copy %alloc_7, %51 : memref<1x1xf16> to memref<1x1xf16>
      %267 = math.cttz %c856935031_i32 : i32
      %268 = math.ctpop %18 : tensor<1x1xi32>
      %269 = memref.alloca_scope  -> (i64) {
        %273 = arith.remf %cst_0, %cst_3 : f32
        %274 = math.sqrt %10 : tensor<1x1xf16>
        %275 = index.maxu %50, %c2
        %276 = arith.muli %c1680097510_i64, %extracted : i64
        %277 = memref.atomic_rmw andi %c336124344_i64, %alloc_10[%c0, %c0, %c1] : (i64, memref<1x1x3xi64>) -> i64
        %278 = memref.atomic_rmw ori %c1680097510_i64, %alloc_14[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
        %279 = index.add %63, %c2
        %280 = math.ipowi %c6011_i16, %c6011_i16 : i16
        %281 = memref.atomic_rmw maxf %cst_2, %alloc_15[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
        %282 = index.mul %c9, %c11
        %extracted_39 = tensor.extract %14[%c0, %c0, %c0] : tensor<1x1x3xi64>
        %283 = index.add %97, %100
        %284 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %285 = arith.floordivsi %c-699_i16, %47 : i16
        %286 = vector.extract %21[0] : vector<3xi64>
        %from_elements_40 = tensor.from_elements %true, %true, %true : tensor<3xi1>
        %alloca = memref.alloca() : memref<1x1x3xi64>
        %287 = arith.floordivsi %c929795662_i32, %c856935031_i32 : i32
        %false_41 = index.bool.constant false
        %288 = math.roundeven %24 : tensor<3xf32>
        %289 = math.cttz %7 : tensor<1x1xi64>
        %cast_42 = tensor.cast %7 : tensor<1x1xi64> to tensor<?x?xi64>
        %splat_43 = tensor.splat %false : tensor<3xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %284, %284, %true : vector<1xi1>, vector<1xi1> into i1
        %true_44 = index.bool.constant true
        %291 = arith.divui %extracted_39, %c1680097510_i64 : i64
        %292 = vector.splat %cst_0 : vector<1x1xf32>
        %293 = index.add %c0, %c2
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %64, %21, %extracted_39 : vector<3xi64>, vector<3xi64> into i64
        %295 = arith.remsi %c17914_i16, %c31184_i16 : i16
        %splat_45 = tensor.splat %47 : tensor<1x1x3xi16>
        %296 = vector.reduction <mul>, %78 : vector<1xf32> into f32
        memref.alloca_scope.return %extracted_39 : i64
      }
      %270 = arith.minf %cst_3, %cst_0 : f32
      %271 = math.roundeven %cst_3 : f32
      %272 = math.ipowi %109, %1 : tensor<1x1xi32>
      affine.yield %alloc_11 : memref<1x1x3xi32>
    }
    %112 = index.ceildivu %35, %43
    %cast_22 = tensor.cast %5 : tensor<1x1x3xi64> to tensor<?x?x?xi64>
    scf.if %true {
      %266 = index.sub %c12, %50
      %267 = memref.alloca_scope  -> (memref<2x1x1xi1>) {
        %274 = arith.maxsi %c929795662_i32, %c929795662_i32 : i32
        %275 = arith.remsi %c17914_i16, %47 : i16
        %276 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        memref.copy %alloc_6, %alloc_14 : memref<1x1xi64> to memref<1x1xi64>
        %277 = arith.remf %cst_1, %cst_3 : f32
        %278 = arith.minui %c929795662_i32, %c856935031_i32 : i32
        memref.store %c929795662_i32, %alloc_12[%c0, %c0, %c0] : memref<2x1x1xi32>
        %true_39 = arith.constant true
        %extracted_40 = tensor.extract %13[%c0, %c0, %c2] : tensor<1x1x3xi32>
        %279 = math.absi %104 : i16
        %280 = arith.minui %true, %true : i1
        %281 = vector.transpose %56, [0, 1, 2] : vector<1x1x3xi64> to vector<1x1x3xi64>
        %282 = bufferization.to_memref %3 : memref<2x1x1xi64>
        %283 = index.sub %112, %50
        %284 = bufferization.to_tensor %alloc_16 : memref<3xi64>
        %285 = index.maxs %266, %49
        %286 = vector.shuffle %78, %78 [0] : vector<1xf32>, vector<1xf32>
        %287 = arith.xori %false, %true : i1
        %288 = arith.divsi %c856935031_i32, %extracted_40 : i32
        %289 = math.cttz %14 : tensor<1x1x3xi64>
        %290 = bufferization.to_tensor %282 : memref<2x1x1xi64>
        %291 = math.exp2 %cst_1 : f32
        %292 = math.absi %12 : tensor<1x1xi32>
        %293 = memref.realloc %alloc_20 : memref<3xf32> to memref<2xf32>
        %294 = math.tanh %23 : tensor<f32>
        %295 = math.round %cst_0 : f32
        %296 = vector.transpose %80, [0] : vector<1xf32> to vector<1xf32>
        %297 = index.add %c8, %c12
        %298 = math.roundeven %splat : tensor<1x1x3xf16>
        %299 = arith.shrsi %extracted_40, %c856935031_i32 : i32
        %300 = math.atan %10 : tensor<1x1xf16>
        %301 = math.exp2 %cst_3 : f32
        %alloc_41 = memref.alloc() : memref<2x1x1xi1>
        memref.alloca_scope.return %alloc_41 : memref<2x1x1xi1>
      }
      %268 = math.fpowi %cst_0, %c929795662_i32 : f32, i32
      %269 = arith.minui %true, %true : i1
      %270 = math.round %2 : tensor<1x1xf16>
      %271 = arith.shrsi %c336124344_i64, %c1680097510_i64 : i64
      %272 = arith.xori %c-699_i16, %c31184_i16 : i16
      %273 = vector.load %alloc_5[%c0] : memref<3xi16>, vector<1x1xi16>
    }
    %113 = vector.extract %64[1] : vector<3xi64>
    %114 = index.mul %100, %66
    %115 = arith.floordivsi %c856935031_i32, %c929795662_i32 : i32
    %116 = arith.divf %cst_4, %cst_4 : f16
    %117 = vector.broadcast %c31184_i16 : i16 to vector<3xi16>
    bufferization.dealloc_tensor %18 : tensor<1x1xi32>
    %118 = math.absi %false : i1
    %from_elements_23 = tensor.from_elements %c336124344_i64 : tensor<1x1xi64>
    %119 = arith.xori %false, %false : i1
    %collapsed = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<2x1x1xi1> into tensor<2x1xi1>
    %splat_24 = tensor.splat %cst_4 : tensor<1x1xf16>
    %from_elements_25 = tensor.from_elements %104, %c6011_i16 : tensor<2x1x1xi16>
    %120 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
    %121 = memref.realloc %alloc_20 : memref<3xf32> to memref<1xf32>
    %122 = math.log1p %9 : tensor<1x1xf16>
    %123 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
    %124 = vector.fma %123, %123, %123 : vector<1x1xf32>
    %125 = math.powf %10, %10 : tensor<1x1xf16>
    %126 = index.casts %c856935031_i32 : i32 to index
    %127 = vector.bitcast %42 : vector<1xi64> to vector<1xi64>
    memref.assume_alignment %alloc_15, 1 : memref<2x1x1xf16>
    %generated = tensor.generate %c8 {
    ^bb0(%arg0: index):
      %266 = math.tanh %cst_3 : f32
      %267 = arith.remf %cst_3, %cst_1 : f32
      %268 = vector.matrix_multiply %127, %64 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi64>, vector<3xi64>) -> vector<3xi64>
      %269 = index.add %c14, %63
      tensor.yield %cst_0 : f32
    } : tensor<?xf32>
    %128 = arith.remsi %c17914_i16, %c31184_i16 : i16
    %129 = arith.xori %c-699_i16, %c-699_i16 : i16
    %130 = index.floordivs %112, %c10
    %131 = tensor.empty() : tensor<2x1x1xf16>
    %mapped_26 = linalg.map ins(%alloc_9, %alloc_15 : memref<2x1x1xf16>, memref<2x1x1xf16>) outs(%131 : tensor<2x1x1xf16>)
      (%in: f16, %in_39: f16) {
        %266 = math.log2 %in_39 : f16
        %267 = arith.addf %cst_0, %cst_3 : f32
        %268 = vector.extract_strided_slice %101 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        memref.assume_alignment %alloc_5, 2 : memref<3xi16>
        %269 = math.absi %0 : tensor<2x1x1xi32>
        %270 = math.rsqrt %cst_3 : f32
        %271 = index.divu %c12, %c8
        %272 = math.fma %cst_1, %cst_3, %cst_3 : f32
        %273 = index.ceildivs %35, %43
        scf.index_switch %86 
        case 1 {
          %291 = arith.subi %c6011_i16, %104 : i16
          %292 = math.round %9 : tensor<1x1xf16>
          %293 = math.powf %cst_4, %cst_4 : f16
          %294 = memref.load %alloc_8[%c0, %c0, %c0] : memref<2x1x1xf16>
          %false_46 = arith.constant false
          %295 = vector.transfer_read %15[%c9], %false_46 : tensor<3xi1>, vector<i1>
          %296 = vector.flat_transpose %76 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
          %297 = index.maxu %c7, %c15
          memref.copy %alloc_19, %alloc_5 : memref<3xi16> to memref<3xi16>
          memref.store %cst_0, %alloc_18[%c0, %c0, %c2] : memref<1x1x3xf32>
          %298 = index.floordivs %112, %c15
          %299 = arith.maxui %c17914_i16, %c6011_i16 : i16
          %300 = math.floor %splat : tensor<1x1x3xf16>
          %301 = index.maxu %32, %c0
          %extracted_47 = tensor.extract %13[%c0, %c0, %c2] : tensor<1x1x3xi32>
          %302 = affine.min affine_map<(d0) -> (-1)>(%c10)
          %303 = vector.broadcast %273 : index to vector<1xindex>
          vector.scatter %alloc_13[%c0] [%303], %79, %80 : memref<3xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
          scf.yield
        }
        case 2 {
          %291 = index.add %43, %c12
          %292 = arith.divf %cst_1, %cst_0 : f32
          %293 = math.powf %cst, %in_39 : f16
          %294 = index.floordivs %35, %c15
          %295 = vector.flat_transpose %64 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
          %296 = affine.load %alloc_19[%c12] : memref<3xi16>
          %297 = arith.minui %47, %c17914_i16 : i16
          %298 = arith.cmpf false, %cst_1, %cst_3 : f32
          %299 = vector.extract %120[2] : vector<3xi64>
          %300 = math.cos %in_39 : f16
          %301 = math.cos %cst_4 : f16
          %302 = index.divs %291, %126
          %303 = arith.maxui %true, %true : i1
          %304 = math.atan %11 : tensor<1x1xf16>
          %extracted_46 = tensor.extract %generated[%c0] : tensor<?xf32>
          %305 = math.cttz %0 : tensor<2x1x1xi32>
          scf.yield
        }
        case 3 {
          %291 = arith.shli %c-699_i16, %c31184_i16 : i16
          %292 = vector.load %alloc_7[%c0, %c0] : memref<1x1xf16>, vector<1x1x3xf16>
          %293 = index.ceildivs %c10, %114
          %294 = vector.transpose %124, [0, 1] : vector<1x1xf32> to vector<1x1xf32>
          %295 = math.ctpop %from_elements_25 : tensor<2x1x1xi16>
          %296 = vector.matrix_multiply %78, %80 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %297 = arith.minf %cst_2, %cst_4 : f16
          %false_46 = index.bool.constant false
          %298 = index.floordivs %97, %63
          %299 = math.copysign %9, %9 : tensor<1x1xf16>
          %300 = memref.atomic_rmw maxu %104, %alloc_19[%c2] : (i16, memref<3xi16>) -> i16
          %301 = index.sub %112, %c12
          %302 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 128)>(%130, %c8)
          %rank_47 = tensor.rank %2 : tensor<1x1xf16>
          %splat_48 = tensor.splat %cst_0 : tensor<1x1x3xf32>
          %303 = vector.splat %32 : vector<1x1xindex>
          scf.yield
        }
        default {
          %291 = math.absi %1 : tensor<1x1xi32>
          %true_46 = index.bool.constant true
          %c-9401_i16 = arith.constant -9401 : i16
          %292 = math.log2 %2 : tensor<1x1xf16>
          %293 = math.floor %cst_3 : f32
          %294 = index.ceildivs %c11, %49
          %splat_47 = tensor.splat %47 : tensor<1x1xi16>
          %295 = index.maxu %35, %130
          vector.print %56 : vector<1x1x3xi64>
          %296 = bufferization.to_tensor %alloc_17 : memref<2x1x1xi16>
          %297 = index.divs %294, %c14
          memref.assume_alignment %51, 1 : memref<1x1xf16>
          %298 = math.sqrt %2 : tensor<1x1xf16>
          %299 = vector.splat %c4 : vector<2x1x1xindex>
          %300 = vector.broadcast %cst_0 : f32 to vector<2x1x1xf32>
          %301 = vector.fma %300, %300, %300 : vector<2x1x1xf32>
          %302 = arith.floordivsi %c336124344_i64, %extracted : i64
        }
        %274 = arith.floordivsi %c6011_i16, %c6011_i16 : i16
        %275 = vector.multi_reduction <minsi>, %117, %47 [0] : vector<3xi16> to i16
        %276 = arith.shrsi %extracted, %c1680097510_i64 : i64
        %277 = vector.flat_transpose %64 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %278 = bufferization.to_tensor %alloc_17 : memref<2x1x1xi16>
        %279 = index.ceildivu %86, %126
        %280 = math.ipowi %15, %15 : tensor<3xi1>
        %281 = index.mul %c6, %49
        %282 = vector.load %51[%c0, %c0] : memref<1x1xf16>, vector<1x1x3xf16>
        %283 = affine.load %alloc_13[%c6] : memref<3xf32>
        %extracted_40 = tensor.extract %1[%c0, %c0] : tensor<1x1xi32>
        %cast_41 = tensor.cast %13 : tensor<1x1x3xi32> to tensor<?x?x?xi32>
        affine.for %arg0 = 0 to 71 {
        }
        %generated_42 = tensor.generate %35, %63 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %291 = vector.broadcast %c13 : index to vector<2xindex>
          %292 = vector.broadcast %false : i1 to vector<2xi1>
          %293 = vector.broadcast %47 : i16 to vector<2xi16>
          vector.scatter %alloc_17[%c1, %c0, %c0] [%291], %292, %293 : memref<2x1x1xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          memref.store %cst, %alloc_15[%c1, %c0, %c0] : memref<2x1x1xf16>
          %294 = vector.multi_reduction <add>, %124, %cst_0 [0, 1] : vector<1x1xf32> to f32
          %295 = index.divu %63, %c12
          tensor.yield %c336124344_i64 : i64
        } : tensor<?x?x1xi64>
        %284 = memref.atomic_rmw maxf %cst_4, %alloc_7[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
        %285 = arith.maxf %283, %cst_3 : f32
        %286 = arith.negf %cst_4 : f16
        %287 = math.ctpop %4 : tensor<2x1x1xi1>
        %288 = tensor.empty() : tensor<2x1x1xi1>
        %mapped_43 = linalg.map ins(%4, %4, %4 : tensor<2x1x1xi1>, tensor<2x1x1xi1>, tensor<2x1x1xi1>) outs(%288 : tensor<2x1x1xi1>)
          (%in_46: i1, %in_47: i1, %in_48: i1) {
            %291 = math.copysign %11, %2 : tensor<1x1xf16>
            %rank_49 = tensor.rank %17 : tensor<1x1xi32>
            %292 = bufferization.clone %alloc_6 : memref<1x1xi64> to memref<1x1xi64>
            %293 = arith.maxf %in, %cst_2 : f16
            %294 = vector.broadcast %c-699_i16 : i16 to vector<3x3xi16>
            %295 = vector.outerproduct %76, %76, %294 {kind = #vector.kind<minsi>} : vector<3xi16>, vector<3xi16>
            %296 = bufferization.to_tensor %alloc_15 : memref<2x1x1xf16>
            %297 = vector.broadcast %126 : index to vector<1xindex>
            vector.scatter %alloc[%c0, %c0, %c0] [%297], %79, %268 : memref<1x1x3xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
            %298 = index.maxu %c4, %c15
            %299 = math.ctpop %16 : tensor<1x1xi32>
            %300 = arith.divsi %in_47, %in_48 : i1
            %301 = arith.remsi %c929795662_i32, %c856935031_i32 : i32
            %302 = affine.min affine_map<(d0) -> (d0 * -2, d0 - d0 mod 8)>(%100)
            %303 = math.exp2 %cst_4 : f16
            %304 = arith.maxui %in_46, %false : i1
            %305 = memref.atomic_rmw maxu %c1680097510_i64, %292[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
            %rank_50 = tensor.rank %splat_24 : tensor<1x1xf16>
            %306 = arith.divui %c1680097510_i64, %c336124344_i64 : i64
            %307 = math.tan %22 : tensor<f32>
            %308 = math.absi %4 : tensor<2x1x1xi1>
            %309 = vector.reduction <minui>, %268 : vector<1xi64> into i64
            %rank_51 = tensor.rank %17 : tensor<1x1xi32>
            %310 = index.divs %281, %302
            %311 = vector.bitcast %282 : vector<1x1x3xf16> to vector<1x1x3xf16>
            %312 = math.fma %11, %splat_24, %9 : tensor<1x1xf16>
            %313 = vector.broadcast %c929795662_i32 : i32 to vector<1x1x3xi32>
            %314 = index.divu %130, %c0
            %315 = math.ctlz %16 : tensor<1x1xi32>
            %316 = index.mul %49, %49
            %317 = vector.reduction <or>, %268 : vector<1xi64> into i64
            %318 = index.divs %126, %279
            %319 = vector.reduction <add>, %127 : vector<1xi64> into i64
            %320 = vector.broadcast %cst_1 : f32 to vector<2x1x1xf32>
            %true_52 = arith.constant true
            linalg.yield %true_52 : i1
          }
        %289 = index.divs %112, %271
        %generated_44 = tensor.generate %35 {
        ^bb0(%arg0: index):
          %291 = vector.matrix_multiply %117, %76 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
          %292 = index.maxu %arg0, %c6
          %293 = arith.shli %c-699_i16, %275 : i16
          %294 = arith.minui %c856935031_i32, %c929795662_i32 : i32
          tensor.yield %c1680097510_i64 : i64
        } : tensor<?xi64>
        %290 = index.divs %281, %c13
        %cst_45 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_45 : f16
      }
    %132 = math.round %2 : tensor<1x1xf16>
    %133 = math.powf %131, %131 : tensor<2x1x1xf16>
    %134 = arith.muli %c-699_i16, %47 : i16
    %135 = math.ctpop %13 : tensor<1x1x3xi32>
    %136 = arith.maxui %c6011_i16, %c6011_i16 : i16
    %137 = arith.ceildivsi %false, %false : i1
    %138 = affine.load %alloc_10[%c3, %c2, %c3] : memref<1x1x3xi64>
    %139 = vector.broadcast %c6011_i16 : i16 to vector<2x1x1xi16>
    %140 = math.copysign %cst_3, %cst_1 : f32
    %141 = index.divs %114, %c5
    %142 = vector.broadcast %47 : i16 to vector<3x3xi16>
    %143 = vector.outerproduct %76, %117, %142 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
    %144 = arith.addf %cst_4, %cst_2 : f16
    %145 = arith.shrsi %true, %true : i1
    %146 = bufferization.to_tensor %alloc_17 : memref<2x1x1xi16>
    bufferization.dealloc_tensor %14 : tensor<1x1x3xi64>
    scf.execute_region {
      %266 = math.powf %23, %22 : tensor<f32>
      %267 = bufferization.to_memref %4 : memref<2x1x1xi1>
      %extracted_39 = tensor.extract %17[%c0, %c0] : tensor<1x1xi32>
      %268 = arith.remui %47, %c-699_i16 : i16
      %269 = memref.realloc %alloc_20 : memref<3xf32> to memref<3xf32>
      %270 = arith.maxsi %false, %true : i1
      %271 = vector.insert %c-699_i16, %117 [2] : i16 into vector<3xi16>
      %272 = arith.floordivsi %false, %true : i1
      %273 = vector.multi_reduction <maxsi>, %64, %48 [] : vector<3xi64> to vector<3xi64>
      %274 = arith.divsi %138, %c336124344_i64 : i64
      %275 = vector.shuffle %64, %21 [0, 1, 2] : vector<3xi64>, vector<3xi64>
      %276 = vector.matrix_multiply %117, %76 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %277 = bufferization.to_memref %5 : memref<1x1x3xi64>
      %278 = tensor.empty() : tensor<2x1x1xi1>
      %mapped_40 = linalg.map ins(%267, %4 : memref<2x1x1xi1>, tensor<2x1x1xi1>) outs(%278 : tensor<2x1x1xi1>)
        (%in: i1, %in_41: i1) {
          %281 = arith.maxsi %c6011_i16, %c31184_i16 : i16
          %282 = arith.minf %cst_4, %cst_4 : f16
          %283 = index.ceildivu %49, %c1
          %284 = vector.splat %283 : vector<1x1xindex>
          %285 = arith.remsi %in_41, %in : i1
          %286 = vector.extract_strided_slice %21 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi64> to vector<1xi64>
          %287 = math.tan %splat_24 : tensor<1x1xf16>
          %288 = memref.atomic_rmw assign %47, %37[%c0, %c0, %c0] : (i16, memref<2x1x1xi16>) -> i16
          %289 = index.ceildivs %63, %c15
          %extracted_42 = tensor.extract %10[%c0, %c0] : tensor<1x1xf16>
          %290 = arith.remsi %extracted, %c1680097510_i64 : i64
          %291 = vector.matrix_multiply %276, %117 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi16>, vector<3xi16>) -> vector<3xi16>
          %292 = math.sqrt %cst_4 : f16
          %293 = index.add %c3, %c0
          %294 = bufferization.to_tensor %alloc_18 : memref<1x1x3xf32>
          %295 = math.tan %cst_4 : f16
          %cst_43 = arith.constant 1.000000e+00 : f16
          %296 = vector.transfer_read %alloc_15[%35, %c6, %c3], %cst_43 : memref<2x1x1xf16>, vector<f16>
          %297 = affine.load %alloc_20[%c6] : memref<3xf32>
          %298 = index.sub %43, %126
          %299 = math.powf %extracted_42, %cst_43 : f16
          %300 = math.expm1 %splat_24 : tensor<1x1xf16>
          %301 = arith.maxsi %c17914_i16, %104 : i16
          %alloc_44 = memref.alloc() : memref<1x1xi16>
          %302 = bufferization.clone %alloc_7 : memref<1x1xf16> to memref<1x1xf16>
          %303 = math.tan %splat_24 : tensor<1x1xf16>
          %304 = arith.cmpf olt, %extracted_42, %cst_43 : f16
          %305 = vector.multi_reduction <minsi>, %79, %79 [] : vector<1xi1> to vector<1xi1>
          %rank_45 = tensor.rank %12 : tensor<1x1xi32>
          %306 = arith.cmpf ord, %cst_3, %cst_1 : f32
          %307 = math.cttz %true : i1
          %308 = math.ceil %23 : tensor<f32>
          %309 = arith.minf %297, %297 : f32
          %true_46 = arith.constant true
          linalg.yield %true_46 : i1
        }
      %279 = vector.extract_strided_slice %76 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
      %280 = math.tanh %9 : tensor<1x1xf16>
      scf.yield
    }
    %147 = arith.addf %cst_1, %cst_0 : f32
    %148 = vector.broadcast %c856935031_i32 : i32 to vector<1xi32>
    %149 = vector.maskedload %alloc_11[%c0, %c0, %c2], %79, %148 : memref<1x1x3xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %150 = vector.splat %114 : vector<1x1xindex>
    %151 = vector.reduction <or>, %149 : vector<1xi32> into i32
    %152 = arith.divf %cst, %cst_4 : f16
    %153 = vector.extract_strided_slice %127 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
    %154 = math.exp2 %cst_0 : f32
    %155 = math.absi %transposed : tensor<1x1xi32>
    %156 = arith.ori %138, %138 : i64
    %157 = tensor.empty() : tensor<1x1xi32>
    %158 = linalg.matmul ins(%16, %12 : tensor<1x1xi32>, tensor<1x1xi32>) outs(%157 : tensor<1x1xi32>) -> tensor<1x1xi32>
    memref.assume_alignment %alloc_19, 2 : memref<3xi16>
    %159 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %160 = vector.fma %159, %159, %159 : vector<3xf32>
    %161 = math.ctpop %8 : tensor<1x1xi32>
    %162 = bufferization.to_memref %8 : memref<1x1xi32>
    %163 = arith.ori %138, %extracted : i64
    %164 = arith.addf %cst_4, %cst_2 : f16
    %165 = math.roundeven %splat_24 : tensor<1x1xf16>
    scf.if %true {
      memref.assume_alignment %alloc_10, 2 : memref<1x1x3xi64>
      %266 = math.exp2 %2 : tensor<1x1xf16>
      %alloc_39 = memref.alloc() : memref<2x1xi16>
      %alloc_40 = memref.alloc() : memref<1xi16>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %from_elements_25, %alloc_40 : memref<2x1xi16>, tensor<2x1x1xi16>, memref<1xi16>) outs(%146 : tensor<2x1x1xi16>) {
      ^bb0(%in: i16, %in_42: i16, %in_43: i16, %out: i16):
        %271 = index.sub %c5, %c0
        %272 = arith.maxui %c-699_i16, %c6011_i16 : i16
        %collapsed_44 = tensor.collapse_shape %7 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
        %273 = memref.load %alloc_19[%c2] : memref<3xi16>
        %274 = math.cttz %c929795662_i32 : i32
        %expanded = tensor.expand_shape %16 [[0], [1, 2]] : tensor<1x1xi32> into tensor<1x1x1xi32>
        memref.copy %alloc, %alloc_10 : memref<1x1x3xi64> to memref<1x1x3xi64>
        %275 = index.sub %c10, %63
        %276 = math.atan2 %9, %11 : tensor<1x1xf16>
        %277 = arith.andi %in_43, %104 : i16
        %278 = vector.multi_reduction <mul>, %148, %c929795662_i32 [0] : vector<1xi32> to i32
        affine.store %out, %alloc_19[%c1] : memref<3xi16>
        %279 = arith.remf %cst, %cst_4 : f16
        %280 = index.mul %66, %114
        %281 = arith.divui %c856935031_i32, %278 : i32
        %282 = math.powf %2, %10 : tensor<1x1xf16>
        %283 = index.maxs %280, %130
        %284 = math.log10 %10 : tensor<1x1xf16>
        %285 = math.cttz %collapsed : tensor<2x1xi1>
        %cast_45 = tensor.cast %12 : tensor<1x1xi32> to tensor<?x?xi32>
        %286 = math.ctpop %19 : tensor<i16>
        %287 = vector.bitcast %127 : vector<1xi64> to vector<1xi64>
        %false_46 = index.bool.constant false
        %288 = vector.splat %97 : vector<2x1x1xindex>
        %289 = math.ceil %10 : tensor<1x1xf16>
        %290 = memref.load %alloc_7[%c0, %c0] : memref<1x1xf16>
        %291 = index.add %63, %c5
        %alloc_47 = memref.alloc() : memref<2x1x1xi16>
        %292 = math.sqrt %cst_2 : f16
        %293 = vector.multi_reduction <add>, %127, %138 [0] : vector<1xi64> to i64
        %294 = math.roundeven %cst_3 : f32
        %collapsed_48 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<2x1x1xi64> into tensor<2x1xi64>
        linalg.yield %in : i16
      } -> tensor<2x1x1xi16>
      %268 = math.log %splat_24 : tensor<1x1xf16>
      affine.for %arg0 = 0 to 17 {
      }
      %rank_41 = tensor.rank %15 : tensor<3xi1>
      %269 = index.maxu %c10, %97
      %270 = index.floordivs %c12, %66
    } else {
      %266 = math.sqrt %cst_3 : f32
      %rank_39 = tensor.rank %collapsed : tensor<2x1xi1>
      %267 = memref.alloca_scope  -> (memref<1x1xf16>) {
        %273 = arith.negf %cst_2 : f16
        %274 = math.floor %cst_2 : f16
        %275 = math.absf %cst_0 : f32
        %276 = arith.muli %c336124344_i64, %138 : i64
        %277 = math.rsqrt %10 : tensor<1x1xf16>
        %278 = arith.andi %c856935031_i32, %c929795662_i32 : i32
        %279 = arith.remf %cst_2, %cst_2 : f16
        %280 = arith.maxui %104, %104 : i16
        %281 = math.cos %splat_24 : tensor<1x1xf16>
        %282 = arith.xori %c336124344_i64, %c336124344_i64 : i64
        %283 = vector.broadcast %cst_3 : f32 to vector<3x3xf32>
        %284 = vector.outerproduct %159, %159, %283 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
        %alloc_40 = memref.alloc() : memref<1x1xi32>
        memref.copy %162, %alloc_40 : memref<1x1xi32> to memref<1x1xi32>
        %285 = arith.remsi %c31184_i16, %c31184_i16 : i16
        %286 = math.exp2 %24 : tensor<3xf32>
        %287 = math.rsqrt %10 : tensor<1x1xf16>
        %inserted_41 = tensor.insert %c929795662_i32 into %transposed[%c0, %c0] : tensor<1x1xi32>
        %288 = vector.broadcast %cst_3 : f32 to vector<2x1x1xf32>
        %289 = vector.fma %288, %288, %288 : vector<2x1x1xf32>
        %290 = arith.andi %c856935031_i32, %c929795662_i32 : i32
        %291 = index.add %100, %c11
        %292 = math.cttz %c17914_i16 : i16
        %293 = arith.xori %c336124344_i64, %c336124344_i64 : i64
        %294 = math.tan %splat : tensor<1x1x3xf16>
        %295 = vector.broadcast %cst_4 : f16 to vector<2x1x1xf16>
        %296 = math.roundeven %131 : tensor<2x1x1xf16>
        %297 = vector.flat_transpose %64 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %298 = math.powf %splat_24, %splat_24 : tensor<1x1xf16>
        %299 = memref.realloc %alloc_5 : memref<3xi16> to memref<2xi16>
        %300 = index.maxs %c1, %c15
        %301 = arith.cmpi sge, %c1680097510_i64, %extracted : i64
        %302 = arith.remsi %c31184_i16, %104 : i16
        %303 = arith.maxsi %extracted, %138 : i64
        %304 = vector.maskedload %alloc_12[%c1, %c0, %c0], %79, %148 : memref<2x1x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        memref.alloca_scope.return %51 : memref<1x1xf16>
      }
      %268 = math.sqrt %cst_3 : f32
      %269 = math.roundeven %cst_4 : f16
      %270 = math.ctlz %157 : tensor<1x1xi32>
      %271 = vector.matrix_multiply %76, %76 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %272 = math.tanh %11 : tensor<1x1xf16>
    }
    %166 = vector.splat %c17914_i16 : vector<1x1xi16>
    %167 = math.log2 %22 : tensor<f32>
    %168 = memref.realloc %alloc_5 : memref<3xi16> to memref<1xi16>
    %169 = arith.xori %c31184_i16, %104 : i16
    %170 = vector.reduction <maxsi>, %148 : vector<1xi32> into i32
    %171 = arith.minsi %c17914_i16, %c-699_i16 : i16
    scf.index_switch %c0 
    case 1 {
      %266 = math.round %splat : tensor<1x1x3xf16>
      memref.alloca_scope  {
        %281 = index.mul %130, %126
        %282 = index.sub %c9, %c6
        %283 = arith.cmpf ule, %cst, %cst_2 : f16
        %284 = vector.broadcast %281 : index to vector<3xindex>
        %285 = vector.broadcast %true : i1 to vector<3xi1>
        vector.scatter %alloc[%c0, %c0, %c0] [%284], %285, %64 : memref<1x1x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %286 = math.exp2 %2 : tensor<1x1xf16>
        %287 = math.atan %24 : tensor<3xf32>
        %288 = arith.shli %104, %c6011_i16 : i16
        %289 = arith.divf %cst_0, %cst_0 : f32
        %290 = arith.divf %cst_4, %cst : f16
        %291 = arith.andi %c856935031_i32, %c929795662_i32 : i32
        %292 = arith.muli %c-699_i16, %c31184_i16 : i16
        %293 = arith.remf %cst, %cst_2 : f16
        %294 = math.ceil %splat : tensor<1x1x3xf16>
        %295 = vector.flat_transpose %127 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %alloca = memref.alloca() : memref<2x1x1xf32>
        %296 = vector.bitcast %148 : vector<1xi32> to vector<1xf32>
        %297 = index.sub %c7, %97
        %298 = vector.flat_transpose %120 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %299 = vector.broadcast %extracted : i64 to vector<2x1x1xi64>
        %300 = index.sub %282, %c8
        %301 = index.divs %c9, %c0
        %alloc_40 = memref.alloc() : memref<3xi16>
        %302 = index.sizeof
        %303 = vector.splat %c10 : vector<3xindex>
        %alloc_41 = memref.alloc() : memref<3xi16>
        %304 = vector.matrix_multiply %148, %148 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %305 = memref.load %alloc_16[%c0] : memref<3xi64>
        %306 = bufferization.to_tensor %alloc_6 : memref<1x1xi64>
        %307 = vector.extract_strided_slice %124 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
        %308 = memref.realloc %alloc_5 : memref<3xi16> to memref<1xi16>
        %309 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %310 = vector.fma %309, %124, %124 : vector<1x1xf32>
        %311 = math.tan %cst_4 : f16
      }
      %267 = math.roundeven %2 : tensor<1x1xf16>
      %268 = arith.xori %138, %138 : i64
      %269 = memref.load %alloc_10[%c0, %c0, %c0] : memref<1x1x3xi64>
      %inserted_39 = tensor.insert %extracted into %3[%c0, %c0, %c0] : tensor<2x1x1xi64>
      %270 = vector.flat_transpose %42 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %271 = arith.minf %cst_1, %cst_1 : f32
      %272 = math.ipowi %138, %138 : i64
      %273 = math.roundeven %22 : tensor<f32>
      %274 = arith.negf %cst_2 : f16
      %275 = tensor.empty() : tensor<3xi32>
      %276 = math.fpowi %24, %275 : tensor<3xf32>, tensor<3xi32>
      %277 = arith.divf %cst_4, %cst_4 : f16
      %278 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %279 = index.sub %32, %63
      %280 = arith.maxui %47, %c17914_i16 : i16
      scf.yield
    }
    case 2 {
      %266 = math.roundeven %cst_2 : f16
      %267 = arith.maxui %true, %false : i1
      memref.store %c1680097510_i64, %alloc_16[%c1] : memref<3xi64>
      %false_39 = index.bool.constant false
      %268 = arith.remui %c856935031_i32, %c856935031_i32 : i32
      %269 = arith.minf %cst, %cst_2 : f16
      %270 = arith.xori %false_39, %false_39 : i1
      %271 = bufferization.to_memref %15 : memref<3xi1>
      %272 = arith.divf %cst_3, %cst_1 : f32
      %273 = vector.broadcast %cst : f16 to vector<1x1xf16>
      %274 = index.casts %c6 : index to i32
      %275 = arith.andi %c856935031_i32, %c929795662_i32 : i32
      %276 = affine.min affine_map<(d0, d1, d2) -> ((d0 mod 8) * 2 - d0 floordiv 4 + 32, (d0 mod 8) * 32)>(%112, %50, %35)
      memref.copy %alloc_15, %alloc_8 : memref<2x1x1xf16> to memref<2x1x1xf16>
      %277 = vector.reduction <add>, %127 : vector<1xi64> into i64
      %278 = arith.xori %c6011_i16, %104 : i16
      scf.yield
    }
    case 3 {
      %266 = math.absi %8 : tensor<1x1xi32>
      %267 = arith.divui %extracted, %extracted : i64
      %268 = vector.matrix_multiply %149, %149 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %269 = arith.maxui %138, %c1680097510_i64 : i64
      %270 = math.cttz %12 : tensor<1x1xi32>
      %271 = arith.remf %cst_3, %cst_1 : f32
      %272 = vector.matrix_multiply %153, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %inserted_39 = tensor.insert %c929795662_i32 into %0[%c1, %c0, %c0] : tensor<2x1x1xi32>
      %splat_40 = tensor.splat %cst : tensor<1x1xf16>
      %collapsed_41 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<1x1x3xf16> into tensor<1x3xf16>
      %273 = affine.if affine_set<(d0) : (d0 ceildiv 128 + d0 ceildiv 128 - 64 >= 0, (d0 ceildiv 128) * 2 - 64 == 0, (d0 ceildiv 128) * 4 == 0, d0 ceildiv 128 + (d0 ceildiv 128) * 2 - 64 >= 0)>(%c1) -> i64 {
        %279 = arith.shrui %c856935031_i32, %c929795662_i32 : i32
        %280 = arith.maxsi %104, %c6011_i16 : i16
        %281 = arith.cmpf ogt, %cst_4, %cst : f16
        %282 = math.absf %cst_1 : f32
        %283 = arith.maxf %cst_1, %cst_3 : f32
        %true_42 = index.bool.constant true
        %284 = vector.broadcast %c336124344_i64 : i64 to vector<1x1xi64>
        %285 = vector.outerproduct %42, %101, %284 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        %286 = arith.andi %c-699_i16, %c-699_i16 : i16
        affine.yield %extracted : i64
      } else {
        %true_42 = arith.constant true
        %279 = vector.shuffle %124, %124 [0] : vector<1x1xf32>, vector<1x1xf32>
        %280 = tensor.empty() : tensor<1x1xi64>
        %281 = linalg.matmul ins(%from_elements_23, %from_elements_23 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%280 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %282 = arith.maxsi %138, %extracted : i64
        %283 = vector.broadcast %49 : index to vector<1xindex>
        %284 = vector.broadcast %c-699_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_5[%c1] [%283], %79, %284 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %285 = arith.cmpf ueq, %cst, %cst : f16
        %286 = math.sqrt %cst_2 : f16
        %287 = math.fma %22, %23, %23 : tensor<f32>
        affine.yield %c1680097510_i64 : i64
      }
      %274 = vector.broadcast %32 : index to vector<2xindex>
      %275 = vector.broadcast %false : i1 to vector<2xi1>
      %276 = vector.broadcast %47 : i16 to vector<2xi16>
      vector.scatter %alloc_17[%c1, %c0, %c0] [%274], %275, %276 : memref<2x1x1xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      affine.store %cst_2, %alloc_15[%c13, %c2, %c8] : memref<2x1x1xf16>
      memref.store %138, %alloc[%c0, %c0, %c0] : memref<1x1x3xi64>
      %277 = arith.addi %138, %138 : i64
      %278 = math.roundeven %cst_4 : f16
      scf.yield
    }
    case 4 {
      %266 = bufferization.to_memref %0 : memref<2x1x1xi32>
      %267 = affine.load %alloc_17[%c14, %c11, %c0] : memref<2x1x1xi16>
      %268 = arith.divsi %47, %267 : i16
      bufferization.dealloc_tensor %reduced : tensor<i16>
      %269 = vector.reduction <maxui>, %21 : vector<3xi64> into i64
      %270 = math.roundeven %9 : tensor<1x1xf16>
      %271 = arith.negf %cst : f16
      %272 = arith.floordivsi %true, %true : i1
      %273 = vector.splat %c856935031_i32 : vector<2x1x1xi32>
      %274 = arith.ori %extracted, %c336124344_i64 : i64
      %275 = arith.floordivsi %138, %c1680097510_i64 : i64
      %276 = vector.broadcast %cst_2 : f16 to vector<1xf16>
      %277 = vector.maskedload %alloc_7[%c0, %c0], %79, %276 : memref<1x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      %278 = memref.alloca_scope  -> (f32) {
        %282 = math.exp2 %9 : tensor<1x1xf16>
        %283 = math.log2 %cst_3 : f32
        %284 = math.round %23 : tensor<f32>
        %285 = arith.maxf %cst, %cst_4 : f16
        %286 = vector.bitcast %160 : vector<3xf32> to vector<3xf32>
        %287 = index.mul %66, %c2
        %288 = arith.floordivsi %c-699_i16, %267 : i16
        %289 = vector.transpose %148, [0] : vector<1xi32> to vector<1xi32>
        %290 = math.cos %11 : tensor<1x1xf16>
        %291 = vector.transpose %149, [0] : vector<1xi32> to vector<1xi32>
        %292 = math.roundeven %cst_0 : f32
        %293 = arith.muli %c856935031_i32, %c929795662_i32 : i32
        %294 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
        %295 = arith.divui %c17914_i16, %267 : i16
        %296 = arith.ori %false, %true : i1
        %297 = index.castu %267 : i16 to index
        %298 = arith.addf %cst_3, %cst_0 : f32
        %299 = math.atan %cst_1 : f32
        %300 = vector.flat_transpose %148 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %301 = arith.ori %c856935031_i32, %c856935031_i32 : i32
        %302 = vector.broadcast %c10 : index to vector<2xindex>
        %303 = vector.broadcast %true : i1 to vector<2xi1>
        %304 = vector.broadcast %extracted : i64 to vector<2xi64>
        vector.scatter %alloc_14[%c0, %c0] [%302], %303, %304 : memref<1x1xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %305 = math.atan2 %131, %131 : tensor<2x1x1xf16>
        %306 = arith.shrsi %104, %c-699_i16 : i16
        %307 = arith.divsi %c1680097510_i64, %extracted : i64
        %308 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %309 = math.exp %10 : tensor<1x1xf16>
        %310 = math.log %2 : tensor<1x1xf16>
        %311 = arith.addf %cst_2, %cst : f16
        %312 = arith.floordivsi %c31184_i16, %104 : i16
        %313 = math.powf %cst_2, %cst_4 : f16
        %314 = vector.matrix_multiply %276, %276 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %315 = arith.maxf %cst_4, %cst_4 : f16
        memref.alloca_scope.return %cst_1 : f32
      }
      %279 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 8, d0 floordiv 128, d0 + d2 - 8)>(%50, %50, %130)
      %280 = arith.floordivsi %c856935031_i32, %c929795662_i32 : i32
      %281 = arith.divf %cst_0, %cst_3 : f32
      scf.yield
    }
    default {
      %266 = scf.execute_region -> index {
        %279 = affine.load %alloc_19[%c9] : memref<3xi16>
        %splat_41 = tensor.splat %279 : tensor<1x1x3xi16>
        %280 = index.floordivs %112, %114
        %281 = math.rsqrt %23 : tensor<f32>
        %282 = arith.floordivsi %c31184_i16, %104 : i16
        %283 = math.floor %11 : tensor<1x1xf16>
        %284 = index.ceildivs %112, %112
        %285 = vector.broadcast %c929795662_i32 : i32 to vector<1x1xi32>
        %286 = vector.outerproduct %148, %148, %285 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %287 = math.sqrt %23 : tensor<f32>
        %288 = affine.load %alloc_9[%c9, %c15, %c7] : memref<2x1x1xf16>
        %289 = math.ctlz %from_elements_23 : tensor<1x1xi64>
        %290 = arith.addi %279, %104 : i16
        memref.copy %alloc_15, %alloc_9 : memref<2x1x1xf16> to memref<2x1x1xf16>
        %291 = math.round %11 : tensor<1x1xf16>
        %292 = math.round %131 : tensor<2x1x1xf16>
        %293 = arith.divsi %c929795662_i32, %c929795662_i32 : i32
        scf.yield %c0 : index
      }
      %267 = math.copysign %splat_24, %2 : tensor<1x1xf16>
      %268 = arith.addf %cst_1, %cst_0 : f32
      %269 = arith.remf %cst_1, %cst_3 : f32
      %270 = arith.cmpf false, %cst_1, %cst_3 : f32
      %271 = memref.atomic_rmw mins %c336124344_i64, %alloc_6[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
      %272 = arith.remf %cst_3, %cst_3 : f32
      %273 = index.add %114, %50
      vector.print %80 : vector<1xf32>
      %274 = vector.bitcast %139 : vector<2x1x1xi16> to vector<2x1x1xi16>
      %extracted_39 = tensor.extract %1[%c0, %c0] : tensor<1x1xi32>
      %extracted_40 = tensor.extract %15[%c0] : tensor<3xi1>
      %275 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
      %276 = affine.apply affine_map<(d0) -> ((-d0) floordiv 64)>(%126)
      %277 = math.absi %4 : tensor<2x1x1xi1>
      %278 = arith.xori %c17914_i16, %c-699_i16 : i16
    }
    %172 = vector.splat %114 : vector<1x1x3xindex>
    %173 = math.absi %reduced : tensor<i16>
    %174 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %101, %42, %c1680097510_i64 : vector<1xi64>, vector<1xi64> into i64
    %rank = tensor.rank %10 : tensor<1x1xf16>
    %175 = vector.broadcast %c929795662_i32 : i32 to vector<3xi32>
    %176 = math.atan %11 : tensor<1x1xf16>
    %177 = vector.extract %21[1] : vector<3xi64>
    %178 = arith.xori %104, %c17914_i16 : i16
    %179 = arith.cmpf oeq, %cst, %cst : f16
    %180 = math.ipowi %c31184_i16, %c-699_i16 : i16
    %181 = math.powf %2, %9 : tensor<1x1xf16>
    %182 = arith.muli %false, %true : i1
    %183 = arith.maxf %cst_3, %cst_3 : f32
    %184 = math.absi %reduced : tensor<i16>
    %185 = index.mul %66, %66
    %186 = arith.divf %cst_0, %cst_3 : f32
    %187 = vector.matrix_multiply %64, %21 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %188 = arith.andi %c-699_i16, %c17914_i16 : i16
    %189 = vector.extract %80[0] : vector<1xf32>
    %190 = arith.maxf %cst_0, %cst_1 : f32
    %191 = arith.negf %cst_2 : f16
    %192 = memref.load %51[%c0, %c0] : memref<1x1xf16>
    %193 = vector.extract %79[0] : vector<1xi1>
    %collapsed_27 = tensor.collapse_shape %146 [[0, 1], [2]] : tensor<2x1x1xi16> into tensor<2x1xi16>
    %194 = scf.if %true -> (f32) {
      %splat_39 = tensor.splat %c31184_i16 : tensor<3xi16>
      %cast_40 = tensor.cast %14 : tensor<1x1x3xi64> to tensor<?x?x?xi64>
      %266 = math.fma %131, %131, %131 : tensor<2x1x1xf16>
      %267 = math.fpowi %11, %1 : tensor<1x1xf16>, tensor<1x1xi32>
      %268 = affine.if affine_set<(d0) : (-((d0 * 2 - 4) ceildiv 2) == 0, d0 * 2 - 4 == 0)>(%c4) -> memref<1x1x3xi32> {
        %271 = math.sqrt %9 : tensor<1x1xf16>
        %272 = math.log %cst_3 : f32
        %273 = math.cos %cst_4 : f16
        %274 = vector.create_mask %63, %c3 : vector<1x1xi1>
        %275 = index.maxu %c15, %97
        %276 = arith.floordivsi %false, %false : i1
        %277 = memref.load %alloc_20[%c2] : memref<3xf32>
        %278 = affine.load %51[%c5, %c15] : memref<1x1xf16>
        affine.yield %alloc_11 : memref<1x1x3xi32>
      } else {
        %271 = vector.broadcast %c929795662_i32 : i32 to vector<1x1xi32>
        %272 = vector.outerproduct %149, %148, %271 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
        %273 = tensor.empty() : tensor<1x1xf16>
        %274 = linalg.matmul ins(%9, %11 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%273 : tensor<1x1xf16>) -> tensor<1x1xf16>
        %275 = math.copysign %cst_2, %cst_2 : f16
        %276 = math.cos %273 : tensor<1x1xf16>
        %277 = arith.andi %c6011_i16, %104 : i16
        %278 = vector.extract %42[0] : vector<1xi64>
        %279 = memref.atomic_rmw mulf %cst_1, %alloc_20[%c1] : (f32, memref<3xf32>) -> f32
        %280 = math.absi %6 : tensor<1x1x3xi64>
        affine.yield %alloc_11 : memref<1x1x3xi32>
      }
      %c0_i32 = arith.constant 0 : i32
      %269 = vector.transfer_read %109[%185, %rank], %c0_i32 : tensor<1x1xi32>, vector<i32>
      %cast_41 = tensor.cast %1 : tensor<1x1xi32> to tensor<?x?xi32>
      %270 = math.round %cst_3 : f32
      scf.yield %cst_1 : f32
    } else {
      %266 = vector.create_mask %86, %c11 : vector<1x1xi1>
      %generated_39 = tensor.generate %35 {
      ^bb0(%arg0: index, %arg1: index):
        %273 = arith.minui %true, %false : i1
        %274 = math.copysign %cst_0, %cst_1 : f32
        %275 = memref.atomic_rmw mulf %cst, %alloc_15[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %153, %153, %c1680097510_i64 : vector<1xi64>, vector<1xi64> into i64
        tensor.yield %c929795662_i32 : i32
      } : tensor<?x1xi32>
      %267 = affine.load %alloc_17[%c2, %c4, %c5] : memref<2x1x1xi16>
      %268 = math.ctpop %3 : tensor<2x1x1xi64>
      %269 = index.sub %63, %c3
      %270 = affine.if affine_set<(d0, d1, d2) : (((-d0) mod 2) mod 64 >= 0)>(%c4, %c11, %c14) -> i64 {
        %273 = arith.remui %extracted, %extracted : i64
        %274 = arith.floordivsi %true, %true : i1
        %275 = index.divu %c11, %97
        %from_elements_40 = tensor.from_elements %c-699_i16 : tensor<1x1xi16>
        %276 = index.mul %141, %c9
        %277 = math.tanh %cst_2 : f16
        %278 = vector.load %alloc_12[%c0, %c0, %c0] : memref<2x1x1xi32>, vector<2x1x1xi32>
        %279 = math.log %9 : tensor<1x1xf16>
        affine.yield %c336124344_i64 : i64
      } else {
        %273 = math.sqrt %9 : tensor<1x1xf16>
        %274 = vector.insert %c929795662_i32, %148 [0] : i32 into vector<1xi32>
        %275 = index.mul %c10, %114
        %276 = affine.load %alloc_5[%c15] : memref<3xi16>
        %277 = vector.reduction <minsi>, %153 : vector<1xi64> into i64
        %278 = math.tan %cst_4 : f16
        %from_elements_40 = tensor.from_elements %138, %c1680097510_i64 : tensor<2x1x1xi64>
        %false_41 = index.bool.constant false
        affine.yield %extracted : i64
      }
      %271 = arith.remf %cst_2, %cst_4 : f16
      %272 = arith.ori %c1680097510_i64, %extracted : i64
      scf.yield %cst_0 : f32
    }
    %195 = arith.cmpf ole, %cst_0, %cst_1 : f32
    %196 = arith.andi %c856935031_i32, %c929795662_i32 : i32
    %197 = index.floordivs %114, %c2
    %198 = index.divs %43, %c12
    %199 = arith.divsi %47, %c-699_i16 : i16
    %200 = vector.broadcast %cst_2 : f16 to vector<f16>
    %201 = vector.transfer_write %200, %11[%c13, %100] : vector<f16>, tensor<1x1xf16>
    affine.store %c856935031_i32, %162[%c9, %c5] : memref<1x1xi32>
    %202 = bufferization.to_tensor %alloc_7 : memref<1x1xf16>
    %203 = bufferization.clone %alloc_14 : memref<1x1xi64> to memref<1x1xi64>
    %204 = math.copysign %194, %cst_3 : f32
    %205 = math.ctlz %7 : tensor<1x1xi64>
    %206 = math.atan2 %cst_4, %cst : f16
    %rank_28 = tensor.rank %15 : tensor<3xi1>
    %207 = arith.cmpf oeq, %194, %cst_1 : f32
    %splat_29 = tensor.splat %47 : tensor<1x1x3xi16>
    %208 = arith.minui %c31184_i16, %104 : i16
    %209 = math.sqrt %24 : tensor<3xf32>
    %210 = affine.load %alloc_8[%c8, %c14, %c15] : memref<2x1x1xf16>
    %211 = memref.atomic_rmw maxf %cst_3, %alloc_18[%c0, %c0, %c0] : (f32, memref<1x1x3xf32>) -> f32
    %212 = math.ceil %9 : tensor<1x1xf16>
    %splat_30 = tensor.splat %cst_2 : tensor<1x1xf16>
    %213 = arith.negf %cst_1 : f32
    %214 = math.ceil %11 : tensor<1x1xf16>
    %215 = arith.muli %extracted, %extracted : i64
    %216 = vector.broadcast %rank_28 : index to vector<1xindex>
    %217 = vector.broadcast %c17914_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_19[%c1] [%216], %79, %217 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    %218 = arith.remf %cst, %210 : f16
    %219 = index.sizeof
    %220 = index.sub %197, %100
    %cast_31 = tensor.cast %10 : tensor<1x1xf16> to tensor<?x?xf16>
    %221 = index.maxu %43, %114
    scf.execute_region {
      %cast_39 = tensor.cast %4 : tensor<2x1x1xi1> to tensor<?x?x?xi1>
      %266 = math.roundeven %2 : tensor<1x1xf16>
      %267 = scf.index_switch %130 -> f32 
      case 1 {
        %282 = math.exp2 %194 : f32
        %splat_40 = tensor.splat %true : tensor<1x1xi1>
        %283 = vector.multi_reduction <minsi>, %117, %117 [] : vector<3xi16> to vector<3xi16>
        %rank_41 = tensor.rank %from_elements : tensor<3xi64>
        %284 = vector.reduction <minui>, %120 : vector<3xi64> into i64
        %285 = vector.shuffle %127, %187 [0] : vector<1xi64>, vector<1xi64>
        %286 = index.add %221, %86
        %287 = math.exp2 %11 : tensor<1x1xf16>
        memref.assume_alignment %alloc_13, 4 : memref<3xf32>
        %288 = math.powf %splat_24, %202 : tensor<1x1xf16>
        %289 = math.expm1 %11 : tensor<1x1xf16>
        %alloc_42 = memref.alloc() : memref<2x1x1xf16>
        %290 = vector.reduction <or>, %187 : vector<1xi64> into i64
        %291 = math.sqrt %splat : tensor<1x1x3xf16>
        %292 = arith.maxsi %c336124344_i64, %138 : i64
        %293 = arith.maxsi %c929795662_i32, %c929795662_i32 : i32
        scf.yield %cst_0 : f32
      }
      case 2 {
        %282 = math.ceil %splat_24 : tensor<1x1xf16>
        %283 = math.fpowi %cst_3, %c929795662_i32 : f32, i32
        %cst_40 = arith.constant 1.000000e+00 : f16
        %cst_41 = arith.constant 0.000000e+00 : f16
        %284 = vector.transfer_read %51[%rank, %c6], %cst_41 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<1x1xf16>, vector<1xf16>
        %285 = arith.remsi %c17914_i16, %47 : i16
        %286 = arith.maxf %cst_40, %210 : f16
        %287 = arith.addf %cst_2, %cst_2 : f16
        %288 = math.sqrt %22 : tensor<f32>
        %c0_i32 = arith.constant 0 : i32
        %289 = vector.transfer_read %18[%35, %197], %c0_i32 : tensor<1x1xi32>, vector<i32>
        %alloc_42 = memref.alloc() : memref<3xf16>
        %290 = math.rsqrt %9 : tensor<1x1xf16>
        %291 = math.cttz %138 : i64
        %292 = arith.remui %extracted, %c1680097510_i64 : i64
        %293 = vector.bitcast %21 : vector<3xi64> to vector<3xi64>
        %294 = index.casts %rank : index to i32
        %295 = math.ctpop %13 : tensor<1x1x3xi32>
        %296 = arith.maxsi %c0_i32, %c929795662_i32 : i32
        scf.yield %194 : f32
      }
      default {
        %282 = math.copysign %9, %splat_30 : tensor<1x1xf16>
        %283 = vector.extract %187[0] : vector<1xi64>
        %splat_40 = tensor.splat %c17914_i16 : tensor<2x1x1xi16>
        %284 = index.mul %35, %c3
        %285 = arith.maxsi %c1680097510_i64, %c1680097510_i64 : i64
        %286 = math.sqrt %210 : f16
        %287 = arith.minui %true, %false : i1
        %288 = affine.load %alloc_16[%c7] : memref<3xi64>
        %289 = vector.broadcast %114 : index to vector<3xindex>
        %290 = vector.broadcast %true : i1 to vector<3xi1>
        vector.scatter %alloc_14[%c0, %c0] [%289], %290, %48 : memref<1x1xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %291 = arith.maxsi %c856935031_i32, %c856935031_i32 : i32
        %292 = tensor.empty() : tensor<1x1xi64>
        %293 = linalg.matmul ins(%7, %7 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%292 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %294 = arith.maxui %c-699_i16, %104 : i16
        %295 = index.mul %219, %c14
        %296 = math.fpowi %194, %c856935031_i32 : f32, i32
        %297 = math.atan2 %splat, %splat : tensor<1x1x3xf16>
        %298 = arith.remf %cst_1, %cst_1 : f32
        scf.yield %cst_0 : f32
      }
      %268 = scf.execute_region -> memref<1x1xf16> {
        %282 = bufferization.to_tensor %alloc_19 : memref<3xi16>
        %rank_40 = tensor.rank %202 : tensor<1x1xf16>
        %extracted_41 = tensor.extract %from_elements_21[%c0] : tensor<3xi1>
        %283 = vector.insert %cst_3, %159 [1] : f32 into vector<3xf32>
        %284 = index.mul %c9, %c7
        %285 = arith.shrsi %false, %false : i1
        %286 = arith.divf %cst_3, %cst_3 : f32
        %287 = math.roundeven %210 : f16
        %288 = vector.reduction <or>, %187 : vector<1xi64> into i64
        %289 = vector.load %alloc_19[%c2] : memref<3xi16>, vector<1x1x3xi16>
        %290 = vector.broadcast %cst : f16 to vector<2x1x1xf16>
        %291 = vector.multi_reduction <minf>, %123, %78 [1] : vector<1x1xf32> to vector<1xf32>
        %292 = index.mul %97, %114
        %293 = math.rsqrt %cst_3 : f32
        %294 = vector.matrix_multiply %160, %80 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<1xf32>) -> vector<3xf32>
        %295 = arith.divf %194, %cst_0 : f32
        scf.yield %51 : memref<1x1xf16>
      }
      %269 = math.floor %10 : tensor<1x1xf16>
      %270 = arith.maxui %true, %true : i1
      %271 = math.rsqrt %23 : tensor<f32>
      %272 = vector.matrix_multiply %187, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi64>, vector<3xi64>) -> vector<3xi64>
      %273 = vector.extract_strided_slice %148 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %274 = arith.subi %c856935031_i32, %c929795662_i32 : i32
      %275 = math.atan %11 : tensor<1x1xf16>
      %276 = tensor.empty() : tensor<1x1xf16>
      %277 = linalg.matmul ins(%202, %9 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%276 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %278 = memref.atomic_rmw addf %cst_4, %alloc_9[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
      %279 = vector.flat_transpose %159 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %127, %187, %extracted : vector<1xi64>, vector<1xi64> into i64
      %281 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%185, %49, %c14)
      scf.yield
    }
    %222 = math.copysign %202, %10 : tensor<1x1xf16>
    %223 = math.log %9 : tensor<1x1xf16>
    %224 = math.ctlz %14 : tensor<1x1x3xi64>
    %225 = vector.matrix_multiply %79, %79 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %226 = math.ipowi %47, %c17914_i16 : i16
    %227 = math.round %cst_4 : f16
    %228 = tensor.empty() : tensor<3x1x1xi64>
    %229 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%228 : tensor<3x1x1xi64>) outs(%5 : tensor<1x1x3xi64>) {
    ^bb0(%in: i64, %out: i64):
      %266 = math.log2 %splat : tensor<1x1x3xf16>
      %267 = vector.insert %cst_3, %160 [1] : f32 into vector<3xf32>
      %268 = bufferization.clone %alloc_16 : memref<3xi64> to memref<3xi64>
      %269 = index.divs %35, %c2
      %270 = arith.remsi %false, %true : i1
      %271 = index.add %43, %c4
      %272 = bufferization.to_tensor %alloc_20 : memref<3xf32>
      %273 = arith.divf %cst_0, %cst_3 : f32
      %274 = arith.cmpi ugt, %138, %c1680097510_i64 : i64
      %275 = math.atan %10 : tensor<1x1xf16>
      %276 = vector.create_mask %141, %221, %c6 : vector<1x1x3xi1>
      %277 = index.add %rank_28, %c10
      %278 = vector.multi_reduction <minsi>, %149, %149 [] : vector<1xi32> to vector<1xi32>
      %279 = vector.reduction <add>, %79 : vector<1xi1> into i1
      %280 = scf.while (%arg0 = %162) : (memref<1x1xi32>) -> memref<1x1xi32> {
        %295 = math.cttz %from_elements_21 : tensor<3xi1>
        %296 = vector.shuffle %123, %123 [1] : vector<1x1xf32>, vector<1x1xf32>
        %297 = vector.create_mask %49 : vector<3xi1>
        %298 = math.sqrt %11 : tensor<1x1xf16>
        memref.copy %162, %arg0 : memref<1x1xi32> to memref<1x1xi32>
        %299 = math.log %2 : tensor<1x1xf16>
        %300 = vector.shuffle %76, %117 [2, 4, 5] : vector<3xi16>, vector<3xi16>
        %301 = math.sqrt %24 : tensor<3xf32>
        scf.condition(%true) %arg0 : memref<1x1xi32>
      } do {
      ^bb0(%arg0: memref<1x1xi32>):
        %295 = index.ceildivs %c5, %c10
        %296 = arith.andi %extracted, %c336124344_i64 : i64
        %297 = arith.addf %cst_0, %194 : f32
        %298 = memref.load %alloc_15[%c0, %c0, %c0] : memref<2x1x1xf16>
        %extracted_41 = tensor.extract %0[%c1, %c0, %c0] : tensor<2x1x1xi32>
        %299 = arith.shrsi %out, %extracted : i64
        %true_42 = arith.constant true
        %false_43 = arith.constant false
        %300 = vector.transfer_read %4[%100, %100, %c9], %false_43 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<2x1x1xi1>, vector<1x2xi1>
        %301 = index.mul %35, %c15
        %302 = math.roundeven %202 : tensor<1x1xf16>
        %303 = arith.addf %cst_0, %cst_1 : f32
        %304 = arith.xori %c1680097510_i64, %c1680097510_i64 : i64
        %305 = math.sqrt %splat_24 : tensor<1x1xf16>
        %306 = vector.bitcast %276 : vector<1x1x3xi1> to vector<1x1x3xi1>
        %307 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 4) * 128 + d2 floordiv 4 + d2 + 1, d1 - 16, (d2 ceildiv 4) * 128 + d2 floordiv 4 + d2 + 1)>(%c14, %295, %c3)
        %308 = vector.broadcast %210 : f16 to vector<2xf16>
        %309 = vector.broadcast %true : i1 to vector<2xi1>
        %310 = vector.maskedload %51[%c0, %c0], %309, %308 : memref<1x1xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %311 = bufferization.to_tensor %alloc_11 : memref<1x1x3xi32>
        scf.yield %arg0 : memref<1x1xi32>
      }
      %true_39 = index.bool.constant true
      %281 = arith.cmpf ugt, %cst_0, %cst_0 : f32
      %282 = index.sub %c15, %50
      %283 = math.atan2 %cst, %210 : f16
      %284 = math.ipowi %47, %c6011_i16 : i16
      %false_40 = index.bool.constant false
      %285 = math.atan %11 : tensor<1x1xf16>
      %286 = arith.divsi %c17914_i16, %c31184_i16 : i16
      %287 = vector.flat_transpose %187 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %288 = vector.matrix_multiply %48, %187 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<1xi64>) -> vector<3xi64>
      %289 = arith.cmpf ugt, %194, %cst_1 : f32
      %290 = affine.load %51[%c15, %c12] : memref<1x1xf16>
      %291 = math.atan %202 : tensor<1x1xf16>
      %292 = arith.andi %c31184_i16, %c31184_i16 : i16
      %293 = index.add %282, %126
      %294 = vector.load %alloc_13[%c2] : memref<3xf32>, vector<1x1x3xf32>
      bufferization.dealloc_tensor %24 : tensor<3xf32>
      linalg.yield %c1680097510_i64 : i64
    } -> tensor<1x1x3xi64>
    %splat_32 = tensor.splat %c856935031_i32 : tensor<3xi32>
    %230 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%rank_28, %50, %c9, %c13)
    %231 = math.fma %splat_30, %2, %11 : tensor<1x1xf16>
    %232 = vector.insert %c336124344_i64, %101 [0] : i64 into vector<1xi64>
    %inserted = tensor.insert %cst into %11[%c0, %c0] : tensor<1x1xf16>
    %233 = tensor.empty() : tensor<2x1x1xf16>
    %mapped_33 = linalg.map ins(%alloc_8, %131, %alloc_15 : memref<2x1x1xf16>, tensor<2x1x1xf16>, memref<2x1x1xf16>) outs(%233 : tensor<2x1x1xf16>)
      (%in: f16, %in_39: f16, %in_40: f16) {
        %266 = arith.maxui %104, %47 : i16
        %267 = memref.load %alloc_14[%c0, %c0] : memref<1x1xi64>
        %268 = memref.atomic_rmw maxs %c856935031_i32, %alloc_11[%c0, %c0, %c0] : (i32, memref<1x1x3xi32>) -> i32
        %269 = vector.broadcast %c1680097510_i64 : i64 to vector<1x1xi64>
        %270 = vector.outerproduct %101, %127, %269 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        memref.copy %alloc_19, %alloc_5 : memref<3xi16> to memref<3xi16>
        %271 = math.fpowi %in_40, %c856935031_i32 : f16, i32
        %272 = affine.if affine_set<(d0) : (-d0 >= 0, d0 == 0)>(%c11) -> i64 {
          %293 = memref.atomic_rmw mulf %in_40, %alloc_15[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
          %from_elements_48 = tensor.from_elements %c6011_i16, %c31184_i16, %c31184_i16 : tensor<1x1x3xi16>
          %294 = math.tan %22 : tensor<f32>
          %rank_49 = tensor.rank %109 : tensor<1x1xi32>
          %295 = math.cttz %extracted : i64
          %splat_50 = tensor.splat %false : tensor<2x1x1xi1>
          %296 = vector.flat_transpose %78 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %297 = arith.floordivsi %c856935031_i32, %c856935031_i32 : i32
          affine.yield %extracted : i64
        } else {
          %293 = math.rsqrt %9 : tensor<1x1xf16>
          %294 = vector.splat %c8 : vector<2x1x1xindex>
          %295 = arith.divui %c31184_i16, %c6011_i16 : i16
          %296 = vector.load %37[%c1, %c0, %c0] : memref<2x1x1xi16>, vector<1x1xi16>
          %297 = math.cos %in_40 : f16
          %298 = arith.maxui %c31184_i16, %c-699_i16 : i16
          %299 = math.absi %7 : tensor<1x1xi64>
          %300 = vector.shuffle %123, %123 [0] : vector<1x1xf32>, vector<1x1xf32>
          affine.yield %c1680097510_i64 : i64
        }
        %273 = arith.remf %in, %in_39 : f16
        %274 = math.exp2 %cst_2 : f16
        vector.print %123 : vector<1x1xf32>
        %275 = math.absi %false : i1
        %splat_41 = tensor.splat %c929795662_i32 : tensor<1x1xi32>
        %276 = math.rsqrt %splat_24 : tensor<1x1xf16>
        scf.index_switch %c8 
        case 1 {
          %293 = index.maxs %43, %c7
          vector.print %42 : vector<1xi64>
          %294 = vector.broadcast %c6011_i16 : i16 to vector<3x3xi16>
          %295 = vector.outerproduct %117, %117, %294 {kind = #vector.kind<mul>} : vector<3xi16>, vector<3xi16>
          %296 = vector.splat %c11 : vector<1x1x3xindex>
          %297 = arith.divui %c856935031_i32, %c856935031_i32 : i32
          %298 = arith.remf %cst_3, %cst_1 : f32
          %299 = math.sqrt %9 : tensor<1x1xf16>
          %300 = arith.remf %cst_3, %cst_3 : f32
          %301 = index.ceildivs %32, %112
          %302 = vector.reduction <maxsi>, %149 : vector<1xi32> into i32
          memref.store %c17914_i16, %alloc_5[%c2] : memref<3xi16>
          %303 = arith.cmpf ueq, %194, %cst_0 : f32
          %304 = index.ceildivu %c8, %c6
          %305 = math.atan2 %cst_2, %210 : f16
          %alloc_48 = memref.alloc() : memref<3xi1>
          %c0_i16 = arith.constant 0 : i16
          %306 = vector.transfer_read %alloc_5[%c10], %c0_i16 : memref<3xi16>, vector<i16>
          scf.yield
        }
        case 2 {
          %293 = math.ceil %210 : f16
          %294 = index.divs %c13, %130
          %alloca = memref.alloca() : memref<1x1x3xi1>
          %295 = math.expm1 %11 : tensor<1x1xf16>
          %296 = math.exp2 %2 : tensor<1x1xf16>
          %297 = math.atan %splat_24 : tensor<1x1xf16>
          %true_48 = index.bool.constant true
          %298 = arith.divui %c336124344_i64, %c336124344_i64 : i64
          %299 = vector.transpose %149, [0] : vector<1xi32> to vector<1xi32>
          %300 = arith.maxf %cst, %in_40 : f16
          %301 = vector.reduction <maxui>, %48 : vector<3xi64> into i64
          %302 = math.exp2 %24 : tensor<3xf32>
          %303 = arith.cmpf uge, %cst, %cst_2 : f16
          %304 = arith.divf %cst_1, %cst_3 : f32
          %305 = math.copysign %splat, %splat : tensor<1x1x3xf16>
          %splat_49 = tensor.splat %c-699_i16 : tensor<1x1x3xi16>
          scf.yield
        }
        case 3 {
          %alloca = memref.alloca() : memref<1x1x3xi1>
          %293 = arith.ori %138, %138 : i64
          %294 = vector.broadcast %c1680097510_i64 : i64 to vector<3x3xi64>
          %295 = vector.outerproduct %21, %48, %294 {kind = #vector.kind<mul>} : vector<3xi64>, vector<3xi64>
          %296 = affine.load %alloc[%c9, %c12, %c8] : memref<1x1x3xi64>
          %297 = math.absi %3 : tensor<2x1x1xi64>
          %298 = vector.extract %78[0] : vector<1xf32>
          %299 = vector.broadcast %c31184_i16 : i16 to vector<1x1xi16>
          %300 = vector.load %alloc_7[%c0, %c0] : memref<1x1xf16>, vector<1x1x3xf16>
          %301 = arith.addi %false, %false : i1
          %rank_48 = tensor.rank %from_elements : tensor<3xi64>
          %302 = math.sqrt %10 : tensor<1x1xf16>
          %303 = memref.atomic_rmw andi %c856935031_i32, %alloc_11[%c0, %c0, %c2] : (i32, memref<1x1x3xi32>) -> i32
          %304 = arith.minf %cst_4, %cst : f16
          %305 = math.log2 %11 : tensor<1x1xf16>
          %306 = index.ceildivu %221, %219
          bufferization.dealloc_tensor %splat : tensor<1x1x3xf16>
          scf.yield
        }
        case 4 {
          %293 = arith.cmpi slt, %104, %c31184_i16 : i16
          %294 = arith.minf %cst_0, %cst_1 : f32
          %295 = arith.floordivsi %47, %c31184_i16 : i16
          %296 = index.divs %230, %c8
          %297 = arith.minui %c856935031_i32, %c856935031_i32 : i32
          %298 = arith.muli %c929795662_i32, %c929795662_i32 : i32
          %299 = arith.muli %c929795662_i32, %c856935031_i32 : i32
          %300 = index.ceildivu %c6, %197
          %301 = math.floor %22 : tensor<f32>
          %302 = math.roundeven %2 : tensor<1x1xf16>
          %303 = math.fma %9, %11, %10 : tensor<1x1xf16>
          %alloca = memref.alloca() : memref<1x1xi16>
          %304 = math.absi %false : i1
          memref.assume_alignment %alloc_10, 16 : memref<1x1x3xi64>
          %305 = index.add %63, %c13
          %306 = index.casts %112 : index to i32
          scf.yield
        }
        default {
          %cst_48 = arith.constant 1.000000e+00 : f16
          %cst_49 = arith.constant 0.000000e+00 : f16
          %293 = vector.transfer_read %9[%66, %114], %cst_49 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x1xf16>, vector<3xf16>
          %294 = index.mul %43, %c3
          %295 = vector.shuffle %79, %79 [1] : vector<1xi1>, vector<1xi1>
          %296 = index.sizeof
          %297 = arith.shrsi %c17914_i16, %c31184_i16 : i16
          %298 = math.round %131 : tensor<2x1x1xf16>
          %299 = arith.minui %c6011_i16, %c17914_i16 : i16
          %300 = affine.apply affine_map<(d0) -> (-d0)>(%rank_28)
          %splat_50 = tensor.splat %in_40 : tensor<1x1xf16>
          %false_51 = index.bool.constant false
          %301 = arith.divui %138, %138 : i64
          %302 = math.ctpop %14 : tensor<1x1x3xi64>
          %expanded = tensor.expand_shape %splat_32 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
          %splat_52 = tensor.splat %cst_1 : tensor<3xf32>
          %collapsed_53 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<1x1x3xi64> into tensor<1x3xi64>
          %303 = memref.atomic_rmw ori %extracted, %alloc_14[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
        }
        %cst_42 = arith.constant 1.000000e+00 : f16
        %cst_43 = arith.constant 0.000000e+00 : f16
        %277 = vector.transfer_read %233[%219, %126, %c13], %cst_43 : tensor<2x1x1xf16>, vector<f16>
        %278 = memref.realloc %alloc_19 : memref<3xi16> to memref<1xi16>
        %279 = index.divu %c6, %66
        %280 = arith.addf %cst_3, %194 : f32
        %splat_44 = tensor.splat %cst_1 : tensor<1x1xf32>
        %from_elements_45 = tensor.from_elements %c336124344_i64, %c336124344_i64 : tensor<2x1x1xi64>
        %281 = arith.maxui %false, %false : i1
        %282 = math.powf %in_39, %in_39 : f16
        %283 = index.mul %63, %185
        %284 = arith.andi %47, %c6011_i16 : i16
        %285 = arith.xori %c1680097510_i64, %138 : i64
        %286 = index.mul %279, %283
        affine.store %in_39, %alloc_8[%c1, %c9, %c8] : memref<2x1x1xf16>
        %287 = affine.load %37[%c7, %c8, %c10] : memref<2x1x1xi16>
        %alloc_46 = memref.alloc() : memref<1xf16>
        %288 = tensor.empty() : tensor<3x1xf16>
        %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat, %alloc_46, %288 : tensor<1x1x3xf16>, memref<1xf16>, tensor<3x1xf16>) outs(%splat : tensor<1x1x3xf16>) {
        ^bb0(%in_48: f16, %in_49: f16, %in_50: f16, %out: f16):
          %293 = vector.flat_transpose %160 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
          %294 = vector.broadcast %221 : index to vector<3xindex>
          %295 = vector.broadcast %false : i1 to vector<3xi1>
          %296 = vector.broadcast %in_48 : f16 to vector<3xf16>
          vector.scatter %alloc_9[%c0, %c0, %c0] [%294], %295, %296 : memref<2x1x1xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
          %297 = math.sqrt %cst_42 : f16
          %298 = vector.broadcast %cst_42 : f16 to vector<2x1x1xf16>
          %299 = index.sizeof
          %300 = arith.maxsi %true, %true : i1
          %301 = arith.xori %104, %c31184_i16 : i16
          %302 = arith.minf %in_39, %in : f16
          %303 = arith.remsi %c-699_i16, %c17914_i16 : i16
          %304 = arith.minf %in_49, %in_48 : f16
          %305 = vector.load %alloc_17[%c1, %c0, %c0] : memref<2x1x1xi16>, vector<1x1xi16>
          %306 = tensor.empty() : tensor<1x1xf16>
          %307 = linalg.matmul ins(%9, %11 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%306 : tensor<1x1xf16>) -> tensor<1x1xf16>
          %308 = vector.matrix_multiply %225, %225 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %309 = arith.minf %cst_1, %cst_0 : f32
          %310 = math.exp2 %131 : tensor<2x1x1xf16>
          memref.copy %51, %alloc_7 : memref<1x1xf16> to memref<1x1xf16>
          %311 = vector.insert %false, %225 [0] : i1 into vector<1xi1>
          %312 = math.fpowi %cst, %c856935031_i32 : f16, i32
          %313 = arith.remsi %104, %287 : i16
          %314 = vector.broadcast %c-699_i16 : i16 to vector<2xi16>
          %315 = vector.broadcast %true : i1 to vector<2xi1>
          %316 = vector.maskedload %alloc_5[%c2], %315, %314 : memref<3xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
          %317 = arith.remsi %104, %104 : i16
          %318 = arith.maxsi %c1680097510_i64, %c336124344_i64 : i64
          %319 = memref.load %alloc_7[%c0, %c0] : memref<1x1xf16>
          %320 = math.roundeven %10 : tensor<1x1xf16>
          %321 = math.atan2 %cst, %in_48 : f16
          %alloc_51 = memref.alloc() : memref<2x1x1xi32>
          %collapsed_52 = tensor.collapse_shape %transposed [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
          %322 = bufferization.to_tensor %alloc_12 : memref<2x1x1xi32>
          %323 = math.ipowi %c1680097510_i64, %c336124344_i64 : i64
          %324 = arith.remsi %true, %true : i1
          %325 = math.roundeven %cst_3 : f32
          %326 = math.absf %cst_1 : f32
          linalg.yield %in_49 : f16
        } -> tensor<1x1x3xf16>
        %290 = math.sqrt %10 : tensor<1x1xf16>
        %291 = math.tanh %210 : f16
        %292 = math.tanh %210 : f16
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    %234 = arith.mulf %cst, %cst_2 : f16
    %235 = math.floor %cst : f16
    %236 = math.cos %9 : tensor<1x1xf16>
    %237 = memref.atomic_rmw assign %cst_1, %alloc_18[%c0, %c0, %c0] : (f32, memref<1x1x3xf32>) -> f32
    %238 = arith.shrsi %47, %c31184_i16 : i16
    %239 = math.cttz %from_elements_23 : tensor<1x1xi64>
    %240 = math.exp2 %cst_0 : f32
    %241 = arith.divf %194, %cst_3 : f32
    %rank_34 = tensor.rank %from_elements_21 : tensor<3xi1>
    %242 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + (d0 + 1) mod 128 - 16 == 0, d3 >= 0)>(%c13, %c12, %c4, %c4) -> memref<3xi1> {
      %266 = math.cttz %3 : tensor<2x1x1xi64>
      scf.execute_region {
        %alloc_40 = memref.alloc() : memref<2x1x1xi32>
        %273 = arith.remf %cst_2, %cst_4 : f16
        %274 = math.round %2 : tensor<1x1xf16>
        %275 = arith.xori %c856935031_i32, %c929795662_i32 : i32
        %276 = math.cos %splat_24 : tensor<1x1xf16>
        %277 = arith.addf %210, %cst_2 : f16
        %278 = math.rsqrt %10 : tensor<1x1xf16>
        %279 = math.absf %24 : tensor<3xf32>
        %280 = arith.divui %c929795662_i32, %c856935031_i32 : i32
        %false_41 = index.bool.constant false
        %281 = math.absf %23 : tensor<f32>
        %282 = index.maxu %100, %198
        %283 = math.powf %splat_30, %splat_24 : tensor<1x1xf16>
        %extracted_42 = tensor.extract %splat_29[%c0, %c0, %c2] : tensor<1x1x3xi16>
        %284 = arith.divf %cst_4, %cst_4 : f16
        %285 = arith.remsi %c6011_i16, %c-699_i16 : i16
        scf.yield
      }
      %267 = arith.remf %210, %cst : f16
      %268 = math.tan %10 : tensor<1x1xf16>
      %269 = arith.maxui %c856935031_i32, %c856935031_i32 : i32
      %270 = math.ceil %cst : f16
      %271 = math.sqrt %splat_30 : tensor<1x1xf16>
      %272 = vector.multi_reduction <or>, %117, %117 [] : vector<3xi16> to vector<3xi16>
      %alloc_39 = memref.alloc() : memref<3xi1>
      affine.yield %alloc_39 : memref<3xi1>
    } else {
      %266 = math.cttz %c929795662_i32 : i32
      %267 = math.sqrt %9 : tensor<1x1xf16>
      %268 = math.copysign %10, %splat_30 : tensor<1x1xf16>
      %269 = index.maxu %230, %c8
      %270 = arith.maxf %cst_0, %cst_3 : f32
      %271 = index.casts %extracted : i64 to index
      bufferization.dealloc_tensor %3 : tensor<2x1x1xi64>
      %272 = arith.remsi %true, %true : i1
      %alloc_39 = memref.alloc() : memref<3xi1>
      affine.yield %alloc_39 : memref<3xi1>
    }
    %243 = vector.transpose %124, [0, 1] : vector<1x1xf32> to vector<1x1xf32>
    %244 = math.log2 %10 : tensor<1x1xf16>
    %245 = arith.maxf %cst_4, %cst_2 : f16
    affine.for %arg0 = 0 to 107 {
    }
    %246 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
    %247 = vector.fma %246, %124, %246 : vector<1x1xf32>
    %248 = vector.splat %220 : vector<3xindex>
    %249 = math.cos %cst_3 : f32
    %250 = arith.minf %194, %cst_3 : f32
    %251 = tensor.empty() : tensor<2x1xi1>
    %mapped_35 = linalg.map ins(%collapsed, %collapsed : tensor<2x1xi1>, tensor<2x1xi1>) outs(%251 : tensor<2x1xi1>)
      (%in: i1, %in_39: i1) {
        %266 = arith.muli %in, %false : i1
        %267 = math.absi %138 : i64
        %268 = arith.ceildivsi %true, %false : i1
        %269 = arith.cmpf ult, %cst_0, %cst_1 : f32
        memref.alloca_scope  {
          %alloca = memref.alloca() : memref<1x1xf16>
          %290 = math.sqrt %10 : tensor<1x1xf16>
          %291 = arith.remf %210, %cst_2 : f16
          %292 = math.powf %cst_3, %cst_0 : f32
          %293 = arith.negf %210 : f16
          %294 = arith.divui %138, %extracted : i64
          %295 = arith.divui %in, %in_39 : i1
          %296 = index.casts %rank : index to i32
          %297 = math.ctpop %6 : tensor<1x1x3xi64>
          %298 = index.mul %86, %221
          %299 = tensor.empty() : tensor<1x1xi64>
          %300 = linalg.matmul ins(%7, %7 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%299 : tensor<1x1xi64>) -> tensor<1x1xi64>
          %301 = arith.maxui %true, %in : i1
          %rank_45 = tensor.rank %from_elements_21 : tensor<3xi1>
          %302 = arith.divsi %104, %c-699_i16 : i16
          %303 = math.exp2 %10 : tensor<1x1xf16>
          %304 = index.divs %35, %63
          %305 = arith.addf %cst_2, %cst : f16
          %306 = math.tanh %23 : tensor<f32>
          %307 = vector.multi_reduction <add>, %64, %138 [0] : vector<3xi64> to i64
          %from_elements_46 = tensor.from_elements %cst_3, %cst_3, %cst_1 : tensor<3xf32>
          %308 = math.atan %splat_24 : tensor<1x1xf16>
          %309 = arith.divui %c336124344_i64, %extracted : i64
          %310 = math.fpowi %24, %splat_32 : tensor<3xf32>, tensor<3xi32>
          %311 = memref.realloc %alloc_16 : memref<3xi64> to memref<3xi64>
          %312 = math.atan %cst : f16
          %313 = math.tan %24 : tensor<3xf32>
          %rank_47 = tensor.rank %1 : tensor<1x1xi32>
          %true_48 = index.bool.constant true
          %314 = arith.floordivsi %in, %true_48 : i1
          %315 = memref.realloc %alloc_16 : memref<3xi64> to memref<1xi64>
          %316 = affine.load %alloc_7[%c15, %c7] : memref<1x1xf16>
          %317 = tensor.empty() : tensor<2x1x1xf16>
        }
        %270 = vector.broadcast %c856935031_i32 : i32 to vector<3xi32>
        %271 = math.roundeven %194 : f32
        %272 = arith.maxui %c1680097510_i64, %138 : i64
        %273 = arith.ceildivsi %c856935031_i32, %c856935031_i32 : i32
        %rank_40 = tensor.rank %233 : tensor<2x1x1xf16>
        %274 = index.divs %112, %rank
        %cast_41 = tensor.cast %10 : tensor<1x1xf16> to tensor<?x?xf16>
        %cast_42 = tensor.cast %splat_30 : tensor<1x1xf16> to tensor<?x?xf16>
        %from_elements_43 = tensor.from_elements %in, %in, %true : tensor<3xi1>
        %275 = vector.matrix_multiply %42, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi64>, vector<3xi64>) -> vector<3xi64>
        %276 = arith.cmpf ugt, %cst_4, %cst_4 : f16
        bufferization.dealloc_tensor %from_elements : tensor<3xi64>
        %277 = index.sub %141, %185
        %278 = arith.xori %c6011_i16, %104 : i16
        affine.store %c856935031_i32, %alloc_11[%c9, %c0, %c13] : memref<1x1x3xi32>
        %279 = arith.divf %cst, %cst : f16
        %280 = vector.load %alloc_17[%c1, %c0, %c0] : memref<2x1x1xi16>, vector<1x1xi16>
        %281 = arith.andi %c1680097510_i64, %extracted : i64
        bufferization.dealloc_tensor %11 : tensor<1x1xf16>
        %282 = arith.remf %210, %cst : f16
        %283 = arith.remsi %c336124344_i64, %c1680097510_i64 : i64
        %284 = arith.remf %cst, %cst_4 : f16
        %285 = math.atan %202 : tensor<1x1xf16>
        %286 = arith.andi %c6011_i16, %c31184_i16 : i16
        %287 = scf.index_switch %c5 -> index 
        case 1 {
          bufferization.dealloc_tensor %4 : tensor<2x1x1xi1>
          %290 = arith.subi %false, %false : i1
          %true_45 = index.bool.constant true
          %291 = arith.maxui %in, %true_45 : i1
          %292 = math.absi %1 : tensor<1x1xi32>
          %293 = math.round %11 : tensor<1x1xf16>
          %294 = math.fpowi %splat_24, %8 : tensor<1x1xf16>, tensor<1x1xi32>
          %295 = arith.muli %false, %false : i1
          %296 = arith.maxsi %false, %true : i1
          %297 = vector.flat_transpose %148 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %cst_46 = arith.constant 1.000000e+00 : f32
          %298 = vector.transfer_read %24[%c5], %cst_46 : tensor<3xf32>, vector<f32>
          %299 = arith.floordivsi %c856935031_i32, %c929795662_i32 : i32
          %splat_47 = tensor.splat %cst_1 : tensor<1x1xf32>
          %300 = arith.maxf %cst, %cst : f16
          %301 = arith.cmpf une, %cst, %210 : f16
          %true_48 = index.bool.constant true
          scf.yield %35 : index
        }
        case 2 {
          %290 = math.fpowi %131, %0 : tensor<2x1x1xf16>, tensor<2x1x1xi32>
          %291 = math.copysign %2, %9 : tensor<1x1xf16>
          %splat_45 = tensor.splat %210 : tensor<2x1x1xf16>
          %292 = arith.maxsi %c6011_i16, %c6011_i16 : i16
          %293 = arith.divf %cst_1, %cst_0 : f32
          %294 = arith.maxsi %47, %c17914_i16 : i16
          %295 = math.copysign %splat_24, %9 : tensor<1x1xf16>
          %296 = vector.create_mask %c1 : vector<3xi1>
          %297 = memref.atomic_rmw mulf %210, %alloc_9[%c0, %c0, %c0] : (f16, memref<2x1x1xf16>) -> f16
          %298 = math.expm1 %splat_45 : tensor<2x1x1xf16>
          %299 = vector.broadcast %220 : index to vector<1xindex>
          %300 = vector.broadcast %210 : f16 to vector<1xf16>
          vector.scatter %51[%c0, %c0] [%299], %225, %300 : memref<1x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %301 = math.floor %23 : tensor<f32>
          %302 = affine.min affine_map<(d0) -> ((-d0 + 1) ceildiv 16, d0 floordiv 32, -d0 + 1, d0 * -2 + 1)>(%c2)
          %303 = index.sizeof
          %304 = arith.maxf %cst_4, %cst_4 : f16
          %extracted_46 = tensor.extract %146[%c1, %c0, %c0] : tensor<2x1x1xi16>
          scf.yield %274 : index
        }
        case 3 {
          %290 = math.fpowi %2, %157 : tensor<1x1xf16>, tensor<1x1xi32>
          %from_elements_45 = tensor.from_elements %in_39, %true, %in : tensor<1x1x3xi1>
          %291 = math.absi %8 : tensor<1x1xi32>
          %292 = memref.atomic_rmw andi %c17914_i16, %37[%c1, %c0, %c0] : (i16, memref<2x1x1xi16>) -> i16
          %293 = index.ceildivs %114, %rank_34
          %294 = arith.remui %104, %c31184_i16 : i16
          %295 = math.ctpop %12 : tensor<1x1xi32>
          %296 = arith.minui %in_39, %true : i1
          %297 = math.cttz %5 : tensor<1x1x3xi64>
          %c1_i64 = arith.constant 1 : i64
          %298 = vector.transfer_read %alloc_16[%rank], %c1_i64 : memref<3xi64>, vector<i64>
          %299 = arith.addf %cst_3, %cst_3 : f32
          %300 = arith.andi %c856935031_i32, %c856935031_i32 : i32
          %false_46 = index.bool.constant false
          %301 = index.floordivs %rank, %293
          memref.copy %alloc_19, %alloc_5 : memref<3xi16> to memref<3xi16>
          %302 = arith.minf %cst_3, %cst_1 : f32
          scf.yield %43 : index
        }
        default {
          %290 = vector.multi_reduction <add>, %246, %78 [1] : vector<1x1xf32> to vector<1xf32>
          %291 = vector.create_mask %c1, %63, %c3 : vector<2x1x1xi1>
          %292 = affine.min affine_map<(d0, d1, d2) -> ((-d2) ceildiv 4, -d0, d0 ceildiv 8, d2 mod 32)>(%c14, %c9, %c9)
          %293 = vector.matrix_multiply %64, %120 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
          %294 = vector.extract_strided_slice %139 {offsets = [0, 0], sizes = [2, 1], strides = [1, 1]} : vector<2x1x1xi16> to vector<2x1x1xi16>
          %295 = arith.divf %194, %cst_3 : f32
          %296 = arith.divsi %extracted, %138 : i64
          %297 = arith.divf %cst_0, %194 : f32
          %298 = arith.ori %c856935031_i32, %c856935031_i32 : i32
          %299 = arith.minui %c31184_i16, %c31184_i16 : i16
          %300 = vector.broadcast %cst : f16 to vector<1x1xf16>
          %301 = math.copysign %cst_4, %cst_2 : f16
          %extracted_45 = tensor.extract %23[] : tensor<f32>
          %cast_46 = tensor.cast %from_elements_21 : tensor<3xi1> to tensor<?xi1>
          %302 = math.cttz %14 : tensor<1x1x3xi64>
          %303 = memref.atomic_rmw assign %138, %alloc_14[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
          scf.yield %rank : index
        }
        %288 = arith.cmpf ord, %cst_1, %cst_1 : f32
        %289 = memref.realloc %alloc_20 : memref<3xf32> to memref<3xf32>
        %true_44 = arith.constant true
        linalg.yield %true_44 : i1
      }
    %252 = arith.muli %c856935031_i32, %c856935031_i32 : i32
    %253 = arith.maxui %c1680097510_i64, %c1680097510_i64 : i64
    %254 = vector.broadcast %cst_4 : f16 to vector<1xf16>
    %255 = vector.maskedload %alloc_8[%c0, %c0, %c0], %79, %254 : memref<2x1x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %256 = arith.cmpf ult, %cst, %210 : f16
    %257 = math.sqrt %131 : tensor<2x1x1xf16>
    %258 = math.floor %splat_30 : tensor<1x1xf16>
    %259 = vector.matrix_multiply %64, %101 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<1xi64>) -> vector<3xi64>
    %true_36 = index.bool.constant true
    %260 = math.exp2 %9 : tensor<1x1xf16>
    %261 = memref.atomic_rmw muli %138, %alloc_16[%c2] : (i64, memref<3xi64>) -> i64
    %262 = index.sub %c12, %c9
    %263 = tensor.empty() : tensor<2x1x1xf16>
    %264 = linalg.copy ins(%131 : tensor<2x1x1xf16>) outs(%263 : tensor<2x1x1xf16>) -> tensor<2x1x1xf16>
    %alloc_37 = memref.alloc() : memref<3xi1>
    linalg.transpose ins(%15 : tensor<3xi1>) outs(%alloc_37 : memref<3xi1>) permutation = [0] 
    %alloc_38 = memref.alloc() : memref<2x1xi16>
    linalg.reduce ins(%alloc_17 : memref<2x1x1xi16>) outs(%alloc_38 : memref<2x1xi16>) dimensions = [2] 
      (%in: i16, %init: i16) {
        %266 = vector.bitcast %76 : vector<3xi16> to vector<3xf16>
        %splat_39 = tensor.splat %c856935031_i32 : tensor<1x1xi32>
        %267 = arith.divf %cst, %210 : f16
        %268 = index.maxs %c14, %185
        %269 = arith.minf %210, %cst : f16
        %270 = arith.addf %194, %cst_3 : f32
        %271 = arith.maxf %cst_3, %cst_0 : f32
        %272 = math.copysign %cst_3, %cst_1 : f32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg0, %arg1) = (%230, %c3) to (%c11, %c11) step (%c15, %c5) {
      %266 = math.cttz %7 : tensor<1x1xi64>
      %from_elements_39 = tensor.from_elements %138, %c336124344_i64, %c336124344_i64 : tensor<3xi64>
      %267 = index.divu %114, %112
      %268 = scf.index_switch %86 -> index 
      case 1 {
        %280 = arith.negf %cst_1 : f32
        %281 = arith.divf %210, %cst : f16
        %282 = arith.divui %104, %104 : i16
        %283 = vector.extract_strided_slice %246 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
        %284 = arith.ori %c336124344_i64, %extracted : i64
        %285 = arith.minf %194, %cst_3 : f32
        %286 = arith.divf %194, %194 : f32
        %from_elements_41 = tensor.from_elements %210 : tensor<1x1xf16>
        %287 = vector.broadcast %c31184_i16 : i16 to vector<2xi16>
        %288 = vector.broadcast %false : i1 to vector<2xi1>
        %289 = vector.maskedload %37[%c0, %c0, %c0], %288, %287 : memref<2x1x1xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %290 = math.ipowi %15, %15 : tensor<3xi1>
        %291 = arith.remf %cst_0, %cst_1 : f32
        %292 = vector.shuffle %117, %289 [0, 4] : vector<3xi16>, vector<2xi16>
        %293 = vector.splat %138 : vector<2x1x1xi64>
        %294 = arith.maxf %cst_4, %cst : f16
        %from_elements_42 = tensor.from_elements %c856935031_i32, %c856935031_i32, %c856935031_i32 : tensor<3xi32>
        %c1_i64_43 = arith.constant 1 : i64
        %295 = vector.transfer_read %alloc_16[%43], %c1_i64_43 : memref<3xi64>, vector<i64>
        scf.yield %262 : index
      }
      case 2 {
        %280 = arith.mulf %cst_1, %cst_1 : f32
        %281 = vector.insert %138, %153 [0] : i64 into vector<1xi64>
        %282 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %283 = arith.andi %c17914_i16, %c17914_i16 : i16
        %284 = index.mul %c8, %100
        %false_41 = index.bool.constant false
        %285 = arith.shli %c929795662_i32, %c856935031_i32 : i32
        memref.copy %alloc_7, %51 : memref<1x1xf16> to memref<1x1xf16>
        %alloc_42 = memref.alloc() : memref<3xi1>
        %286 = math.atan %cst_2 : f16
        %287 = arith.remsi %extracted, %extracted : i64
        %288 = arith.divsi %true, %false_41 : i1
        %289 = math.rsqrt %9 : tensor<1x1xf16>
        %290 = vector.extract_strided_slice %76 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
        %extracted_43 = tensor.extract %131[%c1, %c0, %c0] : tensor<2x1x1xf16>
        %291 = arith.ori %c6011_i16, %104 : i16
        scf.yield %c6 : index
      }
      case 3 {
        %280 = math.sqrt %splat : tensor<1x1x3xf16>
        %281 = arith.addf %cst, %cst : f16
        %splat_41 = tensor.splat %210 : tensor<1x1x3xf16>
        %true_42 = index.bool.constant true
        %282 = memref.realloc %alloc_19 : memref<3xi16> to memref<1xi16>
        %283 = vector.extract %247[0] : vector<1x1xf32>
        %284 = math.fpowi %9, %18 : tensor<1x1xf16>, tensor<1x1xi32>
        %285 = arith.divf %cst_2, %210 : f16
        %false_43 = index.bool.constant false
        %286 = vector.load %alloc_9[%c0, %c0, %c0] : memref<2x1x1xf16>, vector<2x1x1xf16>
        %true_44 = index.bool.constant true
        %287 = arith.divui %c-699_i16, %c-699_i16 : i16
        %288 = math.ceil %11 : tensor<1x1xf16>
        %289 = arith.remf %cst_0, %cst_3 : f32
        %splat_45 = tensor.splat %true : tensor<2x1x1xi1>
        %290 = math.ctpop %c-699_i16 : i16
        scf.yield %112 : index
      }
      default {
        %280 = vector.matrix_multiply %255, %254 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %extracted_41 = tensor.extract %2[%c0, %c0] : tensor<1x1xf16>
        %281 = vector.multi_reduction <minsi>, %56, %127 [1, 2] : vector<1x1x3xi64> to vector<1xi64>
        %cast_42 = tensor.cast %18 : tensor<1x1xi32> to tensor<?x?xi32>
        %282 = index.mul %97, %100
        %283 = affine.load %alloc_20[%c14] : memref<3xf32>
        %alloc_43 = memref.alloc() : memref<1x1x3xi16>
        %284 = vector.reduction <maxui>, %148 : vector<1xi32> into i32
        %285 = vector.load %alloc_7[%c0, %c0] : memref<1x1xf16>, vector<3xf16>
        %286 = math.atan2 %cst_4, %extracted_41 : f16
        %287 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi64> to vector<2xi64>
        %288 = index.sub %197, %50
        %289 = math.atan %194 : f32
        %290 = arith.maxui %true, %false : i1
        %291 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d3 - 4) * 32 + d0)>(%219, %114, %282, %126)
        %splat_44 = tensor.splat %210 : tensor<1x1xf16>
        scf.yield %282 : index
      }
      %269 = vector.insert %c856935031_i32, %175 [0] : i32 into vector<3xi32>
      %270 = vector.broadcast %c11 : index to vector<1xindex>
      vector.scatter %alloc_13[%c1] [%270], %79, %80 : memref<3xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %271 = vector.shuffle %80, %160 [1, 3] : vector<1xf32>, vector<3xf32>
      %272 = arith.shrsi %c336124344_i64, %c1680097510_i64 : i64
      %273 = arith.xori %104, %c6011_i16 : i16
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %64, %48, %c1680097510_i64 : vector<3xi64>, vector<3xi64> into i64
      %rank_40 = tensor.rank %from_elements_25 : tensor<2x1x1xi16>
      %275 = arith.maxui %true, %true_36 : i1
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %14[%97, %197, %c6], %c0_i64 : tensor<1x1x3xi64>, vector<i64>
      %277 = math.powf %splat, %splat : tensor<1x1x3xf16>
      %278 = index.divu %c8, %63
      %279 = vector.load %alloc_9[%c0, %c0, %c0] : memref<2x1x1xf16>, vector<1x1x3xf16>
      scf.yield
    }
    %265 = affine.vector_load %alloc_11[%c2, %rank_28, %c5] : memref<1x1x3xi32>, vector<2xi32>
    affine.vector_store %175, %162[%262, %49] : memref<1x1xi32>, vector<3xi32>
    vector.print %21 : vector<3xi64>
    vector.print %42 : vector<1xi64>
    vector.print %48 : vector<3xi64>
    vector.print %56 : vector<1x1x3xi64>
    vector.print %64 : vector<3xi64>
    vector.print %73 : vector<f16>
    vector.print %76 : vector<3xi16>
    vector.print %78 : vector<1xf32>
    vector.print %79 : vector<1xi1>
    vector.print %80 : vector<1xf32>
    vector.print %101 : vector<1xi64>
    vector.print %117 : vector<3xi16>
    vector.print %120 : vector<3xi64>
    vector.print %123 : vector<1x1xf32>
    vector.print %124 : vector<1x1xf32>
    vector.print %127 : vector<1xi64>
    vector.print %139 : vector<2x1x1xi16>
    vector.print %148 : vector<1xi32>
    vector.print %149 : vector<1xi32>
    vector.print %153 : vector<1xi64>
    vector.print %159 : vector<3xf32>
    vector.print %160 : vector<3xf32>
    vector.print %175 : vector<3xi32>
    vector.print %187 : vector<1xi64>
    vector.print %200 : vector<f16>
    vector.print %225 : vector<1xi1>
    vector.print %246 : vector<1x1xf32>
    vector.print %247 : vector<1x1xf32>
    vector.print %254 : vector<1xf16>
    vector.print %255 : vector<1xf16>
    vector.print %259 : vector<3xi64>
    vector.print %265 : vector<2xi32>
    vector.print %cst : f16
    vector.print %c31184_i16 : i16
    vector.print %c17914_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c929795662_i32 : i32
    vector.print %c6011_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c-699_i16 : i16
    vector.print %cst_2 : f16
    vector.print %false : i1
    vector.print %c336124344_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c856935031_i32 : i32
    vector.print %c1680097510_i64 : i64
    vector.print %cst_4 : f16
    vector.print %true : i1
    vector.print %extracted : i64
    vector.print %47 : i16
    vector.print %104 : i16
    vector.print %138 : i64
    vector.print %194 : f32
    vector.print %210 : f16
    vector.print %true_36 : i1
    return %from_elements_25 : tensor<2x1x1xi16>
  }
}
