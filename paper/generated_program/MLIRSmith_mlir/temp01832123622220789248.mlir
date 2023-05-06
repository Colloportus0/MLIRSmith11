module {
  func.func @func1(%arg0: index) {
    %c1577916601_i64 = arith.constant 1577916601 : i64
    %c31913_i16 = arith.constant 31913 : i16
    %false = arith.constant false
    %cst = arith.constant 2.289600e+04 : f16
    %cst_0 = arith.constant 1.13559578E+9 : f32
    %c8527_i16 = arith.constant 8527 : i16
    %c-167_i16 = arith.constant -167 : i16
    %false_1 = arith.constant false
    %true = arith.constant true
    %cst_2 = arith.constant 4.534400e+04 : f16
    %true_3 = arith.constant true
    %false_4 = arith.constant false
    %c289369762_i32 = arith.constant 289369762 : i32
    %cst_5 = arith.constant 4.204000e+03 : f16
    %c2055696075_i32 = arith.constant 2055696075 : i32
    %c31685_i16 = arith.constant 31685 : i16
    %0 = tensor.empty() : tensor<11xf32>
    %1 = tensor.empty() : tensor<11xi16>
    %2 = tensor.empty() : tensor<8x11x11xf32>
    %3 = tensor.empty() : tensor<13x7xi32>
    %4 = tensor.empty() : tensor<11xi32>
    %5 = tensor.empty() : tensor<11xf16>
    %6 = tensor.empty() : tensor<8x11x11xi1>
    %7 = tensor.empty() : tensor<11xi1>
    %8 = tensor.empty() : tensor<8x13xi32>
    %9 = tensor.empty() : tensor<11xf32>
    %10 = tensor.empty() : tensor<8x11x11xi1>
    %11 = tensor.empty() : tensor<8x11x11xi32>
    %12 = tensor.empty() : tensor<8x11x11xi64>
    %13 = tensor.empty() : tensor<8x11x11xf32>
    %14 = tensor.empty() : tensor<8x13xi16>
    %15 = tensor.empty() : tensor<11xi1>
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
    %alloc = memref.alloc() : memref<13x7xf32>
    %alloc_6 = memref.alloc() : memref<13x7xf16>
    %alloc_7 = memref.alloc() : memref<11xi1>
    %alloc_8 = memref.alloc() : memref<8x11x11xf32>
    %alloc_9 = memref.alloc() : memref<13x7xf32>
    %alloc_10 = memref.alloc() : memref<11xf16>
    %alloc_11 = memref.alloc() : memref<8x11x11xi32>
    %alloc_12 = memref.alloc() : memref<11xi16>
    %alloc_13 = memref.alloc() : memref<13x7xi32>
    %alloc_14 = memref.alloc() : memref<11xf16>
    %alloc_15 = memref.alloc() : memref<8x13xf16>
    %alloc_16 = memref.alloc() : memref<8x13xi64>
    %alloc_17 = memref.alloc() : memref<13x7xi16>
    %alloc_18 = memref.alloc() : memref<8x11x11xi1>
    %alloc_19 = memref.alloc() : memref<11xi32>
    %alloc_20 = memref.alloc() : memref<8x11x11xi32>
    %16 = tensor.empty() : tensor<8x11x11xi1>
    %17 = linalg.copy ins(%10 : tensor<8x11x11xi1>) outs(%16 : tensor<8x11x11xi1>) -> tensor<8x11x11xi1>
    %18 = tensor.empty() : tensor<11xi1>
    %transposed = linalg.transpose ins(%15 : tensor<11xi1>) outs(%18 : tensor<11xi1>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<8xi1>
    linalg.reduce ins(%17 : tensor<8x11x11xi1>) outs(%alloc_21 : memref<8xi1>) dimensions = [1, 2] 
      (%in: i1, %init: i1) {
        memref.store %cst_0, %alloc_8[%c2, %c7, %c7] : memref<8x11x11xf32>
        %264 = index.casts %c1577916601_i64 : i64 to index
        %265 = math.log1p %5 : tensor<11xf16>
        %266 = bufferization.to_memref %13 : memref<8x11x11xf32>
        %267 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %268 = arith.remf %cst_5, %cst_5 : f16
        %269 = vector.broadcast %c1577916601_i64 : i64 to vector<13x7xi64>
        %270 = vector.broadcast %false_1 : i1 to vector<13x7xi1>
        %271 = vector.broadcast %c289369762_i32 : i32 to vector<13x7xi32>
        %272 = vector.gather %12[%c13, %c9, %c11] [%271], %270, %269 : tensor<8x11x11xi64>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xi64> into vector<13x7xi64>
        %alloca_42 = memref.alloca() : memref<11xf32>
        %false_43 = arith.constant false
        linalg.yield %false_43 : i1
      }
    %19 = scf.parallel (%arg1) = (%c8) to (%c2) step (%c13) init (%9) -> tensor<11xf32> {
      %264 = math.fpowi %cst_0, %c289369762_i32 : f32, i32
      %265 = arith.shrsi %c8527_i16, %c31685_i16 : i16
      %266 = arith.divui %true_3, %false_1 : i1
      %alloca_42 = memref.alloca() : memref<8x11x11xi32>
      %267 = vector.broadcast %cst_5 : f16 to vector<13x13xf16>
      %268 = vector.broadcast %cst_5 : f16 to vector<13xf16>
      %dest_43, %accumulated_value_44 = vector.scan <minf>, %267, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<13x13xf16>, vector<13xf16>
      %rank_45 = tensor.rank %6 : tensor<8x11x11xi1>
      %269 = arith.remui %c2055696075_i32, %c2055696075_i32 : i32
      %270 = memref.alloca_scope  -> (i32) {
        %281 = math.tan %5 : tensor<11xf16>
        %282 = index.divu %c10, %c0
        %283 = arith.divsi %false, %false : i1
        %284 = bufferization.clone %alloc_18 : memref<8x11x11xi1> to memref<8x11x11xi1>
        %285 = index.sizeof
        %286 = arith.minui %true_3, %false : i1
        %287 = arith.maxui %c8527_i16, %c31685_i16 : i16
        %288 = math.log1p %0 : tensor<11xf32>
        %cast_46 = tensor.cast %0 : tensor<11xf32> to tensor<?xf32>
        %289 = vector.splat %c2055696075_i32 : vector<11xi32>
        %290 = affine.max affine_map<(d0, d1, d2) -> (-d0)>(%c0, %c6, %arg1)
        %291 = arith.divui %c289369762_i32, %c2055696075_i32 : i32
        %292 = math.log1p %13 : tensor<8x11x11xf32>
        %293 = index.ceildivs %c14, %285
        %294 = bufferization.clone %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %295 = bufferization.to_memref %2 : memref<8x11x11xf32>
        %296 = math.log1p %0 : tensor<11xf32>
        %from_elements_47 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<11xf32>
        %297 = math.log10 %9 : tensor<11xf32>
        %298 = math.ipowi %15, %7 : tensor<11xi1>
        %299 = affine.apply affine_map<(d0, d1) -> (d0 * 128 + 2)>(%c2, %c2)
        %300 = index.casts %c31913_i16 : i16 to index
        %301 = vector.broadcast %c1577916601_i64 : i64 to vector<11x7x11xi64>
        %302 = vector.broadcast %c1577916601_i64 : i64 to vector<7x11xi64>
        %dest_48, %accumulated_value_49 = vector.scan <or>, %301, %302 {inclusive = true, reduction_dim = 0 : i64} : vector<11x7x11xi64>, vector<7x11xi64>
        %303 = vector.broadcast %true_3 : i1 to vector<1xi1>
        %304 = vector.extract_strided_slice %303 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %305 = index.divu %c8, %c5
        %306 = arith.minui %true_3, %false : i1
        %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %303, %304, %true_3 : vector<1xi1>, vector<1xi1> into i1
        %from_elements_50 = tensor.from_elements %cst_5, %cst, %cst, %cst, %cst_2, %cst, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst, %cst_5, %cst, %cst, %cst, %cst_2, %cst_5, %cst_5, %cst, %cst_2, %cst, %cst_5, %cst, %cst_2, %cst, %cst_5, %cst, %cst_2, %cst, %cst_5, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst, %cst_2, %cst, %cst_5, %cst, %cst_5, %cst_2, %cst_5, %cst, %cst_5, %cst_2, %cst_5, %cst_2, %cst, %cst_5, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_5 : tensor<8x13xf16>
        %308 = arith.cmpi sge, %false_1, %false_1 : i1
        %309 = arith.shrsi %c1577916601_i64, %c1577916601_i64 : i64
        %310 = index.casts %c31685_i16 : i16 to index
        %311 = tensor.empty() : tensor<8x11x11xi32>
        memref.alloca_scope.return %c289369762_i32 : i32
      }
      %271 = math.rsqrt %13 : tensor<8x11x11xf32>
      %272 = bufferization.to_memref %4 : memref<11xi32>
      %273 = affine.load %alloc_16[%c9, %c12] : memref<8x13xi64>
      %274 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      %275 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %274, %275, %cst_0 : vector<1xf32>, vector<1xf32> into f32
      %277 = math.ctpop %14 : tensor<8x13xi16>
      %278 = arith.muli %c31685_i16, %c-167_i16 : i16
      bufferization.dealloc_tensor %3 : tensor<13x7xi32>
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %274, %274, %cst_0 : vector<1xf32>, vector<1xf32> into f32
      %280 = tensor.empty() : tensor<11xf32>
      scf.reduce(%280)  : tensor<11xf32> {
      ^bb0(%arg2: tensor<11xf32>, %arg3: tensor<11xf32>):
        %extracted_46 = tensor.extract %6[%c6, %c1, %c7] : tensor<8x11x11xi1>
        %281 = vector.bitcast %274 : vector<1xf32> to vector<1xf32>
        %rank_47 = tensor.rank %14 : tensor<8x13xi16>
        %282 = vector.bitcast %274 : vector<1xf32> to vector<1xf32>
        %alloca_48 = memref.alloca() : memref<8x11x11xi16>
        %283 = affine.apply affine_map<(d0) -> (d0 ceildiv 4)>(%c14)
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c0, %c0, %c1)
        %285 = math.atan %2 : tensor<8x11x11xf32>
        %286 = tensor.empty() : tensor<11xf32>
        scf.reduce.return %286 : tensor<11xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_19[%c10] : memref<11xi32>, vector<8xi32>
    affine.vector_store %20, %alloc_19[%c7] : memref<11xi32>, vector<8xi32>
    %21 = tensor.empty() : tensor<11xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%1, %21 : tensor<11xi16>, tensor<11xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %cast = tensor.cast %10 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
    %24 = vector.insertelement %c2055696075_i32, %20[%c13 : index] : vector<8xi32>
    %25 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %26 = index.sub %c12, %c10
    %27 = vector.extract_strided_slice %25 {offsets = [5], sizes = [2], strides = [1]} : vector<8xi32> to vector<2xi32>
    %28 = vector.insert %c2055696075_i32, %25 [1] : i32 into vector<8xi32>
    %29 = tensor.empty() : tensor<8x11x11xi16>
    %30 = vector.broadcast %c-167_i16 : i16 to vector<8x11x11xi16>
    %31 = vector.broadcast %false_1 : i1 to vector<8x11x11xi1>
    %32 = vector.broadcast %c2055696075_i32 : i32 to vector<8x11x11xi32>
    %33 = vector.gather %29[%c7, %c10, %c14] [%32], %31, %30 : tensor<8x11x11xi16>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi16> into vector<8x11x11xi16>
    %34 = vector.extract_strided_slice %25 {offsets = [4], sizes = [1], strides = [1]} : vector<8xi32> to vector<1xi32>
    %35 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
    %36 = math.roundeven %13 : tensor<8x11x11xf32>
    %37 = math.exp %cst_2 : f16
    %38 = index.sizeof
    %39 = arith.remf %cst, %cst_5 : f16
    %40 = vector.insertelement %c289369762_i32, %27[%c14 : index] : vector<2xi32>
    %41 = affine.if affine_set<(d0, d1, d2) : (d1 mod 16 - 1 >= 0)>(%c11, %c10, %c5) -> i16 {
      %264 = memref.realloc %alloc_12 : memref<11xi16> to memref<7xi16>
      %265 = vector.insertelement %c289369762_i32, %20[%c12 : index] : vector<8xi32>
      %266 = arith.remsi %c31913_i16, %c31685_i16 : i16
      %267 = bufferization.clone %alloc_8 : memref<8x11x11xf32> to memref<8x11x11xf32>
      %268 = math.copysign %13, %13 : tensor<8x11x11xf32>
      %269 = vector.extract_strided_slice %31 {offsets = [5], sizes = [2], strides = [1]} : vector<8x11x11xi1> to vector<2x11x11xi1>
      memref.store %c289369762_i32, %alloc_19[%c7] : memref<11xi32>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, 0)>(%c1, %c9, %c10, %c5)
      affine.yield %c-167_i16 : i16
    } else {
      %264 = vector.extract_strided_slice %25 {offsets = [2], sizes = [5], strides = [1]} : vector<8xi32> to vector<5xi32>
      %265 = arith.remui %false_1, %false_1 : i1
      %266 = index.maxs %c5, %c12
      %267 = math.copysign %9, %9 : tensor<11xf32>
      %268 = arith.divsi %false, %true : i1
      %269 = vector.broadcast %cst_2 : f16 to vector<8x13xf16>
      %270 = arith.divui %c1577916601_i64, %c1577916601_i64 : i64
      %271 = bufferization.clone %alloc_12 : memref<11xi16> to memref<11xi16>
      affine.yield %c-167_i16 : i16
    }
    %42 = index.sizeof
    %43 = memref.alloca_scope  -> (f32) {
      %264 = math.ctlz %c31913_i16 : i16
      %265 = vector.insertelement %c289369762_i32, %20[%c0 : index] : vector<8xi32>
      %266 = index.maxs %c2, %c15
      %267 = index.sub %c4, %c14
      %268 = arith.xori %c-167_i16, %c-167_i16 : i16
      %269 = vector.splat %true_3 : vector<11xi1>
      %270 = math.expm1 %0 : tensor<11xf32>
      %271 = arith.divui %c2055696075_i32, %c289369762_i32 : i32
      %extracted_42 = tensor.extract %8[%c6, %c11] : tensor<8x13xi32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<8x11x11xi64>) {
      ^bb0(%out: i64):
        %291 = math.tanh %2 : tensor<8x11x11xf32>
        %292 = vector.broadcast %cst_0 : f32 to vector<8xf32>
        %293 = vector.broadcast %true : i1 to vector<8xi1>
        %294 = vector.maskedload %alloc[%c9, %c5], %293, %292 : memref<13x7xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %expanded_45 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<8x11x11xf32> into tensor<8x11x11x1xf32>
        %295 = arith.maxf %cst_5, %cst : f16
        %296 = arith.divsi %c-167_i16, %c-167_i16 : i16
        %297 = bufferization.clone %alloc_8 : memref<8x11x11xf32> to memref<8x11x11xf32>
        %298 = arith.ori %false_4, %false : i1
        %inserted_46 = tensor.insert %c1577916601_i64 into %12[%c6, %c0, %c9] : tensor<8x11x11xi64>
        %299 = index.sizeof
        affine.store %cst, %alloc_14[%c1] : memref<11xf16>
        %300 = arith.minui %false_1, %false : i1
        %301 = math.sqrt %9 : tensor<11xf32>
        %302 = math.powf %2, %2 : tensor<8x11x11xf32>
        %303 = arith.shrsi %c31685_i16, %c8527_i16 : i16
        %rank_47 = tensor.rank %4 : tensor<11xi32>
        %304 = arith.muli %false_1, %false_4 : i1
        %305 = math.copysign %cst_5, %cst_5 : f16
        %306 = math.atan %5 : tensor<11xf16>
        %307 = arith.remf %cst_0, %cst_0 : f32
        %alloc_48 = memref.alloc() : memref<13x7xi16>
        %308 = tensor.empty() : tensor<8x7xi16>
        %309 = linalg.matmul ins(%14, %alloc_48 : tensor<8x13xi16>, memref<13x7xi16>) outs(%308 : tensor<8x7xi16>) -> tensor<8x7xi16>
        %310 = index.mul %c1, %c0
        memref.copy %alloc_11, %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %311 = math.sqrt %2 : tensor<8x11x11xf32>
        %312 = arith.divui %c2055696075_i32, %c2055696075_i32 : i32
        %313 = index.sizeof
        %314 = math.tanh %2 : tensor<8x11x11xf32>
        %315 = index.maxs %c13, %c5
        %316 = bufferization.clone %alloc_10 : memref<11xf16> to memref<11xf16>
        %317 = vector.reduction <minui>, %20 : vector<8xi32> into i32
        %318 = arith.shrsi %c31685_i16, %c8527_i16 : i16
        %319 = vector.insert %cst_0, %292 [5] : f32 into vector<8xf32>
        %320 = bufferization.to_memref %23 : memref<i16>
        linalg.yield %out : i64
      } -> tensor<8x11x11xi64>
      %extracted_43 = tensor.extract %3[%c10, %c6] : tensor<13x7xi32>
      %rank_44 = tensor.rank %12 : tensor<8x11x11xi64>
      %273 = vector.load %alloc[%c3, %c4] : memref<13x7xf32>, vector<13x7xf32>
      memref.alloca_scope  {
        %291 = vector.broadcast %extracted_43 : i32 to vector<11xi32>
        %292 = vector.splat %cst_2 : vector<8x13xf16>
        %293 = arith.shrsi %c289369762_i32, %c289369762_i32 : i32
        %294 = arith.cmpf uno, %cst, %cst : f16
        %295 = arith.shrsi %false_4, %false_4 : i1
        %296 = vector.shuffle %31, %31 [1, 2, 6, 10, 11, 12, 13] : vector<8x11x11xi1>, vector<8x11x11xi1>
        %297 = math.fma %2, %13, %2 : tensor<8x11x11xf32>
        %298 = arith.addf %cst_2, %cst : f16
        %299 = vector.reduction <maxsi>, %34 : vector<1xi32> into i32
        %300 = vector.extract_strided_slice %291 {offsets = [9], sizes = [2], strides = [1]} : vector<11xi32> to vector<2xi32>
        %301 = tensor.empty() : tensor<8x7xi32>
        %302 = linalg.matmul ins(%8, %3 : tensor<8x13xi32>, tensor<13x7xi32>) outs(%301 : tensor<8x7xi32>) -> tensor<8x7xi32>
        %303 = arith.remf %cst_2, %cst : f16
        %304 = vector.flat_transpose %34 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %305 = vector.broadcast %cst_5 : f16 to vector<8x11x11xf16>
        %306 = vector.gather %alloc_14[%c14] [%32], %31, %305 : memref<11xf16>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xf16> into vector<8x11x11xf16>
        %307 = memref.realloc %alloc_21 : memref<8xi1> to memref<8xi1>
        %308 = bufferization.clone %alloc_19 : memref<11xi32> to memref<11xi32>
        %expanded_45 = tensor.expand_shape %5 [[0, 1]] : tensor<11xf16> into tensor<11x1xf16>
        %309 = arith.divui %c1577916601_i64, %c1577916601_i64 : i64
        %310 = arith.cmpf oge, %cst_0, %cst_0 : f32
        %311 = index.ceildivs %c15, %38
        %312 = vector.broadcast %c289369762_i32 : i32 to vector<1x1xi32>
        %313 = vector.outerproduct %304, %304, %312 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
        %314 = vector.extract_strided_slice %32 {offsets = [0], sizes = [3], strides = [1]} : vector<8x11x11xi32> to vector<3x11x11xi32>
        %cast_46 = tensor.cast %5 : tensor<11xf16> to tensor<?xf16>
        %315 = memref.load %alloc_11[%c2, %c9, %c5] : memref<8x11x11xi32>
        %316 = index.sizeof
        %317 = arith.floordivsi %false_4, %false : i1
        %318 = math.cttz %14 : tensor<8x13xi16>
        %319 = vector.transpose %30, [0, 2, 1] : vector<8x11x11xi16> to vector<8x11x11xi16>
        %cast_47 = tensor.cast %15 : tensor<11xi1> to tensor<?xi1>
        %320 = arith.xori %c31685_i16, %c8527_i16 : i16
        %321 = math.exp %2 : tensor<8x11x11xf32>
        affine.store %cst_0, %alloc_8[%c10, %c6, %c4] : memref<8x11x11xf32>
      }
      %274 = math.ipowi %21, %21 : tensor<11xi16>
      %275 = vector.insert %c289369762_i32, %35 [0] : i32 into vector<1xi32>
      %276 = index.casts %c1 : index to i32
      %277 = memref.alloca_scope  -> (memref<8x13xi16>) {
        %291 = affine.max affine_map<(d0, d1) -> ((d1 - 2) mod 32, d1 - 2, d1 - 2, (d1 - 2) mod 32)>(%c12, %267)
        %292 = math.fpowi %2, %11 : tensor<8x11x11xf32>, tensor<8x11x11xi32>
        %293 = arith.floordivsi %false_4, %true_3 : i1
        %294 = arith.remf %cst_0, %cst_0 : f32
        bufferization.dealloc_tensor %23 : tensor<i16>
        %295 = arith.ceildivsi %false, %true : i1
        %296 = index.ceildivs %c6, %c14
        %297 = math.roundeven %cst_5 : f16
        %298 = vector.extract_strided_slice %273 {offsets = [3], sizes = [2], strides = [1]} : vector<13x7xf32> to vector<2x7xf32>
        %299 = math.fma %9, %9, %9 : tensor<11xf32>
        %300 = arith.remf %cst_5, %cst : f16
        %301 = arith.minf %cst_5, %cst : f16
        %302 = vector.splat %rank_44 : vector<8x11x11xindex>
        %303 = arith.ceildivsi %true, %false : i1
        %304 = arith.remsi %c-167_i16, %c31685_i16 : i16
        %305 = arith.maxf %cst_0, %cst_0 : f32
        %306 = math.cos %cst_5 : f16
        %307 = index.maxu %c13, %26
        %308 = arith.maxf %cst, %cst : f16
        %extracted_45 = tensor.extract %0[%c3] : tensor<11xf32>
        %309 = arith.divsi %c31913_i16, %c31913_i16 : i16
        %310 = math.fpowi %0, %4 : tensor<11xf32>, tensor<11xi32>
        %311 = arith.maxui %c31913_i16, %c-167_i16 : i16
        %alloca_46 = memref.alloca() : memref<8x13xf32>
        %312 = tensor.empty(%rank_44, %267) : tensor<?x?xf16>
        %313 = math.tanh %5 : tensor<11xf16>
        %cast_47 = tensor.cast %3 : tensor<13x7xi32> to tensor<?x?xi32>
        %314 = arith.shrsi %extracted_43, %extracted_42 : i32
        %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<8x13xi32> into tensor<104xi32>
        %315 = vector.reduction <maxui>, %25 : vector<8xi32> into i32
        %316 = math.atan %0 : tensor<11xf32>
        %317 = index.sub %c5, %c15
        %alloc_48 = memref.alloc() : memref<8x13xi16>
        memref.alloca_scope.return %alloc_48 : memref<8x13xi16>
      }
      %278 = arith.ceildivsi %c31685_i16, %c-167_i16 : i16
      %279 = index.maxs %c0, %c8
      %280 = arith.addf %cst_0, %cst_0 : f32
      %281 = bufferization.to_memref %12 : memref<8x11x11xi64>
      %282 = index.maxu %c5, %c4
      %283 = vector.insertelement %extracted_43, %35[%26 : index] : vector<1xi32>
      %284 = index.castu %c15 : index to i32
      %285 = index.sizeof
      %286 = arith.ceildivsi %c289369762_i32, %extracted_42 : i32
      %287 = arith.divsi %false_1, %true : i1
      bufferization.dealloc_tensor %21 : tensor<11xi16>
      %288 = arith.negf %cst_5 : f16
      %289 = index.maxs %c1, %c4
      %290 = math.ipowi %c31685_i16, %c8527_i16 : i16
      memref.alloca_scope.return %cst_0 : f32
    }
    %44 = arith.remui %c31913_i16, %c-167_i16 : i16
    %45 = vector.load %alloc_15[%c0, %c0] : memref<8x13xf16>, vector<11xf16>
    %46 = math.log10 %9 : tensor<11xf32>
    %47 = index.ceildivs %c10, %26
    %48 = math.copysign %cst_0, %cst_0 : f32
    %49 = bufferization.to_memref %9 : memref<11xf32>
    %50 = arith.floordivsi %false, %false : i1
    %51 = tensor.empty() : tensor<11xi16>
    %52 = index.ceildivs %c13, %c12
    %rank = tensor.rank %51 : tensor<11xi16>
    %53 = index.floordivs %c1, %47
    %54 = math.absf %5 : tensor<11xf16>
    %55 = math.fma %5, %5, %5 : tensor<11xf16>
    %56 = math.copysign %5, %5 : tensor<11xf16>
    memref.assume_alignment %alloc_14, 1 : memref<11xf16>
    %57 = vector.bitcast %33 : vector<8x11x11xi16> to vector<8x11x11xi16>
    %58 = index.maxu %c10, %c15
    %extracted = tensor.extract %3[%c6, %c2] : tensor<13x7xi32>
    %59 = vector.multi_reduction <xor>, %20, %25 [] : vector<8xi32> to vector<8xi32>
    %60 = arith.muli %extracted, %c289369762_i32 : i32
    %61 = math.log1p %0 : tensor<11xf32>
    %62 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
    %63 = vector.broadcast %c-167_i16 : i16 to vector<8x11xi16>
    %dest, %accumulated_value = vector.scan <minui>, %57, %63 {inclusive = true, reduction_dim = 1 : i64} : vector<8x11x11xi16>, vector<8x11xi16>
    %alloc_22 = memref.alloc() : memref<8x13xf16>
    memref.copy %alloc_15, %alloc_22 : memref<8x13xf16> to memref<8x13xf16>
    %64 = vector.flat_transpose %27 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
    %65 = vector.splat %c-167_i16 : vector<8x11x11xi16>
    %66 = vector.broadcast %cst_5 : f16 to vector<8x13xf16>
    %67 = tensor.empty() : tensor<11xi64>
    %68 = vector.broadcast %c1577916601_i64 : i64 to vector<8x13xi64>
    %69 = vector.broadcast %true_3 : i1 to vector<8x13xi1>
    %70 = vector.broadcast %c2055696075_i32 : i32 to vector<8x13xi32>
    %71 = vector.gather %67[%c15] [%70], %69, %68 : tensor<11xi64>, vector<8x13xi32>, vector<8x13xi1>, vector<8x13xi64> into vector<8x13xi64>
    %72 = math.tan %43 : f32
    %73 = index.maxs %rank, %c15
    %true_23 = index.bool.constant true
    %74 = math.log1p %13 : tensor<8x11x11xf32>
    %75 = bufferization.to_tensor %alloc_13 : memref<13x7xi32>
    %76 = arith.andi %c1577916601_i64, %c1577916601_i64 : i64
    %77 = affine.if affine_set<(d0, d1, d2, d3) : (d1 + 8 == 0, d0 - d2 - 132 >= 0)>(%c0, %c9, %c12, %c0) -> i16 {
      %rank_42 = tensor.rank %14 : tensor<8x13xi16>
      %264 = arith.cmpi ne, %false_4, %false_1 : i1
      %265 = arith.divui %c289369762_i32, %c289369762_i32 : i32
      %266 = math.atan %5 : tensor<11xf16>
      %267 = arith.cmpf ole, %cst_0, %cst_0 : f32
      %268 = math.ctlz %29 : tensor<8x11x11xi16>
      %269 = arith.subi %c1577916601_i64, %c1577916601_i64 : i64
      %270 = math.log10 %9 : tensor<11xf32>
      affine.yield %c31913_i16 : i16
    } else {
      %264 = arith.shrsi %c2055696075_i32, %c2055696075_i32 : i32
      %265 = tensor.empty() : tensor<8x11x11xf32>
      %mapped = linalg.map ins(%13 : tensor<8x11x11xf32>) outs(%265 : tensor<8x11x11xf32>)
        (%in: f32) {
          %273 = arith.muli %c2055696075_i32, %c2055696075_i32 : i32
          %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 4)>(%c14, %c11, %c12, %42)
          %splat_42 = tensor.splat %true : tensor<13x7xi1>
          %from_elements_43 = tensor.from_elements %c-167_i16, %c31685_i16, %c-167_i16, %c8527_i16, %c31685_i16, %c31913_i16, %c8527_i16, %c-167_i16, %c31913_i16, %c-167_i16, %c31913_i16, %c31685_i16, %c31685_i16, %c-167_i16, %c8527_i16, %c-167_i16, %c31913_i16, %c-167_i16, %c-167_i16, %c8527_i16, %c8527_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c31685_i16, %c8527_i16, %c-167_i16, %c31685_i16, %c8527_i16, %c31685_i16, %c31913_i16, %c8527_i16, %c31685_i16, %c8527_i16, %c8527_i16, %c-167_i16, %c31913_i16, %c31685_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c-167_i16, %c31913_i16, %c-167_i16, %c31685_i16, %c31685_i16, %c-167_i16, %c31913_i16, %c31913_i16, %c31685_i16, %c31913_i16, %c31913_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c-167_i16, %c31685_i16, %c8527_i16, %c8527_i16, %c31913_i16, %c31913_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c-167_i16, %c8527_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c8527_i16, %c8527_i16, %c8527_i16, %c8527_i16, %c-167_i16, %c-167_i16, %c31913_i16, %c31685_i16, %c31685_i16, %c8527_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c31913_i16 : tensor<13x7xi16>
          %275 = affine.max affine_map<(d0) -> (((-d0) ceildiv 2) floordiv 128, d0, -(((-d0) ceildiv 2) floordiv 128))>(%rank)
          %276 = bufferization.clone %alloc_11 : memref<8x11x11xi32> to memref<8x11x11xi32>
          %277 = math.cttz %51 : tensor<11xi16>
          %extracted_44 = tensor.extract %4[%c6] : tensor<11xi32>
          %278 = arith.remsi %false_4, %false_1 : i1
          %279 = math.tan %2 : tensor<8x11x11xf32>
          %280 = math.ctlz %true_3 : i1
          %281 = math.ctlz %6 : tensor<8x11x11xi1>
          %282 = math.exp %in : f32
          %283 = index.sub %73, %53
          %284 = math.roundeven %0 : tensor<11xf32>
          %285 = arith.ori %extracted, %extracted : i32
          %286 = affine.load %alloc_9[%c7, %c8] : memref<13x7xf32>
          %287 = math.ctlz %15 : tensor<11xi1>
          %288 = index.ceildivs %c3, %58
          %289 = math.ctlz %14 : tensor<8x13xi16>
          %290 = vector.extract_strided_slice %25 {offsets = [1], sizes = [6], strides = [1]} : vector<8xi32> to vector<6xi32>
          %291 = index.divs %c1, %c12
          %292 = arith.divsi %true_23, %false_1 : i1
          %293 = arith.remf %cst_0, %43 : f32
          %294 = arith.floordivsi %c31913_i16, %c8527_i16 : i16
          %295 = index.mul %53, %rank
          %splat_45 = tensor.splat %c31685_i16 : tensor<11xi16>
          %296 = vector.insertelement %c2055696075_i32, %34[%c12 : index] : vector<1xi32>
          %297 = vector.insertelement %c289369762_i32, %34[%275 : index] : vector<1xi32>
          %298 = bufferization.to_memref %1 : memref<11xi16>
          %299 = math.powf %43, %43 : f32
          %300 = arith.negf %cst_0 : f32
          %cst_46 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_46 : f32
        }
      %266 = arith.andi %false, %true : i1
      %267 = affine.max affine_map<(d0, d1) -> (d1 floordiv 32 - d0)>(%c7, %c4)
      %268 = vector.broadcast %c1577916601_i64 : i64 to vector<13xi64>
      %269 = vector.insert %268, %71 [3] : vector<13xi64> into vector<8x13xi64>
      %270 = math.ipowi %12, %12 : tensor<8x11x11xi64>
      %271 = scf.if %true_23 -> (memref<8x13xi16>) {
        %rank_42 = tensor.rank %29 : tensor<8x11x11xi16>
        %273 = index.sizeof
        %274 = bufferization.clone %alloc_14 : memref<11xf16> to memref<11xf16>
        %275 = vector.insertelement %c289369762_i32, %64[%c12 : index] : vector<2xi32>
        %276 = arith.muli %extracted, %c289369762_i32 : i32
        %277 = math.fma %265, %265, %2 : tensor<8x11x11xf32>
        %cast_43 = tensor.cast %15 : tensor<11xi1> to tensor<?xi1>
        %278 = vector.bitcast %27 : vector<2xi32> to vector<2xi32>
        %alloc_44 = memref.alloc() : memref<8x13xi16>
        scf.yield %alloc_44 : memref<8x13xi16>
      } else {
        %273 = arith.ceildivsi %c289369762_i32, %c289369762_i32 : i32
        %274 = arith.negf %cst : f16
        %275 = math.ctpop %22 : tensor<i16>
        %276 = index.mul %267, %rank
        %277 = vector.insertelement %c289369762_i32, %25[%c9 : index] : vector<8xi32>
        %278 = vector.insertelement %extracted, %25[%73 : index] : vector<8xi32>
        bufferization.dealloc_tensor %1 : tensor<11xi16>
        memref.assume_alignment %alloc_7, 8 : memref<11xi1>
        %alloc_42 = memref.alloc() : memref<8x13xi16>
        scf.yield %alloc_42 : memref<8x13xi16>
      }
      %272 = index.maxs %c3, %58
      affine.yield %c8527_i16 : i16
    }
    %78 = math.copysign %2, %2 : tensor<8x11x11xf32>
    %79 = math.log10 %5 : tensor<11xf16>
    %80 = vector.broadcast %c1577916601_i64 : i64 to vector<8xi64>
    %dest_24, %accumulated_value_25 = vector.scan <minui>, %71, %80 {inclusive = false, reduction_dim = 1 : i64} : vector<8x13xi64>, vector<8xi64>
    %81 = affine.load %alloc_21[%c8] : memref<8xi1>
    %82 = affine.max affine_map<(d0) -> (-(d0 mod 2), d0 mod 2, d0 ceildiv 32 + d0 - 128, (d0 mod 2) mod 128)>(%c8)
    %83 = math.fma %9, %0, %9 : tensor<11xf32>
    %84 = math.log1p %cst_0 : f32
    %85 = math.tan %13 : tensor<8x11x11xf32>
    %86 = math.floor %0 : tensor<11xf32>
    bufferization.dealloc_tensor %2 : tensor<8x11x11xf32>
    %87 = affine.load %alloc_16[%c1, %c0] : memref<8x13xi64>
    %88 = vector.broadcast %c31685_i16 : i16 to vector<11x11x11x11xi16>
    %89 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %33, %30, %88 : vector<8x11x11xi16>, vector<8x11x11xi16> into vector<11x11x11x11xi16>
    %90 = vector.broadcast %c8527_i16 : i16 to vector<8x11xi16>
    %dest_26, %accumulated_value_27 = vector.scan <minui>, %33, %90 {inclusive = true, reduction_dim = 1 : i64} : vector<8x11x11xi16>, vector<8x11xi16>
    %91 = vector.splat %cst_2 : vector<11xf16>
    %92 = arith.divsi %c289369762_i32, %c2055696075_i32 : i32
    %93 = math.tanh %43 : f32
    %94 = math.fma %9, %9, %0 : tensor<11xf32>
    %95 = math.round %13 : tensor<8x11x11xf32>
    %cast_28 = tensor.cast %21 : tensor<11xi16> to tensor<?xi16>
    %96 = index.divu %c11, %c3
    %97 = vector.bitcast %64 : vector<2xi32> to vector<2xi32>
    scf.index_switch %42 
    case 1 {
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %4, %4 : tensor<11xi32>, tensor<11xi32>, tensor<11xi32>) outs(%11 : tensor<8x11x11xi32>) {
      ^bb0(%in: i32, %in_43: i32, %in_44: i32, %out: i32):
        %278 = math.ctlz %c1577916601_i64 : i64
        %279 = arith.remui %in_43, %extracted : i32
        %280 = index.sub %c0, %73
        %281 = arith.xori %c2055696075_i32, %in : i32
        %rank_45 = tensor.rank %8 : tensor<8x13xi32>
        %282 = arith.maxf %cst, %cst : f16
        %283 = vector.broadcast %c2055696075_i32 : i32 to vector<13x7xi32>
        %284 = vector.broadcast %82 : index to vector<8xindex>
        %285 = vector.broadcast %false_1 : i1 to vector<8xi1>
        vector.scatter %alloc_7[%c8] [%284], %285, %285 : memref<11xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %286 = arith.cmpf ord, %cst_2, %cst_5 : f16
        %287 = affine.apply affine_map<(d0) -> (d0 * 4)>(%280)
        %288 = math.ctlz %transposed : tensor<11xi1>
        %289 = vector.broadcast %43 : f32 to vector<8x11x11xf32>
        %290 = arith.divsi %c8527_i16, %c31685_i16 : i16
        %291 = arith.xori %out, %c2055696075_i32 : i32
        %292 = affine.max affine_map<(d0) -> ((d0 ceildiv 2 - d0) mod 128, d0 ceildiv 2 - d0)>(%c6)
        %293 = affine.load %alloc_16[%c9, %c6] : memref<8x13xi64>
        %294 = vector.insertelement %c2055696075_i32, %35[%c2 : index] : vector<1xi32>
        memref.store %out, %alloc_11[%c2, %c8, %c7] : memref<8x11x11xi32>
        %295 = math.atan %5 : tensor<11xf16>
        %296 = math.log10 %5 : tensor<11xf16>
        %297 = arith.muli %in, %in_43 : i32
        %298 = math.ceil %9 : tensor<11xf32>
        %299 = index.maxs %c9, %c15
        %300 = affine.load %alloc_19[%c2] : memref<11xi32>
        %301 = vector.insert %out, %64 [0] : i32 into vector<2xi32>
        %302 = tensor.empty() : tensor<8x13xi16>
        %303 = math.ctlz %3 : tensor<13x7xi32>
        %304 = arith.subi %c8527_i16, %c8527_i16 : i16
        %305 = arith.maxf %cst, %cst : f16
        %306 = bufferization.to_memref %2 : memref<8x11x11xf32>
        %307 = arith.remf %cst, %cst : f16
        %308 = tensor.empty() : tensor<13x7xf16>
        %309 = vector.broadcast %cst_2 : f16 to vector<13x7xf16>
        %310 = vector.broadcast %true : i1 to vector<13x7xi1>
        %311 = vector.gather %308[%c14, %c2] [%283], %310, %309 : tensor<13x7xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
        linalg.yield %c2055696075_i32 : i32
      } -> tensor<8x11x11xi32>
      %265 = math.expm1 %5 : tensor<11xf16>
      %cast_42 = tensor.cast %6 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
      %266 = arith.remf %cst_5, %cst : f16
      %267 = math.floor %2 : tensor<8x11x11xf32>
      memref.copy %alloc_11, %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
      %268 = memref.realloc %alloc_10 : memref<11xf16> to memref<11xf16>
      %269 = arith.shrsi %true_23, %81 : i1
      %270 = bufferization.to_memref %5 : memref<11xf16>
      %271 = arith.divui %c31913_i16, %c-167_i16 : i16
      %272 = arith.maxf %cst_5, %cst : f16
      %273 = arith.divui %c1577916601_i64, %c1577916601_i64 : i64
      %274 = arith.cmpf ole, %cst_2, %cst_5 : f16
      %275 = math.fpowi %9, %4 : tensor<11xf32>, tensor<11xi32>
      %276 = vector.matrix_multiply %64, %97 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi32>, vector<2xi32>) -> vector<1xi32>
      %277 = math.fpowi %cst_5, %extracted : f16, i32
      scf.yield
    }
    case 2 {
      %264 = math.round %2 : tensor<8x11x11xf32>
      memref.store %cst_0, %alloc[%c3, %c4] : memref<13x7xf32>
      %265 = math.exp %0 : tensor<11xf32>
      %266 = index.maxu %c5, %c2
      %267 = math.ctpop %false : i1
      %268 = bufferization.to_memref %transposed : memref<11xi1>
      %269 = bufferization.to_tensor %alloc_7 : memref<11xi1>
      %extracted_42 = tensor.extract %7[%c9] : tensor<11xi1>
      %270 = tensor.empty() : tensor<8x11xf32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %9 : tensor<8x11xf32>, tensor<11xf32>) outs(%13 : tensor<8x11x11xf32>) {
      ^bb0(%in: f32, %in_44: f32, %out: f32):
        %277 = math.powf %cst, %cst_2 : f16
        %278 = vector.insertelement %cst_5, %45[%96 : index] : vector<11xf16>
        %279 = math.fma %cst_2, %cst_5, %cst : f16
        %alloca_45 = memref.alloca() : memref<11xf16>
        %280 = arith.ori %c-167_i16, %c8527_i16 : i16
        %281 = vector.broadcast %cst_2 : f16 to vector<11xf16>
        %282 = math.log10 %cst : f16
        %283 = index.divs %73, %c13
        %284 = vector.insertelement %c289369762_i32, %97[%c11 : index] : vector<2xi32>
        %285 = vector.broadcast %c289369762_i32 : i32 to vector<11x11xi32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %25, %32, %285 : vector<8xi32>, vector<8x11x11xi32> into vector<11x11xi32>
        %287 = math.sqrt %5 : tensor<11xf16>
        %288 = math.fma %9, %0, %0 : tensor<11xf32>
        %289 = math.cos %0 : tensor<11xf32>
        %290 = bufferization.clone %alloc_16 : memref<8x13xi64> to memref<8x13xi64>
        %291 = arith.muli %c8527_i16, %c31913_i16 : i16
        %292 = bufferization.clone %alloc_17 : memref<13x7xi16> to memref<13x7xi16>
        %293 = vector.insertelement %c289369762_i32, %35[%rank : index] : vector<1xi32>
        %expanded_46 = tensor.expand_shape %0 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
        bufferization.dealloc_tensor %6 : tensor<8x11x11xi1>
        %294 = index.divs %c12, %c1
        %295 = vector.insertelement %cst_5, %45[%53 : index] : vector<11xf16>
        memref.assume_alignment %alloc_10, 2 : memref<11xf16>
        %296 = index.maxs %82, %82
        %297 = index.ceildivu %c2, %296
        %298 = tensor.empty() : tensor<11xf16>
        %299 = bufferization.to_memref %2 : memref<8x11x11xf32>
        %300 = math.log1p %expanded_46 : tensor<11x1xf32>
        %301 = math.copysign %cst_5, %cst_2 : f16
        %302 = bufferization.to_tensor %alloc_17 : memref<13x7xi16>
        %303 = math.sqrt %9 : tensor<11xf32>
        %304 = arith.cmpi ne, %87, %87 : i64
        %305 = index.maxs %c1, %38
        linalg.yield %cst_0 : f32
      } -> tensor<8x11x11xf32>
      scf.execute_region {
        memref.copy %alloc_10, %alloc_14 : memref<11xf16> to memref<11xf16>
        %277 = math.log %5 : tensor<11xf16>
        %278 = arith.cmpf false, %43, %43 : f32
        %alloc_44 = memref.alloc() : memref<8x13xi16>
        memref.tensor_store %14, %alloc_44 : memref<8x13xi16>
        %279 = index.ceildivs %rank, %c7
        affine.store %43, %alloc[%c10, %c1] : memref<13x7xf32>
        %280 = math.tan %2 : tensor<8x11x11xf32>
        %281 = vector.insertelement %c289369762_i32, %34[%c8 : index] : vector<1xi32>
        %282 = vector.flat_transpose %35 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %283 = math.ctlz %false_1 : i1
        %284 = arith.remf %cst, %cst : f16
        %285 = vector.bitcast %27 : vector<2xi32> to vector<2xi32>
        %286 = bufferization.clone %alloc_7 : memref<11xi1> to memref<11xi1>
        %287 = arith.floordivsi %c31685_i16, %c8527_i16 : i16
        %288 = math.ctpop %4 : tensor<11xi32>
        %289 = vector.transpose %27, [0] : vector<2xi32> to vector<2xi32>
        scf.yield
      }
      %272 = math.floor %9 : tensor<11xf32>
      %273 = arith.remui %87, %87 : i64
      %274 = math.log10 %0 : tensor<11xf32>
      %alloc_43 = memref.alloc() : memref<8x11x11xf32>
      %275 = math.exp %cst : f16
      %276 = affine.load %alloc_6[%c3, %c8] : memref<13x7xf16>
      scf.yield
    }
    case 3 {
      %264 = index.sizeof
      %265 = index.casts %c9 : index to i32
      %266 = affine.if affine_set<(d0, d1) : (0 >= 0, 0 == 0, (d0 - d1 + 16) mod 64 + 4 == 0, d1 - 32 == 0)>(%c0, %c11) -> memref<13x7xi64> {
        %278 = vector.load %alloc_10[%c9] : memref<11xf16>, vector<8x11x11xf16>
        %cast_43 = tensor.cast %14 : tensor<8x13xi16> to tensor<?x?xi16>
        %279 = arith.divui %c31913_i16, %c31685_i16 : i16
        %280 = math.absf %43 : f32
        %281 = vector.insertelement %c2055696075_i32, %20[%42 : index] : vector<8xi32>
        bufferization.dealloc_tensor %67 : tensor<11xi64>
        %282 = affine.load %alloc_19[%c7] : memref<11xi32>
        %283 = index.maxs %c9, %96
        %alloc_44 = memref.alloc() : memref<13x7xi64>
        affine.yield %alloc_44 : memref<13x7xi64>
      } else {
        %278 = math.log1p %13 : tensor<8x11x11xf32>
        %279 = math.tanh %13 : tensor<8x11x11xf32>
        %alloc_43 = memref.alloc() : memref<8x13xf16>
        memref.copy %alloc_15, %alloc_43 : memref<8x13xf16> to memref<8x13xf16>
        memref.store %43, %alloc_8[%c4, %c0, %c5] : memref<8x11x11xf32>
        %280 = arith.floordivsi %c31685_i16, %c-167_i16 : i16
        %281 = arith.floordivsi %87, %c1577916601_i64 : i64
        %282 = math.log %cst_2 : f16
        %283 = vector.reduction <minui>, %25 : vector<8xi32> into i32
        %alloc_44 = memref.alloc() : memref<13x7xi64>
        affine.yield %alloc_44 : memref<13x7xi64>
      }
      %267 = arith.shrsi %false_1, %true_23 : i1
      %268 = math.ipowi %81, %false : i1
      %269 = affine.max affine_map<(d0, d1) -> (d1 mod 4, -(d1 mod 16))>(%58, %c7)
      %270 = bufferization.to_tensor %alloc_19 : memref<11xi32>
      memref.alloca_scope  {
        %278 = index.mul %47, %96
        %279 = index.sizeof
        %280 = index.floordivs %264, %c0
        %281 = index.mul %c1, %269
        %282 = math.ctpop %extracted : i32
        %283 = math.exp %2 : tensor<8x11x11xf32>
        %284 = bufferization.clone %alloc : memref<13x7xf32> to memref<13x7xf32>
        %285 = arith.divsi %false, %false : i1
        %286 = vector.transpose %64, [0] : vector<2xi32> to vector<2xi32>
        %287 = math.atan %cst_2 : f16
        %288 = index.sub %26, %279
        %289 = index.sub %c15, %c13
        %290 = math.cos %cst_5 : f16
        %291 = vector.insert %extracted, %64 [1] : i32 into vector<2xi32>
        %292 = index.ceildivs %281, %c11
        %inserted_43 = tensor.insert %43 into %9[%c2] : tensor<11xf32>
        %293 = arith.minf %cst, %cst_2 : f16
        %rank_44 = tensor.rank %5 : tensor<11xf16>
        %294 = arith.divui %false, %true_23 : i1
        %295 = vector.broadcast %c31685_i16 : i16 to vector<11x11x11x11xi16>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %30, %33, %295 : vector<8x11x11xi16>, vector<8x11x11xi16> into vector<11x11x11x11xi16>
        %alloc_45 = memref.alloc() : memref<8x11x11xi64>
        %297 = vector.broadcast %87 : i64 to vector<8x11x11xi64>
        %298 = vector.gather %alloc_45[%288, %289, %c14] [%32], %31, %297 : memref<8x11x11xi64>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi64> into vector<8x11x11xi64>
        %299 = math.sqrt %cst : f16
        %300 = vector.broadcast %c2055696075_i32 : i32 to vector<i32>
        %301 = vector.transfer_write %300, %270[%c10] : vector<i32>, tensor<11xi32>
        %302 = math.ipowi %false_4, %true_23 : i1
        %303 = bufferization.to_memref %9 : memref<11xf32>
        %304 = bufferization.clone %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %305 = vector.broadcast %c2055696075_i32 : i32 to vector<1x1xi32>
        %306 = vector.outerproduct %35, %35, %305 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        memref.copy %alloc_14, %alloc_10 : memref<11xf16> to memref<11xf16>
        %307 = vector.broadcast %extracted : i32 to vector<13xi32>
        %dest_46, %accumulated_value_47 = vector.scan <minui>, %70, %307 {inclusive = true, reduction_dim = 0 : i64} : vector<8x13xi32>, vector<13xi32>
        %308 = arith.muli %c2055696075_i32, %c289369762_i32 : i32
        %309 = arith.floordivsi %false_1, %true : i1
        %310 = vector.broadcast %43 : f32 to vector<11xf32>
        %311 = vector.fma %310, %310, %310 : vector<11xf32>
      }
      %cst_42 = arith.constant 0x4D7CFDA5 : f32
      %271 = bufferization.clone %alloc_10 : memref<11xf16> to memref<11xf16>
      %272 = vector.bitcast %32 : vector<8x11x11xi32> to vector<8x11x11xi32>
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %45, %45, %cst_5 : vector<11xf16>, vector<11xf16> into f16
      %274 = math.ctlz %87 : i64
      %275 = math.powf %cst_5, %cst_2 : f16
      %276 = math.exp %5 : tensor<11xf16>
      %277 = math.rsqrt %2 : tensor<8x11x11xf32>
      scf.yield
    }
    case 4 {
      %264 = arith.divui %true_3, %true_3 : i1
      %265 = affine.load %alloc_13[%c8, %c11] : memref<13x7xi32>
      %266 = tensor.empty(%c5) : tensor<8x?x11xi64>
      %c74044439_i64 = arith.constant 74044439 : i64
      %267 = vector.broadcast %cst_0 : f32 to vector<8x11x11xf32>
      %268 = vector.fma %267, %267, %267 : vector<8x11x11xf32>
      %expanded_42 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<8x11x11xf32> into tensor<8x11x11x1xf32>
      %269 = vector.broadcast %c1577916601_i64 : i64 to vector<8x11x11xi64>
      %270 = vector.gather %12[%82, %53, %38] [%32], %31, %269 : tensor<8x11x11xi64>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi64> into vector<8x11x11xi64>
      %271 = index.floordivs %82, %c4
      memref.assume_alignment %alloc_15, 2 : memref<8x13xf16>
      %272 = index.ceildivs %c1, %c2
      %273 = index.sizeof
      %274 = scf.if %true -> (memref<8x13xf32>) {
        %279 = memref.realloc %alloc_14 : memref<11xf16> to memref<11xf16>
        %280 = arith.shrsi %true_3, %false_4 : i1
        %281 = bufferization.clone %alloc_11 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %282 = math.ctlz %false_1 : i1
        %from_elements_43 = tensor.from_elements %c31685_i16, %c31685_i16, %c31685_i16, %c-167_i16, %c-167_i16, %c8527_i16, %c31685_i16, %c-167_i16, %c-167_i16, %c-167_i16, %c31685_i16, %c31913_i16, %c31685_i16, %c31913_i16, %c31685_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c-167_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c-167_i16, %c31685_i16, %c31913_i16, %c31913_i16, %c31685_i16, %c-167_i16, %c8527_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c-167_i16, %c-167_i16, %c8527_i16, %c31913_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c31685_i16, %c-167_i16, %c31685_i16, %c-167_i16, %c-167_i16, %c31685_i16, %c-167_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c-167_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c31685_i16, %c31913_i16, %c8527_i16, %c-167_i16, %c8527_i16, %c-167_i16, %c-167_i16, %c-167_i16, %c31913_i16, %c-167_i16, %c31913_i16, %c31913_i16, %c8527_i16, %c31685_i16, %c-167_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c-167_i16, %c8527_i16, %c31685_i16, %c31685_i16, %c8527_i16, %c-167_i16, %c8527_i16, %c31685_i16, %c31685_i16, %c31913_i16, %c31685_i16, %c8527_i16, %c31913_i16, %c8527_i16, %c31913_i16, %c-167_i16, %c31913_i16, %c31685_i16, %c-167_i16 : tensor<8x13xi16>
        %extracted_44 = tensor.extract %8[%c2, %c11] : tensor<8x13xi32>
        %283 = arith.shrsi %c31913_i16, %c31913_i16 : i16
        %284 = arith.minui %true_23, %true_3 : i1
        %alloc_45 = memref.alloc() : memref<8x13xf32>
        scf.yield %alloc_45 : memref<8x13xf32>
      } else {
        %279 = bufferization.clone %alloc_19 : memref<11xi32> to memref<11xi32>
        %280 = arith.ceildivsi %false, %false : i1
        %281 = math.floor %2 : tensor<8x11x11xf32>
        %282 = arith.remf %cst, %cst : f16
        memref.assume_alignment %alloc_16, 4 : memref<8x13xi64>
        %283 = index.maxu %42, %82
        %splat_43 = tensor.splat %c1577916601_i64 : tensor<8x13xi64>
        %284 = math.log2 %9 : tensor<11xf32>
        %alloc_44 = memref.alloc() : memref<8x13xf32>
        scf.yield %alloc_44 : memref<8x13xf32>
      }
      %275 = affine.if affine_set<(d0, d1) : (d0 >= 0)>(%c10, %c5) -> memref<8x11x11xi32> {
        memref.copy %alloc_10, %alloc_14 : memref<11xf16> to memref<11xf16>
        %279 = bufferization.clone %alloc : memref<13x7xf32> to memref<13x7xf32>
        %280 = math.atan %5 : tensor<11xf16>
        %281 = index.divu %rank, %c2
        %282 = arith.negf %cst_0 : f32
        %283 = arith.addf %cst_2, %cst : f16
        %284 = math.fpowi %cst_2, %extracted : f16, i32
        %285 = arith.divui %c31913_i16, %c31913_i16 : i16
        affine.yield %alloc_11 : memref<8x11x11xi32>
      } else {
        %cast_43 = tensor.cast %8 : tensor<8x13xi32> to tensor<?x?xi32>
        %279 = math.floor %43 : f32
        %280 = vector.transpose %57, [2, 0, 1] : vector<8x11x11xi16> to vector<11x8x11xi16>
        %281 = arith.cmpi sge, %extracted, %c289369762_i32 : i32
        %282 = vector.bitcast %57 : vector<8x11x11xi16> to vector<8x11x11xi16>
        %283 = math.sqrt %0 : tensor<11xf32>
        %284 = math.copysign %cst_5, %cst_5 : f16
        %285 = vector.flat_transpose %35 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        affine.yield %alloc_11 : memref<8x11x11xi32>
      }
      %276 = math.tanh %cst_5 : f16
      %277 = memref.atomic_rmw andi %extracted, %alloc_20[%c5, %c8, %c7] : (i32, memref<8x11x11xi32>) -> i32
      %278 = arith.maxui %c31685_i16, %c31913_i16 : i16
      scf.yield
    }
    default {
      %264 = arith.subi %true, %true : i1
      %265 = arith.divui %87, %c1577916601_i64 : i64
      %266 = tensor.empty() : tensor<11x11xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_21, %62, %266 : memref<8xi1>, memref<8xi1>, tensor<11x11xi1>) outs(%10 : tensor<8x11x11xi1>) {
      ^bb0(%in: i1, %in_44: i1, %in_45: i1, %out: i1):
        %280 = vector.extract_strided_slice %35 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %alloca_46 = memref.alloca() : memref<8x13xf16>
        %281 = arith.shrui %c8527_i16, %c8527_i16 : i16
        %splat_47 = tensor.splat %c31685_i16 : tensor<8x11x11xi16>
        %282 = math.ceil %13 : tensor<8x11x11xf32>
        %283 = arith.negf %cst_2 : f16
        %284 = arith.shli %in_44, %false_1 : i1
        %285 = arith.shrsi %true, %in_45 : i1
        %286 = vector.insertelement %c289369762_i32, %97[%73 : index] : vector<2xi32>
        %287 = vector.flat_transpose %27 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %rank_48 = tensor.rank %10 : tensor<8x11x11xi1>
        %288 = arith.negf %43 : f32
        %289 = arith.addf %cst_0, %43 : f32
        %290 = vector.broadcast %c2055696075_i32 : i32 to vector<13xi32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %25, %70, %290 : vector<8xi32>, vector<8x13xi32> into vector<13xi32>
        %292 = math.ctlz %8 : tensor<8x13xi32>
        %293 = vector.extract_strided_slice %97 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
        %294 = arith.muli %c1577916601_i64, %c1577916601_i64 : i64
        %295 = math.ctlz %7 : tensor<11xi1>
        %rank_49 = tensor.rank %10 : tensor<8x11x11xi1>
        %296 = arith.minf %cst, %cst_2 : f16
        %297 = math.ctlz %6 : tensor<8x11x11xi1>
        %298 = vector.splat %false_4 : vector<8x13xi1>
        %299 = index.casts %58 : index to i32
        %300 = index.mul %c12, %c11
        %301 = vector.transpose %30, [1, 0, 2] : vector<8x11x11xi16> to vector<11x8x11xi16>
        %302 = arith.divui %81, %in_45 : i1
        %303 = arith.muli %in, %true_23 : i1
        %304 = arith.maxf %43, %cst_0 : f32
        %305 = arith.shrsi %false_1, %81 : i1
        %306 = vector.splat %c6 : vector<13x7xindex>
        %307 = vector.matrix_multiply %20, %25 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
        %cast_50 = tensor.cast %17 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
        linalg.yield %false_1 : i1
      } -> tensor<8x11x11xi1>
      %268 = math.fma %cst_2, %cst_2, %cst : f16
      %269 = math.tanh %13 : tensor<8x11x11xf32>
      %270 = bufferization.to_memref %51 : memref<11xi16>
      %271 = vector.broadcast %c31913_i16 : i16 to vector<8x11xi16>
      %dest_42, %accumulated_value_43 = vector.scan <minsi>, %30, %271 {inclusive = true, reduction_dim = 2 : i64} : vector<8x11x11xi16>, vector<8x11xi16>
      bufferization.dealloc_tensor %1 : tensor<11xi16>
      %272 = arith.shrui %81, %true : i1
      %273 = vector.bitcast %35 : vector<1xi32> to vector<1xf32>
      %274 = math.ctlz %21 : tensor<11xi16>
      %275 = math.tan %5 : tensor<11xf16>
      %276 = math.tan %5 : tensor<11xf16>
      %277 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c10, %c15, %c8)
      %278 = bufferization.to_memref %4 : memref<11xi32>
      %279 = math.absf %0 : tensor<11xf32>
    }
    %98 = math.exp %5 : tensor<11xf16>
    %99 = vector.bitcast %31 : vector<8x11x11xi1> to vector<8x11x11xi1>
    %inserted = tensor.insert %false into %15[%c1] : tensor<11xi1>
    %100 = arith.andi %c-167_i16, %c-167_i16 : i16
    %101 = tensor.empty(%82, %c12, %c7) : tensor<?x?x?xi16>
    %102 = arith.minui %true_23, %false_1 : i1
    %103 = vector.splat %c10 : vector<8x13xindex>
    %104 = vector.splat %extracted : vector<13x7xi32>
    %105 = arith.negf %43 : f32
    %106 = index.mul %c1, %52
    %107 = math.exp %0 : tensor<11xf32>
    %108 = affine.load %alloc_17[%c6, %c12] : memref<13x7xi16>
    %109 = arith.maxf %cst_0, %cst_0 : f32
    %110 = math.cos %cst_0 : f32
    %111 = vector.insert %cst_5, %45 [1] : f16 into vector<11xf16>
    %112 = arith.shrsi %c2055696075_i32, %c289369762_i32 : i32
    %113 = affine.apply affine_map<(d0, d1) -> (d0 * 128 + 2)>(%c8, %c0)
    memref.store %43, %alloc[%c9, %c3] : memref<13x7xf32>
    %114 = math.fma %0, %9, %0 : tensor<11xf32>
    %115 = math.atan %2 : tensor<8x11x11xf32>
    bufferization.dealloc_tensor %13 : tensor<8x11x11xf32>
    %116 = bufferization.clone %alloc_14 : memref<11xf16> to memref<11xf16>
    %117 = math.expm1 %cst_5 : f16
    %118 = memref.realloc %alloc_14 : memref<11xf16> to memref<8xf16>
    %119 = index.divu %c10, %96
    %false_29 = index.bool.constant false
    %120 = bufferization.clone %alloc_13 : memref<13x7xi32> to memref<13x7xi32>
    %121 = affine.max affine_map<(d0, d1, d2) -> ((d0 ceildiv 64 + d2) floordiv 2, (-d1) mod 8 + d0 + d2 - d2 mod 64 - d1)>(%42, %73, %73)
    %122 = vector.multi_reduction <minsi>, %35, %extracted [0] : vector<1xi32> to i32
    %123 = math.powf %9, %0 : tensor<11xf32>
    %124 = arith.muli %81, %81 : i1
    %125 = math.log1p %cst_0 : f32
    %126 = vector.insertelement %cst_5, %45[%c6 : index] : vector<11xf16>
    %127 = math.atan %cst : f16
    %128 = vector.transpose %33, [2, 1, 0] : vector<8x11x11xi16> to vector<11x11x8xi16>
    %129 = affine.if affine_set<(d0) : (d0 ceildiv 64 - 66 >= 0, (d0 ceildiv 64) ceildiv 2 + d0 ceildiv 64 + 1 - d0 ceildiv 64 >= 0, (d0 ceildiv 64) ceildiv 2 + d0 ceildiv 64 + 1 - d0 ceildiv 64 >= 0)>(%c13) -> f32 {
      %264 = math.log %cst_5 : f16
      %alloca_42 = memref.alloca() : memref<8x13xi64>
      %265 = math.tanh %5 : tensor<11xf16>
      %266 = vector.broadcast %87 : i64 to vector<13xi64>
      %267 = vector.insert %266, %68 [5] : vector<13xi64> into vector<8x13xi64>
      %268 = arith.minf %cst_5, %cst : f16
      %269 = math.log10 %0 : tensor<11xf32>
      %270 = math.ipowi %15, %15 : tensor<11xi1>
      %271 = math.sqrt %5 : tensor<11xf16>
      affine.yield %43 : f32
    } else {
      %264 = math.tanh %0 : tensor<11xf32>
      %265 = vector.broadcast %c-167_i16 : i16 to vector<11x11xi16>
      %266 = vector.insert %265, %57 [6] : vector<11x11xi16> into vector<8x11x11xi16>
      %267 = index.sub %106, %73
      scf.if %81 {
        %271 = index.castu %extracted : i32 to index
        %272 = arith.minsi %c31913_i16, %c31685_i16 : i16
        %273 = math.roundeven %2 : tensor<8x11x11xf32>
        %274 = arith.maxui %122, %extracted : i32
        %alloca_43 = memref.alloca() : memref<11xi64>
        %275 = math.log10 %43 : f32
        %276 = vector.reduction <and>, %35 : vector<1xi32> into i32
        %277 = arith.maxui %true_3, %false : i1
      } else {
        %271 = arith.andi %c8527_i16, %c31685_i16 : i16
        %alloca_43 = memref.alloca() : memref<13x7xi64>
        %272 = index.divu %119, %c9
        %273 = arith.remf %cst_2, %cst_2 : f16
        %alloc_44 = memref.alloc() : memref<13x7xf16>
        memref.copy %alloc_6, %alloc_44 : memref<13x7xf16> to memref<13x7xf16>
        %274 = index.floordivs %267, %26
        %275 = arith.maxui %122, %c2055696075_i32 : i32
        memref.assume_alignment %alloc_12, 4 : memref<11xi16>
      }
      %268 = vector.transpose %68, [0, 1] : vector<8x13xi64> to vector<8x13xi64>
      %269 = math.cttz %false_29 : i1
      %270 = index.sub %c8, %c13
      %splat_42 = tensor.splat %true_23 : tensor<8x11x11xi1>
      affine.yield %cst_0 : f32
    }
    %130 = math.powf %0, %9 : tensor<11xf32>
    %inserted_30 = tensor.insert %c8527_i16 into %21[%c3] : tensor<11xi16>
    %inserted_31 = tensor.insert %108 into %23[] : tensor<i16>
    %131 = math.fpowi %cst, %c289369762_i32 : f16, i32
    %132 = math.tan %5 : tensor<11xf16>
    %133 = math.fma %cst_0, %43, %43 : f32
    %134 = vector.matrix_multiply %97, %97 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi32>, vector<2xi32>) -> vector<1xi32>
    %135 = arith.remui %c-167_i16, %c8527_i16 : i16
    %136 = vector.insert %122, %25 [5] : i32 into vector<8xi32>
    %137 = arith.xori %false_29, %true_3 : i1
    %138 = arith.xori %true_3, %false_29 : i1
    %139 = index.mul %42, %73
    %140 = index.casts %c1577916601_i64 : i64 to index
    %141 = vector.broadcast %cst : f16 to vector<11xf16>
    %142 = math.exp %2 : tensor<8x11x11xf32>
    %143 = arith.xori %true_23, %true_3 : i1
    %cast_32 = tensor.cast %0 : tensor<11xf32> to tensor<?xf32>
    %144 = math.ceil %2 : tensor<8x11x11xf32>
    %extracted_33 = tensor.extract %67[%c7] : tensor<11xi64>
    %from_elements = tensor.from_elements %cst_5, %cst, %cst_5, %cst_5, %cst, %cst_5, %cst, %cst_2, %cst, %cst_2, %cst_5, %cst, %cst, %cst_2, %cst_5, %cst, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst, %cst_5, %cst_2, %cst, %cst_2, %cst_5, %cst, %cst, %cst, %cst_2, %cst_5, %cst, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst, %cst_2, %cst, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst_5, %cst_5, %cst_2, %cst, %cst_5, %cst, %cst_5, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst_5, %cst_5, %cst_5, %cst, %cst_2, %cst_2, %cst, %cst_5, %cst_5, %cst_2, %cst, %cst_5, %cst, %cst, %cst_2, %cst_5, %cst, %cst_5, %cst_5, %cst, %cst_5, %cst_5, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_5, %cst, %cst_2, %cst, %cst, %cst : tensor<8x13xf16>
    %145 = math.log1p %43 : f32
    %146 = memref.alloca_scope  -> (i32) {
      %264 = vector.broadcast %false : i1 to vector<8x11xi1>
      %dest_42, %accumulated_value_43 = vector.scan <or>, %31, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11x11xi1>, vector<8x11xi1>
      %265 = arith.cmpf ult, %cst_5, %cst : f16
      %266 = math.tanh %cst_2 : f16
      %267 = math.tanh %cst_0 : f32
      %true_44 = index.bool.constant true
      %268 = vector.broadcast %cst : f16 to vector<11x11xf16>
      %269 = vector.outerproduct %141, %45, %268 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
      %270 = arith.ceildivsi %true_23, %false_29 : i1
      %271 = math.log10 %5 : tensor<11xf16>
      %272 = arith.muli %c8527_i16, %108 : i16
      %273 = math.cttz %c2055696075_i32 : i32
      %274 = vector.flat_transpose %141 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
      %alloc_45 = memref.alloc() : memref<13x8xf16>
      %275 = tensor.empty() : tensor<8x8xf16>
      %276 = linalg.matmul ins(%from_elements, %alloc_45 : tensor<8x13xf16>, memref<13x8xf16>) outs(%275 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %277 = index.maxu %c12, %26
      %278 = index.divs %58, %53
      %cast_46 = tensor.cast %14 : tensor<8x13xi16> to tensor<?x?xi16>
      %279 = arith.addf %cst_5, %cst_2 : f16
      %280 = vector.extract_strided_slice %30 {offsets = [6], sizes = [1], strides = [1]} : vector<8x11x11xi16> to vector<1x11x11xi16>
      %c364778674_i32 = arith.constant 364778674 : i32
      %281 = arith.divui %c8527_i16, %c-167_i16 : i16
      %282 = arith.floordivsi %c2055696075_i32, %c289369762_i32 : i32
      %rank_47 = tensor.rank %51 : tensor<11xi16>
      %283 = affine.if affine_set<(d0, d1) : (d0 >= 0)>(%c12, %c2) -> memref<11xi1> {
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %27, %27, %c289369762_i32 : vector<2xi32>, vector<2xi32> into i32
        %299 = bufferization.clone %alloc_7 : memref<11xi1> to memref<11xi1>
        %alloca_49 = memref.alloca() : memref<13x7xi16>
        %alloc_50 = memref.alloc() : memref<8x13xi32>
        %300 = vector.gather %alloc_50[%42, %c14] [%32], %99, %32 : memref<8x13xi32>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi32> into vector<8x11x11xi32>
        %301 = arith.muli %true_23, %false_1 : i1
        %302 = math.exp %cst_2 : f16
        %303 = math.atan %2 : tensor<8x11x11xf32>
        %304 = math.tanh %2 : tensor<8x11x11xf32>
        affine.yield %299 : memref<11xi1>
      } else {
        %298 = arith.remf %cst, %cst_5 : f16
        %299 = index.mul %c1, %c8
        %300 = index.sub %299, %c12
        %301 = arith.cmpi eq, %122, %extracted : i32
        %302 = math.floor %cst_5 : f16
        %303 = arith.divui %c8527_i16, %108 : i16
        %304 = index.sizeof
        %305 = vector.broadcast %true_3 : i1 to vector<13xi1>
        %306 = vector.maskedload %alloc_21[%c5], %305, %305 : memref<8xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        affine.yield %alloc_7 : memref<11xi1>
      }
      %284 = vector.broadcast %cst_5 : f16 to vector<13x7xf16>
      %285 = vector.broadcast %81 : i1 to vector<13x7xi1>
      %286 = vector.broadcast %c2055696075_i32 : i32 to vector<13x7xi32>
      %287 = vector.gather %5[%c7] [%286], %285, %284 : tensor<11xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
      %288 = arith.maxf %cst_2, %cst : f16
      %alloc_48 = memref.alloc() : memref<7x8xi32>
      %289 = tensor.empty() : tensor<13x8xi32>
      %290 = linalg.matmul ins(%3, %alloc_48 : tensor<13x7xi32>, memref<7x8xi32>) outs(%289 : tensor<13x8xi32>) -> tensor<13x8xi32>
      %291 = index.sub %c7, %c13
      %292 = arith.remf %cst_2, %cst_5 : f16
      %293 = arith.maxsi %c1577916601_i64, %extracted_33 : i64
      %294 = math.cos %cst_5 : f16
      %295 = vector.broadcast %false_1 : i1 to vector<11x11x11x11xi1>
      %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %99, %99, %295 : vector<8x11x11xi1>, vector<8x11x11xi1> into vector<11x11x11x11xi1>
      scf.execute_region {
        %298 = arith.shrui %true_23, %false_29 : i1
        %299 = index.casts %c8 : index to i32
        %300 = math.log10 %from_elements : tensor<8x13xf16>
        %extracted_49 = tensor.extract %15[%c0] : tensor<11xi1>
        %301 = index.sub %c6, %291
        %302 = index.casts %278 : index to i32
        %303 = math.ctlz %81 : i1
        %304 = arith.muli %true, %false_29 : i1
        %cast_50 = tensor.cast %21 : tensor<11xi16> to tensor<?xi16>
        %305 = arith.maxui %false, %false_29 : i1
        %306 = arith.remf %cst, %cst_5 : f16
        %307 = math.ipowi %true, %true_23 : i1
        %308 = vector.splat %c31913_i16 : vector<8x13xi16>
        %309 = index.casts %c8 : index to i32
        %310 = index.ceildivs %277, %c14
        %311 = math.log2 %43 : f32
        scf.yield
      }
      %297 = vector.multi_reduction <mul>, %45, %cst [0] : vector<11xf16> to f16
      memref.alloca_scope.return %c289369762_i32 : i32
    }
    %147 = index.divs %121, %96
    %148 = memref.load %alloc_18[%c6, %c5, %c10] : memref<8x11x11xi1>
    %149 = math.cttz %11 : tensor<8x11x11xi32>
    %150 = arith.minsi %true, %true_3 : i1
    %151 = math.ipowi %7, %15 : tensor<11xi1>
    %152 = math.ctlz %false_4 : i1
    %153 = math.fpowi %cst_5, %extracted : f16, i32
    %154 = math.fpowi %cst, %122 : f16, i32
    %155 = index.sizeof
    %156 = index.divu %139, %c5
    %157 = vector.transpose %30, [2, 1, 0] : vector<8x11x11xi16> to vector<11x11x8xi16>
    %cst_34 = arith.constant 5.424000e+04 : f16
    %158 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<8x11x11xi64>) {
    ^bb0(%out: i64):
      %264 = math.floor %from_elements : tensor<8x13xf16>
      %alloca_42 = memref.alloca() : memref<13x7xi32>
      %265 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
      %266 = math.fma %cst_0, %43, %cst_0 : f32
      %267 = math.floor %cst_0 : f32
      %268 = arith.ori %true, %false : i1
      %269 = arith.shrsi %87, %c1577916601_i64 : i64
      %270 = math.log1p %13 : tensor<8x11x11xf32>
      %271 = arith.divui %extracted, %c289369762_i32 : i32
      %272 = arith.minui %c8527_i16, %c31685_i16 : i16
      %273 = math.tanh %cst : f16
      %274 = math.ctlz %17 : tensor<8x11x11xi1>
      scf.if %81 {
        %293 = vector.load %alloc_13[%c8, %c4] : memref<13x7xi32>, vector<13x7xi32>
        %294 = vector.broadcast %43 : f32 to vector<11xf32>
        %295 = vector.fma %294, %294, %294 : vector<11xf32>
        %296 = affine.apply affine_map<(d0, d1) -> (d0 * 128 + 2)>(%c9, %c11)
        %297 = vector.transpose %45, [0] : vector<11xf16> to vector<11xf16>
        %298 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
        %299 = math.ctlz %c8527_i16 : i16
        %300 = arith.xori %true_23, %true : i1
        %cast_47 = tensor.cast %1 : tensor<11xi16> to tensor<?xi16>
      } else {
        %293 = vector.transpose %57, [2, 0, 1] : vector<8x11x11xi16> to vector<11x8x11xi16>
        %294 = math.log10 %from_elements : tensor<8x13xf16>
        %295 = math.tan %cst : f16
        %296 = vector.transpose %57, [1, 0, 2] : vector<8x11x11xi16> to vector<11x8x11xi16>
        %297 = math.fma %cst, %cst_5, %cst_2 : f16
        %298 = vector.broadcast %108 : i16 to vector<11x11xi16>
        %299 = vector.insert %298, %30 [5] : vector<11x11xi16> into vector<8x11x11xi16>
        %300 = memref.load %alloc_21[%c3] : memref<8xi1>
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c5, %c13, %c14)
      }
      %275 = math.cttz %true_3 : i1
      %276 = vector.insertelement %c289369762_i32, %97[%121 : index] : vector<2xi32>
      %277 = arith.maxf %cst, %cst_5 : f16
      affine.store %43, %alloc_8[%c5, %c11, %c8] : memref<8x11x11xf32>
      %alloc_43 = memref.alloc() : memref<13x7xi64>
      %278 = vector.broadcast %87 : i64 to vector<8x11x11xi64>
      %279 = vector.gather %alloc_43[%rank, %c11] [%32], %99, %278 : memref<13x7xi64>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi64> into vector<8x11x11xi64>
      %280 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * -8 - 32 == 0, -(d2 * -8 - 32) == 0)>(%c14, %c2, %c7, %c5) -> memref<11xi64> {
        %293 = math.ipowi %15, %7 : tensor<11xi1>
        %294 = vector.reduction <minui>, %35 : vector<1xi32> into i32
        %295 = vector.splat %c3 : vector<8x13xindex>
        %extracted_47 = tensor.extract %6[%c3, %c10, %c0] : tensor<8x11x11xi1>
        %296 = math.log10 %0 : tensor<11xf32>
        %297 = vector.broadcast %false : i1 to vector<11x11xi1>
        %298 = vector.insert %297, %99 [3] : vector<11x11xi1> into vector<8x11x11xi1>
        %299 = arith.shli %false_29, %false : i1
        %300 = math.absf %13 : tensor<8x11x11xf32>
        %alloc_48 = memref.alloc() : memref<11xi64>
        affine.yield %alloc_48 : memref<11xi64>
      } else {
        %293 = arith.muli %extracted_33, %out : i64
        %294 = vector.broadcast %c31685_i16 : i16 to vector<11xi16>
        %295 = vector.insert %294, %33 [6, 4] : vector<11xi16> into vector<8x11x11xi16>
        %296 = bufferization.clone %116 : memref<11xf16> to memref<11xf16>
        %297 = arith.xori %out, %87 : i64
        %298 = arith.shrsi %true_3, %true_23 : i1
        %299 = arith.ceildivsi %c1577916601_i64, %c1577916601_i64 : i64
        %300 = math.log10 %cst_0 : f32
        %301 = bufferization.to_tensor %49 : memref<11xf32>
        %alloc_47 = memref.alloc() : memref<11xi64>
        affine.yield %alloc_47 : memref<11xi64>
      }
      %281 = math.cos %9 : tensor<11xf32>
      %282 = vector.bitcast %45 : vector<11xf16> to vector<11xf16>
      %283 = vector.bitcast %97 : vector<2xi32> to vector<2xi32>
      %284 = vector.broadcast %87 : i64 to vector<13xi64>
      %dest_44, %accumulated_value_45 = vector.scan <mul>, %68, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<8x13xi64>, vector<13xi64>
      %285 = math.roundeven %0 : tensor<11xf32>
      %286 = vector.reduction <minf>, %45 : vector<11xf16> into f16
      %287 = vector.reduction <or>, %97 : vector<2xi32> into i32
      %288 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%140, %c3, %58)
      %289 = arith.shrsi %146, %c289369762_i32 : i32
      %290 = index.sub %73, %c4
      %cst_46 = arith.constant 4.950400e+04 : f16
      %291 = vector.broadcast %true_3 : i1 to vector<11xi1>
      %292 = affine.load %alloc_6[%c14, %c14] : memref<13x7xf16>
      linalg.yield %87 : i64
    } -> tensor<8x11x11xi64>
    %159 = index.mul %155, %c1
    %160 = math.ipowi %22, %23 : tensor<i16>
    %161 = math.powf %cst_0, %43 : f32
    bufferization.dealloc_tensor %7 : tensor<11xi1>
    %162 = index.ceildivs %96, %106
    %163 = index.casts %47 : index to i32
    %164 = index.mul %26, %26
    %165 = vector.flat_transpose %25 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %166 = math.log1p %cst_5 : f16
    scf.if %false_29 {
      %264 = math.copysign %0, %9 : tensor<11xf32>
      %265 = arith.ceildivsi %c31913_i16, %108 : i16
      %266 = index.casts %159 : index to i32
      %inserted_42 = tensor.insert %false into %cast[%c0, %c0, %c0] : tensor<?x?x?xi1>
      %267 = arith.shrui %c289369762_i32, %c289369762_i32 : i32
      %rank_43 = tensor.rank %5 : tensor<11xf16>
      %268 = math.tanh %cst_2 : f16
      %269 = math.fpowi %9, %4 : tensor<11xf32>, tensor<11xi32>
    } else {
      %264 = index.sizeof
      %265 = math.tanh %cst : f16
      %266 = math.round %43 : f32
      %267 = affine.if affine_set<(d0, d1) : (0 >= 0, 0 == 0, (d0 - d1 + 16) mod 64 + 4 == 0, d1 - 32 == 0)>(%c1, %c8) -> memref<8x11x11xi64> {
        %273 = math.ceil %cst : f16
        memref.store %cst_0, %alloc_8[%c1, %c5, %c9] : memref<8x11x11xf32>
        %alloc_42 = memref.alloc() : memref<8x11x11xf16>
        %274 = vector.broadcast %true_3 : i1 to vector<11xi1>
        %275 = vector.broadcast %extracted : i32 to vector<11xi32>
        %276 = vector.gather %alloc_42[%c7, %140, %26] [%275], %274, %141 : memref<8x11x11xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %277 = arith.remui %146, %122 : i32
        %278 = vector.broadcast %c289369762_i32 : i32 to vector<11x11xi32>
        %dest_43, %accumulated_value_44 = vector.scan <minsi>, %32, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11x11xi32>, vector<11x11xi32>
        %279 = arith.minui %c-167_i16, %c-167_i16 : i16
        %280 = index.divu %c14, %155
        %281 = tensor.empty() : tensor<8x11x11xi16>
        %alloc_45 = memref.alloc() : memref<8x11x11xi64>
        affine.yield %alloc_45 : memref<8x11x11xi64>
      } else {
        %273 = math.ctlz %16 : tensor<8x11x11xi1>
        %274 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %134, %134, %c289369762_i32 : vector<1xi32>, vector<1xi32> into i32
        %276 = math.cttz %true : i1
        %alloc_42 = memref.alloc() : memref<13x7xf32>
        %277 = math.rsqrt %5 : tensor<11xf16>
        %278 = index.ceildivs %139, %147
        %279 = vector.broadcast %146 : i32 to vector<8x13xi32>
        %alloc_43 = memref.alloc() : memref<8x11x11xi64>
        affine.yield %alloc_43 : memref<8x11x11xi64>
      }
      %268 = math.roundeven %5 : tensor<11xf16>
      %269 = vector.broadcast %c6 : index to vector<11xindex>
      %270 = vector.broadcast %false_1 : i1 to vector<11xi1>
      vector.scatter %alloc_18[%c1, %c2, %c0] [%269], %270, %270 : memref<8x11x11xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
      %271 = arith.divui %c1577916601_i64, %87 : i64
      %272 = arith.cmpf ugt, %cst_0, %43 : f32
    }
    %167 = affine.if affine_set<(d0) : (0 == 0, (d0 * 127) mod 2 >= 0, d0 * 8 >= 0, d0 * 127 == 0)>(%c7) -> f16 {
      %264 = arith.shrui %false_4, %81 : i1
      %alloca_42 = memref.alloca() : memref<11xi64>
      bufferization.dealloc_tensor %5 : tensor<11xf16>
      %cast_43 = tensor.cast %2 : tensor<8x11x11xf32> to tensor<?x?x?xf32>
      %265 = index.casts %119 : index to i32
      %266 = math.tan %cst_2 : f16
      %267 = vector.bitcast %69 : vector<8x13xi1> to vector<8x13xi1>
      %alloca_44 = memref.alloca() : memref<8x11x11xi32>
      affine.yield %cst_5 : f16
    } else {
      %cast_42 = tensor.cast %1 : tensor<11xi16> to tensor<?xi16>
      %264 = vector.multi_reduction <minf>, %66, %cst_2 [0, 1] : vector<8x13xf16> to f16
      %265 = index.sub %c13, %139
      %266 = vector.multi_reduction <minui>, %70, %c289369762_i32 [0, 1] : vector<8x13xi32> to i32
      %267 = arith.negf %cst : f16
      %268 = arith.negf %cst_0 : f32
      %269 = scf.index_switch %156 -> memref<8x11x11xi1> 
      case 1 {
        %271 = math.cos %13 : tensor<8x11x11xf32>
        %272 = vector.splat %146 : vector<11xi32>
        %273 = arith.floordivsi %81, %false_29 : i1
        memref.assume_alignment %alloc_16, 16 : memref<8x13xi64>
        %274 = index.sizeof
        %275 = index.mul %47, %c0
        %276 = bufferization.clone %116 : memref<11xf16> to memref<11xf16>
        %277 = math.absf %2 : tensor<8x11x11xf32>
        %278 = math.atan %from_elements : tensor<8x13xf16>
        %279 = bufferization.clone %alloc_14 : memref<11xf16> to memref<11xf16>
        %280 = bufferization.clone %alloc_11 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %281 = math.cttz %c31913_i16 : i16
        %282 = arith.cmpf oeq, %cst_0, %43 : f32
        %283 = bufferization.clone %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %284 = arith.maxui %146, %266 : i32
        %285 = arith.negf %cst : f16
        scf.yield %alloc_18 : memref<8x11x11xi1>
      }
      case 2 {
        %271 = arith.cmpf ole, %264, %cst_5 : f16
        %272 = vector.broadcast %extracted : i32 to vector<8x11x11xi32>
        %273 = bufferization.clone %alloc_13 : memref<13x7xi32> to memref<13x7xi32>
        bufferization.dealloc_tensor %7 : tensor<11xi1>
        %274 = vector.insertelement %extracted, %165[%113 : index] : vector<8xi32>
        %275 = math.ctlz %7 : tensor<11xi1>
        %276 = math.atan %5 : tensor<11xf16>
        %rank_43 = tensor.rank %3 : tensor<13x7xi32>
        %277 = math.log %2 : tensor<8x11x11xf32>
        %278 = arith.maxsi %108, %c-167_i16 : i16
        %279 = affine.max affine_map<(d0) -> ((d0 ceildiv 64) * 8 + d0, (d0 ceildiv 64) * 9, d0 + 1, d0 ceildiv 64)>(%c14)
        %280 = arith.shrui %c2055696075_i32, %266 : i32
        %281 = arith.divsi %c-167_i16, %c31913_i16 : i16
        %282 = arith.ceildivsi %108, %c31913_i16 : i16
        %283 = math.rsqrt %0 : tensor<11xf32>
        %cast_44 = tensor.cast %14 : tensor<8x13xi16> to tensor<?x?xi16>
        scf.yield %alloc_18 : memref<8x11x11xi1>
      }
      case 3 {
        %271 = affine.max affine_map<(d0) -> (d0, 0, d0)>(%147)
        %272 = arith.subi %c31913_i16, %108 : i16
        %273 = arith.shrsi %108, %c-167_i16 : i16
        %alloca_43 = memref.alloca() : memref<11xi64>
        bufferization.dealloc_tensor %cast : tensor<?x?x?xi1>
        %274 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
        %275 = math.exp %5 : tensor<11xf16>
        %276 = vector.insert %146, %165 [2] : i32 into vector<8xi32>
        %extracted_44 = tensor.extract %7[%c6] : tensor<11xi1>
        %277 = vector.bitcast %45 : vector<11xf16> to vector<11xf16>
        %278 = math.log10 %9 : tensor<11xf32>
        %279 = math.roundeven %9 : tensor<11xf32>
        %280 = arith.ceildivsi %true_23, %81 : i1
        %281 = math.cos %2 : tensor<8x11x11xf32>
        %282 = arith.shrsi %extracted_33, %extracted_33 : i64
        %283 = math.fma %9, %9, %9 : tensor<11xf32>
        scf.yield %alloc_18 : memref<8x11x11xi1>
      }
      case 4 {
        %271 = arith.maxf %cst_2, %cst_5 : f16
        %272 = arith.remsi %108, %c31685_i16 : i16
        %273 = bufferization.clone %alloc_6 : memref<13x7xf16> to memref<13x7xf16>
        %274 = bufferization.to_memref %9 : memref<11xf32>
        %275 = vector.broadcast %false_4 : i1 to vector<11xi1>
        %276 = vector.broadcast %122 : i32 to vector<11xi32>
        %277 = vector.gather %alloc_7[%162] [%276], %275, %275 : memref<11xi1>, vector<11xi32>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %278 = arith.andi %true, %true_23 : i1
        %279 = arith.floordivsi %c-167_i16, %108 : i16
        %280 = arith.remui %266, %extracted : i32
        %281 = vector.splat %cst_2 : vector<8x13xf16>
        %282 = index.ceildivs %c8, %139
        %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 4)>(%113, %140, %47, %139)
        %284 = math.sqrt %9 : tensor<11xf32>
        %285 = vector.insertelement %122, %165[%c2 : index] : vector<8xi32>
        %286 = arith.divsi %146, %c2055696075_i32 : i32
        %287 = index.ceildivs %96, %164
        %288 = math.fma %5, %5, %5 : tensor<11xf16>
        scf.yield %alloc_18 : memref<8x11x11xi1>
      }
      default {
        memref.copy %alloc_20, %alloc_11 : memref<8x11x11xi32> to memref<8x11x11xi32>
        %271 = vector.bitcast %134 : vector<1xi32> to vector<1xi32>
        %272 = math.log1p %cst_5 : f16
        %273 = tensor.empty() : tensor<13x13xi16>
        %274 = tensor.empty() : tensor<8x13xi16>
        %275 = linalg.matmul ins(%14, %273 : tensor<8x13xi16>, tensor<13x13xi16>) outs(%274 : tensor<8x13xi16>) -> tensor<8x13xi16>
        %276 = vector.reduction <mul>, %141 : vector<11xf16> into f16
        %277 = arith.xori %266, %122 : i32
        %278 = index.ceildivs %164, %26
        %279 = arith.negf %43 : f32
        %280 = arith.divui %false_1, %true : i1
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c12, %278, %140, %c11)
        %extracted_43 = tensor.extract %15[%c9] : tensor<11xi1>
        %282 = vector.insertelement %extracted, %20[%155 : index] : vector<8xi32>
        %283 = math.sqrt %from_elements : tensor<8x13xf16>
        %extracted_44 = tensor.extract %15[%c3] : tensor<11xi1>
        %284 = math.ctlz %8 : tensor<8x13xi32>
        %285 = affine.min affine_map<(d0) -> ((d0 floordiv 32 - 2) mod 64, (d0 mod 2) * 128)>(%c5)
        scf.yield %alloc_18 : memref<8x11x11xi1>
      }
      %270 = index.castu %52 : index to i32
      affine.yield %cst_2 : f16
    }
    %168 = math.cttz %8 : tensor<8x13xi32>
    %169 = scf.while (%arg1 = %30) : (vector<8x11x11xi16>) -> vector<8x11x11xi16> {
      scf.index_switch %52 
      case 1 {
        %270 = vector.broadcast %false_1 : i1 to vector<13xi1>
        %271 = vector.insert %270, %69 [0] : vector<13xi1> into vector<8x13xi1>
        %272 = bufferization.to_memref %12 : memref<8x11x11xi64>
        %273 = bufferization.clone %alloc_9 : memref<13x7xf32> to memref<13x7xf32>
        %274 = math.ipowi %75, %75 : tensor<13x7xi32>
        %275 = arith.cmpf false, %cst_0, %43 : f32
        %276 = vector.extract_strided_slice %32 {offsets = [4], sizes = [4], strides = [1]} : vector<8x11x11xi32> to vector<4x11x11xi32>
        vector.print %64 : vector<2xi32>
        %cast_43 = tensor.cast %6 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
        %277 = arith.cmpf une, %cst_5, %cst_2 : f16
        %278 = arith.maxf %cst_0, %43 : f32
        %279 = vector.extract_strided_slice %30 {offsets = [0, 2], sizes = [4, 3], strides = [1, 1]} : vector<8x11x11xi16> to vector<4x3x11xi16>
        %280 = bufferization.clone %alloc_16 : memref<8x13xi64> to memref<8x13xi64>
        %281 = math.ctlz %15 : tensor<11xi1>
        %282 = index.maxs %121, %147
        %283 = tensor.empty(%73) : tensor<?xi1>
        %284 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        scf.yield
      }
      case 2 {
        %270 = index.divs %140, %58
        %extracted_43 = tensor.extract %0[%c9] : tensor<11xf32>
        %alloca_44 = memref.alloca() : memref<8x11x11xf16>
        %271 = index.floordivs %c5, %c0
        %rank_45 = tensor.rank %cast_32 : tensor<?xf32>
        %272 = arith.xori %false_29, %false_4 : i1
        %extracted_46 = tensor.extract %4[%c5] : tensor<11xi32>
        %273 = vector.flat_transpose %45 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
        %alloca_47 = memref.alloca() : memref<13x7xf32>
        %274 = math.ctlz %14 : tensor<8x13xi16>
        %275 = math.log %extracted_43 : f32
        %276 = math.tan %extracted_43 : f32
        %277 = arith.maxui %108, %c-167_i16 : i16
        %cast_48 = tensor.cast %75 : tensor<13x7xi32> to tensor<?x?xi32>
        %extracted_49 = tensor.extract %5[%c10] : tensor<11xf16>
        %278 = math.log10 %extracted_43 : f32
        scf.yield
      }
      case 3 {
        %rank_43 = tensor.rank %10 : tensor<8x11x11xi1>
        %270 = vector.extract_strided_slice %141 {offsets = [4], sizes = [5], strides = [1]} : vector<11xf16> to vector<5xf16>
        %271 = math.floor %9 : tensor<11xf32>
        %extracted_44 = tensor.extract %6[%c7, %c5, %c2] : tensor<8x11x11xi1>
        %272 = math.rsqrt %cst_5 : f16
        %273 = index.ceildivs %147, %c8
        %274 = vector.transpose %69, [0, 1] : vector<8x13xi1> to vector<8x13xi1>
        %cast_45 = tensor.cast %18 : tensor<11xi1> to tensor<?xi1>
        %alloc_46 = memref.alloc() : memref<8x13xf32>
        %275 = vector.broadcast %cst : f16 to vector<13xf16>
        %276 = vector.insert %275, %66 [0] : vector<13xf16> into vector<8x13xf16>
        %277 = vector.insert %c289369762_i32, %97 [1] : i32 into vector<2xi32>
        %278 = arith.muli %108, %c-167_i16 : i16
        %rank_47 = tensor.rank %13 : tensor<8x11x11xf32>
        %279 = math.ctpop %extracted : i32
        %280 = arith.negf %cst_0 : f32
        %281 = arith.minui %81, %false_4 : i1
        scf.yield
      }
      default {
        %270 = arith.maxf %cst_0, %43 : f32
        %rank_43 = tensor.rank %cast : tensor<?x?x?xi1>
        %alloca_44 = memref.alloca() : memref<13x7xi16>
        %271 = math.fma %cst, %cst, %cst_5 : f16
        %272 = vector.splat %true_23 : vector<8x11x11xi1>
        %273 = math.expm1 %2 : tensor<8x11x11xf32>
        %274 = affine.min affine_map<(d0) -> (d0 * -2 + 4, d0 * 2)>(%c9)
        %true_45 = index.bool.constant true
        %275 = arith.floordivsi %87, %extracted_33 : i64
        vector.print %27 : vector<2xi32>
        %276 = arith.andi %c-167_i16, %108 : i16
        %277 = arith.ceildivsi %146, %c289369762_i32 : i32
        %278 = math.cttz %17 : tensor<8x11x11xi1>
        %279 = vector.insertelement %c289369762_i32, %64[%121 : index] : vector<2xi32>
        %280 = arith.addf %43, %cst_0 : f32
        %281 = arith.negf %43 : f32
      }
      %extracted_42 = tensor.extract %1[%c9] : tensor<11xi16>
      %264 = math.roundeven %13 : tensor<8x11x11xf32>
      %265 = math.ipowi %4, %4 : tensor<11xi32>
      %266 = math.ctlz %1 : tensor<11xi16>
      %267 = math.tan %13 : tensor<8x11x11xf32>
      %268 = memref.atomic_rmw addi %c31685_i16, %alloc_12[%c6] : (i16, memref<11xi16>) -> i16
      %269 = vector.broadcast %true : i1 to vector<13x7xi1>
      scf.condition(%true_23) %57 : vector<8x11x11xi16>
    } do {
    ^bb0(%arg1: vector<8x11x11xi16>):
      %extracted_42 = tensor.extract %12[%c7, %c5, %c2] : tensor<8x11x11xi64>
      %264 = arith.divui %extracted, %c289369762_i32 : i32
      %265 = bufferization.clone %alloc_20 : memref<8x11x11xi32> to memref<8x11x11xi32>
      %extracted_43 = tensor.extract %11[%c6, %c10, %c2] : tensor<8x11x11xi32>
      %266 = affine.max affine_map<(d0) -> (d0 + 4, d0 - (d0 + 2) + 20, d0 + 2)>(%164)
      %267 = vector.extract_strided_slice %32 {offsets = [2], sizes = [4], strides = [1]} : vector<8x11x11xi32> to vector<4x11x11xi32>
      %268 = vector.flat_transpose %25 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
      %true_44 = index.bool.constant true
      %269 = math.sqrt %5 : tensor<11xf16>
      %270 = vector.broadcast %c13 : index to vector<13xindex>
      %271 = vector.broadcast %true_23 : i1 to vector<13xi1>
      vector.scatter %alloc_7[%c10] [%270], %271, %271 : memref<11xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
      %272 = vector.extract_strided_slice %97 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
      %273 = index.maxs %147, %c12
      %274 = math.ctlz %true_23 : i1
      %275 = index.maxs %c5, %147
      %276 = vector.create_mask %275 : vector<11xi1>
      memref.assume_alignment %alloc, 1 : memref<13x7xf32>
      scf.yield %57 : vector<8x11x11xi16>
    }
    %170 = vector.flat_transpose %97 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
    %171 = vector.bitcast %32 : vector<8x11x11xi32> to vector<8x11x11xi32>
    %172 = math.tanh %5 : tensor<11xf16>
    scf.if %false_4 {
      %264 = math.tanh %5 : tensor<11xf16>
      %265 = arith.divsi %108, %c31913_i16 : i16
      %266 = arith.ori %true, %true_23 : i1
      %267 = math.roundeven %9 : tensor<11xf32>
      %268 = vector.splat %c6 : vector<8x11x11xindex>
      %269 = math.exp %9 : tensor<11xf32>
      %270 = arith.cmpf ule, %cst_2, %cst_2 : f16
      %271 = index.maxs %96, %c10
    }
    %173 = index.mul %155, %164
    %174 = index.mul %58, %96
    %175 = vector.insert %c289369762_i32, %27 [0] : i32 into vector<2xi32>
    %176 = index.ceildivs %c2, %c13
    %177 = vector.reduction <maxsi>, %64 : vector<2xi32> into i32
    %178 = math.ipowi %7, %7 : tensor<11xi1>
    %179 = math.powf %0, %0 : tensor<11xf32>
    %inserted_35 = tensor.insert %43 into %2[%c1, %c1, %c0] : tensor<8x11x11xf32>
    %180 = math.rsqrt %9 : tensor<11xf32>
    %181 = math.log1p %9 : tensor<11xf32>
    %182 = math.log1p %cst_2 : f16
    %183 = math.fpowi %43, %c2055696075_i32 : f32, i32
    %extracted_36 = tensor.extract %75[%c8, %c1] : tensor<13x7xi32>
    vector.print %69 : vector<8x13xi1>
    %expanded = tensor.expand_shape %8 [[0], [1, 2]] : tensor<8x13xi32> into tensor<8x13x1xi32>
    %184 = math.ipowi %10, %10 : tensor<8x11x11xi1>
    %185 = tensor.empty() : tensor<8x13xi1>
    %186 = vector.gather %185[%26, %121] [%70], %69, %69 : tensor<8x13xi1>, vector<8x13xi32>, vector<8x13xi1>, vector<8x13xi1> into vector<8x13xi1>
    %187 = math.log1p %cst_0 : f32
    bufferization.dealloc_tensor %14 : tensor<8x13xi16>
    %188 = math.exp %5 : tensor<11xf16>
    %189 = arith.shrsi %true, %81 : i1
    %190 = arith.negf %cst_0 : f32
    %191 = math.log1p %2 : tensor<8x11x11xf32>
    %192 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%82, %119, %c7, %82)
    %193 = math.ipowi %23, %23 : tensor<i16>
    %194 = vector.broadcast %c289369762_i32 : i32 to vector<2x2xi32>
    %195 = vector.outerproduct %170, %64, %194 {kind = #vector.kind<xor>} : vector<2xi32>, vector<2xi32>
    %196 = index.maxu %53, %121
    %197 = arith.divui %false_4, %true : i1
    %198 = arith.muli %c-167_i16, %c8527_i16 : i16
    %199 = math.powf %5, %5 : tensor<11xf16>
    %200 = math.log1p %13 : tensor<8x11x11xf32>
    %201 = vector.broadcast %c8527_i16 : i16 to vector<7xi16>
    %202 = vector.broadcast %81 : i1 to vector<7xi1>
    %203 = vector.maskedload %alloc_17[%c1, %c4], %202, %201 : memref<13x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %204 = math.atan %9 : tensor<11xf32>
    memref.copy %62, %alloc_21 : memref<8xi1> to memref<8xi1>
    %205 = scf.while (%arg1 = %35) : (vector<1xi32>) -> vector<1xi32> {
      %264 = vector.broadcast %false : i1 to vector<11xi1>
      %265 = vector.maskedload %116[%c8], %264, %45 : memref<11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
      %266 = arith.muli %c8527_i16, %c31913_i16 : i16
      %267 = affine.max affine_map<(d0, d1, d2) -> (d0 - d1 - (d0 - d1) mod 4 - 128)>(%c1, %38, %c1)
      %268 = index.casts %c1577916601_i64 : i64 to index
      %269 = arith.negf %43 : f32
      %270 = arith.addf %cst_5, %cst : f16
      %271 = arith.cmpf ord, %cst_0, %cst_0 : f32
      %272 = affine.max affine_map<(d0, d1, d2) -> (d0 + 64, d1 + d2 * 2)>(%c4, %c10, %139)
      scf.condition(%true) %34 : vector<1xi32>
    } do {
    ^bb0(%arg1: vector<1xi32>):
      %264 = vector.reduction <minsi>, %203 : vector<7xi16> into i16
      %265 = vector.multi_reduction <or>, %202, %202 [] : vector<7xi1> to vector<7xi1>
      %rank_42 = tensor.rank %29 : tensor<8x11x11xi16>
      %266 = arith.remui %122, %146 : i32
      scf.execute_region {
        %276 = vector.broadcast %extracted : i32 to vector<11xi32>
        %277 = vector.broadcast %true : i1 to vector<11xi1>
        %278 = vector.gather %3[%c0, %c12] [%276], %277, %276 : tensor<13x7xi32>, vector<11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %alloca_44 = memref.alloca() : memref<8x11x11xi16>
        %279 = arith.minui %true, %true_3 : i1
        %280 = math.ctlz %4 : tensor<11xi32>
        %281 = math.log %43 : f32
        %collapsed = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<8x11x11xi1> into tensor<88x11xi1>
        %282 = affine.max affine_map<(d0, d1) -> (-d0 - d0 mod 64 + d1 + 128 - d0, d0 ceildiv 128, d1 - 16, d1 + d0 + 128)>(%c8, %113)
        %283 = tensor.empty(%c2) : tensor<?x13xi64>
        %284 = vector.bitcast %70 : vector<8x13xi32> to vector<8x13xi32>
        %285 = vector.extract_strided_slice %70 {offsets = [6], sizes = [1], strides = [1]} : vector<8x13xi32> to vector<1x13xi32>
        %false_45 = index.bool.constant false
        %cast_46 = tensor.cast %75 : tensor<13x7xi32> to tensor<?x?xi32>
        %286 = vector.insertelement %c289369762_i32, %25[%155 : index] : vector<8xi32>
        memref.assume_alignment %alloc, 4 : memref<13x7xf32>
        %287 = bufferization.to_tensor %alloc_7 : memref<11xi1>
        %288 = math.roundeven %cst : f16
        scf.yield
      }
      %267 = scf.if %false_29 -> (i16) {
        %276 = bufferization.to_memref %67 : memref<11xi64>
        %rank_44 = tensor.rank %8 : tensor<8x13xi32>
        %277 = arith.ceildivsi %false_4, %false_1 : i1
        %278 = bufferization.to_memref %cast_28 : memref<?xi16>
        %279 = math.tanh %13 : tensor<8x11x11xf32>
        %alloc_45 = memref.alloc() : memref<11xi16>
        memref.copy %alloc_12, %alloc_45 : memref<11xi16> to memref<11xi16>
        %280 = vector.broadcast %extracted_33 : i64 to vector<8x13xi64>
        %281 = vector.broadcast %c1577916601_i64 : i64 to vector<8xi64>
        %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %68, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<8x13xi64>, vector<8xi64>
        scf.yield %c31913_i16 : i16
      } else {
        %276 = math.fpowi %5, %4 : tensor<11xf16>, tensor<11xi32>
        %277 = index.divu %26, %119
        %cast_44 = tensor.cast %16 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
        %278 = tensor.empty() : tensor<8x11x11xi32>
        %279 = vector.flat_transpose %202 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %280 = vector.extract_strided_slice %30 {offsets = [5], sizes = [1], strides = [1]} : vector<8x11x11xi16> to vector<1x11x11xi16>
        %281 = math.ctlz %11 : tensor<8x11x11xi32>
        %282 = vector.insertelement %c2055696075_i32, %134[%38 : index] : vector<1xi32>
        scf.yield %c31913_i16 : i16
      }
      %268 = arith.floordivsi %146, %122 : i32
      %269 = scf.while (%arg2 = %134) : (vector<1xi32>) -> vector<1xi32> {
        %276 = vector.flat_transpose %134 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %277 = index.ceildivs %196, %c5
        %278 = math.ctlz %87 : i64
        %279 = math.log1p %cst_5 : f16
        %280 = math.log2 %13 : tensor<8x11x11xf32>
        %cast_44 = tensor.cast %12 : tensor<8x11x11xi64> to tensor<?x?x?xi64>
        %cast_45 = tensor.cast %9 : tensor<11xf32> to tensor<?xf32>
        %281 = arith.addf %cst_2, %cst : f16
        scf.condition(%true) %34 : vector<1xi32>
      } do {
      ^bb0(%arg2: vector<1xi32>):
        %276 = index.maxs %119, %156
        %277 = index.casts %176 : index to i32
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 4)>(%c10, %c7, %82, %159)
        %279 = arith.maxui %extracted_36, %122 : i32
        %280 = arith.ceildivsi %c289369762_i32, %c289369762_i32 : i32
        %281 = math.copysign %0, %9 : tensor<11xf32>
        %282 = arith.cmpf ogt, %cst, %cst_2 : f16
        %283 = arith.floordivsi %true_23, %81 : i1
        %284 = arith.divsi %extracted_33, %87 : i64
        %from_elements_44 = tensor.from_elements %87, %c1577916601_i64, %87, %87, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %87, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %87, %c1577916601_i64, %87, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %87, %87, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %extracted_33, %87, %87, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %extracted_33, %87, %extracted_33, %extracted_33, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %87, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %extracted_33, %87, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %extracted_33, %87, %extracted_33, %87, %87, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %87, %87, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %87, %87, %87, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %87, %87, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %87, %extracted_33, %extracted_33, %87, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %extracted_33, %87, %87, %87, %87, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %87, %87, %87, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %87, %extracted_33, %87, %87, %c1577916601_i64, %c1577916601_i64, %87, %87, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %87, %87, %87, %87, %c1577916601_i64, %extracted_33, %87, %87, %extracted_33, %extracted_33, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %87, %87, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %87, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %87, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %87, %87, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %87, %extracted_33, %87, %87, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %extracted_33, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %87, %87, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %87, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %87, %87, %87, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %87, %c1577916601_i64, %87, %extracted_33, %87, %87, %c1577916601_i64, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %87, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %87, %c1577916601_i64, %extracted_33, %87, %87, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %87, %87, %87, %extracted_33, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %87, %87, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %87, %87, %c1577916601_i64, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %87, %87, %c1577916601_i64, %87, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %extracted_33, %extracted_33, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %c1577916601_i64, %87, %87, %87, %extracted_33, %extracted_33, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %c1577916601_i64, %87, %c1577916601_i64, %extracted_33, %87, %extracted_33, %87, %87, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %87, %extracted_33, %extracted_33, %extracted_33, %87, %extracted_33, %87, %c1577916601_i64, %extracted_33, %c1577916601_i64, %extracted_33, %extracted_33, %87, %87, %87, %extracted_33, %extracted_33, %87, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %c1577916601_i64, %extracted_33, %c1577916601_i64, %c1577916601_i64, %extracted_33, %extracted_33, %87, %extracted_33, %87, %extracted_33, %extracted_33, %c1577916601_i64, %c1577916601_i64, %87, %87, %extracted_33, %c1577916601_i64, %87, %c1577916601_i64 : tensor<8x11x11xi64>
        %alloc_45 = memref.alloc() : memref<11xi64>
        %285 = vector.gather %alloc_45[%c15] [%70], %69, %71 : memref<11xi64>, vector<8x13xi32>, vector<8x13xi1>, vector<8x13xi64> into vector<8x13xi64>
        %286 = index.ceildivs %106, %53
        %287 = arith.floordivsi %267, %267 : i16
        %288 = math.cttz %4 : tensor<11xi32>
        %289 = math.copysign %cst, %cst_2 : f16
        %alloc_46 = memref.alloc() : memref<13x7xf32>
        scf.yield %35 : vector<1xi32>
      }
      %extracted_43 = tensor.extract %15[%c2] : tensor<11xi1>
      memref.alloca_scope  {
        %276 = arith.ori %extracted_36, %c289369762_i32 : i32
        %277 = math.roundeven %0 : tensor<11xf32>
        %278 = math.copysign %43, %43 : f32
        %279 = vector.reduction <mul>, %34 : vector<1xi32> into i32
        %280 = arith.remui %extracted_36, %extracted : i32
        %281 = arith.floordivsi %c289369762_i32, %extracted_36 : i32
        %282 = vector.gather %from_elements[%rank, %173] [%70], %186, %66 : tensor<8x13xf16>, vector<8x13xi32>, vector<8x13xi1>, vector<8x13xf16> into vector<8x13xf16>
        %283 = affine.max affine_map<(d0, d1) -> (0, d1 - 4, d1 mod 2)>(%140, %47)
        %284 = vector.broadcast %108 : i16 to vector<11x11xi16>
        %285 = vector.insert %284, %57 [0] : vector<11x11xi16> into vector<8x11x11xi16>
        memref.assume_alignment %alloc_8, 4 : memref<8x11x11xf32>
        %expanded_44 = tensor.expand_shape %9 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
        %286 = arith.negf %cst_5 : f16
        %287 = bufferization.to_tensor %alloc_20 : memref<8x11x11xi32>
        %288 = math.atan %cst_5 : f16
        %rank_45 = tensor.rank %1 : tensor<11xi16>
        %289 = math.ctlz %extracted : i32
        %290 = vector.transpose %57, [1, 2, 0] : vector<8x11x11xi16> to vector<11x11x8xi16>
        %291 = vector.reduction <maxui>, %97 : vector<2xi32> into i32
        %292 = index.casts %87 : i64 to index
        vector.print %203 : vector<7xi16>
        %293 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        %294 = vector.fma %293, %293, %293 : vector<11xf32>
        %295 = index.sizeof
        %296 = vector.transpose %68, [1, 0] : vector<8x13xi64> to vector<13x8xi64>
        %297 = math.exp2 %2 : tensor<8x11x11xf32>
        %298 = bufferization.to_memref %3 : memref<13x7xi32>
        %299 = vector.extract_strided_slice %165 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi32> to vector<3xi32>
        %300 = index.casts %extracted_33 : i64 to index
        %true_46 = index.bool.constant true
        %301 = arith.xori %true_3, %81 : i1
        %302 = arith.remsi %c31685_i16, %c31913_i16 : i16
        %303 = math.copysign %43, %43 : f32
        affine.store %cst_5, %alloc_15[%c0, %c3] : memref<8x13xf16>
      }
      %270 = arith.minui %c31685_i16, %267 : i16
      %271 = math.ceil %from_elements : tensor<8x13xf16>
      %272 = arith.floordivsi %extracted_36, %c289369762_i32 : i32
      %273 = arith.subi %267, %c-167_i16 : i16
      %274 = vector.splat %139 : vector<13x7xindex>
      %275 = math.atan %0 : tensor<11xf32>
      scf.yield %35 : vector<1xi32>
    }
    %206 = arith.addf %cst, %cst : f16
    %207 = bufferization.clone %alloc_19 : memref<11xi32> to memref<11xi32>
    %208 = math.powf %13, %2 : tensor<8x11x11xf32>
    %209 = index.sub %c1, %73
    %210 = vector.transpose %31, [1, 2, 0] : vector<8x11x11xi1> to vector<11x11x8xi1>
    %211 = math.round %cst_0 : f32
    %212 = math.tan %9 : tensor<11xf32>
    %213 = arith.shrsi %extracted_33, %c1577916601_i64 : i64
    %214 = math.ctlz %67 : tensor<11xi64>
    %215 = index.maxs %58, %156
    %216 = arith.maxf %cst_0, %cst_0 : f32
    %alloca = memref.alloca() : memref<13x7xi16>
    scf.if %true_23 {
      %264 = math.rsqrt %9 : tensor<11xf32>
      %265 = arith.negf %43 : f32
      %266 = vector.splat %c2055696075_i32 : vector<8x13xi32>
      %267 = bufferization.to_memref %185 : memref<8x13xi1>
      %268 = math.tanh %0 : tensor<11xf32>
      %cast_42 = tensor.cast %6 : tensor<8x11x11xi1> to tensor<?x?x?xi1>
      %alloca_43 = memref.alloca() : memref<8x13xf32>
      %269 = math.sqrt %2 : tensor<8x11x11xf32>
    } else {
      %264 = arith.andi %true_23, %false : i1
      %265 = math.sqrt %0 : tensor<11xf32>
      %true_42 = index.bool.constant true
      memref.alloca_scope  {
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 floordiv 8))>(%c1, %c5, %58, %156)
        %271 = math.ctpop %14 : tensor<8x13xi16>
        %272 = math.exp %cst_0 : f32
        %273 = vector.broadcast %43 : f32 to vector<13x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<13x7xf32>
        %275 = vector.insertelement %122, %27[%53 : index] : vector<2xi32>
        %276 = arith.divsi %c2055696075_i32, %extracted_36 : i32
        %277 = affine.load %alloc_8[%c4, %c11, %c3] : memref<8x11x11xf32>
        vector.print %274 : vector<13x7xf32>
        %278 = math.rsqrt %13 : tensor<8x11x11xf32>
        %279 = vector.broadcast %87 : i64 to vector<8x13xi64>
        %280 = index.maxs %47, %156
        %281 = math.atan %0 : tensor<11xf32>
        %282 = arith.shrui %146, %extracted : i32
        %283 = affine.max affine_map<(d0) -> (-(d0 - d0 floordiv 2) - (d0 - d0 floordiv 2 - 2), d0 floordiv 4, (d0 * 2) mod 16, -(d0 - d0 floordiv 2))>(%c15)
        %284 = arith.maxui %122, %c2055696075_i32 : i32
        %285 = math.log1p %43 : f32
        %inserted_44 = tensor.insert %c31913_i16 into %14[%c5, %c4] : tensor<8x13xi16>
        %286 = index.sub %270, %58
        %287 = index.sizeof
        %288 = vector.insertelement %c289369762_i32, %25[%192 : index] : vector<8xi32>
        %289 = index.casts %73 : index to i32
        %rank_45 = tensor.rank %1 : tensor<11xi16>
        %290 = math.ctlz %11 : tensor<8x11x11xi32>
        %291 = index.sizeof
        %292 = math.exp %13 : tensor<8x11x11xf32>
        %inserted_46 = tensor.insert %c1577916601_i64 into %12[%c2, %c5, %c7] : tensor<8x11x11xi64>
        %293 = index.sizeof
        %294 = arith.remf %cst_2, %cst_2 : f16
        %295 = index.floordivs %147, %73
        %296 = math.atan %cst_0 : f32
        %297 = math.ceil %2 : tensor<8x11x11xf32>
        %298 = vector.reduction <minsi>, %202 : vector<7xi1> into i1
      }
      %alloca_43 = memref.alloca() : memref<8x11x11xf32>
      %266 = vector.extract_strided_slice %33 {offsets = [4], sizes = [4], strides = [1]} : vector<8x11x11xi16> to vector<4x11x11xi16>
      %267 = vector.broadcast %43 : f32 to vector<8x11x11xf32>
      %268 = vector.fma %267, %267, %267 : vector<8x11x11xf32>
      %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%156, %c9, %73, %121)
    }
    scf.if %false_1 {
      %264 = index.sizeof
      %265 = math.roundeven %2 : tensor<8x11x11xf32>
      %alloca_42 = memref.alloca() : memref<8x13xi1>
      %266 = vector.extract_strided_slice %31 {offsets = [4, 9], sizes = [3, 1], strides = [1, 1]} : vector<8x11x11xi1> to vector<3x1x11xi1>
      %267 = math.atan %5 : tensor<11xf16>
      %alloca_43 = memref.alloca() : memref<8x13xf32>
      %268 = tensor.empty(%209) : tensor<?x13xi64>
      %269 = vector.broadcast %true_23 : i1 to vector<8xi1>
      %dest_44, %accumulated_value_45 = vector.scan <add>, %69, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<8x13xi1>, vector<8xi1>
    } else {
      vector.print %203 : vector<7xi16>
      %264 = math.ipowi %14, %14 : tensor<8x13xi16>
      affine.for %arg1 = 0 to 24 {
      }
      %265 = index.sizeof
      %266 = index.maxs %174, %164
      %267 = arith.divui %true_23, %true_23 : i1
      %268 = index.ceildivs %53, %176
      %269 = arith.addf %43, %43 : f32
    }
    %217 = vector.broadcast %c-167_i16 : i16 to vector<11xi16>
    %218 = arith.shrsi %87, %87 : i64
    %219 = arith.shrui %extracted, %extracted : i32
    %220 = math.ctpop %c31685_i16 : i16
    %extracted_37 = tensor.extract %14[%c5, %c3] : tensor<8x13xi16>
    %221 = bufferization.clone %alloc_6 : memref<13x7xf16> to memref<13x7xf16>
    %222 = arith.maxui %false_1, %true : i1
    %223 = memref.atomic_rmw minu %c289369762_i32, %207[%c9] : (i32, memref<11xi32>) -> i32
    %224 = vector.broadcast %c8527_i16 : i16 to vector<i16>
    %225 = vector.transfer_write %224, %21[%c0] : vector<i16>, tensor<11xi16>
    %226 = arith.ceildivsi %108, %c31685_i16 : i16
    %227 = arith.remf %cst_5, %cst_5 : f16
    %228 = affine.apply affine_map<(d0, d1, d2) -> (d2 - d1)>(%c11, %58, %82)
    memref.copy %207, %alloc_19 : memref<11xi32> to memref<11xi32>
    %229 = math.copysign %5, %5 : tensor<11xf16>
    %230 = math.powf %5, %5 : tensor<11xf16>
    %231 = math.ipowi %51, %1 : tensor<11xi16>
    %232 = math.powf %from_elements, %from_elements : tensor<8x13xf16>
    %233 = math.tanh %5 : tensor<11xf16>
    %234 = math.log1p %0 : tensor<11xf32>
    %235 = arith.divsi %extracted_36, %extracted : i32
    %236 = math.ipowi %10, %6 : tensor<8x11x11xi1>
    %237 = vector.broadcast %true_3 : i1 to vector<13x13xi1>
    %238 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %69, %186, %237 : vector<8x13xi1>, vector<8x13xi1> into vector<13x13xi1>
    %239 = vector.gather %alloc_13[%106, %c12] [%171], %31, %171 : memref<13x7xi32>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi32> into vector<8x11x11xi32>
    %240 = vector.broadcast %cst : f16 to vector<7xf16>
    %241 = vector.maskedload %alloc_6[%c4, %c1], %202, %240 : memref<13x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %242 = index.sizeof
    %243 = arith.ceildivsi %c-167_i16, %c31913_i16 : i16
    %244 = math.absf %from_elements : tensor<8x13xf16>
    %245 = math.atan %0 : tensor<11xf32>
    %246 = arith.floordivsi %true_3, %true : i1
    %247 = math.log10 %5 : tensor<11xf16>
    %248 = bufferization.clone %alloc_9 : memref<13x7xf32> to memref<13x7xf32>
    %249 = affine.load %alloc_9[%c11, %c9] : memref<13x7xf32>
    %250 = arith.minf %cst_0, %cst_0 : f32
    %alloca_38 = memref.alloca() : memref<8x13xi1>
    affine.store %cst, %alloc_14[%c10] : memref<11xf16>
    %251 = arith.divsi %false_4, %81 : i1
    %252 = index.sizeof
    %alloc_39 = memref.alloc() : memref<8x13xi1>
    %253 = vector.gather %alloc_39[%c7, %c9] [%32], %31, %99 : memref<8x13xi1>, vector<8x11x11xi32>, vector<8x11x11xi1>, vector<8x11x11xi1> into vector<8x11x11xi1>
    %254 = math.log %249 : f32
    %255 = math.exp %from_elements : tensor<8x13xf16>
    %splat = tensor.splat %false_1 : tensor<8x13xi1>
    %256 = index.mul %c12, %c2
    %257 = arith.xori %108, %extracted_37 : i16
    %258 = arith.cmpf une, %cst_0, %cst_0 : f32
    memref.copy %116, %alloc_14 : memref<11xf16> to memref<11xf16>
    %259 = tensor.empty() : tensor<8x13xi1>
    %260 = linalg.copy ins(%splat : tensor<8x13xi1>) outs(%259 : tensor<8x13xi1>) -> tensor<8x13xi1>
    %261 = tensor.empty() : tensor<11xf32>
    %transposed_40 = linalg.transpose ins(%0 : tensor<11xf32>) outs(%261 : tensor<11xf32>) permutation = [0] 
    %alloc_41 = memref.alloc() : memref<f32>
    linalg.reduce ins(%transposed_40 : tensor<11xf32>) outs(%alloc_41 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %264 = math.tan %init : f32
        %265 = arith.remui %extracted_36, %extracted_36 : i32
        %266 = vector.broadcast %43 : f32 to vector<8x11x11xf32>
        %267 = vector.fma %266, %266, %266 : vector<8x11x11xf32>
        %268 = vector.splat %c0 : vector<8x11x11xindex>
        vector.print %32 : vector<8x11x11xi32>
        %269 = arith.floordivsi %c8527_i16, %108 : i16
        %270 = math.exp %cst : f16
        %271 = arith.cmpf oge, %43, %in : f32
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %262 = scf.parallel (%arg1, %arg2) = (%164, %119) to (%113, %156) step (%c9, %c14) init (%33) -> vector<8x11x11xi16> {
      %264 = arith.divui %146, %146 : i32
      %265 = arith.negf %249 : f32
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %141, %45, %cst : vector<11xf16>, vector<11xf16> into f16
      %267 = vector.bitcast %64 : vector<2xi32> to vector<2xi32>
      %268 = bufferization.clone %49 : memref<11xf32> to memref<11xf32>
      %cast_42 = tensor.cast %0 : tensor<11xf32> to tensor<?xf32>
      %269 = arith.maxui %extracted_33, %extracted_33 : i64
      %270 = arith.negf %cst_0 : f32
      %271 = arith.remf %cst_5, %cst : f16
      %272 = math.ceil %transposed_40 : tensor<11xf32>
      %273 = arith.remf %cst_2, %cst : f16
      %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<8x11x11xi1> into tensor<88x11xi1>
      %274 = arith.maxui %true, %false : i1
      %275 = index.floordivs %155, %52
      %276 = math.tan %transposed_40 : tensor<11xf32>
      %277 = affine.if affine_set<(d0, d1) : (0 >= 0, 0 == 0, (d0 - d1 + 16) mod 64 + 4 == 0, d1 - 32 == 0)>(%c3, %c3) -> memref<8x11x11xi1> {
        %279 = tensor.empty() : tensor<11xf32>
        %280 = arith.cmpf ult, %cst_0, %cst_0 : f32
        %281 = math.log %13 : tensor<8x11x11xf32>
        %from_elements_43 = tensor.from_elements %false_4, %false_4, %81, %true, %81, %true_23, %true_3, %81, %true_23, %false_4, %true_23, %false_29, %81, %false, %false, %true_23, %true_3, %false, %false_4, %false_1, %false, %false_29, %81, %false_29, %false, %false_4, %true_23, %true_3, %false_4, %false_29, %false_29, %true, %true_23, %true_3, %true_23, %false_4, %true, %false, %true, %false_4, %false_4, %false_29, %false_4, %false_4, %81, %true_23, %false_29, %false, %true, %81, %false, %false_4, %false_29, %true_3, %false_4, %true_3, %false_29, %false_1, %true_23, %false_4, %false, %false, %false_1, %false_4, %false_4, %true, %true_23, %81, %true, %true_23, %false, %false_29, %true_3, %true_3, %81, %true_3, %false_1, %81, %false_4, %true_23, %true_23, %false_4, %true_23, %false_29, %false_4, %81, %true_23, %false_4, %false_29, %false, %false_29, %false_4, %81, %true, %true_23, %true, %81, %true_23, %false_1, %true_3, %false, %false_1, %false_29, %true_23 : tensor<8x13xi1>
        %282 = math.roundeven %43 : f32
        %283 = bufferization.clone %alloc_17 : memref<13x7xi16> to memref<13x7xi16>
        %284 = math.copysign %from_elements, %from_elements : tensor<8x13xf16>
        %285 = bufferization.to_memref %18 : memref<11xi1>
        affine.yield %alloc_18 : memref<8x11x11xi1>
      } else {
        %279 = vector.broadcast %249 : f32 to vector<f32>
        %280 = vector.transfer_write %279, %0[%c7] : vector<f32>, tensor<11xf32>
        %extracted_43 = tensor.extract %0[%c5] : tensor<11xf32>
        %281 = math.ceil %2 : tensor<8x11x11xf32>
        %cast_44 = tensor.cast %14 : tensor<8x13xi16> to tensor<?x?xi16>
        %282 = math.tan %13 : tensor<8x11x11xf32>
        %283 = vector.flat_transpose %202 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %284 = arith.maxui %c31685_i16, %c31685_i16 : i16
        %c1335222851_i64 = arith.constant 1335222851 : i64
        affine.yield %alloc_18 : memref<8x11x11xi1>
      }
      %278 = vector.broadcast %c8527_i16 : i16 to vector<8x11x11xi16>
      scf.reduce(%278)  : vector<8x11x11xi16> {
      ^bb0(%arg3: vector<8x11x11xi16>, %arg4: vector<8x11x11xi16>):
        %279 = arith.shli %extracted, %extracted_36 : i32
        %280 = arith.negf %cst : f16
        %281 = memref.realloc %62 : memref<8xi1> to memref<13xi1>
        %282 = math.tanh %5 : tensor<11xf16>
        %283 = math.round %9 : tensor<11xf32>
        %284 = index.maxu %176, %173
        %285 = bufferization.to_memref %13 : memref<8x11x11xf32>
        %286 = arith.divsi %81, %true_3 : i1
        %287 = vector.broadcast %extracted_37 : i16 to vector<8x11x11xi16>
        scf.reduce.return %287 : vector<8x11x11xi16>
      }
      scf.yield
    }
    %263 = affine.vector_load %alloc_39[%rank, %73] : memref<8x13xi1>, vector<13xi1>
    affine.vector_store %217, %alloc_12[%164] : memref<11xi16>, vector<11xi16>
    vector.print %20 : vector<8xi32>
    vector.print %25 : vector<8xi32>
    vector.print %27 : vector<2xi32>
    vector.print %30 : vector<8x11x11xi16>
    vector.print %31 : vector<8x11x11xi1>
    vector.print %32 : vector<8x11x11xi32>
    vector.print %33 : vector<8x11x11xi16>
    vector.print %34 : vector<1xi32>
    vector.print %35 : vector<1xi32>
    vector.print %45 : vector<11xf16>
    vector.print %57 : vector<8x11x11xi16>
    vector.print %64 : vector<2xi32>
    vector.print %66 : vector<8x13xf16>
    vector.print %68 : vector<8x13xi64>
    vector.print %69 : vector<8x13xi1>
    vector.print %70 : vector<8x13xi32>
    vector.print %71 : vector<8x13xi64>
    vector.print %97 : vector<2xi32>
    vector.print %99 : vector<8x11x11xi1>
    vector.print %134 : vector<1xi32>
    vector.print %141 : vector<11xf16>
    vector.print %165 : vector<8xi32>
    vector.print %170 : vector<2xi32>
    vector.print %171 : vector<8x11x11xi32>
    vector.print %186 : vector<8x13xi1>
    vector.print %201 : vector<7xi16>
    vector.print %202 : vector<7xi1>
    vector.print %203 : vector<7xi16>
    vector.print %217 : vector<11xi16>
    vector.print %224 : vector<i16>
    vector.print %239 : vector<8x11x11xi32>
    vector.print %240 : vector<7xf16>
    vector.print %241 : vector<7xf16>
    vector.print %253 : vector<8x11x11xi1>
    vector.print %263 : vector<13xi1>
    vector.print %c1577916601_i64 : i64
    vector.print %c31913_i16 : i16
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c8527_i16 : i16
    vector.print %c-167_i16 : i16
    vector.print %false_1 : i1
    vector.print %true : i1
    vector.print %cst_2 : f16
    vector.print %true_3 : i1
    vector.print %false_4 : i1
    vector.print %c289369762_i32 : i32
    vector.print %cst_5 : f16
    vector.print %c2055696075_i32 : i32
    vector.print %c31685_i16 : i16
    vector.print %43 : f32
    vector.print %extracted : i32
    vector.print %true_23 : i1
    vector.print %81 : i1
    vector.print %87 : i64
    vector.print %108 : i16
    vector.print %false_29 : i1
    vector.print %122 : i32
    vector.print %extracted_33 : i64
    vector.print %146 : i32
    vector.print %extracted_36 : i32
    vector.print %extracted_37 : i16
    vector.print %249 : f32
    return
  }
}
