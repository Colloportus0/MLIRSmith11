module {
  func.func @func1(%arg0: tensor<11x9xi64>, %arg1: f16) -> f32 {
    %cst = arith.constant 5.110400e+04 : f16
    %cst_0 = arith.constant 1.94136512E+9 : f32
    %false = arith.constant false
    %c-26202_i16 = arith.constant -26202 : i16
    %c345113398_i64 = arith.constant 345113398 : i64
    %c189287083_i64 = arith.constant 189287083 : i64
    %true = arith.constant true
    %c2034570215_i32 = arith.constant 2034570215 : i32
    %cst_1 = arith.constant 1.595200e+04 : f16
    %c1403378331_i32 = arith.constant 1403378331 : i32
    %cst_2 = arith.constant 1.86020442E+9 : f32
    %cst_3 = arith.constant 2.104000e+03 : f16
    %c380021746_i64 = arith.constant 380021746 : i64
    %cst_4 = arith.constant 1.67781837E+9 : f32
    %true_5 = arith.constant true
    %c2021584652_i32 = arith.constant 2021584652 : i32
    %0 = tensor.empty() : tensor<1xi32>
    %1 = tensor.empty() : tensor<11x9xf32>
    %2 = tensor.empty() : tensor<1x1xi16>
    %3 = tensor.empty() : tensor<1x1xf32>
    %4 = tensor.empty() : tensor<11x9xi32>
    %5 = tensor.empty() : tensor<1xi1>
    %6 = tensor.empty() : tensor<11x9xf32>
    %7 = tensor.empty() : tensor<11x9xf16>
    %8 = tensor.empty() : tensor<1xf32>
    %9 = tensor.empty() : tensor<1x1xi1>
    %10 = tensor.empty() : tensor<1x1xi32>
    %11 = tensor.empty() : tensor<3x3xi64>
    %12 = tensor.empty() : tensor<1x1xf16>
    %13 = tensor.empty() : tensor<11x9xi32>
    %14 = tensor.empty() : tensor<1x1xi16>
    %15 = tensor.empty() : tensor<3x3xi1>
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
    %alloc = memref.alloc() : memref<1x1xi16>
    %alloc_6 = memref.alloc() : memref<1x1xf16>
    %alloc_7 = memref.alloc() : memref<11x9xf16>
    %alloc_8 = memref.alloc() : memref<3x3xi32>
    %alloc_9 = memref.alloc() : memref<1xf32>
    %alloc_10 = memref.alloc() : memref<3x3xf16>
    %alloc_11 = memref.alloc() : memref<1xf16>
    %alloc_12 = memref.alloc() : memref<3x3xi64>
    %alloc_13 = memref.alloc() : memref<11x9xf32>
    %alloc_14 = memref.alloc() : memref<1x1xi16>
    %alloc_15 = memref.alloc() : memref<1xi16>
    %alloc_16 = memref.alloc() : memref<1xi64>
    %alloc_17 = memref.alloc() : memref<11x9xf16>
    %alloc_18 = memref.alloc() : memref<11x9xi1>
    %alloc_19 = memref.alloc() : memref<1xi64>
    %alloc_20 = memref.alloc() : memref<1x1xf16>
    %16 = tensor.empty() : tensor<1x1xf32>
    %17 = linalg.copy ins(%3 : tensor<1x1xf32>) outs(%16 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %18 = tensor.empty() : tensor<1x1xf16>
    %transposed = linalg.transpose ins(%alloc_20 : memref<1x1xf16>) outs(%18 : tensor<1x1xf16>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<9xi32>
    linalg.reduce ins(%4 : tensor<11x9xi32>) outs(%alloc_21 : memref<9xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %246 = math.log2 %transposed : tensor<1x1xf16>
        %247 = vector.broadcast %true : i1 to vector<3x3xi1>
        %rank_46 = tensor.rank %3 : tensor<1x1xf32>
        %248 = arith.negf %cst : f16
        %249 = math.cos %7 : tensor<11x9xf16>
        %250 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %247, %247, %247 : vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
        %251 = arith.ori %c380021746_i64, %c189287083_i64 : i64
        %252 = vector.shuffle %247, %247 [0, 1, 5] : vector<3x3xi1>, vector<3x3xi1>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %19 = scf.parallel (%arg2) = (%c0) to (%c4) step (%c12) init (%c2034570215_i32) -> i32 {
      %246 = math.floor %17 : tensor<1x1xf32>
      %247 = math.log2 %7 : tensor<11x9xf16>
      %248 = arith.shrui %c2021584652_i32, %c2034570215_i32 : i32
      %249 = memref.atomic_rmw maxu %c1403378331_i32, %alloc_8[%c1, %c2] : (i32, memref<3x3xi32>) -> i32
      %250 = vector.load %alloc_8[%c0, %c0] : memref<3x3xi32>, vector<1xi32>
      %251 = math.roundeven %1 : tensor<11x9xf32>
      %252 = math.round %1 : tensor<11x9xf32>
      %253 = math.rsqrt %12 : tensor<1x1xf16>
      %254 = arith.divui %c1403378331_i32, %c1403378331_i32 : i32
      %rank_46 = tensor.rank %18 : tensor<1x1xf16>
      %255 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d2)>(%c14, %c0, %c15, %c11)
      %256 = arith.muli %false, %true_5 : i1
      %257 = tensor.empty() : tensor<1xf32>
      %mapped_47 = linalg.map ins(%8, %alloc_9, %8 : tensor<1xf32>, memref<1xf32>, tensor<1xf32>) outs(%257 : tensor<1xf32>)
        (%in: f32, %in_50: f32, %in_51: f32) {
          %262 = vector.insertelement %c1403378331_i32, %250[%c12 : index] : vector<1xi32>
          %alloc_52 = memref.alloc() : memref<1xi64>
          %263 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
          %264 = math.log1p %18 : tensor<1x1xf16>
          %265 = affine.max affine_map<(d0, d1) -> (d0 + (d0 floordiv 4) * 32 - d1 floordiv 8)>(%c4, %c9)
          %266 = math.exp2 %6 : tensor<11x9xf32>
          %267 = arith.maxf %in, %in_50 : f32
          %268 = vector.insertelement %c2021584652_i32, %250[%rank_46 : index] : vector<1xi32>
          %269 = affine.max affine_map<(d0) -> (-(-d0 - (-d0) mod 16), (-((-d0) mod 16)) mod 64)>(%rank_46)
          %270 = vector.broadcast %cst_3 : f16 to vector<3x3xf16>
          %271 = vector.broadcast %false : i1 to vector<3x3xi1>
          %272 = vector.broadcast %c2034570215_i32 : i32 to vector<3x3xi32>
          %273 = vector.gather %alloc_10[%c11, %c12] [%272], %271, %270 : memref<3x3xf16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xf16> into vector<3x3xf16>
          %274 = math.exp2 %transposed : tensor<1x1xf16>
          %275 = arith.ori %c189287083_i64, %c380021746_i64 : i64
          %276 = vector.transpose %250, [0] : vector<1xi32> to vector<1xi32>
          %277 = math.cos %7 : tensor<11x9xf16>
          %278 = arith.negf %cst_3 : f16
          %cst_53 = arith.constant 1.000000e+00 : f32
          %cst_54 = arith.constant 0.000000e+00 : f32
          %279 = vector.transfer_read %1[%arg2, %c7], %cst_54 : tensor<11x9xf32>, vector<f32>
          %280 = vector.broadcast %c2021584652_i32 : i32 to vector<1x1xi32>
          %281 = vector.broadcast %c-26202_i16 : i16 to vector<1xi16>
          %282 = vector.broadcast %false : i1 to vector<1xi1>
          %283 = vector.maskedload %alloc[%c0, %c0], %282, %281 : memref<1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          memref.tensor_store %12, %alloc_20 : memref<1x1xf16>
          %284 = math.cttz %13 : tensor<11x9xi32>
          vector.print %270 : vector<3x3xf16>
          %285 = vector.extract %270[1] : vector<3x3xf16>
          %286 = vector.broadcast %c-26202_i16 : i16 to vector<1x1xi16>
          %287 = vector.outerproduct %283, %283, %286 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
          %288 = arith.remui %true, %true_5 : i1
          %inserted_55 = tensor.insert %cst into %12[%c0, %c0] : tensor<1x1xf16>
          memref.store %cst_4, %alloc_9[%c0] : memref<1xf32>
          %rank_56 = tensor.rank %2 : tensor<1x1xi16>
          %289 = math.ceil %6 : tensor<11x9xf32>
          memref.tensor_store %2, %alloc_14 : memref<1x1xi16>
          %290 = arith.cmpf ord, %in_50, %in_50 : f32
          %291 = arith.shrui %c1403378331_i32, %c1403378331_i32 : i32
          %292 = math.ctpop %11 : tensor<3x3xi64>
          %cst_57 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_57 : f32
        }
      %258 = vector.broadcast %c189287083_i64 : i64 to vector<3x3xi64>
      %259 = vector.broadcast %c345113398_i64 : i64 to vector<3xi64>
      %dest_48, %accumulated_value_49 = vector.scan <mul>, %258, %259 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi64>, vector<3xi64>
      %260 = index.ceildivu %c7, %c9
      %261 = arith.maxui %c2034570215_i32, %c1403378331_i32 : i32
      %c1_i32 = arith.constant 1 : i32
      scf.reduce(%c1_i32)  : i32 {
      ^bb0(%arg3: i32, %arg4: i32):
        memref.assume_alignment %alloc_18, 1 : memref<11x9xi1>
        memref.assume_alignment %alloc_14, 1 : memref<1x1xi16>
        %262 = index.ceildivu %c2, %c8
        %expanded_50 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
        memref.store %c189287083_i64, %alloc_16[%c0] : memref<1xi64>
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %250, %250, %c1403378331_i32 : vector<1xi32>, vector<1xi32> into i32
        %264 = tensor.empty() : tensor<1xf32>
        affine.store %cst_0, %alloc_13[%c12, %c8] : memref<11x9xf32>
        %c0_i32_51 = arith.constant 0 : i32
        scf.reduce.return %c0_i32_51 : i32
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_19[%c12] : memref<1xi64>, vector<3xi64>
    affine.vector_store %20, %alloc_19[%c12] : memref<1xi64>, vector<3xi64>
    %21 = tensor.empty() : tensor<1xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%0, %21 : tensor<1xi32>, tensor<1xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = math.log1p %6 : tensor<11x9xf32>
    %25 = math.absi %2 : tensor<1x1xi16>
    %26 = memref.realloc %alloc_16 : memref<1xi64> to memref<9xi64>
    %27 = vector.broadcast %c189287083_i64 : i64 to vector<3x3xi64>
    %28 = vector.outerproduct %20, %20, %27 {kind = #vector.kind<maxsi>} : vector<3xi64>, vector<3xi64>
    %29 = math.tan %6 : tensor<11x9xf32>
    memref.store %cst_1, %alloc_6[%c0, %c0] : memref<1x1xf16>
    %30 = arith.addi %c189287083_i64, %c380021746_i64 : i64
    %31 = math.ctlz %13 : tensor<11x9xi32>
    %32 = math.exp %17 : tensor<1x1xf32>
    %33 = math.exp2 %cst_1 : f16
    %34 = math.ipowi %14, %14 : tensor<1x1xi16>
    %35 = arith.divui %c2034570215_i32, %c1403378331_i32 : i32
    memref.store %cst_3, %alloc_11[%c0] : memref<1xf16>
    %36 = math.ipowi %0, %0 : tensor<1xi32>
    %37 = arith.ori %c380021746_i64, %c189287083_i64 : i64
    %38 = vector.reduction <maxsi>, %20 : vector<3xi64> into i64
    %39 = math.exp2 %3 : tensor<1x1xf32>
    %40 = vector.transpose %20, [0] : vector<3xi64> to vector<3xi64>
    %41 = math.ceil %7 : tensor<11x9xf16>
    %extracted = tensor.extract %2[%c0, %c0] : tensor<1x1xi16>
    %42 = tensor.empty() : tensor<11x9xi16>
    %43 = vector.broadcast %c-26202_i16 : i16 to vector<3x3xi16>
    %44 = vector.broadcast %true_5 : i1 to vector<3x3xi1>
    %45 = vector.broadcast %c2021584652_i32 : i32 to vector<3x3xi32>
    %46 = vector.gather %42[%c12, %c15] [%45], %44, %43 : tensor<11x9xi16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi16> into vector<3x3xi16>
    %47 = bufferization.to_memref %10 : memref<1x1xi32>
    %48 = affine.max affine_map<(d0) -> (d0 * 129 + 24, d0 * 128 - (d0 + 24) mod 64)>(%c13)
    %49 = vector.load %47[%c0, %c0] : memref<1x1xi32>, vector<1xi32>
    %50 = bufferization.to_tensor %alloc_13 : memref<11x9xf32>
    %51 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
    %52 = vector.splat %c380021746_i64 : vector<1x1xi64>
    %53 = vector.transpose %45, [0, 1] : vector<3x3xi32> to vector<3x3xi32>
    %54 = math.log %6 : tensor<11x9xf32>
    %55 = arith.negf %cst_1 : f16
    %56 = math.fma %3, %3, %17 : tensor<1x1xf32>
    %57 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %49, %49, %c1403378331_i32 : vector<1xi32>, vector<1xi32> into i32
    %58 = vector.transpose %46, [1, 0] : vector<3x3xi16> to vector<3x3xi16>
    %59 = math.log %1 : tensor<11x9xf32>
    %60 = tensor.empty() : tensor<3x3x3xi32>
    %61 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_8, %alloc_8 : memref<3x3xi32>, memref<3x3xi32>) outs(%60 : tensor<3x3x3xi32>) {
    ^bb0(%in: i32, %in_46: i32, %out: i32):
      %246 = arith.floordivsi %c345113398_i64, %c189287083_i64 : i64
      %247 = math.round %transposed : tensor<1x1xf16>
      bufferization.dealloc_tensor %50 : tensor<11x9xf32>
      %248 = math.copysign %12, %18 : tensor<1x1xf16>
      %249 = vector.broadcast %extracted : i16 to vector<3xi16>
      %dest_47, %accumulated_value_48 = vector.scan <xor>, %43, %249 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xi16>, vector<3xi16>
      %250 = vector.load %alloc_12[%c0, %c0] : memref<3x3xi64>, vector<3x3xi64>
      %251 = arith.shrui %extracted, %c-26202_i16 : i16
      %252 = arith.remsi %c189287083_i64, %c380021746_i64 : i64
      %253 = vector.broadcast %in_46 : i32 to vector<1xi32>
      %254 = arith.maxsi %c189287083_i64, %c189287083_i64 : i64
      %inserted_49 = tensor.insert %cst_3 into %7[%c0, %c3] : tensor<11x9xf16>
      %255 = affine.if affine_set<(d0, d1, d2, d3) : (-d3 + d0 mod 16 + 8 == 0, d3 == 0, -d3 + d0 mod 16 + 8 - (d0 mod 16 + d0 + 8) == 0, d2 * 64 == 0)>(%c2, %c12, %c12, %c0) -> memref<3x3xf16> {
        %274 = vector.broadcast %in_46 : i32 to vector<3xi32>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %45, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi32>, vector<3xi32>
        %275 = index.sizeof
        %276 = vector.transpose %253, [0] : vector<1xi32> to vector<1xi32>
        %277 = index.floordivs %c12, %c14
        %278 = memref.realloc %alloc_19 : memref<1xi64> to memref<3xi64>
        memref.store %cst_3, %alloc_17[%c10, %c1] : memref<11x9xf16>
        %279 = vector.bitcast %46 : vector<3x3xi16> to vector<3x3xf16>
        %280 = arith.cmpf ole, %cst_3, %cst_3 : f16
        affine.yield %alloc_10 : memref<3x3xf16>
      } else {
        %274 = math.log2 %1 : tensor<11x9xf32>
        %275 = math.round %transposed : tensor<1x1xf16>
        %276 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %277 = vector.fma %276, %276, %276 : vector<1x1xf32>
        %278 = vector.shuffle %276, %276 [0] : vector<1x1xf32>, vector<1x1xf32>
        %279 = vector.matrix_multiply %49, %49 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        vector.print %43 : vector<3x3xi16>
        %false_52 = index.bool.constant false
        %280 = vector.matrix_multiply %49, %253 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        affine.yield %alloc_10 : memref<3x3xf16>
      }
      %256 = math.exp %cst_0 : f32
      %257 = index.castu %c2 : index to i32
      %258 = vector.broadcast %c189287083_i64 : i64 to vector<1xi64>
      %259 = vector.transfer_write %258, %11[%c3, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, tensor<3x3xi64>
      %260 = math.expm1 %transposed : tensor<1x1xf16>
      %261 = bufferization.to_memref %12 : memref<1x1xf16>
      %262 = arith.shrui %extracted, %extracted : i16
      %263 = arith.mulf %cst_4, %cst_4 : f32
      %264 = vector.splat %c7 : vector<1xindex>
      %collapsed_50 = tensor.collapse_shape %3 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
      %265 = math.round %17 : tensor<1x1xf32>
      %expanded_51 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
      %266 = math.exp2 %collapsed_50 : tensor<1xf32>
      %267 = bufferization.to_memref %2 : memref<1x1xi16>
      %268 = vector.reduction <xor>, %49 : vector<1xi32> into i32
      %269 = vector.splat %c380021746_i64 : vector<11x9xi64>
      %270 = math.tan %cst_1 : f16
      %271 = arith.shrui %false, %false : i1
      %272 = affine.load %261[%c14, %c15] : memref<1x1xf16>
      bufferization.dealloc_tensor %50 : tensor<11x9xf32>
      %273 = vector.reduction <maxsi>, %253 : vector<1xi32> into i32
      linalg.yield %c2034570215_i32 : i32
    } -> tensor<3x3x3xi32>
    %62 = math.cos %50 : tensor<11x9xf32>
    %splat = tensor.splat %cst : tensor<1x1xf16>
    %expanded = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
    %63 = vector.extract %46[2] : vector<3x3xi16>
    %64 = math.absf %6 : tensor<11x9xf32>
    %65 = vector.load %alloc_17[%c5, %c0] : memref<11x9xf16>, vector<11x9xf16>
    %rank = tensor.rank %expanded : tensor<1x1x1xf16>
    %c1186835993_i32 = arith.constant 1186835993 : i32
    scf.execute_region {
      %246 = math.expm1 %1 : tensor<11x9xf32>
      %247 = tensor.empty(%48) : tensor<1x?xi16>
      %248 = math.round %12 : tensor<1x1xf16>
      bufferization.dealloc_tensor %13 : tensor<11x9xi32>
      %249 = math.tan %50 : tensor<11x9xf32>
      %250 = math.log1p %expanded : tensor<1x1x1xf16>
      %251 = affine.max affine_map<(d0) -> (((d0 mod 4) * 3) mod 16 - (d0 mod 4) * 3)>(%c8)
      %splat_46 = tensor.splat %c1403378331_i32 : tensor<11x9xi32>
      %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x1xi32> into tensor<1x1x1xi32>
      %252 = arith.negf %cst_0 : f32
      %expanded_48 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<11x9xf32> into tensor<11x9x1xf32>
      %253 = vector.shuffle %45, %45 [0, 1, 2, 3] : vector<3x3xi32>, vector<3x3xi32>
      %254 = arith.ceildivsi %c-26202_i16, %extracted : i16
      %255 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi64> to vector<1xi64>
      %256 = bufferization.clone %alloc_19 : memref<1xi64> to memref<1xi64>
      %257 = math.cttz %9 : tensor<1x1xi1>
      scf.yield
    }
    %66 = vector.outerproduct %63, %63, %43 {kind = #vector.kind<minui>} : vector<3xi16>, vector<3xi16>
    %67 = memref.atomic_rmw assign %cst_3, %alloc_6[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
    %expanded_22 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
    %68 = math.expm1 %12 : tensor<1x1xf16>
    %69 = scf.index_switch %rank -> vector<1xi32> 
    case 1 {
      %splat_46 = tensor.splat %cst_1 : tensor<3x3xf16>
      %246 = arith.shrui %c345113398_i64, %c345113398_i64 : i64
      %247 = math.log2 %splat_46 : tensor<3x3xf16>
      %inserted_47 = tensor.insert %c-26202_i16 into %2[%c0, %c0] : tensor<1x1xi16>
      %248 = index.divu %48, %c15
      %249 = bufferization.to_memref %14 : memref<1x1xi16>
      %250 = vector.transpose %20, [0] : vector<3xi64> to vector<3xi64>
      %expanded_48 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<11x9xf16> into tensor<11x9x1xf16>
      memref.tensor_store %splat, %alloc_20 : memref<1x1xf16>
      %251 = math.cos %1 : tensor<11x9xf32>
      %252 = math.tan %12 : tensor<1x1xf16>
      %253 = memref.realloc %alloc_19 : memref<1xi64> to memref<11xi64>
      affine.store %cst_1, %alloc_11[%c2] : memref<1xf16>
      %cast_49 = tensor.cast %15 : tensor<3x3xi1> to tensor<?x?xi1>
      %254 = math.copysign %8, %8 : tensor<1xf32>
      %255 = vector.shuffle %20, %20 [3, 4, 5] : vector<3xi64>, vector<3xi64>
      scf.yield %49 : vector<1xi32>
    }
    case 2 {
      %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15, %alloc_14 : memref<1xi16>, memref<1x1xi16>) outs(%expanded_22 : tensor<1x1x1xi16>) {
      ^bb0(%in: i16, %in_49: i16, %out: i16):
        %259 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %45, %45, %45 : vector<3x3xi32>, vector<3x3xi32> into vector<3x3xi32>
        %260 = index.mul %c15, %c9
        %261 = arith.divf %cst_2, %cst_2 : f32
        %262 = vector.broadcast %cst : f16 to vector<9xf16>
        %dest_50, %accumulated_value_51 = vector.scan <maxf>, %65, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<11x9xf16>, vector<9xf16>
        %263 = math.tan %splat : tensor<1x1xf16>
        %264 = arith.cmpf ule, %cst_3, %cst : f16
        %265 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 8 - 64) ceildiv 2, d1 ceildiv 8 - 72, d1 ceildiv 8 - 64, d1 floordiv 32)>(%rank, %c14)
        %266 = arith.cmpf oge, %cst_3, %cst_1 : f16
        %267 = math.exp2 %12 : tensor<1x1xf16>
        %268 = arith.ori %c189287083_i64, %c189287083_i64 : i64
        %269 = math.copysign %50, %50 : tensor<11x9xf32>
        %270 = vector.insertelement %c189287083_i64, %20[%c10 : index] : vector<3xi64>
        %271 = math.log10 %cst : f16
        %alloca_52 = memref.alloca() : memref<3x3xi16>
        %272 = arith.remf %cst_1, %cst_1 : f16
        %273 = affine.max affine_map<(d0, d1) -> (d0)>(%c8, %48)
        vector.print %20 : vector<3xi64>
        %274 = math.fma %cst_0, %cst_4, %cst_0 : f32
        %275 = index.divu %rank, %c5
        %276 = arith.remf %cst_4, %cst_4 : f32
        %cst_53 = arith.constant 1.85015693E+9 : f32
        %277 = arith.shrsi %extracted, %out : i16
        memref.tensor_store %1, %alloc_13 : memref<11x9xf32>
        %278 = arith.cmpf one, %cst_3, %cst_1 : f16
        %279 = math.ctlz %14 : tensor<1x1xi16>
        %280 = math.rsqrt %17 : tensor<1x1xf32>
        %281 = tensor.empty() : tensor<11x9xi64>
        %282 = tensor.empty() : tensor<1x1xi64>
        %expanded_54 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<11x9xi32> into tensor<11x9x1xi32>
        %extracted_55 = tensor.extract %expanded[%c0, %c0, %c0] : tensor<1x1x1xf16>
        %283 = arith.maxui %in_49, %in_49 : i16
        %284 = math.absf %3 : tensor<1x1xf32>
        linalg.yield %extracted : i16
      } -> tensor<1x1x1xi16>
      %247 = tensor.empty() : tensor<1xi1>
      %mapped_46 = linalg.map ins(%5, %5 : tensor<1xi1>, tensor<1xi1>) outs(%247 : tensor<1xi1>)
        (%in: i1, %in_49: i1) {
          %259 = math.cos %cst : f16
          %260 = vector.insertelement %c1403378331_i32, %49[%c8 : index] : vector<1xi32>
          %alloc_50 = memref.alloc() : memref<1x1xi64>
          %261 = arith.minui %extracted, %c-26202_i16 : i16
          %262 = math.rsqrt %cst_0 : f32
          %263 = vector.broadcast %c380021746_i64 : i64 to vector<3x3xi64>
          %264 = vector.outerproduct %20, %20, %263 {kind = #vector.kind<add>} : vector<3xi64>, vector<3xi64>
          %265 = math.rsqrt %17 : tensor<1x1xf32>
          %266 = arith.cmpf true, %cst_4, %cst_2 : f32
          %267 = math.log2 %expanded : tensor<1x1x1xf16>
          %268 = math.absi %5 : tensor<1xi1>
          %rank_51 = tensor.rank %13 : tensor<11x9xi32>
          %alloc_52 = memref.alloc() : memref<i32>
          memref.tensor_store %22, %alloc_52 : memref<i32>
          %269 = vector.transpose %63, [0] : vector<3xi16> to vector<3xi16>
          %270 = index.ceildivu %c14, %rank
          %271 = vector.flat_transpose %49 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %rank_53 = tensor.rank %8 : tensor<1xf32>
          %272 = memref.atomic_rmw ori %c380021746_i64, %alloc_19[%c0] : (i64, memref<1xi64>) -> i64
          %273 = index.divs %rank_53, %c1
          memref.store %cst_1, %alloc_7[%c8, %c8] : memref<11x9xf16>
          %274 = math.fma %50, %1, %1 : tensor<11x9xf32>
          %275 = memref.atomic_rmw minu %c2034570215_i32, %alloc_21[%c6] : (i32, memref<9xi32>) -> i32
          %276 = vector.splat %rank_53 : vector<1xindex>
          %277 = math.cttz %c1403378331_i32 : i32
          memref.assume_alignment %alloc_20, 4 : memref<1x1xf16>
          %splat_54 = tensor.splat %cst_1 : tensor<11x9xf16>
          %278 = math.exp %cst_4 : f32
          %279 = math.cttz %22 : tensor<i32>
          %280 = arith.floordivsi %true_5, %false : i1
          %expanded_55 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<1x1x1xf16> into tensor<1x1x1x1xf16>
          %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %20, %20, %c345113398_i64 : vector<3xi64>, vector<3xi64> into i64
          %alloca_56 = memref.alloca() : memref<1xi1>
          %true_57 = index.bool.constant true
          %true_58 = arith.constant true
          linalg.yield %true_58 : i1
        }
      memref.tensor_store %11, %alloc_12 : memref<3x3xi64>
      %248 = math.copysign %6, %50 : tensor<11x9xf32>
      %249 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d0 == 0, d2 floordiv 32 >= 0, d0 + 32 >= 0)>(%c11, %c7, %c11, %c9) -> memref<11x9xi64> {
        %259 = arith.floordivsi %c-26202_i16, %c-26202_i16 : i16
        %260 = arith.shrui %c189287083_i64, %c345113398_i64 : i64
        %261 = arith.divui %extracted, %c-26202_i16 : i16
        %262 = math.cos %cst_4 : f32
        %263 = arith.cmpf ugt, %cst_2, %cst_2 : f32
        %264 = vector.matrix_multiply %49, %49 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %expanded_49 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
        %265 = memref.realloc %alloc_19 : memref<1xi64> to memref<9xi64>
        %alloc_50 = memref.alloc() : memref<11x9xi64>
        affine.yield %alloc_50 : memref<11x9xi64>
      } else {
        %259 = memref.atomic_rmw assign %cst_2, %alloc_9[%c0] : (f32, memref<1xf32>) -> f32
        %260 = arith.divsi %true, %true_5 : i1
        %261 = memref.realloc %alloc_15 : memref<1xi16> to memref<1xi16>
        %262 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %263 = arith.muli %extracted, %extracted : i16
        %264 = arith.remui %false, %false : i1
        %265 = math.sqrt %transposed : tensor<1x1xf16>
        %266 = arith.subi %c1403378331_i32, %c1403378331_i32 : i32
        %alloc_49 = memref.alloc() : memref<11x9xi64>
        affine.yield %alloc_49 : memref<11x9xi64>
      }
      %inserted_47 = tensor.insert %c2034570215_i32 into %0[%c0] : tensor<1xi32>
      %250 = arith.remf %cst_1, %cst_1 : f16
      %251 = arith.mulf %cst_3, %cst : f16
      %252 = vector.transpose %20, [0] : vector<3xi64> to vector<3xi64>
      scf.execute_region {
        %259 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %46, %63, %63 : vector<3x3xi16>, vector<3xi16> into vector<3xi16>
        memref.assume_alignment %alloc_11, 2 : memref<1xf16>
        %260 = bufferization.clone %47 : memref<1x1xi32> to memref<1x1xi32>
        %splat_49 = tensor.splat %c189287083_i64 : tensor<3x3xi64>
        %261 = bufferization.to_tensor %alloc_15 : memref<1xi16>
        %262 = arith.remsi %extracted, %extracted : i16
        %263 = arith.remui %c-26202_i16, %extracted : i16
        %c1_i32 = arith.constant 1 : i32
        %264 = vector.transfer_read %13[%c14, %c15], %c1_i32 : tensor<11x9xi32>, vector<1xi32>
        %265 = vector.broadcast %c2021584652_i32 : i32 to vector<3xi32>
        %dest_50, %accumulated_value_51 = vector.scan <maxui>, %45, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xi32>, vector<3xi32>
        %266 = memref.load %alloc_18[%c7, %c7] : memref<11x9xi1>
        %267 = bufferization.clone %alloc_6 : memref<1x1xf16> to memref<1x1xf16>
        %268 = math.atan2 %cst, %cst_3 : f16
        %269 = math.atan2 %splat, %transposed : tensor<1x1xf16>
        %270 = index.divs %rank, %c12
        %271 = index.maxu %c1, %c2
        %true_52 = index.bool.constant true
        scf.yield
      }
      %253 = math.expm1 %splat : tensor<1x1xf16>
      %254 = index.sizeof
      %cst_48 = arith.constant 1.000000e+00 : f16
      %255 = vector.transfer_read %7[%c12, %c5], %cst_48 : tensor<11x9xf16>, vector<1xf16>
      %256 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0, d3 + d2 >= 0, (d3 + d2) mod 2 == 0, d0 mod 2 >= 0)>(%c12, %c14, %c14, %c5) -> memref<1xi32> {
        %259 = math.cttz %11 : tensor<3x3xi64>
        %260 = arith.divf %cst_2, %cst_4 : f32
        %261 = math.roundeven %cst_2 : f32
        %262 = math.copysign %1, %1 : tensor<11x9xf32>
        %263 = math.log10 %12 : tensor<1x1xf16>
        %264 = index.add %c2, %c2
        %265 = math.round %cst_48 : f16
        %alloc_49 = memref.alloc() : memref<9x9xi32>
        %266 = tensor.empty() : tensor<11x9xi32>
        %267 = linalg.matmul ins(%13, %alloc_49 : tensor<11x9xi32>, memref<9x9xi32>) outs(%266 : tensor<11x9xi32>) -> tensor<11x9xi32>
        %alloc_50 = memref.alloc() : memref<1xi32>
        affine.yield %alloc_50 : memref<1xi32>
      } else {
        %259 = arith.subi %c189287083_i64, %c380021746_i64 : i64
        %260 = math.round %cst : f16
        %261 = bufferization.clone %alloc_15 : memref<1xi16> to memref<1xi16>
        %262 = math.log1p %cst : f16
        %263 = index.divu %c7, %c15
        %264 = arith.shrsi %c189287083_i64, %c189287083_i64 : i64
        %expanded_49 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<1x1xi1> into tensor<1x1x1xi1>
        %c1_i32 = arith.constant 1 : i32
        %265 = vector.transfer_read %10[%48, %c0], %c1_i32 : tensor<1x1xi32>, vector<9xi32>
        %alloc_50 = memref.alloc() : memref<1xi32>
        affine.yield %alloc_50 : memref<1xi32>
      }
      %257 = vector.broadcast %c1403378331_i32 : i32 to vector<i32>
      vector.transfer_write %257, %alloc_8[%c6, %c11] : vector<i32>, memref<3x3xi32>
      %258 = bufferization.clone %alloc_17 : memref<11x9xf16> to memref<11x9xf16>
      scf.yield %49 : vector<1xi32>
    }
    case 3 {
      %246 = arith.minui %extracted, %c-26202_i16 : i16
      %247 = bufferization.to_memref %22 : memref<i32>
      %248 = arith.muli %c380021746_i64, %c380021746_i64 : i64
      %249 = vector.bitcast %46 : vector<3x3xi16> to vector<3x3xf16>
      %250 = arith.cmpf oge, %cst, %cst_3 : f16
      %rank_46 = tensor.rank %8 : tensor<1xf32>
      %c8717_i16 = arith.constant 8717 : i16
      vector.print %49 : vector<1xi32>
      %251 = arith.shli %c189287083_i64, %c380021746_i64 : i64
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %49, %49, %c2021584652_i32 : vector<1xi32>, vector<1xi32> into i32
      %253 = math.ctlz %c189287083_i64 : i64
      %cast_47 = tensor.cast %2 : tensor<1x1xi16> to tensor<?x?xi16>
      %254 = math.ctpop %c189287083_i64 : i64
      %255 = math.round %18 : tensor<1x1xf16>
      %256 = math.log1p %1 : tensor<11x9xf32>
      %257 = math.tan %7 : tensor<11x9xf16>
      scf.yield %49 : vector<1xi32>
    }
    default {
      %246 = math.roundeven %cst_1 : f16
      %247 = math.exp %3 : tensor<1x1xf32>
      %248 = vector.outerproduct %63, %63, %46 {kind = #vector.kind<minui>} : vector<3xi16>, vector<3xi16>
      %249 = index.mul %c0, %c8
      %250 = vector.load %alloc_10[%c1, %c1] : memref<3x3xf16>, vector<11x9xf16>
      %251 = math.round %transposed : tensor<1x1xf16>
      %252 = math.ctpop %10 : tensor<1x1xi32>
      %253 = arith.ceildivsi %c2034570215_i32, %c1403378331_i32 : i32
      %254 = math.cttz %c1403378331_i32 : i32
      %255 = index.casts %c1403378331_i32 : i32 to index
      %256 = arith.ori %true, %false : i1
      memref.store %c380021746_i64, %alloc_19[%c0] : memref<1xi64>
      %257 = memref.realloc %alloc_11 : memref<1xf16> to memref<9xf16>
      %258 = vector.extract %20[0] : vector<3xi64>
      %259 = scf.index_switch %249 -> memref<11x9xf32> 
      case 1 {
        %261 = index.ceildivu %255, %c14
        %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c9, %48, %c2, %c4)
        %splat_46 = tensor.splat %c1403378331_i32 : tensor<1x1xi32>
        %263 = vector.flat_transpose %49 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %264 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 128)>(%c11, %c9)
        %265 = vector.transpose %43, [0, 1] : vector<3x3xi16> to vector<3x3xi16>
        %266 = bufferization.to_memref %11 : memref<3x3xi64>
        %267 = bufferization.to_memref %16 : memref<1x1xf32>
        %extracted_47 = tensor.extract %1[%c10, %c7] : tensor<11x9xf32>
        %268 = tensor.empty() : tensor<11x9xi32>
        %269 = vector.broadcast %c2034570215_i32 : i32 to vector<1x1xi32>
        %270 = vector.broadcast %c1403378331_i32 : i32 to vector<11x9xi32>
        %271 = bufferization.to_memref %12 : memref<1x1xf16>
        %272 = index.castu %c2034570215_i32 : i32 to index
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %269, %49 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xi32>, vector<1xi32>
        %273 = vector.create_mask %c10, %c11 : vector<11x9xi1>
        scf.yield %alloc_13 : memref<11x9xf32>
      }
      case 2 {
        %261 = vector.load %alloc_19[%c0] : memref<1xi64>, vector<3x3xi64>
        %262 = tensor.empty() : tensor<1x1xi16>
        %263 = linalg.matmul ins(%2, %2 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%262 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %264 = arith.shrsi %c2034570215_i32, %c1403378331_i32 : i32
        %265 = tensor.empty() : tensor<1xi1>
        %266 = index.divs %c8, %c5
        memref.assume_alignment %alloc_11, 1 : memref<1xf16>
        %267 = arith.minsi %c2021584652_i32, %c2034570215_i32 : i32
        %268 = index.divu %c3, %c15
        %269 = arith.minui %c1403378331_i32, %c2021584652_i32 : i32
        %270 = math.atan2 %expanded, %expanded : tensor<1x1x1xf16>
        %271 = math.exp2 %12 : tensor<1x1xf16>
        %272 = index.castu %c6 : index to i32
        %273 = math.tan %8 : tensor<1xf32>
        %274 = arith.negf %cst_3 : f16
        %275 = index.castu %true : i1 to index
        %276 = bufferization.to_tensor %alloc_18 : memref<11x9xi1>
        scf.yield %alloc_13 : memref<11x9xf32>
      }
      default {
        %261 = vector.transpose %45, [1, 0] : vector<3x3xi32> to vector<3x3xi32>
        %262 = vector.outerproduct %63, %63, %43 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
        %263 = arith.maxui %extracted, %extracted : i16
        %264 = arith.shrui %true_5, %true_5 : i1
        %alloca_46 = memref.alloca() : memref<1xf32>
        %inserted_47 = tensor.insert %cst_1 into %7[%c9, %c5] : tensor<11x9xf16>
        bufferization.dealloc_tensor %9 : tensor<1x1xi1>
        %265 = index.ceildivu %c7, %c8
        %266 = vector.broadcast %c1403378331_i32 : i32 to vector<1x1xi32>
        %267 = vector.outerproduct %49, %49, %266 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
        %268 = vector.splat %c-26202_i16 : vector<1x1xi16>
        %269 = index.ceildivs %265, %c5
        %true_48 = arith.constant true
        %270 = vector.transfer_read %9[%c8, %249], %true_48 : tensor<1x1xi1>, vector<i1>
        %271 = vector.flat_transpose %63 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %272 = vector.outerproduct %271, %63, %43 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
        %273 = index.maxu %c2, %c11
        %274 = vector.broadcast %cst : f16 to vector<9xf16>
        %275 = vector.insert %274, %65 [0] : vector<9xf16> into vector<11x9xf16>
        scf.yield %alloc_13 : memref<11x9xf32>
      }
      %260 = index.mul %c14, %c1
      scf.yield %49 : vector<1xi32>
    }
    %70 = arith.maxf %cst_1, %cst_3 : f16
    %71 = math.log2 %7 : tensor<11x9xf16>
    %72 = math.cttz %c1403378331_i32 : i32
    memref.store %cst_1, %alloc_6[%c0, %c0] : memref<1x1xf16>
    %73 = vector.reduction <maxsi>, %49 : vector<1xi32> into i32
    %74 = arith.remui %c380021746_i64, %c380021746_i64 : i64
    %75 = arith.remui %false, %true : i1
    %76 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - 64, (d0 + d1) * 32 + 2, -(d0 + d1), (d0 + d1) * 32)>(%48, %48, %c11, %c8)
    %77 = memref.atomic_rmw ori %c2021584652_i32, %alloc_8[%c0, %c2] : (i32, memref<3x3xi32>) -> i32
    %78 = math.fpowi %8, %0 : tensor<1xf32>, tensor<1xi32>
    %79 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_6 : memref<1x1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %246 = bufferization.clone %alloc_11 : memref<1xf16> to memref<1xf16>
      %247 = math.atan2 %cst_2, %cst_2 : f32
      %c1816074541_i32 = arith.constant 1816074541 : i32
      %248 = math.tanh %3 : tensor<1x1xf32>
      %249 = bufferization.clone %246 : memref<1xf16> to memref<1xf16>
      %250 = arith.remf %in, %cst_3 : f16
      %251 = vector.broadcast %cst_3 : f16 to vector<11xf16>
      %dest_46, %accumulated_value_47 = vector.scan <add>, %65, %251 {inclusive = true, reduction_dim = 1 : i64} : vector<11x9xf16>, vector<11xf16>
      %252 = affine.for %arg2 = 0 to 116 iter_args(%arg3 = %true) -> (i1) {
        affine.yield %true : i1
      }
      %253 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %63, %46, %63 : vector<3xi16>, vector<3x3xi16> into vector<3xi16>
      %254 = index.casts %76 : index to i32
      %255 = index.castu %true_5 : i1 to index
      memref.assume_alignment %47, 1 : memref<1x1xi32>
      %256 = math.exp %8 : tensor<1xf32>
      %257 = affine.for %arg2 = 0 to 75 iter_args(%arg3 = %12) -> (tensor<1x1xf16>) {
        affine.yield %18 : tensor<1x1xf16>
      }
      %258 = arith.shrui %false, %true : i1
      %rank_48 = tensor.rank %12 : tensor<1x1xf16>
      %259 = index.mul %c2, %c13
      %extracted_49 = tensor.extract %13[%c6, %c2] : tensor<11x9xi32>
      memref.store %out, %249[%c0] : memref<1xf16>
      %260 = bufferization.clone %alloc_17 : memref<11x9xf16> to memref<11x9xf16>
      %261 = math.expm1 %12 : tensor<1x1xf16>
      %262 = index.divs %255, %rank
      %263 = math.tan %18 : tensor<1x1xf16>
      %264 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %265 = index.divu %c14, %c1
      memref.assume_alignment %249, 1 : memref<1xf16>
      %266 = math.log2 %12 : tensor<1x1xf16>
      %267 = arith.shrui %c-26202_i16, %extracted : i16
      %268 = memref.realloc %alloc_9 : memref<1xf32> to memref<3xf32>
      %collapsed_50 = tensor.collapse_shape %expanded_22 [[0, 1], [2]] : tensor<1x1x1xi16> into tensor<1x1xi16>
      %269 = math.ceil %7 : tensor<11x9xf16>
      %270 = math.tanh %cst_0 : f32
      linalg.yield %cst_1 : f16
    } -> tensor<1x1x1xf16>
    affine.store %c2034570215_i32, %alloc_21[%c2] : memref<9xi32>
    %80 = vector.reduction <maxsi>, %63 : vector<3xi16> into i16
    %81 = bufferization.to_tensor %alloc_18 : memref<11x9xi1>
    %82 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15 : memref<1xi16>) outs(%expanded_22 : tensor<1x1x1xi16>) {
    ^bb0(%in: i16, %out: i16):
      %246 = arith.shrsi %false, %false : i1
      %247 = affine.if affine_set<(d0, d1, d2, d3) : (d0 floordiv 8 == 0, d2 - 32 >= 0, d2 >= 0)>(%c2, %c7, %c3, %c11) -> i64 {
        %275 = vector.create_mask %c3, %c7 : vector<11x9xi1>
        %inserted_52 = tensor.insert %c189287083_i64 into %11[%c0, %c2] : tensor<3x3xi64>
        %276 = index.castu %c1 : index to i32
        %277 = memref.atomic_rmw mulf %cst_1, %alloc_20[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
        %278 = vector.outerproduct %63, %63, %46 {kind = #vector.kind<add>} : vector<3xi16>, vector<3xi16>
        %279 = math.tanh %1 : tensor<11x9xf32>
        %280 = vector.broadcast %c2021584652_i32 : i32 to vector<1x1xi32>
        %281 = vector.outerproduct %49, %49, %280 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %282 = math.ceil %transposed : tensor<1x1xf16>
        affine.yield %c380021746_i64 : i64
      } else {
        %275 = math.copysign %6, %6 : tensor<11x9xf32>
        affine.store %c380021746_i64, %alloc_12[%c9, %c15] : memref<3x3xi64>
        %276 = arith.ceildivsi %in, %out : i16
        %false_52 = index.bool.constant false
        %277 = math.ipowi %true_5, %true_5 : i1
        %278 = bufferization.to_memref %4 : memref<11x9xi32>
        %279 = math.ctlz %10 : tensor<1x1xi32>
        %280 = arith.ori %c2034570215_i32, %c2021584652_i32 : i32
        affine.yield %c345113398_i64 : i64
      }
      %248 = vector.matrix_multiply %20, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
      %249 = arith.mulf %cst_1, %cst_1 : f16
      %250 = math.atan %50 : tensor<11x9xf32>
      %251 = index.divs %c12, %c15
      %252 = arith.maxf %cst_2, %cst_0 : f32
      %253 = arith.ceildivsi %in, %in : i16
      %254 = vector.extract_strided_slice %65 {offsets = [3], sizes = [1], strides = [1]} : vector<11x9xf16> to vector<1x9xf16>
      %extracted_46 = tensor.extract %17[%c0, %c0] : tensor<1x1xf32>
      %255 = math.tanh %extracted_46 : f32
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18 : tensor<1x1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
      ^bb0(%in_52: f16, %out_53: f16):
        %275 = vector.shuffle %43, %43 [1] : vector<3x3xi16>, vector<3x3xi16>
        %276 = vector.transpose %254, [0, 1] : vector<1x9xf16> to vector<1x9xf16>
        %277 = vector.broadcast %cst_4 : f32 to vector<11x9xf32>
        %278 = vector.fma %277, %277, %277 : vector<11x9xf32>
        memref.tensor_store %1, %alloc_13 : memref<11x9xf32>
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %43, %63 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi16>, vector<3xi16>
        %279 = index.castu %c6 : index to i32
        %extracted_56 = tensor.extract %5[%c0] : tensor<1xi1>
        %280 = bufferization.to_memref %11 : memref<3x3xi64>
        %281 = memref.atomic_rmw maxf %cst_3, %alloc_7[%c10, %c0] : (f16, memref<11x9xf16>) -> f16
        %282 = math.cos %3 : tensor<1x1xf32>
        %283 = math.absf %50 : tensor<11x9xf32>
        %284 = arith.shrsi %c345113398_i64, %c345113398_i64 : i64
        %false_57 = arith.constant false
        %285 = vector.transfer_read %5[%48], %false_57 : tensor<1xi1>, vector<i1>
        %286 = index.ceildivu %rank, %c9
        %287 = bufferization.to_memref %9 : memref<1x1xi1>
        %288 = arith.shrui %c1403378331_i32, %c2034570215_i32 : i32
        %289 = math.round %cst_1 : f16
        %290 = math.cos %cst_2 : f32
        %291 = math.cttz %0 : tensor<1xi32>
        %292 = arith.shrui %c2021584652_i32, %c2021584652_i32 : i32
        %293 = vector.bitcast %277 : vector<11x9xf32> to vector<11x9xi32>
        %294 = vector.broadcast %true_5 : i1 to vector<1xi1>
        %295 = arith.ceildivsi %in, %extracted : i16
        %extracted_58 = tensor.extract %7[%c1, %c2] : tensor<11x9xf16>
        %296 = math.exp2 %cst_0 : f32
        %297 = vector.flat_transpose %49 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %298 = arith.shrsi %true, %true : i1
        %299 = vector.flat_transpose %294 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %300 = math.cos %12 : tensor<1x1xf16>
        %301 = memref.atomic_rmw mins %c2021584652_i32, %alloc_8[%c2, %c1] : (i32, memref<3x3xi32>) -> i32
        %302 = arith.maxf %cst_2, %cst_0 : f32
        %dest_59, %accumulated_value_60 = vector.scan <xor>, %43, %63 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi16>, vector<3xi16>
        linalg.yield %cst_1 : f16
      } -> tensor<1x1x1xf16>
      %257 = math.fma %cst_0, %cst_0, %cst_4 : f32
      scf.execute_region {
        %275 = arith.muli %c-26202_i16, %c-26202_i16 : i16
        %276 = math.sqrt %8 : tensor<1xf32>
        %277 = arith.maxf %cst_2, %extracted_46 : f32
        %278 = math.log10 %18 : tensor<1x1xf16>
        %c-26803_i16 = arith.constant -26803 : i16
        %cast_52 = tensor.cast %12 : tensor<1x1xf16> to tensor<?x?xf16>
        %279 = arith.remui %extracted, %in : i16
        %280 = math.absf %cst_1 : f16
        %collapsed_53 = tensor.collapse_shape %16 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %281 = math.cttz %23 : tensor<i32>
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d1 - 1)>(%251, %c8, %c6, %c8)
        %283 = arith.shrsi %c-26202_i16, %out : i16
        %c1_i16 = arith.constant 1 : i16
        %284 = vector.transfer_read %expanded_22[%rank, %251, %c14], %c1_i16 : tensor<1x1x1xi16>, vector<i16>
        %285 = math.roundeven %7 : tensor<11x9xf16>
        %286 = arith.addf %cst_3, %cst : f16
        %287 = arith.shli %false, %false : i1
        scf.yield
      }
      %258 = index.castu %c3 : index to i32
      %259 = index.casts %c4 : index to i32
      %260 = vector.broadcast %c345113398_i64 : i64 to vector<3x3xi64>
      %261 = vector.outerproduct %20, %20, %260 {kind = #vector.kind<maxui>} : vector<3xi64>, vector<3xi64>
      %262 = tensor.empty() : tensor<1x1xf16>
      %mapped_47 = linalg.map ins(%splat : tensor<1x1xf16>) outs(%262 : tensor<1x1xf16>)
        (%in_52: f16) {
          memref.tensor_store %262, %alloc_20 : memref<1x1xf16>
          %275 = memref.realloc %alloc_11 : memref<1xf16> to memref<9xf16>
          %276 = arith.maxsi %extracted, %in : i16
          %277 = arith.maxsi %c345113398_i64, %c189287083_i64 : i64
          %278 = math.round %transposed : tensor<1x1xf16>
          %279 = math.cos %3 : tensor<1x1xf32>
          %280 = vector.extract_strided_slice %44 {offsets = [0], sizes = [2], strides = [1]} : vector<3x3xi1> to vector<2x3xi1>
          %281 = arith.shrui %c189287083_i64, %c189287083_i64 : i64
          memref.assume_alignment %alloc_7, 8 : memref<11x9xf16>
          %282 = math.tan %cst_1 : f16
          %false_53 = arith.constant false
          %283 = arith.shrui %c2021584652_i32, %c2021584652_i32 : i32
          %284 = math.fma %50, %50, %6 : tensor<11x9xf32>
          %285 = vector.flat_transpose %248 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %286 = arith.maxf %in_52, %in_52 : f16
          %287 = math.tan %extracted_46 : f32
          %cst_54 = arith.constant 1.000000e+00 : f32
          %288 = vector.transfer_read %8[%c2], %cst_54 : tensor<1xf32>, vector<f32>
          %289 = arith.maxf %cst_0, %cst_54 : f32
          %290 = vector.broadcast %cst_54 : f32 to vector<3x3xf32>
          %291 = vector.fma %290, %290, %290 : vector<3x3xf32>
          %292 = arith.divf %cst_1, %cst_1 : f16
          %293 = vector.shuffle %49, %49 [0] : vector<1xi32>, vector<1xi32>
          %294 = arith.maxf %cst_1, %cst_3 : f16
          %295 = arith.cmpi eq, %out, %in : i16
          %296 = vector.transpose %280, [0, 1] : vector<2x3xi1> to vector<2x3xi1>
          %297 = arith.floordivsi %false, %true : i1
          %298 = vector.flat_transpose %248 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          vector.print %298 : vector<1xi64>
          %299 = arith.muli %c380021746_i64, %c189287083_i64 : i64
          %300 = index.castu %extracted : i16 to index
          %301 = index.castu %in : i16 to index
          %302 = index.maxu %c10, %c0
          memref.store %extracted_46, %alloc_13[%c1, %c7] : memref<11x9xf32>
          %cst_55 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_55 : f16
        }
      %263 = math.roundeven %18 : tensor<1x1xf16>
      %264 = vector.multi_reduction <add>, %49, %c2034570215_i32 [0] : vector<1xi32> to i32
      memref.tensor_store %14, %alloc_14 : memref<1x1xi16>
      %265 = math.cttz %9 : tensor<1x1xi1>
      %266 = vector.extract %254[0] : vector<1x9xf16>
      %267 = math.log %cst_3 : f16
      %dest_48, %accumulated_value_49 = vector.scan <mul>, %43, %63 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi16>, vector<3xi16>
      %268 = bufferization.clone %alloc : memref<1x1xi16> to memref<1x1xi16>
      %269 = math.floor %cst_3 : f16
      %270 = math.log2 %18 : tensor<1x1xf16>
      %271 = arith.shrsi %c380021746_i64, %c380021746_i64 : i64
      %272 = index.maxu %48, %c2
      %273 = memref.realloc %alloc_16 : memref<1xi64> to memref<3xi64>
      %false_50 = arith.constant false
      %false_51 = arith.constant false
      %274 = vector.transfer_read %81[%c4, %76], %false_51 : tensor<11x9xi1>, vector<i1>
      linalg.yield %c-26202_i16 : i16
    } -> tensor<1x1x1xi16>
    %83 = arith.minui %c345113398_i64, %c345113398_i64 : i64
    %84 = arith.floordivsi %c2021584652_i32, %c1403378331_i32 : i32
    %85 = math.copysign %cst_2, %cst_4 : f32
    %86 = vector.extract %43[1] : vector<3x3xi16>
    %87 = index.casts %c2021584652_i32 : i32 to index
    %88 = vector.shuffle %20, %20 [0] : vector<3xi64>, vector<3xi64>
    %89 = math.absi %21 : tensor<1xi32>
    %90 = arith.remsi %c1403378331_i32, %c1403378331_i32 : i32
    %91 = math.copysign %cst_3, %cst_1 : f16
    %splat_23 = tensor.splat %cst_4 : tensor<3x3xf32>
    %92 = vector.reduction <minsi>, %20 : vector<3xi64> into i64
    %93 = affine.min affine_map<(d0, d1) -> (d1 * 8, d0 ceildiv 64, d0 ceildiv 64)>(%c2, %c13)
    %94 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
    %95 = vector.fma %94, %94, %94 : vector<3x3xf32>
    %96 = math.roundeven %1 : tensor<11x9xf32>
    %true_24 = arith.constant true
    %97 = scf.execute_region -> memref<11x9xf16> {
      %246 = bufferization.clone %alloc_17 : memref<11x9xf16> to memref<11x9xf16>
      %247 = arith.shrsi %true, %true_5 : i1
      %rank_46 = tensor.rank %7 : tensor<11x9xf16>
      %248 = vector.bitcast %20 : vector<3xi64> to vector<3xi64>
      %249 = arith.minui %c1403378331_i32, %c2034570215_i32 : i32
      %splat_47 = tensor.splat %cst_1 : tensor<11x9xf16>
      %250 = arith.maxui %c345113398_i64, %c380021746_i64 : i64
      %251 = index.maxu %c14, %rank_46
      %252 = math.roundeven %splat_47 : tensor<11x9xf16>
      %253 = arith.floordivsi %false, %true : i1
      %false_48 = index.bool.constant false
      %alloc_49 = memref.alloc() : memref<1x1xi32>
      memref.copy %47, %alloc_49 : memref<1x1xi32> to memref<1x1xi32>
      memref.assume_alignment %alloc_17, 16 : memref<11x9xf16>
      %254 = math.absi %true_5 : i1
      %255 = arith.ori %c189287083_i64, %c345113398_i64 : i64
      %256 = math.log1p %cst_3 : f16
      scf.yield %alloc_17 : memref<11x9xf16>
    }
    %98 = math.exp %12 : tensor<1x1xf16>
    %99 = arith.floordivsi %false, %true : i1
    %c1781296539_i64 = arith.constant 1781296539 : i64
    %100 = arith.floordivsi %true, %true : i1
    %101 = arith.divui %c1403378331_i32, %c1403378331_i32 : i32
    memref.assume_alignment %alloc_13, 8 : memref<11x9xf32>
    %alloc_25 = memref.alloc() : memref<1x1xi32>
    %102 = math.log1p %splat : tensor<1x1xf16>
    %103 = vector.load %47[%c0, %c0] : memref<1x1xi32>, vector<1x1xi32>
    %104 = vector.transpose %49, [0] : vector<1xi32> to vector<1xi32>
    %c915739335_i32 = arith.constant 915739335 : i32
    scf.execute_region {
      %246 = memref.load %alloc_11[%c0] : memref<1xf16>
      vector.print %86 : vector<3xi16>
      %247 = bufferization.to_tensor %alloc_10 : memref<3x3xf16>
      %248 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %45, %45, %45 : vector<3x3xi32>, vector<3x3xi32> into vector<3x3xi32>
      %cast_46 = tensor.cast %3 : tensor<1x1xf32> to tensor<?x?xf32>
      %249 = math.sqrt %cst_3 : f16
      %250 = vector.extract_strided_slice %49 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %251 = vector.extract %103[0] : vector<1x1xi32>
      %expanded_47 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<3x3xi64> into tensor<3x3x1xi64>
      %252 = arith.remsi %c1403378331_i32, %c2034570215_i32 : i32
      memref.alloca_scope  {
        %alloca_50 = memref.alloca() : memref<11x9xf16>
        %alloc_51 = memref.alloc() : memref<1x1xi16>
        vector.print %63 : vector<3xi16>
        %256 = vector.multi_reduction <maxsi>, %86, %63 [] : vector<3xi16> to vector<3xi16>
        %257 = math.log1p %transposed : tensor<1x1xf16>
        %258 = math.tanh %6 : tensor<11x9xf32>
        %259 = vector.multi_reduction <minsi>, %250, %49 [] : vector<1xi32> to vector<1xi32>
        %inserted_52 = tensor.insert %true into %5[%c0] : tensor<1xi1>
        %inserted_53 = tensor.insert %c2021584652_i32 into %10[%c0, %c0] : tensor<1x1xi32>
        %260 = arith.maxui %c-26202_i16, %extracted : i16
        %261 = bufferization.to_tensor %alloc_18 : memref<11x9xi1>
        %262 = math.round %8 : tensor<1xf32>
        %263 = bufferization.to_tensor %alloc_7 : memref<11x9xf16>
        %264 = arith.negf %cst_0 : f32
        %splat_54 = tensor.splat %true_5 : tensor<1x1xi1>
        %265 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %266 = vector.fma %265, %265, %265 : vector<1x1xf32>
        %alloc_55 = memref.alloc() : memref<3x3xi32>
        %rank_56 = tensor.rank %12 : tensor<1x1xf16>
        %267 = math.fpowi %8, %0 : tensor<1xf32>, tensor<1xi32>
        %268 = arith.remf %cst_4, %cst_0 : f32
        %rank_57 = tensor.rank %5 : tensor<1xi1>
        %269 = vector.flat_transpose %250 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %270 = math.exp %1 : tensor<11x9xf32>
        %271 = index.divs %c13, %c8
        %272 = math.log2 %7 : tensor<11x9xf16>
        %273 = arith.divf %cst_1, %cst_1 : f16
        %274 = math.log1p %247 : tensor<3x3xf16>
        %275 = vector.broadcast %cst_2 : f32 to vector<f32>
        %276 = vector.transfer_write %275, %6[%c7, %87] : vector<f32>, tensor<11x9xf32>
        %277 = arith.remsi %true, %false : i1
        %278 = arith.negf %cst_1 : f16
        %279 = math.tan %7 : tensor<11x9xf16>
        %280 = vector.transpose %265, [1, 0] : vector<1x1xf32> to vector<1x1xf32>
      }
      %253 = index.ceildivs %93, %87
      %254 = arith.shrsi %c2021584652_i32, %c1403378331_i32 : i32
      %255 = arith.remf %cst_1, %cst_3 : f16
      %expanded_48 = tensor.expand_shape %5 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
      %alloca_49 = memref.alloca() : memref<3x3xi32>
      scf.yield
    }
    %inserted = tensor.insert %cst_4 into %50[%c7, %c3] : tensor<11x9xf32>
    %105 = arith.shrui %c380021746_i64, %c189287083_i64 : i64
    %106 = math.roundeven %50 : tensor<11x9xf32>
    %false_26 = index.bool.constant false
    %c0_i32 = arith.constant 0 : i32
    %107 = vector.transfer_read %47[%c13, %c2], %c0_i32 : memref<1x1xi32>, vector<i32>
    %108 = math.round %cst_0 : f32
    %109 = arith.maxsi %c-26202_i16, %c-26202_i16 : i16
    %110 = math.sqrt %splat_23 : tensor<3x3xf32>
    %111 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat : tensor<1x1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %246 = math.ipowi %15, %15 : tensor<3x3xi1>
      %247 = arith.divf %cst, %in : f16
      %dest_46, %accumulated_value_47 = vector.scan <minui>, %43, %86 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi16>, vector<3xi16>
      %248 = math.copysign %7, %7 : tensor<11x9xf16>
      %249 = affine.for %arg2 = 0 to 5 iter_args(%arg3 = %c1403378331_i32) -> (i32) {
        affine.yield %c0_i32 : i32
      }
      %250 = math.cos %cst : f16
      %cst_48 = arith.constant 1.000000e+00 : f32
      %cst_49 = arith.constant 0.000000e+00 : f32
      %251 = vector.transfer_read %3[%c0, %c9], %cst_49 : tensor<1x1xf32>, vector<f32>
      %252 = math.round %7 : tensor<11x9xf16>
      %253 = math.cttz %c380021746_i64 : i64
      %254 = arith.negf %cst_1 : f16
      %255 = math.copysign %cst, %cst_1 : f16
      %expanded_50 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
      %256 = arith.shrsi %extracted, %c-26202_i16 : i16
      %257 = arith.ceildivsi %c1403378331_i32, %c0_i32 : i32
      %258 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%76, %c2, %c4, %c2)
      %259 = math.log1p %8 : tensor<1xf32>
      %260 = vector.broadcast %false_26 : i1 to vector<11x9xi1>
      %261 = arith.cmpf ult, %cst_0, %cst_4 : f32
      %262 = vector.broadcast %c189287083_i64 : i64 to vector<1xi64>
      %263 = vector.transfer_write %262, %11[%c12, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, tensor<3x3xi64>
      %264 = index.divu %c14, %c0
      %265 = math.log10 %7 : tensor<11x9xf16>
      %266 = affine.min affine_map<(d0, d1) -> (d1 + 16, d1, d0 * 128, d1 + d1 ceildiv 8)>(%c11, %c5)
      %alloca_51 = memref.alloca() : memref<1xi64>
      %alloca_52 = memref.alloca() : memref<3x3xi32>
      %267 = arith.remui %c2021584652_i32, %c0_i32 : i32
      %268 = math.ctpop %10 : tensor<1x1xi32>
      %269 = vector.splat %76 : vector<3x3xindex>
      %270 = arith.subi %true, %false_26 : i1
      affine.store %in, %97[%c14, %c10] : memref<11x9xf16>
      %271 = arith.ceildivsi %c2021584652_i32, %c0_i32 : i32
      %272 = vector.broadcast %cst_0 : f32 to vector<11x9xf32>
      %273 = vector.fma %272, %272, %272 : vector<11x9xf32>
      %274 = bufferization.to_memref %splat : memref<1x1xf16>
      linalg.yield %cst_3 : f16
    } -> tensor<1x1x1xf16>
    %true_27 = arith.constant true
    %false_28 = arith.constant false
    %112 = vector.transfer_read %alloc_18[%76, %c9], %false_28 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<11x9xi1>, vector<1xi1>
    %113 = index.sub %c15, %c6
    %114 = math.floor %7 : tensor<11x9xf16>
    %115 = vector.broadcast %cst_2 : f32 to vector<1xf32>
    %116 = vector.fma %115, %115, %115 : vector<1xf32>
    memref.tensor_store %81, %alloc_18 : memref<11x9xi1>
    %117 = index.ceildivs %c4, %87
    %118 = math.log2 %cst_4 : f32
    %119 = index.sizeof
    %expanded_29 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
    memref.store %false, %alloc_18[%c5, %c6] : memref<11x9xi1>
    %120 = index.maxu %c13, %c7
    %121 = vector.bitcast %63 : vector<3xi16> to vector<3xi16>
    %122 = arith.cmpf une, %cst_0, %cst_0 : f32
    %123 = vector.transpose %43, [1, 0] : vector<3x3xi16> to vector<3x3xi16>
    %124 = tensor.empty() : tensor<1x1xi32>
    %mapped = linalg.map ins(%10, %47 : tensor<1x1xi32>, memref<1x1xi32>) outs(%124 : tensor<1x1xi32>)
      (%in: i32, %in_46: i32) {
        %246 = arith.maxsi %c2021584652_i32, %c2021584652_i32 : i32
        %247 = arith.cmpf ord, %cst_3, %cst_1 : f16
        %248 = arith.minsi %c380021746_i64, %c380021746_i64 : i64
        %249 = math.atan2 %3, %3 : tensor<1x1xf32>
        %250 = index.mul %c4, %c5
        %251 = index.ceildivu %87, %c13
        %252 = math.sqrt %7 : tensor<11x9xf16>
        %collapsed_47 = tensor.collapse_shape %expanded_22 [[0, 1], [2]] : tensor<1x1x1xi16> into tensor<1x1xi16>
        %253 = vector.load %alloc_16[%c0] : memref<1xi64>, vector<1xi64>
        %254 = index.divs %250, %117
        %255 = index.ceildivu %c12, %c3
        %256 = vector.load %alloc_13[%c8, %c5] : memref<11x9xf32>, vector<11x9xf32>
        %257 = math.round %3 : tensor<1x1xf32>
        %rank_48 = tensor.rank %7 : tensor<11x9xf16>
        %258 = vector.splat %c9 : vector<1x1xindex>
        %259 = memref.realloc %alloc_21 : memref<9xi32> to memref<1xi32>
        bufferization.dealloc_tensor %124 : tensor<1x1xi32>
        %260 = math.ctpop %124 : tensor<1x1xi32>
        %261 = math.copysign %7, %7 : tensor<11x9xf16>
        %262 = arith.maxui %in_46, %in : i32
        %263 = math.tan %1 : tensor<11x9xf32>
        %true_49 = index.bool.constant true
        %264 = math.exp2 %1 : tensor<11x9xf32>
        vector.print %256 : vector<11x9xf32>
        %265 = math.tan %17 : tensor<1x1xf32>
        %266 = vector.reduction <or>, %49 : vector<1xi32> into i32
        %267 = arith.remf %cst_2, %cst_0 : f32
        %268 = math.cos %cst_1 : f16
        %269 = index.maxu %c4, %113
        %270 = tensor.empty(%120) : tensor<?x9xf16>
        %cst_50 = arith.constant 1.000000e+00 : f32
        %271 = vector.transfer_read %6[%120, %c13], %cst_50 : tensor<11x9xf32>, vector<3xf32>
        %272 = math.copysign %expanded, %expanded : tensor<1x1x1xf16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %125 = math.atan2 %7, %7 : tensor<11x9xf16>
    %126 = math.round %16 : tensor<1x1xf32>
    %127 = arith.divf %cst_3, %cst_3 : f16
    %128 = math.cos %12 : tensor<1x1xf16>
    %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<11x9xi32> into tensor<99xi32>
    %129 = math.cos %transposed : tensor<1x1xf16>
    %130 = math.roundeven %splat : tensor<1x1xf16>
    %131 = math.rsqrt %cst_0 : f32
    %132 = math.log1p %12 : tensor<1x1xf16>
    %133 = math.expm1 %12 : tensor<1x1xf16>
    %134 = math.roundeven %1 : tensor<11x9xf32>
    memref.store %cst_3, %alloc_11[%c0] : memref<1xf16>
    %135 = math.cos %12 : tensor<1x1xf16>
    %136 = arith.divf %cst_0, %cst_4 : f32
    %137 = math.round %cst : f16
    %138 = arith.cmpf ueq, %cst_1, %cst_1 : f16
    %139 = bufferization.clone %alloc_20 : memref<1x1xf16> to memref<1x1xf16>
    %140 = vector.splat %c14 : vector<11x9xindex>
    %141 = memref.atomic_rmw addi %c189287083_i64, %alloc_16[%c0] : (i64, memref<1xi64>) -> i64
    %142 = vector.matrix_multiply %86, %86 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    %143 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11 : memref<1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %246 = math.log10 %cst_2 : f32
      %247 = math.expm1 %transposed : tensor<1x1xf16>
      %248 = math.atan2 %expanded_29, %expanded_29 : tensor<1x1x1xf32>
      %249 = math.sqrt %8 : tensor<1xf32>
      %250 = arith.shrsi %c380021746_i64, %c189287083_i64 : i64
      %251 = math.log2 %3 : tensor<1x1xf32>
      %252 = memref.atomic_rmw mulf %in, %alloc_17[%c5, %c6] : (f16, memref<11x9xf16>) -> f16
      %253 = math.log %expanded_29 : tensor<1x1x1xf32>
      %254 = index.floordivs %48, %119
      %255 = math.cttz %true : i1
      %256 = vector.insert %c189287083_i64, %20 [2] : i64 into vector<3xi64>
      %257 = vector.insert %c2034570215_i32, %49 [0] : i32 into vector<1xi32>
      %expanded_46 = tensor.expand_shape %5 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
      affine.for %arg2 = 0 to 112 {
      }
      %258 = vector.splat %c189287083_i64 : vector<11x9xi64>
      %259 = vector.broadcast %cst_2 : f32 to vector<11xf32>
      %260 = vector.transfer_write %259, %1[%c13, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf32>, tensor<11x9xf32>
      %261 = math.log1p %1 : tensor<11x9xf32>
      %262 = vector.bitcast %86 : vector<3xi16> to vector<3xf16>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %95, %95, %94 : vector<3x3xf32>, vector<3x3xf32> into vector<3x3xf32>
      %264 = vector.broadcast %cst : f16 to vector<f16>
      vector.transfer_write %264, %139[%117, %c7] : vector<f16>, memref<1x1xf16>
      %265 = vector.broadcast %cst : f16 to vector<9x9xf16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %65, %65, %265 : vector<11x9xf16>, vector<11x9xf16> into vector<9x9xf16>
      bufferization.dealloc_tensor %14 : tensor<1x1xi16>
      vector.print %259 : vector<11xf32>
      affine.store %extracted, %alloc[%c10, %c2] : memref<1x1xi16>
      %267 = arith.minui %c0_i32, %c2021584652_i32 : i32
      %alloc_47 = memref.alloc() : memref<11x9xf32>
      %268 = affine.if affine_set<(d0, d1) : (d1 >= 0, (d0 - 1) floordiv 2 >= 0, (d1 + d0) ceildiv 8 >= 0)>(%c1, %c15) -> i32 {
        %273 = math.log10 %6 : tensor<11x9xf32>
        %274 = index.castu %true : i1 to index
        %c1_i32_48 = arith.constant 1 : i32
        %275 = vector.transfer_read %collapsed[%c12], %c1_i32_48 : tensor<99xi32>, vector<i32>
        %276 = vector.reduction <and>, %86 : vector<3xi16> into i16
        %expanded_49 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
        %alloc_50 = memref.alloc() : memref<3x3xi1>
        memref.tensor_store %15, %alloc_50 : memref<3x3xi1>
        %277 = memref.realloc %alloc_16 : memref<1xi64> to memref<9xi64>
        %278 = vector.shuffle %259, %259 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 16, 18, 19] : vector<11xf32>, vector<11xf32>
        affine.yield %c1403378331_i32 : i32
      } else {
        %273 = vector.transpose %95, [1, 0] : vector<3x3xf32> to vector<3x3xf32>
        %274 = math.exp2 %16 : tensor<1x1xf32>
        %275 = vector.broadcast %false : i1 to vector<3xi1>
        %dest_48, %accumulated_value_49 = vector.scan <or>, %44, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi1>, vector<3xi1>
        %cst_50 = arith.constant 1.88432077E+9 : f32
        %276 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
        %277 = vector.fma %276, %95, %95 : vector<3x3xf32>
        %278 = vector.broadcast %cst_0 : f32 to vector<3xf32>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %277, %278 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xf32>, vector<3xf32>
        %279 = math.ctpop %10 : tensor<1x1xi32>
        %280 = vector.reduction <or>, %142 : vector<1xi16> into i16
        affine.yield %c2021584652_i32 : i32
      }
      memref.assume_alignment %alloc_7, 1 : memref<11x9xf16>
      %269 = memref.realloc %alloc_15 : memref<1xi16> to memref<1xi16>
      %270 = math.log1p %3 : tensor<1x1xf32>
      %271 = arith.divf %cst_4, %cst_2 : f32
      %c1_i32 = arith.constant 1 : i32
      %272 = vector.transfer_read %124[%rank, %c1], %c1_i32 : tensor<1x1xi32>, vector<i32>
      linalg.yield %cst : f16
    } -> tensor<1x1x1xf16>
    %144 = math.expm1 %cst_1 : f16
    %145 = vector.splat %c2034570215_i32 : vector<11x9xi32>
    %146 = arith.floordivsi %c2021584652_i32, %c0_i32 : i32
    %rank_30 = tensor.rank %10 : tensor<1x1xi32>
    %147 = arith.remui %c380021746_i64, %c380021746_i64 : i64
    %148 = math.copysign %cst_2, %cst_4 : f32
    %149 = vector.broadcast %cst_4 : f32 to vector<11x9xf32>
    %150 = vector.fma %149, %149, %149 : vector<11x9xf32>
    %151 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %alloc_9 : tensor<1xf32>, memref<1xf32>) outs(%expanded_29 : tensor<1x1x1xf32>) {
    ^bb0(%in: f32, %in_46: f32, %out: f32):
      %246 = math.round %cst_1 : f16
      %247 = math.cttz %true : i1
      %248 = math.ctlz %c1403378331_i32 : i32
      %249 = vector.extract %45[2] : vector<3x3xi32>
      %250 = math.tan %3 : tensor<1x1xf32>
      memref.store %extracted, %alloc_15[%c0] : memref<1xi16>
      %251 = memref.atomic_rmw muli %c380021746_i64, %alloc_12[%c0, %c1] : (i64, memref<3x3xi64>) -> i64
      %252 = math.tan %7 : tensor<11x9xf16>
      %expanded_47 = tensor.expand_shape %50 [[0], [1, 2]] : tensor<11x9xf32> into tensor<11x9x1xf32>
      %253 = bufferization.to_tensor %alloc : memref<1x1xi16>
      %254 = scf.execute_region -> tensor<1xi64> {
        %272 = math.ctpop %4 : tensor<11x9xi32>
        %collapsed_51 = tensor.collapse_shape %18 [[0, 1]] : tensor<1x1xf16> into tensor<1xf16>
        %273 = arith.muli %c189287083_i64, %c380021746_i64 : i64
        %274 = arith.shrui %c2021584652_i32, %c1403378331_i32 : i32
        %275 = arith.divui %true_27, %false_26 : i1
        %276 = vector.extract %121[2] : vector<3xi16>
        %277 = vector.load %alloc_11[%c0] : memref<1xf16>, vector<1x1xf16>
        %278 = arith.cmpf one, %cst_2, %out : f32
        %279 = math.exp %18 : tensor<1x1xf16>
        %true_52 = index.bool.constant true
        %expanded_53 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<3x3xi1> into tensor<3x3x1xi1>
        %rank_54 = tensor.rank %4 : tensor<11x9xi32>
        %alloca_55 = memref.alloca() : memref<1xi64>
        %280 = math.atan2 %expanded, %expanded : tensor<1x1x1xf16>
        vector.print %277 : vector<1x1xf16>
        %281 = arith.ceildivsi %c-26202_i16, %extracted : i16
        %282 = tensor.empty() : tensor<1xi64>
        scf.yield %282 : tensor<1xi64>
      }
      %255 = index.ceildivs %c15, %c7
      %256 = math.fpowi %cst_1, %c0_i32 : f16, i32
      %257 = arith.mulf %cst_1, %cst : f16
      %258 = math.absi %c2034570215_i32 : i32
      memref.assume_alignment %47, 8 : memref<1x1xi32>
      %259 = arith.remui %true_27, %false : i1
      %260 = math.ctlz %22 : tensor<i32>
      %261 = arith.shrsi %true, %false_26 : i1
      %false_48 = index.bool.constant false
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %alloc_9 : tensor<1xf32>, memref<1xf32>) outs(%expanded_29 : tensor<1x1x1xf32>) {
      ^bb0(%in_51: f32, %in_52: f32, %out_53: f32):
        %272 = index.divs %119, %c7
        %273 = index.sizeof
        %274 = index.maxu %c4, %76
        %275 = arith.cmpf false, %in, %cst_0 : f32
        %alloca_54 = memref.alloca() : memref<3x3xi1>
        %276 = arith.maxsi %c2034570215_i32, %c2034570215_i32 : i32
        %277 = index.ceildivu %272, %273
        %true_55 = index.bool.constant true
        %278 = vector.insertelement %in_51, %116[%113 : index] : vector<1xf32>
        %279 = arith.maxf %cst_4, %in_52 : f32
        memref.assume_alignment %alloc_16, 8 : memref<1xi64>
        %true_56 = index.bool.constant true
        %280 = vector.transpose %46, [1, 0] : vector<3x3xi16> to vector<3x3xi16>
        %expanded_57 = tensor.expand_shape %splat_23 [[0], [1, 2]] : tensor<3x3xf32> into tensor<3x3x1xf32>
        %281 = arith.negf %in_46 : f32
        %282 = index.maxu %272, %93
        %283 = arith.minsi %true, %true_55 : i1
        %284 = vector.reduction <maxf>, %116 : vector<1xf32> into f32
        %285 = memref.atomic_rmw addf %cst_1, %alloc_7[%c3, %c1] : (f16, memref<11x9xf16>) -> f16
        %286 = arith.ori %true_27, %true_55 : i1
        %287 = arith.subi %true_55, %true_55 : i1
        %true_58 = arith.constant true
        %288 = arith.shrui %c380021746_i64, %c345113398_i64 : i64
        %289 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        %dest_59, %accumulated_value_60 = vector.scan <maxf>, %149, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<11x9xf32>, vector<11xf32>
        %290 = math.round %6 : tensor<11x9xf32>
        %291 = math.tan %12 : tensor<1x1xf16>
        %292 = arith.muli %c0_i32, %c1403378331_i32 : i32
        vector.print %46 : vector<3x3xi16>
        %expanded_61 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<11x9xi32> into tensor<11x9x1xi32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %121, %46, %63 : vector<3xi16>, vector<3x3xi16> into vector<3xi16>
        %294 = math.log1p %17 : tensor<1x1xf32>
        %295 = vector.shuffle %45, %45 [0, 5] : vector<3x3xi32>, vector<3x3xi32>
        linalg.yield %out : f32
      } -> tensor<1x1x1xf32>
      %263 = math.log %cst : f16
      %264 = vector.broadcast %c2021584652_i32 : i32 to vector<3xi32>
      %265 = vector.transfer_write %264, %10[%117, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi32>, tensor<1x1xi32>
      %true_49 = index.bool.constant true
      %266 = vector.flat_transpose %116 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %extracted_50 = tensor.extract %0[%c0] : tensor<1xi32>
      %267 = index.mul %c10, %117
      %268 = affine.for %arg2 = 0 to 99 iter_args(%arg3 = %c13) -> (index) {
        affine.yield %267 : index
      }
      %269 = math.round %7 : tensor<11x9xf16>
      %270 = math.tanh %17 : tensor<1x1xf32>
      %271 = math.tan %splat : tensor<1x1xf16>
      affine.for %arg2 = 0 to 108 {
      }
      linalg.yield %cst_0 : f32
    } -> tensor<1x1x1xf32>
    %152 = vector.bitcast %49 : vector<1xi32> to vector<1xi32>
    %153 = index.ceildivs %c15, %c12
    memref.assume_alignment %alloc_19, 2 : memref<1xi64>
    %154 = math.log %cst_2 : f32
    %155 = vector.broadcast %cst_2 : f32 to vector<9xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %149, %155 {inclusive = false, reduction_dim = 0 : i64} : vector<11x9xf32>, vector<9xf32>
    %156 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %157 = vector.outerproduct %115, %115, %156 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %158 = math.round %cst_0 : f32
    %159 = vector.broadcast %extracted : i16 to vector<11x9xi16>
    %160 = bufferization.to_tensor %alloc_13 : memref<11x9xf32>
    %161 = math.cos %1 : tensor<11x9xf32>
    memref.store %c189287083_i64, %alloc_19[%c0] : memref<1xi64>
    %alloc_31 = memref.alloc() : memref<3x3xi1>
    memref.tensor_store %15, %alloc_31 : memref<3x3xi1>
    %162 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11, %alloc_11 : memref<1xf16>, memref<1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%in: f16, %in_46: f16, %out: f16):
      %246 = index.casts %c1403378331_i32 : i32 to index
      %247 = vector.bitcast %95 : vector<3x3xf32> to vector<3x3xf32>
      %248 = vector.outerproduct %49, %49, %103 {kind = #vector.kind<maxsi>} : vector<1xi32>, vector<1xi32>
      %249 = math.ctpop %extracted : i16
      %250 = arith.remf %in, %cst_3 : f16
      %251 = math.atan2 %16, %16 : tensor<1x1xf32>
      %252 = bufferization.to_memref %10 : memref<1x1xi32>
      %253 = bufferization.to_memref %6 : memref<11x9xf32>
      %254 = bufferization.clone %alloc_10 : memref<3x3xf16> to memref<3x3xf16>
      %255 = index.divu %c3, %c0
      affine.store %c-26202_i16, %alloc[%c13, %c14] : memref<1x1xi16>
      %expanded_47 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<11x9xf32> into tensor<11x9x1xf32>
      %256 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
      %257 = vector.flat_transpose %63 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %258 = math.sqrt %3 : tensor<1x1xf32>
      %extracted_48 = tensor.extract %13[%c1, %c8] : tensor<11x9xi32>
      affine.store %cst_4, %alloc_9[%c3] : memref<1xf32>
      %259 = math.exp %17 : tensor<1x1xf32>
      %false_49 = arith.constant false
      %260 = vector.transfer_read %81[%c10, %113], %false_49 : tensor<11x9xi1>, vector<9xi1>
      %261 = index.add %c12, %c13
      %262 = math.absi %13 : tensor<11x9xi32>
      %263 = arith.remf %in, %cst_3 : f16
      %264 = arith.muli %false, %false : i1
      %265 = arith.shrui %c189287083_i64, %c345113398_i64 : i64
      memref.assume_alignment %alloc_10, 8 : memref<3x3xf16>
      %266 = vector.load %alloc_7[%c8, %c8] : memref<11x9xf16>, vector<11x9xf16>
      %267 = math.expm1 %16 : tensor<1x1xf32>
      %268 = math.round %1 : tensor<11x9xf32>
      %expanded_50 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<3x3xi64> into tensor<3x3x1xi64>
      %269 = math.absi %c2021584652_i32 : i32
      %270 = math.sqrt %6 : tensor<11x9xf32>
      %271 = arith.shrsi %extracted, %c-26202_i16 : i16
      linalg.yield %in_46 : f16
    } -> tensor<1x1x1xf16>
    %163 = math.ctpop %15 : tensor<3x3xi1>
    %164 = math.exp %cst_0 : f32
    %165 = math.tan %expanded : tensor<1x1x1xf16>
    %166 = bufferization.clone %alloc_19 : memref<1xi64> to memref<1xi64>
    %167 = bufferization.clone %alloc_19 : memref<1xi64> to memref<1xi64>
    %168 = arith.shrui %c345113398_i64, %c189287083_i64 : i64
    %169 = vector.create_mask %117, %c14 : vector<1x1xi1>
    %170 = vector.broadcast %cst_4 : f32 to vector<3xf32>
    vector.transfer_write %170, %alloc_13[%c13, %113] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, memref<11x9xf32>
    %171 = math.log2 %12 : tensor<1x1xf16>
    %172 = math.ctpop %4 : tensor<11x9xi32>
    %173 = vector.transpose %44, [0, 1] : vector<3x3xi1> to vector<3x3xi1>
    %174 = tensor.empty() : tensor<1xf32>
    %mapped_32 = linalg.map ins(%8, %8, %8 : tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) outs(%174 : tensor<1xf32>)
      (%in: f32, %in_46: f32, %in_47: f32) {
        %246 = index.ceildivs %c1, %c10
        %247 = math.tanh %3 : tensor<1x1xf32>
        %248 = arith.minsi %c189287083_i64, %c345113398_i64 : i64
        %249 = arith.floordivsi %extracted, %extracted : i16
        %250 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %142, %142, %c-26202_i16 : vector<1xi16>, vector<1xi16> into i16
        %251 = arith.remui %false, %true : i1
        %252 = math.ipowi %0, %0 : tensor<1xi32>
        %253 = index.ceildivs %87, %87
        %inserted_48 = tensor.insert %cst_4 into %3[%c0, %c0] : tensor<1x1xf32>
        affine.store %cst_3, %alloc_11[%c0] : memref<1xf16>
        %254 = index.divu %48, %c6
        %255 = arith.ori %c345113398_i64, %c380021746_i64 : i64
        %256 = arith.ori %c345113398_i64, %c189287083_i64 : i64
        %257 = vector.flat_transpose %152 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %258 = vector.extract %20[0] : vector<3xi64>
        %259 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %260 = math.fpowi %12, %124 : tensor<1x1xf16>, tensor<1x1xi32>
        %261 = bufferization.clone %139 : memref<1x1xf16> to memref<1x1xf16>
        %262 = arith.shrui %c2034570215_i32, %c1403378331_i32 : i32
        %alloc_49 = memref.alloc() : memref<11x9xi32>
        memref.tensor_store %13, %alloc_49 : memref<11x9xi32>
        %263 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %63, %46, %63 : vector<3xi16>, vector<3x3xi16> into vector<3xi16>
        %264 = bufferization.to_memref %124 : memref<1x1xi32>
        %265 = vector.broadcast %in : f32 to vector<f32>
        %266 = vector.transfer_write %265, %8[%c10] : vector<f32>, tensor<1xf32>
        %true_50 = arith.constant true
        %267 = math.tan %1 : tensor<11x9xf32>
        %c7999_i16 = arith.constant 7999 : i16
        %268 = math.cttz %22 : tensor<i32>
        %269 = index.divu %c15, %c7
        %270 = memref.realloc %167 : memref<1xi64> to memref<11xi64>
        %271 = arith.maxui %false_26, %false : i1
        %alloca_51 = memref.alloca() : memref<11x9xf16>
        %272 = vector.shuffle %63, %142 [0, 1] : vector<3xi16>, vector<1xi16>
        %cst_52 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_52 : f32
      }
    %dest_33, %accumulated_value_34 = vector.scan <minsi>, %43, %121 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi16>, vector<3xi16>
    %175 = arith.remui %false_26, %true_27 : i1
    %176 = arith.maxui %c-26202_i16, %c-26202_i16 : i16
    %177 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %178 = vector.fma %177, %177, %177 : vector<1x1xf32>
    %179 = math.round %3 : tensor<1x1xf32>
    scf.index_switch %c12 
    case 1 {
      %246 = math.expm1 %8 : tensor<1xf32>
      %247 = arith.ori %c0_i32, %c1403378331_i32 : i32
      %248 = vector.insert %c2034570215_i32, %152 [0] : i32 into vector<1xi32>
      %249 = vector.extract %170[0] : vector<3xf32>
      %250 = arith.remf %cst_2, %cst_0 : f32
      %251 = math.cos %expanded_29 : tensor<1x1x1xf32>
      %252 = math.ceil %3 : tensor<1x1xf32>
      %253 = math.round %6 : tensor<11x9xf32>
      %254 = vector.broadcast %c345113398_i64 : i64 to vector<3x3xi64>
      %255 = vector.outerproduct %20, %20, %254 {kind = #vector.kind<xor>} : vector<3xi64>, vector<3xi64>
      %256 = arith.maxsi %true, %false : i1
      %true_46 = arith.constant true
      %257 = math.absi %15 : tensor<3x3xi1>
      %258 = math.log1p %cst_4 : f32
      %259 = vector.transpose %63, [0] : vector<3xi16> to vector<3xi16>
      %alloca_47 = memref.alloca() : memref<11x9xf32>
      %260 = arith.remui %c-26202_i16, %c-26202_i16 : i16
      scf.yield
    }
    default {
      %246 = vector.extract %159[0] : vector<11x9xi16>
      %247 = math.sqrt %174 : tensor<1xf32>
      %248 = vector.broadcast %false_26 : i1 to vector<1xi1>
      %249 = vector.gather %alloc_18[%c9, %48] [%152], %248, %248 : memref<11x9xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %250 = math.absf %160 : tensor<11x9xf32>
      %251 = affine.load %alloc_10[%c15, %c2] : memref<3x3xf16>
      %false_46 = index.bool.constant false
      %252 = arith.cmpf uno, %cst_3, %251 : f16
      %253 = arith.floordivsi %false, %true_27 : i1
      %254 = math.cttz %42 : tensor<11x9xi16>
      %255 = math.copysign %3, %3 : tensor<1x1xf32>
      %256 = vector.broadcast %rank_30 : index to vector<11xindex>
      %257 = vector.broadcast %true : i1 to vector<11xi1>
      vector.scatter %alloc_18[%c9, %c6] [%256], %257, %257 : memref<11x9xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
      %258 = vector.bitcast %249 : vector<1xi1> to vector<1xi1>
      %259 = vector.extract %150[8] : vector<11x9xf32>
      %260 = arith.shrsi %true_27, %true : i1
      %261 = arith.minsi %false_26, %true_5 : i1
      %262 = arith.maxsi %c2021584652_i32, %c1403378331_i32 : i32
    }
    %alloc_35 = memref.alloc() : memref<3x3xf32>
    %180 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %44, %44, %44 : vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
    %181 = math.atan %3 : tensor<1x1xf32>
    %alloc_36 = memref.alloc() : memref<1xi32>
    memref.tensor_store %0, %alloc_36 : memref<1xi32>
    %182 = vector.load %alloc_9[%c0] : memref<1xf32>, vector<11x9xf32>
    %183 = vector.broadcast %false : i1 to vector<3xi1>
    %dest_37, %accumulated_value_38 = vector.scan <maxui>, %44, %183 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi1>, vector<3xi1>
    %184 = arith.ori %true_27, %true_27 : i1
    %185 = math.exp %7 : tensor<11x9xf16>
    %186 = index.divu %c8, %c1
    %187 = memref.realloc %alloc_19 : memref<1xi64> to memref<3xi64>
    %188 = arith.shrsi %false_26, %true_27 : i1
    %189 = arith.maxf %cst_2, %cst_4 : f32
    %190 = arith.maxui %c189287083_i64, %c345113398_i64 : i64
    %191 = math.cos %cst_3 : f16
    %c7767_i16 = arith.constant 7767 : i16
    memref.tensor_store %6, %alloc_13 : memref<11x9xf32>
    %192 = vector.insert %c345113398_i64, %20 [1] : i64 into vector<3xi64>
    %193 = math.copysign %cst_4, %cst_0 : f32
    %194 = vector.extract %86[0] : vector<3xi16>
    %195 = arith.minui %c189287083_i64, %c380021746_i64 : i64
    %196 = affine.apply affine_map<(d0, d1) -> (-d1)>(%c6, %c3)
    memref.tensor_store %splat, %alloc_20 : memref<1x1xf16>
    %197 = math.ctlz %2 : tensor<1x1xi16>
    %198 = index.ceildivs %93, %120
    %199 = vector.outerproduct %63, %63, %43 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
    %200 = arith.remf %cst_4, %cst_2 : f32
    %201 = math.log2 %174 : tensor<1xf32>
    %202 = affine.if affine_set<(d0, d1, d2, d3) : (d0 floordiv 8 == 0, d2 - 32 >= 0, d2 >= 0)>(%c4, %c9, %c12, %c5) -> i64 {
      %246 = arith.cmpf one, %cst, %cst_1 : f16
      %cst_46 = arith.constant 1.000000e+00 : f32
      %247 = vector.transfer_read %8[%c9], %cst_46 : tensor<1xf32>, vector<f32>
      %248 = math.ipowi %0, %0 : tensor<1xi32>
      %alloca_47 = memref.alloca() : memref<11x9xf32>
      %249 = math.ceil %cst_0 : f32
      %250 = vector.create_mask %186, %c0 : vector<1x1xi1>
      %251 = math.ceil %splat : tensor<1x1xf16>
      %252 = math.exp2 %50 : tensor<11x9xf32>
      affine.yield %c189287083_i64 : i64
    } else {
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst, %cst_3, %cst_1, %cst, %cst_3, %cst, %cst_1, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst_3, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst, %cst_3, %cst_3, %cst, %cst_1, %cst, %cst, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst, %cst_3, %cst, %cst, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst, %cst, %cst, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst, %cst_3, %cst_3, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst : tensor<11x9xf16>
      %246 = arith.floordivsi %c345113398_i64, %c189287083_i64 : i64
      memref.store %extracted, %alloc_15[%c0] : memref<1xi16>
      %247 = bufferization.clone %alloc_18 : memref<11x9xi1> to memref<11x9xi1>
      %248 = math.tan %7 : tensor<11x9xf16>
      %249 = math.fpowi %12, %124 : tensor<1x1xf16>, tensor<1x1xi32>
      %alloc_46 = memref.alloc() : memref<1xi64>
      %250 = arith.maxui %c0_i32, %c0_i32 : i32
      affine.yield %c189287083_i64 : i64
    }
    %c805948633_i32 = arith.constant 805948633 : i32
    %203 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %3, %8 : tensor<1xf32>, tensor<1x1xf32>, tensor<1xf32>) outs(%expanded_29 : tensor<1x1x1xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %out: f32):
      %246 = vector.extract %103[0] : vector<1x1xi32>
      %247 = index.ceildivu %c9, %rank_30
      %inserted_48 = tensor.insert %c0_i32 into %13[%c3, %c7] : tensor<11x9xi32>
      %248 = math.round %in_47 : f32
      %249 = vector.shuffle %86, %121 [3, 4] : vector<3xi16>, vector<3xi16>
      %alloca_49 = memref.alloca() : memref<3x3xi64>
      %250 = arith.minsi %c380021746_i64, %c380021746_i64 : i64
      %inserted_50 = tensor.insert %in into %3[%c0, %c0] : tensor<1x1xf32>
      %251 = affine.apply affine_map<(d0) -> (d0 ceildiv 2 - d0 mod 4 - (d0 mod 4) * 32)>(%93)
      %252 = math.roundeven %50 : tensor<11x9xf32>
      %253 = memref.realloc %166 : memref<1xi64> to memref<3xi64>
      %254 = tensor.empty() : tensor<3x3xi64>
      %mapped_51 = linalg.map ins(%11 : tensor<3x3xi64>) outs(%254 : tensor<3x3xi64>)
        (%in_55: i64) {
          %false_56 = index.bool.constant false
          %269 = math.log10 %174 : tensor<1xf32>
          %270 = vector.transpose %43, [0, 1] : vector<3x3xi16> to vector<3x3xi16>
          %271 = index.mul %113, %113
          memref.assume_alignment %alloc_15, 1 : memref<1xi16>
          %true_57 = arith.constant true
          %272 = vector.transfer_read %81[%93, %48], %true_57 : tensor<11x9xi1>, vector<i1>
          %273 = math.absf %8 : tensor<1xf32>
          %274 = memref.atomic_rmw assign %c345113398_i64, %alloc_19[%c0] : (i64, memref<1xi64>) -> i64
          %275 = arith.minui %true_57, %true_57 : i1
          %276 = arith.divf %out, %in_47 : f32
          %cast_58 = tensor.cast %124 : tensor<1x1xi32> to tensor<?x?xi32>
          %277 = math.exp2 %8 : tensor<1xf32>
          %278 = tensor.empty() : tensor<1x1xi1>
          %279 = linalg.matmul ins(%9, %9 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%278 : tensor<1x1xi1>) -> tensor<1x1xi1>
          %280 = arith.ori %c2034570215_i32, %c2021584652_i32 : i32
          %rank_59 = tensor.rank %6 : tensor<11x9xf32>
          %281 = vector.matrix_multiply %152, %49 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %282 = arith.floordivsi %false_56, %false_26 : i1
          %283 = vector.extract_strided_slice %116 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          memref.assume_alignment %alloc, 1 : memref<1x1xi16>
          %284 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 16) * 4, (d2 ceildiv 16) * 4 + d2 - d1 - (d0 + 8))>(%153, %rank_59, %271)
          %285 = math.tan %6 : tensor<11x9xf32>
          %286 = math.roundeven %50 : tensor<11x9xf32>
          %287 = vector.bitcast %177 : vector<1x1xf32> to vector<1x1xf32>
          %288 = math.cttz %22 : tensor<i32>
          %289 = index.divs %c7, %93
          %290 = math.log1p %17 : tensor<1x1xf32>
          %291 = vector.reduction <maxsi>, %142 : vector<1xi16> into i16
          %292 = index.maxu %c9, %c5
          %expanded_60 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<1x1xi1> into tensor<1x1x1xi1>
          %293 = arith.divf %cst_1, %cst_3 : f16
          %294 = tensor.empty() : tensor<1x1xi32>
          %295 = linalg.matmul ins(%124, %10 : tensor<1x1xi32>, tensor<1x1xi32>) outs(%294 : tensor<1x1xi32>) -> tensor<1x1xi32>
          %296 = vector.broadcast %cst_2 : f32 to vector<11x9xf32>
          %297 = vector.fma %296, %182, %182 : vector<11x9xf32>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %255 = vector.outerproduct %49, %152, %103 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
      %256 = vector.insertelement %cst_0, %170[%c12 : index] : vector<3xf32>
      %false_52 = index.bool.constant false
      %alloc_53 = memref.alloc() : memref<3x3xi32>
      %alloc_54 = memref.alloc() : memref<3x3xi1>
      %257 = math.log10 %7 : tensor<11x9xf16>
      %258 = arith.negf %cst_1 : f16
      %259 = vector.extract %44[0] : vector<3x3xi1>
      %260 = index.ceildivs %153, %119
      %261 = affine.if affine_set<(d0, d1, d2) : (d0 * 8 >= 0, d1 floordiv 8 >= 0, (d1 - 1) floordiv 128 >= 0)>(%c2, %c14, %c5) -> memref<3x3xi32> {
        bufferization.dealloc_tensor %2 : tensor<1x1xi16>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %94, %170 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xf32>, vector<3xf32>
        %cst_57 = arith.constant 0x4E219732 : f32
        %269 = vector.matrix_multiply %63, %121 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
        bufferization.dealloc_tensor %15 : tensor<3x3xi1>
        %270 = affine.max affine_map<(d0, d1, d2) -> (d1 + d0 - d2, (d1 + d0 - d2) ceildiv 8, d0 - d2)>(%c8, %c2, %117)
        %271 = math.cos %expanded : tensor<1x1x1xf16>
        %rank_58 = tensor.rank %splat_23 : tensor<3x3xf32>
        affine.yield %alloc_8 : memref<3x3xi32>
      } else {
        %alloca_55 = memref.alloca() : memref<1xi1>
        bufferization.dealloc_tensor %8 : tensor<1xf32>
        %splat_56 = tensor.splat %in_47 : tensor<1x1xf32>
        %269 = index.casts %c2034570215_i32 : i32 to index
        %270 = math.expm1 %8 : tensor<1xf32>
        %alloca_57 = memref.alloca() : memref<1xi64>
        %271 = arith.maxsi %false, %true : i1
        %272 = vector.insertelement %false, %259[%c6 : index] : vector<3xi1>
        affine.yield %alloc_8 : memref<3x3xi32>
      }
      %262 = math.log10 %50 : tensor<11x9xf32>
      %263 = vector.load %alloc_13[%c8, %c4] : memref<11x9xf32>, vector<1x1xf32>
      scf.execute_region {
        %269 = index.divu %120, %93
        %270 = index.ceildivs %186, %186
        %false_55 = index.bool.constant false
        %271 = arith.maxf %cst_2, %out : f32
        %272 = arith.shrsi %c2034570215_i32, %c1403378331_i32 : i32
        %273 = arith.remf %cst_3, %cst_1 : f16
        %false_56 = index.bool.constant false
        %274 = math.log10 %7 : tensor<11x9xf16>
        %275 = vector.bitcast %142 : vector<1xi16> to vector<1xf16>
        %276 = vector.reduction <xor>, %86 : vector<3xi16> into i16
        %277 = tensor.empty() : tensor<1x1x1xi32>
        %278 = math.fpowi %expanded, %277 : tensor<1x1x1xf16>, tensor<1x1x1xi32>
        %279 = vector.splat %c10 : vector<3x3xindex>
        %280 = tensor.empty() : tensor<1xf16>
        vector.print %86 : vector<3xi16>
        %281 = index.castu %93 : index to i32
        vector.print %177 : vector<1x1xf32>
        scf.yield
      }
      %264 = vector.outerproduct %63, %121, %43 {kind = #vector.kind<mul>} : vector<3xi16>, vector<3xi16>
      %c27279_i16 = arith.constant 27279 : i16
      %265 = affine.for %arg2 = 0 to 53 iter_args(%arg3 = %14) -> (tensor<1x1xi16>) {
        affine.yield %arg3 : tensor<1x1xi16>
      }
      %generated = tensor.generate %rank_30 {
      ^bb0(%arg2: index):
        %269 = math.expm1 %18 : tensor<1x1xf16>
        %270 = index.maxu %247, %c8
        %271 = math.cttz %13 : tensor<11x9xi32>
        %alloc_55 = memref.alloc() : memref<1x1xi1>
        memref.tensor_store %9, %alloc_55 : memref<1x1xi1>
        tensor.yield %c-26202_i16 : i16
      } : tensor<?xi16>
      %266 = index.castu %true_5 : i1 to index
      %267 = vector.extract %177[0] : vector<1x1xf32>
      %268 = bufferization.clone %alloc_18 : memref<11x9xi1> to memref<11x9xi1>
      linalg.yield %in_47 : f32
    } -> tensor<1x1x1xf32>
    %204 = vector.flat_transpose %142 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
    %alloc_39 = memref.alloc() : memref<11x9xi16>
    memref.tensor_store %42, %alloc_39 : memref<11x9xi16>
    memref.assume_alignment %alloc_14, 2 : memref<1x1xi16>
    %205 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
    %206 = vector.fma %205, %94, %205 : vector<3x3xf32>
    %207 = math.tan %cst_0 : f32
    %208 = arith.floordivsi %c189287083_i64, %c189287083_i64 : i64
    %209 = index.castu %117 : index to i32
    %210 = math.rsqrt %7 : tensor<11x9xf16>
    %211 = math.ctlz %14 : tensor<1x1xi16>
    %212 = math.expm1 %8 : tensor<1xf32>
    %213 = math.cttz %10 : tensor<1x1xi32>
    %214 = vector.flat_transpose %86 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
    %215 = vector.outerproduct %115, %116, %178 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %alloca = memref.alloca() : memref<11x9xi64>
    vector.print %204 : vector<1xi16>
    %216 = arith.remf %cst_2, %cst_2 : f32
    %217 = index.divu %c11, %c12
    %218 = tensor.empty(%120) : tensor<?xi1>
    %219 = arith.mulf %cst, %cst_1 : f16
    %alloc_40 = memref.alloc() : memref<3x3xf32>
    memref.tensor_store %splat_23, %alloc_40 : memref<3x3xf32>
    %220 = math.exp %8 : tensor<1xf32>
    %221 = tensor.empty() : tensor<11x9xi32>
    %222 = arith.ori %c0_i32, %c2034570215_i32 : i32
    %223 = arith.shrui %true_27, %false : i1
    %224 = math.expm1 %6 : tensor<11x9xf32>
    %225 = vector.matrix_multiply %121, %63 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    vector.print %225 : vector<1xi16>
    %226 = bufferization.to_tensor %alloc_21 : memref<9xi32>
    %227 = memref.atomic_rmw addi %c-26202_i16, %alloc_15[%c0] : (i16, memref<1xi16>) -> i16
    %228 = arith.maxf %cst_0, %cst_4 : f32
    %229 = arith.ceildivsi %c380021746_i64, %c189287083_i64 : i64
    %230 = index.ceildivs %196, %c9
    %231 = vector.shuffle %205, %95 [2, 5] : vector<3x3xf32>, vector<3x3xf32>
    %232 = vector.transpose %44, [1, 0] : vector<3x3xi1> to vector<3x3xi1>
    %alloc_41 = memref.alloc() : memref<1xi1>
    memref.tensor_store %5, %alloc_41 : memref<1xi1>
    %233 = arith.ceildivsi %c189287083_i64, %c345113398_i64 : i64
    memref.tensor_store %81, %alloc_18 : memref<11x9xi1>
    %234 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %169, %169, %169 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
    %dest_42, %accumulated_value_43 = vector.scan <maxf>, %177, %115 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
    %cast = tensor.cast %226 : tensor<9xi32> to tensor<?xi32>
    %235 = math.atan2 %3, %16 : tensor<1x1xf32>
    vector.print %43 : vector<3x3xi16>
    %rank_44 = tensor.rank %10 : tensor<1x1xi32>
    %236 = math.round %8 : tensor<1xf32>
    %237 = math.exp2 %174 : tensor<1xf32>
    %238 = index.maxu %c15, %c14
    bufferization.dealloc_tensor %8 : tensor<1xf32>
    %239 = arith.ori %c2021584652_i32, %c0_i32 : i32
    %240 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %241 = vector.fma %240, %178, %177 : vector<1x1xf32>
    memref.tensor_store %10, %47 : memref<1x1xi32>
    %242 = tensor.empty() : tensor<11x9xf16>
    %243 = linalg.copy ins(%7 : tensor<11x9xf16>) outs(%242 : tensor<11x9xf16>) -> tensor<11x9xf16>
    %alloc_45 = memref.alloc() : memref<1xi32>
    linalg.transpose ins(%0 : tensor<1xi32>) outs(%alloc_45 : memref<1xi32>) permutation = [0] 
    %244 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%alloc_20 : memref<1x1xf16>) outs(%244 : tensor<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %246 = math.expm1 %7 : tensor<11x9xf16>
        %247 = math.ctpop %true_5 : i1
        %248 = arith.divui %c2021584652_i32, %c1403378331_i32 : i32
        %rank_46 = tensor.rank %16 : tensor<1x1xf32>
        %249 = vector.bitcast %178 : vector<1x1xf32> to vector<1x1xf32>
        %250 = vector.transpose %182, [0, 1] : vector<11x9xf32> to vector<11x9xf32>
        %251 = bufferization.clone %alloc_12 : memref<3x3xi64> to memref<3x3xi64>
        %252 = memref.atomic_rmw muli %c380021746_i64, %166[%c0] : (i64, memref<1xi64>) -> i64
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    scf.parallel (%arg2) = (%76) to (%c9) step (%c3) {
      %246 = bufferization.clone %alloc_19 : memref<1xi64> to memref<1xi64>
      %247 = arith.remf %cst_0, %cst_0 : f32
      %248 = vector.broadcast %extracted : i16 to vector<1x1xi16>
      %249 = vector.outerproduct %225, %142, %248 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
      %rank_46 = tensor.rank %splat_23 : tensor<3x3xf32>
      affine.store %cst_2, %alloc_9[%c10] : memref<1xf32>
      %250 = math.round %cst : f16
      %251 = arith.minsi %false, %false : i1
      %252 = math.round %splat_23 : tensor<3x3xf32>
      memref.assume_alignment %alloc_21, 8 : memref<9xi32>
      %253 = math.log1p %cst : f16
      scf.execute_region {
        %259 = arith.floordivsi %c1403378331_i32, %c2021584652_i32 : i32
        %260 = tensor.empty() : tensor<3x3xi32>
        %261 = vector.gather %260[%c13, %c10] [%45], %44, %45 : tensor<3x3xi32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi32> into vector<3x3xi32>
        %262 = math.round %cst : f16
        %263 = math.roundeven %8 : tensor<1xf32>
        %264 = math.cos %cst_4 : f32
        %265 = vector.matrix_multiply %142, %204 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %inserted_47 = tensor.insert %cst_3 into %12[%c0, %c0] : tensor<1x1xf16>
        %266 = math.ctpop %2 : tensor<1x1xi16>
        %267 = math.cttz %0 : tensor<1xi32>
        %268 = arith.remsi %c-26202_i16, %c-26202_i16 : i16
        %from_elements = tensor.from_elements %extracted, %extracted, %c-26202_i16, %c-26202_i16, %extracted, %extracted, %c-26202_i16, %c-26202_i16, %c-26202_i16 : tensor<3x3xi16>
        memref.assume_alignment %alloc_8, 1 : memref<3x3xi32>
        %269 = math.ipowi %c1403378331_i32, %c2021584652_i32 : i32
        %270 = vector.load %alloc_11[%c0] : memref<1xf16>, vector<3x3xf16>
        %false_48 = index.bool.constant false
        %271 = index.casts %false : i1 to index
        scf.yield
      }
      %254 = arith.shrui %c-26202_i16, %c-26202_i16 : i16
      %255 = scf.execute_region -> f32 {
        %rank_47 = tensor.rank %splat : tensor<1x1xf16>
        %c28981_i16 = arith.constant 28981 : i16
        %259 = memref.atomic_rmw andi %c2034570215_i32, %alloc_21[%c7] : (i32, memref<9xi32>) -> i32
        %260 = math.atan2 %7, %7 : tensor<11x9xf16>
        %261 = math.log2 %cst_0 : f32
        %262 = math.rsqrt %splat : tensor<1x1xf16>
        %263 = arith.floordivsi %false, %true_5 : i1
        %264 = arith.floordivsi %c-26202_i16, %extracted : i16
        %265 = math.exp2 %splat : tensor<1x1xf16>
        %266 = arith.mulf %cst_0, %cst_2 : f32
        %267 = index.divu %87, %119
        memref.assume_alignment %166, 4 : memref<1xi64>
        %268 = arith.remui %c2034570215_i32, %c1403378331_i32 : i32
        %269 = arith.ori %c0_i32, %c2034570215_i32 : i32
        %extracted_48 = tensor.extract %expanded_22[%c0, %c0, %c0] : tensor<1x1x1xi16>
        memref.store %c1403378331_i32, %alloc_45[%c0] : memref<1xi32>
        scf.yield %cst_2 : f32
      }
      %256 = arith.cmpf ule, %cst_4, %cst_0 : f32
      %257 = vector.broadcast %c380021746_i64 : i64 to vector<1xi64>
      %258 = math.copysign %6, %160 : tensor<11x9xf32>
      scf.yield
    }
    %245 = affine.vector_load %alloc_6[%c8, %c4] : memref<1x1xf16>, vector<9xf16>
    affine.vector_store %121, %alloc_14[%93, %198] : memref<1x1xi16>, vector<3xi16>
    vector.print %20 : vector<3xi64>
    vector.print %43 : vector<3x3xi16>
    vector.print %44 : vector<3x3xi1>
    vector.print %45 : vector<3x3xi32>
    vector.print %46 : vector<3x3xi16>
    vector.print %49 : vector<1xi32>
    vector.print %63 : vector<3xi16>
    vector.print %65 : vector<11x9xf16>
    vector.print %86 : vector<3xi16>
    vector.print %94 : vector<3x3xf32>
    vector.print %95 : vector<3x3xf32>
    vector.print %103 : vector<1x1xi32>
    vector.print %115 : vector<1xf32>
    vector.print %116 : vector<1xf32>
    vector.print %121 : vector<3xi16>
    vector.print %142 : vector<1xi16>
    vector.print %149 : vector<11x9xf32>
    vector.print %150 : vector<11x9xf32>
    vector.print %152 : vector<1xi32>
    vector.print %159 : vector<11x9xi16>
    vector.print %169 : vector<1x1xi1>
    vector.print %170 : vector<3xf32>
    vector.print %177 : vector<1x1xf32>
    vector.print %178 : vector<1x1xf32>
    vector.print %182 : vector<11x9xf32>
    vector.print %204 : vector<1xi16>
    vector.print %205 : vector<3x3xf32>
    vector.print %206 : vector<3x3xf32>
    vector.print %214 : vector<3xi16>
    vector.print %225 : vector<1xi16>
    vector.print %240 : vector<1x1xf32>
    vector.print %241 : vector<1x1xf32>
    vector.print %245 : vector<9xf16>
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %false : i1
    vector.print %c-26202_i16 : i16
    vector.print %c345113398_i64 : i64
    vector.print %c189287083_i64 : i64
    vector.print %true : i1
    vector.print %c2034570215_i32 : i32
    vector.print %cst_1 : f16
    vector.print %c1403378331_i32 : i32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c380021746_i64 : i64
    vector.print %cst_4 : f32
    vector.print %true_5 : i1
    vector.print %c2021584652_i32 : i32
    vector.print %extracted : i16
    vector.print %false_26 : i1
    vector.print %c0_i32 : i32
    vector.print %true_27 : i1
    return %cst_4 : f32
  }
}
