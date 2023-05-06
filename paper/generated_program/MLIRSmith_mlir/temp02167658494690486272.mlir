module {
  func.func nested @func1(%arg0: index, %arg1: f32, %arg2: vector<4xi1>) {
    %c-30650_i16 = arith.constant -30650 : i16
    %false = arith.constant false
    %c1317615588_i32 = arith.constant 1317615588 : i32
    %false_0 = arith.constant false
    %c580843849_i64 = arith.constant 580843849 : i64
    %cst = arith.constant 1.14495437E+9 : f32
    %c1068090315_i32 = arith.constant 1068090315 : i32
    %c1554343177_i64 = arith.constant 1554343177 : i64
    %true = arith.constant true
    %c2110867356_i64 = arith.constant 2110867356 : i64
    %c-9611_i16 = arith.constant -9611 : i16
    %true_1 = arith.constant true
    %c19112_i16 = arith.constant 19112 : i16
    %c-974_i16 = arith.constant -974 : i16
    %c2111428848_i64 = arith.constant 2111428848 : i64
    %c1711636616_i64 = arith.constant 1711636616 : i64
    %0 = tensor.empty() : tensor<4x4x16xf16>
    %1 = tensor.empty() : tensor<7x12xf16>
    %2 = tensor.empty() : tensor<4x4x16xi64>
    %3 = tensor.empty() : tensor<4xf32>
    %4 = tensor.empty() : tensor<7x12xf16>
    %5 = tensor.empty() : tensor<7x12xf16>
    %6 = tensor.empty() : tensor<4x4x16xi16>
    %7 = tensor.empty() : tensor<12x4xi1>
    %8 = tensor.empty() : tensor<4x4x16xi16>
    %9 = tensor.empty() : tensor<4xi64>
    %10 = tensor.empty() : tensor<12x4xi1>
    %11 = tensor.empty() : tensor<7x12xf16>
    %12 = tensor.empty() : tensor<12x4xi32>
    %13 = tensor.empty() : tensor<4xf16>
    %14 = tensor.empty() : tensor<4x4x16xi1>
    %15 = tensor.empty() : tensor<4xf16>
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
    %alloc = memref.alloc() : memref<4x4x16xf32>
    %alloc_2 = memref.alloc() : memref<4xf16>
    %alloc_3 = memref.alloc() : memref<4xf32>
    %alloc_4 = memref.alloc() : memref<4xf32>
    %alloc_5 = memref.alloc() : memref<4x4x16xf16>
    %alloc_6 = memref.alloc() : memref<7x12xf32>
    %alloc_7 = memref.alloc() : memref<4x4x16xf32>
    %alloc_8 = memref.alloc() : memref<7x12xf16>
    %alloc_9 = memref.alloc() : memref<7x12xi1>
    %alloc_10 = memref.alloc() : memref<7x12xi32>
    %alloc_11 = memref.alloc() : memref<12x4xf16>
    %alloc_12 = memref.alloc() : memref<12x4xi16>
    %alloc_13 = memref.alloc() : memref<7x12xi32>
    %alloc_14 = memref.alloc() : memref<12x4xi32>
    %alloc_15 = memref.alloc() : memref<4x4x16xf16>
    %alloc_16 = memref.alloc() : memref<4x4x16xi1>
    %16 = tensor.empty() : tensor<12x4xi1>
    %17 = linalg.copy ins(%10 : tensor<12x4xi1>) outs(%16 : tensor<12x4xi1>) -> tensor<12x4xi1>
    %18 = tensor.empty() : tensor<12x7xi1>
    %transposed = linalg.transpose ins(%alloc_9 : memref<7x12xi1>) outs(%18 : tensor<12x7xi1>) permutation = [1, 0] 
    %alloc_17 = memref.alloc() : memref<f32>
    linalg.reduce ins(%alloc_4 : memref<4xf32>) outs(%alloc_17 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %258 = scf.while (%arg3 = %c2111428848_i64) : (i64) -> i64 {
          %268 = arith.maxui %c19112_i16, %c-30650_i16 : i16
          %269 = math.absf %cst : f32
          %270 = index.divu %c11, %c15
          %cst_49 = arith.constant 4.380800e+04 : f16
          %271 = vector.broadcast %c14 : index to vector<12xindex>
          %272 = vector.broadcast %true : i1 to vector<12xi1>
          %273 = vector.broadcast %c1317615588_i32 : i32 to vector<12xi32>
          vector.scatter %alloc_10[%c4, %c4] [%271], %272, %273 : memref<7x12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
          %274 = memref.load %alloc_5[%c0, %c1, %c13] : memref<4x4x16xf16>
          %275 = vector.broadcast %true : i1 to vector<12xi1>
          %276 = vector.matrix_multiply %275, %275 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %277 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 256)>(%c15, %c13, %c6, %c15)
          scf.condition(%false) %c1711636616_i64 : i64
        } do {
        ^bb0(%arg3: i64):
          %268 = math.exp2 %1 : tensor<7x12xf16>
          %269 = math.absi %12 : tensor<12x4xi32>
          %270 = arith.xori %false_0, %false : i1
          %271 = tensor.empty() : tensor<12x4xi64>
          affine.store %c-30650_i16, %alloc_12[%c8, %c15] : memref<12x4xi16>
          %272 = vector.broadcast %true : i1 to vector<4x4x16xi1>
          %273 = vector.transpose %272, [1, 0, 2] : vector<4x4x16xi1> to vector<4x4x16xi1>
          %274 = math.absf %13 : tensor<4xf16>
          %cast_49 = tensor.cast %3 : tensor<4xf32> to tensor<?xf32>
          %275 = vector.extract %272[0] : vector<4x4x16xi1>
          %276 = index.divs %c15, %c13
          %277 = math.exp2 %11 : tensor<7x12xf16>
          %278 = vector.broadcast %true : i1 to vector<16x4x16xi1>
          %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %275, %272, %278 : vector<4x16xi1>, vector<4x4x16xi1> into vector<16x4x16xi1>
          %280 = vector.broadcast %in : f32 to vector<16xf32>
          %281 = vector.matrix_multiply %280, %280 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
          %282 = vector.transpose %280, [0] : vector<16xf32> to vector<16xf32>
          %283 = arith.maxf %in, %cst : f32
          %284 = arith.remsi %true_1, %false_0 : i1
          scf.yield %c1711636616_i64 : i64
        }
        %259 = affine.if affine_set<(d0) : (-32 == 0)>(%c5) -> memref<4x4x16xf16> {
          %268 = vector.broadcast %c2 : index to vector<4xindex>
          %269 = vector.broadcast %true : i1 to vector<4xi1>
          %cst_49 = arith.constant 1.000000e+00 : f16
          %270 = vector.broadcast %cst_49 : f16 to vector<4xf16>
          vector.scatter %alloc_2[%c0] [%268], %269, %270 : memref<4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %271 = math.exp %5 : tensor<7x12xf16>
          %extracted_50 = tensor.extract %11[%c5, %c7] : tensor<7x12xf16>
          %272 = affine.load %alloc_5[%c12, %c8, %c12] : memref<4x4x16xf16>
          memref.tensor_store %13, %alloc_2 : memref<4xf16>
          %273 = arith.mulf %272, %extracted_50 : f16
          %from_elements_51 = tensor.from_elements %cst, %init, %init, %init, %in, %init, %init, %cst, %cst, %init, %init, %init, %in, %cst, %in, %in, %cst, %cst, %init, %cst, %init, %cst, %cst, %in, %cst, %init, %cst, %in, %init, %in, %in, %cst, %init, %in, %cst, %in, %cst, %cst, %init, %init, %in, %init, %cst, %init, %cst, %cst, %in, %init, %in, %init, %in, %init, %init, %init, %in, %cst, %cst, %init, %init, %init, %in, %in, %cst, %in, %cst, %in, %init, %init, %init, %cst, %cst, %init, %in, %cst, %cst, %init, %in, %cst, %cst, %cst, %init, %init, %in, %init, %cst, %in, %in, %in, %in, %init, %init, %in, %init, %init, %cst, %in, %init, %init, %cst, %init, %in, %in, %cst, %in, %cst, %in, %init, %cst, %cst, %init, %init, %cst, %in, %init, %cst, %cst, %init, %cst, %cst, %init, %cst, %init, %in, %cst, %in, %init, %cst, %cst, %init, %init, %cst, %in, %init, %cst, %in, %in, %cst, %cst, %cst, %init, %in, %init, %init, %in, %cst, %cst, %cst, %cst, %in, %in, %in, %in, %cst, %in, %init, %in, %in, %init, %in, %in, %in, %init, %cst, %cst, %cst, %in, %in, %init, %in, %cst, %cst, %in, %init, %in, %init, %in, %cst, %cst, %cst, %cst, %in, %cst, %init, %init, %init, %init, %in, %in, %cst, %cst, %in, %init, %init, %in, %in, %cst, %init, %cst, %in, %cst, %cst, %cst, %in, %cst, %cst, %cst, %in, %in, %init, %cst, %cst, %init, %cst, %init, %init, %in, %in, %in, %init, %in, %init, %init, %in, %init, %in, %in, %in, %in, %init, %in, %in, %cst, %in, %in, %init, %in, %cst, %init, %in, %cst, %init, %in, %cst, %cst, %init, %init, %cst, %init, %in, %in, %init, %in, %init, %init, %cst, %init : tensor<4x4x16xf32>
          %274 = bufferization.clone %alloc_11 : memref<12x4xf16> to memref<12x4xf16>
          affine.yield %alloc_5 : memref<4x4x16xf16>
        } else {
          %268 = arith.divui %false, %false : i1
          %269 = index.sub %c9, %c0
          %270 = math.ctlz %7 : tensor<12x4xi1>
          %271 = index.maxu %c6, %c5
          %272 = vector.broadcast %c1068090315_i32 : i32 to vector<1xi32>
          %273 = vector.extract %272[0] : vector<1xi32>
          %274 = math.round %0 : tensor<4x4x16xf16>
          %275 = math.atan %13 : tensor<4xf16>
          %cst_49 = arith.constant 1.000000e+00 : f16
          %inserted_50 = tensor.insert %cst_49 into %13[%c2] : tensor<4xf16>
          affine.yield %alloc_15 : memref<4x4x16xf16>
        }
        %260 = vector.broadcast %c19112_i16 : i16 to vector<12xi16>
        %261 = vector.broadcast %c-9611_i16 : i16 to vector<12x12xi16>
        %262 = vector.outerproduct %260, %260, %261 {kind = #vector.kind<add>} : vector<12xi16>, vector<12xi16>
        %263 = index.floordivs %c1, %c5
        %264 = bufferization.clone %alloc_17 : memref<f32> to memref<f32>
        %265 = arith.mulf %cst, %init : f32
        %266 = math.round %4 : tensor<7x12xf16>
        %267 = bufferization.to_tensor %alloc_9 : memref<7x12xi1>
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c2, %c10) to (%c13, %c0) step (%c3, %c11) init (%3) -> tensor<4xf32> {
      %258 = vector.broadcast %cst : f32 to vector<4xf32>
      %259 = vector.shuffle %258, %258 [3, 6] : vector<4xf32>, vector<4xf32>
      %260 = vector.broadcast %false_0 : i1 to vector<12xi1>
      %261 = vector.matrix_multiply %260, %260 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %262 = math.powf %1, %1 : tensor<7x12xf16>
      scf.execute_region {
        %277 = memref.atomic_rmw mulf %cst, %alloc_17[] : (f32, memref<f32>) -> f32
        %278 = math.exp2 %11 : tensor<7x12xf16>
        %279 = index.divs %c10, %c5
        %280 = vector.splat %c580843849_i64 : vector<4x4x16xi64>
        %281 = vector.shuffle %261, %260 [1, 2, 3, 5, 8, 10, 12] : vector<1xi1>, vector<12xi1>
        %282 = tensor.empty() : tensor<7x12xi32>
        %283 = math.fpowi %1, %282 : tensor<7x12xf16>, tensor<7x12xi32>
        %284 = math.roundeven %0 : tensor<4x4x16xf16>
        %285 = arith.floordivsi %c1554343177_i64, %c2111428848_i64 : i64
        %true_49 = index.bool.constant true
        %286 = vector.load %alloc_6[%c5, %c10] : memref<7x12xf32>, vector<12x4xf32>
        %splat_50 = tensor.splat %c1317615588_i32 : tensor<7x12xi32>
        %cst_51 = arith.constant 1.000000e+00 : f16
        affine.store %cst_51, %alloc_15[%c9, %c13, %c15] : memref<4x4x16xf16>
        %287 = index.divs %c10, %c0
        %288 = math.tanh %1 : tensor<7x12xf16>
        %289 = memref.load %alloc_5[%c2, %c3, %c15] : memref<4x4x16xf16>
        %290 = arith.remf %cst, %cst : f32
        scf.yield
      }
      %generated = tensor.generate %c14, %arg3 {
      ^bb0(%arg5: index, %arg6: index):
        %277 = memref.load %alloc_3[%c3] : memref<4xf32>
        %278 = arith.shrsi %c2110867356_i64, %c1711636616_i64 : i64
        %279 = vector.shuffle %260, %261 [2, 5, 6, 11, 12] : vector<12xi1>, vector<1xi1>
        %280 = vector.broadcast %c-974_i16 : i16 to vector<4x4x16xi16>
        %cst_49 = arith.constant 1.000000e+00 : f16
        tensor.yield %cst_49 : f16
      } : tensor<?x?xf16>
      %263 = arith.maxf %cst, %cst : f32
      %264 = vector.broadcast %c-974_i16 : i16 to vector<7x12xi16>
      %265 = vector.broadcast %c-974_i16 : i16 to vector<12xi16>
      %dest, %accumulated_value = vector.scan <minui>, %264, %265 {inclusive = true, reduction_dim = 0 : i64} : vector<7x12xi16>, vector<12xi16>
      %266 = math.log1p %13 : tensor<4xf16>
      %267 = arith.ori %c-9611_i16, %c19112_i16 : i16
      %268 = vector.broadcast %c1554343177_i64 : i64 to vector<4xi64>
      %269 = math.expm1 %11 : tensor<7x12xf16>
      %270 = math.absi %12 : tensor<12x4xi32>
      %271 = vector.create_mask %arg3, %arg3 : vector<7x12xi1>
      %alloc_48 = memref.alloc() : memref<4xi1>
      %272 = vector.broadcast %cst : f32 to vector<4xf32>
      %273 = vector.broadcast %true : i1 to vector<4xi1>
      %274 = vector.maskedload %alloc_3[%c1], %273, %272 : memref<4xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %275 = scf.while (%arg5 = %alloc_4) : (memref<4xf32>) -> memref<4xf32> {
        %277 = arith.divui %c1711636616_i64, %c1554343177_i64 : i64
        %cst_49 = arith.constant 1.000000e+00 : f16
        %inserted_50 = tensor.insert %cst_49 into %5[%c4, %c0] : tensor<7x12xf16>
        %278 = math.ctpop %c1068090315_i32 : i32
        %279 = math.log10 %3 : tensor<4xf32>
        %280 = arith.mulf %cst_49, %cst_49 : f16
        %281 = vector.multi_reduction <maxsi>, %268, %268 [] : vector<4xi64> to vector<4xi64>
        %282 = arith.floordivsi %c580843849_i64, %c2110867356_i64 : i64
        %283 = index.casts %c4 : index to i32
        scf.condition(%false) %alloc_3 : memref<4xf32>
      } do {
      ^bb0(%arg5: memref<4xf32>):
        %rank_49 = tensor.rank %1 : tensor<7x12xf16>
        %277 = vector.multi_reduction <minui>, %273, %273 [] : vector<4xi1> to vector<4xi1>
        bufferization.dealloc_tensor %13 : tensor<4xf16>
        %278 = math.floor %5 : tensor<7x12xf16>
        %false_50 = index.bool.constant false
        %279 = math.ctlz %true_1 : i1
        %280 = arith.maxf %cst, %cst : f32
        %281 = vector.shuffle %268, %268 [0, 1, 3, 4, 5, 7] : vector<4xi64>, vector<4xi64>
        %282 = math.round %15 : tensor<4xf16>
        %283 = index.divs %c4, %arg4
        memref.copy %alloc_5, %alloc_15 : memref<4x4x16xf16> to memref<4x4x16xf16>
        %284 = bufferization.clone %alloc_13 : memref<7x12xi32> to memref<7x12xi32>
        %285 = arith.ori %c2110867356_i64, %c1711636616_i64 : i64
        %286 = vector.matrix_multiply %274, %272 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %alloc_51 = memref.alloc() : memref<4xf16>
        %287 = math.exp %0 : tensor<4x4x16xf16>
        scf.yield %alloc_4 : memref<4xf32>
      }
      %276 = tensor.empty() : tensor<4xf32>
      scf.reduce(%276)  : tensor<4xf32> {
      ^bb0(%arg5: tensor<4xf32>, %arg6: tensor<4xf32>):
        %dest_49, %accumulated_value_50 = vector.scan <and>, %271, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<7x12xi1>, vector<12xi1>
        %277 = arith.floordivsi %true_1, %false : i1
        %cast_51 = tensor.cast %14 : tensor<4x4x16xi1> to tensor<?x?x?xi1>
        %278 = arith.shrui %c-9611_i16, %c19112_i16 : i16
        %alloc_52 = memref.alloc() : memref<7x12xf16>
        memref.copy %alloc_8, %alloc_52 : memref<7x12xf16> to memref<7x12xf16>
        %279 = arith.shrsi %c580843849_i64, %c1554343177_i64 : i64
        %280 = bufferization.to_memref %arg5 : memref<4xf32>
        %281 = vector.matrix_multiply %260, %273 {lhs_columns = 4 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<4xi1>) -> vector<3xi1>
        %282 = tensor.empty() : tensor<4xf32>
        scf.reduce.return %282 : tensor<4xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_4[%c4] : memref<4xf32>, vector<16xf32>
    affine.vector_store %20, %alloc_4[%c10] : memref<4xf32>, vector<16xf32>
    %alloc_18 = memref.alloc() : memref<4xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%15, %alloc_18 : tensor<4xf16>, memref<4xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = arith.remf %cst, %cst : f32
    %24 = index.add %c2, %c1
    scf.execute_region {
      %258 = index.sub %c15, %24
      %259 = arith.addf %cst, %cst : f32
      %260 = vector.load %alloc_8[%c5, %c4] : memref<7x12xf16>, vector<7x12xf16>
      %261 = arith.subi %true, %true : i1
      vector.print %260 : vector<7x12xf16>
      %262 = math.log10 %3 : tensor<4xf32>
      %263 = math.fma %13, %13, %15 : tensor<4xf16>
      %rank_48 = tensor.rank %9 : tensor<4xi64>
      %cst_49 = arith.constant 1.000000e+00 : f16
      %264 = vector.broadcast %cst_49 : f16 to vector<7xf16>
      %dest, %accumulated_value = vector.scan <maxf>, %260, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<7x12xf16>, vector<7xf16>
      %rank_50 = tensor.rank %transposed : tensor<12x7xi1>
      %cst_51 = arith.constant 1.000000e+00 : f16
      %265 = vector.broadcast %cst_51 : f16 to vector<7xf16>
      %dest_52, %accumulated_value_53 = vector.scan <mul>, %260, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<7x12xf16>, vector<7xf16>
      %266 = math.roundeven %11 : tensor<7x12xf16>
      %267 = arith.shrsi %c1554343177_i64, %c580843849_i64 : i64
      %from_elements_54 = tensor.from_elements %c1554343177_i64, %c1554343177_i64, %c1711636616_i64, %c580843849_i64, %c580843849_i64, %c1554343177_i64, %c1554343177_i64, %c2110867356_i64, %c580843849_i64, %c2110867356_i64, %c2110867356_i64, %c1554343177_i64, %c2110867356_i64, %c2111428848_i64, %c580843849_i64, %c2111428848_i64, %c2111428848_i64, %c2110867356_i64, %c2110867356_i64, %c2110867356_i64, %c1711636616_i64, %c2111428848_i64, %c2110867356_i64, %c2111428848_i64, %c580843849_i64, %c580843849_i64, %c1554343177_i64, %c2110867356_i64, %c580843849_i64, %c1554343177_i64, %c2111428848_i64, %c2110867356_i64, %c2111428848_i64, %c2110867356_i64, %c1554343177_i64, %c1554343177_i64, %c580843849_i64, %c1554343177_i64, %c1554343177_i64, %c2110867356_i64, %c2110867356_i64, %c2111428848_i64, %c2110867356_i64, %c1554343177_i64, %c1554343177_i64, %c2111428848_i64, %c1711636616_i64, %c580843849_i64, %c580843849_i64, %c1711636616_i64, %c2111428848_i64, %c2111428848_i64, %c1554343177_i64, %c1554343177_i64, %c1554343177_i64, %c1554343177_i64, %c2110867356_i64, %c2111428848_i64, %c1711636616_i64, %c1554343177_i64, %c1554343177_i64, %c2110867356_i64, %c1711636616_i64, %c580843849_i64, %c2111428848_i64, %c1554343177_i64, %c2111428848_i64, %c2110867356_i64, %c1554343177_i64, %c2111428848_i64, %c2111428848_i64, %c2111428848_i64, %c2110867356_i64, %c1711636616_i64, %c1711636616_i64, %c2110867356_i64, %c2111428848_i64, %c580843849_i64, %c580843849_i64, %c1711636616_i64, %c1554343177_i64, %c2110867356_i64, %c1711636616_i64, %c2110867356_i64 : tensor<7x12xi64>
      %268 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
      %269 = vector.reduction <minf>, %20 : vector<16xf32> into f32
      scf.yield
    }
    %25 = index.ceildivs %c14, %c8
    %26 = vector.broadcast %c5 : index to vector<12xindex>
    %27 = vector.broadcast %false_0 : i1 to vector<12xi1>
    %cst_19 = arith.constant 1.000000e+00 : f16
    %28 = vector.broadcast %cst_19 : f16 to vector<12xf16>
    vector.scatter %alloc_15[%c2, %c1, %c10] [%26], %27, %28 : memref<4x4x16xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    %29 = arith.addf %cst, %cst : f32
    %30 = arith.ori %c580843849_i64, %c2110867356_i64 : i64
    %cst_20 = arith.constant 1.000000e+00 : f16
    %inserted = tensor.insert %cst_20 into %0[%c0, %c1, %c14] : tensor<4x4x16xf16>
    scf.if %false {
      %258 = math.rsqrt %11 : tensor<7x12xf16>
      %259 = arith.shrsi %c1554343177_i64, %c1554343177_i64 : i64
      %260 = math.ctlz %6 : tensor<4x4x16xi16>
      %261 = index.maxu %c0, %c1
      %262 = math.roundeven %0 : tensor<4x4x16xf16>
      %263 = arith.maxf %cst, %cst : f32
      %264 = bufferization.to_memref %transposed : memref<12x7xi1>
      %265 = affine.for %arg3 = 0 to 19 iter_args(%arg4 = %cst) -> (f32) {
        affine.yield %cst : f32
      }
    }
    %31 = arith.negf %cst : f32
    %32 = index.divs %c6, %c15
    %33 = arith.divsi %c1068090315_i32, %c1068090315_i32 : i32
    %34 = scf.if %false_0 -> (memref<7x12xi32>) {
      %258 = vector.create_mask %c10, %c10 : vector<12x4xi1>
      %259 = arith.addi %c1317615588_i32, %c1317615588_i32 : i32
      %260 = math.tanh %11 : tensor<7x12xf16>
      %261 = bufferization.to_memref %12 : memref<12x4xi32>
      %extracted_48 = tensor.extract %18[%c10, %c4] : tensor<12x7xi1>
      %262 = arith.subi %c-974_i16, %c-30650_i16 : i16
      %from_elements_49 = tensor.from_elements %cst, %cst, %cst, %cst : tensor<4xf32>
      %263 = index.maxs %c15, %c3
      scf.yield %alloc_10 : memref<7x12xi32>
    } else {
      %258 = math.absi %c2110867356_i64 : i64
      %259 = math.log10 %cst : f32
      %260 = arith.addf %cst_20, %cst_20 : f16
      %261 = arith.floordivsi %c1711636616_i64, %c1711636616_i64 : i64
      %262 = vector.multi_reduction <maxf>, %20, %cst [0] : vector<16xf32> to f32
      %263 = arith.divf %cst, %cst : f32
      %264 = arith.divui %false_0, %false_0 : i1
      %265 = arith.remsi %false_0, %true : i1
      scf.yield %alloc_10 : memref<7x12xi32>
    }
    %35 = math.tanh %13 : tensor<4xf16>
    %36 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
    %37 = arith.negf %cst : f32
    %38 = tensor.empty() : tensor<4xf32>
    %39 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d0 + 4))>(%c0, %c11, %c14, %c12)
    memref.assume_alignment %alloc_13, 4 : memref<7x12xi32>
    %40 = index.floordivs %c2, %32
    %41 = vector.transpose %20, [0] : vector<16xf32> to vector<16xf32>
    %42 = affine.load %alloc_15[%c2, %c6, %c10] : memref<4x4x16xf16>
    %43 = arith.maxf %cst_20, %cst_20 : f16
    scf.execute_region {
      %258 = bufferization.clone %alloc_11 : memref<12x4xf16> to memref<12x4xf16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
      %260 = memref.load %alloc_15[%c3, %c0, %c0] : memref<4x4x16xf16>
      %261 = tensor.empty() : tensor<4xf16>
      %mapped_48 = linalg.map ins(%15, %alloc_2, %alloc_2 : tensor<4xf16>, memref<4xf16>, memref<4xf16>) outs(%261 : tensor<4xf16>)
        (%in: f16, %in_50: f16, %in_51: f16) {
          %275 = memref.atomic_rmw addf %cst, %alloc_7[%c3, %c1, %c8] : (f32, memref<4x4x16xf32>) -> f32
          %276 = arith.muli %c2111428848_i64, %c1711636616_i64 : i64
          %cast_52 = tensor.cast %10 : tensor<12x4xi1> to tensor<?x?xi1>
          %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
          %278 = arith.xori %true_1, %true_1 : i1
          %from_elements_53 = tensor.from_elements %in_51, %cst_20, %cst_20, %42, %in, %in, %in_50, %in, %in_50, %in, %in, %42, %in_50, %in, %in, %in_50, %42, %cst_20, %in, %42, %cst_20, %42, %in_50, %cst_20, %in, %in_51, %in_50, %in_50, %in_51, %in, %in_51, %42, %in, %42, %42, %cst_20, %in, %cst_20, %42, %cst_20, %in_50, %42, %42, %in, %42, %cst_20, %cst_20, %in_51 : tensor<12x4xf16>
          %279 = math.rsqrt %5 : tensor<7x12xf16>
          %280 = math.absi %18 : tensor<12x7xi1>
          %281 = index.maxu %c15, %c7
          %282 = vector.transpose %20, [0] : vector<16xf32> to vector<16xf32>
          %283 = index.casts %c1068090315_i32 : i32 to index
          %284 = vector.shuffle %20, %20 [0, 2, 3, 4, 5, 6, 7, 8, 10, 13, 14, 15, 21, 25, 31] : vector<16xf32>, vector<16xf32>
          %285 = math.tanh %22 : tensor<f16>
          %inserted_54 = tensor.insert %in_50 into %0[%c3, %c3, %c0] : tensor<4x4x16xf16>
          %286 = math.log10 %261 : tensor<4xf16>
          %287 = arith.addi %c1068090315_i32, %c1317615588_i32 : i32
          %288 = arith.minf %in, %42 : f16
          %289 = arith.muli %c-30650_i16, %c-974_i16 : i16
          %290 = vector.broadcast %c1554343177_i64 : i64 to vector<4xi64>
          %c0_i16_55 = arith.constant 0 : i16
          %c0_i16_56 = arith.constant 0 : i16
          %291 = vector.transfer_read %alloc_12[%c8, %c1], %c0_i16_56 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<12x4xi16>, vector<16xi16>
          %292 = index.ceildivs %c2, %c5
          %rank_57 = tensor.rank %8 : tensor<4x4x16xi16>
          %293 = arith.subi %c1317615588_i32, %c1317615588_i32 : i32
          %294 = math.log1p %in_51 : f16
          %295 = index.castu %c-30650_i16 : i16 to index
          %296 = arith.shrsi %c-30650_i16, %c0_i16_55 : i16
          %297 = bufferization.to_tensor %alloc_3 : memref<4xf32>
          %298 = math.absi %c0_i16_55 : i16
          bufferization.dealloc_tensor %6 : tensor<4x4x16xi16>
          %cast_58 = tensor.cast %22 : tensor<f16> to tensor<f16>
          %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
          %300 = index.castu %c-974_i16 : i16 to index
          %cst_59 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_59 : f16
        }
      %262 = bufferization.to_memref %9 : memref<4xi64>
      %263 = math.roundeven %4 : tensor<7x12xf16>
      %264 = vector.load %alloc_10[%c0, %c0] : memref<7x12xi32>, vector<7x12xi32>
      memref.copy %alloc_11, %258 : memref<12x4xf16> to memref<12x4xf16>
      %265 = vector.broadcast %c3 : index to vector<7xindex>
      %266 = vector.broadcast %false_0 : i1 to vector<7xi1>
      %267 = vector.broadcast %42 : f16 to vector<7xf16>
      vector.scatter %258[%c9, %c0] [%265], %266, %267 : memref<12x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %268 = vector.broadcast %42 : f16 to vector<f16>
      %269 = vector.transfer_write %268, %13[%c0] : vector<f16>, tensor<4xf16>
      %270 = arith.shrsi %c2111428848_i64, %c1711636616_i64 : i64
      %271 = math.rsqrt %3 : tensor<4xf32>
      %272 = vector.extract_strided_slice %264 {offsets = [1], sizes = [1], strides = [1]} : vector<7x12xi32> to vector<1x12xi32>
      %273 = arith.addf %cst_20, %cst_20 : f16
      %collapsed_49 = tensor.collapse_shape %12 [[0, 1]] : tensor<12x4xi32> into tensor<48xi32>
      %274 = arith.ori %c19112_i16, %c-974_i16 : i16
      scf.yield
    }
    %44 = math.expm1 %cst : f32
    %45 = tensor.empty() : tensor<4xi32>
    %46 = math.fpowi %3, %45 : tensor<4xf32>, tensor<4xi32>
    %47 = vector.load %alloc_16[%c0, %c2, %c11] : memref<4x4x16xi1>, vector<12x4xi1>
    %48 = arith.muli %c1317615588_i32, %c1068090315_i32 : i32
    %49 = arith.floordivsi %c1317615588_i32, %c1068090315_i32 : i32
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x4x16xf16> into tensor<16x16xf16>
    %50 = vector.bitcast %47 : vector<12x4xi1> to vector<12x4xi1>
    %51 = math.ctlz %10 : tensor<12x4xi1>
    %52 = index.castu %c-9611_i16 : i16 to index
    %53 = vector.extract %47[9] : vector<12x4xi1>
    %54 = arith.mulf %cst_20, %42 : f16
    %55 = math.log10 %collapsed : tensor<16x16xf16>
    %inserted_21 = tensor.insert %true_1 into %14[%c3, %c2, %c0] : tensor<4x4x16xi1>
    %splat = tensor.splat %c-974_i16 : tensor<4xi16>
    %56 = arith.maxui %c-30650_i16, %c-30650_i16 : i16
    %57 = vector.transpose %47, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
    %58 = math.round %cst : f32
    %59 = math.log10 %cst : f32
    affine.store %cst, %alloc[%c4, %c0, %c5] : memref<4x4x16xf32>
    %60 = arith.muli %true_1, %true : i1
    %61 = arith.cmpi sgt, %c1711636616_i64, %c1554343177_i64 : i64
    %62 = bufferization.to_memref %22 : memref<f16>
    %63 = arith.minui %c2110867356_i64, %c2110867356_i64 : i64
    %64 = arith.floordivsi %c580843849_i64, %c1711636616_i64 : i64
    affine.store %cst_20, %alloc_11[%c2, %c9] : memref<12x4xf16>
    %65 = math.atan %5 : tensor<7x12xf16>
    %cst_22 = arith.constant 1.000000e+00 : f16
    %66 = vector.transfer_read %4[%c6, %c11], %cst_22 : tensor<7x12xf16>, vector<f16>
    %67 = arith.maxf %cst_20, %cst_22 : f16
    %68 = index.maxu %c10, %c1
    %69 = arith.remui %c1711636616_i64, %c1554343177_i64 : i64
    %70 = index.divu %25, %32
    %71 = vector.broadcast %39 : index to vector<16xindex>
    %72 = vector.broadcast %false : i1 to vector<16xi1>
    %73 = vector.broadcast %42 : f16 to vector<16xf16>
    vector.scatter %alloc_18[%c3] [%71], %72, %73 : memref<4xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
    %74 = arith.maxf %cst_20, %cst_20 : f16
    %75 = math.absf %3 : tensor<4xf32>
    %76 = tensor.empty() : tensor<4x4x16xf16>
    %mapped = linalg.map ins(%alloc_15 : memref<4x4x16xf16>) outs(%76 : tensor<4x4x16xf16>)
      (%in: f16) {
        %alloc_48 = memref.alloc() : memref<4x4x16xi16>
        memref.tensor_store %6, %alloc_48 : memref<4x4x16xi16>
        %258 = math.log %3 : tensor<4xf32>
        %cst_49 = arith.constant 1.000000e+00 : f16
        %259 = vector.transfer_read %alloc_8[%25, %40], %cst_49 : memref<7x12xf16>, vector<16xf16>
        %260 = arith.minf %in, %cst_22 : f16
        %inserted_50 = tensor.insert %c-30650_i16 into %8[%c2, %c0, %c2] : tensor<4x4x16xi16>
        %261 = vector.load %alloc_5[%c1, %c0, %c5] : memref<4x4x16xf16>, vector<4xf16>
        %262 = index.floordivs %c8, %c7
        %inserted_51 = tensor.insert %cst_22 into %13[%c1] : tensor<4xf16>
        %false_52 = index.bool.constant false
        %263 = arith.minf %cst_20, %cst_22 : f16
        %264 = vector.insertelement %false_52, %53[%24 : index] : vector<4xi1>
        %265 = math.log1p %38 : tensor<4xf32>
        %266 = scf.if %true_1 -> (memref<4x4x16xi32>) {
          %284 = bufferization.clone %alloc_2 : memref<4xf16> to memref<4xf16>
          %285 = vector.broadcast %cst_22 : f16 to vector<16xf16>
          %286 = vector.broadcast %false : i1 to vector<16xi1>
          %287 = vector.maskedload %alloc_5[%c2, %c2, %c7], %286, %285 : memref<4x4x16xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
          %288 = math.powf %21, %22 : tensor<f16>
          %289 = math.absi %c19112_i16 : i16
          %alloc_56 = memref.alloc() : memref<12x4xf16>
          memref.copy %alloc_11, %alloc_56 : memref<12x4xf16> to memref<12x4xf16>
          %290 = index.castu %c9 : index to i32
          %291 = arith.maxf %cst_22, %cst_20 : f16
          %292 = math.tanh %11 : tensor<7x12xf16>
          %alloc_57 = memref.alloc() : memref<4x4x16xi32>
          scf.yield %alloc_57 : memref<4x4x16xi32>
        } else {
          %collapsed_56 = tensor.collapse_shape %10 [[0, 1]] : tensor<12x4xi1> into tensor<48xi1>
          %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
          %285 = index.maxs %c3, %39
          %cst_57 = arith.constant 1.000000e+00 : f16
          %cst_58 = arith.constant 0.000000e+00 : f16
          %286 = vector.transfer_read %11[%24, %c2], %cst_58 : tensor<7x12xf16>, vector<f16>
          %287 = arith.addf %cst_20, %in : f16
          %288 = arith.divui %c-9611_i16, %c-30650_i16 : i16
          %289 = math.roundeven %3 : tensor<4xf32>
          %cast_59 = tensor.cast %9 : tensor<4xi64> to tensor<?xi64>
          %alloc_60 = memref.alloc() : memref<4x4x16xi32>
          scf.yield %alloc_60 : memref<4x4x16xi32>
        }
        %267 = scf.while (%arg3 = %20) : (vector<16xf32>) -> vector<16xf32> {
          %284 = bufferization.clone %alloc_16 : memref<4x4x16xi1> to memref<4x4x16xi1>
          %285 = math.absi %c-30650_i16 : i16
          %286 = vector.transpose %53, [0] : vector<4xi1> to vector<4xi1>
          %287 = math.fpowi %cst_49, %c1068090315_i32 : f16, i32
          %alloc_56 = memref.alloc() : memref<12x7xi1>
          memref.tensor_store %18, %alloc_56 : memref<12x7xi1>
          %288 = vector.transpose %261, [0] : vector<4xf16> to vector<4xf16>
          %c1356855129_i32 = arith.constant 1356855129 : i32
          %rank_57 = tensor.rank %15 : tensor<4xf16>
          scf.condition(%true_1) %20 : vector<16xf32>
        } do {
        ^bb0(%arg3: vector<16xf32>):
          %284 = math.powf %1, %11 : tensor<7x12xf16>
          %inserted_56 = tensor.insert %false into %transposed[%c4, %c4] : tensor<12x7xi1>
          %285 = arith.minf %cst_20, %in : f16
          %286 = index.sizeof
          %287 = math.round %0 : tensor<4x4x16xf16>
          %288 = bufferization.clone %alloc_15 : memref<4x4x16xf16> to memref<4x4x16xf16>
          %289 = math.log10 %3 : tensor<4xf32>
          %290 = vector.extract %47[9] : vector<12x4xi1>
          %291 = arith.addf %cst_22, %cst_20 : f16
          affine.store %false_0, %alloc_9[%c10, %c8] : memref<7x12xi1>
          %extracted_57 = tensor.extract %13[%c1] : tensor<4xf16>
          %false_58 = index.bool.constant false
          %alloc_59 = memref.alloc() : memref<4x4x16xi1>
          memref.copy %alloc_16, %alloc_59 : memref<4x4x16xi1> to memref<4x4x16xi1>
          %false_60 = index.bool.constant false
          %292 = vector.bitcast %20 : vector<16xf32> to vector<16xi32>
          %293 = arith.shrsi %c2110867356_i64, %c580843849_i64 : i64
          scf.yield %20 : vector<16xf32>
        }
        %268 = math.roundeven %cst_20 : f16
        %269 = math.log1p %1 : tensor<7x12xf16>
        %270 = bufferization.clone %alloc_3 : memref<4xf32> to memref<4xf32>
        %271 = index.castu %c14 : index to i32
        %272 = affine.apply affine_map<(d0) -> (((d0 + 8) floordiv 32 - d0 floordiv 2) ceildiv 64)>(%25)
        %273 = math.exp %13 : tensor<4xf16>
        %274 = arith.mulf %cst_22, %cst_20 : f16
        %275 = arith.cmpf ole, %cst_49, %cst_49 : f16
        %276 = math.exp2 %11 : tensor<7x12xf16>
        %277 = bufferization.clone %alloc_6 : memref<7x12xf32> to memref<7x12xf32>
        %278 = affine.load %alloc_8[%c7, %c15] : memref<7x12xf16>
        %279 = vector.matrix_multiply %20, %20 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %280 = arith.maxf %in, %cst_49 : f16
        %281 = index.ceildivs %c15, %c1
        %true_53 = index.bool.constant true
        %282 = math.log %collapsed : tensor<16x16xf16>
        %collapsed_54 = tensor.collapse_shape %7 [[0, 1]] : tensor<12x4xi1> into tensor<48xi1>
        %283 = arith.minui %c1554343177_i64, %c2111428848_i64 : i64
        %cst_55 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_55 : f16
      }
    %77 = arith.negf %42 : f16
    %78 = arith.addi %c2111428848_i64, %c2110867356_i64 : i64
    %alloc_23 = memref.alloc() : memref<7x12xf32>
    %79 = scf.while (%arg3 = %true) : (i1) -> i1 {
      %alloc_48 = memref.alloc() : memref<4x16xi1>
      %258 = tensor.empty() : tensor<12x16xi1>
      %259 = linalg.matmul ins(%16, %alloc_48 : tensor<12x4xi1>, memref<4x16xi1>) outs(%258 : tensor<12x16xi1>) -> tensor<12x16xi1>
      %extracted_49 = tensor.extract %16[%c10, %c3] : tensor<12x4xi1>
      %260 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 32)>(%52, %c10, %c0, %c2)
      %261 = vector.extract_strided_slice %53 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
      %262 = index.castu %24 : index to i32
      %263 = math.expm1 %15 : tensor<4xf16>
      %264 = math.ipowi %c-30650_i16, %c-30650_i16 : i16
      %265 = index.maxs %c4, %c10
      scf.condition(%false) %false : i1
    } do {
    ^bb0(%arg3: i1):
      %258 = index.maxu %c6, %c13
      %259 = arith.maxui %c2111428848_i64, %c1711636616_i64 : i64
      %260 = math.absi %true : i1
      %261 = index.maxs %52, %c7
      %262 = arith.cmpf uno, %42, %42 : f16
      affine.store %cst, %alloc_4[%c11] : memref<4xf32>
      %263 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + 8) mod 16 - 1 == 0, d3 + 14 >= 0, (d2 + 8) mod 16 - 4 >= 0)>(%c13, %c13, %c3, %c4) -> memref<12x4xi64> {
        %273 = arith.cmpi ugt, %c1068090315_i32, %c1317615588_i32 : i32
        %rank_48 = tensor.rank %17 : tensor<12x4xi1>
        %274 = vector.flat_transpose %53 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %275 = arith.cmpf uno, %42, %42 : f16
        memref.copy %alloc_7, %alloc : memref<4x4x16xf32> to memref<4x4x16xf32>
        %276 = math.cos %11 : tensor<7x12xf16>
        %277 = vector.shuffle %20, %20 [1, 5, 7, 8, 10, 11, 13, 16, 17, 18, 22, 27, 29, 30, 31] : vector<16xf32>, vector<16xf32>
        %278 = vector.transpose %53, [0] : vector<4xi1> to vector<4xi1>
        %alloc_49 = memref.alloc() : memref<12x4xi64>
        affine.yield %alloc_49 : memref<12x4xi64>
      } else {
        %273 = math.roundeven %5 : tensor<7x12xf16>
        %274 = memref.atomic_rmw maxf %cst, %alloc_17[] : (f32, memref<f32>) -> f32
        %275 = vector.multi_reduction <mul>, %53, %true [0] : vector<4xi1> to i1
        %276 = arith.maxsi %c1554343177_i64, %c580843849_i64 : i64
        %277 = math.round %3 : tensor<4xf32>
        %278 = arith.addf %cst, %cst : f32
        %279 = vector.matrix_multiply %20, %20 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %280 = arith.shrsi %c580843849_i64, %c2110867356_i64 : i64
        %alloc_48 = memref.alloc() : memref<12x4xi64>
        affine.yield %alloc_48 : memref<12x4xi64>
      }
      %264 = index.castu %arg3 : i1 to index
      %265 = math.ctpop %9 : tensor<4xi64>
      %266 = memref.atomic_rmw addf %cst, %alloc_3[%c3] : (f32, memref<4xf32>) -> f32
      %267 = vector.multi_reduction <minsi>, %47, %47 [] : vector<12x4xi1> to vector<12x4xi1>
      %268 = math.ctlz %14 : tensor<4x4x16xi1>
      %269 = vector.transpose %20, [0] : vector<16xf32> to vector<16xf32>
      %270 = arith.maxui %c2110867356_i64, %c580843849_i64 : i64
      %271 = vector.matrix_multiply %20, %20 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
      %272 = arith.cmpi sge, %true_1, %arg3 : i1
      scf.yield %false : i1
    }
    %cast = tensor.cast %13 : tensor<4xf16> to tensor<?xf16>
    %from_elements = tensor.from_elements %cst_22, %cst_20, %cst_22, %42, %cst_20, %cst_20, %42, %42, %42, %cst_20, %42, %cst_20, %cst_22, %cst_20, %42, %cst_20, %cst_20, %cst_20, %42, %cst_20, %cst_20, %cst_20, %cst_22, %cst_20, %cst_20, %42, %cst_20, %cst_20, %cst_22, %cst_20, %cst_20, %cst_20, %42, %cst_20, %42, %cst_22, %cst_20, %42, %cst_20, %cst_20, %cst_22, %cst_20, %cst_22, %cst_22, %42, %cst_22, %cst_20, %cst_20, %cst_22, %42, %42, %42, %cst_20, %42, %42, %cst_22, %42, %cst_20, %cst_22, %cst_22, %42, %cst_20, %cst_22, %cst_20, %cst_20, %cst_20, %cst_20, %42, %42, %cst_20, %42, %cst_20, %42, %cst_20, %cst_22, %cst_20, %42, %cst_22, %cst_22, %cst_22, %42, %cst_20, %cst_20, %cst_22 : tensor<7x12xf16>
    %80 = arith.divf %cst_20, %42 : f16
    %81 = math.log10 %38 : tensor<4xf32>
    %82 = vector.extract_strided_slice %20 {offsets = [3], sizes = [9], strides = [1]} : vector<16xf32> to vector<9xf32>
    %83 = arith.ori %c19112_i16, %c-9611_i16 : i16
    %84 = math.ctlz %c2110867356_i64 : i64
    %85 = arith.maxui %c-974_i16, %c-974_i16 : i16
    %86 = vector.splat %cst_20 : vector<4xf16>
    %87 = arith.addi %c-974_i16, %c-30650_i16 : i16
    %88 = arith.subi %true, %true_1 : i1
    %89 = math.round %4 : tensor<7x12xf16>
    %90 = arith.minf %cst_20, %42 : f16
    %91 = math.sqrt %22 : tensor<f16>
    %92 = arith.cmpi sge, %c-974_i16, %c-974_i16 : i16
    %93 = vector.transpose %53, [0] : vector<4xi1> to vector<4xi1>
    %94 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst : vector<16xf32>, vector<16xf32> into f32
    %95 = index.add %c6, %32
    %cast_24 = tensor.cast %from_elements : tensor<7x12xf16> to tensor<?x?xf16>
    %96 = vector.matrix_multiply %82, %20 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 16 : i32} : (vector<9xf32>, vector<16xf32>) -> vector<144xf32>
    %inserted_25 = tensor.insert %c-9611_i16 into %8[%c2, %c0, %c14] : tensor<4x4x16xi16>
    %97 = scf.if %true_1 -> (memref<7x12xi1>) {
      %258 = vector.transpose %47, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
      %259 = vector.load %alloc_16[%c3, %c1, %c0] : memref<4x4x16xi1>, vector<7x12xi1>
      %260 = scf.while (%arg3 = %c1554343177_i64) : (i64) -> i64 {
        %266 = arith.xori %c-30650_i16, %c19112_i16 : i16
        %267 = math.roundeven %21 : tensor<f16>
        %268 = vector.load %alloc_15[%c1, %c3, %c3] : memref<4x4x16xf16>, vector<4x4x16xf16>
        %269 = arith.addi %c19112_i16, %c-30650_i16 : i16
        %270 = vector.transpose %50, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
        %271 = math.exp %from_elements : tensor<7x12xf16>
        %272 = math.absf %11 : tensor<7x12xf16>
        %273 = bufferization.to_memref %1 : memref<7x12xf16>
        scf.condition(%true) %c2110867356_i64 : i64
      } do {
      ^bb0(%arg3: i64):
        %false_48 = arith.constant false
        %266 = vector.transfer_read %7[%c11, %c5], %false_48 : tensor<12x4xi1>, vector<7xi1>
        %267 = math.absi %c-30650_i16 : i16
        %268 = arith.mulf %42, %cst_22 : f16
        %269 = math.log %42 : f16
        %270 = arith.subi %c1554343177_i64, %arg3 : i64
        affine.store %cst_22, %alloc_2[%c12] : memref<4xf16>
        %271 = math.rsqrt %cst_20 : f16
        %272 = arith.cmpi eq, %c1711636616_i64, %c580843849_i64 : i64
        %273 = index.casts %32 : index to i32
        %extracted_49 = tensor.extract %12[%c0, %c0] : tensor<12x4xi32>
        %274 = arith.maxf %cst_20, %42 : f16
        %275 = vector.broadcast %42 : f16 to vector<12xf16>
        %276 = vector.broadcast %false_0 : i1 to vector<12xi1>
        %277 = vector.maskedload %alloc_18[%c0], %276, %275 : memref<4xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %278 = math.log %38 : tensor<4xf32>
        %279 = index.castu %c2110867356_i64 : i64 to index
        %280 = bufferization.clone %alloc_10 : memref<7x12xi32> to memref<7x12xi32>
        %281 = math.fpowi %cst, %c1068090315_i32 : f32, i32
        scf.yield %c2111428848_i64 : i64
      }
      %261 = math.ctpop %17 : tensor<12x4xi1>
      %262 = bufferization.to_memref %16 : memref<12x4xi1>
      %263 = arith.remui %true, %false : i1
      %264 = arith.divf %cst_20, %cst_22 : f16
      %265 = bufferization.clone %alloc_12 : memref<12x4xi16> to memref<12x4xi16>
      scf.yield %alloc_9 : memref<7x12xi1>
    } else {
      %258 = index.maxu %c1, %c11
      %259 = arith.muli %c1317615588_i32, %c1068090315_i32 : i32
      %260 = math.roundeven %4 : tensor<7x12xf16>
      %261 = bufferization.to_tensor %alloc : memref<4x4x16xf32>
      %cast_48 = tensor.cast %13 : tensor<4xf16> to tensor<?xf16>
      %262 = vector.broadcast %true : i1 to vector<12xi1>
      %dest, %accumulated_value = vector.scan <mul>, %50, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<12x4xi1>, vector<12xi1>
      %alloc_49 = memref.alloc() : memref<12x7xf16>
      %263 = tensor.empty() : tensor<7x7xf16>
      %264 = linalg.matmul ins(%11, %alloc_49 : tensor<7x12xf16>, memref<12x7xf16>) outs(%263 : tensor<7x7xf16>) -> tensor<7x7xf16>
      %265 = arith.subi %c-9611_i16, %c-9611_i16 : i16
      scf.yield %alloc_9 : memref<7x12xi1>
    }
    %98 = bufferization.clone %alloc_7 : memref<4x4x16xf32> to memref<4x4x16xf32>
    %99 = vector.broadcast %cst : f32 to vector<9x9xf32>
    %100 = vector.outerproduct %82, %82, %99 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
    %101 = arith.maxf %cst, %cst : f32
    %102 = arith.maxui %c19112_i16, %c-30650_i16 : i16
    %103 = arith.remf %cst, %cst : f32
    %104 = math.floor %13 : tensor<4xf16>
    %105 = index.divu %32, %95
    %106 = index.maxu %95, %52
    %107 = index.sub %25, %39
    %false_26 = index.bool.constant false
    %false_27 = index.bool.constant false
    %108 = index.add %c12, %70
    %109 = scf.if %false -> (i32) {
      %258 = math.exp2 %0 : tensor<4x4x16xf16>
      %from_elements_48 = tensor.from_elements %cst_20, %cst_22, %cst_20, %42, %42, %cst_20, %cst_20, %cst_22, %42, %cst_20, %cst_20, %cst_20, %42, %cst_20, %cst_22, %cst_22, %cst_20, %cst_22, %cst_22, %42, %cst_20, %42, %42, %cst_20, %cst_22, %42, %cst_22, %cst_22, %cst_20, %cst_20, %cst_20, %cst_20, %42, %cst_22, %cst_22, %42, %42, %42, %cst_20, %42, %cst_20, %cst_22, %cst_20, %cst_20, %42, %42, %cst_20, %cst_20, %42, %cst_20, %cst_22, %cst_20, %cst_20, %cst_22, %cst_20, %cst_20, %cst_20, %cst_22, %cst_22, %cst_22, %cst_20, %42, %cst_20, %cst_22, %42, %42, %cst_22, %cst_22, %cst_20, %cst_22, %cst_20, %cst_20, %cst_20, %42, %cst_22, %cst_22, %42, %cst_22, %42, %cst_22, %cst_22, %42, %cst_22, %cst_20 : tensor<7x12xf16>
      %splat_49 = tensor.splat %c1068090315_i32 : tensor<4x4x16xi32>
      %259 = math.log1p %4 : tensor<7x12xf16>
      %cast_50 = tensor.cast %7 : tensor<12x4xi1> to tensor<?x?xi1>
      %260 = vector.broadcast %false_0 : i1 to vector<12xi1>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %53, %47, %260 : vector<4xi1>, vector<12x4xi1> into vector<12xi1>
      %262 = arith.remsi %false_26, %false : i1
      %263 = math.fpowi %76, %splat_49 : tensor<4x4x16xf16>, tensor<4x4x16xi32>
      scf.yield %c1317615588_i32 : i32
    } else {
      %258 = index.divu %c9, %32
      %259 = math.ctlz %14 : tensor<4x4x16xi1>
      %260 = arith.divui %c-30650_i16, %c-30650_i16 : i16
      %261 = index.castu %c15 : index to i32
      %rank_48 = tensor.rank %3 : tensor<4xf32>
      %262 = arith.shrsi %c1068090315_i32, %c1068090315_i32 : i32
      %263 = arith.floordivsi %false_0, %true : i1
      %264 = index.add %107, %107
      scf.yield %c1068090315_i32 : i32
    }
    %110 = index.add %40, %c2
    %111 = arith.remui %false, %false_0 : i1
    %112 = vector.matrix_multiply %53, %53 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %true_28 = index.bool.constant true
    %113 = vector.broadcast %cst : f32 to vector<4xf32>
    %114 = vector.fma %113, %113, %113 : vector<4xf32>
    %115 = math.powf %13, %13 : tensor<4xf16>
    %116 = math.cos %11 : tensor<7x12xf16>
    %117 = vector.flat_transpose %82 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
    %118 = arith.maxf %cst_22, %42 : f16
    %119 = vector.transpose %114, [0] : vector<4xf32> to vector<4xf32>
    %120 = tensor.empty() : tensor<7x12xi32>
    %121 = math.fpowi %1, %120 : tensor<7x12xf16>, tensor<7x12xi32>
    affine.store %cst_22, %alloc_18[%c12] : memref<4xf16>
    %122 = vector.broadcast %c1554343177_i64 : i64 to vector<4x4x16xi64>
    %123 = math.exp2 %76 : tensor<4x4x16xf16>
    %124 = vector.broadcast %cst : f32 to vector<f32>
    vector.transfer_write %124, %alloc_3[%25] : vector<f32>, memref<4xf32>
    %125 = math.atan %5 : tensor<7x12xf16>
    %126 = index.divs %c6, %107
    %127 = index.divu %107, %c6
    %128 = vector.broadcast %cst : f32 to vector<9x9xf32>
    %129 = vector.outerproduct %117, %82, %128 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
    %130 = arith.muli %c580843849_i64, %c1554343177_i64 : i64
    %cst_29 = arith.constant 3.340800e+04 : f16
    %131 = arith.muli %true, %false_26 : i1
    %132 = vector.flat_transpose %96 {columns = 12 : i32, rows = 12 : i32} : vector<144xf32> -> vector<144xf32>
    %133 = math.tanh %0 : tensor<4x4x16xf16>
    %134 = tensor.empty() : tensor<12x12xf16>
    %135 = tensor.empty() : tensor<7x12xf16>
    %136 = linalg.matmul ins(%5, %134 : tensor<7x12xf16>, tensor<12x12xf16>) outs(%135 : tensor<7x12xf16>) -> tensor<7x12xf16>
    %137 = index.divu %c2, %40
    %138 = math.absi %c1068090315_i32 : i32
    %139 = math.cttz %false_27 : i1
    %140 = arith.remf %42, %42 : f16
    %141 = math.fpowi %13, %45 : tensor<4xf16>, tensor<4xi32>
    %142 = math.expm1 %38 : tensor<4xf32>
    %143 = vector.load %alloc_10[%c0, %c10] : memref<7x12xi32>, vector<4x4x16xi32>
    %144 = index.add %52, %108
    %145 = vector.extract %114[1] : vector<4xf32>
    %146 = math.exp2 %0 : tensor<4x4x16xf16>
    %147 = arith.subi %c-9611_i16, %c19112_i16 : i16
    %rank = tensor.rank %6 : tensor<4x4x16xi16>
    %148 = index.ceildivs %108, %c7
    %149 = math.log10 %13 : tensor<4xf16>
    %150 = math.cttz %8 : tensor<4x4x16xi16>
    %151 = math.log10 %0 : tensor<4x4x16xf16>
    %152 = arith.ori %false, %true_28 : i1
    %153 = arith.divf %cst_22, %42 : f16
    %154 = scf.if %true_28 -> (f16) {
      %258 = arith.ceildivsi %true, %false_26 : i1
      %259 = math.powf %0, %76 : tensor<4x4x16xf16>
      %260 = index.maxs %c4, %c13
      %alloc_48 = memref.alloc() : memref<4x4xi16>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat, %alloc_48 : tensor<4xi16>, memref<4x4xi16>) outs(%6 : tensor<4x4x16xi16>) {
      ^bb0(%in: i16, %in_50: i16, %out: i16):
        %265 = index.maxs %68, %c3
        %266 = arith.addi %c-30650_i16, %c19112_i16 : i16
        %267 = arith.mulf %42, %cst_22 : f16
        %268 = arith.maxui %false_0, %true_1 : i1
        affine.store %c1068090315_i32, %alloc_13[%c4, %c13] : memref<7x12xi32>
        %269 = vector.broadcast %42 : f16 to vector<f16>
        %270 = vector.transfer_write %269, %13[%108] : vector<f16>, tensor<4xf16>
        %extracted_51 = tensor.extract %45[%c3] : tensor<4xi32>
        %271 = vector.extract %47[0] : vector<12x4xi1>
        %272 = math.floor %13 : tensor<4xf16>
        %273 = math.exp %0 : tensor<4x4x16xf16>
        %274 = vector.broadcast %c2110867356_i64 : i64 to vector<12x4xi64>
        %275 = vector.broadcast %c1317615588_i32 : i32 to vector<12x4xi32>
        %276 = vector.gather %2[%106, %137, %c3] [%275], %47, %274 : tensor<4x4x16xi64>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xi64> into vector<12x4xi64>
        %277 = arith.cmpi ult, %out, %in_50 : i16
        %278 = math.log1p %38 : tensor<4xf32>
        %279 = math.absf %4 : tensor<7x12xf16>
        %280 = vector.broadcast %false_26 : i1 to vector<12xi1>
        %281 = vector.multi_reduction <and>, %50, %280 [1] : vector<12x4xi1> to vector<12xi1>
        %282 = math.absi %true_28 : i1
        %283 = arith.ori %true_28, %false_27 : i1
        %284 = vector.maskedload %97[%c1, %c10], %271, %271 : memref<7x12xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %285 = math.ctlz %true : i1
        memref.assume_alignment %alloc_13, 4 : memref<7x12xi32>
        memref.tensor_store %4, %alloc_8 : memref<7x12xf16>
        %286 = arith.cmpf une, %cst, %cst : f32
        %expanded = tensor.expand_shape %76 [[0], [1], [2, 3]] : tensor<4x4x16xf16> into tensor<4x4x16x1xf16>
        %expanded_52 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<12x7xi1> into tensor<12x7x1xi1>
        %dest, %accumulated_value = vector.scan <and>, %47, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<12x4xi1>, vector<12xi1>
        %287 = tensor.empty() : tensor<4x12xi1>
        %288 = tensor.empty() : tensor<12x12xi1>
        %289 = linalg.matmul ins(%7, %287 : tensor<12x4xi1>, tensor<4x12xi1>) outs(%288 : tensor<12x12xi1>) -> tensor<12x12xi1>
        %290 = arith.shrui %true_28, %true_28 : i1
        %291 = math.ctpop %17 : tensor<12x4xi1>
        %292 = vector.broadcast %c1068090315_i32 : i32 to vector<i32>
        %293 = vector.transfer_write %292, %12[%52, %106] : vector<i32>, tensor<12x4xi32>
        %294 = arith.divf %42, %cst_22 : f16
        %295 = math.round %11 : tensor<7x12xf16>
        %296 = affine.load %34[%c4, %c0] : memref<7x12xi32>
        linalg.yield %c-30650_i16 : i16
      } -> tensor<4x4x16xi16>
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %112, %112, %false_27 : vector<1xi1>, vector<1xi1> into i1
      %263 = scf.execute_region -> vector<4xi64> {
        %265 = vector.bitcast %132 : vector<144xf32> to vector<144xi32>
        %266 = vector.broadcast %true_28 : i1 to vector<1x1xi1>
        %267 = vector.outerproduct %112, %112, %266 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
        %268 = arith.minui %c1711636616_i64, %c1711636616_i64 : i64
        %269 = index.casts %c2 : index to i32
        %270 = affine.load %alloc[%c5, %c15, %c12] : memref<4x4x16xf32>
        %271 = index.castu %109 : i32 to index
        %272 = math.round %11 : tensor<7x12xf16>
        %273 = math.cos %1 : tensor<7x12xf16>
        %274 = vector.splat %c2110867356_i64 : vector<7x12xi64>
        %275 = math.exp %4 : tensor<7x12xf16>
        %false_50 = index.bool.constant false
        %276 = arith.cmpf ord, %cst, %270 : f32
        memref.assume_alignment %alloc_9, 4 : memref<7x12xi1>
        memref.assume_alignment %34, 16 : memref<7x12xi32>
        %277 = arith.floordivsi %c1711636616_i64, %c1554343177_i64 : i64
        %inserted_51 = tensor.insert %cst_22 into %21[] : tensor<f16>
        %278 = vector.broadcast %c2111428848_i64 : i64 to vector<4xi64>
        scf.yield %278 : vector<4xi64>
      }
      %264 = math.powf %1, %11 : tensor<7x12xf16>
      %rank_49 = tensor.rank %10 : tensor<12x4xi1>
      scf.yield %cst_22 : f16
    } else {
      %extracted_48 = tensor.extract %17[%c8, %c3] : tensor<12x4xi1>
      memref.tensor_store %21, %62 : memref<f16>
      %258 = math.rsqrt %15 : tensor<4xf16>
      %collapsed_49 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<4x4x16xi64> into tensor<16x16xi64>
      memref.alloca_scope  {
        %262 = arith.shrsi %true_1, %extracted_48 : i1
        %263 = math.roundeven %3 : tensor<4xf32>
        %264 = vector.extract %143[3] : vector<4x4x16xi32>
        %265 = tensor.empty(%144, %c13) : tensor<?x?x16xf32>
        %266 = vector.broadcast %c-974_i16 : i16 to vector<4xi16>
        %267 = vector.maskedload %alloc_12[%c7, %c1], %53, %266 : memref<12x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %268 = arith.minf %42, %42 : f16
        %269 = vector.multi_reduction <add>, %267, %c-974_i16 [0] : vector<4xi16> to i16
        %270 = arith.muli %269, %c-9611_i16 : i16
        %271 = vector.broadcast %c-974_i16 : i16 to vector<4x4x16xi16>
        %272 = affine.min affine_map<(d0, d1) -> ((d0 * 2) floordiv 128, (-d0) ceildiv 16, d1)>(%144, %c4)
        affine.store %cst_20, %alloc_11[%c14, %c12] : memref<12x4xf16>
        vector.print %267 : vector<4xi16>
        %false_51 = index.bool.constant false
        %273 = math.rsqrt %1 : tensor<7x12xf16>
        affine.store %c19112_i16, %alloc_12[%c11, %c2] : memref<12x4xi16>
        %274 = index.casts %c2 : index to i32
        %275 = math.fpowi %5, %120 : tensor<7x12xf16>, tensor<7x12xi32>
        %276 = vector.insert %false, %53 [1] : i1 into vector<4xi1>
        %277 = arith.minf %cst_22, %42 : f16
        %278 = vector.transpose %124, [] : vector<f32> to vector<f32>
        %279 = arith.mulf %cst_20, %cst_20 : f16
        %280 = arith.shrsi %109, %109 : i32
        %rank_52 = tensor.rank %11 : tensor<7x12xf16>
        %281 = math.roundeven %13 : tensor<4xf16>
        %282 = vector.multi_reduction <add>, %113, %cst [0] : vector<4xf32> to f32
        %283 = math.powf %4, %135 : tensor<7x12xf16>
        %284 = math.absf %282 : f32
        %285 = index.add %c2, %c8
        %cast_53 = tensor.cast %collapsed_49 : tensor<16x16xi64> to tensor<?x?xi64>
        %286 = math.atan %4 : tensor<7x12xf16>
        %287 = vector.transpose %113, [0] : vector<4xf32> to vector<4xf32>
        bufferization.dealloc_tensor %4 : tensor<7x12xf16>
      }
      %259 = affine.load %alloc_13[%c3, %c14] : memref<7x12xi32>
      %260 = memref.load %alloc_12[%c6, %c2] : memref<12x4xi16>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_50 = arith.constant 0 : i16
      %261 = vector.transfer_read %8[%137, %127, %24], %c0_i16_50 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<4x4x16xi16>, vector<7xi16>
      scf.yield %cst_22 : f16
    }
    %155 = math.ctlz %c19112_i16 : i16
    %156 = index.divs %c3, %c8
    %157 = arith.shrsi %c-30650_i16, %c19112_i16 : i16
    %158 = math.log10 %collapsed : tensor<16x16xf16>
    %159 = arith.shrui %c2110867356_i64, %c2111428848_i64 : i64
    %160 = vector.broadcast %false_26 : i1 to vector<12xi1>
    %161 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %53, %47, %160 : vector<4xi1>, vector<12x4xi1> into vector<12xi1>
    %162 = memref.load %alloc_12[%c11, %c2] : memref<12x4xi16>
    %163 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<4x4x16xi16>) {
    ^bb0(%out: i16):
      %258 = arith.xori %false_27, %false_26 : i1
      %c0_i64 = arith.constant 0 : i64
      %259 = vector.transfer_read %9[%95], %c0_i64 : tensor<4xi64>, vector<i64>
      %260 = tensor.empty() : tensor<4x4x16xf16>
      %mapped_48 = linalg.map ins(%alloc_5 : memref<4x4x16xf16>) outs(%260 : tensor<4x4x16xf16>)
        (%in: f16) {
          %289 = vector.broadcast %154 : f16 to vector<16xf16>
          vector.transfer_write %289, %alloc_8[%c4, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf16>, memref<7x12xf16>
          %290 = math.exp2 %0 : tensor<4x4x16xf16>
          %291 = math.fma %cst, %cst, %cst : f32
          %extracted_54 = tensor.extract %0[%c1, %c2, %c12] : tensor<4x4x16xf16>
          %292 = vector.extract_strided_slice %96 {offsets = [60], sizes = [42], strides = [1]} : vector<144xf32> to vector<42xf32>
          %293 = arith.minf %154, %extracted_54 : f16
          %294 = vector.transpose %47, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
          %295 = math.copysign %cst, %cst : f32
          %296 = vector.broadcast %cst_20 : f16 to vector<4xf16>
          %297 = vector.shuffle %47, %47 [0, 1, 5, 8, 10, 11, 13, 15, 16, 17, 20] : vector<12x4xi1>, vector<12x4xi1>
          %298 = index.maxs %106, %144
          %inserted_55 = tensor.insert %in into %13[%c3] : tensor<4xf16>
          %299 = index.maxs %c15, %c2
          %300 = affine.load %alloc_6[%c12, %c15] : memref<7x12xf32>
          %301 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - d0) ceildiv 128 + 60)>(%52, %68, %95)
          %302 = math.atan %38 : tensor<4xf32>
          %303 = arith.ori %false, %true : i1
          %304 = math.log2 %11 : tensor<7x12xf16>
          %305 = arith.xori %false_0, %false_26 : i1
          %306 = arith.subi %c1068090315_i32, %c1068090315_i32 : i32
          %307 = vector.create_mask %c6, %c5 : vector<7x12xi1>
          %308 = index.divs %32, %c7
          %309 = arith.muli %c19112_i16, %c19112_i16 : i16
          %310 = vector.multi_reduction <and>, %307, %true_28 [0, 1] : vector<7x12xi1> to i1
          %311 = vector.transpose %47, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
          %312 = vector.broadcast %148 : index to vector<4xindex>
          %313 = vector.broadcast %c1317615588_i32 : i32 to vector<4xi32>
          vector.scatter %alloc_14[%c4, %c0] [%312], %53, %313 : memref<12x4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
          %314 = arith.remf %cst, %cst : f32
          %315 = bufferization.to_memref %14 : memref<4x4x16xi1>
          %316 = index.maxu %c12, %c13
          %317 = math.roundeven %0 : tensor<4x4x16xf16>
          %318 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%c0, %c15, %106, %c8)
          %319 = math.rsqrt %5 : tensor<7x12xf16>
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %261 = vector.matrix_multiply %53, %53 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
      %262 = arith.divui %false_26, %true_1 : i1
      %from_elements_49 = tensor.from_elements %false_27, %false_0, %false_0, %false : tensor<4xi1>
      %263 = arith.remf %154, %cst_20 : f16
      %264 = math.cos %3 : tensor<4xf32>
      %265 = arith.remui %c-9611_i16, %c-30650_i16 : i16
      %266 = bufferization.to_memref %13 : memref<4xf16>
      %267 = bufferization.clone %alloc_13 : memref<7x12xi32> to memref<7x12xi32>
      %268 = arith.negf %cst_22 : f16
      %269 = index.divu %c12, %156
      %270 = arith.maxf %cst_22, %cst_22 : f16
      %cst_50 = arith.constant 2.201600e+04 : f16
      %271 = index.maxu %40, %127
      %272 = math.rsqrt %42 : f16
      %273 = vector.broadcast %cst_22 : f16 to vector<16xf16>
      %274 = vector.broadcast %false_0 : i1 to vector<16xi1>
      %275 = vector.maskedload %alloc_8[%c6, %c4], %274, %273 : memref<7x12xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
      %true_51 = index.bool.constant true
      %276 = arith.muli %c-974_i16, %c-9611_i16 : i16
      %277 = math.rsqrt %0 : tensor<4x4x16xf16>
      %278 = memref.realloc %alloc_2 : memref<4xf16> to memref<12xf16>
      %279 = index.ceildivs %126, %c6
      %280 = vector.transpose %132, [0] : vector<144xf32> to vector<144xf32>
      %281 = math.log10 %5 : tensor<7x12xf16>
      %282 = arith.remui %true_28, %false_26 : i1
      %cst_52 = arith.constant 1.000000e+00 : f16
      %283 = vector.transfer_read %13[%rank], %cst_52 : tensor<4xf16>, vector<f16>
      %284 = vector.load %98[%c2, %c0, %c15] : memref<4x4x16xf32>, vector<4xf32>
      %extracted_53 = tensor.extract %8[%c0, %c2, %c15] : tensor<4x4x16xi16>
      %285 = math.log1p %11 : tensor<7x12xf16>
      %286 = vector.load %97[%c6, %c7] : memref<7x12xi1>, vector<7x12xi1>
      %287 = vector.broadcast %true_51 : i1 to vector<16x16xi1>
      %288 = vector.outerproduct %274, %274, %287 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
      linalg.yield %c19112_i16 : i16
    } -> tensor<4x4x16xi16>
    %164 = index.castu %false_26 : i1 to index
    %collapsed_30 = tensor.collapse_shape %76 [[0, 1], [2]] : tensor<4x4x16xf16> into tensor<16x16xf16>
    %165 = memref.load %alloc_4[%c2] : memref<4xf32>
    %rank_31 = tensor.rank %6 : tensor<4x4x16xi16>
    %166 = affine.load %alloc_9[%c13, %c10] : memref<7x12xi1>
    %167 = arith.andi %c580843849_i64, %c1711636616_i64 : i64
    %extracted = tensor.extract %22[] : tensor<f16>
    %168 = tensor.empty() : tensor<4x4x16xi64>
    %169 = arith.muli %c2110867356_i64, %c2110867356_i64 : i64
    %170 = index.sub %c15, %c11
    %171 = index.sub %c0, %c15
    %172 = arith.subi %c-9611_i16, %c-30650_i16 : i16
    scf.if %false_0 {
      %258 = vector.multi_reduction <mul>, %20, %cst [0] : vector<16xf32> to f32
      %259 = vector.broadcast %c2110867356_i64 : i64 to vector<4x4x16xi64>
      %260 = vector.extract_strided_slice %117 {offsets = [0], sizes = [9], strides = [1]} : vector<9xf32> to vector<9xf32>
      %261 = vector.broadcast %c2110867356_i64 : i64 to vector<4x16xi64>
      %dest, %accumulated_value = vector.scan <minui>, %259, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4x16xi64>, vector<4x16xi64>
      %262 = arith.negf %258 : f32
      scf.index_switch %164 
      case 1 {
        %extracted_48 = tensor.extract %14[%c3, %c0, %c13] : tensor<4x4x16xi1>
        %extracted_49 = tensor.extract %3[%c2] : tensor<4xf32>
        %265 = vector.broadcast %154 : f16 to vector<12xf16>
        vector.transfer_write %265, %alloc_15[%164, %156, %148] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xf16>, memref<4x4x16xf16>
        %266 = arith.subi %109, %c1317615588_i32 : i32
        %267 = arith.floordivsi %109, %c1068090315_i32 : i32
        %268 = index.sub %c6, %137
        %269 = index.maxu %c6, %c10
        %270 = index.add %c5, %170
        %271 = arith.mulf %cst_22, %extracted : f16
        %272 = arith.remui %c580843849_i64, %c2110867356_i64 : i64
        %273 = arith.floordivsi %c-30650_i16, %c-30650_i16 : i16
        %expanded = tensor.expand_shape %9 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %274 = index.maxu %c2, %127
        %275 = math.absi %16 : tensor<12x4xi1>
        %276 = bufferization.to_memref %168 : memref<4x4x16xi64>
        %cast_50 = tensor.cast %0 : tensor<4x4x16xf16> to tensor<?x?x?xf16>
        scf.yield
      }
      default {
        %splat_48 = tensor.splat %c1711636616_i64 : tensor<4xi64>
        %false_49 = index.bool.constant false
        %265 = memref.load %alloc_10[%c0, %c5] : memref<7x12xi32>
        %266 = math.absi %true_1 : i1
        %267 = index.maxs %127, %68
        %268 = vector.bitcast %260 : vector<9xf32> to vector<9xf32>
        %inserted_50 = tensor.insert %c2110867356_i64 into %2[%c3, %c1, %c12] : tensor<4x4x16xi64>
        %269 = vector.broadcast %137 : index to vector<4xindex>
        vector.scatter %98[%c2, %c0, %c7] [%269], %53, %114 : memref<4x4x16xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %270 = math.absi %c-30650_i16 : i16
        %alloc_51 = memref.alloc() : memref<12x4xf16>
        %271 = tensor.empty() : tensor<7x4xf16>
        %272 = linalg.matmul ins(%5, %alloc_51 : tensor<7x12xf16>, memref<12x4xf16>) outs(%271 : tensor<7x4xf16>) -> tensor<7x4xf16>
        %273 = tensor.empty() : tensor<12x4xf16>
        %274 = tensor.empty() : tensor<7x4xf16>
        %275 = linalg.matmul ins(%11, %273 : tensor<7x12xf16>, tensor<12x4xf16>) outs(%274 : tensor<7x4xf16>) -> tensor<7x4xf16>
        %276 = arith.mulf %cst_20, %42 : f16
        %277 = vector.create_mask %127, %148 : vector<7x12xi1>
        %278 = arith.minf %42, %42 : f16
        %279 = vector.shuffle %20, %114 [1, 3, 4, 5, 11, 12, 14, 15, 16, 18, 19] : vector<16xf32>, vector<4xf32>
        %280 = arith.shrsi %c2110867356_i64, %c1711636616_i64 : i64
      }
      %263 = vector.extract_strided_slice %117 {offsets = [2], sizes = [2], strides = [1]} : vector<9xf32> to vector<2xf32>
      %264 = scf.while (%arg3 = %117) : (vector<9xf32>) -> vector<9xf32> {
        bufferization.dealloc_tensor %12 : tensor<12x4xi32>
        %265 = arith.negf %42 : f16
        bufferization.dealloc_tensor %5 : tensor<7x12xf16>
        %266 = math.fma %5, %4, %1 : tensor<7x12xf16>
        %267 = vector.broadcast %258 : f32 to vector<16x16xf32>
        %268 = vector.outerproduct %20, %20, %267 {kind = #vector.kind<maxf>} : vector<16xf32>, vector<16xf32>
        affine.store %cst_22, %alloc_15[%c4, %c9, %c10] : memref<4x4x16xf16>
        %269 = arith.muli %166, %true_28 : i1
        %270 = vector.load %alloc_12[%c1, %c3] : memref<12x4xi16>, vector<4xi16>
        scf.condition(%166) %117 : vector<9xf32>
      } do {
      ^bb0(%arg3: vector<9xf32>):
        %265 = math.floor %collapsed_30 : tensor<16x16xf16>
        %266 = math.round %11 : tensor<7x12xf16>
        %267 = arith.minf %154, %cst_20 : f16
        %268 = bufferization.clone %alloc_18 : memref<4xf16> to memref<4xf16>
        %269 = index.ceildivu %c10, %c5
        %270 = math.powf %0, %76 : tensor<4x4x16xf16>
        %271 = arith.shrsi %true, %true_28 : i1
        %272 = index.sub %164, %25
        %inserted_48 = tensor.insert %extracted into %cast_24[%c0, %c0] : tensor<?x?xf16>
        %273 = affine.apply affine_map<(d0, d1) -> (d0 mod 16)>(%c15, %32)
        %274 = bufferization.clone %alloc_13 : memref<7x12xi32> to memref<7x12xi32>
        memref.assume_alignment %alloc_7, 8 : memref<4x4x16xf32>
        %275 = math.log1p %4 : tensor<7x12xf16>
        %276 = index.divu %107, %148
        %277 = math.roundeven %22 : tensor<f16>
        %278 = vector.flat_transpose %82 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        scf.yield %82 : vector<9xf32>
      }
    }
    %173 = vector.flat_transpose %96 {columns = 12 : i32, rows = 12 : i32} : vector<144xf32> -> vector<144xf32>
    scf.index_switch %127 
    case 1 {
      %258 = scf.while (%arg3 = %96) : (vector<144xf32>) -> vector<144xf32> {
        %splat_53 = tensor.splat %false_26 : tensor<12x4xi1>
        %272 = vector.multi_reduction <minf>, %96, %cst [0] : vector<144xf32> to f32
        %splat_54 = tensor.splat %c2111428848_i64 : tensor<12x4xi64>
        %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %273 = arith.subi %166, %true_1 : i1
        %274 = math.powf %76, %0 : tensor<4x4x16xf16>
        bufferization.dealloc_tensor %15 : tensor<4xf16>
        %275 = index.casts %c-30650_i16 : i16 to index
        scf.condition(%true) %173 : vector<144xf32>
      } do {
      ^bb0(%arg3: vector<144xf32>):
        %272 = math.absi %false_27 : i1
        %273 = index.maxs %70, %c3
        %274 = index.add %68, %108
        %275 = vector.multi_reduction <minf>, %113, %cst [0] : vector<4xf32> to f32
        %276 = index.divs %24, %rank_31
        %277 = index.ceildivu %24, %c15
        %278 = vector.splat %108 : vector<4x4x16xindex>
        %279 = vector.broadcast %275 : f32 to vector<16x16xf32>
        %280 = vector.outerproduct %20, %20, %279 {kind = #vector.kind<minf>} : vector<16xf32>, vector<16xf32>
        %281 = index.maxs %170, %c13
        affine.store %cst, %alloc_3[%c7] : memref<4xf32>
        %282 = vector.load %alloc[%c1, %c0, %c14] : memref<4x4x16xf32>, vector<7x12xf32>
        %collapsed_53 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<16x16xf16> into tensor<256xf16>
        %283 = vector.matrix_multiply %20, %20 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %extracted_54 = tensor.extract %collapsed_30[%c13, %c8] : tensor<16x16xf16>
        memref.assume_alignment %alloc_2, 8 : memref<4xf16>
        %true_55 = index.bool.constant true
        scf.yield %96 : vector<144xf32>
      }
      %259 = index.ceildivs %127, %52
      %260 = tensor.empty() : tensor<4xi32>
      %mapped_48 = linalg.map ins(%45, %45, %45 : tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) outs(%260 : tensor<4xi32>)
        (%in: i32, %in_53: i32, %in_54: i32) {
          %272 = math.cos %11 : tensor<7x12xf16>
          %extracted_55 = tensor.extract %3[%c0] : tensor<4xf32>
          %273 = vector.extract_strided_slice %122 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4x16xi64> to vector<4x4x16xi64>
          %274 = index.maxs %c5, %c15
          %275 = vector.shuffle %143, %143 [0, 1, 2, 4, 5] : vector<4x4x16xi32>, vector<4x4x16xi32>
          %276 = vector.load %alloc_5[%c2, %c1, %c15] : memref<4x4x16xf16>, vector<12x4xf16>
          %277 = vector.broadcast %extracted : f16 to vector<4xf16>
          %278 = vector.insert %277, %276 [9] : vector<4xf16> into vector<12x4xf16>
          %279 = arith.cmpi ne, %166, %true : i1
          %280 = arith.cmpi sge, %in, %c1317615588_i32 : i32
          bufferization.dealloc_tensor %10 : tensor<12x4xi1>
          bufferization.dealloc_tensor %18 : tensor<12x7xi1>
          %281 = arith.subi %true_1, %false_26 : i1
          %282 = arith.minf %cst, %extracted_55 : f32
          %283 = arith.muli %true_1, %false : i1
          %cast_56 = tensor.cast %3 : tensor<4xf32> to tensor<?xf32>
          %284 = arith.divf %cst, %cst : f32
          %true_57 = index.bool.constant true
          %285 = affine.load %98[%c1, %c13, %c6] : memref<4x4x16xf32>
          %286 = index.add %170, %24
          %287 = index.add %144, %24
          %288 = math.rsqrt %extracted : f16
          %289 = arith.divui %c19112_i16, %c-30650_i16 : i16
          %from_elements_58 = tensor.from_elements %154, %extracted, %cst_20, %42, %154, %154, %cst_20, %extracted, %154, %cst_22, %42, %154, %cst_22, %extracted, %154, %154, %cst_20, %42, %extracted, %cst_20, %cst_22, %154, %42, %cst_22, %cst_22, %cst_22, %42, %42, %cst_22, %154, %154, %42, %154, %42, %extracted, %extracted, %42, %42, %42, %42, %cst_22, %cst_20, %154, %cst_22, %cst_22, %cst_22, %42, %154, %cst_20, %154, %extracted, %cst_22, %cst_20, %cst_22, %42, %cst_22, %cst_20, %cst_20, %42, %cst_20, %extracted, %cst_22, %cst_22, %154, %154, %154, %extracted, %cst_20, %cst_22, %extracted, %cst_22, %42, %cst_20, %154, %154, %cst_22, %154, %cst_20, %cst_20, %cst_20, %extracted, %154, %42, %cst_22 : tensor<7x12xf16>
          %290 = vector.create_mask %108, %110 : vector<12x4xi1>
          %291 = vector.broadcast %true : i1 to vector<16xi1>
          %292 = vector.maskedload %alloc_9[%c4, %c11], %291, %291 : memref<7x12xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
          %293 = vector.insert %extracted_55, %117 [5] : f32 into vector<9xf32>
          %294 = arith.remf %42, %extracted : f16
          %295 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 4, d0 - 32, (d2 - (d1 + d2)) floordiv 128, d1 + d2)>(%106, %39, %c13, %c10)
          %296 = vector.extract_strided_slice %122 {offsets = [2], sizes = [1], strides = [1]} : vector<4x4x16xi64> to vector<1x4x16xi64>
          %collapsed_59 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<4x4x16xi16> into tensor<16x16xi16>
          %297 = math.cos %extracted : f16
          %298 = vector.broadcast %true : i1 to vector<16xi1>
          vector.transfer_write %298, %alloc_9[%126, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi1>, memref<7x12xi1>
          %c0_i32_60 = arith.constant 0 : i32
          linalg.yield %c0_i32_60 : i32
        }
      %cast_49 = tensor.cast %18 : tensor<12x7xi1> to tensor<?x?xi1>
      %261 = math.absi %18 : tensor<12x7xi1>
      %262 = scf.if %false_0 -> (memref<4xi64>) {
        %272 = arith.minf %154, %154 : f16
        %273 = math.roundeven %0 : tensor<4x4x16xf16>
        %true_53 = index.bool.constant true
        %274 = arith.shrsi %false_26, %false_27 : i1
        %275 = memref.atomic_rmw addf %cst, %alloc[%c3, %c2, %c6] : (f32, memref<4x4x16xf32>) -> f32
        %276 = index.casts %105 : index to i32
        %277 = index.casts %95 : index to i32
        %cst_54 = arith.constant 1.000000e+00 : f16
        %278 = vector.transfer_read %11[%171, %c10], %cst_54 : tensor<7x12xf16>, vector<4xf16>
        %alloc_55 = memref.alloc() : memref<4xi64>
        scf.yield %alloc_55 : memref<4xi64>
      } else {
        %272 = arith.muli %c1554343177_i64, %c2110867356_i64 : i64
        %273 = arith.divsi %c580843849_i64, %c580843849_i64 : i64
        %274 = math.powf %5, %4 : tensor<7x12xf16>
        %275 = bufferization.to_memref %collapsed : memref<16x16xf16>
        %276 = math.tanh %15 : tensor<4xf16>
        %277 = math.rsqrt %22 : tensor<f16>
        %278 = arith.negf %154 : f16
        %279 = vector.broadcast %cst : f32 to vector<12xf32>
        %280 = vector.broadcast %false : i1 to vector<12xi1>
        %281 = vector.maskedload %alloc_17[], %280, %279 : memref<f32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %alloc_53 = memref.alloc() : memref<4xi64>
        scf.yield %alloc_53 : memref<4xi64>
      }
      %inserted_50 = tensor.insert %cst_20 into %13[%c2] : tensor<4xf16>
      %263 = vector.multi_reduction <maxf>, %82, %117 [] : vector<9xf32> to vector<9xf32>
      %264 = math.atan %collapsed : tensor<16x16xf16>
      %generated = tensor.generate %c4 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %272 = vector.broadcast %105 : index to vector<7xindex>
        %273 = vector.broadcast %false : i1 to vector<7xi1>
        %274 = vector.broadcast %c1068090315_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_14[%c9, %c3] [%272], %273, %274 : memref<12x4xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %275 = arith.negf %extracted : f16
        %276 = affine.load %alloc_4[%c4] : memref<4xf32>
        %cast_53 = tensor.cast %45 : tensor<4xi32> to tensor<?xi32>
        tensor.yield %276 : f32
      } : tensor<?x4x16xf32>
      %true_51 = arith.constant true
      %false_52 = arith.constant false
      %265 = vector.transfer_read %transposed[%c8, %c4], %false_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<12x7xi1>, vector<16xi1>
      %266 = vector.shuffle %173, %82 [0, 2, 3, 4, 6, 8, 9, 11, 15, 18, 19, 20, 21, 23, 24, 25, 29, 33, 34, 35, 38, 39, 40, 43, 47, 49, 50, 54, 55, 57, 58, 61, 62, 63, 64, 66, 68, 70, 74, 79, 80, 86, 90, 91, 92, 93, 98, 99, 101, 105, 107, 108, 109, 111, 116, 117, 118, 119, 120, 121, 122, 123, 127, 128, 129, 130, 132, 134, 136, 138, 139, 140, 142, 143, 147, 148, 150, 151] : vector<144xf32>, vector<9xf32>
      %267 = arith.xori %c1554343177_i64, %c1711636616_i64 : i64
      %268 = vector.broadcast %106 : index to vector<16xindex>
      %269 = vector.broadcast %true_1 : i1 to vector<16xi1>
      vector.scatter %alloc_7[%c2, %c2, %c5] [%268], %269, %20 : memref<4x4x16xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %270 = math.sqrt %13 : tensor<4xf16>
      %271 = vector.transpose %112, [0] : vector<1xi1> to vector<1xi1>
      scf.yield
    }
    case 2 {
      %alloc_48 = memref.alloc() : memref<7x12xi64>
      %expanded = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<4x4x16xf16> into tensor<4x4x16x1xf16>
      %258 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %259 = math.absf %135 : tensor<7x12xf16>
      %260 = vector.broadcast %c15 : index to vector<4xindex>
      vector.scatter %alloc_4[%c3] [%260], %53, %114 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %261 = vector.multi_reduction <and>, %258, %258 [] : vector<1xi1> to vector<1xi1>
      %262 = index.divs %171, %127
      %263 = memref.atomic_rmw maxu %c1068090315_i32, %alloc_10[%c1, %c7] : (i32, memref<7x12xi32>) -> i32
      %264 = math.atan %42 : f16
      %265 = arith.divui %false_0, %true_1 : i1
      %266 = arith.maxf %42, %154 : f16
      %267 = vector.broadcast %109 : i32 to vector<7xi32>
      %268 = vector.broadcast %true_28 : i1 to vector<7xi1>
      %269 = vector.maskedload %alloc_13[%c1, %c2], %268, %267 : memref<7x12xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %270 = arith.negf %154 : f16
      %271 = arith.shrsi %c2110867356_i64, %c2110867356_i64 : i64
      %extracted_49 = tensor.extract %18[%c3, %c1] : tensor<12x7xi1>
      %272 = index.maxs %105, %126
      scf.yield
    }
    case 3 {
      %258 = affine.load %alloc_16[%c2, %c13, %c15] : memref<4x4x16xi1>
      memref.tensor_store %0, %alloc_15 : memref<4x4x16xf16>
      %259 = vector.extract_strided_slice %173 {offsets = [129], sizes = [8], strides = [1]} : vector<144xf32> to vector<8xf32>
      %260 = vector.transpose %113, [0] : vector<4xf32> to vector<4xf32>
      %261 = math.absf %collapsed_30 : tensor<16x16xf16>
      %262 = index.maxu %171, %c11
      %263 = arith.maxf %cst_20, %cst_22 : f16
      %264 = math.powf %collapsed, %collapsed_30 : tensor<16x16xf16>
      affine.store %extracted, %62[] : memref<f16>
      %true_48 = index.bool.constant true
      %265 = math.tanh %3 : tensor<4xf32>
      memref.tensor_store %22, %62 : memref<f16>
      %266 = arith.maxui %true_1, %true : i1
      %267 = vector.transpose %50, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
      %268 = arith.minui %c1711636616_i64, %c1554343177_i64 : i64
      %collapsed_49 = tensor.collapse_shape %cast_24 [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
      scf.yield
    }
    default {
      %258 = arith.muli %c19112_i16, %c-30650_i16 : i16
      %259 = vector.multi_reduction <minf>, %82, %cst [0] : vector<9xf32> to f32
      %260 = arith.divsi %c2110867356_i64, %c1711636616_i64 : i64
      %261 = arith.minf %42, %cst_20 : f16
      %262 = index.castu %c15 : index to i32
      %263 = arith.subi %c1068090315_i32, %109 : i32
      %264 = arith.xori %c2111428848_i64, %c1554343177_i64 : i64
      affine.store %259, %alloc_7[%c12, %c1, %c10] : memref<4x4x16xf32>
      %265 = arith.cmpf oge, %42, %154 : f16
      %266 = arith.maxui %c2111428848_i64, %c2110867356_i64 : i64
      %267 = index.add %c4, %rank
      %268 = arith.divsi %c1317615588_i32, %109 : i32
      %269 = arith.cmpi sge, %c1711636616_i64, %c2111428848_i64 : i64
      %270 = math.roundeven %cst_20 : f16
      %271 = vector.shuffle %143, %143 [7] : vector<4x4x16xi32>, vector<4x4x16xi32>
      %272 = math.rsqrt %1 : tensor<7x12xf16>
    }
    %174 = math.powf %4, %4 : tensor<7x12xf16>
    %175 = index.divs %164, %c12
    %176 = math.ceil %3 : tensor<4xf32>
    %177 = vector.transpose %112, [0] : vector<1xi1> to vector<1xi1>
    %178 = arith.remui %166, %true_1 : i1
    %179 = arith.maxf %42, %extracted : f16
    %180 = vector.extract %143[3] : vector<4x4x16xi32>
    memref.tensor_store %1, %alloc_8 : memref<7x12xf16>
    %181 = index.castu %false_0 : i1 to index
    %182 = affine.min affine_map<(d0) -> (d0 * -8, (d0 floordiv 16) ceildiv 16)>(%137)
    %183 = math.cos %5 : tensor<7x12xf16>
    %false_32 = index.bool.constant false
    %184 = vector.broadcast %false : i1 to vector<1x1xi1>
    %185 = vector.outerproduct %112, %112, %184 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_33 = arith.constant 0 : i32
    %186 = vector.transfer_read %120[%c1, %127], %c0_i32_33 : tensor<7x12xi32>, vector<i32>
    %187 = arith.addf %cst, %cst : f32
    %188 = vector.broadcast %182 : index to vector<4xindex>
    vector.scatter %98[%c3, %c3, %c3] [%188], %53, %114 : memref<4x4x16xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %189 = vector.insertelement %cst, %20[%c3 : index] : vector<16xf32>
    %190 = arith.mulf %cst_22, %cst_20 : f16
    %191 = math.exp2 %154 : f16
    %192 = arith.ori %true_28, %166 : i1
    memref.copy %alloc_5, %alloc_15 : memref<4x4x16xf16> to memref<4x4x16xf16>
    %from_elements_34 = tensor.from_elements %42, %154, %154, %extracted : tensor<4xf16>
    %193 = vector.insert %false_26, %53 [3] : i1 into vector<4xi1>
    %194 = math.absi %c1317615588_i32 : i32
    %195 = arith.minui %true_28, %true : i1
    %196 = math.round %22 : tensor<f16>
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_35 = arith.constant 0 : i16
    %197 = vector.transfer_read %8[%c0, %156, %107], %c0_i16_35 : tensor<4x4x16xi16>, vector<i16>
    %198 = vector.create_mask %110, %25 : vector<12x4xi1>
    %199 = arith.remui %true_1, %false_0 : i1
    %cst_36 = arith.constant 1.000000e+00 : f16
    %cst_37 = arith.constant 0.000000e+00 : f16
    %200 = vector.transfer_read %alloc_15[%rank_31, %c3, %127], %cst_37 : memref<4x4x16xf16>, vector<f16>
    %201 = math.exp %154 : f16
    %202 = math.cttz %120 : tensor<7x12xi32>
    %203 = index.casts %c15 : index to i32
    %204 = math.rsqrt %from_elements : tensor<7x12xf16>
    %205 = arith.cmpi ule, %false_27, %166 : i1
    %206 = tensor.empty() : tensor<7x12xi32>
    %mapped_38 = linalg.map ins(%alloc_10, %alloc_13, %120 : memref<7x12xi32>, memref<7x12xi32>, tensor<7x12xi32>) outs(%206 : tensor<7x12xi32>)
      (%in: i32, %in_48: i32, %in_49: i32) {
        affine.store %cst, %alloc[%c6, %c1, %c14] : memref<4x4x16xf32>
        memref.alloca_scope  {
          %290 = arith.negf %cst_20 : f16
          %false_51 = index.bool.constant false
          %291 = index.maxs %39, %110
          %292 = math.roundeven %13 : tensor<4xf16>
          %293 = vector.broadcast %c-30650_i16 : i16 to vector<7xi16>
          %294 = vector.broadcast %false_26 : i1 to vector<7xi1>
          %295 = vector.maskedload %alloc_12[%c7, %c3], %294, %293 : memref<12x4xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %296 = arith.addi %c0_i16, %c0_i16 : i16
          %297 = vector.broadcast %cst_20 : f16 to vector<7x12xf16>
          %298 = vector.transfer_write %297, %0[%c13, %c2, %70] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x12xf16>, tensor<4x4x16xf16>
          %299 = math.rsqrt %1 : tensor<7x12xf16>
          %300 = vector.broadcast %true_1 : i1 to vector<12xi1>
          %dest, %accumulated_value = vector.scan <minui>, %198, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<12x4xi1>, vector<12xi1>
          %301 = math.ctlz %45 : tensor<4xi32>
          %extracted_52 = tensor.extract %10[%c1, %c3] : tensor<12x4xi1>
          %splat_53 = tensor.splat %in_49 : tensor<4x4x16xi32>
          %302 = index.casts %109 : i32 to index
          %303 = arith.cmpi uge, %c-30650_i16, %c-9611_i16 : i16
          %304 = arith.shrsi %c1554343177_i64, %c1554343177_i64 : i64
          %305 = vector.transpose %122, [2, 0, 1] : vector<4x4x16xi64> to vector<16x4x4xi64>
          %306 = arith.muli %c1068090315_i32, %in_49 : i32
          %307 = math.exp %38 : tensor<4xf32>
          %308 = index.sub %137, %c5
          %309 = math.exp %cst_22 : f16
          %310 = vector.insert %extracted_52, %112 [0] : i1 into vector<1xi1>
          %311 = index.divs %40, %171
          %312 = vector.broadcast %in_48 : i32 to vector<7xi32>
          %313 = vector.maskedload %alloc_14[%c5, %c0], %294, %312 : memref<12x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
          %cast_54 = tensor.cast %10 : tensor<12x4xi1> to tensor<?x?xi1>
          %314 = arith.muli %c19112_i16, %c0_i16 : i16
          %collapsed_55 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<7x12xf16> into tensor<84xf16>
          %true_56 = arith.constant true
          %315 = math.ctlz %7 : tensor<12x4xi1>
          %316 = arith.remsi %true_1, %false : i1
          %317 = math.atan %76 : tensor<4x4x16xf16>
          %318 = math.absi %7 : tensor<12x4xi1>
          affine.store %c1317615588_i32, %alloc_13[%c7, %c2] : memref<7x12xi32>
        }
        %258 = math.roundeven %38 : tensor<4xf32>
        %259 = vector.extract %143[3, 0] : vector<4x4x16xi32>
        %260 = vector.extract_strided_slice %143 {offsets = [1], sizes = [1], strides = [1]} : vector<4x4x16xi32> to vector<1x4x16xi32>
        %261 = math.fpowi %11, %120 : tensor<7x12xf16>, tensor<7x12xi32>
        %262 = index.divs %106, %c8
        %263 = math.cos %collapsed : tensor<16x16xf16>
        %264 = index.casts %false_26 : i1 to index
        %265 = tensor.empty() : tensor<7x12xi64>
        %expanded = tensor.expand_shape %9 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %266 = tensor.empty() : tensor<1x16xi64>
        %267 = tensor.empty() : tensor<4x16xi64>
        %268 = linalg.matmul ins(%expanded, %266 : tensor<4x1xi64>, tensor<1x16xi64>) outs(%267 : tensor<4x16xi64>) -> tensor<4x16xi64>
        %269 = bufferization.to_tensor %alloc_9 : memref<7x12xi1>
        %270 = index.divs %c12, %24
        %271 = vector.shuffle %173, %82 [3, 4, 5, 6, 8, 11, 17, 19, 20, 23, 25, 26, 27, 30, 31, 32, 38, 39, 41, 42, 43, 45, 46, 47, 48, 49, 51, 53, 55, 56, 57, 58, 60, 63, 65, 68, 71, 72, 74, 75, 77, 79, 83, 90, 91, 92, 93, 95, 96, 99, 101, 102, 106, 112, 116, 117, 118, 119, 120, 121, 124, 125, 128, 129, 132, 133, 134, 136, 139, 141, 143, 145, 148, 149] : vector<144xf32>, vector<9xf32>
        %272 = arith.cmpf ole, %154, %cst_22 : f16
        %273 = vector.insertelement %cst, %117[%171 : index] : vector<9xf32>
        %274 = vector.extract %117[6] : vector<9xf32>
        %extracted_50 = tensor.extract %5[%c6, %c4] : tensor<7x12xf16>
        %275 = vector.broadcast %in : i32 to vector<16x1x16xi32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %180, %260, %275 : vector<4x16xi32>, vector<1x4x16xi32> into vector<16x1x16xi32>
        %277 = arith.floordivsi %false_27, %true : i1
        %278 = arith.remsi %c1554343177_i64, %c580843849_i64 : i64
        %279 = arith.mulf %cst_20, %154 : f16
        %280 = memref.load %alloc_6[%c1, %c6] : memref<7x12xf32>
        %alloca = memref.alloca() : memref<4x4x16xi1>
        %281 = scf.execute_region -> index {
          %290 = arith.ori %c1068090315_i32, %109 : i32
          %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %132, %132, %cst : vector<144xf32>, vector<144xf32> into f32
          %rank_51 = tensor.rank %6 : tensor<4x4x16xi16>
          %292 = arith.divui %in_49, %in_48 : i32
          affine.store %cst_36, %alloc_18[%c13] : memref<4xf16>
          %293 = vector.load %alloc_13[%c0, %c3] : memref<7x12xi32>, vector<4xi32>
          %294 = arith.addf %extracted, %extracted_50 : f16
          %295 = vector.multi_reduction <mul>, %114, %113 [] : vector<4xf32> to vector<4xf32>
          %inserted_52 = tensor.insert %extracted_50 into %76[%c3, %c0, %c11] : tensor<4x4x16xf16>
          %296 = affine.apply affine_map<(d0, d1, d2) -> ((d1 + 8) * 2)>(%24, %156, %c6)
          %297 = math.exp %0 : tensor<4x4x16xf16>
          %298 = bufferization.to_memref %6 : memref<4x4x16xi16>
          %299 = math.powf %42, %cst_36 : f16
          %300 = index.maxu %106, %c8
          %301 = vector.extract_strided_slice %82 {offsets = [3], sizes = [2], strides = [1]} : vector<9xf32> to vector<2xf32>
          %302 = vector.broadcast %109 : i32 to vector<1x4xi32>
          %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %260, %259, %302 : vector<1x4x16xi32>, vector<16xi32> into vector<1x4xi32>
          scf.yield %110 : index
        }
        %282 = index.maxs %110, %c3
        %283 = vector.matrix_multiply %173, %173 {lhs_columns = 144 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<144xf32>, vector<144xf32>) -> vector<1xf32>
        %284 = math.cos %11 : tensor<7x12xf16>
        %285 = scf.while (%arg3 = %alloc_17) : (memref<f32>) -> memref<f32> {
          %290 = affine.min affine_map<(d0, d1, d2, d3) -> (-(-d0 - (-d0) ceildiv 4), d3 - d2)>(%282, %264, %70, %70)
          %291 = index.maxs %262, %c14
          %292 = index.divu %40, %181
          %293 = vector.load %alloc_12[%c3, %c3] : memref<12x4xi16>, vector<4xi16>
          %294 = vector.broadcast %c15 : index to vector<12xindex>
          %295 = vector.broadcast %true_28 : i1 to vector<12xi1>
          %296 = vector.broadcast %154 : f16 to vector<12xf16>
          vector.scatter %alloc_11[%c9, %c0] [%294], %295, %296 : memref<12x4xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
          %collapsed_51 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<16x16xf16> into tensor<256xf16>
          %297 = memref.load %alloc_17[] : memref<f32>
          %298 = index.divs %25, %70
          scf.condition(%166) %alloc_17 : memref<f32>
        } do {
        ^bb0(%arg3: memref<f32>):
          %collapsed_51 = tensor.collapse_shape %10 [[0, 1]] : tensor<12x4xi1> into tensor<48xi1>
          %290 = arith.shrsi %false_32, %false_26 : i1
          %true_52 = index.bool.constant true
          %false_53 = index.bool.constant false
          %291 = arith.divf %cst_36, %cst_22 : f16
          %292 = math.fma %15, %from_elements_34, %15 : tensor<4xf16>
          %293 = arith.maxf %42, %154 : f16
          %cast_54 = tensor.cast %from_elements_34 : tensor<4xf16> to tensor<?xf16>
          %294 = math.cos %13 : tensor<4xf16>
          %295 = index.casts %c1068090315_i32 : i32 to index
          %296 = math.roundeven %0 : tensor<4x4x16xf16>
          %alloc_55 = memref.alloc() : memref<7x12xf16>
          %297 = vector.matrix_multiply %283, %173 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 144 : i32} : (vector<1xf32>, vector<144xf32>) -> vector<144xf32>
          %298 = arith.maxsi %c1317615588_i32, %in_48 : i32
          affine.store %cst, %alloc_6[%c0, %c6] : memref<7x12xf32>
          %299 = arith.minui %c-30650_i16, %c-974_i16 : i16
          scf.yield %alloc_17 : memref<f32>
        }
        %286 = vector.broadcast %in_49 : i32 to vector<12xi32>
        %287 = vector.broadcast %false_27 : i1 to vector<12xi1>
        %288 = vector.maskedload %alloc_14[%c0, %c2], %287, %286 : memref<12x4xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %289 = arith.maxsi %c0_i32, %c1317615588_i32 : i32
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %207 = vector.transpose %173, [0] : vector<144xf32> to vector<144xf32>
    %extracted_39 = tensor.extract %38[%c3] : tensor<4xf32>
    %208 = arith.subi %c1317615588_i32, %c0_i32 : i32
    %true_40 = index.bool.constant true
    %209 = math.atan %5 : tensor<7x12xf16>
    %210 = arith.cmpi ult, %c2110867356_i64, %c580843849_i64 : i64
    %211 = math.log %15 : tensor<4xf16>
    %212 = arith.divsi %c1711636616_i64, %c1554343177_i64 : i64
    %213 = vector.transpose %82, [0] : vector<9xf32> to vector<9xf32>
    %214 = math.fma %cst_22, %cst_22, %cst_20 : f16
    %215 = vector.matrix_multiply %117, %113 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 4 : i32} : (vector<9xf32>, vector<4xf32>) -> vector<36xf32>
    %rank_41 = tensor.rank %15 : tensor<4xf16>
    affine.store %166, %97[%c13, %c4] : memref<7x12xi1>
    %216 = arith.divsi %false_26, %false_27 : i1
    %217 = index.castu %c9 : index to i32
    %218 = math.ctlz %c0_i16 : i16
    %219 = index.sizeof
    %220 = vector.extract %132[17] : vector<144xf32>
    %221 = vector.extract_strided_slice %180 {offsets = [2], sizes = [2], strides = [1]} : vector<4x16xi32> to vector<2x16xi32>
    %alloc_42 = memref.alloc() : memref<12x4xi16>
    memref.copy %alloc_12, %alloc_42 : memref<12x4xi16> to memref<12x4xi16>
    %222 = tensor.empty() : tensor<4x4x16xi64>
    %223 = vector.broadcast %c10 : index to vector<12xindex>
    %224 = vector.broadcast %false_26 : i1 to vector<12xi1>
    %225 = vector.broadcast %extracted_39 : f32 to vector<12xf32>
    vector.scatter %alloc[%c0, %c0, %c10] [%223], %224, %225 : memref<4x4x16xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %226 = math.rsqrt %22 : tensor<f16>
    %227 = vector.extract %215[11] : vector<36xf32>
    %228 = index.castu %25 : index to i32
    %229 = math.round %42 : f16
    %230 = vector.extract %215[7] : vector<36xf32>
    %231 = scf.while (%arg3 = %alloc_16) : (memref<4x4x16xi1>) -> memref<4x4x16xi1> {
      %false_48 = index.bool.constant false
      %258 = math.cos %1 : tensor<7x12xf16>
      %259 = vector.multi_reduction <mul>, %215, %cst [0] : vector<36xf32> to f32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %114, %114, %extracted_39 : vector<4xf32>, vector<4xf32> into f32
      %261 = math.fpowi %15, %45 : tensor<4xf16>, tensor<4xi32>
      %cast_49 = tensor.cast %9 : tensor<4xi64> to tensor<?xi64>
      %262 = arith.remf %extracted, %extracted : f16
      %inserted_50 = tensor.insert %false_0 into %17[%c3, %c0] : tensor<12x4xi1>
      scf.condition(%true_40) %alloc_16 : memref<4x4x16xi1>
    } do {
    ^bb0(%arg3: memref<4x4x16xi1>):
      %true_48 = index.bool.constant true
      %258 = bufferization.clone %alloc_16 : memref<4x4x16xi1> to memref<4x4x16xi1>
      %259 = math.log1p %4 : tensor<7x12xf16>
      %260 = index.add %144, %144
      %261 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + 8) mod 16 - 1 == 0, d3 + 14 >= 0, (d2 + 8) mod 16 - 4 >= 0)>(%c5, %c15, %c15, %c7) -> memref<12x4xi32> {
        %272 = arith.remsi %c2111428848_i64, %c2110867356_i64 : i64
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_50 = arith.constant 0 : i32
        %273 = vector.transfer_read %12[%c12, %32], %c0_i32_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<12x4xi32>, vector<4xi32>
        %274 = vector.matrix_multiply %132, %20 {lhs_columns = 16 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<144xf32>, vector<16xf32>) -> vector<9xf32>
        %275 = affine.min affine_map<(d0, d1) -> (d1 mod 128, d1 mod 128)>(%c0, %c0)
        %276 = math.round %22 : tensor<f16>
        %277 = vector.multi_reduction <mul>, %96, %173 [] : vector<144xf32> to vector<144xf32>
        bufferization.dealloc_tensor %22 : tensor<f16>
        %278 = vector.extract_strided_slice %198 {offsets = [8], sizes = [3], strides = [1]} : vector<12x4xi1> to vector<3x4xi1>
        affine.yield %alloc_14 : memref<12x4xi32>
      } else {
        %272 = arith.remui %c-974_i16, %c0_i16 : i16
        %273 = math.powf %cst_20, %cst_22 : f16
        %274 = vector.matrix_multiply %114, %96 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 36 : i32} : (vector<4xf32>, vector<144xf32>) -> vector<36xf32>
        %splat_50 = tensor.splat %42 : tensor<4xf16>
        %275 = arith.subi %c580843849_i64, %c2111428848_i64 : i64
        %276 = arith.remf %42, %cst_20 : f16
        %alloca = memref.alloca() : memref<12x4xf16>
        %277 = arith.ori %true_48, %true : i1
        affine.yield %alloc_14 : memref<12x4xi32>
      }
      %262 = index.sub %c13, %126
      %263 = tensor.empty() : tensor<4xf32>
      %mapped_49 = linalg.map ins(%alloc_4, %3 : memref<4xf32>, tensor<4xf32>) outs(%263 : tensor<4xf32>)
        (%in: f32, %in_50: f32) {
          %272 = vector.insert %53, %47 [3] : vector<4xi1> into vector<12x4xi1>
          %273 = index.castu %c-30650_i16 : i16 to index
          %274 = bufferization.clone %alloc_15 : memref<4x4x16xf16> to memref<4x4x16xf16>
          %275 = vector.transpose %180, [1, 0] : vector<4x16xi32> to vector<16x4xi32>
          %276 = arith.maxui %false, %true : i1
          %277 = math.atan %in_50 : f32
          %278 = math.ctpop %false_26 : i1
          %279 = memref.load %alloc_8[%c3, %c10] : memref<7x12xf16>
          %from_elements_51 = tensor.from_elements %109, %c1068090315_i32, %c1317615588_i32, %c0_i32, %c0_i32, %109, %109, %c1068090315_i32, %c0_i32, %109, %c0_i32, %c1317615588_i32, %109, %c0_i32, %c0_i32, %109, %c1068090315_i32, %c1068090315_i32, %c1317615588_i32, %109, %c1068090315_i32, %c0_i32, %c1317615588_i32, %c1068090315_i32, %c0_i32, %c1068090315_i32, %c1068090315_i32, %c1068090315_i32, %c0_i32, %109, %c0_i32, %c0_i32, %c1317615588_i32, %c0_i32, %c1317615588_i32, %c0_i32, %109, %c1068090315_i32, %c0_i32, %109, %c1068090315_i32, %c1068090315_i32, %c1317615588_i32, %109, %109, %109, %c1068090315_i32, %c0_i32, %109, %109, %c0_i32, %c1317615588_i32, %c1068090315_i32, %c1317615588_i32, %c0_i32, %c0_i32, %c1068090315_i32, %c0_i32, %109, %c1317615588_i32, %c1068090315_i32, %109, %c1317615588_i32, %c1068090315_i32, %c0_i32, %c1317615588_i32, %c1068090315_i32, %c1317615588_i32, %c1068090315_i32, %c0_i32, %109, %c1068090315_i32, %109, %c1317615588_i32, %c1068090315_i32, %c1317615588_i32, %c0_i32, %c1068090315_i32, %c1317615588_i32, %c1068090315_i32, %109, %c0_i32, %109, %109 : tensor<7x12xi32>
          %280 = math.log1p %38 : tensor<4xf32>
          %281 = arith.ori %c1068090315_i32, %109 : i32
          %282 = arith.remui %c1317615588_i32, %c1068090315_i32 : i32
          %from_elements_52 = tensor.from_elements %in, %cst, %in_50, %in_50, %cst, %cst, %extracted_39, %in, %in_50, %cst, %cst, %in_50, %cst, %cst, %in, %in_50, %cst, %in_50, %extracted_39, %cst, %cst, %cst, %in_50, %in_50, %extracted_39, %extracted_39, %extracted_39, %cst, %extracted_39, %in, %in, %extracted_39, %in, %in_50, %extracted_39, %in_50, %extracted_39, %in, %cst, %extracted_39, %in_50, %extracted_39, %cst, %cst, %cst, %in, %extracted_39, %in, %in_50, %in, %in, %cst, %in_50, %in, %in, %in, %in_50, %in_50, %in_50, %in_50, %cst, %in_50, %in_50, %cst, %cst, %extracted_39, %extracted_39, %cst, %in, %extracted_39, %in_50, %in_50, %in, %in_50, %cst, %in_50, %in, %extracted_39, %in, %in, %extracted_39, %in_50, %in, %extracted_39, %in_50, %in, %cst, %in, %in, %in, %in, %extracted_39, %extracted_39, %in_50, %extracted_39, %cst, %in, %in_50, %cst, %in_50, %cst, %in_50, %extracted_39, %extracted_39, %cst, %cst, %in, %cst, %in, %extracted_39, %in_50, %cst, %in, %extracted_39, %extracted_39, %in_50, %cst, %cst, %extracted_39, %in_50, %in_50, %in, %in_50, %cst, %extracted_39, %in, %extracted_39, %cst, %in_50, %cst, %cst, %cst, %cst, %cst, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %in_50, %in_50, %cst, %in, %in, %cst, %cst, %in_50, %in_50, %in_50, %in_50, %extracted_39, %extracted_39, %in, %extracted_39, %in_50, %in_50, %extracted_39, %extracted_39, %in_50, %in_50, %in_50, %in, %in, %cst, %in, %in_50, %in, %extracted_39, %cst, %in, %extracted_39, %cst, %in_50, %cst, %in_50, %cst, %extracted_39, %cst, %extracted_39, %in_50, %in, %extracted_39, %extracted_39, %in, %in_50, %in, %cst, %extracted_39, %in_50, %cst, %in, %in_50, %cst, %in, %in, %in, %in, %in, %cst, %in, %in_50, %in, %extracted_39, %cst, %in, %extracted_39, %in, %in, %in, %extracted_39, %cst, %in, %in, %in_50, %in, %cst, %in_50, %in, %in_50, %in_50, %extracted_39, %in_50, %in_50, %cst, %cst, %in_50, %cst, %cst, %in_50, %in, %in, %extracted_39, %in, %extracted_39, %cst, %cst, %in_50, %cst, %cst, %extracted_39, %cst, %in_50, %in_50, %cst, %extracted_39, %extracted_39, %in_50, %in_50, %cst, %extracted_39, %in_50, %cst, %cst, %in, %in_50, %in : tensor<4x4x16xf32>
          %283 = arith.floordivsi %c1554343177_i64, %c1554343177_i64 : i64
          %284 = vector.extract %117[7] : vector<9xf32>
          %285 = arith.maxsi %c1711636616_i64, %c2111428848_i64 : i64
          %286 = math.fpowi %in_50, %109 : f32, i32
          %287 = tensor.empty(%rank_31, %24) : tensor<?x?xf16>
          %288 = arith.remsi %c1711636616_i64, %c580843849_i64 : i64
          %289 = arith.maxf %in_50, %cst : f32
          %290 = math.ctlz %8 : tensor<4x4x16xi16>
          %splat_53 = tensor.splat %42 : tensor<12x4xf16>
          %291 = math.roundeven %13 : tensor<4xf16>
          %292 = vector.broadcast %c-30650_i16 : i16 to vector<12x7xi16>
          %293 = vector.transfer_write %292, %8[%219, %c7, %25] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x7xi16>, tensor<4x4x16xi16>
          %from_elements_54 = tensor.from_elements %true_48, %true_28, %true_48, %true_48, %true_1, %false, %false, %true, %true_1, %false, %false_0, %false_27, %true_40, %false_27, %false_32, %false, %166, %true_1, %false, %false, %166, %true_48, %true_40, %false_0, %166, %false_32, %false, %false_26, %true_1, %false_27, %true_40, %false_0, %true_48, %false_0, %false_27, %true_48, %true, %false_27, %false_0, %false_27, %true, %false_27, %false_26, %true_40, %false_32, %true_1, %false_26, %false_0, %true_1, %false, %true_28, %true_48, %false_32, %false_26, %true_1, %false_27, %false_27, %false_26, %true_40, %true_28, %true, %false_0, %false_0, %false_32, %true_40, %166, %166, %false_26, %false, %false_27, %false_32, %true_1, %166, %166, %166, %true_40, %true_40, %false_27, %true_28, %true_28, %true, %false, %true_40, %false_32, %false_32, %true_48, %false_26, %false_26, %true_28, %true_48, %true_1, %true_1, %false_26, %false_0, %166, %false_26, %false, %true, %true, %true_48, %false_32, %false_26, %true_40, %false, %false_26, %false_0, %true_1, %false_26, %true_1, %166, %true_28, %false, %true_1, %166, %false_32, %true_40, %false_27, %false_0, %true, %true_40, %false_26, %true_1, %true, %false_27, %true, %false_32, %true_40, %false_26, %true_1, %false, %166, %false_27, %true_40, %true_40, %false_26, %false_27, %true_1, %true_28, %true_48, %true_28, %false_27, %166, %false_32, %false_32, %false_26, %false, %true_28, %false, %true, %false_32, %false_27, %true_40, %true, %false_27, %false_26, %true_28, %true, %false_26, %true_1, %false_0, %true_1, %true_28, %true_28, %true_1, %false_26, %true, %false_27, %true_28, %true_28, %false_32, %false, %true, %true_48, %true_1, %false_27, %false_27, %false, %false, %false_26, %true, %true, %true_40, %true_1, %false_32, %166, %166, %true_40, %false, %true_1, %166, %false_0, %false_26, %true_28, %false_0, %true_40, %true_40, %false_27, %false, %false_26, %false_27, %true, %166, %false, %true_48, %true_28, %false_27, %false_0, %false_0, %false_27, %true_48, %true_48, %false_32, %true_28, %false_32, %true_48, %false_27, %166, %true_1, %true_28, %false_26, %true_28, %false_26, %true_48, %false_0, %false, %true_40, %true_48, %false, %false_32, %true_48, %true_48, %false_0, %true, %true_48, %166, %true_48, %false_26, %true_48, %true_48, %true_40, %true, %false_32, %false_27, %true_1, %false_32, %true, %false_26, %true_48, %false_0, %true_28, %false_0, %false_32, %166, %true_48, %false_32, %false_26 : tensor<4x4x16xi1>
          %294 = arith.muli %c0_i16, %c0_i16 : i16
          %295 = math.atan %cst_20 : f16
          %296 = bufferization.clone %alloc_8 : memref<7x12xf16> to memref<7x12xf16>
          %cst_55 = arith.constant 1.000000e+00 : f16
          %cst_56 = arith.constant 0.000000e+00 : f16
          %297 = vector.transfer_read %274[%260, %70, %c9], %cst_56 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<4x4x16xf16>, vector<7xf16>
          %298 = arith.mulf %extracted, %cst_20 : f16
          %299 = arith.subi %c0_i32, %c1068090315_i32 : i32
          %300 = math.floor %13 : tensor<4xf16>
          %cst_57 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_57 : f32
        }
      %264 = arith.xori %false_0, %166 : i1
      %265 = math.roundeven %154 : f16
      %266 = vector.broadcast %c0_i16 : i16 to vector<4x4x16xi16>
      %267 = arith.muli %c1068090315_i32, %c1068090315_i32 : i32
      %268 = math.ctlz %c0_i16 : i16
      %269 = math.exp %22 : tensor<f16>
      %270 = index.add %260, %rank
      scf.execute_region {
        %272 = math.exp2 %extracted_39 : f32
        %273 = vector.load %alloc_14[%c9, %c2] : memref<12x4xi32>, vector<4xi32>
        %274 = vector.broadcast %extracted : f16 to vector<f16>
        %275 = vector.transfer_write %274, %5[%32, %c1] : vector<f16>, tensor<7x12xf16>
        bufferization.dealloc_tensor %12 : tensor<12x4xi32>
        %276 = bufferization.clone %97 : memref<7x12xi1> to memref<7x12xi1>
        %277 = math.rsqrt %0 : tensor<4x4x16xf16>
        %278 = arith.xori %c1317615588_i32, %c1317615588_i32 : i32
        %279 = arith.ceildivsi %166, %false_26 : i1
        %collapsed_50 = tensor.collapse_shape %4 [[0, 1]] : tensor<7x12xf16> into tensor<84xf16>
        %280 = index.maxs %c7, %c8
        %281 = math.absi %false : i1
        %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %282 = bufferization.to_memref %38 : memref<4xf32>
        %283 = index.maxu %52, %127
        memref.assume_alignment %alloc_17, 1 : memref<f32>
        %284 = memref.load %alloc_3[%c0] : memref<4xf32>
        scf.yield
      }
      %271 = arith.minui %c19112_i16, %c-30650_i16 : i16
      scf.yield %258 : memref<4x4x16xi1>
    }
    %232 = arith.negf %extracted : f16
    %233 = scf.while (%arg3 = %c2111428848_i64) : (i64) -> i64 {
      %258 = vector.matrix_multiply %112, %53 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
      %259 = arith.mulf %42, %extracted : f16
      %260 = affine.load %alloc_7[%c12, %c8, %c8] : memref<4x4x16xf32>
      %261 = arith.maxf %extracted_39, %cst : f32
      %rank_48 = tensor.rank %0 : tensor<4x4x16xf16>
      %262 = index.maxu %110, %32
      %c1622742300_i32 = arith.constant 1622742300 : i32
      %263 = memref.atomic_rmw mulf %cst_20, %alloc_8[%c0, %c8] : (f16, memref<7x12xf16>) -> f16
      scf.condition(%false) %arg3 : i64
    } do {
    ^bb0(%arg3: i64):
      %inserted_48 = tensor.insert %extracted into %1[%c5, %c0] : tensor<7x12xf16>
      %258 = math.exp2 %from_elements : tensor<7x12xf16>
      %259 = index.castu %c15 : index to i32
      %260 = arith.maxui %c2111428848_i64, %c1711636616_i64 : i64
      %261 = vector.insert %53, %50 [3] : vector<4xi1> into vector<12x4xi1>
      %262 = vector.broadcast %166 : i1 to vector<12xi1>
      %263 = vector.maskedload %alloc_16[%c3, %c1, %c9], %262, %262 : memref<4x4x16xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      scf.if %false_26 {
        %dest, %accumulated_value = vector.scan <or>, %47, %53 {inclusive = false, reduction_dim = 0 : i64} : vector<12x4xi1>, vector<4xi1>
        %271 = math.ctpop %c580843849_i64 : i64
        %inserted_51 = tensor.insert %c0_i32 into %120[%c0, %c0] : tensor<7x12xi32>
        %272 = arith.muli %true_40, %true_1 : i1
        %273 = index.maxu %171, %107
        %274 = vector.broadcast %cst : f32 to vector<144x144xf32>
        %275 = vector.outerproduct %132, %96, %274 {kind = #vector.kind<add>} : vector<144xf32>, vector<144xf32>
        %276 = tensor.empty() : tensor<4x4xi1>
        %277 = tensor.empty() : tensor<12x4xi1>
        %278 = linalg.matmul ins(%10, %276 : tensor<12x4xi1>, tensor<4x4xi1>) outs(%277 : tensor<12x4xi1>) -> tensor<12x4xi1>
        %279 = vector.matrix_multiply %82, %132 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<9xf32>, vector<144xf32>) -> vector<16xf32>
      }
      %264 = arith.minf %cst_22, %154 : f16
      %265 = index.divs %24, %127
      %collapsed_49 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x4x16xf16> into tensor<16x16xf16>
      %266 = bufferization.to_tensor %98 : memref<4x4x16xf32>
      %267 = arith.shrsi %false_27, %true_1 : i1
      %268 = arith.ori %c2111428848_i64, %c2111428848_i64 : i64
      %269 = vector.extract_strided_slice %262 {offsets = [7], sizes = [5], strides = [1]} : vector<12xi1> to vector<5xi1>
      %270 = affine.apply affine_map<(d0) -> (d0 - 4)>(%175)
      %cst_50 = arith.constant 4.424000e+03 : f16
      scf.yield %c2111428848_i64 : i64
    }
    %234 = vector.broadcast %c1317615588_i32 : i32 to vector<i32>
    vector.transfer_write %234, %alloc_10[%181, %c1] : vector<i32>, memref<7x12xi32>
    %235 = arith.shrsi %false_0, %false_27 : i1
    %236 = tensor.empty() : tensor<4xf16>
    %mapped_43 = linalg.map ins(%13, %alloc_18 : tensor<4xf16>, memref<4xf16>) outs(%236 : tensor<4xf16>)
      (%in: f16, %in_48: f16) {
        %258 = index.add %170, %24
        %259 = arith.minf %cst_36, %cst_22 : f16
        %260 = index.ceildivs %182, %c3
        %261 = index.maxs %c4, %c6
        scf.if %true_40 {
          %286 = vector.extract_strided_slice %114 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
          %287 = vector.broadcast %c1068090315_i32 : i32 to vector<4x16x4x16xi32>
          %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %143, %143, %287 : vector<4x4x16xi32>, vector<4x4x16xi32> into vector<4x16x4x16xi32>
          %alloc_51 = memref.alloc() : memref<4x4x16xi64>
          memref.tensor_store %2, %alloc_51 : memref<4x4x16xi64>
          %289 = math.tanh %in : f16
          %290 = bufferization.clone %alloc_6 : memref<7x12xf32> to memref<7x12xf32>
          %291 = index.divs %c0, %171
          %splat_52 = tensor.splat %c1317615588_i32 : tensor<4x4x16xi32>
          %alloc_53 = memref.alloc() : memref<12x16xf16>
          %292 = tensor.empty() : tensor<7x16xf16>
          %293 = linalg.matmul ins(%5, %alloc_53 : tensor<7x12xf16>, memref<12x16xf16>) outs(%292 : tensor<7x16xf16>) -> tensor<7x16xf16>
        } else {
          %286 = arith.remsi %false, %true : i1
          %287 = math.cos %13 : tensor<4xf16>
          %288 = index.casts %105 : index to i32
          %cast_51 = tensor.cast %transposed : tensor<12x7xi1> to tensor<?x?xi1>
          %289 = arith.floordivsi %true_1, %true : i1
          %290 = affine.apply affine_map<(d0) -> (0)>(%52)
          %291 = vector.transpose %124, [] : vector<f32> to vector<f32>
          %292 = math.ctlz %c-974_i16 : i16
        }
        %262 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %263 = vector.load %alloc_7[%c2, %c0, %c8] : memref<4x4x16xf32>, vector<7x12xf32>
        %264 = scf.index_switch %c11 -> tensor<4x4x16xi1> 
        case 1 {
          %extracted_51 = tensor.extract %18[%c0, %c4] : tensor<12x7xi1>
          %286 = arith.shrui %false_27, %false_26 : i1
          %287 = arith.ori %c19112_i16, %c0_i16 : i16
          %288 = index.maxu %c0, %148
          %289 = vector.broadcast %cst : f32 to vector<7xf32>
          %dest, %accumulated_value = vector.scan <maxf>, %263, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<7x12xf32>, vector<7xf32>
          %290 = vector.extract %114[2] : vector<4xf32>
          %291 = index.maxs %127, %106
          %292 = math.round %extracted_39 : f32
          %293 = arith.cmpi ugt, %c0_i16, %c-9611_i16 : i16
          %294 = bufferization.to_memref %16 : memref<12x4xi1>
          %extracted_52 = tensor.extract %22[] : tensor<f16>
          %295 = arith.minf %cst, %extracted_39 : f32
          %296 = arith.maxsi %c-9611_i16, %c-30650_i16 : i16
          %297 = index.maxs %c8, %106
          %298 = vector.transpose %53, [0] : vector<4xi1> to vector<4xi1>
          %299 = math.exp2 %cst_36 : f16
          scf.yield %14 : tensor<4x4x16xi1>
        }
        case 2 {
          %286 = vector.create_mask %c0, %c13 : vector<7x12xi1>
          %287 = vector.broadcast %c13 : index to vector<12xindex>
          %288 = vector.broadcast %166 : i1 to vector<12xi1>
          %289 = vector.broadcast %c0_i32 : i32 to vector<12xi32>
          vector.scatter %alloc_13[%c4, %c9] [%287], %288, %289 : memref<7x12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
          bufferization.dealloc_tensor %transposed : tensor<12x7xi1>
          %cast_51 = tensor.cast %3 : tensor<4xf32> to tensor<?xf32>
          %extracted_52 = tensor.extract %1[%c2, %c6] : tensor<7x12xf16>
          %290 = arith.divsi %c2111428848_i64, %c2110867356_i64 : i64
          %291 = vector.matrix_multiply %114, %96 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 36 : i32} : (vector<4xf32>, vector<144xf32>) -> vector<36xf32>
          %292 = math.powf %13, %13 : tensor<4xf16>
          %293 = math.log10 %3 : tensor<4xf32>
          %294 = arith.remf %cst_36, %154 : f16
          %295 = index.divu %181, %170
          %296 = arith.maxui %109, %109 : i32
          %297 = vector.bitcast %82 : vector<9xf32> to vector<9xf32>
          %298 = arith.subi %true_1, %true_1 : i1
          %299 = math.powf %extracted_39, %cst : f32
          %300 = math.rsqrt %from_elements : tensor<7x12xf16>
          scf.yield %14 : tensor<4x4x16xi1>
        }
        case 3 {
          %rank_51 = tensor.rank %17 : tensor<12x4xi1>
          memref.assume_alignment %alloc_7, 1 : memref<4x4x16xf32>
          %286 = index.divs %rank, %c13
          %287 = arith.maxui %c2110867356_i64, %c1554343177_i64 : i64
          %288 = affine.min affine_map<(d0, d1, d2) -> (d2 - d0)>(%c12, %c14, %52)
          %289 = vector.load %alloc_5[%c2, %c0, %c3] : memref<4x4x16xf16>, vector<12x4xf16>
          %collapsed_52 = tensor.collapse_shape %transposed [[0, 1]] : tensor<12x7xi1> into tensor<84xi1>
          %290 = arith.shrui %false_32, %false_0 : i1
          %291 = math.rsqrt %3 : tensor<4xf32>
          %292 = memref.atomic_rmw maxf %cst, %alloc_4[%c3] : (f32, memref<4xf32>) -> f32
          %293 = math.absi %splat : tensor<4xi16>
          %collapsed_53 = tensor.collapse_shape %76 [[0, 1], [2]] : tensor<4x4x16xf16> into tensor<16x16xf16>
          %294 = arith.ori %c2111428848_i64, %c1554343177_i64 : i64
          %295 = vector.splat %c-30650_i16 : vector<12x4xi16>
          %296 = vector.insert %extracted_39, %82 [6] : f32 into vector<9xf32>
          %297 = math.round %1 : tensor<7x12xf16>
          scf.yield %14 : tensor<4x4x16xi1>
        }
        default {
          %286 = math.ctpop %false_32 : i1
          %287 = vector.extract %112[0] : vector<1xi1>
          %288 = index.maxs %70, %219
          %289 = index.divs %c4, %108
          %290 = index.maxu %c4, %258
          %291 = math.atan %4 : tensor<7x12xf16>
          %292 = memref.atomic_rmw assign %109, %34[%c5, %c5] : (i32, memref<7x12xi32>) -> i32
          %293 = arith.maxui %166, %false_26 : i1
          %294 = vector.transpose %180, [1, 0] : vector<4x16xi32> to vector<16x4xi32>
          %295 = bufferization.to_tensor %alloc_12 : memref<12x4xi16>
          %296 = index.maxs %106, %260
          %297 = math.ctlz %true_1 : i1
          memref.assume_alignment %alloc_3, 8 : memref<4xf32>
          %298 = arith.shrsi %c-974_i16, %c-9611_i16 : i16
          %alloc_51 = memref.alloc() : memref<4xf32>
          %false_52 = index.bool.constant false
          scf.yield %14 : tensor<4x4x16xi1>
        }
        %265 = arith.mulf %cst, %extracted_39 : f32
        %266 = index.ceildivs %108, %110
        %267 = arith.shrsi %c1554343177_i64, %c2111428848_i64 : i64
        %268 = arith.divui %true_28, %166 : i1
        %269 = index.add %40, %rank
        %270 = arith.addf %extracted, %cst_36 : f16
        %271 = arith.shrui %166, %false_0 : i1
        %272 = index.casts %156 : index to i32
        %273 = math.round %38 : tensor<4xf32>
        affine.store %extracted_39, %alloc_3[%c14] : memref<4xf32>
        %274 = vector.multi_reduction <minf>, %96, %cst [0] : vector<144xf32> to f32
        %275 = affine.for %arg3 = 0 to 57 iter_args(%arg4 = %1) -> (tensor<7x12xf16>) {
          affine.yield %1 : tensor<7x12xf16>
        }
        %276 = index.divs %c8, %c15
        %inserted_49 = tensor.insert %extracted into %11[%c0, %c3] : tensor<7x12xf16>
        %277 = index.sizeof
        %278 = index.casts %c1317615588_i32 : i32 to index
        %279 = math.absf %cst_36 : f16
        %280 = arith.floordivsi %false, %true_28 : i1
        %281 = arith.mulf %extracted_39, %274 : f32
        %282 = arith.mulf %cst_20, %cst_22 : f16
        %283 = vector.bitcast %112 : vector<1xi1> to vector<1xi1>
        %284 = math.absf %154 : f16
        scf.if %false_32 {
          %286 = arith.maxf %cst_36, %cst_36 : f16
          %287 = arith.remui %false_0, %false_27 : i1
          %288 = index.ceildivu %52, %277
          %289 = vector.load %alloc_18[%c1] : memref<4xf16>, vector<7x12xf16>
          %290 = arith.maxf %extracted_39, %274 : f32
          %291 = index.ceildivs %175, %266
          %292 = vector.broadcast %274 : f32 to vector<16x16xf32>
          %293 = vector.outerproduct %20, %20, %292 {kind = #vector.kind<add>} : vector<16xf32>, vector<16xf32>
          %294 = arith.addi %false, %true : i1
        }
        %285 = arith.maxf %cst_20, %cst_20 : f16
        %cst_50 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_50 : f16
      }
    %237 = arith.remui %false, %false_32 : i1
    %238 = math.absi %166 : i1
    %239 = vector.reduction <add>, %82 : vector<9xf32> into f32
    %from_elements_44 = tensor.from_elements %c-30650_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c-9611_i16, %c19112_i16, %c-974_i16, %c-974_i16, %c19112_i16, %c-30650_i16, %c-9611_i16, %c0_i16, %c0_i16, %c19112_i16, %c-9611_i16, %c-974_i16, %c-974_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c-974_i16, %c-9611_i16, %c19112_i16, %c0_i16, %c0_i16, %c-30650_i16, %c19112_i16, %c19112_i16, %c-30650_i16, %c-30650_i16, %c-30650_i16, %c0_i16, %c19112_i16, %c-9611_i16, %c19112_i16, %c-974_i16, %c19112_i16, %c-9611_i16, %c-30650_i16, %c-30650_i16, %c19112_i16, %c0_i16, %c-9611_i16, %c-9611_i16, %c-974_i16, %c-30650_i16, %c-9611_i16, %c-974_i16, %c19112_i16, %c19112_i16, %c0_i16, %c0_i16, %c19112_i16, %c19112_i16, %c19112_i16, %c-9611_i16, %c0_i16, %c19112_i16, %c-30650_i16, %c0_i16, %c-9611_i16, %c-30650_i16, %c-30650_i16, %c0_i16, %c19112_i16, %c-9611_i16, %c-974_i16, %c0_i16, %c-30650_i16, %c19112_i16, %c19112_i16, %c-30650_i16, %c-30650_i16, %c19112_i16, %c-9611_i16, %c0_i16, %c-30650_i16, %c19112_i16, %c-974_i16, %c-9611_i16, %c-9611_i16, %c-974_i16, %c19112_i16, %c-9611_i16, %c19112_i16, %c19112_i16, %c-30650_i16, %c-974_i16, %c-974_i16, %c-9611_i16, %c-30650_i16, %c0_i16, %c0_i16, %c-9611_i16, %c-974_i16, %c-974_i16, %c-30650_i16, %c-9611_i16, %c-30650_i16, %c19112_i16, %c0_i16, %c19112_i16, %c-9611_i16, %c-9611_i16, %c0_i16, %c0_i16, %c0_i16, %c-9611_i16, %c0_i16, %c-30650_i16, %c-974_i16, %c0_i16, %c-974_i16, %c-30650_i16, %c-30650_i16, %c-974_i16, %c-30650_i16, %c0_i16, %c0_i16, %c0_i16, %c-974_i16, %c0_i16, %c0_i16, %c-30650_i16, %c-974_i16, %c-9611_i16, %c-974_i16, %c-30650_i16, %c-9611_i16, %c-974_i16, %c-9611_i16, %c0_i16, %c-30650_i16, %c-30650_i16, %c-9611_i16, %c-9611_i16, %c-30650_i16, %c-974_i16, %c0_i16, %c19112_i16, %c19112_i16, %c0_i16, %c-9611_i16, %c-974_i16, %c19112_i16, %c-974_i16, %c19112_i16, %c-974_i16, %c-974_i16, %c-30650_i16, %c0_i16, %c-30650_i16, %c-974_i16, %c-974_i16, %c-9611_i16, %c19112_i16, %c-30650_i16, %c-30650_i16, %c19112_i16, %c19112_i16, %c-974_i16, %c0_i16, %c19112_i16, %c-9611_i16, %c-30650_i16, %c0_i16, %c-974_i16, %c19112_i16, %c-30650_i16, %c-30650_i16, %c19112_i16, %c-9611_i16, %c-30650_i16, %c-9611_i16, %c-974_i16, %c19112_i16, %c0_i16, %c0_i16, %c-9611_i16, %c0_i16, %c-974_i16, %c0_i16, %c-30650_i16, %c-30650_i16, %c-9611_i16, %c-9611_i16, %c-9611_i16, %c0_i16, %c-974_i16, %c-974_i16, %c0_i16, %c-9611_i16, %c-9611_i16, %c-9611_i16, %c-974_i16, %c19112_i16, %c0_i16, %c0_i16, %c0_i16, %c-9611_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c-974_i16, %c-9611_i16, %c-9611_i16, %c-9611_i16, %c19112_i16, %c-9611_i16, %c0_i16, %c-9611_i16, %c0_i16, %c-30650_i16, %c0_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c0_i16, %c-9611_i16, %c19112_i16, %c-30650_i16, %c0_i16, %c-974_i16, %c-974_i16, %c-974_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c-30650_i16, %c-30650_i16, %c-30650_i16, %c19112_i16, %c-9611_i16, %c0_i16, %c-9611_i16, %c-30650_i16, %c19112_i16, %c-30650_i16, %c-9611_i16, %c19112_i16, %c19112_i16, %c-974_i16, %c0_i16, %c19112_i16, %c19112_i16, %c-9611_i16, %c-30650_i16, %c0_i16, %c0_i16, %c-30650_i16, %c0_i16, %c19112_i16, %c0_i16, %c19112_i16, %c-974_i16, %c-9611_i16 : tensor<4x4x16xi16>
    %240 = index.castu %c1554343177_i64 : i64 to index
    bufferization.dealloc_tensor %2 : tensor<4x4x16xi64>
    %241 = math.absi %14 : tensor<4x4x16xi1>
    scf.execute_region {
      %258 = math.roundeven %from_elements : tensor<7x12xf16>
      %259 = arith.maxsi %c1068090315_i32, %109 : i32
      %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<12x4xi32> into tensor<12x4x1xi32>
      %260 = arith.subi %c1317615588_i32, %109 : i32
      %261 = math.atan %4 : tensor<7x12xf16>
      %262 = arith.maxui %c2110867356_i64, %c2111428848_i64 : i64
      %263 = math.sqrt %from_elements : tensor<7x12xf16>
      %264 = memref.alloca_scope  -> (f16) {
        %276 = vector.broadcast %109 : i32 to vector<16xi32>
        %277 = vector.insert %276, %143 [0, 2] : vector<16xi32> into vector<4x4x16xi32>
        %278 = vector.load %alloc_4[%c1] : memref<4xf32>, vector<12x4xf32>
        %279 = arith.remsi %false_27, %false_27 : i1
        affine.store %154, %alloc_5[%c13, %c8, %c4] : memref<4x4x16xf16>
        %280 = index.ceildivs %c15, %c4
        %281 = arith.mulf %cst_36, %154 : f16
        %282 = arith.remui %c1554343177_i64, %c1554343177_i64 : i64
        %false_49 = index.bool.constant false
        %283 = math.exp2 %11 : tensor<7x12xf16>
        %284 = bufferization.clone %97 : memref<7x12xi1> to memref<7x12xi1>
        %285 = arith.divui %166, %true_1 : i1
        %286 = arith.ori %false_49, %false_26 : i1
        %287 = vector.broadcast %cst_36 : f16 to vector<4x4x16xf16>
        %288 = vector.broadcast %true_40 : i1 to vector<4x4x16xi1>
        %289 = vector.gather %15[%c1] [%143], %288, %287 : tensor<4xf16>, vector<4x4x16xi32>, vector<4x4x16xi1>, vector<4x4x16xf16> into vector<4x4x16xf16>
        %inserted_50 = tensor.insert %false into %10[%c2, %c0] : tensor<12x4xi1>
        %290 = arith.cmpi sgt, %c19112_i16, %c0_i16 : i16
        %291 = math.log1p %0 : tensor<4x4x16xf16>
        memref.assume_alignment %98, 4 : memref<4x4x16xf32>
        %292 = bufferization.clone %97 : memref<7x12xi1> to memref<7x12xi1>
        %293 = math.log2 %from_elements_34 : tensor<4xf16>
        %294 = arith.addf %cst, %cst : f32
        %295 = affine.load %alloc_11[%c9, %c5] : memref<12x4xf16>
        %296 = arith.negf %extracted_39 : f32
        %297 = index.maxu %219, %c0
        %298 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %299 = math.log10 %76 : tensor<4x4x16xf16>
        %inserted_51 = tensor.insert %cst_36 into %1[%c1, %c0] : tensor<7x12xf16>
        %300 = arith.mulf %cst_36, %cst_20 : f16
        %301 = math.absf %4 : tensor<7x12xf16>
        %302 = vector.broadcast %cst : f32 to vector<12x4xf32>
        %303 = vector.fma %302, %302, %278 : vector<12x4xf32>
        %304 = math.floor %15 : tensor<4xf16>
        %305 = bufferization.to_tensor %alloc_6 : memref<7x12xf32>
        %306 = vector.bitcast %112 : vector<1xi1> to vector<1xi1>
        memref.alloca_scope.return %cst_20 : f16
      }
      %265 = vector.broadcast %c-30650_i16 : i16 to vector<7xi16>
      %266 = vector.broadcast %true : i1 to vector<7xi1>
      %267 = vector.maskedload %alloc_12[%c7, %c1], %266, %265 : memref<12x4xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %268 = arith.mulf %cst, %cst : f32
      %269 = arith.xori %c2111428848_i64, %c2111428848_i64 : i64
      %cst_48 = arith.constant 1.000000e+00 : f16
      %270 = vector.transfer_read %15[%170], %cst_48 : tensor<4xf16>, vector<f16>
      %271 = affine.load %alloc_12[%c7, %c3] : memref<12x4xi16>
      %272 = arith.ori %false_27, %false_32 : i1
      %273 = vector.broadcast %166 : i1 to vector<4x4xi1>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %50, %198, %273 : vector<12x4xi1>, vector<12x4xi1> into vector<4x4xi1>
      %275 = math.exp2 %5 : tensor<7x12xf16>
      scf.yield
    }
    scf.if %true_1 {
      %258 = arith.shrui %c1317615588_i32, %109 : i32
      %259 = index.ceildivs %40, %240
      %260 = vector.broadcast %c2 : index to vector<16xindex>
      %261 = vector.broadcast %166 : i1 to vector<16xi1>
      %262 = vector.broadcast %c0_i32 : i32 to vector<16xi32>
      vector.scatter %34[%c6, %c11] [%260], %261, %262 : memref<7x12xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
      %263 = arith.maxf %cst, %cst : f32
      %264 = vector.broadcast %c1317615588_i32 : i32 to vector<16xi32>
      %265 = vector.insert %264, %180 [2] : vector<16xi32> into vector<4x16xi32>
      %266 = arith.minf %cst_36, %cst_20 : f16
      %cast_48 = tensor.cast %45 : tensor<4xi32> to tensor<?xi32>
      %267 = arith.subi %c0_i32, %c1068090315_i32 : i32
    }
    %242 = index.sub %32, %c5
    %243 = arith.shrsi %c580843849_i64, %c580843849_i64 : i64
    %244 = arith.shrsi %false_27, %166 : i1
    %alloc_45 = memref.alloc() : memref<4x4x16xi64>
    %245 = math.absi %c19112_i16 : i16
    %246 = vector.multi_reduction <maxf>, %96, %132 [] : vector<144xf32> to vector<144xf32>
    %247 = math.floor %11 : tensor<7x12xf16>
    %248 = scf.index_switch %c9 -> index 
    case 1 {
      %false_48 = index.bool.constant false
      %258 = vector.reduction <maxf>, %114 : vector<4xf32> into f32
      %259 = math.absi %10 : tensor<12x4xi1>
      %260 = arith.shrsi %166, %false_26 : i1
      %261 = arith.subi %c2110867356_i64, %c1554343177_i64 : i64
      %cast_49 = tensor.cast %splat : tensor<4xi16> to tensor<?xi16>
      %262 = index.divs %c14, %175
      %inserted_50 = tensor.insert %false_48 into %7[%c5, %c1] : tensor<12x4xi1>
      %263 = arith.maxf %42, %cst_22 : f16
      %264 = bufferization.to_memref %5 : memref<7x12xf16>
      %265 = arith.ori %true_1, %true : i1
      %266 = vector.load %alloc_5[%c1, %c0, %c12] : memref<4x4x16xf16>, vector<7x12xf16>
      %267 = vector.broadcast %166 : i1 to vector<12xi1>
      %268 = vector.multi_reduction <minui>, %198, %267 [1] : vector<12x4xi1> to vector<12xi1>
      %269 = math.exp2 %135 : tensor<7x12xf16>
      %270 = vector.broadcast %extracted_39 : f32 to vector<9x9xf32>
      %271 = vector.outerproduct %117, %82, %270 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
      %inserted_51 = tensor.insert %cst_36 into %from_elements[%c5, %c0] : tensor<7x12xf16>
      scf.yield %rank_31 : index
    }
    case 2 {
      %258 = bufferization.clone %alloc : memref<4x4x16xf32> to memref<4x4x16xf32>
      %259 = affine.if affine_set<(d0, d1) : (d1 floordiv 16 + d1 floordiv 64 >= 0, 0 >= 0, -(d0 - 16) == 0)>(%c9, %c5) -> memref<7x12xi64> {
        %269 = arith.muli %c-974_i16, %c19112_i16 : i16
        %270 = math.round %76 : tensor<4x4x16xf16>
        %271 = arith.mulf %42, %cst_20 : f16
        %272 = math.rsqrt %extracted : f16
        %273 = vector.splat %166 : vector<4x4x16xi1>
        %274 = index.maxu %c7, %175
        %275 = arith.ori %c2110867356_i64, %c2111428848_i64 : i64
        %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<7x12xf16> into tensor<7x12x1xf16>
        %alloc_51 = memref.alloc() : memref<7x12xi64>
        affine.yield %alloc_51 : memref<7x12xi64>
      } else {
        %269 = bufferization.clone %alloc_4 : memref<4xf32> to memref<4xf32>
        %270 = arith.remf %42, %cst_36 : f16
        %rank_51 = tensor.rank %13 : tensor<4xf16>
        memref.assume_alignment %alloc_14, 1 : memref<12x4xi32>
        %271 = arith.remf %cst_20, %cst_22 : f16
        %272 = arith.remf %extracted_39, %cst : f32
        %273 = math.fpowi %4, %120 : tensor<7x12xf16>, tensor<7x12xi32>
        %274 = vector.matrix_multiply %112, %53 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
        %alloc_52 = memref.alloc() : memref<7x12xi64>
        affine.yield %alloc_52 : memref<7x12xi64>
      }
      %260 = index.sub %164, %181
      %261 = scf.if %true -> (i64) {
        %269 = arith.muli %109, %c1068090315_i32 : i32
        bufferization.dealloc_tensor %13 : tensor<4xf16>
        %270 = vector.transpose %173, [0] : vector<144xf32> to vector<144xf32>
        %271 = bufferization.to_memref %from_elements_34 : memref<4xf16>
        %272 = arith.shrsi %c1068090315_i32, %109 : i32
        %true_51 = index.bool.constant true
        %273 = arith.cmpf ugt, %cst_22, %cst_36 : f16
        %274 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
        scf.yield %c1711636616_i64 : i64
      } else {
        %269 = arith.remf %extracted_39, %extracted_39 : f32
        %270 = index.maxu %c14, %181
        affine.store %cst_36, %alloc_5[%c8, %c1, %c6] : memref<4x4x16xf16>
        %271 = vector.matrix_multiply %112, %53 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
        %272 = math.absi %true_1 : i1
        %273 = index.divs %106, %106
        %274 = memref.load %alloc_5[%c0, %c1, %c9] : memref<4x4x16xf16>
        %275 = vector.broadcast %extracted_39 : f32 to vector<7xf32>
        %276 = vector.broadcast %false_32 : i1 to vector<7xi1>
        %277 = vector.maskedload %alloc_17[], %276, %275 : memref<f32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        scf.yield %c1711636616_i64 : i64
      }
      %cast_48 = tensor.cast %transposed : tensor<12x7xi1> to tensor<?x?xi1>
      %262 = math.round %21 : tensor<f16>
      %263 = math.exp2 %5 : tensor<7x12xf16>
      memref.alloca_scope  {
        %269 = math.rsqrt %76 : tensor<4x4x16xf16>
        %false_51 = index.bool.constant false
        %270 = math.rsqrt %154 : f16
        %271 = arith.minf %42, %cst_22 : f16
        %272 = math.log10 %cst_20 : f16
        %273 = math.fpowi %15, %45 : tensor<4xf16>, tensor<4xi32>
        %274 = index.sub %rank, %70
        %275 = index.add %137, %rank
        %276 = arith.muli %c-974_i16, %c-9611_i16 : i16
        %277 = arith.mulf %extracted_39, %cst : f32
        %278 = arith.addf %extracted_39, %cst : f32
        %279 = index.divu %95, %c1
        %280 = vector.insert %true_1, %53 [0] : i1 into vector<4xi1>
        %281 = memref.load %alloc_13[%c1, %c4] : memref<7x12xi32>
        %282 = arith.xori %true_1, %true_1 : i1
        %283 = index.casts %127 : index to i32
        %284 = arith.negf %cst_20 : f16
        %285 = arith.shrsi %c2110867356_i64, %c1554343177_i64 : i64
        %collapsed_52 = tensor.collapse_shape %18 [[0, 1]] : tensor<12x7xi1> into tensor<84xi1>
        %286 = arith.xori %c1554343177_i64, %c1554343177_i64 : i64
        %false_53 = arith.constant false
        %false_54 = arith.constant false
        %287 = vector.transfer_read %16[%rank, %c13], %false_54 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<12x4xi1>, vector<4xi1>
        %288 = vector.transpose %47, [0, 1] : vector<12x4xi1> to vector<12x4xi1>
        %289 = math.cos %38 : tensor<4xf32>
        %290 = math.fpowi %from_elements_34, %45 : tensor<4xf16>, tensor<4xi32>
        %291 = vector.broadcast %c580843849_i64 : i64 to vector<4x16xi64>
        %292 = vector.insert %291, %122 [1] : vector<4x16xi64> into vector<4x4x16xi64>
        %293 = vector.transpose %234, [] : vector<i32> to vector<i32>
        %294 = math.log10 %from_elements_34 : tensor<4xf16>
        %false_55 = index.bool.constant false
        %295 = math.rsqrt %236 : tensor<4xf16>
        %296 = vector.reduction <maxf>, %132 : vector<144xf32> into f32
        %297 = arith.negf %cst : f32
        %298 = vector.extract %198[10] : vector<12x4xi1>
      }
      %extracted_49 = tensor.extract %6[%c0, %c0, %c6] : tensor<4x4x16xi16>
      %264 = arith.shrsi %false_32, %true_28 : i1
      %265 = arith.ori %c-974_i16, %c-30650_i16 : i16
      %266 = math.absi %10 : tensor<12x4xi1>
      scf.execute_region {
        %269 = vector.load %97[%c0, %c1] : memref<7x12xi1>, vector<12x4xi1>
        %alloc_51 = memref.alloc() : memref<4x4x16xi64>
        memref.tensor_store %168, %alloc_51 : memref<4x4x16xi64>
        %270 = math.atan %1 : tensor<7x12xf16>
        %271 = arith.remf %extracted, %cst_20 : f16
        %272 = math.log10 %76 : tensor<4x4x16xf16>
        %273 = vector.extract_strided_slice %269 {offsets = [8], sizes = [1], strides = [1]} : vector<12x4xi1> to vector<1x4xi1>
        %274 = arith.divui %c0_i32, %c0_i32 : i32
        %275 = arith.remf %cst, %cst : f32
        %276 = math.roundeven %extracted_39 : f32
        %277 = math.roundeven %extracted : f16
        %278 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - d0) ceildiv 128 + 60)>(%c8, %242, %24)
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %279 = vector.transfer_read %13[%c5], %cst_53 : tensor<4xf16>, vector<f16>
        %280 = arith.maxf %42, %154 : f16
        %inserted_54 = tensor.insert %154 into %76[%c0, %c3, %c13] : tensor<4x4x16xf16>
        %281 = math.log2 %1 : tensor<7x12xf16>
        %cst_55 = arith.constant 1.000000e+00 : f32
        %282 = vector.transfer_read %258[%181, %105, %144], %cst_55 : memref<4x4x16xf32>, vector<12x4xf32>
        scf.yield
      }
      %267 = math.absf %3 : tensor<4xf32>
      %cast_50 = tensor.cast %13 : tensor<4xf16> to tensor<?xf16>
      %268 = arith.addf %cst_20, %cst_20 : f16
      scf.yield %240 : index
    }
    case 3 {
      %258 = vector.reduction <add>, %132 : vector<144xf32> into f32
      affine.store %extracted_39, %alloc[%c7, %c14, %c3] : memref<4x4x16xf32>
      %259 = math.atan %15 : tensor<4xf16>
      %260 = vector.load %alloc_18[%c2] : memref<4xf16>, vector<4x4x16xf16>
      %261 = math.cos %cst_22 : f16
      %262 = math.atan2 %135, %1 : tensor<7x12xf16>
      %false_48 = arith.constant false
      %263 = vector.transfer_read %97[%106, %c11], %false_48 : memref<7x12xi1>, vector<4xi1>
      %264 = affine.load %alloc_9[%c1, %c0] : memref<7x12xi1>
      %265 = scf.execute_region -> tensor<12x4xi1> {
        %271 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %272 = vector.outerproduct %114, %113, %271 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %273 = affine.load %62[] : memref<f16>
        %274 = math.round %154 : f16
        %275 = math.atan %3 : tensor<4xf32>
        %276 = vector.insert %extracted_39, %132 [104] : f32 into vector<144xf32>
        %277 = vector.load %alloc_9[%c5, %c11] : memref<7x12xi1>, vector<7x12xi1>
        %278 = index.casts %c580843849_i64 : i64 to index
        %collapsed_50 = tensor.collapse_shape %18 [[0, 1]] : tensor<12x7xi1> into tensor<84xi1>
        %extracted_51 = tensor.extract %11[%c4, %c0] : tensor<7x12xf16>
        %extracted_52 = tensor.extract %236[%c2] : tensor<4xf16>
        %279 = arith.cmpf olt, %extracted_51, %cst_36 : f16
        %280 = arith.minf %cst_36, %154 : f16
        %281 = arith.ceildivsi %c1068090315_i32, %c1068090315_i32 : i32
        %282 = math.log2 %extracted_39 : f32
        %283 = bufferization.to_tensor %alloc_9 : memref<7x12xi1>
        %284 = affine.apply affine_map<(d0, d1) -> ((-d1) floordiv 16)>(%c14, %rank)
        scf.yield %17 : tensor<12x4xi1>
      }
      %266 = arith.divui %true_28, %false_0 : i1
      %267 = vector.shuffle %173, %82 [0, 1, 4, 6, 11, 12, 13, 17, 19, 22, 23, 25, 26, 27, 29, 30, 31, 33, 34, 35, 36, 39, 40, 42, 44, 45, 47, 49, 51, 53, 54, 55, 60, 62, 63, 64, 66, 68, 70, 72, 73, 75, 80, 82, 84, 85, 86, 87, 92, 99, 101, 106, 107, 108, 110, 111, 112, 114, 115, 122, 123, 125, 128, 130, 131, 133, 137, 138, 139, 140, 142, 145, 146, 147] : vector<144xf32>, vector<9xf32>
      %true_49 = index.bool.constant true
      %268 = arith.mulf %extracted_39, %cst : f32
      %dest, %accumulated_value = vector.scan <minui>, %47, %53 {inclusive = false, reduction_dim = 0 : i64} : vector<12x4xi1>, vector<4xi1>
      %269 = tensor.empty() : tensor<12x4xi64>
      %270 = math.expm1 %4 : tensor<7x12xf16>
      scf.yield %39 : index
    }
    default {
      %258 = arith.divf %extracted_39, %cst : f32
      %259 = vector.insert %180, %143 [1] : vector<4x16xi32> into vector<4x4x16xi32>
      %260 = arith.subi %true_1, %false_32 : i1
      %261 = scf.if %false_32 -> (memref<12x4xf16>) {
        %272 = arith.maxf %154, %extracted : f16
        %273 = vector.shuffle %53, %112 [1] : vector<4xi1>, vector<1xi1>
        %cast_51 = tensor.cast %9 : tensor<4xi64> to tensor<?xi64>
        %from_elements_52 = tensor.from_elements %extracted_39, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %cst, %extracted_39, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %cst, %extracted_39, %cst, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %extracted_39, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %cst, %cst, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %cst, %cst, %cst, %extracted_39, %extracted_39, %cst, %cst : tensor<7x12xf32>
        %c2002938728_i64 = arith.constant 2002938728 : i64
        %274 = index.casts %c-30650_i16 : i16 to index
        %rank_53 = tensor.rank %120 : tensor<7x12xi32>
        %275 = index.divs %144, %105
        scf.yield %alloc_11 : memref<12x4xf16>
      } else {
        %272 = math.exp %cst : f32
        %273 = math.floor %collapsed : tensor<16x16xf16>
        %274 = vector.insert %extracted_39, %82 [4] : f32 into vector<9xf32>
        memref.tensor_store %1, %alloc_8 : memref<7x12xf16>
        %275 = vector.matrix_multiply %53, %112 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
        %276 = math.tanh %3 : tensor<4xf32>
        %277 = index.maxs %181, %40
        %278 = vector.transpose %53, [0] : vector<4xi1> to vector<4xi1>
        scf.yield %alloc_11 : memref<12x4xf16>
      }
      %expanded = tensor.expand_shape %236 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
      %262 = tensor.empty(%c11, %c3) : tensor<?x?xi32>
      %expanded_48 = tensor.expand_shape %9 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
      %263 = vector.broadcast %c0_i32 : i32 to vector<16xi32>
      %264 = vector.insert %263, %143 [3, 1] : vector<16xi32> into vector<4x4x16xi32>
      %265 = arith.addi %c1068090315_i32, %c0_i32 : i32
      %extracted_49 = tensor.extract %6[%c2, %c2, %c4] : tensor<4x4x16xi16>
      %266 = affine.load %34[%c2, %c1] : memref<7x12xi32>
      %cst_50 = arith.constant 1.000000e+00 : f32
      %267 = vector.transfer_read %alloc[%107, %40, %c12], %cst_50 : memref<4x4x16xf32>, vector<7xf32>
      %268 = arith.minf %154, %cst_22 : f16
      %269 = arith.maxui %c0_i32, %c1068090315_i32 : i32
      %270 = arith.divf %cst_36, %cst_20 : f16
      %271 = math.exp %5 : tensor<7x12xf16>
      scf.yield %70 : index
    }
    %249 = arith.floordivsi %true_28, %false_26 : i1
    %250 = affine.apply affine_map<(d0, d1) -> (-d1)>(%110, %52)
    %251 = math.cos %cst : f32
    %252 = arith.ori %c580843849_i64, %c580843849_i64 : i64
    %253 = tensor.empty() : tensor<7x12xi1>
    %mapped_46 = linalg.map ins(%97, %alloc_9, %97 : memref<7x12xi1>, memref<7x12xi1>, memref<7x12xi1>) outs(%253 : tensor<7x12xi1>)
      (%in: i1, %in_48: i1, %in_49: i1) {
        %258 = arith.remsi %false_26, %true_1 : i1
        %c995607697_i64 = arith.constant 995607697 : i64
        %259 = arith.minui %true_28, %false_27 : i1
        affine.store %cst, %alloc_7[%c6, %c0, %c10] : memref<4x4x16xf32>
        %260 = vector.broadcast %154 : f16 to vector<4xf16>
        %261 = vector.maskedload %alloc_5[%c3, %c3, %c10], %53, %260 : memref<4x4x16xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %262 = arith.negf %cst_22 : f16
        %263 = index.divs %126, %c0
        %264 = vector.extract %143[3, 2] : vector<4x4x16xi32>
        %265 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %collapsed_50 = tensor.collapse_shape %76 [[0, 1], [2]] : tensor<4x4x16xf16> into tensor<16x16xf16>
        %266 = vector.insert %cst, %114 [2] : f32 into vector<4xf32>
        %267 = math.ctpop %12 : tensor<12x4xi32>
        %268 = math.ctpop %8 : tensor<4x4x16xi16>
        scf.if %false_32 {
          %287 = vector.transpose %261, [0] : vector<4xf16> to vector<4xf16>
          %288 = index.ceildivs %c5, %240
          %289 = index.maxs %c6, %181
          %290 = vector.matrix_multiply %82, %117 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
          %291 = math.atan2 %11, %4 : tensor<7x12xf16>
          %292 = affine.load %alloc_14[%c14, %c14] : memref<12x4xi32>
          %293 = math.rsqrt %13 : tensor<4xf16>
          %294 = vector.broadcast %c-30650_i16 : i16 to vector<4xi16>
          %295 = vector.maskedload %alloc_12[%c0, %c3], %53, %294 : memref<12x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        } else {
          %alloc_53 = memref.alloc() : memref<4x4x16xi64>
          %287 = vector.broadcast %c2111428848_i64 : i64 to vector<7x12xi64>
          %288 = vector.broadcast %in : i1 to vector<7x12xi1>
          %289 = vector.broadcast %c0_i32 : i32 to vector<7x12xi32>
          %290 = vector.gather %alloc_53[%182, %c13, %250] [%289], %288, %287 : memref<4x4x16xi64>, vector<7x12xi32>, vector<7x12xi1>, vector<7x12xi64> into vector<7x12xi64>
          %291 = arith.subi %c2111428848_i64, %c2111428848_i64 : i64
          %292 = arith.ori %false_32, %false : i1
          %293 = vector.maskedload %alloc_8[%c6, %c11], %53, %260 : memref<7x12xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
          %inserted_54 = tensor.insert %42 into %21[] : tensor<f16>
          %294 = arith.addf %154, %cst_22 : f16
          %rank_55 = tensor.rank %0 : tensor<4x4x16xf16>
          %295 = bufferization.clone %alloc_9 : memref<7x12xi1> to memref<7x12xi1>
        }
        %269 = index.maxu %107, %156
        %270 = math.log10 %76 : tensor<4x4x16xf16>
        %271 = math.exp2 %135 : tensor<7x12xf16>
        %272 = index.divu %rank_41, %156
        %273 = vector.matrix_multiply %117, %173 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<9xf32>, vector<144xf32>) -> vector<16xf32>
        %274 = vector.reduction <or>, %264 : vector<16xi32> into i32
        %275 = bufferization.clone %alloc_18 : memref<4xf16> to memref<4xf16>
        %276 = math.fpowi %from_elements_34, %45 : tensor<4xf16>, tensor<4xi32>
        %277 = arith.negf %cst_36 : f16
        %278 = arith.remsi %c2110867356_i64, %c2111428848_i64 : i64
        %279 = arith.minf %cst_20, %cst_36 : f16
        vector.print %132 : vector<144xf32>
        %280 = vector.create_mask %107, %c5 : vector<7x12xi1>
        %281 = vector.transpose %47, [0, 1] : vector<12x4xi1> to vector<12x4xi1>
        %282 = index.divu %c11, %c10
        %283 = vector.broadcast %cst : f32 to vector<9x9xf32>
        %284 = vector.outerproduct %117, %117, %283 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
        %285 = vector.broadcast %109 : i32 to vector<4x16x4x16xi32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %143, %143, %285 : vector<4x4x16xi32>, vector<4x4x16xi32> into vector<4x16x4x16xi32>
        %cast_51 = tensor.cast %22 : tensor<f16> to tensor<f16>
        %false_52 = arith.constant false
        linalg.yield %false_52 : i1
      }
    %254 = tensor.empty() : tensor<4xf32>
    %255 = linalg.copy ins(%3 : tensor<4xf32>) outs(%254 : tensor<4xf32>) -> tensor<4xf32>
    %alloc_47 = memref.alloc() : memref<16x4x4xf16>
    linalg.transpose ins(%alloc_5 : memref<4x4x16xf16>) outs(%alloc_47 : memref<16x4x4xf16>) permutation = [2, 0, 1] 
    %256 = tensor.empty() : tensor<12xi1>
    %reduced = linalg.reduce ins(%17 : tensor<12x4xi1>) outs(%256 : tensor<12xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %258 = arith.addi %false_26, %true_1 : i1
        %259 = math.roundeven %255 : tensor<4xf32>
        %260 = index.divs %c1, %39
        %261 = vector.insert %extracted_39, %20 [2] : f32 into vector<16xf32>
        %262 = vector.broadcast %cst : f32 to vector<f32>
        vector.transfer_write %262, %alloc_7[%c6, %c2, %164] : vector<f32>, memref<4x4x16xf32>
        %263 = vector.broadcast %c-30650_i16 : i16 to vector<7xi16>
        %264 = vector.transfer_write %263, %8[%c13, %rank_31, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi16>, tensor<4x4x16xi16>
        %265 = math.rsqrt %from_elements_34 : tensor<4xf16>
        %true_48 = index.bool.constant true
        %true_49 = arith.constant true
        linalg.yield %true_49 : i1
      }
    scf.parallel (%arg3) = (%70) to (%105) step (%c7) {
      %258 = scf.index_switch %171 -> index 
      case 1 {
        %cast_50 = tensor.cast %11 : tensor<7x12xf16> to tensor<?x?xf16>
        %273 = vector.broadcast %false_27 : i1 to vector<4xi1>
        %from_elements_51 = tensor.from_elements %cst, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %cst, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %cst, %cst, %extracted_39, %cst, %cst, %cst, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %cst, %extracted_39, %cst, %cst, %cst, %cst, %cst, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %extracted_39, %extracted_39, %cst, %extracted_39, %extracted_39, %extracted_39, %extracted_39, %cst, %cst, %extracted_39, %extracted_39, %extracted_39, %cst, %extracted_39, %cst : tensor<7x12xf32>
        %274 = arith.muli %false_0, %166 : i1
        %275 = math.absi %14 : tensor<4x4x16xi1>
        %276 = affine.load %alloc_8[%c11, %c8] : memref<7x12xf16>
        %277 = math.exp2 %236 : tensor<4xf16>
        memref.assume_alignment %alloc_11, 16 : memref<12x4xf16>
        %cst_52 = arith.constant 1.000000e+00 : f32
        %278 = vector.transfer_read %3[%c7], %cst_52 : tensor<4xf32>, vector<f32>
        %279 = math.ctlz %9 : tensor<4xi64>
        %280 = arith.minui %c2111428848_i64, %c1554343177_i64 : i64
        %281 = arith.shrsi %c-30650_i16, %c-9611_i16 : i16
        %inserted_53 = tensor.insert %c1068090315_i32 into %45[%c1] : tensor<4xi32>
        %282 = index.sub %32, %182
        %283 = bufferization.clone %62 : memref<f16> to memref<f16>
        %284 = arith.xori %109, %c0_i32 : i32
        scf.yield %95 : index
      }
      case 2 {
        %273 = tensor.empty() : tensor<4xi32>
        %274 = vector.broadcast %c1711636616_i64 : i64 to vector<4x16xi64>
        %dest, %accumulated_value = vector.scan <xor>, %122, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4x16xi64>, vector<4x16xi64>
        %275 = arith.divui %c1317615588_i32, %109 : i32
        %276 = arith.addi %c-9611_i16, %c-30650_i16 : i16
        %277 = math.rsqrt %cst_36 : f16
        %278 = index.add %c3, %rank
        %279 = math.fma %5, %11, %4 : tensor<7x12xf16>
        %280 = index.maxs %219, %242
        %281 = math.ctlz %false_26 : i1
        memref.assume_alignment %alloc_15, 1 : memref<4x4x16xf16>
        %282 = arith.remsi %c-974_i16, %c-30650_i16 : i16
        %283 = vector.transpose %50, [0, 1] : vector<12x4xi1> to vector<12x4xi1>
        %284 = vector.create_mask %rank, %127 : vector<7x12xi1>
        %extracted_50 = tensor.extract %3[%c0] : tensor<4xf32>
        %285 = arith.minui %true, %true_28 : i1
        %286 = math.fpowi %from_elements_34, %45 : tensor<4xf16>, tensor<4xi32>
        scf.yield %278 : index
      }
      case 3 {
        %273 = vector.maskedload %alloc_9[%c3, %c3], %53, %53 : memref<7x12xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %274 = math.fpowi %cst_22, %109 : f16, i32
        %275 = memref.load %62[] : memref<f16>
        %276 = arith.mulf %42, %154 : f16
        %277 = arith.divf %extracted, %cst_20 : f16
        %278 = math.atan %extracted_39 : f32
        %279 = math.ctlz %c2110867356_i64 : i64
        %280 = arith.divf %cst, %extracted_39 : f32
        %cast_50 = tensor.cast %8 : tensor<4x4x16xi16> to tensor<?x?x?xi16>
        %281 = math.rsqrt %11 : tensor<7x12xf16>
        %282 = math.atan %15 : tensor<4xf16>
        %283 = bufferization.clone %alloc_15 : memref<4x4x16xf16> to memref<4x4x16xf16>
        %inserted_51 = tensor.insert %extracted_39 into %255[%c2] : tensor<4xf32>
        memref.store %42, %62[] : memref<f16>
        %284 = math.ceil %13 : tensor<4xf16>
        %285 = index.divs %164, %c2
        scf.yield %52 : index
      }
      case 4 {
        %273 = math.fpowi %from_elements_34, %45 : tensor<4xf16>, tensor<4xi32>
        %274 = vector.transpose %47, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
        %275 = arith.ceildivsi %c0_i16, %c-974_i16 : i16
        %276 = memref.atomic_rmw maxs %c1068090315_i32, %alloc_14[%c9, %c0] : (i32, memref<12x4xi32>) -> i32
        %277 = bufferization.clone %alloc_47 : memref<16x4x4xf16> to memref<16x4x4xf16>
        %278 = index.maxu %rank_41, %c2
        %279 = vector.insert %extracted_39, %82 [4] : f32 into vector<9xf32>
        %true_50 = index.bool.constant true
        %cast_51 = tensor.cast %5 : tensor<7x12xf16> to tensor<?x?xf16>
        %cast_52 = tensor.cast %from_elements_44 : tensor<4x4x16xi16> to tensor<?x?x?xi16>
        %280 = vector.matrix_multiply %173, %114 {lhs_columns = 4 : i32, lhs_rows = 36 : i32, rhs_columns = 1 : i32} : (vector<144xf32>, vector<4xf32>) -> vector<36xf32>
        %dest, %accumulated_value = vector.scan <minsi>, %50, %53 {inclusive = false, reduction_dim = 0 : i64} : vector<12x4xi1>, vector<4xi1>
        %281 = arith.addi %109, %c0_i32 : i32
        %282 = vector.transpose %132, [0] : vector<144xf32> to vector<144xf32>
        %283 = math.absi %c2111428848_i64 : i64
        %284 = bufferization.to_memref %253 : memref<7x12xi1>
        scf.yield %39 : index
      }
      default {
        %rank_50 = tensor.rank %4 : tensor<7x12xf16>
        %273 = math.rsqrt %42 : f16
        %274 = arith.shrsi %false_32, %false_27 : i1
        %275 = vector.extract_strided_slice %132 {offsets = [101], sizes = [7], strides = [1]} : vector<144xf32> to vector<7xf32>
        %276 = math.fpowi %extracted, %c1317615588_i32 : f16, i32
        %277 = arith.addi %false, %true_40 : i1
        %278 = vector.matrix_multiply %82, %96 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<9xf32>, vector<144xf32>) -> vector<16xf32>
        %279 = arith.shrsi %c580843849_i64, %c1711636616_i64 : i64
        %280 = math.absi %transposed : tensor<12x7xi1>
        %281 = affine.apply affine_map<(d0) -> (0)>(%40)
        %282 = memref.atomic_rmw minf %cst_22, %alloc_47[%c2, %c3, %c1] : (f16, memref<16x4x4xf16>) -> f16
        %283 = index.casts %c1317615588_i32 : i32 to index
        memref.copy %alloc_7, %alloc : memref<4x4x16xf32> to memref<4x4x16xf32>
        %284 = vector.broadcast %false : i1 to vector<i1>
        %285 = vector.transfer_write %284, %10[%68, %171] : vector<i1>, tensor<12x4xi1>
        %286 = arith.minui %109, %c1068090315_i32 : i32
        %287 = vector.broadcast %166 : i1 to vector<7xi1>
        %288 = vector.maskedload %alloc_4[%c3], %287, %275 : memref<4xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        scf.yield %126 : index
      }
      %259 = arith.ceildivsi %c1068090315_i32, %c0_i32 : i32
      %false_48 = index.bool.constant false
      %extracted_49 = tensor.extract %12[%c3, %c3] : tensor<12x4xi32>
      %260 = index.maxs %144, %250
      %261 = arith.xori %false_0, %true_1 : i1
      %262 = math.round %cst_20 : f16
      %263 = math.exp %extracted_39 : f32
      %264 = vector.broadcast %extracted_39 : f32 to vector<f32>
      %265 = vector.transfer_write %264, %254[%32] : vector<f32>, tensor<4xf32>
      %266 = vector.matrix_multiply %82, %215 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<9xf32>, vector<36xf32>) -> vector<4xf32>
      %267 = tensor.empty() : tensor<12x12xi1>
      %268 = linalg.matmul ins(%transposed, %253 : tensor<12x7xi1>, tensor<7x12xi1>) outs(%267 : tensor<12x12xi1>) -> tensor<12x12xi1>
      %269 = vector.broadcast %false_48 : i1 to vector<4x4x16xi1>
      %270 = math.powf %15, %15 : tensor<4xf16>
      scf.execute_region {
        %inserted_50 = tensor.insert %c1068090315_i32 into %206[%c3, %c8] : tensor<7x12xi32>
        %273 = vector.broadcast %cst : f32 to vector<36x36xf32>
        %274 = vector.outerproduct %215, %215, %273 {kind = #vector.kind<maxf>} : vector<36xf32>, vector<36xf32>
        %275 = math.exp2 %22 : tensor<f16>
        %276 = index.divu %c5, %240
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 4, (d0 mod 4) * 8, d2, d2 + 1)>(%108, %rank_41, %c4, %24)
        %278 = vector.load %alloc_18[%c0] : memref<4xf16>, vector<12x4xf16>
        %279 = arith.remui %c1317615588_i32, %109 : i32
        %280 = math.tan %13 : tensor<4xf16>
        %281 = arith.mulf %cst, %cst : f32
        %282 = arith.muli %c0_i16, %c-9611_i16 : i16
        %283 = math.log10 %1 : tensor<7x12xf16>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %cst_52 = arith.constant 0.000000e+00 : f16
        %284 = vector.transfer_read %4[%127, %156], %cst_52 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<7x12xf16>, vector<16xf16>
        %285 = math.cos %15 : tensor<4xf16>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %53, %53, %false : vector<4xi1>, vector<4xi1> into i1
        %287 = math.rsqrt %154 : f16
        %288 = vector.splat %c8 : vector<7x12xindex>
        scf.yield
      }
      %271 = math.rsqrt %4 : tensor<7x12xf16>
      %272 = arith.addf %42, %extracted : f16
      scf.yield
    }
    %257 = affine.vector_load %alloc_4[%c1] : memref<4xf32>, vector<12xf32>
    affine.vector_store %20, %alloc_3[%170] : memref<4xf32>, vector<16xf32>
    vector.print %20 : vector<16xf32>
    vector.print %47 : vector<12x4xi1>
    vector.print %50 : vector<12x4xi1>
    vector.print %53 : vector<4xi1>
    vector.print %82 : vector<9xf32>
    vector.print %96 : vector<144xf32>
    vector.print %112 : vector<1xi1>
    vector.print %113 : vector<4xf32>
    vector.print %114 : vector<4xf32>
    vector.print %117 : vector<9xf32>
    vector.print %122 : vector<4x4x16xi64>
    vector.print %124 : vector<f32>
    vector.print %132 : vector<144xf32>
    vector.print %143 : vector<4x4x16xi32>
    vector.print %173 : vector<144xf32>
    vector.print %180 : vector<4x16xi32>
    vector.print %198 : vector<12x4xi1>
    vector.print %215 : vector<36xf32>
    vector.print %221 : vector<2x16xi32>
    vector.print %234 : vector<i32>
    vector.print %257 : vector<12xf32>
    vector.print %c-30650_i16 : i16
    vector.print %false : i1
    vector.print %c1317615588_i32 : i32
    vector.print %false_0 : i1
    vector.print %c580843849_i64 : i64
    vector.print %cst : f32
    vector.print %c1068090315_i32 : i32
    vector.print %c1554343177_i64 : i64
    vector.print %true : i1
    vector.print %c2110867356_i64 : i64
    vector.print %c-9611_i16 : i16
    vector.print %true_1 : i1
    vector.print %c19112_i16 : i16
    vector.print %c-974_i16 : i16
    vector.print %c2111428848_i64 : i64
    vector.print %c1711636616_i64 : i64
    vector.print %cst_20 : f16
    vector.print %42 : f16
    vector.print %cst_22 : f16
    vector.print %false_26 : i1
    vector.print %false_27 : i1
    vector.print %109 : i32
    vector.print %true_28 : i1
    vector.print %154 : f16
    vector.print %166 : i1
    vector.print %extracted : f16
    vector.print %false_32 : i1
    vector.print %c0_i32 : i32
    vector.print %c0_i16 : i16
    vector.print %cst_36 : f16
    vector.print %extracted_39 : f32
    vector.print %true_40 : i1
    return
  }
}
