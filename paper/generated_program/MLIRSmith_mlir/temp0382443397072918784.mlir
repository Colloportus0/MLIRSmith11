module {
  func.func @func1() {
    %c1522129235_i64 = arith.constant 1522129235 : i64
    %cst = arith.constant 1.17963712E+9 : f32
    %c596764009_i32 = arith.constant 596764009 : i32
    %cst_0 = arith.constant 0x4CE96A67 : f32
    %cst_1 = arith.constant 1.52021107E+9 : f32
    %c119715009_i32 = arith.constant 119715009 : i32
    %false = arith.constant false
    %true = arith.constant true
    %c827031015_i64 = arith.constant 827031015 : i64
    %c1208326582_i64 = arith.constant 1208326582 : i64
    %cst_2 = arith.constant 2.10152422E+9 : f32
    %c1307988576_i64 = arith.constant 1307988576 : i64
    %false_3 = arith.constant false
    %c-20085_i16 = arith.constant -20085 : i16
    %cst_4 = arith.constant 1.37637888E+9 : f32
    %false_5 = arith.constant false
    %0 = tensor.empty() : tensor<4xi64>
    %1 = tensor.empty() : tensor<11xf32>
    %2 = tensor.empty() : tensor<11xf16>
    %3 = tensor.empty() : tensor<4xi64>
    %4 = tensor.empty() : tensor<4xi64>
    %5 = tensor.empty() : tensor<4xi32>
    %6 = tensor.empty() : tensor<4x11xi16>
    %7 = tensor.empty() : tensor<4xi32>
    %8 = tensor.empty() : tensor<4xi64>
    %9 = tensor.empty() : tensor<4xi64>
    %10 = tensor.empty() : tensor<4x11xf32>
    %11 = tensor.empty() : tensor<13x11xf16>
    %12 = tensor.empty() : tensor<11xi32>
    %13 = tensor.empty() : tensor<4xf16>
    %14 = tensor.empty() : tensor<11xf32>
    %15 = tensor.empty() : tensor<13x11xi64>
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
    %alloc = memref.alloc() : memref<11xi64>
    %alloc_6 = memref.alloc() : memref<4x11xi16>
    %alloc_7 = memref.alloc() : memref<4xf16>
    %alloc_8 = memref.alloc() : memref<4x11xf16>
    %alloc_9 = memref.alloc() : memref<4xi1>
    %alloc_10 = memref.alloc() : memref<4x11xf16>
    %alloc_11 = memref.alloc() : memref<4xi64>
    %alloc_12 = memref.alloc() : memref<4xi32>
    %alloc_13 = memref.alloc() : memref<11xi64>
    %alloc_14 = memref.alloc() : memref<4xf16>
    %alloc_15 = memref.alloc() : memref<4xi1>
    %alloc_16 = memref.alloc() : memref<4x11xi64>
    %alloc_17 = memref.alloc() : memref<11xi1>
    %alloc_18 = memref.alloc() : memref<13x11xf16>
    %alloc_19 = memref.alloc() : memref<13x11xi16>
    %alloc_20 = memref.alloc() : memref<13x11xf16>
    %16 = tensor.empty() : tensor<4xi64>
    %17 = linalg.copy ins(%0 : tensor<4xi64>) outs(%16 : tensor<4xi64>) -> tensor<4xi64>
    %alloc_21 = memref.alloc() : memref<4xi64>
    linalg.transpose ins(%16 : tensor<4xi64>) outs(%alloc_21 : memref<4xi64>) permutation = [0] 
    %18 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%alloc : memref<11xi64>) outs(%18 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %269 = vector.broadcast %c-20085_i16 : i16 to vector<4x11xi16>
        vector.print %269 : vector<4x11xi16>
        %270 = arith.addi %in, %c1522129235_i64 : i64
        %271 = vector.broadcast %c1307988576_i64 : i64 to vector<11xi64>
        %272 = vector.flat_transpose %271 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %273 = math.atan2 %10, %10 : tensor<4x11xf32>
        %274 = arith.andi %c1208326582_i64, %in : i64
        %275 = index.divu %c15, %c0
        %276 = math.copysign %cst, %cst : f32
        %277 = vector.broadcast %c9 : index to vector<13xindex>
        %278 = vector.broadcast %false_5 : i1 to vector<13xi1>
        %279 = vector.broadcast %c1307988576_i64 : i64 to vector<13xi64>
        vector.scatter %alloc[%c4] [%277], %278, %279 : memref<11xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %c1_i64_41 = arith.constant 1 : i64
        linalg.yield %c1_i64_41 : i64
      }
    scf.parallel (%arg0, %arg1) = (%c11, %c0) to (%c13, %c13) step (%c3, %c2) {
      %cst_41 = arith.constant 1.000000e+00 : f16
      %269 = memref.atomic_rmw addf %cst_41, %alloc_10[%c0, %c2] : (f16, memref<4x11xf16>) -> f16
      %270 = math.roundeven %2 : tensor<11xf16>
      %271 = math.atan2 %cst_1, %cst : f32
      %272 = affine.min affine_map<(d0) -> (d0 ceildiv 32, d0 * 2 + d0 - 1 - 1, d0 * 2 - 13, d0 * 2 + d0 - 1 - 9)>(%arg1)
      %273 = math.log1p %cst_1 : f32
      %274 = index.sub %c1, %c11
      %cst_42 = arith.constant 1.000000e+00 : f16
      %275 = vector.broadcast %cst_42 : f16 to vector<1xf16>
      %276 = vector.multi_reduction <add>, %275, %275 [] : vector<1xf16> to vector<1xf16>
      %cast_43 = tensor.cast %8 : tensor<4xi64> to tensor<?xi64>
      %277 = arith.cmpi sle, %c1522129235_i64, %c827031015_i64 : i64
      %278 = index.casts %c596764009_i32 : i32 to index
      %rank_44 = tensor.rank %1 : tensor<11xf32>
      memref.copy %alloc_9, %alloc_15 : memref<4xi1> to memref<4xi1>
      %279 = arith.negf %cst_0 : f32
      %280 = affine.max affine_map<(d0, d1) -> ((-(d1 mod 128)) ceildiv 64, -(d1 mod 128))>(%c4, %c13)
      %281 = index.casts %c1208326582_i64 : i64 to index
      %cst_45 = arith.constant 1.000000e+00 : f16
      %cst_46 = arith.constant 0.000000e+00 : f16
      %282 = vector.transfer_read %alloc_10[%c15, %c12], %cst_46 : memref<4x11xf16>, vector<f16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_7[%c5] : memref<4xf16>, vector<4xf16>
    affine.vector_store %19, %alloc_10[%c12, %c2] : memref<4x11xf16>, vector<4xf16>
    %alloc_22 = memref.alloc() : memref<4xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%13, %alloc_22 : tensor<4xf16>, memref<4xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = affine.apply affine_map<(d0) -> ((((-d0) mod 64) floordiv 128 - d0) floordiv 4)>(%c3)
    %23 = arith.remsi %false, %true : i1
    %24 = arith.cmpi ult, %c1208326582_i64, %c827031015_i64 : i64
    %25 = arith.divsi %c1208326582_i64, %c1307988576_i64 : i64
    %26 = arith.cmpi slt, %true, %true : i1
    scf.index_switch %c11 
    case 1 {
      %269 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
      %270 = math.ctlz %3 : tensor<4xi64>
      %271 = arith.ceildivsi %c596764009_i32, %c596764009_i32 : i32
      %272 = math.expm1 %cst_0 : f32
      %cst_41 = arith.constant 1.000000e+00 : f16
      %273 = memref.atomic_rmw minf %cst_41, %alloc_7[%c0] : (f16, memref<4xf16>) -> f16
      %collapsed_42 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x11xi64> into tensor<143xi64>
      %274 = arith.divsi %c-20085_i16, %c-20085_i16 : i16
      %275 = bufferization.clone %alloc_21 : memref<4xi64> to memref<4xi64>
      %276 = arith.ori %c119715009_i32, %c119715009_i32 : i32
      %277 = affine.max affine_map<(d0) -> (d0)>(%c2)
      %278 = arith.muli %c1208326582_i64, %c1522129235_i64 : i64
      %279 = vector.broadcast %c119715009_i32 : i32 to vector<i32>
      %280 = vector.transfer_write %279, %12[%c5] : vector<i32>, tensor<11xi32>
      %281 = vector.splat %277 : vector<4x11xindex>
      memref.copy %275, %alloc_21 : memref<4xi64> to memref<4xi64>
      %282 = tensor.empty() : tensor<11x11x11xi64>
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc : memref<11xi64>) outs(%282 : tensor<11x11x11xi64>) {
      ^bb0(%in: i64, %out: i64):
        %285 = arith.ori %c119715009_i32, %c119715009_i32 : i32
        %286 = vector.extract_strided_slice %19 {offsets = [1], sizes = [2], strides = [1]} : vector<4xf16> to vector<2xf16>
        %287 = index.sub %c11, %c4
        %288 = arith.divui %false_3, %true : i1
        %289 = bufferization.clone %alloc_10 : memref<4x11xf16> to memref<4x11xf16>
        %290 = arith.andi %out, %c827031015_i64 : i64
        %291 = arith.maxui %c1208326582_i64, %c1307988576_i64 : i64
        %extracted_43 = tensor.extract %0[%c2] : tensor<4xi64>
        %292 = bufferization.to_tensor %alloc_15 : memref<4xi1>
        %cst_44 = arith.constant 0x4E0BBC27 : f32
        %293 = bufferization.clone %alloc_20 : memref<13x11xf16> to memref<13x11xf16>
        %294 = math.atan2 %14, %1 : tensor<11xf32>
        %295 = vector.broadcast %cst_2 : f32 to vector<4x11xf32>
        %296 = vector.broadcast %false_3 : i1 to vector<4x11xi1>
        %297 = vector.broadcast %c596764009_i32 : i32 to vector<4x11xi32>
        %298 = vector.gather %10[%287, %287] [%297], %296, %295 : tensor<4x11xf32>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xf32> into vector<4x11xf32>
        %299 = index.floordivs %c8, %287
        %300 = arith.minsi %c119715009_i32, %c119715009_i32 : i32
        %301 = index.ceildivu %c10, %c3
        %alloc_45 = memref.alloc() : memref<4x11xf32>
        %302 = vector.broadcast %cst_2 : f32 to vector<13x11xf32>
        %303 = vector.broadcast %false : i1 to vector<13x11xi1>
        %304 = vector.broadcast %c119715009_i32 : i32 to vector<13x11xi32>
        %305 = vector.gather %alloc_45[%c6, %c2] [%304], %303, %302 : memref<4x11xf32>, vector<13x11xi32>, vector<13x11xi1>, vector<13x11xf32> into vector<13x11xf32>
        %306 = arith.remsi %c596764009_i32, %c119715009_i32 : i32
        %307 = math.sqrt %2 : tensor<11xf16>
        %308 = index.mul %c14, %c2
        %309 = arith.cmpi eq, %false, %false : i1
        %310 = index.mul %299, %c14
        %311 = vector.broadcast %cst : f32 to vector<11xf32>
        %312 = vector.fma %311, %311, %311 : vector<11xf32>
        %313 = arith.shli %c596764009_i32, %c596764009_i32 : i32
        %from_elements_46 = tensor.from_elements %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16 : tensor<4xi16>
        %314 = vector.flat_transpose %312 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %315 = vector.bitcast %269 : vector<1xf16> to vector<1xf16>
        %316 = arith.maxsi %false_3, %true : i1
        %317 = math.expm1 %13 : tensor<4xf16>
        %318 = math.expm1 %10 : tensor<4x11xf32>
        %319 = arith.divsi %out, %c1307988576_i64 : i64
        %320 = math.exp %13 : tensor<4xf16>
        linalg.yield %out : i64
      } -> tensor<11x11x11xi64>
      %284 = index.sub %c4, %c12
      scf.yield
    }
    case 2 {
      %269 = arith.shli %c-20085_i16, %c-20085_i16 : i16
      %270 = index.divs %c14, %c11
      scf.execute_region {
        %283 = index.sub %c0, %c12
        memref.copy %alloc, %alloc_13 : memref<11xi64> to memref<11xi64>
        %284 = math.ceil %21 : tensor<f16>
        %285 = arith.remui %c1208326582_i64, %c1522129235_i64 : i64
        %286 = arith.negf %cst : f32
        %287 = arith.maxui %false_5, %false_3 : i1
        %cst_43 = arith.constant 1.000000e+00 : f16
        %288 = vector.broadcast %cst_43 : f16 to vector<13xf16>
        %289 = vector.broadcast %false : i1 to vector<13xi1>
        %290 = vector.maskedload %alloc_8[%c0, %c6], %289, %288 : memref<4x11xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %291 = bufferization.clone %alloc_17 : memref<11xi1> to memref<11xi1>
        %292 = index.sizeof
        %293 = math.ctlz %8 : tensor<4xi64>
        %294 = affine.min affine_map<(d0, d1, d2) -> (-(d0 mod 16), d1, d1 - d0 + 2)>(%c12, %c11, %c10)
        %295 = vector.transpose %289, [0] : vector<13xi1> to vector<13xi1>
        %296 = arith.maxf %cst_4, %cst_0 : f32
        %297 = affine.apply affine_map<(d0) -> ((d0 - d0 mod 8) ceildiv 128 + 2)>(%c10)
        %298 = bufferization.clone %alloc_13 : memref<11xi64> to memref<11xi64>
        %collapsed_44 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        scf.yield
      }
      %271 = math.log1p %2 : tensor<11xf16>
      %272 = arith.remf %cst_4, %cst : f32
      %rank_41 = tensor.rank %21 : tensor<f16>
      %273 = arith.remui %c119715009_i32, %c596764009_i32 : i32
      %274 = arith.muli %false_3, %false_3 : i1
      %275 = index.floordivs %c4, %c15
      %276 = math.tanh %21 : tensor<f16>
      %277 = math.roundeven %11 : tensor<13x11xf16>
      %278 = arith.remsi %c1208326582_i64, %c827031015_i64 : i64
      %279 = index.sub %c7, %c15
      %collapsed_42 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
      %280 = vector.broadcast %false_3 : i1 to vector<11xi1>
      %281 = vector.maskedload %alloc_9[%c3], %280, %280 : memref<4xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
      %282 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf16> to vector<1xf16>
      scf.yield
    }
    case 3 {
      %269 = vector.broadcast %c9 : index to vector<4xindex>
      %270 = vector.broadcast %false : i1 to vector<4xi1>
      vector.scatter %alloc_18[%c3, %c9] [%269], %270, %19 : memref<13x11xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
      %271 = index.ceildivu %c8, %22
      %272 = affine.max affine_map<(d0, d1, d2) -> (((d2 mod 16) ceildiv 32) ceildiv 4)>(%c0, %271, %c9)
      %alloc_41 = memref.alloc() : memref<11xf32>
      memref.tensor_store %14, %alloc_41 : memref<11xf32>
      %inserted_42 = tensor.insert %cst_2 into %10[%c2, %c4] : tensor<4x11xf32>
      vector.print %19 : vector<4xf16>
      %273 = math.atan %1 : tensor<11xf32>
      %274 = vector.broadcast %c13 : index to vector<4xindex>
      %275 = vector.broadcast %false_5 : i1 to vector<4xi1>
      %276 = vector.broadcast %c827031015_i64 : i64 to vector<4xi64>
      vector.scatter %alloc_11[%c3] [%274], %275, %276 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %277 = arith.muli %false, %true : i1
      %cst_43 = arith.constant 1.000000e+00 : f16
      %278 = vector.broadcast %cst_43 : f16 to vector<4x4xf16>
      %279 = vector.outerproduct %19, %19, %278 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
      %280 = arith.xori %false, %false_3 : i1
      %281 = math.round %2 : tensor<11xf16>
      %282 = math.floor %cst : f32
      %cst_44 = arith.constant 1.000000e+00 : f16
      %283 = vector.broadcast %cst_44 : f16 to vector<4x4xf16>
      %284 = vector.outerproduct %19, %19, %283 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %285 = index.ceildivs %c13, %c13
      %286 = arith.maxf %cst_2, %cst_0 : f32
      scf.yield
    }
    case 4 {
      %269 = arith.divf %cst_0, %cst_4 : f32
      %270 = index.sizeof
      %271 = vector.multi_reduction <add>, %19, %19 [] : vector<4xf16> to vector<4xf16>
      %272 = arith.cmpi ule, %c596764009_i32, %c119715009_i32 : i32
      %273 = arith.remf %cst_2, %cst_2 : f32
      scf.execute_region {
        %285 = index.sizeof
        %286 = arith.cmpf ogt, %cst_2, %cst_0 : f32
        %287 = arith.divf %cst_4, %cst_4 : f32
        %288 = vector.transpose %19, [0] : vector<4xf16> to vector<4xf16>
        %from_elements_42 = tensor.from_elements %cst_1, %cst_1, %cst_2, %cst, %cst_4, %cst_0, %cst_1, %cst, %cst_1, %cst, %cst_0 : tensor<11xf32>
        %289 = arith.shli %c596764009_i32, %c596764009_i32 : i32
        %extracted_43 = tensor.extract %5[%c0] : tensor<4xi32>
        %290 = index.divu %c14, %c6
        %291 = arith.cmpi sgt, %false, %false : i1
        %292 = vector.create_mask %c14, %c14 : vector<4x11xi1>
        %293 = math.powf %cst_0, %cst_4 : f32
        %294 = index.sub %c12, %c3
        %295 = index.sub %c1, %22
        %296 = math.log2 %14 : tensor<11xf32>
        %297 = arith.maxsi %c1522129235_i64, %c1307988576_i64 : i64
        %298 = vector.broadcast %false_3 : i1 to vector<4xi1>
        %dest_44, %accumulated_value_45 = vector.scan <add>, %292, %298 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xi1>, vector<4xi1>
        scf.yield
      }
      %274 = vector.splat %c13 : vector<4xindex>
      %275 = tensor.empty() : tensor<11x4xf16>
      %276 = tensor.empty() : tensor<13x4xf16>
      %277 = linalg.matmul ins(%11, %275 : tensor<13x11xf16>, tensor<11x4xf16>) outs(%276 : tensor<13x4xf16>) -> tensor<13x4xf16>
      %278 = arith.shli %false_3, %false : i1
      %279 = arith.floordivsi %false, %false : i1
      %280 = bufferization.to_tensor %alloc_21 : memref<4xi64>
      %281 = math.log %14 : tensor<11xf32>
      %282 = math.absf %11 : tensor<13x11xf16>
      %283 = bufferization.clone %alloc_13 : memref<11xi64> to memref<11xi64>
      %collapsed_41 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
      %284 = index.sizeof
      scf.yield
    }
    default {
      %269 = math.powf %13, %13 : tensor<4xf16>
      %270 = arith.remsi %c1307988576_i64, %c1307988576_i64 : i64
      %271 = arith.divf %cst_0, %cst_2 : f32
      %272 = affine.apply affine_map<(d0) -> (d0)>(%c10)
      %273 = index.divs %c11, %272
      %c0_i64_41 = arith.constant 0 : i64
      %274 = vector.transfer_read %0[%c8], %c0_i64_41 : tensor<4xi64>, vector<i64>
      %cst_42 = arith.constant 1.000000e+00 : f16
      %275 = memref.atomic_rmw assign %cst_42, %alloc_18[%c4, %c10] : (f16, memref<13x11xf16>) -> f16
      %276 = arith.maxui %c1522129235_i64, %c1307988576_i64 : i64
      %277 = arith.minsi %false_3, %false : i1
      %278 = tensor.empty() : tensor<11x11x11xi64>
      %alloc_43 = memref.alloc() : memref<11x11xi64>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %alloc_43, %alloc_43 : tensor<11x11x11xi64>, memref<11x11xi64>, memref<11x11xi64>) outs(%278 : tensor<11x11x11xi64>) {
      ^bb0(%in: i64, %in_44: i64, %in_45: i64, %out: i64):
        %285 = memref.atomic_rmw ori %c1307988576_i64, %alloc_13[%c7] : (i64, memref<11xi64>) -> i64
        %286 = math.log %14 : tensor<11xf32>
        %287 = math.sqrt %11 : tensor<13x11xf16>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %288 = vector.insertelement %cst_46, %19[%c2 : index] : vector<4xf16>
        %289 = arith.maxf %cst, %cst_1 : f32
        %290 = tensor.empty() : tensor<13x11xi32>
        %291 = math.fpowi %11, %290 : tensor<13x11xf16>, tensor<13x11xi32>
        %292 = vector.load %alloc_17[%c9] : memref<11xi1>, vector<11xi1>
        %293 = math.cos %1 : tensor<11xf32>
        %294 = index.divu %c9, %c13
        %295 = math.cttz %in_45 : i64
        %296 = arith.muli %true, %false_3 : i1
        %297 = arith.maxui %c1522129235_i64, %c827031015_i64 : i64
        %298 = arith.andi %in_45, %in : i64
        %299 = math.cos %1 : tensor<11xf32>
        %300 = math.cttz %290 : tensor<13x11xi32>
        %301 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        memref.assume_alignment %alloc_13, 4 : memref<11xi64>
        %302 = math.cttz %16 : tensor<4xi64>
        %303 = vector.transpose %292, [0] : vector<11xi1> to vector<11xi1>
        %304 = vector.broadcast %c119715009_i32 : i32 to vector<13x13xi32>
        %305 = vector.broadcast %c119715009_i32 : i32 to vector<13xi32>
        %dest_47, %accumulated_value_48 = vector.scan <maxui>, %304, %305 {inclusive = false, reduction_dim = 1 : i64} : vector<13x13xi32>, vector<13xi32>
        %306 = index.divu %c4, %c13
        %307 = arith.cmpf oge, %cst_0, %cst : f32
        vector.print %19 : vector<4xf16>
        %308 = arith.remui %c1208326582_i64, %c827031015_i64 : i64
        %309 = math.exp %1 : tensor<11xf32>
        %alloc_49 = memref.alloc() : memref<i64>
        memref.tensor_store %reduced, %alloc_49 : memref<i64>
        %310 = vector.insertelement %cst_46, %301[%c5 : index] : vector<4xf16>
        %311 = index.ceildivu %c7, %c7
        %312 = vector.transpose %19, [0] : vector<4xf16> to vector<4xf16>
        %313 = math.tan %cst_4 : f32
        %314 = math.cttz %0 : tensor<4xi64>
        %315 = index.sizeof
        linalg.yield %c827031015_i64 : i64
      } -> tensor<11x11x11xi64>
      %280 = bufferization.clone %alloc : memref<11xi64> to memref<11xi64>
      %281 = index.add %c13, %c6
      %282 = math.cos %1 : tensor<11xf32>
      bufferization.dealloc_tensor %7 : tensor<4xi32>
      %283 = arith.divsi %c596764009_i32, %c596764009_i32 : i32
      %284 = math.log10 %10 : tensor<4x11xf32>
    }
    %27 = index.sizeof
    affine.for %arg0 = 0 to 16 {
    }
    %28 = index.ceildivu %c1, %c1
    %29 = math.round %13 : tensor<4xf16>
    %30 = math.round %1 : tensor<11xf32>
    %cst_23 = arith.constant 1.000000e+00 : f16
    %inserted = tensor.insert %cst_23 into %2[%c9] : tensor<11xf16>
    bufferization.dealloc_tensor %14 : tensor<11xf32>
    %31 = bufferization.clone %alloc_14 : memref<4xf16> to memref<4xf16>
    %32 = math.copysign %cst_4, %cst_4 : f32
    %33 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 16)>(%c13, %c3, %c7)
    %34 = arith.maxf %cst_0, %cst_0 : f32
    %inserted_24 = tensor.insert %c119715009_i32 into %12[%c7] : tensor<11xi32>
    %splat = tensor.splat %cst_23 : tensor<13x11xf16>
    %35 = math.log %21 : tensor<f16>
    %36 = vector.multi_reduction <minf>, %19, %19 [] : vector<4xf16> to vector<4xf16>
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
    %37 = bufferization.to_tensor %alloc_6 : memref<4x11xi16>
    %38 = math.expm1 %cst_2 : f32
    %39 = arith.negf %cst_2 : f32
    %40 = vector.transpose %19, [0] : vector<4xf16> to vector<4xf16>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %41 = vector.transfer_read %5[%c10], %c0_i32 : tensor<4xi32>, vector<i32>
    %42 = vector.broadcast %cst : f32 to vector<4x11xf32>
    %43 = vector.fma %42, %42, %42 : vector<4x11xf32>
    %44 = math.round %1 : tensor<11xf32>
    %45 = index.casts %false_5 : i1 to index
    %46 = bufferization.clone %alloc_11 : memref<4xi64> to memref<4xi64>
    %47 = math.log1p %13 : tensor<4xf16>
    %48 = bufferization.clone %alloc_10 : memref<4x11xf16> to memref<4x11xf16>
    %49 = arith.cmpf one, %cst, %cst_1 : f32
    %50 = math.copysign %14, %1 : tensor<11xf32>
    %51 = arith.cmpi sgt, %c1522129235_i64, %c827031015_i64 : i64
    %52 = bufferization.clone %alloc_12 : memref<4xi32> to memref<4xi32>
    %53 = vector.broadcast %cst_1 : f32 to vector<11xf32>
    %dest, %accumulated_value = vector.scan <mul>, %43, %53 {inclusive = false, reduction_dim = 0 : i64} : vector<4x11xf32>, vector<11xf32>
    %54 = vector.extract_strided_slice %43 {offsets = [1], sizes = [2], strides = [1]} : vector<4x11xf32> to vector<2x11xf32>
    %55 = arith.negf %cst : f32
    %56 = vector.load %alloc_15[%c0] : memref<4xi1>, vector<4x11xi1>
    %57 = math.absf %14 : tensor<11xf32>
    memref.copy %46, %alloc_11 : memref<4xi64> to memref<4xi64>
    %58 = vector.bitcast %43 : vector<4x11xf32> to vector<4x11xf32>
    %59 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 - 128)>(%c10, %c12, %c4, %27)
    %60 = math.powf %14, %14 : tensor<11xf32>
    %61 = arith.shrui %c-20085_i16, %c-20085_i16 : i16
    %62 = math.copysign %10, %10 : tensor<4x11xf32>
    %63 = vector.shuffle %56, %56 [0, 1, 2, 3, 5, 6, 7] : vector<4x11xi1>, vector<4x11xi1>
    %64 = arith.cmpi ugt, %c1522129235_i64, %c827031015_i64 : i64
    memref.assume_alignment %alloc_19, 1 : memref<13x11xi16>
    %65 = math.roundeven %cst_2 : f32
    %66 = vector.insertelement %cst_23, %19[%c4 : index] : vector<4xf16>
    %67 = bufferization.clone %alloc_15 : memref<4xi1> to memref<4xi1>
    %68 = tensor.empty() : tensor<11x11x11xi64>
    %69 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_13 : memref<11xi64>) outs(%68 : tensor<11x11x11xi64>) {
    ^bb0(%in: i64, %out: i64):
      %269 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %dest_41, %accumulated_value_42 = vector.scan <minf>, %54, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11xf32>, vector<2xf32>
      %270 = arith.subi %c596764009_i32, %c596764009_i32 : i32
      %271 = index.maxs %c2, %c14
      %272 = arith.addi %c827031015_i64, %c1522129235_i64 : i64
      %273 = index.sizeof
      %true_43 = index.bool.constant true
      %274 = vector.insertelement %cst_23, %19[%c7 : index] : vector<4xf16>
      %275 = arith.floordivsi %out, %out : i64
      %276 = math.absf %cst_2 : f32
      %277 = index.ceildivu %c6, %c3
      %alloc_44 = memref.alloc() : memref<11x4xi16>
      %278 = tensor.empty() : tensor<4x4xi16>
      %279 = linalg.matmul ins(%6, %alloc_44 : tensor<4x11xi16>, memref<11x4xi16>) outs(%278 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %280 = math.floor %13 : tensor<4xf16>
      %281 = arith.ori %out, %in : i64
      %282 = index.ceildivu %45, %c12
      %283 = math.cos %cst : f32
      %284 = index.sub %45, %c9
      %285 = math.atan2 %2, %2 : tensor<11xf16>
      %286 = math.cos %2 : tensor<11xf16>
      %287 = arith.remf %cst_4, %cst_4 : f32
      %288 = index.divu %c0, %277
      %rank_45 = tensor.rank %5 : tensor<4xi32>
      %289 = index.casts %c1208326582_i64 : i64 to index
      bufferization.dealloc_tensor %11 : tensor<13x11xf16>
      %290 = math.roundeven %13 : tensor<4xf16>
      %291 = math.floor %1 : tensor<11xf32>
      %292 = math.copysign %collapsed, %collapsed : tensor<143xf16>
      vector.print %56 : vector<4x11xi1>
      %293 = arith.minui %true, %false_5 : i1
      %294 = math.ceil %11 : tensor<13x11xf16>
      %295 = vector.broadcast %cst_23 : f16 to vector<4x4xf16>
      %296 = vector.outerproduct %19, %19, %295 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
      %297 = bufferization.to_tensor %alloc_20 : memref<13x11xf16>
      memref.assume_alignment %alloc_22, 2 : memref<4xf16>
      linalg.yield %in : i64
    } -> tensor<11x11x11xi64>
    %70 = vector.broadcast %cst_23 : f16 to vector<11xf16>
    %71 = vector.broadcast %true : i1 to vector<11xi1>
    %72 = vector.broadcast %c1_i32 : i32 to vector<11xi32>
    %73 = vector.gather %alloc_10[%c12, %c7] [%72], %71, %70 : memref<4x11xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %74 = index.maxs %c2, %c4
    %75 = bufferization.clone %alloc_8 : memref<4x11xf16> to memref<4x11xf16>
    %76 = arith.divf %cst_4, %cst : f32
    %77 = math.ctlz %3 : tensor<4xi64>
    %78 = math.powf %13, %13 : tensor<4xf16>
    %79 = math.log %10 : tensor<4x11xf32>
    %80 = arith.remf %cst_4, %cst_2 : f32
    %81 = arith.negf %cst_2 : f32
    %82 = vector.broadcast %c1_i32 : i32 to vector<11x11xi32>
    %83 = vector.outerproduct %72, %72, %82 {kind = #vector.kind<and>} : vector<11xi32>, vector<11xi32>
    %84 = arith.divf %cst_4, %cst_0 : f32
    %85 = arith.minui %c1208326582_i64, %c827031015_i64 : i64
    %alloc_25 = memref.alloc() : memref<11x11xf16>
    %86 = tensor.empty() : tensor<13x11xf16>
    %87 = linalg.matmul ins(%11, %alloc_25 : tensor<13x11xf16>, memref<11x11xf16>) outs(%86 : tensor<13x11xf16>) -> tensor<13x11xf16>
    %88 = bufferization.clone %alloc_7 : memref<4xf16> to memref<4xf16>
    %89 = affine.min affine_map<(d0, d1, d2) -> (-(d1 ceildiv 2))>(%27, %c15, %c15)
    %90 = index.sizeof
    %from_elements = tensor.from_elements %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16 : tensor<13x11xi16>
    %91 = vector.shuffle %19, %73 [0, 1, 3, 7, 8, 11, 12, 13, 14] : vector<4xf16>, vector<11xf16>
    %92 = index.mul %c2, %74
    %93 = arith.remf %cst_0, %cst_0 : f32
    %94 = vector.broadcast %c119715009_i32 : i32 to vector<11x11xi32>
    %95 = vector.outerproduct %72, %72, %94 {kind = #vector.kind<mul>} : vector<11xi32>, vector<11xi32>
    %96 = arith.divui %true, %true : i1
    %97 = math.atan2 %10, %10 : tensor<4x11xf32>
    %98 = bufferization.clone %alloc_8 : memref<4x11xf16> to memref<4x11xf16>
    %99 = math.atan2 %cst_2, %cst_0 : f32
    %collapsed_26 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x11xi64> into tensor<143xi64>
    %100 = bufferization.to_tensor %alloc_8 : memref<4x11xf16>
    %101 = arith.remf %cst_1, %cst_2 : f32
    %102 = math.atan2 %collapsed, %collapsed : tensor<143xf16>
    %103 = arith.maxui %c1522129235_i64, %c827031015_i64 : i64
    %104 = math.roundeven %cst_1 : f32
    %105 = tensor.empty() : tensor<11x11x11xi64>
    %106 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_13 : memref<11xi64>) outs(%105 : tensor<11x11x11xi64>) {
    ^bb0(%in: i64, %out: i64):
      %269 = vector.bitcast %43 : vector<4x11xf32> to vector<4x11xi32>
      %270 = math.log2 %1 : tensor<11xf32>
      %from_elements_41 = tensor.from_elements %c1522129235_i64, %c1208326582_i64, %in, %c1307988576_i64, %out, %c1208326582_i64, %in, %c1208326582_i64, %c1208326582_i64, %c1522129235_i64, %c1307988576_i64, %c827031015_i64, %c827031015_i64, %in, %c827031015_i64, %c1307988576_i64, %c1522129235_i64, %c1522129235_i64, %c1208326582_i64, %out, %c827031015_i64, %c1307988576_i64, %c1208326582_i64, %c1307988576_i64, %c1208326582_i64, %in, %c1208326582_i64, %out, %c1208326582_i64, %c1307988576_i64, %c1208326582_i64, %in, %c827031015_i64, %c1208326582_i64, %c1522129235_i64, %c1522129235_i64, %c1522129235_i64, %c1208326582_i64, %c1208326582_i64, %c827031015_i64, %c827031015_i64, %c1208326582_i64, %c1208326582_i64, %c1208326582_i64, %c1307988576_i64, %c1208326582_i64, %in, %c1307988576_i64, %c1307988576_i64, %out, %c1307988576_i64, %c827031015_i64, %c1208326582_i64, %c1208326582_i64, %c1307988576_i64, %c827031015_i64, %c1208326582_i64, %c1307988576_i64, %c1522129235_i64, %c1522129235_i64, %in, %c1208326582_i64, %c827031015_i64, %c1208326582_i64, %c827031015_i64, %c1208326582_i64, %out, %out, %c1307988576_i64, %c1522129235_i64, %c1522129235_i64, %c1522129235_i64, %in, %in, %c1522129235_i64, %c1522129235_i64, %c1307988576_i64, %out, %c1208326582_i64, %c827031015_i64, %c1522129235_i64, %c827031015_i64, %c1307988576_i64, %out, %c1522129235_i64, %c1208326582_i64, %c1208326582_i64, %in, %c1307988576_i64, %in, %out, %out, %c1307988576_i64, %out, %c827031015_i64, %c1208326582_i64, %c1522129235_i64, %out, %c827031015_i64, %c1307988576_i64, %c1307988576_i64, %c1522129235_i64, %c1307988576_i64, %c1307988576_i64, %c1307988576_i64, %out, %c1208326582_i64, %out, %c1307988576_i64, %c1208326582_i64, %out, %c827031015_i64, %c1307988576_i64, %out, %c827031015_i64, %c1307988576_i64, %in, %c1522129235_i64, %c1522129235_i64, %in, %out, %c1522129235_i64, %c827031015_i64, %out, %c1208326582_i64, %c827031015_i64, %in, %c827031015_i64, %c1307988576_i64, %c1307988576_i64, %c1522129235_i64, %in, %c827031015_i64, %c1522129235_i64, %c1522129235_i64, %c1208326582_i64, %out, %c827031015_i64, %c1208326582_i64, %c1208326582_i64, %c827031015_i64, %c1307988576_i64, %c1208326582_i64 : tensor<13x11xi64>
      %271 = math.copysign %10, %10 : tensor<4x11xf32>
      %272 = arith.remsi %false_3, %false_3 : i1
      %273 = arith.negf %cst_4 : f32
      %274 = affine.apply affine_map<(d0) -> (d0)>(%c14)
      %cast_42 = tensor.cast %7 : tensor<4xi32> to tensor<?xi32>
      %275 = math.log1p %13 : tensor<4xf16>
      %276 = bufferization.clone %75 : memref<4x11xf16> to memref<4x11xf16>
      %true_43 = arith.constant true
      %277 = vector.transfer_read %67[%c13], %true_43 : memref<4xi1>, vector<i1>
      %278 = arith.negf %cst_4 : f32
      %279 = arith.divui %true, %true_43 : i1
      %280 = math.log2 %1 : tensor<11xf32>
      %281 = arith.maxsi %true_43, %false : i1
      %282 = vector.broadcast %cst_23 : f16 to vector<4x4xf16>
      %283 = vector.outerproduct %19, %19, %282 {kind = #vector.kind<add>} : vector<4xf16>, vector<4xf16>
      vector.print %71 : vector<11xi1>
      %284 = index.sub %92, %c8
      %285 = arith.maxui %false, %false_5 : i1
      %286 = math.log %11 : tensor<13x11xf16>
      scf.if %false {
        %296 = index.divs %c6, %c4
        %297 = arith.remsi %true, %false_3 : i1
        %298 = arith.minsi %c1208326582_i64, %c827031015_i64 : i64
        %299 = vector.splat %c6 : vector<13x11xindex>
        %300 = arith.cmpf oge, %cst, %cst_1 : f32
        %301 = arith.remsi %c1208326582_i64, %in : i64
        %302 = vector.load %88[%c3] : memref<4xf16>, vector<13x11xf16>
        %303 = vector.broadcast %c1_i32 : i32 to vector<13xi32>
        %304 = vector.broadcast %false : i1 to vector<13xi1>
        %305 = vector.maskedload %52[%c0], %304, %303 : memref<4xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
      }
      %287 = math.expm1 %1 : tensor<11xf32>
      %288 = vector.flat_transpose %71 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
      %289 = vector.load %alloc_14[%c1] : memref<4xf16>, vector<4xf16>
      %290 = arith.remsi %true, %true_43 : i1
      %291 = math.absf %10 : tensor<4x11xf32>
      %292 = affine.if affine_set<(d0) : (d0 * 2 - 4 == 0, d0 * 2 - 4 == 0, d0 == 0)>(%c4) -> memref<11xi16> {
        %alloc_45 = memref.alloc() : memref<13x11xi64>
        memref.tensor_store %15, %alloc_45 : memref<13x11xi64>
        %296 = arith.shli %c1_i32, %c596764009_i32 : i32
        %297 = math.log1p %cst_23 : f16
        %298 = index.divs %c3, %c11
        %299 = math.atan2 %2, %2 : tensor<11xf16>
        %300 = index.sizeof
        %301 = arith.minf %cst_2, %cst_0 : f32
        %302 = math.expm1 %86 : tensor<13x11xf16>
        %alloc_46 = memref.alloc() : memref<11xi16>
        affine.yield %alloc_46 : memref<11xi16>
      } else {
        %extracted_45 = tensor.extract %10[%c0, %c3] : tensor<4x11xf32>
        %296 = vector.broadcast %false : i1 to vector<4xi1>
        %297 = vector.maskedload %alloc_17[%c7], %296, %296 : memref<11xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %298 = arith.ori %c827031015_i64, %c1522129235_i64 : i64
        %299 = vector.insertelement %cst_23, %19[%c9 : index] : vector<4xf16>
        %300 = affine.max affine_map<(d0, d1) -> (d0 - 4, d0 * 2 + d1 - 132, d1 ceildiv 2, d1)>(%22, %274)
        %301 = vector.splat %c-20085_i16 : vector<4x11xi16>
        %302 = arith.negf %cst_1 : f32
        %303 = math.round %cst : f32
        %alloc_46 = memref.alloc() : memref<11xi16>
        affine.yield %alloc_46 : memref<11xi16>
      }
      %generated_44 = tensor.generate %92 {
      ^bb0(%arg0: index, %arg1: index):
        %296 = vector.multi_reduction <maxui>, %71, %false_3 [0] : vector<11xi1> to i1
        %297 = vector.splat %22 : vector<11xindex>
        %298 = arith.ori %c1_i32, %c119715009_i32 : i32
        %cast_45 = tensor.cast %1 : tensor<11xf32> to tensor<?xf32>
        tensor.yield %cst_23 : f16
      } : tensor<?x11xf16>
      %293 = arith.addi %true_43, %false : i1
      bufferization.dealloc_tensor %3 : tensor<4xi64>
      %294 = affine.max affine_map<(d0) -> (d0 * 9, d0 * 9, d0 * 8)>(%c9)
      %295 = math.log10 %cst_0 : f32
      linalg.yield %c1307988576_i64 : i64
    } -> tensor<11x11x11xi64>
    %107 = arith.cmpi sge, %c1208326582_i64, %c1208326582_i64 : i64
    %108 = vector.bitcast %58 : vector<4x11xf32> to vector<4x11xf32>
    %109 = math.atan2 %11, %11 : tensor<13x11xf16>
    %110 = arith.remsi %false_3, %false_3 : i1
    %111 = arith.remf %cst_4, %cst : f32
    %112 = arith.shrsi %false_5, %false_5 : i1
    %113 = index.mul %28, %90
    %114 = memref.alloca_scope  -> (memref<11xf16>) {
      %269 = index.floordivs %113, %c5
      bufferization.dealloc_tensor %5 : tensor<4xi32>
      %270 = math.floor %100 : tensor<4x11xf16>
      %271 = bufferization.clone %alloc_22 : memref<4xf16> to memref<4xf16>
      %272 = arith.cmpf oeq, %cst, %cst : f32
      %273 = scf.if %true -> (memref<11xi1>) {
        %297 = math.rsqrt %collapsed : tensor<143xf16>
        %298 = arith.maxui %c1208326582_i64, %c1307988576_i64 : i64
        %299 = vector.broadcast %cst_2 : f32 to vector<11xf32>
        %300 = vector.multi_reduction <mul>, %43, %299 [0] : vector<4x11xf32> to vector<11xf32>
        %301 = arith.negf %cst_1 : f32
        %302 = vector.flat_transpose %71 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %303 = arith.xori %c1_i32, %c119715009_i32 : i32
        %304 = math.copysign %14, %1 : tensor<11xf32>
        %305 = index.sub %27, %c1
        scf.yield %alloc_17 : memref<11xi1>
      } else {
        %297 = index.ceildivs %59, %c10
        %298 = math.absi %c1307988576_i64 : i64
        %299 = vector.broadcast %c1_i32 : i32 to vector<4x11xi32>
        %300 = math.sqrt %1 : tensor<11xf32>
        %301 = affine.apply affine_map<(d0) -> ((d0 - d0 floordiv 128) mod 8)>(%c4)
        %302 = math.log2 %1 : tensor<11xf32>
        %303 = vector.splat %c119715009_i32 : vector<4xi32>
        %collapsed_48 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        scf.yield %alloc_17 : memref<11xi1>
      }
      %c1476777486_i64 = arith.constant 1476777486 : i64
      %274 = vector.broadcast %true : i1 to vector<4xi1>
      %275 = vector.maskedload %75[%c0, %c5], %274, %19 : memref<4x11xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %276 = math.roundeven %1 : tensor<11xf32>
      %277 = index.ceildivu %269, %33
      %278 = scf.execute_region -> vector<11xf32> {
        %297 = arith.maxsi %false_3, %true : i1
        %298 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %dest_48, %accumulated_value_49 = vector.scan <minf>, %42, %298 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
        %299 = math.log1p %cst_4 : f32
        %300 = arith.cmpf ueq, %cst_23, %cst_23 : f16
        %301 = math.fma %86, %11, %splat : tensor<13x11xf16>
        vector.print %42 : vector<4x11xf32>
        %302 = math.log %10 : tensor<4x11xf32>
        %303 = index.sizeof
        %304 = math.expm1 %cst_2 : f32
        %305 = bufferization.clone %alloc_9 : memref<4xi1> to memref<4xi1>
        %306 = arith.maxf %cst_2, %cst_4 : f32
        %307 = vector.bitcast %275 : vector<4xf16> to vector<4xf16>
        %308 = index.sizeof
        %collapsed_50 = tensor.collapse_shape %splat [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
        %extracted_51 = tensor.extract %15[%c2, %c7] : tensor<13x11xi64>
        %309 = memref.atomic_rmw mulf %cst_23, %alloc_10[%c2, %c1] : (f16, memref<4x11xf16>) -> f16
        %310 = vector.broadcast %cst_2 : f32 to vector<11xf32>
        scf.yield %310 : vector<11xf32>
      }
      %279 = arith.addi %false, %true : i1
      %alloc_41 = memref.alloc() : memref<4x11xi16>
      memref.copy %alloc_6, %alloc_41 : memref<4x11xi16> to memref<4x11xi16>
      %c0_i64_42 = arith.constant 0 : i64
      %c0_i64_43 = arith.constant 0 : i64
      %280 = vector.transfer_read %9[%c0], %c0_i64_43 : tensor<4xi64>, vector<i64>
      %281 = math.tan %cst_23 : f16
      %282 = affine.apply affine_map<(d0) -> ((((-d0) mod 64) floordiv 128 - d0) floordiv 4)>(%269)
      %283 = tensor.empty() : tensor<4xi64>
      %mapped_44 = linalg.map ins(%0, %4, %16 : tensor<4xi64>, tensor<4xi64>, tensor<4xi64>) outs(%283 : tensor<4xi64>)
        (%in: i64, %in_48: i64, %in_49: i64) {
          %297 = arith.maxui %c827031015_i64, %in_48 : i64
          %298 = arith.maxui %c1_i32, %c119715009_i32 : i32
          %299 = math.atan2 %collapsed, %collapsed : tensor<143xf16>
          %300 = arith.muli %in, %in_48 : i64
          %301 = index.mul %c2, %27
          %302 = math.atan2 %1, %14 : tensor<11xf32>
          %303 = arith.ceildivsi %c1_i32, %c1_i32 : i32
          %304 = arith.remf %cst, %cst_0 : f32
          %305 = math.copysign %10, %10 : tensor<4x11xf32>
          %306 = vector.transpose %54, [1, 0] : vector<2x11xf32> to vector<11x2xf32>
          %307 = index.casts %c7 : index to i32
          %308 = arith.ori %c1522129235_i64, %c1522129235_i64 : i64
          %309 = arith.cmpi sge, %in_49, %c0_i64_42 : i64
          %310 = math.ceil %cst_23 : f16
          %from_elements_50 = tensor.from_elements %cst_2, %cst, %cst_2, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_1, %cst_0, %cst_4, %cst_2, %cst_4, %cst_0, %cst_1, %cst_4, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst_4, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst : tensor<4x11xf32>
          %311 = vector.broadcast %in_49 : i64 to vector<4x11xi64>
          %312 = vector.broadcast %c1_i32 : i32 to vector<4x11xi32>
          %313 = vector.gather %alloc_16[%113, %c13] [%312], %56, %311 : memref<4x11xi64>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xi64> into vector<4x11xi64>
          %314 = index.divu %c11, %c13
          %315 = index.add %74, %c9
          %316 = vector.flat_transpose %73 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
          %c0_i32_51 = arith.constant 0 : i32
          %317 = vector.transfer_read %7[%c14], %c0_i32_51 : tensor<4xi32>, vector<i32>
          %318 = vector.flat_transpose %70 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
          %319 = arith.addi %true, %false_5 : i1
          %320 = math.round %14 : tensor<11xf32>
          %321 = affine.min affine_map<(d0) -> ((d0 - 64) * -64, (d0 + 64) * 16, d0 + 64)>(%c4)
          %322 = index.maxs %c9, %321
          %323 = math.log %cst_2 : f32
          %324 = math.absf %cst_4 : f32
          %325 = math.powf %14, %14 : tensor<11xf32>
          %326 = math.fpowi %cst, %c1_i32 : f32, i32
          %327 = math.log %from_elements_50 : tensor<4x11xf32>
          memref.store %cst_23, %alloc_7[%c0] : memref<4xf16>
          %328 = arith.ceildivsi %c1522129235_i64, %in_48 : i64
          %c0_i64_52 = arith.constant 0 : i64
          linalg.yield %c0_i64_52 : i64
        }
      %rank_45 = tensor.rank %13 : tensor<4xf16>
      %284 = arith.maxf %cst_4, %cst_2 : f32
      %285 = arith.cmpf ole, %cst_1, %cst : f32
      %286 = index.maxs %33, %269
      %287 = math.fpowi %13, %7 : tensor<4xf16>, tensor<4xi32>
      %288 = memref.atomic_rmw muli %c-20085_i16, %alloc_19[%c6, %c8] : (i16, memref<13x11xi16>) -> i16
      %289 = math.absf %2 : tensor<11xf16>
      %cast_46 = tensor.cast %16 : tensor<4xi64> to tensor<?xi64>
      %290 = arith.divui %c119715009_i32, %c119715009_i32 : i32
      %291 = index.add %c1, %33
      %292 = bufferization.clone %alloc : memref<11xi64> to memref<11xi64>
      %293 = arith.negf %cst_1 : f32
      %294 = index.add %c15, %c13
      %295 = bufferization.clone %alloc_20 : memref<13x11xf16> to memref<13x11xf16>
      %296 = vector.flat_transpose %72 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
      %alloc_47 = memref.alloc() : memref<11xf16>
      memref.alloca_scope.return %alloc_47 : memref<11xf16>
    }
    %115 = math.sqrt %cst_4 : f32
    %116 = vector.transpose %58, [0, 1] : vector<4x11xf32> to vector<4x11xf32>
    %117 = math.sqrt %2 : tensor<11xf16>
    %118 = vector.broadcast %cst_2 : f32 to vector<4xf32>
    %dest_27, %accumulated_value_28 = vector.scan <maxf>, %58, %118 {inclusive = true, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
    %119 = bufferization.to_tensor %alloc_9 : memref<4xi1>
    %120 = vector.broadcast %cst_23 : f16 to vector<11xf16>
    %121 = arith.negf %cst_23 : f16
    %122 = arith.remf %cst, %cst_1 : f32
    %123 = index.ceildivu %c12, %c6
    %124 = vector.broadcast %c13 : index to vector<11xindex>
    %125 = vector.broadcast %c-20085_i16 : i16 to vector<11xi16>
    vector.scatter %alloc_6[%c3, %c1] [%124], %71, %125 : memref<4x11xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
    %126 = affine.max affine_map<(d0) -> (d0 - d0 mod 16 + 16, d0 mod 16)>(%c4)
    %127 = arith.ori %true, %false_5 : i1
    bufferization.dealloc_tensor %2 : tensor<11xf16>
    %cst_29 = arith.constant 1.000000e+00 : f16
    %128 = vector.transfer_read %88[%c11], %cst_29 : memref<4xf16>, vector<f16>
    %129 = bufferization.clone %52 : memref<4xi32> to memref<4xi32>
    %130 = tensor.empty() : tensor<143xi32>
    %131 = math.fpowi %collapsed, %130 : tensor<143xf16>, tensor<143xi32>
    memref.assume_alignment %alloc_15, 1 : memref<4xi1>
    %132 = vector.extract_strided_slice %43 {offsets = [2], sizes = [1], strides = [1]} : vector<4x11xf32> to vector<1x11xf32>
    %133 = index.divu %c3, %c1
    %134 = arith.cmpi ugt, %c596764009_i32, %c596764009_i32 : i32
    %135 = math.ctpop %7 : tensor<4xi32>
    %136 = tensor.empty() : tensor<143xi32>
    %mapped = linalg.map ins(%130, %130, %130 : tensor<143xi32>, tensor<143xi32>, tensor<143xi32>) outs(%136 : tensor<143xi32>)
      (%in: i32, %in_41: i32, %in_42: i32) {
        %269 = tensor.empty() : tensor<11x11xi16>
        %270 = tensor.empty() : tensor<13x11xi16>
        %271 = linalg.matmul ins(%from_elements, %269 : tensor<13x11xi16>, tensor<11x11xi16>) outs(%270 : tensor<13x11xi16>) -> tensor<13x11xi16>
        %272 = math.exp %1 : tensor<11xf32>
        %collapsed_43 = tensor.collapse_shape %86 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
        %273 = math.atan2 %14, %14 : tensor<11xf32>
        %274 = vector.broadcast %false_3 : i1 to vector<11xi1>
        %275 = arith.remf %cst_29, %cst_29 : f16
        %276 = vector.matrix_multiply %71, %71 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi1>, vector<11xi1>) -> vector<1xi1>
        %277 = math.absi %in : i32
        %278 = arith.remf %cst_2, %cst_4 : f32
        %279 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 16)>(%27, %45, %45)
        %280 = scf.execute_region -> memref<11xf32> {
          %from_elements_47 = tensor.from_elements %false_3, %false_5, %false_3, %true, %false_3, %false_5, %false_3, %false_3, %false, %true, %false : tensor<11xi1>
          %299 = math.fpowi %cst_0, %in : f32, i32
          %300 = arith.andi %false_5, %false : i1
          %extracted_48 = tensor.extract %3[%c3] : tensor<4xi64>
          %301 = vector.splat %false_5 : vector<4x11xi1>
          %302 = bufferization.clone %alloc_12 : memref<4xi32> to memref<4xi32>
          %303 = vector.transpose %70, [0] : vector<11xf16> to vector<11xf16>
          %304 = math.fpowi %cst_29, %c596764009_i32 : f16, i32
          %305 = math.copysign %13, %13 : tensor<4xf16>
          memref.assume_alignment %alloc_13, 16 : memref<11xi64>
          %306 = vector.broadcast %cst : f32 to vector<4xf32>
          %307 = vector.multi_reduction <mul>, %42, %306 [1] : vector<4x11xf32> to vector<4xf32>
          %308 = math.round %86 : tensor<13x11xf16>
          vector.print %306 : vector<4xf32>
          %309 = math.atan %2 : tensor<11xf16>
          %310 = bufferization.clone %alloc_14 : memref<4xf16> to memref<4xf16>
          %311 = arith.remsi %c596764009_i32, %in_42 : i32
          %alloc_49 = memref.alloc() : memref<11xf32>
          scf.yield %alloc_49 : memref<11xf32>
        }
        %281 = index.floordivs %113, %c13
        %282 = index.ceildivs %c3, %113
        memref.store %false, %67[%c1] : memref<4xi1>
        %283 = index.floordivs %c11, %27
        %284 = math.copysign %cst, %cst_4 : f32
        %generated_44 = tensor.generate %c13, %279 {
        ^bb0(%arg0: index, %arg1: index):
          %299 = arith.andi %c1_i32, %c119715009_i32 : i32
          %300 = affine.max affine_map<(d0) -> (-32, -d0, 0)>(%74)
          %301 = arith.cmpi ult, %c1_i32, %in : i32
          %302 = index.mul %c11, %33
          tensor.yield %c1_i32 : i32
        } : tensor<?x?xi32>
        %285 = index.castu %283 : index to i32
        %286 = math.expm1 %13 : tensor<4xf16>
        %287 = math.cttz %c-20085_i16 : i16
        %288 = bufferization.to_memref %collapsed : memref<143xf16>
        %289 = memref.atomic_rmw maxu %c1307988576_i64, %alloc_13[%c4] : (i64, memref<11xi64>) -> i64
        %290 = index.add %126, %74
        %291 = arith.cmpf une, %cst_1, %cst : f32
        %292 = arith.shli %c119715009_i32, %in_42 : i32
        %293 = arith.remsi %in, %in_41 : i32
        %294 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c9)
        %collapsed_45 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
        %295 = vector.splat %28 : vector<4x11xindex>
        %296 = vector.multi_reduction <mul>, %70, %cst_23 [0] : vector<11xf16> to f16
        %297 = vector.splat %74 : vector<13x11xindex>
        %298 = vector.multi_reduction <xor>, %274, %false_5 [0] : vector<11xi1> to i1
        %c1_i32_46 = arith.constant 1 : i32
        linalg.yield %c1_i32_46 : i32
      }
    %137 = scf.execute_region -> memref<4xi16> {
      %269 = math.ctlz %9 : tensor<4xi64>
      %270 = vector.broadcast %false_5 : i1 to vector<4xi1>
      %271 = vector.multi_reduction <or>, %56, %270 [1] : vector<4x11xi1> to vector<4xi1>
      %272 = math.roundeven %21 : tensor<f16>
      %273 = scf.if %false -> (memref<4xi16>) {
        %285 = arith.divf %cst_29, %cst_23 : f16
        bufferization.dealloc_tensor %6 : tensor<4x11xi16>
        %286 = arith.maxui %false_5, %true : i1
        %287 = math.ctlz %collapsed_26 : tensor<143xi64>
        %288 = arith.maxf %cst_2, %cst_2 : f32
        %289 = math.log1p %collapsed : tensor<143xf16>
        %290 = affine.apply affine_map<(d0) -> ((d0 * -2) floordiv 8 - 1)>(%59)
        %extracted_42 = tensor.extract %20[] : tensor<f16>
        %alloc_43 = memref.alloc() : memref<4xi16>
        scf.yield %alloc_43 : memref<4xi16>
      } else {
        %285 = arith.divsi %c1208326582_i64, %c827031015_i64 : i64
        %286 = vector.multi_reduction <mul>, %70, %cst_29 [0] : vector<11xf16> to f16
        %287 = vector.broadcast %cst : f32 to vector<4xf32>
        %288 = vector.fma %287, %287, %287 : vector<4xf32>
        %289 = bufferization.clone %alloc_10 : memref<4x11xf16> to memref<4x11xf16>
        %290 = math.log1p %10 : tensor<4x11xf32>
        %291 = arith.remsi %c1_i32, %c596764009_i32 : i32
        %292 = index.casts %false_5 : i1 to index
        %293 = arith.maxsi %false_3, %false_5 : i1
        %alloc_42 = memref.alloc() : memref<4xi16>
        scf.yield %alloc_42 : memref<4xi16>
      }
      %274 = memref.atomic_rmw mins %c827031015_i64, %alloc_16[%c3, %c2] : (i64, memref<4x11xi64>) -> i64
      %c823556051_i64 = arith.constant 823556051 : i64
      %275 = index.divu %c3, %c6
      %276 = vector.multi_reduction <add>, %71, %71 [] : vector<11xi1> to vector<11xi1>
      %277 = arith.ori %c1_i32, %c1_i32 : i32
      %278 = vector.broadcast %cst_23 : f16 to vector<11x11xf16>
      %279 = vector.outerproduct %73, %120, %278 {kind = #vector.kind<add>} : vector<11xf16>, vector<11xf16>
      %280 = math.rsqrt %14 : tensor<11xf32>
      %281 = arith.subi %false_5, %true : i1
      %282 = math.cttz %8 : tensor<4xi64>
      %true_41 = arith.constant true
      %283 = bufferization.clone %alloc_9 : memref<4xi1> to memref<4xi1>
      %284 = index.mul %28, %27
      scf.yield %273 : memref<4xi16>
    }
    %138 = vector.insertelement %true, %71[%133 : index] : vector<11xi1>
    %139 = vector.splat %c3 : vector<13x11xindex>
    %140 = arith.maxf %cst_23, %cst_29 : f16
    %141 = vector.extract_strided_slice %54 {offsets = [0], sizes = [2], strides = [1]} : vector<2x11xf32> to vector<2x11xf32>
    %142 = math.ceil %86 : tensor<13x11xf16>
    %143 = math.roundeven %cst : f32
    %144 = arith.negf %cst_4 : f32
    %145 = arith.shli %c827031015_i64, %c1307988576_i64 : i64
    %146 = arith.remsi %c1_i32, %c1_i32 : i32
    memref.store %false_3, %67[%c3] : memref<4xi1>
    %147 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c13)
    %148 = memref.atomic_rmw addi %c-20085_i16, %alloc_6[%c3, %c8] : (i16, memref<4x11xi16>) -> i16
    %149 = math.copysign %cst, %cst_4 : f32
    %150 = scf.if %false_5 -> (memref<13x11xi16>) {
      %269 = arith.maxf %cst, %cst_1 : f32
      %270 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c6)
      %271 = vector.broadcast %c-20085_i16 : i16 to vector<11xi16>
      %272 = vector.gather %137[%126] [%72], %71, %271 : memref<4xi16>, vector<11xi32>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      vector.print %272 : vector<11xi16>
      %273 = vector.broadcast %c1522129235_i64 : i64 to vector<4x11xi64>
      %274 = vector.broadcast %c596764009_i32 : i32 to vector<4x11xi32>
      %275 = vector.gather %alloc_21[%c6] [%274], %56, %273 : memref<4xi64>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xi64> into vector<4x11xi64>
      %276 = math.sqrt %10 : tensor<4x11xf32>
      %277 = math.exp %11 : tensor<13x11xf16>
      %278 = arith.shrui %c1_i32, %c1_i32 : i32
      scf.yield %alloc_19 : memref<13x11xi16>
    } else {
      %269 = math.copysign %cst, %cst : f32
      %270 = math.ceil %2 : tensor<11xf16>
      %271 = math.log %1 : tensor<11xf32>
      %272 = index.sub %126, %c12
      %273 = arith.cmpi sgt, %c827031015_i64, %c1307988576_i64 : i64
      %274 = math.expm1 %cst_1 : f32
      %275 = index.divu %92, %c12
      %276 = arith.divsi %false_5, %false_3 : i1
      scf.yield %alloc_19 : memref<13x11xi16>
    }
    %151 = vector.broadcast %c2 : index to vector<11xindex>
    %152 = vector.broadcast %c1208326582_i64 : i64 to vector<11xi64>
    vector.scatter %alloc[%c8] [%151], %71, %152 : memref<11xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
    %153 = tensor.empty() : tensor<4xi32>
    %mapped_30 = linalg.map ins(%129, %alloc_12 : memref<4xi32>, memref<4xi32>) outs(%153 : tensor<4xi32>)
      (%in: i32, %in_41: i32) {
        %269 = memref.atomic_rmw maxu %c-20085_i16, %alloc_6[%c1, %c1] : (i16, memref<4x11xi16>) -> i16
        %270 = memref.atomic_rmw ori %c596764009_i32, %129[%c2] : (i32, memref<4xi32>) -> i32
        %271 = math.powf %10, %10 : tensor<4x11xf32>
        %cst_42 = arith.constant 5.465600e+04 : f16
        %extracted_43 = tensor.extract %119[%c2] : tensor<4xi1>
        %272 = index.maxs %27, %c6
        %273 = arith.maxui %c119715009_i32, %in : i32
        %274 = math.rsqrt %collapsed : tensor<143xf16>
        %275 = bufferization.to_tensor %alloc_15 : memref<4xi1>
        %276 = tensor.empty() : tensor<13x11xi32>
        %277 = math.fpowi %splat, %276 : tensor<13x11xf16>, tensor<13x11xi32>
        %278 = bufferization.clone %alloc_20 : memref<13x11xf16> to memref<13x11xf16>
        %extracted_44 = tensor.extract %0[%c3] : tensor<4xi64>
        %279 = math.fpowi %splat, %276 : tensor<13x11xf16>, tensor<13x11xi32>
        %280 = arith.divsi %c1208326582_i64, %extracted_44 : i64
        %cast_45 = tensor.cast %10 : tensor<4x11xf32> to tensor<?x?xf32>
        %281 = math.ctlz %9 : tensor<4xi64>
        %282 = bufferization.clone %48 : memref<4x11xf16> to memref<4x11xf16>
        %283 = math.expm1 %splat : tensor<13x11xf16>
        %284 = arith.floordivsi %false_5, %false : i1
        %285 = math.rsqrt %10 : tensor<4x11xf32>
        %286 = vector.load %alloc_6[%c3, %c3] : memref<4x11xi16>, vector<13x11xi16>
        %287 = math.absf %cst_0 : f32
        %288 = vector.matrix_multiply %120, %70 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<11xf16>) -> vector<1xf16>
        %289 = vector.shuffle %58, %42 [1, 4, 5, 6, 7] : vector<4x11xf32>, vector<4x11xf32>
        %290 = vector.splat %133 : vector<11xindex>
        %291 = arith.maxui %c1208326582_i64, %c1522129235_i64 : i64
        %292 = math.fma %11, %11, %86 : tensor<13x11xf16>
        %293 = vector.broadcast %cst_1 : f32 to vector<f32>
        %294 = vector.transfer_write %293, %14[%c5] : vector<f32>, tensor<11xf32>
        %295 = index.casts %false_5 : i1 to index
        %296 = math.copysign %cst_0, %cst_4 : f32
        %297 = index.sizeof
        %298 = arith.cmpi ule, %false_5, %true : i1
        %c1_i32_46 = arith.constant 1 : i32
        linalg.yield %c1_i32_46 : i32
      }
    %154 = math.powf %cst_2, %cst_2 : f32
    %155 = arith.maxf %cst_29, %cst_29 : f16
    %156 = math.atan2 %2, %2 : tensor<11xf16>
    %157 = math.absi %c1307988576_i64 : i64
    %158 = arith.xori %false, %false_5 : i1
    %159 = arith.minf %cst_29, %cst_29 : f16
    %160 = index.sizeof
    %161 = arith.xori %c1_i32, %c596764009_i32 : i32
    %162 = math.log %14 : tensor<11xf32>
    %163 = arith.minsi %c1307988576_i64, %c1522129235_i64 : i64
    %164 = math.cttz %130 : tensor<143xi32>
    %165 = arith.minsi %false_5, %true : i1
    affine.for %arg0 = 0 to 84 {
    }
    %166 = math.round %14 : tensor<11xf32>
    %167 = math.floor %splat : tensor<13x11xf16>
    %168 = arith.muli %c119715009_i32, %c119715009_i32 : i32
    %169 = arith.minf %cst_23, %cst_23 : f16
    %170 = index.floordivs %c2, %27
    memref.assume_alignment %129, 2 : memref<4xi32>
    %collapsed_31 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
    bufferization.dealloc_tensor %14 : tensor<11xf32>
    %171 = index.divs %27, %170
    %172 = vector.broadcast %c119715009_i32 : i32 to vector<11x11xi32>
    %173 = vector.outerproduct %72, %72, %172 {kind = #vector.kind<maxui>} : vector<11xi32>, vector<11xi32>
    %174 = arith.remf %cst_0, %cst_2 : f32
    %175 = math.fpowi %cst, %c596764009_i32 : f32, i32
    %from_elements_32 = tensor.from_elements %false_5, %false_5, %false, %false_5, %false, %true, %false_5, %false_3, %false_3, %true, %false_5, %true, %false_3, %false_5, %true, %false, %false_3, %false_5, %false, %false, %false_3, %false_3, %false, %true, %true, %false_5, %false, %false, %true, %false_3, %false_3, %false, %false_3, %false_5, %false_3, %false_3, %false, %false_3, %true, %false_5, %false_5, %false_5, %false_3, %false_3 : tensor<4x11xi1>
    %176 = vector.load %alloc_12[%c0] : memref<4xi32>, vector<13x11xi32>
    %177 = math.expm1 %collapsed : tensor<143xf16>
    %178 = index.ceildivs %c2, %c8
    %inserted_33 = tensor.insert %c1307988576_i64 into %15[%c2, %c0] : tensor<13x11xi64>
    %179 = arith.remsi %c596764009_i32, %c119715009_i32 : i32
    %180 = arith.remui %false_5, %false : i1
    %181 = math.absf %20 : tensor<f16>
    %182 = bufferization.clone %alloc_10 : memref<4x11xf16> to memref<4x11xf16>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %183 = vector.transfer_read %3[%c4], %c0_i64 : tensor<4xi64>, vector<i64>
    %184 = bufferization.to_tensor %150 : memref<13x11xi16>
    %185 = math.log10 %cst : f32
    %186 = index.ceildivs %123, %92
    %187 = arith.minf %cst_4, %cst_0 : f32
    %188 = math.powf %cst_1, %cst_4 : f32
    %189 = affine.load %alloc_11[%c14] : memref<4xi64>
    %190 = math.cos %20 : tensor<f16>
    %191 = math.tan %cst_23 : f16
    %192 = bufferization.clone %alloc_11 : memref<4xi64> to memref<4xi64>
    %193 = affine.load %alloc_14[%c5] : memref<4xf16>
    vector.print %73 : vector<11xf16>
    %194 = vector.insertelement %c596764009_i32, %72[%c2 : index] : vector<11xi32>
    affine.store %193, %114[%c10] : memref<11xf16>
    %195 = arith.remf %cst_1, %cst_0 : f32
    %196 = tensor.empty() : tensor<11x11x11xi64>
    %197 = tensor.empty() : tensor<11x11xi64>
    %198 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%196, %alloc_13, %197 : tensor<11x11x11xi64>, memref<11xi64>, tensor<11x11xi64>) outs(%196 : tensor<11x11x11xi64>) {
    ^bb0(%in: i64, %in_41: i64, %in_42: i64, %out: i64):
      %269 = vector.flat_transpose %70 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
      %270 = bufferization.clone %67 : memref<4xi1> to memref<4xi1>
      %271 = arith.andi %c827031015_i64, %in_41 : i64
      %272 = index.sub %126, %147
      %273 = arith.shrsi %c1208326582_i64, %c1307988576_i64 : i64
      %274 = arith.addi %c-20085_i16, %c-20085_i16 : i16
      %inserted_43 = tensor.insert %c119715009_i32 into %7[%c1] : tensor<4xi32>
      %275 = math.expm1 %1 : tensor<11xf32>
      %276 = arith.maxsi %in, %c1_i64 : i64
      memref.assume_alignment %98, 4 : memref<4x11xf16>
      %277 = bufferization.to_tensor %150 : memref<13x11xi16>
      %278 = math.log %cst_0 : f32
      %c0_i64_44 = arith.constant 0 : i64
      %279 = vector.transfer_read %3[%c0], %c0_i64_44 : tensor<4xi64>, vector<i64>
      %280 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %dest_45, %accumulated_value_46 = vector.scan <mul>, %58, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
      %281 = vector.splat %193 : vector<13x11xf16>
      %282 = arith.maxui %c1_i64, %c1522129235_i64 : i64
      %283 = index.ceildivu %c3, %126
      %true_47 = arith.constant true
      vector.print %269 : vector<11xf16>
      %collapsed_48 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<13x11xi16> into tensor<143xi16>
      %284 = vector.shuffle %70, %269 [0, 1, 3, 4, 8, 10, 11, 12, 14, 15, 20] : vector<11xf16>, vector<11xf16>
      %285 = math.absf %11 : tensor<13x11xf16>
      %286 = arith.negf %cst_1 : f32
      %287 = arith.cmpf true, %cst_23, %193 : f16
      %288 = vector.insertelement %cst_23, %19[%170 : index] : vector<4xf16>
      %289 = math.atan2 %193, %cst_29 : f16
      %alloc_49 = memref.alloc() : memref<4x11xf32>
      %290 = vector.broadcast %c1_i32 : i32 to vector<4x11xi32>
      %291 = vector.gather %alloc_49[%c11, %113] [%290], %56, %58 : memref<4x11xf32>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xf32> into vector<4x11xf32>
      %292 = arith.ori %in_41, %in_42 : i64
      %293 = index.divu %c2, %c14
      %294 = math.cttz %277 : tensor<13x11xi16>
      %295 = math.log2 %2 : tensor<11xf16>
      memref.copy %129, %alloc_12 : memref<4xi32> to memref<4xi32>
      linalg.yield %c1_i64 : i64
    } -> tensor<11x11x11xi64>
    %199 = arith.cmpi slt, %c1_i64, %c1208326582_i64 : i64
    %200 = index.floordivs %c5, %74
    %201 = arith.remf %cst, %cst_4 : f32
    %202 = math.atan %cst_1 : f32
    %203 = arith.cmpi ugt, %c1208326582_i64, %c1208326582_i64 : i64
    %rank = tensor.rank %12 : tensor<11xi32>
    %204 = math.cos %20 : tensor<f16>
    %205 = math.cos %11 : tensor<13x11xf16>
    %206 = vector.transpose %56, [0, 1] : vector<4x11xi1> to vector<4x11xi1>
    %207 = index.casts %89 : index to i32
    %208 = index.ceildivs %c0, %c7
    %209 = arith.andi %c1522129235_i64, %c1_i64 : i64
    %210 = vector.maskedload %48[%c0, %c3], %71, %73 : memref<4x11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %extracted = tensor.extract %5[%c3] : tensor<4xi32>
    %211 = math.ceil %cst_1 : f32
    %extracted_34 = tensor.extract %7[%c2] : tensor<4xi32>
    memref.tensor_store %37, %alloc_6 : memref<4x11xi16>
    %cast = tensor.cast %130 : tensor<143xi32> to tensor<?xi32>
    %212 = math.cttz %189 : i64
    %213 = index.mul %27, %c3
    %214 = vector.broadcast %c-20085_i16 : i16 to vector<4xi16>
    %215 = vector.broadcast %true : i1 to vector<4xi1>
    %216 = vector.maskedload %150[%c12, %c0], %215, %214 : memref<13x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %217 = vector.insertelement %true, %71[%c9 : index] : vector<11xi1>
    %218 = vector.multi_reduction <maxsi>, %71, %71 [] : vector<11xi1> to vector<11xi1>
    affine.store %cst_29, %182[%c9, %c4] : memref<4x11xf16>
    %219 = arith.ori %c1_i64, %c1208326582_i64 : i64
    %220 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 4, -d0)>(%147, %c4, %200)
    %221 = math.sqrt %1 : tensor<11xf32>
    %222 = arith.andi %c1_i64, %c1522129235_i64 : i64
    %223 = index.casts %c12 : index to i32
    %224 = arith.maxf %cst_23, %cst_29 : f16
    %225 = math.sqrt %splat : tensor<13x11xf16>
    %226 = bufferization.clone %31 : memref<4xf16> to memref<4xf16>
    %227 = bufferization.clone %137 : memref<4xi16> to memref<4xi16>
    %228 = arith.remf %cst, %cst_1 : f32
    %229 = arith.maxui %c596764009_i32, %c596764009_i32 : i32
    %230 = arith.cmpi sge, %c119715009_i32, %c119715009_i32 : i32
    %231 = arith.cmpi sgt, %true, %false : i1
    %rank_35 = tensor.rank %2 : tensor<11xf16>
    %232 = math.fpowi %cst_2, %extracted_34 : f32, i32
    %from_elements_36 = tensor.from_elements %cst_23, %cst_23, %cst_23, %cst_29 : tensor<4xf16>
    %generated = tensor.generate %c8 {
    ^bb0(%arg0: index, %arg1: index):
      %269 = vector.matrix_multiply %71, %71 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi1>, vector<11xi1>) -> vector<1xi1>
      %270 = arith.divsi %c596764009_i32, %c1_i32 : i32
      %271 = bufferization.clone %67 : memref<4xi1> to memref<4xi1>
      scf.execute_region {
        %272 = math.log %cst_2 : f32
        %collapsed_41 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
        %273 = math.log10 %cst_29 : f16
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 - 2) ceildiv 8 + d1 - 16) mod 64, d3 - d0)>(%c1, %c10, %220, %c4)
        %275 = bufferization.to_memref %14 : memref<11xf32>
        %276 = index.maxs %186, %c10
        %277 = arith.maxui %c1_i32, %c119715009_i32 : i32
        %278 = arith.maxf %cst, %cst : f32
        bufferization.dealloc_tensor %21 : tensor<f16>
        %279 = arith.muli %c1_i64, %c827031015_i64 : i64
        %280 = affine.min affine_map<(d0, d1) -> (d0 mod 4 - 2)>(%74, %c10)
        %281 = math.ctlz %extracted_34 : i32
        %282 = affine.apply affine_map<(d0) -> ((d0 - d0 mod 8) ceildiv 128 + 2)>(%c10)
        %283 = affine.min affine_map<(d0, d1, d2) -> (d2, (d0 floordiv 16) floordiv 4)>(%c7, %c1, %arg0)
        %284 = math.roundeven %splat : tensor<13x11xf16>
        %285 = arith.remui %c1208326582_i64, %c1522129235_i64 : i64
        scf.yield
      }
      tensor.yield %c596764009_i32 : i32
    } : tensor<?x11xi32>
    %233 = index.ceildivs %213, %147
    %234 = arith.divf %cst_0, %cst_1 : f32
    %235 = vector.extract_strided_slice %120 {offsets = [9], sizes = [2], strides = [1]} : vector<11xf16> to vector<2xf16>
    %236 = math.log1p %cst_29 : f16
    %237 = arith.muli %c-20085_i16, %c-20085_i16 : i16
    %238 = math.powf %13, %13 : tensor<4xf16>
    %239 = math.fpowi %cst_2, %c596764009_i32 : f32, i32
    %240 = vector.shuffle %176, %176 [1, 3, 5, 8, 10, 11, 12, 14, 15, 17, 20, 22, 23] : vector<13x11xi32>, vector<13x11xi32>
    %241 = index.sizeof
    %242 = math.copysign %from_elements_36, %13 : tensor<4xf16>
    %rank_37 = tensor.rank %6 : tensor<4x11xi16>
    %243 = math.fpowi %1, %12 : tensor<11xf32>, tensor<11xi32>
    %244 = vector.flat_transpose %73 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
    %245 = vector.broadcast %c1208326582_i64 : i64 to vector<4x11xi64>
    %246 = vector.broadcast %extracted_34 : i32 to vector<4x11xi32>
    %247 = vector.gather %alloc_21[%220] [%246], %56, %245 : memref<4xi64>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xi64> into vector<4x11xi64>
    %248 = scf.while (%arg0 = %150) : (memref<13x11xi16>) -> memref<13x11xi16> {
      %269 = arith.xori %189, %c1307988576_i64 : i64
      %270 = arith.cmpf ole, %cst_2, %cst : f32
      scf.execute_region {
        %278 = math.powf %21, %20 : tensor<f16>
        %from_elements_41 = tensor.from_elements %c-20085_i16, %c-20085_i16, %c-20085_i16, %c-20085_i16 : tensor<4xi16>
        %279 = arith.maxf %cst_2, %cst_1 : f32
        %280 = arith.maxf %cst, %cst_4 : f32
        %281 = arith.shli %c119715009_i32, %extracted : i32
        %282 = math.atan2 %11, %splat : tensor<13x11xf16>
        %283 = arith.negf %cst_0 : f32
        %extracted_42 = tensor.extract %119[%c3] : tensor<4xi1>
        %cst_43 = arith.constant 5.740800e+04 : f16
        %284 = arith.divsi %false_3, %false : i1
        %285 = math.log1p %cst : f32
        %286 = arith.cmpi slt, %189, %c1307988576_i64 : i64
        memref.copy %alloc_22, %31 : memref<4xf16> to memref<4xf16>
        %287 = math.powf %100, %100 : tensor<4x11xf16>
        vector.print %58 : vector<4x11xf32>
        %288 = math.roundeven %2 : tensor<11xf16>
        scf.yield
      }
      %271 = arith.remsi %189, %c827031015_i64 : i64
      %272 = vector.broadcast %false_5 : i1 to vector<13xi1>
      %273 = vector.maskedload %alloc_9[%c1], %272, %272 : memref<4xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
      %274 = arith.minui %c1_i32, %c1_i32 : i32
      %275 = memref.atomic_rmw addi %c-20085_i16, %150[%c4, %c2] : (i16, memref<13x11xi16>) -> i16
      %276 = vector.broadcast %c1208326582_i64 : i64 to vector<13xi64>
      %277 = vector.maskedload %46[%c2], %273, %276 : memref<4xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
      scf.condition(%false) %alloc_19 : memref<13x11xi16>
    } do {
    ^bb0(%arg0: memref<13x11xi16>):
      %269 = index.sub %147, %220
      %270 = vector.insertelement %193, %120[%186 : index] : vector<11xf16>
      %271 = vector.broadcast %c1522129235_i64 : i64 to vector<11x11xi64>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %245, %245, %271 : vector<4x11xi64>, vector<4x11xi64> into vector<11x11xi64>
      %273 = arith.negf %cst_2 : f32
      %274 = arith.addi %false, %false_3 : i1
      %275 = vector.broadcast %c1522129235_i64 : i64 to vector<i64>
      vector.transfer_write %275, %192[%c10] : vector<i64>, memref<4xi64>
      %276 = math.ctlz %c1522129235_i64 : i64
      %277 = vector.maskedload %alloc_14[%c0], %215, %19 : memref<4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %278 = index.add %rank, %c13
      %279 = arith.divsi %c1522129235_i64, %c1_i64 : i64
      %280 = vector.shuffle %214, %216 [0, 1, 2, 3, 4, 5, 6, 7] : vector<4xi16>, vector<4xi16>
      scf.execute_region {
        %287 = index.floordivs %171, %c6
        %288 = index.sizeof
        %289 = index.divu %c11, %213
        %c-12188_i16 = arith.constant -12188 : i16
        %290 = index.divu %rank_35, %186
        %291 = math.absi %3 : tensor<4xi64>
        %292 = index.sizeof
        affine.store %193, %88[%c11] : memref<4xf16>
        %293 = math.absi %c1307988576_i64 : i64
        %collapsed_41 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
        %294 = math.sqrt %11 : tensor<13x11xf16>
        %collapsed_42 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %295 = arith.remui %extracted_34, %c119715009_i32 : i32
        %296 = vector.broadcast %171 : index to vector<13xindex>
        %297 = vector.broadcast %false_5 : i1 to vector<13xi1>
        %298 = vector.broadcast %cst_23 : f16 to vector<13xf16>
        vector.scatter %alloc_10[%c3, %c2] [%296], %297, %298 : memref<4x11xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
        %299 = arith.divf %cst_29, %193 : f16
        %300 = index.sub %186, %200
        scf.yield
      }
      %281 = bufferization.to_tensor %226 : memref<4xf16>
      %282 = math.expm1 %from_elements_36 : tensor<4xf16>
      %283 = affine.max affine_map<(d0, d1, d2) -> (d2, (d1 mod 4) mod 16, d2, (d1 + d2) floordiv 64)>(%c14, %45, %c13)
      %284 = tensor.empty() : tensor<11x4xf32>
      %285 = tensor.empty() : tensor<4x4xf32>
      %286 = linalg.matmul ins(%10, %284 : tensor<4x11xf32>, tensor<11x4xf32>) outs(%285 : tensor<4x4xf32>) -> tensor<4x4xf32>
      scf.yield %alloc_19 : memref<13x11xi16>
    }
    %249 = math.ceil %100 : tensor<4x11xf16>
    %250 = arith.cmpf false, %193, %193 : f16
    memref.assume_alignment %48, 16 : memref<4x11xf16>
    %251 = math.atan2 %20, %20 : tensor<f16>
    %252 = math.log1p %collapsed : tensor<143xf16>
    %253 = arith.maxui %false_5, %false : i1
    %254 = affine.if affine_set<(d0, d1, d2) : (-((d2 - 64) ceildiv 2) >= 0, (d1 + d0) * 2 - (d2 - d0) == 0)>(%c13, %c2, %c1) -> i32 {
      %269 = scf.while (%arg0 = %alloc_11) : (memref<4xi64>) -> memref<4xi64> {
        %277 = bufferization.to_tensor %alloc_18 : memref<13x11xf16>
        %278 = math.ctlz %0 : tensor<4xi64>
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c6, %33, %c13, %200)
        %280 = vector.load %alloc_18[%c0, %c2] : memref<13x11xf16>, vector<4x11xf16>
        %281 = math.exp %from_elements_36 : tensor<4xf16>
        %282 = arith.maxui %c1_i64, %c1208326582_i64 : i64
        %from_elements_41 = tensor.from_elements %false_5, %false, %false, %false, %true, %false_5, %true, %true, %false_5, %false, %false_5, %false_3, %false, %true, %false_5, %true, %false_3, %false_3, %true, %false_3, %true, %false_5, %false, %false_5, %false_3, %false_5, %false_3, %false, %false_3, %false_3, %false_5, %false, %false, %false, %true, %true, %false, %true, %true, %false, %true, %false, %false, %false_3 : tensor<4x11xi1>
        %alloc_42 = memref.alloc() : memref<4x11xf32>
        memref.tensor_store %10, %alloc_42 : memref<4x11xf32>
        scf.condition(%false_5) %arg0 : memref<4xi64>
      } do {
      ^bb0(%arg0: memref<4xi64>):
        %277 = arith.remsi %false_5, %false : i1
        %alloc_41 = memref.alloc() : memref<143xf16>
        memref.tensor_store %collapsed, %alloc_41 : memref<143xf16>
        %278 = arith.subi %c596764009_i32, %c596764009_i32 : i32
        %279 = index.maxs %rank_37, %170
        %280 = index.add %123, %59
        %281 = vector.load %alloc_10[%c1, %c6] : memref<4x11xf16>, vector<4x11xf16>
        %282 = arith.remf %cst_2, %cst_4 : f32
        %283 = vector.bitcast %176 : vector<13x11xi32> to vector<13x11xi32>
        %284 = arith.remsi %c-20085_i16, %c-20085_i16 : i16
        memref.assume_alignment %137, 8 : memref<4xi16>
        %285 = arith.cmpf ugt, %cst_0, %cst_1 : f32
        memref.assume_alignment %alloc_10, 8 : memref<4x11xf16>
        %286 = affine.apply affine_map<(d0) -> (d0)>(%c4)
        %287 = vector.splat %113 : vector<13x11xindex>
        %288 = math.atan2 %cst_29, %cst_23 : f16
        %289 = arith.addi %c1307988576_i64, %c1307988576_i64 : i64
        scf.yield %192 : memref<4xi64>
      }
      %270 = arith.minf %193, %cst_29 : f16
      %271 = math.absi %c596764009_i32 : i32
      %272 = index.casts %false : i1 to index
      %273 = math.log %13 : tensor<4xf16>
      %274 = arith.divui %c119715009_i32, %extracted_34 : i32
      %275 = math.copysign %splat, %splat : tensor<13x11xf16>
      %276 = math.ctlz %16 : tensor<4xi64>
      affine.yield %c119715009_i32 : i32
    } else {
      %269 = arith.remf %cst, %cst_1 : f32
      vector.print %176 : vector<13x11xi32>
      %270 = math.ceil %cst_4 : f32
      %271 = math.tan %193 : f16
      %272 = index.sub %233, %90
      %273 = arith.remsi %c1307988576_i64, %c1522129235_i64 : i64
      %274 = arith.negf %cst : f32
      %275 = arith.minsi %c596764009_i32, %c1_i32 : i32
      affine.yield %c119715009_i32 : i32
    }
    %255 = vector.broadcast %c1522129235_i64 : i64 to vector<11xi64>
    %256 = vector.gather %alloc_16[%92, %171] [%72], %71, %255 : memref<4x11xi64>, vector<11xi32>, vector<11xi1>, vector<11xi64> into vector<11xi64>
    %collapsed_38 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x11xf16> into tensor<143xf16>
    %257 = arith.minsi %c1307988576_i64, %c827031015_i64 : i64
    %258 = arith.xori %false_3, %false_5 : i1
    %259 = arith.remf %cst_23, %193 : f16
    %260 = scf.index_switch %c14 -> memref<4x11xi1> 
    case 1 {
      %269 = vector.broadcast %cst_4 : f32 to vector<11xf32>
      %270 = vector.fma %269, %269, %269 : vector<11xf32>
      %271 = arith.cmpf oge, %cst_4, %cst_1 : f32
      %272 = index.ceildivu %c6, %c4
      %273 = vector.broadcast %c1307988576_i64 : i64 to vector<11x11xi64>
      %274 = vector.outerproduct %256, %255, %273 {kind = #vector.kind<or>} : vector<11xi64>, vector<11xi64>
      %275 = index.casts %c1307988576_i64 : i64 to index
      %276 = math.atan2 %collapsed_38, %collapsed : tensor<143xf16>
      %277 = vector.create_mask %186, %28 : vector<4x11xi1>
      %278 = memref.atomic_rmw maxf %cst_23, %75[%c3, %c5] : (f16, memref<4x11xf16>) -> f16
      %279 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %280 = vector.fma %279, %279, %270 : vector<11xf32>
      memref.tensor_store %2, %114 : memref<11xf16>
      %281 = index.add %c0, %c9
      %282 = arith.xori %c1522129235_i64, %189 : i64
      %cst_41 = arith.constant 1.000000e+00 : f16
      %cst_42 = arith.constant 0.000000e+00 : f16
      %283 = vector.transfer_read %31[%rank_35], %cst_42 : memref<4xf16>, vector<f16>
      %284 = vector.splat %c12 : vector<13x11xindex>
      %285 = vector.multi_reduction <mul>, %58, %cst_1 [0, 1] : vector<4x11xf32> to f32
      %286 = math.expm1 %10 : tensor<4x11xf32>
      %alloc_43 = memref.alloc() : memref<4x11xi1>
      scf.yield %alloc_43 : memref<4x11xi1>
    }
    case 2 {
      %269 = vector.extract %141[0] : vector<2x11xf32>
      memref.copy %alloc_20, %alloc_18 : memref<13x11xf16> to memref<13x11xf16>
      %270 = arith.shrsi %c596764009_i32, %extracted : i32
      %generated_41 = tensor.generate %123, %213 {
      ^bb0(%arg0: index, %arg1: index):
        %283 = tensor.empty() : tensor<11x11xf32>
        %284 = tensor.empty() : tensor<4x11xf32>
        %285 = linalg.matmul ins(%10, %283 : tensor<4x11xf32>, tensor<11x11xf32>) outs(%284 : tensor<4x11xf32>) -> tensor<4x11xf32>
        %286 = memref.atomic_rmw mulf %cst_23, %114[%c6] : (f16, memref<11xf16>) -> f16
        %287 = index.divu %c5, %c0
        %288 = math.ctlz %false : i1
        tensor.yield %c1208326582_i64 : i64
      } : tensor<?x?xi64>
      %271 = math.log %11 : tensor<13x11xf16>
      %272 = math.absf %cst_29 : f16
      %273 = arith.ori %c1_i32, %c596764009_i32 : i32
      %274 = arith.addi %c1522129235_i64, %189 : i64
      %275 = bufferization.clone %192 : memref<4xi64> to memref<4xi64>
      %276 = memref.load %alloc_18[%c0, %c3] : memref<13x11xf16>
      %277 = affine.max affine_map<(d0) -> (d0 - d0 floordiv 16, (d0 floordiv 16) * 2, (d0 floordiv 16) * 2, d0 floordiv 16 + d0)>(%c11)
      %278 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      %279 = vector.multi_reduction <add>, %132, %278 [1] : vector<1x11xf32> to vector<1xf32>
      %280 = memref.atomic_rmw minu %c1307988576_i64, %192[%c0] : (i64, memref<4xi64>) -> i64
      %281 = math.log %cst_2 : f32
      %rank_42 = tensor.rank %4 : tensor<4xi64>
      %282 = vector.bitcast %247 : vector<4x11xi64> to vector<4x11xi64>
      %alloc_43 = memref.alloc() : memref<4x11xi1>
      scf.yield %alloc_43 : memref<4x11xi1>
    }
    case 3 {
      %269 = index.floordivs %200, %133
      memref.copy %alloc, %alloc_13 : memref<11xi64> to memref<11xi64>
      %270 = arith.divsi %189, %c827031015_i64 : i64
      %271 = arith.divsi %c-20085_i16, %c-20085_i16 : i16
      %272 = arith.ceildivsi %c1_i64, %c827031015_i64 : i64
      %273 = arith.floordivsi %c1208326582_i64, %c827031015_i64 : i64
      %274 = vector.flat_transpose %256 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %275 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c0, %c10, %160)
      %276 = index.maxs %c10, %200
      %277 = math.log2 %cst_29 : f16
      %278 = memref.load %alloc_7[%c0] : memref<4xf16>
      %collapsed_41 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x11xi64> into tensor<143xi64>
      %279 = affine.max affine_map<(d0, d1) -> (-(d0 - 1), (d1 + 7) mod 64)>(%c13, %90)
      %280 = math.absf %cst_2 : f32
      %281 = math.log1p %13 : tensor<4xf16>
      %282 = math.ctlz %c1_i32 : i32
      %alloc_42 = memref.alloc() : memref<4x11xi1>
      scf.yield %alloc_42 : memref<4x11xi1>
    }
    default {
      %269 = vector.broadcast %193 : f16 to vector<11x11xf16>
      %270 = vector.outerproduct %244, %73, %269 {kind = #vector.kind<maxf>} : vector<11xf16>, vector<11xf16>
      bufferization.dealloc_tensor %153 : tensor<4xi32>
      %271 = arith.ori %c1522129235_i64, %189 : i64
      %272 = arith.divsi %false_5, %true : i1
      %273 = arith.divf %cst_0, %cst_2 : f32
      vector.print %214 : vector<4xi16>
      %274 = arith.cmpf olt, %cst_2, %cst_0 : f32
      %275 = math.expm1 %2 : tensor<11xf16>
      %276 = index.divu %208, %92
      %277 = math.log2 %2 : tensor<11xf16>
      %278 = bufferization.clone %182 : memref<4x11xf16> to memref<4x11xf16>
      %inserted_41 = tensor.insert %extracted into %5[%c0] : tensor<4xi32>
      %279 = bufferization.clone %88 : memref<4xf16> to memref<4xf16>
      %280 = math.sqrt %11 : tensor<13x11xf16>
      %281 = arith.remf %cst_0, %cst_1 : f32
      %282 = math.cttz %17 : tensor<4xi64>
      %alloc_42 = memref.alloc() : memref<4x11xi1>
      scf.yield %alloc_42 : memref<4x11xi1>
    }
    memref.tensor_store %8, %46 : memref<4xi64>
    %261 = math.copysign %1, %14 : tensor<11xf32>
    %262 = tensor.empty() : tensor<11x11xf32>
    %263 = tensor.empty() : tensor<4x11xf32>
    %264 = linalg.matmul ins(%10, %262 : tensor<4x11xf32>, tensor<11x11xf32>) outs(%263 : tensor<4x11xf32>) -> tensor<4x11xf32>
    %265 = tensor.empty() : tensor<13x11xi64>
    %266 = linalg.copy ins(%15 : tensor<13x11xi64>) outs(%265 : tensor<13x11xi64>) -> tensor<13x11xi64>
    %alloc_39 = memref.alloc() : memref<11x4xf16>
    linalg.transpose ins(%alloc_8 : memref<4x11xf16>) outs(%alloc_39 : memref<11x4xf16>) permutation = [1, 0] 
    %267 = tensor.empty() : tensor<i64>
    %reduced_40 = linalg.reduce ins(%17 : tensor<4xi64>) outs(%267 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %269 = affine.load %182[%c9, %c5] : memref<4x11xf16>
        %270 = scf.execute_region -> memref<11xf16> {
          %277 = arith.shli %extracted, %c119715009_i32 : i32
          %278 = memref.atomic_rmw minf %cst_29, %alloc_7[%c2] : (f16, memref<4xf16>) -> f16
          %279 = memref.atomic_rmw muli %extracted_34, %alloc_12[%c0] : (i32, memref<4xi32>) -> i32
          %280 = arith.addi %c827031015_i64, %c1307988576_i64 : i64
          %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * -32)>(%c4, %74, %74, %59)
          vector.print %70 : vector<11xf16>
          %282 = arith.floordivsi %c827031015_i64, %c1307988576_i64 : i64
          %283 = arith.negf %193 : f16
          %284 = math.expm1 %2 : tensor<11xf16>
          %285 = math.floor %11 : tensor<13x11xf16>
          %286 = arith.ori %extracted, %c1_i32 : i32
          %287 = index.sub %92, %220
          %288 = arith.cmpf ord, %cst_2, %cst_0 : f32
          %289 = vector.broadcast %c1_i64 : i64 to vector<11x11xi64>
          %290 = vector.outerproduct %256, %256, %289 {kind = #vector.kind<xor>} : vector<11xi64>, vector<11xi64>
          %291 = math.sqrt %splat : tensor<13x11xf16>
          affine.store %false_5, %alloc_9[%c6] : memref<4xi1>
          scf.yield %114 : memref<11xf16>
        }
        %271 = vector.create_mask %241 : vector<4xi1>
        %272 = index.sub %92, %c13
        %273 = arith.ceildivsi %init, %c1522129235_i64 : i64
        %274 = arith.andi %c827031015_i64, %189 : i64
        %275 = math.ceil %14 : tensor<11xf32>
        %276 = math.expm1 %14 : tensor<11xf32>
        %c1_i64_41 = arith.constant 1 : i64
        linalg.yield %c1_i64_41 : i64
      }
    scf.parallel (%arg0) = (%241) to (%c0) step (%c3) {
      %269 = affine.apply affine_map<(d0) -> ((d0 - d0 floordiv 128) mod 8)>(%45)
      %270 = arith.negf %cst_23 : f16
      %271 = arith.remsi %false, %false_3 : i1
      %272 = math.log1p %86 : tensor<13x11xf16>
      %273 = math.absi %reduced : tensor<i64>
      %274 = vector.load %alloc_15[%c0] : memref<4xi1>, vector<4xi1>
      %275 = arith.minsi %c1_i64, %c1_i64 : i64
      %276 = tensor.empty() : tensor<11x11x11xi64>
      %277 = tensor.empty() : tensor<11x11xi64>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277, %alloc_13, %alloc_13 : tensor<11x11xi64>, memref<11xi64>, memref<11xi64>) outs(%276 : tensor<11x11x11xi64>) {
      ^bb0(%in: i64, %in_42: i64, %in_43: i64, %out: i64):
        %287 = arith.cmpi ule, %extracted, %extracted : i32
        %288 = arith.negf %cst : f32
        %289 = math.log %13 : tensor<4xf16>
        %290 = math.roundeven %cst_4 : f32
        %291 = arith.shli %c596764009_i32, %c596764009_i32 : i32
        %292 = vector.broadcast %cst_23 : f16 to vector<4x4xf16>
        %293 = vector.outerproduct %19, %19, %292 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
        %294 = math.copysign %10, %10 : tensor<4x11xf32>
        %295 = index.sub %c13, %c6
        %296 = index.ceildivu %rank_35, %113
        %297 = vector.splat %133 : vector<4x11xindex>
        %298 = math.atan2 %10, %10 : tensor<4x11xf32>
        %299 = index.casts %c1522129235_i64 : i64 to index
        %from_elements_44 = tensor.from_elements %true, %false_3, %false_5, %false : tensor<4xi1>
        %300 = index.casts %c14 : index to i32
        %301 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - (d2 - d0))>(%rank, %269, %200, %c14)
        %302 = vector.flat_transpose %215 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %303 = arith.divui %c119715009_i32, %c1_i32 : i32
        %304 = index.sub %rank_37, %c9
        %305 = arith.ori %c1208326582_i64, %c1208326582_i64 : i64
        %splat_45 = tensor.splat %in : tensor<13x11xi64>
        %306 = math.absi %5 : tensor<4xi32>
        %307 = math.round %collapsed_38 : tensor<143xf16>
        %308 = index.casts %200 : index to i32
        %309 = math.log2 %1 : tensor<11xf32>
        %310 = math.log1p %100 : tensor<4x11xf16>
        %311 = vector.transpose %141, [1, 0] : vector<2x11xf32> to vector<11x2xf32>
        %312 = index.floordivs %c11, %c12
        %313 = arith.divsi %extracted_34, %extracted : i32
        %314 = index.divu %312, %c5
        %c1_i64_46 = arith.constant 1 : i64
        %c0_i64_47 = arith.constant 0 : i64
        %315 = vector.transfer_read %0[%160], %c0_i64_47 : tensor<4xi64>, vector<i64>
        %316 = math.floor %263 : tensor<4x11xf32>
        %317 = arith.cmpf ole, %cst_4, %cst : f32
        linalg.yield %in : i64
      } -> tensor<11x11x11xi64>
      %cst_41 = arith.constant 1.000000e+00 : f32
      %279 = vector.transfer_read %1[%74], %cst_41 : tensor<11xf32>, vector<f32>
      %280 = index.maxs %c0, %186
      %281 = vector.bitcast %235 : vector<2xf16> to vector<2xi16>
      %282 = math.cttz %c1_i64 : i64
      %283 = affine.max affine_map<(d0, d1, d2) -> (d0 + d2 mod 16)>(%c0, %280, %89)
      %284 = math.roundeven %13 : tensor<4xf16>
      %285 = arith.cmpf une, %cst, %cst_0 : f32
      %286 = memref.alloca_scope  -> (memref<11xi1>) {
        %287 = math.atan2 %cst_23, %193 : f16
        %288 = arith.cmpf oeq, %193, %cst_29 : f16
        %289 = math.ctlz %15 : tensor<13x11xi64>
        %290 = vector.multi_reduction <mul>, %73, %cst_23 [0] : vector<11xf16> to f16
        %291 = bufferization.clone %98 : memref<4x11xf16> to memref<4x11xf16>
        %292 = math.powf %collapsed, %collapsed_38 : tensor<143xf16>
        %293 = vector.flat_transpose %215 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %294 = bufferization.clone %129 : memref<4xi32> to memref<4xi32>
        %295 = vector.shuffle %120, %235 [0, 2, 4, 7, 9, 11, 12] : vector<11xf16>, vector<2xf16>
        %296 = arith.shli %c1522129235_i64, %c827031015_i64 : i64
        %297 = arith.minsi %false, %false : i1
        %298 = arith.shrui %extracted_34, %extracted : i32
        %299 = arith.maxsi %false_3, %false : i1
        %extracted_42 = tensor.extract %reduced[] : tensor<i64>
        %300 = math.roundeven %263 : tensor<4x11xf32>
        %301 = arith.remsi %c1_i64, %c1_i64 : i64
        %302 = vector.transpose %216, [0] : vector<4xi16> to vector<4xi16>
        %303 = vector.broadcast %c1_i32 : i32 to vector<4xi32>
        %304 = vector.gather %alloc_17[%c13] [%303], %293, %215 : memref<11xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %305 = math.expm1 %cst_0 : f32
        %306 = math.round %20 : tensor<f16>
        %307 = bufferization.to_tensor %alloc_13 : memref<11xi64>
        %308 = math.sqrt %cst_29 : f16
        %309 = math.ceil %11 : tensor<13x11xf16>
        %310 = math.roundeven %20 : tensor<f16>
        %311 = math.copysign %cst_41, %cst : f32
        %312 = bufferization.to_tensor %alloc_12 : memref<4xi32>
        %splat_43 = tensor.splat %c827031015_i64 : tensor<4xi64>
        %313 = vector.broadcast %c1522129235_i64 : i64 to vector<11x11xi64>
        %314 = vector.outerproduct %255, %255, %313 {kind = #vector.kind<xor>} : vector<11xi64>, vector<11xi64>
        %315 = math.rsqrt %2 : tensor<11xf16>
        %316 = arith.remf %cst_2, %cst_2 : f32
        %317 = arith.addi %c1522129235_i64, %c1_i64 : i64
        bufferization.dealloc_tensor %266 : tensor<13x11xi64>
        memref.alloca_scope.return %alloc_17 : memref<11xi1>
      }
      scf.yield
    }
    %268 = affine.vector_load %227[%c6] : memref<4xi16>, vector<11xi16>
    affine.vector_store %72, %alloc_12[%241] : memref<4xi32>, vector<11xi32>
    vector.print %19 : vector<4xf16>
    vector.print %42 : vector<4x11xf32>
    vector.print %43 : vector<4x11xf32>
    vector.print %54 : vector<2x11xf32>
    vector.print %56 : vector<4x11xi1>
    vector.print %58 : vector<4x11xf32>
    vector.print %70 : vector<11xf16>
    vector.print %71 : vector<11xi1>
    vector.print %72 : vector<11xi32>
    vector.print %73 : vector<11xf16>
    vector.print %108 : vector<4x11xf32>
    vector.print %120 : vector<11xf16>
    vector.print %132 : vector<1x11xf32>
    vector.print %141 : vector<2x11xf32>
    vector.print %176 : vector<13x11xi32>
    vector.print %210 : vector<11xf16>
    vector.print %214 : vector<4xi16>
    vector.print %215 : vector<4xi1>
    vector.print %216 : vector<4xi16>
    vector.print %235 : vector<2xf16>
    vector.print %244 : vector<11xf16>
    vector.print %245 : vector<4x11xi64>
    vector.print %246 : vector<4x11xi32>
    vector.print %247 : vector<4x11xi64>
    vector.print %255 : vector<11xi64>
    vector.print %256 : vector<11xi64>
    vector.print %268 : vector<11xi16>
    vector.print %c1522129235_i64 : i64
    vector.print %cst : f32
    vector.print %c596764009_i32 : i32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %c119715009_i32 : i32
    vector.print %false : i1
    vector.print %true : i1
    vector.print %c827031015_i64 : i64
    vector.print %c1208326582_i64 : i64
    vector.print %cst_2 : f32
    vector.print %c1307988576_i64 : i64
    vector.print %false_3 : i1
    vector.print %c-20085_i16 : i16
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %cst_23 : f16
    vector.print %c1_i32 : i32
    vector.print %cst_29 : f16
    vector.print %c1_i64 : i64
    vector.print %189 : i64
    vector.print %193 : f16
    vector.print %extracted : i32
    vector.print %extracted_34 : i32
    return
  }
}
