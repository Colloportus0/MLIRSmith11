module {
  func.func nested @func1(%arg0: tensor<7x14xi64>, %arg1: memref<7x14xi64>, %arg2: vector<7x14xf16>) {
    %false = arith.constant false
    %c-23788_i16 = arith.constant -23788 : i16
    %c5961_i16 = arith.constant 5961 : i16
    %cst = arith.constant 2.707200e+04 : f16
    %c1328795162_i32 = arith.constant 1328795162 : i32
    %c7737_i16 = arith.constant 7737 : i16
    %cst_0 = arith.constant 8.056000e+03 : f16
    %cst_1 = arith.constant 1.715200e+04 : f16
    %cst_2 = arith.constant 1.862400e+04 : f16
    %c1994383438_i32 = arith.constant 1994383438 : i32
    %c8867_i16 = arith.constant 8867 : i16
    %c8881_i16 = arith.constant 8881 : i16
    %c-4673_i16 = arith.constant -4673 : i16
    %c5722_i16 = arith.constant 5722 : i16
    %cst_3 = arith.constant 1.926400e+04 : f16
    %c1211594295_i32 = arith.constant 1211594295 : i32
    %0 = tensor.empty() : tensor<14x14xi64>
    %1 = tensor.empty() : tensor<14x14xf32>
    %2 = tensor.empty() : tensor<14xi64>
    %3 = tensor.empty() : tensor<14x14xi1>
    %4 = tensor.empty() : tensor<14xi32>
    %5 = tensor.empty() : tensor<7x14x16xf16>
    %6 = tensor.empty() : tensor<7x14xf16>
    %7 = tensor.empty() : tensor<7x14x16xf32>
    %8 = tensor.empty() : tensor<14x14xf16>
    %9 = tensor.empty() : tensor<7x14xi32>
    %10 = tensor.empty() : tensor<7x14x16xf16>
    %11 = tensor.empty() : tensor<14x14xi16>
    %12 = tensor.empty() : tensor<14x14xi32>
    %13 = tensor.empty() : tensor<7x14x16xi32>
    %14 = tensor.empty() : tensor<14xi32>
    %15 = tensor.empty() : tensor<14x14xi64>
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
    %alloc = memref.alloc() : memref<7x14x16xf16>
    %alloc_4 = memref.alloc() : memref<14xf32>
    %alloc_5 = memref.alloc() : memref<14xi64>
    %alloc_6 = memref.alloc() : memref<14x14xi16>
    %alloc_7 = memref.alloc() : memref<14xf32>
    %alloc_8 = memref.alloc() : memref<14x14xi1>
    %alloc_9 = memref.alloc() : memref<7x14x16xf32>
    %alloc_10 = memref.alloc() : memref<14x14xf32>
    %alloc_11 = memref.alloc() : memref<14x14xi32>
    %alloc_12 = memref.alloc() : memref<7x14x16xi64>
    %alloc_13 = memref.alloc() : memref<7x14xi64>
    %alloc_14 = memref.alloc() : memref<14xi16>
    %alloc_15 = memref.alloc() : memref<7x14x16xf32>
    %alloc_16 = memref.alloc() : memref<7x14x16xf16>
    %alloc_17 = memref.alloc() : memref<14x14xf32>
    %alloc_18 = memref.alloc() : memref<7x14x16xi1>
    %16 = tensor.empty() : tensor<7x14x16xf32>
    %17 = linalg.copy ins(%7 : tensor<7x14x16xf32>) outs(%16 : tensor<7x14x16xf32>) -> tensor<7x14x16xf32>
    %18 = tensor.empty() : tensor<14x14xi64>
    %transposed = linalg.transpose ins(%15 : tensor<14x14xi64>) outs(%18 : tensor<14x14xi64>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<7xf16>
    %reduced = linalg.reduce ins(%6 : tensor<7x14xf16>) outs(%19 : tensor<7xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %282 = arith.divf %in, %cst_2 : f16
        %283 = vector.broadcast %in : f16 to vector<14x14xf16>
        %284 = vector.shuffle %283, %283 [0, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 14, 15, 16, 18, 19, 21, 24, 27] : vector<14x14xf16>, vector<14x14xf16>
        %c1_i64 = arith.constant 1 : i64
        %285 = vector.broadcast %c1_i64 : i64 to vector<14x14xi64>
        %286 = vector.shuffle %285, %285 [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 22, 23, 24, 25, 26, 27] : vector<14x14xi64>, vector<14x14xi64>
        %287 = index.maxs %c2, %c15
        %288 = math.roundeven %cst : f16
        memref.tensor_store %10, %alloc_16 : memref<7x14x16xf16>
        %289 = math.round %6 : tensor<7x14xf16>
        %alloc_39 = memref.alloc() : memref<14x14xi32>
        memref.copy %alloc_11, %alloc_39 : memref<14x14xi32> to memref<14x14xi32>
        %cst_40 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_40 : f16
      }
    %20 = scf.parallel (%arg3, %arg4) = (%c9, %c6) to (%c12, %c0) step (%c14, %c6) init (%c5722_i16) -> i16 {
      memref.copy %alloc_10, %alloc_17 : memref<14x14xf32> to memref<14x14xf32>
      %282 = arith.minsi %c7737_i16, %c8881_i16 : i16
      %283 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%c2, %c4, %c5)
      %284 = vector.broadcast %c1328795162_i32 : i32 to vector<12xi32>
      %285 = vector.broadcast %c1328795162_i32 : i32 to vector<12x12xi32>
      %286 = vector.outerproduct %284, %284, %285 {kind = #vector.kind<xor>} : vector<12xi32>, vector<12xi32>
      %287 = vector.create_mask %c8, %c9 : vector<14x14xi1>
      %288 = math.round %16 : tensor<7x14x16xf32>
      %289 = arith.mulf %cst_3, %cst_2 : f16
      %290 = vector.create_mask %c12, %c8 : vector<14x14xi1>
      %291 = vector.shuffle %290, %290 [0, 1, 2, 3, 5, 8, 9, 11, 12, 13, 14, 15, 16, 17, 21, 22, 24, 25, 27] : vector<14x14xi1>, vector<14x14xi1>
      %extracted_39 = tensor.extract %3[%c5, %c12] : tensor<14x14xi1>
      %292 = vector.broadcast %false : i1 to vector<14xi1>
      %293 = vector.matrix_multiply %292, %292 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %c0_i32 = arith.constant 0 : i32
      %294 = vector.transfer_read %9[%c3, %c10], %c0_i32 : tensor<7x14xi32>, vector<14xi32>
      %295 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %290, %292, %292 : vector<14x14xi1>, vector<14xi1> into vector<14xi1>
      %296 = memref.realloc %alloc_5 : memref<14xi64> to memref<14xi64>
      memref.tensor_store %16, %alloc_9 : memref<7x14x16xf32>
      %297 = affine.if affine_set<(d0) : (d0 >= 0)>(%c6) -> f32 {
        %298 = arith.shrui %extracted_39, %false : i1
        %299 = arith.remui %c8881_i16, %c8881_i16 : i16
        %300 = tensor.empty() : tensor<7x14xi1>
        %301 = vector.multi_reduction <minui>, %292, %false [0] : vector<14xi1> to i1
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %293, %293, %extracted_39 : vector<1xi1>, vector<1xi1> into i1
        %303 = bufferization.to_tensor %alloc_8 : memref<14x14xi1>
        %304 = arith.floordivsi %c7737_i16, %c7737_i16 : i16
        %305 = math.cttz %300 : tensor<7x14xi1>
        %cst_40 = arith.constant 1.000000e+00 : f32
        affine.yield %cst_40 : f32
      } else {
        %cst_40 = arith.constant 1.000000e+00 : f32
        %298 = vector.broadcast %cst_40 : f32 to vector<f32>
        vector.transfer_write %298, %alloc_7[%c7] : vector<f32>, memref<14xf32>
        %299 = memref.load %alloc_9[%c4, %c5, %c7] : memref<7x14x16xf32>
        %300 = arith.minui %c1211594295_i32, %c1994383438_i32 : i32
        %301 = math.round %16 : tensor<7x14x16xf32>
        %302 = arith.xori %c0_i32, %c0_i32 : i32
        %303 = math.cttz %c5961_i16 : i16
        %304 = math.cos %16 : tensor<7x14x16xf32>
        %c0_i32_41 = arith.constant 0 : i32
        %c0_i32_42 = arith.constant 0 : i32
        %305 = vector.transfer_read %12[%c14, %c7], %c0_i32_42 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<14x14xi32>, vector<12xi32>
        affine.yield %cst_40 : f32
      }
      %c0_i16 = arith.constant 0 : i16
      scf.reduce(%c0_i16)  : i16 {
      ^bb0(%arg5: i16, %arg6: i16):
        %298 = vector.broadcast %c1211594295_i32 : i32 to vector<i32>
        %299 = vector.transfer_write %298, %4[%c12] : vector<i32>, tensor<14xi32>
        %rank_40 = tensor.rank %14 : tensor<14xi32>
        %alloc_41 = memref.alloc() : memref<7x14xi32>
        memref.tensor_store %9, %alloc_41 : memref<7x14xi32>
        %extracted_42 = tensor.extract %8[%c12, %c6] : tensor<14x14xf16>
        %300 = index.ceildivu %c9, %arg3
        %301 = vector.extract %293[0] : vector<1xi1>
        %302 = math.copysign %17, %16 : tensor<7x14x16xf32>
        %303 = arith.mulf %cst_1, %cst_1 : f16
        %c1_i16 = arith.constant 1 : i16
        scf.reduce.return %c1_i16 : i16
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_4[%c1] : memref<14xf32>, vector<12xf32>
    affine.vector_store %21, %alloc_9[%c7, %c12, %c8] : memref<7x14x16xf32>, vector<12xf32>
    %alloc_19 = memref.alloc() : memref<14xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%4, %alloc_19 : tensor<14xi32>, memref<14xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = vector.reduction <add>, %21 : vector<12xf32> into f32
    %25 = affine.if affine_set<(d0, d1, d2, d3) : (d0 * 2 >= 0, d0 * 2 + 1 >= 0, d0 * 64 == 0)>(%c5, %c14, %c14, %c5) -> f16 {
      %cast_39 = tensor.cast %8 : tensor<14x14xf16> to tensor<?x?xf16>
      memref.tensor_store %5, %alloc_16 : memref<7x14x16xf16>
      %282 = math.log2 %8 : tensor<14x14xf16>
      %cst_40 = arith.constant 1.000000e+00 : f32
      affine.store %cst_40, %alloc_15[%c7, %c4, %c9] : memref<7x14x16xf32>
      %283 = arith.shrsi %c8867_i16, %c-23788_i16 : i16
      %284 = arith.mulf %cst_0, %cst_1 : f16
      memref.tensor_store %7, %alloc_9 : memref<7x14x16xf32>
      %285 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      affine.yield %cst : f16
    } else {
      %282 = arith.maxui %c-23788_i16, %c-23788_i16 : i16
      %283 = vector.create_mask %c14, %c12 : vector<7x14xi1>
      %284 = arith.shli %c5961_i16, %c5722_i16 : i16
      %285 = math.round %5 : tensor<7x14x16xf16>
      %286 = math.log %reduced : tensor<7xf16>
      %287 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %288 = math.round %1 : tensor<14x14xf32>
      %289 = math.absf %8 : tensor<14x14xf16>
      affine.yield %cst_3 : f16
    }
    %26 = vector.broadcast %c1211594295_i32 : i32 to vector<16xi32>
    %27 = vector.transfer_write %26, %13[%c4, %c6, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<16xi32>, tensor<7x14x16xi32>
    %28 = arith.remui %c1211594295_i32, %c1328795162_i32 : i32
    %29 = math.cttz %4 : tensor<14xi32>
    %30 = math.expm1 %10 : tensor<7x14x16xf16>
    %31 = arith.ceildivsi %c1328795162_i32, %c1994383438_i32 : i32
    %32 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 8, (d1 + d2 + d1 - 32) * -2, -d1, (d1 + d2 + d1 - 32) * -2)>(%c2, %c8, %c15, %c4)
    %33 = index.divs %c15, %c12
    %34 = index.casts %c2 : index to i32
    %35 = vector.reduction <maxsi>, %26 : vector<16xi32> into i32
    %36 = vector.broadcast %cst_0 : f16 to vector<7x14xf16>
    %37 = vector.broadcast %cst_0 : f16 to vector<7xf16>
    %dest, %accumulated_value = vector.scan <add>, %36, %37 {inclusive = false, reduction_dim = 1 : i64} : vector<7x14xf16>, vector<7xf16>
    %38 = vector.load %alloc_6[%c12, %c0] : memref<14x14xi16>, vector<14xi16>
    %39 = arith.minui %c-4673_i16, %c-23788_i16 : i16
    %40 = arith.minsi %c-23788_i16, %c-4673_i16 : i16
    %collapsed = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<7x14x16xf16> into tensor<98x16xf16>
    %41 = affine.if affine_set<(d0) : (d0 - 124 >= 0, (d0 ceildiv 64) ceildiv 128 >= 0, d0 mod 64 >= 0)>(%c0) -> i16 {
      %282 = arith.remui %c-23788_i16, %c8881_i16 : i16
      %283 = vector.broadcast %c8867_i16 : i16 to vector<14x14xi16>
      %284 = vector.outerproduct %38, %38, %283 {kind = #vector.kind<xor>} : vector<14xi16>, vector<14xi16>
      memref.tensor_store %12, %alloc_11 : memref<14x14xi32>
      memref.tensor_store %5, %alloc_16 : memref<7x14x16xf16>
      %285 = index.casts %c14 : index to i32
      %286 = arith.shli %c7737_i16, %c-4673_i16 : i16
      %287 = vector.matrix_multiply %38, %38 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
      %288 = math.ctlz %4 : tensor<14xi32>
      affine.yield %c8881_i16 : i16
    } else {
      %cst_39 = arith.constant 1.000000e+00 : f32
      %cst_40 = arith.constant 0.000000e+00 : f32
      %282 = vector.transfer_read %7[%c7, %c5, %c13], %cst_40 : tensor<7x14x16xf32>, vector<f32>
      %283 = vector.broadcast %c1994383438_i32 : i32 to vector<i32>
      vector.transfer_write %283, %alloc_19[%c4] : vector<i32>, memref<14xi32>
      %284 = math.ipowi %c1328795162_i32, %c1328795162_i32 : i32
      %285 = arith.divf %cst_0, %cst_3 : f16
      %286 = math.log2 %16 : tensor<7x14x16xf32>
      %287 = math.log1p %7 : tensor<7x14x16xf32>
      %288 = math.exp %10 : tensor<7x14x16xf16>
      %289 = index.casts %c5961_i16 : i16 to index
      affine.yield %c8867_i16 : i16
    }
    %42 = arith.remsi %c8881_i16, %c7737_i16 : i16
    %43 = arith.divf %cst_0, %cst_1 : f16
    %44 = math.round %1 : tensor<14x14xf32>
    %45 = math.copysign %8, %8 : tensor<14x14xf16>
    %cst_20 = arith.constant 1.000000e+00 : f32
    %46 = vector.broadcast %cst_20 : f32 to vector<7x14xf32>
    %47 = vector.fma %46, %46, %46 : vector<7x14xf32>
    %48 = vector.shuffle %46, %46 [2, 5, 12, 13] : vector<7x14xf32>, vector<7x14xf32>
    %49 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %21, %21, %cst_20 : vector<12xf32>, vector<12xf32> into f32
    %50 = vector.bitcast %46 : vector<7x14xf32> to vector<7x14xf32>
    %51 = vector.load %alloc_8[%c10, %c0] : memref<14x14xi1>, vector<14x14xi1>
    %52 = math.tanh %reduced : tensor<7xf16>
    scf.execute_region {
      %generated_39 = tensor.generate %c2 {
      ^bb0(%arg3: index):
        %295 = vector.extract %47[5] : vector<7x14xf32>
        %296 = index.mul %c2, %c14
        %297 = memref.atomic_rmw ori %c1211594295_i32, %alloc_11[%c1, %c1] : (i32, memref<14x14xi32>) -> i32
        %cast_44 = tensor.cast %2 : tensor<14xi64> to tensor<?xi64>
        %c0_i64_45 = arith.constant 0 : i64
        tensor.yield %c0_i64_45 : i64
      } : tensor<?xi64>
      %282 = math.rsqrt %6 : tensor<7x14xf16>
      %283 = vector.shuffle %47, %50 [5, 6, 7, 8, 9, 12, 13] : vector<7x14xf32>, vector<7x14xf32>
      %284 = affine.for %arg3 = 0 to 94 iter_args(%arg4 = %c1) -> (index) {
        affine.yield %c9 : index
      }
      %285 = math.cos %6 : tensor<7x14xf16>
      %286 = math.round %reduced : tensor<7xf16>
      %generated_40 = tensor.generate %c7, %c4 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %295 = vector.transpose %47, [1, 0] : vector<7x14xf32> to vector<14x7xf32>
        %296 = arith.ori %c7737_i16, %c8881_i16 : i16
        %297 = vector.transpose %26, [0] : vector<16xi32> to vector<16xi32>
        vector.print %26 : vector<16xi32>
        tensor.yield %cst_2 : f16
      } : tensor<?x?x16xf16>
      %287 = arith.maxui %c7737_i16, %c-23788_i16 : i16
      %c0_i16 = arith.constant 0 : i16
      %288 = vector.transfer_read %11[%c1, %c9], %c0_i16 : tensor<14x14xi16>, vector<16xi16>
      vector.print %21 : vector<12xf32>
      %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %38, %38, %c0_i16 : vector<14xi16>, vector<14xi16> into i16
      %290 = vector.broadcast %cst_20 : f32 to vector<14x14xf32>
      %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %47, %47, %290 : vector<7x14xf32>, vector<7x14xf32> into vector<14x14xf32>
      %cast_41 = tensor.cast %11 : tensor<14x14xi16> to tensor<?x?xi16>
      %cst_42 = arith.constant 1.000000e+00 : f32
      %cst_43 = arith.constant 0.000000e+00 : f32
      %292 = vector.transfer_read %1[%c4, %c7], %cst_43 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<14x14xf32>, vector<14xf32>
      %293 = index.ceildivs %c0, %c7
      %294 = vector.multi_reduction <mul>, %21, %21 [] : vector<12xf32> to vector<12xf32>
      scf.yield
    }
    %generated = tensor.generate %c10 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %282 = memref.realloc %alloc_19 : memref<14xi32> to memref<16xi32>
      %283 = vector.broadcast %cst_20 : f32 to vector<7x7xf32>
      %284 = vector.transfer_write %283, %16[%arg3, %c13, %32] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x7xf32>, tensor<7x14x16xf32>
      %285 = index.maxs %c6, %c9
      %286 = arith.floordivsi %c7737_i16, %c-23788_i16 : i16
      %c1_i64 = arith.constant 1 : i64
      tensor.yield %c1_i64 : i64
    } : tensor<?x14x16xi64>
    %extracted = tensor.extract %13[%c5, %c2, %c13] : tensor<7x14x16xi32>
    %c14465_i16 = arith.constant 14465 : i16
    %53 = math.log %cst_2 : f16
    %54 = arith.remui %c1211594295_i32, %extracted : i32
    %55 = arith.ceildivsi %c-23788_i16, %c8867_i16 : i16
    %56 = scf.while (%arg3 = %51) : (vector<14x14xi1>) -> vector<14x14xi1> {
      %282 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %283 = index.divs %c5, %c15
      %284 = vector.broadcast %c5722_i16 : i16 to vector<7xi16>
      %285 = vector.transfer_write %284, %11[%32, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<14x14xi16>
      %286 = arith.cmpf olt, %cst_2, %cst_0 : f16
      %287 = vector.broadcast %cst_3 : f16 to vector<12x7xf16>
      %288 = vector.transfer_write %287, %10[%c12, %c8, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x7xf16>, tensor<7x14x16xf16>
      %289 = math.atan %5 : tensor<7x14x16xf16>
      bufferization.dealloc_tensor %7 : tensor<7x14x16xf32>
      memref.tensor_store %7, %alloc_15 : memref<7x14x16xf32>
      scf.condition(%false) %51 : vector<14x14xi1>
    } do {
    ^bb0(%arg3: vector<14x14xi1>):
      %282 = affine.for %arg4 = 0 to 127 iter_args(%arg5 = %c9) -> (index) {
        affine.yield %c3 : index
      }
      %cst_39 = arith.constant 1.000000e+00 : f32
      %cst_40 = arith.constant 0.000000e+00 : f32
      %283 = vector.transfer_read %1[%32, %c0], %cst_40 : tensor<14x14xf32>, vector<f32>
      %284 = arith.divui %c5722_i16, %c5722_i16 : i16
      %collapsed_41 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<7x14x16xf16> into tensor<98x16xf16>
      %285 = tensor.empty() : tensor<16x14xf16>
      %alloc_42 = memref.alloc() : memref<16x7x14xf16>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%285, %alloc_42 : tensor<16x14xf16>, memref<16x7x14xf16>) outs(%10 : tensor<7x14x16xf16>) {
      ^bb0(%in: f16, %in_44: f16, %out: f16):
        %296 = vector.broadcast %c8 : index to vector<12xindex>
        %297 = vector.broadcast %false : i1 to vector<12xi1>
        %c1_i64 = arith.constant 1 : i64
        %298 = vector.broadcast %c1_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_12[%c0, %c13, %c15] [%296], %297, %298 : memref<7x14x16xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %299 = arith.cmpf uno, %cst_3, %cst_2 : f16
        %300 = index.ceildivs %c12, %c13
        %301 = vector.splat %33 : vector<7x14x16xindex>
        %302 = math.tan %cst_3 : f16
        %303 = vector.reduction <mul>, %21 : vector<12xf32> into f32
        %304 = vector.insert %cst_39, %21 [7] : f32 into vector<12xf32>
        %305 = arith.cmpi ne, %c1328795162_i32, %c1328795162_i32 : i32
        %306 = index.ceildivu %300, %c2
        %307 = arith.remf %cst_2, %cst_3 : f16
        memref.tensor_store %12, %alloc_11 : memref<14x14xi32>
        %308 = vector.broadcast %c5961_i16 : i16 to vector<i16>
        vector.transfer_write %308, %alloc_14[%c15] : vector<i16>, memref<14xi16>
        %309 = affine.max affine_map<(d0, d1) -> (d0)>(%c13, %300)
        %310 = index.castu %false : i1 to index
        %311 = vector.broadcast %cst_39 : f32 to vector<14x14xf32>
        %312 = vector.fma %311, %311, %311 : vector<14x14xf32>
        %alloca_45 = memref.alloca() : memref<14xf16>
        %313 = arith.cmpi sge, %c1994383438_i32, %c1328795162_i32 : i32
        %314 = math.roundeven %6 : tensor<7x14xf16>
        %315 = bufferization.to_tensor %alloc_11 : memref<14x14xi32>
        %316 = affine.apply affine_map<(d0, d1, d2) -> (2)>(%c7, %c15, %c8)
        %cst_46 = arith.constant 1.000000e+00 : f32
        %317 = vector.transfer_read %alloc_9[%c11, %316, %c9], %cst_46 : memref<7x14x16xf32>, vector<7x12xf32>
        %318 = memref.realloc %alloc_7 : memref<14xf32> to memref<14xf32>
        %319 = index.maxu %c14, %c12
        %320 = vector.create_mask %c10, %c2 : vector<14x14xi1>
        %cast_47 = tensor.cast %23 : tensor<i32> to tensor<i32>
        %321 = vector.broadcast %c8 : index to vector<14xindex>
        %322 = vector.broadcast %false : i1 to vector<14xi1>
        %323 = vector.broadcast %cst_39 : f32 to vector<14xf32>
        vector.scatter %alloc_4[%c1] [%321], %322, %323 : memref<14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %324 = index.maxs %316, %c6
        %325 = vector.broadcast %c1328795162_i32 : i32 to vector<14xi32>
        %326 = vector.broadcast %false : i1 to vector<14xi1>
        %327 = vector.gather %14[%300] [%325], %326, %325 : tensor<14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %328 = vector.gather %alloc_19[%c7] [%325], %326, %327 : memref<14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %329 = arith.remf %cst_3, %cst_3 : f16
        %330 = bufferization.clone %alloc_7 : memref<14xf32> to memref<14xf32>
        %331 = arith.xori %c-23788_i16, %c5722_i16 : i16
        linalg.yield %cst_2 : f16
      } -> tensor<7x14x16xf16>
      %287 = index.ceildivs %c15, %c3
      %288 = arith.addi %c-4673_i16, %c8867_i16 : i16
      memref.assume_alignment %alloc_16, 1 : memref<7x14x16xf16>
      %289 = arith.shrsi %c8867_i16, %c8881_i16 : i16
      %290 = vector.bitcast %46 : vector<7x14xf32> to vector<7x14xf32>
      %291 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %292 = tensor.empty() : tensor<7x14x16xf32>
      %293 = vector.create_mask %c4, %33 : vector<14x14xi1>
      %294 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %alloc_43 = memref.alloc() : memref<14x14xi64>
      memref.tensor_store %transposed, %alloc_43 : memref<14x14xi64>
      %295 = vector.insertelement %cst_39, %291[%c15 : index] : vector<1xf32>
      scf.yield %51 : vector<14x14xi1>
    }
    %57 = vector.broadcast %false : i1 to vector<14xi1>
    %58 = vector.insert %57, %51 [9] : vector<14xi1> into vector<14x14xi1>
    %59 = index.divu %c7, %c13
    %60 = affine.load %alloc_4[%c7] : memref<14xf32>
    %61 = index.mul %c3, %c10
    %62 = arith.xori %c-4673_i16, %c5722_i16 : i16
    %63 = vector.broadcast %cst_3 : f16 to vector<7x14xf16>
    %64 = vector.broadcast %false : i1 to vector<7x14xi1>
    %65 = vector.broadcast %extracted : i32 to vector<7x14xi32>
    %66 = vector.gather %5[%c3, %c6, %c3] [%65], %64, %63 : tensor<7x14x16xf16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xf16> into vector<7x14xf16>
    %67 = vector.create_mask %c10, %c2 : vector<14x14xi1>
    %68 = arith.maxf %cst_20, %cst_20 : f32
    %69 = arith.xori %c7737_i16, %c8881_i16 : i16
    %70 = vector.shuffle %67, %67 [1, 3, 6, 7, 8, 10, 16, 17, 21, 23, 24, 27] : vector<14x14xi1>, vector<14x14xi1>
    %71 = tensor.empty() : tensor<16x7xi32>
    %72 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13, %71 : tensor<7x14x16xi32>, tensor<16x7xi32>) outs(%13 : tensor<7x14x16xi32>) {
    ^bb0(%in: i32, %in_39: i32, %out: i32):
      %282 = arith.muli %c8867_i16, %c8867_i16 : i16
      %283 = tensor.empty() : tensor<14xi32>
      %mapped_40 = linalg.map ins(%4 : tensor<14xi32>) outs(%283 : tensor<14xi32>)
        (%in_44: i32) {
          %309 = arith.maxui %in_44, %in_39 : i32
          %310 = index.ceildivu %c7, %c7
          %311 = arith.addf %cst_3, %cst_0 : f16
          %312 = arith.remui %in_39, %in : i32
          %313 = bufferization.clone %alloc_4 : memref<14xf32> to memref<14xf32>
          %314 = memref.load %alloc_11[%c5, %c6] : memref<14x14xi32>
          %315 = arith.cmpi ugt, %out, %c1328795162_i32 : i32
          %316 = vector.matrix_multiply %26, %26 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
          %317 = vector.bitcast %63 : vector<7x14xf16> to vector<7x14xi16>
          %318 = vector.broadcast %c4 : index to vector<16xindex>
          %319 = vector.broadcast %false : i1 to vector<16xi1>
          %c1_i64 = arith.constant 1 : i64
          %320 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
          vector.scatter %alloc_13[%c5, %c8] [%318], %319, %320 : memref<7x14xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
          %321 = vector.shuffle %65, %65 [1, 2, 3, 4, 6, 8, 10, 11, 13] : vector<7x14xi32>, vector<7x14xi32>
          %322 = arith.minui %extracted, %in : i32
          %323 = vector.broadcast %c2 : index to vector<16xindex>
          %324 = vector.broadcast %false : i1 to vector<16xi1>
          %325 = vector.broadcast %60 : f32 to vector<16xf32>
          vector.scatter %alloc_4[%c2] [%323], %324, %325 : memref<14xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %326 = arith.remsi %c1328795162_i32, %out : i32
          %327 = memref.atomic_rmw ori %c-23788_i16, %alloc_14[%c0] : (i16, memref<14xi16>) -> i16
          %328 = vector.broadcast %60 : f32 to vector<7x14xf32>
          %329 = vector.fma %328, %46, %46 : vector<7x14xf32>
          %330 = math.cttz %c1994383438_i32 : i32
          %331 = index.casts %in_44 : i32 to index
          %332 = arith.remui %c1328795162_i32, %in : i32
          %rank_45 = tensor.rank %4 : tensor<14xi32>
          %333 = math.powf %19, %reduced : tensor<7xf16>
          %334 = math.absi %out : i32
          %335 = math.fma %7, %7, %7 : tensor<7x14x16xf32>
          %336 = affine.max affine_map<(d0, d1) -> (d1 * -128, 0, d1 * -128, 0)>(%c0, %c15)
          %337 = arith.maxf %cst_2, %cst : f16
          %338 = vector.broadcast %60 : f32 to vector<7x14x16xf32>
          %339 = vector.fma %338, %338, %338 : vector<7x14x16xf32>
          %340 = math.round %5 : tensor<7x14x16xf16>
          %341 = math.powf %cst, %cst_2 : f16
          %342 = arith.maxsi %c-4673_i16, %c-23788_i16 : i16
          %343 = arith.xori %in_39, %in_44 : i32
          %344 = index.floordivs %33, %c0
          %345 = index.divs %c8, %c3
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %284 = affine.apply affine_map<(d0) -> ((d0 ceildiv 8) floordiv 4 + d0 * 2)>(%c14)
      %285 = math.ceil %60 : f32
      %286 = vector.extract %21[5] : vector<12xf32>
      %287 = vector.insert %in, %26 [7] : i32 into vector<16xi32>
      affine.for %arg3 = 0 to 94 {
      }
      %288 = arith.mulf %cst_0, %cst : f16
      %cast_41 = tensor.cast %16 : tensor<7x14x16xf32> to tensor<?x?x?xf32>
      %289 = vector.broadcast %60 : f32 to vector<7x14x16xf32>
      %290 = vector.fma %289, %289, %289 : vector<7x14x16xf32>
      %291 = scf.while (%arg3 = %c5722_i16) : (i16) -> i16 {
        %309 = vector.broadcast %cst_20 : f32 to vector<14x14xf32>
        %310 = vector.fma %309, %309, %309 : vector<14x14xf32>
        %311 = math.ipowi %11, %11 : tensor<14x14xi16>
        %312 = vector.broadcast %c7737_i16 : i16 to vector<14x14xi16>
        %313 = vector.outerproduct %38, %38, %312 {kind = #vector.kind<minui>} : vector<14xi16>, vector<14xi16>
        %314 = arith.remf %60, %60 : f32
        %315 = arith.cmpf olt, %60, %60 : f32
        %316 = index.sizeof
        %317 = arith.xori %extracted, %extracted : i32
        %318 = arith.ori %c1994383438_i32, %c1994383438_i32 : i32
        scf.condition(%false) %c5961_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %309 = vector.insertelement %cst_20, %21[%33 : index] : vector<12xf32>
        %310 = index.floordivs %c6, %c12
        %311 = vector.shuffle %289, %290 [2, 3, 6, 7, 8, 9, 10, 11, 12] : vector<7x14x16xf32>, vector<7x14x16xf32>
        %312 = bufferization.to_tensor %alloc_8 : memref<14x14xi1>
        %313 = arith.minsi %c5961_i16, %c5722_i16 : i16
        %314 = math.cttz %c1328795162_i32 : i32
        %315 = index.mul %c3, %310
        memref.assume_alignment %alloc_19, 4 : memref<14xi32>
        %316 = arith.divsi %c1994383438_i32, %in_39 : i32
        %317 = arith.cmpi ne, %c1994383438_i32, %c1328795162_i32 : i32
        %318 = math.cos %7 : tensor<7x14x16xf32>
        %splat = tensor.splat %c5722_i16 : tensor<7x14x16xi16>
        %319 = math.tan %7 : tensor<7x14x16xf32>
        %320 = arith.minui %c8881_i16, %c8867_i16 : i16
        %321 = math.cttz %9 : tensor<7x14xi32>
        %322 = math.round %cst_2 : f16
        scf.yield %c7737_i16 : i16
      }
      %292 = arith.remf %cst_0, %cst_2 : f16
      %293 = index.ceildivu %59, %c8
      %294 = vector.create_mask %c1, %c2, %c5 : vector<7x14x16xi1>
      %295 = vector.bitcast %51 : vector<14x14xi1> to vector<14x14xi1>
      vector.print %66 : vector<7x14xf16>
      %inserted_42 = tensor.insert %cst_1 into %10[%c4, %c9, %c3] : tensor<7x14x16xf16>
      %296 = vector.multi_reduction <add>, %26, %26 [] : vector<16xi32> to vector<16xi32>
      %297 = math.round %19 : tensor<7xf16>
      %298 = math.powf %60, %cst_20 : f32
      %299 = vector.create_mask %32, %c9 : vector<14x14xi1>
      %300 = scf.while (%arg3 = %21) : (vector<12xf32>) -> vector<12xf32> {
        %309 = bufferization.clone %alloc_15 : memref<7x14x16xf32> to memref<7x14x16xf32>
        %310 = arith.divui %c1994383438_i32, %c1994383438_i32 : i32
        %311 = vector.broadcast %cst_3 : f16 to vector<7x16xf16>
        vector.transfer_write %311, %alloc_16[%59, %c7, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x16xf16>, memref<7x14x16xf16>
        %312 = arith.divf %cst_3, %cst_1 : f16
        %313 = arith.remf %60, %cst_20 : f32
        %314 = tensor.empty() : tensor<14x14xf32>
        %315 = linalg.matmul ins(%1, %1 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%314 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %316 = arith.remsi %false, %false : i1
        %alloc_44 = memref.alloc() : memref<98x16xf16>
        memref.tensor_store %collapsed, %alloc_44 : memref<98x16xf16>
        scf.condition(%false) %21 : vector<12xf32>
      } do {
      ^bb0(%arg3: vector<12xf32>):
        %309 = bufferization.to_tensor %alloc_8 : memref<14x14xi1>
        %310 = vector.insert %57, %67 [10] : vector<14xi1> into vector<14x14xi1>
        %311 = vector.broadcast %c2 : index to vector<12xindex>
        %312 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %alloc_8[%c1, %c9] [%311], %312, %312 : memref<14x14xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %313 = arith.maxf %60, %60 : f32
        %314 = index.maxs %c1, %c1
        %315 = math.log %cst_3 : f16
        %316 = math.ipowi %309, %3 : tensor<14x14xi1>
        %317 = index.add %c0, %33
        %318 = vector.broadcast %c14 : index to vector<16xindex>
        %319 = vector.broadcast %false : i1 to vector<16xi1>
        %320 = vector.broadcast %60 : f32 to vector<16xf32>
        vector.scatter %alloc_17[%c10, %c3] [%318], %319, %320 : memref<14x14xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %321 = memref.atomic_rmw assign %60, %alloc_4[%c4] : (f32, memref<14xf32>) -> f32
        %322 = arith.shli %c8867_i16, %c8867_i16 : i16
        %323 = arith.addf %cst_20, %cst_20 : f32
        %324 = arith.mulf %cst, %cst_3 : f16
        %325 = arith.maxui %c-23788_i16, %c-23788_i16 : i16
        %326 = arith.maxsi %c5722_i16, %c5722_i16 : i16
        %327 = index.sizeof
        scf.yield %21 : vector<12xf32>
      }
      %301 = arith.muli %in, %c1328795162_i32 : i32
      %alloc_43 = memref.alloc() : memref<14x14xi64>
      memref.tensor_store %15, %alloc_43 : memref<14x14xi64>
      %302 = index.add %c13, %c8
      %303 = affine.min affine_map<(d0, d1, d2) -> (d2, d0 - d1 + 128, d0 - d1 + 128)>(%c7, %c13, %c10)
      %304 = scf.while (%arg3 = %alloc_5) : (memref<14xi64>) -> memref<14xi64> {
        %309 = math.roundeven %7 : tensor<7x14x16xf32>
        %310 = arith.remsi %c8867_i16, %c-4673_i16 : i16
        %311 = vector.extract %46[6] : vector<7x14xf32>
        %312 = arith.cmpf oeq, %cst_1, %cst : f16
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_44 = arith.constant 0 : i32
        %313 = vector.transfer_read %4[%c13], %c0_i32_44 : tensor<14xi32>, vector<i32>
        %314 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %67, %299, %67 : vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
        %315 = math.roundeven %cst_1 : f16
        %316 = vector.broadcast %cst_20 : f32 to vector<14x14x16xf32>
        %317 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %46, %290, %316 : vector<7x14xf32>, vector<7x14x16xf32> into vector<14x14x16xf32>
        scf.condition(%false) %alloc_5 : memref<14xi64>
      } do {
      ^bb0(%arg3: memref<14xi64>):
        %309 = vector.create_mask %59, %c6, %59 : vector<7x14x16xi1>
        %310 = arith.maxui %c7737_i16, %c7737_i16 : i16
        %311 = math.roundeven %cst_2 : f16
        %true = arith.constant true
        %312 = math.ctpop %c-4673_i16 : i16
        %313 = arith.negf %60 : f32
        %314 = math.exp %cst_0 : f16
        %315 = math.ceil %cst_3 : f16
        %316 = vector.reduction <add>, %57 : vector<14xi1> into i1
        %317 = math.absf %10 : tensor<7x14x16xf16>
        %318 = vector.broadcast %cst_20 : f32 to vector<14x14xf32>
        %319 = vector.fma %318, %318, %318 : vector<14x14xf32>
        %c0_i64_44 = arith.constant 0 : i64
        %c0_i64_45 = arith.constant 0 : i64
        %320 = vector.transfer_read %15[%c8, %303], %c0_i64_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi64>, vector<7xi64>
        %321 = vector.create_mask %c7, %c6 : vector<14x14xi1>
        %322 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %38, %38, %c8881_i16 : vector<14xi16>, vector<14xi16> into i16
        %323 = index.maxu %c13, %c0
        %324 = memref.load %alloc[%c3, %c0, %c11] : memref<7x14x16xf16>
        scf.yield %arg3 : memref<14xi64>
      }
      %305 = arith.divsi %c-23788_i16, %c5961_i16 : i16
      %306 = index.add %c1, %c8
      %307 = index.sizeof
      %308 = arith.floordivsi %extracted, %in_39 : i32
      affine.store %c5722_i16, %alloc_14[%c12] : memref<14xi16>
      linalg.yield %in_39 : i32
    } -> tensor<7x14x16xi32>
    memref.tensor_store %7, %alloc_9 : memref<7x14x16xf32>
    %73 = arith.minui %extracted, %c1211594295_i32 : i32
    %74 = math.log %reduced : tensor<7xf16>
    %75 = math.ipowi %13, %13 : tensor<7x14x16xi32>
    %76 = vector.bitcast %67 : vector<14x14xi1> to vector<14x14xi1>
    %77 = arith.floordivsi %c5961_i16, %c8867_i16 : i16
    %78 = arith.addf %cst_1, %cst_0 : f16
    memref.alloca_scope  {
      %282 = index.divs %c5, %c12
      scf.execute_region {
        %314 = vector.create_mask %282, %c1 : vector<14x14xi1>
        %315 = index.divs %c6, %61
        %316 = bufferization.to_memref %2 : memref<14xi64>
        %317 = arith.ori %c7737_i16, %c8881_i16 : i16
        %318 = index.mul %c12, %c14
        %319 = memref.atomic_rmw mulf %60, %alloc_15[%c4, %c1, %c10] : (f32, memref<7x14x16xf32>) -> f32
        %320 = math.absi %14 : tensor<14xi32>
        %321 = arith.ceildivsi %false, %false : i1
        %322 = math.powf %cst_1, %cst_1 : f16
        %323 = math.tanh %8 : tensor<14x14xf16>
        %324 = vector.broadcast %cst_2 : f16 to vector<f16>
        %325 = vector.transfer_write %324, %5[%c0, %c1, %32] : vector<f16>, tensor<7x14x16xf16>
        %326 = arith.muli %c1328795162_i32, %extracted : i32
        %327 = vector.broadcast %c1328795162_i32 : i32 to vector<i32>
        %328 = vector.transfer_write %327, %13[%c1, %c7, %318] : vector<i32>, tensor<7x14x16xi32>
        %329 = memref.load %alloc_5[%c0] : memref<14xi64>
        %330 = index.sizeof
        %331 = arith.divf %cst_2, %cst_2 : f16
        scf.yield
      }
      %283 = arith.cmpf one, %cst, %cst_3 : f16
      %false_39 = arith.constant false
      %284 = arith.maxf %cst_3, %cst_0 : f16
      %285 = scf.while (%arg3 = %extracted) : (i32) -> i32 {
        memref.assume_alignment %alloc_5, 16 : memref<14xi64>
        %314 = arith.remui %c5961_i16, %c5961_i16 : i16
        %315 = arith.cmpf une, %cst_3, %cst_2 : f16
        %316 = arith.shli %c1328795162_i32, %extracted : i32
        %317 = math.ctpop %9 : tensor<7x14xi32>
        %318 = math.log %17 : tensor<7x14x16xf32>
        %319 = affine.apply affine_map<(d0) -> (-(d0 + 4))>(%c11)
        %320 = vector.broadcast %c0 : index to vector<14xindex>
        vector.scatter %alloc_18[%c3, %c8, %c3] [%320], %57, %57 : memref<7x14x16xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        scf.condition(%false) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):
        %314 = memref.load %alloc_17[%c2, %c2] : memref<14x14xf32>
        %315 = math.round %collapsed : tensor<98x16xf16>
        %316 = arith.addf %cst_1, %cst_3 : f16
        %317 = vector.extract %66[2] : vector<7x14xf16>
        %318 = memref.realloc %alloc_19 : memref<14xi32> to memref<14xi32>
        affine.store %60, %alloc_4[%c6] : memref<14xf32>
        %319 = arith.muli %false, %false : i1
        %320 = math.ceil %collapsed : tensor<98x16xf16>
        %321 = vector.broadcast %c1211594295_i32 : i32 to vector<12xi32>
        %322 = vector.transfer_write %321, %9[%c2, %282] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, tensor<7x14xi32>
        %323 = arith.cmpf ule, %cst_20, %60 : f32
        %324 = vector.load %alloc_15[%c0, %c1, %c8] : memref<7x14x16xf32>, vector<7x14x16xf32>
        %325 = vector.reduction <or>, %57 : vector<14xi1> into i1
        %326 = vector.broadcast %c10 : index to vector<14xindex>
        vector.scatter %alloc_18[%c3, %c8, %c11] [%326], %57, %57 : memref<7x14x16xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %327 = index.add %282, %c2
        %328 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c0, %c9, %c12)
        %alloc_41 = memref.alloc() : memref<7x14x16xi1>
        memref.copy %alloc_18, %alloc_41 : memref<7x14x16xi1> to memref<7x14x16xi1>
        scf.yield %c1994383438_i32 : i32
      }
      %286 = memref.realloc %alloc_19 : memref<14xi32> to memref<7xi32>
      %287 = affine.if affine_set<(d0, d1, d2, d3) : (d0 * 2 >= 0, d0 * 2 + 1 >= 0, d0 * 64 == 0)>(%c0, %c11, %c3, %c3) -> memref<14xi1> {
        %314 = arith.ori %false, %false : i1
        %315 = math.atan2 %cst_1, %cst_0 : f16
        %316 = vector.broadcast %false : i1 to vector<7xi1>
        %317 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %57, %64, %316 : vector<14xi1>, vector<7x14xi1> into vector<7xi1>
        %318 = vector.broadcast %60 : f32 to vector<14xf32>
        %319 = vector.insert %318, %50 [5] : vector<14xf32> into vector<7x14xf32>
        %320 = memref.atomic_rmw addf %60, %alloc_15[%c0, %c8, %c6] : (f32, memref<7x14x16xf32>) -> f32
        %321 = math.powf %16, %7 : tensor<7x14x16xf32>
        %cast_41 = tensor.cast %0 : tensor<14x14xi64> to tensor<?x?xi64>
        %322 = vector.broadcast %60 : f32 to vector<14x14xf32>
        %323 = vector.fma %322, %322, %322 : vector<14x14xf32>
        %alloc_42 = memref.alloc() : memref<14xi1>
        affine.yield %alloc_42 : memref<14xi1>
      } else {
        %314 = vector.matrix_multiply %38, %38 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %315 = vector.load %alloc_6[%c1, %c6] : memref<14x14xi16>, vector<14xi16>
        %316 = bufferization.clone %alloc_7 : memref<14xf32> to memref<14xf32>
        %317 = vector.broadcast %cst_2 : f16 to vector<14xf16>
        %318 = vector.multi_reduction <maxf>, %63, %317 [0] : vector<7x14xf16> to vector<14xf16>
        %319 = bufferization.clone %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
        %320 = math.fpowi %7, %13 : tensor<7x14x16xf32>, tensor<7x14x16xi32>
        %cast_41 = tensor.cast %3 : tensor<14x14xi1> to tensor<?x?xi1>
        %321 = arith.maxf %cst_0, %cst_2 : f16
        %alloc_42 = memref.alloc() : memref<14xi1>
        affine.yield %alloc_42 : memref<14xi1>
      }
      %288 = vector.transpose %47, [1, 0] : vector<7x14xf32> to vector<14x7xf32>
      %289 = vector.transpose %51, [1, 0] : vector<14x14xi1> to vector<14x14xi1>
      %290 = vector.broadcast %59 : index to vector<7xindex>
      %291 = vector.broadcast %false : i1 to vector<7xi1>
      %292 = vector.broadcast %c1994383438_i32 : i32 to vector<7xi32>
      vector.scatter %alloc_19[%c3] [%290], %291, %292 : memref<14xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
      %293 = memref.atomic_rmw addi %extracted, %alloc_19[%c3] : (i32, memref<14xi32>) -> i32
      %294 = math.absf %6 : tensor<7x14xf16>
      %295 = arith.divf %cst_1, %cst_1 : f16
      %296 = arith.floordivsi %c-4673_i16, %c-23788_i16 : i16
      %297 = vector.broadcast %c8881_i16 : i16 to vector<7xi16>
      %298 = vector.transfer_write %297, %11[%282, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<14x14xi16>
      %299 = arith.minui %c5961_i16, %c8867_i16 : i16
      %300 = index.ceildivu %c13, %c5
      %301 = math.exp %1 : tensor<14x14xf32>
      %302 = arith.xori %c5722_i16, %c5961_i16 : i16
      %303 = arith.floordivsi %c1211594295_i32, %c1994383438_i32 : i32
      %304 = index.divs %c7, %61
      %305 = math.powf %cst_3, %cst_3 : f16
      memref.alloca_scope  {
        %false_41 = index.bool.constant false
        %314 = arith.cmpf ult, %cst_2, %cst_0 : f16
        %315 = math.ipowi %9, %9 : tensor<7x14xi32>
        affine.store %false, %alloc_8[%c9, %c12] : memref<14x14xi1>
        %cast_42 = tensor.cast %4 : tensor<14xi32> to tensor<?xi32>
        %316 = math.copysign %10, %10 : tensor<7x14x16xf16>
        %317 = bufferization.clone %alloc : memref<7x14x16xf16> to memref<7x14x16xf16>
        %318 = arith.cmpf une, %cst_0, %cst_2 : f16
        %319 = arith.xori %false, %false : i1
        %320 = arith.shrsi %c5961_i16, %c8867_i16 : i16
        %321 = math.powf %collapsed, %collapsed : tensor<98x16xf16>
        %322 = vector.shuffle %46, %50 [2, 3, 4, 5, 6, 7, 10] : vector<7x14xf32>, vector<7x14xf32>
        %cast_43 = tensor.cast %15 : tensor<14x14xi64> to tensor<?x?xi64>
        %323 = arith.cmpi sle, %c5961_i16, %c5722_i16 : i16
        %rank_44 = tensor.rank %19 : tensor<7xf16>
        %alloc_45 = memref.alloc() : memref<14x14xi1>
        memref.copy %alloc_8, %alloc_45 : memref<14x14xi1> to memref<14x14xi1>
        %324 = bufferization.clone %alloc_14 : memref<14xi16> to memref<14xi16>
        %325 = vector.load %alloc_11[%c9, %c6] : memref<14x14xi32>, vector<14xi32>
        %326 = memref.realloc %alloc_5 : memref<14xi64> to memref<14xi64>
        %327 = vector.extract %26[15] : vector<16xi32>
        %328 = arith.xori %c1211594295_i32, %c1211594295_i32 : i32
        %329 = arith.xori %c5722_i16, %c-4673_i16 : i16
        %330 = index.sizeof
        %331 = math.exp %8 : tensor<14x14xf16>
        %332 = math.round %6 : tensor<7x14xf16>
        %333 = vector.reduction <maxsi>, %26 : vector<16xi32> into i32
        %334 = vector.matrix_multiply %297, %38 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<7xi16>, vector<14xi16>) -> vector<2xi16>
        %335 = index.floordivs %c10, %c3
        %336 = arith.remf %cst, %cst_3 : f16
        vector.print %64 : vector<7x14xi1>
        %337 = index.add %rank_44, %c6
        %338 = index.sizeof
      }
      %alloc_40 = memref.alloc() : memref<16x7x14xf16>
      %306 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %6 : memref<16x7x14xf16>, tensor<7x14xf16>) outs(%10 : tensor<7x14x16xf16>) {
      ^bb0(%in: f16, %in_41: f16, %out: f16):
        %314 = math.log10 %7 : tensor<7x14x16xf32>
        %315 = arith.ori %false, %false : i1
        %316 = index.divs %c10, %c3
        %317 = arith.remui %c1211594295_i32, %c1328795162_i32 : i32
        %318 = vector.create_mask %304 : vector<14xi1>
        %319 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 4)>(%59, %304, %c8)
        %c1_i64 = arith.constant 1 : i64
        %c0_i64_42 = arith.constant 0 : i64
        %320 = vector.transfer_read %0[%33, %32], %c0_i64_42 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi64>, vector<7xi64>
        %true = index.bool.constant true
        %collapsed_43 = tensor.collapse_shape %3 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
        %321 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
        %322 = math.tanh %cst_1 : f16
        %323 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %21, %21, %cst_20 : vector<12xf32>, vector<12xf32> into f32
        %324 = arith.shrui %c1994383438_i32, %c1211594295_i32 : i32
        %325 = vector.broadcast %c1_i64 : i64 to vector<i64>
        %326 = vector.transfer_write %325, %15[%300, %33] : vector<i64>, tensor<14x14xi64>
        %327 = index.sizeof
        %328 = arith.floordivsi %c5961_i16, %c7737_i16 : i16
        %329 = arith.minui %c1328795162_i32, %c1994383438_i32 : i32
        %330 = vector.broadcast %c1328795162_i32 : i32 to vector<14xi32>
        %331 = vector.gather %9[%c14, %c5] [%330], %318, %330 : tensor<7x14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %332 = arith.cmpf ole, %cst, %cst_2 : f16
        %333 = arith.cmpf ule, %cst_1, %in : f16
        %334 = vector.reduction <and>, %57 : vector<14xi1> into i1
        %alloca_44 = memref.alloca() : memref<7x14x16xi64>
        %cst_45 = arith.constant 1.317648E+9 : f32
        %335 = index.divs %c12, %c1
        %336 = vector.broadcast %c-23788_i16 : i16 to vector<14xi16>
        %337 = vector.matrix_multiply %26, %331 {lhs_columns = 2 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<16xi32>, vector<14xi32>) -> vector<56xi32>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %338 = vector.transfer_read %5[%c4, %32, %59], %cst_46 : tensor<7x14x16xf16>, vector<14xf16>
        %339 = memref.realloc %alloc_5 : memref<14xi64> to memref<7xi64>
        %c0_i64_47 = arith.constant 0 : i64
        %c0_i64_48 = arith.constant 0 : i64
        %340 = vector.transfer_read %alloc_13[%c9, %59], %c0_i64_48 : memref<7x14xi64>, vector<i64>
        %341 = vector.broadcast %cst_3 : f16 to vector<7xf16>
        %dest_49, %accumulated_value_50 = vector.scan <minf>, %63, %341 {inclusive = false, reduction_dim = 1 : i64} : vector<7x14xf16>, vector<7xf16>
        %342 = vector.flat_transpose %330 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
        %343 = math.copysign %collapsed, %collapsed : tensor<98x16xf16>
        linalg.yield %cst : f16
      } -> tensor<7x14x16xf16>
      %307 = vector.matrix_multiply %57, %57 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %308 = memref.realloc %alloc_14 : memref<14xi16> to memref<14xi16>
      %309 = vector.maskedload %alloc_14[%c0], %57, %38 : memref<14xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %310 = vector.bitcast %57 : vector<14xi1> to vector<14xi1>
      %311 = arith.floordivsi %c1211594295_i32, %c1211594295_i32 : i32
      %312 = arith.maxsi %c-4673_i16, %c5722_i16 : i16
      %313 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 4)>(%c14, %c5, %c11)
    }
    %79 = memref.load %alloc_14[%c10] : memref<14xi16>
    %rank = tensor.rank %3 : tensor<14x14xi1>
    %80 = arith.remui %extracted, %c1328795162_i32 : i32
    %81 = math.cttz %15 : tensor<14x14xi64>
    %82 = math.rsqrt %collapsed : tensor<98x16xf16>
    %83 = arith.addf %cst_3, %cst : f16
    %cst_21 = arith.constant 1.000000e+00 : f16
    %cst_22 = arith.constant 0.000000e+00 : f16
    %84 = vector.transfer_read %reduced[%c11], %cst_22 : tensor<7xf16>, vector<f16>
    %85 = vector.load %alloc[%c6, %c7, %c3] : memref<7x14x16xf16>, vector<7x14x16xf16>
    %86 = vector.shuffle %63, %63 [1, 2, 3, 4, 7, 8, 11] : vector<7x14xf16>, vector<7x14xf16>
    %87 = arith.remf %60, %60 : f32
    %88 = arith.remf %cst_1, %cst_1 : f16
    %89 = vector.splat %cst_0 : vector<7x14x16xf16>
    %90 = math.sqrt %16 : tensor<7x14x16xf32>
    %91 = math.round %5 : tensor<7x14x16xf16>
    %92 = arith.remsi %c7737_i16, %c-23788_i16 : i16
    %93 = vector.broadcast %cst_20 : f32 to vector<14xf32>
    %94 = vector.fma %93, %93, %93 : vector<14xf32>
    %95 = tensor.empty() : tensor<7x14xi32>
    %96 = linalg.matmul ins(%9, %12 : tensor<7x14xi32>, tensor<14x14xi32>) outs(%95 : tensor<7x14xi32>) -> tensor<7x14xi32>
    %97 = math.copysign %reduced, %19 : tensor<7xf16>
    %alloc_23 = memref.alloc() : memref<14x14xf16>
    memref.tensor_store %8, %alloc_23 : memref<14x14xf16>
    %98 = index.sizeof
    %alloc_24 = memref.alloc() : memref<7x14x16xi1>
    memref.copy %alloc_18, %alloc_24 : memref<7x14x16xi1> to memref<7x14x16xi1>
    %99 = vector.outerproduct %57, %57, %67 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
    %100 = arith.xori %c-4673_i16, %c8881_i16 : i16
    %101 = vector.load %alloc_14[%c7] : memref<14xi16>, vector<14xi16>
    %102 = vector.broadcast %60 : f32 to vector<7x14x16xf32>
    %103 = vector.fma %102, %102, %102 : vector<7x14x16xf32>
    %104 = math.fma %cst_2, %cst_21, %cst : f16
    %105 = arith.minui %c5722_i16, %c5961_i16 : i16
    %106 = arith.cmpi slt, %c5722_i16, %c-4673_i16 : i16
    %107 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
    %108 = vector.matrix_multiply %21, %93 {lhs_columns = 2 : i32, lhs_rows = 6 : i32, rhs_columns = 7 : i32} : (vector<12xf32>, vector<14xf32>) -> vector<42xf32>
    %109 = math.copysign %cst_0, %cst_2 : f16
    %110 = arith.divsi %c7737_i16, %c7737_i16 : i16
    %111 = math.roundeven %cst_21 : f16
    %112 = math.tanh %cst_1 : f16
    %113 = math.atan2 %cst_0, %cst_3 : f16
    %114 = arith.cmpf ord, %cst_20, %cst_20 : f32
    %115 = index.mul %c11, %c12
    %116 = affine.for %arg3 = 0 to 89 iter_args(%arg4 = %38) -> (vector<14xi16>) {
      affine.yield %38 : vector<14xi16>
    }
    %cast = tensor.cast %95 : tensor<7x14xi32> to tensor<?x?xi32>
    %117 = affine.apply affine_map<(d0, d1) -> (d0)>(%61, %c3)
    %118 = arith.shli %c8881_i16, %c-4673_i16 : i16
    %119 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%117, %c3, %32, %c2)
    %120 = index.maxs %c5, %32
    %121 = index.divs %120, %c10
    %122 = affine.load %alloc_15[%c4, %c13, %c11] : memref<7x14x16xf32>
    %123 = vector.extract %26[7] : vector<16xi32>
    %124 = index.mul %c15, %c10
    %125 = arith.negf %cst_21 : f16
    %126 = vector.broadcast %98 : index to vector<7xindex>
    %127 = vector.broadcast %false : i1 to vector<7xi1>
    %128 = vector.broadcast %cst : f16 to vector<7xf16>
    vector.scatter %alloc_16[%c0, %c0, %c2] [%126], %127, %128 : memref<7x14x16xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
    %129 = vector.multi_reduction <minui>, %26, %26 [] : vector<16xi32> to vector<16xi32>
    %130 = arith.ori %c5722_i16, %c5961_i16 : i16
    %131 = math.cttz %15 : tensor<14x14xi64>
    %132 = vector.matrix_multiply %94, %108 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<14xf32>, vector<42xf32>) -> vector<3xf32>
    %133 = vector.shuffle %46, %46 [0, 6, 7, 12, 13] : vector<7x14xf32>, vector<7x14xf32>
    %134 = index.divs %61, %120
    %135 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<7x14x16xi32>) outs(%13 : tensor<7x14x16xi32>) {
    ^bb0(%in: i32, %out: i32):
      %282 = tensor.empty() : tensor<14xf32>
      %283 = math.roundeven %reduced : tensor<7xf16>
      %284 = math.log2 %8 : tensor<14x14xf16>
      %285 = affine.load %alloc_12[%c9, %c10, %c13] : memref<7x14x16xi64>
      %286 = arith.shrsi %c1211594295_i32, %c1994383438_i32 : i32
      %287 = vector.multi_reduction <minsi>, %38, %c7737_i16 [0] : vector<14xi16> to i16
      %288 = affine.min affine_map<(d0, d1, d2) -> ((d1 mod 128 + 128) ceildiv 4 - (d1 mod 128 + 128), d1 floordiv 32 - 16)>(%c8, %c15, %c0)
      %289 = vector.load %alloc_9[%c2, %c11, %c8] : memref<7x14x16xf32>, vector<14x14xf32>
      %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %26, %26, %c1211594295_i32 : vector<16xi32>, vector<16xi32> into i32
      %cst_39 = arith.constant 1.000000e+00 : f32
      %291 = vector.transfer_read %alloc_4[%288], %cst_39 : memref<14xf32>, vector<f32>
      affine.store %c-23788_i16, %alloc_6[%c7, %c8] : memref<14x14xi16>
      %292 = vector.transpose %46, [1, 0] : vector<7x14xf32> to vector<14x7xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %293 = vector.transfer_read %13[%61, %288, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<7x14x16xi32>, vector<14xi32>
      %294 = math.log2 %reduced : tensor<7xf16>
      %295 = arith.ori %c8867_i16, %c5722_i16 : i16
      %296 = vector.reduction <minf>, %21 : vector<12xf32> into f32
      %297 = arith.ori %c7737_i16, %c5961_i16 : i16
      %alloc_40 = memref.alloc() : memref<16x7x14xf32>
      %298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40 : memref<16x7x14xf32>) outs(%17 : tensor<7x14x16xf32>) {
      ^bb0(%in_43: f32, %out_44: f32):
        %310 = arith.divsi %in, %c1328795162_i32 : i32
        %311 = index.sizeof
        %312 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%119, %117, %119)
        %313 = math.round %1 : tensor<14x14xf32>
        %314 = vector.broadcast %122 : f32 to vector<7x14xf32>
        %315 = tensor.empty() : tensor<14x14xi16>
        %316 = math.cos %cst_20 : f32
        %317 = index.sizeof
        %318 = arith.xori %c1328795162_i32, %c1994383438_i32 : i32
        %319 = arith.remf %cst_0, %cst_0 : f16
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %85, %63 {inclusive = true, reduction_dim = 2 : i64} : vector<7x14x16xf16>, vector<7x14xf16>
        %320 = affine.load %alloc_8[%c11, %c10] : memref<14x14xi1>
        %321 = vector.matrix_multiply %101, %101 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %322 = vector.create_mask %c12 : vector<14xi1>
        %323 = math.log1p %17 : tensor<7x14x16xf32>
        %324 = arith.shli %c1328795162_i32, %out : i32
        %325 = arith.maxsi %320, %320 : i1
        %326 = vector.outerproduct %57, %57, %76 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
        %327 = vector.matrix_multiply %132, %93 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 14 : i32} : (vector<3xf32>, vector<14xf32>) -> vector<42xf32>
        %328 = math.roundeven %in_43 : f32
        %329 = arith.cmpf ueq, %in_43, %122 : f32
        %330 = index.mul %311, %c4
        %331 = math.roundeven %16 : tensor<7x14x16xf32>
        memref.store %122, %alloc_17[%c6, %c3] : memref<14x14xf32>
        %332 = math.ipowi %2, %2 : tensor<14xi64>
        %333 = memref.atomic_rmw minf %60, %alloc_15[%c5, %c6, %c5] : (f32, memref<7x14x16xf32>) -> f32
        %334 = math.copysign %19, %reduced : tensor<7xf16>
        %335 = arith.xori %c8867_i16, %287 : i16
        %336 = math.copysign %5, %5 : tensor<7x14x16xf16>
        %337 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c12, %c6, %c9, %312)
        %338 = vector.insertelement %cst_39, %108[%119 : index] : vector<42xf32>
        %339 = math.roundeven %16 : tensor<7x14x16xf32>
        linalg.yield %in_43 : f32
      } -> tensor<7x14x16xf32>
      %299 = arith.divf %cst_20, %122 : f32
      %300 = index.ceildivu %115, %c10
      %301 = math.round %19 : tensor<7xf16>
      memref.store %c8881_i16, %alloc_6[%c2, %c0] : memref<14x14xi16>
      %rank_41 = tensor.rank %12 : tensor<14x14xi32>
      %302 = arith.maxsi %out, %in : i32
      %303 = bufferization.clone %alloc_5 : memref<14xi64> to memref<14xi64>
      %304 = affine.for %arg3 = 0 to 29 iter_args(%arg4 = %8) -> (tensor<14x14xf16>) {
        affine.yield %8 : tensor<14x14xf16>
      }
      %305 = arith.ceildivsi %extracted, %in : i32
      %306 = affine.apply affine_map<(d0) -> (-d0)>(%119)
      %307 = tensor.empty() : tensor<7x14xi64>
      %mapped_42 = linalg.map ins(%alloc_13 : memref<7x14xi64>) outs(%307 : tensor<7x14xi64>)
        (%in_43: i64) {
          %310 = arith.floordivsi %in, %extracted : i32
          %311 = vector.load %alloc_12[%c2, %c9, %c3] : memref<7x14x16xi64>, vector<14x14xi64>
          %312 = memref.realloc %alloc_5 : memref<14xi64> to memref<7xi64>
          %313 = arith.shli %extracted, %extracted : i32
          %cast_44 = tensor.cast %13 : tensor<7x14x16xi32> to tensor<?x?x?xi32>
          %314 = math.absf %16 : tensor<7x14x16xf32>
          %315 = math.absf %17 : tensor<7x14x16xf32>
          %316 = arith.ceildivsi %c1211594295_i32, %in : i32
          bufferization.dealloc_tensor %17 : tensor<7x14x16xf32>
          %317 = vector.broadcast %285 : i64 to vector<7xi64>
          %318 = vector.broadcast %false : i1 to vector<7xi1>
          %319 = vector.maskedload %303[%c2], %318, %317 : memref<14xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
          %320 = math.cttz %12 : tensor<14x14xi32>
          %321 = index.castu %out : i32 to index
          %322 = math.atan2 %cst_20, %60 : f32
          %323 = vector.reduction <minf>, %94 : vector<14xf32> into f32
          %324 = index.add %119, %c10
          %325 = arith.floordivsi %c-23788_i16, %c8867_i16 : i16
          %326 = math.sqrt %8 : tensor<14x14xf16>
          %327 = vector.broadcast %c0 : index to vector<7xindex>
          %328 = vector.broadcast %122 : f32 to vector<7xf32>
          vector.scatter %alloc_9[%c0, %c9, %c14] [%327], %318, %328 : memref<7x14x16xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %329 = arith.remsi %c1994383438_i32, %c1994383438_i32 : i32
          %330 = arith.minui %c5722_i16, %c-23788_i16 : i16
          %331 = arith.remui %c5961_i16, %287 : i16
          %332 = arith.floordivsi %c1994383438_i32, %c1211594295_i32 : i32
          %333 = index.add %c13, %98
          %334 = vector.bitcast %317 : vector<7xi64> to vector<7xi64>
          %335 = bufferization.clone %alloc_16 : memref<7x14x16xf16> to memref<7x14x16xf16>
          %336 = index.casts %c2 : index to i32
          %337 = bufferization.to_tensor %alloc_7 : memref<14xf32>
          %338 = vector.broadcast %59 : index to vector<16xindex>
          %339 = vector.broadcast %false : i1 to vector<16xi1>
          %340 = vector.broadcast %cst_20 : f32 to vector<16xf32>
          vector.scatter %alloc_7[%c10] [%338], %339, %340 : memref<14xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %341 = math.roundeven %5 : tensor<7x14x16xf16>
          %342 = vector.broadcast %cst_0 : f16 to vector<7xf16>
          %dest_45, %accumulated_value_46 = vector.scan <add>, %66, %342 {inclusive = true, reduction_dim = 1 : i64} : vector<7x14xf16>, vector<7xf16>
          %343 = arith.remsi %287, %287 : i16
          %344 = vector.broadcast %122 : f32 to vector<7x14xf32>
          %345 = vector.fma %344, %47, %50 : vector<7x14xf32>
          %c0_i64_47 = arith.constant 0 : i64
          linalg.yield %c0_i64_47 : i64
        }
      %308 = index.mul %rank_41, %c11
      %splat = tensor.splat %285 : tensor<7x14xi64>
      %309 = math.fma %10, %5, %5 : tensor<7x14x16xf16>
      linalg.yield %c1211594295_i32 : i32
    } -> tensor<7x14x16xi32>
    memref.assume_alignment %alloc_17, 4 : memref<14x14xf32>
    %136 = arith.maxsi %c5722_i16, %c5961_i16 : i16
    %137 = arith.minui %c1328795162_i32, %c1211594295_i32 : i32
    %138 = math.cttz %c5722_i16 : i16
    %139 = math.floor %cst_2 : f16
    %140 = affine.max affine_map<(d0) -> (((((d0 ceildiv 128) ceildiv 2) ceildiv 2) mod 16) * 2 + 1, ((((d0 ceildiv 128) ceildiv 2) ceildiv 2) mod 16) * 8, ((((d0 ceildiv 128) ceildiv 2) ceildiv 2) mod 16) * 8, d0)>(%c10)
    %141 = index.casts %c11 : index to i32
    %142 = tensor.empty() : tensor<14x14xi64>
    %143 = linalg.matmul ins(%transposed, %0 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%142 : tensor<14x14xi64>) -> tensor<14x14xi64>
    %144 = arith.remui %c-23788_i16, %c8867_i16 : i16
    %145 = arith.shrsi %c8881_i16, %c-4673_i16 : i16
    %146 = affine.if affine_set<(d0) : (d0 - 124 >= 0, (d0 ceildiv 64) ceildiv 128 >= 0, d0 mod 64 >= 0)>(%c14) -> memref<7x14x16xi32> {
      %282 = vector.matrix_multiply %108, %93 {lhs_columns = 14 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<42xf32>, vector<14xf32>) -> vector<3xf32>
      %283 = vector.create_mask %c12, %c1, %c15 : vector<7x14x16xi1>
      memref.copy %alloc_9, %alloc_15 : memref<7x14x16xf32> to memref<7x14x16xf32>
      %284 = arith.cmpi sle, %c1994383438_i32, %extracted : i32
      %285 = math.powf %6, %6 : tensor<7x14xf16>
      %286 = arith.ceildivsi %c1211594295_i32, %c1994383438_i32 : i32
      %287 = arith.shli %c8867_i16, %c8867_i16 : i16
      %288 = index.castu %c14 : index to i32
      %alloc_39 = memref.alloc() : memref<7x14x16xi32>
      affine.yield %alloc_39 : memref<7x14x16xi32>
    } else {
      %282 = math.expm1 %6 : tensor<7x14xf16>
      %283 = arith.mulf %cst_2, %cst_2 : f16
      %284 = index.casts %32 : index to i32
      %285 = arith.xori %false, %false : i1
      %286 = arith.maxf %122, %cst_20 : f32
      %287 = math.round %6 : tensor<7x14xf16>
      %288 = arith.negf %cst_2 : f16
      %289 = vector.extract %57[8] : vector<14xi1>
      %alloc_39 = memref.alloc() : memref<7x14x16xi32>
      affine.yield %alloc_39 : memref<7x14x16xi32>
    }
    %147 = index.floordivs %61, %33
    %148 = index.floordivs %134, %c11
    %149 = index.sizeof
    %150 = affine.for %arg3 = 0 to 101 iter_args(%arg4 = %115) -> (index) {
      affine.yield %c14 : index
    }
    %151 = arith.mulf %122, %122 : f32
    %152 = vector.broadcast %c5961_i16 : i16 to vector<7x14xi16>
    %153 = scf.while (%arg3 = %alloc_4) : (memref<14xf32>) -> memref<14xf32> {
      %282 = bufferization.clone %alloc : memref<7x14x16xf16> to memref<7x14x16xf16>
      %283 = vector.shuffle %57, %57 [0, 3, 4, 5, 6, 7, 8, 9, 11, 15, 23, 25, 26, 27] : vector<14xi1>, vector<14xi1>
      %284 = index.add %120, %98
      %285 = arith.remui %extracted, %extracted : i32
      %286 = memref.realloc %alloc_19 : memref<14xi32> to memref<16xi32>
      memref.store %false, %alloc_18[%c3, %c12, %c2] : memref<7x14x16xi1>
      %287 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%59, %c12, %149)
      %288 = math.exp %17 : tensor<7x14x16xf32>
      scf.condition(%false) %alloc_7 : memref<14xf32>
    } do {
    ^bb0(%arg3: memref<14xf32>):
      %282 = arith.cmpi ugt, %c5722_i16, %c8867_i16 : i16
      %283 = arith.remsi %c-4673_i16, %c8867_i16 : i16
      %284 = index.mul %120, %rank
      affine.for %arg4 = 0 to 53 {
      }
      %285 = math.exp2 %reduced : tensor<7xf16>
      %286 = index.casts %c4 : index to i32
      %287 = tensor.empty() : tensor<7x14xf32>
      %288 = index.add %147, %c1
      %289 = math.log %10 : tensor<7x14x16xf16>
      %cast_39 = tensor.cast %4 : tensor<14xi32> to tensor<?xi32>
      %290 = math.powf %reduced, %reduced : tensor<7xf16>
      %291 = vector.reduction <maxf>, %94 : vector<14xf32> into f32
      %292 = memref.alloca_scope  -> (f16) {
        %296 = arith.remf %122, %60 : f32
        %297 = math.log %60 : f32
        %298 = vector.broadcast %c8867_i16 : i16 to vector<12xi16>
        %299 = vector.broadcast %false : i1 to vector<12xi1>
        %300 = vector.maskedload %alloc_6[%c10, %c7], %299, %298 : memref<14x14xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %301 = math.copysign %cst_3, %cst_0 : f16
        %302 = arith.muli %c-23788_i16, %c-4673_i16 : i16
        %303 = vector.broadcast %cst_20 : f32 to vector<42x42xf32>
        %304 = vector.outerproduct %108, %108, %303 {kind = #vector.kind<minf>} : vector<42xf32>, vector<42xf32>
        %305 = math.fma %8, %8, %8 : tensor<14x14xf16>
        %306 = bufferization.to_tensor %alloc_8 : memref<14x14xi1>
        %307 = math.round %8 : tensor<14x14xf16>
        %308 = vector.create_mask %c5, %rank, %c11 : vector<7x14x16xi1>
        %309 = arith.shli %extracted, %extracted : i32
        %310 = arith.minui %c7737_i16, %c8867_i16 : i16
        %311 = index.divs %c8, %c10
        %312 = arith.muli %c5961_i16, %c7737_i16 : i16
        %313 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %108, %108, %cst_20 : vector<42xf32>, vector<42xf32> into f32
        %314 = vector.broadcast %cst : f16 to vector<14x14xf16>
        %315 = memref.load %alloc_15[%c4, %c0, %c5] : memref<7x14x16xf32>
        %316 = math.copysign %7, %7 : tensor<7x14x16xf32>
        %317 = index.casts %c14 : index to i32
        %318 = vector.broadcast %cst_20 : f32 to vector<7x14x16xf32>
        %319 = vector.fma %318, %103, %318 : vector<7x14x16xf32>
        %320 = arith.addf %122, %cst_20 : f32
        %321 = index.mul %98, %c3
        %c0_i64_42 = arith.constant 0 : i64
        %322 = vector.broadcast %c0_i64_42 : i64 to vector<i64>
        %323 = vector.transfer_write %322, %0[%148, %311] : vector<i64>, tensor<14x14xi64>
        %324 = math.log1p %19 : tensor<7xf16>
        %325 = vector.broadcast %c8867_i16 : i16 to vector<7x14xi16>
        %326 = vector.broadcast %c1 : index to vector<16xindex>
        %327 = vector.broadcast %false : i1 to vector<16xi1>
        vector.scatter %alloc_19[%c12] [%326], %327, %26 : memref<14xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %328 = vector.bitcast %298 : vector<12xi16> to vector<12xi16>
        %329 = vector.transpose %50, [1, 0] : vector<7x14xf32> to vector<14x7xf32>
        %cast_43 = tensor.cast %4 : tensor<14xi32> to tensor<?xi32>
        %330 = arith.cmpf ole, %cst_0, %cst_0 : f16
        %331 = arith.mulf %cst_3, %cst_0 : f16
        %332 = vector.reduction <minf>, %108 : vector<42xf32> into f32
        memref.alloca_scope.return %cst : f16
      }
      %293 = vector.broadcast %122 : f32 to vector<14x14xf32>
      %294 = vector.outerproduct %93, %94, %293 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
      %alloc_40 = memref.alloc() : memref<14x14xf16>
      %295 = vector.gather %alloc_40[%120, %c6] [%65], %64, %63 : memref<14x14xf16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xf16> into vector<7x14xf16>
      %collapsed_41 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<7x14x16xi32> into tensor<98x16xi32>
      scf.yield %alloc_4 : memref<14xf32>
    }
    %154 = vector.extract %50[4] : vector<7x14xf32>
    %155 = vector.reduction <maxf>, %132 : vector<3xf32> into f32
    %156 = math.copysign %7, %17 : tensor<7x14x16xf32>
    %157 = index.mul %115, %c0
    %158 = arith.remui %c8881_i16, %c8881_i16 : i16
    %159 = math.round %122 : f32
    %160 = affine.load %alloc_17[%c4, %c14] : memref<14x14xf32>
    %161 = vector.splat %c6 : vector<14x14xindex>
    %162 = math.log1p %8 : tensor<14x14xf16>
    %163 = vector.broadcast %cst_20 : f32 to vector<7xf32>
    %dest_25, %accumulated_value_26 = vector.scan <add>, %46, %163 {inclusive = false, reduction_dim = 1 : i64} : vector<7x14xf32>, vector<7xf32>
    %164 = arith.minui %c8881_i16, %c-4673_i16 : i16
    %alloc_27 = memref.alloc() : memref<14xf16>
    %165 = vector.multi_reduction <add>, %102, %122 [0, 1, 2] : vector<7x14x16xf32> to f32
    %166 = affine.if affine_set<(d0, d1, d2, d3) : (-(d3 - 2) + d1 == 0)>(%c5, %c15, %c12, %c0) -> memref<14xi32> {
      %282 = arith.ori %c8867_i16, %c7737_i16 : i16
      %283 = arith.addf %cst_2, %cst_21 : f16
      %c0_i64_39 = arith.constant 0 : i64
      %284 = vector.broadcast %c0_i64_39 : i64 to vector<16xi64>
      vector.transfer_write %284, %alloc_13[%c1, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi64>, memref<7x14xi64>
      %285 = vector.broadcast %cst_20 : f32 to vector<7x14xf32>
      %286 = vector.fma %285, %47, %47 : vector<7x14xf32>
      affine.store %cst_20, %alloc_7[%c2] : memref<14xf32>
      %287 = bufferization.clone %alloc_12 : memref<7x14x16xi64> to memref<7x14x16xi64>
      scf.index_switch %c9 
      case 1 {
        %288 = vector.broadcast %c0_i64_39 : i64 to vector<i64>
        %289 = vector.transfer_write %288, %2[%33] : vector<i64>, tensor<14xi64>
        %cst_41 = arith.constant 1.000000e+00 : f32
        %cst_42 = arith.constant 0.000000e+00 : f32
        %290 = vector.transfer_read %17[%c2, %149, %c15], %cst_42 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<7x14x16xf32>, vector<14x12xf32>
        %291 = vector.broadcast %false : i1 to vector<12xi1>
        %292 = vector.maskedload %alloc_15[%c0, %c5, %c13], %291, %21 : memref<7x14x16xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %293 = math.absf %8 : tensor<14x14xf16>
        %294 = math.log %5 : tensor<7x14x16xf16>
        %295 = vector.extract %47[3] : vector<7x14xf32>
        %296 = index.sizeof
        %297 = arith.minui %c-4673_i16, %c5722_i16 : i16
        %298 = math.round %cst_3 : f16
        %299 = vector.broadcast %c0_i64_39 : i64 to vector<i64>
        vector.transfer_write %299, %alloc_5[%115] : vector<i64>, memref<14xi64>
        %300 = vector.broadcast %c1994383438_i32 : i32 to vector<14x14xi32>
        %301 = vector.gather %alloc_19[%c6] [%300], %76, %300 : memref<14xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
        %302 = math.tan %cst_21 : f16
        %303 = arith.maxui %c1994383438_i32, %c1328795162_i32 : i32
        %304 = arith.remui %c0_i64_39, %c0_i64_39 : i64
        %305 = index.castu %c12 : index to i32
        %306 = arith.floordivsi %c-23788_i16, %c8867_i16 : i16
        scf.yield
      }
      case 2 {
        %288 = arith.mulf %cst_3, %cst_0 : f16
        %289 = math.exp %19 : tensor<7xf16>
        %290 = arith.muli %c5961_i16, %c-4673_i16 : i16
        %291 = math.tanh %8 : tensor<14x14xf16>
        %292 = math.tan %cst_20 : f32
        %293 = arith.maxui %c5961_i16, %c5722_i16 : i16
        %294 = vector.shuffle %51, %67 [0, 1, 4, 6, 7, 10, 11, 12, 13, 15, 19, 20, 21, 22, 24, 26, 27] : vector<14x14xi1>, vector<14x14xi1>
        memref.store %cst_20, %alloc_15[%c1, %c5, %c6] : memref<7x14x16xf32>
        %295 = math.ceil %cst_2 : f16
        %296 = index.add %c6, %59
        %297 = math.exp %165 : f32
        %298 = vector.flat_transpose %154 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %299 = math.roundeven %cst_3 : f16
        %cast_41 = tensor.cast %19 : tensor<7xf16> to tensor<?xf16>
        %300 = vector.broadcast %60 : f32 to vector<14x14xf32>
        %301 = vector.outerproduct %298, %298, %300 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %302 = math.log1p %8 : tensor<14x14xf16>
        scf.yield
      }
      default {
        %288 = arith.divsi %c1328795162_i32, %extracted : i32
        %289 = affine.load %alloc_10[%c2, %c8] : memref<14x14xf32>
        %290 = vector.broadcast %c7737_i16 : i16 to vector<14x14xi16>
        %291 = vector.outerproduct %38, %38, %290 {kind = #vector.kind<minui>} : vector<14xi16>, vector<14xi16>
        %292 = arith.remui %extracted, %extracted : i32
        %293 = vector.broadcast %c11 : index to vector<7xindex>
        %294 = vector.broadcast %false : i1 to vector<7xi1>
        %295 = vector.broadcast %c0_i64_39 : i64 to vector<7xi64>
        vector.scatter %alloc_12[%c0, %c10, %c9] [%293], %294, %295 : memref<7x14x16xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %296 = math.cttz %23 : tensor<i32>
        %297 = math.fpowi %60, %extracted : f32, i32
        %298 = tensor.empty(%c4) : tensor<?xi64>
        %299 = arith.cmpf uno, %cst_0, %cst_0 : f16
        %cst_41 = arith.constant 1.000000e+00 : f16
        %cst_42 = arith.constant 0.000000e+00 : f16
        %300 = vector.transfer_read %6[%33, %149], %cst_42 : tensor<7x14xf16>, vector<f16>
        %301 = index.divs %c11, %134
        %302 = arith.ori %c-23788_i16, %c8881_i16 : i16
        %303 = math.tanh %collapsed : tensor<98x16xf16>
        %304 = vector.matrix_multiply %108, %154 {lhs_columns = 14 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<42xf32>, vector<14xf32>) -> vector<3xf32>
        %305 = vector.broadcast %160 : f32 to vector<7xf32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %286, %93, %305 : vector<7x14xf32>, vector<14xf32> into vector<7xf32>
        %307 = tensor.empty(%c6) : tensor<?x14xi64>
      }
      %alloc_40 = memref.alloc() : memref<14x14xi64>
      memref.tensor_store %18, %alloc_40 : memref<14x14xi64>
      affine.yield %alloc_19 : memref<14xi32>
    } else {
      %282 = index.divs %148, %c8
      %283 = arith.cmpf ord, %cst_3, %cst_2 : f16
      %284 = arith.minui %c-23788_i16, %c8867_i16 : i16
      %285 = affine.load %alloc_11[%c13, %c3] : memref<14x14xi32>
      %286 = vector.transpose %26, [0] : vector<16xi32> to vector<16xi32>
      %287 = vector.transpose %101, [0] : vector<14xi16> to vector<14xi16>
      %288 = math.tan %cst_0 : f16
      %dest_39, %accumulated_value_40 = vector.scan <maxf>, %47, %154 {inclusive = false, reduction_dim = 0 : i64} : vector<7x14xf32>, vector<14xf32>
      affine.yield %alloc_19 : memref<14xi32>
    }
    %cst_28 = arith.constant 2.13599616E+9 : f32
    %167 = affine.min affine_map<(d0, d1) -> (d1 * 16, d0 + d1 * 16, d1 - d0, d1 * 16)>(%c14, %119)
    %168 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%61, %c4, %c1, %32)
    %169 = index.ceildivu %33, %140
    memref.tensor_store %3, %alloc_8 : memref<14x14xi1>
    %170 = arith.maxui %c1211594295_i32, %c1994383438_i32 : i32
    %171 = memref.alloca_scope  -> (memref<7x14x16xi64>) {
      %282 = memref.load %alloc_15[%c2, %c13, %c9] : memref<7x14x16xf32>
      %283 = arith.cmpi eq, %c8881_i16, %c8881_i16 : i16
      %284 = vector.transpose %152, [0, 1] : vector<7x14xi16> to vector<7x14xi16>
      %c0_i64_39 = arith.constant 0 : i64
      %c0_i64_40 = arith.constant 0 : i64
      %285 = vector.transfer_read %142[%c6, %117], %c0_i64_40 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi64>, vector<14xi64>
      %286 = math.absf %10 : tensor<7x14x16xf16>
      %287 = vector.broadcast %60 : f32 to vector<42x42xf32>
      %288 = vector.outerproduct %108, %108, %287 {kind = #vector.kind<maxf>} : vector<42xf32>, vector<42xf32>
      %289 = memref.load %alloc_19[%c0] : memref<14xi32>
      %290 = math.absi %c5961_i16 : i16
      %291 = math.tan %10 : tensor<7x14x16xf16>
      %292 = memref.realloc %alloc_19 : memref<14xi32> to memref<7xi32>
      %293 = math.cos %6 : tensor<7x14xf16>
      %294 = vector.reduction <add>, %154 : vector<14xf32> into f32
      %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%16 : tensor<7x14x16xf32>) {
      ^bb0(%out: f32):
        %314 = vector.bitcast %65 : vector<7x14xi32> to vector<7x14xi32>
        %315 = memref.load %alloc_16[%c3, %c12, %c2] : memref<7x14x16xf16>
        %316 = arith.maxf %cst_21, %cst_3 : f16
        %317 = arith.ori %c1328795162_i32, %extracted : i32
        %318 = vector.matrix_multiply %38, %38 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %319 = math.roundeven %160 : f32
        %320 = vector.gather %6[%148, %c9] [%65], %64, %63 : tensor<7x14xf16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xf16> into vector<7x14xf16>
        %321 = arith.minui %c8867_i16, %c8867_i16 : i16
        %rank_44 = tensor.rank %11 : tensor<14x14xi16>
        %322 = math.cos %16 : tensor<7x14x16xf32>
        %alloc_45 = memref.alloc() : memref<7xf16>
        memref.tensor_store %reduced, %alloc_45 : memref<7xf16>
        %323 = vector.broadcast %cst_20 : f32 to vector<16xf32>
        %324 = vector.transfer_write %323, %1[%33, %157] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, tensor<14x14xf32>
        affine.store %c0_i64_39, %alloc_5[%c8] : memref<14xi64>
        %325 = math.ctpop %9 : tensor<7x14xi32>
        %326 = bufferization.clone %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
        %327 = math.ceil %cst_0 : f16
        %328 = math.copysign %6, %6 : tensor<7x14xf16>
        %329 = vector.multi_reduction <add>, %21, %cst_20 [0] : vector<12xf32> to f32
        %330 = affine.apply affine_map<(d0, d1, d2) -> (2)>(%134, %32, %c11)
        memref.store %c0_i64_39, %alloc_12[%c0, %c5, %c15] : memref<7x14x16xi64>
        %331 = arith.remsi %c1994383438_i32, %c1211594295_i32 : i32
        %332 = vector.broadcast %115 : index to vector<7xindex>
        %333 = vector.broadcast %false : i1 to vector<7xi1>
        %334 = vector.broadcast %c1994383438_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_11[%c10, %c13] [%332], %333, %334 : memref<14x14xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        bufferization.dealloc_tensor %19 : tensor<7xf16>
        %335 = vector.shuffle %38, %38 [2, 7, 9, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 25, 27] : vector<14xi16>, vector<14xi16>
        %336 = vector.broadcast %false : i1 to vector<7xi1>
        %337 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %64, %57, %336 : vector<7x14xi1>, vector<14xi1> into vector<7xi1>
        %338 = math.exp %329 : f32
        %339 = memref.atomic_rmw mins %c0_i64_39, %alloc_12[%c1, %c6, %c14] : (i64, memref<7x14x16xi64>) -> i64
        %inserted_46 = tensor.insert %c0_i64_39 into %0[%c1, %c6] : tensor<14x14xi64>
        %340 = bufferization.to_tensor %alloc_10 : memref<14x14xf32>
        %341 = tensor.empty() : tensor<14x14xi64>
        %342 = linalg.matmul ins(%transposed, %15 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%341 : tensor<14x14xi64>) -> tensor<14x14xi64>
        %cast_47 = tensor.cast %13 : tensor<7x14x16xi32> to tensor<?x?x?xi32>
        memref.store %122, %alloc_10[%c8, %c6] : memref<14x14xf32>
        linalg.yield %329 : f32
      } -> tensor<7x14x16xf32>
      %296 = vector.broadcast %157 : index to vector<12xindex>
      %297 = vector.broadcast %false : i1 to vector<12xi1>
      %298 = vector.broadcast %c1328795162_i32 : i32 to vector<12xi32>
      vector.scatter %alloc_11[%c6, %c1] [%296], %297, %298 : memref<14x14xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
      %299 = arith.divui %c-4673_i16, %c5722_i16 : i16
      %300 = arith.minui %c7737_i16, %c5722_i16 : i16
      %301 = math.copysign %cst_21, %cst : f16
      %302 = arith.minsi %c1994383438_i32, %extracted : i32
      %303 = arith.ori %extracted, %extracted : i32
      %304 = math.roundeven %5 : tensor<7x14x16xf16>
      %305 = math.cos %reduced : tensor<7xf16>
      memref.copy %alloc_15, %alloc_9 : memref<7x14x16xf32> to memref<7x14x16xf32>
      %306 = arith.cmpi ule, %c8881_i16, %c-4673_i16 : i16
      %307 = vector.broadcast %false : i1 to vector<14x7xi1>
      %308 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %76, %64, %307 : vector<14x14xi1>, vector<7x14xi1> into vector<14x7xi1>
      %309 = arith.shrsi %c1994383438_i32, %extracted : i32
      %collapsed_41 = tensor.collapse_shape %0 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %310 = vector.matrix_multiply %57, %57 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %inserted_42 = tensor.insert %c1211594295_i32 into %4[%c8] : tensor<14xi32>
      %311 = arith.minui %false, %false : i1
      %cst_43 = arith.constant 4.681600e+04 : f16
      %312 = arith.addi %c1211594295_i32, %extracted : i32
      %313 = arith.remf %165, %122 : f32
      memref.alloca_scope.return %alloc_12 : memref<7x14x16xi64>
    }
    %172 = math.log %5 : tensor<7x14x16xf16>
    %173 = arith.minui %c1994383438_i32, %c1994383438_i32 : i32
    %174 = arith.floordivsi %c-4673_i16, %c5722_i16 : i16
    %175 = affine.load %alloc_7[%c0] : memref<14xf32>
    %176 = vector.reduction <add>, %154 : vector<14xf32> into f32
    %177 = math.roundeven %cst_20 : f32
    %178 = tensor.empty() : tensor<7x16x14xi32>
    %179 = tensor.empty() : tensor<16x7x14xi32>
    %180 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13, %178, %179 : tensor<7x14x16xi32>, tensor<7x16x14xi32>, tensor<16x7x14xi32>) outs(%13 : tensor<7x14x16xi32>) {
    ^bb0(%in: i32, %in_39: i32, %in_40: i32, %out: i32):
      %282 = memref.atomic_rmw assign %60, %alloc_7[%c7] : (f32, memref<14xf32>) -> f32
      %283 = math.fma %8, %8, %8 : tensor<14x14xf16>
      %284 = affine.if affine_set<(d0) : (d0 >= 0)>(%c2) -> memref<14xf32> {
        %311 = index.maxs %c5, %c9
        %312 = vector.broadcast %cst_20 : f32 to vector<14xf32>
        %313 = vector.fma %312, %312, %93 : vector<14xf32>
        %314 = arith.addf %160, %122 : f32
        %315 = arith.mulf %cst_0, %cst : f16
        %316 = vector.broadcast %c1328795162_i32 : i32 to vector<7xi32>
        %dest_43, %accumulated_value_44 = vector.scan <minsi>, %65, %316 {inclusive = true, reduction_dim = 1 : i64} : vector<7x14xi32>, vector<7xi32>
        %317 = tensor.empty() : tensor<7x14xf16>
        %318 = linalg.matmul ins(%6, %8 : tensor<7x14xf16>, tensor<14x14xf16>) outs(%317 : tensor<7x14xf16>) -> tensor<7x14xf16>
        %319 = index.ceildivu %c5, %59
        %320 = arith.shrui %false, %false : i1
        affine.yield %alloc_4 : memref<14xf32>
      } else {
        %311 = vector.extract %66[2] : vector<7x14xf16>
        %312 = vector.broadcast %in_39 : i32 to vector<i32>
        %313 = vector.transfer_write %312, %9[%59, %c15] : vector<i32>, tensor<7x14xi32>
        %314 = math.log10 %cst_21 : f16
        %315 = math.cttz %c1328795162_i32 : i32
        affine.store %cst_20, %alloc_15[%c5, %c5, %c10] : memref<7x14x16xf32>
        %alloca_43 = memref.alloca() : memref<14xi64>
        %316 = index.ceildivu %c13, %c5
        %317 = arith.ceildivsi %false, %false : i1
        affine.yield %alloc_7 : memref<14xf32>
      }
      %285 = vector.insertelement %c1211594295_i32, %26[%32 : index] : vector<16xi32>
      %286 = memref.alloca_scope  -> (memref<7x14xi16>) {
        bufferization.dealloc_tensor %3 : tensor<14x14xi1>
        %311 = index.maxs %c4, %c2
        memref.store %cst_21, %alloc_16[%c3, %c6, %c6] : memref<7x14x16xf16>
        %312 = math.copysign %collapsed, %collapsed : tensor<98x16xf16>
        %313 = vector.matrix_multiply %38, %101 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %314 = vector.shuffle %94, %132 [2, 3, 6, 9, 10, 11, 12, 14, 15, 16] : vector<14xf32>, vector<3xf32>
        %315 = math.cttz %c8867_i16 : i16
        %316 = math.expm1 %17 : tensor<7x14x16xf32>
        %317 = vector.extract %152[1] : vector<7x14xi16>
        %318 = vector.bitcast %317 : vector<14xi16> to vector<14xf16>
        %319 = vector.extract %93[5] : vector<14xf32>
        %320 = arith.muli %in_39, %c1328795162_i32 : i32
        %321 = math.round %8 : tensor<14x14xf16>
        %322 = arith.minui %c1994383438_i32, %out : i32
        %323 = math.expm1 %cst : f16
        %324 = vector.bitcast %93 : vector<14xf32> to vector<14xf32>
        %325 = math.round %7 : tensor<7x14x16xf32>
        %326 = memref.realloc %alloc_5 : memref<14xi64> to memref<14xi64>
        %327 = vector.shuffle %46, %50 [0, 4, 5, 6, 7, 11] : vector<7x14xf32>, vector<7x14xf32>
        %328 = math.exp %6 : tensor<7x14xf16>
        %329 = arith.divf %cst, %cst_0 : f16
        %330 = arith.remui %c7737_i16, %c8867_i16 : i16
        %331 = arith.ori %c1994383438_i32, %c1994383438_i32 : i32
        %332 = math.powf %19, %reduced : tensor<7xf16>
        %333 = vector.create_mask %168, %c6 : vector<14x14xi1>
        %334 = math.ipowi %9, %95 : tensor<7x14xi32>
        %335 = arith.cmpf oeq, %cst_3, %cst_2 : f16
        %336 = arith.maxui %extracted, %in_40 : i32
        %337 = vector.broadcast %175 : f32 to vector<14x14xf32>
        %338 = vector.fma %337, %337, %337 : vector<14x14xf32>
        %339 = math.log %16 : tensor<7x14x16xf32>
        %340 = arith.cmpf ole, %60, %60 : f32
        %rank_43 = tensor.rank %11 : tensor<14x14xi16>
        %alloc_44 = memref.alloc() : memref<7x14xi16>
        memref.alloca_scope.return %alloc_44 : memref<7x14xi16>
      }
      %287 = vector.load %alloc_10[%c12, %c2] : memref<14x14xf32>, vector<7x14x16xf32>
      %288 = vector.matrix_multiply %57, %57 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %c-15850_i16 = arith.constant -15850 : i16
      %289 = tensor.empty() : tensor<14x7xf32>
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%289 : tensor<14x7xf32>) outs(%17 : tensor<7x14x16xf32>) {
      ^bb0(%in_43: f32, %out_44: f32):
        %311 = vector.insert %cst_20, %93 [5] : f32 into vector<14xf32>
        %312 = index.add %148, %120
        %313 = math.atan2 %16, %17 : tensor<7x14x16xf32>
        %314 = memref.atomic_rmw mulf %122, %alloc_7[%c12] : (f32, memref<14xf32>) -> f32
        %315 = arith.minui %in_39, %in : i32
        %316 = bufferization.clone %alloc_13 : memref<7x14xi64> to memref<7x14xi64>
        %317 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 4)>(%32, %c5, %c7)
        %318 = vector.insertelement %c7737_i16, %101[%117 : index] : vector<14xi16>
        %319 = math.fma %5, %5, %10 : tensor<7x14x16xf16>
        %320 = math.cttz %15 : tensor<14x14xi64>
        %321 = vector.broadcast %c8881_i16 : i16 to vector<7x14xi16>
        %322 = arith.cmpi ne, %c5722_i16, %c5961_i16 : i16
        %323 = math.floor %16 : tensor<7x14x16xf32>
        %324 = math.powf %10, %5 : tensor<7x14x16xf16>
        %325 = index.floordivs %140, %117
        %326 = arith.shrsi %c-23788_i16, %c7737_i16 : i16
        %327 = vector.outerproduct %57, %57, %51 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
        memref.store %false, %alloc_18[%c3, %c1, %c1] : memref<7x14x16xi1>
        %328 = index.maxs %167, %148
        %329 = arith.shrsi %false, %false : i1
        %330 = math.fpowi %6, %9 : tensor<7x14xf16>, tensor<7x14xi32>
        %331 = math.fma %7, %17, %7 : tensor<7x14x16xf32>
        %332 = vector.matrix_multiply %94, %21 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 6 : i32} : (vector<14xf32>, vector<12xf32>) -> vector<42xf32>
        %333 = vector.maskedload %alloc_4[%c5], %57, %93 : memref<14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %334 = math.ctlz %11 : tensor<14x14xi16>
        %335 = math.log %16 : tensor<7x14x16xf32>
        %336 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%c5, %c10, %167, %rank)
        %inserted_45 = tensor.insert %in_39 into %95[%c0, %c8] : tensor<7x14xi32>
        %337 = math.roundeven %reduced : tensor<7xf16>
        %338 = vector.bitcast %76 : vector<14x14xi1> to vector<14x14xi1>
        %339 = math.ipowi %c5961_i16, %c5961_i16 : i16
        %340 = math.log %collapsed : tensor<98x16xf16>
        linalg.yield %122 : f32
      } -> tensor<7x14x16xf32>
      %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %26, %26, %c1994383438_i32 : vector<16xi32>, vector<16xi32> into i32
      %292 = vector.shuffle %38, %101 [0, 4, 5, 6, 9, 10, 13, 14, 16, 17, 19, 22, 23, 24, 25, 26, 27] : vector<14xi16>, vector<14xi16>
      %293 = bufferization.clone %alloc_7 : memref<14xf32> to memref<14xf32>
      memref.alloca_scope  {
        %true = index.bool.constant true
        %311 = vector.splat %c11 : vector<7x14xindex>
        %312 = index.castu %in_39 : i32 to index
        %313 = memref.load %alloc_6[%c6, %c12] : memref<14x14xi16>
        %314 = vector.shuffle %93, %94 [1, 2, 5, 6, 9, 11, 12, 15, 16, 18, 19, 23, 24, 27] : vector<14xf32>, vector<14xf32>
        %315 = arith.maxsi %c-23788_i16, %c8867_i16 : i16
        %316 = vector.broadcast %175 : f32 to vector<14xf32>
        %317 = vector.fma %316, %94, %154 : vector<14xf32>
        %318 = math.round %175 : f32
        %319 = vector.broadcast %c1211594295_i32 : i32 to vector<14xi32>
        %320 = vector.gather %alloc_11[%98, %134] [%319], %57, %319 : memref<14x14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %321 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d2 + d3) ceildiv 128, d2)>(%c3, %167, %147, %312)
        %322 = arith.shrsi %extracted, %c1211594295_i32 : i32
        %323 = arith.mulf %122, %165 : f32
        %false_43 = arith.constant false
        %324 = arith.cmpi uge, %true, %true : i1
        %325 = bufferization.clone %alloc : memref<7x14x16xf16> to memref<7x14x16xf16>
        %326 = arith.ori %c8867_i16, %c5961_i16 : i16
        %327 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 8, -(d0 - 64), (d1 ceildiv 64) * 32)>(%169, %168, %312)
        %328 = index.divs %312, %169
        %329 = vector.broadcast %148 : index to vector<14xindex>
        vector.scatter %alloc_10[%c9, %c3] [%329], %57, %93 : memref<14x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %330 = math.round %cst_2 : f16
        %331 = bufferization.clone %alloc_6 : memref<14x14xi16> to memref<14x14xi16>
        %332 = vector.matrix_multiply %319, %26 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<14xi32>, vector<16xi32>) -> vector<56xi32>
        %333 = arith.divf %122, %cst_20 : f32
        %c1_i64 = arith.constant 1 : i64
        %inserted_44 = tensor.insert %c1_i64 into %15[%c3, %c5] : tensor<14x14xi64>
        %334 = index.floordivs %149, %c4
        %alloca_45 = memref.alloca() : memref<14x14xf32>
        %335 = tensor.empty() : tensor<7xi32>
        %336 = math.fpowi %reduced, %335 : tensor<7xf16>, tensor<7xi32>
        %false_46 = arith.constant false
        %337 = vector.transfer_read %alloc_18[%167, %328, %119], %false_46 : memref<7x14x16xi1>, vector<i1>
        %338 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%157, %c13, %168)
        %339 = arith.xori %in, %extracted : i32
        %c-6930_i16 = arith.constant -6930 : i16
        %340 = arith.remui %c-4673_i16, %c7737_i16 : i16
      }
      %294 = vector.create_mask %c5, %c0, %169 : vector<7x14x16xi1>
      memref.copy %alloc_12, %171 : memref<7x14x16xi64> to memref<7x14x16xi64>
      %295 = math.rsqrt %17 : tensor<7x14x16xf32>
      memref.copy %alloc_17, %alloc_10 : memref<14x14xf32> to memref<14x14xf32>
      %296 = arith.remui %in_40, %c1328795162_i32 : i32
      %297 = vector.broadcast %175 : f32 to vector<7x14x16xf32>
      %298 = vector.fma %297, %103, %297 : vector<7x14x16xf32>
      %299 = arith.floordivsi %c-23788_i16, %c5961_i16 : i16
      %300 = vector.reduction <and>, %288 : vector<1xi1> into i1
      %inserted_41 = tensor.insert %c7737_i16 into %11[%c8, %c5] : tensor<14x14xi16>
      %301 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 128)>(%120, %59, %148)
      %302 = index.casts %c1994383438_i32 : i32 to index
      %303 = vector.broadcast %false : i1 to vector<14x7xi1>
      %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %76, %64, %303 : vector<14x14xi1>, vector<7x14xi1> into vector<14x7xi1>
      %305 = math.ipowi %2, %2 : tensor<14xi64>
      %306 = vector.broadcast %c8881_i16 : i16 to vector<7x14x16xi16>
      %307 = math.powf %collapsed, %collapsed : tensor<98x16xf16>
      %308 = arith.remsi %c1211594295_i32, %c1211594295_i32 : i32
      %309 = vector.matrix_multiply %101, %38 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
      %alloc_42 = memref.alloc() : memref<7x14xi16>
      %310 = math.fma %160, %175, %165 : f32
      linalg.yield %c1211594295_i32 : i32
    } -> tensor<7x14x16xi32>
    %rank_29 = tensor.rank %12 : tensor<14x14xi32>
    %alloc_30 = memref.alloc() : memref<7x14x16xi32>
    memref.tensor_store %13, %alloc_30 : memref<7x14x16xi32>
    %181 = arith.minui %false, %false : i1
    %182 = index.mul %rank_29, %c4
    %183 = index.ceildivs %c15, %149
    %184 = tensor.empty() : tensor<14x16xf16>
    %185 = tensor.empty() : tensor<16x7xf16>
    %186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%184, %185 : tensor<14x16xf16>, tensor<16x7xf16>) outs(%10 : tensor<7x14x16xf16>) {
    ^bb0(%in: f16, %in_39: f16, %out: f16):
      %282 = arith.cmpf oeq, %cst_21, %out : f16
      %283 = vector.create_mask %rank, %120 : vector<14x14xi1>
      %284 = memref.atomic_rmw assign %175, %alloc_7[%c3] : (f32, memref<14xf32>) -> f32
      %285 = arith.maxui %c8867_i16, %c8867_i16 : i16
      %286 = math.copysign %in_39, %cst_2 : f16
      %collapsed_40 = tensor.collapse_shape %12 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
      %287 = vector.broadcast %124 : index to vector<14xindex>
      %c1_i64 = arith.constant 1 : i64
      %288 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
      vector.scatter %alloc_13[%c3, %c10] [%287], %57, %288 : memref<7x14xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
      %289 = arith.mulf %122, %165 : f32
      %290 = scf.execute_region -> tensor<14x14xi1> {
        %315 = arith.shrsi %c8867_i16, %c8881_i16 : i16
        %316 = vector.transpose %93, [0] : vector<14xf32> to vector<14xf32>
        %cast_43 = tensor.cast %7 : tensor<7x14x16xf32> to tensor<?x?x?xf32>
        %317 = affine.max affine_map<(d0) -> ((d0 ceildiv 32) mod 32)>(%c4)
        %318 = arith.ori %c5722_i16, %c8867_i16 : i16
        %319 = vector.transpose %66, [1, 0] : vector<7x14xf16> to vector<14x7xf16>
        memref.copy %171, %alloc_12 : memref<7x14x16xi64> to memref<7x14x16xi64>
        %320 = math.fma %cst_2, %cst_1, %cst_1 : f16
        %321 = arith.remf %out, %in_39 : f16
        %322 = math.ipowi %18, %transposed : tensor<14x14xi64>
        %323 = arith.cmpi sgt, %c5961_i16, %c8881_i16 : i16
        %324 = vector.extract_strided_slice %132 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
        %325 = bufferization.to_memref %0 : memref<14x14xi64>
        %326 = arith.ori %extracted, %extracted : i32
        %327 = math.round %165 : f32
        %328 = affine.apply affine_map<(d0, d1) -> (d0)>(%c15, %157)
        scf.yield %3 : tensor<14x14xi1>
      }
      %291 = vector.load %alloc_4[%c6] : memref<14xf32>, vector<7x14xf32>
      %292 = vector.bitcast %94 : vector<14xf32> to vector<14xf32>
      %293 = math.round %in : f16
      %294 = math.log %7 : tensor<7x14x16xf32>
      %295 = arith.remf %122, %122 : f32
      %296 = arith.floordivsi %false, %false : i1
      %297 = arith.shli %c1994383438_i32, %extracted : i32
      %alloc_41 = memref.alloc() : memref<7x14x16xi32>
      %298 = vector.broadcast %c1994383438_i32 : i32 to vector<14xi32>
      %299 = vector.gather %alloc_41[%c15, %c2, %32] [%298], %57, %298 : memref<7x14x16xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
      %300 = scf.execute_region -> vector<14x14xi16> {
        %315 = arith.minui %c1328795162_i32, %c1328795162_i32 : i32
        %316 = vector.shuffle %67, %64 [0, 2, 5, 6, 7, 8, 9, 12, 13, 14, 17, 19] : vector<14x14xi1>, vector<7x14xi1>
        %317 = arith.shrsi %c7737_i16, %c8881_i16 : i16
        %318 = vector.insert %160, %93 [2] : f32 into vector<14xf32>
        %319 = math.expm1 %8 : tensor<14x14xf16>
        %320 = index.sizeof
        memref.tensor_store %4, %alloc_19 : memref<14xi32>
        memref.copy %alloc_12, %171 : memref<7x14x16xi64> to memref<7x14x16xi64>
        %321 = vector.broadcast %rank_29 : index to vector<14xindex>
        vector.scatter %alloc_4[%c1] [%321], %57, %93 : memref<14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %322 = affine.min affine_map<(d0, d1) -> (0)>(%121, %147)
        %c1_i64_43 = arith.constant 1 : i64
        %inserted_44 = tensor.insert %c1_i64_43 into %generated[%c0, %c6, %c5] : tensor<?x14x16xi64>
        %323 = arith.maxf %cst_3, %cst_2 : f16
        %324 = vector.bitcast %154 : vector<14xf32> to vector<14xf32>
        %325 = arith.maxf %in_39, %cst_21 : f16
        %326 = arith.divsi %c1994383438_i32, %c1211594295_i32 : i32
        %327 = arith.muli %c8881_i16, %c-23788_i16 : i16
        %328 = vector.broadcast %c5961_i16 : i16 to vector<14x14xi16>
        scf.yield %328 : vector<14x14xi16>
      }
      %301 = arith.cmpf uge, %in_39, %in_39 : f16
      %302 = memref.atomic_rmw mulf %cst_20, %alloc_15[%c6, %c12, %c7] : (f32, memref<7x14x16xf32>) -> f32
      %303 = memref.realloc %alloc_5 : memref<14xi64> to memref<16xi64>
      %304 = arith.minui %extracted, %c1211594295_i32 : i32
      %305 = math.round %cst_21 : f16
      %306 = vector.shuffle %46, %47 [1, 2, 4, 6, 7, 8, 9] : vector<7x14xf32>, vector<7x14xf32>
      %307 = arith.remf %122, %175 : f32
      %308 = arith.negf %cst_2 : f16
      %309 = math.copysign %165, %cst_20 : f32
      %310 = memref.realloc %alloc_7 : memref<14xf32> to memref<14xf32>
      %false_42 = index.bool.constant false
      %311 = vector.broadcast %122 : f32 to vector<7x14x16xf32>
      %312 = vector.fma %311, %102, %103 : vector<7x14x16xf32>
      %313 = arith.shrui %c-4673_i16, %c-23788_i16 : i16
      %314 = tensor.empty(%119) : tensor<7x?xi64>
      linalg.yield %cst_2 : f16
    } -> tensor<7x14x16xf16>
    %187 = math.exp %reduced : tensor<7xf16>
    %188 = arith.floordivsi %c-4673_i16, %c8881_i16 : i16
    %189 = affine.load %alloc_18[%c11, %c13, %c11] : memref<7x14x16xi1>
    %190 = arith.addf %cst_0, %cst_21 : f16
    %191 = bufferization.clone %alloc_12 : memref<7x14x16xi64> to memref<7x14x16xi64>
    %c0_i64 = arith.constant 0 : i64
    %192 = vector.transfer_read %2[%157], %c0_i64 : tensor<14xi64>, vector<i64>
    %193 = math.fma %8, %8, %8 : tensor<14x14xf16>
    %194 = arith.divsi %c5961_i16, %c5722_i16 : i16
    memref.tensor_store %5, %alloc_16 : memref<7x14x16xf16>
    %195 = math.cttz %extracted : i32
    %196 = bufferization.clone %alloc_12 : memref<7x14x16xi64> to memref<7x14x16xi64>
    %197 = arith.divsi %c1211594295_i32, %c1994383438_i32 : i32
    %198 = math.copysign %7, %7 : tensor<7x14x16xf32>
    %199 = memref.atomic_rmw mins %c0_i64, %196[%c5, %c7, %c2] : (i64, memref<7x14x16xi64>) -> i64
    %200 = tensor.empty(%c5) : tensor<?x14xi32>
    memref.copy %alloc_16, %alloc : memref<7x14x16xf16> to memref<7x14x16xf16>
    %201 = math.log %cst_0 : f16
    %202 = tensor.empty() : tensor<14x14xi32>
    %mapped = linalg.map ins(%12, %12 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%202 : tensor<14x14xi32>)
      (%in: i32, %in_39: i32) {
        bufferization.dealloc_tensor %13 : tensor<7x14x16xi32>
        %282 = math.powf %cst_2, %cst : f16
        %283 = bufferization.to_memref %6 : memref<7x14xf16>
        %284 = index.divs %c7, %117
        %285 = math.log2 %1 : tensor<14x14xf32>
        memref.assume_alignment %alloc_6, 2 : memref<14x14xi16>
        %286 = math.copysign %cst_0, %cst_2 : f16
        %287 = index.ceildivu %148, %120
        %288 = arith.minui %189, %189 : i1
        %289 = math.tan %6 : tensor<7x14xf16>
        %290 = arith.cmpf ord, %165, %60 : f32
        %291 = math.round %5 : tensor<7x14x16xf16>
        %292 = vector.extract %67[6] : vector<14x14xi1>
        scf.execute_region {
          %312 = arith.remui %c-23788_i16, %c-4673_i16 : i16
          %313 = arith.floordivsi %c-23788_i16, %c8881_i16 : i16
          %314 = math.cttz %c8881_i16 : i16
          %315 = math.round %cst_2 : f16
          %316 = arith.cmpf uge, %cst_1, %cst_1 : f16
          %317 = math.fpowi %5, %13 : tensor<7x14x16xf16>, tensor<7x14x16xi32>
          %318 = math.ceil %8 : tensor<14x14xf16>
          %319 = arith.floordivsi %c0_i64, %c0_i64 : i64
          %320 = arith.muli %c-23788_i16, %c5961_i16 : i16
          %321 = arith.ori %c0_i64, %c0_i64 : i64
          %322 = math.tan %7 : tensor<7x14x16xf32>
          %alloc_42 = memref.alloc() : memref<7x14x16xi32>
          %323 = vector.broadcast %in_39 : i32 to vector<14x14xi32>
          %324 = vector.gather %alloc_42[%124, %157, %61] [%323], %67, %323 : memref<7x14x16xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
          %325 = tensor.empty() : tensor<7x14x16xi16>
          memref.tensor_store %14, %alloc_19 : memref<14xi32>
          %326 = memref.realloc %alloc_14 : memref<14xi16> to memref<14xi16>
          %327 = arith.cmpi ne, %in_39, %extracted : i32
          scf.yield
        }
        %rank_40 = tensor.rank %11 : tensor<14x14xi16>
        %293 = math.absf %19 : tensor<7xf16>
        %alloc_41 = memref.alloc() : memref<14xf16>
        %294 = tensor.empty() : tensor<16x7x14xf16>
        %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %294 : memref<14xf16>, tensor<16x7x14xf16>) outs(%10 : tensor<7x14x16xf16>) {
        ^bb0(%in_42: f16, %in_43: f16, %out: f16):
          %312 = arith.minui %extracted, %c1994383438_i32 : i32
          memref.assume_alignment %alloc_12, 2 : memref<7x14x16xi64>
          %313 = vector.transpose %107, [1, 0] : vector<14x14xf16> to vector<14x14xf16>
          %314 = math.fma %cst_0, %cst_21, %in_43 : f16
          %315 = arith.cmpi ugt, %c7737_i16, %c5961_i16 : i16
          %316 = vector.load %alloc_5[%c6] : memref<14xi64>, vector<14x14xi64>
          %317 = affine.max affine_map<(d0, d1, d2) -> (0, d2 - 8, d0 mod 128)>(%284, %c3, %c0)
          %318 = index.floordivs %140, %317
          %319 = arith.maxsi %in, %in_39 : i32
          %320 = arith.ori %c8867_i16, %c7737_i16 : i16
          %321 = arith.shrsi %c7737_i16, %c7737_i16 : i16
          %322 = memref.load %alloc_18[%c6, %c13, %c8] : memref<7x14x16xi1>
          %323 = math.atan2 %5, %5 : tensor<7x14x16xf16>
          %324 = math.powf %175, %175 : f32
          %325 = arith.addi %c1211594295_i32, %extracted : i32
          %alloca_44 = memref.alloca() : memref<14x14xi32>
          %326 = arith.ori %c5961_i16, %c8867_i16 : i16
          %327 = arith.addf %165, %122 : f32
          %328 = vector.bitcast %67 : vector<14x14xi1> to vector<14x14xi1>
          %329 = arith.remf %cst_1, %cst_21 : f16
          %330 = index.maxs %c1, %c4
          %331 = vector.create_mask %124 : vector<14xi1>
          %332 = arith.cmpi sle, %false, %false : i1
          %333 = math.atan2 %122, %175 : f32
          %334 = index.ceildivu %117, %318
          %335 = tensor.empty() : tensor<7x14xi16>
          %336 = arith.divf %out, %cst_3 : f16
          %337 = math.powf %6, %6 : tensor<7x14xf16>
          %cst_45 = arith.constant 1.000000e+00 : f32
          %338 = vector.transfer_read %1[%182, %98], %cst_45 : tensor<14x14xf32>, vector<7xf32>
          %339 = vector.broadcast %cst_21 : f16 to vector<14x16xf16>
          %340 = vector.multi_reduction <add>, %85, %339 [0] : vector<7x14x16xf16> to vector<14x16xf16>
          %341 = arith.maxui %c5961_i16, %c7737_i16 : i16
          %342 = arith.remui %c1211594295_i32, %extracted : i32
          linalg.yield %cst_0 : f16
        } -> tensor<7x14x16xf16>
        %296 = vector.load %196[%c3, %c8, %c12] : memref<7x14x16xi64>, vector<14x14xi64>
        %297 = math.copysign %cst_0, %cst_21 : f16
        %298 = math.copysign %cst, %cst_21 : f16
        %299 = arith.maxsi %c8867_i16, %c8881_i16 : i16
        %300 = arith.negf %175 : f32
        %301 = index.ceildivs %c9, %120
        memref.assume_alignment %alloc_19, 2 : memref<14xi32>
        %302 = tensor.empty(%284, %98) : tensor<?x?xi1>
        %303 = scf.while (%arg3 = %47) : (vector<7x14xf32>) -> vector<7x14xf32> {
          %312 = arith.shrsi %in_39, %in : i32
          %313 = math.cttz %c8881_i16 : i16
          %cast_42 = tensor.cast %7 : tensor<7x14x16xf32> to tensor<?x?x?xf32>
          %314 = math.ctpop %c-23788_i16 : i16
          %315 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %67, %51, %51 : vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
          %cast_43 = tensor.cast %9 : tensor<7x14xi32> to tensor<?x?xi32>
          %316 = vector.bitcast %63 : vector<7x14xf16> to vector<7x14xi16>
          %317 = math.round %7 : tensor<7x14x16xf32>
          scf.condition(%189) %46 : vector<7x14xf32>
        } do {
        ^bb0(%arg3: vector<7x14xf32>):
          %312 = math.cttz %false : i1
          %313 = math.cos %10 : tensor<7x14x16xf16>
          %314 = vector.broadcast %c10 : index to vector<12xindex>
          %315 = vector.broadcast %189 : i1 to vector<12xi1>
          %316 = vector.broadcast %c0_i64 : i64 to vector<12xi64>
          vector.scatter %alloc_12[%c3, %c9, %c2] [%314], %315, %316 : memref<7x14x16xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
          %true = arith.constant true
          %false_42 = arith.constant false
          %317 = vector.transfer_read %alloc_18[%c15, %140, %148], %false_42 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<7x14x16xi1>, vector<12xi1>
          %318 = math.rsqrt %collapsed : tensor<98x16xf16>
          %319 = affine.load %283[%c6, %c11] : memref<7x14xf16>
          %320 = math.atan2 %cst_20, %60 : f32
          %321 = math.roundeven %5 : tensor<7x14x16xf16>
          %322 = math.powf %7, %16 : tensor<7x14x16xf32>
          %323 = arith.cmpi ugt, %c7737_i16, %c5722_i16 : i16
          affine.store %c0_i64, %196[%c2, %c5, %c6] : memref<7x14x16xi64>
          %324 = math.copysign %319, %cst : f16
          %325 = math.copysign %cst_20, %175 : f32
          %326 = index.floordivs %168, %rank
          affine.store %122, %alloc_15[%c13, %c1, %c7] : memref<7x14x16xf32>
          %cst_43 = arith.constant 3.929600e+04 : f16
          scf.yield %46 : vector<7x14xf32>
        }
        %304 = math.round %cst_21 : f16
        %305 = vector.broadcast %122 : f32 to vector<3x3xf32>
        %306 = vector.outerproduct %132, %132, %305 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
        vector.print %66 : vector<7x14xf16>
        %307 = index.mul %140, %32
        %308 = arith.minui %c-23788_i16, %c8881_i16 : i16
        %309 = vector.broadcast %c0_i64 : i64 to vector<7xi64>
        %310 = vector.broadcast %189 : i1 to vector<7xi1>
        %311 = vector.maskedload %191[%c4, %c1, %c6], %310, %309 : memref<7x14x16xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %203 = arith.divui %c1211594295_i32, %c1328795162_i32 : i32
    scf.execute_region {
      %282 = vector.reduction <minf>, %132 : vector<3xf32> into f32
      %283 = math.round %5 : tensor<7x14x16xf16>
      %284 = math.exp2 %175 : f32
      %collapsed_39 = tensor.collapse_shape %15 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %285 = arith.minui %c7737_i16, %c8867_i16 : i16
      %286 = index.castu %c11 : index to i32
      %287 = math.copysign %collapsed, %collapsed : tensor<98x16xf16>
      %288 = math.exp %cst_20 : f32
      memref.assume_alignment %alloc_10, 8 : memref<14x14xf32>
      %289 = math.roundeven %165 : f32
      %290 = math.ceil %17 : tensor<7x14x16xf32>
      %291 = math.fma %122, %175, %165 : f32
      %collapsed_40 = tensor.collapse_shape %0 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %292 = affine.for %arg3 = 0 to 8 iter_args(%arg4 = %59) -> (index) {
        affine.yield %157 : index
      }
      %293 = math.log %8 : tensor<14x14xf16>
      %294 = arith.remui %c5722_i16, %c7737_i16 : i16
      scf.yield
    }
    %204 = arith.cmpi ugt, %c-23788_i16, %c-4673_i16 : i16
    %205 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + 2, d3, d0 mod 2 + 128)>(%59, %120, %98, %c3)
    %206 = affine.apply affine_map<(d0, d1) -> (d0)>(%140, %c0)
    %207 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + 1 == 0, d1 == 0, d1 >= 0, (d0 + d2) ceildiv 2 == 0)>(%c8, %c12, %c6, %c10) -> memref<7x14x16xi32> {
      %282 = arith.divsi %c8867_i16, %c5722_i16 : i16
      %283 = arith.cmpi eq, %false, %189 : i1
      %284 = arith.mulf %175, %60 : f32
      %285 = memref.alloca_scope  -> (f32) {
        %290 = memref.load %alloc_19[%c6] : memref<14xi32>
        affine.store %160, %alloc_9[%c12, %c1, %c5] : memref<7x14x16xf32>
        %291 = vector.broadcast %cst_20 : f32 to vector<42x42xf32>
        %292 = vector.outerproduct %108, %108, %291 {kind = #vector.kind<add>} : vector<42xf32>, vector<42xf32>
        %cast_40 = tensor.cast %22 : tensor<i32> to tensor<i32>
        %293 = math.fma %cst_0, %cst_1, %cst_2 : f16
        %294 = vector.broadcast %165 : f32 to vector<12xf32>
        %295 = vector.transfer_write %294, %1[%182, %120] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xf32>, tensor<14x14xf32>
        %296 = arith.cmpi sge, %c5722_i16, %c5961_i16 : i16
        %297 = arith.divsi %c1994383438_i32, %c1994383438_i32 : i32
        %298 = math.roundeven %160 : f32
        %299 = vector.load %171[%c4, %c9, %c15] : memref<7x14x16xi64>, vector<14x14xi64>
        %false_41 = index.bool.constant false
        %300 = index.maxs %c5, %c14
        %301 = vector.broadcast %122 : f32 to vector<7x14xf32>
        %302 = vector.fma %301, %47, %46 : vector<7x14xf32>
        %303 = math.atan %5 : tensor<7x14x16xf16>
        %collapsed_42 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<7x14x16xi32> into tensor<98x16xi32>
        %304 = bufferization.to_tensor %alloc_11 : memref<14x14xi32>
        %305 = vector.broadcast %cst_21 : f16 to vector<14xf16>
        %306 = vector.insert %305, %63 [4] : vector<14xf16> into vector<7x14xf16>
        %307 = math.fpowi %175, %c1211594295_i32 : f32, i32
        %308 = vector.reduction <xor>, %38 : vector<14xi16> into i16
        %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %26, %c1211594295_i32 : vector<16xi32>, vector<16xi32> into i32
        %310 = arith.ori %false, %false_41 : i1
        %311 = index.casts %c1994383438_i32 : i32 to index
        memref.copy %alloc_9, %alloc_15 : memref<7x14x16xf32> to memref<7x14x16xf32>
        %312 = arith.minui %c1211594295_i32, %extracted : i32
        %alloc_43 = memref.alloc() : memref<i32>
        memref.tensor_store %22, %alloc_43 : memref<i32>
        %313 = bufferization.clone %alloc_13 : memref<7x14xi64> to memref<7x14xi64>
        %314 = arith.ori %c7737_i16, %c8881_i16 : i16
        vector.print %294 : vector<12xf32>
        memref.store %c0_i64, %196[%c0, %c6, %c9] : memref<7x14x16xi64>
        %315 = arith.minui %c-4673_i16, %c7737_i16 : i16
        %316 = arith.ori %c7737_i16, %c-23788_i16 : i16
        %317 = memref.realloc %alloc_4 : memref<14xf32> to memref<16xf32>
        memref.alloca_scope.return %60 : f32
      }
      %286 = vector.bitcast %94 : vector<14xf32> to vector<14xf32>
      %287 = math.tanh %17 : tensor<7x14x16xf32>
      %288 = arith.maxui %c-4673_i16, %c5722_i16 : i16
      %289 = arith.shli %extracted, %c1211594295_i32 : i32
      %alloc_39 = memref.alloc() : memref<7x14x16xi32>
      affine.yield %alloc_39 : memref<7x14x16xi32>
    } else {
      %282 = index.mul %c0, %c10
      %283 = math.log2 %5 : tensor<7x14x16xf16>
      %284 = arith.minui %c0_i64, %c0_i64 : i64
      %true = index.bool.constant true
      %285 = arith.floordivsi %true, %false : i1
      bufferization.dealloc_tensor %2 : tensor<14xi64>
      %286 = math.log10 %17 : tensor<7x14x16xf32>
      %287 = arith.addf %cst_20, %160 : f32
      %alloc_39 = memref.alloc() : memref<7x14x16xi32>
      affine.yield %alloc_39 : memref<7x14x16xi32>
    }
    %208 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2 + d0 - 1)>(%61, %168, %32, %c7)
    %209 = math.exp %1 : tensor<14x14xf32>
    %210 = vector.broadcast %c0_i64 : i64 to vector<7xi64>
    %211 = vector.broadcast %189 : i1 to vector<7xi1>
    %212 = vector.maskedload %171[%c6, %c4, %c0], %211, %210 : memref<7x14x16xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
    %213 = math.log %reduced : tensor<7xf16>
    %214 = tensor.empty() : tensor<i32>
    %mapped_31 = linalg.map ins(%23, %22 : tensor<i32>, tensor<i32>) outs(%214 : tensor<i32>)
      (%in: i32, %in_39: i32) {
        %282 = math.log %10 : tensor<7x14x16xf16>
        %283 = vector.broadcast %cst_20 : f32 to vector<14xf32>
        %284 = vector.broadcast %60 : f32 to vector<14x14xf32>
        %285 = vector.fma %284, %284, %284 : vector<14x14xf32>
        %286 = math.cos %19 : tensor<7xf16>
        %287 = arith.muli %c7737_i16, %c7737_i16 : i16
        %288 = scf.while (%arg3 = %63) : (vector<7x14xf16>) -> vector<7x14xf16> {
          %306 = vector.load %alloc_8[%c0, %c0] : memref<14x14xi1>, vector<7x14x16xi1>
          %307 = arith.muli %c1211594295_i32, %c1994383438_i32 : i32
          %308 = memref.load %alloc_15[%c5, %c6, %c0] : memref<7x14x16xf32>
          %cast_44 = tensor.cast %6 : tensor<7x14xf16> to tensor<?x?xf16>
          %alloc_45 = memref.alloc() : memref<7x14x16xi16>
          %309 = vector.broadcast %c5722_i16 : i16 to vector<14x14xi16>
          %310 = vector.broadcast %in_39 : i32 to vector<14x14xi32>
          %311 = vector.gather %alloc_45[%182, %61, %32] [%310], %51, %309 : memref<7x14x16xi16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi16> into vector<14x14xi16>
          %312 = affine.max affine_map<(d0, d1) -> (-d0 + 16, (d0 * -4) floordiv 8)>(%168, %c2)
          %313 = vector.broadcast %cst : f16 to vector<14xf16>
          %dest_46, %accumulated_value_47 = vector.scan <mul>, %63, %313 {inclusive = false, reduction_dim = 0 : i64} : vector<7x14xf16>, vector<14xf16>
          %314 = arith.maxui %c-23788_i16, %c8867_i16 : i16
          scf.condition(%false) %66 : vector<7x14xf16>
        } do {
        ^bb0(%arg3: vector<7x14xf16>):
          %306 = vector.broadcast %c1994383438_i32 : i32 to vector<14x14xi32>
          %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %65, %65, %306 : vector<7x14xi32>, vector<7x14xi32> into vector<14x14xi32>
          %308 = arith.divsi %c8881_i16, %c-4673_i16 : i16
          %309 = vector.transpose %284, [1, 0] : vector<14x14xf32> to vector<14x14xf32>
          %310 = arith.shli %189, %false : i1
          %311 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %211, %64, %57 : vector<7xi1>, vector<7x14xi1> into vector<14xi1>
          %312 = vector.broadcast %in_39 : i32 to vector<i32>
          vector.transfer_write %312, %alloc_11[%c13, %c13] : vector<i32>, memref<14x14xi32>
          %313 = vector.reduction <maxf>, %93 : vector<14xf32> into f32
          %314 = arith.maxui %c8867_i16, %c8881_i16 : i16
          %315 = arith.divsi %extracted, %in_39 : i32
          %316 = math.round %160 : f32
          %317 = arith.ceildivsi %c1328795162_i32, %extracted : i32
          %alloc_44 = memref.alloc() : memref<98x16xf16>
          memref.tensor_store %collapsed, %alloc_44 : memref<98x16xf16>
          %318 = vector.broadcast %160 : f32 to vector<14x14xf32>
          %319 = vector.fma %318, %285, %318 : vector<14x14xf32>
          vector.print %154 : vector<14xf32>
          %320 = vector.matrix_multiply %21, %132 {lhs_columns = 3 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<3xf32>) -> vector<4xf32>
          %321 = vector.broadcast %cst_0 : f16 to vector<14xf16>
          %dest_45, %accumulated_value_46 = vector.scan <add>, %107, %321 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf16>, vector<14xf16>
          scf.yield %66 : vector<7x14xf16>
        }
        %cast_40 = tensor.cast %22 : tensor<i32> to tensor<i32>
        %289 = bufferization.clone %196 : memref<7x14x16xi64> to memref<7x14x16xi64>
        memref.tensor_store %2, %alloc_5 : memref<14xi64>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %290 = vector.transfer_read %2[%c13], %c0_i64_41 : tensor<14xi64>, vector<i64>
        %291 = index.sizeof
        %292 = arith.shli %c8881_i16, %c-4673_i16 : i16
        %293 = math.powf %cst_0, %cst : f16
        %294 = index.add %140, %c8
        %295 = arith.addi %189, %189 : i1
        memref.store %175, %alloc_15[%c6, %c3, %c6] : memref<7x14x16xf32>
        %alloc_42 = memref.alloc() : memref<7x14xi16>
        %296 = arith.shli %false, %189 : i1
        %297 = arith.floordivsi %c5722_i16, %c8867_i16 : i16
        %298 = math.roundeven %8 : tensor<14x14xf16>
        %299 = affine.if affine_set<(d0, d1, d2, d3) : (-(d3 - 2) + d1 == 0)>(%c1, %c3, %c11, %c9) -> memref<14xi64> {
          %306 = arith.ori %c1328795162_i32, %c1211594295_i32 : i32
          %307 = arith.minui %c5961_i16, %c8867_i16 : i16
          %308 = vector.broadcast %extracted : i32 to vector<7x14xi32>
          %309 = tensor.empty() : tensor<14x14xi16>
          %310 = linalg.matmul ins(%11, %11 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%309 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %311 = math.round %8 : tensor<14x14xf16>
          %312 = arith.ceildivsi %c-23788_i16, %c7737_i16 : i16
          %313 = memref.atomic_rmw andi %c5722_i16, %alloc_6[%c12, %c2] : (i16, memref<14x14xi16>) -> i16
          memref.tensor_store %4, %alloc_19 : memref<14xi32>
          affine.yield %alloc_5 : memref<14xi64>
        } else {
          %306 = math.absf %5 : tensor<7x14x16xf16>
          %307 = math.powf %19, %reduced : tensor<7xf16>
          %true = index.bool.constant true
          %308 = affine.max affine_map<(d0) -> (d0 * 128, d0 + 16, d0 * 2)>(%167)
          %309 = arith.muli %c1328795162_i32, %in_39 : i32
          %inserted_44 = tensor.insert %c1_i64 into %0[%c3, %c10] : tensor<14x14xi64>
          %310 = math.tan %cst_20 : f32
          affine.store %cst_20, %alloc_10[%c2, %c2] : memref<14x14xf32>
          affine.yield %alloc_5 : memref<14xi64>
        }
        memref.tensor_store %16, %alloc_15 : memref<7x14x16xf32>
        %300 = math.expm1 %6 : tensor<7x14xf16>
        memref.alloca_scope  {
          %collapsed_44 = tensor.collapse_shape %202 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
          %306 = arith.minui %c7737_i16, %c7737_i16 : i16
          %alloc_45 = memref.alloc() : memref<14x14xi32>
          memref.copy %alloc_11, %alloc_45 : memref<14x14xi32> to memref<14x14xi32>
          %307 = affine.max affine_map<(d0) -> (-(d0 - 64) - (d0 - 32), d0 - 32, d0 * 4, d0 floordiv 8 - 8)>(%117)
          %308 = arith.maxui %c1328795162_i32, %in : i32
          %c1_i64_46 = arith.constant 1 : i64
          %309 = vector.transfer_read %0[%169, %59], %c1_i64_46 : tensor<14x14xi64>, vector<14xi64>
          %c40263250_i64 = arith.constant 40263250 : i64
          %310 = math.log %7 : tensor<7x14x16xf32>
          %311 = math.copysign %cst_3, %cst_21 : f16
          %312 = arith.xori %c-23788_i16, %c-23788_i16 : i16
          %313 = math.log2 %165 : f32
          %314 = bufferization.clone %alloc_18 : memref<7x14x16xi1> to memref<7x14x16xi1>
          %315 = math.fma %6, %6, %6 : tensor<7x14xf16>
          %316 = math.copysign %8, %8 : tensor<14x14xf16>
          %317 = math.fma %8, %8, %8 : tensor<14x14xf16>
          %318 = arith.remf %cst_1, %cst_21 : f16
          %319 = math.fpowi %8, %12 : tensor<14x14xf16>, tensor<14x14xi32>
          %320 = vector.load %alloc_8[%c9, %c8] : memref<14x14xi1>, vector<14xi1>
          %c1994549604_i32 = arith.constant 1994549604 : i32
          %321 = vector.broadcast %c1211594295_i32 : i32 to vector<i32>
          %322 = vector.transfer_write %321, %12[%98, %c7] : vector<i32>, tensor<14x14xi32>
          %323 = math.tanh %122 : f32
          %324 = arith.cmpf ule, %cst_21, %cst_21 : f16
          %alloca_47 = memref.alloca() : memref<7x14x16xf32>
          %325 = math.tanh %cst_1 : f16
          %326 = index.ceildivu %149, %307
          %false_48 = arith.constant false
          %327 = vector.transfer_read %alloc_18[%157, %c5, %c4], %false_48 : memref<7x14x16xi1>, vector<16x16xi1>
          %cst_49 = arith.constant 1.000000e+00 : f16
          %328 = vector.transfer_read %alloc[%294, %291, %119], %cst_49 : memref<7x14x16xf16>, vector<f16>
          %329 = index.add %c11, %c10
          %330 = vector.load %alloc[%c2, %c11, %c15] : memref<7x14x16xf16>, vector<7x14x16xf16>
          %331 = vector.broadcast %165 : f32 to vector<14xf32>
          %332 = vector.fma %331, %94, %154 : vector<14xf32>
          %333 = arith.shrsi %c1994383438_i32, %in_39 : i32
          %334 = index.casts %c3 : index to i32
        }
        %301 = arith.mulf %122, %122 : f32
        %inserted_43 = tensor.insert %c0_i64 into %2[%c12] : tensor<14xi64>
        %302 = bufferization.clone %171 : memref<7x14x16xi64> to memref<7x14x16xi64>
        %303 = memref.realloc %alloc_4 : memref<14xf32> to memref<12xf32>
        %304 = math.copysign %7, %17 : tensor<7x14x16xf32>
        memref.store %c0_i64, %302[%c1, %c12, %c7] : memref<7x14x16xi64>
        %305 = arith.xori %189, %false : i1
        scf.index_switch %c11 
        case 1 {
          %306 = math.ipowi %c1_i64, %c0_i64 : i64
          %307 = arith.ori %c0_i64, %c1_i64 : i64
          %308 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%147, %c3, %182)
          %309 = math.ceil %cst : f16
          %310 = math.roundeven %10 : tensor<7x14x16xf16>
          %collapsed_44 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<7x14x16xf32> into tensor<98x16xf32>
          %311 = memref.load %alloc_14[%c9] : memref<14xi16>
          %312 = arith.ori %c5722_i16, %c-4673_i16 : i16
          %313 = vector.broadcast %false : i1 to vector<7x14x16xi1>
          %314 = vector.broadcast %in : i32 to vector<7x14x16xi32>
          %315 = vector.gather %5[%33, %120, %c7] [%314], %313, %85 : tensor<7x14x16xf16>, vector<7x14x16xi32>, vector<7x14x16xi1>, vector<7x14x16xf16> into vector<7x14x16xf16>
          %316 = bufferization.clone %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
          %317 = math.round %10 : tensor<7x14x16xf16>
          memref.tensor_store %4, %alloc_19 : memref<14xi32>
          %318 = arith.remf %cst_2, %cst_1 : f16
          %319 = arith.minui %false, %189 : i1
          %320 = arith.maxui %c5961_i16, %c8867_i16 : i16
          %321 = index.sizeof
          scf.yield
        }
        case 2 {
          %306 = arith.ori %c8867_i16, %c-23788_i16 : i16
          %307 = math.roundeven %collapsed : tensor<98x16xf16>
          %308 = vector.broadcast %60 : f32 to vector<14x14xf32>
          %309 = vector.fma %308, %285, %285 : vector<14x14xf32>
          %310 = arith.maxui %c8867_i16, %c5961_i16 : i16
          %311 = arith.floordivsi %false, %false : i1
          %312 = index.casts %c2 : index to i32
          %c1724956536_i64 = arith.constant 1724956536 : i64
          %313 = affine.min affine_map<(d0, d1) -> (-(d0 + d1 - d0 floordiv 4 + 32))>(%140, %c1)
          %314 = math.roundeven %5 : tensor<7x14x16xf16>
          %315 = vector.gather %8[%c4, %rank_29] [%65], %64, %63 : tensor<14x14xf16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xf16> into vector<7x14xf16>
          %316 = index.floordivs %124, %120
          %317 = math.fpowi %5, %13 : tensor<7x14x16xf16>, tensor<7x14x16xi32>
          %318 = index.sub %134, %119
          %319 = arith.divf %175, %160 : f32
          %320 = arith.floordivsi %c1211594295_i32, %extracted : i32
          %321 = index.mul %168, %c11
          scf.yield
        }
        case 3 {
          %306 = memref.load %alloc_10[%c5, %c4] : memref<14x14xf32>
          memref.tensor_store %1, %alloc_17 : memref<14x14xf32>
          %307 = vector.broadcast %c1 : index to vector<7xindex>
          vector.scatter %171[%c1, %c11, %c7] [%307], %211, %212 : memref<7x14x16xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
          %308 = arith.ceildivsi %c-4673_i16, %c-23788_i16 : i16
          %309 = math.ctlz %c1_i64 : i64
          %310 = vector.create_mask %32, %120, %98 : vector<7x14x16xi1>
          %311 = memref.load %alloc_7[%c1] : memref<14xf32>
          %312 = vector.matrix_multiply %212, %212 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi64>, vector<7xi64>) -> vector<1xi64>
          %313 = math.exp %cst_2 : f16
          %314 = vector.extract %310[3, 8] : vector<7x14x16xi1>
          %315 = vector.broadcast %c1_i64 : i64 to vector<i64>
          %316 = vector.transfer_write %315, %18[%c3, %147] : vector<i64>, tensor<14x14xi64>
          %317 = affine.apply affine_map<(d0, d1) -> (d0)>(%115, %147)
          %318 = math.tanh %cst_21 : f16
          %319 = math.ipowi %in, %extracted : i32
          %c1196981413_i32 = arith.constant 1196981413 : i32
          %320 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%98, %c14, %140)
          scf.yield
        }
        case 4 {
          %alloc_44 = memref.alloc() : memref<i32>
          memref.tensor_store %22, %alloc_44 : memref<i32>
          %306 = arith.divf %60, %160 : f32
          %307 = math.ipowi %c1328795162_i32, %in_39 : i32
          vector.print %211 : vector<7xi1>
          %308 = math.log1p %7 : tensor<7x14x16xf32>
          %309 = arith.muli %in, %in_39 : i32
          %310 = arith.mulf %cst_3, %cst_0 : f16
          %311 = vector.broadcast %c1_i64 : i64 to vector<12xi64>
          %312 = vector.transfer_write %311, %15[%c6, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, tensor<14x14xi64>
          %313 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 8)>(%148, %157, %33, %c5)
          %314 = vector.create_mask %121, %c2, %c12 : vector<7x14x16xi1>
          %315 = vector.broadcast %false : i1 to vector<14x16xi1>
          %316 = vector.insert %315, %314 [6] : vector<14x16xi1> into vector<7x14x16xi1>
          %317 = bufferization.to_tensor %alloc_17 : memref<14x14xf32>
          %false_45 = index.bool.constant false
          %318 = arith.addf %60, %60 : f32
          %319 = math.roundeven %8 : tensor<14x14xf16>
          %320 = math.cos %cst_0 : f16
          scf.yield
        }
        default {
          %306 = vector.matrix_multiply %57, %211 {lhs_columns = 7 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<7xi1>) -> vector<2xi1>
          %307 = vector.broadcast %c1_i64 : i64 to vector<7xi64>
          %308 = vector.transfer_write %307, %0[%148, %148] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<14x14xi64>
          %309 = math.copysign %8, %8 : tensor<14x14xf16>
          %310 = vector.broadcast %61 : index to vector<16xindex>
          %311 = vector.broadcast %false : i1 to vector<16xi1>
          vector.scatter %alloc_18[%c5, %c5, %c2] [%310], %311, %311 : memref<7x14x16xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
          %312 = vector.broadcast %160 : f32 to vector<12x12xf32>
          %313 = vector.outerproduct %21, %21, %312 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
          %314 = arith.muli %extracted, %in_39 : i32
          %315 = arith.remf %cst_0, %cst_2 : f16
          %316 = vector.outerproduct %154, %94, %284 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
          %317 = arith.maxui %c0_i64, %c0_i64 : i64
          %318 = arith.muli %c1_i64, %c0_i64 : i64
          %319 = math.exp %175 : f32
          %320 = arith.cmpf ule, %cst_1, %cst_2 : f16
          memref.tensor_store %14, %alloc_19 : memref<14xi32>
          %321 = math.tan %cst_1 : f16
          %322 = arith.cmpf oeq, %cst_1, %cst_2 : f16
          %323 = vector.broadcast %60 : f32 to vector<7xf32>
          %324 = vector.maskedload %alloc_7[%c3], %211, %323 : memref<14xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        }
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %215 = vector.broadcast %175 : f32 to vector<16xf32>
    %216 = vector.broadcast %189 : i1 to vector<16xi1>
    %217 = vector.maskedload %alloc_9[%c6, %c1, %c0], %216, %215 : memref<7x14x16xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
    %218 = memref.alloca_scope  -> (memref<14xf16>) {
      %282 = vector.broadcast %cst_21 : f16 to vector<14xf16>
      %283 = vector.shuffle %85, %85 [1, 2, 3, 4, 7, 8, 11, 12, 13] : vector<7x14x16xf16>, vector<7x14x16xf16>
      %284 = memref.alloca_scope  -> (i32) {
        %309 = vector.shuffle %108, %93 [1, 3, 4, 5, 6, 7, 10, 14, 16, 18, 21, 23, 24, 29, 31, 33, 36, 38, 39, 42, 49, 51, 53] : vector<42xf32>, vector<14xf32>
        %310 = math.rsqrt %10 : tensor<7x14x16xf16>
        %311 = bufferization.to_memref %0 : memref<14x14xi64>
        %312 = arith.muli %c-4673_i16, %c-23788_i16 : i16
        %313 = vector.insertelement %c0_i64, %212[%c7 : index] : vector<7xi64>
        %314 = vector.transpose %57, [0] : vector<14xi1> to vector<14xi1>
        %315 = arith.ori %c0_i64, %c0_i64 : i64
        %316 = arith.ceildivsi %189, %false : i1
        %317 = arith.ori %c0_i64, %c0_i64 : i64
        %318 = arith.andi %c-4673_i16, %c5722_i16 : i16
        %319 = math.log %7 : tensor<7x14x16xf32>
        %alloc_44 = memref.alloc() : memref<14xi16>
        memref.copy %alloc_14, %alloc_44 : memref<14xi16> to memref<14xi16>
        %320 = tensor.empty() : tensor<7x14xi32>
        %321 = index.casts %c4 : index to i32
        %322 = math.round %7 : tensor<7x14x16xf32>
        %323 = bufferization.clone %171 : memref<7x14x16xi64> to memref<7x14x16xi64>
        %324 = memref.atomic_rmw addf %60, %alloc_15[%c0, %c13, %c14] : (f32, memref<7x14x16xf32>) -> f32
        %325 = vector.insertelement %175, %132[%33 : index] : vector<3xf32>
        %326 = vector.broadcast %169 : index to vector<12xindex>
        %327 = vector.broadcast %189 : i1 to vector<12xi1>
        vector.scatter %alloc_15[%c6, %c9, %c2] [%326], %327, %21 : memref<7x14x16xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %328 = arith.cmpf ugt, %165, %165 : f32
        %329 = vector.broadcast %165 : f32 to vector<14x14xf32>
        %330 = vector.fma %329, %329, %329 : vector<14x14xf32>
        %331 = math.atan %8 : tensor<14x14xf16>
        affine.store %c0_i64, %323[%c0, %c12, %c10] : memref<7x14x16xi64>
        %332 = arith.maxsi %c-4673_i16, %c7737_i16 : i16
        %333 = arith.remui %189, %false : i1
        %334 = math.ctpop %14 : tensor<14xi32>
        %335 = vector.broadcast %cst_0 : f16 to vector<14xf16>
        %336 = math.tanh %10 : tensor<7x14x16xf16>
        %337 = vector.broadcast %false : i1 to vector<12xi1>
        %338 = vector.maskedload %alloc_15[%c5, %c13, %c4], %337, %21 : memref<7x14x16xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %false_45 = index.bool.constant false
        %alloc_46 = memref.alloc() : memref<7x14xi64>
        %339 = vector.bitcast %64 : vector<7x14xi1> to vector<7x14xi1>
        memref.alloca_scope.return %c1211594295_i32 : i32
      }
      memref.assume_alignment %alloc, 2 : memref<7x14x16xf16>
      memref.copy %alloc_12, %196 : memref<7x14x16xi64> to memref<7x14x16xi64>
      %285 = vector.create_mask %168 : vector<14xi1>
      %286 = arith.remf %cst_21, %cst_2 : f16
      %287 = arith.remf %cst_21, %cst_0 : f16
      %288 = tensor.empty() : tensor<14xf16>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%288 : tensor<14xf16>) outs(%10 : tensor<7x14x16xf16>) {
      ^bb0(%in: f16, %out: f16):
        %309 = math.round %8 : tensor<14x14xf16>
        %310 = arith.maxsi %c5722_i16, %c-4673_i16 : i16
        %c0_i16 = arith.constant 0 : i16
        %311 = vector.transfer_read %alloc_14[%147], %c0_i16 : memref<14xi16>, vector<i16>
        %inserted_44 = tensor.insert %175 into %7[%c2, %c12, %c11] : tensor<7x14x16xf32>
        %312 = math.fpowi %10, %13 : tensor<7x14x16xf16>, tensor<7x14x16xi32>
        %313 = math.cttz %13 : tensor<7x14x16xi32>
        %314 = math.absf %8 : tensor<14x14xf16>
        %315 = arith.muli %c-23788_i16, %c-23788_i16 : i16
        %316 = math.tanh %7 : tensor<7x14x16xf32>
        %inserted_45 = tensor.insert %c1994383438_i32 into %13[%c5, %c4, %c7] : tensor<7x14x16xi32>
        %317 = math.log1p %cst_2 : f16
        %318 = arith.shrsi %c0_i16, %c5722_i16 : i16
        %319 = index.casts %c1994383438_i32 : i32 to index
        %320 = arith.cmpi ult, %c1328795162_i32, %c1328795162_i32 : i32
        %321 = arith.cmpf one, %out, %out : f16
        %322 = arith.muli %extracted, %c1211594295_i32 : i32
        %323 = tensor.empty(%c14) : tensor<?x14xf32>
        %324 = arith.remf %cst_20, %165 : f32
        %325 = vector.extract %93[13] : vector<14xf32>
        %326 = vector.broadcast %cst_2 : f16 to vector<7x14xf16>
        %327 = arith.remf %160, %60 : f32
        %328 = math.ipowi %15, %15 : tensor<14x14xi64>
        %329 = affine.apply affine_map<(d0, d1) -> (d1 - (-d0 + 32))>(%183, %121)
        %330 = math.log %cst_20 : f32
        %331 = arith.remui %false, %189 : i1
        memref.copy %alloc_4, %alloc_7 : memref<14xf32> to memref<14xf32>
        %alloca_46 = memref.alloca() : memref<14x14xf16>
        %332 = affine.apply affine_map<(d0) -> (-(d0 + 4))>(%c4)
        %333 = math.fma %10, %5, %10 : tensor<7x14x16xf16>
        %334 = math.cos %8 : tensor<14x14xf16>
        %335 = vector.load %196[%c2, %c8, %c0] : memref<7x14x16xi64>, vector<14x14xi64>
        %336 = vector.broadcast %175 : f32 to vector<14xf32>
        %337 = vector.fma %336, %154, %336 : vector<14xf32>
        linalg.yield %cst : f16
      } -> tensor<7x14x16xf16>
      %290 = vector.broadcast %149 : index to vector<14xindex>
      vector.scatter %alloc_10[%c9, %c6] [%290], %57, %93 : memref<14x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %291 = vector.matrix_multiply %211, %57 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<7xi1>, vector<14xi1>) -> vector<2xi1>
      %292 = memref.realloc %alloc_5 : memref<14xi64> to memref<7xi64>
      %293 = math.tan %6 : tensor<7x14xf16>
      affine.store %c7737_i16, %alloc_14[%c4] : memref<14xi16>
      %294 = index.casts %c1328795162_i32 : i32 to index
      %cast_39 = tensor.cast %1 : tensor<14x14xf32> to tensor<?x?xf32>
      %295 = arith.xori %false, %189 : i1
      scf.execute_region {
        %309 = arith.muli %189, %false : i1
        %310 = memref.atomic_rmw assign %c0_i64, %alloc_13[%c6, %c6] : (i64, memref<7x14xi64>) -> i64
        %311 = tensor.empty() : tensor<14xi16>
        %312 = vector.gather %311[%c0] [%65], %64, %152 : tensor<14xi16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xi16> into vector<7x14xi16>
        %313 = math.roundeven %165 : f32
        %alloc_44 = memref.alloc() : memref<7x14xi32>
        memref.tensor_store %95, %alloc_44 : memref<7x14xi32>
        %314 = arith.addf %cst_21, %cst_2 : f16
        %315 = vector.shuffle %103, %102 [0, 3, 7, 8, 10, 11, 13] : vector<7x14x16xf32>, vector<7x14x16xf32>
        %316 = arith.remf %cst_21, %cst_3 : f16
        %317 = tensor.empty() : tensor<14xf32>
        memref.store %c0_i64, %alloc_5[%c10] : memref<14xi64>
        %318 = math.ctpop %11 : tensor<14x14xi16>
        %319 = math.roundeven %122 : f32
        %320 = index.mul %148, %208
        %321 = arith.cmpf one, %cst_1, %cst_3 : f16
        %322 = arith.cmpi slt, %c5722_i16, %c5961_i16 : i16
        %323 = index.sub %120, %rank_29
        scf.yield
      }
      %296 = affine.max affine_map<(d0) -> (d0 - 128, 0)>(%119)
      %297 = math.atan2 %1, %1 : tensor<14x14xf32>
      %298 = tensor.empty(%296) : tensor<?xi64>
      %299 = tensor.empty() : tensor<14x14xi64>
      %mapped_40 = linalg.map ins(%transposed, %15, %15 : tensor<14x14xi64>, tensor<14x14xi64>, tensor<14x14xi64>) outs(%299 : tensor<14x14xi64>)
        (%in: i64, %in_44: i64, %in_45: i64) {
          %309 = arith.ori %in, %in_44 : i64
          %310 = arith.maxsi %c5722_i16, %c8867_i16 : i16
          %311 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 2, d2 ceildiv 2, -(d1 ceildiv 8 - (d1 + 16)) + 32)>(%c0, %c4, %182)
          %312 = math.cttz %4 : tensor<14xi32>
          %313 = index.ceildivu %c12, %147
          %314 = affine.min affine_map<(d0, d1, d2) -> ((d2 - d1 - 8) * 2, (d2 - 8) ceildiv 16)>(%183, %167, %149)
          %c9113729_i32 = arith.constant 9113729 : i32
          %315 = affine.max affine_map<(d0, d1) -> (d1 + d0 * 64 - 64, d0 - d1)>(%98, %147)
          %316 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %101, %38, %c8867_i16 : vector<14xi16>, vector<14xi16> into i16
          %317 = memref.atomic_rmw ori %in_44, %196[%c3, %c3, %c6] : (i64, memref<7x14x16xi64>) -> i64
          %318 = arith.cmpf ogt, %cst_0, %cst_2 : f16
          %319 = index.casts %c-23788_i16 : i16 to index
          %320 = vector.bitcast %76 : vector<14x14xi1> to vector<14x14xi1>
          %321 = arith.remf %cst_3, %cst_1 : f16
          bufferization.dealloc_tensor %0 : tensor<14x14xi64>
          %322 = arith.mulf %160, %165 : f32
          %rank_46 = tensor.rank %95 : tensor<7x14xi32>
          %323 = vector.splat %189 : vector<14xi1>
          vector.print %212 : vector<7xi64>
          %324 = vector.insertelement %c0_i64, %212[%319 : index] : vector<7xi64>
          %325 = arith.addf %122, %122 : f32
          %326 = affine.load %alloc_15[%c5, %c12, %c0] : memref<7x14x16xf32>
          %327 = arith.minui %c1211594295_i32, %c1328795162_i32 : i32
          %328 = index.sizeof
          %329 = math.round %cst_0 : f16
          %330 = math.cttz %extracted : i32
          %331 = arith.cmpi sgt, %c0_i64, %in_44 : i64
          %332 = arith.maxsi %284, %c1211594295_i32 : i32
          %333 = index.add %206, %147
          %334 = vector.broadcast %122 : f32 to vector<14x7xf32>
          vector.transfer_write %334, %alloc_15[%315, %c15, %134] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x7xf32>, memref<7x14x16xf32>
          %335 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %26, %26, %c1994383438_i32 : vector<16xi32>, vector<16xi32> into i32
          %336 = math.atan %cst_21 : f16
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %300 = vector.transpose %102, [0, 1, 2] : vector<7x14x16xf32> to vector<7x14x16xf32>
      %301 = arith.maxf %cst_20, %60 : f32
      %dest_41, %accumulated_value_42 = vector.scan <maxui>, %51, %57 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      %302 = vector.broadcast %147 : index to vector<7xindex>
      %303 = vector.broadcast %165 : f32 to vector<7xf32>
      vector.scatter %alloc_17[%c2, %c12] [%302], %211, %303 : memref<14x14xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %304 = math.cttz %4 : tensor<14xi32>
      %305 = memref.alloca_scope  -> (i64) {
        %309 = math.ipowi %12, %202 : tensor<14x14xi32>
        %310 = vector.insert %cst_20, %132 [2] : f32 into vector<3xf32>
        %311 = arith.divf %122, %165 : f32
        %312 = math.round %10 : tensor<7x14x16xf16>
        %313 = math.fpowi %1, %12 : tensor<14x14xf32>, tensor<14x14xi32>
        %314 = bufferization.to_tensor %alloc_7 : memref<14xf32>
        %315 = math.atan2 %8, %8 : tensor<14x14xf16>
        %316 = vector.create_mask %121 : vector<14xi1>
        memref.assume_alignment %alloc_5, 4 : memref<14xi64>
        %317 = arith.maxui %extracted, %c1328795162_i32 : i32
        %318 = tensor.empty() : tensor<7x14x16xf16>
        %319 = vector.broadcast %cst_20 : f32 to vector<7xf32>
        %dest_44, %accumulated_value_45 = vector.scan <maxf>, %50, %319 {inclusive = false, reduction_dim = 1 : i64} : vector<7x14xf32>, vector<7xf32>
        %320 = math.fma %cst_2, %cst_3, %cst_2 : f16
        %321 = math.round %cst_2 : f16
        %322 = index.add %208, %c15
        %323 = vector.broadcast %120 : index to vector<16xindex>
        vector.scatter %alloc_18[%c1, %c10, %c14] [%323], %216, %216 : memref<7x14x16xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
        %324 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 8)>(%c2, %32, %c7, %c12)
        %325 = vector.broadcast %60 : f32 to vector<7x14xf32>
        %326 = vector.fma %325, %50, %46 : vector<7x14xf32>
        %inserted_46 = tensor.insert %160 into %1[%c4, %c6] : tensor<14x14xf32>
        %327 = math.cttz %c7737_i16 : i16
        %328 = math.fma %5, %10, %318 : tensor<7x14x16xf16>
        %329 = arith.cmpf uge, %175, %cst_20 : f32
        %330 = index.divs %168, %c14
        %331 = index.ceildivu %134, %134
        %332 = vector.transpose %57, [0] : vector<14xi1> to vector<14xi1>
        %333 = arith.minui %c1994383438_i32, %c1211594295_i32 : i32
        memref.store %160, %alloc_17[%c0, %c7] : memref<14x14xf32>
        %334 = index.floordivs %331, %c6
        %335 = index.castu %c1994383438_i32 : i32 to index
        %336 = vector.outerproduct %316, %285, %67 {kind = #vector.kind<add>} : vector<14xi1>, vector<14xi1>
        %alloc_47 = memref.alloc() : memref<7x14xf32>
        %337 = vector.broadcast %189 : i1 to vector<7x14x16xi1>
        %338 = vector.broadcast %284 : i32 to vector<7x14x16xi32>
        %339 = vector.gather %alloc_47[%119, %140] [%338], %337, %103 : memref<7x14xf32>, vector<7x14x16xi32>, vector<7x14x16xi1>, vector<7x14x16xf32> into vector<7x14x16xf32>
        %340 = math.fma %10, %5, %318 : tensor<7x14x16xf16>
        memref.alloca_scope.return %c0_i64 : i64
      }
      %306 = math.cos %1 : tensor<14x14xf32>
      %307 = arith.remf %165, %122 : f32
      %c1309324066_i32 = arith.constant 1309324066 : i32
      %308 = arith.mulf %cst_21, %cst_21 : f16
      %alloc_43 = memref.alloc() : memref<14xf16>
      memref.alloca_scope.return %alloc_43 : memref<14xf16>
    }
    %219 = vector.broadcast %205 : index to vector<12xindex>
    %220 = vector.broadcast %189 : i1 to vector<12xi1>
    %221 = vector.broadcast %c0_i64 : i64 to vector<12xi64>
    vector.scatter %196[%c2, %c12, %c0] [%219], %220, %221 : memref<7x14x16xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
    %222 = arith.maxf %cst_20, %165 : f32
    %223 = math.expm1 %1 : tensor<14x14xf32>
    %224 = arith.shli %extracted, %c1328795162_i32 : i32
    %225 = index.divs %121, %208
    %226 = arith.divsi %extracted, %c1211594295_i32 : i32
    %227 = arith.shrsi %c5961_i16, %c5722_i16 : i16
    %228 = memref.atomic_rmw minf %175, %alloc_4[%c5] : (f32, memref<14xf32>) -> f32
    %229 = math.atan2 %cst, %cst_1 : f16
    %230 = vector.shuffle %152, %152 [0, 1, 4, 6, 7, 9, 13] : vector<7x14xi16>, vector<7x14xi16>
    %inserted = tensor.insert %c1328795162_i32 into %12[%c2, %c11] : tensor<14x14xi32>
    %cast_32 = tensor.cast %0 : tensor<14x14xi64> to tensor<?x?xi64>
    %231 = math.atan2 %collapsed, %collapsed : tensor<98x16xf16>
    %232 = math.cttz %18 : tensor<14x14xi64>
    %233 = arith.remui %c1211594295_i32, %c1211594295_i32 : i32
    %234 = vector.broadcast %cst_20 : f32 to vector<16x16xf32>
    %235 = vector.outerproduct %215, %217, %234 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
    %236 = memref.atomic_rmw maxf %160, %alloc_15[%c5, %c7, %c10] : (f32, memref<7x14x16xf32>) -> f32
    %237 = vector.shuffle %50, %50 [0, 2, 4, 8, 10, 12] : vector<7x14xf32>, vector<7x14xf32>
    %inserted_33 = tensor.insert %c0_i64 into %transposed[%c9, %c10] : tensor<14x14xi64>
    %238 = math.round %5 : tensor<7x14x16xf16>
    %239 = vector.extract %46[0] : vector<7x14xf32>
    %240 = math.rsqrt %10 : tensor<7x14x16xf16>
    %241 = arith.ori %c1211594295_i32, %c1328795162_i32 : i32
    %242 = index.casts %c8 : index to i32
    %243 = affine.load %alloc_4[%c12] : memref<14xf32>
    %244 = arith.minsi %c8867_i16, %c8867_i16 : i16
    %245 = vector.create_mask %149, %c13 : vector<14x14xi1>
    %246 = index.mul %c14, %120
    %247 = vector.matrix_multiply %26, %26 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
    %248 = math.fma %6, %6, %6 : tensor<7x14xf16>
    %249 = affine.if affine_set<(d0) : ((d0 + 8) mod 128 >= 0, 0 == 0)>(%c15) -> memref<7x14x16xi16> {
      %282 = vector.broadcast %c5961_i16 : i16 to vector<14x14xi16>
      %283 = vector.broadcast %cst_0 : f16 to vector<f16>
      %284 = vector.transfer_write %283, %10[%147, %c9, %c13] : vector<f16>, tensor<7x14x16xf16>
      %285 = index.maxs %134, %167
      %286 = math.atan2 %1, %1 : tensor<14x14xf32>
      %287 = arith.shli %c8881_i16, %c-23788_i16 : i16
      %288 = vector.broadcast %cst : f16 to vector<7x14x16xf16>
      %collapsed_39 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<98x16xf16> into tensor<1568xf16>
      %289 = math.cttz %c5722_i16 : i16
      %alloc_40 = memref.alloc() : memref<7x14x16xi16>
      affine.yield %alloc_40 : memref<7x14x16xi16>
    } else {
      %282 = vector.shuffle %57, %216 [6, 7, 8, 11, 16, 17, 19, 27, 28, 29] : vector<14xi1>, vector<16xi1>
      %283 = index.casts %205 : index to i32
      memref.copy %alloc_16, %alloc : memref<7x14x16xf16> to memref<7x14x16xf16>
      %284 = arith.addf %175, %cst_20 : f32
      %285 = math.fpowi %17, %13 : tensor<7x14x16xf32>, tensor<7x14x16xi32>
      %286 = arith.remf %175, %165 : f32
      %287 = index.divs %c10, %246
      %288 = index.ceildivu %33, %205
      %alloc_39 = memref.alloc() : memref<7x14x16xi16>
      affine.yield %alloc_39 : memref<7x14x16xi16>
    }
    %250 = arith.negf %122 : f32
    %extracted_34 = tensor.extract %13[%c0, %c6, %c2] : tensor<7x14x16xi32>
    %251 = arith.xori %false, %189 : i1
    scf.execute_region {
      %282 = math.round %cst_20 : f32
      %283 = arith.remui %extracted, %c1211594295_i32 : i32
      scf.execute_region {
        %297 = index.divs %115, %167
        %cast_41 = tensor.cast %16 : tensor<7x14x16xf32> to tensor<?x?x?xf32>
        %298 = vector.broadcast %c1994383438_i32 : i32 to vector<14xi32>
        %299 = vector.gather %alloc_9[%148, %169, %246] [%298], %57, %94 : memref<7x14x16xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %300 = math.absi %c8867_i16 : i16
        %collapsed_42 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<7x14x16xf16> into tensor<98x16xf16>
        %301 = vector.transpose %66, [1, 0] : vector<7x14xf16> to vector<14x7xf16>
        %302 = arith.divui %c1211594295_i32, %c1211594295_i32 : i32
        %303 = math.exp %1 : tensor<14x14xf32>
        %304 = vector.bitcast %217 : vector<16xf32> to vector<16xf32>
        memref.store %60, %alloc_9[%c6, %c1, %c12] : memref<7x14x16xf32>
        %alloc_43 = memref.alloc() : memref<14x14xf16>
        %305 = index.floordivs %c0, %121
        %306 = arith.divsi %c8867_i16, %c5722_i16 : i16
        %307 = index.divs %c13, %167
        memref.tensor_store %202, %alloc_11 : memref<14x14xi32>
        bufferization.dealloc_tensor %15 : tensor<14x14xi64>
        scf.yield
      }
      %cst_39 = arith.constant 1.000000e+00 : f32
      %cst_40 = arith.constant 0.000000e+00 : f32
      %284 = vector.transfer_read %alloc_4[%124], %cst_40 : memref<14xf32>, vector<f32>
      %285 = arith.divsi %false, %189 : i1
      %286 = vector.broadcast %c1994383438_i32 : i32 to vector<7x14x16xi32>
      %287 = index.add %c11, %c8
      %288 = vector.broadcast %extracted : i32 to vector<7x14xi32>
      %289 = scf.execute_region -> index {
        %297 = arith.maxsi %false, %false : i1
        %298 = memref.realloc %218 : memref<14xf16> to memref<12xf16>
        %299 = math.cos %1 : tensor<14x14xf32>
        %300 = arith.divsi %c-4673_i16, %c7737_i16 : i16
        %301 = index.floordivs %61, %147
        %302 = math.round %reduced : tensor<7xf16>
        %303 = math.rsqrt %reduced : tensor<7xf16>
        %304 = affine.max affine_map<(d0, d1) -> (d1 - (d1 mod 4) floordiv 8 + 2)>(%208, %246)
        %collapsed_41 = tensor.collapse_shape %transposed [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
        %alloc_42 = memref.alloc() : memref<7x14xf16>
        %305 = vector.broadcast %extracted_34 : i32 to vector<14x14xi32>
        %306 = vector.gather %alloc_42[%124, %c13] [%305], %245, %107 : memref<7x14xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
        %307 = vector.insert %c1328795162_i32, %247 [0] : i32 into vector<1xi32>
        %308 = vector.load %alloc_8[%c6, %c2] : memref<14x14xi1>, vector<7x14xi1>
        %309 = vector.load %alloc_18[%c6, %c9, %c9] : memref<7x14x16xi1>, vector<7x14xi1>
        %310 = arith.remui %c1328795162_i32, %extracted : i32
        %311 = bufferization.to_memref %transposed : memref<14x14xi64>
        %312 = index.add %140, %225
        scf.yield %c3 : index
      }
      %290 = vector.load %alloc_8[%c7, %c8] : memref<14x14xi1>, vector<14x14xi1>
      %291 = affine.if affine_set<(d0, d1, d2, d3) : ((-(d3 + 16)) mod 32 == 0)>(%c2, %c7, %c6, %c7) -> i1 {
        %297 = affine.load %alloc_5[%c2] : memref<14xi64>
        %298 = vector.broadcast %183 : index to vector<14xindex>
        vector.scatter %alloc_8[%c12, %c10] [%298], %57, %57 : memref<14x14xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %299 = vector.insertelement %cst_39, %154[%33 : index] : vector<14xf32>
        %300 = arith.cmpf uge, %243, %cst_20 : f32
        %301 = bufferization.to_tensor %alloc_10 : memref<14x14xf32>
        %302 = math.exp2 %160 : f32
        %303 = memref.load %alloc_8[%c13, %c2] : memref<14x14xi1>
        %304 = math.cttz %12 : tensor<14x14xi32>
        affine.yield %189 : i1
      } else {
        memref.store %160, %alloc_9[%c0, %c9, %c8] : memref<7x14x16xf32>
        memref.tensor_store %5, %alloc : memref<7x14x16xf16>
        %297 = memref.atomic_rmw andi %c0_i64, %alloc_5[%c7] : (i64, memref<14xi64>) -> i64
        %298 = arith.divf %175, %cst_39 : f32
        %299 = vector.broadcast %c2 : index to vector<12xindex>
        %300 = vector.broadcast %false : i1 to vector<12xi1>
        %301 = vector.broadcast %c8881_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_6[%c0, %c2] [%299], %300, %301 : memref<14x14xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %302 = arith.ori %c5961_i16, %c8881_i16 : i16
        %303 = vector.load %alloc_18[%c6, %c11, %c8] : memref<7x14x16xi1>, vector<7x14x16xi1>
        %304 = math.copysign %60, %60 : f32
        affine.yield %false : i1
      }
      %292 = vector.maskedload %alloc_8[%c3, %c6], %216, %216 : memref<14x14xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
      %293 = arith.floordivsi %c1211594295_i32, %extracted : i32
      %294 = vector.broadcast %c0_i64 : i64 to vector<14xi64>
      vector.transfer_write %294, %196[%c1, %140, %rank] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xi64>, memref<7x14x16xi64>
      %295 = arith.remf %cst_0, %cst_0 : f16
      %296 = index.sizeof
      scf.yield
    }
    %252 = memref.alloca_scope  -> (f16) {
      %282 = vector.broadcast %243 : f32 to vector<16x16xf32>
      %283 = vector.outerproduct %217, %215, %282 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
      %284 = vector.extract_strided_slice %247 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %285 = arith.divf %cst_3, %cst_2 : f16
      %286 = index.mul %225, %148
      %287 = arith.divsi %c1211594295_i32, %c1328795162_i32 : i32
      %288 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%140, %c15, %134)
      %289 = tensor.empty() : tensor<14xi1>
      %true = index.bool.constant true
      %collapsed_39 = tensor.collapse_shape %202 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
      %290 = arith.maxf %175, %122 : f32
      %291 = math.fma %10, %10, %10 : tensor<7x14x16xf16>
      %alloc_40 = memref.alloc() : memref<7x14x16xi1>
      memref.copy %alloc_18, %alloc_40 : memref<7x14x16xi1> to memref<7x14x16xi1>
      %292 = memref.realloc %218 : memref<14xf16> to memref<7xf16>
      %alloc_41 = memref.alloc() : memref<14x14xi16>
      memref.copy %alloc_6, %alloc_41 : memref<14x14xi16> to memref<14x14xi16>
      %293 = arith.shli %extracted, %c1328795162_i32 : i32
      %294 = arith.ori %c-4673_i16, %c-4673_i16 : i16
      %295 = index.floordivs %rank, %c9
      %296 = vector.matrix_multiply %217, %21 {lhs_columns = 4 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<16xf32>, vector<12xf32>) -> vector<12xf32>
      %297 = math.copysign %6, %6 : tensor<7x14xf16>
      memref.assume_alignment %alloc_7, 1 : memref<14xf32>
      %298 = math.ceil %reduced : tensor<7xf16>
      %c20716_i16 = arith.constant 20716 : i16
      %299 = arith.mulf %cst_2, %cst_3 : f16
      %300 = vector.create_mask %c5, %117, %c0 : vector<7x14x16xi1>
      scf.execute_region {
        %305 = math.expm1 %5 : tensor<7x14x16xf16>
        %306 = math.fma %1, %1, %1 : tensor<14x14xf32>
        %307 = vector.create_mask %167, %c12, %c11 : vector<7x14x16xi1>
        %308 = vector.reduction <minui>, %211 : vector<7xi1> into i1
        %309 = arith.addf %cst_0, %cst_21 : f16
        %310 = vector.bitcast %46 : vector<7x14xf32> to vector<7x14xf32>
        %311 = arith.shli %c5961_i16, %c8867_i16 : i16
        %collapsed_43 = tensor.collapse_shape %12 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
        %312 = index.sizeof
        %313 = vector.extract %93[13] : vector<14xf32>
        %314 = index.floordivs %c3, %121
        %315 = vector.broadcast %165 : f32 to vector<14x14xf32>
        %316 = vector.outerproduct %93, %239, %315 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %317 = arith.minui %c1328795162_i32, %extracted : i32
        %318 = vector.shuffle %64, %67 [0, 3, 4, 5, 6, 7, 9, 11, 12, 15] : vector<7x14xi1>, vector<14x14xi1>
        %319 = vector.broadcast %cst_3 : f16 to vector<12x16xf16>
        vector.transfer_write %319, %alloc_16[%286, %98, %61] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x16xf16>, memref<7x14x16xf16>
        %320 = memref.load %196[%c6, %c7, %c0] : memref<7x14x16xi64>
        scf.yield
      }
      %301 = arith.remsi %extracted_34, %c1994383438_i32 : i32
      %302 = memref.realloc %alloc_5 : memref<14xi64> to memref<16xi64>
      %303 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + 1 == 0, d1 == 0, d1 >= 0, (d0 + d2) ceildiv 2 == 0)>(%c11, %c7, %c9, %c6) -> memref<7x14xf16> {
        %305 = vector.broadcast %c7737_i16 : i16 to vector<14xi16>
        %306 = math.ipowi %9, %9 : tensor<7x14xi32>
        %307 = arith.mulf %165, %122 : f32
        %308 = math.fma %10, %10, %10 : tensor<7x14x16xf16>
        %309 = tensor.empty() : tensor<14x14xf16>
        %310 = linalg.matmul ins(%8, %8 : tensor<14x14xf16>, tensor<14x14xf16>) outs(%309 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %311 = math.copysign %collapsed, %collapsed : tensor<98x16xf16>
        %312 = vector.transpose %305, [0] : vector<14xi16> to vector<14xi16>
        %313 = arith.ceildivsi %c7737_i16, %c8881_i16 : i16
        %alloc_43 = memref.alloc() : memref<7x14xf16>
        affine.yield %alloc_43 : memref<7x14xf16>
      } else {
        %305 = math.roundeven %cst_1 : f16
        %306 = math.atan2 %175, %cst_20 : f32
        %307 = math.atan2 %7, %17 : tensor<7x14x16xf32>
        %308 = bufferization.clone %196 : memref<7x14x16xi64> to memref<7x14x16xi64>
        %309 = math.fma %cst, %cst_2, %cst_0 : f16
        %310 = arith.floordivsi %c1328795162_i32, %extracted_34 : i32
        %311 = vector.broadcast %c9 : index to vector<7xindex>
        vector.scatter %alloc_18[%c2, %c12, %c10] [%311], %211, %211 : memref<7x14x16xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %312 = arith.divsi %c5722_i16, %c7737_i16 : i16
        %alloc_43 = memref.alloc() : memref<7x14xf16>
        affine.yield %alloc_43 : memref<7x14xf16>
      }
      affine.store %c0_i64, %191[%c4, %c4, %c5] : memref<7x14x16xi64>
      %rank_42 = tensor.rank %transposed : tensor<14x14xi64>
      memref.assume_alignment %alloc_19, 1 : memref<14xi32>
      %304 = affine.load %alloc_12[%c0, %c3, %c2] : memref<7x14x16xi64>
      memref.alloca_scope.return %cst_3 : f16
    }
    %253 = arith.floordivsi %c8867_i16, %c5722_i16 : i16
    %254 = vector.broadcast %c0_i64 : i64 to vector<12xi64>
    %255 = vector.broadcast %false : i1 to vector<12xi1>
    %256 = vector.maskedload %196[%c3, %c6, %c8], %255, %254 : memref<7x14x16xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
    %257 = affine.if affine_set<(d0, d1, d2, d3) : (d0 * 2 >= 0, d0 * 2 + 1 >= 0, d0 * 64 == 0)>(%c7, %c7, %c1, %c9) -> memref<7x14xi16> {
      %282 = vector.shuffle %51, %245 [0, 1, 3, 5, 7, 8, 10, 11, 14, 15, 16, 17, 19, 21, 24, 26] : vector<14x14xi1>, vector<14x14xi1>
      %generated_39 = tensor.generate %134 {
      ^bb0(%arg3: index):
        %cast_41 = tensor.cast %15 : tensor<14x14xi64> to tensor<?x?xi64>
        %alloc_42 = memref.alloc() : memref<14x14xf16>
        %289 = vector.gather %alloc_42[%c14, %168] [%65], %64, %63 : memref<14x14xf16>, vector<7x14xi32>, vector<7x14xi1>, vector<7x14xf16> into vector<7x14xf16>
        %290 = memref.atomic_rmw muli %c0_i64, %alloc_13[%c5, %c12] : (i64, memref<7x14xi64>) -> i64
        %291 = arith.ori %189, %false : i1
        tensor.yield %cst_21 : f16
      } : tensor<?xf16>
      %283 = memref.load %alloc_18[%c2, %c5, %c8] : memref<7x14x16xi1>
      %284 = vector.shuffle %85, %85 [1, 4, 6, 7, 8, 11] : vector<7x14x16xf16>, vector<7x14x16xf16>
      %285 = vector.broadcast %cst_20 : f32 to vector<12x12xf32>
      %286 = vector.outerproduct %21, %21, %285 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
      %287 = index.add %157, %167
      bufferization.dealloc_tensor %14 : tensor<14xi32>
      %288 = arith.cmpi sge, %c8867_i16, %c5961_i16 : i16
      %alloc_40 = memref.alloc() : memref<7x14xi16>
      affine.yield %alloc_40 : memref<7x14xi16>
    } else {
      %282 = arith.divsi %c7737_i16, %c8867_i16 : i16
      %283 = vector.broadcast %c0_i64 : i64 to vector<14xi64>
      %284 = vector.create_mask %c9, %225, %rank_29 : vector<7x14x16xi1>
      %285 = index.divs %61, %c0
      %286 = memref.alloca_scope  -> (memref<7x14xf32>) {
        %289 = arith.divsi %extracted_34, %extracted_34 : i32
        %290 = vector.transpose %38, [0] : vector<14xi16> to vector<14xi16>
        %291 = math.fma %cst_1, %cst, %252 : f16
        %292 = arith.divf %165, %243 : f32
        %293 = index.castu %183 : index to i32
        %294 = memref.load %alloc_16[%c5, %c8, %c7] : memref<7x14x16xf16>
        %295 = vector.load %alloc_4[%c7] : memref<14xf32>, vector<14xf32>
        %296 = math.round %cst_3 : f16
        %cst_40 = arith.constant 1.000000e+00 : f32
        %297 = vector.transfer_read %alloc_17[%c9, %148], %cst_40 : memref<14x14xf32>, vector<f32>
        %298 = arith.minsi %c-23788_i16, %c8867_i16 : i16
        %299 = vector.broadcast %extracted_34 : i32 to vector<7x14x16xi32>
        %300 = vector.gather %95[%124, %285] [%299], %284, %299 : tensor<7x14xi32>, vector<7x14x16xi32>, vector<7x14x16xi1>, vector<7x14x16xi32> into vector<7x14x16xi32>
        %301 = memref.realloc %alloc_5 : memref<14xi64> to memref<12xi64>
        %302 = vector.load %191[%c3, %c0, %c9] : memref<7x14x16xi64>, vector<14xi64>
        %303 = index.floordivs %208, %c1
        %304 = math.fma %175, %160, %122 : f32
        %305 = arith.minui %c8867_i16, %c7737_i16 : i16
        %306 = arith.minsi %189, %189 : i1
        %307 = arith.muli %c-23788_i16, %c5722_i16 : i16
        %308 = vector.create_mask %c4, %c8 : vector<14x14xi1>
        %309 = index.divs %c2, %140
        %310 = vector.create_mask %206, %285 : vector<14x14xi1>
        %311 = arith.mulf %cst_0, %cst_3 : f16
        %312 = arith.mulf %252, %cst_3 : f16
        %313 = vector.shuffle %67, %308 [2, 3, 4, 7, 8, 9, 11, 14, 17, 22, 23, 26] : vector<14x14xi1>, vector<14x14xi1>
        %314 = vector.broadcast %59 : index to vector<7xindex>
        vector.scatter %alloc_18[%c1, %c2, %c12] [%314], %211, %211 : memref<7x14x16xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %315 = vector.shuffle %85, %85 [0, 1, 2, 3, 4, 5, 8, 10, 11, 12, 13] : vector<7x14x16xf16>, vector<7x14x16xf16>
        %316 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 128)>(%121, %149, %33)
        %317 = math.copysign %10, %10 : tensor<7x14x16xf16>
        %318 = math.absf %17 : tensor<7x14x16xf32>
        %319 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d1 - 16)>(%206, %c0, %c3, %c14)
        %320 = affine.apply affine_map<(d0, d1, d2) -> (2)>(%61, %c13, %117)
        %rank_41 = tensor.rank %4 : tensor<14xi32>
        %alloc_42 = memref.alloc() : memref<7x14xf32>
        memref.alloca_scope.return %alloc_42 : memref<7x14xf32>
      }
      %287 = vector.reduction <xor>, %26 : vector<16xi32> into i32
      memref.alloca_scope  {
        %289 = index.mul %c6, %c10
        %290 = math.copysign %cst_2, %cst : f16
        %291 = arith.divsi %extracted_34, %extracted : i32
        %292 = vector.shuffle %101, %101 [0, 2, 3, 5, 8, 9, 11, 12, 13, 15, 16, 18, 20, 22, 23, 24, 26] : vector<14xi16>, vector<14xi16>
        %cst_40 = arith.constant 1.000000e+00 : f16
        %cst_41 = arith.constant 0.000000e+00 : f16
        %293 = vector.transfer_read %6[%c0, %134], %cst_41 : tensor<7x14xf16>, vector<f16>
        %294 = math.fma %122, %243, %175 : f32
        %295 = arith.maxsi %c5961_i16, %c7737_i16 : i16
        %296 = vector.outerproduct %57, %57, %51 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
        %297 = arith.shli %c-23788_i16, %c5722_i16 : i16
        %298 = arith.maxsi %c8867_i16, %c5722_i16 : i16
        %299 = tensor.empty() : tensor<14xi16>
        %300 = math.round %60 : f32
        %301 = math.round %8 : tensor<14x14xf16>
        %302 = index.casts %189 : i1 to index
        %303 = vector.broadcast %c8 : index to vector<14xindex>
        vector.scatter %171[%c4, %c0, %c9] [%303], %57, %283 : memref<7x14x16xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %304 = vector.shuffle %85, %85 [0, 1, 2, 8, 9, 11, 13] : vector<7x14x16xf16>, vector<7x14x16xf16>
        %305 = tensor.empty() : tensor<14x14xi32>
        %306 = arith.divsi %extracted, %c1994383438_i32 : i32
        %307 = memref.load %alloc_14[%c11] : memref<14xi16>
        %308 = arith.divsi %false, %false : i1
        %309 = vector.broadcast %122 : f32 to vector<14x14xf32>
        %310 = vector.fma %309, %309, %309 : vector<14x14xf32>
        %311 = arith.maxsi %c7737_i16, %c5722_i16 : i16
        %312 = arith.cmpi sgt, %c1328795162_i32, %c1994383438_i32 : i32
        %313 = vector.splat %205 : vector<7x14xindex>
        %314 = math.round %252 : f16
        %315 = math.floor %reduced : tensor<7xf16>
        %316 = arith.negf %cst_0 : f16
        %317 = math.tan %cst_1 : f16
        %318 = arith.remui %c-4673_i16, %c8881_i16 : i16
        %319 = memref.load %218[%c7] : memref<14xf16>
        %320 = math.roundeven %160 : f32
        %321 = arith.remui %c1328795162_i32, %c1211594295_i32 : i32
      }
      %288 = vector.extract %107[4] : vector<14x14xf16>
      %alloc_39 = memref.alloc() : memref<7x14xi16>
      affine.yield %alloc_39 : memref<7x14xi16>
    }
    %258 = arith.remf %cst_2, %252 : f16
    %259 = index.maxs %c14, %c0
    %260 = affine.load %alloc_16[%c4, %c14, %c1] : memref<7x14x16xf16>
    %261 = arith.shrsi %extracted_34, %c1994383438_i32 : i32
    %262 = math.exp %16 : tensor<7x14x16xf32>
    %collapsed_35 = tensor.collapse_shape %15 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
    %263 = vector.reduction <or>, %212 : vector<7xi64> into i64
    %264 = tensor.empty() : tensor<14x14xi32>
    %265 = linalg.matmul ins(%12, %12 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%264 : tensor<14x14xi32>) -> tensor<14x14xi32>
    %266 = affine.if affine_set<(d0) : (d0 >= 0)>(%c4) -> memref<14xi32> {
      %282 = arith.divsi %false, %189 : i1
      %283 = math.roundeven %8 : tensor<14x14xf16>
      %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%124, %134, %c4, %32)
      %true = index.bool.constant true
      %285 = arith.muli %c1328795162_i32, %c1328795162_i32 : i32
      memref.store %c0_i64, %196[%c6, %c13, %c12] : memref<7x14x16xi64>
      %286 = arith.divsi %c-4673_i16, %c-23788_i16 : i16
      memref.copy %alloc_15, %alloc_9 : memref<7x14x16xf32> to memref<7x14x16xf32>
      affine.yield %alloc_19 : memref<14xi32>
    } else {
      %282 = vector.broadcast %c0_i64 : i64 to vector<7x14x16xi64>
      %283 = vector.broadcast %189 : i1 to vector<7x14x16xi1>
      %284 = vector.broadcast %c1994383438_i32 : i32 to vector<7x14x16xi32>
      %285 = vector.gather %alloc_5[%117] [%284], %283, %282 : memref<14xi64>, vector<7x14x16xi32>, vector<7x14x16xi1>, vector<7x14x16xi64> into vector<7x14x16xi64>
      %286 = arith.divf %cst_20, %243 : f32
      %287 = vector.reduction <minf>, %94 : vector<14xf32> into f32
      %generated_39 = tensor.generate %246 {
      ^bb0(%arg3: index, %arg4: index):
        %292 = arith.ori %189, %false : i1
        %293 = vector.splat %147 : vector<14xindex>
        bufferization.dealloc_tensor %4 : tensor<14xi32>
        %294 = arith.ceildivsi %c1328795162_i32, %extracted_34 : i32
        tensor.yield %c1328795162_i32 : i32
      } : tensor<?x14xi32>
      %288 = index.add %c13, %124
      %289 = arith.addf %175, %60 : f32
      %290 = arith.minui %c0_i64, %c0_i64 : i64
      %291 = vector.create_mask %c15, %c1, %c3 : vector<7x14x16xi1>
      affine.yield %alloc_19 : memref<14xi32>
    }
    %collapsed_36 = tensor.collapse_shape %264 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
    %267 = memref.atomic_rmw mulf %175, %alloc_17[%c2, %c2] : (f32, memref<14x14xf32>) -> f32
    %268 = index.mul %c9, %33
    %269 = math.log2 %cst_3 : f16
    %270 = memref.atomic_rmw mulf %160, %alloc_17[%c6, %c12] : (f32, memref<14x14xf32>) -> f32
    %271 = arith.remsi %c-4673_i16, %c8867_i16 : i16
    %alloca = memref.alloca() : memref<7x14x16xf32>
    %272 = affine.max affine_map<(d0, d1, d2) -> (((d2 - d0) floordiv 16) ceildiv 2 - 32)>(%c4, %157, %206)
    %273 = vector.insertelement %c0_i64, %212[%32 : index] : vector<7xi64>
    %274 = affine.max affine_map<(d0, d1) -> (d1, d1 + 16)>(%119, %98)
    %275 = vector.multi_reduction <maxf>, %108, %108 [] : vector<42xf32> to vector<42xf32>
    %276 = vector.matrix_multiply %211, %216 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 16 : i32} : (vector<7xi1>, vector<16xi1>) -> vector<112xi1>
    memref.tensor_store %11, %alloc_6 : memref<14x14xi16>
    %277 = math.absf %cst_20 : f32
    %278 = vector.shuffle %215, %21 [6, 9, 10, 13, 15, 17, 18, 20, 24, 26, 27] : vector<16xf32>, vector<12xf32>
    %279 = tensor.empty() : tensor<14xi64>
    %280 = linalg.copy ins(%2 : tensor<14xi64>) outs(%279 : tensor<14xi64>) -> tensor<14xi64>
    %alloc_37 = memref.alloc() : memref<7xf16>
    linalg.transpose ins(%19 : tensor<7xf16>) outs(%alloc_37 : memref<7xf16>) permutation = [0] 
    %alloc_38 = memref.alloc() : memref<7xi64>
    linalg.reduce ins(%alloc_13 : memref<7x14xi64>) outs(%alloc_38 : memref<7xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %282 = vector.broadcast %165 : f32 to vector<14x16xf32>
        %283 = vector.insert %282, %102 [5] : vector<14x16xf32> into vector<7x14x16xf32>
        %284 = index.sub %149, %c5
        %285 = vector.broadcast %189 : i1 to vector<7x14x16xi1>
        %286 = vector.broadcast %c1328795162_i32 : i32 to vector<7x14x16xi32>
        %287 = vector.gather %8[%c2, %c13] [%286], %285, %85 : tensor<14x14xf16>, vector<7x14x16xi32>, vector<7x14x16xi1>, vector<7x14x16xf16> into vector<7x14x16xf16>
        %288 = index.floordivs %c4, %169
        %289 = vector.shuffle %63, %66 [0, 1, 2, 3, 4, 6, 12, 13] : vector<7x14xf16>, vector<7x14xf16>
        %290 = index.maxs %182, %120
        %inserted_39 = tensor.insert %cst_0 into %10[%c3, %c13, %c6] : tensor<7x14x16xf16>
        %291 = vector.flat_transpose %93 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %c0_i64_40 = arith.constant 0 : i64
        linalg.yield %c0_i64_40 : i64
      }
    scf.parallel (%arg3) = (%c15) to (%157) step (%c14) {
      %282 = vector.transpose %67, [0, 1] : vector<14x14xi1> to vector<14x14xi1>
      %283 = bufferization.to_tensor %191 : memref<7x14x16xi64>
      %cst_39 = arith.constant 1.000000e+00 : f16
      %cst_40 = arith.constant 0.000000e+00 : f16
      %284 = vector.transfer_read %19[%59], %cst_40 : tensor<7xf16>, vector<f16>
      %285 = math.round %cst_0 : f16
      %c49 = arith.constant 49 : index
      %inserted_41 = tensor.insert %extracted into %collapsed_36[%c49] : tensor<196xi32>
      %286 = math.tan %8 : tensor<14x14xf16>
      %false_42 = arith.constant false
      %287 = vector.insert %101, %152 [3] : vector<14xi16> into vector<7x14xi16>
      %288 = affine.max affine_map<(d0, d1) -> (d0, d0 floordiv 2, d1 floordiv 8 - d1 - 8, 8)>(%98, %148)
      %generated_43 = tensor.generate %268 {
      ^bb0(%arg4: index, %arg5: index):
        %294 = arith.mulf %cst_39, %cst_2 : f16
        %295 = arith.negf %cst_21 : f16
        %296 = math.round %collapsed : tensor<98x16xf16>
        %alloc_45 = memref.alloc() : memref<7x14xi1>
        %297 = vector.broadcast %c1994383438_i32 : i32 to vector<14x14xi32>
        %298 = vector.gather %alloc_45[%c13, %c1] [%297], %51, %76 : memref<7x14xi1>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
        tensor.yield %cst_21 : f16
      } : tensor<?x14xf16>
      %289 = vector.multi_reduction <mul>, %212, %212 [] : vector<7xi64> to vector<7xi64>
      %290 = scf.execute_region -> i16 {
        %294 = index.casts %c-23788_i16 : i16 to index
        %295 = bufferization.to_tensor %191 : memref<7x14x16xi64>
        %296 = math.cttz %15 : tensor<14x14xi64>
        %c1350934077_i32 = arith.constant 1350934077 : i32
        %297 = tensor.empty(%c12, %182) : tensor<?x?x16xf16>
        %298 = math.roundeven %8 : tensor<14x14xf16>
        %inserted_45 = tensor.insert %c1994383438_i32 into %13[%c1, %c13, %c11] : tensor<7x14x16xi32>
        %299 = vector.shuffle %152, %152 [1, 3, 4, 5, 6, 8, 9, 10, 11] : vector<7x14xi16>, vector<7x14xi16>
        %300 = arith.maxf %243, %122 : f32
        %301 = arith.cmpf ugt, %cst_3, %cst_0 : f16
        %302 = index.divs %167, %c13
        %303 = math.ceil %60 : f32
        %inserted_46 = tensor.insert %c1211594295_i32 into %95[%c4, %c12] : tensor<7x14xi32>
        %alloca_47 = memref.alloca() : memref<14x14xi1>
        %304 = math.fma %243, %243, %165 : f32
        %305 = arith.negf %122 : f32
        scf.yield %c7737_i16 : i16
      }
      %291 = math.powf %6, %6 : tensor<7x14xf16>
      %inserted_44 = tensor.insert %extracted_34 into %264[%c4, %c13] : tensor<14x14xi32>
      %292 = vector.shuffle %50, %46 [1, 2, 4, 5, 7, 8, 10, 12] : vector<7x14xf32>, vector<7x14xf32>
      %293 = memref.load %alloc_18[%c4, %c0, %c0] : memref<7x14x16xi1>
      scf.yield
    }
    %281 = affine.vector_load %alloc_6[%c13, %182] : memref<14x14xi16>, vector<12xi16>
    affine.vector_store %217, %alloc_15[%168, %134, %115] : memref<7x14x16xf32>, vector<16xf32>
    vector.print %21 : vector<12xf32>
    vector.print %26 : vector<16xi32>
    vector.print %38 : vector<14xi16>
    vector.print %46 : vector<7x14xf32>
    vector.print %47 : vector<7x14xf32>
    vector.print %50 : vector<7x14xf32>
    vector.print %51 : vector<14x14xi1>
    vector.print %57 : vector<14xi1>
    vector.print %63 : vector<7x14xf16>
    vector.print %64 : vector<7x14xi1>
    vector.print %65 : vector<7x14xi32>
    vector.print %66 : vector<7x14xf16>
    vector.print %67 : vector<14x14xi1>
    vector.print %76 : vector<14x14xi1>
    vector.print %85 : vector<7x14x16xf16>
    vector.print %93 : vector<14xf32>
    vector.print %94 : vector<14xf32>
    vector.print %101 : vector<14xi16>
    vector.print %102 : vector<7x14x16xf32>
    vector.print %103 : vector<7x14x16xf32>
    vector.print %107 : vector<14x14xf16>
    vector.print %108 : vector<42xf32>
    vector.print %132 : vector<3xf32>
    vector.print %152 : vector<7x14xi16>
    vector.print %154 : vector<14xf32>
    vector.print %210 : vector<7xi64>
    vector.print %211 : vector<7xi1>
    vector.print %212 : vector<7xi64>
    vector.print %215 : vector<16xf32>
    vector.print %216 : vector<16xi1>
    vector.print %217 : vector<16xf32>
    vector.print %239 : vector<14xf32>
    vector.print %245 : vector<14x14xi1>
    vector.print %247 : vector<1xi32>
    vector.print %254 : vector<12xi64>
    vector.print %255 : vector<12xi1>
    vector.print %256 : vector<12xi64>
    vector.print %276 : vector<112xi1>
    vector.print %281 : vector<12xi16>
    vector.print %false : i1
    vector.print %c-23788_i16 : i16
    vector.print %c5961_i16 : i16
    vector.print %cst : f16
    vector.print %c1328795162_i32 : i32
    vector.print %c7737_i16 : i16
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c1994383438_i32 : i32
    vector.print %c8867_i16 : i16
    vector.print %c8881_i16 : i16
    vector.print %c-4673_i16 : i16
    vector.print %c5722_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c1211594295_i32 : i32
    vector.print %cst_20 : f32
    vector.print %extracted : i32
    vector.print %60 : f32
    vector.print %cst_21 : f16
    vector.print %122 : f32
    vector.print %160 : f32
    vector.print %165 : f32
    vector.print %175 : f32
    vector.print %189 : i1
    vector.print %c0_i64 : i64
    vector.print %243 : f32
    vector.print %extracted_34 : i32
    vector.print %252 : f16
    vector.print %260 : f16
    return
  }
}
