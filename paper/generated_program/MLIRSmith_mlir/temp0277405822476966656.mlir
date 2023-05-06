module {
  func.func nested @func1(%arg0: memref<7xi16>, %arg1: memref<7xf16>) {
    %cst = arith.constant 0x4CA11AC9 : f32
    %c22501_i16 = arith.constant 22501 : i16
    %cst_0 = arith.constant 5.619200e+04 : f16
    %c1642583252_i32 = arith.constant 1642583252 : i32
    %cst_1 = arith.constant 3.078400e+04 : f16
    %cst_2 = arith.constant 0x4CE1EECC : f32
    %cst_3 = arith.constant 6.015850e+08 : f32
    %cst_4 = arith.constant 4.040000e+03 : f16
    %true = arith.constant true
    %c14099_i16 = arith.constant 14099 : i16
    %c1167065940_i32 = arith.constant 1167065940 : i32
    %cst_5 = arith.constant 5.440000e+04 : f16
    %cst_6 = arith.constant 0x4A019B9C : f32
    %c631624334_i32 = arith.constant 631624334 : i32
    %c-18568_i16 = arith.constant -18568 : i16
    %cst_7 = arith.constant 1.90473229E+9 : f32
    %0 = tensor.empty() : tensor<7xf16>
    %1 = tensor.empty() : tensor<12x3xi1>
    %2 = tensor.empty() : tensor<12x3xi1>
    %3 = tensor.empty() : tensor<3xi32>
    %4 = tensor.empty() : tensor<7xi16>
    %5 = tensor.empty() : tensor<7xi1>
    %6 = tensor.empty() : tensor<12x3xi32>
    %7 = tensor.empty() : tensor<7xi32>
    %8 = tensor.empty() : tensor<3xf32>
    %9 = tensor.empty() : tensor<12x3xi16>
    %10 = tensor.empty() : tensor<3xi32>
    %11 = tensor.empty() : tensor<12x3xi32>
    %12 = tensor.empty() : tensor<3xi32>
    %13 = tensor.empty() : tensor<7xi16>
    %14 = tensor.empty() : tensor<7xi16>
    %15 = tensor.empty() : tensor<7xf16>
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
    %alloc = memref.alloc() : memref<7xf16>
    %alloc_8 = memref.alloc() : memref<12x3xf32>
    %alloc_9 = memref.alloc() : memref<12x3xi64>
    %alloc_10 = memref.alloc() : memref<7xi1>
    %alloc_11 = memref.alloc() : memref<3xi16>
    %alloc_12 = memref.alloc() : memref<3xf16>
    %alloc_13 = memref.alloc() : memref<12x3xi1>
    %alloc_14 = memref.alloc() : memref<7xi16>
    %alloc_15 = memref.alloc() : memref<7xi16>
    %alloc_16 = memref.alloc() : memref<12x3xf32>
    %alloc_17 = memref.alloc() : memref<12x3xi1>
    %alloc_18 = memref.alloc() : memref<7xf16>
    %alloc_19 = memref.alloc() : memref<12x3xi64>
    %alloc_20 = memref.alloc() : memref<7xi16>
    %alloc_21 = memref.alloc() : memref<12x3xi16>
    %alloc_22 = memref.alloc() : memref<7xi64>
    %16 = tensor.empty() : tensor<12x3xi32>
    %17 = linalg.copy ins(%6 : tensor<12x3xi32>) outs(%16 : tensor<12x3xi32>) -> tensor<12x3xi32>
    %18 = tensor.empty() : tensor<7xf16>
    %transposed = linalg.transpose ins(%15 : tensor<7xf16>) outs(%18 : tensor<7xf16>) permutation = [0] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%7 : tensor<7xi32>) outs(%19 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %259 = arith.minf %cst_7, %cst_3 : f32
        %260 = arith.muli %true, %true : i1
        memref.store %cst_1, %alloc_18[%c4] : memref<7xf16>
        %261 = index.divs %c3, %c1
        %262 = arith.subi %c22501_i16, %c22501_i16 : i16
        %263 = arith.maxui %c631624334_i32, %c1642583252_i32 : i32
        %264 = math.tan %8 : tensor<3xf32>
        %265 = math.rsqrt %8 : tensor<3xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %20 = scf.parallel (%arg2) = (%c6) to (%c7) step (%c12) init (%alloc) -> memref<7xf16> {
      scf.execute_region {
        %275 = vector.broadcast %cst_1 : f16 to vector<12xf16>
        %276 = vector.flat_transpose %275 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        vector.print %275 : vector<12xf16>
        %277 = arith.shrui %c1642583252_i32, %c1642583252_i32 : i32
        %278 = arith.addf %cst_2, %cst_6 : f32
        %279 = vector.broadcast %c22501_i16 : i16 to vector<12x3xi16>
        %280 = math.fma %cst_5, %cst_0, %cst_5 : f16
        %281 = vector.extract %276[1] : vector<12xf16>
        %282 = arith.remf %cst_7, %cst_2 : f32
        %283 = math.cos %8 : tensor<3xf32>
        %284 = arith.subi %c22501_i16, %c22501_i16 : i16
        %285 = arith.divsi %c-18568_i16, %c22501_i16 : i16
        %286 = memref.atomic_rmw assign %c22501_i16, %alloc_14[%c6] : (i16, memref<7xi16>) -> i16
        %287 = vector.broadcast %true : i1 to vector<12x3xi1>
        %288 = vector.broadcast %c1167065940_i32 : i32 to vector<12x3xi32>
        %289 = vector.gather %5[%c9] [%288], %287, %287 : tensor<7xi1>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xi1> into vector<12x3xi1>
        %290 = arith.addi %c-18568_i16, %c22501_i16 : i16
        %extracted = tensor.extract %16[%c0, %c0] : tensor<12x3xi32>
        %291 = arith.muli %c1642583252_i32, %c1642583252_i32 : i32
        scf.yield
      }
      %259 = scf.while (%arg3 = %alloc_22) : (memref<7xi64>) -> memref<7xi64> {
        %275 = math.rsqrt %cst_2 : f32
        %276 = arith.divsi %c-18568_i16, %c14099_i16 : i16
        %277 = math.sqrt %cst : f32
        %278 = vector.broadcast %cst_1 : f16 to vector<3xf16>
        %279 = vector.broadcast %true : i1 to vector<3xi1>
        %280 = vector.maskedload %alloc_18[%c5], %279, %278 : memref<7xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %281 = math.absi %c14099_i16 : i16
        %282 = arith.shli %c631624334_i32, %c1167065940_i32 : i32
        %283 = math.cttz %5 : tensor<7xi1>
        %284 = vector.broadcast %c1642583252_i32 : i32 to vector<7x12x3xi32>
        %285 = vector.broadcast %c631624334_i32 : i32 to vector<12x3xi32>
        %dest, %accumulated_value = vector.scan <add>, %284, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<7x12x3xi32>, vector<12x3xi32>
        scf.condition(%true) %arg3 : memref<7xi64>
      } do {
      ^bb0(%arg3: memref<7xi64>):
        memref.copy %alloc, %alloc_18 : memref<7xf16> to memref<7xf16>
        memref.copy %alloc_20, %alloc_15 : memref<7xi16> to memref<7xi16>
        %275 = vector.broadcast %c1642583252_i32 : i32 to vector<i32>
        %276 = vector.transfer_write %275, %7[%c13] : vector<i32>, tensor<7xi32>
        %277 = arith.subi %c-18568_i16, %c22501_i16 : i16
        %alloc_42 = memref.alloc() : memref<3xi32>
        %278 = vector.broadcast %c631624334_i32 : i32 to vector<7xi32>
        %279 = vector.broadcast %true : i1 to vector<7xi1>
        %280 = vector.gather %alloc_42[%c13] [%278], %279, %278 : memref<3xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %281 = math.round %cst_2 : f32
        %282 = vector.load %alloc_21[%c1, %c0] : memref<12x3xi16>, vector<7xi16>
        %283 = math.sqrt %cst_4 : f16
        %284 = arith.subi %c1167065940_i32, %c631624334_i32 : i32
        %285 = vector.multi_reduction <and>, %278, %c631624334_i32 [0] : vector<7xi32> to i32
        %286 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %287 = vector.fma %286, %286, %286 : vector<7xf32>
        %288 = vector.extract %282[4] : vector<7xi16>
        %289 = arith.remsi %c631624334_i32, %285 : i32
        %290 = bufferization.clone %alloc_18 : memref<7xf16> to memref<7xf16>
        %expanded_43 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<12x3xi32> into tensor<12x3x1xi32>
        %291 = index.maxu %c13, %c4
        scf.yield %alloc_22 : memref<7xi64>
      }
      %260 = math.expm1 %cst_7 : f32
      %261 = math.fpowi %8, %12 : tensor<3xf32>, tensor<3xi32>
      %262 = arith.minf %cst_6, %cst : f32
      %263 = math.ctpop %1 : tensor<12x3xi1>
      %264 = vector.load %alloc_10[%c5] : memref<7xi1>, vector<12x3xi1>
      %265 = vector.broadcast %cst_4 : f16 to vector<3xf16>
      %266 = vector.broadcast %true : i1 to vector<3xi1>
      %267 = vector.maskedload %alloc_12[%c1], %266, %265 : memref<3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %268 = scf.while (%arg3 = %c14099_i16) : (i16) -> i16 {
        %275 = math.log %cst_0 : f16
        %inserted_42 = tensor.insert %c631624334_i32 into %12[%c0] : tensor<3xi32>
        %276 = vector.load %alloc_18[%c1] : memref<7xf16>, vector<3xf16>
        %277 = arith.subi %c22501_i16, %c22501_i16 : i16
        %278 = math.ctpop %c14099_i16 : i16
        %279 = math.log2 %transposed : tensor<7xf16>
        %280 = math.ctpop %c14099_i16 : i16
        %281 = index.floordivs %c13, %c4
        scf.condition(%true) %c-18568_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %275 = arith.negf %cst_4 : f16
        %276 = memref.load %alloc_9[%c4, %c2] : memref<12x3xi64>
        %277 = memref.load %alloc[%c2] : memref<7xf16>
        vector.print %267 : vector<3xf16>
        %278 = arith.subi %c-18568_i16, %c14099_i16 : i16
        %279 = index.castu %arg3 : i16 to index
        %280 = memref.load %alloc_15[%c6] : memref<7xi16>
        %expanded_42 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x3xi1> into tensor<12x3x1xi1>
        %281 = arith.shli %true, %true : i1
        %282 = arith.minui %c22501_i16, %c14099_i16 : i16
        %283 = arith.muli %c-18568_i16, %c22501_i16 : i16
        %284 = math.log %cst : f32
        %285 = vector.insertelement %true, %266[%c4 : index] : vector<3xi1>
        %286 = math.ipowi %17, %11 : tensor<12x3xi32>
        %287 = arith.cmpf uno, %cst_7, %cst_6 : f32
        %cast_43 = tensor.cast %5 : tensor<7xi1> to tensor<?xi1>
        scf.yield %arg3 : i16
      }
      %269 = bufferization.clone %alloc_18 : memref<7xf16> to memref<7xf16>
      %270 = math.cos %15 : tensor<7xf16>
      %271 = math.powf %cst_0, %cst_1 : f16
      %272 = math.round %cst_1 : f16
      %273 = arith.remui %true, %true : i1
      scf.if %true {
        %c1163730490_i32 = arith.constant 1163730490 : i32
        %275 = vector.multi_reduction <add>, %265, %cst_1 [0] : vector<3xf16> to f16
        %276 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        %277 = vector.fma %276, %276, %276 : vector<7xf32>
        bufferization.dealloc_tensor %transposed : tensor<7xf16>
        %278 = math.round %15 : tensor<7xf16>
        %279 = vector.broadcast %cst_7 : f32 to vector<7x7xf32>
        %280 = vector.outerproduct %277, %277, %279 {kind = #vector.kind<mul>} : vector<7xf32>, vector<7xf32>
        %281 = math.expm1 %cst_4 : f16
        %282 = index.ceildivs %c15, %c15
      }
      %274 = arith.cmpf ueq, %cst, %cst : f32
      %alloc_41 = memref.alloc() : memref<7xf16>
      scf.reduce(%alloc_41)  : memref<7xf16> {
      ^bb0(%arg3: memref<7xf16>, %arg4: memref<7xf16>):
        %275 = vector.extract %266[0] : vector<3xi1>
        %276 = math.log2 %15 : tensor<7xf16>
        %277 = bufferization.to_tensor %arg3 : memref<7xf16>
        %cst_42 = arith.constant 1.000000e+00 : f16
        %cst_43 = arith.constant 0.000000e+00 : f16
        %278 = vector.transfer_read %arg3[%c7], %cst_43 : memref<7xf16>, vector<f16>
        %279 = arith.subi %c22501_i16, %c22501_i16 : i16
        %280 = arith.shrui %true, %true : i1
        %281 = arith.minf %cst, %cst_6 : f32
        %alloc_44 = memref.alloc() : memref<12x3xi32>
        memref.tensor_store %6, %alloc_44 : memref<12x3xi32>
        %alloc_45 = memref.alloc() : memref<7xf16>
        scf.reduce.return %alloc_45 : memref<7xf16>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc[%c0] : memref<7xf16>, vector<12xf16>
    affine.vector_store %21, %alloc_12[%c11] : memref<3xf16>, vector<12xf16>
    %22 = tensor.empty() : tensor<3xi32>
    %23 = tensor.empty() : tensor<i32>
    %24 = linalg.dot ins(%3, %22 : tensor<3xi32>, tensor<3xi32>) outs(%23 : tensor<i32>) -> tensor<i32>
    %25 = index.floordivs %c9, %c7
    %26 = math.log10 %cst_5 : f16
    %27 = arith.negf %cst_5 : f16
    %28 = math.atan2 %cst, %cst_3 : f32
    %29 = math.round %cst_0 : f16
    %30 = arith.shrui %c14099_i16, %c-18568_i16 : i16
    %31 = scf.while (%arg2 = %alloc_8) : (memref<12x3xf32>) -> memref<12x3xf32> {
      %259 = vector.splat %cst_0 : vector<3xf16>
      %c1375589802_i64 = arith.constant 1375589802 : i64
      %260 = math.cos %cst_2 : f32
      %261 = index.maxu %c13, %c14
      %262 = arith.addf %cst_2, %cst_6 : f32
      %263 = scf.while (%arg3 = %alloc) : (memref<7xf16>) -> memref<7xf16> {
        %266 = vector.shuffle %21, %21 [0, 4, 9, 13, 15, 16, 17, 18, 19, 20, 22, 23] : vector<12xf16>, vector<12xf16>
        %267 = vector.load %alloc_9[%c3, %c2] : memref<12x3xi64>, vector<12x3xi64>
        %cst_41 = arith.constant 6.153600e+04 : f16
        memref.copy %arg2, %alloc_16 : memref<12x3xf32> to memref<12x3xf32>
        %cst_42 = arith.constant 1.60887846E+9 : f32
        %268 = arith.ori %c-18568_i16, %c14099_i16 : i16
        %269 = vector.broadcast %cst_1 : f16 to vector<7xf16>
        %270 = arith.addf %cst_3, %cst : f32
        scf.condition(%true) %alloc_18 : memref<7xf16>
      } do {
      ^bb0(%arg3: memref<7xf16>):
        %266 = arith.remf %cst_1, %cst_4 : f16
        %267 = math.absi %5 : tensor<7xi1>
        %268 = index.sizeof
        %269 = vector.broadcast %cst_5 : f16 to vector<7xf16>
        %270 = vector.broadcast %true : i1 to vector<7xi1>
        %271 = vector.maskedload %alloc_18[%c3], %270, %269 : memref<7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %272 = math.copysign %cst_1, %cst_1 : f16
        %cast_41 = tensor.cast %6 : tensor<12x3xi32> to tensor<?x?xi32>
        %273 = math.atan2 %cst_3, %cst_6 : f32
        %274 = math.log2 %cst_5 : f16
        %275 = arith.maxui %c631624334_i32, %c631624334_i32 : i32
        %276 = math.cttz %19 : tensor<i32>
        %277 = vector.broadcast %c-18568_i16 : i16 to vector<3xi16>
        %278 = vector.broadcast %true : i1 to vector<3xi1>
        %279 = vector.maskedload %alloc_15[%c0], %278, %277 : memref<7xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %280 = bufferization.clone %alloc_19 : memref<12x3xi64> to memref<12x3xi64>
        %281 = memref.atomic_rmw assign %cst, %alloc_8[%c11, %c1] : (f32, memref<12x3xf32>) -> f32
        %282 = vector.broadcast %c22501_i16 : i16 to vector<12x3xi16>
        %283 = math.fma %cst_4, %cst_4, %cst_1 : f16
        %cast_42 = tensor.cast %5 : tensor<7xi1> to tensor<?xi1>
        scf.yield %alloc : memref<7xf16>
      }
      %264 = arith.maxsi %true, %true : i1
      %265 = math.log2 %transposed : tensor<7xf16>
      scf.condition(%true) %arg2 : memref<12x3xf32>
    } do {
    ^bb0(%arg2: memref<12x3xf32>):
      %259 = arith.negf %cst_1 : f16
      %alloca_41 = memref.alloca() : memref<7xi64>
      %260 = math.round %0 : tensor<7xf16>
      %261 = index.maxu %c8, %c14
      %262 = vector.create_mask %c5 : vector<3xi1>
      %263 = math.powf %cst_3, %cst_2 : f32
      scf.execute_region {
        %c1696307309_i64 = arith.constant 1696307309 : i64
        %273 = arith.maxui %c1167065940_i32, %c631624334_i32 : i32
        %274 = arith.negf %cst : f32
        %275 = vector.reduction <mul>, %21 : vector<12xf16> into f16
        %276 = index.casts %c15 : index to i32
        %c844375786_i32 = arith.constant 844375786 : i32
        %alloc_42 = memref.alloc() : memref<7xi64>
        memref.copy %alloc_22, %alloc_42 : memref<7xi64> to memref<7xi64>
        %277 = arith.remf %cst_1, %cst_0 : f16
        %278 = math.ceil %8 : tensor<3xf32>
        %279 = vector.matrix_multiply %262, %262 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        %280 = arith.negf %cst_2 : f32
        %281 = index.maxu %c14, %c3
        %282 = arith.minui %c1642583252_i32, %c1167065940_i32 : i32
        %283 = arith.addi %c631624334_i32, %c631624334_i32 : i32
        %284 = arith.divsi %c-18568_i16, %c22501_i16 : i16
        memref.tensor_store %15, %alloc_18 : memref<7xf16>
        scf.yield
      }
      bufferization.dealloc_tensor %9 : tensor<12x3xi16>
      %264 = arith.subi %c22501_i16, %c-18568_i16 : i16
      %265 = math.log2 %transposed : tensor<7xf16>
      %266 = vector.broadcast %cst_1 : f16 to vector<3xf16>
      %267 = vector.maskedload %alloc_12[%c2], %262, %266 : memref<3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %268 = math.rsqrt %cst : f32
      bufferization.dealloc_tensor %5 : tensor<7xi1>
      %269 = arith.cmpi slt, %c631624334_i32, %c1167065940_i32 : i32
      %270 = vector.broadcast %c11 : index to vector<1xindex>
      %271 = vector.broadcast %true : i1 to vector<1xi1>
      vector.scatter %alloc_17[%c3, %c2] [%270], %271, %271 : memref<12x3xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %272 = index.mul %c14, %25
      scf.yield %alloc_16 : memref<12x3xf32>
    }
    %32 = arith.cmpi ult, %c631624334_i32, %c1167065940_i32 : i32
    %true_23 = index.bool.constant true
    %33 = math.powf %cst, %cst_6 : f32
    %34 = arith.floordivsi %true, %true : i1
    %cst_24 = arith.constant 5.142400e+04 : f16
    %alloca = memref.alloca() : memref<12x3xf32>
    %35 = index.maxu %c8, %c11
    %36 = index.casts %true_23 : i1 to index
    %37 = math.roundeven %18 : tensor<7xf16>
    %38 = scf.if %true -> (memref<12x3xi32>) {
      %259 = math.rsqrt %cst_2 : f32
      %260 = index.ceildivu %c10, %c15
      %261 = math.ctpop %true_23 : i1
      %262 = math.expm1 %cst_3 : f32
      %263 = vector.load %alloc_17[%c10, %c2] : memref<12x3xi1>, vector<3xi1>
      %264 = arith.remf %cst_3, %cst : f32
      %265 = math.tan %15 : tensor<7xf16>
      %266 = arith.minf %cst_2, %cst_7 : f32
      %alloc_41 = memref.alloc() : memref<12x3xi32>
      scf.yield %alloc_41 : memref<12x3xi32>
    } else {
      %259 = arith.addf %cst_2, %cst_3 : f32
      %260 = math.roundeven %0 : tensor<7xf16>
      %261 = index.castu %c631624334_i32 : i32 to index
      %262 = vector.insert %cst_1, %21 [1] : f16 into vector<12xf16>
      %263 = math.ctpop %11 : tensor<12x3xi32>
      %264 = arith.subi %c14099_i16, %c-18568_i16 : i16
      %265 = vector.load %alloc[%c1] : memref<7xf16>, vector<7xf16>
      %cast_41 = tensor.cast %24 : tensor<i32> to tensor<i32>
      %alloc_42 = memref.alloc() : memref<12x3xi32>
      scf.yield %alloc_42 : memref<12x3xi32>
    }
    %39 = vector.insertelement %cst_1, %21[%c3 : index] : vector<12xf16>
    %40 = vector.broadcast %cst_4 : f16 to vector<12x3xf16>
    %41 = vector.broadcast %c1642583252_i32 : i32 to vector<7xi32>
    affine.for %arg2 = 0 to 69 {
    }
    %42 = arith.shli %true_23, %true : i1
    %43 = arith.subi %c-18568_i16, %c-18568_i16 : i16
    %44 = vector.broadcast %c1167065940_i32 : i32 to vector<i32>
    %45 = vector.transfer_write %44, %12[%c2] : vector<i32>, tensor<3xi32>
    %46 = bufferization.clone %alloc_20 : memref<7xi16> to memref<7xi16>
    %alloca_25 = memref.alloca() : memref<3xf32>
    %47 = bufferization.clone %alloc_20 : memref<7xi16> to memref<7xi16>
    %48 = arith.cmpi ule, %c-18568_i16, %c22501_i16 : i16
    %49 = arith.maxui %c14099_i16, %c-18568_i16 : i16
    %50 = bufferization.to_memref %0 : memref<7xf16>
    %51 = math.tan %15 : tensor<7xf16>
    %52 = scf.while (%arg2 = %41) : (vector<7xi32>) -> vector<7xi32> {
      %259 = arith.remsi %c22501_i16, %c22501_i16 : i16
      %260 = vector.broadcast %c14099_i16 : i16 to vector<i16>
      vector.transfer_write %260, %alloc_15[%c1] : vector<i16>, memref<7xi16>
      %261 = vector.insert %c1167065940_i32, %41 [1] : i32 into vector<7xi32>
      %262 = vector.broadcast %c14099_i16 : i16 to vector<i16>
      %263 = vector.transfer_write %262, %4[%c5] : vector<i16>, tensor<7xi16>
      %264 = tensor.empty() : tensor<12x12x12xf16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%264 : tensor<12x12x12xf16>) {
      ^bb0(%out: f16):
        %269 = vector.broadcast %cst_5 : f16 to vector<12x12xf16>
        %270 = vector.outerproduct %21, %21, %269 {kind = #vector.kind<maxf>} : vector<12xf16>, vector<12xf16>
        %271 = index.divs %25, %c3
        %272 = math.ceil %cst : f32
        %273 = math.ceil %cst : f32
        %274 = vector.shuffle %21, %21 [5, 6, 9, 11, 13, 15, 16, 17, 18, 19, 20, 21] : vector<12xf16>, vector<12xf16>
        %275 = math.tan %cst_7 : f32
        %276 = arith.remsi %c1642583252_i32, %c1167065940_i32 : i32
        %277 = arith.shrsi %c631624334_i32, %c1642583252_i32 : i32
        %278 = bufferization.to_tensor %alloc_15 : memref<7xi16>
        %279 = arith.shli %c1167065940_i32, %c1167065940_i32 : i32
        %280 = index.ceildivs %c3, %35
        %281 = vector.matrix_multiply %41, %41 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %282 = arith.remf %cst_2, %cst_7 : f32
        %283 = affine.max affine_map<(d0, d1) -> (d1 + (-d1) ceildiv 4, d1, d0)>(%c9, %c3)
        %284 = vector.extract %41[6] : vector<7xi32>
        %285 = math.expm1 %cst_1 : f16
        %286 = math.absi %14 : tensor<7xi16>
        %287 = vector.broadcast %271 : index to vector<3xindex>
        %288 = vector.broadcast %true : i1 to vector<3xi1>
        %289 = vector.broadcast %c1167065940_i32 : i32 to vector<3xi32>
        vector.scatter %38[%c10, %c1] [%287], %288, %289 : memref<12x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %290 = arith.maxui %c1642583252_i32, %c631624334_i32 : i32
        %291 = math.ipowi %1, %1 : tensor<12x3xi1>
        %expanded_41 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<12x3xi32> into tensor<12x3x1xi32>
        %292 = arith.mulf %cst_2, %cst_2 : f32
        %293 = index.mul %c2, %280
        %alloc_42 = memref.alloc() : memref<7xi1>
        memref.copy %alloc_10, %alloc_42 : memref<7xi1> to memref<7xi1>
        %294 = arith.maxsi %c1167065940_i32, %c1642583252_i32 : i32
        %295 = arith.ori %true_23, %true_23 : i1
        %296 = arith.minf %cst_0, %cst_4 : f16
        %297 = index.casts %c-18568_i16 : i16 to index
        %298 = arith.cmpf ueq, %cst_2, %cst_2 : f32
        %299 = math.absi %14 : tensor<7xi16>
        %cast_43 = tensor.cast %4 : tensor<7xi16> to tensor<?xi16>
        %300 = math.round %18 : tensor<7xf16>
        linalg.yield %cst_1 : f16
      } -> tensor<12x12x12xf16>
      %266 = math.ceil %cst_0 : f16
      %267 = vector.insertelement %c1167065940_i32, %41[%c8 : index] : vector<7xi32>
      %268 = math.floor %cst_1 : f16
      scf.condition(%true_23) %41 : vector<7xi32>
    } do {
    ^bb0(%arg2: vector<7xi32>):
      %259 = tensor.empty(%c15, %c11) : tensor<?x?xi16>
      bufferization.dealloc_tensor %8 : tensor<3xf32>
      %260 = arith.shli %c1167065940_i32, %c631624334_i32 : i32
      %261 = vector.shuffle %44, %44 [0, 1] : vector<i32>, vector<i32>
      %262 = vector.broadcast %c1167065940_i32 : i32 to vector<i32>
      %263 = vector.transfer_write %262, %7[%c14] : vector<i32>, tensor<7xi32>
      %264 = vector.matrix_multiply %21, %21 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf16>, vector<12xf16>) -> vector<1xf16>
      %265 = math.roundeven %8 : tensor<3xf32>
      %266 = arith.cmpf ord, %cst, %cst_2 : f32
      %cast_41 = tensor.cast %22 : tensor<3xi32> to tensor<?xi32>
      %267 = index.add %c6, %c0
      %268 = affine.for %arg3 = 0 to 33 iter_args(%arg4 = %4) -> (tensor<7xi16>) {
        affine.yield %14 : tensor<7xi16>
      }
      %269 = vector.broadcast %c7 : index to vector<3xindex>
      %270 = vector.broadcast %true : i1 to vector<3xi1>
      %271 = vector.broadcast %c14099_i16 : i16 to vector<3xi16>
      vector.scatter %46[%c3] [%269], %270, %271 : memref<7xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      scf.execute_region {
        %276 = math.ctpop %1 : tensor<12x3xi1>
        %277 = arith.maxui %c14099_i16, %c22501_i16 : i16
        %278 = vector.bitcast %40 : vector<12x3xf16> to vector<12x3xf16>
        %279 = arith.maxsi %c631624334_i32, %c1167065940_i32 : i32
        %280 = index.divs %c10, %c11
        %281 = math.log2 %cst_2 : f32
        %282 = index.sub %36, %c15
        %283 = math.ipowi %9, %9 : tensor<12x3xi16>
        %284 = math.cos %8 : tensor<3xf32>
        %285 = vector.load %alloc_21[%c1, %c1] : memref<12x3xi16>, vector<7xi16>
        %286 = arith.divsi %c14099_i16, %c14099_i16 : i16
        %287 = math.tan %transposed : tensor<7xf16>
        %288 = math.cos %cst : f32
        %289 = arith.ori %c-18568_i16, %c-18568_i16 : i16
        %290 = vector.multi_reduction <add>, %285, %285 [] : vector<7xi16> to vector<7xi16>
        %291 = math.ctpop %7 : tensor<7xi32>
        scf.yield
      }
      %272 = arith.ori %true, %true : i1
      %273 = vector.broadcast %cst_7 : f32 to vector<7xf32>
      %274 = vector.fma %273, %273, %273 : vector<7xf32>
      %275 = math.tan %0 : tensor<7xf16>
      scf.yield %41 : vector<7xi32>
    }
    %53 = vector.reduction <or>, %41 : vector<7xi32> into i32
    %54 = memref.load %alloc_13[%c4, %c1] : memref<12x3xi1>
    %55 = vector.broadcast %c1167065940_i32 : i32 to vector<i32>
    %56 = vector.transfer_write %55, %10[%c9] : vector<i32>, tensor<3xi32>
    %57 = math.tan %cst_1 : f16
    %58 = arith.shli %c1642583252_i32, %c1642583252_i32 : i32
    %59 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, (d2 - d3) * 2, d3, d0)>(%c11, %c3, %c14, %36)
    %60 = bufferization.clone %50 : memref<7xf16> to memref<7xf16>
    %61 = vector.transpose %40, [1, 0] : vector<12x3xf16> to vector<3x12xf16>
    %62 = math.ipowi %6, %11 : tensor<12x3xi32>
    %alloc_26 = memref.alloc() : memref<3x3xi1>
    %63 = tensor.empty() : tensor<12x3xi1>
    %64 = linalg.matmul ins(%2, %alloc_26 : tensor<12x3xi1>, memref<3x3xi1>) outs(%63 : tensor<12x3xi1>) -> tensor<12x3xi1>
    %65 = arith.subi %true_23, %true_23 : i1
    %66 = arith.subi %true, %true : i1
    %67 = math.exp %cst : f32
    %68 = math.cos %cst_3 : f32
    %69 = vector.transpose %44, [] : vector<i32> to vector<i32>
    %70 = math.log %transposed : tensor<7xf16>
    %71 = math.fma %cst_7, %cst_6, %cst_7 : f32
    %72 = index.divs %c8, %c4
    %73 = scf.while (%arg2 = %alloc_19) : (memref<12x3xi64>) -> memref<12x3xi64> {
      %259 = index.casts %c631624334_i32 : i32 to index
      %260 = vector.broadcast %35 : index to vector<3xindex>
      %261 = vector.broadcast %true_23 : i1 to vector<3xi1>
      %262 = vector.broadcast %cst_2 : f32 to vector<3xf32>
      vector.scatter %alloc_16[%c5, %c0] [%260], %261, %262 : memref<12x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      %263 = math.log10 %18 : tensor<7xf16>
      %264 = index.floordivs %36, %c5
      %265 = arith.xori %true_23, %true_23 : i1
      %266 = math.cos %cst_7 : f32
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_41 = arith.constant 0 : i64
      %267 = vector.transfer_read %alloc_9[%c1, %c1], %c0_i64_41 : memref<12x3xi64>, vector<i64>
      %268 = arith.cmpi ule, %c22501_i16, %c22501_i16 : i16
      scf.condition(%true_23) %arg2 : memref<12x3xi64>
    } do {
    ^bb0(%arg2: memref<12x3xi64>):
      %259 = bufferization.to_tensor %alloc : memref<7xf16>
      %260 = math.tan %cst_1 : f16
      %261 = math.log1p %cst_1 : f16
      %262 = arith.addi %true, %true : i1
      %263 = math.exp %cst_1 : f16
      %264 = arith.floordivsi %c631624334_i32, %c1642583252_i32 : i32
      %265 = vector.extract %21[1] : vector<12xf16>
      %266 = index.divs %59, %c5
      %267 = index.maxs %72, %c1
      affine.store %cst_5, %50[%c7] : memref<7xf16>
      %268 = math.ctpop %6 : tensor<12x3xi32>
      %269 = arith.minf %cst_7, %cst_6 : f32
      %270 = vector.load %alloc_8[%c5, %c2] : memref<12x3xf32>, vector<7xf32>
      %271 = math.cttz %6 : tensor<12x3xi32>
      bufferization.dealloc_tensor %2 : tensor<12x3xi1>
      %272 = arith.mulf %cst_6, %cst_2 : f32
      scf.yield %alloc_9 : memref<12x3xi64>
    }
    %74 = index.mul %c0, %c6
    %75 = math.atan %cst_6 : f32
    %76 = math.exp %cst_5 : f16
    %77 = arith.minf %cst_0, %cst_0 : f16
    %78 = math.ipowi %11, %11 : tensor<12x3xi32>
    %cst_27 = arith.constant 5.116800e+04 : f16
    %79 = math.rsqrt %cst_0 : f16
    %80 = arith.maxsi %c22501_i16, %c14099_i16 : i16
    %81 = arith.cmpi ne, %c1167065940_i32, %c1167065940_i32 : i32
    %82 = math.rsqrt %cst_3 : f32
    %from_elements = tensor.from_elements %c14099_i16, %c22501_i16, %c22501_i16, %c14099_i16, %c14099_i16, %c22501_i16, %c14099_i16 : tensor<7xi16>
    %83 = index.castu %c14 : index to i32
    %84 = math.copysign %cst_3, %cst : f32
    scf.if %true {
      bufferization.dealloc_tensor %reduced : tensor<i32>
      %259 = arith.subi %c14099_i16, %c-18568_i16 : i16
      %260 = math.exp %15 : tensor<7xf16>
      %261 = arith.remsi %true, %true_23 : i1
      %c1033310520_i32 = arith.constant 1033310520 : i32
      %262 = affine.for %arg2 = 0 to 29 iter_args(%arg3 = %19) -> (tensor<i32>) {
        affine.yield %reduced : tensor<i32>
      }
      %263 = math.ipowi %22, %12 : tensor<3xi32>
      %264 = math.ipowi %c1167065940_i32, %c1642583252_i32 : i32
    } else {
      %259 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, (d2 ceildiv 32) floordiv 2)>(%c15, %c4, %c0, %59)
      %260 = affine.load %alloc[%c6] : memref<7xf16>
      %261 = vector.broadcast %cst : f32 to vector<12x3xf32>
      %262 = math.log2 %cst_6 : f32
      %263 = math.log2 %cst : f32
      %264 = vector.create_mask %c10 : vector<7xi1>
      %inserted_41 = tensor.insert %true into %2[%c9, %c1] : tensor<12x3xi1>
      %265 = arith.muli %true_23, %true : i1
    }
    %85 = bufferization.clone %alloc_11 : memref<3xi16> to memref<3xi16>
    %86 = arith.floordivsi %c-18568_i16, %c-18568_i16 : i16
    %87 = math.log1p %8 : tensor<3xf32>
    %88 = arith.divf %cst_0, %cst_0 : f16
    %89 = index.casts %c12 : index to i32
    %90 = scf.execute_region -> memref<7xi1> {
      %259 = index.casts %c15 : index to i32
      %260 = math.atan2 %18, %0 : tensor<7xf16>
      %261 = math.copysign %18, %0 : tensor<7xf16>
      %262 = index.floordivs %35, %74
      %263 = math.ipowi %9, %9 : tensor<12x3xi16>
      %264 = scf.if %true -> (memref<7xi16>) {
        %275 = math.exp %18 : tensor<7xf16>
        %276 = math.fpowi %cst_1, %c1642583252_i32 : f16, i32
        %277 = vector.broadcast %cst_2 : f32 to vector<3xf32>
        %278 = vector.fma %277, %277, %277 : vector<3xf32>
        %279 = arith.remui %c1167065940_i32, %c1642583252_i32 : i32
        %280 = math.log1p %cst_5 : f16
        %c433738372_i32 = arith.constant 433738372 : i32
        %281 = math.ceil %transposed : tensor<7xf16>
        %282 = math.tan %cst_7 : f32
        scf.yield %47 : memref<7xi16>
      } else {
        %275 = arith.ori %c1167065940_i32, %c1167065940_i32 : i32
        %alloca_42 = memref.alloca() : memref<3xi16>
        %276 = arith.remui %true, %true_23 : i1
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %21, %21, %cst_5 : vector<12xf16>, vector<12xf16> into f16
        %splat_43 = tensor.splat %cst_3 : tensor<3xf32>
        %278 = math.tan %cst_1 : f16
        %279 = arith.negf %cst_7 : f32
        %280 = vector.load %alloc_17[%c7, %c1] : memref<12x3xi1>, vector<7xi1>
        scf.yield %47 : memref<7xi16>
      }
      %265 = vector.insert %cst_4, %21 [11] : f16 into vector<12xf16>
      %266 = bufferization.to_memref %4 : memref<7xi16>
      %267 = vector.broadcast %72 : index to vector<3xindex>
      %268 = vector.broadcast %true : i1 to vector<3xi1>
      %269 = vector.broadcast %cst_1 : f16 to vector<3xf16>
      vector.scatter %alloc_18[%c4] [%267], %268, %269 : memref<7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %inserted_41 = tensor.insert %true into %2[%c3, %c1] : tensor<12x3xi1>
      %270 = arith.maxui %c22501_i16, %c14099_i16 : i16
      %271 = math.fma %cst_6, %cst_7, %cst_6 : f32
      memref.tensor_store %4, %264 : memref<7xi16>
      %272 = index.ceildivs %25, %c5
      %273 = math.expm1 %8 : tensor<3xf32>
      %274 = math.log1p %8 : tensor<3xf32>
      scf.yield %alloc_10 : memref<7xi1>
    }
    %91 = arith.minui %c22501_i16, %c22501_i16 : i16
    %92 = math.fpowi %transposed, %7 : tensor<7xf16>, tensor<7xi32>
    %93 = math.log %cst_0 : f16
    %94 = vector.broadcast %c1642583252_i32 : i32 to vector<3xi32>
    %95 = vector.transfer_write %94, %11[%c9, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi32>, tensor<12x3xi32>
    %96 = vector.transpose %40, [1, 0] : vector<12x3xf16> to vector<3x12xf16>
    %97 = math.absf %8 : tensor<3xf32>
    %98 = scf.if %true_23 -> (i64) {
      %259 = math.ceil %15 : tensor<7xf16>
      %260 = vector.insert %c1642583252_i32, %94 [0] : i32 into vector<3xi32>
      %261 = math.sqrt %8 : tensor<3xf32>
      %262 = math.fma %cst_3, %cst_2, %cst_2 : f32
      %263 = vector.shuffle %41, %94 [0, 1, 3, 6, 7] : vector<7xi32>, vector<3xi32>
      %264 = memref.load %alloc_22[%c1] : memref<7xi64>
      %265 = affine.min affine_map<(d0, d1) -> (d0 * 16 - d1 + 2, d0 * 16, d1 floordiv 2 + d0 * 8)>(%74, %c15)
      %266 = index.divu %265, %72
      %c0_i64 = arith.constant 0 : i64
      scf.yield %c0_i64 : i64
    } else {
      %259 = index.floordivs %c9, %c9
      %260 = index.maxu %c12, %25
      %261 = arith.shrui %c14099_i16, %c22501_i16 : i16
      %262 = vector.broadcast %c14099_i16 : i16 to vector<i16>
      vector.transfer_write %262, %alloc_11[%74] : vector<i16>, memref<3xi16>
      %263 = math.ipowi %23, %24 : tensor<i32>
      %264 = arith.ori %c22501_i16, %c-18568_i16 : i16
      %265 = index.ceildivu %c1, %c13
      %266 = vector.broadcast %cst_5 : f16 to vector<f16>
      vector.transfer_write %266, %50[%c2] : vector<f16>, memref<7xf16>
      %c1_i64 = arith.constant 1 : i64
      scf.yield %c1_i64 : i64
    }
    %99 = math.log1p %15 : tensor<7xf16>
    %100 = arith.subi %c22501_i16, %c14099_i16 : i16
    %101 = vector.extract %21[1] : vector<12xf16>
    scf.if %true {
      %259 = vector.reduction <maxui>, %94 : vector<3xi32> into i32
      %260 = index.sizeof
      %261 = math.powf %cst_0, %cst_1 : f16
      %alloca_41 = memref.alloca() : memref<12x3xi16>
      %cast_42 = tensor.cast %22 : tensor<3xi32> to tensor<?xi32>
      %262 = math.atan %cst_5 : f16
      %263 = bufferization.to_tensor %alloc_21 : memref<12x3xi16>
      %splat_43 = tensor.splat %c1167065940_i32 : tensor<7xi32>
    }
    %102 = arith.shrui %true, %true : i1
    memref.copy %alloc_18, %60 : memref<7xf16> to memref<7xf16>
    %103 = math.round %transposed : tensor<7xf16>
    %104 = math.roundeven %8 : tensor<3xf32>
    %105 = math.absf %cst_0 : f16
    %106 = math.ctpop %3 : tensor<3xi32>
    %107 = index.maxu %72, %c12
    %108 = math.powf %cst_5, %cst_5 : f16
    %109 = math.ipowi %24, %19 : tensor<i32>
    %alloca_28 = memref.alloca() : memref<12x3xi32>
    %110 = index.divs %c9, %c14
    %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x3xi1> into tensor<12x3x1xi1>
    memref.alloca_scope  {
      bufferization.dealloc_tensor %11 : tensor<12x3xi32>
      %259 = math.tan %8 : tensor<3xf32>
      %260 = math.log2 %cst_7 : f32
      %261 = index.ceildivu %c12, %c0
      %262 = arith.remui %c14099_i16, %c-18568_i16 : i16
      %263 = math.log1p %8 : tensor<3xf32>
      %264 = math.log2 %15 : tensor<7xf16>
      %265 = math.fma %cst_3, %cst_3, %cst_3 : f32
      %266 = vector.broadcast %c1642583252_i32 : i32 to vector<3x3xi32>
      %267 = vector.outerproduct %94, %94, %266 {kind = #vector.kind<and>} : vector<3xi32>, vector<3xi32>
      %268 = math.sqrt %cst_1 : f16
      %269 = scf.execute_region -> vector<7xi32> {
        %296 = math.absf %8 : tensor<3xf32>
        %297 = memref.realloc %47 : memref<7xi16> to memref<1xi16>
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 * 16 + 2) ceildiv 64 - 8, d3 - 2)>(%25, %c9, %c4, %c12)
        %299 = arith.minui %c1642583252_i32, %c1167065940_i32 : i32
        %c698014825_i64 = arith.constant 698014825 : i64
        %300 = math.log2 %cst_3 : f32
        %301 = arith.subi %c14099_i16, %c22501_i16 : i16
        %302 = math.round %cst : f32
        %303 = math.log2 %cst_3 : f32
        %splat_41 = tensor.splat %cst_3 : tensor<7xf32>
        %304 = arith.subi %c-18568_i16, %c14099_i16 : i16
        %305 = math.log2 %15 : tensor<7xf16>
        %306 = arith.maxui %c22501_i16, %c22501_i16 : i16
        %307 = math.ctpop %22 : tensor<3xi32>
        %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<12x3xi16> into tensor<36xi16>
        %308 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %94, %94, %c1642583252_i32 : vector<3xi32>, vector<3xi32> into i32
        scf.yield %41 : vector<7xi32>
      }
      %270 = arith.shli %true, %true_23 : i1
      %271 = math.log %cst_7 : f32
      %272 = math.exp %8 : tensor<3xf32>
      %273 = bufferization.to_tensor %46 : memref<7xi16>
      %274 = vector.extract %94[0] : vector<3xi32>
      %275 = arith.minf %cst_6, %cst_2 : f32
      %276 = index.add %c4, %c0
      %277 = vector.load %alloc_14[%c1] : memref<7xi16>, vector<7xi16>
      %278 = index.ceildivu %261, %59
      %279 = index.maxu %c0, %c6
      %280 = math.log %0 : tensor<7xf16>
      %281 = math.exp %cst_6 : f32
      %282 = memref.realloc %alloc : memref<7xf16> to memref<3xf16>
      %283 = tensor.empty() : tensor<7xi64>
      %284 = vector.broadcast %98 : i64 to vector<12x3xi64>
      %285 = vector.broadcast %true_23 : i1 to vector<12x3xi1>
      %286 = vector.broadcast %c631624334_i32 : i32 to vector<12x3xi32>
      %287 = vector.gather %283[%c5] [%286], %285, %284 : tensor<7xi64>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xi64> into vector<12x3xi64>
      %288 = math.roundeven %8 : tensor<3xf32>
      %289 = memref.atomic_rmw maxu %c22501_i16, %alloc_20[%c3] : (i16, memref<7xi16>) -> i16
      %290 = vector.broadcast %cst : f32 to vector<3xf32>
      %291 = vector.fma %290, %290, %290 : vector<3xf32>
      %292 = scf.if %true_23 -> (memref<3xf16>) {
        %296 = arith.subi %c22501_i16, %c22501_i16 : i16
        %297 = vector.broadcast %c13 : index to vector<12xindex>
        %298 = vector.broadcast %true : i1 to vector<12xi1>
        %299 = vector.broadcast %c1642583252_i32 : i32 to vector<12xi32>
        vector.scatter %38[%c3, %c1] [%297], %298, %299 : memref<12x3xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %300 = vector.broadcast %true_23 : i1 to vector<3xi1>
        %301 = vector.gather %8[%36] [%94], %300, %290 : tensor<3xf32>, vector<3xi32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %302 = index.divs %c6, %c4
        %303 = vector.matrix_multiply %277, %277 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %304 = affine.min affine_map<(d0, d1, d2) -> ((d0 - 47) ceildiv 128, ((d0 * 127) ceildiv 16) * 16, d0 * -127, d0 * -127)>(%278, %107, %c2)
        %cast_41 = tensor.cast %1 : tensor<12x3xi1> to tensor<?x?xi1>
        %305 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        %306 = vector.fma %305, %305, %305 : vector<7xf32>
        scf.yield %alloc_12 : memref<3xf16>
      } else {
        %296 = arith.andi %98, %98 : i64
        %297 = math.exp %cst_6 : f32
        %298 = math.expm1 %cst_7 : f32
        %299 = math.roundeven %transposed : tensor<7xf16>
        memref.copy %47, %alloc_20 : memref<7xi16> to memref<7xi16>
        %300 = math.log %15 : tensor<7xf16>
        %301 = arith.minf %cst_6, %cst : f32
        %302 = memref.realloc %alloc_22 : memref<7xi64> to memref<7xi64>
        scf.yield %alloc_12 : memref<3xf16>
      }
      %293 = math.ctpop %3 : tensor<3xi32>
      %294 = math.roundeven %cst_2 : f32
      %295 = vector.flat_transpose %277 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
    }
    %111 = scf.while (%arg2 = %alloc_12) : (memref<3xf16>) -> memref<3xf16> {
      %259 = math.atan %15 : tensor<7xf16>
      %260 = arith.shrui %true, %true_23 : i1
      %261 = math.expm1 %8 : tensor<3xf32>
      bufferization.dealloc_tensor %5 : tensor<7xi1>
      %262 = math.tanh %cst_4 : f16
      %263 = math.ipowi %22, %10 : tensor<3xi32>
      %264 = arith.addi %true_23, %true_23 : i1
      %265 = math.log %0 : tensor<7xf16>
      scf.condition(%true) %alloc_12 : memref<3xf16>
    } do {
    ^bb0(%arg2: memref<3xf16>):
      %259 = math.tan %0 : tensor<7xf16>
      %260 = vector.load %alloc_9[%c3, %c1] : memref<12x3xi64>, vector<7xi64>
      memref.tensor_store %16, %38 : memref<12x3xi32>
      %261 = vector.multi_reduction <add>, %260, %260 [] : vector<7xi64> to vector<7xi64>
      %262 = vector.broadcast %cst : f32 to vector<7xf32>
      %263 = math.powf %cst_2, %cst_3 : f32
      %264 = vector.broadcast %c14099_i16 : i16 to vector<3xi16>
      %265 = vector.broadcast %true_23 : i1 to vector<3xi1>
      %266 = vector.maskedload %alloc_21[%c10, %c2], %265, %264 : memref<12x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %267 = math.copysign %0, %0 : tensor<7xf16>
      %268 = math.fpowi %0, %7 : tensor<7xf16>, tensor<7xi32>
      %269 = math.round %cst_4 : f16
      %270 = math.ctpop %19 : tensor<i32>
      %271 = math.sqrt %cst_7 : f32
      %272 = math.log2 %cst_0 : f16
      %273 = arith.shrui %c14099_i16, %c14099_i16 : i16
      %274 = memref.load %alloc_20[%c6] : memref<7xi16>
      bufferization.dealloc_tensor %4 : tensor<7xi16>
      scf.yield %alloc_12 : memref<3xf16>
    }
    %112 = scf.execute_region -> index {
      %259 = math.log %15 : tensor<7xf16>
      %expanded_41 = tensor.expand_shape %0 [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
      %cst_42 = arith.constant 3.840000e+04 : f16
      %260 = math.log %cst_7 : f32
      %261 = arith.cmpi ule, %c1167065940_i32, %c1167065940_i32 : i32
      %splat_43 = tensor.splat %cst_3 : tensor<7xf32>
      %262 = arith.remf %cst, %cst_2 : f32
      %263 = bufferization.to_memref %22 : memref<3xi32>
      %264 = arith.remui %98, %98 : i64
      %265 = math.exp %splat_43 : tensor<7xf32>
      %266 = affine.for %arg2 = 0 to 121 iter_args(%arg3 = %alloc_16) -> (memref<12x3xf32>) {
        affine.yield %alloc_16 : memref<12x3xf32>
      }
      %267 = vector.broadcast %cst_3 : f32 to vector<3xf32>
      %268 = vector.fma %267, %267, %267 : vector<3xf32>
      %269 = math.log2 %cst_7 : f32
      %270 = arith.subi %c631624334_i32, %c1642583252_i32 : i32
      %271 = math.ceil %15 : tensor<7xf16>
      scf.execute_region {
        %272 = bufferization.to_tensor %90 : memref<7xi1>
        %273 = math.expm1 %transposed : tensor<7xf16>
        %274 = vector.broadcast %cst_4 : f16 to vector<3xf16>
        %275 = vector.broadcast %true_23 : i1 to vector<3xi1>
        %276 = vector.maskedload %alloc[%c6], %275, %274 : memref<7xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %277 = arith.divf %cst_6, %cst_3 : f32
        %278 = vector.shuffle %41, %94 [0, 2, 3, 4, 5, 6, 7, 8] : vector<7xi32>, vector<3xi32>
        %279 = index.divs %c11, %c8
        %280 = math.ceil %0 : tensor<7xf16>
        %281 = math.atan2 %cst, %cst_2 : f32
        %282 = arith.remf %cst_6, %cst_3 : f32
        %283 = vector.broadcast %cst : f32 to vector<12x3xf32>
        %284 = vector.fma %283, %283, %283 : vector<12x3xf32>
        %285 = math.powf %cst, %cst : f32
        bufferization.dealloc_tensor %6 : tensor<12x3xi32>
        %286 = memref.load %60[%c2] : memref<7xf16>
        %287 = vector.broadcast %c-18568_i16 : i16 to vector<12x3xi16>
        %288 = vector.broadcast %true_23 : i1 to vector<12x3xi1>
        %289 = vector.broadcast %c1642583252_i32 : i32 to vector<12x3xi32>
        %290 = vector.gather %9[%c3, %25] [%289], %288, %287 : tensor<12x3xi16>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xi16> into vector<12x3xi16>
        %291 = arith.muli %true, %true : i1
        %292 = vector.matrix_multiply %268, %268 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        scf.yield
      }
      scf.yield %25 : index
    }
    affine.for %arg2 = 0 to 102 {
    }
    %113 = arith.subi %true_23, %true : i1
    %114 = math.tanh %cst_7 : f32
    %115 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<12x3x1xi1>) {
    ^bb0(%out: i1):
      %259 = arith.cmpi sgt, %c1642583252_i32, %c1642583252_i32 : i32
      %260 = arith.addi %98, %98 : i64
      %261 = vector.broadcast %cst_3 : f32 to vector<7xf32>
      %262 = vector.fma %261, %261, %261 : vector<7xf32>
      %from_elements_41 = tensor.from_elements %cst_5, %cst_1, %cst_0, %cst_1, %cst_4, %cst_1, %cst_0, %cst_5, %cst_1, %cst_5, %cst_5, %cst_0, %cst_4, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst_1, %cst_1, %cst_0, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_0, %cst_5, %cst_0, %cst_0, %cst_4 : tensor<12x3xf16>
      %263 = scf.execute_region -> tensor<3xf16> {
        %286 = math.ipowi %true_23, %true_23 : i1
        %287 = vector.insertelement %cst_7, %261[%c0 : index] : vector<7xf32>
        %288 = vector.broadcast %cst_3 : f32 to vector<12x3xf32>
        %289 = vector.broadcast %true : i1 to vector<12x3xi1>
        %290 = vector.broadcast %c631624334_i32 : i32 to vector<12x3xi32>
        %291 = vector.gather %alloc_8[%c7, %c3] [%290], %289, %288 : memref<12x3xf32>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xf32> into vector<12x3xf32>
        %292 = math.fma %0, %18, %18 : tensor<7xf16>
        %true_46 = index.bool.constant true
        %293 = math.tanh %18 : tensor<7xf16>
        %294 = index.casts %c1167065940_i32 : i32 to index
        %295 = arith.divsi %c14099_i16, %c-18568_i16 : i16
        %splat_47 = tensor.splat %cst_2 : tensor<3xf32>
        %296 = math.log %cst_4 : f16
        memref.copy %50, %alloc : memref<7xf16> to memref<7xf16>
        %297 = arith.shrui %true_46, %true_23 : i1
        %298 = math.log2 %8 : tensor<3xf32>
        %299 = vector.reduction <maxf>, %262 : vector<7xf32> into f32
        %cast_48 = tensor.cast %9 : tensor<12x3xi16> to tensor<?x?xi16>
        %300 = vector.matrix_multiply %94, %94 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
        %301 = tensor.empty() : tensor<3xf16>
        scf.yield %301 : tensor<3xf16>
      }
      %264 = bufferization.clone %50 : memref<7xf16> to memref<7xf16>
      %265 = vector.load %alloc_13[%c1, %c1] : memref<12x3xi1>, vector<3xi1>
      %266 = arith.subi %out, %true_23 : i1
      %from_elements_42 = tensor.from_elements %c1642583252_i32, %c631624334_i32, %c1167065940_i32 : tensor<3xi32>
      %267 = math.ctpop %c631624334_i32 : i32
      %268 = vector.create_mask %c12 : vector<7xi1>
      %269 = arith.cmpf uno, %cst_3, %cst_6 : f32
      %270 = arith.subi %out, %true_23 : i1
      %271 = arith.maxsi %98, %98 : i64
      %272 = math.ceil %0 : tensor<7xf16>
      %273 = math.copysign %15, %0 : tensor<7xf16>
      %274 = arith.subi %c1642583252_i32, %c1167065940_i32 : i32
      %275 = vector.insert %cst_4, %21 [1] : f16 into vector<12xf16>
      %276 = arith.negf %cst_6 : f32
      %cast_43 = tensor.cast %expanded : tensor<12x3x1xi1> to tensor<?x?x?xi1>
      %277 = arith.addf %cst_6, %cst : f32
      %278 = memref.load %alloc_8[%c2, %c2] : memref<12x3xf32>
      %279 = math.ipowi %16, %6 : tensor<12x3xi32>
      %280 = math.cttz %c22501_i16 : i16
      %281 = bufferization.to_memref %63 : memref<12x3xi1>
      %282 = math.log %8 : tensor<3xf32>
      %283 = math.log10 %cst : f32
      scf.if %out {
        %286 = arith.xori %c22501_i16, %c22501_i16 : i16
        %287 = index.divs %c5, %35
        %288 = arith.addf %cst_5, %cst_1 : f16
        %289 = math.round %transposed : tensor<7xf16>
        %cast_46 = tensor.cast %4 : tensor<7xi16> to tensor<?xi16>
        %290 = arith.addi %c631624334_i32, %c1642583252_i32 : i32
        %291 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %292 = vector.broadcast %true_23 : i1 to vector<1xi1>
        %293 = vector.maskedload %60[%c4], %292, %291 : memref<7xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %294 = vector.transfer_read %alloc_21[%c11, %c4], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<12x3xi16>, vector<12xi16>
      }
      %splat_44 = tensor.splat %c-18568_i16 : tensor<12x3xi16>
      %cst_45 = arith.constant 8.952000e+03 : f16
      %284 = arith.addf %cst_5, %cst_4 : f16
      %285 = bufferization.clone %alloc_22 : memref<7xi64> to memref<7xi64>
      linalg.yield %out : i1
    } -> tensor<12x3x1xi1>
    bufferization.dealloc_tensor %13 : tensor<7xi16>
    %116 = vector.broadcast %c1642583252_i32 : i32 to vector<3x3xi32>
    %117 = vector.outerproduct %94, %94, %116 {kind = #vector.kind<minsi>} : vector<3xi32>, vector<3xi32>
    bufferization.dealloc_tensor %12 : tensor<3xi32>
    %118 = math.absi %11 : tensor<12x3xi32>
    %119 = bufferization.to_tensor %alloc_22 : memref<7xi64>
    %120 = arith.mulf %cst_5, %cst_1 : f16
    %121 = vector.insertelement %c1167065940_i32, %55[] : vector<i32>
    %122 = math.absf %cst_4 : f16
    %123 = vector.extract_strided_slice %94 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi32> to vector<1xi32>
    %124 = math.rsqrt %cst_2 : f32
    memref.copy %85, %alloc_11 : memref<3xi16> to memref<3xi16>
    %125 = vector.matrix_multiply %123, %123 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %126 = vector.broadcast %cst : f32 to vector<7xf32>
    %127 = index.casts %c7 : index to i32
    %128 = math.log %transposed : tensor<7xf16>
    %cast = tensor.cast %0 : tensor<7xf16> to tensor<?xf16>
    %129 = bufferization.clone %alloc_13 : memref<12x3xi1> to memref<12x3xi1>
    memref.copy %alloc_10, %90 : memref<7xi1> to memref<7xi1>
    %130 = arith.mulf %cst_6, %cst_2 : f32
    %131 = arith.shli %c14099_i16, %c14099_i16 : i16
    %132 = scf.while (%arg2 = %c-18568_i16) : (i16) -> i16 {
      %259 = math.fpowi %cst_7, %c1167065940_i32 : f32, i32
      %260 = math.round %15 : tensor<7xf16>
      %261 = math.log1p %cst_2 : f32
      vector.print %44 : vector<i32>
      %262 = memref.alloca_scope  -> (i16) {
        %266 = arith.minui %c1642583252_i32, %c631624334_i32 : i32
        %267 = math.expm1 %8 : tensor<3xf32>
        %268 = bufferization.to_memref %23 : memref<i32>
        %269 = bufferization.clone %60 : memref<7xf16> to memref<7xf16>
        %270 = bufferization.to_memref %12 : memref<3xi32>
        %271 = vector.matrix_multiply %41, %41 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %272 = bufferization.to_memref %23 : memref<i32>
        %273 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 2) ceildiv 32 + d0 ceildiv 2, (d0 ceildiv 2) ceildiv 32, d0, -(d0 ceildiv 2))>(%c7, %c0)
        %expanded_41 = tensor.expand_shape %22 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
        %cast_42 = tensor.cast %1 : tensor<12x3xi1> to tensor<?x?xi1>
        %274 = math.fma %cst, %cst_7, %cst : f32
        %275 = vector.insertelement %c1167065940_i32, %94[%72 : index] : vector<3xi32>
        %276 = math.tanh %cst_1 : f16
        %from_elements_43 = tensor.from_elements %arg2, %arg2, %c22501_i16, %c-18568_i16, %c22501_i16, %c14099_i16, %c14099_i16, %c14099_i16, %c22501_i16, %c14099_i16, %c14099_i16, %c-18568_i16, %c22501_i16, %c14099_i16, %arg2, %c-18568_i16, %c22501_i16, %c22501_i16, %c14099_i16, %c22501_i16, %arg2, %c22501_i16, %c-18568_i16, %arg2, %c-18568_i16, %c-18568_i16, %c-18568_i16, %c22501_i16, %c14099_i16, %c-18568_i16, %c22501_i16, %c-18568_i16, %c14099_i16, %c22501_i16, %c22501_i16, %arg2 : tensor<12x3xi16>
        %277 = vector.broadcast %c22501_i16 : i16 to vector<12x3xi16>
        %278 = arith.cmpi sle, %c-18568_i16, %arg2 : i16
        %279 = arith.muli %98, %98 : i64
        %280 = math.fma %cst_5, %cst_4, %cst_4 : f16
        %281 = arith.minf %cst_7, %cst_3 : f32
        %282 = vector.broadcast %true_23 : i1 to vector<12x3xi1>
        %283 = vector.broadcast %c1642583252_i32 : i32 to vector<12x3xi32>
        %284 = vector.gather %13[%c15] [%283], %282, %277 : tensor<7xi16>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xi16> into vector<12x3xi16>
        %expanded_44 = tensor.expand_shape %7 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
        %285 = arith.minf %cst_5, %cst_4 : f16
        %286 = bufferization.to_memref %11 : memref<12x3xi32>
        %287 = vector.broadcast %98 : i64 to vector<7xi64>
        %288 = vector.broadcast %true_23 : i1 to vector<7xi1>
        %289 = vector.gather %alloc_9[%c4, %c8] [%41], %288, %287 : memref<12x3xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %290 = vector.load %alloc_22[%c6] : memref<7xi64>, vector<12x3xi64>
        %291 = arith.remf %cst_4, %cst_0 : f16
        %292 = bufferization.to_memref %8 : memref<3xf32>
        %293 = math.absf %transposed : tensor<7xf16>
        %294 = index.maxu %112, %c10
        %295 = vector.broadcast %cst_4 : f16 to vector<7xf16>
        %296 = math.log2 %cst : f32
        %297 = math.log2 %cst_7 : f32
        memref.alloca_scope.return %c-18568_i16 : i16
      }
      %263 = math.log %0 : tensor<7xf16>
      %264 = arith.remsi %arg2, %arg2 : i16
      %265 = bufferization.clone %alloc_19 : memref<12x3xi64> to memref<12x3xi64>
      scf.condition(%true) %262 : i16
    } do {
    ^bb0(%arg2: i16):
      %259 = arith.maxsi %c1642583252_i32, %c1167065940_i32 : i32
      %260 = bufferization.to_tensor %38 : memref<12x3xi32>
      %261 = arith.floordivsi %c631624334_i32, %c1167065940_i32 : i32
      %262 = arith.subi %c1642583252_i32, %c631624334_i32 : i32
      %263 = affine.for %arg3 = 0 to 22 iter_args(%arg4 = %cst_6) -> (f32) {
        affine.yield %cst : f32
      }
      %264 = math.atan2 %cst_0, %cst_0 : f16
      %265 = math.fma %15, %transposed, %0 : tensor<7xf16>
      %from_elements_41 = tensor.from_elements %cst, %cst_3, %cst_3, %cst_6, %cst_3, %cst_6, %cst_6 : tensor<7xf32>
      %266 = arith.shrui %c631624334_i32, %c1167065940_i32 : i32
      %267 = tensor.empty() : tensor<3xi1>
      %alloc_42 = memref.alloc() : memref<3x12xi1>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %alloc_42, %expanded : tensor<3xi1>, memref<3x12xi1>, tensor<12x3x1xi1>) outs(%expanded : tensor<12x3x1xi1>) {
      ^bb0(%in: i1, %in_44: i1, %in_45: i1, %out: i1):
        %276 = arith.minui %true_23, %out : i1
        %277 = arith.subi %98, %98 : i64
        %278 = math.round %18 : tensor<7xf16>
        %279 = math.log10 %cst_4 : f16
        memref.tensor_store %63, %alloc_17 : memref<12x3xi1>
        %280 = vector.matrix_multiply %123, %125 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %281 = affine.max affine_map<(d0, d1) -> (((-(d0 floordiv 2 - 8)) ceildiv 128) ceildiv 8 + 64, d0 floordiv 2 - 8)>(%112, %c4)
        %282 = math.ceil %cst_1 : f16
        %c1861778172_i64 = arith.constant 1861778172 : i64
        %283 = vector.broadcast %cst_1 : f16 to vector<3xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %21, %40, %283 : vector<12xf16>, vector<12x3xf16> into vector<3xf16>
        %285 = bufferization.to_memref %8 : memref<3xf32>
        %286 = arith.maxui %c1642583252_i32, %c1167065940_i32 : i32
        %287 = vector.shuffle %126, %126 [0, 3, 4, 7, 11, 12] : vector<7xf32>, vector<7xf32>
        %288 = math.expm1 %15 : tensor<7xf16>
        %289 = arith.muli %c1167065940_i32, %c1642583252_i32 : i32
        %290 = math.ceil %0 : tensor<7xf16>
        %from_elements_46 = tensor.from_elements %true_23, %in_45, %true_23, %in_45, %true, %in, %out : tensor<7xi1>
        %expanded_47 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<12x3xi16> into tensor<12x3x1xi16>
        %291 = vector.insertelement %c1642583252_i32, %280[%c5 : index] : vector<1xi32>
        %292 = arith.shrsi %out, %out : i1
        %293 = math.log2 %0 : tensor<7xf16>
        %294 = arith.minf %cst_6, %cst_2 : f32
        %295 = arith.shli %in, %true_23 : i1
        %false_48 = index.bool.constant false
        %296 = vector.extract %94[1] : vector<3xi32>
        %297 = arith.shli %true_23, %in_45 : i1
        %298 = memref.load %alloc_22[%c6] : memref<7xi64>
        %alloca_49 = memref.alloca() : memref<12x3xf32>
        %299 = vector.flat_transpose %41 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %300 = arith.addf %cst_7, %cst_2 : f32
        %301 = vector.load %90[%c1] : memref<7xi1>, vector<3xi1>
        %302 = math.powf %cst_5, %cst_4 : f16
        linalg.yield %in_45 : i1
      } -> tensor<12x3x1xi1>
      %269 = math.log2 %cst_5 : f16
      %270 = vector.flat_transpose %126 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %271 = vector.broadcast %25 : index to vector<1xindex>
      %272 = vector.broadcast %true_23 : i1 to vector<1xi1>
      %273 = vector.broadcast %cst_0 : f16 to vector<1xf16>
      vector.scatter %50[%c2] [%271], %272, %273 : memref<7xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      %274 = vector.multi_reduction <mul>, %126, %270 [] : vector<7xf32> to vector<7xf32>
      %275 = vector.splat %cst : vector<7xf32>
      %from_elements_43 = tensor.from_elements %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98 : tensor<12x3xi64>
      scf.yield %c22501_i16 : i16
    }
    %133 = vector.broadcast %c1642583252_i32 : i32 to vector<i32>
    %134 = vector.transfer_write %133, %12[%c2] : vector<i32>, tensor<3xi32>
    %135 = arith.mulf %cst_5, %cst_1 : f16
    %136 = vector.extract %41[3] : vector<7xi32>
    %137 = arith.minf %cst_0, %cst_4 : f16
    %138 = vector.load %alloc_21[%c6, %c0] : memref<12x3xi16>, vector<7xi16>
    %139 = math.round %transposed : tensor<7xf16>
    %140 = vector.load %alloc_20[%c3] : memref<7xi16>, vector<7xi16>
    %141 = math.log2 %cst_0 : f16
    %142 = math.absi %c631624334_i32 : i32
    %143 = arith.maxsi %c1642583252_i32, %c631624334_i32 : i32
    %144 = arith.minf %cst_3, %cst_6 : f32
    %145 = index.divs %112, %c4
    %146 = math.roundeven %cst_7 : f32
    %147 = math.log2 %cst_7 : f32
    %false = index.bool.constant false
    %148 = math.tan %cst_4 : f16
    %alloca_29 = memref.alloca() : memref<12x3xi64>
    %149 = affine.for %arg2 = 0 to 20 iter_args(%arg3 = %3) -> (tensor<3xi32>) {
      affine.yield %22 : tensor<3xi32>
    }
    memref.copy %90, %alloc_10 : memref<7xi1> to memref<7xi1>
    %150 = arith.shrui %c1167065940_i32, %c1167065940_i32 : i32
    %151 = math.ctpop %63 : tensor<12x3xi1>
    %152 = math.log %18 : tensor<7xf16>
    %153 = math.exp %cst_7 : f32
    %154 = vector.shuffle %40, %40 [0, 1, 3, 6, 8, 9, 13, 14, 21, 23] : vector<12x3xf16>, vector<12x3xf16>
    %155 = math.log1p %8 : tensor<3xf32>
    %156 = memref.load %129[%c2, %c1] : memref<12x3xi1>
    %157 = math.copysign %cst_4, %cst_5 : f16
    %158 = math.fma %cst_7, %cst_2, %cst_6 : f32
    %expanded_30 = tensor.expand_shape %4 [[0, 1]] : tensor<7xi16> into tensor<7x1xi16>
    %159 = tensor.empty() : tensor<7xf32>
    %160 = vector.broadcast %true_23 : i1 to vector<7xi1>
    %161 = vector.gather %159[%59] [%41], %160, %126 : tensor<7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %162 = vector.broadcast %true_23 : i1 to vector<3xi1>
    %163 = vector.gather %7[%c0] [%94], %162, %94 : tensor<7xi32>, vector<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
    %164 = math.ctpop %9 : tensor<12x3xi16>
    %165 = vector.extract %140[2] : vector<7xi16>
    %166 = vector.shuffle %55, %55 [0, 1] : vector<i32>, vector<i32>
    memref.store %true, %alloc_10[%c0] : memref<7xi1>
    %c1172149123_i64 = arith.constant 1172149123 : i64
    %167 = arith.cmpi ult, %c-18568_i16, %c14099_i16 : i16
    %168 = math.log %8 : tensor<3xf32>
    affine.for %arg2 = 0 to 14 {
    }
    vector.print %126 : vector<7xf32>
    %169 = vector.transpose %161, [0] : vector<7xf32> to vector<7xf32>
    %170 = vector.insertelement %c1167065940_i32, %41[%c7 : index] : vector<7xi32>
    %171 = vector.broadcast %c14099_i16 : i16 to vector<12x3xi16>
    %172 = arith.divui %true_23, %true_23 : i1
    %173 = arith.minf %cst_3, %cst_6 : f32
    %174 = arith.remsi %98, %98 : i64
    %175 = affine.for %arg2 = 0 to 25 iter_args(%arg3 = %c8) -> (index) {
      affine.yield %c11 : index
    }
    %176 = arith.addi %c631624334_i32, %c631624334_i32 : i32
    %177 = arith.minui %true, %true_23 : i1
    memref.copy %60, %50 : memref<7xf16> to memref<7xf16>
    %alloc_31 = memref.alloc() : memref<3x7xi1>
    %178 = tensor.empty() : tensor<12x7xi1>
    %179 = linalg.matmul ins(%1, %alloc_31 : tensor<12x3xi1>, memref<3x7xi1>) outs(%178 : tensor<12x7xi1>) -> tensor<12x7xi1>
    %cst_32 = arith.constant 0x4CF4C844 : f32
    %180 = arith.remf %cst_5, %cst_1 : f16
    %181 = arith.subi %false, %true : i1
    %182 = index.ceildivs %112, %c8
    %183 = vector.broadcast %98 : i64 to vector<12x3xi64>
    %184 = vector.broadcast %true : i1 to vector<12x3xi1>
    %185 = vector.broadcast %c1642583252_i32 : i32 to vector<12x3xi32>
    %186 = vector.gather %119[%c15] [%185], %184, %183 : tensor<7xi64>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xi64> into vector<12x3xi64>
    %187 = vector.broadcast %c13 : index to vector<1xindex>
    %188 = vector.broadcast %false : i1 to vector<1xi1>
    %189 = vector.broadcast %c22501_i16 : i16 to vector<1xi16>
    vector.scatter %85[%c2] [%187], %188, %189 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    bufferization.dealloc_tensor %9 : tensor<12x3xi16>
    %190 = math.roundeven %cst_4 : f16
    %191 = arith.andi %true_23, %true : i1
    %192 = memref.load %alloc_8[%c5, %c2] : memref<12x3xf32>
    %193 = arith.mulf %cst, %cst_3 : f32
    %194 = arith.addi %c14099_i16, %c14099_i16 : i16
    %195 = scf.while (%arg2 = %60) : (memref<7xf16>) -> memref<7xf16> {
      %259 = math.roundeven %cst_5 : f16
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_41 = arith.constant 0 : i16
      %260 = vector.transfer_read %alloc_20[%25], %c0_i16_41 : memref<7xi16>, vector<i16>
      %261 = index.divs %c15, %c3
      %262 = memref.realloc %arg2 : memref<7xf16> to memref<3xf16>
      %263 = vector.create_mask %35 : vector<3xi1>
      %264 = arith.subi %true_23, %true_23 : i1
      %265 = arith.addf %cst_7, %cst_2 : f32
      %266 = vector.create_mask %c4, %c5 : vector<12x3xi1>
      scf.condition(%true) %arg2 : memref<7xf16>
    } do {
    ^bb0(%arg2: memref<7xf16>):
      %259 = arith.subi %c1167065940_i32, %c1642583252_i32 : i32
      %260 = arith.negf %cst_7 : f32
      %261 = scf.if %false -> (memref<7xi16>) {
        %272 = arith.divsi %98, %98 : i64
        %273 = math.expm1 %0 : tensor<7xf16>
        %274 = math.log1p %cst_4 : f16
        %275 = memref.load %alloc_19[%c9, %c0] : memref<12x3xi64>
        %276 = arith.maxui %c14099_i16, %c14099_i16 : i16
        %277 = index.divs %145, %c14
        %278 = math.ceil %cst_2 : f32
        %alloc_43 = memref.alloc() : memref<3xi32>
        memref.tensor_store %3, %alloc_43 : memref<3xi32>
        scf.yield %alloc_14 : memref<7xi16>
      } else {
        %272 = math.ctpop %98 : i64
        vector.print %21 : vector<12xf16>
        %alloc_43 = memref.alloc() : memref<3xi32>
        %273 = math.log2 %cst_0 : f16
        %274 = index.sub %c13, %c3
        bufferization.dealloc_tensor %16 : tensor<12x3xi32>
        %275 = arith.addf %cst_5, %cst_1 : f16
        %276 = math.fpowi %15, %7 : tensor<7xf16>, tensor<7xi32>
        scf.yield %alloc_14 : memref<7xi16>
      }
      %262 = vector.broadcast %cst_3 : f32 to vector<7xf32>
      %263 = arith.subi %c631624334_i32, %c631624334_i32 : i32
      %264 = arith.shli %c14099_i16, %c-18568_i16 : i16
      %265 = math.exp2 %cst : f32
      %266 = arith.minf %cst_7, %cst_7 : f32
      %from_elements_41 = tensor.from_elements %c1642583252_i32, %c1167065940_i32, %c1167065940_i32, %c1167065940_i32, %c631624334_i32, %c631624334_i32, %c1642583252_i32, %c1167065940_i32, %c1167065940_i32, %c1167065940_i32, %c1167065940_i32, %c631624334_i32, %c1642583252_i32, %c631624334_i32, %c1642583252_i32, %c1642583252_i32, %c1642583252_i32, %c631624334_i32, %c1642583252_i32, %c631624334_i32, %c631624334_i32, %c631624334_i32, %c1642583252_i32, %c631624334_i32, %c1167065940_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c1167065940_i32, %c1642583252_i32, %c631624334_i32, %c1642583252_i32, %c1642583252_i32, %c631624334_i32, %c631624334_i32, %c1642583252_i32 : tensor<12x3xi32>
      %267 = math.roundeven %0 : tensor<7xf16>
      %268 = bufferization.clone %alloc_14 : memref<7xi16> to memref<7xi16>
      %269 = math.atan %0 : tensor<7xf16>
      %270 = math.exp %0 : tensor<7xf16>
      %271 = math.atan2 %15, %18 : tensor<7xf16>
      %cst_42 = arith.constant 1.947200e+04 : f16
      memref.copy %50, %alloc_18 : memref<7xf16> to memref<7xf16>
      scf.yield %alloc : memref<7xf16>
    }
    %196 = math.ceil %cst_4 : f16
    %197 = math.atan2 %cst_1, %cst_4 : f16
    %198 = math.rsqrt %159 : tensor<7xf32>
    scf.execute_region {
      %259 = vector.broadcast %cst_7 : f32 to vector<7xf32>
      %260 = vector.fma %259, %161, %126 : vector<7xf32>
      %cst_41 = arith.constant 0x4E4EE0F1 : f32
      %261 = math.ctpop %from_elements : tensor<7xi16>
      %262 = vector.load %38[%c3, %c1] : memref<12x3xi32>, vector<7xi32>
      %263 = math.cos %cst_0 : f16
      %264 = memref.load %alloc_17[%c3, %c0] : memref<12x3xi1>
      memref.copy %alloc_18, %60 : memref<7xf16> to memref<7xf16>
      %265 = vector.insertelement %c631624334_i32, %125[%c6 : index] : vector<1xi32>
      %c21581_i16 = arith.constant 21581 : i16
      %false_42 = index.bool.constant false
      %266 = index.divs %112, %72
      %267 = math.round %8 : tensor<3xf32>
      %false_43 = arith.constant false
      %false_44 = arith.constant false
      %268 = vector.transfer_read %alloc_17[%c4, %110], %false_44 : memref<12x3xi1>, vector<i1>
      %269 = vector.load %alloc_17[%c9, %c2] : memref<12x3xi1>, vector<7xi1>
      %270 = arith.shli %c1167065940_i32, %c1642583252_i32 : i32
      %271 = vector.load %alloc_11[%c2] : memref<3xi16>, vector<7xi16>
      scf.yield
    }
    %199 = math.copysign %cst_6, %cst : f32
    %200 = index.maxu %36, %74
    %201 = arith.remui %false, %false : i1
    %202 = vector.shuffle %94, %94 [4, 5] : vector<3xi32>, vector<3xi32>
    %alloc_33 = memref.alloc() : memref<3x3xi32>
    %203 = tensor.empty() : tensor<12x3xi32>
    %204 = linalg.matmul ins(%17, %alloc_33 : tensor<12x3xi32>, memref<3x3xi32>) outs(%203 : tensor<12x3xi32>) -> tensor<12x3xi32>
    memref.copy %alloc_10, %90 : memref<7xi1> to memref<7xi1>
    scf.execute_region {
      %259 = math.atan2 %cst_2, %cst_6 : f32
      %true_41 = index.bool.constant true
      bufferization.dealloc_tensor %9 : tensor<12x3xi16>
      %260 = arith.minui %c22501_i16, %c22501_i16 : i16
      %261 = math.absi %119 : tensor<7xi64>
      %262 = arith.subi %true_41, %true_41 : i1
      %263 = vector.broadcast %cst_1 : f16 to vector<1xf16>
      %264 = vector.broadcast %false : i1 to vector<1xi1>
      %265 = vector.maskedload %alloc_18[%c6], %264, %263 : memref<7xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      memref.tensor_store %13, %47 : memref<7xi16>
      %266 = math.exp %8 : tensor<3xf32>
      %267 = math.cos %cst_4 : f16
      %268 = bufferization.to_memref %8 : memref<3xf32>
      %269 = arith.negf %cst : f32
      %270 = memref.alloca_scope  -> (memref<7xi16>) {
        %274 = vector.broadcast %72 : index to vector<12xindex>
        %275 = vector.broadcast %true_23 : i1 to vector<12xi1>
        %276 = vector.broadcast %c-18568_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_15[%c4] [%274], %275, %276 : memref<7xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %c-28794_i16 = arith.constant -28794 : i16
        %277 = affine.load %50[%c2] : memref<7xf16>
        %278 = math.fma %cst_7, %cst_7, %cst_6 : f32
        %279 = math.expm1 %0 : tensor<7xf16>
        %280 = vector.flat_transpose %265 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %281 = math.roundeven %277 : f16
        %282 = index.casts %c-18568_i16 : i16 to index
        %283 = vector.insertelement %cst_6, %161[%c9 : index] : vector<7xf32>
        %284 = arith.floordivsi %true_41, %true : i1
        %inserted_42 = tensor.insert %c631624334_i32 into %11[%c1, %c0] : tensor<12x3xi32>
        %285 = math.roundeven %15 : tensor<7xf16>
        %286 = vector.broadcast %cst_2 : f32 to vector<3xf32>
        %287 = vector.fma %286, %286, %286 : vector<3xf32>
        %288 = arith.mulf %cst_0, %cst_4 : f16
        %289 = math.ipowi %63, %1 : tensor<12x3xi1>
        bufferization.dealloc_tensor %15 : tensor<7xf16>
        %290 = vector.broadcast %98 : i64 to vector<7xi64>
        %291 = vector.maskedload %alloc_22[%c2], %160, %290 : memref<7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %292 = math.tanh %cst_6 : f32
        %293 = math.log2 %cst_0 : f16
        %294 = arith.minf %cst_0, %cst_0 : f16
        %295 = vector.broadcast %282 : index to vector<12xindex>
        %296 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %50[%c0] [%295], %296, %21 : memref<7xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %alloc_43 = memref.alloc() : memref<7xi1>
        %splat_44 = tensor.splat %277 : tensor<12x3xf16>
        %from_elements_45 = tensor.from_elements %c1642583252_i32, %c1167065940_i32, %c1642583252_i32, %c1167065940_i32, %c1167065940_i32, %c1642583252_i32, %c1642583252_i32, %c1642583252_i32, %c1642583252_i32, %c1642583252_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c1642583252_i32, %c631624334_i32, %c631624334_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c1167065940_i32, %c1642583252_i32, %c1167065940_i32, %c1642583252_i32, %c1167065940_i32, %c1167065940_i32, %c631624334_i32, %c631624334_i32, %c1167065940_i32, %c1642583252_i32, %c1642583252_i32 : tensor<12x3xi32>
        %297 = math.fpowi %cst_4, %c1642583252_i32 : f16, i32
        %true_46 = index.bool.constant true
        %298 = arith.cmpf ole, %cst_0, %cst_5 : f16
        %299 = vector.broadcast %c2 : index to vector<12xindex>
        %300 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %60[%c5] [%299], %300, %21 : memref<7xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %301 = vector.load %129[%c0, %c1] : memref<12x3xi1>, vector<7xi1>
        %302 = affine.max affine_map<(d0, d1) -> (d1 mod 32, d0 floordiv 2 - 128, -(d0 ceildiv 2), (((d0 floordiv 2) * 4 + d0 ceildiv 2) mod 32) * 4)>(%c1, %110)
        %303 = math.cttz %9 : tensor<12x3xi16>
        %304 = arith.remui %c22501_i16, %c-18568_i16 : i16
        memref.alloca_scope.return %47 : memref<7xi16>
      }
      %271 = math.cos %cst_3 : f32
      %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 120)>(%c0, %c2, %c12, %107)
      %273 = math.ipowi %14, %14 : tensor<7xi16>
      scf.yield
    }
    %205 = arith.mulf %cst_3, %cst_2 : f32
    memref.copy %47, %alloc_15 : memref<7xi16> to memref<7xi16>
    %206 = arith.addf %cst_2, %cst : f32
    %207 = arith.maxsi %c631624334_i32, %c1167065940_i32 : i32
    %208 = vector.load %alloc_17[%c9, %c2] : memref<12x3xi1>, vector<7xi1>
    %209 = vector.transpose %126, [0] : vector<7xf32> to vector<7xf32>
    %210 = arith.mulf %cst_1, %cst_5 : f16
    %false_34 = index.bool.constant false
    %211 = arith.floordivsi %c631624334_i32, %c1167065940_i32 : i32
    %212 = arith.muli %98, %98 : i64
    %alloca_35 = memref.alloca() : memref<12x3xi64>
    %213 = vector.broadcast %cst_2 : f32 to vector<7xf32>
    %214 = vector.fma %213, %126, %213 : vector<7xf32>
    %215 = math.log1p %cst_2 : f32
    %216 = math.ceil %cst_6 : f32
    vector.print %123 : vector<1xi32>
    %217 = vector.insert %c14099_i16, %140 [4] : i16 into vector<7xi16>
    %218 = bufferization.to_memref %1 : memref<12x3xi1>
    %219 = math.log %8 : tensor<3xf32>
    %220 = vector.gather %38[%c12, %36] [%41], %208, %41 : memref<12x3xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %c2113304223_i64 = arith.constant 2113304223 : i64
    %221 = math.ipowi %2, %1 : tensor<12x3xi1>
    %splat = tensor.splat %true : tensor<7xi1>
    %222 = index.mul %25, %145
    %true_36 = index.bool.constant true
    %223 = math.ipowi %true, %false : i1
    memref.tensor_store %5, %90 : memref<7xi1>
    bufferization.dealloc_tensor %9 : tensor<12x3xi16>
    %224 = affine.load %alloc_11[%c15] : memref<3xi16>
    %alloc_37 = memref.alloc() : memref<12x1xi1>
    %225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37 : memref<12x1xi1>) outs(%expanded : tensor<12x3x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %splat_41 = tensor.splat %cst_1 : tensor<12x3xf16>
      %259 = arith.ori %224, %c22501_i16 : i16
      vector.print %214 : vector<7xf32>
      %260 = math.log1p %transposed : tensor<7xf16>
      %261 = arith.addi %true_23, %true_23 : i1
      %262 = index.floordivs %222, %c8
      %263 = index.maxu %110, %c9
      %264 = math.rsqrt %15 : tensor<7xf16>
      %265 = math.powf %8, %8 : tensor<3xf32>
      %266 = index.sizeof
      affine.for %arg2 = 0 to 73 {
      }
      %267 = vector.broadcast %false : i1 to vector<i1>
      %268 = vector.transfer_write %267, %1[%107, %c11] : vector<i1>, tensor<12x3xi1>
      %269 = arith.minf %cst_1, %cst_5 : f16
      %270 = arith.minf %cst_4, %cst_1 : f16
      %271 = bufferization.to_tensor %60 : memref<7xf16>
      %272 = bufferization.to_tensor %50 : memref<7xf16>
      %273 = arith.addi %true_23, %out : i1
      affine.store %cst_2, %alloc_16[%c12, %c7] : memref<12x3xf32>
      %274 = arith.addi %true_36, %true_23 : i1
      %275 = scf.while (%arg2 = %alloc_10) : (memref<7xi1>) -> memref<7xi1> {
        %285 = arith.maxui %98, %98 : i64
        %286 = math.exp %transposed : tensor<7xf16>
        %rank = tensor.rank %15 : tensor<7xf16>
        %287 = affine.load %alloc_9[%c14, %c13] : memref<12x3xi64>
        %288 = arith.divui %c631624334_i32, %c1642583252_i32 : i32
        %289 = vector.insert %c1642583252_i32, %163 [0] : i32 into vector<3xi32>
        %290 = arith.muli %true_23, %false_34 : i1
        %291 = math.atan %8 : tensor<3xf32>
        scf.condition(%out) %arg2 : memref<7xi1>
      } do {
      ^bb0(%arg2: memref<7xi1>):
        %285 = vector.extract %126[1] : vector<7xf32>
        %286 = arith.maxui %c-18568_i16, %224 : i16
        %287 = math.log %cst_7 : f32
        %288 = arith.shrui %c1167065940_i32, %c631624334_i32 : i32
        %289 = math.round %272 : tensor<7xf16>
        %290 = bufferization.to_memref %1 : memref<12x3xi1>
        memref.tensor_store %271, %50 : memref<7xf16>
        %291 = arith.subi %224, %c-18568_i16 : i16
        %292 = vector.matrix_multiply %161, %214 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %from_elements_42 = tensor.from_elements %cst_1, %cst_5, %cst_4, %cst_4, %cst_0, %cst_1, %cst_0, %cst_4, %cst_0, %cst_5, %cst_4, %cst_1, %cst_5, %cst_0, %cst_0, %cst_4, %cst_1, %cst_1, %cst_5, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_5, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_4 : tensor<12x3xf16>
        %293 = memref.load %alloc_18[%c1] : memref<7xf16>
        %294 = index.divs %107, %c11
        %295 = arith.addf %cst_3, %cst_7 : f32
        %296 = vector.gather %13[%c1] [%220], %208, %138 : tensor<7xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %297 = arith.andi %c1167065940_i32, %c631624334_i32 : i32
        %alloc_43 = memref.alloc() : memref<12x3xi16>
        memref.copy %alloc_21, %alloc_43 : memref<12x3xi16> to memref<12x3xi16>
        scf.yield %arg2 : memref<7xi1>
      }
      %276 = bufferization.to_tensor %90 : memref<7xi1>
      %277 = index.casts %59 : index to i32
      %278 = math.log1p %cst_7 : f32
      %279 = arith.minf %cst_1, %cst_4 : f16
      %280 = arith.shli %c22501_i16, %c-18568_i16 : i16
      bufferization.dealloc_tensor %13 : tensor<7xi16>
      %281 = index.castu %266 : index to i32
      memref.alloca_scope  {
        %285 = vector.broadcast %145 : index to vector<7xindex>
        vector.scatter %alloc_21[%c3, %c2] [%285], %160, %138 : memref<12x3xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %286 = math.fpowi %15, %7 : tensor<7xf16>, tensor<7xi32>
        %287 = math.ctpop %276 : tensor<7xi1>
        %288 = index.ceildivu %107, %107
        %289 = vector.matrix_multiply %94, %125 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
        %290 = math.expm1 %cst_7 : f32
        memref.copy %alloc_16, %alloc_8 : memref<12x3xf32> to memref<12x3xf32>
        %291 = math.log10 %cst_0 : f16
        %292 = arith.minsi %c631624334_i32, %c631624334_i32 : i32
        %293 = arith.shrui %false, %false : i1
        memref.copy %alloc, %50 : memref<7xf16> to memref<7xf16>
        %from_elements_42 = tensor.from_elements %c14099_i16, %c22501_i16, %c-18568_i16, %c-18568_i16, %224, %c-18568_i16, %c22501_i16 : tensor<7xi16>
        %294 = arith.remsi %c14099_i16, %c-18568_i16 : i16
        %295 = math.tan %8 : tensor<3xf32>
        %expanded_43 = tensor.expand_shape %203 [[0], [1, 2]] : tensor<12x3xi32> into tensor<12x3x1xi32>
        %296 = arith.addf %cst_5, %cst_5 : f16
        %297 = tensor.empty() : tensor<7xi64>
        %298 = vector.insert %c1167065940_i32, %123 [0] : i32 into vector<1xi32>
        %299 = math.fma %cst_4, %cst_0, %cst_1 : f16
        %300 = affine.load %alloc_11[%c5] : memref<3xi16>
        %301 = vector.multi_reduction <xor>, %41, %c631624334_i32 [0] : vector<7xi32> to i32
        %302 = memref.atomic_rmw minu %98, %alloc_9[%c0, %c1] : (i64, memref<12x3xi64>) -> i64
        %303 = arith.shrui %out, %false_34 : i1
        %cst_44 = arith.constant 1.000000e+00 : f16
        %304 = vector.transfer_read %0[%72], %cst_44 : tensor<7xf16>, vector<f16>
        %305 = index.sizeof
        %306 = math.roundeven %cst_5 : f16
        %splat_45 = tensor.splat %cst_6 : tensor<7xf32>
        %307 = arith.floordivsi %98, %98 : i64
        %308 = math.absi %276 : tensor<7xi1>
        %309 = bufferization.clone %85 : memref<3xi16> to memref<3xi16>
        %310 = vector.matrix_multiply %126, %126 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %311 = arith.minf %cst, %cst_3 : f32
      }
      bufferization.dealloc_tensor %1 : tensor<12x3xi1>
      %282 = math.log10 %cst_2 : f32
      %283 = arith.cmpf uno, %cst_5, %cst_1 : f16
      %284 = arith.remsi %c14099_i16, %c14099_i16 : i16
      linalg.yield %false : i1
    } -> tensor<12x3x1xi1>
    %226 = vector.matrix_multiply %214, %161 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %227 = math.exp2 %0 : tensor<7xf16>
    %228 = math.ipowi %true_36, %false : i1
    %229 = arith.divsi %c22501_i16, %224 : i16
    bufferization.dealloc_tensor %11 : tensor<12x3xi32>
    %230 = memref.load %218[%c2, %c1] : memref<12x3xi1>
    %231 = math.log1p %15 : tensor<7xf16>
    %232 = arith.maxsi %false_34, %true : i1
    %233 = index.mul %c6, %25
    %234 = math.absi %12 : tensor<3xi32>
    %235 = math.absi %9 : tensor<12x3xi16>
    %236 = vector.broadcast %36 : index to vector<12xindex>
    %237 = vector.broadcast %false : i1 to vector<12xi1>
    vector.scatter %alloc_10[%c5] [%236], %237, %237 : memref<7xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
    %inserted = tensor.insert %c1167065940_i32 into %19[] : tensor<i32>
    %238 = scf.if %true_23 -> (i16) {
      vector.print %41 : vector<7xi32>
      %259 = math.atan %15 : tensor<7xf16>
      %260 = vector.create_mask %c9 : vector<7xi1>
      %261 = scf.while (%arg2 = %213) : (vector<7xf32>) -> vector<7xf32> {
        %from_elements_41 = tensor.from_elements %cst_2, %cst_3, %cst_7 : tensor<3xf32>
        %cast_42 = tensor.cast %7 : tensor<7xi32> to tensor<?xi32>
        %266 = vector.load %alloc_12[%c1] : memref<3xf16>, vector<12x3xf16>
        %267 = bufferization.clone %218 : memref<12x3xi1> to memref<12x3xi1>
        %268 = arith.maxui %224, %c-18568_i16 : i16
        %269 = math.cos %cst_4 : f16
        %270 = vector.broadcast %c-18568_i16 : i16 to vector<12xi16>
        %271 = vector.broadcast %false_34 : i1 to vector<12xi1>
        %272 = vector.maskedload %85[%c1], %271, %270 : memref<3xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %273 = math.exp %15 : tensor<7xf16>
        scf.condition(%false) %161 : vector<7xf32>
      } do {
      ^bb0(%arg2: vector<7xf32>):
        %266 = arith.remf %cst_0, %cst_0 : f16
        memref.store %true_23, %alloc_17[%c1, %c1] : memref<12x3xi1>
        %267 = math.fpowi %8, %12 : tensor<3xf32>, tensor<3xi32>
        %268 = math.cos %0 : tensor<7xf16>
        %269 = math.sqrt %transposed : tensor<7xf16>
        %270 = vector.gather %16[%c4, %222] [%220], %160, %220 : tensor<12x3xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %271 = math.absf %8 : tensor<3xf32>
        %272 = arith.shrui %c1642583252_i32, %c631624334_i32 : i32
        %273 = math.atan %cst : f32
        %274 = math.ctpop %12 : tensor<3xi32>
        %275 = memref.realloc %alloc_10 : memref<7xi1> to memref<3xi1>
        %true_41 = index.bool.constant true
        %splat_42 = tensor.splat %cst_2 : tensor<12x3xf32>
        %collapsed = tensor.collapse_shape %expanded_30 [[0, 1]] : tensor<7x1xi16> into tensor<7xi16>
        %from_elements_43 = tensor.from_elements %false_34, %true_36, %true, %true_41, %false, %true, %false_34 : tensor<7xi1>
        bufferization.dealloc_tensor %9 : tensor<12x3xi16>
        scf.yield %126 : vector<7xf32>
      }
      %262 = math.atan2 %cst_7, %cst_7 : f32
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %226, %226, %cst_3 : vector<1xf32>, vector<1xf32> into f32
      %264 = vector.broadcast %cst_3 : f32 to vector<12x3xf32>
      %265 = math.log2 %15 : tensor<7xf16>
      scf.yield %c-18568_i16 : i16
    } else {
      %259 = arith.maxsi %98, %98 : i64
      %260 = index.casts %c7 : index to i32
      %261 = math.ctpop %14 : tensor<7xi16>
      %262 = bufferization.to_memref %2 : memref<12x3xi1>
      %cst_41 = arith.constant 1.000000e+00 : f16
      %263 = vector.transfer_read %0[%112], %cst_41 : tensor<7xf16>, vector<f16>
      %264 = arith.shrui %true, %true_36 : i1
      %265 = math.cos %cst_7 : f32
      %266 = vector.broadcast %cst_7 : f32 to vector<12x3xf32>
      %267 = vector.gather %8[%c13] [%185], %184, %266 : tensor<3xf32>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xf32> into vector<12x3xf32>
      scf.yield %c22501_i16 : i16
    }
    %239 = vector.broadcast %c12 : index to vector<12xindex>
    %240 = vector.broadcast %true_23 : i1 to vector<12xi1>
    vector.scatter %alloc_12[%c0] [%239], %240, %21 : memref<3xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    %241 = arith.mulf %cst, %cst_6 : f32
    %242 = math.atan %18 : tensor<7xf16>
    affine.for %arg2 = 0 to 48 {
    }
    affine.store %98, %alloc_19[%c6, %c15] : memref<12x3xi64>
    %false_38 = index.bool.constant false
    %243 = math.round %cst_1 : f16
    memref.copy %alloc_15, %alloc_20 : memref<7xi16> to memref<7xi16>
    %244 = vector.broadcast %cst_4 : f16 to vector<1xf16>
    %245 = vector.broadcast %true_36 : i1 to vector<1xi1>
    %246 = vector.maskedload %50[%c1], %245, %244 : memref<7xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %247 = math.log2 %cst_6 : f32
    %248 = math.ceil %cst_6 : f32
    memref.assume_alignment %alloc_20, 1 : memref<7xi16>
    %249 = arith.muli %true, %true : i1
    %250 = arith.remsi %224, %c-18568_i16 : i16
    %251 = math.log2 %cst_4 : f16
    %252 = vector.load %alloc[%c2] : memref<7xf16>, vector<7xf16>
    %253 = tensor.empty() : tensor<7xi1>
    %254 = linalg.copy ins(%splat : tensor<7xi1>) outs(%253 : tensor<7xi1>) -> tensor<7xi1>
    %255 = tensor.empty() : tensor<3x12xi16>
    %transposed_39 = linalg.transpose ins(%9 : tensor<12x3xi16>) outs(%255 : tensor<3x12xi16>) permutation = [1, 0] 
    %256 = tensor.empty() : tensor<i16>
    %reduced_40 = linalg.reduce ins(%4 : tensor<7xi16>) outs(%256 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        scf.if %false {
          %266 = index.floordivs %c9, %145
          %267 = vector.broadcast %98 : i64 to vector<3xi64>
          %dest, %accumulated_value = vector.scan <add>, %186, %267 {inclusive = true, reduction_dim = 0 : i64} : vector<12x3xi64>, vector<3xi64>
          %268 = arith.minui %true_36, %false_38 : i1
          %269 = arith.xori %true_23, %false_38 : i1
          %270 = math.tan %15 : tensor<7xf16>
          %271 = vector.broadcast %cst_5 : f16 to vector<f16>
          %272 = vector.transfer_write %271, %transposed[%200] : vector<f16>, tensor<7xf16>
          %273 = vector.broadcast %cst : f32 to vector<12x3xf32>
          %274 = vector.fma %273, %273, %273 : vector<12x3xf32>
          %275 = tensor.empty() : tensor<12x3xi1>
        } else {
          %266 = math.log2 %15 : tensor<7xf16>
          %267 = vector.broadcast %cst_0 : f16 to vector<3xf16>
          %268 = math.log %cst : f32
          %269 = index.maxu %c3, %c3
          %270 = math.expm1 %cst_5 : f16
          %271 = vector.broadcast %98 : i64 to vector<3x3xi64>
          %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %183, %183, %271 : vector<12x3xi64>, vector<12x3xi64> into vector<3x3xi64>
          %splat_41 = tensor.splat %c631624334_i32 : tensor<12x3xi32>
          %273 = index.casts %222 : index to i32
        }
        %259 = arith.floordivsi %in, %init : i16
        %260 = affine.max affine_map<(d0) -> (-(d0 + 1) + (-(d0 + d0 mod 4)) floordiv 8, (d0 + 1) * -16)>(%c14)
        %261 = arith.shrui %98, %98 : i64
        %262 = math.ipowi %5, %5 : tensor<7xi1>
        %263 = vector.broadcast %c631624334_i32 : i32 to vector<i32>
        %264 = vector.transfer_write %263, %16[%25, %182] : vector<i32>, tensor<12x3xi32>
        %265 = arith.shrui %true_36, %true_36 : i1
        memref.copy %60, %alloc : memref<7xf16> to memref<7xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %257 = scf.parallel (%arg2) = (%c10) to (%c11) step (%c6) init (%alloc_18) -> memref<7xf16> {
      %alloc_41 = memref.alloc() : memref<3xf32>
      %259 = vector.gather %alloc_41[%arg2] [%41], %160, %126 : memref<3xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %from_elements_42 = tensor.from_elements %cst_5, %cst_1, %cst_0, %cst_5, %cst_4, %cst_1, %cst_5, %cst_1, %cst_1, %cst_4, %cst_1, %cst_5, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_5, %cst_0, %cst_5, %cst_1, %cst_0, %cst_0, %cst_4, %cst_5, %cst_4, %cst_1, %cst_5, %cst_4, %cst_5, %cst_4, %cst_1, %cst_0, %cst_4, %cst_4 : tensor<12x3xf16>
      %260 = vector.broadcast %cst : f32 to vector<12x3xf32>
      %261 = vector.gather %159[%c13] [%185], %184, %260 : tensor<7xf32>, vector<12x3xi32>, vector<12x3xi1>, vector<12x3xf32> into vector<12x3xf32>
      %262 = vector.flat_transpose %246 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %263 = arith.remf %cst_4, %cst_0 : f16
      %264 = arith.addf %cst_6, %cst : f32
      %265 = math.expm1 %cst_3 : f32
      %inserted_43 = tensor.insert %c14099_i16 into %from_elements[%c5] : tensor<7xi16>
      %266 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 64, (d1 ceildiv 64) floordiv 8, (d1 ceildiv 64) floordiv 8, d1 ceildiv 8)>(%35, %c14)
      memref.alloca_scope  {
        %273 = math.sqrt %0 : tensor<7xf16>
        %274 = arith.andi %c631624334_i32, %c1167065940_i32 : i32
        %275 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %276 = vector.fma %275, %161, %161 : vector<7xf32>
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d3 floordiv 32 - (d2 + 1), d1 + d3 floordiv 32 - (d2 + 1), (d1 ceildiv 64 + 3) mod 8, d1 ceildiv 64 + 3)>(%110, %110, %c15, %c7)
        %278 = arith.mulf %cst_7, %cst_3 : f32
        %279 = math.tan %cst_0 : f16
        %280 = vector.multi_reduction <add>, %252, %252 [] : vector<7xf16> to vector<7xf16>
        %281 = tensor.empty() : tensor<3xf16>
        %282 = vector.gather %281[%c4] [%41], %160, %252 : tensor<3xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %283 = vector.broadcast %238 : i16 to vector<i16>
        %284 = vector.transfer_write %283, %from_elements[%266] : vector<i16>, tensor<7xi16>
        %285 = math.rsqrt %281 : tensor<3xf16>
        %286 = memref.load %85[%c1] : memref<3xi16>
        %287 = math.absi %256 : tensor<i16>
        %dest, %accumulated_value = vector.scan <xor>, %185, %94 {inclusive = false, reduction_dim = 0 : i64} : vector<12x3xi32>, vector<3xi32>
        %288 = math.exp %cst_5 : f16
        %289 = arith.shrui %c22501_i16, %238 : i16
        %290 = vector.multi_reduction <add>, %244, %cst_5 [0] : vector<1xf16> to f16
        %291 = arith.remsi %false_34, %true : i1
        %292 = math.cos %cst_0 : f16
        %293 = index.maxu %59, %c14
        %294 = arith.minui %98, %98 : i64
        %295 = arith.remsi %224, %c22501_i16 : i16
        %296 = math.copysign %transposed, %15 : tensor<7xf16>
        %expanded_45 = tensor.expand_shape %8 [[0, 1]] : tensor<3xf32> into tensor<3x1xf32>
        %297 = vector.load %alloc_17[%c4, %c1] : memref<12x3xi1>, vector<7xi1>
        %298 = arith.subi %false_34, %false_34 : i1
        vector.print %208 : vector<7xi1>
        %299 = index.mul %110, %145
        %300 = index.casts %c5 : index to i32
        %301 = vector.create_mask %200 : vector<3xi1>
        %alloc_46 = memref.alloc() : memref<i32>
        memref.tensor_store %23, %alloc_46 : memref<i32>
        %302 = math.ctpop %238 : i16
        %true_47 = index.bool.constant true
      }
      %267 = index.divs %74, %c5
      %268 = vector.gather %alloc_21[%c12, %59] [%41], %208, %138 : memref<12x3xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %269 = arith.minsi %false, %false_38 : i1
      %270 = math.log10 %cst_4 : f16
      %271 = math.powf %cst_7, %cst_3 : f32
      %272 = arith.shli %true, %false_34 : i1
      %alloc_44 = memref.alloc() : memref<7xf16>
      scf.reduce(%alloc_44)  : memref<7xf16> {
      ^bb0(%arg3: memref<7xf16>, %arg4: memref<7xf16>):
        %273 = arith.cmpf true, %cst_7, %cst_6 : f32
        %274 = vector.insertelement %c1167065940_i32, %123[%c15 : index] : vector<1xi32>
        %275 = arith.cmpf true, %cst_7, %cst_6 : f32
        %276 = arith.mulf %cst_2, %cst : f32
        %277 = math.log %cst_7 : f32
        %278 = math.copysign %8, %8 : tensor<3xf32>
        %279 = math.log10 %cst_2 : f32
        %280 = arith.addi %true_36, %true_23 : i1
        %alloc_45 = memref.alloc() : memref<7xf16>
        scf.reduce.return %alloc_45 : memref<7xf16>
      }
      scf.yield
    }
    %258 = affine.vector_load %90[%35] : memref<7xi1>, vector<3xi1>
    affine.vector_store %220, %38[%c5, %107] : memref<12x3xi32>, vector<7xi32>
    vector.print %21 : vector<12xf16>
    vector.print %40 : vector<12x3xf16>
    vector.print %41 : vector<7xi32>
    vector.print %44 : vector<i32>
    vector.print %55 : vector<i32>
    vector.print %94 : vector<3xi32>
    vector.print %123 : vector<1xi32>
    vector.print %125 : vector<1xi32>
    vector.print %126 : vector<7xf32>
    vector.print %133 : vector<i32>
    vector.print %138 : vector<7xi16>
    vector.print %140 : vector<7xi16>
    vector.print %160 : vector<7xi1>
    vector.print %161 : vector<7xf32>
    vector.print %162 : vector<3xi1>
    vector.print %163 : vector<3xi32>
    vector.print %171 : vector<12x3xi16>
    vector.print %183 : vector<12x3xi64>
    vector.print %184 : vector<12x3xi1>
    vector.print %185 : vector<12x3xi32>
    vector.print %186 : vector<12x3xi64>
    vector.print %208 : vector<7xi1>
    vector.print %213 : vector<7xf32>
    vector.print %214 : vector<7xf32>
    vector.print %220 : vector<7xi32>
    vector.print %226 : vector<1xf32>
    vector.print %244 : vector<1xf16>
    vector.print %245 : vector<1xi1>
    vector.print %246 : vector<1xf16>
    vector.print %252 : vector<7xf16>
    vector.print %258 : vector<3xi1>
    vector.print %cst : f32
    vector.print %c22501_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c1642583252_i32 : i32
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %true : i1
    vector.print %c14099_i16 : i16
    vector.print %c1167065940_i32 : i32
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %c631624334_i32 : i32
    vector.print %c-18568_i16 : i16
    vector.print %cst_7 : f32
    vector.print %true_23 : i1
    vector.print %98 : i64
    vector.print %false : i1
    vector.print %false_34 : i1
    vector.print %true_36 : i1
    vector.print %224 : i16
    vector.print %238 : i16
    vector.print %false_38 : i1
    return
  }
}
