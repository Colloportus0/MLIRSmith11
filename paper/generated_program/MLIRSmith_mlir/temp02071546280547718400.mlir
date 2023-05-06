module {
  func.func @func1(%arg0: tensor<6x6xi64>) {
    %cst = arith.constant 5.350400e+04 : f16
    %cst_0 = arith.constant 1.41789581E+9 : f32
    %c-8157_i16 = arith.constant -8157 : i16
    %c1697511383_i32 = arith.constant 1697511383 : i32
    %false = arith.constant false
    %cst_1 = arith.constant 6.464000e+04 : f16
    %c1523921471_i32 = arith.constant 1523921471 : i32
    %c437334091_i64 = arith.constant 437334091 : i64
    %false_2 = arith.constant false
    %true = arith.constant true
    %c-30156_i16 = arith.constant -30156 : i16
    %c306918922_i32 = arith.constant 306918922 : i32
    %c-549_i16 = arith.constant -549 : i16
    %c7964_i16 = arith.constant 7964 : i16
    %cst_3 = arith.constant 5.299200e+04 : f16
    %cst_4 = arith.constant 1.65727232E+9 : f32
    %0 = tensor.empty() : tensor<3xi32>
    %1 = tensor.empty() : tensor<6x6xi32>
    %2 = tensor.empty() : tensor<3xi16>
    %3 = tensor.empty() : tensor<3xf16>
    %4 = tensor.empty() : tensor<4xi1>
    %5 = tensor.empty() : tensor<16xi16>
    %6 = tensor.empty() : tensor<3xi1>
    %7 = tensor.empty() : tensor<16xf16>
    %8 = tensor.empty() : tensor<6x6xi1>
    %9 = tensor.empty() : tensor<4xf32>
    %10 = tensor.empty() : tensor<16xi64>
    %11 = tensor.empty() : tensor<3xi16>
    %12 = tensor.empty() : tensor<16xf16>
    %13 = tensor.empty() : tensor<6x6xi16>
    %14 = tensor.empty() : tensor<6x6xi32>
    %15 = tensor.empty() : tensor<4xi64>
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
    %alloc = memref.alloc() : memref<16xi32>
    %alloc_5 = memref.alloc() : memref<4xi32>
    %alloc_6 = memref.alloc() : memref<3xi16>
    %alloc_7 = memref.alloc() : memref<16xi32>
    %alloc_8 = memref.alloc() : memref<4xi32>
    %alloc_9 = memref.alloc() : memref<16xi16>
    %alloc_10 = memref.alloc() : memref<16xi1>
    %alloc_11 = memref.alloc() : memref<3xi64>
    %alloc_12 = memref.alloc() : memref<16xi32>
    %alloc_13 = memref.alloc() : memref<4xi1>
    %alloc_14 = memref.alloc() : memref<6x6xi32>
    %alloc_15 = memref.alloc() : memref<3xi32>
    %alloc_16 = memref.alloc() : memref<3xf16>
    %alloc_17 = memref.alloc() : memref<6x6xi64>
    %alloc_18 = memref.alloc() : memref<6x6xi32>
    %alloc_19 = memref.alloc() : memref<4xi64>
    %16 = tensor.empty() : tensor<3xf16>
    %17 = linalg.copy ins(%3 : tensor<3xf16>) outs(%16 : tensor<3xf16>) -> tensor<3xf16>
    %18 = tensor.empty() : tensor<16xi32>
    %transposed = linalg.transpose ins(%alloc_12 : memref<16xi32>) outs(%18 : tensor<16xi32>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<i32>
    linalg.reduce ins(%transposed : tensor<16xi32>) outs(%alloc_20 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %246 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %247 = vector.transpose %246, [0] : vector<16xf32> to vector<16xf32>
        %248 = vector.create_mask %c5 : vector<4xi1>
        %249 = math.absi %10 : tensor<16xi64>
        %250 = math.atan2 %cst, %cst_1 : f16
        %251 = vector.extract %248[0] : vector<4xi1>
        %252 = bufferization.to_memref %8 : memref<6x6xi1>
        %253 = vector.insertelement %cst_0, %246[%c11 : index] : vector<16xf32>
        %254 = vector.extract_strided_slice %246 {offsets = [11], sizes = [4], strides = [1]} : vector<16xf32> to vector<4xf32>
        %c0_i32_56 = arith.constant 0 : i32
        linalg.yield %c0_i32_56 : i32
      }
    %19 = scf.parallel (%arg1) = (%c0) to (%c10) step (%c9) init (%10) -> tensor<16xi64> {
      %246 = bufferization.clone %alloc_20 : memref<i32> to memref<i32>
      %247 = arith.minui %c306918922_i32, %c306918922_i32 : i32
      %248 = arith.remui %c7964_i16, %c7964_i16 : i16
      %249 = math.absi %18 : tensor<16xi32>
      %250 = math.ctpop %13 : tensor<6x6xi16>
      %251 = affine.for %arg2 = 0 to 73 iter_args(%arg3 = %7) -> (tensor<16xf16>) {
        affine.yield %7 : tensor<16xf16>
      }
      %alloc_56 = memref.alloc() : memref<3xf16>
      memref.copy %alloc_16, %alloc_56 : memref<3xf16> to memref<3xf16>
      %252 = math.ctpop %0 : tensor<3xi32>
      %253 = memref.atomic_rmw addi %c437334091_i64, %alloc_19[%c1] : (i64, memref<4xi64>) -> i64
      %254 = arith.remui %c437334091_i64, %c437334091_i64 : i64
      %255 = math.atan2 %12, %7 : tensor<16xf16>
      %256 = index.castu %c1 : index to i32
      %257 = index.maxu %c3, %c1
      %258 = bufferization.clone %alloc_10 : memref<16xi1> to memref<16xi1>
      memref.store %c1523921471_i32, %246[] : memref<i32>
      memref.store %cst, %alloc_16[%c1] : memref<3xf16>
      %259 = tensor.empty() : tensor<16xi64>
      scf.reduce(%259)  : tensor<16xi64> {
      ^bb0(%arg2: tensor<16xi64>, %arg3: tensor<16xi64>):
        %260 = memref.load %258[%c3] : memref<16xi1>
        %261 = arith.andi %c7964_i16, %c-549_i16 : i16
        %262 = math.floor %cst_4 : f32
        %263 = math.ceil %17 : tensor<3xf16>
        %264 = arith.remsi %true, %false_2 : i1
        %265 = vector.broadcast %cst_3 : f16 to vector<1xf16>
        %266 = vector.extract %265[0] : vector<1xf16>
        %267 = memref.atomic_rmw maxs %c1697511383_i32, %246[] : (i32, memref<i32>) -> i32
        %268 = math.rsqrt %cst_0 : f32
        %269 = tensor.empty() : tensor<16xi64>
        scf.reduce.return %269 : tensor<16xi64>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_8[%c1] : memref<4xi32>, vector<4xi32>
    affine.vector_store %20, %alloc_14[%c14, %c12] : memref<6x6xi32>, vector<4xi32>
    %21 = tensor.empty() : tensor<16xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%alloc_9, %21 : memref<16xi16>, tensor<16xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %24 = vector.broadcast %c1523921471_i32 : i32 to vector<4x4xi32>
    %25 = vector.outerproduct %20, %20, %24 {kind = #vector.kind<minui>} : vector<4xi32>, vector<4xi32>
    %26 = math.ctpop %2 : tensor<3xi16>
    %27 = arith.shli %c437334091_i64, %c437334091_i64 : i64
    %28 = index.sizeof
    %29 = math.atan2 %cst_0, %cst_0 : f32
    %30 = math.absi %1 : tensor<6x6xi32>
    %31 = math.log10 %cst : f16
    %32 = arith.remsi %c1697511383_i32, %c1697511383_i32 : i32
    %33 = vector.extract_strided_slice %20 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi32> to vector<3xi32>
    scf.index_switch %c0 
    case 1 {
      %246 = math.floor %3 : tensor<3xf16>
      %247 = arith.minf %cst_0, %cst_4 : f32
      %from_elements_56 = tensor.from_elements %false_2, %true, %false_2 : tensor<3xi1>
      %248 = vector.splat %cst : vector<4xf16>
      %249 = arith.cmpf ule, %cst_3, %cst_3 : f16
      %250 = vector.insert %c1697511383_i32, %20 [2] : i32 into vector<4xi32>
      %251 = vector.extract %20[0] : vector<4xi32>
      %252 = scf.while (%arg1 = %alloc_6) : (memref<3xi16>) -> memref<3xi16> {
        %260 = affine.apply affine_map<(d0, d1) -> ((d0 + 64) * 128)>(%28, %c13)
        %261 = index.floordivs %c4, %c4
        %262 = math.exp %12 : tensor<16xf16>
        %263 = arith.cmpi eq, %c-30156_i16, %c-30156_i16 : i16
        %264 = math.floor %7 : tensor<16xf16>
        %collapsed_58 = tensor.collapse_shape %13 [[0, 1]] : tensor<6x6xi16> into tensor<36xi16>
        %265 = math.ipowi %c1697511383_i32, %c1523921471_i32 : i32
        %266 = memref.atomic_rmw ori %c1697511383_i32, %alloc_15[%c1] : (i32, memref<3xi32>) -> i32
        scf.condition(%true) %arg1 : memref<3xi16>
      } do {
      ^bb0(%arg1: memref<3xi16>):
        %260 = math.round %cst_4 : f32
        %261 = vector.load %alloc_19[%c0] : memref<4xi64>, vector<3xi64>
        %262 = index.divu %c14, %c7
        %263 = arith.addi %c-8157_i16, %c-30156_i16 : i16
        %264 = vector.broadcast %c1523921471_i32 : i32 to vector<4x4xi32>
        %265 = vector.outerproduct %20, %20, %264 {kind = #vector.kind<maxsi>} : vector<4xi32>, vector<4xi32>
        %266 = math.atan2 %12, %12 : tensor<16xf16>
        %267 = math.atan %cst_1 : f16
        %268 = math.absi %11 : tensor<3xi16>
        %269 = vector.load %alloc_8[%c3] : memref<4xi32>, vector<4xi32>
        %270 = math.exp2 %7 : tensor<16xf16>
        %true_58 = index.bool.constant true
        %271 = arith.divf %cst_1, %cst_1 : f16
        %splat_59 = tensor.splat %cst_3 : tensor<3xf16>
        %272 = vector.matrix_multiply %261, %261 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
        %273 = vector.broadcast %c1523921471_i32 : i32 to vector<16xi32>
        %274 = vector.broadcast %false : i1 to vector<16xi1>
        %275 = vector.gather %18[%262] [%273], %274, %273 : tensor<16xi32>, vector<16xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %276 = bufferization.clone %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
        scf.yield %arg1 : memref<3xi16>
      }
      %253 = math.exp2 %12 : tensor<16xf16>
      %254 = arith.subi %false_2, %true : i1
      %255 = vector.splat %c11 : vector<6x6xindex>
      %256 = vector.multi_reduction <minsi>, %20, %c1523921471_i32 [0] : vector<4xi32> to i32
      %257 = memref.load %alloc_17[%c1, %c0] : memref<6x6xi64>
      %258 = vector.extract %20[3] : vector<4xi32>
      %259 = affine.max affine_map<(d0, d1, d2) -> (d1 + 1)>(%c6, %c13, %c15)
      %expanded_57 = tensor.expand_shape %16 [[0, 1]] : tensor<3xf16> into tensor<3x1xf16>
      scf.yield
    }
    case 2 {
      scf.execute_region {
        %257 = math.exp %12 : tensor<16xf16>
        %258 = arith.divui %c-30156_i16, %c-8157_i16 : i16
        %259 = math.absf %17 : tensor<3xf16>
        %260 = arith.shli %c437334091_i64, %c437334091_i64 : i64
        %261 = arith.divf %cst_0, %cst_4 : f32
        %262 = vector.broadcast %c1697511383_i32 : i32 to vector<3x3xi32>
        %263 = vector.outerproduct %33, %33, %262 {kind = #vector.kind<minui>} : vector<3xi32>, vector<3xi32>
        %264 = arith.divsi %c1523921471_i32, %c1697511383_i32 : i32
        %265 = vector.splat %c306918922_i32 : vector<4xi32>
        %266 = arith.floordivsi %c437334091_i64, %c437334091_i64 : i64
        %267 = arith.maxui %c437334091_i64, %c437334091_i64 : i64
        %268 = arith.minf %cst_3, %cst_3 : f16
        %269 = arith.addf %cst_1, %cst_1 : f16
        %270 = memref.realloc %alloc_16 : memref<3xf16> to memref<6xf16>
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %33, %33, %c306918922_i32 : vector<3xi32>, vector<3xi32> into i32
        %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d3 mod 32 - 32, (d1 + d3 mod 32 - 32) ceildiv 2, d3 mod 32 - 63)>(%c7, %c12, %c5, %c11)
        %273 = math.absf %cst_0 : f32
        scf.yield
      }
      %246 = math.atan2 %cst_3, %cst_1 : f16
      %247 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %33, %33, %c306918922_i32 : vector<3xi32>, vector<3xi32> into i32
      %248 = vector.bitcast %20 : vector<4xi32> to vector<4xi32>
      %249 = vector.broadcast %cst : f16 to vector<6x6xf16>
      affine.for %arg1 = 0 to 83 {
      }
      %250 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 8 + (d1 floordiv 64) floordiv 32) floordiv 2, d1, (d0 ceildiv 8) floordiv 4, d0 floordiv 8)>(%c5, %c2)
      %251 = vector.flat_transpose %33 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
      %from_elements_56 = tensor.from_elements %false, %false_2, %true, %true, %false_2, %false, %false_2, %true, %false_2, %false_2, %true, %true, %false_2, %false, %true, %false, %false, %false_2, %false_2, %true, %false_2, %true, %false, %false, %false, %false_2, %true, %false, %false, %false, %true, %false, %false_2, %false, %false, %false : tensor<6x6xi1>
      %252 = scf.if %true -> (i32) {
        %257 = vector.broadcast %c437334091_i64 : i64 to vector<16xi64>
        %258 = vector.broadcast %false : i1 to vector<16xi1>
        %259 = vector.maskedload %alloc_19[%c2], %258, %257 : memref<4xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %260 = math.log10 %3 : tensor<3xf16>
        %261 = arith.remf %cst_1, %cst : f16
        %262 = memref.atomic_rmw minu %c437334091_i64, %alloc_11[%c2] : (i64, memref<3xi64>) -> i64
        %263 = arith.andi %false, %false_2 : i1
        %264 = vector.broadcast %c1523921471_i32 : i32 to vector<6xi32>
        %265 = vector.broadcast %false_2 : i1 to vector<6xi1>
        %266 = vector.maskedload %alloc_15[%c0], %265, %264 : memref<3xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        vector.print %33 : vector<3xi32>
        %true_58 = index.bool.constant true
        scf.yield %c1523921471_i32 : i32
      } else {
        %257 = affine.min affine_map<(d0) -> (((d0 + 16) * 2 - (d0 - 8)) * 4, ((d0 + 16) * 2 - (d0 - 8)) * 4)>(%c5)
        %258 = vector.transpose %20, [0] : vector<4xi32> to vector<4xi32>
        %259 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        %260 = vector.insert %259, %249 [2] : vector<6xf16> into vector<6x6xf16>
        %261 = math.fma %9, %9, %9 : tensor<4xf32>
        %262 = math.exp %12 : tensor<16xf16>
        %263 = index.maxu %c7, %c0
        %alloc_58 = memref.alloc() : memref<3xi32>
        %264 = vector.broadcast %c306918922_i32 : i32 to vector<3x3xi32>
        %265 = vector.outerproduct %251, %251, %264 {kind = #vector.kind<xor>} : vector<3xi32>, vector<3xi32>
        scf.yield %c1697511383_i32 : i32
      }
      %253 = math.atan %3 : tensor<3xf16>
      %inserted = tensor.insert %c1697511383_i32 into %transposed[%c14] : tensor<16xi32>
      %254 = arith.cmpf oeq, %cst, %cst : f16
      %from_elements_57 = tensor.from_elements %false_2, %true, %false : tensor<3xi1>
      %255 = index.floordivs %c15, %c11
      %256 = index.sizeof
      scf.yield
    }
    case 3 {
      %246 = arith.ori %false, %true : i1
      %alloc_56 = memref.alloc() : memref<3xi1>
      memref.tensor_store %6, %alloc_56 : memref<3xi1>
      %247 = vector.transpose %33, [0] : vector<3xi32> to vector<3xi32>
      memref.store %c437334091_i64, %alloc_17[%c2, %c0] : memref<6x6xi64>
      %248 = index.add %c12, %c5
      %249 = math.ctpop %false_2 : i1
      %expanded_57 = tensor.expand_shape %4 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
      %250 = math.ctpop %0 : tensor<3xi32>
      %251 = vector.broadcast %c437334091_i64 : i64 to vector<i64>
      %252 = vector.transfer_write %251, %10[%c8] : vector<i64>, tensor<16xi64>
      %253 = math.fpowi %3, %0 : tensor<3xf16>, tensor<3xi32>
      %254 = vector.insert %c1523921471_i32, %20 [3] : i32 into vector<4xi32>
      %extracted_58 = tensor.extract %8[%c0, %c3] : tensor<6x6xi1>
      %255 = math.floor %cst_4 : f32
      %256 = arith.minsi %c7964_i16, %c-549_i16 : i16
      %257 = index.sizeof
      scf.index_switch %c15 
      case 1 {
        %258 = math.powf %7, %12 : tensor<16xf16>
        %259 = vector.multi_reduction <add>, %20, %20 [] : vector<4xi32> to vector<4xi32>
        %rank_59 = tensor.rank %10 : tensor<16xi64>
        %260 = arith.addf %cst_0, %cst_0 : f32
        %261 = vector.extract %33[1] : vector<3xi32>
        %262 = memref.realloc %alloc_10 : memref<16xi1> to memref<6xi1>
        %263 = vector.matrix_multiply %20, %33 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<4xi32>, vector<3xi32>) -> vector<12xi32>
        %264 = math.ctlz %14 : tensor<6x6xi32>
        %alloca_60 = memref.alloca() : memref<4xi64>
        %265 = arith.minsi %c7964_i16, %c7964_i16 : i16
        %266 = arith.minsi %c7964_i16, %c7964_i16 : i16
        %267 = math.expm1 %12 : tensor<16xf16>
        %cast_61 = tensor.cast %0 : tensor<3xi32> to tensor<?xi32>
        %268 = arith.minf %cst, %cst_3 : f16
        %269 = arith.remui %c1523921471_i32, %c1697511383_i32 : i32
        %270 = vector.extract %20[3] : vector<4xi32>
        scf.yield
      }
      case 2 {
        %258 = vector.broadcast %c1697511383_i32 : i32 to vector<3x3xi32>
        %259 = vector.outerproduct %33, %33, %258 {kind = #vector.kind<add>} : vector<3xi32>, vector<3xi32>
        %alloc_59 = memref.alloc() : memref<4xi64>
        bufferization.dealloc_tensor %3 : tensor<3xf16>
        %260 = index.sizeof
        %261 = math.ipowi %c-8157_i16, %c7964_i16 : i16
        %262 = index.sizeof
        %263 = affine.max affine_map<(d0, d1) -> ((d0 + 128) ceildiv 2 - d0, (d0 + d1) floordiv 8, d0 + 128)>(%c3, %260)
        %264 = bufferization.clone %alloc_20 : memref<i32> to memref<i32>
        %from_elements_60 = tensor.from_elements %c-30156_i16, %c-30156_i16, %c-549_i16, %c-30156_i16, %c-8157_i16, %c-549_i16, %c-549_i16, %c-8157_i16, %c7964_i16, %c-8157_i16, %c7964_i16, %c-549_i16, %c-30156_i16, %c-549_i16, %c7964_i16, %c-30156_i16 : tensor<16xi16>
        %false_61 = index.bool.constant false
        %265 = arith.muli %extracted_58, %true : i1
        %266 = arith.maxui %c-30156_i16, %c-8157_i16 : i16
        %267 = arith.cmpf oeq, %cst_3, %cst_3 : f16
        %268 = memref.load %alloc_7[%c7] : memref<16xi32>
        %269 = math.round %cst_0 : f32
        %from_elements_62 = tensor.from_elements %c-30156_i16, %c-549_i16, %c-549_i16, %c-8157_i16 : tensor<4xi16>
        scf.yield
      }
      case 3 {
        %258 = arith.cmpi sgt, %false, %false : i1
        %259 = arith.remf %cst_4, %cst_4 : f32
        %260 = vector.splat %c9 : vector<6x6xindex>
        %261 = arith.muli %c-549_i16, %c-8157_i16 : i16
        %262 = math.tan %17 : tensor<3xf16>
        %263 = arith.addi %c437334091_i64, %c437334091_i64 : i64
        %264 = math.absi %expanded_57 : tensor<4x1xi1>
        %265 = math.round %17 : tensor<3xf16>
        %266 = arith.addf %cst, %cst_1 : f16
        %267 = arith.minsi %c437334091_i64, %c437334091_i64 : i64
        %268 = vector.extract %33[0] : vector<3xi32>
        %269 = memref.load %alloc_16[%c0] : memref<3xf16>
        %270 = arith.ori %c7964_i16, %c7964_i16 : i16
        %collapsed_59 = tensor.collapse_shape %13 [[0, 1]] : tensor<6x6xi16> into tensor<36xi16>
        %271 = arith.floordivsi %c437334091_i64, %c437334091_i64 : i64
        %272 = math.ctpop %false : i1
        scf.yield
      }
      default {
        %258 = math.round %12 : tensor<16xf16>
        %259 = memref.realloc %alloc_9 : memref<16xi16> to memref<6xi16>
        %260 = index.casts %c-549_i16 : i16 to index
        %alloc_59 = memref.alloc() : memref<16xi16>
        memref.copy %alloc_9, %alloc_59 : memref<16xi16> to memref<16xi16>
        %261 = arith.divsi %c7964_i16, %c-30156_i16 : i16
        %262 = vector.broadcast %cst_0 : f32 to vector<16x4xf32>
        %263 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %dest_60, %accumulated_value_61 = vector.scan <minf>, %262, %263 {inclusive = true, reduction_dim = 1 : i64} : vector<16x4xf32>, vector<16xf32>
        %264 = arith.addf %cst_3, %cst_1 : f16
        %265 = math.ipowi %c1523921471_i32, %c1523921471_i32 : i32
        %266 = index.add %c13, %c1
        %267 = arith.negf %cst : f16
        %268 = math.tan %12 : tensor<16xf16>
        %expanded_62 = tensor.expand_shape %17 [[0, 1]] : tensor<3xf16> into tensor<3x1xf16>
        %269 = arith.floordivsi %false_2, %false_2 : i1
        %270 = index.maxu %c0, %266
        %271 = math.floor %12 : tensor<16xf16>
        %272 = arith.cmpi ule, %c-30156_i16, %c-8157_i16 : i16
      }
      scf.yield
    }
    default {
      %246 = arith.cmpf uno, %cst_4, %cst_0 : f32
      %247 = math.absf %7 : tensor<16xf16>
      %248 = vector.splat %c3 : vector<16xindex>
      %249 = math.fma %cst_1, %cst_3, %cst_1 : f16
      %250 = math.exp %9 : tensor<4xf32>
      %251 = vector.broadcast %c1697511383_i32 : i32 to vector<3x3xi32>
      %252 = vector.outerproduct %33, %33, %251 {kind = #vector.kind<maxui>} : vector<3xi32>, vector<3xi32>
      %253 = index.ceildivu %28, %c6
      %cast_56 = tensor.cast %10 : tensor<16xi64> to tensor<?xi64>
      %254 = math.log10 %7 : tensor<16xf16>
      %alloc_57 = memref.alloc() : memref<3xi32>
      memref.copy %alloc_15, %alloc_57 : memref<3xi32> to memref<3xi32>
      memref.copy %alloc_8, %alloc_5 : memref<4xi32> to memref<4xi32>
      %255 = vector.splat %cst_0 : vector<3xf32>
      %256 = math.ceil %cst : f16
      %257 = bufferization.clone %alloc_13 : memref<4xi1> to memref<4xi1>
      %true_58 = index.bool.constant true
      %258 = arith.floordivsi %c306918922_i32, %c306918922_i32 : i32
    }
    %34 = scf.while (%arg1 = %c7964_i16) : (i16) -> i16 {
      %246 = affine.min affine_map<(d0, d1, d2) -> (d2, d1 * 2 + d2 + 2)>(%c12, %c0, %c7)
      %247 = math.fma %9, %9, %9 : tensor<4xf32>
      %248 = vector.extract_strided_slice %33 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi32> to vector<1xi32>
      %249 = index.casts %c-30156_i16 : i16 to index
      %250 = tensor.empty() : tensor<3x3x3xi32>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<3xi32>) outs(%250 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %255 = arith.floordivsi %c-8157_i16, %c-8157_i16 : i16
        %256 = bufferization.clone %alloc_19 : memref<4xi64> to memref<4xi64>
        %257 = bufferization.to_tensor %alloc_18 : memref<6x6xi32>
        %258 = math.powf %3, %17 : tensor<3xf16>
        %259 = vector.extract %20[2] : vector<4xi32>
        %260 = arith.cmpi sle, %c437334091_i64, %c437334091_i64 : i64
        %261 = arith.cmpf ole, %cst_4, %cst_4 : f32
        %262 = vector.create_mask %c4, %c4 : vector<6x6xi1>
        %263 = vector.load %alloc_9[%c14] : memref<16xi16>, vector<4xi16>
        %264 = index.maxu %c5, %c9
        %265 = arith.cmpf false, %cst_4, %cst_0 : f32
        %266 = memref.load %alloc_20[] : memref<i32>
        %267 = index.ceildivu %c1, %c4
        %268 = math.absf %cst : f16
        %269 = math.atan %3 : tensor<3xf16>
        %inserted = tensor.insert %cst_4 into %9[%c0] : tensor<4xf32>
        %270 = memref.atomic_rmw minu %c437334091_i64, %256[%c3] : (i64, memref<4xi64>) -> i64
        %271 = arith.minf %cst_4, %cst_4 : f32
        %272 = bufferization.clone %alloc_7 : memref<16xi32> to memref<16xi32>
        %273 = vector.flat_transpose %263 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %274 = math.atan %3 : tensor<3xf16>
        %275 = arith.cmpi ugt, %c-549_i16, %c7964_i16 : i16
        %276 = bufferization.clone %alloc_16 : memref<3xf16> to memref<3xf16>
        %277 = index.ceildivu %c4, %267
        %278 = memref.atomic_rmw andi %c1697511383_i32, %alloc_7[%c10] : (i32, memref<16xi32>) -> i32
        %279 = math.fma %12, %12, %12 : tensor<16xf16>
        %280 = math.absi %257 : tensor<6x6xi32>
        %281 = math.atan2 %3, %16 : tensor<3xf16>
        %282 = vector.splat %c1523921471_i32 : vector<6x6xi32>
        %283 = memref.atomic_rmw mins %c1523921471_i32, %alloc_18[%c4, %c3] : (i32, memref<6x6xi32>) -> i32
        %284 = math.atan %9 : tensor<4xf32>
        %285 = math.absf %7 : tensor<16xf16>
        linalg.yield %in : i32
      } -> tensor<3x3x3xi32>
      %252 = arith.addf %cst_0, %cst_4 : f32
      %253 = math.floor %cst_0 : f32
      %254 = vector.matrix_multiply %20, %248 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<1xi32>) -> vector<4xi32>
      scf.condition(%false_2) %c-30156_i16 : i16
    } do {
    ^bb0(%arg1: i16):
      %246 = vector.transpose %20, [0] : vector<4xi32> to vector<4xi32>
      %247 = vector.splat %c11 : vector<3xindex>
      %248 = arith.cmpf ogt, %cst_0, %cst_4 : f32
      %249 = bufferization.clone %alloc_7 : memref<16xi32> to memref<16xi32>
      %250 = bufferization.clone %alloc_9 : memref<16xi16> to memref<16xi16>
      %251 = index.divu %c9, %c5
      %252 = memref.atomic_rmw maxs %c1523921471_i32, %alloc_18[%c3, %c0] : (i32, memref<6x6xi32>) -> i32
      %253 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 + d2) - (d3 floordiv 2 + d3 + d2))>(%c3, %c10, %c7, %c13)
      scf.if %true {
        %261 = vector.multi_reduction <and>, %20, %c306918922_i32 [0] : vector<4xi32> to i32
        %262 = arith.negf %cst_1 : f16
        %263 = vector.matrix_multiply %33, %33 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
        %264 = math.ipowi %false, %false : i1
        %265 = index.casts %c3 : index to i32
        %266 = arith.maxui %c306918922_i32, %c1697511383_i32 : i32
        %267 = arith.negf %cst_3 : f16
        %268 = memref.load %alloc_18[%c1, %c2] : memref<6x6xi32>
      } else {
        %261 = math.floor %3 : tensor<3xf16>
        %262 = arith.shli %c-8157_i16, %arg1 : i16
        %263 = math.absi %15 : tensor<4xi64>
        %264 = math.sqrt %16 : tensor<3xf16>
        %265 = math.exp %9 : tensor<4xf32>
        %266 = arith.muli %c1697511383_i32, %c306918922_i32 : i32
        %alloc_56 = memref.alloc() : memref<4xf16>
        %267 = vector.insertelement %c1697511383_i32, %20[%c13 : index] : vector<4xi32>
      }
      %254 = math.exp %cst_4 : f32
      %255 = vector.splat %28 : vector<4xindex>
      %256 = arith.maxui %false_2, %false : i1
      %257 = arith.shli %c437334091_i64, %c437334091_i64 : i64
      %258 = math.exp2 %12 : tensor<16xf16>
      %259 = math.cttz %c7964_i16 : i16
      %260 = affine.for %arg2 = 0 to 110 iter_args(%arg3 = %alloc_6) -> (memref<3xi16>) {
        affine.yield %alloc_6 : memref<3xi16>
      }
      scf.yield %c-8157_i16 : i16
    }
    %35 = arith.divf %cst_4, %cst_4 : f32
    %36 = math.round %7 : tensor<16xf16>
    %cst_21 = arith.constant 1.000000e+00 : f16
    %37 = vector.transfer_read %7[%c12], %cst_21 : tensor<16xf16>, vector<f16>
    %true_22 = index.bool.constant true
    %38 = index.sizeof
    %39 = bufferization.to_memref %8 : memref<6x6xi1>
    %40 = memref.realloc %alloc_8 : memref<4xi32> to memref<16xi32>
    %false_23 = index.bool.constant false
    %41 = math.exp %cst : f16
    %42 = arith.shli %false_2, %false_23 : i1
    %43 = math.atan %3 : tensor<3xf16>
    %44 = math.ipowi %18, %transposed : tensor<16xi32>
    %45 = arith.muli %false_23, %true : i1
    %46 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %c1697511383_i32 : vector<4xi32>, vector<4xi32> into i32
    %47 = memref.atomic_rmw minu %c1697511383_i32, %alloc_18[%c3, %c1] : (i32, memref<6x6xi32>) -> i32
    %48 = vector.broadcast %true_22 : i1 to vector<3xi1>
    %49 = vector.maskedload %alloc_15[%c2], %48, %33 : memref<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
    %50 = memref.load %alloc_5[%c3] : memref<4xi32>
    %51 = vector.splat %c5 : vector<4xindex>
    vector.print %49 : vector<3xi32>
    %52 = memref.load %alloc_17[%c2, %c2] : memref<6x6xi64>
    %53 = index.ceildivu %c15, %c1
    %54 = arith.ori %c-30156_i16, %c-8157_i16 : i16
    %55 = math.log10 %12 : tensor<16xf16>
    %56 = math.absf %cst_3 : f16
    %alloc_24 = memref.alloc() : memref<16xf32>
    %57 = index.sizeof
    %58 = memref.load %39[%c1, %c1] : memref<6x6xi1>
    %59 = math.atan2 %9, %9 : tensor<4xf32>
    %60 = arith.divsi %false_23, %false_2 : i1
    %61 = arith.remsi %false, %false : i1
    %extracted = tensor.extract %0[%c0] : tensor<3xi32>
    %62 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %33, %49, %extracted : vector<3xi32>, vector<3xi32> into i32
    %63 = arith.addf %cst_3, %cst_21 : f16
    %64 = math.atan2 %7, %7 : tensor<16xf16>
    %65 = affine.max affine_map<(d0) -> (d0 mod 64, (d0 mod 64 - (d0 - 1)) mod 2, (d0 mod 64 - (d0 - 1)) mod 2 - d0 mod 64)>(%57)
    %66 = arith.floordivsi %c306918922_i32, %c1523921471_i32 : i32
    %67 = vector.create_mask %c10 : vector<16xi1>
    %68 = arith.remf %cst_3, %cst_3 : f16
    %alloc_25 = memref.alloc() : memref<16xi64>
    memref.tensor_store %10, %alloc_25 : memref<16xi64>
    %69 = index.maxs %c2, %c0
    %70 = index.sizeof
    %true_26 = index.bool.constant true
    %71 = arith.shli %c-549_i16, %c-549_i16 : i16
    %72 = memref.atomic_rmw minu %extracted, %alloc_14[%c2, %c4] : (i32, memref<6x6xi32>) -> i32
    %73 = math.absf %16 : tensor<3xf16>
    %true_27 = index.bool.constant true
    %74 = arith.remsi %true_22, %true_26 : i1
    %75 = scf.while (%arg1 = %alloc_11) : (memref<3xi64>) -> memref<3xi64> {
      %false_56 = index.bool.constant false
      %alloca_57 = memref.alloca() : memref<4xf32>
      %246 = math.ctpop %15 : tensor<4xi64>
      %247 = arith.floordivsi %extracted, %c1697511383_i32 : i32
      %248 = memref.atomic_rmw minu %c437334091_i64, %alloc_11[%c1] : (i64, memref<3xi64>) -> i64
      %249 = math.log2 %cst_1 : f16
      %250 = arith.negf %cst_4 : f32
      %true_58 = index.bool.constant true
      scf.condition(%true) %alloc_11 : memref<3xi64>
    } do {
    ^bb0(%arg1: memref<3xi64>):
      %246 = arith.subi %c1697511383_i32, %extracted : i32
      %247 = arith.andi %c1697511383_i32, %c306918922_i32 : i32
      %248 = index.maxu %65, %c9
      %249 = index.mul %28, %c12
      %250 = arith.remsi %c437334091_i64, %c437334091_i64 : i64
      %251 = vector.extract_strided_slice %48 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      %rank_56 = tensor.rank %3 : tensor<3xf16>
      %252 = tensor.empty() : tensor<3x3x3xi32>
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%252 : tensor<3x3x3xi32>) outs(%252 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %262 = vector.extract %20[3] : vector<4xi32>
        %263 = math.ipowi %c-549_i16, %c-549_i16 : i16
        memref.copy %alloc_8, %alloc_5 : memref<4xi32> to memref<4xi32>
        %264 = vector.broadcast %true : i1 to vector<3x3xi1>
        %265 = vector.outerproduct %48, %48, %264 {kind = #vector.kind<maxui>} : vector<3xi1>, vector<3xi1>
        %266 = math.absi %c-8157_i16 : i16
        bufferization.dealloc_tensor %4 : tensor<4xi1>
        %267 = math.round %12 : tensor<16xf16>
        %268 = math.floor %cst_3 : f16
        %269 = arith.minf %cst_21, %cst_1 : f16
        %c1_i64_58 = arith.constant 1 : i64
        %c0_i64_59 = arith.constant 0 : i64
        %270 = vector.transfer_read %alloc_19[%38], %c0_i64_59 : memref<4xi64>, vector<i64>
        %271 = vector.load %alloc_14[%c2, %c3] : memref<6x6xi32>, vector<3xi32>
        %272 = vector.broadcast %c437334091_i64 : i64 to vector<6xi64>
        %273 = vector.broadcast %false_23 : i1 to vector<6xi1>
        %274 = vector.maskedload %arg1[%c1], %273, %272 : memref<3xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %275 = vector.broadcast %cst_0 : f32 to vector<6x4x16xf32>
        %276 = vector.broadcast %cst_0 : f32 to vector<4x16xf32>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %275, %276 {inclusive = false, reduction_dim = 0 : i64} : vector<6x4x16xf32>, vector<4x16xf32>
        %277 = vector.transpose %251, [0] : vector<2xi1> to vector<2xi1>
        %278 = tensor.empty() : tensor<6x6xi64>
        %279 = vector.broadcast %c1_i64_58 : i64 to vector<16xi64>
        %280 = vector.broadcast %in : i32 to vector<16xi32>
        %281 = vector.gather %278[%53, %65] [%280], %67, %279 : tensor<6x6xi64>, vector<16xi32>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %282 = index.divs %c2, %c7
        %true_62 = index.bool.constant true
        memref.store %in, %alloc_7[%c15] : memref<16xi32>
        %283 = math.absi %18 : tensor<16xi32>
        %284 = arith.divf %cst_0, %cst_4 : f32
        %285 = arith.addi %true_22, %false_2 : i1
        %286 = arith.minui %in, %in : i32
        %287 = memref.load %alloc_12[%c11] : memref<16xi32>
        %288 = bufferization.clone %alloc_16 : memref<3xf16> to memref<3xf16>
        %289 = math.absi %4 : tensor<4xi1>
        %290 = vector.extract_strided_slice %281 {offsets = [5], sizes = [10], strides = [1]} : vector<16xi64> to vector<10xi64>
        %291 = arith.remf %cst_21, %cst_21 : f16
        %292 = arith.minf %cst_4, %cst_0 : f32
        %293 = vector.matrix_multiply %33, %280 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 16 : i32} : (vector<3xi32>, vector<16xi32>) -> vector<48xi32>
        %294 = vector.load %alloc_18[%c2, %c4] : memref<6x6xi32>, vector<3xi32>
        %295 = math.absf %9 : tensor<4xf32>
        %296 = arith.maxui %c437334091_i64, %c1_i64_58 : i64
        linalg.yield %extracted : i32
      } -> tensor<3x3x3xi32>
      %254 = vector.create_mask %c4, %c8 : vector<6x6xi1>
      %255 = math.absi %transposed : tensor<16xi32>
      %256 = tensor.empty() : tensor<3x3x3xi32>
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%256 : tensor<3x3x3xi32>) {
      ^bb0(%out: i32):
        %262 = arith.remsi %c1697511383_i32, %c1523921471_i32 : i32
        %263 = index.add %28, %c4
        %264 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %265 = memref.atomic_rmw maxu %c1697511383_i32, %alloc_18[%c4, %c2] : (i32, memref<6x6xi32>) -> i32
        %266 = vector.flat_transpose %67 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %267 = arith.divf %cst_0, %cst_0 : f32
        %268 = math.fpowi %cst_1, %out : f16, i32
        %269 = math.atan2 %cst_21, %cst_3 : f16
        %270 = math.fpowi %17, %0 : tensor<3xf16>, tensor<3xi32>
        %271 = math.ctpop %22 : tensor<i16>
        %272 = index.ceildivu %c4, %28
        %273 = index.floordivs %c8, %c4
        %274 = math.absi %c437334091_i64 : i64
        %275 = math.atan %3 : tensor<3xf16>
        %276 = vector.load %alloc_12[%c10] : memref<16xi32>, vector<6x6xi32>
        %277 = arith.minui %c437334091_i64, %c437334091_i64 : i64
        %278 = index.sub %249, %c5
        %279 = memref.atomic_rmw muli %c437334091_i64, %alloc_19[%c3] : (i64, memref<4xi64>) -> i64
        %280 = memref.load %arg1[%c0] : memref<3xi64>
        %281 = vector.multi_reduction <or>, %264, %c1697511383_i32 [0] : vector<1xi32> to i32
        %282 = math.round %9 : tensor<4xf32>
        %283 = index.sizeof
        %from_elements_58 = tensor.from_elements %c-8157_i16, %c7964_i16, %c7964_i16, %c-8157_i16 : tensor<4xi16>
        %284 = tensor.empty() : tensor<6x6xi32>
        %285 = linalg.matmul ins(%1, %1 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%284 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %286 = memref.load %alloc_9[%c1] : memref<16xi16>
        %287 = math.powf %16, %16 : tensor<3xf16>
        %288 = vector.broadcast %c1523921471_i32 : i32 to vector<6xi32>
        %dest_59, %accumulated_value_60 = vector.scan <maxui>, %276, %288 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
        %289 = math.ipowi %281, %out : i32
        %290 = memref.atomic_rmw minu %extracted, %alloc_7[%c12] : (i32, memref<16xi32>) -> i32
        %291 = vector.bitcast %254 : vector<6x6xi1> to vector<6x6xi1>
        %292 = bufferization.to_tensor %alloc_13 : memref<4xi1>
        %293 = arith.ceildivsi %c-30156_i16, %c7964_i16 : i16
        linalg.yield %out : i32
      } -> tensor<3x3x3xi32>
      %alloc_57 = memref.alloc() : memref<16xi1>
      memref.copy %alloc_10, %alloc_57 : memref<16xi1> to memref<16xi1>
      %258 = vector.bitcast %251 : vector<2xi1> to vector<2xi1>
      %259 = math.atan2 %cst_0, %cst_4 : f32
      %260 = scf.while (%arg2 = %33) : (vector<3xi32>) -> vector<3xi32> {
        %262 = math.ipowi %c7964_i16, %c-30156_i16 : i16
        %263 = arith.addi %false_2, %true : i1
        %264 = vector.insert %c306918922_i32, %20 [1] : i32 into vector<4xi32>
        bufferization.dealloc_tensor %4 : tensor<4xi1>
        %265 = vector.transpose %49, [0] : vector<3xi32> to vector<3xi32>
        %266 = arith.divsi %true, %true : i1
        %267 = index.casts %false_23 : i1 to index
        %268 = vector.insert %true_27, %258 [0] : i1 into vector<2xi1>
        scf.condition(%true_27) %33 : vector<3xi32>
      } do {
      ^bb0(%arg2: vector<3xi32>):
        %alloc_58 = memref.alloc() : memref<6x6xi16>
        %262 = vector.splat %c10 : vector<3xindex>
        %263 = bufferization.clone %alloc_10 : memref<16xi1> to memref<16xi1>
        %264 = math.round %12 : tensor<16xf16>
        %false_59 = index.bool.constant false
        %265 = arith.addf %cst_0, %cst_0 : f32
        %266 = vector.matrix_multiply %258, %48 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<2xi1>, vector<3xi1>) -> vector<6xi1>
        memref.assume_alignment %alloc_15, 8 : memref<3xi32>
        %267 = math.atan2 %cst, %cst_3 : f16
        %268 = index.divu %c0, %c14
        %269 = index.maxu %c11, %c12
        %270 = arith.remsi %c437334091_i64, %c437334091_i64 : i64
        %271 = bufferization.clone %alloc_5 : memref<4xi32> to memref<4xi32>
        %272 = arith.remsi %c-549_i16, %c7964_i16 : i16
        %273 = arith.maxui %c7964_i16, %c-30156_i16 : i16
        %274 = vector.transpose %33, [0] : vector<3xi32> to vector<3xi32>
        scf.yield %49 : vector<3xi32>
      }
      %261 = bufferization.to_tensor %alloc : memref<16xi32>
      scf.yield %alloc_11 : memref<3xi64>
    }
    %true_28 = index.bool.constant true
    %76 = index.add %c15, %c11
    %77 = bufferization.to_tensor %alloc_9 : memref<16xi16>
    bufferization.dealloc_tensor %3 : tensor<3xf16>
    %true_29 = index.bool.constant true
    %78 = vector.broadcast %c306918922_i32 : i32 to vector<6x4x3xi32>
    %79 = vector.broadcast %c1523921471_i32 : i32 to vector<6x4xi32>
    %dest, %accumulated_value = vector.scan <mul>, %78, %79 {inclusive = true, reduction_dim = 2 : i64} : vector<6x4x3xi32>, vector<6x4xi32>
    %80 = vector.broadcast %true_22 : i1 to vector<16x16xi1>
    %81 = vector.outerproduct %67, %67, %80 {kind = #vector.kind<minui>} : vector<16xi1>, vector<16xi1>
    %82 = vector.create_mask %c1 : vector<3xi1>
    %83 = arith.shli %c-30156_i16, %c-30156_i16 : i16
    scf.index_switch %c15 
    case 1 {
      %246 = tensor.empty() : tensor<3x3x3xi32>
      %alloc_56 = memref.alloc() : memref<3x3xi32>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_56, %alloc_15 : memref<3x3xi32>, memref<3xi32>) outs(%246 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_57: i32, %out: i32):
        %262 = vector.load %alloc_9[%c12] : memref<16xi16>, vector<4xi16>
        %263 = math.round %cst_0 : f32
        %264 = vector.matrix_multiply %20, %49 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<4xi32>, vector<3xi32>) -> vector<12xi32>
        %265 = index.maxu %c3, %c0
        %266 = math.roundeven %17 : tensor<3xf16>
        %267 = arith.remf %cst_0, %cst_0 : f32
        %268 = vector.extract_strided_slice %82 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
        %269 = affine.max affine_map<(d0) -> (d0 * -2, d0 ceildiv 8 + 8, d0 * 2, d0 * 3)>(%c4)
        %270 = arith.addi %true_26, %true_29 : i1
        %271 = index.maxs %c1, %c9
        %272 = arith.floordivsi %c1697511383_i32, %c1523921471_i32 : i32
        %273 = arith.minui %in_57, %c1697511383_i32 : i32
        %alloca_58 = memref.alloca() : memref<16xf16>
        %274 = vector.create_mask %c13 : vector<16xi1>
        %275 = vector.maskedload %39[%c4, %c4], %48, %82 : memref<6x6xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %276 = math.ctlz %c-8157_i16 : i16
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %33, %49, %out : vector<3xi32>, vector<3xi32> into i32
        memref.store %in, %alloc_7[%c3] : memref<16xi32>
        %278 = vector.splat %c6 : vector<3xindex>
        %279 = index.casts %false_2 : i1 to index
        %280 = index.floordivs %65, %c1
        %281 = vector.insertelement %c306918922_i32, %264[%c2 : index] : vector<12xi32>
        %collapsed_59 = tensor.collapse_shape %8 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
        %282 = arith.addf %cst_0, %cst_4 : f32
        %283 = memref.load %alloc_16[%c2] : memref<3xf16>
        %284 = memref.realloc %alloc_8 : memref<4xi32> to memref<16xi32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %262, %262, %c-30156_i16 : vector<4xi16>, vector<4xi16> into i16
        bufferization.dealloc_tensor %17 : tensor<3xf16>
        %286 = math.atan2 %cst, %cst_1 : f16
        %287 = vector.create_mask %28, %c13 : vector<6x6xi1>
        %288 = arith.minui %extracted, %c1697511383_i32 : i32
        %289 = arith.minf %cst, %cst : f16
        linalg.yield %in : i32
      } -> tensor<3x3x3xi32>
      %248 = math.log2 %12 : tensor<16xf16>
      %249 = math.cttz %c1697511383_i32 : i32
      %250 = arith.minui %true_29, %false_2 : i1
      %251 = vector.broadcast %false : i1 to vector<3x3xi1>
      %252 = vector.outerproduct %82, %48, %251 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
      %253 = math.log2 %cst_1 : f16
      %c1_i32 = arith.constant 1 : i32
      %254 = vector.transfer_read %alloc_18[%65, %c14], %c1_i32 : memref<6x6xi32>, vector<i32>
      %255 = arith.andi %true_29, %false : i1
      %256 = math.log2 %cst_1 : f16
      %257 = arith.subi %true_29, %false_2 : i1
      %258 = arith.subi %c1523921471_i32, %extracted : i32
      %259 = math.absi %14 : tensor<6x6xi32>
      %260 = vector.create_mask %c1 : vector<4xi1>
      memref.copy %alloc_5, %alloc_8 : memref<4xi32> to memref<4xi32>
      scf.index_switch %c1 
      case 1 {
        %262 = vector.insertelement %true_22, %82[%53 : index] : vector<3xi1>
        %263 = index.divs %69, %c14
        %264 = arith.floordivsi %true_26, %true_26 : i1
        %265 = bufferization.to_memref %77 : memref<16xi16>
        %266 = arith.muli %c-8157_i16, %c-30156_i16 : i16
        %267 = arith.addi %c-8157_i16, %c7964_i16 : i16
        %alloc_57 = memref.alloc() : memref<6x6xi32>
        %268 = memref.load %alloc_8[%c1] : memref<4xi32>
        %269 = vector.broadcast %c1523921471_i32 : i32 to vector<3x3xi32>
        %270 = vector.outerproduct %33, %49, %269 {kind = #vector.kind<mul>} : vector<3xi32>, vector<3xi32>
        %271 = math.log1p %3 : tensor<3xf16>
        %272 = math.ipowi %true_22, %true_28 : i1
        %273 = math.fpowi %3, %0 : tensor<3xf16>, tensor<3xi32>
        %274 = vector.matrix_multiply %20, %49 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<4xi32>, vector<3xi32>) -> vector<12xi32>
        %275 = index.add %28, %c11
        %276 = vector.broadcast %c1697511383_i32 : i32 to vector<3x3xi32>
        %277 = vector.outerproduct %49, %49, %276 {kind = #vector.kind<maxsi>} : vector<3xi32>, vector<3xi32>
        %278 = memref.atomic_rmw addi %c306918922_i32, %alloc[%c12] : (i32, memref<16xi32>) -> i32
        scf.yield
      }
      default {
        %rank_57 = tensor.rank %18 : tensor<16xi32>
        memref.copy %alloc_14, %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
        %262 = bufferization.clone %alloc_20 : memref<i32> to memref<i32>
        %263 = index.ceildivu %c1, %c10
        %264 = vector.splat %c14 : vector<4xindex>
        %265 = bufferization.clone %alloc_12 : memref<16xi32> to memref<16xi32>
        %266 = math.fpowi %12, %transposed : tensor<16xf16>, tensor<16xi32>
        %267 = vector.matrix_multiply %67, %48 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 3 : i32} : (vector<16xi1>, vector<3xi1>) -> vector<48xi1>
        %268 = arith.remf %cst_0, %cst_0 : f32
        %cast_58 = tensor.cast %14 : tensor<6x6xi32> to tensor<?x?xi32>
        %269 = arith.remsi %c1523921471_i32, %c1_i32 : i32
        %270 = arith.shrui %c-30156_i16, %c-549_i16 : i16
        %collapsed_59 = tensor.collapse_shape %8 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
        %271 = math.cttz %true_27 : i1
        %272 = arith.maxui %c306918922_i32, %c1697511383_i32 : i32
        %273 = math.atan2 %17, %3 : tensor<3xf16>
      }
      %261 = vector.matrix_multiply %260, %82 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<4xi1>, vector<3xi1>) -> vector<12xi1>
      scf.yield
    }
    default {
      bufferization.dealloc_tensor %22 : tensor<i16>
      %cast_56 = tensor.cast %0 : tensor<3xi32> to tensor<?xi32>
      %246 = bufferization.clone %alloc_14 : memref<6x6xi32> to memref<6x6xi32>
      %247 = tensor.empty() : tensor<3x3x3xi32>
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%247 : tensor<3x3x3xi32>) {
      ^bb0(%out: i32):
        %alloc_57 = memref.alloc() : memref<4xi16>
        %261 = math.ctpop %11 : tensor<3xi16>
        %262 = index.mul %c14, %c8
        %263 = math.absi %false_23 : i1
        %264 = memref.load %alloc_14[%c3, %c2] : memref<6x6xi32>
        %cast_58 = tensor.cast %1 : tensor<6x6xi32> to tensor<?x?xi32>
        %265 = arith.divsi %c306918922_i32, %out : i32
        %266 = affine.max affine_map<(d0, d1) -> (0)>(%c11, %76)
        %267 = arith.maxui %false_2, %true_26 : i1
        %268 = vector.multi_reduction <minui>, %48, %82 [] : vector<3xi1> to vector<3xi1>
        %269 = arith.divui %c-549_i16, %c-549_i16 : i16
        %270 = math.powf %cst, %cst_1 : f16
        %from_elements_59 = tensor.from_elements %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64 : tensor<6x6xi64>
        %271 = arith.addi %c7964_i16, %c-549_i16 : i16
        %272 = math.ipowi %extracted, %c306918922_i32 : i32
        %273 = math.ctpop %5 : tensor<16xi16>
        %alloc_60 = memref.alloc() : memref<4xf32>
        %274 = memref.load %alloc_8[%c3] : memref<4xi32>
        %275 = arith.divf %cst_0, %cst_4 : f32
        %276 = vector.broadcast %true_27 : i1 to vector<16x16xi1>
        %277 = vector.outerproduct %67, %67, %276 {kind = #vector.kind<xor>} : vector<16xi1>, vector<16xi1>
        %278 = vector.extract %20[1] : vector<4xi32>
        %279 = arith.divf %cst_1, %cst_3 : f16
        %280 = arith.minui %true_27, %false : i1
        %281 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %282 = vector.insertelement %c1523921471_i32, %281[%70 : index] : vector<1xi32>
        %283 = index.casts %c0 : index to i32
        %284 = math.atan2 %3, %17 : tensor<3xf16>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %48, %82, %true_29 : vector<3xi1>, vector<3xi1> into i1
        memref.tensor_store %1, %246 : memref<6x6xi32>
        %cast_61 = tensor.cast %12 : tensor<16xf16> to tensor<?xf16>
        %286 = index.add %c11, %266
        %287 = vector.extract_strided_slice %281 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        linalg.yield %c306918922_i32 : i32
      } -> tensor<3x3x3xi32>
      %249 = index.ceildivu %38, %69
      %250 = arith.remsi %true, %true : i1
      %251 = affine.for %arg1 = 0 to 50 iter_args(%arg2 = %false_23) -> (i1) {
        affine.yield %true_22 : i1
      }
      %252 = bufferization.to_tensor %alloc_17 : memref<6x6xi64>
      %253 = math.cos %3 : tensor<3xf16>
      %254 = arith.divsi %c1697511383_i32, %extracted : i32
      %255 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %256 = math.absi %c1523921471_i32 : i32
      %257 = arith.andi %c1523921471_i32, %c306918922_i32 : i32
      %258 = math.absi %true_22 : i1
      %259 = arith.divui %false, %true_27 : i1
      %260 = index.casts %false_2 : i1 to index
    }
    memref.tensor_store %18, %alloc_7 : memref<16xi32>
    %84 = math.fpowi %cst_1, %c1523921471_i32 : f16, i32
    %85 = arith.remf %cst_3, %cst_21 : f16
    %86 = memref.load %alloc_17[%c5, %c5] : memref<6x6xi64>
    %87 = arith.divf %cst_0, %cst_4 : f32
    %88 = math.ipowi %2, %11 : tensor<3xi16>
    %89 = vector.extract_strided_slice %49 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi32> to vector<1xi32>
    %90 = bufferization.clone %alloc_13 : memref<4xi1> to memref<4xi1>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %91 = vector.transfer_read %10[%c6], %c0_i64 : tensor<16xi64>, vector<i64>
    %92 = math.exp %12 : tensor<16xf16>
    %93 = arith.divf %cst, %cst_21 : f16
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
    %94 = math.expm1 %12 : tensor<16xf16>
    %95 = scf.execute_region -> i16 {
      %246 = index.floordivs %c15, %c3
      %247 = math.absi %true_27 : i1
      %248 = tensor.empty() : tensor<3x3x3xi32>
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%248 : tensor<3x3x3xi32>) outs(%248 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %262 = vector.broadcast %c306918922_i32 : i32 to vector<3x3x16xi32>
        %263 = vector.broadcast %out : i32 to vector<3x16xi32>
        %dest_60, %accumulated_value_61 = vector.scan <or>, %262, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3x16xi32>, vector<3x16xi32>
        %cst_62 = arith.constant 1.000000e+00 : f32
        %264 = vector.transfer_read %9[%76], %cst_62 : tensor<4xf32>, vector<f32>
        %265 = math.exp %cst_21 : f16
        %266 = index.maxu %c4, %c10
        %expanded_63 = tensor.expand_shape %4 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %267 = vector.flat_transpose %82 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %268 = vector.broadcast %c1_i64 : i64 to vector<3x4x16xi64>
        %269 = vector.broadcast %c1_i64 : i64 to vector<3x4xi64>
        %dest_64, %accumulated_value_65 = vector.scan <maxui>, %268, %269 {inclusive = false, reduction_dim = 2 : i64} : vector<3x4x16xi64>, vector<3x4xi64>
        %270 = math.floor %9 : tensor<4xf32>
        %271 = math.ipowi %c7964_i16, %c-8157_i16 : i16
        %expanded_66 = tensor.expand_shape %12 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        %272 = vector.broadcast %c306918922_i32 : i32 to vector<1x1xi32>
        %273 = vector.outerproduct %89, %89, %272 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %274 = arith.addi %c-8157_i16, %c-8157_i16 : i16
        %275 = arith.divsi %true_28, %true : i1
        %276 = math.tan %17 : tensor<3xf16>
        %277 = index.sub %c8, %c13
        %extracted_67 = tensor.extract %14[%c4, %c2] : tensor<6x6xi32>
        %278 = arith.cmpi sgt, %c306918922_i32, %extracted : i32
        %collapsed_68 = tensor.collapse_shape %expanded_63 [[0, 1]] : tensor<4x1xi1> into tensor<4xi1>
        %279 = arith.minsi %c-549_i16, %c7964_i16 : i16
        %280 = vector.splat %extracted_67 : vector<4xi32>
        %cast_69 = tensor.cast %11 : tensor<3xi16> to tensor<?xi16>
        %281 = memref.load %alloc_12[%c7] : memref<16xi32>
        %282 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %283 = vector.multi_reduction <maxsi>, %20, %c306918922_i32 [0] : vector<4xi32> to i32
        %284 = arith.muli %extracted_67, %c1523921471_i32 : i32
        %285 = memref.load %alloc_10[%c11] : memref<16xi1>
        %286 = index.ceildivu %28, %c10
        %287 = arith.remf %cst_1, %cst_1 : f16
        %288 = arith.shli %c1697511383_i32, %c306918922_i32 : i32
        %289 = math.fma %3, %3, %17 : tensor<3xf16>
        %290 = bufferization.to_tensor %alloc_20 : memref<i32>
        %291 = math.log1p %7 : tensor<16xf16>
        linalg.yield %c306918922_i32 : i32
      } -> tensor<3x3x3xi32>
      %250 = vector.create_mask %69 : vector<3xi1>
      %251 = arith.cmpf ogt, %cst_21, %cst : f16
      %252 = arith.floordivsi %c7964_i16, %c-549_i16 : i16
      %253 = vector.broadcast %extracted : i32 to vector<16x16x3xi32>
      %254 = vector.broadcast %c306918922_i32 : i32 to vector<16x3xi32>
      %dest_56, %accumulated_value_57 = vector.scan <or>, %253, %254 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16x3xi32>, vector<16x3xi32>
      %255 = scf.while (%arg1 = %c1_i64) : (i64) -> i64 {
        %alloc_60 = memref.alloc() : memref<3xf32>
        %262 = math.log2 %12 : tensor<16xf16>
        %263 = arith.subi %c437334091_i64, %c437334091_i64 : i64
        %264 = index.floordivs %c0, %c6
        memref.copy %alloc_12, %alloc_7 : memref<16xi32> to memref<16xi32>
        %265 = arith.divui %true_22, %true_26 : i1
        %266 = tensor.empty(%76) : tensor<?xf16>
        %267 = vector.broadcast %c1697511383_i32 : i32 to vector<3x3xi32>
        %268 = vector.outerproduct %49, %33, %267 {kind = #vector.kind<maxui>} : vector<3xi32>, vector<3xi32>
        scf.condition(%false_2) %c1_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        %262 = arith.maxsi %c1697511383_i32, %extracted : i32
        %263 = index.divu %c1, %c6
        %264 = math.absi %c-8157_i16 : i16
        %c1_i64_60 = arith.constant 1 : i64
        %265 = vector.transfer_read %15[%c15], %c1_i64_60 : tensor<4xi64>, vector<i64>
        %266 = vector.flat_transpose %67 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %267 = vector.broadcast %c1523921471_i32 : i32 to vector<3x3xi32>
        %268 = vector.outerproduct %49, %49, %267 {kind = #vector.kind<add>} : vector<3xi32>, vector<3xi32>
        %alloca_61 = memref.alloca() : memref<16xi1>
        %splat_62 = tensor.splat %true_29 : tensor<6x6xi1>
        %269 = arith.andi %c-549_i16, %c-549_i16 : i16
        affine.store %c1697511383_i32, %alloc_14[%c2, %c2] : memref<6x6xi32>
        %270 = math.atan2 %cst_4, %cst_0 : f32
        %271 = math.powf %cst_4, %cst_4 : f32
        %272 = math.fma %cst_21, %cst_3, %cst_21 : f16
        %273 = index.divu %c3, %263
        %274 = math.absi %8 : tensor<6x6xi1>
        %275 = math.tan %9 : tensor<4xf32>
        scf.yield %c1_i64_60 : i64
      }
      %256 = math.powf %cst_0, %cst_4 : f32
      %257 = math.atan2 %9, %9 : tensor<4xf32>
      bufferization.dealloc_tensor %10 : tensor<16xi64>
      %258 = math.round %17 : tensor<3xf16>
      %259 = index.sizeof
      %260 = vector.broadcast %c7964_i16 : i16 to vector<i16>
      %261 = vector.transfer_write %260, %11[%c9] : vector<i16>, tensor<3xi16>
      %alloc_58 = memref.alloc() : memref<16xi1>
      %from_elements_59 = tensor.from_elements %c1_i64, %c437334091_i64, %c437334091_i64, %c1_i64, %c437334091_i64, %c1_i64, %c437334091_i64, %c437334091_i64, %c1_i64, %c437334091_i64, %c1_i64, %c1_i64, %c437334091_i64, %c437334091_i64, %c437334091_i64, %c1_i64 : tensor<16xi64>
      scf.yield %c-549_i16 : i16
    }
    %96 = scf.while (%arg1 = %20) : (vector<4xi32>) -> vector<4xi32> {
      %246 = index.maxs %76, %70
      %247 = arith.floordivsi %true_22, %true_28 : i1
      %248 = arith.divf %cst_21, %cst : f16
      %249 = vector.matrix_multiply %49, %33 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
      %250 = arith.minf %cst_3, %cst_3 : f16
      %251 = vector.insert %c1697511383_i32, %89 [0] : i32 into vector<1xi32>
      bufferization.dealloc_tensor %11 : tensor<3xi16>
      %252 = vector.extract %249[0] : vector<1xi32>
      scf.condition(%true_27) %20 : vector<4xi32>
    } do {
    ^bb0(%arg1: vector<4xi32>):
      %246 = math.floor %9 : tensor<4xf32>
      %247 = math.exp %12 : tensor<16xf16>
      %extracted_56 = tensor.extract %22[] : tensor<i16>
      %248 = scf.while (%arg2 = %c-549_i16) : (i16) -> i16 {
        %259 = arith.maxsi %true, %true_26 : i1
        %260 = affine.max affine_map<(d0, d1, d2) -> ((d2 - (((-d0) ceildiv 4) * 4 - 4)) floordiv 8, -d0, d2 - (((-d0) ceildiv 4) * 4 - 4) + ((-d0) ceildiv 4) * 4, d0)>(%53, %c1, %c7)
        %261 = math.ipowi %23, %23 : tensor<i16>
        %262 = math.fma %7, %7, %7 : tensor<16xf16>
        %splat_59 = tensor.splat %cst_3 : tensor<3xf16>
        %263 = math.ctpop %c1_i64 : i64
        %264 = arith.addf %cst_4, %cst_4 : f32
        %265 = bufferization.clone %alloc_16 : memref<3xf16> to memref<3xf16>
        scf.condition(%true) %c-549_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %259 = index.maxs %28, %c3
        %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %49, %33, %c1523921471_i32 : vector<3xi32>, vector<3xi32> into i32
        %261 = vector.transpose %49, [0] : vector<3xi32> to vector<3xi32>
        %262 = vector.insertelement %c1523921471_i32, %33[%69 : index] : vector<3xi32>
        %263 = math.tan %7 : tensor<16xf16>
        %264 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 128, d0 * 128)>(%c13, %57, %57, %c6)
        vector.print %48 : vector<3xi1>
        %true_59 = index.bool.constant true
        %265 = vector.broadcast %true_59 : i1 to vector<3x16xi1>
        %dest_60, %accumulated_value_61 = vector.scan <maxsi>, %265, %48 {inclusive = true, reduction_dim = 1 : i64} : vector<3x16xi1>, vector<3xi1>
        %266 = arith.cmpi eq, %c1523921471_i32, %extracted : i32
        %267 = math.absf %16 : tensor<3xf16>
        bufferization.dealloc_tensor %7 : tensor<16xf16>
        %268 = vector.broadcast %true_29 : i1 to vector<3x3xi1>
        %269 = vector.outerproduct %82, %48, %268 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
        %270 = math.atan2 %7, %12 : tensor<16xf16>
        %271 = math.fpowi %12, %transposed : tensor<16xf16>, tensor<16xi32>
        %272 = bufferization.clone %39 : memref<6x6xi1> to memref<6x6xi1>
        scf.yield %c-549_i16 : i16
      }
      memref.store %c437334091_i64, %alloc_11[%c1] : memref<3xi64>
      %249 = arith.ori %true_22, %false_2 : i1
      %250 = affine.for %arg2 = 0 to 51 iter_args(%arg3 = %57) -> (index) {
        affine.yield %c15 : index
      }
      %251 = math.ctpop %15 : tensor<4xi64>
      %252 = affine.apply affine_map<(d0, d1) -> ((d0 + 64) * 128)>(%69, %c12)
      %c0_i32_57 = arith.constant 0 : i32
      %253 = vector.transfer_read %alloc[%70], %c0_i32_57 : memref<16xi32>, vector<i32>
      %false_58 = index.bool.constant false
      %254 = vector.transpose %67, [0] : vector<16xi1> to vector<16xi1>
      %255 = math.floor %7 : tensor<16xf16>
      %256 = math.log10 %cst : f16
      %257 = bufferization.clone %alloc : memref<16xi32> to memref<16xi32>
      %258 = vector.extract_strided_slice %82 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
      scf.yield %20 : vector<4xi32>
    }
    %from_elements = tensor.from_elements %c306918922_i32, %c1697511383_i32, %c1697511383_i32 : tensor<3xi32>
    %97 = index.maxu %c8, %76
    %98 = affine.max affine_map<(d0, d1, d2) -> ((d0 - d1) floordiv 32)>(%53, %c4, %c6)
    %extracted_30 = tensor.extract %5[%c14] : tensor<16xi16>
    %99 = arith.addf %cst_3, %cst : f16
    %100 = arith.floordivsi %false, %false_23 : i1
    %from_elements_31 = tensor.from_elements %95, %extracted_30, %c-8157_i16 : tensor<3xi16>
    %101 = math.atan2 %9, %9 : tensor<4xf32>
    %alloc_32 = memref.alloc() : memref<16xf16>
    memref.tensor_store %12, %alloc_32 : memref<16xf16>
    %102 = memref.atomic_rmw ori %c437334091_i64, %alloc_11[%c1] : (i64, memref<3xi64>) -> i64
    %103 = arith.divsi %false_2, %false_23 : i1
    %104 = index.maxu %c12, %76
    scf.execute_region {
      %246 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d0, d0, d2 floordiv 64)>(%c2, %c8, %c5, %c15)
      %247 = math.ipowi %true_26, %false_2 : i1
      %248 = arith.minui %c1697511383_i32, %extracted : i32
      %249 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c10, %c14, %c15)
      %250 = index.sizeof
      %cast_56 = tensor.cast %1 : tensor<6x6xi32> to tensor<?x?xi32>
      %251 = arith.cmpi slt, %false_23, %true_27 : i1
      %252 = math.exp %7 : tensor<16xf16>
      %253 = affine.apply affine_map<(d0) -> (d0)>(%57)
      %254 = scf.index_switch %76 -> vector<16xi32> 
      case 1 {
        %259 = math.ctpop %c-549_i16 : i16
        %260 = math.fma %cst_3, %cst, %cst_21 : f16
        memref.assume_alignment %alloc_8, 16 : memref<4xi32>
        %261 = math.fpowi %12, %transposed : tensor<16xf16>, tensor<16xi32>
        %262 = math.log2 %9 : tensor<4xf32>
        %263 = math.ctpop %95 : i16
        %264 = math.absf %17 : tensor<3xf16>
        %265 = math.floor %7 : tensor<16xf16>
        %266 = vector.flat_transpose %82 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %267 = bufferization.clone %alloc_14 : memref<6x6xi32> to memref<6x6xi32>
        %268 = bufferization.clone %alloc_8 : memref<4xi32> to memref<4xi32>
        %alloca_57 = memref.alloca() : memref<3xi16>
        bufferization.dealloc_tensor %18 : tensor<16xi32>
        %269 = bufferization.to_tensor %alloc_11 : memref<3xi64>
        %cast_58 = tensor.cast %21 : tensor<16xi16> to tensor<?xi16>
        %270 = arith.addi %c306918922_i32, %c1523921471_i32 : i32
        %271 = vector.broadcast %c1523921471_i32 : i32 to vector<16xi32>
        scf.yield %271 : vector<16xi32>
      }
      default {
        %259 = vector.broadcast %c1697511383_i32 : i32 to vector<1x1xi32>
        %260 = vector.outerproduct %89, %89, %259 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
        %261 = affine.max affine_map<(d0, d1) -> (0, d1 - (d1 + 1), -d0, (-d0) floordiv 4 + d0)>(%249, %c12)
        %262 = arith.andi %c-30156_i16, %c-30156_i16 : i16
        %c0_i64_57 = arith.constant 0 : i64
        %263 = vector.transfer_read %alloc_19[%c1], %c0_i64_57 : memref<4xi64>, vector<i64>
        %264 = arith.minf %cst_0, %cst_0 : f32
        %265 = math.exp2 %12 : tensor<16xf16>
        %266 = math.atan2 %3, %17 : tensor<3xf16>
        %c546_i16 = arith.constant 546 : i16
        %alloc_58 = memref.alloc() : memref<16xi32>
        %267 = affine.apply affine_map<(d0) -> (d0 mod 64 - d0 + 124)>(%261)
        %268 = math.absf %cst_4 : f32
        %269 = affine.max affine_map<(d0, d1, d2) -> (4, 4)>(%38, %57, %c6)
        %270 = memref.load %alloc_6[%c2] : memref<3xi16>
        %271 = arith.maxui %extracted_30, %95 : i16
        %272 = arith.andi %true_29, %true_26 : i1
        %from_elements_59 = tensor.from_elements %true_28, %false, %false_2 : tensor<3xi1>
        %273 = vector.broadcast %c1523921471_i32 : i32 to vector<16xi32>
        scf.yield %273 : vector<16xi32>
      }
      %255 = vector.extract_strided_slice %33 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
      %256 = arith.muli %c-549_i16, %c-549_i16 : i16
      scf.index_switch %c3 
      case 1 {
        %259 = bufferization.clone %alloc_12 : memref<16xi32> to memref<16xi32>
        %260 = vector.splat %98 : vector<6x6xindex>
        %261 = math.absi %2 : tensor<3xi16>
        %expanded_57 = tensor.expand_shape %4 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %262 = math.ctpop %22 : tensor<i16>
        %263 = index.mul %104, %c15
        %264 = arith.muli %c-549_i16, %c-30156_i16 : i16
        %265 = arith.addi %true, %false : i1
        %266 = math.fma %cst_0, %cst_0, %cst_0 : f32
        %267 = math.atan2 %cst_0, %cst_0 : f32
        %268 = math.tan %17 : tensor<3xf16>
        %269 = arith.remf %cst_1, %cst_21 : f16
        %expanded_58 = tensor.expand_shape %18 [[0, 1]] : tensor<16xi32> into tensor<16x1xi32>
        %270 = math.absf %cst_1 : f16
        bufferization.dealloc_tensor %1 : tensor<6x6xi32>
        %collapsed_59 = tensor.collapse_shape %13 [[0, 1]] : tensor<6x6xi16> into tensor<36xi16>
        scf.yield
      }
      case 2 {
        %259 = math.absi %true_26 : i1
        %260 = arith.addf %cst_4, %cst_4 : f32
        %false_57 = index.bool.constant false
        %261 = vector.create_mask %76 : vector<4xi1>
        %262 = math.exp %7 : tensor<16xf16>
        %alloc_58 = memref.alloc() : memref<16xi64>
        %263 = vector.load %alloc_19[%c3] : memref<4xi64>, vector<4xi64>
        %alloc_59 = memref.alloc() : memref<16xi64>
        %264 = arith.minui %extracted, %c1523921471_i32 : i32
        %265 = math.log2 %3 : tensor<3xf16>
        %266 = memref.load %alloc_6[%c1] : memref<3xi16>
        %267 = index.maxu %c6, %250
        %268 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c2, %c6, %249, %c9)
        %269 = math.ipowi %2, %2 : tensor<3xi16>
        %270 = vector.broadcast %c437334091_i64 : i64 to vector<3x4xi64>
        %dest_60, %accumulated_value_61 = vector.scan <and>, %270, %263 {inclusive = false, reduction_dim = 0 : i64} : vector<3x4xi64>, vector<4xi64>
        %271 = memref.atomic_rmw ori %c7964_i16, %alloc_9[%c3] : (i16, memref<16xi16>) -> i16
        scf.yield
      }
      default {
        %259 = index.add %c11, %246
        %260 = index.maxu %259, %253
        %261 = affine.apply affine_map<(d0) -> (d0 mod 64 - d0 + 124)>(%c2)
        %262 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %263 = vector.fma %262, %262, %262 : vector<16xf32>
        %264 = vector.broadcast %cst_0 : f32 to vector<3xf32>
        %265 = vector.fma %264, %264, %264 : vector<3xf32>
        %266 = arith.divui %c437334091_i64, %c437334091_i64 : i64
        %267 = math.cttz %from_elements : tensor<3xi32>
        %268 = math.absf %12 : tensor<16xf16>
        %269 = math.exp2 %cst_0 : f32
        %splat_57 = tensor.splat %c-30156_i16 : tensor<16xi16>
        %false_58 = index.bool.constant false
        %270 = math.fma %9, %9, %9 : tensor<4xf32>
        %271 = arith.shrui %false, %false : i1
        %272 = arith.minsi %true_28, %false_2 : i1
        %true_59 = index.bool.constant true
        %273 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      }
      %257 = math.ctpop %c1523921471_i32 : i32
      memref.tensor_store %17, %alloc_16 : memref<3xf16>
      %258 = math.ipowi %true, %false : i1
      scf.yield
    }
    %105 = bufferization.clone %alloc_12 : memref<16xi32> to memref<16xi32>
    %splat = tensor.splat %c1523921471_i32 : tensor<4xi32>
    %alloc_33 = memref.alloc() : memref<3xi1>
    memref.tensor_store %6, %alloc_33 : memref<3xi1>
    %106 = vector.create_mask %c9, %c0 : vector<6x6xi1>
    %107 = math.floor %cst_0 : f32
    %108 = index.casts %97 : index to i32
    %109 = tensor.empty() : tensor<3x3x3xi32>
    %110 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<3xi32>) outs(%109 : tensor<3x3x3xi32>) {
    ^bb0(%in: i32, %out: i32):
      %246 = index.sizeof
      %247 = vector.insertelement %c1523921471_i32, %33[%c13 : index] : vector<3xi32>
      %248 = arith.remsi %true_27, %false_2 : i1
      %249 = math.log10 %cst_21 : f16
      %250 = math.fma %3, %3, %17 : tensor<3xf16>
      %251 = math.atan2 %7, %12 : tensor<16xf16>
      %252 = math.fma %3, %3, %3 : tensor<3xf16>
      %253 = math.exp2 %cst_0 : f32
      %254 = math.log2 %16 : tensor<3xf16>
      %255 = vector.broadcast %false : i1 to vector<6xi1>
      %dest_56, %accumulated_value_57 = vector.scan <and>, %106, %255 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %256 = vector.extract %49[0] : vector<3xi32>
      %257 = arith.shli %true_22, %true_27 : i1
      %258 = arith.divui %true_28, %true_26 : i1
      %259 = arith.cmpf uno, %cst, %cst_3 : f16
      %260 = vector.insert %c306918922_i32, %33 [1] : i32 into vector<3xi32>
      %261 = vector.broadcast %false : i1 to vector<16xi1>
      %262 = math.ipowi %true, %false_23 : i1
      %263 = bufferization.to_tensor %alloc_15 : memref<3xi32>
      %264 = math.cos %3 : tensor<3xf16>
      %265 = math.exp %12 : tensor<16xf16>
      %266 = arith.addf %cst, %cst_1 : f16
      %267 = index.add %c4, %76
      %c0_i32_58 = arith.constant 0 : i32
      %268 = vector.transfer_read %1[%57, %57], %c0_i32_58 : tensor<6x6xi32>, vector<6xi32>
      %269 = index.add %c12, %c14
      %270 = arith.cmpf ule, %cst_21, %cst_3 : f16
      %cst_59 = arith.constant 3.644800e+04 : f16
      %271 = index.mul %c5, %65
      %272 = vector.broadcast %true : i1 to vector<16x16xi1>
      %273 = vector.outerproduct %261, %261, %272 {kind = #vector.kind<xor>} : vector<16xi1>, vector<16xi1>
      %false_60 = index.bool.constant false
      %274 = arith.shrui %extracted, %in : i32
      %275 = math.tan %9 : tensor<4xf32>
      %276 = memref.atomic_rmw minf %cst, %alloc_16[%c1] : (f16, memref<3xf16>) -> f16
      linalg.yield %c1697511383_i32 : i32
    } -> tensor<3x3x3xi32>
    %splat_34 = tensor.splat %c1523921471_i32 : tensor<4xi32>
    %111 = math.absf %12 : tensor<16xf16>
    %112 = index.maxs %c1, %c5
    %113 = math.absf %cst_1 : f16
    %114 = math.exp2 %12 : tensor<16xf16>
    %115 = bufferization.to_tensor %alloc_8 : memref<4xi32>
    %116 = arith.remsi %c1523921471_i32, %c1697511383_i32 : i32
    %117 = math.round %3 : tensor<3xf16>
    %118 = vector.extract_strided_slice %82 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
    %119 = arith.maxui %c437334091_i64, %c437334091_i64 : i64
    %120 = memref.atomic_rmw mins %extracted, %alloc_14[%c4, %c3] : (i32, memref<6x6xi32>) -> i32
    %121 = arith.minf %cst_21, %cst_3 : f16
    %alloc_35 = memref.alloc() : memref<16xi64>
    memref.tensor_store %10, %alloc_35 : memref<16xi64>
    %122 = arith.maxui %95, %extracted_30 : i16
    affine.for %arg1 = 0 to 16 {
    }
    %123 = vector.broadcast %true : i1 to vector<6xi1>
    %dest_36, %accumulated_value_37 = vector.scan <xor>, %106, %123 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
    %cast = tensor.cast %8 : tensor<6x6xi1> to tensor<?x?xi1>
    %124 = index.sizeof
    %125 = vector.extract %48[0] : vector<3xi1>
    %126 = vector.extract %33[2] : vector<3xi32>
    %127 = tensor.empty() : tensor<3x3x3xi32>
    %128 = tensor.empty() : tensor<3x3xi32>
    %129 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%127, %0, %128 : tensor<3x3x3xi32>, tensor<3xi32>, tensor<3x3xi32>) outs(%127 : tensor<3x3x3xi32>) {
    ^bb0(%in: i32, %in_56: i32, %in_57: i32, %out: i32):
      %246 = arith.negf %cst_21 : f16
      %247 = math.absf %cst_3 : f16
      %extracted_58 = tensor.extract %8[%c4, %c4] : tensor<6x6xi1>
      %248 = vector.create_mask %28 : vector<3xi1>
      %249 = math.ctpop %true_22 : i1
      %true_59 = index.bool.constant true
      %cast_60 = tensor.cast %13 : tensor<6x6xi16> to tensor<?x?xi16>
      %true_61 = index.bool.constant true
      %250 = vector.load %alloc_8[%c1] : memref<4xi32>, vector<6x6xi32>
      %251 = vector.load %alloc_20[] : memref<i32>, vector<6x6xi32>
      %252 = index.maxu %70, %28
      %253 = vector.insertelement %in_57, %49[%28 : index] : vector<3xi32>
      %254 = vector.splat %true_59 : vector<16xi1>
      %255 = vector.insertelement %true_61, %118[%c7 : index] : vector<3xi1>
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %33, %49, %in : vector<3xi32>, vector<3xi32> into i32
      %257 = math.fma %7, %12, %7 : tensor<16xf16>
      %258 = bufferization.to_tensor %alloc : memref<16xi32>
      %259 = arith.maxui %c-30156_i16, %c7964_i16 : i16
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %250, %251, %250 : vector<6x6xi32>, vector<6x6xi32> into vector<6x6xi32>
      %261 = math.fma %16, %16, %16 : tensor<3xf16>
      %262 = math.ipowi %false_23, %true_29 : i1
      %263 = vector.matrix_multiply %118, %82 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %264 = vector.broadcast %false : i1 to vector<6xi1>
      %dest_62, %accumulated_value_63 = vector.scan <add>, %106, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
      %extracted_64 = tensor.extract %5[%c8] : tensor<16xi16>
      %265 = math.powf %cst_21, %cst : f16
      %266 = arith.subi %c-8157_i16, %95 : i16
      %267 = arith.divsi %extracted_30, %extracted_30 : i16
      %268 = arith.andi %c-30156_i16, %c7964_i16 : i16
      %269 = index.sub %c8, %c5
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_65 = arith.constant 0 : i16
      %270 = vector.transfer_read %13[%c5, %252], %c0_i16_65 : tensor<6x6xi16>, vector<i16>
      %271 = arith.remf %cst_0, %cst_0 : f32
      %272 = affine.for %arg1 = 0 to 108 iter_args(%arg2 = %c3) -> (index) {
        affine.yield %c3 : index
      }
      linalg.yield %c1523921471_i32 : i32
    } -> tensor<3x3x3xi32>
    %130 = math.round %3 : tensor<3xf16>
    %131 = scf.while (%arg1 = %alloc_17) : (memref<6x6xi64>) -> memref<6x6xi64> {
      %246 = arith.shli %95, %c-8157_i16 : i16
      %247 = bufferization.to_memref %5 : memref<16xi16>
      %248 = vector.reduction <and>, %49 : vector<3xi32> into i32
      %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c1697511383_i32 : vector<4xi32>, vector<4xi32> into i32
      %splat_56 = tensor.splat %cst_3 : tensor<4xf16>
      %250 = math.floor %splat_56 : tensor<4xf16>
      %251 = arith.divsi %c1_i64, %c437334091_i64 : i64
      %252 = arith.remf %cst_21, %cst : f16
      scf.condition(%true) %arg1 : memref<6x6xi64>
    } do {
    ^bb0(%arg1: memref<6x6xi64>):
      %246 = index.ceildivu %c6, %c12
      %247 = arith.remf %cst_21, %cst_1 : f16
      %248 = vector.splat %c1523921471_i32 : vector<16xi32>
      scf.execute_region {
        %258 = arith.negf %cst_4 : f32
        %259 = math.ctpop %false : i1
        %260 = index.sizeof
        %261 = math.fma %9, %9, %9 : tensor<4xf32>
        %262 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d0) ceildiv 4 - d0, -((d0 - 8) mod 32), d0 + d2 * 16 + d2, (d0 - 8) * 2048)>(%c8, %c3, %c2, %260)
        %263 = memref.atomic_rmw muli %extracted, %alloc_15[%c2] : (i32, memref<3xi32>) -> i32
        %264 = affine.max affine_map<(d0) -> (-(d0 + 64) + 1, -(d0 + 64) - (d0 + d0 + d0 + 128 + 128) + 1, d0 + 128)>(%c6)
        %265 = memref.atomic_rmw muli %c1523921471_i32, %alloc_5[%c1] : (i32, memref<4xi32>) -> i32
        %cast_57 = tensor.cast %10 : tensor<16xi64> to tensor<?xi64>
        %266 = arith.minsi %true_27, %true_26 : i1
        %267 = index.sizeof
        %268 = math.absi %true_29 : i1
        %269 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
        %270 = bufferization.clone %alloc_13 : memref<4xi1> to memref<4xi1>
        %271 = arith.minui %c1697511383_i32, %c306918922_i32 : i32
        %272 = memref.atomic_rmw muli %c1697511383_i32, %105[%c4] : (i32, memref<16xi32>) -> i32
        scf.yield
      }
      %249 = index.casts %38 : index to i32
      %250 = index.add %97, %97
      %251 = arith.remsi %true_27, %false_2 : i1
      %252 = vector.flat_transpose %118 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %253 = math.tan %17 : tensor<3xf16>
      %254 = math.log10 %16 : tensor<3xf16>
      %255 = index.add %112, %c2
      %256 = math.exp2 %12 : tensor<16xf16>
      bufferization.dealloc_tensor %1 : tensor<6x6xi32>
      %257 = math.atan2 %cst_0, %cst_4 : f32
      %alloc_56 = memref.alloc() : memref<3xi32>
      scf.if %false_23 {
        %258 = vector.broadcast %cst_4 : f32 to vector<6x6xf32>
        %259 = vector.fma %258, %258, %258 : vector<6x6xf32>
        %alloc_57 = memref.alloc() : memref<3xi64>
        memref.copy %alloc_11, %alloc_57 : memref<3xi64> to memref<3xi64>
        memref.copy %alloc, %alloc_7 : memref<16xi32> to memref<16xi32>
        %260 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %258, %260 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xf32>, vector<6xf32>
        %261 = arith.remsi %c7964_i16, %c-549_i16 : i16
        %262 = arith.minf %cst, %cst_3 : f16
        %true_60 = index.bool.constant true
        %263 = affine.apply affine_map<(d0, d1) -> (-(d1 - 64) - d1 - 128)>(%124, %104)
      }
      scf.yield %alloc_17 : memref<6x6xi64>
    }
    %false_38 = index.bool.constant false
    %132 = arith.maxui %c1697511383_i32, %c306918922_i32 : i32
    %133 = index.castu %true : i1 to index
    %134 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
    %splat_39 = tensor.splat %cst : tensor<16xf16>
    %135 = math.round %12 : tensor<16xf16>
    %alloca = memref.alloca() : memref<6x6xf32>
    %136 = math.fma %splat_39, %7, %12 : tensor<16xf16>
    %false_40 = index.bool.constant false
    %137 = math.expm1 %cst : f16
    %138 = vector.load %alloc_15[%c0] : memref<3xi32>, vector<3xi32>
    %139 = math.ctpop %13 : tensor<6x6xi16>
    %rank = tensor.rank %21 : tensor<16xi16>
    %140 = index.ceildivu %70, %c15
    %141 = arith.remsi %extracted_30, %extracted_30 : i16
    %142 = index.ceildivu %c0, %65
    %143 = arith.subi %c-30156_i16, %95 : i16
    %144 = math.absi %14 : tensor<6x6xi32>
    %145 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 - 8), d2 ceildiv 2, -(d0 - 64), ((d1 * 16) mod 64) floordiv 16)>(%28, %c15, %c8, %c15)
    %146 = vector.extract %106[1] : vector<6x6xi1>
    %147 = vector.create_mask %98, %142 : vector<6x6xi1>
    %148 = scf.index_switch %c4 -> vector<16xi64> 
    case 1 {
      %246 = arith.remf %cst_1, %cst : f16
      %alloc_56 = memref.alloc() : memref<16xi32>
      %dest_57, %accumulated_value_58 = vector.scan <xor>, %147, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %247 = math.tan %cst_1 : f16
      scf.index_switch %65 
      case 1 {
        %259 = math.round %cst_1 : f16
        %260 = vector.maskedload %alloc_18[%c0, %c5], %82, %49 : memref<6x6xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %261 = arith.cmpf false, %cst_4, %cst_4 : f32
        %262 = math.atan2 %12, %splat_39 : tensor<16xf16>
        %263 = bufferization.to_tensor %alloc_5 : memref<4xi32>
        %264 = bufferization.to_tensor %alloc_17 : memref<6x6xi64>
        %265 = vector.create_mask %69 : vector<3xi1>
        %266 = math.floor %cst_0 : f32
        %267 = index.sizeof
        %268 = vector.broadcast %true : i1 to vector<3x3xi1>
        %269 = vector.outerproduct %48, %118, %268 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
        %270 = arith.cmpi eq, %extracted_30, %extracted_30 : i16
        %271 = vector.insertelement %extracted, %20[%c5 : index] : vector<4xi32>
        %alloc_60 = memref.alloc() : memref<16xf16>
        memref.tensor_store %7, %alloc_60 : memref<16xf16>
        %rank_61 = tensor.rank %6 : tensor<3xi1>
        memref.tensor_store %splat, %alloc_8 : memref<4xi32>
        %272 = vector.broadcast %cst_21 : f16 to vector<4xf16>
        scf.yield
      }
      default {
        %259 = math.exp %17 : tensor<3xf16>
        %260 = index.mul %c5, %c7
        %true_60 = index.bool.constant true
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %82, %82, %false_23 : vector<3xi1>, vector<3xi1> into i1
        %262 = vector.insert %true_22, %82 [2] : i1 into vector<3xi1>
        memref.copy %105, %alloc_12 : memref<16xi32> to memref<16xi32>
        %263 = memref.realloc %alloc_15 : memref<3xi32> to memref<16xi32>
        %264 = memref.realloc %alloc_19 : memref<4xi64> to memref<3xi64>
        %alloc_61 = memref.alloc() : memref<4xf16>
        %265 = vector.broadcast %cst : f16 to vector<6x6xf16>
        %266 = vector.broadcast %c1697511383_i32 : i32 to vector<6x6xi32>
        %267 = vector.gather %alloc_61[%124] [%266], %147, %265 : memref<4xf16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xf16> into vector<6x6xf16>
        %268 = arith.negf %cst : f16
        %269 = arith.andi %c437334091_i64, %c1_i64 : i64
        %270 = arith.shrui %c1_i64, %c437334091_i64 : i64
        %271 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        %272 = vector.multi_reduction <add>, %267, %271 [0] : vector<6x6xf16> to vector<6xf16>
        %273 = arith.negf %cst_0 : f32
        %274 = math.floor %3 : tensor<3xf16>
        %275 = math.sqrt %16 : tensor<3xf16>
      }
      %248 = math.ipowi %c437334091_i64, %c437334091_i64 : i64
      %249 = vector.flat_transpose %33 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
      %extracted_59 = tensor.extract %12[%c12] : tensor<16xf16>
      %250 = math.exp %3 : tensor<3xf16>
      %251 = vector.create_mask %53, %57 : vector<6x6xi1>
      %252 = memref.realloc %alloc_7 : memref<16xi32> to memref<16xi32>
      %253 = arith.maxui %false_40, %false_38 : i1
      %254 = arith.maxui %false_23, %false_40 : i1
      %255 = arith.cmpf ule, %cst_21, %cst_1 : f16
      %256 = vector.insertelement %c1523921471_i32, %249[%140 : index] : vector<3xi32>
      %257 = vector.insert %false_2, %82 [0] : i1 into vector<3xi1>
      %258 = vector.broadcast %c437334091_i64 : i64 to vector<16xi64>
      scf.yield %258 : vector<16xi64>
    }
    case 2 {
      %false_56 = index.bool.constant false
      %246 = math.ceil %7 : tensor<16xf16>
      %247 = math.tan %12 : tensor<16xf16>
      scf.execute_region {
        %261 = vector.broadcast %true_28 : i1 to vector<16x16xi1>
        %262 = vector.outerproduct %67, %67, %261 {kind = #vector.kind<or>} : vector<16xi1>, vector<16xi1>
        %263 = math.absf %9 : tensor<4xf32>
        %264 = bufferization.to_tensor %alloc_15 : memref<3xi32>
        %265 = memref.realloc %alloc_11 : memref<3xi64> to memref<4xi64>
        %266 = memref.realloc %alloc : memref<16xi32> to memref<3xi32>
        %267 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
        %268 = index.sub %c6, %140
        %269 = arith.maxsi %true_27, %true_28 : i1
        %270 = math.ceil %splat_39 : tensor<16xf16>
        %271 = math.powf %cst_0, %cst_4 : f32
        %272 = math.log10 %cst_4 : f32
        %273 = arith.minsi %extracted, %c1523921471_i32 : i32
        %274 = bufferization.clone %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
        %alloc_58 = memref.alloc() : memref<3xf16>
        %inserted = tensor.insert %c-549_i16 into %23[] : tensor<i16>
        %cast_59 = tensor.cast %11 : tensor<3xi16> to tensor<?xi16>
        scf.yield
      }
      %248 = tensor.empty() : tensor<3x3x3xi32>
      %249 = tensor.empty() : tensor<3x3xi32>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%249 : tensor<3x3xi32>) outs(%248 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %261 = arith.andi %in, %c1697511383_i32 : i32
        %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %33, %33, %extracted : vector<3xi32>, vector<3xi32> into i32
        %263 = math.roundeven %12 : tensor<16xf16>
        %false_58 = arith.constant false
        %264 = vector.transfer_read %alloc_10[%c12], %false_58 : memref<16xi1>, vector<i1>
        %265 = memref.load %alloc_15[%c0] : memref<3xi32>
        %266 = math.atan2 %9, %9 : tensor<4xf32>
        %267 = index.floordivs %c14, %c6
        %268 = arith.minui %true_22, %true_26 : i1
        %269 = math.fma %16, %17, %17 : tensor<3xf16>
        %270 = math.log10 %splat_39 : tensor<16xf16>
        %271 = arith.divui %true_27, %true_27 : i1
        %272 = arith.maxui %c1_i64, %c437334091_i64 : i64
        %273 = math.powf %12, %splat_39 : tensor<16xf16>
        %274 = math.ipowi %from_elements, %0 : tensor<3xi32>
        %275 = math.atan2 %7, %splat_39 : tensor<16xf16>
        %276 = arith.maxui %out, %out : i32
        %277 = vector.extract_strided_slice %20 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi32> to vector<2xi32>
        %278 = bufferization.to_tensor %alloc_9 : memref<16xi16>
        %279 = math.absf %cst_4 : f32
        %280 = math.roundeven %17 : tensor<3xf16>
        %281 = math.atan %12 : tensor<16xf16>
        %282 = arith.minui %false_40, %true_29 : i1
        %283 = affine.max affine_map<(d0, d1, d2) -> (d2, ((d1 ceildiv 64 + 16) ceildiv 32) ceildiv 8)>(%98, %c9, %c2)
        memref.store %c-8157_i16, %alloc_9[%c12] : memref<16xi16>
        %284 = index.sizeof
        bufferization.dealloc_tensor %17 : tensor<3xf16>
        %285 = arith.addf %cst_1, %cst_21 : f16
        %dest_59, %accumulated_value_60 = vector.scan <or>, %106, %146 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
        %286 = index.casts %284 : index to i32
        %287 = vector.load %alloc_20[] : memref<i32>, vector<4xi32>
        %288 = vector.transpose %277, [0] : vector<2xi32> to vector<2xi32>
        %289 = math.absf %17 : tensor<3xf16>
        linalg.yield %c306918922_i32 : i32
      } -> tensor<3x3x3xi32>
      %251 = arith.floordivsi %c-8157_i16, %c-30156_i16 : i16
      %252 = bufferization.to_tensor %alloc_14 : memref<6x6xi32>
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %67, %67, %true_29 : vector<16xi1>, vector<16xi1> into i1
      %254 = index.casts %true : i1 to index
      %alloca_57 = memref.alloca() : memref<4xf16>
      %255 = math.ipowi %252, %1 : tensor<6x6xi32>
      %256 = vector.extract_strided_slice %147 {offsets = [1], sizes = [4], strides = [1]} : vector<6x6xi1> to vector<4x6xi1>
      %257 = memref.atomic_rmw assign %c1_i64, %alloc_11[%c0] : (i64, memref<3xi64>) -> i64
      %258 = math.absf %cst : f16
      %259 = math.expm1 %9 : tensor<4xf32>
      %generated = tensor.generate %c13 {
      ^bb0(%arg1: index):
        %261 = memref.load %alloc_6[%c2] : memref<3xi16>
        %262 = vector.splat %false_2 : vector<4xi1>
        %263 = index.ceildivu %133, %57
        %264 = arith.divsi %false_40, %true_22 : i1
        tensor.yield %extracted : i32
      } : tensor<?xi32>
      %260 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
      scf.yield %260 : vector<16xi64>
    }
    case 3 {
      %246 = tensor.empty() : tensor<3x3x3xi32>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%246, %246 : tensor<3x3x3xi32>, tensor<3x3x3xi32>) outs(%246 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_58: i32, %out: i32):
        memref.tensor_store %4, %alloc_13 : memref<4xi1>
        %263 = bufferization.to_tensor %alloc_11 : memref<3xi64>
        %alloc_59 = memref.alloc() : memref<3xi1>
        memref.tensor_store %6, %alloc_59 : memref<3xi1>
        %264 = bufferization.clone %alloc_11 : memref<3xi64> to memref<3xi64>
        %cast_60 = tensor.cast %0 : tensor<3xi32> to tensor<?xi32>
        %265 = arith.minui %extracted, %in_58 : i32
        %266 = arith.addf %cst, %cst : f16
        %267 = index.mul %c7, %65
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 8, d0 - 8, d0 + 8)>(%97, %97, %c11, %145)
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %extracted : vector<4xi32>, vector<4xi32> into i32
        %alloc_61 = memref.alloc() : memref<3xi64>
        %270 = tensor.empty() : tensor<6x6xi16>
        %271 = linalg.matmul ins(%13, %13 : tensor<6x6xi16>, tensor<6x6xi16>) outs(%270 : tensor<6x6xi16>) -> tensor<6x6xi16>
        %272 = arith.subi %false_38, %true_27 : i1
        %273 = math.absf %12 : tensor<16xf16>
        %274 = index.maxu %c10, %c11
        %275 = math.fma %splat_39, %12, %12 : tensor<16xf16>
        %cast_62 = tensor.cast %15 : tensor<4xi64> to tensor<?xi64>
        %276 = arith.floordivsi %c-8157_i16, %extracted_30 : i16
        %277 = arith.andi %false_2, %true_22 : i1
        %expanded_63 = tensor.expand_shape %11 [[0, 1]] : tensor<3xi16> into tensor<3x1xi16>
        %alloc_64 = memref.alloc() : memref<6x6xi16>
        %278 = index.ceildivu %c14, %267
        %279 = vector.broadcast %c1523921471_i32 : i32 to vector<6xi32>
        %280 = vector.maskedload %alloc_20[], %146, %279 : memref<i32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        vector.print %146 : vector<6xi1>
        memref.assume_alignment %alloc_6, 8 : memref<3xi16>
        %281 = vector.extract_strided_slice %82 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
        %282 = math.ctlz %11 : tensor<3xi16>
        %283 = vector.matrix_multiply %33, %20 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<3xi32>, vector<4xi32>) -> vector<12xi32>
        %284 = math.exp %12 : tensor<16xf16>
        %285 = math.round %9 : tensor<4xf32>
        %286 = arith.maxui %true_28, %false_2 : i1
        %287 = vector.extract %67[6] : vector<16xi1>
        linalg.yield %c1697511383_i32 : i32
      } -> tensor<3x3x3xi32>
      %248 = vector.broadcast %c1697511383_i32 : i32 to vector<4x4xi32>
      %249 = vector.outerproduct %20, %20, %248 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
      %250 = index.floordivs %38, %c0
      %251 = memref.atomic_rmw addi %c437334091_i64, %alloc_17[%c3, %c4] : (i64, memref<6x6xi64>) -> i64
      %252 = math.absf %splat_39 : tensor<16xf16>
      affine.store %c306918922_i32, %105[%c9] : memref<16xi32>
      %253 = vector.broadcast %c1523921471_i32 : i32 to vector<16xi32>
      %254 = vector.maskedload %alloc_8[%c3], %67, %253 : memref<4xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 8)>(%97, %c3, %250, %c3)
      %256 = index.sizeof
      %257 = arith.remf %cst_4, %cst_4 : f32
      %258 = math.exp %7 : tensor<16xf16>
      %259 = arith.divsi %true_26, %false_40 : i1
      %260 = scf.while (%arg1 = %cst_21) : (f16) -> f16 {
        %splat_58 = tensor.splat %false_23 : tensor<6x6xi1>
        %263 = arith.maxsi %c-549_i16, %c7964_i16 : i16
        %264 = arith.andi %c7964_i16, %95 : i16
        %265 = vector.load %alloc_19[%c3] : memref<4xi64>, vector<16xi64>
        %266 = vector.insert %true_27, %48 [1] : i1 into vector<3xi1>
        %267 = vector.extract_strided_slice %254 {offsets = [6], sizes = [8], strides = [1]} : vector<16xi32> to vector<8xi32>
        %268 = vector.broadcast %false_38 : i1 to vector<3x3xi1>
        %269 = vector.outerproduct %82, %82, %268 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %270 = vector.insertelement %extracted, %138[%142 : index] : vector<3xi32>
        scf.condition(%false_38) %arg1 : f16
      } do {
      ^bb0(%arg1: f16):
        %263 = affine.min affine_map<(d0, d1, d2) -> (-(d0 - 2) - (d0 + 2), d0 - 128)>(%142, %140, %c13)
        %264 = math.absi %15 : tensor<4xi64>
        %265 = arith.floordivsi %extracted_30, %c-8157_i16 : i16
        %extracted_58 = tensor.extract %2[%c0] : tensor<3xi16>
        %266 = math.atan2 %cst_4, %cst_4 : f32
        %267 = vector.insertelement %false_40, %67[%c3 : index] : vector<16xi1>
        %268 = arith.maxui %false_40, %true_27 : i1
        %cst_59 = arith.constant 1.000000e+00 : f16
        %cst_60 = arith.constant 0.000000e+00 : f16
        %269 = vector.transfer_read %alloc_16[%c14], %cst_60 : memref<3xf16>, vector<f16>
        %270 = arith.negf %arg1 : f16
        %c1_i64_61 = arith.constant 1 : i64
        %271 = vector.transfer_read %alloc_11[%145], %c1_i64_61 : memref<3xi64>, vector<i64>
        %272 = vector.outerproduct %146, %146, %147 {kind = #vector.kind<or>} : vector<6xi1>, vector<6xi1>
        %273 = math.atan %12 : tensor<16xf16>
        %274 = arith.minui %extracted_30, %c-8157_i16 : i16
        %275 = vector.extract_strided_slice %118 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %276 = arith.cmpf une, %cst_1, %cst_21 : f16
        %277 = memref.load %alloc_16[%c1] : memref<3xf16>
        scf.yield %cst_59 : f16
      }
      %261 = math.ctpop %true_27 : i1
      %extracted_56 = tensor.extract %115[%c1] : tensor<4xi32>
      %alloca_57 = memref.alloca() : memref<4xi16>
      %262 = vector.broadcast %c437334091_i64 : i64 to vector<16xi64>
      scf.yield %262 : vector<16xi64>
    }
    case 4 {
      %true_56 = index.bool.constant true
      %246 = vector.multi_reduction <add>, %106, %147 [] : vector<6x6xi1> to vector<6x6xi1>
      %247 = vector.insertelement %false_38, %48[%c4 : index] : vector<3xi1>
      %248 = vector.matrix_multiply %146, %118 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<3xi1>) -> vector<2xi1>
      %249 = math.ctpop %95 : i16
      %250 = bufferization.clone %alloc_9 : memref<16xi16> to memref<16xi16>
      %251 = vector.broadcast %false : i1 to vector<3x3xi1>
      %252 = vector.outerproduct %82, %118, %251 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
      %253 = index.mul %c1, %c5
      %254 = tensor.empty() : tensor<3x3x3xi32>
      %alloc_57 = memref.alloc() : memref<3x3xi32>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %alloc_57 : tensor<3xi32>, memref<3x3xi32>) outs(%254 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_60: i32, %out: i32):
        %262 = arith.divsi %true, %false_23 : i1
        %263 = math.ipowi %10, %10 : tensor<16xi64>
        %264 = arith.divui %true_26, %true_27 : i1
        %265 = vector.bitcast %138 : vector<3xi32> to vector<3xi32>
        %266 = math.rsqrt %7 : tensor<16xf16>
        %267 = math.absi %6 : tensor<3xi1>
        %268 = math.atan2 %17, %3 : tensor<3xf16>
        %269 = math.log10 %7 : tensor<16xf16>
        %270 = index.casts %true_29 : i1 to index
        memref.tensor_store %4, %90 : memref<4xi1>
        %271 = arith.divf %cst_1, %cst_21 : f16
        %272 = bufferization.to_memref %18 : memref<16xi32>
        %273 = vector.extract %265[0] : vector<3xi32>
        %274 = index.mul %c12, %c3
        %275 = math.fma %cst_0, %cst_4, %cst_4 : f32
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %49, %33, %out : vector<3xi32>, vector<3xi32> into i32
        %277 = arith.andi %c1523921471_i32, %c1697511383_i32 : i32
        %278 = math.floor %16 : tensor<3xf16>
        %279 = math.absf %splat_39 : tensor<16xf16>
        %280 = index.sizeof
        %281 = vector.extract_strided_slice %49 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi32> to vector<1xi32>
        %282 = arith.minsi %true_27, %false_38 : i1
        %283 = math.fma %9, %9, %9 : tensor<4xf32>
        %284 = bufferization.clone %90 : memref<4xi1> to memref<4xi1>
        %285 = vector.broadcast %false_38 : i1 to vector<3x3xi1>
        %286 = vector.outerproduct %48, %48, %285 {kind = #vector.kind<and>} : vector<3xi1>, vector<3xi1>
        %287 = math.expm1 %cst_3 : f16
        %288 = vector.transpose %82, [0] : vector<3xi1> to vector<3xi1>
        %289 = memref.load %alloc_14[%c0, %c0] : memref<6x6xi32>
        %290 = index.sizeof
        %291 = affine.min affine_map<(d0, d1) -> ((d1 - 32) ceildiv 4)>(%97, %124)
        memref.assume_alignment %alloc_13, 16 : memref<4xi1>
        %292 = affine.max affine_map<(d0) -> (-d0)>(%c14)
        linalg.yield %out : i32
      } -> tensor<3x3x3xi32>
      %256 = vector.create_mask %c10, %112 : vector<6x6xi1>
      %257 = vector.create_mask %c12 : vector<16xi1>
      %258 = vector.matrix_multiply %89, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi32>, vector<4xi32>) -> vector<4xi32>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %33, %49, %c306918922_i32 : vector<3xi32>, vector<3xi32> into i32
      %expanded_58 = tensor.expand_shape %6 [[0, 1]] : tensor<3xi1> into tensor<3x1xi1>
      %260 = arith.minsi %c1523921471_i32, %c306918922_i32 : i32
      %collapsed_59 = tensor.collapse_shape %1 [[0, 1]] : tensor<6x6xi32> into tensor<36xi32>
      %261 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
      scf.yield %261 : vector<16xi64>
    }
    default {
      %246 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      %247 = vector.reduction <or>, %138 : vector<3xi32> into i32
      %248 = vector.matrix_multiply %118, %118 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %249 = arith.minf %cst, %cst : f16
      %250 = arith.minui %95, %c-549_i16 : i16
      %251 = math.ctpop %true_26 : i1
      %252 = arith.andi %extracted_30, %c7964_i16 : i16
      %253 = arith.floordivsi %extracted, %extracted : i32
      %254 = arith.addf %cst_0, %cst_4 : f32
      %255 = arith.cmpf ule, %cst_0, %cst_0 : f32
      %256 = arith.divsi %c1697511383_i32, %extracted : i32
      %257 = arith.addi %true, %true_29 : i1
      %258 = index.mul %c4, %c13
      %259 = bufferization.to_tensor %alloc_20 : memref<i32>
      %260 = vector.splat %c1523921471_i32 : vector<4xi32>
      %261 = index.casts %70 : index to i32
      %262 = vector.broadcast %c437334091_i64 : i64 to vector<16xi64>
      scf.yield %262 : vector<16xi64>
    }
    %149 = math.powf %cst_21, %cst_21 : f16
    scf.index_switch %c11 
    case 1 {
      %246 = scf.index_switch %53 -> memref<6x6xi16> 
      case 1 {
        %260 = index.ceildivu %140, %57
        %261 = arith.negf %cst_4 : f32
        %262 = arith.cmpf uno, %cst_0, %cst_0 : f32
        %263 = arith.remf %cst_3, %cst_3 : f16
        %264 = math.round %cst : f16
        %265 = arith.floordivsi %true, %true_22 : i1
        %266 = vector.matrix_multiply %33, %89 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
        %267 = math.fma %cst_21, %cst, %cst_21 : f16
        %268 = memref.realloc %alloc_9 : memref<16xi16> to memref<4xi16>
        memref.tensor_store %from_elements_31, %alloc_6 : memref<3xi16>
        %269 = vector.extract_strided_slice %20 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi32> to vector<4xi32>
        %270 = arith.remf %cst_0, %cst_4 : f32
        %alloc_57 = memref.alloc() : memref<i32>
        memref.copy %alloc_20, %alloc_57 : memref<i32> to memref<i32>
        %271 = arith.ori %extracted_30, %c-549_i16 : i16
        %272 = math.ceil %9 : tensor<4xf32>
        %273 = bufferization.clone %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
        %alloc_58 = memref.alloc() : memref<6x6xi16>
        scf.yield %alloc_58 : memref<6x6xi16>
      }
      case 2 {
        %260 = arith.divf %cst_3, %cst_21 : f16
        %261 = arith.maxui %c7964_i16, %c7964_i16 : i16
        %262 = math.log2 %17 : tensor<3xf16>
        %263 = arith.cmpf false, %cst_1, %cst : f16
        %264 = vector.flat_transpose %67 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %265 = arith.divui %true_27, %false_2 : i1
        %266 = vector.broadcast %extracted : i32 to vector<3x3xi32>
        %267 = vector.outerproduct %138, %33, %266 {kind = #vector.kind<mul>} : vector<3xi32>, vector<3xi32>
        %268 = arith.minsi %c306918922_i32, %extracted : i32
        %expanded_57 = tensor.expand_shape %from_elements [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
        %269 = vector.create_mask %112 : vector<16xi1>
        %270 = math.fpowi %cst_0, %extracted : f32, i32
        %271 = affine.apply affine_map<(d0, d1) -> (-(d1 - 64) - d1 - 128)>(%c8, %145)
        %272 = vector.broadcast %true_27 : i1 to vector<4xi1>
        %273 = vector.maskedload %39[%c3, %c3], %272, %272 : memref<6x6xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %274 = arith.subi %false, %false_40 : i1
        %275 = bufferization.to_memref %18 : memref<16xi32>
        %276 = math.powf %cst_21, %cst : f16
        %alloc_58 = memref.alloc() : memref<6x6xi16>
        scf.yield %alloc_58 : memref<6x6xi16>
      }
      default {
        %260 = math.absf %7 : tensor<16xf16>
        %261 = arith.remsi %95, %95 : i16
        %262 = math.exp %cst_0 : f32
        %263 = arith.floordivsi %true_27, %false_38 : i1
        %264 = vector.insert %c1697511383_i32, %138 [1] : i32 into vector<3xi32>
        %expanded_57 = tensor.expand_shape %17 [[0, 1]] : tensor<3xf16> into tensor<3x1xf16>
        %265 = memref.realloc %alloc_15 : memref<3xi32> to memref<6xi32>
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d1 mod 16, d1 mod 16 - 1, d0, d2)>(%98, %98, %70, %140)
        %267 = vector.load %alloc_13[%c2] : memref<4xi1>, vector<16xi1>
        %268 = arith.divsi %true, %true_29 : i1
        %269 = vector.maskedload %39[%c3, %c0], %48, %118 : memref<6x6xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %270 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
        %271 = arith.floordivsi %c-30156_i16, %c7964_i16 : i16
        %272 = vector.broadcast %false_38 : i1 to vector<16x16xi1>
        %273 = vector.outerproduct %267, %267, %272 {kind = #vector.kind<or>} : vector<16xi1>, vector<16xi1>
        %274 = index.ceildivu %c6, %112
        %275 = index.ceildivs %c9, %76
        %alloc_58 = memref.alloc() : memref<6x6xi16>
        scf.yield %alloc_58 : memref<6x6xi16>
      }
      %247 = arith.divsi %c437334091_i64, %c1_i64 : i64
      %248 = arith.minf %cst_21, %cst_3 : f16
      %249 = arith.remf %cst_1, %cst : f16
      %250 = index.maxs %c11, %70
      %251 = arith.addi %c-8157_i16, %c-549_i16 : i16
      %252 = math.atan %cst_1 : f16
      %253 = arith.remui %c437334091_i64, %c437334091_i64 : i64
      %254 = memref.realloc %alloc_13 : memref<4xi1> to memref<3xi1>
      affine.for %arg1 = 0 to 124 {
      }
      %255 = arith.maxsi %true_29, %true_26 : i1
      %256 = math.atan %17 : tensor<3xf16>
      %257 = bufferization.to_tensor %90 : memref<4xi1>
      %258 = arith.minui %c-549_i16, %c-30156_i16 : i16
      %259 = math.exp2 %7 : tensor<16xf16>
      %splat_56 = tensor.splat %false_40 : tensor<16xi1>
      scf.yield
    }
    case 2 {
      %246 = index.castu %c306918922_i32 : i32 to index
      %247 = arith.divsi %c-549_i16, %extracted_30 : i16
      memref.alloca_scope  {
        %258 = math.ceil %7 : tensor<16xf16>
        %true_59 = index.bool.constant true
        %cast_60 = tensor.cast %21 : tensor<16xi16> to tensor<?xi16>
        %259 = arith.addf %cst_1, %cst_3 : f16
        %260 = arith.divsi %c1523921471_i32, %c1523921471_i32 : i32
        %261 = math.log10 %3 : tensor<3xf16>
        %262 = math.fma %12, %splat_39, %7 : tensor<16xf16>
        %263 = bufferization.to_tensor %alloc_6 : memref<3xi16>
        %264 = math.absi %22 : tensor<i16>
        %265 = index.ceildivu %c3, %133
        %266 = bufferization.clone %alloc_19 : memref<4xi64> to memref<4xi64>
        %267 = arith.shrui %extracted_30, %95 : i16
        %268 = math.atan %16 : tensor<3xf16>
        %269 = vector.insertelement %true_27, %48[%69 : index] : vector<3xi1>
        %270 = arith.remui %true_27, %false_38 : i1
        %271 = math.ctpop %2 : tensor<3xi16>
        %alloc_61 = memref.alloc() : memref<6x6xi1>
        %272 = vector.broadcast %false_2 : i1 to vector<3x3xi1>
        %273 = vector.outerproduct %118, %82, %272 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
        memref.tensor_store %11, %alloc_6 : memref<3xi16>
        %274 = index.maxu %28, %265
        %275 = math.ctlz %15 : tensor<4xi64>
        %276 = math.exp %9 : tensor<4xf32>
        %277 = math.fma %splat_39, %7, %7 : tensor<16xf16>
        %splat_62 = tensor.splat %true_29 : tensor<4xi1>
        %278 = memref.load %alloc_10[%c11] : memref<16xi1>
        %279 = arith.minsi %true_27, %false_2 : i1
        %alloc_63 = memref.alloc() : memref<6x6xi1>
        %280 = math.roundeven %cst_4 : f32
        %281 = vector.broadcast %extracted : i32 to vector<4x4xi32>
        %282 = vector.outerproduct %20, %20, %281 {kind = #vector.kind<mul>} : vector<4xi32>, vector<4xi32>
        %283 = math.ipowi %transposed, %transposed : tensor<16xi32>
        %284 = index.mul %c14, %c7
        %285 = math.ipowi %115, %115 : tensor<4xi32>
      }
      %248 = vector.transpose %20, [0] : vector<4xi32> to vector<4xi32>
      scf.if %true_27 {
        %258 = arith.addf %cst_1, %cst_21 : f16
        %259 = vector.splat %cst_0 : vector<16xf32>
        %260 = index.floordivs %c3, %28
        %false_59 = index.bool.constant false
        %261 = index.ceildivu %c1, %145
        %262 = arith.andi %c7964_i16, %c-30156_i16 : i16
        %263 = arith.andi %true_26, %true_27 : i1
        %264 = vector.insertelement %false_23, %146[%70 : index] : vector<6xi1>
      }
      %249 = math.roundeven %7 : tensor<16xf16>
      %250 = vector.flat_transpose %67 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %251 = arith.minsi %true, %false_40 : i1
      %252 = index.add %133, %c8
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %147, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %253 = arith.minf %cst_3, %cst_21 : f16
      %254 = vector.extract %67[11] : vector<16xi1>
      %255 = arith.divui %true_26, %false : i1
      %256 = memref.realloc %alloc_19 : memref<4xi64> to memref<6xi64>
      %alloca_58 = memref.alloca() : memref<6x6xf16>
      %257 = math.ceil %splat_39 : tensor<16xf16>
      scf.yield
    }
    case 3 {
      %dest_56, %accumulated_value_57 = vector.scan <or>, %106, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %246 = tensor.empty() : tensor<3x3x3xi32>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15 : memref<3xi32>) outs(%246 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %out: i32):
        %260 = math.exp2 %7 : tensor<16xf16>
        memref.copy %105, %alloc : memref<16xi32> to memref<16xi32>
        %261 = arith.remsi %false_2, %true_29 : i1
        %false_60 = index.bool.constant false
        %inserted = tensor.insert %out into %14[%c0, %c4] : tensor<6x6xi32>
        %c0_i32_61 = arith.constant 0 : i32
        %c0_i32_62 = arith.constant 0 : i32
        %262 = vector.transfer_read %splat[%112], %c0_i32_62 : tensor<4xi32>, vector<i32>
        %263 = memref.atomic_rmw muli %extracted, %alloc_20[] : (i32, memref<i32>) -> i32
        %264 = vector.extract %20[0] : vector<4xi32>
        %265 = bufferization.clone %alloc_11 : memref<3xi64> to memref<3xi64>
        %266 = arith.remsi %false_60, %true_22 : i1
        %267 = vector.insertelement %extracted, %20[%104 : index] : vector<4xi32>
        %268 = index.sizeof
        %269 = math.fpowi %cst, %c0_i32_61 : f16, i32
        %270 = arith.remsi %c-8157_i16, %95 : i16
        %271 = memref.atomic_rmw maxs %c-30156_i16, %alloc_6[%c1] : (i16, memref<3xi16>) -> i16
        %272 = index.sizeof
        %cast_63 = tensor.cast %11 : tensor<3xi16> to tensor<?xi16>
        %splat_64 = tensor.splat %cst_0 : tensor<6x6xf32>
        %273 = math.fpowi %9, %splat : tensor<4xf32>, tensor<4xi32>
        %expanded_65 = tensor.expand_shape %15 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %extracted_66 = tensor.extract %from_elements_31[%c0] : tensor<3xi16>
        %274 = memref.realloc %alloc_13 : memref<4xi1> to memref<6xi1>
        %true_67 = index.bool.constant true
        %275 = arith.minsi %true_27, %true_27 : i1
        %276 = math.exp %cst : f16
        %277 = math.log %splat_64 : tensor<6x6xf32>
        affine.store %c1523921471_i32, %alloc_15[%c3] : memref<3xi32>
        %278 = math.atan2 %12, %7 : tensor<16xf16>
        %279 = vector.broadcast %cst_0 : f32 to vector<3xf32>
        %280 = vector.fma %279, %279, %279 : vector<3xf32>
        %true_68 = index.bool.constant true
        %281 = math.absf %cst_21 : f16
        %282 = arith.cmpf ord, %cst_1, %cst_3 : f16
        linalg.yield %extracted : i32
      } -> tensor<3x3x3xi32>
      %248 = math.ipowi %c306918922_i32, %c306918922_i32 : i32
      %249 = memref.realloc %alloc_9 : memref<16xi16> to memref<3xi16>
      %250 = vector.extract_strided_slice %106 {offsets = [3], sizes = [2], strides = [1]} : vector<6x6xi1> to vector<2x6xi1>
      %251 = math.exp %16 : tensor<3xf16>
      %252 = vector.insertelement %false_23, %67[%c0 : index] : vector<16xi1>
      %false_58 = index.bool.constant false
      %253 = vector.extract_strided_slice %250 {offsets = [0], sizes = [1], strides = [1]} : vector<2x6xi1> to vector<1x6xi1>
      %alloc_59 = memref.alloc() : memref<16xf16>
      memref.tensor_store %12, %alloc_59 : memref<16xf16>
      %254 = index.floordivs %c13, %124
      %255 = math.log10 %cst_3 : f16
      %256 = vector.extract_strided_slice %48 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
      %257 = index.maxs %104, %c14
      %258 = index.maxu %c5, %133
      %259 = vector.load %alloc_9[%c12] : memref<16xi16>, vector<6x6xi16>
      scf.yield
    }
    case 4 {
      %246 = vector.extract_strided_slice %89 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %247 = math.ceil %12 : tensor<16xf16>
      %248 = math.floor %12 : tensor<16xf16>
      %249 = scf.while (%arg1 = %c437334091_i64) : (i64) -> i64 {
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %49, %33, %c306918922_i32 : vector<3xi32>, vector<3xi32> into i32
        %262 = arith.remui %c-30156_i16, %extracted_30 : i16
        %263 = math.copysign %cst, %cst_21 : f16
        %264 = vector.extract_strided_slice %118 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %265 = memref.atomic_rmw muli %arg1, %alloc_19[%c0] : (i64, memref<4xi64>) -> i64
        %266 = vector.load %alloc_18[%c4, %c5] : memref<6x6xi32>, vector<4xi32>
        %267 = memref.atomic_rmw ori %c1697511383_i32, %105[%c4] : (i32, memref<16xi32>) -> i32
        %268 = memref.load %alloc_6[%c0] : memref<3xi16>
        scf.condition(%true_29) %arg1 : i64
      } do {
      ^bb0(%arg1: i64):
        %261 = memref.realloc %alloc_8 : memref<4xi32> to memref<16xi32>
        %262 = arith.addf %cst_1, %cst_1 : f16
        %263 = index.divu %c10, %c9
        %264 = math.floor %17 : tensor<3xf16>
        %265 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d2 floordiv 128 - 2))>(%69, %c14, %c2, %69)
        %266 = math.floor %3 : tensor<3xf16>
        %extracted_56 = tensor.extract %1[%c3, %c5] : tensor<6x6xi32>
        %267 = arith.negf %cst_3 : f16
        %268 = math.ipowi %extracted, %c1523921471_i32 : i32
        %269 = math.absi %1 : tensor<6x6xi32>
        %270 = math.atan2 %7, %12 : tensor<16xf16>
        %271 = arith.maxui %c-8157_i16, %c-549_i16 : i16
        %272 = arith.mulf %cst_3, %cst : f16
        %273 = vector.matrix_multiply %138, %246 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
        %274 = vector.broadcast %true_27 : i1 to vector<3x3xi1>
        %275 = vector.outerproduct %82, %82, %274 {kind = #vector.kind<maxui>} : vector<3xi1>, vector<3xi1>
        %276 = arith.remui %c-30156_i16, %c-8157_i16 : i16
        scf.yield %c437334091_i64 : i64
      }
      %250 = index.casts %c1523921471_i32 : i32 to index
      %251 = vector.matrix_multiply %89, %89 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %252 = math.absf %cst_1 : f16
      %generated = tensor.generate %104 {
      ^bb0(%arg1: index):
        %261 = vector.bitcast %147 : vector<6x6xi1> to vector<6x6xi1>
        %262 = arith.minsi %false_23, %true_26 : i1
        %263 = arith.divui %extracted_30, %95 : i16
        memref.store %c1_i64, %alloc_17[%c0, %c4] : memref<6x6xi64>
        tensor.yield %false_23 : i1
      } : tensor<?xi1>
      %253 = arith.remf %cst_21, %cst_3 : f16
      %254 = math.fma %splat_39, %splat_39, %7 : tensor<16xf16>
      %255 = scf.while (%arg1 = %true_27) : (i1) -> i1 {
        %c0_i64_56 = arith.constant 0 : i64
        %c0_i64_57 = arith.constant 0 : i64
        %261 = vector.transfer_read %alloc_19[%c12], %c0_i64_57 : memref<4xi64>, vector<i64>
        %262 = math.absi %15 : tensor<4xi64>
        %cast_58 = tensor.cast %3 : tensor<3xf16> to tensor<?xf16>
        %263 = index.sizeof
        %alloc_59 = memref.alloc() : memref<i32>
        memref.copy %alloc_20, %alloc_59 : memref<i32> to memref<i32>
        %264 = math.sqrt %9 : tensor<4xf32>
        %alloca_60 = memref.alloca() : memref<16xi32>
        memref.tensor_store %115, %alloc_5 : memref<4xi32>
        scf.condition(%false_38) %true_22 : i1
      } do {
      ^bb0(%arg1: i1):
        %261 = arith.cmpf ugt, %cst_4, %cst_4 : f32
        %262 = vector.insertelement %extracted, %246[%c11 : index] : vector<1xi32>
        %263 = math.powf %7, %12 : tensor<16xf16>
        %from_elements_56 = tensor.from_elements %true_28, %true, %true_29, %false : tensor<4xi1>
        %splat_57 = tensor.splat %false : tensor<3xi1>
        %264 = arith.shli %true, %false_40 : i1
        %265 = vector.flat_transpose %251 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %266 = affine.min affine_map<(d0, d1) -> (d0 - d1 floordiv 64, d1, (d0 - d1 floordiv 64) * 128, d0)>(%57, %57)
        %267 = affine.max affine_map<(d0) -> ((d0 + 32) ceildiv 16, (d0 + 32) ceildiv 16 + 32)>(%c12)
        %268 = bufferization.clone %alloc_9 : memref<16xi16> to memref<16xi16>
        %269 = math.tan %9 : tensor<4xf32>
        %270 = math.powf %3, %3 : tensor<3xf16>
        %271 = math.copysign %7, %12 : tensor<16xf16>
        %272 = vector.broadcast %c437334091_i64 : i64 to vector<3xi64>
        %273 = vector.maskedload %alloc_19[%c1], %48, %272 : memref<4xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %274 = arith.minsi %true_27, %true_29 : i1
        %275 = math.exp %7 : tensor<16xf16>
        scf.yield %false_40 : i1
      }
      %256 = affine.min affine_map<(d0, d1) -> (0, d1 * 4, d0 - 64)>(%c10, %53)
      %257 = arith.floordivsi %true_29, %true_26 : i1
      %258 = arith.divf %cst, %cst_3 : f16
      %259 = math.ipowi %collapsed, %collapsed : tensor<36xi1>
      %260 = scf.index_switch %c13 -> f32 
      case 1 {
        %261 = vector.bitcast %138 : vector<3xi32> to vector<3xi32>
        %alloc_56 = memref.alloc() : memref<3xf32>
        %262 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %263 = vector.broadcast %extracted : i32 to vector<16xi32>
        %264 = vector.gather %alloc_56[%140] [%263], %67, %262 : memref<3xf32>, vector<16xi32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %265 = math.atan2 %7, %12 : tensor<16xf16>
        memref.copy %alloc, %alloc_12 : memref<16xi32> to memref<16xi32>
        %266 = math.expm1 %12 : tensor<16xf16>
        %267 = vector.create_mask %140 : vector<3xi1>
        %268 = arith.cmpf ord, %cst_1, %cst_3 : f16
        %269 = vector.broadcast %c306918922_i32 : i32 to vector<3x3xi32>
        %270 = vector.outerproduct %33, %138, %269 {kind = #vector.kind<add>} : vector<3xi32>, vector<3xi32>
        %271 = math.ctpop %c-30156_i16 : i16
        %272 = math.ipowi %13, %13 : tensor<6x6xi16>
        %extracted_57 = tensor.extract %from_elements[%c0] : tensor<3xi32>
        %273 = math.exp %7 : tensor<16xf16>
        %274 = math.exp2 %7 : tensor<16xf16>
        %275 = arith.remui %c-549_i16, %c-8157_i16 : i16
        %276 = affine.apply affine_map<(d0, d1) -> (-(d1 - 64) - d1 - 128)>(%c0, %c12)
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %106, %147, %106 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
        scf.yield %cst_4 : f32
      }
      case 2 {
        %261 = bufferization.clone %alloc_8 : memref<4xi32> to memref<4xi32>
        %262 = math.round %12 : tensor<16xf16>
        %263 = index.sizeof
        %264 = index.sizeof
        %265 = math.cttz %115 : tensor<4xi32>
        %rank_56 = tensor.rank %6 : tensor<3xi1>
        %266 = math.exp %cst_1 : f16
        %267 = math.copysign %cst_4, %cst_0 : f32
        vector.print %138 : vector<3xi32>
        %268 = vector.bitcast %246 : vector<1xi32> to vector<1xi32>
        %269 = arith.cmpi slt, %false_2, %true_29 : i1
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %147, %147, %106 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
        %271 = index.floordivs %rank_56, %c0
        %272 = vector.matrix_multiply %82, %146 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<3xi1>, vector<6xi1>) -> vector<2xi1>
        %273 = math.log1p %3 : tensor<3xf16>
        %expanded_57 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<6x6xi16> into tensor<6x6x1xi16>
        scf.yield %cst_4 : f32
      }
      case 3 {
        %261 = arith.divf %cst_1, %cst_3 : f16
        %262 = arith.cmpi ult, %c306918922_i32, %c306918922_i32 : i32
        %263 = vector.bitcast %118 : vector<3xi1> to vector<3xi1>
        %264 = arith.remsi %true_22, %true_26 : i1
        %265 = arith.andi %false, %false : i1
        %266 = arith.addf %cst_4, %cst_0 : f32
        %267 = index.sizeof
        %268 = arith.remf %cst_1, %cst_21 : f16
        %269 = index.ceildivu %c13, %256
        %270 = vector.multi_reduction <maxsi>, %89, %251 [] : vector<1xi32> to vector<1xi32>
        %271 = vector.transpose %147, [0, 1] : vector<6x6xi1> to vector<6x6xi1>
        %272 = arith.divsi %c306918922_i32, %c1697511383_i32 : i32
        %273 = math.fpowi %cst_21, %c1523921471_i32 : f16, i32
        %274 = arith.addf %cst_4, %cst_4 : f32
        %expanded_56 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<6x6xi16> into tensor<6x6x1xi16>
        %275 = arith.remf %cst_21, %cst_21 : f16
        scf.yield %cst_4 : f32
      }
      default {
        memref.tensor_store %18, %alloc : memref<16xi32>
        %expanded_56 = tensor.expand_shape %5 [[0, 1]] : tensor<16xi16> into tensor<16x1xi16>
        %261 = math.log10 %cst_4 : f32
        %262 = vector.extract %49[0] : vector<3xi32>
        %263 = arith.divf %cst_1, %cst_1 : f16
        %264 = math.fpowi %3, %from_elements : tensor<3xf16>, tensor<3xi32>
        %265 = math.ipowi %c1697511383_i32, %extracted : i32
        %266 = math.log10 %7 : tensor<16xf16>
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 - d1) floordiv 2) ceildiv 8 + 32, d3 * 2, d3 * 4)>(%145, %140, %250, %c14)
        memref.tensor_store %21, %alloc_9 : memref<16xi16>
        %268 = vector.broadcast %extracted : i32 to vector<3x3xi32>
        %269 = vector.outerproduct %49, %49, %268 {kind = #vector.kind<add>} : vector<3xi32>, vector<3xi32>
        %270 = math.exp %cst_4 : f32
        %271 = math.floor %cst_0 : f32
        %272 = math.floor %cst_4 : f32
        %273 = math.floor %3 : tensor<3xf16>
        %274 = arith.addf %cst_21, %cst : f16
        scf.yield %cst_4 : f32
      }
      scf.yield
    }
    default {
      %246 = math.atan2 %17, %3 : tensor<3xf16>
      %247 = arith.maxui %true_26, %true_26 : i1
      %248 = math.ceil %cst_4 : f32
      %249 = index.ceildivu %c6, %70
      scf.execute_region {
        memref.tensor_store %16, %alloc_16 : memref<3xf16>
        %rank_59 = tensor.rank %21 : tensor<16xi16>
        %259 = arith.cmpi sgt, %true, %false_2 : i1
        %260 = math.exp2 %12 : tensor<16xf16>
        %261 = arith.divsi %false_40, %true_27 : i1
        %262 = index.sizeof
        %263 = math.tan %3 : tensor<3xf16>
        %264 = math.exp2 %9 : tensor<4xf32>
        %265 = vector.splat %38 : vector<3xindex>
        %266 = math.exp %cst_21 : f16
        %267 = index.casts %262 : index to i32
        %268 = math.round %cst_3 : f16
        %c-27048_i16 = arith.constant -27048 : i16
        %269 = index.sizeof
        %270 = index.maxu %c5, %38
        %271 = vector.maskedload %90[%c0], %146, %146 : memref<4xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        scf.yield
      }
      %alloca_56 = memref.alloca() : memref<4xf16>
      %250 = bufferization.to_tensor %alloc_13 : memref<4xi1>
      %dest_57, %accumulated_value_58 = vector.scan <or>, %147, %146 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %251 = memref.atomic_rmw ori %c7964_i16, %alloc_6[%c1] : (i16, memref<3xi16>) -> i16
      %252 = arith.cmpf ord, %cst_0, %cst_0 : f32
      %253 = index.maxs %69, %c12
      %254 = arith.cmpi uge, %true_28, %false_40 : i1
      %255 = math.powf %3, %3 : tensor<3xf16>
      %256 = math.ipowi %0, %0 : tensor<3xi32>
      %257 = tensor.empty(%76) : tensor<?xi64>
      %258 = vector.flat_transpose %89 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    }
    %150 = vector.extract_strided_slice %49 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
    %151 = vector.load %alloc_12[%c11] : memref<16xi32>, vector<4xi32>
    %152 = math.exp %9 : tensor<4xf32>
    %153 = vector.bitcast %82 : vector<3xi1> to vector<3xi1>
    %154 = arith.andi %true_29, %false : i1
    %155 = math.exp %cst : f16
    %156 = scf.index_switch %65 -> index 
    case 1 {
      %246 = index.ceildivu %rank, %142
      %247 = vector.extract_strided_slice %118 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
      %248 = memref.atomic_rmw maxu %c1523921471_i32, %alloc_20[] : (i32, memref<i32>) -> i32
      %249 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 64 + d0)>(%c12, %28, %76, %142)
      %250 = arith.minui %c1_i64, %c1_i64 : i64
      %251 = vector.insert %false_2, %146 [1] : i1 into vector<6xi1>
      %dest_56, %accumulated_value_57 = vector.scan <maxui>, %147, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %252 = math.round %3 : tensor<3xf16>
      %253 = vector.matrix_multiply %118, %82 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %254 = index.casts %140 : index to i32
      %255 = vector.create_mask %c9, %c12 : vector<6x6xi1>
      scf.if %true_28 {
        %259 = bufferization.to_memref %11 : memref<3xi16>
        %260 = affine.max affine_map<(d0, d1) -> (((-d1) floordiv 128 + 130) * 64, -((-d1) floordiv 128 + 128))>(%c3, %c8)
        memref.store %c1_i64, %alloc_17[%c5, %c3] : memref<6x6xi64>
        %261 = math.floor %12 : tensor<16xf16>
        %262 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 8 - d1)>(%c5, %c6, %70)
        %263 = bufferization.to_memref %2 : memref<3xi16>
        %264 = math.powf %7, %12 : tensor<16xf16>
        %265 = math.atan2 %16, %16 : tensor<3xf16>
      }
      %256 = arith.minsi %c437334091_i64, %c437334091_i64 : i64
      %257 = math.exp %12 : tensor<16xf16>
      scf.if %true {
        %259 = math.ctpop %8 : tensor<6x6xi1>
        %260 = math.atan2 %cst_3, %cst_21 : f16
        %261 = vector.splat %false_40 : vector<16xi1>
        %cst_58 = arith.constant 1.000000e+00 : f16
        %262 = vector.transfer_read %7[%249], %cst_58 : tensor<16xf16>, vector<f16>
        %263 = vector.extract %255[1] : vector<6x6xi1>
        %dest_59, %accumulated_value_60 = vector.scan <maxui>, %106, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
        %from_elements_61 = tensor.from_elements %extracted_30, %extracted_30, %c-549_i16, %95, %c7964_i16, %c-8157_i16, %c-8157_i16, %c-549_i16, %95, %c7964_i16, %95, %c-549_i16, %95, %c7964_i16, %c-30156_i16, %c-8157_i16 : tensor<16xi16>
        %cast_62 = tensor.cast %5 : tensor<16xi16> to tensor<?xi16>
      }
      %258 = math.ctlz %5 : tensor<16xi16>
      scf.yield %c1 : index
    }
    case 2 {
      bufferization.dealloc_tensor %22 : tensor<i16>
      %246 = bufferization.clone %alloc_16 : memref<3xf16> to memref<3xf16>
      %247 = vector.multi_reduction <or>, %33, %extracted [0] : vector<3xi32> to i32
      %splat_56 = tensor.splat %cst_0 : tensor<16xf32>
      %248 = arith.maxui %false_2, %false : i1
      %249 = vector.extract %138[0] : vector<3xi32>
      %250 = arith.divf %cst_21, %cst_1 : f16
      %251 = math.roundeven %17 : tensor<3xf16>
      %252 = vector.matrix_multiply %146, %82 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<3xi1>) -> vector<2xi1>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %147, %146 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %253 = vector.broadcast %cst_4 : f32 to vector<3xf32>
      %254 = vector.fma %253, %253, %253 : vector<3xf32>
      %255 = vector.transpose %252, [0] : vector<2xi1> to vector<2xi1>
      %256 = arith.remsi %false_23, %false_2 : i1
      %257 = arith.subi %extracted, %c306918922_i32 : i32
      %258 = index.floordivs %c3, %65
      %splat_59 = tensor.splat %false_40 : tensor<6x6xi1>
      scf.yield %c1 : index
    }
    default {
      %246 = vector.broadcast %c1697511383_i32 : i32 to vector<1x1xi32>
      %247 = vector.outerproduct %89, %89, %246 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
      %248 = vector.matrix_multiply %150, %49 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<2xi32>, vector<3xi32>) -> vector<6xi32>
      %249 = vector.broadcast %extracted : i32 to vector<1x1xi32>
      %250 = vector.outerproduct %89, %89, %249 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
      %251 = vector.flat_transpose %89 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %252 = index.floordivs %145, %c9
      %253 = tensor.empty() : tensor<16xi32>
      %mapped_56 = linalg.map ins(%alloc : memref<16xi32>) outs(%253 : tensor<16xi32>)
        (%in: i32) {
          %265 = math.absi %c-30156_i16 : i16
          %266 = math.floor %7 : tensor<16xf16>
          %267 = math.absf %cst_21 : f16
          %268 = math.absf %cst_0 : f32
          %269 = vector.matrix_multiply %151, %151 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
          %c0_i16 = arith.constant 0 : i16
          %270 = vector.transfer_read %5[%38], %c0_i16 : tensor<16xi16>, vector<i16>
          %cast_57 = tensor.cast %21 : tensor<16xi16> to tensor<?xi16>
          %271 = arith.minsi %true_27, %true_27 : i1
          %272 = math.log1p %7 : tensor<16xf16>
          %273 = index.castu %c12 : index to i32
          %274 = math.log %12 : tensor<16xf16>
          %275 = affine.max affine_map<(d0) -> ((d0 * 4) ceildiv 128, (d0 * 4) ceildiv 128, d0 * 4 + 64)>(%140)
          %276 = math.cos %cst : f16
          %277 = arith.divf %cst, %cst_1 : f16
          %c1989229246_i32 = arith.constant 1989229246 : i32
          %278 = vector.extract_strided_slice %106 {offsets = [3], sizes = [1], strides = [1]} : vector<6x6xi1> to vector<1x6xi1>
          %279 = arith.shli %c-8157_i16, %c7964_i16 : i16
          %280 = arith.divui %false_2, %false_38 : i1
          %false_58 = arith.constant false
          %false_59 = arith.constant false
          %281 = vector.transfer_read %39[%c11, %c7], %false_59 : memref<6x6xi1>, vector<i1>
          %282 = arith.cmpi ule, %true_22, %false_40 : i1
          %283 = math.log10 %17 : tensor<3xf16>
          %284 = arith.minf %cst, %cst_1 : f16
          %285 = memref.realloc %alloc_12 : memref<16xi32> to memref<6xi32>
          %286 = vector.broadcast %true : i1 to vector<3x3xi1>
          %287 = vector.outerproduct %82, %82, %286 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
          affine.store %c306918922_i32, %alloc_18[%c14, %c12] : memref<6x6xi32>
          %288 = index.maxu %c2, %142
          %289 = index.sizeof
          %290 = index.sub %c11, %rank
          bufferization.dealloc_tensor %13 : tensor<6x6xi16>
          %291 = vector.matrix_multiply %33, %49 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
          %292 = vector.broadcast %false_38 : i1 to vector<16xi1>
          %293 = arith.addf %cst_4, %cst_0 : f32
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %254 = math.round %7 : tensor<16xf16>
      %255 = vector.broadcast %false : i1 to vector<3x3xi1>
      %256 = vector.outerproduct %82, %153, %255 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
      %257 = bufferization.clone %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
      %258 = arith.maxui %95, %extracted_30 : i16
      %259 = index.ceildivu %70, %c15
      %260 = vector.broadcast %true_22 : i1 to vector<3x3xi1>
      %261 = vector.outerproduct %153, %153, %260 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
      %262 = math.absf %16 : tensor<3xf16>
      %inserted = tensor.insert %cst into %17[%c2] : tensor<3xf16>
      %263 = math.atan2 %7, %splat_39 : tensor<16xf16>
      %264 = arith.shrsi %extracted, %c1523921471_i32 : i32
      scf.yield %70 : index
    }
    %157 = arith.addi %false_23, %false : i1
    %158 = arith.divf %cst_3, %cst_21 : f16
    %159 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d0)>(%rank, %rank, %65, %c7)
    %160 = math.ipowi %77, %5 : tensor<16xi16>
    %161 = bufferization.to_memref %splat_39 : memref<16xf16>
    %162 = math.exp %17 : tensor<3xf16>
    %163 = arith.subi %false_38, %true_27 : i1
    %164 = arith.ori %c7964_i16, %c-30156_i16 : i16
    %165 = vector.bitcast %106 : vector<6x6xi1> to vector<6x6xi1>
    %166 = arith.subi %false_40, %true_22 : i1
    %167 = vector.broadcast %c437334091_i64 : i64 to vector<6x6xi64>
    %168 = vector.broadcast %c1697511383_i32 : i32 to vector<6x6xi32>
    %169 = vector.gather %alloc_19[%c5] [%168], %147, %167 : memref<4xi64>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi64> into vector<6x6xi64>
    %170 = index.floordivs %53, %104
    %171 = arith.remf %cst_0, %cst_0 : f32
    %172 = vector.extract %118[1] : vector<3xi1>
    memref.tensor_store %7, %161 : memref<16xf16>
    affine.for %arg1 = 0 to 14 {
    }
    %173 = index.maxs %142, %76
    %174 = math.powf %cst_1, %cst_21 : f16
    %175 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
    %176 = math.atan2 %cst_4, %cst_4 : f32
    %false_41 = index.bool.constant false
    %177 = math.absf %3 : tensor<3xf16>
    %178 = tensor.empty() : tensor<6x6xi64>
    %mapped = linalg.map ins(%alloc_17 : memref<6x6xi64>) outs(%178 : tensor<6x6xi64>)
      (%in: i64) {
        %246 = arith.negf %cst_3 : f16
        %247 = arith.andi %true_26, %true_29 : i1
        %248 = affine.min affine_map<(d0, d1, d2) -> (d2 - 18)>(%c3, %65, %97)
        %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %49, %33, %c306918922_i32 : vector<3xi32>, vector<3xi32> into i32
        %250 = math.fpowi %7, %transposed : tensor<16xf16>, tensor<16xi32>
        %251 = arith.divf %cst_21, %cst : f16
        %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %118, %82, %false : vector<3xi1>, vector<3xi1> into i1
        %253 = memref.load %alloc_8[%c3] : memref<4xi32>
        %254 = vector.broadcast %c1697511383_i32 : i32 to vector<6xi32>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %168, %254 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
        %255 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %256 = arith.minui %c1_i64, %c1_i64 : i64
        %257 = arith.divui %true_27, %false_40 : i1
        %alloc_58 = memref.alloc() : memref<4xi16>
        %258 = vector.load %alloc_12[%c8] : memref<16xi32>, vector<6x6xi32>
        %259 = math.fma %7, %12, %7 : tensor<16xf16>
        %260 = vector.broadcast %c437334091_i64 : i64 to vector<3xi64>
        %261 = vector.maskedload %alloc_11[%c1], %255, %260 : memref<3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %262 = index.casts %53 : index to i32
        %263 = math.atan %9 : tensor<4xf32>
        %264 = arith.andi %false, %false_23 : i1
        %265 = index.maxs %c4, %38
        %266 = arith.divsi %false_38, %false_41 : i1
        %extracted_59 = tensor.extract %77[%c0] : tensor<16xi16>
        %267 = memref.atomic_rmw assign %c1523921471_i32, %alloc_14[%c2, %c0] : (i32, memref<6x6xi32>) -> i32
        memref.assume_alignment %alloc_6, 8 : memref<3xi16>
        %268 = math.roundeven %9 : tensor<4xf32>
        %269 = math.ipowi %8, %8 : tensor<6x6xi1>
        %270 = vector.create_mask %142 : vector<16xi1>
        %271 = math.absi %1 : tensor<6x6xi32>
        %272 = arith.cmpi eq, %c-8157_i16, %c7964_i16 : i16
        %273 = scf.index_switch %248 -> i64 
        case 1 {
          %276 = memref.atomic_rmw addi %extracted, %alloc_7[%c6] : (i32, memref<16xi32>) -> i32
          %277 = index.add %124, %c12
          %true_61 = index.bool.constant true
          %278 = arith.addi %false_23, %false_40 : i1
          %279 = bufferization.to_tensor %39 : memref<6x6xi1>
          %280 = arith.maxui %true_61, %false_41 : i1
          %expanded_62 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
          %281 = vector.multi_reduction <maxui>, %151, %c306918922_i32 [0] : vector<4xi32> to i32
          %true_63 = index.bool.constant true
          %282 = math.round %7 : tensor<16xf16>
          bufferization.dealloc_tensor %5 : tensor<16xi16>
          bufferization.dealloc_tensor %13 : tensor<6x6xi16>
          %283 = vector.matrix_multiply %153, %146 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<3xi1>, vector<6xi1>) -> vector<2xi1>
          %284 = bufferization.to_tensor %alloc_11 : memref<3xi64>
          %285 = math.ctpop %10 : tensor<16xi64>
          %286 = vector.create_mask %124 : vector<3xi1>
          scf.yield %c1_i64 : i64
        }
        case 2 {
          %276 = arith.andi %95, %95 : i16
          %277 = arith.andi %extracted_59, %c7964_i16 : i16
          %278 = vector.broadcast %true_29 : i1 to vector<16x16xi1>
          %279 = vector.outerproduct %270, %270, %278 {kind = #vector.kind<maxsi>} : vector<16xi1>, vector<16xi1>
          %280 = vector.insert %extracted, %20 [0] : i32 into vector<4xi32>
          %281 = math.absf %3 : tensor<3xf16>
          %alloc_61 = memref.alloc() : memref<6x6xi16>
          %282 = math.fma %cst_21, %cst_3, %cst : f16
          %283 = index.casts %104 : index to i32
          %dest_62, %accumulated_value_63 = vector.scan <minui>, %147, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
          %284 = arith.negf %cst_3 : f16
          %285 = math.ctpop %c306918922_i32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c0_i32_64 = arith.constant 0 : i32
          %286 = vector.transfer_read %alloc[%c11], %c0_i32_64 : memref<16xi32>, vector<i32>
          %inserted = tensor.insert %c7964_i16 into %77[%c4] : tensor<16xi16>
          %287 = index.ceildivu %248, %c3
          %288 = arith.cmpi ult, %false_41, %false_40 : i1
          %289 = math.fpowi %cst_4, %c306918922_i32 : f32, i32
          scf.yield %in : i64
        }
        case 3 {
          bufferization.dealloc_tensor %15 : tensor<4xi64>
          %276 = arith.shli %c437334091_i64, %in : i64
          memref.store %95, %alloc_6[%c2] : memref<3xi16>
          %277 = index.sizeof
          %278 = memref.realloc %105 : memref<16xi32> to memref<3xi32>
          %279 = math.absi %true_22 : i1
          %280 = vector.matrix_multiply %48, %153 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
          %281 = math.ctpop %true : i1
          %282 = vector.transpose %261, [0] : vector<3xi64> to vector<3xi64>
          %alloca_61 = memref.alloca() : memref<4xi64>
          %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %48, %118, %false_38 : vector<3xi1>, vector<3xi1> into i1
          %284 = math.absi %178 : tensor<6x6xi64>
          %alloca_62 = memref.alloca() : memref<3xi64>
          %285 = vector.insertelement %false_41, %82[%142 : index] : vector<3xi1>
          %286 = math.absf %3 : tensor<3xf16>
          %287 = math.fma %cst_1, %cst_3, %cst_3 : f16
          scf.yield %in : i64
        }
        default {
          %276 = math.fpowi %7, %transposed : tensor<16xf16>, tensor<16xi32>
          %277 = vector.transpose %167, [0, 1] : vector<6x6xi64> to vector<6x6xi64>
          %278 = index.floordivs %c4, %142
          %279 = vector.broadcast %extracted : i32 to vector<4x4xi32>
          %280 = vector.outerproduct %151, %20, %279 {kind = #vector.kind<and>} : vector<4xi32>, vector<4xi32>
          %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %150, %150, %extracted : vector<2xi32>, vector<2xi32> into i32
          %alloc_61 = memref.alloc() : memref<4xi64>
          %282 = bufferization.to_tensor %alloc_16 : memref<3xf16>
          %283 = index.add %278, %c12
          %alloc_62 = memref.alloc() : memref<3xi16>
          memref.copy %alloc_6, %alloc_62 : memref<3xi16> to memref<3xi16>
          %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %169, %169, %167 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
          %285 = vector.transpose %48, [0] : vector<3xi1> to vector<3xi1>
          %286 = index.maxs %133, %c3
          %287 = arith.addf %cst_21, %cst : f16
          %288 = bufferization.to_memref %77 : memref<16xi16>
          %289 = arith.remsi %true, %false : i1
          %290 = math.ctpop %21 : tensor<16xi16>
          scf.yield %c437334091_i64 : i64
        }
        %274 = vector.load %39[%c1, %c0] : memref<6x6xi1>, vector<3xi1>
        %275 = math.absf %12 : tensor<16xf16>
        %c0_i64_60 = arith.constant 0 : i64
        linalg.yield %c0_i64_60 : i64
      }
    %179 = math.exp2 %cst_21 : f16
    %dest_42, %accumulated_value_43 = vector.scan <or>, %147, %146 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
    %180 = scf.while (%arg1 = %true_29) : (i1) -> i1 {
      %cast_56 = tensor.cast %8 : tensor<6x6xi1> to tensor<?x?xi1>
      %246 = tensor.empty() : tensor<3x3x3xi32>
      %alloc_57 = memref.alloc() : memref<3x3xi32>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%246, %0, %alloc_57 : tensor<3x3x3xi32>, tensor<3xi32>, memref<3x3xi32>) outs(%246 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_58: i32, %in_59: i32, %out: i32):
        %254 = vector.broadcast %c7964_i16 : i16 to vector<16xi16>
        %255 = math.log2 %12 : tensor<16xf16>
        %256 = index.sizeof
        %257 = arith.subi %in_58, %in : i32
        %258 = memref.atomic_rmw assign %in, %alloc_8[%c0] : (i32, memref<4xi32>) -> i32
        %259 = arith.cmpf ord, %cst_1, %cst_21 : f16
        %dest_60, %accumulated_value_61 = vector.scan <maxsi>, %106, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
        %260 = bufferization.to_memref %6 : memref<3xi1>
        %261 = vector.extract %118[0] : vector<3xi1>
        %false_62 = arith.constant false
        %262 = vector.transfer_read %4[%c8], %false_62 : tensor<4xi1>, vector<i1>
        %263 = math.ipowi %178, %178 : tensor<6x6xi64>
        %true_63 = index.bool.constant true
        %264 = vector.matrix_multiply %153, %153 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        memref.store %c1523921471_i32, %alloc_5[%c0] : memref<4xi32>
        %265 = arith.remf %cst, %cst_3 : f16
        %266 = tensor.empty() : tensor<3xf32>
        %267 = arith.divui %false_23, %false_23 : i1
        %from_elements_64 = tensor.from_elements %in_58, %in, %c1697511383_i32, %c1697511383_i32, %extracted, %in_59, %extracted, %in, %in, %c1697511383_i32, %in_58, %c306918922_i32, %in, %c1523921471_i32, %in_58, %out : tensor<16xi32>
        %268 = vector.broadcast %in_58 : i32 to vector<4x4xi32>
        %269 = vector.outerproduct %20, %20, %268 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
        %270 = math.ceil %12 : tensor<16xf16>
        %271 = arith.shli %arg1, %false_40 : i1
        %272 = vector.load %260[%c2] : memref<3xi1>, vector<4xi1>
        %273 = arith.cmpf olt, %cst_4, %cst_0 : f32
        %274 = index.ceildivu %c8, %256
        %275 = vector.transpose %89, [0] : vector<1xi32> to vector<1xi32>
        %276 = affine.apply affine_map<(d0, d1) -> (d0 - 32)>(%97, %98)
        %277 = math.ceil %cst : f16
        %278 = arith.remf %cst_0, %cst_0 : f32
        %279 = arith.minui %false_2, %true_28 : i1
        %false_65 = index.bool.constant false
        %280 = arith.floordivsi %c-549_i16, %extracted_30 : i16
        %281 = math.exp %9 : tensor<4xf32>
        linalg.yield %c1523921471_i32 : i32
      } -> tensor<3x3x3xi32>
      %248 = arith.minf %cst_1, %cst_1 : f16
      affine.for %arg2 = 0 to 47 {
      }
      %249 = vector.broadcast %true : i1 to vector<3x3xi1>
      %250 = vector.outerproduct %153, %82, %249 {kind = #vector.kind<and>} : vector<3xi1>, vector<3xi1>
      %251 = vector.bitcast %89 : vector<1xi32> to vector<1xi32>
      %252 = math.ctpop %2 : tensor<3xi16>
      %253 = index.maxu %98, %65
      scf.condition(%false_38) %arg1 : i1
    } do {
    ^bb0(%arg1: i1):
      %246 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%28, %173, %rank)
      %247 = math.atan %17 : tensor<3xf16>
      %248 = memref.atomic_rmw addi %c1697511383_i32, %alloc[%c10] : (i32, memref<16xi32>) -> i32
      %dest_56, %accumulated_value_57 = vector.scan <or>, %165, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %249 = math.absi %false_41 : i1
      %expanded_58 = tensor.expand_shape %collapsed [[0, 1]] : tensor<36xi1> into tensor<36x1xi1>
      affine.for %arg2 = 0 to 80 {
      }
      %250 = index.sizeof
      scf.execute_region {
        %256 = index.ceildivs %250, %124
        %257 = math.sqrt %7 : tensor<16xf16>
        %258 = arith.muli %false, %true_29 : i1
        %false_61 = index.bool.constant false
        %259 = math.roundeven %cst_1 : f16
        %260 = vector.broadcast %c437334091_i64 : i64 to vector<6xi64>
        %dest_62, %accumulated_value_63 = vector.scan <add>, %167, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi64>, vector<6xi64>
        %cst_64 = arith.constant 1.99854362E+9 : f32
        %alloc_65 = memref.alloc() : memref<3xf16>
        %alloc_66 = memref.alloc() : memref<16xi64>
        %261 = arith.addi %arg1, %true_28 : i1
        %262 = math.expm1 %cst_0 : f32
        %263 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 64, -(d3 mod 64))>(%98, %c13, %c8, %104)
        %cast_67 = tensor.cast %0 : tensor<3xi32> to tensor<?xi32>
        %264 = vector.multi_reduction <mul>, %82, %48 [] : vector<3xi1> to vector<3xi1>
        %265 = arith.minf %cst_3, %cst_21 : f16
        %266 = index.maxu %c3, %57
        scf.yield
      }
      %cst_59 = arith.constant 5.411200e+04 : f16
      %251 = arith.andi %true, %false_38 : i1
      %false_60 = index.bool.constant false
      %252 = arith.minsi %extracted, %c306918922_i32 : i32
      %253 = arith.minf %cst, %cst_1 : f16
      %254 = vector.insertelement %c306918922_i32, %151[%159 : index] : vector<4xi32>
      %255 = math.absi %0 : tensor<3xi32>
      scf.yield %arg1 : i1
    }
    %181 = index.mul %c3, %c2
    %182 = math.exp2 %12 : tensor<16xf16>
    %183 = arith.subi %c-30156_i16, %c-8157_i16 : i16
    %184 = vector.broadcast %c437334091_i64 : i64 to vector<6xi64>
    %dest_44, %accumulated_value_45 = vector.scan <mul>, %169, %184 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi64>, vector<6xi64>
    %185 = arith.maxsi %extracted, %extracted : i32
    %186 = memref.realloc %161 : memref<16xf16> to memref<3xf16>
    %187 = math.absf %cst : f16
    %from_elements_46 = tensor.from_elements %extracted_30, %95, %c-8157_i16, %95, %c-549_i16, %c-30156_i16, %c-549_i16, %extracted_30, %c7964_i16, %c-8157_i16, %95, %extracted_30, %c-549_i16, %c-30156_i16, %95, %c-30156_i16, %95, %c-30156_i16, %extracted_30, %c-549_i16, %c-8157_i16, %c-549_i16, %c-30156_i16, %c-8157_i16, %c-549_i16, %c-8157_i16, %95, %95, %95, %extracted_30, %95, %c-8157_i16, %c-30156_i16, %95, %c7964_i16, %extracted_30 : tensor<6x6xi16>
    %188 = arith.remf %cst_0, %cst_4 : f32
    %189 = vector.extract_strided_slice %67 {offsets = [10], sizes = [5], strides = [1]} : vector<16xi1> to vector<5xi1>
    %190 = vector.splat %cst_4 : vector<3xf32>
    %191 = vector.insert %false_23, %146 [2] : i1 into vector<6xi1>
    %192 = arith.remui %95, %c-30156_i16 : i16
    %193 = arith.maxui %extracted_30, %extracted_30 : i16
    %194 = math.powf %cst_4, %cst_0 : f32
    %195 = index.sizeof
    %196 = index.sizeof
    %197 = vector.broadcast %false_23 : i1 to vector<4xi1>
    %198 = vector.maskedload %105[%c13], %197, %20 : memref<16xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %199 = math.log1p %12 : tensor<16xf16>
    %200 = arith.minui %c-549_i16, %c-549_i16 : i16
    %201 = arith.divsi %false_38, %true_28 : i1
    %202 = vector.broadcast %extracted : i32 to vector<6xi32>
    %dest_47, %accumulated_value_48 = vector.scan <minui>, %168, %202 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
    %203 = affine.min affine_map<(d0) -> (d0 + 32, d0 floordiv 64, d0 + 32)>(%133)
    %204 = arith.remsi %c-549_i16, %extracted_30 : i16
    %extracted_49 = tensor.extract %5[%c4] : tensor<16xi16>
    %205 = vector.extract %167[5] : vector<6x6xi64>
    %206 = arith.divf %cst_1, %cst_21 : f16
    %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<16xi64> into tensor<16x1xi64>
    %207 = index.sizeof
    %cast_50 = tensor.cast %7 : tensor<16xf16> to tensor<?xf16>
    %208 = arith.floordivsi %true_22, %true : i1
    %209 = scf.execute_region -> tensor<6x6xf32> {
      %246 = scf.while (%arg1 = %true_22) : (i1) -> i1 {
        %260 = math.absf %3 : tensor<3xf16>
        %261 = math.atan2 %12, %7 : tensor<16xf16>
        %262 = memref.load %alloc_15[%c2] : memref<3xi32>
        %263 = index.sizeof
        %264 = index.floordivs %28, %c8
        %265 = index.add %c7, %195
        %266 = affine.max affine_map<(d0, d1) -> (d0 * 128, d1 + d0 * 8 - 16, d0 * 2, d0 * 16)>(%133, %c4)
        %dest_59, %accumulated_value_60 = vector.scan <minui>, %165, %146 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
        scf.condition(%true_29) %false_38 : i1
      } do {
      ^bb0(%arg1: i1):
        %260 = math.absi %true : i1
        %261 = index.maxu %104, %76
        %262 = vector.splat %181 : vector<6x6xindex>
        %263 = arith.remf %cst_1, %cst_21 : f16
        %264 = bufferization.to_memref %7 : memref<16xf16>
        %265 = vector.transpose %67, [0] : vector<16xi1> to vector<16xi1>
        %266 = vector.extract %169[3] : vector<6x6xi64>
        %267 = vector.broadcast %true_28 : i1 to vector<3x3xi1>
        %268 = vector.outerproduct %153, %48, %267 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %269 = arith.maxsi %true_26, %false : i1
        %270 = math.floor %cst : f16
        %271 = math.atan2 %cst_1, %cst_21 : f16
        %272 = arith.remsi %false_23, %true_28 : i1
        %273 = arith.muli %c-549_i16, %c-549_i16 : i16
        %274 = vector.load %alloc_13[%c1] : memref<4xi1>, vector<4xi1>
        %275 = math.absf %12 : tensor<16xf16>
        %276 = index.sizeof
        scf.yield %false : i1
      }
      %247 = vector.insertelement %c437334091_i64, %205[%c8 : index] : vector<6xi64>
      %248 = index.sub %c3, %c10
      %249 = memref.atomic_rmw maxu %c1523921471_i32, %alloc_7[%c7] : (i32, memref<16xi32>) -> i32
      %dest_56, %accumulated_value_57 = vector.scan <maxsi>, %106, %146 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi1>, vector<6xi1>
      %true_58 = index.bool.constant true
      %250 = memref.atomic_rmw addi %c1523921471_i32, %alloc_7[%c2] : (i32, memref<16xi32>) -> i32
      %251 = index.mul %207, %c8
      %252 = arith.addi %c-30156_i16, %c7964_i16 : i16
      %253 = math.ctpop %false_23 : i1
      %254 = math.absi %false_40 : i1
      %255 = arith.divui %false_40, %true : i1
      %256 = index.ceildivu %c14, %133
      %257 = arith.minsi %c-30156_i16, %extracted_30 : i16
      memref.tensor_store %1, %alloc_18 : memref<6x6xi32>
      %258 = math.ipowi %77, %5 : tensor<16xi16>
      %259 = tensor.empty() : tensor<6x6xf32>
      scf.yield %259 : tensor<6x6xf32>
    }
    %210 = arith.andi %false_23, %false_38 : i1
    %211 = affine.min affine_map<(d0, d1) -> (((d1 + 34) mod 4) * 16, (d1 * 2) floordiv 4, 0, d0)>(%57, %57)
    %212 = math.floor %3 : tensor<3xf16>
    %213 = math.atan %7 : tensor<16xf16>
    %214 = arith.maxui %c-8157_i16, %c-8157_i16 : i16
    %215 = arith.floordivsi %95, %c-30156_i16 : i16
    %216 = bufferization.clone %alloc_14 : memref<6x6xi32> to memref<6x6xi32>
    scf.index_switch %57 
    case 1 {
      affine.store %extracted, %alloc_12[%c10] : memref<16xi32>
      %true_56 = index.bool.constant true
      %246 = bufferization.to_tensor %alloc_6 : memref<3xi16>
      %247 = arith.minui %false_23, %false : i1
      scf.execute_region {
        %258 = vector.broadcast %true_28 : i1 to vector<i1>
        %259 = vector.transfer_write %258, %4[%c11] : vector<i1>, tensor<4xi1>
        %260 = vector.flat_transpose %197 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %261 = arith.floordivsi %false_2, %false_38 : i1
        %262 = vector.splat %extracted_49 : vector<16xi16>
        %263 = vector.splat %false_38 : vector<4xi1>
        %264 = arith.minsi %c7964_i16, %c-30156_i16 : i16
        %265 = index.ceildivu %69, %145
        %266 = math.fpowi %209, %1 : tensor<6x6xf32>, tensor<6x6xi32>
        %267 = math.atan %cst_21 : f16
        %268 = arith.minsi %true_28, %false_38 : i1
        %269 = vector.multi_reduction <and>, %89, %c1697511383_i32 [0] : vector<1xi32> to i32
        %alloc_57 = memref.alloc() : memref<6x6xi16>
        %270 = index.casts %145 : index to i32
        %alloc_58 = memref.alloc() : memref<4xi64>
        %271 = arith.floordivsi %c-30156_i16, %extracted_30 : i16
        %272 = affine.min affine_map<(d0, d1) -> (0, d0 floordiv 32)>(%76, %57)
        scf.yield
      }
      %248 = index.castu %207 : index to i32
      %249 = arith.addf %cst_3, %cst_21 : f16
      %250 = bufferization.clone %alloc : memref<16xi32> to memref<16xi32>
      %251 = arith.remsi %c437334091_i64, %c437334091_i64 : i64
      %252 = index.mul %195, %112
      %253 = vector.insertelement %true_29, %153[%c10 : index] : vector<3xi1>
      affine.for %arg1 = 0 to 7 {
      }
      %254 = affine.for %arg1 = 0 to 23 iter_args(%arg2 = %alloc_11) -> (memref<3xi64>) {
        affine.yield %alloc_11 : memref<3xi64>
      }
      %255 = math.ctpop %11 : tensor<3xi16>
      %256 = vector.transpose %48, [0] : vector<3xi1> to vector<3xi1>
      %257 = arith.divsi %c1523921471_i32, %c1523921471_i32 : i32
      scf.yield
    }
    case 2 {
      %246 = math.exp2 %9 : tensor<4xf32>
      %247 = memref.load %alloc_14[%c5, %c2] : memref<6x6xi32>
      %248 = arith.shli %false_38, %true : i1
      %249 = arith.addf %cst, %cst : f16
      %250 = math.log10 %cst_21 : f16
      %251 = math.sqrt %7 : tensor<16xf16>
      %252 = vector.extract_strided_slice %153 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
      %alloca_56 = memref.alloca() : memref<16xf16>
      %alloc_57 = memref.alloc() : memref<6x6xi64>
      %c729918913_i64 = arith.constant 729918913 : i64
      %253 = math.round %12 : tensor<16xf16>
      %254 = arith.addf %cst_3, %cst_1 : f16
      %extracted_58 = tensor.extract %115[%c2] : tensor<4xi32>
      %255 = arith.minui %extracted_49, %extracted_49 : i16
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %169, %169, %167 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
      %257 = affine.apply affine_map<(d0, d1) -> (-d1 + 32)>(%c7, %c5)
      scf.yield
    }
    default {
      %246 = vector.insertelement %true_29, %67[%c6 : index] : vector<16xi1>
      %247 = math.absi %11 : tensor<3xi16>
      %248 = arith.addf %cst, %cst_3 : f16
      %249 = tensor.empty() : tensor<3x3x3xi32>
      %alloc_56 = memref.alloc() : memref<3x3xi32>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_56, %0 : memref<3x3xi32>, tensor<3xi32>) outs(%249 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_58: i32, %out: i32):
        %260 = math.powf %cst_21, %cst_21 : f16
        %261 = vector.broadcast %out : i32 to vector<6xi32>
        %dest_59, %accumulated_value_60 = vector.scan <and>, %168, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
        %262 = math.expm1 %17 : tensor<3xf16>
        %263 = math.cos %209 : tensor<6x6xf32>
        %264 = vector.broadcast %c437334091_i64 : i64 to vector<4xi64>
        %265 = vector.gather %10[%53] [%151], %197, %264 : tensor<16xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %266 = arith.shli %true_29, %false : i1
        %alloc_61 = memref.alloc() : memref<3xf16>
        memref.copy %alloc_16, %alloc_61 : memref<3xf16> to memref<3xf16>
        %267 = index.divu %159, %c1
        %268 = vector.broadcast %extracted : i32 to vector<6xi32>
        %269 = vector.maskedload %alloc_20[], %146, %268 : memref<i32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %270 = vector.flat_transpose %138 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %271 = vector.broadcast %in : i32 to vector<1x1xi32>
        %272 = vector.outerproduct %89, %89, %271 {kind = #vector.kind<maxsi>} : vector<1xi32>, vector<1xi32>
        %273 = arith.minsi %in, %c1523921471_i32 : i32
        %274 = vector.transpose %150, [0] : vector<2xi32> to vector<2xi32>
        %275 = arith.subi %c1_i64, %c1_i64 : i64
        %276 = bufferization.clone %alloc_16 : memref<3xf16> to memref<3xf16>
        %277 = index.casts %65 : index to i32
        %278 = index.mul %c4, %c9
        %279 = math.ctlz %c-8157_i16 : i16
        %280 = math.copysign %3, %17 : tensor<3xf16>
        %true_62 = index.bool.constant true
        %281 = math.exp %7 : tensor<16xf16>
        %from_elements_63 = tensor.from_elements %c1523921471_i32, %in, %extracted, %in_58, %in_58, %out, %c1697511383_i32, %out, %extracted, %c1697511383_i32, %c1697511383_i32, %in, %c1523921471_i32, %c306918922_i32, %in_58, %in_58 : tensor<16xi32>
        %282 = math.absi %6 : tensor<3xi1>
        %283 = vector.broadcast %false_41 : i1 to vector<16x16xi1>
        %284 = vector.outerproduct %67, %67, %283 {kind = #vector.kind<add>} : vector<16xi1>, vector<16xi1>
        %285 = math.exp %16 : tensor<3xf16>
        %286 = math.floor %splat_39 : tensor<16xf16>
        %287 = index.add %140, %195
        %288 = vector.maskedload %alloc_8[%c2], %197, %198 : memref<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %289 = math.fma %7, %12, %12 : tensor<16xf16>
        %true_64 = index.bool.constant true
        %290 = vector.broadcast %true_26 : i1 to vector<3x3xi1>
        %291 = vector.outerproduct %153, %118, %290 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
        %292 = arith.remf %cst_0, %cst_4 : f32
        linalg.yield %in_58 : i32
      } -> tensor<3x3x3xi32>
      %251 = arith.cmpf ogt, %cst_21, %cst_21 : f16
      %252 = vector.bitcast %33 : vector<3xi32> to vector<3xi32>
      %253 = vector.bitcast %20 : vector<4xi32> to vector<4xi32>
      %254 = math.absf %16 : tensor<3xf16>
      %255 = arith.shrui %c1_i64, %c1_i64 : i64
      %256 = arith.divf %cst_1, %cst : f16
      memref.tensor_store %from_elements_31, %alloc_6 : memref<3xi16>
      %cast_57 = tensor.cast %splat_34 : tensor<4xi32> to tensor<?xi32>
      %257 = index.floordivs %c9, %c5
      %258 = math.powf %17, %17 : tensor<3xf16>
      %259 = scf.execute_region -> i32 {
        %260 = math.ctpop %13 : tensor<6x6xi16>
        %true_58 = index.bool.constant true
        %false_59 = index.bool.constant false
        %261 = arith.minf %cst, %cst_1 : f16
        %262 = arith.andi %extracted, %c306918922_i32 : i32
        %263 = index.casts %c-549_i16 : i16 to index
        %264 = math.fma %209, %209, %209 : tensor<6x6xf32>
        %265 = index.sizeof
        %266 = arith.floordivsi %extracted_30, %95 : i16
        %267 = math.ipowi %23, %22 : tensor<i16>
        %268 = arith.minsi %false_2, %true : i1
        %269 = vector.broadcast %c-30156_i16 : i16 to vector<16xi16>
        %270 = vector.maskedload %alloc_9[%c1], %67, %269 : memref<16xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %271 = vector.extract_strided_slice %67 {offsets = [13], sizes = [1], strides = [1]} : vector<16xi1> to vector<1xi1>
        %272 = index.sizeof
        %273 = vector.transpose %189, [0] : vector<5xi1> to vector<5xi1>
        %274 = arith.mulf %cst_3, %cst_21 : f16
        scf.yield %c1523921471_i32 : i32
      }
      bufferization.dealloc_tensor %21 : tensor<16xi16>
    }
    memref.store %c437334091_i64, %alloc_17[%c4, %c4] : memref<6x6xi64>
    bufferization.dealloc_tensor %from_elements_46 : tensor<6x6xi16>
    %217 = arith.maxsi %false_40, %true_27 : i1
    %218 = bufferization.to_tensor %alloc_13 : memref<4xi1>
    %219 = affine.max affine_map<(d0, d1) -> (-((d0 - d1 + 4) ceildiv 2), (d0 - d1 + 4) ceildiv 2, d0 + (((d0 + 4) floordiv 8) floordiv 8) * 16 + 4)>(%69, %c10)
    %220 = arith.remsi %extracted_49, %c-549_i16 : i16
    %221 = arith.remf %cst_3, %cst_21 : f16
    %222 = affine.for %arg1 = 0 to 102 iter_args(%arg2 = %c13) -> (index) {
      affine.yield %140 : index
    }
    %223 = math.atan2 %9, %9 : tensor<4xf32>
    %224 = arith.shrsi %false_2, %false_38 : i1
    %225 = vector.splat %c-30156_i16 : vector<3xi16>
    %false_51 = index.bool.constant false
    %226 = math.log10 %209 : tensor<6x6xf32>
    %227 = arith.minf %cst, %cst_3 : f16
    %228 = bufferization.clone %alloc_18 : memref<6x6xi32> to memref<6x6xi32>
    %229 = index.casts %c1697511383_i32 : i32 to index
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_52 = arith.constant 0 : i32
    %230 = vector.transfer_read %14[%65, %69], %c0_i32_52 : tensor<6x6xi32>, vector<i32>
    %231 = arith.maxui %95, %c-8157_i16 : i16
    memref.copy %216, %228 : memref<6x6xi32> to memref<6x6xi32>
    %232 = arith.shli %false_51, %true_22 : i1
    %233 = index.floordivs %69, %181
    memref.copy %alloc_7, %alloc_12 : memref<16xi32> to memref<16xi32>
    %234 = vector.matrix_multiply %89, %198 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi32>, vector<4xi32>) -> vector<4xi32>
    %alloc_53 = memref.alloc() : memref<6x6xi64>
    memref.copy %alloc_17, %alloc_53 : memref<6x6xi64> to memref<6x6xi64>
    memref.tensor_store %7, %161 : memref<16xf16>
    %235 = math.absf %7 : tensor<16xf16>
    %236 = vector.matrix_multiply %20, %150 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<2xi32>) -> vector<2xi32>
    %237 = arith.minf %cst_4, %cst_0 : f32
    %238 = arith.remsi %95, %c7964_i16 : i16
    %239 = arith.minsi %false_23, %false_38 : i1
    %240 = index.divu %69, %219
    %241 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %106, %146, %146 : vector<6x6xi1>, vector<6xi1> into vector<6xi1>
    %242 = tensor.empty() : tensor<6x6xi16>
    %243 = linalg.copy ins(%13 : tensor<6x6xi16>) outs(%242 : tensor<6x6xi16>) -> tensor<6x6xi16>
    %244 = tensor.empty() : tensor<4xf32>
    %transposed_54 = linalg.transpose ins(%9 : tensor<4xf32>) outs(%244 : tensor<4xf32>) permutation = [0] 
    %alloc_55 = memref.alloc() : memref<i32>
    linalg.reduce ins(%alloc_15 : memref<3xi32>) outs(%alloc_55 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %246 = math.exp2 %3 : tensor<3xf16>
        %247 = index.ceildivu %57, %57
        %248 = scf.while (%arg1 = %cst) : (f16) -> f16 {
          %253 = bufferization.to_memref %from_elements_31 : memref<3xi16>
          %254 = index.sizeof
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %167, %205 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi64>, vector<6xi64>
          %255 = vector.multi_reduction <minui>, %147, %146 [0] : vector<6x6xi1> to vector<6xi1>
          %256 = vector.matrix_multiply %67, %48 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 3 : i32} : (vector<16xi1>, vector<3xi1>) -> vector<48xi1>
          %257 = vector.create_mask %104 : vector<3xi1>
          %258 = affine.min affine_map<(d0, d1, d2) -> ((d2 * 4096 - (d2 * 4096 + 8)) * 2)>(%c5, %57, %196)
          %259 = index.sizeof
          scf.condition(%true) %cst_3 : f16
        } do {
        ^bb0(%arg1: f16):
          %253 = math.exp %cst : f16
          %true_57 = index.bool.constant true
          %254 = arith.divf %cst_0, %cst_0 : f32
          %255 = math.ipowi %false_41, %false_41 : i1
          %256 = arith.maxui %false_40, %false_38 : i1
          %splat_58 = tensor.splat %init : tensor<16xi32>
          %257 = arith.addf %cst_1, %cst_3 : f16
          %258 = arith.remsi %true_27, %true_28 : i1
          %259 = math.ctpop %true_22 : i1
          %260 = affine.max affine_map<(d0, d1) -> (d1, (d0 - 128) * 8 + d1 floordiv 4, (-(d0 - 128) - d1 * 16) ceildiv 32)>(%196, %28)
          %261 = math.atan2 %transposed_54, %9 : tensor<4xf32>
          %262 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 16, -(d1 floordiv 16), d0 ceildiv 16)>(%260, %65, %159)
          %263 = arith.subi %false_23, %true_28 : i1
          %264 = arith.ori %extracted_49, %c-549_i16 : i16
          %collapsed_59 = tensor.collapse_shape %243 [[0, 1]] : tensor<6x6xi16> into tensor<36xi16>
          %265 = math.fpowi %7, %18 : tensor<16xf16>, tensor<16xi32>
          scf.yield %cst_1 : f16
        }
        %249 = vector.load %alloc_11[%c2] : memref<3xi64>, vector<6x6xi64>
        %250 = vector.load %105[%c15] : memref<16xi32>, vector<16xi32>
        %251 = index.maxu %c9, %195
        %252 = arith.negf %cst : f16
        %alloc_56 = memref.alloc() : memref<4xi1>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg1) = (%c6) to (%112) step (%c11) {
      %246 = math.atan %transposed_54 : tensor<4xf32>
      %247 = math.ceil %7 : tensor<16xf16>
      %cast_56 = tensor.cast %from_elements : tensor<3xi32> to tensor<?xi32>
      %false_57 = index.bool.constant false
      %cast_58 = tensor.cast %splat : tensor<4xi32> to tensor<?xi32>
      %splat_59 = tensor.splat %c-30156_i16 : tensor<3xi16>
      %248 = math.roundeven %7 : tensor<16xf16>
      %249 = vector.create_mask %211 : vector<3xi1>
      %250 = arith.andi %c1_i64, %c437334091_i64 : i64
      %251 = math.ipowi %true_27, %false_2 : i1
      memref.tensor_store %16, %alloc_16 : memref<3xf16>
      %252 = index.divu %c10, %124
      %253 = vector.transpose %82, [0] : vector<3xi1> to vector<3xi1>
      %254 = bufferization.to_memref %8 : memref<6x6xi1>
      %255 = index.floordivs %219, %97
      %256 = math.ipowi %11, %from_elements_31 : tensor<3xi16>
      scf.yield
    }
    %245 = affine.vector_load %alloc_17[%c2, %203] : memref<6x6xi64>, vector<3xi64>
    affine.vector_store %234, %alloc_15[%c5] : memref<3xi32>, vector<4xi32>
    vector.print %20 : vector<4xi32>
    vector.print %33 : vector<3xi32>
    vector.print %48 : vector<3xi1>
    vector.print %49 : vector<3xi32>
    vector.print %67 : vector<16xi1>
    vector.print %82 : vector<3xi1>
    vector.print %89 : vector<1xi32>
    vector.print %106 : vector<6x6xi1>
    vector.print %118 : vector<3xi1>
    vector.print %138 : vector<3xi32>
    vector.print %146 : vector<6xi1>
    vector.print %147 : vector<6x6xi1>
    vector.print %150 : vector<2xi32>
    vector.print %151 : vector<4xi32>
    vector.print %153 : vector<3xi1>
    vector.print %165 : vector<6x6xi1>
    vector.print %167 : vector<6x6xi64>
    vector.print %168 : vector<6x6xi32>
    vector.print %169 : vector<6x6xi64>
    vector.print %189 : vector<5xi1>
    vector.print %197 : vector<4xi1>
    vector.print %198 : vector<4xi32>
    vector.print %205 : vector<6xi64>
    vector.print %234 : vector<4xi32>
    vector.print %236 : vector<2xi32>
    vector.print %245 : vector<3xi64>
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c-8157_i16 : i16
    vector.print %c1697511383_i32 : i32
    vector.print %false : i1
    vector.print %cst_1 : f16
    vector.print %c1523921471_i32 : i32
    vector.print %c437334091_i64 : i64
    vector.print %false_2 : i1
    vector.print %true : i1
    vector.print %c-30156_i16 : i16
    vector.print %c306918922_i32 : i32
    vector.print %c-549_i16 : i16
    vector.print %c7964_i16 : i16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %cst_21 : f16
    vector.print %true_22 : i1
    vector.print %false_23 : i1
    vector.print %extracted : i32
    vector.print %true_26 : i1
    vector.print %true_27 : i1
    vector.print %true_28 : i1
    vector.print %true_29 : i1
    vector.print %c1_i64 : i64
    vector.print %95 : i16
    vector.print %extracted_30 : i16
    vector.print %false_38 : i1
    vector.print %false_40 : i1
    vector.print %false_41 : i1
    vector.print %extracted_49 : i16
    vector.print %false_51 : i1
    vector.print %c0_i32 : i32
    return
  }
}
