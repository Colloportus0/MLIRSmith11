module {
  func.func @func1(%arg0: tensor<1x1x12xi1>, %arg1: index, %arg2: index) -> index {
    %cst = arith.constant 1.93549632E+9 : f32
    %true = arith.constant true
    %cst_0 = arith.constant 1.60062451E+9 : f32
    %c334741408_i64 = arith.constant 334741408 : i64
    %cst_1 = arith.constant 0x4E32942D : f32
    %cst_2 = arith.constant 2.168000e+04 : f16
    %c25215_i16 = arith.constant 25215 : i16
    %false = arith.constant false
    %c576309929_i32 = arith.constant 576309929 : i32
    %c741381943_i64 = arith.constant 741381943 : i64
    %false_3 = arith.constant false
    %c-17629_i16 = arith.constant -17629 : i16
    %c1141004266_i64 = arith.constant 1141004266 : i64
    %c1169671983_i64 = arith.constant 1169671983 : i64
    %c2144033552_i64 = arith.constant 2144033552 : i64
    %cst_4 = arith.constant 1.37253747E+9 : f32
    %0 = tensor.empty() : tensor<12x4xi32>
    %1 = tensor.empty() : tensor<4xi1>
    %2 = tensor.empty() : tensor<1x1x12xi16>
    %3 = tensor.empty() : tensor<4xi1>
    %4 = tensor.empty() : tensor<12x4xi16>
    %5 = tensor.empty() : tensor<12x4xi64>
    %6 = tensor.empty() : tensor<12x4xf32>
    %7 = tensor.empty() : tensor<12x4xi64>
    %8 = tensor.empty() : tensor<1x4xi32>
    %9 = tensor.empty() : tensor<4xi16>
    %10 = tensor.empty() : tensor<1x4xi16>
    %11 = tensor.empty() : tensor<4xi1>
    %12 = tensor.empty() : tensor<1x4xf16>
    %13 = tensor.empty() : tensor<4xi32>
    %14 = tensor.empty() : tensor<4xi16>
    %15 = tensor.empty() : tensor<4xi1>
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
    %alloc = memref.alloc() : memref<1x1x12xf16>
    %alloc_5 = memref.alloc() : memref<12x4xf16>
    %alloc_6 = memref.alloc() : memref<4xi64>
    %alloc_7 = memref.alloc() : memref<4xf16>
    %alloc_8 = memref.alloc() : memref<4xi64>
    %alloc_9 = memref.alloc() : memref<1x4xf16>
    %alloc_10 = memref.alloc() : memref<12x4xi64>
    %alloc_11 = memref.alloc() : memref<12x4xi64>
    %alloc_12 = memref.alloc() : memref<4xf16>
    %alloc_13 = memref.alloc() : memref<4xi1>
    %alloc_14 = memref.alloc() : memref<4xi64>
    %alloc_15 = memref.alloc() : memref<1x1x12xi64>
    %alloc_16 = memref.alloc() : memref<4xf32>
    %alloc_17 = memref.alloc() : memref<1x1x12xi16>
    %alloc_18 = memref.alloc() : memref<4xi1>
    %alloc_19 = memref.alloc() : memref<4xi1>
    %16 = tensor.empty() : tensor<4xi1>
    %17 = linalg.copy ins(%15 : tensor<4xi1>) outs(%16 : tensor<4xi1>) -> tensor<4xi1>
    %alloc_20 = memref.alloc() : memref<12x1x1xi64>
    linalg.transpose ins(%alloc_15 : memref<1x1x12xi64>) outs(%alloc_20 : memref<12x1x1xi64>) permutation = [2, 0, 1] 
    %alloc_21 = memref.alloc() : memref<i1>
    linalg.reduce ins(%15 : tensor<4xi1>) outs(%alloc_21 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %alloca_44 = memref.alloca() : memref<1x4xi64>
        %264 = index.maxs %c8, %c11
        %265 = arith.maxsi %init, %false_3 : i1
        %266 = arith.minui %c2144033552_i64, %c741381943_i64 : i64
        %267 = bufferization.to_tensor %alloc_13 : memref<4xi1>
        %268 = affine.max affine_map<(d0, d1) -> (-d1 + 64, d0 - d1 + 8, d1)>(%c2, %c1)
        %269 = vector.create_mask %c2, %c13 : vector<12x4xi1>
        %270 = tensor.empty(%c4, %c13) : tensor<?x1x?xi1>
        %true_45 = arith.constant true
        linalg.yield %true_45 : i1
      }
    scf.parallel (%arg3) = (%c6) to (%c14) step (%c7) {
      %264 = math.powf %cst_2, %cst_2 : f16
      %265 = arith.cmpi ult, %false, %false : i1
      %266 = math.tan %cst_1 : f32
      %267 = tensor.empty() : tensor<1xi16>
      %268 = tensor.empty() : tensor<1x12x1xi16>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %267, %268 : memref<1x1x12xi16>, tensor<1xi16>, tensor<1x12x1xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_45: i16, %in_46: i16, %out: i16):
        %284 = vector.broadcast %true : i1 to vector<12xi1>
        %285 = vector.reduction <mul>, %284 : vector<12xi1> into i1
        %286 = math.sqrt %12 : tensor<1x4xf16>
        %287 = index.sub %c8, %c9
        %288 = arith.ceildivsi %c576309929_i32, %c576309929_i32 : i32
        %289 = math.log1p %12 : tensor<1x4xf16>
        memref.assume_alignment %alloc_18, 8 : memref<4xi1>
        %290 = index.ceildivu %c2, %c4
        %291 = vector.broadcast %c576309929_i32 : i32 to vector<12xi32>
        %292 = vector.broadcast %c576309929_i32 : i32 to vector<12x12xi32>
        %293 = vector.outerproduct %291, %291, %292 {kind = #vector.kind<add>} : vector<12xi32>, vector<12xi32>
        %294 = vector.broadcast %c576309929_i32 : i32 to vector<1x1x12xi32>
        %295 = vector.broadcast %cst_0 : f32 to vector<12x4xf32>
        %296 = vector.fma %295, %295, %295 : vector<12x4xf32>
        %297 = arith.cmpi uge, %in_46, %c-17629_i16 : i16
        %298 = vector.broadcast %in_45 : i16 to vector<4xi16>
        %299 = vector.reduction <xor>, %298 : vector<4xi16> into i16
        %300 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %301 = vector.broadcast %cst_2 : f16 to vector<4x4xf16>
        %302 = vector.outerproduct %300, %300, %301 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
        %303 = bufferization.clone %alloc_16 : memref<4xf32> to memref<4xf32>
        %304 = vector.broadcast %cst_0 : f32 to vector<1xf32>
        %305 = vector.flat_transpose %304 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %306 = tensor.empty() : tensor<4x1xi32>
        %307 = tensor.empty() : tensor<12x1xi32>
        %308 = linalg.matmul ins(%0, %306 : tensor<12x4xi32>, tensor<4x1xi32>) outs(%307 : tensor<12x1xi32>) -> tensor<12x1xi32>
        %309 = arith.ceildivsi %false, %false_3 : i1
        %310 = index.casts %c2144033552_i64 : i64 to index
        %311 = bufferization.clone %alloc : memref<1x1x12xf16> to memref<1x1x12xf16>
        %alloca_47 = memref.alloca() : memref<4xi16>
        %312 = math.log10 %cst_2 : f16
        %313 = arith.addf %cst_0, %cst_0 : f32
        %314 = tensor.empty() : tensor<1x4xi32>
        %315 = arith.minui %in_45, %out : i16
        %316 = vector.broadcast %c576309929_i32 : i32 to vector<i32>
        %317 = vector.transfer_write %316, %307[%c11, %c15] : vector<i32>, tensor<12x1xi32>
        %318 = math.ceil %cst_0 : f32
        %319 = vector.extract_strided_slice %296 {offsets = [8], sizes = [2], strides = [1]} : vector<12x4xf32> to vector<2x4xf32>
        %320 = bufferization.to_tensor %303 : memref<4xf32>
        %321 = index.ceildivs %c0, %287
        %322 = vector.splat %cst_0 : vector<1x4xf32>
        %323 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %324 = vector.fma %323, %323, %323 : vector<4xf32>
        %325 = math.log10 %cst : f32
        %326 = arith.addi %true, %false_3 : i1
        linalg.yield %out : i16
      } -> tensor<1x1x12xi16>
      %270 = index.mul %c13, %c12
      %271 = math.ipowi %true, %true : i1
      %272 = math.log %cst_0 : f32
      %273 = vector.broadcast %false : i1 to vector<7xi1>
      %274 = vector.maskedload %alloc_21[], %273, %273 : memref<i1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %275 = arith.minsi %true, %true : i1
      %276 = tensor.empty() : tensor<4x4xi64>
      %277 = tensor.empty() : tensor<12x4xi64>
      %278 = linalg.matmul ins(%5, %276 : tensor<12x4xi64>, tensor<4x4xi64>) outs(%277 : tensor<12x4xi64>) -> tensor<12x4xi64>
      %279 = arith.addi %c334741408_i64, %c334741408_i64 : i64
      %280 = math.exp2 %12 : tensor<1x4xf16>
      %generated_44 = tensor.generate %c12 {
      ^bb0(%arg4: index, %arg5: index):
        %alloca_45 = memref.alloca() : memref<12x4xi32>
        %284 = bufferization.to_tensor %alloc_14 : memref<4xi64>
        %285 = affine.min affine_map<(d0, d1, d2) -> ((d1 + -d2 + 16) * 128, d1, d1)>(%c12, %c11, %c12)
        %286 = vector.matrix_multiply %273, %274 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        tensor.yield %cst_2 : f16
      } : tensor<?x4xf16>
      %281 = arith.divui %false, %false : i1
      %282 = math.log2 %cst_1 : f32
      %283 = arith.divui %c576309929_i32, %c576309929_i32 : i32
      scf.yield
    }
    %18 = affine.vector_load %alloc_21[] : memref<i1>, vector<12xi1>
    affine.vector_store %18, %alloc_18[%c11] : memref<4xi1>, vector<12xi1>
    %alloc_22 = memref.alloc() : memref<4xi32>
    %19 = tensor.empty() : tensor<i32>
    %20 = linalg.dot ins(%13, %alloc_22 : tensor<4xi32>, memref<4xi32>) outs(%19 : tensor<i32>) -> tensor<i32>
    %21 = math.fpowi %cst_0, %c576309929_i32 : f32, i32
    %22 = vector.broadcast %cst_4 : f32 to vector<4xf32>
    %23 = vector.fma %22, %22, %22 : vector<4xf32>
    %24 = vector.load %alloc_21[] : memref<i1>, vector<12x4xi1>
    %splat = tensor.splat %false_3 : tensor<1x4xi1>
    %25 = index.castu %c14 : index to i32
    memref.alloca_scope  {
      %264 = arith.minsi %false, %false : i1
      %alloc_44 = memref.alloc() : memref<4x1xf16>
      %265 = tensor.empty() : tensor<1x1xf16>
      %266 = linalg.matmul ins(%12, %alloc_44 : tensor<1x4xf16>, memref<4x1xf16>) outs(%265 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %267 = vector.bitcast %24 : vector<12x4xi1> to vector<12x4xi1>
      %268 = index.add %c7, %c8
      %269 = index.divu %c13, %c2
      %270 = vector.matrix_multiply %18, %18 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %271 = arith.minsi %c2144033552_i64, %c1141004266_i64 : i64
      %272 = math.fpowi %cst_2, %c576309929_i32 : f16, i32
      %273 = vector.broadcast %false : i1 to vector<1x1xi1>
      %274 = vector.outerproduct %270, %270, %273 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
      vector.print %24 : vector<12x4xi1>
      %275 = bufferization.clone %alloc : memref<1x1x12xf16> to memref<1x1x12xf16>
      %276 = memref.alloca_scope  -> (memref<4xf16>) {
        %294 = arith.maxf %cst_0, %cst_0 : f32
        %295 = vector.broadcast %cst_4 : f32 to vector<1x1x12xf32>
        %296 = vector.fma %295, %295, %295 : vector<1x1x12xf32>
        %297 = bufferization.to_memref %5 : memref<12x4xi64>
        %298 = arith.mulf %cst_4, %cst_4 : f32
        %299 = index.castu %c576309929_i32 : i32 to index
        %300 = arith.remsi %false_3, %true : i1
        %301 = vector.reduction <add>, %22 : vector<4xf32> into f32
        %alloca_46 = memref.alloca() : memref<1x4xf16>
        %302 = vector.transpose %296, [0, 1, 2] : vector<1x1x12xf32> to vector<1x1x12xf32>
        %alloc_47 = memref.alloc() : memref<1x1x12xi32>
        %303 = vector.broadcast %c576309929_i32 : i32 to vector<1x4xi32>
        %304 = vector.broadcast %false : i1 to vector<1x4xi1>
        %305 = vector.gather %alloc_47[%c10, %c1, %c11] [%303], %304, %303 : memref<1x1x12xi32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi32> into vector<1x4xi32>
        %306 = arith.divf %cst_1, %cst_0 : f32
        memref.copy %alloc_11, %297 : memref<12x4xi64> to memref<12x4xi64>
        %307 = index.mul %c8, %c2
        %308 = arith.minf %cst_1, %cst_4 : f32
        %309 = vector.multi_reduction <xor>, %304, %false_3 [0, 1] : vector<1x4xi1> to i1
        %310 = index.add %c8, %269
        %311 = vector.shuffle %22, %22 [0, 1, 2, 4, 5, 7] : vector<4xf32>, vector<4xf32>
        %312 = arith.cmpf ugt, %cst_2, %cst_2 : f16
        %313 = bufferization.to_tensor %alloc : memref<1x1x12xf16>
        %314 = index.maxs %c5, %c12
        %315 = index.sizeof
        %316 = arith.minui %c1169671983_i64, %c1169671983_i64 : i64
        %317 = math.powf %cst, %cst_4 : f32
        %318 = math.rsqrt %265 : tensor<1x1xf16>
        %319 = memref.atomic_rmw ori %c741381943_i64, %alloc_20[%c9, %c0, %c0] : (i64, memref<12x1x1xi64>) -> i64
        %320 = index.casts %c1141004266_i64 : i64 to index
        %321 = arith.maxsi %c1169671983_i64, %c1169671983_i64 : i64
        memref.copy %alloc_8, %alloc_14 : memref<4xi64> to memref<4xi64>
        %322 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c12, %c10, %c4)
        %323 = arith.minf %cst_2, %cst_2 : f16
        %324 = arith.andi %c1141004266_i64, %c1141004266_i64 : i64
        %325 = math.exp2 %6 : tensor<12x4xf32>
        memref.alloca_scope.return %alloc_7 : memref<4xf16>
      }
      %277 = bufferization.to_memref %11 : memref<4xi1>
      vector.print %24 : vector<12x4xi1>
      %278 = arith.divsi %c-17629_i16, %c25215_i16 : i16
      %279 = arith.ceildivsi %false_3, %false : i1
      memref.store %cst_2, %275[%c0, %c0, %c2] : memref<1x1x12xf16>
      %280 = vector.extract_strided_slice %270 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %281 = vector.broadcast %c2144033552_i64 : i64 to vector<i64>
      vector.transfer_write %281, %alloc_8[%c12] : vector<i64>, memref<4xi64>
      %282 = math.log2 %6 : tensor<12x4xf32>
      %283 = arith.maxsi %false_3, %false_3 : i1
      %284 = arith.minui %false, %true : i1
      %285 = vector.extract_strided_slice %18 {offsets = [0], sizes = [6], strides = [1]} : vector<12xi1> to vector<6xi1>
      %286 = vector.extract_strided_slice %24 {offsets = [10], sizes = [1], strides = [1]} : vector<12x4xi1> to vector<1x4xi1>
      %287 = vector.broadcast %false : i1 to vector<1x1xi1>
      %288 = vector.outerproduct %270, %280, %287 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
      %289 = math.powf %cst_0, %cst_0 : f32
      memref.tensor_store %15, %alloc_19 : memref<4xi1>
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<1x1x12xi16> into tensor<1x12xi16>
      %290 = arith.addf %cst_1, %cst : f32
      %291 = bufferization.to_tensor %alloc_16 : memref<4xf32>
      %292 = math.exp2 %6 : tensor<12x4xf32>
      %293 = arith.addi %c334741408_i64, %c334741408_i64 : i64
    }
    %26 = math.round %cst_2 : f16
    %27 = tensor.empty() : tensor<4x12xf32>
    %28 = tensor.empty() : tensor<12x12xf32>
    %29 = linalg.matmul ins(%6, %27 : tensor<12x4xf32>, tensor<4x12xf32>) outs(%28 : tensor<12x12xf32>) -> tensor<12x12xf32>
    %30 = vector.flat_transpose %22 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %31 = arith.ceildivsi %c741381943_i64, %c2144033552_i64 : i64
    %32 = index.casts %c1141004266_i64 : i64 to index
    %33 = index.ceildivs %c9, %32
    %34 = vector.shuffle %23, %30 [2, 4, 5, 6, 7] : vector<4xf32>, vector<4xf32>
    %35 = index.floordivs %c1, %c8
    %36 = math.ipowi %splat, %splat : tensor<1x4xi1>
    %37 = math.copysign %cst, %cst_4 : f32
    %38 = arith.minui %c-17629_i16, %c-17629_i16 : i16
    %39 = vector.load %alloc_16[%c1] : memref<4xf32>, vector<4xf32>
    %40 = index.mul %c9, %c4
    %41 = memref.realloc %alloc_22 : memref<4xi32> to memref<7xi32>
    %42 = vector.transpose %23, [0] : vector<4xf32> to vector<4xf32>
    scf.execute_region {
      %264 = vector.splat %cst_1 : vector<4xf32>
      %cast = tensor.cast %19 : tensor<i32> to tensor<i32>
      %true_44 = index.bool.constant true
      affine.store %c741381943_i64, %alloc_20[%c2, %c3, %c0] : memref<12x1x1xi64>
      %265 = math.absf %cst_4 : f32
      %266 = math.cttz %11 : tensor<4xi1>
      %267 = math.log10 %cst_4 : f32
      %268 = math.ctpop %c2144033552_i64 : i64
      memref.assume_alignment %alloc_10, 1 : memref<12x4xi64>
      %269 = vector.extract_strided_slice %24 {offsets = [2], sizes = [5], strides = [1]} : vector<12x4xi1> to vector<5x4xi1>
      %270 = math.ipowi %8, %8 : tensor<1x4xi32>
      %271 = index.casts %c-17629_i16 : i16 to index
      %272 = arith.cmpi ule, %c1169671983_i64, %c1169671983_i64 : i64
      %generated_45 = tensor.generate %40, %c7 {
      ^bb0(%arg3: index, %arg4: index):
        %274 = vector.shuffle %30, %30 [0, 1, 2, 3, 4, 6, 7] : vector<4xf32>, vector<4xf32>
        %275 = index.castu %c25215_i16 : i16 to index
        %276 = arith.shli %c2144033552_i64, %c1141004266_i64 : i64
        %277 = bufferization.clone %alloc_22 : memref<4xi32> to memref<4xi32>
        tensor.yield %cst_2 : f16
      } : tensor<?x?xf16>
      %alloca_46 = memref.alloca() : memref<1x4xf16>
      %273 = math.cttz %4 : tensor<12x4xi16>
      scf.yield
    }
    %43 = vector.reduction <minf>, %30 : vector<4xf32> into f32
    %splat_23 = tensor.splat %cst_1 : tensor<1x1x12xf32>
    bufferization.dealloc_tensor %splat_23 : tensor<1x1x12xf32>
    %44 = affine.for %arg3 = 0 to 80 iter_args(%arg4 = %19) -> (tensor<i32>) {
      affine.yield %arg4 : tensor<i32>
    }
    %45 = tensor.empty(%35, %c12) : tensor<?x?xf32>
    %46 = vector.matrix_multiply %23, %23 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %47 = vector.bitcast %30 : vector<4xf32> to vector<4xf32>
    %48 = vector.broadcast %c576309929_i32 : i32 to vector<i32>
    vector.transfer_write %48, %alloc_22[%c7] : vector<i32>, memref<4xi32>
    %49 = bufferization.clone %alloc_19 : memref<4xi1> to memref<4xi1>
    %50 = arith.minui %false_3, %false : i1
    %51 = index.ceildivs %32, %c1
    %52 = arith.andi %c1141004266_i64, %c1141004266_i64 : i64
    %53 = index.mul %c6, %c11
    affine.store %false_3, %alloc_13[%c9] : memref<4xi1>
    %54 = arith.divui %c1169671983_i64, %c741381943_i64 : i64
    memref.alloca_scope  {
      %264 = vector.flat_transpose %39 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %265 = arith.divf %cst_1, %cst_4 : f32
      %266 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - (-d1 + d2) - 16, (d1 - (-d1 + d2)) floordiv 4 - 4, d3, d0)>(%c10, %51, %53, %33)
      %267 = arith.cmpi ule, %c741381943_i64, %c1141004266_i64 : i64
      %268 = math.floor %cst_1 : f32
      %generated_44 = tensor.generate %33 {
      ^bb0(%arg3: index):
        %294 = arith.addi %c576309929_i32, %c576309929_i32 : i32
        %295 = vector.broadcast %c25215_i16 : i16 to vector<i16>
        %296 = vector.transfer_write %295, %4[%53, %51] : vector<i16>, tensor<12x4xi16>
        %297 = arith.cmpi sle, %false_3, %false_3 : i1
        %298 = vector.create_mask %33, %33, %51 : vector<1x1x12xi1>
        tensor.yield %c1141004266_i64 : i64
      } : tensor<?xi64>
      %269 = index.mul %266, %c6
      %270 = vector.broadcast %c334741408_i64 : i64 to vector<1xi64>
      %271 = vector.broadcast %true : i1 to vector<1xi1>
      %272 = vector.maskedload %alloc_11[%c5, %c3], %271, %270 : memref<12x4xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
      %273 = memref.alloca_scope  -> (f16) {
        %294 = arith.maxui %true, %true : i1
        %295 = index.casts %false_3 : i1 to index
        %296 = math.exp2 %cst_4 : f32
        %297 = math.absi %c-17629_i16 : i16
        %298 = math.rsqrt %6 : tensor<12x4xf32>
        %299 = math.sqrt %12 : tensor<1x4xf16>
        %true_47 = index.bool.constant true
        %300 = arith.divsi %c2144033552_i64, %c1169671983_i64 : i64
        %301 = arith.maxui %c1141004266_i64, %c1169671983_i64 : i64
        %302 = index.floordivs %266, %40
        %303 = affine.min affine_map<(d0, d1) -> (d0)>(%53, %295)
        %304 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %305 = index.floordivs %c0, %c15
        %306 = math.cttz %c-17629_i16 : i16
        vector.print %271 : vector<1xi1>
        %307 = vector.broadcast %c14 : index to vector<7xindex>
        %308 = vector.broadcast %true_47 : i1 to vector<7xi1>
        %309 = vector.broadcast %cst_2 : f16 to vector<7xf16>
        vector.scatter %alloc_5[%c9, %c3] [%307], %308, %309 : memref<12x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %310 = math.ceil %splat_23 : tensor<1x1x12xf32>
        %311 = vector.load %alloc_16[%c1] : memref<4xf32>, vector<12x4xf32>
        %312 = math.ceil %cst : f32
        %313 = math.log2 %12 : tensor<1x4xf16>
        %314 = index.casts %true : i1 to index
        %315 = arith.minsi %false, %false : i1
        %316 = arith.divf %cst_2, %cst_2 : f16
        %inserted = tensor.insert %cst_4 into %6[%c6, %c3] : tensor<12x4xf32>
        %317 = arith.maxsi %c25215_i16, %c25215_i16 : i16
        %318 = vector.bitcast %271 : vector<1xi1> to vector<1xi1>
        %319 = index.maxu %302, %c11
        %320 = arith.remsi %true, %true_47 : i1
        %321 = arith.shli %c741381943_i64, %c741381943_i64 : i64
        %322 = math.log %cst_0 : f32
        %323 = bufferization.clone %alloc_6 : memref<4xi64> to memref<4xi64>
        %324 = index.casts %40 : index to i32
        memref.alloca_scope.return %cst_2 : f16
      }
      %274 = index.casts %269 : index to i32
      %275 = math.ceil %cst_0 : f32
      %276 = arith.ceildivsi %c576309929_i32, %c576309929_i32 : i32
      memref.assume_alignment %alloc_5, 8 : memref<12x4xf16>
      %277 = index.mul %c13, %c2
      %cst_45 = arith.constant 1.033600e+04 : f16
      %278 = vector.matrix_multiply %23, %23 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %279 = arith.addf %cst_1, %cst_0 : f32
      %280 = vector.broadcast %false : i1 to vector<12x4xi1>
      %281 = math.powf %6, %6 : tensor<12x4xf32>
      %282 = vector.shuffle %30, %264 [1, 6] : vector<4xf32>, vector<4xf32>
      %283 = math.ipowi %4, %4 : tensor<12x4xi16>
      %alloca_46 = memref.alloca() : memref<12x4xi32>
      %284 = math.exp %273 : f16
      %285 = arith.maxsi %false, %false : i1
      %286 = arith.maxf %cst_2, %273 : f16
      %287 = math.ctpop %c25215_i16 : i16
      %288 = scf.index_switch %51 -> tensor<12x4xi32> 
      case 1 {
        %294 = arith.cmpi slt, %false, %true : i1
        %295 = math.round %273 : f16
        bufferization.dealloc_tensor %9 : tensor<4xi16>
        %296 = index.add %c8, %c3
        %297 = arith.maxf %cst_1, %cst : f32
        %298 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %299 = vector.fma %298, %39, %22 : vector<4xf32>
        %300 = index.maxs %c2, %c9
        %301 = math.cttz %9 : tensor<4xi16>
        %302 = vector.bitcast %272 : vector<1xi64> to vector<1xi64>
        %303 = arith.minui %true, %false : i1
        %304 = arith.minui %c2144033552_i64, %c1169671983_i64 : i64
        %305 = index.casts %c1 : index to i32
        %306 = index.floordivs %51, %51
        %307 = math.absf %12 : tensor<1x4xf16>
        %308 = math.rsqrt %28 : tensor<12x12xf32>
        %309 = vector.broadcast %cst_4 : f32 to vector<12x4xf32>
        %310 = vector.fma %309, %309, %309 : vector<12x4xf32>
        scf.yield %0 : tensor<12x4xi32>
      }
      default {
        %294 = vector.broadcast %c1141004266_i64 : i64 to vector<1x1xi64>
        %295 = vector.outerproduct %270, %272, %294 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %296 = index.ceildivs %c5, %32
        memref.store %c1169671983_i64, %alloc_14[%c3] : memref<4xi64>
        %297 = math.log10 %cst : f32
        %298 = index.divu %c12, %40
        %299 = math.floor %cst_2 : f16
        %300 = math.exp2 %cst_2 : f16
        %301 = arith.divui %false_3, %false_3 : i1
        %302 = arith.negf %cst_4 : f32
        %303 = index.mul %33, %32
        %304 = index.castu %35 : index to i32
        %305 = vector.broadcast %c4 : index to vector<1xindex>
        %306 = vector.broadcast %273 : f16 to vector<1xf16>
        vector.scatter %alloc_9[%c0, %c1] [%305], %271, %306 : memref<1x4xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %307 = math.log2 %cst_4 : f32
        %308 = arith.cmpi slt, %c2144033552_i64, %c2144033552_i64 : i64
        vector.print %48 : vector<i32>
        %inserted = tensor.insert %c25215_i16 into %2[%c0, %c0, %c3] : tensor<1x1x12xi16>
        scf.yield %0 : tensor<12x4xi32>
      }
      %289 = math.ctlz %20 : tensor<i32>
      %290 = index.mul %40, %c2
      %291 = arith.cmpf ole, %cst_0, %cst : f32
      %292 = vector.splat %c8 : vector<1x1x12xindex>
      %293 = index.floordivs %c0, %c1
    }
    %55 = vector.transpose %18, [0] : vector<12xi1> to vector<12xi1>
    %from_elements = tensor.from_elements %cst_0, %cst, %cst, %cst : tensor<4xf32>
    %56 = arith.cmpi uge, %c1141004266_i64, %c741381943_i64 : i64
    %57 = memref.alloca_scope  -> (i16) {
      %264 = math.sqrt %cst_0 : f32
      %alloca_44 = memref.alloca() : memref<1x1x12xi64>
      %265 = arith.cmpi sgt, %true, %false : i1
      %266 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
      %267 = vector.outerproduct %39, %23, %266 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
      memref.tensor_store %15, %49 : memref<4xi1>
      affine.for %arg3 = 0 to 122 {
      }
      bufferization.dealloc_tensor %10 : tensor<1x4xi16>
      %268 = arith.mulf %cst, %cst_1 : f32
      %269 = vector.broadcast %c-17629_i16 : i16 to vector<1xi16>
      %270 = vector.broadcast %false : i1 to vector<1xi1>
      %271 = vector.maskedload %alloc_17[%c0, %c0, %c4], %270, %269 : memref<1x1x12xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %272 = tensor.empty(%c11) : tensor<1x?xi64>
      %273 = math.round %cst_4 : f32
      %274 = math.sqrt %12 : tensor<1x4xf16>
      %275 = vector.shuffle %22, %39 [3, 6, 7] : vector<4xf32>, vector<4xf32>
      %276 = arith.minui %c576309929_i32, %c576309929_i32 : i32
      %277 = memref.load %alloc_15[%c0, %c0, %c6] : memref<1x1x12xi64>
      %278 = math.powf %splat_23, %splat_23 : tensor<1x1x12xf32>
      %collapsed_45 = tensor.collapse_shape %5 [[0, 1]] : tensor<12x4xi64> into tensor<48xi64>
      %279 = math.exp %cst_1 : f32
      %280 = math.powf %from_elements, %from_elements : tensor<4xf32>
      %281 = arith.negf %cst_4 : f32
      %282 = index.casts %c741381943_i64 : i64 to index
      %283 = arith.remf %cst_1, %cst : f32
      %284 = vector.multi_reduction <maxf>, %47, %cst_4 [0] : vector<4xf32> to f32
      %generated_46 = tensor.generate %c11 {
      ^bb0(%arg3: index, %arg4: index):
        %293 = arith.minui %false_3, %true : i1
        %294 = math.absi %9 : tensor<4xi16>
        %295 = math.exp2 %28 : tensor<12x12xf32>
        %296 = vector.load %alloc_18[%c2] : memref<4xi1>, vector<4xi1>
        tensor.yield %false : i1
      } : tensor<?x4xi1>
      %285 = affine.for %arg3 = 0 to 16 iter_args(%arg4 = %33) -> (index) {
        affine.yield %c9 : index
      }
      %286 = vector.reduction <maxf>, %30 : vector<4xf32> into f32
      %287 = vector.flat_transpose %23 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %288 = arith.divf %cst_4, %cst_1 : f32
      %289 = bufferization.to_memref %19 : memref<i32>
      %290 = math.log2 %28 : tensor<12x12xf32>
      %291 = arith.shli %c741381943_i64, %c1141004266_i64 : i64
      %292 = math.ctpop %c741381943_i64 : i64
      memref.alloca_scope.return %c-17629_i16 : i16
    }
    %58 = arith.remf %cst, %cst_1 : f32
    %59 = arith.addi %57, %c-17629_i16 : i16
    memref.alloca_scope  {
      %264 = math.log1p %splat_23 : tensor<1x1x12xf32>
      %265 = vector.broadcast %c13 : index to vector<12xindex>
      vector.scatter %alloc_13[%c1] [%265], %18, %18 : memref<4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
      %266 = arith.minsi %c576309929_i32, %c576309929_i32 : i32
      %267 = arith.minui %57, %c-17629_i16 : i16
      %268 = arith.minsi %true, %false_3 : i1
      %269 = arith.addi %c2144033552_i64, %c741381943_i64 : i64
      %alloc_44 = memref.alloc() : memref<4x4xf16>
      %270 = tensor.empty() : tensor<1x4xf16>
      %271 = linalg.matmul ins(%12, %alloc_44 : tensor<1x4xf16>, memref<4x4xf16>) outs(%270 : tensor<1x4xf16>) -> tensor<1x4xf16>
      %272 = arith.minui %c576309929_i32, %c576309929_i32 : i32
      %273 = arith.cmpi eq, %false, %false_3 : i1
      memref.store %c576309929_i32, %alloc_22[%c1] : memref<4xi32>
      %expanded_45 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<1x4xi32> into tensor<1x4x1xi32>
      %274 = index.mul %c13, %c12
      %275 = math.ctpop %13 : tensor<4xi32>
      %cast = tensor.cast %270 : tensor<1x4xf16> to tensor<?x?xf16>
      %276 = arith.minui %false_3, %false : i1
      %277 = vector.broadcast %cst_4 : f32 to vector<12x4xf32>
      %278 = vector.fma %277, %277, %277 : vector<12x4xf32>
      %279 = math.ctlz %10 : tensor<1x4xi16>
      %generated_46 = tensor.generate %40, %c9 {
      ^bb0(%arg3: index, %arg4: index):
        %292 = arith.shli %c1141004266_i64, %c1169671983_i64 : i64
        %293 = affine.max affine_map<(d0, d1) -> ((d1 mod 16) floordiv 32, d1 + ((d1 mod 16) floordiv 32) mod 32, 0, d0)>(%35, %c14)
        %294 = math.absi %expanded_45 : tensor<1x4x1xi32>
        %295 = math.round %6 : tensor<12x4xf32>
        tensor.yield %57 : i16
      } : tensor<?x?xi16>
      %alloc_47 = memref.alloc() : memref<4xi64>
      %280 = math.log %6 : tensor<12x4xf32>
      %281 = arith.divui %false_3, %false_3 : i1
      %282 = arith.cmpi sle, %c576309929_i32, %c576309929_i32 : i32
      %283 = scf.while (%arg3 = %alloc_11) : (memref<12x4xi64>) -> memref<12x4xi64> {
        %292 = arith.divf %cst_1, %cst_1 : f32
        memref.store %cst_0, %alloc_16[%c2] : memref<4xf32>
        bufferization.dealloc_tensor %5 : tensor<12x4xi64>
        %293 = arith.ori %57, %c25215_i16 : i16
        %294 = arith.ceildivsi %c-17629_i16, %c25215_i16 : i16
        vector.print %47 : vector<4xf32>
        vector.print %47 : vector<4xf32>
        %295 = arith.remsi %c576309929_i32, %c576309929_i32 : i32
        scf.condition(%true) %arg3 : memref<12x4xi64>
      } do {
      ^bb0(%arg3: memref<12x4xi64>):
        %292 = index.add %c8, %c1
        %293 = math.rsqrt %splat_23 : tensor<1x1x12xf32>
        %294 = math.rsqrt %cst_4 : f32
        memref.store %c1169671983_i64, %alloc_11[%c10, %c3] : memref<12x4xi64>
        %295 = math.log %from_elements : tensor<4xf32>
        %296 = vector.broadcast %false_3 : i1 to vector<1xi1>
        %297 = vector.maskedload %alloc_16[%c2], %296, %46 : memref<4xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %inserted = tensor.insert %c-17629_i16 into %9[%c0] : tensor<4xi16>
        %from_elements_49 = tensor.from_elements %57, %c25215_i16, %57, %c-17629_i16 : tensor<4xi16>
        %298 = affine.load %alloc_13[%c12] : memref<4xi1>
        %alloc_50 = memref.alloc() : memref<4x12xi64>
        %299 = tensor.empty() : tensor<12x12xi64>
        %300 = linalg.matmul ins(%7, %alloc_50 : tensor<12x4xi64>, memref<4x12xi64>) outs(%299 : tensor<12x12xi64>) -> tensor<12x12xi64>
        %301 = vector.bitcast %46 : vector<1xf32> to vector<1xi32>
        %302 = math.expm1 %cst_0 : f32
        %303 = math.round %270 : tensor<1x4xf16>
        %304 = arith.ori %c2144033552_i64, %c2144033552_i64 : i64
        %collapsed_51 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xf16> into tensor<4xf16>
        %305 = math.sqrt %12 : tensor<1x4xf16>
        scf.yield %arg3 : memref<12x4xi64>
      }
      %284 = math.round %270 : tensor<1x4xf16>
      %285 = arith.minf %cst_1, %cst_1 : f32
      %286 = math.cttz %15 : tensor<4xi1>
      %287 = math.tan %cst_2 : f16
      %288 = math.log1p %12 : tensor<1x4xf16>
      %289 = math.copysign %cst_4, %cst : f32
      %290 = math.ctpop %8 : tensor<1x4xi32>
      %alloca_48 = memref.alloca() : memref<1x1x12xi1>
      %291 = arith.remui %c1169671983_i64, %c741381943_i64 : i64
    }
    %false_24 = index.bool.constant false
    %60 = math.log10 %splat_23 : tensor<1x1x12xf32>
    %61 = vector.extract_strided_slice %23 {offsets = [1], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
    %62 = arith.cmpi ult, %c334741408_i64, %c741381943_i64 : i64
    affine.for %arg3 = 0 to 99 {
    }
    %63 = math.expm1 %cst : f32
    %64 = index.add %c4, %c7
    %65 = math.absi %c576309929_i32 : i32
    %66 = math.tan %cst_4 : f32
    %67 = scf.index_switch %c2 -> i16 
    case 1 {
      scf.execute_region {
        %279 = arith.cmpi ult, %true, %false_24 : i1
        %280 = vector.matrix_multiply %39, %39 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %alloca_44 = memref.alloca() : memref<1x1x12xi64>
        %281 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 32)>(%c11, %c10, %c11)
        %collapsed_45 = tensor.collapse_shape %6 [[0, 1]] : tensor<12x4xf32> into tensor<48xf32>
        %282 = vector.splat %c334741408_i64 : vector<1x1x12xi64>
        %283 = vector.extract_strided_slice %30 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %284 = math.ctpop %splat : tensor<1x4xi1>
        %285 = math.sqrt %from_elements : tensor<4xf32>
        %286 = math.sqrt %cst_1 : f32
        %287 = memref.load %alloc_13[%c1] : memref<4xi1>
        %288 = math.round %splat_23 : tensor<1x1x12xf32>
        %289 = index.castu %c8 : index to i32
        %290 = index.castu %c-17629_i16 : i16 to index
        %291 = bufferization.to_memref %16 : memref<4xi1>
        %292 = index.divu %51, %c4
        scf.yield
      }
      %264 = math.rsqrt %6 : tensor<12x4xf32>
      %265 = math.round %12 : tensor<1x4xf16>
      %266 = index.casts %c5 : index to i32
      %267 = math.log1p %from_elements : tensor<4xf32>
      %268 = affine.min affine_map<(d0, d1, d2) -> (d2 + 16, 0, d2, ((d2 * 2) mod 16) floordiv 64)>(%c15, %c0, %40)
      %269 = vector.create_mask %c15, %c7 : vector<1x4xi1>
      %270 = scf.execute_region -> index {
        %collapsed_44 = tensor.collapse_shape %splat_23 [[0, 1], [2]] : tensor<1x1x12xf32> into tensor<1x12xf32>
        %c272303165_i32 = arith.constant 272303165 : i32
        %279 = vector.insertelement %cst, %23[%33 : index] : vector<4xf32>
        %280 = affine.max affine_map<(d0, d1, d2) -> (d1, 0, d1 + 8)>(%c0, %c14, %51)
        affine.store %c576309929_i32, %alloc_22[%c12] : memref<4xi32>
        vector.print %47 : vector<4xf32>
        %from_elements_45 = tensor.from_elements %c-17629_i16, %c-17629_i16, %c25215_i16, %57 : tensor<4xi16>
        %alloc_46 = memref.alloc() : memref<1x4xi16>
        memref.tensor_store %10, %alloc_46 : memref<1x4xi16>
        %281 = arith.minsi %c741381943_i64, %c334741408_i64 : i64
        vector.print %61 : vector<1xf32>
        %extracted_47 = tensor.extract %15[%c2] : tensor<4xi1>
        %282 = math.rsqrt %cst_4 : f32
        %283 = vector.load %alloc_6[%c1] : memref<4xi64>, vector<1x4xi64>
        %284 = arith.minui %c576309929_i32, %c576309929_i32 : i32
        %285 = math.powf %from_elements, %from_elements : tensor<4xf32>
        %286 = index.maxu %c9, %c1
        scf.yield %c9 : index
      }
      %271 = arith.maxsi %c2144033552_i64, %c2144033552_i64 : i64
      %272 = vector.flat_transpose %18 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %273 = vector.transpose %61, [0] : vector<1xf32> to vector<1xf32>
      %274 = vector.shuffle %269, %269 [0] : vector<1x4xi1>, vector<1x4xi1>
      %275 = math.roundeven %cst_0 : f32
      %276 = math.log %12 : tensor<1x4xf16>
      %277 = index.ceildivs %c15, %c15
      %278 = scf.index_switch %c11 -> i1 
      case 1 {
        %279 = tensor.empty() : tensor<1x1x12xi32>
        %280 = math.fpowi %splat_23, %279 : tensor<1x1x12xf32>, tensor<1x1x12xi32>
        %281 = math.round %cst_2 : f16
        %282 = arith.maxui %c1169671983_i64, %c2144033552_i64 : i64
        %false_44 = index.bool.constant false
        %283 = math.ceil %cst_1 : f32
        %284 = math.fpowi %cst_1, %c576309929_i32 : f32, i32
        %285 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %286 = vector.fma %285, %285, %30 : vector<4xf32>
        %287 = arith.negf %cst_0 : f32
        %288 = vector.multi_reduction <add>, %24, %18 [1] : vector<12x4xi1> to vector<12xi1>
        %289 = arith.maxui %false_3, %true : i1
        %from_elements_45 = tensor.from_elements %c741381943_i64, %c741381943_i64, %c1169671983_i64, %c334741408_i64, %c1141004266_i64, %c2144033552_i64, %c334741408_i64, %c334741408_i64, %c741381943_i64, %c1141004266_i64, %c1169671983_i64, %c1169671983_i64, %c1169671983_i64, %c2144033552_i64, %c334741408_i64, %c1141004266_i64, %c1169671983_i64, %c741381943_i64, %c2144033552_i64, %c741381943_i64, %c1169671983_i64, %c741381943_i64, %c1141004266_i64, %c1169671983_i64, %c334741408_i64, %c2144033552_i64, %c2144033552_i64, %c1141004266_i64, %c741381943_i64, %c741381943_i64, %c2144033552_i64, %c1141004266_i64, %c1141004266_i64, %c2144033552_i64, %c1141004266_i64, %c2144033552_i64, %c2144033552_i64, %c2144033552_i64, %c2144033552_i64, %c741381943_i64, %c334741408_i64, %c334741408_i64, %c334741408_i64, %c2144033552_i64, %c334741408_i64, %c2144033552_i64, %c334741408_i64, %c2144033552_i64 : tensor<12x4xi64>
        %290 = vector.extract %269[0] : vector<1x4xi1>
        %291 = vector.multi_reduction <mul>, %272, %18 [] : vector<12xi1> to vector<12xi1>
        %292 = index.casts %c1169671983_i64 : i64 to index
        %293 = memref.atomic_rmw assign %c576309929_i32, %alloc_22[%c2] : (i32, memref<4xi32>) -> i32
        %294 = arith.maxui %false_3, %true : i1
        scf.yield %true : i1
      }
      case 2 {
        %279 = tensor.empty() : tensor<1x4xi64>
        %280 = vector.broadcast %c1141004266_i64 : i64 to vector<1x4xi64>
        %281 = vector.broadcast %c576309929_i32 : i32 to vector<1x4xi32>
        %282 = vector.gather %279[%c11, %c6] [%281], %269, %280 : tensor<1x4xi64>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi64> into vector<1x4xi64>
        %283 = math.fma %cst_1, %cst, %cst_1 : f32
        %284 = arith.remf %cst_1, %cst_1 : f32
        %285 = math.rsqrt %cst : f32
        %286 = index.floordivs %40, %64
        %287 = math.absi %19 : tensor<i32>
        %288 = vector.reduction <or>, %18 : vector<12xi1> into i1
        %289 = arith.addf %cst_0, %cst : f32
        %290 = arith.maxsi %c741381943_i64, %c1169671983_i64 : i64
        %291 = math.exp2 %12 : tensor<1x4xf16>
        %alloc_44 = memref.alloc() : memref<1x4xi16>
        memref.tensor_store %10, %alloc_44 : memref<1x4xi16>
        %292 = arith.negf %cst_1 : f32
        %alloca_45 = memref.alloca() : memref<1x4xi16>
        %extracted_46 = tensor.extract %splat[%c0, %c0] : tensor<1x4xi1>
        %293 = bufferization.clone %alloc_11 : memref<12x4xi64> to memref<12x4xi64>
        %294 = vector.bitcast %23 : vector<4xf32> to vector<4xf32>
        scf.yield %extracted_46 : i1
      }
      case 3 {
        %279 = math.log10 %12 : tensor<1x4xf16>
        %280 = arith.addi %true, %false : i1
        %281 = tensor.empty() : tensor<4x1xi32>
        %282 = tensor.empty() : tensor<12x1xi32>
        %283 = linalg.matmul ins(%0, %281 : tensor<12x4xi32>, tensor<4x1xi32>) outs(%282 : tensor<12x1xi32>) -> tensor<12x1xi32>
        %284 = math.exp2 %cst_2 : f16
        %alloca_44 = memref.alloca() : memref<1x1x12xf32>
        %285 = memref.realloc %alloc_12 : memref<4xf16> to memref<1xf16>
        %286 = math.ceil %6 : tensor<12x4xf32>
        vector.print %48 : vector<i32>
        %287 = vector.bitcast %61 : vector<1xf32> to vector<1xi32>
        %extracted_45 = tensor.extract %15[%c1] : tensor<4xi1>
        %288 = arith.divui %false_24, %false_3 : i1
        %cast = tensor.cast %282 : tensor<12x1xi32> to tensor<?x?xi32>
        %289 = vector.splat %53 : vector<12x4xindex>
        %290 = arith.divf %cst, %cst_4 : f32
        %291 = vector.broadcast %cst_0 : f32 to vector<1x4xf32>
        %292 = vector.fma %291, %291, %291 : vector<1x4xf32>
        %293 = vector.multi_reduction <maxsi>, %272, %false [0] : vector<12xi1> to i1
        scf.yield %false_3 : i1
      }
      default {
        %279 = math.tan %cst : f32
        %280 = math.log1p %cst_0 : f32
        %inserted = tensor.insert %57 into %14[%c0] : tensor<4xi16>
        %281 = index.mul %c5, %c7
        %282 = vector.broadcast %c7 : index to vector<12xindex>
        %283 = vector.broadcast %c1169671983_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_15[%c0, %c0, %c5] [%282], %272, %283 : memref<1x1x12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %284 = index.ceildivu %64, %c11
        %285 = vector.broadcast %c334741408_i64 : i64 to vector<7xi64>
        %286 = vector.broadcast %false_3 : i1 to vector<7xi1>
        %287 = vector.maskedload %alloc_15[%c0, %c0, %c7], %286, %285 : memref<1x1x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %288 = arith.remf %cst, %cst_0 : f32
        %splat_44 = tensor.splat %cst_4 : tensor<12x4xf32>
        %289 = index.divu %c6, %c13
        %alloca_45 = memref.alloca() : memref<1x4xi64>
        %290 = index.ceildivs %53, %64
        %291 = math.floor %12 : tensor<1x4xf16>
        %292 = vector.transpose %23, [0] : vector<4xf32> to vector<4xf32>
        %293 = vector.extract_strided_slice %47 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        %294 = math.fma %cst_2, %cst_2, %cst_2 : f16
        scf.yield %false_24 : i1
      }
      scf.yield %57 : i16
    }
    default {
      %264 = math.ctpop %3 : tensor<4xi1>
      %265 = index.mul %c13, %c8
      %266 = vector.broadcast %c334741408_i64 : i64 to vector<12x4xi64>
      %267 = vector.flat_transpose %30 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %268 = index.maxu %c0, %c3
      %cast = tensor.cast %12 : tensor<1x4xf16> to tensor<?x?xf16>
      %cast_44 = tensor.cast %9 : tensor<4xi16> to tensor<?xi16>
      %269 = scf.while (%arg3 = %alloc) : (memref<1x1x12xf16>) -> memref<1x1x12xf16> {
        %extracted_46 = tensor.extract %8[%c0, %c3] : tensor<1x4xi32>
        %278 = vector.create_mask %c9, %53 : vector<12x4xi1>
        %279 = arith.negf %cst : f32
        %280 = arith.minui %c576309929_i32, %extracted_46 : i32
        %281 = vector.transpose %48, [] : vector<i32> to vector<i32>
        %282 = math.ipowi %9, %9 : tensor<4xi16>
        %false_47 = index.bool.constant false
        %283 = memref.atomic_rmw minf %cst_2, %alloc_5[%c8, %c2] : (f16, memref<12x4xf16>) -> f16
        scf.condition(%true) %arg3 : memref<1x1x12xf16>
      } do {
      ^bb0(%arg3: memref<1x1x12xf16>):
        %278 = index.mul %c8, %c3
        %279 = arith.maxui %c25215_i16, %57 : i16
        %280 = math.powf %28, %28 : tensor<12x12xf32>
        vector.print %30 : vector<4xf32>
        %281 = index.mul %c4, %32
        %282 = math.log %12 : tensor<1x4xf16>
        %283 = arith.maxui %c741381943_i64, %c1141004266_i64 : i64
        %284 = vector.multi_reduction <mul>, %18, %18 [] : vector<12xi1> to vector<12xi1>
        %285 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %286 = index.ceildivs %c15, %c5
        %287 = arith.remf %cst_2, %cst_2 : f16
        memref.store %cst_2, %alloc[%c0, %c0, %c6] : memref<1x1x12xf16>
        %288 = index.castu %c14 : index to i32
        %true_46 = index.bool.constant true
        %true_47 = index.bool.constant true
        %289 = vector.splat %c12 : vector<1x1x12xindex>
        scf.yield %arg3 : memref<1x1x12xf16>
      }
      %270 = vector.bitcast %30 : vector<4xf32> to vector<4xf32>
      %271 = index.ceildivu %51, %33
      %alloc_45 = memref.alloc() : memref<1x1xi16>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_17 : memref<1x1xi16>, memref<1x1x12xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_46: i16, %out: i16):
        %278 = vector.flat_transpose %61 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %279 = arith.ceildivsi %false, %true : i1
        %280 = tensor.empty(%c3) : tensor<?x4xi1>
        %281 = arith.minsi %c1141004266_i64, %c741381943_i64 : i64
        %extracted_47 = tensor.extract %9[%c2] : tensor<4xi16>
        vector.print %24 : vector<12x4xi1>
        %282 = vector.create_mask %64, %53 : vector<1x4xi1>
        %283 = arith.maxui %true, %false_3 : i1
        %284 = vector.transpose %18, [0] : vector<12xi1> to vector<12xi1>
        %alloc_48 = memref.alloc() : memref<4x7xi16>
        %285 = tensor.empty() : tensor<1x7xi16>
        %286 = linalg.matmul ins(%10, %alloc_48 : tensor<1x4xi16>, memref<4x7xi16>) outs(%285 : tensor<1x7xi16>) -> tensor<1x7xi16>
        %287 = tensor.empty() : tensor<4xi16>
        %288 = arith.divf %cst_1, %cst_1 : f32
        %289 = math.log1p %cst_1 : f32
        %290 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %290, %alloc_16[%c2] : vector<f32>, memref<4xf32>
        %291 = index.maxs %c8, %c13
        %expanded_49 = tensor.expand_shape %1 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %292 = vector.transpose %47, [0] : vector<4xf32> to vector<4xf32>
        %293 = math.cttz %1 : tensor<4xi1>
        %294 = index.divu %33, %268
        %295 = vector.transpose %23, [0] : vector<4xf32> to vector<4xf32>
        %296 = affine.load %alloc_18[%c15] : memref<4xi1>
        %297 = math.log2 %cst_4 : f32
        %298 = index.castu %32 : index to i32
        %299 = arith.maxf %cst, %cst_0 : f32
        %300 = index.castu %c8 : index to i32
        %301 = vector.extract %24[9] : vector<12x4xi1>
        %rank = tensor.rank %splat_23 : tensor<1x1x12xf32>
        %302 = arith.divui %296, %296 : i1
        %303 = math.sqrt %cst_4 : f32
        %304 = bufferization.clone %alloc_9 : memref<1x4xf16> to memref<1x4xf16>
        %305 = vector.broadcast %c576309929_i32 : i32 to vector<4xi32>
        %306 = vector.gather %8[%51, %265] [%305], %301, %305 : tensor<1x4xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %307 = math.ipowi %splat, %splat : tensor<1x4xi1>
        linalg.yield %c25215_i16 : i16
      } -> tensor<1x1x12xi16>
      %273 = vector.flat_transpose %46 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %274 = arith.minui %c1141004266_i64, %c1169671983_i64 : i64
      %275 = arith.divui %c741381943_i64, %c2144033552_i64 : i64
      %276 = arith.remf %cst_4, %cst : f32
      %277 = bufferization.to_tensor %alloc_5 : memref<12x4xf16>
      scf.yield %c25215_i16 : i16
    }
    %68 = arith.maxf %cst_1, %cst_1 : f32
    %69 = arith.remui %c25215_i16, %57 : i16
    %70 = math.round %cst_0 : f32
    %71 = math.floor %splat_23 : tensor<1x1x12xf32>
    memref.store %cst_2, %alloc_9[%c0, %c3] : memref<1x4xf16>
    %alloc_25 = memref.alloc() : memref<4xi16>
    memref.tensor_store %14, %alloc_25 : memref<4xi16>
    %72 = math.exp2 %28 : tensor<12x12xf32>
    %73 = arith.divui %c-17629_i16, %57 : i16
    %74 = vector.matrix_multiply %23, %22 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %75 = bufferization.clone %alloc_5 : memref<12x4xf16> to memref<12x4xf16>
    %76 = math.rsqrt %12 : tensor<1x4xf16>
    %77 = arith.remsi %c576309929_i32, %c576309929_i32 : i32
    %from_elements_26 = tensor.from_elements %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_0, %cst_0, %cst, %cst_4, %cst_4, %cst_4, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_4, %cst_1, %cst_0, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst_0, %cst, %cst, %cst_0 : tensor<12x4xf32>
    %78 = vector.broadcast %cst : f32 to vector<f32>
    %79 = vector.transfer_write %78, %6[%40, %33] : vector<f32>, tensor<12x4xf32>
    %80 = vector.insertelement %false_3, %18[%c8 : index] : vector<12xi1>
    %81 = arith.maxui %true, %false : i1
    %82 = vector.matrix_multiply %23, %74 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
    %83 = vector.bitcast %39 : vector<4xf32> to vector<4xf32>
    %84 = math.floor %cst : f32
    %85 = bufferization.to_memref %15 : memref<4xi1>
    %86 = index.ceildivs %c15, %c11
    %alloca = memref.alloca() : memref<1x1x12xi32>
    %87 = tensor.empty(%c6, %c15) : tensor<?x?xf32>
    %88 = scf.while (%arg3 = %cst) : (f32) -> f32 {
      memref.assume_alignment %alloc_11, 8 : memref<12x4xi64>
      %264 = memref.realloc %alloc_8 : memref<4xi64> to memref<12xi64>
      %265 = bufferization.clone %alloc_9 : memref<1x4xf16> to memref<1x4xf16>
      %266 = index.maxs %c5, %40
      %267 = arith.divf %arg3, %cst : f32
      %268 = vector.reduction <mul>, %83 : vector<4xf32> into f32
      %c646197526_i32 = arith.constant 646197526 : i32
      %269 = affine.load %alloc_19[%c2] : memref<4xi1>
      scf.condition(%269) %arg3 : f32
    } do {
    ^bb0(%arg3: f32):
      %264 = math.absf %12 : tensor<1x4xf16>
      %265 = math.log1p %arg3 : f32
      %266 = math.floor %6 : tensor<12x4xf32>
      %267 = arith.minsi %false_24, %false_3 : i1
      %268 = scf.index_switch %c15 -> vector<1x4xi64> 
      case 1 {
        %278 = arith.minsi %c-17629_i16, %c-17629_i16 : i16
        %false_46 = index.bool.constant false
        affine.store %c1169671983_i64, %alloc_20[%c14, %c4, %c14] : memref<12x1x1xi64>
        %279 = math.sqrt %cst_2 : f16
        memref.tensor_store %3, %alloc_13 : memref<4xi1>
        %alloc_47 = memref.alloc() : memref<4x1xi16>
        %280 = tensor.empty() : tensor<1x1xi16>
        %281 = linalg.matmul ins(%10, %alloc_47 : tensor<1x4xi16>, memref<4x1xi16>) outs(%280 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %282 = arith.maxsi %true, %false_24 : i1
        %283 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
        %284 = vector.outerproduct %82, %47, %283 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
        %285 = bufferization.clone %alloc_11 : memref<12x4xi64> to memref<12x4xi64>
        %286 = arith.divui %false_24, %false_46 : i1
        %287 = arith.divf %arg3, %cst_4 : f32
        %288 = index.maxs %c10, %c0
        %289 = index.maxu %c7, %c3
        %290 = math.cttz %c1169671983_i64 : i64
        %291 = math.round %6 : tensor<12x4xf32>
        %292 = math.sqrt %arg3 : f32
        %293 = vector.broadcast %c1141004266_i64 : i64 to vector<1x4xi64>
        scf.yield %293 : vector<1x4xi64>
      }
      case 2 {
        %splat_46 = tensor.splat %c-17629_i16 : tensor<1x1x12xi16>
        %278 = vector.bitcast %82 : vector<4xf32> to vector<4xf32>
        %279 = arith.cmpi sge, %c25215_i16, %c-17629_i16 : i16
        %280 = arith.cmpf oeq, %cst, %cst_1 : f32
        %281 = arith.minf %cst_0, %arg3 : f32
        %282 = math.tan %arg3 : f32
        %283 = math.ceil %6 : tensor<12x4xf32>
        %284 = math.floor %12 : tensor<1x4xf16>
        %285 = index.maxu %c6, %c10
        %286 = tensor.empty() : tensor<1x4xf32>
        %287 = vector.broadcast %cst_1 : f32 to vector<12x4xf32>
        %288 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
        %289 = vector.gather %286[%c14, %c4] [%288], %24, %287 : tensor<1x4xf32>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf32> into vector<12x4xf32>
        %290 = arith.cmpi eq, %c2144033552_i64, %c334741408_i64 : i64
        %291 = tensor.empty() : tensor<1x4xi32>
        %292 = arith.divf %cst_0, %cst_4 : f32
        %293 = index.add %c4, %c11
        %294 = vector.flat_transpose %74 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %295 = index.ceildivs %c12, %64
        %296 = vector.broadcast %c334741408_i64 : i64 to vector<1x4xi64>
        scf.yield %296 : vector<1x4xi64>
      }
      default {
        %278 = vector.extract_strided_slice %24 {offsets = [4], sizes = [7], strides = [1]} : vector<12x4xi1> to vector<7x4xi1>
        memref.store %c741381943_i64, %alloc_14[%c3] : memref<4xi64>
        %279 = math.fma %cst, %cst, %cst_0 : f32
        %280 = arith.minui %false_24, %true : i1
        %281 = math.tanh %cst : f32
        %282 = index.maxs %c2, %c3
        %283 = vector.bitcast %74 : vector<1xf32> to vector<1xf32>
        %284 = index.maxu %53, %c3
        %285 = vector.transpose %46, [0] : vector<1xf32> to vector<1xf32>
        %286 = vector.load %alloc_7[%c0] : memref<4xf16>, vector<12x4xf16>
        %287 = math.log1p %arg3 : f32
        memref.copy %alloc_5, %75 : memref<12x4xf16> to memref<12x4xf16>
        %288 = arith.ceildivsi %false_24, %true : i1
        %from_elements_46 = tensor.from_elements %c25215_i16, %57, %c25215_i16, %57 : tensor<4xi16>
        %289 = vector.bitcast %30 : vector<4xf32> to vector<4xf32>
        %290 = arith.shrui %false_3, %true : i1
        %291 = vector.broadcast %c2144033552_i64 : i64 to vector<1x4xi64>
        scf.yield %291 : vector<1x4xi64>
      }
      %269 = scf.execute_region -> index {
        %278 = math.log %splat_23 : tensor<1x1x12xf32>
        %279 = math.log1p %cst_4 : f32
        %280 = math.log2 %cst_2 : f16
        %281 = math.ipowi %5, %5 : tensor<12x4xi64>
        %inserted = tensor.insert %c25215_i16 into %4[%c7, %c3] : tensor<12x4xi16>
        %282 = vector.shuffle %82, %47 [0, 1, 2, 4, 7] : vector<4xf32>, vector<4xf32>
        %283 = affine.max affine_map<(d0, d1) -> (d1, -d1)>(%35, %51)
        memref.store %c576309929_i32, %alloc_22[%c3] : memref<4xi32>
        %284 = arith.remsi %c576309929_i32, %c576309929_i32 : i32
        %285 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %286 = math.exp %12 : tensor<1x4xf16>
        %287 = index.maxu %c12, %33
        %288 = vector.create_mask %c4 : vector<4xi1>
        %289 = bufferization.clone %alloc_22 : memref<4xi32> to memref<4xi32>
        %290 = arith.minsi %c-17629_i16, %c-17629_i16 : i16
        %291 = arith.cmpf oeq, %arg3, %cst_0 : f32
        scf.yield %c11 : index
      }
      %270 = math.absf %arg3 : f32
      %271 = index.ceildivs %c11, %c8
      memref.alloca_scope  {
        %278 = arith.shrsi %false_24, %true : i1
        %279 = index.castu %c9 : index to i32
        %280 = math.log %12 : tensor<1x4xf16>
        %281 = vector.flat_transpose %18 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %282 = memref.realloc %85 : memref<4xi1> to memref<12xi1>
        %283 = arith.addf %cst_1, %cst_1 : f32
        %cast = tensor.cast %15 : tensor<4xi1> to tensor<?xi1>
        %alloca_46 = memref.alloca() : memref<1x1x12xi1>
        %284 = vector.matrix_multiply %281, %281 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %285 = arith.divui %c576309929_i32, %c576309929_i32 : i32
        %286 = arith.divf %cst_4, %arg3 : f32
        %287 = vector.shuffle %284, %281 [0, 6, 8] : vector<1xi1>, vector<12xi1>
        vector.print %46 : vector<1xf32>
        memref.copy %alloc_19, %49 : memref<4xi1> to memref<4xi1>
        %288 = vector.transpose %39, [0] : vector<4xf32> to vector<4xf32>
        %289 = vector.broadcast %c25215_i16 : i16 to vector<1x1x12xi16>
        %290 = vector.broadcast %false : i1 to vector<1x1x12xi1>
        %291 = vector.broadcast %c576309929_i32 : i32 to vector<1x1x12xi32>
        %292 = vector.gather %14[%c3] [%291], %290, %289 : tensor<4xi16>, vector<1x1x12xi32>, vector<1x1x12xi1>, vector<1x1x12xi16> into vector<1x1x12xi16>
        %293 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
        %294 = vector.outerproduct %39, %39, %293 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %295 = math.log2 %cst_0 : f32
        %296 = index.castu %c2144033552_i64 : i64 to index
        %splat_47 = tensor.splat %false_24 : tensor<1x1x12xi1>
        %297 = arith.minsi %true, %true : i1
        %298 = math.fpowi %arg3, %c576309929_i32 : f32, i32
        %299 = arith.remf %cst_4, %cst_1 : f32
        %300 = index.casts %86 : index to i32
        %301 = vector.matrix_multiply %82, %46 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
        %302 = math.ipowi %2, %2 : tensor<1x1x12xi16>
        %303 = arith.shrui %true, %true : i1
        %304 = index.mul %c5, %c8
        %305 = math.log2 %cst_2 : f16
        %306 = math.ctlz %9 : tensor<4xi16>
        %307 = arith.maxsi %c25215_i16, %c-17629_i16 : i16
        %308 = math.cttz %4 : tensor<12x4xi16>
      }
      %272 = vector.transpose %30, [0] : vector<4xf32> to vector<4xf32>
      %273 = arith.remsi %true, %false_24 : i1
      %274 = arith.remf %cst_1, %cst_4 : f32
      %275 = vector.broadcast %arg3 : f32 to vector<4x4xf32>
      %276 = vector.outerproduct %23, %82, %275 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
      %extracted_44 = tensor.extract %12[%c0, %c0] : tensor<1x4xf16>
      %277 = arith.cmpi sge, %c2144033552_i64, %c334741408_i64 : i64
      %generated_45 = tensor.generate %c7 {
      ^bb0(%arg4: index):
        %278 = math.log2 %cst_2 : f16
        %279 = index.sizeof
        %extracted_46 = tensor.extract %6[%c9, %c0] : tensor<12x4xf32>
        %alloca_47 = memref.alloca() : memref<1x4xi32>
        tensor.yield %c1169671983_i64 : i64
      } : tensor<?xi64>
      scf.yield %cst : f32
    }
    %89 = vector.flat_transpose %22 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %90 = vector.transpose %82, [0] : vector<4xf32> to vector<4xf32>
    memref.tensor_store %from_elements, %alloc_16 : memref<4xf32>
    %91 = arith.maxui %false_24, %false_24 : i1
    %92 = index.mul %c5, %c0
    %alloc_27 = memref.alloc() : memref<4x4xi32>
    %93 = tensor.empty() : tensor<1x4xi32>
    %94 = linalg.matmul ins(%8, %alloc_27 : tensor<1x4xi32>, memref<4x4xi32>) outs(%93 : tensor<1x4xi32>) -> tensor<1x4xi32>
    %95 = arith.addi %c1141004266_i64, %c1169671983_i64 : i64
    %alloca_28 = memref.alloca() : memref<1x1x12xi32>
    %96 = math.round %cst : f32
    %97 = vector.broadcast %cst_1 : f32 to vector<12x4xf32>
    %98 = vector.fma %97, %97, %97 : vector<12x4xf32>
    %99 = math.log10 %cst_1 : f32
    %100 = math.powf %from_elements, %from_elements : tensor<4xf32>
    %101 = math.rsqrt %cst_4 : f32
    %102 = math.sqrt %12 : tensor<1x4xf16>
    %alloc_29 = memref.alloc() : memref<4x7xf32>
    %103 = tensor.empty() : tensor<12x7xf32>
    %104 = linalg.matmul ins(%from_elements_26, %alloc_29 : tensor<12x4xf32>, memref<4x7xf32>) outs(%103 : tensor<12x7xf32>) -> tensor<12x7xf32>
    %105 = math.absi %splat : tensor<1x4xi1>
    %106 = vector.bitcast %97 : vector<12x4xf32> to vector<12x4xf32>
    %107 = vector.broadcast %53 : index to vector<1xindex>
    %108 = vector.broadcast %false_24 : i1 to vector<1xi1>
    %109 = vector.broadcast %c2144033552_i64 : i64 to vector<1xi64>
    vector.scatter %alloc_8[%c2] [%107], %108, %109 : memref<4xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
    %110 = math.log1p %12 : tensor<1x4xf16>
    %111 = vector.broadcast %33 : index to vector<7xindex>
    %112 = vector.broadcast %false_3 : i1 to vector<7xi1>
    vector.scatter %85[%c0] [%111], %112, %112 : memref<4xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %alloc_30 = memref.alloc() : memref<12x4xf32>
    %113 = vector.broadcast %cst : f32 to vector<1x4xf32>
    %114 = vector.broadcast %true : i1 to vector<1x4xi1>
    %115 = vector.broadcast %c576309929_i32 : i32 to vector<1x4xi32>
    %116 = vector.gather %alloc_30[%53, %c7] [%115], %114, %113 : memref<12x4xf32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xf32> into vector<1x4xf32>
    %117 = arith.divf %cst_2, %cst_2 : f16
    %118 = math.log1p %6 : tensor<12x4xf32>
    %119 = math.rsqrt %6 : tensor<12x4xf32>
    %120 = math.log2 %12 : tensor<1x4xf16>
    %121 = arith.remsi %c2144033552_i64, %c334741408_i64 : i64
    %122 = vector.transpose %97, [1, 0] : vector<12x4xf32> to vector<4x12xf32>
    %123 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %124 = vector.reduction <xor>, %18 : vector<12xi1> into i1
    %125 = math.ctpop %14 : tensor<4xi16>
    %126 = arith.minui %c1169671983_i64, %c2144033552_i64 : i64
    %127 = vector.transpose %106, [0, 1] : vector<12x4xf32> to vector<12x4xf32>
    %128 = math.ctlz %10 : tensor<1x4xi16>
    %129 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
    %130 = vector.outerproduct %22, %123, %129 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
    %131 = arith.minsi %c576309929_i32, %c576309929_i32 : i32
    %132 = vector.broadcast %c334741408_i64 : i64 to vector<i64>
    %133 = vector.transfer_write %132, %5[%53, %c4] : vector<i64>, tensor<12x4xi64>
    %134 = arith.divf %cst, %cst_0 : f32
    %135 = arith.minf %cst_0, %cst_1 : f32
    %136 = arith.ori %false, %false_24 : i1
    %137 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %138 = vector.flat_transpose %82 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %139 = arith.divui %c741381943_i64, %c1169671983_i64 : i64
    memref.store %c1141004266_i64, %alloc_10[%c6, %c2] : memref<12x4xi64>
    affine.store %false_3, %alloc_19[%c8] : memref<4xi1>
    %140 = vector.load %alloc_19[%c2] : memref<4xi1>, vector<12x4xi1>
    %141 = vector.create_mask %c14, %92 : vector<1x4xi1>
    %142 = math.log2 %6 : tensor<12x4xf32>
    %alloca_31 = memref.alloca() : memref<1x4xi32>
    %143 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<1x1x12xi16>) outs(%2 : tensor<1x1x12xi16>) {
    ^bb0(%in: i16, %out: i16):
      scf.if %false {
        %299 = arith.addf %cst_0, %cst_0 : f32
        memref.assume_alignment %alloc, 2 : memref<1x1x12xf16>
        %300 = math.round %from_elements_26 : tensor<12x4xf32>
        %301 = math.ipowi %in, %c25215_i16 : i16
        %302 = arith.ceildivsi %in, %in : i16
        %303 = arith.negf %cst_0 : f32
        %304 = math.ceil %6 : tensor<12x4xf32>
        %305 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %306 = vector.fma %305, %89, %82 : vector<4xf32>
      } else {
        %299 = vector.extract %83[2] : vector<4xf32>
        %300 = bufferization.to_tensor %alloc_12 : memref<4xf16>
        %301 = math.ctpop %14 : tensor<4xi16>
        %302 = arith.minsi %c741381943_i64, %c741381943_i64 : i64
        %303 = arith.divui %c25215_i16, %57 : i16
        %304 = arith.remf %cst_0, %cst_4 : f32
        %305 = arith.maxf %cst, %cst : f32
        %306 = arith.remf %cst_0, %cst : f32
      }
      %264 = arith.minui %c576309929_i32, %c576309929_i32 : i32
      %265 = index.ceildivu %c1, %c2
      %266 = math.tanh %6 : tensor<12x4xf32>
      %267 = vector.splat %c0 : vector<1x4xindex>
      %268 = math.fma %6, %6, %6 : tensor<12x4xf32>
      %269 = memref.alloca_scope  -> (memref<12x4xi1>) {
        %299 = vector.broadcast %c334741408_i64 : i64 to vector<7xi64>
        %300 = vector.broadcast %false_3 : i1 to vector<7xi1>
        %301 = vector.maskedload %alloc_15[%c0, %c0, %c6], %300, %299 : memref<1x1x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %302 = vector.broadcast %true : i1 to vector<1xi1>
        %303 = vector.maskedload %alloc_13[%c1], %302, %302 : memref<4xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %304 = affine.load %alloc_21[] : memref<i1>
        %305 = arith.remf %cst, %cst_0 : f32
        %306 = affine.apply affine_map<(d0, d1, d2) -> (-d0)>(%51, %35, %51)
        %307 = index.casts %c334741408_i64 : i64 to index
        %308 = math.cttz %1 : tensor<4xi1>
        %309 = math.round %cst_1 : f32
        %310 = index.divu %86, %c8
        bufferization.dealloc_tensor %6 : tensor<12x4xf32>
        %311 = arith.minui %57, %57 : i16
        %312 = vector.bitcast %140 : vector<12x4xi1> to vector<12x4xi1>
        %313 = index.mul %35, %c10
        %314 = math.tan %6 : tensor<12x4xf32>
        %315 = vector.matrix_multiply %301, %299 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi64>, vector<7xi64>) -> vector<1xi64>
        %316 = arith.shli %false_3, %false : i1
        vector.print %123 : vector<4xf32>
        %317 = arith.ori %out, %57 : i16
        %318 = vector.shuffle %141, %140 [0, 1, 3, 4, 6, 7, 10, 12] : vector<1x4xi1>, vector<12x4xi1>
        %319 = math.fma %6, %6, %6 : tensor<12x4xf32>
        %320 = vector.broadcast %57 : i16 to vector<i16>
        %321 = vector.transfer_write %320, %10[%51, %c1] : vector<i16>, tensor<1x4xi16>
        %322 = math.absi %5 : tensor<12x4xi64>
        %323 = math.ctpop %0 : tensor<12x4xi32>
        %alloc_48 = memref.alloc() : memref<12x4xi32>
        %324 = bufferization.to_tensor %alloc_6 : memref<4xi64>
        %325 = arith.maxsi %out, %c-17629_i16 : i16
        %326 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 2)>(%40, %c2, %c15, %c8)
        %327 = math.absi %out : i16
        %328 = math.round %6 : tensor<12x4xf32>
        %329 = bufferization.clone %alloc_19 : memref<4xi1> to memref<4xi1>
        %330 = math.log2 %splat_23 : tensor<1x1x12xf32>
        %331 = vector.insertelement %cst_4, %74[%306 : index] : vector<1xf32>
        %alloc_49 = memref.alloc() : memref<12x4xi1>
        memref.alloca_scope.return %alloc_49 : memref<12x4xi1>
      }
      %270 = math.floor %28 : tensor<12x12xf32>
      %271 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
      %272 = vector.outerproduct %22, %30, %271 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      %273 = vector.broadcast %cst_4 : f32 to vector<1x4xf32>
      %274 = vector.fma %273, %116, %113 : vector<1x4xf32>
      %275 = memref.realloc %alloc_22 : memref<4xi32> to memref<12xi32>
      %false_44 = arith.constant false
      %276 = vector.transfer_read %alloc_18[%c3], %false_44 : memref<4xi1>, vector<i1>
      %277 = math.rsqrt %28 : tensor<12x12xf32>
      %278 = memref.atomic_rmw mulf %cst_2, %alloc_12[%c2] : (f16, memref<4xf16>) -> f16
      %279 = math.copysign %6, %from_elements_26 : tensor<12x4xf32>
      %280 = tensor.empty() : tensor<4x12xi16>
      %281 = tensor.empty() : tensor<12x12xi16>
      %282 = linalg.matmul ins(%4, %280 : tensor<12x4xi16>, tensor<4x12xi16>) outs(%281 : tensor<12x12xi16>) -> tensor<12x12xi16>
      %283 = arith.addf %cst, %cst_4 : f32
      %284 = vector.extract_strided_slice %113 {offsets = [0], sizes = [1], strides = [1]} : vector<1x4xf32> to vector<1x4xf32>
      %285 = arith.ceildivsi %c25215_i16, %c25215_i16 : i16
      %286 = math.exp2 %from_elements_26 : tensor<12x4xf32>
      %287 = math.round %6 : tensor<12x4xf32>
      %alloc_45 = memref.alloc() : memref<1x12xf32>
      %alloc_46 = memref.alloc() : memref<1x12x1xf32>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_46 : memref<1x12xf32>, memref<1x12x1xf32>) outs(%splat_23 : tensor<1x1x12xf32>) {
      ^bb0(%in_48: f32, %in_49: f32, %out_50: f32):
        %299 = index.casts %out : i16 to index
        %300 = affine.min affine_map<(d0, d1, d2) -> (d1 + d0)>(%265, %35, %32)
        %301 = vector.extract_strided_slice %18 {offsets = [6], sizes = [2], strides = [1]} : vector<12xi1> to vector<2xi1>
        %302 = bufferization.clone %269 : memref<12x4xi1> to memref<12x4xi1>
        %303 = vector.extract_strided_slice %301 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %304 = vector.reduction <mul>, %23 : vector<4xf32> into f32
        %305 = math.powf %in_49, %out_50 : f32
        %306 = arith.maxui %c334741408_i64, %c2144033552_i64 : i64
        %307 = arith.shli %true, %false_44 : i1
        %308 = arith.addf %cst_1, %cst_0 : f32
        %309 = arith.shrui %c1169671983_i64, %c2144033552_i64 : i64
        %alloc_51 = memref.alloc() : memref<1x1x12xf16>
        %310 = arith.cmpf uge, %cst_4, %in_49 : f32
        %311 = vector.reduction <maxf>, %83 : vector<4xf32> into f32
        %312 = math.absf %cst_4 : f32
        %alloc_52 = memref.alloc() : memref<12x4xi1>
        %313 = vector.broadcast %c334741408_i64 : i64 to vector<i64>
        vector.transfer_write %313, %alloc_8[%c0] : vector<i64>, memref<4xi64>
        %314 = arith.divsi %out, %c-17629_i16 : i16
        %315 = arith.divf %cst_2, %cst_2 : f16
        %316 = math.powf %12, %12 : tensor<1x4xf16>
        %317 = math.powf %cst, %cst : f32
        %318 = index.castu %false : i1 to index
        %dest, %accumulated_value = vector.scan <and>, %140, %18 {inclusive = true, reduction_dim = 1 : i64} : vector<12x4xi1>, vector<12xi1>
        %splat_53 = tensor.splat %57 : tensor<12x4xi16>
        memref.copy %49, %alloc_13 : memref<4xi1> to memref<4xi1>
        memref.assume_alignment %alloc_7, 16 : memref<4xf16>
        %319 = affine.load %alloc_16[%c0] : memref<4xf32>
        %320 = vector.broadcast %in : i16 to vector<7xi16>
        %321 = vector.broadcast %false : i1 to vector<7xi1>
        %322 = vector.maskedload %alloc_17[%c0, %c0, %c6], %321, %320 : memref<1x1x12xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %323 = arith.cmpi uge, %c1169671983_i64, %c741381943_i64 : i64
        %324 = arith.divf %cst_0, %cst : f32
        %325 = arith.negf %cst_2 : f16
        %326 = arith.ori %c25215_i16, %c-17629_i16 : i16
        linalg.yield %cst_0 : f32
      } -> tensor<1x1x12xf32>
      %289 = math.powf %cst_2, %cst_2 : f16
      %290 = vector.load %alloc_13[%c0] : memref<4xi1>, vector<12x4xi1>
      %291 = math.ipowi %16, %11 : tensor<4xi1>
      %292 = memref.realloc %alloc_6 : memref<4xi64> to memref<12xi64>
      %293 = vector.broadcast %cst_4 : f32 to vector<1x4xf32>
      %294 = vector.fma %293, %284, %273 : vector<1x4xf32>
      %295 = math.log10 %from_elements : tensor<4xf32>
      %296 = math.rsqrt %6 : tensor<12x4xf32>
      %splat_47 = tensor.splat %57 : tensor<1x1x12xi16>
      %297 = bufferization.to_tensor %alloc_11 : memref<12x4xi64>
      %298 = scf.index_switch %c14 -> index 
      case 1 {
        %299 = arith.cmpf uno, %cst_0, %cst_1 : f32
        %300 = tensor.empty() : tensor<12x4xi64>
        %301 = vector.load %alloc_17[%c0, %c0, %c3] : memref<1x1x12xi16>, vector<4xi16>
        %302 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %303 = vector.broadcast %false : i1 to vector<4xi1>
        %304 = vector.maskedload %alloc_9[%c0, %c3], %303, %302 : memref<1x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %305 = arith.addi %57, %c25215_i16 : i16
        memref.store %cst_2, %alloc_7[%c0] : memref<4xf16>
        %306 = math.log1p %from_elements_26 : tensor<12x4xf32>
        %307 = arith.minui %out, %c25215_i16 : i16
        %308 = index.floordivs %53, %c10
        %309 = arith.mulf %cst_4, %cst_1 : f32
        %310 = arith.addi %false, %true : i1
        memref.tensor_store %300, %alloc_10 : memref<12x4xi64>
        %311 = arith.maxui %out, %57 : i16
        memref.tensor_store %15, %85 : memref<4xi1>
        %312 = index.ceildivs %c7, %c2
        %313 = vector.splat %312 : vector<1x4xindex>
        scf.yield %c6 : index
      }
      default {
        %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xf16> into tensor<4xf16>
        %299 = vector.transpose %48, [] : vector<i32> to vector<i32>
        %300 = vector.load %alloc_7[%c0] : memref<4xf16>, vector<12x4xf16>
        %301 = math.sqrt %cst_1 : f32
        %302 = bufferization.to_tensor %alloc_8 : memref<4xi64>
        memref.assume_alignment %alloc_30, 4 : memref<12x4xf32>
        %303 = vector.broadcast %c1169671983_i64 : i64 to vector<7xi64>
        %304 = vector.broadcast %false_3 : i1 to vector<7xi1>
        %305 = vector.maskedload %alloc_8[%c2], %304, %303 : memref<4xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %306 = vector.create_mask %35, %33 : vector<1x4xi1>
        %307 = vector.extract_strided_slice %61 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %308 = math.log1p %6 : tensor<12x4xf32>
        %309 = index.mul %c5, %c5
        %310 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %from_elements_49 = tensor.from_elements %in, %57, %c-17629_i16, %out, %57, %c-17629_i16, %57, %out, %in, %out, %c25215_i16, %c-17629_i16 : tensor<1x1x12xi16>
        %311 = index.mul %c9, %c4
        %312 = vector.splat %311 : vector<1x4xindex>
        memref.assume_alignment %49, 1 : memref<4xi1>
        scf.yield %c14 : index
      }
      linalg.yield %c25215_i16 : i16
    } -> tensor<1x1x12xi16>
    %144 = index.mul %c8, %c5
    %145 = arith.maxui %c576309929_i32, %c576309929_i32 : i32
    %146 = arith.cmpf uno, %cst_0, %cst_0 : f32
    %147 = math.tan %cst_4 : f32
    %148 = math.ceil %cst : f32
    %149 = memref.atomic_rmw mulf %cst_2, %alloc_12[%c3] : (f16, memref<4xf16>) -> f16
    %c6596_i16 = arith.constant 6596 : i16
    %150 = memref.alloca_scope  -> (i64) {
      vector.print %137 : vector<4xf32>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %116, %74, %23 : vector<1x4xf32>, vector<1xf32> into vector<4xf32>
      %265 = tensor.empty() : tensor<4xi32>
      %266 = arith.ori %false, %true : i1
      %extracted_44 = tensor.extract %14[%c3] : tensor<4xi16>
      %267 = arith.divui %c576309929_i32, %c576309929_i32 : i32
      %c1948658935_i32 = arith.constant 1948658935 : i32
      %268 = math.round %from_elements : tensor<4xf32>
      %269 = vector.multi_reduction <add>, %98, %cst_0 [0, 1] : vector<12x4xf32> to f32
      %inserted = tensor.insert %c576309929_i32 into %0[%c5, %c2] : tensor<12x4xi32>
      %270 = arith.divf %cst_2, %cst_2 : f16
      %271 = vector.broadcast %c1141004266_i64 : i64 to vector<4xi64>
      %272 = vector.broadcast %false_3 : i1 to vector<4xi1>
      %273 = vector.maskedload %alloc_10[%c5, %c0], %272, %271 : memref<12x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %274 = math.exp2 %28 : tensor<12x12xf32>
      %275 = arith.minsi %c-17629_i16, %c-17629_i16 : i16
      %276 = arith.cmpi ugt, %c2144033552_i64, %c334741408_i64 : i64
      %collapsed_45 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xf16> into tensor<4xf16>
      %277 = math.absf %cst_0 : f32
      %278 = math.rsqrt %cst_4 : f32
      %279 = math.fpowi %6, %0 : tensor<12x4xf32>, tensor<12x4xi32>
      %280 = math.exp2 %269 : f32
      %281 = index.floordivs %92, %c12
      %282 = vector.extract %138[1] : vector<4xf32>
      %283 = tensor.empty() : tensor<7x4xf32>
      %284 = tensor.empty() : tensor<12x4xf32>
      %285 = linalg.matmul ins(%103, %283 : tensor<12x7xf32>, tensor<7x4xf32>) outs(%284 : tensor<12x4xf32>) -> tensor<12x4xf32>
      %alloca_46 = memref.alloca() : memref<12x4xi1>
      %286 = memref.alloca_scope  -> (memref<1x4xf32>) {
        %294 = vector.flat_transpose %18 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %295 = index.castu %false_24 : i1 to index
        %296 = vector.broadcast %c576309929_i32 : i32 to vector<4xi32>
        %297 = vector.gather %alloc_15[%c10, %33, %c11] [%296], %272, %273 : memref<1x1x12xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %298 = math.log %cst : f32
        %299 = vector.create_mask %c3, %c9, %86 : vector<1x1x12xi1>
        %300 = bufferization.clone %alloc_10 : memref<12x4xi64> to memref<12x4xi64>
        %301 = index.casts %c6 : index to i32
        %302 = arith.ceildivsi %c-17629_i16, %extracted_44 : i16
        %303 = bufferization.to_tensor %alloc_5 : memref<12x4xf16>
        %304 = index.casts %c334741408_i64 : i64 to index
        %305 = math.ipowi %4, %4 : tensor<12x4xi16>
        %306 = arith.remf %269, %cst : f32
        %from_elements_47 = tensor.from_elements %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32 : tensor<12x4xi32>
        %307 = vector.extract_strided_slice %97 {offsets = [6], sizes = [3], strides = [1]} : vector<12x4xf32> to vector<3x4xf32>
        %308 = math.log1p %303 : tensor<12x4xf16>
        %309 = math.exp2 %269 : f32
        %310 = index.casts %extracted_44 : i16 to index
        %311 = arith.minsi %false_24, %false : i1
        %312 = vector.reduction <minf>, %22 : vector<4xf32> into f32
        %313 = index.casts %false_24 : i1 to index
        %314 = vector.extract %137[1] : vector<4xf32>
        %315 = math.ctlz %true : i1
        memref.tensor_store %17, %alloc_13 : memref<4xi1>
        %316 = arith.remsi %c334741408_i64, %c1141004266_i64 : i64
        %317 = arith.divf %cst_0, %269 : f32
        %318 = arith.addi %false, %true : i1
        %319 = vector.gather %from_elements_47[%c7, %c4] [%115], %141, %115 : tensor<12x4xi32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi32> into vector<1x4xi32>
        %320 = memref.atomic_rmw ori %c576309929_i32, %alloc_22[%c3] : (i32, memref<4xi32>) -> i32
        %321 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %322 = vector.fma %321, %22, %82 : vector<4xf32>
        %323 = vector.bitcast %22 : vector<4xf32> to vector<4xf32>
        %324 = tensor.empty() : tensor<4x7xi64>
        %325 = tensor.empty() : tensor<12x7xi64>
        %326 = linalg.matmul ins(%5, %324 : tensor<12x4xi64>, tensor<4x7xi64>) outs(%325 : tensor<12x7xi64>) -> tensor<12x7xi64>
        %327 = index.ceildivs %c10, %313
        %alloc_48 = memref.alloc() : memref<1x4xf32>
        memref.alloca_scope.return %alloc_48 : memref<1x4xf32>
      }
      %287 = arith.divf %cst_0, %cst_1 : f32
      %288 = vector.insert %cst_0, %47 [1] : f32 into vector<4xf32>
      %289 = vector.insert %123, %113 [0] : vector<4xf32> into vector<1x4xf32>
      %290 = math.ceil %splat_23 : tensor<1x1x12xf32>
      %291 = math.fpowi %from_elements_26, %0 : tensor<12x4xf32>, tensor<12x4xi32>
      %292 = tensor.empty() : tensor<4xi64>
      %293 = math.ipowi %0, %0 : tensor<12x4xi32>
      memref.alloca_scope.return %c2144033552_i64 : i64
    }
    %generated = tensor.generate %c3 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %264 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d1 + 4)>(%c14, %c12, %c6, %92)
      %265 = arith.shli %c25215_i16, %c-17629_i16 : i16
      %266 = index.add %32, %c0
      %cst_44 = arith.constant 1.000000e+00 : f32
      %cst_45 = arith.constant 0.000000e+00 : f32
      %267 = vector.transfer_read %103[%c5, %35], %cst_45 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<12x7xf32>, vector<4xf32>
      tensor.yield %c576309929_i32 : i32
    } : tensor<?x1x12xi32>
    memref.assume_alignment %alloc_18, 16 : memref<4xi1>
    %151 = arith.maxsi %false, %false_3 : i1
    %152 = vector.broadcast %c576309929_i32 : i32 to vector<12xi32>
    %153 = vector.transfer_write %152, %0[%c0, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, tensor<12x4xi32>
    %154 = tensor.empty() : tensor<4x7xi16>
    %155 = tensor.empty() : tensor<12x7xi16>
    %156 = linalg.matmul ins(%4, %154 : tensor<12x4xi16>, tensor<4x7xi16>) outs(%155 : tensor<12x7xi16>) -> tensor<12x7xi16>
    %157 = vector.transpose %47, [0] : vector<4xf32> to vector<4xf32>
    %158 = vector.create_mask %c1, %c5, %35 : vector<1x1x12xi1>
    %from_elements_32 = tensor.from_elements %c25215_i16, %c25215_i16, %c-17629_i16, %c-17629_i16, %57, %57, %57, %57, %c-17629_i16, %57, %57, %57 : tensor<1x1x12xi16>
    %alloca_33 = memref.alloca() : memref<1x1x12xf32>
    %159 = vector.broadcast %c1141004266_i64 : i64 to vector<1xi64>
    %160 = vector.broadcast %true : i1 to vector<1xi1>
    %161 = vector.maskedload %alloc_10[%c1, %c3], %160, %159 : memref<12x4xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %162 = index.castu %c2144033552_i64 : i64 to index
    %163 = bufferization.clone %alloc_15 : memref<1x1x12xi64> to memref<1x1x12xi64>
    %164 = vector.broadcast %false_3 : i1 to vector<i1>
    %165 = vector.transfer_write %164, %15[%c11] : vector<i1>, tensor<4xi1>
    %166 = vector.create_mask %c15, %c2 : vector<12x4xi1>
    %167 = affine.apply affine_map<(d0) -> (-d0)>(%c6)
    %168 = arith.remf %cst_2, %cst_2 : f16
    affine.store %false_24, %alloc_18[%c13] : memref<4xi1>
    %169 = arith.maxui %c1169671983_i64, %150 : i64
    %170 = arith.mulf %cst_0, %cst_1 : f32
    %171 = math.log1p %cst : f32
    %172 = vector.transpose %159, [0] : vector<1xi64> to vector<1xi64>
    %173 = arith.divui %c-17629_i16, %c25215_i16 : i16
    %174 = math.absi %8 : tensor<1x4xi32>
    %175 = tensor.empty() : tensor<4x1xi32>
    %176 = tensor.empty() : tensor<1x1xi32>
    %177 = linalg.matmul ins(%8, %175 : tensor<1x4xi32>, tensor<4x1xi32>) outs(%176 : tensor<1x1xi32>) -> tensor<1x1xi32>
    memref.store %c1169671983_i64, %alloc_8[%c3] : memref<4xi64>
    %178 = scf.while (%arg3 = %75) : (memref<12x4xf16>) -> memref<12x4xf16> {
      scf.if %false_24 {
        %269 = index.ceildivs %c12, %92
        %270 = arith.remui %57, %57 : i16
        %271 = vector.matrix_multiply %18, %18 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %272 = math.rsqrt %28 : tensor<12x12xf32>
        %273 = arith.addi %57, %c25215_i16 : i16
        %274 = math.ipowi %19, %20 : tensor<i32>
        %from_elements_48 = tensor.from_elements %cst_4, %cst, %cst_4, %cst_1, %cst_0, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_1, %cst_1, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_1, %cst, %cst_4, %cst_0, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4 : tensor<12x4xf32>
        %275 = arith.divui %c2144033552_i64, %c2144033552_i64 : i64
      }
      %264 = tensor.empty(%c13) : tensor<1x?x12xf32>
      %265 = vector.bitcast %82 : vector<4xf32> to vector<4xi32>
      %266 = vector.shuffle %18, %160 [1, 2, 6, 10, 11] : vector<12xi1>, vector<1xi1>
      %true_44 = index.bool.constant true
      %alloc_45 = memref.alloc() : memref<1x12x1xi16>
      %alloc_46 = memref.alloc() : memref<1x12xi16>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_46 : memref<1x12x1xi16>, memref<1x12xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_48: i16, %out: i16):
        %269 = vector.broadcast %c1169671983_i64 : i64 to vector<1x4xi64>
        %270 = math.absi %false_24 : i1
        %271 = math.ipowi %7, %7 : tensor<12x4xi64>
        %272 = math.rsqrt %splat_23 : tensor<1x1x12xf32>
        %273 = index.sizeof
        %274 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %275 = vector.fma %274, %30, %83 : vector<4xf32>
        %276 = arith.maxui %c334741408_i64, %c1169671983_i64 : i64
        %277 = arith.maxui %true, %true_44 : i1
        %278 = tensor.empty() : tensor<12x12xi32>
        %279 = math.fpowi %28, %278 : tensor<12x12xf32>, tensor<12x12xi32>
        %280 = vector.create_mask %c5, %167, %35 : vector<1x1x12xi1>
        %281 = index.ceildivs %c13, %c14
        %282 = math.log1p %28 : tensor<12x12xf32>
        %283 = arith.minui %in_48, %out : i16
        %284 = arith.negf %cst_0 : f32
        %285 = math.exp2 %from_elements : tensor<4xf32>
        %286 = math.powf %cst_4, %cst : f32
        memref.tensor_store %1, %alloc_13 : memref<4xi1>
        memref.store %c576309929_i32, %alloc_22[%c3] : memref<4xi32>
        %287 = memref.realloc %alloc_22 : memref<4xi32> to memref<12xi32>
        %288 = index.mul %c4, %c15
        %289 = math.log1p %6 : tensor<12x4xf32>
        %290 = math.ctpop %true : i1
        %291 = index.mul %162, %c0
        %292 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        vector.transfer_write %292, %alloc_30[%c5, %144] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf32>, memref<12x4xf32>
        %293 = vector.shuffle %23, %138 [2, 3, 4, 5, 6] : vector<4xf32>, vector<4xf32>
        %294 = vector.broadcast %cst_2 : f16 to vector<12x4xf16>
        %295 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
        %296 = vector.gather %alloc_12[%291] [%295], %24, %294 : memref<4xf16>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf16> into vector<12x4xf16>
        %true_49 = index.bool.constant true
        %297 = math.absi %true : i1
        %298 = arith.maxf %cst_4, %cst_0 : f32
        %299 = index.mul %288, %291
        %300 = math.absi %10 : tensor<1x4xi16>
        %true_50 = index.bool.constant true
        linalg.yield %in : i16
      } -> tensor<1x1x12xi16>
      %268 = memref.atomic_rmw minf %cst_2, %75[%c2, %c3] : (f16, memref<12x4xf16>) -> f16
      %generated_47 = tensor.generate %c1 {
      ^bb0(%arg4: index, %arg5: index):
        %269 = index.castu %true : i1 to index
        %270 = vector.matrix_multiply %74, %61 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %271 = math.floor %splat_23 : tensor<1x1x12xf32>
        %272 = math.rsqrt %cst_1 : f32
        tensor.yield %cst_1 : f32
      } : tensor<?x4xf32>
      scf.condition(%false_24) %arg3 : memref<12x4xf16>
    } do {
    ^bb0(%arg3: memref<12x4xf16>):
      %264 = tensor.empty() : tensor<4xf16>
      %mapped = linalg.map ins(%alloc_7, %alloc_12 : memref<4xf16>, memref<4xf16>) outs(%264 : tensor<4xf16>)
        (%in: f16, %in_45: f16) {
          %278 = vector.shuffle %160, %160 [0] : vector<1xi1>, vector<1xi1>
          %279 = tensor.empty() : tensor<4xf32>
          %280 = arith.ori %c576309929_i32, %c576309929_i32 : i32
          %false_46 = index.bool.constant false
          %281 = arith.ori %c576309929_i32, %c576309929_i32 : i32
          %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 8 + 8)>(%c15, %32, %32, %c3)
          %283 = arith.negf %cst_4 : f32
          %cast_47 = tensor.cast %splat_23 : tensor<1x1x12xf32> to tensor<?x?x?xf32>
          %284 = index.castu %false_3 : i1 to index
          %285 = arith.ori %57, %57 : i16
          %286 = bufferization.to_tensor %85 : memref<4xi1>
          %287 = math.log2 %from_elements : tensor<4xf32>
          %288 = arith.maxsi %c-17629_i16, %c-17629_i16 : i16
          %289 = vector.create_mask %162, %284 : vector<1x4xi1>
          %290 = math.exp %cst : f32
          %291 = arith.maxf %cst_2, %in : f16
          affine.store %c1141004266_i64, %alloc_10[%c7, %c6] : memref<12x4xi64>
          %292 = math.round %cst_1 : f32
          %alloc_48 = memref.alloc() : memref<1x1x12xf16>
          memref.copy %alloc, %alloc_48 : memref<1x1x12xf16> to memref<1x1x12xf16>
          memref.tensor_store %286, %alloc_18 : memref<4xi1>
          %293 = arith.minui %57, %c-17629_i16 : i16
          %294 = index.floordivs %33, %64
          %295 = math.cttz %3 : tensor<4xi1>
          %296 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
          %297 = vector.outerproduct %83, %137, %296 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
          %298 = index.floordivs %c6, %86
          %299 = vector.extract %106[9] : vector<12x4xf32>
          %300 = math.ceil %12 : tensor<1x4xf16>
          memref.store %cst_2, %alloc_5[%c4, %c3] : memref<12x4xf16>
          %301 = arith.maxf %cst, %cst_4 : f32
          %302 = tensor.empty() : tensor<4x4xi32>
          %303 = tensor.empty() : tensor<1x4xi32>
          %304 = linalg.matmul ins(%8, %302 : tensor<1x4xi32>, tensor<4x4xi32>) outs(%303 : tensor<1x4xi32>) -> tensor<1x4xi32>
          %extracted_49 = tensor.extract %12[%c0, %c3] : tensor<1x4xf16>
          %305 = arith.ceildivsi %c1141004266_i64, %c334741408_i64 : i64
          %cst_50 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_50 : f16
        }
      %265 = math.powf %cst_1, %cst_1 : f32
      vector.print %138 : vector<4xf32>
      %266 = vector.broadcast %c741381943_i64 : i64 to vector<i64>
      vector.transfer_write %266, %alloc_8[%c8] : vector<i64>, memref<4xi64>
      %267 = index.casts %false_24 : i1 to index
      %268 = index.floordivs %40, %c12
      %269 = affine.load %alloc_22[%c15] : memref<4xi32>
      %270 = tensor.empty() : tensor<12x1xi16>
      %alloc_44 = memref.alloc() : memref<1xi16>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %alloc_44, %270 : tensor<12x1xi16>, memref<1xi16>, tensor<12x1xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_45: i16, %in_46: i16, %out: i16):
        %278 = vector.broadcast %cst_2 : f16 to vector<7xf16>
        %279 = vector.transfer_write %278, %12[%267, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, tensor<1x4xf16>
        %280 = vector.reduction <add>, %47 : vector<4xf32> into f32
        %281 = arith.divf %cst, %cst_0 : f32
        %alloc_47 = memref.alloc() : memref<4x7xf16>
        %282 = tensor.empty() : tensor<1x7xf16>
        %283 = linalg.matmul ins(%12, %alloc_47 : tensor<1x4xf16>, memref<4x7xf16>) outs(%282 : tensor<1x7xf16>) -> tensor<1x7xf16>
        vector.print %116 : vector<1x4xf32>
        %extracted_48 = tensor.extract %9[%c0] : tensor<4xi16>
        %284 = index.casts %c2144033552_i64 : i64 to index
        %285 = arith.cmpi ne, %in_46, %out : i16
        %286 = math.log %282 : tensor<1x7xf16>
        %287 = index.castu %269 : i32 to index
        %288 = arith.addf %cst, %cst : f32
        %289 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
        %290 = vector.outerproduct %137, %23, %289 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %291 = tensor.empty() : tensor<1x1x12xi32>
        %292 = math.fpowi %splat_23, %291 : tensor<1x1x12xf32>, tensor<1x1x12xi32>
        %293 = bufferization.clone %alloc_9 : memref<1x4xf16> to memref<1x4xf16>
        memref.tensor_store %from_elements, %alloc_16 : memref<4xf32>
        %294 = arith.remf %cst_1, %cst_4 : f32
        %295 = memref.realloc %alloc_12 : memref<4xf16> to memref<4xf16>
        %296 = index.maxs %267, %64
        memref.copy %arg3, %alloc_5 : memref<12x4xf16> to memref<12x4xf16>
        %from_elements_49 = tensor.from_elements %269, %c576309929_i32, %c576309929_i32, %269, %269, %c576309929_i32, %c576309929_i32, %c576309929_i32, %269, %c576309929_i32, %269, %c576309929_i32 : tensor<1x1x12xi32>
        %297 = vector.extract_strided_slice %140 {offsets = [3], sizes = [8], strides = [1]} : vector<12x4xi1> to vector<8x4xi1>
        %298 = index.castu %296 : index to i32
        %299 = index.mul %c3, %c0
        %300 = vector.splat %267 : vector<12x4xindex>
        %301 = vector.transpose %166, [1, 0] : vector<12x4xi1> to vector<4x12xi1>
        vector.print %78 : vector<f32>
        %splat_50 = tensor.splat %in_46 : tensor<4xi16>
        %302 = vector.matrix_multiply %82, %82 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %alloc_51 = memref.alloc() : memref<1x1x12xf32>
        memref.tensor_store %splat_23, %alloc_51 : memref<1x1x12xf32>
        %303 = arith.cmpi ne, %false_24, %false_3 : i1
        %304 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
        %305 = vector.outerproduct %46, %74, %304 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %306 = vector.multi_reduction <add>, %278, %278 [] : vector<7xf16> to vector<7xf16>
        linalg.yield %c-17629_i16 : i16
      } -> tensor<1x1x12xi16>
      %272 = math.round %12 : tensor<1x4xf16>
      %273 = arith.shli %c1141004266_i64, %150 : i64
      %inserted = tensor.insert %c25215_i16 into %14[%c0] : tensor<4xi16>
      %274 = math.absf %264 : tensor<4xf16>
      %275 = vector.broadcast %cst_0 : f32 to vector<12xf32>
      %276 = vector.transfer_write %275, %splat_23[%c15, %c9, %51] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xf32>, tensor<1x1x12xf32>
      vector.print %48 : vector<i32>
      %cast = tensor.cast %16 : tensor<4xi1> to tensor<?xi1>
      %277 = vector.shuffle %132, %132 [0, 1] : vector<i64>, vector<i64>
      scf.yield %75 : memref<12x4xf16>
    }
    %splat_34 = tensor.splat %c2144033552_i64 : tensor<12x4xi64>
    %179 = arith.remf %cst, %cst : f32
    %180 = arith.ceildivsi %c25215_i16, %c-17629_i16 : i16
    %181 = scf.index_switch %c8 -> vector<12x4xi32> 
    case 1 {
      %264 = affine.for %arg3 = 0 to 82 iter_args(%arg4 = %89) -> (vector<4xf32>) {
        affine.yield %30 : vector<4xf32>
      }
      %265 = bufferization.to_memref %8 : memref<1x4xi32>
      %266 = scf.while (%arg3 = %alloc_19) : (memref<4xi1>) -> memref<4xi1> {
        %280 = vector.bitcast %24 : vector<12x4xi1> to vector<12x4xi1>
        %281 = vector.broadcast %c25215_i16 : i16 to vector<i16>
        %282 = vector.transfer_write %281, %4[%92, %c0] : vector<i16>, tensor<12x4xi16>
        %283 = vector.broadcast %cst_4 : f32 to vector<1x1x12xf32>
        %284 = vector.fma %283, %283, %283 : vector<1x1x12xf32>
        %285 = math.exp %6 : tensor<12x4xf32>
        %286 = index.mul %c8, %51
        %287 = math.powf %cst, %cst_0 : f32
        %288 = vector.splat %false_24 : vector<1x4xi1>
        %289 = index.mul %167, %c1
        scf.condition(%false_24) %alloc_18 : memref<4xi1>
      } do {
      ^bb0(%arg3: memref<4xi1>):
        %280 = math.log %from_elements_26 : tensor<12x4xf32>
        %alloca_47 = memref.alloca() : memref<12x4xi1>
        %281 = math.ctpop %1 : tensor<4xi1>
        %282 = vector.broadcast %cst : f32 to vector<4xf32>
        %283 = vector.fma %282, %282, %137 : vector<4xf32>
        %284 = index.floordivs %33, %c2
        %285 = index.add %c5, %c3
        %286 = vector.create_mask %c4, %40 : vector<12x4xi1>
        %287 = arith.ceildivsi %c1169671983_i64, %c334741408_i64 : i64
        %288 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        %289 = vector.transfer_write %288, %from_elements_26[%53, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf32>, tensor<12x4xf32>
        %290 = math.sqrt %cst : f32
        %291 = arith.maxsi %c576309929_i32, %c576309929_i32 : i32
        %292 = arith.divf %cst_2, %cst_2 : f16
        %293 = math.round %103 : tensor<12x7xf32>
        %294 = arith.ori %c2144033552_i64, %c741381943_i64 : i64
        %295 = math.ctpop %7 : tensor<12x4xi64>
        %296 = arith.remsi %150, %150 : i64
        scf.yield %49 : memref<4xi1>
      }
      %267 = math.floor %cst_1 : f32
      %268 = tensor.empty() : tensor<4x4xi16>
      %269 = tensor.empty() : tensor<1x4xi16>
      %270 = linalg.matmul ins(%10, %268 : tensor<1x4xi16>, tensor<4x4xi16>) outs(%269 : tensor<1x4xi16>) -> tensor<1x4xi16>
      %from_elements_44 = tensor.from_elements %c25215_i16, %c25215_i16, %57, %c-17629_i16 : tensor<4xi16>
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<1x1x12xi16> into tensor<1x12xi16>
      vector.print %78 : vector<f32>
      %271 = vector.create_mask %32, %c6 : vector<1x4xi1>
      %272 = scf.if %false_3 -> (memref<1x4xf32>) {
        %280 = vector.load %alloc_30[%c7, %c2] : memref<12x4xf32>, vector<12x4xf32>
        %281 = arith.minsi %false_3, %false_24 : i1
        %282 = math.powf %103, %103 : tensor<12x7xf32>
        %283 = math.fma %cst_0, %cst, %cst : f32
        %284 = arith.maxsi %false_24, %true : i1
        %285 = bufferization.clone %alloc_9 : memref<1x4xf16> to memref<1x4xf16>
        %286 = arith.maxf %cst_2, %cst_2 : f16
        %287 = vector.flat_transpose %47 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %alloc_47 = memref.alloc() : memref<1x4xf32>
        scf.yield %alloc_47 : memref<1x4xf32>
      } else {
        %280 = vector.flat_transpose %22 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %281 = index.maxu %c15, %c1
        %282 = arith.ceildivsi %true, %false_3 : i1
        %283 = math.exp2 %12 : tensor<1x4xf16>
        %284 = vector.broadcast %false_24 : i1 to vector<4xi1>
        %285 = vector.maskedload %alloc_13[%c0], %284, %284 : memref<4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %286 = math.absi %20 : tensor<i32>
        %287 = math.log2 %splat_23 : tensor<1x1x12xf32>
        %288 = vector.flat_transpose %82 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %alloc_47 = memref.alloc() : memref<1x4xf32>
        scf.yield %alloc_47 : memref<1x4xf32>
      }
      %273 = math.exp %6 : tensor<12x4xf32>
      %alloc_46 = memref.alloc() : memref<1x4xi1>
      %274 = vector.gather %alloc_46[%40, %c14] [%115], %271, %141 : memref<1x4xi1>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi1> into vector<1x4xi1>
      %275 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %276 = vector.fma %275, %123, %275 : vector<4xf32>
      memref.store %false, %alloc_18[%c2] : memref<4xi1>
      %277 = math.rsqrt %28 : tensor<12x12xf32>
      %278 = vector.insert %cst_0, %83 [1] : f32 into vector<4xf32>
      %279 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
      scf.yield %279 : vector<12x4xi32>
    }
    case 2 {
      %264 = arith.ceildivsi %false_24, %false : i1
      %alloca_44 = memref.alloca() : memref<1x4xi1>
      %265 = memref.realloc %alloc_18 : memref<4xi1> to memref<1xi1>
      %266 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %267 = vector.fma %266, %30, %39 : vector<4xf32>
      %268 = bufferization.clone %alloc_19 : memref<4xi1> to memref<4xi1>
      %269 = index.add %32, %c3
      %270 = arith.cmpi eq, %c2144033552_i64, %c334741408_i64 : i64
      %271 = math.rsqrt %6 : tensor<12x4xf32>
      %272 = arith.minui %c576309929_i32, %c576309929_i32 : i32
      %273 = math.round %cst_2 : f16
      %274 = vector.splat %c12 : vector<4xindex>
      %inserted = tensor.insert %cst_4 into %6[%c11, %c2] : tensor<12x4xf32>
      %275 = bufferization.clone %alloc_16 : memref<4xf32> to memref<4xf32>
      %276 = arith.ceildivsi %false_24, %false_24 : i1
      %277 = arith.ori %c576309929_i32, %c576309929_i32 : i32
      %278 = index.maxu %269, %c9
      %279 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
      scf.yield %279 : vector<12x4xi32>
    }
    case 3 {
      %264 = math.log1p %cst_1 : f32
      %generated_44 = tensor.generate %c10 {
      ^bb0(%arg3: index):
        %alloca_46 = memref.alloca() : memref<1x4xi1>
        %279 = arith.remui %false_3, %true : i1
        %280 = math.sqrt %12 : tensor<1x4xf16>
        %281 = math.absf %cst : f32
        tensor.yield %cst_2 : f16
      } : tensor<?xf16>
      %265 = arith.minui %c576309929_i32, %c576309929_i32 : i32
      %alloc_45 = memref.alloc() : memref<1x4xf32>
      %266 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
      %267 = vector.gather %alloc_45[%162, %c4] [%266], %166, %97 : memref<1x4xf32>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf32> into vector<12x4xf32>
      %268 = index.floordivs %86, %c15
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%out: i16):
        %279 = vector.insertelement %c576309929_i32, %152[%167 : index] : vector<12xi32>
        %280 = vector.broadcast %57 : i16 to vector<i16>
        vector.transfer_write %280, %alloc_17[%c2, %c2, %c4] : vector<i16>, memref<1x1x12xi16>
        %281 = math.absi %false_24 : i1
        memref.store %false_3, %85[%c2] : memref<4xi1>
        %282 = arith.minsi %150, %c741381943_i64 : i64
        %alloca_46 = memref.alloca() : memref<4xi64>
        %283 = math.log1p %from_elements : tensor<4xf32>
        %284 = math.log2 %6 : tensor<12x4xf32>
        %285 = math.log10 %103 : tensor<12x7xf32>
        %286 = math.round %splat_23 : tensor<1x1x12xf32>
        %alloca_47 = memref.alloca() : memref<4xf16>
        %287 = vector.shuffle %89, %82 [4, 5, 6] : vector<4xf32>, vector<4xf32>
        %288 = arith.divui %c576309929_i32, %c576309929_i32 : i32
        %289 = vector.multi_reduction <mul>, %138, %138 [] : vector<4xf32> to vector<4xf32>
        %290 = arith.cmpi ugt, %57, %c-17629_i16 : i16
        %291 = math.ipowi %176, %176 : tensor<1x1xi32>
        %292 = affine.min affine_map<(d0) -> ((-((d0 + 2) floordiv 64)) floordiv 16, (d0 + 2) floordiv 64 + d0)>(%c12)
        %inserted = tensor.insert %cst_4 into %28[%c2, %c0] : tensor<12x12xf32>
        %293 = index.casts %c1141004266_i64 : i64 to index
        %294 = vector.extract_strided_slice %46 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %295 = arith.ori %c2144033552_i64, %c2144033552_i64 : i64
        %extracted_48 = tensor.extract %155[%c8, %c0] : tensor<12x7xi16>
        memref.tensor_store %5, %alloc_11 : memref<12x4xi64>
        affine.store %150, %alloc_8[%c0] : memref<4xi64>
        %296 = arith.ori %extracted_48, %extracted_48 : i16
        %297 = arith.maxui %c1169671983_i64, %c334741408_i64 : i64
        vector.print %266 : vector<12x4xi32>
        %298 = arith.ceildivsi %c1169671983_i64, %c741381943_i64 : i64
        %299 = tensor.empty() : tensor<1x1x12xi32>
        %300 = math.fpowi %splat_23, %299 : tensor<1x1x12xf32>, tensor<1x1x12xi32>
        %301 = vector.splat %35 : vector<1x4xindex>
        %302 = vector.bitcast %114 : vector<1x4xi1> to vector<1x4xi1>
        %303 = arith.mulf %cst_4, %cst : f32
        linalg.yield %out : i16
      } -> tensor<1x1x12xi16>
      %270 = memref.realloc %alloc_14 : memref<4xi64> to memref<12xi64>
      %271 = arith.addf %cst, %cst_1 : f32
      %272 = math.cttz %19 : tensor<i32>
      %273 = math.cttz %2 : tensor<1x1x12xi16>
      scf.if %false_24 {
        %alloc_46 = memref.alloc() : memref<1x4xf32>
        %alloca_47 = memref.alloca() : memref<1x4xi1>
        %279 = arith.maxui %c741381943_i64, %c1169671983_i64 : i64
        %280 = vector.load %alloc_16[%c3] : memref<4xf32>, vector<4xf32>
        %281 = vector.reduction <mul>, %22 : vector<4xf32> into f32
        %282 = index.ceildivs %64, %c3
        %283 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
        %284 = vector.outerproduct %83, %137, %283 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %c635077701_i32 = arith.constant 635077701 : i32
      } else {
        %279 = index.mul %35, %53
        %280 = math.floor %cst : f32
        %281 = vector.broadcast %true : i1 to vector<i1>
        %282 = vector.transfer_write %281, %11[%c2] : vector<i1>, tensor<4xi1>
        %283 = bufferization.to_memref %2 : memref<1x1x12xi16>
        %alloc_46 = memref.alloc() : memref<1x1x12xi32>
        %284 = vector.broadcast %c576309929_i32 : i32 to vector<1x1x12xi32>
        %285 = vector.gather %alloc_46[%64, %86, %c8] [%284], %158, %284 : memref<1x1x12xi32>, vector<1x1x12xi32>, vector<1x1x12xi1>, vector<1x1x12xi32> into vector<1x1x12xi32>
        %286 = arith.minui %false, %true : i1
        memref.tensor_store %5, %alloc_11 : memref<12x4xi64>
        %287 = math.log1p %6 : tensor<12x4xf32>
      }
      %274 = math.log %12 : tensor<1x4xf16>
      %275 = tensor.empty() : tensor<4xi64>
      %276 = arith.minui %150, %150 : i64
      %277 = bufferization.clone %alloc_10 : memref<12x4xi64> to memref<12x4xi64>
      %278 = index.casts %c14 : index to i32
      scf.yield %266 : vector<12x4xi32>
    }
    case 4 {
      %264 = vector.flat_transpose %74 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %265 = arith.ori %c741381943_i64, %c334741408_i64 : i64
      %266 = index.sizeof
      %267 = vector.create_mask %c14, %c8 : vector<1x4xi1>
      memref.assume_alignment %alloc_15, 16 : memref<1x1x12xi64>
      %268 = vector.insert %cst_0, %83 [3] : f32 into vector<4xf32>
      %269 = math.fma %12, %12, %12 : tensor<1x4xf16>
      %270 = math.fpowi %6, %0 : tensor<12x4xf32>, tensor<12x4xi32>
      %271 = math.tan %from_elements : tensor<4xf32>
      %272 = arith.divf %cst, %cst_0 : f32
      %273 = vector.extract_strided_slice %264 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %cast = tensor.cast %14 : tensor<4xi16> to tensor<?xi16>
      %274 = index.mul %c5, %51
      %alloca_44 = memref.alloca() : memref<4xi16>
      %275 = vector.reduction <minf>, %264 : vector<1xf32> into f32
      %276 = vector.shuffle %47, %82 [1, 2, 3, 4, 5] : vector<4xf32>, vector<4xf32>
      %277 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
      scf.yield %277 : vector<12x4xi32>
    }
    default {
      %264 = vector.bitcast %115 : vector<1x4xi32> to vector<1x4xi32>
      %265 = vector.insertelement %cst_1, %30[%51 : index] : vector<4xf32>
      %266 = vector.reduction <maxsi>, %152 : vector<12xi32> into i32
      %267 = vector.create_mask %c9, %c9 : vector<12x4xi1>
      %268 = index.floordivs %c11, %32
      %269 = math.fma %12, %12, %12 : tensor<1x4xf16>
      %from_elements_44 = tensor.from_elements %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32 : tensor<4xi32>
      %270 = arith.minsi %c1169671983_i64, %c741381943_i64 : i64
      %271 = math.absi %11 : tensor<4xi1>
      %272 = math.ceil %from_elements_26 : tensor<12x4xf32>
      %273 = math.fpowi %from_elements, %13 : tensor<4xf32>, tensor<4xi32>
      %274 = math.exp2 %6 : tensor<12x4xf32>
      %275 = affine.for %arg3 = 0 to 79 iter_args(%arg4 = %alloc_21) -> (memref<i1>) {
        affine.yield %alloc_21 : memref<i1>
      }
      %splat_45 = tensor.splat %cst_4 : tensor<12x4xf32>
      %from_elements_46 = tensor.from_elements %c-17629_i16, %c25215_i16, %57, %c-17629_i16, %57, %c-17629_i16, %c-17629_i16, %57, %c25215_i16, %57, %c25215_i16, %c25215_i16 : tensor<1x1x12xi16>
      %extracted_47 = tensor.extract %generated[%c0, %c0, %c0] : tensor<?x1x12xi32>
      %276 = vector.broadcast %c576309929_i32 : i32 to vector<12x4xi32>
      scf.yield %276 : vector<12x4xi32>
    }
    %182 = vector.multi_reduction <maxf>, %30, %cst_1 [0] : vector<4xf32> to f32
    %183 = arith.maxsi %c334741408_i64, %c2144033552_i64 : i64
    %184 = arith.shli %false, %false_24 : i1
    %185 = vector.maskedload %alloc_21[], %160, %160 : memref<i1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %186 = vector.extract_strided_slice %39 {offsets = [0], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
    %alloc_35 = memref.alloc() : memref<i1>
    memref.copy %alloc_21, %alloc_35 : memref<i1> to memref<i1>
    %187 = math.log1p %cst_2 : f16
    %188 = math.rsqrt %cst_4 : f32
    scf.index_switch %c8 
    case 1 {
      %264 = arith.minf %182, %182 : f32
      %265 = index.ceildivs %c13, %c0
      scf.index_switch %92 
      case 1 {
        memref.store %c25215_i16, %alloc_17[%c0, %c0, %c5] : memref<1x1x12xi16>
        %281 = arith.divf %cst_0, %182 : f32
        %282 = bufferization.clone %alloc_9 : memref<1x4xf16> to memref<1x4xf16>
        %283 = vector.bitcast %138 : vector<4xf32> to vector<4xf32>
        %284 = math.exp2 %182 : f32
        %285 = index.ceildivs %32, %c3
        %286 = math.floor %from_elements_26 : tensor<12x4xf32>
        %287 = math.sqrt %28 : tensor<12x12xf32>
        %288 = memref.load %alloc_5[%c7, %c1] : memref<12x4xf16>
        %289 = math.round %from_elements : tensor<4xf32>
        %collapsed_44 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x4xi32> into tensor<48xi32>
        %290 = index.ceildivs %c2, %c6
        %291 = vector.broadcast %265 : index to vector<1xindex>
        %292 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        vector.scatter %alloc[%c0, %c0, %c2] [%291], %185, %292 : memref<1x1x12xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %293 = math.tanh %from_elements_26 : tensor<12x4xf32>
        %294 = memref.load %alloc_8[%c0] : memref<4xi64>
        %295 = affine.load %85[%c8] : memref<4xi1>
        scf.yield
      }
      default {
        %281 = arith.shrsi %c1169671983_i64, %c334741408_i64 : i64
        %282 = arith.ceildivsi %false, %false_3 : i1
        %283 = index.castu %c12 : index to i32
        %284 = math.log1p %cst_4 : f32
        %285 = vector.broadcast %false_24 : i1 to vector<4xi1>
        %dest, %accumulated_value = vector.scan <maxsi>, %114, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %286 = vector.multi_reduction <minsi>, %18, %18 [] : vector<12xi1> to vector<12xi1>
        %287 = vector.bitcast %114 : vector<1x4xi1> to vector<1x4xi1>
        %288 = math.tanh %cst_2 : f16
        %289 = math.copysign %from_elements, %from_elements : tensor<4xf32>
        %290 = memref.realloc %alloc_16 : memref<4xf32> to memref<7xf32>
        %291 = tensor.empty() : tensor<1x4xi32>
        %292 = linalg.matmul ins(%176, %8 : tensor<1x1xi32>, tensor<1x4xi32>) outs(%291 : tensor<1x4xi32>) -> tensor<1x4xi32>
        %293 = math.absi %13 : tensor<4xi32>
        %294 = arith.minui %57, %c25215_i16 : i16
        %295 = vector.broadcast %cst_1 : f32 to vector<1x4xf32>
        %296 = vector.fma %295, %113, %113 : vector<1x4xf32>
        %297 = math.ceil %from_elements_26 : tensor<12x4xf32>
        %298 = vector.broadcast %57 : i16 to vector<1xi16>
        %299 = vector.transfer_write %298, %4[%53, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, tensor<12x4xi16>
      }
      %266 = tensor.empty() : tensor<4x1xi32>
      %267 = tensor.empty() : tensor<12x1xi32>
      %268 = linalg.matmul ins(%0, %266 : tensor<12x4xi32>, tensor<4x1xi32>) outs(%267 : tensor<12x1xi32>) -> tensor<12x1xi32>
      %269 = math.log2 %cst_0 : f32
      %270 = vector.insertelement %cst_0, %83[%c8 : index] : vector<4xf32>
      %271 = bufferization.clone %75 : memref<12x4xf16> to memref<12x4xf16>
      %272 = math.tan %28 : tensor<12x12xf32>
      %273 = math.log2 %cst : f32
      %274 = arith.maxui %c1169671983_i64, %c1141004266_i64 : i64
      %275 = arith.addi %false, %false_24 : i1
      %276 = math.log2 %cst_1 : f32
      %277 = arith.minui %c1141004266_i64, %c2144033552_i64 : i64
      %278 = math.cttz %19 : tensor<i32>
      %279 = arith.shli %false_3, %false : i1
      %280 = arith.remui %false, %false_24 : i1
      scf.yield
    }
    case 2 {
      %264 = index.castu %162 : index to i32
      %alloc_44 = memref.alloc() : memref<12x1xi16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44 : memref<12x1xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %out: i16):
        %277 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %278 = math.cttz %2 : tensor<1x1x12xi16>
        memref.tensor_store %7, %alloc_11 : memref<12x4xi64>
        %279 = arith.minsi %false, %false_24 : i1
        %collapsed_50 = tensor.collapse_shape %4 [[0, 1]] : tensor<12x4xi16> into tensor<48xi16>
        %280 = math.ceil %28 : tensor<12x12xf32>
        %281 = index.mul %35, %c8
        %282 = arith.divui %in, %57 : i16
        %283 = math.round %cst : f32
        %alloca_51 = memref.alloca() : memref<12x4xi32>
        %284 = vector.broadcast %cst_0 : f32 to vector<1x4xf32>
        %285 = vector.fma %284, %284, %284 : vector<1x4xf32>
        %286 = index.floordivs %c1, %35
        %287 = bufferization.clone %alloc_22 : memref<4xi32> to memref<4xi32>
        %288 = vector.matrix_multiply %30, %30 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %289 = vector.bitcast %159 : vector<1xi64> to vector<1xi64>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 4, d1, d0 floordiv 4)>(%64, %86, %c14, %c10)
        %from_elements_52 = tensor.from_elements %cst_1, %cst_4, %cst_1, %cst_0, %cst_0, %182, %cst_4, %182, %182, %cst_1, %cst, %182 : tensor<1x1x12xf32>
        %291 = index.floordivs %c4, %290
        %292 = vector.extract_strided_slice %23 {offsets = [1], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        %293 = math.copysign %from_elements_26, %6 : tensor<12x4xf32>
        %294 = arith.remsi %false_24, %false_3 : i1
        %alloc_53 = memref.alloc() : memref<4xi16>
        memref.tensor_store %9, %alloc_53 : memref<4xi16>
        %295 = vector.bitcast %39 : vector<4xf32> to vector<4xf32>
        vector.print %132 : vector<i64>
        %296 = arith.maxf %182, %cst : f32
        %297 = arith.addi %true, %false : i1
        %298 = math.ctpop %c334741408_i64 : i64
        %299 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %300 = vector.fma %299, %138, %30 : vector<4xf32>
        %301 = bufferization.to_tensor %alloc_16 : memref<4xf32>
        %302 = math.round %cst_0 : f32
        %303 = index.ceildivs %c6, %c7
        %304 = math.copysign %cst_1, %cst_0 : f32
        linalg.yield %57 : i16
      } -> tensor<1x1x12xi16>
      %266 = vector.bitcast %152 : vector<12xi32> to vector<12xi32>
      %267 = math.fpowi %12, %8 : tensor<1x4xf16>, tensor<1x4xi32>
      %alloc_45 = memref.alloc() : memref<4x7xi64>
      %268 = tensor.empty() : tensor<12x7xi64>
      %269 = linalg.matmul ins(%5, %alloc_45 : tensor<12x4xi64>, memref<4x7xi64>) outs(%268 : tensor<12x7xi64>) -> tensor<12x7xi64>
      %extracted_46 = tensor.extract %splat_34[%c4, %c2] : tensor<12x4xi64>
      %270 = arith.minsi %false, %false : i1
      %generated_47 = tensor.generate %162 {
      ^bb0(%arg3: index):
        %277 = arith.ceildivsi %c1141004266_i64, %150 : i64
        %278 = vector.matrix_multiply %74, %74 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %279 = vector.matrix_multiply %61, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
        %280 = arith.maxui %c25215_i16, %57 : i16
        tensor.yield %182 : f32
      } : tensor<?xf32>
      %271 = vector.shuffle %18, %18 [6, 7, 8, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22] : vector<12xi1>, vector<12xi1>
      affine.for %arg3 = 0 to 41 {
      }
      %272 = index.maxu %53, %167
      %false_48 = index.bool.constant false
      %from_elements_49 = tensor.from_elements %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32 : tensor<12x4xi32>
      %273 = math.log1p %cst_0 : f32
      %274 = arith.cmpf uge, %cst_1, %cst_4 : f32
      %275 = tensor.empty() : tensor<1x12xi16>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %275 : tensor<1x12xi16>, tensor<1x12xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_50: i16, %out: i16):
        %277 = vector.broadcast %cst_4 : f32 to vector<1x1x12xf32>
        %278 = vector.fma %277, %277, %277 : vector<1x1x12xf32>
        %279 = arith.divui %c1169671983_i64, %c1141004266_i64 : i64
        %280 = vector.broadcast %out : i16 to vector<i16>
        %281 = vector.transfer_write %280, %14[%c8] : vector<i16>, tensor<4xi16>
        %282 = vector.bitcast %97 : vector<12x4xf32> to vector<12x4xf32>
        %283 = arith.minui %c2144033552_i64, %c1141004266_i64 : i64
        %284 = index.casts %40 : index to i32
        %285 = math.ctlz %20 : tensor<i32>
        %286 = vector.bitcast %282 : vector<12x4xf32> to vector<12x4xf32>
        %287 = arith.minui %c576309929_i32, %c576309929_i32 : i32
        %288 = vector.reduction <add>, %82 : vector<4xf32> into f32
        %289 = math.round %182 : f32
        %290 = math.sqrt %from_elements : tensor<4xf32>
        %291 = math.ctpop %1 : tensor<4xi1>
        %292 = math.log1p %12 : tensor<1x4xf16>
        %293 = math.powf %cst_4, %cst : f32
        %294 = vector.broadcast %true : i1 to vector<1x1x12xi1>
        %295 = math.ctpop %8 : tensor<1x4xi32>
        %296 = math.log1p %from_elements : tensor<4xf32>
        %alloc_51 = memref.alloc() : memref<4x12xi32>
        %297 = tensor.empty() : tensor<1x12xi32>
        %298 = linalg.matmul ins(%93, %alloc_51 : tensor<1x4xi32>, memref<4x12xi32>) outs(%297 : tensor<1x12xi32>) -> tensor<1x12xi32>
        %299 = vector.multi_reduction <xor>, %152, %c576309929_i32 [0] : vector<12xi32> to i32
        %300 = vector.broadcast %false : i1 to vector<4xi1>
        %301 = vector.broadcast %299 : i32 to vector<4xi32>
        %302 = vector.gather %alloc_18[%c5] [%301], %300, %300 : memref<4xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %303 = math.copysign %cst_2, %cst_2 : f16
        %304 = arith.remf %cst, %cst_0 : f32
        %alloca_52 = memref.alloca() : memref<12x4xi64>
        %305 = arith.addi %c741381943_i64, %extracted_46 : i64
        %306 = index.add %c13, %c5
        %307 = math.powf %cst_2, %cst_2 : f16
        %308 = math.tan %12 : tensor<1x4xf16>
        %309 = vector.splat %306 : vector<12x4xindex>
        %310 = index.add %c3, %c10
        %alloc_53 = memref.alloc() : memref<4x7xf16>
        %311 = tensor.empty() : tensor<1x7xf16>
        %312 = linalg.matmul ins(%12, %alloc_53 : tensor<1x4xf16>, memref<4x7xf16>) outs(%311 : tensor<1x7xf16>) -> tensor<1x7xf16>
        %313 = arith.addi %in, %c-17629_i16 : i16
        linalg.yield %c-17629_i16 : i16
      } -> tensor<1x1x12xi16>
      scf.yield
    }
    case 3 {
      %264 = arith.minsi %c1169671983_i64, %c1141004266_i64 : i64
      %265 = vector.extract_strided_slice %160 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %266 = arith.mulf %cst_0, %cst : f32
      %c-22345_i16 = arith.constant -22345 : i16
      %267 = math.exp2 %103 : tensor<12x7xf32>
      %268 = arith.cmpi ule, %c-17629_i16, %57 : i16
      %cast = tensor.cast %17 : tensor<4xi1> to tensor<?xi1>
      scf.if %false_24 {
        %279 = index.maxu %c12, %35
        %280 = arith.remf %cst, %cst_1 : f32
        %extracted_44 = tensor.extract %from_elements_32[%c0, %c0, %c7] : tensor<1x1x12xi16>
        %281 = arith.shli %false, %false : i1
        %282 = vector.broadcast %false_3 : i1 to vector<4x1x12xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %141, %158, %282 : vector<1x4xi1>, vector<1x1x12xi1> into vector<4x1x12xi1>
        %284 = tensor.empty() : tensor<1x1x12xf16>
        %285 = vector.broadcast %cst_2 : f16 to vector<1x1x12xf16>
        %286 = vector.broadcast %c576309929_i32 : i32 to vector<1x1x12xi32>
        %287 = vector.gather %284[%c15, %c5, %c12] [%286], %158, %285 : tensor<1x1x12xf16>, vector<1x1x12xi32>, vector<1x1x12xi1>, vector<1x1x12xf16> into vector<1x1x12xf16>
        %288 = vector.multi_reduction <minui>, %166, %false_3 [0, 1] : vector<12x4xi1> to i1
        %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2 + 1)>(%279, %c1, %c6, %c9)
      }
      %269 = bufferization.to_tensor %alloc_8 : memref<4xi64>
      %270 = arith.remsi %c741381943_i64, %c334741408_i64 : i64
      %271 = tensor.empty() : tensor<4xf16>
      %272 = vector.transpose %47, [0] : vector<4xf32> to vector<4xf32>
      %273 = index.mul %86, %c7
      %274 = arith.ceildivsi %true, %false_24 : i1
      %275 = vector.broadcast %57 : i16 to vector<4xi16>
      %276 = vector.broadcast %true : i1 to vector<4xi1>
      %277 = vector.maskedload %alloc_17[%c0, %c0, %c0], %276, %275 : memref<1x1x12xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %278 = vector.extract_strided_slice %140 {offsets = [4], sizes = [5], strides = [1]} : vector<12x4xi1> to vector<5x4xi1>
      scf.yield
    }
    case 4 {
      %264 = bufferization.to_tensor %alloc_30 : memref<12x4xf32>
      %265 = vector.bitcast %97 : vector<12x4xf32> to vector<12x4xf32>
      %266 = tensor.empty(%167, %c9) : tensor<?x?xf16>
      %267 = arith.addi %57, %57 : i16
      %268 = math.log1p %182 : f32
      memref.alloca_scope  {
        %278 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
        %279 = vector.outerproduct %23, %89, %278 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %splat_44 = tensor.splat %c1169671983_i64 : tensor<1x4xi64>
        memref.copy %alloc_14, %alloc_8 : memref<4xi64> to memref<4xi64>
        %280 = vector.create_mask %c4, %86 : vector<1x4xi1>
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 8 + 8)>(%32, %c4, %162, %92)
        %282 = math.rsqrt %12 : tensor<1x4xf16>
        %283 = math.log2 %6 : tensor<12x4xf32>
        %284 = math.copysign %cst_2, %cst_2 : f16
        %285 = memref.realloc %alloc_12 : memref<4xf16> to memref<12xf16>
        %286 = arith.ceildivsi %false, %false : i1
        %287 = arith.ceildivsi %c334741408_i64, %150 : i64
        %alloc_45 = memref.alloc() : memref<12x7xi16>
        memref.tensor_store %155, %alloc_45 : memref<12x7xi16>
        %alloc_46 = memref.alloc() : memref<1x1x12xf32>
        %288 = affine.load %alloc_5[%c8, %c7] : memref<12x4xf16>
        %289 = math.powf %from_elements_26, %264 : tensor<12x4xf32>
        %290 = index.maxs %33, %c2
        %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
        %291 = vector.broadcast %57 : i16 to vector<1x1x12xi16>
        %292 = math.log2 %from_elements_26 : tensor<12x4xf32>
        %293 = arith.cmpf ord, %182, %cst_1 : f32
        %294 = vector.load %alloc_9[%c0, %c1] : memref<1x4xf16>, vector<12x4xf16>
        %from_elements_48 = tensor.from_elements %c1141004266_i64, %c1169671983_i64, %c334741408_i64, %150, %c741381943_i64, %c741381943_i64, %c334741408_i64, %c334741408_i64, %150, %150, %c334741408_i64, %c2144033552_i64, %c1169671983_i64, %c1169671983_i64, %150, %c1141004266_i64, %150, %c334741408_i64, %c741381943_i64, %c1169671983_i64, %c1169671983_i64, %c1141004266_i64, %c741381943_i64, %c1141004266_i64, %c741381943_i64, %c1169671983_i64, %150, %c1141004266_i64, %c2144033552_i64, %c2144033552_i64, %c741381943_i64, %c1141004266_i64, %c1169671983_i64, %c2144033552_i64, %c334741408_i64, %c2144033552_i64, %c1169671983_i64, %c1169671983_i64, %150, %c741381943_i64, %c1141004266_i64, %c741381943_i64, %c1169671983_i64, %c1169671983_i64, %c1141004266_i64, %c741381943_i64, %c2144033552_i64, %c1141004266_i64 : tensor<12x4xi64>
        %295 = math.rsqrt %cst : f32
        %296 = tensor.empty() : tensor<4x1xf32>
        %297 = tensor.empty() : tensor<12x1xf32>
        %298 = linalg.matmul ins(%6, %296 : tensor<12x4xf32>, tensor<4x1xf32>) outs(%297 : tensor<12x1xf32>) -> tensor<12x1xf32>
        %299 = vector.broadcast %c25215_i16 : i16 to vector<12xi16>
        %300 = vector.transfer_write %299, %from_elements_32[%c3, %c15, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi16>, tensor<1x1x12xi16>
        %301 = arith.addi %true, %false_3 : i1
        %302 = memref.atomic_rmw addf %cst_2, %alloc_7[%c0] : (f16, memref<4xf16>) -> f16
        %303 = arith.remsi %c25215_i16, %c25215_i16 : i16
        %304 = arith.divui %c741381943_i64, %c2144033552_i64 : i64
        %305 = affine.max affine_map<(d0, d1) -> (d0, d0 + d0 + 64, (d0 + 64) ceildiv 8, d0 + 64)>(%c14, %c11)
        %306 = vector.multi_reduction <maxf>, %123, %22 [] : vector<4xf32> to vector<4xf32>
        %307 = arith.divf %cst_4, %cst_1 : f32
      }
      %269 = arith.divf %cst_4, %cst : f32
      %270 = index.sizeof
      %271 = bufferization.to_memref %6 : memref<12x4xf32>
      %272 = math.log1p %cst_0 : f32
      %273 = arith.minui %false_3, %true : i1
      %274 = index.casts %c334741408_i64 : i64 to index
      %275 = vector.load %alloc_6[%c0] : memref<4xi64>, vector<1x4xi64>
      %276 = affine.for %arg3 = 0 to 38 iter_args(%arg4 = %3) -> (tensor<4xi1>) {
        affine.yield %arg4 : tensor<4xi1>
      }
      %277 = arith.divf %182, %cst_0 : f32
      affine.for %arg3 = 0 to 77 {
      }
      scf.yield
    }
    default {
      %264 = arith.maxsi %c2144033552_i64, %c1169671983_i64 : i64
      %265 = arith.addi %150, %c1141004266_i64 : i64
      %266 = bufferization.to_tensor %alloc_21 : memref<i1>
      %267 = scf.while (%arg3 = %164) : (vector<i1>) -> vector<i1> {
        %alloca_45 = memref.alloca() : memref<1x1x12xi1>
        %281 = vector.shuffle %115, %115 [1] : vector<1x4xi32>, vector<1x4xi32>
        memref.store %cst_2, %alloc_9[%c0, %c0] : memref<1x4xf16>
        %282 = vector.transpose %115, [1, 0] : vector<1x4xi32> to vector<4x1xi32>
        %283 = bufferization.to_tensor %alloc_9 : memref<1x4xf16>
        %284 = vector.shuffle %152, %152 [0, 3, 6, 8, 10, 12, 13, 16, 17, 19, 22, 23] : vector<12xi32>, vector<12xi32>
        %285 = arith.ceildivsi %false_3, %false : i1
        %286 = arith.ceildivsi %c-17629_i16, %c25215_i16 : i16
        scf.condition(%false_3) %164 : vector<i1>
      } do {
      ^bb0(%arg3: vector<i1>):
        %281 = memref.realloc %alloc_14 : memref<4xi64> to memref<4xi64>
        %282 = vector.splat %40 : vector<1x4xindex>
        %alloc_45 = memref.alloc() : memref<7x1xi16>
        %283 = tensor.empty() : tensor<12x1xi16>
        %284 = linalg.matmul ins(%155, %alloc_45 : tensor<12x7xi16>, memref<7x1xi16>) outs(%283 : tensor<12x1xi16>) -> tensor<12x1xi16>
        %285 = vector.flat_transpose %39 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        vector.print %159 : vector<1xi64>
        %286 = index.casts %c2144033552_i64 : i64 to index
        %287 = vector.load %alloc_13[%c3] : memref<4xi1>, vector<4xi1>
        %288 = bufferization.clone %75 : memref<12x4xf16> to memref<12x4xf16>
        %289 = vector.broadcast %c1169671983_i64 : i64 to vector<12xi64>
        %290 = vector.transfer_write %289, %5[%35, %144] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, tensor<12x4xi64>
        memref.assume_alignment %alloc_19, 4 : memref<4xi1>
        %true_46 = index.bool.constant true
        %inserted = tensor.insert %c-17629_i16 into %283[%c5, %c0] : tensor<12x1xi16>
        %collapsed_47 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<1x1x12xi16> into tensor<1x12xi16>
        %291 = math.log %103 : tensor<12x7xf32>
        %292 = arith.maxf %182, %cst : f32
        %inserted_48 = tensor.insert %true_46 into %splat[%c0, %c1] : tensor<1x4xi1>
        scf.yield %164 : vector<i1>
      }
      bufferization.dealloc_tensor %1 : tensor<4xi1>
      %268 = arith.remf %cst_1, %cst_4 : f32
      %269 = arith.addf %cst_4, %182 : f32
      %270 = vector.broadcast %false_24 : i1 to vector<4xi1>
      %271 = vector.insert %270, %140 [5] : vector<4xi1> into vector<12x4xi1>
      %272 = math.log10 %6 : tensor<12x4xf32>
      %273 = vector.broadcast %cst_0 : f32 to vector<1x4xf32>
      %274 = vector.fma %273, %273, %273 : vector<1x4xf32>
      %alloc_44 = memref.alloc() : memref<1x4xi64>
      %275 = vector.broadcast %cst_1 : f32 to vector<f32>
      vector.transfer_write %275, %alloc_16[%162] : vector<f32>, memref<4xf32>
      %276 = vector.broadcast %182 : f32 to vector<12x4xf32>
      %277 = vector.fma %276, %106, %98 : vector<12x4xf32>
      %278 = memref.load %alloc_15[%c0, %c0, %c2] : memref<1x1x12xi64>
      %279 = math.powf %cst_2, %cst_2 : f16
      %280 = math.exp2 %from_elements_26 : tensor<12x4xf32>
    }
    %189 = index.ceildivs %92, %33
    %alloca_36 = memref.alloca() : memref<12x4xi64>
    %190 = vector.extract %82[0] : vector<4xf32>
    %191 = math.log2 %6 : tensor<12x4xf32>
    %192 = arith.ori %150, %150 : i64
    %193 = math.fpowi %12, %8 : tensor<1x4xf16>, tensor<1x4xi32>
    %194 = index.floordivs %92, %c6
    %195 = vector.create_mask %c5 : vector<4xi1>
    %196 = math.ctlz %false_3 : i1
    %197 = math.log2 %cst_1 : f32
    memref.alloca_scope  {
      %264 = index.mul %c13, %194
      %265 = vector.create_mask %c11 : vector<4xi1>
      %266 = index.castu %c9 : index to i32
      %267 = math.sqrt %cst_2 : f16
      %268 = arith.minui %c1141004266_i64, %c741381943_i64 : i64
      memref.alloca_scope  {
        %297 = index.maxs %c11, %c14
        %298 = vector.flat_transpose %123 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %alloc_44 = memref.alloc() : memref<4xi16>
        memref.tensor_store %14, %alloc_44 : memref<4xi16>
        %299 = memref.load %alloc_16[%c0] : memref<4xf32>
        %300 = index.ceildivs %40, %c3
        %collapsed_45 = tensor.collapse_shape %from_elements_26 [[0, 1]] : tensor<12x4xf32> into tensor<48xf32>
        %301 = math.fpowi %6, %0 : tensor<12x4xf32>, tensor<12x4xi32>
        %302 = vector.transpose %160, [0] : vector<1xi1> to vector<1xi1>
        %303 = vector.create_mask %c1, %c1, %33 : vector<1x1x12xi1>
        %304 = math.ipowi %false_3, %false : i1
        %305 = bufferization.clone %alloc_11 : memref<12x4xi64> to memref<12x4xi64>
        %306 = math.ctpop %c1169671983_i64 : i64
        %from_elements_46 = tensor.from_elements %true, %false_3, %false_3, %true, %false_24, %false_24, %false_24, %false_3, %false_3, %false, %false_24, %true, %false_24, %false, %false, %true, %false_3, %false_3, %false_3, %false_3, %false_3, %false_3, %false_24, %false_3, %false, %false, %true, %false_3, %false_24, %false_3, %true, %false_3, %true, %false_3, %false_24, %true, %false_24, %false_3, %false_24, %true, %true, %true, %false_24, %true, %false_3, %false_24, %true, %false : tensor<12x4xi1>
        %307 = math.fma %splat_23, %splat_23, %splat_23 : tensor<1x1x12xf32>
        %308 = vector.splat %64 : vector<4xindex>
        %309 = math.ctpop %splat_34 : tensor<12x4xi64>
        %310 = math.ipowi %false, %false : i1
        memref.store %false_24, %alloc_19[%c1] : memref<4xi1>
        %311 = vector.bitcast %159 : vector<1xi64> to vector<1xi64>
        %312 = index.mul %167, %c14
        %313 = math.log1p %from_elements_26 : tensor<12x4xf32>
        memref.assume_alignment %alloc_11, 8 : memref<12x4xi64>
        %314 = bufferization.clone %alloc_13 : memref<4xi1> to memref<4xi1>
        memref.store %c334741408_i64, %alloc_14[%c0] : memref<4xi64>
        %315 = vector.bitcast %106 : vector<12x4xf32> to vector<12x4xf32>
        %316 = vector.broadcast %c576309929_i32 : i32 to vector<i32>
        vector.transfer_write %316, %alloc_22[%40] : vector<i32>, memref<4xi32>
        %317 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        %318 = vector.fma %317, %89, %123 : vector<4xf32>
        %true_47 = index.bool.constant true
        %319 = arith.mulf %cst_1, %cst_0 : f32
        %320 = math.rsqrt %collapsed_45 : tensor<48xf32>
        %321 = vector.multi_reduction <minsi>, %161, %c1141004266_i64 [0] : vector<1xi64> to i64
        %322 = vector.load %alloc_21[] : memref<i1>, vector<1x4xi1>
      }
      %269 = arith.shrui %57, %57 : i16
      %270 = vector.broadcast %c1169671983_i64 : i64 to vector<4xi64>
      %271 = vector.maskedload %alloc_15[%c0, %c0, %c5], %195, %270 : memref<1x1x12xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %272 = math.absf %6 : tensor<12x4xf32>
      %273 = vector.shuffle %74, %61 [1] : vector<1xf32>, vector<1xf32>
      %274 = index.ceildivs %c7, %c15
      %275 = math.rsqrt %6 : tensor<12x4xf32>
      memref.assume_alignment %alloc_22, 4 : memref<4xi32>
      %276 = tensor.empty() : tensor<4xf32>
      %277 = arith.remf %cst_0, %182 : f32
      %278 = math.atan %276 : tensor<4xf32>
      %279 = arith.maxsi %c25215_i16, %57 : i16
      %280 = tensor.empty() : tensor<1xi16>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %280 : memref<1x1x12xi16>, tensor<1xi16>) outs(%2 : tensor<1x1x12xi16>) {
      ^bb0(%in: i16, %in_44: i16, %out: i16):
        %297 = math.log2 %28 : tensor<12x12xf32>
        %298 = arith.negf %182 : f32
        %299 = math.ceil %from_elements_26 : tensor<12x4xf32>
        %300 = arith.remf %cst_4, %cst_4 : f32
        %301 = arith.remsi %out, %c-17629_i16 : i16
        %c196337448_i64 = arith.constant 196337448 : i64
        %302 = bufferization.to_memref %from_elements_32 : memref<1x1x12xi16>
        %cast = tensor.cast %103 : tensor<12x7xf32> to tensor<?x?xf32>
        %303 = math.fpowi %cst_4, %c576309929_i32 : f32, i32
        %304 = vector.broadcast %false_3 : i1 to vector<i1>
        %305 = vector.transfer_write %304, %11[%274] : vector<i1>, tensor<4xi1>
        vector.print %83 : vector<4xf32>
        %306 = math.log %182 : f32
        %307 = arith.remui %true, %false_3 : i1
        %308 = math.round %splat_23 : tensor<1x1x12xf32>
        %splat_45 = tensor.splat %c25215_i16 : tensor<1x1x12xi16>
        %expanded_46 = tensor.expand_shape %28 [[0], [1, 2]] : tensor<12x12xf32> into tensor<12x12x1xf32>
        %309 = arith.maxsi %57, %in_44 : i16
        %310 = vector.broadcast %cst_2 : f16 to vector<12xf16>
        %311 = vector.maskedload %alloc_5[%c4, %c2], %18, %310 : memref<12x4xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %312 = math.fma %6, %6, %6 : tensor<12x4xf32>
        %313 = vector.create_mask %c10, %167, %c15 : vector<1x1x12xi1>
        %314 = math.ctpop %10 : tensor<1x4xi16>
        %315 = arith.remsi %c2144033552_i64, %c1169671983_i64 : i64
        %316 = arith.maxui %c1169671983_i64, %c1141004266_i64 : i64
        %317 = index.ceildivs %c7, %c7
        vector.print %138 : vector<4xf32>
        %318 = arith.divf %cst, %cst : f32
        %319 = math.tan %182 : f32
        %320 = arith.addf %cst_1, %cst_4 : f32
        %321 = vector.matrix_multiply %271, %270 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %322 = memref.realloc %alloc_22 : memref<4xi32> to memref<12xi32>
        %323 = vector.reduction <minf>, %138 : vector<4xf32> into f32
        %324 = math.log %cst_4 : f32
        linalg.yield %in : i16
      } -> tensor<1x1x12xi16>
      %282 = math.powf %cst, %182 : f32
      %283 = index.maxu %64, %c8
      %284 = index.castu %189 : index to i32
      memref.store %cst_2, %75[%c11, %c0] : memref<12x4xf16>
      %285 = vector.load %alloc_6[%c3] : memref<4xi64>, vector<4xi64>
      %286 = vector.broadcast %cst_1 : f32 to vector<1x4xf32>
      %287 = vector.fma %286, %116, %286 : vector<1x4xf32>
      %288 = arith.cmpf uno, %cst_1, %cst_4 : f32
      %289 = math.absi %14 : tensor<4xi16>
      %290 = vector.reduction <maxsi>, %195 : vector<4xi1> into i1
      %291 = tensor.empty() : tensor<12x4xi64>
      %mapped = linalg.map ins(%7, %7, %splat_34 : tensor<12x4xi64>, tensor<12x4xi64>, tensor<12x4xi64>) outs(%291 : tensor<12x4xi64>)
        (%in: i64, %in_44: i64, %in_45: i64) {
          %alloc_46 = memref.alloc() : memref<12x4xi32>
          memref.tensor_store %0, %alloc_46 : memref<12x4xi32>
          memref.store %in_45, %163[%c0, %c0, %c0] : memref<1x1x12xi64>
          %297 = math.cttz %false : i1
          %298 = vector.broadcast %182 : f32 to vector<12x4xf32>
          %299 = vector.fma %298, %97, %106 : vector<12x4xf32>
          %300 = math.copysign %cst_0, %cst : f32
          %301 = arith.maxsi %false, %true : i1
          %302 = index.maxs %c2, %c10
          memref.copy %alloc_15, %163 : memref<1x1x12xi64> to memref<1x1x12xi64>
          %303 = math.floor %cst_0 : f32
          %304 = arith.maxf %cst_2, %cst_2 : f16
          %305 = vector.reduction <minsi>, %161 : vector<1xi64> into i64
          %306 = vector.maskedload %163[%c0, %c0, %c11], %160, %161 : memref<1x1x12xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %alloc_47 = memref.alloc() : memref<4xi32>
          memref.copy %alloc_22, %alloc_47 : memref<4xi32> to memref<4xi32>
          %307 = arith.divf %cst, %cst : f32
          %308 = bufferization.to_tensor %alloc_12 : memref<4xf16>
          %309 = vector.broadcast %150 : i64 to vector<1x4xi64>
          %310 = vector.reduction <minsi>, %195 : vector<4xi1> into i1
          %311 = index.casts %35 : index to i32
          %312 = math.sqrt %cst : f32
          %313 = math.ipowi %19, %20 : tensor<i32>
          %inserted = tensor.insert %c576309929_i32 into %93[%c0, %c2] : tensor<1x4xi32>
          %314 = vector.bitcast %299 : vector<12x4xf32> to vector<12x4xf32>
          %315 = math.fpowi %cst_1, %c576309929_i32 : f32, i32
          %316 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 2 + (d1 ceildiv 2) mod 8 + 10)>(%c12, %274)
          %alloca_48 = memref.alloca() : memref<1x1x12xi64>
          %317 = arith.divf %cst_1, %cst : f32
          %318 = math.fpowi %6, %0 : tensor<12x4xf32>, tensor<12x4xi32>
          %319 = vector.multi_reduction <add>, %123, %22 [] : vector<4xf32> to vector<4xf32>
          %320 = index.maxs %302, %194
          %321 = arith.maxui %c-17629_i16, %57 : i16
          affine.store %cst_1, %alloc_30[%c13, %c6] : memref<12x4xf32>
          %322 = vector.reduction <add>, %30 : vector<4xf32> into f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %292 = tensor.empty() : tensor<12x7xi32>
      %293 = math.fpowi %103, %292 : tensor<12x7xf32>, tensor<12x7xi32>
      %294 = vector.transpose %140, [0, 1] : vector<12x4xi1> to vector<12x4xi1>
      %295 = memref.alloca_scope  -> (memref<1x4xi16>) {
        %alloc_44 = memref.alloc() : memref<12x4xf16>
        %297 = arith.divui %c334741408_i64, %150 : i64
        %298 = arith.minui %57, %57 : i16
        %inserted = tensor.insert %false_24 into %15[%c1] : tensor<4xi1>
        %299 = math.tanh %cst_0 : f32
        %300 = math.rsqrt %splat_23 : tensor<1x1x12xf32>
        %301 = vector.broadcast %c1141004266_i64 : i64 to vector<4x4xi64>
        %302 = vector.outerproduct %270, %271, %301 {kind = #vector.kind<and>} : vector<4xi64>, vector<4xi64>
        %303 = math.log1p %28 : tensor<12x12xf32>
        %304 = math.log1p %12 : tensor<1x4xf16>
        %305 = arith.ceildivsi %false, %false : i1
        %306 = tensor.empty(%92) : tensor<1x?x12xf16>
        %307 = arith.remsi %c-17629_i16, %c25215_i16 : i16
        %308 = arith.remsi %c1141004266_i64, %150 : i64
        %alloc_45 = memref.alloc() : memref<1x1x12xf16>
        memref.copy %alloc, %alloc_45 : memref<1x1x12xf16> to memref<1x1x12xf16>
        %309 = math.ceil %103 : tensor<12x7xf32>
        %310 = index.casts %c-17629_i16 : i16 to index
        %311 = math.log %6 : tensor<12x4xf32>
        %312 = math.absf %276 : tensor<4xf32>
        %313 = math.rsqrt %276 : tensor<4xf32>
        %false_46 = index.bool.constant false
        %314 = arith.mulf %cst, %cst_1 : f32
        %alloc_47 = memref.alloc() : memref<4xi16>
        %alloc_48 = memref.alloc() : memref<4x4xi32>
        %315 = tensor.empty() : tensor<12x4xi32>
        %316 = linalg.matmul ins(%0, %alloc_48 : tensor<12x4xi32>, memref<4x4xi32>) outs(%315 : tensor<12x4xi32>) -> tensor<12x4xi32>
        %317 = arith.negf %cst : f32
        %318 = index.floordivs %33, %92
        %319 = math.log10 %cst_1 : f32
        %320 = vector.load %75[%c0, %c2] : memref<12x4xf16>, vector<12x4xf16>
        %321 = arith.shrui %false_46, %true : i1
        %extracted_49 = tensor.extract %4[%c9, %c0] : tensor<12x4xi16>
        %322 = index.floordivs %53, %274
        %323 = math.ipowi %7, %5 : tensor<12x4xi64>
        %324 = arith.maxui %c25215_i16, %c25215_i16 : i16
        %alloc_50 = memref.alloc() : memref<1x4xi16>
        memref.alloca_scope.return %alloc_50 : memref<1x4xi16>
      }
      %296 = tensor.empty(%92) : tensor<1x1x?xi64>
    }
    %generated_37 = tensor.generate %c15 {
    ^bb0(%arg3: index):
      %264 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %265 = vector.fma %264, %22, %22 : vector<4xf32>
      %266 = math.rsqrt %103 : tensor<12x7xf32>
      %267 = arith.addi %c334741408_i64, %c741381943_i64 : i64
      %268 = math.powf %from_elements_26, %6 : tensor<12x4xf32>
      tensor.yield %false_24 : i1
    } : tensor<?xi1>
    %198 = affine.apply affine_map<(d0) -> (d0 - 1)>(%c4)
    %from_elements_38 = tensor.from_elements %c576309929_i32, %c576309929_i32, %c576309929_i32, %c576309929_i32 : tensor<1x4xi32>
    %expanded = tensor.expand_shape %1 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
    %199 = vector.splat %c10 : vector<1x4xindex>
    %200 = vector.create_mask %c4, %c12 : vector<12x4xi1>
    %201 = arith.mulf %cst_2, %cst_2 : f16
    affine.for %arg3 = 0 to 84 {
    }
    memref.store %c1141004266_i64, %alloc_8[%c2] : memref<4xi64>
    %202 = math.round %from_elements : tensor<4xf32>
    %203 = arith.minui %c-17629_i16, %c25215_i16 : i16
    %204 = index.ceildivu %162, %c7
    %205 = vector.splat %c7 : vector<12x4xindex>
    %206 = arith.maxf %cst_1, %cst_0 : f32
    %207 = vector.broadcast %cst_2 : f16 to vector<1xf16>
    %208 = vector.maskedload %alloc_5[%c8, %c1], %160, %207 : memref<12x4xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %209 = tensor.empty() : tensor<4x4xf16>
    %210 = tensor.empty() : tensor<1x4xf16>
    %211 = linalg.matmul ins(%12, %209 : tensor<1x4xf16>, tensor<4x4xf16>) outs(%210 : tensor<1x4xf16>) -> tensor<1x4xf16>
    %212 = math.round %cst_2 : f16
    %213 = arith.maxui %c1141004266_i64, %c2144033552_i64 : i64
    %214 = arith.divf %cst_4, %cst_0 : f32
    %215 = arith.remf %cst, %cst : f32
    %216 = arith.divui %57, %57 : i16
    %217 = vector.matrix_multiply %160, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
    %218 = math.log %182 : f32
    %alloc_39 = memref.alloc() : memref<12x4xf16>
    memref.store %c741381943_i64, %163[%c0, %c0, %c8] : memref<1x1x12xi64>
    %219 = vector.create_mask %86, %198, %35 : vector<1x1x12xi1>
    %220 = tensor.empty() : tensor<4x1xf32>
    %221 = tensor.empty() : tensor<12x1xf32>
    %222 = linalg.matmul ins(%from_elements_26, %220 : tensor<12x4xf32>, tensor<4x1xf32>) outs(%221 : tensor<12x1xf32>) -> tensor<12x1xf32>
    %223 = math.log2 %cst_2 : f16
    %224 = affine.load %alloc_30[%c7, %c14] : memref<12x4xf32>
    %225 = bufferization.to_tensor %alloc_11 : memref<12x4xi64>
    vector.print %141 : vector<1x4xi1>
    %226 = math.ceil %210 : tensor<1x4xf16>
    %227 = math.ceil %221 : tensor<12x1xf32>
    %228 = arith.cmpi sle, %true, %false : i1
    %229 = math.exp2 %221 : tensor<12x1xf32>
    vector.print %97 : vector<12x4xf32>
    %230 = arith.mulf %cst_1, %cst_4 : f32
    %generated_40 = tensor.generate %53 {
    ^bb0(%arg3: index, %arg4: index):
      %264 = index.mul %c0, %c13
      %265 = math.fpowi %cst_2, %c576309929_i32 : f16, i32
      affine.for %arg5 = 0 to 112 {
      }
      %266 = math.floor %210 : tensor<1x4xf16>
      tensor.yield %cst_2 : f16
    } : tensor<?x4xf16>
    %extracted = tensor.extract %225[%c5, %c2] : tensor<12x4xi64>
    %231 = math.round %cst_2 : f16
    %232 = arith.divf %cst_2, %cst_2 : f16
    %233 = arith.maxui %c576309929_i32, %c576309929_i32 : i32
    %234 = bufferization.clone %alloc_17 : memref<1x1x12xi16> to memref<1x1x12xi16>
    %235 = vector.extract %186[1] : vector<3xf32>
    %236 = math.round %12 : tensor<1x4xf16>
    %237 = vector.load %alloc_11[%c8, %c1] : memref<12x4xi64>, vector<12x4xi64>
    %238 = index.castu %c2 : index to i32
    %239 = vector.reduction <add>, %138 : vector<4xf32> into f32
    %240 = vector.reduction <maxf>, %61 : vector<1xf32> into f32
    %241 = math.round %cst_0 : f32
    %generated_41 = tensor.generate %c11 {
    ^bb0(%arg3: index):
      %264 = index.mul %c3, %c2
      %265 = arith.ori %c334741408_i64, %150 : i64
      %266 = vector.broadcast %c576309929_i32 : i32 to vector<i32>
      %267 = vector.transfer_write %266, %13[%c5] : vector<i32>, tensor<4xi32>
      %268 = math.floor %28 : tensor<12x12xf32>
      tensor.yield %182 : f32
    } : tensor<?xf32>
    memref.store %true, %alloc_19[%c1] : memref<4xi1>
    %242 = tensor.empty() : tensor<1x1x12xi16>
    %243 = index.casts %c13 : index to i32
    %244 = vector.create_mask %c7, %167 : vector<1x4xi1>
    affine.for %arg3 = 0 to 62 {
    }
    %245 = arith.maxui %57, %57 : i16
    %246 = affine.for %arg3 = 0 to 12 iter_args(%arg4 = %195) -> (vector<4xi1>) {
      affine.yield %195 : vector<4xi1>
    }
    %247 = vector.broadcast %c334741408_i64 : i64 to vector<1x4xi64>
    %248 = arith.cmpi sle, %false_3, %true : i1
    %249 = vector.broadcast %c741381943_i64 : i64 to vector<7xi64>
    %250 = vector.broadcast %false_24 : i1 to vector<7xi1>
    %251 = vector.maskedload %alloc_15[%c0, %c0, %c6], %250, %249 : memref<1x1x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<12x4xi32> into tensor<48xi32>
    %alloca_42 = memref.alloca() : memref<1x4xi16>
    %252 = math.ceil %28 : tensor<12x12xf32>
    %from_elements_43 = tensor.from_elements %false_24, %true, %true, %false_24, %false_24, %true, %false, %false_24, %false_3, %false, %false_3, %false : tensor<1x1x12xi1>
    %253 = math.expm1 %28 : tensor<12x12xf32>
    %254 = vector.matrix_multiply %46, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
    %255 = arith.ceildivsi %c-17629_i16, %c25215_i16 : i16
    %256 = index.mul %194, %198
    %257 = tensor.empty() : tensor<4xi16>
    %258 = tensor.empty() : tensor<1x4xf16>
    %259 = linalg.copy ins(%12 : tensor<1x4xf16>) outs(%258 : tensor<1x4xf16>) -> tensor<1x4xf16>
    %260 = tensor.empty() : tensor<4x12xi64>
    %transposed = linalg.transpose ins(%5 : tensor<12x4xi64>) outs(%260 : tensor<4x12xi64>) permutation = [1, 0] 
    %261 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%1 : tensor<4xi1>) outs(%261 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %264 = math.ctlz %93 : tensor<1x4xi32>
        %265 = vector.broadcast %c1141004266_i64 : i64 to vector<12xi64>
        %266 = vector.transfer_write %265, %7[%194, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, tensor<12x4xi64>
        memref.tensor_store %13, %alloc_22 : memref<4xi32>
        %267 = memref.realloc %85 : memref<4xi1> to memref<7xi1>
        %268 = vector.broadcast %57 : i16 to vector<1xi16>
        %269 = vector.transfer_write %268, %155[%c0, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, tensor<12x7xi16>
        %270 = arith.divf %182, %cst_0 : f32
        %271 = math.cttz %5 : tensor<12x4xi64>
        %272 = index.ceildivu %c12, %35
        %true_44 = arith.constant true
        linalg.yield %true_44 : i1
      }
    %262 = scf.parallel (%arg3, %arg4) = (%c11, %51) to (%86, %162) step (%c5, %c2) init (%13) -> tensor<4xi32> {
      %264 = vector.splat %c6 : vector<4xindex>
      %265 = math.log10 %cst_1 : f32
      %266 = arith.ceildivsi %c2144033552_i64, %150 : i64
      %267 = vector.broadcast %c576309929_i32 : i32 to vector<1x1x12xi32>
      %268 = vector.gather %splat[%c6, %c4] [%267], %158, %219 : tensor<1x4xi1>, vector<1x1x12xi32>, vector<1x1x12xi1>, vector<1x1x12xi1> into vector<1x1x12xi1>
      %cast = tensor.cast %3 : tensor<4xi1> to tensor<?xi1>
      %alloc_44 = memref.alloc() : memref<12x7xi16>
      memref.tensor_store %155, %alloc_44 : memref<12x7xi16>
      %alloc_45 = memref.alloc() : memref<1x4xi1>
      %269 = arith.maxui %c25215_i16, %57 : i16
      %270 = arith.mulf %cst_4, %cst_4 : f32
      %alloc_46 = memref.alloc() : memref<1x4xf32>
      %271 = vector.reduction <minf>, %186 : vector<3xf32> into f32
      %272 = arith.divui %c1141004266_i64, %c1141004266_i64 : i64
      %273 = math.ipowi %2, %from_elements_32 : tensor<1x1x12xi16>
      %274 = vector.extract %186[0] : vector<3xf32>
      %alloc_47 = memref.alloc() : memref<1x4xf32>
      %275 = arith.cmpi ule, %c741381943_i64, %c1141004266_i64 : i64
      %276 = tensor.empty() : tensor<4xi32>
      scf.reduce(%276)  : tensor<4xi32> {
      ^bb0(%arg5: tensor<4xi32>, %arg6: tensor<4xi32>):
        %277 = vector.load %alloc_16[%c0] : memref<4xf32>, vector<4xf32>
        %278 = arith.divf %224, %cst_0 : f32
        %279 = vector.broadcast %extracted : i64 to vector<7xi64>
        %280 = vector.transfer_write %279, %7[%167, %167] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<12x4xi64>
        %281 = arith.maxsi %57, %c-17629_i16 : i16
        %282 = arith.ceildivsi %false_3, %false_3 : i1
        %splat_48 = tensor.splat %c1141004266_i64 : tensor<1x4xi64>
        memref.copy %alloc_14, %alloc_8 : memref<4xi64> to memref<4xi64>
        %283 = math.log %6 : tensor<12x4xf32>
        %284 = tensor.empty() : tensor<4xi32>
        scf.reduce.return %284 : tensor<4xi32>
      }
      scf.yield
    }
    %263 = affine.vector_load %alloc_5[%86, %c8] : memref<12x4xf16>, vector<12xf16>
    affine.vector_store %74, %alloc_16[%35] : memref<4xf32>, vector<1xf32>
    vector.print %18 : vector<12xi1>
    vector.print %22 : vector<4xf32>
    vector.print %23 : vector<4xf32>
    vector.print %24 : vector<12x4xi1>
    vector.print %30 : vector<4xf32>
    vector.print %39 : vector<4xf32>
    vector.print %46 : vector<1xf32>
    vector.print %47 : vector<4xf32>
    vector.print %48 : vector<i32>
    vector.print %61 : vector<1xf32>
    vector.print %74 : vector<1xf32>
    vector.print %78 : vector<f32>
    vector.print %82 : vector<4xf32>
    vector.print %83 : vector<4xf32>
    vector.print %89 : vector<4xf32>
    vector.print %97 : vector<12x4xf32>
    vector.print %98 : vector<12x4xf32>
    vector.print %106 : vector<12x4xf32>
    vector.print %113 : vector<1x4xf32>
    vector.print %114 : vector<1x4xi1>
    vector.print %115 : vector<1x4xi32>
    vector.print %116 : vector<1x4xf32>
    vector.print %123 : vector<4xf32>
    vector.print %132 : vector<i64>
    vector.print %137 : vector<4xf32>
    vector.print %138 : vector<4xf32>
    vector.print %140 : vector<12x4xi1>
    vector.print %141 : vector<1x4xi1>
    vector.print %152 : vector<12xi32>
    vector.print %158 : vector<1x1x12xi1>
    vector.print %159 : vector<1xi64>
    vector.print %160 : vector<1xi1>
    vector.print %161 : vector<1xi64>
    vector.print %164 : vector<i1>
    vector.print %166 : vector<12x4xi1>
    vector.print %185 : vector<1xi1>
    vector.print %186 : vector<3xf32>
    vector.print %195 : vector<4xi1>
    vector.print %200 : vector<12x4xi1>
    vector.print %207 : vector<1xf16>
    vector.print %208 : vector<1xf16>
    vector.print %217 : vector<12xi1>
    vector.print %219 : vector<1x1x12xi1>
    vector.print %237 : vector<12x4xi64>
    vector.print %244 : vector<1x4xi1>
    vector.print %247 : vector<1x4xi64>
    vector.print %249 : vector<7xi64>
    vector.print %250 : vector<7xi1>
    vector.print %251 : vector<7xi64>
    vector.print %254 : vector<4xf32>
    vector.print %263 : vector<12xf16>
    vector.print %cst : f32
    vector.print %true : i1
    vector.print %cst_0 : f32
    vector.print %c334741408_i64 : i64
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c25215_i16 : i16
    vector.print %false : i1
    vector.print %c576309929_i32 : i32
    vector.print %c741381943_i64 : i64
    vector.print %false_3 : i1
    vector.print %c-17629_i16 : i16
    vector.print %c1141004266_i64 : i64
    vector.print %c1169671983_i64 : i64
    vector.print %c2144033552_i64 : i64
    vector.print %cst_4 : f32
    vector.print %57 : i16
    vector.print %false_24 : i1
    vector.print %150 : i64
    vector.print %182 : f32
    vector.print %224 : f32
    vector.print %extracted : i64
    return %c15 : index
  }
}
