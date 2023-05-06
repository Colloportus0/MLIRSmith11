module {
  func.func @func1(%arg0: tensor<1xi32>) -> i16 {
    %cst = arith.constant 5.896000e+03 : f16
    %c25062_i16 = arith.constant 25062 : i16
    %c785098543_i32 = arith.constant 785098543 : i32
    %c892068793_i64 = arith.constant 892068793 : i64
    %c2082943483_i32 = arith.constant 2082943483 : i32
    %c231478515_i64 = arith.constant 231478515 : i64
    %c9277_i16 = arith.constant 9277 : i16
    %c171937649_i64 = arith.constant 171937649 : i64
    %c1479748263_i32 = arith.constant 1479748263 : i32
    %false = arith.constant false
    %cst_0 = arith.constant 5.948800e+04 : f16
    %c-30268_i16 = arith.constant -30268 : i16
    %c1871096728_i64 = arith.constant 1871096728 : i64
    %true = arith.constant true
    %c19404_i16 = arith.constant 19404 : i16
    %c21158_i16 = arith.constant 21158 : i16
    %0 = tensor.empty() : tensor<7x12xf16>
    %1 = tensor.empty() : tensor<7x13xf16>
    %2 = tensor.empty() : tensor<7x12xi32>
    %3 = tensor.empty() : tensor<7x13xi64>
    %4 = tensor.empty() : tensor<1x1xi16>
    %5 = tensor.empty() : tensor<1x1xf16>
    %6 = tensor.empty() : tensor<1x1xi64>
    %7 = tensor.empty() : tensor<7x12xf32>
    %8 = tensor.empty() : tensor<1xi64>
    %9 = tensor.empty() : tensor<7x12xf16>
    %10 = tensor.empty() : tensor<7x12xf32>
    %11 = tensor.empty() : tensor<1xi32>
    %12 = tensor.empty() : tensor<1x1xf16>
    %13 = tensor.empty() : tensor<7x13xi32>
    %14 = tensor.empty() : tensor<7x12xi1>
    %15 = tensor.empty() : tensor<1x1xi1>
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
    %alloc = memref.alloc() : memref<1x1xi1>
    %alloc_1 = memref.alloc() : memref<1xi32>
    %alloc_2 = memref.alloc() : memref<1xf32>
    %alloc_3 = memref.alloc() : memref<1x1xi16>
    %alloc_4 = memref.alloc() : memref<7x13xi32>
    %alloc_5 = memref.alloc() : memref<1xi32>
    %alloc_6 = memref.alloc() : memref<1xi1>
    %alloc_7 = memref.alloc() : memref<1xf16>
    %alloc_8 = memref.alloc() : memref<7x12xi32>
    %alloc_9 = memref.alloc() : memref<7x12xi32>
    %alloc_10 = memref.alloc() : memref<1xi1>
    %alloc_11 = memref.alloc() : memref<1x1xi1>
    %alloc_12 = memref.alloc() : memref<7x12xi32>
    %alloc_13 = memref.alloc() : memref<7x12xi1>
    %alloc_14 = memref.alloc() : memref<7x13xf16>
    %alloc_15 = memref.alloc() : memref<7x12xf16>
    %16 = tensor.empty() : tensor<1xi32>
    %17 = linalg.copy ins(%11 : tensor<1xi32>) outs(%16 : tensor<1xi32>) -> tensor<1xi32>
    %18 = tensor.empty() : tensor<12x7xf16>
    %transposed = linalg.transpose ins(%alloc_15 : memref<7x12xf16>) outs(%18 : tensor<12x7xf16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<7xf16>
    %reduced = linalg.reduce ins(%transposed : tensor<12x7xf16>) outs(%19 : tensor<7xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %264 = math.absi %c231478515_i64 : i64
        %265 = vector.broadcast %c2082943483_i32 : i32 to vector<1xi32>
        %266 = vector.bitcast %265 : vector<1xi32> to vector<1xi32>
        %267 = memref.alloca_scope  -> (i1) {
          %274 = arith.maxui %c-30268_i16, %c19404_i16 : i16
          %275 = arith.floordivsi %false, %true : i1
          %276 = vector.load %alloc_4[%c6, %c6] : memref<7x13xi32>, vector<7x12xi32>
          %277 = math.log1p %cst : f16
          %collapsed_52 = tensor.collapse_shape %3 [[0, 1]] : tensor<7x13xi64> into tensor<91xi64>
          %278 = index.mul %c4, %c1
          %279 = math.roundeven %0 : tensor<7x12xf16>
          %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 4, d2 - 4, d0)>(%c6, %c9, %c8, %c10)
          %281 = arith.cmpf uge, %init, %in : f16
          %282 = arith.minsi %c21158_i16, %c21158_i16 : i16
          %283 = arith.floordivsi %c892068793_i64, %c892068793_i64 : i64
          %284 = vector.matrix_multiply %266, %265 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          memref.assume_alignment %alloc_3, 16 : memref<1x1xi16>
          %285 = arith.negf %cst_0 : f16
          %286 = arith.remf %in, %init : f16
          %287 = vector.transpose %266, [0] : vector<1xi32> to vector<1xi32>
          %288 = index.add %c10, %c3
          %cst_53 = arith.constant 1.71876314E+9 : f32
          %289 = vector.reduction <and>, %265 : vector<1xi32> into i32
          %cst_54 = arith.constant 1.000000e+00 : f32
          %290 = memref.atomic_rmw maxf %cst_54, %alloc_2[%c0] : (f32, memref<1xf32>) -> f32
          %291 = math.cttz %17 : tensor<1xi32>
          %292 = arith.remsi %c785098543_i32, %c785098543_i32 : i32
          %293 = math.ipowi %6, %6 : tensor<1x1xi64>
          %expanded_55 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<1x1xi1> into tensor<1x1x1xi1>
          %294 = math.round %12 : tensor<1x1xf16>
          %295 = vector.transpose %284, [0] : vector<1xi32> to vector<1xi32>
          %296 = vector.matrix_multiply %265, %265 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %297 = arith.remf %in, %cst_0 : f16
          %298 = arith.addf %in, %in : f16
          %299 = tensor.empty() : tensor<7x13xf16>
          %300 = arith.divui %c231478515_i64, %c171937649_i64 : i64
          %301 = math.ctpop %14 : tensor<7x12xi1>
          memref.alloca_scope.return %false : i1
        }
        %268 = arith.shrsi %false, %false : i1
        %269 = arith.minsi %c-30268_i16, %c25062_i16 : i16
        %270 = vector.broadcast %in : f16 to vector<f16>
        %271 = vector.transfer_write %270, %19[%c3] : vector<f16>, tensor<7xf16>
        %272 = bufferization.to_tensor %alloc_13 : memref<7x12xi1>
        %273 = math.absf %init : f16
        %cst_51 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_51 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c15, %c3) to (%c0, %c6) step (%c11, %c12) {
      %cast_51 = tensor.cast %transposed : tensor<12x7xf16> to tensor<?x?xf16>
      %264 = math.sqrt %18 : tensor<12x7xf16>
      %265 = arith.shli %c25062_i16, %c21158_i16 : i16
      %266 = index.castu %c15 : index to i32
      %267 = arith.addf %cst, %cst : f16
      %268 = vector.broadcast %c1479748263_i32 : i32 to vector<1xi32>
      %269 = vector.insertelement %c2082943483_i32, %268[%c4 : index] : vector<1xi32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %268, %268, %c1479748263_i32 : vector<1xi32>, vector<1xi32> into i32
      %271 = math.ctpop %8 : tensor<1xi64>
      affine.for %arg3 = 0 to 120 {
      }
      %272 = math.rsqrt %5 : tensor<1x1xf16>
      %273 = math.roundeven %9 : tensor<7x12xf16>
      %274 = arith.shrsi %c231478515_i64, %c1871096728_i64 : i64
      %275 = math.atan %10 : tensor<7x12xf32>
      %expanded_52 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<7x12xf16> into tensor<7x12x1xf16>
      %276 = math.round %0 : tensor<7x12xf16>
      %277 = index.casts %c785098543_i32 : i32 to index
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c9, %c12] : memref<1x1xi1>, vector<12xi1>
    affine.vector_store %20, %alloc_13[%c3, %c11] : memref<7x12xi1>, vector<12xi1>
    %21 = tensor.empty() : tensor<1xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%17, %21 : tensor<1xi32>, tensor<1xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = vector.insertelement %false, %20[%c13 : index] : vector<12xi1>
    %25 = math.log %1 : tensor<7x13xf16>
    %26 = arith.divsi %c9277_i16, %c9277_i16 : i16
    %27 = math.atan %5 : tensor<1x1xf16>
    %28 = vector.bitcast %20 : vector<12xi1> to vector<12xi1>
    %29 = arith.minui %c21158_i16, %c-30268_i16 : i16
    %cst_16 = arith.constant 1.000000e+00 : f32
    %30 = vector.broadcast %cst_16 : f32 to vector<13x7xf32>
    %31 = vector.broadcast %cst_16 : f32 to vector<13xf32>
    %dest, %accumulated_value = vector.scan <add>, %30, %31 {inclusive = true, reduction_dim = 1 : i64} : vector<13x7xf32>, vector<13xf32>
    %32 = arith.addf %cst, %cst_0 : f16
    %33 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %28, %28, %false : vector<12xi1>, vector<12xi1> into i1
    %34 = arith.divui %c21158_i16, %c21158_i16 : i16
    %35 = math.ctlz %true : i1
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %36 = vector.transfer_read %alloc_1[%c7], %c0_i32 : memref<1xi32>, vector<i32>
    %37 = index.floordivs %c11, %c1
    %38 = arith.shrsi %c2082943483_i32, %c2082943483_i32 : i32
    %39 = index.sizeof
    %40 = arith.remf %cst_0, %cst_0 : f16
    %41 = math.floor %1 : tensor<7x13xf16>
    %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
    %true_17 = index.bool.constant true
    %42 = arith.xori %c231478515_i64, %c231478515_i64 : i64
    %43 = arith.remui %c25062_i16, %c21158_i16 : i16
    %44 = math.floor %expanded : tensor<1x1x1xf16>
    %45 = index.ceildivu %c9, %c6
    %46 = memref.atomic_rmw maxs %c785098543_i32, %alloc_12[%c4, %c5] : (i32, memref<7x12xi32>) -> i32
    %47 = math.roundeven %1 : tensor<7x13xf16>
    %generated = tensor.generate %c2 {
    ^bb0(%arg1: index):
      %264 = math.log10 %5 : tensor<1x1xf16>
      %265 = arith.minf %cst, %cst : f16
      %266 = math.roundeven %10 : tensor<7x12xf32>
      %c909963862_i32 = arith.constant 909963862 : i32
      tensor.yield %c19404_i16 : i16
    } : tensor<?xi16>
    %48 = math.log1p %5 : tensor<1x1xf16>
    %49 = math.absf %9 : tensor<7x12xf16>
    %50 = vector.reduction <maxui>, %20 : vector<12xi1> into i1
    %51 = arith.remui %true_17, %true_17 : i1
    %52 = math.ctpop %14 : tensor<7x12xi1>
    %53 = tensor.empty() : tensor<12x7xf32>
    %54 = tensor.empty() : tensor<7x7xf32>
    %55 = linalg.matmul ins(%10, %53 : tensor<7x12xf32>, tensor<12x7xf32>) outs(%54 : tensor<7x7xf32>) -> tensor<7x7xf32>
    %expanded_18 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<1x1xi64> into tensor<1x1x1xi64>
    %56 = memref.load %alloc_6[%c0] : memref<1xi1>
    %57 = affine.if affine_set<(d0, d1) : (d0 >= 0)>(%c6, %c2) -> memref<1xi1> {
      %264 = arith.divsi %c171937649_i64, %c1871096728_i64 : i64
      memref.assume_alignment %alloc_15, 2 : memref<7x12xf16>
      %265 = arith.mulf %cst_0, %cst : f16
      %alloc_51 = memref.alloc() : memref<1x1xi64>
      %266 = math.expm1 %reduced : tensor<7xf16>
      %rank = tensor.rank %19 : tensor<7xf16>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %false : vector<12xi1>, vector<12xi1> into i1
      %268 = affine.max affine_map<(d0, d1) -> ((d1 + 4) * 2 + 1, (d1 + 4) * 2 - d0)>(%c0, %c13)
      affine.yield %alloc_10 : memref<1xi1>
    } else {
      %264 = math.copysign %reduced, %reduced : tensor<7xf16>
      %265 = tensor.empty() : tensor<7x13xi32>
      %mapped_51 = linalg.map ins(%13, %alloc_4, %13 : tensor<7x13xi32>, memref<7x13xi32>, tensor<7x13xi32>) outs(%265 : tensor<7x13xi32>)
        (%in: i32, %in_52: i32, %in_53: i32) {
          %cst_54 = arith.constant 1.000000e+00 : f32
          %272 = memref.atomic_rmw assign %cst_54, %alloc_2[%c0] : (f32, memref<1xf32>) -> f32
          %273 = arith.negf %cst : f16
          %274 = arith.floordivsi %c1_i32, %in_53 : i32
          %275 = arith.divui %c1871096728_i64, %c171937649_i64 : i64
          %276 = arith.mulf %cst, %cst : f16
          %true_55 = index.bool.constant true
          %277 = index.casts %c1871096728_i64 : i64 to index
          %278 = vector.matrix_multiply %20, %28 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %279 = arith.shrsi %true_55, %true_17 : i1
          %280 = vector.transpose %278, [0] : vector<1xi1> to vector<1xi1>
          %281 = vector.multi_reduction <or>, %278, %true_17 [0] : vector<1xi1> to i1
          %282 = arith.mulf %cst_0, %cst : f16
          %false_56 = arith.constant false
          %283 = vector.transfer_read %14[%c6, %45], %false_56 : tensor<7x12xi1>, vector<i1>
          %284 = arith.divui %281, %false : i1
          %extracted_57 = tensor.extract %17[%c0] : tensor<1xi32>
          %285 = math.ctpop %4 : tensor<1x1xi16>
          %cast_58 = tensor.cast %19 : tensor<7xf16> to tensor<?xf16>
          %286 = tensor.empty() : tensor<1x1xi1>
          %287 = linalg.matmul ins(%15, %15 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%286 : tensor<1x1xi1>) -> tensor<1x1xi1>
          %288 = math.atan %0 : tensor<7x12xf16>
          %289 = index.castu %c231478515_i64 : i64 to index
          %290 = arith.divui %true, %true_55 : i1
          %291 = index.sub %c6, %c10
          %292 = math.ctlz %false : i1
          %293 = memref.atomic_rmw assign %cst_0, %alloc_15[%c0, %c5] : (f16, memref<7x12xf16>) -> f16
          %294 = index.casts %c-30268_i16 : i16 to index
          %295 = arith.remui %true_17, %true : i1
          %false_59 = index.bool.constant false
          %296 = vector.broadcast %c1871096728_i64 : i64 to vector<7x12xi64>
          %297 = vector.broadcast %false : i1 to vector<7x12xi1>
          %298 = vector.broadcast %c785098543_i32 : i32 to vector<7x12xi32>
          %299 = vector.gather %6[%39, %289] [%298], %297, %296 : tensor<1x1xi64>, vector<7x12xi32>, vector<7x12xi1>, vector<7x12xi64> into vector<7x12xi64>
          %300 = arith.negf %cst_0 : f16
          %301 = bufferization.to_tensor %alloc_5 : memref<1xi32>
          %302 = arith.mulf %cst_0, %cst_0 : f16
          %303 = arith.mulf %cst_0, %cst : f16
          %c0_i32_60 = arith.constant 0 : i32
          linalg.yield %c0_i32_60 : i32
        }
      %266 = math.fma %transposed, %18, %transposed : tensor<12x7xf16>
      %267 = arith.addf %cst_0, %cst_0 : f16
      %268 = math.log2 %7 : tensor<7x12xf32>
      %269 = scf.while (%arg1 = %alloc) : (memref<1x1xi1>) -> memref<1x1xi1> {
        %272 = memref.atomic_rmw assign %c1479748263_i32, %alloc_8[%c3, %c0] : (i32, memref<7x12xi32>) -> i32
        %273 = math.ctlz %c-30268_i16 : i16
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %true : vector<12xi1>, vector<12xi1> into i1
        %275 = arith.addf %cst, %cst_0 : f16
        %276 = bufferization.clone %alloc_13 : memref<7x12xi1> to memref<7x12xi1>
        %277 = index.divs %c9, %c15
        %278 = index.add %c3, %c9
        %279 = math.cttz %16 : tensor<1xi32>
        scf.condition(%true) %alloc_11 : memref<1x1xi1>
      } do {
      ^bb0(%arg1: memref<1x1xi1>):
        %c0_i32_52 = arith.constant 0 : i32
        %272 = vector.transfer_read %alloc_5[%c1], %c0_i32_52 : memref<1xi32>, vector<i32>
        %alloca_53 = memref.alloca() : memref<7x13xi64>
        %273 = memref.load %alloc_13[%c0, %c0] : memref<7x12xi1>
        %274 = index.floordivs %c4, %c4
        %expanded_54 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
        %275 = arith.minui %c-30268_i16, %c-30268_i16 : i16
        %expanded_55 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x13xf16> into tensor<7x13x1xf16>
        %276 = index.mul %c7, %c0
        %277 = arith.divui %c-30268_i16, %c9277_i16 : i16
        %278 = vector.broadcast %c2 : index to vector<13xindex>
        %279 = vector.broadcast %true : i1 to vector<13xi1>
        %280 = vector.broadcast %cst : f16 to vector<13xf16>
        vector.scatter %alloc_15[%c3, %c11] [%278], %279, %280 : memref<7x12xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
        %281 = math.ctlz %15 : tensor<1x1xi1>
        %282 = arith.ori %c21158_i16, %c9277_i16 : i16
        %283 = math.atan2 %0, %0 : tensor<7x12xf16>
        %rank = tensor.rank %3 : tensor<7x13xi64>
        %false_56 = arith.constant false
        %extracted_57 = tensor.extract %10[%c3, %c3] : tensor<7x12xf32>
        scf.yield %alloc : memref<1x1xi1>
      }
      %270 = arith.minui %false, %false : i1
      %271 = arith.negf %cst : f16
      affine.yield %alloc_10 : memref<1xi1>
    }
    %58 = arith.floordivsi %c19404_i16, %c25062_i16 : i16
    %59 = arith.xori %c171937649_i64, %c1871096728_i64 : i64
    %60 = math.ctlz %16 : tensor<1xi32>
    %cst_19 = arith.constant 1.000000e+00 : f32
    %inserted = tensor.insert %cst_19 into %54[%c3, %c4] : tensor<7x7xf32>
    %61 = math.log %7 : tensor<7x12xf32>
    %inserted_20 = tensor.insert %c21158_i16 into %generated[%c0] : tensor<?xi16>
    %62 = math.absf %10 : tensor<7x12xf32>
    %63 = vector.transpose %20, [0] : vector<12xi1> to vector<12xi1>
    %64 = index.sub %c6, %c14
    %65 = arith.xori %true, %true : i1
    memref.assume_alignment %alloc_15, 1 : memref<7x12xf16>
    %66 = math.copysign %9, %9 : tensor<7x12xf16>
    %67 = math.expm1 %19 : tensor<7xf16>
    %68 = math.round %12 : tensor<1x1xf16>
    %69 = arith.cmpf oeq, %cst, %cst : f16
    %70 = memref.alloca_scope  -> (i16) {
      %264 = scf.execute_region -> memref<1xi64> {
        %291 = math.copysign %0, %0 : tensor<7x12xf16>
        %292 = math.log %19 : tensor<7xf16>
        %293 = arith.floordivsi %true, %true : i1
        %294 = arith.shrsi %c9277_i16, %c9277_i16 : i16
        %295 = vector.broadcast %false : i1 to vector<7x12xi1>
        %296 = vector.broadcast %c1479748263_i32 : i32 to vector<7x12xi32>
        %297 = vector.gather %alloc_13[%c3, %c10] [%296], %295, %295 : memref<7x12xi1>, vector<7x12xi32>, vector<7x12xi1>, vector<7x12xi1> into vector<7x12xi1>
        %298 = index.divs %c1, %c5
        %299 = vector.load %alloc[%c0, %c0] : memref<1x1xi1>, vector<7x12xi1>
        %alloca_54 = memref.alloca() : memref<7x12xi64>
        %300 = vector.load %alloc_12[%c5, %c1] : memref<7x12xi32>, vector<1x1xi32>
        %301 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
        %302 = vector.fma %301, %301, %301 : vector<7x13xf32>
        %303 = vector.splat %c785098543_i32 : vector<1x1xi32>
        %304 = vector.transpose %296, [0, 1] : vector<7x12xi32> to vector<7x12xi32>
        %305 = arith.cmpi ne, %c2082943483_i32, %c1_i32 : i32
        memref.store %c1479748263_i32, %alloc_4[%c1, %c12] : memref<7x13xi32>
        %306 = vector.extract %296[6] : vector<7x12xi32>
        %307 = vector.broadcast %cst_19 : f32 to vector<7xf32>
        %dest_55, %accumulated_value_56 = vector.scan <minf>, %301, %307 {inclusive = false, reduction_dim = 1 : i64} : vector<7x13xf32>, vector<7xf32>
        %alloc_57 = memref.alloc() : memref<1xi64>
        scf.yield %alloc_57 : memref<1xi64>
      }
      %265 = math.rsqrt %10 : tensor<7x12xf32>
      %266 = memref.alloca_scope  -> (i1) {
        %291 = arith.maxf %cst_0, %cst : f16
        %292 = math.copysign %12, %12 : tensor<1x1xf16>
        %293 = arith.shrsi %c19404_i16, %c21158_i16 : i16
        %294 = arith.shrui %c2082943483_i32, %c785098543_i32 : i32
        %295 = arith.addf %cst_19, %cst_19 : f32
        %296 = arith.remf %cst_0, %cst_0 : f16
        %297 = math.floor %5 : tensor<1x1xf16>
        %298 = index.divs %37, %39
        %299 = arith.shrsi %c785098543_i32, %c1_i32 : i32
        %300 = index.floordivs %c13, %c13
        %true_54 = index.bool.constant true
        %rank = tensor.rank %8 : tensor<1xi64>
        %301 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
        %302 = vector.fma %301, %301, %301 : vector<7x13xf32>
        memref.assume_alignment %alloc, 4 : memref<1x1xi1>
        %303 = vector.broadcast %cst_19 : f32 to vector<13x13xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %302, %301, %303 : vector<7x13xf32>, vector<7x13xf32> into vector<13x13xf32>
        %305 = arith.cmpi sle, %c1_i32, %c1_i32 : i32
        %alloc_55 = memref.alloc() : memref<12x12xi1>
        %306 = tensor.empty() : tensor<7x12xi1>
        %307 = linalg.matmul ins(%14, %alloc_55 : tensor<7x12xi1>, memref<12x12xi1>) outs(%306 : tensor<7x12xi1>) -> tensor<7x12xi1>
        %308 = affine.max affine_map<(d0) -> (d0 * -2, d0 * -32)>(%c0)
        %inserted_56 = tensor.insert %c1479748263_i32 into %11[%c0] : tensor<1xi32>
        %alloc_57 = memref.alloc() : memref<7x13xf32>
        %309 = vector.flat_transpose %20 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %310 = math.ctpop %13 : tensor<7x13xi32>
        %311 = index.casts %c171937649_i64 : i64 to index
        %312 = math.round %cst_19 : f32
        %313 = bufferization.to_memref %8 : memref<1xi64>
        %314 = math.fpowi %7, %2 : tensor<7x12xf32>, tensor<7x12xi32>
        %315 = vector.broadcast %c892068793_i64 : i64 to vector<1x1xi64>
        %316 = vector.broadcast %true_17 : i1 to vector<1x1xi1>
        %317 = vector.broadcast %c785098543_i32 : i32 to vector<1x1xi32>
        %318 = vector.gather %6[%298, %c12] [%317], %316, %315 : tensor<1x1xi64>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi64> into vector<1x1xi64>
        %319 = vector.matrix_multiply %309, %20 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %320 = vector.matrix_multiply %319, %319 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %321 = index.maxs %c11, %c14
        %322 = arith.floordivsi %c1479748263_i32, %c1_i32 : i32
        %false_58 = index.bool.constant false
        memref.alloca_scope.return %false : i1
      }
      %267 = arith.maxsi %c231478515_i64, %c1871096728_i64 : i64
      %268 = math.expm1 %7 : tensor<7x12xf32>
      %269 = arith.maxf %cst_19, %cst_19 : f32
      %270 = index.maxs %c7, %c1
      %271 = memref.atomic_rmw andi %c231478515_i64, %264[%c0] : (i64, memref<1xi64>) -> i64
      %272 = math.log1p %19 : tensor<7xf16>
      %273 = vector.flat_transpose %20 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %274 = index.casts %c231478515_i64 : i64 to index
      %275 = arith.divsi %c785098543_i32, %c2082943483_i32 : i32
      %276 = arith.cmpf false, %cst_19, %cst_19 : f32
      %inserted_51 = tensor.insert %266 into %15[%c0, %c0] : tensor<1x1xi1>
      %277 = arith.addf %cst_19, %cst_19 : f32
      %278 = vector.multi_reduction <minui>, %273, %true [0] : vector<12xi1> to i1
      %alloca_52 = memref.alloca() : memref<1xi16>
      %279 = arith.andi %266, %266 : i1
      %280 = vector.bitcast %273 : vector<12xi1> to vector<12xi1>
      %281 = arith.minui %true_17, %true : i1
      %282 = vector.matrix_multiply %273, %273 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %283 = vector.multi_reduction <maxui>, %282, %true [0] : vector<1xi1> to i1
      %284 = vector.flat_transpose %273 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %c436044029_i64 = arith.constant 436044029 : i64
      %285 = vector.insertelement %278, %20[%39 : index] : vector<12xi1>
      %286 = math.round %19 : tensor<7xf16>
      %alloc_53 = memref.alloc() : memref<7x13xi32>
      %287 = vector.multi_reduction <or>, %20, %278 [0] : vector<12xi1> to i1
      %288 = index.sizeof
      %c579227238_i32 = arith.constant 579227238 : i32
      %289 = arith.subi %278, %true_17 : i1
      %290 = arith.negf %cst_0 : f16
      memref.alloca_scope.return %c-30268_i16 : i16
    }
    %71 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %28, %28, %false : vector<12xi1>, vector<12xi1> into i1
    %72 = vector.broadcast %cst : f16 to vector<1x1xf16>
    %73 = vector.broadcast %false : i1 to vector<1x1xi1>
    %74 = vector.broadcast %c1479748263_i32 : i32 to vector<1x1xi32>
    %75 = vector.gather %alloc_15[%c6, %45] [%74], %73, %72 : memref<7x12xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
    %76 = math.exp %9 : tensor<7x12xf16>
    %77 = vector.splat %c5 : vector<7x13xindex>
    %78 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<1x1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %264 = vector.broadcast %c1 : index to vector<13xindex>
      %265 = vector.broadcast %true : i1 to vector<13xi1>
      vector.scatter %alloc_13[%c0, %c10] [%264], %265, %265 : memref<7x12xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
      %266 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
      %267 = vector.fma %266, %266, %266 : vector<7x13xf32>
      %alloc_51 = memref.alloc() : memref<7x13xf16>
      %268 = arith.xori %c25062_i16, %c-30268_i16 : i16
      %269 = vector.broadcast %false : i1 to vector<1xi1>
      %dest_52, %accumulated_value_53 = vector.scan <minui>, %73, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xi1>, vector<1xi1>
      %270 = vector.insertelement %false, %28[%39 : index] : vector<12xi1>
      %271 = arith.floordivsi %c25062_i16, %c9277_i16 : i16
      %272 = affine.if affine_set<(d0, d1) : (d1 >= 0, d0 floordiv 16 == 0, d1 ceildiv 32 - 64 >= 0)>(%c14, %c10) -> memref<1xi32> {
        %296 = index.floordivs %c8, %c4
        %297 = arith.divsi %c19404_i16, %c19404_i16 : i16
        %298 = index.add %c9, %c15
        %299 = math.log2 %10 : tensor<7x12xf32>
        %300 = arith.shrsi %70, %c9277_i16 : i16
        %301 = arith.floordivsi %c-30268_i16, %c21158_i16 : i16
        %302 = vector.broadcast %64 : index to vector<12xindex>
        vector.scatter %alloc_11[%c0, %c0] [%302], %28, %28 : memref<1x1xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %303 = math.exp %7 : tensor<7x12xf32>
        affine.yield %alloc_1 : memref<1xi32>
      } else {
        %296 = arith.divsi %true_17, %true : i1
        %297 = vector.broadcast %c-30268_i16 : i16 to vector<i16>
        %298 = vector.transfer_write %297, %4[%c0, %c4] : vector<i16>, tensor<1x1xi16>
        %299 = vector.broadcast %c3 : index to vector<1xindex>
        %300 = vector.broadcast %false : i1 to vector<1xi1>
        %301 = vector.broadcast %cst_19 : f32 to vector<1xf32>
        vector.scatter %alloc_2[%c0] [%299], %300, %301 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %302 = affine.load %alloc_8[%c2, %c1] : memref<7x12xi32>
        %303 = math.rsqrt %cst_19 : f32
        %304 = arith.divf %in, %out : f16
        %c572399806_i32 = arith.constant 572399806 : i32
        %305 = math.round %0 : tensor<7x12xf16>
        affine.yield %alloc_5 : memref<1xi32>
      }
      %273 = vector.flat_transpose %20 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %274 = math.roundeven %out : f16
      %275 = vector.insertelement %true, %28[%c6 : index] : vector<12xi1>
      %276 = scf.if %true -> (i64) {
        %296 = arith.muli %c892068793_i64, %c892068793_i64 : i64
        %297 = arith.shrsi %c892068793_i64, %c231478515_i64 : i64
        %298 = arith.minui %c1_i32, %c785098543_i32 : i32
        %299 = math.roundeven %0 : tensor<7x12xf16>
        bufferization.dealloc_tensor %expanded_18 : tensor<1x1x1xi64>
        %300 = math.copysign %expanded, %expanded : tensor<1x1x1xf16>
        %301 = math.absi %8 : tensor<1xi64>
        %302 = arith.maxf %out, %out : f16
        scf.yield %c171937649_i64 : i64
      } else {
        %296 = math.atan2 %5, %5 : tensor<1x1xf16>
        %extracted_55 = tensor.extract %1[%c0, %c5] : tensor<7x13xf16>
        %297 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c2, %c5, %c8, %c4)
        %298 = arith.divf %cst_19, %cst_19 : f32
        %299 = arith.maxui %true, %true_17 : i1
        memref.assume_alignment %alloc_1, 4 : memref<1xi32>
        %300 = index.castu %37 : index to i32
        %301 = arith.shrsi %true_17, %true : i1
        scf.yield %c1871096728_i64 : i64
      }
      %277 = arith.ori %c19404_i16, %c25062_i16 : i16
      %278 = arith.remf %cst_19, %cst_19 : f32
      %279 = vector.bitcast %75 : vector<1x1xf16> to vector<1x1xf16>
      %280 = vector.broadcast %cst_19 : f32 to vector<13xf32>
      %281 = vector.insert %280, %266 [5] : vector<13xf32> into vector<7x13xf32>
      %282 = arith.xori %c1871096728_i64, %c231478515_i64 : i64
      %283 = vector.matrix_multiply %273, %273 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %284 = vector.extract_strided_slice %267 {offsets = [0], sizes = [1], strides = [1]} : vector<7x13xf32> to vector<1x13xf32>
      %285 = arith.shrsi %c-30268_i16, %c21158_i16 : i16
      %286 = index.add %64, %c7
      %expanded_54 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<1x1xi64> into tensor<1x1x1xi64>
      %287 = math.rsqrt %cst : f16
      %288 = vector.insertelement %true, %20[%c13 : index] : vector<12xi1>
      %289 = arith.shrui %c1479748263_i32, %c1_i32 : i32
      %290 = math.atan2 %7, %10 : tensor<7x12xf32>
      %291 = arith.maxui %c19404_i16, %c-30268_i16 : i16
      %292 = arith.ori %c19404_i16, %c-30268_i16 : i16
      %293 = vector.flat_transpose %280 {columns = 13 : i32, rows = 1 : i32} : vector<13xf32> -> vector<13xf32>
      bufferization.dealloc_tensor %21 : tensor<1xi32>
      %294 = math.sqrt %cst : f16
      %295 = index.mul %286, %c6
      linalg.yield %out : f16
    } -> tensor<1x1x1xf16>
    %79 = vector.multi_reduction <or>, %73, %73 [] : vector<1x1xi1> to vector<1x1xi1>
    %80 = tensor.empty() : tensor<1x1x1xi32>
    %81 = math.fpowi %expanded, %80 : tensor<1x1x1xf16>, tensor<1x1x1xi32>
    %82 = arith.subi %c892068793_i64, %c1871096728_i64 : i64
    %83 = tensor.empty() : tensor<1x1xf16>
    %84 = linalg.matmul ins(%5, %12 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%83 : tensor<1x1xf16>) -> tensor<1x1xf16>
    %c0_i16 = arith.constant 0 : i16
    %85 = vector.transfer_read %4[%c6, %c12], %c0_i16 : tensor<1x1xi16>, vector<i16>
    %86 = tensor.empty() : tensor<7xi32>
    %87 = math.fpowi %reduced, %86 : tensor<7xf16>, tensor<7xi32>
    %88 = math.rsqrt %1 : tensor<7x13xf16>
    %89 = arith.shrui %c21158_i16, %c0_i16 : i16
    %90 = vector.insertelement %false, %20[%39 : index] : vector<12xi1>
    %91 = index.sizeof
    %92 = vector.broadcast %cst_0 : f16 to vector<1xf16>
    %dest_21, %accumulated_value_22 = vector.scan <minf>, %72, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf16>, vector<1xf16>
    %c0_i32_23 = arith.constant 0 : i32
    %93 = vector.transfer_read %13[%c4, %c0], %c0_i32_23 : tensor<7x13xi32>, vector<i32>
    %true_24 = index.bool.constant true
    %94 = arith.floordivsi %c231478515_i64, %c231478515_i64 : i64
    %95 = math.expm1 %9 : tensor<7x12xf16>
    %96 = vector.insertelement %true_17, %20[%45 : index] : vector<12xi1>
    %97 = math.tan %54 : tensor<7x7xf32>
    %cast = tensor.cast %8 : tensor<1xi64> to tensor<?xi64>
    %98 = math.atan %1 : tensor<7x13xf16>
    %99 = math.copysign %18, %18 : tensor<12x7xf16>
    bufferization.dealloc_tensor %13 : tensor<7x13xi32>
    %100 = math.log %cst : f16
    %101 = index.sizeof
    %102 = math.ctpop %21 : tensor<1xi32>
    %103 = vector.create_mask %c12, %91 : vector<1x1xi1>
    %104 = memref.atomic_rmw maxu %c1_i32, %alloc_8[%c2, %c8] : (i32, memref<7x12xi32>) -> i32
    %105 = vector.extract %20[8] : vector<12xi1>
    vector.print %28 : vector<12xi1>
    %106 = memref.load %alloc_5[%c0] : memref<1xi32>
    %107 = vector.insertelement %true, %28[%c9 : index] : vector<12xi1>
    vector.print %73 : vector<1x1xi1>
    %108 = arith.divui %c171937649_i64, %c1871096728_i64 : i64
    %109 = index.maxs %c5, %c8
    %110 = vector.broadcast %c1479748263_i32 : i32 to vector<7xi32>
    %111 = vector.broadcast %true : i1 to vector<7xi1>
    %112 = vector.maskedload %alloc_5[%c0], %111, %110 : memref<1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %113 = index.divu %c9, %c10
    vector.print %111 : vector<7xi1>
    %expanded_25 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<1x1xi64> into tensor<1x1x1xi64>
    vector.print %103 : vector<1x1xi1>
    %114 = affine.for %arg1 = 0 to 32 iter_args(%arg2 = %cst_19) -> (f32) {
      affine.yield %arg2 : f32
    }
    %115 = index.mul %c13, %113
    %116 = arith.remsi %c25062_i16, %c0_i16 : i16
    %alloca = memref.alloca() : memref<7x13xi16>
    %117 = math.ctpop %c1871096728_i64 : i64
    %118 = tensor.empty() : tensor<7x12xi32>
    %119 = math.atan2 %5, %5 : tensor<1x1xf16>
    %120 = arith.divsi %c21158_i16, %c-30268_i16 : i16
    %alloc_26 = memref.alloc() : memref<1x1xf32>
    %121 = math.log1p %1 : tensor<7x13xf16>
    %122 = arith.shrsi %c1_i32, %c2082943483_i32 : i32
    %123 = vector.broadcast %cst_0 : f16 to vector<7x13xf16>
    %124 = memref.load %alloc_11[%c0, %c0] : memref<1x1xi1>
    %125 = arith.floordivsi %c21158_i16, %c19404_i16 : i16
    %126 = math.expm1 %9 : tensor<7x12xf16>
    %127 = memref.atomic_rmw minu %c1_i32, %alloc_4[%c1, %c0] : (i32, memref<7x13xi32>) -> i32
    %128 = math.atan %12 : tensor<1x1xf16>
    %cst_27 = arith.constant 1.000000e+00 : f16
    %129 = vector.transfer_read %reduced[%115], %cst_27 : tensor<7xf16>, vector<f16>
    %130 = math.roundeven %reduced : tensor<7xf16>
    %131 = arith.divsi %c785098543_i32, %c2082943483_i32 : i32
    %132 = arith.maxsi %c9277_i16, %c-30268_i16 : i16
    %133 = index.divs %c11, %c6
    %134 = arith.addf %cst_27, %cst_0 : f16
    %135 = index.casts %true_24 : i1 to index
    %136 = arith.minsi %70, %c0_i16 : i16
    %137 = tensor.empty() : tensor<13x13xi64>
    %138 = tensor.empty() : tensor<7x13xi64>
    %139 = linalg.matmul ins(%3, %137 : tensor<7x13xi64>, tensor<13x13xi64>) outs(%138 : tensor<7x13xi64>) -> tensor<7x13xi64>
    %140 = tensor.empty() : tensor<7x13xi64>
    %mapped = linalg.map ins(%3, %3, %3 : tensor<7x13xi64>, tensor<7x13xi64>, tensor<7x13xi64>) outs(%140 : tensor<7x13xi64>)
      (%in: i64, %in_51: i64, %in_52: i64) {
        %extracted_53 = tensor.extract %9[%c2, %c5] : tensor<7x12xf16>
        %264 = vector.extract %73[0] : vector<1x1xi1>
        %alloca_54 = memref.alloca() : memref<7x12xf16>
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %110, %110, %c1_i32 : vector<7xi32>, vector<7xi32> into i32
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %111, %111, %true_17 : vector<7xi1>, vector<7xi1> into i1
        vector.print %264 : vector<1xi1>
        %267 = tensor.empty() : tensor<1x1xi64>
        %268 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%267 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %269 = arith.maxui %false, %true : i1
        %270 = vector.broadcast %c19404_i16 : i16 to vector<12xi16>
        %271 = vector.maskedload %alloc_3[%c0, %c0], %20, %270 : memref<1x1xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %272 = arith.shrsi %c9277_i16, %c25062_i16 : i16
        %273 = math.atan %7 : tensor<7x12xf32>
        %274 = arith.maxui %c1_i32, %c785098543_i32 : i32
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %103, %264, %264 : vector<1x1xi1>, vector<1xi1> into vector<1xi1>
        scf.index_switch %c3 
        case 1 {
          %292 = math.round %5 : tensor<1x1xf16>
          %293 = arith.floordivsi %c231478515_i64, %in_52 : i64
          %294 = math.fma %cst_0, %cst_27, %cst : f16
          %295 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d1 - d3), d0 * 128, (d0 - d3) mod 4, (d0 - d3) mod 4)>(%c8, %c15, %37, %c9)
          %296 = arith.negf %cst_0 : f16
          %297 = vector.matrix_multiply %111, %20 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 12 : i32} : (vector<7xi1>, vector<12xi1>) -> vector<84xi1>
          %298 = arith.xori %c9277_i16, %c9277_i16 : i16
          %299 = math.floor %transposed : tensor<12x7xf16>
          %300 = tensor.empty() : tensor<1xi1>
          %301 = vector.broadcast %false : i1 to vector<7x12xi1>
          %302 = vector.broadcast %c1_i32 : i32 to vector<7x12xi32>
          %303 = vector.gather %300[%c14] [%302], %301, %301 : tensor<1xi1>, vector<7x12xi32>, vector<7x12xi1>, vector<7x12xi1> into vector<7x12xi1>
          %alloca_58 = memref.alloca() : memref<7x12xf32>
          memref.store %c1479748263_i32, %alloc_5[%c0] : memref<1xi32>
          %304 = math.fpowi %expanded, %80 : tensor<1x1x1xf16>, tensor<1x1x1xi32>
          %alloca_59 = memref.alloca() : memref<7x12xf16>
          %305 = index.floordivs %113, %c13
          %306 = arith.shrsi %c785098543_i32, %c1_i32 : i32
          %307 = arith.minf %cst_0, %extracted_53 : f16
          scf.yield
        }
        case 2 {
          %292 = arith.divsi %c9277_i16, %70 : i16
          %293 = vector.extract %123[4] : vector<7x13xf16>
          %294 = arith.cmpf true, %cst_19, %cst_19 : f32
          %295 = arith.shli %in_52, %c892068793_i64 : i64
          %296 = math.ceil %54 : tensor<7x7xf32>
          %297 = vector.load %alloc_15[%c6, %c4] : memref<7x12xf16>, vector<1xf16>
          %298 = arith.shli %c21158_i16, %c21158_i16 : i16
          %299 = vector.splat %101 : vector<1x1xindex>
          %300 = arith.remf %cst, %extracted_53 : f16
          %301 = arith.remf %extracted_53, %extracted_53 : f16
          %302 = math.log %expanded : tensor<1x1x1xf16>
          %303 = vector.load %alloc_8[%c2, %c8] : memref<7x12xi32>, vector<7x13xi32>
          %304 = memref.realloc %alloc_10 : memref<1xi1> to memref<12xi1>
          %305 = arith.addf %cst_0, %cst : f16
          %306 = vector.extract_strided_slice %297 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %307 = vector.shuffle %303, %303 [0, 1, 2, 3, 6, 8, 11, 13] : vector<7x13xi32>, vector<7x13xi32>
          scf.yield
        }
        case 3 {
          %292 = vector.insertelement %false, %264[%109 : index] : vector<1xi1>
          %293 = tensor.empty() : tensor<1x1xi32>
          %294 = math.fpowi %12, %293 : tensor<1x1xf16>, tensor<1x1xi32>
          %alloca_58 = memref.alloca() : memref<1x1xi16>
          %295 = arith.remf %extracted_53, %cst : f16
          %296 = affine.min affine_map<(d0, d1) -> ((d1 + d1 + 128 + 4) * 128, (d0 + 2) mod 32, d1 mod 64, d1 + 128)>(%64, %c7)
          %297 = arith.shrsi %c-30268_i16, %c19404_i16 : i16
          %298 = vector.broadcast %cst_19 : f32 to vector<1xf32>
          %299 = vector.fma %298, %298, %298 : vector<1xf32>
          %300 = vector.splat %115 : vector<1xindex>
          %301 = arith.shrui %c9277_i16, %c25062_i16 : i16
          %302 = arith.xori %c171937649_i64, %c171937649_i64 : i64
          %303 = arith.xori %in, %in_52 : i64
          %304 = vector.multi_reduction <maxui>, %270, %c25062_i16 [0] : vector<12xi16> to i16
          %305 = arith.divsi %304, %304 : i16
          %306 = memref.atomic_rmw andi %c2082943483_i32, %alloc_12[%c5, %c1] : (i32, memref<7x12xi32>) -> i32
          %307 = math.roundeven %12 : tensor<1x1xf16>
          %alloca_59 = memref.alloca() : memref<1x1xi64>
          scf.yield
        }
        case 4 {
          %292 = math.expm1 %7 : tensor<7x12xf32>
          %293 = arith.shrui %c-30268_i16, %c-30268_i16 : i16
          %cast_58 = tensor.cast %0 : tensor<7x12xf16> to tensor<?x?xf16>
          %294 = index.sizeof
          %295 = arith.negf %cst_19 : f32
          %296 = arith.negf %cst_0 : f16
          %splat = tensor.splat %cst_27 : tensor<1x1xf16>
          %297 = arith.minf %cst_19, %cst_19 : f32
          %298 = vector.flat_transpose %264 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          %299 = arith.ori %in_51, %c171937649_i64 : i64
          %300 = arith.minsi %c25062_i16, %c25062_i16 : i16
          %301 = vector.splat %c21158_i16 : vector<7x13xi16>
          %collapsed_59 = tensor.collapse_shape %18 [[0, 1]] : tensor<12x7xf16> into tensor<84xf16>
          %302 = index.add %115, %45
          %303 = math.roundeven %5 : tensor<1x1xf16>
          %304 = arith.ori %in, %c171937649_i64 : i64
          scf.yield
        }
        default {
          %292 = math.rsqrt %0 : tensor<7x12xf16>
          %293 = index.floordivs %c2, %c5
          %294 = math.ctlz %c25062_i16 : i16
          %295 = index.casts %c2082943483_i32 : i32 to index
          %296 = affine.max affine_map<(d0, d1) -> (d1, d1)>(%c14, %37)
          %297 = affine.min affine_map<(d0) -> (-d0)>(%c5)
          %298 = math.rsqrt %10 : tensor<7x12xf32>
          %299 = vector.insertelement %c2082943483_i32, %110[%295 : index] : vector<7xi32>
          %300 = vector.matrix_multiply %20, %28 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %301 = vector.broadcast %c1_i32 : i32 to vector<13xi32>
          vector.transfer_write %301, %alloc_4[%91, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi32>, memref<7x13xi32>
          %302 = arith.minui %c0_i32_23, %c785098543_i32 : i32
          %303 = vector.load %alloc_10[%c0] : memref<1xi1>, vector<1x1xi1>
          %304 = vector.broadcast %cst_0 : f16 to vector<13xf16>
          %305 = vector.transfer_write %304, %83[%c11, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xf16>, tensor<1x1xf16>
          %306 = arith.floordivsi %c231478515_i64, %in : i64
          %307 = vector.broadcast %c0_i32_23 : i32 to vector<12xi32>
          %308 = vector.transfer_write %307, %2[%c13, %39] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, tensor<7x12xi32>
          %309 = memref.atomic_rmw maxs %c1479748263_i32, %alloc_9[%c0, %c5] : (i32, memref<7x12xi32>) -> i32
        }
        %276 = vector.insertelement %c1_i32, %110[%c14 : index] : vector<7xi32>
        %rank = tensor.rank %9 : tensor<7x12xf16>
        %277 = index.divu %64, %c9
        %278 = math.atan2 %cst_0, %cst_27 : f16
        %279 = index.casts %135 : index to i32
        %280 = vector.broadcast %c25062_i16 : i16 to vector<1xi16>
        %281 = affine.if affine_set<(d0) : ((d0 + 8) * -128 == 0)>(%c15) -> f32 {
          %292 = vector.transpose %74, [1, 0] : vector<1x1xi32> to vector<1x1xi32>
          %293 = arith.divsi %c892068793_i64, %c892068793_i64 : i64
          %294 = vector.broadcast %cst_27 : f16 to vector<13xf16>
          %295 = vector.insert %294, %123 [0] : vector<13xf16> into vector<7x13xf16>
          %296 = index.casts %c1479748263_i32 : i32 to index
          %297 = math.ipowi %11, %11 : tensor<1xi32>
          %298 = tensor.empty() : tensor<1x1xf16>
          %299 = linalg.matmul ins(%12, %83 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%298 : tensor<1x1xf16>) -> tensor<1x1xf16>
          %300 = bufferization.clone %alloc_12 : memref<7x12xi32> to memref<7x12xi32>
          %301 = tensor.empty() : tensor<1x1xi32>
          %302 = math.fpowi %12, %301 : tensor<1x1xf16>, tensor<1x1xi32>
          affine.yield %cst_19 : f32
        } else {
          %292 = arith.divf %extracted_53, %cst_0 : f16
          %293 = index.sizeof
          %dest_58, %accumulated_value_59 = vector.scan <xor>, %103, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xi1>, vector<1xi1>
          %294 = vector.load %alloc[%c0, %c0] : memref<1x1xi1>, vector<7x12xi1>
          %295 = arith.addf %extracted_53, %extracted_53 : f16
          %296 = affine.min affine_map<(d0) -> (-(d0 ceildiv 64 - 8), (d0 ceildiv 64 - 8) * -32, -(d0 ceildiv 64 - 8) + 4, (d0 ceildiv 64 - 8) * -128)>(%c6)
          %297 = math.atan %10 : tensor<7x12xf32>
          %298 = math.rsqrt %7 : tensor<7x12xf32>
          affine.yield %cst_19 : f32
        }
        %282 = vector.matrix_multiply %20, %20 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %283 = arith.minf %extracted_53, %cst_0 : f16
        %284 = math.log1p %cst_0 : f16
        %285 = math.ctpop %c892068793_i64 : i64
        %286 = arith.ori %true_17, %true : i1
        %287 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
        %dest_55, %accumulated_value_56 = vector.scan <minui>, %74, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xi32>, vector<1xi32>
        %288 = arith.subi %true_24, %true_17 : i1
        %289 = arith.shrui %false, %false : i1
        %290 = arith.shrsi %c9277_i16, %c21158_i16 : i16
        %291 = tensor.empty() : tensor<1x1xf16>
        %mapped_57 = linalg.map ins(%12, %5 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%291 : tensor<1x1xf16>)
          (%in_58: f16, %in_59: f16) {
            %292 = vector.broadcast %c9277_i16 : i16 to vector<7xi16>
            %293 = vector.transfer_write %292, %4[%c11, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<1x1xi16>
            %294 = math.log2 %12 : tensor<1x1xf16>
            %295 = arith.divui %c892068793_i64, %c231478515_i64 : i64
            %296 = math.copysign %54, %54 : tensor<7x7xf32>
            %297 = math.copysign %extracted_53, %cst : f16
            %298 = memref.atomic_rmw ori %c785098543_i32, %alloc_9[%c6, %c4] : (i32, memref<7x12xi32>) -> i32
            %299 = tensor.empty() : tensor<1x1xi32>
            %300 = math.fpowi %12, %299 : tensor<1x1xf16>, tensor<1x1xi32>
            %301 = arith.maxui %c171937649_i64, %c892068793_i64 : i64
            %302 = arith.remf %in_59, %extracted_53 : f16
            %303 = vector.bitcast %111 : vector<7xi1> to vector<7xi1>
            %304 = index.divs %39, %c0
            %305 = arith.ori %c19404_i16, %c-30268_i16 : i16
            %306 = vector.extract %282[0] : vector<1xi1>
            %307 = arith.divui %c1_i32, %c1_i32 : i32
            %308 = arith.remui %c9277_i16, %c-30268_i16 : i16
            %309 = arith.xori %70, %c21158_i16 : i16
            %310 = index.mul %c13, %c13
            %311 = vector.broadcast %cst_19 : f32 to vector<1x1xf32>
            %312 = vector.fma %311, %311, %311 : vector<1x1xf32>
            %313 = index.sub %c15, %39
            %314 = math.tan %cst_27 : f16
            %315 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %74, %74, %74 : vector<1x1xi32>, vector<1x1xi32> into vector<1x1xi32>
            %316 = vector.broadcast %extracted_53 : f16 to vector<1xf16>
            %dest_60, %accumulated_value_61 = vector.scan <add>, %72, %316 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xf16>, vector<1xf16>
            %317 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %103, %103, %103 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
            %318 = vector.matrix_multiply %112, %110 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
            %319 = index.ceildivu %37, %c1
            %320 = affine.max affine_map<(d0, d1) -> (-d1, d0)>(%64, %115)
            %321 = memref.load %alloc_11[%c0, %c0] : memref<1x1xi1>
            %322 = math.round %transposed : tensor<12x7xf16>
            %323 = arith.floordivsi %in, %in_51 : i64
            %from_elements = tensor.from_elements %c1479748263_i32, %c785098543_i32, %c0_i32_23, %c0_i32_23, %c1_i32, %c785098543_i32, %c2082943483_i32, %c0_i32_23, %c1479748263_i32, %c785098543_i32, %c2082943483_i32, %c1479748263_i32, %c785098543_i32, %c1479748263_i32, %c785098543_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c0_i32_23, %c2082943483_i32, %c785098543_i32, %c0_i32_23, %c0_i32_23, %c1479748263_i32, %c1_i32, %c0_i32_23, %c1479748263_i32, %c785098543_i32, %c785098543_i32, %c0_i32_23, %c785098543_i32, %c785098543_i32, %c1479748263_i32, %c785098543_i32, %c0_i32_23, %c1479748263_i32, %c0_i32_23, %c785098543_i32, %c1479748263_i32, %c0_i32_23, %c0_i32_23, %c0_i32_23, %c1479748263_i32, %c2082943483_i32, %c1_i32, %c0_i32_23, %c1479748263_i32, %c0_i32_23, %c2082943483_i32, %c1479748263_i32, %c785098543_i32, %c1479748263_i32, %c0_i32_23, %c785098543_i32, %c1_i32, %c1_i32, %c0_i32_23, %c2082943483_i32, %c2082943483_i32, %c1479748263_i32, %c2082943483_i32, %c1_i32, %c0_i32_23, %c2082943483_i32, %c1_i32, %c1479748263_i32, %c785098543_i32, %c0_i32_23, %c2082943483_i32, %c2082943483_i32, %c2082943483_i32, %c0_i32_23, %c1479748263_i32, %c0_i32_23, %c2082943483_i32, %c0_i32_23, %c2082943483_i32, %c2082943483_i32, %c2082943483_i32, %c2082943483_i32, %c2082943483_i32, %c1479748263_i32, %c1479748263_i32 : tensor<7x12xi32>
            %324 = math.rsqrt %cst_27 : f16
            %325 = vector.multi_reduction <minui>, %318, %c1_i32 [0] : vector<1xi32> to i32
            %cst_62 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_62 : f16
          }
        memref.assume_alignment %alloc_5, 2 : memref<1xi32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %141 = arith.minsi %c1871096728_i64, %c171937649_i64 : i64
    %142 = vector.broadcast %c8 : index to vector<12xindex>
    %143 = vector.broadcast %cst_19 : f32 to vector<12xf32>
    vector.scatter %alloc_2[%c0] [%142], %20, %143 : memref<1xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %144 = arith.divf %cst_0, %cst : f16
    %145 = arith.maxui %c1_i32, %c1_i32 : i32
    %146 = vector.load %alloc_9[%c2, %c1] : memref<7x12xi32>, vector<1x1xi32>
    %147 = arith.shrsi %true_17, %true_17 : i1
    %148 = arith.maxui %c25062_i16, %c9277_i16 : i16
    %149 = arith.shrsi %c1_i32, %c1479748263_i32 : i32
    %150 = vector.load %alloc_9[%c4, %c1] : memref<7x12xi32>, vector<1xi32>
    scf.index_switch %c11 
    case 1 {
      %264 = math.ctlz %80 : tensor<1x1x1xi32>
      %265 = arith.remui %c0_i32_23, %c0_i32_23 : i32
      %266 = index.sub %c1, %64
      %267 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
      %268 = vector.fma %267, %267, %267 : vector<7x13xf32>
      %269 = index.maxs %c10, %c1
      bufferization.dealloc_tensor %6 : tensor<1x1xi64>
      %alloc_51 = memref.alloc() : memref<1xi64>
      %270 = math.ipowi %true, %false : i1
      %271 = math.ctlz %3 : tensor<7x13xi64>
      %272 = memref.atomic_rmw assign %cst_27, %alloc_14[%c1, %c6] : (f16, memref<7x13xf16>) -> f16
      %273 = arith.shrui %c19404_i16, %c0_i16 : i16
      %c1_i64 = arith.constant 1 : i64
      %c0_i64_52 = arith.constant 0 : i64
      %274 = vector.transfer_read %3[%c15, %113], %c0_i64_52 : tensor<7x13xi64>, vector<i64>
      %275 = vector.broadcast %cst : f16 to vector<1xf16>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %72, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf16>, vector<1xf16>
      %276 = math.powf %cst, %cst : f16
      %alloc_55 = memref.alloc() : memref<13x13xi64>
      %277 = tensor.empty() : tensor<7x13xi64>
      %278 = linalg.matmul ins(%138, %alloc_55 : tensor<7x13xi64>, memref<13x13xi64>) outs(%277 : tensor<7x13xi64>) -> tensor<7x13xi64>
      %279 = arith.ori %c25062_i16, %c19404_i16 : i16
      scf.yield
    }
    default {
      %264 = tensor.empty() : tensor<12x7xi32>
      %265 = tensor.empty() : tensor<7x7xi32>
      %266 = linalg.matmul ins(%2, %264 : tensor<7x12xi32>, tensor<12x7xi32>) outs(%265 : tensor<7x7xi32>) -> tensor<7x7xi32>
      %inserted_51 = tensor.insert %c1871096728_i64 into %8[%c0] : tensor<1xi64>
      %267 = vector.broadcast %true : i1 to vector<1xi1>
      %268 = vector.gather %11[%91] [%150], %267, %150 : tensor<1xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %alloc_52 = memref.alloc() : memref<7x12xi16>
      scf.execute_region {
        %278 = math.absf %9 : tensor<7x12xf16>
        %279 = arith.subi %c1_i32, %c0_i32_23 : i32
        %280 = math.roundeven %7 : tensor<7x12xf32>
        %281 = index.casts %c7 : index to i32
        vector.print %72 : vector<1x1xf16>
        %282 = math.round %cst_0 : f16
        %283 = vector.transpose %20, [0] : vector<12xi1> to vector<12xi1>
        %284 = vector.create_mask %37, %64 : vector<7x12xi1>
        %inserted_58 = tensor.insert %c9277_i16 into %4[%c0, %c0] : tensor<1x1xi16>
        %285 = math.copysign %1, %1 : tensor<7x13xf16>
        %286 = index.ceildivu %c13, %109
        %287 = math.expm1 %9 : tensor<7x12xf16>
        %288 = index.casts %c1_i32 : i32 to index
        %289 = arith.andi %c19404_i16, %c21158_i16 : i16
        %extracted_59 = tensor.extract %cast[%c0] : tensor<?xi64>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %cst_61 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %18[%37, %c6], %cst_61 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<12x7xf16>, vector<7xf16>
        scf.yield
      }
      %269 = vector.load %alloc_1[%c0] : memref<1xi32>, vector<7x12xi32>
      %true_53 = index.bool.constant true
      %270 = math.expm1 %7 : tensor<7x12xf32>
      %271 = vector.broadcast %cst : f16 to vector<13xf16>
      %dest_54, %accumulated_value_55 = vector.scan <mul>, %123, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<7x13xf16>, vector<13xf16>
      %c0_i64_56 = arith.constant 0 : i64
      %272 = vector.transfer_read %140[%135, %c10], %c0_i64_56 : tensor<7x13xi64>, vector<12xi64>
      %273 = index.ceildivs %c15, %101
      %generated_57 = tensor.generate %c13 {
      ^bb0(%arg1: index):
        %278 = math.absf %10 : tensor<7x12xf32>
        %279 = vector.transpose %72, [0, 1] : vector<1x1xf16> to vector<1x1xf16>
        %c367489425_i32 = arith.constant 367489425 : i32
        %extracted_58 = tensor.extract %6[%c0, %c0] : tensor<1x1xi64>
        tensor.yield %c171937649_i64 : i64
      } : tensor<?xi64>
      %274 = vector.splat %45 : vector<7x13xindex>
      %275 = math.roundeven %cst : f16
      %276 = arith.subi %c892068793_i64, %c0_i64_56 : i64
      %277 = affine.for %arg1 = 0 to 41 iter_args(%arg2 = %c4) -> (index) {
        affine.yield %91 : index
      }
    }
    %151 = vector.create_mask %c7, %133 : vector<7x13xi1>
    %152 = math.log1p %5 : tensor<1x1xf16>
    memref.store %true_17, %alloc_6[%c0] : memref<1xi1>
    %153 = vector.flat_transpose %112 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    %154 = arith.maxf %cst_19, %cst_19 : f32
    %155 = bufferization.to_memref %0 : memref<7x12xf16>
    %generated_28 = tensor.generate %c11 {
    ^bb0(%arg1: index):
      %264 = vector.flat_transpose %28 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %265 = math.atan %0 : tensor<7x12xf16>
      %266 = index.ceildivu %c7, %c3
      %267 = scf.index_switch %109 -> vector<7x13xi32> 
      case 1 {
        %268 = arith.maxui %c2082943483_i32, %c785098543_i32 : i32
        %269 = tensor.empty() : tensor<7x12xi64>
        %270 = vector.broadcast %c171937649_i64 : i64 to vector<7x13xi64>
        %271 = vector.broadcast %c1479748263_i32 : i32 to vector<7x13xi32>
        %272 = vector.gather %269[%c15, %arg1] [%271], %151, %270 : tensor<7x12xi64>, vector<7x13xi32>, vector<7x13xi1>, vector<7x13xi64> into vector<7x13xi64>
        bufferization.dealloc_tensor %7 : tensor<7x12xf32>
        %273 = math.log1p %5 : tensor<1x1xf16>
        bufferization.dealloc_tensor %140 : tensor<7x13xi64>
        %274 = vector.load %alloc_7[%c0] : memref<1xf16>, vector<7x12xf16>
        %275 = math.fma %1, %1, %1 : tensor<7x13xf16>
        %276 = arith.negf %cst_19 : f32
        %c0_i32_51 = arith.constant 0 : i32
        %277 = vector.transfer_read %alloc_1[%109], %c0_i32_51 : memref<1xi32>, vector<i32>
        %278 = arith.floordivsi %c892068793_i64, %c892068793_i64 : i64
        %279 = arith.minsi %c231478515_i64, %c231478515_i64 : i64
        %280 = vector.transpose %75, [0, 1] : vector<1x1xf16> to vector<1x1xf16>
        %281 = memref.load %alloc_3[%c0, %c0] : memref<1x1xi16>
        %282 = arith.maxf %cst, %cst : f16
        %283 = vector.load %alloc_5[%c0] : memref<1xi32>, vector<1xi32>
        %284 = arith.maxui %true, %true_24 : i1
        scf.yield %271 : vector<7x13xi32>
      }
      case 2 {
        %268 = math.round %7 : tensor<7x12xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %74, %146, %146 : vector<1x1xi32>, vector<1x1xi32> into vector<1x1xi32>
        %270 = vector.broadcast %cst : f16 to vector<f16>
        %271 = vector.transfer_write %270, %reduced[%101] : vector<f16>, tensor<7xf16>
        %272 = arith.remsi %c1871096728_i64, %c171937649_i64 : i64
        %273 = arith.cmpi eq, %70, %c-30268_i16 : i16
        %274 = index.sub %c12, %c12
        %275 = tensor.empty() : tensor<7x13xi16>
        %276 = vector.broadcast %c0_i16 : i16 to vector<1x1xi16>
        %277 = vector.gather %275[%101, %135] [%146], %73, %276 : tensor<7x13xi16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi16> into vector<1x1xi16>
        %cast_51 = tensor.cast %12 : tensor<1x1xf16> to tensor<?x?xf16>
        %278 = bufferization.to_memref %4 : memref<1x1xi16>
        %279 = arith.ori %c1479748263_i32, %c785098543_i32 : i32
        %280 = arith.divsi %true_17, %true_17 : i1
        bufferization.dealloc_tensor %17 : tensor<1xi32>
        %281 = math.log2 %19 : tensor<7xf16>
        %282 = math.ctlz %c9277_i16 : i16
        %expanded_52 = tensor.expand_shape %19 [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
        %283 = arith.mulf %cst, %cst_27 : f16
        %284 = vector.broadcast %c2082943483_i32 : i32 to vector<7x13xi32>
        scf.yield %284 : vector<7x13xi32>
      }
      default {
        %268 = vector.insert %true_24, %20 [5] : i1 into vector<12xi1>
        %269 = tensor.empty() : tensor<7x13xi32>
        %270 = index.add %135, %39
        %rank = tensor.rank %3 : tensor<7x13xi64>
        %271 = math.fma %18, %18, %18 : tensor<12x7xf16>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %cst_52 = arith.constant 0.000000e+00 : f16
        %272 = vector.transfer_read %alloc_15[%270, %c8], %cst_52 : memref<7x12xf16>, vector<f16>
        %273 = vector.reduction <or>, %110 : vector<7xi32> into i32
        %274 = math.log2 %19 : tensor<7xf16>
        vector.print %103 : vector<1x1xi1>
        %275 = arith.addf %cst_19, %cst_19 : f32
        %276 = arith.cmpf olt, %cst_51, %cst_0 : f16
        %c1_i32_53 = arith.constant 1 : i32
        %277 = vector.transfer_read %80[%c15, %45, %266], %c1_i32_53 : tensor<1x1x1xi32>, vector<i32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %73, %73, %103 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
        %279 = math.atan %cst_51 : f16
        %280 = vector.insert %c0_i32_23, %112 [6] : i32 into vector<7xi32>
        %281 = arith.addf %cst_0, %cst_27 : f16
        %282 = vector.broadcast %c1479748263_i32 : i32 to vector<7x13xi32>
        scf.yield %282 : vector<7x13xi32>
      }
      tensor.yield %c892068793_i64 : i64
    } : tensor<?xi64>
    %156 = math.copysign %5, %12 : tensor<1x1xf16>
    %157 = scf.while (%arg1 = %75) : (vector<1x1xf16>) -> vector<1x1xf16> {
      %264 = vector.insertelement %c1_i32, %150[%45 : index] : vector<1xi32>
      %265 = affine.if affine_set<(d0) : (d0 mod 4 >= 0, d0 + 6 == 0)>(%c11) -> memref<7x12xi16> {
        %272 = math.log2 %19 : tensor<7xf16>
        %273 = arith.floordivsi %true, %false : i1
        %274 = arith.maxui %c19404_i16, %c9277_i16 : i16
        %275 = math.tan %0 : tensor<7x12xf16>
        %276 = arith.negf %cst_27 : f16
        %277 = arith.divsi %true, %false : i1
        %cast_51 = tensor.cast %6 : tensor<1x1xi64> to tensor<?x?xi64>
        %278 = math.fma %18, %transposed, %18 : tensor<12x7xf16>
        %alloc_52 = memref.alloc() : memref<7x12xi16>
        affine.yield %alloc_52 : memref<7x12xi16>
      } else {
        %272 = arith.minf %cst_0, %cst : f16
        %273 = math.ctlz %23 : tensor<i32>
        %274 = vector.transpose %111, [0] : vector<7xi1> to vector<7xi1>
        %275 = affine.min affine_map<(d0) -> (-(d0 mod 32 - d0), -(d0 mod 32 - d0), (d0 mod 32 - d0) * -2, d0 mod 32 - 16)>(%133)
        %276 = vector.broadcast %cst_19 : f32 to vector<1xf32>
        %277 = vector.fma %276, %276, %276 : vector<1xf32>
        %278 = arith.shli %true_17, %true_24 : i1
        %279 = tensor.empty() : tensor<1x1xi32>
        %280 = math.fpowi %12, %279 : tensor<1x1xf16>, tensor<1x1xi32>
        %281 = math.absf %transposed : tensor<12x7xf16>
        %alloc_51 = memref.alloc() : memref<7x12xi16>
        affine.yield %alloc_51 : memref<7x12xi16>
      }
      %266 = index.maxs %c9, %c12
      %267 = vector.flat_transpose %112 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
      %268 = vector.bitcast %74 : vector<1x1xi32> to vector<1x1xi32>
      %269 = arith.divsi %c892068793_i64, %c171937649_i64 : i64
      %270 = bufferization.clone %alloc_4 : memref<7x13xi32> to memref<7x13xi32>
      %271 = index.casts %c2082943483_i32 : i32 to index
      scf.condition(%true) %75 : vector<1x1xf16>
    } do {
    ^bb0(%arg1: vector<1x1xf16>):
      memref.tensor_store %1, %alloc_14 : memref<7x13xf16>
      %264 = math.expm1 %9 : tensor<7x12xf16>
      %alloc_51 = memref.alloc() : memref<7x13xi1>
      %265 = arith.minui %c1479748263_i32, %c1_i32 : i32
      %266 = vector.matrix_multiply %28, %28 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %267 = math.expm1 %10 : tensor<7x12xf32>
      %268 = affine.min affine_map<(d0, d1, d2) -> ((((-d2) floordiv 128) ceildiv 2) ceildiv 16)>(%c13, %c10, %c14)
      %269 = arith.addf %cst_19, %cst_19 : f32
      %270 = math.rsqrt %1 : tensor<7x13xf16>
      %expanded_52 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
      %271 = bufferization.clone %alloc_9 : memref<7x12xi32> to memref<7x12xi32>
      %272 = math.atan %cst : f16
      %273 = math.absf %cst_0 : f16
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %28, %true_24 : vector<12xi1>, vector<12xi1> into i1
      %from_elements = tensor.from_elements %c2082943483_i32, %c1479748263_i32, %c1479748263_i32, %c2082943483_i32, %c785098543_i32, %c2082943483_i32, %c0_i32_23, %c785098543_i32, %c1479748263_i32, %c2082943483_i32, %c1_i32, %c785098543_i32, %c2082943483_i32, %c2082943483_i32, %c1_i32, %c785098543_i32, %c1_i32, %c1_i32, %c1479748263_i32, %c2082943483_i32, %c0_i32_23, %c1_i32, %c1_i32, %c1479748263_i32, %c0_i32_23, %c1479748263_i32, %c1_i32, %c1_i32, %c0_i32_23, %c1479748263_i32, %c2082943483_i32, %c1_i32, %c785098543_i32, %c785098543_i32, %c1479748263_i32, %c1479748263_i32, %c2082943483_i32, %c1479748263_i32, %c1_i32, %c1_i32, %c1_i32, %c1479748263_i32, %c1_i32, %c2082943483_i32, %c1_i32, %c785098543_i32, %c1479748263_i32, %c1_i32, %c0_i32_23, %c0_i32_23, %c0_i32_23, %c785098543_i32, %c2082943483_i32, %c1_i32, %c1_i32, %c2082943483_i32, %c785098543_i32, %c1_i32, %c1479748263_i32, %c2082943483_i32, %c785098543_i32, %c2082943483_i32, %c785098543_i32, %c1_i32, %c2082943483_i32, %c1_i32, %c1_i32, %c1479748263_i32, %c2082943483_i32, %c1479748263_i32, %c1479748263_i32, %c785098543_i32, %c2082943483_i32, %c1_i32, %c1_i32, %c1479748263_i32, %c1_i32, %c1_i32, %c785098543_i32, %c1479748263_i32, %c1_i32, %c0_i32_23, %c2082943483_i32, %c2082943483_i32 : tensor<7x12xi32>
      %275 = affine.if affine_set<(d0, d1, d2, d3) : (d0 == 0, d3 * 8 >= 0, d0 * 16 + 1 == 0)>(%c6, %c1, %c2, %c12) -> memref<1x1xi32> {
        %276 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%91, %c6, %c4)
        %277 = math.atan %18 : tensor<12x7xf16>
        %278 = arith.remf %cst, %cst_0 : f16
        %279 = math.sqrt %18 : tensor<12x7xf16>
        %280 = memref.load %alloc_5[%c0] : memref<1xi32>
        %281 = arith.mulf %cst_27, %cst_27 : f16
        %282 = arith.divsi %c892068793_i64, %c231478515_i64 : i64
        %283 = arith.xori %true, %false : i1
        %alloc_53 = memref.alloc() : memref<1x1xi32>
        affine.yield %alloc_53 : memref<1x1xi32>
      } else {
        %276 = math.rsqrt %cst_27 : f16
        %277 = index.mul %c15, %91
        %278 = vector.reduction <and>, %150 : vector<1xi32> into i32
        %279 = index.sizeof
        %280 = vector.bitcast %72 : vector<1x1xf16> to vector<1x1xf16>
        %281 = math.log1p %19 : tensor<7xf16>
        %282 = math.ipowi %c25062_i16, %c-30268_i16 : i16
        %283 = arith.maxf %cst_19, %cst_19 : f32
        %alloc_53 = memref.alloc() : memref<1x1xi32>
        affine.yield %alloc_53 : memref<1x1xi32>
      }
      scf.yield %72 : vector<1x1xf16>
    }
    %158 = index.sizeof
    %expanded_29 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<7x12xf32> into tensor<7x12x1xf32>
    %159 = vector.reduction <minsi>, %153 : vector<7xi32> into i32
    %160 = arith.shrsi %c-30268_i16, %70 : i16
    %161 = vector.broadcast %cst_27 : f16 to vector<1xf16>
    %dest_30, %accumulated_value_31 = vector.scan <minf>, %72, %161 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xf16>, vector<1xf16>
    %162 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %75, %75, %72 : vector<1x1xf16>, vector<1x1xf16> into vector<1x1xf16>
    %163 = vector.insert %true_17, %20 [6] : i1 into vector<12xi1>
    %false_32 = index.bool.constant false
    %164 = math.expm1 %7 : tensor<7x12xf32>
    memref.assume_alignment %alloc_7, 1 : memref<1xf16>
    %165 = math.rsqrt %7 : tensor<7x12xf32>
    %166 = index.castu %37 : index to i32
    %167 = index.add %c14, %39
    %168 = arith.subi %true, %false : i1
    %cast_33 = tensor.cast %7 : tensor<7x12xf32> to tensor<?x?xf32>
    %169 = vector.broadcast %true : i1 to vector<1xi1>
    %170 = vector.multi_reduction <add>, %73, %169 [0] : vector<1x1xi1> to vector<1xi1>
    %171 = vector.extract_strided_slice %110 {offsets = [5], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
    %172 = arith.divsi %c9277_i16, %c25062_i16 : i16
    %173 = bufferization.to_tensor %alloc_5 : memref<1xi32>
    %174 = vector.broadcast %c2082943483_i32 : i32 to vector<13xi32>
    %175 = vector.broadcast %false : i1 to vector<13xi1>
    %176 = vector.maskedload %alloc_1[%c0], %175, %174 : memref<1xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
    %alloca_34 = memref.alloca() : memref<1x1xi32>
    %177 = math.copysign %1, %1 : tensor<7x13xf16>
    %178 = math.ctlz %true : i1
    %179 = arith.minsi %c0_i32_23, %c0_i32_23 : i32
    %180 = index.casts %false : i1 to index
    %181 = arith.divui %c19404_i16, %c25062_i16 : i16
    %182 = math.exp2 %reduced : tensor<7xf16>
    %183 = math.log1p %83 : tensor<1x1xf16>
    %184 = arith.minf %cst_27, %cst_0 : f16
    %185 = index.divs %113, %39
    %186 = index.ceildivs %167, %133
    %187 = index.add %185, %45
    %188 = tensor.empty() : tensor<1x1xi32>
    %189 = math.fpowi %12, %188 : tensor<1x1xf16>, tensor<1x1xi32>
    %190 = arith.ori %c0_i16, %c9277_i16 : i16
    %191 = index.casts %true_24 : i1 to index
    %192 = vector.extract_strided_slice %123 {offsets = [1], sizes = [3], strides = [1]} : vector<7x13xf16> to vector<3x13xf16>
    %alloca_35 = memref.alloca() : memref<1x1xi16>
    %alloca_36 = memref.alloca() : memref<7x12xf16>
    %193 = bufferization.to_memref %10 : memref<7x12xf32>
    %expanded_37 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
    %194 = math.log %7 : tensor<7x12xf32>
    %195 = index.casts %c9 : index to i32
    %196 = math.rsqrt %9 : tensor<7x12xf16>
    %197 = math.powf %expanded, %expanded : tensor<1x1x1xf16>
    %198 = tensor.empty() : tensor<1x1xi64>
    %199 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%198 : tensor<1x1xi64>) -> tensor<1x1xi64>
    %true_38 = index.bool.constant true
    %200 = index.casts %c231478515_i64 : i64 to index
    %201 = arith.mulf %cst, %cst_0 : f16
    %202 = math.log2 %10 : tensor<7x12xf32>
    %203 = arith.ori %c0_i32_23, %c2082943483_i32 : i32
    memref.copy %alloc_5, %alloc_1 : memref<1xi32> to memref<1xi32>
    %alloca_39 = memref.alloca() : memref<1x1xi32>
    %204 = memref.load %alloc_4[%c6, %c9] : memref<7x13xi32>
    %205 = vector.transpose %74, [0, 1] : vector<1x1xi32> to vector<1x1xi32>
    %206 = math.copysign %9, %0 : tensor<7x12xf16>
    %207 = arith.xori %c-30268_i16, %c0_i16 : i16
    %c-16204_i16 = arith.constant -16204 : i16
    %c0_i32_40 = arith.constant 0 : i32
    %c0_i32_41 = arith.constant 0 : i32
    %208 = vector.transfer_read %alloc_8[%c3, %180], %c0_i32_41 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x12xi32>, vector<7xi32>
    %209 = arith.remf %cst_19, %cst_19 : f32
    %expanded_42 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
    %210 = scf.index_switch %45 -> memref<7x13xf32> 
    case 1 {
      %264 = math.atan %1 : tensor<7x13xf16>
      %265 = vector.transpose %28, [0] : vector<12xi1> to vector<12xi1>
      %266 = arith.ori %70, %c0_i16 : i16
      %expanded_51 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x13xf16> into tensor<7x13x1xf16>
      %267 = bufferization.clone %alloc_3 : memref<1x1xi16> to memref<1x1xi16>
      %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 4, -d0, (d0 mod 4 + 4) ceildiv 64)>(%158, %c12, %c0, %191)
      %269 = arith.mulf %cst, %cst_0 : f16
      %270 = math.atan %18 : tensor<12x7xf16>
      %inserted_52 = tensor.insert %c171937649_i64 into %3[%c0, %c2] : tensor<7x13xi64>
      %271 = math.fpowi %1, %13 : tensor<7x13xf16>, tensor<7x13xi32>
      %272 = math.round %12 : tensor<1x1xf16>
      %true_53 = index.bool.constant true
      %273 = arith.divsi %false, %false : i1
      %274 = index.divs %c3, %c7
      %275 = index.sizeof
      %276 = math.round %12 : tensor<1x1xf16>
      %alloc_54 = memref.alloc() : memref<7x13xf32>
      scf.yield %alloc_54 : memref<7x13xf32>
    }
    default {
      %264 = arith.divsi %true_38, %false_32 : i1
      %265 = memref.load %alloc_9[%c6, %c10] : memref<7x12xi32>
      %266 = bufferization.to_memref %2 : memref<7x12xi32>
      %267 = vector.bitcast %72 : vector<1x1xf16> to vector<1x1xf16>
      %268 = vector.broadcast %cst_0 : f16 to vector<13xf16>
      %269 = vector.multi_reduction <maxf>, %123, %268 [0] : vector<7x13xf16> to vector<13xf16>
      %270 = math.tan %7 : tensor<7x12xf32>
      %271 = index.floordivs %c12, %39
      %272 = math.fma %1, %1, %1 : tensor<7x13xf16>
      %273 = memref.alloca_scope  -> (i32) {
        %280 = math.ctlz %80 : tensor<1x1x1xi32>
        %281 = vector.transpose %175, [0] : vector<13xi1> to vector<13xi1>
        %282 = arith.maxsi %c171937649_i64, %c892068793_i64 : i64
        %283 = arith.shrsi %false, %false : i1
        %extracted_52 = tensor.extract %10[%c6, %c0] : tensor<7x12xf32>
        %alloca_53 = memref.alloca() : memref<7x13xi64>
        %284 = arith.divsi %c0_i32_23, %c0_i32_23 : i32
        %285 = math.sqrt %1 : tensor<7x13xf16>
        %c1344503341_i64 = arith.constant 1344503341 : i64
        %true_54 = index.bool.constant true
        %286 = math.tan %0 : tensor<7x12xf16>
        %287 = math.copysign %transposed, %transposed : tensor<12x7xf16>
        %288 = vector.broadcast %c1_i32 : i32 to vector<i32>
        %289 = vector.transfer_write %288, %86[%115] : vector<i32>, tensor<7xi32>
        %290 = tensor.empty() : tensor<7x13xf32>
        %291 = arith.maxsi %c19404_i16, %c21158_i16 : i16
        %c0_i32_55 = arith.constant 0 : i32
        %292 = vector.transfer_read %11[%c11], %c0_i32_55 : tensor<1xi32>, vector<i32>
        %293 = math.ipowi %2, %2 : tensor<7x12xi32>
        %294 = index.castu %c1479748263_i32 : i32 to index
        %295 = math.tan %expanded_29 : tensor<7x12x1xf32>
        %296 = math.cttz %17 : tensor<1xi32>
        %297 = index.divs %37, %c4
        %298 = index.divs %271, %186
        %extracted_56 = tensor.extract %3[%c2, %c3] : tensor<7x13xi64>
        %299 = math.atan %cst_0 : f16
        %300 = memref.atomic_rmw muli %c2082943483_i32, %alloc_1[%c0] : (i32, memref<1xi32>) -> i32
        %301 = math.ctpop %13 : tensor<7x13xi32>
        %c0_i16_57 = arith.constant 0 : i16
        %c0_i16_58 = arith.constant 0 : i16
        %302 = vector.transfer_read %4[%c12, %c2], %c0_i16_58 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x1xi16>, vector<13xi16>
        %303 = math.round %7 : tensor<7x12xf32>
        %alloca_59 = memref.alloca() : memref<7x12xi16>
        %304 = arith.divf %cst_27, %cst_27 : f16
        %305 = vector.reduction <xor>, %169 : vector<1xi1> into i1
        %306 = index.casts %true : i1 to index
        memref.alloca_scope.return %c2082943483_i32 : i32
      }
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %73, %73, %73 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
      %275 = arith.shli %c1_i32, %c785098543_i32 : i32
      %276 = math.rsqrt %1 : tensor<7x13xf16>
      scf.execute_region {
        memref.store %c2082943483_i32, %alloc_12[%c1, %c10] : memref<7x12xi32>
        %280 = math.atan %reduced : tensor<7xf16>
        %281 = arith.minui %true_24, %true_24 : i1
        %282 = index.add %109, %c2
        %283 = math.tan %cst : f16
        %284 = arith.minf %cst_27, %cst_27 : f16
        %285 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 8, d2, d2 ceildiv 8)>(%64, %109, %200)
        %286 = math.atan %cst : f16
        %287 = memref.load %alloc_12[%c5, %c8] : memref<7x12xi32>
        %288 = bufferization.clone %155 : memref<7x12xf16> to memref<7x12xf16>
        %289 = vector.broadcast %91 : index to vector<13xindex>
        vector.scatter %alloc_11[%c0, %c0] [%289], %175, %175 : memref<1x1xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
        %290 = math.tan %0 : tensor<7x12xf16>
        %291 = vector.insert %268, %123 [1] : vector<13xf16> into vector<7x13xf16>
        %292 = arith.maxf %cst_0, %cst_0 : f16
        %293 = memref.load %alloc_3[%c0, %c0] : memref<1x1xi16>
        %294 = vector.broadcast %273 : i32 to vector<i32>
        %295 = vector.transfer_write %294, %13[%191, %285] : vector<i32>, tensor<7x13xi32>
        scf.yield
      }
      %277 = arith.cmpf uno, %cst, %cst_0 : f16
      %278 = arith.divsi %273, %c785098543_i32 : i32
      %279 = math.ctpop %c892068793_i64 : i64
      %alloc_51 = memref.alloc() : memref<7x13xf32>
      scf.yield %alloc_51 : memref<7x13xf32>
    }
    %c23137_i16 = arith.constant 23137 : i16
    %211 = arith.remui %false_32, %true_38 : i1
    %212 = arith.remui %true_17, %false_32 : i1
    %213 = math.round %9 : tensor<7x12xf16>
    %214 = affine.if affine_set<(d0, d1, d2) : (d0 * 64 + d1 >= 0)>(%c0, %c2, %c11) -> i32 {
      %264 = index.casts %c25062_i16 : i16 to index
      %265 = math.atan2 %expanded_29, %expanded_29 : tensor<7x12x1xf32>
      %266 = arith.floordivsi %c9277_i16, %c-30268_i16 : i16
      %alloc_51 = memref.alloc() : memref<1xf32>
      %cast_52 = tensor.cast %7 : tensor<7x12xf32> to tensor<?x?xf32>
      %rank = tensor.rank %expanded_25 : tensor<1x1x1xi64>
      %rank_53 = tensor.rank %2 : tensor<7x12xi32>
      %267 = vector.load %alloc_15[%c1, %c9] : memref<7x12xf16>, vector<7x12xf16>
      affine.yield %c1479748263_i32 : i32
    } else {
      %264 = math.log2 %12 : tensor<1x1xf16>
      %265 = math.ctlz %6 : tensor<1x1xi64>
      %266 = affine.max affine_map<(d0, d1, d2) -> (d1 + 128)>(%c6, %c12, %c9)
      %alloca_51 = memref.alloca() : memref<7x12xi32>
      %267 = arith.negf %cst_19 : f32
      %268 = math.copysign %cst_0, %cst_0 : f16
      %269 = arith.divsi %c21158_i16, %70 : i16
      %alloc_52 = memref.alloc() : memref<i32>
      memref.tensor_store %23, %alloc_52 : memref<i32>
      affine.yield %c0_i32_23 : i32
    }
    %215 = vector.load %alloc_8[%c6, %c9] : memref<7x12xi32>, vector<1xi32>
    %216 = math.copysign %transposed, %transposed : tensor<12x7xf16>
    %217 = bufferization.to_memref %22 : memref<i32>
    %218 = arith.mulf %cst_0, %cst_27 : f16
    %219 = arith.remf %cst_0, %cst_27 : f16
    %220 = arith.mulf %cst_27, %cst_0 : f16
    %221 = math.round %7 : tensor<7x12xf32>
    %222 = math.log %12 : tensor<1x1xf16>
    %223 = arith.minsi %c171937649_i64, %c1871096728_i64 : i64
    %224 = bufferization.to_memref %expanded_25 : memref<1x1x1xi64>
    %225 = arith.shrui %true_17, %false : i1
    %226 = math.cttz %15 : tensor<1x1xi1>
    %227 = tensor.empty() : tensor<7x12xi16>
    %228 = arith.divui %c2082943483_i32, %c0_i32_23 : i32
    %229 = arith.minsi %c19404_i16, %c25062_i16 : i16
    %230 = vector.gather %1[%109, %c15] [%74], %73, %72 : tensor<7x13xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
    %false_43 = arith.constant false
    %231 = arith.addi %c785098543_i32, %c2082943483_i32 : i32
    %232 = math.copysign %0, %9 : tensor<7x12xf16>
    %233 = arith.floordivsi %true, %true : i1
    %234 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
    %235 = vector.fma %234, %234, %234 : vector<7x13xf32>
    %236 = arith.cmpf uno, %cst_0, %cst_0 : f16
    affine.for %arg1 = 0 to 94 {
    }
    affine.for %arg1 = 0 to 18 {
    }
    %alloc_44 = memref.alloc() : memref<13x7xi64>
    %237 = tensor.empty() : tensor<7x7xi64>
    %238 = linalg.matmul ins(%3, %alloc_44 : tensor<7x13xi64>, memref<13x7xi64>) outs(%237 : tensor<7x7xi64>) -> tensor<7x7xi64>
    %239 = arith.remf %cst, %cst_27 : f16
    %240 = vector.bitcast %72 : vector<1x1xf16> to vector<1x1xf16>
    %collapsed = tensor.collapse_shape %140 [[0, 1]] : tensor<7x13xi64> into tensor<91xi64>
    %extracted = tensor.extract %22[] : tensor<i32>
    %cast_45 = tensor.cast %188 : tensor<1x1xi32> to tensor<?x?xi32>
    %241 = math.log %transposed : tensor<12x7xf16>
    %242 = vector.broadcast %c10 : index to vector<12xindex>
    %243 = vector.broadcast %c785098543_i32 : i32 to vector<12xi32>
    vector.scatter %217[] [%242], %20, %243 : memref<i32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
    %collapsed_46 = tensor.collapse_shape %0 [[0, 1]] : tensor<7x12xf16> into tensor<84xf16>
    %244 = vector.broadcast %c1_i32 : i32 to vector<7xi32>
    %245 = vector.transfer_write %244, %13[%186, %186] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, tensor<7x13xi32>
    %cast_47 = tensor.cast %expanded_42 : tensor<1x1x1xf16> to tensor<?x?x?xf16>
    %246 = index.casts %extracted : i32 to index
    affine.for %arg1 = 0 to 45 {
    }
    %247 = arith.shli %c21158_i16, %c25062_i16 : i16
    %248 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 mod 16 - 4) * 4 >= 0, d0 == 0, (d0 mod 16 - 4) * 4 == 0, d2 + 32 >= 0)>(%c15, %c10, %c5, %c12) -> f16 {
      %alloc_51 = memref.alloc() : memref<7x13xi16>
      %264 = math.cttz %c19404_i16 : i16
      %265 = vector.transpose %169, [0] : vector<1xi1> to vector<1xi1>
      %266 = memref.load %alloc_12[%c1, %c7] : memref<7x12xi32>
      %267 = arith.minf %cst_19, %cst_19 : f32
      %268 = index.casts %c1871096728_i64 : i64 to index
      affine.for %arg1 = 0 to 30 {
      }
      %269 = memref.atomic_rmw maxf %cst_0, %alloc_7[%c0] : (f16, memref<1xf16>) -> f16
      affine.yield %cst_27 : f16
    } else {
      memref.store %false, %alloc[%c0, %c0] : memref<1x1xi1>
      %alloc_51 = memref.alloc() : memref<1x1xi32>
      %264 = vector.gather %alloc_51[%64, %115] [%215], %169, %150 : memref<1x1xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %265 = index.maxs %115, %91
      %266 = vector.load %alloc_3[%c0, %c0] : memref<1x1xi16>, vector<7x13xi16>
      %alloc_52 = memref.alloc() : memref<1x1xf16>
      %267 = scf.execute_region -> f32 {
        %269 = vector.bitcast %20 : vector<12xi1> to vector<12xi1>
        %false_54 = index.bool.constant false
        %270 = math.fpowi %19, %86 : tensor<7xf16>, tensor<7xi32>
        %271 = arith.divui %c1_i32, %extracted : i32
        %dest_55, %accumulated_value_56 = vector.scan <maxui>, %74, %215 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xi32>, vector<1xi32>
        %272 = arith.maxsi %c-30268_i16, %c21158_i16 : i16
        %273 = math.atan2 %cst, %cst_27 : f16
        %274 = vector.insertelement %false, %28[%c12 : index] : vector<12xi1>
        %275 = arith.remui %c1_i32, %c2082943483_i32 : i32
        %276 = vector.broadcast %cst_19 : f32 to vector<1x1xf32>
        %277 = vector.fma %276, %276, %276 : vector<1x1xf32>
        %278 = vector.reduction <mul>, %111 : vector<7xi1> into i1
        %279 = tensor.empty() : tensor<84xi32>
        %280 = math.fpowi %collapsed_46, %279 : tensor<84xf16>, tensor<84xi32>
        %281 = vector.matrix_multiply %28, %269 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %cast_57 = tensor.cast %7 : tensor<7x12xf32> to tensor<?x?xf32>
        %282 = bufferization.to_memref %8 : memref<1xi64>
        %283 = vector.reduction <add>, %244 : vector<7xi32> into i32
        scf.yield %cst_19 : f32
      }
      %alloca_53 = memref.alloca() : memref<1xi1>
      %268 = math.round %9 : tensor<7x12xf16>
      affine.yield %cst_27 : f16
    }
    %249 = math.log2 %1 : tensor<7x13xf16>
    %250 = arith.divui %c0_i32_23, %c2082943483_i32 : i32
    %251 = math.expm1 %9 : tensor<7x12xf16>
    %252 = tensor.empty() : tensor<1x1xi64>
    %253 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%252 : tensor<1x1xi64>) -> tensor<1x1xi64>
    %254 = memref.atomic_rmw ori %c0_i32_40, %alloc_8[%c0, %c8] : (i32, memref<7x12xi32>) -> i32
    %255 = math.roundeven %54 : tensor<7x7xf32>
    %256 = math.atan %expanded_29 : tensor<7x12x1xf32>
    %257 = arith.remf %cst_19, %cst_19 : f32
    %258 = arith.shrsi %70, %c25062_i16 : i16
    %259 = math.atan %19 : tensor<7xf16>
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_48 = arith.constant 0 : i64
    %260 = vector.transfer_read %6[%135, %109], %c0_i64_48 : tensor<1x1xi64>, vector<i64>
    %261 = tensor.empty() : tensor<7xf16>
    %262 = linalg.copy ins(%reduced : tensor<7xf16>) outs(%261 : tensor<7xf16>) -> tensor<7xf16>
    %alloc_49 = memref.alloc() : memref<1x1xf16>
    linalg.transpose ins(%5 : tensor<1x1xf16>) outs(%alloc_49 : memref<1x1xf16>) permutation = [1, 0] 
    %alloc_50 = memref.alloc() : memref<1xf16>
    linalg.reduce ins(%alloc_49 : memref<1x1xf16>) outs(%alloc_50 : memref<1xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %264 = math.roundeven %transposed : tensor<12x7xf16>
        %265 = arith.ori %c19404_i16, %c0_i16 : i16
        %266 = memref.load %alloc_13[%c5, %c2] : memref<7x12xi1>
        %267 = vector.load %alloc[%c0, %c0] : memref<1x1xi1>, vector<7x13xi1>
        %268 = arith.addi %70, %70 : i16
        %269 = arith.remsi %c785098543_i32, %c1479748263_i32 : i32
        %270 = scf.index_switch %c13 -> f32 
        case 1 {
          %271 = index.ceildivs %c0, %c5
          %272 = arith.maxui %false, %false : i1
          %273 = bufferization.clone %alloc_13 : memref<7x12xi1> to memref<7x12xi1>
          %274 = vector.extract %28[2] : vector<12xi1>
          %275 = math.ctpop %c19404_i16 : i16
          %276 = arith.negf %cst : f16
          %277 = arith.negf %cst : f16
          %278 = vector.matrix_multiply %215, %174 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 13 : i32} : (vector<1xi32>, vector<13xi32>) -> vector<13xi32>
          bufferization.dealloc_tensor %173 : tensor<1xi32>
          %279 = arith.shrsi %true_17, %false_32 : i1
          %280 = arith.minf %in, %cst : f16
          vector.print %28 : vector<12xi1>
          memref.tensor_store %11, %alloc_5 : memref<1xi32>
          %281 = vector.extract_strided_slice %192 {offsets = [1], sizes = [2], strides = [1]} : vector<3x13xf16> to vector<2x13xf16>
          %282 = math.absf %10 : tensor<7x12xf32>
          %false_53 = index.bool.constant false
          scf.yield %cst_19 : f32
        }
        case 2 {
          %271 = vector.broadcast %cst_27 : f16 to vector<f16>
          %272 = vector.transfer_write %271, %1[%187, %135] : vector<f16>, tensor<7x13xf16>
          %273 = math.fma %init, %init, %cst_27 : f16
          %274 = math.round %transposed : tensor<12x7xf16>
          %275 = vector.matrix_multiply %244, %153 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
          %276 = math.cos %5 : tensor<1x1xf16>
          %277 = vector.broadcast %cst_19 : f32 to vector<7x13xf32>
          %278 = vector.fma %277, %235, %234 : vector<7x13xf32>
          %279 = math.copysign %12, %12 : tensor<1x1xf16>
          %280 = arith.maxui %c0_i16, %c-30268_i16 : i16
          %281 = index.maxs %187, %187
          %282 = vector.insertelement %true_38, %169[%133 : index] : vector<1xi1>
          %283 = vector.load %alloc_5[%c0] : memref<1xi32>, vector<1xi32>
          %284 = vector.splat %c-30268_i16 : vector<1xi16>
          %285 = arith.shrui %c1479748263_i32, %c0_i32_23 : i32
          %286 = index.maxu %c13, %281
          %287 = arith.cmpf ugt, %cst, %cst : f16
          %288 = math.log %10 : tensor<7x12xf32>
          scf.yield %cst_19 : f32
        }
        case 3 {
          %271 = math.log1p %7 : tensor<7x12xf32>
          %272 = math.expm1 %12 : tensor<1x1xf16>
          %c805833684_i64 = arith.constant 805833684 : i64
          %inserted_53 = tensor.insert %c9277_i16 into %4[%c0, %c0] : tensor<1x1xi16>
          %cast_54 = tensor.cast %9 : tensor<7x12xf16> to tensor<?x?xf16>
          %true_55 = index.bool.constant true
          %expanded_56 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<7x13xi64> into tensor<7x13x1xi64>
          %alloc_57 = memref.alloc() : memref<7x13xf32>
          %273 = arith.cmpi ult, %c-30268_i16, %c19404_i16 : i16
          %274 = math.fpowi %cst_19, %c2082943483_i32 : f32, i32
          %275 = math.floor %cst : f16
          %276 = math.ctlz %c19404_i16 : i16
          %cast_58 = tensor.cast %18 : tensor<12x7xf16> to tensor<?x?xf16>
          %277 = index.sizeof
          %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %103, %169, %169 : vector<1x1xi1>, vector<1xi1> into vector<1xi1>
          %279 = vector.broadcast %cst_19 : f32 to vector<7xf32>
          %280 = vector.multi_reduction <maxf>, %235, %279 [1] : vector<7x13xf32> to vector<7xf32>
          scf.yield %cst_19 : f32
        }
        case 4 {
          %271 = index.casts %true : i1 to index
          %inserted_53 = tensor.insert %true_17 into %14[%c3, %c6] : tensor<7x12xi1>
          %272 = vector.bitcast %175 : vector<13xi1> to vector<13xi1>
          %273 = arith.subi %true, %true : i1
          %274 = math.atan %expanded_29 : tensor<7x12x1xf32>
          %275 = vector.create_mask %c12, %c14 : vector<7x13xi1>
          %276 = memref.load %alloc_15[%c0, %c2] : memref<7x12xf16>
          %277 = memref.atomic_rmw muli %c9277_i16, %alloc_3[%c0, %c0] : (i16, memref<1x1xi16>) -> i16
          %278 = arith.divsi %c1_i32, %c0_i32_40 : i32
          %true_54 = index.bool.constant true
          %alloca_55 = memref.alloca() : memref<7x13xi16>
          %279 = vector.broadcast %cst_27 : f16 to vector<13xf16>
          %dest_56, %accumulated_value_57 = vector.scan <add>, %192, %279 {inclusive = true, reduction_dim = 0 : i64} : vector<3x13xf16>, vector<13xf16>
          %280 = index.floordivs %39, %c12
          %281 = bufferization.to_memref %83 : memref<1x1xf16>
          %282 = math.ctpop %false_32 : i1
          %283 = vector.bitcast %169 : vector<1xi1> to vector<1xi1>
          scf.yield %cst_19 : f32
        }
        default {
          %splat = tensor.splat %true_38 : tensor<7x13xi1>
          %271 = vector.gather %alloc_49[%200, %c0] [%74], %103, %75 : memref<1x1xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
          %alloc_53 = memref.alloc() : memref<7x13xf32>
          %272 = index.sub %200, %246
          %273 = arith.ori %c25062_i16, %c25062_i16 : i16
          %274 = arith.divui %c0_i16, %c-30268_i16 : i16
          %275 = vector.insertelement %c2082943483_i32, %244[%c5 : index] : vector<7xi32>
          %cst_54 = arith.constant 1.000000e+00 : f32
          %cst_55 = arith.constant 0.000000e+00 : f32
          %276 = vector.transfer_read %expanded_29[%167, %c6, %c3], %cst_55 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<7x12x1xf32>, vector<1xf32>
          %277 = index.sub %200, %37
          %c440901001_i32 = arith.constant 440901001 : i32
          %278 = math.ctpop %252 : tensor<1x1xi64>
          %279 = arith.shrsi %c0_i32_40, %c0_i32_40 : i32
          %280 = arith.floordivsi %c231478515_i64, %c0_i64 : i64
          %281 = vector.flat_transpose %110 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
          %from_elements = tensor.from_elements %cst_19 : tensor<1xf32>
          %282 = vector.reduction <maxui>, %28 : vector<12xi1> into i1
          scf.yield %cst_54 : f32
        }
        %expanded_51 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c2, %135) to (%c11, %180) step (%c6, %c11) {
      %c1_i64 = arith.constant 1 : i64
      %c0_i64_51 = arith.constant 0 : i64
      %264 = vector.transfer_read %3[%246, %c5], %c0_i64_51 : tensor<7x13xi64>, vector<i64>
      %265 = bufferization.clone %alloc_4 : memref<7x13xi32> to memref<7x13xi32>
      %extracted_52 = tensor.extract %expanded_25[%c0, %c0, %c0] : tensor<1x1x1xi64>
      %expanded_53 = tensor.expand_shape %11 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
      %266 = index.floordivs %187, %187
      %267 = arith.minsi %c25062_i16, %c0_i16 : i16
      %268 = vector.create_mask %200, %c4 : vector<7x13xi1>
      %269 = index.sizeof
      %c1581038985_i64 = arith.constant 1581038985 : i64
      %270 = vector.broadcast %91 : index to vector<13xindex>
      vector.scatter %alloc_9[%c1, %c0] [%270], %175, %174 : memref<7x12xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      vector.print %20 : vector<12xi1>
      %271 = scf.execute_region -> index {
        %276 = math.log2 %1 : tensor<7x13xf16>
        %277 = bufferization.to_memref %4 : memref<1x1xi16>
        %278 = math.log1p %10 : tensor<7x12xf32>
        %279 = arith.maxui %c231478515_i64, %c231478515_i64 : i64
        %280 = vector.broadcast %cst_19 : f32 to vector<1xf32>
        %281 = vector.fma %280, %280, %280 : vector<1xf32>
        %282 = index.add %187, %c14
        %283 = index.casts %c7 : index to i32
        %284 = math.log2 %1 : tensor<7x13xf16>
        %285 = arith.remui %c0_i32_40, %c1479748263_i32 : i32
        %286 = index.casts %c5 : index to i32
        %287 = memref.atomic_rmw minf %cst, %alloc_7[%c0] : (f16, memref<1xf16>) -> f16
        %alloca_54 = memref.alloca() : memref<7x12xi32>
        %288 = arith.floordivsi %70, %c21158_i16 : i16
        %289 = vector.broadcast %cst_19 : f32 to vector<7x12xf32>
        %290 = vector.broadcast %true_17 : i1 to vector<7x12xi1>
        %291 = vector.broadcast %c0_i32_40 : i32 to vector<7x12xi32>
        %292 = vector.gather %10[%c8, %266] [%291], %290, %289 : tensor<7x12xf32>, vector<7x12xi32>, vector<7x12xi1>, vector<7x12xf32> into vector<7x12xf32>
        %293 = arith.shrsi %c785098543_i32, %extracted : i32
        %294 = index.sizeof
        scf.yield %c2 : index
      }
      %272 = index.mul %180, %c13
      %273 = arith.shrui %c1479748263_i32, %extracted : i32
      %274 = bufferization.clone %alloc_50 : memref<1xf16> to memref<1xf16>
      %275 = vector.reduction <mul>, %174 : vector<13xi32> into i32
      scf.yield
    }
    %263 = affine.vector_load %193[%45, %c12] : memref<7x12xf32>, vector<1xf32>
    affine.vector_store %171, %alloc_8[%101, %c0] : memref<7x12xi32>, vector<2xi32>
    vector.print %20 : vector<12xi1>
    vector.print %28 : vector<12xi1>
    vector.print %72 : vector<1x1xf16>
    vector.print %73 : vector<1x1xi1>
    vector.print %74 : vector<1x1xi32>
    vector.print %75 : vector<1x1xf16>
    vector.print %103 : vector<1x1xi1>
    vector.print %110 : vector<7xi32>
    vector.print %111 : vector<7xi1>
    vector.print %112 : vector<7xi32>
    vector.print %123 : vector<7x13xf16>
    vector.print %146 : vector<1x1xi32>
    vector.print %150 : vector<1xi32>
    vector.print %151 : vector<7x13xi1>
    vector.print %153 : vector<7xi32>
    vector.print %169 : vector<1xi1>
    vector.print %171 : vector<2xi32>
    vector.print %174 : vector<13xi32>
    vector.print %175 : vector<13xi1>
    vector.print %176 : vector<13xi32>
    vector.print %192 : vector<3x13xf16>
    vector.print %215 : vector<1xi32>
    vector.print %230 : vector<1x1xf16>
    vector.print %234 : vector<7x13xf32>
    vector.print %235 : vector<7x13xf32>
    vector.print %240 : vector<1x1xf16>
    vector.print %244 : vector<7xi32>
    vector.print %263 : vector<1xf32>
    vector.print %cst : f16
    vector.print %c25062_i16 : i16
    vector.print %c785098543_i32 : i32
    vector.print %c892068793_i64 : i64
    vector.print %c2082943483_i32 : i32
    vector.print %c231478515_i64 : i64
    vector.print %c9277_i16 : i16
    vector.print %c171937649_i64 : i64
    vector.print %c1479748263_i32 : i32
    vector.print %false : i1
    vector.print %cst_0 : f16
    vector.print %c-30268_i16 : i16
    vector.print %c1871096728_i64 : i64
    vector.print %true : i1
    vector.print %c19404_i16 : i16
    vector.print %c21158_i16 : i16
    vector.print %c1_i32 : i32
    vector.print %true_17 : i1
    vector.print %cst_19 : f32
    vector.print %70 : i16
    vector.print %c0_i16 : i16
    vector.print %c0_i32_23 : i32
    vector.print %true_24 : i1
    vector.print %cst_27 : f16
    vector.print %false_32 : i1
    vector.print %true_38 : i1
    vector.print %c0_i32_40 : i32
    vector.print %extracted : i32
    vector.print %c0_i64 : i64
    return %c25062_i16 : i16
  }
}
