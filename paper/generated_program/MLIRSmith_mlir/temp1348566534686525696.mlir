module {
  func.func nested @func1(%arg0: tensor<10xi16>, %arg1: vector<16x6x6xi1>) {
    %true = arith.constant true
    %c5381_i16 = arith.constant 5381 : i16
    %cst = arith.constant 3.590400e+04 : f16
    %false = arith.constant false
    %cst_0 = arith.constant 2.080000e+04 : f16
    %c10514_i16 = arith.constant 10514 : i16
    %c143440302_i64 = arith.constant 143440302 : i64
    %c-7880_i16 = arith.constant -7880 : i16
    %c249545982_i32 = arith.constant 249545982 : i32
    %c18728_i16 = arith.constant 18728 : i16
    %cst_1 = arith.constant 1.56801126E+9 : f32
    %cst_2 = arith.constant 5.363200e+04 : f16
    %c1798539765_i32 = arith.constant 1798539765 : i32
    %c9774_i16 = arith.constant 9774 : i16
    %false_3 = arith.constant false
    %c620_i16 = arith.constant 620 : i16
    %0 = tensor.empty() : tensor<10xf32>
    %1 = tensor.empty() : tensor<10xf32>
    %2 = tensor.empty() : tensor<10xi16>
    %3 = tensor.empty() : tensor<10xi1>
    %4 = tensor.empty() : tensor<16x6x6xi32>
    %5 = tensor.empty() : tensor<10xf32>
    %6 = tensor.empty() : tensor<16x6x6xi64>
    %7 = tensor.empty() : tensor<10xi32>
    %8 = tensor.empty() : tensor<10xi32>
    %9 = tensor.empty() : tensor<16x6x6xi32>
    %10 = tensor.empty() : tensor<10xi16>
    %11 = tensor.empty() : tensor<10xf16>
    %12 = tensor.empty() : tensor<10xi16>
    %13 = tensor.empty() : tensor<10xf16>
    %14 = tensor.empty() : tensor<16x6x6xi32>
    %15 = tensor.empty() : tensor<10xi1>
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
    %alloc = memref.alloc() : memref<16x6x6xi1>
    %alloc_4 = memref.alloc() : memref<10xi16>
    %alloc_5 = memref.alloc() : memref<16x6x6xi16>
    %alloc_6 = memref.alloc() : memref<6x6xi16>
    %alloc_7 = memref.alloc() : memref<6x6xi32>
    %alloc_8 = memref.alloc() : memref<16x6x6xi64>
    %alloc_9 = memref.alloc() : memref<16x6x6xi32>
    %alloc_10 = memref.alloc() : memref<6x6xf32>
    %alloc_11 = memref.alloc() : memref<10xf32>
    %alloc_12 = memref.alloc() : memref<10xi16>
    %alloc_13 = memref.alloc() : memref<10xf16>
    %alloc_14 = memref.alloc() : memref<16x6x6xi32>
    %alloc_15 = memref.alloc() : memref<10xi64>
    %alloc_16 = memref.alloc() : memref<10xf32>
    %alloc_17 = memref.alloc() : memref<6x6xi1>
    %alloc_18 = memref.alloc() : memref<10xi64>
    %16 = tensor.empty() : tensor<10xf32>
    %17 = linalg.copy ins(%0 : tensor<10xf32>) outs(%16 : tensor<10xf32>) -> tensor<10xf32>
    %alloc_19 = memref.alloc() : memref<6x6xi1>
    linalg.transpose ins(%alloc_17 : memref<6x6xi1>) outs(%alloc_19 : memref<6x6xi1>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%12 : tensor<10xi16>) outs(%18 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %271 = index.divs %c9, %c11
        %272 = arith.minsi %in, %c9774_i16 : i16
        %273 = arith.subi %c18728_i16, %c9774_i16 : i16
        %274 = math.atan2 %16, %0 : tensor<10xf32>
        %275 = affine.min affine_map<(d0, d1, d2) -> (d0, d2 - 72)>(%271, %c12, %c4)
        %276 = index.maxu %c14, %c6
        %277 = math.round %cst_2 : f16
        %278 = math.fma %cst, %cst_0, %cst_2 : f16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg2) = (%c8) to (%c11) step (%c13) {
      %271 = arith.maxf %cst_2, %cst_2 : f16
      %272 = vector.broadcast %c249545982_i32 : i32 to vector<1xi32>
      %273 = vector.broadcast %c249545982_i32 : i32 to vector<1xi32>
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %272, %273, %c249545982_i32 : vector<1xi32>, vector<1xi32> into i32
      %275 = arith.muli %c5381_i16, %c9774_i16 : i16
      %276 = vector.insert %c249545982_i32, %272 [0] : i32 into vector<1xi32>
      %277 = arith.subi %false, %false : i1
      memref.store %false_3, %alloc_17[%c0, %c5] : memref<6x6xi1>
      scf.if %false {
        %286 = index.floordivs %c1, %c6
        %287 = math.exp2 %5 : tensor<10xf32>
        %288 = math.ipowi %18, %reduced : tensor<i16>
        %289 = math.exp %13 : tensor<10xf16>
        %290 = arith.minsi %c143440302_i64, %c143440302_i64 : i64
        %291 = index.divu %c6, %c7
        %292 = tensor.empty() : tensor<16x6x6xi16>
        %293 = math.log %cst : f16
      } else {
        %286 = math.fma %cst_2, %cst_2, %cst : f16
        %287 = index.divu %c0, %c13
        %288 = math.fma %1, %1, %16 : tensor<10xf32>
        %289 = bufferization.clone %alloc_14 : memref<16x6x6xi32> to memref<16x6x6xi32>
        %290 = vector.splat %cst : vector<10xf16>
        %291 = math.absf %cst_2 : f16
        %alloc_37 = memref.alloc() : memref<6x6xi16>
        memref.copy %alloc_6, %alloc_37 : memref<6x6xi16> to memref<6x6xi16>
        %292 = affine.max affine_map<(d0, d1, d2) -> (d0 - d1 - d1 * 32, d1, d2)>(%287, %c3, %c13)
      }
      %278 = scf.if %false -> (memref<10xi1>) {
        affine.store %false, %alloc[%c13, %c1, %c8] : memref<16x6x6xi1>
        %286 = math.tan %0 : tensor<10xf32>
        %287 = math.copysign %cst, %cst : f16
        %288 = math.atan %5 : tensor<10xf32>
        %289 = vector.transpose %272, [0] : vector<1xi32> to vector<1xi32>
        %290 = vector.load %alloc_5[%c1, %c5, %c4] : memref<16x6x6xi16>, vector<10xi16>
        %291 = memref.atomic_rmw assign %cst_1, %alloc_16[%c9] : (f32, memref<10xf32>) -> f32
        %alloc_37 = memref.alloc() : memref<10xi32>
        memref.tensor_store %8, %alloc_37 : memref<10xi32>
        %alloc_38 = memref.alloc() : memref<10xi1>
        scf.yield %alloc_38 : memref<10xi1>
      } else {
        %286 = math.ipowi %8, %8 : tensor<10xi32>
        %287 = vector.transpose %272, [0] : vector<1xi32> to vector<1xi32>
        %collapsed_37 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<16x6x6xi32> into tensor<96x6xi32>
        %288 = vector.broadcast %c620_i16 : i16 to vector<16xi16>
        %289 = vector.broadcast %false : i1 to vector<16xi1>
        %290 = vector.maskedload %alloc_5[%c15, %c5, %c0], %289, %288 : memref<16x6x6xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %291 = vector.broadcast %c5 : index to vector<13xindex>
        %292 = vector.broadcast %true : i1 to vector<13xi1>
        %293 = vector.broadcast %c18728_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_12[%c3] [%291], %292, %293 : memref<10xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %294 = arith.floordivsi %c5381_i16, %c18728_i16 : i16
        %295 = tensor.empty(%c9, %c6) : tensor<?x?xf32>
        %splat_38 = tensor.splat %c18728_i16 : tensor<10xi16>
        %alloc_39 = memref.alloc() : memref<10xi1>
        scf.yield %alloc_39 : memref<10xi1>
      }
      %279 = affine.max affine_map<(d0) -> (d0 floordiv 128, d0 mod 64, d0 mod 64 - d0)>(%c13)
      %280 = math.fpowi %cst_1, %c249545982_i32 : f32, i32
      %281 = bufferization.clone %278 : memref<10xi1> to memref<10xi1>
      memref.assume_alignment %alloc_19, 1 : memref<6x6xi1>
      %282 = vector.create_mask %c11, %c11 : vector<6x6xi1>
      %283 = arith.shrsi %false, %false_3 : i1
      %284 = arith.minui %c249545982_i32, %c249545982_i32 : i32
      %285 = arith.remui %false, %true : i1
      scf.yield
    }
    %19 = affine.vector_load %alloc_5[%c10, %c6, %c0] : memref<16x6x6xi16>, vector<6xi16>
    affine.vector_store %19, %alloc_5[%c3, %c10, %c10] : memref<16x6x6xi16>, vector<6xi16>
    %20 = tensor.empty() : tensor<10xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%17, %20 : tensor<10xf32>, tensor<10xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = arith.minf %cst, %cst_2 : f16
    %24 = vector.shuffle %19, %19 [3, 4, 5, 8, 9] : vector<6xi16>, vector<6xi16>
    %25 = vector.broadcast %cst_1 : f32 to vector<10xf32>
    %26 = vector.fma %25, %25, %25 : vector<10xf32>
    %27 = math.log %5 : tensor<10xf32>
    %28 = vector.broadcast %c5 : index to vector<16xindex>
    %29 = vector.broadcast %true : i1 to vector<16xi1>
    %30 = vector.broadcast %cst_1 : f32 to vector<16xf32>
    vector.scatter %alloc_11[%c6] [%28], %29, %30 : memref<10xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
    %31 = math.absi %reduced : tensor<i16>
    %32 = arith.maxsi %c10514_i16, %c620_i16 : i16
    %33 = math.ctlz %2 : tensor<10xi16>
    %34 = vector.insertelement %cst_1, %26[%c15 : index] : vector<10xf32>
    %35 = arith.cmpi slt, %c10514_i16, %c620_i16 : i16
    %36 = math.absi %3 : tensor<10xi1>
    %37 = arith.remf %cst_0, %cst_2 : f16
    %38 = memref.realloc %alloc_18 : memref<10xi64> to memref<10xi64>
    %39 = vector.broadcast %c-7880_i16 : i16 to vector<i16>
    %40 = vector.transfer_write %39, %2[%c8] : vector<i16>, tensor<10xi16>
    %41 = vector.create_mask %c15, %c15, %c2 : vector<16x6x6xi1>
    %42 = memref.realloc %alloc_18 : memref<10xi64> to memref<6xi64>
    %43 = vector.multi_reduction <minf>, %26, %25 [] : vector<10xf32> to vector<10xf32>
    %44 = vector.broadcast %cst_1 : f32 to vector<10xf32>
    %45 = math.fma %cst_0, %cst_2, %cst_0 : f16
    %true_20 = index.bool.constant true
    scf.if %true_20 {
      %271 = arith.divui %c143440302_i64, %c143440302_i64 : i64
      %from_elements_37 = tensor.from_elements %c1798539765_i32, %c249545982_i32, %c249545982_i32, %c1798539765_i32, %c249545982_i32, %c249545982_i32, %c249545982_i32, %c1798539765_i32, %c249545982_i32, %c249545982_i32 : tensor<10xi32>
      %cst_38 = arith.constant 3.971200e+04 : f16
      %272 = memref.atomic_rmw assign %c620_i16, %alloc_12[%c7] : (i16, memref<10xi16>) -> i16
      %273 = arith.ori %c10514_i16, %c5381_i16 : i16
      %274 = math.expm1 %cst_0 : f16
      %275 = vector.transpose %39, [] : vector<i16> to vector<i16>
      affine.for %arg2 = 0 to 62 {
      }
    }
    %c1898410840_i32 = arith.constant 1898410840 : i32
    %46 = arith.xori %false_3, %false_3 : i1
    %collapsed = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<16x6x6xi32> into tensor<96x6xi32>
    vector.print %44 : vector<10xf32>
    %47 = affine.min affine_map<(d0) -> (((((d0 ceildiv 128) mod 8) ceildiv 8) mod 64) ceildiv 4, ((d0 ceildiv 128) mod 8) ceildiv 8)>(%c14)
    %48 = vector.broadcast %c143440302_i64 : i64 to vector<16xi64>
    %49 = vector.broadcast %false : i1 to vector<16xi1>
    %50 = vector.maskedload %alloc_8[%c8, %c2, %c5], %49, %48 : memref<16x6x6xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
    %51 = arith.floordivsi %c-7880_i16, %c10514_i16 : i16
    %52 = arith.floordivsi %c249545982_i32, %c1798539765_i32 : i32
    %53 = arith.floordivsi %c1798539765_i32, %c1798539765_i32 : i32
    %54 = math.ipowi %c18728_i16, %c18728_i16 : i16
    %55 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
    %56 = math.tanh %22 : tensor<f32>
    %57 = arith.ceildivsi %c-7880_i16, %c9774_i16 : i16
    %58 = arith.remui %false_3, %true_20 : i1
    %alloca = memref.alloca() : memref<10xi32>
    %59 = affine.load %alloc_9[%c2, %c0, %c0] : memref<16x6x6xi32>
    %60 = math.log2 %1 : tensor<10xf32>
    %61 = math.exp %5 : tensor<10xf32>
    %62 = arith.minsi %false_3, %true : i1
    %63 = affine.apply affine_map<(d0) -> (d0 ceildiv 16)>(%c4)
    %64 = vector.broadcast %true : i1 to vector<16x6xi1>
    %dest, %accumulated_value = vector.scan <or>, %41, %64 {inclusive = false, reduction_dim = 2 : i64} : vector<16x6x6xi1>, vector<16x6xi1>
    %65 = math.copysign %1, %1 : tensor<10xf32>
    %66 = vector.extract %48[4] : vector<16xi64>
    %67 = arith.divf %cst_2, %cst : f16
    %alloc_21 = memref.alloc() : memref<6x6xi32>
    memref.copy %alloc_7, %alloc_21 : memref<6x6xi32> to memref<6x6xi32>
    %68 = arith.shli %true, %false_3 : i1
    %69 = arith.maxsi %c143440302_i64, %c143440302_i64 : i64
    memref.tensor_store %4, %alloc_9 : memref<16x6x6xi32>
    %70 = index.ceildivs %47, %c6
    %71 = arith.shrui %c620_i16, %c10514_i16 : i16
    %inserted = tensor.insert %c249545982_i32 into %4[%c10, %c5, %c2] : tensor<16x6x6xi32>
    %72 = arith.shrui %c620_i16, %c9774_i16 : i16
    affine.for %arg2 = 0 to 121 {
    }
    %73 = vector.broadcast %c7 : index to vector<6xindex>
    %74 = vector.broadcast %false_3 : i1 to vector<6xi1>
    %75 = vector.broadcast %59 : i32 to vector<6xi32>
    vector.scatter %alloc_9[%c10, %c1, %c2] [%73], %74, %75 : memref<16x6x6xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
    %76 = arith.andi %true_20, %true : i1
    %77 = arith.ceildivsi %c5381_i16, %c9774_i16 : i16
    %78 = tensor.empty() : tensor<10xi64>
    %79 = math.fma %cst_0, %cst, %cst_2 : f16
    %80 = math.tan %13 : tensor<10xf16>
    %81 = math.log10 %cst_1 : f32
    %alloca_22 = memref.alloca() : memref<16x6x6xi1>
    %82 = index.mul %c12, %c10
    %83 = math.powf %11, %13 : tensor<10xf16>
    %84 = scf.while (%arg2 = %48) : (vector<16xi64>) -> vector<16xi64> {
      %271 = bufferization.clone %alloc_7 : memref<6x6xi32> to memref<6x6xi32>
      %272 = arith.remui %c143440302_i64, %c143440302_i64 : i64
      %273 = index.casts %82 : index to i32
      %274 = arith.minf %cst_2, %cst_2 : f16
      %275 = arith.cmpi uge, %c249545982_i32, %c1798539765_i32 : i32
      %276 = arith.mulf %cst_1, %cst_1 : f32
      %cast_37 = tensor.cast %8 : tensor<10xi32> to tensor<?xi32>
      %277 = arith.negf %cst_0 : f16
      scf.condition(%true) %50 : vector<16xi64>
    } do {
    ^bb0(%arg2: vector<16xi64>):
      %271 = vector.extract %44[0] : vector<10xf32>
      %272 = vector.broadcast %47 : index to vector<13xindex>
      %273 = vector.broadcast %true : i1 to vector<13xi1>
      %274 = vector.broadcast %c-7880_i16 : i16 to vector<13xi16>
      vector.scatter %alloc_4[%c9] [%272], %273, %274 : memref<10xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
      memref.alloca_scope  {
        %288 = arith.addi %c9774_i16, %c10514_i16 : i16
        %289 = math.atan2 %5, %17 : tensor<10xf32>
        %290 = affine.load %alloc_19[%c1, %c4] : memref<6x6xi1>
        %291 = arith.ori %c620_i16, %c9774_i16 : i16
        %292 = affine.load %alloc_11[%c12] : memref<10xf32>
        %293 = math.atan %20 : tensor<10xf32>
        %294 = math.log %1 : tensor<10xf32>
        %295 = index.divu %c14, %c0
        %296 = math.exp %cst_0 : f16
        %297 = arith.remsi %c249545982_i32, %59 : i32
        %298 = math.absf %292 : f32
        %299 = math.tanh %11 : tensor<10xf16>
        %300 = math.exp2 %cst_2 : f16
        %alloca_37 = memref.alloca() : memref<16x6x6xi64>
        memref.store %290, %alloc_17[%c3, %c0] : memref<6x6xi1>
        %301 = arith.remui %false, %false : i1
        %302 = math.log2 %5 : tensor<10xf32>
        %303 = vector.transpose %39, [] : vector<i16> to vector<i16>
        %304 = arith.maxsi %c1798539765_i32, %c1798539765_i32 : i32
        %305 = vector.reduction <add>, %26 : vector<10xf32> into f32
        %306 = tensor.empty() : tensor<10xf16>
        %307 = vector.broadcast %c10514_i16 : i16 to vector<i16>
        %308 = vector.transfer_write %307, %2[%63] : vector<i16>, tensor<10xi16>
        %309 = arith.xori %c5381_i16, %c620_i16 : i16
        %310 = vector.create_mask %c0 : vector<10xi1>
        %311 = vector.broadcast %cst_1 : f32 to vector<16x6x6xf32>
        %312 = vector.fma %311, %311, %311 : vector<16x6x6xf32>
        %313 = math.fma %306, %11, %13 : tensor<10xf16>
        %314 = arith.minui %c10514_i16, %c-7880_i16 : i16
        %315 = math.tanh %11 : tensor<10xf16>
        %316 = math.atan2 %cst_2, %cst : f16
        %317 = math.log2 %5 : tensor<10xf32>
        %318 = vector.flat_transpose %310 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %319 = vector.reduction <maxsi>, %48 : vector<16xi64> into i64
      }
      %275 = arith.divui %c5381_i16, %c18728_i16 : i16
      %276 = bufferization.clone %alloc_8 : memref<16x6x6xi64> to memref<16x6x6xi64>
      %277 = math.rsqrt %1 : tensor<10xf32>
      %278 = arith.minf %cst, %cst : f16
      %279 = arith.addi %c-7880_i16, %c-7880_i16 : i16
      %280 = vector.extract_strided_slice %49 {offsets = [11], sizes = [4], strides = [1]} : vector<16xi1> to vector<4xi1>
      %281 = vector.broadcast %true_20 : i1 to vector<6x6xi1>
      %282 = bufferization.clone %276 : memref<16x6x6xi64> to memref<16x6x6xi64>
      %283 = arith.floordivsi %c5381_i16, %c18728_i16 : i16
      %284 = math.exp %11 : tensor<10xf16>
      %285 = affine.apply affine_map<(d0) -> (1)>(%c2)
      %286 = arith.addi %c9774_i16, %c18728_i16 : i16
      %287 = math.tanh %cst_1 : f32
      scf.yield %50 : vector<16xi64>
    }
    %85 = math.absi %9 : tensor<16x6x6xi32>
    %alloc_23 = memref.alloc() : memref<16x6x6xi1>
    %86 = math.powf %13, %13 : tensor<10xf16>
    %87 = math.roundeven %11 : tensor<10xf16>
    %88 = arith.remf %cst_1, %cst_1 : f32
    %89 = affine.min affine_map<(d0, d1) -> (d1 + 64, (d0 + 128) * 32, (-d1) floordiv 4, d1 * 32)>(%c9, %c13)
    %90 = math.ctlz %15 : tensor<10xi1>
    %91 = math.tanh %0 : tensor<10xf32>
    %92 = vector.insert %cst_1, %26 [4] : f32 into vector<10xf32>
    %93 = bufferization.to_memref %16 : memref<10xf32>
    %94 = arith.remui %c5381_i16, %c620_i16 : i16
    %95 = index.divs %c3, %c12
    %96 = math.cos %cst_1 : f32
    %97 = math.roundeven %16 : tensor<10xf32>
    %98 = vector.load %alloc_17[%c2, %c2] : memref<6x6xi1>, vector<10xi1>
    %99 = math.round %17 : tensor<10xf32>
    %100 = vector.broadcast %c143440302_i64 : i64 to vector<13xi64>
    vector.transfer_write %100, %alloc_8[%c3, %c5, %82] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<13xi64>, memref<16x6x6xi64>
    %101 = arith.divf %cst_1, %cst_1 : f32
    %102 = index.floordivs %82, %c13
    %103 = affine.if affine_set<(d0) : (d0 * 8 >= 0)>(%c14) -> memref<10xi64> {
      %271 = arith.divf %cst_1, %cst_1 : f32
      %272 = index.casts %c5381_i16 : i16 to index
      %273 = vector.transpose %98, [0] : vector<10xi1> to vector<10xi1>
      %274 = math.roundeven %cst_0 : f16
      %275 = arith.negf %cst_1 : f32
      %276 = vector.broadcast %cst_1 : f32 to vector<6x6xf32>
      %277 = vector.fma %276, %276, %276 : vector<6x6xf32>
      %278 = index.maxs %70, %63
      %279 = bufferization.to_memref %22 : memref<f32>
      affine.yield %alloc_18 : memref<10xi64>
    } else {
      %271 = vector.shuffle %39, %39 [0, 1] : vector<i16>, vector<i16>
      %272 = vector.extract %49[8] : vector<16xi1>
      %273 = vector.multi_reduction <maxf>, %25, %25 [] : vector<10xf32> to vector<10xf32>
      %274 = tensor.empty() : tensor<10xi16>
      memref.copy %alloc_15, %alloc_18 : memref<10xi64> to memref<10xi64>
      %275 = arith.addi %c9774_i16, %c620_i16 : i16
      %276 = arith.mulf %cst, %cst_2 : f16
      %277 = math.floor %cst_0 : f16
      affine.yield %alloc_15 : memref<10xi64>
    }
    %104 = vector.broadcast %false_3 : i1 to vector<6x6xi1>
    %105 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %49, %41, %104 : vector<16xi1>, vector<16x6x6xi1> into vector<6x6xi1>
    %alloc_24 = memref.alloc() : memref<10xi32>
    %106 = math.powf %11, %11 : tensor<10xf16>
    %107 = bufferization.to_memref %8 : memref<10xi32>
    %108 = vector.extract %41[13, 0] : vector<16x6x6xi1>
    %109 = affine.min affine_map<(d0, d1, d2, d3) -> (((d1 ceildiv 16) floordiv 32) ceildiv 16, d2 mod 8, (d2 mod 8) * 64, d0 * 128)>(%c1, %c5, %c10, %c13)
    %110 = vector.extract %44[2] : vector<10xf32>
    %111 = vector.flat_transpose %44 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
    %112 = index.divs %95, %c4
    %113 = math.round %0 : tensor<10xf32>
    %114 = tensor.empty() : tensor<10xi32>
    %115 = math.floor %cst_2 : f16
    %116 = arith.mulf %cst_2, %cst : f16
    %alloc_25 = memref.alloc() : memref<6x16xi32>
    %117 = tensor.empty() : tensor<96x16xi32>
    %118 = linalg.matmul ins(%collapsed, %alloc_25 : tensor<96x6xi32>, memref<6x16xi32>) outs(%117 : tensor<96x16xi32>) -> tensor<96x16xi32>
    %119 = vector.load %alloc_15[%c6] : memref<10xi64>, vector<10xi64>
    %120 = scf.index_switch %109 -> i1 
    case 1 {
      %271 = vector.insertelement %false_3, %98[%95 : index] : vector<10xi1>
      %272 = math.floor %21 : tensor<f32>
      %273 = arith.maxui %false_3, %false_3 : i1
      %274 = math.log2 %0 : tensor<10xf32>
      %from_elements_37 = tensor.from_elements %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_0, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_0, %cst_0, %cst, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_0, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2 : tensor<16x6x6xf16>
      %275 = tensor.empty() : tensor<16x6x6xi32>
      %276 = math.tanh %cst : f16
      %277 = math.floor %13 : tensor<10xf16>
      %278 = math.log10 %0 : tensor<10xf32>
      %279 = math.floor %5 : tensor<10xf32>
      %280 = vector.broadcast %true_20 : i1 to vector<16x6xi1>
      %dest_38, %accumulated_value_39 = vector.scan <minui>, %41, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<16x6x6xi1>, vector<16x6xi1>
      %281 = vector.broadcast %c249545982_i32 : i32 to vector<6x6xi32>
      %282 = vector.broadcast %true_20 : i1 to vector<6x6xi1>
      %283 = vector.gather %14[%82, %95, %89] [%281], %282, %281 : tensor<16x6x6xi32>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi32> into vector<6x6xi32>
      %284 = arith.remf %cst_1, %cst_1 : f32
      %285 = vector.broadcast %false_3 : i1 to vector<16x6xi1>
      %dest_40, %accumulated_value_41 = vector.scan <xor>, %41, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<16x6x6xi1>, vector<16x6xi1>
      %286 = vector.maskedload %alloc_4[%c6], %108, %19 : memref<10xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      memref.copy %alloc_15, %alloc_18 : memref<10xi64> to memref<10xi64>
      scf.yield %false_3 : i1
    }
    case 2 {
      %271 = vector.broadcast %95 : index to vector<13xindex>
      %272 = vector.broadcast %false_3 : i1 to vector<13xi1>
      %273 = vector.broadcast %cst_1 : f32 to vector<13xf32>
      vector.scatter %93[%c2] [%271], %272, %273 : memref<10xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
      %274 = arith.divf %cst_1, %cst_1 : f32
      %275 = bufferization.clone %alloc_17 : memref<6x6xi1> to memref<6x6xi1>
      %276 = math.exp %0 : tensor<10xf32>
      %cast_37 = tensor.cast %4 : tensor<16x6x6xi32> to tensor<?x?x?xi32>
      %277 = vector.shuffle %119, %50 [0, 1, 5, 6, 7, 8, 10, 11, 12, 17, 19, 20, 23, 25] : vector<10xi64>, vector<16xi64>
      %278 = vector.broadcast %cst_1 : f32 to vector<16xf32>
      %279 = vector.maskedload %alloc_16[%c9], %49, %278 : memref<10xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
      %280 = arith.muli %true_20, %true_20 : i1
      %281 = affine.if affine_set<(d0) : (d0 >= 0, d0 >= 0)>(%c5) -> memref<10xf32> {
        %290 = math.rsqrt %5 : tensor<10xf32>
        %291 = index.add %c14, %c15
        %292 = index.casts %c3 : index to i32
        %293 = vector.flat_transpose %26 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %alloc_38 = memref.alloc() : memref<6x6xi16>
        memref.copy %alloc_6, %alloc_38 : memref<6x6xi16> to memref<6x6xi16>
        %c0_i32_39 = arith.constant 0 : i32
        %294 = vector.transfer_read %4[%c8, %c2, %c12], %c0_i32_39 : tensor<16x6x6xi32>, vector<13x13xi32>
        %295 = math.powf %0, %0 : tensor<10xf32>
        %296 = vector.shuffle %98, %49 [0, 2, 11, 14, 17, 18, 19, 20, 21, 24] : vector<10xi1>, vector<16xi1>
        affine.yield %alloc_11 : memref<10xf32>
      } else {
        %290 = arith.minf %cst, %cst_2 : f16
        %291 = math.exp %11 : tensor<10xf16>
        vector.print %39 : vector<i16>
        %292 = arith.shrui %c143440302_i64, %c143440302_i64 : i64
        %293 = math.round %22 : tensor<f32>
        %294 = vector.bitcast %19 : vector<6xi16> to vector<6xf16>
        %295 = math.cttz %9 : tensor<16x6x6xi32>
        %296 = math.exp %21 : tensor<f32>
        affine.yield %93 : memref<10xf32>
      }
      %282 = vector.matrix_multiply %278, %278 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
      %283 = arith.floordivsi %c18728_i16, %c620_i16 : i16
      %284 = index.sub %70, %c6
      %285 = vector.multi_reduction <mul>, %25, %cst_1 [0] : vector<10xf32> to f32
      %286 = vector.create_mask %c3 : vector<10xi1>
      %287 = bufferization.clone %alloc_16 : memref<10xf32> to memref<10xf32>
      %288 = vector.broadcast %cst_1 : f32 to vector<10xf32>
      %289 = vector.fma %288, %111, %44 : vector<10xf32>
      scf.yield %true_20 : i1
    }
    default {
      %271 = arith.shli %c5381_i16, %c9774_i16 : i16
      %272 = vector.create_mask %63, %95, %63 : vector<16x6x6xi1>
      %273 = arith.floordivsi %false_3, %false_3 : i1
      %274 = arith.minf %cst_2, %cst_2 : f16
      %275 = scf.if %false_3 -> (memref<10xf16>) {
        %284 = memref.atomic_rmw addf %cst_1, %alloc_11[%c7] : (f32, memref<10xf32>) -> f32
        %285 = index.sub %112, %63
        %286 = index.maxs %c15, %112
        %287 = vector.insert %cst_1, %26 [5] : f32 into vector<10xf32>
        %288 = math.powf %5, %0 : tensor<10xf32>
        %289 = arith.maxf %cst, %cst_0 : f16
        %290 = vector.load %alloc_17[%c0, %c0] : memref<6x6xi1>, vector<10xi1>
        %alloc_39 = memref.alloc() : memref<6x6xf32>
        memref.copy %alloc_10, %alloc_39 : memref<6x6xf32> to memref<6x6xf32>
        scf.yield %alloc_13 : memref<10xf16>
      } else {
        %284 = vector.bitcast %26 : vector<10xf32> to vector<10xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %50, %48, %c143440302_i64 : vector<16xi64>, vector<16xi64> into i64
        %286 = arith.shrui %c620_i16, %c-7880_i16 : i16
        %287 = vector.bitcast %48 : vector<16xi64> to vector<16xi64>
        %288 = index.ceildivs %c2, %47
        %289 = tensor.empty() : tensor<10xi16>
        %290 = vector.splat %c1798539765_i32 : vector<10xi32>
        %291 = math.tanh %0 : tensor<10xf32>
        scf.yield %alloc_13 : memref<10xf16>
      }
      %collapsed_37 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<16x6x6xi32> into tensor<96x6xi32>
      %276 = math.ctlz %c143440302_i64 : i64
      %collapsed_38 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<96x6xi32> into tensor<576xi32>
      %277 = vector.bitcast %44 : vector<10xf32> to vector<10xi32>
      memref.tensor_store %11, %275 : memref<10xf16>
      %278 = vector.create_mask %c11 : vector<10xi1>
      %279 = arith.floordivsi %c249545982_i32, %c1798539765_i32 : i32
      %280 = math.copysign %cst_1, %cst_1 : f32
      %281 = arith.divui %true, %false_3 : i1
      %282 = arith.divf %cst_0, %cst_0 : f16
      %283 = arith.cmpf ugt, %cst, %cst_0 : f16
      scf.yield %true : i1
    }
    %121 = arith.maxf %cst_0, %cst_0 : f16
    %122 = vector.broadcast %true : i1 to vector<i1>
    %123 = vector.transfer_write %122, %15[%95] : vector<i1>, tensor<10xi1>
    %124 = arith.andi %c143440302_i64, %c143440302_i64 : i64
    %125 = arith.cmpi slt, %false, %false : i1
    %126 = vector.reduction <minf>, %44 : vector<10xf32> into f32
    memref.assume_alignment %alloc_8, 2 : memref<16x6x6xi64>
    %127 = vector.reduction <maxui>, %19 : vector<6xi16> into i16
    %alloc_26 = memref.alloc() : memref<16x16xi32>
    %128 = tensor.empty() : tensor<96x16xi32>
    %129 = linalg.matmul ins(%117, %alloc_26 : tensor<96x16xi32>, memref<16x16xi32>) outs(%128 : tensor<96x16xi32>) -> tensor<96x16xi32>
    %130 = arith.divf %cst_2, %cst_0 : f16
    %131 = arith.maxui %c9774_i16, %c620_i16 : i16
    %132 = math.ipowi %c10514_i16, %c9774_i16 : i16
    %133 = arith.remf %cst, %cst_0 : f16
    %134 = vector.transpose %98, [0] : vector<10xi1> to vector<10xi1>
    %135 = bufferization.clone %alloc_19 : memref<6x6xi1> to memref<6x6xi1>
    %136 = arith.remui %c18728_i16, %c5381_i16 : i16
    %137 = arith.remui %c249545982_i32, %c1798539765_i32 : i32
    scf.if %true {
      %271 = vector.broadcast %true_20 : i1 to vector<16x6xi1>
      %dest_37, %accumulated_value_38 = vector.scan <maxsi>, %41, %271 {inclusive = true, reduction_dim = 2 : i64} : vector<16x6x6xi1>, vector<16x6xi1>
      %272 = bufferization.clone %alloc_13 : memref<10xf16> to memref<10xf16>
      %273 = arith.addi %c9774_i16, %c9774_i16 : i16
      %274 = vector.shuffle %122, %122 [0, 1] : vector<i1>, vector<i1>
      %275 = vector.broadcast %cst_1 : f32 to vector<6x6xf32>
      %276 = vector.fma %275, %275, %275 : vector<6x6xf32>
      %277 = index.ceildivs %c11, %c9
      %278 = vector.insertelement %true_20, %108[%c8 : index] : vector<6xi1>
      %279 = math.log %11 : tensor<10xf16>
    }
    %138 = math.roundeven %17 : tensor<10xf32>
    %cast = tensor.cast %22 : tensor<f32> to tensor<f32>
    %139 = math.absf %21 : tensor<f32>
    %140 = vector.broadcast %70 : index to vector<6xindex>
    vector.scatter %alloc_19[%c5, %c1] [%140], %108, %108 : memref<6x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
    %141 = arith.divf %cst, %cst_0 : f16
    %142 = math.roundeven %20 : tensor<10xf32>
    %143 = math.log1p %1 : tensor<10xf32>
    %144 = arith.floordivsi %c620_i16, %c-7880_i16 : i16
    %145 = math.atan2 %17, %20 : tensor<10xf32>
    %146 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 4, d3 mod 16)>(%c6, %c2, %47, %c11)
    %147 = arith.andi %true, %true_20 : i1
    %148 = vector.broadcast %c8 : index to vector<10xindex>
    %149 = vector.broadcast %cst : f16 to vector<10xf16>
    vector.scatter %alloc_13[%c4] [%148], %98, %149 : memref<10xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
    %150 = vector.transpose %55, [0] : vector<1xi16> to vector<1xi16>
    memref.copy %alloc_12, %alloc_4 : memref<10xi16> to memref<10xi16>
    %151 = bufferization.clone %alloc_12 : memref<10xi16> to memref<10xi16>
    %152 = vector.extract %19[3] : vector<6xi16>
    %153 = vector.extract_strided_slice %41 {offsets = [0], sizes = [15], strides = [1]} : vector<16x6x6xi1> to vector<15x6x6xi1>
    %154 = index.ceildivu %146, %c10
    %155 = affine.for %arg2 = 0 to 9 iter_args(%arg3 = %102) -> (index) {
      affine.yield %c2 : index
    }
    %156 = math.atan %11 : tensor<10xf16>
    %157 = vector.transpose %39, [] : vector<i16> to vector<i16>
    %158 = scf.while (%arg2 = %alloc_7) : (memref<6x6xi32>) -> memref<6x6xi32> {
      %271 = arith.cmpi ult, %false_3, %false_3 : i1
      %272 = math.cttz %9 : tensor<16x6x6xi32>
      scf.if %false {
        %278 = arith.mulf %cst_2, %cst_0 : f16
        %279 = math.log2 %0 : tensor<10xf32>
        %280 = vector.reduction <and>, %100 : vector<13xi64> into i64
        %281 = math.round %cst_1 : f32
        %282 = math.cttz %18 : tensor<i16>
        %splat_37 = tensor.splat %true_20 : tensor<10xi1>
        %283 = vector.load %alloc_4[%c7] : memref<10xi16>, vector<10xi16>
        %284 = math.log10 %11 : tensor<10xf16>
      } else {
        %collapsed_37 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<16x6x6xi32> into tensor<96x6xi32>
        %278 = math.log2 %21 : tensor<f32>
        %279 = index.add %c8, %112
        %280 = math.fma %22, %22, %22 : tensor<f32>
        %281 = vector.shuffle %41, %41 [2, 6, 7, 8, 13, 16, 19, 20, 23, 24, 27, 28] : vector<16x6x6xi1>, vector<16x6x6xi1>
        %282 = vector.reduction <maxui>, %100 : vector<13xi64> into i64
        %283 = math.fma %13, %11, %11 : tensor<10xf16>
        %284 = math.log10 %0 : tensor<10xf32>
      }
      %273 = bufferization.clone %alloc_19 : memref<6x6xi1> to memref<6x6xi1>
      %274 = vector.broadcast %59 : i32 to vector<6xi32>
      %275 = vector.maskedload %alloc_9[%c2, %c3, %c1], %108, %274 : memref<16x6x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %276 = arith.minsi %c1798539765_i32, %c249545982_i32 : i32
      memref.assume_alignment %alloc_5, 1 : memref<16x6x6xi16>
      %277 = arith.shli %c620_i16, %c18728_i16 : i16
      scf.condition(%false_3) %arg2 : memref<6x6xi32>
    } do {
    ^bb0(%arg2: memref<6x6xi32>):
      %271 = vector.matrix_multiply %50, %48 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
      %272 = vector.create_mask %c14, %89 : vector<6x6xi1>
      %273 = index.floordivs %47, %c8
      %274 = index.ceildivu %c4, %112
      %275 = math.ctlz %collapsed : tensor<96x6xi32>
      %276 = index.divu %c11, %70
      memref.tensor_store %13, %alloc_13 : memref<10xf16>
      %277 = math.absi %reduced : tensor<i16>
      %278 = vector.broadcast %cst_1 : f32 to vector<f32>
      vector.transfer_write %278, %alloc_16[%c3] : vector<f32>, memref<10xf32>
      %279 = arith.cmpi ugt, %false_3, %true : i1
      %from_elements_37 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<16x6x6xf32>
      %280 = arith.divui %c5381_i16, %c10514_i16 : i16
      %281 = arith.divf %cst_0, %cst : f16
      %282 = bufferization.clone %alloc_14 : memref<16x6x6xi32> to memref<16x6x6xi32>
      %283 = vector.create_mask %c3, %c11 : vector<6x6xi1>
      vector.print %49 : vector<16xi1>
      scf.yield %arg2 : memref<6x6xi32>
    }
    %generated = tensor.generate %c5 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %271 = math.ctlz %false : i1
      %false_37 = index.bool.constant false
      %272 = arith.shli %true_20, %false : i1
      %273 = index.divu %70, %c5
      tensor.yield %true_20 : i1
    } : tensor<?x6x6xi1>
    %159 = math.powf %cst_2, %cst : f16
    %160 = affine.max affine_map<(d0) -> (d0 - d0 mod 16, (d0 + d0 mod 16) floordiv 128)>(%c8)
    %161 = vector.shuffle %122, %122 [0, 1] : vector<i1>, vector<i1>
    %162 = math.roundeven %17 : tensor<10xf32>
    %163 = vector.load %107[%c6] : memref<10xi32>, vector<10xi32>
    %164 = affine.max affine_map<(d0, d1, d2) -> (d2 + d1, d0 floordiv 8 + 4, d2 + d1 - 1, d0 + 128)>(%89, %160, %c3)
    %165 = vector.broadcast %cst_1 : f32 to vector<10xf32>
    %166 = vector.fma %165, %44, %165 : vector<10xf32>
    %167 = index.sizeof
    %168 = math.absi %true_20 : i1
    %169 = vector.broadcast %true : i1 to vector<16x6xi1>
    %dest_27, %accumulated_value_28 = vector.scan <minsi>, %41, %169 {inclusive = false, reduction_dim = 1 : i64} : vector<16x6x6xi1>, vector<16x6xi1>
    %170 = math.rsqrt %5 : tensor<10xf32>
    %171 = index.divs %47, %c11
    %172 = math.log2 %5 : tensor<10xf32>
    %173 = affine.if affine_set<(d0) : ((-d0) ceildiv 2 == 0, ((-d0) floordiv 2 - 32) * 4 == 0)>(%c9) -> memref<10xf32> {
      %271 = arith.divui %c1798539765_i32, %c249545982_i32 : i32
      %272 = math.ctlz %10 : tensor<10xi16>
      %273 = vector.load %alloc_19[%c5, %c1] : memref<6x6xi1>, vector<16x6x6xi1>
      %274 = math.exp %5 : tensor<10xf32>
      memref.tensor_store %4, %alloc_9 : memref<16x6x6xi32>
      %alloca_37 = memref.alloca() : memref<16x6x6xf32>
      %275 = math.round %cst_1 : f32
      %276 = math.tanh %20 : tensor<10xf32>
      affine.yield %alloc_16 : memref<10xf32>
    } else {
      %271 = arith.minf %cst_2, %cst_2 : f16
      %272 = arith.floordivsi %false_3, %true : i1
      %273 = arith.minui %c-7880_i16, %c18728_i16 : i16
      %274 = arith.remf %cst_1, %cst_1 : f32
      %275 = math.exp %13 : tensor<10xf16>
      %276 = bufferization.clone %alloc_16 : memref<10xf32> to memref<10xf32>
      %277 = affine.load %93[%c1] : memref<10xf32>
      %278 = math.expm1 %cst : f16
      affine.yield %276 : memref<10xf32>
    }
    %splat = tensor.splat %c18728_i16 : tensor<16x6x6xi16>
    %174 = math.cos %11 : tensor<10xf16>
    %175 = arith.andi %c1798539765_i32, %c1798539765_i32 : i32
    %176 = math.log10 %21 : tensor<f32>
    %177 = scf.if %false_3 -> (f32) {
      %271 = math.rsqrt %16 : tensor<10xf32>
      %272 = vector.broadcast %59 : i32 to vector<6xi32>
      %273 = vector.maskedload %alloc_14[%c14, %c0, %c5], %108, %272 : memref<16x6x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %274 = vector.flat_transpose %98 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %275 = memref.load %93[%c0] : memref<10xf32>
      %cast_37 = tensor.cast %117 : tensor<96x16xi32> to tensor<?x?xi32>
      %276 = scf.while (%arg2 = %55) : (vector<1xi16>) -> vector<1xi16> {
        %278 = math.log10 %5 : tensor<10xf32>
        %279 = arith.divf %cst_1, %cst_1 : f32
        %280 = arith.maxsi %true, %false_3 : i1
        %281 = math.ipowi %14, %9 : tensor<16x6x6xi32>
        %282 = math.round %20 : tensor<10xf32>
        %283 = math.log2 %22 : tensor<f32>
        %284 = arith.mulf %cst_2, %cst_2 : f16
        %285 = math.copysign %5, %1 : tensor<10xf32>
        scf.condition(%false) %55 : vector<1xi16>
      } do {
      ^bb0(%arg2: vector<1xi16>):
        %278 = vector.broadcast %true : i1 to vector<15x6xi1>
        %dest_38, %accumulated_value_39 = vector.scan <minui>, %153, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<15x6x6xi1>, vector<15x6xi1>
        %279 = vector.bitcast %165 : vector<10xf32> to vector<10xf32>
        %280 = arith.minf %cst_0, %cst_2 : f16
        %281 = arith.shrui %false_3, %true_20 : i1
        %282 = index.divu %c14, %c13
        %283 = vector.broadcast %false : i1 to vector<15x6xi1>
        %dest_40, %accumulated_value_41 = vector.scan <or>, %153, %283 {inclusive = false, reduction_dim = 2 : i64} : vector<15x6x6xi1>, vector<15x6xi1>
        %284 = arith.minf %cst, %cst : f16
        %285 = bufferization.to_memref %114 : memref<10xi32>
        %286 = index.ceildivs %63, %164
        %287 = math.ceil %13 : tensor<10xf16>
        memref.assume_alignment %alloc_6, 4 : memref<6x6xi16>
        %288 = index.maxu %154, %160
        %collapsed_42 = tensor.collapse_shape %cast_37 [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
        %289 = vector.transpose %26, [0] : vector<10xf32> to vector<10xf32>
        %290 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 64)>(%102, %95, %c3)
        %291 = bufferization.to_memref %9 : memref<16x6x6xi32>
        scf.yield %55 : vector<1xi16>
      }
      scf.if %false {
        %278 = math.ceil %0 : tensor<10xf32>
        %279 = index.divu %c7, %c0
        %280 = math.cttz %12 : tensor<10xi16>
        %281 = arith.divui %c143440302_i64, %c143440302_i64 : i64
        %282 = arith.shli %false, %false : i1
        %283 = vector.extract %48[15] : vector<16xi64>
        %true_38 = index.bool.constant true
        %284 = math.log %21 : tensor<f32>
      }
      %277 = math.log2 %22 : tensor<f32>
      scf.yield %cst_1 : f32
    } else {
      %271 = arith.minf %cst_1, %cst_1 : f32
      %272 = arith.xori %c5381_i16, %c18728_i16 : i16
      %collapsed_37 = tensor.collapse_shape %128 [[0, 1]] : tensor<96x16xi32> into tensor<1536xi32>
      %273 = math.log2 %0 : tensor<10xf32>
      %274 = vector.transpose %165, [0] : vector<10xf32> to vector<10xf32>
      %275 = vector.broadcast %c143440302_i64 : i64 to vector<10xi64>
      %276 = vector.transfer_write %275, %6[%171, %154, %146] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi64>, tensor<16x6x6xi64>
      %277 = arith.divf %cst_0, %cst : f16
      %278 = vector.broadcast %cst_1 : f32 to vector<f32>
      %279 = vector.transfer_write %278, %5[%95] : vector<f32>, tensor<10xf32>
      scf.yield %cst_1 : f32
    }
    %178 = arith.muli %c249545982_i32, %c1798539765_i32 : i32
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_29 = arith.constant 0 : i32
    %179 = vector.transfer_read %alloc_9[%89, %82, %109], %c0_i32_29 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<16x6x6xi32>, vector<16xi32>
    %180 = math.exp %cst : f16
    %181 = index.divu %c9, %102
    %182 = math.tanh %16 : tensor<10xf32>
    %183 = vector.splat %146 : vector<16x6x6xindex>
    memref.tensor_store %114, %107 : memref<10xi32>
    %184 = math.powf %1, %1 : tensor<10xf32>
    %185 = math.log2 %0 : tensor<10xf32>
    %186 = arith.remui %59, %c1798539765_i32 : i32
    %187 = index.add %109, %109
    memref.copy %alloc_17, %135 : memref<6x6xi1> to memref<6x6xi1>
    %188 = arith.shli %c0_i32, %c249545982_i32 : i32
    %189 = arith.ori %c-7880_i16, %c9774_i16 : i16
    %190 = arith.divf %177, %177 : f32
    %191 = vector.reduction <minui>, %119 : vector<10xi64> into i64
    %192 = math.tanh %177 : f32
    %193 = math.exp %11 : tensor<10xf16>
    %splat_30 = tensor.splat %false_3 : tensor<6x6xi1>
    %194 = arith.andi %c1798539765_i32, %c0_i32 : i32
    %195 = arith.ceildivsi %c0_i32, %c249545982_i32 : i32
    %196 = arith.divf %cst_1, %177 : f32
    %197 = math.log %177 : f32
    %198 = index.ceildivu %c1, %c1
    %199 = index.ceildivs %187, %c10
    %200 = arith.remui %c5381_i16, %c620_i16 : i16
    %201 = bufferization.to_tensor %alloc_10 : memref<6x6xf32>
    %202 = vector.broadcast %47 : index to vector<10xindex>
    %203 = vector.broadcast %c10514_i16 : i16 to vector<10xi16>
    vector.scatter %alloc_5[%c15, %c5, %c4] [%202], %98, %203 : memref<16x6x6xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    %204 = math.expm1 %201 : tensor<6x6xf32>
    %205 = arith.subi %c-7880_i16, %c620_i16 : i16
    %206 = math.atan %21 : tensor<f32>
    %207 = vector.bitcast %44 : vector<10xf32> to vector<10xf32>
    %208 = math.cos %0 : tensor<10xf32>
    %209 = math.round %11 : tensor<10xf16>
    %false_31 = index.bool.constant false
    %210 = arith.xori %c9774_i16, %c620_i16 : i16
    %from_elements = tensor.from_elements %c-7880_i16, %c620_i16, %c10514_i16, %c9774_i16, %c9774_i16, %c10514_i16, %c5381_i16, %c9774_i16, %c9774_i16, %c10514_i16, %c10514_i16, %c9774_i16, %c-7880_i16, %c9774_i16, %c18728_i16, %c9774_i16, %c620_i16, %c9774_i16, %c18728_i16, %c10514_i16, %c10514_i16, %c18728_i16, %c5381_i16, %c10514_i16, %c9774_i16, %c620_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c18728_i16, %c5381_i16, %c18728_i16, %c10514_i16, %c-7880_i16, %c10514_i16, %c18728_i16, %c5381_i16, %c9774_i16, %c10514_i16, %c10514_i16, %c10514_i16, %c-7880_i16, %c9774_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c18728_i16, %c5381_i16, %c-7880_i16, %c9774_i16, %c9774_i16, %c18728_i16, %c10514_i16, %c10514_i16, %c9774_i16, %c-7880_i16, %c5381_i16, %c5381_i16, %c5381_i16, %c10514_i16, %c5381_i16, %c5381_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c-7880_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c620_i16, %c5381_i16, %c-7880_i16, %c-7880_i16, %c18728_i16, %c-7880_i16, %c5381_i16, %c-7880_i16, %c18728_i16, %c9774_i16, %c18728_i16, %c9774_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c620_i16, %c18728_i16, %c18728_i16, %c5381_i16, %c620_i16, %c620_i16, %c-7880_i16, %c9774_i16, %c5381_i16, %c18728_i16, %c620_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c-7880_i16, %c9774_i16, %c10514_i16, %c620_i16, %c-7880_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c10514_i16, %c620_i16, %c5381_i16, %c10514_i16, %c620_i16, %c-7880_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c9774_i16, %c-7880_i16, %c620_i16, %c-7880_i16, %c620_i16, %c10514_i16, %c620_i16, %c5381_i16, %c10514_i16, %c5381_i16, %c5381_i16, %c10514_i16, %c620_i16, %c-7880_i16, %c-7880_i16, %c9774_i16, %c18728_i16, %c-7880_i16, %c18728_i16, %c18728_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c-7880_i16, %c-7880_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c18728_i16, %c620_i16, %c5381_i16, %c10514_i16, %c18728_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c620_i16, %c620_i16, %c18728_i16, %c10514_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c10514_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c10514_i16, %c9774_i16, %c9774_i16, %c5381_i16, %c18728_i16, %c18728_i16, %c18728_i16, %c620_i16, %c10514_i16, %c9774_i16, %c-7880_i16, %c9774_i16, %c9774_i16, %c-7880_i16, %c620_i16, %c10514_i16, %c5381_i16, %c10514_i16, %c620_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c18728_i16, %c620_i16, %c5381_i16, %c-7880_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c10514_i16, %c9774_i16, %c620_i16, %c9774_i16, %c5381_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c-7880_i16, %c-7880_i16, %c10514_i16, %c18728_i16, %c-7880_i16, %c10514_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c10514_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c9774_i16, %c10514_i16, %c9774_i16, %c620_i16, %c18728_i16, %c10514_i16, %c10514_i16, %c10514_i16, %c5381_i16, %c5381_i16, %c-7880_i16, %c9774_i16, %c18728_i16, %c18728_i16, %c9774_i16, %c9774_i16, %c-7880_i16, %c-7880_i16, %c9774_i16, %c9774_i16, %c-7880_i16, %c5381_i16, %c9774_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c10514_i16, %c-7880_i16, %c5381_i16, %c9774_i16, %c5381_i16, %c9774_i16, %c9774_i16, %c10514_i16, %c10514_i16, %c-7880_i16, %c18728_i16, %c-7880_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c5381_i16, %c10514_i16, %c9774_i16, %c18728_i16, %c18728_i16, %c10514_i16, %c9774_i16, %c5381_i16, %c10514_i16, %c620_i16, %c5381_i16, %c5381_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c620_i16, %c18728_i16, %c9774_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c10514_i16, %c620_i16, %c620_i16, %c5381_i16, %c-7880_i16, %c18728_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c9774_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c-7880_i16, %c9774_i16, %c-7880_i16, %c620_i16, %c-7880_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c18728_i16, %c18728_i16, %c-7880_i16, %c5381_i16, %c10514_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c9774_i16, %c620_i16, %c-7880_i16, %c-7880_i16, %c620_i16, %c5381_i16, %c9774_i16, %c620_i16, %c620_i16, %c18728_i16, %c5381_i16, %c9774_i16, %c-7880_i16, %c18728_i16, %c10514_i16, %c-7880_i16, %c-7880_i16, %c9774_i16, %c620_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c620_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c9774_i16, %c620_i16, %c620_i16, %c18728_i16, %c-7880_i16, %c9774_i16, %c10514_i16, %c-7880_i16, %c5381_i16, %c620_i16, %c9774_i16, %c9774_i16, %c620_i16, %c620_i16, %c18728_i16, %c9774_i16, %c9774_i16, %c-7880_i16, %c9774_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c10514_i16, %c620_i16, %c10514_i16, %c5381_i16, %c10514_i16, %c18728_i16, %c9774_i16, %c9774_i16, %c9774_i16, %c5381_i16, %c620_i16, %c5381_i16, %c18728_i16, %c9774_i16, %c620_i16, %c10514_i16, %c10514_i16, %c9774_i16, %c10514_i16, %c10514_i16, %c5381_i16, %c18728_i16, %c10514_i16, %c10514_i16, %c-7880_i16, %c9774_i16, %c9774_i16, %c9774_i16, %c10514_i16, %c9774_i16, %c18728_i16, %c18728_i16, %c5381_i16, %c5381_i16, %c18728_i16, %c10514_i16, %c5381_i16, %c5381_i16, %c9774_i16, %c18728_i16, %c5381_i16, %c9774_i16, %c10514_i16, %c620_i16, %c18728_i16, %c620_i16, %c5381_i16, %c620_i16, %c10514_i16, %c5381_i16, %c10514_i16, %c-7880_i16, %c9774_i16, %c5381_i16, %c5381_i16, %c5381_i16, %c9774_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c620_i16, %c9774_i16, %c10514_i16, %c9774_i16, %c-7880_i16, %c10514_i16, %c5381_i16, %c620_i16, %c18728_i16, %c9774_i16, %c18728_i16, %c-7880_i16, %c620_i16, %c10514_i16, %c9774_i16, %c620_i16, %c620_i16, %c-7880_i16, %c10514_i16, %c5381_i16, %c18728_i16, %c5381_i16, %c5381_i16, %c18728_i16, %c10514_i16, %c18728_i16, %c5381_i16, %c18728_i16, %c620_i16, %c10514_i16, %c620_i16, %c10514_i16, %c5381_i16, %c18728_i16, %c620_i16, %c10514_i16, %c10514_i16, %c620_i16, %c10514_i16, %c10514_i16, %c620_i16, %c620_i16, %c5381_i16, %c620_i16, %c9774_i16, %c18728_i16, %c620_i16, %c5381_i16, %c5381_i16, %c18728_i16, %c18728_i16, %c9774_i16, %c9774_i16, %c10514_i16, %c620_i16, %c9774_i16, %c18728_i16, %c18728_i16, %c10514_i16, %c5381_i16, %c620_i16, %c620_i16, %c10514_i16, %c5381_i16, %c9774_i16, %c10514_i16, %c-7880_i16, %c18728_i16, %c-7880_i16, %c9774_i16, %c5381_i16, %c18728_i16, %c18728_i16, %c9774_i16, %c620_i16, %c9774_i16, %c10514_i16, %c18728_i16, %c5381_i16, %c620_i16, %c18728_i16, %c5381_i16, %c10514_i16, %c-7880_i16, %c620_i16, %c9774_i16, %c620_i16, %c620_i16, %c10514_i16, %c18728_i16, %c18728_i16, %c-7880_i16, %c-7880_i16, %c5381_i16, %c620_i16, %c18728_i16, %c9774_i16, %c620_i16, %c620_i16, %c9774_i16, %c18728_i16, %c-7880_i16, %c18728_i16, %c18728_i16, %c-7880_i16, %c-7880_i16, %c9774_i16, %c18728_i16, %c18728_i16, %c18728_i16, %c5381_i16, %c-7880_i16, %c5381_i16, %c5381_i16, %c5381_i16, %c620_i16, %c10514_i16, %c10514_i16, %c9774_i16, %c-7880_i16, %c-7880_i16, %c18728_i16, %c9774_i16, %c10514_i16, %c18728_i16, %c-7880_i16, %c620_i16, %c5381_i16, %c5381_i16, %c5381_i16, %c-7880_i16, %c10514_i16, %c-7880_i16, %c-7880_i16, %c5381_i16, %c9774_i16, %c5381_i16, %c-7880_i16, %c18728_i16, %c9774_i16 : tensor<16x6x6xi16>
    %211 = math.ipowi %117, %117 : tensor<96x16xi32>
    %212 = bufferization.to_tensor %93 : memref<10xf32>
    %213 = math.fma %201, %201, %201 : tensor<6x6xf32>
    %214 = arith.mulf %177, %cst_1 : f32
    %215 = index.ceildivs %c0, %47
    %216 = math.absf %13 : tensor<10xf16>
    %217 = arith.minsi %true_20, %false : i1
    %218 = math.floor %13 : tensor<10xf16>
    %219 = math.absi %12 : tensor<10xi16>
    %220 = vector.maskedload %alloc_14[%c6, %c0, %c1], %98, %163 : memref<16x6x6xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
    %221 = arith.ori %c9774_i16, %c620_i16 : i16
    %222 = affine.for %arg2 = 0 to 7 iter_args(%arg3 = %cst_0) -> (f16) {
      affine.yield %arg3 : f16
    }
    %223 = vector.create_mask %89, %c0, %47 : vector<16x6x6xi1>
    %224 = arith.ceildivsi %c5381_i16, %c18728_i16 : i16
    %225 = arith.shli %c0_i32, %c1798539765_i32 : i32
    %226 = math.round %21 : tensor<f32>
    %227 = arith.remf %177, %177 : f32
    %228 = math.exp %20 : tensor<10xf32>
    %229 = index.ceildivs %199, %c12
    memref.store %c143440302_i64, %alloc_15[%c3] : memref<10xi64>
    %230 = affine.for %arg2 = 0 to 113 iter_args(%arg3 = %10) -> (tensor<10xi16>) {
      affine.yield %2 : tensor<10xi16>
    }
    %alloca_32 = memref.alloca() : memref<10xi16>
    %231 = arith.maxui %c1798539765_i32, %c0_i32 : i32
    %232 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 + 16) ceildiv 128 >= 0, d0 == 0, -d0 >= 0)>(%c9, %c7, %c6, %c8) -> memref<6x6xi1> {
      %271 = bufferization.to_memref %from_elements : memref<16x6x6xi16>
      %272 = vector.broadcast %c5381_i16 : i16 to vector<i16>
      vector.transfer_write %272, %151[%c14] : vector<i16>, memref<10xi16>
      %273 = vector.insertelement %c249545982_i32, %163[%82 : index] : vector<10xi32>
      %274 = math.cttz %14 : tensor<16x6x6xi32>
      %false_37 = index.bool.constant false
      %275 = vector.insertelement %c143440302_i64, %100[%c2 : index] : vector<13xi64>
      %276 = bufferization.clone %alloc_18 : memref<10xi64> to memref<10xi64>
      %277 = index.add %199, %47
      affine.yield %alloc_19 : memref<6x6xi1>
    } else {
      %alloc_37 = memref.alloc() : memref<6x10xi32>
      %271 = tensor.empty() : tensor<96x10xi32>
      %272 = linalg.matmul ins(%collapsed, %alloc_37 : tensor<96x6xi32>, memref<6x10xi32>) outs(%271 : tensor<96x10xi32>) -> tensor<96x10xi32>
      %273 = vector.broadcast %false : i1 to vector<15x6xi1>
      %dest_38, %accumulated_value_39 = vector.scan <xor>, %153, %273 {inclusive = true, reduction_dim = 2 : i64} : vector<15x6x6xi1>, vector<15x6xi1>
      %274 = math.absf %cst : f16
      %275 = index.casts %c18728_i16 : i16 to index
      %276 = scf.if %false_3 -> (memref<10xf16>) {
        %from_elements_40 = tensor.from_elements %59, %c249545982_i32, %c1798539765_i32, %59, %59, %c249545982_i32, %c1798539765_i32, %c1798539765_i32, %59, %c0_i32 : tensor<10xi32>
        %280 = arith.maxf %177, %cst_1 : f32
        %281 = arith.floordivsi %c-7880_i16, %c18728_i16 : i16
        %282 = arith.addi %false_31, %true_20 : i1
        %283 = math.atan %0 : tensor<10xf32>
        %284 = math.ipowi %2, %2 : tensor<10xi16>
        %285 = arith.cmpi slt, %c620_i16, %c10514_i16 : i16
        %286 = vector.multi_reduction <add>, %19, %19 [] : vector<6xi16> to vector<6xi16>
        scf.yield %alloc_13 : memref<10xf16>
      } else {
        %280 = math.copysign %0, %17 : tensor<10xf32>
        %281 = vector.flat_transpose %220 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %c1_i32 = arith.constant 1 : i32
        %282 = vector.transfer_read %271[%c6, %275], %c1_i32 : tensor<96x10xi32>, vector<i32>
        %283 = index.divu %c1, %82
        %284 = vector.transpose %220, [0] : vector<10xi32> to vector<10xi32>
        %285 = vector.load %alloc_8[%c5, %c4, %c1] : memref<16x6x6xi64>, vector<6x6xi64>
        %286 = arith.divf %cst_0, %cst : f16
        %287 = arith.minf %cst_0, %cst_2 : f16
        scf.yield %alloc_13 : memref<10xf16>
      }
      %277 = memref.load %alloc_11[%c5] : memref<10xf32>
      %278 = math.cttz %4 : tensor<16x6x6xi32>
      %279 = math.copysign %0, %17 : tensor<10xf32>
      affine.yield %alloc_19 : memref<6x6xi1>
    }
    %233 = tensor.empty() : tensor<10xi1>
    %234 = arith.divf %cst, %cst_2 : f16
    %235 = arith.xori %true_20, %false : i1
    memref.store %c9774_i16, %alloc_6[%c0, %c4] : memref<6x6xi16>
    %236 = math.floor %1 : tensor<10xf32>
    %237 = math.atan %201 : tensor<6x6xf32>
    %238 = math.copysign %cst_2, %cst : f16
    %239 = vector.shuffle %108, %108 [1, 4, 5, 6, 7, 9] : vector<6xi1>, vector<6xi1>
    %240 = math.fma %1, %212, %17 : tensor<10xf32>
    %241 = math.powf %177, %cst_1 : f32
    %242 = index.divu %c3, %47
    %243 = arith.remf %cst_1, %177 : f32
    %244 = arith.shrui %c1798539765_i32, %c0_i32 : i32
    %245 = vector.flat_transpose %50 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %246 = affine.for %arg2 = 0 to 4 iter_args(%arg3 = %114) -> (tensor<10xi32>) {
      affine.yield %7 : tensor<10xi32>
    }
    %247 = arith.mulf %cst, %cst_2 : f16
    %248 = arith.maxui %c18728_i16, %c10514_i16 : i16
    %249 = math.floor %cst_1 : f32
    %250 = affine.apply affine_map<(d0) -> (d0 ceildiv 16)>(%82)
    %251 = arith.remf %cst_1, %177 : f32
    %252 = memref.load %alloc_12[%c3] : memref<10xi16>
    %253 = math.ctlz %3 : tensor<10xi1>
    %254 = vector.matrix_multiply %100, %119 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 10 : i32} : (vector<13xi64>, vector<10xi64>) -> vector<130xi64>
    %255 = vector.load %alloc_15[%c7] : memref<10xi64>, vector<6x6xi64>
    %256 = vector.broadcast %false_3 : i1 to vector<6x6xi1>
    %dest_33, %accumulated_value_34 = vector.scan <xor>, %223, %256 {inclusive = false, reduction_dim = 0 : i64} : vector<16x6x6xi1>, vector<6x6xi1>
    %257 = arith.shrui %c1798539765_i32, %c0_i32 : i32
    %258 = arith.mulf %cst_1, %cst_1 : f32
    %259 = vector.broadcast %c143440302_i64 : i64 to vector<6xi64>
    %260 = vector.insert %259, %255 [0] : vector<6xi64> into vector<6x6xi64>
    %collapsed_35 = tensor.collapse_shape %splat_30 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
    %261 = arith.shli %c0_i32, %c1798539765_i32 : i32
    %262 = math.cos %11 : tensor<10xf16>
    %263 = vector.bitcast %50 : vector<16xi64> to vector<16xi64>
    %264 = vector.shuffle %108, %108 [4, 5, 7, 8, 11] : vector<6xi1>, vector<6xi1>
    %265 = math.round %17 : tensor<10xf32>
    %266 = math.atan2 %201, %201 : tensor<6x6xf32>
    %267 = tensor.empty() : tensor<6x6xf32>
    %268 = linalg.copy ins(%201 : tensor<6x6xf32>) outs(%267 : tensor<6x6xf32>) -> tensor<6x6xf32>
    %269 = tensor.empty() : tensor<10xf16>
    %transposed = linalg.transpose ins(%11 : tensor<10xf16>) outs(%269 : tensor<10xf16>) permutation = [0] 
    %alloc_36 = memref.alloc() : memref<6xf32>
    linalg.reduce ins(%267 : tensor<6x6xf32>) outs(%alloc_36 : memref<6xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %271 = vector.broadcast %47 : index to vector<10xindex>
        vector.scatter %alloc_9[%c3, %c2, %c1] [%271], %98, %163 : memref<16x6x6xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %272 = vector.broadcast %c249545982_i32 : i32 to vector<i32>
        %273 = vector.transfer_write %272, %8[%181] : vector<i32>, tensor<10xi32>
        %274 = vector.load %alloc[%c14, %c0, %c3] : memref<16x6x6xi1>, vector<16x6x6xi1>
        %275 = arith.muli %c-7880_i16, %c5381_i16 : i16
        %276 = index.maxs %c15, %164
        %277 = arith.floordivsi %c1798539765_i32, %c1798539765_i32 : i32
        %cst_37 = arith.constant 4.204800e+04 : f16
        %278 = index.sub %215, %c12
        %cst_38 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_38 : f32
      }
    scf.parallel (%arg2) = (%82) to (%63) step (%c6) {
      %271 = memref.load %151[%c8] : memref<10xi16>
      %alloca_37 = memref.alloca() : memref<10xi1>
      %272 = bufferization.to_memref %cast : memref<f32>
      %273 = math.fma %1, %5, %5 : tensor<10xf32>
      %274 = arith.negf %cst : f16
      %alloc_38 = memref.alloc() : memref<6x6xi64>
      %275 = vector.extract %25[2] : vector<10xf32>
      %276 = math.ipowi %true, %false : i1
      %277 = arith.shrui %true, %false_3 : i1
      %splat_39 = tensor.splat %cst : tensor<6x6xf16>
      %278 = arith.divf %cst_1, %cst_1 : f32
      %279 = vector.create_mask %187 : vector<10xi1>
      %280 = arith.remui %c5381_i16, %c5381_i16 : i16
      %281 = arith.shrsi %c18728_i16, %c10514_i16 : i16
      %282 = arith.shrui %59, %c1798539765_i32 : i32
      %283 = index.floordivs %c12, %229
      scf.yield
    }
    %270 = affine.vector_load %alloc_11[%154] : memref<10xf32>, vector<6xf32>
    affine.vector_store %100, %alloc_15[%c0] : memref<10xi64>, vector<13xi64>
    vector.print %19 : vector<6xi16>
    vector.print %25 : vector<10xf32>
    vector.print %26 : vector<10xf32>
    vector.print %39 : vector<i16>
    vector.print %41 : vector<16x6x6xi1>
    vector.print %44 : vector<10xf32>
    vector.print %48 : vector<16xi64>
    vector.print %49 : vector<16xi1>
    vector.print %50 : vector<16xi64>
    vector.print %55 : vector<1xi16>
    vector.print %98 : vector<10xi1>
    vector.print %100 : vector<13xi64>
    vector.print %108 : vector<6xi1>
    vector.print %111 : vector<10xf32>
    vector.print %119 : vector<10xi64>
    vector.print %122 : vector<i1>
    vector.print %153 : vector<15x6x6xi1>
    vector.print %163 : vector<10xi32>
    vector.print %165 : vector<10xf32>
    vector.print %166 : vector<10xf32>
    vector.print %207 : vector<10xf32>
    vector.print %220 : vector<10xi32>
    vector.print %223 : vector<16x6x6xi1>
    vector.print %245 : vector<16xi64>
    vector.print %254 : vector<130xi64>
    vector.print %255 : vector<6x6xi64>
    vector.print %259 : vector<6xi64>
    vector.print %263 : vector<16xi64>
    vector.print %270 : vector<6xf32>
    vector.print %true : i1
    vector.print %c5381_i16 : i16
    vector.print %cst : f16
    vector.print %false : i1
    vector.print %cst_0 : f16
    vector.print %c10514_i16 : i16
    vector.print %c143440302_i64 : i64
    vector.print %c-7880_i16 : i16
    vector.print %c249545982_i32 : i32
    vector.print %c18728_i16 : i16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c1798539765_i32 : i32
    vector.print %c9774_i16 : i16
    vector.print %false_3 : i1
    vector.print %c620_i16 : i16
    vector.print %true_20 : i1
    vector.print %59 : i32
    vector.print %177 : f32
    vector.print %c0_i32 : i32
    vector.print %false_31 : i1
    return
  }
}
