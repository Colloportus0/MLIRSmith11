module {
  func.func @func1(%arg0: tensor<6x8xf32>) {
    %cst = arith.constant 0x4D9B3339 : f32
    %cst_0 = arith.constant 5.571200e+04 : f16
    %false = arith.constant false
    %false_1 = arith.constant false
    %c1731788708_i64 = arith.constant 1731788708 : i64
    %c1194350541_i32 = arith.constant 1194350541 : i32
    %cst_2 = arith.constant 3.131200e+04 : f16
    %c190_i16 = arith.constant 190 : i16
    %c-13772_i16 = arith.constant -13772 : i16
    %true = arith.constant true
    %true_3 = arith.constant true
    %cst_4 = arith.constant 1.02430144E+9 : f32
    %c-12805_i16 = arith.constant -12805 : i16
    %c1689801499_i32 = arith.constant 1689801499 : i32
    %c248862142_i64 = arith.constant 248862142 : i64
    %c16975482_i32 = arith.constant 16975482 : i32
    %0 = tensor.empty() : tensor<6x8xf32>
    %1 = tensor.empty() : tensor<8xi64>
    %2 = tensor.empty() : tensor<8xi32>
    %3 = tensor.empty() : tensor<6x8xi32>
    %4 = tensor.empty() : tensor<14xi32>
    %5 = tensor.empty() : tensor<8xi64>
    %6 = tensor.empty() : tensor<8xf16>
    %7 = tensor.empty() : tensor<8xi1>
    %8 = tensor.empty() : tensor<6x8xf16>
    %9 = tensor.empty() : tensor<8xi16>
    %10 = tensor.empty() : tensor<14xi16>
    %11 = tensor.empty() : tensor<8xi32>
    %12 = tensor.empty() : tensor<8xi32>
    %13 = tensor.empty() : tensor<6x8xf16>
    %14 = tensor.empty() : tensor<8xf16>
    %15 = tensor.empty() : tensor<14xi32>
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
    %alloc = memref.alloc() : memref<8xf32>
    %alloc_5 = memref.alloc() : memref<8xi1>
    %alloc_6 = memref.alloc() : memref<14xi16>
    %alloc_7 = memref.alloc() : memref<8xf16>
    %alloc_8 = memref.alloc() : memref<8xf32>
    %alloc_9 = memref.alloc() : memref<8xi16>
    %alloc_10 = memref.alloc() : memref<14xi32>
    %alloc_11 = memref.alloc() : memref<14xf16>
    %alloc_12 = memref.alloc() : memref<6x8xi16>
    %alloc_13 = memref.alloc() : memref<8xi16>
    %alloc_14 = memref.alloc() : memref<6x8xf32>
    %alloc_15 = memref.alloc() : memref<14xi16>
    %alloc_16 = memref.alloc() : memref<6x8xi1>
    %alloc_17 = memref.alloc() : memref<8xi32>
    %alloc_18 = memref.alloc() : memref<6x8xf16>
    %alloc_19 = memref.alloc() : memref<8xi16>
    %16 = tensor.empty() : tensor<8xi64>
    %17 = linalg.copy ins(%5 : tensor<8xi64>) outs(%16 : tensor<8xi64>) -> tensor<8xi64>
    %18 = tensor.empty() : tensor<8xi1>
    %transposed = linalg.transpose ins(%7 : tensor<8xi1>) outs(%18 : tensor<8xi1>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<i64>
    linalg.reduce ins(%5 : tensor<8xi64>) outs(%alloc_20 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<6x8xi32> into tensor<48xi32>
        %259 = bufferization.to_memref %14 : memref<8xf16>
        %260 = index.ceildivs %c12, %c4
        %from_elements_48 = tensor.from_elements %init, %c1731788708_i64, %in, %c248862142_i64, %c1731788708_i64, %init, %init, %in : tensor<8xi64>
        %261 = vector.load %alloc_7[%c7] : memref<8xf16>, vector<8xf16>
        %262 = math.floor %cst_4 : f32
        bufferization.dealloc_tensor %1 : tensor<8xi64>
        %263 = arith.minui %false, %true_3 : i1
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg1) = (%c0) to (%c2) step (%c4) {
      %259 = math.ipowi %5, %17 : tensor<8xi64>
      %inserted_48 = tensor.insert %c1689801499_i32 into %2[%c6] : tensor<8xi32>
      %260 = index.maxs %c5, %c7
      %splat_49 = tensor.splat %cst : tensor<8xf32>
      %261 = arith.shli %c1731788708_i64, %c1731788708_i64 : i64
      %262 = index.ceildivs %c13, %c4
      %263 = bufferization.clone %alloc_6 : memref<14xi16> to memref<14xi16>
      %264 = math.round %cst_2 : f16
      %265 = math.log10 %14 : tensor<8xf16>
      %266 = arith.maxsi %c1689801499_i32, %c16975482_i32 : i32
      %267 = memref.load %alloc_20[] : memref<i64>
      %268 = vector.broadcast %true : i1 to vector<i1>
      %269 = vector.transfer_write %268, %transposed[%c5] : vector<i1>, tensor<8xi1>
      %alloc_50 = memref.alloc() : memref<i64>
      memref.copy %alloc_20, %alloc_50 : memref<i64> to memref<i64>
      %270 = math.expm1 %6 : tensor<8xf16>
      %271 = math.tanh %splat_49 : tensor<8xf32>
      %272 = affine.for %arg2 = 0 to 50 iter_args(%arg3 = %7) -> (tensor<8xi1>) {
        affine.yield %18 : tensor<8xi1>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_9[%c0] : memref<8xi16>, vector<7xi16>
    affine.vector_store %19, %alloc_6[%c14] : memref<14xi16>, vector<7xi16>
    %alloc_21 = memref.alloc() : memref<8xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%6, %alloc_21 : tensor<8xf16>, memref<8xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = vector.bitcast %19 : vector<7xi16> to vector<7xi16>
    %23 = math.ipowi %true, %false : i1
    %cast = tensor.cast %6 : tensor<8xf16> to tensor<?xf16>
    %24 = vector.insert %c-13772_i16, %22 [2] : i16 into vector<7xi16>
    %25 = tensor.empty() : tensor<8x6xf16>
    %26 = tensor.empty() : tensor<6x6xf16>
    %27 = linalg.matmul ins(%13, %25 : tensor<6x8xf16>, tensor<8x6xf16>) outs(%26 : tensor<6x6xf16>) -> tensor<6x6xf16>
    memref.assume_alignment %alloc_9, 4 : memref<8xi16>
    %28 = memref.atomic_rmw minf %cst_4, %alloc_14[%c0, %c7] : (f32, memref<6x8xf32>) -> f32
    %alloca = memref.alloca() : memref<8xf16>
    %inserted = tensor.insert %c16975482_i32 into %3[%c3, %c5] : tensor<6x8xi32>
    %alloc_22 = memref.alloc() : memref<14xf32>
    %29 = math.tanh %21 : tensor<f16>
    %30 = vector.reduction <mul>, %19 : vector<7xi16> into i16
    %31 = arith.xori %c190_i16, %c-13772_i16 : i16
    %32 = index.floordivs %c6, %c10
    %33 = arith.minf %cst_2, %cst_2 : f16
    bufferization.dealloc_tensor %8 : tensor<6x8xf16>
    %34 = vector.extract %19[2] : vector<7xi16>
    %35 = arith.remf %cst_2, %cst_0 : f16
    %36 = arith.minui %c1194350541_i32, %c16975482_i32 : i32
    %37 = memref.realloc %alloc_19 : memref<8xi16> to memref<7xi16>
    %38 = arith.xori %true, %true : i1
    %39 = math.ipowi %18, %7 : tensor<8xi1>
    %40 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 128)>(%c1, %c11, %c10, %c2)
    %41 = vector.bitcast %22 : vector<7xi16> to vector<7xi16>
    %42 = vector.load %alloc_15[%c4] : memref<14xi16>, vector<8xi16>
    %43 = math.rsqrt %6 : tensor<8xf16>
    scf.if %true {
      %259 = index.sub %c5, %c0
      %260 = tensor.empty() : tensor<14xf32>
      %261 = math.exp2 %6 : tensor<8xf16>
      %262 = vector.matrix_multiply %19, %42 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<7xi16>, vector<8xi16>) -> vector<56xi16>
      %263 = arith.divui %c248862142_i64, %c248862142_i64 : i64
      %alloc_48 = memref.alloc() : memref<6x8xi32>
      memref.tensor_store %3, %alloc_48 : memref<6x8xi32>
      %264 = vector.bitcast %22 : vector<7xi16> to vector<7xf16>
      %from_elements_49 = tensor.from_elements %c1731788708_i64, %c248862142_i64, %c1731788708_i64, %c248862142_i64, %c1731788708_i64, %c1731788708_i64, %c1731788708_i64, %c248862142_i64, %c1731788708_i64, %c1731788708_i64, %c1731788708_i64, %c248862142_i64, %c1731788708_i64, %c248862142_i64 : tensor<14xi64>
    } else {
      %259 = math.log10 %0 : tensor<6x8xf32>
      %260 = vector.extract_strided_slice %22 {offsets = [3], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
      %261 = affine.if affine_set<(d0, d1, d2) : (((d2 ceildiv 2) * 32) ceildiv 64 >= 0, ((d2 ceildiv 2) * 32) ceildiv 64 >= 0, d1 floordiv 16 == 0, d0 == 0)>(%c14, %c10, %c4) -> memref<14xf16> {
        %268 = arith.cmpi sge, %c-13772_i16, %c-12805_i16 : i16
        %269 = vector.create_mask %c15 : vector<8xi1>
        %270 = index.ceildivs %c8, %c1
        %alloca_48 = memref.alloca() : memref<8xi64>
        %alloca_49 = memref.alloca() : memref<8xi64>
        %271 = tensor.empty() : tensor<6x8xi16>
        %272 = vector.broadcast %c-13772_i16 : i16 to vector<6x8xi16>
        %273 = vector.broadcast %false_1 : i1 to vector<6x8xi1>
        %274 = vector.broadcast %c1194350541_i32 : i32 to vector<6x8xi32>
        %275 = vector.gather %271[%c3, %c15] [%274], %273, %272 : tensor<6x8xi16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi16> into vector<6x8xi16>
        %276 = arith.addi %c16975482_i32, %c1194350541_i32 : i32
        %277 = math.absf %6 : tensor<8xf16>
        affine.yield %alloc_11 : memref<14xf16>
      } else {
        %268 = vector.extract %19[1] : vector<7xi16>
        %269 = index.divu %40, %c14
        %c1899565933_i64 = arith.constant 1899565933 : i64
        %270 = math.round %cst_2 : f16
        %rank = tensor.rank %20 : tensor<f16>
        %271 = index.maxu %c13, %c0
        %272 = memref.load %alloc_21[%c0] : memref<8xf16>
        %273 = index.divu %c10, %c7
        affine.yield %alloc_11 : memref<14xf16>
      }
      %262 = math.tan %13 : tensor<6x8xf16>
      %263 = vector.broadcast %cst : f32 to vector<14xf32>
      %264 = vector.fma %263, %263, %263 : vector<14xf32>
      %265 = memref.alloca_scope  -> (memref<8xf16>) {
        %268 = math.exp2 %14 : tensor<8xf16>
        %269 = vector.broadcast %c16975482_i32 : i32 to vector<i32>
        %270 = vector.transfer_write %269, %12[%c0] : vector<i32>, tensor<8xi32>
        %271 = vector.extract %42[7] : vector<8xi16>
        %272 = math.floor %cst : f32
        %273 = math.round %8 : tensor<6x8xf16>
        %274 = arith.shrui %c1689801499_i32, %c1194350541_i32 : i32
        %rank = tensor.rank %11 : tensor<8xi32>
        %275 = arith.maxsi %false_1, %true : i1
        %276 = vector.broadcast %cst_2 : f16 to vector<8xf16>
        %277 = vector.broadcast %false : i1 to vector<8xi1>
        %278 = vector.broadcast %c1689801499_i32 : i32 to vector<8xi32>
        %279 = vector.gather %alloc_7[%c2] [%278], %277, %276 : memref<8xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %280 = vector.broadcast %c14 : index to vector<7xindex>
        %281 = vector.broadcast %false : i1 to vector<7xi1>
        %282 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        vector.scatter %alloc[%c7] [%280], %281, %282 : memref<8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %283 = math.roundeven %13 : tensor<6x8xf16>
        %284 = bufferization.to_tensor %alloc_11 : memref<14xf16>
        %285 = vector.broadcast %cst_4 : f32 to vector<8xf32>
        %286 = vector.fma %285, %285, %285 : vector<8xf32>
        %287 = bufferization.to_tensor %alloc_21 : memref<8xf16>
        %expanded_48 = tensor.expand_shape %5 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
        %288 = arith.ceildivsi %c-12805_i16, %c-12805_i16 : i16
        memref.copy %alloc_15, %alloc_6 : memref<14xi16> to memref<14xi16>
        %289 = memref.load %alloc_21[%c0] : memref<8xf16>
        %290 = math.ceil %0 : tensor<6x8xf32>
        %291 = index.add %c13, %c1
        %292 = tensor.empty() : tensor<14xf32>
        %293 = vector.gather %292[%c8] [%278], %277, %285 : tensor<14xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %extracted_49 = tensor.extract %11[%c0] : tensor<8xi32>
        %cast_50 = tensor.cast %16 : tensor<8xi64> to tensor<?xi64>
        %294 = math.round %20 : tensor<f16>
        %expanded_51 = tensor.expand_shape %2 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %295 = vector.extract_strided_slice %293 {offsets = [6], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
        memref.store %c-13772_i16, %alloc_19[%c0] : memref<8xi16>
        %296 = math.tan %13 : tensor<6x8xf16>
        %297 = index.divs %32, %c2
        %298 = vector.transpose %276, [0] : vector<8xf16> to vector<8xf16>
        %299 = affine.min affine_map<(d0, d1, d2) -> (d0 - 8)>(%c6, %c2, %c15)
        %300 = math.fma %cst, %cst_4, %cst_4 : f32
        memref.alloca_scope.return %alloc_21 : memref<8xf16>
      }
      %266 = math.absf %cst : f32
      %267 = math.fma %0, %0, %0 : tensor<6x8xf32>
    }
    %44 = math.cos %cst_0 : f16
    %45 = arith.maxui %false, %false_1 : i1
    %46 = vector.extract %42[0] : vector<8xi16>
    %47 = math.ipowi %c248862142_i64, %c248862142_i64 : i64
    %48 = vector.load %alloc_15[%c8] : memref<14xi16>, vector<14xi16>
    memref.tensor_store %12, %alloc_17 : memref<8xi32>
    %alloc_23 = memref.alloc() : memref<6x8xi64>
    %49 = vector.broadcast %c248862142_i64 : i64 to vector<6x8xi64>
    %50 = vector.broadcast %true_3 : i1 to vector<6x8xi1>
    %51 = vector.broadcast %c1689801499_i32 : i32 to vector<6x8xi32>
    %52 = vector.gather %alloc_23[%c15, %c1] [%51], %50, %49 : memref<6x8xi64>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi64> into vector<6x8xi64>
    %53 = math.roundeven %cst_0 : f16
    %54 = vector.transpose %52, [0, 1] : vector<6x8xi64> to vector<6x8xi64>
    %55 = vector.flat_transpose %22 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
    %56 = math.round %cst_0 : f16
    %57 = vector.load %alloc_10[%c7] : memref<14xi32>, vector<8xi32>
    %58 = vector.broadcast %c13 : index to vector<14xindex>
    %59 = vector.broadcast %false_1 : i1 to vector<14xi1>
    %60 = vector.broadcast %c248862142_i64 : i64 to vector<14xi64>
    vector.scatter %alloc_20[] [%58], %59, %60 : memref<i64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
    %61 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 16)>(%c7, %c13, %c13)
    %62 = scf.while (%arg1 = %alloc_23) : (memref<6x8xi64>) -> memref<6x8xi64> {
      %259 = arith.maxf %cst_4, %cst : f32
      %260 = arith.muli %true_3, %false : i1
      %261 = arith.cmpf ult, %cst_2, %cst_2 : f16
      %262 = index.divs %c11, %c5
      %263 = vector.bitcast %57 : vector<8xi32> to vector<8xi32>
      %alloca_48 = memref.alloca() : memref<8xi1>
      %rank = tensor.rank %18 : tensor<8xi1>
      %cast_49 = tensor.cast %15 : tensor<14xi32> to tensor<?xi32>
      scf.condition(%false) %alloc_23 : memref<6x8xi64>
    } do {
    ^bb0(%arg1: memref<6x8xi64>):
      %259 = arith.maxf %cst_4, %cst : f32
      %260 = tensor.empty() : tensor<8x14xf16>
      %261 = tensor.empty() : tensor<6x14xf16>
      %262 = linalg.matmul ins(%8, %260 : tensor<6x8xf16>, tensor<8x14xf16>) outs(%261 : tensor<6x14xf16>) -> tensor<6x14xf16>
      %263 = math.cos %13 : tensor<6x8xf16>
      %cast_48 = tensor.cast %4 : tensor<14xi32> to tensor<?xi32>
      %264 = arith.ceildivsi %true, %false : i1
      %265 = math.ceil %14 : tensor<8xf16>
      %266 = math.absf %cst_4 : f32
      %267 = index.divu %c14, %c4
      %268 = arith.remf %cst_0, %cst_2 : f16
      %269 = vector.extract %42[4] : vector<8xi16>
      %270 = index.sub %c1, %c15
      %271 = vector.shuffle %41, %42 [0, 2, 3, 4, 7, 9, 10, 12, 13, 14] : vector<7xi16>, vector<8xi16>
      %272 = arith.divsi %c16975482_i32, %c1194350541_i32 : i32
      %273 = vector.reduction <minui>, %57 : vector<8xi32> into i32
      %274 = index.casts %c16975482_i32 : i32 to index
      %275 = index.maxu %270, %c13
      scf.yield %alloc_23 : memref<6x8xi64>
    }
    %63 = scf.while (%arg1 = %false_1) : (i1) -> i1 {
      %cast_48 = tensor.cast %1 : tensor<8xi64> to tensor<?xi64>
      %259 = vector.broadcast %c248862142_i64 : i64 to vector<14xi64>
      %260 = bufferization.clone %alloc_10 : memref<14xi32> to memref<14xi32>
      %261 = math.tan %8 : tensor<6x8xf16>
      bufferization.dealloc_tensor %11 : tensor<8xi32>
      %alloc_49 = memref.alloc() : memref<14xi1>
      %262 = arith.subi %c1731788708_i64, %c248862142_i64 : i64
      %263 = index.sub %c0, %c13
      scf.condition(%true) %arg1 : i1
    } do {
    ^bb0(%arg1: i1):
      %259 = arith.shrui %c-12805_i16, %c190_i16 : i16
      %260 = math.floor %20 : tensor<f16>
      %rank = tensor.rank %15 : tensor<14xi32>
      %261 = bufferization.clone %alloc_6 : memref<14xi16> to memref<14xi16>
      %262 = vector.broadcast %cst_0 : f16 to vector<7xf16>
      %263 = vector.broadcast %arg1 : i1 to vector<7xi1>
      %264 = vector.maskedload %alloc_18[%c1, %c5], %263, %262 : memref<6x8xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %265 = math.absi %c-12805_i16 : i16
      %266 = math.absi %3 : tensor<6x8xi32>
      %267 = vector.broadcast %true_3 : i1 to vector<8xi1>
      %268 = vector.gather %alloc_9[%c9] [%57], %267, %42 : memref<8xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %269 = math.round %13 : tensor<6x8xf16>
      %270 = math.ceil %cst_4 : f32
      %271 = scf.while (%arg2 = %cst_4) : (f32) -> f32 {
        %277 = memref.atomic_rmw maxs %c1689801499_i32, %alloc_10[%c7] : (i32, memref<14xi32>) -> i32
        %278 = tensor.empty() : tensor<8xf32>
        %279 = vector.broadcast %cst : f32 to vector<8xf32>
        %280 = vector.gather %278[%c12] [%57], %267, %279 : tensor<8xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %281 = vector.transpose %57, [0] : vector<8xi32> to vector<8xi32>
        %alloc_48 = memref.alloc() : memref<6x8xi32>
        memref.tensor_store %3, %alloc_48 : memref<6x8xi32>
        memref.copy %alloc_15, %alloc_6 : memref<14xi16> to memref<14xi16>
        %282 = math.tan %14 : tensor<8xf16>
        %283 = vector.insertelement %c-12805_i16, %48[%c0 : index] : vector<14xi16>
        %284 = arith.subi %c-13772_i16, %c-12805_i16 : i16
        scf.condition(%true_3) %arg2 : f32
      } do {
      ^bb0(%arg2: f32):
        %277 = index.divs %c2, %c14
        bufferization.dealloc_tensor %6 : tensor<8xf16>
        %278 = arith.ceildivsi %c-13772_i16, %c190_i16 : i16
        %279 = arith.shrui %true, %false_1 : i1
        %280 = math.tan %6 : tensor<8xf16>
        %281 = arith.maxsi %true, %arg1 : i1
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %268, %268, %c-12805_i16 : vector<8xi16>, vector<8xi16> into i16
        %283 = math.ctpop %9 : tensor<8xi16>
        %284 = math.exp2 %cst_4 : f32
        %285 = vector.broadcast %c190_i16 : i16 to vector<6x8xi16>
        %286 = vector.transpose %42, [0] : vector<8xi16> to vector<8xi16>
        %287 = vector.broadcast %arg2 : f32 to vector<6x8xf32>
        %288 = vector.fma %287, %287, %287 : vector<6x8xf32>
        %289 = arith.cmpf ueq, %cst_4, %arg2 : f32
        %290 = math.round %8 : tensor<6x8xf16>
        %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<6x8xf32> into tensor<48xf32>
        %291 = tensor.empty() : tensor<14xi1>
        scf.yield %arg2 : f32
      }
      %272 = bufferization.to_tensor %alloc_13 : memref<8xi16>
      %273 = vector.insert %c190_i16, %41 [3] : i16 into vector<7xi16>
      %274 = vector.reduction <minsi>, %19 : vector<7xi16> into i16
      %275 = vector.reduction <minsi>, %41 : vector<7xi16> into i16
      %276 = vector.transpose %264, [0] : vector<7xf16> to vector<7xf16>
      scf.yield %false : i1
    }
    %alloc_24 = memref.alloc() : memref<14xi1>
    %64 = memref.realloc %alloc_21 : memref<8xf16> to memref<7xf16>
    %65 = math.log1p %8 : tensor<6x8xf16>
    %66 = vector.broadcast %c9 : index to vector<7xindex>
    %67 = vector.broadcast %false : i1 to vector<7xi1>
    vector.scatter %alloc_13[%c5] [%66], %67, %55 : memref<8xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
    %68 = index.maxu %c1, %c15
    %69 = index.ceildivs %c11, %c12
    %70 = math.fma %8, %8, %13 : tensor<6x8xf16>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %71 = vector.transfer_read %12[%c14], %c0_i32 : tensor<8xi32>, vector<i32>
    %72 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 32 - d1 ceildiv 8, d0, d1, d1 ceildiv 32)>(%c0, %c9, %c12, %c2)
    %73 = math.floor %13 : tensor<6x8xf16>
    %74 = vector.extract_strided_slice %51 {offsets = [3], sizes = [1], strides = [1]} : vector<6x8xi32> to vector<1x8xi32>
    %75 = vector.reduction <add>, %41 : vector<7xi16> into i16
    %76 = index.maxs %c14, %c9
    %77 = vector.extract %41[3] : vector<7xi16>
    %78 = math.tan %14 : tensor<8xf16>
    %79 = arith.minui %c1731788708_i64, %c248862142_i64 : i64
    %80 = vector.splat %cst_0 : vector<6x8xf16>
    %81 = math.absf %0 : tensor<6x8xf32>
    %cst_25 = arith.constant 2.692800e+04 : f16
    %82 = vector.insertelement %c190_i16, %22[%c8 : index] : vector<7xi16>
    %83 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
    %84 = arith.maxf %cst_2, %cst_2 : f16
    %85 = vector.extract %48[13] : vector<14xi16>
    %86 = vector.flat_transpose %22 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
    %87 = arith.divui %c16975482_i32, %c1_i32 : i32
    %88 = vector.splat %c2 : vector<8xindex>
    %89 = scf.while (%arg1 = %22) : (vector<7xi16>) -> vector<7xi16> {
      %259 = arith.addf %cst_0, %cst_0 : f16
      %260 = vector.extract_strided_slice %41 {offsets = [5], sizes = [2], strides = [1]} : vector<7xi16> to vector<2xi16>
      %261 = math.floor %13 : tensor<6x8xf16>
      %262 = vector.broadcast %true_3 : i1 to vector<14xi1>
      %263 = vector.maskedload %alloc_13[%c3], %262, %48 : memref<8xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %264 = vector.broadcast %c190_i16 : i16 to vector<8xi16>
      %265 = vector.bitcast %260 : vector<2xi16> to vector<2xi16>
      %266 = math.fma %8, %13, %8 : tensor<6x8xf16>
      %267 = arith.shli %c1731788708_i64, %c248862142_i64 : i64
      scf.condition(%false_1) %19 : vector<7xi16>
    } do {
    ^bb0(%arg1: vector<7xi16>):
      %259 = math.exp2 %6 : tensor<8xf16>
      %260 = tensor.empty() : tensor<14xi1>
      %261 = vector.broadcast %false_1 : i1 to vector<14xi1>
      %262 = vector.broadcast %c16975482_i32 : i32 to vector<14xi32>
      %263 = vector.gather %260[%c8] [%262], %261, %261 : tensor<14xi1>, vector<14xi32>, vector<14xi1>, vector<14xi1> into vector<14xi1>
      %264 = arith.shrui %c1194350541_i32, %c1194350541_i32 : i32
      %265 = scf.if %false -> (memref<8xf32>) {
        %276 = arith.mulf %cst_2, %cst_2 : f16
        %277 = index.ceildivs %c14, %c8
        %278 = arith.andi %c-13772_i16, %c-12805_i16 : i16
        %279 = bufferization.to_memref %1 : memref<8xi64>
        %280 = math.absi %1 : tensor<8xi64>
        %281 = vector.flat_transpose %48 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
        %282 = bufferization.to_tensor %alloc_6 : memref<14xi16>
        %283 = math.ceil %21 : tensor<f16>
        scf.yield %alloc_8 : memref<8xf32>
      } else {
        %276 = arith.maxsi %c1194350541_i32, %c16975482_i32 : i32
        %277 = math.cos %14 : tensor<8xf16>
        %278 = math.round %0 : tensor<6x8xf32>
        %279 = math.ipowi %17, %1 : tensor<8xi64>
        %280 = vector.matrix_multiply %41, %86 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %281 = arith.addi %c1731788708_i64, %c248862142_i64 : i64
        %282 = vector.insertelement %true_3, %263[%c12 : index] : vector<14xi1>
        %283 = index.divs %69, %c2
        scf.yield %alloc_8 : memref<8xf32>
      }
      %alloc_48 = memref.alloc() : memref<8xi1>
      %266 = math.ipowi %1, %1 : tensor<8xi64>
      %267 = vector.reduction <minsi>, %42 : vector<8xi16> into i16
      %268 = memref.realloc %alloc_6 : memref<14xi16> to memref<14xi16>
      %269 = math.floor %6 : tensor<8xf16>
      %270 = vector.flat_transpose %55 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      bufferization.dealloc_tensor %6 : tensor<8xf16>
      %271 = math.round %0 : tensor<6x8xf32>
      %272 = vector.broadcast %true : i1 to vector<8xi1>
      %273 = arith.remui %true, %false_1 : i1
      %274 = bufferization.to_tensor %alloc_23 : memref<6x8xi64>
      %275 = affine.for %arg2 = 0 to 74 iter_args(%arg3 = %alloc_23) -> (memref<6x8xi64>) {
        affine.yield %alloc_23 : memref<6x8xi64>
      }
      scf.yield %22 : vector<7xi16>
    }
    %90 = arith.ori %c190_i16, %c-12805_i16 : i16
    %91 = memref.realloc %alloc_6 : memref<14xi16> to memref<6xi16>
    %92 = index.add %c15, %c7
    %93 = math.log1p %cst_4 : f32
    %94 = vector.insert %c1194350541_i32, %57 [1] : i32 into vector<8xi32>
    %95 = tensor.empty() : tensor<8x8x8xf32>
    %96 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%95 : tensor<8x8x8xf32>) {
    ^bb0(%out: f32):
      %259 = arith.shrui %false, %false_1 : i1
      %alloc_48 = memref.alloc() : memref<8x8xf16>
      %260 = tensor.empty() : tensor<6x8xf16>
      %261 = linalg.matmul ins(%8, %alloc_48 : tensor<6x8xf16>, memref<8x8xf16>) outs(%260 : tensor<6x8xf16>) -> tensor<6x8xf16>
      %262 = arith.andi %c248862142_i64, %c1731788708_i64 : i64
      %263 = math.cos %0 : tensor<6x8xf32>
      %264 = arith.minui %true_3, %false_1 : i1
      %265 = vector.insertelement %c190_i16, %48[%c5 : index] : vector<14xi16>
      %266 = index.divu %c8, %c11
      %267 = vector.bitcast %41 : vector<7xi16> to vector<7xi16>
      %rank = tensor.rank %7 : tensor<8xi1>
      %extracted_49 = tensor.extract %15[%c6] : tensor<14xi32>
      %268 = index.maxu %c6, %72
      %269 = math.log2 %14 : tensor<8xf16>
      %270 = vector.broadcast %cst_2 : f16 to vector<f16>
      %271 = vector.transfer_write %270, %14[%c8] : vector<f16>, tensor<8xf16>
      %272 = math.roundeven %6 : tensor<8xf16>
      %273 = vector.load %alloc_18[%c4, %c6] : memref<6x8xf16>, vector<14xf16>
      %274 = math.ipowi %4, %4 : tensor<14xi32>
      %275 = math.powf %8, %8 : tensor<6x8xf16>
      %276 = math.log1p %8 : tensor<6x8xf16>
      %277 = math.powf %cst_0, %cst_0 : f16
      %278 = scf.if %true -> (memref<8xi64>) {
        %290 = math.cos %8 : tensor<6x8xf16>
        %291 = math.tan %13 : tensor<6x8xf16>
        %292 = arith.addi %c248862142_i64, %c1731788708_i64 : i64
        %293 = math.ipowi %9, %9 : tensor<8xi16>
        %inserted_52 = tensor.insert %true_3 into %7[%c0] : tensor<8xi1>
        %294 = math.cos %cst_0 : f16
        %295 = math.log2 %6 : tensor<8xf16>
        %cst_53 = arith.constant 1.000000e+00 : f16
        %cst_54 = arith.constant 0.000000e+00 : f16
        %296 = vector.transfer_read %260[%c0, %c6], %cst_54 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<6x8xf16>, vector<14xf16>
        %alloc_55 = memref.alloc() : memref<8xi64>
        scf.yield %alloc_55 : memref<8xi64>
      } else {
        %290 = math.absf %cst_2 : f16
        %291 = math.powf %0, %0 : tensor<6x8xf32>
        %292 = math.round %14 : tensor<8xf16>
        %293 = math.absf %14 : tensor<8xf16>
        %294 = math.cos %13 : tensor<6x8xf16>
        %295 = arith.andi %c1731788708_i64, %c1731788708_i64 : i64
        %296 = math.round %cst_2 : f16
        %cast_52 = tensor.cast %9 : tensor<8xi16> to tensor<?xi16>
        %alloc_53 = memref.alloc() : memref<8xi64>
        scf.yield %alloc_53 : memref<8xi64>
      }
      %splat_50 = tensor.splat %true : tensor<14xi1>
      %279 = vector.insertelement %c-13772_i16, %86[%69 : index] : vector<7xi16>
      %280 = vector.broadcast %c1731788708_i64 : i64 to vector<6xi64>
      %281 = vector.multi_reduction <mul>, %52, %280 [1] : vector<6x8xi64> to vector<6xi64>
      %282 = vector.bitcast %55 : vector<7xi16> to vector<7xi16>
      bufferization.dealloc_tensor %12 : tensor<8xi32>
      %283 = index.sub %c10, %c2
      %284 = memref.load %alloc_17[%c6] : memref<8xi32>
      %c1_i32_51 = arith.constant 1 : i32
      %285 = vector.transfer_read %11[%c3], %c1_i32_51 : tensor<8xi32>, vector<i32>
      %286 = index.sizeof
      %287 = index.add %c3, %c1
      %288 = vector.create_mask %76 : vector<8xi1>
      %289 = affine.if affine_set<(d0, d1, d2, d3) : (d2 == 0)>(%c3, %c8, %c11, %c8) -> memref<8xi1> {
        %290 = vector.transpose %22, [0] : vector<7xi16> to vector<7xi16>
        %291 = vector.load %alloc_21[%c5] : memref<8xf16>, vector<8xf16>
        %292 = vector.create_mask %c15 : vector<8xi1>
        %293 = memref.atomic_rmw assign %cst_0, %alloc_18[%c5, %c7] : (f16, memref<6x8xf16>) -> f16
        %294 = arith.andi %c1194350541_i32, %extracted_49 : i32
        %295 = arith.xori %c-12805_i16, %c-13772_i16 : i16
        %296 = memref.realloc %alloc_15 : memref<14xi16> to memref<6xi16>
        %c1_i32_52 = arith.constant 1 : i32
        %c0_i32_53 = arith.constant 0 : i32
        %297 = vector.transfer_read %15[%286], %c0_i32_53 : tensor<14xi32>, vector<i32>
        affine.yield %alloc_5 : memref<8xi1>
      } else {
        %290 = memref.load %alloc_6[%c3] : memref<14xi16>
        %291 = index.maxu %c12, %c12
        %292 = memref.realloc %alloc_10 : memref<14xi32> to memref<7xi32>
        %293 = vector.broadcast %out : f32 to vector<6x8xf32>
        %294 = vector.fma %293, %293, %293 : vector<6x8xf32>
        %295 = vector.extract %293[2] : vector<6x8xf32>
        %296 = vector.bitcast %51 : vector<6x8xi32> to vector<6x8xi32>
        %297 = math.rsqrt %21 : tensor<f16>
        %298 = vector.broadcast %c16975482_i32 : i32 to vector<7xi32>
        %299 = vector.broadcast %true_3 : i1 to vector<7xi1>
        %300 = vector.maskedload %alloc_10[%c11], %299, %298 : memref<14xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        affine.yield %alloc_5 : memref<8xi1>
      }
      linalg.yield %out : f32
    } -> tensor<8x8x8xf32>
    %97 = index.sub %92, %c4
    memref.copy %alloc_6, %alloc_15 : memref<14xi16> to memref<14xi16>
    %98 = math.ipowi %9, %9 : tensor<8xi16>
    %99 = vector.broadcast %c16975482_i32 : i32 to vector<8x8xi32>
    %100 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %51, %51, %99 : vector<6x8xi32>, vector<6x8xi32> into vector<8x8xi32>
    memref.alloca_scope  {
      %259 = math.round %13 : tensor<6x8xf16>
      %260 = memref.realloc %alloc_6 : memref<14xi16> to memref<8xi16>
      %261 = vector.extract_strided_slice %41 {offsets = [5], sizes = [1], strides = [1]} : vector<7xi16> to vector<1xi16>
      %262 = vector.broadcast %c1731788708_i64 : i64 to vector<6x8xi64>
      %263 = arith.shli %c1194350541_i32, %c1689801499_i32 : i32
      %c-5311_i16 = arith.constant -5311 : i16
      %264 = index.add %c13, %c8
      %265 = math.round %26 : tensor<6x6xf16>
      %266 = vector.broadcast %69 : index to vector<14xindex>
      %267 = vector.broadcast %true : i1 to vector<14xi1>
      %268 = vector.broadcast %c1731788708_i64 : i64 to vector<14xi64>
      vector.scatter %alloc_23[%c5, %c1] [%266], %267, %268 : memref<6x8xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
      %269 = arith.ori %c1689801499_i32, %c1_i32 : i32
      %270 = math.absf %14 : tensor<8xf16>
      %271 = arith.remf %cst_0, %cst_2 : f16
      %272 = vector.extract_strided_slice %19 {offsets = [2], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
      %273 = math.atan %cst_0 : f16
      %274 = math.cos %21 : tensor<f16>
      %275 = tensor.empty() : tensor<8xi32>
      %inserted_48 = tensor.insert %c1731788708_i64 into %16[%c6] : tensor<8xi64>
      %276 = arith.shli %false_1, %true : i1
      vector.print %48 : vector<14xi16>
      %277 = math.tanh %6 : tensor<8xf16>
      %278 = math.log10 %21 : tensor<f16>
      %279 = math.absf %26 : tensor<6x6xf16>
      %280 = vector.broadcast %cst : f32 to vector<14xf32>
      %281 = vector.broadcast %false : i1 to vector<14xi1>
      %282 = vector.maskedload %alloc_14[%c0, %c0], %281, %280 : memref<6x8xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %283 = math.copysign %cst_4, %cst_4 : f32
      %inserted_49 = tensor.insert %c16975482_i32 into %4[%c11] : tensor<14xi32>
      %284 = index.add %72, %69
      %285 = bufferization.clone %alloc_20 : memref<i64> to memref<i64>
      %rank = tensor.rank %9 : tensor<8xi16>
      %286 = math.round %21 : tensor<f16>
      %287 = math.ctpop %c-13772_i16 : i16
      %288 = math.ipowi %2, %11 : tensor<8xi32>
      %289 = index.sub %264, %c2
    }
    %101 = tensor.empty() : tensor<8x6xf32>
    %102 = tensor.empty() : tensor<6x6xf32>
    %103 = linalg.matmul ins(%0, %101 : tensor<6x8xf32>, tensor<8x6xf32>) outs(%102 : tensor<6x6xf32>) -> tensor<6x6xf32>
    %104 = math.log10 %6 : tensor<8xf16>
    %105 = arith.minui %c1194350541_i32, %c16975482_i32 : i32
    %106 = math.copysign %26, %26 : tensor<6x6xf16>
    %107 = vector.create_mask %69 : vector<8xi1>
    %108 = index.divs %c10, %32
    scf.index_switch %c7 
    case 1 {
      %259 = vector.gather %alloc_17[%c0] [%57], %107, %57 : memref<8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %260 = arith.cmpi sle, %true_3, %true : i1
      %261 = math.copysign %6, %14 : tensor<8xf16>
      memref.tensor_store %9, %alloc_19 : memref<8xi16>
      %262 = arith.addi %c16975482_i32, %c1689801499_i32 : i32
      %263 = math.floor %8 : tensor<6x8xf16>
      %264 = index.sub %c6, %c14
      %265 = scf.while (%arg1 = %107) : (vector<8xi1>) -> vector<8xi1> {
        %276 = tensor.empty() : tensor<14xi32>
        %expanded_48 = tensor.expand_shape %6 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
        %277 = vector.reduction <or>, %42 : vector<8xi16> into i16
        %278 = vector.multi_reduction <or>, %107, %107 [] : vector<8xi1> to vector<8xi1>
        %279 = arith.minsi %false_1, %false : i1
        %280 = arith.minsi %c248862142_i64, %c248862142_i64 : i64
        %281 = arith.mulf %cst_0, %cst_0 : f16
        %282 = index.ceildivs %c0, %c14
        scf.condition(%false_1) %107 : vector<8xi1>
      } do {
      ^bb0(%arg1: vector<8xi1>):
        %276 = arith.remf %cst, %cst_4 : f32
        %false_48 = arith.constant false
        %false_49 = arith.constant false
        %277 = vector.transfer_read %transposed[%c6], %false_49 : tensor<8xi1>, vector<i1>
        %278 = vector.load %alloc_18[%c3, %c3] : memref<6x8xf16>, vector<14xf16>
        %279 = math.expm1 %26 : tensor<6x6xf16>
        %rank = tensor.rank %12 : tensor<8xi32>
        %280 = math.roundeven %13 : tensor<6x8xf16>
        %alloca_50 = memref.alloca() : memref<14xi16>
        %281 = arith.addi %c190_i16, %c190_i16 : i16
        %282 = arith.maxf %cst_2, %cst_0 : f16
        %283 = bufferization.clone %alloc_17 : memref<8xi32> to memref<8xi32>
        %284 = vector.broadcast %c1194350541_i32 : i32 to vector<1xi32>
        %dest_51, %accumulated_value_52 = vector.scan <mul>, %74, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<1x8xi32>, vector<1xi32>
        %285 = vector.broadcast %cst_0 : f16 to vector<7xf16>
        %286 = vector.broadcast %false : i1 to vector<7xi1>
        %287 = vector.maskedload %alloc_11[%c1], %286, %285 : memref<14xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %288 = arith.mulf %cst, %cst_4 : f32
        %289 = vector.broadcast %cst_2 : f16 to vector<8xf16>
        %290 = tensor.empty() : tensor<8x7xf32>
        %291 = tensor.empty() : tensor<6x7xf32>
        %292 = linalg.matmul ins(%0, %290 : tensor<6x8xf32>, tensor<8x7xf32>) outs(%291 : tensor<6x7xf32>) -> tensor<6x7xf32>
        %293 = arith.andi %c-13772_i16, %c190_i16 : i16
        scf.yield %107 : vector<8xi1>
      }
      %266 = arith.cmpi sge, %true_3, %false : i1
      %267 = tensor.empty(%c6) : tensor<?x8xf16>
      %268 = vector.broadcast %c1689801499_i32 : i32 to vector<i32>
      %269 = vector.transfer_write %268, %11[%c5] : vector<i32>, tensor<8xi32>
      %270 = vector.broadcast %cst : f32 to vector<6x8xf32>
      %271 = vector.fma %270, %270, %270 : vector<6x8xf32>
      %272 = vector.load %alloc_23[%c1, %c5] : memref<6x8xi64>, vector<8xi64>
      %273 = math.ipowi %c-12805_i16, %c-13772_i16 : i16
      %274 = vector.bitcast %107 : vector<8xi1> to vector<8xi1>
      %275 = math.ipowi %c-12805_i16, %c190_i16 : i16
      scf.yield
    }
    case 2 {
      %259 = math.expm1 %13 : tensor<6x8xf16>
      %cast_48 = tensor.cast %0 : tensor<6x8xf32> to tensor<?x?xf32>
      %260 = vector.broadcast %cst_4 : f32 to vector<14xf32>
      vector.transfer_write %260, %alloc_14[%c2, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf32>, memref<6x8xf32>
      %splat_49 = tensor.splat %cst_2 : tensor<8xf16>
      %261 = index.add %c0, %c14
      %262 = arith.cmpi ult, %false, %false_1 : i1
      %c0_i32_50 = arith.constant 0 : i32
      %263 = vector.transfer_read %2[%c6], %c0_i32_50 : tensor<8xi32>, vector<i32>
      %264 = index.divs %c7, %40
      %265 = arith.shrui %c-12805_i16, %c-12805_i16 : i16
      %266 = vector.broadcast %c-12805_i16 : i16 to vector<6xi16>
      %267 = vector.broadcast %false_1 : i1 to vector<6xi1>
      %268 = vector.maskedload %alloc_13[%c7], %267, %266 : memref<8xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %269 = vector.insertelement %c-13772_i16, %41[%108 : index] : vector<7xi16>
      %270 = arith.xori %c0_i32_50, %c1_i32 : i32
      %271 = index.sub %72, %c9
      %272 = vector.reduction <or>, %268 : vector<6xi16> into i16
      %cast_51 = tensor.cast %3 : tensor<6x8xi32> to tensor<?x?xi32>
      %273 = vector.extract_strided_slice %268 {offsets = [2], sizes = [2], strides = [1]} : vector<6xi16> to vector<2xi16>
      scf.yield
    }
    case 3 {
      %259 = scf.index_switch %c7 -> vector<8xi32> 
      case 1 {
        %274 = math.log10 %cst_2 : f16
        %275 = math.roundeven %102 : tensor<6x6xf32>
        %276 = vector.extract %22[6] : vector<7xi16>
        %277 = math.fma %0, %0, %0 : tensor<6x8xf32>
        %278 = math.floor %cst_0 : f16
        %279 = arith.maxsi %c1731788708_i64, %c1731788708_i64 : i64
        %alloc_48 = memref.alloc() : memref<14xf16>
        memref.copy %alloc_11, %alloc_48 : memref<14xf16> to memref<14xf16>
        %280 = arith.minui %c1194350541_i32, %c1194350541_i32 : i32
        %281 = vector.create_mask %c8 : vector<8xi1>
        %282 = math.cos %21 : tensor<f16>
        %283 = math.powf %cst_4, %cst_4 : f32
        %284 = arith.shrui %c16975482_i32, %c1_i32 : i32
        %285 = vector.broadcast %cst : f32 to vector<f32>
        %286 = vector.transfer_write %285, %0[%76, %c11] : vector<f32>, tensor<6x8xf32>
        %287 = memref.load %alloc_7[%c4] : memref<8xf16>
        %288 = math.tanh %20 : tensor<f16>
        %289 = math.powf %13, %13 : tensor<6x8xf16>
        scf.yield %57 : vector<8xi32>
      }
      case 2 {
        %274 = vector.broadcast %108 : index to vector<8xindex>
        vector.scatter %alloc_13[%c0] [%274], %107, %42 : memref<8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %275 = vector.insertelement %c190_i16, %83[%c12 : index] : vector<7xi16>
        %alloca_48 = memref.alloca() : memref<6x8xf16>
        %276 = arith.divui %false, %false : i1
        %277 = bufferization.clone %alloc_7 : memref<8xf16> to memref<8xf16>
        %collapsed_49 = tensor.collapse_shape %3 [[0, 1]] : tensor<6x8xi32> into tensor<48xi32>
        %278 = arith.mulf %cst_0, %cst_0 : f16
        %279 = vector.load %alloc_18[%c3, %c7] : memref<6x8xf16>, vector<8xf16>
        %280 = memref.load %alloc_21[%c5] : memref<8xf16>
        %281 = memref.atomic_rmw ori %c-13772_i16, %alloc_19[%c4] : (i16, memref<8xi16>) -> i16
        %282 = arith.andi %c1689801499_i32, %c1689801499_i32 : i32
        %283 = math.round %13 : tensor<6x8xf16>
        %284 = arith.maxf %cst_2, %cst_0 : f16
        %285 = memref.atomic_rmw assign %c190_i16, %alloc_6[%c0] : (i16, memref<14xi16>) -> i16
        %286 = math.absi %17 : tensor<8xi64>
        %287 = vector.extract_strided_slice %57 {offsets = [3], sizes = [2], strides = [1]} : vector<8xi32> to vector<2xi32>
        scf.yield %57 : vector<8xi32>
      }
      case 3 {
        %expanded_48 = tensor.expand_shape %12 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %274 = arith.shrui %c-13772_i16, %c-12805_i16 : i16
        %275 = arith.maxsi %false, %false : i1
        %276 = index.ceildivs %c11, %72
        %277 = arith.ori %c1689801499_i32, %c1194350541_i32 : i32
        %278 = arith.minsi %c-13772_i16, %c-12805_i16 : i16
        %279 = math.ceil %26 : tensor<6x6xf16>
        %280 = memref.load %alloc_14[%c1, %c2] : memref<6x8xf32>
        %alloc_49 = memref.alloc() : memref<8x14xf16>
        %281 = tensor.empty() : tensor<6x14xf16>
        %282 = linalg.matmul ins(%8, %alloc_49 : tensor<6x8xf16>, memref<8x14xf16>) outs(%281 : tensor<6x14xf16>) -> tensor<6x14xf16>
        %283 = math.absf %0 : tensor<6x8xf32>
        %284 = arith.cmpf true, %cst_0, %cst_2 : f16
        %285 = math.powf %cst_2, %cst_0 : f16
        %286 = arith.minf %cst_0, %cst_0 : f16
        %287 = affine.max affine_map<(d0, d1, d2, d3) -> (((d2 + 5) ceildiv 128) ceildiv 16, d1 - d0, d2, -(d2 - 1))>(%c14, %40, %c15, %c6)
        %288 = vector.broadcast %c-12805_i16 : i16 to vector<6x8xi16>
        %289 = vector.gather %9[%c10] [%51], %50, %288 : tensor<8xi16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi16> into vector<6x8xi16>
        %inserted_50 = tensor.insert %c1_i32 into %12[%c1] : tensor<8xi32>
        scf.yield %57 : vector<8xi32>
      }
      default {
        %274 = vector.flat_transpose %57 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
        %275 = memref.realloc %alloc_21 : memref<8xf16> to memref<6xf16>
        %276 = math.ipowi %2, %12 : tensor<8xi32>
        %277 = arith.xori %false, %false : i1
        %278 = math.log %13 : tensor<6x8xf16>
        %279 = math.powf %13, %8 : tensor<6x8xf16>
        %cst_48 = arith.constant 1.000000e+00 : f16
        %280 = vector.transfer_read %6[%76], %cst_48 : tensor<8xf16>, vector<f16>
        %281 = arith.minsi %c16975482_i32, %c16975482_i32 : i32
        %282 = vector.transpose %41, [0] : vector<7xi16> to vector<7xi16>
        %283 = arith.cmpf ult, %cst_4, %cst_4 : f32
        %284 = math.roundeven %13 : tensor<6x8xf16>
        %285 = vector.load %alloc_12[%c4, %c0] : memref<6x8xi16>, vector<8xi16>
        %alloc_49 = memref.alloc() : memref<8xi64>
        memref.tensor_store %16, %alloc_49 : memref<8xi64>
        %286 = memref.realloc %alloc_15 : memref<14xi16> to memref<6xi16>
        %287 = arith.cmpi slt, %c1194350541_i32, %c16975482_i32 : i32
        %288 = vector.insert %c190_i16, %55 [4] : i16 into vector<7xi16>
        scf.yield %57 : vector<8xi32>
      }
      %260 = math.absf %cst_2 : f16
      %261 = tensor.empty(%92) : tensor<?xf16>
      %262 = arith.cmpi eq, %true_3, %false_1 : i1
      %263 = bufferization.to_tensor %alloc_6 : memref<14xi16>
      %264 = memref.load %alloc_20[] : memref<i64>
      %265 = vector.extract_strided_slice %86 {offsets = [1], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
      %266 = math.ctpop %18 : tensor<8xi1>
      %267 = vector.reduction <minsi>, %83 : vector<7xi16> into i16
      %268 = arith.andi %false_1, %false : i1
      %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<6x8xf16> into tensor<48xf16>
      %269 = math.copysign %14, %6 : tensor<8xf16>
      %270 = math.floor %6 : tensor<8xf16>
      %271 = math.log2 %13 : tensor<6x8xf16>
      %272 = math.roundeven %0 : tensor<6x8xf32>
      %273 = math.ceil %cst_4 : f32
      scf.yield
    }
    default {
      %259 = affine.if affine_set<(d0) : (d0 - d0 ceildiv 32 >= 0, d0 ceildiv 4 == 0, (-(d0 - d0 ceildiv 32)) mod 32 >= 0)>(%c6) -> i16 {
        %272 = index.sub %61, %97
        %cast_51 = tensor.cast %4 : tensor<14xi32> to tensor<?xi32>
        %273 = math.rsqrt %8 : tensor<6x8xf16>
        %274 = math.absi %transposed : tensor<8xi1>
        %275 = math.cos %14 : tensor<8xf16>
        %276 = vector.extract %22[0] : vector<7xi16>
        %277 = math.floor %13 : tensor<6x8xf16>
        %278 = arith.ori %c-12805_i16, %c-12805_i16 : i16
        affine.yield %c190_i16 : i16
      } else {
        %272 = index.divs %c6, %c3
        %cast_51 = tensor.cast %5 : tensor<8xi64> to tensor<?xi64>
        %273 = vector.extract_strided_slice %41 {offsets = [1], sizes = [5], strides = [1]} : vector<7xi16> to vector<5xi16>
        %274 = arith.xori %false_1, %false_1 : i1
        %275 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %276 = vector.fma %275, %275, %275 : vector<14xf32>
        %277 = index.casts %c190_i16 : i16 to index
        %278 = index.divs %c8, %c3
        %279 = vector.broadcast %c248862142_i64 : i64 to vector<8xi64>
        %280 = vector.insert %279, %49 [0] : vector<8xi64> into vector<6x8xi64>
        affine.yield %c190_i16 : i16
      }
      %260 = math.powf %6, %14 : tensor<8xf16>
      %inserted_48 = tensor.insert %c1731788708_i64 into %5[%c2] : tensor<8xi64>
      %261 = math.tan %26 : tensor<6x6xf16>
      %alloc_49 = memref.alloc() : memref<6x8xi64>
      %262 = vector.transpose %74, [1, 0] : vector<1x8xi32> to vector<8x1xi32>
      bufferization.dealloc_tensor %7 : tensor<8xi1>
      %263 = math.log1p %21 : tensor<f16>
      %264 = vector.insert %c-13772_i16, %48 [7] : i16 into vector<14xi16>
      %265 = vector.broadcast %c8 : index to vector<8xindex>
      %266 = vector.broadcast %cst_2 : f16 to vector<8xf16>
      vector.scatter %alloc_21[%c3] [%265], %107, %266 : memref<8xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
      %267 = vector.create_mask %c2 : vector<14xi1>
      %268 = index.ceildivs %92, %c1
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 8, d0 ceildiv 16)>(%72, %c6, %108, %c10)
      %270 = vector.bitcast %22 : vector<7xi16> to vector<7xf16>
      %271 = arith.divui %c1_i32, %c1194350541_i32 : i32
      %splat_50 = tensor.splat %c-13772_i16 : tensor<8xi16>
    }
    %109 = vector.insertelement %c190_i16, %55[%92 : index] : vector<7xi16>
    %110 = math.absf %cst_4 : f32
    %alloc_26 = memref.alloc() : memref<6x8xf32>
    %111 = scf.while (%arg1 = %false_1) : (i1) -> i1 {
      %259 = arith.maxsi %c-13772_i16, %c-12805_i16 : i16
      %splat_48 = tensor.splat %cst : tensor<8xf32>
      %260 = vector.broadcast %cst : f32 to vector<14xf32>
      %261 = vector.fma %260, %260, %260 : vector<14xf32>
      %262 = index.sub %c15, %c6
      %alloc_49 = memref.alloc() : memref<8xf32>
      %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<6x8xf16> into tensor<48xf16>
      %263 = index.ceildivs %40, %c8
      %264 = math.atan %21 : tensor<f16>
      scf.condition(%true_3) %true : i1
    } do {
    ^bb0(%arg1: i1):
      %259 = vector.insert %57, %74 [0] : vector<8xi32> into vector<1x8xi32>
      %260 = index.ceildivs %40, %c12
      %c0_i16_48 = arith.constant 0 : i16
      %c0_i16_49 = arith.constant 0 : i16
      %261 = vector.transfer_read %alloc_6[%c9], %c0_i16_49 : memref<14xi16>, vector<i16>
      %262 = vector.splat %c10 : vector<14xindex>
      %263 = arith.minsi %c-12805_i16, %c-13772_i16 : i16
      bufferization.dealloc_tensor %2 : tensor<8xi32>
      %264 = index.sub %c9, %c0
      %265 = tensor.empty() : tensor<14xf16>
      %266 = vector.broadcast %cst_2 : f16 to vector<14xf16>
      %267 = vector.broadcast %true : i1 to vector<14xi1>
      %268 = vector.broadcast %c16975482_i32 : i32 to vector<14xi32>
      %269 = vector.gather %265[%72] [%268], %267, %266 : tensor<14xf16>, vector<14xi32>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      %270 = vector.broadcast %c0 : index to vector<14xindex>
      %271 = vector.broadcast %cst_4 : f32 to vector<14xf32>
      vector.scatter %alloc[%c2] [%270], %267, %271 : memref<8xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %272 = affine.if affine_set<(d0, d1, d2) : (d2 * 2 == 0, d1 >= 0, (d0 * 2) mod 64 - (d1 + 8) mod 16 == 0)>(%c10, %c1, %c0) -> memref<6x8xi32> {
        %278 = arith.mulf %cst_0, %cst_2 : f16
        %279 = math.log2 %0 : tensor<6x8xf32>
        %280 = math.tanh %8 : tensor<6x8xf16>
        %281 = math.expm1 %265 : tensor<14xf16>
        %282 = math.expm1 %8 : tensor<6x8xf16>
        %283 = index.divu %c7, %c14
        %284 = vector.broadcast %c7 : index to vector<6xindex>
        %285 = vector.broadcast %false_1 : i1 to vector<6xi1>
        %286 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        vector.scatter %alloc_21[%c0] [%284], %285, %286 : memref<8xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %287 = math.cos %cst : f32
        %alloc_50 = memref.alloc() : memref<6x8xi32>
        affine.yield %alloc_50 : memref<6x8xi32>
      } else {
        %278 = arith.andi %arg1, %true : i1
        %279 = vector.broadcast %cst : f32 to vector<8xf32>
        %280 = vector.fma %279, %279, %279 : vector<8xf32>
        %281 = arith.shrui %arg1, %true_3 : i1
        %282 = math.absf %0 : tensor<6x8xf32>
        %283 = vector.broadcast %c8 : index to vector<6xindex>
        %284 = vector.broadcast %false : i1 to vector<6xi1>
        %285 = vector.broadcast %c248862142_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_23[%c2, %c6] [%283], %284, %285 : memref<6x8xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %286 = memref.load %alloc_5[%c5] : memref<8xi1>
        %287 = vector.broadcast %cst_4 : f32 to vector<8xf32>
        %288 = vector.fma %287, %287, %279 : vector<8xf32>
        %289 = arith.minui %c1194350541_i32, %c16975482_i32 : i32
        %alloc_50 = memref.alloc() : memref<6x8xi32>
        affine.yield %alloc_50 : memref<6x8xi32>
      }
      %273 = vector.shuffle %57, %57 [0, 2, 5, 6, 7, 9, 12, 13, 14] : vector<8xi32>, vector<8xi32>
      scf.index_switch %68 
      case 1 {
        %278 = arith.shli %c1194350541_i32, %c1_i32 : i32
        %279 = math.ipowi %c16975482_i32, %c1194350541_i32 : i32
        %280 = arith.cmpf ord, %cst, %cst_4 : f32
        %281 = bufferization.clone %alloc_5 : memref<8xi1> to memref<8xi1>
        %282 = arith.xori %false_1, %true : i1
        %inserted_50 = tensor.insert %c1689801499_i32 into %15[%c10] : tensor<14xi32>
        %283 = math.rsqrt %13 : tensor<6x8xf16>
        %284 = vector.broadcast %c248862142_i64 : i64 to vector<8xi64>
        %285 = arith.maxf %cst_2, %cst_2 : f16
        %286 = memref.atomic_rmw assign %c190_i16, %alloc_6[%c1] : (i16, memref<14xi16>) -> i16
        %rank = tensor.rank %2 : tensor<8xi32>
        %287 = index.divs %68, %68
        %288 = math.round %8 : tensor<6x8xf16>
        %289 = vector.gather %11[%61] [%51], %50, %51 : tensor<8xi32>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi32> into vector<6x8xi32>
        %290 = vector.broadcast %cst_2 : f16 to vector<8xf16>
        %291 = vector.gather %alloc_7[%108] [%57], %107, %290 : memref<8xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %292 = math.log2 %8 : tensor<6x8xf16>
        scf.yield
      }
      case 2 {
        %278 = vector.broadcast %true_3 : i1 to vector<8xi1>
        %279 = math.absf %20 : tensor<f16>
        %inserted_50 = tensor.insert %c190_i16 into %9[%c5] : tensor<8xi16>
        %280 = vector.insertelement %c1_i32, %268[%c15 : index] : vector<14xi32>
        %281 = vector.broadcast %cst : f32 to vector<14xf32>
        %282 = vector.gather %0[%c10, %c2] [%268], %267, %281 : tensor<6x8xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %283 = math.atan2 %26, %26 : tensor<6x6xf16>
        %284 = arith.shli %c248862142_i64, %c248862142_i64 : i64
        %285 = memref.atomic_rmw minf %cst, %alloc[%c0] : (f32, memref<8xf32>) -> f32
        %286 = tensor.empty() : tensor<14xf32>
        %287 = vector.gather %286[%c8] [%268], %267, %282 : tensor<14xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %288 = index.maxs %c4, %108
        %289 = index.sub %68, %72
        %290 = arith.ceildivsi %c1_i32, %c16975482_i32 : i32
        %291 = vector.load %alloc[%c1] : memref<8xf32>, vector<6x8xf32>
        %292 = vector.insertelement %false_1, %107[%c8 : index] : vector<8xi1>
        %293 = math.log10 %13 : tensor<6x8xf16>
        %294 = vector.bitcast %282 : vector<14xf32> to vector<14xi32>
        scf.yield
      }
      case 3 {
        %c0_i16_50 = arith.constant 0 : i16
        %c0_i16_51 = arith.constant 0 : i16
        %278 = vector.transfer_read %alloc_13[%c15], %c0_i16_51 : memref<8xi16>, vector<i16>
        %279 = bufferization.to_tensor %alloc_13 : memref<8xi16>
        %280 = vector.transpose %267, [0] : vector<14xi1> to vector<14xi1>
        %281 = arith.maxf %cst_0, %cst_0 : f16
        %282 = bufferization.to_memref %13 : memref<6x8xf16>
        %283 = arith.shli %false, %false : i1
        %284 = vector.extract %55[4] : vector<7xi16>
        %inserted_52 = tensor.insert %c1194350541_i32 into %4[%c11] : tensor<14xi32>
        %285 = vector.broadcast %c248862142_i64 : i64 to vector<14xi64>
        %286 = vector.gather %alloc_23[%c12, %c7] [%268], %267, %285 : memref<6x8xi64>, vector<14xi32>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %287 = arith.negf %cst_2 : f16
        %inserted_53 = tensor.insert %cst_0 into %265[%c13] : tensor<14xf16>
        %288 = vector.load %alloc_10[%c1] : memref<14xi32>, vector<8xi32>
        %289 = math.tanh %26 : tensor<6x6xf16>
        %290 = math.absi %11 : tensor<8xi32>
        %291 = index.divu %c15, %c2
        %splat_54 = tensor.splat %cst_0 : tensor<8xf16>
        scf.yield
      }
      case 4 {
        %278 = math.floor %102 : tensor<6x6xf32>
        %cast_50 = tensor.cast %12 : tensor<8xi32> to tensor<?xi32>
        %279 = vector.load %alloc_5[%c5] : memref<8xi1>, vector<14xi1>
        %280 = index.divs %c0, %c13
        %281 = index.casts %false_1 : i1 to index
        %282 = tensor.empty() : tensor<8x14xf16>
        %283 = tensor.empty() : tensor<6x14xf16>
        %284 = linalg.matmul ins(%13, %282 : tensor<6x8xf16>, tensor<8x14xf16>) outs(%283 : tensor<6x14xf16>) -> tensor<6x14xf16>
        %285 = tensor.empty() : tensor<8xi1>
        %286 = arith.maxf %cst, %cst_4 : f32
        %287 = memref.atomic_rmw addf %cst_2, %alloc_18[%c1, %c3] : (f16, memref<6x8xf16>) -> f16
        %288 = vector.flat_transpose %41 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %289 = vector.broadcast %c16975482_i32 : i32 to vector<1xi32>
        %290 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %74, %57, %289 : vector<1x8xi32>, vector<8xi32> into vector<1xi32>
        %291 = arith.remsi %false, %true_3 : i1
        %292 = vector.reduction <or>, %22 : vector<7xi16> into i16
        %293 = vector.insertelement %c-13772_i16, %48[%69 : index] : vector<14xi16>
        %294 = arith.xori %true_3, %false : i1
        %295 = arith.minui %arg1, %false_1 : i1
        scf.yield
      }
      default {
        %278 = arith.subi %c1_i32, %c1689801499_i32 : i32
        %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<6x8xf32> into tensor<48xf32>
        %alloc_50 = memref.alloc() : memref<f16>
        memref.tensor_store %20, %alloc_50 : memref<f16>
        %279 = math.exp2 %13 : tensor<6x8xf16>
        %280 = arith.maxui %arg1, %true_3 : i1
        %alloc_51 = memref.alloc() : memref<8xi32>
        memref.copy %alloc_17, %alloc_51 : memref<8xi32> to memref<8xi32>
        %281 = arith.remui %false, %false_1 : i1
        %282 = arith.remui %c1194350541_i32, %c1194350541_i32 : i32
        %283 = bufferization.clone %alloc_15 : memref<14xi16> to memref<14xi16>
        %284 = math.floor %0 : tensor<6x8xf32>
        %285 = vector.extract_strided_slice %50 {offsets = [0], sizes = [3], strides = [1]} : vector<6x8xi1> to vector<3x8xi1>
        %286 = vector.broadcast %arg1 : i1 to vector<8xi1>
        %287 = math.floor %265 : tensor<14xf16>
        %288 = math.cos %265 : tensor<14xf16>
        %alloc_52 = memref.alloc() : memref<8xf16>
        %alloc_53 = memref.alloc() : memref<8xi1>
      }
      %274 = math.powf %cst_4, %cst : f32
      %275 = arith.shli %c1689801499_i32, %c16975482_i32 : i32
      %276 = vector.transpose %51, [0, 1] : vector<6x8xi32> to vector<6x8xi32>
      %277 = arith.addf %cst, %cst_4 : f32
      scf.yield %true_3 : i1
    }
    %false_27 = index.bool.constant false
    affine.for %arg1 = 0 to 34 {
    }
    %alloc_28 = memref.alloc() : memref<6x8xf32>
    memref.copy %alloc_14, %alloc_28 : memref<6x8xf32> to memref<6x8xf32>
    %112 = memref.realloc %alloc_6 : memref<14xi16> to memref<7xi16>
    %alloc_29 = memref.alloc() : memref<8xi1>
    %113 = arith.ori %false_1, %false : i1
    %114 = math.cttz %false_1 : i1
    %115 = affine.min affine_map<(d0) -> (((-d0) mod 16) * -128, d0 * 8 + 128, d0 floordiv 4, d0 * 8 + 128)>(%92)
    %116 = bufferization.to_tensor %alloc_10 : memref<14xi32>
    %117 = arith.shrui %false, %false : i1
    %alloca_30 = memref.alloca() : memref<8xi16>
    %splat = tensor.splat %c248862142_i64 : tensor<6x8xi64>
    %118 = vector.broadcast %c-13772_i16 : i16 to vector<7x7xi16>
    %119 = vector.outerproduct %86, %86, %118 {kind = #vector.kind<minsi>} : vector<7xi16>, vector<7xi16>
    %120 = bufferization.to_memref %7 : memref<8xi1>
    %121 = memref.atomic_rmw muli %c-12805_i16, %alloc_9[%c4] : (i16, memref<8xi16>) -> i16
    %122 = index.maxs %c10, %c14
    %123 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %22, %86, %c190_i16 : vector<7xi16>, vector<7xi16> into i16
    %124 = vector.broadcast %true_3 : i1 to vector<6xi1>
    %dest, %accumulated_value = vector.scan <or>, %50, %124 {inclusive = false, reduction_dim = 1 : i64} : vector<6x8xi1>, vector<6xi1>
    %125 = arith.ceildivsi %true_3, %false : i1
    %126 = vector.matrix_multiply %41, %83 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
    %127 = index.maxu %c3, %c14
    %c0_i16 = arith.constant 0 : i16
    %128 = vector.transfer_read %9[%c15], %c0_i16 : tensor<8xi16>, vector<i16>
    %129 = vector.bitcast %52 : vector<6x8xi64> to vector<6x8xi64>
    %130 = arith.remf %cst, %cst_4 : f32
    %131 = math.ipowi %7, %transposed : tensor<8xi1>
    %dest_31, %accumulated_value_32 = vector.scan <maxui>, %50, %107 {inclusive = false, reduction_dim = 0 : i64} : vector<6x8xi1>, vector<8xi1>
    %cst_33 = arith.constant 6.358400e+04 : f16
    %132 = math.ctpop %5 : tensor<8xi64>
    %133 = vector.flat_transpose %86 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
    %134 = math.tanh %6 : tensor<8xf16>
    %135 = math.absi %5 : tensor<8xi64>
    affine.for %arg1 = 0 to 40 {
    }
    %136 = arith.minf %cst, %cst_4 : f32
    %cst_34 = arith.constant 1.000000e+00 : f16
    %137 = vector.transfer_read %8[%115, %c9], %cst_34 : tensor<6x8xf16>, vector<6xf16>
    %138 = math.tanh %102 : tensor<6x6xf32>
    %139 = tensor.empty(%72) : tensor<?xf32>
    %140 = arith.maxsi %c190_i16, %c0_i16 : i16
    %141 = index.maxu %c15, %40
    %142 = math.cos %102 : tensor<6x6xf32>
    %generated = tensor.generate %32 {
    ^bb0(%arg1: index):
      %259 = vector.broadcast %cst : f32 to vector<6x8xf32>
      %260 = vector.fma %259, %259, %259 : vector<6x8xf32>
      %261 = math.atan %8 : tensor<6x8xf16>
      %262 = index.maxs %68, %40
      %263 = vector.extract_strided_slice %22 {offsets = [2], sizes = [2], strides = [1]} : vector<7xi16> to vector<2xi16>
      tensor.yield %c190_i16 : i16
    } : tensor<?xi16>
    %143 = vector.broadcast %cst : f32 to vector<14xf32>
    %144 = vector.fma %143, %143, %143 : vector<14xf32>
    %alloc_35 = memref.alloc() : memref<14xi1>
    %splat_36 = tensor.splat %c16975482_i32 : tensor<6x8xi32>
    %145 = bufferization.clone %alloc : memref<8xf32> to memref<8xf32>
    %146 = arith.minsi %c-13772_i16, %c190_i16 : i16
    %147 = vector.extract_strided_slice %129 {offsets = [3], sizes = [2], strides = [1]} : vector<6x8xi64> to vector<2x8xi64>
    %148 = arith.ori %c1194350541_i32, %c1194350541_i32 : i32
    %149 = arith.addf %cst_4, %cst_4 : f32
    %150 = vector.matrix_multiply %22, %42 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<7xi16>, vector<8xi16>) -> vector<56xi16>
    %151 = vector.broadcast %76 : index to vector<7xindex>
    %152 = vector.broadcast %false_27 : i1 to vector<7xi1>
    %153 = vector.broadcast %cst : f32 to vector<7xf32>
    vector.scatter %alloc_8[%c3] [%151], %152, %153 : memref<8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %154 = math.tan %102 : tensor<6x6xf32>
    %155 = index.divu %68, %122
    %156 = tensor.empty() : tensor<8x8x8xf32>
    %alloc_37 = memref.alloc() : memref<8x8xf32>
    %157 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37 : memref<8x8xf32>) outs(%156 : tensor<8x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %259 = math.round %0 : tensor<6x8xf32>
      %260 = math.powf %13, %8 : tensor<6x8xf16>
      memref.alloca_scope  {
        %289 = arith.shrui %c1_i32, %c16975482_i32 : i32
        %290 = vector.insertelement %cst_4, %144[%115 : index] : vector<14xf32>
        %291 = arith.minui %false, %true_3 : i1
        %292 = vector.splat %c15 : vector<8xindex>
        %293 = arith.minui %c1194350541_i32, %c1689801499_i32 : i32
        %inserted_49 = tensor.insert %cst_34 into %14[%c0] : tensor<8xf16>
        %294 = index.divs %c2, %c15
        %295 = arith.mulf %in, %cst_4 : f32
        %296 = vector.extract_strided_slice %22 {offsets = [3], sizes = [2], strides = [1]} : vector<7xi16> to vector<2xi16>
        %297 = vector.broadcast %c190_i16 : i16 to vector<i16>
        %298 = vector.transfer_write %297, %9[%c13] : vector<i16>, tensor<8xi16>
        %299 = vector.bitcast %57 : vector<8xi32> to vector<8xi32>
        %300 = arith.cmpi slt, %true_3, %false_1 : i1
        %301 = arith.maxf %out, %cst : f32
        %alloca_50 = memref.alloca() : memref<14xi1>
        %302 = bufferization.clone %alloc_14 : memref<6x8xf32> to memref<6x8xf32>
        %303 = vector.insertelement %true_3, %107[%72 : index] : vector<8xi1>
        %304 = vector.flat_transpose %42 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
        %305 = math.fma %out, %cst, %in : f32
        %306 = vector.create_mask %c6 : vector<14xi1>
        %alloc_51 = memref.alloc() : memref<8xf32>
        %307 = tensor.empty() : tensor<14xf32>
        %308 = vector.broadcast %cst : f32 to vector<6x8xf32>
        %309 = vector.gather %307[%69] [%51], %50, %308 : tensor<14xf32>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xf32> into vector<6x8xf32>
        %310 = index.divs %115, %40
        %311 = math.tanh %13 : tensor<6x8xf16>
        %312 = vector.broadcast %cst_2 : f16 to vector<f16>
        %313 = vector.transfer_write %312, %8[%294, %92] : vector<f16>, tensor<6x8xf16>
        %314 = index.divu %c10, %c9
        %315 = math.tanh %6 : tensor<8xf16>
        %316 = arith.mulf %cst_0, %cst_0 : f16
        %inserted_52 = tensor.insert %cst_34 into %14[%c0] : tensor<8xf16>
        %317 = index.ceildivu %c15, %c0
        %318 = vector.extract %86[6] : vector<7xi16>
        %319 = vector.bitcast %50 : vector<6x8xi1> to vector<6x8xi1>
        %inserted_53 = tensor.insert %c1731788708_i64 into %splat[%c4, %c5] : tensor<6x8xi64>
      }
      %261 = arith.muli %c1194350541_i32, %c16975482_i32 : i32
      %262 = math.tanh %6 : tensor<8xf16>
      %263 = arith.andi %c190_i16, %c0_i16 : i16
      %collapsed = tensor.collapse_shape %102 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
      %264 = arith.muli %c190_i16, %c190_i16 : i16
      %265 = vector.extract_strided_slice %50 {offsets = [3], sizes = [1], strides = [1]} : vector<6x8xi1> to vector<1x8xi1>
      %266 = math.cos %cst_4 : f32
      %267 = tensor.empty() : tensor<14xf32>
      %268 = vector.broadcast %cst : f32 to vector<8xf32>
      %269 = vector.gather %267[%c12] [%57], %107, %268 : tensor<14xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %270 = index.casts %c1689801499_i32 : i32 to index
      %271 = math.log10 %out : f32
      memref.tensor_store %10, %alloc_6 : memref<14xi16>
      %272 = math.fma %in, %out, %cst_4 : f32
      %273 = affine.if affine_set<(d0, d1, d2) : (((d2 ceildiv 2) * 32) ceildiv 64 >= 0, ((d2 ceildiv 2) * 32) ceildiv 64 >= 0, d1 floordiv 16 == 0, d0 == 0)>(%c0, %c9, %c14) -> i32 {
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %289 = vector.transfer_read %alloc_8[%141], %cst_50 : memref<8xf32>, vector<f32>
        %cast_51 = tensor.cast %13 : tensor<6x8xf16> to tensor<?x?xf16>
        %290 = arith.remsi %false_27, %false : i1
        %cast_52 = tensor.cast %5 : tensor<8xi64> to tensor<?xi64>
        %291 = vector.broadcast %true : i1 to vector<14xi1>
        %292 = vector.maskedload %145[%c0], %291, %143 : memref<8xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %293 = arith.cmpf ugt, %in, %cst_4 : f32
        %294 = index.sub %115, %155
        %295 = math.roundeven %102 : tensor<6x6xf32>
        affine.yield %c16975482_i32 : i32
      } else {
        %289 = arith.ceildivsi %c16975482_i32, %c1194350541_i32 : i32
        %290 = arith.minui %c1194350541_i32, %c1_i32 : i32
        memref.assume_alignment %alloc_7, 1 : memref<8xf16>
        %291 = math.expm1 %8 : tensor<6x8xf16>
        %292 = arith.xori %false, %false_1 : i1
        %293 = index.divu %68, %40
        %294 = bufferization.clone %alloc_21 : memref<8xf16> to memref<8xf16>
        %295 = tensor.empty() : tensor<14xi64>
        affine.yield %c1689801499_i32 : i32
      }
      %274 = index.maxu %97, %c3
      %275 = math.expm1 %267 : tensor<14xf32>
      %276 = arith.cmpi eq, %c1194350541_i32, %c1689801499_i32 : i32
      %277 = arith.andi %true_3, %false : i1
      %278 = tensor.empty() : tensor<8xi1>
      %279 = arith.divf %cst, %cst : f32
      %alloca_48 = memref.alloca() : memref<14xi16>
      %280 = vector.transpose %129, [1, 0] : vector<6x8xi64> to vector<8x6xi64>
      %281 = arith.floordivsi %c1689801499_i32, %c1194350541_i32 : i32
      %282 = index.casts %false_27 : i1 to index
      memref.tensor_store %9, %alloc_19 : memref<8xi16>
      %283 = math.roundeven %8 : tensor<6x8xf16>
      %284 = index.sub %c2, %61
      %285 = arith.remf %out, %out : f32
      %286 = tensor.empty() : tensor<6x8xi16>
      %287 = vector.gather %286[%155, %76] [%57], %107, %42 : tensor<6x8xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %288 = memref.atomic_rmw addf %cst, %alloc_14[%c1, %c1] : (f32, memref<6x8xf32>) -> f32
      linalg.yield %in : f32
    } -> tensor<8x8x8xf32>
    %158 = arith.maxui %true, %false : i1
    %159 = vector.extract_strided_slice %133 {offsets = [2], sizes = [4], strides = [1]} : vector<7xi16> to vector<4xi16>
    %160 = math.log %21 : tensor<f16>
    %161 = index.divu %122, %c13
    %162 = math.absi %c1731788708_i64 : i64
    %163 = arith.maxf %cst_0, %cst_34 : f16
    %164 = math.log1p %6 : tensor<8xf16>
    %165 = math.tan %13 : tensor<6x8xf16>
    %166 = vector.insertelement %c-12805_i16, %19[%161 : index] : vector<7xi16>
    %167 = math.cos %8 : tensor<6x8xf16>
    %168 = memref.load %alloc_9[%c5] : memref<8xi16>
    %169 = arith.cmpi sgt, %false_1, %false_27 : i1
    %cst_38 = arith.constant 1.000000e+00 : f32
    %170 = vector.transfer_read %145[%c10], %cst_38 : memref<8xf32>, vector<f32>
    %171 = vector.create_mask %c0 : vector<14xi1>
    %172 = arith.ceildivsi %c1689801499_i32, %c1689801499_i32 : i32
    %173 = affine.if affine_set<(d0) : (-d0 - ((d0 mod 32) ceildiv 8) * 8 >= 0, d0 mod 32 == 0, d0 + 64 == 0, (d0 mod 32) ceildiv 8 == 0)>(%c2) -> memref<8xf16> {
      %259 = index.divu %c2, %40
      %260 = vector.transpose %126, [0] : vector<1xi16> to vector<1xi16>
      %261 = arith.shli %c-12805_i16, %c-12805_i16 : i16
      %extracted_48 = tensor.extract %12[%c5] : tensor<8xi32>
      %262 = math.cos %cst : f32
      %263 = math.round %20 : tensor<f16>
      %264 = math.log10 %cst : f32
      %265 = math.powf %102, %102 : tensor<6x6xf32>
      affine.yield %alloc_21 : memref<8xf16>
    } else {
      %259 = vector.transpose %55, [0] : vector<7xi16> to vector<7xi16>
      %260 = math.expm1 %cst_4 : f32
      %alloc_48 = memref.alloc() : memref<8xi64>
      memref.tensor_store %5, %alloc_48 : memref<8xi64>
      memref.store %c0_i16, %alloc_19[%c7] : memref<8xi16>
      %261 = vector.load %145[%c0] : memref<8xf32>, vector<8xf32>
      %262 = vector.bitcast %51 : vector<6x8xi32> to vector<6x8xi32>
      %263 = vector.broadcast %c-12805_i16 : i16 to vector<6x8xi16>
      %264 = vector.gather %alloc_19[%161] [%51], %50, %263 : memref<8xi16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi16> into vector<6x8xi16>
      %265 = vector.load %alloc_11[%c12] : memref<14xf16>, vector<6x8xf16>
      affine.yield %alloc_21 : memref<8xf16>
    }
    %174 = vector.broadcast %c1731788708_i64 : i64 to vector<2x6xi64>
    %175 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %147, %129, %174 : vector<2x8xi64>, vector<6x8xi64> into vector<2x6xi64>
    %176 = memref.atomic_rmw maxs %c0_i16, %alloc_13[%c7] : (i16, memref<8xi16>) -> i16
    %177 = arith.divsi %false_1, %true : i1
    %alloca_39 = memref.alloca() : memref<8xf16>
    memref.assume_alignment %alloc_17, 16 : memref<8xi32>
    %178 = math.ceil %cst_4 : f32
    %179 = math.absf %8 : tensor<6x8xf16>
    %180 = arith.remf %cst_2, %cst_0 : f16
    %181 = math.log2 %102 : tensor<6x6xf32>
    %182 = math.expm1 %14 : tensor<8xf16>
    %183 = vector.shuffle %133, %150 [1, 2, 9, 10, 13, 21, 22, 25, 26, 29, 32, 37, 38, 39, 41, 43, 45, 47, 48, 49, 52, 55, 59, 60, 61] : vector<7xi16>, vector<56xi16>
    %184 = arith.maxf %cst_2, %cst_0 : f16
    memref.store %c1731788708_i64, %alloc_23[%c0, %c3] : memref<6x8xi64>
    %185 = arith.shrui %true_3, %false : i1
    %186 = vector.extract %159[0] : vector<4xi16>
    %187 = math.absi %12 : tensor<8xi32>
    %alloc_40 = memref.alloc() : memref<8x14xi32>
    %188 = tensor.empty() : tensor<6x14xi32>
    %189 = linalg.matmul ins(%3, %alloc_40 : tensor<6x8xi32>, memref<8x14xi32>) outs(%188 : tensor<6x14xi32>) -> tensor<6x14xi32>
    %190 = math.round %6 : tensor<8xf16>
    %191 = index.maxs %c13, %68
    %192 = math.ipowi %9, %9 : tensor<8xi16>
    %193 = bufferization.to_memref %0 : memref<6x8xf32>
    scf.if %false {
      %259 = math.exp2 %6 : tensor<8xf16>
      memref.store %cst, %alloc_14[%c3, %c1] : memref<6x8xf32>
      bufferization.dealloc_tensor %26 : tensor<6x6xf16>
      %260 = memref.alloca_scope  -> (memref<8xi1>) {
        %265 = vector.multi_reduction <and>, %83, %c0_i16 [0] : vector<7xi16> to i16
        %266 = math.absf %102 : tensor<6x6xf32>
        %inserted_49 = tensor.insert %cst_2 into %6[%c1] : tensor<8xf16>
        %267 = math.log1p %13 : tensor<6x8xf16>
        %268 = math.cos %0 : tensor<6x8xf32>
        %269 = math.tanh %13 : tensor<6x8xf16>
        %270 = vector.transpose %50, [0, 1] : vector<6x8xi1> to vector<6x8xi1>
        %271 = vector.create_mask %c6 : vector<8xi1>
        %272 = math.tan %20 : tensor<f16>
        %273 = vector.bitcast %144 : vector<14xf32> to vector<14xf32>
        %from_elements_50 = tensor.from_elements %cst_34, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_34, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_34, %cst_34, %cst_34, %cst_2, %cst_34, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_34, %cst_34, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_34, %cst_2, %cst_2, %cst_0 : tensor<6x8xf16>
        %274 = vector.insertelement %cst_4, %143[%68 : index] : vector<14xf32>
        %275 = arith.shrui %c1731788708_i64, %c248862142_i64 : i64
        %276 = math.expm1 %6 : tensor<8xf16>
        %277 = math.log %0 : tensor<6x8xf32>
        %278 = index.sub %127, %c4
        %279 = vector.broadcast %cst_38 : f32 to vector<8xf32>
        %280 = vector.fma %279, %279, %279 : vector<8xf32>
        %splat_51 = tensor.splat %cst_38 : tensor<6x8xf32>
        %281 = arith.muli %false, %false_1 : i1
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %282 = vector.transfer_read %26[%97, %191], %cst_53 : tensor<6x6xf16>, vector<f16>
        %283 = index.divs %c2, %40
        %extracted_54 = tensor.extract %from_elements_50[%c4, %c7] : tensor<6x8xf16>
        %284 = vector.extract %22[0] : vector<7xi16>
        %285 = index.ceildivs %108, %c2
        %286 = index.sub %127, %283
        %287 = vector.broadcast %cst : f32 to vector<6xf32>
        %288 = vector.broadcast %true_3 : i1 to vector<6xi1>
        %289 = vector.maskedload %193[%c2, %c3], %288, %287 : memref<6x8xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %290 = math.absf %0 : tensor<6x8xf32>
        %291 = math.ctpop %c-12805_i16 : i16
        %292 = math.expm1 %8 : tensor<6x8xf16>
        %293 = arith.divui %false_27, %false_27 : i1
        %294 = math.ctpop %3 : tensor<6x8xi32>
        %295 = math.floor %cst_34 : f16
        memref.alloca_scope.return %120 : memref<8xi1>
      }
      %261 = vector.broadcast %c-12805_i16 : i16 to vector<i16>
      vector.transfer_write %261, %alloc_19[%c14] : vector<i16>, memref<8xi16>
      %false_48 = index.bool.constant false
      %262 = vector.broadcast %cst_34 : f16 to vector<8xf16>
      %263 = vector.gather %6[%c7] [%57], %107, %262 : tensor<8xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %264 = vector.load %alloc_20[] : memref<i64>, vector<14xi64>
    }
    %194 = index.divs %97, %c12
    %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
    %195 = math.exp2 %cst_4 : f32
    %196 = math.tanh %8 : tensor<6x8xf16>
    %197 = tensor.empty() : tensor<6x8xf32>
    %198 = linalg.matmul ins(%102, %0 : tensor<6x6xf32>, tensor<6x8xf32>) outs(%197 : tensor<6x8xf32>) -> tensor<6x8xf32>
    %199 = index.ceildivs %76, %115
    %200 = math.fma %cst, %cst, %cst : f32
    %201 = math.round %8 : tensor<6x8xf16>
    %202 = math.cos %cst_4 : f32
    %203 = vector.reduction <maxui>, %159 : vector<4xi16> into i16
    bufferization.dealloc_tensor %16 : tensor<8xi64>
    affine.for %arg1 = 0 to 61 {
    }
    %204 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %55, %133, %c190_i16 : vector<7xi16>, vector<7xi16> into i16
    %205 = vector.transpose %55, [0] : vector<7xi16> to vector<7xi16>
    %alloca_41 = memref.alloca() : memref<6x8xf32>
    %206 = memref.realloc %alloc_21 : memref<8xf16> to memref<8xf16>
    %207 = vector.maskedload %alloc[%c3], %171, %144 : memref<8xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
    %208 = tensor.empty(%c4) : tensor<?xi32>
    %209 = arith.divui %c16975482_i32, %c16975482_i32 : i32
    %210 = vector.extract_strided_slice %171 {offsets = [11], sizes = [1], strides = [1]} : vector<14xi1> to vector<1xi1>
    %211 = math.absf %197 : tensor<6x8xf32>
    %212 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %42, %42, %c190_i16 : vector<8xi16>, vector<8xi16> into i16
    %expanded_42 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<6x8xf16> into tensor<6x8x1xf16>
    %alloc_43 = memref.alloc() : memref<8x6xf32>
    %213 = tensor.empty() : tensor<6x6xf32>
    %214 = linalg.matmul ins(%197, %alloc_43 : tensor<6x8xf32>, memref<8x6xf32>) outs(%213 : tensor<6x6xf32>) -> tensor<6x6xf32>
    memref.tensor_store %13, %alloc_18 : memref<6x8xf16>
    %215 = arith.shli %false, %false_27 : i1
    %216 = vector.insert %c190_i16, %42 [3] : i16 into vector<8xi16>
    %217 = math.floor %8 : tensor<6x8xf16>
    %extracted = tensor.extract %6[%c4] : tensor<8xf16>
    %218 = math.powf %14, %14 : tensor<8xf16>
    %219 = vector.extract_strided_slice %207 {offsets = [7], sizes = [3], strides = [1]} : vector<14xf32> to vector<3xf32>
    %220 = arith.subi %false_1, %false_1 : i1
    %221 = vector.load %120[%c0] : memref<8xi1>, vector<6x8xi1>
    %222 = bufferization.to_tensor %alloc_19 : memref<8xi16>
    affine.store %c1689801499_i32, %alloc_10[%c12] : memref<14xi32>
    %223 = vector.flat_transpose %42 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
    %224 = arith.minsi %c1731788708_i64, %c248862142_i64 : i64
    %225 = memref.load %alloc_8[%c2] : memref<8xf32>
    %226 = scf.while (%arg1 = %41) : (vector<7xi16>) -> vector<7xi16> {
      %259 = vector.reduction <minui>, %86 : vector<7xi16> into i16
      %260 = arith.minsi %c248862142_i64, %c248862142_i64 : i64
      %261 = vector.create_mask %115 : vector<8xi1>
      %alloca_48 = memref.alloca() : memref<6x8xi32>
      memref.assume_alignment %145, 2 : memref<8xf32>
      memref.copy %alloc_21, %alloc_7 : memref<8xf16> to memref<8xf16>
      %collapsed = tensor.collapse_shape %102 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
      %collapsed_49 = tensor.collapse_shape %13 [[0, 1]] : tensor<6x8xf16> into tensor<48xf16>
      scf.condition(%true) %83 : vector<7xi16>
    } do {
    ^bb0(%arg1: vector<7xi16>):
      %259 = math.roundeven %13 : tensor<6x8xf16>
      %true_48 = index.bool.constant true
      %alloca_49 = memref.alloca() : memref<8xi16>
      %260 = math.fma %cst_38, %cst_38, %cst_4 : f32
      %261 = math.cos %extracted : f16
      %262 = bufferization.clone %alloc_16 : memref<6x8xi1> to memref<6x8xi1>
      %263 = arith.xori %true_3, %true_3 : i1
      %264 = vector.matrix_multiply %133, %126 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<1xi16>) -> vector<7xi16>
      %265 = vector.insertelement %false_1, %210[%c7 : index] : vector<1xi1>
      %266 = index.maxs %161, %c5
      %267 = math.ceil %8 : tensor<6x8xf16>
      %cast_50 = tensor.cast %0 : tensor<6x8xf32> to tensor<?x?xf32>
      %268 = math.absf %cst_2 : f16
      %cast_51 = tensor.cast %11 : tensor<8xi32> to tensor<?xi32>
      %269 = index.add %76, %194
      %270 = scf.execute_region -> tensor<6x8xf32> {
        %271 = index.add %92, %c3
        %272 = math.powf %8, %8 : tensor<6x8xf16>
        %273 = memref.realloc %alloc_21 : memref<8xf16> to memref<8xf16>
        %274 = vector.create_mask %c12 : vector<8xi1>
        %275 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
        %276 = arith.mulf %cst_34, %cst_0 : f16
        %277 = math.powf %6, %14 : tensor<8xf16>
        %278 = vector.load %alloc_13[%c6] : memref<8xi16>, vector<8xi16>
        %279 = arith.ori %c-13772_i16, %c0_i16 : i16
        %280 = affine.max affine_map<(d0, d1) -> ((-d0) ceildiv 64, d1, -d0 + 64)>(%141, %194)
        %281 = vector.extract_strided_slice %133 {offsets = [4], sizes = [2], strides = [1]} : vector<7xi16> to vector<2xi16>
        %282 = math.exp2 %20 : tensor<f16>
        %283 = index.divu %c2, %92
        %284 = math.tanh %expanded_42 : tensor<6x8x1xf16>
        %285 = vector.flat_transpose %223 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
        %inserted_52 = tensor.insert %c16975482_i32 into %3[%c4, %c6] : tensor<6x8xi32>
        scf.yield %197 : tensor<6x8xf32>
      }
      scf.yield %83 : vector<7xi16>
    }
    %227 = vector.insertelement %c0_i16, %223[%c5 : index] : vector<8xi16>
    %228 = index.maxs %141, %c0
    %229 = arith.xori %c1689801499_i32, %c1194350541_i32 : i32
    %230 = math.tanh %20 : tensor<f16>
    %231 = math.tanh %21 : tensor<f16>
    %232 = math.exp2 %213 : tensor<6x6xf32>
    %233 = math.copysign %8, %13 : tensor<6x8xf16>
    %234 = math.atan2 %expanded_42, %expanded_42 : tensor<6x8x1xf16>
    %235 = math.atan %8 : tensor<6x8xf16>
    memref.assume_alignment %alloc_7, 4 : memref<8xf16>
    %236 = math.powf %6, %14 : tensor<8xf16>
    %237 = arith.minsi %c-13772_i16, %c-13772_i16 : i16
    %238 = vector.broadcast %c1731788708_i64 : i64 to vector<8xi64>
    %239 = vector.matrix_multiply %55, %126 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<1xi16>) -> vector<7xi16>
    %from_elements = tensor.from_elements %cst_38, %cst_38, %cst_4, %cst_38, %cst_4, %cst_4, %cst, %cst_38, %cst_38, %cst_4, %cst_38, %cst_4, %cst_38, %cst : tensor<14xf32>
    %240 = math.tanh %20 : tensor<f16>
    %alloca_44 = memref.alloca() : memref<14xi1>
    %241 = arith.ceildivsi %c1731788708_i64, %c1731788708_i64 : i64
    %242 = arith.subi %c1731788708_i64, %c248862142_i64 : i64
    %243 = index.ceildivs %127, %191
    %244 = vector.multi_reduction <add>, %223, %c0_i16 [0] : vector<8xi16> to i16
    %245 = math.absf %14 : tensor<8xf16>
    %246 = arith.shrui %false_1, %true : i1
    memref.assume_alignment %120, 2 : memref<8xi1>
    memref.store %c-13772_i16, %alloc_12[%c2, %c1] : memref<6x8xi16>
    %247 = vector.extract_strided_slice %74 {offsets = [0], sizes = [1], strides = [1]} : vector<1x8xi32> to vector<1x8xi32>
    %248 = index.ceildivs %32, %c0
    %249 = vector.shuffle %171, %171 [0, 3, 4, 5, 7, 8, 10, 12, 13, 14, 15, 16, 17, 19, 20, 22, 23, 24, 27] : vector<14xi1>, vector<14xi1>
    %cst_45 = arith.constant 1.000000e+00 : f16
    %250 = vector.transfer_read %alloc_18[%122, %c6], %cst_45 : memref<6x8xf16>, vector<f16>
    %251 = arith.maxf %extracted, %extracted : f16
    %252 = math.floor %cst_34 : f16
    %253 = math.log10 %21 : tensor<f16>
    %254 = vector.matrix_multiply %150, %126 {lhs_columns = 1 : i32, lhs_rows = 56 : i32, rhs_columns = 1 : i32} : (vector<56xi16>, vector<1xi16>) -> vector<56xi16>
    memref.copy %alloc_9, %alloc_19 : memref<8xi16> to memref<8xi16>
    %255 = tensor.empty() : tensor<6x8x1xf16>
    %256 = linalg.copy ins(%expanded_42 : tensor<6x8x1xf16>) outs(%255 : tensor<6x8x1xf16>) -> tensor<6x8x1xf16>
    %alloc_46 = memref.alloc() : memref<14xi16>
    linalg.transpose ins(%alloc_6 : memref<14xi16>) outs(%alloc_46 : memref<14xi16>) permutation = [0] 
    %alloc_47 = memref.alloc() : memref<i32>
    linalg.reduce ins(%12 : tensor<8xi32>) outs(%alloc_47 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %collapsed = tensor.collapse_shape %splat_36 [[0, 1]] : tensor<6x8xi32> into tensor<48xi32>
        %alloc_48 = memref.alloc() : memref<6xf16>
        %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %6, %alloc_48 : memref<6xf16>, tensor<8xf16>, memref<6xf16>) outs(%255 : tensor<6x8x1xf16>) {
        ^bb0(%in_50: f16, %in_51: f16, %in_52: f16, %out: f16):
          %265 = arith.subi %c-13772_i16, %c0_i16 : i16
          %266 = memref.load %alloc_14[%c4, %c7] : memref<6x8xf32>
          %267 = index.divu %248, %c0
          %268 = arith.maxf %cst_2, %cst_45 : f16
          %269 = memref.realloc %120 : memref<8xi1> to memref<6xi1>
          %270 = vector.load %120[%c6] : memref<8xi1>, vector<8xi1>
          %cst_53 = arith.constant 1.000000e+00 : f16
          %271 = vector.transfer_read %6[%108], %cst_53 : tensor<8xf16>, vector<f16>
          %cast_54 = tensor.cast %2 : tensor<8xi32> to tensor<?xi32>
          %272 = memref.load %alloc_9[%c3] : memref<8xi16>
          %273 = vector.broadcast %cst_4 : f32 to vector<8xf32>
          %274 = arith.shrui %false_1, %false_27 : i1
          %275 = index.divs %141, %267
          %276 = index.casts %true_3 : i1 to index
          %277 = vector.extract %144[8] : vector<14xf32>
          %278 = arith.cmpi ne, %in, %c1_i32 : i32
          %from_elements_55 = tensor.from_elements %cst_2, %in_51, %extracted, %cst_53, %out, %cst_2, %cst_45, %in_52 : tensor<8xf16>
          %279 = math.fma %in_51, %cst_2, %cst_45 : f16
          %alloc_56 = memref.alloc() : memref<8xi64>
          %280 = math.tanh %cst_38 : f32
          %281 = arith.cmpi ult, %init, %init : i32
          %282 = arith.shrsi %c1_i32, %c16975482_i32 : i32
          %283 = bufferization.to_memref %6 : memref<8xf16>
          %284 = math.floor %256 : tensor<6x8x1xf16>
          %285 = vector.reduction <maxsi>, %210 : vector<1xi1> into i1
          %286 = vector.broadcast %cst_34 : f16 to vector<8xf16>
          %287 = vector.gather %6[%32] [%57], %270, %286 : tensor<8xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %288 = math.floor %cst : f32
          %289 = vector.maskedload %alloc_11[%c10], %270, %286 : memref<14xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %290 = affine.min affine_map<(d0, d1, d2) -> ((d2 + 1) * 2, d2 mod 16, d2, (d2 mod 16) mod 32)>(%199, %c0, %c0)
          %alloc_57 = memref.alloc() : memref<6x8xi1>
          %291 = affine.min affine_map<(d0, d1) -> (d0 - 16)>(%122, %275)
          %292 = arith.minsi %c-13772_i16, %244 : i16
          %293 = vector.broadcast %72 : index to vector<7xindex>
          %294 = vector.broadcast %false : i1 to vector<7xi1>
          vector.scatter %120[%c0] [%293], %294, %294 : memref<8xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          linalg.yield %in_52 : f16
        } -> tensor<6x8x1xf16>
        %260 = math.atan2 %197, %0 : tensor<6x8xf32>
        %261 = math.tanh %14 : tensor<8xf16>
        %262 = math.rsqrt %from_elements : tensor<14xf32>
        %rank = tensor.rank %10 : tensor<14xi16>
        %263 = math.floor %256 : tensor<6x8x1xf16>
        %264 = math.absf %14 : tensor<8xf16>
        %c1_i32_49 = arith.constant 1 : i32
        linalg.yield %c1_i32_49 : i32
      }
    %257 = scf.parallel (%arg1) = (%c11) to (%c8) step (%c9) init (%210) -> vector<1xi1> {
      %259 = vector.transpose %207, [0] : vector<14xf32> to vector<14xf32>
      %260 = math.floor %255 : tensor<6x8x1xf16>
      %261 = vector.bitcast %86 : vector<7xi16> to vector<7xi16>
      bufferization.dealloc_tensor %0 : tensor<6x8xf32>
      %262 = arith.maxsi %c190_i16, %c0_i16 : i16
      %263 = vector.flat_transpose %150 {columns = 7 : i32, rows = 8 : i32} : vector<56xi16> -> vector<56xi16>
      %264 = arith.maxui %false_27, %true_3 : i1
      %265 = vector.reduction <and>, %238 : vector<8xi64> into i64
      %266 = arith.cmpf ogt, %cst_38, %cst_4 : f32
      %267 = math.log1p %0 : tensor<6x8xf32>
      %268 = arith.remf %cst_45, %cst_34 : f16
      %269 = affine.max affine_map<(d0) -> (((d0 floordiv 2) ceildiv 64) * 128, -(d0 floordiv 2))>(%68)
      %270 = scf.while (%arg2 = %49) : (vector<6x8xi64>) -> vector<6x8xi64> {
        %alloca_48 = memref.alloca() : memref<8xi64>
        %274 = vector.reduction <minsi>, %48 : vector<14xi16> into i16
        %275 = arith.ceildivsi %true_3, %false_27 : i1
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %221, %107 {inclusive = false, reduction_dim = 0 : i64} : vector<6x8xi1>, vector<8xi1>
        %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<6x8xi32> into tensor<48xi32>
        %276 = vector.matrix_multiply %19, %41 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        memref.store %cst_34, %alloc_18[%c0, %c7] : memref<6x8xf16>
        %277 = memref.realloc %alloc_15 : memref<14xi16> to memref<14xi16>
        scf.condition(%true_3) %52 : vector<6x8xi64>
      } do {
      ^bb0(%arg2: vector<6x8xi64>):
        %274 = math.log2 %cst : f32
        %275 = arith.divsi %c1_i32, %c1689801499_i32 : i32
        %276 = vector.reduction <xor>, %133 : vector<7xi16> into i16
        %277 = vector.broadcast %c1731788708_i64 : i64 to vector<i64>
        %278 = vector.transfer_write %277, %splat[%161, %191] : vector<i64>, tensor<6x8xi64>
        %279 = vector.extract_strided_slice %263 {offsets = [17], sizes = [24], strides = [1]} : vector<56xi16> to vector<24xi16>
        %280 = affine.min affine_map<(d0, d1, d2) -> (d0 + 4, (-(d0 + 4)) floordiv 64, -(d0 + 4) - 32, d0)>(%97, %228, %122)
        %281 = vector.splat %69 : vector<8xindex>
        %282 = math.powf %102, %102 : tensor<6x6xf32>
        %283 = memref.atomic_rmw maxf %extracted, %alloc_18[%c1, %c4] : (f16, memref<6x8xf16>) -> f16
        %extracted_48 = tensor.extract %116[%c6] : tensor<14xi32>
        %284 = arith.remf %cst_45, %cst_45 : f16
        %285 = vector.broadcast %c16975482_i32 : i32 to vector<1xi32>
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %74, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<1x8xi32>, vector<1xi32>
        %286 = math.ceil %255 : tensor<6x8x1xf16>
        %287 = memref.realloc %alloc_8 : memref<8xf32> to memref<7xf32>
        %288 = index.add %68, %c12
        %289 = index.sub %c7, %c11
        scf.yield %52 : vector<6x8xi64>
      }
      %271 = arith.xori %c248862142_i64, %c1731788708_i64 : i64
      scf.execute_region {
        %274 = arith.remf %cst_34, %extracted : f16
        %275 = index.sub %61, %243
        %276 = tensor.empty(%c6) : tensor<?xf32>
        %277 = vector.broadcast %c0_i16 : i16 to vector<8xi16>
        %278 = vector.transfer_write %277, %expanded[%c3, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, tensor<14x1xi16>
        %279 = math.ctpop %true : i1
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - 1)>(%115, %c8, %115, %69)
        %281 = index.divs %c13, %c4
        %282 = index.sizeof
        %283 = vector.create_mask %282 : vector<14xi1>
        %alloc_48 = memref.alloc() : memref<8xi16>
        %284 = math.floor %cst_0 : f16
        %285 = math.tan %8 : tensor<6x8xf16>
        %286 = vector.broadcast %c1689801499_i32 : i32 to vector<7xi32>
        %287 = vector.broadcast %true_3 : i1 to vector<7xi1>
        %288 = vector.maskedload %alloc_47[], %287, %286 : memref<i32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %289 = memref.realloc %145 : memref<8xf32> to memref<8xf32>
        %290 = math.cttz %3 : tensor<6x8xi32>
        %291 = arith.mulf %cst_38, %cst_4 : f32
        scf.yield
      }
      %272 = index.sizeof
      %273 = vector.broadcast %false_1 : i1 to vector<1xi1>
      scf.reduce(%273)  : vector<1xi1> {
      ^bb0(%arg2: vector<1xi1>, %arg3: vector<1xi1>):
        %274 = math.ipowi %false_27, %false : i1
        %275 = affine.min affine_map<(d0) -> (d0 ceildiv 128, (d0 ceildiv 128) floordiv 32, 0)>(%115)
        %276 = vector.shuffle %273, %210 [1] : vector<1xi1>, vector<1xi1>
        %277 = vector.transpose %143, [0] : vector<14xf32> to vector<14xf32>
        %278 = vector.extract %50[3] : vector<6x8xi1>
        %279 = index.maxs %76, %72
        %280 = math.log1p %20 : tensor<f16>
        %281 = math.exp2 %102 : tensor<6x6xf32>
        %282 = vector.broadcast %false_1 : i1 to vector<1xi1>
        scf.reduce.return %282 : vector<1xi1>
      }
      scf.yield
    }
    %258 = affine.vector_load %alloc_17[%243] : memref<8xi32>, vector<14xi32>
    affine.vector_store %86, %alloc_13[%61] : memref<8xi16>, vector<7xi16>
    vector.print %19 : vector<7xi16>
    vector.print %22 : vector<7xi16>
    vector.print %41 : vector<7xi16>
    vector.print %42 : vector<8xi16>
    vector.print %48 : vector<14xi16>
    vector.print %49 : vector<6x8xi64>
    vector.print %50 : vector<6x8xi1>
    vector.print %51 : vector<6x8xi32>
    vector.print %52 : vector<6x8xi64>
    vector.print %55 : vector<7xi16>
    vector.print %57 : vector<8xi32>
    vector.print %74 : vector<1x8xi32>
    vector.print %83 : vector<7xi16>
    vector.print %86 : vector<7xi16>
    vector.print %107 : vector<8xi1>
    vector.print %126 : vector<1xi16>
    vector.print %129 : vector<6x8xi64>
    vector.print %133 : vector<7xi16>
    vector.print %143 : vector<14xf32>
    vector.print %144 : vector<14xf32>
    vector.print %147 : vector<2x8xi64>
    vector.print %150 : vector<56xi16>
    vector.print %159 : vector<4xi16>
    vector.print %171 : vector<14xi1>
    vector.print %207 : vector<14xf32>
    vector.print %210 : vector<1xi1>
    vector.print %219 : vector<3xf32>
    vector.print %221 : vector<6x8xi1>
    vector.print %223 : vector<8xi16>
    vector.print %238 : vector<8xi64>
    vector.print %239 : vector<7xi16>
    vector.print %247 : vector<1x8xi32>
    vector.print %254 : vector<56xi16>
    vector.print %258 : vector<14xi32>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %false : i1
    vector.print %false_1 : i1
    vector.print %c1731788708_i64 : i64
    vector.print %c1194350541_i32 : i32
    vector.print %cst_2 : f16
    vector.print %c190_i16 : i16
    vector.print %c-13772_i16 : i16
    vector.print %true : i1
    vector.print %true_3 : i1
    vector.print %cst_4 : f32
    vector.print %c-12805_i16 : i16
    vector.print %c1689801499_i32 : i32
    vector.print %c248862142_i64 : i64
    vector.print %c16975482_i32 : i32
    vector.print %c1_i32 : i32
    vector.print %false_27 : i1
    vector.print %c0_i16 : i16
    vector.print %cst_34 : f16
    vector.print %cst_38 : f32
    vector.print %extracted : f16
    vector.print %244 : i16
    vector.print %cst_45 : f16
    return
  }
}
