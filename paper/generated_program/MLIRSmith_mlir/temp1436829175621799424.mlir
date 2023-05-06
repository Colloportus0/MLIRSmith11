module {
  func.func @func1(%arg0: i32, %arg1: memref<3xf32>, %arg2: i1) -> f32 {
    %c659290833_i64 = arith.constant 659290833 : i64
    %c-16730_i16 = arith.constant -16730 : i16
    %c226398037_i64 = arith.constant 226398037 : i64
    %c777931563_i32 = arith.constant 777931563 : i32
    %c331756917_i32 = arith.constant 331756917 : i32
    %c1324859428_i32 = arith.constant 1324859428 : i32
    %c1506343954_i64 = arith.constant 1506343954 : i64
    %c-32155_i16 = arith.constant -32155 : i16
    %cst = arith.constant 4.072000e+03 : f16
    %c1652927298_i64 = arith.constant 1652927298 : i64
    %c1665205524_i32 = arith.constant 1665205524 : i32
    %c357898948_i32 = arith.constant 357898948 : i32
    %cst_0 = arith.constant 4.064000e+04 : f16
    %c1308459300_i32 = arith.constant 1308459300 : i32
    %cst_1 = arith.constant 0x4E3A8EA8 : f32
    %cst_2 = arith.constant 3.092800e+04 : f16
    %0 = tensor.empty() : tensor<3xi16>
    %1 = tensor.empty() : tensor<3x6x3xi16>
    %2 = tensor.empty() : tensor<3xi16>
    %3 = tensor.empty() : tensor<3x6x3xf32>
    %4 = tensor.empty() : tensor<6xi16>
    %5 = tensor.empty() : tensor<6xi1>
    %6 = tensor.empty() : tensor<3x6x3xi32>
    %7 = tensor.empty() : tensor<3x6x3xi1>
    %8 = tensor.empty() : tensor<3x6x3xf32>
    %9 = tensor.empty() : tensor<6xi16>
    %10 = tensor.empty() : tensor<3xi1>
    %11 = tensor.empty() : tensor<3x6x3xf16>
    %12 = tensor.empty() : tensor<6xi64>
    %13 = tensor.empty() : tensor<3x6x3xi64>
    %14 = tensor.empty() : tensor<6xi32>
    %15 = tensor.empty() : tensor<3x6x3xi64>
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
    %alloc = memref.alloc() : memref<6xi16>
    %alloc_3 = memref.alloc() : memref<6xf16>
    %alloc_4 = memref.alloc() : memref<6xi32>
    %alloc_5 = memref.alloc() : memref<3x6x3xi16>
    %alloc_6 = memref.alloc() : memref<6xi1>
    %alloc_7 = memref.alloc() : memref<3x6x3xf32>
    %alloc_8 = memref.alloc() : memref<6xf32>
    %alloc_9 = memref.alloc() : memref<3x6x3xi32>
    %alloc_10 = memref.alloc() : memref<3x6x3xi16>
    %alloc_11 = memref.alloc() : memref<6xf16>
    %alloc_12 = memref.alloc() : memref<6xi16>
    %alloc_13 = memref.alloc() : memref<6xf32>
    %alloc_14 = memref.alloc() : memref<6xi32>
    %alloc_15 = memref.alloc() : memref<3xi64>
    %alloc_16 = memref.alloc() : memref<3xi1>
    %alloc_17 = memref.alloc() : memref<3xf32>
    %16 = tensor.empty() : tensor<3x6x3xi64>
    %17 = linalg.copy ins(%15 : tensor<3x6x3xi64>) outs(%16 : tensor<3x6x3xi64>) -> tensor<3x6x3xi64>
    %alloc_18 = memref.alloc() : memref<3x3x6xf32>
    linalg.transpose ins(%8 : tensor<3x6x3xf32>) outs(%alloc_18 : memref<3x3x6xf32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<3x3xi64>
    %reduced = linalg.reduce ins(%15 : tensor<3x6x3xi64>) outs(%18 : tensor<3x3xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %alloc_41 = memref.alloc() : memref<3xi16>
        %258 = vector.broadcast %in : i64 to vector<3x6x3xi64>
        %259 = vector.transpose %258, [2, 1, 0] : vector<3x6x3xi64> to vector<3x6x3xi64>
        %260 = vector.broadcast %cst_2 : f16 to vector<3xf16>
        %261 = vector.flat_transpose %260 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %262 = vector.multi_reduction <minf>, %261, %cst [0] : vector<3xf16> to f16
        %263 = vector.transpose %260, [0] : vector<3xf16> to vector<3xf16>
        %264 = math.tan %8 : tensor<3x6x3xf32>
        %265 = math.cttz %9 : tensor<6xi16>
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %260, %261, %cst : vector<3xf16>, vector<3xf16> into f16
        %c1_i64_42 = arith.constant 1 : i64
        linalg.yield %c1_i64_42 : i64
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c9, %c3) to (%c13, %c4) step (%c15, %c7) init (%13) -> tensor<3x6x3xi64> {
      %258 = arith.negf %cst : f16
      %259 = vector.load %alloc_4[%c5] : memref<6xi32>, vector<3xi32>
      %260 = affine.if affine_set<(d0) : (d0 * 4 >= 0, (d0 * 4) floordiv 16 >= 0)>(%c11) -> i16 {
        %272 = index.sizeof
        %273 = arith.remsi %c1652927298_i64, %c1506343954_i64 : i64
        %274 = math.log %11 : tensor<3x6x3xf16>
        %275 = arith.mulf %cst_0, %cst_2 : f16
        %276 = affine.load %alloc_10[%c13, %c15, %c14] : memref<3x6x3xi16>
        %277 = math.fma %cst, %cst_0, %cst_2 : f16
        %278 = math.log10 %11 : tensor<3x6x3xf16>
        %279 = arith.shrui %c777931563_i32, %c1324859428_i32 : i32
        affine.yield %276 : i16
      } else {
        %272 = math.ctpop %1 : tensor<3x6x3xi16>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %259, %259, %c1665205524_i32 : vector<3xi32>, vector<3xi32> into i32
        %274 = arith.mulf %cst_1, %cst_1 : f32
        %275 = vector.flat_transpose %259 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %276 = index.floordivs %c0, %c13
        %277 = affine.load %alloc_17[%c2] : memref<3xf32>
        %278 = bufferization.clone %alloc_5 : memref<3x6x3xi16> to memref<3x6x3xi16>
        %279 = vector.extract %275[2] : vector<3xi32>
        affine.yield %c-32155_i16 : i16
      }
      %alloca_41 = memref.alloca() : memref<3xi16>
      %261 = arith.maxui %c1308459300_i32, %c777931563_i32 : i32
      %splat_42 = tensor.splat %c357898948_i32 : tensor<3xi32>
      %262 = bufferization.to_memref %4 : memref<6xi16>
      %263 = bufferization.to_tensor %alloc_13 : memref<6xf32>
      %264 = math.rsqrt %8 : tensor<3x6x3xf32>
      %splat_43 = tensor.splat %c777931563_i32 : tensor<3xi32>
      %265 = vector.reduction <maxui>, %259 : vector<3xi32> into i32
      %266 = math.tanh %11 : tensor<3x6x3xf16>
      %splat_44 = tensor.splat %c659290833_i64 : tensor<6xi64>
      %267 = vector.broadcast %c1652927298_i64 : i64 to vector<i64>
      %268 = vector.transfer_write %267, %splat_44[%c7] : vector<i64>, tensor<6xi64>
      %269 = index.sizeof
      %270 = index.ceildivu %c15, %c3
      %271 = tensor.empty() : tensor<3x6x3xi64>
      scf.reduce(%271)  : tensor<3x6x3xi64> {
      ^bb0(%arg5: tensor<3x6x3xi64>, %arg6: tensor<3x6x3xi64>):
        %272 = arith.minui %c226398037_i64, %c1506343954_i64 : i64
        %273 = index.casts %c8 : index to i32
        %274 = vector.shuffle %259, %259 [0, 2, 3, 5] : vector<3xi32>, vector<3xi32>
        %cst_45 = arith.constant 1.000000e+00 : f32
        %cst_46 = arith.constant 0.000000e+00 : f32
        %275 = vector.transfer_read %263[%c4], %cst_46 : tensor<6xf32>, vector<f32>
        %276 = math.expm1 %cst_2 : f16
        vector.print %259 : vector<3xi32>
        %277 = bufferization.to_tensor %alloc : memref<6xi16>
        %278 = math.log2 %cst_45 : f32
        %279 = tensor.empty() : tensor<3x6x3xi64>
        scf.reduce.return %279 : tensor<3x6x3xi64>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_16[%c9] : memref<3xi1>, vector<6xi1>
    affine.vector_store %20, %alloc_6[%c2] : memref<6xi1>, vector<6xi1>
    %21 = tensor.empty() : tensor<6xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_14, %21 : memref<6xi32>, tensor<6xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = index.divu %c3, %c6
    %25 = vector.broadcast %c357898948_i32 : i32 to vector<6xi32>
    %26 = math.log2 %cst_2 : f16
    %27 = index.castu %c226398037_i64 : i64 to index
    %28 = vector.extract %20[3] : vector<6xi1>
    memref.copy %alloc_4, %alloc_14 : memref<6xi32> to memref<6xi32>
    %29 = math.powf %3, %3 : tensor<3x6x3xf32>
    %30 = arith.minui %c1665205524_i32, %c1665205524_i32 : i32
    %31 = arith.minf %cst_2, %cst_2 : f16
    %32 = math.atan %8 : tensor<3x6x3xf32>
    %collapsed = tensor.collapse_shape %reduced [[0, 1]] : tensor<3x3xi64> into tensor<9xi64>
    %33 = math.floor %11 : tensor<3x6x3xf16>
    %34 = scf.execute_region -> memref<3xf16> {
      %258 = index.floordivs %c14, %c9
      %splat_41 = tensor.splat %cst_2 : tensor<6xf16>
      %259 = arith.ceildivsi %c1308459300_i32, %c1665205524_i32 : i32
      %260 = arith.remsi %c1324859428_i32, %c357898948_i32 : i32
      %261 = vector.reduction <minsi>, %20 : vector<6xi1> into i1
      %262 = vector.broadcast %c659290833_i64 : i64 to vector<6xi64>
      %263 = vector.transfer_write %262, %13[%c5, %c14, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi64>, tensor<3x6x3xi64>
      %264 = index.sub %c13, %c4
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 1, d2 * 8)>(%c12, %24, %c12, %c10)
      %266 = math.fma %3, %8, %8 : tensor<3x6x3xf32>
      %cst_42 = arith.constant 1.000000e+00 : f16
      %cst_43 = arith.constant 0.000000e+00 : f16
      %267 = vector.transfer_read %alloc_11[%c14], %cst_43 : memref<6xf16>, vector<f16>
      %268 = vector.broadcast %c-16730_i16 : i16 to vector<3xi16>
      %false = arith.constant false
      %269 = vector.broadcast %false : i1 to vector<3xi1>
      %270 = vector.maskedload %alloc_5[%c0, %c2, %c1], %269, %268 : memref<3x6x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %271 = affine.min affine_map<(d0, d1, d2) -> (d0 - 2, (-d1) ceildiv 4, ((d1 mod 64) ceildiv 16) * 64, d1 mod 64)>(%265, %264, %c10)
      %272 = index.divu %c3, %264
      %273 = math.ctpop %21 : tensor<6xi32>
      %274 = index.maxu %c3, %c5
      %splat_44 = tensor.splat %c1506343954_i64 : tensor<3x6x3xi64>
      %alloc_45 = memref.alloc() : memref<3xf16>
      scf.yield %alloc_45 : memref<3xf16>
    }
    %35 = math.exp2 %3 : tensor<3x6x3xf32>
    %36 = arith.minui %c659290833_i64, %c1506343954_i64 : i64
    %37 = math.log1p %11 : tensor<3x6x3xf16>
    %true = arith.constant true
    %38 = vector.broadcast %true : i1 to vector<6x6xi1>
    %39 = vector.outerproduct %20, %20, %38 {kind = #vector.kind<and>} : vector<6xi1>, vector<6xi1>
    %40 = index.castu %c10 : index to i32
    %41 = math.fma %cst, %cst_2, %cst_2 : f16
    %42 = tensor.empty(%c7) : tensor<?xi16>
    %true_19 = arith.constant true
    %43 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %true_19 : vector<6xi1>, vector<6xi1> into i1
    memref.tensor_store %3, %alloc_7 : memref<3x6x3xf32>
    %44 = arith.minui %c-32155_i16, %c-16730_i16 : i16
    %45 = arith.shli %c331756917_i32, %c357898948_i32 : i32
    %46 = index.sub %27, %c14
    %47 = affine.if affine_set<(d0) : (d0 * 8 >= 0, -d0 == 0, 0 == 0, d0 * 8 + 1 >= 0)>(%c0) -> memref<6xi16> {
      %258 = math.cos %11 : tensor<3x6x3xf16>
      %259 = math.log2 %8 : tensor<3x6x3xf32>
      %260 = index.maxu %27, %46
      %261 = vector.broadcast %c1665205524_i32 : i32 to vector<6xi32>
      %262 = vector.transfer_write %261, %6[%c0, %c2, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi32>, tensor<3x6x3xi32>
      %263 = vector.load %alloc_14[%c5] : memref<6xi32>, vector<6xi32>
      %264 = math.ctpop %9 : tensor<6xi16>
      %265 = memref.load %alloc_7[%c2, %c0, %c1] : memref<3x6x3xf32>
      %generated_41 = tensor.generate %c15 {
      ^bb0(%arg3: index):
        %c1_i64_42 = arith.constant 1 : i64
        %266 = vector.transfer_read %12[%c6], %c1_i64_42 : tensor<6xi64>, vector<i64>
        %267 = math.log2 %3 : tensor<3x6x3xf32>
        vector.print %20 : vector<6xi1>
        %268 = arith.shrui %c659290833_i64, %c659290833_i64 : i64
        tensor.yield %cst_2 : f16
      } : tensor<?xf16>
      affine.yield %alloc : memref<6xi16>
    } else {
      %258 = arith.remf %cst, %cst_2 : f16
      %259 = affine.load %alloc_5[%c5, %c0, %c12] : memref<3x6x3xi16>
      %alloc_41 = memref.alloc() : memref<3x3x6xf32>
      memref.copy %alloc_18, %alloc_41 : memref<3x3x6xf32> to memref<3x3x6xf32>
      %260 = vector.transpose %20, [0] : vector<6xi1> to vector<6xi1>
      affine.store %cst_1, %alloc_18[%c12, %c10, %c12] : memref<3x3x6xf32>
      vector.print %20 : vector<6xi1>
      %261 = vector.flat_transpose %20 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %alloc_42 = memref.alloc() : memref<3x6x3xi32>
      memref.copy %alloc_9, %alloc_42 : memref<3x6x3xi32> to memref<3x6x3xi32>
      affine.yield %alloc : memref<6xi16>
    }
    %48 = index.ceildivu %24, %c0
    %49 = math.absi %22 : tensor<i32>
    %50 = math.log2 %11 : tensor<3x6x3xf16>
    %51 = index.floordivs %c14, %27
    %52 = memref.realloc %alloc : memref<6xi16> to memref<7xi16>
    %splat = tensor.splat %c1324859428_i32 : tensor<6xi32>
    %alloc_20 = memref.alloc() : memref<6xi32>
    %true_21 = arith.constant true
    %53 = vector.multi_reduction <minui>, %20, %true_21 [0] : vector<6xi1> to i1
    %54 = math.log1p %8 : tensor<3x6x3xf32>
    %55 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %20, %53 : vector<6xi1>, vector<6xi1> into i1
    %56 = arith.remui %c1506343954_i64, %c659290833_i64 : i64
    %57 = bufferization.to_memref %6 : memref<3x6x3xi32>
    %58 = math.log10 %cst : f16
    %cast = tensor.cast %2 : tensor<3xi16> to tensor<?xi16>
    %59 = math.absf %cst_0 : f16
    %60 = scf.execute_region -> tensor<3x6x3xi64> {
      %258 = math.ctpop %53 : i1
      %259 = arith.remui %c1308459300_i32, %c331756917_i32 : i32
      memref.copy %alloc_11, %alloc_3 : memref<6xf16> to memref<6xf16>
      vector.print %25 : vector<6xi32>
      %260 = arith.floordivsi %c1506343954_i64, %c1652927298_i64 : i64
      %261 = vector.load %57[%c0, %c5, %c2] : memref<3x6x3xi32>, vector<3x6x3xi32>
      %262 = index.ceildivs %c1, %27
      %263 = arith.floordivsi %c777931563_i32, %c357898948_i32 : i32
      %264 = index.sizeof
      %265 = vector.multi_reduction <mul>, %20, %true_21 [0] : vector<6xi1> to i1
      %266 = index.mul %262, %c4
      %from_elements_41 = tensor.from_elements %cst_2, %cst_0, %cst, %cst_0, %cst, %cst : tensor<6xf16>
      %267 = arith.cmpi ne, %265, %53 : i1
      %268 = math.cos %8 : tensor<3x6x3xf32>
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0)>(%c15, %c8, %c14, %c12) -> memref<6xi1> {
        %270 = arith.remui %265, %53 : i1
        %271 = arith.remsi %c659290833_i64, %c226398037_i64 : i64
        %272 = vector.shuffle %20, %20 [0, 3, 4, 8, 9] : vector<6xi1>, vector<6xi1>
        %273 = arith.remf %cst_0, %cst : f16
        %274 = arith.divui %c1308459300_i32, %c777931563_i32 : i32
        %expanded_43 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<3x6x3xi64> into tensor<3x6x3x1xi64>
        %275 = index.sub %c12, %c0
        %276 = math.tan %11 : tensor<3x6x3xf16>
        affine.yield %alloc_6 : memref<6xi1>
      } else {
        %270 = math.exp2 %8 : tensor<3x6x3xf32>
        %271 = vector.broadcast %c1324859428_i32 : i32 to vector<i32>
        %272 = vector.transfer_write %271, %14[%c15] : vector<i32>, tensor<6xi32>
        %273 = arith.ceildivsi %c659290833_i64, %c226398037_i64 : i64
        %alloc_43 = memref.alloc() : memref<3x6x3xf16>
        %274 = vector.broadcast %cst_2 : f16 to vector<3x6x3xf16>
        %275 = vector.broadcast %53 : i1 to vector<3x6x3xi1>
        %276 = vector.gather %alloc_43[%48, %c13, %c10] [%261], %275, %274 : memref<3x6x3xf16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xf16> into vector<3x6x3xf16>
        %277 = index.sizeof
        %278 = math.exp2 %cst_2 : f16
        %279 = vector.shuffle %276, %276 [2, 3, 4] : vector<3x6x3xf16>, vector<3x6x3xf16>
        %280 = affine.max affine_map<(d0) -> (-d0)>(%c4)
        affine.yield %alloc_6 : memref<6xi1>
      }
      %alloc_42 = memref.alloc() : memref<3xi16>
      memref.tensor_store %0, %alloc_42 : memref<3xi16>
      scf.yield %13 : tensor<3x6x3xi64>
    }
    %alloca = memref.alloca() : memref<6xi64>
    %61 = tensor.empty() : tensor<6xi1>
    %62 = vector.multi_reduction <xor>, %25, %25 [] : vector<6xi32> to vector<6xi32>
    %63 = index.sizeof
    %64 = math.roundeven %11 : tensor<3x6x3xf16>
    %65 = arith.ceildivsi %c357898948_i32, %c357898948_i32 : i32
    %alloc_22 = memref.alloc() : memref<3x3xi64>
    memref.tensor_store %18, %alloc_22 : memref<3x3xi64>
    %66 = scf.execute_region -> tensor<6xi64> {
      %258 = affine.for %arg3 = 0 to 88 iter_args(%arg4 = %11) -> (tensor<3x6x3xf16>) {
        affine.yield %11 : tensor<3x6x3xf16>
      }
      %259 = math.expm1 %11 : tensor<3x6x3xf16>
      %260 = arith.maxsi %c357898948_i32, %c1308459300_i32 : i32
      %261 = index.maxu %c1, %51
      %262 = bufferization.to_memref %60 : memref<3x6x3xi64>
      %263 = arith.minui %c1308459300_i32, %c357898948_i32 : i32
      affine.store %cst_2, %34[%c3] : memref<3xf16>
      %264 = math.copysign %8, %3 : tensor<3x6x3xf32>
      %265 = arith.ori %c1652927298_i64, %c226398037_i64 : i64
      %266 = math.ceil %3 : tensor<3x6x3xf32>
      %267 = arith.xori %c1652927298_i64, %c1506343954_i64 : i64
      memref.tensor_store %14, %alloc_14 : memref<6xi32>
      %268 = index.divu %48, %46
      %269 = tensor.empty(%27, %c2) : tensor<3x?x?xi1>
      %270 = bufferization.to_tensor %alloc_4 : memref<6xi32>
      memref.assume_alignment %57, 2 : memref<3x6x3xi32>
      scf.yield %12 : tensor<6xi64>
    }
    %67 = math.cos %8 : tensor<3x6x3xf32>
    memref.alloca_scope  {
      %258 = math.ceil %8 : tensor<3x6x3xf32>
      %259 = arith.addi %c659290833_i64, %c226398037_i64 : i64
      %260 = memref.load %alloc_9[%c1, %c2, %c1] : memref<3x6x3xi32>
      %261 = arith.xori %c-16730_i16, %c-16730_i16 : i16
      %262 = arith.floordivsi %c1324859428_i32, %c357898948_i32 : i32
      %263 = bufferization.to_memref %4 : memref<6xi16>
      %264 = vector.create_mask %c5 : vector<3xi1>
      %265 = bufferization.to_memref %23 : memref<i32>
      %collapsed_41 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<3x6x3xf16> into tensor<18x3xf16>
      %generated_42 = tensor.generate %c15 {
      ^bb0(%arg3: index):
        %287 = vector.splat %c-32155_i16 : vector<3xi16>
        %288 = vector.transpose %264, [0] : vector<3xi1> to vector<3xi1>
        %289 = arith.addf %cst_0, %cst : f16
        %290 = arith.minf %cst_1, %cst_1 : f32
        tensor.yield %c1652927298_i64 : i64
      } : tensor<?xi64>
      %266 = arith.mulf %cst, %cst_0 : f16
      memref.assume_alignment %alloc_10, 8 : memref<3x6x3xi16>
      %267 = affine.if affine_set<(d0) : (d0 * -2 == 0, d0 * 4 >= 0, (d0 mod 8) * 2 + 8 >= 0, d0 * -2 == 0)>(%c13) -> i1 {
        %287 = arith.addf %cst_1, %cst_1 : f32
        %288 = memref.load %alloc_6[%c3] : memref<6xi1>
        %289 = math.log10 %cst_1 : f32
        %290 = tensor.empty() : tensor<6xi16>
        %291 = arith.addf %cst, %cst_0 : f16
        %292 = vector.broadcast %c-32155_i16 : i16 to vector<3x6x3xi16>
        %293 = vector.broadcast %53 : i1 to vector<3x6x3xi1>
        %294 = vector.broadcast %c357898948_i32 : i32 to vector<3x6x3xi32>
        %295 = vector.gather %2[%c13] [%294], %293, %292 : tensor<3xi16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xi16> into vector<3x6x3xi16>
        %296 = arith.mulf %cst_2, %cst_0 : f16
        %297 = arith.minsi %c659290833_i64, %c1652927298_i64 : i64
        affine.yield %53 : i1
      } else {
        %287 = math.exp2 %11 : tensor<3x6x3xf16>
        %288 = index.castu %c6 : index to i32
        %289 = index.mul %c3, %24
        %290 = vector.reduction <minsi>, %20 : vector<6xi1> into i1
        %291 = math.exp %3 : tensor<3x6x3xf32>
        %alloc_44 = memref.alloc() : memref<3xf16>
        memref.copy %34, %alloc_44 : memref<3xf16> to memref<3xf16>
        %from_elements_45 = tensor.from_elements %cst, %cst, %cst, %cst_2, %cst_0, %cst_2 : tensor<6xf16>
        %292 = math.log %cst_0 : f16
        affine.yield %true_21 : i1
      }
      %268 = affine.load %alloc[%c1] : memref<6xi16>
      %269 = bufferization.to_memref %16 : memref<3x6x3xi64>
      %270 = scf.while (%arg3 = %c1324859428_i32) : (i32) -> i32 {
        %287 = vector.transpose %25, [0] : vector<6xi32> to vector<6xi32>
        %288 = arith.addi %c659290833_i64, %c659290833_i64 : i64
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d3 - 1, (d3 - 4) mod 128, ((d1 + 64) floordiv 128) floordiv 8, d1 - d2)>(%c9, %c13, %63, %c9)
        %290 = math.log %8 : tensor<3x6x3xf32>
        %291 = bufferization.to_memref %generated_42 : memref<?xi64>
        %extracted_44 = tensor.extract %16[%c0, %c0, %c2] : tensor<3x6x3xi64>
        %292 = math.floor %cst_2 : f16
        %293 = math.log1p %8 : tensor<3x6x3xf32>
        scf.condition(%53) %c1665205524_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %287 = index.floordivs %c4, %46
        %expanded_44 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<3x6x3xi64> into tensor<3x6x3x1xi64>
        memref.copy %alloc_5, %alloc_10 : memref<3x6x3xi16> to memref<3x6x3xi16>
        %288 = math.floor %cst_2 : f16
        %289 = bufferization.to_tensor %alloc_7 : memref<3x6x3xf32>
        %290 = math.log1p %cst : f16
        %291 = vector.multi_reduction <mul>, %25, %arg3 [0] : vector<6xi32> to i32
        %292 = vector.transpose %25, [0] : vector<6xi32> to vector<6xi32>
        %293 = index.sizeof
        %294 = arith.cmpf olt, %cst_0, %cst_0 : f16
        %295 = math.rsqrt %8 : tensor<3x6x3xf32>
        %296 = math.expm1 %collapsed_41 : tensor<18x3xf16>
        %297 = arith.addf %cst, %cst_2 : f16
        %298 = index.sizeof
        %299 = math.roundeven %11 : tensor<3x6x3xf16>
        %300 = math.ctlz %10 : tensor<3xi1>
        scf.yield %c331756917_i32 : i32
      }
      %collapsed_43 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<3x6x3xi64> into tensor<18x3xi64>
      %271 = vector.load %alloc_7[%c1, %c5, %c0] : memref<3x6x3xf32>, vector<3xf32>
      %272 = vector.flat_transpose %271 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %273 = math.powf %11, %11 : tensor<3x6x3xf16>
      %extracted = tensor.extract %14[%c5] : tensor<6xi32>
      scf.if %true_21 {
        %287 = math.fpowi %3, %6 : tensor<3x6x3xf32>, tensor<3x6x3xi32>
        %288 = bufferization.to_tensor %alloc_13 : memref<6xf32>
        %289 = index.sub %c15, %24
        %290 = math.tanh %11 : tensor<3x6x3xf16>
        memref.assume_alignment %alloc_17, 1 : memref<3xf32>
        %291 = arith.remsi %c1652927298_i64, %c1506343954_i64 : i64
        %292 = arith.remui %268, %c-16730_i16 : i16
        %293 = math.floor %3 : tensor<3x6x3xf32>
      } else {
        %287 = arith.minui %c331756917_i32, %c1324859428_i32 : i32
        %288 = index.sizeof
        %289 = math.ceil %11 : tensor<3x6x3xf16>
        %290 = arith.minui %c659290833_i64, %c1506343954_i64 : i64
        %expanded_44 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<3x6x3xi16> into tensor<3x6x3x1xi16>
        %expanded_45 = tensor.expand_shape %14 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %53 : vector<6xi1>, vector<6xi1> into i1
        %292 = arith.divsi %c659290833_i64, %c226398037_i64 : i64
      }
      %274 = math.expm1 %cst : f16
      %275 = index.divu %c8, %c0
      %276 = vector.broadcast %cst_1 : f32 to vector<7x6xf32>
      %277 = vector.broadcast %cst_1 : f32 to vector<7xf32>
      %dest, %accumulated_value = vector.scan <mul>, %276, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<7x6xf32>, vector<7xf32>
      %278 = math.round %11 : tensor<3x6x3xf16>
      %279 = math.atan %cst : f16
      %280 = math.log2 %collapsed_41 : tensor<18x3xf16>
      %281 = arith.floordivsi %c226398037_i64, %c226398037_i64 : i64
      %282 = vector.create_mask %275 : vector<3xi1>
      %283 = arith.shrsi %268, %c-16730_i16 : i16
      %284 = vector.broadcast %cst : f16 to vector<3xf16>
      %285 = vector.broadcast %c1665205524_i32 : i32 to vector<3xi32>
      %286 = vector.gather %alloc_3[%c2] [%285], %264, %284 : memref<6xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    }
    memref.assume_alignment %alloc_9, 8 : memref<3x6x3xi32>
    %68 = vector.load %alloc_7[%c1, %c3, %c1] : memref<3x6x3xf32>, vector<6xf32>
    %69 = scf.if %true_21 -> (f32) {
      %258 = arith.remf %cst, %cst_2 : f16
      %259 = index.ceildivu %c8, %c1
      %260 = arith.negf %cst_0 : f16
      %261 = index.casts %true_21 : i1 to index
      %262 = vector.broadcast %c777931563_i32 : i32 to vector<3xi32>
      vector.print %68 : vector<6xf32>
      %263 = bufferization.clone %alloc_15 : memref<3xi64> to memref<3xi64>
      %264 = arith.subi %c331756917_i32, %c357898948_i32 : i32
      scf.yield %cst_1 : f32
    } else {
      %258 = math.absf %cst_0 : f16
      %expanded_41 = tensor.expand_shape %60 [[0], [1], [2, 3]] : tensor<3x6x3xi64> into tensor<3x6x3x1xi64>
      %259 = bufferization.to_memref %18 : memref<3x3xi64>
      scf.execute_region {
        %267 = math.fpowi %11, %6 : tensor<3x6x3xf16>, tensor<3x6x3xi32>
        %268 = arith.cmpi sgt, %c1652927298_i64, %c1652927298_i64 : i64
        %269 = arith.remf %cst_0, %cst_0 : f16
        %270 = vector.flat_transpose %20 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %271 = math.ipowi %c-16730_i16, %c-32155_i16 : i16
        %272 = arith.cmpf true, %cst, %cst : f16
        %273 = bufferization.to_tensor %57 : memref<3x6x3xi32>
        %274 = math.round %3 : tensor<3x6x3xf32>
        %275 = vector.broadcast %c1324859428_i32 : i32 to vector<6xi32>
        %276 = vector.shuffle %25, %25 [1, 3, 4, 5, 6, 8, 10] : vector<6xi32>, vector<6xi32>
        %from_elements_42 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<6xf32>
        %277 = arith.minsi %c1506343954_i64, %c1652927298_i64 : i64
        vector.print %68 : vector<6xf32>
        %278 = affine.max affine_map<(d0) -> (d0 ceildiv 8, -d0, d0 mod 32 + 8, -d0)>(%c5)
        %279 = arith.shrui %c1506343954_i64, %c226398037_i64 : i64
        %280 = math.log %from_elements_42 : tensor<6xf32>
        scf.yield
      }
      %260 = vector.broadcast %c4 : index to vector<3xindex>
      %261 = vector.broadcast %53 : i1 to vector<3xi1>
      %262 = vector.broadcast %c1324859428_i32 : i32 to vector<3xi32>
      vector.scatter %alloc_9[%c0, %c3, %c1] [%260], %261, %262 : memref<3x6x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      %263 = index.divu %c8, %c2
      %264 = arith.remui %c1308459300_i32, %c1308459300_i32 : i32
      %265 = vector.broadcast %cst_1 : f32 to vector<6xf32>
      %266 = vector.fma %265, %265, %68 : vector<6xf32>
      scf.yield %cst_1 : f32
    }
    %70 = index.ceildivu %c9, %c13
    %71 = index.floordivs %46, %c3
    %collapsed_23 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<3x6x3xi16> into tensor<18x3xi16>
    %72 = arith.ceildivsi %c777931563_i32, %c1324859428_i32 : i32
    %73 = tensor.empty() : tensor<3x6x3xi64>
    %mapped = linalg.map ins(%13 : tensor<3x6x3xi64>) outs(%73 : tensor<3x6x3xi64>)
      (%in: i64) {
        %258 = vector.flat_transpose %68 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %259 = arith.cmpf ule, %cst_1, %cst_1 : f32
        %260 = scf.if %53 -> (i64) {
          %290 = memref.load %alloc_18[%c2, %c1, %c0] : memref<3x3x6xf32>
          %291 = arith.shli %c-16730_i16, %c-32155_i16 : i16
          %292 = arith.ori %c357898948_i32, %c777931563_i32 : i32
          %293 = affine.max affine_map<(d0) -> (-((d0 + 8) mod 128), d0 + 96, (d0 + 8) * 8)>(%c14)
          %294 = math.log10 %11 : tensor<3x6x3xf16>
          %alloc_43 = memref.alloc() : memref<3x6x3xi1>
          memref.tensor_store %7, %alloc_43 : memref<3x6x3xi1>
          %295 = arith.remsi %c1665205524_i32, %c777931563_i32 : i32
          %296 = vector.reduction <minf>, %68 : vector<6xf32> into f32
          scf.yield %c659290833_i64 : i64
        } else {
          %290 = arith.muli %in, %c659290833_i64 : i64
          %291 = math.log2 %8 : tensor<3x6x3xf32>
          %292 = vector.load %alloc_7[%c2, %c4, %c1] : memref<3x6x3xf32>, vector<6xf32>
          %293 = vector.broadcast %c331756917_i32 : i32 to vector<6xi32>
          vector.transfer_write %293, %alloc_9[%c8, %c6, %46] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi32>, memref<3x6x3xi32>
          %294 = vector.broadcast %cst_1 : f32 to vector<f32>
          %295 = vector.transfer_write %294, %8[%70, %c7, %c2] : vector<f32>, tensor<3x6x3xf32>
          %296 = index.casts %c2 : index to i32
          %expanded_43 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<3x6x3xi1> into tensor<3x6x3x1xi1>
          %297 = vector.create_mask %46 : vector<6xi1>
          scf.yield %in : i64
        }
        %261 = arith.remsi %260, %in : i64
        %262 = bufferization.clone %alloc_13 : memref<6xf32> to memref<6xf32>
        %263 = vector.create_mask %c3, %c13, %c14 : vector<3x6x3xi1>
        %264 = scf.execute_region -> f32 {
          %290 = memref.realloc %alloc_8 : memref<6xf32> to memref<7xf32>
          %291 = affine.load %262[%c7] : memref<6xf32>
          %292 = index.ceildivs %48, %c3
          %293 = index.ceildivu %71, %c9
          %294 = arith.remsi %260, %c1652927298_i64 : i64
          %295 = arith.cmpi sle, %c331756917_i32, %c331756917_i32 : i32
          %296 = math.ipowi %15, %60 : tensor<3x6x3xi64>
          %alloca_43 = memref.alloca() : memref<6xf16>
          %297 = arith.maxsi %c-16730_i16, %c-16730_i16 : i16
          %298 = math.cos %3 : tensor<3x6x3xf32>
          %299 = math.ctlz %in : i64
          %300 = vector.broadcast %53 : i1 to vector<7xi1>
          %301 = vector.maskedload %alloc_6[%c1], %300, %300 : memref<6xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %302 = index.floordivs %27, %c1
          %303 = arith.minui %c1308459300_i32, %c331756917_i32 : i32
          %304 = index.casts %260 : i64 to index
          %305 = vector.create_mask %c13 : vector<6xi1>
          scf.yield %69 : f32
        }
        %265 = bufferization.to_tensor %alloc_5 : memref<3x6x3xi16>
        %266 = arith.minui %c-32155_i16, %c-16730_i16 : i16
        %267 = memref.load %alloc_4[%c4] : memref<6xi32>
        %268 = index.floordivs %c12, %27
        %269 = math.copysign %8, %3 : tensor<3x6x3xf32>
        %270 = arith.remsi %c1506343954_i64, %c1652927298_i64 : i64
        %271 = vector.transpose %68, [0] : vector<6xf32> to vector<6xf32>
        %272 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0)>(%c1, %c10, %c15, %c9) -> i16 {
          %alloca_43 = memref.alloca() : memref<3xi64>
          %290 = arith.addi %c-32155_i16, %c-32155_i16 : i16
          %291 = math.cos %264 : f32
          %292 = index.castu %268 : index to i32
          %293 = index.sub %c9, %51
          memref.assume_alignment %alloc_16, 1 : memref<3xi1>
          %294 = math.log1p %8 : tensor<3x6x3xf32>
          %295 = math.atan %3 : tensor<3x6x3xf32>
          affine.yield %c-32155_i16 : i16
        } else {
          %290 = arith.remui %c1308459300_i32, %c1308459300_i32 : i32
          %291 = math.log10 %8 : tensor<3x6x3xf32>
          %alloc_43 = memref.alloc() : memref<3xi1>
          memref.copy %alloc_16, %alloc_43 : memref<3xi1> to memref<3xi1>
          %292 = math.powf %8, %8 : tensor<3x6x3xf32>
          %293 = bufferization.to_memref %12 : memref<6xi64>
          %inserted_44 = tensor.insert %c357898948_i32 into %6[%c0, %c1, %c2] : tensor<3x6x3xi32>
          %294 = index.divu %27, %c7
          %295 = arith.divsi %c1652927298_i64, %c1652927298_i64 : i64
          affine.yield %c-32155_i16 : i16
        }
        %273 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %274 = arith.ori %c-32155_i16, %c-32155_i16 : i16
        %275 = tensor.empty() : tensor<3x6x3xf32>
        %276 = arith.divui %c-16730_i16, %c-32155_i16 : i16
        vector.print %25 : vector<6xi32>
        %277 = bufferization.clone %alloc : memref<6xi16> to memref<6xi16>
        %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%reduced : tensor<3x3xi64>) outs(%73 : tensor<3x6x3xi64>) {
        ^bb0(%in_43: i64, %out: i64):
          %290 = tensor.empty() : tensor<3xf16>
          %291 = arith.minf %cst, %cst_0 : f16
          %292 = vector.broadcast %in_43 : i64 to vector<6x3xi64>
          %293 = vector.transfer_write %292, %16[%c13, %c10, %63] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x3xi64>, tensor<3x6x3xi64>
          %294 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%c4, %c4, %c13)
          %295 = math.exp2 %8 : tensor<3x6x3xf32>
          %alloc_44 = memref.alloc() : memref<3x6x3xi1>
          memref.tensor_store %7, %alloc_44 : memref<3x6x3xi1>
          %296 = memref.atomic_rmw maxu %c-32155_i16, %alloc_12[%c4] : (i16, memref<6xi16>) -> i16
          %297 = arith.addf %cst_2, %cst_0 : f16
          %298 = index.sub %24, %c2
          %299 = math.atan %290 : tensor<3xf16>
          %cast_45 = tensor.cast %1 : tensor<3x6x3xi16> to tensor<?x?x?xi16>
          %300 = index.castu %c4 : index to i32
          %from_elements_46 = tensor.from_elements %in, %in, %in_43, %out, %c1652927298_i64, %c226398037_i64, %in, %c1506343954_i64, %in, %in_43, %260, %in, %c659290833_i64, %c226398037_i64, %c1506343954_i64, %c226398037_i64, %out, %c1506343954_i64, %c1506343954_i64, %c659290833_i64, %260, %c226398037_i64, %260, %in, %c659290833_i64, %out, %c1506343954_i64, %c1506343954_i64, %260, %c1506343954_i64, %in, %c226398037_i64, %out, %c1506343954_i64, %in_43, %out, %out, %out, %c1652927298_i64, %in, %260, %c1506343954_i64, %in_43, %c1506343954_i64, %c659290833_i64, %c226398037_i64, %c1506343954_i64, %out, %c659290833_i64, %c226398037_i64, %260, %c659290833_i64, %c659290833_i64, %out : tensor<3x6x3xi64>
          %collapsed_47 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<3x6x3xi64> into tensor<18x3xi64>
          %301 = math.absf %69 : f32
          %302 = affine.load %alloc_6[%c4] : memref<6xi1>
          memref.copy %alloc_5, %alloc_10 : memref<3x6x3xi16> to memref<3x6x3xi16>
          %splat_48 = tensor.splat %c357898948_i32 : tensor<6xi32>
          %303 = index.maxs %294, %c11
          %304 = arith.shli %c659290833_i64, %c226398037_i64 : i64
          %305 = bufferization.to_memref %splat : memref<6xi32>
          %306 = arith.shrsi %c1665205524_i32, %c1665205524_i32 : i32
          memref.store %c-16730_i16, %alloc_12[%c3] : memref<6xi16>
          %307 = vector.extract %25[2] : vector<6xi32>
          %308 = index.castu %48 : index to i32
          %309 = index.casts %c11 : index to i32
          %alloc_49 = memref.alloc() : memref<3x6x3xi16>
          %310 = math.fpowi %cst_2, %c1308459300_i32 : f16, i32
          %311 = math.exp %cst : f16
          %312 = math.cos %8 : tensor<3x6x3xf32>
          %313 = arith.divf %264, %cst_1 : f32
          %rank = tensor.rank %10 : tensor<3xi1>
          linalg.yield %c1506343954_i64 : i64
        } -> tensor<3x6x3xi64>
        %279 = arith.maxsi %c1324859428_i32, %c1308459300_i32 : i32
        %280 = affine.load %alloc_14[%c6] : memref<6xi32>
        %281 = index.castu %c3 : index to i32
        %282 = memref.realloc %alloc_6 : memref<6xi1> to memref<6xi1>
        %283 = affine.load %alloc_6[%c4] : memref<6xi1>
        %extracted = tensor.extract %23[] : tensor<i32>
        %expanded_41 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<3x6x3xi16> into tensor<3x6x3x1xi16>
        %284 = index.maxu %c12, %c14
        %285 = math.log2 %3 : tensor<3x6x3xf32>
        %286 = tensor.empty() : tensor<6xf16>
        %287 = vector.broadcast %cst_2 : f16 to vector<3x6x3xf16>
        %288 = vector.broadcast %c1308459300_i32 : i32 to vector<3x6x3xi32>
        %289 = vector.gather %286[%48] [%288], %263, %287 : tensor<6xf16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xf16> into vector<3x6x3xf16>
        %c1_i64_42 = arith.constant 1 : i64
        linalg.yield %c1_i64_42 : i64
      }
    %from_elements = tensor.from_elements %c1506343954_i64, %c226398037_i64, %c1652927298_i64, %c226398037_i64, %c226398037_i64, %c659290833_i64, %c226398037_i64, %c1506343954_i64, %c1652927298_i64, %c1652927298_i64, %c659290833_i64, %c1652927298_i64, %c226398037_i64, %c1652927298_i64, %c1506343954_i64, %c1652927298_i64, %c659290833_i64, %c226398037_i64, %c659290833_i64, %c226398037_i64, %c659290833_i64, %c1652927298_i64, %c226398037_i64, %c226398037_i64, %c226398037_i64, %c659290833_i64, %c1652927298_i64, %c659290833_i64, %c1506343954_i64, %c1506343954_i64, %c1652927298_i64, %c659290833_i64, %c226398037_i64, %c1506343954_i64, %c1652927298_i64, %c1652927298_i64, %c226398037_i64, %c226398037_i64, %c659290833_i64, %c1652927298_i64, %c659290833_i64, %c1506343954_i64, %c1506343954_i64, %c659290833_i64, %c226398037_i64, %c659290833_i64, %c1652927298_i64, %c1652927298_i64, %c226398037_i64, %c1506343954_i64, %c226398037_i64, %c226398037_i64, %c659290833_i64, %c659290833_i64 : tensor<3x6x3xi64>
    %true_24 = index.bool.constant true
    %74 = vector.shuffle %68, %68 [0, 2, 6, 7, 8, 10, 11] : vector<6xf32>, vector<6xf32>
    %75 = index.sizeof
    %76 = arith.remf %69, %69 : f32
    %77 = math.ctpop %16 : tensor<3x6x3xi64>
    %78 = arith.subi %true_24, %true_21 : i1
    %alloc_25 = memref.alloc() : memref<i32>
    memref.tensor_store %23, %alloc_25 : memref<i32>
    %79 = arith.ori %true_21, %true_24 : i1
    %80 = math.atan %3 : tensor<3x6x3xf32>
    %81 = arith.cmpf false, %cst, %cst : f16
    %82 = math.tanh %11 : tensor<3x6x3xf16>
    %83 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 64) floordiv 64)>(%51, %c3, %71, %24)
    memref.assume_alignment %alloc_12, 2 : memref<6xi16>
    %84 = arith.shrui %c659290833_i64, %c1652927298_i64 : i64
    %85 = arith.maxsi %53, %true_24 : i1
    %86 = math.round %8 : tensor<3x6x3xf32>
    %87 = bufferization.to_tensor %alloc_5 : memref<3x6x3xi16>
    %88 = vector.broadcast %c-16730_i16 : i16 to vector<6xi16>
    %89 = vector.gather %alloc[%c4] [%25], %20, %88 : memref<6xi16>, vector<6xi32>, vector<6xi1>, vector<6xi16> into vector<6xi16>
    %90 = vector.multi_reduction <maxsi>, %25, %c331756917_i32 [0] : vector<6xi32> to i32
    scf.if %53 {
      %258 = bufferization.to_tensor %57 : memref<3x6x3xi32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<3x6x3xi64>) {
      ^bb0(%out: i64):
        %266 = vector.splat %83 : vector<6xindex>
        %collapsed_41 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<3x6x3xi64> into tensor<18x3xi64>
        %267 = math.absf %cst_2 : f16
        %268 = math.log2 %69 : f32
        %269 = arith.mulf %69, %69 : f32
        %270 = vector.shuffle %20, %20 [0, 4, 7, 11] : vector<6xi1>, vector<6xi1>
        %271 = arith.maxui %c-32155_i16, %c-32155_i16 : i16
        %splat_42 = tensor.splat %c1652927298_i64 : tensor<3xi64>
        %272 = arith.remf %cst, %cst : f16
        %273 = arith.subi %c1308459300_i32, %c357898948_i32 : i32
        %274 = arith.subi %true_24, %53 : i1
        %275 = arith.shrui %c1308459300_i32, %c777931563_i32 : i32
        %276 = vector.splat %true_21 : vector<6xi1>
        %alloca_43 = memref.alloca() : memref<3x6x3xi1>
        %277 = vector.transpose %89, [0] : vector<6xi16> to vector<6xi16>
        %278 = index.castu %c8 : index to i32
        %279 = index.floordivs %c6, %c15
        %280 = math.cos %8 : tensor<3x6x3xf32>
        %281 = math.round %11 : tensor<3x6x3xf16>
        %282 = math.exp2 %8 : tensor<3x6x3xf32>
        %283 = vector.extract %20[1] : vector<6xi1>
        %284 = arith.addi %c1308459300_i32, %c357898948_i32 : i32
        %285 = bufferization.to_tensor %alloc_9 : memref<3x6x3xi32>
        %286 = math.cttz %collapsed_41 : tensor<18x3xi64>
        %287 = vector.transpose %25, [0] : vector<6xi32> to vector<6xi32>
        %288 = arith.remf %cst_0, %cst : f16
        %289 = arith.addi %c-16730_i16, %c-16730_i16 : i16
        %290 = math.powf %69, %cst_1 : f32
        %291 = math.copysign %cst_0, %cst_2 : f16
        %alloc_44 = memref.alloc() : memref<3x6x3xf16>
        memref.tensor_store %11, %alloc_44 : memref<3x6x3xf16>
        %292 = vector.multi_reduction <minui>, %89, %c-32155_i16 [0] : vector<6xi16> to i16
        %293 = vector.transpose %20, [0] : vector<6xi1> to vector<6xi1>
        linalg.yield %c226398037_i64 : i64
      } -> tensor<3x6x3xi64>
      %260 = vector.extract %89[0] : vector<6xi16>
      %261 = index.add %24, %24
      %262 = arith.subi %c659290833_i64, %c1506343954_i64 : i64
      %263 = affine.load %alloc_8[%c13] : memref<6xf32>
      %264 = index.castu %c1652927298_i64 : i64 to index
      %265 = math.log %11 : tensor<3x6x3xf16>
    } else {
      %258 = math.floor %3 : tensor<3x6x3xf32>
      %259 = arith.divui %c331756917_i32, %90 : i32
      %260 = vector.gather %alloc_6[%c13] [%25], %20, %20 : memref<6xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
      %splat_41 = tensor.splat %c659290833_i64 : tensor<3xi64>
      %261 = arith.cmpi eq, %c331756917_i32, %c1308459300_i32 : i32
      %262 = math.fpowi %8, %6 : tensor<3x6x3xf32>, tensor<3x6x3xi32>
      %263 = index.floordivs %24, %c14
      %264 = math.round %cst_1 : f32
    }
    memref.copy %alloc_14, %alloc_4 : memref<6xi32> to memref<6xi32>
    %91 = vector.broadcast %c-32155_i16 : i16 to vector<i16>
    %92 = vector.transfer_write %91, %2[%63] : vector<i16>, tensor<3xi16>
    %93 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %25, %25, %c1665205524_i32 : vector<6xi32>, vector<6xi32> into i32
    %94 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %53 : vector<6xi1>, vector<6xi1> into i1
    %95 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 2 + 1)>(%c5, %c7)
    %96 = vector.reduction <minsi>, %88 : vector<6xi16> into i16
    %97 = arith.maxsi %c1308459300_i32, %c777931563_i32 : i32
    %splat_26 = tensor.splat %cst_2 : tensor<6xf16>
    %98 = arith.ceildivsi %c226398037_i64, %c1506343954_i64 : i64
    %expanded = tensor.expand_shape %5 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
    %99 = affine.max affine_map<(d0, d1) -> (-(-d0 + 64))>(%27, %71)
    %100 = math.tanh %8 : tensor<3x6x3xf32>
    %101 = memref.atomic_rmw maxf %cst_1, %alloc_13[%c4] : (f32, memref<6xf32>) -> f32
    %102 = tensor.empty() : tensor<3x6x3xi32>
    %103 = math.tanh %69 : f32
    %104 = tensor.empty() : tensor<6xf16>
    %105 = bufferization.to_memref %11 : memref<3x6x3xf16>
    %106 = arith.minui %c1665205524_i32, %c331756917_i32 : i32
    %splat_27 = tensor.splat %cst_1 : tensor<3x6x3xf32>
    %alloc_28 = memref.alloc() : memref<6xi64>
    memref.tensor_store %66, %alloc_28 : memref<6xi64>
    %107 = affine.load %alloc_15[%c1] : memref<3xi64>
    %108 = arith.minui %90, %c777931563_i32 : i32
    %109 = arith.negf %cst_2 : f16
    %110 = arith.divui %c1308459300_i32, %c1665205524_i32 : i32
    vector.print %88 : vector<6xi16>
    memref.assume_alignment %alloc_3, 8 : memref<6xf16>
    %111 = index.floordivs %c6, %c0
    %112 = vector.flat_transpose %68 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
    %113 = affine.load %alloc_7[%c8, %c2, %c12] : memref<3x6x3xf32>
    %114 = arith.remsi %c1308459300_i32, %c1665205524_i32 : i32
    %115 = arith.ori %true_24, %true_21 : i1
    memref.assume_alignment %alloc_14, 8 : memref<6xi32>
    %116 = arith.mulf %cst_1, %113 : f32
    %117 = arith.divf %cst_2, %cst_2 : f16
    %118 = tensor.empty() : tensor<3x6xf32>
    %119 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %118, %alloc_13 : memref<3xf32>, tensor<3x6xf32>, memref<6xf32>) outs(%8 : tensor<3x6x3xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %out: f32):
      %258 = affine.max affine_map<(d0) -> (7)>(%c9)
      %259 = index.maxu %51, %c8
      %260 = vector.multi_reduction <add>, %20, %53 [0] : vector<6xi1> to i1
      %261 = math.round %out : f32
      %262 = vector.broadcast %cst_0 : f16 to vector<3xf16>
      %263 = vector.broadcast %true_24 : i1 to vector<3xi1>
      %264 = vector.broadcast %90 : i32 to vector<3xi32>
      %265 = vector.gather %alloc_3[%c8] [%264], %263, %262 : memref<6xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%73 : tensor<3x6x3xi64>) {
      ^bb0(%out_48: i64):
        %290 = math.ctpop %14 : tensor<6xi32>
        %291 = arith.ori %90, %c357898948_i32 : i32
        %292 = math.ctlz %260 : i1
        %alloc_49 = memref.alloc() : memref<6xi64>
        %293 = vector.broadcast %c1652927298_i64 : i64 to vector<3x6x3xi64>
        %294 = vector.broadcast %53 : i1 to vector<3x6x3xi1>
        %295 = vector.broadcast %90 : i32 to vector<3x6x3xi32>
        %296 = vector.gather %alloc_49[%c13] [%295], %294, %293 : memref<6xi64>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xi64> into vector<3x6x3xi64>
        %297 = arith.divf %113, %in_41 : f32
        %298 = vector.flat_transpose %263 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %299 = index.ceildivs %75, %83
        %300 = vector.maskedload %alloc_3[%c2], %298, %262 : memref<6xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %301 = arith.divui %c-32155_i16, %c-32155_i16 : i16
        %302 = arith.remf %cst_0, %cst_2 : f16
        %303 = arith.minf %113, %in_41 : f32
        %304 = vector.shuffle %89, %88 [1, 3, 5, 9, 10] : vector<6xi16>, vector<6xi16>
        %305 = arith.divui %c1308459300_i32, %c357898948_i32 : i32
        %306 = math.tanh %out : f32
        %extracted = tensor.extract %66[%c2] : tensor<6xi64>
        %307 = index.casts %c777931563_i32 : i32 to index
        %308 = math.expm1 %in_42 : f32
        %309 = arith.floordivsi %true_24, %true_24 : i1
        %expanded_50 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<3x6x3xi1> into tensor<3x6x3x1xi1>
        %310 = arith.remf %cst_2, %cst : f16
        %311 = affine.max affine_map<(d0) -> (((d0 * 3) mod 8) ceildiv 128)>(%c8)
        %312 = bufferization.to_tensor %alloc_11 : memref<6xf16>
        %313 = affine.load %alloc_18[%c13, %c15, %c3] : memref<3x3x6xf32>
        %314 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %88, %88, %c-16730_i16 : vector<6xi16>, vector<6xi16> into i16
        %315 = affine.load %alloc_10[%c8, %c6, %c1] : memref<3x6x3xi16>
        %316 = index.sizeof
        %317 = math.cos %in_41 : f32
        vector.print %293 : vector<3x6x3xi64>
        %318 = math.ipowi %c331756917_i32, %c777931563_i32 : i32
        %319 = math.log10 %cst : f16
        %320 = index.maxs %111, %48
        %321 = tensor.empty() : tensor<6xi32>
        linalg.yield %c226398037_i64 : i64
      } -> tensor<3x6x3xi64>
      %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d0 * -16, d3 - (d2 + d0 - 64))>(%c9, %c13, %63, %75)
      %268 = affine.max affine_map<(d0, d1, d2) -> (d2 + 16)>(%c2, %c11, %111)
      %269 = math.ceil %in : f32
      %270 = index.floordivs %c1, %c13
      %271 = vector.load %105[%c2, %c4, %c2] : memref<3x6x3xf16>, vector<3xf16>
      %272 = math.absf %in_41 : f32
      %273 = math.powf %11, %11 : tensor<3x6x3xf16>
      %274 = vector.broadcast %c1308459300_i32 : i32 to vector<6xi32>
      %275 = math.cttz %6 : tensor<3x6x3xi32>
      %alloca_43 = memref.alloca() : memref<3xi64>
      %276 = index.castu %c1652927298_i64 : i64 to index
      %277 = affine.max affine_map<(d0) -> (d0 floordiv 2 - 64, 0, d0 * 2, d0 - 128)>(%75)
      %278 = vector.splat %c15 : vector<3x6x3xindex>
      %279 = math.cttz %14 : tensor<6xi32>
      %280 = vector.broadcast %c-16730_i16 : i16 to vector<7xi16>
      %281 = vector.broadcast %true_21 : i1 to vector<7xi1>
      %282 = vector.maskedload %alloc_12[%c2], %281, %280 : memref<6xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %283 = vector.matrix_multiply %280, %282 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
      %collapsed_44 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<3x6x3xi16> into tensor<18x3xi16>
      %splat_45 = tensor.splat %cst_0 : tensor<6xf16>
      %splat_46 = tensor.splat %cst_2 : tensor<3x6x3xf16>
      %284 = affine.min affine_map<(d0, d1, d2) -> (d2 - 63)>(%c9, %c11, %c5)
      %285 = vector.multi_reduction <add>, %112, %in_41 [0] : vector<6xf32> to f32
      %286 = index.divu %75, %75
      %287 = vector.splat %c331756917_i32 : vector<3x6x3xi32>
      %288 = arith.divf %cst_2, %cst_0 : f16
      %generated_47 = tensor.generate %24 {
      ^bb0(%arg3: index):
        %290 = math.cos %8 : tensor<3x6x3xf32>
        %291 = index.floordivs %286, %c3
        %292 = math.fpowi %cst, %c1324859428_i32 : f16, i32
        %293 = math.exp2 %285 : f32
        tensor.yield %c226398037_i64 : i64
      } : tensor<?xi64>
      %289 = vector.shuffle %271, %265 [1, 2, 4] : vector<3xf16>, vector<3xf16>
      linalg.yield %in_41 : f32
    } -> tensor<3x6x3xf32>
    %120 = affine.max affine_map<(d0, d1) -> ((d1 mod 4) floordiv 32, d0, 0)>(%c1, %c13)
    %121 = arith.remf %cst, %cst_0 : f16
    %122 = math.powf %104, %splat_26 : tensor<6xf16>
    %123 = arith.addf %cst_2, %cst_2 : f16
    %124 = vector.shuffle %25, %25 [2, 6, 10] : vector<6xi32>, vector<6xi32>
    %125 = vector.extract %112[5] : vector<6xf32>
    %126 = math.floor %splat_27 : tensor<3x6x3xf32>
    %collapsed_29 = tensor.collapse_shape %expanded [[0, 1]] : tensor<6x1xi1> into tensor<6xi1>
    %127 = math.exp2 %cst_2 : f16
    %128 = math.floor %cst_1 : f32
    %129 = vector.broadcast %c-16730_i16 : i16 to vector<3x6x3xi16>
    %130 = vector.broadcast %true_21 : i1 to vector<3x6x3xi1>
    %131 = vector.broadcast %90 : i32 to vector<3x6x3xi32>
    %132 = vector.gather %4[%111] [%131], %130, %129 : tensor<6xi16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xi16> into vector<3x6x3xi16>
    %133 = arith.negf %69 : f32
    %alloca_30 = memref.alloca() : memref<6xf16>
    %134 = arith.remf %cst_1, %113 : f32
    %135 = vector.shuffle %132, %132 [2, 5] : vector<3x6x3xi16>, vector<3x6x3xi16>
    %136 = bufferization.clone %alloc_11 : memref<6xf16> to memref<6xf16>
    %137 = arith.divf %cst, %cst_2 : f16
    vector.print %25 : vector<6xi32>
    %138 = math.tanh %8 : tensor<3x6x3xf32>
    %139 = math.atan %cst_0 : f16
    %140 = math.round %3 : tensor<3x6x3xf32>
    %141 = index.casts %c13 : index to i32
    %142 = math.exp2 %11 : tensor<3x6x3xf16>
    %143 = vector.create_mask %95 : vector<6xi1>
    %144 = arith.divsi %c659290833_i64, %c226398037_i64 : i64
    %alloc_31 = memref.alloc() : memref<3xi64>
    memref.copy %alloc_15, %alloc_31 : memref<3xi64> to memref<3xi64>
    %145 = vector.insert %53, %20 [0] : i1 into vector<6xi1>
    %146 = affine.for %arg3 = 0 to 116 iter_args(%arg4 = %53) -> (i1) {
      affine.yield %53 : i1
    }
    %147 = arith.addi %c226398037_i64, %c1652927298_i64 : i64
    %148 = math.cttz %7 : tensor<3x6x3xi1>
    %149 = arith.minui %c1506343954_i64, %c226398037_i64 : i64
    %150 = arith.ceildivsi %c331756917_i32, %c1665205524_i32 : i32
    %151 = math.expm1 %cst_1 : f32
    %152 = index.mul %c11, %71
    %153 = arith.minui %c1324859428_i32, %c331756917_i32 : i32
    %154 = math.round %cst_1 : f32
    %155 = math.exp2 %cst_0 : f16
    %156 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 16, -((d1 - d0) floordiv 32), d1)>(%c6, %c0, %c1, %c4)
    %splat_32 = tensor.splat %cst : tensor<6xf16>
    %157 = arith.minui %c1652927298_i64, %c659290833_i64 : i64
    %158 = math.ctlz %21 : tensor<6xi32>
    %159 = index.add %83, %c5
    %160 = vector.extract %88[0] : vector<6xi16>
    scf.execute_region {
      %258 = math.fpowi %69, %c357898948_i32 : f32, i32
      %259 = arith.remf %cst_2, %cst_2 : f16
      %260 = math.absf %3 : tensor<3x6x3xf32>
      %261 = math.cttz %c1324859428_i32 : i32
      %262 = bufferization.to_memref %0 : memref<3xi16>
      %263 = math.log1p %cst_1 : f32
      %264 = vector.shuffle %68, %68 [0, 4, 5, 6, 9] : vector<6xf32>, vector<6xf32>
      %265 = math.log1p %11 : tensor<3x6x3xf16>
      %266 = arith.shrui %c-16730_i16, %c-16730_i16 : i16
      %267 = arith.minui %true_21, %true_24 : i1
      %cast_41 = tensor.cast %2 : tensor<3xi16> to tensor<?xi16>
      %268 = arith.shrsi %c-16730_i16, %c-32155_i16 : i16
      %269 = memref.load %alloc_6[%c4] : memref<6xi1>
      %270 = index.sizeof
      %271 = vector.splat %53 : vector<6xi1>
      %272 = tensor.empty() : tensor<3xf32>
      scf.yield
    }
    %161 = vector.shuffle %89, %89 [1, 2, 4, 5, 6, 7, 11] : vector<6xi16>, vector<6xi16>
    %162 = math.exp %3 : tensor<3x6x3xf32>
    %163 = arith.minf %69, %113 : f32
    %164 = index.mul %48, %95
    %165 = math.ctlz %c226398037_i64 : i64
    %166 = math.powf %69, %cst_1 : f32
    %167 = index.sub %51, %c12
    %168 = math.round %8 : tensor<3x6x3xf32>
    %169 = affine.max affine_map<(d0, d1, d2) -> (d0, d2 ceildiv 128, 1, (d0 - 16) ceildiv 32)>(%51, %159, %c13)
    %170 = tensor.empty() : tensor<3x3xi64>
    %171 = linalg.matmul ins(%18, %18 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%170 : tensor<3x3xi64>) -> tensor<3x3xi64>
    %172 = vector.create_mask %111, %c8, %159 : vector<3x6x3xi1>
    %173 = arith.ceildivsi %c1506343954_i64, %c226398037_i64 : i64
    %174 = vector.create_mask %c13 : vector<6xi1>
    %175 = arith.remf %cst_1, %69 : f32
    scf.if %true_21 {
      %alloc_41 = memref.alloc() : memref<3xi64>
      memref.copy %alloc_15, %alloc_41 : memref<3xi64> to memref<3xi64>
      %258 = index.floordivs %167, %152
      %259 = arith.floordivsi %53, %53 : i1
      %260 = scf.if %true_24 -> (memref<6xi1>) {
        %264 = arith.remsi %90, %90 : i32
        %265 = index.floordivs %27, %c1
        vector.print %174 : vector<6xi1>
        %266 = arith.minui %c-32155_i16, %c-32155_i16 : i16
        %267 = vector.shuffle %172, %172 [0, 2, 5] : vector<3x6x3xi1>, vector<3x6x3xi1>
        %268 = bufferization.to_memref %15 : memref<3x6x3xi64>
        %269 = vector.transpose %174, [0] : vector<6xi1> to vector<6xi1>
        %270 = vector.shuffle %88, %88 [1, 2, 7, 11] : vector<6xi16>, vector<6xi16>
        scf.yield %alloc_6 : memref<6xi1>
      } else {
        %expanded_42 = tensor.expand_shape %9 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
        %264 = arith.remf %69, %113 : f32
        %splat_43 = tensor.splat %c1324859428_i32 : tensor<3x6x3xi32>
        %265 = vector.shuffle %91, %91 [0, 1] : vector<i16>, vector<i16>
        %alloca_44 = memref.alloca() : memref<6xi1>
        %alloc_45 = memref.alloc() : memref<3x6x3xi64>
        memref.tensor_store %15, %alloc_45 : memref<3x6x3xi64>
        %266 = math.log2 %8 : tensor<3x6x3xf32>
        %267 = index.maxu %167, %75
        scf.yield %alloc_6 : memref<6xi1>
      }
      %261 = arith.minf %113, %113 : f32
      %262 = vector.extract %129[0, 0] : vector<3x6x3xi16>
      memref.assume_alignment %alloc_8, 4 : memref<6xf32>
      %263 = arith.subi %c1652927298_i64, %c1652927298_i64 : i64
    } else {
      %258 = math.tan %splat_27 : tensor<3x6x3xf32>
      %259 = index.castu %c15 : index to i32
      %260 = math.floor %104 : tensor<6xf16>
      %261 = math.round %69 : f32
      %262 = arith.remf %cst_2, %cst : f16
      %263 = math.atan %splat_26 : tensor<6xf16>
      %264 = vector.shuffle %25, %25 [2, 4, 5, 6] : vector<6xi32>, vector<6xi32>
      %265 = scf.while (%arg3 = %c1665205524_i32) : (i32) -> i32 {
        %266 = math.roundeven %11 : tensor<3x6x3xf16>
        %267 = index.mul %167, %c0
        %268 = index.maxs %46, %c6
        %269 = math.absf %cst_2 : f16
        %270 = arith.subi %c1308459300_i32, %90 : i32
        %271 = affine.max affine_map<(d0) -> (d0, (d0 floordiv 32) * 64 - 62, 0)>(%156)
        %272 = index.divu %271, %c11
        %273 = math.cttz %arg3 : i32
        scf.condition(%true_21) %c1308459300_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %splat_41 = tensor.splat %53 : tensor<6xi1>
        %266 = arith.addi %c226398037_i64, %107 : i64
        %267 = vector.load %alloc_6[%c4] : memref<6xi1>, vector<3x6x3xi1>
        %splat_42 = tensor.splat %c357898948_i32 : tensor<3xi32>
        %268 = math.round %104 : tensor<6xf16>
        %269 = math.floor %113 : f32
        %270 = arith.xori %arg3, %arg3 : i32
        %splat_43 = tensor.splat %c1308459300_i32 : tensor<6xi32>
        %true_44 = arith.constant true
        %false = arith.constant false
        %271 = vector.transfer_read %7[%83, %51, %c8], %false : tensor<3x6x3xi1>, vector<i1>
        %272 = index.mul %c15, %c8
        %273 = arith.shli %c1665205524_i32, %c1324859428_i32 : i32
        %274 = vector.broadcast %cst_2 : f16 to vector<3xf16>
        %275 = vector.broadcast %true_44 : i1 to vector<3xi1>
        %276 = vector.maskedload %136[%c0], %275, %274 : memref<6xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %277 = arith.remf %cst_1, %69 : f32
        %278 = arith.addf %cst_1, %cst_1 : f32
        %279 = arith.remf %113, %69 : f32
        %280 = index.sub %272, %159
        scf.yield %c331756917_i32 : i32
      }
    }
    %generated = tensor.generate %71 {
    ^bb0(%arg3: index):
      %258 = arith.subi %c-32155_i16, %c-16730_i16 : i16
      %259 = index.maxu %48, %c15
      %260 = arith.mulf %69, %113 : f32
      scf.if %53 {
        %261 = math.log1p %104 : tensor<6xf16>
        %262 = math.absf %69 : f32
        %263 = vector.reduction <maxf>, %68 : vector<6xf32> into f32
        %264 = bufferization.clone %alloc : memref<6xi16> to memref<6xi16>
        %265 = arith.shrsi %c331756917_i32, %c1324859428_i32 : i32
        %266 = arith.divui %true_24, %53 : i1
        %267 = index.floordivs %c0, %167
        memref.assume_alignment %alloc_14, 1 : memref<6xi32>
      } else {
        vector.print %89 : vector<6xi16>
        %261 = index.castu %c1506343954_i64 : i64 to index
        %262 = arith.remui %c1652927298_i64, %c226398037_i64 : i64
        %263 = arith.divf %69, %69 : f32
        %264 = index.add %75, %156
        %265 = arith.maxui %c-32155_i16, %c-32155_i16 : i16
        %266 = math.floor %69 : f32
        %267 = arith.ceildivsi %c331756917_i32, %c331756917_i32 : i32
      }
      tensor.yield %c1308459300_i32 : i32
    } : tensor<?xi32>
    %176 = math.log10 %splat_27 : tensor<3x6x3xf32>
    %177 = arith.cmpi sgt, %c1652927298_i64, %c659290833_i64 : i64
    %178 = arith.shli %true_21, %true_21 : i1
    %179 = math.exp2 %cst_1 : f32
    %true_33 = arith.constant true
    %180 = vector.transfer_read %7[%c11, %83, %164], %true_33 : tensor<3x6x3xi1>, vector<i1>
    %181 = affine.if affine_set<(d0) : (d0 * 4 >= 0, (d0 * 4) floordiv 16 >= 0)>(%c3) -> memref<6xi64> {
      %258 = arith.cmpi sle, %c-32155_i16, %c-32155_i16 : i16
      %259 = math.round %splat_26 : tensor<6xf16>
      %c919602656_i32 = arith.constant 919602656 : i32
      %260 = math.tanh %cst_2 : f16
      %261 = math.cos %8 : tensor<3x6x3xf32>
      %262 = index.divu %152, %c6
      %263 = vector.extract_strided_slice %89 {offsets = [3], sizes = [2], strides = [1]} : vector<6xi16> to vector<2xi16>
      %264 = affine.load %alloc_7[%c0, %c11, %c12] : memref<3x6x3xf32>
      %alloc_41 = memref.alloc() : memref<6xi64>
      affine.yield %alloc_41 : memref<6xi64>
    } else {
      %258 = arith.remf %cst_1, %69 : f32
      %259 = vector.load %alloc_13[%c0] : memref<6xf32>, vector<6xf32>
      %260 = affine.for %arg3 = 0 to 96 iter_args(%arg4 = %10) -> (tensor<3xi1>) {
        affine.yield %arg4 : tensor<3xi1>
      }
      %261 = math.log2 %8 : tensor<3x6x3xf32>
      %262 = vector.reduction <mul>, %68 : vector<6xf32> into f32
      %263 = math.log10 %104 : tensor<6xf16>
      %264 = index.sizeof
      %265 = vector.broadcast %c1665205524_i32 : i32 to vector<6x6xi32>
      %266 = vector.outerproduct %25, %25, %265 {kind = #vector.kind<minui>} : vector<6xi32>, vector<6xi32>
      %alloc_41 = memref.alloc() : memref<6xi64>
      affine.yield %alloc_41 : memref<6xi64>
    }
    %182 = vector.create_mask %c12 : vector<6xi1>
    %183 = math.roundeven %cst : f16
    %184 = bufferization.to_tensor %136 : memref<6xf16>
    %185 = vector.broadcast %69 : f32 to vector<6xf32>
    %186 = vector.fma %185, %112, %185 : vector<6xf32>
    %187 = math.powf %splat_27, %8 : tensor<3x6x3xf32>
    %188 = index.floordivs %48, %156
    %189 = math.copysign %splat_27, %8 : tensor<3x6x3xf32>
    %190 = math.ceil %104 : tensor<6xf16>
    %alloca_34 = memref.alloca() : memref<6xi1>
    %191 = arith.minui %53, %true_21 : i1
    %192 = vector.broadcast %c-16730_i16 : i16 to vector<3x3xi16>
    %193 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %88, %132, %192 : vector<6xi16>, vector<3x6x3xi16> into vector<3x3xi16>
    %194 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - d1 + d0 + 1, (d1 - d0) floordiv 128, d3 - d1 + d0 + 1, d0 + 1)>(%24, %24, %c13, %159)
    %195 = arith.andi %c1506343954_i64, %c659290833_i64 : i64
    %196 = tensor.empty() : tensor<6xi1>
    %197 = vector.flat_transpose %112 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
    %from_elements_35 = tensor.from_elements %53, %true_33, %true_21, %true_21, %true_33, %true_21, %true_33, %true_21, %53, %53, %true_33, %true_21, %true_24, %true_33, %true_33, %true_24, %true_24, %true_33, %53, %53, %true_33, %true_21, %true_33, %true_33, %53, %true_24, %true_24, %true_24, %true_21, %53, %true_21, %53, %53, %53, %true_33, %true_33, %true_33, %true_21, %53, %true_21, %true_21, %true_33, %true_21, %true_33, %true_24, %true_21, %true_33, %true_21, %53, %true_21, %true_21, %true_24, %true_33, %true_33 : tensor<3x6x3xi1>
    %198 = vector.extract %143[3] : vector<6xi1>
    %199 = arith.ceildivsi %c1324859428_i32, %c777931563_i32 : i32
    %200 = math.expm1 %11 : tensor<3x6x3xf16>
    %201 = math.log2 %8 : tensor<3x6x3xf32>
    %202 = vector.shuffle %197, %185 [1, 5, 7, 8, 9, 11] : vector<6xf32>, vector<6xf32>
    %203 = arith.minf %cst_1, %113 : f32
    %204 = math.absf %8 : tensor<3x6x3xf32>
    %205 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 floordiv 16) * 32 == 0, d0 == 0, -d0 >= 0)>(%c6, %c12, %c0, %c15) -> memref<3x6x3xf32> {
      %258 = bufferization.clone %alloc_7 : memref<3x6x3xf32> to memref<3x6x3xf32>
      %259 = math.cttz %102 : tensor<3x6x3xi32>
      %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 2, d3, ((d2 + 2) ceildiv 32) ceildiv 4)>(%c2, %46, %c7, %46)
      %261 = index.divu %95, %c10
      %262 = tensor.empty() : tensor<3x6xi16>
      %263 = tensor.empty() : tensor<18x6xi16>
      %264 = linalg.matmul ins(%collapsed_23, %262 : tensor<18x3xi16>, tensor<3x6xi16>) outs(%263 : tensor<18x6xi16>) -> tensor<18x6xi16>
      %265 = math.log2 %3 : tensor<3x6x3xf32>
      %266 = math.powf %184, %splat_26 : tensor<6xf16>
      %267 = memref.atomic_rmw mins %c357898948_i32, %alloc_14[%c0] : (i32, memref<6xi32>) -> i32
      affine.yield %alloc_7 : memref<3x6x3xf32>
    } else {
      %258 = arith.ceildivsi %c331756917_i32, %c1324859428_i32 : i32
      %259 = bufferization.to_memref %2 : memref<3xi16>
      %260 = index.mul %99, %63
      %261 = index.castu %53 : i1 to index
      %splat_41 = tensor.splat %true_21 : tensor<6xi1>
      %262 = index.ceildivs %188, %c5
      %263 = math.cttz %87 : tensor<3x6x3xi16>
      scf.execute_region {
        %264 = vector.shuffle %143, %20 [0, 1, 3, 4, 10, 11] : vector<6xi1>, vector<6xi1>
        %265 = vector.broadcast %69 : f32 to vector<6x6xf32>
        vector.transfer_write %265, %alloc_7[%c7, %c9, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x6xf32>, memref<3x6x3xf32>
        %266 = math.ctlz %21 : tensor<6xi32>
        %267 = math.cos %3 : tensor<3x6x3xf32>
        %268 = vector.create_mask %75 : vector<6xi1>
        %269 = math.atan %11 : tensor<3x6x3xf16>
        %270 = index.floordivs %51, %83
        %271 = math.floor %cst_2 : f16
        %272 = arith.cmpi sle, %true_21, %true_33 : i1
        %273 = math.atan %184 : tensor<6xf16>
        %274 = tensor.empty() : tensor<3x7xi16>
        %275 = tensor.empty() : tensor<18x7xi16>
        %276 = linalg.matmul ins(%collapsed_23, %274 : tensor<18x3xi16>, tensor<3x7xi16>) outs(%275 : tensor<18x7xi16>) -> tensor<18x7xi16>
        %277 = vector.maskedload %alloc_8[%c0], %182, %197 : memref<6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %278 = math.round %113 : f32
        %279 = arith.shli %c-32155_i16, %c-16730_i16 : i16
        %280 = affine.load %alloc_6[%c12] : memref<6xi1>
        %281 = vector.broadcast %c-16730_i16 : i16 to vector<3x3xi16>
        %dest, %accumulated_value = vector.scan <or>, %129, %281 {inclusive = false, reduction_dim = 1 : i64} : vector<3x6x3xi16>, vector<3x3xi16>
        scf.yield
      }
      affine.yield %alloc_7 : memref<3x6x3xf32>
    }
    %206 = math.absf %8 : tensor<3x6x3xf32>
    %generated_36 = tensor.generate %152 {
    ^bb0(%arg3: index):
      %258 = math.log %cst : f16
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_7 : memref<3x6x3xf32>) outs(%3 : tensor<3x6x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %262 = arith.maxsi %c1665205524_i32, %c1324859428_i32 : i32
        %263 = arith.remui %90, %90 : i32
        %264 = arith.divf %cst_0, %cst : f16
        %265 = index.floordivs %83, %c7
        %266 = bufferization.to_memref %generated : memref<?xi32>
        %267 = math.ceil %184 : tensor<6xf16>
        %268 = vector.reduction <minf>, %186 : vector<6xf32> into f32
        %269 = arith.maxsi %c331756917_i32, %c1308459300_i32 : i32
        memref.copy %alloc_11, %136 : memref<6xf16> to memref<6xf16>
        %collapsed_41 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<3x6x3xi64> into tensor<18x3xi64>
        %270 = math.atan %splat_32 : tensor<6xf16>
        %271 = arith.shrui %c1506343954_i64, %c1652927298_i64 : i64
        %272 = index.castu %194 : index to i32
        %273 = arith.divsi %c1652927298_i64, %c226398037_i64 : i64
        %c1_i32 = arith.constant 1 : i32
        %274 = vector.transfer_read %57[%c1, %c10, %c2], %c1_i32 : memref<3x6x3xi32>, vector<3xi32>
        %275 = arith.minf %cst_2, %cst_2 : f16
        %276 = math.powf %104, %184 : tensor<6xf16>
        %277 = arith.divui %c-32155_i16, %c-32155_i16 : i16
        %278 = index.sizeof
        %rank = tensor.rank %11 : tensor<3x6x3xf16>
        %279 = vector.extract %131[2] : vector<3x6x3xi32>
        %280 = math.cttz %10 : tensor<3xi1>
        %281 = memref.load %alloc_10[%c0, %c4, %c2] : memref<3x6x3xi16>
        %282 = math.log1p %3 : tensor<3x6x3xf32>
        %283 = math.expm1 %3 : tensor<3x6x3xf32>
        %284 = vector.broadcast %true_24 : i1 to vector<6xi1>
        %splat_42 = tensor.splat %c226398037_i64 : tensor<3xi64>
        %285 = math.atan %8 : tensor<3x6x3xf32>
        %286 = arith.remsi %c226398037_i64, %c1652927298_i64 : i64
        %287 = math.exp2 %splat_27 : tensor<3x6x3xf32>
        %288 = index.floordivs %c2, %167
        %289 = arith.floordivsi %c1324859428_i32, %90 : i32
        linalg.yield %out : f32
      } -> tensor<3x6x3xf32>
      %260 = math.ctpop %14 : tensor<6xi32>
      %261 = arith.shli %c1652927298_i64, %c1506343954_i64 : i64
      tensor.yield %113 : f32
    } : tensor<?xf32>
    %207 = affine.if affine_set<(d0) : (d0 + (d0 - 64) ceildiv 64 - 64 == 0, d0 - 64 == 0)>(%c2) -> memref<6xf32> {
      %splat_41 = tensor.splat %c331756917_i32 : tensor<3xi32>
      %258 = index.floordivs %159, %c8
      %259 = vector.create_mask %120 : vector<3xi1>
      %260 = arith.remsi %true_33, %53 : i1
      %261 = vector.maskedload %alloc_17[%c2], %182, %112 : memref<3xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %262 = arith.ceildivsi %c1652927298_i64, %c1506343954_i64 : i64
      %263 = affine.max affine_map<(d0, d1, d2) -> (d1, -d0)>(%24, %46, %c4)
      %264 = index.maxu %46, %c2
      affine.yield %alloc_8 : memref<6xf32>
    } else {
      %258 = arith.negf %cst : f16
      %259 = arith.divui %c357898948_i32, %c1665205524_i32 : i32
      %260 = arith.remf %cst_0, %cst : f16
      %261 = arith.negf %cst_2 : f16
      %262 = arith.mulf %cst_1, %69 : f32
      %263 = index.ceildivs %46, %152
      %264 = math.fpowi %69, %c1665205524_i32 : f32, i32
      %265 = vector.gather %0[%c0] [%131], %172, %129 : tensor<3xi16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xi16> into vector<3x6x3xi16>
      affine.yield %alloc_8 : memref<6xf32>
    }
    %208 = index.mul %c3, %71
    %209 = arith.minui %c357898948_i32, %c1665205524_i32 : i32
    %210 = vector.create_mask %c9 : vector<6xi1>
    %211 = bufferization.to_tensor %alloc_16 : memref<3xi1>
    %212 = arith.negf %cst_2 : f16
    %213 = math.absi %90 : i32
    %214 = index.casts %167 : index to i32
    %215 = math.log %104 : tensor<6xf16>
    %216 = memref.load %alloc_3[%c0] : memref<6xf16>
    %217 = math.rsqrt %splat_32 : tensor<6xf16>
    %expanded_37 = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<3x6x3xi64> into tensor<3x6x3x1xi64>
    %inserted = tensor.insert %c-16730_i16 into %0[%c2] : tensor<3xi16>
    %218 = affine.max affine_map<(d0) -> (d0)>(%71)
    %219 = index.divu %208, %159
    %220 = arith.shli %90, %c1665205524_i32 : i32
    %221 = index.floordivs %c11, %c14
    %222 = tensor.empty() : tensor<3x6x3xi32>
    %223 = vector.broadcast %cst_2 : f16 to vector<6xf16>
    %224 = vector.gather %alloc_3[%c8] [%25], %210, %223 : memref<6xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %225 = arith.minf %69, %69 : f32
    %226 = vector.extract %174[1] : vector<6xi1>
    %227 = vector.gather %0[%c1] [%131], %172, %132 : tensor<3xi16>, vector<3x6x3xi32>, vector<3x6x3xi1>, vector<3x6x3xi16> into vector<3x6x3xi16>
    %228 = math.atan %8 : tensor<3x6x3xf32>
    %229 = math.floor %splat_32 : tensor<6xf16>
    %230 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0)>(%c5, %c12, %c11, %c14) -> i64 {
      %258 = vector.multi_reduction <minsi>, %20, %174 [] : vector<6xi1> to vector<6xi1>
      %259 = vector.create_mask %27 : vector<6xi1>
      %260 = memref.load %57[%c1, %c0, %c0] : memref<3x6x3xi32>
      %261 = arith.minf %cst_2, %cst : f16
      %alloca_41 = memref.alloca() : memref<3x6x3xf32>
      %262 = tensor.empty() : tensor<6x3xi16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %262 : tensor<3xi16>, tensor<6x3xi16>) outs(%1 : tensor<3x6x3xi16>) {
      ^bb0(%in: i16, %in_42: i16, %out: i16):
        %266 = index.ceildivs %c1, %24
        %267 = index.castu %c1506343954_i64 : i64 to index
        %268 = math.cos %184 : tensor<6xf16>
        %269 = math.cttz %10 : tensor<3xi1>
        %270 = math.copysign %cst_2, %cst_0 : f16
        %271 = memref.load %alloc_17[%c0] : memref<3xf32>
        %272 = arith.minf %cst, %cst_0 : f16
        %273 = bufferization.clone %alloc_8 : memref<6xf32> to memref<6xf32>
        %274 = math.roundeven %11 : tensor<3x6x3xf16>
        %275 = index.mul %267, %c1
        %alloc_43 = memref.alloc() : memref<3x6x3xi64>
        memref.tensor_store %73, %alloc_43 : memref<3x6x3xi64>
        %alloca_44 = memref.alloca() : memref<3x6x3xi32>
        %276 = math.log2 %113 : f32
        %277 = tensor.empty() : tensor<3xf32>
        %278 = bufferization.to_tensor %alloc_5 : memref<3x6x3xi16>
        %279 = math.ceil %277 : tensor<3xf32>
        %280 = index.sizeof
        %281 = math.atan %3 : tensor<3x6x3xf32>
        %282 = math.cttz %211 : tensor<3xi1>
        %283 = math.atan %cst_1 : f32
        %284 = arith.ceildivsi %107, %c1652927298_i64 : i64
        %285 = arith.remsi %107, %c659290833_i64 : i64
        %286 = index.floordivs %152, %c9
        %287 = math.cos %11 : tensor<3x6x3xf16>
        %288 = math.round %277 : tensor<3xf32>
        %289 = math.rsqrt %3 : tensor<3x6x3xf32>
        %290 = vector.shuffle %197, %185 [0, 4, 5, 6, 8, 10, 11] : vector<6xf32>, vector<6xf32>
        vector.print %186 : vector<6xf32>
        %291 = arith.minf %69, %113 : f32
        %292 = index.castu %c1506343954_i64 : i64 to index
        %293 = memref.load %alloc[%c5] : memref<6xi16>
        %294 = affine.min affine_map<(d0, d1, d2) -> (d1 + d0 - d1 * 64 + 8, d1, d0 + 8)>(%c14, %24, %188)
        linalg.yield %in : i16
      } -> tensor<3x6x3xi16>
      %264 = math.exp2 %104 : tensor<6xf16>
      %265 = vector.reduction <mul>, %186 : vector<6xf32> into f32
      affine.yield %c226398037_i64 : i64
    } else {
      %258 = math.round %cst : f16
      %259 = vector.broadcast %true_24 : i1 to vector<6x6xi1>
      %260 = vector.outerproduct %20, %174, %259 {kind = #vector.kind<maxsi>} : vector<6xi1>, vector<6xi1>
      %splat_41 = tensor.splat %c-16730_i16 : tensor<3x6x3xi16>
      %261 = tensor.empty(%c11) : tensor<?xi1>
      %generated_42 = tensor.generate %152 {
      ^bb0(%arg3: index):
        %265 = bufferization.to_memref %104 : memref<6xf16>
        %266 = arith.divsi %c-16730_i16, %c-16730_i16 : i16
        %267 = tensor.empty() : tensor<6xf32>
        %268 = vector.gather %267[%c1] [%25], %143, %197 : tensor<6xf32>, vector<6xi32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %269 = bufferization.to_tensor %alloc_6 : memref<6xi1>
        tensor.yield %c777931563_i32 : i32
      } : tensor<?xi32>
      %262 = arith.ceildivsi %107, %c659290833_i64 : i64
      %263 = math.log %8 : tensor<3x6x3xf32>
      %264 = vector.create_mask %75 : vector<3xi1>
      affine.yield %c226398037_i64 : i64
    }
    %231 = math.expm1 %113 : f32
    %232 = arith.shrui %c357898948_i32, %c1665205524_i32 : i32
    %233 = math.copysign %cst, %cst_0 : f16
    %234 = math.round %splat_27 : tensor<3x6x3xf32>
    %235 = vector.broadcast %true_24 : i1 to vector<6x6xi1>
    %236 = vector.outerproduct %20, %20, %235 {kind = #vector.kind<mul>} : vector<6xi1>, vector<6xi1>
    %237 = vector.splat %c0 : vector<6xindex>
    %238 = tensor.empty() : tensor<6xi32>
    %239 = arith.minui %c-32155_i16, %c-32155_i16 : i16
    %240 = math.ctpop %14 : tensor<6xi32>
    %241 = math.absf %184 : tensor<6xf16>
    %242 = index.floordivs %159, %159
    %243 = math.log %splat_27 : tensor<3x6x3xf32>
    %244 = index.mul %75, %70
    %245 = arith.ceildivsi %c659290833_i64, %c226398037_i64 : i64
    %246 = math.ctpop %73 : tensor<3x6x3xi64>
    %247 = arith.maxui %c1506343954_i64, %c226398037_i64 : i64
    %expanded_38 = tensor.expand_shape %expanded_37 [[0], [1], [2], [3, 4]] : tensor<3x6x3x1xi64> into tensor<3x6x3x1x1xi64>
    %generated_39 = tensor.generate %c0 {
    ^bb0(%arg3: index):
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_41 = arith.constant 0 : i16
      %258 = vector.transfer_read %alloc_5[%24, %c9, %c10], %c0_i16_41 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<3x6x3xi16>, vector<7xi16>
      %259 = vector.shuffle %129, %129 [0, 4] : vector<3x6x3xi16>, vector<3x6x3xi16>
      %260 = index.sizeof
      %c1_i64_42 = arith.constant 1 : i64
      %261 = vector.transfer_read %alloc_15[%arg3], %c1_i64_42 : memref<3xi64>, vector<i64>
      tensor.yield %cst : f16
    } : tensor<?xf16>
    vector.print %210 : vector<6xi1>
    %248 = math.log1p %184 : tensor<6xf16>
    %249 = math.exp %3 : tensor<3x6x3xf32>
    %250 = affine.min affine_map<(d0, d1, d2) -> (d2 * 9, d1 - 1, d1 floordiv 32, d2 * 9 + d2 floordiv 4)>(%51, %c1, %75)
    %c1_i64 = arith.constant 1 : i64
    %251 = vector.transfer_read %13[%194, %c13, %167], %c1_i64 : tensor<3x6x3xi64>, vector<i64>
    %252 = tensor.empty() : tensor<6xi1>
    %253 = linalg.copy ins(%collapsed_29 : tensor<6xi1>) outs(%252 : tensor<6xi1>) -> tensor<6xi1>
    %254 = tensor.empty() : tensor<3x3x6xf32>
    %transposed = linalg.transpose ins(%alloc_7 : memref<3x6x3xf32>) outs(%254 : tensor<3x3x6xf32>) permutation = [2, 0, 1] 
    %255 = tensor.empty() : tensor<3xi64>
    %reduced_40 = linalg.reduce ins(%18 : tensor<3x3xi64>) outs(%255 : tensor<3xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %258 = vector.broadcast %c-32155_i16 : i16 to vector<6x6xi16>
        vector.transfer_write %258, %alloc_10[%169, %48, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x6xi16>, memref<3x6x3xi16>
        memref.copy %alloc_11, %136 : memref<6xf16> to memref<6xf16>
        memref.tensor_store %184, %alloc_11 : memref<6xf16>
        %259 = affine.max affine_map<(d0, d1) -> ((d0 mod 8) floordiv 2, -(d0 - 128), d0, 0)>(%221, %152)
        %260 = memref.load %alloc_11[%c0] : memref<6xf16>
        %261 = arith.divsi %init, %init : i64
        %262 = math.exp2 %113 : f32
        %c0_i64 = arith.constant 0 : i64
        %263 = vector.transfer_read %15[%152, %188, %221], %c0_i64 : tensor<3x6x3xi64>, vector<6xi64>
        %c0_i64_41 = arith.constant 0 : i64
        linalg.yield %c0_i64_41 : i64
      }
    %256 = scf.parallel (%arg3, %arg4) = (%83, %c6) to (%188, %218) step (%c10, %c9) init (%11) -> tensor<3x6x3xf16> {
      %258 = memref.load %alloc_8[%c1] : memref<6xf32>
      bufferization.dealloc_tensor %1 : tensor<3x6x3xi16>
      %259 = vector.broadcast %cst_1 : f32 to vector<6x6xf32>
      %260 = vector.outerproduct %112, %186, %259 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
      %261 = math.expm1 %splat_32 : tensor<6xf16>
      %alloc_41 = memref.alloc() : memref<6xf32>
      %262 = arith.remsi %c-16730_i16, %c-16730_i16 : i16
      %263 = index.mul %111, %111
      %264 = math.ceil %splat_32 : tensor<6xf16>
      %265 = math.floor %3 : tensor<3x6x3xf32>
      %266 = arith.floordivsi %c1665205524_i32, %c777931563_i32 : i32
      %267 = arith.shli %c-32155_i16, %c-16730_i16 : i16
      %268 = math.log2 %8 : tensor<3x6x3xf32>
      %269 = index.maxu %167, %c12
      %270 = vector.flat_transpose %197 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %271 = affine.max affine_map<(d0, d1) -> ((d1 + 2) mod 128 + d0, d1 + 2, d1 - d0 + d1)>(%c9, %c12)
      %272 = bufferization.to_tensor %105 : memref<3x6x3xf16>
      %273 = tensor.empty() : tensor<3x6x3xf16>
      scf.reduce(%273)  : tensor<3x6x3xf16> {
      ^bb0(%arg5: tensor<3x6x3xf16>, %arg6: tensor<3x6x3xf16>):
        %274 = arith.addi %c1308459300_i32, %c331756917_i32 : i32
        %275 = bufferization.to_tensor %alloc_15 : memref<3xi64>
        %276 = arith.remf %69, %cst_1 : f32
        %277 = arith.ceildivsi %c1665205524_i32, %c331756917_i32 : i32
        %278 = arith.divf %cst, %cst_0 : f16
        %from_elements_42 = tensor.from_elements %cst, %cst_2, %cst_0, %cst, %cst_2, %cst : tensor<6xf16>
        %279 = math.ctpop %c1652927298_i64 : i64
        %280 = vector.insertelement %true_33, %210[%111 : index] : vector<6xi1>
        %281 = tensor.empty() : tensor<3x6x3xf16>
        scf.reduce.return %281 : tensor<3x6x3xf16>
      }
      scf.yield
    }
    %257 = affine.vector_load %alloc_8[%46] : memref<6xf32>, vector<7xf32>
    affine.vector_store %143, %alloc_6[%95] : memref<6xi1>, vector<6xi1>
    vector.print %20 : vector<6xi1>
    vector.print %25 : vector<6xi32>
    vector.print %68 : vector<6xf32>
    vector.print %88 : vector<6xi16>
    vector.print %89 : vector<6xi16>
    vector.print %91 : vector<i16>
    vector.print %112 : vector<6xf32>
    vector.print %129 : vector<3x6x3xi16>
    vector.print %130 : vector<3x6x3xi1>
    vector.print %131 : vector<3x6x3xi32>
    vector.print %132 : vector<3x6x3xi16>
    vector.print %143 : vector<6xi1>
    vector.print %172 : vector<3x6x3xi1>
    vector.print %174 : vector<6xi1>
    vector.print %182 : vector<6xi1>
    vector.print %185 : vector<6xf32>
    vector.print %186 : vector<6xf32>
    vector.print %197 : vector<6xf32>
    vector.print %210 : vector<6xi1>
    vector.print %223 : vector<6xf16>
    vector.print %224 : vector<6xf16>
    vector.print %227 : vector<3x6x3xi16>
    vector.print %257 : vector<7xf32>
    vector.print %c659290833_i64 : i64
    vector.print %c-16730_i16 : i16
    vector.print %c226398037_i64 : i64
    vector.print %c777931563_i32 : i32
    vector.print %c331756917_i32 : i32
    vector.print %c1324859428_i32 : i32
    vector.print %c1506343954_i64 : i64
    vector.print %c-32155_i16 : i16
    vector.print %cst : f16
    vector.print %c1652927298_i64 : i64
    vector.print %c1665205524_i32 : i32
    vector.print %c357898948_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1308459300_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %true_21 : i1
    vector.print %53 : i1
    vector.print %69 : f32
    vector.print %true_24 : i1
    vector.print %90 : i32
    vector.print %107 : i64
    vector.print %113 : f32
    vector.print %true_33 : i1
    vector.print %c1_i64 : i64
    return %113 : f32
  }
}
