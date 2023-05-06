module {
  func.func private @func1(%arg0: index) {
    %false = arith.constant false
    %cst = arith.constant 0x4D1C531B : f32
    %c-20968_i16 = arith.constant -20968 : i16
    %c676896590_i32 = arith.constant 676896590 : i32
    %cst_0 = arith.constant 1.50728064E+9 : f32
    %c1351347186_i32 = arith.constant 1351347186 : i32
    %c1602653633_i64 = arith.constant 1602653633 : i64
    %c1065208473_i64 = arith.constant 1065208473 : i64
    %c517505369_i32 = arith.constant 517505369 : i32
    %false_1 = arith.constant false
    %c15626_i16 = arith.constant 15626 : i16
    %c544520022_i32 = arith.constant 544520022 : i32
    %false_2 = arith.constant false
    %cst_3 = arith.constant 1.96317568E+9 : f32
    %cst_4 = arith.constant 1.02579763E+9 : f32
    %false_5 = arith.constant false
    %0 = tensor.empty() : tensor<2x2xi32>
    %1 = tensor.empty() : tensor<2xi64>
    %2 = tensor.empty() : tensor<2xf32>
    %3 = tensor.empty() : tensor<9x2xf32>
    %4 = tensor.empty() : tensor<2x2xf16>
    %5 = tensor.empty() : tensor<2xi1>
    %6 = tensor.empty() : tensor<2x2xi32>
    %7 = tensor.empty() : tensor<2xi32>
    %8 = tensor.empty() : tensor<9x2xi32>
    %9 = tensor.empty() : tensor<2x2xf32>
    %10 = tensor.empty() : tensor<2x2xi32>
    %11 = tensor.empty() : tensor<9x2xi16>
    %12 = tensor.empty() : tensor<9x2xi16>
    %13 = tensor.empty() : tensor<9x2xi32>
    %14 = tensor.empty() : tensor<2xf32>
    %15 = tensor.empty() : tensor<9x2xf32>
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
    %alloc = memref.alloc() : memref<9x2xf16>
    %alloc_6 = memref.alloc() : memref<2x2xi16>
    %alloc_7 = memref.alloc() : memref<9x2xf32>
    %alloc_8 = memref.alloc() : memref<9x2xi64>
    %alloc_9 = memref.alloc() : memref<2xf32>
    %alloc_10 = memref.alloc() : memref<2x2xf32>
    %alloc_11 = memref.alloc() : memref<9x2xi1>
    %alloc_12 = memref.alloc() : memref<2xf16>
    %alloc_13 = memref.alloc() : memref<2xi32>
    %alloc_14 = memref.alloc() : memref<9x2xi16>
    %alloc_15 = memref.alloc() : memref<9x2xi32>
    %alloc_16 = memref.alloc() : memref<2x2xi1>
    %alloc_17 = memref.alloc() : memref<9x2xi16>
    %alloc_18 = memref.alloc() : memref<2xi64>
    %alloc_19 = memref.alloc() : memref<2x2xi32>
    %alloc_20 = memref.alloc() : memref<9x2xf16>
    %16 = tensor.empty() : tensor<2xi32>
    %17 = linalg.copy ins(%7 : tensor<2xi32>) outs(%16 : tensor<2xi32>) -> tensor<2xi32>
    %alloc_21 = memref.alloc() : memref<2x2xi16>
    linalg.transpose ins(%alloc_6 : memref<2x2xi16>) outs(%alloc_21 : memref<2x2xi16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<2xf16>
    %reduced = linalg.reduce ins(%4 : tensor<2x2xf16>) outs(%18 : tensor<2xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %262 = arith.cmpi ule, %c15626_i16, %c-20968_i16 : i16
        %263 = index.casts %c3 : index to i32
        %264 = arith.maxf %init, %in : f16
        %alloca_42 = memref.alloca() : memref<2x2xf16>
        %265 = index.maxu %c3, %c10
        %266 = math.ctpop %c544520022_i32 : i32
        %rank_43 = tensor.rank %11 : tensor<9x2xi16>
        %267 = math.cos %14 : tensor<2xf32>
        %cst_44 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_44 : f16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c15, %c8) to (%c1, %c0) step (%c8, %c7) init (%18) -> tensor<2xf16> {
      %262 = affine.load %alloc_9[%c12] : memref<2xf32>
      %263 = bufferization.clone %alloc_21 : memref<2x2xi16> to memref<2x2xi16>
      %264 = index.floordivs %c14, %c3
      %265 = vector.broadcast %c-20968_i16 : i16 to vector<1xi16>
      %266 = vector.broadcast %c-20968_i16 : i16 to vector<1xi16>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %265, %266, %c-20968_i16 : vector<1xi16>, vector<1xi16> into i16
      %c-8854_i16 = arith.constant -8854 : i16
      %268 = arith.divui %false_1, %false_2 : i1
      %269 = math.powf %cst_3, %cst_4 : f32
      %270 = math.absf %reduced : tensor<2xf16>
      %271 = math.ctpop %c1065208473_i64 : i64
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %272 = vector.transfer_read %alloc_14[%c4, %c0], %c0_i16 : memref<9x2xi16>, vector<i16>
      %collapsed_42 = tensor.collapse_shape %12 [[0, 1]] : tensor<9x2xi16> into tensor<18xi16>
      %273 = index.mul %c4, %arg2
      %274 = index.casts %c13 : index to i32
      %275 = arith.negf %cst_4 : f32
      %alloca_43 = memref.alloca() : memref<9x2xf32>
      %276 = arith.divf %cst_3, %cst_0 : f32
      %277 = tensor.empty() : tensor<2xf16>
      scf.reduce(%277)  : tensor<2xf16> {
      ^bb0(%arg3: tensor<2xf16>, %arg4: tensor<2xf16>):
        %278 = affine.max affine_map<(d0, d1, d2) -> (d2, d2, d1 ceildiv 64 - 64)>(%c13, %c3, %c1)
        %279 = arith.remf %cst_4, %cst : f32
        %280 = vector.broadcast %c15626_i16 : i16 to vector<9xi16>
        %281 = vector.broadcast %false : i1 to vector<9xi1>
        %282 = vector.maskedload %alloc_6[%c1, %c1], %281, %280 : memref<2x2xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %collapsed_44 = tensor.collapse_shape %9 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
        %283 = tensor.empty() : tensor<2x2xi16>
        %284 = tensor.empty() : tensor<9x2xi16>
        %285 = linalg.matmul ins(%12, %283 : tensor<9x2xi16>, tensor<2x2xi16>) outs(%284 : tensor<9x2xi16>) -> tensor<9x2xi16>
        %286 = arith.remui %c1065208473_i64, %c1065208473_i64 : i64
        %287 = arith.andi %c1351347186_i32, %c544520022_i32 : i32
        %288 = index.mul %c8, %c14
        %289 = tensor.empty() : tensor<2xf16>
        scf.reduce.return %289 : tensor<2xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c6, %c12] : memref<9x2xf16>, vector<2xf16>
    affine.vector_store %20, %alloc_12[%c15] : memref<2xf16>, vector<2xf16>
    %21 = tensor.empty() : tensor<2xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%alloc_18, %21 : memref<2xi64>, tensor<2xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = memref.load %alloc_13[%c0] : memref<2xi32>
    %25 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
    %26 = arith.maxui %false_5, %false : i1
    %27 = arith.divsi %false_5, %false_5 : i1
    %28 = math.ctlz %23 : tensor<i64>
    %29 = arith.floordivsi %false_1, %false_2 : i1
    %30 = arith.subi %c15626_i16, %c15626_i16 : i16
    memref.assume_alignment %alloc_6, 8 : memref<2x2xi16>
    %31 = math.ctlz %13 : tensor<9x2xi32>
    %32 = bufferization.clone %alloc_17 : memref<9x2xi16> to memref<9x2xi16>
    %33 = math.absi %5 : tensor<2xi1>
    %34 = scf.while (%arg1 = %alloc_12) : (memref<2xf16>) -> memref<2xf16> {
      %262 = arith.remui %c1065208473_i64, %c1602653633_i64 : i64
      %263 = arith.shrui %c1351347186_i32, %c676896590_i32 : i32
      %generated_42 = tensor.generate %c1, %c10 {
      ^bb0(%arg2: index, %arg3: index):
        %268 = bufferization.to_tensor %alloc_13 : memref<2xi32>
        %269 = index.ceildivu %c13, %c8
        %270 = math.cos %18 : tensor<2xf16>
        %271 = index.castu %c6 : index to i32
        tensor.yield %c1065208473_i64 : i64
      } : tensor<?x?xi64>
      %264 = arith.remf %cst_3, %cst_4 : f32
      %265 = scf.execute_region -> index {
        %268 = arith.minf %cst_0, %cst_0 : f32
        %alloc_43 = memref.alloc() : memref<2x2xi16>
        %269 = arith.remui %false_5, %false_5 : i1
        %270 = affine.max affine_map<(d0, d1, d2) -> (-d1, (d0 + d2) mod 2 - 2)>(%c6, %c15, %c1)
        %271 = arith.maxsi %false_1, %false : i1
        %272 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
        %273 = math.powf %4, %4 : tensor<2x2xf16>
        %274 = index.add %c11, %c0
        %275 = arith.remsi %c1065208473_i64, %c1602653633_i64 : i64
        %276 = math.rsqrt %15 : tensor<9x2xf32>
        %277 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %278 = arith.remui %false_5, %false_1 : i1
        %279 = math.log1p %2 : tensor<2xf32>
        %280 = arith.minf %cst_3, %cst_0 : f32
        %281 = vector.splat %cst_4 : vector<9x2xf32>
        %extracted = tensor.extract %11[%c8, %c0] : tensor<9x2xi16>
        scf.yield %c2 : index
      }
      %266 = index.maxu %c1, %c6
      %267 = arith.andi %false_5, %false_2 : i1
      scf.index_switch %c1 
      case 1 {
        %268 = math.absf %2 : tensor<2xf32>
        %269 = arith.xori %c1602653633_i64, %c1065208473_i64 : i64
        %270 = arith.maxf %cst, %cst_3 : f32
        %271 = index.castu %c0 : index to i32
        %272 = affine.max affine_map<(d0, d1, d2) -> (-(d1 ceildiv 32), (d0 ceildiv 4) ceildiv 4, -(d0 ceildiv 4 - 1), d1 - d2)>(%c14, %c2, %c6)
        %273 = math.absf %3 : tensor<9x2xf32>
        %274 = memref.load %alloc_13[%c1] : memref<2xi32>
        vector.print %20 : vector<2xf16>
        %275 = arith.addi %false_1, %false_2 : i1
        %276 = vector.multi_reduction <minf>, %20, %25 [] : vector<2xf16> to vector<2xf16>
        %277 = index.ceildivu %c5, %c14
        %278 = math.ceil %cst_0 : f32
        %279 = index.mul %272, %c12
        %280 = math.tanh %cst : f32
        %281 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %282 = math.absf %cst_3 : f32
        scf.yield
      }
      case 2 {
        %268 = affine.load %alloc_13[%c12] : memref<2xi32>
        %269 = math.copysign %cst_4, %cst_0 : f32
        %270 = vector.splat %268 : vector<2xi32>
        %cst_43 = arith.constant 1.000000e+00 : f16
        %271 = vector.broadcast %cst_43 : f16 to vector<2x2xf16>
        %272 = vector.outerproduct %20, %20, %271 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
        %from_elements_44 = tensor.from_elements %false_5, %false_5, %false_1, %false, %false_1, %false_5, %false_2, %false_5, %false_5, %false_1, %false_1, %false_5, %false_5, %false_1, %false_5, %false, %false_1, %false : tensor<9x2xi1>
        %273 = bufferization.to_tensor %alloc_9 : memref<2xf32>
        %274 = math.round %cst_3 : f32
        %cst_45 = arith.constant 1.000000e+00 : f16
        %275 = memref.atomic_rmw mulf %cst_45, %alloc[%c4, %c1] : (f16, memref<9x2xf16>) -> f16
        %276 = arith.minui %false_5, %false : i1
        %277 = math.absf %reduced : tensor<2xf16>
        %278 = math.ctpop %0 : tensor<2x2xi32>
        %cast_46 = tensor.cast %15 : tensor<9x2xf32> to tensor<?x?xf32>
        %279 = math.round %cst_3 : f32
        %280 = math.log1p %4 : tensor<2x2xf16>
        %281 = bufferization.to_tensor %alloc_18 : memref<2xi64>
        %282 = vector.create_mask %c0, %c11 : vector<2x2xi1>
        scf.yield
      }
      case 3 {
        %cst_43 = arith.constant 1.000000e+00 : f16
        %268 = vector.insertelement %cst_43, %25[%c14 : index] : vector<2xf16>
        %269 = bufferization.to_tensor %alloc_11 : memref<9x2xi1>
        %270 = math.atan2 %cst, %cst_0 : f32
        %271 = index.sizeof
        %272 = index.mul %c9, %c0
        %273 = tensor.empty(%c3) : tensor<?xf32>
        %274 = arith.divui %c1065208473_i64, %c1602653633_i64 : i64
        %275 = math.cos %cst_43 : f16
        %276 = arith.xori %c-20968_i16, %c15626_i16 : i16
        %277 = math.atan %cst_0 : f32
        %278 = math.atan2 %cst_43, %cst_43 : f16
        %279 = arith.maxsi %false, %false_1 : i1
        %280 = arith.remf %cst_4, %cst_3 : f32
        %cast_44 = tensor.cast %2 : tensor<2xf32> to tensor<?xf32>
        %281 = vector.bitcast %20 : vector<2xf16> to vector<2xi16>
        %282 = math.ctpop %16 : tensor<2xi32>
        scf.yield
      }
      case 4 {
        %268 = math.expm1 %9 : tensor<2x2xf32>
        %collapsed_43 = tensor.collapse_shape %0 [[0, 1]] : tensor<2x2xi32> into tensor<4xi32>
        %269 = arith.remui %false, %false_5 : i1
        %270 = math.floor %cst : f32
        %271 = bufferization.clone %alloc_12 : memref<2xf16> to memref<2xf16>
        %272 = bufferization.clone %alloc_16 : memref<2x2xi1> to memref<2x2xi1>
        %273 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
        %cst_44 = arith.constant 1.000000e+00 : f32
        %cst_45 = arith.constant 0.000000e+00 : f32
        %274 = vector.transfer_read %14[%c10], %cst_45 : tensor<2xf32>, vector<f32>
        vector.print %273 : vector<2xf16>
        %275 = arith.remui %c676896590_i32, %c544520022_i32 : i32
        %276 = tensor.empty() : tensor<2x2xf16>
        %277 = linalg.matmul ins(%4, %4 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%276 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %278 = arith.maxsi %c1351347186_i32, %c676896590_i32 : i32
        %cst_46 = arith.constant 1.000000e+00 : f16
        %279 = memref.atomic_rmw maxf %cst_46, %alloc[%c5, %c1] : (f16, memref<9x2xf16>) -> f16
        %280 = index.ceildivs %c2, %c13
        %cst_47 = arith.constant 1.000000e+00 : f16
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst_47 : vector<2xf16>, vector<2xf16> into f16
        %cst_48 = arith.constant 1.000000e+00 : f16
        %282 = vector.multi_reduction <add>, %273, %cst_48 [0] : vector<2xf16> to f16
        scf.yield
      }
      default {
        %268 = math.powf %14, %2 : tensor<2xf32>
        %269 = index.divu %c10, %c6
        %270 = vector.broadcast %c15626_i16 : i16 to vector<i16>
        vector.transfer_write %270, %alloc_17[%c1, %c5] : vector<i16>, memref<9x2xi16>
        %271 = index.divu %c10, %c11
        %272 = arith.remf %cst_0, %cst_0 : f32
        %273 = arith.remf %cst, %cst_3 : f32
        %from_elements_43 = tensor.from_elements %c1602653633_i64, %c1065208473_i64 : tensor<2xi64>
        %274 = index.mul %c12, %c2
        %275 = arith.ori %c1065208473_i64, %c1602653633_i64 : i64
        %276 = affine.load %alloc_14[%c12, %c8] : memref<9x2xi16>
        %277 = arith.remui %false_1, %false_5 : i1
        %278 = arith.remsi %c-20968_i16, %c15626_i16 : i16
        %279 = arith.remsi %c517505369_i32, %c676896590_i32 : i32
        %280 = vector.splat %c676896590_i32 : vector<2x2xi32>
        %281 = arith.andi %c-20968_i16, %c-20968_i16 : i16
        %282 = arith.cmpf ogt, %cst_3, %cst_0 : f32
      }
      scf.condition(%false_5) %alloc_12 : memref<2xf16>
    } do {
    ^bb0(%arg1: memref<2xf16>):
      %cast_42 = tensor.cast %23 : tensor<i64> to tensor<i64>
      %from_elements_43 = tensor.from_elements %c15626_i16, %c-20968_i16, %c15626_i16, %c15626_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c15626_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16 : tensor<9x2xi16>
      %262 = math.ceil %14 : tensor<2xf32>
      %263 = arith.floordivsi %false, %false_1 : i1
      %cast_44 = tensor.cast %8 : tensor<9x2xi32> to tensor<?x?xi32>
      %264 = vector.broadcast %cst_0 : f32 to vector<9x2xf32>
      %265 = vector.fma %264, %264, %264 : vector<9x2xf32>
      %266 = arith.cmpi ult, %c1351347186_i32, %c544520022_i32 : i32
      %from_elements_45 = tensor.from_elements %cst, %cst_3, %cst_0, %cst_3 : tensor<2x2xf32>
      %267 = index.mul %c5, %c15
      %268 = math.sqrt %from_elements_45 : tensor<2x2xf32>
      %269 = memref.load %alloc_19[%c0, %c0] : memref<2x2xi32>
      %270 = math.ceil %4 : tensor<2x2xf16>
      %271 = arith.divf %cst_3, %cst : f32
      %272 = math.expm1 %3 : tensor<9x2xf32>
      %273 = arith.remf %cst_0, %cst_3 : f32
      %274 = index.sizeof
      scf.yield %arg1 : memref<2xf16>
    }
    %cast = tensor.cast %11 : tensor<9x2xi16> to tensor<?x?xi16>
    %cst_22 = arith.constant 1.000000e+00 : f16
    %35 = vector.insertelement %cst_22, %20[%c0 : index] : vector<2xf16>
    %36 = memref.load %alloc_19[%c0, %c1] : memref<2x2xi32>
    %37 = vector.extract_strided_slice %25 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
    %38 = math.sqrt %15 : tensor<9x2xf32>
    %39 = scf.execute_region -> index {
      affine.for %arg1 = 0 to 61 {
      }
      %cast_42 = tensor.cast %7 : tensor<2xi32> to tensor<?xi32>
      %262 = arith.minf %cst_4, %cst : f32
      %263 = arith.muli %c15626_i16, %c-20968_i16 : i16
      %264 = scf.index_switch %c13 -> memref<2x2xi16> 
      case 1 {
        %278 = affine.load %alloc_18[%c14] : memref<2xi64>
        %279 = arith.ori %c1351347186_i32, %c544520022_i32 : i32
        %280 = arith.ceildivsi %false_5, %false : i1
        %281 = vector.create_mask %c5, %c9 : vector<2x2xi1>
        %282 = vector.multi_reduction <mul>, %37, %cst_22 [0] : vector<1xf16> to f16
        %283 = math.ctpop %c1351347186_i32 : i32
        memref.tensor_store %3, %alloc_7 : memref<9x2xf32>
        memref.assume_alignment %alloc_18, 1 : memref<2xi64>
        %284 = index.sub %c5, %c10
        %285 = arith.shli %c517505369_i32, %c517505369_i32 : i32
        %286 = math.log1p %cst : f32
        %287 = arith.negf %cst_22 : f16
        %288 = math.ctpop %6 : tensor<2x2xi32>
        %289 = arith.minf %cst, %cst_3 : f32
        %290 = math.log1p %3 : tensor<9x2xf32>
        %291 = affine.apply affine_map<(d0, d1, d2) -> ((((d0 - d2) mod 4) floordiv 4) ceildiv 2)>(%c6, %c8, %c13)
        scf.yield %alloc_21 : memref<2x2xi16>
      }
      case 2 {
        %278 = arith.maxf %cst_22, %cst_22 : f16
        %collapsed_43 = tensor.collapse_shape %3 [[0, 1]] : tensor<9x2xf32> into tensor<18xf32>
        %279 = arith.minsi %c517505369_i32, %c1351347186_i32 : i32
        %c1882861908_i64 = arith.constant 1882861908 : i64
        %280 = arith.muli %c15626_i16, %c15626_i16 : i16
        %281 = index.ceildivs %c9, %c5
        %282 = math.absi %c544520022_i32 : i32
        %283 = arith.andi %false_2, %false_5 : i1
        %cast_44 = tensor.cast %14 : tensor<2xf32> to tensor<?xf32>
        %284 = arith.andi %c1351347186_i32, %c517505369_i32 : i32
        %285 = arith.remf %cst_0, %cst_4 : f32
        %286 = arith.divsi %c1065208473_i64, %c1065208473_i64 : i64
        %287 = math.copysign %3, %15 : tensor<9x2xf32>
        %288 = vector.bitcast %37 : vector<1xf16> to vector<1xf16>
        %cst_45 = arith.constant 0x4D804F01 : f32
        %289 = math.sqrt %cst_0 : f32
        scf.yield %alloc_21 : memref<2x2xi16>
      }
      default {
        %278 = arith.remui %c1602653633_i64, %c1602653633_i64 : i64
        %279 = arith.andi %false_1, %false_2 : i1
        %280 = vector.insert %cst_22, %20 [1] : f16 into vector<2xf16>
        %281 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %282 = vector.outerproduct %25, %25, %281 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
        %283 = index.casts %false : i1 to index
        %284 = vector.broadcast %cst_0 : f32 to vector<9x2xf32>
        %285 = index.maxu %c5, %c7
        %286 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
        %287 = vector.outerproduct %37, %37, %286 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        %288 = arith.divsi %false_1, %false_2 : i1
        %289 = bufferization.to_memref %17 : memref<2xi32>
        %290 = vector.multi_reduction <add>, %37, %cst_22 [0] : vector<1xf16> to f16
        %291 = index.maxu %c15, %c3
        %292 = math.cos %cst_4 : f32
        %293 = vector.reduction <minf>, %20 : vector<2xf16> into f16
        %294 = math.fpowi %3, %8 : tensor<9x2xf32>, tensor<9x2xi32>
        %295 = arith.xori %false_1, %false_5 : i1
        scf.yield %alloc_6 : memref<2x2xi16>
      }
      %265 = arith.ori %c517505369_i32, %c1351347186_i32 : i32
      %266 = math.ceil %14 : tensor<2xf32>
      %267 = scf.index_switch %c0 -> memref<2xf16> 
      case 1 {
        %278 = math.ctlz %10 : tensor<2x2xi32>
        %279 = math.exp2 %15 : tensor<9x2xf32>
        %280 = vector.create_mask %c9 : vector<2xi1>
        %281 = vector.extract %280[0] : vector<2xi1>
        %282 = math.powf %cst_4, %cst_4 : f32
        %283 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
        %284 = vector.outerproduct %37, %37, %283 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        %285 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %286 = vector.broadcast %false_1 : i1 to vector<2x2xi1>
        %287 = vector.outerproduct %280, %280, %286 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
        %288 = vector.reduction <minsi>, %280 : vector<2xi1> into i1
        %289 = arith.andi %c544520022_i32, %c544520022_i32 : i32
        %290 = arith.ceildivsi %false, %false : i1
        %291 = tensor.empty(%c5, %c1) : tensor<?x?xf16>
        %292 = math.cos %14 : tensor<2xf32>
        %293 = arith.mulf %cst_3, %cst_0 : f32
        %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<2x2xi32> into tensor<2x2x1xi32>
        %294 = index.casts %c2 : index to i32
        scf.yield %alloc_12 : memref<2xf16>
      }
      case 2 {
        %alloca_43 = memref.alloca() : memref<2xf16>
        %278 = vector.matrix_multiply %37, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %279 = vector.insert %cst_22, %20 [1] : f16 into vector<2xf16>
        %280 = index.ceildivs %c13, %c10
        %281 = arith.addf %cst_4, %cst_0 : f32
        %282 = math.ctlz %false_1 : i1
        %283 = arith.subi %c676896590_i32, %c544520022_i32 : i32
        %284 = vector.matrix_multiply %37, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf16>, vector<2xf16>) -> vector<2xf16>
        %285 = bufferization.to_memref %16 : memref<2xi32>
        %286 = bufferization.to_memref %5 : memref<2xi1>
        %287 = math.absf %9 : tensor<2x2xf32>
        %288 = bufferization.clone %alloc_12 : memref<2xf16> to memref<2xf16>
        %289 = math.powf %9, %9 : tensor<2x2xf32>
        %290 = vector.broadcast %c15626_i16 : i16 to vector<9xi16>
        %291 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %292 = vector.maskedload %alloc_21[%c1, %c1], %291, %290 : memref<2x2xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        vector.print %37 : vector<1xf16>
        %293 = arith.divui %false, %false_2 : i1
        scf.yield %alloc_12 : memref<2xf16>
      }
      case 3 {
        %278 = index.casts %c15626_i16 : i16 to index
        %alloc_43 = memref.alloc() : memref<2xi1>
        %279 = math.ipowi %5, %5 : tensor<2xi1>
        %280 = math.tanh %reduced : tensor<2xf16>
        %281 = arith.minf %cst_3, %cst_0 : f32
        %282 = math.ctlz %10 : tensor<2x2xi32>
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c0, %c3, %c5, %c7)
        %284 = affine.load %alloc_18[%c9] : memref<2xi64>
        %285 = arith.maxf %cst_3, %cst_3 : f32
        %rank_44 = tensor.rank %5 : tensor<2xi1>
        %286 = index.casts %c544520022_i32 : i32 to index
        %287 = vector.extract %25[0] : vector<2xf16>
        %288 = arith.maxsi %c544520022_i32, %c1351347186_i32 : i32
        %289 = vector.multi_reduction <maxf>, %25, %cst_22 [0] : vector<2xf16> to f16
        %290 = arith.negf %cst_4 : f32
        %from_elements_45 = tensor.from_elements %cst, %cst_4, %cst, %cst_0, %cst, %cst_4, %cst_0, %cst_3, %cst_3, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst : tensor<9x2xf32>
        scf.yield %alloc_12 : memref<2xf16>
      }
      default {
        %278 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %alloc_43 = memref.alloc() : memref<9x2xi1>
        memref.copy %alloc_11, %alloc_43 : memref<9x2xi1> to memref<9x2xi1>
        %279 = arith.shli %c1351347186_i32, %c676896590_i32 : i32
        %280 = affine.max affine_map<(d0) -> ((d0 mod 64 - 16) * 32)>(%c0)
        %281 = arith.remsi %false, %false_5 : i1
        %282 = math.round %cst_3 : f32
        memref.copy %alloc_14, %alloc_17 : memref<9x2xi16> to memref<9x2xi16>
        %283 = index.mul %c13, %c10
        %284 = math.round %cst_4 : f32
        %285 = math.atan2 %9, %9 : tensor<2x2xf32>
        %286 = affine.max affine_map<(d0) -> (((d0 - 16) ceildiv 32 + ((d0 - 16) ceildiv 32) floordiv 128) mod 2)>(%c1)
        %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<9x2xi16> into tensor<9x2x1xi16>
        %287 = index.castu %false_5 : i1 to index
        %288 = math.absi %c676896590_i32 : i32
        %289 = index.mul %c3, %c11
        %290 = arith.shli %false_5, %false : i1
        scf.yield %alloc_12 : memref<2xf16>
      }
      %268 = scf.while (%arg1 = %false_1) : (i1) -> i1 {
        %278 = math.absf %15 : tensor<9x2xf32>
        %279 = arith.ceildivsi %false, %false_5 : i1
        %280 = math.absf %15 : tensor<9x2xf32>
        %281 = index.ceildivs %c10, %c8
        %282 = math.log10 %9 : tensor<2x2xf32>
        %283 = bufferization.to_tensor %alloc_19 : memref<2x2xi32>
        %284 = arith.addf %cst, %cst_4 : f32
        %285 = arith.remui %c544520022_i32, %c676896590_i32 : i32
        scf.condition(%false_2) %arg1 : i1
      } do {
      ^bb0(%arg1: i1):
        %278 = vector.multi_reduction <minf>, %20, %cst_22 [0] : vector<2xf16> to f16
        %279 = vector.multi_reduction <maxf>, %37, %37 [] : vector<1xf16> to vector<1xf16>
        %280 = arith.remsi %c15626_i16, %c-20968_i16 : i16
        %extracted = tensor.extract %22[] : tensor<i64>
        %281 = arith.minf %cst, %cst_3 : f32
        %282 = index.ceildivs %c15, %c9
        %283 = arith.cmpi ne, %c676896590_i32, %c517505369_i32 : i32
        %284 = index.ceildivs %c2, %c14
        %285 = math.copysign %cst, %cst_4 : f32
        %286 = math.tan %3 : tensor<9x2xf32>
        %287 = math.tan %cst_4 : f32
        %288 = math.absi %13 : tensor<9x2xi32>
        %289 = bufferization.to_memref %9 : memref<2x2xf32>
        %290 = vector.broadcast %cst_0 : f32 to vector<9x2xf32>
        %291 = vector.fma %290, %290, %290 : vector<9x2xf32>
        %292 = affine.max affine_map<(d0, d1, d2) -> (d2 + 1, (-d1 - 32) * 32)>(%c11, %c3, %c2)
        %293 = arith.remf %cst_3, %cst_4 : f32
        scf.yield %false : i1
      }
      %269 = arith.remui %c517505369_i32, %c544520022_i32 : i32
      %270 = affine.apply affine_map<(d0, d1, d2) -> ((((d0 - d2) mod 4) floordiv 4) ceildiv 2)>(%c14, %c6, %c6)
      %271 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
      %272 = vector.outerproduct %37, %37, %271 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
      %273 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
      %274 = vector.outerproduct %37, %37, %273 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
      %275 = arith.remf %cst_22, %cst_22 : f16
      %276 = arith.ori %false_1, %false_5 : i1
      %277 = scf.execute_region -> vector<9x2xi32> {
        %278 = index.maxu %270, %c1
        %279 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 4, d1 - 128)>(%c5, %c10, %c7, %c0)
        %280 = vector.broadcast %false_1 : i1 to vector<2xi1>
        %281 = arith.divui %c544520022_i32, %c544520022_i32 : i32
        %282 = arith.maxsi %c544520022_i32, %c1351347186_i32 : i32
        %283 = arith.divsi %c1065208473_i64, %c1602653633_i64 : i64
        %284 = arith.xori %c-20968_i16, %c15626_i16 : i16
        %collapsed_43 = tensor.collapse_shape %8 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %285 = index.divs %c9, %c0
        %286 = index.ceildivu %c8, %c0
        %287 = arith.cmpf une, %cst_3, %cst_0 : f32
        %288 = vector.broadcast %c-20968_i16 : i16 to vector<9x2xi16>
        %289 = affine.apply affine_map<(d0) -> ((d0 mod 4 + 128) ceildiv 64)>(%c3)
        %290 = affine.max affine_map<(d0, d1, d2) -> (d2 + 5, (d2 + 1) floordiv 8, d1 mod 128)>(%c1, %c5, %278)
        %291 = arith.ceildivsi %c1602653633_i64, %c1065208473_i64 : i64
        %292 = tensor.empty() : tensor<2x2xf32>
        %293 = linalg.matmul ins(%9, %9 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%292 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %294 = vector.broadcast %c676896590_i32 : i32 to vector<9x2xi32>
        scf.yield %294 : vector<9x2xi32>
      }
      scf.yield %c3 : index
    }
    %40 = math.floor %cst_4 : f32
    %41 = affine.apply affine_map<(d0) -> (d0 * 128)>(%c6)
    %from_elements = tensor.from_elements %false_5, %false_2, %false_1, %false_2, %false_1, %false_2, %false_2, %false_1, %false_5, %false, %false_1, %false_2, %false_5, %false_1, %false_1, %false_5, %false_5, %false : tensor<9x2xi1>
    %42 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
      %262 = math.ceil %cst_3 : f32
      %263 = arith.maxui %c-20968_i16, %c15626_i16 : i16
      %264 = arith.remsi %c1351347186_i32, %c676896590_i32 : i32
      %265 = affine.if affine_set<(d0, d1) : (((d0 - d1) * 2) ceildiv 16 == 0, (d1 - 1) floordiv 64 >= 0, d1 - 128 == 0)>(%c7, %c1) -> i1 {
        %rank_42 = tensor.rank %3 : tensor<9x2xf32>
        %270 = arith.minf %cst_3, %cst_0 : f32
        %271 = bufferization.to_memref %2 : memref<2xf32>
        %272 = vector.extract_strided_slice %37 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %273 = math.rsqrt %cst_3 : f32
        %cast_43 = tensor.cast %2 : tensor<2xf32> to tensor<?xf32>
        %274 = arith.cmpi uge, %false_5, %false_5 : i1
        %275 = math.tan %18 : tensor<2xf16>
        affine.yield %false_1 : i1
      } else {
        %270 = arith.shli %c1065208473_i64, %c1065208473_i64 : i64
        %271 = bufferization.clone %alloc_15 : memref<9x2xi32> to memref<9x2xi32>
        %272 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c10, %c15, %c7)
        %273 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
        %274 = vector.outerproduct %37, %37, %273 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
        %275 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<minf>} : vector<2xf16>, vector<2xf16>
        %277 = arith.maxui %false_1, %false_5 : i1
        %278 = math.cttz %12 : tensor<9x2xi16>
        %279 = index.sub %272, %c14
        affine.yield %false_5 : i1
      }
      %266 = math.ctpop %from_elements : tensor<9x2xi1>
      %267 = index.ceildivs %c6, %c11
      %268 = bufferization.to_memref %6 : memref<2x2xi32>
      %269 = affine.load %alloc_12[%c2] : memref<2xf16>
      scf.condition(%false) %cst_4 : f32
    } do {
    ^bb0(%arg1: f32):
      %262 = index.ceildivu %c3, %c8
      %263 = memref.load %alloc_10[%c0, %c0] : memref<2x2xf32>
      scf.index_switch %262 
      case 1 {
        affine.store %c-20968_i16, %32[%c5, %c7] : memref<9x2xi16>
        %278 = arith.divsi %c-20968_i16, %c-20968_i16 : i16
        %279 = vector.create_mask %c8 : vector<2xi1>
        %280 = math.ctpop %10 : tensor<2x2xi32>
        %281 = math.log10 %14 : tensor<2xf32>
        %282 = math.tanh %cst_22 : f16
        %283 = vector.broadcast %false_2 : i1 to vector<2x2xi1>
        %284 = vector.broadcast %c544520022_i32 : i32 to vector<2x2xi32>
        %285 = vector.gather %5[%c8] [%284], %283, %283 : tensor<2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
        %286 = math.cos %9 : tensor<2x2xf32>
        %287 = vector.multi_reduction <add>, %25, %20 [] : vector<2xf16> to vector<2xf16>
        %288 = math.ctpop %false_2 : i1
        %289 = math.rsqrt %18 : tensor<2xf16>
        %290 = index.casts %c5 : index to i32
        %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<9x2xi32> into tensor<9x2x1xi32>
        %291 = bufferization.to_tensor %alloc_12 : memref<2xf16>
        %alloc_43 = memref.alloc() : memref<2xi1>
        %292 = arith.remf %arg1, %cst_3 : f32
        scf.yield
      }
      case 2 {
        %278 = math.ctlz %c1351347186_i32 : i32
        %279 = arith.xori %c1065208473_i64, %c1602653633_i64 : i64
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 + d2) floordiv 8 + 16, d1 - 2, (d3 + d2) floordiv 8 + 16)>(%c10, %41, %c10, %c9)
        %281 = arith.ceildivsi %c517505369_i32, %c676896590_i32 : i32
        %282 = arith.ori %false_5, %false_5 : i1
        %283 = math.absi %from_elements : tensor<9x2xi1>
        %cast_43 = tensor.cast %22 : tensor<i64> to tensor<i64>
        %284 = index.maxu %c15, %c6
        %285 = math.cos %15 : tensor<9x2xf32>
        %286 = affine.apply affine_map<(d0, d1, d2) -> (-(((d0 - 2) ceildiv 32) floordiv 16) + d1)>(%c9, %c6, %39)
        %287 = affine.load %alloc[%c4, %c12] : memref<9x2xf16>
        %288 = arith.minf %cst_3, %cst_0 : f32
        %289 = math.exp2 %3 : tensor<9x2xf32>
        %290 = vector.insert %cst_22, %20 [1] : f16 into vector<2xf16>
        %291 = index.casts %false : i1 to index
        %292 = index.add %c9, %c12
        scf.yield
      }
      case 3 {
        %278 = vector.extract %20[0] : vector<2xf16>
        %from_elements_43 = tensor.from_elements %c517505369_i32, %c544520022_i32, %c517505369_i32, %c517505369_i32 : tensor<2x2xi32>
        %279 = arith.remui %c544520022_i32, %c544520022_i32 : i32
        %280 = arith.mulf %arg1, %cst_4 : f32
        %281 = math.absi %23 : tensor<i64>
        %282 = index.castu %c517505369_i32 : i32 to index
        %283 = vector.create_mask %282, %c0 : vector<9x2xi1>
        %284 = vector.bitcast %25 : vector<2xf16> to vector<2xf16>
        %285 = math.expm1 %9 : tensor<2x2xf32>
        %286 = index.mul %c8, %c4
        %287 = math.floor %9 : tensor<2x2xf32>
        %288 = arith.cmpi ult, %c676896590_i32, %c676896590_i32 : i32
        %289 = index.floordivs %c3, %c10
        %290 = math.cos %cst_4 : f32
        %291 = math.copysign %9, %9 : tensor<2x2xf32>
        %292 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %293 = vector.outerproduct %284, %20, %292 {kind = #vector.kind<minf>} : vector<2xf16>, vector<2xf16>
        scf.yield
      }
      case 4 {
        %278 = math.absi %13 : tensor<9x2xi32>
        %279 = math.log %3 : tensor<9x2xf32>
        %280 = arith.divui %false_2, %false_2 : i1
        %281 = index.maxs %262, %41
        %282 = vector.broadcast %arg1 : f32 to vector<2xf32>
        %283 = vector.transfer_write %282, %3[%c14, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf32>, tensor<9x2xf32>
        %284 = index.floordivs %c2, %c5
        %285 = index.mul %c9, %c10
        %286 = arith.mulf %cst, %cst_3 : f32
        %287 = vector.broadcast %false : i1 to vector<2x2xi1>
        %collapsed_43 = tensor.collapse_shape %6 [[0, 1]] : tensor<2x2xi32> into tensor<4xi32>
        %288 = arith.minf %cst_0, %cst : f32
        %289 = math.atan2 %4, %4 : tensor<2x2xf16>
        %290 = math.cttz %11 : tensor<9x2xi16>
        %291 = affine.load %alloc_12[%c2] : memref<2xf16>
        %292 = math.ceil %3 : tensor<9x2xf32>
        %293 = arith.divui %false, %false_5 : i1
        scf.yield
      }
      default {
        %278 = vector.broadcast %c1351347186_i32 : i32 to vector<2x2xi32>
        %279 = arith.maxui %false_2, %false_1 : i1
        %280 = arith.ori %c676896590_i32, %c676896590_i32 : i32
        %281 = arith.remf %cst_3, %cst_0 : f32
        %282 = math.sqrt %reduced : tensor<2xf16>
        %283 = math.floor %14 : tensor<2xf32>
        %284 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
        %285 = vector.outerproduct %37, %37, %284 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
        %286 = arith.minsi %false, %false_5 : i1
        %287 = math.copysign %18, %reduced : tensor<2xf16>
        %288 = math.fma %2, %2, %2 : tensor<2xf32>
        %289 = bufferization.to_tensor %alloc_9 : memref<2xf32>
        %290 = arith.maxf %cst_0, %arg1 : f32
        %291 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
        %292 = arith.ori %c517505369_i32, %c517505369_i32 : i32
        %293 = index.mul %39, %39
        %294 = arith.minui %false_1, %false_5 : i1
      }
      %264 = affine.for %arg2 = 0 to 46 iter_args(%arg3 = %alloc_15) -> (memref<9x2xi32>) {
        affine.yield %arg3 : memref<9x2xi32>
      }
      %265 = arith.remsi %c676896590_i32, %c1351347186_i32 : i32
      %266 = math.tan %2 : tensor<2xf32>
      %267 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
      %268 = vector.outerproduct %20, %25, %267 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
      %269 = vector.create_mask %c13, %c9 : vector<9x2xi1>
      %270 = math.round %cst_22 : f16
      %271 = math.sqrt %cst_3 : f32
      %cast_42 = tensor.cast %6 : tensor<2x2xi32> to tensor<?x?xi32>
      %272 = index.casts %false_5 : i1 to index
      %273 = vector.broadcast %cst_4 : f32 to vector<9x2xf32>
      %274 = arith.remf %cst_4, %cst_0 : f32
      %275 = math.cos %reduced : tensor<2xf16>
      %276 = tensor.empty() : tensor<9x2xi32>
      %277 = linalg.matmul ins(%8, %10 : tensor<9x2xi32>, tensor<2x2xi32>) outs(%276 : tensor<9x2xi32>) -> tensor<9x2xi32>
      scf.yield %arg1 : f32
    }
    %43 = index.ceildivs %c0, %c7
    %44 = math.tan %3 : tensor<9x2xf32>
    %45 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%43, %c13, %c6)
    %46 = math.expm1 %cst_4 : f32
    %alloca = memref.alloca() : memref<2x2xi16>
    %47 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
    %48 = vector.outerproduct %25, %20, %47 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
    %49 = bufferization.to_tensor %alloc_15 : memref<9x2xi32>
    %50 = arith.minui %c517505369_i32, %c517505369_i32 : i32
    %51 = math.round %cst_22 : f16
    %52 = math.powf %4, %4 : tensor<2x2xf16>
    %53 = arith.divsi %c1065208473_i64, %c1602653633_i64 : i64
    %54 = vector.broadcast %c676896590_i32 : i32 to vector<i32>
    %55 = vector.transfer_write %54, %16[%c15] : vector<i32>, tensor<2xi32>
    %56 = bufferization.to_tensor %alloc_12 : memref<2xf16>
    %57 = index.ceildivu %39, %c15
    %generated = tensor.generate %39, %c11 {
    ^bb0(%arg1: index, %arg2: index):
      %262 = vector.splat %c1602653633_i64 : vector<9x2xi64>
      %c2064782554_i64 = arith.constant 2064782554 : i64
      %rank_42 = tensor.rank %21 : tensor<2xi64>
      %263 = tensor.empty() : tensor<2x2xf16>
      %264 = linalg.matmul ins(%4, %4 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%263 : tensor<2x2xf16>) -> tensor<2x2xf16>
      tensor.yield %c1065208473_i64 : i64
    } : tensor<?x?xi64>
    %58 = math.round %cst : f32
    %59 = affine.load %alloc_16[%c15, %c4] : memref<2x2xi1>
    %60 = vector.multi_reduction <add>, %37, %37 [] : vector<1xf16> to vector<1xf16>
    %61 = bufferization.to_tensor %alloc_14 : memref<9x2xi16>
    %62 = vector.shuffle %54, %54 [0, 1] : vector<i32>, vector<i32>
    bufferization.dealloc_tensor %0 : tensor<2x2xi32>
    %63 = math.expm1 %2 : tensor<2xf32>
    %64 = arith.remf %cst_4, %cst : f32
    scf.index_switch %c14 
    case 1 {
      %262 = bufferization.clone %alloc_21 : memref<2x2xi16> to memref<2x2xi16>
      %263 = vector.broadcast %c15626_i16 : i16 to vector<2xi16>
      %264 = math.fpowi %9, %6 : tensor<2x2xf32>, tensor<2x2xi32>
      %265 = arith.shrui %false_1, %false_5 : i1
      %266 = arith.divsi %false_2, %false : i1
      %267 = index.casts %39 : index to i32
      %268 = math.tanh %15 : tensor<9x2xf32>
      %269 = arith.minf %cst_0, %cst_4 : f32
      %270 = index.add %c3, %c5
      %271 = scf.execute_region -> memref<2x2xi32> {
        %277 = memref.load %alloc_12[%c0] : memref<2xf16>
        %278 = vector.reduction <mul>, %37 : vector<1xf16> into f16
        %279 = vector.broadcast %false_5 : i1 to vector<2xi1>
        %alloca_42 = memref.alloca() : memref<2x2xi32>
        %280 = index.maxu %270, %43
        %281 = math.ctpop %7 : tensor<2xi32>
        %from_elements_43 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22 : tensor<2x2xf16>
        %282 = arith.ceildivsi %false_2, %false_2 : i1
        %283 = math.roundeven %14 : tensor<2xf32>
        %284 = arith.remf %cst_22, %cst_22 : f16
        %285 = vector.broadcast %c1065208473_i64 : i64 to vector<2xi64>
        %286 = vector.maskedload %alloc_18[%c0], %279, %285 : memref<2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %287 = math.log1p %cst_0 : f32
        %288 = arith.addi %59, %false_1 : i1
        %289 = arith.shli %59, %false_5 : i1
        %290 = arith.cmpf une, %cst_0, %cst_0 : f32
        %291 = bufferization.to_memref %17 : memref<2xi32>
        scf.yield %alloc_19 : memref<2x2xi32>
      }
      %272 = index.sizeof
      %273 = math.copysign %2, %2 : tensor<2xf32>
      %274 = arith.maxf %cst_0, %cst_4 : f32
      %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<9x2xi16> into tensor<9x2x1xi16>
      %275 = vector.bitcast %37 : vector<1xf16> to vector<1xf16>
      %276 = arith.mulf %cst_0, %cst_0 : f32
      scf.yield
    }
    case 2 {
      %262 = memref.atomic_rmw andi %c1065208473_i64, %alloc_8[%c7, %c1] : (i64, memref<9x2xi64>) -> i64
      %263 = arith.divsi %false, %false_1 : i1
      %264 = vector.bitcast %37 : vector<1xf16> to vector<1xf16>
      %265 = arith.remf %cst_0, %cst_3 : f32
      scf.execute_region {
        %276 = vector.extract %264[0] : vector<1xf16>
        %277 = affine.max affine_map<(d0, d1) -> (d1 * 8, 0, d0)>(%41, %c7)
        %278 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %279 = vector.outerproduct %25, %25, %278 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
        %280 = index.sizeof
        %281 = index.ceildivs %c0, %c4
        %282 = affine.load %alloc_21[%c14, %c8] : memref<2x2xi16>
        %283 = index.maxu %c5, %c13
        %284 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %285 = vector.outerproduct %20, %25, %284 {kind = #vector.kind<minf>} : vector<2xf16>, vector<2xf16>
        %286 = arith.andi %c544520022_i32, %c676896590_i32 : i32
        %287 = bufferization.clone %alloc_7 : memref<9x2xf32> to memref<9x2xf32>
        %288 = index.sizeof
        %289 = bufferization.clone %alloc_14 : memref<9x2xi16> to memref<9x2xi16>
        %290 = arith.remui %c1065208473_i64, %c1065208473_i64 : i64
        %291 = vector.insertelement %cst_22, %25[%43 : index] : vector<2xf16>
        %292 = math.tanh %15 : tensor<9x2xf32>
        %293 = math.ctpop %282 : i16
        scf.yield
      }
      %266 = math.powf %14, %2 : tensor<2xf32>
      %267 = vector.splat %false_2 : vector<2x2xi1>
      %268 = arith.remf %cst_22, %cst_22 : f16
      %269 = bufferization.clone %alloc_19 : memref<2x2xi32> to memref<2x2xi32>
      %270 = math.ceil %3 : tensor<9x2xf32>
      %271 = vector.broadcast %c676896590_i32 : i32 to vector<9x2xi32>
      %272 = math.exp2 %15 : tensor<9x2xf32>
      %273 = math.sqrt %14 : tensor<2xf32>
      %274 = index.mul %c14, %c2
      %275 = arith.cmpf one, %cst_0, %cst_0 : f32
      %cast_42 = tensor.cast %12 : tensor<9x2xi16> to tensor<?x?xi16>
      scf.yield
    }
    default {
      %262 = arith.remui %c1351347186_i32, %c676896590_i32 : i32
      %263 = math.tan %18 : tensor<2xf16>
      %cast_42 = tensor.cast %8 : tensor<9x2xi32> to tensor<?x?xi32>
      %264 = tensor.empty(%c0) : tensor<9x?xi16>
      %265 = affine.apply affine_map<(d0) -> (-(d0 floordiv 16 - 16))>(%c11)
      %266 = math.absf %15 : tensor<9x2xf32>
      %267 = math.exp2 %2 : tensor<2xf32>
      %268 = scf.while (%arg1 = %c517505369_i32) : (i32) -> i32 {
        %274 = arith.maxsi %c676896590_i32, %c1351347186_i32 : i32
        %275 = memref.atomic_rmw minu %c15626_i16, %alloc_14[%c4, %c1] : (i16, memref<9x2xi16>) -> i16
        %cast_44 = tensor.cast %7 : tensor<2xi32> to tensor<?xi32>
        %extracted = tensor.extract %17[%c0] : tensor<2xi32>
        %276 = index.ceildivu %45, %c13
        %277 = arith.ori %c1351347186_i32, %c544520022_i32 : i32
        %278 = math.log1p %cst : f32
        %279 = math.ctlz %12 : tensor<9x2xi16>
        scf.condition(%59) %c544520022_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %274 = index.ceildivu %57, %39
        %275 = arith.mulf %cst_3, %cst_3 : f32
        memref.assume_alignment %32, 8 : memref<9x2xi16>
        %276 = arith.remf %cst_4, %cst_4 : f32
        %277 = arith.remf %cst_22, %cst_22 : f16
        %278 = math.atan2 %56, %56 : tensor<2xf16>
        %279 = math.ctpop %12 : tensor<9x2xi16>
        %280 = vector.load %alloc_13[%c1] : memref<2xi32>, vector<2xi32>
        %281 = arith.remf %cst_3, %cst : f32
        %282 = arith.ori %c676896590_i32, %c517505369_i32 : i32
        %283 = math.exp2 %15 : tensor<9x2xf32>
        affine.store %c1602653633_i64, %alloc_18[%c1] : memref<2xi64>
        %cast_44 = tensor.cast %2 : tensor<2xf32> to tensor<?xf32>
        %284 = math.round %4 : tensor<2x2xf16>
        %285 = index.sizeof
        %286 = vector.matrix_multiply %280, %280 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi32>, vector<2xi32>) -> vector<1xi32>
        scf.yield %arg1 : i32
      }
      scf.index_switch %c8 
      case 1 {
        %274 = math.cos %9 : tensor<2x2xf32>
        %275 = math.log1p %3 : tensor<9x2xf32>
        %276 = vector.reduction <mul>, %25 : vector<2xf16> into f16
        %277 = math.cos %15 : tensor<9x2xf32>
        %278 = math.rsqrt %2 : tensor<2xf32>
        %collapsed_44 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi16> into tensor<?xi16>
        %279 = math.round %9 : tensor<2x2xf32>
        %280 = affine.apply affine_map<(d0) -> (d0 * -2 + 4)>(%c14)
        %281 = arith.ori %false_2, %false_2 : i1
        %282 = bufferization.clone %alloc_16 : memref<2x2xi1> to memref<2x2xi1>
        %283 = math.floor %reduced : tensor<2xf16>
        %284 = arith.divsi %c1065208473_i64, %c1065208473_i64 : i64
        %285 = arith.divsi %c676896590_i32, %c544520022_i32 : i32
        %286 = index.casts %c1351347186_i32 : i32 to index
        %287 = arith.ceildivsi %c544520022_i32, %c517505369_i32 : i32
        %288 = arith.minf %cst_0, %cst_3 : f32
        scf.yield
      }
      case 2 {
        %274 = arith.ori %false_2, %59 : i1
        %275 = math.expm1 %2 : tensor<2xf32>
        %276 = vector.splat %c13 : vector<2x2xindex>
        %277 = index.mul %c5, %c11
        %278 = vector.extract %37[0] : vector<1xf16>
        %279 = index.casts %c676896590_i32 : i32 to index
        %280 = math.sqrt %reduced : tensor<2xf16>
        %281 = vector.matrix_multiply %25, %25 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %282 = vector.broadcast %false_5 : i1 to vector<2xi1>
        %283 = vector.broadcast %c676896590_i32 : i32 to vector<2xi32>
        %284 = vector.gather %from_elements[%c1, %c9] [%283], %282, %282 : tensor<9x2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %285 = index.casts %c13 : index to i32
        %286 = math.ctlz %22 : tensor<i64>
        %287 = vector.broadcast %cst : f32 to vector<2xf32>
        %288 = vector.fma %287, %287, %287 : vector<2xf32>
        %289 = arith.maxsi %c1065208473_i64, %c1065208473_i64 : i64
        %290 = arith.muli %c-20968_i16, %c-20968_i16 : i16
        %alloca_44 = memref.alloca() : memref<9x2xi64>
        %291 = math.ceil %15 : tensor<9x2xf32>
        scf.yield
      }
      case 3 {
        %274 = arith.minf %cst_4, %cst : f32
        %275 = math.ctpop %8 : tensor<9x2xi32>
        %276 = arith.maxui %59, %59 : i1
        %277 = bufferization.to_memref %7 : memref<2xi32>
        %278 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %279 = vector.splat %c12 : vector<2x2xindex>
        %280 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %alloc_44 = memref.alloc() : memref<2xf16>
        memref.copy %alloc_12, %alloc_44 : memref<2xf16> to memref<2xf16>
        %281 = math.absi %7 : tensor<2xi32>
        %282 = index.mul %c10, %39
        %283 = math.tan %14 : tensor<2xf32>
        %284 = arith.cmpf olt, %cst_3, %cst_3 : f32
        %285 = vector.broadcast %c676896590_i32 : i32 to vector<9x2xi32>
        %286 = vector.broadcast %false : i1 to vector<9x2xi1>
        %287 = vector.gather %alloc_15[%c14, %c6] [%285], %286, %285 : memref<9x2xi32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi32> into vector<9x2xi32>
        %288 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
        %289 = vector.outerproduct %20, %280, %288 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
        %290 = vector.broadcast %cst_3 : f32 to vector<9xf32>
        %291 = vector.broadcast %59 : i1 to vector<9xi1>
        %292 = vector.maskedload %alloc_7[%c0, %c1], %291, %290 : memref<9x2xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %293 = math.exp2 %15 : tensor<9x2xf32>
        scf.yield
      }
      default {
        %274 = math.round %2 : tensor<2xf32>
        %275 = affine.max affine_map<(d0, d1) -> (d1, d1 * 32 + 1, d1 * 32 - (d1 * 32 + 1))>(%45, %c15)
        %276 = affine.max affine_map<(d0) -> (((d0 mod 2) mod 8) mod 64)>(%c14)
        memref.tensor_store %12, %32 : memref<9x2xi16>
        %277 = arith.remsi %c544520022_i32, %c676896590_i32 : i32
        %278 = vector.broadcast %c1602653633_i64 : i64 to vector<9x2xi64>
        %279 = arith.maxf %cst_4, %cst : f32
        %280 = arith.remf %cst, %cst_3 : f32
        %281 = math.log1p %cst_22 : f16
        %282 = arith.maxui %c-20968_i16, %c15626_i16 : i16
        %283 = math.floor %4 : tensor<2x2xf16>
        %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<2x2xi32> into tensor<2x2x1xi32>
        %284 = memref.load %alloc_15[%c5, %c0] : memref<9x2xi32>
        %285 = memref.atomic_rmw maxu %c1602653633_i64, %alloc_8[%c3, %c0] : (i64, memref<9x2xi64>) -> i64
        %286 = index.divu %c1, %c12
        %287 = arith.muli %c-20968_i16, %c-20968_i16 : i16
      }
      %269 = math.absf %2 : tensor<2xf32>
      scf.if %false_1 {
        %274 = vector.multi_reduction <minf>, %25, %cst_22 [0] : vector<2xf16> to f16
        %275 = memref.atomic_rmw addf %cst_4, %alloc_7[%c6, %c1] : (f32, memref<9x2xf32>) -> f32
        %276 = arith.remsi %59, %false_2 : i1
        %277 = arith.minf %cst, %cst : f32
        %278 = math.round %reduced : tensor<2xf16>
        %279 = math.tan %9 : tensor<2x2xf32>
        %280 = arith.remf %cst_0, %cst : f32
        %281 = arith.divsi %c544520022_i32, %c1351347186_i32 : i32
      } else {
        %274 = vector.extract %20[1] : vector<2xf16>
        %275 = arith.minui %c-20968_i16, %c15626_i16 : i16
        %276 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
        %cast_44 = tensor.cast %7 : tensor<2xi32> to tensor<?xi32>
        %c703660336_i32 = arith.constant 703660336 : i32
        %277 = memref.realloc %alloc_18 : memref<2xi64> to memref<9xi64>
        %278 = index.casts %c6 : index to i32
        %279 = arith.divui %59, %59 : i1
      }
      %270 = index.sizeof
      %271 = vector.create_mask %57, %c1 : vector<2x2xi1>
      %272 = math.atan %14 : tensor<2xf32>
      %alloc_43 = memref.alloc() : memref<9x2xi64>
      %273 = math.fpowi %56, %17 : tensor<2xf16>, tensor<2xi32>
    }
    %65 = arith.maxui %c1065208473_i64, %c1602653633_i64 : i64
    affine.store %c-20968_i16, %alloc_14[%c8, %c2] : memref<9x2xi16>
    %66 = arith.maxsi %c-20968_i16, %c15626_i16 : i16
    %rank = tensor.rank %4 : tensor<2x2xf16>
    %c1092945253_i32 = arith.constant 1092945253 : i32
    %67 = arith.remui %c1602653633_i64, %c1065208473_i64 : i64
    %68 = arith.cmpi eq, %false_5, %false_2 : i1
    %69 = affine.apply affine_map<(d0, d1, d2) -> ((((d0 - d2) mod 4) floordiv 4) ceildiv 2)>(%41, %c1, %c11)
    %70 = vector.splat %c10 : vector<9x2xindex>
    %71 = affine.max affine_map<(d0, d1, d2) -> (d0 - 2, (d2 ceildiv 16) * 8, (d0 floordiv 32) mod 4)>(%c8, %c7, %c3)
    %72 = arith.xori %c-20968_i16, %c15626_i16 : i16
    %73 = arith.remui %false_1, %59 : i1
    %74 = arith.divsi %c676896590_i32, %c676896590_i32 : i32
    memref.alloca_scope  {
      %262 = arith.remui %c1602653633_i64, %c1602653633_i64 : i64
      %263 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
      %264 = vector.outerproduct %37, %37, %263 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
      %265 = vector.multi_reduction <add>, %20, %cst_22 [0] : vector<2xf16> to f16
      %266 = math.round %2 : tensor<2xf32>
      %267 = math.round %2 : tensor<2xf32>
      %268 = arith.maxsi %c1351347186_i32, %c517505369_i32 : i32
      memref.assume_alignment %alloc_20, 16 : memref<9x2xf16>
      %269 = arith.maxf %cst_4, %cst_0 : f32
      %270 = math.cttz %23 : tensor<i64>
      %expanded = tensor.expand_shape %reduced [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
      %271 = math.round %9 : tensor<2x2xf32>
      %272 = arith.minui %59, %false_1 : i1
      %cast_42 = tensor.cast %12 : tensor<9x2xi16> to tensor<?x?xi16>
      %273 = arith.remf %cst_3, %cst : f32
      %274 = math.ceil %14 : tensor<2xf32>
      %275 = math.absf %3 : tensor<9x2xf32>
      %276 = math.tanh %9 : tensor<2x2xf32>
      %277 = index.sizeof
      %278 = math.rsqrt %cst_3 : f32
      %279 = math.absi %7 : tensor<2xi32>
      scf.if %false_5 {
        %290 = index.sizeof
        %291 = index.castu %c1602653633_i64 : i64 to index
        %292 = vector.matrix_multiply %25, %25 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %293 = index.maxs %277, %291
        %from_elements_44 = tensor.from_elements %c-20968_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c15626_i16 : tensor<9x2xi16>
        %294 = index.floordivs %277, %c7
        %cast_45 = tensor.cast %13 : tensor<9x2xi32> to tensor<?x?xi32>
        %295 = arith.shrui %c15626_i16, %c-20968_i16 : i16
      } else {
        %290 = arith.divf %cst_0, %cst_4 : f32
        %291 = math.tan %cst_3 : f32
        %292 = index.sub %69, %41
        %293 = math.rsqrt %cst_0 : f32
        %294 = math.ipowi %8, %8 : tensor<9x2xi32>
        %295 = tensor.empty() : tensor<9x2xi16>
        %296 = vector.broadcast %265 : f16 to vector<2x2xf16>
        %297 = vector.outerproduct %20, %20, %296 {kind = #vector.kind<maxf>} : vector<2xf16>, vector<2xf16>
        %298 = arith.remsi %c1351347186_i32, %c1351347186_i32 : i32
      }
      %280 = arith.remsi %c544520022_i32, %c517505369_i32 : i32
      %281 = arith.maxui %c544520022_i32, %c544520022_i32 : i32
      %282 = math.powf %cst_0, %cst : f32
      %283 = vector.multi_reduction <minf>, %37, %265 [0] : vector<1xf16> to f16
      %generated_43 = tensor.generate %c6 {
      ^bb0(%arg1: index):
        %290 = math.tanh %56 : tensor<2xf16>
        %291 = arith.cmpi ugt, %c-20968_i16, %c-20968_i16 : i16
        %292 = arith.maxui %c-20968_i16, %c-20968_i16 : i16
        %293 = math.fpowi %cst_3, %c517505369_i32 : f32, i32
        tensor.yield %false_5 : i1
      } : tensor<?xi1>
      %284 = math.round %9 : tensor<2x2xf32>
      %285 = memref.realloc %alloc_18 : memref<2xi64> to memref<2xi64>
      %286 = arith.ceildivsi %false, %59 : i1
      %287 = arith.addi %false, %false_1 : i1
      %288 = index.floordivs %c15, %c14
      %289 = arith.minf %cst_4, %cst_4 : f32
    }
    %75 = arith.remf %cst_0, %cst_3 : f32
    %76 = tensor.empty() : tensor<2x2xf32>
    %mapped = linalg.map ins(%9, %9, %9 : tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>) outs(%76 : tensor<2x2xf32>)
      (%in: f32, %in_42: f32, %in_43: f32) {
        %262 = arith.remui %c1065208473_i64, %c1065208473_i64 : i64
        %263 = arith.muli %59, %false_1 : i1
        %rank_44 = tensor.rank %7 : tensor<2xi32>
        %264 = math.ctlz %c1065208473_i64 : i64
        %265 = vector.create_mask %41 : vector<2xi1>
        %266 = index.castu %c8 : index to i32
        %267 = math.tan %4 : tensor<2x2xf16>
        %268 = vector.broadcast %in_43 : f32 to vector<2xf32>
        %269 = vector.maskedload %alloc_10[%c0, %c1], %265, %268 : memref<2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %from_elements_45 = tensor.from_elements %c1065208473_i64, %c1602653633_i64 : tensor<2xi64>
        %270 = memref.realloc %alloc_13 : memref<2xi32> to memref<9xi32>
        %271 = scf.while (%arg1 = %alloc_8) : (memref<9x2xi64>) -> memref<9x2xi64> {
          %292 = memref.atomic_rmw minf %cst_4, %alloc_9[%c0] : (f32, memref<2xf32>) -> f32
          %293 = index.divu %c8, %69
          %294 = arith.maxsi %c544520022_i32, %c517505369_i32 : i32
          %295 = vector.reduction <maxf>, %269 : vector<2xf32> into f32
          %296 = arith.addf %cst_4, %cst_3 : f32
          %297 = index.mul %c0, %c7
          %298 = math.expm1 %cst_4 : f32
          %299 = bufferization.clone %alloc_7 : memref<9x2xf32> to memref<9x2xf32>
          scf.condition(%59) %alloc_8 : memref<9x2xi64>
        } do {
        ^bb0(%arg1: memref<9x2xi64>):
          %292 = affine.load %alloc_12[%c7] : memref<2xf16>
          %293 = tensor.empty() : tensor<2xi16>
          %294 = arith.remui %c676896590_i32, %c676896590_i32 : i32
          %295 = arith.remf %cst_0, %in : f32
          %296 = math.exp2 %3 : tensor<9x2xf32>
          %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %25, %292 : vector<2xf16>, vector<2xf16> into f16
          %alloca_48 = memref.alloca() : memref<9x2xi32>
          %298 = arith.addf %cst_22, %292 : f16
          %299 = affine.load %alloc_21[%c4, %c15] : memref<2x2xi16>
          %from_elements_49 = tensor.from_elements %c1351347186_i32, %c517505369_i32, %c517505369_i32, %c544520022_i32 : tensor<2x2xi32>
          %300 = math.atan2 %15, %3 : tensor<9x2xf32>
          %301 = vector.insertelement %in_42, %268[%43 : index] : vector<2xf32>
          %302 = arith.xori %false_1, %false_5 : i1
          %303 = math.cttz %1 : tensor<2xi64>
          %304 = arith.maxui %c-20968_i16, %c15626_i16 : i16
          %305 = arith.shli %c-20968_i16, %c-20968_i16 : i16
          scf.yield %alloc_8 : memref<9x2xi64>
        }
        %272 = vector.create_mask %c10 : vector<2xi1>
        %273 = arith.maxui %c1065208473_i64, %c1602653633_i64 : i64
        memref.assume_alignment %alloc_21, 1 : memref<2x2xi16>
        %274 = math.ctlz %c1065208473_i64 : i64
        %275 = index.ceildivu %c5, %c13
        %276 = vector.broadcast %in_42 : f32 to vector<f32>
        %277 = vector.transfer_write %276, %14[%45] : vector<f32>, tensor<2xf32>
        scf.index_switch %c8 
        case 1 {
          %292 = math.ctlz %5 : tensor<2xi1>
          %293 = vector.broadcast %59 : i1 to vector<2x2xi1>
          %294 = vector.outerproduct %272, %272, %293 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
          %295 = arith.maxui %false_1, %false_2 : i1
          %296 = arith.addi %c-20968_i16, %c-20968_i16 : i16
          %297 = math.floor %9 : tensor<2x2xf32>
          %collapsed_48 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
          %rank_49 = tensor.rank %10 : tensor<2x2xi32>
          %298 = math.sqrt %14 : tensor<2xf32>
          %cast_50 = tensor.cast %15 : tensor<9x2xf32> to tensor<?x?xf32>
          %299 = memref.load %32[%c1, %c1] : memref<9x2xi16>
          %from_elements_51 = tensor.from_elements %c517505369_i32, %c1351347186_i32 : tensor<2xi32>
          %300 = math.absi %61 : tensor<9x2xi16>
          %301 = arith.maxsi %c517505369_i32, %c517505369_i32 : i32
          %302 = arith.addi %c-20968_i16, %c15626_i16 : i16
          %303 = arith.remui %false, %false_1 : i1
          %304 = arith.remf %cst_0, %in_43 : f32
          scf.yield
        }
        case 2 {
          %292 = arith.minf %cst_0, %cst_4 : f32
          %293 = bufferization.to_tensor %alloc_20 : memref<9x2xf16>
          %294 = vector.broadcast %c676896590_i32 : i32 to vector<2xi32>
          %295 = vector.gather %alloc_16[%rank, %c10] [%294], %265, %272 : memref<2x2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %296 = arith.remui %false_5, %false_5 : i1
          %alloc_48 = memref.alloc() : memref<2xi1>
          %297 = vector.broadcast %59 : i1 to vector<2x2xi1>
          %298 = vector.broadcast %c517505369_i32 : i32 to vector<2x2xi32>
          %299 = vector.gather %alloc_48[%275] [%298], %297, %297 : memref<2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
          %300 = arith.shli %c-20968_i16, %c-20968_i16 : i16
          %301 = math.roundeven %18 : tensor<2xf16>
          %302 = math.tanh %3 : tensor<9x2xf32>
          %303 = arith.minui %c676896590_i32, %c517505369_i32 : i32
          %304 = index.casts %c517505369_i32 : i32 to index
          %305 = arith.andi %c676896590_i32, %c544520022_i32 : i32
          %306 = vector.splat %c2 : vector<2xindex>
          memref.tensor_store %18, %alloc_12 : memref<2xf16>
          affine.store %cst_0, %alloc_7[%c14, %c2] : memref<9x2xf32>
          %307 = arith.maxsi %false_2, %false_1 : i1
          %308 = math.absf %cst_4 : f32
          scf.yield
        }
        default {
          %292 = index.casts %c6 : index to i32
          %293 = vector.create_mask %43, %39 : vector<2x2xi1>
          %294 = bufferization.to_tensor %alloc_16 : memref<2x2xi1>
          %295 = vector.broadcast %cst : f32 to vector<2x2xf32>
          %296 = memref.realloc %alloc_18 : memref<2xi64> to memref<2xi64>
          %297 = arith.cmpi sge, %59, %false_5 : i1
          %from_elements_48 = tensor.from_elements %c1065208473_i64, %c1602653633_i64, %c1602653633_i64, %c1065208473_i64, %c1065208473_i64, %c1065208473_i64, %c1602653633_i64, %c1602653633_i64, %c1602653633_i64, %c1602653633_i64, %c1065208473_i64, %c1065208473_i64, %c1602653633_i64, %c1065208473_i64, %c1065208473_i64, %c1602653633_i64, %c1065208473_i64, %c1065208473_i64 : tensor<9x2xi64>
          %298 = arith.maxf %in, %cst : f32
          %299 = math.cos %in_43 : f32
          %300 = math.floor %in : f32
          %301 = arith.maxui %false_1, %false_5 : i1
          %302 = tensor.empty() : tensor<9x2xf16>
          %303 = vector.extract %37[0] : vector<1xf16>
          %304 = vector.outerproduct %265, %265, %293 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
          %rank_49 = tensor.rank %8 : tensor<9x2xi32>
          %305 = arith.remsi %c-20968_i16, %c-20968_i16 : i16
        }
        %cast_46 = tensor.cast %4 : tensor<2x2xf16> to tensor<?x?xf16>
        %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<9x2xf32> into tensor<9x2x1xf32>
        %278 = math.rsqrt %76 : tensor<2x2xf32>
        %279 = arith.minf %cst_3, %cst_0 : f32
        %280 = index.casts %c10 : index to i32
        %281 = arith.shli %c544520022_i32, %c676896590_i32 : i32
        %282 = vector.broadcast %c544520022_i32 : i32 to vector<2xi32>
        %283 = vector.gather %76[%45, %rank_44] [%282], %265, %269 : tensor<2x2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %284 = bufferization.clone %alloc_9 : memref<2xf32> to memref<2xf32>
        %285 = index.mul %275, %43
        %286 = vector.broadcast %cst : f32 to vector<9xf32>
        %287 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %288 = vector.maskedload %alloc_10[%c0, %c0], %287, %286 : memref<2x2xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %289 = arith.andi %c-20968_i16, %c-20968_i16 : i16
        vector.print %287 : vector<9xi1>
        %290 = arith.andi %false_2, %false_1 : i1
        %291 = index.sizeof
        %cst_47 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_47 : f32
      }
    %77 = arith.minui %false_5, %false_5 : i1
    %78 = arith.minsi %false_1, %false_1 : i1
    %79 = math.exp %cst_3 : f32
    %80 = math.exp2 %cst_3 : f32
    %81 = arith.maxui %false_1, %false_2 : i1
    %82 = arith.xori %false_2, %false_5 : i1
    %83 = bufferization.to_memref %15 : memref<9x2xf32>
    %84 = index.ceildivu %c2, %c13
    %rank_23 = tensor.rank %6 : tensor<2x2xi32>
    %85 = math.sqrt %9 : tensor<2x2xf32>
    %86 = index.add %c11, %69
    %87 = arith.mulf %cst_0, %cst_0 : f32
    %88 = affine.max affine_map<(d0) -> (d0 - 8)>(%69)
    %89 = math.fpowi %4, %0 : tensor<2x2xf16>, tensor<2x2xi32>
    %90 = arith.mulf %cst_22, %cst_22 : f16
    %91 = vector.extract_strided_slice %37 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
    %92 = math.sqrt %14 : tensor<2xf32>
    %93 = math.tan %cst_4 : f32
    %94 = index.mul %rank, %45
    %95 = arith.divsi %c517505369_i32, %c1351347186_i32 : i32
    %96 = index.mul %39, %45
    %97 = math.absi %5 : tensor<2xi1>
    %98 = vector.insertelement %c1351347186_i32, %54[] : vector<i32>
    %99 = affine.max affine_map<(d0) -> (-d0, d0 * 2 - 1)>(%c14)
    %100 = index.maxu %99, %86
    %101 = arith.shrui %c-20968_i16, %c15626_i16 : i16
    affine.store %c-20968_i16, %alloc_6[%c0, %c14] : memref<2x2xi16>
    %102 = math.ctpop %11 : tensor<9x2xi16>
    %103 = vector.broadcast %cst : f32 to vector<9x2xf32>
    %104 = vector.broadcast %59 : i1 to vector<9x2xi1>
    %105 = vector.broadcast %c676896590_i32 : i32 to vector<9x2xi32>
    %106 = vector.gather %83[%rank, %c11] [%105], %104, %103 : memref<9x2xf32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf32> into vector<9x2xf32>
    %107 = math.tan %18 : tensor<2xf16>
    %108 = arith.ori %false_2, %false_1 : i1
    %109 = index.ceildivs %c14, %c14
    %110 = vector.create_mask %109, %c1 : vector<9x2xi1>
    %111 = vector.broadcast %cst_3 : f32 to vector<f32>
    %112 = vector.transfer_write %111, %9[%c10, %c1] : vector<f32>, tensor<2x2xf32>
    %113 = index.mul %41, %96
    %114 = vector.multi_reduction <add>, %37, %37 [] : vector<1xf16> to vector<1xf16>
    %115 = arith.andi %c15626_i16, %c-20968_i16 : i16
    %116 = math.ctlz %false_5 : i1
    %117 = vector.broadcast %false_5 : i1 to vector<2xi1>
    %118 = vector.insert %117, %110 [3] : vector<2xi1> into vector<9x2xi1>
    %119 = vector.broadcast %c544520022_i32 : i32 to vector<2xi32>
    %120 = math.ctpop %5 : tensor<2xi1>
    %121 = index.mul %69, %96
    %122 = bufferization.clone %alloc_7 : memref<9x2xf32> to memref<9x2xf32>
    %123 = arith.shrui %c544520022_i32, %c517505369_i32 : i32
    %124 = tensor.empty() : tensor<9x9x9xi32>
    %125 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%124 : tensor<9x9x9xi32>) {
    ^bb0(%out: i32):
      %262 = index.ceildivs %rank, %88
      %263 = index.mul %c5, %c3
      %264 = arith.shli %false_2, %false_2 : i1
      affine.store %c1602653633_i64, %alloc_18[%c4] : memref<2xi64>
      %265 = math.absf %cst_22 : f16
      %266 = math.round %cst : f32
      %267 = bufferization.clone %alloc_13 : memref<2xi32> to memref<2xi32>
      %268 = arith.cmpi sge, %c1602653633_i64, %c1602653633_i64 : i64
      %269 = arith.maxsi %c1065208473_i64, %c1065208473_i64 : i64
      %270 = vector.broadcast %cst_22 : f16 to vector<2x2xf16>
      %271 = vector.outerproduct %20, %25, %270 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
      %272 = vector.matrix_multiply %37, %91 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %273 = vector.transpose %54, [] : vector<i32> to vector<i32>
      %274 = index.floordivs %c10, %41
      %275 = math.ctpop %c676896590_i32 : i32
      memref.tensor_store %11, %32 : memref<9x2xi16>
      %276 = math.floor %4 : tensor<2x2xf16>
      %277 = math.ctpop %8 : tensor<9x2xi32>
      %278 = index.sizeof
      %279 = affine.apply affine_map<(d0) -> (-(d0 floordiv 16 - 16))>(%109)
      memref.assume_alignment %alloc_13, 2 : memref<2xi32>
      %280 = memref.atomic_rmw minu %c-20968_i16, %alloc_6[%c1, %c0] : (i16, memref<2x2xi16>) -> i16
      %281 = arith.shli %c-20968_i16, %c-20968_i16 : i16
      %282 = arith.divui %59, %false_2 : i1
      %cast_42 = tensor.cast %8 : tensor<9x2xi32> to tensor<?x?xi32>
      %283 = arith.maxui %c544520022_i32, %c1351347186_i32 : i32
      %284 = arith.minui %false_2, %false : i1
      %285 = memref.load %83[%c2, %c1] : memref<9x2xf32>
      %286 = bufferization.clone %alloc_18 : memref<2xi64> to memref<2xi64>
      %287 = vector.broadcast %cst_0 : f32 to vector<9x2xf32>
      %288 = math.ctpop %from_elements : tensor<9x2xi1>
      %289 = index.maxu %c0, %c2
      %290 = arith.cmpf ult, %cst_0, %cst_4 : f32
      linalg.yield %c544520022_i32 : i32
    } -> tensor<9x9x9xi32>
    %generated_24 = tensor.generate %c13 {
    ^bb0(%arg1: index, %arg2: index):
      %collapsed_42 = tensor.collapse_shape %0 [[0, 1]] : tensor<2x2xi32> into tensor<4xi32>
      %262 = math.copysign %9, %9 : tensor<2x2xf32>
      %263 = arith.divsi %false_1, %false_2 : i1
      %264 = arith.mulf %cst_4, %cst : f32
      tensor.yield %cst_22 : f16
    } : tensor<?x2xf16>
    %126 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%41, %109, %121)
    memref.copy %alloc_7, %122 : memref<9x2xf32> to memref<9x2xf32>
    %127 = tensor.empty() : tensor<2x2xi16>
    %128 = vector.bitcast %103 : vector<9x2xf32> to vector<9x2xf32>
    %129 = math.tanh %2 : tensor<2xf32>
    %130 = math.tanh %4 : tensor<2x2xf16>
    %131 = arith.ori %c1351347186_i32, %c544520022_i32 : i32
    %132 = math.atan %9 : tensor<2x2xf32>
    %133 = arith.minui %c544520022_i32, %c544520022_i32 : i32
    %134 = bufferization.to_memref %8 : memref<9x2xi32>
    %135 = index.ceildivs %45, %86
    %136 = arith.minui %false_1, %59 : i1
    %137 = vector.extract %25[0] : vector<2xf16>
    %138 = math.tanh %reduced : tensor<2xf16>
    %139 = arith.minf %cst_22, %cst_22 : f16
    %140 = arith.remui %59, %false : i1
    affine.for %arg1 = 0 to 78 {
    }
    %141 = index.casts %57 : index to i32
    %142 = vector.multi_reduction <add>, %20, %20 [] : vector<2xf16> to vector<2xf16>
    %143 = math.ctpop %59 : i1
    %144 = math.ctlz %false_5 : i1
    %145 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
      %expanded = tensor.expand_shape %56 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
      %262 = index.ceildivs %c13, %43
      %263 = arith.subi %c15626_i16, %c-20968_i16 : i16
      %264 = arith.remf %cst, %cst_3 : f32
      %265 = vector.broadcast %false_5 : i1 to vector<2x2xi1>
      %266 = vector.outerproduct %117, %117, %265 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
      %267 = index.casts %100 : index to i32
      %268 = arith.remsi %c1065208473_i64, %c1602653633_i64 : i64
      %269 = math.tan %9 : tensor<2x2xf32>
      scf.condition(%false_5) %cst_4 : f32
    } do {
    ^bb0(%arg1: f32):
      %262 = arith.maxsi %false_1, %false_5 : i1
      %263 = tensor.empty() : tensor<2xi16>
      %264 = math.floor %9 : tensor<2x2xf32>
      %265 = arith.negf %cst_22 : f16
      %266 = arith.xori %59, %59 : i1
      %267 = vector.broadcast %cst_22 : f16 to vector<1x1xf16>
      %268 = vector.outerproduct %91, %37, %267 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %269 = math.sqrt %15 : tensor<9x2xf32>
      %270 = math.tanh %56 : tensor<2xf16>
      %generated_42 = tensor.generate %c10, %c1 {
      ^bb0(%arg2: index, %arg3: index):
        %277 = index.sizeof
        %278 = bufferization.clone %alloc_18 : memref<2xi64> to memref<2xi64>
        %279 = math.log1p %cst_3 : f32
        %280 = vector.broadcast %59 : i1 to vector<9xi1>
        %281 = vector.maskedload %alloc_16[%c1, %c1], %280, %280 : memref<2x2xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        tensor.yield %c-20968_i16 : i16
      } : tensor<?x?xi16>
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%43, %c7, %94, %41)
      %272 = vector.broadcast %cst_22 : f16 to vector<f16>
      vector.transfer_write %272, %alloc[%86, %271] : vector<f16>, memref<9x2xf16>
      %273 = vector.broadcast %c-20968_i16 : i16 to vector<2xi16>
      %274 = arith.addi %c544520022_i32, %c544520022_i32 : i32
      %275 = math.rsqrt %9 : tensor<2x2xf32>
      %alloca_43 = memref.alloca() : memref<9x2xf16>
      %276 = arith.negf %cst : f32
      scf.yield %cst_4 : f32
    }
    %146 = affine.load %alloc_16[%c11, %c3] : memref<2x2xi1>
    %147 = math.ctlz %17 : tensor<2xi32>
    %148 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 4, d2, d2 mod 2 + 1, -(d3 mod 4))>(%c14, %c2, %126, %c14)
    %149 = arith.shrui %c15626_i16, %c15626_i16 : i16
    %150 = bufferization.clone %alloc_14 : memref<9x2xi16> to memref<9x2xi16>
    %151 = memref.load %alloc_12[%c1] : memref<2xf16>
    %152 = vector.broadcast %cst_3 : f32 to vector<2xf32>
    %153 = vector.fma %152, %152, %152 : vector<2xf32>
    %154 = index.ceildivs %c1, %113
    %155 = arith.cmpi slt, %false_5, %146 : i1
    %156 = arith.cmpf ugt, %cst_22, %cst_22 : f16
    %157 = arith.remf %cst_3, %cst : f32
    %158 = arith.floordivsi %false_1, %false_1 : i1
    %alloc_25 = memref.alloc() : memref<2xi64>
    %159 = math.cttz %c1065208473_i64 : i64
    %160 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
    %161 = vector.outerproduct %153, %153, %160 {kind = #vector.kind<mul>} : vector<2xf32>, vector<2xf32>
    %162 = index.ceildivs %121, %57
    %163 = math.sqrt %9 : tensor<2x2xf32>
    %alloca_26 = memref.alloca() : memref<9x2xi64>
    %164 = math.fpowi %4, %0 : tensor<2x2xf16>, tensor<2x2xi32>
    %165 = arith.shli %c517505369_i32, %c1351347186_i32 : i32
    %166 = arith.divf %cst_3, %cst_3 : f32
    %167 = affine.load %alloc_20[%c7, %c4] : memref<9x2xf16>
    %168 = math.exp %2 : tensor<2xf32>
    %169 = arith.remsi %c1602653633_i64, %c1602653633_i64 : i64
    %170 = affine.load %alloc_8[%c8, %c7] : memref<9x2xi64>
    %171 = index.mul %86, %135
    %cst_27 = arith.constant 1.000000e+00 : f16
    %cst_28 = arith.constant 0.000000e+00 : f16
    %172 = vector.transfer_read %alloc[%43, %c12], %cst_28 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<9x2xf16>, vector<2xf16>
    %173 = math.tanh %15 : tensor<9x2xf32>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %174 = vector.transfer_read %8[%154, %c13], %c0_i32 : tensor<9x2xi32>, vector<i32>
    %175 = affine.for %arg1 = 0 to 14 iter_args(%arg2 = %7) -> (tensor<2xi32>) {
      affine.yield %17 : tensor<2xi32>
    }
    %176 = arith.maxsi %c15626_i16, %c15626_i16 : i16
    %cast_29 = tensor.cast %61 : tensor<9x2xi16> to tensor<?x?xi16>
    %177 = math.floor %167 : f16
    %178 = arith.shli %c1065208473_i64, %170 : i64
    %179 = arith.xori %c1351347186_i32, %c676896590_i32 : i32
    %180 = index.maxu %71, %c0
    %181 = math.ceil %14 : tensor<2xf32>
    %182 = arith.divui %c1065208473_i64, %170 : i64
    %183 = arith.remf %cst_22, %cst_27 : f16
    %184 = vector.extract %117[1] : vector<2xi1>
    %rank_30 = tensor.rank %5 : tensor<2xi1>
    %185 = index.maxs %c9, %c13
    %generated_31 = tensor.generate %c8, %171 {
    ^bb0(%arg1: index, %arg2: index):
      %262 = math.sqrt %14 : tensor<2xf32>
      %263 = vector.broadcast %c-20968_i16 : i16 to vector<2x2xi16>
      %264 = vector.broadcast %59 : i1 to vector<2x2xi1>
      %265 = vector.broadcast %c1351347186_i32 : i32 to vector<2x2xi32>
      %266 = vector.gather %11[%71, %43] [%265], %264, %263 : tensor<9x2xi16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi16> into vector<2x2xi16>
      %267 = vector.insert %152, %128 [0] : vector<2xf32> into vector<9x2xf32>
      %268 = arith.addf %cst_0, %cst : f32
      tensor.yield %167 : f16
    } : tensor<?x?xf16>
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<2x2xi32> into tensor<4xi32>
    %186 = affine.max affine_map<(d0, d1) -> (d0 + 2, d1 - 4, d1 - 4)>(%45, %86)
    %187 = math.ctlz %from_elements : tensor<9x2xi1>
    %188 = math.log1p %cst_0 : f32
    %189 = math.round %cst_22 : f16
    %190 = math.copysign %9, %9 : tensor<2x2xf32>
    %alloc_32 = memref.alloc() : memref<i64>
    memref.tensor_store %22, %alloc_32 : memref<i64>
    %alloca_33 = memref.alloca() : memref<2xf16>
    %191 = math.tanh %18 : tensor<2xf16>
    %192 = math.atan %2 : tensor<2xf32>
    %193 = math.ctlz %11 : tensor<9x2xi16>
    %194 = index.sizeof
    %195 = vector.matrix_multiply %37, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf16>, vector<2xf16>) -> vector<2xf16>
    %196 = arith.cmpi slt, %false_1, %false_2 : i1
    %197 = bufferization.clone %alloc_21 : memref<2x2xi16> to memref<2x2xi16>
    %198 = scf.if %146 -> (i1) {
      %262 = index.ceildivs %135, %69
      %263 = tensor.empty() : tensor<9x2xi64>
      %264 = math.round %cst_27 : f16
      %265 = math.ceil %cst_4 : f32
      %266 = math.ipowi %5, %5 : tensor<2xi1>
      %267 = math.sqrt %cst_22 : f16
      %268 = math.absi %6 : tensor<2x2xi32>
      %from_elements_42 = tensor.from_elements %cst_3, %cst_3, %cst, %cst_4, %cst_4, %cst_4, %cst_3, %cst_4, %cst, %cst_3, %cst_0, %cst_4, %cst_3, %cst_3, %cst_4, %cst_0, %cst_4, %cst_4 : tensor<9x2xf32>
      scf.yield %false_5 : i1
    } else {
      %262 = arith.remui %c676896590_i32, %c1_i32 : i32
      %alloca_42 = memref.alloca() : memref<2xf16>
      %263 = math.cos %cst_3 : f32
      %264 = arith.remui %c517505369_i32, %c1_i32 : i32
      %265 = index.maxu %126, %c2
      %266 = math.rsqrt %76 : tensor<2x2xf32>
      %267 = affine.load %alloc_18[%c15] : memref<2xi64>
      %268 = scf.execute_region -> i32 {
        %269 = math.ctpop %c15626_i16 : i16
        %270 = arith.remsi %false_1, %59 : i1
        %271 = vector.shuffle %104, %110 [1, 2, 3, 4, 5, 6, 7, 10, 12, 14, 17] : vector<9x2xi1>, vector<9x2xi1>
        %alloca_43 = memref.alloca() : memref<2x2xi64>
        %272 = affine.apply affine_map<(d0) -> ((d0 mod 4 + 128) ceildiv 64)>(%c6)
        %273 = arith.shli %c-20968_i16, %c15626_i16 : i16
        %274 = arith.ceildivsi %c1602653633_i64, %c1602653633_i64 : i64
        %from_elements_44 = tensor.from_elements %c517505369_i32, %c1_i32, %c676896590_i32, %c544520022_i32 : tensor<2x2xi32>
        %275 = arith.negf %cst_27 : f16
        %276 = bufferization.clone %alloc_20 : memref<9x2xf16> to memref<9x2xf16>
        %277 = index.maxu %c9, %186
        %278 = arith.maxui %c517505369_i32, %c1351347186_i32 : i32
        %279 = math.ceil %18 : tensor<2xf16>
        %280 = arith.minui %c1351347186_i32, %c544520022_i32 : i32
        %281 = vector.insert %167, %195 [0] : f16 into vector<2xf16>
        %282 = math.tan %56 : tensor<2xf16>
        scf.yield %c1_i32 : i32
      }
      scf.yield %false_5 : i1
    }
    affine.for %arg1 = 0 to 35 {
    }
    %199 = bufferization.clone %alloc_13 : memref<2xi32> to memref<2xi32>
    %200 = affine.load %alloc_9[%c4] : memref<2xf32>
    %201 = vector.splat %c1351347186_i32 : vector<9x2xi32>
    %202 = vector.broadcast %c1351347186_i32 : i32 to vector<9x2xi32>
    %203 = affine.if affine_set<(d0, d1, d2) : ((d1 + 64) * 4 >= 0)>(%c10, %c10, %c10) -> f32 {
      %262 = affine.load %alloc_8[%c5, %c6] : memref<9x2xi64>
      %263 = affine.load %32[%c15, %c5] : memref<9x2xi16>
      %collapsed_42 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi16> into tensor<?xi16>
      %264 = index.sizeof
      %265 = vector.insertelement %cst_0, %153[%c13 : index] : vector<2xf32>
      %266 = vector.broadcast %263 : i16 to vector<9xi16>
      %267 = vector.broadcast %198 : i1 to vector<9xi1>
      %268 = vector.maskedload %alloc_21[%c1, %c1], %267, %266 : memref<2x2xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %269 = arith.maxui %c1065208473_i64, %170 : i64
      %270 = index.divu %162, %162
      affine.yield %cst_4 : f32
    } else {
      %c784837679_i32 = arith.constant 784837679 : i32
      %262 = math.fma %4, %4, %4 : tensor<2x2xf16>
      %263 = bufferization.to_tensor %alloc_20 : memref<9x2xf16>
      %264 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
      %265 = math.ctlz %11 : tensor<9x2xi16>
      %266 = index.casts %c676896590_i32 : i32 to index
      %267 = math.ctpop %8 : tensor<9x2xi32>
      %268 = arith.muli %170, %c1065208473_i64 : i64
      affine.yield %cst_3 : f32
    }
    %204 = vector.multi_reduction <minf>, %37, %167 [0] : vector<1xf16> to f16
    %205 = index.ceildivs %c14, %c7
    %206 = arith.remf %cst_4, %cst_3 : f32
    %207 = math.atan2 %14, %14 : tensor<2xf32>
    %208 = math.round %2 : tensor<2xf32>
    %209 = arith.mulf %cst_3, %cst_3 : f32
    %210 = math.tanh %3 : tensor<9x2xf32>
    %211 = arith.muli %146, %198 : i1
    %212 = arith.floordivsi %false_1, %false_2 : i1
    %213 = math.floor %15 : tensor<9x2xf32>
    %214 = math.floor %167 : f16
    %215 = math.log1p %56 : tensor<2xf16>
    %216 = arith.ceildivsi %c1602653633_i64, %c1602653633_i64 : i64
    %217 = arith.mulf %204, %204 : f16
    %218 = math.absi %c1351347186_i32 : i32
    %219 = affine.apply affine_map<(d0) -> ((d0 mod 4 + 128) ceildiv 64)>(%162)
    %220 = vector.broadcast %c1_i32 : i32 to vector<2x2xi32>
    %221 = vector.outerproduct %119, %119, %220 {kind = #vector.kind<or>} : vector<2xi32>, vector<2xi32>
    %222 = math.tan %cst_27 : f16
    scf.execute_region {
      %262 = math.exp2 %167 : f16
      %263 = math.log1p %2 : tensor<2xf32>
      %264 = vector.broadcast %167 : f16 to vector<2x2xf16>
      %265 = vector.outerproduct %195, %25, %264 {kind = #vector.kind<maxf>} : vector<2xf16>, vector<2xf16>
      affine.store %cst_27, %alloc_12[%c3] : memref<2xf16>
      %266 = math.absf %167 : f16
      %267 = math.sqrt %18 : tensor<2xf16>
      %268 = vector.flat_transpose %119 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
      %269 = math.log10 %2 : tensor<2xf32>
      %270 = arith.cmpi slt, %c15626_i16, %c15626_i16 : i16
      %271 = arith.shli %c1065208473_i64, %170 : i64
      %272 = arith.minf %200, %cst_3 : f32
      affine.store %c1065208473_i64, %alloc_8[%c5, %c10] : memref<9x2xi64>
      memref.store %204, %alloc_12[%c0] : memref<2xf16>
      %273 = math.cttz %16 : tensor<2xi32>
      %274 = arith.mulf %cst_22, %cst_27 : f16
      %275 = arith.minui %false_2, %false_1 : i1
      scf.yield
    }
    %223 = arith.maxf %167, %cst_27 : f16
    scf.execute_region {
      %262 = arith.cmpf ule, %cst, %200 : f32
      %263 = arith.maxf %cst_27, %cst_27 : f16
      %264 = arith.xori %false_5, %false_2 : i1
      %265 = arith.remf %cst_22, %cst_22 : f16
      %266 = scf.while (%arg1 = %alloc_17) : (memref<9x2xi16>) -> memref<9x2xi16> {
        %278 = arith.andi %c1602653633_i64, %c1602653633_i64 : i64
        %rank_43 = tensor.rank %76 : tensor<2x2xf32>
        %279 = arith.maxui %c15626_i16, %c15626_i16 : i16
        %280 = math.cos %3 : tensor<9x2xf32>
        %281 = arith.cmpi sge, %170, %c1602653633_i64 : i64
        bufferization.dealloc_tensor %0 : tensor<2x2xi32>
        %282 = math.sqrt %cst_0 : f32
        %283 = index.mul %rank_30, %39
        scf.condition(%198) %alloc_14 : memref<9x2xi16>
      } do {
      ^bb0(%arg1: memref<9x2xi16>):
        %278 = vector.broadcast %cst_22 : f16 to vector<9xf16>
        %279 = vector.broadcast %198 : i1 to vector<9xi1>
        %280 = vector.maskedload %alloc_20[%c0, %c0], %279, %278 : memref<9x2xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %281 = arith.andi %false_1, %false_2 : i1
        %282 = math.floor %cst_3 : f32
        %283 = arith.ceildivsi %c1602653633_i64, %c1065208473_i64 : i64
        %284 = arith.divui %c15626_i16, %c-20968_i16 : i16
        %cst_43 = arith.constant 1.000000e+00 : f16
        %cst_44 = arith.constant 0.000000e+00 : f16
        %285 = vector.transfer_read %alloc_20[%c2, %c11], %cst_44 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<9x2xf16>, vector<2xf16>
        %286 = index.maxs %219, %121
        %287 = index.castu %198 : i1 to index
        %288 = index.maxu %286, %99
        %289 = math.floor %cst_0 : f32
        %290 = arith.remf %cst_4, %cst_3 : f32
        %291 = bufferization.to_memref %23 : memref<i64>
        %292 = index.sub %c7, %126
        %293 = math.fpowi %204, %c676896590_i32 : f16, i32
        %294 = bufferization.to_tensor %32 : memref<9x2xi16>
        %295 = arith.andi %c15626_i16, %c-20968_i16 : i16
        scf.yield %alloc_17 : memref<9x2xi16>
      }
      %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<9x2xf32> into tensor<9x2x1xf32>
      %267 = vector.matrix_multiply %117, %117 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
      %268 = bufferization.clone %alloc_14 : memref<9x2xi16> to memref<9x2xi16>
      %269 = math.cos %3 : tensor<9x2xf32>
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 2)>(%154, %c2, %180, %c5)
      %271 = bufferization.clone %alloc_21 : memref<2x2xi16> to memref<2x2xi16>
      %272 = tensor.empty() : tensor<2xi32>
      %mapped_42 = linalg.map ins(%16 : tensor<2xi32>) outs(%272 : tensor<2xi32>)
        (%in: i32) {
          %278 = math.floor %9 : tensor<2x2xf32>
          %279 = vector.broadcast %198 : i1 to vector<9x2xi1>
          %280 = arith.minui %false_1, %false : i1
          %281 = math.ceil %cst_0 : f32
          %282 = arith.addi %false_5, %146 : i1
          %283 = vector.splat %c-20968_i16 : vector<2x2xi16>
          %284 = math.fma %reduced, %18, %18 : tensor<2xf16>
          %285 = math.cttz %146 : i1
          %286 = math.tan %3 : tensor<9x2xf32>
          %287 = vector.insert %117, %104 [6] : vector<2xi1> into vector<9x2xi1>
          %288 = vector.bitcast %106 : vector<9x2xf32> to vector<9x2xf32>
          %collapsed_43 = tensor.collapse_shape %cast_29 [[0, 1]] : tensor<?x?xi16> into tensor<?xi16>
          %289 = memref.atomic_rmw muli %c544520022_i32, %alloc_15[%c7, %c1] : (i32, memref<9x2xi32>) -> i32
          %290 = index.mul %186, %41
          %291 = arith.muli %c1351347186_i32, %in : i32
          %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 2 + d3 + 4, d2 * -1024, (d3 - 32) mod 128, (d3 - 32) * 64)>(%c13, %194, %c14, %c9)
          memref.assume_alignment %197, 8 : memref<2x2xi16>
          %293 = index.casts %rank : index to i32
          %294 = math.absf %cst_3 : f32
          %295 = affine.apply affine_map<(d0, d1, d2) -> (-(((d0 - 2) ceildiv 32) floordiv 16) + d1)>(%c2, %c6, %39)
          %296 = math.exp2 %3 : tensor<9x2xf32>
          %297 = vector.broadcast %false_2 : i1 to vector<2xi1>
          %298 = arith.andi %c676896590_i32, %c544520022_i32 : i32
          %299 = arith.remui %c1351347186_i32, %c517505369_i32 : i32
          memref.store %cst_0, %122[%c4, %c0] : memref<9x2xf32>
          %300 = arith.andi %59, %198 : i1
          %301 = arith.remui %c1351347186_i32, %in : i32
          %302 = math.round %cst_3 : f32
          %303 = arith.ori %146, %false_2 : i1
          %304 = index.ceildivs %180, %100
          %305 = math.absi %c1602653633_i64 : i64
          %306 = arith.remf %167, %204 : f16
          %c0_i32_44 = arith.constant 0 : i32
          linalg.yield %c0_i32_44 : i32
        }
      %273 = tensor.empty(%88) : tensor<9x?xi16>
      %274 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
      %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %106, %128, %274 : vector<9x2xf32>, vector<9x2xf32> into vector<2x2xf32>
      %276 = math.absi %16 : tensor<2xi32>
      %277 = vector.extract %117[1] : vector<2xi1>
      scf.yield
    }
    %generated_34 = tensor.generate %c2, %96 {
    ^bb0(%arg1: index, %arg2: index):
      %262 = math.atan2 %200, %cst_0 : f32
      %263 = affine.load %alloc_11[%c7, %c5] : memref<9x2xi1>
      %264 = math.atan %204 : f16
      memref.assume_alignment %alloc_21, 2 : memref<2x2xi16>
      tensor.yield %c-20968_i16 : i16
    } : tensor<?x?xi16>
    %224 = bufferization.to_tensor %alloc_16 : memref<2x2xi1>
    %225 = arith.remsi %c676896590_i32, %c1351347186_i32 : i32
    %226 = index.add %c3, %c7
    %227 = arith.remsi %c1351347186_i32, %c517505369_i32 : i32
    %228 = affine.max affine_map<(d0, d1) -> ((d0 - d1) ceildiv 16 - 64, -d0)>(%41, %69)
    %229 = bufferization.clone %alloc_11 : memref<9x2xi1> to memref<9x2xi1>
    %230 = vector.bitcast %105 : vector<9x2xi32> to vector<9x2xi32>
    %generated_35 = tensor.generate %c14 {
    ^bb0(%arg1: index, %arg2: index):
      %262 = vector.broadcast %204 : f16 to vector<1x1xf16>
      %263 = vector.outerproduct %91, %37, %262 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
      %264 = vector.broadcast %c544520022_i32 : i32 to vector<2x2xi32>
      %265 = affine.max affine_map<(d0, d1) -> (d0, -(d0 floordiv 16), d1, 0)>(%185, %41)
      %266 = math.log1p %200 : f32
      tensor.yield %c-20968_i16 : i16
    } : tensor<?x2xi16>
    %rank_36 = tensor.rank %13 : tensor<9x2xi32>
    %alloc_37 = memref.alloc() : memref<2x2xi16>
    %231 = tensor.empty() : tensor<9x2xi16>
    %232 = linalg.matmul ins(%12, %alloc_37 : tensor<9x2xi16>, memref<2x2xi16>) outs(%231 : tensor<9x2xi16>) -> tensor<9x2xi16>
    %233 = math.round %4 : tensor<2x2xf16>
    %234 = arith.xori %c1065208473_i64, %c1602653633_i64 : i64
    %235 = math.cos %15 : tensor<9x2xf32>
    %collapsed_38 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
    %alloc_39 = memref.alloc() : memref<2x2xi16>
    %236 = vector.create_mask %135, %45 : vector<2x2xi1>
    %237 = math.tanh %2 : tensor<2xf32>
    memref.alloca_scope  {
      %262 = math.cos %4 : tensor<2x2xf16>
      %generated_42 = tensor.generate %c7 {
      ^bb0(%arg1: index):
        %288 = index.casts %false_1 : i1 to index
        %289 = index.ceildivs %c6, %57
        %290 = index.ceildivs %c8, %57
        %alloca_46 = memref.alloca() : memref<9x2xf16>
        tensor.yield %198 : i1
      } : tensor<?xi1>
      %263 = vector.broadcast %cst_3 : f32 to vector<9x2xf32>
      %alloc_43 = memref.alloc() : memref<9x2xi16>
      scf.if %false_5 {
        %cast_46 = tensor.cast %collapsed_38 : tensor<18xi32> to tensor<?xi32>
        %288 = index.casts %c5 : index to i32
        %collapsed_47 = tensor.collapse_shape %15 [[0, 1]] : tensor<9x2xf32> into tensor<18xf32>
        %289 = index.sizeof
        %290 = math.rsqrt %cst_4 : f32
        %291 = vector.extract %37[0] : vector<1xf16>
        %292 = arith.remui %146, %59 : i1
        %293 = math.exp2 %3 : tensor<9x2xf32>
      } else {
        %288 = bufferization.to_tensor %alloc_16 : memref<2x2xi1>
        %289 = vector.broadcast %cst_3 : f32 to vector<9x2xf32>
        %290 = vector.fma %289, %128, %128 : vector<9x2xf32>
        %rank_46 = tensor.rank %generated_35 : tensor<?x2xi16>
        %291 = bufferization.clone %alloc : memref<9x2xf16> to memref<9x2xf16>
        %292 = index.floordivs %c7, %c15
        %293 = arith.ori %c1351347186_i32, %c1351347186_i32 : i32
        %alloc_47 = memref.alloc() : memref<2xi1>
        %294 = vector.gather %alloc_47[%c14] [%105], %104, %110 : memref<2xi1>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi1> into vector<9x2xi1>
        %cast_48 = tensor.cast %21 : tensor<2xi64> to tensor<?xi64>
      }
      %cast_44 = tensor.cast %13 : tensor<9x2xi32> to tensor<?x?xi32>
      %264 = math.roundeven %14 : tensor<2xf32>
      %265 = affine.min affine_map<(d0) -> ((d0 ceildiv 4) ceildiv 128, d0, ((d0 ceildiv 4) ceildiv 128) floordiv 64)>(%154)
      %266 = vector.load %150[%c0, %c1] : memref<9x2xi16>, vector<2xi16>
      %267 = arith.xori %false_5, %false_2 : i1
      %268 = bufferization.to_tensor %alloc_7 : memref<9x2xf32>
      %269 = vector.broadcast %200 : f32 to vector<2xf32>
      %270 = vector.fma %269, %153, %153 : vector<2xf32>
      %271 = arith.mulf %204, %167 : f16
      %from_elements_45 = tensor.from_elements %c15626_i16, %c-20968_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c-20968_i16, %c-20968_i16, %c15626_i16, %c15626_i16, %c15626_i16, %c-20968_i16, %c15626_i16, %c-20968_i16, %c15626_i16 : tensor<9x2xi16>
      %272 = scf.while (%arg1 = %197) : (memref<2x2xi16>) -> memref<2x2xi16> {
        %288 = tensor.empty() : tensor<2x2xi16>
        %289 = tensor.empty() : tensor<2xi1>
        %290 = math.copysign %200, %cst : f32
        %291 = arith.andi %59, %146 : i1
        %292 = math.sqrt %14 : tensor<2xf32>
        %293 = arith.remsi %c15626_i16, %c15626_i16 : i16
        %cast_46 = tensor.cast %8 : tensor<9x2xi32> to tensor<?x?xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %110, %110, %236 : vector<9x2xi1>, vector<9x2xi1> into vector<2x2xi1>
        scf.condition(%false) %197 : memref<2x2xi16>
      } do {
      ^bb0(%arg1: memref<2x2xi16>):
        %288 = math.ctlz %13 : tensor<9x2xi32>
        %289 = arith.ceildivsi %false_1, %false_1 : i1
        memref.store %59, %229[%c0, %c0] : memref<9x2xi1>
        %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
        %290 = arith.minf %204, %204 : f16
        %291 = index.castu %186 : index to i32
        %292 = arith.xori %c676896590_i32, %c1_i32 : i32
        %293 = arith.addi %c1351347186_i32, %c544520022_i32 : i32
        %294 = index.mul %rank_36, %154
        affine.store %c1065208473_i64, %alloc_8[%c10, %c5] : memref<9x2xi64>
        %295 = arith.maxui %false_1, %false : i1
        %296 = math.exp2 %200 : f32
        %297 = arith.minui %59, %146 : i1
        %298 = affine.apply affine_map<(d0) -> (d0 * 128)>(%c6)
        %299 = bufferization.clone %alloc_11 : memref<9x2xi1> to memref<9x2xi1>
        %300 = arith.maxf %cst_3, %cst_4 : f32
        scf.yield %alloc_6 : memref<2x2xi16>
      }
      %273 = arith.andi %c15626_i16, %c-20968_i16 : i16
      %274 = vector.flat_transpose %269 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
      %275 = arith.divsi %59, %false_2 : i1
      %276 = arith.shli %false_5, %146 : i1
      affine.for %arg1 = 0 to 85 {
      }
      memref.store %c-20968_i16, %32[%c6, %c1] : memref<9x2xi16>
      %277 = affine.max affine_map<(d0, d1, d2) -> (-d0, d2, d0 * 2)>(%148, %148, %135)
      %278 = tensor.empty(%185) : tensor<9x?xf32>
      %279 = math.absi %22 : tensor<i64>
      %280 = memref.load %alloc_21[%c1, %c1] : memref<2x2xi16>
      %281 = math.copysign %268, %15 : tensor<9x2xf32>
      %282 = math.tanh %14 : tensor<2xf32>
      %283 = arith.divsi %c1_i32, %c1351347186_i32 : i32
      %284 = math.ctpop %false_2 : i1
      %285 = affine.load %alloc_11[%c12, %c8] : memref<9x2xi1>
      %286 = math.ctlz %7 : tensor<2xi32>
      %287 = vector.multi_reduction <or>, %119, %119 [] : vector<2xi32> to vector<2xi32>
    }
    %238 = index.castu %c14 : index to i32
    %239 = arith.minui %c544520022_i32, %c1_i32 : i32
    %240 = vector.broadcast %c676896590_i32 : i32 to vector<9x2xi32>
    %241 = arith.shrui %c15626_i16, %c15626_i16 : i16
    %242 = arith.ori %170, %c1602653633_i64 : i64
    %243 = vector.multi_reduction <mul>, %152, %cst_0 [0] : vector<2xf32> to f32
    %244 = index.ceildivs %228, %c1
    %245 = arith.cmpf ule, %cst, %cst_3 : f32
    %246 = math.floor %14 : tensor<2xf32>
    %247 = affine.load %alloc_11[%c10, %c3] : memref<9x2xi1>
    %248 = math.exp %3 : tensor<9x2xf32>
    %249 = vector.broadcast %cst_0 : f32 to vector<9x2xf32>
    %250 = vector.fma %249, %128, %128 : vector<9x2xf32>
    %251 = math.floor %200 : f32
    %252 = vector.insertelement %cst, %152[%c14 : index] : vector<2xf32>
    %253 = arith.xori %false_5, %198 : i1
    %254 = scf.while (%arg1 = %cst) : (f32) -> f32 {
      %262 = math.tanh %56 : tensor<2xf16>
      %263 = arith.remf %cst, %200 : f32
      %alloca_42 = memref.alloca() : memref<9x2xi64>
      %264 = index.maxu %rank, %c13
      %265 = arith.divsi %247, %59 : i1
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %104, %104, %236 : vector<9x2xi1>, vector<9x2xi1> into vector<2x2xi1>
      %267 = index.ceildivs %rank_36, %109
      %268 = bufferization.to_memref %3 : memref<9x2xf32>
      scf.condition(%146) %200 : f32
    } do {
    ^bb0(%arg1: f32):
      %262 = arith.ceildivsi %false_1, %false_5 : i1
      %263 = arith.minf %arg1, %cst_0 : f32
      %264 = vector.multi_reduction <maxui>, %230, %202 [] : vector<9x2xi32> to vector<9x2xi32>
      %265 = math.round %cst_3 : f32
      %266 = arith.minf %cst_3, %cst_0 : f32
      %267 = vector.splat %c6 : vector<9x2xindex>
      %268 = tensor.empty(%154) : tensor<?xi64>
      %269 = vector.broadcast %170 : i64 to vector<2xi64>
      %270 = vector.maskedload %alloc_8[%c0, %c1], %117, %269 : memref<9x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %271 = arith.remsi %c517505369_i32, %c517505369_i32 : i32
      %272 = vector.broadcast %167 : f16 to vector<9x2xf16>
      %273 = memref.atomic_rmw mins %c-20968_i16, %alloc_14[%c8, %c0] : (i16, memref<9x2xi16>) -> i16
      %alloca_42 = memref.alloca() : memref<9x2xi64>
      %274 = arith.divsi %c-20968_i16, %c-20968_i16 : i16
      %275 = arith.andi %c1351347186_i32, %c544520022_i32 : i32
      %276 = arith.ori %false_1, %false_1 : i1
      %277 = bufferization.to_memref %2 : memref<2xf32>
      scf.yield %arg1 : f32
    }
    %255 = vector.insertelement %200, %153[%c15 : index] : vector<2xf32>
    %256 = arith.remf %cst_0, %cst : f32
    %257 = arith.maxsi %c544520022_i32, %c517505369_i32 : i32
    affine.store %cst_22, %alloc_20[%c12, %c13] : memref<9x2xf16>
    %cast_40 = tensor.cast %5 : tensor<2xi1> to tensor<?xi1>
    %258 = tensor.empty() : tensor<2x2xi1>
    %259 = linalg.copy ins(%224 : tensor<2x2xi1>) outs(%258 : tensor<2x2xi1>) -> tensor<2x2xi1>
    %260 = tensor.empty() : tensor<4xi32>
    %transposed = linalg.transpose ins(%collapsed : tensor<4xi32>) outs(%260 : tensor<4xi32>) permutation = [0] 
    %alloc_41 = memref.alloc() : memref<i1>
    linalg.reduce ins(%5 : tensor<2xi1>) outs(%alloc_41 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %262 = math.ctlz %0 : tensor<2x2xi32>
        %263 = math.rsqrt %3 : tensor<9x2xf32>
        %264 = arith.ori %c1351347186_i32, %c676896590_i32 : i32
        %265 = bufferization.to_tensor %alloc_18 : memref<2xi64>
        %266 = index.sizeof
        %267 = arith.divsi %c1602653633_i64, %170 : i64
        %268 = arith.subi %false_1, %false_1 : i1
        %269 = arith.cmpi slt, %c517505369_i32, %c517505369_i32 : i32
        %true = arith.constant true
        linalg.yield %true : i1
      }
    scf.parallel (%arg1, %arg2) = (%99, %99) to (%96, %86) step (%c4, %c11) {
      %262 = math.exp2 %cst_0 : f32
      %263 = math.ctpop %0 : tensor<2x2xi32>
      %264 = math.ctlz %false_1 : i1
      %265 = math.copysign %3, %15 : tensor<9x2xf32>
      %266 = tensor.empty(%41) : tensor<2x?xi64>
      %267 = arith.minf %cst_4, %200 : f32
      %268 = math.ctpop %13 : tensor<9x2xi32>
      %269 = arith.maxsi %false, %146 : i1
      %270 = vector.outerproduct %117, %117, %236 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
      %271 = arith.remf %243, %243 : f32
      %272 = math.ipowi %6, %0 : tensor<2x2xi32>
      %273 = arith.ori %c15626_i16, %c-20968_i16 : i16
      %274 = index.ceildivs %86, %109
      %275 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
      %276 = vector.outerproduct %152, %152, %275 {kind = #vector.kind<maxf>} : vector<2xf32>, vector<2xf32>
      %277 = arith.cmpi slt, %c15626_i16, %c-20968_i16 : i16
      %278 = arith.shrsi %c15626_i16, %c15626_i16 : i16
      scf.yield
    }
    %261 = affine.vector_load %197[%228, %109] : memref<2x2xi16>, vector<9xi16>
    affine.vector_store %37, %alloc_12[%c14] : memref<2xf16>, vector<1xf16>
    vector.print %20 : vector<2xf16>
    vector.print %25 : vector<2xf16>
    vector.print %37 : vector<1xf16>
    vector.print %54 : vector<i32>
    vector.print %91 : vector<1xf16>
    vector.print %103 : vector<9x2xf32>
    vector.print %104 : vector<9x2xi1>
    vector.print %105 : vector<9x2xi32>
    vector.print %106 : vector<9x2xf32>
    vector.print %110 : vector<9x2xi1>
    vector.print %111 : vector<f32>
    vector.print %117 : vector<2xi1>
    vector.print %119 : vector<2xi32>
    vector.print %128 : vector<9x2xf32>
    vector.print %152 : vector<2xf32>
    vector.print %153 : vector<2xf32>
    vector.print %195 : vector<2xf16>
    vector.print %202 : vector<9x2xi32>
    vector.print %230 : vector<9x2xi32>
    vector.print %236 : vector<2x2xi1>
    vector.print %240 : vector<9x2xi32>
    vector.print %249 : vector<9x2xf32>
    vector.print %250 : vector<9x2xf32>
    vector.print %261 : vector<9xi16>
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %c-20968_i16 : i16
    vector.print %c676896590_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c1351347186_i32 : i32
    vector.print %c1602653633_i64 : i64
    vector.print %c1065208473_i64 : i64
    vector.print %c517505369_i32 : i32
    vector.print %false_1 : i1
    vector.print %c15626_i16 : i16
    vector.print %c544520022_i32 : i32
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %cst_22 : f16
    vector.print %59 : i1
    vector.print %146 : i1
    vector.print %167 : f16
    vector.print %170 : i64
    vector.print %cst_27 : f16
    vector.print %c1_i32 : i32
    vector.print %198 : i1
    vector.print %200 : f32
    vector.print %204 : f16
    vector.print %243 : f32
    vector.print %247 : i1
    return
  }
}
