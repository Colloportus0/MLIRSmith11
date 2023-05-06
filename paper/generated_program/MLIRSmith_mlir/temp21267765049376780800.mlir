module {
  func.func nested @func1(%arg0: index) -> tensor<6x6xi16> {
    %c1441311434_i64 = arith.constant 1441311434 : i64
    %cst = arith.constant 0x4E4961CE : f32
    %false = arith.constant false
    %c32458_i16 = arith.constant 32458 : i16
    %c28390_i16 = arith.constant 28390 : i16
    %cst_0 = arith.constant 2.379200e+04 : f16
    %c510588895_i64 = arith.constant 510588895 : i64
    %cst_1 = arith.constant 1.7949129E+9 : f32
    %false_2 = arith.constant false
    %c167884984_i64 = arith.constant 167884984 : i64
    %false_3 = arith.constant false
    %c16388_i16 = arith.constant 16388 : i16
    %cst_4 = arith.constant 1.33499251E+9 : f32
    %true = arith.constant true
    %false_5 = arith.constant false
    %c948921394_i64 = arith.constant 948921394 : i64
    %0 = tensor.empty() : tensor<6x6xf16>
    %1 = tensor.empty() : tensor<1xi16>
    %2 = tensor.empty() : tensor<1xf32>
    %3 = tensor.empty() : tensor<1x1xi1>
    %4 = tensor.empty() : tensor<1x1xi64>
    %5 = tensor.empty() : tensor<6x6xi1>
    %6 = tensor.empty() : tensor<1x1xi64>
    %7 = tensor.empty() : tensor<1x1xf32>
    %8 = tensor.empty() : tensor<6x6xi1>
    %9 = tensor.empty() : tensor<1xf16>
    %10 = tensor.empty() : tensor<1xi1>
    %11 = tensor.empty() : tensor<1xf32>
    %12 = tensor.empty() : tensor<6x6xi64>
    %13 = tensor.empty() : tensor<1x1xi16>
    %14 = tensor.empty() : tensor<1xi32>
    %15 = tensor.empty() : tensor<1x1xf16>
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
    %alloc = memref.alloc() : memref<1xi1>
    %alloc_6 = memref.alloc() : memref<1xi64>
    %alloc_7 = memref.alloc() : memref<1xi16>
    %alloc_8 = memref.alloc() : memref<1x1xi64>
    %alloc_9 = memref.alloc() : memref<1xi32>
    %alloc_10 = memref.alloc() : memref<1xf16>
    %alloc_11 = memref.alloc() : memref<6x6xi64>
    %alloc_12 = memref.alloc() : memref<1xi1>
    %alloc_13 = memref.alloc() : memref<1xf32>
    %alloc_14 = memref.alloc() : memref<6x6xi32>
    %alloc_15 = memref.alloc() : memref<1xi16>
    %alloc_16 = memref.alloc() : memref<1x1xf16>
    %alloc_17 = memref.alloc() : memref<6x6xf32>
    %alloc_18 = memref.alloc() : memref<6x6xf32>
    %alloc_19 = memref.alloc() : memref<1x1xf32>
    %alloc_20 = memref.alloc() : memref<1xi16>
    %16 = tensor.empty() : tensor<6x6xi1>
    %17 = linalg.copy ins(%5 : tensor<6x6xi1>) outs(%16 : tensor<6x6xi1>) -> tensor<6x6xi1>
    %18 = tensor.empty() : tensor<1x1xi64>
    %transposed = linalg.transpose ins(%4 : tensor<1x1xi64>) outs(%18 : tensor<1x1xi64>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%11 : tensor<1xf32>) outs(%19 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %extracted = tensor.extract %1[%c0] : tensor<1xi16>
        %258 = memref.load %alloc_15[%c0] : memref<1xi16>
        %259 = math.log1p %7 : tensor<1x1xf32>
        %260 = math.tan %15 : tensor<1x1xf16>
        %261 = arith.floordivsi %c948921394_i64, %c948921394_i64 : i64
        %262 = arith.addf %init, %cst : f32
        %263 = vector.broadcast %c28390_i16 : i16 to vector<1xi16>
        %264 = vector.flat_transpose %263 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %265 = vector.broadcast %c8 : index to vector<6xindex>
        %266 = vector.broadcast %false_2 : i1 to vector<6xi1>
        %267 = vector.broadcast %c32458_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_15[%c0] [%265], %266, %267 : memref<1xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %cst_46 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_46 : f32
      }
    %20 = scf.parallel (%arg1, %arg2) = (%c0, %c4) to (%c0, %c1) step (%c5, %c8) init (%cst_1) -> f32 {
      %258 = arith.cmpf uge, %cst_0, %cst_0 : f16
      %259 = math.exp %cst_4 : f32
      %260 = arith.shrsi %false, %false_3 : i1
      %261 = vector.broadcast %c32458_i16 : i16 to vector<14x1xi16>
      %262 = vector.broadcast %c16388_i16 : i16 to vector<1xi16>
      %dest_46, %accumulated_value_47 = vector.scan <or>, %261, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<14x1xi16>, vector<1xi16>
      %263 = vector.broadcast %c16388_i16 : i16 to vector<1x10x10xi16>
      %264 = vector.broadcast %c16388_i16 : i16 to vector<1x10xi16>
      %dest_48, %accumulated_value_49 = vector.scan <and>, %263, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<1x10x10xi16>, vector<1x10xi16>
      %265 = arith.ori %c1441311434_i64, %c1441311434_i64 : i64
      %266 = index.ceildivs %c13, %arg1
      %267 = math.round %cst_1 : f32
      %268 = arith.mulf %cst, %cst_4 : f32
      %269 = arith.cmpi uge, %true, %false_3 : i1
      %270 = math.cos %7 : tensor<1x1xf32>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0)>(%c7, %c13, %c13, %c4) -> i16 {
        %279 = arith.mulf %cst, %cst : f32
        %280 = bufferization.to_tensor %alloc : memref<1xi1>
        %expanded_52 = tensor.expand_shape %10 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        bufferization.dealloc_tensor %15 : tensor<1x1xf16>
        %281 = arith.shrsi %false_5, %false_2 : i1
        %282 = arith.shli %false_2, %true : i1
        %283 = vector.broadcast %c32458_i16 : i16 to vector<i16>
        %284 = vector.transfer_write %283, %1[%266] : vector<i16>, tensor<1xi16>
        %285 = math.round %15 : tensor<1x1xf16>
        affine.yield %c32458_i16 : i16
      } else {
        %279 = vector.load %alloc_15[%c0] : memref<1xi16>, vector<6x6xi16>
        memref.tensor_store %11, %alloc_13 : memref<1xf32>
        %280 = arith.negf %cst_4 : f32
        memref.tensor_store %9, %alloc_10 : memref<1xf16>
        %281 = arith.muli %c1441311434_i64, %c510588895_i64 : i64
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - d3) floordiv 32, d1 - d2 - 4, d3)>(%266, %c12, %c7, %c5)
        %283 = math.round %cst_1 : f32
        %284 = arith.cmpi slt, %c510588895_i64, %c167884984_i64 : i64
        affine.yield %c28390_i16 : i16
      }
      %alloc_50 = memref.alloc() : memref<1xf16>
      %272 = vector.broadcast %false_3 : i1 to vector<i1>
      %273 = vector.transfer_write %272, %10[%c0] : vector<i1>, tensor<1xi1>
      %274 = vector.broadcast %cst_0 : f16 to vector<1xf16>
      %275 = vector.extract %274[0] : vector<1xf16>
      %276 = tensor.empty() : tensor<10x10x10xf16>
      %277 = tensor.empty() : tensor<10x10xf16>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277 : tensor<10x10xf16>) outs(%276 : tensor<10x10x10xf16>) {
      ^bb0(%in: f16, %out: f16):
        %279 = math.log10 %2 : tensor<1xf32>
        %280 = math.absi %10 : tensor<1xi1>
        %cast_52 = tensor.cast %16 : tensor<6x6xi1> to tensor<?x?xi1>
        %inserted_53 = tensor.insert %false_3 into %3[%c0, %c0] : tensor<1x1xi1>
        %281 = math.fma %cst, %cst_1, %cst : f32
        %282 = math.absi %10 : tensor<1xi1>
        %283 = math.cttz %5 : tensor<6x6xi1>
        %284 = arith.divsi %c16388_i16, %c28390_i16 : i16
        %285 = index.casts %c0 : index to i32
        %286 = vector.broadcast %cst_0 : f16 to vector<1x1xf16>
        %287 = bufferization.clone %alloc_18 : memref<6x6xf32> to memref<6x6xf32>
        %288 = math.log %reduced : tensor<f32>
        %289 = vector.transpose %274, [0] : vector<1xf16> to vector<1xf16>
        memref.tensor_store %2, %alloc_13 : memref<1xf32>
        %290 = vector.load %alloc_12[%c0] : memref<1xi1>, vector<1xi1>
        %291 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %292 = vector.transfer_write %291, %7[%c6, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf32>, tensor<1x1xf32>
        %alloca_54 = memref.alloca() : memref<1xi32>
        %293 = arith.muli %false, %false_5 : i1
        %294 = tensor.empty() : tensor<1x1xi64>
        %295 = linalg.matmul ins(%18, %4 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%294 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %296 = math.cttz %17 : tensor<6x6xi1>
        %297 = math.rsqrt %cst_4 : f32
        %298 = math.round %out : f16
        %alloc_55 = memref.alloc() : memref<6x6xi16>
        %299 = vector.broadcast %c28390_i16 : i16 to vector<1xi16>
        %c1_i32_56 = arith.constant 1 : i32
        %300 = vector.broadcast %c1_i32_56 : i32 to vector<1xi32>
        %301 = vector.gather %alloc_55[%266, %c3] [%300], %290, %299 : memref<6x6xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %302 = math.atan %19 : tensor<f32>
        %303 = arith.minsi %c510588895_i64, %c510588895_i64 : i64
        %304 = arith.negf %in : f16
        %305 = affine.apply affine_map<(d0, d1) -> (d1 - (d1 - 32) + d1 floordiv 8 - 128)>(%c12, %arg1)
        %306 = arith.maxsi %c948921394_i64, %c510588895_i64 : i64
        %307 = arith.cmpf oeq, %out, %out : f16
        %308 = arith.maxui %c510588895_i64, %c167884984_i64 : i64
        %309 = arith.floordivsi %c16388_i16, %c16388_i16 : i16
        %310 = bufferization.to_memref %4 : memref<1x1xi64>
        linalg.yield %in : f16
      } -> tensor<10x10x10xf16>
      %cst_51 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_51)  : f32 {
      ^bb0(%arg3: f32, %arg4: f32):
        %279 = arith.floordivsi %c1441311434_i64, %c948921394_i64 : i64
        %collapsed = tensor.collapse_shape %16 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
        %280 = math.sqrt %cst_51 : f32
        affine.store %c28390_i16, %alloc_15[%c2] : memref<1xi16>
        %281 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * -2) ceildiv 8 + d0)>(%c10, %c7, %c3)
        %282 = arith.mulf %cst_4, %cst_51 : f32
        %alloc_52 = memref.alloc() : memref<1xi16>
        affine.store %c32458_i16, %alloc_20[%c5] : memref<1xi16>
        %cst_53 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_53 : f32
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_17[%c10, %c2] : memref<6x6xf32>, vector<10xf32>
    affine.vector_store %21, %alloc_19[%c10, %c12] : memref<1x1xf32>, vector<10xf32>
    %22 = tensor.empty() : tensor<1xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%11, %22 : tensor<1xf32>, tensor<1xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = vector.shuffle %21, %21 [1, 3, 6, 8, 9, 11, 14, 16, 17, 19] : vector<10xf32>, vector<10xf32>
    %alloc_21 = memref.alloc() : memref<1xi1>
    %26 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
    %27 = vector.outerproduct %21, %21, %26 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
    %28 = arith.cmpf ogt, %cst_1, %cst_4 : f32
    %false_22 = index.bool.constant false
    %29 = tensor.empty(%c8) : tensor<?x6xi32>
    %30 = arith.negf %cst_0 : f16
    %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %31 = index.floordivs %c3, %c7
    %32 = math.fma %11, %11, %22 : tensor<1xf32>
    %33 = math.ctlz %transposed : tensor<1x1xi64>
    %34 = vector.broadcast %false : i1 to vector<6x6xi1>
    %c1_i32 = arith.constant 1 : i32
    %35 = vector.broadcast %c1_i32 : i32 to vector<6x6xi32>
    %36 = vector.gather %3[%31, %c13] [%35], %34, %34 : tensor<1x1xi1>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
    memref.assume_alignment %alloc_19, 2 : memref<1x1xf32>
    %37 = index.ceildivu %c13, %c9
    %38 = math.log1p %7 : tensor<1x1xf32>
    %39 = math.exp2 %11 : tensor<1xf32>
    %40 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
    affine.for %arg1 = 0 to 77 {
    }
    %41 = arith.floordivsi %false, %false : i1
    %42 = tensor.empty() : tensor<i32>
    %43 = math.fpowi %19, %42 : tensor<f32>, tensor<i32>
    %44 = tensor.empty() : tensor<10x10x10xf16>
    %alloc_23 = memref.alloc() : memref<10xf16>
    %45 = tensor.empty() : tensor<10x10xf16>
    %46 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %alloc_23, %45 : memref<10xf16>, memref<10xf16>, tensor<10x10xf16>) outs(%44 : tensor<10x10x10xf16>) {
    ^bb0(%in: f16, %in_46: f16, %in_47: f16, %out: f16):
      %258 = tensor.empty() : tensor<6x6xi1>
      %259 = linalg.matmul ins(%16, %16 : tensor<6x6xi1>, tensor<6x6xi1>) outs(%258 : tensor<6x6xi1>) -> tensor<6x6xi1>
      %260 = affine.if affine_set<(d0, d1) : (d0 + d0 - (d0 - 128) + 2 + 2 == 0, d1 == 0)>(%c6, %c6) -> i1 {
        %alloc_51 = memref.alloc() : memref<1x1xi16>
        %290 = vector.broadcast %c32458_i16 : i16 to vector<1xi16>
        %291 = vector.broadcast %false_22 : i1 to vector<1xi1>
        %292 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
        %293 = vector.gather %alloc_51[%c9, %c14] [%292], %291, %290 : memref<1x1xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %294 = memref.realloc %alloc_6 : memref<1xi64> to memref<10xi64>
        %295 = math.copysign %cst, %cst_1 : f32
        %296 = arith.minf %cst, %cst_4 : f32
        %297 = vector.broadcast %false_5 : i1 to vector<6xi1>
        %298 = vector.multi_reduction <or>, %36, %297 [1] : vector<6x6xi1> to vector<6xi1>
        %299 = math.cttz %c1_i32 : i32
        %300 = arith.floordivsi %false, %false : i1
        %301 = index.add %c14, %c2
        affine.yield %false_5 : i1
      } else {
        %290 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %291 = vector.outerproduct %21, %21, %290 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
        %292 = vector.broadcast %false_2 : i1 to vector<6xi1>
        %293 = vector.insert %292, %36 [4] : vector<6xi1> into vector<6x6xi1>
        %cst_51 = arith.constant 1.32203264E+9 : f32
        %294 = math.log10 %11 : tensor<1xf32>
        %295 = index.add %31, %c6
        %296 = arith.ceildivsi %c167884984_i64, %c1441311434_i64 : i64
        %297 = vector.multi_reduction <or>, %292, %false_5 [0] : vector<6xi1> to i1
        %298 = vector.transpose %35, [1, 0] : vector<6x6xi32> to vector<6x6xi32>
        affine.yield %false_22 : i1
      }
      %261 = math.cos %7 : tensor<1x1xf32>
      %inserted_48 = tensor.insert %c28390_i16 into %1[%c0] : tensor<1xi16>
      %262 = index.divs %c6, %c0
      %263 = arith.ceildivsi %c1_i32, %c1_i32 : i32
      %264 = arith.divf %in_47, %in : f16
      %265 = arith.floordivsi %c32458_i16, %c32458_i16 : i16
      %266 = arith.divf %cst_1, %cst : f32
      %267 = arith.divsi %c1_i32, %c1_i32 : i32
      %268 = index.maxu %c13, %c4
      %269 = arith.ceildivsi %true, %false : i1
      %270 = arith.divf %cst_4, %cst_4 : f32
      %271 = index.ceildivs %c11, %c14
      %272 = tensor.empty() : tensor<f32>
      %mapped_49 = linalg.map ins(%19 : tensor<f32>) outs(%272 : tensor<f32>)
        (%in_51: f32) {
          %290 = vector.broadcast %c510588895_i64 : i64 to vector<6x6xi64>
          %291 = vector.gather %18[%c0, %271] [%35], %36, %290 : tensor<1x1xi64>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi64> into vector<6x6xi64>
          %cast_52 = tensor.cast %5 : tensor<6x6xi1> to tensor<?x?xi1>
          %292 = math.ctlz %6 : tensor<1x1xi64>
          %293 = math.tanh %out : f16
          %294 = index.castu %262 : index to i32
          %295 = math.ctlz %10 : tensor<1xi1>
          affine.store %in_51, %alloc_13[%c7] : memref<1xf32>
          %296 = math.floor %in_46 : f16
          %297 = math.atan2 %7, %7 : tensor<1x1xf32>
          %298 = affine.load %alloc_6[%c11] : memref<1xi64>
          %c-1944_i16 = arith.constant -1944 : i16
          %299 = math.expm1 %24 : tensor<f32>
          %300 = vector.bitcast %291 : vector<6x6xi64> to vector<6x6xi64>
          %301 = bufferization.clone %alloc : memref<1xi1> to memref<1xi1>
          %302 = vector.broadcast %c948921394_i64 : i64 to vector<1xi64>
          vector.print %300 : vector<6x6xi64>
          bufferization.dealloc_tensor %18 : tensor<1x1xi64>
          %303 = tensor.empty() : tensor<1x1xi32>
          %304 = math.fpowi %expanded, %303 : tensor<1x1xf32>, tensor<1x1xi32>
          %305 = math.log2 %cst_4 : f32
          %306 = memref.atomic_rmw mulf %cst, %alloc_19[%c0, %c0] : (f32, memref<1x1xf32>) -> f32
          %307 = index.maxu %c3, %c12
          %308 = arith.shli %false_22, %false : i1
          %309 = arith.cmpi ne, %false_5, %false_5 : i1
          %310 = math.log10 %0 : tensor<6x6xf16>
          %311 = math.powf %cst_4, %cst_1 : f32
          %312 = vector.insertelement %in_51, %21[%c8 : index] : vector<10xf32>
          %313 = math.cttz %c16388_i16 : i16
          %314 = math.cttz %false_2 : i1
          %315 = arith.remf %in_51, %cst_4 : f32
          %316 = arith.cmpi uge, %false_2, %false_2 : i1
          %317 = math.log %19 : tensor<f32>
          %318 = arith.shli %c167884984_i64, %c948921394_i64 : i64
          %cst_53 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_53 : f32
        }
      %273 = math.rsqrt %expanded : tensor<1x1xf32>
      %274 = arith.mulf %cst_0, %in_46 : f16
      %275 = index.divs %c9, %c9
      %276 = arith.cmpi uge, %false_3, %false : i1
      memref.tensor_store %4, %alloc_8 : memref<1x1xi64>
      %277 = math.ctlz %transposed : tensor<1x1xi64>
      %278 = scf.index_switch %c0 -> memref<1xf16> 
      case 1 {
        %290 = bufferization.clone %alloc_13 : memref<1xf32> to memref<1xf32>
        %291 = math.log %23 : tensor<f32>
        %292 = math.absf %15 : tensor<1x1xf16>
        memref.assume_alignment %alloc_12, 4 : memref<1xi1>
        %293 = arith.muli %c16388_i16, %c32458_i16 : i16
        %294 = arith.divsi %c1441311434_i64, %c1441311434_i64 : i64
        %295 = math.fpowi %23, %42 : tensor<f32>, tensor<i32>
        %296 = arith.shli %false_2, %false_2 : i1
        %297 = vector.create_mask %275, %c12 : vector<6x6xi1>
        %298 = math.absi %c948921394_i64 : i64
        %299 = vector.bitcast %297 : vector<6x6xi1> to vector<6x6xi1>
        %300 = affine.load %alloc_15[%c13] : memref<1xi16>
        %301 = arith.minf %cst_4, %cst_4 : f32
        %302 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * -2) ceildiv 8 + d0)>(%c12, %c10, %c2)
        %303 = math.expm1 %9 : tensor<1xf16>
        %304 = index.divs %c2, %c3
        scf.yield %40 : memref<1xf16>
      }
      case 2 {
        %290 = arith.mulf %in, %cst_0 : f16
        %from_elements_51 = tensor.from_elements %c948921394_i64 : tensor<1x1xi64>
        %291 = arith.maxsi %false, %false_2 : i1
        %292 = math.ctlz %13 : tensor<1x1xi16>
        %293 = math.atan2 %22, %22 : tensor<1xf32>
        memref.assume_alignment %alloc_14, 4 : memref<6x6xi32>
        %294 = arith.maxsi %c32458_i16, %c32458_i16 : i16
        %295 = math.expm1 %cst_0 : f16
        %296 = math.log1p %expanded : tensor<1x1xf32>
        %false_52 = arith.constant false
        %297 = vector.flat_transpose %21 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %298 = math.copysign %11, %2 : tensor<1xf32>
        %inserted_53 = tensor.insert %c167884984_i64 into %transposed[%c0, %c0] : tensor<1x1xi64>
        %299 = arith.maxsi %c1441311434_i64, %c167884984_i64 : i64
        %300 = arith.ceildivsi %c948921394_i64, %c167884984_i64 : i64
        %301 = math.exp %2 : tensor<1xf32>
        scf.yield %40 : memref<1xf16>
      }
      case 3 {
        %290 = arith.minf %in_46, %cst_0 : f16
        %c675075787_i32 = arith.constant 675075787 : i32
        %291 = vector.broadcast %false_5 : i1 to vector<6xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %36, %291 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
        %292 = vector.broadcast %c16388_i16 : i16 to vector<6x6xi16>
        %293 = vector.gather %1[%c5] [%35], %36, %292 : tensor<1xi16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi16> into vector<6x6xi16>
        %294 = tensor.empty() : tensor<6x6xi1>
        %295 = linalg.matmul ins(%8, %16 : tensor<6x6xi1>, tensor<6x6xi1>) outs(%294 : tensor<6x6xi1>) -> tensor<6x6xi1>
        %alloca_53 = memref.alloca() : memref<1xf32>
        %296 = math.atan2 %9, %9 : tensor<1xf16>
        %297 = index.floordivs %c14, %275
        %298 = vector.broadcast %275 : index to vector<10xindex>
        %299 = vector.broadcast %false_2 : i1 to vector<10xi1>
        %300 = vector.broadcast %c948921394_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_11[%c4, %c2] [%298], %299, %300 : memref<6x6xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %301 = affine.load %alloc_8[%c3, %c13] : memref<1x1xi64>
        %alloc_54 = memref.alloc() : memref<1xf32>
        %false_55 = index.bool.constant false
        %302 = vector.broadcast %c1_i32 : i32 to vector<1xi32>
        %303 = vector.broadcast %false_55 : i1 to vector<1xi1>
        %304 = vector.maskedload %alloc_9[%c0], %303, %302 : memref<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %305 = math.log2 %2 : tensor<1xf32>
        %306 = arith.minf %cst_4, %cst : f32
        %307 = arith.maxsi %c510588895_i64, %c1441311434_i64 : i64
        scf.yield %40 : memref<1xf16>
      }
      default {
        %290 = arith.ori %c1441311434_i64, %c510588895_i64 : i64
        %291 = arith.negf %in : f16
        %292 = arith.shrui %c28390_i16, %c16388_i16 : i16
        %293 = memref.load %alloc[%c0] : memref<1xi1>
        %from_elements_51 = tensor.from_elements %c948921394_i64 : tensor<1xi64>
        %cast_52 = tensor.cast %6 : tensor<1x1xi64> to tensor<?x?xi64>
        %294 = arith.minf %in_46, %in_47 : f16
        %295 = arith.andi %false_22, %false_3 : i1
        %296 = math.absf %in_47 : f16
        %297 = vector.broadcast %false_5 : i1 to vector<6xi1>
        %dest_53, %accumulated_value_54 = vector.scan <maxui>, %34, %297 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
        %298 = math.atan2 %out, %in_47 : f16
        %299 = math.exp %in_46 : f16
        %300 = math.round %cst_4 : f32
        %301 = arith.addf %cst_0, %cst_0 : f16
        %302 = math.ctlz %c1441311434_i64 : i64
        %303 = math.cttz %18 : tensor<1x1xi64>
        scf.yield %alloc_10 : memref<1xf16>
      }
      %279 = math.fma %cst_0, %in_46, %cst_0 : f16
      %280 = tensor.empty() : tensor<10x10x10xf16>
      %alloc_50 = memref.alloc() : memref<10x10xf16>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50 : memref<10x10xf16>) outs(%280 : tensor<10x10x10xf16>) {
      ^bb0(%in_51: f16, %out_52: f16):
        %290 = affine.max affine_map<(d0, d1, d2) -> (-(d2 mod 8), d0 * 5 - 8, d1 mod 64)>(%268, %c13, %c9)
        %291 = math.powf %0, %0 : tensor<6x6xf16>
        %292 = math.powf %272, %19 : tensor<f32>
        %293 = math.fpowi %272, %42 : tensor<f32>, tensor<i32>
        %294 = affine.load %alloc_13[%c12] : memref<1xf32>
        %295 = arith.shli %c32458_i16, %c16388_i16 : i16
        %296 = math.cttz %c1_i32 : i32
        %297 = math.exp %23 : tensor<f32>
        %298 = math.log %23 : tensor<f32>
        %299 = arith.andi %c1_i32, %c1_i32 : i32
        memref.copy %40, %alloc_10 : memref<1xf16> to memref<1xf16>
        %300 = vector.broadcast %false_3 : i1 to vector<6xi1>
        %dest_53, %accumulated_value_54 = vector.scan <and>, %36, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
        %301 = vector.broadcast %c948921394_i64 : i64 to vector<1xi64>
        %302 = index.add %c1, %c3
        %303 = bufferization.to_memref %14 : memref<1xi32>
        %304 = vector.flat_transpose %301 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %305 = arith.floordivsi %c948921394_i64, %c948921394_i64 : i64
        %306 = vector.transpose %301, [0] : vector<1xi64> to vector<1xi64>
        %307 = arith.remf %cst_0, %in_51 : f16
        %308 = vector.broadcast %268 : index to vector<10xindex>
        %309 = vector.broadcast %false_3 : i1 to vector<10xi1>
        vector.scatter %alloc_19[%c0, %c0] [%308], %309, %21 : memref<1x1xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %310 = arith.shrsi %false_3, %false_2 : i1
        %311 = vector.broadcast %c1441311434_i64 : i64 to vector<1x1xi64>
        %312 = vector.outerproduct %304, %301, %311 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        %313 = vector.broadcast %c9 : index to vector<6xindex>
        %314 = vector.broadcast %true : i1 to vector<6xi1>
        %315 = vector.broadcast %c32458_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_15[%c0] [%313], %314, %315 : memref<1xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %316 = math.round %9 : tensor<1xf16>
        affine.store %c1441311434_i64, %alloc_8[%c7, %c0] : memref<1x1xi64>
        %317 = math.fpowi %cst_1, %c1_i32 : f32, i32
        %318 = math.log %24 : tensor<f32>
        %319 = arith.minui %false_2, %false_5 : i1
        %320 = arith.muli %c1441311434_i64, %c948921394_i64 : i64
        %321 = math.exp2 %22 : tensor<1xf32>
        %322 = arith.cmpi sge, %c28390_i16, %c32458_i16 : i16
        %323 = vector.broadcast %false_22 : i1 to vector<6xi1>
        %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %34, %323 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
        linalg.yield %cst_0 : f16
      } -> tensor<10x10x10xf16>
      %282 = memref.atomic_rmw assign %cst, %alloc_13[%c0] : (f32, memref<1xf32>) -> f32
      %283 = math.tan %11 : tensor<1xf32>
      %284 = scf.while (%arg1 = %false_22) : (i1) -> i1 {
        %290 = math.log %in_47 : f16
        %291 = index.sub %c13, %c13
        affine.store %cst, %alloc_13[%c0] : memref<1xf32>
        %292 = arith.minsi %c948921394_i64, %c510588895_i64 : i64
        %expanded_51 = tensor.expand_shape %10 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        %293 = tensor.empty() : tensor<6x6xf16>
        %294 = linalg.matmul ins(%0, %0 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%293 : tensor<6x6xf16>) -> tensor<6x6xf16>
        %295 = affine.max affine_map<(d0) -> (d0 - (d0 mod 128 - d0), (d0 mod 128 - d0) * 8, d0 - (d0 mod 128 - d0), d0 mod 128 + 112)>(%291)
        %296 = index.floordivs %268, %c0
        scf.condition(%false_3) %false_2 : i1
      } do {
      ^bb0(%arg1: i1):
        %290 = math.expm1 %11 : tensor<1xf32>
        %291 = arith.negf %cst_0 : f16
        %292 = arith.andi %c167884984_i64, %c948921394_i64 : i64
        %293 = math.rsqrt %in_46 : f16
        %294 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %295 = vector.outerproduct %21, %21, %294 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
        %inserted_51 = tensor.insert %cst into %7[%c0, %c0] : tensor<1x1xf32>
        %cst_52 = arith.constant 0x4E43E260 : f32
        %296 = arith.addf %in_47, %in_46 : f16
        %297 = math.cttz %3 : tensor<1x1xi1>
        %298 = math.copysign %reduced, %19 : tensor<f32>
        %299 = math.round %19 : tensor<f32>
        %300 = arith.mulf %cst_1, %cst : f32
        %301 = arith.maxsi %c510588895_i64, %c1441311434_i64 : i64
        %302 = math.ctpop %c32458_i16 : i16
        %303 = vector.insert %cst, %21 [5] : f32 into vector<10xf32>
        %304 = math.exp %9 : tensor<1xf16>
        scf.yield %arg1 : i1
      }
      %285 = memref.load %alloc_14[%c2, %c3] : memref<6x6xi32>
      %286 = math.log1p %2 : tensor<1xf32>
      %287 = vector.multi_reduction <maxui>, %36, %false_5 [0, 1] : vector<6x6xi1> to i1
      %288 = math.log2 %23 : tensor<f32>
      %289 = math.exp %cst_1 : f32
      linalg.yield %in_46 : f16
    } -> tensor<10x10x10xf16>
    %47 = vector.broadcast %c1441311434_i64 : i64 to vector<1xi64>
    %48 = arith.mulf %cst, %cst_1 : f32
    %alloc_24 = memref.alloc() : memref<1x1xi1>
    memref.tensor_store %3, %alloc_24 : memref<1x1xi1>
    %49 = math.ctpop %c1_i32 : i32
    %50 = math.log1p %7 : tensor<1x1xf32>
    %from_elements = tensor.from_elements %c16388_i16 : tensor<1xi16>
    %51 = math.cttz %true : i1
    %52 = math.log10 %9 : tensor<1xf16>
    %53 = arith.shrsi %c1_i32, %c1_i32 : i32
    %54 = arith.addf %cst, %cst_4 : f32
    %55 = math.ctlz %false_5 : i1
    %true_25 = index.bool.constant true
    %56 = vector.load %alloc_14[%c1, %c3] : memref<6x6xi32>, vector<1xi32>
    %57 = arith.minf %cst, %cst_4 : f32
    %58 = arith.cmpi sge, %c1_i32, %c1_i32 : i32
    %59 = arith.shli %false_3, %false_3 : i1
    %cst_26 = arith.constant 0x4E3838A4 : f32
    %60 = arith.minf %cst_1, %cst_1 : f32
    %61 = math.tan %0 : tensor<6x6xf16>
    %rank = tensor.rank %22 : tensor<1xf32>
    %62 = vector.shuffle %56, %56 [0] : vector<1xi32>, vector<1xi32>
    %63 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %35, %35, %35 : vector<6x6xi32>, vector<6x6xi32> into vector<6x6xi32>
    %64 = arith.shli %c28390_i16, %c16388_i16 : i16
    %65 = affine.if affine_set<(d0, d1, d2) : ((d0 ceildiv 4) ceildiv 128 >= 0)>(%c7, %c11, %c10) -> i32 {
      %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
      %258 = math.tan %9 : tensor<1xf16>
      %259 = math.absf %22 : tensor<1xf32>
      %260 = arith.floordivsi %c167884984_i64, %c1441311434_i64 : i64
      %261 = vector.broadcast %c1441311434_i64 : i64 to vector<1x1xi64>
      %262 = vector.outerproduct %47, %47, %261 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
      %263 = vector.flat_transpose %47 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %264 = arith.shli %false_5, %true : i1
      %265 = arith.floordivsi %c32458_i16, %c28390_i16 : i16
      affine.yield %c1_i32 : i32
    } else {
      %258 = math.sqrt %15 : tensor<1x1xf16>
      %259 = math.round %15 : tensor<1x1xf16>
      %260 = math.log2 %2 : tensor<1xf32>
      memref.assume_alignment %40, 4 : memref<1xf16>
      %261 = bufferization.to_tensor %40 : memref<1xf16>
      %262 = arith.addi %c510588895_i64, %c1441311434_i64 : i64
      %263 = tensor.empty() : tensor<1x1xf32>
      %mapped_46 = linalg.map ins(%7, %7 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%263 : tensor<1x1xf32>)
        (%in: f32, %in_47: f32) {
          %265 = arith.shli %false_22, %false : i1
          %extracted = tensor.extract %2[%c0] : tensor<1xf32>
          %266 = tensor.empty() : tensor<1x1xf32>
          %267 = linalg.matmul ins(%expanded, %expanded : tensor<1x1xf32>, tensor<1x1xf32>) outs(%266 : tensor<1x1xf32>) -> tensor<1x1xf32>
          %268 = math.atan2 %9, %261 : tensor<1xf16>
          %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %56, %56, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
          %270 = math.copysign %22, %11 : tensor<1xf32>
          %271 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
          %272 = vector.outerproduct %56, %56, %271 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
          %273 = arith.addi %c1441311434_i64, %c167884984_i64 : i64
          %274 = arith.negf %extracted : f32
          %275 = math.round %9 : tensor<1xf16>
          %276 = math.absf %22 : tensor<1xf32>
          %277 = vector.transpose %47, [0] : vector<1xi64> to vector<1xi64>
          %278 = math.log %266 : tensor<1x1xf32>
          %279 = index.casts %c11 : index to i32
          %280 = arith.cmpf ueq, %cst_1, %in_47 : f32
          %281 = math.log2 %19 : tensor<f32>
          %282 = vector.load %alloc_12[%c0] : memref<1xi1>, vector<1xi1>
          %283 = math.tan %2 : tensor<1xf32>
          %284 = arith.muli %c167884984_i64, %c510588895_i64 : i64
          %285 = arith.mulf %cst, %cst_4 : f32
          %286 = arith.xori %true, %true : i1
          %287 = math.sqrt %7 : tensor<1x1xf32>
          %288 = math.exp2 %266 : tensor<1x1xf32>
          vector.print %56 : vector<1xi32>
          %289 = math.log1p %2 : tensor<1xf32>
          %290 = math.round %266 : tensor<1x1xf32>
          %291 = arith.ori %false, %false_22 : i1
          %292 = vector.broadcast %false : i1 to vector<6xi1>
          %dest_48, %accumulated_value_49 = vector.scan <add>, %34, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
          %293 = vector.create_mask %c8, %31 : vector<1x1xi1>
          %294 = affine.apply affine_map<(d0) -> (d0 ceildiv 64)>(%c14)
          %295 = bufferization.to_tensor %alloc_9 : memref<1xi32>
          %true_50 = arith.constant true
          %cst_51 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_51 : f32
        }
      %264 = arith.remsi %false, %true_25 : i1
      affine.yield %c1_i32 : i32
    }
    %66 = math.ctlz %14 : tensor<1xi32>
    affine.for %arg1 = 0 to 66 {
    }
    %67 = math.rsqrt %cst_1 : f32
    %68 = scf.while (%arg1 = %47) : (vector<1xi64>) -> vector<1xi64> {
      %258 = math.atan2 %9, %9 : tensor<1xf16>
      %cast_46 = tensor.cast %9 : tensor<1xf16> to tensor<?xf16>
      scf.if %false {
        %263 = vector.load %alloc_13[%c0] : memref<1xf32>, vector<1x1xf32>
        %264 = bufferization.clone %alloc_13 : memref<1xf32> to memref<1xf32>
        %265 = arith.divf %cst_0, %cst_0 : f16
        %cast_47 = tensor.cast %13 : tensor<1x1xi16> to tensor<?x?xi16>
        %266 = arith.remf %cst_4, %cst : f32
        %267 = vector.broadcast %false_3 : i1 to vector<1xi1>
        %268 = math.rsqrt %19 : tensor<f32>
        %269 = tensor.empty() : tensor<1x1xf32>
        %270 = linalg.matmul ins(%expanded, %7 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%269 : tensor<1x1xf32>) -> tensor<1x1xf32>
      }
      %259 = scf.while (%arg2 = %cst_4) : (f32) -> f32 {
        %263 = math.copysign %2, %2 : tensor<1xf32>
        %264 = arith.floordivsi %c16388_i16, %c32458_i16 : i16
        %265 = arith.maxsi %c1441311434_i64, %c948921394_i64 : i64
        %266 = vector.load %alloc_13[%c0] : memref<1xf32>, vector<6x6xf32>
        %267 = math.absf %0 : tensor<6x6xf16>
        %268 = memref.load %alloc_16[%c0, %c0] : memref<1x1xf16>
        %269 = arith.shli %c32458_i16, %c16388_i16 : i16
        %270 = tensor.empty() : tensor<6x6xi32>
        %271 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
        %272 = vector.broadcast %false_22 : i1 to vector<1x1xi1>
        %273 = vector.gather %270[%c11, %37] [%271], %272, %271 : tensor<6x6xi32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi32> into vector<1x1xi32>
        scf.condition(%true) %arg2 : f32
      } do {
      ^bb0(%arg2: f32):
        %263 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * -2) ceildiv 8 + d0)>(%c6, %c3, %c4)
        %264 = vector.load %alloc_8[%c0, %c0] : memref<1x1xi64>, vector<1xi64>
        %265 = math.powf %22, %11 : tensor<1xf32>
        %266 = vector.broadcast %31 : index to vector<6xindex>
        %267 = vector.broadcast %false : i1 to vector<6xi1>
        %268 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        vector.scatter %alloc_9[%c0] [%266], %267, %268 : memref<1xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %269 = index.mul %c4, %c12
        %270 = arith.divf %cst_0, %cst_0 : f16
        %271 = arith.negf %arg2 : f32
        %272 = math.log10 %cst : f32
        %273 = arith.negf %cst : f32
        %274 = math.exp2 %cst_1 : f32
        %275 = arith.divui %c1_i32, %c1_i32 : i32
        %276 = math.atan %7 : tensor<1x1xf32>
        %277 = math.roundeven %15 : tensor<1x1xf16>
        %278 = arith.divf %cst, %arg2 : f32
        %279 = affine.apply affine_map<(d0, d1, d2) -> ((d2 mod 32) ceildiv 128)>(%c6, %c15, %c10)
        %alloca_47 = memref.alloca() : memref<1x1xf32>
        scf.yield %cst_1 : f32
      }
      affine.store %c28390_i16, %alloc_20[%c14] : memref<1xi16>
      %260 = arith.minsi %c510588895_i64, %c1441311434_i64 : i64
      %261 = arith.floordivsi %false, %true_25 : i1
      %262 = math.roundeven %19 : tensor<f32>
      scf.condition(%false_2) %47 : vector<1xi64>
    } do {
    ^bb0(%arg1: vector<1xi64>):
      %258 = vector.matrix_multiply %21, %21 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
      %259 = math.ctpop %12 : tensor<6x6xi64>
      %260 = vector.transpose %21, [0] : vector<10xf32> to vector<10xf32>
      %261 = arith.cmpf une, %cst_4, %cst : f32
      %262 = math.round %expanded : tensor<1x1xf32>
      %263 = memref.realloc %alloc_6 : memref<1xi64> to memref<6xi64>
      %generated_46 = tensor.generate %37 {
      ^bb0(%arg2: index, %arg3: index):
        %270 = arith.maxui %true_25, %false : i1
        %splat_49 = tensor.splat %c167884984_i64 : tensor<1x1xi64>
        %271 = arith.andi %false_3, %false_22 : i1
        %272 = index.casts %c7 : index to i32
        tensor.yield %cst_1 : f32
      } : tensor<?x6xf32>
      %alloc_47 = memref.alloc() : memref<1xi16>
      %264 = vector.extract_strided_slice %35 {offsets = [1], sizes = [4], strides = [1]} : vector<6x6xi32> to vector<4x6xi32>
      %265 = arith.remf %cst_4, %cst : f32
      %cast_48 = tensor.cast %9 : tensor<1xf16> to tensor<?xf16>
      %266 = index.maxu %c15, %c11
      bufferization.dealloc_tensor %5 : tensor<6x6xi1>
      %267 = math.exp %2 : tensor<1xf32>
      %268 = math.log2 %expanded : tensor<1x1xf32>
      %269 = vector.broadcast %c28390_i16 : i16 to vector<1xi16>
      scf.yield %47 : vector<1xi64>
    }
    %69 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %34, %36, %36 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
    %70 = vector.broadcast %cst_0 : f16 to vector<6x6xf16>
    %71 = vector.gather %9[%c7] [%35], %34, %70 : tensor<1xf16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xf16> into vector<6x6xf16>
    %72 = bufferization.to_memref %5 : memref<6x6xi1>
    %73 = math.floor %cst_4 : f32
    %74 = tensor.empty() : tensor<6x6xf16>
    %mapped = linalg.map ins(%0, %0 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%74 : tensor<6x6xf16>)
      (%in: f16, %in_46: f16) {
        %258 = math.log2 %0 : tensor<6x6xf16>
        %259 = index.add %rank, %c7
        %260 = bufferization.clone %72 : memref<6x6xi1> to memref<6x6xi1>
        %261 = math.tan %15 : tensor<1x1xf16>
        %cast_47 = tensor.cast %12 : tensor<6x6xi64> to tensor<?x?xi64>
        %262 = math.powf %15, %15 : tensor<1x1xf16>
        %263 = scf.while (%arg1 = %47) : (vector<1xi64>) -> vector<1xi64> {
          %290 = arith.negf %cst : f32
          %291 = arith.negf %cst_0 : f16
          %292 = bufferization.clone %72 : memref<6x6xi1> to memref<6x6xi1>
          %293 = math.exp %9 : tensor<1xf16>
          %294 = arith.cmpi sgt, %false_2, %false_5 : i1
          %295 = vector.broadcast %c167884984_i64 : i64 to vector<1x1xi64>
          %296 = math.atan2 %74, %0 : tensor<6x6xf16>
          %297 = arith.floordivsi %c28390_i16, %c28390_i16 : i16
          scf.condition(%true_25) %47 : vector<1xi64>
        } do {
        ^bb0(%arg1: vector<1xi64>):
          %alloc_52 = memref.alloc() : memref<1x1xi1>
          memref.tensor_store %3, %alloc_52 : memref<1x1xi1>
          %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %70, %71, %70 : vector<6x6xf16>, vector<6x6xf16> into vector<6x6xf16>
          %291 = vector.broadcast %cst : f32 to vector<10x10xf32>
          %292 = vector.outerproduct %21, %21, %291 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
          %293 = arith.maxsi %false_5, %true : i1
          %294 = bufferization.to_tensor %alloc_13 : memref<1xf32>
          %295 = math.log %11 : tensor<1xf32>
          %296 = math.ipowi %c1_i32, %c1_i32 : i32
          %297 = math.round %24 : tensor<f32>
          %298 = math.log2 %cst_0 : f16
          %299 = arith.divsi %c28390_i16, %c32458_i16 : i16
          %300 = vector.transpose %35, [0, 1] : vector<6x6xi32> to vector<6x6xi32>
          %301 = arith.addf %in, %in_46 : f16
          %302 = vector.broadcast %c510588895_i64 : i64 to vector<6xi64>
          %303 = vector.transfer_write %302, %12[%31, %37] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi64>, tensor<6x6xi64>
          %304 = math.roundeven %22 : tensor<1xf32>
          %305 = memref.realloc %alloc_9 : memref<1xi32> to memref<6xi32>
          %306 = tensor.empty() : tensor<1x1xi64>
          %307 = linalg.matmul ins(%6, %4 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%306 : tensor<1x1xi64>) -> tensor<1x1xi64>
          scf.yield %47 : vector<1xi64>
        }
        %264 = arith.cmpi ule, %c28390_i16, %c32458_i16 : i16
        %265 = arith.shrui %false_5, %false_3 : i1
        %266 = affine.load %alloc_17[%c3, %c0] : memref<6x6xf32>
        %267 = math.log10 %7 : tensor<1x1xf32>
        %268 = index.divs %c12, %c8
        %269 = index.ceildivs %c1, %c2
        %270 = math.atan %11 : tensor<1xf32>
        %271 = bufferization.clone %alloc_7 : memref<1xi16> to memref<1xi16>
        %alloca_48 = memref.alloca() : memref<1xi64>
        %272 = arith.andi %true_25, %false_3 : i1
        %273 = scf.while (%arg1 = %c510588895_i64) : (i64) -> i64 {
          %290 = math.floor %2 : tensor<1xf32>
          %291 = arith.divf %cst_1, %cst_4 : f32
          %292 = vector.broadcast %c13 : index to vector<1xindex>
          %293 = vector.broadcast %true_25 : i1 to vector<1xi1>
          %294 = vector.broadcast %c32458_i16 : i16 to vector<1xi16>
          vector.scatter %alloc_7[%c0] [%292], %293, %294 : memref<1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
          %295 = vector.create_mask %c6 : vector<1xi1>
          %296 = index.ceildivu %c14, %c12
          %297 = math.tan %7 : tensor<1x1xf32>
          %298 = index.casts %arg1 : i64 to index
          %299 = arith.divf %cst, %cst_4 : f32
          scf.condition(%false_22) %c1441311434_i64 : i64
        } do {
        ^bb0(%arg1: i64):
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %47, %47, %c510588895_i64 : vector<1xi64>, vector<1xi64> into i64
          %291 = memref.realloc %alloc_13 : memref<1xf32> to memref<1xf32>
          %292 = math.roundeven %2 : tensor<1xf32>
          %293 = arith.mulf %cst, %266 : f32
          %294 = math.round %0 : tensor<6x6xf16>
          %295 = index.ceildivs %c4, %c6
          %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
          %296 = arith.negf %cst_4 : f32
          %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %56, %56, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
          %298 = index.ceildivu %c6, %c4
          %299 = math.log %15 : tensor<1x1xf16>
          %300 = arith.andi %arg1, %c1441311434_i64 : i64
          %301 = arith.shrsi %c16388_i16, %c32458_i16 : i16
          %302 = math.round %15 : tensor<1x1xf16>
          %303 = arith.remf %cst_1, %cst_4 : f32
          %304 = arith.negf %cst : f32
          scf.yield %c948921394_i64 : i64
        }
        %274 = arith.cmpi ule, %c28390_i16, %c32458_i16 : i16
        %275 = arith.floordivsi %c32458_i16, %c28390_i16 : i16
        vector.print %35 : vector<6x6xi32>
        %276 = math.exp2 %15 : tensor<1x1xf16>
        %277 = affine.load %alloc_9[%c12] : memref<1xi32>
        %278 = arith.divsi %c28390_i16, %c28390_i16 : i16
        %279 = vector.broadcast %cst_0 : f16 to vector<1xf16>
        vector.transfer_write %279, %alloc_16[%c5, %259] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf16>, memref<1x1xf16>
        %280 = scf.while (%arg1 = %c28390_i16) : (i16) -> i16 {
          %290 = math.expm1 %11 : tensor<1xf32>
          %291 = arith.addi %true, %false_22 : i1
          %292 = memref.realloc %alloc_13 : memref<1xf32> to memref<6xf32>
          %293 = vector.broadcast %false_5 : i1 to vector<1xi1>
          %294 = vector.gather %8[%31, %269] [%56], %293, %293 : tensor<6x6xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %295 = math.atan2 %11, %11 : tensor<1xf32>
          %296 = bufferization.clone %alloc_12 : memref<1xi1> to memref<1xi1>
          %297 = arith.minf %in_46, %cst_0 : f16
          %298 = math.round %2 : tensor<1xf32>
          scf.condition(%false) %c28390_i16 : i16
        } do {
        ^bb0(%arg1: i16):
          %290 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
          %291 = vector.outerproduct %56, %56, %290 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
          %292 = math.tan %in : f16
          %293 = arith.ori %c948921394_i64, %c510588895_i64 : i64
          %cast_52 = tensor.cast %24 : tensor<f32> to tensor<f32>
          %294 = math.exp %reduced : tensor<f32>
          %295 = math.fma %cst_4, %cst_4, %266 : f32
          %296 = arith.maxsi %false_5, %false_22 : i1
          %297 = vector.broadcast %cst : f32 to vector<6x6xf32>
          %298 = arith.shli %c28390_i16, %arg1 : i16
          %true_53 = index.bool.constant true
          %299 = vector.broadcast %true_25 : i1 to vector<6x6xi1>
          %300 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
          %301 = math.absf %15 : tensor<1x1xf16>
          %302 = math.log %19 : tensor<f32>
          %true_54 = index.bool.constant true
          %303 = math.cos %cst : f32
          scf.yield %c32458_i16 : i16
        }
        %281 = index.maxu %c12, %c6
        %282 = affine.max affine_map<(d0, d1, d2) -> (((d0 - 32) ceildiv 32) * 32, (d0 - 32) ceildiv 8)>(%c6, %c15, %rank)
        %283 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
        %284 = vector.outerproduct %56, %56, %283 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
        %285 = vector.broadcast %cst : f32 to vector<1x1xf32>
        %286 = vector.broadcast %false : i1 to vector<1x1xi1>
        %287 = vector.broadcast %277 : i32 to vector<1x1xi32>
        %288 = vector.gather %alloc_19[%c9, %c10] [%287], %286, %285 : memref<1x1xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
        memref.copy %alloc_12, %alloc : memref<1xi1> to memref<1xi1>
        %cst_49 = arith.constant 1.000000e+00 : f16
        %cst_50 = arith.constant 0.000000e+00 : f16
        %289 = vector.transfer_read %alloc_16[%259, %c2], %cst_50 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<1x1xf16>, vector<1xf16>
        %cst_51 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_51 : f16
      }
    memref.tensor_store %10, %alloc_12 : memref<1xi1>
    %75 = arith.cmpf ueq, %cst, %cst : f32
    %76 = arith.maxsi %false_5, %true_25 : i1
    %77 = arith.divui %false_22, %false_2 : i1
    %78 = affine.for %arg1 = 0 to 59 iter_args(%arg2 = %cst) -> (f32) {
      affine.yield %cst_1 : f32
    }
    %79 = arith.minui %c16388_i16, %c32458_i16 : i16
    %80 = math.log10 %9 : tensor<1xf16>
    %81 = math.fpowi %11, %14 : tensor<1xf32>, tensor<1xi32>
    %82 = bufferization.clone %alloc_8 : memref<1x1xi64> to memref<1x1xi64>
    %83 = vector.load %alloc_14[%c1, %c2] : memref<6x6xi32>, vector<1xi32>
    %84 = tensor.empty() : tensor<6x6xi64>
    %85 = linalg.matmul ins(%12, %12 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%84 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %86 = vector.transpose %35, [1, 0] : vector<6x6xi32> to vector<6x6xi32>
    %87 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %21, %21, %cst : vector<10xf32>, vector<10xf32> into f32
    %88 = math.absi %3 : tensor<1x1xi1>
    %89 = math.round %2 : tensor<1xf32>
    %90 = math.ctpop %16 : tensor<6x6xi1>
    memref.tensor_store %5, %72 : memref<6x6xi1>
    memref.tensor_store %10, %alloc : memref<1xi1>
    %91 = affine.load %alloc_19[%c9, %c3] : memref<1x1xf32>
    %92 = arith.mulf %cst_1, %cst : f32
    %93 = index.castu %c3 : index to i32
    %94 = vector.extract_strided_slice %70 {offsets = [0], sizes = [2], strides = [1]} : vector<6x6xf16> to vector<2x6xf16>
    %inserted = tensor.insert %cst_0 into %15[%c0, %c0] : tensor<1x1xf16>
    %95 = math.log %15 : tensor<1x1xf16>
    %96 = index.maxu %c15, %c14
    %97 = math.atan %0 : tensor<6x6xf16>
    %98 = math.log %15 : tensor<1x1xf16>
    %99 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
    %100 = vector.broadcast %false_3 : i1 to vector<1x1xi1>
    %101 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
    %102 = vector.gather %22[%c2] [%101], %100, %99 : tensor<1xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
    %103 = arith.muli %c167884984_i64, %c948921394_i64 : i64
    %104 = math.absi %false : i1
    %105 = math.rsqrt %11 : tensor<1xf32>
    %106 = vector.create_mask %31, %rank : vector<1x1xi1>
    %107 = math.absf %11 : tensor<1xf32>
    %108 = vector.broadcast %true_25 : i1 to vector<1xi1>
    %109 = vector.insert %108, %100 [0] : vector<1xi1> into vector<1x1xi1>
    %110 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %106, %106, %100 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
    %111 = arith.minsi %false_2, %false_5 : i1
    %112 = tensor.empty() : tensor<6x6xf16>
    %113 = linalg.matmul ins(%74, %74 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%112 : tensor<6x6xf16>) -> tensor<6x6xf16>
    %114 = math.roundeven %112 : tensor<6x6xf16>
    %115 = math.absf %reduced : tensor<f32>
    %116 = math.roundeven %7 : tensor<1x1xf32>
    %117 = arith.muli %false_2, %true : i1
    %118 = bufferization.clone %alloc_9 : memref<1xi32> to memref<1xi32>
    %119 = tensor.empty() : tensor<6x6xi64>
    %120 = linalg.matmul ins(%12, %12 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%119 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %false_27 = arith.constant false
    %121 = arith.remf %cst_0, %cst_0 : f16
    %122 = arith.shrui %false, %true_25 : i1
    %123 = math.round %15 : tensor<1x1xf16>
    vector.print %21 : vector<10xf32>
    %dest, %accumulated_value = vector.scan <maxsi>, %106, %108 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xi1>, vector<1xi1>
    %124 = arith.muli %true_25, %true_25 : i1
    %125 = math.rsqrt %22 : tensor<1xf32>
    %126 = arith.maxsi %c32458_i16, %c16388_i16 : i16
    %127 = math.log10 %11 : tensor<1xf32>
    %128 = vector.transpose %94, [1, 0] : vector<2x6xf16> to vector<6x2xf16>
    %129 = affine.if affine_set<(d0, d1) : ((d1 * 2) floordiv 32 == 0, d0 + 2 >= 0, d1 >= 0, d0 * -8 >= 0)>(%c14, %c6) -> memref<6x6xi16> {
      %258 = tensor.empty() : tensor<6x6xi64>
      %259 = linalg.matmul ins(%84, %12 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%258 : tensor<6x6xi64>) -> tensor<6x6xi64>
      %alloc_46 = memref.alloc() : memref<1x1xf32>
      %260 = arith.minf %cst_0, %cst_0 : f16
      %261 = vector.broadcast %c948921394_i64 : i64 to vector<1x1xi64>
      %262 = vector.outerproduct %47, %47, %261 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
      %263 = math.tan %7 : tensor<1x1xf32>
      %264 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 2) mod 4)>(%c13, %c1)
      %265 = arith.negf %cst : f32
      %266 = arith.minsi %false_5, %false_22 : i1
      %alloc_47 = memref.alloc() : memref<6x6xi16>
      affine.yield %alloc_47 : memref<6x6xi16>
    } else {
      %258 = arith.shrsi %c16388_i16, %c32458_i16 : i16
      %259 = math.log %2 : tensor<1xf32>
      %260 = math.powf %expanded, %expanded : tensor<1x1xf32>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %94, %94, %71 : vector<2x6xf16>, vector<2x6xf16> into vector<6x6xf16>
      %262 = bufferization.to_memref %6 : memref<1x1xi64>
      %263 = arith.remsi %false_5, %false : i1
      %264 = math.sqrt %22 : tensor<1xf32>
      %265 = affine.if affine_set<(d0, d1, d2, d3) : (d0 == 0, d2 mod 32 >= 0, d2 >= 0)>(%c10, %c7, %c2, %c10) -> f32 {
        %266 = math.log1p %23 : tensor<f32>
        %267 = math.cos %2 : tensor<1xf32>
        bufferization.dealloc_tensor %reduced : tensor<f32>
        %268 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - 1) * 64)>(%c6, %c13, %c3)
        %splat_47 = tensor.splat %false_3 : tensor<1xi1>
        %269 = bufferization.to_memref %13 : memref<1x1xi16>
        %270 = arith.remf %cst_0, %cst_0 : f16
        %271 = math.tanh %reduced : tensor<f32>
        affine.yield %91 : f32
      } else {
        %266 = affine.apply affine_map<(d0, d1) -> (d1 - (d1 - 32) + d1 floordiv 8 - 128)>(%c9, %c8)
        memref.assume_alignment %alloc_19, 1 : memref<1x1xf32>
        %267 = arith.divsi %c1441311434_i64, %c948921394_i64 : i64
        %268 = vector.broadcast %c2 : index to vector<14xindex>
        %269 = vector.broadcast %false : i1 to vector<14xi1>
        %270 = vector.broadcast %c16388_i16 : i16 to vector<14xi16>
        vector.scatter %alloc_7[%c0] [%268], %269, %270 : memref<1xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %271 = math.atan %expanded : tensor<1x1xf32>
        %272 = arith.minui %c1441311434_i64, %c1441311434_i64 : i64
        %273 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2, d1 - 24, -(d0 - 16), d2)>(%c13, %c0, %31, %c6)
        %274 = vector.create_mask %c11, %c3 : vector<6x6xi1>
        affine.yield %cst_1 : f32
      }
      %alloc_46 = memref.alloc() : memref<6x6xi16>
      affine.yield %alloc_46 : memref<6x6xi16>
    }
    affine.store %cst_0, %alloc_10[%c12] : memref<1xf16>
    %130 = bufferization.clone %118 : memref<1xi32> to memref<1xi32>
    %131 = index.ceildivs %c1, %c5
    %132 = math.absf %7 : tensor<1x1xf32>
    %133 = index.ceildivs %c11, %37
    %from_elements_28 = tensor.from_elements %cst_0 : tensor<1xf16>
    %134 = vector.matrix_multiply %47, %47 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %135 = arith.remui %false_3, %false_2 : i1
    %136 = math.atan %expanded : tensor<1x1xf32>
    %137 = vector.transpose %34, [1, 0] : vector<6x6xi1> to vector<6x6xi1>
    %138 = arith.cmpi ult, %c28390_i16, %c32458_i16 : i16
    affine.store %c1_i32, %alloc_14[%c2, %c7] : memref<6x6xi32>
    %139 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<1xi16>
    %140 = arith.minf %cst, %cst_4 : f32
    %141 = math.expm1 %cst : f32
    %142 = math.atan2 %112, %0 : tensor<6x6xf16>
    %143 = tensor.empty() : tensor<6x6xi32>
    %144 = math.fpowi %112, %143 : tensor<6x6xf16>, tensor<6x6xi32>
    %c712743740_i32 = arith.constant 712743740 : i32
    %145 = affine.apply affine_map<(d0, d1) -> ((d1 mod 16) ceildiv 16)>(%131, %c11)
    %146 = math.log10 %9 : tensor<1xf16>
    %147 = vector.outerproduct %108, %108, %106 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    %148 = arith.cmpi slt, %c16388_i16, %c16388_i16 : i16
    %149 = index.casts %c1_i32 : i32 to index
    %150 = arith.andi %true, %false : i1
    %151 = math.ctpop %13 : tensor<1x1xi16>
    %152 = math.round %cst_1 : f32
    %153 = arith.maxui %false_3, %true_25 : i1
    affine.store %cst, %alloc_17[%c1, %c0] : memref<6x6xf32>
    %154 = vector.broadcast %c510588895_i64 : i64 to vector<1xi64>
    %dest_29, %accumulated_value_30 = vector.scan <xor>, %101, %83 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xi32>, vector<1xi32>
    %155 = arith.maxui %c1_i32, %c1_i32 : i32
    %156 = arith.muli %false, %false_5 : i1
    %157 = math.round %11 : tensor<1xf32>
    %expanded_31 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
    %158 = index.add %c13, %31
    %159 = arith.maxui %c167884984_i64, %c948921394_i64 : i64
    %160 = index.ceildivs %c15, %c14
    %161 = index.ceildivs %c3, %c5
    %162 = vector.extract %56[0] : vector<1xi32>
    %163 = index.ceildivs %c7, %161
    %164 = arith.minsi %c28390_i16, %c32458_i16 : i16
    %165 = math.exp2 %112 : tensor<6x6xf16>
    %166 = vector.broadcast %true : i1 to vector<6xi1>
    %167 = vector.insert %166, %36 [2] : vector<6xi1> into vector<6x6xi1>
    %168 = math.absi %1 : tensor<1xi16>
    %169 = arith.remf %cst_4, %cst : f32
    %alloc_32 = memref.alloc() : memref<6xi1>
    %170 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_32 : memref<6xi1>) outs(%expanded_31 : tensor<6x6x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      vector.print %102 : vector<1x1xf32>
      %258 = vector.broadcast %c28390_i16 : i16 to vector<6x6xi16>
      %259 = vector.gather %13[%c14, %rank] [%35], %34, %258 : tensor<1x1xi16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi16> into vector<6x6xi16>
      %260 = affine.apply affine_map<(d0) -> (0)>(%31)
      %alloc_46 = memref.alloc() : memref<6x6xf16>
      memref.tensor_store %112, %alloc_46 : memref<6x6xf16>
      %261 = arith.shrsi %c1_i32, %c1_i32 : i32
      %262 = math.floor %24 : tensor<f32>
      %263 = arith.mulf %cst_0, %cst_0 : f16
      %264 = vector.broadcast %c16388_i16 : i16 to vector<i16>
      vector.transfer_write %264, %alloc_7[%c6] : vector<i16>, memref<1xi16>
      %265 = vector.matrix_multiply %139, %139 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %108, %108, %false_3 : vector<1xi1>, vector<1xi1> into i1
      %expanded_47 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<1x1xi64> into tensor<1x1x1xi64>
      %from_elements_48 = tensor.from_elements %false_5 : tensor<1x1xi1>
      %267 = tensor.empty() : tensor<6x6xi1>
      %268 = linalg.matmul ins(%8, %5 : tensor<6x6xi1>, tensor<6x6xi1>) outs(%267 : tensor<6x6xi1>) -> tensor<6x6xi1>
      %269 = arith.andi %c510588895_i64, %c167884984_i64 : i64
      %270 = scf.while (%arg1 = %cst_0) : (f16) -> f16 {
        %283 = arith.xori %true, %false : i1
        %284 = arith.divf %cst, %cst_1 : f32
        %285 = math.round %9 : tensor<1xf16>
        %286 = arith.divui %c510588895_i64, %c1441311434_i64 : i64
        %287 = math.log1p %from_elements_28 : tensor<1xf16>
        %288 = math.ctpop %from_elements : tensor<1xi16>
        %289 = arith.remui %c510588895_i64, %c510588895_i64 : i64
        %290 = math.powf %cst, %91 : f32
        scf.condition(%false_5) %arg1 : f16
      } do {
      ^bb0(%arg1: f16):
        %283 = arith.minf %cst_0, %arg1 : f16
        %284 = math.log2 %91 : f32
        memref.assume_alignment %alloc_7, 16 : memref<1xi16>
        %285 = math.absf %cst : f32
        %286 = arith.divsi %in, %out : i1
        %287 = arith.maxui %false_3, %true : i1
        %288 = index.ceildivu %c2, %c1
        %289 = arith.andi %in, %false_22 : i1
        %290 = vector.load %alloc_18[%c0, %c3] : memref<6x6xf32>, vector<1xf32>
        %291 = math.ctlz %14 : tensor<1xi32>
        %292 = index.casts %c2 : index to i32
        %true_52 = index.bool.constant true
        %293 = math.exp %22 : tensor<1xf32>
        %294 = math.ctpop %18 : tensor<1x1xi64>
        %295 = math.powf %0, %0 : tensor<6x6xf16>
        %296 = arith.shrsi %true, %false_3 : i1
        scf.yield %arg1 : f16
      }
      %extracted = tensor.extract %1[%c0] : tensor<1xi16>
      %271 = math.tan %cst_0 : f16
      %272 = arith.ori %in, %true : i1
      %273 = math.ctpop %c16388_i16 : i16
      %274 = math.fma %11, %2, %2 : tensor<1xf32>
      %275 = affine.apply affine_map<(d0, d1) -> (d1 - (d1 - 32) + d1 floordiv 8 - 128)>(%c15, %133)
      %from_elements_49 = tensor.from_elements %c510588895_i64, %c948921394_i64, %c948921394_i64, %c948921394_i64, %c948921394_i64, %c948921394_i64, %c1441311434_i64, %c510588895_i64, %c1441311434_i64, %c948921394_i64, %c948921394_i64, %c1441311434_i64, %c510588895_i64, %c948921394_i64, %c1441311434_i64, %c1441311434_i64, %c948921394_i64, %c1441311434_i64, %c1441311434_i64, %c948921394_i64, %c167884984_i64, %c1441311434_i64, %c167884984_i64, %c167884984_i64, %c948921394_i64, %c1441311434_i64, %c510588895_i64, %c1441311434_i64, %c167884984_i64, %c510588895_i64, %c510588895_i64, %c1441311434_i64, %c510588895_i64, %c167884984_i64, %c948921394_i64, %c167884984_i64 : tensor<6x6xi64>
      %276 = math.log %11 : tensor<1xf32>
      %277 = math.expm1 %15 : tensor<1x1xf16>
      %278 = vector.insert %c167884984_i64, %154 [0] : i64 into vector<1xi64>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%out_52: i1):
        %283 = math.absi %14 : tensor<1xi32>
        %284 = arith.ceildivsi %c1_i32, %c1_i32 : i32
        %false_53 = index.bool.constant false
        %285 = math.ctlz %5 : tensor<6x6xi1>
        %286 = math.cos %2 : tensor<1xf32>
        %287 = math.cos %74 : tensor<6x6xf16>
        %288 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 16)>(%c9, %c14, %160)
        %289 = math.tan %24 : tensor<f32>
        memref.tensor_store %8, %72 : memref<6x6xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %154, %134, %c510588895_i64 : vector<1xi64>, vector<1xi64> into i64
        %291 = arith.mulf %cst_1, %91 : f32
        %alloc_54 = memref.alloc() : memref<6x6xi64>
        %292 = index.divs %c6, %163
        %293 = arith.cmpf ord, %cst_0, %cst_0 : f16
        %294 = math.log10 %24 : tensor<f32>
        %295 = math.fma %reduced, %reduced, %reduced : tensor<f32>
        %296 = vector.broadcast %c1441311434_i64 : i64 to vector<6x6xi64>
        %297 = vector.gather %alloc_6[%133] [%35], %34, %296 : memref<1xi64>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi64> into vector<6x6xi64>
        %c8730_i16 = arith.constant 8730 : i16
        %298 = arith.shli %c1_i32, %c1_i32 : i32
        %299 = arith.remf %cst, %cst : f32
        %300 = vector.broadcast %c1441311434_i64 : i64 to vector<1x1xi64>
        %301 = vector.outerproduct %154, %134, %300 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
        %alloc_55 = memref.alloc() : memref<6x6xi1>
        memref.copy %72, %alloc_55 : memref<6x6xi1> to memref<6x6xi1>
        %302 = arith.minui %true_25, %true_25 : i1
        %303 = math.powf %22, %22 : tensor<1xf32>
        %304 = vector.broadcast %c16388_i16 : i16 to vector<1x1xi16>
        %305 = vector.outerproduct %265, %139, %304 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
        %306 = math.rsqrt %9 : tensor<1xf16>
        %false_56 = index.bool.constant false
        %307 = math.log1p %7 : tensor<1x1xf32>
        %308 = affine.apply affine_map<(d0) -> (d0 ceildiv 64)>(%c11)
        %309 = math.floor %24 : tensor<f32>
        %310 = math.round %15 : tensor<1x1xf16>
        %311 = math.atan %9 : tensor<1xf16>
        linalg.yield %false_56 : i1
      } -> tensor<6x6x1xi1>
      %expanded_50 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
      %280 = vector.matrix_multiply %47, %154 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %281 = arith.minsi %false_5, %false_2 : i1
      %generated_51 = tensor.generate %c2 {
      ^bb0(%arg1: index):
        %283 = math.log %112 : tensor<6x6xf16>
        %from_elements_52 = tensor.from_elements %c167884984_i64 : tensor<1xi64>
        %284 = arith.divui %c948921394_i64, %c510588895_i64 : i64
        vector.print %166 : vector<6xi1>
        tensor.yield %c16388_i16 : i16
      } : tensor<?xi16>
      %282 = index.castu %c7 : index to i32
      affine.store %91, %alloc_19[%c8, %c6] : memref<1x1xf32>
      linalg.yield %false_5 : i1
    } -> tensor<6x6x1xi1>
    %171 = math.absi %12 : tensor<6x6xi64>
    %172 = affine.max affine_map<(d0) -> ((d0 floordiv 4) floordiv 64, d0, (d0 floordiv 4 - 2) floordiv 16)>(%c14)
    %173 = vector.broadcast %cst : f32 to vector<1x1xf32>
    %174 = arith.divsi %false_3, %false : i1
    %175 = arith.minsi %false_22, %false_3 : i1
    %176 = arith.shli %false, %false_2 : i1
    %177 = memref.load %alloc_19[%c0, %c0] : memref<1x1xf32>
    %splat = tensor.splat %cst_4 : tensor<1x1xf32>
    %178 = scf.while (%arg1 = %72) : (memref<6x6xi1>) -> memref<6x6xi1> {
      %cast_46 = tensor.cast %17 : tensor<6x6xi1> to tensor<?x?xi1>
      %258 = arith.andi %false_3, %false_5 : i1
      memref.copy %118, %130 : memref<1xi32> to memref<1xi32>
      %259 = affine.apply affine_map<(d0) -> (0)>(%c0)
      %260 = arith.shrui %c948921394_i64, %c948921394_i64 : i64
      %261 = vector.broadcast %160 : index to vector<1xindex>
      %262 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      vector.scatter %alloc_13[%c0] [%261], %108, %262 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %263 = arith.divsi %false_5, %true : i1
      %264 = arith.minui %true, %false_5 : i1
      scf.condition(%false_22) %arg1 : memref<6x6xi1>
    } do {
    ^bb0(%arg1: memref<6x6xi1>):
      %258 = vector.create_mask %133 : vector<1xi1>
      %259 = arith.subi %false_5, %true : i1
      %260 = vector.reduction <maxf>, %21 : vector<10xf32> into f32
      %261 = math.round %22 : tensor<1xf32>
      %262 = math.copysign %reduced, %reduced : tensor<f32>
      %263 = tensor.empty() : tensor<1xi16>
      %264 = math.roundeven %15 : tensor<1x1xf16>
      %c407423924_i32 = arith.constant 407423924 : i32
      %265 = memref.atomic_rmw addi %c1_i32, %118[%c0] : (i32, memref<1xi32>) -> i32
      %266 = math.fma %7, %splat, %splat : tensor<1x1xf32>
      %267 = vector.broadcast %cst_0 : f16 to vector<f16>
      %268 = vector.transfer_write %267, %112[%c11, %c6] : vector<f16>, tensor<6x6xf16>
      %269 = arith.divsi %true_25, %false_22 : i1
      %270 = math.cttz %119 : tensor<6x6xi64>
      %271 = arith.cmpi slt, %false_2, %false_22 : i1
      %272 = math.round %expanded : tensor<1x1xf32>
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %56, %83, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
      scf.yield %arg1 : memref<6x6xi1>
    }
    %179 = arith.shli %c1441311434_i64, %c1441311434_i64 : i64
    %180 = vector.broadcast %cst_0 : f16 to vector<1xf16>
    %181 = vector.maskedload %40[%c0], %108, %180 : memref<1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %182 = math.round %11 : tensor<1xf32>
    %183 = arith.muli %c1_i32, %c1_i32 : i32
    %184 = vector.flat_transpose %47 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %185 = vector.broadcast %cst : f32 to vector<1xf32>
    %dest_33, %accumulated_value_34 = vector.scan <maxf>, %102, %185 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xf32>, vector<1xf32>
    bufferization.dealloc_tensor %23 : tensor<f32>
    %generated = tensor.generate %c10 {
    ^bb0(%arg1: index):
      %258 = math.floor %cst_0 : f16
      %259 = math.log10 %9 : tensor<1xf16>
      %260 = arith.negf %cst_4 : f32
      %261 = affine.for %arg2 = 0 to 98 iter_args(%arg3 = %94) -> (vector<2x6xf16>) {
        affine.yield %94 : vector<2x6xf16>
      }
      tensor.yield %c510588895_i64 : i64
    } : tensor<?xi64>
    %186 = math.ctpop %8 : tensor<6x6xi1>
    %alloca = memref.alloca() : memref<1x1xi32>
    %true_35 = index.bool.constant true
    %187 = arith.floordivsi %false_5, %false_2 : i1
    memref.copy %alloc_12, %alloc : memref<1xi1> to memref<1xi1>
    %188 = arith.minf %cst, %cst_1 : f32
    %189 = vector.broadcast %c1_i32 : i32 to vector<i32>
    %190 = vector.transfer_write %189, %143[%133, %131] : vector<i32>, tensor<6x6xi32>
    %191 = math.powf %cst, %cst : f32
    %192 = vector.transpose %71, [0, 1] : vector<6x6xf16> to vector<6x6xf16>
    %193 = vector.shuffle %106, %106 [0, 1] : vector<1x1xi1>, vector<1x1xi1>
    %194 = math.powf %15, %15 : tensor<1x1xf16>
    %195 = scf.while (%arg1 = %alloc_6) : (memref<1xi64>) -> memref<1xi64> {
      %258 = arith.addi %true_35, %true : i1
      %259 = arith.shli %c1_i32, %c1_i32 : i32
      %260 = affine.max affine_map<(d0) -> (d0, (d0 * 2) ceildiv 128, ((d0 floordiv 16) mod 4) floordiv 16, d0)>(%c14)
      %261 = index.divs %c11, %c2
      %262 = index.castu %false_5 : i1 to index
      %expanded_46 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
      memref.assume_alignment %alloc_17, 16 : memref<6x6xf32>
      %263 = arith.remf %cst_0, %cst_0 : f16
      scf.condition(%true_25) %alloc_6 : memref<1xi64>
    } do {
    ^bb0(%arg1: memref<1xi64>):
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %35, %35, %35 : vector<6x6xi32>, vector<6x6xi32> into vector<6x6xi32>
      %259 = affine.load %118[%c14] : memref<1xi32>
      %260 = index.floordivs %c4, %160
      %261 = index.add %c7, %c9
      %262 = vector.matrix_multiply %139, %139 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %263 = arith.cmpf uno, %91, %cst_1 : f32
      %264 = vector.create_mask %261, %c6 : vector<1x1xi1>
      %265 = arith.mulf %cst, %cst_1 : f32
      %266 = vector.multi_reduction <or>, %83, %56 [] : vector<1xi32> to vector<1xi32>
      vector.print %181 : vector<1xf16>
      %267 = arith.minf %91, %91 : f32
      %dest_46, %accumulated_value_47 = vector.scan <or>, %100, %108 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xi1>, vector<1xi1>
      %268 = arith.minsi %false_22, %true_25 : i1
      %269 = math.atan2 %splat, %7 : tensor<1x1xf32>
      %270 = vector.broadcast %c948921394_i64 : i64 to vector<10xi64>
      %271 = vector.transfer_write %270, %6[%145, %163] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, tensor<1x1xi64>
      %272 = arith.addi %false_3, %false_2 : i1
      scf.yield %arg1 : memref<1xi64>
    }
    %196 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
    %197 = vector.broadcast %c1441311434_i64 : i64 to vector<1x1xi64>
    %198 = vector.outerproduct %154, %47, %197 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
    %alloc_36 = memref.alloc() : memref<1xf32>
    %199 = arith.maxui %c1_i32, %c1_i32 : i32
    %200 = math.expm1 %cst_4 : f32
    %alloc_37 = memref.alloc() : memref<1xi1>
    vector.print %100 : vector<1x1xi1>
    %201 = arith.andi %c167884984_i64, %c1441311434_i64 : i64
    %202 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %70, %71, %71 : vector<6x6xf16>, vector<6x6xf16> into vector<6x6xf16>
    %203 = bufferization.clone %alloc_18 : memref<6x6xf32> to memref<6x6xf32>
    %204 = index.mul %c8, %c14
    %205 = arith.addi %c28390_i16, %c16388_i16 : i16
    %206 = arith.maxui %true_25, %false_22 : i1
    %207 = arith.ceildivsi %c32458_i16, %c28390_i16 : i16
    %208 = vector.load %40[%c0] : memref<1xf16>, vector<1x1xf16>
    bufferization.dealloc_tensor %42 : tensor<i32>
    %209 = math.round %24 : tensor<f32>
    %210 = vector.extract %101[0] : vector<1x1xi32>
    %211 = vector.broadcast %false_2 : i1 to vector<6x6xi1>
    %rank_38 = tensor.rank %112 : tensor<6x6xf16>
    memref.assume_alignment %alloc, 8 : memref<1xi1>
    %from_elements_39 = tensor.from_elements %c167884984_i64 : tensor<1xi64>
    %212 = arith.remf %cst_1, %cst_4 : f32
    %213 = affine.max affine_map<(d0, d1) -> (-(-(d0 - 64) - d1 - 16), d1, d0 - 64)>(%c11, %131)
    %214 = vector.transpose %181, [0] : vector<1xf16> to vector<1xf16>
    %215 = math.fma %112, %112, %74 : tensor<6x6xf16>
    affine.store %false_3, %alloc[%c0] : memref<1xi1>
    %216 = math.log %24 : tensor<f32>
    %217 = math.ctpop %6 : tensor<1x1xi64>
    %218 = math.ctpop %c1_i32 : i32
    %219 = math.atan2 %24, %24 : tensor<f32>
    %cast = tensor.cast %22 : tensor<1xf32> to tensor<?xf32>
    %220 = vector.flat_transpose %83 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    memref.tensor_store %119, %alloc_11 : memref<6x6xi64>
    %221 = memref.atomic_rmw muli %c1_i32, %alloc_14[%c5, %c0] : (i32, memref<6x6xi32>) -> i32
    %222 = arith.minf %cst_0, %cst_0 : f16
    %223 = vector.gather %143[%204, %rank] [%35], %36, %35 : tensor<6x6xi32>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi32> into vector<6x6xi32>
    %224 = math.log1p %cst : f32
    %225 = bufferization.clone %alloc_6 : memref<1xi64> to memref<1xi64>
    %226 = affine.max affine_map<(d0, d1, d2) -> ((d2 - d1 - (d1 + 2)) * 4, (-d1) ceildiv 4)>(%204, %c5, %c10)
    %227 = affine.if affine_set<(d0, d1, d2, d3) : (d0 == 0, d2 mod 32 >= 0, d2 >= 0)>(%c0, %c4, %c12, %c3) -> memref<1xi64> {
      %258 = index.ceildivs %c0, %161
      %259 = math.absi %from_elements : tensor<1xi16>
      %cast_46 = tensor.cast %18 : tensor<1x1xi64> to tensor<?x?xi64>
      %alloc_47 = memref.alloc() : memref<1xi32>
      %dest_48, %accumulated_value_49 = vector.scan <minui>, %106, %108 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xi1>, vector<1xi1>
      %260 = vector.transpose %108, [0] : vector<1xi1> to vector<1xi1>
      %261 = math.log2 %0 : tensor<6x6xf16>
      memref.tensor_store %5, %72 : memref<6x6xi1>
      affine.yield %225 : memref<1xi64>
    } else {
      %258 = arith.subi %true_35, %false_2 : i1
      %true_46 = index.bool.constant true
      %259 = vector.matrix_multiply %184, %47 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      memref.assume_alignment %196, 1 : memref<1xf16>
      %260 = tensor.empty() : tensor<1x1xf32>
      %261 = linalg.matmul ins(%7, %splat : tensor<1x1xf32>, tensor<1x1xf32>) outs(%260 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %262 = arith.remui %true_35, %false_2 : i1
      %263 = arith.xori %false_22, %false_2 : i1
      %264 = scf.while (%arg1 = %211) : (vector<6x6xi1>) -> vector<6x6xi1> {
        %265 = vector.broadcast %c28390_i16 : i16 to vector<1x1xi16>
        %266 = arith.minf %cst, %91 : f32
        %267 = math.cos %expanded : tensor<1x1xf32>
        %268 = arith.addi %c1_i32, %c1_i32 : i32
        %269 = math.copysign %cst_4, %cst_1 : f32
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %208, %181, %181 : vector<1x1xf16>, vector<1xf16> into vector<1xf16>
        %271 = arith.remsi %false_5, %false_5 : i1
        %272 = math.absf %11 : tensor<1xf32>
        scf.condition(%false_5) %34 : vector<6x6xi1>
      } do {
      ^bb0(%arg1: vector<6x6xi1>):
        %265 = arith.andi %c510588895_i64, %c1441311434_i64 : i64
        %266 = math.log10 %260 : tensor<1x1xf32>
        affine.store %cst_1, %203[%c14, %c11] : memref<6x6xf32>
        %267 = math.round %cst : f32
        %alloc_47 = memref.alloc() : memref<6x6xf16>
        %true_48 = index.bool.constant true
        %268 = vector.flat_transpose %154 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %269 = vector.transpose %211, [1, 0] : vector<6x6xi1> to vector<6x6xi1>
        %270 = vector.broadcast %c167884984_i64 : i64 to vector<1x1xi64>
        %271 = vector.outerproduct %259, %268, %270 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
        %272 = vector.broadcast %cst : f32 to vector<1xf32>
        %273 = vector.transfer_write %272, %260[%c3, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<1x1xf32>
        %inserted_49 = tensor.insert %c1441311434_i64 into %119[%c0, %c3] : tensor<6x6xi64>
        memref.assume_alignment %alloc_16, 4 : memref<1x1xf16>
        %alloc_50 = memref.alloc() : memref<1xf32>
        %274 = math.expm1 %260 : tensor<1x1xf32>
        %275 = math.absf %19 : tensor<f32>
        %276 = tensor.empty() : tensor<1x1xi64>
        %277 = linalg.matmul ins(%18, %transposed : tensor<1x1xi64>, tensor<1x1xi64>) outs(%276 : tensor<1x1xi64>) -> tensor<1x1xi64>
        scf.yield %34 : vector<6x6xi1>
      }
      affine.yield %225 : memref<1xi64>
    }
    %splat_40 = tensor.splat %true_35 : tensor<6x6xi1>
    %228 = math.copysign %15, %15 : tensor<1x1xf16>
    %229 = scf.index_switch %c12 -> tensor<1xi1> 
    case 1 {
      %from_elements_46 = tensor.from_elements %cst_1, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst, %91, %cst_1, %cst, %91, %cst_4, %91, %cst, %91, %cst_4, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %91, %cst, %cst, %cst_4, %cst, %91, %91, %cst, %91, %cst, %cst_4, %91, %91 : tensor<6x6xf32>
      affine.store %c28390_i16, %alloc_7[%c6] : memref<1xi16>
      %258 = vector.load %alloc_14[%c5, %c5] : memref<6x6xi32>, vector<1xi32>
      %259 = arith.mulf %cst, %cst_4 : f32
      %260 = arith.andi %false_3, %false_22 : i1
      %c-18615_i16 = arith.constant -18615 : i16
      %261 = arith.minf %cst, %cst : f32
      %262 = math.powf %91, %cst_4 : f32
      %263 = arith.divf %cst_0, %cst_0 : f16
      %alloc_47 = memref.alloc() : memref<1x1xi64>
      %alloc_48 = memref.alloc() : memref<6x6xi64>
      %264 = arith.shrui %false_22, %true_25 : i1
      %265 = math.powf %112, %112 : tensor<6x6xf16>
      %266 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
      %267 = vector.outerproduct %21, %21, %266 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
      %268 = arith.remui %c16388_i16, %c28390_i16 : i16
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %101, %220, %220 : vector<1x1xi32>, vector<1xi32> into vector<1xi32>
      scf.yield %10 : tensor<1xi1>
    }
    case 2 {
      %258 = index.ceildivu %c2, %c10
      %alloca_46 = memref.alloca() : memref<1x1xf16>
      %259 = arith.andi %true, %false_3 : i1
      %260 = index.sizeof
      %261 = tensor.empty() : tensor<1x1xi32>
      %262 = math.fpowi %7, %261 : tensor<1x1xf32>, tensor<1x1xi32>
      %263 = arith.cmpf ole, %cst_0, %cst_0 : f16
      %264 = math.log1p %2 : tensor<1xf32>
      %265 = math.absf %2 : tensor<1xf32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %181, %180, %cst_0 : vector<1xf16>, vector<1xf16> into f16
      %267 = math.exp %0 : tensor<6x6xf16>
      %268 = vector.broadcast %cst_1 : f32 to vector<f32>
      %269 = vector.transfer_write %268, %splat[%c8, %149] : vector<f32>, tensor<1x1xf32>
      affine.store %c1_i32, %130[%c10] : memref<1xi32>
      %270 = arith.andi %false_22, %false_22 : i1
      %271 = vector.extract_strided_slice %223 {offsets = [0], sizes = [2], strides = [1]} : vector<6x6xi32> to vector<2x6xi32>
      %272 = vector.extract_strided_slice %47 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      bufferization.dealloc_tensor %8 : tensor<6x6xi1>
      scf.yield %10 : tensor<1xi1>
    }
    case 3 {
      %258 = math.log2 %15 : tensor<1x1xf16>
      %alloca_46 = memref.alloca() : memref<1xi16>
      %259 = vector.extract_strided_slice %101 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xi32> to vector<1x1xi32>
      %260 = math.sqrt %91 : f32
      %expanded_47 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
      %true_48 = index.bool.constant true
      %261 = bufferization.clone %130 : memref<1xi32> to memref<1xi32>
      memref.tensor_store %84, %alloc_11 : memref<6x6xi64>
      affine.store %c1441311434_i64, %alloc_11[%c6, %c7] : memref<6x6xi64>
      %262 = vector.create_mask %c13 : vector<1xi1>
      %263 = vector.flat_transpose %166 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %264 = vector.matrix_multiply %47, %184 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %265 = math.expm1 %2 : tensor<1xf32>
      %266 = vector.transpose %181, [0] : vector<1xf16> to vector<1xf16>
      %267 = math.roundeven %15 : tensor<1x1xf16>
      %268 = math.absi %from_elements_39 : tensor<1xi64>
      scf.yield %10 : tensor<1xi1>
    }
    case 4 {
      %expanded_46 = tensor.expand_shape %119 [[0], [1, 2]] : tensor<6x6xi64> into tensor<6x6x1xi64>
      %generated_47 = tensor.generate %213 {
      ^bb0(%arg1: index, %arg2: index):
        %270 = arith.minui %false_5, %false : i1
        %271 = arith.maxsi %true, %false_5 : i1
        %272 = math.exp %11 : tensor<1xf32>
        %273 = vector.broadcast %213 : index to vector<10xindex>
        %274 = vector.broadcast %true_35 : i1 to vector<10xi1>
        vector.scatter %203[%c0, %c5] [%273], %274, %21 : memref<6x6xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        tensor.yield %c1_i32 : i32
      } : tensor<?x1xi32>
      %258 = tensor.empty() : tensor<1xi32>
      %mapped_48 = linalg.map ins(%118 : memref<1xi32>) outs(%258 : tensor<1xi32>)
        (%in: i32) {
          %270 = index.ceildivs %c8, %31
          %271 = arith.minsi %true, %false_22 : i1
          %272 = arith.subi %c510588895_i64, %c1441311434_i64 : i64
          %273 = arith.andi %true_25, %true_35 : i1
          %274 = index.maxu %145, %c9
          %alloc_50 = memref.alloc() : memref<1x1xi16>
          memref.tensor_store %13, %alloc_50 : memref<1x1xi16>
          %275 = vector.insert %cst_0, %181 [0] : f16 into vector<1xf16>
          %276 = index.ceildivu %c7, %37
          %277 = vector.broadcast %true_35 : i1 to vector<1x1xi1>
          %278 = arith.floordivsi %false, %true : i1
          %279 = arith.muli %false, %true_35 : i1
          %inserted_51 = tensor.insert %c1_i32 into %14[%c0] : tensor<1xi32>
          %280 = index.casts %true_25 : i1 to index
          %281 = vector.bitcast %94 : vector<2x6xf16> to vector<2x6xf16>
          %282 = arith.ceildivsi %c1441311434_i64, %c510588895_i64 : i64
          %283 = math.ctlz %false_5 : i1
          %284 = index.floordivs %c2, %133
          %285 = arith.minsi %true_35, %true : i1
          %286 = arith.negf %cst_1 : f32
          %287 = index.sub %31, %c7
          %288 = index.castu %c1 : index to i32
          %289 = math.copysign %splat, %7 : tensor<1x1xf32>
          %290 = arith.shrui %false_5, %true_35 : i1
          %291 = index.maxu %c1, %133
          %292 = index.maxu %c6, %284
          %293 = math.log1p %11 : tensor<1xf32>
          %294 = memref.atomic_rmw mins %c510588895_i64, %alloc_6[%c0] : (i64, memref<1xi64>) -> i64
          %295 = math.tan %cst_4 : f32
          %296 = index.castu %280 : index to i32
          %297 = vector.flat_transpose %56 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %298 = math.log2 %19 : tensor<f32>
          memref.assume_alignment %alloc_12, 1 : memref<1xi1>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %259 = math.exp2 %9 : tensor<1xf16>
      %260 = math.log2 %2 : tensor<1xf32>
      %261 = arith.maxsi %false_3, %false_3 : i1
      %true_49 = index.bool.constant true
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0)>(%c6, %c7, %c13, %c9) -> memref<1x1xi32> {
        %270 = math.atan2 %2, %2 : tensor<1xf32>
        %271 = vector.broadcast %false_2 : i1 to vector<i1>
        %272 = vector.transfer_write %271, %16[%c8, %226] : vector<i1>, tensor<6x6xi1>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %273 = vector.transfer_read %alloc_20[%160], %c0_i16 : memref<1xi16>, vector<i16>
        %274 = math.log %9 : tensor<1xf16>
        %275 = tensor.empty() : tensor<1x1xi32>
        %276 = math.fpowi %splat, %275 : tensor<1x1xf32>, tensor<1x1xi32>
        %false_50 = arith.constant false
        %277 = arith.andi %false_22, %false_5 : i1
        %278 = bufferization.to_tensor %alloc_16 : memref<1x1xf16>
        %alloc_51 = memref.alloc() : memref<1x1xi32>
        affine.yield %alloc_51 : memref<1x1xi32>
      } else {
        %270 = math.roundeven %cst_1 : f32
        %271 = index.ceildivs %c13, %c14
        %272 = arith.shli %true_35, %true_49 : i1
        %273 = math.tan %cst_1 : f32
        %274 = math.exp2 %22 : tensor<1xf32>
        %275 = arith.remui %c167884984_i64, %c948921394_i64 : i64
        %276 = math.expm1 %7 : tensor<1x1xf32>
        %277 = math.tan %7 : tensor<1x1xf32>
        %alloc_50 = memref.alloc() : memref<1x1xi32>
        affine.yield %alloc_50 : memref<1x1xi32>
      }
      %263 = math.exp2 %2 : tensor<1xf32>
      %264 = arith.remf %cst, %cst_1 : f32
      %265 = arith.maxsi %true, %false_2 : i1
      %266 = math.cttz %false : i1
      %267 = bufferization.clone %alloc_11 : memref<6x6xi64> to memref<6x6xi64>
      %268 = math.tan %0 : tensor<6x6xf16>
      memref.assume_alignment %72, 8 : memref<6x6xi1>
      %269 = vector.load %alloc_8[%c0, %c0] : memref<1x1xi64>, vector<1xi64>
      scf.yield %10 : tensor<1xi1>
    }
    default {
      %258 = index.casts %false_5 : i1 to index
      %259 = arith.divf %cst, %cst_1 : f32
      %260 = arith.remui %c28390_i16, %c32458_i16 : i16
      %261 = arith.minui %true, %true_25 : i1
      %262 = index.ceildivs %145, %149
      %263 = vector.extract %181[0] : vector<1xf16>
      %splat_46 = tensor.splat %91 : tensor<1x1xf32>
      %264 = scf.while (%arg1 = %alloc_20) : (memref<1xi16>) -> memref<1xi16> {
        %274 = tensor.empty() : tensor<1xf16>
        %275 = arith.ceildivsi %true_35, %false_2 : i1
        %276 = index.add %c9, %258
        %277 = math.log1p %11 : tensor<1xf32>
        %278 = math.cttz %from_elements_39 : tensor<1xi64>
        %279 = math.log1p %reduced : tensor<f32>
        affine.store %c510588895_i64, %alloc_8[%c13, %c2] : memref<1x1xi64>
        %280 = math.exp %9 : tensor<1xf16>
        scf.condition(%false_5) %alloc_7 : memref<1xi16>
      } do {
      ^bb0(%arg1: memref<1xi16>):
        %274 = math.log1p %15 : tensor<1x1xf16>
        %275 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %94, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<2x6xf16>, vector<6xf16>
        %276 = math.log2 %0 : tensor<6x6xf16>
        %277 = math.expm1 %cst_0 : f16
        %278 = arith.addi %false_2, %false_2 : i1
        %279 = arith.andi %false_2, %false : i1
        %from_elements_50 = tensor.from_elements %c510588895_i64 : tensor<1xi64>
        %280 = math.log %23 : tensor<f32>
        %281 = vector.flat_transpose %181 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %282 = arith.minf %cst_0, %cst_0 : f16
        %283 = arith.cmpi sgt, %c1441311434_i64, %c948921394_i64 : i64
        %284 = math.absf %reduced : tensor<f32>
        %285 = index.ceildivs %c2, %c11
        %286 = arith.mulf %cst_1, %91 : f32
        %287 = arith.cmpf ugt, %cst, %91 : f32
        %288 = arith.divsi %c32458_i16, %c16388_i16 : i16
        scf.yield %arg1 : memref<1xi16>
      }
      %true_47 = index.bool.constant true
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%out: i1):
        %274 = arith.maxsi %false_5, %false : i1
        %275 = vector.outerproduct %83, %220, %101 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %276 = arith.remf %cst_0, %cst_0 : f16
        %277 = bufferization.to_memref %14 : memref<1xi32>
        %278 = math.log10 %from_elements_28 : tensor<1xf16>
        %rank_48 = tensor.rank %splat : tensor<1x1xf32>
        %279 = vector.gather %15[%c15, %158] [%101], %100, %208 : tensor<1x1xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
        %280 = math.exp %from_elements_28 : tensor<1xf16>
        bufferization.dealloc_tensor %119 : tensor<6x6xi64>
        %281 = tensor.empty(%c11, %c9) : tensor<?x?xi16>
        %282 = index.divs %149, %c10
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %101, %83, %83 : vector<1x1xi32>, vector<1xi32> into vector<1xi32>
        %284 = index.ceildivu %c6, %c15
        %285 = arith.minui %false, %true_47 : i1
        %286 = vector.flat_transpose %220 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %287 = math.log2 %7 : tensor<1x1xf32>
        %from_elements_49 = tensor.from_elements %false_3, %false_5, %false, %out, %false, %false_5, %true_25, %true, %true_25, %false_5, %true_35, %false, %false_3, %true_35, %false_22, %true_47, %false, %false_3, %false, %true_25, %true_25, %true_47, %true, %false_22, %out, %true, %false_2, %true, %true, %true_25, %false_22, %out, %out, %false_22, %false_3, %true : tensor<6x6xi1>
        %288 = vector.flat_transpose %56 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %289 = arith.divsi %out, %false_3 : i1
        %290 = arith.cmpf oge, %cst_4, %cst : f32
        %291 = arith.cmpi ule, %c16388_i16, %c16388_i16 : i16
        %292 = tensor.empty() : tensor<1xf32>
        %293 = vector.insert %cst_0, %180 [0] : f16 into vector<1xf16>
        %294 = arith.maxsi %out, %false_22 : i1
        %295 = affine.max affine_map<(d0, d1) -> (d1 floordiv 64 + 128)>(%37, %c11)
        %296 = math.log %2 : tensor<1xf32>
        %297 = math.exp %splat : tensor<1x1xf32>
        %298 = index.ceildivs %c2, %c1
        %299 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        %dest_50, %accumulated_value_51 = vector.scan <minui>, %35, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
        %inserted_52 = tensor.insert %out into %17[%c0, %c0] : tensor<6x6xi1>
        %300 = math.round %9 : tensor<1xf16>
        %splat_53 = tensor.splat %false : tensor<1xi1>
        linalg.yield %false_3 : i1
      } -> tensor<6x6x1xi1>
      %266 = math.ctpop %6 : tensor<1x1xi64>
      %267 = vector.broadcast %158 : index to vector<14xindex>
      %268 = vector.broadcast %false : i1 to vector<14xi1>
      %269 = vector.broadcast %cst : f32 to vector<14xf32>
      vector.scatter %alloc_19[%c0, %c0] [%267], %268, %269 : memref<1x1xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %270 = math.absi %false_22 : i1
      %271 = arith.minf %cst_1, %91 : f32
      %272 = index.divs %96, %c2
      %273 = math.fma %expanded, %7, %splat : tensor<1x1xf32>
      scf.yield %10 : tensor<1xi1>
    }
    %230 = tensor.empty(%161) : tensor<6x?xi16>
    %231 = arith.mulf %cst_4, %91 : f32
    %232 = arith.remf %91, %cst_1 : f32
    %233 = math.log %19 : tensor<f32>
    memref.tensor_store %from_elements, %alloc_15 : memref<1xi16>
    memref.tensor_store %8, %72 : memref<6x6xi1>
    %234 = index.ceildivs %204, %204
    %from_elements_41 = tensor.from_elements %91 : tensor<1xf32>
    %235 = arith.remui %c1_i32, %c1_i32 : i32
    %236 = index.divs %31, %163
    %237 = affine.if affine_set<(d0, d1, d2, d3) : (d0 == 0, d2 mod 32 >= 0, d2 >= 0)>(%c11, %c11, %c1, %c10) -> memref<1xi32> {
      %alloca_46 = memref.alloca() : memref<1x1xi64>
      %258 = arith.remui %true, %false_2 : i1
      %259 = affine.load %alloc_11[%c2, %c1] : memref<6x6xi64>
      %260 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 + d2 + d0) * 2, (d1 + d2) ceildiv 16, (-(d1 + d2)) floordiv 16)>(%160, %c2, %c5, %37)
      %261 = arith.cmpi sgt, %false_3, %false : i1
      %262 = math.atan %cst_4 : f32
      %expanded_47 = tensor.expand_shape %14 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
      %c1089242699_i64 = arith.constant 1089242699 : i64
      affine.yield %alloc_9 : memref<1xi32>
    } else {
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%out: i1):
        %265 = arith.minf %cst, %cst_4 : f32
        %from_elements_47 = tensor.from_elements %c28390_i16 : tensor<1x1xi16>
        %266 = math.round %7 : tensor<1x1xf32>
        %expanded_48 = tensor.expand_shape %from_elements_28 [[0, 1]] : tensor<1xf16> into tensor<1x1xf16>
        %267 = arith.minf %91, %91 : f32
        %268 = bufferization.to_tensor %alloc_14 : memref<6x6xi32>
        %alloc_49 = memref.alloc() : memref<6x6xi32>
        memref.copy %alloc_14, %alloc_49 : memref<6x6xi32> to memref<6x6xi32>
        %269 = math.expm1 %from_elements_41 : tensor<1xf32>
        %270 = index.ceildivs %c3, %c1
        %271 = math.rsqrt %22 : tensor<1xf32>
        %272 = math.ctlz %false : i1
        %273 = arith.minsi %false_5, %true_25 : i1
        %274 = tensor.empty() : tensor<1x1xi16>
        %275 = linalg.matmul ins(%13, %13 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%274 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %extracted = tensor.extract %9[%c0] : tensor<1xf16>
        %276 = math.absi %false : i1
        %277 = math.ctpop %splat_40 : tensor<6x6xi1>
        %278 = math.absf %cst_0 : f16
        %279 = affine.load %alloc_6[%c13] : memref<1xi64>
        %280 = vector.insert %166, %211 [3] : vector<6xi1> into vector<6x6xi1>
        %alloc_50 = memref.alloc() : memref<1x1xf16>
        %281 = arith.andi %c948921394_i64, %c1441311434_i64 : i64
        %282 = math.round %2 : tensor<1xf32>
        %alloca_51 = memref.alloca() : memref<6x6xi32>
        %283 = math.rsqrt %cst_4 : f32
        %284 = math.ctlz %42 : tensor<i32>
        %285 = index.maxu %158, %204
        %286 = arith.cmpf oeq, %cst_1, %cst : f32
        %cast_52 = tensor.cast %expanded_48 : tensor<1x1xf16> to tensor<?x?xf16>
        %287 = math.log1p %24 : tensor<f32>
        %288 = arith.mulf %91, %cst_4 : f32
        %289 = arith.ori %false_2, %false_22 : i1
        %290 = vector.insert %true_25, %166 [5] : i1 into vector<6xi1>
        linalg.yield %true_35 : i1
      } -> tensor<6x6x1xi1>
      %259 = math.round %22 : tensor<1xf32>
      %260 = vector.bitcast %36 : vector<6x6xi1> to vector<6x6xi1>
      %261 = math.round %from_elements_28 : tensor<1xf16>
      %262 = math.atan2 %cst_4, %cst : f32
      %from_elements_46 = tensor.from_elements %c948921394_i64 : tensor<1xi64>
      %263 = math.exp2 %expanded : tensor<1x1xf32>
      %264 = vector.extract_strided_slice %94 {offsets = [0], sizes = [1], strides = [1]} : vector<2x6xf16> to vector<1x6xf16>
      affine.yield %118 : memref<1xi32>
    }
    %238 = memref.alloca_scope  -> (i1) {
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %34, %211, %211 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
      %259 = math.absi %expanded_31 : tensor<6x6x1xi1>
      %260 = tensor.empty() : tensor<1x1xi64>
      %mapped_46 = linalg.map ins(%6, %transposed, %4 : tensor<1x1xi64>, tensor<1x1xi64>, tensor<1x1xi64>) outs(%260 : tensor<1x1xi64>)
        (%in: i64, %in_48: i64, %in_49: i64) {
          memref.copy %alloc_18, %alloc_17 : memref<6x6xf32> to memref<6x6xf32>
          %290 = index.add %c3, %226
          %291 = math.log10 %from_elements_41 : tensor<1xf32>
          %292 = arith.cmpi ugt, %false_22, %true_25 : i1
          %293 = math.fma %from_elements_41, %from_elements_41, %2 : tensor<1xf32>
          %294 = vector.extract_strided_slice %106 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xi1> to vector<1x1xi1>
          %295 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d1 + d3) ceildiv 8)>(%c9, %c11, %204, %c15)
          %296 = arith.minsi %c1441311434_i64, %c948921394_i64 : i64
          %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<1x1xi1> into tensor<1xi1>
          %297 = math.absi %42 : tensor<i32>
          %298 = math.absi %false_22 : i1
          %299 = arith.cmpf ugt, %91, %cst_1 : f32
          %300 = index.ceildivs %c15, %c2
          %301 = arith.floordivsi %false_5, %true_25 : i1
          %302 = math.expm1 %cst : f32
          %303 = tensor.empty() : tensor<1xi32>
          %304 = vector.extract_strided_slice %184 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
          %305 = memref.atomic_rmw minu %in_48, %alloc_6[%c0] : (i64, memref<1xi64>) -> i64
          %306 = math.tanh %19 : tensor<f32>
          %307 = arith.shrui %true, %true_25 : i1
          %308 = index.casts %c10 : index to i32
          %309 = vector.gather %alloc_15[%c2] [%210], %108, %139 : memref<1xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %310 = arith.ceildivsi %true_35, %true_25 : i1
          %311 = vector.gather %9[%236] [%35], %34, %70 : tensor<1xf16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xf16> into vector<6x6xf16>
          %312 = math.exp %11 : tensor<1xf32>
          %313 = math.expm1 %24 : tensor<f32>
          %314 = arith.cmpf ule, %cst_1, %cst : f32
          %315 = arith.andi %c167884984_i64, %in_48 : i64
          %316 = vector.multi_reduction <minui>, %106, %108 [0] : vector<1x1xi1> to vector<1xi1>
          %317 = arith.shrsi %c948921394_i64, %in_49 : i64
          %318 = math.fpowi %112, %143 : tensor<6x6xf16>, tensor<6x6xi32>
          %319 = vector.create_mask %295, %290 : vector<6x6xi1>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %261 = math.absi %13 : tensor<1x1xi16>
      %alloc_47 = memref.alloc() : memref<1xf32>
      memref.copy %alloc_13, %alloc_47 : memref<1xf32> to memref<1xf32>
      %262 = math.cttz %119 : tensor<6x6xi64>
      %263 = index.castu %c7 : index to i32
      %264 = math.log10 %from_elements_41 : tensor<1xf32>
      %265 = math.exp %7 : tensor<1x1xf32>
      %266 = math.absi %8 : tensor<6x6xi1>
      %267 = tensor.empty() : tensor<6xi1>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %267 : tensor<6x6xi1>, tensor<6xi1>) outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%in: i1, %in_48: i1, %out: i1):
        %290 = arith.cmpi ult, %c16388_i16, %c16388_i16 : i16
        %291 = math.log10 %from_elements_41 : tensor<1xf32>
        %292 = index.add %c12, %145
        %293 = index.floordivs %c15, %c12
        %true_49 = index.bool.constant true
        %294 = affine.apply affine_map<(d0, d1) -> (((d0 + d1) ceildiv 8) * 2)>(%rank_38, %31)
        %295 = vector.broadcast %c1_i32 : i32 to vector<i32>
        %296 = vector.transfer_write %295, %143[%c1, %c6] : vector<i32>, tensor<6x6xi32>
        %297 = memref.load %alloc_17[%c2, %c4] : memref<6x6xf32>
        %298 = index.casts %c510588895_i64 : i64 to index
        %299 = math.expm1 %0 : tensor<6x6xf16>
        %300 = arith.remui %false, %true : i1
        %301 = vector.insertelement %true, %108[%96 : index] : vector<1xi1>
        %302 = index.sizeof
        %303 = math.absf %15 : tensor<1x1xf16>
        memref.copy %118, %130 : memref<1xi32> to memref<1xi32>
        %304 = arith.mulf %cst_1, %91 : f32
        %305 = arith.andi %c1441311434_i64, %c167884984_i64 : i64
        %306 = math.copysign %112, %0 : tensor<6x6xf16>
        %cast_50 = tensor.cast %24 : tensor<f32> to tensor<f32>
        %307 = vector.insert %cst_0, %180 [0] : f16 into vector<1xf16>
        %308 = arith.negf %cst_4 : f32
        %309 = math.ctlz %17 : tensor<6x6xi1>
        memref.tensor_store %2, %alloc_13 : memref<1xf32>
        %310 = math.cttz %3 : tensor<1x1xi1>
        %false_51 = index.bool.constant false
        %311 = vector.multi_reduction <or>, %106, %108 [0] : vector<1x1xi1> to vector<1xi1>
        %312 = index.ceildivs %c0, %131
        %313 = arith.minf %91, %cst : f32
        %314 = math.fpowi %cst_0, %c1_i32 : f16, i32
        %cast_52 = tensor.cast %8 : tensor<6x6xi1> to tensor<?x?xi1>
        %315 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %34, %166, %166 : vector<6x6xi1>, vector<6xi1> into vector<6xi1>
        %316 = math.log2 %9 : tensor<1xf16>
        linalg.yield %false_2 : i1
      } -> tensor<6x6x1xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16 : tensor<6x6xi1>) outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %290 = vector.broadcast %c510588895_i64 : i64 to vector<1x1xi64>
        %291 = arith.muli %false, %out : i1
        %292 = arith.cmpf ole, %91, %cst_1 : f32
        %293 = arith.shli %false_3, %false : i1
        %294 = math.floor %cst : f32
        %295 = vector.broadcast %false_3 : i1 to vector<1x1xi1>
        affine.store %in, %alloc_12[%c3] : memref<1xi1>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %220, %210, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
        %297 = math.round %22 : tensor<1xf32>
        %298 = bufferization.to_tensor %alloc_10 : memref<1xf16>
        %299 = vector.flat_transpose %139 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %inserted_48 = tensor.insert %c1441311434_i64 into %119[%c2, %c1] : tensor<6x6xi64>
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %299, %139, %c16388_i16 : vector<1xi16>, vector<1xi16> into i16
        %splat_49 = tensor.splat %cst_0 : tensor<1x1xf16>
        %false_50 = arith.constant false
        %301 = index.casts %c14 : index to i32
        %302 = arith.floordivsi %c510588895_i64, %c167884984_i64 : i64
        %303 = math.cttz %119 : tensor<6x6xi64>
        %304 = arith.shli %false_22, %true : i1
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %154, %47, %c510588895_i64 : vector<1xi64>, vector<1xi64> into i64
        %306 = arith.mulf %cst_0, %cst_0 : f16
        %307 = index.ceildivs %c7, %c13
        %308 = arith.shrui %c28390_i16, %c28390_i16 : i16
        %309 = vector.outerproduct %180, %181, %208 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        memref.copy %40, %196 : memref<1xf16> to memref<1xf16>
        %310 = math.log1p %splat : tensor<1x1xf32>
        %311 = memref.load %40[%c0] : memref<1xf16>
        %312 = math.log %9 : tensor<1xf16>
        %dest_51, %accumulated_value_52 = vector.scan <minf>, %208, %181 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xf16>, vector<1xf16>
        %313 = arith.minf %cst, %91 : f32
        memref.assume_alignment %alloc_14, 8 : memref<6x6xi32>
        %314 = tensor.empty() : tensor<6x6xi64>
        %315 = linalg.matmul ins(%119, %12 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%314 : tensor<6x6xi64>) -> tensor<6x6xi64>
        linalg.yield %out : i1
      } -> tensor<6x6x1xi1>
      %270 = arith.minsi %false_5, %false_2 : i1
      %271 = vector.reduction <add>, %180 : vector<1xf16> into f16
      %272 = math.copysign %7, %splat : tensor<1x1xf32>
      %extracted = tensor.extract %143[%c5, %c2] : tensor<6x6xi32>
      %273 = memref.realloc %130 : memref<1xi32> to memref<14xi32>
      %274 = math.copysign %cst_0, %cst_0 : f16
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8 : tensor<6x6xi1>) outs(%expanded_31 : tensor<6x6x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %290 = arith.minsi %true_35, %true_25 : i1
        %extracted_48 = tensor.extract %8[%c2, %c3] : tensor<6x6xi1>
        %alloc_49 = memref.alloc() : memref<1x1xi1>
        %291 = vector.gather %alloc_49[%133, %234] [%56], %108, %108 : memref<1x1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %292 = vector.bitcast %101 : vector<1x1xi32> to vector<1x1xi32>
        %293 = math.cttz %16 : tensor<6x6xi1>
        %294 = math.tan %reduced : tensor<f32>
        %295 = arith.minf %cst_4, %cst_4 : f32
        %296 = math.cttz %8 : tensor<6x6xi1>
        %297 = math.log %splat : tensor<1x1xf32>
        %298 = arith.muli %extracted_48, %false : i1
        %299 = vector.flat_transpose %154 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %300 = tensor.empty() : tensor<6x6xi64>
        %301 = linalg.matmul ins(%12, %12 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%300 : tensor<6x6xi64>) -> tensor<6x6xi64>
        %302 = arith.maxsi %false_22, %out : i1
        %303 = math.exp2 %22 : tensor<1xf32>
        %304 = arith.maxf %cst_0, %cst_0 : f16
        %alloc_50 = memref.alloc() : memref<6x6xf32>
        %305 = math.log %91 : f32
        %306 = math.cos %19 : tensor<f32>
        %307 = vector.broadcast %false_5 : i1 to vector<1x1xi1>
        %308 = math.tan %cst_0 : f16
        %inserted_51 = tensor.insert %false_5 into %5[%c3, %c4] : tensor<6x6xi1>
        %309 = arith.minui %c948921394_i64, %c948921394_i64 : i64
        %extracted_52 = tensor.extract %12[%c4, %c1] : tensor<6x6xi64>
        %310 = vector.transpose %139, [0] : vector<1xi16> to vector<1xi16>
        %311 = vector.create_mask %c11, %158 : vector<1x1xi1>
        %312 = math.absi %8 : tensor<6x6xi1>
        %313 = math.log2 %24 : tensor<f32>
        affine.store %extracted, %118[%c7] : memref<1xi32>
        %rank_53 = tensor.rank %13 : tensor<1x1xi16>
        %314 = math.round %from_elements_41 : tensor<1xf32>
        %315 = arith.shrui %false_3, %true_25 : i1
        %316 = math.round %9 : tensor<1xf16>
        linalg.yield %false_22 : i1
      } -> tensor<6x6x1xi1>
      %276 = index.maxu %131, %131
      %277 = arith.cmpf ult, %cst_0, %cst_0 : f16
      %278 = math.log %from_elements_41 : tensor<1xf32>
      %279 = math.log1p %9 : tensor<1xf16>
      %280 = tensor.empty() : tensor<1x1xi32>
      %281 = math.fpowi %7, %280 : tensor<1x1xf32>, tensor<1x1xi32>
      %282 = vector.load %alloc_18[%c3, %c2] : memref<6x6xf32>, vector<1xf32>
      %283 = arith.shli %extracted, %extracted : i32
      %284 = index.maxu %c3, %rank
      %285 = affine.for %arg1 = 0 to 61 iter_args(%arg2 = %18) -> (tensor<1x1xi64>) {
        affine.yield %transposed : tensor<1x1xi64>
      }
      %286 = vector.flat_transpose %180 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %287 = math.exp2 %cst : f32
      %288 = math.copysign %19, %19 : tensor<f32>
      %289 = arith.remsi %c1441311434_i64, %c510588895_i64 : i64
      memref.alloca_scope.return %false_22 : i1
    }
    %239 = vector.create_mask %c11 : vector<1xi1>
    %240 = index.maxu %213, %c12
    %241 = affine.load %alloc_8[%c6, %c0] : memref<1x1xi64>
    %242 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %106, %108, %239 : vector<1x1xi1>, vector<1xi1> into vector<1xi1>
    vector.print %34 : vector<6x6xi1>
    %243 = math.log10 %expanded : tensor<1x1xf32>
    %244 = arith.minf %91, %cst : f32
    %245 = index.ceildivu %c13, %131
    %246 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %180, %181, %cst_0 : vector<1xf16>, vector<1xf16> into f16
    %247 = math.tanh %cst_0 : f16
    affine.store %c16388_i16, %alloc_7[%c13] : memref<1xi16>
    %248 = affine.load %196[%c9] : memref<1xf16>
    memref.tensor_store %9, %alloc_10 : memref<1xf16>
    %249 = math.roundeven %7 : tensor<1x1xf32>
    %250 = vector.extract_strided_slice %180 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
    %251 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
    %dest_42, %accumulated_value_43 = vector.scan <add>, %223, %251 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
    %252 = tensor.empty() : tensor<6x6xf16>
    %253 = linalg.copy ins(%0 : tensor<6x6xf16>) outs(%252 : tensor<6x6xf16>) -> tensor<6x6xf16>
    %254 = tensor.empty() : tensor<1xi32>
    %transposed_44 = linalg.transpose ins(%14 : tensor<1xi32>) outs(%254 : tensor<1xi32>) permutation = [0] 
    %255 = tensor.empty() : tensor<f32>
    %reduced_45 = linalg.reduce ins(%7 : tensor<1x1xf32>) outs(%255 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %258 = math.atan2 %cst_4, %cst : f32
        %259 = arith.maxui %238, %true_35 : i1
        %260 = vector.extract_strided_slice %35 {offsets = [4], sizes = [2], strides = [1]} : vector<6x6xi32> to vector<2x6xi32>
        %261 = arith.negf %91 : f32
        %262 = affine.max affine_map<(d0, d1, d2) -> ((-(d2 ceildiv 16)) ceildiv 2, -(d2 ceildiv 16))>(%158, %145, %c9)
        %263 = scf.while (%arg1 = %166) : (vector<6xi1>) -> vector<6xi1> {
          %265 = vector.multi_reduction <mul>, %21, %21 [] : vector<10xf32> to vector<10xf32>
          %266 = index.ceildivs %226, %c1
          %267 = math.tanh %7 : tensor<1x1xf32>
          %268 = vector.create_mask %31 : vector<1xi1>
          memref.copy %alloc_7, %alloc_15 : memref<1xi16> to memref<1xi16>
          %true_47 = arith.constant true
          %269 = math.log1p %cst_0 : f16
          %cast_48 = tensor.cast %6 : tensor<1x1xi64> to tensor<?x?xi64>
          scf.condition(%true_35) %166 : vector<6xi1>
        } do {
        ^bb0(%arg1: vector<6xi1>):
          %265 = math.log2 %cst : f32
          %266 = math.powf %24, %255 : tensor<f32>
          %267 = vector.transpose %260, [1, 0] : vector<2x6xi32> to vector<6x2xi32>
          %268 = vector.reduction <mul>, %56 : vector<1xi32> into i32
          %269 = arith.minf %cst, %cst_1 : f32
          %270 = arith.shli %false_2, %238 : i1
          %271 = math.atan2 %7, %7 : tensor<1x1xf32>
          %272 = math.exp2 %from_elements_41 : tensor<1xf32>
          %273 = math.log1p %from_elements_41 : tensor<1xf32>
          %274 = math.powf %from_elements_28, %from_elements_28 : tensor<1xf16>
          %275 = math.cttz %4 : tensor<1x1xi64>
          %276 = vector.bitcast %100 : vector<1x1xi1> to vector<1x1xi1>
          %277 = arith.divf %cst_0, %cst_0 : f16
          %278 = math.sqrt %cst_1 : f32
          %279 = math.round %expanded : tensor<1x1xf32>
          %280 = arith.andi %false_22, %true_35 : i1
          scf.yield %166 : vector<6xi1>
        }
        memref.assume_alignment %alloc_19, 8 : memref<1x1xf32>
        %264 = bufferization.to_tensor %alloc_6 : memref<1xi64>
        %cst_46 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_46 : f32
      }
    scf.parallel (%arg1) = (%161) to (%rank_38) step (%c1) {
      %258 = tensor.empty() : tensor<1x1xf32>
      %mapped_46 = linalg.map ins(%alloc_19 : memref<1x1xf32>) outs(%258 : tensor<1x1xf32>)
        (%in: f32) {
          %273 = math.rsqrt %reduced : tensor<f32>
          %274 = memref.atomic_rmw maxf %cst_0, %alloc_10[%c0] : (f16, memref<1xf16>) -> f16
          memref.copy %196, %alloc_10 : memref<1xf16> to memref<1xf16>
          %275 = math.atan2 %24, %reduced_45 : tensor<f32>
          %276 = bufferization.clone %118 : memref<1xi32> to memref<1xi32>
          %277 = math.exp2 %253 : tensor<6x6xf16>
          %278 = math.cttz %6 : tensor<1x1xi64>
          %279 = index.sizeof
          %280 = vector.transpose %71, [0, 1] : vector<6x6xf16> to vector<6x6xf16>
          memref.tensor_store %2, %alloc_13 : memref<1xf32>
          %281 = arith.maxsi %c1441311434_i64, %c1441311434_i64 : i64
          %282 = vector.broadcast %c7 : index to vector<6xindex>
          %283 = vector.broadcast %c1441311434_i64 : i64 to vector<6xi64>
          vector.scatter %alloc_11[%c4, %c2] [%282], %166, %283 : memref<6x6xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
          %284 = index.castu %245 : index to i32
          %285 = math.round %253 : tensor<6x6xf16>
          %collapsed = tensor.collapse_shape %253 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
          %alloc_48 = memref.alloc() : memref<1xf32>
          %alloca_49 = memref.alloca() : memref<1xi16>
          %286 = vector.transpose %211, [0, 1] : vector<6x6xi1> to vector<6x6xi1>
          %287 = arith.ceildivsi %false, %true : i1
          %288 = math.log10 %24 : tensor<f32>
          %289 = math.ctlz %c1_i32 : i32
          %290 = arith.mulf %cst, %cst_1 : f32
          %291 = math.sqrt %collapsed : tensor<36xf16>
          %292 = arith.maxf %cst_4, %in : f32
          %293 = arith.shli %c510588895_i64, %241 : i64
          bufferization.dealloc_tensor %74 : tensor<6x6xf16>
          %294 = math.log2 %0 : tensor<6x6xf16>
          %295 = vector.gather %from_elements_28[%c10] [%101], %100, %208 : tensor<1xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
          %296 = vector.create_mask %c0 : vector<1xi1>
          %297 = bufferization.to_memref %9 : memref<1xf16>
          %298 = memref.load %alloc[%c0] : memref<1xi1>
          %299 = arith.muli %false, %false_22 : i1
          %cst_50 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_50 : f32
        }
      %259 = math.log1p %expanded : tensor<1x1xf32>
      %260 = arith.maxui %true, %false_3 : i1
      %261 = tensor.empty() : tensor<6x6xi1>
      %mapped_47 = linalg.map ins(%16, %8, %16 : tensor<6x6xi1>, tensor<6x6xi1>, tensor<6x6xi1>) outs(%261 : tensor<6x6xi1>)
        (%in: i1, %in_48: i1, %in_49: i1) {
          %273 = vector.broadcast %cst_4 : f32 to vector<f32>
          %274 = vector.transfer_write %273, %22[%160] : vector<f32>, tensor<1xf32>
          %275 = index.divs %31, %c12
          %276 = arith.muli %c510588895_i64, %c948921394_i64 : i64
          %277 = math.exp2 %74 : tensor<6x6xf16>
          %278 = math.cttz %in : i1
          %279 = math.absi %16 : tensor<6x6xi1>
          %280 = memref.load %130[%c0] : memref<1xi32>
          %281 = arith.maxsi %false_22, %238 : i1
          %282 = vector.load %alloc_8[%c0, %c0] : memref<1x1xi64>, vector<1xi64>
          %283 = math.absi %from_elements : tensor<1xi16>
          %284 = vector.broadcast %c948921394_i64 : i64 to vector<1x1xi64>
          %285 = vector.outerproduct %184, %184, %284 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
          %286 = arith.shli %true_35, %false : i1
          %287 = math.log %23 : tensor<f32>
          %288 = math.roundeven %expanded : tensor<1x1xf32>
          %289 = math.cttz %false_3 : i1
          %290 = index.maxu %236, %c9
          %cst_50 = arith.constant 7.194780e+08 : f32
          %291 = math.log1p %9 : tensor<1xf16>
          memref.store %c1_i32, %alloc_14[%c1, %c0] : memref<6x6xi32>
          %292 = index.ceildivs %149, %c13
          %293 = memref.load %alloc_7[%c0] : memref<1xi16>
          %true_51 = arith.constant true
          %294 = arith.ceildivsi %true_35, %false_22 : i1
          %295 = index.ceildivs %c8, %c8
          %296 = math.absf %splat : tensor<1x1xf32>
          %297 = vector.insertelement %c1_i32, %210[%rank_38 : index] : vector<1xi32>
          %298 = vector.broadcast %cst_4 : f32 to vector<6x6xf32>
          %299 = vector.gather %203[%arg1, %c8] [%35], %211, %298 : memref<6x6xf32>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xf32> into vector<6x6xf32>
          %300 = vector.broadcast %rank : index to vector<6xindex>
          %301 = vector.broadcast %c948921394_i64 : i64 to vector<6xi64>
          vector.scatter %alloc_6[%c0] [%300], %166, %301 : memref<1xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
          %302 = arith.muli %in_49, %in : i1
          %303 = math.exp2 %11 : tensor<1xf32>
          %304 = index.ceildivs %275, %c11
          %305 = index.casts %arg1 : index to i32
          %true_52 = arith.constant true
          linalg.yield %true_52 : i1
        }
      %262 = scf.if %false -> (memref<6x6xf16>) {
        %273 = math.log1p %cst_1 : f32
        %274 = math.rsqrt %22 : tensor<1xf32>
        %275 = arith.remui %false_22, %false_2 : i1
        %276 = math.exp2 %expanded : tensor<1x1xf32>
        %277 = vector.transpose %108, [0] : vector<1xi1> to vector<1xi1>
        %278 = math.round %252 : tensor<6x6xf16>
        %279 = vector.broadcast %false_2 : i1 to vector<1xi1>
        %280 = arith.minsi %c167884984_i64, %c167884984_i64 : i64
        %alloc_48 = memref.alloc() : memref<6x6xf16>
        scf.yield %alloc_48 : memref<6x6xf16>
      } else {
        %273 = arith.mulf %cst, %cst : f32
        %cast_48 = tensor.cast %0 : tensor<6x6xf16> to tensor<?x?xf16>
        %rank_49 = tensor.rank %2 : tensor<1xf32>
        %274 = tensor.empty() : tensor<1x1xi64>
        %275 = linalg.matmul ins(%6, %18 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%274 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %c21774_i16 = arith.constant 21774 : i16
        %276 = index.sizeof
        %277 = math.tan %248 : f16
        %alloc_50 = memref.alloc() : memref<6x6xf16>
        memref.tensor_store %253, %alloc_50 : memref<6x6xf16>
        %alloc_51 = memref.alloc() : memref<6x6xf16>
        scf.yield %alloc_51 : memref<6x6xf16>
      }
      %263 = affine.max affine_map<(d0, d1) -> (-d1, -d1, -d0 - 2)>(%c13, %c5)
      %264 = arith.minsi %true_35, %true_35 : i1
      %265 = affine.load %alloc_9[%c5] : memref<1xi32>
      %266 = arith.minsi %c167884984_i64, %c167884984_i64 : i64
      %267 = arith.minf %cst_1, %cst : f32
      affine.store %c167884984_i64, %alloc_8[%c11, %c10] : memref<1x1xi64>
      %268 = math.ctlz %14 : tensor<1xi32>
      %269 = arith.cmpi ugt, %c1441311434_i64, %c1441311434_i64 : i64
      %270 = vector.insert %265, %83 [0] : i32 into vector<1xi32>
      %271 = arith.remf %91, %cst_1 : f32
      %272 = math.round %from_elements_28 : tensor<1xf16>
      scf.yield
    }
    %256 = affine.vector_load %alloc_18[%149, %96] : memref<6x6xf32>, vector<10xf32>
    affine.vector_store %21, %alloc_13[%rank_38] : memref<1xf32>, vector<10xf32>
    vector.print %21 : vector<10xf32>
    vector.print %34 : vector<6x6xi1>
    vector.print %35 : vector<6x6xi32>
    vector.print %36 : vector<6x6xi1>
    vector.print %47 : vector<1xi64>
    vector.print %56 : vector<1xi32>
    vector.print %70 : vector<6x6xf16>
    vector.print %71 : vector<6x6xf16>
    vector.print %83 : vector<1xi32>
    vector.print %94 : vector<2x6xf16>
    vector.print %99 : vector<1x1xf32>
    vector.print %100 : vector<1x1xi1>
    vector.print %101 : vector<1x1xi32>
    vector.print %102 : vector<1x1xf32>
    vector.print %106 : vector<1x1xi1>
    vector.print %108 : vector<1xi1>
    vector.print %134 : vector<1xi64>
    vector.print %139 : vector<1xi16>
    vector.print %154 : vector<1xi64>
    vector.print %166 : vector<6xi1>
    vector.print %173 : vector<1x1xf32>
    vector.print %180 : vector<1xf16>
    vector.print %181 : vector<1xf16>
    vector.print %184 : vector<1xi64>
    vector.print %189 : vector<i32>
    vector.print %208 : vector<1x1xf16>
    vector.print %210 : vector<1xi32>
    vector.print %211 : vector<6x6xi1>
    vector.print %220 : vector<1xi32>
    vector.print %223 : vector<6x6xi32>
    vector.print %239 : vector<1xi1>
    vector.print %250 : vector<1xf16>
    vector.print %256 : vector<10xf32>
    vector.print %c1441311434_i64 : i64
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %c32458_i16 : i16
    vector.print %c28390_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c510588895_i64 : i64
    vector.print %cst_1 : f32
    vector.print %false_2 : i1
    vector.print %c167884984_i64 : i64
    vector.print %false_3 : i1
    vector.print %c16388_i16 : i16
    vector.print %cst_4 : f32
    vector.print %true : i1
    vector.print %false_5 : i1
    vector.print %c948921394_i64 : i64
    vector.print %false_22 : i1
    vector.print %c1_i32 : i32
    vector.print %true_25 : i1
    vector.print %91 : f32
    vector.print %true_35 : i1
    vector.print %238 : i1
    vector.print %241 : i64
    vector.print %248 : f16
    %257 = tensor.empty() : tensor<6x6xi16>
    return %257 : tensor<6x6xi16>
  }
}
