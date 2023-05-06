module {
  func.func @func1(%arg0: memref<8xi1>, %arg1: index, %arg2: vector<4xi32>) {
    %cst = arith.constant 3.721600e+04 : f16
    %c-20224_i16 = arith.constant -20224 : i16
    %c52904209_i64 = arith.constant 52904209 : i64
    %cst_0 = arith.constant 1.58018752E+9 : f32
    %false = arith.constant false
    %cst_1 = arith.constant 6.089600e+04 : f16
    %c6869_i16 = arith.constant 6869 : i16
    %c437496963_i64 = arith.constant 437496963 : i64
    %false_2 = arith.constant false
    %cst_3 = arith.constant 6.486400e+04 : f16
    %c-175_i16 = arith.constant -175 : i16
    %cst_4 = arith.constant 3.123200e+04 : f16
    %cst_5 = arith.constant 0x4DCEF7A1 : f32
    %true = arith.constant true
    %true_6 = arith.constant true
    %cst_7 = arith.constant 3.568000e+04 : f16
    %0 = tensor.empty() : tensor<8x4x3xi1>
    %1 = tensor.empty() : tensor<8x4x3xi64>
    %2 = tensor.empty() : tensor<4xi1>
    %3 = tensor.empty() : tensor<4xi32>
    %4 = tensor.empty() : tensor<4x4x8xi32>
    %5 = tensor.empty() : tensor<8x4x3xf32>
    %6 = tensor.empty() : tensor<8x4x3xf32>
    %7 = tensor.empty() : tensor<8x4x3xf16>
    %8 = tensor.empty() : tensor<8x4x3xf32>
    %9 = tensor.empty() : tensor<8xf16>
    %10 = tensor.empty() : tensor<4xf16>
    %11 = tensor.empty() : tensor<4xi64>
    %12 = tensor.empty() : tensor<8x4x3xi1>
    %13 = tensor.empty() : tensor<8x4x3xi64>
    %14 = tensor.empty() : tensor<8x4x3xf16>
    %15 = tensor.empty() : tensor<4x4x8xi64>
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
    %alloc = memref.alloc() : memref<8x4x3xi32>
    %alloc_8 = memref.alloc() : memref<8xi1>
    %alloc_9 = memref.alloc() : memref<4xi32>
    %alloc_10 = memref.alloc() : memref<8xf32>
    %alloc_11 = memref.alloc() : memref<8xi64>
    %alloc_12 = memref.alloc() : memref<4x4x8xi16>
    %alloc_13 = memref.alloc() : memref<8x4x3xi16>
    %alloc_14 = memref.alloc() : memref<8x4x3xi64>
    %alloc_15 = memref.alloc() : memref<8xi32>
    %alloc_16 = memref.alloc() : memref<8xi16>
    %alloc_17 = memref.alloc() : memref<8x4x3xi64>
    %alloc_18 = memref.alloc() : memref<4x4x8xi64>
    %alloc_19 = memref.alloc() : memref<8x4x3xi32>
    %alloc_20 = memref.alloc() : memref<8xi1>
    %alloc_21 = memref.alloc() : memref<4x4x8xi1>
    %alloc_22 = memref.alloc() : memref<8x4x3xi16>
    %16 = tensor.empty() : tensor<4x4x8xi32>
    %17 = linalg.copy ins(%4 : tensor<4x4x8xi32>) outs(%16 : tensor<4x4x8xi32>) -> tensor<4x4x8xi32>
    %18 = tensor.empty() : tensor<4xi32>
    %transposed = linalg.transpose ins(%alloc_9 : memref<4xi32>) outs(%18 : tensor<4xi32>) permutation = [0] 
    %alloc_23 = memref.alloc() : memref<3xf32>
    linalg.reduce ins(%6 : tensor<8x4x3xf32>) outs(%alloc_23 : memref<3xf32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %257 = math.powf %10, %10 : tensor<4xf16>
        %258 = math.log %cst_4 : f16
        %259 = affine.load %alloc_8[%c15] : memref<8xi1>
        %260 = math.expm1 %6 : tensor<8x4x3xf32>
        %261 = vector.broadcast %c-175_i16 : i16 to vector<4x4x8xi16>
        %262 = bufferization.clone %alloc_23 : memref<3xf32> to memref<3xf32>
        %cast = tensor.cast %15 : tensor<4x4x8xi64> to tensor<?x?x?xi64>
        %263 = vector.broadcast %c6869_i16 : i16 to vector<4x8x4x8xi16>
        %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %261, %261, %263 : vector<4x4x8xi16>, vector<4x4x8xi16> into vector<4x8x4x8xi16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    scf.parallel (%arg3) = (%c11) to (%c14) step (%c5) {
      %257 = math.fma %8, %5, %6 : tensor<8x4x3xf32>
      %258 = math.log10 %cst_7 : f16
      %259 = math.log10 %5 : tensor<8x4x3xf32>
      %extracted_49 = tensor.extract %8[%c4, %c2, %c0] : tensor<8x4x3xf32>
      %260 = arith.negf %cst_4 : f16
      %261 = arith.divsi %true, %true : i1
      %262 = arith.subi %c52904209_i64, %c437496963_i64 : i64
      memref.copy %alloc_14, %alloc_17 : memref<8x4x3xi64> to memref<8x4x3xi64>
      %263 = math.round %10 : tensor<4xf16>
      %264 = bufferization.to_tensor %alloc_13 : memref<8x4x3xi16>
      %false_50 = index.bool.constant false
      %265 = bufferization.clone %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
      %266 = vector.create_mask %c13, %c11, %arg3 : vector<8x4x3xi1>
      %267 = arith.andi %true, %false : i1
      %268 = math.sqrt %7 : tensor<8x4x3xf16>
      %inserted_51 = tensor.insert %c437496963_i64 into %1[%c7, %c3, %c1] : tensor<8x4x3xi64>
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c11] : memref<8xi1>, vector<8xi1>
    affine.vector_store %19, %alloc_21[%c2, %c2, %c3] : memref<4x4x8xi1>, vector<8xi1>
    %alloc_24 = memref.alloc() : memref<4xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%18, %alloc_24 : tensor<4xi32>, memref<4xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = affine.for %arg3 = 0 to 118 iter_args(%arg4 = %c7) -> (index) {
      affine.yield %c12 : index
    }
    %23 = math.round %cst_0 : f32
    %24 = arith.shrsi %true, %false_2 : i1
    %25 = arith.mulf %cst, %cst_3 : f16
    %26 = math.expm1 %10 : tensor<4xf16>
    %27 = math.floor %cst_4 : f16
    %28 = math.round %9 : tensor<8xf16>
    %29 = bufferization.clone %alloc_16 : memref<8xi16> to memref<8xi16>
    %30 = math.log10 %5 : tensor<8x4x3xf32>
    %31 = index.mul %c1, %c1
    %32 = vector.shuffle %19, %19 [2, 5, 6, 7, 9, 10, 11, 13, 14] : vector<8xi1>, vector<8xi1>
    %33 = vector.broadcast %cst_5 : f32 to vector<8x4xf32>
    %34 = vector.transfer_write %33, %8[%c6, %c13, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x4xf32>, tensor<8x4x3xf32>
    %35 = arith.maxsi %true, %true_6 : i1
    %36 = vector.bitcast %19 : vector<8xi1> to vector<8xi1>
    %37 = math.expm1 %8 : tensor<8x4x3xf32>
    %inserted = tensor.insert %c437496963_i64 into %1[%c0, %c0, %c0] : tensor<8x4x3xi64>
    %38 = affine.if affine_set<(d0, d1, d2) : (d1 mod 128 == 0, d1 >= 0, d1 * 64 == 0)>(%c1, %c7, %c10) -> memref<4xi64> {
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %36, %36, %true_6 : vector<8xi1>, vector<8xi1> into i1
      %258 = arith.maxsi %c437496963_i64, %c437496963_i64 : i64
      %259 = math.atan %cst_4 : f16
      %260 = tensor.empty() : tensor<8x4x3xi32>
      %261 = math.fpowi %5, %260 : tensor<8x4x3xf32>, tensor<8x4x3xi32>
      %alloc_49 = memref.alloc() : memref<8x9xi1>
      %262 = tensor.empty() : tensor<9x3xi1>
      %263 = tensor.empty() : tensor<8x3xi1>
      %264 = linalg.matmul ins(%alloc_49, %262 : memref<8x9xi1>, tensor<9x3xi1>) outs(%263 : tensor<8x3xi1>) -> tensor<8x3xi1>
      %265 = math.round %9 : tensor<8xf16>
      %266 = math.floor %6 : tensor<8x4x3xf32>
      %267 = math.log10 %cst : f16
      %alloc_50 = memref.alloc() : memref<4xi64>
      affine.yield %alloc_50 : memref<4xi64>
    } else {
      bufferization.dealloc_tensor %15 : tensor<4x4x8xi64>
      %cst_49 = arith.constant 1.000000e+00 : f32
      %cst_50 = arith.constant 0.000000e+00 : f32
      %257 = vector.transfer_read %6[%c0, %c11, %c3], %cst_50 : tensor<8x4x3xf32>, vector<f32>
      %258 = math.expm1 %9 : tensor<8xf16>
      %alloc_51 = memref.alloc() : memref<3x4xi32>
      %259 = tensor.empty() : tensor<4x4xi32>
      %260 = tensor.empty() : tensor<3x4xi32>
      %261 = linalg.matmul ins(%alloc_51, %259 : memref<3x4xi32>, tensor<4x4xi32>) outs(%260 : tensor<3x4xi32>) -> tensor<3x4xi32>
      %262 = vector.shuffle %33, %33 [0, 1, 2, 4, 11] : vector<8x4xf32>, vector<8x4xf32>
      %263 = math.tan %8 : tensor<8x4x3xf32>
      %264 = arith.minf %cst_5, %cst_0 : f32
      %rank_52 = tensor.rank %16 : tensor<4x4x8xi32>
      %alloc_53 = memref.alloc() : memref<4xi64>
      affine.yield %alloc_53 : memref<4xi64>
    }
    %39 = index.add %c5, %31
    %40 = arith.mulf %cst_7, %cst_4 : f16
    %41 = math.cos %7 : tensor<8x4x3xf16>
    %42 = arith.subi %true_6, %true_6 : i1
    %43 = bufferization.to_tensor %alloc : memref<8x4x3xi32>
    %c0_i32 = arith.constant 0 : i32
    %44 = math.fpowi %cst_5, %c0_i32 : f32, i32
    %45 = index.sizeof
    %46 = vector.broadcast %cst_5 : f32 to vector<8xf32>
    %dest, %accumulated_value = vector.scan <mul>, %33, %46 {inclusive = false, reduction_dim = 1 : i64} : vector<8x4xf32>, vector<8xf32>
    %47 = arith.divui %c437496963_i64, %c52904209_i64 : i64
    %48 = math.log %14 : tensor<8x4x3xf16>
    %49 = tensor.empty() : tensor<4x4x8xf16>
    %50 = math.roundeven %6 : tensor<8x4x3xf32>
    %51 = arith.ori %c0_i32, %c0_i32 : i32
    %52 = affine.load %alloc_20[%c8] : memref<8xi1>
    %splat = tensor.splat %true : tensor<4xi1>
    %53 = arith.andi %c-175_i16, %c-20224_i16 : i16
    %rank = tensor.rank %3 : tensor<4xi32>
    %54 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
    %55 = vector.insertelement %true_6, %19[%c10 : index] : vector<8xi1>
    %56 = math.absf %10 : tensor<4xf16>
    %57 = tensor.empty(%31, %31, %c4) : tensor<?x?x?xi1>
    %58 = arith.muli %false, %false_2 : i1
    %false_25 = index.bool.constant false
    %inserted_26 = tensor.insert %c0_i32 into %3[%c1] : tensor<4xi32>
    %59 = math.powf %49, %49 : tensor<4x4x8xf16>
    %c-9056_i16 = arith.constant -9056 : i16
    scf.if %false {
      %inserted_49 = tensor.insert %cst into %10[%c3] : tensor<4xf16>
      %257 = arith.muli %c-175_i16, %c-20224_i16 : i16
      %258 = math.log10 %5 : tensor<8x4x3xf32>
      %259 = index.sub %c7, %c0
      %260 = index.add %c14, %c1
      %261 = bufferization.to_tensor %alloc_8 : memref<8xi1>
      %true_50 = index.bool.constant true
      %262 = vector.insertelement %true_6, %54[%c15 : index] : vector<8xi1>
    }
    %60 = bufferization.clone %29 : memref<8xi16> to memref<8xi16>
    %61 = math.fma %cst_7, %cst_3, %cst_3 : f16
    %62 = index.sizeof
    %collapsed = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<4x4x8xi32> into tensor<16x8xi32>
    %63 = math.absf %8 : tensor<8x4x3xf32>
    %64 = bufferization.clone %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
    %65 = arith.minui %c-20224_i16, %c-20224_i16 : i16
    %true_27 = index.bool.constant true
    %66 = index.sub %45, %62
    %67 = math.tan %6 : tensor<8x4x3xf32>
    %68 = arith.remf %cst_1, %cst : f16
    memref.store %c0_i32, %alloc_9[%c0] : memref<4xi32>
    %69 = scf.index_switch %31 -> index 
    case 1 {
      %257 = math.exp2 %10 : tensor<4xf16>
      %alloca = memref.alloca() : memref<8x4x3xi64>
      %splat_49 = tensor.splat %cst_5 : tensor<4x4x8xf32>
      %258 = arith.maxf %cst_3, %cst_3 : f16
      %259 = tensor.empty() : tensor<4xi64>
      %260 = vector.create_mask %c14 : vector<8xi1>
      %261 = math.log %7 : tensor<8x4x3xf16>
      %262 = arith.remf %cst, %cst_4 : f16
      %263 = vector.flat_transpose %260 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %264 = arith.cmpf ueq, %cst_1, %cst_1 : f16
      %265 = index.casts %c0_i32 : i32 to index
      %cast = tensor.cast %12 : tensor<8x4x3xi1> to tensor<?x?x?xi1>
      memref.assume_alignment %alloc_20, 2 : memref<8xi1>
      %splat_50 = tensor.splat %true : tensor<8xi1>
      %266 = arith.divsi %false_25, %true : i1
      %267 = arith.cmpf ugt, %cst_7, %cst_3 : f16
      scf.yield %c9 : index
    }
    case 2 {
      %257 = math.atan2 %6, %8 : tensor<8x4x3xf32>
      %258 = math.fma %cst, %cst_1, %cst_7 : f16
      memref.store %c437496963_i64, %alloc_18[%c3, %c0, %c1] : memref<4x4x8xi64>
      %259 = vector.insert %52, %54 [2] : i1 into vector<8xi1>
      %260 = affine.if affine_set<(d0, d1, d2) : (-(d1 floordiv 4) + d2 >= 0, -d2 >= 0, -d2 - (d1 + d2) == 0)>(%c13, %c14, %c14) -> f32 {
        %273 = arith.andi %c437496963_i64, %c437496963_i64 : i64
        %274 = index.ceildivu %c5, %c15
        %275 = index.casts %false : i1 to index
        %276 = arith.ceildivsi %c437496963_i64, %c437496963_i64 : i64
        %277 = index.add %62, %c1
        %278 = arith.shli %true_6, %false_2 : i1
        %279 = arith.shli %true, %52 : i1
        %280 = math.expm1 %14 : tensor<8x4x3xf16>
        affine.yield %cst_0 : f32
      } else {
        %273 = arith.xori %c52904209_i64, %c437496963_i64 : i64
        %274 = arith.remsi %false, %false_25 : i1
        %275 = arith.xori %c-175_i16, %c-20224_i16 : i16
        %276 = arith.remui %true_27, %false_2 : i1
        %277 = arith.minsi %52, %52 : i1
        %278 = index.ceildivu %c3, %c4
        %from_elements_50 = tensor.from_elements %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64 : tensor<4x4x8xi64>
        %279 = math.rsqrt %cst_0 : f32
        affine.yield %cst_5 : f32
      }
      %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %36, %36, %false_25 : vector<8xi1>, vector<8xi1> into i1
      %262 = arith.negf %cst_1 : f16
      %263 = arith.remf %cst_3, %cst_1 : f16
      %264 = math.fpowi %cst_3, %c0_i32 : f16, i32
      %265 = math.cos %10 : tensor<4xf16>
      %266 = arith.remf %cst_5, %cst_0 : f32
      %267 = vector.insertelement %false_25, %19[%c15 : index] : vector<8xi1>
      %collapsed_49 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<4x4x8xi32> into tensor<16x8xi32>
      %268 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
      %269 = vector.broadcast %true_6 : i1 to vector<4xi1>
      %270 = vector.gather %18[%c13] [%268], %269, %268 : tensor<4xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %271 = math.fma %14, %14, %7 : tensor<8x4x3xf16>
      %272 = arith.cmpi uge, %true_27, %false : i1
      scf.yield %c15 : index
    }
    case 3 {
      scf.index_switch %31 
      case 1 {
        %268 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
        %269 = vector.broadcast %true_6 : i1 to vector<4xi1>
        %270 = vector.gather %alloc_15[%31] [%268], %269, %268 : memref<8xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %271 = math.atan2 %6, %8 : tensor<8x4x3xf32>
        %272 = math.tanh %9 : tensor<8xf16>
        %273 = math.cttz %0 : tensor<8x4x3xi1>
        %274 = math.absi %15 : tensor<4x4x8xi64>
        memref.copy %alloc_13, %alloc_22 : memref<8x4x3xi16> to memref<8x4x3xi16>
        %275 = memref.load %alloc_21[%c3, %c0, %c1] : memref<4x4x8xi1>
        %276 = index.maxs %c10, %c6
        %277 = vector.insertelement %false_2, %19[%276 : index] : vector<8xi1>
        %278 = vector.shuffle %54, %36 [3, 4, 5, 6, 7, 9, 12, 14] : vector<8xi1>, vector<8xi1>
        %279 = math.rsqrt %14 : tensor<8x4x3xf16>
        %280 = math.floor %6 : tensor<8x4x3xf32>
        %281 = math.fpowi %8, %43 : tensor<8x4x3xf32>, tensor<8x4x3xi32>
        %282 = arith.ori %true_6, %52 : i1
        %true_52 = index.bool.constant true
        %283 = bufferization.clone %alloc_20 : memref<8xi1> to memref<8xi1>
        scf.yield
      }
      default {
        %268 = math.floor %10 : tensor<4xf16>
        %269 = arith.shli %c-20224_i16, %c6869_i16 : i16
        %270 = tensor.empty() : tensor<8x9xi32>
        %271 = tensor.empty() : tensor<16x9xi32>
        %272 = linalg.matmul ins(%collapsed, %270 : tensor<16x8xi32>, tensor<8x9xi32>) outs(%271 : tensor<16x9xi32>) -> tensor<16x9xi32>
        %cast_52 = tensor.cast %10 : tensor<4xf16> to tensor<?xf16>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %36, %19, %52 : vector<8xi1>, vector<8xi1> into i1
        %274 = arith.divf %cst_1, %cst_3 : f16
        %275 = tensor.empty(%c13, %c3, %c4) : tensor<?x?x?xi16>
        %276 = memref.load %alloc_12[%c1, %c2, %c6] : memref<4x4x8xi16>
        %277 = math.sqrt %10 : tensor<4xf16>
        memref.store %c0_i32, %alloc_24[%c3] : memref<4xi32>
        %278 = index.sizeof
        %279 = arith.divsi %c-175_i16, %c6869_i16 : i16
        %false_53 = index.bool.constant false
        %280 = vector.bitcast %33 : vector<8x4xf32> to vector<8x4xf32>
        %281 = math.cos %8 : tensor<8x4x3xf32>
        %282 = math.exp2 %cst_4 : f16
      }
      bufferization.dealloc_tensor %15 : tensor<4x4x8xi64>
      %collapsed_49 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<4x4x8xi32> into tensor<16x8xi32>
      %257 = math.atan2 %8, %6 : tensor<8x4x3xf32>
      %258 = math.exp2 %5 : tensor<8x4x3xf32>
      %rank_50 = tensor.rank %2 : tensor<4xi1>
      %259 = arith.andi %true_6, %true_6 : i1
      %c1_i16 = arith.constant 1 : i16
      %260 = vector.transfer_read %alloc_22[%c0, %c5, %39], %c1_i16 : memref<8x4x3xi16>, vector<i16>
      %261 = vector.insert %true_27, %19 [0] : i1 into vector<8xi1>
      %262 = bufferization.to_memref %1 : memref<8x4x3xi64>
      %alloc_51 = memref.alloc() : memref<4x8xf32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51 : memref<4x8xf32>) outs(%6 : tensor<8x4x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %268 = arith.shli %false, %true_27 : i1
        %269 = index.sub %c11, %66
        %270 = math.tanh %cst_4 : f16
        %271 = tensor.empty() : tensor<8xi64>
        %272 = vector.broadcast %c52904209_i64 : i64 to vector<4xi64>
        %273 = vector.broadcast %true_6 : i1 to vector<4xi1>
        %274 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
        %275 = vector.gather %271[%c7] [%274], %273, %272 : tensor<8xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %276 = index.add %39, %c11
        %277 = math.round %5 : tensor<8x4x3xf32>
        %278 = arith.subi %c437496963_i64, %c437496963_i64 : i64
        %279 = vector.bitcast %54 : vector<8xi1> to vector<8xi1>
        %280 = affine.load %alloc_22[%c5, %c6, %c11] : memref<8x4x3xi16>
        %281 = math.tanh %cst_0 : f32
        %splat_52 = tensor.splat %52 : tensor<8xi1>
        %282 = arith.minui %52, %true : i1
        %283 = arith.subi %true_6, %true : i1
        %cast_53 = tensor.cast %collapsed : tensor<16x8xi32> to tensor<?x?xi32>
        %284 = arith.minsi %c6869_i16, %c-175_i16 : i16
        %285 = arith.subi %c52904209_i64, %c52904209_i64 : i64
        %286 = vector.broadcast %in : f32 to vector<8xf32>
        %287 = vector.fma %286, %286, %286 : vector<8xf32>
        %288 = math.cttz %true_27 : i1
        %289 = index.add %rank, %269
        memref.store %280, %alloc_13[%c1, %c3, %c2] : memref<8x4x3xi16>
        %extracted_54 = tensor.extract %21[] : tensor<i32>
        %290 = vector.gather %alloc_11[%c3] [%274], %273, %275 : memref<8xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %291 = vector.insert %c437496963_i64, %275 [3] : i64 into vector<4xi64>
        %292 = index.mul %c9, %c5
        %293 = bufferization.to_memref %collapsed : memref<16x8xi32>
        %294 = index.sizeof
        %dest_55, %accumulated_value_56 = vector.scan <add>, %33, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<8x4xf32>, vector<8xf32>
        %295 = vector.splat %false_2 : vector<4x4x8xi1>
        %296 = vector.extract %33[5] : vector<8x4xf32>
        %297 = affine.load %29[%c0] : memref<8xi16>
        %298 = arith.minsi %297, %297 : i16
        %splat_57 = tensor.splat %c-20224_i16 : tensor<4x4x8xi16>
        linalg.yield %in : f32
      } -> tensor<8x4x3xf32>
      %264 = math.absf %8 : tensor<8x4x3xf32>
      %cast = tensor.cast %12 : tensor<8x4x3xi1> to tensor<?x?x?xi1>
      %265 = index.divs %45, %c7
      %266 = arith.muli %c0_i32, %c0_i32 : i32
      %267 = arith.minsi %c0_i32, %c0_i32 : i32
      scf.yield %rank : index
    }
    case 4 {
      %257 = memref.load %alloc_21[%c2, %c2, %c1] : memref<4x4x8xi1>
      %258 = arith.floordivsi %c-20224_i16, %c6869_i16 : i16
      %true_49 = index.bool.constant true
      %259 = bufferization.to_memref %3 : memref<4xi32>
      %260 = vector.insert %false, %54 [3] : i1 into vector<8xi1>
      %261 = bufferization.to_memref %9 : memref<8xf16>
      %262 = vector.broadcast %cst_5 : f32 to vector<8xf32>
      %dest_50, %accumulated_value_51 = vector.scan <minf>, %33, %262 {inclusive = true, reduction_dim = 1 : i64} : vector<8x4xf32>, vector<8xf32>
      %263 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %264 = arith.remf %cst_4, %cst_3 : f16
      %265 = memref.load %alloc_12[%c3, %c2, %c0] : memref<4x4x8xi16>
      %266 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %267 = vector.fma %266, %266, %266 : vector<4xf32>
      %268 = math.sqrt %9 : tensor<8xf16>
      %269 = vector.extract %54[5] : vector<8xi1>
      %270 = arith.shrui %c-20224_i16, %c-175_i16 : i16
      %alloc_52 = memref.alloc() : memref<4x4x8xi64>
      memref.copy %alloc_18, %alloc_52 : memref<4x4x8xi64> to memref<4x4x8xi64>
      %271 = arith.subi %true_6, %52 : i1
      scf.yield %45 : index
    }
    default {
      memref.assume_alignment %alloc_12, 8 : memref<4x4x8xi16>
      %257 = math.sqrt %9 : tensor<8xf16>
      %258 = bufferization.to_tensor %64 : memref<8x4x3xi32>
      %259 = arith.divsi %true_6, %true_27 : i1
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %36, %54, %true_27 : vector<8xi1>, vector<8xi1> into i1
      %261 = bufferization.to_tensor %alloc_12 : memref<4x4x8xi16>
      %262 = vector.create_mask %62 : vector<8xi1>
      %rank_49 = tensor.rank %18 : tensor<4xi32>
      %263 = vector.matrix_multiply %54, %54 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
      %alloc_50 = memref.alloc() : memref<4x4xi64>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50 : memref<4x4xi64>) outs(%15 : tensor<4x4x8xi64>) {
      ^bb0(%in: i64, %out: i64):
        %271 = vector.broadcast %62 : index to vector<3xindex>
        %272 = vector.broadcast %true_27 : i1 to vector<3xi1>
        %273 = vector.broadcast %c52904209_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_17[%c5, %c2, %c0] [%271], %272, %273 : memref<8x4x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %274 = index.sub %31, %45
        %275 = vector.broadcast %cst_5 : f32 to vector<4xf32>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %33, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<8x4xf32>, vector<4xf32>
        %276 = math.atan2 %cst_5, %cst_5 : f32
        %277 = arith.maxui %false_25, %false : i1
        %278 = vector.shuffle %36, %263 [1, 2, 6, 8] : vector<8xi1>, vector<1xi1>
        %279 = index.sizeof
        %280 = arith.negf %cst_4 : f16
        %281 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %33, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<8x4xf32>, vector<4xf32>
        %282 = arith.negf %cst_3 : f16
        %283 = arith.maxf %cst_1, %cst : f16
        %284 = tensor.empty(%c13) : tensor<?xf32>
        %285 = affine.min affine_map<(d0) -> (0, d0 * -127, d0 * 32 - 1)>(%c2)
        %286 = affine.min affine_map<(d0, d1) -> (d1, (d1 floordiv 32 - 2) mod 8)>(%c1, %c10)
        %287 = arith.divsi %false_25, %true_6 : i1
        %288 = arith.maxui %52, %false : i1
        %collapsed_55 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<8x4x3xf16> into tensor<32x3xf16>
        %289 = arith.floordivsi %out, %c437496963_i64 : i64
        %290 = memref.realloc %29 : memref<8xi16> to memref<4xi16>
        %291 = math.floor %cst_0 : f32
        %292 = math.atan2 %collapsed_55, %collapsed_55 : tensor<32x3xf16>
        %293 = vector.matrix_multiply %36, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %294 = vector.broadcast %cst_5 : f32 to vector<4x4x8xf32>
        %295 = vector.fma %294, %294, %294 : vector<4x4x8xf32>
        %296 = memref.atomic_rmw maxs %out, %alloc_14[%c2, %c2, %c0] : (i64, memref<8x4x3xi64>) -> i64
        %297 = index.floordivs %c0, %c5
        %298 = math.absf %9 : tensor<8xf16>
        %from_elements_56 = tensor.from_elements %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5 : tensor<4x4x8xf32>
        %299 = math.copysign %5, %8 : tensor<8x4x3xf32>
        %300 = math.tan %cst_1 : f16
        %301 = vector.insertelement %true_27, %263[%c15 : index] : vector<1xi1>
        %302 = math.rsqrt %cst : f16
        %303 = vector.broadcast %cst : f16 to vector<f16>
        %304 = vector.transfer_write %303, %9[%c12] : vector<f16>, tensor<8xf16>
        linalg.yield %c437496963_i64 : i64
      } -> tensor<4x4x8xi64>
      %265 = arith.addi %c437496963_i64, %c52904209_i64 : i64
      %266 = math.log %6 : tensor<8x4x3xf32>
      %267 = arith.cmpi uge, %c437496963_i64, %c437496963_i64 : i64
      %268 = vector.extract %19[2] : vector<8xi1>
      %269 = bufferization.clone %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
      %270 = vector.flat_transpose %54 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      scf.yield %rank_49 : index
    }
    %70 = arith.minf %cst_7, %cst_7 : f16
    %71 = scf.while (%arg3 = %cst_7) : (f16) -> f16 {
      %257 = arith.addi %c6869_i16, %c6869_i16 : i16
      scf.if %true_27 {
        %262 = arith.addi %52, %true : i1
        %263 = arith.cmpi ugt, %false, %52 : i1
        memref.store %c0_i32, %alloc_19[%c1, %c1, %c0] : memref<8x4x3xi32>
        %264 = vector.insertelement %false_25, %19[%c1 : index] : vector<8xi1>
        %inserted_50 = tensor.insert %c0_i32 into %collapsed[%c13, %c7] : tensor<16x8xi32>
        %265 = arith.addi %c6869_i16, %c6869_i16 : i16
        %266 = math.roundeven %arg3 : f16
        %267 = math.tan %8 : tensor<8x4x3xf32>
      }
      memref.assume_alignment %alloc_17, 2 : memref<8x4x3xi64>
      %258 = arith.minui %false_25, %false : i1
      %splat_49 = tensor.splat %c437496963_i64 : tensor<4xi64>
      %259 = arith.mulf %cst_5, %cst_0 : f32
      %260 = affine.load %alloc_16[%c8] : memref<8xi16>
      %261 = arith.floordivsi %true, %false_25 : i1
      scf.condition(%false) %cst_1 : f16
    } do {
    ^bb0(%arg3: f16):
      memref.store %c0_i32, %alloc_24[%c3] : memref<4xi32>
      %257 = arith.remf %cst_4, %arg3 : f16
      %258 = arith.andi %52, %52 : i1
      %259 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
      %260 = vector.broadcast %false_25 : i1 to vector<4xi1>
      %261 = vector.gather %43[%c10, %c0, %c14] [%259], %260, %259 : tensor<8x4x3xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %262 = index.add %31, %c14
      %263 = index.sizeof
      memref.assume_alignment %alloc_21, 8 : memref<4x4x8xi1>
      bufferization.dealloc_tensor %9 : tensor<8xf16>
      %cast = tensor.cast %43 : tensor<8x4x3xi32> to tensor<?x?x?xi32>
      %264 = arith.negf %cst : f16
      %alloc_49 = memref.alloc() : memref<4xf32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_10, %alloc_49 : memref<8xf32>, memref<4xf32>) outs(%5 : tensor<8x4x3xf32>) {
      ^bb0(%in: f32, %in_51: f32, %out: f32):
        %272 = arith.minui %52, %false_2 : i1
        %273 = math.log %cst_4 : f16
        %collapsed_52 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x4x3xf32> into tensor<32x3xf32>
        %false_53 = index.bool.constant false
        %274 = arith.xori %false_53, %false_53 : i1
        %275 = bufferization.to_memref %11 : memref<4xi64>
        %276 = arith.remui %52, %false_25 : i1
        %277 = memref.atomic_rmw minu %c0_i32, %alloc_19[%c2, %c2, %c0] : (i32, memref<8x4x3xi32>) -> i32
        %278 = bufferization.to_memref %15 : memref<4x4x8xi64>
        %279 = tensor.empty() : tensor<8xi64>
        %280 = index.sizeof
        %281 = bufferization.clone %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
        %282 = vector.create_mask %c3, %c8, %62 : vector<8x4x3xi1>
        %283 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 16) * 8 + 8, ((d0 ceildiv 16) mod 8) floordiv 64)>(%262, %66)
        %284 = vector.splat %rank : vector<4xindex>
        %285 = vector.multi_reduction <or>, %261, %c0_i32 [0] : vector<4xi32> to i32
        %286 = arith.shrui %c437496963_i64, %c52904209_i64 : i64
        %287 = arith.ori %false_2, %false_2 : i1
        %288 = arith.shrui %true_6, %false_53 : i1
        %from_elements_54 = tensor.from_elements %false, %true, %false_25, %false, %true_6, %false, %false_25, %false, %true_6, %true_27, %false, %false_53, %true_27, %52, %false_2, %true_6, %false_25, %true_27, %false_2, %true_27, %true_6, %52, %false_53, %false_53, %true_27, %false, %52, %false_25, %true_27, %false, %52, %false, %false, %52, %true_27, %false_25, %false, %false_2, %false_25, %true, %false_25, %false_2, %true, %52, %false_53, %false_53, %false, %true_27, %false_53, %true, %false_25, %true_27, %false_2, %false_25, %false_53, %true, %true_6, %false_25, %true, %true_27, %true_27, %false_25, %false_25, %true_27, %true_27, %false_2, %false, %false, %true_27, %false_53, %true_27, %false_2, %false_25, %true_27, %false, %false, %true, %52, %false_2, %52, %true_6, %true, %false_25, %52, %false_2, %false_2, %false_25, %false, %false_2, %false_2, %true_6, %false, %false, %52, %false, %false_2, %true_27, %false_53, %true_27, %true_27, %false_53, %true_27, %true, %false_53, %false_25, %false_25, %true_6, %false_25, %true_6, %52, %true, %true_27, %false_2, %true_6, %false_2, %false_53, %false_2, %false_25, %52, %true_27, %true_27, %false_2, %true, %52, %false_53, %false, %true_27, %false_2 : tensor<4x4x8xi1>
        %289 = math.sqrt %14 : tensor<8x4x3xf16>
        %290 = tensor.empty(%c6) : tensor<?x4x3xf16>
        bufferization.dealloc_tensor %9 : tensor<8xf16>
        %291 = math.absi %21 : tensor<i32>
        %292 = arith.divf %out, %cst_5 : f32
        %293 = math.powf %49, %49 : tensor<4x4x8xf16>
        %294 = tensor.empty() : tensor<8xf32>
        %295 = vector.broadcast %cst_5 : f32 to vector<4xf32>
        %296 = vector.gather %294[%c3] [%259], %260, %295 : tensor<8xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %collapsed_55 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x4x3xf32> into tensor<32x3xf32>
        %297 = arith.remui %c-20224_i16, %c-175_i16 : i16
        %298 = index.maxu %c13, %62
        %extracted_56 = tensor.extract %11[%c3] : tensor<4xi64>
        %299 = arith.shrsi %true_27, %false : i1
        linalg.yield %in : f32
      } -> tensor<8x4x3xf32>
      %266 = math.log10 %10 : tensor<4xf16>
      %alloc_50 = memref.alloc() : memref<8x9xi32>
      %267 = tensor.empty() : tensor<16x9xi32>
      %268 = linalg.matmul ins(%collapsed, %alloc_50 : tensor<16x8xi32>, memref<8x9xi32>) outs(%267 : tensor<16x9xi32>) -> tensor<16x9xi32>
      %269 = math.log1p %10 : tensor<4xf16>
      %270 = arith.remui %false, %false : i1
      %271 = math.powf %cst_7, %cst_7 : f16
      scf.yield %cst_1 : f16
    }
    %alloc_28 = memref.alloc() : memref<8x3xi32>
    %72 = tensor.empty() : tensor<16x3xi32>
    %73 = linalg.matmul ins(%collapsed, %alloc_28 : tensor<16x8xi32>, memref<8x3xi32>) outs(%72 : tensor<16x3xi32>) -> tensor<16x3xi32>
    %74 = arith.shrsi %c52904209_i64, %c52904209_i64 : i64
    %75 = math.exp2 %cst_3 : f16
    %76 = math.log %5 : tensor<8x4x3xf32>
    %77 = arith.cmpi ugt, %52, %52 : i1
    bufferization.dealloc_tensor %17 : tensor<4x4x8xi32>
    %rank_29 = tensor.rank %18 : tensor<4xi32>
    %78 = math.round %cst_7 : f16
    %79 = vector.broadcast %c437496963_i64 : i64 to vector<8xi64>
    %80 = vector.broadcast %c0_i32 : i32 to vector<8xi32>
    %81 = vector.gather %11[%c3] [%80], %54, %79 : tensor<4xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
    %82 = index.add %62, %62
    %83 = vector.extract_strided_slice %33 {offsets = [3], sizes = [4], strides = [1]} : vector<8x4xf32> to vector<4x4xf32>
    %84 = vector.splat %c9 : vector<8xindex>
    %85 = math.cttz %11 : tensor<4xi64>
    %86 = arith.minf %cst_7, %cst_3 : f16
    %87 = arith.muli %c0_i32, %c0_i32 : i32
    %88 = scf.index_switch %c13 -> index 
    case 1 {
      %257 = arith.subi %c-175_i16, %c-20224_i16 : i16
      %258 = vector.insertelement %c52904209_i64, %81[%c6 : index] : vector<8xi64>
      %259 = math.sqrt %7 : tensor<8x4x3xf16>
      %260 = math.rsqrt %14 : tensor<8x4x3xf16>
      %261 = affine.load %alloc_21[%c11, %c4, %c5] : memref<4x4x8xi1>
      %262 = math.expm1 %cst_1 : f16
      %263 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
      %264 = vector.broadcast %261 : i1 to vector<4xi1>
      %265 = vector.maskedload %64[%c6, %c1, %c2], %264, %263 : memref<8x4x3xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %266 = arith.cmpi ult, %261, %false : i1
      %267 = arith.minui %c52904209_i64, %c437496963_i64 : i64
      %splat_49 = tensor.splat %261 : tensor<4xi1>
      %268 = math.copysign %8, %6 : tensor<8x4x3xf32>
      %269 = index.sub %c13, %c3
      %270 = affine.for %arg3 = 0 to 116 iter_args(%arg4 = %collapsed) -> (tensor<16x8xi32>) {
        affine.yield %collapsed : tensor<16x8xi32>
      }
      %271 = arith.remf %cst_3, %cst_4 : f16
      %272 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, d2 - d1 - 8 == 0)>(%c11, %c10, %c0) -> f16 {
        %274 = math.log10 %7 : tensor<8x4x3xf16>
        %from_elements_50 = tensor.from_elements %c-175_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c6869_i16 : tensor<8x4x3xi16>
        %275 = vector.broadcast %cst_0 : f32 to vector<8x4x3xf32>
        %276 = vector.fma %275, %275, %275 : vector<8x4x3xf32>
        %277 = arith.divui %true_27, %false_25 : i1
        %278 = math.expm1 %6 : tensor<8x4x3xf32>
        %279 = tensor.empty(%c12, %c5) : tensor<?x4x?xi32>
        %280 = arith.mulf %cst_1, %cst_4 : f16
        %281 = vector.load %alloc_8[%c4] : memref<8xi1>, vector<8xi1>
        affine.yield %cst_1 : f16
      } else {
        %274 = math.fma %cst_0, %cst_5, %cst_5 : f32
        memref.store %c0_i32, %64[%c6, %c2, %c1] : memref<8x4x3xi32>
        %275 = bufferization.clone %29 : memref<8xi16> to memref<8xi16>
        %276 = vector.extract_strided_slice %54 {offsets = [0], sizes = [1], strides = [1]} : vector<8xi1> to vector<1xi1>
        %277 = index.maxu %c11, %269
        %278 = memref.atomic_rmw muli %c52904209_i64, %alloc_11[%c3] : (i64, memref<8xi64>) -> i64
        %279 = arith.xori %false_25, %false_25 : i1
        %280 = math.log %cst_0 : f32
        affine.yield %cst : f16
      }
      %273 = arith.minsi %true, %false : i1
      scf.yield %39 : index
    }
    case 2 {
      %257 = index.add %c2, %rank
      %258 = vector.insert %c437496963_i64, %81 [0] : i64 into vector<8xi64>
      %259 = vector.create_mask %c14 : vector<8xi1>
      %260 = math.round %9 : tensor<8xf16>
      %261 = arith.minf %cst_4, %cst_1 : f16
      %collapsed_49 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<8x4x3xi64> into tensor<32x3xi64>
      %262 = math.round %5 : tensor<8x4x3xf32>
      %263 = math.round %8 : tensor<8x4x3xf32>
      %264 = index.add %257, %rank
      %265 = arith.floordivsi %true, %false_2 : i1
      memref.copy %60, %alloc_16 : memref<8xi16> to memref<8xi16>
      %266 = bufferization.to_tensor %alloc_18 : memref<4x4x8xi64>
      %from_elements_50 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<4x4x8xi32>
      %267 = index.ceildivu %c0, %264
      %268 = arith.minf %cst_1, %cst_7 : f16
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 128, d0 - d1, d1 mod 32, (d0 floordiv 128) * 512 + 2)>(%39, %c14, %rank_29, %66)
      scf.yield %c4 : index
    }
    default {
      %257 = math.round %cst_0 : f32
      %258 = math.log %9 : tensor<8xf16>
      %259 = arith.negf %cst_5 : f32
      %260 = vector.broadcast %cst_5 : f32 to vector<f32>
      %261 = vector.transfer_write %260, %8[%c2, %rank_29, %c6] : vector<f32>, tensor<8x4x3xf32>
      %262 = affine.min affine_map<(d0) -> (d0 + 16, d0 * 2, d0 * 4, d0 + 16)>(%c10)
      %263 = math.floor %5 : tensor<8x4x3xf32>
      bufferization.dealloc_tensor %transposed : tensor<4xi32>
      %264 = scf.if %false -> (i64) {
        %273 = math.log10 %cst_1 : f16
        %274 = arith.xori %c-175_i16, %c-20224_i16 : i16
        %275 = vector.broadcast %cst_4 : f16 to vector<8xf16>
        %276 = vector.gather %14[%c15, %c10, %c8] [%80], %54, %275 : tensor<8x4x3xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %cast = tensor.cast %11 : tensor<4xi64> to tensor<?xi64>
        %277 = vector.matrix_multiply %80, %80 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
        %278 = bufferization.to_memref %11 : memref<4xi64>
        %279 = math.round %cst_1 : f16
        %280 = arith.xori %c6869_i16, %c-175_i16 : i16
        scf.yield %c52904209_i64 : i64
      } else {
        %273 = math.tanh %6 : tensor<8x4x3xf32>
        %274 = affine.load %alloc_17[%c13, %c8, %c0] : memref<8x4x3xi64>
        %rank_49 = tensor.rank %11 : tensor<4xi64>
        %275 = arith.shli %true, %false : i1
        %276 = arith.remui %false, %true : i1
        %277 = math.round %9 : tensor<8xf16>
        %278 = arith.maxsi %c437496963_i64, %c52904209_i64 : i64
        %279 = vector.broadcast %c-175_i16 : i16 to vector<4x8xi16>
        vector.transfer_write %279, %alloc_13[%c3, %rank, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x8xi16>, memref<8x4x3xi16>
        scf.yield %274 : i64
      }
      %265 = math.log1p %14 : tensor<8x4x3xf16>
      memref.copy %alloc_22, %alloc_13 : memref<8x4x3xi16> to memref<8x4x3xi16>
      %266 = vector.bitcast %19 : vector<8xi1> to vector<8xi1>
      %267 = vector.broadcast %cst_5 : f32 to vector<8xf32>
      %268 = vector.fma %267, %267, %267 : vector<8xf32>
      %269 = arith.maxui %c0_i32, %c0_i32 : i32
      %270 = math.sqrt %8 : tensor<8x4x3xf32>
      %271 = vector.insert %cst_5, %267 [3] : f32 into vector<8xf32>
      %272 = math.absf %14 : tensor<8x4x3xf16>
      scf.yield %c11 : index
    }
    %89 = math.ipowi %3, %3 : tensor<4xi32>
    %90 = vector.broadcast %c437496963_i64 : i64 to vector<4x4x8xi64>
    %91 = vector.broadcast %true_27 : i1 to vector<4x4x8xi1>
    %92 = vector.broadcast %c0_i32 : i32 to vector<4x4x8xi32>
    %93 = vector.gather %11[%62] [%92], %91, %90 : tensor<4xi64>, vector<4x4x8xi32>, vector<4x4x8xi1>, vector<4x4x8xi64> into vector<4x4x8xi64>
    %94 = arith.cmpf ogt, %cst_7, %cst_3 : f16
    %95 = arith.mulf %cst_0, %cst_0 : f32
    %96 = bufferization.to_tensor %alloc_13 : memref<8x4x3xi16>
    %97 = vector.extract %54[1] : vector<8xi1>
    %98 = math.copysign %cst_5, %cst_5 : f32
    %99 = math.round %cst_4 : f16
    %100 = vector.shuffle %33, %83 [0, 1, 2, 3, 5, 7, 8, 9] : vector<8x4xf32>, vector<4x4xf32>
    %101 = arith.addi %c0_i32, %c0_i32 : i32
    memref.store %c437496963_i64, %alloc_14[%c5, %c1, %c1] : memref<8x4x3xi64>
    %102 = arith.maxsi %c-175_i16, %c6869_i16 : i16
    %103 = vector.broadcast %cst_5 : f32 to vector<8xf32>
    %rank_30 = tensor.rank %2 : tensor<4xi1>
    %104 = math.tan %cst_5 : f32
    %105 = math.cttz %11 : tensor<4xi64>
    %106 = arith.negf %cst_4 : f16
    %107 = math.floor %10 : tensor<4xf16>
    %108 = bufferization.to_memref %8 : memref<8x4x3xf32>
    %109 = math.cos %cst_4 : f16
    %110 = vector.extract %83[3] : vector<4x4xf32>
    %111 = index.sub %c15, %62
    %112 = math.copysign %10, %10 : tensor<4xf16>
    %inserted_31 = tensor.insert %cst into %9[%c6] : tensor<8xf16>
    %113 = bufferization.to_tensor %29 : memref<8xi16>
    %114 = vector.extract %19[1] : vector<8xi1>
    %115 = vector.broadcast %c6 : index to vector<3xindex>
    %116 = vector.broadcast %true_6 : i1 to vector<3xi1>
    %117 = vector.broadcast %cst_0 : f32 to vector<3xf32>
    vector.scatter %alloc_23[%c1] [%115], %116, %117 : memref<3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
    %118 = math.log %14 : tensor<8x4x3xf16>
    %119 = vector.broadcast %c0_i32 : i32 to vector<4xi32>
    %120 = vector.multi_reduction <mul>, %92, %119 [0, 2] : vector<4x4x8xi32> to vector<4xi32>
    %121 = math.round %9 : tensor<8xf16>
    %122 = arith.divf %cst_4, %cst_1 : f16
    %123 = arith.maxui %52, %52 : i1
    %124 = arith.andi %c-20224_i16, %c-175_i16 : i16
    %125 = arith.remui %c437496963_i64, %c52904209_i64 : i64
    %126 = math.absi %c52904209_i64 : i64
    %127 = arith.muli %false_2, %true : i1
    %128 = math.log %6 : tensor<8x4x3xf32>
    %129 = arith.xori %false_25, %false_25 : i1
    %130 = index.add %c9, %c10
    %131 = math.log10 %cst_1 : f16
    %132 = arith.shli %c52904209_i64, %c52904209_i64 : i64
    %133 = vector.shuffle %81, %81 [1, 2, 3, 10, 11, 12, 15] : vector<8xi64>, vector<8xi64>
    %134 = math.tan %7 : tensor<8x4x3xf16>
    %135 = math.copysign %6, %6 : tensor<8x4x3xf32>
    %136 = arith.addi %false, %false : i1
    %137 = math.rsqrt %14 : tensor<8x4x3xf16>
    %138 = vector.extract_strided_slice %36 {offsets = [5], sizes = [1], strides = [1]} : vector<8xi1> to vector<1xi1>
    %139 = arith.maxsi %c-20224_i16, %c-20224_i16 : i16
    %140 = vector.splat %true_27 : vector<8x4x3xi1>
    %141 = math.floor %cst_3 : f16
    %142 = math.cos %14 : tensor<8x4x3xf16>
    scf.execute_region {
      %alloc_49 = memref.alloc() : memref<3x9xi32>
      %257 = tensor.empty() : tensor<16x9xi32>
      %258 = linalg.matmul ins(%72, %alloc_49 : tensor<16x3xi32>, memref<3x9xi32>) outs(%257 : tensor<16x9xi32>) -> tensor<16x9xi32>
      %259 = math.round %9 : tensor<8xf16>
      %260 = vector.broadcast %true_6 : i1 to vector<4x8xi1>
      %261 = vector.insert %260, %91 [3] : vector<4x8xi1> into vector<4x4x8xi1>
      %262 = arith.minf %cst_3, %cst_7 : f16
      %263 = math.ipowi %52, %true_27 : i1
      %264 = math.log10 %cst_5 : f32
      %265 = bufferization.clone %60 : memref<8xi16> to memref<8xi16>
      %266 = arith.ori %c0_i32, %c0_i32 : i32
      %267 = math.log10 %9 : tensor<8xf16>
      %268 = arith.andi %c-175_i16, %c-20224_i16 : i16
      %269 = bufferization.to_tensor %alloc_21 : memref<4x4x8xi1>
      %270 = arith.addi %c437496963_i64, %c52904209_i64 : i64
      %271 = arith.minf %cst_0, %cst_5 : f32
      memref.assume_alignment %alloc_20, 8 : memref<8xi1>
      %272 = math.atan2 %cst_4, %cst_4 : f16
      %273 = math.copysign %7, %14 : tensor<8x4x3xf16>
      scf.yield
    }
    memref.store %c6869_i16, %alloc_12[%c0, %c1, %c5] : memref<4x4x8xi16>
    %143 = math.rsqrt %10 : tensor<4xf16>
    %144 = memref.atomic_rmw ori %c0_i32, %64[%c2, %c1, %c2] : (i32, memref<8x4x3xi32>) -> i32
    %145 = math.tanh %cst_4 : f16
    %146 = arith.remf %cst, %cst_7 : f16
    %147 = vector.shuffle %92, %92 [1, 4, 6] : vector<4x4x8xi32>, vector<4x4x8xi32>
    %from_elements = tensor.from_elements %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5 : tensor<8x4x3xf32>
    %148 = vector.bitcast %54 : vector<8xi1> to vector<8xi1>
    %149 = arith.maxsi %c0_i32, %c0_i32 : i32
    %generated = tensor.generate %111, %c12, %c0 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %257 = arith.subi %true_27, %52 : i1
      %258 = arith.ori %false_2, %52 : i1
      %259 = arith.divsi %c-20224_i16, %c-20224_i16 : i16
      %260 = bufferization.to_memref %16 : memref<4x4x8xi32>
      tensor.yield %c0_i32 : i32
    } : tensor<?x?x?xi32>
    %150 = math.expm1 %cst_4 : f16
    %151 = math.fma %6, %6, %6 : tensor<8x4x3xf32>
    %152 = tensor.empty() : tensor<4xi16>
    %153 = arith.ceildivsi %true_27, %false : i1
    %154 = arith.andi %c437496963_i64, %c437496963_i64 : i64
    %155 = arith.shrui %true, %true : i1
    %156 = math.floor %cst_3 : f16
    %157 = math.log1p %cst : f16
    %158 = math.fma %5, %5, %5 : tensor<8x4x3xf32>
    %rank_32 = tensor.rank %9 : tensor<8xf16>
    %159 = arith.subi %false_2, %52 : i1
    %160 = arith.floordivsi %c-175_i16, %c-20224_i16 : i16
    %161 = arith.remui %c52904209_i64, %c52904209_i64 : i64
    %162 = vector.broadcast %c0_i32 : i32 to vector<4x8xi32>
    %163 = vector.insert %162, %92 [0] : vector<4x8xi32> into vector<4x4x8xi32>
    %splat_33 = tensor.splat %cst_0 : tensor<4xf32>
    %164 = arith.divsi %true_6, %false : i1
    %165 = arith.negf %cst_4 : f16
    %166 = arith.remf %cst_7, %cst_1 : f16
    %167 = math.floor %5 : tensor<8x4x3xf32>
    %168 = arith.andi %false_2, %52 : i1
    %169 = vector.broadcast %cst_1 : f16 to vector<8x4x3xf16>
    %170 = arith.negf %cst_0 : f32
    %171 = math.log %10 : tensor<4xf16>
    %172 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 mod 8) mod 64, (d3 + 16) ceildiv 2, (d3 + 16) ceildiv 2, d2)>(%c7, %130, %c2, %c3)
    %173 = arith.andi %false, %true_27 : i1
    %174 = vector.extract %91[0] : vector<4x4x8xi1>
    %175 = arith.shrui %52, %true_27 : i1
    %alloc_34 = memref.alloc() : memref<8xf32>
    memref.copy %alloc_10, %alloc_34 : memref<8xf32> to memref<8xf32>
    %176 = arith.divf %cst, %cst : f16
    %177 = vector.extract %92[1] : vector<4x4x8xi32>
    %178 = math.absf %7 : tensor<8x4x3xf16>
    %179 = arith.remsi %c-175_i16, %c-175_i16 : i16
    bufferization.dealloc_tensor %5 : tensor<8x4x3xf32>
    %180 = arith.maxf %cst_5, %cst_5 : f32
    %181 = math.log10 %cst_5 : f32
    %182 = math.floor %6 : tensor<8x4x3xf32>
    %dest_35, %accumulated_value_36 = vector.scan <and>, %174, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<4x8xi1>, vector<8xi1>
    %183 = arith.floordivsi %c6869_i16, %c-175_i16 : i16
    memref.alloca_scope  {
      %257 = arith.cmpi ugt, %true_27, %false : i1
      %258 = vector.extract_strided_slice %162 {offsets = [0], sizes = [3], strides = [1]} : vector<4x8xi32> to vector<3x8xi32>
      %259 = index.castu %c0_i32 : i32 to index
      %260 = vector.broadcast %c437496963_i64 : i64 to vector<4x8xi64>
      %dest_49, %accumulated_value_50 = vector.scan <minui>, %90, %260 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4x8xi64>, vector<4x8xi64>
      %extracted_51 = tensor.extract %3[%c1] : tensor<4xi32>
      %261 = vector.matrix_multiply %54, %36 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
      %from_elements_52 = tensor.from_elements %true_27, %true_27, %52, %true_6, %52, %false_25, %52, %52, %false, %false_25, %false_25, %true_6, %false_25, %false_2, %false_25, %false_2, %false, %false_25, %true_6, %false_2, %true_6, %false, %false_2, %true, %false, %true_6, %52, %true, %true_6, %true_27, %52, %false_25, %false, %true, %true_27, %52, %true_27, %false, %false_2, %true_6, %true_27, %false_25, %true_6, %true_6, %true_6, %52, %true_27, %true, %false_2, %false_25, %false_25, %true, %true_27, %false_25, %true_6, %false_2, %true_27, %false_2, %true_27, %false_25, %false_2, %true_6, %false_2, %false, %false, %true, %false, %false, %false_2, %false_2, %false_2, %true_6, %false_2, %true_6, %false_25, %52, %false, %true_6, %true, %false_2, %false_2, %true, %true, %false, %true_6, %true_27, %true, %true_6, %true_6, %true_6, %false, %true, %true_27, %false_25, %true, %false_2 : tensor<8x4x3xi1>
      %from_elements_53 = tensor.from_elements %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64 : tensor<8x4x3xi64>
      %262 = vector.create_mask %82, %c10, %rank_29 : vector<8x4x3xi1>
      %263 = index.add %111, %c7
      bufferization.dealloc_tensor %9 : tensor<8xf16>
      %alloc_54 = memref.alloc() : memref<8x4xi32>
      %264 = tensor.empty() : tensor<16x4xi32>
      %265 = linalg.matmul ins(%collapsed, %alloc_54 : tensor<16x8xi32>, memref<8x4xi32>) outs(%264 : tensor<16x4xi32>) -> tensor<16x4xi32>
      %266 = vector.create_mask %c4, %rank_32, %c15 : vector<8x4x3xi1>
      %267 = memref.realloc %alloc_9 : memref<4xi32> to memref<8xi32>
      memref.copy %alloc_8, %alloc_20 : memref<8xi1> to memref<8xi1>
      %rank_55 = tensor.rank %5 : tensor<8x4x3xf32>
      %268 = math.copysign %49, %49 : tensor<4x4x8xf16>
      %269 = arith.ori %false_2, %true_6 : i1
      %270 = math.round %9 : tensor<8xf16>
      %271 = math.exp2 %cst_1 : f16
      %272 = index.casts %true : i1 to index
      %273 = arith.negf %cst_3 : f16
      %274 = arith.shli %c-175_i16, %c-20224_i16 : i16
      %275 = arith.divui %true, %52 : i1
      %276 = index.mul %259, %66
      %277 = index.maxu %c9, %c12
      %278 = math.floor %9 : tensor<8xf16>
      %279 = arith.minui %c0_i32, %extracted_51 : i32
      %280 = math.round %cst : f16
      %281 = math.round %49 : tensor<4x4x8xf16>
      %cst_56 = arith.constant 1.000000e+00 : f16
      %cst_57 = arith.constant 0.000000e+00 : f16
      %282 = vector.transfer_read %7[%c9, %277, %62], %cst_57 : tensor<8x4x3xf16>, vector<f16>
      %alloc_58 = memref.alloc() : memref<4x4xi32>
      %283 = tensor.empty() : tensor<16x4xi32>
      %284 = linalg.matmul ins(%264, %alloc_58 : tensor<16x4xi32>, memref<4x4xi32>) outs(%283 : tensor<16x4xi32>) -> tensor<16x4xi32>
    }
    %184 = vector.bitcast %92 : vector<4x4x8xi32> to vector<4x4x8xf32>
    %extracted = tensor.extract %49[%c2, %c3, %c5] : tensor<4x4x8xf16>
    %185 = scf.while (%arg3 = %alloc_18) : (memref<4x4x8xi64>) -> memref<4x4x8xi64> {
      %257 = vector.gather %alloc[%c13, %c2, %c5] [%80], %54, %80 : memref<8x4x3xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %258 = arith.addi %true_27, %true_6 : i1
      %259 = vector.reduction <add>, %79 : vector<8xi64> into i64
      %260 = math.fpowi %8, %43 : tensor<8x4x3xf32>, tensor<8x4x3xi32>
      %261 = bufferization.clone %alloc : memref<8x4x3xi32> to memref<8x4x3xi32>
      %262 = math.log %10 : tensor<4xf16>
      %263 = math.log1p %5 : tensor<8x4x3xf32>
      bufferization.dealloc_tensor %6 : tensor<8x4x3xf32>
      scf.condition(%false_25) %alloc_18 : memref<4x4x8xi64>
    } do {
    ^bb0(%arg3: memref<4x4x8xi64>):
      memref.store %c6869_i16, %alloc_13[%c0, %c1, %c2] : memref<8x4x3xi16>
      %257 = memref.alloca_scope  -> (i64) {
        %272 = vector.broadcast %cst_5 : f32 to vector<8xf32>
        %273 = vector.fma %272, %272, %272 : vector<8xf32>
        %274 = math.fma %6, %5, %from_elements : tensor<8x4x3xf32>
        %275 = arith.addi %false, %true_27 : i1
        %276 = math.round %9 : tensor<8xf16>
        %277 = arith.andi %true, %true_6 : i1
        %278 = memref.atomic_rmw maxu %c-175_i16, %alloc_12[%c1, %c0, %c0] : (i16, memref<4x4x8xi16>) -> i16
        %279 = math.log %7 : tensor<8x4x3xf16>
        %280 = vector.splat %c-175_i16 : vector<4x4x8xi16>
        %281 = arith.floordivsi %c6869_i16, %c-20224_i16 : i16
        %282 = math.cttz %152 : tensor<4xi16>
        %283 = vector.splat %false_25 : vector<4xi1>
        %284 = arith.remui %c6869_i16, %c-175_i16 : i16
        %285 = index.add %62, %c10
        %286 = arith.cmpi sgt, %c-20224_i16, %c6869_i16 : i16
        %287 = vector.flat_transpose %272 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %288 = arith.addi %false, %true : i1
        %289 = arith.shrui %false_2, %true : i1
        %290 = arith.divf %cst, %cst_7 : f16
        %291 = math.tan %6 : tensor<8x4x3xf32>
        %292 = index.ceildivu %c11, %66
        %293 = arith.ori %true_6, %false_2 : i1
        %294 = arith.remf %cst_0, %cst_5 : f32
        %295 = bufferization.clone %alloc_13 : memref<8x4x3xi16> to memref<8x4x3xi16>
        %rank_51 = tensor.rank %6 : tensor<8x4x3xf32>
        %296 = math.absi %true_27 : i1
        %297 = math.exp2 %6 : tensor<8x4x3xf32>
        %298 = affine.load %295[%c0, %c10, %c6] : memref<8x4x3xi16>
        %299 = math.sqrt %extracted : f16
        %300 = arith.minsi %true_27, %true : i1
        %301 = math.fma %cst, %cst_1, %cst_1 : f16
        %302 = affine.load %alloc_19[%c11, %c1, %c8] : memref<8x4x3xi32>
        %303 = math.ipowi %c-175_i16, %c6869_i16 : i16
        memref.alloca_scope.return %c437496963_i64 : i64
      }
      %258 = bufferization.clone %alloc_10 : memref<8xf32> to memref<8xf32>
      %259 = math.cttz %21 : tensor<i32>
      %260 = arith.ori %c0_i32, %c0_i32 : i32
      %dest_49, %accumulated_value_50 = vector.scan <and>, %174, %36 {inclusive = false, reduction_dim = 0 : i64} : vector<4x8xi1>, vector<8xi1>
      %261 = math.tanh %14 : tensor<8x4x3xf16>
      %262 = math.absf %cst_5 : f32
      %263 = vector.broadcast %false : i1 to vector<4xi1>
      %264 = vector.gather %alloc_15[%c14] [%119], %263, %119 : memref<8xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %265 = vector.create_mask %31, %c1, %rank_32 : vector<4x4x8xi1>
      %266 = arith.cmpi eq, %true_6, %52 : i1
      %267 = arith.minf %cst_4, %extracted : f16
      %268 = arith.ori %c6869_i16, %c6869_i16 : i16
      %269 = arith.divui %true, %true : i1
      %270 = arith.shrsi %true, %false_2 : i1
      %271 = arith.xori %c52904209_i64, %c52904209_i64 : i64
      scf.yield %arg3 : memref<4x4x8xi64>
    }
    %186 = math.fma %14, %14, %14 : tensor<8x4x3xf16>
    %187 = index.add %111, %c10
    %188 = math.ctpop %11 : tensor<4xi64>
    %189 = vector.shuffle %174, %174 [3, 4, 6] : vector<4x8xi1>, vector<4x8xi1>
    %190 = arith.divsi %true_27, %52 : i1
    %191 = math.atan2 %8, %8 : tensor<8x4x3xf32>
    %192 = tensor.empty(%c7) : tensor<?xf16>
    %193 = arith.remf %cst_1, %extracted : f16
    %194 = math.powf %6, %from_elements : tensor<8x4x3xf32>
    %rank_37 = tensor.rank %splat : tensor<4xi1>
    %generated_38 = tensor.generate %111 {
    ^bb0(%arg3: index):
      %257 = vector.broadcast %cst : f16 to vector<4x3x4x3xf16>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %169, %169, %257 : vector<8x4x3xf16>, vector<8x4x3xf16> into vector<4x3x4x3xf16>
      %259 = arith.remui %false_25, %false : i1
      %260 = tensor.empty() : tensor<4x4xf16>
      %alloc_49 = memref.alloc() : memref<4x8xf16>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%260, %alloc_49, %alloc_49 : tensor<4x4xf16>, memref<4x8xf16>, memref<4x8xf16>) outs(%49 : tensor<4x4x8xf16>) {
      ^bb0(%in: f16, %in_50: f16, %in_51: f16, %out: f16):
        %263 = arith.divui %c-20224_i16, %c-175_i16 : i16
        %264 = arith.muli %c-175_i16, %c-175_i16 : i16
        %inserted_52 = tensor.insert %cst_5 into %5[%c2, %c1, %c0] : tensor<8x4x3xf32>
        %265 = arith.remf %in, %in_51 : f16
        %266 = bufferization.to_tensor %alloc_10 : memref<8xf32>
        %267 = arith.addi %c437496963_i64, %c437496963_i64 : i64
        %268 = math.fma %49, %49, %49 : tensor<4x4x8xf16>
        %269 = arith.andi %c0_i32, %c0_i32 : i32
        %270 = vector.broadcast %c0_i32 : i32 to vector<8x4x3xi32>
        %271 = vector.broadcast %true_6 : i1 to vector<8x4x3xi1>
        %272 = vector.gather %alloc_19[%172, %arg3, %c6] [%270], %271, %270 : memref<8x4x3xi32>, vector<8x4x3xi32>, vector<8x4x3xi1>, vector<8x4x3xi32> into vector<8x4x3xi32>
        %273 = vector.extract %103[0] : vector<8xf32>
        %274 = arith.shrui %c-175_i16, %c-175_i16 : i16
        %275 = arith.remsi %true, %true : i1
        %276 = vector.extract_strided_slice %162 {offsets = [1], sizes = [2], strides = [1]} : vector<4x8xi32> to vector<2x8xi32>
        %277 = bufferization.to_tensor %29 : memref<8xi16>
        %278 = vector.broadcast %rank_32 : index to vector<9xindex>
        %279 = vector.broadcast %false : i1 to vector<9xi1>
        %280 = vector.broadcast %c6869_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_13[%c5, %c0, %c0] [%278], %279, %280 : memref<8x4x3xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %281 = vector.broadcast %cst_0 : f32 to vector<4x4x8xf32>
        %282 = vector.fma %281, %184, %184 : vector<4x4x8xf32>
        %283 = math.floor %extracted : f16
        %collapsed_53 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<8x4x3xf16> into tensor<32x3xf16>
        %284 = arith.remf %out, %cst_3 : f16
        %285 = vector.broadcast %c6 : index to vector<4xindex>
        %286 = vector.broadcast %true_6 : i1 to vector<4xi1>
        vector.scatter %alloc_9[%c0] [%285], %286, %119 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %287 = vector.broadcast %cst_0 : f32 to vector<8x4x3xf32>
        %288 = vector.fma %287, %287, %287 : vector<8x4x3xf32>
        %alloca = memref.alloca() : memref<8xi64>
        bufferization.dealloc_tensor %266 : tensor<8xf32>
        %289 = math.powf %10, %10 : tensor<4xf16>
        %290 = math.fma %cst_4, %cst_3, %extracted : f16
        %291 = arith.floordivsi %c0_i32, %c0_i32 : i32
        %292 = vector.shuffle %287, %287 [3, 4, 5, 6, 7, 10, 11, 12] : vector<8x4x3xf32>, vector<8x4x3xf32>
        %293 = arith.shli %c-175_i16, %c6869_i16 : i16
        %294 = arith.remf %in_50, %cst_1 : f16
        %295 = arith.minui %true_27, %false_2 : i1
        %296 = math.atan2 %cst_1, %in : f16
        memref.copy %alloc_24, %alloc_9 : memref<4xi32> to memref<4xi32>
        linalg.yield %out : f16
      } -> tensor<4x4x8xf16>
      %262 = arith.shli %c437496963_i64, %c437496963_i64 : i64
      tensor.yield %cst_3 : f16
    } : tensor<?xf16>
    %195 = index.sub %rank, %130
    memref.assume_alignment %alloc_23, 2 : memref<3xf32>
    %196 = math.absf %cst_3 : f16
    %197 = arith.cmpf false, %cst_5, %cst_5 : f32
    scf.if %52 {
      %257 = math.floor %5 : tensor<8x4x3xf32>
      %extracted_49 = tensor.extract %2[%c1] : tensor<4xi1>
      %258 = math.floor %14 : tensor<8x4x3xf16>
      %alloc_50 = memref.alloc() : memref<8xf32>
      memref.copy %alloc_10, %alloc_50 : memref<8xf32> to memref<8xf32>
      %259 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %184, %103, %83 : vector<4x4x8xf32>, vector<8xf32> into vector<4x4xf32>
      %c0_i32_51 = arith.constant 0 : i32
      %260 = vector.transfer_read %alloc[%187, %62, %c1], %c0_i32_51 : memref<8x4x3xi32>, vector<3xi32>
      %261 = arith.xori %c-175_i16, %c-20224_i16 : i16
      bufferization.dealloc_tensor %1 : tensor<8x4x3xi64>
    }
    memref.alloca_scope  {
      %257 = math.fma %from_elements, %8, %6 : tensor<8x4x3xf32>
      %cast = tensor.cast %72 : tensor<16x3xi32> to tensor<?x?xi32>
      %258 = arith.divf %cst_1, %cst_4 : f16
      %splat_49 = tensor.splat %false_25 : tensor<8xi1>
      %259 = arith.minui %c52904209_i64, %c52904209_i64 : i64
      %260 = math.exp2 %cst : f16
      %261 = arith.ori %c-175_i16, %c-175_i16 : i16
      %262 = arith.shli %c437496963_i64, %c437496963_i64 : i64
      %263 = vector.shuffle %93, %93 [1, 2, 3, 5, 7] : vector<4x4x8xi64>, vector<4x4x8xi64>
      %264 = arith.divsi %true_27, %true_6 : i1
      %265 = index.sizeof
      %266 = scf.while (%arg3 = %alloc_21) : (memref<4x4x8xi1>) -> memref<4x4x8xi1> {
        %288 = arith.minsi %c437496963_i64, %c437496963_i64 : i64
        %extracted_50 = tensor.extract %from_elements[%c2, %c0, %c0] : tensor<8x4x3xf32>
        %289 = arith.cmpf une, %cst_7, %cst_4 : f16
        %290 = affine.load %alloc_10[%c10] : memref<8xf32>
        %291 = math.exp2 %8 : tensor<8x4x3xf32>
        %true_51 = index.bool.constant true
        %292 = arith.minui %true_27, %true_51 : i1
        %cast_52 = tensor.cast %96 : tensor<8x4x3xi16> to tensor<?x?x?xi16>
        scf.condition(%false) %arg3 : memref<4x4x8xi1>
      } do {
      ^bb0(%arg3: memref<4x4x8xi1>):
        %288 = math.round %cst_7 : f16
        %289 = arith.andi %false_25, %52 : i1
        %290 = math.powf %cst_4, %cst_4 : f16
        %alloc_50 = memref.alloc() : memref<4x4x8xi64>
        memref.copy %alloc_18, %alloc_50 : memref<4x4x8xi64> to memref<4x4x8xi64>
        %291 = arith.muli %c-20224_i16, %c-20224_i16 : i16
        %splat_51 = tensor.splat %c6869_i16 : tensor<4xi16>
        %292 = vector.broadcast %true : i1 to vector<8x8xi1>
        %293 = vector.outerproduct %54, %148, %292 {kind = #vector.kind<minui>} : vector<8xi1>, vector<8xi1>
        %294 = memref.atomic_rmw andi %c6869_i16, %alloc_16[%c7] : (i16, memref<8xi16>) -> i16
        %295 = math.round %9 : tensor<8xf16>
        %296 = arith.xori %true_27, %52 : i1
        %297 = math.ctpop %c0_i32 : i32
        %298 = arith.shrui %c52904209_i64, %c52904209_i64 : i64
        %299 = bufferization.clone %108 : memref<8x4x3xf32> to memref<8x4x3xf32>
        %300 = arith.mulf %cst, %cst_4 : f16
        %301 = index.mul %c8, %c10
        %302 = vector.splat %cst_5 : vector<4x4x8xf32>
        scf.yield %alloc_21 : memref<4x4x8xi1>
      }
      %267 = vector.broadcast %cst_5 : f32 to vector<4xf32>
      %268 = vector.fma %267, %267, %110 : vector<4xf32>
      %269 = math.round %6 : tensor<8x4x3xf32>
      %270 = math.absf %9 : tensor<8xf16>
      %271 = math.floor %5 : tensor<8x4x3xf32>
      %272 = affine.load %alloc_8[%c10] : memref<8xi1>
      %273 = arith.ori %c-20224_i16, %c-20224_i16 : i16
      %274 = arith.xori %272, %false : i1
      %275 = scf.execute_region -> index {
        %288 = vector.gather %splat_33[%rank_32] [%92], %91, %184 : tensor<4xf32>, vector<4x4x8xi32>, vector<4x4x8xi1>, vector<4x4x8xf32> into vector<4x4x8xf32>
        %289 = vector.broadcast %rank_32 : index to vector<9xindex>
        %290 = vector.broadcast %false : i1 to vector<9xi1>
        %291 = vector.broadcast %c-20224_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_16[%c6] [%289], %290, %291 : memref<8xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        memref.store %c6869_i16, %alloc_16[%c2] : memref<8xi16>
        memref.store %c6869_i16, %29[%c0] : memref<8xi16>
        %292 = vector.reduction <xor>, %81 : vector<8xi64> into i64
        %293 = math.exp2 %7 : tensor<8x4x3xf16>
        %294 = bufferization.clone %alloc_18 : memref<4x4x8xi64> to memref<4x4x8xi64>
        %295 = vector.shuffle %33, %33 [6, 7, 9, 10, 11, 12] : vector<8x4xf32>, vector<8x4xf32>
        memref.assume_alignment %alloc_14, 8 : memref<8x4x3xi64>
        %extracted_50 = tensor.extract %17[%c3, %c3, %c1] : tensor<4x4x8xi32>
        %296 = arith.remui %c-175_i16, %c-175_i16 : i16
        %297 = math.log %14 : tensor<8x4x3xf16>
        %298 = index.maxu %rank_29, %39
        %299 = math.tan %cst_5 : f32
        %300 = index.sub %298, %c5
        %301 = tensor.empty() : tensor<8x3xi32>
        %302 = tensor.empty() : tensor<16x3xi32>
        %303 = linalg.matmul ins(%collapsed, %301 : tensor<16x8xi32>, tensor<8x3xi32>) outs(%302 : tensor<16x3xi32>) -> tensor<16x3xi32>
        scf.yield %111 : index
      }
      %276 = index.divu %45, %c2
      %277 = bufferization.clone %alloc_20 : memref<8xi1> to memref<8xi1>
      %278 = index.maxs %c8, %rank_30
      %279 = arith.remf %cst, %cst_4 : f16
      %280 = vector.bitcast %19 : vector<8xi1> to vector<8xi1>
      %281 = index.castu %false : i1 to index
      %282 = memref.atomic_rmw mins %c437496963_i64, %alloc_17[%c4, %c1, %c2] : (i64, memref<8x4x3xi64>) -> i64
      %283 = math.round %cst : f16
      %284 = bufferization.to_memref %113 : memref<8xi16>
      %285 = math.absi %2 : tensor<4xi1>
      %286 = bufferization.to_memref %10 : memref<4xf16>
      %287 = index.sizeof
    }
    %198 = math.log %cst_4 : f16
    %199 = arith.ori %true_27, %true_27 : i1
    %200 = bufferization.to_memref %1 : memref<8x4x3xi64>
    %201 = tensor.empty() : tensor<8xf16>
    memref.store %c437496963_i64, %200[%c6, %c3, %c1] : memref<8x4x3xi64>
    %202 = arith.remui %false_2, %false_25 : i1
    %203 = index.mul %c12, %195
    %204 = vector.broadcast %cst_0 : f32 to vector<8xf32>
    %205 = vector.fma %204, %204, %103 : vector<8xf32>
    %206 = memref.atomic_rmw ori %c0_i32, %alloc[%c5, %c1, %c2] : (i32, memref<8x4x3xi32>) -> i32
    %207 = arith.maxui %false_25, %false : i1
    %208 = arith.cmpi sle, %true_27, %true_27 : i1
    %true_39 = index.bool.constant true
    %209 = math.absf %14 : tensor<8x4x3xf16>
    %210 = index.add %c11, %c5
    %211 = index.mul %62, %c14
    %212 = math.tanh %5 : tensor<8x4x3xf32>
    %cst_40 = arith.constant 1.000000e+00 : f32
    %cst_41 = arith.constant 0.000000e+00 : f32
    %213 = vector.transfer_read %from_elements[%211, %187, %c14], %cst_41 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<8x4x3xf32>, vector<9xf32>
    memref.copy %alloc_8, %alloc_20 : memref<8xi1> to memref<8xi1>
    %generated_42 = tensor.generate %187 {
    ^bb0(%arg3: index):
      memref.assume_alignment %alloc_21, 4 : memref<4x4x8xi1>
      %257 = math.atan2 %14, %14 : tensor<8x4x3xf16>
      %258 = arith.divui %c-20224_i16, %c-175_i16 : i16
      %259 = vector.flat_transpose %110 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      tensor.yield %52 : i1
    } : tensor<?xi1>
    %rank_43 = tensor.rank %7 : tensor<8x4x3xf16>
    %214 = tensor.empty() : tensor<8x4x4xi32>
    %alloc_44 = memref.alloc() : memref<4x4xi32>
    %215 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%214, %alloc_44, %18 : tensor<8x4x4xi32>, memref<4x4xi32>, tensor<4xi32>) outs(%17 : tensor<4x4x8xi32>) {
    ^bb0(%in: i32, %in_49: i32, %in_50: i32, %out: i32):
      %257 = vector.matrix_multiply %119, %80 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<4xi32>, vector<8xi32>) -> vector<2xi32>
      %258 = arith.cmpi ult, %in_50, %out : i32
      %259 = vector.broadcast %c52904209_i64 : i64 to vector<4x4xi64>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %79, %93, %259 : vector<8xi64>, vector<4x4x8xi64> into vector<4x4xi64>
      memref.copy %alloc_16, %29 : memref<8xi16> to memref<8xi16>
      %261 = vector.flat_transpose %205 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      %262 = vector.flat_transpose %54 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %263 = math.round %5 : tensor<8x4x3xf32>
      %264 = arith.addi %true, %false : i1
      %265 = tensor.empty() : tensor<8x3xf32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %alloc_23 : tensor<8x3xf32>, memref<3xf32>) outs(%8 : tensor<8x4x3xf32>) {
      ^bb0(%in_53: f32, %in_54: f32, %out_55: f32):
        %289 = vector.insertelement %false_25, %148[%211 : index] : vector<8xi1>
        %290 = math.tan %cst_1 : f16
        %291 = math.floor %from_elements : tensor<8x4x3xf32>
        %292 = math.fpowi %cst_7, %in : f16, i32
        %293 = arith.divui %true_27, %52 : i1
        %294 = math.log10 %cst_0 : f32
        %295 = math.exp2 %7 : tensor<8x4x3xf16>
        %296 = arith.ceildivsi %true_39, %false : i1
        %collapsed_56 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<8x4x3xi1> into tensor<32x3xi1>
        %297 = arith.addi %c437496963_i64, %c437496963_i64 : i64
        %298 = arith.floordivsi %c437496963_i64, %c52904209_i64 : i64
        %299 = vector.broadcast %cst_4 : f16 to vector<4x3x4x3xf16>
        %300 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %169, %169, %299 : vector<8x4x3xf16>, vector<8x4x3xf16> into vector<4x3x4x3xf16>
        %301 = math.copysign %9, %9 : tensor<8xf16>
        %302 = vector.shuffle %36, %36 [0, 1, 4, 5, 6, 10, 11, 13, 14, 15] : vector<8xi1>, vector<8xi1>
        memref.store %out, %alloc_24[%c3] : memref<4xi32>
        %303 = arith.floordivsi %true_27, %true_27 : i1
        %304 = tensor.empty() : tensor<8xi32>
        %305 = vector.broadcast %true_6 : i1 to vector<4xi1>
        %306 = vector.gather %304[%203] [%119], %305, %119 : tensor<8xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %307 = vector.broadcast %out : i32 to vector<8xi32>
        %308 = arith.andi %c6869_i16, %c6869_i16 : i16
        %309 = math.exp2 %5 : tensor<8x4x3xf32>
        %310 = memref.atomic_rmw maxs %c-175_i16, %60[%c3] : (i16, memref<8xi16>) -> i16
        %311 = vector.create_mask %187, %82, %211 : vector<4x4x8xi1>
        %312 = math.log10 %49 : tensor<4x4x8xf16>
        %cast = tensor.cast %5 : tensor<8x4x3xf32> to tensor<?x?x?xf32>
        %313 = arith.negf %out_55 : f32
        %314 = arith.maxsi %out, %in_49 : i32
        %315 = arith.cmpf ule, %in_54, %in_53 : f32
        %316 = index.castu %c7 : index to i32
        %317 = vector.extract %174[2] : vector<4x8xi1>
        %318 = arith.addi %c-175_i16, %c-20224_i16 : i16
        %319 = arith.remui %c0_i32, %in_50 : i32
        %320 = vector.splat %cst_4 : vector<4x4x8xf16>
        linalg.yield %out_55 : f32
      } -> tensor<8x4x3xf32>
      %267 = index.casts %111 : index to i32
      %268 = vector.shuffle %162, %177 [2, 3, 5, 6] : vector<4x8xi32>, vector<4x8xi32>
      %269 = index.castu %c52904209_i64 : i64 to index
      %270 = arith.cmpi ule, %in, %c0_i32 : i32
      %rank_51 = tensor.rank %15 : tensor<4x4x8xi64>
      %271 = vector.broadcast %c52904209_i64 : i64 to vector<8x4x3xi64>
      %272 = vector.broadcast %true : i1 to vector<8x4x3xi1>
      %273 = vector.broadcast %in_49 : i32 to vector<8x4x3xi32>
      %274 = vector.gather %alloc_18[%c5, %203, %c4] [%273], %272, %271 : memref<4x4x8xi64>, vector<8x4x3xi32>, vector<8x4x3xi1>, vector<8x4x3xi64> into vector<8x4x3xi64>
      %275 = vector.load %alloc_20[%c0] : memref<8xi1>, vector<8xi1>
      %276 = arith.ceildivsi %c437496963_i64, %c52904209_i64 : i64
      %277 = math.log %10 : tensor<4xf16>
      %278 = arith.ceildivsi %true, %false_25 : i1
      %279 = arith.divsi %true, %false_25 : i1
      %280 = math.exp2 %8 : tensor<8x4x3xf32>
      %splat_52 = tensor.splat %cst_4 : tensor<8x4x3xf16>
      %281 = arith.ceildivsi %c52904209_i64, %c437496963_i64 : i64
      %282 = math.log %6 : tensor<8x4x3xf32>
      %283 = arith.floordivsi %out, %in_49 : i32
      %284 = arith.remf %cst_1, %cst_1 : f16
      %c672509853_i32 = arith.constant 672509853 : i32
      %285 = vector.flat_transpose %261 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      %286 = math.ctpop %in_50 : i32
      %287 = vector.matrix_multiply %54, %54 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
      %288 = vector.matrix_multiply %54, %287 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<1xi1>) -> vector<8xi1>
      memref.store %c437496963_i64, %200[%c6, %c0, %c0] : memref<8x4x3xi64>
      linalg.yield %c0_i32 : i32
    } -> tensor<4x4x8xi32>
    %216 = vector.broadcast %52 : i1 to vector<8x8xi1>
    %217 = vector.outerproduct %19, %54, %216 {kind = #vector.kind<minui>} : vector<8xi1>, vector<8xi1>
    %218 = arith.divui %c437496963_i64, %c437496963_i64 : i64
    %false_45 = index.bool.constant false
    %219 = vector.load %alloc_18[%c1, %c2, %c0] : memref<4x4x8xi64>, vector<8xi64>
    %220 = arith.divsi %true, %true_39 : i1
    %221 = index.add %c10, %rank_32
    %222 = index.castu %c3 : index to i32
    %223 = arith.addi %c437496963_i64, %c52904209_i64 : i64
    %224 = arith.shrsi %52, %true_39 : i1
    %225 = arith.remui %false_25, %false_2 : i1
    %226 = arith.shli %false_25, %false_2 : i1
    %227 = vector.extract_strided_slice %204 {offsets = [5], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
    %228 = vector.broadcast %true_6 : i1 to vector<4x8x8xi1>
    %229 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %91, %174, %228 : vector<4x4x8xi1>, vector<4x8xi1> into vector<4x8x8xi1>
    %230 = math.fma %splat_33, %splat_33, %splat_33 : tensor<4xf32>
    %231 = arith.remui %c-175_i16, %c6869_i16 : i16
    %232 = math.ctlz %2 : tensor<4xi1>
    %233 = math.exp2 %5 : tensor<8x4x3xf32>
    %234 = arith.minf %cst_1, %cst_1 : f16
    %235 = scf.while (%arg3 = %true_27) : (i1) -> i1 {
      %257 = math.tan %14 : tensor<8x4x3xf16>
      %258 = affine.max affine_map<(d0) -> ((d0 mod 64) floordiv 128, -((d0 mod 64) floordiv 128))>(%203)
      %259 = memref.atomic_rmw ori %c0_i32, %alloc_19[%c6, %c3, %c1] : (i32, memref<8x4x3xi32>) -> i32
      %260 = vector.broadcast %cst_40 : f32 to vector<4xf32>
      %261 = vector.fma %260, %110, %110 : vector<4xf32>
      %262 = arith.floordivsi %arg3, %true : i1
      %263 = tensor.empty() : tensor<8x4x3xi16>
      %mapped = linalg.map ins(%alloc_13, %alloc_22 : memref<8x4x3xi16>, memref<8x4x3xi16>) outs(%263 : tensor<8x4x3xi16>)
        (%in: i16, %in_49: i16) {
          memref.store %c0_i32, %alloc_24[%c1] : memref<4xi32>
          %266 = math.exp2 %5 : tensor<8x4x3xf32>
          %from_elements_50 = tensor.from_elements %c6869_i16, %in, %in, %in_49, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %in, %c-175_i16, %in, %in_49, %c-20224_i16, %in_49, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %in_49, %in, %in, %in, %c-20224_i16, %c6869_i16, %c-20224_i16, %in_49, %c-175_i16, %c-175_i16, %c-20224_i16, %in, %c6869_i16, %c6869_i16, %in, %in_49, %c6869_i16, %in, %c-20224_i16, %c6869_i16, %c-20224_i16, %in_49, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %in_49, %c-20224_i16, %c-20224_i16, %in_49, %c-20224_i16, %in_49, %c-175_i16, %in_49, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %in_49, %in, %c-20224_i16, %c-20224_i16, %c-20224_i16, %in_49, %in, %in_49, %c-20224_i16, %c-20224_i16, %in_49, %in_49, %in_49, %c-20224_i16, %in, %c6869_i16, %c-20224_i16, %in_49, %in, %in_49, %in, %c-20224_i16, %in_49, %c-175_i16, %c6869_i16, %c-20224_i16, %in_49, %c-175_i16, %in, %c-20224_i16, %c-175_i16, %in, %in_49, %c-20224_i16, %in, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %in, %c-20224_i16, %c-175_i16, %in_49, %c-175_i16, %in, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %in_49, %c6869_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %in, %in_49, %in, %in, %c-175_i16, %in, %in_49, %in_49, %in, %in_49, %c6869_i16 : tensor<4x4x8xi16>
          %267 = math.fpowi %cst_7, %c0_i32 : f16, i32
          %268 = math.log %9 : tensor<8xf16>
          %269 = math.absf %6 : tensor<8x4x3xf32>
          %270 = arith.remui %c437496963_i64, %c437496963_i64 : i64
          %271 = bufferization.to_memref %15 : memref<4x4x8xi64>
          %272 = math.round %splat_33 : tensor<4xf32>
          %273 = arith.negf %cst_4 : f16
          %274 = index.sizeof
          %275 = arith.divf %cst_40, %cst_0 : f32
          %276 = vector.broadcast %cst_40 : f32 to vector<8x4x3xf32>
          %277 = vector.fma %276, %276, %276 : vector<8x4x3xf32>
          %278 = math.cttz %18 : tensor<4xi32>
          %279 = arith.divsi %true_39, %false_25 : i1
          %splat_51 = tensor.splat %extracted : tensor<8x4x3xf16>
          %280 = memref.atomic_rmw addi %c437496963_i64, %alloc_11[%c4] : (i64, memref<8xi64>) -> i64
          %281 = arith.floordivsi %c-175_i16, %c6869_i16 : i16
          %282 = math.log %cst : f16
          %283 = index.divu %82, %66
          %284 = math.copysign %201, %201 : tensor<8xf16>
          %285 = math.floor %splat_33 : tensor<4xf32>
          %286 = arith.subi %c437496963_i64, %c437496963_i64 : i64
          %287 = math.copysign %splat_33, %splat_33 : tensor<4xf32>
          memref.copy %alloc_24, %alloc_9 : memref<4xi32> to memref<4xi32>
          %288 = arith.remf %cst_4, %cst_7 : f16
          %289 = vector.broadcast %cst_5 : f32 to vector<8x4x3xf32>
          %290 = vector.fma %289, %276, %289 : vector<8x4x3xf32>
          %cast = tensor.cast %3 : tensor<4xi32> to tensor<?xi32>
          %291 = index.add %211, %45
          %292 = vector.insertelement %true_39, %138[%c2 : index] : vector<1xi1>
          %293 = arith.maxf %cst_7, %extracted : f16
          %294 = math.powf %5, %8 : tensor<8x4x3xf32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %264 = bufferization.clone %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
      %265 = index.add %31, %c6
      scf.condition(%true) %false_25 : i1
    } do {
    ^bb0(%arg3: i1):
      %257 = bufferization.to_memref %transposed : memref<4xi32>
      %258 = math.floor %10 : tensor<4xf16>
      %alloc_49 = memref.alloc() : memref<3xf32>
      memref.copy %alloc_23, %alloc_49 : memref<3xf32> to memref<3xf32>
      %259 = tensor.empty() : tensor<4xf32>
      %260 = arith.subi %52, %arg3 : i1
      %261 = affine.max affine_map<(d0, d1, d2) -> (0)>(%c0, %c1, %172)
      %262 = math.floor %7 : tensor<8x4x3xf16>
      %263 = math.sqrt %cst : f16
      %264 = affine.load %alloc_16[%c2] : memref<8xi16>
      %265 = math.atan2 %6, %5 : tensor<8x4x3xf32>
      %266 = math.tanh %8 : tensor<8x4x3xf32>
      %267 = arith.shrsi %52, %false_2 : i1
      %c-30460_i16 = arith.constant -30460 : i16
      %268 = index.sizeof
      %269 = arith.muli %false_2, %true_39 : i1
      %270 = arith.shrui %c6869_i16, %264 : i16
      scf.yield %true : i1
    }
    %236 = math.round %14 : tensor<8x4x3xf16>
    memref.assume_alignment %alloc_12, 4 : memref<4x4x8xi16>
    %237 = bufferization.to_memref %6 : memref<8x4x3xf32>
    %238 = arith.shli %c437496963_i64, %c437496963_i64 : i64
    %splat_46 = tensor.splat %true_27 : tensor<4xi1>
    %239 = arith.floordivsi %c0_i32, %c0_i32 : i32
    %240 = arith.shrsi %true, %false_25 : i1
    %241 = index.sub %c15, %66
    %242 = arith.shrui %c0_i32, %c0_i32 : i32
    %243 = math.atan2 %201, %201 : tensor<8xf16>
    %244 = index.sizeof
    %245 = arith.maxsi %c52904209_i64, %c437496963_i64 : i64
    %246 = vector.broadcast %c0_i32 : i32 to vector<4x4xi32>
    %247 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %80, %92, %246 : vector<8xi32>, vector<4x4x8xi32> into vector<4x4xi32>
    %248 = arith.negf %cst_40 : f32
    %rank_47 = tensor.rank %6 : tensor<8x4x3xf32>
    %249 = arith.divui %true_27, %false_25 : i1
    scf.index_switch %c13 
    case 1 {
      %257 = math.exp2 %9 : tensor<8xf16>
      %258 = arith.shli %false_45, %52 : i1
      %259 = scf.while (%arg3 = %54) : (vector<8xi1>) -> vector<8xi1> {
        %270 = memref.atomic_rmw maxf %cst_0, %alloc_23[%c2] : (f32, memref<3xf32>) -> f32
        %271 = math.floor %8 : tensor<8x4x3xf32>
        %272 = vector.broadcast %true_6 : i1 to vector<4xi1>
        %273 = vector.maskedload %alloc_24[%c0], %272, %119 : memref<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %274 = vector.broadcast %c52904209_i64 : i64 to vector<i64>
        %275 = vector.transfer_write %274, %11[%rank_29] : vector<i64>, tensor<4xi64>
        %276 = arith.cmpi ule, %c-20224_i16, %c-175_i16 : i16
        %277 = arith.remui %false_25, %true_6 : i1
        %278 = vector.insertelement %true_27, %272[%c6 : index] : vector<4xi1>
        %279 = bufferization.to_tensor %200 : memref<8x4x3xi64>
        scf.condition(%true_27) %19 : vector<8xi1>
      } do {
      ^bb0(%arg3: vector<8xi1>):
        %270 = vector.insertelement %false, %36[%rank_47 : index] : vector<8xi1>
        %271 = math.log %7 : tensor<8x4x3xf16>
        %272 = index.maxs %rank_37, %rank_32
        %273 = vector.insertelement %cst_0, %103[%172 : index] : vector<8xf32>
        %274 = arith.minui %false, %true_6 : i1
        %275 = math.exp2 %14 : tensor<8x4x3xf16>
        %276 = math.floor %cst_7 : f16
        %277 = arith.negf %cst_0 : f32
        %278 = math.ctlz %false_2 : i1
        %279 = math.atan2 %7, %14 : tensor<8x4x3xf16>
        %splat_50 = tensor.splat %false : tensor<8x4x3xi1>
        %280 = index.mul %82, %c0
        %281 = math.floor %8 : tensor<8x4x3xf32>
        %282 = vector.broadcast %cst_40 : f32 to vector<8xf32>
        %283 = vector.fma %282, %103, %282 : vector<8xf32>
        %284 = arith.xori %c437496963_i64, %c52904209_i64 : i64
        %285 = arith.addi %c437496963_i64, %c52904209_i64 : i64
        scf.yield %36 : vector<8xi1>
      }
      %260 = math.ctpop %3 : tensor<4xi32>
      %261 = arith.maxui %true_6, %false_25 : i1
      %262 = bufferization.to_tensor %237 : memref<8x4x3xf32>
      %263 = arith.remui %c437496963_i64, %c437496963_i64 : i64
      memref.alloca_scope  {
        %270 = arith.xori %c437496963_i64, %c437496963_i64 : i64
        bufferization.dealloc_tensor %generated_42 : tensor<?xi1>
        %271 = vector.insertelement %cst_5, %205[%c11 : index] : vector<8xf32>
        %272 = math.expm1 %7 : tensor<8x4x3xf16>
        %alloc_50 = memref.alloc() : memref<8x9xi32>
        %273 = tensor.empty() : tensor<16x9xi32>
        %274 = linalg.matmul ins(%collapsed, %alloc_50 : tensor<16x8xi32>, memref<8x9xi32>) outs(%273 : tensor<16x9xi32>) -> tensor<16x9xi32>
        %275 = math.sqrt %cst_3 : f16
        %276 = math.log10 %14 : tensor<8x4x3xf16>
        %277 = vector.load %108[%c4, %c2, %c1] : memref<8x4x3xf32>, vector<4xf32>
        %278 = math.cttz %13 : tensor<8x4x3xi64>
        memref.copy %64, %alloc_19 : memref<8x4x3xi32> to memref<8x4x3xi32>
        bufferization.dealloc_tensor %15 : tensor<4x4x8xi64>
        %extracted_51 = tensor.extract %0[%c7, %c3, %c0] : tensor<8x4x3xi1>
        %279 = math.atan %splat_33 : tensor<4xf32>
        %from_elements_52 = tensor.from_elements %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16 : tensor<4x4x8xi16>
        %280 = math.exp2 %6 : tensor<8x4x3xf32>
        %281 = arith.remf %extracted, %cst_1 : f16
        memref.copy %29, %60 : memref<8xi16> to memref<8xi16>
        %282 = bufferization.to_memref %201 : memref<8xf16>
        %283 = vector.insertelement %false_2, %54[%c15 : index] : vector<8xi1>
        %284 = arith.cmpf ueq, %cst, %cst_7 : f16
        %285 = math.fpowi %cst_3, %c0_i32 : f16, i32
        %286 = vector.extract %204[3] : vector<8xf32>
        %287 = affine.load %alloc_22[%c8, %c8, %c4] : memref<8x4x3xi16>
        %288 = math.log10 %cst_5 : f32
        %289 = bufferization.to_tensor %alloc_21 : memref<4x4x8xi1>
        %290 = arith.mulf %cst_5, %cst_40 : f32
        %291 = index.add %c0, %82
        %292 = math.atan2 %9, %9 : tensor<8xf16>
        %293 = math.sqrt %cst_0 : f32
        %294 = math.round %from_elements : tensor<8x4x3xf32>
        %295 = arith.mulf %cst_1, %cst_4 : f16
        %extracted_53 = tensor.extract %49[%c2, %c0, %c1] : tensor<4x4x8xf16>
      }
      %from_elements_49 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<8xi32>
      %264 = bufferization.clone %alloc_16 : memref<8xi16> to memref<8xi16>
      memref.assume_alignment %alloc_9, 16 : memref<4xi32>
      %265 = arith.negf %cst_5 : f32
      %266 = vector.broadcast %c0_i32 : i32 to vector<i32>
      vector.transfer_write %266, %alloc_15[%221] : vector<i32>, memref<8xi32>
      %267 = math.powf %49, %49 : tensor<4x4x8xf16>
      %268 = math.atan2 %splat_33, %splat_33 : tensor<4xf32>
      %269 = index.ceildivu %c14, %187
      scf.yield
    }
    case 2 {
      %257 = arith.cmpf ord, %cst_1, %cst_3 : f16
      %258 = index.sizeof
      %259 = arith.negf %cst_4 : f16
      %260 = vector.broadcast %true : i1 to vector<8xi1>
      vector.transfer_write %260, %alloc_21[%rank_30, %rank_47, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi1>, memref<4x4x8xi1>
      %261 = index.mul %c3, %39
      %262 = tensor.empty(%c14, %195, %rank_29) : tensor<?x?x?xi64>
      %generated_49 = tensor.generate %c6 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        vector.print %93 : vector<4x4x8xi64>
        %269 = arith.andi %false, %true_27 : i1
        %270 = math.tan %6 : tensor<8x4x3xf32>
        %271 = vector.shuffle %184, %184 [0, 1] : vector<4x4x8xf32>, vector<4x4x8xf32>
        tensor.yield %c437496963_i64 : i64
      } : tensor<?x4x3xi64>
      %rank_50 = tensor.rank %14 : tensor<8x4x3xf16>
      %263 = arith.shli %false_25, %true_39 : i1
      %false_51 = index.bool.constant false
      %264 = bufferization.to_memref %0 : memref<8x4x3xi1>
      %265 = arith.remui %c0_i32, %c0_i32 : i32
      %266 = math.log1p %6 : tensor<8x4x3xf32>
      %rank_52 = tensor.rank %generated_42 : tensor<?xi1>
      %267 = tensor.empty() : tensor<8xi32>
      %268 = math.fpowi %9, %267 : tensor<8xf16>, tensor<8xi32>
      scf.index_switch %rank_30 
      case 1 {
        %269 = tensor.empty() : tensor<4xi32>
        %270 = vector.extract %33[5] : vector<8x4xf32>
        %271 = math.rsqrt %cst_0 : f32
        %272 = vector.extract %119[1] : vector<4xi32>
        %273 = vector.shuffle %148, %138 [1, 4, 6, 7] : vector<8xi1>, vector<1xi1>
        %274 = arith.remui %c52904209_i64, %c437496963_i64 : i64
        %275 = math.rsqrt %cst : f16
        %276 = arith.ori %c437496963_i64, %c437496963_i64 : i64
        %277 = math.copysign %cst_40, %cst_40 : f32
        %278 = index.sizeof
        memref.assume_alignment %alloc_16, 8 : memref<8xi16>
        %279 = index.castu %rank_47 : index to i32
        %280 = arith.ceildivsi %52, %52 : i1
        %281 = math.copysign %5, %8 : tensor<8x4x3xf32>
        %282 = memref.atomic_rmw muli %c-175_i16, %alloc_12[%c0, %c0, %c4] : (i16, memref<4x4x8xi16>) -> i16
        %283 = index.casts %false_45 : i1 to index
        scf.yield
      }
      default {
        %false_53 = index.bool.constant false
        %from_elements_54 = tensor.from_elements %extracted, %cst_7, %cst_1, %cst : tensor<4xf16>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %260, %true_6 : vector<8xi1>, vector<8xi1> into i1
        %true_55 = index.bool.constant true
        %270 = index.maxs %c1, %45
        %271 = math.floor %14 : tensor<8x4x3xf16>
        %272 = index.sizeof
        %273 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c13, %rank_50, %62)
        %274 = memref.atomic_rmw mulf %cst_40, %alloc_10[%c4] : (f32, memref<8xf32>) -> f32
        %275 = vector.splat %true : vector<8x4x3xi1>
        %276 = arith.andi %true_39, %true : i1
        %from_elements_56 = tensor.from_elements %cst_40, %cst_0, %cst_40, %cst_40, %cst_5, %cst_0, %cst_5, %cst_40, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_40, %cst_0, %cst_5, %cst_40, %cst_5, %cst_40, %cst_0, %cst_5, %cst_40, %cst_0, %cst_5, %cst_5, %cst_40, %cst_40, %cst_40, %cst_5, %cst_40, %cst_40, %cst_0, %cst_40, %cst_0, %cst_0, %cst_0, %cst_0, %cst_40, %cst_40, %cst_40, %cst_40, %cst_5, %cst_5, %cst_0, %cst_40, %cst_40, %cst_40, %cst_40, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_40, %cst_0, %cst_5, %cst_5, %cst_5, %cst_40, %cst_5, %cst_5, %cst_0, %cst_40, %cst_5, %cst_5, %cst_40, %cst_40, %cst_40, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_40, %cst_5, %cst_5, %cst_0, %cst_40, %cst_5, %cst_0, %cst_0, %cst_40, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_40, %cst_5, %cst_5 : tensor<8x4x3xf32>
        %277 = bufferization.to_tensor %alloc_8 : memref<8xi1>
        %278 = vector.broadcast %c6869_i16 : i16 to vector<4xi16>
        %279 = vector.broadcast %true_27 : i1 to vector<4xi1>
        %280 = vector.gather %alloc_12[%130, %203, %66] [%119], %279, %278 : memref<4x4x8xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %281 = memref.atomic_rmw muli %c6869_i16, %60[%c4] : (i16, memref<8xi16>) -> i16
        %282 = math.fpowi %14, %43 : tensor<8x4x3xf16>, tensor<8x4x3xi32>
      }
      scf.yield
    }
    case 3 {
      %257 = math.ceil %5 : tensor<8x4x3xf32>
      %258 = arith.ori %c-20224_i16, %c-175_i16 : i16
      %259 = vector.shuffle %205, %110 [3, 4, 6, 9, 10, 11] : vector<8xf32>, vector<4xf32>
      %260 = arith.minsi %true, %true : i1
      bufferization.dealloc_tensor %16 : tensor<4x4x8xi32>
      %261 = tensor.empty() : tensor<8x9xi32>
      %262 = tensor.empty() : tensor<16x9xi32>
      %263 = linalg.matmul ins(%collapsed, %261 : tensor<16x8xi32>, tensor<8x9xi32>) outs(%262 : tensor<16x9xi32>) -> tensor<16x9xi32>
      %264 = math.log1p %8 : tensor<8x4x3xf32>
      %inserted_49 = tensor.insert %cst_40 into %5[%c1, %c0, %c2] : tensor<8x4x3xf32>
      %265 = math.ctpop %c-20224_i16 : i16
      %266 = index.mul %221, %244
      scf.if %false_25 {
        %270 = vector.extract %204[7] : vector<8xf32>
        %271 = vector.shuffle %184, %184 [0, 1, 2, 4, 6] : vector<4x4x8xf32>, vector<4x4x8xf32>
        %272 = index.floordivs %111, %221
        %splat_51 = tensor.splat %cst_1 : tensor<4x4x8xf16>
        %273 = math.powf %cst_4, %cst_3 : f16
        %274 = math.fma %201, %201, %9 : tensor<8xf16>
        %from_elements_52 = tensor.from_elements %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c437496963_i64, %c52904209_i64, %c52904209_i64, %c52904209_i64 : tensor<4x4x8xi64>
        %275 = arith.ori %true, %false_25 : i1
      } else {
        %270 = vector.create_mask %172 : vector<8xi1>
        %271 = arith.shrsi %c437496963_i64, %c52904209_i64 : i64
        %272 = arith.cmpi eq, %false, %false_45 : i1
        %273 = arith.minsi %true_27, %false_2 : i1
        %274 = vector.multi_reduction <minf>, %83, %110 [0] : vector<4x4xf32> to vector<4xf32>
        %275 = arith.floordivsi %false_2, %true_27 : i1
        %276 = vector.reduction <add>, %119 : vector<4xi32> into i32
        %277 = math.cttz %true_6 : i1
      }
      %267 = index.casts %false_45 : i1 to index
      %cast = tensor.cast %from_elements : tensor<8x4x3xf32> to tensor<?x?x?xf32>
      %268 = math.powf %cst_7, %cst_7 : f16
      %generated_50 = tensor.generate %c11, %c10, %66 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %cast_51 = tensor.cast %2 : tensor<4xi1> to tensor<?xi1>
        memref.store %c0_i32, %alloc_19[%c3, %c3, %c2] : memref<8x4x3xi32>
        %270 = bufferization.to_tensor %64 : memref<8x4x3xi32>
        %271 = math.log %8 : tensor<8x4x3xf32>
        tensor.yield %c6869_i16 : i16
      } : tensor<?x?x?xi16>
      %269 = arith.floordivsi %c437496963_i64, %c52904209_i64 : i64
      scf.yield
    }
    default {
      memref.assume_alignment %alloc, 8 : memref<8x4x3xi32>
      %257 = vector.broadcast %cst_0 : f32 to vector<4x4x8xf32>
      %258 = vector.fma %257, %184, %257 : vector<4x4x8xf32>
      %259 = index.add %211, %rank_37
      %260 = math.ipowi %false_45, %true_6 : i1
      %261 = vector.load %alloc_12[%c3, %c0, %c7] : memref<4x4x8xi16>, vector<4xi16>
      %262 = math.atan2 %cst, %cst : f16
      %263 = arith.divsi %true_39, %true_6 : i1
      vector.print %79 : vector<8xi64>
      memref.store %c-20224_i16, %alloc_16[%c1] : memref<8xi16>
      %264 = arith.ori %c6869_i16, %c-175_i16 : i16
      %alloc_49 = memref.alloc() : memref<3xf16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49 : memref<3xf16>) outs(%7 : tensor<8x4x3xf16>) {
      ^bb0(%in: f16, %out: f16):
        %270 = arith.minf %cst_4, %cst_3 : f16
        %271 = math.floor %49 : tensor<4x4x8xf16>
        %272 = math.log %5 : tensor<8x4x3xf32>
        %273 = arith.cmpi sge, %false_25, %true_39 : i1
        %rank_51 = tensor.rank %3 : tensor<4xi32>
        %274 = vector.extract %219[4] : vector<8xi64>
        %275 = arith.ori %c-20224_i16, %c6869_i16 : i16
        %276 = arith.shli %false, %52 : i1
        %277 = arith.cmpi sgt, %false_2, %false_45 : i1
        %278 = index.ceildivu %c13, %c7
        %alloc_52 = memref.alloc() : memref<4x4x8xi64>
        memref.copy %alloc_18, %alloc_52 : memref<4x4x8xi64> to memref<4x4x8xi64>
        %279 = index.add %259, %c9
        %280 = math.atan2 %6, %6 : tensor<8x4x3xf32>
        %from_elements_53 = tensor.from_elements %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-20224_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c-20224_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-175_i16, %c-175_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c6869_i16, %c-20224_i16, %c-20224_i16, %c6869_i16, %c6869_i16 : tensor<8x4x3xi16>
        %281 = math.atan2 %10, %10 : tensor<4xf16>
        %282 = math.absi %0 : tensor<8x4x3xi1>
        %283 = math.atan2 %from_elements, %8 : tensor<8x4x3xf32>
        %284 = arith.divsi %false_45, %52 : i1
        memref.store %c-175_i16, %60[%c4] : memref<8xi16>
        %285 = arith.cmpf true, %cst_40, %cst_5 : f32
        %286 = math.sqrt %8 : tensor<8x4x3xf32>
        %287 = math.powf %splat_33, %splat_33 : tensor<4xf32>
        %288 = index.castu %45 : index to i32
        %289 = math.expm1 %cst_40 : f32
        %splat_54 = tensor.splat %true_27 : tensor<4x4x8xi1>
        %290 = affine.apply affine_map<(d0, d1) -> ((((d0 - d1) * 4) mod 64 - d0 + d0 - d1 - ((d0 - d1) * 5 - 4)) ceildiv 8)>(%172, %c1)
        %291 = index.add %c0, %rank_29
        %292 = math.log10 %out : f16
        %293 = arith.cmpi ne, %52, %false_25 : i1
        %294 = math.tanh %10 : tensor<4xf16>
        %295 = math.exp2 %from_elements : tensor<8x4x3xf32>
        %296 = math.log10 %7 : tensor<8x4x3xf16>
        linalg.yield %cst_4 : f16
      } -> tensor<8x4x3xf16>
      %266 = affine.min affine_map<(d0) -> (-d0, 0, 0, d0 ceildiv 16)>(%210)
      %267 = arith.shrsi %false_2, %false : i1
      %extracted_50 = tensor.extract %9[%c7] : tensor<8xf16>
      %268 = index.sizeof
      %269 = math.log1p %14 : tensor<8x4x3xf16>
    }
    %250 = arith.remf %cst_0, %cst_40 : f32
    %251 = math.expm1 %from_elements : tensor<8x4x3xf32>
    %252 = bufferization.clone %alloc_10 : memref<8xf32> to memref<8xf32>
    %253 = tensor.empty() : tensor<4xf32>
    %254 = linalg.copy ins(%splat_33 : tensor<4xf32>) outs(%253 : tensor<4xf32>) -> tensor<4xf32>
    %alloc_48 = memref.alloc() : memref<3x8x4xf16>
    linalg.transpose ins(%7 : tensor<8x4x3xf16>) outs(%alloc_48 : memref<3x8x4xf16>) permutation = [2, 0, 1] 
    %255 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%2 : tensor<4xi1>) outs(%255 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        scf.execute_region {
          %265 = arith.ori %true_39, %false_2 : i1
          %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %81, %79, %c437496963_i64 : vector<8xi64>, vector<8xi64> into i64
          %267 = arith.ceildivsi %c437496963_i64, %c52904209_i64 : i64
          %268 = arith.negf %cst_40 : f32
          %269 = math.powf %7, %14 : tensor<8x4x3xf16>
          %270 = affine.max affine_map<(d0, d1) -> (-d0, d0, (d1 mod 8 + 32) ceildiv 64)>(%62, %221)
          %271 = tensor.empty() : tensor<4xi1>
          %splat_51 = tensor.splat %false_45 : tensor<8x4x3xi1>
          %272 = index.add %c13, %rank_30
          %273 = memref.load %64[%c4, %c0, %c2] : memref<8x4x3xi32>
          %274 = arith.ceildivsi %c6869_i16, %c6869_i16 : i16
          %275 = math.atan2 %7, %7 : tensor<8x4x3xf16>
          %276 = vector.broadcast %c52904209_i64 : i64 to vector<8x4x3xi64>
          %277 = vector.broadcast %false_2 : i1 to vector<8x4x3xi1>
          %278 = vector.broadcast %c0_i32 : i32 to vector<8x4x3xi32>
          %279 = vector.gather %11[%244] [%278], %277, %276 : tensor<4xi64>, vector<8x4x3xi32>, vector<8x4x3xi1>, vector<8x4x3xi64> into vector<8x4x3xi64>
          %280 = index.maxu %241, %c11
          %281 = arith.subi %true_27, %true_39 : i1
          %282 = math.powf %49, %49 : tensor<4x4x8xf16>
          scf.yield
        }
        %257 = index.sizeof
        %258 = arith.minf %cst_0, %cst_5 : f32
        %259 = index.maxu %c14, %rank_37
        %260 = math.copysign %10, %10 : tensor<4xf16>
        %261 = math.absf %6 : tensor<8x4x3xf32>
        %rank_49 = tensor.rank %21 : tensor<i32>
        %262 = tensor.empty() : tensor<8x8xi32>
        %263 = tensor.empty() : tensor<16x8xi32>
        %264 = linalg.matmul ins(%collapsed, %262 : tensor<16x8xi32>, tensor<8x8xi32>) outs(%263 : tensor<16x8xi32>) -> tensor<16x8xi32>
        %true_50 = arith.constant true
        linalg.yield %true_50 : i1
      }
    scf.parallel (%arg3) = (%211) to (%c6) step (%c4) {
      %257 = arith.ceildivsi %c-175_i16, %c-175_i16 : i16
      %from_elements_49 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<8xi32>
      %258 = math.round %201 : tensor<8xf16>
      %c0_i16 = arith.constant 0 : i16
      %259 = vector.transfer_read %152[%rank_32], %c0_i16 : tensor<4xi16>, vector<i16>
      memref.store %c0_i32, %alloc[%c1, %c1, %c2] : memref<8x4x3xi32>
      %260 = arith.negf %cst_3 : f16
      %261 = math.fma %14, %7, %14 : tensor<8x4x3xf16>
      %262 = affine.load %alloc_13[%c10, %c7, %c10] : memref<8x4x3xi16>
      %263 = arith.xori %true_27, %true_27 : i1
      %264 = arith.muli %false, %false_45 : i1
      %true_50 = index.bool.constant true
      %265 = arith.andi %c-20224_i16, %262 : i16
      %splat_51 = tensor.splat %false_45 : tensor<8x4x3xi1>
      %266 = vector.transpose %83, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
      %267 = arith.remui %false_45, %false_45 : i1
      %268 = tensor.empty() : tensor<4xi1>
      scf.yield
    }
    %256 = affine.vector_load %alloc_14[%241, %111, %c6] : memref<8x4x3xi64>, vector<8xi64>
    affine.vector_store %103, %252[%c8] : memref<8xf32>, vector<8xf32>
    vector.print %19 : vector<8xi1>
    vector.print %33 : vector<8x4xf32>
    vector.print %36 : vector<8xi1>
    vector.print %54 : vector<8xi1>
    vector.print %79 : vector<8xi64>
    vector.print %80 : vector<8xi32>
    vector.print %81 : vector<8xi64>
    vector.print %83 : vector<4x4xf32>
    vector.print %90 : vector<4x4x8xi64>
    vector.print %91 : vector<4x4x8xi1>
    vector.print %92 : vector<4x4x8xi32>
    vector.print %93 : vector<4x4x8xi64>
    vector.print %103 : vector<8xf32>
    vector.print %110 : vector<4xf32>
    vector.print %119 : vector<4xi32>
    vector.print %138 : vector<1xi1>
    vector.print %148 : vector<8xi1>
    vector.print %162 : vector<4x8xi32>
    vector.print %169 : vector<8x4x3xf16>
    vector.print %174 : vector<4x8xi1>
    vector.print %177 : vector<4x8xi32>
    vector.print %184 : vector<4x4x8xf32>
    vector.print %204 : vector<8xf32>
    vector.print %205 : vector<8xf32>
    vector.print %219 : vector<8xi64>
    vector.print %227 : vector<3xf32>
    vector.print %256 : vector<8xi64>
    vector.print %cst : f16
    vector.print %c-20224_i16 : i16
    vector.print %c52904209_i64 : i64
    vector.print %cst_0 : f32
    vector.print %false : i1
    vector.print %cst_1 : f16
    vector.print %c6869_i16 : i16
    vector.print %c437496963_i64 : i64
    vector.print %false_2 : i1
    vector.print %cst_3 : f16
    vector.print %c-175_i16 : i16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %true : i1
    vector.print %true_6 : i1
    vector.print %cst_7 : f16
    vector.print %c0_i32 : i32
    vector.print %52 : i1
    vector.print %false_25 : i1
    vector.print %true_27 : i1
    vector.print %extracted : f16
    vector.print %true_39 : i1
    vector.print %cst_40 : f32
    vector.print %false_45 : i1
    return
  }
}
