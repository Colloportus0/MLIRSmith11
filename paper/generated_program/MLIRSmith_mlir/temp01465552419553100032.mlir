module {
  func.func @func1(%arg0: memref<8x4xf16>) -> index {
    %cst = arith.constant 2.332800e+04 : f16
    %c-15298_i16 = arith.constant -15298 : i16
    %c786936960_i64 = arith.constant 786936960 : i64
    %cst_0 = arith.constant 0x4E04C5CD : f32
    %c30972_i16 = arith.constant 30972 : i16
    %true = arith.constant true
    %c1228891554_i64 = arith.constant 1228891554 : i64
    %cst_1 = arith.constant 4.844800e+04 : f16
    %false = arith.constant false
    %cst_2 = arith.constant 0x4E3630F8 : f32
    %cst_3 = arith.constant 1.84262451E+9 : f32
    %cst_4 = arith.constant 0x4E3101A5 : f32
    %cst_5 = arith.constant 4.582400e+04 : f16
    %c1561819944_i32 = arith.constant 1561819944 : i32
    %cst_6 = arith.constant 0x4E096D22 : f32
    %cst_7 = arith.constant 2.859200e+04 : f16
    %0 = tensor.empty() : tensor<3x3x4xi1>
    %1 = tensor.empty() : tensor<8x4xi64>
    %2 = tensor.empty() : tensor<8x4xi32>
    %3 = tensor.empty() : tensor<8xf32>
    %4 = tensor.empty() : tensor<15x3xi1>
    %5 = tensor.empty() : tensor<8x4xf32>
    %6 = tensor.empty() : tensor<15x3xf16>
    %7 = tensor.empty() : tensor<3x3x4xi16>
    %8 = tensor.empty() : tensor<8xi1>
    %9 = tensor.empty() : tensor<15x3xf32>
    %10 = tensor.empty() : tensor<3x3x4xf32>
    %11 = tensor.empty() : tensor<8x4xf32>
    %12 = tensor.empty() : tensor<3x3x4xi1>
    %13 = tensor.empty() : tensor<3x3x4xi32>
    %14 = tensor.empty() : tensor<3x3x4xf32>
    %15 = tensor.empty() : tensor<8xi64>
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
    %alloc = memref.alloc() : memref<8x4xi1>
    %alloc_8 = memref.alloc() : memref<3x3x4xi16>
    %alloc_9 = memref.alloc() : memref<8x4xi64>
    %alloc_10 = memref.alloc() : memref<3x3x4xi64>
    %alloc_11 = memref.alloc() : memref<3x3x4xi1>
    %alloc_12 = memref.alloc() : memref<15x3xf32>
    %alloc_13 = memref.alloc() : memref<3x3x4xi1>
    %alloc_14 = memref.alloc() : memref<15x3xf16>
    %alloc_15 = memref.alloc() : memref<8x4xf32>
    %alloc_16 = memref.alloc() : memref<8xi64>
    %alloc_17 = memref.alloc() : memref<3x3x4xf16>
    %alloc_18 = memref.alloc() : memref<15x3xf16>
    %alloc_19 = memref.alloc() : memref<15x3xi1>
    %alloc_20 = memref.alloc() : memref<8x4xf16>
    %alloc_21 = memref.alloc() : memref<8xi16>
    %alloc_22 = memref.alloc() : memref<8xi32>
    %16 = tensor.empty() : tensor<8x4xi32>
    %17 = linalg.copy ins(%2 : tensor<8x4xi32>) outs(%16 : tensor<8x4xi32>) -> tensor<8x4xi32>
    %18 = tensor.empty() : tensor<4x8xf32>
    %transposed = linalg.transpose ins(%11 : tensor<8x4xf32>) outs(%18 : tensor<4x8xf32>) permutation = [1, 0] 
    %alloc_23 = memref.alloc() : memref<f32>
    linalg.reduce ins(%9 : tensor<15x3xf32>) outs(%alloc_23 : memref<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %cast_58 = tensor.cast %13 : tensor<3x3x4xi32> to tensor<?x?x?xi32>
        %243 = math.atan %init : f32
        %244 = arith.divsi %true, %false : i1
        %245 = vector.broadcast %c1561819944_i32 : i32 to vector<4x15xi32>
        %246 = vector.broadcast %c1561819944_i32 : i32 to vector<15xi32>
        %dest_59, %accumulated_value_60 = vector.scan <maxui>, %245, %246 {inclusive = false, reduction_dim = 0 : i64} : vector<4x15xi32>, vector<15xi32>
        %alloc_61 = memref.alloc() : memref<8x4xf16>
        memref.copy %alloc_20, %alloc_61 : memref<8x4xf16> to memref<8x4xf16>
        %247 = math.log10 %11 : tensor<8x4xf32>
        %248 = affine.load %alloc_18[%c4, %c0] : memref<15x3xf16>
        %c1_i64 = arith.constant 1 : i64
        %249 = vector.transfer_read %15[%c4], %c1_i64 : tensor<8xi64>, vector<i64>
        %cst_62 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_62 : f32
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c1, %c9) to (%c11, %c10) step (%c2, %c14) init (%cst_6) -> f32 {
      memref.tensor_store %4, %alloc_19 : memref<15x3xi1>
      %243 = math.atan %transposed : tensor<4x8xf32>
      %244 = arith.remsi %true, %false : i1
      %c1373045007_i32 = arith.constant 1373045007 : i32
      %245 = tensor.empty() : tensor<15x3xi32>
      %246 = math.fpowi %9, %245 : tensor<15x3xf32>, tensor<15x3xi32>
      %247 = math.expm1 %cst_7 : f16
      %248 = arith.ori %c1228891554_i64, %c1228891554_i64 : i64
      %cast_58 = tensor.cast %8 : tensor<8xi1> to tensor<?xi1>
      %249 = tensor.empty() : tensor<8x4xi32>
      %mapped = linalg.map ins(%16 : tensor<8x4xi32>) outs(%249 : tensor<8x4xi32>)
        (%in: i32) {
          %256 = memref.atomic_rmw assign %c30972_i16, %alloc_8[%c0, %c1, %c3] : (i16, memref<3x3x4xi16>) -> i16
          %alloca_61 = memref.alloca() : memref<3x3x4xf16>
          %257 = tensor.empty(%c11, %c9) : tensor<?x?xi32>
          %258 = vector.broadcast %cst : f16 to vector<3xf16>
          %259 = vector.broadcast %false : i1 to vector<3xi1>
          %260 = vector.maskedload %alloc_20[%c6, %c2], %259, %258 : memref<8x4xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
          %collapsed_62 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
          %261 = tensor.empty() : tensor<8xi16>
          bufferization.dealloc_tensor %4 : tensor<15x3xi1>
          %262 = math.log2 %9 : tensor<15x3xf32>
          %263 = affine.load %alloc_14[%c9, %c3] : memref<15x3xf16>
          %264 = math.cos %5 : tensor<8x4xf32>
          %true_63 = index.bool.constant true
          %265 = index.ceildivs %c13, %c1
          %266 = bufferization.to_tensor %alloc_13 : memref<3x3x4xi1>
          %collapsed_64 = tensor.collapse_shape %4 [[0, 1]] : tensor<15x3xi1> into tensor<45xi1>
          %267 = arith.remsi %in, %in : i32
          %268 = arith.minsi %true, %true_63 : i1
          %269 = vector.broadcast %c786936960_i64 : i64 to vector<8xi64>
          %collapsed_65 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
          %270 = index.divu %c11, %arg2
          %extracted_66 = tensor.extract %6[%c1, %c0] : tensor<15x3xf16>
          %271 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 4) * 2, d3 - d2)>(%c3, %c14, %c0, %arg2)
          %from_elements_67 = tensor.from_elements %c30972_i16, %c30972_i16, %c-15298_i16, %c-15298_i16, %c-15298_i16, %c-15298_i16, %c30972_i16, %c-15298_i16, %c-15298_i16, %c-15298_i16, %c-15298_i16, %c30972_i16, %c30972_i16, %c30972_i16, %c30972_i16, %c-15298_i16, %c-15298_i16, %c30972_i16, %c30972_i16, %c30972_i16, %c-15298_i16, %c-15298_i16, %c-15298_i16, %c30972_i16, %c30972_i16, %c-15298_i16, %c30972_i16, %c-15298_i16, %c-15298_i16, %c30972_i16, %c30972_i16, %c30972_i16 : tensor<8x4xi16>
          memref.store %false, %alloc[%c4, %c3] : memref<8x4xi1>
          %272 = arith.mulf %cst, %263 : f16
          %273 = math.exp2 %cst_0 : f32
          %collapsed_68 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
          %274 = math.expm1 %11 : tensor<8x4xf32>
          %275 = math.cos %6 : tensor<15x3xf16>
          %276 = arith.shrsi %true_63, %true : i1
          %277 = arith.minf %cst_1, %cst_7 : f16
          %278 = math.powf %cst_1, %cst_1 : f16
          %false_69 = arith.constant false
          %c0_i32_70 = arith.constant 0 : i32
          linalg.yield %c0_i32_70 : i32
        }
      %250 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %251 = vector.extract_strided_slice %250 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %cast_59 = tensor.cast %11 : tensor<8x4xf32> to tensor<?x?xf32>
      %252 = arith.minui %c1228891554_i64, %c1228891554_i64 : i64
      %253 = arith.addi %c-15298_i16, %c-15298_i16 : i16
      %254 = math.exp2 %transposed : tensor<4x8xf32>
      %255 = affine.if affine_set<(d0, d1) : (0 == 0, d1 ceildiv 32 >= 0, d0 == 0, d0 mod 128 >= 0)>(%c9, %c2) -> i32 {
        bufferization.dealloc_tensor %transposed : tensor<4x8xf32>
        %rank_61 = tensor.rank %245 : tensor<15x3xi32>
        %256 = math.log1p %9 : tensor<15x3xf32>
        %257 = arith.minui %c1228891554_i64, %c786936960_i64 : i64
        %258 = math.log %5 : tensor<8x4xf32>
        %259 = vector.matrix_multiply %250, %250 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %260 = bufferization.to_memref %13 : memref<3x3x4xi32>
        %261 = index.sizeof
        affine.yield %c1561819944_i32 : i32
      } else {
        %256 = math.log %3 : tensor<8xf32>
        %257 = math.ctpop %8 : tensor<8xi1>
        %258 = math.absf %11 : tensor<8x4xf32>
        %259 = math.absf %5 : tensor<8x4xf32>
        %260 = math.ctpop %0 : tensor<3x3x4xi1>
        %261 = math.atan %6 : tensor<15x3xf16>
        %262 = tensor.empty() : tensor<3x4xf16>
        %263 = tensor.empty() : tensor<15x4xf16>
        %264 = linalg.matmul ins(%6, %262 : tensor<15x3xf16>, tensor<3x4xf16>) outs(%263 : tensor<15x4xf16>) -> tensor<15x4xf16>
        %265 = math.rsqrt %cst_1 : f16
        affine.yield %c1561819944_i32 : i32
      }
      %from_elements = tensor.from_elements %cst_2, %cst_6, %cst_4, %cst_2, %cst_3, %cst_3, %cst_6, %cst_2 : tensor<8xf32>
      %cst_60 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_60)  : f32 {
      ^bb0(%arg3: f32, %arg4: f32):
        %256 = arith.remui %true, %true : i1
        %257 = arith.shrsi %true, %false : i1
        %258 = math.ctlz %8 : tensor<8xi1>
        %259 = math.absf %9 : tensor<15x3xf32>
        %from_elements_61 = tensor.from_elements %cst_4, %cst_60, %arg3, %cst_60, %cst_4, %cst_4, %cst_0, %arg3, %cst_6, %cst_4, %cst_60, %cst_2, %cst_60, %cst_0, %cst_6, %arg3, %cst_0, %cst_60, %cst_3, %cst_2, %arg3, %cst_4, %cst_4, %cst_60, %cst_60, %cst_6, %cst_4, %arg3, %cst_2, %arg3, %cst_2, %cst_3, %cst_0, %arg3, %arg3, %arg3 : tensor<3x3x4xf32>
        %260 = index.mul %c15, %c8
        %261 = vector.splat %c12 : vector<15x3xindex>
        %262 = math.powf %transposed, %18 : tensor<4x8xf32>
        %cst_62 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_62 : f32
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c14, %c1] : memref<8x4xf32>, vector<15xf32>
    affine.vector_store %20, %alloc_15[%c4, %c1] : memref<8x4xf32>, vector<15xf32>
    %21 = tensor.empty() : tensor<8xi1>
    %22 = tensor.empty() : tensor<i1>
    %23 = linalg.dot ins(%8, %21 : tensor<8xi1>, tensor<8xi1>) outs(%22 : tensor<i1>) -> tensor<i1>
    %24 = affine.if affine_set<(d0, d1, d2) : (d1 * 64 + d1 * 64 + 8 >= 0, d2 floordiv 64 - 32 >= 0, -(d0 * 16 - 64) == 0, d0 mod 16 >= 0)>(%c2, %c6, %c13) -> memref<15x3xf32> {
      %243 = vector.broadcast %c0 : index to vector<15xindex>
      %244 = vector.broadcast %true : i1 to vector<15xi1>
      %245 = vector.broadcast %cst_5 : f16 to vector<15xf16>
      vector.scatter %alloc_17[%c1, %c0, %c1] [%243], %244, %245 : memref<3x3x4xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %246 = math.log1p %cst_1 : f16
      %247 = vector.transpose %20, [0] : vector<15xf32> to vector<15xf32>
      %cast_58 = tensor.cast %3 : tensor<8xf32> to tensor<?xf32>
      %248 = memref.load %alloc_14[%c2, %c1] : memref<15x3xf16>
      %cst_59 = arith.constant 1.000000e+00 : f32
      %249 = vector.transfer_read %9[%c1, %c11], %cst_59 : tensor<15x3xf32>, vector<15xf32>
      %250 = index.floordivs %c12, %c1
      %splat_60 = tensor.splat %cst_6 : tensor<15x3xf32>
      affine.yield %alloc_12 : memref<15x3xf32>
    } else {
      %243 = math.expm1 %cst_5 : f16
      %244 = affine.load %alloc_20[%c14, %c2] : memref<8x4xf16>
      %245 = arith.addf %cst_3, %cst_4 : f32
      %246 = math.fma %cst, %cst_5, %cst_1 : f16
      %247 = index.maxu %c3, %c15
      vector.print %20 : vector<15xf32>
      %248 = math.cos %10 : tensor<3x3x4xf32>
      %249 = vector.load %alloc_13[%c1, %c0, %c2] : memref<3x3x4xi1>, vector<8x4xi1>
      affine.yield %alloc_12 : memref<15x3xf32>
    }
    %25 = arith.remui %c1561819944_i32, %c1561819944_i32 : i32
    %expanded = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<3x3x4xf32> into tensor<3x3x4x1xf32>
    %26 = math.cttz %22 : tensor<i1>
    %27 = arith.minui %c-15298_i16, %c30972_i16 : i16
    %28 = math.cos %cst_3 : f32
    %29 = vector.broadcast %c30972_i16 : i16 to vector<3x8xi16>
    %30 = vector.broadcast %c30972_i16 : i16 to vector<8xi16>
    %dest, %accumulated_value = vector.scan <or>, %29, %30 {inclusive = true, reduction_dim = 0 : i64} : vector<3x8xi16>, vector<8xi16>
    %inserted = tensor.insert %cst_2 into %5[%c6, %c3] : tensor<8x4xf32>
    %31 = vector.broadcast %c12 : index to vector<3xindex>
    %32 = vector.broadcast %true : i1 to vector<3xi1>
    vector.scatter %alloc[%c7, %c3] [%31], %32, %32 : memref<8x4xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %33 = vector.shuffle %20, %20 [0, 3, 6, 7, 13, 17, 19, 21, 24, 25, 26] : vector<15xf32>, vector<15xf32>
    %34 = affine.max affine_map<(d0, d1) -> (-d0, d1 ceildiv 2 - 1)>(%c1, %c3)
    %35 = arith.maxsi %c1228891554_i64, %c786936960_i64 : i64
    affine.store %true, %alloc_11[%c6, %c3, %c2] : memref<3x3x4xi1>
    %36 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
    %37 = index.ceildivs %c8, %c5
    %38 = math.atan %cst_2 : f32
    %39 = index.ceildivu %c14, %c0
    %40 = math.ctlz %0 : tensor<3x3x4xi1>
    %41 = arith.remui %c1561819944_i32, %c1561819944_i32 : i32
    %42 = arith.minf %cst_6, %cst_2 : f32
    %43 = arith.ori %c786936960_i64, %c786936960_i64 : i64
    memref.copy %alloc_18, %alloc_14 : memref<15x3xf16> to memref<15x3xf16>
    vector.print %20 : vector<15xf32>
    %44 = math.log2 %cst_6 : f32
    %45 = math.fpowi %cst_5, %c1561819944_i32 : f16, i32
    %46 = math.fma %expanded, %expanded, %expanded : tensor<3x3x4x1xf32>
    %generated = tensor.generate %c4, %c2, %c9 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %243 = index.casts %c9 : index to i32
      %alloca_58 = memref.alloca() : memref<3x3x4xi16>
      %244 = math.log2 %cst_0 : f32
      %245 = index.add %c1, %c5
      tensor.yield %cst_5 : f16
    } : tensor<?x?x?xf16>
    %rank = tensor.rank %7 : tensor<3x3x4xi16>
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<15x3xi1> into tensor<45xi1>
    %47 = arith.ceildivsi %c30972_i16, %c30972_i16 : i16
    %48 = math.absf %3 : tensor<8xf32>
    %49 = math.ctpop %13 : tensor<3x3x4xi32>
    %50 = math.log %14 : tensor<3x3x4xf32>
    %51 = math.log2 %expanded : tensor<3x3x4x1xf32>
    %52 = math.log %cst_6 : f32
    %53 = arith.divsi %c786936960_i64, %c786936960_i64 : i64
    %54 = vector.load %alloc_16[%c3] : memref<8xi64>, vector<15x3xi64>
    memref.store %cst_7, %alloc_18[%c11, %c1] : memref<15x3xf16>
    %55 = arith.maxui %false, %false : i1
    %56 = arith.minui %c30972_i16, %c30972_i16 : i16
    %57 = arith.remsi %c30972_i16, %c30972_i16 : i16
    %58 = math.ctpop %true : i1
    %59 = arith.muli %c1228891554_i64, %c1228891554_i64 : i64
    %60 = vector.load %alloc_8[%c0, %c0, %c3] : memref<3x3x4xi16>, vector<8xi16>
    %61 = arith.addf %cst_0, %cst_0 : f32
    %collapsed_24 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
    %62 = index.casts %c9 : index to i32
    %alloca = memref.alloca() : memref<3x3x4xf32>
    %63 = memref.load %alloc_23[] : memref<f32>
    %64 = math.log10 %14 : tensor<3x3x4xf32>
    %65 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %60, %60, %c-15298_i16 : vector<8xi16>, vector<8xi16> into i16
    %true_25 = index.bool.constant true
    %66 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 8) floordiv 16)>(%c5, %c3)
    %67 = math.ipowi %0, %12 : tensor<3x3x4xi1>
    %68 = arith.maxui %c786936960_i64, %c786936960_i64 : i64
    %69 = memref.realloc %alloc_16 : memref<8xi64> to memref<3xi64>
    %70 = index.sizeof
    %71 = vector.reduction <mul>, %20 : vector<15xf32> into f32
    %cst_26 = arith.constant 0x4CCB560A : f32
    %72 = index.add %c2, %c14
    %73 = vector.reduction <mul>, %36 : vector<1xf32> into f32
    %74 = math.atan %6 : tensor<15x3xf16>
    %75 = vector.transpose %54, [0, 1] : vector<15x3xi64> to vector<15x3xi64>
    %76 = arith.minf %cst_7, %cst : f16
    %77 = math.cttz %8 : tensor<8xi1>
    %extracted = tensor.extract %10[%c1, %c0, %c3] : tensor<3x3x4xf32>
    %78 = vector.reduction <add>, %60 : vector<8xi16> into i16
    %79 = math.ctpop %0 : tensor<3x3x4xi1>
    %80 = affine.load %alloc_14[%c14, %c6] : memref<15x3xf16>
    %81 = affine.for %arg1 = 0 to 15 iter_args(%arg2 = %8) -> (tensor<8xi1>) {
      affine.yield %21 : tensor<8xi1>
    }
    %82 = index.ceildivu %c4, %70
    %extracted_27 = tensor.extract %1[%c1, %c1] : tensor<8x4xi64>
    %83 = arith.xori %extracted_27, %c1228891554_i64 : i64
    %84 = bufferization.to_tensor %alloc_9 : memref<8x4xi64>
    %85 = math.ipowi %84, %1 : tensor<8x4xi64>
    %86 = math.cttz %16 : tensor<8x4xi32>
    %87 = arith.ori %false, %true : i1
    memref.alloca_scope  {
      %243 = vector.matrix_multiply %60, %60 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
      %244 = arith.ceildivsi %c30972_i16, %c-15298_i16 : i16
      %245 = affine.if affine_set<(d0, d1, d2, d3) : (-d0 == 0, -d0 == 0, d0 * -128 == 0)>(%c2, %c6, %c8, %c12) -> memref<8xi64> {
        %true_66 = index.bool.constant true
        memref.assume_alignment %alloc_16, 2 : memref<8xi64>
        memref.assume_alignment %alloc_22, 4 : memref<8xi32>
        %267 = math.exp2 %cst_1 : f16
        %268 = math.log2 %cst_5 : f16
        %269 = math.fma %80, %80, %cst_5 : f16
        %cst_67 = arith.constant 1.000000e+00 : f32
        %cst_68 = arith.constant 0.000000e+00 : f32
        %270 = vector.transfer_read %transposed[%rank, %37], %cst_68 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x8xf32>, vector<4xf32>
        %alloca_69 = memref.alloca() : memref<3x3x4xi32>
        affine.yield %alloc_16 : memref<8xi64>
      } else {
        %267 = arith.maxui %c1561819944_i32, %c1561819944_i32 : i32
        %268 = math.log2 %cst_2 : f32
        %alloc_66 = memref.alloc() : memref<8xi64>
        memref.copy %alloc_16, %alloc_66 : memref<8xi64> to memref<8xi64>
        %269 = bufferization.to_memref %12 : memref<3x3x4xi1>
        %270 = math.atan2 %11, %11 : tensor<8x4xf32>
        %c265312734_i64 = arith.constant 265312734 : i64
        memref.tensor_store %7, %alloc_8 : memref<3x3x4xi16>
        %271 = math.log2 %5 : tensor<8x4xf32>
        affine.yield %alloc_16 : memref<8xi64>
      }
      %246 = arith.divsi %c1561819944_i32, %c1561819944_i32 : i32
      %247 = index.casts %c786936960_i64 : i64 to index
      %generated_58 = tensor.generate %c15 {
      ^bb0(%arg1: index):
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 2, (d1 - 2) floordiv 16 + 1, d0)>(%rank, %70, %c3, %c12)
        %rank_66 = tensor.rank %14 : tensor<3x3x4xf32>
        %268 = arith.subi %c1561819944_i32, %c1561819944_i32 : i32
        %269 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xf32> -> vector<15xf32>
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      %248 = vector.flat_transpose %60 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
      %alloca_59 = memref.alloca() : memref<8x4xi16>
      %249 = math.log1p %extracted : f32
      %alloca_60 = memref.alloca() : memref<3x3x4xf16>
      %250 = arith.remf %cst_5, %cst_5 : f16
      memref.assume_alignment %alloc_21, 8 : memref<8xi16>
      %alloc_61 = memref.alloc() : memref<f32>
      memref.copy %alloc_23, %alloc_61 : memref<f32> to memref<f32>
      %251 = math.tan %5 : tensor<8x4xf32>
      scf.index_switch %c8 
      case 1 {
        %267 = tensor.empty() : tensor<3x3xf32>
        %268 = tensor.empty() : tensor<15x3xf32>
        %269 = linalg.matmul ins(%9, %267 : tensor<15x3xf32>, tensor<3x3xf32>) outs(%268 : tensor<15x3xf32>) -> tensor<15x3xf32>
        %270 = index.mul %37, %39
        %271 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %splat_66 = tensor.splat %c786936960_i64 : tensor<8xi64>
        %272 = math.ctlz %15 : tensor<8xi64>
        %273 = vector.shuffle %20, %36 [2, 3, 4, 7, 9, 11, 12, 13, 14] : vector<15xf32>, vector<1xf32>
        %alloc_67 = memref.alloc() : memref<8xi32>
        memref.copy %alloc_22, %alloc_67 : memref<8xi32> to memref<8xi32>
        %274 = arith.ceildivsi %c786936960_i64, %c1228891554_i64 : i64
        %275 = memref.load %alloc_18[%c6, %c0] : memref<15x3xf16>
        %collapsed_68 = tensor.collapse_shape %2 [[0, 1]] : tensor<8x4xi32> into tensor<32xi32>
        %276 = arith.minf %cst_1, %cst_5 : f16
        %277 = math.log %11 : tensor<8x4xf32>
        %278 = math.log2 %5 : tensor<8x4xf32>
        %279 = affine.max affine_map<(d0, d1) -> (((d1 mod 128) * 64 - 2) * 8 - d1 mod 128, d1 * 8, ((d1 mod 128) * 64 - 2) * 2 + (-(d1 mod 128)) floordiv 4, d0 floordiv 2)>(%c13, %247)
        %alloc_69 = memref.alloc() : memref<3x3x4xi16>
        memref.copy %alloc_8, %alloc_69 : memref<3x3x4xi16> to memref<3x3x4xi16>
        %280 = arith.xori %c1561819944_i32, %c1561819944_i32 : i32
        scf.yield
      }
      case 2 {
        %267 = affine.max affine_map<(d0, d1, d2) -> ((d2 * -2) floordiv 16 - d1 * 2, (d2 * -2) floordiv 16 - d1 * 2)>(%39, %c11, %c3)
        %268 = math.expm1 %cst : f16
        %269 = vector.flat_transpose %36 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %rank_66 = tensor.rank %15 : tensor<8xi64>
        %270 = arith.maxui %true, %false : i1
        %271 = math.log1p %cst_6 : f32
        %272 = arith.mulf %cst_4, %cst_2 : f32
        %273 = index.castu %extracted_27 : i64 to index
        %274 = math.log2 %cst_2 : f32
        %275 = math.exp2 %3 : tensor<8xf32>
        %276 = vector.multi_reduction <minsi>, %54, %c786936960_i64 [0, 1] : vector<15x3xi64> to i64
        %277 = arith.maxui %false, %true_25 : i1
        %278 = arith.floordivsi %true, %true_25 : i1
        %279 = math.log10 %3 : tensor<8xf32>
        %280 = math.log1p %cst : f16
        %281 = vector.multi_reduction <minf>, %36, %269 [] : vector<1xf32> to vector<1xf32>
        scf.yield
      }
      default {
        %267 = vector.broadcast %cst_6 : f32 to vector<f32>
        %268 = vector.transfer_write %267, %5[%66, %82] : vector<f32>, tensor<8x4xf32>
        %269 = vector.insertelement %cst_0, %267[] : vector<f32>
        bufferization.dealloc_tensor %6 : tensor<15x3xf16>
        %270 = math.expm1 %cst_1 : f16
        %271 = memref.load %alloc_15[%c2, %c2] : memref<8x4xf32>
        %272 = vector.broadcast %extracted_27 : i64 to vector<3xi64>
        %dest_66, %accumulated_value_67 = vector.scan <and>, %54, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<15x3xi64>, vector<3xi64>
        %273 = index.ceildivu %82, %82
        %inserted_68 = tensor.insert %cst_3 into %11[%c6, %c1] : tensor<8x4xf32>
        %274 = vector.multi_reduction <or>, %243, %c-15298_i16 [0] : vector<1xi16> to i16
        %275 = arith.maxui %c786936960_i64, %c786936960_i64 : i64
        %276 = vector.bitcast %248 : vector<8xi16> to vector<8xi16>
        %277 = arith.ceildivsi %extracted_27, %c1228891554_i64 : i64
        %278 = arith.shrsi %c-15298_i16, %c30972_i16 : i16
        %279 = math.expm1 %extracted : f32
        %280 = vector.matrix_multiply %36, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf32>, vector<15xf32>) -> vector<15xf32>
        %281 = index.mul %c12, %66
      }
      %collapsed_62 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x4xf32> into tensor<32xf32>
      %252 = vector.broadcast %66 : index to vector<15xindex>
      %253 = vector.broadcast %true_25 : i1 to vector<15xi1>
      %254 = vector.broadcast %cst_7 : f16 to vector<15xf16>
      vector.scatter %alloc_18[%c9, %c2] [%252], %253, %254 : memref<15x3xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %255 = index.mul %c9, %c9
      %256 = bufferization.to_tensor %alloc_12 : memref<15x3xf32>
      %257 = math.cos %cst_6 : f32
      %258 = affine.if affine_set<(d0, d1, d2) : (d1 * 64 + d1 * 64 + 8 >= 0, d2 floordiv 64 - 32 >= 0, -(d0 * 16 - 64) == 0, d0 mod 16 >= 0)>(%c13, %c11, %c0) -> memref<8xi64> {
        %267 = arith.floordivsi %c1228891554_i64, %extracted_27 : i64
        %268 = vector.matrix_multiply %248, %248 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %cast_66 = tensor.cast %collapsed_62 : tensor<32xf32> to tensor<?xf32>
        %269 = arith.cmpi uge, %c30972_i16, %c30972_i16 : i16
        %270 = arith.floordivsi %c30972_i16, %c-15298_i16 : i16
        %271 = memref.realloc %alloc_22 : memref<8xi32> to memref<3xi32>
        %272 = bufferization.clone %alloc_10 : memref<3x3x4xi64> to memref<3x3x4xi64>
        %273 = index.castu %extracted_27 : i64 to index
        affine.yield %alloc_16 : memref<8xi64>
      } else {
        %267 = vector.matrix_multiply %60, %60 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %268 = index.sub %72, %255
        %269 = vector.load %alloc_17[%c1, %c1, %c3] : memref<3x3x4xf16>, vector<15x3xf16>
        %c1209299228_i32 = arith.constant 1209299228 : i32
        %270 = arith.maxsi %c-15298_i16, %c-15298_i16 : i16
        %271 = arith.ori %c1228891554_i64, %c1228891554_i64 : i64
        %272 = index.ceildivu %268, %70
        %273 = index.sub %c7, %c6
        affine.yield %alloc_16 : memref<8xi64>
      }
      %259 = index.sub %c4, %c6
      %260 = math.tanh %80 : f16
      %261 = arith.divsi %c1228891554_i64, %c1228891554_i64 : i64
      %262 = arith.maxsi %c1561819944_i32, %c1561819944_i32 : i32
      %263 = arith.addf %cst_4, %cst_6 : f32
      %264 = memref.realloc %alloc_22 : memref<8xi32> to memref<15xi32>
      %cast_63 = tensor.cast %2 : tensor<8x4xi32> to tensor<?x?xi32>
      %splat_64 = tensor.splat %extracted_27 : tensor<8x4xi64>
      %inserted_65 = tensor.insert %c786936960_i64 into %15[%c6] : tensor<8xi64>
      %265 = math.expm1 %cst_3 : f32
      %266 = arith.minf %cst_5, %cst : f16
    }
    %88 = memref.load %alloc_23[] : memref<f32>
    %89 = arith.maxsi %c1228891554_i64, %extracted_27 : i64
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_28 = arith.constant 0 : i32
    %90 = vector.transfer_read %2[%66, %37], %c0_i32_28 : tensor<8x4xi32>, vector<i32>
    %91 = index.ceildivs %c8, %66
    %92 = math.cos %expanded : tensor<3x3x4x1xf32>
    %alloca_29 = memref.alloca() : memref<8xi32>
    %93 = math.log1p %5 : tensor<8x4xf32>
    %94 = vector.shuffle %36, %36 [1] : vector<1xf32>, vector<1xf32>
    %collapsed_30 = tensor.collapse_shape %4 [[0, 1]] : tensor<15x3xi1> into tensor<45xi1>
    %95 = index.maxs %c8, %c2
    %96 = index.casts %c15 : index to i32
    %97 = arith.maxui %c0_i32, %c1561819944_i32 : i32
    %extracted_31 = tensor.extract %5[%c2, %c3] : tensor<8x4xf32>
    %generated_32 = tensor.generate %82 {
    ^bb0(%arg1: index):
      %243 = math.powf %expanded, %expanded : tensor<3x3x4x1xf32>
      %244 = tensor.empty() : tensor<8xi16>
      %mapped = linalg.map ins(%alloc_21 : memref<8xi16>) outs(%244 : tensor<8xi16>)
        (%in: i16) {
          %247 = vector.extract %20[6] : vector<15xf32>
          %248 = tensor.empty() : tensor<8x8xf32>
          %249 = linalg.matmul ins(%11, %18 : tensor<8x4xf32>, tensor<4x8xf32>) outs(%248 : tensor<8x8xf32>) -> tensor<8x8xf32>
          %250 = arith.shrui %c0_i32, %c0_i32 : i32
          %251 = arith.ori %true, %true_25 : i1
          %252 = vector.shuffle %36, %20 [0, 2, 3, 6, 7, 12, 13, 14, 15] : vector<1xf32>, vector<15xf32>
          %253 = index.ceildivs %c1, %72
          %254 = arith.minui %true, %true_25 : i1
          %alloca_60 = memref.alloca() : memref<8x4xi16>
          %255 = arith.shrui %c-15298_i16, %c-15298_i16 : i16
          %256 = vector.transpose %20, [0] : vector<15xf32> to vector<15xf32>
          %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + d0 - d3, (d0 - d2) mod 32)>(%c3, %37, %c4, %c12)
          %258 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(((d2 + 128) * 4) floordiv 128))>(%c12, %c4, %82, %rank)
          %259 = vector.create_mask %253 : vector<8xi1>
          %260 = arith.remui %c30972_i16, %in : i16
          %261 = index.sizeof
          %262 = math.log10 %9 : tensor<15x3xf32>
          %263 = math.ipowi %4, %4 : tensor<15x3xi1>
          %264 = bufferization.to_tensor %alloc : memref<8x4xi1>
          %265 = index.sub %39, %c10
          %266 = arith.minui %true_25, %true_25 : i1
          %267 = vector.insertelement %cst_6, %20[%c4 : index] : vector<15xf32>
          %268 = bufferization.to_tensor %alloc : memref<8x4xi1>
          %rank_61 = tensor.rank %12 : tensor<3x3x4xi1>
          %269 = affine.min affine_map<(d0) -> (-8, 4, d0 * 64)>(%c7)
          %270 = math.ctpop %264 : tensor<8x4xi1>
          memref.tensor_store %15, %alloc_16 : memref<8xi64>
          %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c2, %253, %rank_61, %82)
          %272 = vector.broadcast %c-15298_i16 : i16 to vector<i16>
          vector.transfer_write %272, %alloc_21[%rank_61] : vector<i16>, memref<8xi16>
          affine.store %c1228891554_i64, %alloc_10[%c10, %c1, %c8] : memref<3x3x4xi64>
          %273 = index.ceildivs %269, %c8
          %274 = arith.cmpi ugt, %in, %c-15298_i16 : i16
          %275 = vector.insertelement %c-15298_i16, %272[] : vector<i16>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %245 = bufferization.to_memref %14 : memref<3x3x4xf32>
      %246 = vector.broadcast %extracted_27 : i64 to vector<15xi64>
      %dest_58, %accumulated_value_59 = vector.scan <minsi>, %54, %246 {inclusive = true, reduction_dim = 1 : i64} : vector<15x3xi64>, vector<15xi64>
      tensor.yield %c1561819944_i32 : i32
    } : tensor<?xi32>
    %98 = arith.divsi %c-15298_i16, %c-15298_i16 : i16
    %99 = math.exp2 %cst_7 : f16
    %100 = index.mul %c5, %c13
    %101 = affine.max affine_map<(d0, d1) -> (d1 * 32 - 66, d1 * 32 - 66)>(%72, %39)
    %102 = vector.multi_reduction <maxsi>, %60, %c30972_i16 [0] : vector<8xi16> to i16
    %rank_33 = tensor.rank %5 : tensor<8x4xf32>
    %103 = vector.extract_strided_slice %54 {offsets = [1], sizes = [12], strides = [1]} : vector<15x3xi64> to vector<12x3xi64>
    %104 = math.absf %cst_2 : f32
    %cast = tensor.cast %10 : tensor<3x3x4xf32> to tensor<?x?x?xf32>
    memref.assume_alignment %alloc_12, 8 : memref<15x3xf32>
    %105 = math.atan2 %5, %5 : tensor<8x4xf32>
    %106 = arith.subi %c786936960_i64, %c1228891554_i64 : i64
    %107 = math.cttz %15 : tensor<8xi64>
    %108 = vector.broadcast %c1228891554_i64 : i64 to vector<3xi64>
    %dest_34, %accumulated_value_35 = vector.scan <minui>, %54, %108 {inclusive = true, reduction_dim = 0 : i64} : vector<15x3xi64>, vector<3xi64>
    %cast_36 = tensor.cast %7 : tensor<3x3x4xi16> to tensor<?x?x?xi16>
    %109 = math.tan %cst : f16
    %110 = math.exp2 %3 : tensor<8xf32>
    %111 = math.atan %cst : f16
    %112 = math.log1p %6 : tensor<15x3xf16>
    %113 = math.tanh %5 : tensor<8x4xf32>
    %114 = index.casts %c-15298_i16 : i16 to index
    %115 = arith.minf %cst_1, %cst : f16
    %extracted_37 = tensor.extract %4[%c2, %c1] : tensor<15x3xi1>
    %116 = math.floor %extracted_31 : f32
    %alloc_38 = memref.alloc() : memref<15x3xi16>
    %117 = arith.divui %c-15298_i16, %102 : i16
    %118 = vector.broadcast %c786936960_i64 : i64 to vector<3xi64>
    %dest_39, %accumulated_value_40 = vector.scan <maxsi>, %54, %118 {inclusive = true, reduction_dim = 0 : i64} : vector<15x3xi64>, vector<3xi64>
    %119 = bufferization.clone %alloc_15 : memref<8x4xf32> to memref<8x4xf32>
    %120 = arith.remf %extracted_31, %cst_4 : f32
    %121 = arith.ori %true, %true : i1
    %122 = math.log2 %cst : f16
    %123 = math.ctlz %0 : tensor<3x3x4xi1>
    %124 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xf32> -> vector<15xf32>
    %125 = arith.divsi %c786936960_i64, %c786936960_i64 : i64
    %126 = memref.load %alloc_11[%c1, %c2, %c3] : memref<3x3x4xi1>
    %127 = vector.extract %124[5] : vector<15xf32>
    %128 = math.fpowi %extracted_31, %c0_i32 : f32, i32
    %129 = tensor.empty(%c7) : tensor<?x4xi64>
    %130 = math.rsqrt %transposed : tensor<4x8xf32>
    %131 = arith.remui %c-15298_i16, %c-15298_i16 : i16
    %132 = vector.broadcast %c30972_i16 : i16 to vector<8x8xi16>
    %133 = vector.outerproduct %60, %60, %132 {kind = #vector.kind<add>} : vector<8xi16>, vector<8xi16>
    %134 = arith.minf %cst_3, %extracted : f32
    %135 = arith.divf %cst_3, %extracted_31 : f32
    %alloc_41 = memref.alloc() : memref<8xi64>
    memref.copy %alloc_16, %alloc_41 : memref<8xi64> to memref<8xi64>
    %136 = math.fpowi %cst_7, %c1561819944_i32 : f16, i32
    %137 = arith.subi %false, %false : i1
    %138 = affine.if affine_set<(d0) : (d0 ceildiv 32 >= 0, d0 ceildiv 32 == 0, (((d0 ceildiv 32) ceildiv 2) mod 16) ceildiv 8 >= 0, (d0 ceildiv 32 - (d0 ceildiv 32) ceildiv 2) ceildiv 128 >= 0)>(%c11) -> f16 {
      %243 = math.ipowi %23, %23 : tensor<i1>
      %244 = arith.maxui %c786936960_i64, %extracted_27 : i64
      %rank_58 = tensor.rank %84 : tensor<8x4xi64>
      %245 = arith.remf %cst_1, %cst_7 : f16
      %246 = vector.flat_transpose %60 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
      %247 = arith.divsi %102, %c-15298_i16 : i16
      %248 = arith.floordivsi %c1561819944_i32, %c0_i32 : i32
      %extracted_59 = tensor.extract %2[%c3, %c2] : tensor<8x4xi32>
      affine.yield %cst_1 : f16
    } else {
      %243 = arith.minsi %c30972_i16, %c-15298_i16 : i16
      %c-9931_i16 = arith.constant -9931 : i16
      %244 = tensor.empty() : tensor<8x4xi1>
      %245 = math.fpowi %cst_3, %c0_i32 : f32, i32
      scf.if %true {
        %248 = arith.ori %true_25, %false : i1
        memref.tensor_store %9, %alloc_12 : memref<15x3xf32>
        %249 = tensor.empty() : tensor<15x3xi32>
        %250 = math.fpowi %9, %249 : tensor<15x3xf32>, tensor<15x3xi32>
        %251 = arith.remui %true, %true_25 : i1
        %252 = arith.addf %80, %cst_7 : f16
        %253 = arith.addf %cst_3, %cst_6 : f32
        %254 = index.casts %c4 : index to i32
        %255 = vector.shuffle %103, %103 [0, 1, 4, 5, 6, 8, 9, 16, 17, 19, 20, 21, 23] : vector<12x3xi64>, vector<12x3xi64>
      } else {
        %248 = vector.multi_reduction <add>, %20, %20 [] : vector<15xf32> to vector<15xf32>
        %249 = math.exp2 %80 : f16
        %250 = vector.bitcast %124 : vector<15xf32> to vector<15xf32>
        %251 = index.maxu %c3, %c13
        %collapsed_59 = tensor.collapse_shape %cast_36 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
        %252 = arith.minui %true, %extracted_37 : i1
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %253 = vector.transfer_read %1[%c0, %c12], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x4xi64>, vector<8xi64>
        %254 = arith.maxsi %c30972_i16, %102 : i16
      }
      %246 = math.exp2 %extracted_31 : f32
      %collapsed_58 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x3x4xf32> into tensor<9x4xf32>
      %247 = affine.for %arg1 = 0 to 52 iter_args(%arg2 = %cst_1) -> (f16) {
        affine.yield %arg2 : f16
      }
      affine.yield %80 : f16
    }
    %139 = index.casts %c30972_i16 : i16 to index
    %140 = arith.shrui %c0_i32, %c1561819944_i32 : i32
    %141 = arith.divsi %true_25, %true_25 : i1
    %c497356306_i32 = arith.constant 497356306 : i32
    %142 = memref.load %alloc_23[] : memref<f32>
    %143 = index.floordivs %c15, %c5
    %144 = memref.alloca_scope  -> (memref<3x3x4xi64>) {
      %alloc_58 = memref.alloc() : memref<15x3xi1>
      %243 = tensor.empty() : tensor<8xf16>
      %244 = math.tan %cst_7 : f16
      %extracted_59 = tensor.extract %22[] : tensor<i1>
      vector.print %54 : vector<15x3xi64>
      %245 = arith.shrui %extracted_37, %extracted_59 : i1
      %246 = math.expm1 %18 : tensor<4x8xf32>
      %247 = affine.load %alloc_22[%c9] : memref<8xi32>
      %248 = math.exp2 %5 : tensor<8x4xf32>
      %249 = affine.max affine_map<(d0, d1, d2) -> (d1 + d2, (d2 - 2) ceildiv 4)>(%72, %139, %100)
      %250 = math.log2 %18 : tensor<4x8xf32>
      %251 = arith.minf %cst_5, %cst_1 : f16
      %252 = index.add %c10, %91
      %253 = memref.load %alloc_21[%c7] : memref<8xi16>
      %from_elements = tensor.from_elements %c1228891554_i64, %extracted_27, %extracted_27, %c786936960_i64, %c786936960_i64, %c1228891554_i64, %extracted_27, %c1228891554_i64, %c1228891554_i64, %c786936960_i64, %c1228891554_i64, %c1228891554_i64, %extracted_27, %extracted_27, %c786936960_i64, %c1228891554_i64, %c1228891554_i64, %c1228891554_i64, %c1228891554_i64, %c786936960_i64, %c786936960_i64, %c786936960_i64, %c1228891554_i64, %extracted_27, %extracted_27, %c1228891554_i64, %c1228891554_i64, %c1228891554_i64, %extracted_27, %extracted_27, %c1228891554_i64, %c786936960_i64 : tensor<8x4xi64>
      %254 = vector.insertelement %cst_2, %36[%c13 : index] : vector<1xf32>
      %255 = math.atan %80 : f16
      %256 = affine.min affine_map<(d0, d1) -> (d1)>(%rank, %72)
      %257 = math.cos %10 : tensor<3x3x4xf32>
      %258 = bufferization.to_memref %0 : memref<3x3x4xi1>
      %cast_60 = tensor.cast %22 : tensor<i1> to tensor<i1>
      %collapsed_61 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
      %259 = vector.broadcast %c6 : index to vector<4xindex>
      %260 = vector.broadcast %true_25 : i1 to vector<4xi1>
      vector.scatter %alloc_13[%c0, %c2, %c3] [%259], %260, %260 : memref<3x3x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      bufferization.dealloc_tensor %15 : tensor<8xi64>
      %261 = tensor.empty() : tensor<3x3x4xi16>
      %262 = math.exp2 %14 : tensor<3x3x4xf32>
      %263 = vector.broadcast %c-15298_i16 : i16 to vector<4xi16>
      %264 = vector.transfer_write %263, %7[%c13, %72, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xi16>, tensor<3x3x4xi16>
      %265 = index.floordivs %c9, %72
      %266 = math.log2 %extracted_31 : f32
      %267 = arith.remf %cst_6, %extracted : f32
      %268 = memref.realloc %alloc_22 : memref<8xi32> to memref<3xi32>
      %269 = math.fma %10, %14, %10 : tensor<3x3x4xf32>
      memref.alloca_scope.return %alloc_10 : memref<3x3x4xi64>
    }
    %expanded_42 = tensor.expand_shape %15 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
    %145 = math.round %10 : tensor<3x3x4xf32>
    %146 = arith.floordivsi %c-15298_i16, %c30972_i16 : i16
    %147 = arith.shrsi %c-15298_i16, %102 : i16
    %alloc_43 = memref.alloc() : memref<8x4xi64>
    %false_44 = arith.constant false
    %148 = vector.transfer_read %collapsed_24[%rank_33, %95], %false_44 : tensor<9x4xi1>, vector<8xi1>
    %149 = affine.max affine_map<(d0) -> (d0 - 16, 0)>(%rank)
    %150 = vector.splat %80 : vector<15x3xf16>
    %151 = math.exp2 %cst_1 : f16
    %alloca_45 = memref.alloca() : memref<8x4xi16>
    %152 = index.ceildivu %37, %c11
    %153 = vector.matrix_multiply %36, %36 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %154 = memref.alloca_scope  -> (i16) {
      %splat_58 = tensor.splat %cst_5 : tensor<3x3x4xf16>
      %243 = vector.splat %cst_2 : vector<3x3x4xf32>
      %244 = arith.remui %c786936960_i64, %c786936960_i64 : i64
      %245 = arith.minui %c1228891554_i64, %c786936960_i64 : i64
      vector.print %103 : vector<12x3xi64>
      %extracted_59 = tensor.extract %6[%c7, %c2] : tensor<15x3xf16>
      %246 = vector.reduction <maxf>, %153 : vector<1xf32> into f32
      %247 = math.tan %3 : tensor<8xf32>
      affine.store %c1228891554_i64, %alloc_9[%c5, %c9] : memref<8x4xi64>
      %248 = index.casts %149 : index to i32
      %249 = scf.if %false -> (memref<15x3xi64>) {
        %270 = vector.broadcast %extracted_27 : i64 to vector<3xi64>
        %dest_62, %accumulated_value_63 = vector.scan <add>, %103, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<12x3xi64>, vector<3xi64>
        %271 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 64)>(%rank, %c9, %c12)
        %extracted_64 = tensor.extract %8[%c7] : tensor<8xi1>
        %272 = vector.load %alloc[%c6, %c0] : memref<8x4xi1>, vector<8xi1>
        %273 = memref.realloc %alloc_22 : memref<8xi32> to memref<15xi32>
        %274 = index.castu %false : i1 to index
        %275 = math.ctlz %c0_i32 : i32
        %276 = vector.transpose %60, [0] : vector<8xi16> to vector<8xi16>
        %alloc_65 = memref.alloc() : memref<15x3xi64>
        scf.yield %alloc_65 : memref<15x3xi64>
      } else {
        %270 = vector.broadcast %c12 : index to vector<4xindex>
        %271 = vector.broadcast %false_44 : i1 to vector<4xi1>
        %272 = vector.broadcast %extracted_27 : i64 to vector<4xi64>
        vector.scatter %alloc_10[%c1, %c1, %c2] [%270], %271, %272 : memref<3x3x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %273 = math.absf %11 : tensor<8x4xf32>
        %274 = arith.addf %cst_7, %cst_1 : f16
        %275 = arith.ori %c1561819944_i32, %c0_i32 : i32
        %276 = math.copysign %splat_58, %splat_58 : tensor<3x3x4xf16>
        %277 = bufferization.clone %alloc_22 : memref<8xi32> to memref<8xi32>
        %278 = arith.minf %extracted, %cst_2 : f32
        %279 = arith.remf %cst, %80 : f16
        %alloc_62 = memref.alloc() : memref<15x3xi64>
        scf.yield %alloc_62 : memref<15x3xi64>
      }
      %250 = arith.remui %extracted_27, %extracted_27 : i64
      %251 = arith.ceildivsi %true, %true_25 : i1
      %rank_60 = tensor.rank %9 : tensor<15x3xf32>
      %252 = vector.reduction <maxf>, %36 : vector<1xf32> into f32
      %253 = arith.minf %cst_2, %cst_4 : f32
      %254 = memref.load %119[%c4, %c0] : memref<8x4xf32>
      bufferization.dealloc_tensor %23 : tensor<i1>
      %255 = math.rsqrt %10 : tensor<3x3x4xf32>
      %256 = vector.matrix_multiply %153, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf32>, vector<15xf32>) -> vector<15xf32>
      %257 = memref.realloc %alloc_21 : memref<8xi16> to memref<4xi16>
      vector.print %60 : vector<8xi16>
      %cast_61 = tensor.cast %12 : tensor<3x3x4xi1> to tensor<?x?x?xi1>
      %258 = vector.transpose %20, [0] : vector<15xf32> to vector<15xf32>
      %259 = tensor.empty() : tensor<4x8xi64>
      %260 = tensor.empty() : tensor<8x8xi64>
      %261 = linalg.matmul ins(%1, %259 : tensor<8x4xi64>, tensor<4x8xi64>) outs(%260 : tensor<8x8xi64>) -> tensor<8x8xi64>
      %262 = math.log %cst_4 : f32
      %263 = arith.maxsi %false, %false : i1
      %264 = tensor.empty() : tensor<8xi16>
      %265 = arith.mulf %cst_6, %extracted_31 : f32
      %266 = math.sqrt %11 : tensor<8x4xf32>
      %267 = math.exp2 %cst_0 : f32
      %268 = vector.broadcast %cst_5 : f16 to vector<8xf16>
      %269 = vector.transfer_write %268, %6[%139, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<15x3xf16>
      memref.alloca_scope.return %c30972_i16 : i16
    }
    scf.if %false {
      %243 = vector.broadcast %extracted_27 : i64 to vector<3xi64>
      %dest_58, %accumulated_value_59 = vector.scan <mul>, %54, %243 {inclusive = true, reduction_dim = 0 : i64} : vector<15x3xi64>, vector<3xi64>
      %244 = bufferization.to_memref %6 : memref<15x3xf16>
      %cast_60 = tensor.cast %4 : tensor<15x3xi1> to tensor<?x?xi1>
      %245 = vector.broadcast %extracted_27 : i64 to vector<15xi64>
      %dest_61, %accumulated_value_62 = vector.scan <minsi>, %54, %245 {inclusive = true, reduction_dim = 1 : i64} : vector<15x3xi64>, vector<15xi64>
      %246 = arith.divf %cst_1, %cst : f16
      %247 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(((d2 + 128) * 4) floordiv 128))>(%c2, %101, %82, %c11)
      %248 = vector.reduction <maxf>, %124 : vector<15xf32> into f32
      %249 = bufferization.clone %alloc_11 : memref<3x3x4xi1> to memref<3x3x4xi1>
    } else {
      %243 = scf.while (%arg1 = %c786936960_i64) : (i64) -> i64 {
        %250 = bufferization.to_tensor %alloc_21 : memref<8xi16>
        %251 = vector.shuffle %54, %103 [0, 1, 2, 4, 6, 8, 9, 11, 12, 13, 15, 18, 19, 20, 21, 23] : vector<15x3xi64>, vector<12x3xi64>
        %252 = index.ceildivu %37, %91
        %253 = math.atan %11 : tensor<8x4xf32>
        %254 = arith.cmpf uge, %cst_4, %extracted_31 : f32
        %255 = arith.subi %false, %false_44 : i1
        %256 = math.ctlz %true_25 : i1
        %257 = index.sub %c0, %c7
        scf.condition(%true) %extracted_27 : i64
      } do {
      ^bb0(%arg1: i64):
        %250 = arith.floordivsi %c0_i32, %c1561819944_i32 : i32
        %splat_58 = tensor.splat %102 : tensor<15x3xi16>
        %251 = math.log %cst_6 : f32
        %252 = bufferization.to_memref %23 : memref<i1>
        %253 = math.ctlz %c-15298_i16 : i16
        %254 = arith.remf %80, %cst : f16
        %255 = math.cttz %c30972_i16 : i16
        %256 = affine.min affine_map<(d0, d1) -> ((-(d0 floordiv 128 + d0 floordiv 2)) floordiv 128, (-(d0 floordiv 128 + d0 floordiv 2)) ceildiv 128)>(%c8, %c1)
        %257 = math.tanh %5 : tensor<8x4xf32>
        %258 = index.maxu %c12, %c5
        %259 = vector.broadcast %c786936960_i64 : i64 to vector<15xi64>
        %dest_59, %accumulated_value_60 = vector.scan <minsi>, %54, %259 {inclusive = false, reduction_dim = 1 : i64} : vector<15x3xi64>, vector<15xi64>
        %260 = vector.insertelement %cst_4, %153[%c15 : index] : vector<1xf32>
        %261 = arith.subi %154, %102 : i16
        %262 = math.ctlz %extracted_37 : i1
        %263 = arith.ori %c1228891554_i64, %extracted_27 : i64
        %264 = bufferization.clone %alloc_11 : memref<3x3x4xi1> to memref<3x3x4xi1>
        scf.yield %c786936960_i64 : i64
      }
      %244 = arith.maxsi %true, %true : i1
      %245 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 32 - ((d1 floordiv 32) floordiv 8 + 16), d1 floordiv 32 + 128, (-(d0 floordiv 64 + d1 floordiv 32 + 128)) ceildiv 64, 0)>(%c6, %72)
      %246 = math.expm1 %14 : tensor<3x3x4xf32>
      affine.for %arg1 = 0 to 99 {
      }
      %247 = math.ipowi %c0_i32, %c1561819944_i32 : i32
      %248 = index.ceildivu %152, %82
      %249 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%c13, %100, %c9, %91)
    }
    %155 = arith.ceildivsi %false, %true_25 : i1
    %156 = math.rsqrt %cst_1 : f16
    memref.assume_alignment %alloc_14, 2 : memref<15x3xf16>
    %157 = index.castu %72 : index to i32
    %158 = scf.index_switch %c11 -> index 
    case 1 {
      %243 = vector.load %alloc_23[] : memref<f32>, vector<8x4xf32>
      %244 = affine.if affine_set<(d0, d1, d2) : (d2 + d1 floordiv 64 == 0)>(%c6, %c6, %c5) -> memref<15x3xf32> {
        %256 = math.ceil %14 : tensor<3x3x4xf32>
        %inserted_59 = tensor.insert %false_44 into %4[%c8, %c1] : tensor<15x3xi1>
        %257 = index.casts %c30972_i16 : i16 to index
        %258 = math.log10 %5 : tensor<8x4xf32>
        %inserted_60 = tensor.insert %c0_i32 into %generated_32[%c0] : tensor<?xi32>
        %259 = vector.transpose %243, [0, 1] : vector<8x4xf32> to vector<8x4xf32>
        %260 = arith.shrui %extracted_37, %true_25 : i1
        %261 = index.ceildivu %114, %c13
        affine.yield %alloc_12 : memref<15x3xf32>
      } else {
        %256 = arith.remsi %c30972_i16, %154 : i16
        %257 = index.casts %extracted_27 : i64 to index
        %258 = index.casts %c1228891554_i64 : i64 to index
        %259 = arith.divsi %true, %false : i1
        %260 = math.ipowi %8, %8 : tensor<8xi1>
        %collapsed_59 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x4xf32> into tensor<32xf32>
        memref.assume_alignment %alloc_8, 16 : memref<3x3x4xi16>
        %false_60 = index.bool.constant false
        affine.yield %alloc_12 : memref<15x3xf32>
      }
      %245 = index.sizeof
      %246 = math.tan %11 : tensor<8x4xf32>
      %247 = arith.minui %c30972_i16, %c30972_i16 : i16
      %248 = math.exp2 %9 : tensor<15x3xf32>
      memref.copy %144, %alloc_10 : memref<3x3x4xi64> to memref<3x3x4xi64>
      %249 = math.powf %6, %6 : tensor<15x3xf16>
      %250 = math.log10 %80 : f16
      %generated_58 = tensor.generate %70, %c12 {
      ^bb0(%arg1: index, %arg2: index):
        %256 = arith.remui %c0_i32, %c0_i32 : i32
        %257 = bufferization.to_memref %16 : memref<8x4xi32>
        %258 = vector.reduction <add>, %36 : vector<1xf32> into f32
        %259 = bufferization.to_tensor %119 : memref<8x4xf32>
        tensor.yield %cst_0 : f32
      } : tensor<?x?xf32>
      %251 = bufferization.to_memref %1 : memref<8x4xi64>
      %252 = arith.mulf %cst, %80 : f16
      %253 = arith.addf %cst_2, %cst_2 : f32
      %254 = arith.divf %extracted_31, %extracted : f32
      memref.alloca_scope  {
        %256 = affine.load %alloc_16[%c4] : memref<8xi64>
        %257 = math.absf %transposed : tensor<4x8xf32>
        %258 = vector.extract_strided_slice %60 {offsets = [5], sizes = [1], strides = [1]} : vector<8xi16> to vector<1xi16>
        %alloca_59 = memref.alloca() : memref<3x3x4xi64>
        affine.store %extracted_27, %alloc_10[%c13, %c2, %c6] : memref<3x3x4xi64>
        %259 = math.log %extracted : f32
        memref.assume_alignment %144, 8 : memref<3x3x4xi64>
        %260 = math.tanh %11 : tensor<8x4xf32>
        %261 = math.log2 %cst_3 : f32
        %262 = vector.extract_strided_slice %54 {offsets = [6], sizes = [1], strides = [1]} : vector<15x3xi64> to vector<1x3xi64>
        %263 = arith.divsi %102, %102 : i16
        %false_60 = arith.constant false
        %false_61 = arith.constant false
        %264 = vector.transfer_read %alloc[%rank_33, %rank], %false_61 : memref<8x4xi1>, vector<i1>
        %265 = math.exp2 %expanded : tensor<3x3x4x1xf32>
        %266 = vector.insertelement %extracted_31, %124[%c1 : index] : vector<15xf32>
        %267 = bufferization.to_memref %14 : memref<3x3x4xf32>
        %268 = vector.load %144[%c1, %c1, %c3] : memref<3x3x4xi64>, vector<3x3x4xi64>
        bufferization.dealloc_tensor %9 : tensor<15x3xf32>
        %269 = affine.max affine_map<(d0) -> (-d0 - 16)>(%37)
        %270 = arith.remf %extracted_31, %extracted : f32
        %271 = affine.load %alloc_20[%c12, %c8] : memref<8x4xf16>
        %inserted_62 = tensor.insert %cst_0 into %3[%c4] : tensor<8xf32>
        %alloc_63 = memref.alloc() : memref<4x4xi32>
        %272 = tensor.empty() : tensor<8x4xi32>
        %273 = linalg.matmul ins(%17, %alloc_63 : tensor<8x4xi32>, memref<4x4xi32>) outs(%272 : tensor<8x4xi32>) -> tensor<8x4xi32>
        %274 = memref.atomic_rmw mulf %271, %alloc_18[%c2, %c2] : (f16, memref<15x3xf16>) -> f16
        memref.store %cst_1, %alloc_17[%c1, %c2, %c3] : memref<3x3x4xf16>
        %275 = arith.maxsi %c-15298_i16, %c-15298_i16 : i16
        %276 = arith.minf %cst_1, %cst_1 : f16
        %false_64 = index.bool.constant false
        %277 = math.expm1 %5 : tensor<8x4xf32>
        %278 = index.mul %c8, %c2
        %279 = affine.load %119[%c3, %c2] : memref<8x4xf32>
        %280 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        %281 = vector.multi_reduction <minf>, %243, %280 [0] : vector<8x4xf32> to vector<4xf32>
        %282 = vector.splat %cst_0 : vector<8x4xf32>
      }
      %255 = arith.minui %c786936960_i64, %c786936960_i64 : i64
      scf.yield %101 : index
    }
    default {
      %243 = vector.extract_strided_slice %20 {offsets = [7], sizes = [2], strides = [1]} : vector<15xf32> to vector<2xf32>
      %244 = math.tan %3 : tensor<8xf32>
      %245 = math.round %14 : tensor<3x3x4xf32>
      %246 = math.log2 %cst_2 : f32
      %247 = arith.divf %cst_2, %cst_6 : f32
      %248 = math.exp2 %10 : tensor<3x3x4xf32>
      %249 = vector.matrix_multiply %36, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf32>, vector<15xf32>) -> vector<15xf32>
      %250 = arith.minf %extracted_31, %extracted : f32
      %251 = memref.atomic_rmw mulf %80, %alloc_20[%c3, %c2] : (f16, memref<8x4xf16>) -> f16
      %252 = vector.load %119[%c2, %c2] : memref<8x4xf32>, vector<15x3xf32>
      %253 = arith.maxui %c30972_i16, %102 : i16
      %254 = arith.remf %80, %cst_7 : f16
      %255 = arith.minf %cst_7, %80 : f16
      %extracted_58 = tensor.extract %15[%c4] : tensor<8xi64>
      %256 = vector.bitcast %20 : vector<15xf32> to vector<15xf32>
      %257 = math.tan %14 : tensor<3x3x4xf32>
      scf.yield %c6 : index
    }
    %cst_46 = arith.constant 1.000000e+00 : f32
    %cst_47 = arith.constant 0.000000e+00 : f32
    %159 = vector.transfer_read %9[%c0, %114], %cst_47 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<15x3xf32>, vector<3xf32>
    %160 = vector.matrix_multiply %153, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf32>, vector<15xf32>) -> vector<15xf32>
    %161 = arith.minui %c30972_i16, %102 : i16
    %162 = vector.splat %c1 : vector<8x4xindex>
    %collapsed_48 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x3x4xi1> into tensor<9x4xi1>
    %163 = math.atan2 %6, %6 : tensor<15x3xf16>
    %164 = vector.matrix_multiply %36, %160 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf32>, vector<15xf32>) -> vector<15xf32>
    %c1740058974_i32 = arith.constant 1740058974 : i32
    %165 = vector.transpose %20, [0] : vector<15xf32> to vector<15xf32>
    %splat = tensor.splat %c1228891554_i64 : tensor<15x3xi64>
    %166 = math.round %3 : tensor<8xf32>
    %167 = arith.ori %102, %154 : i16
    %168 = vector.extract %20[13] : vector<15xf32>
    %169 = tensor.empty(%c6) : tensor<8x?xi1>
    %170 = bufferization.clone %alloc_13 : memref<3x3x4xi1> to memref<3x3x4xi1>
    %171 = arith.maxui %c786936960_i64, %c1228891554_i64 : i64
    %172 = math.cttz %extracted_37 : i1
    %173 = math.ctlz %16 : tensor<8x4xi32>
    %174 = index.sizeof
    affine.store %cst_2, %119[%c0, %c7] : memref<8x4xf32>
    %splat_49 = tensor.splat %cst_3 : tensor<8xf32>
    %175 = index.ceildivs %37, %82
    %176 = vector.extract %54[1] : vector<15x3xi64>
    bufferization.dealloc_tensor %collapsed_48 : tensor<9x4xi1>
    %177 = vector.insertelement %extracted_31, %164[%34 : index] : vector<15xf32>
    %178 = math.rsqrt %9 : tensor<15x3xf32>
    scf.if %true_25 {
      %243 = arith.divsi %c-15298_i16, %154 : i16
      %244 = arith.minsi %154, %154 : i16
      %alloc_58 = memref.alloc() : memref<8xi64>
      %245 = vector.flat_transpose %153 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %246 = math.fpowi %cst_46, %c1561819944_i32 : f32, i32
      %cast_59 = tensor.cast %9 : tensor<15x3xf32> to tensor<?x?xf32>
      %247 = vector.insertelement %cst_2, %164[%c6 : index] : vector<15xf32>
      %cast_60 = tensor.cast %3 : tensor<8xf32> to tensor<?xf32>
    } else {
      %243 = vector.insertelement %extracted_27, %176[%c11 : index] : vector<3xi64>
      %244 = math.ctpop %c30972_i16 : i16
      %245 = math.fma %14, %14, %10 : tensor<3x3x4xf32>
      %246 = arith.shrsi %false_44, %false : i1
      %splat_58 = tensor.splat %true_25 : tensor<15x3xi1>
      %247 = arith.remui %102, %c-15298_i16 : i16
      %248 = vector.extract %124[12] : vector<15xf32>
      %249 = math.cttz %c-15298_i16 : i16
    }
    %extracted_50 = tensor.extract %3[%c1] : tensor<8xf32>
    %179 = vector.insertelement %154, %60[%34 : index] : vector<8xi16>
    %180 = arith.minf %cst_2, %extracted_31 : f32
    %181 = tensor.empty() : tensor<8xi32>
    %182 = math.absf %splat_49 : tensor<8xf32>
    %183 = vector.insertelement %cst_4, %164[%70 : index] : vector<15xf32>
    %184 = memref.load %alloc_12[%c0, %c1] : memref<15x3xf32>
    %185 = arith.xori %true, %false : i1
    %186 = vector.splat %143 : vector<3x3x4xindex>
    %187 = index.ceildivs %143, %c13
    %188 = arith.muli %false_44, %true_25 : i1
    memref.tensor_store %7, %alloc_8 : memref<3x3x4xi16>
    %189 = arith.ceildivsi %102, %c30972_i16 : i16
    %190 = arith.subi %false, %extracted_37 : i1
    %191 = math.cttz %collapsed_24 : tensor<9x4xi1>
    %192 = math.exp2 %cst : f16
    %193 = arith.maxsi %154, %c30972_i16 : i16
    %collapsed_51 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x4xf32> into tensor<32xf32>
    %194 = math.fma %extracted_31, %cst_6, %cst_2 : f32
    %195 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d0)>(%66, %114, %c2, %37)
    %196 = math.rsqrt %3 : tensor<8xf32>
    %197 = arith.minui %c786936960_i64, %c786936960_i64 : i64
    %198 = arith.remf %cst_4, %extracted_50 : f32
    %199 = tensor.empty() : tensor<3x4xi64>
    %200 = tensor.empty() : tensor<15x4xi64>
    %201 = linalg.matmul ins(%splat, %199 : tensor<15x3xi64>, tensor<3x4xi64>) outs(%200 : tensor<15x4xi64>) -> tensor<15x4xi64>
    %202 = bufferization.to_tensor %alloc_23 : memref<f32>
    %203 = math.expm1 %11 : tensor<8x4xf32>
    %204 = affine.min affine_map<(d0, d1) -> (0, d1 floordiv 2 + 128)>(%139, %c9)
    %205 = vector.transpose %160, [0] : vector<15xf32> to vector<15xf32>
    %206 = math.ipowi %collapsed_24, %collapsed_48 : tensor<9x4xi1>
    %207 = index.ceildivu %c4, %101
    %208 = math.absf %cst_0 : f32
    %209 = vector.broadcast %207 : index to vector<8xindex>
    %210 = vector.broadcast %true_25 : i1 to vector<8xi1>
    vector.scatter %alloc[%c5, %c1] [%209], %210, %210 : memref<8x4xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
    %211 = arith.mulf %cst_3, %extracted_31 : f32
    %212 = vector.transpose %60, [0] : vector<8xi16> to vector<8xi16>
    %213 = vector.broadcast %175 : index to vector<8xindex>
    %214 = vector.broadcast %true : i1 to vector<8xi1>
    vector.scatter %alloc[%c1, %c2] [%213], %214, %214 : memref<8x4xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
    %215 = math.ctlz %c1228891554_i64 : i64
    %216 = arith.floordivsi %c0_i32, %c1561819944_i32 : i32
    %217 = math.tanh %6 : tensor<15x3xf16>
    %218 = vector.reduction <mul>, %36 : vector<1xf32> into f32
    %219 = math.round %9 : tensor<15x3xf32>
    %220 = math.log10 %cst_0 : f32
    %221 = math.log %10 : tensor<3x3x4xf32>
    %222 = index.sizeof
    %223 = arith.maxui %c0_i32, %c1561819944_i32 : i32
    %224 = affine.for %arg1 = 0 to 42 iter_args(%arg2 = %collapsed_48) -> (tensor<9x4xi1>) {
      affine.yield %collapsed_48 : tensor<9x4xi1>
    }
    %225 = bufferization.to_tensor %alloc_11 : memref<3x3x4xi1>
    %226 = memref.load %144[%c0, %c0, %c1] : memref<3x3x4xi64>
    %227 = index.ceildivu %187, %195
    %alloca_52 = memref.alloca() : memref<8xi32>
    %228 = math.tanh %9 : tensor<15x3xf32>
    %229 = arith.addf %80, %cst_1 : f16
    %230 = arith.minsi %c786936960_i64, %c1228891554_i64 : i64
    memref.assume_alignment %alloc_15, 1 : memref<8x4xf32>
    %231 = vector.broadcast %34 : index to vector<15xindex>
    %232 = vector.broadcast %true : i1 to vector<15xi1>
    vector.scatter %alloc_19[%c14, %c1] [%231], %232, %232 : memref<15x3xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
    vector.print %124 : vector<15xf32>
    %inserted_53 = tensor.insert %extracted into %3[%c4] : tensor<8xf32>
    %233 = arith.maxui %c786936960_i64, %extracted_27 : i64
    %234 = vector.broadcast %cst_5 : f16 to vector<8xf16>
    vector.transfer_write %234, %alloc_14[%187, %66] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, memref<15x3xf16>
    %235 = math.powf %splat_49, %3 : tensor<8xf32>
    %inserted_54 = tensor.insert %cst_7 into %6[%c10, %c2] : tensor<15x3xf16>
    %236 = arith.addi %c786936960_i64, %c1228891554_i64 : i64
    %237 = memref.realloc %alloc_21 : memref<8xi16> to memref<15xi16>
    %238 = index.sizeof
    %extracted_55 = tensor.extract %splat[%c11, %c2] : tensor<15x3xi64>
    %239 = tensor.empty() : tensor<8x4xi64>
    %240 = linalg.copy ins(%84 : tensor<8x4xi64>) outs(%239 : tensor<8x4xi64>) -> tensor<8x4xi64>
    %alloc_56 = memref.alloc() : memref<4x3x3xi1>
    linalg.transpose ins(%12 : tensor<3x3x4xi1>) outs(%alloc_56 : memref<4x3x3xi1>) permutation = [2, 0, 1] 
    %alloc_57 = memref.alloc() : memref<i32>
    linalg.reduce ins(%13 : tensor<3x3x4xi32>) outs(%alloc_57 : memref<i32>) dimensions = [0, 1, 2] 
      (%in: i32, %init: i32) {
        %243 = math.ipowi %7, %7 : tensor<3x3x4xi16>
        %244 = memref.load %alloc_9[%c1, %c1] : memref<8x4xi64>
        %245 = math.ipowi %false, %false_44 : i1
        %246 = math.ipowi %4, %4 : tensor<15x3xi1>
        %247 = math.cttz %true : i1
        %248 = arith.minf %cst_5, %cst_5 : f16
        %249 = arith.negf %extracted : f32
        %250 = arith.mulf %cst_7, %cst_5 : f16
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %241 = scf.parallel (%arg1) = (%c6) to (%c3) step (%c8) init (%c1228891554_i64) -> i64 {
      %alloc_58 = memref.alloc() : memref<15x3xi64>
      %243 = vector.matrix_multiply %164, %164 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
      %expanded_59 = tensor.expand_shape %225 [[0], [1], [2, 3]] : tensor<3x3x4xi1> into tensor<3x3x4x1xi1>
      %244 = math.expm1 %splat_49 : tensor<8xf32>
      %rank_60 = tensor.rank %16 : tensor<8x4xi32>
      %245 = index.mul %c4, %195
      %246 = tensor.empty() : tensor<4x3xi64>
      %247 = tensor.empty() : tensor<8x3xi64>
      %248 = linalg.matmul ins(%84, %246 : tensor<8x4xi64>, tensor<4x3xi64>) outs(%247 : tensor<8x3xi64>) -> tensor<8x3xi64>
      %249 = memref.realloc %alloc_22 : memref<8xi32> to memref<8xi32>
      %250 = arith.maxsi %extracted_27, %c786936960_i64 : i64
      %251 = math.absf %9 : tensor<15x3xf32>
      %252 = vector.extract_strided_slice %60 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
      %253 = arith.mulf %cst_2, %cst_6 : f32
      %254 = arith.floordivsi %c1228891554_i64, %extracted_55 : i64
      %255 = vector.load %alloc_17[%c2, %c0, %c3] : memref<3x3x4xf16>, vector<8xf16>
      %256 = math.powf %cst_3, %cst_6 : f32
      %rank_61 = tensor.rank %12 : tensor<3x3x4xi1>
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg2: i64, %arg3: i64):
        memref.assume_alignment %alloc_57, 4 : memref<i32>
        %257 = vector.create_mask %175, %204 : vector<15x3xi1>
        %258 = vector.matrix_multiply %20, %124 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
        %259 = vector.splat %c30972_i16 : vector<8xi16>
        %260 = index.floordivs %101, %rank_33
        %from_elements = tensor.from_elements %cst_2, %cst_46, %cst_0, %cst_3, %cst_4, %cst_46, %cst_3, %cst_2, %cst_4, %cst_3, %cst_6, %extracted_50, %extracted_31, %cst_3, %cst_6, %cst_2, %cst_46, %cst_3, %extracted_50, %extracted, %cst_4, %cst_46, %cst_46, %cst_0, %cst_2, %cst_6, %extracted_31, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2 : tensor<8x4xf32>
        vector.print %36 : vector<1xf32>
        %261 = math.expm1 %18 : tensor<4x8xf32>
        %c0_i64_62 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_62 : i64
      }
      scf.yield
    }
    %242 = affine.vector_load %alloc_8[%82, %c14, %c2] : memref<3x3x4xi16>, vector<4xi16>
    affine.vector_store %234, %alloc_20[%114, %c9] : memref<8x4xf16>, vector<8xf16>
    vector.print %20 : vector<15xf32>
    vector.print %36 : vector<1xf32>
    vector.print %54 : vector<15x3xi64>
    vector.print %60 : vector<8xi16>
    vector.print %103 : vector<12x3xi64>
    vector.print %124 : vector<15xf32>
    vector.print %153 : vector<1xf32>
    vector.print %160 : vector<15xf32>
    vector.print %164 : vector<15xf32>
    vector.print %176 : vector<3xi64>
    vector.print %234 : vector<8xf16>
    vector.print %242 : vector<4xi16>
    vector.print %cst : f16
    vector.print %c-15298_i16 : i16
    vector.print %c786936960_i64 : i64
    vector.print %cst_0 : f32
    vector.print %c30972_i16 : i16
    vector.print %true : i1
    vector.print %c1228891554_i64 : i64
    vector.print %cst_1 : f16
    vector.print %false : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c1561819944_i32 : i32
    vector.print %cst_6 : f32
    vector.print %cst_7 : f16
    vector.print %true_25 : i1
    vector.print %extracted : f32
    vector.print %80 : f16
    vector.print %extracted_27 : i64
    vector.print %c0_i32 : i32
    vector.print %extracted_31 : f32
    vector.print %102 : i16
    vector.print %extracted_37 : i1
    vector.print %false_44 : i1
    vector.print %154 : i16
    vector.print %cst_46 : f32
    vector.print %extracted_50 : f32
    vector.print %extracted_55 : i64
    return %rank : index
  }
}
