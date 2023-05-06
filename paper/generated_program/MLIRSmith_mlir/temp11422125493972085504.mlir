module {
  func.func private @func1(%arg0: f16, %arg1: tensor<1x15x15xf32>, %arg2: f16) -> index {
    %c271623502_i64 = arith.constant 271623502 : i64
    %c501533197_i32 = arith.constant 501533197 : i32
    %cst = arith.constant 1.70702067E+9 : f32
    %c12600_i16 = arith.constant 12600 : i16
    %cst_0 = arith.constant 6.361600e+04 : f16
    %c782217666_i64 = arith.constant 782217666 : i64
    %c-13517_i16 = arith.constant -13517 : i16
    %c-32462_i16 = arith.constant -32462 : i16
    %false = arith.constant false
    %c1137689696_i32 = arith.constant 1137689696 : i32
    %c1451825322_i32 = arith.constant 1451825322 : i32
    %cst_1 = arith.constant 1.31597926E+9 : f32
    %c2061977339_i32 = arith.constant 2061977339 : i32
    %cst_2 = arith.constant 1.5308425E+9 : f32
    %cst_3 = arith.constant 4.956800e+04 : f16
    %c2131183909_i32 = arith.constant 2131183909 : i32
    %0 = tensor.empty() : tensor<11x12x1xf32>
    %1 = tensor.empty() : tensor<11x1xi64>
    %2 = tensor.empty() : tensor<11x1xf16>
    %3 = tensor.empty() : tensor<1x15xf32>
    %4 = tensor.empty() : tensor<1x15x15xi1>
    %5 = tensor.empty() : tensor<11x1xf32>
    %6 = tensor.empty() : tensor<11x12x1xi16>
    %7 = tensor.empty() : tensor<11x1xi64>
    %8 = tensor.empty() : tensor<1x15x15xi1>
    %9 = tensor.empty() : tensor<11x1xf16>
    %10 = tensor.empty() : tensor<1x15xi1>
    %11 = tensor.empty() : tensor<1x15xi64>
    %12 = tensor.empty() : tensor<1x15x15xf16>
    %13 = tensor.empty() : tensor<11x12x1xi32>
    %14 = tensor.empty() : tensor<1x15x15xi1>
    %15 = tensor.empty() : tensor<11x12x1xi16>
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
    %alloc = memref.alloc() : memref<1x15xi16>
    %alloc_4 = memref.alloc() : memref<1x15xi16>
    %alloc_5 = memref.alloc() : memref<11x1xi32>
    %alloc_6 = memref.alloc() : memref<1x15xi16>
    %alloc_7 = memref.alloc() : memref<11x1xi16>
    %alloc_8 = memref.alloc() : memref<11x1xi1>
    %alloc_9 = memref.alloc() : memref<1x15x15xi16>
    %alloc_10 = memref.alloc() : memref<1x15x15xi16>
    %alloc_11 = memref.alloc() : memref<1x15xi16>
    %alloc_12 = memref.alloc() : memref<1x15x15xi16>
    %alloc_13 = memref.alloc() : memref<11x1xi16>
    %alloc_14 = memref.alloc() : memref<1x15xf32>
    %alloc_15 = memref.alloc() : memref<1x15xi16>
    %alloc_16 = memref.alloc() : memref<1x15xi32>
    %alloc_17 = memref.alloc() : memref<11x12x1xf16>
    %alloc_18 = memref.alloc() : memref<11x12x1xi16>
    %16 = tensor.empty() : tensor<11x1xf16>
    %17 = linalg.copy ins(%9 : tensor<11x1xf16>) outs(%16 : tensor<11x1xf16>) -> tensor<11x1xf16>
    %alloc_19 = memref.alloc() : memref<15x1xi16>
    linalg.transpose ins(%alloc_6 : memref<1x15xi16>) outs(%alloc_19 : memref<15x1xi16>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<1xi64>
    linalg.reduce ins(%7 : tensor<11x1xi64>) outs(%alloc_20 : memref<1xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %262 = vector.broadcast %c12600_i16 : i16 to vector<11x1xi16>
        %263 = vector.shuffle %262, %262 [0, 3, 5, 7, 8, 12, 13, 14, 15, 17, 21] : vector<11x1xi16>, vector<11x1xi16>
        %264 = vector.broadcast %in : i64 to vector<15xi64>
        %265 = vector.reduction <maxsi>, %264 : vector<15xi64> into i64
        %expanded_44 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<1x15x15xi1> into tensor<1x15x15x1xi1>
        %266 = math.sqrt %16 : tensor<11x1xf16>
        %267 = memref.atomic_rmw addi %c-13517_i16, %alloc_11[%c0, %c4] : (i16, memref<1x15xi16>) -> i16
        %expanded_45 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<1x15x15xi1> into tensor<1x15x15x1xi1>
        %268 = tensor.empty() : tensor<15x1xi64>
        %269 = tensor.empty() : tensor<1x1xi64>
        %270 = linalg.matmul ins(%11, %268 : tensor<1x15xi64>, tensor<15x1xi64>) outs(%269 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %271 = arith.remf %cst_0, %cst_3 : f16
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %18 = scf.parallel (%arg3) = (%c2) to (%c12) step (%c2) init (%12) -> tensor<1x15x15xf16> {
      %262 = arith.andi %c-13517_i16, %c12600_i16 : i16
      %263 = vector.broadcast %cst_1 : f32 to vector<1x15xf32>
      %264 = vector.transpose %263, [0, 1] : vector<1x15xf32> to vector<1x15xf32>
      %265 = math.ceil %cst_0 : f16
      %266 = arith.ori %false, %false : i1
      %267 = arith.addi %c501533197_i32, %c1451825322_i32 : i32
      %268 = vector.load %alloc_4[%c0, %c4] : memref<1x15xi16>, vector<1x15x15xi16>
      %269 = arith.divui %c-32462_i16, %c-13517_i16 : i16
      %alloca_44 = memref.alloca() : memref<11x1xi1>
      %270 = vector.load %alloc_18[%c2, %c10, %c0] : memref<11x12x1xi16>, vector<1x15x15xi16>
      %rank_45 = tensor.rank %5 : tensor<11x1xf32>
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - d2) mod 32)>(%c11, %c0, %c1, %c1)
      %expanded_46 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<11x1xf32> into tensor<11x1x1xf32>
      %272 = arith.remf %cst_1, %cst_2 : f32
      %273 = math.cttz %c-32462_i16 : i16
      %274 = arith.ceildivsi %false, %false : i1
      affine.for %arg4 = 0 to 83 {
      }
      %275 = tensor.empty() : tensor<1x15x15xf16>
      scf.reduce(%275)  : tensor<1x15x15xf16> {
      ^bb0(%arg4: tensor<1x15x15xf16>, %arg5: tensor<1x15x15xf16>):
        %276 = math.tan %0 : tensor<11x12x1xf32>
        %277 = arith.divf %cst_2, %cst_1 : f32
        %278 = vector.transpose %270, [2, 0, 1] : vector<1x15x15xi16> to vector<15x1x15xi16>
        %279 = arith.shrui %c1137689696_i32, %c2131183909_i32 : i32
        %280 = arith.shrui %c782217666_i64, %c782217666_i64 : i64
        %281 = arith.remf %cst_0, %cst_0 : f16
        %282 = arith.muli %false, %false : i1
        %283 = index.add %c10, %c5
        %284 = tensor.empty() : tensor<1x15x15xf16>
        scf.reduce.return %284 : tensor<1x15x15xf16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c15, %c6] : memref<1x15xi16>, vector<12xi16>
    affine.vector_store %19, %alloc_18[%c3, %c0, %c14] : memref<11x12x1xi16>, vector<12xi16>
    %20 = tensor.empty() : tensor<1xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc_20, %20 : memref<1xi64>, tensor<1xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = affine.apply affine_map<(d0, d1) -> (d1 * 8)>(%c7, %c12)
    %24 = bufferization.to_tensor %alloc_4 : memref<1x15xi16>
    %25 = arith.ceildivsi %c12600_i16, %c-32462_i16 : i16
    %26 = scf.execute_region -> index {
      %262 = arith.shrui %c12600_i16, %c12600_i16 : i16
      %263 = math.tanh %cst_2 : f32
      %264 = vector.broadcast %c-13517_i16 : i16 to vector<11x1xi16>
      %265 = vector.broadcast %false : i1 to vector<11x1xi1>
      %266 = vector.broadcast %c501533197_i32 : i32 to vector<11x1xi32>
      %267 = vector.gather %alloc_6[%c2, %c3] [%266], %265, %264 : memref<1x15xi16>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xi16> into vector<11x1xi16>
      %268 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 8 - 32, -((d0 * 4) ceildiv 32), d1 ceildiv 8)>(%c12, %c5)
      %269 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
      %270 = index.floordivs %c2, %c4
      %expanded_44 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<11x12x1xi16> into tensor<11x12x1x1xi16>
      %271 = vector.broadcast %c9 : index to vector<1xindex>
      %272 = vector.broadcast %false : i1 to vector<1xi1>
      vector.scatter %alloc_18[%c1, %c8, %c0] [%271], %272, %269 : memref<11x12x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %273 = arith.shrui %c501533197_i32, %c2131183909_i32 : i32
      %274 = vector.load %alloc_11[%c0, %c8] : memref<1x15xi16>, vector<11x1xi16>
      %alloc_45 = memref.alloc() : memref<1x15x15xf16>
      %275 = vector.transpose %19, [0] : vector<12xi16> to vector<12xi16>
      %276 = index.casts %c2061977339_i32 : i32 to index
      %277 = math.log1p %cst_2 : f32
      %278 = arith.floordivsi %c-32462_i16, %c-32462_i16 : i16
      %279 = arith.muli %c-13517_i16, %c12600_i16 : i16
      scf.yield %c8 : index
    }
    %27 = vector.broadcast %cst_1 : f32 to vector<11x1xf32>
    %28 = vector.broadcast %c782217666_i64 : i64 to vector<11x12x1xi64>
    bufferization.dealloc_tensor %14 : tensor<1x15x15xi1>
    %29 = math.roundeven %cst_2 : f32
    %30 = math.expm1 %cst_2 : f32
    memref.assume_alignment %alloc_14, 8 : memref<1x15xf32>
    %cast = tensor.cast %1 : tensor<11x1xi64> to tensor<?x?xi64>
    %31 = arith.divsi %c1137689696_i32, %c1137689696_i32 : i32
    %32 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - d0 mod 8)>(%c1, %c11, %c9, %c13)
    %33 = math.cos %2 : tensor<11x1xf16>
    %34 = arith.divui %c271623502_i64, %c271623502_i64 : i64
    %35 = math.tan %5 : tensor<11x1xf32>
    %36 = bufferization.clone %alloc_7 : memref<11x1xi16> to memref<11x1xi16>
    %37 = arith.floordivsi %c1137689696_i32, %c1451825322_i32 : i32
    %38 = index.floordivs %c6, %c12
    %39 = vector.extract_strided_slice %28 {offsets = [9], sizes = [1], strides = [1]} : vector<11x12x1xi64> to vector<1x12x1xi64>
    %40 = index.casts %c2131183909_i32 : i32 to index
    %41 = vector.extract_strided_slice %27 {offsets = [5], sizes = [6], strides = [1]} : vector<11x1xf32> to vector<6x1xf32>
    %42 = arith.divsi %c2131183909_i32, %c2061977339_i32 : i32
    %43 = vector.bitcast %27 : vector<11x1xf32> to vector<11x1xf32>
    %44 = math.atan %9 : tensor<11x1xf16>
    %45 = vector.reduction <minui>, %19 : vector<12xi16> into i16
    %46 = vector.broadcast %cst_2 : f32 to vector<1xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %27, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<11x1xf32>, vector<1xf32>
    %47 = index.maxs %c6, %c3
    %48 = math.cttz %c2131183909_i32 : i32
    affine.store %c-32462_i16, %alloc_10[%c10, %c14, %c11] : memref<1x15x15xi16>
    %49 = math.tanh %0 : tensor<11x12x1xf32>
    %50 = vector.extract %19[0] : vector<12xi16>
    %extracted = tensor.extract %14[%c0, %c2, %c1] : tensor<1x15x15xi1>
    %alloc_21 = memref.alloc() : memref<11x1xi1>
    memref.copy %alloc_8, %alloc_21 : memref<11x1xi1> to memref<11x1xi1>
    memref.copy %alloc_4, %alloc_15 : memref<1x15xi16> to memref<1x15xi16>
    %51 = arith.negf %cst : f32
    %52 = math.fpowi %cst_3, %c2131183909_i32 : f16, i32
    %53 = arith.ori %false, %extracted : i1
    %54 = math.ceil %cst_0 : f16
    %55 = vector.multi_reduction <mul>, %43, %cst [0, 1] : vector<11x1xf32> to f32
    %56 = bufferization.clone %alloc_9 : memref<1x15x15xi16> to memref<1x15x15xi16>
    %57 = math.log1p %3 : tensor<1x15xf32>
    %58 = arith.andi %c1137689696_i32, %c1137689696_i32 : i32
    %59 = arith.cmpf oge, %cst_1, %cst_1 : f32
    %60 = arith.xori %c-32462_i16, %c-13517_i16 : i16
    %61 = scf.execute_region -> index {
      %cst_44 = arith.constant 1.000000e+00 : f16
      %262 = vector.transfer_read %alloc_17[%c11, %c13, %c2], %cst_44 : memref<11x12x1xf16>, vector<15x11xf16>
      %263 = arith.andi %c1137689696_i32, %c501533197_i32 : i32
      %264 = tensor.empty() : tensor<11x15xf32>
      %265 = linalg.matmul ins(%5, %3 : tensor<11x1xf32>, tensor<1x15xf32>) outs(%264 : tensor<11x15xf32>) -> tensor<11x15xf32>
      %266 = math.absi %7 : tensor<11x1xi64>
      %267 = math.sqrt %264 : tensor<11x15xf32>
      %268 = vector.shuffle %39, %28 [0, 2, 3, 5, 7, 9, 10, 11] : vector<1x12x1xi64>, vector<11x12x1xi64>
      %269 = bufferization.clone %alloc_5 : memref<11x1xi32> to memref<11x1xi32>
      %270 = index.sizeof
      %271 = memref.realloc %alloc_20 : memref<1xi64> to memref<12xi64>
      %expanded_45 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<11x1xf16> into tensor<11x1x1xf16>
      %272 = arith.ori %c782217666_i64, %c271623502_i64 : i64
      %rank_46 = tensor.rank %7 : tensor<11x1xi64>
      %273 = arith.shrsi %c2061977339_i32, %c1451825322_i32 : i32
      %274 = math.tanh %17 : tensor<11x1xf16>
      %275 = vector.broadcast %270 : index to vector<1xindex>
      %276 = vector.broadcast %extracted : i1 to vector<1xi1>
      %277 = vector.broadcast %c2131183909_i32 : i32 to vector<1xi32>
      vector.scatter %alloc_5[%c3, %c0] [%275], %276, %277 : memref<11x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %278 = math.ceil %12 : tensor<1x15x15xf16>
      scf.yield %c4 : index
    }
    %62 = scf.if %extracted -> (memref<11x1xf16>) {
      %262 = memref.atomic_rmw mins %c501533197_i32, %alloc_5[%c0, %c0] : (i32, memref<11x1xi32>) -> i32
      %263 = vector.reduction <add>, %19 : vector<12xi16> into i16
      %alloca_44 = memref.alloca() : memref<1x15x15xi64>
      %rank_45 = tensor.rank %7 : tensor<11x1xi64>
      %264 = arith.remf %cst_1, %cst_2 : f32
      %265 = index.maxu %c8, %c12
      %266 = arith.shli %c1137689696_i32, %c2131183909_i32 : i32
      %generated_46 = tensor.generate %c7 {
      ^bb0(%arg3: index, %arg4: index):
        %alloc_48 = memref.alloc() : memref<1x15xf16>
        %267 = math.sqrt %17 : tensor<11x1xf16>
        %268 = math.round %5 : tensor<11x1xf32>
        %269 = memref.atomic_rmw mins %c12600_i16, %alloc_10[%c0, %c4, %c2] : (i16, memref<1x15x15xi16>) -> i16
        tensor.yield %c-32462_i16 : i16
      } : tensor<?x1xi16>
      %alloc_47 = memref.alloc() : memref<11x1xf16>
      scf.yield %alloc_47 : memref<11x1xf16>
    } else {
      %262 = math.cos %55 : f32
      %263 = bufferization.to_tensor %alloc_14 : memref<1x15xf32>
      %264 = math.tanh %cst_3 : f16
      %265 = math.tanh %cst_0 : f16
      %266 = vector.broadcast %c-32462_i16 : i16 to vector<11xi16>
      %267 = vector.broadcast %extracted : i1 to vector<11xi1>
      %268 = vector.maskedload %alloc[%c0, %c9], %267, %266 : memref<1x15xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %269 = arith.andi %extracted, %false : i1
      %270 = index.sub %c0, %c14
      %271 = vector.shuffle %28, %28 [0, 1, 5, 7, 13, 14, 15, 19, 20, 21] : vector<11x12x1xi64>, vector<11x12x1xi64>
      %alloc_44 = memref.alloc() : memref<11x1xf16>
      scf.yield %alloc_44 : memref<11x1xf16>
    }
    %63 = affine.max affine_map<(d0) -> (d0)>(%38)
    %c1_i16 = arith.constant 1 : i16
    %64 = vector.transfer_read %alloc_15[%c8, %40], %c1_i16 : memref<1x15xi16>, vector<1xi16>
    %65 = math.atan2 %0, %0 : tensor<11x12x1xf32>
    scf.index_switch %c7 
    case 1 {
      %262 = vector.splat %23 : vector<11x12x1xindex>
      %263 = tensor.empty() : tensor<15x15xf32>
      %264 = tensor.empty() : tensor<1x15xf32>
      %265 = linalg.matmul ins(%3, %263 : tensor<1x15xf32>, tensor<15x15xf32>) outs(%264 : tensor<1x15xf32>) -> tensor<1x15xf32>
      %266 = vector.splat %c1_i16 : vector<11x1xi16>
      %267 = math.log10 %cst_1 : f32
      scf.index_switch %c2 
      case 1 {
        %282 = math.round %9 : tensor<11x1xf16>
        vector.print %43 : vector<11x1xf32>
        %283 = vector.broadcast %cst_1 : f32 to vector<1xf32>
        %284 = vector.insert %283, %41 [1] : vector<1xf32> into vector<6x1xf32>
        %285 = arith.addi %extracted, %false : i1
        %286 = vector.broadcast %c782217666_i64 : i64 to vector<11x12xi64>
        %dest_46, %accumulated_value_47 = vector.scan <minsi>, %28, %286 {inclusive = false, reduction_dim = 2 : i64} : vector<11x12x1xi64>, vector<11x12xi64>
        %287 = arith.remui %c2131183909_i32, %c1137689696_i32 : i32
        %288 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xi16> to vector<12xi16>
        %289 = math.expm1 %5 : tensor<11x1xf32>
        %290 = math.tanh %9 : tensor<11x1xf16>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c13, %c9, %c15)
        %292 = math.tanh %0 : tensor<11x12x1xf32>
        %293 = index.maxu %63, %c12
        %294 = math.round %cst_1 : f32
        %295 = arith.remf %cst_3, %cst_3 : f16
        %296 = index.sub %47, %c4
        %297 = index.floordivs %47, %61
        scf.yield
      }
      case 2 {
        affine.store %c2131183909_i32, %alloc_16[%c7, %c6] : memref<1x15xi32>
        vector.print %19 : vector<12xi16>
        %282 = math.ipowi %11, %11 : tensor<1x15xi64>
        %283 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %284 = affine.apply affine_map<(d0) -> (d0 ceildiv 128)>(%c1)
        %285 = math.log1p %55 : f32
        %286 = math.ctlz %c1_i16 : i16
        %287 = math.atan2 %cst_1, %cst : f32
        %alloc_46 = memref.alloc() : memref<11x1xi64>
        %288 = arith.shrui %c-32462_i16, %c-13517_i16 : i16
        %289 = arith.maxf %cst_2, %55 : f32
        %290 = arith.cmpf ole, %cst_0, %cst_3 : f16
        %291 = math.tanh %cst_3 : f16
        %292 = vector.shuffle %28, %39 [1, 4, 7, 8, 9, 11] : vector<11x12x1xi64>, vector<1x12x1xi64>
        %293 = math.expm1 %5 : tensor<11x1xf32>
        %294 = index.maxu %c1, %c4
        scf.yield
      }
      default {
        %282 = arith.andi %c1_i16, %c-32462_i16 : i16
        %283 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %284 = arith.remf %cst_1, %cst_1 : f32
        %true = index.bool.constant true
        %c1_i16_46 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %285 = vector.transfer_read %alloc[%c12, %c14], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<1x15xi16>, vector<11xi16>
        %286 = tensor.empty() : tensor<1x15x15xi32>
        %287 = vector.broadcast %c1451825322_i32 : i32 to vector<1x15x15xi32>
        %288 = vector.broadcast %true : i1 to vector<1x15x15xi1>
        %289 = vector.gather %286[%26, %c7, %c4] [%287], %288, %287 : tensor<1x15x15xi32>, vector<1x15x15xi32>, vector<1x15x15xi1>, vector<1x15x15xi32> into vector<1x15x15xi32>
        %290 = math.ipowi %false, %false : i1
        %291 = math.exp2 %0 : tensor<11x12x1xf32>
        memref.copy %alloc_9, %alloc_12 : memref<1x15x15xi16> to memref<1x15x15xi16>
        %292 = vector.broadcast %c782217666_i64 : i64 to vector<1x1xi64>
        %dest_47, %accumulated_value_48 = vector.scan <xor>, %39, %292 {inclusive = true, reduction_dim = 1 : i64} : vector<1x12x1xi64>, vector<1x1xi64>
        %expanded_49 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<11x1xf32> into tensor<11x1x1xf32>
        %293 = arith.negf %cst : f32
        %294 = arith.divsi %false, %false : i1
        %295 = math.absf %12 : tensor<1x15x15xf16>
        %296 = math.ctlz %c1451825322_i32 : i32
        %297 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
      }
      %alloc_44 = memref.alloc() : memref<11x12x1xi1>
      %268 = vector.broadcast %extracted : i1 to vector<1x15x15xi1>
      %269 = vector.broadcast %c2061977339_i32 : i32 to vector<1x15x15xi32>
      %270 = vector.gather %alloc_44[%23, %26, %32] [%269], %268, %268 : memref<11x12x1xi1>, vector<1x15x15xi32>, vector<1x15x15xi1>, vector<1x15x15xi1> into vector<1x15x15xi1>
      %extracted_45 = tensor.extract %9[%c10, %c0] : tensor<11x1xf16>
      %271 = math.log1p %9 : tensor<11x1xf16>
      %272 = index.add %c10, %63
      %273 = math.expm1 %9 : tensor<11x1xf16>
      %274 = math.fpowi %55, %c1451825322_i32 : f32, i32
      %275 = math.tanh %0 : tensor<11x12x1xf32>
      %276 = vector.reduction <xor>, %19 : vector<12xi16> into i16
      %277 = vector.broadcast %cst_2 : f32 to vector<1xf32>
      %278 = vector.multi_reduction <mul>, %41, %277 [0] : vector<6x1xf32> to vector<1xf32>
      %279 = vector.broadcast %extracted : i1 to vector<15x15x15x15xi1>
      %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %268, %268, %279 : vector<1x15x15xi1>, vector<1x15x15xi1> into vector<15x15x15x15xi1>
      %281 = math.expm1 %cst_3 : f16
      scf.yield
    }
    case 2 {
      %262 = index.ceildivu %61, %38
      %c0_i16 = arith.constant 0 : i16
      %263 = vector.transfer_read %alloc_9[%47, %c0, %c14], %c0_i16 : memref<1x15x15xi16>, vector<15x15xi16>
      %264 = arith.negf %55 : f32
      vector.print %43 : vector<11x1xf32>
      %265 = arith.andi %c1451825322_i32, %c501533197_i32 : i32
      %266 = vector.broadcast %cst : f32 to vector<11xf32>
      %dest_44, %accumulated_value_45 = vector.scan <add>, %43, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<11x1xf32>, vector<11xf32>
      %267 = arith.remf %cst_3, %cst_0 : f16
      %268 = math.cos %5 : tensor<11x1xf32>
      %269 = math.ctlz %11 : tensor<1x15xi64>
      %270 = arith.remf %cst_3, %cst_0 : f16
      %271 = arith.remui %c1137689696_i32, %c1137689696_i32 : i32
      %272 = index.divs %c15, %61
      %273 = arith.muli %false, %false : i1
      %inserted_46 = tensor.insert %cst into %5[%c1, %c0] : tensor<11x1xf32>
      %274 = bufferization.to_tensor %alloc_15 : memref<1x15xi16>
      %275 = math.cos %9 : tensor<11x1xf16>
      scf.yield
    }
    case 3 {
      %262 = vector.broadcast %c2061977339_i32 : i32 to vector<11x1xi32>
      %263 = arith.shrui %false, %extracted : i1
      %264 = vector.reduction <maxui>, %19 : vector<12xi16> into i16
      %c1_i16_44 = arith.constant 1 : i16
      %265 = vector.transfer_read %alloc_18[%c13, %c2, %c3], %c1_i16_44 : memref<11x12x1xi16>, vector<15x11xi16>
      %266 = math.round %cst : f32
      %267 = scf.if %false -> (memref<1x15x15xf32>) {
        %279 = arith.minsi %extracted, %extracted : i1
        %280 = math.absi %10 : tensor<1x15xi1>
        %281 = vector.load %alloc_8[%c0, %c0] : memref<11x1xi1>, vector<11x1xi1>
        %282 = math.ipowi %c1_i16_44, %c-13517_i16 : i16
        %283 = arith.ceildivsi %c-32462_i16, %c12600_i16 : i16
        %inserted_47 = tensor.insert %c-13517_i16 into %6[%c8, %c5, %c0] : tensor<11x12x1xi16>
        %284 = vector.broadcast %c14 : index to vector<12xindex>
        %285 = vector.broadcast %extracted : i1 to vector<12xi1>
        vector.scatter %alloc_10[%c0, %c8, %c4] [%284], %285, %19 : memref<1x15x15xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %286 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %alloc_48 = memref.alloc() : memref<1x15x15xf32>
        scf.yield %alloc_48 : memref<1x15x15xf32>
      } else {
        %279 = math.ctlz %false : i1
        %280 = math.expm1 %12 : tensor<1x15x15xf16>
        %281 = math.expm1 %2 : tensor<11x1xf16>
        %cast_47 = tensor.cast %1 : tensor<11x1xi64> to tensor<?x?xi64>
        %282 = vector.splat %c14 : vector<11x1xindex>
        %283 = math.absf %2 : tensor<11x1xf16>
        %284 = arith.maxf %cst_3, %cst_0 : f16
        %285 = arith.subi %c-32462_i16, %c1_i16 : i16
        %alloc_48 = memref.alloc() : memref<1x15x15xf32>
        scf.yield %alloc_48 : memref<1x15x15xf32>
      }
      %true = index.bool.constant true
      %268 = index.casts %c501533197_i32 : i32 to index
      %269 = arith.muli %c782217666_i64, %c271623502_i64 : i64
      %270 = bufferization.to_memref %6 : memref<11x12x1xi16>
      %271 = index.maxu %c7, %c13
      %272 = scf.execute_region -> vector<11x1xi64> {
        %alloc_47 = memref.alloc() : memref<11x1xi64>
        %279 = vector.broadcast %c271623502_i64 : i64 to vector<1x15xi64>
        %280 = vector.broadcast %extracted : i1 to vector<1x15xi1>
        %281 = vector.broadcast %c1451825322_i32 : i32 to vector<1x15xi32>
        %282 = vector.gather %alloc_47[%26, %32] [%281], %280, %279 : memref<11x1xi64>, vector<1x15xi32>, vector<1x15xi1>, vector<1x15xi64> into vector<1x15xi64>
        %283 = math.absf %3 : tensor<1x15xf32>
        %284 = arith.muli %c782217666_i64, %c782217666_i64 : i64
        %285 = math.log1p %3 : tensor<1x15xf32>
        %286 = vector.extract_strided_slice %41 {offsets = [0], sizes = [3], strides = [1]} : vector<6x1xf32> to vector<3x1xf32>
        %287 = arith.negf %cst : f32
        %288 = memref.load %alloc_7[%c0, %c0] : memref<11x1xi16>
        %289 = index.mul %c7, %c5
        %rank_48 = tensor.rank %1 : tensor<11x1xi64>
        %290 = arith.floordivsi %c782217666_i64, %c782217666_i64 : i64
        %true_49 = index.bool.constant true
        %291 = math.powf %2, %16 : tensor<11x1xf16>
        %292 = math.log10 %2 : tensor<11x1xf16>
        %293 = arith.andi %c782217666_i64, %c271623502_i64 : i64
        %294 = arith.maxui %c-13517_i16, %c-13517_i16 : i16
        %295 = tensor.empty() : tensor<11x15xi64>
        %296 = linalg.matmul ins(%1, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%295 : tensor<11x15xi64>) -> tensor<11x15xi64>
        %297 = vector.broadcast %c271623502_i64 : i64 to vector<11x1xi64>
        scf.yield %297 : vector<11x1xi64>
      }
      %inserted_45 = tensor.insert %cst_3 into %2[%c8, %c0] : tensor<11x1xf16>
      %273 = arith.ceildivsi %c271623502_i64, %c782217666_i64 : i64
      %274 = arith.muli %c1451825322_i32, %c501533197_i32 : i32
      %alloc_46 = memref.alloc() : memref<11x12x1xf32>
      %275 = vector.broadcast %55 : f32 to vector<1x15x15xf32>
      %276 = vector.broadcast %true : i1 to vector<1x15x15xi1>
      %277 = vector.broadcast %c2131183909_i32 : i32 to vector<1x15x15xi32>
      %278 = vector.gather %alloc_46[%63, %c0, %47] [%277], %276, %275 : memref<11x12x1xf32>, vector<1x15x15xi32>, vector<1x15x15xi1>, vector<1x15x15xf32> into vector<1x15x15xf32>
      scf.yield
    }
    default {
      %262 = math.atan %cst_2 : f32
      memref.store %c12600_i16, %alloc[%c0, %c10] : memref<1x15xi16>
      %263 = tensor.empty() : tensor<11xi16>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263, %6 : tensor<11xi16>, tensor<11x12x1xi16>) outs(%15 : tensor<11x12x1xi16>) {
      ^bb0(%in: i16, %in_48: i16, %out: i16):
        %274 = bufferization.clone %alloc_15 : memref<1x15xi16> to memref<1x15xi16>
        %275 = math.ctlz %13 : tensor<11x12x1xi32>
        %276 = math.ctlz %6 : tensor<11x12x1xi16>
        %277 = vector.bitcast %28 : vector<11x12x1xi64> to vector<11x12x1xi64>
        %278 = math.absf %16 : tensor<11x1xf16>
        %279 = math.cos %5 : tensor<11x1xf32>
        %280 = math.cttz %15 : tensor<11x12x1xi16>
        %281 = affine.apply affine_map<(d0) -> (d0 ceildiv 128)>(%32)
        %282 = math.round %12 : tensor<1x15x15xf16>
        %283 = arith.ori %c12600_i16, %in_48 : i16
        %284 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
        %285 = vector.broadcast %false : i1 to vector<1xi1>
        %286 = vector.maskedload %36[%c6, %c0], %285, %284 : memref<11x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %287 = index.sizeof
        %288 = affine.load %alloc_6[%c3, %c7] : memref<1x15xi16>
        %289 = math.ctlz %false : i1
        %290 = math.atan2 %0, %0 : tensor<11x12x1xf32>
        %291 = vector.broadcast %c-32462_i16 : i16 to vector<1x1xi16>
        %292 = vector.outerproduct %286, %284, %291 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
        %293 = arith.cmpf uno, %cst_1, %cst : f32
        %294 = affine.load %alloc_11[%c14, %c11] : memref<1x15xi16>
        %295 = arith.remui %in, %out : i16
        %296 = arith.cmpf true, %cst_0, %cst_0 : f16
        %297 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %298 = vector.transfer_write %297, %5[%40, %281] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf32>, tensor<11x1xf32>
        %299 = math.cos %55 : f32
        %300 = bufferization.clone %alloc_5 : memref<11x1xi32> to memref<11x1xi32>
        bufferization.dealloc_tensor %17 : tensor<11x1xf16>
        %301 = arith.maxui %294, %out : i16
        %302 = arith.divsi %in, %c1_i16 : i16
        %expanded_49 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<11x12x1xi32> into tensor<11x12x1x1xi32>
        %303 = arith.divsi %288, %c-13517_i16 : i16
        %304 = vector.matrix_multiply %297, %297 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %305 = index.divu %23, %281
        %306 = index.castu %38 : index to i32
        %307 = vector.load %alloc_12[%c0, %c8, %c2] : memref<1x15x15xi16>, vector<1x15xi16>
        linalg.yield %in_48 : i16
      } -> tensor<11x12x1xi16>
      %265 = tensor.empty() : tensor<1x15x15xi1>
      %mapped_44 = linalg.map ins(%14 : tensor<1x15x15xi1>) outs(%265 : tensor<1x15x15xi1>)
        (%in: i1) {
          %expanded_48 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<11x12x1xi16> into tensor<11x12x1x1xi16>
          %274 = arith.negf %cst_2 : f32
          %275 = vector.broadcast %c-13517_i16 : i16 to vector<12x12xi16>
          %276 = vector.outerproduct %19, %19, %275 {kind = #vector.kind<xor>} : vector<12xi16>, vector<12xi16>
          %277 = vector.load %alloc_20[%c0] : memref<1xi64>, vector<11x1xi64>
          %278 = arith.cmpf ueq, %55, %cst_1 : f32
          %279 = arith.floordivsi %c2131183909_i32, %c2131183909_i32 : i32
          %280 = math.ipowi %8, %4 : tensor<1x15x15xi1>
          %281 = arith.divsi %c2061977339_i32, %c501533197_i32 : i32
          %282 = index.sizeof
          %283 = arith.floordivsi %c1451825322_i32, %c2061977339_i32 : i32
          %284 = index.sizeof
          %285 = math.atan %0 : tensor<11x12x1xf32>
          memref.store %c-32462_i16, %alloc_7[%c0, %c0] : memref<11x1xi16>
          %286 = math.absf %2 : tensor<11x1xf16>
          %287 = vector.broadcast %c-32462_i16 : i16 to vector<12x12xi16>
          %288 = vector.outerproduct %19, %19, %287 {kind = #vector.kind<maxui>} : vector<12xi16>, vector<12xi16>
          %289 = math.tanh %9 : tensor<11x1xf16>
          %290 = index.ceildivu %c1, %c11
          %291 = arith.divsi %extracted, %extracted : i1
          %292 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%c7, %32, %26, %61)
          %293 = vector.broadcast %55 : f32 to vector<11xf32>
          %294 = vector.multi_reduction <minf>, %43, %293 [1] : vector<11x1xf32> to vector<11xf32>
          %295 = vector.broadcast %c271623502_i64 : i64 to vector<11x12xi64>
          %296 = vector.multi_reduction <and>, %28, %295 [2] : vector<11x12x1xi64> to vector<11x12xi64>
          %297 = arith.shli %false, %in : i1
          %298 = arith.muli %extracted, %false : i1
          %299 = arith.floordivsi %c1_i16, %c1_i16 : i16
          %300 = index.maxu %c7, %c9
          %301 = vector.matrix_multiply %293, %293 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
          %302 = vector.reduction <mul>, %19 : vector<12xi16> into i16
          %303 = arith.ceildivsi %c1_i16, %c-13517_i16 : i16
          %false_49 = index.bool.constant false
          %304 = math.ipowi %4, %14 : tensor<1x15x15xi1>
          %305 = math.atan2 %16, %2 : tensor<11x1xf16>
          %306 = vector.broadcast %cst_1 : f32 to vector<11x11xf32>
          %307 = vector.outerproduct %293, %293, %306 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
          %false_50 = arith.constant false
          linalg.yield %false_50 : i1
        }
      %266 = math.log10 %5 : tensor<11x1xf32>
      %267 = math.cttz %13 : tensor<11x12x1xi32>
      %268 = math.cos %2 : tensor<11x1xf16>
      %alloc_45 = memref.alloc() : memref<11x1xi64>
      memref.tensor_store %7, %alloc_45 : memref<11x1xi64>
      %269 = bufferization.clone %alloc_8 : memref<11x1xi1> to memref<11x1xi1>
      %true = index.bool.constant true
      %270 = index.floordivs %c7, %26
      %271 = math.rsqrt %2 : tensor<11x1xf16>
      %272 = tensor.empty() : tensor<11x12x1xi16>
      %mapped_46 = linalg.map ins(%6, %alloc_18, %6 : tensor<11x12x1xi16>, memref<11x12x1xi16>, tensor<11x12x1xi16>) outs(%272 : tensor<11x12x1xi16>)
        (%in: i16, %in_48: i16, %in_49: i16) {
          %274 = arith.remui %c-32462_i16, %in_48 : i16
          %alloc_50 = memref.alloc() : memref<1x12xf16>
          %275 = tensor.empty() : tensor<11x12xf16>
          %276 = linalg.matmul ins(%16, %alloc_50 : tensor<11x1xf16>, memref<1x12xf16>) outs(%275 : tensor<11x12xf16>) -> tensor<11x12xf16>
          %277 = vector.broadcast %cst : f32 to vector<11x1xf32>
          %278 = vector.fma %277, %277, %27 : vector<11x1xf32>
          %279 = index.floordivs %40, %c15
          %280 = arith.muli %true, %false : i1
          memref.store %c-13517_i16, %alloc_6[%c0, %c4] : memref<1x15xi16>
          %281 = arith.ceildivsi %extracted, %true : i1
          %inserted_51 = tensor.insert %c12600_i16 into %6[%c4, %c7, %c0] : tensor<11x12x1xi16>
          %inserted_52 = tensor.insert %cst_0 into %12[%c0, %c13, %c1] : tensor<1x15x15xf16>
          %282 = index.add %c0, %c0
          %283 = vector.broadcast %c-32462_i16 : i16 to vector<i16>
          vector.transfer_write %283, %alloc_19[%38, %c14] : vector<i16>, memref<15x1xi16>
          %284 = arith.divsi %c1_i16, %c1_i16 : i16
          %285 = math.tanh %2 : tensor<11x1xf16>
          %286 = arith.shrui %false, %extracted : i1
          %287 = index.sub %282, %c14
          %extracted_53 = tensor.extract %7[%c10, %c0] : tensor<11x1xi64>
          %288 = index.add %270, %287
          %289 = math.absi %10 : tensor<1x15xi1>
          %290 = bufferization.clone %alloc_5 : memref<11x1xi32> to memref<11x1xi32>
          %291 = vector.reduction <minsi>, %19 : vector<12xi16> into i16
          %292 = math.atan %17 : tensor<11x1xf16>
          %293 = vector.extract_strided_slice %43 {offsets = [9], sizes = [1], strides = [1]} : vector<11x1xf32> to vector<1x1xf32>
          %294 = math.atan %12 : tensor<1x15x15xf16>
          %295 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
          %296 = vector.reduction <maxsi>, %295 : vector<1xi16> into i16
          %297 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
          %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<11x1xi64> into tensor<11xi64>
          %298 = math.exp %5 : tensor<11x1xf32>
          %299 = vector.load %alloc_12[%c0, %c1, %c13] : memref<1x15x15xi16>, vector<1x15xi16>
          %rank_54 = tensor.rank %14 : tensor<1x15x15xi1>
          %expanded_55 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<1x15x15xf16> into tensor<1x15x15x1xf16>
          %300 = index.floordivs %c8, %287
          %c1_i16_56 = arith.constant 1 : i16
          linalg.yield %c1_i16_56 : i16
        }
      %273 = index.sizeof
      %false_47 = index.bool.constant false
      vector.print %27 : vector<11x1xf32>
    }
    %66 = index.castu %c8 : index to i32
    %67 = arith.negf %cst_3 : f16
    %68 = arith.ori %c2131183909_i32, %c1137689696_i32 : i32
    %69 = vector.load %alloc_16[%c0, %c1] : memref<1x15xi32>, vector<1x15x15xi32>
    %70 = affine.max affine_map<(d0, d1) -> (d0 mod 32, d1)>(%63, %c7)
    %71 = arith.cmpf oeq, %cst, %cst_1 : f32
    %72 = vector.load %alloc[%c0, %c11] : memref<1x15xi16>, vector<1x15x15xi16>
    %73 = arith.remui %c271623502_i64, %c782217666_i64 : i64
    %74 = math.powf %55, %cst_2 : f32
    %75 = math.expm1 %9 : tensor<11x1xf16>
    %76 = vector.broadcast %c12600_i16 : i16 to vector<11x15xi16>
    %77 = vector.transfer_write %76, %6[%32, %c8, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<11x15xi16>, tensor<11x12x1xi16>
    %78 = arith.remf %55, %cst_2 : f32
    %79 = vector.broadcast %c-13517_i16 : i16 to vector<1x12xi16>
    %80 = vector.transfer_write %79, %15[%c11, %c14, %38] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x12xi16>, tensor<11x12x1xi16>
    %81 = arith.subi %c271623502_i64, %c271623502_i64 : i64
    %82 = bufferization.clone %alloc_11 : memref<1x15xi16> to memref<1x15xi16>
    %83 = math.log %12 : tensor<1x15x15xf16>
    %84 = memref.atomic_rmw maxu %c2131183909_i32, %alloc_5[%c10, %c0] : (i32, memref<11x1xi32>) -> i32
    %85 = arith.divsi %c-13517_i16, %c1_i16 : i16
    %inserted = tensor.insert %extracted into %4[%c0, %c9, %c5] : tensor<1x15x15xi1>
    %86 = vector.broadcast %c6 : index to vector<15xindex>
    %87 = vector.broadcast %false : i1 to vector<15xi1>
    %88 = vector.broadcast %c-13517_i16 : i16 to vector<15xi16>
    vector.scatter %alloc_13[%c9, %c0] [%86], %87, %88 : memref<11x1xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
    %89 = arith.andi %c-13517_i16, %c-13517_i16 : i16
    %90 = arith.minsi %c-32462_i16, %c-32462_i16 : i16
    %91 = math.log2 %cst_3 : f16
    %expanded = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<1x15x15xf16> into tensor<1x15x15x1xf16>
    %rank = tensor.rank %3 : tensor<1x15xf32>
    %92 = index.castu %63 : index to i32
    %93 = arith.addf %55, %55 : f32
    %94 = arith.cmpf uno, %55, %55 : f32
    %expanded_22 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<11x12x1xi32> into tensor<11x12x1x1xi32>
    %95 = math.atan2 %0, %0 : tensor<11x12x1xf32>
    %96 = arith.floordivsi %c2061977339_i32, %c1451825322_i32 : i32
    %97 = tensor.empty() : tensor<12xi16>
    %98 = tensor.empty() : tensor<11xi16>
    %alloc_23 = memref.alloc() : memref<1xi16>
    %99 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%97, %98, %alloc_23 : tensor<12xi16>, tensor<11xi16>, memref<1xi16>) outs(%15 : tensor<11x12x1xi16>) {
    ^bb0(%in: i16, %in_44: i16, %in_45: i16, %out: i16):
      %262 = arith.negf %55 : f32
      bufferization.dealloc_tensor %3 : tensor<1x15xf32>
      %263 = index.divu %c10, %c4
      affine.for %arg3 = 0 to 78 {
      }
      %false_46 = index.bool.constant false
      %264 = math.absf %5 : tensor<11x1xf32>
      %265 = math.rsqrt %12 : tensor<1x15x15xf16>
      %266 = scf.if %false_46 -> (i16) {
        %293 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xi16> to vector<1x12xi16>
        %294 = index.divs %63, %c15
        %295 = vector.extract_strided_slice %72 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15x15xi16> to vector<1x15x15xi16>
        %296 = memref.load %alloc_14[%c0, %c2] : memref<1x15xf32>
        %297 = math.ipowi %out, %c-32462_i16 : i16
        %298 = math.tan %16 : tensor<11x1xf16>
        memref.store %in_44, %alloc_11[%c0, %c6] : memref<1x15xi16>
        %299 = index.floordivs %c11, %c14
        scf.yield %c1_i16 : i16
      } else {
        %293 = math.cos %12 : tensor<1x15x15xf16>
        %294 = math.floor %cst_3 : f16
        bufferization.dealloc_tensor %14 : tensor<1x15x15xi1>
        %295 = vector.splat %61 : vector<1x15x15xindex>
        %296 = vector.load %alloc[%c0, %c12] : memref<1x15xi16>, vector<11x12x1xi16>
        %297 = vector.broadcast %out : i16 to vector<i16>
        %298 = vector.transfer_write %297, %6[%c13, %c4, %c3] : vector<i16>, tensor<11x12x1xi16>
        bufferization.dealloc_tensor %6 : tensor<11x12x1xi16>
        %cast_51 = tensor.cast %7 : tensor<11x1xi64> to tensor<?x?xi64>
        scf.yield %c-32462_i16 : i16
      }
      %267 = arith.remf %cst_0, %cst_3 : f16
      %268 = scf.index_switch %38 -> vector<11x12x1xi16> 
      case 1 {
        %293 = math.absf %3 : tensor<1x15xf32>
        %294 = affine.min affine_map<(d0, d1) -> (d1 - 2, d1)>(%c4, %32)
        %295 = index.sub %c9, %63
        %296 = math.tan %17 : tensor<11x1xf16>
        %297 = math.log1p %expanded : tensor<1x15x15x1xf16>
        %298 = vector.broadcast %55 : f32 to vector<1xf32>
        %299 = vector.insert %298, %43 [9] : vector<1xf32> into vector<11x1xf32>
        %300 = arith.addi %c1451825322_i32, %c2131183909_i32 : i32
        %301 = arith.remf %cst, %cst_2 : f32
        %302 = arith.remf %55, %55 : f32
        %303 = math.round %16 : tensor<11x1xf16>
        %304 = affine.apply affine_map<(d0) -> (0)>(%40)
        %305 = vector.load %alloc_13[%c2, %c0] : memref<11x1xi16>, vector<1x15xi16>
        %306 = index.floordivs %63, %c3
        %false_51 = index.bool.constant false
        %rank_52 = tensor.rank %1 : tensor<11x1xi64>
        memref.assume_alignment %alloc_17, 8 : memref<11x12x1xf16>
        %307 = vector.broadcast %in_45 : i16 to vector<11x12x1xi16>
        scf.yield %307 : vector<11x12x1xi16>
      }
      case 2 {
        %293 = math.sqrt %17 : tensor<11x1xf16>
        %294 = arith.remf %cst, %55 : f32
        %295 = math.absf %5 : tensor<11x1xf32>
        %296 = arith.negf %cst_3 : f16
        %297 = math.ctlz %4 : tensor<1x15x15xi1>
        %298 = arith.negf %cst : f32
        %299 = vector.broadcast %in_44 : i16 to vector<i16>
        %300 = vector.transfer_write %299, %6[%c11, %61, %47] : vector<i16>, tensor<11x12x1xi16>
        %inserted_51 = tensor.insert %c2131183909_i32 into %13[%c1, %c10, %c0] : tensor<11x12x1xi32>
        %301 = index.floordivs %c5, %rank
        %302 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3)>(%61, %301, %c13, %61)
        %303 = math.ipowi %1, %1 : tensor<11x1xi64>
        %304 = arith.remf %55, %cst : f32
        %305 = index.divu %23, %301
        %306 = arith.shli %c271623502_i64, %c271623502_i64 : i64
        %307 = index.sizeof
        %308 = memref.load %alloc_9[%c0, %c12, %c11] : memref<1x15x15xi16>
        %309 = vector.broadcast %c-13517_i16 : i16 to vector<11x12x1xi16>
        scf.yield %309 : vector<11x12x1xi16>
      }
      case 3 {
        %293 = math.ipowi %extracted, %false_46 : i1
        %294 = arith.xori %in, %c1_i16 : i16
        %295 = vector.broadcast %c271623502_i64 : i64 to vector<1xi64>
        %296 = vector.transfer_write %295, %1[%c7, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, tensor<11x1xi64>
        %297 = math.exp %3 : tensor<1x15xf32>
        %298 = arith.addf %cst_3, %cst_0 : f16
        %299 = math.fpowi %cst_3, %c1137689696_i32 : f16, i32
        %300 = math.log1p %9 : tensor<11x1xf16>
        %301 = arith.minsi %c271623502_i64, %c271623502_i64 : i64
        %302 = math.ctlz %4 : tensor<1x15x15xi1>
        %303 = vector.broadcast %266 : i16 to vector<1xi16>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %79, %303 {inclusive = false, reduction_dim = 1 : i64} : vector<1x12xi16>, vector<1xi16>
        %304 = vector.broadcast %c782217666_i64 : i64 to vector<11xi64>
        %305 = vector.broadcast %false_46 : i1 to vector<11xi1>
        %306 = vector.maskedload %alloc_20[%c0], %305, %304 : memref<1xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %307 = bufferization.clone %82 : memref<1x15xi16> to memref<1x15xi16>
        %308 = vector.matrix_multiply %306, %304 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        affine.store %out, %alloc_4[%c12, %c1] : memref<1x15xi16>
        %309 = vector.broadcast %cst_2 : f32 to vector<1x15xf32>
        %310 = vector.fma %309, %309, %309 : vector<1x15xf32>
        %311 = index.add %c3, %c14
        %312 = vector.broadcast %in : i16 to vector<11x12x1xi16>
        scf.yield %312 : vector<11x12x1xi16>
      }
      default {
        %293 = arith.minui %false, %false : i1
        %294 = math.cos %55 : f32
        %295 = index.sizeof
        %alloc_51 = memref.alloc() : memref<11x12x1xi32>
        %296 = index.mul %c6, %c4
        %297 = math.round %3 : tensor<1x15xf32>
        %inserted_52 = tensor.insert %c1137689696_i32 into %expanded_22[%c1, %c6, %c0, %c0] : tensor<11x12x1x1xi32>
        %298 = arith.muli %c1_i16, %c12600_i16 : i16
        %299 = math.tanh %5 : tensor<11x1xf32>
        %300 = arith.minui %in_44, %c1_i16 : i16
        %301 = math.sqrt %9 : tensor<11x1xf16>
        %302 = bufferization.clone %alloc_12 : memref<1x15x15xi16> to memref<1x15x15xi16>
        %303 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %304 = vector.broadcast %c0 : index to vector<1xindex>
        %305 = vector.broadcast %false_46 : i1 to vector<1xi1>
        vector.scatter %alloc_7[%c7, %c0] [%304], %305, %303 : memref<11x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %306 = math.log1p %cst : f32
        %307 = math.log10 %3 : tensor<1x15xf32>
        %308 = vector.broadcast %266 : i16 to vector<11x12x1xi16>
        scf.yield %308 : vector<11x12x1xi16>
      }
      memref.store %in_44, %alloc[%c0, %c8] : memref<1x15xi16>
      memref.copy %alloc_15, %alloc_4 : memref<1x15xi16> to memref<1x15xi16>
      %269 = math.ipowi %6, %6 : tensor<11x12x1xi16>
      %270 = memref.atomic_rmw minu %out, %alloc_13[%c1, %c0] : (i16, memref<11x1xi16>) -> i16
      %271 = vector.broadcast %c-13517_i16 : i16 to vector<15x15xi16>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %76, %76, %271 : vector<11x15xi16>, vector<11x15xi16> into vector<15x15xi16>
      %273 = math.tan %9 : tensor<11x1xf16>
      %274 = vector.broadcast %cst : f32 to vector<1x15x15xf32>
      %275 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
      %276 = tensor.empty() : tensor<15x15xi16>
      %277 = tensor.empty() : tensor<1x15xi16>
      %278 = linalg.matmul ins(%24, %276 : tensor<1x15xi16>, tensor<15x15xi16>) outs(%277 : tensor<1x15xi16>) -> tensor<1x15xi16>
      %279 = math.cttz %6 : tensor<11x12x1xi16>
      %280 = math.ipowi %in_45, %c1_i16 : i16
      %281 = vector.broadcast %cst_1 : f32 to vector<1x15x15xf32>
      %282 = vector.fma %281, %281, %274 : vector<1x15x15xf32>
      %alloc_47 = memref.alloc() : memref<11x12x1xi1>
      %283 = vector.broadcast %cst_2 : f32 to vector<11xf32>
      %dest_48, %accumulated_value_49 = vector.scan <add>, %27, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<11x1xf32>, vector<11xf32>
      %284 = math.rsqrt %5 : tensor<11x1xf32>
      %285 = affine.load %alloc_4[%c8, %c10] : memref<1x15xi16>
      %286 = math.tanh %cst : f32
      %287 = vector.broadcast %cst_0 : f16 to vector<1xf16>
      %288 = vector.broadcast %false : i1 to vector<1xi1>
      %289 = vector.maskedload %62[%c8, %c0], %288, %287 : memref<11x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      %inserted_50 = tensor.insert %false into %4[%c0, %c13, %c10] : tensor<1x15x15xi1>
      %290 = index.floordivs %c14, %26
      %291 = math.log10 %cst_0 : f16
      %292 = index.floordivs %c11, %c12
      linalg.yield %out : i16
    } -> tensor<11x12x1xi16>
    %100 = vector.load %56[%c0, %c1, %c0] : memref<1x15x15xi16>, vector<1x15x15xi16>
    %101 = vector.reduction <maxsi>, %19 : vector<12xi16> into i16
    %102 = math.log10 %cst_0 : f16
    %103 = arith.andi %c1137689696_i32, %c1137689696_i32 : i32
    %104 = arith.cmpf true, %cst, %cst_2 : f32
    %alloca = memref.alloca() : memref<1x15x15xi32>
    %105 = affine.load %alloc_16[%c10, %c1] : memref<1x15xi32>
    scf.if %false {
      %262 = arith.divsi %c1137689696_i32, %c501533197_i32 : i32
      %263 = vector.bitcast %41 : vector<6x1xf32> to vector<6x1xf32>
      %264 = vector.extract %28[6] : vector<11x12x1xi64>
      %265 = scf.if %extracted -> (memref<11x12x1xf16>) {
        %272 = arith.floordivsi %c12600_i16, %c-13517_i16 : i16
        %273 = math.ceil %cst_3 : f16
        %274 = affine.max affine_map<(d0, d1) -> (d1 * 32)>(%c12, %c4)
        %275 = math.round %9 : tensor<11x1xf16>
        %276 = arith.ceildivsi %c1137689696_i32, %c2061977339_i32 : i32
        %277 = math.cttz %8 : tensor<1x15x15xi1>
        %dest_45, %accumulated_value_46 = vector.scan <maxsi>, %39, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<1x12x1xi64>, vector<12x1xi64>
        %278 = arith.divui %c782217666_i64, %c271623502_i64 : i64
        scf.yield %alloc_17 : memref<11x12x1xf16>
      } else {
        %272 = arith.divsi %c782217666_i64, %c271623502_i64 : i64
        %273 = arith.addf %cst_3, %cst_0 : f16
        %274 = index.floordivs %c8, %c11
        %275 = vector.shuffle %263, %263 [1, 2, 5, 6, 7, 9] : vector<6x1xf32>, vector<6x1xf32>
        %276 = vector.broadcast %c15 : index to vector<12xindex>
        %277 = vector.broadcast %extracted : i1 to vector<12xi1>
        %278 = vector.broadcast %cst_3 : f16 to vector<12xf16>
        vector.scatter %alloc_17[%c0, %c3, %c0] [%276], %277, %278 : memref<11x12x1xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %279 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %rank_45 = tensor.rank %1 : tensor<11x1xi64>
        %extracted_46 = tensor.extract %11[%c0, %c0] : tensor<1x15xi64>
        scf.yield %alloc_17 : memref<11x12x1xf16>
      }
      %266 = vector.broadcast %extracted : i1 to vector<12xi1>
      %267 = vector.maskedload %alloc_18[%c10, %c4, %c0], %266, %19 : memref<11x12x1xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
      %alloc_44 = memref.alloc() : memref<15x11xf32>
      %268 = tensor.empty() : tensor<1x11xf32>
      %269 = linalg.matmul ins(%3, %alloc_44 : tensor<1x15xf32>, memref<15x11xf32>) outs(%268 : tensor<1x11xf32>) -> tensor<1x11xf32>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%6 : tensor<11x12x1xi16>) {
      ^bb0(%out: i16):
        %272 = math.sqrt %2 : tensor<11x1xf16>
        %273 = vector.broadcast %c-13517_i16 : i16 to vector<1x15x11xi16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %72, %76, %273 : vector<1x15x15xi16>, vector<11x15xi16> into vector<1x15x11xi16>
        %275 = vector.multi_reduction <and>, %19, %c1_i16 [0] : vector<12xi16> to i16
        %276 = arith.shrui %c2131183909_i32, %c501533197_i32 : i32
        %277 = index.divs %rank, %70
        %278 = bufferization.clone %alloc : memref<1x15xi16> to memref<1x15xi16>
        %279 = math.ipowi %extracted, %extracted : i1
        %280 = math.ipowi %21, %22 : tensor<i64>
        %281 = math.sqrt %2 : tensor<11x1xf16>
        %282 = tensor.empty() : tensor<11x15xi64>
        %283 = linalg.matmul ins(%1, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%282 : tensor<11x15xi64>) -> tensor<11x15xi64>
        %284 = vector.broadcast %63 : index to vector<12xindex>
        vector.scatter %alloc_4[%c0, %c8] [%284], %266, %19 : memref<1x15xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %285 = math.sqrt %0 : tensor<11x12x1xf32>
        bufferization.dealloc_tensor %10 : tensor<1x15xi1>
        %286 = index.sizeof
        %287 = arith.muli %c2061977339_i32, %105 : i32
        %288 = math.ceil %3 : tensor<1x15xf32>
        %289 = arith.negf %cst_1 : f32
        %290 = vector.matrix_multiply %19, %267 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %291 = index.add %63, %26
        %292 = arith.xori %c2061977339_i32, %c1451825322_i32 : i32
        %293 = arith.negf %cst : f32
        %294 = arith.shrui %c1451825322_i32, %c501533197_i32 : i32
        %295 = arith.muli %c1_i16, %c12600_i16 : i16
        %296 = arith.remf %cst, %55 : f32
        memref.copy %alloc_12, %56 : memref<1x15x15xi16> to memref<1x15x15xi16>
        %297 = math.tanh %5 : tensor<11x1xf32>
        %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<1x15xf32> into tensor<15xf32>
        %298 = math.cos %cst_0 : f16
        %299 = arith.remui %c-32462_i16, %c1_i16 : i16
        %300 = math.round %2 : tensor<11x1xf16>
        %301 = math.rsqrt %3 : tensor<1x15xf32>
        vector.print %27 : vector<11x1xf32>
        linalg.yield %275 : i16
      } -> tensor<11x12x1xi16>
      %271 = arith.muli %c2131183909_i32, %c1137689696_i32 : i32
    } else {
      %262 = vector.load %alloc_4[%c0, %c1] : memref<1x15xi16>, vector<1x15xi16>
      %263 = math.sqrt %expanded : tensor<1x15x15x1xf16>
      %264 = vector.broadcast %c1451825322_i32 : i32 to vector<15x15xi32>
      %265 = vector.multi_reduction <minui>, %69, %264 [0] : vector<1x15x15xi32> to vector<15x15xi32>
      bufferization.dealloc_tensor %6 : tensor<11x12x1xi16>
      %266 = bufferization.to_memref %22 : memref<i64>
      %267 = arith.subi %c2061977339_i32, %c1137689696_i32 : i32
      %c1_i16_44 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %268 = vector.transfer_read %36[%c1, %38], %c0_i16 : memref<11x1xi16>, vector<i16>
      %269 = arith.divsi %extracted, %extracted : i1
    }
    %106 = vector.broadcast %cst : f32 to vector<1xf32>
    %dest_24, %accumulated_value_25 = vector.scan <maxf>, %27, %106 {inclusive = false, reduction_dim = 0 : i64} : vector<11x1xf32>, vector<1xf32>
    %107 = vector.shuffle %19, %19 [1, 2, 6, 10, 18, 19, 20, 22, 23] : vector<12xi16>, vector<12xi16>
    %108 = memref.atomic_rmw maxu %c-32462_i16, %36[%c6, %c0] : (i16, memref<11x1xi16>) -> i16
    %109 = affine.load %alloc_17[%c5, %c2, %c3] : memref<11x12x1xf16>
    %110 = index.casts %c1137689696_i32 : i32 to index
    %111 = math.log10 %cst : f32
    %112 = memref.load %alloc_18[%c3, %c0, %c0] : memref<11x12x1xi16>
    %113 = affine.load %82[%c3, %c12] : memref<1x15xi16>
    %114 = index.mul %110, %47
    %115 = arith.addf %cst_1, %cst : f32
    %116 = vector.broadcast %109 : f16 to vector<1x15xf16>
    %117 = arith.subi %false, %false : i1
    %118 = vector.broadcast %c1_i16 : i16 to vector<12x12xi16>
    %119 = vector.outerproduct %19, %19, %118 {kind = #vector.kind<minsi>} : vector<12xi16>, vector<12xi16>
    %120 = math.round %55 : f32
    %121 = index.divu %61, %c14
    %122 = index.divu %110, %c15
    %123 = vector.bitcast %116 : vector<1x15xf16> to vector<1x15xi16>
    %124 = vector.broadcast %105 : i32 to vector<15xi32>
    %125 = vector.broadcast %false : i1 to vector<15xi1>
    %126 = vector.maskedload %alloc_16[%c0, %c0], %125, %124 : memref<1x15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
    %127 = math.powf %9, %9 : tensor<11x1xf16>
    %expanded_26 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<1x15x15xi1> into tensor<1x15x15x1xi1>
    %128 = math.rsqrt %cst_2 : f32
    %129 = vector.load %alloc_14[%c0, %c6] : memref<1x15xf32>, vector<1x15x15xf32>
    %130 = memref.load %alloc_14[%c0, %c13] : memref<1x15xf32>
    memref.assume_alignment %alloc_10, 16 : memref<1x15x15xi16>
    %131 = index.sub %c5, %c8
    %132 = math.cttz %c-13517_i16 : i16
    %133 = memref.alloca_scope  -> (f16) {
      %262 = index.floordivs %32, %c11
      %263 = math.ipowi %10, %10 : tensor<1x15xi1>
      %264 = math.ctlz %105 : i32
      %265 = index.divu %c10, %c0
      %266 = math.copysign %3, %3 : tensor<1x15xf32>
      %267 = index.sizeof
      %268 = arith.subi %c-13517_i16, %c12600_i16 : i16
      %269 = math.atan %cst_3 : f16
      %270 = arith.andi %c-32462_i16, %c12600_i16 : i16
      %271 = vector.reduction <add>, %19 : vector<12xi16> into i16
      %inserted_44 = tensor.insert %extracted into %14[%c0, %c10, %c5] : tensor<1x15x15xi1>
      memref.copy %alloc_7, %36 : memref<11x1xi16> to memref<11x1xi16>
      %272 = index.divu %23, %262
      %273 = vector.insert %c2131183909_i32, %126 [6] : i32 into vector<15xi32>
      %274 = vector.broadcast %cst_2 : f32 to vector<12xf32>
      %275 = vector.broadcast %extracted : i1 to vector<12xi1>
      %276 = vector.maskedload %alloc_14[%c0, %c10], %275, %274 : memref<1x15xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
      %277 = index.maxu %38, %265
      %278 = math.cttz %113 : i16
      %279 = math.ctlz %11 : tensor<1x15xi64>
      %280 = math.ctlz %extracted : i1
      %extracted_45 = tensor.extract %9[%c10, %c0] : tensor<11x1xf16>
      %281 = arith.addi %c1137689696_i32, %105 : i32
      %282 = math.ctlz %extracted : i1
      %283 = arith.floordivsi %c501533197_i32, %c1451825322_i32 : i32
      %284 = arith.shrui %c2131183909_i32, %c2131183909_i32 : i32
      %inserted_46 = tensor.insert %false into %4[%c0, %c14, %c3] : tensor<1x15x15xi1>
      %285 = math.cos %cst_3 : f16
      %286 = arith.remf %cst_2, %55 : f32
      %287 = math.sqrt %55 : f32
      %288 = math.ceil %5 : tensor<11x1xf32>
      scf.execute_region {
        %290 = tensor.empty() : tensor<1x11xf16>
        %291 = tensor.empty() : tensor<11x11xf16>
        %292 = linalg.matmul ins(%2, %290 : tensor<11x1xf16>, tensor<1x11xf16>) outs(%291 : tensor<11x11xf16>) -> tensor<11x11xf16>
        affine.store %c12600_i16, %82[%c2, %c6] : memref<1x15xi16>
        %293 = math.sqrt %17 : tensor<11x1xf16>
        %294 = vector.transpose %39, [1, 2, 0] : vector<1x12x1xi64> to vector<12x1x1xi64>
        %295 = vector.multi_reduction <maxsi>, %125, %extracted [0] : vector<15xi1> to i1
        %296 = math.round %9 : tensor<11x1xf16>
        %297 = math.absi %c2131183909_i32 : i32
        %298 = arith.minf %109, %extracted_45 : f16
        %299 = math.log1p %12 : tensor<1x15x15xf16>
        %300 = vector.bitcast %39 : vector<1x12x1xi64> to vector<1x12x1xi64>
        %301 = bufferization.clone %alloc_17 : memref<11x12x1xf16> to memref<11x12x1xf16>
        %alloca_48 = memref.alloca() : memref<1x15x15xf32>
        %302 = arith.shli %c2061977339_i32, %c501533197_i32 : i32
        %303 = arith.shrsi %c271623502_i64, %c271623502_i64 : i64
        %304 = arith.remui %c271623502_i64, %c271623502_i64 : i64
        %305 = math.rsqrt %0 : tensor<11x12x1xf32>
        scf.yield
      }
      %alloc_47 = memref.alloc() : memref<11x12x1xi64>
      %289 = math.sqrt %55 : f32
      memref.alloca_scope.return %cst_3 : f16
    }
    %alloc_27 = memref.alloc() : memref<1x15x15xi1>
    memref.tensor_store %4, %alloc_27 : memref<1x15x15xi1>
    %134 = vector.matrix_multiply %124, %124 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
    %135 = index.mul %c5, %122
    %136 = vector.matrix_multiply %125, %125 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
    %137 = affine.max affine_map<(d0) -> (0, 0)>(%32)
    %138 = math.tanh %3 : tensor<1x15xf32>
    %rank_28 = tensor.rank %10 : tensor<1x15xi1>
    %139 = vector.broadcast %113 : i16 to vector<15xi16>
    %140 = vector.maskedload %alloc_19[%c7, %c0], %125, %139 : memref<15x1xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
    %141 = math.exp2 %109 : f16
    %142 = tensor.empty() : tensor<11x1xi32>
    %143 = math.fpowi %2, %142 : tensor<11x1xf16>, tensor<11x1xi32>
    %144 = index.divs %c2, %c2
    %145 = arith.andi %false, %false : i1
    %146 = math.cos %109 : f16
    %147 = arith.addf %55, %cst : f32
    affine.store %cst_3, %alloc_17[%c1, %c0, %c5] : memref<11x12x1xf16>
    memref.store %133, %alloc_17[%c8, %c0, %c0] : memref<11x12x1xf16>
    %148 = arith.addf %133, %133 : f16
    %149 = arith.floordivsi %105, %c2061977339_i32 : i32
    %150 = math.log10 %12 : tensor<1x15x15xf16>
    %151 = math.cttz %c2131183909_i32 : i32
    %152 = vector.extract_strided_slice %72 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15x15xi16> to vector<1x15x15xi16>
    %153 = arith.xori %c1_i16, %c1_i16 : i16
    %154 = vector.shuffle %124, %134 [2, 4, 7, 9, 10, 12, 13, 14] : vector<15xi32>, vector<1xi32>
    %155 = arith.maxsi %c-13517_i16, %c1_i16 : i16
    %156 = index.sizeof
    %157 = math.log %9 : tensor<11x1xf16>
    %158 = vector.broadcast %c2061977339_i32 : i32 to vector<15x15xi32>
    %159 = vector.outerproduct %124, %124, %158 {kind = #vector.kind<mul>} : vector<15xi32>, vector<15xi32>
    %generated = tensor.generate %c15, %rank_28, %rank {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %262 = index.floordivs %c5, %c11
      %263 = math.floor %133 : f16
      %264 = math.tanh %cst_3 : f16
      %265 = math.fpowi %2, %142 : tensor<11x1xf16>, tensor<11x1xi32>
      tensor.yield %c2131183909_i32 : i32
    } : tensor<?x?x?xi32>
    %160 = math.round %133 : f16
    %161 = vector.transpose %139, [0] : vector<15xi16> to vector<15xi16>
    %162 = math.cttz %6 : tensor<11x12x1xi16>
    %163 = vector.extract_strided_slice %41 {offsets = [4], sizes = [1], strides = [1]} : vector<6x1xf32> to vector<1x1xf32>
    %164 = arith.shrui %c-13517_i16, %c-13517_i16 : i16
    %165 = vector.broadcast %c271623502_i64 : i64 to vector<1x15x15xi64>
    %166 = index.sub %40, %c6
    %dest_29, %accumulated_value_30 = vector.scan <mul>, %72, %123 {inclusive = true, reduction_dim = 2 : i64} : vector<1x15x15xi16>, vector<1x15xi16>
    %167 = arith.shrui %false, %extracted : i1
    %168 = arith.remui %c271623502_i64, %c782217666_i64 : i64
    %169 = math.log10 %cst : f32
    %170 = bufferization.to_memref %expanded_22 : memref<11x12x1x1xi32>
    %alloc_31 = memref.alloc() : memref<11x1xi32>
    %171 = arith.muli %c2131183909_i32, %c2061977339_i32 : i32
    %172 = math.log10 %cst : f32
    %173 = math.round %3 : tensor<1x15xf32>
    %174 = math.cos %12 : tensor<1x15x15xf16>
    %175 = bufferization.clone %alloc_11 : memref<1x15xi16> to memref<1x15xi16>
    %rank_32 = tensor.rank %0 : tensor<11x12x1xf32>
    %176 = arith.andi %c271623502_i64, %c271623502_i64 : i64
    %177 = vector.load %alloc_16[%c0, %c0] : memref<1x15xi32>, vector<1x15x15xi32>
    %178 = arith.maxf %cst_2, %55 : f32
    %179 = math.ctlz %142 : tensor<11x1xi32>
    %180 = affine.load %170[%c7, %c13, %c12, %c2] : memref<11x12x1x1xi32>
    %181 = index.casts %122 : index to i32
    %cast_33 = tensor.cast %142 : tensor<11x1xi32> to tensor<?x?xi32>
    %182 = arith.remsi %180, %c2061977339_i32 : i32
    %183 = scf.index_switch %135 -> vector<1x15x15xi64> 
    case 1 {
      %262 = math.expm1 %expanded : tensor<1x15x15x1xf16>
      %collapsed = tensor.collapse_shape %expanded [[0, 1], [2, 3]] : tensor<1x15x15x1xf16> into tensor<15x15xf16>
      %263 = index.sizeof
      %264 = arith.shrui %c501533197_i32, %c501533197_i32 : i32
      %265 = math.rsqrt %16 : tensor<11x1xf16>
      %266 = memref.realloc %alloc_20 : memref<1xi64> to memref<1xi64>
      %267 = memref.atomic_rmw mins %113, %175[%c0, %c6] : (i16, memref<1x15xi16>) -> i16
      %268 = vector.broadcast %26 : index to vector<11xindex>
      %269 = vector.broadcast %extracted : i1 to vector<11xi1>
      %270 = vector.broadcast %c1_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_7[%c10, %c0] [%268], %269, %270 : memref<11x1xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %271 = arith.addf %cst_2, %cst_1 : f32
      %272 = arith.maxf %cst, %cst_1 : f32
      %273 = index.divs %61, %121
      %274 = index.floordivs %c5, %rank_32
      %275 = affine.if affine_set<(d0, d1, d2) : (d2 * -2048 >= 0, d2 ceildiv 64 >= 0, d2 ceildiv 64 == 0, d2 - 64 >= 0)>(%c14, %c15, %c7) -> memref<11x12x1xi32> {
        %281 = memref.atomic_rmw ori %c12600_i16, %alloc_19[%c5, %c0] : (i16, memref<15x1xi16>) -> i16
        %282 = vector.reduction <mul>, %126 : vector<15xi32> into i32
        %283 = arith.cmpf true, %cst, %cst : f32
        %alloca_44 = memref.alloca() : memref<11x1xf32>
        %284 = math.tanh %cst_0 : f16
        %285 = vector.shuffle %139, %139 [0, 2, 3, 5, 7, 8, 9, 10, 11, 14, 15, 16, 18, 19, 20, 21, 22, 23, 25] : vector<15xi16>, vector<15xi16>
        %286 = math.tanh %0 : tensor<11x12x1xf32>
        %rank_45 = tensor.rank %2 : tensor<11x1xf16>
        %alloc_46 = memref.alloc() : memref<11x12x1xi32>
        affine.yield %alloc_46 : memref<11x12x1xi32>
      } else {
        %cast_44 = tensor.cast %16 : tensor<11x1xf16> to tensor<?x?xf16>
        %281 = math.cos %5 : tensor<11x1xf32>
        %282 = math.round %cst_3 : f16
        %283 = math.cos %cst_0 : f16
        %284 = arith.cmpf oge, %cst_0, %cst_0 : f16
        %285 = affine.min affine_map<(d0, d1) -> (d1 + 8, d0)>(%110, %c4)
        %286 = math.atan2 %collapsed, %collapsed : tensor<15x15xf16>
        %287 = affine.load %alloc_19[%c4, %c6] : memref<15x1xi16>
        %alloc_45 = memref.alloc() : memref<11x12x1xi32>
        affine.yield %alloc_45 : memref<11x12x1xi32>
      }
      %276 = index.divu %c2, %26
      %277 = vector.broadcast %extracted : i1 to vector<11x12x1xi1>
      %278 = vector.broadcast %c1451825322_i32 : i32 to vector<11x12x1xi32>
      %279 = vector.gather %alloc_8[%276, %c6] [%278], %277, %277 : memref<11x1xi1>, vector<11x12x1xi32>, vector<11x12x1xi1>, vector<11x12x1xi1> into vector<11x12x1xi1>
      %280 = bufferization.clone %alloc_15 : memref<1x15xi16> to memref<1x15xi16>
      scf.yield %165 : vector<1x15x15xi64>
    }
    default {
      %262 = math.sqrt %2 : tensor<11x1xf16>
      %263 = index.casts %extracted : i1 to index
      %264 = vector.transpose %125, [0] : vector<15xi1> to vector<15xi1>
      %generated_44 = tensor.generate %c6, %rank, %263 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %275 = index.divu %32, %c3
        %276 = math.cos %55 : f32
        %277 = bufferization.to_memref %15 : memref<11x12x1xi16>
        %278 = math.round %cst_3 : f16
        tensor.yield %false : i1
      } : tensor<?x?x?xi1>
      %alloc_45 = memref.alloc() : memref<11x12x1xf32>
      %265 = vector.matrix_multiply %126, %126 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %from_elements = tensor.from_elements %cst_2, %55, %cst, %cst, %55, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst : tensor<11x1xf32>
      %266 = math.tanh %0 : tensor<11x12x1xf32>
      %267 = index.sizeof
      %268 = math.roundeven %9 : tensor<11x1xf16>
      %269 = index.add %40, %135
      %270 = vector.broadcast %113 : i16 to vector<1xi16>
      %271 = vector.maskedload %alloc_18[%c2, %c5, %c0], %136, %270 : memref<11x12x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %false_46 = index.bool.constant false
      %272 = math.round %from_elements : tensor<11x1xf32>
      %273 = arith.remf %cst_0, %109 : f16
      %274 = math.sqrt %17 : tensor<11x1xf16>
      scf.yield %165 : vector<1x15x15xi64>
    }
    %184 = math.round %cst_0 : f16
    %alloc_34 = memref.alloc() : memref<1x15xi16>
    %185 = scf.while (%arg3 = %163) : (vector<1x1xf32>) -> vector<1x1xf32> {
      %262 = arith.divsi %c501533197_i32, %c501533197_i32 : i32
      %generated_44 = tensor.generate %63, %40 {
      ^bb0(%arg4: index, %arg5: index):
        %270 = arith.muli %105, %180 : i32
        %271 = arith.minui %c271623502_i64, %c271623502_i64 : i64
        %272 = math.tanh %3 : tensor<1x15xf32>
        %273 = math.fma %55, %cst, %cst_2 : f32
        tensor.yield %133 : f16
      } : tensor<?x?xf16>
      %263 = arith.andi %c2131183909_i32, %105 : i32
      %264 = vector.broadcast %c6 : index to vector<11xindex>
      %265 = vector.broadcast %extracted : i1 to vector<11xi1>
      %266 = vector.broadcast %c12600_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_10[%c0, %c10, %c10] [%264], %265, %266 : memref<1x15x15xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %267 = math.round %5 : tensor<11x1xf32>
      %generated_45 = tensor.generate %23 {
      ^bb0(%arg4: index, %arg5: index):
        %270 = arith.ori %extracted, %false : i1
        %271 = vector.broadcast %extracted : i1 to vector<15x15xi1>
        %272 = vector.outerproduct %125, %125, %271 {kind = #vector.kind<and>} : vector<15xi1>, vector<15xi1>
        %273 = math.copysign %133, %cst_0 : f16
        %274 = index.divs %23, %135
        tensor.yield %109 : f16
      } : tensor<?x15xf16>
      %268 = vector.broadcast %144 : index to vector<15xindex>
      vector.scatter %alloc_4[%c0, %c6] [%268], %125, %140 : memref<1x15xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
      %269 = index.mul %70, %rank_28
      scf.condition(%false) %163 : vector<1x1xf32>
    } do {
    ^bb0(%arg3: vector<1x1xf32>):
      %262 = math.tanh %9 : tensor<11x1xf16>
      %263 = arith.shrui %false, %extracted : i1
      %264 = arith.muli %c1451825322_i32, %c1137689696_i32 : i32
      %265 = arith.remui %c1451825322_i32, %c1451825322_i32 : i32
      %266 = index.sizeof
      %267 = arith.cmpi sge, %c2131183909_i32, %180 : i32
      %268 = vector.multi_reduction <or>, %123, %123 [] : vector<1x15xi16> to vector<1x15xi16>
      %269 = math.ctlz %4 : tensor<1x15x15xi1>
      %270 = arith.divui %c1451825322_i32, %c501533197_i32 : i32
      %rank_44 = tensor.rank %14 : tensor<1x15x15xi1>
      %271 = tensor.empty() : tensor<11x15xi64>
      %272 = linalg.matmul ins(%7, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%271 : tensor<11x15xi64>) -> tensor<11x15xi64>
      %273 = math.sqrt %5 : tensor<11x1xf32>
      %274 = index.sizeof
      %275 = arith.shrui %false, %extracted : i1
      %c1_i16_45 = arith.constant 1 : i16
      %276 = vector.transfer_read %56[%131, %c15, %121], %c1_i16_45 : memref<1x15x15xi16>, vector<i16>
      %277 = math.log10 %2 : tensor<11x1xf16>
      scf.yield %163 : vector<1x1xf32>
    }
    %186 = arith.maxf %cst_0, %109 : f16
    scf.execute_region {
      %262 = arith.andi %false, %false : i1
      %263 = scf.execute_region -> vector<1x15x15xi32> {
        %278 = math.tanh %12 : tensor<1x15x15xf16>
        memref.copy %56, %alloc_9 : memref<1x15x15xi16> to memref<1x15x15xi16>
        %279 = math.ceil %0 : tensor<11x12x1xf32>
        %rank_45 = tensor.rank %11 : tensor<1x15xi64>
        %280 = math.round %cst_1 : f32
        %281 = vector.multi_reduction <minui>, %100, %123 [2] : vector<1x15x15xi16> to vector<1x15xi16>
        %282 = math.tan %expanded : tensor<1x15x15x1xf16>
        %283 = math.cttz %7 : tensor<11x1xi64>
        %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<1x15xi64> into tensor<15xi64>
        memref.store %109, %alloc_17[%c8, %c4, %c0] : memref<11x12x1xf16>
        %extracted_46 = tensor.extract %expanded[%c0, %c14, %c10, %c0] : tensor<1x15x15x1xf16>
        %284 = math.log1p %cst : f32
        %285 = index.sub %c8, %c9
        %286 = math.atan2 %cst_3, %cst_3 : f16
        %287 = arith.xori %180, %180 : i32
        %extracted_47 = tensor.extract %1[%c4, %c0] : tensor<11x1xi64>
        scf.yield %177 : vector<1x15x15xi32>
      }
      %264 = index.floordivs %70, %c2
      %265 = vector.shuffle %139, %19 [1, 2, 5, 6, 7, 12, 13, 15, 16, 17, 18, 20, 22, 23, 26] : vector<15xi16>, vector<12xi16>
      %266 = math.ceil %9 : tensor<11x1xf16>
      %267 = tensor.empty() : tensor<1x15xi16>
      %mapped_44 = linalg.map ins(%alloc_15, %alloc_15, %alloc_6 : memref<1x15xi16>, memref<1x15xi16>, memref<1x15xi16>) outs(%267 : tensor<1x15xi16>)
        (%in: i16, %in_45: i16, %in_46: i16) {
          %278 = math.log %cst_1 : f32
          %279 = arith.shrui %in, %in_45 : i16
          %280 = index.floordivs %c14, %122
          %281 = arith.remui %c2131183909_i32, %c1137689696_i32 : i32
          %from_elements = tensor.from_elements %cst_2, %cst_1, %cst_1, %55, %cst_1, %55, %cst, %cst, %55, %cst_2, %cst_2 : tensor<11x1xf32>
          %282 = math.log10 %from_elements : tensor<11x1xf32>
          %283 = math.tanh %3 : tensor<1x15xf32>
          %extracted_47 = tensor.extract %14[%c0, %c0, %c10] : tensor<1x15x15xi1>
          %284 = math.round %2 : tensor<11x1xf16>
          %285 = math.expm1 %2 : tensor<11x1xf16>
          %286 = vector.multi_reduction <maxf>, %43, %cst_1 [0, 1] : vector<11x1xf32> to f32
          %287 = arith.shrsi %c-32462_i16, %in_46 : i16
          %288 = math.ceil %5 : tensor<11x1xf32>
          %289 = index.divs %c1, %114
          %expanded_48 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<11x1xi64> into tensor<11x1x1xi64>
          memref.tensor_store %2, %62 : memref<11x1xf16>
          %290 = arith.xori %c-13517_i16, %c12600_i16 : i16
          %291 = math.ctlz %1 : tensor<11x1xi64>
          %292 = index.sizeof
          %293 = vector.broadcast %cst_2 : f32 to vector<1x15xf32>
          %294 = vector.broadcast %false : i1 to vector<1x15xi1>
          %295 = vector.broadcast %105 : i32 to vector<1x15xi32>
          %296 = vector.gather %5[%61, %110] [%295], %294, %293 : tensor<11x1xf32>, vector<1x15xi32>, vector<1x15xi1>, vector<1x15xf32> into vector<1x15xf32>
          %297 = vector.extract_strided_slice %69 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15x15xi32> to vector<1x15x15xi32>
          %298 = arith.negf %286 : f32
          %299 = vector.load %56[%c0, %c4, %c10] : memref<1x15x15xi16>, vector<11x12x1xi16>
          %300 = arith.negf %55 : f32
          %301 = math.sqrt %cst_2 : f32
          %302 = arith.shrui %c1451825322_i32, %105 : i32
          %303 = arith.shrui %extracted_47, %extracted_47 : i1
          %extracted_49 = tensor.extract %15[%c5, %c9, %c0] : tensor<11x12x1xi16>
          %304 = arith.shrsi %c1_i16, %extracted_49 : i16
          %305 = vector.broadcast %c1451825322_i32 : i32 to vector<15x15xi32>
          %306 = vector.multi_reduction <maxsi>, %177, %305 [0] : vector<1x15x15xi32> to vector<15x15xi32>
          %307 = index.sizeof
          %308 = vector.splat %110 : vector<11x1xindex>
          %c1_i16_50 = arith.constant 1 : i16
          linalg.yield %c1_i16_50 : i16
        }
      %268 = arith.remf %cst_1, %cst_2 : f32
      %269 = scf.if %extracted -> (i32) {
        %278 = arith.negf %cst : f32
        %279 = math.ceil %cst : f32
        %280 = math.rsqrt %cst : f32
        %281 = index.sizeof
        %282 = arith.remf %cst_0, %109 : f16
        %collapsed = tensor.collapse_shape %16 [[0, 1]] : tensor<11x1xf16> into tensor<11xf16>
        %283 = index.maxu %38, %63
        %284 = math.cos %3 : tensor<1x15xf32>
        scf.yield %c2131183909_i32 : i32
      } else {
        %278 = affine.apply affine_map<(d0, d1) -> ((d0 - 2) mod 8)>(%rank, %137)
        %279 = index.divs %122, %47
        %alloca_45 = memref.alloca() : memref<11x12x1xi1>
        %280 = math.absi %c2131183909_i32 : i32
        %alloca_46 = memref.alloca() : memref<1x15x15xi1>
        %281 = arith.shrui %extracted, %false : i1
        %282 = vector.multi_reduction <or>, %136, %136 [] : vector<1xi1> to vector<1xi1>
        %283 = index.divs %c7, %c12
        scf.yield %c2131183909_i32 : i32
      }
      %270 = arith.andi %c12600_i16, %c-13517_i16 : i16
      %271 = arith.remf %133, %109 : f16
      %272 = math.ceil %cst_0 : f16
      %273 = math.fma %12, %12, %12 : tensor<1x15x15xf16>
      %274 = math.rsqrt %109 : f16
      %275 = math.expm1 %cst_2 : f32
      %276 = index.castu %121 : index to i32
      %277 = arith.ceildivsi %180, %180 : i32
      scf.yield
    }
    %187 = arith.addi %180, %180 : i32
    %188 = scf.execute_region -> vector<11x12x1xi32> {
      %262 = arith.shrui %113, %c1_i16 : i16
      %263 = tensor.empty() : tensor<11x12x1xf16>
      %264 = vector.broadcast %cst_3 : f16 to vector<11x1xf16>
      %265 = vector.broadcast %false : i1 to vector<11x1xi1>
      %266 = vector.broadcast %c501533197_i32 : i32 to vector<11x1xi32>
      %267 = vector.gather %263[%c6, %c6, %63] [%266], %265, %264 : tensor<11x12x1xf16>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xf16> into vector<11x1xf16>
      %268 = tensor.empty() : tensor<11x15xi64>
      %269 = linalg.matmul ins(%1, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%268 : tensor<11x15xi64>) -> tensor<11x15xi64>
      %rank_44 = tensor.rank %0 : tensor<11x12x1xf32>
      %270 = math.ipowi %180, %c2131183909_i32 : i32
      %271 = math.absf %12 : tensor<1x15x15xf16>
      %272 = vector.load %alloc_9[%c0, %c14, %c4] : memref<1x15x15xi16>, vector<11x12x1xi16>
      %273 = tensor.empty() : tensor<1x15x15xi32>
      %274 = math.fpowi %12, %273 : tensor<1x15x15xf16>, tensor<1x15x15xi32>
      %extracted_45 = tensor.extract %15[%c8, %c0, %c0] : tensor<11x12x1xi16>
      %275 = scf.execute_region -> tensor<1x15xf32> {
        %283 = arith.negf %133 : f16
        affine.store %113, %alloc[%c5, %c0] : memref<1x15xi16>
        memref.copy %alloc_12, %alloc_10 : memref<1x15x15xi16> to memref<1x15x15xi16>
        %284 = math.exp2 %cst_2 : f32
        %285 = bufferization.clone %alloc_8 : memref<11x1xi1> to memref<11x1xi1>
        %286 = math.ctlz %113 : i16
        %287 = arith.shrsi %c2061977339_i32, %c1137689696_i32 : i32
        %288 = math.round %9 : tensor<11x1xf16>
        %inserted_46 = tensor.insert %false into %4[%c0, %c14, %c14] : tensor<1x15x15xi1>
        %289 = index.mul %131, %rank_32
        %inserted_47 = tensor.insert %105 into %13[%c9, %c6, %c0] : tensor<11x12x1xi32>
        %290 = math.cos %17 : tensor<11x1xf16>
        %291 = vector.broadcast %133 : f16 to vector<1xf16>
        %292 = vector.insert %291, %267 [3] : vector<1xf16> into vector<11x1xf16>
        %293 = index.ceildivu %c14, %156
        %294 = arith.negf %cst_0 : f16
        %295 = math.cos %5 : tensor<11x1xf32>
        scf.yield %3 : tensor<1x15xf32>
      }
      %276 = memref.load %alloc_7[%c9, %c0] : memref<11x1xi16>
      %277 = memref.atomic_rmw andi %c1451825322_i32, %alloc_16[%c0, %c3] : (i32, memref<1x15xi32>) -> i32
      %278 = index.castu %105 : i32 to index
      %279 = index.add %c9, %135
      %280 = math.ipowi %180, %c1451825322_i32 : i32
      %281 = vector.transpose %72, [0, 1, 2] : vector<1x15x15xi16> to vector<1x15x15xi16>
      %282 = vector.broadcast %c501533197_i32 : i32 to vector<11x12x1xi32>
      scf.yield %282 : vector<11x12x1xi32>
    }
    %189 = tensor.empty() : tensor<11x15xf32>
    %190 = linalg.matmul ins(%5, %3 : tensor<11x1xf32>, tensor<1x15xf32>) outs(%189 : tensor<11x15xf32>) -> tensor<11x15xf32>
    %191 = vector.broadcast %c-32462_i16 : i16 to vector<15x15x15x15xi16>
    %192 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %72, %152, %191 : vector<1x15x15xi16>, vector<1x15x15xi16> into vector<15x15x15x15xi16>
    %193 = tensor.empty() : tensor<11x1xi32>
    %mapped = linalg.map ins(%142 : tensor<11x1xi32>) outs(%193 : tensor<11x1xi32>)
      (%in: i32) {
        %262 = math.round %5 : tensor<11x1xf32>
        %263 = arith.minui %105, %c1137689696_i32 : i32
        %264 = arith.andi %180, %c501533197_i32 : i32
        %265 = arith.addi %c1_i16, %c1_i16 : i16
        %alloc_44 = memref.alloc() : memref<11x12x1xi16>
        %266 = vector.broadcast %false : i1 to vector<11x1xi1>
        %267 = vector.broadcast %c1137689696_i32 : i32 to vector<11x1xi32>
        %268 = vector.gather %5[%c0, %38] [%267], %266, %27 : tensor<11x1xf32>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xf32> into vector<11x1xf32>
        %269 = vector.create_mask %rank_28, %c4, %c6 : vector<11x12x1xi1>
        %270 = math.ceil %12 : tensor<1x15x15xf16>
        %271 = tensor.empty() : tensor<1x15x15xi1>
        %mapped_45 = linalg.map ins(%8, %8, %8 : tensor<1x15x15xi1>, tensor<1x15x15xi1>, tensor<1x15x15xi1>) outs(%271 : tensor<1x15x15xi1>)
          (%in_52: i1, %in_53: i1, %in_54: i1) {
            %289 = arith.negf %cst_1 : f32
            %290 = math.tanh %55 : f32
            %cast_55 = tensor.cast %4 : tensor<1x15x15xi1> to tensor<?x?x?xi1>
            %291 = math.cos %0 : tensor<11x12x1xf32>
            %292 = math.round %3 : tensor<1x15xf32>
            %293 = math.ctlz %6 : tensor<11x12x1xi16>
            %294 = arith.remf %109, %109 : f16
            %295 = vector.broadcast %cst_0 : f16 to vector<15xf16>
            %296 = vector.transfer_write %295, %17[%c1, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf16>, tensor<11x1xf16>
            %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x15x15xf16> into tensor<15x15xf16>
            %from_elements = tensor.from_elements %in, %c2131183909_i32, %c501533197_i32, %c2061977339_i32, %c1451825322_i32, %c1451825322_i32, %105, %c2061977339_i32, %180, %in, %180, %in, %c1451825322_i32, %c1137689696_i32, %c501533197_i32 : tensor<1x15xi32>
            %297 = memref.load %175[%c0, %c8] : memref<1x15xi16>
            %298 = vector.shuffle %79, %79 [0] : vector<1x12xi16>, vector<1x12xi16>
            %299 = index.mul %c4, %c2
            %300 = vector.broadcast %c-13517_i16 : i16 to vector<i16>
            vector.transfer_write %300, %alloc_18[%23, %135, %c0] : vector<i16>, memref<11x12x1xi16>
            %301 = math.ceil %12 : tensor<1x15x15xf16>
            %302 = vector.matrix_multiply %126, %126 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
            %303 = math.ipowi %7, %1 : tensor<11x1xi64>
            %cast_56 = tensor.cast %6 : tensor<11x12x1xi16> to tensor<?x?x?xi16>
            %304 = index.sizeof
            %305 = arith.muli %113, %c12600_i16 : i16
            %306 = index.sub %304, %26
            %307 = tensor.empty() : tensor<15x11xi64>
            %308 = tensor.empty() : tensor<1x11xi64>
            %309 = linalg.matmul ins(%11, %307 : tensor<1x15xi64>, tensor<15x11xi64>) outs(%308 : tensor<1x11xi64>) -> tensor<1x11xi64>
            %310 = index.ceildivu %c15, %c13
            %311 = vector.insert %c-32462_i16, %139 [8] : i16 into vector<15xi16>
            %312 = math.absi %c501533197_i32 : i32
            %313 = index.divs %c12, %c7
            %314 = arith.andi %false, %in_53 : i1
            %alloc_57 = memref.alloc() : memref<11x12x1xi1>
            %315 = vector.broadcast %c2131183909_i32 : i32 to vector<11x12x1xi32>
            %316 = vector.gather %alloc_57[%313, %c14, %122] [%315], %269, %269 : memref<11x12x1xi1>, vector<11x12x1xi32>, vector<11x12x1xi1>, vector<11x12x1xi1> into vector<11x12x1xi1>
            %alloca_58 = memref.alloca() : memref<1x15x15xf16>
            %false_59 = index.bool.constant false
            %317 = vector.broadcast %in_54 : i1 to vector<11x12xi1>
            %dest_60, %accumulated_value_61 = vector.scan <maxui>, %269, %317 {inclusive = true, reduction_dim = 2 : i64} : vector<11x12x1xi1>, vector<11x12xi1>
            %318 = vector.load %alloc_16[%c0, %c2] : memref<1x15xi32>, vector<1x15x15xi32>
            %true = arith.constant true
            linalg.yield %true : i1
          }
        %272 = math.round %189 : tensor<11x15xf32>
        %cast_46 = tensor.cast %22 : tensor<i64> to tensor<i64>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %273 = vector.transfer_read %2[%c8, %23], %cst_47 : tensor<11x1xf16>, vector<f16>
        %expanded_48 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x15xi1> into tensor<1x15x1xi1>
        memref.store %c2061977339_i32, %alloc_5[%c5, %c0] : memref<11x1xi32>
        %274 = memref.atomic_rmw maxu %c-13517_i16, %82[%c0, %c12] : (i16, memref<1x15xi16>) -> i16
        memref.assume_alignment %alloc_8, 16 : memref<11x1xi1>
        %extracted_49 = tensor.extract %271[%c0, %c14, %c10] : tensor<1x15x15xi1>
        %275 = scf.execute_region -> f16 {
          %289 = arith.divsi %c2131183909_i32, %c501533197_i32 : i32
          %290 = vector.matrix_multiply %139, %140 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
          %291 = memref.atomic_rmw mulf %cst_2, %alloc_14[%c0, %c14] : (f32, memref<1x15xf32>) -> f32
          %292 = vector.broadcast %extracted : i1 to vector<i1>
          %293 = vector.transfer_write %292, %4[%166, %121, %121] : vector<i1>, tensor<1x15x15xi1>
          %294 = math.sqrt %9 : tensor<11x1xf16>
          %295 = index.divs %166, %63
          %296 = arith.minsi %c1451825322_i32, %180 : i32
          %297 = arith.negf %cst_3 : f16
          %298 = math.round %9 : tensor<11x1xf16>
          memref.assume_alignment %alloc_19, 8 : memref<15x1xi16>
          %299 = arith.muli %in, %c1451825322_i32 : i32
          %300 = index.divs %c13, %c1
          %301 = vector.extract_strided_slice %134 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %alloc_52 = memref.alloc() : memref<11x1xi32>
          %302 = vector.splat %rank_32 : vector<1x15xindex>
          %303 = arith.andi %false, %extracted_49 : i1
          scf.yield %cst_3 : f16
        }
        memref.store %c-13517_i16, %alloc_11[%c0, %c7] : memref<1x15xi16>
        %276 = arith.divsi %c2061977339_i32, %c501533197_i32 : i32
        %277 = tensor.empty() : tensor<1xi64>
        %mapped_50 = linalg.map ins(%alloc_20 : memref<1xi64>) outs(%277 : tensor<1xi64>)
          (%in_52: i64) {
            %289 = math.log10 %9 : tensor<11x1xf16>
            %290 = vector.broadcast %c271623502_i64 : i64 to vector<11x1xi64>
            %291 = vector.gather %11[%c11, %23] [%267], %266, %290 : tensor<1x15xi64>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xi64> into vector<11x1xi64>
            %292 = arith.divui %false, %false : i1
            %293 = math.cos %0 : tensor<11x12x1xf32>
            %294 = math.tanh %3 : tensor<1x15xf32>
            %295 = arith.remf %55, %cst_2 : f32
            %296 = math.atan2 %12, %12 : tensor<1x15x15xf16>
            %297 = math.absf %109 : f16
            %298 = vector.bitcast %125 : vector<15xi1> to vector<15xi1>
            %299 = vector.shuffle %100, %72 [0, 1] : vector<1x15x15xi16>, vector<1x15x15xi16>
            %300 = index.divu %63, %137
            %301 = arith.remf %55, %55 : f32
            %302 = arith.floordivsi %c501533197_i32, %c2061977339_i32 : i32
            %inserted_53 = tensor.insert %55 into %5[%c2, %c0] : tensor<11x1xf32>
            %303 = affine.min affine_map<(d0, d1) -> (d1 mod 4, (d0 + 128) ceildiv 32 + d0 - (d0 - 1) + 128, d0 - (d0 - (d0 - 1) + 128) - 1)>(%c5, %114)
            %alloca_54 = memref.alloca() : memref<1x15x15xi64>
            %304 = math.copysign %2, %2 : tensor<11x1xf16>
            %305 = arith.negf %133 : f16
            %c1_i16_55 = arith.constant 1 : i16
            %306 = vector.transfer_read %6[%61, %c8, %26], %c1_i16_55 : tensor<11x12x1xi16>, vector<i16>
            %307 = math.atan2 %cst_1, %cst_1 : f32
            bufferization.dealloc_tensor %9 : tensor<11x1xf16>
            %308 = arith.divf %109, %cst_47 : f16
            %from_elements = tensor.from_elements %55, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %55, %cst_2, %55, %cst, %55, %55, %55, %55, %cst, %cst, %cst, %cst_1, %cst_1, %55, %cst_2, %cst, %55, %cst, %55, %55, %55, %cst_1, %55, %55, %cst_1, %cst_1, %cst, %cst_2, %55, %55, %55, %55, %cst_2, %cst_1, %cst, %55, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1, %55, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %55, %55, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %55, %cst, %cst, %cst_1, %cst_1, %55, %cst_1, %55, %55, %cst_2, %cst_2, %cst_2, %cst_2, %55, %55, %cst_1, %55, %55, %cst_2, %cst_2, %55, %55, %55, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst, %55, %55, %55, %cst_2, %55, %cst_1, %55, %cst_2, %55, %cst, %cst, %cst_2, %55, %cst_1, %cst_2, %55, %55, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_1, %55, %cst_2, %cst, %cst_1, %cst_2 : tensor<11x12x1xf32>
            %309 = math.tanh %109 : f16
            %310 = arith.maxui %105, %c2131183909_i32 : i32
            %311 = index.casts %38 : index to i32
            %312 = math.sqrt %5 : tensor<11x1xf32>
            %alloc_56 = memref.alloc() : memref<1x15x15xi64>
            %313 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xi16> to vector<1x12xi16>
            %314 = math.ceil %3 : tensor<1x15xf32>
            %315 = vector.matrix_multiply %19, %140 {lhs_columns = 3 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<12xi16>, vector<15xi16>) -> vector<20xi16>
            %316 = index.add %c11, %rank
            %c1_i64 = arith.constant 1 : i64
            linalg.yield %c1_i64 : i64
          }
        %278 = vector.broadcast %cst_1 : f32 to vector<1xf32>
        %279 = vector.insert %278, %41 [3] : vector<1xf32> into vector<6x1xf32>
        %280 = bufferization.clone %alloc_8 : memref<11x1xi1> to memref<11x1xi1>
        %extracted_51 = tensor.extract %3[%c0, %c8] : tensor<1x15xf32>
        %281 = vector.extract_strided_slice %165 {offsets = [0, 2], sizes = [1, 4], strides = [1, 1]} : vector<1x15x15xi64> to vector<1x4x15xi64>
        %282 = math.round %expanded : tensor<1x15x15x1xf16>
        %283 = arith.remf %extracted_51, %cst_2 : f32
        %284 = index.casts %c-13517_i16 : i16 to index
        %285 = index.mul %c10, %144
        %286 = math.cttz %extracted_49 : i1
        %287 = math.round %cst_2 : f32
        %288 = math.tanh %3 : tensor<1x15xf32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %194 = bufferization.to_memref %11 : memref<1x15xi64>
    %195 = arith.shrsi %extracted, %false : i1
    %196 = math.ipowi %4, %8 : tensor<1x15x15xi1>
    scf.execute_region {
      %262 = vector.extract_strided_slice %100 {offsets = [0, 11], sizes = [1, 2], strides = [1, 1]} : vector<1x15x15xi16> to vector<1x2x15xi16>
      %263 = math.log10 %0 : tensor<11x12x1xf32>
      %264 = math.absf %0 : tensor<11x12x1xf32>
      %265 = arith.subi %extracted, %extracted : i1
      vector.print %72 : vector<1x15x15xi16>
      scf.execute_region {
        %280 = bufferization.clone %alloc_15 : memref<1x15xi16> to memref<1x15xi16>
        %281 = vector.transpose %100, [2, 0, 1] : vector<1x15x15xi16> to vector<15x1x15xi16>
        %282 = math.atan %expanded : tensor<1x15x15x1xf16>
        %283 = math.tanh %9 : tensor<11x1xf16>
        %284 = math.log10 %3 : tensor<1x15xf32>
        %285 = arith.maxf %cst_3, %109 : f16
        %expanded_44 = tensor.expand_shape %20 [[0, 1]] : tensor<1xi64> into tensor<1x1xi64>
        %286 = math.round %109 : f16
        %287 = arith.remf %cst, %cst_2 : f32
        %rank_45 = tensor.rank %10 : tensor<1x15xi1>
        %288 = math.ceil %17 : tensor<11x1xf16>
        %289 = bufferization.to_tensor %alloc_13 : memref<11x1xi16>
        %290 = math.powf %2, %2 : tensor<11x1xf16>
        %291 = vector.matrix_multiply %134, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xi32>, vector<15xi32>) -> vector<15xi32>
        %292 = arith.divsi %false, %false : i1
        %293 = vector.bitcast %27 : vector<11x1xf32> to vector<11x1xf32>
        scf.yield
      }
      %266 = memref.alloca_scope  -> (f16) {
        %280 = arith.muli %c-13517_i16, %c12600_i16 : i16
        %281 = arith.negf %cst_1 : f32
        %282 = index.sizeof
        %283 = math.round %189 : tensor<11x15xf32>
        %284 = memref.atomic_rmw maxf %cst_0, %alloc_17[%c6, %c5, %c0] : (f16, memref<11x12x1xf16>) -> f16
        %285 = vector.multi_reduction <mul>, %39, %39 [] : vector<1x12x1xi64> to vector<1x12x1xi64>
        %286 = math.atan %cst_1 : f32
        %287 = math.rsqrt %5 : tensor<11x1xf32>
        %288 = bufferization.to_memref %4 : memref<1x15x15xi1>
        %289 = arith.remsi %c-32462_i16, %c-32462_i16 : i16
        %290 = vector.broadcast %cst : f32 to vector<1xf32>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %163, %290 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
        %291 = math.atan %2 : tensor<11x1xf16>
        memref.store %c-13517_i16, %alloc_4[%c0, %c4] : memref<1x15xi16>
        %292 = math.ipowi %15, %15 : tensor<11x12x1xi16>
        affine.store %113, %alloc_7[%c0, %c11] : memref<11x1xi16>
        %293 = vector.bitcast %43 : vector<11x1xf32> to vector<11x1xf32>
        %294 = math.sqrt %3 : tensor<1x15xf32>
        %295 = arith.negf %109 : f16
        %296 = arith.negf %109 : f16
        %297 = vector.multi_reduction <mul>, %28, %c782217666_i64 [0, 1, 2] : vector<11x12x1xi64> to i64
        %298 = tensor.empty() : tensor<11x15xi64>
        %299 = linalg.matmul ins(%1, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%298 : tensor<11x15xi64>) -> tensor<11x15xi64>
        %300 = arith.muli %c12600_i16, %113 : i16
        %301 = bufferization.clone %alloc_20 : memref<1xi64> to memref<1xi64>
        %302 = math.log10 %5 : tensor<11x1xf32>
        %303 = vector.broadcast %c271623502_i64 : i64 to vector<1xi64>
        %304 = vector.transfer_write %303, %298[%c13, %32] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, tensor<11x15xi64>
        %305 = math.log1p %12 : tensor<1x15x15xf16>
        %rank_46 = tensor.rank %12 : tensor<1x15x15xf16>
        %306 = bufferization.clone %170 : memref<11x12x1x1xi32> to memref<11x12x1x1xi32>
        %307 = index.ceildivu %47, %c14
        %308 = math.round %109 : f16
        %309 = arith.remf %cst, %cst_1 : f32
        %310 = math.rsqrt %2 : tensor<11x1xf16>
        memref.alloca_scope.return %109 : f16
      }
      %267 = bufferization.clone %175 : memref<1x15xi16> to memref<1x15xi16>
      %268 = tensor.empty() : tensor<15x12xi64>
      %269 = tensor.empty() : tensor<1x12xi64>
      %270 = linalg.matmul ins(%11, %268 : tensor<1x15xi64>, tensor<15x12xi64>) outs(%269 : tensor<1x12xi64>) -> tensor<1x12xi64>
      %271 = vector.matrix_multiply %136, %136 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %272 = arith.subi %c-13517_i16, %c-13517_i16 : i16
      %273 = memref.alloca_scope  -> (memref<1x15x15xi32>) {
        %280 = vector.reduction <maxui>, %19 : vector<12xi16> into i16
        %281 = math.sqrt %0 : tensor<11x12x1xf32>
        %282 = vector.shuffle %136, %125 [0, 2, 3, 8, 9, 11, 12] : vector<1xi1>, vector<15xi1>
        %283 = math.absf %0 : tensor<11x12x1xf32>
        %284 = math.absf %9 : tensor<11x1xf16>
        %285 = math.expm1 %expanded : tensor<1x15x15x1xf16>
        %286 = math.cos %12 : tensor<1x15x15xf16>
        %287 = math.cttz %c2131183909_i32 : i32
        %288 = math.log2 %2 : tensor<11x1xf16>
        %289 = vector.broadcast %266 : f16 to vector<15xf16>
        %290 = vector.insert %289, %116 [0] : vector<15xf16> into vector<1x15xf16>
        %291 = index.floordivs %rank_32, %131
        %292 = vector.matrix_multiply %140, %140 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
        %293 = math.log2 %expanded : tensor<1x15x15x1xf16>
        %294 = arith.subi %c12600_i16, %c-13517_i16 : i16
        %295 = vector.load %alloc_16[%c0, %c14] : memref<1x15xi32>, vector<11x1xi32>
        %296 = arith.negf %cst_1 : f32
        %297 = vector.matrix_multiply %134, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xi32>, vector<15xi32>) -> vector<15xi32>
        %298 = index.add %c8, %c1
        %299 = arith.shli %c12600_i16, %c-13517_i16 : i16
        %alloc_44 = memref.alloc() : memref<11x12x1xi64>
        %300 = vector.broadcast %c782217666_i64 : i64 to vector<11x1xi64>
        %301 = vector.broadcast %extracted : i1 to vector<11x1xi1>
        %302 = vector.gather %alloc_44[%291, %291, %291] [%295], %301, %300 : memref<11x12x1xi64>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xi64> into vector<11x1xi64>
        %303 = vector.shuffle %297, %126 [0, 1, 6, 8, 9, 14, 15, 18, 19, 20, 22, 23, 25, 26] : vector<15xi32>, vector<15xi32>
        %304 = index.sub %32, %291
        %305 = bufferization.clone %alloc_11 : memref<1x15xi16> to memref<1x15xi16>
        %306 = arith.muli %c12600_i16, %c12600_i16 : i16
        %307 = math.powf %9, %9 : tensor<11x1xf16>
        memref.copy %alloc, %175 : memref<1x15xi16> to memref<1x15xi16>
        %308 = vector.transpose %295, [0, 1] : vector<11x1xi32> to vector<11x1xi32>
        %309 = math.ctlz %113 : i16
        %310 = arith.remf %cst_3, %cst_0 : f16
        %311 = math.tanh %17 : tensor<11x1xf16>
        %alloc_45 = memref.alloc() : memref<11x12x1xi1>
        affine.store %c782217666_i64, %alloc_20[%c12] : memref<1xi64>
        %alloc_46 = memref.alloc() : memref<1x15x15xi32>
        memref.alloca_scope.return %alloc_46 : memref<1x15x15xi32>
      }
      %274 = math.tan %cst_0 : f16
      %275 = arith.subi %105, %c1137689696_i32 : i32
      %276 = tensor.empty() : tensor<15x1xi1>
      %277 = tensor.empty() : tensor<1x1xi1>
      %278 = linalg.matmul ins(%10, %276 : tensor<1x15xi1>, tensor<15x1xi1>) outs(%277 : tensor<1x1xi1>) -> tensor<1x1xi1>
      %279 = math.log1p %12 : tensor<1x15x15xf16>
      scf.yield
    }
    %197 = arith.remf %133, %133 : f16
    scf.if %false {
      %262 = arith.remf %cst_0, %cst_0 : f16
      %alloc_44 = memref.alloc() : memref<11x1xi1>
      %263 = bufferization.clone %alloc : memref<1x15xi16> to memref<1x15xi16>
      %264 = math.atan2 %189, %189 : tensor<11x15xf32>
      %265 = math.absf %9 : tensor<11x1xf16>
      %266 = bufferization.to_memref %1 : memref<11x1xi64>
      %267 = arith.shli %c-13517_i16, %c12600_i16 : i16
      %268 = arith.muli %c-13517_i16, %113 : i16
    }
    %198 = vector.broadcast %c782217666_i64 : i64 to vector<1x15xi64>
    %dest_35, %accumulated_value_36 = vector.scan <add>, %165, %198 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15x15xi64>, vector<1x15xi64>
    %199 = math.absf %55 : f32
    scf.if %false {
      %262 = vector.broadcast %26 : index to vector<1xindex>
      %263 = vector.broadcast %c-32462_i16 : i16 to vector<1xi16>
      vector.scatter %alloc_13[%c3, %c0] [%262], %136, %263 : memref<11x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %264 = vector.extract_strided_slice %152 {offsets = [0, 9], sizes = [1, 3], strides = [1, 1]} : vector<1x15x15xi16> to vector<1x3x15xi16>
      %265 = bufferization.clone %alloc_12 : memref<1x15x15xi16> to memref<1x15x15xi16>
      %extracted_44 = tensor.extract %1[%c5, %c0] : tensor<11x1xi64>
      %266 = vector.broadcast %extracted_44 : i64 to vector<i64>
      %267 = vector.transfer_write %266, %20[%137] : vector<i64>, tensor<1xi64>
      %268 = math.ipowi %24, %24 : tensor<1x15xi16>
      %269 = arith.ceildivsi %extracted_44, %c782217666_i64 : i64
      %alloc_45 = memref.alloc() : memref<15x15xi1>
      %270 = tensor.empty() : tensor<1x15xi1>
      %271 = linalg.matmul ins(%10, %alloc_45 : tensor<1x15xi1>, memref<15x15xi1>) outs(%270 : tensor<1x15xi1>) -> tensor<1x15xi1>
    }
    %200 = arith.divui %c782217666_i64, %c782217666_i64 : i64
    %201 = math.log1p %2 : tensor<11x1xf16>
    %202 = arith.muli %false, %extracted : i1
    %203 = arith.cmpf oge, %cst_2, %cst : f32
    %204 = math.rsqrt %5 : tensor<11x1xf32>
    %205 = index.floordivs %c9, %47
    %206 = math.exp2 %9 : tensor<11x1xf16>
    %207 = vector.create_mask %110, %47 : vector<11x1xi1>
    %208 = arith.minf %cst_3, %cst_0 : f16
    %alloc_37 = memref.alloc() : memref<15x15xf32>
    %209 = tensor.empty() : tensor<1x15xf32>
    %210 = linalg.matmul ins(%3, %alloc_37 : tensor<1x15xf32>, memref<15x15xf32>) outs(%209 : tensor<1x15xf32>) -> tensor<1x15xf32>
    %211 = vector.shuffle %125, %136 [1, 5, 7, 9, 10, 12, 15] : vector<15xi1>, vector<1xi1>
    %212 = arith.shrui %113, %c12600_i16 : i16
    memref.store %cst_0, %alloc_17[%c7, %c1, %c0] : memref<11x12x1xf16>
    %213 = arith.shrui %c1137689696_i32, %105 : i32
    %214 = arith.maxf %cst, %cst_2 : f32
    %extracted_38 = tensor.extract %8[%c0, %c3, %c1] : tensor<1x15x15xi1>
    %215 = vector.broadcast %55 : f32 to vector<15x15x11xf32>
    %216 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %129, %27, %215 : vector<1x15x15xf32>, vector<11x1xf32> into vector<15x15x11xf32>
    %217 = index.divs %c3, %c1
    %218 = math.fma %133, %cst_0, %cst_0 : f16
    %219 = index.ceildivu %rank_28, %131
    %rank_39 = tensor.rank %24 : tensor<1x15xi16>
    %expanded_40 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<11x12x1xi32> into tensor<11x12x1x1xi32>
    %220 = index.sizeof
    %221 = arith.cmpf oge, %cst, %cst_1 : f32
    %222 = vector.broadcast %cst_3 : f16 to vector<11x1xf16>
    %223 = index.floordivs %c15, %c1
    %224 = bufferization.clone %170 : memref<11x12x1x1xi32> to memref<11x12x1x1xi32>
    %225 = math.tanh %109 : f16
    %226 = vector.splat %c271623502_i64 : vector<1x15xi64>
    scf.index_switch %70 
    case 1 {
      %true = arith.constant true
      %262 = vector.transfer_read %8[%c13, %c14, %114], %true : tensor<1x15x15xi1>, vector<i1>
      %alloc_44 = memref.alloc() : memref<1x12xi32>
      %263 = tensor.empty() : tensor<11x12xi32>
      %264 = linalg.matmul ins(%142, %alloc_44 : tensor<11x1xi32>, memref<1x12xi32>) outs(%263 : tensor<11x12xi32>) -> tensor<11x12xi32>
      %extracted_45 = tensor.extract %9[%c10, %c0] : tensor<11x1xf16>
      %265 = math.absf %3 : tensor<1x15xf32>
      %266 = math.absf %extracted_45 : f16
      %267 = math.cttz %180 : i32
      %268 = arith.shrui %c2061977339_i32, %c2061977339_i32 : i32
      %cst_46 = arith.constant 1.000000e+00 : f16
      %269 = vector.transfer_read %62[%c7, %220], %cst_46 : memref<11x1xf16>, vector<12xf16>
      %270 = vector.shuffle %136, %136 [0, 1] : vector<1xi1>, vector<1xi1>
      %271 = arith.addf %cst_46, %extracted_45 : f16
      %272 = index.sub %40, %rank_28
      %273 = vector.splat %extracted_38 : vector<11x12x1xi1>
      %274 = arith.shrui %c1_i16, %113 : i16
      %275 = math.round %cst_46 : f16
      %276 = math.cttz %4 : tensor<1x15x15xi1>
      %generated_47 = tensor.generate %c10 {
      ^bb0(%arg3: index, %arg4: index):
        %277 = math.rsqrt %133 : f16
        %expanded_48 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<1x15x15xi1> into tensor<1x15x15x1xi1>
        %278 = math.tanh %5 : tensor<11x1xf32>
        memref.store %c-13517_i16, %alloc[%c0, %c9] : memref<1x15xi16>
        tensor.yield %cst_0 : f16
      } : tensor<?x1xf16>
      scf.yield
    }
    case 2 {
      %262 = arith.shrui %c1137689696_i32, %c501533197_i32 : i32
      %263 = bufferization.clone %alloc_11 : memref<1x15xi16> to memref<1x15xi16>
      %rank_44 = tensor.rank %cast_33 : tensor<?x?xi32>
      %264 = index.divs %219, %135
      %265 = arith.divsi %c-32462_i16, %c-32462_i16 : i16
      %266 = vector.extract_strided_slice %129 {offsets = [0, 5], sizes = [1, 9], strides = [1, 1]} : vector<1x15x15xf32> to vector<1x9x15xf32>
      %267 = index.sizeof
      %cast_45 = tensor.cast %10 : tensor<1x15xi1> to tensor<?x?xi1>
      %268 = math.rsqrt %109 : f16
      %expanded_46 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<11x1xi64> into tensor<11x1x1xi64>
      %269 = arith.shli %180, %105 : i32
      %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<11x1xi64> into tensor<11xi64>
      memref.alloca_scope  {
        %273 = tensor.empty() : tensor<1x15x15x1xi32>
        %274 = math.fpowi %expanded, %273 : tensor<1x15x15x1xf16>, tensor<1x15x15x1xi32>
        %true = index.bool.constant true
        %false_48 = index.bool.constant false
        %275 = arith.ceildivsi %c12600_i16, %c12600_i16 : i16
        %extracted_49 = tensor.extract %4[%c0, %c1, %c0] : tensor<1x15x15xi1>
        %276 = index.divu %223, %144
        %277 = memref.load %alloc_15[%c0, %c12] : memref<1x15xi16>
        %278 = arith.shrsi %c-13517_i16, %113 : i16
        %279 = vector.bitcast %139 : vector<15xi16> to vector<15xi16>
        %280 = vector.maskedload %alloc_8[%c5, %c0], %136, %136 : memref<11x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %281 = vector.broadcast %cst : f32 to vector<1xf32>
        %282 = vector.multi_reduction <add>, %266, %281 [1, 2] : vector<1x9x15xf32> to vector<1xf32>
        %283 = math.tanh %189 : tensor<11x15xf32>
        %expanded_50 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<11x1xf16> into tensor<11x1x1xf16>
        bufferization.dealloc_tensor %8 : tensor<1x15x15xi1>
        %284 = index.divu %63, %38
        %285 = math.ceil %9 : tensor<11x1xf16>
        %286 = math.sqrt %cst_2 : f32
        %287 = memref.atomic_rmw mins %c1_i16, %alloc_11[%c0, %c14] : (i16, memref<1x15xi16>) -> i16
        %288 = vector.matrix_multiply %126, %134 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<1xi32>) -> vector<15xi32>
        %289 = bufferization.to_tensor %alloc_14 : memref<1x15xf32>
        %290 = arith.shrui %c2131183909_i32, %c501533197_i32 : i32
        %291 = memref.atomic_rmw minu %c-13517_i16, %82[%c0, %c9] : (i16, memref<1x15xi16>) -> i16
        %292 = vector.broadcast %c271623502_i64 : i64 to vector<i64>
        %293 = vector.transfer_write %292, %7[%131, %c4] : vector<i64>, tensor<11x1xi64>
        %294 = vector.matrix_multiply %136, %136 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %from_elements = tensor.from_elements %c12600_i16, %c-13517_i16, %113, %c1_i16, %113, %c1_i16, %113, %c1_i16, %c12600_i16, %c12600_i16, %c-32462_i16 : tensor<11x1xi16>
        %295 = math.round %55 : f32
        %296 = index.floordivs %rank, %114
        %297 = index.sizeof
        %298 = index.add %c10, %c2
        %299 = math.expm1 %189 : tensor<11x15xf32>
        %300 = vector.multi_reduction <add>, %134, %c2061977339_i32 [0] : vector<1xi32> to i32
        %301 = index.divs %61, %298
      }
      %270 = index.sizeof
      %271 = tensor.empty() : tensor<1x15x15xi16>
      %mapped_47 = linalg.map ins(%56 : memref<1x15x15xi16>) outs(%271 : tensor<1x15x15xi16>)
        (%in: i16) {
          %273 = math.tanh %5 : tensor<11x1xf32>
          %274 = math.sqrt %cst_0 : f16
          %275 = vector.load %alloc_18[%c4, %c7, %c0] : memref<11x12x1xi16>, vector<11x1xi16>
          %inserted_48 = tensor.insert %extracted into %expanded_26[%c0, %c14, %c8, %c0] : tensor<1x15x15x1xi1>
          %expanded_49 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<11x12x1xf32> into tensor<11x12x1x1xf32>
          %276 = arith.cmpf ogt, %133, %109 : f16
          %277 = memref.atomic_rmw maxu %c1451825322_i32, %170[%c6, %c7, %c0, %c0] : (i32, memref<11x12x1x1xi32>) -> i32
          %collapsed_50 = tensor.collapse_shape %7 [[0, 1]] : tensor<11x1xi64> into tensor<11xi64>
          %278 = math.log10 %209 : tensor<1x15xf32>
          %rank_51 = tensor.rank %209 : tensor<1x15xf32>
          %279 = vector.extract_strided_slice %136 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %collapsed_52 = tensor.collapse_shape %209 [[0, 1]] : tensor<1x15xf32> into tensor<15xf32>
          %280 = vector.multi_reduction <maxsi>, %279, %279 [] : vector<1xi1> to vector<1xi1>
          %281 = vector.matrix_multiply %125, %136 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<1xi1>) -> vector<15xi1>
          %282 = arith.andi %c-13517_i16, %c12600_i16 : i16
          %283 = arith.remsi %c271623502_i64, %c782217666_i64 : i64
          %284 = vector.extract_strided_slice %125 {offsets = [3], sizes = [11], strides = [1]} : vector<15xi1> to vector<11xi1>
          %285 = arith.remui %c-13517_i16, %in : i16
          %286 = math.round %3 : tensor<1x15xf32>
          %287 = math.log10 %0 : tensor<11x12x1xf32>
          %288 = math.cos %cst_0 : f16
          %289 = arith.divsi %c-13517_i16, %c1_i16 : i16
          %290 = vector.broadcast %c10 : index to vector<15xindex>
          vector.scatter %82[%c0, %c8] [%290], %281, %140 : memref<1x15xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
          %291 = affine.min affine_map<(d0, d1) -> (d1 + 4, -((-d0) mod 16), d1)>(%137, %131)
          memref.store %cst_2, %alloc_14[%c0, %c1] : memref<1x15xf32>
          memref.copy %alloc_10, %alloc_12 : memref<1x15x15xi16> to memref<1x15x15xi16>
          %292 = memref.load %alloc_8[%c0, %c0] : memref<11x1xi1>
          vector.print %140 : vector<15xi16>
          %293 = arith.muli %c1451825322_i32, %c1137689696_i32 : i32
          %294 = math.log1p %9 : tensor<11x1xf16>
          %295 = vector.load %alloc_6[%c0, %c11] : memref<1x15xi16>, vector<11x1xi16>
          %296 = vector.reduction <add>, %139 : vector<15xi16> into i16
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %272 = vector.extract_strided_slice %116 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15xf16> to vector<1x15xf16>
      scf.yield
    }
    case 3 {
      %262 = math.sqrt %expanded : tensor<1x15x15x1xf16>
      %263 = math.cttz %expanded_22 : tensor<11x12x1x1xi32>
      %264 = index.casts %c2131183909_i32 : i32 to index
      %alloc_44 = memref.alloc() : memref<11x1xi64>
      memref.tensor_store %1, %alloc_44 : memref<11x1xi64>
      %265 = math.absi %8 : tensor<1x15x15xi1>
      %266 = arith.floordivsi %extracted_38, %extracted : i1
      %267 = math.round %cst_0 : f16
      %268 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      %269 = vector.insert %268, %27 [6] : vector<1xf32> into vector<11x1xf32>
      %270 = arith.remf %cst_1, %cst : f32
      %271 = math.absf %cst_3 : f16
      %272 = index.floordivs %c14, %223
      %273 = math.ctlz %8 : tensor<1x15x15xi1>
      %274 = vector.shuffle %39, %39 [0, 1] : vector<1x12x1xi64>, vector<1x12x1xi64>
      %275 = memref.atomic_rmw mulf %cst_3, %62[%c6, %c0] : (f16, memref<11x1xf16>) -> f16
      %276 = arith.shrsi %false, %extracted : i1
      %277 = arith.muli %extracted_38, %extracted_38 : i1
      scf.yield
    }
    case 4 {
      %262 = arith.remui %c1137689696_i32, %c2061977339_i32 : i32
      %263 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
      %264 = vector.multi_reduction <minsi>, %100, %263 [1, 2] : vector<1x15x15xi16> to vector<1xi16>
      %265 = vector.broadcast %c1137689696_i32 : i32 to vector<11x1xi32>
      %266 = vector.gather %12[%223, %c12, %c8] [%265], %207, %222 : tensor<1x15x15xf16>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xf16> into vector<11x1xf16>
      %267 = vector.shuffle %27, %27 [3, 4, 5, 6, 7, 9, 12, 15] : vector<11x1xf32>, vector<11x1xf32>
      %268 = arith.negf %109 : f16
      %269 = arith.muli %180, %c2061977339_i32 : i32
      %270 = arith.remui %105, %c2061977339_i32 : i32
      %false_44 = index.bool.constant false
      %271 = index.maxu %c4, %40
      %272 = arith.andi %113, %c1_i16 : i16
      %273 = bufferization.clone %194 : memref<1x15xi64> to memref<1x15xi64>
      affine.for %arg3 = 0 to 9 {
      }
      %274 = math.log2 %12 : tensor<1x15x15xf16>
      %275 = vector.reduction <xor>, %125 : vector<15xi1> into i1
      %276 = math.expm1 %2 : tensor<11x1xf16>
      %277 = tensor.empty() : tensor<1x1xi32>
      %278 = tensor.empty() : tensor<11x1xi32>
      %279 = linalg.matmul ins(%142, %277 : tensor<11x1xi32>, tensor<1x1xi32>) outs(%278 : tensor<11x1xi32>) -> tensor<11x1xi32>
      scf.yield
    }
    default {
      %262 = math.ctlz %10 : tensor<1x15xi1>
      %rank_44 = tensor.rank %9 : tensor<11x1xf16>
      %263 = vector.broadcast %c2061977339_i32 : i32 to vector<15x15xi32>
      %264 = vector.insert %263, %177 [0] : vector<15x15xi32> into vector<1x15x15xi32>
      %265 = math.round %expanded : tensor<1x15x15x1xf16>
      %266 = tensor.empty() : tensor<11x15xf32>
      %267 = linalg.matmul ins(%5, %3 : tensor<11x1xf32>, tensor<1x15xf32>) outs(%266 : tensor<11x15xf32>) -> tensor<11x15xf32>
      %268 = arith.xori %c1_i16, %c12600_i16 : i16
      %269 = tensor.empty() : tensor<15x1xf32>
      %270 = tensor.empty() : tensor<11x1xf32>
      %271 = linalg.matmul ins(%189, %269 : tensor<11x15xf32>, tensor<15x1xf32>) outs(%270 : tensor<11x1xf32>) -> tensor<11x1xf32>
      %272 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15xi16> to vector<1x15xi16>
      %273 = math.ceil %9 : tensor<11x1xf16>
      %true = index.bool.constant true
      %alloca_45 = memref.alloca() : memref<1x15x15xi16>
      %274 = arith.negf %109 : f16
      %275 = bufferization.clone %170 : memref<11x12x1x1xi32> to memref<11x12x1x1xi32>
      %276 = math.tanh %cst : f32
      %277 = math.sqrt %109 : f16
      %278 = math.atan2 %12, %12 : tensor<1x15x15xf16>
    }
    memref.store %c-13517_i16, %alloc[%c0, %c13] : memref<1x15xi16>
    %227 = affine.load %alloc[%c4, %c8] : memref<1x15xi16>
    %228 = bufferization.clone %alloc_11 : memref<1x15xi16> to memref<1x15xi16>
    %229 = tensor.empty() : tensor<15xi1>
    %230 = tensor.empty() : tensor<1xi1>
    %231 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%229, %230 : tensor<15xi1>, tensor<1xi1>) outs(%4 : tensor<1x15x15xi1>) {
    ^bb0(%in: i1, %in_44: i1, %out: i1):
      %262 = math.atan2 %0, %0 : tensor<11x12x1xf32>
      %263 = math.log1p %3 : tensor<1x15xf32>
      %264 = math.tanh %cst : f32
      %265 = math.atan2 %cst_1, %cst_1 : f32
      %266 = math.atan2 %17, %2 : tensor<11x1xf16>
      %267 = vector.broadcast %c12600_i16 : i16 to vector<i16>
      %268 = vector.transfer_write %267, %24[%110, %137] : vector<i16>, tensor<1x15xi16>
      %269 = arith.xori %c2061977339_i32, %c1137689696_i32 : i32
      %270 = math.log10 %3 : tensor<1x15xf32>
      %271 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xi16> to vector<1x12xi16>
      %272 = arith.negf %cst_3 : f16
      %273 = index.sizeof
      %274 = index.ceildivs %217, %131
      %alloc_45 = memref.alloc() : memref<1x15xf16>
      %275 = tensor.empty() : tensor<11x15xf16>
      %276 = linalg.matmul ins(%17, %alloc_45 : tensor<11x1xf16>, memref<1x15xf16>) outs(%275 : tensor<11x15xf16>) -> tensor<11x15xf16>
      %277 = math.cos %cst_2 : f32
      %278 = arith.xori %false, %out : i1
      %279 = math.expm1 %3 : tensor<1x15xf32>
      %280 = tensor.empty() : tensor<1xi1>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280 : tensor<1xi1>) outs(%4 : tensor<1x15x15xi1>) {
      ^bb0(%in_47: i1, %out_48: i1):
        %inserted_49 = tensor.insert %out into %expanded_26[%c0, %c2, %c0, %c0] : tensor<1x15x15x1xi1>
        %299 = index.sizeof
        %300 = arith.ori %in, %false : i1
        %301 = vector.broadcast %c11 : index to vector<15xindex>
        vector.scatter %alloc_19[%c10, %c0] [%301], %125, %139 : memref<15x1xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %302 = arith.andi %c-13517_i16, %c-13517_i16 : i16
        %303 = vector.broadcast %c12600_i16 : i16 to vector<11xi16>
        %304 = vector.broadcast %in_47 : i1 to vector<11xi1>
        %305 = vector.maskedload %175[%c0, %c1], %304, %303 : memref<1x15xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
        %306 = bufferization.clone %alloc_14 : memref<1x15xf32> to memref<1x15xf32>
        %307 = index.floordivs %38, %40
        %308 = vector.insert %136, %207 [3] : vector<1xi1> into vector<11x1xi1>
        %309 = math.round %3 : tensor<1x15xf32>
        %310 = arith.ceildivsi %c2061977339_i32, %c2061977339_i32 : i32
        %311 = arith.divsi %c782217666_i64, %c782217666_i64 : i64
        %312 = vector.shuffle %222, %222 [0, 4, 5, 6, 7, 10, 12, 13, 17, 18, 21] : vector<11x1xf16>, vector<11x1xf16>
        %expanded_50 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x15xi1> into tensor<1x15x1xi1>
        %313 = vector.splat %c11 : vector<11x12x1xindex>
        %314 = vector.shuffle %41, %163 [0, 3, 5] : vector<6x1xf32>, vector<1x1xf32>
        %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<1x15xi1> into tensor<15xi1>
        %315 = index.mul %70, %c11
        %alloc_51 = memref.alloc() : memref<11x12x1xf16>
        memref.copy %alloc_17, %alloc_51 : memref<11x12x1xf16> to memref<11x12x1xf16>
        %316 = arith.cmpf ugt, %cst_2, %cst : f32
        %317 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %318 = vector.multi_reduction <minf>, %163, %317 [1] : vector<1x1xf32> to vector<1xf32>
        %c0_i32 = arith.constant 0 : i32
        %319 = vector.transfer_read %alloc_5[%131, %144], %c0_i32 : memref<11x1xi32>, vector<i32>
        %320 = affine.load %alloc_8[%c10, %c1] : memref<11x1xi1>
        %321 = arith.andi %extracted, %in_44 : i1
        %322 = bufferization.to_memref %10 : memref<1x15xi1>
        memref.store %227, %alloc_12[%c0, %c13, %c6] : memref<1x15x15xi16>
        %323 = affine.load %194[%c0, %c15] : memref<1x15xi64>
        %324 = math.rsqrt %109 : f16
        %325 = memref.atomic_rmw muli %105, %224[%c7, %c1, %c0, %c0] : (i32, memref<11x12x1x1xi32>) -> i32
        %326 = arith.remui %in, %extracted : i1
        %327 = arith.minsi %113, %c-13517_i16 : i16
        %328 = bufferization.clone %36 : memref<11x1xi16> to memref<11x1xi16>
        linalg.yield %in : i1
      } -> tensor<1x15x15xi1>
      %282 = vector.load %36[%c5, %c0] : memref<11x1xi16>, vector<11x1xi16>
      %alloca_46 = memref.alloca() : memref<1x15xi16>
      %283 = index.mul %c11, %274
      %284 = math.fma %16, %2, %9 : tensor<11x1xf16>
      %285 = arith.xori %c782217666_i64, %c271623502_i64 : i64
      %286 = math.sqrt %cst_0 : f16
      %287 = arith.remf %133, %109 : f16
      %288 = tensor.empty() : tensor<15x1xi1>
      %289 = tensor.empty() : tensor<1x1xi1>
      %290 = linalg.matmul ins(%10, %288 : tensor<1x15xi1>, tensor<15x1xi1>) outs(%289 : tensor<1x1xi1>) -> tensor<1x1xi1>
      %291 = arith.minsi %c12600_i16, %c-32462_i16 : i16
      %292 = affine.min affine_map<(d0) -> ((d0 * 2 + (d0 * 2) ceildiv 8 - d0 floordiv 8) * -64, (d0 * 2 + (d0 * 2) ceildiv 8 - d0 floordiv 8) * -64, d0 * 2, (d0 * 2) ceildiv 8)>(%61)
      %293 = vector.broadcast %c1137689696_i32 : i32 to vector<11x1xi32>
      %294 = vector.gather %0[%rank, %c5, %61] [%293], %207, %27 : tensor<11x12x1xf32>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xf32> into vector<11x1xf32>
      %295 = math.ipowi %10, %10 : tensor<1x15xi1>
      %296 = bufferization.to_tensor %228 : memref<1x15xi16>
      %297 = index.maxu %47, %220
      %298 = arith.cmpf true, %cst, %cst_1 : f32
      linalg.yield %extracted : i1
    } -> tensor<1x15x15xi1>
    %232 = math.ctlz %c1_i16 : i16
    %233 = index.add %rank_32, %c10
    %234 = bufferization.to_memref %16 : memref<11x1xf16>
    %235 = vector.multi_reduction <and>, %124, %c1137689696_i32 [0] : vector<15xi32> to i32
    memref.store %c-13517_i16, %alloc_6[%c0, %c3] : memref<1x15xi16>
    %236 = index.ceildivu %144, %114
    %237 = bufferization.clone %175 : memref<1x15xi16> to memref<1x15xi16>
    %238 = index.floordivs %c13, %144
    %239 = bufferization.clone %56 : memref<1x15x15xi16> to memref<1x15x15xi16>
    %240 = arith.xori %c1137689696_i32, %c1451825322_i32 : i32
    %241 = math.log10 %0 : tensor<11x12x1xf32>
    %alloca_41 = memref.alloca() : memref<11x12x1xi64>
    %242 = index.sub %135, %70
    %rank_42 = tensor.rank %5 : tensor<11x1xf32>
    %243 = index.floordivs %137, %c10
    %244 = math.tanh %12 : tensor<1x15x15xf16>
    %245 = index.sub %rank_28, %61
    scf.execute_region {
      %rank_44 = tensor.rank %8 : tensor<1x15x15xi1>
      %262 = math.fma %3, %3, %209 : tensor<1x15xf32>
      %263 = index.casts %false : i1 to index
      %264 = arith.negf %cst_1 : f32
      %265 = vector.extract_strided_slice %140 {offsets = [12], sizes = [1], strides = [1]} : vector<15xi16> to vector<1xi16>
      %266 = vector.insert %180, %126 [10] : i32 into vector<15xi32>
      %extracted_45 = tensor.extract %expanded_26[%c0, %c5, %c2, %c0] : tensor<1x15x15x1xi1>
      %267 = math.roundeven %cst : f32
      scf.execute_region {
        %274 = arith.subi %c2061977339_i32, %c1451825322_i32 : i32
        %275 = arith.remf %cst_2, %cst : f32
        %276 = math.expm1 %16 : tensor<11x1xf16>
        %277 = arith.xori %c2061977339_i32, %c2131183909_i32 : i32
        %278 = arith.divsi %c-32462_i16, %c-13517_i16 : i16
        %279 = bufferization.to_memref %15 : memref<11x12x1xi16>
        %280 = vector.broadcast %243 : index to vector<11xindex>
        %281 = vector.broadcast %extracted_45 : i1 to vector<11xi1>
        %282 = vector.broadcast %c271623502_i64 : i64 to vector<11xi64>
        vector.scatter %194[%c0, %c1] [%280], %281, %282 : memref<1x15xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %283 = math.roundeven %5 : tensor<11x1xf32>
        %284 = arith.andi %c782217666_i64, %c782217666_i64 : i64
        %285 = math.cttz %10 : tensor<1x15xi1>
        %286 = math.ceil %expanded : tensor<1x15x15x1xf16>
        %287 = arith.ceildivsi %extracted, %extracted_38 : i1
        %288 = arith.ori %c12600_i16, %c-13517_i16 : i16
        %289 = tensor.empty() : tensor<1x1xf16>
        %290 = tensor.empty() : tensor<11x1xf16>
        %291 = linalg.matmul ins(%2, %289 : tensor<11x1xf16>, tensor<1x1xf16>) outs(%290 : tensor<11x1xf16>) -> tensor<11x1xf16>
        %292 = index.sizeof
        %293 = arith.divsi %extracted, %false : i1
        scf.yield
      }
      %generated_46 = tensor.generate %c0, %c3 {
      ^bb0(%arg3: index, %arg4: index):
        %splat = tensor.splat %c1_i16 : tensor<1x15xi16>
        %274 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 2 + d0)>(%144, %243, %c1)
        %275 = math.fpowi %cst_1, %c2061977339_i32 : f32, i32
        %alloca_49 = memref.alloca() : memref<1x15xi64>
        tensor.yield %cst_1 : f32
      } : tensor<?x?xf32>
      %268 = tensor.empty() : tensor<15xi1>
      %alloc_47 = memref.alloc() : memref<15x1xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%268, %alloc_47 : tensor<15xi1>, memref<15x1xi1>) outs(%8 : tensor<1x15x15xi1>) {
      ^bb0(%in: i1, %in_49: i1, %out: i1):
        %274 = arith.divui %180, %c1137689696_i32 : i32
        %275 = index.maxu %c2, %220
        %276 = arith.remf %cst, %55 : f32
        %277 = arith.cmpf olt, %cst, %55 : f32
        %278 = arith.muli %235, %c2061977339_i32 : i32
        %279 = arith.shli %c2061977339_i32, %105 : i32
        %280 = vector.reduction <mul>, %19 : vector<12xi16> into i16
        %281 = math.round %17 : tensor<11x1xf16>
        %282 = math.cos %17 : tensor<11x1xf16>
        %expanded_50 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<11x12x1xi16> into tensor<11x12x1x1xi16>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %283 = vector.transfer_read %alloc_16[%c12, %156], %c0_i32 : memref<1x15xi32>, vector<i32>
        %284 = math.cos %2 : tensor<11x1xf16>
        %285 = arith.cmpf une, %cst_0, %cst_0 : f16
        %286 = vector.matrix_multiply %126, %126 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %287 = index.divs %c14, %233
        %288 = arith.divui %extracted_45, %in : i1
        %289 = math.ceil %cst : f32
        %290 = arith.xori %in, %extracted_45 : i1
        memref.assume_alignment %170, 4 : memref<11x12x1x1xi32>
        %291 = math.absf %3 : tensor<1x15xf32>
        %292 = vector.broadcast %c1_i32 : i32 to vector<11x12x1xi32>
        %293 = arith.muli %in, %false : i1
        %294 = math.tanh %9 : tensor<11x1xf16>
        %295 = arith.ceildivsi %out, %in : i1
        %296 = arith.minsi %false, %in_49 : i1
        %297 = math.expm1 %3 : tensor<1x15xf32>
        %298 = math.sqrt %109 : f16
        %299 = index.divu %245, %c12
        %300 = math.ctlz %c-13517_i16 : i16
        %301 = index.mul %rank_39, %219
        %alloca_51 = memref.alloca() : memref<1x15x15xf16>
        %302 = index.castu %c1137689696_i32 : i32 to index
        linalg.yield %in_49 : i1
      } -> tensor<1x15x15xi1>
      %expanded_48 = tensor.expand_shape %24 [[0], [1, 2]] : tensor<1x15xi16> into tensor<1x15x1xi16>
      %270 = math.cttz %227 : i16
      %271 = index.sizeof
      %272 = arith.negf %109 : f16
      %273 = math.log10 %16 : tensor<11x1xf16>
      scf.yield
    }
    %246 = math.roundeven %2 : tensor<11x1xf16>
    %247 = scf.index_switch %205 -> tensor<1x15xi16> 
    case 1 {
      %262 = bufferization.to_tensor %alloc_18 : memref<11x12x1xi16>
      %263 = math.tanh %cst_1 : f32
      %264 = math.tanh %3 : tensor<1x15xf32>
      %extracted_44 = tensor.extract %24[%c0, %c0] : tensor<1x15xi16>
      %265 = vector.broadcast %cst_0 : f16 to vector<11xf16>
      %266 = vector.multi_reduction <mul>, %222, %265 [1] : vector<11x1xf16> to vector<11xf16>
      %267 = math.floor %109 : f16
      %268 = index.mul %c0, %c9
      %269 = math.log10 %9 : tensor<11x1xf16>
      %rank_45 = tensor.rank %expanded_26 : tensor<1x15x15x1xi1>
      %270 = math.ceil %12 : tensor<1x15x15xf16>
      %271 = index.mul %40, %c14
      %272 = math.absf %209 : tensor<1x15xf32>
      %alloc_46 = memref.alloc() : memref<11x1xi16>
      %273 = tensor.empty() : tensor<11x1xf16>
      %mapped_47 = linalg.map ins(%16, %2 : tensor<11x1xf16>, tensor<11x1xf16>) outs(%273 : tensor<11x1xf16>)
        (%in: f16, %in_48: f16) {
          vector.print %124 : vector<15xi32>
          %275 = math.ipowi %10, %10 : tensor<1x15xi1>
          %276 = arith.muli %extracted_38, %extracted_38 : i1
          %277 = vector.broadcast %extracted : i1 to vector<i1>
          vector.transfer_write %277, %alloc_8[%47, %26] : vector<i1>, memref<11x1xi1>
          %278 = math.tanh %55 : f32
          %279 = arith.shrui %105, %235 : i32
          memref.assume_alignment %82, 4 : memref<1x15xi16>
          %280 = math.log1p %2 : tensor<11x1xf16>
          %281 = arith.remf %in_48, %109 : f16
          %282 = vector.broadcast %cst : f32 to vector<1xf32>
          %283 = vector.insert %282, %27 [8] : vector<1xf32> into vector<11x1xf32>
          %284 = arith.remf %133, %in_48 : f16
          %285 = math.ctlz %193 : tensor<11x1xi32>
          %286 = arith.andi %113, %c-32462_i16 : i16
          %287 = arith.shli %c-32462_i16, %227 : i16
          %288 = vector.transpose %265, [0] : vector<11xf16> to vector<11xf16>
          bufferization.dealloc_tensor %15 : tensor<11x12x1xi16>
          %289 = vector.extract_strided_slice %19 {offsets = [5], sizes = [4], strides = [1]} : vector<12xi16> to vector<4xi16>
          %290 = math.tan %0 : tensor<11x12x1xf32>
          %291 = arith.minui %105, %235 : i32
          %292 = arith.shli %c-13517_i16, %c-32462_i16 : i16
          %293 = vector.matrix_multiply %139, %140 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
          %294 = arith.negf %in_48 : f16
          %295 = arith.shli %c1451825322_i32, %c501533197_i32 : i32
          %296 = memref.atomic_rmw andi %c-32462_i16, %alloc_11[%c0, %c1] : (i16, memref<1x15xi16>) -> i16
          %297 = arith.divui %c1451825322_i32, %235 : i32
          %298 = memref.atomic_rmw ori %c12600_i16, %237[%c0, %c11] : (i16, memref<1x15xi16>) -> i16
          %rank_49 = tensor.rank %16 : tensor<11x1xf16>
          %expanded_50 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<11x1xf16> into tensor<11x1x1xf16>
          %from_elements = tensor.from_elements %cst_2, %cst, %cst_1, %cst_1, %55, %55, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %55, %cst_2, %55, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %55, %cst_1, %cst, %55, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %55, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %55, %cst_1, %cst, %cst, %cst, %cst_2, %55, %cst, %cst_2, %cst, %cst, %55, %55, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst, %55, %cst_2, %cst_1, %55, %cst_2, %cst_2, %55, %cst_2, %55, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %55, %cst_2, %cst_2, %cst_2, %55, %cst_1, %cst, %cst, %cst_2, %cst, %cst_1, %cst, %55, %cst, %cst, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %55, %cst, %55, %55, %cst, %cst_2, %cst, %cst_1, %55, %55, %cst, %cst_2, %cst_2, %55, %55, %55, %cst_1, %cst_1, %cst_1, %cst, %55, %cst, %cst, %cst, %cst, %cst_2, %55, %55, %cst_1, %55, %cst, %55, %cst_2, %cst_1, %cst, %cst, %cst, %55, %55, %cst_1, %cst_2, %55, %55, %cst, %cst_1, %cst_1, %cst_1, %55, %cst_1, %55, %cst_2, %cst_1, %cst_1, %cst, %55, %55, %cst, %55, %cst_1, %cst, %cst_2, %55, %cst_1, %cst, %55, %cst, %55, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %55, %55, %cst_2, %cst_2, %55, %55, %cst_2, %cst, %cst, %cst_2, %55, %cst_2, %55, %cst_1, %cst_2, %cst_1, %55, %cst, %cst_2, %55, %cst, %cst_1, %cst_2, %cst_2, %cst, %55, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst : tensor<1x15x15xf32>
          %299 = arith.shli %c-13517_i16, %c-13517_i16 : i16
          %300 = vector.broadcast %c782217666_i64 : i64 to vector<1xi64>
          %301 = vector.insert %300, %39 [0, 1] : vector<1xi64> into vector<1x12x1xi64>
          %302 = vector.shuffle %293, %19 [1, 2, 3, 4, 6, 8] : vector<1xi16>, vector<12xi16>
          %cst_51 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_51 : f16
        }
      %274 = math.sqrt %9 : tensor<11x1xf16>
      scf.if %false {
        %275 = math.tanh %55 : f32
        %276 = math.floor %cst : f32
        %277 = math.ipowi %8, %4 : tensor<1x15x15xi1>
        %278 = arith.remf %cst_3, %cst_0 : f16
        %279 = vector.broadcast %extracted : i1 to vector<1x15x15xi1>
        %280 = vector.gather %7[%238, %rank_39] [%69], %279, %165 : tensor<11x1xi64>, vector<1x15x15xi32>, vector<1x15x15xi1>, vector<1x15x15xi64> into vector<1x15x15xi64>
        %281 = arith.addi %extracted_44, %c1_i16 : i16
        %282 = vector.shuffle %27, %27 [1, 3, 6, 11, 12, 15, 17, 20] : vector<11x1xf32>, vector<11x1xf32>
        %283 = arith.subi %113, %113 : i16
      }
      scf.yield %24 : tensor<1x15xi16>
    }
    case 2 {
      %alloc_44 = memref.alloc() : memref<1x15xf16>
      %262 = tensor.empty() : tensor<11x15xf16>
      %263 = linalg.matmul ins(%9, %alloc_44 : tensor<11x1xf16>, memref<1x15xf16>) outs(%262 : tensor<11x15xf16>) -> tensor<11x15xf16>
      bufferization.dealloc_tensor %12 : tensor<1x15x15xf16>
      %264 = arith.subi %extracted_38, %extracted_38 : i1
      %265 = arith.divui %extracted, %false : i1
      %false_45 = arith.constant false
      %false_46 = arith.constant false
      %266 = vector.transfer_read %alloc_8[%c11, %c0], %false_46 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<11x1xi1>, vector<12xi1>
      %267 = vector.broadcast %cst_2 : f32 to vector<11x12x1xf32>
      %268 = vector.fma %267, %267, %267 : vector<11x12x1xf32>
      %269 = index.mul %c15, %c11
      %270 = math.cttz %1 : tensor<11x1xi64>
      %cast_47 = tensor.cast %expanded_22 : tensor<11x12x1x1xi32> to tensor<?x?x?x?xi32>
      %271 = memref.atomic_rmw muli %180, %alloc_5[%c10, %c0] : (i32, memref<11x1xi32>) -> i32
      %272 = bufferization.to_tensor %alloc_19 : memref<15x1xi16>
      %273 = arith.negf %cst_1 : f32
      %274 = arith.shli %c1137689696_i32, %c2131183909_i32 : i32
      %extracted_48 = tensor.extract %15[%c10, %c8, %c0] : tensor<11x12x1xi16>
      %expanded_49 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<11x1xf16> into tensor<11x1x1xf16>
      %alloc_50 = memref.alloc() : memref<11x1xf32>
      scf.yield %24 : tensor<1x15xi16>
    }
    case 3 {
      memref.store %cst, %alloc_14[%c0, %c1] : memref<1x15xf32>
      %262 = bufferization.to_memref %1 : memref<11x1xi64>
      %263 = vector.bitcast %177 : vector<1x15x15xi32> to vector<1x15x15xi32>
      %264 = bufferization.clone %alloc_6 : memref<1x15xi16> to memref<1x15xi16>
      %265 = index.floordivs %236, %32
      %rank_44 = tensor.rank %9 : tensor<11x1xf16>
      %266 = math.sqrt %9 : tensor<11x1xf16>
      scf.execute_region {
        %276 = math.cttz %22 : tensor<i64>
        %277 = vector.broadcast %133 : f16 to vector<1x15xf16>
        %278 = math.atan2 %55, %55 : f32
        %279 = arith.remf %55, %cst_1 : f32
        %cast_46 = tensor.cast %11 : tensor<1x15xi64> to tensor<?x?xi64>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 128) ceildiv 128)>(%61, %rank_44, %166, %156)
        affine.store %c12600_i16, %alloc_19[%c3, %c9] : memref<15x1xi16>
        %281 = vector.shuffle %163, %163 [0] : vector<1x1xf32>, vector<1x1xf32>
        %282 = vector.broadcast %c-32462_i16 : i16 to vector<15x15xi16>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %72, %282 {inclusive = false, reduction_dim = 0 : i64} : vector<1x15x15xi16>, vector<15x15xi16>
        %collapsed = tensor.collapse_shape %expanded_26 [[0, 1], [2], [3]] : tensor<1x15x15x1xi1> into tensor<15x15x1xi1>
        %expanded_49 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<11x12x1xi32> into tensor<11x12x1x1xi32>
        %283 = math.floor %209 : tensor<1x15xf32>
        %284 = vector.bitcast %28 : vector<11x12x1xi64> to vector<11x12x1xi64>
        %285 = vector.broadcast %110 : index to vector<11xindex>
        %286 = vector.broadcast %extracted : i1 to vector<11xi1>
        %287 = vector.broadcast %c-32462_i16 : i16 to vector<11xi16>
        vector.scatter %alloc_12[%c0, %c14, %c5] [%285], %286, %287 : memref<1x15x15xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
        %288 = math.ipowi %c501533197_i32, %180 : i32
        %289 = arith.shrui %c12600_i16, %227 : i16
        scf.yield
      }
      %267 = vector.broadcast %cst_1 : f32 to vector<f32>
      %268 = vector.transfer_write %267, %0[%c13, %121, %c15] : vector<f32>, tensor<11x12x1xf32>
      %alloc_45 = memref.alloc() : memref<1x11xi32>
      %269 = tensor.empty() : tensor<11x11xi32>
      %270 = linalg.matmul ins(%193, %alloc_45 : tensor<11x1xi32>, memref<1x11xi32>) outs(%269 : tensor<11x11xi32>) -> tensor<11x11xi32>
      %271 = arith.andi %235, %c501533197_i32 : i32
      %272 = affine.load %262[%c14, %c13] : memref<11x1xi64>
      %273 = vector.multi_reduction <minf>, %43, %cst [0, 1] : vector<11x1xf32> to f32
      %274 = math.log2 %cst_1 : f32
      scf.index_switch %131 
      case 1 {
        %276 = math.roundeven %0 : tensor<11x12x1xf32>
        %277 = math.cos %0 : tensor<11x12x1xf32>
        %278 = index.add %26, %135
        bufferization.dealloc_tensor %6 : tensor<11x12x1xi16>
        %279 = math.log1p %5 : tensor<11x1xf32>
        %280 = index.sub %rank_28, %rank_42
        %281 = arith.andi %extracted_38, %false : i1
        %282 = arith.remf %cst_1, %cst_2 : f32
        memref.store %113, %alloc_18[%c1, %c3, %c0] : memref<11x12x1xi16>
        memref.store %cst_3, %62[%c6, %c0] : memref<11x1xf16>
        %283 = math.tanh %expanded : tensor<1x15x15x1xf16>
        %284 = arith.maxsi %c-13517_i16, %c-13517_i16 : i16
        %extracted_46 = tensor.extract %5[%c9, %c0] : tensor<11x1xf32>
        %alloca_47 = memref.alloca() : memref<1x15x15xi64>
        %285 = math.log %12 : tensor<1x15x15xf16>
        %286 = math.log10 %cst_0 : f16
        scf.yield
      }
      case 2 {
        %276 = vector.broadcast %113 : i16 to vector<15x15xi16>
        %277 = vector.outerproduct %139, %139, %276 {kind = #vector.kind<and>} : vector<15xi16>, vector<15xi16>
        %278 = bufferization.clone %262 : memref<11x1xi64> to memref<11x1xi64>
        %279 = memref.atomic_rmw minu %113, %alloc_11[%c0, %c4] : (i16, memref<1x15xi16>) -> i16
        %280 = arith.negf %cst : f32
        %281 = math.cttz %105 : i32
        %expanded_46 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<11x12x1xf32> into tensor<11x12x1x1xf32>
        %282 = vector.transpose %100, [0, 1, 2] : vector<1x15x15xi16> to vector<1x15x15xi16>
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %175[%121, %265], %c0_i16 : memref<1x15xi16>, vector<i16>
        %284 = index.sub %c10, %38
        %rank_47 = tensor.rank %8 : tensor<1x15x15xi1>
        %285 = index.maxu %23, %c2
        %286 = math.rsqrt %2 : tensor<11x1xf16>
        %287 = arith.ceildivsi %c501533197_i32, %c1137689696_i32 : i32
        %288 = index.sizeof
        %289 = vector.load %alloc_17[%c4, %c5, %c0] : memref<11x12x1xf16>, vector<1x15xf16>
        %290 = index.divs %288, %242
        scf.yield
      }
      default {
        %276 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%219, %c10, %c9)
        %277 = vector.broadcast %c1_i16 : i16 to vector<15x15xi16>
        %278 = vector.outerproduct %139, %140, %277 {kind = #vector.kind<maxsi>} : vector<15xi16>, vector<15xi16>
        %279 = index.sizeof
        vector.print %116 : vector<1x15xf16>
        %rank_46 = tensor.rank %cast_33 : tensor<?x?xi32>
        %280 = vector.transpose %129, [1, 0, 2] : vector<1x15x15xf32> to vector<15x1x15xf32>
        %281 = math.log10 %cst_3 : f16
        %282 = vector.shuffle %41, %163 [0, 1, 4, 5] : vector<6x1xf32>, vector<1x1xf32>
        vector.print %163 : vector<1x1xf32>
        %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<11x1xf16> into tensor<11xf16>
        %283 = arith.remui %false, %false : i1
        %284 = math.roundeven %9 : tensor<11x1xf16>
        %285 = math.atan2 %17, %2 : tensor<11x1xf16>
        %286 = math.tan %cst_3 : f16
        %287 = vector.broadcast %c1451825322_i32 : i32 to vector<1x1xi32>
        %288 = vector.outerproduct %134, %134, %287 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %289 = index.add %38, %122
      }
      %275 = math.tanh %cst_0 : f16
      scf.yield %24 : tensor<1x15xi16>
    }
    default {
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<11x12x1xi16>) {
      ^bb0(%out: i16):
        %278 = vector.matrix_multiply %134, %134 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %279 = memref.load %alloc_8[%c6, %c0] : memref<11x1xi1>
        %280 = bufferization.to_tensor %228 : memref<1x15xi16>
        %281 = vector.extract_strided_slice %163 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
        %282 = math.expm1 %209 : tensor<1x15xf32>
        %283 = vector.broadcast %c1451825322_i32 : i32 to vector<1x15xi32>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %72, %123 {inclusive = false, reduction_dim = 2 : i64} : vector<1x15x15xi16>, vector<1x15xi16>
        %284 = arith.maxf %109, %cst_3 : f16
        %285 = arith.andi %c2061977339_i32, %105 : i32
        %286 = index.divs %47, %c14
        memref.store %cst_1, %alloc_14[%c0, %c7] : memref<1x15xf32>
        %287 = memref.load %alloc_16[%c0, %c3] : memref<1x15xi32>
        %288 = vector.load %alloc[%c0, %c8] : memref<1x15xi16>, vector<11x12x1xi16>
        %289 = math.roundeven %5 : tensor<11x1xf32>
        %290 = vector.broadcast %144 : index to vector<15xindex>
        vector.scatter %239[%c0, %c13, %c6] [%290], %125, %139 : memref<1x15x15xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %291 = index.divu %c1, %c13
        %292 = vector.shuffle %76, %76 [1, 3, 4, 6, 7, 8, 13, 16, 19, 20] : vector<11x15xi16>, vector<11x15xi16>
        %293 = arith.andi %c12600_i16, %c1_i16 : i16
        %collapsed = tensor.collapse_shape %17 [[0, 1]] : tensor<11x1xf16> into tensor<11xf16>
        %294 = arith.divui %c2131183909_i32, %235 : i32
        %rank_47 = tensor.rank %11 : tensor<1x15xi64>
        %295 = math.sqrt %3 : tensor<1x15xf32>
        %296 = math.cos %2 : tensor<11x1xf16>
        %297 = vector.broadcast %c12600_i16 : i16 to vector<11x1xi16>
        %298 = arith.remf %cst_3, %cst_3 : f16
        %299 = arith.addf %cst_1, %cst_2 : f32
        %300 = arith.minf %cst_2, %cst : f32
        %301 = bufferization.to_memref %7 : memref<11x1xi64>
        %302 = arith.xori %c-32462_i16, %c1_i16 : i16
        %303 = arith.minsi %c501533197_i32, %105 : i32
        %cst_48 = arith.constant 1.000000e+00 : f16
        %304 = vector.transfer_read %expanded[%220, %c14, %156, %c4], %cst_48 : tensor<1x15x15x1xf16>, vector<1xf16>
        %305 = index.floordivs %c0, %c13
        linalg.yield %c12600_i16 : i16
      } -> tensor<11x12x1xi16>
      %263 = tensor.empty() : tensor<11x15xi64>
      %264 = linalg.matmul ins(%1, %11 : tensor<11x1xi64>, tensor<1x15xi64>) outs(%263 : tensor<11x15xi64>) -> tensor<11x15xi64>
      %265 = bufferization.to_memref %cast : memref<?x?xi64>
      %266 = math.rsqrt %9 : tensor<11x1xf16>
      %267 = arith.andi %c271623502_i64, %c271623502_i64 : i64
      %268 = vector.shuffle %126, %124 [0, 2, 3, 4, 7, 9, 10, 11, 12, 15, 18, 19, 21, 22, 24, 28, 29] : vector<15xi32>, vector<15xi32>
      %269 = arith.subi %c1137689696_i32, %c501533197_i32 : i32
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 128) ceildiv 128)>(%40, %rank_42, %131, %c4)
      %271 = math.absf %expanded : tensor<1x15x15x1xf16>
      %alloc_44 = memref.alloc() : memref<1x15x15xi16>
      %272 = index.mul %219, %233
      %273 = affine.apply affine_map<(d0, d1) -> (d1 * 8)>(%c7, %121)
      %274 = arith.cmpf une, %cst_1, %cst_2 : f32
      %275 = affine.load %239[%c0, %c0, %c13] : memref<1x15x15xi16>
      %276 = index.divs %219, %c14
      %277 = vector.splat %121 : vector<11x1xindex>
      scf.yield %24 : tensor<1x15xi16>
    }
    %248 = bufferization.clone %alloc_14 : memref<1x15xf32> to memref<1x15xf32>
    %249 = vector.matrix_multiply %126, %124 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
    %250 = math.log1p %3 : tensor<1x15xf32>
    %251 = math.ctlz %235 : i32
    %252 = math.sqrt %9 : tensor<11x1xf16>
    %253 = index.divs %219, %c8
    %254 = arith.xori %c1137689696_i32, %235 : i32
    %255 = vector.matrix_multiply %134, %134 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %256 = memref.atomic_rmw assign %227, %36[%c2, %c0] : (i16, memref<11x1xi16>) -> i16
    %257 = tensor.empty() : tensor<1x15x15xf16>
    %258 = linalg.copy ins(%12 : tensor<1x15x15xf16>) outs(%257 : tensor<1x15x15xf16>) -> tensor<1x15x15xf16>
    %259 = tensor.empty() : tensor<1x1x12x11xi32>
    %transposed = linalg.transpose ins(%170 : memref<11x12x1x1xi32>) outs(%259 : tensor<1x1x12x11xi32>) permutation = [2, 3, 1, 0] 
    %alloc_43 = memref.alloc() : memref<15x15xi1>
    linalg.reduce ins(%8 : tensor<1x15x15xi1>) outs(%alloc_43 : memref<15x15xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        scf.execute_region {
          %268 = index.castu %c1451825322_i32 : i32 to index
          %269 = arith.ori %extracted, %false : i1
          %270 = arith.subi %105, %180 : i32
          %271 = arith.addf %cst_0, %cst_0 : f16
          %272 = bufferization.clone %alloc_15 : memref<1x15xi16> to memref<1x15xi16>
          %273 = vector.shuffle %134, %126 [1, 4, 5, 6, 8, 10, 11, 12, 14, 15] : vector<1xi32>, vector<15xi32>
          %274 = arith.andi %c1137689696_i32, %c1451825322_i32 : i32
          %275 = index.divs %110, %rank_28
          %276 = vector.broadcast %70 : index to vector<11xindex>
          %277 = vector.broadcast %false : i1 to vector<11xi1>
          %278 = vector.broadcast %c12600_i16 : i16 to vector<11xi16>
          vector.scatter %82[%c0, %c6] [%276], %277, %278 : memref<1x15xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
          %279 = arith.minsi %c-32462_i16, %c1_i16 : i16
          %alloc_47 = memref.alloc() : memref<1x15x15xi64>
          %280 = vector.insert %c1137689696_i32, %249 [0] : i32 into vector<1xi32>
          %281 = math.powf %expanded, %expanded : tensor<1x15x15x1xf16>
          %282 = vector.multi_reduction <xor>, %76, %76 [] : vector<11x15xi16> to vector<11x15xi16>
          %283 = arith.shrsi %c1137689696_i32, %c1451825322_i32 : i32
          %284 = arith.maxui %c1451825322_i32, %c1137689696_i32 : i32
          scf.yield
        }
        %262 = math.log10 %0 : tensor<11x12x1xf32>
        %rank_44 = tensor.rank %generated : tensor<?x?x?xi32>
        %alloc_45 = memref.alloc() : memref<15x1xf16>
        %alloc_46 = memref.alloc() : memref<15x15xf16>
        %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_46 : memref<15x1xf16>, memref<15x15xf16>) outs(%258 : tensor<1x15x15xf16>) {
        ^bb0(%in_47: f16, %in_48: f16, %out: f16):
          %268 = vector.matrix_multiply %19, %140 {lhs_columns = 3 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<12xi16>, vector<15xi16>) -> vector<20xi16>
          %269 = math.cos %3 : tensor<1x15xf32>
          %270 = math.log10 %133 : f16
          %271 = index.add %38, %rank_44
          %272 = math.sqrt %5 : tensor<11x1xf32>
          %alloc_49 = memref.alloc() : memref<15x1xi16>
          memref.copy %alloc_19, %alloc_49 : memref<15x1xi16> to memref<15x1xi16>
          %273 = math.ctlz %expanded_22 : tensor<11x12x1x1xi32>
          %274 = arith.minf %in_48, %109 : f16
          %275 = memref.atomic_rmw ori %c-32462_i16, %alloc_9[%c0, %c4, %c5] : (i16, memref<1x15x15xi16>) -> i16
          %276 = arith.divsi %180, %180 : i32
          %277 = vector.extract_strided_slice %165 {offsets = [0, 1], sizes = [1, 4], strides = [1, 1]} : vector<1x15x15xi64> to vector<1x4x15xi64>
          %278 = arith.remf %in_47, %out : f16
          %279 = math.rsqrt %12 : tensor<1x15x15xf16>
          %280 = index.divs %c1, %233
          %281 = math.ceil %0 : tensor<11x12x1xf32>
          %282 = arith.negf %cst_3 : f16
          %283 = math.expm1 %189 : tensor<11x15xf32>
          %284 = math.powf %9, %17 : tensor<11x1xf16>
          %285 = arith.divui %false, %extracted : i1
          %286 = math.absf %133 : f16
          %287 = index.divs %c5, %223
          %alloc_50 = memref.alloc() : memref<11x12x1xi16>
          memref.copy %alloc_18, %alloc_50 : memref<11x12x1xi16> to memref<11x12x1xi16>
          %288 = index.floordivs %63, %40
          %289 = index.mul %135, %c2
          %290 = math.ceil %3 : tensor<1x15xf32>
          %291 = math.expm1 %cst_2 : f32
          %292 = vector.extract_strided_slice %72 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15x15xi16> to vector<1x15x15xi16>
          memref.assume_alignment %alloc_13, 4 : memref<11x1xi16>
          %293 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - d2) mod 32)>(%245, %236, %233, %135)
          %294 = math.ctlz %14 : tensor<1x15x15xi1>
          %295 = math.cos %expanded : tensor<1x15x15x1xf16>
          %296 = math.sqrt %257 : tensor<1x15x15xf16>
          linalg.yield %cst_0 : f16
        } -> tensor<1x15x15xf16>
        %264 = math.powf %cst_0, %133 : f16
        %265 = bufferization.clone %alloc_17 : memref<11x12x1xf16> to memref<11x12x1xf16>
        %266 = index.sizeof
        %267 = memref.load %224[%c9, %c11, %c0, %c0] : memref<11x12x1x1xi32>
        %true = arith.constant true
        linalg.yield %true : i1
      }
    %260 = scf.parallel (%arg3, %arg4) = (%217, %rank_28) to (%c12, %114) step (%c14, %c15) init (%11) -> tensor<1x15xi64> {
      memref.store %extracted_38, %alloc_43[%c9, %c5] : memref<15x15xi1>
      %262 = memref.load %234[%c10, %c0] : memref<11x1xf16>
      %263 = vector.shuffle %177, %177 [0, 1] : vector<1x15x15xi32>, vector<1x15x15xi32>
      %264 = tensor.empty() : tensor<1x15xf16>
      %265 = vector.broadcast %235 : i32 to vector<11x1xi32>
      %266 = vector.gather %264[%rank_39, %c1] [%265], %207, %222 : tensor<1x15xf16>, vector<11x1xi32>, vector<11x1xi1>, vector<11x1xf16> into vector<11x1xf16>
      %267 = arith.cmpf une, %cst, %55 : f32
      %268 = scf.if %false -> (f16) {
        %279 = arith.cmpf une, %cst_1, %cst : f32
        %280 = bufferization.to_memref %expanded : memref<1x15x15x1xf16>
        %281 = math.log10 %258 : tensor<1x15x15xf16>
        %282 = arith.ori %235, %235 : i32
        %283 = tensor.empty() : tensor<1x15xi32>
        %284 = math.fpowi %3, %283 : tensor<1x15xf32>, tensor<1x15xi32>
        %285 = math.absf %258 : tensor<1x15x15xf16>
        %286 = index.sub %23, %c9
        %287 = math.atan2 %3, %3 : tensor<1x15xf32>
        scf.yield %109 : f16
      } else {
        %inserted_46 = tensor.insert %c782217666_i64 into %11[%c0, %c2] : tensor<1x15xi64>
        %279 = math.absf %9 : tensor<11x1xf16>
        %expanded_47 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<11x1xi64> into tensor<11x1x1xi64>
        %280 = arith.divui %180, %105 : i32
        %281 = math.ctlz %180 : i32
        %282 = vector.broadcast %133 : f16 to vector<1xf16>
        %283 = vector.transfer_write %282, %264[%61, %arg4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf16>, tensor<1x15xf16>
        %284 = vector.load %alloc[%c0, %c14] : memref<1x15xi16>, vector<1x15x15xi16>
        %285 = index.sizeof
        scf.yield %cst_3 : f16
      }
      %269 = vector.load %56[%c0, %c1, %c14] : memref<1x15x15xi16>, vector<11x1xi16>
      %270 = math.sqrt %257 : tensor<1x15x15xf16>
      %extracted_44 = tensor.extract %24[%c0, %c5] : tensor<1x15xi16>
      %true = index.bool.constant true
      %271 = arith.ori %c501533197_i32, %c1137689696_i32 : i32
      %272 = tensor.empty() : tensor<11x1xf16>
      %mapped_45 = linalg.map ins(%9 : tensor<11x1xf16>) outs(%272 : tensor<11x1xf16>)
        (%in: f16) {
          %expanded_46 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<11x1xi64> into tensor<11x1x1xi64>
          %279 = math.rsqrt %cst_0 : f16
          %280 = vector.load %224[%c6, %c7, %c0, %c0] : memref<11x12x1x1xi32>, vector<11x12x1xi32>
          %281 = vector.shuffle %126, %126 [0, 1, 2, 3, 6, 8, 10, 13, 14, 22, 24, 25, 26, 27, 28] : vector<15xi32>, vector<15xi32>
          %alloc_47 = memref.alloc() : memref<1x15x15xi32>
          %282 = math.absf %189 : tensor<11x15xf32>
          %alloca_48 = memref.alloca() : memref<1x15x15xi32>
          %283 = arith.remf %268, %cst_3 : f16
          %284 = index.floordivs %c14, %223
          %rank_49 = tensor.rank %189 : tensor<11x15xf32>
          %285 = bufferization.clone %alloc_20 : memref<1xi64> to memref<1xi64>
          %286 = arith.shli %180, %c2131183909_i32 : i32
          %287 = vector.extract_strided_slice %116 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15xf16> to vector<1x15xf16>
          %288 = math.cttz %22 : tensor<i64>
          %289 = vector.shuffle %116, %116 [0, 1] : vector<1x15xf16>, vector<1x15xf16>
          %290 = math.round %in : f16
          %291 = arith.subi %113, %113 : i16
          %292 = arith.cmpf ugt, %109, %133 : f16
          %293 = vector.broadcast %c7 : index to vector<12xindex>
          %294 = vector.broadcast %true : i1 to vector<12xi1>
          vector.scatter %239[%c0, %c6, %c13] [%293], %294, %19 : memref<1x15x15xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
          %expanded_50 = tensor.expand_shape %expanded_26 [[0], [1], [2], [3, 4]] : tensor<1x15x15x1xi1> into tensor<1x15x15x1x1xi1>
          memref.copy %alloc_6, %228 : memref<1x15xi16> to memref<1x15xi16>
          %rank_51 = tensor.rank %189 : tensor<11x15xf32>
          %295 = vector.shuffle %19, %140 [1, 7, 10, 13, 16, 17, 19, 20, 22, 24, 25, 26] : vector<12xi16>, vector<15xi16>
          %296 = math.powf %5, %5 : tensor<11x1xf32>
          %297 = arith.divsi %c1451825322_i32, %c1137689696_i32 : i32
          %298 = vector.load %alloc_17[%c1, %c4, %c0] : memref<11x12x1xf16>, vector<11x1xf16>
          %299 = math.ipowi %c2061977339_i32, %235 : i32
          %300 = arith.floordivsi %true, %true : i1
          %301 = arith.shli %c1137689696_i32, %c2131183909_i32 : i32
          %302 = arith.shrui %c-13517_i16, %227 : i16
          %303 = bufferization.clone %alloc_6 : memref<1x15xi16> to memref<1x15xi16>
          %304 = index.sizeof
          %cst_52 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_52 : f16
        }
      %273 = vector.broadcast %false : i1 to vector<11xi1>
      %274 = vector.maskedload %alloc_43[%c4, %c13], %273, %273 : memref<15x15xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
      %275 = math.rsqrt %0 : tensor<11x12x1xf32>
      %276 = index.floordivs %156, %c5
      %277 = math.cos %17 : tensor<11x1xf16>
      %278 = tensor.empty() : tensor<1x15xi64>
      scf.reduce(%278)  : tensor<1x15xi64> {
      ^bb0(%arg5: tensor<1x15xi64>, %arg6: tensor<1x15xi64>):
        bufferization.dealloc_tensor %4 : tensor<1x15x15xi1>
        %collapsed = tensor.collapse_shape %arg5 [[0, 1]] : tensor<1x15xi64> into tensor<15xi64>
        %279 = arith.divui %c12600_i16, %227 : i16
        %280 = index.divu %c4, %122
        %281 = arith.negf %109 : f16
        %alloc_46 = memref.alloc() : memref<11x1xi1>
        %282 = vector.broadcast %105 : i32 to vector<1x1xi32>
        %283 = vector.outerproduct %255, %249, %282 {kind = #vector.kind<maxsi>} : vector<1xi32>, vector<1xi32>
        %284 = arith.xori %c1451825322_i32, %180 : i32
        %285 = tensor.empty() : tensor<1x15xi64>
        scf.reduce.return %285 : tensor<1x15xi64>
      }
      scf.yield
    }
    %261 = affine.vector_load %alloc[%rank_42, %c2] : memref<1x15xi16>, vector<12xi16>
    affine.vector_store %136, %alloc_8[%205, %238] : memref<11x1xi1>, vector<1xi1>
    vector.print %19 : vector<12xi16>
    vector.print %27 : vector<11x1xf32>
    vector.print %28 : vector<11x12x1xi64>
    vector.print %39 : vector<1x12x1xi64>
    vector.print %41 : vector<6x1xf32>
    vector.print %43 : vector<11x1xf32>
    vector.print %69 : vector<1x15x15xi32>
    vector.print %72 : vector<1x15x15xi16>
    vector.print %76 : vector<11x15xi16>
    vector.print %79 : vector<1x12xi16>
    vector.print %100 : vector<1x15x15xi16>
    vector.print %116 : vector<1x15xf16>
    vector.print %123 : vector<1x15xi16>
    vector.print %124 : vector<15xi32>
    vector.print %125 : vector<15xi1>
    vector.print %126 : vector<15xi32>
    vector.print %129 : vector<1x15x15xf32>
    vector.print %134 : vector<1xi32>
    vector.print %136 : vector<1xi1>
    vector.print %139 : vector<15xi16>
    vector.print %140 : vector<15xi16>
    vector.print %152 : vector<1x15x15xi16>
    vector.print %163 : vector<1x1xf32>
    vector.print %165 : vector<1x15x15xi64>
    vector.print %177 : vector<1x15x15xi32>
    vector.print %207 : vector<11x1xi1>
    vector.print %222 : vector<11x1xf16>
    vector.print %249 : vector<1xi32>
    vector.print %255 : vector<1xi32>
    vector.print %261 : vector<12xi16>
    vector.print %c271623502_i64 : i64
    vector.print %c501533197_i32 : i32
    vector.print %cst : f32
    vector.print %c12600_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c782217666_i64 : i64
    vector.print %c-13517_i16 : i16
    vector.print %c-32462_i16 : i16
    vector.print %false : i1
    vector.print %c1137689696_i32 : i32
    vector.print %c1451825322_i32 : i32
    vector.print %cst_1 : f32
    vector.print %c2061977339_i32 : i32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c2131183909_i32 : i32
    vector.print %extracted : i1
    vector.print %55 : f32
    vector.print %c1_i16 : i16
    vector.print %105 : i32
    vector.print %109 : f16
    vector.print %113 : i16
    vector.print %133 : f16
    vector.print %180 : i32
    vector.print %extracted_38 : i1
    vector.print %227 : i16
    vector.print %235 : i32
    return %220 : index
  }
}
