module {
  func.func @func1(%arg0: vector<6x6xf32>) -> f16 {
    %cst = arith.constant 1.05003526E+9 : f32
    %c1370652164_i32 = arith.constant 1370652164 : i32
    %true = arith.constant true
    %c1104397107_i64 = arith.constant 1104397107 : i64
    %cst_0 = arith.constant 0x4E544788 : f32
    %false = arith.constant false
    %true_1 = arith.constant true
    %false_2 = arith.constant false
    %c30561_i16 = arith.constant 30561 : i16
    %c-11666_i16 = arith.constant -11666 : i16
    %cst_3 = arith.constant 1.057600e+04 : f16
    %c2070243935_i32 = arith.constant 2070243935 : i32
    %c1215287302_i32 = arith.constant 1215287302 : i32
    %cst_4 = arith.constant 1.341600e+04 : f16
    %cst_5 = arith.constant 0x4E00A5A4 : f32
    %cst_6 = arith.constant 1.30675315E+9 : f32
    %0 = tensor.empty() : tensor<4xi32>
    %1 = tensor.empty() : tensor<10x2xi64>
    %2 = tensor.empty() : tensor<4xi16>
    %3 = tensor.empty() : tensor<4xi32>
    %4 = tensor.empty() : tensor<2x2x10xi1>
    %5 = tensor.empty() : tensor<4xf16>
    %6 = tensor.empty() : tensor<4xf16>
    %7 = tensor.empty() : tensor<6x6xf16>
    %8 = tensor.empty() : tensor<2x2x10xi1>
    %9 = tensor.empty() : tensor<6x6xf32>
    %10 = tensor.empty() : tensor<10x2xf16>
    %11 = tensor.empty() : tensor<10x2xf32>
    %12 = tensor.empty() : tensor<6x6xi32>
    %13 = tensor.empty() : tensor<2x2x10xf16>
    %14 = tensor.empty() : tensor<6x6xi1>
    %15 = tensor.empty() : tensor<2x2x10xi64>
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
    %alloc = memref.alloc() : memref<6x6xi1>
    %alloc_7 = memref.alloc() : memref<4xf32>
    %alloc_8 = memref.alloc() : memref<4xi32>
    %alloc_9 = memref.alloc() : memref<2x2x10xi32>
    %alloc_10 = memref.alloc() : memref<10x2xi32>
    %alloc_11 = memref.alloc() : memref<10x2xi1>
    %alloc_12 = memref.alloc() : memref<2x2x10xi16>
    %alloc_13 = memref.alloc() : memref<4xf32>
    %alloc_14 = memref.alloc() : memref<2x2x10xf32>
    %alloc_15 = memref.alloc() : memref<4xi64>
    %alloc_16 = memref.alloc() : memref<4xf16>
    %alloc_17 = memref.alloc() : memref<10x2xi1>
    %alloc_18 = memref.alloc() : memref<10x2xi16>
    %alloc_19 = memref.alloc() : memref<10x2xf16>
    %alloc_20 = memref.alloc() : memref<2x2x10xf16>
    %alloc_21 = memref.alloc() : memref<4xf16>
    %16 = tensor.empty() : tensor<6x6xf32>
    %17 = linalg.copy ins(%9 : tensor<6x6xf32>) outs(%16 : tensor<6x6xf32>) -> tensor<6x6xf32>
    %alloc_22 = memref.alloc() : memref<10x2x2xf16>
    linalg.transpose ins(%13 : tensor<2x2x10xf16>) outs(%alloc_22 : memref<10x2x2xf16>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<2x10xi64>
    %reduced = linalg.reduce ins(%15 : tensor<2x2x10xi64>) outs(%18 : tensor<2x10xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %243 = memref.realloc %alloc_7 : memref<4xf32> to memref<6xf32>
        %244 = arith.addi %true_1, %true : i1
        %from_elements_48 = tensor.from_elements %cst_3, %cst_4, %cst_3, %cst_3, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_3, %cst_3, %cst_3, %cst_4, %cst_4, %cst_3, %cst_3, %cst_3, %cst_3, %cst_4, %cst_3, %cst_4, %cst_3, %cst_4, %cst_4, %cst_4, %cst_3, %cst_3, %cst_3, %cst_4, %cst_4, %cst_3, %cst_4, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<6x6xf16>
        %245 = bufferization.to_memref %16 : memref<6x6xf32>
        %246 = math.log %11 : tensor<10x2xf32>
        %247 = index.ceildivs %c0, %c8
        %248 = vector.broadcast %cst_0 : f32 to vector<1xf32>
        %249 = vector.bitcast %248 : vector<1xf32> to vector<1xi32>
        %250 = arith.addf %cst_5, %cst_6 : f32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c6, %c10) to (%c0, %c12) step (%c4, %c13) init (%18) -> tensor<2x10xi64> {
      %243 = affine.for %arg3 = 0 to 23 iter_args(%arg4 = %c6) -> (index) {
        affine.yield %c12 : index
      }
      %244 = vector.broadcast %c30561_i16 : i16 to vector<4xi16>
      %245 = vector.flat_transpose %244 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %246 = memref.load %alloc_17[%c1, %c0] : memref<10x2xi1>
      %247 = math.powf %5, %5 : tensor<4xf16>
      %248 = bufferization.to_memref %6 : memref<4xf16>
      %249 = math.tanh %13 : tensor<2x2x10xf16>
      scf.if %false {
        %258 = arith.shrsi %false_2, %true_1 : i1
        %259 = vector.insert %c30561_i16, %244 [1] : i16 into vector<4xi16>
        %260 = arith.maxsi %true, %false_2 : i1
        %261 = bufferization.clone %alloc_18 : memref<10x2xi16> to memref<10x2xi16>
        memref.tensor_store %0, %alloc_8 : memref<4xi32>
        %extracted = tensor.extract %13[%c0, %c0, %c1] : tensor<2x2x10xf16>
        %262 = arith.shli %c1370652164_i32, %c1215287302_i32 : i32
        %263 = arith.ceildivsi %c1370652164_i32, %c1215287302_i32 : i32
      }
      %alloca_48 = memref.alloca() : memref<2x2x10xi64>
      %250 = math.ctlz %2 : tensor<4xi16>
      %251 = arith.xori %c30561_i16, %c30561_i16 : i16
      %252 = arith.maxf %cst, %cst_0 : f32
      %alloc_49 = memref.alloc() : memref<6x6xf16>
      memref.tensor_store %7, %alloc_49 : memref<6x6xf16>
      %253 = math.atan2 %cst_5, %cst : f32
      %254 = math.atan2 %9, %17 : tensor<6x6xf32>
      %255 = vector.flat_transpose %244 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %256 = arith.maxui %false_2, %false_2 : i1
      %257 = tensor.empty() : tensor<2x10xi64>
      scf.reduce(%257)  : tensor<2x10xi64> {
      ^bb0(%arg3: tensor<2x10xi64>, %arg4: tensor<2x10xi64>):
        %258 = vector.bitcast %245 : vector<4xi16> to vector<4xi16>
        %259 = bufferization.to_memref %16 : memref<6x6xf32>
        %260 = math.powf %6, %6 : tensor<4xf16>
        %261 = tensor.empty(%c2) : tensor<?xf16>
        %262 = math.round %cst_0 : f32
        %263 = bufferization.clone %alloc : memref<6x6xi1> to memref<6x6xi1>
        %264 = vector.splat %c7 : vector<4xindex>
        %265 = math.fma %13, %13, %13 : tensor<2x2x10xf16>
        %266 = tensor.empty() : tensor<2x10xi64>
        scf.reduce.return %266 : tensor<2x10xi64>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_13[%c8] : memref<4xf32>, vector<4xf32>
    affine.vector_store %20, %alloc_13[%c5] : memref<4xf32>, vector<4xf32>
    %21 = tensor.empty() : tensor<4xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%alloc_13, %21 : memref<4xf32>, tensor<4xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = tensor.empty() : tensor<10x10xi64>
    %25 = linalg.matmul ins(%1, %18 : tensor<10x2xi64>, tensor<2x10xi64>) outs(%24 : tensor<10x10xi64>) -> tensor<10x10xi64>
    %26 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    scf.if %true {
      %243 = vector.broadcast %false : i1 to vector<10xi1>
      vector.transfer_write %243, %alloc_11[%c8, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, memref<10x2xi1>
      %244 = math.fpowi %6, %0 : tensor<4xf16>, tensor<4xi32>
      %245 = vector.splat %c8 : vector<2x2x10xindex>
      %246 = arith.divf %cst_4, %cst_4 : f16
      %true_48 = index.bool.constant true
      scf.execute_region {
        %250 = bufferization.to_memref %11 : memref<10x2xf32>
        %251 = arith.maxui %true_48, %true_48 : i1
        %252 = index.sub %c5, %c8
        %253 = index.mul %c4, %c13
        %254 = vector.insertelement %true, %243[%c14 : index] : vector<10xi1>
        %255 = bufferization.clone %alloc_16 : memref<4xf16> to memref<4xf16>
        %alloca_49 = memref.alloca() : memref<4xi1>
        %256 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
        %cst_50 = arith.constant 4.787200e+04 : f16
        %257 = vector.insert %false_2, %243 [9] : i1 into vector<10xi1>
        %258 = arith.shrsi %c2070243935_i32, %c1215287302_i32 : i32
        %259 = index.castu %c3 : index to i32
        %260 = math.powf %cst_6, %cst : f32
        %261 = arith.addf %cst_5, %cst_6 : f32
        %262 = arith.xori %false, %false : i1
        %263 = index.add %c5, %c15
        scf.yield
      }
      %247 = vector.broadcast %true_1 : i1 to vector<i1>
      %248 = vector.transfer_write %247, %8[%c13, %c3, %c15] : vector<i1>, tensor<2x2x10xi1>
      %249 = arith.muli %true, %true_48 : i1
    }
    %27 = vector.broadcast %cst : f32 to vector<6x6xf32>
    %28 = math.expm1 %11 : tensor<10x2xf32>
    %29 = vector.broadcast %cst_0 : f32 to vector<6xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %27, %29 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xf32>, vector<6xf32>
    %30 = arith.floordivsi %c1215287302_i32, %c1215287302_i32 : i32
    %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
    bufferization.dealloc_tensor %3 : tensor<4xi32>
    %31 = arith.divf %cst_0, %cst_0 : f32
    affine.store %c30561_i16, %alloc_12[%c13, %c11, %c14] : memref<2x2x10xi16>
    %32 = math.rsqrt %22 : tensor<f32>
    %33 = affine.if affine_set<(d0, d1, d2, d3) : (d2 == 0)>(%c6, %c13, %c12, %c4) -> memref<10x2xi32> {
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<6x6xi32> into tensor<36xi32>
      %243 = math.absf %9 : tensor<6x6xf32>
      %244 = index.floordivs %c11, %c3
      %extracted = tensor.extract %15[%c1, %c0, %c8] : tensor<2x2x10xi64>
      %cast_49 = tensor.cast %11 : tensor<10x2xf32> to tensor<?x?xf32>
      %245 = vector.bitcast %26 : vector<1xf32> to vector<1xf32>
      %246 = vector.broadcast %cst_5 : f32 to vector<f32>
      %247 = vector.transfer_write %246, %21[%c14] : vector<f32>, tensor<4xf32>
      %248 = math.ctpop %c1215287302_i32 : i32
      affine.yield %alloc_10 : memref<10x2xi32>
    } else {
      %243 = arith.shli %c30561_i16, %c30561_i16 : i16
      %244 = affine.apply affine_map<(d0) -> (-d0)>(%c3)
      vector.print %26 : vector<1xf32>
      scf.if %false_2 {
        %false_48 = index.bool.constant false
        %248 = tensor.empty() : tensor<2x2xf32>
        %249 = tensor.empty() : tensor<10x2xf32>
        %250 = linalg.matmul ins(%11, %248 : tensor<10x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<10x2xf32>) -> tensor<10x2xf32>
        %251 = math.log1p %9 : tensor<6x6xf32>
        %252 = index.sub %c3, %c3
        %253 = arith.ori %false_2, %true_1 : i1
        %254 = vector.broadcast %c15 : index to vector<4xindex>
        %255 = vector.broadcast %true_1 : i1 to vector<4xi1>
        vector.scatter %alloc_11[%c9, %c1] [%254], %255, %255 : memref<10x2xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %alloca_49 = memref.alloca() : memref<10x2xf32>
        %256 = arith.shrsi %c2070243935_i32, %c1215287302_i32 : i32
      }
      %245 = scf.if %true_1 -> (i64) {
        vector.print %20 : vector<4xf32>
        %248 = math.ceil %6 : tensor<4xf16>
        %249 = affine.min affine_map<(d0, d1, d2) -> (d0, d0, -64)>(%c4, %c3, %c1)
        %250 = arith.mulf %cst_3, %cst_3 : f16
        %251 = math.fma %9, %9, %17 : tensor<6x6xf32>
        %252 = arith.remf %cst_3, %cst_4 : f16
        %253 = index.castu %c13 : index to i32
        %254 = math.ctlz %reduced : tensor<2x10xi64>
        scf.yield %c1104397107_i64 : i64
      } else {
        %248 = arith.remf %cst_0, %cst_6 : f32
        %249 = memref.atomic_rmw minf %cst, %alloc_7[%c3] : (f32, memref<4xf32>) -> f32
        %250 = math.floor %11 : tensor<10x2xf32>
        %251 = tensor.empty() : tensor<10x2xi32>
        %252 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %false_48 = arith.constant false
        %false_49 = arith.constant false
        %253 = vector.transfer_read %8[%c5, %c5, %c1], %false_49 : tensor<2x2x10xi1>, vector<i1>
        %254 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
        %255 = vector.outerproduct %20, %20, %254 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %256 = arith.cmpf one, %cst_3, %cst_4 : f16
        scf.yield %c1104397107_i64 : i64
      }
      %246 = index.casts %c1 : index to i32
      %247 = affine.if affine_set<(d0, d1, d2) : ((d2 floordiv 128) ceildiv 8 - 8 >= 0, (d1 floordiv 64 + 16) floordiv 32 == 0)>(%c5, %c15, %c9) -> memref<2x2x10xi32> {
        %248 = math.rsqrt %17 : tensor<6x6xf32>
        %249 = index.sizeof
        %250 = vector.multi_reduction <maxf>, %20, %cst_6 [0] : vector<4xf32> to f32
        %251 = arith.addf %cst, %cst_0 : f32
        %252 = vector.broadcast %250 : f32 to vector<6xf32>
        %253 = vector.insert %252, %27 [1] : vector<6xf32> into vector<6x6xf32>
        %254 = vector.broadcast %c-11666_i16 : i16 to vector<i16>
        %255 = vector.transfer_write %254, %2[%c8] : vector<i16>, tensor<4xi16>
        %256 = arith.minf %cst_6, %250 : f32
        %257 = memref.load %alloc_10[%c8, %c1] : memref<10x2xi32>
        affine.yield %alloc_9 : memref<2x2x10xi32>
      } else {
        %248 = index.divu %c12, %c8
        %249 = arith.floordivsi %c1104397107_i64, %245 : i64
        %250 = math.ctlz %reduced : tensor<2x10xi64>
        %251 = math.log %cst_6 : f32
        %rank_48 = tensor.rank %16 : tensor<6x6xf32>
        %252 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %253 = vector.multi_reduction <mul>, %20, %20 [] : vector<4xf32> to vector<4xf32>
        %254 = arith.ceildivsi %245, %c1104397107_i64 : i64
        affine.yield %alloc_9 : memref<2x2x10xi32>
      }
      %extracted = tensor.extract %9[%c2, %c2] : tensor<6x6xf32>
      affine.yield %alloc_10 : memref<10x2xi32>
    }
    %cast = tensor.cast %2 : tensor<4xi16> to tensor<?xi16>
    %34 = affine.if affine_set<(d0) : (-d0 + 68 >= 0, d0 mod 2 == 0, d0 == 0)>(%c8) -> memref<10x2xf32> {
      %243 = vector.broadcast %cst_3 : f16 to vector<f16>
      %244 = vector.transfer_write %243, %7[%c11, %c15] : vector<f16>, tensor<6x6xf16>
      %245 = affine.min affine_map<(d0, d1) -> (d1 + d1 floordiv 4 - d1 floordiv 4 + d1 + d1 floordiv 4)>(%c0, %c4)
      %246 = arith.remf %cst_6, %cst_0 : f32
      %collapsed_48 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x2xf16> into tensor<20xf16>
      %247 = affine.min affine_map<(d0, d1) -> ((d1 - d0) * 8, (d0 mod 2) floordiv 2, -(d1 - d0 + d0 mod 2), d0)>(%c6, %c12)
      %cst_49 = arith.constant 1.000000e+00 : f32
      %248 = vector.transfer_read %9[%247, %c5], %cst_49 : tensor<6x6xf32>, vector<6xf32>
      %249 = arith.cmpi ule, %c-11666_i16, %c30561_i16 : i16
      memref.store %cst_3, %alloc_19[%c8, %c1] : memref<10x2xf16>
      %alloc_50 = memref.alloc() : memref<10x2xf32>
      affine.yield %alloc_50 : memref<10x2xf32>
    } else {
      %243 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %244 = arith.ori %c1370652164_i32, %c1215287302_i32 : i32
      %245 = arith.floordivsi %false, %false : i1
      %246 = math.ceil %11 : tensor<10x2xf32>
      %247 = arith.remui %true_1, %false_2 : i1
      %c1156079859_i64 = arith.constant 1156079859 : i64
      %248 = vector.splat %c8 : vector<4xindex>
      %249 = math.copysign %5, %6 : tensor<4xf16>
      %alloc_48 = memref.alloc() : memref<10x2xf32>
      affine.yield %alloc_48 : memref<10x2xf32>
    }
    %generated = tensor.generate %c8 {
    ^bb0(%arg1: index):
      %243 = arith.maxui %c30561_i16, %c-11666_i16 : i16
      affine.store %cst_4, %alloc_21[%c2] : memref<4xf16>
      %244 = tensor.empty() : tensor<10x2xi64>
      %245 = linalg.matmul ins(%24, %1 : tensor<10x10xi64>, tensor<10x2xi64>) outs(%244 : tensor<10x2xi64>) -> tensor<10x2xi64>
      %246 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      tensor.yield %c2070243935_i32 : i32
    } : tensor<?xi32>
    %splat = tensor.splat %cst_0 : tensor<4xf32>
    %35 = arith.maxui %false, %false : i1
    %36 = vector.broadcast %c1215287302_i32 : i32 to vector<4xi32>
    %37 = vector.broadcast %false_2 : i1 to vector<4xi1>
    %38 = vector.maskedload %alloc_10[%c7, %c1], %37, %36 : memref<10x2xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %39 = math.round %5 : tensor<4xf16>
    %40 = vector.insert %c1370652164_i32, %36 [2] : i32 into vector<4xi32>
    %41 = arith.maxui %false, %false_2 : i1
    %42 = affine.load %alloc_10[%c11, %c8] : memref<10x2xi32>
    %43 = math.roundeven %cst_6 : f32
    %44 = arith.mulf %cst_3, %cst_4 : f16
    %45 = arith.cmpi ugt, %true_1, %true_1 : i1
    %46 = math.absi %true : i1
    %47 = math.exp %cst_5 : f32
    %c-8811_i16 = arith.constant -8811 : i16
    %48 = math.ctpop %c-11666_i16 : i16
    %49 = tensor.empty() : tensor<6x6xi64>
    %50 = vector.broadcast %c1104397107_i64 : i64 to vector<4xi64>
    %51 = vector.gather %49[%c7, %c1] [%38], %37, %50 : tensor<6x6xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
    %alloca = memref.alloca() : memref<4xi1>
    %52 = vector.matrix_multiply %50, %51 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
    %53 = arith.shrui %42, %c2070243935_i32 : i32
    %54 = index.mul %c5, %c15
    %55 = tensor.empty() : tensor<6x6xi32>
    %56 = linalg.matmul ins(%12, %12 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%55 : tensor<6x6xi32>) -> tensor<6x6xi32>
    %57 = vector.matrix_multiply %37, %37 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %58 = arith.mulf %cst_0, %cst_0 : f32
    %59 = math.roundeven %cst_5 : f32
    %60 = arith.remf %cst_5, %cst_0 : f32
    vector.print %36 : vector<4xi32>
    %61 = arith.maxsi %c1104397107_i64, %c1104397107_i64 : i64
    %62 = memref.load %alloc_9[%c1, %c0, %c0] : memref<2x2x10xi32>
    %alloc_23 = memref.alloc() : memref<2x10xi1>
    %63 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %alloc_11, %4 : memref<2x10xi1>, memref<10x2xi1>, tensor<2x2x10xi1>) outs(%4 : tensor<2x2x10xi1>) {
    ^bb0(%in: i1, %in_48: i1, %in_49: i1, %out: i1):
      %243 = arith.maxui %c1215287302_i32, %42 : i32
      %244 = arith.shrui %true_1, %in_48 : i1
      %245 = memref.load %alloc_7[%c3] : memref<4xf32>
      %246 = arith.mulf %cst_0, %cst_0 : f32
      %247 = arith.muli %false_2, %false : i1
      %248 = memref.load %alloc[%c5, %c5] : memref<6x6xi1>
      %249 = math.ctpop %false : i1
      %250 = arith.remf %cst_5, %cst : f32
      %251 = tensor.empty() : tensor<6x6xf32>
      %252 = linalg.matmul ins(%17, %17 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%251 : tensor<6x6xf32>) -> tensor<6x6xf32>
      %253 = math.log %6 : tensor<4xf16>
      %254 = vector.create_mask %c1, %c1, %c4 : vector<2x2x10xi1>
      memref.tensor_store %13, %alloc_20 : memref<2x2x10xf16>
      %c-13706_i16 = arith.constant -13706 : i16
      %255 = vector.broadcast %cst_6 : f32 to vector<2x2x10xf32>
      %256 = vector.fma %255, %255, %255 : vector<2x2x10xf32>
      %257 = tensor.empty() : tensor<10x2xi32>
      %258 = math.fpowi %10, %257 : tensor<10x2xf16>, tensor<10x2xi32>
      %cast_50 = tensor.cast %12 : tensor<6x6xi32> to tensor<?x?xi32>
      %259 = bufferization.to_memref %1 : memref<10x2xi64>
      %260 = scf.if %out -> (i16) {
        %271 = math.log %cst : f32
        %272 = math.powf %16, %9 : tensor<6x6xf32>
        %273 = index.mul %c8, %c1
        %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %274 = vector.broadcast %true : i1 to vector<2xi1>
        %275 = vector.maskedload %alloc[%c0, %c0], %274, %274 : memref<6x6xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %276 = math.sqrt %expanded : tensor<4x1xf16>
        %277 = vector.splat %c0 : vector<2x2x10xindex>
        %cast_53 = tensor.cast %6 : tensor<4xf16> to tensor<?xf16>
        scf.yield %c30561_i16 : i16
      } else {
        memref.store %cst_0, %alloc_7[%c3] : memref<4xf32>
        %271 = math.sqrt %5 : tensor<4xf16>
        %272 = vector.load %alloc_10[%c6, %c1] : memref<10x2xi32>, vector<10x2xi32>
        memref.copy %alloc_16, %alloc_21 : memref<4xf16> to memref<4xf16>
        %273 = bufferization.clone %alloc_18 : memref<10x2xi16> to memref<10x2xi16>
        %274 = index.floordivs %c4, %c1
        %275 = math.round %11 : tensor<10x2xf32>
        %276 = math.atan2 %cst_3, %cst_4 : f16
        scf.yield %c30561_i16 : i16
      }
      %261 = vector.matrix_multiply %20, %26 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
      %true_51 = index.bool.constant true
      %262 = vector.broadcast %c30561_i16 : i16 to vector<4xi16>
      vector.transfer_write %262, %alloc_18[%c13, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<10x2xi16>
      %generated_52 = tensor.generate %c11 {
      ^bb0(%arg1: index, %arg2: index):
        %271 = math.absi %257 : tensor<10x2xi32>
        %272 = math.expm1 %cst_0 : f32
        %alloc_53 = memref.alloc() : memref<6x6xf16>
        %273 = math.round %cst : f32
        tensor.yield %42 : i32
      } : tensor<?x2xi32>
      %263 = arith.addf %cst_0, %cst : f32
      %264 = math.ceil %10 : tensor<10x2xf16>
      %265 = math.atan2 %13, %13 : tensor<2x2x10xf16>
      %266 = index.maxs %c8, %c11
      vector.print %20 : vector<4xf32>
      %267 = scf.execute_region -> tensor<2x2x10xi16> {
        %collapsed_53 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<2x2x10xi1> into tensor<4x10xi1>
        %271 = arith.shrsi %42, %c1370652164_i32 : i32
        %272 = arith.cmpi eq, %260, %260 : i16
        %inserted_54 = tensor.insert %false into %8[%c0, %c1, %c3] : tensor<2x2x10xi1>
        %273 = arith.maxui %c2070243935_i32, %c2070243935_i32 : i32
        %274 = index.maxs %c2, %c7
        %275 = memref.realloc %alloc_15 : memref<4xi64> to memref<10xi64>
        %276 = math.ipowi %1, %1 : tensor<10x2xi64>
        %277 = arith.maxui %c2070243935_i32, %c1215287302_i32 : i32
        %278 = vector.broadcast %out : i1 to vector<2x2xi1>
        %dest_55, %accumulated_value_56 = vector.scan <minsi>, %254, %278 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x10xi1>, vector<2x2xi1>
        %279 = arith.ceildivsi %c1104397107_i64, %c1104397107_i64 : i64
        %280 = vector.splat %out : vector<10x2xi1>
        %281 = index.divu %c13, %c4
        %alloca_57 = memref.alloca() : memref<10x2xi64>
        %alloc_58 = memref.alloc() : memref<2x2x10xi16>
        memref.copy %alloc_12, %alloc_58 : memref<2x2x10xi16> to memref<2x2x10xi16>
        %282 = arith.cmpf ole, %cst_3, %cst_3 : f16
        %283 = tensor.empty() : tensor<2x2x10xi16>
        scf.yield %283 : tensor<2x2x10xi16>
      }
      %268 = arith.remf %cst_0, %cst_6 : f32
      %extracted = tensor.extract %49[%c3, %c1] : tensor<6x6xi64>
      %269 = math.sqrt %5 : tensor<4xf16>
      %270 = math.floor %7 : tensor<6x6xf16>
      linalg.yield %true_51 : i1
    } -> tensor<2x2x10xi1>
    %rank = tensor.rank %18 : tensor<2x10xi64>
    memref.store %c30561_i16, %alloc_18[%c8, %c0] : memref<10x2xi16>
    %generated_24 = tensor.generate %c2, %c7 {
    ^bb0(%arg1: index, %arg2: index):
      %243 = math.log2 %11 : tensor<10x2xf32>
      %244 = memref.load %alloc_13[%c3] : memref<4xf32>
      %245 = math.cttz %3 : tensor<4xi32>
      %246 = math.absf %cst_5 : f32
      tensor.yield %c-11666_i16 : i16
    } : tensor<?x?xi16>
    %64 = vector.insert %cst_6, %26 [0] : f32 into vector<1xf32>
    %65 = math.atan2 %cst_0, %cst_6 : f32
    %66 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %67 = vector.outerproduct %26, %26, %66 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %68 = math.ctlz %14 : tensor<6x6xi1>
    %69 = math.ctlz %c-11666_i16 : i16
    scf.execute_region {
      %c0_i64 = arith.constant 0 : i64
      %243 = vector.transfer_read %alloc_15[%c7], %c0_i64 : memref<4xi64>, vector<i64>
      %244 = math.roundeven %cst_6 : f32
      %extracted = tensor.extract %11[%c2, %c1] : tensor<10x2xf32>
      affine.store %cst_4, %alloc_16[%c11] : memref<4xf16>
      %245 = vector.broadcast %true : i1 to vector<4xi1>
      vector.transfer_write %245, %alloc_17[%c5, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<10x2xi1>
      %collapsed_48 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x2xf16> into tensor<20xf16>
      %246 = arith.floordivsi %false_2, %true : i1
      %247 = arith.remf %extracted, %cst : f32
      %from_elements_49 = tensor.from_elements %c30561_i16, %c-11666_i16, %c-11666_i16, %c-11666_i16 : tensor<4xi16>
      %248 = arith.remf %cst_0, %cst_6 : f32
      %249 = vector.broadcast %c1370652164_i32 : i32 to vector<4x4xi32>
      %250 = vector.outerproduct %36, %36, %249 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
      %c16371_i16 = arith.constant 16371 : i16
      %251 = memref.realloc %alloc_13 : memref<4xf32> to memref<4xf32>
      %alloca_50 = memref.alloca() : memref<2x2x10xi16>
      %252 = tensor.empty() : tensor<6x6xi1>
      %253 = linalg.matmul ins(%14, %14 : tensor<6x6xi1>, tensor<6x6xi1>) outs(%252 : tensor<6x6xi1>) -> tensor<6x6xi1>
      %254 = arith.mulf %cst_6, %cst_6 : f32
      scf.yield
    }
    memref.tensor_store %3, %alloc_8 : memref<4xi32>
    %70 = vector.extract_strided_slice %20 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
    %71 = arith.maxui %false, %false : i1
    bufferization.dealloc_tensor %12 : tensor<6x6xi32>
    %72 = bufferization.clone %alloc_10 : memref<10x2xi32> to memref<10x2xi32>
    %73 = memref.atomic_rmw maxs %c1215287302_i32, %alloc_9[%c0, %c1, %c3] : (i32, memref<2x2x10xi32>) -> i32
    %74 = arith.ceildivsi %c1215287302_i32, %42 : i32
    %rank_25 = tensor.rank %11 : tensor<10x2xf32>
    %c18409_i16 = arith.constant 18409 : i16
    %75 = arith.remui %c1104397107_i64, %c1104397107_i64 : i64
    %76 = arith.subi %true, %false : i1
    %77 = index.sub %c8, %54
    %78 = tensor.empty(%c0) : tensor<?xf16>
    %79 = arith.xori %c-11666_i16, %c-11666_i16 : i16
    %80 = math.rsqrt %17 : tensor<6x6xf32>
    %81 = math.round %cst_0 : f32
    %82 = math.absi %4 : tensor<2x2x10xi1>
    %83 = affine.max affine_map<(d0, d1, d2) -> (d1 - 32)>(%c14, %c5, %c4)
    %84 = vector.insertelement %c1104397107_i64, %52[%c13 : index] : vector<1xi64>
    %85 = arith.maxsi %c1215287302_i32, %42 : i32
    affine.for %arg1 = 0 to 21 {
    }
    %86 = index.floordivs %rank_25, %c0
    %87 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    %88 = math.floor %5 : tensor<4xf16>
    %alloca_26 = memref.alloca() : memref<10x2xi16>
    %89 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d3 mod 32)>(%86, %c3, %c11, %rank_25)
    %90 = arith.minui %42, %c1370652164_i32 : i32
    %91 = math.log %10 : tensor<10x2xf16>
    %92 = vector.matrix_multiply %87, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
    %93 = arith.ceildivsi %c-11666_i16, %c30561_i16 : i16
    affine.for %arg1 = 0 to 66 {
    }
    %94 = arith.remui %false, %false : i1
    %95 = arith.cmpf ogt, %cst_6, %cst_5 : f32
    %96 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    affine.store %c1104397107_i64, %alloc_15[%c9] : memref<4xi64>
    %97 = vector.maskedload %alloc_9[%c1, %c1, %c2], %37, %38 : memref<2x2x10xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %98 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
    %collapsed_27 = tensor.collapse_shape %12 [[0, 1]] : tensor<6x6xi32> into tensor<36xi32>
    affine.store %42, %72[%c6, %c9] : memref<10x2xi32>
    %splat_28 = tensor.splat %cst_5 : tensor<10x2xf32>
    %99 = math.sqrt %16 : tensor<6x6xf32>
    %100 = vector.broadcast %cst_3 : f16 to vector<f16>
    vector.transfer_write %100, %alloc_21[%c4] : vector<f16>, memref<4xf16>
    memref.store %c2070243935_i32, %alloc_9[%c0, %c1, %c1] : memref<2x2x10xi32>
    %101 = vector.bitcast %97 : vector<4xi32> to vector<4xf32>
    %102 = index.mul %c0, %77
    %103 = affine.for %arg1 = 0 to 34 iter_args(%arg2 = %9) -> (tensor<6x6xf32>) {
      affine.yield %9 : tensor<6x6xf32>
    }
    %104 = arith.divf %cst_4, %cst_4 : f16
    vector.print %87 : vector<1xf32>
    %105 = index.sizeof
    %from_elements = tensor.from_elements %cst_6, %cst, %cst_6, %cst, %cst_5, %cst_6, %cst_5, %cst_6, %cst_0, %cst, %cst_0, %cst_5, %cst, %cst, %cst_6, %cst_0, %cst_5, %cst_5, %cst_6, %cst_0, %cst_0, %cst_0, %cst_6, %cst_6, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_6, %cst, %cst_0, %cst_6, %cst_0 : tensor<6x6xf32>
    %106 = vector.broadcast %cst_5 : f32 to vector<6xf32>
    %107 = vector.insert %106, %27 [0] : vector<6xf32> into vector<6x6xf32>
    %108 = vector.insertelement %c1104397107_i64, %52[%c1 : index] : vector<1xi64>
    %109 = math.roundeven %5 : tensor<4xf16>
    %false_29 = index.bool.constant false
    %inserted = tensor.insert %cst_6 into %21[%c2] : tensor<4xf32>
    %110 = math.rsqrt %22 : tensor<f32>
    %111 = math.exp %7 : tensor<6x6xf16>
    %112 = vector.flat_transpose %37 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %113 = index.ceildivs %c2, %c14
    %splat_30 = tensor.splat %true_1 : tensor<2x2x10xi1>
    %114 = index.ceildivs %c0, %102
    %115 = affine.load %alloc_14[%c12, %c0, %c4] : memref<2x2x10xf32>
    %116 = arith.cmpf true, %cst, %cst : f32
    scf.execute_region {
      %243 = arith.andi %c1104397107_i64, %c1104397107_i64 : i64
      %generated_48 = tensor.generate %c14 {
      ^bb0(%arg1: index):
        %255 = index.casts %c5 : index to i32
        vector.print %51 : vector<4xi64>
        %256 = affine.load %alloc_11[%c5, %c10] : memref<10x2xi1>
        %257 = arith.remui %false_2, %true : i1
        tensor.yield %cst : f32
      } : tensor<?xf32>
      %244 = math.atan2 %5, %5 : tensor<4xf16>
      %245 = arith.maxf %cst, %cst_6 : f32
      %246 = arith.andi %c1104397107_i64, %c1104397107_i64 : i64
      %247 = math.absf %splat_28 : tensor<10x2xf32>
      %248 = index.castu %c1 : index to i32
      %rank_49 = tensor.rank %collapsed : tensor<36xi1>
      %249 = math.ceil %7 : tensor<6x6xf16>
      %250 = index.maxs %77, %rank_49
      bufferization.dealloc_tensor %8 : tensor<2x2x10xi1>
      %251 = math.log2 %13 : tensor<2x2x10xf16>
      %252 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %253 = math.log10 %13 : tensor<2x2x10xf16>
      bufferization.dealloc_tensor %12 : tensor<6x6xi32>
      %254 = math.ctlz %false_2 : i1
      scf.yield
    }
    %117 = index.divs %54, %105
    memref.copy %alloc_17, %alloc_11 : memref<10x2xi1> to memref<10x2xi1>
    %118 = affine.min affine_map<(d0, d1, d2) -> (d2 - 2, 0, d0, 2)>(%117, %c4, %rank_25)
    %119 = vector.flat_transpose %57 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %120 = tensor.empty(%77, %113) : tensor<?x?xi32>
    %121 = arith.addi %false_29, %false_2 : i1
    %122 = math.sqrt %9 : tensor<6x6xf32>
    %123 = arith.divf %cst_0, %cst_5 : f32
    %124 = math.log %11 : tensor<10x2xf32>
    %125 = vector.extract %52[0] : vector<1xi64>
    %126 = arith.subi %c1215287302_i32, %c2070243935_i32 : i32
    %127 = vector.reduction <mul>, %119 : vector<1xi1> into i1
    memref.copy %alloc_11, %alloc_17 : memref<10x2xi1> to memref<10x2xi1>
    %128 = arith.andi %c1370652164_i32, %c1215287302_i32 : i32
    %129 = math.log %9 : tensor<6x6xf32>
    %generated_31 = tensor.generate %c8 {
    ^bb0(%arg1: index):
      %243 = vector.multi_reduction <mul>, %36, %36 [] : vector<4xi32> to vector<4xi32>
      %244 = bufferization.clone %alloc_17 : memref<10x2xi1> to memref<10x2xi1>
      %245 = arith.ori %c2070243935_i32, %c1370652164_i32 : i32
      %246 = tensor.empty() : tensor<6x6xf32>
      %247 = linalg.matmul ins(%17, %17 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%246 : tensor<6x6xf32>) -> tensor<6x6xf32>
      tensor.yield %cst_4 : f16
    } : tensor<?xf16>
    %130 = index.sub %83, %77
    %131 = arith.remui %true, %false_2 : i1
    affine.for %arg1 = 0 to 19 {
    }
    %132 = vector.broadcast %cst : f32 to vector<2x2x10xf32>
    %133 = vector.fma %132, %132, %132 : vector<2x2x10xf32>
    %cast_32 = tensor.cast %collapsed : tensor<36xi1> to tensor<?xi1>
    %134 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %26, %cst : vector<1xf32>, vector<1xf32> into f32
    %135 = math.ceil %6 : tensor<4xf16>
    %136 = index.castu %false : i1 to index
    %137 = vector.broadcast %c1104397107_i64 : i64 to vector<10x2xi64>
    %138 = affine.if affine_set<(d0, d1) : ((((d1 ceildiv 32) ceildiv 16) floordiv 16) * 128 >= 0)>(%c4, %c14) -> memref<4xi64> {
      %243 = arith.remui %false_29, %false_29 : i1
      %244 = memref.realloc %alloc_13 : memref<4xf32> to memref<2xf32>
      %inserted_48 = tensor.insert %115 into %16[%c2, %c3] : tensor<6x6xf32>
      %245 = vector.multi_reduction <minsi>, %97, %97 [] : vector<4xi32> to vector<4xi32>
      %246 = vector.bitcast %51 : vector<4xi64> to vector<4xi64>
      %247 = arith.mulf %cst_0, %115 : f32
      %false_49 = index.bool.constant false
      %248 = tensor.empty(%118) : tensor<?x2xf32>
      affine.yield %alloc_15 : memref<4xi64>
    } else {
      %243 = index.floordivs %c2, %c8
      %244 = math.fpowi %6, %0 : tensor<4xf16>, tensor<4xi32>
      %245 = math.sqrt %cst_0 : f32
      %246 = memref.atomic_rmw addf %cst_3, %alloc_19[%c3, %c0] : (f16, memref<10x2xf16>) -> f16
      vector.print %57 : vector<1xi1>
      %247 = math.fma %10, %10, %10 : tensor<10x2xf16>
      %248 = vector.matrix_multiply %112, %57 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
      %249 = vector.broadcast %cst_0 : f32 to vector<2x2x10xf32>
      %250 = vector.fma %249, %132, %249 : vector<2x2x10xf32>
      affine.yield %alloc_15 : memref<4xi64>
    }
    %139 = bufferization.clone %alloc_8 : memref<4xi32> to memref<4xi32>
    %140 = memref.load %alloc_7[%c2] : memref<4xf32>
    %141 = vector.broadcast %c-11666_i16 : i16 to vector<2x2x10xi16>
    %142 = arith.andi %c2070243935_i32, %42 : i32
    %143 = arith.minf %cst_6, %cst_5 : f32
    %144 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %36, %97, %c1215287302_i32 : vector<4xi32>, vector<4xi32> into i32
    %145 = arith.ceildivsi %c1370652164_i32, %42 : i32
    %146 = math.log2 %13 : tensor<2x2x10xf16>
    %true_33 = index.bool.constant true
    %147 = math.cos %23 : tensor<f32>
    %148 = math.cos %cst_0 : f32
    %149 = arith.ori %false, %false_29 : i1
    %150 = arith.divui %true_33, %true_1 : i1
    %151 = math.absf %cst_4 : f16
    scf.execute_region {
      %243 = arith.floordivsi %c30561_i16, %c-11666_i16 : i16
      %244 = arith.minf %cst_6, %cst_0 : f32
      %245 = vector.broadcast %cst_0 : f32 to vector<2x10x2x10xf32>
      %246 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %132, %132, %245 : vector<2x2x10xf32>, vector<2x2x10xf32> into vector<2x10x2x10xf32>
      %247 = arith.subi %false_2, %false : i1
      memref.tensor_store %5, %alloc_16 : memref<4xf16>
      %248 = arith.addf %cst_6, %cst : f32
      %249 = math.round %11 : tensor<10x2xf32>
      %250 = bufferization.clone %72 : memref<10x2xi32> to memref<10x2xi32>
      %251 = arith.maxsi %c30561_i16, %c30561_i16 : i16
      %252 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - (d2 + d1) floordiv 128, d1 - (d2 + d1) floordiv 128)>(%c1, %c14, %83, %c11)
      %alloca_48 = memref.alloca() : memref<2x2x10xi1>
      %253 = bufferization.clone %alloc_19 : memref<10x2xf16> to memref<10x2xf16>
      %254 = bufferization.to_memref %generated : memref<?xi32>
      %255 = arith.shli %42, %c1215287302_i32 : i32
      %256 = vector.insertelement %true_1, %57[%136 : index] : vector<1xi1>
      %257 = bufferization.clone %72 : memref<10x2xi32> to memref<10x2xi32>
      scf.yield
    }
    %152 = arith.remui %c1215287302_i32, %c1215287302_i32 : i32
    %153 = math.ipowi %splat_30, %8 : tensor<2x2x10xi1>
    %alloc_34 = memref.alloc() : memref<10x2xf32>
    memref.tensor_store %splat_28, %alloc_34 : memref<10x2xf32>
    %154 = vector.insertelement %false_2, %119[%77 : index] : vector<1xi1>
    %155 = arith.remui %false, %false_2 : i1
    %156 = arith.addf %115, %cst_0 : f32
    %157 = arith.maxf %cst, %cst_0 : f32
    memref.store %cst_3, %alloc_20[%c1, %c0, %c6] : memref<2x2x10xf16>
    %158 = arith.ceildivsi %true, %false : i1
    %159 = vector.matrix_multiply %20, %106 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xf32>, vector<6xf32>) -> vector<6xf32>
    %160 = vector.insert %c1104397107_i64, %51 [2] : i64 into vector<4xi64>
    %cast_35 = tensor.cast %14 : tensor<6x6xi1> to tensor<?x?xi1>
    %161 = math.tanh %cst_3 : f16
    %162 = arith.cmpi sle, %true_33, %false_2 : i1
    %163 = vector.matrix_multiply %70, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %164 = vector.multi_reduction <maxf>, %27, %115 [0, 1] : vector<6x6xf32> to f32
    %from_elements_36 = tensor.from_elements %true_1, %false, %true_33, %false_29, %false, %false_2, %false, %true_1, %true_33, %false_2, %true_33, %false_2, %false_2, %false, %false_29, %false_2, %true, %false, %false_29, %true_1 : tensor<10x2xi1>
    %165 = arith.remf %115, %cst_5 : f32
    %166 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %167 = memref.load %alloc_10[%c0, %c1] : memref<10x2xi32>
    memref.tensor_store %0, %139 : memref<4xi32>
    %168 = math.ctpop %14 : tensor<6x6xi1>
    %169 = arith.negf %cst_0 : f32
    %170 = scf.execute_region -> memref<4xf16> {
      %243 = vector.flat_transpose %37 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %244 = math.tanh %splat : tensor<4xf32>
      %collapsed_48 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<2x2x10xf16> into tensor<4x10xf16>
      %245 = tensor.empty() : tensor<6x6xi64>
      %246 = linalg.matmul ins(%49, %49 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%245 : tensor<6x6xi64>) -> tensor<6x6xi64>
      %247 = arith.divf %cst_4, %cst_3 : f16
      %248 = vector.shuffle %27, %27 [1, 2, 4, 5, 9, 10, 11] : vector<6x6xf32>, vector<6x6xf32>
      %249 = math.ceil %collapsed_48 : tensor<4x10xf16>
      %250 = math.fma %6, %5, %6 : tensor<4xf16>
      %251 = bufferization.clone %alloc_11 : memref<10x2xi1> to memref<10x2xi1>
      %252 = affine.for %arg1 = 0 to 100 iter_args(%arg2 = %27) -> (vector<6x6xf32>) {
        affine.yield %27 : vector<6x6xf32>
      }
      %253 = arith.ceildivsi %42, %c1215287302_i32 : i32
      %splat_49 = tensor.splat %cst_0 : tensor<10x2xf32>
      scf.if %true_1 {
        %255 = math.ipowi %8, %splat_30 : tensor<2x2x10xi1>
        %256 = arith.shli %c1104397107_i64, %c1104397107_i64 : i64
        %257 = arith.negf %cst_5 : f32
        vector.print %112 : vector<4xi1>
        %258 = vector.splat %89 : vector<6x6xindex>
        %true_52 = index.bool.constant true
        memref.tensor_store %3, %alloc_8 : memref<4xi32>
        %259 = arith.maxsi %false, %false_2 : i1
      }
      %cast_50 = tensor.cast %16 : tensor<6x6xf32> to tensor<?x?xf32>
      %254 = vector.extract_strided_slice %132 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2x10xf32> to vector<2x2x10xf32>
      %alloca_51 = memref.alloca() : memref<10x2xi64>
      scf.yield %98 : memref<4xf16>
    }
    %171 = bufferization.clone %alloc_20 : memref<2x2x10xf16> to memref<2x2x10xf16>
    %172 = scf.execute_region -> index {
      %243 = vector.transpose %37, [0] : vector<4xi1> to vector<4xi1>
      %244 = arith.maxsi %c30561_i16, %c30561_i16 : i16
      %245 = vector.insert %115, %92 [1] : f32 into vector<4xf32>
      %246 = math.sqrt %6 : tensor<4xf16>
      %247 = index.mul %c9, %54
      %248 = math.ipowi %2, %2 : tensor<4xi16>
      %249 = arith.maxui %c2070243935_i32, %c2070243935_i32 : i32
      %250 = math.log2 %21 : tensor<4xf32>
      %251 = math.ipowi %false, %true : i1
      %252 = vector.shuffle %119, %57 [0] : vector<1xi1>, vector<1xi1>
      %253 = arith.remui %true_33, %true : i1
      %254 = vector.shuffle %100, %100 [0, 1] : vector<f16>, vector<f16>
      %255 = arith.minf %cst_0, %cst : f32
      %256 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %257 = math.cos %10 : tensor<10x2xf16>
      %258 = math.log %13 : tensor<2x2x10xf16>
      scf.yield %c5 : index
    }
    %alloc_37 = memref.alloc() : memref<10x2x2xf16>
    memref.copy %alloc_22, %alloc_37 : memref<10x2x2xf16> to memref<10x2x2xf16>
    %173 = arith.addf %cst_5, %164 : f32
    %174 = vector.broadcast %cst_6 : f32 to vector<4x4xf32>
    %175 = vector.outerproduct %20, %92, %174 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
    %176 = arith.ceildivsi %true_33, %true : i1
    scf.execute_region {
      %243 = vector.matrix_multiply %70, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %244 = vector.splat %164 : vector<2x2x10xf32>
      affine.for %arg1 = 0 to 40 {
      }
      %false_48 = index.bool.constant false
      %245 = arith.shli %c30561_i16, %c30561_i16 : i16
      %246 = affine.if affine_set<(d0) : (0 == 0, 0 >= 0, 0 == 0, 0 >= 0)>(%c2) -> memref<6x6xi16> {
        %254 = math.powf %from_elements, %from_elements : tensor<6x6xf32>
        %255 = math.absf %cst_0 : f32
        %256 = math.floor %cst_3 : f16
        %257 = math.powf %5, %5 : tensor<4xf16>
        %258 = arith.remf %cst_5, %115 : f32
        %extracted = tensor.extract %0[%c3] : tensor<4xi32>
        %259 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d3 mod 32, 0, d1)>(%c2, %113, %c12, %172)
        %260 = math.ipowi %c1370652164_i32, %c2070243935_i32 : i32
        %alloc_52 = memref.alloc() : memref<6x6xi16>
        affine.yield %alloc_52 : memref<6x6xi16>
      } else {
        %254 = arith.ori %c2070243935_i32, %c1215287302_i32 : i32
        %255 = math.absf %164 : f32
        %256 = math.ctlz %splat_30 : tensor<2x2x10xi1>
        %257 = math.log10 %22 : tensor<f32>
        %258 = vector.flat_transpose %52 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %259 = math.absi %collapsed : tensor<36xi1>
        %260 = vector.extract_strided_slice %141 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2x10xi16> to vector<2x2x10xi16>
        %261 = math.atan2 %21, %splat : tensor<4xf32>
        %alloc_52 = memref.alloc() : memref<6x6xi16>
        affine.yield %alloc_52 : memref<6x6xi16>
      }
      %247 = index.floordivs %c6, %114
      memref.store %cst_0, %alloc_14[%c1, %c0, %c5] : memref<2x2x10xf32>
      %cast_49 = tensor.cast %1 : tensor<10x2xi64> to tensor<?x?xi64>
      scf.if %false_2 {
        %splat_52 = tensor.splat %true_33 : tensor<6x6xi1>
        %alloca_53 = memref.alloca() : memref<2x2x10xi16>
        %254 = math.ipowi %15, %15 : tensor<2x2x10xi64>
        %inserted_54 = tensor.insert %c1104397107_i64 into %15[%c0, %c0, %c1] : tensor<2x2x10xi64>
        %255 = bufferization.to_memref %3 : memref<4xi32>
        %256 = math.copysign %16, %9 : tensor<6x6xf32>
        %257 = vector.insert %115, %92 [2] : f32 into vector<4xf32>
        memref.store %c1370652164_i32, %255[%c1] : memref<4xi32>
      }
      %248 = vector.reduction <minsi>, %112 : vector<4xi1> into i1
      %249 = vector.broadcast %115 : f32 to vector<2x10xf32>
      %dest_50, %accumulated_value_51 = vector.scan <maxf>, %133, %249 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2x10xf32>, vector<2x10xf32>
      scf.execute_region {
        bufferization.dealloc_tensor %collapsed_27 : tensor<36xi32>
        %254 = arith.ori %true_1, %true_1 : i1
        %255 = vector.shuffle %119, %119 [0] : vector<1xi1>, vector<1xi1>
        %256 = index.divs %c6, %rank
        %257 = arith.remf %cst_5, %cst_0 : f32
        %258 = arith.maxf %cst_5, %cst_5 : f32
        affine.store %true_1, %alloc_17[%c8, %c11] : memref<10x2xi1>
        %259 = arith.cmpi sge, %c1215287302_i32, %c1215287302_i32 : i32
        %rank_52 = tensor.rank %10 : tensor<10x2xf16>
        %260 = vector.insert %cst_0, %20 [2] : f32 into vector<4xf32>
        %261 = index.divu %c10, %86
        %262 = math.round %164 : f32
        %263 = arith.maxsi %false, %true : i1
        %264 = math.powf %cst_3, %cst_3 : f16
        %c1713837676_i64 = arith.constant 1713837676 : i64
        %265 = vector.splat %83 : vector<2x2x10xindex>
        scf.yield
      }
      %250 = vector.broadcast %false_2 : i1 to vector<1x1xi1>
      %251 = vector.outerproduct %119, %119, %250 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      %252 = index.floordivs %54, %c2
      %253 = bufferization.to_memref %1 : memref<10x2xi64>
      scf.yield
    }
    %alloca_38 = memref.alloca() : memref<4xf16>
    %cst_39 = arith.constant 1.02282381E+9 : f32
    %cast_40 = tensor.cast %8 : tensor<2x2x10xi1> to tensor<?x?x?xi1>
    %generated_41 = tensor.generate %c14 {
    ^bb0(%arg1: index):
      %243 = arith.shrui %c1104397107_i64, %c1104397107_i64 : i64
      %244 = index.maxs %c5, %102
      %245 = arith.maxsi %true_33, %true_33 : i1
      %246 = index.add %136, %105
      tensor.yield %42 : i32
    } : tensor<?xi32>
    affine.store %cst_4, %98[%c15] : memref<4xf16>
    %177 = arith.xori %42, %42 : i32
    %178 = math.ceil %from_elements : tensor<6x6xf32>
    %179 = bufferization.to_memref %generated_31 : memref<?xf16>
    %from_elements_42 = tensor.from_elements %true, %true_1, %true_33, %true, %true, %false_2, %true, %true, %false_29, %true, %true_33, %false_2, %true_33, %false, %true_1, %false, %false, %true_33, %false_2, %false_2, %false_29, %true_33, %false, %true_1, %true, %true_1, %true_1, %true_33, %true, %false_2, %false_29, %true_1, %true, %false, %true_33, %false : tensor<6x6xi1>
    %splat_43 = tensor.splat %c-11666_i16 : tensor<4xi16>
    %180 = arith.divf %cst_6, %115 : f32
    %181 = math.ipowi %splat_30, %8 : tensor<2x2x10xi1>
    %alloc_44 = memref.alloc() : memref<2x2x10xf16>
    %182 = math.round %splat_28 : tensor<10x2xf32>
    %183 = arith.andi %c2070243935_i32, %c1370652164_i32 : i32
    %184 = bufferization.to_memref %11 : memref<10x2xf32>
    %185 = arith.maxui %false, %false_2 : i1
    %186 = math.exp2 %9 : tensor<6x6xf32>
    %187 = vector.splat %rank_25 : vector<4xindex>
    %188 = vector.multi_reduction <mul>, %26, %cst_6 [0] : vector<1xf32> to f32
    %189 = arith.subi %true_1, %true : i1
    %190 = math.log2 %188 : f32
    %191 = math.ipowi %reduced, %18 : tensor<2x10xi64>
    %192 = index.mul %172, %c3
    %193 = memref.realloc %alloc_16 : memref<4xf16> to memref<6xf16>
    affine.store %42, %72[%c11, %c10] : memref<10x2xi32>
    %194 = math.round %cst_5 : f32
    %195 = arith.maxsi %c30561_i16, %c-11666_i16 : i16
    %196 = vector.insertelement %115, %87[%118 : index] : vector<1xf32>
    %197 = vector.broadcast %false_2 : i1 to vector<10x2xi1>
    %198 = vector.broadcast %c1370652164_i32 : i32 to vector<10x2xi32>
    %199 = vector.gather %from_elements_36[%136, %192] [%198], %197, %197 : tensor<10x2xi1>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xi1> into vector<10x2xi1>
    %200 = arith.cmpf ogt, %cst_3, %cst_4 : f16
    %201 = vector.broadcast %164 : f32 to vector<4xf32>
    %202 = vector.fma %201, %101, %92 : vector<4xf32>
    %203 = arith.cmpf false, %cst_6, %cst_6 : f32
    %204 = vector.extract_strided_slice %166 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %205 = index.castu %c15 : index to i32
    %206 = vector.splat %c5 : vector<2x2x10xindex>
    %207 = index.floordivs %c2, %c10
    %208 = math.atan2 %10, %10 : tensor<10x2xf16>
    %209 = affine.for %arg1 = 0 to 100 iter_args(%arg2 = %96) -> (vector<1xf32>) {
      affine.yield %26 : vector<1xf32>
    }
    %210 = bufferization.clone %139 : memref<4xi32> to memref<4xi32>
    %211 = tensor.empty() : tensor<2x2x10xi16>
    %212 = vector.broadcast %true : i1 to vector<2x2x10xi1>
    %213 = vector.broadcast %42 : i32 to vector<2x2x10xi32>
    %214 = vector.gather %211[%117, %c12, %c3] [%213], %212, %141 : tensor<2x2x10xi16>, vector<2x2x10xi32>, vector<2x2x10xi1>, vector<2x2x10xi16> into vector<2x2x10xi16>
    %215 = vector.broadcast %false : i1 to vector<1x1xi1>
    %216 = vector.outerproduct %57, %119, %215 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
    vector.print %36 : vector<4xi32>
    %217 = bufferization.clone %alloc_9 : memref<2x2x10xi32> to memref<2x2x10xi32>
    %218 = index.castu %true : i1 to index
    %219 = vector.bitcast %20 : vector<4xf32> to vector<4xf32>
    %220 = arith.minui %c1104397107_i64, %c1104397107_i64 : i64
    %221 = math.cos %17 : tensor<6x6xf32>
    %222 = bufferization.to_memref %10 : memref<10x2xf16>
    %223 = arith.ori %false_2, %false_2 : i1
    %224 = arith.maxf %cst_5, %188 : f32
    %225 = arith.andi %true_1, %true_1 : i1
    %alloca_45 = memref.alloca() : memref<4xi16>
    %226 = bufferization.clone %170 : memref<4xf16> to memref<4xf16>
    %227 = index.divu %192, %105
    %228 = arith.floordivsi %false_2, %true_1 : i1
    bufferization.dealloc_tensor %15 : tensor<2x2x10xi64>
    memref.store %cst_4, %alloc_19[%c8, %c1] : memref<10x2xf16>
    %229 = tensor.empty() : tensor<6x6xf32>
    %230 = math.ipowi %splat_43, %splat_43 : tensor<4xi16>
    %231 = arith.remui %42, %c1215287302_i32 : i32
    %232 = math.powf %11, %splat_28 : tensor<10x2xf32>
    %233 = math.atan2 %6, %5 : tensor<4xf16>
    %234 = index.sizeof
    %235 = arith.shrsi %false_2, %true : i1
    %236 = math.powf %164, %115 : f32
    %237 = vector.insertelement %c2070243935_i32, %97[%86 : index] : vector<4xi32>
    %238 = tensor.empty() : tensor<4xf16>
    %239 = linalg.copy ins(%5 : tensor<4xf16>) outs(%238 : tensor<4xf16>) -> tensor<4xf16>
    %alloc_46 = memref.alloc() : memref<4xi16>
    linalg.transpose ins(%2 : tensor<4xi16>) outs(%alloc_46 : memref<4xi16>) permutation = [0] 
    %240 = tensor.empty() : tensor<2x10xf16>
    %reduced_47 = linalg.reduce ins(%13 : tensor<2x2x10xf16>) outs(%240 : tensor<2x10xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %243 = math.cos %6 : tensor<4xf16>
        %alloca_48 = memref.alloca() : memref<10x2xi64>
        %inserted_49 = tensor.insert %false_29 into %8[%c1, %c1, %c6] : tensor<2x2x10xi1>
        %244 = vector.broadcast %c1104397107_i64 : i64 to vector<2xi64>
        %dest_50, %accumulated_value_51 = vector.scan <and>, %137, %244 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2xi64>, vector<2xi64>
        %245 = arith.remf %in, %in : f16
        %c1061748070_i32 = arith.constant 1061748070 : i32
        %246 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %27, %159, %159 : vector<6x6xf32>, vector<6xf32> into vector<6xf32>
        %247 = vector.insertelement %164, %219[%207 : index] : vector<4xf32>
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    %241 = scf.parallel (%arg1) = (%89) to (%172) step (%c12) init (%alloc_15) -> memref<4xi64> {
      %243 = math.absi %42 : i32
      %244 = math.ctlz %3 : tensor<4xi32>
      affine.store %c1104397107_i64, %alloc_15[%c10] : memref<4xi64>
      %245 = arith.divf %188, %cst : f32
      %246 = arith.maxf %cst, %188 : f32
      %247 = scf.while (%arg2 = %37) : (vector<4xi1>) -> vector<4xi1> {
        vector.print %213 : vector<2x2x10xi32>
        %256 = math.exp2 %22 : tensor<f32>
        %257 = arith.addf %cst_6, %164 : f32
        %258 = math.powf %11, %11 : tensor<10x2xf32>
        %from_elements_51 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_4, %cst_3, %cst_3, %cst_3, %cst_3, %cst_4, %cst_3, %cst_4, %cst_3, %cst_4, %cst_4, %cst_4, %cst_3, %cst_3, %cst_4, %cst_4 : tensor<10x2xf16>
        %259 = affine.max affine_map<(d0, d1) -> (((((d0 floordiv 32) floordiv 4) floordiv 16) * 32) mod 128, ((d0 floordiv 32) floordiv 4) floordiv 16, (d0 floordiv 32) floordiv 4 - 8, (((d0 floordiv 32) floordiv 4) floordiv 16) * 32)>(%136, %c13)
        memref.copy %222, %alloc_19 : memref<10x2xf16> to memref<10x2xf16>
        %260 = vector.splat %cst : vector<10x2xf32>
        scf.condition(%false_2) %112 : vector<4xi1>
      } do {
      ^bb0(%arg2: vector<4xi1>):
        %256 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%rank_25, %130, %c5, %113)
        %257 = vector.bitcast %213 : vector<2x2x10xi32> to vector<2x2x10xi32>
        %258 = vector.broadcast %cst_4 : f16 to vector<2xf16>
        %259 = vector.broadcast %true_1 : i1 to vector<2xi1>
        %260 = vector.maskedload %alloc_22[%c3, %c0, %c0], %259, %258 : memref<10x2x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %261 = math.round %from_elements : tensor<6x6xf32>
        %262 = vector.insertelement %115, %219[%207 : index] : vector<4xf32>
        %263 = arith.ceildivsi %c1370652164_i32, %c2070243935_i32 : i32
        vector.print %199 : vector<10x2xi1>
        %alloc_51 = memref.alloc() : memref<2x2x10xi1>
        %264 = vector.broadcast %true : i1 to vector<6x6xi1>
        %265 = vector.broadcast %42 : i32 to vector<6x6xi32>
        %266 = vector.gather %alloc_51[%207, %c12, %89] [%265], %264, %264 : memref<2x2x10xi1>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
        %splat_52 = tensor.splat %false_29 : tensor<6x6xi1>
        %extracted = tensor.extract %21[%c2] : tensor<4xf32>
        %cst_53 = arith.constant 1.000000e+00 : f32
        %cst_54 = arith.constant 0.000000e+00 : f32
        %267 = vector.transfer_read %11[%130, %54], %cst_54 : tensor<10x2xf32>, vector<f32>
        %268 = vector.broadcast %c-11666_i16 : i16 to vector<4xi16>
        %269 = arith.divf %extracted, %cst_5 : f32
        %270 = arith.ori %c30561_i16, %c-11666_i16 : i16
        %c31250_i16 = arith.constant 31250 : i16
        %271 = math.ceil %164 : f32
        scf.yield %37 : vector<4xi1>
      }
      %rank_48 = tensor.rank %generated_24 : tensor<?x?xi16>
      %collapsed_49 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x2xf16> into tensor<20xf16>
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<2x2x10xi64>) {
      ^bb0(%out: i64):
        %256 = vector.extract_strided_slice %101 {offsets = [0], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %257 = arith.subi %c1370652164_i32, %c1370652164_i32 : i32
        %258 = arith.remf %cst_0, %115 : f32
        %259 = math.powf %115, %cst_6 : f32
        %260 = vector.extract_strided_slice %141 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2x10xi16> to vector<1x2x10xi16>
        %261 = bufferization.to_tensor %171 : memref<2x2x10xf16>
        %262 = vector.broadcast %115 : f32 to vector<4xf32>
        %263 = vector.fma %262, %219, %101 : vector<4xf32>
        %alloca_51 = memref.alloca() : memref<10x2xi64>
        %264 = vector.insertelement %115, %204[%c1 : index] : vector<1xf32>
        %265 = arith.muli %false_29, %true_33 : i1
        %266 = arith.floordivsi %false_29, %false_29 : i1
        %267 = arith.divf %cst_0, %cst_5 : f32
        %268 = arith.maxsi %c1104397107_i64, %c1104397107_i64 : i64
        %269 = arith.addf %cst_3, %cst_3 : f16
        %270 = math.absi %42 : i32
        %271 = math.absi %out : i64
        %272 = vector.broadcast %c-11666_i16 : i16 to vector<2x2xi16>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %141, %272 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x10xi16>, vector<2x2xi16>
        %273 = math.floor %239 : tensor<4xf16>
        %274 = math.ceil %cst_6 : f32
        %275 = vector.broadcast %false : i1 to vector<6x6xi1>
        %276 = vector.insert %cst_5, %262 [0] : f32 into vector<4xf32>
        %277 = vector.flat_transpose %262 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %278 = vector.insertelement %cst_0, %263[%c1 : index] : vector<4xf32>
        bufferization.dealloc_tensor %0 : tensor<4xi32>
        %279 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %280 = vector.outerproduct %277, %202, %279 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
        %281 = index.maxs %54, %c5
        %282 = arith.addf %cst_3, %cst_3 : f16
        %283 = math.log2 %cst_4 : f16
        %284 = math.ipowi %collapsed, %collapsed : tensor<36xi1>
        %alloc_54 = memref.alloc() : memref<4xi16>
        memref.copy %alloc_46, %alloc_54 : memref<4xi16> to memref<4xi16>
        %285 = arith.maxf %cst_3, %cst_4 : f16
        %286 = index.sub %c9, %c12
        linalg.yield %out : i64
      } -> tensor<2x2x10xi64>
      %249 = vector.splat %115 : vector<10x2xf32>
      %250 = vector.splat %83 : vector<6x6xindex>
      %251 = arith.ori %true_1, %true_1 : i1
      %252 = math.ctpop %49 : tensor<6x6xi64>
      %253 = arith.addf %115, %115 : f32
      %254 = arith.remf %164, %115 : f32
      %255 = index.maxu %114, %c3
      %alloc_50 = memref.alloc() : memref<4xi64>
      scf.reduce(%alloc_50)  : memref<4xi64> {
      ^bb0(%arg2: memref<4xi64>, %arg3: memref<4xi64>):
        %256 = math.log2 %239 : tensor<4xf16>
        %257 = memref.realloc %139 : memref<4xi32> to memref<4xi32>
        %inserted_51 = tensor.insert %cst_3 into %239[%c0] : tensor<4xf16>
        %258 = affine.min affine_map<(d0) -> (((d0 - 4) ceildiv 16 + (d0 floordiv 2 - 2) floordiv 128 + 64) * 16, d0, (d0 - 4) ceildiv 16 - (d0 - 4) + 64, (-((d0 floordiv 2 - 2) floordiv 128)) mod 32)>(%77)
        %259 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        %260 = math.absi %4 : tensor<2x2x10xi1>
        %cast_52 = tensor.cast %16 : tensor<6x6xf32> to tensor<?x?xf32>
        %true_53 = index.bool.constant true
        %alloc_54 = memref.alloc() : memref<4xi64>
        scf.reduce.return %alloc_54 : memref<4xi64>
      }
      scf.yield
    }
    %242 = affine.vector_load %alloc_10[%rank, %c1] : memref<10x2xi32>, vector<10xi32>
    affine.vector_store %166, %alloc_7[%c10] : memref<4xf32>, vector<1xf32>
    vector.print %20 : vector<4xf32>
    vector.print %26 : vector<1xf32>
    vector.print %27 : vector<6x6xf32>
    vector.print %36 : vector<4xi32>
    vector.print %37 : vector<4xi1>
    vector.print %38 : vector<4xi32>
    vector.print %50 : vector<4xi64>
    vector.print %51 : vector<4xi64>
    vector.print %52 : vector<1xi64>
    vector.print %57 : vector<1xi1>
    vector.print %70 : vector<1xf32>
    vector.print %87 : vector<1xf32>
    vector.print %92 : vector<4xf32>
    vector.print %96 : vector<1xf32>
    vector.print %97 : vector<4xi32>
    vector.print %100 : vector<f16>
    vector.print %101 : vector<4xf32>
    vector.print %106 : vector<6xf32>
    vector.print %112 : vector<4xi1>
    vector.print %119 : vector<1xi1>
    vector.print %132 : vector<2x2x10xf32>
    vector.print %133 : vector<2x2x10xf32>
    vector.print %137 : vector<10x2xi64>
    vector.print %141 : vector<2x2x10xi16>
    vector.print %159 : vector<6xf32>
    vector.print %163 : vector<1xf32>
    vector.print %166 : vector<1xf32>
    vector.print %197 : vector<10x2xi1>
    vector.print %198 : vector<10x2xi32>
    vector.print %199 : vector<10x2xi1>
    vector.print %201 : vector<4xf32>
    vector.print %202 : vector<4xf32>
    vector.print %204 : vector<1xf32>
    vector.print %212 : vector<2x2x10xi1>
    vector.print %213 : vector<2x2x10xi32>
    vector.print %214 : vector<2x2x10xi16>
    vector.print %219 : vector<4xf32>
    vector.print %242 : vector<10xi32>
    vector.print %cst : f32
    vector.print %c1370652164_i32 : i32
    vector.print %true : i1
    vector.print %c1104397107_i64 : i64
    vector.print %cst_0 : f32
    vector.print %false : i1
    vector.print %true_1 : i1
    vector.print %false_2 : i1
    vector.print %c30561_i16 : i16
    vector.print %c-11666_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c2070243935_i32 : i32
    vector.print %c1215287302_i32 : i32
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %cst_6 : f32
    vector.print %42 : i32
    vector.print %false_29 : i1
    vector.print %115 : f32
    vector.print %true_33 : i1
    vector.print %164 : f32
    vector.print %188 : f32
    return %cst_4 : f16
  }
}
