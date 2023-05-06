module {
  func.func private @func1(%arg0: index, %arg1: tensor<2x2xi64>) {
    %c540530258_i32 = arith.constant 540530258 : i32
    %cst = arith.constant 5.568000e+03 : f16
    %cst_0 = arith.constant 1.57873408E+9 : f32
    %c-5916_i16 = arith.constant -5916 : i16
    %c1807483623_i64 = arith.constant 1807483623 : i64
    %c189500516_i32 = arith.constant 189500516 : i32
    %c588364374_i64 = arith.constant 588364374 : i64
    %c528704457_i32 = arith.constant 528704457 : i32
    %cst_1 = arith.constant 1.85581965E+9 : f32
    %cst_2 = arith.constant 5.472000e+04 : f16
    %c28612_i16 = arith.constant 28612 : i16
    %cst_3 = arith.constant 2.988800e+04 : f16
    %c1418927244_i64 = arith.constant 1418927244 : i64
    %c2047384402_i32 = arith.constant 2047384402 : i32
    %c454538438_i64 = arith.constant 454538438 : i64
    %c835286953_i32 = arith.constant 835286953 : i32
    %0 = tensor.empty() : tensor<3x2x2xi16>
    %1 = tensor.empty() : tensor<2xi32>
    %2 = tensor.empty() : tensor<3x2x2xi16>
    %3 = tensor.empty() : tensor<2x2xf32>
    %4 = tensor.empty() : tensor<3x2x2xf32>
    %5 = tensor.empty() : tensor<2xf16>
    %6 = tensor.empty() : tensor<3x2x2xi32>
    %7 = tensor.empty() : tensor<3x2x2xf16>
    %8 = tensor.empty() : tensor<2xf32>
    %9 = tensor.empty() : tensor<3x2x2xf16>
    %10 = tensor.empty() : tensor<3x2x2xf16>
    %11 = tensor.empty() : tensor<2x2xf16>
    %12 = tensor.empty() : tensor<3x2xi32>
    %13 = tensor.empty() : tensor<3x2x2xi1>
    %14 = tensor.empty() : tensor<2xi1>
    %15 = tensor.empty() : tensor<2x2xi16>
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
    %alloc = memref.alloc() : memref<3x2xf32>
    %alloc_4 = memref.alloc() : memref<3x2x2xi64>
    %alloc_5 = memref.alloc() : memref<3x2x2xf32>
    %alloc_6 = memref.alloc() : memref<2xf32>
    %alloc_7 = memref.alloc() : memref<2x2xi1>
    %alloc_8 = memref.alloc() : memref<2x2xi1>
    %alloc_9 = memref.alloc() : memref<2x2xi1>
    %alloc_10 = memref.alloc() : memref<2xf32>
    %alloc_11 = memref.alloc() : memref<3x2xi32>
    %alloc_12 = memref.alloc() : memref<3x2x2xf32>
    %alloc_13 = memref.alloc() : memref<3x2xf16>
    %alloc_14 = memref.alloc() : memref<3x2x2xi1>
    %alloc_15 = memref.alloc() : memref<2xi32>
    %alloc_16 = memref.alloc() : memref<3x2x2xf16>
    %alloc_17 = memref.alloc() : memref<2x2xi64>
    %alloc_18 = memref.alloc() : memref<2x2xi1>
    %16 = tensor.empty() : tensor<3x2x2xi1>
    %17 = linalg.copy ins(%13 : tensor<3x2x2xi1>) outs(%16 : tensor<3x2x2xi1>) -> tensor<3x2x2xi1>
    %18 = tensor.empty() : tensor<2x3x2xf32>
    %transposed = linalg.transpose ins(%4 : tensor<3x2x2xf32>) outs(%18 : tensor<2x3x2xf32>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<i1>
    linalg.reduce ins(%14 : tensor<2xi1>) outs(%alloc_19 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        memref.store %c528704457_i32, %alloc_11[%c0, %c0] : memref<3x2xi32>
        %alloc_34 = memref.alloc() : memref<3x2x2xi64>
        %264 = index.sub %c7, %c0
        %265 = arith.divsi %c588364374_i64, %c588364374_i64 : i64
        %266 = vector.splat %c3 : vector<3x2xindex>
        %expanded = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<2x3x2xf32> into tensor<2x3x2x1xf32>
        %true_35 = index.bool.constant true
        %267 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0, d3 - d0 floordiv 8 + 130 == 0, d3 == 0)>(%c0, %c7, %c1, %c11) -> memref<2x2xf16> {
          %268 = vector.broadcast %cst_1 : f32 to vector<2xf32>
          %269 = vector.broadcast %true_35 : i1 to vector<2xi1>
          %270 = vector.broadcast %c835286953_i32 : i32 to vector<2xi32>
          %271 = vector.gather %8[%c15] [%270], %269, %268 : tensor<2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %272 = math.sqrt %8 : tensor<2xf32>
          %alloc_37 = memref.alloc() : memref<2xi1>
          %273 = vector.broadcast %true_35 : i1 to vector<2x2xi1>
          %274 = vector.broadcast %c835286953_i32 : i32 to vector<2x2xi32>
          %275 = vector.gather %alloc_37[%264] [%274], %273, %273 : memref<2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
          %276 = affine.load %alloc_4[%c13, %c10, %c5] : memref<3x2x2xi64>
          %277 = index.maxu %c7, %c2
          %278 = memref.realloc %alloc_10 : memref<2xf32> to memref<2xf32>
          %false_38 = index.bool.constant false
          %279 = math.tanh %18 : tensor<2x3x2xf32>
          %alloc_39 = memref.alloc() : memref<2x2xf16>
          affine.yield %alloc_39 : memref<2x2xf16>
        } else {
          %268 = arith.minsi %in, %init : i1
          %269 = math.absi %15 : tensor<2x2xi16>
          %270 = math.round %5 : tensor<2xf16>
          %271 = bufferization.to_tensor %alloc_18 : memref<2x2xi1>
          %272 = arith.divui %c189500516_i32, %c528704457_i32 : i32
          %273 = vector.broadcast %c1807483623_i64 : i64 to vector<1xi64>
          %274 = vector.matrix_multiply %273, %273 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %275 = index.casts %c28612_i16 : i16 to index
          %276 = vector.multi_reduction <maxui>, %273, %c588364374_i64 [0] : vector<1xi64> to i64
          %alloc_37 = memref.alloc() : memref<2x2xf16>
          affine.yield %alloc_37 : memref<2x2xf16>
        }
        %true_36 = arith.constant true
        linalg.yield %true_36 : i1
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c12, %c1) to (%c15, %c15) step (%c8, %c14) init (%12) -> tensor<3x2xi32> {
      %true_34 = index.bool.constant true
      %264 = vector.broadcast %c1418927244_i64 : i64 to vector<1xi64>
      %265 = vector.multi_reduction <or>, %264, %c454538438_i64 [0] : vector<1xi64> to i64
      %266 = vector.transpose %264, [0] : vector<1xi64> to vector<1xi64>
      %267 = vector.insertelement %c588364374_i64, %264[%c11 : index] : vector<1xi64>
      %268 = arith.maxui %c1418927244_i64, %c1418927244_i64 : i64
      %269 = affine.if affine_set<(d0, d1, d2) : (d2 * 8 == 0)>(%c15, %c0, %c9) -> memref<2xf32> {
        %281 = vector.broadcast %c1418927244_i64 : i64 to vector<2x2xi64>
        %282 = math.log10 %10 : tensor<3x2x2xf16>
        %283 = vector.broadcast %c0 : index to vector<1xindex>
        %284 = vector.broadcast %true_34 : i1 to vector<1xi1>
        vector.scatter %alloc_9[%c0, %c1] [%283], %284, %284 : memref<2x2xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %285 = math.absf %11 : tensor<2x2xf16>
        %alloc_36 = memref.alloc() : memref<2xi1>
        memref.tensor_store %14, %alloc_36 : memref<2xi1>
        %286 = index.ceildivu %c2, %c2
        %287 = vector.broadcast %265 : i64 to vector<2xi64>
        %288 = vector.broadcast %true_34 : i1 to vector<2xi1>
        %289 = vector.maskedload %alloc_4[%c0, %c1, %c1], %288, %287 : memref<3x2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %290 = arith.divui %c1418927244_i64, %c588364374_i64 : i64
        affine.yield %alloc_6 : memref<2xf32>
      } else {
        %281 = vector.shuffle %264, %264 [0, 1] : vector<1xi64>, vector<1xi64>
        %282 = index.mul %c12, %c8
        %extracted_36 = tensor.extract %4[%c2, %c0, %c1] : tensor<3x2x2xf32>
        %283 = vector.extract_strided_slice %264 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %284 = math.ipowi %0, %2 : tensor<3x2x2xi16>
        %285 = math.atan %3 : tensor<2x2xf32>
        memref.store %true_34, %alloc_14[%c1, %c1, %c1] : memref<3x2x2xi1>
        %286 = vector.shuffle %283, %264 [0, 1] : vector<1xi64>, vector<1xi64>
        affine.yield %alloc_10 : memref<2xf32>
      }
      %270 = bufferization.to_tensor %alloc_13 : memref<3x2xf16>
      %271 = vector.splat %c0 : vector<2x2xindex>
      %272 = math.ipowi %true_34, %true_34 : i1
      %273 = math.ctpop %c2047384402_i32 : i32
      %cst_35 = arith.constant 1.000000e+00 : f16
      %274 = vector.transfer_read %9[%c8, %c5, %c8], %cst_35 : tensor<3x2x2xf16>, vector<2x3xf16>
      %275 = memref.atomic_rmw minf %cst_2, %alloc_16[%c1, %c1, %c1] : (f16, memref<3x2x2xf16>) -> f16
      %276 = vector.insert %265, %264 [0] : i64 into vector<1xi64>
      %277 = arith.minf %cst_0, %cst_0 : f32
      %278 = index.floordivs %c4, %c9
      %279 = index.ceildivs %c6, %c7
      %280 = tensor.empty() : tensor<3x2xi32>
      scf.reduce(%280)  : tensor<3x2xi32> {
      ^bb0(%arg4: tensor<3x2xi32>, %arg5: tensor<3x2xi32>):
        %281 = index.sizeof
        %282 = index.sub %c5, %arg2
        %283 = math.atan %4 : tensor<3x2x2xf32>
        %284 = vector.reduction <xor>, %264 : vector<1xi64> into i64
        %alloca = memref.alloca() : memref<3x2xi32>
        memref.store %c454538438_i64, %alloc_4[%c0, %c0, %c0] : memref<3x2x2xi64>
        %285 = vector.load %alloc_8[%c0, %c1] : memref<2x2xi1>, vector<3x2x2xi1>
        %286 = memref.load %alloc_10[%c0] : memref<2xf32>
        %287 = tensor.empty() : tensor<3x2xi32>
        scf.reduce.return %287 : tensor<3x2xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c15] : memref<2xi32>, vector<1xi32>
    affine.vector_store %20, %alloc_15[%c15] : memref<2xi32>, vector<1xi32>
    %21 = tensor.empty() : tensor<2xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%5, %21 : tensor<2xf16>, tensor<2xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = math.roundeven %5 : tensor<2xf16>
    %25 = vector.insertelement %c189500516_i32, %20[%c12 : index] : vector<1xi32>
    %26 = index.ceildivs %c13, %c3
    %27 = math.cttz %c2047384402_i32 : i32
    %28 = index.divs %c8, %c1
    %29 = arith.maxsi %c835286953_i32, %c528704457_i32 : i32
    %30 = index.divs %c1, %c5
    %31 = vector.broadcast %c528704457_i32 : i32 to vector<1x1xi32>
    %32 = vector.outerproduct %20, %20, %31 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
    %33 = tensor.empty() : tensor<2xi16>
    %34 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %2, %33 : tensor<3x2x2xi16>, tensor<3x2x2xi16>, tensor<2xi16>) outs(%2 : tensor<3x2x2xi16>) {
    ^bb0(%in: i16, %in_34: i16, %in_35: i16, %out: i16):
      memref.store %c528704457_i32, %alloc_11[%c0, %c1] : memref<3x2xi32>
      %264 = vector.multi_reduction <xor>, %20, %c540530258_i32 [0] : vector<1xi32> to i32
      %265 = math.log %5 : tensor<2xf16>
      %cst_36 = arith.constant 1.000000e+00 : f32
      %cst_37 = arith.constant 0.000000e+00 : f32
      %266 = vector.transfer_read %transposed[%28, %c9, %c14], %cst_37 : tensor<2x3x2xf32>, vector<f32>
      %267 = arith.cmpi sgt, %c588364374_i64, %c588364374_i64 : i64
      %268 = vector.broadcast %in_35 : i16 to vector<3x1xi16>
      %269 = vector.transfer_write %268, %2[%c15, %c6, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x1xi16>, tensor<3x2x2xi16>
      %270 = arith.andi %c528704457_i32, %264 : i32
      %271 = math.round %cst_36 : f32
      %272 = memref.load %alloc_7[%c1, %c0] : memref<2x2xi1>
      %273 = math.ctlz %6 : tensor<3x2x2xi32>
      %274 = math.round %10 : tensor<3x2x2xf16>
      %275 = index.divs %c1, %c15
      %276 = math.ctlz %0 : tensor<3x2x2xi16>
      %277 = arith.minsi %in, %out : i16
      %278 = arith.maxsi %c1807483623_i64, %c454538438_i64 : i64
      %279 = vector.broadcast %c189500516_i32 : i32 to vector<1x1xi32>
      %280 = vector.outerproduct %20, %20, %279 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
      %281 = index.divu %c6, %c6
      %inserted_38 = tensor.insert %c-5916_i16 into %15[%c0, %c1] : tensor<2x2xi16>
      %282 = affine.load %alloc_10[%c12] : memref<2xf32>
      %283 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %true_39 = arith.constant true
      %284 = vector.broadcast %true_39 : i1 to vector<2xi1>
      %285 = vector.maskedload %alloc_6[%c0], %284, %283 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %286 = affine.for %arg2 = 0 to 44 iter_args(%arg3 = %c6) -> (index) {
        affine.yield %c8 : index
      }
      memref.assume_alignment %alloc_19, 2 : memref<i1>
      %287 = vector.insert %c2047384402_i32, %20 [0] : i32 into vector<1xi32>
      %288 = math.powf %cst_0, %cst_36 : f32
      %289 = vector.broadcast %true_39 : i1 to vector<2x2xi1>
      %290 = vector.outerproduct %284, %284, %289 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
      %291 = vector.insert %c189500516_i32, %20 [0] : i32 into vector<1xi32>
      %292 = vector.broadcast %c7 : index to vector<3xindex>
      %293 = vector.broadcast %true_39 : i1 to vector<3xi1>
      vector.scatter %alloc_8[%c1, %c1] [%292], %293, %293 : memref<2x2xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %294 = vector.reduction <maxui>, %284 : vector<2xi1> into i1
      %295 = index.divu %c10, %c4
      %296 = affine.max affine_map<(d0) -> (d0 * 3, d0 * -3)>(%c7)
      %297 = math.exp2 %282 : f32
      %298 = vector.shuffle %20, %20 [0] : vector<1xi32>, vector<1xi32>
      linalg.yield %in : i16
    } -> tensor<3x2x2xi16>
    %35 = vector.multi_reduction <maxui>, %20, %20 [] : vector<1xi32> to vector<1xi32>
    %36 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<3x2x2xf16>) {
    ^bb0(%out: f16):
      %264 = arith.minsi %c28612_i16, %c28612_i16 : i16
      %265 = arith.maxui %c28612_i16, %c28612_i16 : i16
      %266 = math.round %7 : tensor<3x2x2xf16>
      %generated_34 = tensor.generate %28 {
      ^bb0(%arg2: index):
        vector.print %20 : vector<1xi32>
        %291 = bufferization.to_memref %5 : memref<2xf16>
        %292 = arith.minui %c-5916_i16, %c28612_i16 : i16
        vector.print %20 : vector<1xi32>
        tensor.yield %c28612_i16 : i16
      } : tensor<?xi16>
      %267 = affine.for %arg2 = 0 to 19 iter_args(%arg3 = %cst_1) -> (f32) {
        affine.yield %arg3 : f32
      }
      vector.print %20 : vector<1xi32>
      memref.assume_alignment %alloc_14, 2 : memref<3x2x2xi1>
      %268 = index.sizeof
      %269 = arith.addi %c528704457_i32, %c528704457_i32 : i32
      %270 = memref.load %alloc_19[] : memref<i1>
      %271 = arith.divsi %c540530258_i32, %c2047384402_i32 : i32
      %272 = math.ipowi %0, %2 : tensor<3x2x2xi16>
      scf.execute_region {
        %291 = arith.floordivsi %c28612_i16, %c-5916_i16 : i16
        %292 = math.rsqrt %11 : tensor<2x2xf16>
        %293 = math.ceil %8 : tensor<2xf32>
        %294 = math.log %10 : tensor<3x2x2xf16>
        %295 = arith.mulf %cst_1, %cst_0 : f32
        %296 = math.floor %8 : tensor<2xf32>
        %297 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %298 = vector.broadcast %268 : index to vector<1xindex>
        %true_40 = arith.constant true
        %299 = vector.broadcast %true_40 : i1 to vector<1xi1>
        %300 = vector.broadcast %cst : f16 to vector<1xf16>
        vector.scatter %alloc_13[%c1, %c0] [%298], %299, %300 : memref<3x2xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %301 = tensor.empty(%c7) : tensor<?x2xf32>
        %302 = vector.transpose %20, [0] : vector<1xi32> to vector<1xi32>
        %303 = vector.load %alloc_13[%c0, %c0] : memref<3x2xf16>, vector<3x2x2xf16>
        %304 = math.exp %7 : tensor<3x2x2xf16>
        %305 = math.atan %22 : tensor<f16>
        %306 = math.expm1 %3 : tensor<2x2xf32>
        %307 = vector.broadcast %cst : f16 to vector<3x2xf16>
        %dest_41, %accumulated_value_42 = vector.scan <add>, %303, %307 {inclusive = true, reduction_dim = 2 : i64} : vector<3x2x2xf16>, vector<3x2xf16>
        %308 = vector.broadcast %c454538438_i64 : i64 to vector<2x2xi64>
        scf.yield
      }
      %273 = math.log2 %8 : tensor<2xf32>
      %cast_35 = tensor.cast %23 : tensor<f16> to tensor<f16>
      %274 = math.round %10 : tensor<3x2x2xf16>
      %275 = math.floor %cst_2 : f16
      affine.for %arg2 = 0 to 47 {
      }
      %276 = index.divu %c3, %c4
      %277 = arith.addf %cst_1, %cst_0 : f32
      %278 = vector.transpose %20, [0] : vector<1xi32> to vector<1xi32>
      %279 = index.maxu %c4, %c8
      %280 = index.ceildivs %c4, %30
      affine.store %cst_1, %alloc_5[%c11, %c5, %c7] : memref<3x2x2xf32>
      %281 = affine.if affine_set<(d0) : (d0 ceildiv 4 - 56 >= 0, (d0 ceildiv 4) floordiv 2 + 4 >= 0, ((d0 ceildiv 4) floordiv 2 + 4) * 128 == 0)>(%c10) -> i32 {
        %291 = index.divu %276, %c10
        %292 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %293 = arith.muli %c189500516_i32, %c189500516_i32 : i32
        %294 = vector.bitcast %292 : vector<1xi32> to vector<1xi32>
        %295 = index.ceildivu %c6, %c5
        %296 = index.divs %26, %c9
        %inserted_40 = tensor.insert %cst_2 into %5[%c1] : tensor<2xf16>
        %297 = math.fma %9, %9, %9 : tensor<3x2x2xf16>
        affine.yield %c835286953_i32 : i32
      } else {
        %291 = arith.negf %cst_1 : f32
        %292 = arith.divui %c454538438_i64, %c1807483623_i64 : i64
        %293 = math.log10 %out : f16
        %294 = bufferization.to_tensor %alloc_14 : memref<3x2x2xi1>
        %295 = math.tanh %cst_3 : f16
        %cst_40 = arith.constant 0x4D20B454 : f32
        %296 = vector.broadcast %c28612_i16 : i16 to vector<2x2xi16>
        %297 = vector.broadcast %c28612_i16 : i16 to vector<2xi16>
        %dest_41, %accumulated_value_42 = vector.scan <mul>, %296, %297 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xi16>, vector<2xi16>
        %298 = affine.load %alloc_6[%c2] : memref<2xf32>
        affine.yield %c835286953_i32 : i32
      }
      %282 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %true_36 = arith.constant true
      %283 = vector.broadcast %true_36 : i1 to vector<2xi1>
      %284 = vector.broadcast %c835286953_i32 : i32 to vector<2xi32>
      %285 = vector.gather %alloc[%280, %c8] [%284], %283, %282 : memref<3x2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %286 = arith.ceildivsi %c1418927244_i64, %c454538438_i64 : i64
      %287 = arith.xori %c454538438_i64, %c1418927244_i64 : i64
      %288 = arith.floordivsi %c454538438_i64, %c454538438_i64 : i64
      %289 = arith.maxui %c588364374_i64, %c588364374_i64 : i64
      %cast_37 = tensor.cast %9 : tensor<3x2x2xf16> to tensor<?x?x?xf16>
      %cst_38 = arith.constant 1.000000e+00 : f32
      %cst_39 = arith.constant 0.000000e+00 : f32
      %290 = vector.transfer_read %8[%c12], %cst_39 : tensor<2xf32>, vector<f32>
      linalg.yield %cst_2 : f16
    } -> tensor<3x2x2xf16>
    %37 = affine.for %arg2 = 0 to 6 iter_args(%arg3 = %c11) -> (index) {
      affine.yield %arg3 : index
    }
    %38 = math.floor %3 : tensor<2x2xf32>
    %39 = math.tanh %cst_1 : f32
    %40 = vector.broadcast %cst_0 : f32 to vector<3x2xf32>
    %41 = vector.fma %40, %40, %40 : vector<3x2xf32>
    %42 = arith.floordivsi %c1418927244_i64, %c588364374_i64 : i64
    %43 = arith.divf %cst_1, %cst_1 : f32
    %44 = vector.multi_reduction <minf>, %41, %40 [] : vector<3x2xf32> to vector<3x2xf32>
    %45 = math.exp2 %5 : tensor<2xf16>
    %46 = arith.addf %cst, %cst : f16
    %47 = arith.minsi %c1418927244_i64, %c1418927244_i64 : i64
    %48 = math.roundeven %transposed : tensor<2x3x2xf32>
    %49 = memref.realloc %alloc_10 : memref<2xf32> to memref<2xf32>
    %50 = index.ceildivu %c1, %c4
    %51 = affine.apply affine_map<(d0) -> ((-(d0 mod 128)) ceildiv 64)>(%c2)
    %52 = tensor.empty() : tensor<3x2x2xi1>
    %53 = vector.multi_reduction <or>, %20, %c835286953_i32 [0] : vector<1xi32> to i32
    %54 = memref.realloc %alloc_6 : memref<2xf32> to memref<1xf32>
    %false = arith.constant false
    memref.store %false, %alloc_7[%c0, %c0] : memref<2x2xi1>
    %55 = memref.atomic_rmw minf %cst_0, %alloc_12[%c0, %c1, %c1] : (f32, memref<3x2x2xf32>) -> f32
    %56 = math.ceil %cst : f16
    %57 = memref.load %alloc_6[%c0] : memref<2xf32>
    %58 = arith.maxf %cst, %cst : f16
    %59 = vector.bitcast %41 : vector<3x2xf32> to vector<3x2xf32>
    %60 = arith.shli %c-5916_i16, %c-5916_i16 : i16
    %61 = vector.extract %41[1] : vector<3x2xf32>
    %62 = arith.remf %cst_2, %cst : f16
    %generated = tensor.generate %30 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %c1_i32 = arith.constant 1 : i32
      %264 = vector.transfer_read %alloc_15[%c4], %c1_i32 : memref<2xi32>, vector<i32>
      %265 = affine.if affine_set<(d0) : (-(d0 - 8) == 0, (d0 - (d0 - 8) - (d0 - 8)) floordiv 4 + 6 == 0, d0 == 0)>(%c15) -> memref<3x2xf16> {
        %268 = vector.extract_strided_slice %40 {offsets = [0], sizes = [2], strides = [1]} : vector<3x2xf32> to vector<2x2xf32>
        %269 = vector.broadcast %c835286953_i32 : i32 to vector<1x1xi32>
        %270 = vector.outerproduct %20, %20, %269 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
        %271 = arith.maxf %cst_1, %cst_1 : f32
        %272 = index.sizeof
        %273 = arith.divf %cst, %cst : f16
        %274 = vector.splat %c1_i32 : vector<3x2x2xi32>
        %275 = bufferization.to_memref %17 : memref<3x2x2xi1>
        %276 = arith.divui %c1418927244_i64, %c1418927244_i64 : i64
        affine.yield %alloc_13 : memref<3x2xf16>
      } else {
        %268 = math.tanh %7 : tensor<3x2x2xf16>
        %269 = index.ceildivu %c9, %c2
        %270 = index.ceildivs %c8, %c3
        %271 = index.ceildivu %50, %c8
        %c827120656_i32 = arith.constant 827120656 : i32
        %alloc_34 = memref.alloc() : memref<2xf16>
        memref.tensor_store %5, %alloc_34 : memref<2xf16>
        %272 = arith.ceildivsi %c-5916_i16, %c-5916_i16 : i16
        %273 = math.floor %cst_2 : f16
        affine.yield %alloc_13 : memref<3x2xf16>
      }
      %266 = affine.max affine_map<(d0, d1) -> (d1 mod 4 + d1 * 2, (d1 floordiv 64 - d1 - d0) floordiv 128, (d1 floordiv 64) ceildiv 2, (d1 floordiv 64 - d1 - d0) floordiv 128 - d1 mod 4)>(%c9, %c2)
      %267 = scf.while (%arg5 = %alloc_4) : (memref<3x2x2xi64>) -> memref<3x2x2xi64> {
        %268 = math.log %8 : tensor<2xf32>
        %269 = vector.multi_reduction <mul>, %40, %61 [0] : vector<3x2xf32> to vector<2xf32>
        %270 = memref.atomic_rmw addf %cst_0, %alloc_6[%c1] : (f32, memref<2xf32>) -> f32
        %271 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
        %272 = vector.fma %271, %271, %271 : vector<2x2xf32>
        %273 = arith.remui %c1418927244_i64, %c588364374_i64 : i64
        %274 = arith.addi %c1807483623_i64, %c588364374_i64 : i64
        %275 = arith.remf %cst_1, %cst_1 : f32
        %rank_34 = tensor.rank %23 : tensor<f16>
        scf.condition(%false) %arg5 : memref<3x2x2xi64>
      } do {
      ^bb0(%arg5: memref<3x2x2xi64>):
        %268 = arith.divui %c1418927244_i64, %c588364374_i64 : i64
        %cst_34 = arith.constant 1.000000e+00 : f32
        %cst_35 = arith.constant 0.000000e+00 : f32
        %269 = vector.transfer_read %alloc_12[%c3, %c6, %arg4], %cst_35 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<3x2x2xf32>, vector<2xf32>
        %270 = memref.realloc %alloc_15 : memref<2xi32> to memref<2xi32>
        %271 = math.ceil %4 : tensor<3x2x2xf32>
        %272 = arith.subi %c1807483623_i64, %c1418927244_i64 : i64
        %273 = math.log %5 : tensor<2xf16>
        %274 = vector.insertelement %cst_1, %61[%266 : index] : vector<2xf32>
        vector.print %41 : vector<3x2xf32>
        vector.print %59 : vector<3x2xf32>
        %275 = arith.andi %c1_i32, %c1_i32 : i32
        memref.store %c528704457_i32, %alloc_11[%c1, %c1] : memref<3x2xi32>
        %276 = arith.xori %c-5916_i16, %c-5916_i16 : i16
        %277 = arith.negf %cst_1 : f32
        %278 = vector.broadcast %53 : i32 to vector<3x2x2xi32>
        %279 = vector.broadcast %c540530258_i32 : i32 to vector<3xi32>
        %280 = vector.broadcast %false : i1 to vector<3xi1>
        %281 = vector.maskedload %alloc_15[%c0], %280, %279 : memref<2xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %282 = arith.remui %c835286953_i32, %c2047384402_i32 : i32
        scf.yield %alloc_4 : memref<3x2x2xi64>
      }
      tensor.yield %false : i1
    } : tensor<?x2x2xi1>
    %63 = math.absf %transposed : tensor<2x3x2xf32>
    %64 = arith.remf %cst_0, %cst_0 : f32
    %65 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    %66 = affine.apply affine_map<(d0, d1, d2) -> (16)>(%c7, %c15, %c0)
    %67 = arith.minui %c588364374_i64, %c1807483623_i64 : i64
    %68 = vector.load %alloc_16[%c2, %c0, %c0] : memref<3x2x2xf16>, vector<3x2x2xf16>
    memref.assume_alignment %alloc_11, 16 : memref<3x2xi32>
    %69 = math.floor %7 : tensor<3x2x2xf16>
    %70 = math.atan %cst_0 : f32
    %71 = math.log %5 : tensor<2xf16>
    %72 = math.floor %transposed : tensor<2x3x2xf32>
    %alloc_20 = memref.alloc() : memref<3x2x2xi64>
    memref.copy %alloc_4, %alloc_20 : memref<3x2x2xi64> to memref<3x2x2xi64>
    %73 = index.divs %c0, %28
    %74 = index.divu %51, %50
    %75 = vector.transpose %40, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
    %76 = vector.multi_reduction <add>, %40, %40 [] : vector<3x2xf32> to vector<3x2xf32>
    %77 = arith.maxf %cst_2, %cst : f16
    %78 = arith.remui %c454538438_i64, %c1418927244_i64 : i64
    %79 = affine.apply affine_map<(d0, d1) -> (d0 * -2048)>(%c11, %c9)
    %80 = math.atan2 %8, %8 : tensor<2xf32>
    %81 = affine.load %alloc_7[%c3, %c1] : memref<2x2xi1>
    %82 = index.floordivs %79, %c11
    %83 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    vector.transfer_write %83, %alloc_5[%c1, %c8, %51] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xf32>, memref<3x2x2xf32>
    %84 = tensor.empty() : tensor<3x2x2xi1>
    %mapped = linalg.map ins(%alloc_14, %13 : memref<3x2x2xi1>, tensor<3x2x2xi1>) outs(%84 : tensor<3x2x2xi1>)
      (%in: i1, %in_34: i1) {
        %264 = arith.andi %c189500516_i32, %c528704457_i32 : i32
        %265 = arith.cmpi eq, %c-5916_i16, %c-5916_i16 : i16
        %266 = arith.remf %cst_3, %cst_3 : f16
        %267 = vector.multi_reduction <add>, %83, %cst_0 [0] : vector<2xf32> to f32
        %268 = vector.transpose %59, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15 : tensor<2x2xi16>) outs(%0 : tensor<3x2x2xi16>) {
        ^bb0(%in_40: i16, %out: i16):
          %287 = tensor.empty() : tensor<2xi16>
          %288 = arith.xori %c28612_i16, %c28612_i16 : i16
          %289 = math.ceil %18 : tensor<2x3x2xf32>
          %290 = arith.addi %c588364374_i64, %c588364374_i64 : i64
          %291 = arith.maxf %cst_2, %cst : f16
          %292 = math.ctpop %in : i1
          %293 = tensor.empty(%c5) : tensor<?xi16>
          %294 = math.tanh %4 : tensor<3x2x2xf32>
          %295 = math.tanh %18 : tensor<2x3x2xf32>
          %296 = vector.shuffle %59, %41 [1, 3, 4, 5] : vector<3x2xf32>, vector<3x2xf32>
          %c1_i32 = arith.constant 1 : i32
          %297 = vector.transfer_read %alloc_11[%c6, %74], %c1_i32 : memref<3x2xi32>, vector<3xi32>
          %298 = math.absf %8 : tensor<2xf32>
          %299 = arith.shrsi %in_40, %in_40 : i16
          %300 = vector.insert %65, %59 [1] : vector<2xf32> into vector<3x2xf32>
          %301 = arith.shli %c528704457_i32, %c835286953_i32 : i32
          %302 = vector.insertelement %cst_0, %83[%c2 : index] : vector<2xf32>
          %303 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
          %304 = vector.fma %303, %303, %40 : vector<3x2xf32>
          %305 = arith.remui %in, %false : i1
          %306 = arith.minf %cst, %cst : f16
          %307 = math.ceil %10 : tensor<3x2x2xf16>
          %308 = arith.shrui %c588364374_i64, %c1418927244_i64 : i64
          %309 = vector.broadcast %false : i1 to vector<2xi1>
          %310 = vector.maskedload %alloc_8[%c0, %c1], %309, %309 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %311 = arith.xori %in, %false : i1
          %312 = bufferization.to_tensor %alloc_8 : memref<2x2xi1>
          %313 = math.tanh %cst_3 : f16
          %314 = arith.minsi %c454538438_i64, %c454538438_i64 : i64
          %collapsed_41 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<3x2x2xi1> into tensor<6x2xi1>
          %315 = memref.load %alloc_10[%c1] : memref<2xf32>
          %316 = math.powf %9, %9 : tensor<3x2x2xf16>
          memref.store %cst_0, %alloc_5[%c1, %c0, %c0] : memref<3x2x2xf32>
          %317 = affine.load %alloc_16[%c14, %c3, %c10] : memref<3x2x2xf16>
          %cast_42 = tensor.cast %14 : tensor<2xi1> to tensor<?xi1>
          linalg.yield %c-5916_i16 : i16
        } -> tensor<3x2x2xi16>
        %270 = vector.extract %83[0] : vector<2xf32>
        affine.store %cst_3, %alloc_13[%c5, %c12] : memref<3x2xf16>
        %271 = math.ceil %4 : tensor<3x2x2xf32>
        %272 = math.roundeven %4 : tensor<3x2x2xf32>
        affine.for %arg2 = 0 to 8 {
        }
        %c991169334_i64 = arith.constant 991169334 : i64
        %cast_35 = tensor.cast %10 : tensor<3x2x2xf16> to tensor<?x?x?xf16>
        %273 = vector.broadcast %false : i1 to vector<2xi1>
        %274 = vector.maskedload %alloc_7[%c0, %c1], %273, %273 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        vector.print %273 : vector<2xi1>
        %275 = arith.subi %53, %53 : i32
        affine.for %arg2 = 0 to 100 {
        }
        %alloca = memref.alloca() : memref<2x2xf32>
        %276 = index.sub %c2, %c2
        affine.store %cst_3, %alloc_13[%c4, %c13] : memref<3x2xf16>
        %277 = arith.remf %cst_1, %267 : f32
        %278 = vector.matrix_multiply %274, %274 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
        %279 = memref.load %alloc_9[%c0, %c0] : memref<2x2xi1>
        %280 = math.ctpop %0 : tensor<3x2x2xi16>
        %true_36 = index.bool.constant true
        %281 = math.tan %21 : tensor<2xf16>
        %282 = scf.execute_region -> index {
          %287 = memref.load %alloc_10[%c0] : memref<2xf32>
          %288 = vector.broadcast %c8 : index to vector<1xindex>
          %289 = vector.broadcast %c588364374_i64 : i64 to vector<1xi64>
          vector.scatter %alloc_17[%c0, %c1] [%288], %278, %289 : memref<2x2xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
          %290 = index.sub %74, %c4
          %291 = arith.xori %53, %c189500516_i32 : i32
          %292 = arith.shli %c540530258_i32, %c189500516_i32 : i32
          %293 = index.sizeof
          %294 = vector.load %alloc_4[%c1, %c1, %c0] : memref<3x2x2xi64>, vector<3x2xi64>
          %295 = math.log %7 : tensor<3x2x2xf16>
          %296 = vector.maskedload %alloc_5[%c2, %c1, %c0], %273, %65 : memref<3x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %297 = index.maxu %c3, %c0
          %298 = math.ctlz %1 : tensor<2xi32>
          %299 = math.ctpop %6 : tensor<3x2x2xi32>
          memref.assume_alignment %alloc_15, 16 : memref<2xi32>
          %300 = arith.cmpi ule, %c835286953_i32, %c2047384402_i32 : i32
          %301 = math.ipowi %c-5916_i16, %c-5916_i16 : i16
          %302 = math.log %7 : tensor<3x2x2xf16>
          scf.yield %82 : index
        }
        %alloc_37 = memref.alloc() : memref<3x2xi32>
        memref.copy %alloc_11, %alloc_37 : memref<3x2xi32> to memref<3x2xi32>
        %cast_38 = tensor.cast %21 : tensor<2xf16> to tensor<?xf16>
        %283 = vector.broadcast %51 : index to vector<2xindex>
        %284 = vector.broadcast %cst_2 : f16 to vector<2xf16>
        vector.scatter %alloc_13[%c1, %c1] [%283], %274, %284 : memref<3x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %285 = memref.load %alloc_17[%c1, %c1] : memref<2x2xi64>
        %286 = arith.divf %cst, %cst_3 : f16
        %true_39 = arith.constant true
        linalg.yield %true_39 : i1
      }
    vector.print %20 : vector<1xi32>
    %splat = tensor.splat %c528704457_i32 : tensor<2x2xi32>
    %85 = math.roundeven %10 : tensor<3x2x2xf16>
    %86 = math.ctpop %53 : i32
    memref.store %cst, %alloc_13[%c2, %c0] : memref<3x2xf16>
    %87 = arith.maxf %cst_2, %cst_2 : f16
    %extracted = tensor.extract %9[%c0, %c0, %c0] : tensor<3x2x2xf16>
    %inserted = tensor.insert %cst into %9[%c0, %c1, %c1] : tensor<3x2x2xf16>
    %88 = index.sizeof
    %89 = math.ipowi %13, %84 : tensor<3x2x2xi1>
    %90 = arith.minsi %c454538438_i64, %c588364374_i64 : i64
    vector.print %40 : vector<3x2xf32>
    %91 = math.ipowi %false, %81 : i1
    %92 = arith.maxf %cst_0, %cst_0 : f32
    %93 = arith.maxf %cst_2, %cst_3 : f16
    %94 = arith.floordivsi %c189500516_i32, %53 : i32
    %95 = vector.broadcast %81 : i1 to vector<2xi1>
    %96 = vector.maskedload %alloc_6[%c0], %95, %83 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
    %97 = math.floor %4 : tensor<3x2x2xf32>
    %98 = math.fma %5, %5, %5 : tensor<2xf16>
    %99 = math.ctpop %84 : tensor<3x2x2xi1>
    %100 = math.ipowi %15, %15 : tensor<2x2xi16>
    %101 = vector.shuffle %61, %65 [2] : vector<2xf32>, vector<2xf32>
    %102 = affine.apply affine_map<(d0, d1, d2) -> (16)>(%c11, %c10, %c14)
    %103 = index.add %26, %82
    %104 = memref.atomic_rmw mins %c588364374_i64, %alloc_17[%c1, %c0] : (i64, memref<2x2xi64>) -> i64
    %105 = math.ctlz %13 : tensor<3x2x2xi1>
    %106 = index.divu %c13, %c4
    %107 = vector.broadcast %cst_0 : f32 to vector<3x2xf32>
    %108 = vector.fma %107, %41, %59 : vector<3x2xf32>
    %109 = tensor.empty() : tensor<2xi1>
    %cast = tensor.cast %3 : tensor<2x2xf32> to tensor<?x?xf32>
    %110 = arith.minf %cst_0, %cst_1 : f32
    %111 = math.ipowi %c588364374_i64, %c588364374_i64 : i64
    %112 = index.sizeof
    %113 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%26, %c15, %c12)
    %114 = math.exp %21 : tensor<2xf16>
    %115 = arith.minf %cst_3, %cst_2 : f16
    %116 = vector.maskedload %alloc_8[%c0, %c0], %95, %95 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
    %117 = math.ctpop %c454538438_i64 : i64
    %118 = math.ctlz %1 : tensor<2xi32>
    %119 = math.roundeven %extracted : f16
    %120 = arith.remui %c528704457_i32, %c189500516_i32 : i32
    %121 = math.absi %12 : tensor<3x2xi32>
    %122 = arith.remui %53, %c2047384402_i32 : i32
    %123 = arith.muli %81, %false : i1
    %124 = vector.bitcast %20 : vector<1xi32> to vector<1xi32>
    %125 = math.round %7 : tensor<3x2x2xf16>
    %126 = arith.minsi %c1807483623_i64, %c588364374_i64 : i64
    %127 = scf.execute_region -> index {
      %264 = memref.load %alloc_4[%c0, %c1, %c1] : memref<3x2x2xi64>
      %265 = scf.execute_region -> memref<3x2xf32> {
        %281 = index.floordivs %c15, %c11
        %282 = memref.atomic_rmw maxs %c454538438_i64, %alloc_17[%c1, %c0] : (i64, memref<2x2xi64>) -> i64
        %inserted_34 = tensor.insert %c189500516_i32 into %12[%c2, %c0] : tensor<3x2xi32>
        %283 = vector.shuffle %95, %116 [0, 2] : vector<2xi1>, vector<2xi1>
        %284 = math.fma %8, %8, %8 : tensor<2xf32>
        %285 = arith.remf %cst_2, %cst_3 : f16
        %286 = arith.divsi %53, %c835286953_i32 : i32
        %287 = math.exp %9 : tensor<3x2x2xf16>
        %288 = math.fpowi %8, %1 : tensor<2xf32>, tensor<2xi32>
        %false_35 = arith.constant false
        %289 = vector.insert %cst_1, %96 [0] : f32 into vector<2xf32>
        %290 = arith.divui %c528704457_i32, %53 : i32
        %291 = bufferization.to_tensor %alloc_11 : memref<3x2xi32>
        %292 = arith.remf %cst_2, %cst_3 : f16
        %293 = vector.splat %c3 : vector<3x2x2xindex>
        %294 = math.roundeven %4 : tensor<3x2x2xf32>
        scf.yield %alloc : memref<3x2xf32>
      }
      %266 = math.ceil %transposed : tensor<2x3x2xf32>
      %267 = index.maxu %c5, %30
      %268 = vector.broadcast %cst : f16 to vector<2xf16>
      %269 = vector.maskedload %alloc_13[%c2, %c0], %95, %268 : memref<3x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %270 = math.log1p %10 : tensor<3x2x2xf16>
      %271 = index.ceildivu %c2, %26
      %272 = arith.minf %cst_3, %cst_3 : f16
      %273 = arith.mulf %cst_1, %cst_1 : f32
      %274 = vector.shuffle %59, %41 [0, 1, 2, 3, 4, 5] : vector<3x2xf32>, vector<3x2xf32>
      %275 = index.sizeof
      %276 = arith.maxf %cst_1, %cst_0 : f32
      %277 = memref.load %alloc_18[%c1, %c1] : memref<2x2xi1>
      %278 = memref.realloc %alloc_10 : memref<2xf32> to memref<1xf32>
      %279 = affine.load %alloc_15[%c11] : memref<2xi32>
      %280 = index.maxu %c1, %271
      scf.yield %c4 : index
    }
    %128 = index.floordivs %c2, %112
    %129 = memref.atomic_rmw assign %cst_0, %alloc[%c0, %c0] : (f32, memref<3x2xf32>) -> f32
    %splat_21 = tensor.splat %53 : tensor<2xi32>
    %130 = math.exp %23 : tensor<f16>
    %131 = affine.for %arg2 = 0 to 12 iter_args(%arg3 = %12) -> (tensor<3x2xi32>) {
      affine.yield %arg3 : tensor<3x2xi32>
    }
    %132 = math.round %11 : tensor<2x2xf16>
    %133 = index.divu %127, %28
    %134 = arith.andi %false, %false : i1
    %135 = vector.transpose %65, [0] : vector<2xf32> to vector<2xf32>
    %136 = tensor.empty() : tensor<3x2xf32>
    %mapped_22 = linalg.map ins(%alloc : memref<3x2xf32>) outs(%136 : tensor<3x2xf32>)
      (%in: f32) {
        %264 = index.maxs %79, %c13
        %265 = math.floor %transposed : tensor<2x3x2xf32>
        %266 = vector.insertelement %cst_1, %61[%30 : index] : vector<2xf32>
        %267 = index.sub %113, %c2
        %268 = index.ceildivu %c8, %73
        %alloc_34 = memref.alloc() : memref<2x3x2xi1>
        %269 = tensor.empty() : tensor<2x3xi1>
        %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34, %269 : memref<2x3x2xi1>, tensor<2x3xi1>) outs(%52 : tensor<3x2x2xi1>) {
        ^bb0(%in_43: i1, %in_44: i1, %out: i1):
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c835286953_i32 : vector<1xi32>, vector<1xi32> into i32
          %293 = memref.realloc %alloc_6 : memref<2xf32> to memref<3xf32>
          %294 = affine.max affine_map<(d0, d1, d2) -> (d0 - d2 ceildiv 32 + 128)>(%30, %28, %267)
          %295 = index.divu %c13, %c12
          %collapsed_45 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<3x2x2xf16> into tensor<6x2xf16>
          %296 = arith.maxui %c1418927244_i64, %c454538438_i64 : i64
          %297 = vector.shuffle %108, %41 [3] : vector<3x2xf32>, vector<3x2xf32>
          %298 = math.fma %3, %3, %3 : tensor<2x2xf32>
          %true_46 = arith.constant true
          %alloca = memref.alloca() : memref<3x2x2xf16>
          %299 = vector.broadcast %extracted : f16 to vector<3x2xf16>
          %300 = index.divs %c11, %73
          affine.store %out, %alloc_14[%c6, %c8, %c1] : memref<3x2x2xi1>
          %301 = math.roundeven %10 : tensor<3x2x2xf16>
          affine.store %extracted, %alloc_13[%c13, %c4] : memref<3x2xf16>
          %302 = math.cos %8 : tensor<2xf32>
          %303 = arith.ceildivsi %c454538438_i64, %c454538438_i64 : i64
          %304 = math.log10 %7 : tensor<3x2x2xf16>
          %c30246_i16 = arith.constant 30246 : i16
          %305 = arith.negf %cst_3 : f16
          %306 = memref.atomic_rmw minf %in, %alloc[%c1, %c0] : (f32, memref<3x2xf32>) -> f32
          memref.assume_alignment %alloc_10, 1 : memref<2xf32>
          %307 = math.tanh %5 : tensor<2xf16>
          %308 = vector.broadcast %in : f32 to vector<2x2xf32>
          %309 = vector.outerproduct %61, %96, %308 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
          %310 = vector.extract_strided_slice %107 {offsets = [0], sizes = [1], strides = [1]} : vector<3x2xf32> to vector<1x2xf32>
          %311 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%74, %112, %106, %267)
          %312 = index.divs %26, %c0
          %313 = memref.realloc %alloc_10 : memref<2xf32> to memref<1xf32>
          %314 = memref.realloc %alloc_10 : memref<2xf32> to memref<1xf32>
          %315 = math.absf %4 : tensor<3x2x2xf32>
          %true_47 = index.bool.constant true
          %316 = arith.shrui %c2047384402_i32, %c189500516_i32 : i32
          linalg.yield %false : i1
        } -> tensor<3x2x2xi1>
        %271 = affine.max affine_map<(d0) -> ((d0 ceildiv 128 - d0 * 3 - 64) * 128, d0 ceildiv 128)>(%c15)
        %272 = arith.divui %81, %81 : i1
        %extracted_35 = tensor.extract %8[%c1] : tensor<2xf32>
        %273 = arith.divui %c835286953_i32, %c528704457_i32 : i32
        %274 = vector.broadcast %81 : i1 to vector<3xi1>
        %275 = vector.maskedload %alloc_7[%c0, %c1], %274, %274 : memref<2x2xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %276 = arith.divf %cst_2, %extracted : f16
        %277 = arith.cmpi ne, %c835286953_i32, %53 : i32
        %278 = vector.bitcast %61 : vector<2xf32> to vector<2xf32>
        %279 = vector.broadcast %53 : i32 to vector<2xi32>
        %280 = arith.andi %c528704457_i32, %c189500516_i32 : i32
        %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 2, d2 - 2)>(%28, %271, %c8, %82)
        %collapsed_36 = tensor.collapse_shape %transposed [[0, 1], [2]] : tensor<2x3x2xf32> into tensor<6x2xf32>
        %splat_37 = tensor.splat %c540530258_i32 : tensor<3x2x2xi32>
        %282 = math.atan %cst_1 : f32
        %283 = math.log %8 : tensor<2xf32>
        %284 = arith.cmpi ult, %c189500516_i32, %c835286953_i32 : i32
        %dest_38, %accumulated_value_39 = vector.scan <maxf>, %41, %83 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
        %285 = vector.broadcast %false : i1 to vector<3x2x2xi1>
        %286 = math.round %7 : tensor<3x2x2xf16>
        %287 = arith.maxsi %c2047384402_i32, %c835286953_i32 : i32
        %288 = vector.create_mask %264 : vector<2xi1>
        %289 = math.fpowi %11, %splat : tensor<2x2xf16>, tensor<2x2xi32>
        scf.execute_region {
          %292 = arith.divui %81, %81 : i1
          %293 = math.ceil %136 : tensor<3x2xf32>
          %294 = arith.remf %cst, %extracted : f16
          vector.print %65 : vector<2xf32>
          %295 = vector.broadcast %cst_0 : f32 to vector<3x2xf32>
          %296 = vector.fma %295, %295, %295 : vector<3x2xf32>
          %cst_43 = arith.constant 1.000000e+00 : f32
          %297 = vector.transfer_read %alloc_5[%c0, %26, %128], %cst_43 : memref<3x2x2xf32>, vector<2x1xf32>
          %298 = tensor.empty() : tensor<2x2xf16>
          memref.assume_alignment %alloc_11, 2 : memref<3x2xi32>
          %299 = arith.ori %81, %false : i1
          %300 = vector.splat %26 : vector<3x2xindex>
          %301 = arith.subi %53, %c835286953_i32 : i32
          %302 = index.ceildivs %88, %88
          %303 = arith.remf %cst_1, %cst_1 : f32
          %304 = index.sizeof
          %305 = bufferization.clone %alloc_11 : memref<3x2xi32> to memref<3x2xi32>
          %306 = vector.transpose %288, [0] : vector<2xi1> to vector<2xi1>
          scf.yield
        }
        %290 = math.ipowi %c2047384402_i32, %c189500516_i32 : i32
        %dest_40, %accumulated_value_41 = vector.scan <add>, %108, %83 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
        %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<2xi32>) outs(%6 : tensor<3x2x2xi32>) {
        ^bb0(%in_43: i32, %out: i32):
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_44 = arith.constant 0 : i32
          %292 = vector.transfer_read %splat[%74, %c13], %c0_i32_44 : tensor<2x2xi32>, vector<i32>
          %293 = arith.shrui %c528704457_i32, %c2047384402_i32 : i32
          %294 = math.exp %21 : tensor<2xf16>
          %295 = arith.remf %in, %in : f32
          %cast_45 = tensor.cast %15 : tensor<2x2xi16> to tensor<?x?xi16>
          %296 = arith.shli %81, %81 : i1
          %297 = memref.realloc %alloc_10 : memref<2xf32> to memref<2xf32>
          %298 = vector.bitcast %95 : vector<2xi1> to vector<2xi1>
          %299 = arith.divui %c588364374_i64, %c454538438_i64 : i64
          %300 = math.roundeven %cst : f16
          %301 = arith.muli %c2047384402_i32, %c540530258_i32 : i32
          %302 = vector.insertelement %in_43, %124[%127 : index] : vector<1xi32>
          %303 = vector.reduction <maxui>, %298 : vector<2xi1> into i1
          %304 = math.sqrt %extracted : f16
          %305 = memref.load %alloc_14[%c2, %c0, %c1] : memref<3x2x2xi1>
          %306 = tensor.empty() : tensor<2x2xi32>
          %307 = index.mul %c5, %c14
          %308 = math.sqrt %9 : tensor<3x2x2xf16>
          %309 = arith.ceildivsi %c528704457_i32, %in_43 : i32
          %310 = vector.broadcast %cst_1 : f32 to vector<3xf32>
          %311 = vector.maskedload %alloc_5[%c1, %c1, %c1], %275, %310 : memref<3x2x2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
          %312 = math.ctpop %15 : tensor<2x2xi16>
          %313 = math.ipowi %306, %306 : tensor<2x2xi32>
          %314 = math.ipowi %306, %splat : tensor<2x2xi32>
          %315 = math.atan %23 : tensor<f16>
          %316 = vector.broadcast %out : i32 to vector<3x2x2xi32>
          %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x2xi16> into tensor<2x2x1xi16>
          %317 = index.maxu %103, %102
          %318 = index.add %127, %c9
          %319 = math.round %8 : tensor<2xf32>
          %320 = index.sizeof
          %321 = tensor.empty() : tensor<2xi32>
          %322 = math.absi %splat_37 : tensor<3x2x2xi32>
          linalg.yield %c835286953_i32 : i32
        } -> tensor<3x2x2xi32>
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %137 = math.log10 %4 : tensor<3x2x2xf32>
    memref.assume_alignment %alloc_6, 8 : memref<2xf32>
    memref.store %false, %alloc_19[] : memref<i1>
    %138 = math.tanh %18 : tensor<2x3x2xf32>
    %139 = arith.shli %c540530258_i32, %c528704457_i32 : i32
    affine.store %false, %alloc_9[%c5, %c15] : memref<2x2xi1>
    %140 = math.exp %cst : f16
    %141 = vector.shuffle %40, %108 [0, 1, 2, 4] : vector<3x2xf32>, vector<3x2xf32>
    %142 = vector.broadcast %81 : i1 to vector<3x2x2xi1>
    %143 = math.sqrt %11 : tensor<2x2xf16>
    %144 = math.log %4 : tensor<3x2x2xf32>
    %145 = math.log %7 : tensor<3x2x2xf16>
    %146 = index.divu %128, %c2
    %147 = arith.remf %cst_2, %cst : f16
    %148 = arith.shrui %81, %81 : i1
    %149 = index.divs %c11, %c10
    %150 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %151 = math.fma %cst_2, %cst_2, %cst : f16
    %152 = arith.ceildivsi %c454538438_i64, %c454538438_i64 : i64
    %153 = math.ctpop %14 : tensor<2xi1>
    memref.tensor_store %12, %alloc_11 : memref<3x2xi32>
    %154 = math.floor %extracted : f16
    %155 = tensor.empty() : tensor<3x2x2xf16>
    %156 = arith.minsi %81, %false : i1
    %157 = vector.broadcast %cst_3 : f16 to vector<3x2x2xf16>
    %158 = arith.floordivsi %c835286953_i32, %c528704457_i32 : i32
    %159 = math.ctpop %splat : tensor<2x2xi32>
    %160 = vector.broadcast %cst_2 : f16 to vector<3x2xf16>
    %161 = index.ceildivu %c13, %c2
    %162 = arith.remf %extracted, %cst_3 : f16
    %163 = arith.maxsi %c588364374_i64, %c1807483623_i64 : i64
    memref.assume_alignment %alloc_5, 16 : memref<3x2x2xf32>
    %164 = index.mul %74, %66
    %165 = vector.create_mask %82, %102 : vector<2x2xi1>
    affine.for %arg2 = 0 to 23 {
    }
    %166 = arith.floordivsi %c189500516_i32, %c540530258_i32 : i32
    %167 = vector.broadcast %extracted : f16 to vector<1xf16>
    %168 = vector.broadcast %false : i1 to vector<1xi1>
    %169 = vector.maskedload %alloc_13[%c2, %c0], %168, %167 : memref<3x2xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %170 = index.floordivs %c2, %c4
    %171 = arith.floordivsi %c189500516_i32, %c835286953_i32 : i32
    %172 = bufferization.clone %alloc_13 : memref<3x2xf16> to memref<3x2xf16>
    %173 = arith.divui %c28612_i16, %c-5916_i16 : i16
    %174 = vector.insert %cst_0, %61 [1] : f32 into vector<2xf32>
    %175 = math.powf %cst_3, %cst : f16
    %176 = memref.load %alloc_5[%c2, %c1, %c1] : memref<3x2x2xf32>
    %cast_23 = tensor.cast %2 : tensor<3x2x2xi16> to tensor<?x?x?xi16>
    %177 = tensor.empty() : tensor<3xf32>
    %178 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%177, %8, %3 : tensor<3xf32>, tensor<2xf32>, tensor<2x2xf32>) outs(%transposed : tensor<2x3x2xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %out: f32):
      %264 = vector.multi_reduction <add>, %160, %160 [] : vector<3x2xf16> to vector<3x2xf16>
      %265 = vector.splat %74 : vector<3x2x2xindex>
      %266 = vector.insertelement %false, %95[%164 : index] : vector<2xi1>
      affine.for %arg2 = 0 to 82 {
      }
      scf.execute_region {
        %293 = arith.minsi %c588364374_i64, %c1418927244_i64 : i64
        %294 = vector.matrix_multiply %83, %83 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %295 = vector.broadcast %74 : index to vector<2xindex>
        %296 = vector.broadcast %c1807483623_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_4[%c0, %c0, %c1] [%295], %95, %296 : memref<3x2x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %297 = math.log %21 : tensor<2xf16>
        %298 = math.cttz %splat : tensor<2x2xi32>
        %alloca_39 = memref.alloca() : memref<3x2x2xf16>
        %299 = math.tanh %cst_1 : f32
        %c19132_i16 = arith.constant 19132 : i16
        %300 = arith.andi %53, %53 : i32
        %301 = arith.remui %c2047384402_i32, %c2047384402_i32 : i32
        %302 = arith.cmpi eq, %c1418927244_i64, %c588364374_i64 : i64
        %cst_40 = arith.constant 0x4E6CC8D4 : f32
        %303 = vector.reduction <add>, %65 : vector<2xf32> into f32
        %304 = math.exp %18 : tensor<2x3x2xf32>
        %305 = vector.splat %c189500516_i32 : vector<2x2xi32>
        %cast_41 = tensor.cast %transposed : tensor<2x3x2xf32> to tensor<?x?x?xf32>
        scf.yield
      }
      %267 = math.round %5 : tensor<2xf16>
      %alloca = memref.alloca() : memref<3x2x2xi1>
      %268 = arith.muli %c28612_i16, %c-5916_i16 : i16
      %269 = index.ceildivs %74, %127
      %270 = vector.broadcast %c528704457_i32 : i32 to vector<3xi32>
      %271 = vector.broadcast %81 : i1 to vector<3xi1>
      %272 = vector.maskedload %alloc_11[%c2, %c1], %271, %270 : memref<3x2xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
      %alloc_36 = memref.alloc() : memref<2x2xf16>
      memref.tensor_store %11, %alloc_36 : memref<2x2xf16>
      %273 = math.round %22 : tensor<f16>
      %274 = vector.extract %65[1] : vector<2xf32>
      %275 = vector.broadcast %c8 : index to vector<2xindex>
      %276 = vector.broadcast %c2047384402_i32 : i32 to vector<2xi32>
      vector.scatter %alloc_15[%c0] [%275], %116, %276 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %277 = index.sub %c4, %79
      %278 = arith.maxf %in_34, %out : f32
      %279 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
      scf.execute_region {
        %293 = memref.realloc %alloc_10 : memref<2xf32> to memref<2xf32>
        %294 = affine.apply affine_map<(d0, d1) -> ((((-d1) ceildiv 128) ceildiv 2) floordiv 8)>(%50, %113)
        %295 = vector.matrix_multiply %65, %96 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %296 = arith.andi %c1807483623_i64, %c454538438_i64 : i64
        %297 = arith.shrsi %c2047384402_i32, %c835286953_i32 : i32
        %298 = arith.divf %cst_1, %in_35 : f32
        %299 = vector.broadcast %51 : index to vector<3xindex>
        vector.scatter %alloc_15[%c0] [%299], %271, %270 : memref<2xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %collapsed_39 = tensor.collapse_shape %11 [[0, 1]] : tensor<2x2xf16> into tensor<4xf16>
        %300 = index.floordivs %269, %28
        %301 = arith.ceildivsi %c588364374_i64, %c1807483623_i64 : i64
        %302 = vector.load %alloc_11[%c0, %c0] : memref<3x2xi32>, vector<2x2xi32>
        %303 = vector.maskedload %alloc_15[%c1], %271, %272 : memref<2xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %304 = tensor.empty() : tensor<2x2xf32>
        %305 = linalg.matmul ins(%3, %3 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%304 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %306 = memref.realloc %alloc_15 : memref<2xi32> to memref<2xi32>
        %307 = math.absi %c540530258_i32 : i32
        %308 = math.atan %out : f32
        scf.yield
      }
      %280 = index.sub %c7, %127
      %extracted_37 = tensor.extract %1[%c0] : tensor<2xi32>
      %281 = affine.min affine_map<(d0, d1) -> (-(d1 floordiv 64 - 64), d0 + 66, d0 floordiv 8)>(%280, %146)
      %282 = vector.broadcast %c1807483623_i64 : i64 to vector<2x2xi64>
      %283 = math.log10 %11 : tensor<2x2xf16>
      %from_elements = tensor.from_elements %c454538438_i64, %c1418927244_i64, %c454538438_i64, %c588364374_i64 : tensor<2x2xi64>
      %284 = math.roundeven %8 : tensor<2xf32>
      %285 = math.floor %22 : tensor<f16>
      %alloc_38 = memref.alloc() : memref<2x3xf32>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38 : memref<2x3xf32>) outs(%4 : tensor<3x2x2xf32>) {
      ^bb0(%in_39: f32, %out_40: f32):
        %293 = index.add %26, %281
        %294 = index.sub %26, %c6
        %295 = vector.extract %169[0] : vector<1xf16>
        memref.store %out, %alloc[%c0, %c0] : memref<3x2xf32>
        %296 = arith.remf %in, %out : f32
        %297 = arith.cmpi ule, %c528704457_i32, %c540530258_i32 : i32
        %298 = bufferization.to_memref %16 : memref<3x2x2xi1>
        memref.assume_alignment %alloc_6, 8 : memref<2xf32>
        %299 = math.roundeven %155 : tensor<3x2x2xf16>
        %300 = index.ceildivs %164, %106
        %cst_41 = arith.constant 9.822840e+08 : f32
        %301 = vector.insert %c2047384402_i32, %150 [0] : i32 into vector<1xi32>
        %302 = math.sqrt %9 : tensor<3x2x2xf16>
        %303 = math.absf %4 : tensor<3x2x2xf32>
        %304 = arith.divsi %c528704457_i32, %c540530258_i32 : i32
        memref.store %extracted_37, %alloc_11[%c2, %c0] : memref<3x2xi32>
        %305 = math.ctpop %12 : tensor<3x2xi32>
        %306 = memref.atomic_rmw minf %cst, %172[%c2, %c0] : (f16, memref<3x2xf16>) -> f16
        %307 = math.ceil %extracted : f16
        %308 = vector.broadcast %out_40 : f32 to vector<3xf32>
        %309 = vector.maskedload %alloc_12[%c2, %c0, %c0], %271, %308 : memref<3x2x2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %310 = math.exp2 %out_40 : f32
        %311 = vector.transpose %59, [1, 0] : vector<3x2xf32> to vector<2x3xf32>
        %312 = arith.maxui %c454538438_i64, %c1418927244_i64 : i64
        %313 = vector.multi_reduction <add>, %20, %c528704457_i32 [0] : vector<1xi32> to i32
        %314 = arith.divf %extracted, %cst_2 : f16
        %315 = math.roundeven %7 : tensor<3x2x2xf16>
        %316 = arith.xori %c835286953_i32, %c2047384402_i32 : i32
        %317 = math.roundeven %in_39 : f32
        %318 = math.floor %136 : tensor<3x2xf32>
        %319 = vector.broadcast %81 : i1 to vector<i1>
        %320 = vector.transfer_write %319, %14[%164] : vector<i1>, tensor<2xi1>
        %321 = vector.maskedload %alloc_18[%c1, %c0], %95, %95 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %322 = vector.shuffle %96, %61 [0, 1, 2] : vector<2xf32>, vector<2xf32>
        linalg.yield %out_40 : f32
      } -> tensor<3x2x2xf32>
      %287 = math.ctpop %false : i1
      %288 = index.sizeof
      %289 = arith.divui %81, %false : i1
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<3x2x2xf32>) {
      ^bb0(%out_39: f32):
        %293 = math.roundeven %extracted : f16
        %alloc_40 = memref.alloc() : memref<2x2xi16>
        memref.store %cst_3, %alloc_16[%c1, %c0, %c1] : memref<3x2x2xf16>
        %294 = vector.matrix_multiply %272, %150 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
        %295 = vector.broadcast %in_34 : f32 to vector<1xf32>
        %296 = vector.maskedload %alloc[%c1, %c0], %168, %295 : memref<3x2xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        vector.print %157 : vector<3x2x2xf16>
        %297 = arith.minf %out, %in : f32
        %298 = arith.remui %c1807483623_i64, %c1807483623_i64 : i64
        %alloca_41 = memref.alloca() : memref<3x2xi32>
        %299 = arith.divui %c454538438_i64, %c454538438_i64 : i64
        %300 = arith.shrui %53, %c835286953_i32 : i32
        memref.assume_alignment %alloc_8, 16 : memref<2x2xi1>
        %301 = arith.remui %c1418927244_i64, %c454538438_i64 : i64
        %302 = math.atan2 %4, %4 : tensor<3x2x2xf32>
        %303 = arith.remsi %c28612_i16, %c28612_i16 : i16
        %cst_42 = arith.constant 3.008000e+04 : f16
        %304 = math.log2 %7 : tensor<3x2x2xf16>
        %305 = vector.broadcast %cst_3 : f16 to vector<2x2xf16>
        %306 = vector.transfer_write %305, %7[%c13, %161, %280] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x2xf16>, tensor<3x2x2xf16>
        %307 = index.sub %170, %128
        %308 = vector.insertelement %c528704457_i32, %294[%288 : index] : vector<3xi32>
        %309 = tensor.empty() : tensor<3x2x2xi1>
        %310 = arith.minf %in_34, %in_34 : f32
        %311 = vector.extract %168[0] : vector<1xi1>
        %312 = index.maxu %c15, %74
        %313 = vector.maskedload %alloc[%c2, %c0], %95, %61 : memref<3x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %314 = arith.remui %extracted_37, %c540530258_i32 : i32
        %315 = math.roundeven %9 : tensor<3x2x2xf16>
        %316 = arith.cmpi sle, %c2047384402_i32, %c528704457_i32 : i32
        %alloc_43 = memref.alloc() : memref<2x2xf32>
        %317 = vector.broadcast %cst_1 : f32 to vector<3x2x2xf32>
        %318 = vector.broadcast %c540530258_i32 : i32 to vector<3x2x2xi32>
        %319 = vector.gather %alloc_43[%66, %c10] [%318], %142, %317 : memref<2x2xf32>, vector<3x2x2xi32>, vector<3x2x2xi1>, vector<3x2x2xf32> into vector<3x2x2xf32>
        %320 = arith.maxf %cst_2, %cst : f16
        %321 = arith.divf %cst_1, %out_39 : f32
        %322 = tensor.empty() : tensor<3x2xi1>
        %323 = vector.broadcast %c528704457_i32 : i32 to vector<2xi32>
        %324 = vector.gather %322[%288, %149] [%323], %116, %95 : tensor<3x2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        linalg.yield %in_35 : f32
      } -> tensor<3x2x2xf32>
      %291 = vector.broadcast %81 : i1 to vector<3x3xi1>
      %292 = vector.outerproduct %271, %271, %291 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
      linalg.yield %in_34 : f32
    } -> tensor<2x3x2xf32>
    %179 = math.atan2 %8, %8 : tensor<2xf32>
    %180 = scf.execute_region -> tensor<3x2x2xi64> {
      %264 = vector.maskedload %alloc[%c2, %c1], %95, %83 : memref<3x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %265 = math.cos %9 : tensor<3x2x2xf16>
      %266 = vector.transpose %108, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
      %267 = arith.ceildivsi %c528704457_i32, %c189500516_i32 : i32
      %268 = affine.load %alloc_11[%c15, %c0] : memref<3x2xi32>
      %269 = vector.broadcast %113 : index to vector<2xindex>
      vector.scatter %alloc_19[] [%269], %116, %95 : memref<i1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %270 = tensor.empty() : tensor<2xf32>
      %271 = tensor.empty() : tensor<2x2xf32>
      %mapped_34 = linalg.map ins(%3, %3, %3 : tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>) outs(%271 : tensor<2x2xf32>)
        (%in: f32, %in_35: f32, %in_36: f32) {
          %281 = arith.divf %extracted, %extracted : f16
          %282 = math.fma %extracted, %cst_2, %extracted : f16
          %283 = math.roundeven %11 : tensor<2x2xf16>
          vector.print %169 : vector<1xf16>
          %284 = index.divu %c12, %c10
          %285 = arith.maxsi %53, %c835286953_i32 : i32
          %286 = vector.maskedload %alloc_5[%c2, %c0, %c0], %116, %83 : memref<3x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %287 = math.ipowi %1, %1 : tensor<2xi32>
          %288 = vector.extract_strided_slice %61 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf32> to vector<1xf32>
          %289 = index.sizeof
          %290 = math.round %in_35 : f32
          %291 = arith.divf %cst_1, %in_36 : f32
          %292 = tensor.empty() : tensor<2xf32>
          %293 = index.maxu %c3, %106
          %294 = affine.load %alloc_6[%c3] : memref<2xf32>
          %295 = vector.extract %150[0] : vector<1xi32>
          %296 = math.exp %in : f32
          memref.store %81, %alloc_19[] : memref<i1>
          %cast_37 = tensor.cast %0 : tensor<3x2x2xi16> to tensor<?x?x?xi16>
          %297 = index.divu %284, %289
          %298 = tensor.empty() : tensor<2xi1>
          %299 = arith.minsi %c835286953_i32, %53 : i32
          %300 = index.add %106, %30
          %301 = arith.ceildivsi %c588364374_i64, %c454538438_i64 : i64
          affine.store %294, %alloc[%c1, %c9] : memref<3x2xf32>
          %302 = math.tanh %in : f32
          %303 = arith.maxf %cst_3, %cst_2 : f16
          %304 = arith.divui %c1807483623_i64, %c454538438_i64 : i64
          %305 = math.log %cst_0 : f32
          %306 = index.sub %c0, %112
          %307 = memref.load %alloc_6[%c1] : memref<2xf32>
          %308 = arith.maxsi %c540530258_i32, %c540530258_i32 : i32
          %cst_38 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_38 : f32
        }
      %272 = index.ceildivu %103, %170
      %273 = math.floor %155 : tensor<3x2x2xf16>
      %274 = arith.minsi %81, %81 : i1
      %275 = index.sub %103, %51
      %276 = memref.realloc %alloc_10 : memref<2xf32> to memref<3xf32>
      %277 = index.maxu %73, %50
      %278 = vector.multi_reduction <maxsi>, %124, %c189500516_i32 [0] : vector<1xi32> to i32
      %279 = index.ceildivs %103, %74
      %280 = tensor.empty() : tensor<3x2x2xi64>
      scf.yield %280 : tensor<3x2x2xi64>
    }
    %181 = math.ipowi %16, %16 : tensor<3x2x2xi1>
    %182 = affine.load %alloc_11[%c14, %c12] : memref<3x2xi32>
    %183 = math.log %5 : tensor<2xf16>
    %184 = math.absi %2 : tensor<3x2x2xi16>
    memref.store %false, %alloc_18[%c0, %c0] : memref<2x2xi1>
    %185 = math.ctpop %15 : tensor<2x2xi16>
    affine.store %c1807483623_i64, %alloc_17[%c4, %c12] : memref<2x2xi64>
    %186 = tensor.empty() : tensor<3x2x2xi64>
    %mapped_24 = linalg.map ins(%alloc_4, %alloc_4, %180 : memref<3x2x2xi64>, memref<3x2x2xi64>, tensor<3x2x2xi64>) outs(%186 : tensor<3x2x2xi64>)
      (%in: i64, %in_34: i64, %in_35: i64) {
        %264 = index.mul %26, %127
        %splat_36 = tensor.splat %c835286953_i32 : tensor<2xi32>
        %265 = bufferization.to_tensor %alloc_11 : memref<3x2xi32>
        %266 = vector.bitcast %108 : vector<3x2xf32> to vector<3x2xi32>
        %267 = vector.reduction <mul>, %116 : vector<2xi1> into i1
        %268 = index.castu %c2047384402_i32 : i32 to index
        %269 = arith.andi %c588364374_i64, %c588364374_i64 : i64
        %270 = arith.maxsi %in_34, %in : i64
        %271 = math.atan %22 : tensor<f16>
        %272 = math.absf %7 : tensor<3x2x2xf16>
        %273 = vector.multi_reduction <minf>, %157, %160 [2] : vector<3x2x2xf16> to vector<3x2xf16>
        %274 = index.maxu %30, %c5
        %275 = arith.minf %cst_0, %cst_1 : f32
        %276 = vector.matrix_multiply %83, %61 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %277 = index.ceildivu %274, %102
        %278 = arith.minsi %c189500516_i32, %c835286953_i32 : i32
        %279 = tensor.empty() : tensor<2x2xi1>
        %mapped_37 = linalg.map ins(%alloc_8 : memref<2x2xi1>) outs(%279 : tensor<2x2xi1>)
          (%in_41: i1) {
            %292 = math.round %3 : tensor<2x2xf32>
            %293 = vector.broadcast %c189500516_i32 : i32 to vector<2x2xi32>
            %294 = arith.ceildivsi %53, %c2047384402_i32 : i32
            %295 = memref.load %alloc_11[%c0, %c1] : memref<3x2xi32>
            %296 = math.floor %5 : tensor<2xf16>
            %297 = vector.extract_strided_slice %108 {offsets = [1], sizes = [1], strides = [1]} : vector<3x2xf32> to vector<1x2xf32>
            %298 = math.tanh %cst : f16
            %299 = affine.load %alloc_5[%c13, %c0, %c10] : memref<3x2x2xf32>
            %c-22303_i16 = arith.constant -22303 : i16
            %300 = vector.shuffle %293, %266 [2, 4] : vector<2x2xi32>, vector<3x2xi32>
            %cast_42 = tensor.cast %12 : tensor<3x2xi32> to tensor<?x?xi32>
            %301 = arith.remui %81, %81 : i1
            %302 = math.log2 %4 : tensor<3x2x2xf32>
            %303 = index.divu %50, %127
            %304 = math.roundeven %4 : tensor<3x2x2xf32>
            %305 = index.divu %c7, %133
            %alloc_43 = memref.alloc() : memref<2x2xi16>
            %306 = vector.broadcast %c28612_i16 : i16 to vector<3x2xi16>
            %307 = vector.broadcast %81 : i1 to vector<3x2xi1>
            %308 = vector.gather %alloc_43[%c3, %73] [%266], %307, %306 : memref<2x2xi16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi16> into vector<3x2xi16>
            memref.store %cst_1, %alloc_5[%c1, %c0, %c1] : memref<3x2x2xf32>
            %309 = memref.atomic_rmw mulf %cst_1, %alloc_5[%c2, %c1, %c0] : (f32, memref<3x2x2xf32>) -> f32
            %310 = index.castu %c7 : index to i32
            %extracted_44 = tensor.extract %180[%c2, %c1, %c0] : tensor<3x2x2xi64>
            %311 = vector.broadcast %cst_2 : f16 to vector<3xf16>
            %312 = vector.multi_reduction <add>, %68, %311 [1, 2] : vector<3x2x2xf16> to vector<3xf16>
            %313 = index.divs %170, %112
            %314 = tensor.empty() : tensor<2x2xi32>
            %315 = linalg.matmul ins(%splat, %splat : tensor<2x2xi32>, tensor<2x2xi32>) outs(%314 : tensor<2x2xi32>) -> tensor<2x2xi32>
            %316 = vector.outerproduct %95, %116, %165 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
            %317 = vector.transpose %95, [0] : vector<2xi1> to vector<2xi1>
            %318 = math.exp2 %23 : tensor<f16>
            %319 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 128)>(%170, %74)
            %320 = arith.floordivsi %c1807483623_i64, %c454538438_i64 : i64
            %321 = memref.atomic_rmw minf %cst_3, %172[%c0, %c1] : (f16, memref<3x2xf16>) -> f16
            %322 = arith.muli %c2047384402_i32, %53 : i32
            %323 = vector.broadcast %299 : f32 to vector<2x2xf32>
            %324 = vector.fma %323, %323, %323 : vector<2x2xf32>
            %false_45 = arith.constant false
            linalg.yield %false_45 : i1
          }
        %280 = scf.execute_region -> vector<3x2xi32> {
          %292 = math.powf %4, %4 : tensor<3x2x2xf32>
          %293 = math.absi %6 : tensor<3x2x2xi32>
          %294 = memref.atomic_rmw maxs %c189500516_i32, %alloc_15[%c0] : (i32, memref<2xi32>) -> i32
          %295 = index.castu %c8 : index to i32
          %296 = arith.minsi %c189500516_i32, %c189500516_i32 : i32
          %inserted_41 = tensor.insert %cst into %155[%c0, %c1, %c1] : tensor<3x2x2xf16>
          %297 = affine.max affine_map<(d0, d1) -> (-(d1 floordiv 128) + 8, d0)>(%112, %c13)
          %cst_42 = arith.constant 5.872000e+04 : f16
          %298 = math.atan2 %9, %9 : tensor<3x2x2xf16>
          %299 = vector.multi_reduction <mul>, %96, %cst_0 [0] : vector<2xf32> to f32
          %300 = math.floor %cst_3 : f16
          %301 = memref.atomic_rmw minf %cst_2, %alloc_16[%c0, %c0, %c0] : (f16, memref<3x2x2xf16>) -> f16
          %false_43 = index.bool.constant false
          %302 = math.log2 %11 : tensor<2x2xf16>
          %303 = arith.divui %c540530258_i32, %c189500516_i32 : i32
          %cast_44 = tensor.cast %splat : tensor<2x2xi32> to tensor<?x?xi32>
          scf.yield %266 : vector<3x2xi32>
        }
        %281 = math.fma %7, %155, %9 : tensor<3x2x2xf16>
        %282 = vector.maskedload %alloc[%c2, %c1], %95, %96 : memref<3x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %283 = math.tan %extracted : f16
        %284 = math.log10 %7 : tensor<3x2x2xf16>
        %285 = tensor.empty() : tensor<2x2xi16>
        %mapped_38 = linalg.map ins(%15, %15 : tensor<2x2xi16>, tensor<2x2xi16>) outs(%285 : tensor<2x2xi16>)
          (%in_41: i16, %in_42: i16) {
            %292 = index.ceildivs %164, %133
            %293 = arith.floordivsi %c1807483623_i64, %c454538438_i64 : i64
            %dest_43, %accumulated_value_44 = vector.scan <maxf>, %40, %96 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
            %294 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
            %295 = vector.outerproduct %282, %83, %294 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
            %296 = index.ceildivs %51, %113
            %297 = math.log2 %8 : tensor<2xf32>
            vector.print %107 : vector<3x2xf32>
            %298 = vector.broadcast %c8 : index to vector<2xindex>
            %299 = vector.broadcast %c189500516_i32 : i32 to vector<2xi32>
            vector.scatter %alloc_15[%c1] [%298], %116, %299 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
            %inserted_45 = tensor.insert %c540530258_i32 into %splat_21[%c0] : tensor<2xi32>
            %300 = vector.shuffle %40, %59 [1, 2, 5] : vector<3x2xf32>, vector<3x2xf32>
            %301 = index.mul %c10, %112
            %302 = vector.bitcast %150 : vector<1xi32> to vector<1xi32>
            %303 = math.absf %cst_0 : f32
            %304 = vector.matrix_multiply %169, %167 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
            %305 = tensor.empty() : tensor<2x2xf32>
            %306 = linalg.matmul ins(%3, %3 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%305 : tensor<2x2xf32>) -> tensor<2x2xf32>
            %307 = index.add %c12, %296
            %308 = vector.shuffle %165, %165 [0] : vector<2x2xi1>, vector<2x2xi1>
            memref.assume_alignment %172, 2 : memref<3x2xf16>
            %309 = arith.ori %81, %false : i1
            %310 = vector.shuffle %108, %41 [0, 1, 5] : vector<3x2xf32>, vector<3x2xf32>
            %311 = arith.cmpi uge, %c189500516_i32, %c189500516_i32 : i32
            %312 = arith.ceildivsi %c189500516_i32, %c189500516_i32 : i32
            %313 = math.round %21 : tensor<2xf16>
            %alloc_46 = memref.alloc() : memref<i1>
            memref.copy %alloc_19, %alloc_46 : memref<i1> to memref<i1>
            %314 = index.mul %c14, %26
            %315 = math.log2 %11 : tensor<2x2xf16>
            %316 = index.sub %c12, %296
            %317 = math.atan2 %8, %8 : tensor<2xf32>
            %318 = arith.floordivsi %c588364374_i64, %in_35 : i64
            %319 = arith.andi %c588364374_i64, %in : i64
            %expanded = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<3x2x2xi1> into tensor<3x2x2x1xi1>
            %true_47 = index.bool.constant true
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %286 = vector.insertelement %81, %168[%c0 : index] : vector<1xi1>
        %287 = math.ipowi %15, %15 : tensor<2x2xi16>
        %288 = memref.load %alloc_13[%c1, %c0] : memref<3x2xf16>
        vector.print %276 : vector<1xf32>
        %dest_39, %accumulated_value_40 = vector.scan <add>, %165, %95 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
        affine.store %c528704457_i32, %alloc_15[%c1] : memref<2xi32>
        %289 = vector.shuffle %107, %40 [0, 1, 2] : vector<3x2xf32>, vector<3x2xf32>
        %290 = affine.apply affine_map<(d0) -> ((-(d0 mod 128)) ceildiv 64)>(%51)
        %291 = vector.load %172[%c1, %c0] : memref<3x2xf16>, vector<3x2x2xf16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %187 = math.round %3 : tensor<2x2xf32>
    %188 = math.ctlz %182 : i32
    %189 = index.divu %c1, %c13
    %190 = math.round %10 : tensor<3x2x2xf16>
    %191 = scf.while (%arg2 = %c1807483623_i64) : (i64) -> i64 {
      %264 = index.divu %c10, %113
      memref.tensor_store %12, %alloc_11 : memref<3x2xi32>
      %265 = vector.broadcast %81 : i1 to vector<3x2xi1>
      %266 = vector.multi_reduction <minsi>, %142, %265 [1] : vector<3x2x2xi1> to vector<3x2xi1>
      %267 = arith.remf %cst_2, %cst_3 : f16
      memref.store %cst_1, %alloc[%c0, %c0] : memref<3x2xf32>
      %268 = index.add %c14, %112
      %269 = math.ctpop %c2047384402_i32 : i32
      %270 = arith.xori %c528704457_i32, %c835286953_i32 : i32
      scf.condition(%false) %c454538438_i64 : i64
    } do {
    ^bb0(%arg2: i64):
      %264 = math.absi %c2047384402_i32 : i32
      %extracted_34 = tensor.extract %180[%c0, %c0, %c0] : tensor<3x2x2xi64>
      %cst_35 = arith.constant 1.000000e+00 : f32
      %cst_36 = arith.constant 0.000000e+00 : f32
      %265 = vector.transfer_read %8[%82], %cst_36 : tensor<2xf32>, vector<f32>
      %266 = math.rsqrt %11 : tensor<2x2xf16>
      %267 = arith.minf %cst_0, %cst_1 : f32
      %268 = vector.shuffle %59, %107 [2, 5] : vector<3x2xf32>, vector<3x2xf32>
      %269 = math.fpowi %3, %splat : tensor<2x2xf32>, tensor<2x2xi32>
      %270 = math.tanh %7 : tensor<3x2x2xf16>
      %271 = index.divu %88, %c8
      %cst_37 = arith.constant 1.000000e+00 : f32
      %272 = vector.transfer_read %4[%c2, %c14, %73], %cst_37 : tensor<3x2x2xf32>, vector<3xf32>
      %cast_38 = tensor.cast %12 : tensor<3x2xi32> to tensor<?x?xi32>
      %273 = vector.broadcast %c1418927244_i64 : i64 to vector<2x2xi64>
      %274 = index.ceildivs %189, %c14
      %275 = index.divu %30, %c4
      %276 = arith.remf %cst_37, %cst_35 : f32
      %splat_39 = tensor.splat %81 : tensor<2xi1>
      scf.yield %c454538438_i64 : i64
    }
    %192 = vector.load %alloc[%c2, %c0] : memref<3x2xf32>, vector<2xf32>
    affine.for %arg2 = 0 to 61 {
    }
    %193 = index.sizeof
    %194 = vector.broadcast %c454538438_i64 : i64 to vector<1x3xi64>
    %195 = vector.transfer_write %194, %186[%c14, %51, %26] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x3xi64>, tensor<3x2x2xi64>
    memref.store %cst_1, %alloc_6[%c1] : memref<2xf32>
    %196 = index.floordivs %c7, %193
    %197 = arith.cmpf uno, %cst_2, %extracted : f16
    %198 = affine.load %alloc_6[%c9] : memref<2xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %157, %160 {inclusive = true, reduction_dim = 2 : i64} : vector<3x2x2xf16>, vector<3x2xf16>
    %199 = affine.for %arg2 = 0 to 65 iter_args(%arg3 = %109) -> (tensor<2xi1>) {
      affine.yield %arg3 : tensor<2xi1>
    }
    %200 = arith.ceildivsi %182, %53 : i32
    %201 = arith.divf %cst_0, %198 : f32
    %202 = vector.shuffle %83, %61 [1, 2] : vector<2xf32>, vector<2xf32>
    %dest_25, %accumulated_value_26 = vector.scan <minf>, %107, %96 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
    %203 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + d3 + 8 >= 0, d2 + d3 == 0, d0 >= 0)>(%c0, %c5, %c10, %c1) -> f16 {
      %264 = index.sizeof
      %265 = tensor.empty() : tensor<3x2x2xi1>
      %mapped_34 = linalg.map ins(%alloc_14, %17, %52 : memref<3x2x2xi1>, tensor<3x2x2xi1>, tensor<3x2x2xi1>) outs(%265 : tensor<3x2x2xi1>)
        (%in: i1, %in_36: i1, %in_37: i1) {
          %270 = arith.shli %in_37, %false : i1
          %271 = math.ceil %cst_3 : f16
          %splat_38 = tensor.splat %c528704457_i32 : tensor<3x2xi32>
          %272 = bufferization.to_tensor %alloc_14 : memref<3x2x2xi1>
          %273 = math.ceil %155 : tensor<3x2x2xf16>
          %274 = math.atan %198 : f32
          %275 = vector.insertelement %c2047384402_i32, %124[%113 : index] : vector<1xi32>
          %276 = affine.load %alloc_11[%c15, %c9] : memref<3x2xi32>
          %277 = affine.load %alloc_5[%c4, %c11, %c11] : memref<3x2x2xf32>
          %278 = arith.maxsi %c2047384402_i32, %c2047384402_i32 : i32
          %279 = affine.load %alloc_15[%c15] : memref<2xi32>
          %280 = vector.broadcast %c2047384402_i32 : i32 to vector<2xi32>
          %281 = vector.transfer_write %280, %12[%103, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi32>, tensor<3x2xi32>
          %282 = vector.broadcast %c835286953_i32 : i32 to vector<2xi32>
          %283 = arith.remui %c28612_i16, %c-5916_i16 : i16
          %284 = math.ipowi %splat, %splat : tensor<2x2xi32>
          %from_elements = tensor.from_elements %cst, %cst, %cst, %extracted, %cst, %extracted : tensor<3x2xf16>
          %285 = vector.matrix_multiply %83, %65 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
          %286 = tensor.empty() : tensor<2xi64>
          %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2 + d1 - (d1 + d3))>(%c0, %79, %113, %113)
          %splat_39 = tensor.splat %c2047384402_i32 : tensor<2xi32>
          %288 = vector.broadcast %in_36 : i1 to vector<3x2xi1>
          %289 = vector.broadcast %182 : i32 to vector<3x2xi32>
          %290 = vector.gather %alloc_9[%113, %c11] [%289], %288, %288 : memref<2x2xi1>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi1> into vector<3x2xi1>
          %291 = vector.bitcast %169 : vector<1xf16> to vector<1xf16>
          %292 = index.floordivs %164, %161
          %293 = math.ceil %from_elements : tensor<3x2xf16>
          %294 = vector.broadcast %198 : f32 to vector<3xf32>
          %dest_40, %accumulated_value_41 = vector.scan <maxf>, %40, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
          %295 = affine.load %alloc_18[%c6, %c7] : memref<2x2xi1>
          %296 = vector.transpose %108, [1, 0] : vector<3x2xf32> to vector<2x3xf32>
          %297 = math.exp2 %7 : tensor<3x2x2xf16>
          %298 = vector.bitcast %142 : vector<3x2x2xi1> to vector<3x2x2xi1>
          %299 = vector.broadcast %false : i1 to vector<i1>
          %300 = vector.transfer_write %299, %109[%c9] : vector<i1>, tensor<2xi1>
          %301 = vector.broadcast %extracted : f16 to vector<1x1xf16>
          %302 = vector.outerproduct %291, %169, %301 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
          %303 = math.roundeven %9 : tensor<3x2x2xf16>
          %false_42 = arith.constant false
          linalg.yield %false_42 : i1
        }
      %266 = index.ceildivs %c5, %170
      %267 = vector.splat %c540530258_i32 : vector<3x2xi32>
      %cast_35 = tensor.cast %4 : tensor<3x2x2xf32> to tensor<?x?x?xf32>
      %268 = math.tanh %7 : tensor<3x2x2xf16>
      %269 = math.sqrt %11 : tensor<2x2xf16>
      vector.print %160 : vector<3x2xf16>
      affine.yield %cst : f16
    } else {
      %264 = index.ceildivs %28, %102
      %265 = memref.realloc %alloc_15 : memref<2xi32> to memref<2xi32>
      vector.print %108 : vector<3x2xf32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %150, %150, %c835286953_i32 : vector<1xi32>, vector<1xi32> into i32
      %267 = arith.divf %cst_0, %cst_0 : f32
      %268 = vector.shuffle %168, %168 [0] : vector<1xi1>, vector<1xi1>
      scf.execute_region {
        %false_34 = index.bool.constant false
        %270 = math.floor %8 : tensor<2xf32>
        %271 = vector.splat %c835286953_i32 : vector<3x2x2xi32>
        %cst_35 = arith.constant 1.000000e+00 : f16
        %cst_36 = arith.constant 0.000000e+00 : f16
        %272 = vector.transfer_read %155[%c1, %c1, %c8], %cst_36 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<3x2x2xf16>, vector<3x3xf16>
        %273 = vector.load %alloc_16[%c2, %c1, %c0] : memref<3x2x2xf16>, vector<3x2xf16>
        %274 = vector.broadcast %c2 : index to vector<1xindex>
        vector.scatter %172[%c2, %c1] [%274], %168, %167 : memref<3x2xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %alloca = memref.alloca() : memref<3x2xf32>
        %275 = arith.xori %c528704457_i32, %c540530258_i32 : i32
        %alloca_37 = memref.alloca() : memref<3x2xf32>
        %276 = vector.broadcast %c28612_i16 : i16 to vector<3x2xi16>
        %277 = vector.broadcast %false : i1 to vector<3x2xi1>
        %278 = vector.broadcast %c528704457_i32 : i32 to vector<3x2xi32>
        %279 = vector.gather %2[%26, %c4, %103] [%278], %277, %276 : tensor<3x2x2xi16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi16> into vector<3x2xi16>
        %280 = arith.minf %198, %cst_0 : f32
        %281 = vector.bitcast %95 : vector<2xi1> to vector<2xi1>
        %282 = vector.reduction <xor>, %20 : vector<1xi32> into i32
        %283 = math.fma %cst_3, %cst, %extracted : f16
        %284 = vector.shuffle %165, %277 [0, 2, 4] : vector<2x2xi1>, vector<3x2xi1>
        %285 = vector.transpose %278, [1, 0] : vector<3x2xi32> to vector<2x3xi32>
        scf.yield
      }
      %269 = math.ceil %136 : tensor<3x2xf32>
      affine.yield %cst : f16
    }
    %204 = arith.shrui %53, %c540530258_i32 : i32
    %205 = arith.subi %c540530258_i32, %53 : i32
    %206 = index.castu %c2047384402_i32 : i32 to index
    %207 = math.log %3 : tensor<2x2xf32>
    %208 = math.ctpop %15 : tensor<2x2xi16>
    %209 = arith.addi %c-5916_i16, %c-5916_i16 : i16
    %210 = vector.extract %68[0, 1] : vector<3x2x2xf16>
    %true = arith.constant true
    %211 = vector.transfer_read %84[%189, %170, %102], %true : tensor<3x2x2xi1>, vector<2xi1>
    %212 = index.add %c1, %206
    %213 = affine.if affine_set<(d0) : (d0 mod 16 == 0, ((d0 * 8) ceildiv 64) mod 4 >= 0, (d0 * 8) ceildiv 64 >= 0, d0 - 2 == 0)>(%c15) -> memref<2xi64> {
      %264 = math.roundeven %11 : tensor<2x2xf16>
      %265 = math.log2 %8 : tensor<2xf32>
      %266 = arith.remui %true, %81 : i1
      %from_elements = tensor.from_elements %81, %false : tensor<2xi1>
      %267 = arith.remui %c1807483623_i64, %c454538438_i64 : i64
      %268 = affine.if affine_set<(d0) : (d0 mod 16 == 0, ((d0 * 8) ceildiv 64) mod 4 >= 0, (d0 * 8) ceildiv 64 >= 0, d0 - 2 == 0)>(%c14) -> f32 {
        %271 = index.ceildivu %206, %c4
        %272 = memref.atomic_rmw ori %c1807483623_i64, %alloc_17[%c1, %c0] : (i64, memref<2x2xi64>) -> i64
        %273 = vector.broadcast %182 : i32 to vector<2x2xi32>
        %274 = vector.gather %6[%51, %128, %212] [%273], %165, %273 : tensor<3x2x2xi32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi32> into vector<2x2xi32>
        %275 = math.tanh %cst_3 : f16
        %276 = vector.broadcast %198 : f32 to vector<2x2xf32>
        %277 = vector.outerproduct %96, %61, %276 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
        %278 = vector.matrix_multiply %167, %169 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %alloc_35 = memref.alloc() : memref<3x2x2xi64>
        memref.copy %alloc_4, %alloc_35 : memref<3x2x2xi64> to memref<3x2x2xi64>
        %279 = arith.maxsi %81, %true : i1
        affine.yield %cst_0 : f32
      } else {
        %271 = arith.cmpi ule, %c189500516_i32, %c528704457_i32 : i32
        memref.store %true, %alloc_7[%c0, %c0] : memref<2x2xi1>
        %272 = memref.load %alloc[%c2, %c1] : memref<3x2xf32>
        %273 = math.tan %cst_3 : f16
        %274 = math.round %10 : tensor<3x2x2xf16>
        %275 = arith.ceildivsi %53, %c528704457_i32 : i32
        %276 = arith.minui %81, %true : i1
        %277 = vector.broadcast %true : i1 to vector<3x2xi1>
        %dest_35, %accumulated_value_36 = vector.scan <and>, %142, %277 {inclusive = false, reduction_dim = 2 : i64} : vector<3x2x2xi1>, vector<3x2xi1>
        affine.yield %cst_0 : f32
      }
      %269 = arith.minsi %c1418927244_i64, %c454538438_i64 : i64
      %270 = scf.execute_region -> vector<2xi16> {
        %271 = index.divu %c1, %206
        %alloc_35 = memref.alloc() : memref<3x2x2xi32>
        %272 = vector.broadcast %53 : i32 to vector<2x2xi32>
        %273 = vector.gather %alloc_35[%c5, %146, %66] [%272], %165, %272 : memref<3x2x2xi32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi32> into vector<2x2xi32>
        %274 = math.absf %22 : tensor<f16>
        vector.print %108 : vector<3x2xf32>
        %275 = math.ctpop %14 : tensor<2xi1>
        %276 = index.sizeof
        %c64114838_i64 = arith.constant 64114838 : i64
        %277 = index.divs %26, %133
        %278 = math.absf %extracted : f16
        %279 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%103, %170, %196)
        %280 = affine.max affine_map<(d0, d1, d2) -> ((d0 ceildiv 2) * 2, ((d2 + 16) ceildiv 4) * 128 + 128)>(%133, %28, %51)
        %281 = tensor.empty() : tensor<2x2xf32>
        %282 = linalg.matmul ins(%3, %3 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%281 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %283 = math.ceil %136 : tensor<3x2xf32>
        %284 = arith.minf %cst_1, %198 : f32
        %285 = bufferization.to_memref %14 : memref<2xi1>
        %286 = index.maxu %c15, %c10
        %287 = vector.broadcast %c28612_i16 : i16 to vector<2xi16>
        scf.yield %287 : vector<2xi16>
      }
      %alloc_34 = memref.alloc() : memref<2xi64>
      affine.yield %alloc_34 : memref<2xi64>
    } else {
      %264 = math.round %8 : tensor<2xf32>
      %265 = vector.insertelement %81, %168[%82 : index] : vector<1xi1>
      %266 = memref.load %alloc_12[%c0, %c0, %c1] : memref<3x2x2xf32>
      %267 = vector.maskedload %alloc_8[%c1, %c1], %168, %168 : memref<2x2xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %268 = arith.divsi %c1418927244_i64, %c588364374_i64 : i64
      %269 = index.maxu %51, %189
      %270 = arith.ceildivsi %53, %c835286953_i32 : i32
      %271 = math.ctlz %c835286953_i32 : i32
      %alloc_34 = memref.alloc() : memref<2xi64>
      affine.yield %alloc_34 : memref<2xi64>
    }
    %214 = math.atan %8 : tensor<2xf32>
    %cast_27 = tensor.cast %9 : tensor<3x2x2xf16> to tensor<?x?x?xf16>
    %215 = vector.broadcast %149 : index to vector<2xindex>
    %216 = vector.broadcast %c2047384402_i32 : i32 to vector<2xi32>
    vector.scatter %alloc_15[%c1] [%215], %95, %216 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %217 = math.ctpop %c1418927244_i64 : i64
    %218 = affine.load %alloc_19[] : memref<i1>
    %219 = math.fpowi %10, %6 : tensor<3x2x2xf16>, tensor<3x2x2xi32>
    %220 = vector.broadcast %c540530258_i32 : i32 to vector<2xi32>
    %221 = vector.maskedload %alloc_15[%c1], %95, %220 : memref<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
    %222 = math.exp2 %cst_0 : f32
    %223 = tensor.empty() : tensor<2x2xf32>
    %mapped_28 = linalg.map ins(%3, %3, %3 : tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>) outs(%223 : tensor<2x2xf32>)
      (%in: f32, %in_34: f32, %in_35: f32) {
        %264 = index.maxu %c13, %149
        %265 = scf.while (%arg2 = %81) : (i1) -> i1 {
          %292 = memref.realloc %alloc_10 : memref<2xf32> to memref<3xf32>
          %293 = vector.reduction <mul>, %167 : vector<1xf16> into f16
          %294 = vector.create_mask %c14, %128 : vector<2x2xi1>
          %295 = arith.xori %c28612_i16, %c-5916_i16 : i16
          %296 = vector.matrix_multiply %124, %221 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi32>, vector<2xi32>) -> vector<2xi32>
          %expanded = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<3x2x2xi16> into tensor<3x2x2x1xi16>
          %297 = math.ceil %extracted : f16
          %298 = vector.shuffle %167, %169 [0] : vector<1xf16>, vector<1xf16>
          scf.condition(%true) %false : i1
        } do {
        ^bb0(%arg2: i1):
          %292 = bufferization.to_tensor %alloc_11 : memref<3x2xi32>
          %293 = arith.cmpi slt, %c540530258_i32, %c2047384402_i32 : i32
          %294 = vector.matrix_multiply %116, %95 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
          %295 = arith.maxui %false, %true : i1
          %296 = vector.insert %cst_2, %169 [0] : f16 into vector<1xf16>
          %297 = math.atan %11 : tensor<2x2xf16>
          %298 = math.ipowi %false, %true : i1
          %299 = index.add %103, %164
          %300 = math.sqrt %11 : tensor<2x2xf16>
          %301 = arith.cmpi sgt, %c28612_i16, %c-5916_i16 : i16
          %302 = math.rsqrt %4 : tensor<3x2x2xf32>
          %303 = affine.apply affine_map<(d0, d1, d2) -> (16)>(%c0, %82, %c1)
          %alloca = memref.alloca() : memref<2x2xi64>
          %304 = index.ceildivs %c14, %c0
          %305 = arith.ceildivsi %81, %true : i1
          %cast_44 = tensor.cast %109 : tensor<2xi1> to tensor<?xi1>
          scf.yield %false : i1
        }
        %266 = affine.load %alloc_7[%c15, %c9] : memref<2x2xi1>
        %267 = math.absf %9 : tensor<3x2x2xf16>
        %268 = tensor.empty(%127, %73) : tensor<?x?xi64>
        %269 = tensor.empty() : tensor<3x2x2xf32>
        %270 = arith.addi %81, %218 : i1
        %271 = math.roundeven %7 : tensor<3x2x2xf16>
        %272 = tensor.empty() : tensor<2x3x2xf16>
        %alloc_36 = memref.alloc() : memref<2x3xf16>
        %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272, %alloc_36 : tensor<2x3x2xf16>, memref<2x3xf16>) outs(%7 : tensor<3x2x2xf16>) {
        ^bb0(%in_44: f16, %in_45: f16, %out: f16):
          %292 = arith.minf %in_45, %cst_3 : f16
          %293 = math.log2 %cst_1 : f32
          %splat_46 = tensor.splat %c28612_i16 : tensor<2x2xi16>
          %294 = arith.minf %cst_2, %cst_3 : f16
          %295 = index.ceildivs %50, %c1
          %296 = index.divs %c7, %146
          %297 = bufferization.to_memref %136 : memref<3x2xf32>
          %298 = math.round %cst_3 : f16
          %299 = vector.bitcast %165 : vector<2x2xi1> to vector<2x2xi1>
          %300 = index.sizeof
          %301 = math.ctpop %218 : i1
          %302 = math.round %18 : tensor<2x3x2xf32>
          %303 = vector.shuffle %59, %107 [2, 3, 4] : vector<3x2xf32>, vector<3x2xf32>
          %c1_i16 = arith.constant 1 : i16
          %c0_i16 = arith.constant 0 : i16
          %304 = vector.transfer_read %15[%30, %c8], %c0_i16 : tensor<2x2xi16>, vector<i16>
          %305 = arith.ceildivsi %53, %182 : i32
          %306 = affine.load %alloc_11[%c8, %c11] : memref<3x2xi32>
          %307 = vector.bitcast %68 : vector<3x2x2xf16> to vector<3x2x2xi16>
          %alloc_47 = memref.alloc() : memref<2xi64>
          %308 = vector.broadcast %c1807483623_i64 : i64 to vector<3x2xi64>
          %309 = vector.broadcast %false : i1 to vector<3x2xi1>
          %310 = vector.broadcast %c540530258_i32 : i32 to vector<3x2xi32>
          %311 = vector.gather %alloc_47[%189] [%310], %309, %308 : memref<2xi64>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi64> into vector<3x2xi64>
          %312 = vector.transpose %124, [0] : vector<1xi32> to vector<1xi32>
          %313 = math.sqrt %cst_1 : f32
          %314 = math.atan %5 : tensor<2xf16>
          %315 = math.log1p %7 : tensor<3x2x2xf16>
          %316 = arith.remf %cst_1, %198 : f32
          %317 = math.absf %in_34 : f32
          %318 = arith.maxui %c588364374_i64, %c454538438_i64 : i64
          %319 = vector.broadcast %218 : i1 to vector<2xi1>
          %320 = vector.multi_reduction <mul>, %169, %extracted [0] : vector<1xf16> to f16
          %321 = arith.divui %182, %c528704457_i32 : i32
          %322 = arith.remui %306, %182 : i32
          memref.assume_alignment %alloc_7, 8 : memref<2x2xi1>
          %323 = math.ipowi %13, %52 : tensor<3x2x2xi1>
          %324 = vector.shuffle %307, %307 [3, 5] : vector<3x2x2xi16>, vector<3x2x2xi16>
          linalg.yield %in_45 : f16
        } -> tensor<3x2x2xf16>
        %274 = math.powf %8, %8 : tensor<2xf32>
        %275 = vector.insert %extracted, %210 [0] : f16 into vector<2xf16>
        %276 = index.sizeof
        %277 = tensor.empty() : tensor<2xf32>
        %mapped_37 = linalg.map ins(%alloc_10, %alloc_6 : memref<2xf32>, memref<2xf32>) outs(%277 : tensor<2xf32>)
          (%in_44: f32, %in_45: f32) {
            %292 = arith.maxsi %182, %c835286953_i32 : i32
            %293 = math.atan %in_44 : f32
            %cst_46 = arith.constant 0x4E378149 : f32
            %294 = index.floordivs %c1, %30
            %295 = vector.broadcast %c189500516_i32 : i32 to vector<3x2x2xi32>
            %296 = arith.minsi %c189500516_i32, %c835286953_i32 : i32
            %297 = tensor.empty() : tensor<2xi64>
            memref.store %218, %alloc_8[%c1, %c1] : memref<2x2xi1>
            %298 = vector.broadcast %false : i1 to vector<3x2x2xi1>
            %299 = bufferization.to_tensor %alloc_4 : memref<3x2x2xi64>
            %300 = math.sqrt %11 : tensor<2x2xf16>
            %301 = arith.divf %198, %cst_0 : f32
            %302 = arith.divui %c1418927244_i64, %c588364374_i64 : i64
            %303 = arith.remui %c540530258_i32, %c189500516_i32 : i32
            %304 = math.ceil %in_44 : f32
            vector.print %41 : vector<3x2xf32>
            %305 = math.cos %269 : tensor<3x2x2xf32>
            %306 = math.ceil %269 : tensor<3x2x2xf32>
            %307 = arith.xori %c1807483623_i64, %c454538438_i64 : i64
            %c-15343_i16 = arith.constant -15343 : i16
            %308 = math.ceil %3 : tensor<2x2xf32>
            %309 = memref.load %alloc_5[%c1, %c1, %c1] : memref<3x2x2xf32>
            %310 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64 + d0, d1, d2, -d1 + 2)>(%c4, %28, %73, %c4)
            %311 = vector.shuffle %210, %169 [0, 2] : vector<2xf16>, vector<1xf16>
            %312 = arith.minf %in_34, %in_35 : f32
            %313 = arith.remui %c189500516_i32, %c189500516_i32 : i32
            memref.tensor_store %13, %alloc_14 : memref<3x2x2xi1>
            %alloc_47 = memref.alloc() : memref<2xf16>
            memref.tensor_store %5, %alloc_47 : memref<2xf16>
            %314 = vector.insert %53, %20 [0] : i32 into vector<1xi32>
            %from_elements = tensor.from_elements %true, %218 : tensor<2xi1>
            %315 = arith.minsi %c28612_i16, %c-5916_i16 : i16
            %316 = arith.divui %true, %81 : i1
            %cst_48 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_48 : f32
          }
        %278 = arith.floordivsi %c588364374_i64, %c1807483623_i64 : i64
        %279 = index.sub %c5, %c0
        %280 = affine.apply affine_map<(d0, d1) -> (d0 mod 4)>(%128, %112)
        %281 = arith.divui %81, %false : i1
        %282 = arith.shli %81, %218 : i1
        %extracted_38 = tensor.extract %277[%c1] : tensor<2xf32>
        %283 = affine.load %alloc_17[%c8, %c14] : memref<2x2xi64>
        %284 = vector.insertelement %extracted_38, %83[%212 : index] : vector<2xf32>
        %generated_39 = tensor.generate %112 {
        ^bb0(%arg2: index, %arg3: index):
          %292 = index.ceildivs %66, %164
          %293 = vector.insert %182, %220 [0] : i32 into vector<2xi32>
          %294 = math.cos %22 : tensor<f16>
          %295 = arith.divui %c189500516_i32, %c189500516_i32 : i32
          tensor.yield %c28612_i16 : i16
        } : tensor<?x2xi16>
        %285 = memref.load %alloc_8[%c1, %c0] : memref<2x2xi1>
        %cast_40 = tensor.cast %109 : tensor<2xi1> to tensor<?xi1>
        %286 = bufferization.to_memref %generated_39 : memref<?x2xi16>
        %287 = math.round %23 : tensor<f16>
        %extracted_41 = tensor.extract %52[%c2, %c1, %c1] : tensor<3x2x2xi1>
        %288 = scf.while (%arg2 = %221) : (vector<2xi32>) -> vector<2xi32> {
          %292 = math.log %21 : tensor<2xf16>
          %293 = math.ctlz %266 : i1
          %294 = vector.extract_strided_slice %96 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf32> to vector<1xf32>
          %295 = arith.minf %cst_0, %in : f32
          %296 = affine.load %alloc_7[%c15, %c4] : memref<2x2xi1>
          %c502126210_i64 = arith.constant 502126210 : i64
          %297 = arith.subi %c540530258_i32, %c835286953_i32 : i32
          %c1947409786_i32 = arith.constant 1947409786 : i32
          scf.condition(%218) %220 : vector<2xi32>
        } do {
        ^bb0(%arg2: vector<2xi32>):
          %292 = bufferization.to_tensor %alloc_19 : memref<i1>
          %293 = index.divu %c12, %66
          %294 = arith.remui %283, %c454538438_i64 : i64
          %295 = arith.ceildivsi %218, %81 : i1
          %true_44 = index.bool.constant true
          %296 = affine.load %alloc_14[%c1, %c0, %c2] : memref<3x2x2xi1>
          %297 = math.round %in_34 : f32
          %alloc_45 = memref.alloc() : memref<2xi1>
          %298 = vector.gather %alloc_45[%279] [%220], %116, %95 : memref<2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %299 = arith.remui %266, %true : i1
          %300 = index.ceildivs %206, %102
          %301 = index.divs %26, %c2
          %302 = vector.broadcast %cst : f16 to vector<2x2xf16>
          %dest_46, %accumulated_value_47 = vector.scan <mul>, %68, %302 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2x2xf16>, vector<2x2xf16>
          affine.store %cst_0, %alloc_12[%c10, %c8, %c11] : memref<3x2x2xf32>
          %303 = arith.maxui %extracted_41, %81 : i1
          %304 = arith.minsi %false, %218 : i1
          %305 = arith.shli %c528704457_i32, %182 : i32
          scf.yield %220 : vector<2xi32>
        }
        %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%279, %164, %79, %189)
        %290 = math.tan %7 : tensor<3x2x2xf16>
        %inserted_42 = tensor.insert %extracted into %23[] : tensor<f16>
        %291 = math.roundeven %extracted_38 : f32
        %cst_43 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_43 : f32
      }
    %224 = arith.minf %cst_1, %cst_0 : f32
    %225 = memref.load %alloc_10[%c1] : memref<2xf32>
    %226 = arith.cmpi eq, %81, %true : i1
    %227 = math.exp %transposed : tensor<2x3x2xf32>
    %228 = arith.floordivsi %c1807483623_i64, %c1807483623_i64 : i64
    %rank = tensor.rank %9 : tensor<3x2x2xf16>
    %229 = math.round %5 : tensor<2xf16>
    %230 = math.fma %10, %7, %9 : tensor<3x2x2xf16>
    %true_29 = index.bool.constant true
    %231 = vector.broadcast %c454538438_i64 : i64 to vector<2xi64>
    %232 = vector.gather %alloc_4[%112, %113, %196] [%221], %95, %231 : memref<3x2x2xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %233 = arith.shli %c540530258_i32, %182 : i32
    %234 = scf.while (%arg2 = %c1807483623_i64) : (i64) -> i64 {
      %264 = arith.shli %c28612_i16, %c28612_i16 : i16
      %265 = arith.maxsi %true_29, %218 : i1
      %266 = arith.shrui %c-5916_i16, %c-5916_i16 : i16
      %267 = math.log2 %8 : tensor<2xf32>
      %268 = math.sqrt %7 : tensor<3x2x2xf16>
      %269 = affine.load %alloc_14[%c3, %c11, %c4] : memref<3x2x2xi1>
      %270 = vector.shuffle %169, %210 [0, 2] : vector<1xf16>, vector<2xf16>
      %271 = arith.remui %c-5916_i16, %c-5916_i16 : i16
      scf.condition(%true) %c454538438_i64 : i64
    } do {
    ^bb0(%arg2: i64):
      %264 = vector.bitcast %165 : vector<2x2xi1> to vector<2x2xi1>
      %265 = affine.load %alloc_17[%c4, %c4] : memref<2x2xi64>
      %266 = math.exp2 %18 : tensor<2x3x2xf32>
      vector.print %65 : vector<2xf32>
      %267 = vector.insertelement %182, %221[%74 : index] : vector<2xi32>
      %268 = vector.multi_reduction <mul>, %157, %68 [] : vector<3x2x2xf16> to vector<3x2x2xf16>
      %269 = arith.cmpi ne, %c540530258_i32, %c528704457_i32 : i32
      %270 = arith.maxf %cst_1, %cst_1 : f32
      %271 = affine.load %172[%c2, %c14] : memref<3x2xf16>
      %272 = math.cos %7 : tensor<3x2x2xf16>
      %273 = math.log10 %9 : tensor<3x2x2xf16>
      %274 = arith.shli %c-5916_i16, %c28612_i16 : i16
      %275 = vector.extract %194[0] : vector<1x3xi64>
      %cast_34 = tensor.cast %2 : tensor<3x2x2xi16> to tensor<?x?x?xi16>
      %276 = vector.reduction <maxsi>, %116 : vector<2xi1> into i1
      %277 = math.atan %3 : tensor<2x2xf32>
      scf.yield %c588364374_i64 : i64
    }
    %cst_30 = arith.constant 1.000000e+00 : f16
    %cst_31 = arith.constant 0.000000e+00 : f16
    %235 = vector.transfer_read %11[%c7, %146], %cst_31 : tensor<2x2xf16>, vector<f16>
    %236 = arith.ceildivsi %c528704457_i32, %c189500516_i32 : i32
    %237 = vector.load %alloc_7[%c0, %c0] : memref<2x2xi1>, vector<2x2xi1>
    scf.execute_region {
      %264 = arith.remui %c1418927244_i64, %c588364374_i64 : i64
      %265 = vector.broadcast %193 : index to vector<2xindex>
      vector.scatter %alloc_9[%c0, %c1] [%265], %116, %116 : memref<2x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %inserted_34 = tensor.insert %53 into %12[%c2, %c0] : tensor<3x2xi32>
      memref.alloca_scope  {
        %279 = tensor.empty() : tensor<2xi64>
        %280 = vector.broadcast %c1807483623_i64 : i64 to vector<3x2x2xi64>
        %281 = vector.broadcast %c540530258_i32 : i32 to vector<3x2x2xi32>
        %282 = vector.gather %279[%189] [%281], %142, %280 : tensor<2xi64>, vector<3x2x2xi32>, vector<3x2x2xi1>, vector<3x2x2xi64> into vector<3x2x2xi64>
        %283 = math.atan %4 : tensor<3x2x2xf32>
        %284 = arith.remui %c2047384402_i32, %c189500516_i32 : i32
        %285 = index.mul %127, %133
        %286 = arith.cmpi ule, %true, %218 : i1
        %287 = index.mul %c8, %c2
        %288 = index.divs %193, %rank
        %289 = arith.maxsi %c588364374_i64, %c1418927244_i64 : i64
        %290 = math.fpowi %223, %splat : tensor<2x2xf32>, tensor<2x2xi32>
        %291 = index.maxu %c14, %c13
        %292 = vector.multi_reduction <minf>, %167, %cst_3 [0] : vector<1xf16> to f16
        %293 = arith.divf %198, %198 : f32
        %294 = math.atan2 %8, %8 : tensor<2xf32>
        %295 = vector.transpose %59, [1, 0] : vector<3x2xf32> to vector<2x3xf32>
        %296 = arith.maxsi %c588364374_i64, %c454538438_i64 : i64
        %297 = math.ceil %9 : tensor<3x2x2xf16>
        %298 = arith.maxf %cst_0, %cst_1 : f32
        %extracted_36 = tensor.extract %2[%c1, %c1, %c0] : tensor<3x2x2xi16>
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c15, %73, %c12, %26)
        %300 = arith.addi %c1418927244_i64, %c588364374_i64 : i64
        %301 = vector.broadcast %c1807483623_i64 : i64 to vector<2x2xi64>
        %302 = vector.outerproduct %232, %232, %301 {kind = #vector.kind<xor>} : vector<2xi64>, vector<2xi64>
        %303 = index.ceildivu %193, %c10
        %304 = index.divs %127, %170
        %305 = math.atan %cst_1 : f32
        %306 = math.ctpop %12 : tensor<3x2xi32>
        %307 = vector.splat %c2047384402_i32 : vector<3x2xi32>
        %308 = arith.shrui %c-5916_i16, %extracted_36 : i16
        %alloc_37 = memref.alloc() : memref<2x2xf32>
        %309 = vector.broadcast %cst_0 : f32 to vector<3x2x2xf32>
        %310 = vector.gather %alloc_37[%c11, %c15] [%281], %142, %309 : memref<2x2xf32>, vector<3x2x2xi32>, vector<3x2x2xi1>, vector<3x2x2xf32> into vector<3x2x2xf32>
        %311 = vector.extract_strided_slice %160 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2xf16> to vector<2x2xf16>
        %312 = index.sub %c12, %133
        %313 = arith.floordivsi %c540530258_i32, %c528704457_i32 : i32
        %314 = arith.ceildivsi %c540530258_i32, %c528704457_i32 : i32
      }
      %266 = arith.minsi %c588364374_i64, %c1807483623_i64 : i64
      %267 = tensor.empty() : tensor<3x2xf32>
      %mapped_35 = linalg.map ins(%136, %136, %alloc : tensor<3x2xf32>, tensor<3x2xf32>, memref<3x2xf32>) outs(%267 : tensor<3x2xf32>)
        (%in: f32, %in_36: f32, %in_37: f32) {
          %279 = arith.minf %in, %198 : f32
          %280 = arith.shrui %true, %false : i1
          %281 = math.tanh %18 : tensor<2x3x2xf32>
          %282 = vector.transpose %83, [0] : vector<2xf32> to vector<2xf32>
          %283 = index.sizeof
          %284 = memref.atomic_rmw mulf %198, %alloc_6[%c0] : (f32, memref<2xf32>) -> f32
          memref.store %in_36, %alloc_5[%c2, %c1, %c1] : memref<3x2x2xf32>
          %285 = arith.divui %182, %c528704457_i32 : i32
          %286 = math.log %in_36 : f32
          vector.print %237 : vector<2x2xi1>
          %287 = vector.broadcast %218 : i1 to vector<3x2xi1>
          %288 = arith.cmpi ult, %c189500516_i32, %53 : i32
          %289 = math.round %3 : tensor<2x2xf32>
          %290 = affine.load %alloc_12[%c3, %c2, %c0] : memref<3x2x2xf32>
          %291 = memref.atomic_rmw assign %cst_3, %172[%c0, %c1] : (f16, memref<3x2xf16>) -> f16
          vector.print %96 : vector<2xf32>
          %292 = arith.ceildivsi %c835286953_i32, %c528704457_i32 : i32
          %293 = math.sqrt %10 : tensor<3x2x2xf16>
          vector.print %220 : vector<2xi32>
          %294 = vector.broadcast %c15 : index to vector<2xindex>
          vector.scatter %alloc_12[%c0, %c1, %c0] [%294], %116, %192 : memref<3x2x2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
          %295 = bufferization.to_tensor %alloc_13 : memref<3x2xf16>
          %296 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 128)>(%c7, %c9)
          %297 = vector.broadcast %103 : index to vector<3xindex>
          %298 = vector.broadcast %true : i1 to vector<3xi1>
          %299 = vector.broadcast %c1807483623_i64 : i64 to vector<3xi64>
          vector.scatter %alloc_17[%c1, %c0] [%297], %298, %299 : memref<2x2xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
          %false_38 = index.bool.constant false
          %dest_39, %accumulated_value_40 = vector.scan <and>, %287, %116 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
          %300 = vector.insertelement %false, %95[%rank : index] : vector<2xi1>
          %301 = math.floor %136 : tensor<3x2xf32>
          %302 = arith.xori %true_29, %218 : i1
          %303 = math.ctlz %218 : i1
          %304 = math.absi %c2047384402_i32 : i32
          %305 = memref.load %alloc_7[%c1, %c0] : memref<2x2xi1>
          %alloc_41 = memref.alloc() : memref<2xf16>
          %cst_42 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_42 : f32
        }
      %268 = math.log %3 : tensor<2x2xf32>
      %269 = arith.cmpi eq, %81, %81 : i1
      %270 = math.ceil %3 : tensor<2x2xf32>
      %271 = vector.broadcast %c454538438_i64 : i64 to vector<3x2x2xi64>
      %272 = arith.cmpi sle, %false, %218 : i1
      %273 = scf.while (%arg2 = %c1418927244_i64) : (i64) -> i64 {
        %false_36 = index.bool.constant false
        %279 = index.floordivs %50, %30
        %280 = math.rsqrt %267 : tensor<3x2xf32>
        %281 = vector.reduction <maxui>, %168 : vector<1xi1> into i1
        %282 = arith.cmpi sgt, %false, %true : i1
        %283 = math.ceil %cst : f16
        %284 = arith.minf %cst_2, %cst_3 : f16
        %285 = math.log %cst_0 : f32
        scf.condition(%true) %arg2 : i64
      } do {
      ^bb0(%arg2: i64):
        %279 = math.ctpop %13 : tensor<3x2x2xi1>
        %280 = vector.broadcast %cst_1 : f32 to vector<3x2x2xf32>
        %281 = vector.fma %280, %280, %280 : vector<3x2x2xf32>
        %282 = vector.broadcast %198 : f32 to vector<2x2xf32>
        %283 = vector.outerproduct %61, %96, %282 {kind = #vector.kind<mul>} : vector<2xf32>, vector<2xf32>
        %284 = vector.broadcast %88 : index to vector<1xindex>
        vector.scatter %alloc_15[%c1] [%284], %168, %20 : memref<2xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %285 = math.powf %cst_30, %cst : f16
        %286 = math.tanh %cst : f16
        %287 = tensor.empty() : tensor<2xi16>
        %288 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
        %289 = vector.outerproduct %83, %83, %288 {kind = #vector.kind<maxf>} : vector<2xf32>, vector<2xf32>
        %290 = math.atan %18 : tensor<2x3x2xf32>
        %291 = index.sizeof
        %extracted_36 = tensor.extract %11[%c1, %c1] : tensor<2x2xf16>
        %292 = index.sizeof
        %293 = math.ceil %8 : tensor<2xf32>
        %alloc_37 = memref.alloc() : memref<3x2x2xi16>
        memref.tensor_store %0, %alloc_37 : memref<3x2x2xi16>
        %294 = bufferization.to_tensor %172 : memref<3x2xf16>
        %295 = tensor.empty() : tensor<3x2x2xi32>
        scf.yield %c454538438_i64 : i64
      }
      %274 = index.maxu %149, %146
      %275 = math.ceil %21 : tensor<2xf16>
      %276 = vector.broadcast %cst : f16 to vector<1x1xf16>
      %277 = vector.outerproduct %167, %167, %276 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %278 = index.divs %113, %133
      scf.yield
    }
    vector.print %59 : vector<3x2xf32>
    vector.print %40 : vector<3x2xf32>
    %238 = arith.divui %c540530258_i32, %182 : i32
    %239 = index.sub %133, %c5
    %240 = arith.ceildivsi %true_29, %218 : i1
    %241 = math.log10 %3 : tensor<2x2xf32>
    %242 = math.ctpop %15 : tensor<2x2xi16>
    %243 = arith.muli %c528704457_i32, %c2047384402_i32 : i32
    %244 = vector.insertelement %cst, %167[%112 : index] : vector<1xf16>
    %extracted_32 = tensor.extract %1[%c1] : tensor<2xi32>
    %245 = math.powf %4, %4 : tensor<3x2x2xf32>
    %246 = arith.muli %c1807483623_i64, %c1418927244_i64 : i64
    %247 = math.absi %c1807483623_i64 : i64
    %248 = memref.atomic_rmw assign %cst_2, %172[%c1, %c1] : (f16, memref<3x2xf16>) -> f16
    %249 = math.roundeven %cst : f16
    %collapsed = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<3x2x2xi16> into tensor<6x2xi16>
    %250 = vector.broadcast %198 : f32 to vector<2x2xf32>
    %251 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %108, %59, %250 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
    %252 = math.cttz %c1807483623_i64 : i64
    %253 = vector.multi_reduction <maxf>, %157, %210 [0, 1] : vector<3x2x2xf16> to vector<2xf16>
    %254 = affine.load %alloc_4[%c14, %c8, %c2] : memref<3x2x2xi64>
    %255 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c15, %50, %189)
    %256 = arith.minf %198, %cst_0 : f32
    vector.print %169 : vector<1xf16>
    %257 = math.sqrt %5 : tensor<2xf16>
    %258 = arith.minsi %c540530258_i32, %extracted_32 : i32
    %259 = tensor.empty() : tensor<2x2xf16>
    %260 = linalg.copy ins(%11 : tensor<2x2xf16>) outs(%259 : tensor<2x2xf16>) -> tensor<2x2xf16>
    %261 = tensor.empty() : tensor<2x3x2xi1>
    %transposed_33 = linalg.transpose ins(%52 : tensor<3x2x2xi1>) outs(%261 : tensor<2x3x2xi1>) permutation = [2, 0, 1] 
    %262 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%8 : tensor<2xf32>) outs(%262 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %264 = math.exp %198 : f32
        %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 8, d0 ceildiv 32)>(%133, %103, %c11, %c6)
        %266 = vector.extract_strided_slice %107 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2xf32> to vector<2x2xf32>
        %extracted_34 = tensor.extract %10[%c0, %c0, %c1] : tensor<3x2x2xf16>
        %267 = math.round %8 : tensor<2xf32>
        %268 = memref.atomic_rmw maxu %254, %alloc_17[%c1, %c0] : (i64, memref<2x2xi64>) -> i64
        %269 = index.mul %c2, %c13
        %270 = arith.remui %extracted_32, %c540530258_i32 : i32
        %cst_35 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_35 : f32
      }
    scf.parallel (%arg2, %arg3) = (%239, %127) to (%170, %30) step (%c8, %c11) {
      %264 = math.ceil %262 : tensor<f32>
      %265 = math.absi %splat_21 : tensor<2xi32>
      %266 = index.sizeof
      %267 = scf.while (%arg4 = %210) : (vector<2xf16>) -> vector<2xf16> {
        %279 = index.sizeof
        %280 = memref.realloc %alloc_6 : memref<2xf32> to memref<2xf32>
        %281 = vector.insert %cst_0, %192 [1] : f32 into vector<2xf32>
        %282 = math.exp %260 : tensor<2x2xf16>
        %283 = arith.minf %cst_30, %cst : f16
        %284 = vector.insertelement %198, %96[%103 : index] : vector<2xf32>
        %285 = arith.remf %cst_30, %extracted : f16
        %286 = math.atan2 %22, %22 : tensor<f16>
        scf.condition(%true) %210 : vector<2xf16>
      } do {
      ^bb0(%arg4: vector<2xf16>):
        %279 = vector.broadcast %c-5916_i16 : i16 to vector<1xi16>
        %280 = vector.transfer_write %279, %0[%c14, %51, %73] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi16>, tensor<3x2x2xi16>
        %281 = math.ipowi %180, %186 : tensor<3x2x2xi64>
        %282 = index.maxu %149, %c15
        %283 = affine.load %alloc_16[%c6, %c6, %c0] : memref<3x2x2xf16>
        %284 = arith.shrui %c835286953_i32, %53 : i32
        %285 = math.roundeven %10 : tensor<3x2x2xf16>
        %286 = arith.shrui %c28612_i16, %c-5916_i16 : i16
        %287 = arith.andi %182, %c540530258_i32 : i32
        %288 = math.roundeven %8 : tensor<2xf32>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %220, %220, %182 : vector<2xi32>, vector<2xi32> into i32
        %290 = arith.cmpi ugt, %extracted_32, %extracted_32 : i32
        %291 = vector.insertelement %false, %116[%112 : index] : vector<2xi1>
        %292 = vector.broadcast %106 : index to vector<1xindex>
        vector.scatter %alloc_13[%c2, %c0] [%292], %168, %169 : memref<3x2xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %293 = math.round %cst_1 : f32
        %294 = memref.load %alloc_18[%c1, %c1] : memref<2x2xi1>
        %295 = arith.ceildivsi %c528704457_i32, %c189500516_i32 : i32
        scf.yield %210 : vector<2xf16>
      }
      %268 = arith.remf %cst_3, %cst_2 : f16
      %269 = math.log2 %cst : f16
      %270 = vector.bitcast %116 : vector<2xi1> to vector<2xi1>
      scf.execute_region {
        %false_35 = index.bool.constant false
        %279 = memref.realloc %alloc_15 : memref<2xi32> to memref<1xi32>
        %280 = math.roundeven %223 : tensor<2x2xf32>
        %281 = math.atan2 %223, %223 : tensor<2x2xf32>
        %282 = vector.broadcast %53 : i32 to vector<3x2xi32>
        %283 = arith.minf %cst_1, %198 : f32
        %cast_36 = tensor.cast %11 : tensor<2x2xf16> to tensor<?x?xf16>
        %284 = memref.atomic_rmw mulf %cst_0, %alloc_5[%c1, %c0, %c1] : (f32, memref<3x2x2xf32>) -> f32
        %285 = math.ctpop %0 : tensor<3x2x2xi16>
        %286 = index.ceildivu %51, %c2
        %extracted_37 = tensor.extract %260[%c0, %c1] : tensor<2x2xf16>
        %287 = arith.ori %254, %c454538438_i64 : i64
        %288 = vector.extract %192[0] : vector<2xf32>
        %289 = math.exp %11 : tensor<2x2xf16>
        %290 = index.maxs %26, %212
        %291 = memref.realloc %alloc_15 : memref<2xi32> to memref<1xi32>
        scf.yield
      }
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%103, %82, %193, %c2)
      %cst_34 = arith.constant 1.000000e+00 : f32
      %272 = vector.transfer_read %4[%271, %103, %164], %cst_34 : tensor<3x2x2xf32>, vector<1x3xf32>
      %273 = math.sqrt %10 : tensor<3x2x2xf16>
      %274 = index.divu %c5, %c12
      %275 = math.atan %11 : tensor<2x2xf16>
      %276 = vector.shuffle %210, %167 [0, 1] : vector<2xf16>, vector<1xf16>
      %277 = math.round %cst_34 : f32
      %278 = arith.andi %c454538438_i64, %c588364374_i64 : i64
      scf.yield
    }
    %263 = affine.vector_load %alloc[%103, %102] : memref<3x2xf32>, vector<2xf32>
    affine.vector_store %83, %alloc_10[%239] : memref<2xf32>, vector<2xf32>
    vector.print %20 : vector<1xi32>
    vector.print %40 : vector<3x2xf32>
    vector.print %41 : vector<3x2xf32>
    vector.print %59 : vector<3x2xf32>
    vector.print %61 : vector<2xf32>
    vector.print %65 : vector<2xf32>
    vector.print %68 : vector<3x2x2xf16>
    vector.print %83 : vector<2xf32>
    vector.print %95 : vector<2xi1>
    vector.print %96 : vector<2xf32>
    vector.print %107 : vector<3x2xf32>
    vector.print %108 : vector<3x2xf32>
    vector.print %116 : vector<2xi1>
    vector.print %124 : vector<1xi32>
    vector.print %142 : vector<3x2x2xi1>
    vector.print %150 : vector<1xi32>
    vector.print %157 : vector<3x2x2xf16>
    vector.print %160 : vector<3x2xf16>
    vector.print %165 : vector<2x2xi1>
    vector.print %167 : vector<1xf16>
    vector.print %168 : vector<1xi1>
    vector.print %169 : vector<1xf16>
    vector.print %192 : vector<2xf32>
    vector.print %194 : vector<1x3xi64>
    vector.print %210 : vector<2xf16>
    vector.print %220 : vector<2xi32>
    vector.print %221 : vector<2xi32>
    vector.print %231 : vector<2xi64>
    vector.print %232 : vector<2xi64>
    vector.print %237 : vector<2x2xi1>
    vector.print %263 : vector<2xf32>
    vector.print %c540530258_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c-5916_i16 : i16
    vector.print %c1807483623_i64 : i64
    vector.print %c189500516_i32 : i32
    vector.print %c588364374_i64 : i64
    vector.print %c528704457_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c28612_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c1418927244_i64 : i64
    vector.print %c2047384402_i32 : i32
    vector.print %c454538438_i64 : i64
    vector.print %c835286953_i32 : i32
    vector.print %53 : i32
    vector.print %false : i1
    vector.print %81 : i1
    vector.print %extracted : f16
    vector.print %182 : i32
    vector.print %198 : f32
    vector.print %true : i1
    vector.print %218 : i1
    vector.print %true_29 : i1
    vector.print %cst_30 : f16
    vector.print %extracted_32 : i32
    vector.print %254 : i64
    return
  }
}
libgcov profiling error:/data/mlir-fuzz/build/tools/mlir/lib/Dialect/Linalg/IR/CMakeFiles/obj.MLIRLinalgDialect.dir/LinalgOps.cpp.gcda:overwriting an existing profile data with a different timestamp
