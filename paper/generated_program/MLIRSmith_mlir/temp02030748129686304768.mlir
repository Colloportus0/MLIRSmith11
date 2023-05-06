module {
  func.func @func1(%arg0: i32) {
    %cst = arith.constant 1.84450496E+9 : f32
    %c120597359_i64 = arith.constant 120597359 : i64
    %c1192064704_i64 = arith.constant 1192064704 : i64
    %c89198615_i64 = arith.constant 89198615 : i64
    %c382863489_i64 = arith.constant 382863489 : i64
    %false = arith.constant false
    %true = arith.constant true
    %cst_0 = arith.constant 1.47544678E+9 : f32
    %true_1 = arith.constant true
    %c1401205587_i64 = arith.constant 1401205587 : i64
    %c324838011_i64 = arith.constant 324838011 : i64
    %cst_2 = arith.constant 6.156800e+04 : f16
    %cst_3 = arith.constant 3.862400e+04 : f16
    %cst_4 = arith.constant 1.41552538E+9 : f32
    %c22599_i16 = arith.constant 22599 : i16
    %cst_5 = arith.constant 1.85037466E+9 : f32
    %0 = tensor.empty() : tensor<10xf32>
    %1 = tensor.empty() : tensor<6x3x6xi32>
    %2 = tensor.empty() : tensor<10x6xf16>
    %3 = tensor.empty() : tensor<10xf16>
    %4 = tensor.empty() : tensor<3x10xf16>
    %5 = tensor.empty() : tensor<3x10xi64>
    %6 = tensor.empty() : tensor<10xi64>
    %7 = tensor.empty() : tensor<3x10xi1>
    %8 = tensor.empty() : tensor<3x10xi32>
    %9 = tensor.empty() : tensor<3x10xf32>
    %10 = tensor.empty() : tensor<10xi64>
    %11 = tensor.empty() : tensor<6x3x6xf16>
    %12 = tensor.empty() : tensor<10xi1>
    %13 = tensor.empty() : tensor<10x6xf16>
    %14 = tensor.empty() : tensor<3x10xi32>
    %15 = tensor.empty() : tensor<3x10xi64>
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
    %alloc = memref.alloc() : memref<3x10xf32>
    %alloc_6 = memref.alloc() : memref<3x10xf32>
    %alloc_7 = memref.alloc() : memref<6x3x6xi64>
    %alloc_8 = memref.alloc() : memref<10x6xi1>
    %alloc_9 = memref.alloc() : memref<3x10xi64>
    %alloc_10 = memref.alloc() : memref<10xi1>
    %alloc_11 = memref.alloc() : memref<10x6xi1>
    %alloc_12 = memref.alloc() : memref<6x3x6xf32>
    %alloc_13 = memref.alloc() : memref<10xi32>
    %alloc_14 = memref.alloc() : memref<6x3x6xf16>
    %alloc_15 = memref.alloc() : memref<10xi32>
    %alloc_16 = memref.alloc() : memref<10xi1>
    %alloc_17 = memref.alloc() : memref<3x10xi1>
    %alloc_18 = memref.alloc() : memref<3x10xi32>
    %alloc_19 = memref.alloc() : memref<10xi16>
    %alloc_20 = memref.alloc() : memref<10xf32>
    %16 = tensor.empty() : tensor<10xi1>
    %17 = linalg.copy ins(%12 : tensor<10xi1>) outs(%16 : tensor<10xi1>) -> tensor<10xi1>
    %18 = tensor.empty() : tensor<10x3xi32>
    %transposed = linalg.transpose ins(%14 : tensor<3x10xi32>) outs(%18 : tensor<10x3xi32>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<10xi1>
    linalg.reduce ins(%alloc_8 : memref<10x6xi1>) outs(%alloc_21 : memref<10xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %260 = index.maxs %c7, %c11
        %261 = math.expm1 %4 : tensor<3x10xf16>
        %262 = arith.shrui %c89198615_i64, %c1192064704_i64 : i64
        %alloc_48 = memref.alloc() : memref<10x6xi1>
        %true_49 = arith.constant true
        %263 = memref.atomic_rmw andi %c22599_i16, %alloc_19[%c8] : (i16, memref<10xi16>) -> i16
        %264 = math.round %cst_2 : f16
        %alloc_50 = memref.alloc() : memref<6x3x6xi1>
        %true_51 = arith.constant true
        linalg.yield %true_51 : i1
      }
    scf.parallel (%arg1, %arg2) = (%c4, %c14) to (%c1, %c9) step (%c3, %c14) {
      %260 = math.log1p %13 : tensor<10x6xf16>
      %261 = vector.broadcast %c324838011_i64 : i64 to vector<1xi64>
      %262 = vector.broadcast %c120597359_i64 : i64 to vector<1xi64>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %261, %262, %c1401205587_i64 : vector<1xi64>, vector<1xi64> into i64
      %264 = tensor.empty() : tensor<10xf16>
      %265 = vector.bitcast %261 : vector<1xi64> to vector<1xi64>
      %266 = math.exp2 %0 : tensor<10xf32>
      %267 = math.ctpop %8 : tensor<3x10xi32>
      %268 = arith.minf %cst_0, %cst_5 : f32
      %269 = index.floordivs %c15, %c0
      %270 = math.expm1 %cst_2 : f16
      %271 = vector.insert %c89198615_i64, %265 [0] : i64 into vector<1xi64>
      %272 = affine.max affine_map<(d0, d1, d2) -> (d1 + d0 mod 16, d0 ceildiv 4)>(%c13, %269, %c5)
      %273 = vector.multi_reduction <mul>, %261, %265 [] : vector<1xi64> to vector<1xi64>
      %274 = arith.xori %false, %true_1 : i1
      %275 = index.add %c2, %c0
      %276 = bufferization.clone %alloc_11 : memref<10x6xi1> to memref<10x6xi1>
      %rank_48 = tensor.rank %0 : tensor<10xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c11] : memref<10xi32>, vector<10xi32>
    affine.vector_store %19, %alloc_13[%c8] : memref<10xi32>, vector<10xi32>
    %20 = tensor.empty() : tensor<10xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc_15, %20 : memref<10xi32>, tensor<10xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    scf.index_switch %c7 
    case 1 {
      %260 = math.expm1 %0 : tensor<10xf32>
      %261 = vector.shuffle %19, %19 [0, 1, 2, 3, 9, 11, 12, 13, 17, 18, 19] : vector<10xi32>, vector<10xi32>
      %262 = arith.minf %cst_3, %cst_2 : f16
      %263 = arith.minui %c324838011_i64, %c89198615_i64 : i64
      %264 = vector.broadcast %c120597359_i64 : i64 to vector<10xi64>
      %265 = vector.broadcast %false : i1 to vector<10xi1>
      %266 = vector.maskedload %alloc_9[%c0, %c8], %265, %264 : memref<3x10xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      %splat_48 = tensor.splat %cst : tensor<6x3x6xf32>
      %267 = index.casts %true_1 : i1 to index
      %268 = vector.load %alloc_17[%c0, %c0] : memref<3x10xi1>, vector<3x10xi1>
      %269 = tensor.empty() : tensor<10xf32>
      %mapped_49 = linalg.map ins(%0 : tensor<10xf32>) outs(%269 : tensor<10xf32>)
        (%in: f32) {
          %275 = arith.floordivsi %c382863489_i64, %c324838011_i64 : i64
          %276 = arith.xori %c22599_i16, %c22599_i16 : i16
          %277 = vector.broadcast %c1192064704_i64 : i64 to vector<10x10xi64>
          %278 = vector.outerproduct %264, %264, %277 {kind = #vector.kind<maxui>} : vector<10xi64>, vector<10xi64>
          %279 = memref.realloc %alloc_13 : memref<10xi32> to memref<10xi32>
          %c1_i32_51 = arith.constant 1 : i32
          %280 = math.fpowi %cst_0, %c1_i32_51 : f32, i32
          %281 = vector.broadcast %c1 : index to vector<10xindex>
          vector.scatter %alloc_16[%c8] [%281], %265, %265 : memref<10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %282 = index.add %c3, %c7
          %283 = arith.andi %c1192064704_i64, %c120597359_i64 : i64
          %284 = math.exp2 %cst_5 : f32
          %alloc_52 = memref.alloc() : memref<6x3x6xi64>
          %285 = bufferization.to_tensor %alloc_15 : memref<10xi32>
          %286 = vector.create_mask %c14, %c11 : vector<3x10xi1>
          %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<3x10xi1> into tensor<3x10x1xi1>
          %287 = math.exp %13 : tensor<10x6xf16>
          %false_53 = index.bool.constant false
          %collapsed_54 = tensor.collapse_shape %splat_48 [[0, 1], [2]] : tensor<6x3x6xf32> into tensor<18x6xf32>
          %288 = math.log %13 : tensor<10x6xf16>
          %289 = math.ctpop %8 : tensor<3x10xi32>
          %290 = vector.load %alloc_6[%c1, %c2] : memref<3x10xf32>, vector<3x10xf32>
          %291 = math.expm1 %2 : tensor<10x6xf16>
          %292 = index.casts %false : i1 to index
          %293 = math.expm1 %2 : tensor<10x6xf16>
          %294 = index.sizeof
          %295 = index.add %c6, %c5
          %296 = math.exp2 %13 : tensor<10x6xf16>
          %297 = math.log1p %cst_4 : f32
          %298 = vector.insert %265, %286 [1] : vector<10xi1> into vector<3x10xi1>
          %299 = vector.extract %264[5] : vector<10xi64>
          %300 = math.ceil %cst_4 : f32
          %301 = math.ceil %cst_2 : f16
          %302 = math.log1p %13 : tensor<10x6xf16>
          %303 = math.roundeven %3 : tensor<10xf16>
          %cst_55 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_55 : f32
        }
      memref.assume_alignment %alloc_10, 4 : memref<10xi1>
      %270 = vector.load %alloc[%c1, %c6] : memref<3x10xf32>, vector<10x6xf32>
      %271 = scf.while (%arg1 = %alloc_11) : (memref<10x6xi1>) -> memref<10x6xi1> {
        %275 = vector.bitcast %266 : vector<10xi64> to vector<10xi64>
        %276 = arith.muli %c1401205587_i64, %c1401205587_i64 : i64
        %277 = arith.cmpi sgt, %c1192064704_i64, %c382863489_i64 : i64
        %278 = math.expm1 %cst_4 : f32
        %279 = math.log10 %2 : tensor<10x6xf16>
        %280 = affine.load %alloc_18[%c11, %c12] : memref<3x10xi32>
        %281 = vector.matrix_multiply %265, %265 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %282 = math.round %4 : tensor<3x10xf16>
        scf.condition(%true_1) %alloc_8 : memref<10x6xi1>
      } do {
      ^bb0(%arg1: memref<10x6xi1>):
        %275 = memref.realloc %alloc_10 : memref<10xi1> to memref<10xi1>
        %276 = vector.load %alloc_20[%c6] : memref<10xf32>, vector<3x10xf32>
        affine.store %true, %arg1[%c0, %c11] : memref<10x6xi1>
        %277 = arith.minui %c89198615_i64, %c382863489_i64 : i64
        %278 = math.fma %cst_0, %cst, %cst_4 : f32
        %279 = index.castu %true_1 : i1 to index
        %280 = arith.divui %c89198615_i64, %c1192064704_i64 : i64
        %281 = tensor.empty() : tensor<3x3xi32>
        %282 = linalg.matmul ins(%14, %18 : tensor<3x10xi32>, tensor<10x3xi32>) outs(%281 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %283 = math.ceil %9 : tensor<3x10xf32>
        %284 = math.fpowi %splat_48, %1 : tensor<6x3x6xf32>, tensor<6x3x6xi32>
        %285 = math.sqrt %11 : tensor<6x3x6xf16>
        %286 = math.rsqrt %cst_2 : f16
        %287 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %288 = arith.cmpi sge, %c120597359_i64, %c120597359_i64 : i64
        %splat_51 = tensor.splat %cst_2 : tensor<6x3x6xf16>
        %289 = vector.flat_transpose %265 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        scf.yield %arg1 : memref<10x6xi1>
      }
      %272 = arith.addi %c324838011_i64, %c89198615_i64 : i64
      %collapsed_50 = tensor.collapse_shape %7 [[0, 1]] : tensor<3x10xi1> into tensor<30xi1>
      %273 = memref.realloc %alloc_20 : memref<10xf32> to memref<10xf32>
      %274 = math.log10 %2 : tensor<10x6xf16>
      scf.yield
    }
    case 2 {
      %260 = math.tanh %0 : tensor<10xf32>
      %261 = math.fma %2, %2, %13 : tensor<10x6xf16>
      %262 = scf.while (%arg1 = %alloc_14) : (memref<6x3x6xf16>) -> memref<6x3x6xf16> {
        %c0_i32_48 = arith.constant 0 : i32
        %277 = vector.insertelement %c0_i32_48, %19[%c0 : index] : vector<10xi32>
        %278 = arith.minf %cst_4, %cst_4 : f32
        %279 = vector.matrix_multiply %19, %19 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %280 = math.copysign %cst_4, %cst_5 : f32
        %281 = index.mul %c9, %c15
        %282 = vector.bitcast %279 : vector<1xi32> to vector<1xi32>
        %283 = math.sqrt %9 : tensor<3x10xf32>
        %284 = math.exp %4 : tensor<3x10xf16>
        scf.condition(%false) %alloc_14 : memref<6x3x6xf16>
      } do {
      ^bb0(%arg1: memref<6x3x6xf16>):
        %277 = arith.xori %c120597359_i64, %c382863489_i64 : i64
        %278 = bufferization.clone %arg1 : memref<6x3x6xf16> to memref<6x3x6xf16>
        %279 = math.ctlz %14 : tensor<3x10xi32>
        %280 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %c0_i32_48 = arith.constant 0 : i32
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %280, %c0_i32_48 : vector<10xi32>, vector<10xi32> into i32
        %282 = math.roundeven %11 : tensor<6x3x6xf16>
        %collapsed_49 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x3x6xi32> into tensor<18x6xi32>
        %c0_i32_50 = arith.constant 0 : i32
        %283 = vector.broadcast %c0_i32_50 : i32 to vector<10xi32>
        %284 = vector.transfer_write %283, %1[%c15, %c5, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi32>, tensor<6x3x6xi32>
        %285 = vector.multi_reduction <or>, %19, %19 [] : vector<10xi32> to vector<10xi32>
        %c799637151_i64 = arith.constant 799637151 : i64
        %false_51 = arith.constant false
        %286 = vector.transfer_read %16[%c10], %false_51 : tensor<10xi1>, vector<i1>
        %extracted_52 = tensor.extract %transposed[%c6, %c0] : tensor<10x3xi32>
        %alloc_53 = memref.alloc() : memref<6x3x6xi32>
        %287 = vector.broadcast %extracted_52 : i32 to vector<3x10xi32>
        %288 = vector.broadcast %true_1 : i1 to vector<3x10xi1>
        %289 = vector.gather %alloc_53[%c12, %c8, %c15] [%287], %288, %287 : memref<6x3x6xi32>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi32> into vector<3x10xi32>
        %290 = math.log2 %11 : tensor<6x3x6xf16>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %280, %19, %extracted_52 : vector<10xi32>, vector<10xi32> into i32
        %292 = memref.load %alloc_11[%c8, %c3] : memref<10x6xi1>
        scf.yield %arg1 : memref<6x3x6xf16>
      }
      %263 = math.log2 %13 : tensor<10x6xf16>
      %264 = scf.execute_region -> memref<3x10xi1> {
        %c1_i32_48 = arith.constant 1 : i32
        %277 = vector.insert %c1_i32_48, %19 [7] : i32 into vector<10xi32>
        %278 = vector.broadcast %c1192064704_i64 : i64 to vector<3x10xi64>
        %splat_49 = tensor.splat %false : tensor<3x10xi1>
        %279 = vector.broadcast %c1401205587_i64 : i64 to vector<10xi64>
        %280 = vector.insert %279, %278 [2] : vector<10xi64> into vector<3x10xi64>
        %281 = math.cttz %12 : tensor<10xi1>
        %extracted_50 = tensor.extract %12[%c6] : tensor<10xi1>
        %282 = arith.minf %cst_3, %cst_2 : f16
        %extracted_51 = tensor.extract %11[%c2, %c2, %c4] : tensor<6x3x6xf16>
        %283 = vector.insert %c324838011_i64, %279 [4] : i64 into vector<10xi64>
        %collapsed_52 = tensor.collapse_shape %18 [[0, 1]] : tensor<10x3xi32> into tensor<30xi32>
        %284 = math.log1p %0 : tensor<10xf32>
        %c1_i64 = arith.constant 1 : i64
        %285 = vector.transfer_read %alloc_7[%c5, %c5, %c12], %c1_i64 : memref<6x3x6xi64>, vector<i64>
        %286 = math.copysign %cst_4, %cst_5 : f32
        %287 = arith.maxui %true, %true : i1
        %288 = vector.matrix_multiply %279, %279 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi64>, vector<10xi64>) -> vector<1xi64>
        %289 = arith.addf %cst_5, %cst_0 : f32
        scf.yield %alloc_17 : memref<3x10xi1>
      }
      %265 = memref.load %alloc_9[%c2, %c0] : memref<3x10xi64>
      %266 = scf.while (%arg1 = %alloc_17) : (memref<3x10xi1>) -> memref<3x10xi1> {
        %277 = arith.cmpi ugt, %c324838011_i64, %c382863489_i64 : i64
        %c0_i32_48 = arith.constant 0 : i32
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %c0_i32_48 : vector<10xi32>, vector<10xi32> into i32
        %279 = math.log1p %3 : tensor<10xf16>
        %280 = bufferization.clone %alloc_20 : memref<10xf32> to memref<10xf32>
        %281 = math.fma %4, %4, %4 : tensor<3x10xf16>
        %282 = index.maxu %c8, %c14
        %283 = math.copysign %9, %9 : tensor<3x10xf32>
        %284 = index.floordivs %c2, %c8
        scf.condition(%true_1) %264 : memref<3x10xi1>
      } do {
      ^bb0(%arg1: memref<3x10xi1>):
        %c1_i32_48 = arith.constant 1 : i32
        %277 = vector.broadcast %c1_i32_48 : i32 to vector<10x10xi32>
        %278 = vector.outerproduct %19, %19, %277 {kind = #vector.kind<mul>} : vector<10xi32>, vector<10xi32>
        %279 = index.sizeof
        %280 = math.exp %4 : tensor<3x10xf16>
        %281 = affine.load %alloc_8[%c1, %c0] : memref<10x6xi1>
        %282 = vector.reduction <mul>, %19 : vector<10xi32> into i32
        %283 = math.exp %2 : tensor<10x6xf16>
        %284 = math.round %9 : tensor<3x10xf32>
        %alloc_49 = memref.alloc() : memref<10x6xi32>
        %285 = vector.extract %19[1] : vector<10xi32>
        %286 = memref.realloc %alloc_20 : memref<10xf32> to memref<6xf32>
        %287 = arith.addi %c1401205587_i64, %c1192064704_i64 : i64
        %288 = arith.divsi %false, %false : i1
        %289 = math.round %3 : tensor<10xf16>
        memref.assume_alignment %alloc_10, 2 : memref<10xi1>
        %290 = math.fma %9, %9, %9 : tensor<3x10xf32>
        memref.assume_alignment %alloc_16, 8 : memref<10xi1>
        scf.yield %alloc_17 : memref<3x10xi1>
      }
      %267 = index.maxs %c11, %c10
      affine.store %c22599_i16, %alloc_19[%c7] : memref<10xi16>
      %268 = math.exp2 %0 : tensor<10xf32>
      %269 = math.log2 %11 : tensor<6x3x6xf16>
      %270 = arith.shrui %c22599_i16, %c22599_i16 : i16
      %271 = index.ceildivu %c5, %c1
      %272 = vector.broadcast %c7 : index to vector<6xindex>
      %273 = vector.broadcast %false : i1 to vector<6xi1>
      %274 = vector.broadcast %cst_5 : f32 to vector<6xf32>
      vector.scatter %alloc_20[%c9] [%272], %273, %274 : memref<10xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
      %275 = math.log1p %13 : tensor<10x6xf16>
      %276 = arith.andi %c89198615_i64, %c1401205587_i64 : i64
      scf.yield
    }
    case 3 {
      %260 = arith.minsi %c22599_i16, %c22599_i16 : i16
      %261 = bufferization.to_tensor %alloc_12 : memref<6x3x6xf32>
      %262 = math.copysign %9, %9 : tensor<3x10xf32>
      %263 = index.castu %c9 : index to i32
      %264 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %265 = vector.broadcast %true : i1 to vector<10xi1>
      %266 = vector.maskedload %alloc_12[%c1, %c2, %c5], %265, %264 : memref<6x3x6xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %267 = math.expm1 %3 : tensor<10xf16>
      %268 = arith.minui %c120597359_i64, %c382863489_i64 : i64
      %269 = math.tanh %4 : tensor<3x10xf16>
      %270 = math.ctlz %1 : tensor<6x3x6xi32>
      %271 = vector.broadcast %cst : f32 to vector<10x10xf32>
      %272 = vector.outerproduct %264, %264, %271 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
      %273 = tensor.empty() : tensor<10x6xi1>
      %274 = vector.broadcast %true_1 : i1 to vector<10x6xi1>
      %c1_i32_48 = arith.constant 1 : i32
      %275 = vector.broadcast %c1_i32_48 : i32 to vector<10x6xi32>
      %276 = vector.gather %273[%c6, %c0] [%275], %274, %274 : tensor<10x6xi1>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi1> into vector<10x6xi1>
      %277 = affine.max affine_map<(d0, d1) -> (-d1, d0, d1 * 2)>(%c8, %c13)
      %278 = vector.insertelement %true_1, %265[%c15 : index] : vector<10xi1>
      %splat_49 = tensor.splat %c382863489_i64 : tensor<6x3x6xi64>
      %279 = math.log2 %13 : tensor<10x6xf16>
      %false_50 = index.bool.constant false
      scf.yield
    }
    case 4 {
      %c0_i32_48 = arith.constant 0 : i32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c0_i32_48 : vector<10xi32>, vector<10xi32> into i32
      %261 = arith.minui %c1401205587_i64, %c89198615_i64 : i64
      %alloca_49 = memref.alloca() : memref<10x6xi64>
      %262 = vector.shuffle %19, %19 [2, 3, 6, 7, 8, 10, 17, 18] : vector<10xi32>, vector<10xi32>
      %c1_i32_50 = arith.constant 1 : i32
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %19, %19, %c1_i32_50 : vector<10xi32>, vector<10xi32> into i32
      %from_elements_51 = tensor.from_elements %false, %true, %false, %false, %true, %true, %true_1, %true_1, %false, %false, %true_1, %true_1, %true, %false, %true_1, %true_1, %false, %true_1, %true_1, %false, %true, %true_1, %true_1, %false, %true_1, %false, %true, %true, %false, %false : tensor<3x10xi1>
      %264 = math.atan2 %4, %4 : tensor<3x10xf16>
      %c0_i32_52 = arith.constant 0 : i32
      %265 = vector.insertelement %c0_i32_52, %19[%c2 : index] : vector<10xi32>
      %266 = arith.andi %c382863489_i64, %c89198615_i64 : i64
      %267 = scf.execute_region -> memref<3x10xi16> {
        %273 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        %274 = vector.transfer_write %273, %2[%c6, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf16>, tensor<10x6xf16>
        %275 = arith.andi %true_1, %true : i1
        %276 = vector.insertelement %c0_i32_52, %19[%c14 : index] : vector<10xi32>
        %277 = math.cttz %8 : tensor<3x10xi32>
        %278 = bufferization.clone %alloc_18 : memref<3x10xi32> to memref<3x10xi32>
        %279 = math.expm1 %3 : tensor<10xf16>
        %280 = arith.minsi %true_1, %true_1 : i1
        %281 = math.log10 %2 : tensor<10x6xf16>
        %282 = vector.broadcast %c8 : index to vector<3xindex>
        %283 = vector.broadcast %false : i1 to vector<3xi1>
        vector.scatter %alloc_8[%c6, %c2] [%282], %283, %283 : memref<10x6xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %284 = math.exp2 %cst : f32
        %285 = math.cttz %14 : tensor<3x10xi32>
        %286 = vector.multi_reduction <minf>, %273, %273 [] : vector<6xf16> to vector<6xf16>
        %287 = vector.broadcast %c1192064704_i64 : i64 to vector<10xi64>
        %288 = math.expm1 %cst : f32
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %287, %287, %c324838011_i64 : vector<10xi64>, vector<10xi64> into i64
        %290 = vector.multi_reduction <maxf>, %273, %273 [] : vector<6xf16> to vector<6xf16>
        %alloc_54 = memref.alloc() : memref<3x10xi16>
        scf.yield %alloc_54 : memref<3x10xi16>
      }
      %268 = vector.multi_reduction <add>, %19, %19 [] : vector<10xi32> to vector<10xi32>
      %c1860662740_i64 = arith.constant 1860662740 : i64
      %269 = vector.broadcast %c1192064704_i64 : i64 to vector<6x3x6xi64>
      %270 = arith.addf %cst_3, %cst_2 : f16
      %271 = math.log2 %2 : tensor<10x6xf16>
      %272 = tensor.empty() : tensor<10x6xf16>
      %mapped_53 = linalg.map ins(%13 : tensor<10x6xf16>) outs(%272 : tensor<10x6xf16>)
        (%in: f16) {
          %alloc_54 = memref.alloc() : memref<6x3x6xf16>
          %splat_55 = tensor.splat %cst_5 : tensor<6x3x6xf32>
          %273 = math.cos %cst_4 : f32
          %274 = arith.maxf %cst, %cst_5 : f32
          %275 = math.fma %4, %4, %4 : tensor<3x10xf16>
          %276 = math.ceil %0 : tensor<10xf32>
          %277 = index.ceildivu %c1, %c10
          %278 = vector.broadcast %c0_i32_52 : i32 to vector<6xi32>
          %279 = vector.transfer_write %278, %1[%c14, %c7, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi32>, tensor<6x3x6xi32>
          %280 = math.log1p %cst_4 : f32
          %281 = math.fma %11, %11, %11 : tensor<6x3x6xf16>
          %282 = arith.xori %c1401205587_i64, %c1192064704_i64 : i64
          %283 = math.log1p %cst_4 : f32
          %284 = vector.flat_transpose %278 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
          %285 = math.expm1 %2 : tensor<10x6xf16>
          %286 = math.tanh %0 : tensor<10xf32>
          %287 = memref.load %alloc_6[%c2, %c4] : memref<3x10xf32>
          %288 = tensor.empty(%c15) : tensor<?x6xi32>
          affine.store %c1401205587_i64, %alloc_9[%c0, %c4] : memref<3x10xi64>
          %collapsed_56 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xf16> into tensor<60xf16>
          %289 = math.log1p %3 : tensor<10xf16>
          %290 = vector.bitcast %269 : vector<6x3x6xi64> to vector<6x3x6xi64>
          %291 = math.absi %1 : tensor<6x3x6xi32>
          %292 = index.casts %c1192064704_i64 : i64 to index
          %alloc_57 = memref.alloc() : memref<10x6xi1>
          %293 = vector.extract_strided_slice %19 {offsets = [3], sizes = [2], strides = [1]} : vector<10xi32> to vector<2xi32>
          %294 = vector.insert %c0_i32_52, %19 [9] : i32 into vector<10xi32>
          %295 = vector.extract %290[5] : vector<6x3x6xi64>
          %296 = vector.shuffle %284, %284 [0, 1, 2, 3, 4, 5, 7, 8, 9, 10] : vector<6xi32>, vector<6xi32>
          %297 = tensor.empty(%c1, %292) : tensor<6x?x?xf32>
          %298 = math.round %in : f16
          %299 = vector.broadcast %c1192064704_i64 : i64 to vector<6x6x6xi64>
          %300 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %295, %269, %299 : vector<3x6xi64>, vector<6x3x6xi64> into vector<6x6x6xi64>
          %301 = index.maxu %c7, %c14
          %cst_58 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_58 : f16
        }
      scf.yield
    }
    default {
      %260 = index.add %c6, %c1
      %261 = arith.shrsi %c382863489_i64, %c1192064704_i64 : i64
      %262 = arith.minf %cst_5, %cst_0 : f32
      %c1_i32_48 = arith.constant 1 : i32
      %263 = vector.insertelement %c1_i32_48, %19[%c2 : index] : vector<10xi32>
      %264 = arith.minf %cst_2, %cst_3 : f16
      %265 = arith.minsi %c1401205587_i64, %c120597359_i64 : i64
      %splat_49 = tensor.splat %cst_4 : tensor<10x6xf32>
      %266 = math.ctlz %true_1 : i1
      %267 = vector.reduction <add>, %19 : vector<10xi32> into i32
      %268 = tensor.empty() : tensor<3x10xi64>
      %mapped_50 = linalg.map ins(%alloc_9 : memref<3x10xi64>) outs(%268 : tensor<3x10xi64>)
        (%in: i64) {
          %275 = affine.load %alloc_12[%c10, %c4, %c11] : memref<6x3x6xf32>
          %276 = math.log1p %cst_4 : f32
          %277 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
          %278 = math.log2 %2 : tensor<10x6xf16>
          %279 = index.casts %c6 : index to i32
          affine.store %cst, %alloc_20[%c14] : memref<10xf32>
          %280 = arith.maxui %c1192064704_i64, %in : i64
          %281 = vector.shuffle %277, %277 [0, 5, 7, 8, 9, 12, 14, 15, 18, 19] : vector<10xi32>, vector<10xi32>
          %282 = index.sub %c15, %c14
          %283 = math.atan2 %2, %13 : tensor<10x6xf16>
          %284 = index.casts %true_1 : i1 to index
          %285 = math.absf %2 : tensor<10x6xf16>
          %286 = tensor.empty(%c8) : tensor<?x10xf16>
          %287 = arith.shli %c382863489_i64, %c120597359_i64 : i64
          %288 = arith.divf %cst_0, %cst_5 : f32
          %289 = math.atan2 %0, %0 : tensor<10xf32>
          %290 = vector.insertelement %c1_i32_48, %277[%c1 : index] : vector<10xi32>
          %291 = arith.floordivsi %c22599_i16, %c22599_i16 : i16
          %292 = math.exp2 %2 : tensor<10x6xf16>
          %293 = arith.divui %c89198615_i64, %c120597359_i64 : i64
          %294 = math.tanh %0 : tensor<10xf32>
          %extracted_51 = tensor.extract %4[%c2, %c8] : tensor<3x10xf16>
          %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %277, %c1_i32_48 : vector<10xi32>, vector<10xi32> into i32
          %296 = arith.cmpi ule, %false, %true_1 : i1
          %297 = arith.andi %c1_i32_48, %c1_i32_48 : i32
          %298 = math.sqrt %cst_2 : f16
          %299 = index.add %c2, %c6
          %300 = math.roundeven %3 : tensor<10xf16>
          %301 = index.floordivs %c4, %260
          %302 = vector.insert %c1_i32_48, %277 [8] : i32 into vector<10xi32>
          %303 = arith.divsi %c89198615_i64, %c89198615_i64 : i64
          %304 = math.log10 %4 : tensor<3x10xf16>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %269 = math.copysign %cst_3, %cst_2 : f16
      %270 = math.cttz %c22599_i16 : i16
      %271 = arith.xori %c382863489_i64, %c1401205587_i64 : i64
      %272 = arith.divf %cst_4, %cst_0 : f32
      %273 = math.copysign %splat_49, %splat_49 : tensor<10x6xf32>
      %274 = index.castu %c7 : index to i32
    }
    %23 = bufferization.clone %alloc_12 : memref<6x3x6xf32> to memref<6x3x6xf32>
    %24 = math.copysign %9, %9 : tensor<3x10xf32>
    %25 = math.log %13 : tensor<10x6xf16>
    %26 = vector.matrix_multiply %19, %19 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
    %27 = index.ceildivu %c5, %c3
    %28 = vector.broadcast %c120597359_i64 : i64 to vector<i64>
    %29 = vector.transfer_write %28, %5[%c0, %c3] : vector<i64>, tensor<3x10xi64>
    %30 = index.floordivs %c1, %c2
    %31 = math.roundeven %cst_0 : f32
    %32 = index.sizeof
    %33 = vector.bitcast %19 : vector<10xi32> to vector<10xi32>
    %34 = math.sqrt %cst_0 : f32
    %35 = math.sqrt %cst_3 : f16
    %36 = math.exp %11 : tensor<6x3x6xf16>
    %37 = tensor.empty() : tensor<6xi32>
    %alloc_22 = memref.alloc() : memref<6x3xi32>
    %38 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%37, %alloc_22, %1 : tensor<6xi32>, memref<6x3xi32>, tensor<6x3x6xi32>) outs(%1 : tensor<6x3x6xi32>) {
    ^bb0(%in: i32, %in_48: i32, %in_49: i32, %out: i32):
      %rank_50 = tensor.rank %0 : tensor<10xf32>
      %collapsed_51 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x10xi32> into tensor<30xi32>
      %260 = arith.minui %c89198615_i64, %c324838011_i64 : i64
      %261 = vector.bitcast %33 : vector<10xi32> to vector<10xi32>
      %262 = tensor.empty() : tensor<10x6xi32>
      %263 = math.fpowi %13, %262 : tensor<10x6xf16>, tensor<10x6xi32>
      %264 = math.ctpop %true : i1
      %265 = math.ctlz %12 : tensor<10xi1>
      %266 = arith.addf %cst_3, %cst_2 : f16
      %267 = math.log1p %2 : tensor<10x6xf16>
      %268 = math.absi %21 : tensor<i32>
      %269 = index.sub %32, %c6
      %270 = math.sqrt %cst_4 : f32
      %271 = math.cttz %5 : tensor<3x10xi64>
      %272 = math.copysign %cst_2, %cst_3 : f16
      %273 = math.roundeven %0 : tensor<10xf32>
      %274 = arith.cmpi sle, %c22599_i16, %c22599_i16 : i16
      %true_52 = arith.constant true
      %275 = arith.addf %cst_0, %cst_0 : f32
      %276 = index.sizeof
      %277 = math.cttz %false : i1
      %278 = tensor.empty() : tensor<6x3x6xi1>
      memref.assume_alignment %alloc, 4 : memref<3x10xf32>
      %279 = math.tanh %2 : tensor<10x6xf16>
      %280 = math.ctlz %c120597359_i64 : i64
      %281 = math.exp %0 : tensor<10xf32>
      %282 = math.fpowi %11, %1 : tensor<6x3x6xf16>, tensor<6x3x6xi32>
      %283 = math.atan2 %4, %4 : tensor<3x10xf16>
      %284 = math.log10 %11 : tensor<6x3x6xf16>
      %285 = math.absi %14 : tensor<3x10xi32>
      %286 = vector.broadcast %cst_3 : f16 to vector<10xf16>
      %287 = vector.transfer_write %286, %13[%27, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf16>, tensor<10x6xf16>
      %288 = math.ctpop %1 : tensor<6x3x6xi32>
      %289 = bufferization.clone %alloc_13 : memref<10xi32> to memref<10xi32>
      linalg.yield %in : i32
    } -> tensor<6x3x6xi32>
    %39 = math.absi %c1192064704_i64 : i64
    %c1_i32 = arith.constant 1 : i32
    memref.store %c1_i32, %alloc_15[%c3] : memref<10xi32>
    %40 = memref.load %alloc_7[%c5, %c2, %c5] : memref<6x3x6xi64>
    %cst_23 = arith.constant 1.000000e+00 : f32
    %cst_24 = arith.constant 0.000000e+00 : f32
    %41 = vector.transfer_read %alloc_6[%c12, %c9], %cst_24 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x10xf32>, vector<10xf32>
    %alloc_25 = memref.alloc() : memref<6x3xf16>
    %42 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25 : memref<6x3xf16>) outs(%11 : tensor<6x3x6xf16>) {
    ^bb0(%in: f16, %out: f16):
      %260 = arith.addi %c1_i32, %c1_i32 : i32
      %261 = index.sizeof
      %262 = math.ctpop %14 : tensor<3x10xi32>
      %263 = vector.broadcast %c89198615_i64 : i64 to vector<i64>
      %264 = vector.transfer_write %263, %15[%c12, %c0] : vector<i64>, tensor<3x10xi64>
      %265 = vector.insert %c1_i32, %26 [0] : i32 into vector<1xi32>
      %266 = arith.andi %c1401205587_i64, %c382863489_i64 : i64
      %267 = arith.andi %c1401205587_i64, %c382863489_i64 : i64
      scf.execute_region {
        %289 = memref.realloc %alloc_21 : memref<10xi1> to memref<6xi1>
        %290 = affine.load %alloc_18[%c10, %c5] : memref<3x10xi32>
        %291 = vector.broadcast %in : f16 to vector<6x3x6xf16>
        %292 = vector.broadcast %true : i1 to vector<6x3x6xi1>
        %293 = vector.broadcast %c1_i32 : i32 to vector<6x3x6xi32>
        %294 = vector.gather %2[%32, %32] [%293], %292, %291 : tensor<10x6xf16>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xf16> into vector<6x3x6xf16>
        %295 = index.sizeof
        %296 = math.round %4 : tensor<3x10xf16>
        %297 = vector.broadcast %c120597359_i64 : i64 to vector<10x6xi64>
        %298 = math.ipowi %15, %5 : tensor<3x10xi64>
        %299 = arith.minui %290, %c1_i32 : i32
        %300 = index.add %c0, %c7
        %301 = math.sqrt %9 : tensor<3x10xf32>
        %302 = vector.broadcast %out : f16 to vector<f16>
        %303 = vector.transfer_write %302, %3[%c13] : vector<f16>, tensor<10xf16>
        %304 = vector.broadcast %290 : i32 to vector<3xi32>
        %305 = vector.multi_reduction <or>, %293, %304 [0, 2] : vector<6x3x6xi32> to vector<3xi32>
        %306 = math.ctlz %8 : tensor<3x10xi32>
        %alloc_50 = memref.alloc() : memref<10xf16>
        %307 = vector.broadcast %out : f16 to vector<10x6xf16>
        %308 = vector.broadcast %true_1 : i1 to vector<10x6xi1>
        %309 = vector.broadcast %290 : i32 to vector<10x6xi32>
        %310 = vector.gather %alloc_50[%c4] [%309], %308, %307 : memref<10xf16>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xf16> into vector<10x6xf16>
        %311 = math.ipowi %true_1, %true : i1
        %312 = vector.extract %307[1] : vector<10x6xf16>
        scf.yield
      }
      %268 = math.exp %4 : tensor<3x10xf16>
      %269 = arith.andi %true, %false : i1
      %270 = math.roundeven %in : f16
      %collapsed_48 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x3x6xi32> into tensor<18x6xi32>
      %271 = math.round %11 : tensor<6x3x6xf16>
      %272 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %272, %alloc_11[%c14, %c13] : vector<i1>, memref<10x6xi1>
      %273 = math.tanh %out : f16
      %274 = vector.bitcast %33 : vector<10xi32> to vector<10xi32>
      %275 = index.add %c2, %c10
      %276 = bufferization.to_tensor %alloc_15 : memref<10xi32>
      %277 = vector.multi_reduction <mul>, %26, %c1_i32 [0] : vector<1xi32> to i32
      %278 = index.ceildivu %c0, %c0
      %279 = affine.load %alloc_11[%c6, %c12] : memref<10x6xi1>
      %c1165811306_i32 = arith.constant 1165811306 : i32
      %280 = index.mul %32, %c10
      %281 = math.ceil %11 : tensor<6x3x6xf16>
      %282 = bufferization.clone %alloc_7 : memref<6x3x6xi64> to memref<6x3x6xi64>
      %283 = vector.broadcast %cst_23 : f32 to vector<3xf32>
      vector.transfer_write %283, %alloc[%c6, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, memref<3x10xf32>
      %284 = bufferization.to_tensor %alloc_19 : memref<10xi16>
      %285 = index.maxu %c13, %c2
      %286 = math.log10 %9 : tensor<3x10xf32>
      %generated_49 = tensor.generate %c13, %261 {
      ^bb0(%arg1: index, %arg2: index):
        %289 = math.atan2 %cst_5, %cst_5 : f32
        %290 = memref.load %alloc_7[%c5, %c1, %c3] : memref<6x3x6xi64>
        %291 = math.rsqrt %cst_23 : f32
        %292 = math.expm1 %11 : tensor<6x3x6xf16>
        tensor.yield %c120597359_i64 : i64
      } : tensor<?x?xi64>
      %287 = math.ctpop %c1_i32 : i32
      %288 = bufferization.clone %alloc_7 : memref<6x3x6xi64> to memref<6x3x6xi64>
      linalg.yield %out : f16
    } -> tensor<6x3x6xf16>
    %43 = math.cos %cst_3 : f16
    %44 = index.casts %c15 : index to i32
    %extracted = tensor.extract %5[%c1, %c1] : tensor<3x10xi64>
    %45 = arith.minui %c1401205587_i64, %c1401205587_i64 : i64
    %46 = vector.insert %c1_i32, %33 [8] : i32 into vector<10xi32>
    %47 = affine.if affine_set<(d0, d1) : (d0 * 256 == 0, d0 * 2 + d1 + d0 * 2 + 4 == 0)>(%c13, %c7) -> i32 {
      %260 = arith.cmpi uge, %c89198615_i64, %c89198615_i64 : i64
      %261 = math.atan2 %11, %11 : tensor<6x3x6xf16>
      %262 = index.ceildivs %c11, %c4
      %extracted_48 = tensor.extract %3[%c4] : tensor<10xf16>
      %263 = math.sqrt %cst : f32
      %264 = arith.andi %c22599_i16, %c22599_i16 : i16
      %265 = arith.remf %cst_2, %cst_2 : f16
      %266 = index.casts %c2 : index to i32
      affine.yield %c1_i32 : i32
    } else {
      %260 = index.floordivs %32, %c5
      %261 = arith.minui %c1_i32, %c1_i32 : i32
      %262 = vector.broadcast %cst : f32 to vector<3x10xf32>
      %263 = arith.cmpf false, %cst_4, %cst_0 : f32
      %264 = memref.alloca_scope  -> (memref<6x3x6xi64>) {
        %extracted_50 = tensor.extract %18[%c9, %c0] : tensor<10x3xi32>
        %268 = affine.load %alloc_18[%c0, %c5] : memref<3x10xi32>
        %269 = index.add %c0, %c13
        %270 = math.round %cst_23 : f32
        %271 = vector.insertelement %extracted_50, %33[%c10 : index] : vector<10xi32>
        %extracted_51 = tensor.extract %6[%c0] : tensor<10xi64>
        %272 = math.tanh %9 : tensor<3x10xf32>
        %273 = vector.bitcast %262 : vector<3x10xf32> to vector<3x10xf32>
        %274 = memref.load %alloc_17[%c0, %c3] : memref<3x10xi1>
        %extracted_52 = tensor.extract %8[%c1, %c2] : tensor<3x10xi32>
        %275 = math.roundeven %13 : tensor<10x6xf16>
        %276 = math.log10 %cst_0 : f32
        %277 = vector.shuffle %33, %33 [1, 5, 6, 8, 11, 15, 16, 18, 19] : vector<10xi32>, vector<10xi32>
        %278 = arith.remf %cst_4, %cst_23 : f32
        %279 = arith.divf %cst_23, %cst_4 : f32
        %280 = index.casts %c15 : index to i32
        %false_53 = index.bool.constant false
        %collapsed_54 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
        %281 = math.copysign %cst_0, %cst : f32
        %282 = math.rsqrt %0 : tensor<10xf32>
        %283 = vector.multi_reduction <maxsi>, %33, %19 [] : vector<10xi32> to vector<10xi32>
        memref.store %true_1, %alloc_8[%c9, %c2] : memref<10x6xi1>
        %284 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %285 = arith.maxf %cst_2, %cst_2 : f16
        %286 = math.atan2 %3, %3 : tensor<10xf16>
        %true_55 = index.bool.constant true
        %287 = math.round %3 : tensor<10xf16>
        %288 = arith.addf %cst_4, %cst_5 : f32
        %289 = index.sizeof
        %290 = arith.subi %extracted_51, %extracted : i64
        %291 = arith.maxui %c324838011_i64, %c89198615_i64 : i64
        %292 = arith.cmpf ueq, %cst_5, %cst_0 : f32
        memref.alloca_scope.return %alloc_7 : memref<6x3x6xi64>
      }
      %265 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %dest_48, %accumulated_value_49 = vector.scan <minf>, %262, %265 {inclusive = true, reduction_dim = 0 : i64} : vector<3x10xf32>, vector<10xf32>
      %266 = bufferization.to_tensor %alloc_13 : memref<10xi32>
      %267 = math.absf %cst : f32
      affine.yield %c1_i32 : i32
    }
    %from_elements = tensor.from_elements %c1192064704_i64, %c120597359_i64, %c120597359_i64, %c382863489_i64, %c324838011_i64, %extracted, %extracted, %c324838011_i64, %extracted, %c120597359_i64 : tensor<10xi64>
    %48 = affine.apply affine_map<(d0, d1, d2) -> (((d2 + d0) mod 2) mod 16)>(%c15, %c15, %c4)
    %49 = arith.ori %c22599_i16, %c22599_i16 : i16
    %generated = tensor.generate %c6, %c15 {
    ^bb0(%arg1: index, %arg2: index):
      %260 = vector.create_mask %c1, %c11 : vector<3x10xi1>
      memref.alloca_scope  {
        %263 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %264 = math.copysign %cst_4, %cst_4 : f32
        %265 = math.ceil %4 : tensor<3x10xf16>
        %266 = arith.shrsi %extracted, %c120597359_i64 : i64
        %true_48 = arith.constant true
        %false_49 = arith.constant false
        %267 = vector.transfer_read %alloc_11[%c3, %c9], %false_49 : memref<10x6xi1>, vector<i1>
        %268 = arith.ori %c120597359_i64, %c1401205587_i64 : i64
        %269 = vector.splat %extracted : vector<10x6xi64>
        %270 = math.log1p %cst_4 : f32
        %271 = math.absf %0 : tensor<10xf32>
        %272 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %273 = memref.load %alloc_19[%c9] : memref<10xi16>
        %274 = vector.broadcast %c2 : index to vector<10xindex>
        %275 = vector.broadcast %true_48 : i1 to vector<10xi1>
        %276 = vector.broadcast %c1192064704_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_7[%c1, %c1, %c5] [%274], %275, %276 : memref<6x3x6xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %alloc_50 = memref.alloc() : memref<6x3x6xi32>
        %277 = vector.broadcast %c1_i32 : i32 to vector<3x10xi32>
        %278 = vector.gather %alloc_50[%30, %c1, %c9] [%277], %260, %277 : memref<6x3x6xi32>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi32> into vector<3x10xi32>
        %279 = affine.load %alloc_14[%c3, %c4, %c4] : memref<6x3x6xf16>
        %280 = vector.multi_reduction <mul>, %272, %c1_i32 [0] : vector<1xi32> to i32
        %281 = math.log1p %cst_5 : f32
        %282 = arith.divf %cst_3, %279 : f16
        %283 = vector.insert %280, %33 [2] : i32 into vector<10xi32>
        %284 = vector.splat %c1192064704_i64 : vector<6x3x6xi64>
        %285 = math.atan2 %9, %9 : tensor<3x10xf32>
        affine.store %true_1, %alloc_21[%c8] : memref<10xi1>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %cst_52 = arith.constant 0.000000e+00 : f32
        %286 = vector.transfer_read %0[%arg2], %cst_52 : tensor<10xf32>, vector<f32>
        %false_53 = index.bool.constant false
        %287 = vector.bitcast %263 : vector<10xi32> to vector<10xi32>
        %288 = arith.maxui %280, %280 : i32
        %289 = arith.minui %false, %true : i1
        %290 = arith.minsi %true, %true_1 : i1
        %291 = tensor.empty(%c6, %27, %c9) : tensor<?x?x?xf32>
        %c1_i64 = arith.constant 1 : i64
        %292 = vector.transfer_read %alloc_9[%27, %arg2], %c1_i64 : memref<3x10xi64>, vector<i64>
        %293 = math.ceil %11 : tensor<6x3x6xf16>
        %294 = math.cttz %280 : i32
        %295 = tensor.empty() : tensor<3x10xi1>
      }
      %261 = bufferization.to_tensor %alloc_13 : memref<10xi32>
      %262 = vector.insert %c1_i32, %19 [3] : i32 into vector<10xi32>
      tensor.yield %cst_4 : f32
    } : tensor<?x?xf32>
    %50 = math.fma %4, %4, %4 : tensor<3x10xf16>
    %51 = vector.insertelement %c1_i32, %26[%c13 : index] : vector<1xi32>
    %52 = math.absi %14 : tensor<3x10xi32>
    %53 = math.ctlz %18 : tensor<10x3xi32>
    %alloc_26 = memref.alloc() : memref<10xf32>
    %54 = math.fma %2, %13, %2 : tensor<10x6xf16>
    %55 = vector.load %alloc_16[%c6] : memref<10xi1>, vector<10xi1>
    %56 = arith.maxf %cst_5, %cst_23 : f32
    %57 = vector.insertelement %extracted, %28[] : vector<i64>
    %58 = vector.insertelement %extracted, %28[] : vector<i64>
    %59 = arith.maxf %cst, %cst_4 : f32
    %60 = bufferization.clone %23 : memref<6x3x6xf32> to memref<6x3x6xf32>
    %61 = index.floordivs %c2, %c0
    %62 = arith.shrui %c89198615_i64, %extracted : i64
    %63 = arith.remf %cst_3, %cst_2 : f16
    %64 = index.floordivs %c6, %32
    %65 = vector.insertelement %c1_i32, %19[%c3 : index] : vector<10xi32>
    %66 = arith.ori %true, %true : i1
    %67 = math.fma %9, %9, %9 : tensor<3x10xf32>
    %68 = math.expm1 %4 : tensor<3x10xf16>
    %69 = vector.multi_reduction <xor>, %55, %false [0] : vector<10xi1> to i1
    %70 = math.log1p %4 : tensor<3x10xf16>
    %71 = math.absi %1 : tensor<6x3x6xi32>
    %72 = math.floor %cst_2 : f16
    %73 = math.cttz %8 : tensor<3x10xi32>
    %extracted_27 = tensor.extract %12[%c5] : tensor<10xi1>
    %74 = index.castu %32 : index to i32
    %75 = math.copysign %4, %4 : tensor<3x10xf16>
    %76 = math.absi %7 : tensor<3x10xi1>
    %77 = arith.andi %c1401205587_i64, %extracted : i64
    %from_elements_28 = tensor.from_elements %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16 : tensor<3x10xi16>
    %alloca = memref.alloca() : memref<6x3x6xi64>
    %c11443_i16 = arith.constant 11443 : i16
    %78 = vector.create_mask %32 : vector<10xi1>
    %79 = math.cos %4 : tensor<3x10xf16>
    %80 = vector.matrix_multiply %19, %26 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<1xi32>) -> vector<10xi32>
    %81 = vector.insertelement %69, %55[%c3 : index] : vector<10xi1>
    %82 = math.copysign %cst_5, %cst_5 : f32
    %83 = arith.addf %cst_2, %cst_2 : f16
    %84 = math.exp2 %0 : tensor<10xf32>
    %85 = arith.subi %c1_i32, %c1_i32 : i32
    %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<3x10xi1> into tensor<30xi1>
    %86 = vector.insertelement %c1_i32, %80[%c11 : index] : vector<10xi32>
    %87 = arith.andi %c324838011_i64, %c1192064704_i64 : i64
    %splat = tensor.splat %cst_23 : tensor<10xf32>
    %88 = vector.broadcast %48 : index to vector<3xindex>
    %89 = vector.broadcast %false : i1 to vector<3xi1>
    %90 = vector.broadcast %cst_4 : f32 to vector<3xf32>
    vector.scatter %alloc_6[%c0, %c6] [%88], %89, %90 : memref<3x10xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
    %91 = vector.shuffle %19, %19 [1, 4, 5, 7, 10, 12, 13, 14, 15] : vector<10xi32>, vector<10xi32>
    %92 = bufferization.to_memref %0 : memref<10xf32>
    %93 = arith.cmpf oge, %cst_2, %cst_3 : f16
    %94 = math.ceil %cst_3 : f16
    %alloca_29 = memref.alloca() : memref<6x3x6xf32>
    %95 = bufferization.to_tensor %alloc_10 : memref<10xi1>
    %96 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %97 = index.floordivs %30, %c1
    %98 = scf.execute_region -> i1 {
      %260 = memref.load %alloc_16[%c5] : memref<10xi1>
      %261 = index.castu %c15 : index to i32
      %262 = math.log2 %cst : f32
      %263 = memref.load %alloc_12[%c1, %c1, %c2] : memref<6x3x6xf32>
      %264 = vector.broadcast %30 : index to vector<10xindex>
      %265 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      vector.scatter %alloc_14[%c3, %c2, %c2] [%264], %55, %265 : memref<6x3x6xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      %splat_48 = tensor.splat %c1_i32 : tensor<10x6xi32>
      %266 = vector.create_mask %48, %c7 : vector<3x10xi1>
      %267 = affine.max affine_map<(d0, d1) -> (d0 floordiv 128, (d0 floordiv 128) mod 4)>(%c10, %c5)
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<6x3x6xi32>) {
      ^bb0(%out: i32):
        %274 = math.tanh %cst_0 : f32
        %275 = math.sqrt %cst : f32
        %276 = index.maxu %c1, %64
        %277 = vector.matrix_multiply %96, %96 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %278 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %278, %alloc_16[%c15] : vector<i1>, memref<10xi1>
        %279 = math.sqrt %2 : tensor<10x6xf16>
        %280 = math.cttz %12 : tensor<10xi1>
        %splat_51 = tensor.splat %c1401205587_i64 : tensor<3x10xi64>
        %281 = vector.shuffle %96, %96 [0] : vector<1xi32>, vector<1xi32>
        %282 = arith.divsi %c89198615_i64, %extracted : i64
        %283 = memref.atomic_rmw maxf %cst, %alloc_12[%c1, %c2, %c4] : (f32, memref<6x3x6xf32>) -> f32
        %284 = arith.divsi %c1192064704_i64, %c1401205587_i64 : i64
        %285 = arith.divf %cst_4, %cst_5 : f32
        %286 = index.castu %c1192064704_i64 : i64 to index
        %287 = tensor.empty() : tensor<6x3x6xi32>
        %288 = vector.create_mask %32, %c14 : vector<3x10xi1>
        %289 = index.ceildivu %61, %64
        %290 = math.ceil %cst_3 : f16
        %291 = math.absi %splat_51 : tensor<3x10xi64>
        %292 = memref.load %23[%c3, %c1, %c0] : memref<6x3x6xf32>
        %293 = math.fpowi %13, %splat_48 : tensor<10x6xf16>, tensor<10x6xi32>
        %294 = index.maxs %c0, %286
        %295 = math.ctlz %12 : tensor<10xi1>
        %false_52 = index.bool.constant false
        %296 = math.absi %7 : tensor<3x10xi1>
        %297 = bufferization.clone %alloc_17 : memref<3x10xi1> to memref<3x10xi1>
        %298 = bufferization.to_memref %16 : memref<10xi1>
        %299 = arith.minf %cst_2, %cst_3 : f16
        %300 = vector.broadcast %c0 : index to vector<10xindex>
        %301 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        vector.scatter %92[%c5] [%300], %78, %301 : memref<10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %302 = arith.xori %false_52, %false_52 : i1
        %303 = vector.create_mask %c12, %c4, %30 : vector<6x3x6xi1>
        %304 = math.log10 %cst_5 : f32
        linalg.yield %out : i32
      } -> tensor<6x3x6xi32>
      %269 = math.atan2 %3, %3 : tensor<10xf16>
      %270 = index.sizeof
      %271 = bufferization.to_tensor %alloc : memref<3x10xf32>
      %272 = math.log2 %0 : tensor<10xf32>
      %from_elements_49 = tensor.from_elements %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16 : tensor<6x3x6xi16>
      %273 = arith.cmpf olt, %cst_4, %cst_23 : f32
      %collapsed_50 = tensor.collapse_shape %8 [[0, 1]] : tensor<3x10xi32> into tensor<30xi32>
      scf.yield %true : i1
    }
    %99 = math.log10 %3 : tensor<10xf16>
    memref.alloca_scope  {
      %260 = vector.shuffle %55, %55 [1, 2, 3, 7, 8, 11, 13, 14, 19] : vector<10xi1>, vector<10xi1>
      %261 = scf.while (%arg1 = %alloc_19) : (memref<10xi16>) -> memref<10xi16> {
        %285 = index.ceildivu %c11, %c7
        %286 = bufferization.clone %alloc_6 : memref<3x10xf32> to memref<3x10xf32>
        %287 = affine.load %alloc_7[%c7, %c5, %c13] : memref<6x3x6xi64>
        memref.store %c1_i32, %alloc_13[%c9] : memref<10xi32>
        %288 = bufferization.clone %alloc_21 : memref<10xi1> to memref<10xi1>
        %289 = math.copysign %2, %2 : tensor<10x6xf16>
        %rank_50 = tensor.rank %11 : tensor<6x3x6xf16>
        %290 = math.absi %extracted_27 : i1
        scf.condition(%69) %arg1 : memref<10xi16>
      } do {
      ^bb0(%arg1: memref<10xi16>):
        %285 = bufferization.to_tensor %alloc_9 : memref<3x10xi64>
        %false_50 = index.bool.constant false
        %286 = math.tanh %0 : tensor<10xf32>
        %cst_51 = arith.constant 4.128000e+04 : f16
        %287 = arith.maxsi %true, %false : i1
        %alloca_52 = memref.alloca() : memref<6x3x6xf32>
        %288 = bufferization.to_tensor %60 : memref<6x3x6xf32>
        %alloc_53 = memref.alloc() : memref<10x6xf16>
        %289 = vector.broadcast %cst_2 : f16 to vector<3x10xf16>
        %290 = vector.broadcast %false : i1 to vector<3x10xi1>
        %291 = vector.broadcast %c1_i32 : i32 to vector<3x10xi32>
        %292 = vector.gather %alloc_53[%c6, %97] [%291], %290, %289 : memref<10x6xf16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xf16> into vector<3x10xf16>
        %293 = index.maxu %61, %c9
        %294 = arith.divsi %69, %false_50 : i1
        %295 = math.exp2 %4 : tensor<3x10xf16>
        %296 = math.copysign %13, %2 : tensor<10x6xf16>
        %extracted_54 = tensor.extract %21[] : tensor<i32>
        %297 = math.ctpop %transposed : tensor<10x3xi32>
        %298 = vector.broadcast %c3 : index to vector<3xindex>
        %299 = vector.broadcast %69 : i1 to vector<3xi1>
        %300 = vector.broadcast %c89198615_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_9[%c0, %c3] [%298], %299, %300 : memref<3x10xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %301 = bufferization.clone %60 : memref<6x3x6xf32> to memref<6x3x6xf32>
        scf.yield %arg1 : memref<10xi16>
      }
      memref.store %69, %alloc_10[%c5] : memref<10xi1>
      %262 = index.casts %extracted_27 : i1 to index
      %263 = vector.reduction <or>, %33 : vector<10xi32> into i32
      %264 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
      %265 = vector.outerproduct %96, %96, %264 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
      %266 = arith.minui %c1401205587_i64, %c89198615_i64 : i64
      %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x10xi32> into tensor<3x10x1xi32>
      %267 = math.exp2 %4 : tensor<3x10xf16>
      %268 = math.log1p %9 : tensor<3x10xf32>
      %269 = arith.xori %c1192064704_i64, %c382863489_i64 : i64
      %270 = index.casts %97 : index to i32
      %c-26527_i16 = arith.constant -26527 : i16
      %271 = arith.minf %cst_23, %cst : f32
      %272 = vector.multi_reduction <add>, %33, %c1_i32 [0] : vector<10xi32> to i32
      %273 = math.exp %cst_3 : f16
      %c1859377728_i32 = arith.constant 1859377728 : i32
      %274 = index.castu %true_1 : i1 to index
      memref.store %c1_i32, %alloc_18[%c1, %c0] : memref<3x10xi32>
      %275 = math.ceil %4 : tensor<3x10xf16>
      %276 = vector.matrix_multiply %33, %33 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
      %277 = math.log10 %13 : tensor<10x6xf16>
      %278 = index.castu %69 : i1 to index
      %279 = arith.ori %c382863489_i64, %c382863489_i64 : i64
      %280 = vector.shuffle %28, %28 [0, 1] : vector<i64>, vector<i64>
      %c0_i32_48 = arith.constant 0 : i32
      %281 = vector.transfer_read %alloc_13[%64], %c0_i32_48 : memref<10xi32>, vector<i32>
      %282 = vector.matrix_multiply %26, %33 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi32>, vector<10xi32>) -> vector<10xi32>
      memref.alloca_scope  {
        %285 = arith.divsi %69, %extracted_27 : i1
        %286 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %287 = arith.cmpi sge, %272, %272 : i32
        %288 = math.exp2 %cst_3 : f16
        %289 = vector.create_mask %32, %c6 : vector<10x6xi1>
        %290 = arith.subi %c89198615_i64, %extracted : i64
        %291 = arith.minf %cst_23, %cst_5 : f32
        %true_50 = index.bool.constant true
        %292 = math.sqrt %2 : tensor<10x6xf16>
        %293 = math.sqrt %4 : tensor<3x10xf16>
        %294 = vector.broadcast %cst_5 : f32 to vector<f32>
        %295 = vector.transfer_write %294, %splat[%c9] : vector<f32>, tensor<10xf32>
        %296 = vector.insertelement %extracted, %28[] : vector<i64>
        %297 = math.tanh %cst : f32
        %298 = vector.extract %80[7] : vector<10xi32>
        %299 = math.round %3 : tensor<10xf16>
        %300 = vector.extract_strided_slice %55 {offsets = [2], sizes = [7], strides = [1]} : vector<10xi1> to vector<7xi1>
        %301 = math.fma %2, %2, %13 : tensor<10x6xf16>
        %302 = vector.insertelement %272, %33[%61 : index] : vector<10xi32>
        %303 = bufferization.clone %alloc_8 : memref<10x6xi1> to memref<10x6xi1>
        %304 = vector.insert %272, %286 [0] : i32 into vector<1xi32>
        %305 = math.expm1 %2 : tensor<10x6xf16>
        %306 = math.log2 %cst_23 : f32
        %307 = arith.ori %c120597359_i64, %c120597359_i64 : i64
        %308 = arith.minf %cst, %cst_23 : f32
        %309 = bufferization.clone %92 : memref<10xf32> to memref<10xf32>
        %310 = vector.load %alloc_7[%c2, %c2, %c2] : memref<6x3x6xi64>, vector<10xi64>
        %extracted_51 = tensor.extract %collapsed[%c9] : tensor<30xi1>
        %311 = vector.bitcast %276 : vector<1xi32> to vector<1xi32>
        %312 = index.casts %c13 : index to i32
        %313 = vector.multi_reduction <minui>, %311, %c1_i32 [0] : vector<1xi32> to i32
        %314 = index.sizeof
        %315 = vector.insert %98, %78 [9] : i1 into vector<10xi1>
      }
      %283 = index.mul %30, %c2
      memref.assume_alignment %alloc_6, 2 : memref<3x10xf32>
      %284 = vector.multi_reduction <minui>, %26, %c1_i32 [0] : vector<1xi32> to i32
      %extracted_49 = tensor.extract %11[%c5, %c1, %c2] : tensor<6x3x6xf16>
    }
    %100 = arith.shrui %false, %extracted_27 : i1
    %false_30 = index.bool.constant false
    %alloc_31 = memref.alloc() : memref<3x10xf16>
    %101 = bufferization.clone %alloc_14 : memref<6x3x6xf16> to memref<6x3x6xf16>
    %102 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
    %103 = vector.outerproduct %80, %19, %102 {kind = #vector.kind<mul>} : vector<10xi32>, vector<10xi32>
    %104 = math.log2 %cst_23 : f32
    %105 = math.exp2 %4 : tensor<3x10xf16>
    %106 = math.cttz %6 : tensor<10xi64>
    %107 = vector.create_mask %c8, %c9 : vector<3x10xi1>
    %108 = math.log2 %cst : f32
    %109 = math.fpowi %11, %1 : tensor<6x3x6xf16>, tensor<6x3x6xi32>
    %110 = math.cttz %true_1 : i1
    %111 = index.maxs %48, %c8
    %112 = vector.insertelement %true, %55[%c7 : index] : vector<10xi1>
    %113 = vector.bitcast %33 : vector<10xi32> to vector<10xi32>
    %114 = math.ctpop %c324838011_i64 : i64
    %115 = math.log1p %cst_2 : f16
    %116 = scf.index_switch %c1 -> index 
    case 1 {
      %alloc_48 = memref.alloc() : memref<6xf16>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %alloc_48, %alloc_48 : memref<6xf16>, memref<6xf16>, memref<6xf16>) outs(%11 : tensor<6x3x6xf16>) {
      ^bb0(%in: f16, %in_51: f16, %in_52: f16, %out: f16):
        %274 = math.log10 %3 : tensor<10xf16>
        %275 = math.exp2 %0 : tensor<10xf32>
        %276 = bufferization.clone %alloc_13 : memref<10xi32> to memref<10xi32>
        %277 = vector.broadcast %in_51 : f16 to vector<6x3x6xf16>
        %278 = vector.broadcast %98 : i1 to vector<6x3x6xi1>
        %279 = vector.broadcast %c1_i32 : i32 to vector<6x3x6xi32>
        %280 = vector.gather %4[%c7, %c4] [%279], %278, %277 : tensor<3x10xf16>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xf16> into vector<6x3x6xf16>
        %281 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
        %282 = vector.splat %c14 : vector<10x6xindex>
        %283 = memref.load %101[%c2, %c2, %c3] : memref<6x3x6xf16>
        %splat_53 = tensor.splat %extracted_27 : tensor<6x3x6xi1>
        %collapsed_54 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
        %284 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
        %c1503164286_i32 = arith.constant 1503164286 : i32
        %285 = arith.divsi %false, %69 : i1
        %286 = index.mul %64, %c8
        %287 = arith.xori %c1_i32, %c1_i32 : i32
        %288 = math.round %cst_2 : f16
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %80, %113, %c1_i32 : vector<10xi32>, vector<10xi32> into i32
        %290 = arith.xori %c22599_i16, %c22599_i16 : i16
        %291 = math.round %0 : tensor<10xf32>
        %292 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
        %293 = vector.outerproduct %113, %80, %292 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
        %alloc_55 = memref.alloc() : memref<10xf16>
        %294 = arith.cmpi sgt, %98, %false : i1
        %295 = index.ceildivu %27, %97
        %296 = math.absf %cst_3 : f16
        %297 = vector.create_mask %97, %30, %c11 : vector<6x3x6xi1>
        %298 = vector.broadcast %in_51 : f16 to vector<3x6xf16>
        %dest_56, %accumulated_value_57 = vector.scan <minf>, %280, %298 {inclusive = true, reduction_dim = 0 : i64} : vector<6x3x6xf16>, vector<3x6xf16>
        %299 = index.ceildivu %111, %48
        %300 = math.log2 %0 : tensor<10xf32>
        %301 = math.fpowi %9, %8 : tensor<3x10xf32>, tensor<3x10xi32>
        %302 = vector.matrix_multiply %33, %26 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<1xi32>) -> vector<10xi32>
        %303 = math.round %9 : tensor<3x10xf32>
        %true_58 = arith.constant true
        %304 = vector.transfer_read %7[%c2, %30], %true_58 : tensor<3x10xi1>, vector<i1>
        %305 = arith.remf %in_51, %cst_3 : f16
        linalg.yield %out : f16
      } -> tensor<6x3x6xf16>
      %261 = arith.subi %c1192064704_i64, %c382863489_i64 : i64
      %262 = math.log2 %cst_0 : f32
      %263 = affine.for %arg1 = 0 to 64 iter_args(%arg2 = %cst_23) -> (f32) {
        affine.yield %cst_5 : f32
      }
      %264 = vector.matrix_multiply %19, %26 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<1xi32>) -> vector<10xi32>
      %265 = math.ceil %2 : tensor<10x6xf16>
      %c22018_i16 = arith.constant 22018 : i16
      %from_elements_49 = tensor.from_elements %cst_0, %cst_0, %cst, %cst_5, %cst_5, %cst_23, %cst_5, %cst_0, %cst, %cst_23 : tensor<10xf32>
      %266 = math.tanh %0 : tensor<10xf32>
      %267 = math.roundeven %cst_3 : f16
      %cst_50 = arith.constant 1.000000e+00 : f32
      %268 = vector.transfer_read %23[%c6, %27, %30], %cst_50 : memref<6x3x6xf32>, vector<3x10xf32>
      %269 = vector.flat_transpose %78 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %270 = math.roundeven %0 : tensor<10xf32>
      %271 = arith.shrui %c1_i32, %c1_i32 : i32
      %272 = arith.divf %cst_50, %cst_5 : f32
      %273 = math.absi %extracted : i64
      scf.yield %64 : index
    }
    case 2 {
      %260 = math.exp %splat : tensor<10xf32>
      %261 = scf.execute_region -> index {
        %alloc_49 = memref.alloc() : memref<6x3x6xi32>
        %277 = vector.broadcast %c1_i32 : i32 to vector<10x6xi32>
        %278 = vector.broadcast %98 : i1 to vector<10x6xi1>
        %279 = vector.gather %alloc_49[%61, %c9, %c12] [%277], %278, %277 : memref<6x3x6xi32>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi32> into vector<10x6xi32>
        %280 = vector.broadcast %c6 : index to vector<10xindex>
        vector.scatter %alloc_10[%c3] [%280], %78, %78 : memref<10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %281 = math.cttz %c1401205587_i64 : i64
        %282 = arith.addi %extracted, %c1192064704_i64 : i64
        %283 = math.fpowi %11, %1 : tensor<6x3x6xf16>, tensor<6x3x6xi32>
        %from_elements_50 = tensor.from_elements %cst_4, %cst, %cst_0, %cst_23, %cst_4, %cst_5, %cst_4, %cst_4, %cst_4, %cst_23, %cst_5, %cst_4, %cst_0, %cst_23, %cst, %cst_0, %cst_5, %cst_4, %cst, %cst, %cst_23, %cst_5, %cst, %cst, %cst_4, %cst_0, %cst, %cst_23, %cst_0, %cst_23, %cst_4, %cst, %cst_23, %cst_23, %cst_5, %cst_23, %cst, %cst_23, %cst, %cst, %cst_5, %cst, %cst_23, %cst_0, %cst_4, %cst, %cst_23, %cst_0, %cst, %cst_4, %cst_5, %cst, %cst, %cst_5, %cst_5, %cst, %cst_4, %cst, %cst_4, %cst_23, %cst, %cst, %cst_5, %cst_23, %cst_5, %cst_4, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst, %cst_23, %cst_23, %cst_0, %cst_4, %cst, %cst_5, %cst_23, %cst_5, %cst_0, %cst, %cst_5, %cst_23, %cst_0, %cst, %cst_23, %cst_4, %cst_23, %cst_5, %cst_4, %cst_0, %cst_5, %cst, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_0, %cst_23, %cst_0, %cst_23, %cst_5, %cst_4, %cst_4, %cst_0, %cst_5 : tensor<6x3x6xf32>
        %284 = index.sizeof
        %285 = math.log1p %2 : tensor<10x6xf16>
        %286 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %287 = index.sizeof
        %288 = arith.addf %cst_2, %cst_3 : f16
        %289 = vector.broadcast %c3 : index to vector<3xindex>
        %290 = vector.broadcast %extracted_27 : i1 to vector<3xi1>
        %291 = vector.broadcast %cst : f32 to vector<3xf32>
        vector.scatter %23[%c2, %c2, %c4] [%289], %290, %291 : memref<6x3x6xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %292 = vector.insertelement %extracted_27, %55[%30 : index] : vector<10xi1>
        %293 = index.maxs %32, %c4
        %294 = vector.insert %c1_i32, %286 [4] : i32 into vector<10xi32>
        %295 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        %296 = vector.insert %295, %277 [8] : vector<6xi32> into vector<10x6xi32>
        scf.yield %293 : index
      }
      %262 = math.log1p %9 : tensor<3x10xf32>
      %263 = math.roundeven %3 : tensor<10xf16>
      %alloc_48 = memref.alloc() : memref<3x6xi32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48 : memref<3x6xi32>) outs(%1 : tensor<6x3x6xi32>) {
      ^bb0(%in: i32, %out: i32):
        %277 = affine.max affine_map<(d0, d1, d2) -> (d2 - 1)>(%30, %c0, %261)
        %278 = math.sqrt %2 : tensor<10x6xf16>
        %279 = arith.cmpi slt, %c1_i32, %in : i32
        %280 = math.exp2 %9 : tensor<3x10xf32>
        %281 = index.maxu %c14, %c14
        %282 = arith.minui %false, %true_1 : i1
        %283 = math.sqrt %4 : tensor<3x10xf16>
        %284 = index.casts %c11 : index to i32
        %splat_49 = tensor.splat %c1401205587_i64 : tensor<10xi64>
        %285 = math.log10 %11 : tensor<6x3x6xf16>
        %286 = vector.matrix_multiply %26, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi32>, vector<10xi32>) -> vector<10xi32>
        %cst_50 = arith.constant 2.800000e+04 : f16
        %287 = arith.xori %c89198615_i64, %c382863489_i64 : i64
        %false_51 = index.bool.constant false
        %288 = math.ctpop %8 : tensor<3x10xi32>
        %289 = math.sqrt %4 : tensor<3x10xf16>
        %290 = memref.load %23[%c5, %c1, %c4] : memref<6x3x6xf32>
        %291 = math.expm1 %4 : tensor<3x10xf16>
        %292 = arith.maxui %c382863489_i64, %c382863489_i64 : i64
        %cst_52 = arith.constant 5.212800e+04 : f16
        %293 = index.add %64, %c5
        %294 = vector.multi_reduction <or>, %107, %true_1 [0, 1] : vector<3x10xi1> to i1
        %from_elements_53 = tensor.from_elements %cst_0, %cst_23, %cst_4, %cst_5, %cst, %cst_23, %cst_5, %cst_0, %cst_4, %cst_4, %cst_23, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_4, %cst, %cst, %cst_0, %cst, %cst_5, %cst_23, %cst_5, %cst, %cst, %cst_5, %cst_5, %cst_0, %cst, %cst_5, %cst_0, %cst_5, %cst_23, %cst, %cst_23, %cst_4, %cst_4, %cst_23, %cst_0, %cst_4, %cst_5, %cst_4, %cst, %cst_23, %cst_4, %cst_5, %cst_5, %cst_23, %cst_0, %cst_5, %cst_0, %cst_0, %cst, %cst_5, %cst_5, %cst_4, %cst_4, %cst_4, %cst_23, %cst_5, %cst_23, %cst_5, %cst, %cst_5, %cst_23, %cst_4, %cst_0, %cst_0, %cst_23, %cst_23, %cst_0, %cst, %cst_23, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst_23, %cst_5, %cst_4, %cst, %cst_5, %cst_23, %cst_5, %cst_4, %cst_5, %cst_23, %cst_4, %cst_23, %cst_23, %cst, %cst, %cst_4, %cst_5, %cst_23, %cst_23, %cst, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst, %cst_4, %cst_23 : tensor<6x3x6xf32>
        %295 = math.floor %0 : tensor<10xf32>
        %296 = index.casts %c8 : index to i32
        %297 = affine.load %alloc_19[%c12] : memref<10xi16>
        memref.assume_alignment %alloc_9, 4 : memref<3x10xi64>
        %298 = math.tan %cst_23 : f32
        %299 = math.log2 %11 : tensor<6x3x6xf16>
        %300 = arith.divsi %c1401205587_i64, %c324838011_i64 : i64
        %301 = affine.load %alloc_6[%c12, %c11] : memref<3x10xf32>
        affine.store %in, %alloc_13[%c0] : memref<10xi32>
        linalg.yield %c1_i32 : i32
      } -> tensor<6x3x6xi32>
      %265 = affine.load %alloc_12[%c6, %c6, %c8] : memref<6x3x6xf32>
      %266 = vector.broadcast %extracted_27 : i1 to vector<10x10xi1>
      %267 = vector.outerproduct %78, %78, %266 {kind = #vector.kind<add>} : vector<10xi1>, vector<10xi1>
      %268 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
      %269 = vector.outerproduct %113, %19, %268 {kind = #vector.kind<maxui>} : vector<10xi32>, vector<10xi32>
      %270 = arith.addi %false, %98 : i1
      %271 = arith.cmpi slt, %false_30, %true_1 : i1
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %96, %96, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
      %c1991113567_i32 = arith.constant 1991113567 : i32
      %273 = math.copysign %2, %2 : tensor<10x6xf16>
      %274 = arith.cmpi slt, %c1192064704_i64, %c324838011_i64 : i64
      %275 = arith.shrui %false_30, %false_30 : i1
      %276 = vector.create_mask %c6 : vector<10xi1>
      scf.yield %c0 : index
    }
    case 3 {
      %260 = index.maxu %c11, %111
      vector.print %28 : vector<i64>
      %261 = vector.shuffle %55, %55 [1, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 17] : vector<10xi1>, vector<10xi1>
      %collapsed_48 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xf16> into tensor<60xf16>
      %262 = arith.mulf %cst_4, %cst_5 : f32
      %263 = memref.alloca_scope  -> (memref<10x6xi16>) {
        %272 = arith.divsi %69, %false_30 : i1
        %alloc_50 = memref.alloc() : memref<3x10xi32>
        %c1893906753_i64 = arith.constant 1893906753 : i64
        %273 = math.ctpop %20 : tensor<10xi32>
        %false_51 = arith.constant false
        %274 = vector.transfer_read %16[%48], %false_51 : tensor<10xi1>, vector<i1>
        %275 = vector.splat %c5 : vector<6x3x6xindex>
        %276 = math.copysign %collapsed_48, %collapsed_48 : tensor<60xf16>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %33, %33, %c1_i32 : vector<10xi32>, vector<10xi32> into i32
        %278 = arith.divsi %false_30, %false_51 : i1
        %279 = vector.insert %78, %107 [0] : vector<10xi1> into vector<3x10xi1>
        %280 = arith.remf %cst, %cst_23 : f32
        %281 = index.casts %260 : index to i32
        %282 = memref.atomic_rmw assign %c1_i32, %alloc_18[%c0, %c4] : (i32, memref<3x10xi32>) -> i32
        %283 = index.floordivs %48, %64
        %284 = memref.load %23[%c1, %c1, %c3] : memref<6x3x6xf32>
        %285 = index.maxu %32, %48
        %286 = math.sqrt %11 : tensor<6x3x6xf16>
        %287 = index.sub %c3, %c8
        %288 = vector.bitcast %113 : vector<10xi32> to vector<10xi32>
        %289 = arith.divsi %c324838011_i64, %c1401205587_i64 : i64
        %290 = index.sub %32, %c4
        %291 = arith.divui %false_51, %false_30 : i1
        affine.store %cst_0, %23[%c5, %c15, %c5] : memref<6x3x6xf32>
        %292 = affine.min affine_map<(d0) -> (d0 * 8 + 16)>(%c8)
        %293 = math.expm1 %13 : tensor<10x6xf16>
        %294 = vector.broadcast %c1 : index to vector<10xindex>
        %295 = vector.broadcast %cst_3 : f16 to vector<10xf16>
        vector.scatter %alloc_14[%c2, %c0, %c3] [%294], %78, %295 : memref<6x3x6xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %296 = math.exp %cst_4 : f32
        %297 = vector.bitcast %26 : vector<1xi32> to vector<1xi32>
        %298 = math.log1p %cst_3 : f16
        %299 = arith.xori %false, %extracted_27 : i1
        %300 = arith.divsi %69, %true : i1
        %301 = arith.minsi %extracted_27, %69 : i1
        %alloc_52 = memref.alloc() : memref<10x6xi16>
        memref.alloca_scope.return %alloc_52 : memref<10x6xi16>
      }
      %264 = index.divs %c7, %111
      %265 = math.fpowi %0, %20 : tensor<10xf32>, tensor<10xi32>
      %266 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %extracted_49 = tensor.extract %14[%c0, %c5] : tensor<3x10xi32>
      %267 = math.log10 %9 : tensor<3x10xf32>
      %268 = math.expm1 %cst_23 : f32
      %269 = math.absi %15 : tensor<3x10xi64>
      %270 = scf.index_switch %c11 -> tensor<3x10xi64> 
      case 1 {
        %272 = arith.shli %true_1, %false_30 : i1
        %273 = math.expm1 %11 : tensor<6x3x6xf16>
        %274 = math.round %collapsed_48 : tensor<60xf16>
        %275 = math.cttz %c22599_i16 : i16
        %276 = arith.xori %true, %false_30 : i1
        %cst_50 = arith.constant 1.018400e+04 : f16
        %277 = memref.load %alloc_19[%c1] : memref<10xi16>
        %278 = bufferization.to_tensor %alloc_17 : memref<3x10xi1>
        %279 = math.log10 %2 : tensor<10x6xf16>
        %280 = math.rsqrt %11 : tensor<6x3x6xf16>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %266, %96, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
        %282 = vector.splat %extracted_27 : vector<3x10xi1>
        %283 = vector.insert %true, %78 [2] : i1 into vector<10xi1>
        %284 = index.add %c1, %111
        %285 = math.cos %9 : tensor<3x10xf32>
        %alloca_51 = memref.alloca() : memref<10x6xi32>
        scf.yield %5 : tensor<3x10xi64>
      }
      case 2 {
        %272 = arith.divf %cst_0, %cst_5 : f32
        %273 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
        %274 = vector.outerproduct %33, %33, %273 {kind = #vector.kind<minsi>} : vector<10xi32>, vector<10xi32>
        %275 = bufferization.clone %alloc_7 : memref<6x3x6xi64> to memref<6x3x6xi64>
        %276 = vector.bitcast %96 : vector<1xi32> to vector<1xi32>
        %277 = math.tanh %9 : tensor<3x10xf32>
        %278 = math.atan2 %11, %11 : tensor<6x3x6xf16>
        memref.store %cst, %alloc[%c1, %c7] : memref<3x10xf32>
        %279 = math.ctlz %20 : tensor<10xi32>
        %280 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
        %281 = math.exp %collapsed_48 : tensor<60xf16>
        %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<10xi64> into tensor<10x1xi64>
        %collapsed_50 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x3x6xf16> into tensor<18x6xf16>
        %282 = bufferization.to_tensor %alloc_8 : memref<10x6xi1>
        %283 = math.ctpop %1 : tensor<6x3x6xi32>
        %284 = vector.multi_reduction <mul>, %55, %55 [] : vector<10xi1> to vector<10xi1>
        %285 = math.absf %cst : f32
        scf.yield %15 : tensor<3x10xi64>
      }
      case 3 {
        %c1172925618_i64 = arith.constant 1172925618 : i64
        %272 = vector.multi_reduction <xor>, %19, %extracted_49 [0] : vector<10xi32> to i32
        %true_50 = index.bool.constant true
        %273 = math.fpowi %0, %20 : tensor<10xf32>, tensor<10xi32>
        %274 = index.ceildivu %c5, %c3
        %275 = vector.broadcast %272 : i32 to vector<10x6xi32>
        %276 = arith.maxf %cst_23, %cst_4 : f32
        %277 = arith.andi %c89198615_i64, %c382863489_i64 : i64
        %278 = vector.splat %c2 : vector<10xindex>
        %279 = math.tanh %cst_23 : f32
        %280 = vector.load %alloc_7[%c1, %c2, %c1] : memref<6x3x6xi64>, vector<6x3x6xi64>
        %281 = vector.create_mask %48, %c14, %111 : vector<6x3x6xi1>
        %282 = vector.extract %33[3] : vector<10xi32>
        %283 = vector.broadcast %false : i1 to vector<10x10xi1>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %107, %107, %283 : vector<3x10xi1>, vector<3x10xi1> into vector<10x10xi1>
        %285 = arith.cmpi ule, %c22599_i16, %c22599_i16 : i16
        %286 = math.absi %7 : tensor<3x10xi1>
        scf.yield %5 : tensor<3x10xi64>
      }
      default {
        %272 = math.log2 %11 : tensor<6x3x6xf16>
        %273 = arith.shli %c382863489_i64, %c1401205587_i64 : i64
        %274 = index.ceildivu %32, %111
        %275 = math.atan2 %2, %13 : tensor<10x6xf16>
        %276 = memref.atomic_rmw assign %cst_5, %92[%c8] : (f32, memref<10xf32>) -> f32
        %277 = arith.maxf %cst_0, %cst_5 : f32
        %278 = vector.broadcast %false_30 : i1 to vector<6x3x6xi1>
        %279 = vector.broadcast %c1_i32 : i32 to vector<6x3x6xi32>
        %280 = vector.gather %alloc_17[%260, %274] [%279], %278, %278 : memref<3x10xi1>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xi1> into vector<6x3x6xi1>
        %281 = math.sqrt %2 : tensor<10x6xf16>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %55, %78, %true_1 : vector<10xi1>, vector<10xi1> into i1
        %283 = vector.broadcast %c12 : index to vector<10xindex>
        %284 = vector.broadcast %c22599_i16 : i16 to vector<10xi16>
        vector.scatter %263[%c0, %c2] [%283], %55, %284 : memref<10x6xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %true_50 = index.bool.constant true
        %285 = math.log10 %9 : tensor<3x10xf32>
        %286 = vector.multi_reduction <maxui>, %78, %78 [] : vector<10xi1> to vector<10xi1>
        %287 = vector.broadcast %false_30 : i1 to vector<6x3x6xi1>
        vector.print %28 : vector<i64>
        %288 = vector.insert %69, %55 [2] : i1 into vector<10xi1>
        scf.yield %15 : tensor<3x10xi64>
      }
      %271 = index.add %c15, %c12
      %c970612428_i64 = arith.constant 970612428 : i64
      scf.yield %97 : index
    }
    default {
      %260 = math.sqrt %splat : tensor<10xf32>
      %extracted_48 = tensor.extract %from_elements_28[%c1, %c3] : tensor<3x10xi16>
      %261 = arith.minui %c382863489_i64, %c120597359_i64 : i64
      %262 = vector.broadcast %111 : index to vector<6xindex>
      %263 = vector.broadcast %extracted_27 : i1 to vector<6xi1>
      %264 = vector.broadcast %cst_4 : f32 to vector<6xf32>
      vector.scatter %60[%c3, %c1, %c5] [%262], %263, %264 : memref<6x3x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
      %265 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %266 = vector.maskedload %alloc[%c2, %c4], %78, %265 : memref<3x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %267 = math.fpowi %cst_4, %c1_i32 : f32, i32
      %268 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
      %269 = vector.outerproduct %113, %113, %268 {kind = #vector.kind<minsi>} : vector<10xi32>, vector<10xi32>
      %270 = math.round %3 : tensor<10xf16>
      %271 = math.roundeven %9 : tensor<3x10xf32>
      %272 = vector.extract %33[2] : vector<10xi32>
      %273 = vector.matrix_multiply %55, %78 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      %274 = index.sub %c4, %97
      %275 = index.maxs %c6, %c1
      %276 = index.ceildivs %111, %c11
      %277 = bufferization.clone %alloc_14 : memref<6x3x6xf16> to memref<6x3x6xf16>
      %278 = memref.alloca_scope  -> (i64) {
        %279 = arith.minf %cst_0, %cst_5 : f32
        %280 = index.maxu %c15, %c14
        %281 = vector.splat %extracted : vector<10xi64>
        %282 = math.log10 %cst_23 : f32
        %283 = math.exp2 %cst_4 : f32
        %284 = vector.broadcast %c11 : index to vector<10xindex>
        vector.scatter %alloc_6[%c2, %c0] [%284], %55, %266 : memref<3x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %extracted_49 = tensor.extract %from_elements[%c1] : tensor<10xi64>
        %from_elements_50 = tensor.from_elements %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2 : tensor<10x6xf16>
        %285 = arith.mulf %cst_5, %cst_5 : f32
        %286 = math.ctlz %8 : tensor<3x10xi32>
        %287 = index.castu %false : i1 to index
        affine.store %cst, %alloc_20[%c1] : memref<10xf32>
        %288 = index.maxu %64, %c1
        %alloc_51 = memref.alloc() : memref<3x10xi16>
        %true_52 = index.bool.constant true
        %true_53 = arith.constant true
        %289 = affine.max affine_map<(d0) -> (0)>(%276)
        %290 = vector.insert %c1_i32, %26 [0] : i32 into vector<1xi32>
        %291 = math.sqrt %3 : tensor<10xf16>
        %292 = math.fpowi %11, %1 : tensor<6x3x6xf16>, tensor<6x3x6xi32>
        %293 = vector.flat_transpose %33 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %294 = index.sub %97, %97
        %295 = math.fma %cst_5, %cst_0, %cst_23 : f32
        %296 = bufferization.clone %alloc_8 : memref<10x6xi1> to memref<10x6xi1>
        %297 = arith.minsi %c22599_i16, %c22599_i16 : i16
        %from_elements_54 = tensor.from_elements %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3 : tensor<3x10xf16>
        %298 = arith.minf %cst_2, %cst_3 : f16
        %299 = arith.cmpi slt, %true, %true_1 : i1
        %300 = math.ctlz %22 : tensor<i32>
        %301 = vector.broadcast %c1_i32 : i32 to vector<3x10xi32>
        %302 = vector.gather %alloc_17[%c1, %c0] [%301], %107, %107 : memref<3x10xi1>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi1> into vector<3x10xi1>
        memref.store %cst, %23[%c3, %c2, %c0] : memref<6x3x6xf32>
        %303 = math.fpowi %4, %14 : tensor<3x10xf16>, tensor<3x10xi32>
        memref.alloca_scope.return %extracted : i64
      }
      scf.yield %c12 : index
    }
    %117 = vector.extract %113[0] : vector<10xi32>
    %118 = vector.flat_transpose %80 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
    %119 = math.sqrt %0 : tensor<10xf32>
    %120 = math.ceil %13 : tensor<10x6xf16>
    %121 = index.add %c2, %c4
    %122 = math.sqrt %11 : tensor<6x3x6xf16>
    affine.store %cst_23, %92[%c5] : memref<10xf32>
    %123 = arith.subi %c120597359_i64, %c120597359_i64 : i64
    %124 = math.exp %3 : tensor<10xf16>
    %125 = arith.muli %false_30, %69 : i1
    %126 = math.ceil %4 : tensor<3x10xf16>
    %127 = index.mul %121, %c5
    %128 = vector.multi_reduction <mul>, %113, %c1_i32 [0] : vector<10xi32> to i32
    %from_elements_32 = tensor.from_elements %false_30, %extracted_27, %extracted_27, %69, %extracted_27, %98, %98, %extracted_27, %extracted_27, %false, %true, %false, %true, %false, %true, %98, %69, %false, %98, %98, %extracted_27, %true, %69, %false_30, %69, %69, %true_1, %true_1, %true, %false_30, %true, %extracted_27, %true, %false_30, %69, %true, %true, %69, %98, %true_1, %false, %true, %true_1, %extracted_27, %true, %false_30, %extracted_27, %true_1, %true, %false, %extracted_27, %false, %false, %true, %true, %true, %false, %false_30, %false, %98 : tensor<10x6xi1>
    %129 = vector.broadcast %c2 : index to vector<10xindex>
    vector.scatter %alloc_21[%c4] [%129], %55, %55 : memref<10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
    %130 = arith.remf %cst_0, %cst : f32
    %131 = vector.flat_transpose %80 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
    %132 = math.rsqrt %cst_3 : f16
    %133 = bufferization.clone %101 : memref<6x3x6xf16> to memref<6x3x6xf16>
    %134 = bufferization.to_memref %14 : memref<3x10xi32>
    %135 = index.casts %c13 : index to i32
    scf.execute_region {
      %260 = arith.divf %cst_5, %cst_23 : f32
      %261 = index.castu %98 : i1 to index
      affine.for %arg1 = 0 to 89 {
      }
      %262 = tensor.empty() : tensor<3x6xi32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262 : tensor<3x6xi32>) outs(%1 : tensor<6x3x6xi32>) {
      ^bb0(%in: i32, %out: i32):
        affine.store %69, %alloc_21[%c1] : memref<10xi1>
        %271 = vector.broadcast %69 : i1 to vector<i1>
        %272 = vector.transfer_write %271, %from_elements_32[%61, %c8] : vector<i1>, tensor<10x6xi1>
        %273 = arith.divf %cst_5, %cst : f32
        %274 = math.log1p %11 : tensor<6x3x6xf16>
        %275 = math.round %cst_23 : f32
        %276 = math.expm1 %cst_23 : f32
        %277 = math.fpowi %0, %20 : tensor<10xf32>, tensor<10xi32>
        %278 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
        %279 = math.exp %cst_23 : f32
        %280 = vector.multi_reduction <add>, %113, %128 [0] : vector<10xi32> to i32
        %281 = arith.minf %cst_0, %cst : f32
        %282 = vector.matrix_multiply %26, %80 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi32>, vector<10xi32>) -> vector<10xi32>
        %283 = index.divu %c15, %c14
        %284 = index.maxu %c13, %c0
        %285 = math.copysign %cst_2, %cst_2 : f16
        %286 = index.sizeof
        %287 = index.mul %c0, %c12
        %288 = math.fma %9, %9, %9 : tensor<3x10xf32>
        %289 = arith.shrui %extracted, %c324838011_i64 : i64
        %290 = vector.broadcast %out : i32 to vector<10xi32>
        %291 = vector.shuffle %33, %282 [1, 3, 4, 6, 8, 10, 11, 12, 15] : vector<10xi32>, vector<10xi32>
        %292 = arith.divsi %extracted_27, %true : i1
        %293 = arith.xori %extracted_27, %true : i1
        %collapsed_52 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
        %294 = math.tanh %cst_5 : f32
        %295 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
        %296 = vector.outerproduct %118, %113, %295 {kind = #vector.kind<or>} : vector<10xi32>, vector<10xi32>
        %297 = vector.bitcast %96 : vector<1xi32> to vector<1xf32>
        %298 = arith.shrsi %false_30, %false : i1
        memref.assume_alignment %134, 16 : memref<3x10xi32>
        %299 = math.log10 %0 : tensor<10xf32>
        vector.print %55 : vector<10xi1>
        %300 = arith.minui %in, %280 : i32
        linalg.yield %out : i32
      } -> tensor<6x3x6xi32>
      %true_48 = index.bool.constant true
      memref.alloca_scope  {
        %271 = vector.broadcast %c120597359_i64 : i64 to vector<10x10xi64>
        vector.transfer_write %271, %alloc_7[%32, %c13, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x10xi64>, memref<6x3x6xi64>
        %272 = math.cos %cst_23 : f32
        %273 = index.mul %c7, %61
        %274 = math.copysign %cst_3, %cst_3 : f16
        %275 = vector.extract %113[5] : vector<10xi32>
        %276 = arith.minui %98, %false : i1
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (4, d3 ceildiv 32, d3 ceildiv 32)>(%c6, %c10, %c6, %48)
        %278 = vector.matrix_multiply %118, %113 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %279 = vector.multi_reduction <add>, %113, %19 [] : vector<10xi32> to vector<10xi32>
        %280 = math.tanh %cst_2 : f16
        %281 = math.cttz %98 : i1
        %282 = vector.insert %c1_i32, %113 [9] : i32 into vector<10xi32>
        affine.store %cst_5, %23[%c15, %c0, %c8] : memref<6x3x6xf32>
        %283 = math.round %2 : tensor<10x6xf16>
        %284 = memref.atomic_rmw maxu %c1_i32, %134[%c2, %c3] : (i32, memref<3x10xi32>) -> i32
        %285 = arith.ori %98, %false_30 : i1
        %286 = bufferization.clone %alloc_20 : memref<10xf32> to memref<10xf32>
        %287 = vector.flat_transpose %80 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %288 = vector.broadcast %cst_4 : f32 to vector<6x3x6xf32>
        %289 = math.tanh %cst : f32
        %290 = index.maxu %c12, %121
        %291 = arith.shrui %128, %128 : i32
        %292 = index.casts %261 : index to i32
        %293 = arith.muli %true, %true : i1
        %294 = vector.insert %c1_i32, %278 [0] : i32 into vector<1xi32>
        %295 = vector.extract %33[1] : vector<10xi32>
        %296 = arith.divui %false, %true_48 : i1
        %297 = math.log2 %cst_5 : f32
        %298 = memref.atomic_rmw minf %cst_5, %alloc_12[%c1, %c1, %c4] : (f32, memref<6x3x6xf32>) -> f32
        %from_elements_52 = tensor.from_elements %c89198615_i64, %c1401205587_i64, %c1401205587_i64, %c324838011_i64, %c120597359_i64, %c89198615_i64, %c1192064704_i64, %extracted, %extracted, %c382863489_i64, %extracted, %c120597359_i64, %c382863489_i64, %extracted, %c89198615_i64, %c1192064704_i64, %c382863489_i64, %extracted, %c324838011_i64, %c1401205587_i64, %c1401205587_i64, %c382863489_i64, %c1401205587_i64, %extracted, %extracted, %c120597359_i64, %extracted, %c382863489_i64, %extracted, %c324838011_i64, %c382863489_i64, %c89198615_i64, %c89198615_i64, %c120597359_i64, %c1401205587_i64, %extracted, %c382863489_i64, %extracted, %c324838011_i64, %c1401205587_i64, %c1192064704_i64, %c1401205587_i64, %c120597359_i64, %c324838011_i64, %c120597359_i64, %extracted, %c89198615_i64, %c89198615_i64, %c1401205587_i64, %c120597359_i64, %extracted, %c89198615_i64, %c1192064704_i64, %c324838011_i64, %c89198615_i64, %c1401205587_i64, %c382863489_i64, %extracted, %c1401205587_i64, %c120597359_i64 : tensor<10x6xi64>
        %299 = tensor.empty() : tensor<10x6xi32>
        %300 = math.fpowi %2, %299 : tensor<10x6xf16>, tensor<10x6xi32>
        %301 = tensor.empty() : tensor<10xi32>
      }
      %264 = math.round %2 : tensor<10x6xf16>
      %265 = math.cttz %1 : tensor<6x3x6xi32>
      %266 = math.log1p %11 : tensor<6x3x6xf16>
      memref.assume_alignment %alloc_20, 2 : memref<10xf32>
      %c0_i32_49 = arith.constant 0 : i32
      %267 = vector.transfer_read %18[%97, %261], %c0_i32_49 : tensor<10x3xi32>, vector<i32>
      %268 = tensor.empty() : tensor<10x6xi32>
      %269 = math.fpowi %2, %268 : tensor<10x6xf16>, tensor<10x6xi32>
      %false_50 = index.bool.constant false
      memref.assume_alignment %alloc_16, 1 : memref<10xi1>
      %generated_51 = tensor.generate %c15, %c9 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %271 = vector.insert %128, %26 [0] : i32 into vector<1xi32>
        %272 = math.sqrt %9 : tensor<3x10xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %33, %33, %c1_i32 : vector<10xi32>, vector<10xi32> into i32
        %274 = vector.broadcast %30 : index to vector<3xindex>
        %275 = vector.broadcast %false : i1 to vector<3xi1>
        %276 = vector.broadcast %128 : i32 to vector<3xi32>
        vector.scatter %alloc_13[%c0] [%274], %275, %276 : memref<10xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        tensor.yield %cst_2 : f16
      } : tensor<?x?x6xf16>
      %270 = math.exp %cst_3 : f16
      scf.yield
    }
    %136 = math.fma %4, %4, %4 : tensor<3x10xf16>
    %137 = vector.bitcast %131 : vector<10xi32> to vector<10xi32>
    %138 = affine.for %arg1 = 0 to 14 iter_args(%arg2 = %134) -> (memref<3x10xi32>) {
      affine.yield %134 : memref<3x10xi32>
    }
    %139 = math.absi %17 : tensor<10xi1>
    %140 = math.round %3 : tensor<10xf16>
    %141 = index.ceildivs %c6, %61
    %142 = math.absf %13 : tensor<10x6xf16>
    %143 = arith.maxui %128, %c1_i32 : i32
    %144 = bufferization.to_tensor %alloc_7 : memref<6x3x6xi64>
    %145 = affine.for %arg1 = 0 to 113 iter_args(%arg2 = %64) -> (index) {
      affine.yield %c0 : index
    }
    %146 = arith.mulf %cst_2, %cst_2 : f16
    %147 = index.castu %48 : index to i32
    %148 = math.log2 %11 : tensor<6x3x6xf16>
    %149 = vector.broadcast %128 : i32 to vector<10x10xi32>
    %150 = vector.outerproduct %80, %19, %149 {kind = #vector.kind<maxsi>} : vector<10xi32>, vector<10xi32>
    %151 = vector.splat %c13 : vector<10xindex>
    %alloc_33 = memref.alloc() : memref<6x3xi32>
    %152 = tensor.empty() : tensor<3xi32>
    %153 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_33, %152, %152 : memref<6x3xi32>, tensor<3xi32>, tensor<3xi32>) outs(%1 : tensor<6x3x6xi32>) {
    ^bb0(%in: i32, %in_48: i32, %in_49: i32, %out: i32):
      %cst_50 = arith.constant 1.23007245E+9 : f32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %137, %80, %128 : vector<10xi32>, vector<10xi32> into i32
      %261 = math.exp %cst : f32
      %262 = math.tanh %13 : tensor<10x6xf16>
      %263 = math.exp2 %2 : tensor<10x6xf16>
      vector.print %80 : vector<10xi32>
      %264 = math.log10 %11 : tensor<6x3x6xf16>
      %265 = arith.xori %extracted_27, %false : i1
      %266 = memref.realloc %alloc_21 : memref<10xi1> to memref<10xi1>
      %267 = vector.multi_reduction <add>, %118, %137 [] : vector<10xi32> to vector<10xi32>
      %splat_51 = tensor.splat %false : tensor<3x10xi1>
      affine.store %cst_5, %alloc_6[%c4, %c11] : memref<3x10xf32>
      %268 = math.log1p %cst : f32
      %269 = index.sizeof
      %270 = vector.multi_reduction <xor>, %26, %96 [] : vector<1xi32> to vector<1xi32>
      %271 = bufferization.to_tensor %133 : memref<6x3x6xf16>
      %272 = index.mul %269, %269
      scf.index_switch %c12 
      case 1 {
        %alloca_54 = memref.alloca() : memref<10xf32>
        %285 = math.log1p %2 : tensor<10x6xf16>
        %286 = arith.subi %out, %in_49 : i32
        %287 = math.expm1 %4 : tensor<3x10xf16>
        %288 = arith.divsi %c1192064704_i64, %extracted : i64
        %289 = index.maxs %127, %27
        %290 = arith.shrui %c1192064704_i64, %extracted : i64
        %alloca_55 = memref.alloca() : memref<10x6xi16>
        %291 = math.log %13 : tensor<10x6xf16>
        %292 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %293 = vector.broadcast %extracted_27 : i1 to vector<6xi1>
        %294 = vector.maskedload %92[%c7], %293, %292 : memref<10xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %295 = index.maxs %c4, %121
        %296 = vector.broadcast %cst_3 : f16 to vector<6x10xf16>
        vector.transfer_write %296, %alloc_14[%295, %c0, %272] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x10xf16>, memref<6x3x6xf16>
        %297 = vector.shuffle %292, %292 [0, 2, 6, 8] : vector<6xf32>, vector<6xf32>
        %298 = index.sizeof
        %from_elements_56 = tensor.from_elements %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2 : tensor<6x3x6xf16>
        %299 = math.copysign %0, %0 : tensor<10xf32>
        scf.yield
      }
      case 2 {
        %285 = math.log1p %cst_2 : f16
        %286 = memref.load %92[%c7] : memref<10xf32>
        %287 = vector.extract %80[3] : vector<10xi32>
        %288 = arith.divf %cst_5, %cst_0 : f32
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %118, %19, %in_49 : vector<10xi32>, vector<10xi32> into i32
        %290 = arith.divsi %c89198615_i64, %extracted : i64
        %291 = arith.divsi %c22599_i16, %c22599_i16 : i16
        %292 = vector.multi_reduction <minsi>, %131, %in_49 [0] : vector<10xi32> to i32
        %false_54 = index.bool.constant false
        %false_55 = index.bool.constant false
        %from_elements_56 = tensor.from_elements %cst_4, %cst, %cst, %cst_4, %cst_5, %cst, %cst_23, %cst_0, %cst_23, %cst_4, %cst, %cst_23, %cst_5, %cst_23, %cst_5, %cst_4, %cst_23, %cst_4, %cst_4, %cst_5, %cst_23, %cst_4, %cst, %cst_4, %cst_23, %cst_4, %cst_0, %cst_4, %cst_4, %cst, %cst_5, %cst_4, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst, %cst_5, %cst, %cst_5, %cst, %cst_23, %cst_5, %cst_5, %cst_0, %cst_23, %cst_5, %cst_23, %cst_0, %cst_4, %cst_0, %cst, %cst_23, %cst, %cst, %cst, %cst_23, %cst, %cst_5 : tensor<10x6xf32>
        %293 = arith.divf %cst_5, %cst_5 : f32
        %294 = bufferization.clone %alloc_21 : memref<10xi1> to memref<10xi1>
        %295 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
        %296 = vector.outerproduct %26, %96, %295 {kind = #vector.kind<maxui>} : vector<1xi32>, vector<1xi32>
        %297 = arith.muli %c22599_i16, %c22599_i16 : i16
        %collapsed_57 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
        scf.yield
      }
      case 3 {
        %285 = math.log2 %11 : tensor<6x3x6xf16>
        %286 = math.ctpop %in : i32
        %287 = arith.ori %c1192064704_i64, %extracted : i64
        %288 = math.tanh %2 : tensor<10x6xf16>
        %289 = tensor.empty(%c7) : tensor<3x?xi64>
        %290 = index.add %c9, %97
        %291 = vector.extract %96[0] : vector<1xi32>
        %292 = math.sqrt %13 : tensor<10x6xf16>
        %293 = vector.insert %in, %137 [1] : i32 into vector<10xi32>
        %294 = math.ceil %9 : tensor<3x10xf32>
        %295 = math.log2 %cst_2 : f16
        %296 = math.round %3 : tensor<10xf16>
        %297 = vector.bitcast %80 : vector<10xi32> to vector<10xf32>
        %298 = tensor.empty(%c3) : tensor<?xi64>
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 * 16) ceildiv 32, d2, d1 * -15, d1 * -16 + d3 - d1)>(%c14, %c5, %c3, %c9)
        %300 = vector.create_mask %c15, %c0 : vector<3x10xi1>
        scf.yield
      }
      default {
        %false_54 = arith.constant false
        %285 = vector.transfer_read %splat_51[%32, %272], %false_54 : tensor<3x10xi1>, vector<6xi1>
        %286 = memref.atomic_rmw maxf %cst, %alloc_20[%c9] : (f32, memref<10xf32>) -> f32
        %false_55 = index.bool.constant false
        %287 = math.expm1 %cst_2 : f16
        %288 = math.cttz %1 : tensor<6x3x6xi32>
        %289 = index.ceildivs %c10, %141
        %290 = vector.broadcast %cst_3 : f16 to vector<6x3x6xf16>
        %291 = bufferization.clone %23 : memref<6x3x6xf32> to memref<6x3x6xf32>
        %292 = math.tanh %9 : tensor<3x10xf32>
        %expanded = tensor.expand_shape %from_elements_28 [[0], [1, 2]] : tensor<3x10xi16> into tensor<3x10x1xi16>
        %293 = math.log10 %cst_4 : f32
        %294 = math.roundeven %cst_5 : f32
        %295 = arith.shrui %c324838011_i64, %extracted : i64
        %true_56 = index.bool.constant true
        %296 = arith.cmpi sge, %98, %true : i1
        %297 = vector.broadcast %cst_23 : f32 to vector<f32>
        %298 = vector.transfer_write %297, %9[%127, %289] : vector<f32>, tensor<3x10xf32>
      }
      %273 = index.casts %true_1 : i1 to index
      %c1_i32_52 = arith.constant 1 : i32
      %c0_i32_53 = arith.constant 0 : i32
      %274 = vector.transfer_read %134[%c4, %c11], %c0_i32_53 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x10xi32>, vector<10xi32>
      scf.index_switch %272 
      case 1 {
        %285 = math.tanh %9 : tensor<3x10xf32>
        %286 = vector.bitcast %26 : vector<1xi32> to vector<1xi32>
        %287 = vector.insert %c1_i32_52, %137 [6] : i32 into vector<10xi32>
        %288 = arith.shrui %false_30, %extracted_27 : i1
        %289 = bufferization.to_tensor %alloc_7 : memref<6x3x6xi64>
        %290 = index.ceildivs %27, %c11
        %291 = vector.create_mask %64, %272, %c15 : vector<6x3x6xi1>
        %292 = vector.flat_transpose %55 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %293 = vector.broadcast %128 : i32 to vector<3xi32>
        %294 = vector.transfer_write %293, %18[%273, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi32>, tensor<10x3xi32>
        %295 = index.ceildivu %64, %c4
        %296 = tensor.empty() : tensor<6x6xf16>
        %297 = tensor.empty() : tensor<10x6xf16>
        %298 = linalg.matmul ins(%13, %296 : tensor<10x6xf16>, tensor<6x6xf16>) outs(%297 : tensor<10x6xf16>) -> tensor<10x6xf16>
        %299 = bufferization.clone %60 : memref<6x3x6xf32> to memref<6x3x6xf32>
        %300 = index.maxs %c9, %c13
        %301 = arith.minui %98, %69 : i1
        %302 = arith.shrui %c1192064704_i64, %extracted : i64
        %303 = math.sqrt %cst_2 : f16
        scf.yield
      }
      case 2 {
        %285 = bufferization.to_tensor %alloc_8 : memref<10x6xi1>
        %286 = arith.maxui %c89198615_i64, %c120597359_i64 : i64
        %collapsed_54 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x3x6xf16> into tensor<18x6xf16>
        %287 = arith.shrsi %c1_i32, %out : i32
        %288 = math.tanh %4 : tensor<3x10xf16>
        %289 = math.log2 %0 : tensor<10xf32>
        %290 = arith.cmpi eq, %c1401205587_i64, %c382863489_i64 : i64
        %c14191_i16 = arith.constant 14191 : i16
        %291 = arith.minf %cst_23, %cst : f32
        %292 = bufferization.clone %alloc_14 : memref<6x3x6xf16> to memref<6x3x6xf16>
        %collapsed_55 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x3x6xi32> into tensor<18x6xi32>
        %293 = memref.load %60[%c0, %c1, %c4] : memref<6x3x6xf32>
        %294 = math.copysign %cst_23, %cst : f32
        %295 = arith.xori %in_48, %in_48 : i32
        %296 = math.absi %c382863489_i64 : i64
        %297 = math.round %cst_2 : f16
        scf.yield
      }
      case 3 {
        %c1213622754_i32 = arith.constant 1213622754 : i32
        %285 = tensor.empty() : tensor<10x6xi32>
        %286 = vector.broadcast %in_48 : i32 to vector<3x10xi32>
        %287 = vector.gather %285[%c3, %127] [%286], %107, %286 : tensor<10x6xi32>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi32> into vector<3x10xi32>
        %extracted_54 = tensor.extract %transposed[%c4, %c2] : tensor<10x3xi32>
        %288 = arith.andi %98, %true : i1
        %cst_55 = arith.constant 1.000000e+00 : f16
        %cst_56 = arith.constant 0.000000e+00 : f16
        %289 = vector.transfer_read %11[%111, %127, %64], %cst_56 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<6x3x6xf16>, vector<3x10xf16>
        %true_57 = index.bool.constant true
        %290 = index.maxu %48, %c0
        %291 = index.castu %c11 : index to i32
        %292 = bufferization.to_tensor %alloc_11 : memref<10x6xi1>
        %293 = math.copysign %2, %2 : tensor<10x6xf16>
        %294 = vector.matrix_multiply %55, %78 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %295 = math.exp2 %cst_4 : f32
        %296 = vector.insertelement %in, %137[%27 : index] : vector<10xi32>
        %297 = vector.multi_reduction <add>, %137, %113 [] : vector<10xi32> to vector<10xi32>
        affine.store %cst_23, %alloc_6[%c15, %c12] : memref<3x10xf32>
        %298 = arith.remui %in_49, %in_48 : i32
        scf.yield
      }
      case 4 {
        %285 = vector.broadcast %64 : index to vector<6xindex>
        %286 = vector.broadcast %true : i1 to vector<6xi1>
        %287 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        vector.scatter %alloc_6[%c2, %c8] [%285], %286, %287 : memref<3x10xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %288 = arith.remf %cst_5, %cst_4 : f32
        %collapsed_54 = tensor.collapse_shape %144 [[0, 1], [2]] : tensor<6x3x6xi64> into tensor<18x6xi64>
        %289 = math.exp2 %splat : tensor<10xf32>
        %290 = math.fma %2, %2, %13 : tensor<10x6xf16>
        vector.print %113 : vector<10xi32>
        %rank_55 = tensor.rank %1 : tensor<6x3x6xi32>
        %291 = index.castu %c1192064704_i64 : i64 to index
        %collapsed_56 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x10xi32> into tensor<30xi32>
        %292 = vector.multi_reduction <maxsi>, %131, %128 [0] : vector<10xi32> to i32
        %293 = math.copysign %13, %2 : tensor<10x6xf16>
        %collapsed_57 = tensor.collapse_shape %8 [[0, 1]] : tensor<3x10xi32> into tensor<30xi32>
        %294 = math.sqrt %4 : tensor<3x10xf16>
        %295 = vector.reduction <mul>, %96 : vector<1xi32> into i32
        %296 = arith.divf %cst_3, %cst_2 : f16
        %alloc_58 = memref.alloc() : memref<10xi64>
        scf.yield
      }
      default {
        %285 = arith.xori %c1192064704_i64, %c120597359_i64 : i64
        %286 = math.ctlz %98 : i1
        %287 = math.ceil %2 : tensor<10x6xf16>
        %288 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %289 = bufferization.to_tensor %alloc_14 : memref<6x3x6xf16>
        %290 = math.absi %true_1 : i1
        %291 = tensor.empty() : tensor<10xi16>
        %292 = vector.broadcast %c22599_i16 : i16 to vector<6x3x6xi16>
        %293 = vector.broadcast %98 : i1 to vector<6x3x6xi1>
        %294 = vector.broadcast %in : i32 to vector<6x3x6xi32>
        %295 = vector.gather %291[%c4] [%294], %293, %292 : tensor<10xi16>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xi16> into vector<6x3x6xi16>
        %296 = math.log10 %11 : tensor<6x3x6xf16>
        memref.tensor_store %8, %134 : memref<3x10xi32>
        %297 = arith.divsi %128, %c1_i32_52 : i32
        %298 = affine.load %alloc_9[%c0, %c5] : memref<3x10xi64>
        %299 = math.log10 %4 : tensor<3x10xf16>
        %300 = math.absi %18 : tensor<10x3xi32>
        %301 = arith.cmpi ugt, %c382863489_i64, %298 : i64
        %302 = index.castu %269 : index to i32
        %303 = arith.divsi %128, %c1_i32_52 : i32
      }
      %275 = index.maxs %127, %c6
      %276 = index.ceildivs %27, %273
      %277 = vector.broadcast %32 : index to vector<10xindex>
      %278 = vector.broadcast %c22599_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_19[%c5] [%277], %78, %278 : memref<10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %279 = scf.while (%arg1 = %28) : (vector<i64>) -> vector<i64> {
        %285 = affine.load %alloc_17[%c13, %c15] : memref<3x10xi1>
        memref.copy %alloc_10, %alloc_21 : memref<10xi1> to memref<10xi1>
        %286 = math.sqrt %cst_3 : f16
        %287 = index.castu %extracted : i64 to index
        %288 = tensor.empty(%269) : tensor<10x?xf32>
        %289 = math.log2 %cst_2 : f16
        %290 = arith.negf %cst_3 : f16
        %alloc_54 = memref.alloc() : memref<6x3xf16>
        %291 = tensor.empty() : tensor<10x3xf16>
        %292 = linalg.matmul ins(%2, %alloc_54 : tensor<10x6xf16>, memref<6x3xf16>) outs(%291 : tensor<10x3xf16>) -> tensor<10x3xf16>
        scf.condition(%285) %28 : vector<i64>
      } do {
      ^bb0(%arg1: vector<i64>):
        %285 = math.ctpop %false : i1
        %c0_i32_54 = arith.constant 0 : i32
        %286 = vector.transfer_read %134[%c1, %141], %c0_i32_54 : memref<3x10xi32>, vector<10xi32>
        %287 = index.casts %out : i32 to index
        %288 = math.cttz %14 : tensor<3x10xi32>
        %289 = vector.bitcast %55 : vector<10xi1> to vector<10xi1>
        %290 = arith.shrsi %c324838011_i64, %c89198615_i64 : i64
        %291 = vector.load %alloc_19[%c4] : memref<10xi16>, vector<6x3x6xi16>
        %292 = arith.divsi %98, %extracted_27 : i1
        %293 = vector.insertelement %true, %78[%61 : index] : vector<10xi1>
        %294 = index.casts %121 : index to i32
        %295 = vector.extract_strided_slice %107 {offsets = [0], sizes = [1], strides = [1]} : vector<3x10xi1> to vector<1x10xi1>
        %296 = math.cttz %22 : tensor<i32>
        %297 = math.round %cst_0 : f32
        %false_55 = index.bool.constant false
        %298 = math.fpowi %cst_2, %c1_i32 : f16, i32
        %299 = math.fma %cst_2, %cst_3, %cst_3 : f16
        scf.yield %28 : vector<i64>
      }
      %280 = math.sqrt %4 : tensor<3x10xf16>
      affine.store %c324838011_i64, %alloc_7[%c5, %c13, %c9] : memref<6x3x6xi64>
      %281 = math.exp2 %3 : tensor<10xf16>
      affine.store %cst_5, %23[%c14, %c15, %c8] : memref<6x3x6xf32>
      %282 = arith.minui %in_49, %in_48 : i32
      %283 = arith.shrui %false, %69 : i1
      %284 = math.exp2 %0 : tensor<10xf32>
      linalg.yield %in_48 : i32
    } -> tensor<6x3x6xi32>
    %154 = math.exp2 %9 : tensor<3x10xf32>
    %rank = tensor.rank %splat : tensor<10xf32>
    %155 = scf.while (%arg1 = %131) : (vector<10xi32>) -> vector<10xi32> {
      %260 = arith.subi %c1_i32, %c1_i32 : i32
      %261 = math.ceil %cst_3 : f16
      %262 = arith.mulf %cst_0, %cst_4 : f32
      affine.store %c1192064704_i64, %alloc_7[%c0, %c4, %c13] : memref<6x3x6xi64>
      %263 = arith.cmpi slt, %c22599_i16, %c22599_i16 : i16
      %264 = math.tanh %cst_2 : f16
      %splat_48 = tensor.splat %c382863489_i64 : tensor<10x6xi64>
      %265 = math.ctpop %from_elements_32 : tensor<10x6xi1>
      scf.condition(%true_1) %19 : vector<10xi32>
    } do {
    ^bb0(%arg1: vector<10xi32>):
      %260 = index.sizeof
      %261 = arith.divsi %c1192064704_i64, %c324838011_i64 : i64
      %262 = affine.load %23[%c0, %c0, %c7] : memref<6x3x6xf32>
      %263 = math.floor %cst_0 : f32
      %264 = math.round %cst_4 : f32
      %splat_48 = tensor.splat %c22599_i16 : tensor<10xi16>
      %265 = math.tanh %4 : tensor<3x10xf16>
      %266 = memref.load %alloc_21[%c5] : memref<10xi1>
      %267 = math.ceil %11 : tensor<6x3x6xf16>
      %268 = bufferization.to_tensor %alloc_16 : memref<10xi1>
      %269 = affine.load %alloc_21[%c5] : memref<10xi1>
      %270 = math.absi %true_1 : i1
      %271 = vector.multi_reduction <maxui>, %55, %extracted_27 [0] : vector<10xi1> to i1
      %272 = math.log1p %11 : tensor<6x3x6xf16>
      %273 = math.log1p %3 : tensor<10xf16>
      %rank_49 = tensor.rank %from_elements_28 : tensor<3x10xi16>
      scf.yield %80 : vector<10xi32>
    }
    %156 = bufferization.clone %alloc_10 : memref<10xi1> to memref<10xi1>
    %157 = math.absi %16 : tensor<10xi1>
    %158 = vector.flat_transpose %55 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
    %159 = scf.while (%arg1 = %101) : (memref<6x3x6xf16>) -> memref<6x3x6xf16> {
      %260 = vector.shuffle %118, %137 [1, 2, 3, 4, 6, 7, 9, 10, 11, 12, 13, 16, 17, 18] : vector<10xi32>, vector<10xi32>
      affine.store %true_1, %156[%c12] : memref<10xi1>
      %261 = arith.minf %cst_5, %cst_5 : f32
      %262 = arith.shrsi %extracted, %c324838011_i64 : i64
      %263 = arith.shrui %c324838011_i64, %c89198615_i64 : i64
      %264 = arith.muli %c89198615_i64, %c382863489_i64 : i64
      %265 = math.expm1 %splat : tensor<10xf32>
      %266 = arith.minsi %c89198615_i64, %c1192064704_i64 : i64
      scf.condition(%69) %133 : memref<6x3x6xf16>
    } do {
    ^bb0(%arg1: memref<6x3x6xf16>):
      %c-9414_i16 = arith.constant -9414 : i16
      %extracted_48 = tensor.extract %22[] : tensor<i32>
      %260 = bufferization.to_tensor %arg1 : memref<6x3x6xf16>
      %261 = vector.multi_reduction <and>, %118, %33 [] : vector<10xi32> to vector<10xi32>
      %262 = arith.shrsi %c1192064704_i64, %c324838011_i64 : i64
      %263 = math.absi %transposed : tensor<10x3xi32>
      %264 = math.atan2 %cst_0, %cst_5 : f32
      %265 = index.casts %61 : index to i32
      %266 = bufferization.clone %alloc_19 : memref<10xi16> to memref<10xi16>
      %267 = bufferization.to_tensor %alloc_20 : memref<10xf32>
      %268 = memref.alloca_scope  -> (i16) {
        %274 = vector.broadcast %69 : i1 to vector<3xi1>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %107, %55, %274 : vector<3x10xi1>, vector<10xi1> into vector<3xi1>
        %276 = math.rsqrt %cst_3 : f16
        %277 = vector.broadcast %c15 : index to vector<6xindex>
        %278 = vector.broadcast %false : i1 to vector<6xi1>
        %279 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        vector.scatter %alloc_12[%c1, %c2, %c0] [%277], %278, %279 : memref<6x3x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - (d0 - d0 mod 16 + d0 mod 16 - 2), d1 - 32, (d0 - d0 mod 16) * -2)>(%c14, %141, %c9, %c2)
        %281 = arith.xori %c382863489_i64, %c120597359_i64 : i64
        %282 = arith.minsi %extracted_48, %extracted_48 : i32
        %true_49 = index.bool.constant true
        %283 = vector.multi_reduction <and>, %80, %80 [] : vector<10xi32> to vector<10xi32>
        %extracted_50 = tensor.extract %0[%c8] : tensor<10xf32>
        %284 = vector.extract %33[0] : vector<10xi32>
        %285 = vector.broadcast %true : i1 to vector<10x10xi1>
        %286 = vector.outerproduct %78, %78, %285 {kind = #vector.kind<minsi>} : vector<10xi1>, vector<10xi1>
        %287 = vector.flat_transpose %137 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %cst_51 = arith.constant 1.08036736E+9 : f32
        affine.store %cst_23, %alloc[%c1, %c3] : memref<3x10xf32>
        %288 = math.roundeven %260 : tensor<6x3x6xf16>
        %289 = index.casts %c324838011_i64 : i64 to index
        %290 = index.castu %c1_i32 : i32 to index
        %291 = arith.cmpi sgt, %c89198615_i64, %c1192064704_i64 : i64
        %292 = math.atan %cst_3 : f16
        %true_52 = index.bool.constant true
        %293 = tensor.empty() : tensor<10xi32>
        %294 = arith.remf %cst_0, %cst_23 : f32
        %295 = bufferization.clone %101 : memref<6x3x6xf16> to memref<6x3x6xf16>
        %296 = arith.cmpf ole, %cst_3, %cst_3 : f16
        %297 = vector.create_mask %111 : vector<10xi1>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %26, %26, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
        %299 = arith.shrsi %extracted_48, %128 : i32
        %300 = math.copysign %260, %260 : tensor<6x3x6xf16>
        %301 = vector.bitcast %96 : vector<1xi32> to vector<1xi32>
        %302 = vector.flat_transpose %131 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %303 = arith.subi %true, %true_1 : i1
        %304 = index.ceildivs %c15, %280
        memref.alloca_scope.return %c22599_i16 : i16
      }
      %269 = math.log10 %13 : tensor<10x6xf16>
      %270 = math.tanh %cst : f32
      %271 = memref.atomic_rmw maxf %cst_5, %23[%c5, %c2, %c4] : (f32, memref<6x3x6xf32>) -> f32
      %272 = math.fma %3, %3, %3 : tensor<10xf16>
      %273 = math.copysign %4, %4 : tensor<3x10xf16>
      scf.yield %133 : memref<6x3x6xf16>
    }
    %160 = affine.load %alloc[%c2, %c13] : memref<3x10xf32>
    %true_34 = index.bool.constant true
    affine.store %c1_i32, %134[%c3, %c9] : memref<3x10xi32>
    %161 = math.rsqrt %0 : tensor<10xf32>
    %162 = bufferization.to_tensor %alloc_19 : memref<10xi16>
    %163 = arith.minsi %true, %false : i1
    %c1273440769_i32 = arith.constant 1273440769 : i32
    %164 = arith.addi %false, %false : i1
    %cst_35 = arith.constant 0x4DBB14CB : f32
    %165 = arith.shli %c89198615_i64, %c120597359_i64 : i64
    %166 = arith.remf %cst_5, %cst_0 : f32
    %167 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
    %168 = math.fma %4, %4, %4 : tensor<3x10xf16>
    scf.execute_region {
      %260 = math.cttz %c1_i32 : i32
      %261 = math.ctpop %21 : tensor<i32>
      %262 = math.expm1 %9 : tensor<3x10xf32>
      %263 = arith.minui %c89198615_i64, %c1401205587_i64 : i64
      %264 = index.casts %c4 : index to i32
      %265 = arith.cmpi ule, %69, %true_34 : i1
      %266 = math.exp %cst_3 : f16
      %267 = vector.bitcast %137 : vector<10xi32> to vector<10xi32>
      %268 = math.ceil %cst_3 : f16
      %269 = arith.remsi %false_30, %extracted_27 : i1
      %270 = arith.divsi %c120597359_i64, %c89198615_i64 : i64
      %271 = vector.shuffle %158, %78 [0, 1, 3, 8, 12, 14, 16, 19] : vector<10xi1>, vector<10xi1>
      %272 = math.floor %160 : f32
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %267, %33, %128 : vector<10xi32>, vector<10xi32> into i32
      %274 = index.floordivs %c9, %111
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %55, %55, %true : vector<10xi1>, vector<10xi1> into i1
      scf.yield
    }
    %169 = arith.xori %c382863489_i64, %c382863489_i64 : i64
    %cst_36 = arith.constant 6.233600e+04 : f16
    %170 = math.tanh %3 : tensor<10xf16>
    %171 = vector.insert %c1_i32, %19 [3] : i32 into vector<10xi32>
    %172 = memref.alloca_scope  -> (memref<10xi64>) {
      %260 = math.cttz %20 : tensor<10xi32>
      %261 = math.log10 %3 : tensor<10xf16>
      %262 = math.atan2 %4, %4 : tensor<3x10xf16>
      %263 = vector.broadcast %true_1 : i1 to vector<3x10xi1>
      scf.execute_region {
        %286 = affine.load %92[%c0] : memref<10xf32>
        %287 = affine.max affine_map<(d0, d1) -> (-d1, (d0 floordiv 32) mod 16, d1 + d0 - d1)>(%32, %27)
        %288 = index.casts %extracted_27 : i1 to index
        %289 = math.exp2 %2 : tensor<10x6xf16>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %55, %158, %69 : vector<10xi1>, vector<10xi1> into i1
        %true_54 = index.bool.constant true
        %291 = math.fpowi %11, %1 : tensor<6x3x6xf16>, tensor<6x3x6xi32>
        %292 = arith.remf %160, %cst_23 : f32
        %293 = arith.divf %cst_4, %cst_23 : f32
        %294 = tensor.empty() : tensor<6x6xf16>
        %295 = tensor.empty() : tensor<10x6xf16>
        %296 = linalg.matmul ins(%13, %294 : tensor<10x6xf16>, tensor<6x6xf16>) outs(%295 : tensor<10x6xf16>) -> tensor<10x6xf16>
        %297 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 32 - 1, d1 ceildiv 32 + d0, d1 ceildiv 32 + d0, d0 - 32)>(%c8, %141)
        %298 = index.casts %c2 : index to i32
        %299 = vector.multi_reduction <xor>, %118, %c1_i32 [0] : vector<10xi32> to i32
        %300 = affine.load %167[%c14] : memref<10xi32>
        %301 = vector.extract %118[2] : vector<10xi32>
        %302 = math.exp2 %cst_4 : f32
        scf.yield
      }
      %264 = index.sizeof
      %265 = vector.flat_transpose %55 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %266 = bufferization.clone %alloc_13 : memref<10xi32> to memref<10xi32>
      %splat_48 = tensor.splat %c120597359_i64 : tensor<10x6xi64>
      %267 = index.castu %false_30 : i1 to index
      %268 = math.ctpop %12 : tensor<10xi1>
      %269 = math.tanh %cst_3 : f16
      %270 = arith.andi %c22599_i16, %c22599_i16 : i16
      memref.alloca_scope  {
        %alloc_54 = memref.alloc() : memref<10x6xf32>
        %286 = index.ceildivu %rank, %64
        %287 = memref.load %alloc_21[%c8] : memref<10xi1>
        %288 = tensor.empty() : tensor<10x6xi32>
        %289 = math.fpowi %13, %288 : tensor<10x6xf16>, tensor<10x6xi32>
        vector.print %19 : vector<10xi32>
        %290 = arith.andi %c120597359_i64, %extracted : i64
        %291 = index.add %c2, %61
        %292 = math.log10 %cst : f32
        vector.print %33 : vector<10xi32>
        %293 = vector.broadcast %cst_3 : f16 to vector<3xf16>
        %294 = vector.broadcast %true_1 : i1 to vector<3xi1>
        %295 = vector.maskedload %alloc_14[%c4, %c0, %c1], %294, %293 : memref<6x3x6xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %296 = vector.broadcast %c22599_i16 : i16 to vector<6x3x6xi16>
        %297 = vector.broadcast %true_34 : i1 to vector<6x3x6xi1>
        %298 = vector.broadcast %128 : i32 to vector<6x3x6xi32>
        %299 = vector.gather %alloc_19[%64] [%298], %297, %296 : memref<10xi16>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xi16> into vector<6x3x6xi16>
        %300 = math.copysign %0, %0 : tensor<10xf32>
        %alloca_55 = memref.alloca() : memref<10x6xf32>
        %301 = index.maxs %32, %121
        %302 = math.exp2 %4 : tensor<3x10xf16>
        memref.store %128, %266[%c3] : memref<10xi32>
        memref.assume_alignment %alloc_18, 2 : memref<3x10xi32>
        %c-29226_i16 = arith.constant -29226 : i16
        %303 = vector.splat %127 : vector<3x10xindex>
        %304 = bufferization.clone %alloc_10 : memref<10xi1> to memref<10xi1>
        %305 = memref.realloc %alloc_20 : memref<10xf32> to memref<10xf32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %96, %26, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
        %307 = math.sqrt %cst_0 : f32
        %308 = math.ctlz %transposed : tensor<10x3xi32>
        %309 = math.ctpop %c382863489_i64 : i64
        %310 = affine.apply affine_map<(d0, d1, d2) -> (d2 + 8)>(%291, %61, %c6)
        %311 = vector.multi_reduction <add>, %263, %158 [0] : vector<3x10xi1> to vector<10xi1>
        %312 = arith.addf %cst, %cst_5 : f32
        %extracted_56 = tensor.extract %6[%c8] : tensor<10xi64>
        %c1_i32_57 = arith.constant 1 : i32
        %313 = vector.transfer_read %14[%48, %310], %c1_i32_57 : tensor<3x10xi32>, vector<3xi32>
        %314 = vector.create_mask %264, %267 : vector<10x6xi1>
        %315 = arith.negf %cst_3 : f16
      }
      %271 = arith.shrui %extracted, %c1401205587_i64 : i64
      %272 = arith.cmpi sle, %false_30, %true_1 : i1
      %273 = arith.cmpi ugt, %false_30, %false : i1
      %274 = tensor.empty() : tensor<10x6xi1>
      %mapped_49 = linalg.map ins(%alloc_11, %from_elements_32 : memref<10x6xi1>, tensor<10x6xi1>) outs(%274 : tensor<10x6xi1>)
        (%in: i1, %in_54: i1) {
          %286 = index.ceildivu %264, %c3
          %alloca_55 = memref.alloca() : memref<6x3x6xf16>
          %287 = vector.flat_transpose %137 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
          %288 = index.casts %128 : i32 to index
          %extracted_56 = tensor.extract %splat[%c8] : tensor<10xf32>
          %289 = math.log2 %cst_0 : f32
          %290 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %291 = math.expm1 %4 : tensor<3x10xf16>
          %292 = bufferization.clone %alloc_8 : memref<10x6xi1> to memref<10x6xi1>
          %293 = vector.broadcast %c4 : index to vector<3xindex>
          %294 = vector.broadcast %true_1 : i1 to vector<3xi1>
          vector.scatter %292[%c7, %c5] [%293], %294, %294 : memref<10x6xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %295 = math.ceil %4 : tensor<3x10xf16>
          %296 = math.ctpop %14 : tensor<3x10xi32>
          %collapsed_57 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
          %297 = memref.load %134[%c1, %c5] : memref<3x10xi32>
          %298 = arith.muli %c89198615_i64, %c89198615_i64 : i64
          %299 = math.expm1 %collapsed_57 : tensor<30xf32>
          %300 = index.maxs %c0, %c7
          %splat_58 = tensor.splat %128 : tensor<10xi32>
          %301 = arith.ori %false, %in : i1
          %302 = index.ceildivu %c15, %121
          %303 = vector.bitcast %80 : vector<10xi32> to vector<10xi32>
          %304 = arith.minsi %true_34, %false : i1
          %305 = arith.xori %true_34, %69 : i1
          %306 = vector.broadcast %cst_23 : f32 to vector<10xf32>
          %307 = math.powf %2, %2 : tensor<10x6xf16>
          %308 = math.round %11 : tensor<6x3x6xf16>
          %309 = math.cttz %162 : tensor<10xi16>
          %310 = arith.remf %cst, %extracted_56 : f32
          %311 = vector.insertelement %c1_i32, %290[%286 : index] : vector<1xi32>
          %collapsed_59 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x3x6xi32> into tensor<18x6xi32>
          %312 = vector.matrix_multiply %55, %158 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
          %313 = arith.maxf %extracted_56, %160 : f32
          %false_60 = arith.constant false
          linalg.yield %false_60 : i1
        }
      %from_elements_50 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3 : tensor<6x3x6xf16>
      %275 = bufferization.clone %alloc_18 : memref<3x10xi32> to memref<3x10xi32>
      %276 = math.exp2 %0 : tensor<10xf32>
      %277 = math.sqrt %9 : tensor<3x10xf32>
      %278 = arith.minui %98, %true_34 : i1
      %279 = arith.ori %c22599_i16, %c22599_i16 : i16
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %113, %33, %128 : vector<10xi32>, vector<10xi32> into i32
      %281 = math.round %cst_2 : f16
      %282 = memref.alloca_scope  -> (memref<10xf32>) {
        %286 = memref.load %alloc_11[%c1, %c0] : memref<10x6xi1>
        %287 = vector.broadcast %69 : i1 to vector<3xi1>
        %288 = vector.multi_reduction <minui>, %107, %287 [1] : vector<3x10xi1> to vector<3xi1>
        %289 = math.tan %3 : tensor<10xf16>
        %290 = bufferization.clone %167 : memref<10xi32> to memref<10xi32>
        %291 = arith.ori %true, %extracted_27 : i1
        %292 = math.cos %4 : tensor<3x10xf16>
        %293 = math.cos %cst_4 : f32
        %true_54 = index.bool.constant true
        %294 = math.copysign %from_elements_50, %11 : tensor<6x3x6xf16>
        %295 = arith.divsi %true, %false_30 : i1
        affine.store %c1401205587_i64, %alloc_9[%c5, %c8] : memref<3x10xi64>
        %296 = math.roundeven %3 : tensor<10xf16>
        %297 = bufferization.to_memref %from_elements_28 : memref<3x10xi16>
        %298 = math.ceil %cst_5 : f32
        %299 = vector.extract %158[8] : vector<10xi1>
        %300 = math.log10 %9 : tensor<3x10xf32>
        %301 = vector.broadcast %30 : index to vector<3xindex>
        vector.scatter %alloc_10[%c9] [%301], %287, %287 : memref<10xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %302 = math.exp2 %cst_2 : f16
        %303 = vector.extract %107[0] : vector<3x10xi1>
        %304 = math.round %4 : tensor<3x10xf16>
        %305 = arith.divsi %98, %true_1 : i1
        %306 = vector.broadcast %true_34 : i1 to vector<10x10xi1>
        %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %107, %107, %306 : vector<3x10xi1>, vector<3x10xi1> into vector<10x10xi1>
        %308 = vector.broadcast %27 : index to vector<10xindex>
        %309 = vector.broadcast %cst_3 : f16 to vector<10xf16>
        vector.scatter %133[%c5, %c1, %c5] [%308], %158, %309 : memref<6x3x6xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %310 = bufferization.clone %92 : memref<10xf32> to memref<10xf32>
        %cst_55 = arith.constant 0x4E66D842 : f32
        %311 = math.absi %true_54 : i1
        %312 = vector.insertelement %c120597359_i64, %28[] : vector<i64>
        %313 = vector.matrix_multiply %158, %55 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %314 = vector.matrix_multiply %113, %118 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %315 = arith.minui %true_1, %true_34 : i1
        affine.store %98, %156[%c7] : memref<10xi1>
        %316 = vector.create_mask %121, %111 : vector<3x10xi1>
        memref.alloca_scope.return %alloc_20 : memref<10xf32>
      }
      %283 = vector.multi_reduction <maxsi>, %80, %128 [0] : vector<10xi32> to i32
      %true_51 = index.bool.constant true
      %alloc_52 = memref.alloc() : memref<6x3x6xi16>
      %284 = math.ceil %13 : tensor<10x6xf16>
      %285 = arith.negf %cst : f32
      %alloc_53 = memref.alloc() : memref<10xi64>
      memref.alloca_scope.return %alloc_53 : memref<10xi64>
    }
    %173 = vector.broadcast %c1192064704_i64 : i64 to vector<3xi64>
    %174 = vector.broadcast %true : i1 to vector<3xi1>
    %175 = vector.maskedload %alloc_7[%c5, %c1, %c1], %174, %173 : memref<6x3x6xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    %176 = index.ceildivs %c4, %c7
    %extracted_37 = tensor.extract %11[%c3, %c1, %c0] : tensor<6x3x6xf16>
    %177 = math.exp %13 : tensor<10x6xf16>
    memref.assume_alignment %alloc_11, 8 : memref<10x6xi1>
    %178 = math.floor %extracted_37 : f16
    %179 = vector.broadcast %128 : i32 to vector<3x10xi32>
    %180 = vector.gather %alloc_10[%32] [%179], %107, %107 : memref<10xi1>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi1> into vector<3x10xi1>
    %alloca_38 = memref.alloca() : memref<10x6xi16>
    %181 = index.ceildivs %111, %61
    %182 = bufferization.clone %alloc_17 : memref<3x10xi1> to memref<3x10xi1>
    %183 = vector.create_mask %64, %c9 : vector<3x10xi1>
    %184 = vector.broadcast %c12 : index to vector<3xindex>
    vector.scatter %alloc_21[%c6] [%184], %174, %174 : memref<10xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %185 = vector.load %23[%c4, %c1, %c2] : memref<6x3x6xf32>, vector<6x3x6xf32>
    %186 = index.add %c0, %c4
    %187 = vector.extract_strided_slice %180 {offsets = [1], sizes = [2], strides = [1]} : vector<3x10xi1> to vector<2x10xi1>
    %188 = bufferization.clone %alloc_17 : memref<3x10xi1> to memref<3x10xi1>
    %189 = arith.divf %cst_5, %cst_0 : f32
    %190 = math.rsqrt %cst_0 : f32
    %191 = math.sqrt %9 : tensor<3x10xf32>
    %192 = arith.xori %true, %false : i1
    %splat_39 = tensor.splat %c22599_i16 : tensor<10x6xi16>
    %193 = index.maxu %c1, %c6
    %194 = tensor.empty() : tensor<6x6xi32>
    %alloc_40 = memref.alloc() : memref<6xi32>
    %195 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%194, %alloc_40, %1 : tensor<6x6xi32>, memref<6xi32>, tensor<6x3x6xi32>) outs(%1 : tensor<6x3x6xi32>) {
    ^bb0(%in: i32, %in_48: i32, %in_49: i32, %out: i32):
      %260 = vector.bitcast %33 : vector<10xi32> to vector<10xi32>
      %261 = vector.splat %true_1 : vector<3x10xi1>
      %262 = bufferization.clone %alloc_15 : memref<10xi32> to memref<10xi32>
      %263 = vector.broadcast %c7 : index to vector<6xindex>
      %264 = vector.broadcast %69 : i1 to vector<6xi1>
      %265 = vector.broadcast %c22599_i16 : i16 to vector<6xi16>
      vector.scatter %alloc_19[%c1] [%263], %264, %265 : memref<10xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
      %266 = vector.broadcast %true_34 : i1 to vector<3x3xi1>
      %267 = vector.outerproduct %174, %174, %266 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %268 = math.log10 %cst_0 : f32
      %269 = arith.minsi %c1_i32, %out : i32
      %270 = bufferization.clone %133 : memref<6x3x6xf16> to memref<6x3x6xf16>
      %271 = scf.while (%arg1 = %131) : (vector<10xi32>) -> vector<10xi32> {
        %289 = bufferization.clone %134 : memref<3x10xi32> to memref<3x10xi32>
        %290 = arith.minf %cst_3, %extracted_37 : f16
        %extracted_52 = tensor.extract %16[%c0] : tensor<10xi1>
        %291 = math.ctpop %6 : tensor<10xi64>
        %292 = index.maxs %61, %141
        %293 = bufferization.to_tensor %101 : memref<6x3x6xf16>
        %294 = index.add %97, %c13
        %295 = math.tanh %3 : tensor<10xf16>
        scf.condition(%false) %33 : vector<10xi32>
      } do {
      ^bb0(%arg1: vector<10xi32>):
        %289 = vector.shuffle %183, %183 [1, 3] : vector<3x10xi1>, vector<3x10xi1>
        %290 = math.copysign %cst_5, %cst_5 : f32
        %291 = arith.cmpi ne, %98, %true : i1
        %292 = math.rsqrt %cst : f32
        %293 = bufferization.clone %alloc_7 : memref<6x3x6xi64> to memref<6x3x6xi64>
        %collapsed_52 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
        %294 = arith.maxf %cst_3, %cst_3 : f16
        %true_53 = index.bool.constant true
        %295 = index.maxu %c7, %27
        %296 = index.castu %128 : i32 to index
        %297 = math.exp %cst_5 : f32
        %298 = math.tan %2 : tensor<10x6xf16>
        %299 = vector.create_mask %121, %193, %61 : vector<6x3x6xi1>
        %300 = math.roundeven %cst_2 : f16
        %301 = vector.bitcast %96 : vector<1xi32> to vector<1xi32>
        %302 = math.sqrt %cst_2 : f16
        scf.yield %137 : vector<10xi32>
      }
      affine.store %c89198615_i64, %alloc_9[%c1, %c15] : memref<3x10xi64>
      %272 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      vector.print %80 : vector<10xi32>
      affine.store %true_34, %alloc_21[%c13] : memref<10xi1>
      %273 = math.copysign %4, %4 : tensor<3x10xf16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x3x6xf16>) {
      ^bb0(%out_52: f16):
        %289 = arith.ori %c22599_i16, %c22599_i16 : i16
        %290 = vector.flat_transpose %173 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %291 = arith.divsi %c1401205587_i64, %c1192064704_i64 : i64
        %292 = vector.splat %c4 : vector<3x10xindex>
        %false_53 = index.bool.constant false
        %293 = arith.andi %c324838011_i64, %extracted : i64
        %294 = vector.flat_transpose %158 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %295 = math.exp %13 : tensor<10x6xf16>
        %296 = arith.andi %extracted, %c89198615_i64 : i64
        %297 = math.ceil %3 : tensor<10xf16>
        %extracted_54 = tensor.extract %14[%c0, %c9] : tensor<3x10xi32>
        %298 = arith.divsi %extracted_27, %extracted_27 : i1
        %299 = math.atan %cst_4 : f32
        %splat_55 = tensor.splat %true_34 : tensor<10x6xi1>
        %300 = bufferization.clone %188 : memref<3x10xi1> to memref<3x10xi1>
        %301 = arith.ori %extracted_27, %true_34 : i1
        %collapsed_56 = tensor.collapse_shape %18 [[0, 1]] : tensor<10x3xi32> into tensor<30xi32>
        %302 = index.floordivs %c2, %121
        memref.assume_alignment %133, 16 : memref<6x3x6xf16>
        %303 = math.round %3 : tensor<10xf16>
        %304 = tensor.empty() : tensor<10xf32>
        %305 = affine.max affine_map<(d0) -> (((-(d0 + 32)) floordiv 32) mod 2, -(d0 + 32) - 4, d0 * -7 + 32, -(d0 + 32) - 4)>(%32)
        %306 = vector.matrix_multiply %294, %294 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %from_elements_57 = tensor.from_elements %in_49, %in_49, %in, %out, %in_49, %extracted_54, %extracted_54, %c1_i32, %c1_i32, %c1_i32, %out, %out, %out, %in, %128, %in, %in_48, %in_49, %out, %c1_i32, %in_48, %in_49, %extracted_54, %c1_i32, %extracted_54, %out, %out, %in_48, %c1_i32, %in_49, %out, %c1_i32, %128, %extracted_54, %c1_i32, %c1_i32, %out, %128, %in_48, %in, %c1_i32, %in, %in, %extracted_54, %out, %128, %in, %in_48, %128, %extracted_54, %in, %extracted_54, %extracted_54, %c1_i32, %c1_i32, %128, %in, %out, %128, %c1_i32, %c1_i32, %c1_i32, %out, %out, %128, %in_48, %128, %c1_i32, %out, %128, %in_48, %128, %extracted_54, %in_48, %in_49, %in_49, %extracted_54, %c1_i32, %extracted_54, %in_49, %in_48, %c1_i32, %out, %in_48, %out, %in_48, %c1_i32, %in_48, %c1_i32, %128, %in_48, %extracted_54, %out, %in, %out, %in_49, %128, %out, %out, %in_49, %extracted_54, %in_49, %in, %in, %out, %c1_i32, %in_48, %in_49 : tensor<6x3x6xi32>
        %splat_58 = tensor.splat %c1192064704_i64 : tensor<6x3x6xi64>
        %307 = math.absi %7 : tensor<3x10xi1>
        memref.store %c1401205587_i64, %172[%c2] : memref<10xi64>
        %308 = arith.andi %69, %98 : i1
        %309 = index.maxu %c11, %rank
        %310 = index.floordivs %c15, %30
        %311 = vector.broadcast %true_1 : i1 to vector<2xi1>
        %312 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %187, %55, %311 : vector<2x10xi1>, vector<10xi1> into vector<2xi1>
        %collapsed_59 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
        linalg.yield %extracted_37 : f16
      } -> tensor<6x3x6xf16>
      %c-11094_i16 = arith.constant -11094 : i16
      %275 = index.sizeof
      %276 = arith.xori %c89198615_i64, %c382863489_i64 : i64
      %277 = math.atan2 %3, %3 : tensor<10xf16>
      %splat_50 = tensor.splat %extracted_37 : tensor<6x3x6xf16>
      %278 = index.maxu %c13, %141
      %279 = math.cttz %from_elements : tensor<10xi64>
      %280 = arith.shrsi %in_48, %c1_i32 : i32
      %281 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %282 = memref.realloc %alloc_16 : memref<10xi1> to memref<6xi1>
      %283 = scf.while (%arg1 = %extracted) : (i64) -> i64 {
        %splat_52 = tensor.splat %true : tensor<3x10xi1>
        %289 = vector.maskedload %134[%c2, %c3], %55, %80 : memref<3x10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %290 = arith.maxsi %98, %false_30 : i1
        %291 = arith.divsi %c382863489_i64, %extracted : i64
        memref.store %c1_i32, %alloc_15[%c4] : memref<10xi32>
        %292 = index.add %c11, %30
        %293 = math.expm1 %4 : tensor<3x10xf16>
        %294 = bufferization.to_memref %0 : memref<10xf32>
        scf.condition(%true) %c1192064704_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        memref.store %cst_0, %92[%c6] : memref<10xf32>
        %289 = vector.broadcast %cst_3 : f16 to vector<3x10xf16>
        %true_52 = index.bool.constant true
        %290 = vector.matrix_multiply %80, %113 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %291 = math.fma %cst_5, %160, %cst_4 : f32
        %292 = memref.load %alloc_19[%c5] : memref<10xi16>
        %293 = bufferization.clone %alloc_13 : memref<10xi32> to memref<10xi32>
        %294 = vector.insert %in_49, %80 [8] : i32 into vector<10xi32>
        %295 = arith.xori %extracted_27, %false_30 : i1
        %296 = bufferization.to_memref %2 : memref<10x6xf16>
        %297 = math.ctpop %c120597359_i64 : i64
        %298 = arith.maxui %arg1, %c1401205587_i64 : i64
        %299 = arith.shrui %true_34, %false_30 : i1
        %300 = index.castu %true_1 : i1 to index
        %301 = arith.minui %69, %69 : i1
        affine.store %true, %alloc_8[%c9, %c12] : memref<10x6xi1>
        scf.yield %c382863489_i64 : i64
      }
      %284 = vector.multi_reduction <maxui>, %175, %c1192064704_i64 [0] : vector<3xi64> to i64
      %285 = math.fma %cst_3, %extracted_37, %extracted_37 : f16
      %286 = vector.broadcast %c11 : index to vector<3xindex>
      vector.scatter %182[%c1, %c6] [%286], %174, %174 : memref<3x10xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %cst_51 = arith.constant 1.000000e+00 : f32
      %287 = vector.transfer_read %23[%c11, %c6, %111], %cst_51 : memref<6x3x6xf32>, vector<f32>
      %expanded = tensor.expand_shape %95 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
      %288 = bufferization.clone %92 : memref<10xf32> to memref<10xf32>
      linalg.yield %out : i32
    } -> tensor<6x3x6xi32>
    %splat_41 = tensor.splat %c1401205587_i64 : tensor<6x3x6xi64>
    affine.for %arg1 = 0 to 59 {
    }
    %196 = math.cos %cst : f32
    %197 = vector.maskedload %alloc_8[%c9, %c0], %174, %174 : memref<10x6xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %198 = bufferization.clone %92 : memref<10xf32> to memref<10xf32>
    %199 = affine.max affine_map<(d0) -> (-(d0 - (d0 mod 64) * 64))>(%97)
    %200 = arith.maxf %cst_23, %160 : f32
    %201 = math.ctpop %c89198615_i64 : i64
    %202 = scf.while (%arg1 = %cst_3) : (f16) -> f16 {
      %260 = scf.execute_region -> index {
        %266 = vector.splat %cst_3 : vector<10x6xf16>
        %267 = math.ceil %9 : tensor<3x10xf32>
        %268 = memref.realloc %alloc_20 : memref<10xf32> to memref<6xf32>
        %269 = vector.splat %48 : vector<10xindex>
        %270 = arith.divf %arg1, %cst_3 : f16
        %271 = vector.broadcast %c13 : index to vector<10xindex>
        vector.scatter %alloc_8[%c0, %c0] [%271], %158, %55 : memref<10x6xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %272 = math.log2 %160 : f32
        vector.print %19 : vector<10xi32>
        affine.store %arg1, %133[%c4, %c11, %c9] : memref<6x3x6xf16>
        %273 = affine.load %alloc_8[%c5, %c1] : memref<10x6xi1>
        %274 = arith.andi %true_1, %false_30 : i1
        %275 = vector.matrix_multiply %96, %80 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi32>, vector<10xi32>) -> vector<10xi32>
        %276 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %277 = arith.remui %c1401205587_i64, %c1401205587_i64 : i64
        %278 = index.casts %64 : index to i32
        %279 = vector.insertelement %c1401205587_i64, %173[%186 : index] : vector<3xi64>
        scf.yield %c8 : index
      }
      %261 = arith.shrui %128, %c1_i32 : i32
      %262 = index.maxu %c14, %c12
      memref.alloca_scope  {
        %266 = arith.shrui %extracted, %c1192064704_i64 : i64
        %from_elements_50 = tensor.from_elements %true_34, %98, %69, %true_1, %true_34, %69, %true_1, %true_1, %98, %69, %false, %true_34, %98, %true_34, %98, %69, %true_34, %true, %false, %false_30, %true_34, %extracted_27, %extracted_27, %98, %98, %98, %false_30, %false_30, %extracted_27, %69, %69, %false_30, %false_30, %98, %69, %false_30, %extracted_27, %69, %true, %69, %true, %69, %98, %69, %false_30, %extracted_27, %extracted_27, %69, %true_1, %true, %extracted_27, %false, %true, %true_1, %extracted_27, %false, %98, %98, %extracted_27, %98, %false_30, %69, %69, %extracted_27, %false, %extracted_27, %extracted_27, %98, %false, %false, %extracted_27, %true_1, %extracted_27, %98, %true_34, %69, %69, %true_34, %false_30, %extracted_27, %true, %true_1, %98, %extracted_27, %true_34, %true_1, %98, %false_30, %extracted_27, %69, %98, %true, %98, %false_30, %98, %true, %69, %extracted_27, %extracted_27, %false_30, %98, %true_34, %98, %extracted_27, %false, %false_30, %false_30, %98 : tensor<6x3x6xi1>
        %267 = vector.create_mask %c2, %c13 : vector<10x6xi1>
        %268 = vector.flat_transpose %173 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %269 = math.sqrt %0 : tensor<10xf32>
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %118, %118, %128 : vector<10xi32>, vector<10xi32> into i32
        %271 = vector.broadcast %c22599_i16 : i16 to vector<3x10xi16>
        %272 = vector.gather %alloc_19[%c8] [%179], %183, %271 : memref<10xi16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi16> into vector<3x10xi16>
        %273 = index.ceildivu %c15, %c7
        %from_elements_51 = tensor.from_elements %c1_i32, %c1_i32, %128, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %128, %c1_i32, %128, %128, %128, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %128, %c1_i32, %c1_i32, %128, %c1_i32, %128, %128, %c1_i32, %128, %128, %128, %c1_i32, %128, %128, %c1_i32, %128, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %128, %c1_i32, %c1_i32, %128, %128, %c1_i32, %128, %128, %128, %128, %128, %128, %c1_i32, %128, %128, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<10x6xi32>
        %274 = math.absi %7 : tensor<3x10xi1>
        %275 = arith.divf %cst_4, %cst_5 : f32
        %276 = vector.bitcast %268 : vector<3xi64> to vector<3xi64>
        %277 = arith.divf %cst_5, %cst_5 : f32
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %158, %180, %197 : vector<10xi1>, vector<3x10xi1> into vector<3xi1>
        %279 = math.roundeven %cst_23 : f32
        %true_52 = index.bool.constant true
        %280 = vector.broadcast %false : i1 to vector<i1>
        %281 = vector.transfer_write %280, %95[%111] : vector<i1>, tensor<10xi1>
        %282 = vector.insertelement %true_52, %174[%32 : index] : vector<3xi1>
        %283 = vector.broadcast %cst_2 : f16 to vector<6x3x6xf16>
        %284 = arith.minui %128, %128 : i32
        %285 = arith.maxsi %c120597359_i64, %c89198615_i64 : i64
        %286 = index.ceildivu %c6, %61
        %287 = math.ceil %0 : tensor<10xf32>
        %288 = math.copysign %9, %9 : tensor<3x10xf32>
        %289 = vector.bitcast %19 : vector<10xi32> to vector<10xi32>
        %290 = arith.cmpi ne, %c1401205587_i64, %c120597359_i64 : i64
        %291 = math.ctlz %10 : tensor<10xi64>
        %292 = math.ipowi %128, %128 : i32
        %293 = math.expm1 %cst_23 : f32
        %collapsed_53 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x3x6xi32> into tensor<18x6xi32>
        %294 = arith.minsi %c22599_i16, %c22599_i16 : i16
        %295 = math.exp %2 : tensor<10x6xf16>
      }
      %false_48 = arith.constant false
      %263 = vector.transfer_read %7[%c14, %c15], %false_48 : tensor<3x10xi1>, vector<i1>
      %264 = math.fpowi %3, %20 : tensor<10xf16>, tensor<10xi32>
      %265 = index.add %30, %121
      %from_elements_49 = tensor.from_elements %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16 : tensor<6x3x6xi16>
      scf.condition(%false) %cst_3 : f16
    } do {
    ^bb0(%arg1: f16):
      %260 = index.castu %c12 : index to i32
      %261 = arith.divui %c382863489_i64, %c120597359_i64 : i64
      %262 = vector.matrix_multiply %174, %174 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %263 = arith.shrsi %c1_i32, %c1_i32 : i32
      %264 = math.sqrt %0 : tensor<10xf32>
      %265 = math.log2 %3 : tensor<10xf16>
      %266 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 2, d0 ceildiv 2 - 16, (d0 ceildiv 2) floordiv 16, (d0 - 1) * 2)>(%30, %186)
      %267 = index.maxs %c6, %c15
      %268 = math.sqrt %9 : tensor<3x10xf32>
      %269 = index.add %199, %193
      %270 = index.floordivs %c0, %127
      %271 = memref.alloca_scope  -> (f32) {
        %extracted_49 = tensor.extract %3[%c7] : tensor<10xf16>
        %276 = arith.shrui %c1401205587_i64, %c1192064704_i64 : i64
        %alloc_50 = memref.alloc() : memref<6x3x6xi64>
        %extracted_51 = tensor.extract %1[%c2, %c1, %c4] : tensor<6x3x6xi32>
        %277 = math.exp2 %extracted_37 : f16
        %278 = arith.minui %extracted_27, %true : i1
        %279 = math.ctlz %69 : i1
        %280 = vector.extract %78[4] : vector<10xi1>
        %281 = arith.divsi %69, %98 : i1
        %282 = arith.maxui %c382863489_i64, %c89198615_i64 : i64
        %283 = math.fma %11, %11, %11 : tensor<6x3x6xf16>
        %284 = math.fma %cst_3, %extracted_49, %cst_3 : f16
        %285 = vector.load %alloc_15[%c6] : memref<10xi32>, vector<10x6xi32>
        %286 = math.cttz %162 : tensor<10xi16>
        %287 = math.log1p %9 : tensor<3x10xf32>
        %288 = arith.divsi %extracted_51, %128 : i32
        %289 = vector.flat_transpose %78 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %290 = bufferization.to_tensor %alloc_17 : memref<3x10xi1>
        %291 = arith.shrui %c1401205587_i64, %extracted : i64
        %splat_52 = tensor.splat %extracted_51 : tensor<10x6xi32>
        %292 = math.sqrt %4 : tensor<3x10xf16>
        %293 = memref.realloc %172 : memref<10xi64> to memref<10xi64>
        %294 = vector.broadcast %cst_4 : f32 to vector<3x10xf32>
        %295 = vector.gather %alloc_6[%30, %266] [%179], %183, %294 : memref<3x10xf32>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xf32> into vector<3x10xf32>
        %296 = math.cttz %15 : tensor<3x10xi64>
        %297 = arith.divf %extracted_37, %extracted_49 : f16
        %298 = arith.divsi %false, %true_34 : i1
        %299 = arith.muli %c382863489_i64, %c382863489_i64 : i64
        %300 = arith.subi %false, %false_30 : i1
        %301 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 32)>(%269, %186, %199, %199)
        %splat_53 = tensor.splat %true : tensor<10xi1>
        %302 = arith.minui %128, %c1_i32 : i32
        %303 = index.ceildivu %c10, %c11
        memref.alloca_scope.return %cst : f32
      }
      %272 = scf.execute_region -> i32 {
        %276 = arith.subi %c22599_i16, %c22599_i16 : i16
        %277 = math.round %cst_4 : f32
        %278 = vector.multi_reduction <mul>, %107, %107 [] : vector<3x10xi1> to vector<3x10xi1>
        %279 = math.roundeven %cst_3 : f16
        %280 = math.round %cst_5 : f32
        %281 = vector.create_mask %141, %141, %181 : vector<6x3x6xi1>
        %282 = math.ctpop %c89198615_i64 : i64
        %splat_49 = tensor.splat %extracted : tensor<3x10xi64>
        %283 = affine.load %alloc_6[%c6, %c10] : memref<3x10xf32>
        %284 = vector.multi_reduction <xor>, %174, %174 [] : vector<3xi1> to vector<3xi1>
        %285 = arith.shrui %c1_i32, %128 : i32
        %286 = index.sub %64, %c15
        %287 = index.floordivs %c10, %c6
        %288 = vector.multi_reduction <add>, %179, %c1_i32 [0, 1] : vector<3x10xi32> to i32
        %289 = math.roundeven %cst_0 : f32
        %290 = affine.load %167[%c3] : memref<10xi32>
        scf.yield %288 : i32
      }
      %273 = vector.shuffle %262, %197 [0, 3] : vector<1xi1>, vector<3xi1>
      %274 = arith.shrui %extracted, %c1401205587_i64 : i64
      %275 = tensor.empty() : tensor<6x3x6xf16>
      %mapped_48 = linalg.map ins(%11, %11, %133 : tensor<6x3x6xf16>, tensor<6x3x6xf16>, memref<6x3x6xf16>) outs(%275 : tensor<6x3x6xf16>)
        (%in: f16, %in_49: f16, %in_50: f16) {
          %276 = math.log1p %4 : tensor<3x10xf16>
          %277 = arith.xori %128, %c1_i32 : i32
          %278 = vector.insertelement %128, %33[%c8 : index] : vector<10xi32>
          %279 = math.exp2 %splat : tensor<10xf32>
          %280 = vector.shuffle %80, %118 [2, 8, 9, 11, 12, 17, 18, 19] : vector<10xi32>, vector<10xi32>
          %281 = arith.divsi %c1401205587_i64, %c120597359_i64 : i64
          %282 = vector.bitcast %175 : vector<3xi64> to vector<3xi64>
          %283 = math.fpowi %9, %14 : tensor<3x10xf32>, tensor<3x10xi32>
          %alloc_51 = memref.alloc() : memref<10x6xf32>
          %284 = arith.andi %extracted_27, %true_34 : i1
          %285 = vector.load %alloc[%c2, %c2] : memref<3x10xf32>, vector<3x10xf32>
          %286 = arith.shrui %true_34, %true_1 : i1
          %287 = vector.matrix_multiply %131, %80 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
          memref.assume_alignment %alloc_12, 16 : memref<6x3x6xf32>
          %alloc_52 = memref.alloc() : memref<6x3x6xi64>
          memref.assume_alignment %alloc_11, 1 : memref<10x6xi1>
          %288 = math.exp %4 : tensor<3x10xf16>
          %289 = vector.create_mask %64, %c0 : vector<3x10xi1>
          %alloca_53 = memref.alloca() : memref<6x3x6xi16>
          %290 = index.maxu %61, %199
          %291 = memref.realloc %alloc_20 : memref<10xf32> to memref<3xf32>
          %292 = arith.ori %98, %true_34 : i1
          %293 = index.maxs %c9, %c11
          %collapsed_54 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xf16> into tensor<60xf16>
          %294 = math.absf %in_50 : f16
          %collapsed_55 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
          %295 = vector.shuffle %158, %174 [1, 3, 5, 6, 7, 10, 11] : vector<10xi1>, vector<3xi1>
          %alloc_56 = memref.alloc() : memref<6x3x6xi16>
          %296 = vector.broadcast %c22599_i16 : i16 to vector<10x6xi16>
          %297 = vector.broadcast %false_30 : i1 to vector<10x6xi1>
          %298 = vector.broadcast %128 : i32 to vector<10x6xi32>
          %299 = vector.gather %alloc_56[%32, %199, %61] [%298], %297, %296 : memref<6x3x6xi16>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi16> into vector<10x6xi16>
          %300 = math.atan2 %collapsed_54, %collapsed_54 : tensor<60xf16>
          %301 = arith.divui %69, %false : i1
          %302 = arith.cmpi ne, %true_34, %false_30 : i1
          %303 = arith.cmpi ne, %false_30, %true : i1
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      scf.yield %cst_3 : f16
    }
    %203 = math.ctpop %c382863489_i64 : i64
    %204 = index.ceildivu %176, %c1
    %205 = vector.broadcast %c1_i32 : i32 to vector<i32>
    %206 = vector.transfer_write %205, %20[%c14] : vector<i32>, tensor<10xi32>
    %207 = memref.alloca_scope  -> (memref<3x10xf16>) {
      %260 = index.divu %181, %c9
      %261 = math.round %extracted_37 : f16
      %262 = vector.insertelement %c1_i32, %137[%27 : index] : vector<10xi32>
      %c1_i32_48 = arith.constant 1 : i32
      %263 = vector.transfer_read %167[%c6], %c1_i32_48 : memref<10xi32>, vector<i32>
      %264 = arith.minf %cst_23, %cst_5 : f32
      %265 = vector.gather %182[%181, %61] [%33], %158, %78 : memref<3x10xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %266 = math.sqrt %cst_3 : f16
      memref.assume_alignment %alloc_16, 4 : memref<10xi1>
      %267 = vector.multi_reduction <xor>, %131, %33 [] : vector<10xi32> to vector<10xi32>
      %268 = vector.bitcast %158 : vector<10xi1> to vector<10xi1>
      %269 = arith.andi %c1401205587_i64, %c1401205587_i64 : i64
      %270 = arith.andi %c1401205587_i64, %c1401205587_i64 : i64
      %271 = tensor.empty() : tensor<10xi32>
      %272 = memref.atomic_rmw ori %c1_i32_48, %134[%c2, %c2] : (i32, memref<3x10xi32>) -> i32
      %273 = memref.alloca_scope  -> (f32) {
        %cast = tensor.cast %1 : tensor<6x3x6xi32> to tensor<?x?x?xi32>
        %291 = arith.maxf %cst_0, %cst : f32
        %292 = vector.load %alloc_16[%c0] : memref<10xi1>, vector<6x3x6xi1>
        %293 = vector.broadcast %c89198615_i64 : i64 to vector<6x3x6xi64>
        %294 = index.ceildivu %111, %204
        %295 = index.sub %181, %c2
        %296 = vector.broadcast %121 : index to vector<10xindex>
        %297 = vector.broadcast %c22599_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_19[%c0] [%296], %265, %297 : memref<10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %collapsed_52 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xf16> into tensor<60xf16>
        %298 = vector.broadcast %c1_i32_48 : i32 to vector<3xi32>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %131, %179, %298 : vector<10xi32>, vector<3x10xi32> into vector<3xi32>
        %300 = index.ceildivs %c3, %30
        %301 = vector.broadcast %c1_i32_48 : i32 to vector<6xi32>
        %302 = vector.transfer_write %301, %transposed[%204, %32] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, tensor<10x3xi32>
        %303 = arith.divsi %extracted_27, %69 : i1
        %304 = math.exp2 %0 : tensor<10xf32>
        %true_53 = index.bool.constant true
        affine.store %160, %alloc_12[%c4, %c0, %c15] : memref<6x3x6xf32>
        %305 = math.expm1 %11 : tensor<6x3x6xf16>
        %306 = math.sqrt %13 : tensor<10x6xf16>
        %307 = math.atan2 %splat, %0 : tensor<10xf32>
        %308 = math.cttz %c120597359_i64 : i64
        %309 = vector.matrix_multiply %265, %197 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 3 : i32} : (vector<10xi1>, vector<3xi1>) -> vector<30xi1>
        %310 = vector.create_mask %260 : vector<10xi1>
        affine.store %true_1, %182[%c10, %c2] : memref<3x10xi1>
        %expanded = tensor.expand_shape %splat_39 [[0], [1, 2]] : tensor<10x6xi16> into tensor<10x6x1xi16>
        %extracted_54 = tensor.extract %splat_39[%c6, %c4] : tensor<10x6xi16>
        %311 = math.atan2 %cst_23, %160 : f32
        %from_elements_55 = tensor.from_elements %cst_3, %extracted_37, %cst_3, %cst_3, %cst_2, %extracted_37, %cst_3, %cst_2, %extracted_37, %cst_3, %extracted_37, %cst_3, %cst_2, %extracted_37, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %extracted_37, %extracted_37, %extracted_37, %cst_3, %cst_3, %extracted_37, %extracted_37, %extracted_37, %cst_3, %cst_3, %cst_2, %extracted_37, %extracted_37, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %extracted_37, %cst_3, %extracted_37, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %extracted_37, %extracted_37, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3 : tensor<10x6xf16>
        %312 = arith.maxui %extracted, %c382863489_i64 : i64
        %313 = vector.splat %61 : vector<10x6xindex>
        %314 = math.copysign %cst, %160 : f32
        %315 = index.mul %111, %186
        %316 = vector.multi_reduction <and>, %174, %true_1 [0] : vector<3xi1> to i1
        %317 = arith.shrui %false, %true_53 : i1
        memref.alloca_scope.return %cst_4 : f32
      }
      %274 = vector.broadcast %c22599_i16 : i16 to vector<6x3x6xi16>
      %275 = vector.broadcast %true_34 : i1 to vector<6x3x6xi1>
      %276 = vector.broadcast %c1_i32_48 : i32 to vector<6x3x6xi32>
      %277 = vector.gather %alloc_19[%c11] [%276], %275, %274 : memref<10xi16>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xi16> into vector<6x3x6xi16>
      %278 = memref.realloc %156 : memref<10xi1> to memref<10xi1>
      %279 = arith.divf %160, %cst : f32
      %collapsed_49 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x3x6xf16> into tensor<18x6xf16>
      %280 = math.log2 %9 : tensor<3x10xf32>
      scf.index_switch %186 
      case 1 {
        %291 = memref.realloc %alloc_15 : memref<10xi32> to memref<3xi32>
        %292 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %293 = vector.insert %true, %268 [2] : i1 into vector<10xi1>
        %294 = arith.remf %extracted_37, %cst_3 : f16
        %295 = vector.bitcast %113 : vector<10xi32> to vector<10xf32>
        %296 = arith.maxf %cst_3, %extracted_37 : f16
        %expanded = tensor.expand_shape %20 [[0, 1]] : tensor<10xi32> into tensor<10x1xi32>
        %297 = math.log10 %extracted_37 : f16
        %298 = arith.divsi %c22599_i16, %c22599_i16 : i16
        %299 = vector.broadcast %c0 : index to vector<10xindex>
        vector.scatter %alloc_13[%c8] [%299], %265, %118 : memref<10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %300 = math.ctlz %10 : tensor<10xi64>
        %splat_52 = tensor.splat %c89198615_i64 : tensor<3x10xi64>
        %301 = arith.shrui %128, %c1_i32 : i32
        %302 = vector.gather %7[%48, %c0] [%276], %275, %275 : tensor<3x10xi1>, vector<6x3x6xi32>, vector<6x3x6xi1>, vector<6x3x6xi1> into vector<6x3x6xi1>
        %303 = index.maxu %97, %181
        %rank_53 = tensor.rank %from_elements : tensor<10xi64>
        scf.yield
      }
      default {
        %291 = affine.load %133[%c6, %c13, %c14] : memref<6x3x6xf16>
        %292 = index.casts %c6 : index to i32
        %293 = arith.ori %c120597359_i64, %c1192064704_i64 : i64
        %294 = vector.load %alloc_16[%c6] : memref<10xi1>, vector<10x6xi1>
        %295 = math.tanh %9 : tensor<3x10xf32>
        vector.print %185 : vector<6x3x6xf32>
        %296 = math.round %160 : f32
        %297 = vector.extract %26[0] : vector<1xi32>
        %298 = math.tanh %2 : tensor<10x6xf16>
        %299 = math.ctpop %12 : tensor<10xi1>
        %300 = index.castu %false : i1 to index
        %301 = arith.andi %c22599_i16, %c22599_i16 : i16
        %302 = memref.load %alloc_8[%c5, %c2] : memref<10x6xi1>
        %303 = math.expm1 %0 : tensor<10xf32>
        %304 = vector.broadcast %true_34 : i1 to vector<10xi1>
        %305 = bufferization.to_tensor %alloc_19 : memref<10xi16>
      }
      %281 = math.tanh %13 : tensor<10x6xf16>
      %282 = arith.divsi %c382863489_i64, %extracted : i64
      %283 = arith.maxui %c1401205587_i64, %c89198615_i64 : i64
      %284 = vector.flat_transpose %197 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %285 = arith.shrui %c22599_i16, %c22599_i16 : i16
      %286 = math.cos %273 : f32
      %287 = vector.bitcast %96 : vector<1xi32> to vector<1xi32>
      %288 = math.ceil %cst_3 : f16
      %collapsed_50 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
      %289 = math.log10 %9 : tensor<3x10xf32>
      %290 = vector.flat_transpose %113 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %alloc_51 = memref.alloc() : memref<3x10xf16>
      memref.alloca_scope.return %alloc_51 : memref<3x10xf16>
    }
    %208 = vector.flat_transpose %131 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
    %209 = index.ceildivs %c7, %181
    %c1_i32_42 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %210 = vector.transfer_read %20[%193], %c0_i32 : tensor<10xi32>, vector<i32>
    %211 = math.ctpop %18 : tensor<10x3xi32>
    %212 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %174, %183, %158 : vector<3xi1>, vector<3x10xi1> into vector<10xi1>
    %213 = vector.flat_transpose %78 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
    %214 = vector.load %alloc_17[%c1, %c5] : memref<3x10xi1>, vector<6x3x6xi1>
    %215 = math.ceil %160 : f32
    %216 = math.ctpop %true : i1
    %217 = bufferization.to_memref %splat : memref<10xf32>
    memref.alloca_scope  {
      %260 = math.roundeven %cst_3 : f16
      %261 = index.sizeof
      %262 = vector.load %alloc_16[%c7] : memref<10xi1>, vector<6x3x6xi1>
      %263 = index.add %97, %c1
      %264 = arith.shrui %extracted_27, %true_1 : i1
      %265 = math.ctpop %5 : tensor<3x10xi64>
      %266 = math.exp %4 : tensor<3x10xf16>
      %267 = arith.minsi %c382863489_i64, %c89198615_i64 : i64
      %268 = arith.ceildivsi %c382863489_i64, %c1192064704_i64 : i64
      %269 = vector.bitcast %180 : vector<3x10xi1> to vector<3x10xi1>
      %270 = vector.insert %33, %179 [2] : vector<10xi32> into vector<3x10xi32>
      %271 = arith.minf %cst_23, %cst_23 : f32
      %272 = math.roundeven %4 : tensor<3x10xf16>
      %273 = memref.load %167[%c7] : memref<10xi32>
      %collapsed_48 = tensor.collapse_shape %from_elements_32 [[0, 1]] : tensor<10x6xi1> into tensor<60xi1>
      %274 = math.sqrt %cst_5 : f32
      %275 = vector.broadcast %false_30 : i1 to vector<10x10xi1>
      %276 = vector.outerproduct %213, %78, %275 {kind = #vector.kind<xor>} : vector<10xi1>, vector<10xi1>
      %277 = vector.flat_transpose %208 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %278 = math.copysign %9, %9 : tensor<3x10xf32>
      %279 = math.exp %9 : tensor<3x10xf32>
      %280 = index.sizeof
      %281 = math.expm1 %cst_5 : f32
      %282 = math.copysign %cst_3, %cst_3 : f16
      %283 = vector.flat_transpose %175 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %284 = arith.andi %true_1, %98 : i1
      %285 = memref.alloca_scope  -> (i16) {
        %293 = index.maxs %c11, %176
        %c0_i16 = arith.constant 0 : i16
        %294 = vector.transfer_read %alloc_19[%186], %c0_i16 : memref<10xi16>, vector<i16>
        %295 = vector.reduction <maxui>, %131 : vector<10xi32> into i32
        %296 = math.tanh %splat : tensor<10xf32>
        %297 = bufferization.to_tensor %alloc_14 : memref<6x3x6xf16>
        %298 = math.tanh %3 : tensor<10xf16>
        %299 = arith.minf %cst_4, %cst : f32
        %300 = vector.insert %158, %187 [0] : vector<10xi1> into vector<2x10xi1>
        %301 = math.ctlz %20 : tensor<10xi32>
        %collapsed_51 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
        %302 = bufferization.clone %207 : memref<3x10xf16> to memref<3x10xf16>
        %303 = vector.broadcast %true : i1 to vector<2xi1>
        %304 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %78, %187, %303 : vector<10xi1>, vector<2x10xi1> into vector<2xi1>
        %305 = arith.remsi %c0_i16, %c0_i16 : i16
        %306 = arith.ori %c1_i32_42, %c1_i32 : i32
        %307 = math.log10 %0 : tensor<10xf32>
        %308 = vector.bitcast %174 : vector<3xi1> to vector<3xi1>
        %309 = bufferization.to_tensor %alloc : memref<3x10xf32>
        %310 = vector.multi_reduction <maxsi>, %277, %113 [] : vector<10xi32> to vector<10xi32>
        %311 = vector.splat %c15 : vector<10xindex>
        %312 = arith.ceildivsi %128, %c1_i32 : i32
        %313 = vector.bitcast %174 : vector<3xi1> to vector<3xi1>
        %314 = math.ctpop %collapsed_48 : tensor<60xi1>
        %315 = memref.realloc %198 : memref<10xf32> to memref<6xf32>
        %316 = math.round %13 : tensor<10x6xf16>
        %317 = arith.andi %c324838011_i64, %c382863489_i64 : i64
        %extracted_52 = tensor.extract %12[%c2] : tensor<10xi1>
        %318 = arith.shrui %c120597359_i64, %extracted : i64
        %319 = vector.extract %180[1] : vector<3x10xi1>
        %320 = memref.atomic_rmw minu %c324838011_i64, %172[%c6] : (i64, memref<10xi64>) -> i64
        %321 = arith.divsi %false, %extracted_27 : i1
        %322 = vector.bitcast %208 : vector<10xi32> to vector<10xi32>
        %323 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        vector.transfer_write %323, %133[%111, %c12, %199] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf16>, memref<6x3x6xf16>
        memref.alloca_scope.return %c22599_i16 : i16
      }
      %286 = arith.divf %extracted_37, %extracted_37 : f16
      %287 = memref.load %alloc_9[%c1, %c4] : memref<3x10xi64>
      %288 = vector.load %182[%c2, %c0] : memref<3x10xi1>, vector<6x3x6xi1>
      %289 = tensor.empty() : tensor<10xi16>
      %mapped_49 = linalg.map ins(%alloc_19 : memref<10xi16>) outs(%289 : tensor<10xi16>)
        (%in: i16) {
          %293 = vector.broadcast %true_1 : i1 to vector<3x3xi1>
          %294 = vector.outerproduct %197, %197, %293 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
          %295 = math.sqrt %160 : f32
          %296 = math.absi %in : i16
          %297 = tensor.empty() : tensor<6x3x6xi1>
          %298 = vector.broadcast %98 : i1 to vector<10x6xi1>
          %299 = vector.broadcast %128 : i32 to vector<10x6xi32>
          %300 = vector.gather %297[%199, %199, %176] [%299], %298, %298 : tensor<6x3x6xi1>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi1> into vector<10x6xi1>
          %301 = math.tan %160 : f32
          %302 = math.log2 %11 : tensor<6x3x6xf16>
          %303 = affine.load %alloc_10[%c15] : memref<10xi1>
          %304 = arith.muli %false_30, %false : i1
          %305 = vector.splat %193 : vector<6x3x6xindex>
          %306 = math.log2 %0 : tensor<10xf32>
          %307 = math.ctlz %collapsed : tensor<30xi1>
          %true_51 = index.bool.constant true
          %308 = math.powf %cst, %cst_23 : f32
          %309 = math.exp %cst_3 : f16
          %310 = arith.divsi %c1_i32_42, %128 : i32
          %311 = affine.load %92[%c14] : memref<10xf32>
          %312 = vector.broadcast %true : i1 to vector<2xi1>
          %313 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %187, %55, %312 : vector<2x10xi1>, vector<10xi1> into vector<2xi1>
          %314 = arith.andi %true_51, %true : i1
          %315 = math.exp2 %13 : tensor<10x6xf16>
          %316 = vector.broadcast %127 : index to vector<3xindex>
          vector.scatter %alloc_7[%c0, %c2, %c2] [%316], %174, %173 : memref<6x3x6xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
          %317 = arith.divsi %true_34, %false_30 : i1
          %318 = math.ceil %0 : tensor<10xf32>
          %319 = index.casts %extracted : i64 to index
          %320 = index.mul %30, %280
          %321 = arith.shli %true_34, %true_34 : i1
          %322 = math.exp2 %160 : f32
          %from_elements_52 = tensor.from_elements %extracted_27, %extracted_27, %true_34, %false_30, %false, %true_34, %true_34, %false_30, %extracted_27, %98, %false, %98, %true, %false_30, %69, %true, %true_34, %true_1, %true_51, %true_51, %false_30, %true_1, %true_51, %extracted_27, %false_30, %true_34, %true, %false_30, %false_30, %true, %extracted_27, %true, %true, %false_30, %true_34, %true, %303, %69, %98, %98, %true_34, %false, %false_30, %98, %true_34, %303, %false, %69, %true, %true, %true_34, %false_30, %69, %false_30, %true_51, %extracted_27, %true, %false_30, %true_34, %extracted_27, %false, %false_30, %false_30, %extracted_27, %true, %true_51, %303, %true, %true_51, %98, %true_51, %303, %extracted_27, %extracted_27, %extracted_27, %true_34, %98, %303, %extracted_27, %true_34, %extracted_27, %true_1, %false_30, %true_51, %true_51, %true_34, %98, %false_30, %true, %303, %true, %69, %303, %98, %69, %69, %69, %69, %true, %false, %false_30, %true_34, %303, %true_51, %false_30, %false, %69, %69 : tensor<6x3x6xi1>
          memref.store %128, %134[%c1, %c6] : memref<3x10xi32>
          vector.print %19 : vector<10xi32>
          %323 = arith.addf %cst_2, %cst_3 : f16
          %324 = vector.broadcast %193 : index to vector<10xindex>
          vector.scatter %alloc_10[%c4] [%324], %55, %55 : memref<10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %325 = vector.bitcast %262 : vector<6x3x6xi1> to vector<6x3x6xi1>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %290 = vector.broadcast %c89198615_i64 : i64 to vector<3x3xi64>
      %291 = vector.outerproduct %283, %175, %290 {kind = #vector.kind<minsi>} : vector<3xi64>, vector<3xi64>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_50 = arith.constant 0 : i64
      %292 = vector.transfer_read %6[%176], %c0_i64_50 : tensor<10xi64>, vector<i64>
    }
    %218 = arith.muli %c1192064704_i64, %c1401205587_i64 : i64
    %219 = math.cos %3 : tensor<10xf16>
    %220 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %221 = index.mul %c0, %c6
    %222 = vector.broadcast %128 : i32 to vector<1x1xi32>
    %223 = vector.outerproduct %96, %220, %222 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
    %224 = vector.extract %214[4] : vector<6x3x6xi1>
    %225 = affine.load %alloc_13[%c2] : memref<10xi32>
    %226 = math.round %4 : tensor<3x10xf16>
    %227 = index.casts %204 : index to i32
    %228 = math.rsqrt %160 : f32
    %229 = arith.remsi %true_34, %extracted_27 : i1
    %230 = vector.matrix_multiply %173, %175 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %231 = index.sizeof
    %232 = arith.minf %cst_2, %cst_2 : f16
    %233 = vector.bitcast %131 : vector<10xi32> to vector<10xi32>
    %dest, %accumulated_value = vector.scan <or>, %183, %213 {inclusive = true, reduction_dim = 0 : i64} : vector<3x10xi1>, vector<10xi1>
    %splat_43 = tensor.splat %c324838011_i64 : tensor<10xi64>
    %234 = tensor.empty() : tensor<3x10xi64>
    %235 = vector.matrix_multiply %173, %173 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %236 = arith.ori %c1192064704_i64, %c382863489_i64 : i64
    %237 = arith.divsi %true, %69 : i1
    %238 = arith.ori %extracted, %c120597359_i64 : i64
    %239 = math.log1p %4 : tensor<3x10xf16>
    %240 = index.maxs %181, %48
    %241 = arith.remf %160, %cst_23 : f32
    %242 = math.atan2 %cst_5, %cst_23 : f32
    %243 = index.maxu %30, %199
    %244 = index.add %c12, %c0
    %245 = vector.insert %158, %183 [2] : vector<10xi1> into vector<3x10xi1>
    %246 = math.sqrt %cst_3 : f16
    %from_elements_44 = tensor.from_elements %c1_i32, %c1_i32, %128, %c1_i32, %128, %c1_i32, %c1_i32_42, %128, %c1_i32, %225, %225, %c1_i32_42, %c1_i32, %c1_i32, %128, %c1_i32, %225, %225, %c1_i32, %c1_i32_42, %c1_i32, %225, %c1_i32, %225, %225, %c1_i32_42, %c1_i32, %128, %c1_i32_42, %128 : tensor<3x10xi32>
    %247 = math.expm1 %2 : tensor<10x6xf16>
    %248 = arith.divsi %true, %true_34 : i1
    %249 = bufferization.clone %156 : memref<10xi1> to memref<10xi1>
    %250 = tensor.empty() : tensor<3x10xi1>
    %mapped = linalg.map ins(%7, %7 : tensor<3x10xi1>, tensor<3x10xi1>) outs(%250 : tensor<3x10xi1>)
      (%in: i1, %in_48: i1) {
        %260 = math.ceil %cst_23 : f32
        %261 = index.ceildivu %199, %231
        %splat_49 = tensor.splat %c1401205587_i64 : tensor<6x3x6xi64>
        affine.store %in, %alloc_11[%c8, %c8] : memref<10x6xi1>
        memref.store %false, %alloc_11[%c0, %c4] : memref<10x6xi1>
        %262 = arith.divf %extracted_37, %extracted_37 : f16
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %55, %213, %in_48 : vector<10xi1>, vector<10xi1> into i1
        %264 = arith.andi %c382863489_i64, %c89198615_i64 : i64
        %265 = arith.cmpi ugt, %69, %true_1 : i1
        %266 = vector.broadcast %128 : i32 to vector<10x10xi32>
        %267 = vector.outerproduct %80, %19, %266 {kind = #vector.kind<maxui>} : vector<10xi32>, vector<10xi32>
        %268 = vector.reduction <mul>, %80 : vector<10xi32> into i32
        %269 = vector.create_mask %c10 : vector<10xi1>
        %270 = math.tanh %9 : tensor<3x10xf32>
        %271 = vector.bitcast %224 : vector<3x6xi1> to vector<3x6xi1>
        scf.index_switch %c11 
        case 1 {
          %287 = bufferization.clone %alloc_12 : memref<6x3x6xf32> to memref<6x3x6xf32>
          %alloc_52 = memref.alloc() : memref<10x6xf16>
          %288 = math.fma %extracted_37, %extracted_37, %cst_2 : f16
          %289 = math.tanh %9 : tensor<3x10xf32>
          %290 = math.exp2 %cst_3 : f16
          %from_elements_53 = tensor.from_elements %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16, %c22599_i16 : tensor<6x3x6xi16>
          %291 = math.ctlz %c1401205587_i64 : i64
          %292 = vector.insert %158, %187 [0] : vector<10xi1> into vector<2x10xi1>
          %293 = vector.broadcast %c13 : index to vector<10xindex>
          %294 = vector.broadcast %160 : f32 to vector<10xf32>
          vector.scatter %23[%c1, %c2, %c3] [%293], %213, %294 : memref<6x3x6xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
          %295 = index.ceildivu %c12, %c5
          %296 = arith.shli %c1_i32_42, %c1_i32 : i32
          %297 = arith.cmpi eq, %c1_i32, %c1_i32_42 : i32
          %298 = vector.multi_reduction <minui>, %269, %78 [] : vector<10xi1> to vector<10xi1>
          %c0_i32_54 = arith.constant 0 : i32
          %299 = vector.transfer_read %from_elements_44[%32, %c0], %c0_i32_54 : tensor<3x10xi32>, vector<i32>
          %300 = index.maxu %209, %181
          %expanded = tensor.expand_shape %splat_41 [[0], [1], [2, 3]] : tensor<6x3x6xi64> into tensor<6x3x6x1xi64>
          scf.yield
        }
        case 2 {
          %287 = math.ipowi %21, %22 : tensor<i32>
          %288 = arith.minui %false, %true_34 : i1
          %289 = math.log2 %11 : tensor<6x3x6xf16>
          %290 = math.atan2 %4, %4 : tensor<3x10xf16>
          %291 = math.exp %3 : tensor<10xf16>
          %292 = arith.andi %true_1, %extracted_27 : i1
          %293 = vector.broadcast %cst_5 : f32 to vector<f32>
          %294 = vector.transfer_write %293, %0[%c14] : vector<f32>, tensor<10xf32>
          affine.store %false_30, %alloc_8[%c5, %c7] : memref<10x6xi1>
          %from_elements_52 = tensor.from_elements %extracted_27, %extracted_27, %extracted_27, %false, %true, %true, %98, %98, %in, %true, %true, %true, %in, %true_34, %extracted_27, %true, %true_34, %69, %extracted_27, %true, %in, %in_48, %false_30, %true_1, %true_34, %true, %98, %false, %69, %98, %true_34, %extracted_27, %true_1, %extracted_27, %false_30, %extracted_27, %extracted_27, %in, %in, %true_1, %false, %true, %98, %false, %in_48, %false_30, %in_48, %true_34, %true_34, %in_48, %in_48, %false, %69, %false, %extracted_27, %in_48, %false_30, %69, %98, %extracted_27, %in, %98, %false_30, %true_34, %in, %false_30, %in, %true_34, %false, %in_48, %true_34, %in, %false_30, %in_48, %true_1, %true, %true_34, %69, %false_30, %true_1, %in_48, %in, %98, %69, %false, %in_48, %true, %98, %in, %false_30, %false, %false_30, %true_34, %69, %true_1, %69, %true_34, %true_34, %in, %false_30, %98, %false, %false, %true_1, %false, %extracted_27, %false_30, %true : tensor<6x3x6xi1>
          %295 = math.log10 %9 : tensor<3x10xf32>
          affine.store %cst_2, %alloc_14[%c2, %c2, %c4] : memref<6x3x6xf16>
          %296 = math.cttz %c1_i32_42 : i32
          %297 = vector.multi_reduction <maxui>, %180, %174 [1] : vector<3x10xi1> to vector<3xi1>
          %extracted_53 = tensor.extract %250[%c2, %c1] : tensor<3x10xi1>
          %298 = vector.insertelement %true, %213[%141 : index] : vector<10xi1>
          %299 = index.sub %199, %c1
          scf.yield
        }
        case 3 {
          %287 = math.log10 %13 : tensor<10x6xf16>
          %288 = arith.maxf %cst_3, %extracted_37 : f16
          %cast = tensor.cast %4 : tensor<3x10xf16> to tensor<?x?xf16>
          %289 = math.absi %5 : tensor<3x10xi64>
          %290 = arith.ori %c324838011_i64, %extracted : i64
          %collapsed_52 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x3x6xf16> into tensor<18x6xf16>
          %291 = arith.minf %cst_5, %cst_0 : f32
          %292 = math.exp2 %13 : tensor<10x6xf16>
          %293 = math.log2 %0 : tensor<10xf32>
          %294 = arith.subi %extracted_27, %98 : i1
          %295 = bufferization.to_tensor %alloc_11 : memref<10x6xi1>
          %alloc_53 = memref.alloc() : memref<6x3x6xf32>
          %296 = vector.flat_transpose %137 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
          %297 = math.log2 %3 : tensor<10xf16>
          %298 = tensor.empty() : tensor<10x6xi32>
          %299 = math.fpowi %2, %298 : tensor<10x6xf16>, tensor<10x6xi32>
          %300 = arith.ori %in, %false_30 : i1
          scf.yield
        }
        default {
          %287 = bufferization.to_tensor %alloc_11 : memref<10x6xi1>
          %288 = arith.floordivsi %false_30, %69 : i1
          %289 = math.log1p %9 : tensor<3x10xf32>
          %290 = index.castu %c1_i32 : i32 to index
          %291 = math.sqrt %splat : tensor<10xf32>
          %292 = index.divu %c1, %141
          %293 = index.casts %261 : index to i32
          %294 = math.cos %11 : tensor<6x3x6xf16>
          %295 = arith.shrui %false, %true : i1
          %296 = math.ctpop %splat_39 : tensor<10x6xi16>
          %297 = vector.create_mask %111, %193 : vector<10x6xi1>
          %298 = math.cttz %c1_i32 : i32
          %299 = math.cttz %true : i1
          %300 = index.ceildivu %204, %48
          %301 = arith.ori %true_34, %98 : i1
          %302 = math.log1p %160 : f32
        }
        %272 = vector.insert %c1_i32_42, %220 [0] : i32 into vector<1xi32>
        %273 = memref.atomic_rmw minu %c22599_i16, %alloc_19[%c2] : (i16, memref<10xi16>) -> i16
        %274 = vector.maskedload %167[%c0], %55, %80 : memref<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %275 = bufferization.clone %156 : memref<10xi1> to memref<10xi1>
        %276 = vector.broadcast %extracted_37 : f16 to vector<f16>
        vector.transfer_write %276, %133[%127, %64, %c3] : vector<f16>, memref<6x3x6xf16>
        affine.for %arg1 = 0 to 36 {
        }
        %277 = tensor.empty() : tensor<10xi1>
        %mapped_50 = linalg.map ins(%249, %alloc_16 : memref<10xi1>, memref<10xi1>) outs(%277 : tensor<10xi1>)
          (%in_52: i1, %in_53: i1) {
            %287 = bufferization.clone %alloc_12 : memref<6x3x6xf32> to memref<6x3x6xf32>
            %288 = math.fpowi %3, %20 : tensor<10xf16>, tensor<10xi32>
            %289 = vector.flat_transpose %80 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
            %290 = vector.splat %c9 : vector<10xindex>
            %291 = math.log2 %cst_23 : f32
            %292 = arith.maxsi %in, %extracted_27 : i1
            %293 = arith.maxf %cst_2, %cst_2 : f16
            %294 = math.log10 %4 : tensor<3x10xf16>
            %295 = vector.broadcast %true_34 : i1 to vector<2xi1>
            %dest_54, %accumulated_value_55 = vector.scan <add>, %187, %295 {inclusive = true, reduction_dim = 1 : i64} : vector<2x10xi1>, vector<2xi1>
            %296 = vector.shuffle %19, %19 [1, 3, 8, 9, 10, 11, 12, 14, 15, 16, 19] : vector<10xi32>, vector<10xi32>
            %297 = math.cttz %18 : tensor<10x3xi32>
            %298 = arith.andi %in_53, %in_53 : i1
            %299 = math.expm1 %4 : tensor<3x10xf16>
            %300 = arith.maxui %in, %in_53 : i1
            %301 = vector.matrix_multiply %269, %158 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
            %302 = math.ctpop %10 : tensor<10xi64>
            %303 = index.mul %209, %193
            %304 = math.absi %c1_i32 : i32
            %305 = arith.addi %in, %in_48 : i1
            %306 = math.cos %2 : tensor<10x6xf16>
            %307 = math.fpowi %4, %8 : tensor<3x10xf16>, tensor<3x10xi32>
            %308 = arith.mulf %cst, %cst : f32
            %309 = arith.divf %cst_0, %cst_0 : f32
            %collapsed_56 = tensor.collapse_shape %from_elements_32 [[0, 1]] : tensor<10x6xi1> into tensor<60xi1>
            %310 = math.fma %9, %9, %9 : tensor<3x10xf32>
            %311 = vector.reduction <xor>, %33 : vector<10xi32> into i32
            %312 = arith.divsi %225, %128 : i32
            %313 = index.maxs %c5, %c9
            %314 = math.ctpop %c120597359_i64 : i64
            %315 = math.absi %17 : tensor<10xi1>
            %316 = math.tan %9 : tensor<3x10xf32>
            %317 = math.fma %cst_0, %160, %cst : f32
            %false_57 = arith.constant false
            linalg.yield %false_57 : i1
          }
        %278 = bufferization.to_memref %15 : memref<3x10xi64>
        %279 = arith.divsi %in_48, %true_1 : i1
        %280 = vector.create_mask %30, %244 : vector<10x6xi1>
        %281 = index.ceildivu %127, %30
        %282 = math.ctpop %12 : tensor<10xi1>
        memref.assume_alignment %198, 16 : memref<10xf32>
        %283 = math.log2 %2 : tensor<10x6xf16>
        %284 = bufferization.clone %278 : memref<3x10xi64> to memref<3x10xi64>
        %285 = arith.ceildivsi %c120597359_i64, %extracted : i64
        %286 = index.floordivs %c5, %c15
        %true_51 = arith.constant true
        linalg.yield %true_51 : i1
      }
    %251 = index.maxs %27, %c6
    %252 = vector.extract %185[5, 1] : vector<6x3x6xf32>
    %from_elements_45 = tensor.from_elements %c324838011_i64, %c1401205587_i64, %c89198615_i64, %c120597359_i64, %extracted, %c1401205587_i64, %c1401205587_i64, %c1192064704_i64, %c1401205587_i64, %c120597359_i64, %c89198615_i64, %extracted, %c1192064704_i64, %c324838011_i64, %extracted, %c89198615_i64, %c382863489_i64, %c1192064704_i64, %c1192064704_i64, %c324838011_i64, %c1401205587_i64, %c120597359_i64, %c324838011_i64, %c120597359_i64, %c1192064704_i64, %extracted, %c120597359_i64, %extracted, %extracted, %extracted : tensor<3x10xi64>
    %splat_46 = tensor.splat %true : tensor<10xi1>
    %253 = index.divs %c0, %c8
    %254 = tensor.empty() : tensor<10xi64>
    %255 = linalg.copy ins(%from_elements : tensor<10xi64>) outs(%254 : tensor<10xi64>) -> tensor<10xi64>
    %256 = tensor.empty() : tensor<10xi1>
    %transposed_47 = linalg.transpose ins(%16 : tensor<10xi1>) outs(%256 : tensor<10xi1>) permutation = [0] 
    %257 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%17 : tensor<10xi1>) outs(%257 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %260 = scf.while (%arg1 = %233) : (vector<10xi32>) -> vector<10xi32> {
          %267 = index.casts %199 : index to i32
          %extracted_49 = tensor.extract %1[%c4, %c2, %c1] : tensor<6x3x6xi32>
          %268 = vector.create_mask %243, %243, %c0 : vector<6x3x6xi1>
          %269 = arith.minui %true_34, %init : i1
          %270 = math.absi %6 : tensor<10xi64>
          %271 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
          %272 = vector.outerproduct %137, %131, %271 {kind = #vector.kind<xor>} : vector<10xi32>, vector<10xi32>
          %273 = arith.subi %c1401205587_i64, %c1401205587_i64 : i64
          %274 = vector.bitcast %26 : vector<1xi32> to vector<1xi32>
          scf.condition(%true_1) %113 : vector<10xi32>
        } do {
        ^bb0(%arg1: vector<10xi32>):
          %267 = math.copysign %extracted_37, %cst_2 : f16
          %268 = index.casts %in : i1 to index
          %269 = index.floordivs %251, %240
          %270 = vector.insertelement %c324838011_i64, %175[%121 : index] : vector<3xi64>
          affine.store %cst_4, %198[%c4] : memref<10xf32>
          %271 = index.floordivs %253, %c14
          %272 = vector.matrix_multiply %19, %33 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
          %273 = math.fpowi %160, %128 : f32, i32
          %274 = vector.create_mask %27, %c14 : vector<10x6xi1>
          %275 = vector.broadcast %extracted_37 : f16 to vector<3x10xf16>
          %cst_49 = arith.constant 0x4E60891C : f32
          %276 = memref.realloc %alloc_16 : memref<10xi1> to memref<10xi1>
          %277 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 floordiv 32) mod 2 + 4)>(%61, %64, %141, %rank)
          %278 = math.roundeven %cst : f32
          memref.store %cst_5, %217[%c8] : memref<10xf32>
          %279 = arith.floordivsi %128, %225 : i32
          scf.yield %118 : vector<10xi32>
        }
        memref.store %cst_0, %alloc[%c1, %c9] : memref<3x10xf32>
        %261 = math.copysign %0, %0 : tensor<10xf32>
        %262 = index.floordivs %c8, %c14
        %263 = math.copysign %cst_0, %cst : f32
        %264 = affine.for %arg1 = 0 to 8 iter_args(%arg2 = %c3) -> (index) {
          affine.yield %193 : index
        }
        %265 = arith.xori %init, %98 : i1
        %266 = arith.cmpi ult, %c1401205587_i64, %c1401205587_i64 : i64
        %false_48 = arith.constant false
        linalg.yield %false_48 : i1
      }
    %258 = scf.parallel (%arg1) = (%c15) to (%c4) step (%c6) init (%true_1) -> i1 {
      %alloc_48 = memref.alloc() : memref<3x6x6xi32>
      %260 = tensor.empty() : tensor<6x6xi32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %260 : memref<3x6x6xi32>, tensor<6x6xi32>) outs(%1 : tensor<6x3x6xi32>) {
      ^bb0(%in: i32, %in_50: i32, %out: i32):
        %276 = math.ceil %2 : tensor<10x6xf16>
        %277 = math.exp2 %2 : tensor<10x6xf16>
        %278 = math.tanh %cst_2 : f16
        %279 = math.round %4 : tensor<3x10xf16>
        %280 = arith.divf %cst_23, %cst : f32
        %281 = vector.shuffle %179, %179 [1, 2, 4, 5] : vector<3x10xi32>, vector<3x10xi32>
        %282 = vector.matrix_multiply %26, %137 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi32>, vector<10xi32>) -> vector<10xi32>
        %283 = math.absi %22 : tensor<i32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %233, %131, %128 : vector<10xi32>, vector<10xi32> into i32
        %285 = vector.multi_reduction <add>, %19, %80 [] : vector<10xi32> to vector<10xi32>
        %286 = tensor.empty() : tensor<10x6xf32>
        %287 = affine.load %207[%c10, %c7] : memref<3x10xf16>
        %cst_51 = arith.constant 4.230400e+04 : f16
        %288 = arith.minsi %true_34, %98 : i1
        %289 = math.absi %true_1 : i1
        %extracted_52 = tensor.extract %234[%c0, %c6] : tensor<3x10xi64>
        %290 = arith.minf %cst_23, %cst_5 : f32
        %extracted_53 = tensor.extract %286[%c5, %c4] : tensor<10x6xf32>
        %291 = vector.bitcast %173 : vector<3xi64> to vector<3xi64>
        affine.store %true_1, %182[%c15, %c15] : memref<3x10xi1>
        %292 = math.roundeven %0 : tensor<10xf32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %26, %in_50 : vector<1xi32>, vector<1xi32> into i32
        %294 = vector.multi_reduction <maxsi>, %78, %true [0] : vector<10xi1> to i1
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %80, %131, %in_50 : vector<10xi32>, vector<10xi32> into i32
        %296 = index.castu %127 : index to i32
        %297 = math.absi %c1192064704_i64 : i64
        %298 = index.casts %c1192064704_i64 : i64 to index
        %299 = math.ctpop %69 : i1
        %extracted_54 = tensor.extract %14[%c2, %c8] : tensor<3x10xi32>
        %300 = arith.muli %c89198615_i64, %c382863489_i64 : i64
        %301 = math.cttz %splat_39 : tensor<10x6xi16>
        %from_elements_55 = tensor.from_elements %cst, %cst_0, %cst, %cst_0, %extracted_53, %cst_4, %cst_4, %cst_23, %cst_23, %cst_5, %cst_4, %cst, %160, %extracted_53, %extracted_53, %cst_0, %160, %cst, %160, %cst_23, %extracted_53, %cst_23, %cst_23, %cst_23, %cst_23, %extracted_53, %cst, %cst_0, %cst, %extracted_53, %extracted_53, %160, %160, %cst, %extracted_53, %cst_5, %cst_5, %cst_23, %extracted_53, %cst, %cst_23, %extracted_53, %extracted_53, %160, %cst_4, %cst_4, %cst_0, %cst_23, %cst_0, %extracted_53, %160, %cst_5, %cst_0, %cst_23, %cst_23, %cst_0, %cst_4, %cst, %cst_23, %160, %cst_0, %160, %cst_23, %cst_23, %cst_5, %160, %160, %cst_4, %cst_5, %cst_23, %160, %160, %cst_5, %cst, %cst_5, %cst_4, %cst_23, %cst_0, %cst_4, %extracted_53, %cst_4, %extracted_53, %160, %cst_0, %cst, %extracted_53, %cst_23, %cst_23, %cst_23, %cst_23, %cst_4, %cst_23, %cst_5, %extracted_53, %160, %cst_5, %160, %cst, %cst_4, %cst, %cst_5, %cst_4, %160, %cst_23, %cst_4, %cst_0, %cst_4, %cst : tensor<6x3x6xf32>
        linalg.yield %extracted_54 : i32
      } -> tensor<6x3x6xi32>
      %262 = index.maxs %c12, %240
      %263 = scf.execute_region -> memref<10x6xi1> {
        %276 = arith.shrui %c1_i32_42, %c1_i32_42 : i32
        %277 = vector.broadcast %c1_i32 : i32 to vector<i32>
        %278 = vector.transfer_write %277, %14[%30, %c1] : vector<i32>, tensor<3x10xi32>
        %279 = arith.shrui %c1401205587_i64, %c89198615_i64 : i64
        %280 = bufferization.clone %alloc_16 : memref<10xi1> to memref<10xi1>
        %281 = vector.shuffle %131, %220 [0, 2, 3, 5, 6, 8, 9, 10] : vector<10xi32>, vector<1xi32>
        %282 = math.copysign %3, %3 : tensor<10xf16>
        %283 = math.log2 %2 : tensor<10x6xf16>
        %284 = index.maxu %121, %c0
        %285 = tensor.empty() : tensor<10x6xi32>
        %286 = vector.gather %285[%262, %64] [%19], %158, %113 : tensor<10x6xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %287 = memref.load %alloc_18[%c1, %c7] : memref<3x10xi32>
        %288 = memref.realloc %alloc_16 : memref<10xi1> to memref<10xi1>
        %false_50 = index.bool.constant false
        %collapsed_51 = tensor.collapse_shape %250 [[0, 1]] : tensor<3x10xi1> into tensor<30xi1>
        %from_elements_52 = tensor.from_elements %cst_3, %extracted_37, %cst_3, %cst_3, %extracted_37, %extracted_37, %extracted_37, %cst_3, %extracted_37, %cst_3 : tensor<10xf16>
        %289 = math.log2 %4 : tensor<3x10xf16>
        %290 = math.ceil %from_elements_52 : tensor<10xf16>
        scf.yield %alloc_8 : memref<10x6xi1>
      }
      memref.assume_alignment %alloc_19, 2 : memref<10xi16>
      %264 = math.sqrt %11 : tensor<6x3x6xf16>
      %265 = math.log10 %13 : tensor<10x6xf16>
      %266 = vector.shuffle %19, %113 [1, 4, 6, 9, 10, 12, 13, 14, 15, 18, 19] : vector<10xi32>, vector<10xi32>
      %267 = arith.divf %cst_5, %cst_0 : f32
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %118, %33, %c1_i32 : vector<10xi32>, vector<10xi32> into i32
      %269 = math.log2 %0 : tensor<10xf32>
      %270 = math.rsqrt %cst_0 : f32
      %271 = arith.subi %c1_i32_42, %c1_i32 : i32
      %272 = math.ctpop %true_34 : i1
      %273 = math.copysign %2, %13 : tensor<10x6xf16>
      %274 = scf.index_switch %251 -> index 
      case 1 {
        %276 = math.fma %cst_0, %cst_23, %160 : f32
        %277 = vector.transpose %205, [] : vector<i32> to vector<i32>
        %278 = vector.broadcast %c2 : index to vector<3xindex>
        vector.scatter %263[%c9, %c0] [%278], %197, %174 : memref<10x6xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %279 = arith.minf %cst_0, %cst_23 : f32
        %splat_50 = tensor.splat %extracted : tensor<10xi64>
        %280 = math.log1p %extracted_37 : f16
        %281 = arith.xori %extracted_27, %extracted_27 : i1
        %282 = arith.cmpi sle, %true, %true : i1
        %283 = tensor.empty() : tensor<10x6xi32>
        %284 = math.fpowi %2, %283 : tensor<10x6xf16>, tensor<10x6xi32>
        %splat_51 = tensor.splat %c89198615_i64 : tensor<10x6xi64>
        %285 = vector.bitcast %187 : vector<2x10xi1> to vector<2x10xi1>
        %286 = index.ceildivs %48, %c12
        %287 = vector.matrix_multiply %55, %78 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %288 = vector.insertelement %128, %205[] : vector<i32>
        %289 = index.maxs %c1, %c11
        %290 = math.exp %cst : f32
        scf.yield %209 : index
      }
      case 2 {
        %276 = index.sizeof
        %277 = math.ctpop %true : i1
        %278 = index.mul %121, %64
        %279 = index.add %c15, %arg1
        affine.store %extracted_37, %207[%c5, %c11] : memref<3x10xf16>
        %280 = vector.broadcast %186 : index to vector<10xindex>
        vector.scatter %134[%c2, %c8] [%280], %55, %113 : memref<3x10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %281 = vector.broadcast %193 : index to vector<10xindex>
        %282 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        vector.scatter %alloc_6[%c1, %c1] [%281], %158, %282 : memref<3x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %283 = arith.andi %c22599_i16, %c22599_i16 : i16
        %284 = bufferization.clone %182 : memref<3x10xi1> to memref<3x10xi1>
        %285 = memref.atomic_rmw maxu %extracted, %172[%c8] : (i64, memref<10xi64>) -> i64
        %collapsed_50 = tensor.collapse_shape %234 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
        %286 = vector.bitcast %131 : vector<10xi32> to vector<10xi32>
        %287 = arith.minsi %c120597359_i64, %c382863489_i64 : i64
        %false_51 = index.bool.constant false
        %rank_52 = tensor.rank %collapsed_50 : tensor<30xi64>
        %288 = memref.atomic_rmw mulf %cst_23, %198[%c4] : (f32, memref<10xf32>) -> f32
        scf.yield %61 : index
      }
      case 3 {
        %276 = math.expm1 %4 : tensor<3x10xf16>
        %277 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %277, %alloc_14[%193, %c15, %199] : vector<f16>, memref<6x3x6xf16>
        %278 = vector.extract %158[7] : vector<10xi1>
        %alloca_50 = memref.alloca() : memref<3x10xi1>
        %279 = math.log10 %13 : tensor<10x6xf16>
        %280 = arith.minf %cst_2, %cst_2 : f16
        %281 = math.ctpop %transposed_47 : tensor<10xi1>
        %282 = vector.create_mask %c10, %64, %199 : vector<6x3x6xi1>
        %true_51 = arith.constant true
        %false_52 = arith.constant false
        %283 = vector.transfer_read %from_elements_32[%61, %arg1], %false_52 : tensor<10x6xi1>, vector<i1>
        %284 = math.absi %splat_46 : tensor<10xi1>
        %285 = math.copysign %11, %11 : tensor<6x3x6xf16>
        %286 = math.floor %cst_23 : f32
        %splat_53 = tensor.splat %c382863489_i64 : tensor<10xi64>
        %287 = math.atan2 %13, %2 : tensor<10x6xf16>
        %288 = index.castu %121 : index to i32
        %289 = bufferization.clone %alloc_14 : memref<6x3x6xf16> to memref<6x3x6xf16>
        scf.yield %251 : index
      }
      case 4 {
        %276 = math.absf %11 : tensor<6x3x6xf16>
        %277 = arith.divsi %c1401205587_i64, %c89198615_i64 : i64
        %278 = index.ceildivs %199, %121
        %279 = math.atan2 %4, %4 : tensor<3x10xf16>
        %280 = math.cttz %10 : tensor<10xi64>
        %281 = arith.minui %false_30, %false : i1
        %282 = tensor.empty() : tensor<3x10xi64>
        %283 = index.ceildivs %253, %97
        %284 = vector.shuffle %235, %235 [1] : vector<1xi64>, vector<1xi64>
        %true_50 = index.bool.constant true
        %285 = arith.divsi %69, %69 : i1
        %286 = bufferization.to_tensor %263 : memref<10x6xi1>
        %287 = math.copysign %splat, %0 : tensor<10xf32>
        %288 = bufferization.clone %167 : memref<10xi32> to memref<10xi32>
        %289 = vector.shuffle %187, %107 [2] : vector<2x10xi1>, vector<3x10xi1>
        %290 = arith.shli %true_34, %true_1 : i1
        scf.yield %c1 : index
      }
      default {
        %276 = math.log10 %11 : tensor<6x3x6xf16>
        %277 = vector.flat_transpose %158 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %278 = vector.broadcast %false_30 : i1 to vector<10x10xi1>
        %279 = vector.outerproduct %213, %213, %278 {kind = #vector.kind<minui>} : vector<10xi1>, vector<10xi1>
        %280 = index.casts %c6 : index to i32
        %281 = index.casts %30 : index to i32
        %282 = math.tanh %13 : tensor<10x6xf16>
        %splat_50 = tensor.splat %c120597359_i64 : tensor<10xi64>
        %283 = arith.minui %c1401205587_i64, %c382863489_i64 : i64
        %284 = math.sqrt %0 : tensor<10xf32>
        %285 = math.sqrt %11 : tensor<6x3x6xf16>
        memref.assume_alignment %alloc_9, 8 : memref<3x10xi64>
        %286 = vector.multi_reduction <maxui>, %113, %128 [0] : vector<10xi32> to i32
        %287 = math.sqrt %4 : tensor<3x10xf16>
        %alloc_51 = memref.alloc() : memref<10xf16>
        %288 = vector.broadcast %extracted_37 : f16 to vector<10xf16>
        %289 = vector.gather %alloc_51[%c11] [%118], %55, %288 : memref<10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %290 = math.cttz %c1192064704_i64 : i64
        %291 = index.mul %204, %204
        scf.yield %199 : index
      }
      %275 = vector.broadcast %262 : index to vector<10xindex>
      vector.scatter %alloc_11[%c8, %c2] [%275], %213, %213 : memref<10x6xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %false_49 = arith.constant false
      scf.reduce(%false_49)  : i1 {
      ^bb0(%arg2: i1, %arg3: i1):
        %276 = math.log2 %cst : f32
        %277 = bufferization.to_tensor %alloc : memref<3x10xf32>
        %278 = math.rsqrt %cst_4 : f32
        %279 = vector.splat %c10 : vector<10x6xindex>
        %280 = index.ceildivs %c8, %c4
        %281 = vector.broadcast %cst_4 : f32 to vector<3x6xf32>
        %282 = vector.insert %281, %185 [5] : vector<3x6xf32> into vector<6x3x6xf32>
        %283 = vector.broadcast %false_30 : i1 to vector<3x2xi1>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %107, %187, %283 : vector<3x10xi1>, vector<2x10xi1> into vector<3x2xi1>
        %true_50 = index.bool.constant true
        %false_51 = arith.constant false
        scf.reduce.return %false_51 : i1
      }
      scf.yield
    }
    %259 = affine.vector_load %167[%251] : memref<10xi32>, vector<3xi32>
    affine.vector_store %252, %92[%199] : memref<10xf32>, vector<6xf32>
    vector.print %19 : vector<10xi32>
    vector.print %26 : vector<1xi32>
    vector.print %28 : vector<i64>
    vector.print %33 : vector<10xi32>
    vector.print %55 : vector<10xi1>
    vector.print %78 : vector<10xi1>
    vector.print %80 : vector<10xi32>
    vector.print %96 : vector<1xi32>
    vector.print %107 : vector<3x10xi1>
    vector.print %113 : vector<10xi32>
    vector.print %118 : vector<10xi32>
    vector.print %131 : vector<10xi32>
    vector.print %137 : vector<10xi32>
    vector.print %158 : vector<10xi1>
    vector.print %173 : vector<3xi64>
    vector.print %174 : vector<3xi1>
    vector.print %175 : vector<3xi64>
    vector.print %179 : vector<3x10xi32>
    vector.print %180 : vector<3x10xi1>
    vector.print %183 : vector<3x10xi1>
    vector.print %185 : vector<6x3x6xf32>
    vector.print %187 : vector<2x10xi1>
    vector.print %197 : vector<3xi1>
    vector.print %205 : vector<i32>
    vector.print %208 : vector<10xi32>
    vector.print %213 : vector<10xi1>
    vector.print %214 : vector<6x3x6xi1>
    vector.print %220 : vector<1xi32>
    vector.print %224 : vector<3x6xi1>
    vector.print %230 : vector<1xi64>
    vector.print %233 : vector<10xi32>
    vector.print %235 : vector<1xi64>
    vector.print %252 : vector<6xf32>
    vector.print %259 : vector<3xi32>
    vector.print %cst : f32
    vector.print %c120597359_i64 : i64
    vector.print %c1192064704_i64 : i64
    vector.print %c89198615_i64 : i64
    vector.print %c382863489_i64 : i64
    vector.print %false : i1
    vector.print %true : i1
    vector.print %cst_0 : f32
    vector.print %true_1 : i1
    vector.print %c1401205587_i64 : i64
    vector.print %c324838011_i64 : i64
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c22599_i16 : i16
    vector.print %cst_5 : f32
    vector.print %c1_i32 : i32
    vector.print %cst_23 : f32
    vector.print %extracted : i64
    vector.print %69 : i1
    vector.print %extracted_27 : i1
    vector.print %98 : i1
    vector.print %false_30 : i1
    vector.print %128 : i32
    vector.print %160 : f32
    vector.print %true_34 : i1
    vector.print %extracted_37 : f16
    vector.print %c1_i32_42 : i32
    vector.print %225 : i32
    return
  }
}
