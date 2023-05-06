module {
  func.func private @func1(%arg0: vector<2x3x2xi32>, %arg1: tensor<2x2x2xi16>, %arg2: index) {
    %c1407355836_i64 = arith.constant 1407355836 : i64
    %false = arith.constant false
    %c766409526_i64 = arith.constant 766409526 : i64
    %cst = arith.constant 1.87113024E+9 : f32
    %c29478_i16 = arith.constant 29478 : i16
    %c2015512963_i32 = arith.constant 2015512963 : i32
    %c863776175_i64 = arith.constant 863776175 : i64
    %c1429938117_i32 = arith.constant 1429938117 : i32
    %c1068268826_i32 = arith.constant 1068268826 : i32
    %cst_0 = arith.constant 0x4E57FD7B : f32
    %c-22068_i16 = arith.constant -22068 : i16
    %cst_1 = arith.constant 1.77245466E+9 : f32
    %false_2 = arith.constant false
    %c470727290_i64 = arith.constant 470727290 : i64
    %c1446786890_i64 = arith.constant 1446786890 : i64
    %cst_3 = arith.constant 5.206400e+04 : f16
    %0 = tensor.empty() : tensor<2x2x2xi1>
    %1 = tensor.empty() : tensor<2x3x2xi16>
    %2 = tensor.empty() : tensor<3xi64>
    %3 = tensor.empty() : tensor<2x2x2xi32>
    %4 = tensor.empty() : tensor<2x2x2xf32>
    %5 = tensor.empty() : tensor<2x2x2xi64>
    %6 = tensor.empty() : tensor<2x2x2xi32>
    %7 = tensor.empty() : tensor<3xf16>
    %8 = tensor.empty() : tensor<2x2x2xf16>
    %9 = tensor.empty() : tensor<3x6xi64>
    %10 = tensor.empty() : tensor<3xf16>
    %11 = tensor.empty() : tensor<3xi16>
    %12 = tensor.empty() : tensor<3x6xf16>
    %13 = tensor.empty() : tensor<2x3x2xi16>
    %14 = tensor.empty() : tensor<3x6xi16>
    %15 = tensor.empty() : tensor<2x3x2xi64>
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
    %alloc = memref.alloc() : memref<2x2x2xi1>
    %alloc_4 = memref.alloc() : memref<2x3x2xi64>
    %alloc_5 = memref.alloc() : memref<2x2x2xi64>
    %alloc_6 = memref.alloc() : memref<3x6xf16>
    %alloc_7 = memref.alloc() : memref<3x6xi1>
    %alloc_8 = memref.alloc() : memref<3xi16>
    %alloc_9 = memref.alloc() : memref<2x3x2xf32>
    %alloc_10 = memref.alloc() : memref<2x3x2xi64>
    %alloc_11 = memref.alloc() : memref<2x3x2xf16>
    %alloc_12 = memref.alloc() : memref<3x6xi1>
    %alloc_13 = memref.alloc() : memref<2x2x2xi32>
    %alloc_14 = memref.alloc() : memref<2x3x2xf16>
    %alloc_15 = memref.alloc() : memref<2x3x2xi64>
    %alloc_16 = memref.alloc() : memref<2x2x2xf16>
    %alloc_17 = memref.alloc() : memref<3xi32>
    %alloc_18 = memref.alloc() : memref<3x6xf32>
    %16 = tensor.empty() : tensor<3xi64>
    %17 = linalg.copy ins(%2 : tensor<3xi64>) outs(%16 : tensor<3xi64>) -> tensor<3xi64>
    %alloc_19 = memref.alloc() : memref<3xi32>
    linalg.transpose ins(%alloc_17 : memref<3xi32>) outs(%alloc_19 : memref<3xi32>) permutation = [0] 
    %18 = tensor.empty() : tensor<2xi16>
    %reduced = linalg.reduce ins(%13 : tensor<2x3x2xi16>) outs(%18 : tensor<2xi16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        memref.assume_alignment %alloc, 4 : memref<2x2x2xi1>
        %260 = bufferization.clone %alloc_7 : memref<3x6xi1> to memref<3x6xi1>
        %261 = math.fma %7, %7, %7 : tensor<3xf16>
        %262 = arith.addf %cst_0, %cst_1 : f32
        %263 = arith.maxui %c766409526_i64, %c863776175_i64 : i64
        %264 = vector.splat %c10 : vector<3x6xindex>
        %265 = arith.floordivsi %false_2, %false : i1
        %266 = vector.broadcast %false_2 : i1 to vector<2x2x2xi1>
        %267 = vector.transpose %266, [1, 0, 2] : vector<2x2x2xi1> to vector<2x2x2xi1>
        %c0_i16_40 = arith.constant 0 : i16
        linalg.yield %c0_i16_40 : i16
      }
    scf.parallel (%arg3) = (%c9) to (%c2) step (%c7) {
      %260 = vector.splat %c3 : vector<3x6xindex>
      %261 = index.ceildivs %c7, %c13
      %262 = math.log2 %10 : tensor<3xf16>
      %263 = math.ceil %10 : tensor<3xf16>
      %264 = tensor.empty(%arg3, %c12) : tensor<?x?x2xi32>
      %265 = math.atan2 %10, %10 : tensor<3xf16>
      memref.copy %alloc_7, %alloc_12 : memref<3x6xi1> to memref<3x6xi1>
      %266 = memref.atomic_rmw maxf %cst_3, %alloc_16[%c0, %c1, %c0] : (f16, memref<2x2x2xf16>) -> f16
      %267 = math.exp2 %4 : tensor<2x2x2xf32>
      %268 = index.divu %c8, %c10
      %269 = vector.broadcast %c863776175_i64 : i64 to vector<2x3xi64>
      %270 = vector.broadcast %c1446786890_i64 : i64 to vector<3xi64>
      %dest_40, %accumulated_value_41 = vector.scan <add>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<2x3xi64>, vector<3xi64>
      %from_elements_42 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<2x2x2xf16>
      %271 = arith.andi %false_2, %false : i1
      %272 = vector.broadcast %false_2 : i1 to vector<1xi1>
      %273 = vector.insert %false, %272 [0] : i1 into vector<1xi1>
      %274 = math.ctpop %false : i1
      %275 = vector.broadcast %cst : f32 to vector<3xf32>
      %276 = vector.broadcast %false_2 : i1 to vector<3xi1>
      %277 = vector.maskedload %alloc_18[%c2, %c4], %276, %275 : memref<3x6xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_4[%c1, %c11, %c8] : memref<2x3x2xi64>, vector<2xi64>
    affine.vector_store %19, %alloc_10[%c10, %c6, %c9] : memref<2x3x2xi64>, vector<2xi64>
    %alloc_20 = memref.alloc() : memref<3xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%11, %alloc_20 : tensor<3xi16>, memref<3xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    affine.for %arg3 = 0 to 0 {
    }
    %22 = index.floordivs %c11, %c7
    %23 = index.divs %c9, %c10
    %24 = math.absf %8 : tensor<2x2x2xf16>
    %25 = arith.cmpi ule, %c470727290_i64, %c1446786890_i64 : i64
    bufferization.dealloc_tensor %2 : tensor<3xi64>
    %26 = affine.max affine_map<(d0, d1) -> (d1, -((d0 * 8) ceildiv 32), d0 floordiv 128)>(%c7, %23)
    %27 = math.ceil %7 : tensor<3xf16>
    %28 = vector.flat_transpose %19 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %29 = math.absi %3 : tensor<2x2x2xi32>
    %30 = arith.addf %cst, %cst_1 : f32
    %31 = math.ctlz %13 : tensor<2x3x2xi16>
    %alloc_21 = memref.alloc() : memref<2xi32>
    %32 = tensor.empty() : tensor<2x2xi32>
    %33 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_21, %alloc_21, %32 : memref<2xi32>, memref<2xi32>, tensor<2x2xi32>) outs(%3 : tensor<2x2x2xi32>) {
    ^bb0(%in: i32, %in_40: i32, %in_41: i32, %out: i32):
      %260 = math.fma %cst_1, %cst_0, %cst : f32
      %261 = vector.reduction <maxui>, %19 : vector<2xi64> into i64
      %262 = vector.splat %c7 : vector<2x2x2xindex>
      %263 = math.expm1 %4 : tensor<2x2x2xf32>
      %264 = memref.alloca_scope  -> (f32) {
        %294 = math.tan %8 : tensor<2x2x2xf16>
        %alloc_45 = memref.alloc() : memref<2x2x2xi1>
        %295 = math.log %7 : tensor<3xf16>
        %296 = arith.floordivsi %false_2, %false_2 : i1
        %297 = math.floor %cst_3 : f16
        %298 = math.absf %7 : tensor<3xf16>
        %299 = bufferization.to_memref %3 : memref<2x2x2xi32>
        %300 = arith.maxui %in, %in_41 : i32
        %301 = math.ctlz %11 : tensor<3xi16>
        %302 = vector.reduction <minui>, %19 : vector<2xi64> into i64
        memref.store %cst_3, %alloc_14[%c0, %c2, %c0] : memref<2x3x2xf16>
        %303 = math.log1p %4 : tensor<2x2x2xf32>
        %304 = vector.splat %23 : vector<2x2x2xindex>
        %305 = index.sizeof
        %306 = arith.divui %c1407355836_i64, %c1407355836_i64 : i64
        %307 = arith.cmpf uno, %cst_0, %cst : f32
        %308 = math.log %4 : tensor<2x2x2xf32>
        %309 = math.cos %7 : tensor<3xf16>
        %310 = vector.splat %false_2 : vector<3x6xi1>
        %311 = index.sizeof
        %312 = arith.addi %c1068268826_i32, %in_40 : i32
        %313 = vector.broadcast %cst : f32 to vector<2x2x2xf32>
        %314 = vector.fma %313, %313, %313 : vector<2x2x2xf32>
        %315 = arith.remui %in, %c1068268826_i32 : i32
        %316 = vector.reduction <or>, %28 : vector<2xi64> into i64
        %317 = index.floordivs %c10, %c13
        %318 = arith.minf %cst_1, %cst_0 : f32
        %319 = arith.cmpf ule, %cst_1, %cst : f32
        %320 = math.atan2 %cst_3, %cst_3 : f16
        memref.store %c1446786890_i64, %alloc_4[%c1, %c2, %c0] : memref<2x3x2xi64>
        %321 = math.ctpop %in : i32
        memref.store %false, %alloc_12[%c0, %c1] : memref<3x6xi1>
        %322 = math.roundeven %12 : tensor<3x6xf16>
        memref.alloca_scope.return %cst : f32
      }
      %265 = tensor.empty() : tensor<2x2x2xi1>
      %266 = vector.insertelement %c766409526_i64, %28[%c10 : index] : vector<2xi64>
      %267 = bufferization.to_memref %17 : memref<3xi64>
      %268 = arith.addf %cst_3, %cst_3 : f16
      %269 = index.mul %23, %c13
      %270 = tensor.empty() : tensor<2x2xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<2x2xi1>) outs(%0 : tensor<2x2x2xi1>) {
      ^bb0(%in_45: i1, %out_46: i1):
        %294 = math.cttz %11 : tensor<3xi16>
        %295 = arith.minsi %in_45, %false_2 : i1
        %296 = memref.load %alloc_12[%c1, %c2] : memref<3x6xi1>
        %297 = math.sqrt %10 : tensor<3xf16>
        %298 = vector.splat %false_2 : vector<2x3x2xi1>
        %299 = bufferization.clone %alloc_15 : memref<2x3x2xi64> to memref<2x3x2xi64>
        %300 = arith.addf %cst, %cst_0 : f32
        %301 = vector.create_mask %c12, %c9, %c6 : vector<2x2x2xi1>
        %302 = vector.broadcast %c1429938117_i32 : i32 to vector<2xi32>
        %303 = vector.broadcast %out_46 : i1 to vector<2xi1>
        %304 = vector.maskedload %alloc_13[%c1, %c0, %c0], %303, %302 : memref<2x2x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %305 = arith.addi %false, %false_2 : i1
        %306 = memref.load %alloc_11[%c0, %c0, %c1] : memref<2x3x2xf16>
        %307 = math.cttz %false_2 : i1
        %alloc_47 = memref.alloc() : memref<2x2x2xf32>
        memref.tensor_store %4, %alloc_47 : memref<2x2x2xf32>
        %308 = math.atan2 %7, %7 : tensor<3xf16>
        %309 = arith.muli %out_46, %false : i1
        %310 = math.ceil %10 : tensor<3xf16>
        %311 = vector.flat_transpose %28 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %312 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + d0 - 16) * 128)>(%c13, %26, %c2)
        %313 = math.cttz %18 : tensor<2xi16>
        %314 = tensor.empty() : tensor<3x6xf16>
        %315 = vector.splat %c470727290_i64 : vector<3x6xi64>
        %316 = math.log %12 : tensor<3x6xf16>
        %317 = vector.multi_reduction <mul>, %302, %302 [] : vector<2xi32> to vector<2xi32>
        %318 = arith.remf %cst_0, %264 : f32
        %319 = memref.atomic_rmw mulf %cst_3, %alloc_16[%c1, %c0, %c1] : (f16, memref<2x2x2xf16>) -> f16
        %cast_48 = tensor.cast %20 : tensor<i16> to tensor<i16>
        %320 = arith.shli %in_41, %in_40 : i32
        %321 = math.log %cst_0 : f32
        %322 = memref.load %alloc_18[%c2, %c5] : memref<3x6xf32>
        affine.store %c2015512963_i32, %alloc_17[%c7] : memref<3xi32>
        %cast_49 = tensor.cast %18 : tensor<2xi16> to tensor<?xi16>
        %323 = math.absf %cst_1 : f32
        linalg.yield %out_46 : i1
      } -> tensor<2x2x2xi1>
      %alloc_42 = memref.alloc() : memref<6x3xi16>
      %272 = tensor.empty() : tensor<3x3xi16>
      %273 = linalg.matmul ins(%14, %alloc_42 : tensor<3x6xi16>, memref<6x3xi16>) outs(%272 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %274 = arith.remf %cst_0, %cst : f32
      %275 = bufferization.to_memref %18 : memref<2xi16>
      %276 = arith.divf %264, %cst_1 : f32
      %277 = index.castu %26 : index to i32
      %278 = math.absi %14 : tensor<3x6xi16>
      %279 = math.fma %7, %10, %10 : tensor<3xf16>
      %280 = math.ctpop %265 : tensor<2x2x2xi1>
      %281 = vector.broadcast %264 : f32 to vector<2x3x2xf32>
      %282 = vector.fma %281, %281, %281 : vector<2x3x2xf32>
      %283 = math.ipowi %16, %2 : tensor<3xi64>
      %284 = arith.divui %out, %in_40 : i32
      %285 = vector.reduction <or>, %28 : vector<2xi64> into i64
      %286 = index.sub %26, %c3
      %287 = math.atan2 %cst, %cst : f32
      %288 = vector.extract %282[0] : vector<2x3x2xf32>
      %289 = index.maxu %c6, %c1
      %false_43 = index.bool.constant false
      %290 = math.log2 %4 : tensor<2x2x2xf32>
      %generated = tensor.generate %c14 {
      ^bb0(%arg3: index):
        %294 = arith.ceildivsi %c29478_i16, %c-22068_i16 : i16
        %295 = arith.muli %in_40, %c2015512963_i32 : i32
        %296 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %297 = vector.maskedload %alloc_15[%c1, %c0, %c1], %296, %28 : memref<2x3x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %298 = vector.broadcast %22 : index to vector<2xindex>
        %299 = vector.broadcast %c29478_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_20[%c0] [%298], %296, %299 : memref<3xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        tensor.yield %cst_3 : f16
      } : tensor<?xf16>
      %291 = vector.broadcast %c29478_i16 : i16 to vector<3xi16>
      %292 = vector.broadcast %false_43 : i1 to vector<3xi1>
      %293 = vector.maskedload %alloc_20[%c1], %292, %291 : memref<3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %rank_44 = tensor.rank %14 : tensor<3x6xi16>
      linalg.yield %c1429938117_i32 : i32
    } -> tensor<2x2x2xi32>
    %34 = index.ceildivs %c1, %22
    %35 = arith.ceildivsi %c29478_i16, %c29478_i16 : i16
    vector.print %28 : vector<2xi64>
    %36 = math.roundeven %10 : tensor<3xf16>
    %37 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%26, %c11, %c0, %c3)
    %38 = arith.subi %c1068268826_i32, %c2015512963_i32 : i32
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_22 = arith.constant 0 : i16
    %39 = vector.transfer_read %1[%c15, %c8, %c14], %c0_i16_22 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<2x3x2xi16>, vector<6xi16>
    %40 = vector.insert %c1446786890_i64, %19 [0] : i64 into vector<2xi64>
    %41 = vector.flat_transpose %28 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %inserted = tensor.insert %false into %0[%c1, %c1, %c0] : tensor<2x2x2xi1>
    %42 = arith.shli %c863776175_i64, %c863776175_i64 : i64
    %collapsed = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<2x2x2xi64> into tensor<4x2xi64>
    %rank = tensor.rank %5 : tensor<2x2x2xi64>
    %43 = math.roundeven %12 : tensor<3x6xf16>
    %44 = arith.remui %c766409526_i64, %c1407355836_i64 : i64
    %45 = arith.minsi %c863776175_i64, %c766409526_i64 : i64
    %46 = arith.muli %c766409526_i64, %c470727290_i64 : i64
    %47 = affine.load %alloc_18[%c5, %c3] : memref<3x6xf32>
    %48 = vector.reduction <add>, %19 : vector<2xi64> into i64
    %49 = vector.broadcast %cst_3 : f16 to vector<6x2x6xf16>
    %50 = vector.broadcast %cst_3 : f16 to vector<6x2xf16>
    %dest, %accumulated_value = vector.scan <maxf>, %49, %50 {inclusive = true, reduction_dim = 2 : i64} : vector<6x2x6xf16>, vector<6x2xf16>
    %51 = bufferization.clone %alloc_11 : memref<2x3x2xf16> to memref<2x3x2xf16>
    %52 = math.cos %cst : f32
    %53 = math.fma %10, %7, %10 : tensor<3xf16>
    %54 = bufferization.clone %alloc_4 : memref<2x3x2xi64> to memref<2x3x2xi64>
    %55 = affine.for %arg3 = 0 to 27 iter_args(%arg4 = %c1068268826_i32) -> (i32) {
      affine.yield %c1429938117_i32 : i32
    }
    %56 = affine.max affine_map<(d0, d1) -> (d0 floordiv 32 + d1 + 4, d0 floordiv 128, d0 floordiv 32, d0 floordiv 128)>(%c1, %c9)
    %57 = arith.remui %c1068268826_i32, %c1068268826_i32 : i32
    %58 = arith.minf %cst_0, %cst_1 : f32
    %59 = math.absi %14 : tensor<3x6xi16>
    %60 = scf.if %false -> (memref<2x2x2xi16>) {
      %260 = vector.broadcast %c1068268826_i32 : i32 to vector<3xi32>
      %261 = vector.broadcast %false_2 : i1 to vector<3xi1>
      %262 = vector.maskedload %alloc_17[%c2], %261, %260 : memref<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
      %263 = vector.create_mask %c3, %c8 : vector<3x6xi1>
      %264 = math.atan2 %12, %12 : tensor<3x6xf16>
      %265 = affine.load %54[%c9, %c13, %c12] : memref<2x3x2xi64>
      %266 = arith.cmpi ugt, %c0_i16, %c29478_i16 : i16
      %267 = tensor.empty() : tensor<2x2xi32>
      %alloc_40 = memref.alloc() : memref<2xi32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %6, %alloc_40 : tensor<2x2xi32>, tensor<2x2x2xi32>, memref<2xi32>) outs(%6 : tensor<2x2x2xi32>) {
      ^bb0(%in: i32, %in_42: i32, %in_43: i32, %out: i32):
        %271 = math.atan %12 : tensor<3x6xf16>
        memref.copy %alloc_20, %alloc_8 : memref<3xi16> to memref<3xi16>
        %272 = vector.load %alloc_8[%c2] : memref<3xi16>, vector<2x2x2xi16>
        %splat_44 = tensor.splat %c1446786890_i64 : tensor<3x6xi64>
        %rank_45 = tensor.rank %2 : tensor<3xi64>
        %273 = vector.load %alloc_13[%c1, %c1, %c1] : memref<2x2x2xi32>, vector<3xi32>
        %cast_46 = tensor.cast %2 : tensor<3xi64> to tensor<?xi64>
        %274 = arith.addi %c1446786890_i64, %c766409526_i64 : i64
        %275 = vector.broadcast %c766409526_i64 : i64 to vector<2x2xi64>
        %276 = vector.outerproduct %19, %19, %275 {kind = #vector.kind<minui>} : vector<2xi64>, vector<2xi64>
        %277 = math.expm1 %12 : tensor<3x6xf16>
        %278 = vector.flat_transpose %41 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %279 = arith.minf %cst, %cst_1 : f32
        %extracted_47 = tensor.extract %10[%c0] : tensor<3xf16>
        %280 = math.absf %7 : tensor<3xf16>
        %281 = math.roundeven %cst_3 : f16
        %282 = arith.remsi %out, %in_42 : i32
        %283 = arith.andi %in_42, %c2015512963_i32 : i32
        %284 = vector.flat_transpose %273 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %285 = math.ctpop %21 : tensor<i16>
        %286 = vector.broadcast %c-22068_i16 : i16 to vector<2x2xi16>
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %272, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2x2xi16>, vector<2x2xi16>
        %287 = math.atan2 %cst_3, %extracted_47 : f16
        %288 = math.log %4 : tensor<2x2x2xf32>
        %289 = arith.ceildivsi %265, %c766409526_i64 : i64
        %290 = arith.remf %cst_0, %cst_1 : f32
        %291 = arith.minsi %c1068268826_i32, %c1068268826_i32 : i32
        %292 = affine.load %54[%c12, %c8, %c5] : memref<2x3x2xi64>
        %293 = math.ceil %4 : tensor<2x2x2xf32>
        %294 = arith.minf %cst_1, %cst : f32
        %295 = vector.load %alloc_17[%c0] : memref<3xi32>, vector<3x6xi32>
        %296 = math.log10 %12 : tensor<3x6xf16>
        %297 = math.ceil %extracted_47 : f16
        %298 = arith.maxsi %c29478_i16, %c-22068_i16 : i16
        linalg.yield %c1068268826_i32 : i32
      } -> tensor<2x2x2xi32>
      %269 = affine.if affine_set<(d0) : (0 >= 0)>(%c12) -> i32 {
        %271 = math.log10 %12 : tensor<3x6xf16>
        %272 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c1)
        %273 = index.castu %false_2 : i1 to index
        %274 = math.ctlz %21 : tensor<i16>
        %275 = arith.remui %c1429938117_i32, %c1429938117_i32 : i32
        %276 = vector.extract %262[1] : vector<3xi32>
        %splat_42 = tensor.splat %c29478_i16 : tensor<3x6xi16>
        %277 = vector.insert %c1407355836_i64, %19 [1] : i64 into vector<2xi64>
        affine.yield %c2015512963_i32 : i32
      } else {
        %271 = arith.remsi %c29478_i16, %c-22068_i16 : i16
        %272 = math.cttz %0 : tensor<2x2x2xi1>
        memref.store %47, %alloc_9[%c0, %c2, %c0] : memref<2x3x2xf32>
        %273 = math.ctpop %5 : tensor<2x2x2xi64>
        %274 = affine.apply affine_map<(d0) -> (0)>(%c12)
        %cast_42 = tensor.cast %6 : tensor<2x2x2xi32> to tensor<?x?x?xi32>
        %275 = arith.andi %c1068268826_i32, %c2015512963_i32 : i32
        %276 = arith.minf %cst, %cst_0 : f32
        affine.yield %c2015512963_i32 : i32
      }
      %270 = bufferization.clone %alloc_17 : memref<3xi32> to memref<3xi32>
      %alloc_41 = memref.alloc() : memref<2x2x2xi16>
      scf.yield %alloc_41 : memref<2x2x2xi16>
    } else {
      vector.print %19 : vector<2xi64>
      memref.store %c2015512963_i32, %alloc_13[%c0, %c1, %c0] : memref<2x2x2xi32>
      %260 = arith.floordivsi %false, %false_2 : i1
      %alloc_40 = memref.alloc() : memref<2x3xi64>
      %261 = tensor.empty() : tensor<4x3xi64>
      %262 = linalg.matmul ins(%collapsed, %alloc_40 : tensor<4x2xi64>, memref<2x3xi64>) outs(%261 : tensor<4x3xi64>) -> tensor<4x3xi64>
      %cast_41 = tensor.cast %7 : tensor<3xf16> to tensor<?xf16>
      %263 = arith.minf %cst, %cst_0 : f32
      %264 = math.absf %cst_0 : f32
      %265 = arith.subi %c-22068_i16, %c0_i16 : i16
      %alloc_42 = memref.alloc() : memref<2x2x2xi16>
      scf.yield %alloc_42 : memref<2x2x2xi16>
    }
    %61 = math.atan2 %7, %7 : tensor<3xf16>
    %62 = affine.load %alloc_5[%c3, %c12, %c5] : memref<2x2x2xi64>
    %63 = affine.load %alloc_7[%c13, %c11] : memref<3x6xi1>
    %64 = tensor.empty(%c0) : tensor<?xf32>
    %65 = arith.floordivsi %c1429938117_i32, %c2015512963_i32 : i32
    %66 = arith.andi %c1446786890_i64, %c470727290_i64 : i64
    %67 = arith.shli %c863776175_i64, %c766409526_i64 : i64
    %68 = affine.apply affine_map<(d0, d1) -> ((d0 * -127) floordiv 2)>(%c0, %c3)
    %69 = arith.xori %c-22068_i16, %c0_i16 : i16
    %70 = math.atan2 %10, %10 : tensor<3xf16>
    %71 = math.ctpop %c0_i16 : i16
    %72 = tensor.empty() : tensor<6x2xi64>
    %73 = tensor.empty() : tensor<3x2xi64>
    %74 = linalg.matmul ins(%9, %72 : tensor<3x6xi64>, tensor<6x2xi64>) outs(%73 : tensor<3x2xi64>) -> tensor<3x2xi64>
    %75 = bufferization.clone %alloc_9 : memref<2x3x2xf32> to memref<2x3x2xf32>
    memref.copy %alloc_7, %alloc_12 : memref<3x6xi1> to memref<3x6xi1>
    %from_elements = tensor.from_elements %cst, %cst, %cst : tensor<3xf32>
    %76 = vector.bitcast %41 : vector<2xi64> to vector<2xi64>
    %77 = math.sqrt %from_elements : tensor<3xf32>
    %78 = arith.remf %47, %47 : f32
    %79 = bufferization.to_tensor %alloc_16 : memref<2x2x2xf16>
    %80 = math.fpowi %47, %c2015512963_i32 : f32, i32
    %81 = arith.floordivsi %c863776175_i64, %c1407355836_i64 : i64
    vector.print %28 : vector<2xi64>
    %82 = vector.load %alloc[%c1, %c1, %c1] : memref<2x2x2xi1>, vector<3xi1>
    %83 = affine.if affine_set<(d0) : ((d0 + 2) ceildiv 32 == 0, ((d0 floordiv 8) * 8) mod 128 == 0, d0 + d0 - d0 floordiv 8 >= 0, (d0 floordiv 8) * 8 >= 0)>(%c4) -> f32 {
      %260 = index.sizeof
      %261 = index.sizeof
      %262 = index.castu %c2 : index to i32
      %263 = math.log1p %7 : tensor<3xf16>
      %264 = index.sizeof
      %265 = affine.if affine_set<(d0, d1, d2) : (d0 - 16 >= 0, d2 - 4 >= 0, d1 == 0)>(%c13, %c7, %c15) -> memref<2x3x2xi64> {
        %268 = math.atan2 %4, %4 : tensor<2x2x2xf32>
        %269 = index.divs %23, %c4
        vector.print %82 : vector<3xi1>
        %270 = index.mul %34, %23
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %271 = vector.transfer_read %75[%c13, %c0, %37], %cst_41 : memref<2x3x2xf32>, vector<f32>
        %rank_42 = tensor.rank %17 : tensor<3xi64>
        %272 = arith.minf %47, %47 : f32
        %273 = index.sub %c10, %c6
        affine.yield %alloc_4 : memref<2x3x2xi64>
      } else {
        %268 = vector.broadcast %c1407355836_i64 : i64 to vector<2x2xi64>
        %269 = vector.outerproduct %76, %41, %268 {kind = #vector.kind<mul>} : vector<2xi64>, vector<2xi64>
        %alloc_40 = memref.alloc() : memref<2x3x2xf32>
        %270 = math.ctlz %18 : tensor<2xi16>
        %271 = bufferization.to_memref %1 : memref<2x3x2xi16>
        %272 = bufferization.to_tensor %alloc_13 : memref<2x2x2xi32>
        %rank_41 = tensor.rank %18 : tensor<2xi16>
        %273 = vector.insert %c1446786890_i64, %19 [1] : i64 into vector<2xi64>
        %274 = bufferization.to_tensor %51 : memref<2x3x2xf16>
        affine.yield %alloc_10 : memref<2x3x2xi64>
      }
      %266 = arith.cmpf true, %cst_0, %47 : f32
      %267 = memref.load %75[%c0, %c2, %c0] : memref<2x3x2xf32>
      affine.yield %47 : f32
    } else {
      %260 = math.ctlz %0 : tensor<2x2x2xi1>
      %261 = arith.muli %c766409526_i64, %c470727290_i64 : i64
      %cst_40 = arith.constant 1.29844902E+9 : f32
      %262 = arith.xori %c0_i16, %c29478_i16 : i16
      %263 = vector.broadcast %cst_3 : f16 to vector<3x6xf16>
      %264 = vector.broadcast %cst_3 : f16 to vector<6xf16>
      %dest_41, %accumulated_value_42 = vector.scan <maxf>, %263, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<3x6xf16>, vector<6xf16>
      %265 = tensor.empty(%c14) : tensor<?xi16>
      %alloc_43 = memref.alloc() : memref<2xf16>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43, %8, %79 : memref<2xf16>, tensor<2x2x2xf16>, tensor<2x2x2xf16>) outs(%8 : tensor<2x2x2xf16>) {
      ^bb0(%in: f16, %in_44: f16, %in_45: f16, %out: f16):
        %268 = vector.extract %82[2] : vector<3xi1>
        %269 = arith.minf %cst_0, %cst : f32
        %270 = math.sqrt %cst_3 : f16
        %271 = index.floordivs %c15, %c5
        %272 = math.log2 %79 : tensor<2x2x2xf16>
        %273 = math.ipowi %62, %c863776175_i64 : i64
        %alloc_46 = memref.alloc() : memref<2x3x2xi1>
        %274 = affine.apply affine_map<(d0) -> (d0 mod 2)>(%c9)
        %275 = math.atan2 %in, %in_44 : f16
        %276 = arith.subi %c-22068_i16, %c29478_i16 : i16
        %277 = vector.matrix_multiply %28, %28 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
        %278 = math.cos %47 : f32
        %279 = math.fma %cst, %cst_0, %cst_1 : f32
        %280 = arith.minsi %c1068268826_i32, %c1429938117_i32 : i32
        %281 = math.log1p %12 : tensor<3x6xf16>
        memref.store %62, %alloc_10[%c1, %c0, %c1] : memref<2x3x2xi64>
        %282 = math.powf %in_45, %out : f16
        %283 = math.expm1 %79 : tensor<2x2x2xf16>
        %alloc_47 = memref.alloc() : memref<2x2xi64>
        %284 = tensor.empty() : tensor<3x2xi64>
        %285 = linalg.matmul ins(%73, %alloc_47 : tensor<3x2xi64>, memref<2x2xi64>) outs(%284 : tensor<3x2xi64>) -> tensor<3x2xi64>
        %286 = arith.shli %62, %62 : i64
        %alloc_48 = memref.alloc() : memref<3x6xi1>
        %287 = math.ceil %4 : tensor<2x2x2xf32>
        %288 = math.log %cst : f32
        %289 = memref.atomic_rmw ori %c1068268826_i32, %alloc_19[%c1] : (i32, memref<3xi32>) -> i32
        %290 = arith.minf %cst_0, %cst_0 : f32
        %291 = bufferization.to_tensor %alloc_14 : memref<2x3x2xf16>
        %292 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
        %293 = index.casts %56 : index to i32
        %294 = arith.minf %in_45, %cst_3 : f16
        %295 = vector.broadcast %cst : f32 to vector<3xf32>
        %296 = vector.maskedload %alloc_18[%c0, %c5], %82, %295 : memref<3x6xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %297 = index.floordivs %68, %22
        %298 = bufferization.clone %60 : memref<2x2x2xi16> to memref<2x2x2xi16>
        linalg.yield %in_45 : f16
      } -> tensor<2x2x2xf16>
      %267 = math.sqrt %from_elements : tensor<3xf32>
      affine.yield %cst_1 : f32
    }
    %splat = tensor.splat %c1068268826_i32 : tensor<2x2x2xi32>
    %84 = tensor.empty(%c0) : tensor<?x6xf16>
    %85 = arith.maxui %c2015512963_i32, %c1068268826_i32 : i32
    %86 = bufferization.clone %alloc_5 : memref<2x2x2xi64> to memref<2x2x2xi64>
    %extracted = tensor.extract %3[%c0, %c1, %c0] : tensor<2x2x2xi32>
    %87 = vector.insert %c470727290_i64, %76 [1] : i64 into vector<2xi64>
    %88 = math.absi %2 : tensor<3xi64>
    %89 = memref.load %alloc_7[%c0, %c1] : memref<3x6xi1>
    %90 = arith.cmpf une, %cst_3, %cst_3 : f16
    %91 = scf.index_switch %23 -> memref<3xf16> 
    case 1 {
      memref.assume_alignment %alloc_11, 2 : memref<2x3x2xf16>
      %260 = math.atan %cst : f32
      %261 = math.log10 %10 : tensor<3xf16>
      %262 = vector.flat_transpose %82 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %alloc_40 = memref.alloc() : memref<3x6xf32>
      %263 = vector.splat %26 : vector<3x6xindex>
      %264 = arith.minf %47, %cst_1 : f32
      %265 = index.floordivs %c8, %c15
      %266 = math.roundeven %12 : tensor<3x6xf16>
      memref.alloca_scope  {
        %272 = math.copysign %from_elements, %from_elements : tensor<3xf32>
        %273 = vector.broadcast %cst_1 : f32 to vector<2x3x2xf32>
        %274 = vector.fma %273, %273, %273 : vector<2x3x2xf32>
        %275 = index.ceildivs %c0, %c13
        %276 = index.mul %c6, %265
        %splat_43 = tensor.splat %63 : tensor<2x2x2xi1>
        %277 = vector.broadcast %22 : index to vector<2xindex>
        %278 = vector.broadcast %false : i1 to vector<2xi1>
        vector.scatter %alloc_4[%c0, %c0, %c1] [%277], %278, %41 : memref<2x3x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %rank_44 = tensor.rank %79 : tensor<2x2x2xf16>
        %279 = vector.broadcast %cst : f32 to vector<3x2xf32>
        %280 = vector.insert %279, %273 [1] : vector<3x2xf32> into vector<2x3x2xf32>
        %281 = arith.remsi %c1446786890_i64, %c766409526_i64 : i64
        %alloc_45 = memref.alloc() : memref<2x2x2xi64>
        %282 = math.cos %4 : tensor<2x2x2xf32>
        %283 = vector.insertelement %false_2, %262[%c13 : index] : vector<3xi1>
        %284 = memref.load %86[%c1, %c0, %c0] : memref<2x2x2xi64>
        %285 = vector.reduction <or>, %262 : vector<3xi1> into i1
        %286 = math.expm1 %12 : tensor<3x6xf16>
        %287 = vector.broadcast %62 : i64 to vector<3xi64>
        %288 = vector.maskedload %alloc_5[%c1, %c0, %c1], %262, %287 : memref<2x2x2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %289 = vector.broadcast %c-22068_i16 : i16 to vector<2xi16>
        %290 = vector.broadcast %63 : i1 to vector<2xi1>
        %291 = vector.maskedload %alloc_8[%c1], %290, %289 : memref<3xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %292 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%37, %rank_44, %34)
        %293 = bufferization.to_memref %9 : memref<3x6xi64>
        %294 = bufferization.clone %alloc_8 : memref<3xi16> to memref<3xi16>
        %295 = arith.remf %47, %cst_1 : f32
        %296 = index.ceildivu %22, %c0
        %297 = arith.cmpf une, %cst, %cst_1 : f32
        %298 = arith.minf %cst_0, %cst : f32
        %299 = math.fma %4, %4, %4 : tensor<2x2x2xf32>
        %from_elements_46 = tensor.from_elements %false, %false_2, %false_2 : tensor<3xi1>
        %300 = vector.flat_transpose %289 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        vector.print %274 : vector<2x3x2xf32>
        %301 = arith.maxsi %false_2, %false : i1
        %302 = vector.extract %279[1] : vector<3x2xf32>
        %303 = index.sizeof
        %304 = index.floordivs %26, %c5
      }
      %267 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + ((d1 + 2) mod 128) floordiv 2 - 4, (d1 + 2) mod 128, d1 + 2)>(%c8, %c1, %26, %c8)
      %collapsed_41 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<2x2x2xi64> into tensor<4x2xi64>
      %268 = bufferization.to_memref %0 : memref<2x2x2xi1>
      %269 = math.absi %14 : tensor<3x6xi16>
      %270 = tensor.empty(%c15) : tensor<?xf32>
      %271 = index.floordivs %68, %56
      %alloc_42 = memref.alloc() : memref<3xf16>
      scf.yield %alloc_42 : memref<3xf16>
    }
    default {
      %260 = vector.broadcast %c7 : index to vector<2xindex>
      %261 = vector.broadcast %63 : i1 to vector<2xi1>
      vector.scatter %alloc[%c0, %c1, %c1] [%260], %261, %261 : memref<2x2x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %262 = vector.extract_strided_slice %76 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
      %263 = vector.splat %c11 : vector<2x3x2xindex>
      %264 = vector.broadcast %c4 : index to vector<6xindex>
      %265 = vector.broadcast %false : i1 to vector<6xi1>
      %266 = vector.broadcast %cst_3 : f16 to vector<6xf16>
      vector.scatter %alloc_6[%c1, %c5] [%264], %265, %266 : memref<3x6xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
      %267 = arith.divf %47, %cst : f32
      %268 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + 8 >= 0, d3 - 12 >= 0)>(%c4, %c3, %c6, %c2) -> f32 {
        %278 = arith.shli %63, %false_2 : i1
        %279 = math.log10 %7 : tensor<3xf16>
        %280 = arith.remsi %c2015512963_i32, %c2015512963_i32 : i32
        %281 = math.expm1 %79 : tensor<2x2x2xf16>
        %282 = math.cttz %c2015512963_i32 : i32
        memref.assume_alignment %alloc_15, 2 : memref<2x3x2xi64>
        %283 = arith.cmpf false, %47, %47 : f32
        %284 = arith.remsi %c863776175_i64, %62 : i64
        affine.yield %cst_0 : f32
      } else {
        %278 = index.maxu %c11, %56
        %279 = math.sqrt %79 : tensor<2x2x2xf16>
        %alloca = memref.alloca() : memref<2x3x2xi64>
        %true_42 = index.bool.constant true
        %280 = vector.reduction <and>, %82 : vector<3xi1> into i1
        %281 = math.log10 %12 : tensor<3x6xf16>
        %alloc_43 = memref.alloc() : memref<3xf16>
        memref.tensor_store %7, %alloc_43 : memref<3xf16>
        %282 = math.atan2 %cst_1, %47 : f32
        affine.yield %cst_0 : f32
      }
      %269 = vector.extract %76[1] : vector<2xi64>
      %rank_40 = tensor.rank %10 : tensor<3xf16>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %41, %28, %c470727290_i64 : vector<2xi64>, vector<2xi64> into i64
      %271 = index.mul %c4, %c12
      %272 = math.ctpop %0 : tensor<2x2x2xi1>
      %273 = math.log %cst : f32
      %274 = arith.subi %62, %c1446786890_i64 : i64
      %275 = vector.create_mask %26, %c10, %23 : vector<2x3x2xi1>
      %276 = index.divu %c14, %rank_40
      %277 = math.log10 %cst : f32
      %alloc_41 = memref.alloc() : memref<3xf16>
      scf.yield %alloc_41 : memref<3xf16>
    }
    %alloc_23 = memref.alloc() : memref<2x3x2xi16>
    memref.tensor_store %1, %alloc_23 : memref<2x3x2xi16>
    %92 = math.tan %cst : f32
    %93 = arith.shli %c766409526_i64, %c1407355836_i64 : i64
    %cast = tensor.cast %4 : tensor<2x2x2xf32> to tensor<?x?x?xf32>
    %94 = math.tanh %10 : tensor<3xf16>
    %95 = vector.matrix_multiply %28, %28 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
    %96 = arith.xori %c863776175_i64, %c1407355836_i64 : i64
    %false_24 = arith.constant false
    %97 = math.atan %7 : tensor<3xf16>
    %98 = bufferization.to_memref %17 : memref<3xi64>
    %cast_25 = tensor.cast %18 : tensor<2xi16> to tensor<?xi16>
    %99 = arith.minui %c1068268826_i32, %c2015512963_i32 : i32
    %100 = math.cttz %3 : tensor<2x2x2xi32>
    %101 = vector.extract_strided_slice %28 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
    %102 = bufferization.to_tensor %alloc_20 : memref<3xi16>
    %103 = arith.minf %47, %47 : f32
    %104 = arith.maxsi %c766409526_i64, %c766409526_i64 : i64
    %105 = index.casts %56 : index to i32
    %106 = tensor.empty() : tensor<2x2xi32>
    %107 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%106, %6, %106 : tensor<2x2xi32>, tensor<2x2x2xi32>, tensor<2x2xi32>) outs(%splat : tensor<2x2x2xi32>) {
    ^bb0(%in: i32, %in_40: i32, %in_41: i32, %out: i32):
      %260 = affine.if affine_set<(d0) : ((d0 + 64) * 128 == 0, d0 >= 0)>(%c8) -> f32 {
        %291 = index.castu %63 : i1 to index
        %splat_50 = tensor.splat %c1407355836_i64 : tensor<2x2x2xi64>
        %292 = vector.shuffle %19, %28 [0, 1, 2] : vector<2xi64>, vector<2xi64>
        %293 = vector.insert %c766409526_i64, %95 [0] : i64 into vector<1xi64>
        %294 = arith.subi %false, %63 : i1
        %295 = math.log %79 : tensor<2x2x2xf16>
        %296 = bufferization.to_tensor %86 : memref<2x2x2xi64>
        %297 = tensor.empty(%56, %34) : tensor<?x3x?xi32>
        affine.yield %47 : f32
      } else {
        %291 = arith.remsi %62, %62 : i64
        %292 = math.ceil %cst : f32
        %rank_50 = tensor.rank %16 : tensor<3xi64>
        %293 = arith.remf %cst_1, %cst_1 : f32
        %294 = index.sub %68, %c3
        %extracted_51 = tensor.extract %21[] : tensor<i16>
        %295 = index.sub %c0, %23
        %296 = index.casts %c1446786890_i64 : i64 to index
        affine.yield %cst_0 : f32
      }
      %261 = tensor.empty(%c0) : tensor<?x3x2xf32>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18, %reduced, %18 : tensor<2xi16>, tensor<2xi16>, tensor<2xi16>) outs(%13 : tensor<2x3x2xi16>) {
      ^bb0(%in_50: i16, %in_51: i16, %in_52: i16, %out_53: i16):
        %291 = bufferization.to_memref %5 : memref<2x2x2xi64>
        affine.store %63, %alloc[%c1, %c7, %c6] : memref<2x2x2xi1>
        %292 = math.expm1 %12 : tensor<3x6xf16>
        %293 = math.ceil %from_elements : tensor<3xf32>
        %294 = math.tan %from_elements : tensor<3xf32>
        %295 = math.exp %cst : f32
        %296 = index.sizeof
        %cast_54 = tensor.cast %10 : tensor<3xf16> to tensor<?xf16>
        %297 = arith.addi %in, %in_41 : i32
        %298 = math.rsqrt %47 : f32
        %299 = math.ipowi %c1446786890_i64, %62 : i64
        %300 = vector.broadcast %c470727290_i64 : i64 to vector<3xi64>
        %301 = vector.maskedload %alloc_10[%c1, %c1, %c1], %82, %300 : memref<2x3x2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %302 = vector.load %alloc_19[%c1] : memref<3xi32>, vector<2x3x2xi32>
        %collapsed_55 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x6xi64> into tensor<18xi64>
        %303 = arith.remf %cst_0, %47 : f32
        %304 = math.log %7 : tensor<3xf16>
        %305 = arith.muli %c1068268826_i32, %c1068268826_i32 : i32
        %alloca = memref.alloca() : memref<3x6xi16>
        %306 = bufferization.clone %alloc_15 : memref<2x3x2xi64> to memref<2x3x2xi64>
        %307 = index.sub %c15, %c8
        %308 = math.expm1 %cst_3 : f16
        %309 = arith.minf %cst_0, %cst_1 : f32
        %310 = math.expm1 %7 : tensor<3xf16>
        %311 = arith.maxui %c766409526_i64, %c766409526_i64 : i64
        %312 = bufferization.clone %51 : memref<2x3x2xf16> to memref<2x3x2xf16>
        %313 = vector.reduction <or>, %95 : vector<1xi64> into i64
        %314 = math.sqrt %4 : tensor<2x2x2xf32>
        %315 = math.log1p %10 : tensor<3xf16>
        %collapsed_56 = tensor.collapse_shape %cast [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
        %316 = math.cos %10 : tensor<3xf16>
        %317 = memref.realloc %alloc_17 : memref<3xi32> to memref<2xi32>
        %318 = bufferization.to_memref %12 : memref<3x6xf16>
        linalg.yield %in_50 : i16
      } -> tensor<2x3x2xi16>
      %generated = tensor.generate %c10, %23 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %291 = arith.shli %false_2, %63 : i1
        %292 = index.floordivs %arg3, %26
        %293 = arith.addi %62, %c1407355836_i64 : i64
        %294 = math.fma %10, %10, %7 : tensor<3xf16>
        tensor.yield %cst_3 : f16
      } : tensor<?x?x2xf16>
      vector.print %28 : vector<2xi64>
      %263 = arith.xori %c863776175_i64, %c1407355836_i64 : i64
      %264 = vector.broadcast %c-22068_i16 : i16 to vector<2x2x2xi16>
      %265 = vector.broadcast %c-22068_i16 : i16 to vector<2x2xi16>
      %dest_42, %accumulated_value_43 = vector.scan <or>, %264, %265 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x2xi16>, vector<2x2xi16>
      %266 = bufferization.to_tensor %alloc_11 : memref<2x3x2xf16>
      %267 = tensor.empty() : tensor<2x2xi64>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %267, %86 : tensor<2x2x2xi64>, tensor<2x2xi64>, memref<2x2x2xi64>) outs(%5 : tensor<2x2x2xi64>) {
      ^bb0(%in_50: i64, %in_51: i64, %in_52: i64, %out_53: i64):
        %291 = vector.broadcast %c863776175_i64 : i64 to vector<6xi64>
        %292 = vector.broadcast %false : i1 to vector<6xi1>
        %293 = vector.maskedload %alloc_15[%c0, %c2, %c0], %292, %291 : memref<2x3x2xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %294 = arith.mulf %cst, %cst : f32
        %295 = tensor.empty() : tensor<6x6xf16>
        %296 = tensor.empty() : tensor<3x6xf16>
        %297 = linalg.matmul ins(%12, %295 : tensor<3x6xf16>, tensor<6x6xf16>) outs(%296 : tensor<3x6xf16>) -> tensor<3x6xf16>
        %298 = index.castu %false_2 : i1 to index
        %299 = math.atan2 %266, %266 : tensor<2x3x2xf16>
        %300 = arith.muli %62, %in_50 : i64
        %301 = bufferization.to_memref %11 : memref<3xi16>
        memref.store %out_53, %54[%c0, %c2, %c0] : memref<2x3x2xi64>
        %302 = arith.remf %cst, %cst_1 : f32
        %alloc_54 = memref.alloc() : memref<3xf32>
        %303 = vector.broadcast %c15 : index to vector<2xindex>
        %304 = vector.broadcast %false_2 : i1 to vector<2xi1>
        vector.scatter %54[%c0, %c2, %c0] [%303], %304, %28 : memref<2x3x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %305 = math.powf %266, %266 : tensor<2x3x2xf16>
        %306 = math.absf %10 : tensor<3xf16>
        %307 = arith.ceildivsi %63, %63 : i1
        %308 = vector.splat %c13 : vector<3xindex>
        %from_elements_55 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<3x6xf16>
        %309 = arith.mulf %cst_3, %cst_3 : f16
        %310 = bufferization.clone %alloc_17 : memref<3xi32> to memref<3xi32>
        %311 = arith.ori %in_51, %62 : i64
        %312 = arith.maxui %false_2, %63 : i1
        %313 = arith.cmpf false, %cst_0, %cst_1 : f32
        %314 = math.log10 %4 : tensor<2x2x2xf32>
        memref.store %c1407355836_i64, %alloc_15[%c1, %c1, %c1] : memref<2x3x2xi64>
        %315 = vector.bitcast %292 : vector<6xi1> to vector<6xi1>
        %316 = index.casts %extracted : i32 to index
        %317 = math.copysign %cst_0, %cst_0 : f32
        memref.store %c470727290_i64, %98[%c0] : memref<3xi64>
        %318 = math.tanh %296 : tensor<3x6xf16>
        %319 = memref.atomic_rmw addf %cst_3, %alloc_16[%c1, %c1, %c0] : (f16, memref<2x2x2xf16>) -> f16
        %320 = math.tan %10 : tensor<3xf16>
        %321 = index.ceildivu %c4, %c1
        %inserted_56 = tensor.insert %c863776175_i64 into %73[%c2, %c1] : tensor<3x2xi64>
        linalg.yield %c1407355836_i64 : i64
      } -> tensor<2x2x2xi64>
      %269 = memref.atomic_rmw minu %c470727290_i64, %alloc_15[%c0, %c1, %c1] : (i64, memref<2x3x2xi64>) -> i64
      %270 = tensor.empty() : tensor<3xi64>
      %extracted_44 = tensor.extract %16[%c2] : tensor<3xi64>
      %271 = arith.minf %cst_3, %cst_3 : f16
      %from_elements_45 = tensor.from_elements %c29478_i16, %c-22068_i16, %c0_i16, %c-22068_i16, %c0_i16, %c-22068_i16, %c-22068_i16, %c-22068_i16 : tensor<2x2x2xi16>
      %272 = index.floordivs %56, %c11
      %273 = arith.minsi %extracted_44, %c1407355836_i64 : i64
      %274 = arith.maxui %c0_i16, %c-22068_i16 : i16
      %275 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %276 = affine.apply affine_map<(d0) -> (-((d0 - 8) mod 16))>(%c13)
      %277 = tensor.empty() : tensor<3xi32>
      %278 = math.fpowi %7, %277 : tensor<3xf16>, tensor<3xi32>
      %true_46 = arith.constant true
      %279 = bufferization.clone %alloc_11 : memref<2x3x2xf16> to memref<2x3x2xf16>
      %280 = arith.addi %c766409526_i64, %c766409526_i64 : i64
      %281 = tensor.empty(%c14) : tensor<2x?x2xi32>
      %282 = affine.if affine_set<(d0) : (0 == 0, (-(d0 + d0 + 32 - 8) - (d0 + 32)) mod 128 == 0, (d0 - 8) floordiv 128 >= 0)>(%c8) -> i16 {
        %291 = arith.remf %cst, %cst : f32
        %292 = index.maxs %26, %c6
        vector.print %101 : vector<2xi64>
        %293 = tensor.empty() : tensor<6x3xi64>
        %294 = tensor.empty() : tensor<3x3xi64>
        %295 = linalg.matmul ins(%9, %293 : tensor<3x6xi64>, tensor<6x3xi64>) outs(%294 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %296 = math.cttz %73 : tensor<3x2xi64>
        %297 = arith.floordivsi %false, %false_2 : i1
        %298 = math.atan2 %47, %cst_1 : f32
        %299 = index.sizeof
        affine.yield %c29478_i16 : i16
      } else {
        %291 = vector.shuffle %82, %82 [0, 1] : vector<3xi1>, vector<3xi1>
        %292 = index.divu %c5, %c4
        %293 = arith.maxui %c1407355836_i64, %c863776175_i64 : i64
        %294 = math.floor %from_elements : tensor<3xf32>
        memref.store %c470727290_i64, %alloc_10[%c1, %c1, %c0] : memref<2x3x2xi64>
        %extracted_50 = tensor.extract %18[%c1] : tensor<2xi16>
        %alloc_51 = memref.alloc() : memref<3x6xi16>
        %295 = math.tanh %cst_0 : f32
        affine.yield %c0_i16 : i16
      }
      %283 = vector.broadcast %63 : i1 to vector<6x2xi1>
      %284 = vector.broadcast %false : i1 to vector<2xi1>
      %dest_47, %accumulated_value_48 = vector.scan <maxui>, %283, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<6x2xi1>, vector<2xi1>
      %285 = tensor.empty() : tensor<2x2x2xi1>
      %mapped_49 = linalg.map ins(%alloc, %0, %alloc : memref<2x2x2xi1>, tensor<2x2x2xi1>, memref<2x2x2xi1>) outs(%285 : tensor<2x2x2xi1>)
        (%in_50: i1, %in_51: i1, %in_52: i1) {
          %291 = vector.matrix_multiply %41, %95 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<1xi64>) -> vector<2xi64>
          %292 = arith.maxsi %c863776175_i64, %extracted_44 : i64
          vector.print %28 : vector<2xi64>
          %cast_53 = tensor.cast %13 : tensor<2x3x2xi16> to tensor<?x?x?xi16>
          %293 = vector.broadcast %cst_3 : f16 to vector<2xf16>
          %294 = vector.broadcast %false : i1 to vector<2xi1>
          %295 = vector.maskedload %51[%c1, %c2, %c0], %294, %293 : memref<2x3x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %296 = math.absi %13 : tensor<2x3x2xi16>
          memref.copy %54, %alloc_4 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %297 = math.cttz %9 : tensor<3x6xi64>
          %298 = index.mul %c15, %c12
          %299 = math.copysign %10, %7 : tensor<3xf16>
          %300 = arith.minui %c470727290_i64, %c1446786890_i64 : i64
          %cast_54 = tensor.cast %reduced : tensor<2xi16> to tensor<?xi16>
          %301 = bufferization.clone %alloc_15 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %302 = vector.create_mask %298, %c9 : vector<3x6xi1>
          %303 = arith.remui %c1407355836_i64, %c766409526_i64 : i64
          %304 = vector.broadcast %cst_3 : f16 to vector<2x2xf16>
          %305 = vector.outerproduct %293, %293, %304 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
          %306 = vector.flat_transpose %291 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
          %307 = arith.minf %cst_0, %cst_1 : f32
          %308 = math.absf %4 : tensor<2x2x2xf32>
          %309 = math.expm1 %47 : f32
          %310 = bufferization.clone %301 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %311 = arith.cmpf olt, %cst_1, %47 : f32
          %312 = memref.realloc %98 : memref<3xi64> to memref<2xi64>
          %313 = vector.broadcast %63 : i1 to vector<6xi1>
          %dest_55, %accumulated_value_56 = vector.scan <minsi>, %302, %313 {inclusive = true, reduction_dim = 0 : i64} : vector<3x6xi1>, vector<6xi1>
          %314 = arith.muli %extracted_44, %c1446786890_i64 : i64
          %315 = arith.mulf %cst_1, %cst : f32
          %collapsed_57 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<2x2x2xi32> into tensor<4x2xi32>
          %316 = arith.andi %in, %in : i32
          %317 = math.sqrt %8 : tensor<2x2x2xf16>
          %318 = arith.remui %63, %63 : i1
          %alloca = memref.alloca() : memref<2x3x2xi32>
          %319 = index.floordivs %c2, %c5
          %false_58 = arith.constant false
          linalg.yield %false_58 : i1
        }
      %286 = index.divs %c5, %c2
      %287 = index.ceildivs %c13, %c14
      %288 = arith.xori %62, %c470727290_i64 : i64
      %289 = math.log2 %12 : tensor<3x6xf16>
      %290 = math.round %8 : tensor<2x2x2xf16>
      linalg.yield %in_40 : i32
    } -> tensor<2x2x2xi32>
    %108 = arith.andi %c29478_i16, %c-22068_i16 : i16
    %109 = arith.divf %cst_1, %cst_0 : f32
    %110 = math.expm1 %10 : tensor<3xf16>
    %111 = arith.andi %false_2, %63 : i1
    %112 = math.log2 %cst_1 : f32
    %splat_26 = tensor.splat %63 : tensor<2x2x2xi1>
    %113 = arith.remsi %c1429938117_i32, %c2015512963_i32 : i32
    %114 = math.ctpop %false : i1
    affine.store %cst_3, %alloc_11[%c2, %c11, %c5] : memref<2x3x2xf16>
    %115 = vector.broadcast %62 : i64 to vector<1x1xi64>
    %116 = vector.outerproduct %95, %95, %115 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
    %117 = affine.if affine_set<(d0) : ((d0 + 64) * 128 == 0, d0 >= 0)>(%c4) -> memref<2x2x2xi1> {
      %260 = index.floordivs %c5, %c1
      %generated = tensor.generate %c7, %c4 {
      ^bb0(%arg3: index, %arg4: index):
        %267 = affine.max affine_map<(d0, d1) -> (-((d1 + 8) ceildiv 4), -((d1 + 8) ceildiv 4) + 34, -((d1 + 8) ceildiv 4) + 64, d1 - (d1 + 8) ceildiv 2 + 8)>(%c11, %260)
        %268 = math.sqrt %cst_0 : f32
        %269 = math.roundeven %8 : tensor<2x2x2xf16>
        %270 = vector.broadcast %c863776175_i64 : i64 to vector<6xi64>
        %271 = vector.broadcast %false_2 : i1 to vector<6xi1>
        %272 = vector.maskedload %alloc_10[%c0, %c0, %c0], %271, %270 : memref<2x3x2xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        tensor.yield %cst_0 : f32
      } : tensor<?x?xf32>
      %alloc_40 = memref.alloc() : memref<2x2x2xi16>
      %261 = vector.broadcast %false_2 : i1 to vector<2xi1>
      %262 = vector.maskedload %alloc_7[%c1, %c3], %261, %261 : memref<3x6xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
      %263 = math.ceil %cst : f32
      %264 = index.sub %c11, %c4
      %265 = affine.min affine_map<(d0, d1) -> (d1 - 1, -(d1 - 1) - 32)>(%c3, %34)
      %266 = arith.subi %63, %63 : i1
      affine.yield %alloc : memref<2x2x2xi1>
    } else {
      %260 = vector.broadcast %c-22068_i16 : i16 to vector<2x3xi16>
      %261 = vector.broadcast %c-22068_i16 : i16 to vector<3xi16>
      %dest_40, %accumulated_value_41 = vector.scan <maxsi>, %260, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<2x3xi16>, vector<3xi16>
      %from_elements_42 = tensor.from_elements %c766409526_i64, %c1407355836_i64, %c1407355836_i64, %62, %62, %c1407355836_i64, %62, %62, %c470727290_i64, %62, %c1407355836_i64, %c470727290_i64, %c766409526_i64, %c1446786890_i64, %c1407355836_i64, %62, %62, %c1407355836_i64 : tensor<3x6xi64>
      %262 = arith.divui %c1407355836_i64, %c1446786890_i64 : i64
      %263 = index.floordivs %c4, %23
      %264 = vector.broadcast %false : i1 to vector<2xi1>
      %265 = vector.maskedload %86[%c1, %c1, %c0], %264, %101 : memref<2x2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %266 = index.sub %c8, %23
      %267 = arith.remf %cst_0, %cst_0 : f32
      %268 = arith.minf %cst_3, %cst_3 : f16
      affine.yield %alloc : memref<2x2x2xi1>
    }
    %118 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    %119 = arith.minui %c-22068_i16, %c0_i16 : i16
    %120 = math.log1p %cst_3 : f16
    %121 = arith.divui %c766409526_i64, %c863776175_i64 : i64
    %122 = math.ctlz %5 : tensor<2x2x2xi64>
    %123 = math.absi %11 : tensor<3xi16>
    %cast_27 = tensor.cast %14 : tensor<3x6xi16> to tensor<?x?xi16>
    %124 = index.divs %c11, %c9
    %125 = arith.andi %c2015512963_i32, %c2015512963_i32 : i32
    %126 = math.ceil %12 : tensor<3x6xf16>
    %127 = arith.cmpf oeq, %cst, %cst : f32
    memref.alloca_scope  {
      %260 = arith.minui %c1068268826_i32, %c1068268826_i32 : i32
      %261 = math.exp2 %10 : tensor<3xf16>
      %262 = math.floor %cst_3 : f16
      %263 = arith.shli %c2015512963_i32, %c1429938117_i32 : i32
      %264 = arith.xori %c-22068_i16, %c29478_i16 : i16
      bufferization.dealloc_tensor %8 : tensor<2x2x2xf16>
      %265 = arith.addi %c1429938117_i32, %c1429938117_i32 : i32
      %266 = math.tan %cst_1 : f32
      %267 = index.castu %c4 : index to i32
      %268 = tensor.empty() : tensor<2x3x2xf16>
      %mapped_40 = linalg.map ins(%51, %51 : memref<2x3x2xf16>, memref<2x3x2xf16>) outs(%268 : tensor<2x3x2xf16>)
        (%in: f16, %in_43: f16) {
          %290 = index.maxs %c6, %26
          %291 = vector.broadcast %cst_1 : f32 to vector<3x6xf32>
          %292 = vector.extract %82[0] : vector<3xi1>
          %293 = math.atan2 %cst_3, %in_43 : f16
          %cast_44 = tensor.cast %10 : tensor<3xf16> to tensor<?xf16>
          %294 = index.floordivs %c15, %37
          %295 = index.castu %false : i1 to index
          %296 = bufferization.clone %alloc_4 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %297 = vector.insertelement %62, %76[%c2 : index] : vector<2xi64>
          %298 = math.fma %8, %79, %8 : tensor<2x2x2xf16>
          %299 = vector.matrix_multiply %82, %82 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
          %300 = arith.maxui %62, %c1446786890_i64 : i64
          %301 = vector.splat %c-22068_i16 : vector<2x2x2xi16>
          %302 = bufferization.clone %alloc_15 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %303 = vector.broadcast %c14 : index to vector<6xindex>
          %304 = vector.broadcast %63 : i1 to vector<6xi1>
          %305 = vector.broadcast %cst : f32 to vector<6xf32>
          vector.scatter %alloc_9[%c1, %c1, %c1] [%303], %304, %305 : memref<2x3x2xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
          %306 = index.ceildivs %37, %c9
          %307 = memref.realloc %98 : memref<3xi64> to memref<6xi64>
          %308 = arith.ceildivsi %c29478_i16, %c-22068_i16 : i16
          %309 = arith.cmpi ult, %extracted, %c1429938117_i32 : i32
          %310 = math.log10 %7 : tensor<3xf16>
          %311 = vector.broadcast %c2015512963_i32 : i32 to vector<3x6xi32>
          %312 = math.expm1 %8 : tensor<2x2x2xf16>
          %313 = math.atan %cst_3 : f16
          %314 = math.log2 %79 : tensor<2x2x2xf16>
          %315 = arith.addi %c-22068_i16, %c29478_i16 : i16
          %316 = vector.splat %295 : vector<3x6xindex>
          %317 = vector.broadcast %false_2 : i1 to vector<2xi1>
          %318 = vector.maskedload %alloc[%c0, %c1, %c0], %317, %317 : memref<2x2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %319 = vector.create_mask %c9, %c4, %c6 : vector<2x3x2xi1>
          %inserted_45 = tensor.insert %c0_i16 into %14[%c1, %c0] : tensor<3x6xi16>
          %320 = math.absf %268 : tensor<2x3x2xf16>
          %321 = arith.andi %c1429938117_i32, %extracted : i32
          %true_46 = index.bool.constant true
          %cst_47 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_47 : f16
        }
      %269 = math.log10 %12 : tensor<3x6xf16>
      %270 = arith.minui %extracted, %c1068268826_i32 : i32
      %271 = math.rsqrt %12 : tensor<3x6xf16>
      %splat_41 = tensor.splat %cst : tensor<3x6xf32>
      %extracted_42 = tensor.extract %73[%c1, %c1] : tensor<3x2xi64>
      %272 = arith.remf %47, %cst : f32
      %273 = index.ceildivu %c3, %c8
      %274 = vector.reduction <mul>, %118 : vector<1xi64> into i64
      %275 = memref.load %alloc_4[%c0, %c1, %c0] : memref<2x3x2xi64>
      %276 = math.sqrt %cst_3 : f16
      %277 = vector.broadcast %c2015512963_i32 : i32 to vector<3xi32>
      vector.transfer_write %277, %alloc_13[%37, %34, %34] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xi32>, memref<2x2x2xi32>
      %278 = bufferization.clone %86 : memref<2x2x2xi64> to memref<2x2x2xi64>
      %279 = math.atan2 %4, %4 : tensor<2x2x2xf32>
      %280 = arith.minf %cst, %47 : f32
      %281 = math.ipowi %splat, %3 : tensor<2x2x2xi32>
      %282 = index.floordivs %22, %26
      %283 = math.fma %cst_1, %cst_1, %cst_0 : f32
      %284 = vector.broadcast %c863776175_i64 : i64 to vector<i64>
      %285 = vector.transfer_write %284, %17[%c15] : vector<i64>, tensor<3xi64>
      %286 = math.tan %8 : tensor<2x2x2xf16>
      %287 = arith.cmpi sge, %c1407355836_i64, %c766409526_i64 : i64
      %288 = index.ceildivs %c13, %56
      %289 = vector.load %alloc_11[%c0, %c1, %c1] : memref<2x3x2xf16>, vector<3x6xf16>
    }
    %128 = math.log %79 : tensor<2x2x2xf16>
    %extracted_28 = tensor.extract %0[%c1, %c0, %c0] : tensor<2x2x2xi1>
    %129 = math.ceil %12 : tensor<3x6xf16>
    %from_elements_29 = tensor.from_elements %c1068268826_i32, %extracted, %extracted : tensor<3xi32>
    %130 = memref.load %54[%c1, %c2, %c1] : memref<2x3x2xi64>
    memref.alloca_scope  {
      %260 = math.absf %4 : tensor<2x2x2xf32>
      %261 = index.mul %34, %c1
      %262 = arith.cmpi uge, %c1429938117_i32, %c1068268826_i32 : i32
      %263 = bufferization.clone %alloc_19 : memref<3xi32> to memref<3xi32>
      %264 = vector.transpose %95, [0] : vector<1xi64> to vector<1xi64>
      %265 = scf.execute_region -> f32 {
        %292 = arith.cmpi uge, %c-22068_i16, %c-22068_i16 : i16
        %inserted_43 = tensor.insert %c863776175_i64 into %5[%c0, %c1, %c0] : tensor<2x2x2xi64>
        %293 = index.mul %c4, %68
        %294 = math.cos %12 : tensor<3x6xf16>
        %true_44 = index.bool.constant true
        %295 = math.absi %6 : tensor<2x2x2xi32>
        %296 = affine.min affine_map<(d0, d1, d2) -> ((d1 - 128) ceildiv 4, d1 * -2, d2 mod 4)>(%22, %22, %c11)
        %297 = math.exp %8 : tensor<2x2x2xf16>
        %298 = math.ceil %79 : tensor<2x2x2xf16>
        %299 = arith.andi %false, %true_44 : i1
        %300 = math.cos %7 : tensor<3xf16>
        %301 = index.casts %c11 : index to i32
        %302 = vector.multi_reduction <or>, %82, %82 [] : vector<3xi1> to vector<3xi1>
        %303 = affine.max affine_map<(d0, d1, d2) -> (d2 * -8 + d0, d0 * 64 + 28)>(%c7, %c13, %37)
        %304 = memref.load %alloc_8[%c0] : memref<3xi16>
        %305 = math.ipowi %c1446786890_i64, %c1446786890_i64 : i64
        scf.yield %cst_0 : f32
      }
      %266 = arith.minf %47, %47 : f32
      %267 = arith.cmpf ult, %47, %cst : f32
      %268 = vector.transpose %28, [0] : vector<2xi64> to vector<2xi64>
      %269 = math.atan2 %10, %7 : tensor<3xf16>
      %270 = bufferization.to_memref %splat_26 : memref<2x2x2xi1>
      %271 = vector.broadcast %extracted_28 : i1 to vector<2x2xi1>
      %272 = vector.broadcast %false : i1 to vector<2xi1>
      %dest_40, %accumulated_value_41 = vector.scan <minsi>, %271, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
      %273 = memref.atomic_rmw maxf %cst_3, %alloc_6[%c0, %c4] : (f16, memref<3x6xf16>) -> f16
      %274 = vector.broadcast %c863776175_i64 : i64 to vector<3x6xi64>
      vector.transfer_write %274, %86[%c2, %26, %22] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x6xi64>, memref<2x2x2xi64>
      %275 = arith.cmpi ule, %c1446786890_i64, %c766409526_i64 : i64
      %276 = arith.maxsi %c-22068_i16, %c29478_i16 : i16
      %277 = math.copysign %4, %4 : tensor<2x2x2xf32>
      vector.print %118 : vector<1xi64>
      %278 = vector.broadcast %c766409526_i64 : i64 to vector<3xi64>
      %279 = vector.maskedload %alloc_10[%c1, %c2, %c0], %82, %278 : memref<2x3x2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %280 = arith.cmpf ule, %cst_0, %47 : f32
      %281 = math.ctlz %62 : i64
      %282 = math.atan2 %12, %12 : tensor<3x6xf16>
      %283 = index.sizeof
      %284 = vector.create_mask %c12 : vector<3xi1>
      %inserted_42 = tensor.insert %cst_3 into %7[%c2] : tensor<3xf16>
      %285 = math.atan2 %cst_0, %265 : f32
      %286 = math.powf %7, %7 : tensor<3xf16>
      %287 = vector.splat %56 : vector<2x3x2xindex>
      %288 = bufferization.clone %alloc_10 : memref<2x3x2xi64> to memref<2x3x2xi64>
      %289 = bufferization.clone %alloc_9 : memref<2x3x2xf32> to memref<2x3x2xf32>
      %290 = arith.maxui %c2015512963_i32, %c2015512963_i32 : i32
      %291 = vector.insert %c766409526_i64, %279 [1] : i64 into vector<3xi64>
    }
    %131 = vector.broadcast %c766409526_i64 : i64 to vector<6xi64>
    %132 = vector.broadcast %false : i1 to vector<6xi1>
    %133 = vector.maskedload %86[%c0, %c1, %c1], %132, %131 : memref<2x2x2xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %134 = arith.subi %c863776175_i64, %c766409526_i64 : i64
    %135 = vector.create_mask %c10, %22, %34 : vector<2x3x2xi1>
    %136 = tensor.empty() : tensor<2x2x2xi1>
    %mapped = linalg.map ins(%0 : tensor<2x2x2xi1>) outs(%136 : tensor<2x2x2xi1>)
      (%in: i1) {
        %260 = math.round %from_elements : tensor<3xf32>
        %261 = arith.minui %extracted, %extracted : i32
        %262 = memref.atomic_rmw assign %cst_3, %alloc_16[%c0, %c1, %c0] : (f16, memref<2x2x2xf16>) -> f16
        %263 = vector.extract_strided_slice %95 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %264 = arith.andi %c1429938117_i32, %c1068268826_i32 : i32
        %265 = affine.if affine_set<(d0, d1, d2) : (d1 + 1 == 0, 0 == 0)>(%c0, %c0, %c15) -> memref<2x2x2xi64> {
          %inserted_49 = tensor.insert %c0_i16 into %11[%c2] : tensor<3xi16>
          %splat_50 = tensor.splat %c2015512963_i32 : tensor<3x6xi32>
          %extracted_51 = tensor.extract %from_elements[%c1] : tensor<3xf32>
          %290 = vector.broadcast %c6 : index to vector<2xindex>
          %291 = vector.broadcast %extracted_28 : i1 to vector<2xi1>
          %292 = vector.broadcast %cst_3 : f16 to vector<2xf16>
          vector.scatter %51[%c1, %c0, %c0] [%290], %291, %292 : memref<2x3x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
          vector.print %131 : vector<6xi64>
          %293 = arith.minsi %c1446786890_i64, %c1446786890_i64 : i64
          %294 = index.sizeof
          %295 = arith.cmpf ogt, %extracted_51, %cst_0 : f32
          affine.yield %alloc_5 : memref<2x2x2xi64>
        } else {
          %290 = vector.broadcast %cst_3 : f16 to vector<2xf16>
          %291 = vector.broadcast %false_2 : i1 to vector<2xi1>
          %292 = vector.maskedload %alloc_6[%c2, %c4], %291, %290 : memref<3x6xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %293 = arith.ceildivsi %c1429938117_i32, %c1429938117_i32 : i32
          %294 = vector.insert %c470727290_i64, %118 [0] : i64 into vector<1xi64>
          %295 = math.ctpop %c1407355836_i64 : i64
          %296 = arith.shli %62, %c470727290_i64 : i64
          %297 = math.absf %10 : tensor<3xf16>
          %alloc_49 = memref.alloc() : memref<2xi16>
          memref.tensor_store %reduced, %alloc_49 : memref<2xi16>
          memref.assume_alignment %alloc_16, 1 : memref<2x2x2xf16>
          affine.yield %alloc_5 : memref<2x2x2xi64>
        }
        %266 = arith.maxui %false_2, %false : i1
        %267 = index.floordivs %rank, %c11
        %268 = index.castu %c1429938117_i32 : i32 to index
        %269 = memref.atomic_rmw addi %62, %86[%c0, %c1, %c1] : (i64, memref<2x2x2xi64>) -> i64
        %270 = index.castu %c9 : index to i32
        %collapsed_40 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<2x2x2xi32> into tensor<4x2xi32>
        %271 = math.expm1 %4 : tensor<2x2x2xf32>
        %272 = arith.divf %cst_3, %cst_3 : f16
        %273 = math.ctpop %extracted_28 : i1
        %274 = arith.maxui %c0_i16, %c29478_i16 : i16
        %275 = math.cttz %14 : tensor<3x6xi16>
        %276 = vector.load %alloc_12[%c1, %c0] : memref<3x6xi1>, vector<3xi1>
        %from_elements_41 = tensor.from_elements %c766409526_i64, %c470727290_i64, %c1407355836_i64, %c1446786890_i64, %c1407355836_i64, %c1446786890_i64, %c1446786890_i64, %c1446786890_i64, %c766409526_i64, %c470727290_i64, %c1446786890_i64, %c1407355836_i64 : tensor<2x3x2xi64>
        %277 = arith.addi %c470727290_i64, %c470727290_i64 : i64
        %278 = math.tanh %7 : tensor<3xf16>
        %279 = math.log %79 : tensor<2x2x2xf16>
        %280 = bufferization.to_memref %cast : memref<?x?x?xf32>
        %281 = math.tan %79 : tensor<2x2x2xf16>
        %282 = vector.broadcast %extracted_28 : i1 to vector<2x3xi1>
        %dest_42, %accumulated_value_43 = vector.scan <and>, %135, %282 {inclusive = false, reduction_dim = 2 : i64} : vector<2x3x2xi1>, vector<2x3xi1>
        %283 = vector.broadcast %false : i1 to vector<3x2xi1>
        %dest_44, %accumulated_value_45 = vector.scan <minui>, %135, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<2x3x2xi1>, vector<3x2xi1>
        %284 = vector.bitcast %28 : vector<2xi64> to vector<2xi64>
        affine.for %arg3 = 0 to 10 {
        }
        %285 = math.round %7 : tensor<3xf16>
        %286 = vector.broadcast %47 : f32 to vector<3x6xf32>
        %287 = vector.fma %286, %286, %286 : vector<3x6xf32>
        %288 = arith.minui %c2015512963_i32, %c2015512963_i32 : i32
        %289 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %287, %289 {inclusive = false, reduction_dim = 1 : i64} : vector<3x6xf32>, vector<3xf32>
        %true_48 = arith.constant true
        linalg.yield %true_48 : i1
      }
    %137 = math.tanh %cst_3 : f16
    %138 = index.casts %c1446786890_i64 : i64 to index
    %139 = vector.create_mask %c8 : vector<3xi1>
    %140 = bufferization.clone %alloc_18 : memref<3x6xf32> to memref<3x6xf32>
    %141 = math.sqrt %79 : tensor<2x2x2xf16>
    %142 = vector.matrix_multiply %133, %101 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<6xi64>, vector<2xi64>) -> vector<3xi64>
    %143 = vector.shuffle %118, %19 [0, 1] : vector<1xi64>, vector<2xi64>
    %144 = arith.shli %extracted, %c1068268826_i32 : i32
    %145 = arith.maxsi %63, %false_2 : i1
    %146 = vector.create_mask %68 : vector<3xi1>
    %147 = arith.minui %c470727290_i64, %c863776175_i64 : i64
    %148 = arith.minsi %c1068268826_i32, %extracted : i32
    %149 = index.mul %c11, %34
    %150 = affine.for %arg3 = 0 to 71 iter_args(%arg4 = %9) -> (tensor<3x6xi64>) {
      affine.yield %9 : tensor<3x6xi64>
    }
    %151 = math.tan %cst_0 : f32
    %152 = arith.mulf %cst, %cst : f32
    %153 = arith.remsi %c29478_i16, %c-22068_i16 : i16
    %154 = affine.apply affine_map<(d0) -> (-(d0 mod 16 + 64))>(%23)
    %155 = affine.for %arg3 = 0 to 98 iter_args(%arg4 = %c0_i16) -> (i16) {
      affine.yield %c-22068_i16 : i16
    }
    %156 = affine.if affine_set<(d0) : (0 == 0, (-(d0 + d0 + 32 - 8) - (d0 + 32)) mod 128 == 0, (d0 - 8) floordiv 128 >= 0)>(%c5) -> f32 {
      %collapsed_40 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<2x2x2xi32> into tensor<4x2xi32>
      %260 = math.absf %10 : tensor<3xf16>
      %261 = arith.maxui %c1068268826_i32, %c1429938117_i32 : i32
      %262 = arith.divui %c29478_i16, %c29478_i16 : i16
      %263 = math.rsqrt %8 : tensor<2x2x2xf16>
      %264 = math.ctlz %c0_i16 : i16
      vector.print %132 : vector<6xi1>
      %265 = arith.shli %c1068268826_i32, %extracted : i32
      affine.yield %cst : f32
    } else {
      %260 = scf.if %false_2 -> (i16) {
        %267 = math.ipowi %c470727290_i64, %62 : i64
        memref.assume_alignment %alloc_20, 2 : memref<3xi16>
        %inserted_41 = tensor.insert %cst_3 into %7[%c2] : tensor<3xf16>
        %268 = arith.xori %c0_i16, %c0_i16 : i16
        %269 = vector.broadcast %c2015512963_i32 : i32 to vector<2xi32>
        %270 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %271 = vector.maskedload %alloc_19[%c0], %270, %269 : memref<3xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %extracted_42 = tensor.extract %73[%c2, %c1] : tensor<3x2xi64>
        %272 = math.ceil %12 : tensor<3x6xf16>
        %rank_43 = tensor.rank %5 : tensor<2x2x2xi64>
        scf.yield %c29478_i16 : i16
      } else {
        %267 = math.ctpop %5 : tensor<2x2x2xi64>
        %268 = math.sqrt %8 : tensor<2x2x2xf16>
        %269 = math.atan2 %10, %10 : tensor<3xf16>
        %270 = math.log1p %10 : tensor<3xf16>
        memref.store %cst, %75[%c1, %c1, %c0] : memref<2x3x2xf32>
        %271 = arith.andi %c2015512963_i32, %c1068268826_i32 : i32
        %splat_41 = tensor.splat %cst_0 : tensor<2x3x2xf32>
        %272 = vector.broadcast %c1446786890_i64 : i64 to vector<1x1xi64>
        %273 = vector.outerproduct %118, %118, %272 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
        scf.yield %c0_i16 : i16
      }
      %261 = memref.atomic_rmw addf %cst, %alloc_18[%c0, %c0] : (f32, memref<3x6xf32>) -> f32
      memref.copy %alloc_19, %alloc_17 : memref<3xi32> to memref<3xi32>
      bufferization.dealloc_tensor %6 : tensor<2x2x2xi32>
      %262 = math.cos %10 : tensor<3xf16>
      %263 = math.log2 %from_elements : tensor<3xf32>
      %alloc_40 = memref.alloc() : memref<6x3xi16>
      %264 = tensor.empty() : tensor<3x3xi16>
      %265 = linalg.matmul ins(%14, %alloc_40 : tensor<3x6xi16>, memref<6x3xi16>) outs(%264 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %266 = arith.minsi %c1068268826_i32, %extracted : i32
      affine.yield %cst : f32
    }
    %157 = math.cos %10 : tensor<3xf16>
    %158 = memref.load %60[%c1, %c0, %c0] : memref<2x2x2xi16>
    %extracted_30 = tensor.extract %11[%c0] : tensor<3xi16>
    %159 = vector.insert %63, %146 [1] : i1 into vector<3xi1>
    %160 = math.fma %47, %cst_0, %47 : f32
    %161 = math.cttz %9 : tensor<3x6xi64>
    %162 = math.log10 %10 : tensor<3xf16>
    %163 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %164 = vector.maskedload %75[%c1, %c2, %c1], %146, %163 : memref<2x3x2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
    %cst_31 = arith.constant 0x4D649543 : f32
    %165 = arith.muli %c-22068_i16, %c0_i16 : i16
    %166 = math.tan %10 : tensor<3xf16>
    %167 = index.mul %c8, %c10
    %168 = arith.andi %c1446786890_i64, %c863776175_i64 : i64
    %169 = index.divs %22, %c15
    %170 = arith.muli %c29478_i16, %c-22068_i16 : i16
    %171 = index.mul %c1, %124
    %172 = math.atan %cst_0 : f32
    %alloc_32 = memref.alloc() : memref<2xi16>
    memref.tensor_store %18, %alloc_32 : memref<2xi16>
    %173 = arith.shli %62, %c1446786890_i64 : i64
    %174 = arith.divf %47, %cst : f32
    %175 = index.mul %rank, %22
    %176 = index.floordivs %c14, %22
    %177 = math.log10 %8 : tensor<2x2x2xf16>
    %178 = math.ctpop %62 : i64
    %179 = math.fma %8, %8, %8 : tensor<2x2x2xf16>
    %cast_33 = tensor.cast %102 : tensor<3xi16> to tensor<?xi16>
    %180 = arith.subi %extracted_28, %false : i1
    %181 = vector.broadcast %63 : i1 to vector<2x2xi1>
    %dest_34, %accumulated_value_35 = vector.scan <xor>, %135, %181 {inclusive = false, reduction_dim = 1 : i64} : vector<2x3x2xi1>, vector<2x2xi1>
    %182 = math.expm1 %from_elements : tensor<3xf32>
    %183 = arith.xori %false_2, %extracted_28 : i1
    %184 = math.cos %10 : tensor<3xf16>
    %185 = tensor.empty() : tensor<2xi32>
    %186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%185, %185, %3 : tensor<2xi32>, tensor<2xi32>, tensor<2x2x2xi32>) outs(%splat : tensor<2x2x2xi32>) {
    ^bb0(%in: i32, %in_40: i32, %in_41: i32, %out: i32):
      %260 = math.log2 %7 : tensor<3xf16>
      %261 = vector.broadcast %c8 : index to vector<6xindex>
      vector.scatter %alloc_15[%c1, %c2, %c0] [%261], %132, %131 : memref<2x3x2xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
      %262 = arith.minf %cst_3, %cst_3 : f16
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat_26 : tensor<2x2x2xi1>) outs(%136 : tensor<2x2x2xi1>) {
      ^bb0(%in_50: i1, %out_51: i1):
        %286 = bufferization.clone %51 : memref<2x3x2xf16> to memref<2x3x2xf16>
        vector.print %101 : vector<2xi64>
        %287 = math.cttz %c-22068_i16 : i16
        %288 = arith.remf %47, %47 : f32
        %289 = tensor.empty() : tensor<2x2x2xf16>
        %290 = math.tanh %79 : tensor<2x2x2xf16>
        %291 = vector.broadcast %47 : f32 to vector<3xf32>
        %292 = memref.atomic_rmw andi %62, %86[%c0, %c0, %c1] : (i64, memref<2x2x2xi64>) -> i64
        %293 = arith.ori %in_41, %c1429938117_i32 : i32
        %splat_52 = tensor.splat %cst_3 : tensor<2x3x2xf16>
        %294 = vector.shuffle %132, %132 [0, 2, 3, 4, 5, 8] : vector<6xi1>, vector<6xi1>
        %295 = math.cttz %3 : tensor<2x2x2xi32>
        %296 = tensor.empty() : tensor<3xi32>
        %297 = math.absf %8 : tensor<2x2x2xf16>
        %298 = math.expm1 %8 : tensor<2x2x2xf16>
        %c410976664_i32 = arith.constant 410976664 : i32
        %299 = memref.realloc %alloc_8 : memref<3xi16> to memref<2xi16>
        %300 = math.absi %out : i32
        %301 = bufferization.to_memref %12 : memref<3x6xf16>
        %302 = vector.broadcast %c470727290_i64 : i64 to vector<6x6xi64>
        %303 = vector.outerproduct %131, %133, %302 {kind = #vector.kind<add>} : vector<6xi64>, vector<6xi64>
        %304 = math.expm1 %cst_0 : f32
        %305 = index.ceildivu %c7, %169
        %306 = vector.broadcast %out_51 : i1 to vector<2x3xi1>
        %dest_53, %accumulated_value_54 = vector.scan <or>, %135, %306 {inclusive = false, reduction_dim = 2 : i64} : vector<2x3x2xi1>, vector<2x3xi1>
        %307 = index.castu %c8 : index to i32
        %308 = index.maxu %56, %26
        %309 = math.cttz %11 : tensor<3xi16>
        %extracted_55 = tensor.extract %10[%c2] : tensor<3xf16>
        %310 = math.log %extracted_55 : f16
        %311 = math.log1p %splat_52 : tensor<2x3x2xf16>
        %312 = tensor.empty() : tensor<6x2xi64>
        %313 = tensor.empty() : tensor<3x2xi64>
        %314 = linalg.matmul ins(%9, %312 : tensor<3x6xi64>, tensor<6x2xi64>) outs(%313 : tensor<3x2xi64>) -> tensor<3x2xi64>
        %315 = arith.remsi %c863776175_i64, %c863776175_i64 : i64
        %316 = vector.broadcast %out_51 : i1 to vector<2x2xi1>
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %135, %316 {inclusive = true, reduction_dim = 1 : i64} : vector<2x3x2xi1>, vector<2x2xi1>
        linalg.yield %extracted_28 : i1
      } -> tensor<2x2x2xi1>
      %264 = affine.for %arg3 = 0 to 82 iter_args(%arg4 = %51) -> (memref<2x3x2xf16>) {
        affine.yield %51 : memref<2x3x2xf16>
      }
      %false_42 = index.bool.constant false
      %265 = math.atan2 %79, %79 : tensor<2x2x2xf16>
      %266 = math.tanh %47 : f32
      %267 = math.absf %79 : tensor<2x2x2xf16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %4 : tensor<2x2x2xf32>, tensor<2x2x2xf32>) outs(%4 : tensor<2x2x2xf32>) {
      ^bb0(%in_50: f32, %in_51: f32, %out_52: f32):
        %286 = math.ctpop %c1407355836_i64 : i64
        vector.print %133 : vector<6xi64>
        %287 = index.mul %c12, %149
        %288 = tensor.empty() : tensor<2x2xi64>
        %289 = tensor.empty() : tensor<4x2xi64>
        %290 = linalg.matmul ins(%collapsed, %288 : tensor<4x2xi64>, tensor<2x2xi64>) outs(%289 : tensor<4x2xi64>) -> tensor<4x2xi64>
        %291 = math.absf %4 : tensor<2x2x2xf32>
        %292 = vector.bitcast %164 : vector<3xf32> to vector<3xf32>
        %293 = vector.broadcast %extracted_28 : i1 to vector<2x2xi1>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %135, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<2x3x2xi1>, vector<2x2xi1>
        %inserted_55 = tensor.insert %cst_3 into %79[%c1, %c0, %c1] : tensor<2x2x2xf16>
        %inserted_56 = tensor.insert %extracted_28 into %splat_26[%c1, %c0, %c0] : tensor<2x2x2xi1>
        %cst_57 = arith.constant 5.033600e+04 : f16
        %294 = arith.remsi %c2015512963_i32, %c1068268826_i32 : i32
        %295 = vector.broadcast %in_51 : f32 to vector<2xf32>
        %296 = vector.broadcast %false_42 : i1 to vector<2xi1>
        %297 = vector.maskedload %alloc_9[%c0, %c2, %c0], %296, %295 : memref<2x3x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %298 = bufferization.clone %75 : memref<2x3x2xf32> to memref<2x3x2xf32>
        %299 = arith.addi %c0_i16, %extracted_30 : i16
        %300 = index.maxu %c11, %23
        %301 = vector.splat %cst_0 : vector<2x2x2xf32>
        bufferization.dealloc_tensor %cast_25 : tensor<?xi16>
        %alloca = memref.alloca() : memref<2x2x2xi32>
        %302 = bufferization.to_memref %0 : memref<2x2x2xi1>
        %303 = arith.remui %in_41, %in : i32
        %304 = bufferization.clone %alloc_11 : memref<2x3x2xf16> to memref<2x3x2xf16>
        %inserted_58 = tensor.insert %out_52 into %4[%c1, %c0, %c0] : tensor<2x2x2xf32>
        %305 = memref.atomic_rmw addf %cst_3, %alloc_16[%c0, %c1, %c0] : (f16, memref<2x2x2xf16>) -> f16
        %cast_59 = tensor.cast %2 : tensor<3xi64> to tensor<?xi64>
        %306 = vector.multi_reduction <minsi>, %82, %false [0] : vector<3xi1> to i1
        %307 = vector.insertelement %out_52, %163[%c2 : index] : vector<3xf32>
        %308 = arith.floordivsi %c29478_i16, %c0_i16 : i16
        %309 = math.fpowi %cst, %out : f32, i32
        %310 = index.sub %26, %138
        %311 = affine.load %alloc_6[%c3, %c3] : memref<3x6xf16>
        %312 = index.sizeof
        %313 = arith.divui %306, %false_2 : i1
        linalg.yield %cst : f32
      } -> tensor<2x2x2xf32>
      %269 = memref.alloca_scope  -> (f32) {
        %rank_50 = tensor.rank %6 : tensor<2x2x2xi32>
        %286 = arith.muli %extracted_28, %false_42 : i1
        %287 = arith.subi %in, %in_40 : i32
        %from_elements_51 = tensor.from_elements %extracted_30, %extracted_30, %c0_i16 : tensor<3xi16>
        %cast_52 = tensor.cast %from_elements : tensor<3xf32> to tensor<?xf32>
        %cst_53 = arith.constant 1.575200e+04 : f16
        vector.print %146 : vector<3xi1>
        %288 = index.divu %175, %c3
        %289 = arith.minsi %c1429938117_i32, %in : i32
        %290 = tensor.empty() : tensor<2x2x2xi64>
        %291 = vector.broadcast %false_42 : i1 to vector<2x2xi1>
        %dest_54, %accumulated_value_55 = vector.scan <maxui>, %135, %291 {inclusive = true, reduction_dim = 1 : i64} : vector<2x3x2xi1>, vector<2x2xi1>
        %292 = math.cos %cst_1 : f32
        %293 = vector.broadcast %false_2 : i1 to vector<3x2xi1>
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %135, %293 {inclusive = false, reduction_dim = 0 : i64} : vector<2x3x2xi1>, vector<3x2xi1>
        %294 = vector.broadcast %c6 : index to vector<6xindex>
        vector.scatter %54[%c1, %c1, %c1] [%294], %132, %131 : memref<2x3x2xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %295 = math.expm1 %47 : f32
        %alloc_58 = memref.alloc() : memref<3x6xi16>
        %296 = arith.minsi %c863776175_i64, %c1446786890_i64 : i64
        %297 = arith.minf %cst, %cst_1 : f32
        %alloc_59 = memref.alloc() : memref<2x3x2xi16>
        memref.tensor_store %1, %alloc_59 : memref<2x3x2xi16>
        %298 = arith.remsi %c-22068_i16, %c-22068_i16 : i16
        %299 = bufferization.to_memref %136 : memref<2x2x2xi1>
        %300 = vector.extract_strided_slice %28 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
        %301 = math.absi %collapsed : tensor<4x2xi64>
        %extracted_60 = tensor.extract %cast[%c0, %c0, %c0] : tensor<?x?x?xf32>
        %302 = arith.andi %extracted_28, %false_42 : i1
        %303 = math.atan2 %12, %12 : tensor<3x6xf16>
        %extracted_61 = tensor.extract %9[%c0, %c3] : tensor<3x6xi64>
        %304 = math.expm1 %7 : tensor<3xf16>
        %305 = math.exp %10 : tensor<3xf16>
        %306 = arith.remsi %extracted_61, %62 : i64
        %expanded_62 = tensor.expand_shape %10 [[0, 1]] : tensor<3xf16> into tensor<3x1xf16>
        %307 = math.expm1 %7 : tensor<3xf16>
        memref.alloca_scope.return %cst_1 : f32
      }
      %270 = math.atan %cst_1 : f32
      %271 = bufferization.to_memref %3 : memref<2x2x2xi32>
      %272 = math.atan %8 : tensor<2x2x2xf16>
      %273 = vector.broadcast %cst_3 : f16 to vector<2xf16>
      %274 = vector.broadcast %false : i1 to vector<2xi1>
      %275 = vector.maskedload %51[%c1, %c0, %c1], %274, %273 : memref<2x3x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %true_43 = arith.constant true
      %276 = tensor.empty(%rank) : tensor<?xf16>
      %cast_44 = tensor.cast %0 : tensor<2x2x2xi1> to tensor<?x?x?xi1>
      %alloc_45 = memref.alloc() : memref<2x2x2xf32>
      memref.tensor_store %4, %alloc_45 : memref<2x2x2xf32>
      %277 = math.sqrt %47 : f32
      %278 = affine.apply affine_map<(d0, d1) -> ((d0 * -127) floordiv 2)>(%c8, %c14)
      %279 = index.ceildivs %26, %c2
      %280 = math.round %79 : tensor<2x2x2xf16>
      %inserted_46 = tensor.insert %in_40 into %from_elements_29[%c0] : tensor<3xi32>
      %281 = arith.andi %false_42, %false_42 : i1
      %cast_47 = tensor.cast %12 : tensor<3x6xf16> to tensor<?x?xf16>
      %282 = vector.splat %279 : vector<3x6xindex>
      %splat_48 = tensor.splat %c-22068_i16 : tensor<3xi16>
      %283 = arith.shli %in_41, %in : i32
      %284 = math.tan %from_elements : tensor<3xf32>
      %285 = index.maxu %171, %56
      %from_elements_49 = tensor.from_elements %cst_3, %cst_3, %cst_3 : tensor<3xf16>
      linalg.yield %out : i32
    } -> tensor<2x2x2xi32>
    %187 = math.sqrt %8 : tensor<2x2x2xf16>
    %188 = vector.create_mask %154 : vector<3xi1>
    %189 = vector.insertelement %62, %131[%138 : index] : vector<6xi64>
    %190 = arith.shli %extracted_30, %extracted_30 : i16
    %191 = scf.if %extracted_28 -> (memref<2x3x2xf16>) {
      %260 = arith.remf %cst_3, %cst_3 : f16
      %261 = vector.broadcast %37 : index to vector<2xindex>
      %262 = vector.broadcast %false_2 : i1 to vector<2xi1>
      %263 = vector.broadcast %cst : f32 to vector<2xf32>
      vector.scatter %140[%c1, %c5] [%261], %262, %263 : memref<3x6xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %264 = index.sub %c12, %68
      %265 = math.atan %47 : f32
      %266 = affine.for %arg3 = 0 to 121 iter_args(%arg4 = %17) -> (tensor<3xi64>) {
        affine.yield %17 : tensor<3xi64>
      }
      %267 = memref.load %alloc_4[%c0, %c0, %c1] : memref<2x3x2xi64>
      %rank_40 = tensor.rank %8 : tensor<2x2x2xf16>
      %268 = index.maxu %23, %138
      scf.yield %alloc_11 : memref<2x3x2xf16>
    } else {
      %260 = arith.remf %cst_0, %cst : f32
      %splat_40 = tensor.splat %c1446786890_i64 : tensor<2x3x2xi64>
      %alloc_41 = memref.alloc() : memref<2x2x2xi32>
      memref.copy %alloc_13, %alloc_41 : memref<2x2x2xi32> to memref<2x2x2xi32>
      %261 = arith.subi %c-22068_i16, %c-22068_i16 : i16
      %262 = math.round %7 : tensor<3xf16>
      %263 = math.sqrt %4 : tensor<2x2x2xf32>
      %264 = arith.remf %47, %cst_0 : f32
      %265 = math.sqrt %8 : tensor<2x2x2xf16>
      scf.yield %alloc_11 : memref<2x3x2xf16>
    }
    %192 = math.log2 %4 : tensor<2x2x2xf32>
    %193 = math.cos %10 : tensor<3xf16>
    %194 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18 : tensor<2xi16>) outs(%1 : tensor<2x3x2xi16>) {
    ^bb0(%in: i16, %out: i16):
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_40 = arith.constant 0 : i16
      %260 = vector.transfer_read %11[%124], %c0_i16_40 : tensor<3xi16>, vector<i16>
      %261 = vector.insert %62, %28 [1] : i64 into vector<2xi64>
      %262 = index.maxs %23, %22
      %263 = arith.maxui %c766409526_i64, %c1446786890_i64 : i64
      %264 = arith.andi %c2015512963_i32, %c1068268826_i32 : i32
      %265 = math.log10 %79 : tensor<2x2x2xf16>
      %266 = tensor.empty() : tensor<6x6xf16>
      %267 = tensor.empty() : tensor<3x6xf16>
      %268 = linalg.matmul ins(%12, %266 : tensor<3x6xf16>, tensor<6x6xf16>) outs(%267 : tensor<3x6xf16>) -> tensor<3x6xf16>
      %269 = bufferization.to_memref %13 : memref<2x3x2xi16>
      %270 = math.tan %12 : tensor<3x6xf16>
      %alloc_41 = memref.alloc() : memref<2x3x2xi16>
      %271 = arith.maxui %out, %c0_i16 : i16
      memref.assume_alignment %alloc_5, 8 : memref<2x2x2xi64>
      %272 = arith.cmpi ugt, %c1407355836_i64, %c1407355836_i64 : i64
      %273 = math.ceil %cst_0 : f32
      %274 = vector.broadcast %extracted_28 : i1 to vector<2x3xi1>
      %dest_42, %accumulated_value_43 = vector.scan <maxsi>, %135, %274 {inclusive = true, reduction_dim = 2 : i64} : vector<2x3x2xi1>, vector<2x3xi1>
      vector.print %164 : vector<3xf32>
      %extracted_44 = tensor.extract %5[%c1, %c1, %c1] : tensor<2x2x2xi64>
      %275 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, d2 * 32 == 0, d3 ceildiv 8 - 15 == 0, (d3 ceildiv 8) mod 64 >= 0)>(%c10, %c12, %c7, %c13) -> i32 {
        %290 = arith.shli %c29478_i16, %in : i16
        %291 = tensor.empty(%37) : tensor<?xf16>
        %292 = memref.realloc %98 : memref<3xi64> to memref<2xi64>
        %inserted_45 = tensor.insert %c1_i16 into %20[] : tensor<i16>
        %293 = math.rsqrt %10 : tensor<3xf16>
        %294 = arith.subi %c1068268826_i32, %c1068268826_i32 : i32
        %295 = vector.broadcast %63 : i1 to vector<3x2xi1>
        %dest_46, %accumulated_value_47 = vector.scan <maxui>, %135, %295 {inclusive = true, reduction_dim = 0 : i64} : vector<2x3x2xi1>, vector<3x2xi1>
        %296 = vector.reduction <add>, %131 : vector<6xi64> into i64
        affine.yield %c1429938117_i32 : i32
      } else {
        %collapsed_45 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<2x2x2xi1> into tensor<4x2xi1>
        %290 = vector.extract %142[2] : vector<3xi64>
        %291 = math.absi %extracted_44 : i64
        %292 = bufferization.to_tensor %60 : memref<2x2x2xi16>
        %splat_46 = tensor.splat %cst : tensor<3x6xf32>
        %293 = arith.minui %c2015512963_i32, %extracted : i32
        %294 = vector.matrix_multiply %101, %41 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
        %295 = memref.realloc %alloc_8 : memref<3xi16> to memref<3xi16>
        affine.yield %c2015512963_i32 : i32
      }
      %276 = affine.max affine_map<(d0, d1) -> (-(d1 * 16 + 4))>(%c10, %c8)
      memref.assume_alignment %51, 16 : memref<2x3x2xf16>
      %277 = index.castu %out : i16 to index
      %278 = math.sqrt %267 : tensor<3x6xf16>
      %279 = arith.shli %c2015512963_i32, %c1429938117_i32 : i32
      %280 = math.floor %cst_1 : f32
      %281 = math.tan %from_elements : tensor<3xf32>
      %282 = math.rsqrt %12 : tensor<3x6xf16>
      %283 = memref.load %191[%c0, %c2, %c1] : memref<2x3x2xf16>
      %284 = math.tan %79 : tensor<2x2x2xf16>
      %285 = vector.broadcast %175 : index to vector<3xindex>
      %286 = vector.broadcast %cst_3 : f16 to vector<3xf16>
      vector.scatter %alloc_14[%c0, %c2, %c1] [%285], %82, %286 : memref<2x3x2xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %287 = math.ctlz %c863776175_i64 : i64
      %288 = index.divs %171, %c12
      %289 = tensor.empty() : tensor<3xi32>
      linalg.yield %extracted_30 : i16
    } -> tensor<2x3x2xi16>
    memref.tensor_store %16, %98 : memref<3xi64>
    %195 = vector.transpose %41, [0] : vector<2xi64> to vector<2xi64>
    %196 = vector.shuffle %19, %101 [0, 2] : vector<2xi64>, vector<2xi64>
    %197 = index.sizeof
    %198 = math.roundeven %12 : tensor<3x6xf16>
    %199 = vector.maskedload %alloc_7[%c2, %c0], %146, %139 : memref<3x6xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %200 = index.sizeof
    %201 = vector.matrix_multiply %164, %163 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
    %202 = arith.andi %c-22068_i16, %c29478_i16 : i16
    %203 = index.sizeof
    %204 = math.log %12 : tensor<3x6xf16>
    %205 = arith.divui %c1068268826_i32, %c2015512963_i32 : i32
    %206 = arith.andi %c766409526_i64, %c1407355836_i64 : i64
    %207 = arith.muli %c-22068_i16, %c-22068_i16 : i16
    %208 = math.atan2 %cst_0, %cst_1 : f32
    %209 = arith.subi %extracted, %c2015512963_i32 : i32
    %210 = arith.minf %47, %cst_1 : f32
    %211 = vector.broadcast %cst_3 : f16 to vector<3xf16>
    %212 = vector.maskedload %alloc_16[%c1, %c1, %c1], %199, %211 : memref<2x2x2xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %213 = arith.remui %c1407355836_i64, %c470727290_i64 : i64
    %true = arith.constant true
    %214 = vector.create_mask %22, %c14, %68 : vector<2x2x2xi1>
    %215 = math.ctlz %3 : tensor<2x2x2xi32>
    %216 = arith.cmpi ugt, %c1068268826_i32, %c1429938117_i32 : i32
    %cst_36 = arith.constant 1.53497856E+9 : f32
    %217 = vector.insertelement %false, %146[%149 : index] : vector<3xi1>
    %218 = index.castu %c1429938117_i32 : i32 to index
    %219 = math.roundeven %cst_3 : f16
    %220 = arith.floordivsi %63, %false : i1
    %221 = math.cttz %extracted_30 : i16
    %222 = index.castu %c1068268826_i32 : i32 to index
    %223 = math.absi %c470727290_i64 : i64
    %224 = arith.muli %c0_i16, %extracted_30 : i16
    %225 = math.ceil %cst_0 : f32
    scf.if %extracted_28 {
      %260 = arith.maxf %cst_1, %47 : f32
      %261 = arith.andi %c766409526_i64, %c470727290_i64 : i64
      %262 = tensor.empty() : tensor<2x2x2xf16>
      %mapped_40 = linalg.map ins(%8 : tensor<2x2x2xf16>) outs(%262 : tensor<2x2x2xf16>)
        (%in: f16) {
          %266 = math.ctpop %136 : tensor<2x2x2xi1>
          %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%176, %c8, %68, %167)
          %268 = memref.atomic_rmw addf %in, %alloc_6[%c1, %c0] : (f16, memref<3x6xf16>) -> f16
          %269 = memref.atomic_rmw addi %c766409526_i64, %98[%c2] : (i64, memref<3xi64>) -> i64
          %270 = index.mul %169, %171
          memref.copy %alloc_15, %alloc_4 : memref<2x3x2xi64> to memref<2x3x2xi64>
          %271 = vector.broadcast %cst_0 : f32 to vector<3x6xf32>
          %272 = vector.fma %271, %271, %271 : vector<3x6xf32>
          %273 = math.atan %4 : tensor<2x2x2xf32>
          %rank_43 = tensor.rank %splat_26 : tensor<2x2x2xi1>
          %274 = arith.divui %c766409526_i64, %c1446786890_i64 : i64
          %275 = math.tan %12 : tensor<3x6xf16>
          %276 = math.tanh %cst_0 : f32
          %inserted_44 = tensor.insert %62 into %collapsed[%c3, %c1] : tensor<4x2xi64>
          %277 = vector.load %alloc[%c1, %c1, %c0] : memref<2x2x2xi1>, vector<2x3x2xi1>
          %278 = arith.maxsi %62, %c1446786890_i64 : i64
          %279 = vector.create_mask %c2, %c3, %c7 : vector<2x3x2xi1>
          %splat_45 = tensor.splat %in : tensor<3x6xf16>
          %280 = arith.cmpf true, %47, %47 : f32
          %281 = vector.broadcast %c4 : index to vector<2xindex>
          %282 = vector.broadcast %63 : i1 to vector<2xi1>
          %283 = vector.broadcast %extracted_30 : i16 to vector<2xi16>
          vector.scatter %alloc_8[%c2] [%281], %282, %283 : memref<3xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          %284 = bufferization.clone %75 : memref<2x3x2xf32> to memref<2x3x2xf32>
          bufferization.dealloc_tensor %cast_27 : tensor<?x?xi16>
          %285 = affine.load %alloc_19[%c10] : memref<3xi32>
          %286 = bufferization.clone %51 : memref<2x3x2xf16> to memref<2x3x2xf16>
          %287 = vector.extract_strided_slice %82 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
          %288 = vector.flat_transpose %163 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
          %from_elements_46 = tensor.from_elements %cst_3, %in, %cst_3 : tensor<3xf16>
          %289 = arith.remf %cst_1, %cst_1 : f32
          %290 = math.ceil %10 : tensor<3xf16>
          %291 = arith.minf %cst, %cst_0 : f32
          %false_47 = index.bool.constant false
          %292 = index.mul %23, %c8
          %293 = index.sizeof
          %cst_48 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_48 : f16
        }
      %cast_41 = tensor.cast %11 : tensor<3xi16> to tensor<?xi16>
      %263 = math.atan2 %cst, %cst_0 : f32
      %from_elements_42 = tensor.from_elements %c1429938117_i32, %extracted, %c1068268826_i32, %extracted, %c2015512963_i32, %c2015512963_i32, %c1429938117_i32, %c2015512963_i32, %c2015512963_i32, %c2015512963_i32, %c2015512963_i32, %c2015512963_i32 : tensor<2x3x2xi32>
      %264 = arith.muli %false_2, %false_2 : i1
      %265 = math.cos %12 : tensor<3x6xf16>
    }
    %226 = math.log10 %from_elements : tensor<3xf32>
    %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<3x6xi64> into tensor<3x6x1xi64>
    %227 = arith.minf %47, %cst : f32
    %228 = math.floor %4 : tensor<2x2x2xf32>
    %229 = arith.ceildivsi %c1429938117_i32, %c1068268826_i32 : i32
    %230 = math.cttz %from_elements_29 : tensor<3xi32>
    %231 = arith.minf %cst, %47 : f32
    %232 = memref.alloca_scope  -> (memref<2x3x2xi1>) {
      memref.assume_alignment %alloc_19, 8 : memref<3xi32>
      %260 = bufferization.to_memref %4 : memref<2x2x2xf32>
      %alloc_40 = memref.alloc() : memref<2xf16>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %alloc_40, %alloc_40 : memref<2xf16>, memref<2xf16>, memref<2xf16>) outs(%8 : tensor<2x2x2xf16>) {
      ^bb0(%in: f16, %in_45: f16, %in_46: f16, %out: f16):
        %291 = arith.mulf %out, %in_46 : f16
        %292 = bufferization.to_memref %3 : memref<2x2x2xi32>
        %293 = math.absf %cst_1 : f32
        %294 = math.atan2 %7, %7 : tensor<3xf16>
        %295 = math.ctlz %c766409526_i64 : i64
        %cast_47 = tensor.cast %splat : tensor<2x2x2xi32> to tensor<?x?x?xi32>
        %296 = math.log2 %from_elements : tensor<3xf32>
        %inserted_48 = tensor.insert %c1429938117_i32 into %from_elements_29[%c2] : tensor<3xi32>
        %297 = arith.remui %c1429938117_i32, %extracted : i32
        %298 = vector.flat_transpose %188 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %299 = memref.atomic_rmw minf %cst_1, %alloc_18[%c1, %c3] : (f32, memref<3x6xf32>) -> f32
        %300 = math.expm1 %4 : tensor<2x2x2xf32>
        %301 = math.cos %in : f16
        %302 = math.cos %47 : f32
        %303 = vector.extract_strided_slice %95 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %304 = index.divu %c4, %37
        %305 = math.ctlz %3 : tensor<2x2x2xi32>
        %306 = index.divu %167, %175
        %307 = math.fma %10, %7, %10 : tensor<3xf16>
        %308 = index.sizeof
        %309 = math.log10 %in_46 : f16
        %rank_49 = tensor.rank %10 : tensor<3xf16>
        %310 = math.absf %8 : tensor<2x2x2xf16>
        %311 = index.castu %22 : index to i32
        %312 = affine.apply affine_map<(d0) -> (d0 + 17)>(%304)
        %313 = math.roundeven %79 : tensor<2x2x2xf16>
        %314 = math.log %cst_3 : f16
        %315 = math.fpowi %4, %3 : tensor<2x2x2xf32>, tensor<2x2x2xi32>
        %316 = bufferization.to_memref %9 : memref<3x6xi64>
        %collapsed_50 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<2x3x2xi64> into tensor<6x2xi64>
        %317 = index.castu %176 : index to i32
        %318 = index.divs %167, %171
        linalg.yield %in_45 : f16
      } -> tensor<2x2x2xf16>
      %262 = arith.remsi %false_2, %false : i1
      %263 = arith.xori %c1068268826_i32, %c1429938117_i32 : i32
      %264 = math.expm1 %47 : f32
      %265 = math.log2 %79 : tensor<2x2x2xf16>
      %266 = math.rsqrt %12 : tensor<3x6xf16>
      %267 = math.atan %8 : tensor<2x2x2xf16>
      %268 = math.fma %8, %8, %79 : tensor<2x2x2xf16>
      %269 = tensor.empty() : tensor<6x3xi64>
      %270 = tensor.empty() : tensor<3x3xi64>
      %271 = linalg.matmul ins(%9, %269 : tensor<3x6xi64>, tensor<6x3xi64>) outs(%270 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %272 = index.ceildivu %218, %c4
      %273 = math.tanh %8 : tensor<2x2x2xf16>
      %274 = affine.max affine_map<(d0, d1) -> (d0 floordiv 16 - 8, d0 - 8)>(%c3, %c7)
      %275 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + 2 == 0, d0 == 0)>(%c13, %c11, %c6, %c8) -> i32 {
        %291 = arith.addi %c1407355836_i64, %62 : i64
        %292 = arith.maxsi %c1429938117_i32, %c1068268826_i32 : i32
        %293 = math.ipowi %11, %11 : tensor<3xi16>
        %294 = vector.create_mask %rank : vector<3xi1>
        %expanded_45 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<3x6xi64> into tensor<3x6x1xi64>
        %inserted_46 = tensor.insert %c1407355836_i64 into %15[%c0, %c1, %c0] : tensor<2x3x2xi64>
        %295 = math.fma %cst_0, %cst_1, %cst_0 : f32
        %296 = math.log %7 : tensor<3xf16>
        affine.yield %extracted : i32
      } else {
        %291 = arith.shli %c29478_i16, %extracted_30 : i16
        %292 = math.tanh %7 : tensor<3xf16>
        %293 = vector.broadcast %false : i1 to vector<3x2xi1>
        %294 = vector.insert %293, %135 [1] : vector<3x2xi1> into vector<2x3x2xi1>
        %295 = index.casts %c15 : index to i32
        %296 = vector.broadcast %203 : index to vector<3xindex>
        vector.scatter %140[%c1, %c3] [%296], %139, %163 : memref<3x6xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %297 = index.sub %68, %68
        %298 = math.cos %8 : tensor<2x2x2xf16>
        %299 = math.expm1 %47 : f32
        affine.yield %c2015512963_i32 : i32
      }
      %cast_41 = tensor.cast %136 : tensor<2x2x2xi1> to tensor<?x?x?xi1>
      %false_42 = index.bool.constant false
      %276 = affine.for %arg3 = 0 to 123 iter_args(%arg4 = %alloc_5) -> (memref<2x2x2xi64>) {
        affine.yield %alloc_5 : memref<2x2x2xi64>
      }
      %alloc_43 = memref.alloc() : memref<2x2x2xi1>
      %277 = math.roundeven %79 : tensor<2x2x2xf16>
      %278 = affine.min affine_map<(d0, d1, d2) -> (-(d1 - d2))>(%c11, %22, %c4)
      %279 = arith.minf %cst_0, %cst_1 : f32
      vector.print %19 : vector<2xi64>
      %280 = vector.splat %cst_3 : vector<2x2x2xf16>
      %281 = bufferization.clone %alloc_11 : memref<2x3x2xf16> to memref<2x3x2xf16>
      %282 = math.absi %0 : tensor<2x2x2xi1>
      %283 = math.atan2 %47, %47 : f32
      %284 = vector.flat_transpose %146 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %285 = memref.atomic_rmw muli %c1446786890_i64, %alloc_4[%c1, %c1, %c0] : (i64, memref<2x3x2xi64>) -> i64
      %286 = tensor.empty() : tensor<2x2xi64>
      %287 = tensor.empty() : tensor<3x2xi64>
      %288 = linalg.matmul ins(%73, %286 : tensor<3x2xi64>, tensor<2x2xi64>) outs(%287 : tensor<3x2xi64>) -> tensor<3x2xi64>
      %289 = arith.cmpi ule, %c470727290_i64, %62 : i64
      %290 = arith.remsi %c1068268826_i32, %extracted : i32
      %alloc_44 = memref.alloc() : memref<2x3x2xi1>
      memref.alloca_scope.return %alloc_44 : memref<2x3x2xi1>
    }
    %233 = arith.muli %c0_i16, %extracted_30 : i16
    %234 = math.log %from_elements : tensor<3xf32>
    %235 = arith.shrui %false_2, %63 : i1
    memref.store %62, %alloc_15[%c1, %c0, %c0] : memref<2x3x2xi64>
    affine.store %63, %alloc[%c12, %c1, %c14] : memref<2x2x2xi1>
    %236 = arith.maxui %false_2, %false_2 : i1
    %237 = arith.maxsi %c1429938117_i32, %c2015512963_i32 : i32
    %238 = index.castu %c1068268826_i32 : i32 to index
    %239 = math.ctpop %20 : tensor<i16>
    vector.print %101 : vector<2xi64>
    %240 = vector.multi_reduction <minf>, %201, %cst_1 [0] : vector<1xf32> to f32
    %241 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 16)>(%c5, %34, %154)
    %242 = vector.broadcast %false_2 : i1 to vector<6x6xi1>
    %243 = vector.outerproduct %132, %132, %242 {kind = #vector.kind<and>} : vector<6xi1>, vector<6xi1>
    %rank_37 = tensor.rank %1 : tensor<2x3x2xi16>
    %244 = vector.shuffle %131, %19 [0, 4] : vector<6xi64>, vector<2xi64>
    %245 = arith.floordivsi %c470727290_i64, %c863776175_i64 : i64
    %246 = arith.shli %c2015512963_i32, %extracted : i32
    %247 = memref.load %98[%c2] : memref<3xi64>
    %248 = affine.max affine_map<(d0, d1, d2, d3) -> (-d2, d2 + d3)>(%c4, %56, %124, %124)
    %249 = index.sizeof
    %250 = vector.insertelement %c1446786890_i64, %76[%26 : index] : vector<2xi64>
    %251 = tensor.empty() : tensor<3xi64>
    %mapped_38 = linalg.map ins(%2, %16, %16 : tensor<3xi64>, tensor<3xi64>, tensor<3xi64>) outs(%251 : tensor<3xi64>)
      (%in: i64, %in_40: i64, %in_41: i64) {
        %260 = affine.apply affine_map<(d0) -> (0)>(%37)
        %261 = arith.maxsi %c29478_i16, %c-22068_i16 : i16
        %262 = math.log1p %10 : tensor<3xf16>
        %263 = vector.flat_transpose %41 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %c1_i16 = arith.constant 1 : i16
        %264 = vector.transfer_read %alloc_20[%c12], %c1_i16 : memref<3xi16>, vector<i16>
        %265 = math.tan %47 : f32
        memref.assume_alignment %alloc, 8 : memref<2x2x2xi1>
        %266 = math.exp %cst_3 : f16
        %extracted_42 = tensor.extract %15[%c1, %c0, %c0] : tensor<2x3x2xi64>
        %267 = tensor.empty() : tensor<2x2x2xf16>
        %mapped_43 = linalg.map ins(%8, %79 : tensor<2x2x2xf16>, tensor<2x2x2xf16>) outs(%267 : tensor<2x2x2xf16>)
          (%in_46: f16, %in_47: f16) {
            %289 = math.powf %8, %8 : tensor<2x2x2xf16>
            %290 = vector.matrix_multiply %139, %82 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
            %291 = math.cos %7 : tensor<3xf16>
            %292 = math.absi %9 : tensor<3x6xi64>
            %293 = arith.andi %63, %63 : i1
            %false_48 = arith.constant false
            %294 = memref.atomic_rmw assign %cst_3, %alloc_6[%c0, %c1] : (f16, memref<3x6xf16>) -> f16
            %295 = arith.shli %c-22068_i16, %extracted_30 : i16
            %296 = math.atan2 %cst_3, %in_47 : f16
            %297 = bufferization.clone %51 : memref<2x3x2xf16> to memref<2x3x2xf16>
            %298 = math.fma %10, %10, %7 : tensor<3xf16>
            %299 = memref.load %alloc_20[%c0] : memref<3xi16>
            %collapsed_49 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<2x3x2xi64> into tensor<6x2xi64>
            %alloc_50 = memref.alloc() : memref<2x6xi64>
            %300 = tensor.empty() : tensor<6x6xi64>
            %301 = linalg.matmul ins(%collapsed_49, %alloc_50 : tensor<6x2xi64>, memref<2x6xi64>) outs(%300 : tensor<6x6xi64>) -> tensor<6x6xi64>
            %302 = math.roundeven %47 : f32
            %303 = math.ctlz %in_41 : i64
            %304 = math.roundeven %in_47 : f16
            %305 = arith.andi %extracted, %c2015512963_i32 : i32
            %306 = math.absi %c766409526_i64 : i64
            %307 = arith.muli %c1446786890_i64, %in : i64
            %308 = math.fpowi %79, %splat : tensor<2x2x2xf16>, tensor<2x2x2xi32>
            %309 = bufferization.to_tensor %alloc_9 : memref<2x3x2xf32>
            %310 = vector.multi_reduction <maxsi>, %290, %extracted_28 [0] : vector<1xi1> to i1
            %311 = math.exp %8 : tensor<2x2x2xf16>
            %312 = math.log10 %in_46 : f16
            %313 = arith.remf %47, %cst_0 : f32
            %314 = arith.divui %false_2, %false : i1
            %315 = math.fma %cst_0, %cst_1, %cst_0 : f32
            %316 = math.absi %in : i64
            %317 = vector.load %191[%c1, %c1, %c0] : memref<2x3x2xf16>, vector<2x2x2xf16>
            %318 = index.sizeof
            %319 = bufferization.clone %191 : memref<2x3x2xf16> to memref<2x3x2xf16>
            %cst_51 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_51 : f16
          }
        %268 = memref.realloc %alloc_8 : memref<3xi16> to memref<6xi16>
        %269 = arith.shli %c1068268826_i32, %extracted : i32
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_44 = arith.constant 0 : i64
        %270 = vector.transfer_read %expanded[%124, %124, %23], %c0_i64_44 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<3x6x1xi64>, vector<2x2xi64>
        %271 = math.powf %4, %4 : tensor<2x2x2xf32>
        %inserted_45 = tensor.insert %extracted_30 into %18[%c0] : tensor<2xi16>
        %272 = arith.remsi %in, %in : i64
        %273 = arith.subi %in_41, %c1446786890_i64 : i64
        %274 = arith.maxsi %c470727290_i64, %62 : i64
        %275 = index.ceildivu %68, %249
        %276 = bufferization.clone %alloc_6 : memref<3x6xf16> to memref<3x6xf16>
        %277 = arith.floordivsi %false, %false : i1
        %278 = arith.cmpf oge, %cst, %47 : f32
        %279 = math.tan %8 : tensor<2x2x2xf16>
        %280 = math.ctlz %splat_26 : tensor<2x2x2xi1>
        %281 = math.log2 %47 : f32
        %282 = arith.xori %c0_i64, %in_41 : i64
        %283 = math.log1p %cst_3 : f16
        %284 = index.ceildivu %c0, %248
        %285 = arith.floordivsi %c0_i64, %c766409526_i64 : i64
        %286 = bufferization.clone %alloc_13 : memref<2x2x2xi32> to memref<2x2x2xi32>
        %287 = vector.insert %63, %146 [2] : i1 into vector<3xi1>
        %288 = arith.subi %in, %c1407355836_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %252 = arith.addi %false_2, %false : i1
    %253 = math.atan2 %8, %8 : tensor<2x2x2xf16>
    %254 = index.mul %249, %68
    %255 = tensor.empty() : tensor<3xi64>
    %256 = linalg.copy ins(%16 : tensor<3xi64>) outs(%255 : tensor<3xi64>) -> tensor<3xi64>
    %257 = tensor.empty() : tensor<2x2x2xf16>
    %transposed = linalg.transpose ins(%79 : tensor<2x2x2xf16>) outs(%257 : tensor<2x2x2xf16>) permutation = [2, 0, 1] 
    %alloc_39 = memref.alloc() : memref<i16>
    linalg.reduce ins(%11 : tensor<3xi16>) outs(%alloc_39 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %260 = bufferization.clone %191 : memref<2x3x2xf16> to memref<2x3x2xf16>
        %261 = vector.broadcast %37 : index to vector<3xindex>
        vector.scatter %75[%c0, %c1, %c1] [%261], %199, %163 : memref<2x3x2xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %262 = memref.load %86[%c0, %c1, %c1] : memref<2x2x2xi64>
        %true_40 = index.bool.constant true
        %inserted_41 = tensor.insert %c29478_i16 into %1[%c1, %c2, %c1] : tensor<2x3x2xi16>
        %263 = math.log %cst_3 : f16
        %264 = math.cttz %16 : tensor<3xi64>
        %splat_42 = tensor.splat %cst_1 : tensor<2x3x2xf32>
        %c0_i16_43 = arith.constant 0 : i16
        linalg.yield %c0_i16_43 : i16
      }
    %258 = scf.parallel (%arg3, %arg4) = (%c9, %68) to (%rank_37, %203) step (%c8, %c8) init (%c470727290_i64) -> i64 {
      %260 = arith.maxsi %c1429938117_i32, %extracted : i32
      %261 = arith.shrui %c2015512963_i32, %c1068268826_i32 : i32
      %262 = math.expm1 %79 : tensor<2x2x2xf16>
      %263 = bufferization.to_memref %257 : memref<2x2x2xf16>
      %264 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
      %false_40 = index.bool.constant false
      %265 = vector.transpose %76, [0] : vector<2xi64> to vector<2xi64>
      %266 = math.ctlz %c1068268826_i32 : i32
      %267 = math.log2 %4 : tensor<2x2x2xf32>
      %268 = vector.insert %62, %19 [0] : i64 into vector<2xi64>
      %269 = vector.create_mask %171, %249 : vector<3x6xi1>
      %270 = vector.broadcast %false_40 : i1 to vector<2x2xi1>
      %dest_41, %accumulated_value_42 = vector.scan <xor>, %135, %270 {inclusive = true, reduction_dim = 1 : i64} : vector<2x3x2xi1>, vector<2x2xi1>
      %271 = index.ceildivu %248, %167
      %272 = tensor.empty() : tensor<3x2x2xi16>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18, %272, %13 : tensor<2xi16>, tensor<3x2x2xi16>, tensor<2x3x2xi16>) outs(%1 : tensor<2x3x2xi16>) {
      ^bb0(%in: i16, %in_43: i16, %in_44: i16, %out: i16):
        %275 = arith.maxsi %c863776175_i64, %62 : i64
        %276 = math.fma %257, %8, %79 : tensor<2x2x2xf16>
        %277 = vector.splat %c29478_i16 : vector<3xi16>
        %collapsed_45 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<2x2x2xi32> into tensor<4x2xi32>
        %278 = index.divu %23, %222
        %279 = math.roundeven %8 : tensor<2x2x2xf16>
        %280 = arith.minf %240, %cst : f32
        %281 = index.ceildivs %arg3, %c13
        %282 = math.log2 %240 : f32
        %283 = index.casts %extracted_30 : i16 to index
        %284 = index.divs %c1, %218
        %285 = index.ceildivs %248, %c7
        %286 = math.ceil %257 : tensor<2x2x2xf16>
        memref.store %cst_3, %263[%c1, %c0, %c0] : memref<2x2x2xf16>
        %287 = arith.xori %c1068268826_i32, %c1429938117_i32 : i32
        %288 = index.ceildivs %176, %149
        %289 = arith.minf %47, %cst_1 : f32
        %290 = bufferization.clone %75 : memref<2x3x2xf32> to memref<2x3x2xf32>
        %291 = index.ceildivu %arg4, %138
        %292 = math.ceil %79 : tensor<2x2x2xf16>
        %alloc_46 = memref.alloc() : memref<2x3x2xi1>
        memref.copy %232, %alloc_46 : memref<2x3x2xi1> to memref<2x3x2xi1>
        %293 = arith.shrui %extracted, %c1068268826_i32 : i32
        %294 = affine.max affine_map<(d0, d1, d2) -> (d2 * -2 - d0, d0 + d2, (d0 - d2 * 2) * 4)>(%203, %200, %c3)
        %295 = index.mul %169, %56
        %296 = affine.load %75[%c0, %c10, %c15] : memref<2x3x2xf32>
        %297 = arith.subi %c2015512963_i32, %c1068268826_i32 : i32
        %298 = bufferization.clone %140 : memref<3x6xf32> to memref<3x6xf32>
        %splat_47 = tensor.splat %cst_1 : tensor<2x3x2xf32>
        %299 = memref.atomic_rmw andi %c863776175_i64, %alloc_15[%c0, %c1, %c0] : (i64, memref<2x3x2xi64>) -> i64
        %300 = arith.cmpf oge, %240, %cst_1 : f32
        %301 = math.log2 %257 : tensor<2x2x2xf16>
        %302 = index.mul %c11, %200
        linalg.yield %c-22068_i16 : i16
      } -> tensor<2x3x2xi16>
      bufferization.dealloc_tensor %136 : tensor<2x2x2xi1>
      %274 = arith.shli %c470727290_i64, %62 : i64
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg5: i64, %arg6: i64):
        %275 = math.absf %79 : tensor<2x2x2xf16>
        %276 = arith.remsi %extracted_30, %c-22068_i16 : i16
        %from_elements_43 = tensor.from_elements %cst_0, %cst, %cst_1 : tensor<3xf32>
        %277 = arith.remf %47, %47 : f32
        %278 = math.ctpop %c-22068_i16 : i16
        %279 = vector.splat %238 : vector<2x3x2xindex>
        %280 = memref.atomic_rmw maxf %cst_3, %alloc_11[%c0, %c0, %c0] : (f16, memref<2x3x2xf16>) -> f16
        %281 = arith.muli %extracted, %c1068268826_i32 : i32
        %c0_i64_44 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_44 : i64
      }
      scf.yield
    }
    %259 = affine.vector_load %54[%167, %171, %37] : memref<2x3x2xi64>, vector<6xi64>
    affine.vector_store %19, %alloc_15[%176, %c12, %c8] : memref<2x3x2xi64>, vector<2xi64>
    vector.print %19 : vector<2xi64>
    vector.print %28 : vector<2xi64>
    vector.print %41 : vector<2xi64>
    vector.print %76 : vector<2xi64>
    vector.print %82 : vector<3xi1>
    vector.print %95 : vector<1xi64>
    vector.print %101 : vector<2xi64>
    vector.print %118 : vector<1xi64>
    vector.print %131 : vector<6xi64>
    vector.print %132 : vector<6xi1>
    vector.print %133 : vector<6xi64>
    vector.print %135 : vector<2x3x2xi1>
    vector.print %139 : vector<3xi1>
    vector.print %142 : vector<3xi64>
    vector.print %146 : vector<3xi1>
    vector.print %163 : vector<3xf32>
    vector.print %164 : vector<3xf32>
    vector.print %188 : vector<3xi1>
    vector.print %199 : vector<3xi1>
    vector.print %201 : vector<1xf32>
    vector.print %211 : vector<3xf16>
    vector.print %212 : vector<3xf16>
    vector.print %214 : vector<2x2x2xi1>
    vector.print %259 : vector<6xi64>
    vector.print %c1407355836_i64 : i64
    vector.print %false : i1
    vector.print %c766409526_i64 : i64
    vector.print %cst : f32
    vector.print %c29478_i16 : i16
    vector.print %c2015512963_i32 : i32
    vector.print %c863776175_i64 : i64
    vector.print %c1429938117_i32 : i32
    vector.print %c1068268826_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c-22068_i16 : i16
    vector.print %cst_1 : f32
    vector.print %false_2 : i1
    vector.print %c470727290_i64 : i64
    vector.print %c1446786890_i64 : i64
    vector.print %cst_3 : f16
    vector.print %c0_i16 : i16
    vector.print %47 : f32
    vector.print %62 : i64
    vector.print %63 : i1
    vector.print %extracted : i32
    vector.print %extracted_28 : i1
    vector.print %extracted_30 : i16
    vector.print %240 : f32
    return
  }
}
