module {
  func.func @func1(%arg0: i32, %arg1: i64, %arg2: tensor<12xf16>) {
    %cst = arith.constant 1.6878359E+9 : f32
    %c-15493_i16 = arith.constant -15493 : i16
    %c1367898895_i32 = arith.constant 1367898895 : i32
    %c1843903306_i32 = arith.constant 1843903306 : i32
    %cst_0 = arith.constant 3.227200e+04 : f16
    %c13157_i16 = arith.constant 13157 : i16
    %c2140998545_i32 = arith.constant 2140998545 : i32
    %c-20733_i16 = arith.constant -20733 : i16
    %cst_1 = arith.constant 1.968000e+04 : f16
    %cst_2 = arith.constant 1.11155763E+9 : f32
    %cst_3 = arith.constant 4.822400e+04 : f16
    %cst_4 = arith.constant 1.371200e+04 : f16
    %cst_5 = arith.constant 0x4E6DCD39 : f32
    %c14929_i16 = arith.constant 14929 : i16
    %c948641696_i32 = arith.constant 948641696 : i32
    %true = arith.constant true
    %0 = tensor.empty() : tensor<12x12xi1>
    %1 = tensor.empty() : tensor<12xf32>
    %2 = tensor.empty() : tensor<6xi32>
    %3 = tensor.empty() : tensor<12x12xi32>
    %4 = tensor.empty() : tensor<6xf32>
    %5 = tensor.empty() : tensor<12x12xi32>
    %6 = tensor.empty() : tensor<6xi32>
    %7 = tensor.empty() : tensor<6xi32>
    %8 = tensor.empty() : tensor<12xf32>
    %9 = tensor.empty() : tensor<12xf16>
    %10 = tensor.empty() : tensor<6x12x7xi32>
    %11 = tensor.empty() : tensor<12xi16>
    %12 = tensor.empty() : tensor<6xi64>
    %13 = tensor.empty() : tensor<12xf16>
    %14 = tensor.empty() : tensor<6x12x7xf16>
    %15 = tensor.empty() : tensor<6x12x7xi16>
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
    %alloc = memref.alloc() : memref<12x12xf32>
    %alloc_6 = memref.alloc() : memref<12xi16>
    %alloc_7 = memref.alloc() : memref<12xf32>
    %alloc_8 = memref.alloc() : memref<12x12xi16>
    %alloc_9 = memref.alloc() : memref<12xi64>
    %alloc_10 = memref.alloc() : memref<6xi16>
    %alloc_11 = memref.alloc() : memref<6xf32>
    %alloc_12 = memref.alloc() : memref<6x12x7xi32>
    %alloc_13 = memref.alloc() : memref<6x12x7xi1>
    %alloc_14 = memref.alloc() : memref<6xf32>
    %alloc_15 = memref.alloc() : memref<6x12x7xf32>
    %alloc_16 = memref.alloc() : memref<6x12x7xi64>
    %alloc_17 = memref.alloc() : memref<12x12xi16>
    %alloc_18 = memref.alloc() : memref<6xi32>
    %alloc_19 = memref.alloc() : memref<12xi1>
    %alloc_20 = memref.alloc() : memref<6x12x7xf16>
    %16 = tensor.empty() : tensor<12xf32>
    %17 = linalg.copy ins(%1 : tensor<12xf32>) outs(%16 : tensor<12xf32>) -> tensor<12xf32>
    %18 = tensor.empty() : tensor<7x6x12xi32>
    %transposed = linalg.transpose ins(%10 : tensor<6x12x7xi32>) outs(%18 : tensor<7x6x12xi32>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<6xi32>
    %reduced = linalg.reduce ins(%10 : tensor<6x12x7xi32>) outs(%19 : tensor<6xi32>) dimensions = [1, 2] 
      (%in: i32, %init: i32) {
        %248 = tensor.empty(%c1, %c10) : tensor<?x12x?xi32>
        %249 = math.tan %cst_0 : f16
        %250 = math.ipowi %0, %0 : tensor<12x12xi1>
        %251 = math.atan %4 : tensor<6xf32>
        %252 = memref.realloc %alloc_14 : memref<6xf32> to memref<6xf32>
        %253 = arith.remf %cst, %cst_5 : f32
        %254 = index.add %c2, %c3
        %255 = math.expm1 %8 : tensor<12xf32>
        %c1_i32_42 = arith.constant 1 : i32
        linalg.yield %c1_i32_42 : i32
      }
    scf.parallel (%arg3, %arg4) = (%c2, %c14) to (%c9, %c12) step (%c14, %c11) {
      %248 = scf.if %true -> (memref<6xi32>) {
        %263 = vector.broadcast %c-15493_i16 : i16 to vector<1xi16>
        %264 = vector.extract %263[0] : vector<1xi16>
        %265 = vector.extract %263[0] : vector<1xi16>
        %266 = vector.matrix_multiply %263, %263 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        memref.assume_alignment %alloc_10, 1 : memref<6xi16>
        %267 = math.copysign %8, %8 : tensor<12xf32>
        affine.store %c948641696_i32, %alloc_18[%c3] : memref<6xi32>
        %false_44 = index.bool.constant false
        %268 = tensor.empty(%c1, %c13) : tensor<?x?x7xf32>
        scf.yield %alloc_18 : memref<6xi32>
      } else {
        %263 = arith.muli %c1367898895_i32, %c1843903306_i32 : i32
        %264 = index.add %arg4, %c7
        memref.tensor_store %8, %alloc_7 : memref<12xf32>
        %265 = math.round %13 : tensor<12xf16>
        %true_44 = arith.constant true
        %266 = bufferization.clone %alloc_16 : memref<6x12x7xi64> to memref<6x12x7xi64>
        %267 = arith.minui %c-20733_i16, %c14929_i16 : i16
        %268 = arith.remsi %true, %true : i1
        scf.yield %alloc_18 : memref<6xi32>
      }
      %rank_42 = tensor.rank %7 : tensor<6xi32>
      %249 = math.powf %13, %13 : tensor<12xf16>
      %alloc_43 = memref.alloc() : memref<6xi64>
      memref.tensor_store %12, %alloc_43 : memref<6xi64>
      %250 = vector.broadcast %c2140998545_i32 : i32 to vector<1xi32>
      %251 = vector.insert %c1843903306_i32, %250 [0] : i32 into vector<1xi32>
      %252 = arith.minf %cst_5, %cst : f32
      %253 = math.exp2 %cst_4 : f16
      %254 = math.ipowi %19, %6 : tensor<6xi32>
      %255 = vector.insert %c2140998545_i32, %250 [0] : i32 into vector<1xi32>
      %256 = arith.subi %c2140998545_i32, %c1367898895_i32 : i32
      %257 = vector.create_mask %c3, %c7 : vector<12x12xi1>
      %258 = math.rsqrt %13 : tensor<12xf16>
      %259 = arith.cmpf une, %cst_2, %cst_2 : f32
      %260 = vector.multi_reduction <or>, %257, %257 [] : vector<12x12xi1> to vector<12x12xi1>
      %261 = arith.cmpf one, %cst_5, %cst_5 : f32
      %262 = math.atan2 %cst_4, %cst_1 : f16
      scf.yield
    }
    %20 = affine.vector_load %alloc_9[%c4] : memref<12xi64>, vector<7xi64>
    affine.vector_store %20, %alloc_16[%c2, %c14, %c9] : memref<6x12x7xi64>, vector<7xi64>
    %alloc_21 = memref.alloc() : memref<6xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%12, %alloc_21 : tensor<6xi64>, memref<6xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = math.absf %16 : tensor<12xf32>
    %24 = index.mul %c4, %c11
    %25 = math.atan %cst_2 : f32
    %26 = math.ctpop %c948641696_i32 : i32
    %27 = math.rsqrt %14 : tensor<6x12x7xf16>
    %28 = math.floor %4 : tensor<6xf32>
    %29 = math.sqrt %9 : tensor<12xf16>
    %30 = arith.muli %c-15493_i16, %c14929_i16 : i16
    %31 = arith.maxsi %c-20733_i16, %c-15493_i16 : i16
    %32 = arith.cmpf olt, %cst_3, %cst_0 : f16
    %33 = index.add %24, %c14
    %34 = math.cttz %12 : tensor<6xi64>
    scf.if %true {
      %248 = math.log2 %cst_5 : f32
      %249 = arith.maxf %cst_1, %cst_1 : f16
      %250 = memref.atomic_rmw addf %cst_2, %alloc[%c10, %c7] : (f32, memref<12x12xf32>) -> f32
      %cast_42 = tensor.cast %8 : tensor<12xf32> to tensor<?xf32>
      %251 = vector.transpose %20, [0] : vector<7xi64> to vector<7xi64>
      %252 = bufferization.to_tensor %alloc_14 : memref<6xf32>
      %253 = arith.maxsi %c-15493_i16, %c-20733_i16 : i16
      %254 = scf.while (%arg3 = %cst_4) : (f16) -> f16 {
        %255 = math.copysign %9, %9 : tensor<12xf16>
        %256 = math.exp2 %14 : tensor<6x12x7xf16>
        %257 = arith.addf %arg3, %cst_3 : f16
        %258 = bufferization.clone %alloc_9 : memref<12xi64> to memref<12xi64>
        %259 = affine.min affine_map<(d0, d1, d2) -> (d2)>(%c5, %c1, %c6)
        %260 = bufferization.clone %alloc_16 : memref<6x12x7xi64> to memref<6x12x7xi64>
        bufferization.dealloc_tensor %21 : tensor<i64>
        %261 = math.rsqrt %252 : tensor<6xf32>
        scf.condition(%true) %cst_0 : f16
      } do {
      ^bb0(%arg3: f16):
        %255 = arith.cmpf ueq, %cst, %cst : f32
        %256 = math.cos %8 : tensor<12xf32>
        %257 = index.add %c14, %c13
        memref.store %c14929_i16, %alloc_8[%c4, %c10] : memref<12x12xi16>
        %258 = tensor.empty() : tensor<12x12xi32>
        %259 = arith.shrsi %c2140998545_i32, %c948641696_i32 : i32
        %260 = arith.cmpf ogt, %cst_0, %cst_1 : f16
        %261 = math.log2 %14 : tensor<6x12x7xf16>
        %cst_43 = arith.constant 1.000000e+00 : f32
        %262 = vector.transfer_read %4[%c15], %cst_43 : tensor<6xf32>, vector<f32>
        %263 = math.expm1 %252 : tensor<6xf32>
        %264 = math.atan %14 : tensor<6x12x7xf16>
        %265 = vector.extract %20[6] : vector<7xi64>
        memref.assume_alignment %alloc_17, 2 : memref<12x12xi16>
        %266 = arith.muli %c948641696_i32, %c1843903306_i32 : i32
        %267 = vector.reduction <xor>, %20 : vector<7xi64> into i64
        %c268751109_i32 = arith.constant 268751109 : i32
        scf.yield %cst_3 : f16
      }
    } else {
      %false_42 = index.bool.constant false
      %248 = math.round %9 : tensor<12xf16>
      %249 = arith.ceildivsi %c1367898895_i32, %c948641696_i32 : i32
      %250 = index.sizeof
      %251 = memref.atomic_rmw ori %c-15493_i16, %alloc_6[%c9] : (i16, memref<12xi16>) -> i16
      %252 = arith.shli %c2140998545_i32, %c1367898895_i32 : i32
      %253 = math.exp2 %9 : tensor<12xf16>
      %254 = tensor.empty() : tensor<6x12x7xf16>
    }
    %35 = math.absf %14 : tensor<6x12x7xf16>
    %36 = math.absf %cst : f32
    %37 = math.copysign %9, %9 : tensor<12xf16>
    memref.assume_alignment %alloc_17, 1 : memref<12x12xi16>
    %38 = arith.shrui %c14929_i16, %c-20733_i16 : i16
    %c1_i32 = arith.constant 1 : i32
    %39 = vector.transfer_read %3[%c7, %c1], %c1_i32 : tensor<12x12xi32>, vector<i32>
    %40 = math.ceil %16 : tensor<12xf32>
    %41 = math.log %cst_2 : f32
    %42 = arith.remsi %true, %true : i1
    %generated = tensor.generate %c6, %c14 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %248 = arith.shrui %c2140998545_i32, %c948641696_i32 : i32
      %249 = arith.maxsi %c2140998545_i32, %c1843903306_i32 : i32
      %250 = index.mul %33, %c3
      %251 = math.cos %17 : tensor<12xf32>
      tensor.yield %c13157_i16 : i16
    } : tensor<?x?x7xi16>
    %false = index.bool.constant false
    memref.store %true, %alloc_13[%c5, %c9, %c2] : memref<6x12x7xi1>
    %43 = math.log1p %cst_2 : f32
    %44 = arith.subi %c-20733_i16, %c-20733_i16 : i16
    %45 = arith.muli %c14929_i16, %c14929_i16 : i16
    %46 = vector.transpose %20, [0] : vector<7xi64> to vector<7xi64>
    %cast = tensor.cast %3 : tensor<12x12xi32> to tensor<?x?xi32>
    %47 = index.mul %c2, %c10
    %48 = arith.addf %cst_4, %cst_0 : f16
    %49 = vector.broadcast %cst_2 : f32 to vector<6x12x7xf32>
    %50 = vector.fma %49, %49, %49 : vector<6x12x7xf32>
    %51 = vector.extract %49[1, 11] : vector<6x12x7xf32>
    %52 = arith.minui %c948641696_i32, %c1843903306_i32 : i32
    %53 = vector.broadcast %cst : f32 to vector<12x7xf32>
    %dest, %accumulated_value = vector.scan <minf>, %49, %53 {inclusive = false, reduction_dim = 0 : i64} : vector<6x12x7xf32>, vector<12x7xf32>
    %c1840859868_i64 = arith.constant 1840859868 : i64
    %54 = arith.addf %cst_2, %cst : f32
    %55 = arith.muli %c-15493_i16, %c14929_i16 : i16
    %56 = arith.cmpf ugt, %cst_4, %cst_3 : f16
    %57 = arith.andi %c1_i32, %c1_i32 : i32
    %58 = arith.ori %false, %true : i1
    %59 = arith.remui %c13157_i16, %c14929_i16 : i16
    %60 = index.add %33, %c6
    %61 = math.exp2 %9 : tensor<12xf16>
    %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
    %62 = math.floor %4 : tensor<6xf32>
    %63 = arith.ceildivsi %c13157_i16, %c14929_i16 : i16
    %64 = affine.if affine_set<(d0) : (d0 == 0, -(d0 ceildiv 2 + 64) + 64 == 0, ((d0 mod 16) ceildiv 16) ceildiv 16 >= 0, ((d0 mod 16) ceildiv 16) ceildiv 16 + 128 >= 0)>(%c1) -> memref<12x12xf16> {
      %248 = arith.shli %c2140998545_i32, %c2140998545_i32 : i32
      %rank_42 = tensor.rank %15 : tensor<6x12x7xi16>
      memref.store %cst, %alloc_15[%c2, %c2, %c1] : memref<6x12x7xf32>
      %249 = arith.shrsi %true, %true : i1
      %250 = math.cttz %18 : tensor<7x6x12xi32>
      %251 = tensor.empty() : tensor<12x12xi32>
      %252 = linalg.matmul ins(%5, %3 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%251 : tensor<12x12xi32>) -> tensor<12x12xi32>
      %253 = math.rsqrt %cst_0 : f16
      %254 = index.ceildivu %c9, %c1
      %alloc_43 = memref.alloc() : memref<12x12xf16>
      affine.yield %alloc_43 : memref<12x12xf16>
    } else {
      %248 = arith.divsi %true, %false : i1
      memref.store %true, %alloc_13[%c4, %c3, %c0] : memref<6x12x7xi1>
      %249 = arith.remf %cst_0, %cst_1 : f16
      %250 = index.divu %c8, %24
      %251 = index.mul %c14, %c1
      %splat = tensor.splat %c1843903306_i32 : tensor<12xi32>
      %252 = math.ceil %17 : tensor<12xf32>
      %253 = vector.broadcast %cst : f32 to vector<12x7xf32>
      %dest_42, %accumulated_value_43 = vector.scan <minf>, %50, %253 {inclusive = false, reduction_dim = 0 : i64} : vector<6x12x7xf32>, vector<12x7xf32>
      %alloc_44 = memref.alloc() : memref<12x12xf16>
      affine.yield %alloc_44 : memref<12x12xf16>
    }
    %rank = tensor.rank %11 : tensor<12xi16>
    %65 = vector.extract %51[6] : vector<7xf32>
    %c30479_i16 = arith.constant 30479 : i16
    %66 = arith.subi %c1_i32, %c2140998545_i32 : i32
    %67 = arith.remsi %c948641696_i32, %c1367898895_i32 : i32
    %68 = arith.divf %cst_2, %cst_5 : f32
    %c0_i64 = arith.constant 0 : i64
    %69 = vector.broadcast %c0_i64 : i64 to vector<7x7xi64>
    %70 = vector.outerproduct %20, %20, %69 {kind = #vector.kind<add>} : vector<7xi64>, vector<7xi64>
    %71 = arith.addi %c2140998545_i32, %c1_i32 : i32
    %72 = math.sqrt %cst_3 : f16
    %c1_i64 = arith.constant 1 : i64
    %73 = vector.broadcast %c1_i64 : i64 to vector<12x12xi64>
    vector.transfer_write %73, %alloc_16[%c11, %c6, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x12xi64>, memref<6x12x7xi64>
    %74 = arith.minf %cst, %cst_5 : f32
    %75 = vector.load %alloc_16[%c1, %c9, %c6] : memref<6x12x7xi64>, vector<12xi64>
    %76 = arith.cmpf ogt, %cst_1, %cst_4 : f16
    %77 = index.sub %c15, %c8
    %78 = arith.remui %c1_i64, %c1_i64 : i64
    %79 = index.floordivs %c9, %47
    %80 = bufferization.to_tensor %alloc_9 : memref<12xi64>
    %81 = math.ceil %cst_2 : f32
    %82 = math.ctlz %false : i1
    %83 = index.casts %33 : index to i32
    %84 = index.maxu %c4, %c11
    %true_22 = index.bool.constant true
    %85 = math.round %4 : tensor<6xf32>
    %86 = vector.create_mask %c10 : vector<12xi1>
    %87 = math.absf %8 : tensor<12xf32>
    %88 = index.mul %84, %c8
    %89 = arith.addi %c948641696_i32, %c1367898895_i32 : i32
    %expanded_23 = tensor.expand_shape %generated [[0], [1], [2, 3]] : tensor<?x?x7xi16> into tensor<?x?x7x1xi16>
    memref.store %c948641696_i32, %alloc_18[%c0] : memref<6xi32>
    %90 = index.divu %c0, %79
    %91 = arith.addf %cst, %cst : f32
    %rank_24 = tensor.rank %12 : tensor<6xi64>
    %92 = vector.matrix_multiply %86, %86 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
    %93 = math.round %9 : tensor<12xf16>
    %94 = math.copysign %8, %8 : tensor<12xf32>
    %95 = vector.insertelement %true, %92[%c2 : index] : vector<1xi1>
    %rank_25 = tensor.rank %21 : tensor<i64>
    %96 = tensor.empty() : tensor<6xi1>
    memref.assume_alignment %alloc_11, 1 : memref<6xf32>
    %97 = math.atan2 %13, %9 : tensor<12xf16>
    %98 = affine.min affine_map<(d0, d1) -> (d1 - 2, d0 - ((d0 - 8) * 4) mod 64, d0)>(%84, %c9)
    %99 = math.rsqrt %cst_1 : f16
    %cast_26 = tensor.cast %9 : tensor<12xf16> to tensor<?xf16>
    %100 = vector.insert %cst_5, %51 [5] : f32 into vector<7xf32>
    %101 = index.add %rank, %c14
    %102 = vector.extract_strided_slice %49 {offsets = [1], sizes = [3], strides = [1]} : vector<6x12x7xf32> to vector<3x12x7xf32>
    %cst_27 = arith.constant 1.85464627E+9 : f32
    %103 = arith.remui %c1_i32, %c1_i32 : i32
    %104 = index.casts %c15 : index to i32
    %105 = index.maxu %90, %c0
    %106 = math.cos %expanded : tensor<12x1xf16>
    %107 = vector.transpose %73, [0, 1] : vector<12x12xi64> to vector<12x12xi64>
    %108 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %51, %51, %cst_2 : vector<7xf32>, vector<7xf32> into f32
    %109 = arith.mulf %cst, %cst_5 : f32
    %110 = arith.shli %true, %true_22 : i1
    %111 = math.atan %8 : tensor<12xf32>
    %112 = vector.broadcast %c1_i64 : i64 to vector<6xi64>
    %113 = vector.broadcast %false : i1 to vector<6xi1>
    %114 = vector.maskedload %alloc_16[%c0, %c6, %c6], %113, %112 : memref<6x12x7xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %115 = vector.broadcast %cst_2 : f32 to vector<12x7xf32>
    %116 = vector.insert %115, %102 [2] : vector<12x7xf32> into vector<3x12x7xf32>
    %117 = math.rsqrt %8 : tensor<12xf32>
    %118 = vector.extract_strided_slice %102 {offsets = [0, 7], sizes = [1, 4], strides = [1, 1]} : vector<3x12x7xf32> to vector<1x4x7xf32>
    %119 = vector.extract %86[4] : vector<12xi1>
    %120 = math.round %cst_3 : f16
    %121 = vector.broadcast %cst : f32 to vector<1x4x6x12xf32>
    %122 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %118, %49, %121 : vector<1x4x7xf32>, vector<6x12x7xf32> into vector<1x4x6x12xf32>
    %123 = scf.while (%arg3 = %51) : (vector<7xf32>) -> vector<7xf32> {
      %248 = vector.insert %false, %92 [0] : i1 into vector<1xi1>
      %249 = index.ceildivu %c14, %c14
      %250 = math.cttz %10 : tensor<6x12x7xi32>
      %251 = arith.minui %true, %true : i1
      %252 = vector.matrix_multiply %113, %86 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<6xi1>, vector<12xi1>) -> vector<2xi1>
      %253 = tensor.empty() : tensor<12x12xi32>
      %254 = linalg.matmul ins(%5, %5 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%253 : tensor<12x12xi32>) -> tensor<12x12xi32>
      %255 = vector.reduction <or>, %252 : vector<2xi1> into i1
      %256 = arith.remsi %false, %true_22 : i1
      scf.condition(%false) %51 : vector<7xf32>
    } do {
    ^bb0(%arg3: vector<7xf32>):
      %248 = arith.addf %cst_0, %cst_3 : f16
      %249 = arith.xori %true, %false : i1
      %250 = tensor.empty() : tensor<12x7x6xf16>
      %alloc_42 = memref.alloc() : memref<7x6x12xf16>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250, %alloc_42, %13 : tensor<12x7x6xf16>, memref<7x6x12xf16>, tensor<12xf16>) outs(%14 : tensor<6x12x7xf16>) {
      ^bb0(%in: f16, %in_44: f16, %in_45: f16, %out: f16):
        %266 = math.copysign %cst_0, %cst_4 : f16
        %267 = arith.remf %cst, %cst_2 : f32
        %268 = math.atan2 %8, %1 : tensor<12xf32>
        %269 = arith.minsi %c14929_i16, %c13157_i16 : i16
        %270 = bufferization.to_tensor %alloc_8 : memref<12x12xi16>
        %271 = vector.maskedload %alloc_16[%c3, %c7, %c6], %86, %75 : memref<6x12x7xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %272 = arith.remf %cst_3, %out : f16
        affine.store %c1_i64, %alloc_16[%c9, %c3, %c12] : memref<6x12x7xi64>
        %273 = arith.minui %c1_i64, %c1_i64 : i64
        memref.assume_alignment %alloc, 16 : memref<12x12xf32>
        %alloca = memref.alloca() : memref<12xi1>
        %274 = arith.cmpf ole, %cst_4, %in_44 : f16
        %275 = math.ipowi %21, %21 : tensor<i64>
        %276 = math.copysign %in, %in : f16
        %277 = math.expm1 %1 : tensor<12xf32>
        %278 = vector.load %alloc_20[%c4, %c3, %c3] : memref<6x12x7xf16>, vector<6xf16>
        %false_46 = arith.constant false
        %279 = arith.remsi %c948641696_i32, %c1_i32 : i32
        %280 = math.fma %13, %9, %13 : tensor<12xf16>
        %281 = arith.cmpi uge, %true, %false : i1
        %282 = vector.extract %102[0] : vector<3x12x7xf32>
        %283 = vector.broadcast %cst_5 : f32 to vector<12x12xf32>
        %284 = vector.fma %283, %283, %283 : vector<12x12xf32>
        %285 = vector.matrix_multiply %92, %86 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
        %286 = math.ipowi %7, %2 : tensor<6xi32>
        %287 = math.rsqrt %out : f16
        %288 = index.mul %47, %c12
        %289 = vector.extract %20[1] : vector<7xi64>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 64, d1)>(%c4, %c9, %77, %c2)
        %291 = math.expm1 %13 : tensor<12xf16>
        %292 = math.cos %out : f16
        %293 = index.floordivs %98, %90
        %294 = vector.extract %283[6] : vector<12x12xf32>
        linalg.yield %cst_3 : f16
      } -> tensor<6x12x7xf16>
      %252 = vector.load %alloc_8[%c3, %c2] : memref<12x12xi16>, vector<12xi16>
      %253 = index.ceildivu %c3, %c9
      %254 = vector.broadcast %c1843903306_i32 : i32 to vector<12xi32>
      %255 = vector.maskedload %alloc_12[%c5, %c3, %c6], %86, %254 : memref<6x12x7xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %256 = math.ctlz %c1_i32 : i32
      %cast_43 = tensor.cast %0 : tensor<12x12xi1> to tensor<?x?xi1>
      %257 = vector.broadcast %cst_5 : f32 to vector<6xf32>
      %258 = vector.fma %257, %257, %257 : vector<6xf32>
      %259 = vector.broadcast %false : i1 to vector<12xi1>
      %260 = index.mul %rank_24, %77
      %261 = math.expm1 %cst_5 : f32
      %262 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 + d1 + 8) * 32 - d1 >= 0, d3 floordiv 2 - (d0 floordiv 16) * 8 >= 0, d2 + 1 == 0, d2 + 1 == 0)>(%c2, %c2, %c8, %c0) -> i1 {
        %266 = index.ceildivs %88, %88
        %267 = arith.subi %c948641696_i32, %c1367898895_i32 : i32
        %268 = index.divu %90, %rank
        %269 = index.mul %98, %rank_24
        %270 = math.atan %9 : tensor<12xf16>
        %271 = vector.multi_reduction <maxf>, %115, %115 [] : vector<12x7xf32> to vector<12x7xf32>
        %272 = arith.minui %c1_i32, %c948641696_i32 : i32
        %273 = arith.minf %cst_4, %cst_0 : f16
        affine.yield %true_22 : i1
      } else {
        %266 = arith.ori %c-15493_i16, %c-15493_i16 : i16
        %267 = index.casts %24 : index to i32
        %268 = arith.ceildivsi %c1_i64, %c1_i64 : i64
        %269 = vector.create_mask %33 : vector<12xi1>
        %inserted = tensor.insert %cst into %8[%c5] : tensor<12xf32>
        %270 = index.ceildivs %c2, %c8
        %271 = arith.minsi %c948641696_i32, %c948641696_i32 : i32
        %272 = index.divu %c1, %rank_24
        affine.yield %true_22 : i1
      }
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<6x12x7xi16>) {
      ^bb0(%out: i16):
        %266 = math.ipowi %c948641696_i32, %c2140998545_i32 : i32
        %267 = arith.negf %cst_3 : f16
        %cst_44 = arith.constant 1.000000e+00 : f32
        %cst_45 = arith.constant 0.000000e+00 : f32
        %268 = vector.transfer_read %alloc_7[%c3], %cst_45 : memref<12xf32>, vector<f32>
        %269 = tensor.empty() : tensor<12x12xi1>
        %270 = linalg.matmul ins(%0, %0 : tensor<12x12xi1>, tensor<12x12xi1>) outs(%269 : tensor<12x12xi1>) -> tensor<12x12xi1>
        %271 = vector.create_mask %c11, %260, %c0 : vector<6x12x7xi1>
        %272 = affine.min affine_map<(d0, d1) -> ((d0 - 4) mod 16)>(%24, %c7)
        %273 = vector.maskedload %alloc_18[%c3], %259, %255 : memref<6xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %274 = arith.remf %cst_44, %cst_5 : f32
        %275 = math.floor %13 : tensor<12xf16>
        %276 = vector.create_mask %33 : vector<12xi1>
        memref.store %c-15493_i16, %alloc_6[%c11] : memref<12xi16>
        %277 = arith.subi %c2140998545_i32, %c948641696_i32 : i32
        %cast_46 = tensor.cast %18 : tensor<7x6x12xi32> to tensor<?x?x?xi32>
        %cst_47 = arith.constant 3.577600e+04 : f16
        memref.assume_alignment %alloc_14, 4 : memref<6xf32>
        %278 = arith.remf %cst_44, %cst_44 : f32
        %279 = math.rsqrt %8 : tensor<12xf32>
        %280 = math.fma %4, %4, %4 : tensor<6xf32>
        %281 = math.cos %expanded : tensor<12x1xf16>
        %rank_48 = tensor.rank %10 : tensor<6x12x7xi32>
        %282 = bufferization.clone %alloc_14 : memref<6xf32> to memref<6xf32>
        %283 = math.sqrt %13 : tensor<12xf16>
        %284 = index.maxu %33, %98
        %285 = vector.broadcast %cst_2 : f32 to vector<12xf32>
        %286 = vector.fma %285, %285, %285 : vector<12xf32>
        %287 = math.log %1 : tensor<12xf32>
        %288 = vector.extract %112[2] : vector<6xi64>
        %289 = math.fma %9, %13, %13 : tensor<12xf16>
        %290 = vector.multi_reduction <mul>, %86, %259 [] : vector<12xi1> to vector<12xi1>
        %291 = arith.andi %c13157_i16, %c-20733_i16 : i16
        %cast_49 = tensor.cast %269 : tensor<12x12xi1> to tensor<?x?xi1>
        %292 = math.rsqrt %8 : tensor<12xf32>
        memref.store %cst_2, %alloc_14[%c2] : memref<6xf32>
        linalg.yield %c-20733_i16 : i16
      } -> tensor<6x12x7xi16>
      %264 = vector.broadcast %true : i1 to vector<7xi1>
      %265 = vector.maskedload %alloc_14[%c0], %264, %51 : memref<6xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      memref.assume_alignment %alloc_18, 16 : memref<6xi32>
      scf.yield %51 : vector<7xf32>
    }
    %124 = arith.remf %cst, %cst_5 : f32
    %125 = vector.broadcast %true : i1 to vector<1x1xi1>
    %126 = vector.outerproduct %92, %92, %125 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
    memref.store %cst_2, %alloc_11[%c1] : memref<6xf32>
    %127 = math.log2 %16 : tensor<12xf32>
    %128 = arith.minui %c13157_i16, %c-20733_i16 : i16
    %129 = arith.xori %c1_i32, %c2140998545_i32 : i32
    memref.store %c14929_i16, %alloc_6[%c8] : memref<12xi16>
    %130 = math.exp %cst_2 : f32
    %131 = arith.maxsi %c13157_i16, %c-20733_i16 : i16
    %132 = arith.minsi %c1843903306_i32, %c948641696_i32 : i32
    %133 = math.log2 %17 : tensor<12xf32>
    %134 = math.cos %16 : tensor<12xf32>
    %135 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %73, %75, %75 : vector<12x12xi64>, vector<12xi64> into vector<12xi64>
    %136 = arith.subi %true_22, %true_22 : i1
    %137 = math.absf %14 : tensor<6x12x7xf16>
    %138 = math.ipowi %11, %11 : tensor<12xi16>
    %alloc_28 = memref.alloc() : memref<6xi32>
    memref.store %true, %alloc_19[%c2] : memref<12xi1>
    %139 = index.ceildivs %47, %88
    %140 = index.sub %c14, %c9
    %141 = vector.insert %75, %73 [8] : vector<12xi64> into vector<12x12xi64>
    %142 = math.log1p %9 : tensor<12xf16>
    %143 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %112, %114, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
    %144 = math.atan2 %cst_4, %cst_1 : f16
    %145 = index.mul %c1, %105
    %146 = math.exp2 %13 : tensor<12xf16>
    %147 = arith.andi %c2140998545_i32, %c1367898895_i32 : i32
    %148 = vector.load %alloc_17[%c1, %c3] : memref<12x12xi16>, vector<12xi16>
    vector.print %115 : vector<12x7xf32>
    %149 = index.ceildivu %60, %79
    %150 = arith.shli %true_22, %false : i1
    %151 = index.casts %c1367898895_i32 : i32 to index
    %152 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 64, d1, (d0 + 16) * 64)>(%c1, %77, %c4)
    %alloc_29 = memref.alloc() : memref<6x12x7xi1>
    memref.copy %alloc_13, %alloc_29 : memref<6x12x7xi1> to memref<6x12x7xi1>
    %153 = math.cttz %5 : tensor<12x12xi32>
    %154 = affine.min affine_map<(d0, d1) -> ((d0 - 127) floordiv 32, d0 ceildiv 16)>(%c12, %c10)
    %155 = arith.remf %cst_5, %cst : f32
    %alloc_30 = memref.alloc() : memref<6xi16>
    memref.copy %alloc_10, %alloc_30 : memref<6xi16> to memref<6xi16>
    %156 = vector.matrix_multiply %51, %51 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %c1_i32_31 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %157 = vector.transfer_read %10[%c2, %152, %c5], %c0_i32 : tensor<6x12x7xi32>, vector<i32>
    %158 = math.log %14 : tensor<6x12x7xf16>
    %159 = arith.remsi %c1_i32, %c1_i32 : i32
    %c2001118133_i64 = arith.constant 2001118133 : i64
    %160 = vector.matrix_multiply %92, %86 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi1>, vector<12xi1>) -> vector<12xi1>
    %161 = math.log2 %9 : tensor<12xf16>
    bufferization.dealloc_tensor %4 : tensor<6xf32>
    %162 = arith.ceildivsi %c1_i32_31, %c1367898895_i32 : i32
    %163 = math.ctpop %c1843903306_i32 : i32
    %164 = math.cos %cst_5 : f32
    %generated_32 = tensor.generate %140 {
    ^bb0(%arg3: index, %arg4: index):
      %248 = vector.broadcast %cst : f32 to vector<6x12x7xf32>
      %249 = vector.fma %248, %50, %50 : vector<6x12x7xf32>
      %250 = math.sqrt %9 : tensor<12xf16>
      %251 = index.maxu %c10, %79
      bufferization.dealloc_tensor %15 : tensor<6x12x7xi16>
      tensor.yield %true : i1
    } : tensor<?x12xi1>
    affine.store %c14929_i16, %alloc_17[%c5, %c13] : memref<12x12xi16>
    %165 = index.sizeof
    %166 = math.cttz %c-20733_i16 : i16
    %167 = math.expm1 %cst_4 : f16
    %168 = arith.shrsi %c1_i64, %c1_i64 : i64
    %169 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 4 == 0, d0 >= 0)>(%c6, %c5, %c11, %c0) -> memref<12xf16> {
      %248 = math.ipowi %c2140998545_i32, %c1843903306_i32 : i32
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_42 = arith.constant 0 : i16
      %249 = vector.transfer_read %alloc_17[%c5, %77], %c0_i16_42 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<12x12xi16>, vector<6xi16>
      %250 = arith.muli %false, %false : i1
      %251 = index.divu %c13, %151
      %252 = arith.subi %false, %true : i1
      %253 = math.log2 %cst_5 : f32
      %254 = math.log1p %expanded : tensor<12x1xf16>
      %255 = arith.remui %c1_i32_31, %c1367898895_i32 : i32
      %alloc_43 = memref.alloc() : memref<12xf16>
      affine.yield %alloc_43 : memref<12xf16>
    } else {
      scf.execute_region {
        %255 = index.casts %c14929_i16 : i16 to index
        %256 = arith.minui %c2140998545_i32, %c1367898895_i32 : i32
        %257 = vector.reduction <minsi>, %92 : vector<1xi1> into i1
        vector.print %50 : vector<6x12x7xf32>
        %258 = math.cos %8 : tensor<12xf32>
        %259 = arith.muli %c1_i64, %c1_i64 : i64
        %260 = math.log1p %17 : tensor<12xf32>
        %261 = math.round %cst_5 : f32
        %262 = math.cos %14 : tensor<6x12x7xf16>
        %263 = math.round %cst_5 : f32
        %264 = index.sub %77, %152
        %rank_43 = tensor.rank %4 : tensor<6xf32>
        %265 = arith.addi %c948641696_i32, %c948641696_i32 : i32
        %266 = arith.mulf %cst_2, %cst_2 : f32
        %expanded_44 = tensor.expand_shape %96 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
        %267 = arith.addf %cst_4, %cst_3 : f16
        scf.yield
      }
      %248 = arith.maxf %cst, %cst_2 : f32
      %249 = index.sub %47, %33
      %250 = vector.extract %86[10] : vector<12xi1>
      %251 = math.exp2 %9 : tensor<12xf16>
      %252 = scf.if %false -> (i32) {
        %splat = tensor.splat %true : tensor<6xi1>
        %cast_43 = tensor.cast %0 : tensor<12x12xi1> to tensor<?x?xi1>
        %255 = index.casts %c15 : index to i32
        %256 = index.maxu %c5, %c6
        %257 = arith.divf %cst_2, %cst_2 : f32
        %258 = index.sizeof
        %259 = index.casts %c14929_i16 : i16 to index
        %260 = index.maxu %c13, %c9
        scf.yield %c1367898895_i32 : i32
      } else {
        %255 = vector.broadcast %false : i1 to vector<1x1xi1>
        %256 = vector.outerproduct %92, %92, %255 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
        %257 = index.sizeof
        %258 = arith.cmpf ole, %cst_3, %cst_3 : f16
        %259 = arith.mulf %cst_4, %cst_1 : f16
        %260 = bufferization.clone %alloc_15 : memref<6x12x7xf32> to memref<6x12x7xf32>
        %inserted = tensor.insert %c14929_i16 into %11[%c10] : tensor<12xi16>
        %261 = vector.create_mask %249, %c12 : vector<12x12xi1>
        %262 = arith.addf %cst_4, %cst_1 : f16
        scf.yield %c1843903306_i32 : i32
      }
      %253 = math.ceil %8 : tensor<12xf32>
      %254 = vector.insert %true, %160 [0] : i1 into vector<12xi1>
      %alloc_42 = memref.alloc() : memref<12xf16>
      affine.yield %alloc_42 : memref<12xf16>
    }
    %170 = arith.subi %c13157_i16, %c-20733_i16 : i16
    %171 = arith.divui %c1_i32, %c948641696_i32 : i32
    %172 = bufferization.clone %alloc_19 : memref<12xi1> to memref<12xi1>
    %173 = vector.extract %118[0, 3] : vector<1x4x7xf32>
    %174 = arith.minui %c2140998545_i32, %c948641696_i32 : i32
    %175 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %73, %73, %73 : vector<12x12xi64>, vector<12x12xi64> into vector<12x12xi64>
    %176 = vector.broadcast %cst_4 : f16 to vector<12x7xf16>
    %177 = vector.transfer_write %176, %14[%c12, %c13, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x7xf16>, tensor<6x12x7xf16>
    %178 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %179 = vector.outerproduct %156, %156, %178 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    vector.print %92 : vector<1xi1>
    memref.store %c1843903306_i32, %alloc_12[%c2, %c2, %c0] : memref<6x12x7xi32>
    %180 = arith.minsi %c1_i32, %c1_i32_31 : i32
    %181 = arith.muli %c1_i64, %c1_i64 : i64
    bufferization.dealloc_tensor %15 : tensor<6x12x7xi16>
    %182 = math.round %14 : tensor<6x12x7xf16>
    %183 = vector.broadcast %cst_3 : f16 to vector<7xf16>
    %184 = vector.transfer_write %183, %14[%24, %c15, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xf16>, tensor<6x12x7xf16>
    %185 = vector.broadcast %true : i1 to vector<12x12xi1>
    %186 = vector.outerproduct %86, %160, %185 {kind = #vector.kind<maxui>} : vector<12xi1>, vector<12xi1>
    %187 = index.floordivs %139, %c14
    vector.print %173 : vector<7xf32>
    %188 = arith.cmpf false, %cst_4, %cst_4 : f16
    %189 = arith.divf %cst_3, %cst_1 : f16
    %190 = math.floor %cst_5 : f32
    %191 = math.cos %1 : tensor<12xf32>
    %192 = arith.ceildivsi %c-15493_i16, %c-20733_i16 : i16
    %193 = vector.matrix_multiply %173, %173 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %true_33 = index.bool.constant true
    %194 = arith.cmpf ogt, %cst_2, %cst : f32
    %195 = bufferization.clone %alloc_13 : memref<6x12x7xi1> to memref<6x12x7xi1>
    %cast_34 = tensor.cast %8 : tensor<12xf32> to tensor<?xf32>
    %196 = math.round %cst_5 : f32
    %197 = math.floor %17 : tensor<12xf32>
    %198 = index.maxu %151, %c10
    %199 = math.floor %cst_4 : f16
    %200 = math.cttz %11 : tensor<12xi16>
    %201 = arith.muli %c13157_i16, %c13157_i16 : i16
    %from_elements = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<12x12xi64>
    %202 = arith.xori %c948641696_i32, %c1_i32 : i32
    %203 = index.ceildivs %c14, %c15
    %204 = math.floor %cst_3 : f16
    %205 = index.maxu %rank_24, %c13
    %206 = arith.maxf %cst, %cst_2 : f32
    memref.assume_alignment %alloc_9, 8 : memref<12xi64>
    %207 = math.round %8 : tensor<12xf32>
    %false_35 = arith.constant false
    %208 = vector.transfer_read %alloc_19[%c8], %false_35 : memref<12xi1>, vector<i1>
    %209 = index.add %47, %203
    %210 = vector.matrix_multiply %160, %86 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
    %211 = index.add %c8, %90
    vector.print %102 : vector<3x12x7xf32>
    %generated_36 = tensor.generate %145, %79 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %splat = tensor.splat %c1843903306_i32 : tensor<6x12x7xi32>
      %248 = index.floordivs %98, %154
      %249 = math.fma %13, %9, %9 : tensor<12xf16>
      %250 = math.cttz %c14929_i16 : i16
      tensor.yield %c2140998545_i32 : i32
    } : tensor<?x?x7xi32>
    %212 = vector.extract %49[1] : vector<6x12x7xf32>
    %213 = math.powf %14, %14 : tensor<6x12x7xf16>
    %214 = index.ceildivs %c11, %c3
    %215 = arith.maxf %cst_5, %cst : f32
    memref.alloca_scope  {
      %248 = math.ipowi %10, %10 : tensor<6x12x7xi32>
      %249 = memref.alloca_scope  -> (i64) {
        %277 = arith.subi %true_22, %true_22 : i1
        %278 = math.log1p %13 : tensor<12xf16>
        %279 = math.atan %cst_2 : f32
        memref.assume_alignment %alloc_12, 1 : memref<6x12x7xi32>
        %280 = arith.minsi %true, %true_22 : i1
        %281 = math.cos %cst_0 : f16
        %282 = math.floor %13 : tensor<12xf16>
        %283 = math.cttz %0 : tensor<12x12xi1>
        %284 = tensor.empty() : tensor<12x12xi1>
        %285 = linalg.matmul ins(%0, %0 : tensor<12x12xi1>, tensor<12x12xi1>) outs(%284 : tensor<12x12xi1>) -> tensor<12x12xi1>
        %false_46 = arith.constant false
        %286 = vector.broadcast %false : i1 to vector<7xi1>
        %287 = vector.maskedload %alloc_16[%c5, %c5, %c2], %286, %20 : memref<6x12x7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %288 = index.casts %c6 : index to i32
        %289 = index.sub %84, %c0
        %290 = math.atan %13 : tensor<12xf16>
        %291 = vector.insert %c1_i64, %20 [0] : i64 into vector<7xi64>
        %292 = arith.ceildivsi %c948641696_i32, %c1_i32 : i32
        %293 = index.ceildivs %165, %140
        %294 = math.cttz %15 : tensor<6x12x7xi16>
        %295 = arith.remui %c1843903306_i32, %c2140998545_i32 : i32
        %296 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %176, %176, %296 : vector<12x7xf16>, vector<12x7xf16> into vector<7x7xf16>
        %298 = math.ctpop %c2140998545_i32 : i32
        %299 = memref.atomic_rmw mulf %cst, %alloc_15[%c2, %c9, %c2] : (f32, memref<6x12x7xf32>) -> f32
        %300 = arith.maxsi %c2140998545_i32, %c1843903306_i32 : i32
        %301 = arith.mulf %cst_1, %cst_4 : f16
        %302 = arith.minui %c1843903306_i32, %c2140998545_i32 : i32
        %303 = arith.shli %c13157_i16, %c-20733_i16 : i16
        %304 = index.ceildivs %154, %90
        %305 = arith.cmpf uge, %cst_3, %cst_3 : f16
        %306 = vector.extract_strided_slice %73 {offsets = [7], sizes = [3], strides = [1]} : vector<12x12xi64> to vector<3x12xi64>
        %307 = math.roundeven %16 : tensor<12xf32>
        %308 = vector.broadcast %cst_3 : f16 to vector<f16>
        %309 = vector.transfer_write %308, %9[%152] : vector<f16>, tensor<12xf16>
        %310 = arith.shli %true_22, %false : i1
        memref.alloca_scope.return %c1_i64 : i64
      }
      %250 = math.atan2 %cst_2, %cst : f32
      %251 = vector.broadcast %cst : f32 to vector<12xf32>
      %252 = vector.maskedload %alloc_14[%c1], %160, %251 : memref<6xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
      %253 = math.round %9 : tensor<12xf16>
      %254 = vector.transpose %160, [0] : vector<12xi1> to vector<12xi1>
      %255 = tensor.empty() : tensor<12x12xi32>
      %256 = linalg.matmul ins(%5, %3 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%255 : tensor<12x12xi32>) -> tensor<12x12xi32>
      %257 = arith.remsi %249, %c1_i64 : i64
      %258 = arith.ori %c1_i32, %c1367898895_i32 : i32
      %259 = vector.bitcast %210 : vector<1xi1> to vector<1xi1>
      %260 = arith.andi %c948641696_i32, %c1843903306_i32 : i32
      %261 = arith.minf %cst_5, %cst_2 : f32
      %262 = math.expm1 %13 : tensor<12xf16>
      %263 = scf.if %false -> (i64) {
        %277 = arith.minsi %c1843903306_i32, %c2140998545_i32 : i32
        %278 = index.mul %105, %154
        %279 = arith.maxsi %249, %c1_i64 : i64
        memref.store %false, %195[%c0, %c3, %c5] : memref<6x12x7xi1>
        %280 = math.atan %8 : tensor<12xf32>
        %281 = index.mul %211, %c14
        %282 = math.absf %17 : tensor<12xf32>
        %true_46 = index.bool.constant true
        scf.yield %c1_i64 : i64
      } else {
        %277 = index.floordivs %c10, %c14
        %278 = memref.atomic_rmw minf %cst_2, %alloc_15[%c0, %c6, %c0] : (f32, memref<6x12x7xf32>) -> f32
        %collapsed = tensor.collapse_shape %expanded [[0, 1]] : tensor<12x1xf16> into tensor<12xf16>
        %279 = vector.create_mask %c5 : vector<6xi1>
        %280 = vector.insert %cst, %51 [6] : f32 into vector<7xf32>
        %281 = index.sizeof
        %282 = arith.divf %cst, %cst : f32
        %283 = index.floordivs %152, %98
        scf.yield %c1_i64 : i64
      }
      %264 = bufferization.clone %alloc_8 : memref<12x12xi16> to memref<12x12xi16>
      %265 = arith.cmpf ugt, %cst_0, %cst_3 : f16
      %266 = affine.if affine_set<(d0, d1, d2) : (d2 - (d1 floordiv 2) mod 16 >= 0, d1 floordiv 2 >= 0, d1 - 6 >= 0, 0 >= 0)>(%c12, %c15, %c8) -> memref<12x12xi64> {
        %277 = arith.remf %cst_1, %cst_0 : f16
        %278 = arith.remui %c1_i64, %c1_i64 : i64
        %279 = arith.ceildivsi %c-15493_i16, %c14929_i16 : i16
        %280 = affine.apply affine_map<(d0, d1) -> (d0)>(%rank_24, %c14)
        %281 = math.atan2 %1, %1 : tensor<12xf32>
        %282 = arith.mulf %cst_3, %cst_4 : f16
        %cast_46 = tensor.cast %3 : tensor<12x12xi32> to tensor<?x?xi32>
        %283 = vector.extract_strided_slice %51 {offsets = [5], sizes = [1], strides = [1]} : vector<7xf32> to vector<1xf32>
        %alloc_47 = memref.alloc() : memref<12x12xi64>
        affine.yield %alloc_47 : memref<12x12xi64>
      } else {
        %inserted = tensor.insert %c1843903306_i32 into %reduced[%c0] : tensor<6xi32>
        %277 = arith.minui %c1_i32_31, %c948641696_i32 : i32
        vector.print %112 : vector<6xi64>
        %278 = arith.remf %cst_3, %cst_3 : f16
        %279 = vector.broadcast %cst_5 : f32 to vector<12x12xf32>
        %280 = vector.fma %279, %279, %279 : vector<12x12xf32>
        %281 = math.fma %4, %4, %4 : tensor<6xf32>
        %282 = arith.minui %c-15493_i16, %c-20733_i16 : i16
        %283 = index.casts %true_22 : i1 to index
        %alloc_46 = memref.alloc() : memref<12x12xi64>
        affine.yield %alloc_46 : memref<12x12xi64>
      }
      %267 = math.round %9 : tensor<12xf16>
      %268 = math.exp2 %cst_2 : f32
      %269 = memref.realloc %alloc_11 : memref<6xf32> to memref<12xf32>
      vector.print %50 : vector<6x12x7xf32>
      bufferization.dealloc_tensor %reduced : tensor<6xi32>
      %270 = math.tan %cst_5 : f32
      %cst_42 = arith.constant 1.000000e+00 : f16
      %cst_43 = arith.constant 0.000000e+00 : f16
      %271 = vector.transfer_read %13[%203], %cst_43 : tensor<12xf16>, vector<f16>
      %272 = math.ctlz %c1_i64 : i64
      vector.print %193 : vector<1xf32>
      vector.print %183 : vector<7xf16>
      %273 = arith.remf %cst_4, %cst_0 : f16
      %274 = arith.addi %c1_i32, %c948641696_i32 : i32
      %expanded_44 = tensor.expand_shape %13 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
      %c1_i32_45 = arith.constant 1 : i32
      %275 = vector.transfer_read %5[%90, %214], %c1_i32_45 : tensor<12x12xi32>, vector<i32>
      %276 = arith.subi %c1367898895_i32, %c2140998545_i32 : i32
    }
    %216 = scf.while (%arg3 = %false_35) : (i1) -> i1 {
      %248 = math.fma %cst_0, %cst_3, %cst_1 : f16
      %249 = math.log1p %cst_4 : f16
      %250 = vector.matrix_multiply %86, %113 {lhs_columns = 6 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<6xi1>) -> vector<2xi1>
      %251 = vector.broadcast %24 : index to vector<7xindex>
      %252 = vector.broadcast %false : i1 to vector<7xi1>
      %253 = vector.broadcast %c14929_i16 : i16 to vector<7xi16>
      vector.scatter %alloc_6[%c10] [%251], %252, %253 : memref<12xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %254 = arith.minui %c948641696_i32, %c948641696_i32 : i32
      %255 = math.tan %1 : tensor<12xf32>
      vector.print %92 : vector<1xi1>
      %256 = vector.insert %true, %92 [0] : i1 into vector<1xi1>
      scf.condition(%arg3) %true_33 : i1
    } do {
    ^bb0(%arg3: i1):
      %248 = arith.addi %c948641696_i32, %c948641696_i32 : i32
      %249 = arith.muli %c-15493_i16, %c-15493_i16 : i16
      %250 = math.rsqrt %13 : tensor<12xf16>
      %251 = math.ctpop %c14929_i16 : i16
      %252 = arith.ori %c1_i32, %c1_i32 : i32
      %rank_42 = tensor.rank %7 : tensor<6xi32>
      %253 = arith.remf %cst_4, %cst_3 : f16
      %254 = arith.divf %cst_0, %cst_4 : f16
      vector.print %183 : vector<7xf16>
      %255 = index.add %rank, %47
      %256 = index.add %c5, %205
      %257 = arith.divsi %c-15493_i16, %c-15493_i16 : i16
      %rank_43 = tensor.rank %0 : tensor<12x12xi1>
      %258 = math.tan %cst_3 : f16
      %259 = arith.subi %true, %true_22 : i1
      %260 = vector.transpose %193, [0] : vector<1xf32> to vector<1xf32>
      scf.yield %false_35 : i1
    }
    affine.for %arg3 = 0 to 71 {
    }
    %217 = math.log10 %cst_3 : f16
    %218 = math.floor %4 : tensor<6xf32>
    %219 = affine.min affine_map<(d0, d1) -> (d0 mod 2, d0 + d1, 0, 0)>(%145, %90)
    %220 = math.tan %1 : tensor<12xf32>
    %221 = math.round %cst_4 : f16
    %222 = arith.cmpi ne, %c1_i64, %c1_i64 : i64
    %223 = arith.muli %c1_i32, %c1843903306_i32 : i32
    %224 = math.exp %9 : tensor<12xf16>
    %225 = math.atan %4 : tensor<6xf32>
    %226 = arith.minf %cst_0, %cst_0 : f16
    %227 = index.floordivs %c1, %151
    %228 = math.floor %8 : tensor<12xf32>
    %229 = memref.atomic_rmw addf %cst_4, %alloc_20[%c1, %c1, %c6] : (f16, memref<6x12x7xf16>) -> f16
    %230 = arith.subi %true_22, %true_33 : i1
    %231 = affine.apply affine_map<(d0, d1, d2) -> (-((d2 + 8) mod 32))>(%165, %149, %152)
    %232 = math.round %1 : tensor<12xf32>
    %233 = math.cos %cst_3 : f16
    %234 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 4, d0 - d2 ceildiv 64, d2 mod 4, d0 - d2 ceildiv 64 - d2 + 4)>(%24, %c10, %205)
    %235 = arith.ceildivsi %c-20733_i16, %c14929_i16 : i16
    %236 = index.mul %227, %231
    %237 = math.cos %cst_0 : f16
    memref.tensor_store %14, %alloc_20 : memref<6x12x7xf16>
    %238 = math.tan %cst_3 : f16
    %generated_37 = tensor.generate %149 {
    ^bb0(%arg3: index):
      %248 = affine.load %alloc_13[%c8, %c7, %c3] : memref<6x12x7xi1>
      %249 = math.atan2 %4, %4 : tensor<6xf32>
      %false_42 = arith.constant false
      %cst_43 = arith.constant 4.153600e+04 : f16
      tensor.yield %cst_2 : f32
    } : tensor<?xf32>
    %239 = memref.alloca_scope  -> (memref<12xi16>) {
      %248 = index.floordivs %c12, %24
      bufferization.dealloc_tensor %0 : tensor<12x12xi1>
      %249 = vector.insertelement %cst_5, %193[%139 : index] : vector<1xf32>
      %250 = math.expm1 %1 : tensor<12xf32>
      %251 = math.ceil %cst_3 : f16
      %252 = math.rsqrt %cst_4 : f16
      %253 = bufferization.clone %alloc_6 : memref<12xi16> to memref<12xi16>
      %254 = arith.ceildivsi %c1367898895_i32, %c1_i32 : i32
      %255 = arith.minf %cst_5, %cst_2 : f32
      %256 = index.ceildivu %231, %211
      scf.if %false {
        %276 = math.cos %cst_3 : f16
        %277 = arith.remsi %c1_i32, %c1843903306_i32 : i32
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %49, %212 {inclusive = true, reduction_dim = 0 : i64} : vector<6x12x7xf32>, vector<12x7xf32>
        %278 = bufferization.to_tensor %alloc_17 : memref<12x12xi16>
        %279 = math.rsqrt %17 : tensor<12xf32>
        %280 = arith.minui %c-15493_i16, %c-20733_i16 : i16
        %281 = index.divu %c0, %187
        %true_48 = arith.constant true
      }
      %257 = arith.floordivsi %c14929_i16, %c-20733_i16 : i16
      %258 = math.exp %16 : tensor<12xf32>
      %259 = math.atan2 %1, %1 : tensor<12xf32>
      %c1_i16 = arith.constant 1 : i16
      %260 = vector.transfer_read %alloc_8[%98, %33], %c1_i16 : memref<12x12xi16>, vector<12xi16>
      %261 = index.ceildivs %77, %152
      %262 = math.rsqrt %cst_1 : f16
      %263 = math.copysign %expanded, %expanded : tensor<12x1xf16>
      %264 = arith.minf %cst_0, %cst_4 : f16
      %265 = math.absf %4 : tensor<6xf32>
      %c1_i32_42 = arith.constant 1 : i32
      %266 = vector.transfer_read %2[%261], %c1_i32_42 : tensor<6xi32>, vector<i32>
      %rank_43 = tensor.rank %21 : tensor<i64>
      %267 = index.castu %c6 : index to i32
      %c1_i32_44 = arith.constant 1 : i32
      %268 = vector.transfer_read %3[%219, %c4], %c1_i32_44 : tensor<12x12xi32>, vector<12xi32>
      %269 = vector.matrix_multiply %92, %113 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi1>, vector<6xi1>) -> vector<6xi1>
      %270 = vector.multi_reduction <minsi>, %112, %c1_i64 [0] : vector<6xi64> to i64
      %271 = vector.extract %118[0, 2] : vector<1x4x7xf32>
      %true_45 = index.bool.constant true
      %272 = index.ceildivs %231, %c1
      %273 = index.sub %105, %c10
      %274 = vector.create_mask %c8 : vector<12xi1>
      %275 = vector.maskedload %alloc_19[%c2], %160, %160 : memref<12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      memref.alloca_scope.return %253 : memref<12xi16>
    }
    %true_38 = index.bool.constant true
    %240 = vector.extract %114[0] : vector<6xi64>
    %241 = math.exp2 %14 : tensor<6x12x7xf16>
    %expanded_39 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<12x1xf16> into tensor<12x1x1xf16>
    %242 = math.exp %14 : tensor<6x12x7xf16>
    vector.print %114 : vector<6xi64>
    %243 = math.exp %1 : tensor<12xf32>
    %244 = tensor.empty() : tensor<6xi32>
    %245 = linalg.copy ins(%19 : tensor<6xi32>) outs(%244 : tensor<6xi32>) -> tensor<6xi32>
    %alloc_40 = memref.alloc() : memref<7x6x12xf16>
    linalg.transpose ins(%14 : tensor<6x12x7xf16>) outs(%alloc_40 : memref<7x6x12xf16>) permutation = [2, 0, 1] 
    %alloc_41 = memref.alloc() : memref<12xf32>
    linalg.reduce ins(%alloc : memref<12x12xf32>) outs(%alloc_41 : memref<12xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %248 = math.rsqrt %9 : tensor<12xf16>
        %249 = math.ceil %16 : tensor<12xf32>
        %250 = affine.min affine_map<(d0, d1) -> (0, d1 floordiv 2 + d0 floordiv 16)>(%rank_24, %c8)
        %251 = arith.mulf %cst_4, %cst_1 : f16
        %252 = math.fma %14, %14, %14 : tensor<6x12x7xf16>
        %253 = math.log %8 : tensor<12xf32>
        %254 = arith.shrui %c-20733_i16, %c-20733_i16 : i16
        %255 = bufferization.to_tensor %alloc_21 : memref<6xi64>
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %246 = scf.parallel (%arg3, %arg4) = (%c0, %219) to (%c12, %198) step (%c1, %c6) init (%172) -> memref<12xi1> {
      %248 = math.atan %1 : tensor<12xf32>
      %249 = math.cttz %true_22 : i1
      %alloca = memref.alloca() : memref<6x12x7xi16>
      %250 = arith.cmpf ule, %cst_2, %cst_2 : f32
      %251 = math.round %14 : tensor<6x12x7xf16>
      %252 = vector.broadcast %true_33 : i1 to vector<6x6xi1>
      %253 = vector.outerproduct %113, %113, %252 {kind = #vector.kind<maxui>} : vector<6xi1>, vector<6xi1>
      memref.store %cst_5, %alloc_41[%c0] : memref<12xf32>
      %254 = math.atan2 %14, %14 : tensor<6x12x7xf16>
      vector.print %102 : vector<3x12x7xf32>
      %255 = scf.if %true -> (memref<6x12x7xi32>) {
        %260 = math.cos %13 : tensor<12xf16>
        %261 = arith.remf %cst_0, %cst_1 : f16
        affine.store %cst_5, %alloc_14[%c15] : memref<6xf32>
        %262 = arith.minsi %true_33, %false : i1
        %263 = arith.remsi %true_22, %true_22 : i1
        bufferization.dealloc_tensor %10 : tensor<6x12x7xi32>
        %splat = tensor.splat %true_38 : tensor<12x12xi1>
        %264 = vector.create_mask %88 : vector<12xi1>
        scf.yield %alloc_12 : memref<6x12x7xi32>
      } else {
        %260 = index.casts %false_35 : i1 to index
        %261 = vector.broadcast %cst : f32 to vector<3x12xf32>
        %262 = vector.multi_reduction <mul>, %102, %261 [2] : vector<3x12x7xf32> to vector<3x12xf32>
        %263 = vector.transpose %148, [0] : vector<12xi16> to vector<12xi16>
        memref.tensor_store %12, %alloc_21 : memref<6xi64>
        %264 = vector.matrix_multiply %113, %92 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<1xi1>) -> vector<6xi1>
        %265 = arith.minui %true_38, %false : i1
        %266 = math.tanh %13 : tensor<12xf16>
        %267 = arith.muli %c1843903306_i32, %c2140998545_i32 : i32
        scf.yield %alloc_12 : memref<6x12x7xi32>
      }
      %256 = math.exp2 %cst : f32
      %false_42 = index.bool.constant false
      %cast_43 = tensor.cast %13 : tensor<12xf16> to tensor<?xf16>
      %257 = vector.multi_reduction <minui>, %113, %113 [] : vector<6xi1> to vector<6xi1>
      %258 = math.atan2 %expanded_39, %expanded_39 : tensor<12x1x1xf16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %112, %114, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
      %alloc_44 = memref.alloc() : memref<12xi1>
      scf.reduce(%alloc_44)  : memref<12xi1> {
      ^bb0(%arg5: memref<12xi1>, %arg6: memref<12xi1>):
        %260 = math.copysign %9, %9 : tensor<12xf16>
        vector.print %113 : vector<6xi1>
        %261 = arith.ceildivsi %c-15493_i16, %c13157_i16 : i16
        %262 = vector.matrix_multiply %210, %210 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %263 = arith.addf %cst_0, %cst_1 : f16
        %264 = arith.mulf %cst, %cst_5 : f32
        %265 = arith.subi %c1843903306_i32, %c948641696_i32 : i32
        memref.store %false, %arg5[%c2] : memref<12xi1>
        %alloc_45 = memref.alloc() : memref<12xi1>
        scf.reduce.return %alloc_45 : memref<12xi1>
      }
      scf.yield
    }
    %247 = affine.vector_load %alloc_41[%236] : memref<12xf32>, vector<6xf32>
    affine.vector_store %173, %alloc_41[%c13] : memref<12xf32>, vector<7xf32>
    vector.print %20 : vector<7xi64>
    vector.print %49 : vector<6x12x7xf32>
    vector.print %50 : vector<6x12x7xf32>
    vector.print %51 : vector<7xf32>
    vector.print %73 : vector<12x12xi64>
    vector.print %75 : vector<12xi64>
    vector.print %86 : vector<12xi1>
    vector.print %92 : vector<1xi1>
    vector.print %102 : vector<3x12x7xf32>
    vector.print %112 : vector<6xi64>
    vector.print %113 : vector<6xi1>
    vector.print %114 : vector<6xi64>
    vector.print %115 : vector<12x7xf32>
    vector.print %118 : vector<1x4x7xf32>
    vector.print %148 : vector<12xi16>
    vector.print %156 : vector<1xf32>
    vector.print %160 : vector<12xi1>
    vector.print %173 : vector<7xf32>
    vector.print %176 : vector<12x7xf16>
    vector.print %183 : vector<7xf16>
    vector.print %193 : vector<1xf32>
    vector.print %210 : vector<1xi1>
    vector.print %212 : vector<12x7xf32>
    vector.print %247 : vector<6xf32>
    vector.print %cst : f32
    vector.print %c-15493_i16 : i16
    vector.print %c1367898895_i32 : i32
    vector.print %c1843903306_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c13157_i16 : i16
    vector.print %c2140998545_i32 : i32
    vector.print %c-20733_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %c14929_i16 : i16
    vector.print %c948641696_i32 : i32
    vector.print %true : i1
    vector.print %c1_i32 : i32
    vector.print %false : i1
    vector.print %c1_i64 : i64
    vector.print %true_22 : i1
    vector.print %c1_i32_31 : i32
    vector.print %true_33 : i1
    vector.print %false_35 : i1
    vector.print %true_38 : i1
    return
  }
}
