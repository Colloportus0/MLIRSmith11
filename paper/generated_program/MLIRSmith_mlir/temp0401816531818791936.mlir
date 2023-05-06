module {
  func.func nested @func1(%arg0: i64, %arg1: index) {
    %false = arith.constant false
    %cst = arith.constant 2.923200e+04 : f16
    %c22329_i16 = arith.constant 22329 : i16
    %c1377814532_i32 = arith.constant 1377814532 : i32
    %cst_0 = arith.constant 2.105600e+04 : f16
    %c1193460924_i64 = arith.constant 1193460924 : i64
    %c1818536603_i64 = arith.constant 1818536603 : i64
    %cst_1 = arith.constant 0x4DD71348 : f32
    %cst_2 = arith.constant 1.16919949E+9 : f32
    %cst_3 = arith.constant 1.283200e+04 : f16
    %c1431144665_i64 = arith.constant 1431144665 : i64
    %cst_4 = arith.constant 3.510400e+04 : f16
    %cst_5 = arith.constant 3.622400e+04 : f16
    %cst_6 = arith.constant 0x4C66794A : f32
    %false_7 = arith.constant false
    %cst_8 = arith.constant 1.407200e+04 : f16
    %0 = tensor.empty() : tensor<4xf32>
    %1 = tensor.empty() : tensor<4xf16>
    %2 = tensor.empty() : tensor<13x7xi32>
    %3 = tensor.empty() : tensor<4xi32>
    %4 = tensor.empty() : tensor<13x7xi64>
    %5 = tensor.empty() : tensor<5xf16>
    %6 = tensor.empty() : tensor<4xi1>
    %7 = tensor.empty() : tensor<4xf32>
    %8 = tensor.empty() : tensor<5xi16>
    %9 = tensor.empty() : tensor<7x4xi64>
    %10 = tensor.empty() : tensor<4xi16>
    %11 = tensor.empty() : tensor<4xi16>
    %12 = tensor.empty() : tensor<13x7xi1>
    %13 = tensor.empty() : tensor<13x7xi64>
    %14 = tensor.empty() : tensor<4xi64>
    %15 = tensor.empty() : tensor<13x7xf16>
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
    %alloc = memref.alloc() : memref<13x7xi16>
    %alloc_9 = memref.alloc() : memref<5xi1>
    %alloc_10 = memref.alloc() : memref<7x4xi16>
    %alloc_11 = memref.alloc() : memref<5xi32>
    %alloc_12 = memref.alloc() : memref<4xi16>
    %alloc_13 = memref.alloc() : memref<4xi64>
    %alloc_14 = memref.alloc() : memref<4xf16>
    %alloc_15 = memref.alloc() : memref<7x4xf32>
    %alloc_16 = memref.alloc() : memref<13x7xf32>
    %alloc_17 = memref.alloc() : memref<5xf32>
    %alloc_18 = memref.alloc() : memref<5xi16>
    %alloc_19 = memref.alloc() : memref<7x4xi1>
    %alloc_20 = memref.alloc() : memref<5xi32>
    %alloc_21 = memref.alloc() : memref<7x4xi64>
    %alloc_22 = memref.alloc() : memref<4xf16>
    %alloc_23 = memref.alloc() : memref<7x4xf32>
    %16 = tensor.empty() : tensor<13x7xi32>
    %17 = linalg.copy ins(%2 : tensor<13x7xi32>) outs(%16 : tensor<13x7xi32>) -> tensor<13x7xi32>
    %18 = tensor.empty() : tensor<4x7xi16>
    %transposed = linalg.transpose ins(%alloc_10 : memref<7x4xi16>) outs(%18 : tensor<4x7xi16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<13xf16>
    %reduced = linalg.reduce ins(%15 : tensor<13x7xf16>) outs(%19 : tensor<13xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %261 = vector.splat %cst_1 : vector<13x7xf32>
        affine.for %arg2 = 0 to 24 {
        }
        %262 = arith.cmpf false, %cst_8, %cst : f16
        %263 = index.castu %c1431144665_i64 : i64 to index
        %264 = vector.broadcast %c1377814532_i32 : i32 to vector<13xi32>
        %265 = vector.transfer_write %264, %2[%c5, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi32>, tensor<13x7xi32>
        bufferization.dealloc_tensor %10 : tensor<4xi16>
        %266 = bufferization.to_tensor %alloc_9 : memref<5xi1>
        %267 = math.round %0 : tensor<4xf32>
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    scf.parallel (%arg2, %arg3) = (%c3, %c9) to (%c8, %c1) step (%c10, %c7) {
      %261 = arith.ori %c1818536603_i64, %c1193460924_i64 : i64
      %262 = arith.divf %cst, %cst_0 : f16
      %263 = scf.while (%arg4 = %cst) : (f16) -> f16 {
        %279 = arith.cmpf false, %cst_6, %cst_1 : f32
        %280 = arith.shrui %c1431144665_i64, %c1431144665_i64 : i64
        %281 = vector.create_mask %c4, %c11 : vector<7x4xi1>
        %282 = vector.extract_strided_slice %281 {offsets = [2], sizes = [1], strides = [1]} : vector<7x4xi1> to vector<1x4xi1>
        %283 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %284 = vector.multi_reduction <minui>, %281, %283 [0] : vector<7x4xi1> to vector<4xi1>
        %splat_57 = tensor.splat %cst_1 : tensor<7x4xf32>
        %alloc_58 = memref.alloc() : memref<4xi32>
        memref.tensor_store %3, %alloc_58 : memref<4xi32>
        %285 = math.round %cst_3 : f16
        scf.condition(%false) %cst : f16
      } do {
      ^bb0(%arg4: f16):
        %279 = arith.cmpi ugt, %c1818536603_i64, %c1818536603_i64 : i64
        %280 = math.rsqrt %cst_1 : f32
        %281 = math.fma %cst, %cst_3, %cst_4 : f16
        %extracted_57 = tensor.extract %reduced[%c6] : tensor<13xf16>
        %282 = arith.maxui %c1431144665_i64, %c1193460924_i64 : i64
        %283 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
        %284 = vector.matrix_multiply %283, %283 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %285 = arith.cmpf ogt, %cst_4, %extracted_57 : f16
        %286 = arith.maxui %false, %false : i1
        %287 = arith.shli %false_7, %false_7 : i1
        %288 = vector.transpose %284, [0] : vector<1xi16> to vector<1xi16>
        %289 = index.maxu %c4, %arg2
        %290 = index.ceildivu %c1, %c5
        %291 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + 128)>(%c11, %290, %290, %c7)
        %extracted_58 = tensor.extract %0[%c3] : tensor<4xf32>
        %292 = vector.broadcast %c7 : index to vector<7xindex>
        %293 = vector.broadcast %false : i1 to vector<7xi1>
        %294 = vector.broadcast %c1377814532_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_11[%c3] [%292], %293, %294 : memref<5xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %295 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %296 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %297 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
        %298 = vector.gather %5[%c14] [%297], %296, %295 : tensor<5xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        scf.yield %cst : f16
      }
      %264 = arith.subi %false_7, %false_7 : i1
      %265 = vector.broadcast %c22329_i16 : i16 to vector<1xi16>
      %266 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %267 = math.ctlz %9 : tensor<7x4xi64>
      %268 = arith.negf %cst_1 : f32
      %269 = math.ctlz %transposed : tensor<4x7xi16>
      %270 = affine.apply affine_map<(d0) -> (d0 floordiv 8 - (d0 - 4) * 2 - 4)>(%c1)
      %271 = bufferization.clone %alloc_12 : memref<4xi16> to memref<4xi16>
      %272 = memref.realloc %alloc_22 : memref<4xf16> to memref<7xf16>
      %273 = vector.insert %c22329_i16, %266 [0] : i16 into vector<1xi16>
      %274 = arith.shrsi %false, %false_7 : i1
      %275 = vector.broadcast %c22329_i16 : i16 to vector<1x1xi16>
      %276 = vector.outerproduct %265, %265, %275 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
      %277 = arith.addi %c1431144665_i64, %c1193460924_i64 : i64
      %278 = affine.for %arg4 = 0 to 5 iter_args(%arg5 = %alloc_11) -> (memref<5xi32>) {
        affine.yield %arg5 : memref<5xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_23[%c3, %c4] : memref<7x4xf32>, vector<5xf32>
    affine.vector_store %20, %alloc_23[%c11, %c6] : memref<7x4xf32>, vector<5xf32>
    %21 = tensor.empty() : tensor<4xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%14, %21 : tensor<4xi64>, tensor<4xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = math.floor %15 : tensor<13x7xf16>
    %false_24 = index.bool.constant false
    memref.store %c1431144665_i64, %alloc_13[%c2] : memref<4xi64>
    %25 = math.round %cst_8 : f16
    %26 = arith.minf %cst_1, %cst_6 : f32
    %27 = math.ctlz %c22329_i16 : i16
    %28 = math.fma %cst_6, %cst_1, %cst_1 : f32
    %29 = math.exp %5 : tensor<5xf16>
    %30 = vector.matrix_multiply %20, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
    %rank = tensor.rank %14 : tensor<4xi64>
    %31 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %32 = vector.outerproduct %30, %30, %31 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    %33 = arith.minsi %false_7, %false_24 : i1
    %34 = arith.muli %c22329_i16, %c22329_i16 : i16
    %35 = arith.maxui %c1818536603_i64, %c1193460924_i64 : i64
    %36 = vector.broadcast %cst_5 : f16 to vector<7x13xf16>
    %37 = vector.broadcast %cst_5 : f16 to vector<13xf16>
    %dest, %accumulated_value = vector.scan <mul>, %36, %37 {inclusive = false, reduction_dim = 0 : i64} : vector<7x13xf16>, vector<13xf16>
    %38 = arith.ceildivsi %false_24, %false : i1
    %39 = math.ctpop %13 : tensor<13x7xi64>
    %cst_25 = arith.constant 0x4E2DD081 : f32
    %40 = math.round %15 : tensor<13x7xf16>
    scf.index_switch %c5 
    case 1 {
      %261 = index.maxu %c0, %rank
      %262 = arith.xori %c1818536603_i64, %c1193460924_i64 : i64
      %263 = vector.broadcast %false : i1 to vector<5xi1>
      %264 = vector.maskedload %alloc_17[%c2], %263, %20 : memref<5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %265 = math.exp %1 : tensor<4xf16>
      %266 = vector.broadcast %c10 : index to vector<4xindex>
      %267 = vector.broadcast %false : i1 to vector<4xi1>
      %268 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
      vector.scatter %alloc_12[%c2] [%266], %267, %268 : memref<4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      memref.assume_alignment %alloc_17, 16 : memref<5xf32>
      %c1_i32 = arith.constant 1 : i32
      %269 = vector.transfer_read %17[%c0, %c0], %c1_i32 : tensor<13x7xi32>, vector<i32>
      %270 = math.log1p %cst_3 : f16
      %extracted_57 = tensor.extract %transposed[%c0, %c0] : tensor<4x7xi16>
      %271 = math.log10 %7 : tensor<4xf32>
      %272 = arith.divui %extracted_57, %extracted_57 : i16
      %273 = vector.flat_transpose %263 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %274 = arith.ori %extracted_57, %extracted_57 : i16
      %275 = index.casts %c2 : index to i32
      %276 = math.log2 %reduced : tensor<13xf16>
      %277 = vector.broadcast %cst_6 : f32 to vector<4x4x7xf32>
      %278 = vector.broadcast %cst_1 : f32 to vector<4x7xf32>
      %dest_58, %accumulated_value_59 = vector.scan <mul>, %277, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4x7xf32>, vector<4x7xf32>
      scf.yield
    }
    case 2 {
      %261 = math.ceil %cst_2 : f32
      %262 = arith.minsi %c22329_i16, %c22329_i16 : i16
      %263 = index.casts %c1377814532_i32 : i32 to index
      memref.store %cst_6, %alloc_15[%c5, %c0] : memref<7x4xf32>
      %264 = index.maxu %c11, %c8
      %265 = arith.negf %cst_8 : f16
      %266 = math.log1p %cst_2 : f32
      %267 = index.maxs %c1, %c6
      %268 = scf.if %false -> (memref<7x4xi64>) {
        %274 = math.expm1 %19 : tensor<13xf16>
        %alloc_58 = memref.alloc() : memref<4xf32>
        memref.tensor_store %0, %alloc_58 : memref<4xf32>
        %275 = math.round %cst_6 : f32
        %extracted_59 = tensor.extract %12[%c5, %c3] : tensor<13x7xi1>
        affine.store %cst_3, %alloc_22[%c5] : memref<4xf16>
        %c908715861_i64 = arith.constant 908715861 : i64
        %276 = vector.insertelement %cst_6, %20[%c7 : index] : vector<5xf32>
        %rank_60 = tensor.rank %4 : tensor<13x7xi64>
        scf.yield %alloc_21 : memref<7x4xi64>
      } else {
        %274 = tensor.empty() : tensor<13x4xi64>
        %275 = linalg.matmul ins(%4, %9 : tensor<13x7xi64>, tensor<7x4xi64>) outs(%274 : tensor<13x4xi64>) -> tensor<13x4xi64>
        %276 = index.maxs %c3, %c13
        %277 = arith.mulf %cst_2, %cst_1 : f32
        %278 = arith.negf %cst_3 : f16
        %279 = vector.splat %c6 : vector<7x4xindex>
        %280 = math.cttz %3 : tensor<4xi32>
        %281 = arith.divui %c1431144665_i64, %c1193460924_i64 : i64
        %282 = arith.addf %cst, %cst_3 : f16
        scf.yield %alloc_21 : memref<7x4xi64>
      }
      %alloca_57 = memref.alloca() : memref<4xi64>
      %269 = index.casts %c6 : index to i32
      %270 = arith.divsi %c1377814532_i32, %c1377814532_i32 : i32
      %271 = affine.min affine_map<(d0) -> (d0 - 32, ((d0 - 32) floordiv 128) ceildiv 8, -((d0 - 32) floordiv 128 + 1), ((d0 - 32) floordiv 128) ceildiv 8)>(%263)
      %272 = arith.remf %cst_5, %cst_8 : f16
      %273 = index.floordivs %c15, %c9
      memref.assume_alignment %alloc_21, 1 : memref<7x4xi64>
      scf.yield
    }
    case 3 {
      %rank_57 = tensor.rank %1 : tensor<4xf16>
      %261 = arith.ceildivsi %c1193460924_i64, %c1818536603_i64 : i64
      %262 = arith.maxui %false, %false_7 : i1
      %263 = arith.remf %cst_4, %cst_5 : f16
      scf.execute_region {
        %273 = math.round %cst_3 : f16
        %274 = arith.addi %c1431144665_i64, %c1431144665_i64 : i64
        %275 = math.log10 %1 : tensor<4xf16>
        %276 = arith.cmpf ogt, %cst_2, %cst_2 : f32
        %277 = math.round %cst_3 : f16
        bufferization.dealloc_tensor %0 : tensor<4xf32>
        %278 = vector.broadcast %cst_4 : f16 to vector<13x7xf16>
        %279 = vector.broadcast %cst_8 : f16 to vector<7xf16>
        %dest_62, %accumulated_value_63 = vector.scan <minf>, %278, %279 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xf16>, vector<7xf16>
        %extracted_64 = tensor.extract %11[%c1] : tensor<4xi16>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c10, %c12, %c7, %c14)
        %281 = vector.broadcast %cst_1 : f32 to vector<13x7xf32>
        %282 = arith.maxf %cst_5, %cst_4 : f16
        %283 = vector.reduction <maxf>, %30 : vector<1xf32> into f32
        %284 = tensor.empty(%c6) : tensor<13x?xf32>
        %285 = index.maxu %c0, %c11
        %286 = vector.extract_strided_slice %278 {offsets = [1], sizes = [11], strides = [1]} : vector<13x7xf16> to vector<11x7xf16>
        scf.yield
      }
      %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst_2 : vector<5xf32>, vector<5xf32> into f32
      %265 = arith.minsi %c1818536603_i64, %c1431144665_i64 : i64
      %collapsed_58 = tensor.collapse_shape %transposed [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
      %inserted_59 = tensor.insert %false_24 into %12[%c4, %c4] : tensor<13x7xi1>
      %266 = index.ceildivu %c5, %c3
      %267 = arith.andi %false_7, %false_7 : i1
      %268 = arith.maxui %c1377814532_i32, %c1377814532_i32 : i32
      %269 = vector.extract %20[4] : vector<5xf32>
      %c0_i16 = arith.constant 0 : i16
      %270 = vector.transfer_read %8[%c11], %c0_i16 : tensor<5xi16>, vector<i16>
      %271 = vector.broadcast %cst_1 : f32 to vector<7x4xf32>
      %272 = vector.broadcast %cst_2 : f32 to vector<7xf32>
      %dest_60, %accumulated_value_61 = vector.scan <minf>, %271, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<7x4xf32>, vector<7xf32>
      affine.store %cst, %alloc_14[%c11] : memref<4xf16>
      scf.yield
    }
    default {
      %261 = vector.broadcast %cst_4 : f16 to vector<5xf16>
      %262 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
      %263 = vector.outerproduct %20, %20, %262 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
      %extracted_57 = tensor.extract %6[%c2] : tensor<4xi1>
      %264 = arith.andi %c22329_i16, %c22329_i16 : i16
      %265 = vector.splat %c4 : vector<4xindex>
      scf.if %false {
        %cast_59 = tensor.cast %reduced : tensor<13xf16> to tensor<?xf16>
        %275 = math.ceil %cst_4 : f16
        %276 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
        %277 = vector.outerproduct %20, %20, %276 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
        %278 = math.log1p %7 : tensor<4xf32>
        %cast_60 = tensor.cast %17 : tensor<13x7xi32> to tensor<?x?xi32>
        %279 = math.roundeven %1 : tensor<4xf16>
        %cast_61 = tensor.cast %15 : tensor<13x7xf16> to tensor<?x?xf16>
        %280 = math.round %19 : tensor<13xf16>
      } else {
        %275 = vector.broadcast %cst_6 : f32 to vector<13x7xf32>
        %276 = arith.cmpi sle, %c1431144665_i64, %c1431144665_i64 : i64
        %277 = math.cttz %13 : tensor<13x7xi64>
        %false_59 = index.bool.constant false
        %278 = vector.multi_reduction <minf>, %30, %cst_6 [0] : vector<1xf32> to f32
        %279 = arith.cmpf one, %cst_1, %cst_2 : f32
        %280 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 18)>(%c15, %c4, %c0)
        %281 = math.absf %7 : tensor<4xf32>
      }
      %266 = index.floordivs %c2, %c15
      %267 = index.maxs %c8, %c1
      %268 = arith.xori %c22329_i16, %c22329_i16 : i16
      %269 = math.exp2 %cst : f16
      %270 = math.log10 %cst_2 : f32
      %rank_58 = tensor.rank %11 : tensor<4xi16>
      %271 = bufferization.to_memref %17 : memref<13x7xi32>
      %272 = arith.divf %cst_4, %cst_5 : f16
      %273 = vector.shuffle %30, %20 [0, 1, 3, 4] : vector<1xf32>, vector<5xf32>
      %274 = vector.bitcast %30 : vector<1xf32> to vector<1xf32>
    }
    %41 = math.log1p %5 : tensor<5xf16>
    %42 = scf.index_switch %c13 -> vector<13x7xi16> 
    case 1 {
      %261 = math.ctlz %12 : tensor<13x7xi1>
      %262 = index.mul %c8, %c7
      %263 = math.fma %reduced, %reduced, %19 : tensor<13xf16>
      %264 = math.tanh %cst_6 : f32
      %265 = arith.ori %c1193460924_i64, %c1431144665_i64 : i64
      %266 = scf.index_switch %c0 -> i64 
      case 1 {
        %277 = vector.broadcast %false_24 : i1 to vector<13xi1>
        %278 = vector.maskedload %alloc_9[%c0], %277, %277 : memref<5xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %cast_58 = tensor.cast %reduced : tensor<13xf16> to tensor<?xf16>
        %279 = index.floordivs %c1, %c7
        memref.store %cst_2, %alloc_16[%c3, %c0] : memref<13x7xf32>
        %280 = vector.insertelement %cst_1, %30[%c14 : index] : vector<1xf32>
        memref.store %c22329_i16, %alloc_18[%c1] : memref<5xi16>
        %281 = arith.divui %c1377814532_i32, %c1377814532_i32 : i32
        %282 = index.casts %rank : index to i32
        %283 = index.casts %false : i1 to index
        %284 = math.absf %reduced : tensor<13xf16>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %30, %30, %cst_2 : vector<1xf32>, vector<1xf32> into f32
        %286 = arith.maxui %c1377814532_i32, %c1377814532_i32 : i32
        %287 = arith.cmpf ult, %cst_0, %cst_4 : f16
        %288 = arith.maxf %cst_6, %cst_1 : f32
        %289 = vector.insertelement %cst_6, %20[%c15 : index] : vector<5xf32>
        %290 = arith.divui %c22329_i16, %c22329_i16 : i16
        scf.yield %c1193460924_i64 : i64
      }
      default {
        %extracted_58 = tensor.extract %15[%c9, %c0] : tensor<13x7xf16>
        %277 = arith.maxsi %c1818536603_i64, %c1193460924_i64 : i64
        %278 = math.sqrt %cst_8 : f16
        %279 = arith.maxsi %c22329_i16, %c22329_i16 : i16
        %280 = math.absf %7 : tensor<4xf32>
        %cst_59 = arith.constant 4.057600e+04 : f16
        %281 = arith.divui %c22329_i16, %c22329_i16 : i16
        %from_elements_60 = tensor.from_elements %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16 : tensor<13x7xi16>
        %282 = arith.cmpi eq, %c22329_i16, %c22329_i16 : i16
        %283 = arith.mulf %cst_3, %cst : f16
        %284 = arith.shrui %c22329_i16, %c22329_i16 : i16
        %285 = math.round %cst : f16
        %extracted_61 = tensor.extract %14[%c3] : tensor<4xi64>
        %286 = arith.addf %cst_6, %cst_6 : f32
        %287 = math.ctlz %9 : tensor<7x4xi64>
        %288 = math.ctpop %14 : tensor<4xi64>
        scf.yield %c1431144665_i64 : i64
      }
      %267 = math.log1p %1 : tensor<4xf16>
      %268 = arith.maxsi %false_24, %false_7 : i1
      bufferization.dealloc_tensor %8 : tensor<5xi16>
      %269 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %270 = vector.outerproduct %30, %30, %269 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %alloc_57 = memref.alloc() : memref<4xi16>
      %271 = index.casts %rank : index to i32
      %272 = arith.remf %cst, %cst_3 : f16
      %273 = bufferization.to_memref %7 : memref<4xf32>
      %274 = affine.for %arg2 = 0 to 108 iter_args(%arg3 = %false_24) -> (i1) {
        affine.yield %false_7 : i1
      }
      %275 = tensor.empty() : tensor<5xi16>
      %276 = vector.broadcast %c22329_i16 : i16 to vector<13x7xi16>
      scf.yield %276 : vector<13x7xi16>
    }
    case 2 {
      %extracted_57 = tensor.extract %10[%c0] : tensor<4xi16>
      %261 = index.maxu %c7, %c15
      %262 = index.floordivs %c4, %c7
      %263 = arith.maxui %false, %false : i1
      %264 = index.maxu %c8, %c0
      %265 = affine.if affine_set<(d0, d1) : ((((d1 + d0) floordiv 4) ceildiv 8) floordiv 16 == 0, (d1 + d0) * -64 >= 0, (d1 + d0) * 4 == 0)>(%c15, %c9) -> i64 {
        %277 = math.cttz %false : i1
        %rank_60 = tensor.rank %23 : tensor<i64>
        %278 = arith.addf %cst, %cst_8 : f16
        %true = index.bool.constant true
        %279 = arith.shrui %false_24, %false_24 : i1
        %280 = vector.matrix_multiply %30, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %rank_61 = tensor.rank %0 : tensor<4xf32>
        %281 = math.tanh %5 : tensor<5xf16>
        affine.yield %c1818536603_i64 : i64
      } else {
        %extracted_60 = tensor.extract %transposed[%c3, %c5] : tensor<4x7xi16>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_61 = arith.constant 0 : i64
        %277 = vector.transfer_read %9[%c6, %rank], %c0_i64_61 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<7x4xi64>, vector<5xi64>
        %278 = arith.cmpf olt, %cst_4, %cst_4 : f16
        %279 = bufferization.to_memref %3 : memref<4xi32>
        %280 = arith.floordivsi %extracted_60, %c22329_i16 : i16
        %281 = arith.maxui %c1377814532_i32, %c1377814532_i32 : i32
        %282 = arith.remf %cst_0, %cst_5 : f16
        %rank_62 = tensor.rank %5 : tensor<5xf16>
        affine.yield %c1193460924_i64 : i64
      }
      %266 = math.log1p %15 : tensor<13x7xf16>
      %267 = arith.maxui %false, %false_24 : i1
      %268 = arith.maxui %extracted_57, %c22329_i16 : i16
      %269 = arith.divf %cst_3, %cst_4 : f16
      %270 = arith.addf %cst_3, %cst_0 : f16
      %271 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %collapsed_58 = tensor.collapse_shape %9 [[0, 1]] : tensor<7x4xi64> into tensor<28xi64>
      %alloc_59 = memref.alloc() : memref<4x4xi64>
      %272 = tensor.empty() : tensor<7x4xi64>
      %273 = linalg.matmul ins(%9, %alloc_59 : tensor<7x4xi64>, memref<4x4xi64>) outs(%272 : tensor<7x4xi64>) -> tensor<7x4xi64>
      %274 = math.ctpop %c22329_i16 : i16
      %275 = arith.minui %false_24, %false_24 : i1
      %276 = vector.broadcast %c22329_i16 : i16 to vector<13x7xi16>
      scf.yield %276 : vector<13x7xi16>
    }
    case 3 {
      %261 = arith.divsi %c1818536603_i64, %c1431144665_i64 : i64
      memref.store %cst_6, %alloc_17[%c0] : memref<5xf32>
      %262 = math.fma %cst_0, %cst, %cst : f16
      %263 = arith.remsi %c1818536603_i64, %c1431144665_i64 : i64
      %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %cst_2 : vector<5xf32>, vector<5xf32> into f32
      %265 = vector.broadcast %false_24 : i1 to vector<5x7xi1>
      %266 = vector.broadcast %false_7 : i1 to vector<5xi1>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %265, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<5x7xi1>, vector<5xi1>
      %267 = arith.shrui %false_7, %false_7 : i1
      %268 = arith.muli %c22329_i16, %c22329_i16 : i16
      %269 = math.absf %0 : tensor<4xf32>
      %270 = arith.shrsi %c1431144665_i64, %c1818536603_i64 : i64
      %271 = arith.remsi %false, %false_24 : i1
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %272 = vector.transfer_read %11[%c15], %c0_i16 : tensor<4xi16>, vector<i16>
      %273 = arith.remsi %c1193460924_i64, %c1431144665_i64 : i64
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %30, %30, %cst_6 : vector<1xf32>, vector<1xf32> into f32
      %275 = arith.maxf %cst_4, %cst_8 : f16
      scf.index_switch %c14 
      case 1 {
        %cst_59 = arith.constant 6.214400e+04 : f16
        %277 = math.log1p %cst_5 : f16
        %inserted_60 = tensor.insert %cst_6 into %0[%c2] : tensor<4xf32>
        %278 = tensor.empty() : tensor<7x4xf16>
        %279 = vector.broadcast %cst_3 : f16 to vector<13x7xf16>
        %280 = vector.broadcast %false_24 : i1 to vector<13x7xi1>
        %281 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
        %282 = vector.gather %278[%rank, %c11] [%281], %280, %279 : tensor<7x4xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
        %alloca_61 = memref.alloca() : memref<5xi1>
        %283 = vector.extract_strided_slice %280 {offsets = [9], sizes = [4], strides = [1]} : vector<13x7xi1> to vector<4x7xi1>
        memref.tensor_store %14, %alloc_13 : memref<4xi64>
        memref.store %false, %alloc_19[%c4, %c2] : memref<7x4xi1>
        %284 = vector.broadcast %cst_2 : f32 to vector<13x7xf32>
        %285 = vector.fma %284, %284, %284 : vector<13x7xf32>
        %286 = vector.broadcast %cst_8 : f16 to vector<7xf16>
        %dest_62, %accumulated_value_63 = vector.scan <minf>, %282, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xf16>, vector<7xf16>
        %287 = vector.splat %c1193460924_i64 : vector<7x4xi64>
        %288 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %289 = arith.remsi %false_24, %false : i1
        bufferization.dealloc_tensor %13 : tensor<13x7xi64>
        %290 = arith.minui %c1377814532_i32, %c1377814532_i32 : i32
        %291 = arith.cmpf ugt, %cst_5, %cst_8 : f16
        scf.yield
      }
      default {
        %277 = vector.shuffle %30, %30 [1] : vector<1xf32>, vector<1xf32>
        %278 = vector.transpose %20, [0] : vector<5xf32> to vector<5xf32>
        %279 = arith.divui %false_7, %false_7 : i1
        %280 = index.maxu %c15, %c8
        %281 = index.ceildivu %c13, %c1
        %282 = memref.atomic_rmw maxu %c1_i16, %alloc_10[%c4, %c3] : (i16, memref<7x4xi16>) -> i16
        %283 = arith.negf %cst_0 : f16
        %284 = index.casts %c1431144665_i64 : i64 to index
        %285 = arith.shrsi %c22329_i16, %c1_i16 : i16
        %286 = arith.addi %false_24, %false_24 : i1
        %287 = vector.shuffle %30, %20 [0, 3, 4, 5] : vector<1xf32>, vector<5xf32>
        %288 = math.rsqrt %cst_1 : f32
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %30, %30, %cst_1 : vector<1xf32>, vector<1xf32> into f32
        %290 = math.log %cst : f16
        %291 = math.rsqrt %1 : tensor<4xf16>
        %292 = math.exp %1 : tensor<4xf16>
      }
      %276 = vector.broadcast %c1_i16 : i16 to vector<13x7xi16>
      scf.yield %276 : vector<13x7xi16>
    }
    default {
      %261 = affine.min affine_map<(d0, d1) -> (d0 + 32)>(%c12, %c13)
      %262 = scf.while (%arg2 = %alloc) : (memref<13x7xi16>) -> memref<13x7xi16> {
        %277 = arith.ceildivsi %c1377814532_i32, %c1377814532_i32 : i32
        %278 = arith.addf %cst_4, %cst_5 : f16
        %279 = arith.addi %c1431144665_i64, %c1818536603_i64 : i64
        %280 = bufferization.to_memref %12 : memref<13x7xi1>
        %281 = arith.maxui %c22329_i16, %c22329_i16 : i16
        %extracted_58 = tensor.extract %15[%c9, %c4] : tensor<13x7xf16>
        %282 = math.round %reduced : tensor<13xf16>
        %283 = vector.splat %c2 : vector<13x7xindex>
        scf.condition(%false) %arg2 : memref<13x7xi16>
      } do {
      ^bb0(%arg2: memref<13x7xi16>):
        %277 = index.mul %c8, %c9
        %278 = index.maxu %c4, %c14
        memref.tensor_store %14, %alloc_13 : memref<4xi64>
        %279 = vector.broadcast %false_7 : i1 to vector<7x4xi1>
        %280 = bufferization.to_memref %3 : memref<4xi32>
        %281 = math.absf %19 : tensor<13xf16>
        %282 = arith.remf %cst_6, %cst_2 : f32
        memref.store %c22329_i16, %alloc_12[%c2] : memref<4xi16>
        bufferization.dealloc_tensor %3 : tensor<4xi32>
        %283 = vector.load %alloc_9[%c4] : memref<5xi1>, vector<5xi1>
        %284 = arith.remf %cst_2, %cst_6 : f32
        %285 = arith.minui %c1818536603_i64, %c1818536603_i64 : i64
        %286 = vector.insertelement %cst_2, %30[%c14 : index] : vector<1xf32>
        %287 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %dest_58, %accumulated_value_59 = vector.scan <and>, %279, %287 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %288 = tensor.empty() : tensor<13x4xi64>
        %289 = linalg.matmul ins(%4, %9 : tensor<13x7xi64>, tensor<7x4xi64>) outs(%288 : tensor<13x4xi64>) -> tensor<13x4xi64>
        %false_60 = index.bool.constant false
        scf.yield %arg2 : memref<13x7xi16>
      }
      %263 = vector.extract %30[0] : vector<1xf32>
      %inserted_57 = tensor.insert %c1377814532_i32 into %3[%c0] : tensor<4xi32>
      %264 = math.cttz %false_24 : i1
      %265 = bufferization.to_memref %8 : memref<5xi16>
      %266 = arith.addf %cst, %cst_3 : f16
      %267 = scf.execute_region -> index {
        %from_elements_58 = tensor.from_elements %cst_2, %cst_1, %cst_6, %cst_1, %cst_2 : tensor<5xf32>
        affine.store %c22329_i16, %alloc_18[%c15] : memref<5xi16>
        %277 = math.cttz %false_24 : i1
        %278 = vector.transpose %20, [0] : vector<5xf32> to vector<5xf32>
        %279 = math.tanh %15 : tensor<13x7xf16>
        %280 = math.roundeven %cst_8 : f16
        %281 = arith.maxsi %c22329_i16, %c22329_i16 : i16
        %282 = math.ctpop %11 : tensor<4xi16>
        %283 = vector.broadcast %c22329_i16 : i16 to vector<13x7x5xi16>
        %284 = vector.broadcast %c22329_i16 : i16 to vector<13x7xi16>
        %dest_59, %accumulated_value_60 = vector.scan <or>, %283, %284 {inclusive = false, reduction_dim = 2 : i64} : vector<13x7x5xi16>, vector<13x7xi16>
        %285 = index.maxu %c2, %c6
        %286 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %287 = vector.insert %cst_1, %20 [4] : f32 into vector<5xf32>
        %288 = index.maxs %c6, %c14
        %289 = vector.broadcast %cst_1 : f32 to vector<f32>
        %290 = vector.transfer_write %289, %0[%288] : vector<f32>, tensor<4xf32>
        %291 = bufferization.to_memref %2 : memref<13x7xi32>
        %extracted_61 = tensor.extract %3[%c1] : tensor<4xi32>
        scf.yield %c0 : index
      }
      %268 = index.ceildivu %c3, %c13
      %269 = tensor.empty() : tensor<13x4xi64>
      %270 = linalg.matmul ins(%4, %9 : tensor<13x7xi64>, tensor<7x4xi64>) outs(%269 : tensor<13x4xi64>) -> tensor<13x4xi64>
      %271 = arith.cmpf oeq, %cst_1, %cst_6 : f32
      %272 = vector.flat_transpose %30 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %273 = arith.maxui %c22329_i16, %c22329_i16 : i16
      %274 = math.ipowi %12, %12 : tensor<13x7xi1>
      %275 = bufferization.to_memref %0 : memref<4xf32>
      vector.print %20 : vector<5xf32>
      %276 = vector.broadcast %c22329_i16 : i16 to vector<13x7xi16>
      scf.yield %276 : vector<13x7xi16>
    }
    memref.tensor_store %10, %alloc_12 : memref<4xi16>
    %43 = scf.index_switch %c13 -> index 
    case 1 {
      %261 = vector.flat_transpose %30 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %c1_i64 = arith.constant 1 : i64
      %262 = vector.transfer_read %14[%c14], %c1_i64 : tensor<4xi64>, vector<i64>
      %263 = index.mul %c8, %c10
      %264 = math.round %5 : tensor<5xf16>
      %265 = vector.broadcast %c1377814532_i32 : i32 to vector<i32>
      %266 = vector.transfer_write %265, %3[%c2] : vector<i32>, tensor<4xi32>
      %from_elements_57 = tensor.from_elements %c1377814532_i32, %c1377814532_i32, %c1377814532_i32, %c1377814532_i32 : tensor<4xi32>
      %267 = arith.addi %false, %false_7 : i1
      %268 = vector.broadcast %c22329_i16 : i16 to vector<i16>
      %269 = vector.transfer_write %268, %8[%c9] : vector<i16>, tensor<5xi16>
      %cst_58 = arith.constant 0x4CEC6711 : f32
      %alloc_59 = memref.alloc() : memref<7x4xf16>
      %270 = tensor.empty() : tensor<13x4xf16>
      %271 = linalg.matmul ins(%15, %alloc_59 : tensor<13x7xf16>, memref<7x4xf16>) outs(%270 : tensor<13x4xf16>) -> tensor<13x4xf16>
      %alloca_60 = memref.alloca() : memref<5xi1>
      %272 = math.ctpop %11 : tensor<4xi16>
      %extracted_61 = tensor.extract %6[%c0] : tensor<4xi1>
      %273 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %from_elements_62 = tensor.from_elements %cst_4, %cst_4, %cst, %cst_4 : tensor<4xf16>
      %274 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %275 = vector.broadcast %extracted_61 : i1 to vector<4xi1>
      %276 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
      %277 = vector.gather %alloc_17[%c6] [%276], %275, %274 : memref<5xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      scf.yield %c4 : index
    }
    case 2 {
      %261 = index.divs %c7, %c14
      %262 = arith.minsi %c1431144665_i64, %c1193460924_i64 : i64
      %263 = tensor.empty() : tensor<13x13x13xf32>
      %264 = tensor.empty() : tensor<13xf32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264, %264 : tensor<13xf32>, tensor<13xf32>) outs(%263 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_61: f32, %out: f32):
        %rank_62 = tensor.rank %3 : tensor<4xi32>
        %281 = math.rsqrt %15 : tensor<13x7xf16>
        %282 = vector.broadcast %false_24 : i1 to vector<4xi1>
        %alloca_63 = memref.alloca() : memref<4xf16>
        %283 = index.mul %c8, %c7
        %284 = arith.minui %c1431144665_i64, %c1818536603_i64 : i64
        %285 = vector.splat %cst_0 : vector<7x4xf16>
        %286 = index.ceildivu %c3, %261
        %287 = arith.minsi %false_7, %false_7 : i1
        %288 = math.round %cst_4 : f16
        %289 = arith.shli %c1193460924_i64, %c1193460924_i64 : i64
        %290 = arith.minsi %c1377814532_i32, %c1377814532_i32 : i32
        %291 = math.exp %15 : tensor<13x7xf16>
        %292 = math.log %cst_1 : f32
        %293 = vector.splat %c1377814532_i32 : vector<4xi32>
        %294 = index.castu %false_7 : i1 to index
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, -d3, d3 + 2)>(%c13, %c0, %286, %c15)
        %296 = arith.divsi %c1193460924_i64, %c1818536603_i64 : i64
        %297 = math.sqrt %15 : tensor<13x7xf16>
        %298 = arith.shrui %c1818536603_i64, %c1818536603_i64 : i64
        %299 = arith.shrui %false_24, %false_7 : i1
        %300 = vector.broadcast %c1431144665_i64 : i64 to vector<i64>
        %301 = vector.transfer_write %300, %4[%c3, %c12] : vector<i64>, tensor<13x7xi64>
        %302 = arith.minsi %false, %false : i1
        memref.store %c22329_i16, %alloc_10[%c6, %c2] : memref<7x4xi16>
        %303 = math.ceil %cst_8 : f16
        %304 = vector.broadcast %c22329_i16 : i16 to vector<13xi16>
        %305 = vector.broadcast %false_7 : i1 to vector<13xi1>
        %306 = vector.maskedload %alloc_10[%c2, %c3], %305, %304 : memref<7x4xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
        %307 = math.fma %reduced, %19, %19 : tensor<13xf16>
        %308 = arith.remf %out, %cst_6 : f32
        %cast_64 = tensor.cast %0 : tensor<4xf32> to tensor<?xf32>
        %309 = index.mul %c15, %c8
        %310 = math.absi %c22329_i16 : i16
        %311 = math.exp2 %7 : tensor<4xf32>
        linalg.yield %in : f32
      } -> tensor<13x13x13xf32>
      %266 = tensor.empty() : tensor<13x13x13xf32>
      %alloc_57 = memref.alloc() : memref<13x13xf32>
      %alloc_58 = memref.alloc() : memref<13xf32>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_58, %alloc_57 : memref<13x13xf32>, memref<13xf32>, memref<13x13xf32>) outs(%266 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_61: f32, %in_62: f32, %out: f32):
        %281 = vector.insert %out, %30 [0] : f32 into vector<1xf32>
        %282 = tensor.empty() : tensor<4xf16>
        %283 = math.roundeven %cst : f16
        %284 = arith.addf %cst_8, %cst_0 : f16
        %285 = math.round %5 : tensor<5xf16>
        %286 = index.floordivs %rank, %c6
        affine.store %c1193460924_i64, %alloc_13[%c13] : memref<4xi64>
        %cst_63 = arith.constant 1.000000e+00 : f16
        %cst_64 = arith.constant 0.000000e+00 : f16
        %287 = vector.transfer_read %19[%c0], %cst_64 : tensor<13xf16>, vector<f16>
        %288 = arith.remf %cst_3, %cst_3 : f16
        %289 = arith.minsi %c1193460924_i64, %c1431144665_i64 : i64
        %290 = vector.create_mask %c1, %rank : vector<7x4xi1>
        %291 = vector.splat %261 : vector<7x4xindex>
        %292 = vector.shuffle %30, %20 [1, 2, 3, 4, 5] : vector<1xf32>, vector<5xf32>
        %293 = arith.remf %cst_4, %cst_8 : f16
        %294 = vector.insert %cst_2, %20 [0] : f32 into vector<5xf32>
        %295 = arith.remf %cst_63, %cst_4 : f16
        %296 = index.divu %c15, %c6
        %297 = math.fma %19, %19, %reduced : tensor<13xf16>
        %rank_65 = tensor.rank %9 : tensor<7x4xi64>
        %298 = math.cos %cst_6 : f32
        %299 = arith.maxsi %c1431144665_i64, %c1818536603_i64 : i64
        %300 = arith.ori %c1193460924_i64, %c1193460924_i64 : i64
        %301 = math.log1p %0 : tensor<4xf32>
        %302 = math.ctpop %4 : tensor<13x7xi64>
        %303 = arith.divsi %c1193460924_i64, %c1818536603_i64 : i64
        %304 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %dest_66, %accumulated_value_67 = vector.scan <xor>, %290, %304 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %from_elements_68 = tensor.from_elements %c1193460924_i64, %c1818536603_i64, %c1431144665_i64, %c1431144665_i64, %c1818536603_i64 : tensor<5xi64>
        %305 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %306 = arith.addf %cst_2, %cst_6 : f32
        memref.tensor_store %10, %alloc_12 : memref<4xi16>
        %307 = index.casts %c1193460924_i64 : i64 to index
        %false_69 = index.bool.constant false
        linalg.yield %in : f32
      } -> tensor<13x13x13xf32>
      %268 = math.log10 %7 : tensor<4xf32>
      %269 = math.copysign %7, %0 : tensor<4xf32>
      %270 = arith.subi %c1818536603_i64, %c1431144665_i64 : i64
      %271 = math.atan %7 : tensor<4xf32>
      %272 = scf.index_switch %c2 -> f32 
      case 1 {
        %281 = index.sizeof
        %282 = arith.remf %cst, %cst_3 : f16
        %283 = arith.cmpf false, %cst_5, %cst_4 : f16
        %284 = arith.shrui %c1377814532_i32, %c1377814532_i32 : i32
        %alloc_61 = memref.alloc() : memref<7x5xi32>
        %285 = tensor.empty() : tensor<13x5xi32>
        %286 = linalg.matmul ins(%2, %alloc_61 : tensor<13x7xi32>, memref<7x5xi32>) outs(%285 : tensor<13x5xi32>) -> tensor<13x5xi32>
        %287 = math.fpowi %0, %3 : tensor<4xf32>, tensor<4xi32>
        %288 = arith.maxui %c1193460924_i64, %c1193460924_i64 : i64
        %289 = math.log %7 : tensor<4xf32>
        %290 = arith.remsi %c22329_i16, %c22329_i16 : i16
        %291 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %291, %alloc_15[%c13, %c9] : vector<f32>, memref<7x4xf32>
        %292 = math.absf %15 : tensor<13x7xf16>
        %293 = math.round %cst_0 : f16
        %294 = math.rsqrt %19 : tensor<13xf16>
        %295 = arith.divui %c22329_i16, %c22329_i16 : i16
        %296 = vector.broadcast %cst_0 : f16 to vector<7x4xf16>
        %297 = vector.splat %c1431144665_i64 : vector<5xi64>
        scf.yield %cst_1 : f32
      }
      case 2 {
        %281 = arith.maxui %false_24, %false_7 : i1
        %false_61 = index.bool.constant false
        %282 = arith.maxui %c1818536603_i64, %c1818536603_i64 : i64
        vector.print %20 : vector<5xf32>
        %283 = bufferization.to_memref %3 : memref<4xi32>
        %284 = math.floor %7 : tensor<4xf32>
        %285 = math.log2 %15 : tensor<13x7xf16>
        %alloc_62 = memref.alloc() : memref<13x7xi1>
        memref.tensor_store %12, %alloc_62 : memref<13x7xi1>
        %286 = arith.minui %c1377814532_i32, %c1377814532_i32 : i32
        %collapsed_63 = tensor.collapse_shape %12 [[0, 1]] : tensor<13x7xi1> into tensor<91xi1>
        %287 = index.maxu %c7, %rank
        %288 = math.absf %1 : tensor<4xf16>
        %289 = index.divs %c12, %c15
        %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<13x7xi64> into tensor<13x7x1xi64>
        %290 = vector.create_mask %287, %c5 : vector<13x7xi1>
        %291 = tensor.empty(%c8) : tensor<?xf32>
        scf.yield %cst_6 : f32
      }
      case 3 {
        %281 = arith.minui %false_7, %false_7 : i1
        %282 = arith.xori %false_24, %false : i1
        %283 = math.tanh %5 : tensor<5xf16>
        %284 = arith.divui %c22329_i16, %c22329_i16 : i16
        %285 = vector.broadcast %c2 : index to vector<4xindex>
        %286 = vector.broadcast %false_24 : i1 to vector<4xi1>
        %287 = vector.broadcast %c1818536603_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_13[%c1] [%285], %286, %287 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        affine.store %c22329_i16, %alloc_10[%c12, %c15] : memref<7x4xi16>
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 8)>(%c14, %c4, %c2, %c4)
        %289 = arith.divsi %false_7, %false_24 : i1
        %290 = vector.broadcast %c1818536603_i64 : i64 to vector<4xi64>
        %291 = vector.broadcast %false : i1 to vector<4xi1>
        %292 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
        %293 = vector.gather %14[%c9] [%292], %291, %290 : tensor<4xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %294 = index.ceildivu %c3, %c10
        %295 = index.floordivs %294, %c8
        %296 = arith.minui %c1377814532_i32, %c1377814532_i32 : i32
        affine.store %cst_4, %alloc_14[%c4] : memref<4xf16>
        %297 = arith.maxui %c1431144665_i64, %c1818536603_i64 : i64
        affine.store %c22329_i16, %alloc_12[%c10] : memref<4xi16>
        %298 = bufferization.to_tensor %alloc : memref<13x7xi16>
        scf.yield %cst_6 : f32
      }
      case 4 {
        %281 = vector.create_mask %c4, %c13 : vector<7x4xi1>
        %collapsed_61 = tensor.collapse_shape %4 [[0, 1]] : tensor<13x7xi64> into tensor<91xi64>
        %282 = arith.negf %cst_4 : f16
        %283 = math.absi %14 : tensor<4xi64>
        %284 = math.atan %1 : tensor<4xf16>
        %285 = math.floor %cst_0 : f16
        %286 = arith.cmpf ugt, %cst_3, %cst_4 : f16
        %287 = arith.minsi %c22329_i16, %c22329_i16 : i16
        %288 = math.ctpop %14 : tensor<4xi64>
        %289 = vector.matrix_multiply %30, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %290 = vector.shuffle %20, %289 [1, 2, 3, 5] : vector<5xf32>, vector<1xf32>
        %291 = bufferization.clone %alloc_16 : memref<13x7xf32> to memref<13x7xf32>
        %292 = math.fma %cst_2, %cst_1, %cst_2 : f32
        %293 = arith.maxui %c1431144665_i64, %c1193460924_i64 : i64
        %294 = vector.broadcast %c1377814532_i32 : i32 to vector<i32>
        %295 = vector.transfer_write %294, %3[%c10] : vector<i32>, tensor<4xi32>
        %296 = math.atan %5 : tensor<5xf16>
        scf.yield %cst_6 : f32
      }
      default {
        %281 = vector.broadcast %cst_4 : f16 to vector<13x7xf16>
        %282 = vector.broadcast %false_24 : i1 to vector<13x7xi1>
        %283 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
        %284 = vector.gather %1[%c10] [%283], %282, %281 : tensor<4xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
        %285 = math.fma %cst_8, %cst_0, %cst_0 : f16
        %286 = vector.insertelement %cst_2, %30[%c7 : index] : vector<1xf32>
        %287 = arith.ceildivsi %false_24, %false_24 : i1
        %288 = arith.minsi %c1818536603_i64, %c1431144665_i64 : i64
        %289 = arith.maxf %cst_2, %cst_1 : f32
        %c1326614191_i32 = arith.constant 1326614191 : i32
        %290 = arith.addf %cst_2, %cst_2 : f32
        %291 = arith.remf %cst_2, %cst_6 : f32
        %292 = math.ceil %reduced : tensor<13xf16>
        %293 = arith.addf %cst_0, %cst_0 : f16
        %294 = arith.minui %false, %false : i1
        %295 = arith.xori %c22329_i16, %c22329_i16 : i16
        %296 = index.ceildivs %c15, %c7
        %297 = arith.cmpi sge, %c1431144665_i64, %c1193460924_i64 : i64
        %298 = vector.insertelement %cst_2, %20[%c11 : index] : vector<5xf32>
        scf.yield %cst_6 : f32
      }
      %273 = math.expm1 %cst_6 : f32
      %274 = math.cttz %false : i1
      %275 = math.tanh %cst_2 : f32
      %276 = vector.broadcast %false : i1 to vector<5x5xi1>
      %277 = vector.broadcast %false : i1 to vector<5xi1>
      %dest_59, %accumulated_value_60 = vector.scan <minui>, %276, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5xi1>, vector<5xi1>
      %278 = arith.negf %cst_0 : f16
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst_6 : vector<5xf32>, vector<5xf32> into f32
      %280 = arith.floordivsi %c1431144665_i64, %c1193460924_i64 : i64
      scf.yield %c4 : index
    }
    case 3 {
      %261 = arith.addi %c1818536603_i64, %c1431144665_i64 : i64
      %262 = arith.maxui %c1818536603_i64, %c1193460924_i64 : i64
      %263 = arith.cmpf une, %cst_5, %cst_3 : f16
      %264 = arith.minui %false_7, %false : i1
      %265 = math.absf %cst_6 : f32
      %alloc_57 = memref.alloc() : memref<7x5xi16>
      %266 = tensor.empty() : tensor<4x5xi16>
      %267 = linalg.matmul ins(%transposed, %alloc_57 : tensor<4x7xi16>, memref<7x5xi16>) outs(%266 : tensor<4x5xi16>) -> tensor<4x5xi16>
      %268 = arith.minsi %c1431144665_i64, %c1193460924_i64 : i64
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + 2 == 0, 64 == 0, d2 floordiv 128 >= 0)>(%c0, %c7, %c1, %c5) -> i16 {
        %274 = tensor.empty() : tensor<5xf16>
        %275 = arith.minsi %c1431144665_i64, %c1818536603_i64 : i64
        %collapsed_59 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x7xf16> into tensor<91xf16>
        %276 = math.rsqrt %5 : tensor<5xf16>
        %277 = math.fma %cst_0, %cst_3, %cst_5 : f16
        %278 = math.log1p %7 : tensor<4xf32>
        %279 = vector.matrix_multiply %20, %30 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
        %280 = vector.extract_strided_slice %30 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        affine.yield %c22329_i16 : i16
      } else {
        %274 = vector.broadcast %false_7 : i1 to vector<4x13xi1>
        %275 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %dest_59, %accumulated_value_60 = vector.scan <minui>, %274, %275 {inclusive = true, reduction_dim = 1 : i64} : vector<4x13xi1>, vector<4xi1>
        %276 = arith.xori %c1377814532_i32, %c1377814532_i32 : i32
        %277 = math.floor %1 : tensor<4xf16>
        %278 = arith.remsi %false, %false_24 : i1
        %279 = index.maxs %c12, %c14
        %280 = arith.maxui %c1431144665_i64, %c1431144665_i64 : i64
        %281 = math.log10 %5 : tensor<5xf16>
        %282 = arith.cmpf false, %cst_6, %cst_1 : f32
        affine.yield %c22329_i16 : i16
      }
      %270 = arith.addi %false_7, %false_7 : i1
      %271 = arith.addf %cst_6, %cst_2 : f32
      scf.if %false_24 {
        %274 = math.fpowi %cst_6, %c1377814532_i32 : f32, i32
        %275 = arith.maxui %c22329_i16, %c22329_i16 : i16
        %276 = arith.maxsi %false_7, %false_7 : i1
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d1 ceildiv 8, 0, d3 ceildiv 4 - d0)>(%c9, %c1, %c2, %c9)
        %278 = index.ceildivu %c3, %c11
        %279 = math.fpowi %cst, %c1377814532_i32 : f16, i32
        %280 = vector.broadcast %cst_4 : f16 to vector<4x5xf16>
        %281 = vector.broadcast %cst_0 : f16 to vector<5xf16>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %280, %281 {inclusive = true, reduction_dim = 0 : i64} : vector<4x5xf16>, vector<5xf16>
        %282 = arith.cmpf ult, %cst_4, %cst : f16
      }
      scf.execute_region {
        %274 = arith.addf %cst, %cst_8 : f16
        %cast_59 = tensor.cast %8 : tensor<5xi16> to tensor<?xi16>
        %275 = index.divs %c9, %c0
        %276 = index.maxu %c7, %c11
        %277 = vector.matrix_multiply %20, %30 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
        %278 = math.log10 %5 : tensor<5xf16>
        %279 = math.log1p %cst_1 : f32
        %280 = index.ceildivu %c9, %c13
        %alloc_60 = memref.alloc() : memref<13x7xf32>
        %281 = vector.broadcast %cst_8 : f16 to vector<f16>
        %282 = vector.transfer_write %281, %1[%c0] : vector<f16>, tensor<4xf16>
        %283 = vector.create_mask %c2, %c9 : vector<13x7xi1>
        %284 = arith.addf %cst_4, %cst : f16
        %285 = math.fpowi %1, %3 : tensor<4xf16>, tensor<4xi32>
        %286 = math.ipowi %23, %22 : tensor<i64>
        %collapsed_61 = tensor.collapse_shape %transposed [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
        %287 = vector.splat %c1431144665_i64 : vector<4xi64>
        scf.yield
      }
      %272 = bufferization.to_tensor %alloc_16 : memref<13x7xf32>
      %alloc_58 = memref.alloc() : memref<4xi32>
      %273 = arith.maxf %cst_8, %cst_0 : f16
      vector.print %30 : vector<1xf32>
      scf.yield %c3 : index
    }
    case 4 {
      %261 = math.round %5 : tensor<5xf16>
      %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 8)>(%c5, %c10, %c3, %c12)
      %263 = vector.create_mask %c5, %c14 : vector<7x4xi1>
      %264 = vector.broadcast %cst_8 : f16 to vector<5xf16>
      %true = index.bool.constant true
      %265 = vector.broadcast %cst_5 : f16 to vector<4xf16>
      %266 = index.mul %c12, %c10
      %cast_57 = tensor.cast %22 : tensor<i64> to tensor<i64>
      %267 = arith.cmpi ule, %true, %false : i1
      %268 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d1 ceildiv 128)>(%c9, %c5, %c13, %c13)
      %269 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 31)>(%262, %c13, %c10)
      %270 = index.maxu %c4, %c3
      %271 = vector.flat_transpose %30 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %272 = vector.broadcast %cst_0 : f16 to vector<7x4xf16>
      %273 = math.ipowi %false_7, %true : i1
      %274 = bufferization.clone %alloc_19 : memref<7x4xi1> to memref<7x4xi1>
      scf.yield %c4 : index
    }
    default {
      %261 = vector.matrix_multiply %20, %30 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
      %collapsed_57 = tensor.collapse_shape %17 [[0, 1]] : tensor<13x7xi32> into tensor<91xi32>
      %extracted_58 = tensor.extract %13[%c8, %c3] : tensor<13x7xi64>
      %262 = vector.broadcast %c1818536603_i64 : i64 to vector<5xi64>
      %263 = math.log1p %cst_5 : f16
      %264 = vector.load %alloc_22[%c2] : memref<4xf16>, vector<7x4xf16>
      %265 = arith.divsi %false, %false_7 : i1
      %266 = arith.ceildivsi %c1818536603_i64, %c1193460924_i64 : i64
      %267 = arith.shli %false, %false : i1
      %268 = memref.realloc %alloc_9 : memref<5xi1> to memref<5xi1>
      %269 = math.absf %cst_1 : f32
      %270 = arith.mulf %cst_3, %cst_4 : f16
      %271 = index.ceildivu %c11, %c10
      %272 = vector.broadcast %c1377814532_i32 : i32 to vector<i32>
      vector.transfer_write %272, %alloc_20[%c3] : vector<i32>, memref<5xi32>
      %273 = vector.splat %rank : vector<13x7xindex>
      %274 = arith.ori %c1431144665_i64, %c1431144665_i64 : i64
      scf.yield %c7 : index
    }
    %44 = math.log %cst_6 : f32
    %45 = vector.insertelement %cst_6, %20[%c9 : index] : vector<5xf32>
    %46 = arith.shrui %c22329_i16, %c22329_i16 : i16
    %47 = math.round %cst_0 : f16
    %48 = index.divu %rank, %c8
    %49 = vector.broadcast %c15 : index to vector<5xindex>
    %50 = vector.broadcast %false : i1 to vector<5xi1>
    %51 = vector.broadcast %c1377814532_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_11[%c3] [%49], %50, %51 : memref<5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %52 = vector.broadcast %c1818536603_i64 : i64 to vector<7x4xi64>
    %53 = vector.insertelement %cst_2, %20[%c12 : index] : vector<5xf32>
    %54 = math.atan2 %15, %15 : tensor<13x7xf16>
    %55 = math.absf %reduced : tensor<13xf16>
    %56 = index.casts %c1193460924_i64 : i64 to index
    %57 = index.ceildivu %c1, %c1
    memref.alloca_scope  {
      %261 = math.fpowi %7, %3 : tensor<4xf32>, tensor<4xi32>
      affine.store %false_24, %alloc_19[%c5, %c1] : memref<7x4xi1>
      %262 = math.log1p %cst_4 : f16
      %263 = arith.floordivsi %false, %false_24 : i1
      %264 = arith.shrui %false, %false : i1
      %265 = arith.maxsi %false_24, %false_24 : i1
      %266 = vector.reduction <maxf>, %30 : vector<1xf32> into f32
      %267 = arith.mulf %cst_5, %cst_3 : f16
      %268 = arith.ori %c1193460924_i64, %c1193460924_i64 : i64
      %269 = arith.mulf %cst, %cst_3 : f16
      %270 = math.absf %cst_2 : f32
      %271 = vector.broadcast %c1818536603_i64 : i64 to vector<4xi64>
      %dest_57, %accumulated_value_58 = vector.scan <add>, %52, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
      %inserted_59 = tensor.insert %cst into %5[%c4] : tensor<5xf16>
      %272 = arith.minsi %c1818536603_i64, %c1818536603_i64 : i64
      %collapsed_60 = tensor.collapse_shape %17 [[0, 1]] : tensor<13x7xi32> into tensor<91xi32>
      %273 = index.maxs %c1, %c3
      %274 = tensor.empty() : tensor<13x13x13xf32>
      %275 = tensor.empty() : tensor<13xf32>
      %276 = tensor.empty() : tensor<13x13xf32>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %276 : tensor<13xf32>, tensor<13x13xf32>) outs(%274 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_62: f32, %out: f32):
        %296 = vector.broadcast %c1193460924_i64 : i64 to vector<4x4xi64>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %52, %52, %296 : vector<7x4xi64>, vector<7x4xi64> into vector<4x4xi64>
        %298 = arith.shli %false, %false_24 : i1
        %cast_63 = tensor.cast %3 : tensor<4xi32> to tensor<?xi32>
        %299 = tensor.empty() : tensor<7x13xf16>
        %300 = tensor.empty() : tensor<13x13xf16>
        %301 = linalg.matmul ins(%15, %299 : tensor<13x7xf16>, tensor<7x13xf16>) outs(%300 : tensor<13x13xf16>) -> tensor<13x13xf16>
        %302 = arith.maxui %false_24, %false : i1
        %303 = bufferization.to_memref %6 : memref<4xi1>
        %304 = math.exp %in_62 : f32
        %305 = arith.remsi %false, %false_7 : i1
        %306 = arith.negf %cst_6 : f32
        %307 = vector.broadcast %c1377814532_i32 : i32 to vector<5xi32>
        %308 = vector.broadcast %false_7 : i1 to vector<5xi1>
        %309 = vector.gather %alloc_20[%c7] [%307], %308, %307 : memref<5xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %310 = arith.divsi %false_24, %false_24 : i1
        %311 = vector.broadcast %c1377814532_i32 : i32 to vector<5x5xi32>
        %312 = vector.outerproduct %309, %307, %311 {kind = #vector.kind<xor>} : vector<5xi32>, vector<5xi32>
        %313 = index.mul %c12, %c2
        %rank_64 = tensor.rank %2 : tensor<13x7xi32>
        %314 = math.ceil %cst_2 : f32
        %315 = arith.divui %c1431144665_i64, %c1193460924_i64 : i64
        %316 = vector.matrix_multiply %20, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %317 = vector.matrix_multiply %316, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %318 = arith.maxui %false_24, %false : i1
        %319 = index.ceildivu %c15, %c7
        %320 = index.mul %rank, %c7
        %321 = arith.maxf %cst_5, %cst_0 : f16
        %322 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %323 = arith.shli %c1377814532_i32, %c1377814532_i32 : i32
        %324 = math.exp %1 : tensor<4xf16>
        %325 = math.round %cst_8 : f16
        %326 = arith.cmpf true, %cst_2, %in : f32
        %327 = math.ipowi %14, %14 : tensor<4xi64>
        %328 = index.ceildivu %48, %rank
        %329 = math.ctpop %9 : tensor<7x4xi64>
        %330 = math.round %15 : tensor<13x7xf16>
        %331 = math.fpowi %cst_8, %c1377814532_i32 : f16, i32
        linalg.yield %out : f32
      } -> tensor<13x13x13xf32>
      %278 = arith.addf %cst_0, %cst : f16
      %279 = arith.maxf %cst_6, %cst_1 : f32
      %rank_61 = tensor.rank %7 : tensor<4xf32>
      %280 = arith.remf %cst_3, %cst : f16
      %281 = math.absf %7 : tensor<4xf32>
      %282 = math.ctpop %12 : tensor<13x7xi1>
      %283 = index.add %c2, %c14
      %284 = vector.broadcast %c1431144665_i64 : i64 to vector<5xi64>
      %285 = vector.transfer_write %284, %9[%rank_61, %57] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi64>, tensor<7x4xi64>
      %286 = arith.remsi %c1193460924_i64, %c1818536603_i64 : i64
      %287 = tensor.empty() : tensor<7x4xi16>
      %288 = vector.broadcast %c22329_i16 : i16 to vector<5xi16>
      %289 = vector.broadcast %false_7 : i1 to vector<5xi1>
      %290 = vector.broadcast %c1377814532_i32 : i32 to vector<5xi32>
      %291 = vector.gather %287[%c6, %48] [%290], %289, %288 : tensor<7x4xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %292 = vector.shuffle %30, %30 [0, 1] : vector<1xf32>, vector<1xf32>
      bufferization.dealloc_tensor %5 : tensor<5xf16>
      %293 = math.rsqrt %0 : tensor<4xf32>
      %294 = math.log1p %7 : tensor<4xf32>
      %295 = arith.remsi %false_24, %false : i1
    }
    %58 = affine.min affine_map<(d0, d1, d2) -> (d2, 0, (d0 floordiv 64 - d1 - 2) mod 16)>(%57, %c13, %c10)
    %59 = math.log10 %cst_0 : f16
    %60 = vector.transpose %52, [0, 1] : vector<7x4xi64> to vector<7x4xi64>
    %61 = vector.create_mask %c1, %56 : vector<7x4xi1>
    %62 = vector.splat %56 : vector<4xindex>
    %63 = arith.shrui %false_7, %false_7 : i1
    %64 = vector.load %alloc_14[%c1] : memref<4xf16>, vector<4xf16>
    affine.store %cst_2, %alloc_17[%c10] : memref<5xf32>
    %65 = affine.min affine_map<(d0, d1) -> (d1, (d1 + 1) mod 8)>(%c13, %c6)
    %66 = affine.load %alloc_19[%c13, %c10] : memref<7x4xi1>
    %67 = vector.shuffle %61, %61 [0, 1, 2, 4, 5, 7, 8, 10, 11, 12] : vector<7x4xi1>, vector<7x4xi1>
    %68 = math.log10 %5 : tensor<5xf16>
    %69 = math.ctpop %false_7 : i1
    memref.alloca_scope  {
      %261 = math.atan2 %cst_2, %cst_6 : f32
      %262 = math.rsqrt %1 : tensor<4xf16>
      %263 = math.log2 %5 : tensor<5xf16>
      %264 = math.ctlz %c1818536603_i64 : i64
      %265 = arith.shrsi %false, %false_24 : i1
      %266 = vector.transpose %20, [0] : vector<5xf32> to vector<5xf32>
      %267 = vector.flat_transpose %30 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      memref.store %cst_2, %alloc_15[%c4, %c1] : memref<7x4xf32>
      memref.alloca_scope  {
        %292 = math.sqrt %15 : tensor<13x7xf16>
        %293 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
        %dest_62, %accumulated_value_63 = vector.scan <minsi>, %52, %293 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
        affine.store %c22329_i16, %alloc_10[%c9, %c6] : memref<7x4xi16>
        %294 = arith.floordivsi %false, %false_24 : i1
        %295 = index.maxu %c6, %48
        %296 = arith.minui %c22329_i16, %c22329_i16 : i16
        %297 = arith.minui %false_24, %false_24 : i1
        affine.store %c22329_i16, %alloc[%c2, %c1] : memref<13x7xi16>
        %298 = math.fma %reduced, %reduced, %reduced : tensor<13xf16>
        %299 = math.log1p %5 : tensor<5xf16>
        %300 = affine.apply affine_map<(d0) -> (-16)>(%58)
        %301 = arith.maxf %cst_1, %cst_6 : f32
        %302 = math.ctpop %10 : tensor<4xi16>
        %splat_64 = tensor.splat %66 : tensor<5xi1>
        %303 = math.cttz %23 : tensor<i64>
        %304 = arith.divsi %false_7, %false : i1
        %305 = tensor.empty() : tensor<4xi16>
        %306 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
        %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %61, %61, %306 : vector<7x4xi1>, vector<7x4xi1> into vector<4x4xi1>
        %308 = math.ctpop %4 : tensor<13x7xi64>
        %c489137160_i64 = arith.constant 489137160 : i64
        %extracted_65 = tensor.extract %14[%c3] : tensor<4xi64>
        %309 = math.fma %5, %5, %5 : tensor<5xf16>
        %310 = index.mul %c1, %c1
        %311 = math.log1p %0 : tensor<4xf32>
        %312 = index.ceildivu %57, %c15
        bufferization.dealloc_tensor %9 : tensor<7x4xi64>
        %313 = vector.shuffle %52, %52 [0, 2, 3, 5, 7, 9] : vector<7x4xi64>, vector<7x4xi64>
        %314 = arith.minsi %c1431144665_i64, %c1193460924_i64 : i64
        %315 = arith.divui %c1377814532_i32, %c1377814532_i32 : i32
        %316 = vector.insertelement %cst_1, %20[%58 : index] : vector<5xf32>
        %317 = math.log1p %5 : tensor<5xf16>
        %318 = vector.insert %cst_2, %30 [0] : f32 into vector<1xf32>
      }
      %268 = arith.minsi %c1431144665_i64, %c1431144665_i64 : i64
      %269 = arith.minsi %c1377814532_i32, %c1377814532_i32 : i32
      memref.alloca_scope  {
        %292 = arith.shrui %c1377814532_i32, %c1377814532_i32 : i32
        %293 = vector.broadcast %66 : i1 to vector<4xi1>
        %dest_62, %accumulated_value_63 = vector.scan <minui>, %61, %293 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %294 = math.atan %reduced : tensor<13xf16>
        %295 = math.ctpop %c1818536603_i64 : i64
        %alloca_64 = memref.alloca() : memref<13x7xi32>
        %296 = math.atan %1 : tensor<4xf16>
        %297 = math.round %7 : tensor<4xf32>
        %alloca_65 = memref.alloca() : memref<4xi1>
        %298 = math.log %cst_0 : f16
        %rank_66 = tensor.rank %16 : tensor<13x7xi32>
        %from_elements_67 = tensor.from_elements %cst_0, %cst_8, %cst_3, %cst_3, %cst, %cst_0, %cst_8, %cst_3, %cst_0, %cst, %cst_5, %cst_4, %cst_8, %cst_5, %cst, %cst_0, %cst_5, %cst_8, %cst, %cst_0, %cst_4, %cst_3, %cst_4, %cst_5, %cst_4, %cst, %cst_8, %cst_5 : tensor<7x4xf16>
        %299 = vector.load %alloc[%c9, %c5] : memref<13x7xi16>, vector<4xi16>
        %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %300 = math.sqrt %cst_2 : f32
        %301 = arith.maxsi %false_24, %false : i1
        affine.store %false, %alloc_9[%c0] : memref<5xi1>
        %true = arith.constant true
        %302 = math.copysign %1, %1 : tensor<4xf16>
        %alloc_68 = memref.alloc() : memref<13x7xi64>
        %303 = vector.broadcast %c1377814532_i32 : i32 to vector<7x4xi32>
        %304 = vector.gather %alloc_68[%c14, %c1] [%303], %61, %52 : memref<13x7xi64>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi64> into vector<7x4xi64>
        %305 = vector.broadcast %false_24 : i1 to vector<13x7xi1>
        %alloc_69 = memref.alloc() : memref<4xf16>
        %306 = vector.insertelement %cst_2, %20[%c12 : index] : vector<5xf32>
        %307 = index.ceildivs %c0, %57
        %308 = arith.ori %c22329_i16, %c22329_i16 : i16
        %309 = index.maxu %c14, %56
        %310 = arith.divf %cst_4, %cst : f16
        %311 = arith.remf %cst_6, %cst_1 : f32
        %extracted_70 = tensor.extract %4[%c3, %c3] : tensor<13x7xi64>
        %312 = index.mul %rank, %c13
        %313 = vector.broadcast %cst : f16 to vector<f16>
        %314 = vector.transfer_write %313, %5[%c4] : vector<f16>, tensor<5xf16>
        %315 = vector.extract %267[0] : vector<1xf32>
        %316 = math.round %cst_2 : f32
      }
      %270 = math.cttz %9 : tensor<7x4xi64>
      %271 = vector.broadcast %c1818536603_i64 : i64 to vector<7xi64>
      %dest_57, %accumulated_value_58 = vector.scan <minsi>, %52, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
      %272 = vector.splat %cst_4 : vector<4xf16>
      %273 = arith.minsi %c1193460924_i64, %c1818536603_i64 : i64
      %274 = math.log1p %cst : f16
      %generated = tensor.generate %c12, %56 {
      ^bb0(%arg2: index, %arg3: index):
        %292 = vector.extract_strided_slice %20 {offsets = [2], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
        %293 = vector.splat %c10 : vector<7x4xindex>
        %294 = arith.minsi %66, %66 : i1
        %295 = math.ctpop %6 : tensor<4xi1>
        tensor.yield %c22329_i16 : i16
      } : tensor<?x?xi16>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 16) * 2, -d3, 0)>(%48, %c7, %c8, %c13)
      %276 = vector.multi_reduction <minsi>, %52, %52 [] : vector<7x4xi64> to vector<7x4xi64>
      %277 = arith.addi %66, %66 : i1
      %alloc_59 = memref.alloc() : memref<7x4xi16>
      %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %64, %64, %cst : vector<4xf16>, vector<4xf16> into f16
      %279 = memref.alloca_scope  -> (f16) {
        %292 = arith.negf %cst_8 : f16
        %293 = vector.shuffle %61, %61 [0, 1, 2, 3, 6, 7, 11, 13] : vector<7x4xi1>, vector<7x4xi1>
        %294 = vector.create_mask %c10, %275 : vector<13x7xi1>
        %295 = math.cttz %22 : tensor<i64>
        %296 = index.divs %c7, %c4
        %297 = vector.splat %false_24 : vector<13x7xi1>
        %298 = vector.extract_strided_slice %294 {offsets = [8], sizes = [5], strides = [1]} : vector<13x7xi1> to vector<5x7xi1>
        %299 = math.ipowi %13, %4 : tensor<13x7xi64>
        %300 = index.casts %c8 : index to i32
        %301 = math.log1p %15 : tensor<13x7xf16>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %267, %267, %cst_1 : vector<1xf32>, vector<1xf32> into f32
        %303 = math.cttz %3 : tensor<4xi32>
        %304 = vector.insert %cst_2, %30 [0] : f32 into vector<1xf32>
        %305 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 2)>(%48, %c9, %rank)
        %306 = vector.broadcast %65 : index to vector<4xindex>
        %307 = vector.broadcast %66 : i1 to vector<4xi1>
        vector.scatter %alloc_9[%c3] [%306], %307, %307 : memref<5xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %308 = math.cttz %4 : tensor<13x7xi64>
        %alloc_62 = memref.alloc() : memref<4x5xi64>
        %309 = tensor.empty() : tensor<7x5xi64>
        %310 = linalg.matmul ins(%9, %alloc_62 : tensor<7x4xi64>, memref<4x5xi64>) outs(%309 : tensor<7x5xi64>) -> tensor<7x5xi64>
        bufferization.dealloc_tensor %11 : tensor<4xi16>
        %311 = arith.divsi %false_24, %false : i1
        %alloc_63 = memref.alloc() : memref<7x13xf16>
        %312 = tensor.empty() : tensor<13x13xf16>
        %313 = linalg.matmul ins(%15, %alloc_63 : tensor<13x7xf16>, memref<7x13xf16>) outs(%312 : tensor<13x13xf16>) -> tensor<13x13xf16>
        %314 = vector.multi_reduction <add>, %30, %267 [] : vector<1xf32> to vector<1xf32>
        %315 = vector.flat_transpose %64 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        %316 = arith.divsi %c1377814532_i32, %c1377814532_i32 : i32
        %317 = arith.remf %cst, %cst_5 : f16
        %alloc_64 = memref.alloc() : memref<4xf32>
        memref.tensor_store %7, %alloc_64 : memref<4xf32>
        %318 = index.mul %c11, %296
        %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %319 = vector.extract_strided_slice %298 {offsets = [3], sizes = [2], strides = [1]} : vector<5x7xi1> to vector<2x7xi1>
        %320 = vector.insertelement %cst_0, %64[%57 : index] : vector<4xf16>
        %321 = math.log1p %19 : tensor<13xf16>
        %322 = math.fma %cst_1, %cst_2, %cst_6 : f32
        %323 = arith.ori %false_24, %false_7 : i1
        memref.alloca_scope.return %cst_0 : f16
      }
      %280 = index.mul %c13, %c15
      %281 = arith.ori %false_24, %66 : i1
      %282 = vector.broadcast %c1818536603_i64 : i64 to vector<7xi64>
      %283 = vector.broadcast %66 : i1 to vector<7xi1>
      %284 = vector.maskedload %alloc_13[%c1], %283, %282 : memref<4xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %285 = vector.broadcast %cst_6 : f32 to vector<5xf32>
      %286 = arith.shrui %c1818536603_i64, %c1431144665_i64 : i64
      %287 = vector.broadcast %c1818536603_i64 : i64 to vector<5xi64>
      %288 = vector.transfer_write %287, %13[%c2, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi64>, tensor<13x7xi64>
      %289 = tensor.empty() : tensor<13x13x13xf32>
      %alloc_60 = memref.alloc() : memref<13x13xf32>
      %alloc_61 = memref.alloc() : memref<13xf32>
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_60, %alloc_61 : memref<13x13xf32>, memref<13xf32>) outs(%289 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_62: f32, %out: f32):
        %292 = math.log1p %1 : tensor<4xf16>
        %293 = arith.negf %cst_3 : f16
        %294 = math.atan %in : f32
        %295 = arith.divsi %66, %false_7 : i1
        %296 = arith.ceildivsi %false, %false_24 : i1
        bufferization.dealloc_tensor %19 : tensor<13xf16>
        %297 = index.maxs %rank, %c12
        %298 = math.ctlz %3 : tensor<4xi32>
        %299 = index.ceildivu %c5, %c11
        %300 = math.round %15 : tensor<13x7xf16>
        %301 = vector.multi_reduction <minf>, %267, %cst_6 [0] : vector<1xf32> to f32
        %302 = math.exp %279 : f16
        %extracted_63 = tensor.extract %13[%c0, %c5] : tensor<13x7xi64>
        %303 = math.round %1 : tensor<4xf16>
        %304 = vector.load %alloc_9[%c3] : memref<5xi1>, vector<5xi1>
        affine.store %c22329_i16, %alloc_12[%c2] : memref<4xi16>
        %305 = arith.divui %66, %false_7 : i1
        %306 = index.divu %c3, %rank
        %rank_64 = tensor.rank %reduced : tensor<13xf16>
        %cast_65 = tensor.cast %17 : tensor<13x7xi32> to tensor<?x?xi32>
        %307 = index.floordivs %280, %c14
        memref.tensor_store %14, %alloc_13 : memref<4xi64>
        %308 = index.maxu %rank, %c1
        %309 = math.ctpop %13 : tensor<13x7xi64>
        memref.tensor_store %9, %alloc_21 : memref<7x4xi64>
        %310 = math.absf %cst_2 : f32
        %311 = vector.broadcast %65 : index to vector<4xindex>
        %312 = vector.broadcast %false_24 : i1 to vector<4xi1>
        %313 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        vector.scatter %alloc_17[%c3] [%311], %312, %313 : memref<5xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %314 = bufferization.to_memref %11 : memref<4xi16>
        %315 = arith.remsi %c1377814532_i32, %c1377814532_i32 : i32
        %316 = index.ceildivu %rank_64, %297
        %317 = arith.andi %false, %false : i1
        %true = index.bool.constant true
        linalg.yield %out : f32
      } -> tensor<13x13x13xf32>
      %291 = math.ipowi %3, %3 : tensor<4xi32>
    }
    %70 = tensor.empty() : tensor<13xi32>
    %71 = math.fpowi %reduced, %70 : tensor<13xf16>, tensor<13xi32>
    %72 = math.copysign %cst_5, %cst : f16
    %73 = math.cttz %14 : tensor<4xi64>
    %74 = arith.minui %c1818536603_i64, %c1818536603_i64 : i64
    %false_26 = index.bool.constant false
    %75 = vector.splat %c1193460924_i64 : vector<5xi64>
    %76 = index.ceildivs %c9, %c4
    %77 = math.ipowi %6, %6 : tensor<4xi1>
    %78 = arith.divui %false_26, %false : i1
    %splat = tensor.splat %false_7 : tensor<4xi1>
    %79 = vector.bitcast %64 : vector<4xf16> to vector<4xf16>
    %80 = arith.divui %false_26, %false : i1
    %81 = math.log1p %5 : tensor<5xf16>
    %82 = vector.shuffle %64, %64 [1, 4] : vector<4xf16>, vector<4xf16>
    %83 = index.divs %c2, %rank
    %84 = vector.broadcast %false_24 : i1 to vector<7xi1>
    %dest_27, %accumulated_value_28 = vector.scan <minsi>, %61, %84 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi1>, vector<7xi1>
    %85 = arith.mulf %cst_0, %cst_8 : f16
    %false_29 = arith.constant false
    memref.tensor_store %8, %alloc_18 : memref<5xi16>
    %86 = tensor.empty() : tensor<4xf16>
    %87 = vector.broadcast %cst_4 : f16 to vector<7x4xf16>
    %rank_30 = tensor.rank %86 : tensor<4xf16>
    %88 = arith.divui %false, %false_26 : i1
    %89 = vector.broadcast %76 : index to vector<4xindex>
    %90 = vector.broadcast %false_24 : i1 to vector<4xi1>
    %91 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
    vector.scatter %alloc_13[%c0] [%89], %90, %91 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %92 = arith.negf %cst_0 : f16
    %93 = index.mul %c13, %c4
    %94 = vector.extract %64[2] : vector<4xf16>
    %95 = math.tanh %19 : tensor<13xf16>
    %96 = arith.maxui %false_26, %false_26 : i1
    %97 = memref.realloc %alloc_12 : memref<4xi16> to memref<13xi16>
    %98 = vector.broadcast %c22329_i16 : i16 to vector<i16>
    %99 = vector.transfer_write %98, %8[%rank_30] : vector<i16>, tensor<5xi16>
    %100 = vector.matrix_multiply %20, %30 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
    %101 = math.cos %cst : f16
    %102 = arith.shrsi %c1193460924_i64, %c1193460924_i64 : i64
    scf.index_switch %c11 
    case 1 {
      %alloca_57 = memref.alloca() : memref<4xi64>
      %261 = math.log10 %15 : tensor<13x7xf16>
      %262 = math.round %5 : tensor<5xf16>
      %263 = vector.broadcast %c22329_i16 : i16 to vector<7xi16>
      %264 = vector.broadcast %false_24 : i1 to vector<7xi1>
      %265 = vector.maskedload %alloc_10[%c6, %c2], %264, %263 : memref<7x4xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %266 = arith.negf %cst_8 : f16
      %267 = bufferization.to_memref %21 : memref<4xi64>
      %268 = math.tanh %7 : tensor<4xf32>
      %269 = index.ceildivs %c13, %c13
      memref.alloca_scope  {
        memref.store %c22329_i16, %alloc[%c10, %c0] : memref<13x7xi16>
        %277 = arith.divui %c1377814532_i32, %c1377814532_i32 : i32
        %278 = tensor.empty() : tensor<13x4xi64>
        %279 = linalg.matmul ins(%4, %9 : tensor<13x7xi64>, tensor<7x4xi64>) outs(%278 : tensor<13x4xi64>) -> tensor<13x4xi64>
        %280 = vector.broadcast %cst_2 : f32 to vector<5x5xf32>
        %281 = vector.outerproduct %20, %20, %280 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
        %282 = memref.load %alloc_18[%c2] : memref<5xi16>
        %283 = arith.maxui %false_24, %false_26 : i1
        %284 = index.divs %57, %c0
        %285 = math.round %reduced : tensor<13xf16>
        %286 = index.floordivs %c8, %93
        %287 = tensor.empty() : tensor<4x5xi64>
        %288 = tensor.empty() : tensor<13x5xi64>
        %289 = linalg.matmul ins(%278, %287 : tensor<13x4xi64>, tensor<4x5xi64>) outs(%288 : tensor<13x5xi64>) -> tensor<13x5xi64>
        %290 = arith.maxui %false_24, %false_7 : i1
        %291 = vector.broadcast %cst : f16 to vector<13x7xf16>
        %292 = arith.maxf %cst_5, %cst : f16
        %293 = arith.shli %c1431144665_i64, %c1818536603_i64 : i64
        %rank_58 = tensor.rank %70 : tensor<13xi32>
        %294 = vector.broadcast %cst_4 : f16 to vector<7x7xf16>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %291, %291, %294 : vector<13x7xf16>, vector<13x7xf16> into vector<7x7xf16>
        %296 = index.casts %rank_30 : index to i32
        %297 = arith.shrsi %false, %false_26 : i1
        %298 = bufferization.to_memref %5 : memref<5xf16>
        %299 = vector.broadcast %cst_0 : f16 to vector<7xf16>
        %300 = vector.maskedload %alloc_14[%c3], %264, %299 : memref<4xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %301 = index.casts %false_26 : i1 to index
        memref.tensor_store %8, %alloc_18 : memref<5xi16>
        %302 = index.divs %c8, %284
        %303 = arith.remsi %false_7, %false_26 : i1
        memref.store %c1431144665_i64, %alloc_21[%c4, %c3] : memref<7x4xi64>
        %304 = math.atan %15 : tensor<13x7xf16>
        %inserted_59 = tensor.insert %cst_8 into %reduced[%c2] : tensor<13xf16>
        %305 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
        %306 = vector.outerproduct %30, %30, %305 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %307 = arith.maxui %c22329_i16, %c22329_i16 : i16
        %308 = arith.maxui %false_24, %false_24 : i1
        %309 = math.roundeven %0 : tensor<4xf32>
        %310 = math.rsqrt %cst_4 : f16
      }
      %270 = vector.splat %c8 : vector<13x7xindex>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (-(d2 mod 32) == 0, d2 == 0)>(%c5, %c11, %c6, %c15) -> memref<4xi64> {
        %collapsed_58 = tensor.collapse_shape %18 [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
        %277 = arith.ori %false_7, %false_7 : i1
        %from_elements_59 = tensor.from_elements %c1431144665_i64, %c1431144665_i64, %c1818536603_i64, %c1431144665_i64, %c1818536603_i64 : tensor<5xi64>
        %278 = index.casts %c5 : index to i32
        %279 = memref.load %alloc_23[%c1, %c1] : memref<7x4xf32>
        %280 = arith.remf %cst_6, %cst_6 : f32
        %281 = math.powf %7, %0 : tensor<4xf32>
        %282 = bufferization.to_memref %12 : memref<13x7xi1>
        affine.yield %alloc_13 : memref<4xi64>
      } else {
        %277 = math.cos %cst_5 : f16
        %extracted_58 = tensor.extract %3[%c1] : tensor<4xi32>
        %278 = index.casts %c1818536603_i64 : i64 to index
        %279 = math.rsqrt %cst_4 : f16
        %280 = vector.broadcast %c1818536603_i64 : i64 to vector<4xi64>
        %281 = vector.insertelement %c22329_i16, %98[] : vector<i16>
        %282 = index.ceildivs %57, %c3
        %283 = math.round %1 : tensor<4xf16>
        affine.yield %alloc_13 : memref<4xi64>
      }
      %272 = math.ctlz %c1431144665_i64 : i64
      %273 = arith.shrsi %c1193460924_i64, %c1431144665_i64 : i64
      %274 = affine.if affine_set<(d0) : ((d0 - 1) * 64 >= 0, d0 == 0, (d0 mod 64) * 8 == 0)>(%c4) -> i1 {
        %277 = arith.ori %66, %false_24 : i1
        %278 = tensor.empty() : tensor<7x7xi32>
        %279 = tensor.empty() : tensor<13x7xi32>
        %280 = linalg.matmul ins(%2, %278 : tensor<13x7xi32>, tensor<7x7xi32>) outs(%279 : tensor<13x7xi32>) -> tensor<13x7xi32>
        %281 = vector.multi_reduction <minf>, %79, %79 [] : vector<4xf16> to vector<4xf16>
        %282 = math.roundeven %reduced : tensor<13xf16>
        %283 = arith.maxf %cst_8, %cst_8 : f16
        %cast_58 = tensor.cast %splat : tensor<4xi1> to tensor<?xi1>
        %284 = vector.broadcast %rank : index to vector<4xindex>
        %285 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %286 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_18[%c0] [%284], %285, %286 : memref<5xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %87, %64 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xf16>, vector<4xf16>
        affine.yield %false_7 : i1
      } else {
        %277 = arith.remf %cst_8, %cst_4 : f16
        %278 = index.maxs %rank, %c4
        %279 = math.fpowi %cst_4, %c1377814532_i32 : f16, i32
        %alloc_58 = memref.alloc() : memref<13x7xi32>
        %280 = arith.cmpf ueq, %cst_8, %cst_3 : f16
        %281 = index.divu %65, %65
        %rank_59 = tensor.rank %10 : tensor<4xi16>
        %282 = vector.broadcast %66 : i1 to vector<4x4xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %61, %61, %282 : vector<7x4xi1>, vector<7x4xi1> into vector<4x4xi1>
        affine.yield %false_7 : i1
      }
      %275 = arith.remf %cst, %cst_8 : f16
      %276 = arith.subi %false_7, %false_7 : i1
      scf.yield
    }
    case 2 {
      %261 = math.ctpop %16 : tensor<13x7xi32>
      %262 = math.fma %0, %7, %0 : tensor<4xf32>
      %263 = vector.load %alloc_11[%c2] : memref<5xi32>, vector<5xi32>
      %alloc_57 = memref.alloc() : memref<13x7xf16>
      memref.tensor_store %15, %alloc_57 : memref<13x7xf16>
      %264 = bufferization.clone %alloc_20 : memref<5xi32> to memref<5xi32>
      %265 = math.atan %5 : tensor<5xf16>
      %266 = scf.while (%arg2 = %c1818536603_i64) : (i64) -> i64 {
        %278 = arith.ori %c1431144665_i64, %c1818536603_i64 : i64
        %279 = math.cttz %false_26 : i1
        %280 = affine.min affine_map<(d0, d1, d2) -> (d0, d1 + 1)>(%c8, %c7, %76)
        memref.store %c1377814532_i32, %264[%c3] : memref<5xi32>
        %281 = arith.cmpf oeq, %cst_4, %cst_0 : f16
        %282 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %61, %61, %282 : vector<7x4xi1>, vector<7x4xi1> into vector<4x4xi1>
        %c2041071689_i32 = arith.constant 2041071689 : i32
        affine.store %cst_2, %alloc_23[%c13, %c8] : memref<7x4xf32>
        scf.condition(%false_7) %c1818536603_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %278 = arith.addf %cst_0, %cst_4 : f16
        %279 = vector.broadcast %58 : index to vector<13xindex>
        %280 = vector.broadcast %false_24 : i1 to vector<13xi1>
        %281 = vector.broadcast %c1818536603_i64 : i64 to vector<13xi64>
        vector.scatter %alloc_13[%c0] [%279], %280, %281 : memref<4xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %282 = arith.remf %cst_8, %cst : f16
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 16 - 32)>(%c6, %c15, %c8, %56)
        %284 = arith.cmpf ogt, %cst, %cst_5 : f16
        affine.store %cst_2, %alloc_17[%c15] : memref<5xf32>
        %285 = math.round %7 : tensor<4xf32>
        %true = index.bool.constant true
        %from_elements_59 = tensor.from_elements %cst_3, %cst_3, %cst_0, %cst : tensor<4xf16>
        %286 = arith.maxui %c1193460924_i64, %c1818536603_i64 : i64
        %287 = arith.addf %cst, %cst_4 : f16
        %288 = arith.subi %c1818536603_i64, %arg2 : i64
        %alloca_60 = memref.alloca() : memref<13x7xi1>
        %289 = tensor.empty(%c11) : tensor<?xf32>
        %290 = index.floordivs %c12, %83
        %291 = index.casts %283 : index to i32
        scf.yield %arg2 : i64
      }
      %267 = arith.minui %c22329_i16, %c22329_i16 : i16
      %268 = math.ipowi %13, %13 : tensor<13x7xi64>
      %alloc_58 = memref.alloc() : memref<5xi1>
      %269 = vector.broadcast %c22329_i16 : i16 to vector<7x4xi16>
      %270 = vector.broadcast %c1377814532_i32 : i32 to vector<7x4xi32>
      %271 = vector.gather %8[%c13] [%270], %61, %269 : tensor<5xi16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi16> into vector<7x4xi16>
      %272 = arith.divf %cst, %cst_0 : f16
      %273 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %274 = arith.xori %false_24, %false : i1
      %275 = vector.broadcast %c22329_i16 : i16 to vector<7xi16>
      %276 = vector.multi_reduction <xor>, %269, %275 [1] : vector<7x4xi16> to vector<7xi16>
      %277 = affine.for %arg2 = 0 to 103 iter_args(%arg3 = %66) -> (i1) {
        affine.yield %false_26 : i1
      }
      scf.yield
    }
    default {
      %261 = arith.addf %cst_1, %cst_2 : f32
      %262 = math.fpowi %cst_3, %c1377814532_i32 : f16, i32
      %inserted_57 = tensor.insert %c22329_i16 into %10[%c1] : tensor<4xi16>
      %263 = math.rsqrt %cst_8 : f16
      %264 = memref.load %alloc_13[%c1] : memref<4xi64>
      %265 = math.rsqrt %5 : tensor<5xf16>
      %extracted_58 = tensor.extract %3[%c1] : tensor<4xi32>
      %266 = vector.broadcast %57 : index to vector<5xindex>
      %267 = vector.broadcast %false_24 : i1 to vector<5xi1>
      %268 = vector.broadcast %c22329_i16 : i16 to vector<5xi16>
      vector.scatter %alloc_18[%c2] [%266], %267, %268 : memref<5xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %269 = index.mul %rank_30, %c1
      %alloc_59 = memref.alloc() : memref<4xi1>
      %rank_60 = tensor.rank %6 : tensor<4xi1>
      %270 = arith.maxui %c1431144665_i64, %c1431144665_i64 : i64
      %271 = math.round %7 : tensor<4xf32>
      %272 = math.ipowi %c1377814532_i32, %c1377814532_i32 : i32
      %273 = vector.broadcast %extracted_58 : i32 to vector<4xi32>
      %274 = vector.broadcast %false : i1 to vector<4xi1>
      %275 = vector.maskedload %alloc_20[%c4], %274, %273 : memref<5xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %276 = arith.divf %cst_2, %cst_1 : f32
    }
    %103 = math.log1p %5 : tensor<5xf16>
    %104 = vector.extract %30[0] : vector<1xf32>
    %105 = vector.shuffle %87, %87 [0, 3, 4, 6, 11, 13] : vector<7x4xf16>, vector<7x4xf16>
    %106 = vector.broadcast %cst_4 : f16 to vector<4xf16>
    %from_elements = tensor.from_elements %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16 : tensor<7x4xi16>
    %107 = vector.bitcast %100 : vector<5xf32> to vector<5xf32>
    %108 = arith.ori %false_26, %66 : i1
    %109 = tensor.empty() : tensor<5xi16>
    %mapped = linalg.map ins(%8, %8, %8 : tensor<5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%109 : tensor<5xi16>)
      (%in: i16, %in_57: i16, %in_58: i16) {
        %261 = arith.cmpf uno, %cst_5, %cst_3 : f16
        %262 = affine.min affine_map<(d0, d1) -> (-((d1 * 16) ceildiv 128 - 16), -((d1 * 16) ceildiv 128 - 16))>(%c9, %rank)
        %263 = math.roundeven %cst_3 : f16
        %264 = scf.index_switch %c4 -> vector<13x7xi16> 
        case 1 {
          %285 = vector.extract %52[3] : vector<7x4xi64>
          %286 = math.atan %cst_3 : f16
          %287 = arith.minui %false, %false_26 : i1
          %288 = arith.remsi %c1431144665_i64, %c1818536603_i64 : i64
          %289 = vector.insertelement %cst_3, %64[%c2 : index] : vector<4xf16>
          %rank_63 = tensor.rank %3 : tensor<4xi32>
          memref.store %c1377814532_i32, %alloc_11[%c0] : memref<5xi32>
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %64, %64, %cst_0 : vector<4xf16>, vector<4xf16> into f16
          %291 = tensor.empty() : tensor<4x13xi64>
          %292 = tensor.empty() : tensor<7x13xi64>
          %293 = linalg.matmul ins(%9, %291 : tensor<7x4xi64>, tensor<4x13xi64>) outs(%292 : tensor<7x13xi64>) -> tensor<7x13xi64>
          %294 = math.ipowi %from_elements, %from_elements : tensor<7x4xi16>
          affine.store %cst_6, %alloc_23[%c13, %c4] : memref<7x4xf32>
          %295 = math.fma %cst, %cst_3, %cst_0 : f16
          %296 = vector.broadcast %cst : f16 to vector<7x4xf16>
          %297 = arith.maxsi %false_24, %false : i1
          %298 = vector.bitcast %106 : vector<4xf16> to vector<4xi16>
          %299 = index.maxu %c15, %c9
          %300 = vector.broadcast %in_57 : i16 to vector<13x7xi16>
          scf.yield %300 : vector<13x7xi16>
        }
        case 2 {
          %285 = index.floordivs %c6, %93
          %286 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
          %287 = vector.outerproduct %79, %106, %286 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
          %288 = vector.insertelement %cst_6, %107[%56 : index] : vector<5xf32>
          %289 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
          %290 = vector.outerproduct %100, %100, %289 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
          %291 = arith.minui %c1818536603_i64, %c1818536603_i64 : i64
          %292 = vector.broadcast %c1193460924_i64 : i64 to vector<4xi64>
          %293 = math.cttz %3 : tensor<4xi32>
          %294 = arith.maxf %cst_6, %cst_2 : f32
          %295 = math.round %15 : tensor<13x7xf16>
          %296 = math.fma %cst, %cst_5, %cst : f16
          %297 = arith.maxui %66, %false_7 : i1
          %298 = index.floordivs %c0, %c15
          %299 = math.cttz %in_57 : i16
          vector.print %87 : vector<7x4xf16>
          %300 = arith.mulf %cst_1, %cst_6 : f32
          %301 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
          %302 = vector.broadcast %in_57 : i16 to vector<13x7xi16>
          scf.yield %302 : vector<13x7xi16>
        }
        case 3 {
          %285 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 64)>(%c8, %c15)
          %alloc_63 = memref.alloc() : memref<4xi32>
          memref.tensor_store %3, %alloc_63 : memref<4xi32>
          %286 = index.ceildivu %c14, %93
          %rank_64 = tensor.rank %1 : tensor<4xf16>
          %287 = index.maxs %57, %c15
          %288 = index.maxu %285, %c13
          %289 = arith.addi %false_26, %false_26 : i1
          %290 = arith.cmpi ugt, %false, %false_26 : i1
          %291 = index.ceildivu %c6, %c11
          %292 = math.ctpop %109 : tensor<5xi16>
          %293 = arith.addi %66, %66 : i1
          %294 = math.fma %5, %5, %5 : tensor<5xf16>
          %295 = vector.broadcast %cst : f16 to vector<7x4xf16>
          %296 = arith.mulf %cst_5, %cst_8 : f16
          %297 = vector.extract %30[0] : vector<1xf32>
          %298 = arith.maxf %cst_0, %cst_8 : f16
          %299 = vector.broadcast %in : i16 to vector<13x7xi16>
          scf.yield %299 : vector<13x7xi16>
        }
        default {
          %285 = vector.broadcast %c1431144665_i64 : i64 to vector<7xi64>
          %dest_63, %accumulated_value_64 = vector.scan <mul>, %52, %285 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
          %286 = math.rsqrt %cst_8 : f16
          %287 = bufferization.clone %alloc_11 : memref<5xi32> to memref<5xi32>
          %288 = vector.shuffle %61, %61 [0, 1, 2, 7, 13] : vector<7x4xi1>, vector<7x4xi1>
          %289 = index.ceildivu %c12, %c15
          %290 = arith.minui %false_7, %false_24 : i1
          memref.assume_alignment %alloc_18, 16 : memref<5xi16>
          %291 = math.log1p %5 : tensor<5xf16>
          %292 = index.mul %58, %c15
          %293 = arith.maxui %false, %66 : i1
          %294 = arith.maxsi %c1818536603_i64, %c1818536603_i64 : i64
          affine.store %in_58, %alloc[%c12, %c12] : memref<13x7xi16>
          %295 = arith.maxui %in, %c22329_i16 : i16
          %296 = tensor.empty() : tensor<7x4xi1>
          %297 = vector.broadcast %false_26 : i1 to vector<13x7xi1>
          %298 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
          %299 = vector.gather %296[%rank, %58] [%298], %297, %297 : tensor<7x4xi1>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xi1> into vector<13x7xi1>
          %300 = math.log1p %19 : tensor<13xf16>
          memref.store %cst_5, %alloc_22[%c3] : memref<4xf16>
          %301 = vector.broadcast %in : i16 to vector<13x7xi16>
          scf.yield %301 : vector<13x7xi16>
        }
        %265 = math.round %cst : f16
        %extracted_59 = tensor.extract %15[%c2, %c4] : tensor<13x7xf16>
        %266 = vector.insertelement %cst_6, %107[%c12 : index] : vector<5xf32>
        %true = index.bool.constant true
        %267 = math.absi %c22329_i16 : i16
        affine.store %cst_6, %alloc_17[%c15] : memref<5xf32>
        %268 = vector.matrix_multiply %100, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %269 = math.round %cst_0 : f16
        %270 = index.sizeof
        %271 = math.ctpop %23 : tensor<i64>
        %alloc_60 = memref.alloc() : memref<5xi64>
        %272 = math.ipowi %in_57, %in : i16
        %273 = arith.addi %c1431144665_i64, %c1431144665_i64 : i64
        %274 = index.divu %93, %c7
        affine.store %c1377814532_i32, %alloc_11[%c13] : memref<5xi32>
        %275 = math.copysign %15, %15 : tensor<13x7xf16>
        %276 = math.log10 %cst_8 : f16
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 4)>(%65, %c3, %58, %83)
        %278 = math.log1p %cst_8 : f16
        affine.for %arg2 = 0 to 11 {
        }
        %279 = math.fpowi %15, %16 : tensor<13x7xf16>, tensor<13x7xi32>
        %extracted_61 = tensor.extract %3[%c1] : tensor<4xi32>
        %280 = vector.matrix_multiply %30, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xf32>, vector<5xf32>) -> vector<5xf32>
        %281 = math.cttz %22 : tensor<i64>
        %282 = arith.remf %cst_0, %cst_5 : f16
        %283 = arith.addi %false, %false_26 : i1
        %alloc_62 = memref.alloc() : memref<5xf16>
        memref.tensor_store %5, %alloc_62 : memref<5xf16>
        %284 = arith.shrui %extracted_61, %c1377814532_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %110 = arith.maxui %c1377814532_i32, %c1377814532_i32 : i32
    %111 = index.ceildivu %76, %65
    %112 = index.floordivs %c15, %111
    %113 = arith.divsi %c1377814532_i32, %c1377814532_i32 : i32
    %extracted = tensor.extract %reduced[%c3] : tensor<13xf16>
    %114 = arith.cmpi sle, %false_7, %66 : i1
    %115 = arith.maxsi %c1431144665_i64, %c1818536603_i64 : i64
    %116 = math.tanh %1 : tensor<4xf16>
    %117 = index.castu %false : i1 to index
    %118 = tensor.empty(%c9) : tensor<7x?xi32>
    memref.alloca_scope  {
      %261 = arith.negf %extracted : f16
      %262 = arith.remsi %66, %false_7 : i1
      %263 = arith.addf %cst_0, %cst_4 : f16
      %rank_57 = tensor.rank %70 : tensor<13xi32>
      %264 = math.absf %19 : tensor<13xf16>
      %265 = affine.max affine_map<(d0, d1) -> (d0 - d0 ceildiv 128 + d1 + 32, d0 mod 4)>(%48, %58)
      %266 = vector.bitcast %52 : vector<7x4xi64> to vector<7x4xi64>
      %267 = bufferization.to_tensor %alloc : memref<13x7xi16>
      %268 = arith.remsi %false_26, %false : i1
      %269 = arith.floordivsi %false_7, %false_7 : i1
      %270 = tensor.empty() : tensor<13x13x13xf32>
      %271 = tensor.empty() : tensor<13xf32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %271 : tensor<13x13x13xf32>, tensor<13xf32>) outs(%270 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_65: f32, %out: f32):
        %288 = vector.bitcast %20 : vector<5xf32> to vector<5xf32>
        %extracted_66 = tensor.extract %10[%c2] : tensor<4xi16>
        %289 = vector.broadcast %c22329_i16 : i16 to vector<i16>
        %290 = vector.transfer_write %289, %8[%48] : vector<i16>, tensor<5xi16>
        %291 = affine.min affine_map<(d0) -> (-16, (-d0) mod 128 - d0 * 2, (d0 * 2 - 2) mod 64)>(%57)
        %292 = vector.broadcast %cst_6 : f32 to vector<5xf32>
        %293 = vector.fma %292, %100, %20 : vector<5xf32>
        %294 = vector.flat_transpose %288 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %295 = index.ceildivu %48, %58
        %296 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 64) floordiv 64 - (d1 + 128))>(%c7, %265)
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %100, %100, %in_65 : vector<5xf32>, vector<5xf32> into f32
        %298 = vector.extract_strided_slice %292 {offsets = [1], sizes = [3], strides = [1]} : vector<5xf32> to vector<3xf32>
        %299 = math.fpowi %cst_6, %c1377814532_i32 : f32, i32
        %300 = vector.matrix_multiply %292, %292 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %301 = math.cttz %13 : tensor<13x7xi64>
        %from_elements_67 = tensor.from_elements %c1818536603_i64, %c1818536603_i64, %c1818536603_i64, %c1818536603_i64, %c1193460924_i64, %c1431144665_i64, %c1193460924_i64, %c1818536603_i64, %c1431144665_i64, %c1431144665_i64, %c1818536603_i64, %c1193460924_i64, %c1193460924_i64, %c1431144665_i64, %c1193460924_i64, %c1431144665_i64, %c1193460924_i64, %c1193460924_i64, %c1431144665_i64, %c1193460924_i64, %c1431144665_i64, %c1193460924_i64, %c1431144665_i64, %c1431144665_i64, %c1193460924_i64, %c1193460924_i64, %c1193460924_i64, %c1193460924_i64 : tensor<7x4xi64>
        %302 = math.expm1 %cst_5 : f16
        %extracted_68 = tensor.extract %transposed[%c3, %c5] : tensor<4x7xi16>
        %303 = arith.mulf %in, %cst_2 : f32
        %304 = arith.floordivsi %extracted_68, %extracted_66 : i16
        %305 = vector.insertelement %extracted_68, %289[] : vector<i16>
        %306 = index.casts %111 : index to i32
        %307 = index.ceildivu %112, %c2
        %308 = vector.insertelement %cst_3, %106[%307 : index] : vector<4xf16>
        %309 = math.ipowi %11, %10 : tensor<4xi16>
        %310 = arith.ceildivsi %extracted_68, %extracted_68 : i16
        %311 = bufferization.to_tensor %alloc_10 : memref<7x4xi16>
        %312 = affine.min affine_map<(d0, d1) -> (0)>(%296, %111)
        %313 = arith.remf %cst_4, %cst_8 : f16
        %collapsed_69 = tensor.collapse_shape %4 [[0, 1]] : tensor<13x7xi64> into tensor<91xi64>
        %314 = math.log2 %cst_3 : f16
        %315 = bufferization.to_memref %13 : memref<13x7xi64>
        %316 = vector.broadcast %c1193460924_i64 : i64 to vector<4xi64>
        %dest_70, %accumulated_value_71 = vector.scan <minui>, %52, %316 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
        %317 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %318 = vector.insert %317, %61 [2] : vector<4xi1> into vector<7x4xi1>
        linalg.yield %in : f32
      } -> tensor<13x13x13xf32>
      %273 = arith.shli %false_7, %false_26 : i1
      %274 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
      %dest_58, %accumulated_value_59 = vector.scan <maxui>, %266, %274 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
      affine.store %cst_3, %alloc_22[%c7] : memref<4xf16>
      affine.for %arg2 = 0 to 5 {
      }
      affine.for %arg2 = 0 to 54 {
      }
      %275 = arith.divsi %false_24, %false : i1
      %276 = index.mul %c7, %c10
      %inserted_60 = tensor.insert %cst_5 into %15[%c2, %c1] : tensor<13x7xf16>
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d3 - d2))>(%c10, %57, %c12, %c10)
      %278 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
      %279 = vector.outerproduct %100, %100, %278 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
      %280 = arith.divsi %c1818536603_i64, %c1431144665_i64 : i64
      %281 = arith.cmpf uno, %cst_1, %cst_1 : f32
      %282 = math.fpowi %cst_0, %c1377814532_i32 : f16, i32
      %283 = arith.divui %c22329_i16, %c22329_i16 : i16
      %alloc_61 = memref.alloc() : memref<4x7xi16>
      memref.tensor_store %18, %alloc_61 : memref<4x7xi16>
      %284 = scf.execute_region -> memref<5xi16> {
        %288 = arith.divui %c1377814532_i32, %c1377814532_i32 : i32
        %289 = index.maxu %58, %c5
        %290 = index.floordivs %276, %c8
        %alloc_65 = memref.alloc() : memref<5xi32>
        %291 = index.divs %c11, %65
        %292 = math.round %1 : tensor<4xf16>
        %293 = index.ceildivu %c10, %265
        %294 = vector.insertelement %cst_6, %30[%56 : index] : vector<1xf32>
        %295 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 4 - (d1 - d0) - d1 * 2)>(%c2, %c13)
        %296 = arith.ceildivsi %c1818536603_i64, %c1431144665_i64 : i64
        %297 = index.floordivs %65, %111
        %298 = vector.bitcast %20 : vector<5xf32> to vector<5xf32>
        %299 = arith.maxf %extracted, %cst_8 : f16
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %298, %20, %cst_2 : vector<5xf32>, vector<5xf32> into f32
        %301 = vector.extract %266[1] : vector<7x4xi64>
        %302 = math.ctpop %14 : tensor<4xi64>
        scf.yield %alloc_18 : memref<5xi16>
      }
      %cst_62 = arith.constant 1.000000e+00 : f32
      %cst_63 = arith.constant 0.000000e+00 : f32
      %285 = vector.transfer_read %0[%c14], %cst_63 : tensor<4xf32>, vector<f32>
      %286 = vector.extract_strided_slice %87 {offsets = [5], sizes = [2], strides = [1]} : vector<7x4xf16> to vector<2x4xf16>
      %287 = math.fma %cst_62, %cst_1, %cst_6 : f32
      %false_64 = index.bool.constant false
      memref.store %false_7, %alloc_9[%c2] : memref<5xi1>
    }
    affine.for %arg2 = 0 to 47 {
    }
    %119 = arith.minsi %c1431144665_i64, %c1193460924_i64 : i64
    %120 = arith.cmpf ole, %cst_2, %cst_2 : f32
    %121 = math.round %7 : tensor<4xf32>
    %122 = vector.broadcast %cst_8 : f16 to vector<7xf16>
    %dest_31, %accumulated_value_32 = vector.scan <maxf>, %87, %122 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xf16>, vector<7xf16>
    %123 = vector.broadcast %c1431144665_i64 : i64 to vector<7xi64>
    %dest_33, %accumulated_value_34 = vector.scan <maxsi>, %52, %123 {inclusive = true, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
    %124 = scf.execute_region -> vector<7x4xf32> {
      %261 = arith.xori %false_26, %false : i1
      %262 = tensor.empty() : tensor<7x5xi32>
      %263 = tensor.empty() : tensor<13x5xi32>
      %264 = linalg.matmul ins(%17, %262 : tensor<13x7xi32>, tensor<7x5xi32>) outs(%263 : tensor<13x5xi32>) -> tensor<13x5xi32>
      %265 = affine.min affine_map<(d0, d1) -> ((-d1) mod 32, d0 mod 32 + d0)>(%c13, %65)
      %266 = math.cttz %3 : tensor<4xi32>
      %267 = index.divs %c14, %56
      %268 = index.castu %c1377814532_i32 : i32 to index
      %269 = index.sizeof
      %270 = vector.insertelement %cst_3, %106[%269 : index] : vector<4xf16>
      %271 = math.atan %cst_3 : f16
      %272 = vector.broadcast %c1431144665_i64 : i64 to vector<4x4xi64>
      %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %52, %52, %272 : vector<7x4xi64>, vector<7x4xi64> into vector<4x4xi64>
      %274 = math.atan %cst_2 : f32
      %275 = index.floordivs %c8, %c11
      %276 = arith.maxui %c1818536603_i64, %c1193460924_i64 : i64
      %277 = math.ctpop %16 : tensor<13x7xi32>
      %278 = arith.divui %false_7, %false_26 : i1
      %279 = arith.remf %cst_8, %cst_5 : f16
      %280 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
      scf.yield %280 : vector<7x4xf32>
    }
    scf.execute_region {
      %261 = arith.remf %extracted, %cst_4 : f16
      %262 = arith.divsi %false_24, %false_26 : i1
      %263 = index.maxu %rank_30, %117
      %264 = arith.minsi %false_7, %66 : i1
      %265 = math.powf %86, %86 : tensor<4xf16>
      %266 = math.fma %cst_5, %cst_5, %extracted : f16
      affine.for %arg2 = 0 to 108 {
      }
      %267 = arith.divui %false, %false_24 : i1
      %268 = vector.extract %61[4] : vector<7x4xi1>
      %269 = math.log2 %86 : tensor<4xf16>
      %270 = vector.extract %61[4] : vector<7x4xi1>
      %271 = arith.addf %cst_3, %cst : f16
      %272 = arith.cmpf ord, %cst_6, %cst_6 : f32
      %273 = vector.load %alloc_9[%c3] : memref<5xi1>, vector<7x4xi1>
      %274 = math.log10 %cst_3 : f16
      %275 = arith.remf %cst_5, %extracted : f16
      scf.yield
    }
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<13x7xi64> into tensor<91xi64>
    %cast = tensor.cast %14 : tensor<4xi64> to tensor<?xi64>
    %125 = vector.broadcast %c22329_i16 : i16 to vector<7xi16>
    %126 = vector.broadcast %false : i1 to vector<7xi1>
    %127 = vector.maskedload %alloc[%c6, %c0], %126, %125 : memref<13x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %128 = vector.broadcast %c1193460924_i64 : i64 to vector<7xi64>
    %129 = vector.transfer_write %128, %4[%c13, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<13x7xi64>
    %130 = arith.minsi %false_24, %66 : i1
    %131 = arith.shli %c1377814532_i32, %c1377814532_i32 : i32
    %132 = vector.broadcast %c22329_i16 : i16 to vector<7x7xi16>
    %133 = vector.outerproduct %125, %127, %132 {kind = #vector.kind<and>} : vector<7xi16>, vector<7xi16>
    %134 = arith.divsi %c1431144665_i64, %c1818536603_i64 : i64
    %135 = vector.extract %20[0] : vector<5xf32>
    %136 = arith.maxsi %c1377814532_i32, %c1377814532_i32 : i32
    %137 = vector.bitcast %100 : vector<5xf32> to vector<5xf32>
    %138 = vector.flat_transpose %137 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
    %139 = index.divs %112, %c3
    %140 = arith.cmpf ult, %cst_3, %cst_3 : f16
    affine.store %c1377814532_i32, %alloc_11[%c1] : memref<5xi32>
    %141 = math.round %86 : tensor<4xf16>
    %142 = index.mul %93, %c15
    %143 = vector.broadcast %c22329_i16 : i16 to vector<5xi16>
    %144 = vector.broadcast %false_7 : i1 to vector<5xi1>
    %145 = vector.broadcast %c1377814532_i32 : i32 to vector<5xi32>
    %146 = vector.gather %alloc_18[%48] [%145], %144, %143 : memref<5xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
    %147 = vector.flat_transpose %145 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
    %148 = affine.for %arg2 = 0 to 90 iter_args(%arg3 = %c1377814532_i32) -> (i32) {
      affine.yield %arg3 : i32
    }
    %149 = math.tanh %86 : tensor<4xf16>
    %cast_35 = tensor.cast %18 : tensor<4x7xi16> to tensor<?x?xi16>
    %150 = arith.maxsi %false_24, %false_7 : i1
    %151 = bufferization.clone %alloc_9 : memref<5xi1> to memref<5xi1>
    %152 = arith.addf %cst_5, %cst_8 : f16
    %153 = scf.while (%arg2 = %cst_5) : (f16) -> f16 {
      %261 = index.castu %false : i1 to index
      %262 = arith.ori %false_26, %66 : i1
      %263 = vector.bitcast %147 : vector<5xi32> to vector<5xi32>
      %264 = vector.broadcast %false_7 : i1 to vector<i1>
      %265 = vector.transfer_write %264, %6[%142] : vector<i1>, tensor<4xi1>
      %266 = vector.broadcast %65 : index to vector<13xindex>
      %267 = vector.broadcast %false : i1 to vector<13xi1>
      %268 = vector.broadcast %c1377814532_i32 : i32 to vector<13xi32>
      vector.scatter %alloc_20[%c3] [%266], %267, %268 : memref<5xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      %rank_57 = tensor.rank %7 : tensor<4xf32>
      %269 = vector.matrix_multiply %20, %137 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      %270 = vector.splat %66 : vector<13x7xi1>
      scf.condition(%false_26) %cst : f16
    } do {
    ^bb0(%arg2: f16):
      %261 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 16, (d0 * 4 + 2) floordiv 32 - 8)>(%76, %117, %48)
      %262 = vector.broadcast %c1818536603_i64 : i64 to vector<4xi64>
      %263 = vector.insert %262, %52 [6] : vector<4xi64> into vector<7x4xi64>
      %264 = arith.subi %false_26, %false : i1
      %265 = arith.remf %cst_5, %arg2 : f16
      %266 = math.round %15 : tensor<13x7xf16>
      %267 = math.roundeven %7 : tensor<4xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %268 = vector.transfer_read %3[%rank_30], %c0_i32 : tensor<4xi32>, vector<i32>
      %rank_57 = tensor.rank %15 : tensor<13x7xf16>
      bufferization.dealloc_tensor %collapsed : tensor<91xi64>
      %dest_58, %accumulated_value_59 = vector.scan <add>, %52, %128 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
      %extracted_60 = tensor.extract %transposed[%c3, %c3] : tensor<4x7xi16>
      %269 = math.ctlz %4 : tensor<13x7xi64>
      %270 = arith.mulf %cst_4, %cst_5 : f16
      scf.if %false_26 {
        %273 = math.fma %cst_3, %cst_5, %cst_4 : f16
        %274 = math.sqrt %cst_1 : f32
        %275 = arith.maxf %cst_6, %cst_6 : f32
        %276 = vector.broadcast %48 : index to vector<4xindex>
        %277 = vector.broadcast %66 : i1 to vector<4xi1>
        vector.scatter %alloc_9[%c2] [%276], %277, %277 : memref<5xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %278 = math.ceil %cst_5 : f16
        %rank_61 = tensor.rank %collapsed : tensor<91xi64>
        %alloc_62 = memref.alloc() : memref<7x4xi64>
        %279 = vector.matrix_multiply %107, %138 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      } else {
        %273 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %273, %alloc_15[%c14, %c2] : vector<f32>, memref<7x4xf32>
        %274 = math.ctpop %c1193460924_i64 : i64
        %extracted_61 = tensor.extract %1[%c0] : tensor<4xf16>
        %275 = index.floordivs %rank, %142
        %276 = math.exp2 %reduced : tensor<13xf16>
        %277 = vector.transpose %64, [0] : vector<4xf16> to vector<4xf16>
        %278 = index.ceildivu %93, %c9
        %279 = arith.maxf %cst_0, %cst_8 : f16
      }
      %271 = scf.if %false_7 -> (memref<5xi32>) {
        %273 = arith.maxf %cst_3, %arg2 : f16
        %274 = vector.extract %20[2] : vector<5xf32>
        %275 = vector.broadcast %false_24 : i1 to vector<5x5xi1>
        %276 = vector.outerproduct %144, %144, %275 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
        %277 = index.maxs %c1, %rank
        %278 = vector.extract %128[3] : vector<7xi64>
        %false_61 = index.bool.constant false
        %279 = arith.addf %cst_3, %cst : f16
        %280 = math.ctpop %14 : tensor<4xi64>
        scf.yield %alloc_20 : memref<5xi32>
      } else {
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %107, %cst_6 : vector<5xf32>, vector<5xf32> into f32
        %274 = vector.broadcast %extracted_60 : i16 to vector<7x4xi16>
        %275 = vector.broadcast %c1377814532_i32 : i32 to vector<7x4xi32>
        %276 = vector.gather %alloc[%c6, %rank_57] [%275], %61, %274 : memref<13x7xi16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi16> into vector<7x4xi16>
        %277 = arith.shrui %c1193460924_i64, %c1431144665_i64 : i64
        affine.store %cst_2, %alloc_15[%c8, %c12] : memref<7x4xf32>
        %278 = math.rsqrt %cst : f16
        %inserted_61 = tensor.insert %extracted_60 into %11[%c0] : tensor<4xi16>
        %279 = math.fpowi %cst_5, %c1_i32 : f16, i32
        %280 = vector.splat %261 : vector<5xindex>
        scf.yield %alloc_11 : memref<5xi32>
      }
      %272 = vector.broadcast %false_24 : i1 to vector<7x4xi1>
      scf.yield %cst_8 : f16
    }
    %154 = arith.remui %false_26, %false_26 : i1
    %155 = vector.create_mask %65 : vector<5xi1>
    %156 = math.log1p %cst_4 : f16
    %157 = math.exp %cst_6 : f32
    %false_36 = index.bool.constant false
    %158 = math.rsqrt %15 : tensor<13x7xf16>
    %159 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 8)>(%c1, %c12, %56, %83)
    %160 = scf.while (%arg2 = %alloc_9) : (memref<5xi1>) -> memref<5xi1> {
      %261 = tensor.empty() : tensor<7x7xi32>
      %262 = tensor.empty() : tensor<13x7xi32>
      %263 = linalg.matmul ins(%2, %261 : tensor<13x7xi32>, tensor<7x7xi32>) outs(%262 : tensor<13x7xi32>) -> tensor<13x7xi32>
      %264 = vector.extract %52[3] : vector<7x4xi64>
      %265 = arith.ceildivsi %c1193460924_i64, %c1431144665_i64 : i64
      %266 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
      %267 = index.casts %c5 : index to i32
      %268 = index.mul %c15, %c11
      %269 = arith.cmpi eq, %c1818536603_i64, %c1193460924_i64 : i64
      %270 = math.cttz %8 : tensor<5xi16>
      scf.condition(%false_26) %alloc_9 : memref<5xi1>
    } do {
    ^bb0(%arg2: memref<5xi1>):
      %261 = affine.min affine_map<(d0, d1) -> ((-d0) mod 2, d0 - 64)>(%c8, %111)
      %262 = index.divu %c15, %c7
      %263 = index.mul %111, %261
      %264 = arith.minsi %66, %66 : i1
      %265 = arith.maxsi %false_7, %false_26 : i1
      memref.assume_alignment %alloc_23, 8 : memref<7x4xf32>
      %266 = tensor.empty() : tensor<91xi64>
      %mapped_57 = linalg.map ins(%collapsed, %collapsed : tensor<91xi64>, tensor<91xi64>) outs(%266 : tensor<91xi64>)
        (%in: i64, %in_59: i64) {
          %276 = arith.remf %cst_1, %cst_1 : f32
          %cast_60 = tensor.cast %17 : tensor<13x7xi32> to tensor<?x?xi32>
          %extracted_61 = tensor.extract %5[%c0] : tensor<5xf16>
          %277 = math.atan2 %5, %5 : tensor<5xf16>
          %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %138, %138, %cst_2 : vector<5xf32>, vector<5xf32> into f32
          %279 = vector.extract %143[1] : vector<5xi16>
          %280 = index.floordivs %263, %56
          %281 = arith.ori %c22329_i16, %c22329_i16 : i16
          %282 = arith.negf %cst_6 : f32
          %283 = arith.mulf %cst_6, %cst_2 : f32
          %284 = math.roundeven %5 : tensor<5xf16>
          %285 = index.ceildivu %111, %c8
          %alloc_62 = memref.alloc() : memref<91xi64>
          memref.tensor_store %collapsed, %alloc_62 : memref<91xi64>
          %286 = affine.min affine_map<(d0) -> (((d0 + 32) ceildiv 32) floordiv 16, d0, ((d0 mod 8) ceildiv 64) ceildiv 128)>(%c14)
          %287 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
          %288 = vector.outerproduct %20, %20, %287 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
          %289 = arith.ceildivsi %in, %in : i64
          %290 = math.log1p %1 : tensor<4xf16>
          %291 = math.rsqrt %19 : tensor<13xf16>
          %292 = math.copysign %cst_0, %cst_4 : f16
          %293 = arith.maxui %in, %c1193460924_i64 : i64
          %294 = vector.bitcast %126 : vector<7xi1> to vector<7xi1>
          %295 = index.mul %139, %c11
          %296 = arith.minsi %in, %c1431144665_i64 : i64
          %297 = bufferization.to_tensor %alloc_21 : memref<7x4xi64>
          %298 = vector.broadcast %cst_3 : f16 to vector<f16>
          vector.transfer_write %298, %alloc_22[%c0] : vector<f16>, memref<4xf16>
          %alloca_63 = memref.alloca() : memref<4xi1>
          %299 = math.copysign %1, %86 : tensor<4xf16>
          %300 = arith.maxui %false, %false : i1
          %301 = arith.cmpi uge, %c22329_i16, %c22329_i16 : i16
          %302 = vector.shuffle %98, %98 [0, 1] : vector<i16>, vector<i16>
          affine.store %cst_6, %alloc_17[%c8] : memref<5xf32>
          %false_64 = arith.constant false
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %267 = math.atan2 %7, %0 : tensor<4xf32>
      %extracted_58 = tensor.extract %70[%c11] : tensor<13xi32>
      %268 = math.absf %cst_0 : f16
      %269 = arith.mulf %cst_6, %cst_2 : f32
      %270 = math.absf %cst_0 : f16
      %271 = math.round %cst : f16
      %272 = tensor.empty() : tensor<13x13x13xf32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%272 : tensor<13x13x13xf32>) {
      ^bb0(%out: f32):
        %276 = arith.minsi %c1431144665_i64, %c1431144665_i64 : i64
        %277 = math.roundeven %86 : tensor<4xf16>
        %278 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %splat_59 = tensor.splat %c1431144665_i64 : tensor<4xi64>
        %279 = index.divu %83, %83
        %280 = bufferization.to_memref %1 : memref<4xf16>
        %281 = math.round %cst_4 : f16
        %282 = index.maxs %139, %76
        %283 = vector.broadcast %false_7 : i1 to vector<i1>
        vector.transfer_write %283, %151[%c0] : vector<i1>, memref<5xi1>
        %284 = arith.ori %c22329_i16, %c22329_i16 : i16
        %285 = arith.xori %false_7, %false_7 : i1
        %286 = bufferization.to_memref %2 : memref<13x7xi32>
        affine.store %c22329_i16, %alloc_10[%c3, %c9] : memref<7x4xi16>
        %287 = vector.matrix_multiply %143, %125 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 7 : i32} : (vector<5xi16>, vector<7xi16>) -> vector<35xi16>
        %288 = index.floordivs %57, %c7
        %289 = math.roundeven %5 : tensor<5xf16>
        %290 = arith.floordivsi %66, %false_24 : i1
        %291 = arith.subi %c1431144665_i64, %c1818536603_i64 : i64
        %292 = arith.andi %66, %false : i1
        %alloc_60 = memref.alloc() : memref<7x7xi32>
        %293 = tensor.empty() : tensor<13x7xi32>
        %294 = linalg.matmul ins(%2, %alloc_60 : tensor<13x7xi32>, memref<7x7xi32>) outs(%293 : tensor<13x7xi32>) -> tensor<13x7xi32>
        %295 = vector.create_mask %142 : vector<4xi1>
        %296 = tensor.empty(%rank_30) : tensor<?xi32>
        %297 = vector.flat_transpose %127 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %298 = arith.cmpf uno, %cst_3, %cst_3 : f16
        %299 = math.ctpop %from_elements : tensor<7x4xi16>
        %300 = vector.extract %287[7] : vector<35xi16>
        %301 = arith.shli %extracted_58, %extracted_58 : i32
        %302 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %302, %alloc_23[%c2, %139] : vector<f32>, memref<7x4xf32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %303 = vector.transfer_read %splat_59[%261], %c0_i64 : tensor<4xi64>, vector<i64>
        %304 = vector.create_mask %c2 : vector<5xi1>
        %305 = arith.maxui %false_26, %false_7 : i1
        %306 = math.fma %cst_2, %cst_6, %cst_6 : f32
        linalg.yield %cst_1 : f32
      } -> tensor<13x13x13xf32>
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 2)>(%142, %c4, %111, %56)
      %275 = math.fma %cst_6, %cst_1, %cst_2 : f32
      scf.yield %151 : memref<5xi1>
    }
    %161 = math.ceil %0 : tensor<4xf32>
    %162 = math.cttz %13 : tensor<13x7xi64>
    %163 = arith.xori %false_26, %false_24 : i1
    %164 = arith.cmpf ugt, %extracted, %cst_0 : f16
    %165 = arith.remf %cst_2, %cst_1 : f32
    %166 = index.divu %83, %139
    %inserted = tensor.insert %c22329_i16 into %18[%c0, %c3] : tensor<4x7xi16>
    memref.assume_alignment %alloc_13, 8 : memref<4xi64>
    %167 = vector.broadcast %166 : index to vector<4xindex>
    %168 = vector.broadcast %false_24 : i1 to vector<4xi1>
    %169 = vector.broadcast %cst_6 : f32 to vector<4xf32>
    vector.scatter %alloc_17[%c2] [%167], %168, %169 : memref<5xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %cst_37 = arith.constant 1.000000e+00 : f32
    %170 = vector.transfer_read %alloc_16[%117, %c11], %cst_37 : memref<13x7xf32>, vector<7xf32>
    %171 = arith.subi %false_36, %false_24 : i1
    affine.store %c22329_i16, %alloc[%c4, %c15] : memref<13x7xi16>
    %172 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %138, %107, %cst_1 : vector<5xf32>, vector<5xf32> into f32
    %173 = arith.negf %cst_2 : f32
    memref.assume_alignment %alloc_17, 8 : memref<5xf32>
    %174 = arith.addf %cst_37, %cst_6 : f32
    %175 = arith.ori %false_36, %false_24 : i1
    %cast_38 = tensor.cast %17 : tensor<13x7xi32> to tensor<?x?xi32>
    %176 = vector.create_mask %139 : vector<4xi1>
    %177 = math.roundeven %reduced : tensor<13xf16>
    %178 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 + 8), d0 - (d0 + d3))>(%c8, %c9, %117, %c15)
    %179 = index.divs %139, %c12
    %180 = index.maxu %65, %112
    %181 = vector.shuffle %64, %106 [1, 3, 4, 5] : vector<4xf16>, vector<4xf16>
    %182 = bufferization.to_tensor %alloc_11 : memref<5xi32>
    %dest_39, %accumulated_value_40 = vector.scan <and>, %61, %176 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
    memref.tensor_store %1, %alloc_22 : memref<4xf16>
    %183 = vector.insert %false_7, %126 [2] : i1 into vector<7xi1>
    %184 = math.exp2 %cst_6 : f32
    %185 = arith.minui %false_24, %false_36 : i1
    %186 = math.ipowi %13, %4 : tensor<13x7xi64>
    %187 = index.mul %166, %c12
    %188 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
    %dest_41, %accumulated_value_42 = vector.scan <minui>, %52, %188 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
    %189 = math.ipowi %66, %66 : i1
    %190 = vector.create_mask %76 : vector<5xi1>
    %191 = arith.addf %cst_5, %cst_0 : f16
    %192 = arith.minsi %c1818536603_i64, %c1193460924_i64 : i64
    %193 = math.rsqrt %15 : tensor<13x7xf16>
    %194 = vector.broadcast %cst_37 : f32 to vector<4xf32>
    %195 = vector.fma %194, %194, %194 : vector<4xf32>
    %196 = bufferization.to_tensor %alloc_21 : memref<7x4xi64>
    %197 = index.ceildivs %142, %180
    scf.if %false_26 {
      %261 = memref.alloca_scope  -> (i32) {
        %269 = math.round %cst_6 : f32
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %79, %64, %extracted : vector<4xf16>, vector<4xf16> into f16
        %271 = vector.load %alloc_11[%c3] : memref<5xi32>, vector<5xi32>
        %272 = bufferization.to_memref %4 : memref<13x7xi64>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %144, %190, %false_7 : vector<5xi1>, vector<5xi1> into i1
        %274 = vector.extract %145[1] : vector<5xi32>
        %275 = arith.ori %false_7, %false : i1
        %276 = math.ctpop %18 : tensor<4x7xi16>
        %277 = vector.insert %c22329_i16, %125 [0] : i16 into vector<7xi16>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %107, %137, %cst_2 : vector<5xf32>, vector<5xf32> into f32
        %279 = math.roundeven %extracted : f16
        %280 = arith.shrsi %false_7, %false_7 : i1
        %281 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
        %282 = vector.maskedload %alloc[%c7, %c6], %176, %281 : memref<13x7xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %c1638038348_i64 = arith.constant 1638038348 : i64
        %283 = arith.cmpf true, %cst_8, %cst_4 : f16
        %284 = vector.broadcast %c22329_i16 : i16 to vector<i16>
        vector.transfer_write %284, %alloc_12[%c2] : vector<i16>, memref<4xi16>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %87, %64 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xf16>, vector<4xf16>
        %285 = math.round %extracted : f16
        %286 = index.casts %c22329_i16 : i16 to index
        bufferization.dealloc_tensor %70 : tensor<13xi32>
        %287 = arith.addf %cst_1, %cst_6 : f32
        %288 = tensor.empty(%111) : tensor<?xf16>
        memref.tensor_store %10, %alloc_12 : memref<4xi16>
        memref.store %false_7, %151[%c2] : memref<5xi1>
        %289 = index.casts %c12 : index to i32
        %290 = bufferization.clone %alloc_18 : memref<5xi16> to memref<5xi16>
        %291 = affine.max affine_map<(d0) -> ((d0 floordiv 2) * 4 + 16, (d0 floordiv 2) mod 2)>(%159)
        %292 = math.atan2 %5, %5 : tensor<5xf16>
        %293 = index.mul %65, %58
        %294 = math.ipowi %109, %109 : tensor<5xi16>
        %295 = arith.addi %c1431144665_i64, %c1818536603_i64 : i64
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %61, %176 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        memref.alloca_scope.return %c1377814532_i32 : i32
      }
      %262 = vector.reduction <mul>, %64 : vector<4xf16> into f16
      %263 = math.round %cst_0 : f16
      %264 = bufferization.to_memref %11 : memref<4xi16>
      %265 = vector.maskedload %alloc_17[%c1], %176, %194 : memref<5xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %266 = arith.muli %false_36, %false : i1
      %267 = arith.maxui %false_7, %false_7 : i1
      %268 = index.divu %c14, %c8
    }
    %198 = math.log1p %15 : tensor<13x7xf16>
    %199 = index.maxs %c2, %83
    %200 = math.rsqrt %cst_2 : f32
    %201 = arith.minui %false_7, %false : i1
    %202 = index.mul %c3, %c9
    %203 = index.floordivs %c12, %c1
    %204 = arith.maxf %cst, %cst_3 : f16
    %205 = index.ceildivs %159, %56
    %206 = math.fma %cst_6, %cst_1, %cst_6 : f32
    %207 = math.copysign %cst_3, %cst_3 : f16
    %208 = memref.alloca_scope  -> (memref<13x7xf32>) {
      %261 = arith.subi %c1431144665_i64, %c1431144665_i64 : i64
      %262 = math.ctpop %splat : tensor<4xi1>
      %263 = arith.remf %cst_4, %cst_4 : f16
      %extracted_57 = tensor.extract %0[%c0] : tensor<4xf32>
      %264 = arith.ceildivsi %c1193460924_i64, %c1193460924_i64 : i64
      %265 = arith.remsi %false_24, %false_36 : i1
      %266 = arith.shrsi %false_24, %false_36 : i1
      %267 = vector.broadcast %c0 : index to vector<13xindex>
      %268 = vector.broadcast %false_7 : i1 to vector<13xi1>
      vector.scatter %151[%c2] [%267], %268, %268 : memref<5xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
      %269 = arith.divui %c1431144665_i64, %c1818536603_i64 : i64
      %from_elements_58 = tensor.from_elements %false_7, %false_26, %false_26, %false_36, %false_26, %false_24, %66, %false_26, %66, %false_24, %66, %false_7, %66, %false_24, %false_24, %false_36, %66, %false_7, %false_7, %false_36, %false_26, %false_26, %false, %false_26, %false_7, %false_26, %false_26, %false_36, %false_7, %66, %false_36, %false_36, %false_26, %false, %false_26, %false_24, %66, %false_36, %false_24, %66, %66, %false, %false_26, %66, %66, %66, %false, %false_24, %false_7, %false_36, %false_26, %false_24, %false_26, %false, %false_7, %false_36, %false_26, %false, %false_36, %66, %false_7, %false, %false_24, %false, %false_24, %false_7, %false, %66, %false, %66, %false_24, %false, %false, %false_26, %false_24, %false_26, %false, %false_26, %false_24, %false_24, %false, %66, %66, %false_36, %false_36, %false_7, %false_36, %false_36, %false_24, %false, %false_26 : tensor<13x7xi1>
      %270 = scf.execute_region -> tensor<5xf32> {
        %alloc_62 = memref.alloc() : memref<7x4xf16>
        %290 = math.ceil %cst_3 : f16
        %291 = math.ipowi %10, %10 : tensor<4xi16>
        %292 = math.ipowi %collapsed, %collapsed : tensor<91xi64>
        %293 = bufferization.to_memref %8 : memref<5xi16>
        %294 = vector.transpose %147, [0] : vector<5xi32> to vector<5xi32>
        %295 = math.fpowi %7, %3 : tensor<4xf32>, tensor<4xi32>
        affine.store %c1377814532_i32, %alloc_11[%c13] : memref<5xi32>
        %296 = math.absf %15 : tensor<13x7xf16>
        %297 = arith.ceildivsi %c1431144665_i64, %c1431144665_i64 : i64
        %298 = arith.xori %66, %false_26 : i1
        %299 = arith.xori %false_26, %false_7 : i1
        %rank_63 = tensor.rank %4 : tensor<13x7xi64>
        %300 = math.roundeven %cst_6 : f32
        %301 = math.roundeven %cst_5 : f16
        %302 = index.divu %c5, %139
        %303 = tensor.empty() : tensor<5xf32>
        scf.yield %303 : tensor<5xf32>
      }
      %271 = arith.remf %extracted, %cst_8 : f16
      %272 = tensor.empty() : tensor<13x13x13xf32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%272 : tensor<13x13x13xf32>) {
      ^bb0(%out: f32):
        %290 = index.divs %c9, %56
        %291 = arith.addi %false_7, %false_7 : i1
        %292 = math.ctlz %c1431144665_i64 : i64
        %293 = arith.remsi %false_24, %false : i1
        %294 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
        %295 = vector.broadcast %false_36 : i1 to vector<13x7xi1>
        %296 = vector.gather %182[%202] [%294], %295, %294 : tensor<5xi32>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xi32> into vector<13x7xi32>
        %297 = index.floordivs %58, %205
        %298 = arith.negf %cst_0 : f16
        %299 = arith.addf %cst_2, %cst_37 : f32
        %300 = math.fma %cst_6, %cst_6, %cst_2 : f32
        %301 = arith.shli %c1818536603_i64, %c1193460924_i64 : i64
        %302 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 + d3) * 32, d0)>(%c12, %111, %202, %197)
        %303 = math.absi %false_24 : i1
        %304 = vector.insertelement %c1377814532_i32, %145[%139 : index] : vector<5xi32>
        %305 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 8)>(%c3, %290, %83, %48)
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %64, %79, %cst_4 : vector<4xf16>, vector<4xf16> into f16
        %dest_62, %accumulated_value_63 = vector.scan <minsi>, %61, %126 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi1>, vector<7xi1>
        %307 = vector.broadcast %out : f32 to vector<7x4xf32>
        %308 = vector.splat %111 : vector<13x7xindex>
        %309 = index.ceildivs %57, %305
        %rank_64 = tensor.rank %5 : tensor<5xf16>
        %310 = arith.divui %c1818536603_i64, %c1431144665_i64 : i64
        %rank_65 = tensor.rank %182 : tensor<5xi32>
        %311 = math.ctpop %66 : i1
        %312 = index.maxu %205, %c13
        %313 = math.rsqrt %15 : tensor<13x7xf16>
        %314 = arith.divui %c1431144665_i64, %c1193460924_i64 : i64
        %315 = index.floordivs %187, %c10
        %316 = arith.cmpf ugt, %extracted_57, %cst_1 : f32
        %317 = index.floordivs %48, %312
        memref.tensor_store %196, %alloc_21 : memref<7x4xi64>
        %318 = arith.addi %false_36, %false_26 : i1
        %319 = arith.maxf %out, %out : f32
        linalg.yield %extracted_57 : f32
      } -> tensor<13x13x13xf32>
      %274 = math.fma %1, %1, %1 : tensor<4xf16>
      %275 = math.roundeven %1 : tensor<4xf16>
      %276 = math.log2 %extracted : f16
      %277 = vector.matrix_multiply %64, %64 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
      %278 = math.ctlz %23 : tensor<i64>
      %279 = vector.transpose %128, [0] : vector<7xi64> to vector<7xi64>
      %280 = vector.broadcast %false_26 : i1 to vector<4xi1>
      %281 = tensor.empty() : tensor<13x13x13xf32>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%281 : tensor<13x13x13xf32>) outs(%281 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %out: f32):
        %290 = vector.broadcast %false : i1 to vector<4x4xi1>
        %291 = vector.outerproduct %176, %280, %290 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
        %alloc_62 = memref.alloc() : memref<5xf16>
        memref.tensor_store %5, %alloc_62 : memref<5xf16>
        %292 = math.ctpop %c1193460924_i64 : i64
        %293 = affine.min affine_map<(d0, d1, d2) -> (((d1 - 64) ceildiv 16) * 128, d1 mod 8, -((d1 - 64) ceildiv 128) + ((d0 mod 16) floordiv 16) mod 8)>(%180, %rank_30, %c10)
        %true = index.bool.constant true
        %294 = vector.flat_transpose %79 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        %295 = index.floordivs %199, %rank
        %296 = vector.broadcast %cst_6 : f32 to vector<7x4xf32>
        %297 = vector.broadcast %c1377814532_i32 : i32 to vector<7x4xi32>
        %298 = vector.gather %alloc_15[%142, %159] [%297], %61, %296 : memref<7x4xf32>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf32> into vector<7x4xf32>
        %299 = bufferization.to_memref %86 : memref<4xf16>
        %300 = arith.maxui %false_7, %66 : i1
        %301 = math.rsqrt %5 : tensor<5xf16>
        %302 = arith.subi %c1193460924_i64, %c1431144665_i64 : i64
        %303 = math.ipowi %14, %14 : tensor<4xi64>
        %304 = vector.broadcast %out : f32 to vector<5x5xf32>
        %305 = vector.outerproduct %138, %107, %304 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
        %306 = math.round %cst_2 : f32
        %307 = bufferization.to_memref %10 : memref<4xi16>
        %308 = math.log1p %1 : tensor<4xf16>
        %309 = index.add %48, %c2
        %310 = arith.cmpf une, %out, %cst_6 : f32
        %dest_63, %accumulated_value_64 = vector.scan <minf>, %87, %64 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xf16>, vector<4xf16>
        %311 = math.log2 %5 : tensor<5xf16>
        %312 = index.maxu %rank, %139
        %cst_65 = arith.constant 8.344000e+03 : f16
        %313 = math.ctpop %from_elements_58 : tensor<13x7xi1>
        memref.store %cst_4, %alloc_14[%c2] : memref<4xf16>
        %314 = vector.create_mask %c11 : vector<5xi1>
        %315 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 32, d1, -(-d1 + 4))>(%c4, %c4, %178, %c7)
        %316 = vector.insertelement %cst_2, %138[%c7 : index] : vector<5xf32>
        %317 = vector.splat %178 : vector<7x4xindex>
        %318 = arith.remf %cst_6, %cst_1 : f32
        %319 = arith.addf %cst_8, %cst_4 : f16
        %cast_66 = tensor.cast %4 : tensor<13x7xi64> to tensor<?x?xi64>
        linalg.yield %cst_6 : f32
      } -> tensor<13x13x13xf32>
      %extracted_59 = tensor.extract %11[%c1] : tensor<4xi16>
      %283 = index.maxu %c12, %c5
      %284 = arith.maxf %cst_2, %cst_6 : f32
      affine.store %cst_37, %alloc_23[%c13, %c0] : memref<7x4xf32>
      %285 = vector.create_mask %c6, %159 : vector<7x4xi1>
      %286 = math.cttz %false_26 : i1
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_60 = arith.constant 0 : i64
      %287 = vector.transfer_read %14[%48], %c0_i64_60 : tensor<4xi64>, vector<i64>
      %288 = math.rsqrt %86 : tensor<4xf16>
      %289 = arith.cmpi ne, %false_36, %false_24 : i1
      %false_61 = index.bool.constant false
      affine.for %arg2 = 0 to 15 {
      }
      memref.alloca_scope.return %alloc_16 : memref<13x7xf32>
    }
    %alloca = memref.alloca() : memref<4xi16>
    %209 = index.ceildivu %187, %93
    %210 = math.absf %cst_1 : f32
    %211 = memref.alloca_scope  -> (memref<7x4xi32>) {
      %261 = index.mul %76, %117
      %c1_i16 = arith.constant 1 : i16
      %262 = vector.transfer_read %alloc_18[%56], %c1_i16 : memref<5xi16>, vector<i16>
      %263 = arith.maxf %cst_3, %cst_4 : f16
      %264 = vector.matrix_multiply %100, %194 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 4 : i32} : (vector<5xf32>, vector<4xf32>) -> vector<20xf32>
      %cst_57 = arith.constant 1.000000e+00 : f32
      %cst_58 = arith.constant 0.000000e+00 : f32
      %265 = vector.transfer_read %alloc_15[%187, %rank_30], %cst_58 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x4xf32>, vector<4xf32>
      %266 = vector.shuffle %147, %147 [0, 3, 4, 5, 6, 7, 8] : vector<5xi32>, vector<5xi32>
      %267 = affine.for %arg2 = 0 to 30 iter_args(%arg3 = %c3) -> (index) {
        affine.yield %202 : index
      }
      %268 = vector.splat %false : vector<5xi1>
      %extracted_59 = tensor.extract %14[%c3] : tensor<4xi64>
      %269 = arith.minui %false_36, %false_24 : i1
      %cst_60 = arith.constant 1.000000e+00 : f16
      %cst_61 = arith.constant 0.000000e+00 : f16
      %270 = vector.transfer_read %86[%c9], %cst_61 : tensor<4xf16>, vector<f16>
      %271 = arith.maxf %cst_60, %cst_8 : f16
      %272 = index.mul %c1, %112
      %273 = vector.load %alloc_12[%c2] : memref<4xi16>, vector<4xi16>
      %274 = arith.maxf %cst_3, %extracted : f16
      %275 = arith.maxf %cst_5, %extracted : f16
      %276 = arith.addf %cst_6, %cst_2 : f32
      %277 = math.log2 %7 : tensor<4xf32>
      %true = index.bool.constant true
      %278 = arith.shrsi %c1193460924_i64, %c1193460924_i64 : i64
      %279 = index.maxu %rank, %48
      %280 = arith.remsi %false_26, %false_26 : i1
      %281 = math.copysign %86, %86 : tensor<4xf16>
      %282 = math.log2 %cst_60 : f16
      %283 = scf.while (%arg2 = %extracted) : (f16) -> f16 {
        %291 = vector.matrix_multiply %106, %64 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
        %292 = vector.insert %false, %155 [0] : i1 into vector<5xi1>
        %293 = math.log1p %15 : tensor<13x7xf16>
        %294 = math.tanh %cst_0 : f16
        %295 = vector.splat %c12 : vector<5xindex>
        %296 = arith.minui %c1377814532_i32, %c1377814532_i32 : i32
        %297 = vector.splat %c22329_i16 : vector<13x7xi16>
        %298 = math.exp2 %cst_5 : f16
        scf.condition(%66) %cst_8 : f16
      } do {
      ^bb0(%arg2: f16):
        %291 = bufferization.to_memref %109 : memref<5xi16>
        %292 = arith.shli %c1193460924_i64, %extracted_59 : i64
        vector.print %190 : vector<5xi1>
        %c0_i64 = arith.constant 0 : i64
        %293 = vector.transfer_read %13[%c4, %c9], %c0_i64 : tensor<13x7xi64>, vector<4xi64>
        %c1340653554_i64 = arith.constant 1340653554 : i64
        %294 = vector.extract %195[2] : vector<4xf32>
        %295 = math.absf %cst_5 : f16
        %alloc_63 = memref.alloc() : memref<7x4xf16>
        %296 = tensor.empty() : tensor<13x4xf16>
        %297 = linalg.matmul ins(%15, %alloc_63 : tensor<13x7xf16>, memref<7x4xf16>) outs(%296 : tensor<13x4xf16>) -> tensor<13x4xf16>
        %298 = arith.xori %false_26, %false_7 : i1
        %299 = math.rsqrt %1 : tensor<4xf16>
        %300 = math.fma %86, %1, %1 : tensor<4xf16>
        %301 = vector.create_mask %205 : vector<5xi1>
        %302 = math.tanh %296 : tensor<13x4xf16>
        %303 = bufferization.to_tensor %alloc_17 : memref<5xf32>
        %304 = bufferization.to_memref %0 : memref<4xf32>
        %305 = vector.splat %cst_0 : vector<5xf16>
        scf.yield %cst_5 : f16
      }
      %284 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
      %285 = math.round %cst_0 : f16
      %286 = bufferization.to_memref %10 : memref<4xi16>
      %287 = arith.andi %false_7, %false_24 : i1
      %288 = arith.floordivsi %false_26, %false_36 : i1
      %289 = arith.shli %c1377814532_i32, %c1377814532_i32 : i32
      %290 = arith.maxui %false_36, %66 : i1
      %alloc_62 = memref.alloc() : memref<7x4xi32>
      memref.alloca_scope.return %alloc_62 : memref<7x4xi32>
    }
    %212 = math.cttz %false : i1
    %213 = vector.broadcast %cst_5 : f16 to vector<7xf16>
    %dest_43, %accumulated_value_44 = vector.scan <add>, %87, %213 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xf16>, vector<7xf16>
    %214 = vector.insert %c1377814532_i32, %145 [1] : i32 into vector<5xi32>
    %215 = scf.if %false_24 -> (i64) {
      %261 = math.absf %15 : tensor<13x7xf16>
      %262 = math.cttz %17 : tensor<13x7xi32>
      %263 = arith.ceildivsi %false_26, %false_7 : i1
      %collapsed_57 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<7x4xi16> into tensor<28xi16>
      %264 = scf.while (%arg2 = %195) : (vector<4xf32>) -> vector<4xf32> {
        %268 = arith.addf %cst_8, %cst_4 : f16
        %269 = vector.matrix_multiply %194, %20 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<5xf32>) -> vector<20xf32>
        %270 = math.rsqrt %cst_5 : f16
        %271 = arith.remf %cst, %cst_4 : f16
        %272 = vector.broadcast %c14 : index to vector<13xindex>
        %273 = vector.broadcast %false_7 : i1 to vector<13xi1>
        %274 = vector.broadcast %c1377814532_i32 : i32 to vector<13xi32>
        vector.scatter %211[%c0, %c0] [%272], %273, %274 : memref<7x4xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
        %cst_58 = arith.constant 4.044800e+04 : f16
        affine.store %cst_8, %alloc_14[%c3] : memref<4xf16>
        %275 = index.divs %203, %c0
        scf.condition(%false_24) %194 : vector<4xf32>
      } do {
      ^bb0(%arg2: vector<4xf32>):
        %268 = arith.addf %cst_4, %cst_3 : f16
        %269 = vector.broadcast %c1377814532_i32 : i32 to vector<13xi32>
        %270 = vector.broadcast %false_26 : i1 to vector<13xi1>
        %271 = vector.maskedload %211[%c0, %c0], %270, %269 : memref<7x4xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_58 = arith.constant 0 : i16
        %272 = vector.transfer_read %11[%c10], %c0_i16_58 : tensor<4xi16>, vector<i16>
        %273 = vector.broadcast %66 : i1 to vector<13x13xi1>
        %274 = vector.outerproduct %270, %270, %273 {kind = #vector.kind<maxsi>} : vector<13xi1>, vector<13xi1>
        %275 = arith.floordivsi %false, %false_7 : i1
        %276 = math.ipowi %c1431144665_i64, %c1431144665_i64 : i64
        %277 = arith.maxsi %false_26, %66 : i1
        %278 = vector.shuffle %61, %61 [0, 4, 5, 6, 8, 9, 11, 12] : vector<7x4xi1>, vector<7x4xi1>
        %279 = index.floordivs %142, %c0
        %280 = vector.matrix_multiply %125, %125 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %281 = arith.maxf %cst_8, %cst_4 : f16
        %collapsed_59 = tensor.collapse_shape %16 [[0, 1]] : tensor<13x7xi32> into tensor<91xi32>
        %282 = vector.maskedload %alloc_18[%c1], %126, %125 : memref<5xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %283 = index.maxu %c13, %117
        %284 = index.maxs %112, %c6
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 64, -(d3 - 64), -d0, d1 + d0)>(%c7, %56, %c3, %c0)
        scf.yield %194 : vector<4xf32>
      }
      %265 = arith.shrsi %c22329_i16, %c22329_i16 : i16
      %266 = arith.negf %cst_4 : f16
      %267 = index.casts %c22329_i16 : i16 to index
      scf.yield %c1818536603_i64 : i64
    } else {
      %261 = vector.matrix_multiply %194, %100 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<5xf32>) -> vector<20xf32>
      %262 = vector.extract %143[2] : vector<5xi16>
      %263 = arith.minui %false_26, %false_7 : i1
      %264 = vector.broadcast %false_7 : i1 to vector<5x5xi1>
      %265 = vector.outerproduct %155, %155, %264 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
      %266 = vector.multi_reduction <minf>, %87, %87 [] : vector<7x4xf16> to vector<7x4xf16>
      %267 = vector.extract %128[6] : vector<7xi64>
      %268 = math.roundeven %7 : tensor<4xf32>
      %269 = tensor.empty() : tensor<13x13x13xf32>
      %alloc_57 = memref.alloc() : memref<13x13xf32>
      %270 = tensor.empty() : tensor<13xf32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %270, %270 : memref<13x13xf32>, tensor<13xf32>, tensor<13xf32>) outs(%269 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %in_58: f32, %in_59: f32, %out: f32):
        %272 = math.log1p %cst_37 : f32
        %273 = arith.shli %c1193460924_i64, %c1431144665_i64 : i64
        vector.print %190 : vector<5xi1>
        %274 = arith.xori %false_36, %66 : i1
        %275 = vector.matrix_multiply %195, %20 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<5xf32>) -> vector<20xf32>
        %276 = vector.multi_reduction <xor>, %147, %c1377814532_i32 [0] : vector<5xi32> to i32
        %extracted_60 = tensor.extract %8[%c0] : tensor<5xi16>
        %277 = math.exp %in_58 : f32
        %278 = math.roundeven %in_59 : f32
        %279 = index.mul %203, %142
        %280 = affine.min affine_map<(d0) -> ((d0 * 2) mod 32 - 8, d0, 0)>(%197)
        %281 = arith.remf %cst_8, %cst_4 : f16
        %false_61 = index.bool.constant false
        %282 = index.maxu %c12, %c5
        %283 = math.atan %extracted : f16
        %284 = math.atan %out : f32
        %285 = vector.broadcast %cst_3 : f16 to vector<7xf16>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %87, %79, %285 : vector<7x4xf16>, vector<4xf16> into vector<7xf16>
        %287 = vector.bitcast %143 : vector<5xi16> to vector<5xf16>
        %288 = arith.addi %false, %false_61 : i1
        %289 = arith.xori %false_24, %66 : i1
        memref.store %extracted_60, %alloc_10[%c4, %c3] : memref<7x4xi16>
        %inserted_62 = tensor.insert %cst_4 into %reduced[%c1] : tensor<13xf16>
        %290 = vector.broadcast %cst_4 : f16 to vector<13x7xf16>
        %291 = vector.broadcast %false_24 : i1 to vector<13x7xi1>
        %292 = vector.broadcast %276 : i32 to vector<13x7xi32>
        %293 = vector.gather %alloc_14[%178] [%292], %291, %290 : memref<4xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
        %extracted_63 = tensor.extract %182[%c3] : tensor<5xi32>
        %294 = arith.floordivsi %c1377814532_i32, %c1377814532_i32 : i32
        %295 = vector.create_mask %205, %c14 : vector<13x7xi1>
        %from_elements_64 = tensor.from_elements %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %extracted_60, %extracted_60, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %extracted_60, %c22329_i16, %extracted_60, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %extracted_60, %extracted_60, %c22329_i16, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %extracted_60, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %extracted_60 : tensor<13x7xi16>
        %296 = math.absf %7 : tensor<4xf32>
        %297 = index.castu %199 : index to i32
        affine.store %c1193460924_i64, %alloc_13[%c8] : memref<4xi64>
        vector.print %87 : vector<7x4xf16>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %100, %137, %out : vector<5xf32>, vector<5xf32> into f32
        linalg.yield %cst_2 : f32
      } -> tensor<13x13x13xf32>
      scf.yield %c1818536603_i64 : i64
    }
    %216 = arith.divsi %c1431144665_i64, %c1431144665_i64 : i64
    %217 = arith.addf %cst, %cst : f16
    %218 = bufferization.clone %alloc_15 : memref<7x4xf32> to memref<7x4xf32>
    %219 = arith.xori %c1193460924_i64, %c1193460924_i64 : i64
    %220 = arith.divsi %false_36, %false_36 : i1
    %221 = affine.if affine_set<(d0) : (d0 - 12 == 0, (d0 * 2 + 1) * 2 >= 0)>(%c2) -> memref<5xi64> {
      %261 = tensor.empty() : tensor<13x13x13xf32>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261 : tensor<13x13x13xf32>) outs(%261 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %out: f32):
        %270 = math.roundeven %cst : f16
        %271 = arith.divui %c22329_i16, %c22329_i16 : i16
        %272 = index.maxu %117, %rank_30
        %273 = vector.broadcast %cst_37 : f32 to vector<4xf32>
        %274 = math.round %1 : tensor<4xf16>
        %275 = index.maxs %c6, %180
        %276 = vector.load %alloc_16[%c6, %c2] : memref<13x7xf32>, vector<7x4xf32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %79, %64, %cst_8 : vector<4xf16>, vector<4xf16> into f16
        %278 = math.fma %cst_4, %cst_5, %cst_5 : f16
        affine.store %cst_6, %alloc_23[%c3, %c15] : memref<7x4xf32>
        %279 = arith.divsi %c1377814532_i32, %c1377814532_i32 : i32
        %280 = math.log1p %1 : tensor<4xf16>
        %281 = arith.divsi %false_24, %false : i1
        %282 = arith.divui %c1818536603_i64, %c1193460924_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_59 = arith.constant 0 : i16
        %283 = vector.transfer_read %alloc[%48, %178], %c0_i16_59 : memref<13x7xi16>, vector<i16>
        %284 = index.maxs %139, %197
        %285 = bufferization.clone %alloc_21 : memref<7x4xi64> to memref<7x4xi64>
        %286 = math.absf %0 : tensor<4xf32>
        %287 = math.log1p %86 : tensor<4xf16>
        %288 = math.expm1 %cst_37 : f32
        %expanded = tensor.expand_shape %1 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %289 = arith.divsi %66, %false_7 : i1
        %290 = vector.extract %127[6] : vector<7xi16>
        %291 = vector.matrix_multiply %194, %138 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<5xf32>) -> vector<20xf32>
        %292 = vector.matrix_multiply %147, %145 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi32>, vector<5xi32>) -> vector<1xi32>
        memref.tensor_store %21, %alloc_13 : memref<4xi64>
        %293 = math.rsqrt %0 : tensor<4xf32>
        %294 = arith.divf %cst_6, %in : f32
        %295 = vector.broadcast %203 : index to vector<13xindex>
        %296 = vector.broadcast %false_24 : i1 to vector<13xi1>
        %297 = vector.broadcast %cst_1 : f32 to vector<13xf32>
        vector.scatter %alloc_17[%c3] [%295], %296, %297 : memref<5xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %298 = vector.broadcast %c1377814532_i32 : i32 to vector<i32>
        vector.transfer_write %298, %alloc_11[%c14] : vector<i32>, memref<5xi32>
        %299 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %300 = vector.fma %299, %138, %137 : vector<5xf32>
        %301 = math.copysign %cst_1, %cst_2 : f32
        linalg.yield %cst_1 : f32
      } -> tensor<13x13x13xf32>
      %263 = vector.broadcast %c7 : index to vector<4xindex>
      %264 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
      vector.scatter %alloc_10[%c5, %c2] [%263], %176, %264 : memref<7x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %265 = arith.subi %false_36, %false_26 : i1
      %266 = bufferization.clone %alloc_13 : memref<4xi64> to memref<4xi64>
      %267 = vector.splat %c5 : vector<5xindex>
      %rank_57 = tensor.rank %1 : tensor<4xf16>
      %268 = math.cttz %16 : tensor<13x7xi32>
      %269 = vector.create_mask %c15, %c3 : vector<13x7xi1>
      %alloc_58 = memref.alloc() : memref<5xi64>
      affine.yield %alloc_58 : memref<5xi64>
    } else {
      scf.index_switch %c13 
      case 1 {
        %270 = index.ceildivu %203, %197
        %271 = index.casts %159 : index to i32
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %52, %128 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
        %272 = vector.broadcast %215 : i64 to vector<4xi64>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %52, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
        %273 = vector.matrix_multiply %30, %137 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xf32>, vector<5xf32>) -> vector<5xf32>
        %274 = arith.shli %false_24, %false : i1
        %275 = arith.remsi %c1818536603_i64, %c1818536603_i64 : i64
        %276 = arith.cmpf une, %cst_3, %cst_8 : f16
        %277 = arith.xori %c1818536603_i64, %c1818536603_i64 : i64
        %278 = vector.broadcast %c22329_i16 : i16 to vector<7x4xi16>
        %279 = vector.broadcast %c1377814532_i32 : i32 to vector<7x4xi32>
        %280 = vector.gather %alloc_12[%56] [%279], %61, %278 : memref<4xi16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xi16> into vector<7x4xi16>
        %281 = arith.maxui %c22329_i16, %c22329_i16 : i16
        %282 = arith.maxsi %c1377814532_i32, %c1377814532_i32 : i32
        %283 = index.casts %142 : index to i32
        %284 = arith.maxsi %c1193460924_i64, %c1193460924_i64 : i64
        %285 = math.absf %extracted : f16
        %286 = arith.divsi %false_7, %false : i1
        scf.yield
      }
      default {
        %270 = arith.minui %c1818536603_i64, %215 : i64
        %dest_59, %accumulated_value_60 = vector.scan <minsi>, %61, %126 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi1>, vector<7xi1>
        %271 = arith.maxf %cst_5, %cst_5 : f16
        %272 = math.round %7 : tensor<4xf32>
        %273 = index.casts %205 : index to i32
        %false_61 = index.bool.constant false
        %274 = math.ctpop %c1431144665_i64 : i64
        %275 = index.floordivs %c10, %142
        %splat_62 = tensor.splat %cst : tensor<4xf16>
        %276 = math.rsqrt %0 : tensor<4xf32>
        %277 = vector.broadcast %139 : index to vector<4xindex>
        %278 = vector.broadcast %c22329_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_12[%c3] [%277], %176, %278 : memref<4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %279 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
        %280 = vector.gather %5[%93] [%279], %176, %79 : tensor<5xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %281 = arith.ori %false_61, %false_26 : i1
        %282 = index.maxs %76, %83
        %283 = arith.minsi %false_61, %false : i1
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %137, %20, %cst_1 : vector<5xf32>, vector<5xf32> into f32
      }
      %261 = arith.ori %c1818536603_i64, %c1818536603_i64 : i64
      %262 = tensor.empty() : tensor<13x13x13xf32>
      %alloc_57 = memref.alloc() : memref<13x13xf32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57 : memref<13x13xf32>) outs(%262 : tensor<13x13x13xf32>) {
      ^bb0(%in: f32, %out: f32):
        %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 - d0)>(%57, %178, %c5, %199)
        %271 = vector.reduction <maxf>, %138 : vector<5xf32> into f32
        %272 = vector.maskedload %alloc_10[%c0, %c2], %190, %146 : memref<7x4xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %273 = vector.matrix_multiply %100, %138 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %274 = vector.extract %146[3] : vector<5xi16>
        %275 = vector.splat %c1193460924_i64 : vector<7x4xi64>
        %276 = math.ipowi %10, %11 : tensor<4xi16>
        %277 = math.log1p %cst : f16
        %278 = arith.shli %false_26, %false_24 : i1
        %true = arith.constant true
        %279 = arith.cmpf uno, %cst_2, %cst_1 : f32
        %280 = index.casts %112 : index to i32
        %281 = vector.broadcast %199 : index to vector<5xindex>
        vector.scatter %alloc_12[%c1] [%281], %144, %146 : memref<4xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %282 = math.ctlz %false : i1
        %283 = vector.broadcast %c1431144665_i64 : i64 to vector<4xi64>
        %dest_59, %accumulated_value_60 = vector.scan <or>, %52, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
        %284 = vector.bitcast %145 : vector<5xi32> to vector<5xi32>
        %285 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        vector.transfer_write %285, %208[%c14, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf32>, memref<13x7xf32>
        %dest_61, %accumulated_value_62 = vector.scan <maxf>, %87, %106 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xf16>, vector<4xf16>
        %286 = math.copysign %cst_6, %cst_6 : f32
        %287 = math.cttz %12 : tensor<13x7xi1>
        %288 = index.ceildivu %117, %c0
        %289 = arith.maxf %cst_2, %cst_6 : f32
        %290 = vector.broadcast %cst_37 : f32 to vector<13x7xf32>
        %291 = vector.broadcast %66 : i1 to vector<13x7xi1>
        %292 = vector.broadcast %c1377814532_i32 : i32 to vector<13x7xi32>
        %293 = vector.gather %7[%65] [%292], %291, %290 : tensor<4xf32>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf32> into vector<13x7xf32>
        %294 = index.casts %false : i1 to index
        %295 = bufferization.to_memref %15 : memref<13x7xf16>
        %rank_63 = tensor.rank %17 : tensor<13x7xi32>
        %296 = math.roundeven %cst_2 : f32
        %297 = tensor.empty() : tensor<13x7xf32>
        %298 = arith.maxf %cst_37, %cst_2 : f32
        %299 = index.floordivs %65, %209
        %300 = arith.minsi %c1431144665_i64, %c1193460924_i64 : i64
        %301 = index.castu %c1193460924_i64 : i64 to index
        linalg.yield %cst_1 : f32
      } -> tensor<13x13x13xf32>
      %264 = arith.maxsi %c1818536603_i64, %c1818536603_i64 : i64
      %265 = math.ceil %1 : tensor<4xf16>
      %266 = scf.index_switch %48 -> index 
      case 1 {
        %270 = index.maxu %111, %c12
        %271 = index.mul %179, %112
        %272 = affine.min affine_map<(d0) -> (d0 * 16 - 16, d0 * 16 - 14)>(%c10)
        affine.store %c1377814532_i32, %211[%c13, %c13] : memref<7x4xi32>
        %273 = math.cttz %c1377814532_i32 : i32
        %274 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %275 = arith.shrui %false_7, %false : i1
        %276 = math.absf %cst_6 : f32
        %277 = math.tanh %cst_37 : f32
        %278 = math.roundeven %15 : tensor<13x7xf16>
        memref.tensor_store %11, %alloc_12 : memref<4xi16>
        %279 = arith.subi %false_24, %false_7 : i1
        %280 = arith.minsi %false, %false : i1
        %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<13x7xi64> into tensor<13x7x1xi64>
        %281 = math.exp %extracted : f16
        %282 = tensor.empty() : tensor<4x4xi16>
        %283 = linalg.matmul ins(%transposed, %from_elements : tensor<4x7xi16>, tensor<7x4xi16>) outs(%282 : tensor<4x4xi16>) -> tensor<4x4xi16>
        scf.yield %rank : index
      }
      default {
        %270 = math.fma %7, %7, %0 : tensor<4xf32>
        %271 = tensor.empty() : tensor<7x7xi1>
        %272 = tensor.empty() : tensor<13x7xi1>
        %273 = linalg.matmul ins(%12, %271 : tensor<13x7xi1>, tensor<7x7xi1>) outs(%272 : tensor<13x7xi1>) -> tensor<13x7xi1>
        %274 = vector.extract_strided_slice %143 {offsets = [1], sizes = [3], strides = [1]} : vector<5xi16> to vector<3xi16>
        memref.store %cst_37, %alloc_23[%c3, %c3] : memref<7x4xf32>
        %from_elements_59 = tensor.from_elements %c1377814532_i32, %c1377814532_i32, %c1377814532_i32, %c1377814532_i32 : tensor<4xi32>
        %275 = bufferization.to_tensor %alloc_21 : memref<7x4xi64>
        %276 = index.ceildivu %c2, %c6
        %277 = math.log1p %0 : tensor<4xf32>
        %278 = arith.maxsi %c22329_i16, %c22329_i16 : i16
        %279 = math.round %cst_3 : f16
        %280 = math.fma %cst_37, %cst_1, %cst_37 : f32
        bufferization.dealloc_tensor %13 : tensor<13x7xi64>
        %281 = memref.realloc %alloc_14 : memref<4xf16> to memref<13xf16>
        %282 = arith.maxf %cst_2, %cst_1 : f32
        %283 = tensor.empty() : tensor<4x7xi64>
        %284 = tensor.empty() : tensor<7x7xi64>
        %285 = linalg.matmul ins(%9, %283 : tensor<7x4xi64>, tensor<4x7xi64>) outs(%284 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %286 = arith.divui %c1431144665_i64, %c1431144665_i64 : i64
        scf.yield %c1 : index
      }
      %267 = tensor.empty() : tensor<4x4xi16>
      %268 = linalg.matmul ins(%transposed, %from_elements : tensor<4x7xi16>, tensor<7x4xi16>) outs(%267 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %269 = math.ctpop %267 : tensor<4x4xi16>
      %alloc_58 = memref.alloc() : memref<5xi64>
      affine.yield %alloc_58 : memref<5xi64>
    }
    %222 = arith.ori %c1818536603_i64, %c1818536603_i64 : i64
    %223 = arith.addf %cst_0, %cst_5 : f16
    %224 = arith.shli %c1431144665_i64, %c1193460924_i64 : i64
    %225 = index.ceildivu %180, %c9
    %226 = math.absf %7 : tensor<4xf32>
    %227 = vector.flat_transpose %143 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
    %228 = math.atan %1 : tensor<4xf16>
    %229 = arith.cmpi eq, %66, %66 : i1
    %collapsed_45 = tensor.collapse_shape %12 [[0, 1]] : tensor<13x7xi1> into tensor<91xi1>
    %alloc_46 = memref.alloc() : memref<4xi32>
    %230 = vector.gather %alloc_46[%83] [%147], %155, %147 : memref<4xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %231 = arith.ori %false_36, %false_24 : i1
    %232 = arith.xori %false_36, %false_36 : i1
    %233 = math.log1p %15 : tensor<13x7xf16>
    %from_elements_47 = tensor.from_elements %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16 : tensor<13x7xi16>
    %from_elements_48 = tensor.from_elements %cst_4, %cst_0, %cst_4, %cst_0, %cst, %cst_8, %cst_0, %cst_0, %cst_3, %cst_5, %cst_0, %cst_0, %cst_4, %cst_5, %cst, %extracted, %cst_0, %cst_4, %cst_3, %cst_0, %extracted, %cst, %cst_8, %cst_8, %cst_8, %cst_8, %cst_3, %cst, %cst_5, %cst_8, %cst_0, %cst, %cst, %extracted, %cst_3, %cst_8, %cst_8, %cst_5, %cst_8, %cst_8, %cst_3, %cst_4, %cst_5, %cst_0, %cst_3, %cst_3, %cst, %extracted, %cst, %cst_8, %extracted, %cst_0, %cst_3, %cst_0, %cst_4, %cst_0, %cst_8, %extracted, %extracted, %cst_0, %cst_0, %cst_8, %extracted, %cst_4, %extracted, %cst_8, %cst_5, %cst_5, %cst_5, %extracted, %cst_4, %cst_4, %cst_0, %extracted, %cst_3, %cst, %cst_3, %cst_8, %extracted, %cst_3, %cst, %cst_4, %extracted, %cst_8, %cst_0, %cst_3, %cst_3, %cst_3, %cst_4, %cst_3, %cst_0 : tensor<13x7xf16>
    %234 = math.log10 %from_elements_48 : tensor<13x7xf16>
    %235 = arith.shrui %66, %false : i1
    %236 = math.cos %cst_1 : f32
    %237 = vector.broadcast %58 : index to vector<7xindex>
    vector.scatter %alloc_9[%c3] [%237], %126, %126 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %alloc_49 = memref.alloc() : memref<4xf16>
    %extracted_50 = tensor.extract %4[%c11, %c3] : tensor<13x7xi64>
    %alloc_51 = memref.alloc() : memref<5xi64>
    %238 = vector.broadcast %166 : index to vector<7xindex>
    vector.scatter %alloc_9[%c1] [%238], %126, %126 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %239 = math.ipowi %22, %22 : tensor<i64>
    %cast_52 = tensor.cast %12 : tensor<13x7xi1> to tensor<?x?xi1>
    %240 = arith.divsi %c1818536603_i64, %extracted_50 : i64
    %241 = index.floordivs %c7, %180
    %242 = math.fma %1, %1, %1 : tensor<4xf16>
    %243 = math.round %cst_4 : f16
    %244 = math.log1p %reduced : tensor<13xf16>
    %245 = index.divu %c11, %c1
    memref.tensor_store %9, %alloc_21 : memref<7x4xi64>
    %246 = math.roundeven %cst_6 : f32
    %247 = vector.broadcast %c22329_i16 : i16 to vector<5x5xi16>
    %248 = vector.outerproduct %227, %143, %247 {kind = #vector.kind<maxsi>} : vector<5xi16>, vector<5xi16>
    %249 = tensor.empty() : tensor<13x13x13xf32>
    %250 = tensor.empty() : tensor<13x13xf32>
    %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250 : tensor<13x13xf32>) outs(%249 : tensor<13x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %261 = math.ipowi %3, %3 : tensor<4xi32>
      %262 = math.tanh %cst_2 : f32
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %61, %176 {inclusive = true, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
      %263 = tensor.empty() : tensor<13x4xi64>
      %264 = linalg.matmul ins(%4, %196 : tensor<13x7xi64>, tensor<7x4xi64>) outs(%263 : tensor<13x4xi64>) -> tensor<13x4xi64>
      %inserted_59 = tensor.insert %c1377814532_i32 into %3[%c3] : tensor<4xi32>
      %rank_60 = tensor.rank %reduced : tensor<13xf16>
      %265 = tensor.empty() : tensor<7x4xi32>
      %266 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
      %267 = vector.gather %265[%c5, %57] [%266], %176, %266 : tensor<7x4xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %alloca_61 = memref.alloca() : memref<13x7xf32>
      %rank_62 = tensor.rank %15 : tensor<13x7xf16>
      %268 = math.log1p %0 : tensor<4xf32>
      %269 = math.ctpop %6 : tensor<4xi1>
      %270 = arith.floordivsi %215, %c1818536603_i64 : i64
      %271 = index.mul %65, %76
      %272 = math.ceil %7 : tensor<4xf32>
      %273 = vector.extract_strided_slice %126 {offsets = [0], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
      bufferization.dealloc_tensor %14 : tensor<4xi64>
      %274 = math.rsqrt %cst_4 : f16
      %rank_63 = tensor.rank %19 : tensor<13xf16>
      %275 = arith.shli %c1431144665_i64, %extracted_50 : i64
      %276 = arith.negf %cst_2 : f32
      %277 = math.log1p %cst_0 : f16
      %278 = scf.if %false -> (memref<13x7xi16>) {
        %287 = math.ctlz %false_26 : i1
        %288 = arith.divsi %66, %false_26 : i1
        %289 = vector.matrix_multiply %137, %30 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
        %290 = math.round %cst_5 : f16
        %291 = index.maxs %112, %c11
        %true_66 = arith.constant true
        %false_67 = arith.constant false
        %292 = vector.transfer_read %6[%rank], %false_67 : tensor<4xi1>, vector<i1>
        %293 = math.log2 %7 : tensor<4xf32>
        %c781417065_i32 = arith.constant 781417065 : i32
        scf.yield %alloc : memref<13x7xi16>
      } else {
        %287 = vector.splat %c2 : vector<4xindex>
        %288 = index.divu %57, %93
        %289 = arith.addi %c1431144665_i64, %215 : i64
        %290 = vector.splat %cst_37 : vector<4xf32>
        %291 = index.casts %117 : index to i32
        %292 = bufferization.to_memref %196 : memref<7x4xi64>
        %293 = arith.subi %false_26, %false_36 : i1
        bufferization.dealloc_tensor %3 : tensor<4xi32>
        scf.yield %alloc : memref<13x7xi16>
      }
      %279 = math.round %15 : tensor<13x7xf16>
      %280 = vector.broadcast %c1193460924_i64 : i64 to vector<4xi64>
      %dest_64, %accumulated_value_65 = vector.scan <mul>, %52, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi64>, vector<4xi64>
      %true = index.bool.constant true
      %281 = vector.broadcast %c1193460924_i64 : i64 to vector<4xi64>
      %282 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %128, %52, %281 : vector<7xi64>, vector<7x4xi64> into vector<4xi64>
      scf.execute_region {
        %287 = arith.remsi %c1377814532_i32, %c1377814532_i32 : i32
        %288 = vector.reduction <and>, %176 : vector<4xi1> into i1
        %289 = arith.floordivsi %c1377814532_i32, %c1377814532_i32 : i32
        %alloc_66 = memref.alloc() : memref<13x4xi64>
        memref.tensor_store %263, %alloc_66 : memref<13x4xi64>
        %290 = arith.addi %c1377814532_i32, %c1377814532_i32 : i32
        %291 = arith.divui %c1193460924_i64, %c1193460924_i64 : i64
        %292 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 31)>(%rank, %48, %58)
        %293 = math.rsqrt %cst_0 : f16
        %294 = index.maxu %c10, %rank_30
        %collapsed_67 = tensor.collapse_shape %9 [[0, 1]] : tensor<7x4xi64> into tensor<28xi64>
        %rank_68 = tensor.rank %23 : tensor<i64>
        %c33 = arith.constant 33 : index
        %extracted_69 = tensor.extract %collapsed[%c33] : tensor<91xi64>
        affine.store %c1377814532_i32, %alloc_46[%c1] : memref<4xi32>
        %295 = bufferization.to_memref %9 : memref<7x4xi64>
        %dest_70, %accumulated_value_71 = vector.scan <or>, %61, %176 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %296 = arith.remf %cst_37, %cst_1 : f32
        scf.yield
      }
      %283 = index.ceildivs %rank_62, %271
      %284 = arith.cmpf uno, %cst_0, %extracted : f16
      %285 = arith.maxui %true, %false : i1
      %286 = affine.apply affine_map<(d0) -> (d0 * -2)>(%202)
      %c-16206_i16 = arith.constant -16206 : i16
      linalg.yield %cst_6 : f32
    } -> tensor<13x13x13xf32>
    %from_elements_53 = tensor.from_elements %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16, %c22329_i16 : tensor<13x7xi16>
    %inserted_54 = tensor.insert %false_26 into %12[%c11, %c1] : tensor<13x7xi1>
    memref.store %extracted, %alloc_22[%c1] : memref<4xf16>
    %252 = vector.create_mask %c9, %rank : vector<7x4xi1>
    %253 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 8)>(%48, %187, %rank_30, %48)
    %254 = arith.ori %c22329_i16, %c22329_i16 : i16
    %255 = arith.remf %cst_4, %cst_4 : f16
    %256 = tensor.empty() : tensor<13x7xi64>
    %257 = linalg.copy ins(%13 : tensor<13x7xi64>) outs(%256 : tensor<13x7xi64>) -> tensor<13x7xi64>
    %258 = tensor.empty() : tensor<4xf32>
    %transposed_55 = linalg.transpose ins(%0 : tensor<4xf32>) outs(%258 : tensor<4xf32>) permutation = [0] 
    %alloc_56 = memref.alloc() : memref<13xf16>
    linalg.reduce ins(%from_elements_48 : tensor<13x7xf16>) outs(%alloc_56 : memref<13xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %261 = arith.addi %false_24, %false : i1
        %dest_57, %accumulated_value_58 = vector.scan <or>, %61, %176 {inclusive = false, reduction_dim = 0 : i64} : vector<7x4xi1>, vector<4xi1>
        %262 = arith.minsi %extracted_50, %c1431144665_i64 : i64
        %263 = vector.splat %c3 : vector<13x7xindex>
        %generated = tensor.generate %139 {
        ^bb0(%arg2: index):
          %269 = math.log1p %5 : tensor<5xf16>
          %270 = index.divs %83, %142
          %271 = index.floordivs %245, %270
          %272 = tensor.empty() : tensor<7x4xi1>
          tensor.yield %66 : i1
        } : tensor<?xi1>
        %264 = index.ceildivu %c14, %159
        %265 = tensor.empty() : tensor<5xi1>
        %266 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
        %267 = vector.gather %265[%199] [%266], %176, %176 : tensor<5xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %268 = index.mul %c6, %c10
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %259 = scf.parallel (%arg2) = (%57) to (%c11) step (%c2) init (%125) -> vector<7xi16> {
      %261 = arith.remf %cst_6, %cst_1 : f32
      %262 = math.atan2 %86, %1 : tensor<4xf16>
      %263 = vector.load %alloc_12[%c2] : memref<4xi16>, vector<5xi16>
      %264 = index.maxs %c0, %56
      %265 = vector.extract_strided_slice %195 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
      %266 = arith.maxf %cst_5, %cst_8 : f16
      %267 = arith.mulf %cst_6, %cst_37 : f32
      %268 = index.ceildivs %c8, %166
      %269 = arith.subi %false_24, %false_26 : i1
      %270 = math.log1p %5 : tensor<5xf16>
      %271 = math.ctpop %17 : tensor<13x7xi32>
      %272 = scf.execute_region -> vector<4xi32> {
        %expanded = tensor.expand_shape %16 [[0], [1, 2]] : tensor<13x7xi32> into tensor<13x7x1xi32>
        %collapsed_57 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x7xf16> into tensor<91xf16>
        %278 = arith.floordivsi %false_26, %false_26 : i1
        %279 = math.log2 %cst : f16
        %280 = index.mul %c0, %48
        %281 = vector.bitcast %146 : vector<5xi16> to vector<5xi16>
        %282 = arith.maxsi %66, %false_26 : i1
        bufferization.dealloc_tensor %19 : tensor<13xf16>
        %283 = arith.subi %c1818536603_i64, %c1818536603_i64 : i64
        %284 = index.ceildivu %c6, %245
        %285 = vector.splat %rank_30 : vector<7x4xindex>
        %286 = bufferization.to_memref %14 : memref<4xi64>
        affine.store %c1377814532_i32, %alloc_46[%c3] : memref<4xi32>
        %287 = index.divu %c2, %c8
        %288 = vector.insert %c22329_i16, %127 [3] : i16 into vector<7xi16>
        %289 = arith.maxui %c22329_i16, %c22329_i16 : i16
        %290 = vector.broadcast %c1377814532_i32 : i32 to vector<4xi32>
        scf.yield %290 : vector<4xi32>
      }
      %273 = arith.addf %cst_5, %cst_0 : f16
      %274 = arith.maxsi %false_26, %false_36 : i1
      %275 = arith.cmpf ugt, %cst_1, %cst_6 : f32
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %276 = vector.transfer_read %18[%179, %c1], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x7xi16>, vector<4xi16>
      %277 = vector.broadcast %c1_i16 : i16 to vector<7xi16>
      scf.reduce(%277)  : vector<7xi16> {
      ^bb0(%arg3: vector<7xi16>, %arg4: vector<7xi16>):
        %278 = math.ctpop %2 : tensor<13x7xi32>
        %279 = vector.bitcast %190 : vector<5xi1> to vector<5xi1>
        bufferization.dealloc_tensor %2 : tensor<13x7xi32>
        %280 = math.log %extracted : f16
        %281 = math.round %86 : tensor<4xf16>
        %282 = vector.extract %144[2] : vector<5xi1>
        %283 = arith.negf %cst_0 : f16
        %dest_57, %accumulated_value_58 = vector.scan <or>, %52, %128 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4xi64>, vector<7xi64>
        %284 = vector.broadcast %c22329_i16 : i16 to vector<7xi16>
        scf.reduce.return %284 : vector<7xi16>
      }
      scf.yield
    }
    %260 = affine.vector_load %alloc_19[%205, %93] : memref<7x4xi1>, vector<4xi1>
    affine.vector_store %127, %alloc_12[%83] : memref<4xi16>, vector<7xi16>
    vector.print %20 : vector<5xf32>
    vector.print %30 : vector<1xf32>
    vector.print %52 : vector<7x4xi64>
    vector.print %61 : vector<7x4xi1>
    vector.print %64 : vector<4xf16>
    vector.print %79 : vector<4xf16>
    vector.print %87 : vector<7x4xf16>
    vector.print %98 : vector<i16>
    vector.print %100 : vector<5xf32>
    vector.print %106 : vector<4xf16>
    vector.print %107 : vector<5xf32>
    vector.print %125 : vector<7xi16>
    vector.print %126 : vector<7xi1>
    vector.print %127 : vector<7xi16>
    vector.print %128 : vector<7xi64>
    vector.print %137 : vector<5xf32>
    vector.print %138 : vector<5xf32>
    vector.print %143 : vector<5xi16>
    vector.print %144 : vector<5xi1>
    vector.print %145 : vector<5xi32>
    vector.print %146 : vector<5xi16>
    vector.print %147 : vector<5xi32>
    vector.print %155 : vector<5xi1>
    vector.print %176 : vector<4xi1>
    vector.print %190 : vector<5xi1>
    vector.print %194 : vector<4xf32>
    vector.print %195 : vector<4xf32>
    vector.print %227 : vector<5xi16>
    vector.print %230 : vector<5xi32>
    vector.print %252 : vector<7x4xi1>
    vector.print %260 : vector<4xi1>
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %c22329_i16 : i16
    vector.print %c1377814532_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1193460924_i64 : i64
    vector.print %c1818536603_i64 : i64
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c1431144665_i64 : i64
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %false_7 : i1
    vector.print %cst_8 : f16
    vector.print %false_24 : i1
    vector.print %66 : i1
    vector.print %false_26 : i1
    vector.print %extracted : f16
    vector.print %false_36 : i1
    vector.print %cst_37 : f32
    vector.print %215 : i64
    vector.print %extracted_50 : i64
    return
  }
}
