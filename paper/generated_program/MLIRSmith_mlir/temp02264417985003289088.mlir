module {
  func.func @func1() {
    %cst = arith.constant 0x4E4513BB : f32
    %cst_0 = arith.constant 1.587200e+04 : f16
    %c976352095_i64 = arith.constant 976352095 : i64
    %c2126613511_i32 = arith.constant 2126613511 : i32
    %cst_1 = arith.constant 1.62972134E+9 : f32
    %c469509676_i32 = arith.constant 469509676 : i32
    %c1517640645_i64 = arith.constant 1517640645 : i64
    %c1159337967_i64 = arith.constant 1159337967 : i64
    %c1817008060_i64 = arith.constant 1817008060 : i64
    %c27311_i16 = arith.constant 27311 : i16
    %cst_2 = arith.constant 0x4E23D385 : f32
    %cst_3 = arith.constant 1.88197875E+9 : f32
    %c55294092_i32 = arith.constant 55294092 : i32
    %cst_4 = arith.constant 2.0104768E+9 : f32
    %cst_5 = arith.constant 5.859200e+04 : f16
    %c5403_i16 = arith.constant 5403 : i16
    %0 = tensor.empty() : tensor<7x5xi16>
    %1 = tensor.empty() : tensor<7x5xi1>
    %2 = tensor.empty() : tensor<10x10xf16>
    %3 = tensor.empty() : tensor<10x10x5xi1>
    %4 = tensor.empty() : tensor<10x10xi32>
    %5 = tensor.empty() : tensor<7x5xi64>
    %6 = tensor.empty() : tensor<7x5xi64>
    %7 = tensor.empty() : tensor<7x5xi16>
    %8 = tensor.empty() : tensor<10x10x5xi64>
    %9 = tensor.empty() : tensor<5xi64>
    %10 = tensor.empty() : tensor<5xi16>
    %11 = tensor.empty() : tensor<10x10x5xi1>
    %12 = tensor.empty() : tensor<7x5xi16>
    %13 = tensor.empty() : tensor<5xi16>
    %14 = tensor.empty() : tensor<10x10x5xf16>
    %15 = tensor.empty() : tensor<10x10x5xf32>
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
    %alloc = memref.alloc() : memref<5xi16>
    %alloc_6 = memref.alloc() : memref<7x5xi32>
    %alloc_7 = memref.alloc() : memref<7x5xf16>
    %alloc_8 = memref.alloc() : memref<10x10x5xf16>
    %alloc_9 = memref.alloc() : memref<10x10x5xi32>
    %alloc_10 = memref.alloc() : memref<5xi32>
    %alloc_11 = memref.alloc() : memref<10x10x5xi16>
    %alloc_12 = memref.alloc() : memref<10x10x5xf32>
    %alloc_13 = memref.alloc() : memref<5xi64>
    %alloc_14 = memref.alloc() : memref<10x10xi1>
    %alloc_15 = memref.alloc() : memref<7x5xi32>
    %alloc_16 = memref.alloc() : memref<10x10x5xi32>
    %alloc_17 = memref.alloc() : memref<10x10xf32>
    %alloc_18 = memref.alloc() : memref<10x10x5xi16>
    %alloc_19 = memref.alloc() : memref<10x10x5xi16>
    %alloc_20 = memref.alloc() : memref<5xf32>
    %16 = tensor.empty() : tensor<10x10x5xi64>
    %17 = linalg.copy ins(%8 : tensor<10x10x5xi64>) outs(%16 : tensor<10x10x5xi64>) -> tensor<10x10x5xi64>
    %18 = tensor.empty() : tensor<5x10x10xi1>
    %transposed = linalg.transpose ins(%3 : tensor<10x10x5xi1>) outs(%18 : tensor<5x10x10xi1>) permutation = [2, 0, 1] 
    %alloc_21 = memref.alloc() : memref<10xf16>
    linalg.reduce ins(%2 : tensor<10x10xf16>) outs(%alloc_21 : memref<10xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %false_51 = index.bool.constant false
        %258 = arith.divsi %c1817008060_i64, %c1159337967_i64 : i64
        %259 = math.cos %init : f16
        %260 = arith.mulf %init, %init : f16
        %261 = vector.splat %c1159337967_i64 : vector<7x5xi64>
        %rank_52 = tensor.rank %17 : tensor<10x10x5xi64>
        %262 = math.absf %2 : tensor<10x10xf16>
        %263 = vector.broadcast %false_51 : i1 to vector<1xi1>
        %264 = vector.broadcast %false_51 : i1 to vector<1xi1>
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %263, %264, %false_51 : vector<1xi1>, vector<1xi1> into i1
        %cst_53 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_53 : f16
      }
    %19 = scf.parallel (%arg0) = (%c3) to (%c2) step (%c7) init (%cst_1) -> f32 {
      %258 = arith.ori %c55294092_i32, %c2126613511_i32 : i32
      %expanded_51 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<7x5xi64> into tensor<7x5x1xi64>
      %259 = arith.cmpi eq, %c2126613511_i32, %c2126613511_i32 : i32
      %260 = math.ipowi %0, %0 : tensor<7x5xi16>
      %261 = vector.broadcast %c1159337967_i64 : i64 to vector<5xi64>
      %262 = vector.broadcast %c1517640645_i64 : i64 to vector<5x5xi64>
      %263 = vector.outerproduct %261, %261, %262 {kind = #vector.kind<minsi>} : vector<5xi64>, vector<5xi64>
      %264 = index.divu %c3, %c0
      %265 = vector.broadcast %cst_2 : f32 to vector<7xf32>
      %266 = vector.insertelement %cst, %265[%c9 : index] : vector<7xf32>
      %267 = vector.broadcast %c27311_i16 : i16 to vector<16xi16>
      %true = arith.constant true
      %268 = vector.broadcast %true : i1 to vector<16xi1>
      %269 = vector.maskedload %alloc_19[%c4, %c4, %c0], %268, %267 : memref<10x10x5xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
      %270 = tensor.empty() : tensor<10xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<10xi1>) outs(%3 : tensor<10x10x5xi1>) {
      ^bb0(%in: i1, %out: i1):
        %279 = arith.divui %out, %in : i1
        %280 = math.ctpop %16 : tensor<10x10x5xi64>
        %281 = arith.muli %c1817008060_i64, %c976352095_i64 : i64
        %282 = arith.shrui %c1817008060_i64, %c1817008060_i64 : i64
        %283 = arith.xori %c1159337967_i64, %c1817008060_i64 : i64
        %284 = tensor.empty() : tensor<10x10x5xi32>
        %285 = math.fpowi %14, %284 : tensor<10x10x5xf16>, tensor<10x10x5xi32>
        %286 = vector.insert %in, %268 [15] : i1 into vector<16xi1>
        %287 = math.tan %cst_3 : f32
        %inserted_56 = tensor.insert %c1159337967_i64 into %6[%c2, %c0] : tensor<7x5xi64>
        %288 = index.casts %c5 : index to i32
        %289 = arith.maxsi %in, %out : i1
        %expanded_57 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<10x10xi32> into tensor<10x10x1xi32>
        %290 = arith.negf %cst_0 : f16
        %291 = vector.matrix_multiply %269, %269 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi16>, vector<16xi16>) -> vector<1xi16>
        %292 = memref.atomic_rmw ori %c55294092_i32, %alloc_6[%c3, %c2] : (i32, memref<7x5xi32>) -> i32
        %extracted_58 = tensor.extract %14[%c5, %c5, %c0] : tensor<10x10x5xf16>
        %293 = arith.mulf %cst_2, %cst_4 : f32
        %294 = arith.addi %in, %true : i1
        %295 = math.absi %out : i1
        %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d1 + d3 mod 128 - d0 + 128, d0 + d2 * 8 + 8, d1 + d3 mod 128 - d0)>(%c1, %c0, %264, %c13)
        %297 = vector.reduction <and>, %267 : vector<16xi16> into i16
        %298 = affine.max affine_map<(d0) -> (0)>(%264)
        %299 = vector.reduction <or>, %267 : vector<16xi16> into i16
        %300 = math.roundeven %cst_4 : f32
        %301 = arith.shrui %c55294092_i32, %c469509676_i32 : i32
        %302 = math.fpowi %cst_4, %c2126613511_i32 : f32, i32
        %303 = arith.remui %c55294092_i32, %c2126613511_i32 : i32
        %304 = arith.ori %true, %in : i1
        %splat_59 = tensor.splat %extracted_58 : tensor<7x5xf16>
        %305 = index.ceildivu %298, %c14
        %306 = affine.apply affine_map<(d0) -> ((d0 + 32) * 32)>(%c14)
        %307 = vector.broadcast %extracted_58 : f16 to vector<10x10xf16>
        %308 = vector.broadcast %extracted_58 : f16 to vector<10xf16>
        %dest_60, %accumulated_value_61 = vector.scan <maxf>, %307, %308 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        linalg.yield %out : i1
      } -> tensor<10x10x5xi1>
      %272 = arith.divui %c469509676_i32, %c469509676_i32 : i32
      %273 = arith.cmpi eq, %c1517640645_i64, %c976352095_i64 : i64
      %274 = arith.divsi %c1517640645_i64, %c1159337967_i64 : i64
      %275 = vector.broadcast %c27311_i16 : i16 to vector<7x10x10xi16>
      %276 = vector.broadcast %c27311_i16 : i16 to vector<7x10xi16>
      %dest_52, %accumulated_value_53 = vector.scan <minsi>, %275, %276 {inclusive = true, reduction_dim = 1 : i64} : vector<7x10x10xi16>, vector<7x10xi16>
      %277 = arith.maxsi %c55294092_i32, %c55294092_i32 : i32
      %278 = arith.minf %cst, %cst_3 : f32
      %false_54 = index.bool.constant false
      %cst_55 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_55)  : f32 {
      ^bb0(%arg1: f32, %arg2: f32):
        %279 = math.log10 %cst : f32
        %280 = math.tanh %cst_2 : f32
        %281 = math.absf %cst_0 : f16
        %282 = index.sub %c6, %c3
        %283 = arith.ori %c976352095_i64, %c976352095_i64 : i64
        memref.assume_alignment %alloc_14, 2 : memref<10x10xi1>
        %284 = math.fpowi %cst_2, %c55294092_i32 : f32, i32
        %285 = vector.broadcast %c27311_i16 : i16 to vector<i16>
        %286 = vector.transfer_write %285, %10[%282] : vector<i16>, tensor<5xi16>
        %cst_56 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_56 : f32
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_11[%c9, %c6, %c9] : memref<10x10x5xi16>, vector<5xi16>
    affine.vector_store %20, %alloc_11[%c1, %c7, %c15] : memref<10x10x5xi16>, vector<5xi16>
    %21 = tensor.empty() : tensor<10xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%alloc_21, %21 : memref<10xf16>, tensor<10xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c5403_i16 : vector<5xi16>, vector<5xi16> into i16
    %25 = arith.ceildivsi %c1517640645_i64, %c976352095_i64 : i64
    %26 = affine.load %alloc_7[%c1, %c15] : memref<7x5xf16>
    %27 = arith.cmpf oge, %cst, %cst : f32
    %28 = arith.cmpf uno, %cst_1, %cst_3 : f32
    %29 = vector.reduction <maxsi>, %20 : vector<5xi16> into i16
    %30 = vector.broadcast %cst_0 : f16 to vector<16x10x5xf16>
    %31 = vector.broadcast %cst_5 : f16 to vector<16x10xf16>
    %dest, %accumulated_value = vector.scan <mul>, %30, %31 {inclusive = true, reduction_dim = 2 : i64} : vector<16x10x5xf16>, vector<16x10xf16>
    %32 = math.log10 %22 : tensor<f16>
    %33 = memref.load %alloc_10[%c2] : memref<5xi32>
    %34 = arith.floordivsi %c2126613511_i32, %c2126613511_i32 : i32
    %35 = scf.while (%arg0 = %alloc) : (memref<5xi16>) -> memref<5xi16> {
      %inserted_51 = tensor.insert %26 into %23[] : tensor<f16>
      %258 = vector.shuffle %20, %20 [0, 1, 2, 6] : vector<5xi16>, vector<5xi16>
      %259 = arith.addf %cst_3, %cst : f32
      %260 = math.log %21 : tensor<10xf16>
      %261 = math.log10 %cst_4 : f32
      %262 = arith.maxf %26, %cst_0 : f16
      %263 = index.maxs %c10, %c1
      %264 = vector.broadcast %c5403_i16 : i16 to vector<10xi16>
      %true = arith.constant true
      %265 = vector.broadcast %true : i1 to vector<10xi1>
      %266 = vector.maskedload %alloc[%c4], %265, %264 : memref<5xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      scf.condition(%true) %arg0 : memref<5xi16>
    } do {
    ^bb0(%arg0: memref<5xi16>):
      %258 = arith.ceildivsi %c1817008060_i64, %c976352095_i64 : i64
      %inserted_51 = tensor.insert %cst_5 into %14[%c4, %c4, %c4] : tensor<10x10x5xf16>
      %259 = affine.if affine_set<(d0, d1, d2) : (0 == 0)>(%c3, %c13, %c5) -> memref<10x10xi64> {
        %275 = math.log1p %22 : tensor<f16>
        %276 = math.log1p %15 : tensor<10x10x5xf32>
        %extracted_54 = tensor.extract %transposed[%c4, %c8, %c7] : tensor<5x10x10xi1>
        %cst_55 = arith.constant 1.000000e+00 : f16
        %277 = vector.transfer_read %14[%c11, %c4, %c14], %cst_55 : tensor<10x10x5xf16>, vector<7xf16>
        %cst_56 = arith.constant 0x4E403800 : f32
        %278 = vector.shuffle %20, %20 [0, 1, 2, 6, 7, 8] : vector<5xi16>, vector<5xi16>
        %279 = math.cos %cst_0 : f16
        %280 = vector.insert %c5403_i16, %20 [0] : i16 into vector<5xi16>
        %alloc_57 = memref.alloc() : memref<10x10xi64>
        affine.yield %alloc_57 : memref<10x10xi64>
      } else {
        %true_54 = arith.constant true
        %inserted_55 = tensor.insert %true_54 into %11[%c4, %c6, %c2] : tensor<10x10x5xi1>
        %inserted_56 = tensor.insert %c27311_i16 into %13[%c1] : tensor<5xi16>
        %275 = arith.ceildivsi %c27311_i16, %c27311_i16 : i16
        %276 = bufferization.to_memref %14 : memref<10x10x5xf16>
        %277 = index.divu %c11, %c13
        %278 = arith.andi %c2126613511_i32, %c55294092_i32 : i32
        %inserted_57 = tensor.insert %c2126613511_i32 into %4[%c3, %c5] : tensor<10x10xi32>
        %279 = math.cos %cst : f32
        %alloc_58 = memref.alloc() : memref<10x10xi64>
        affine.yield %alloc_58 : memref<10x10xi64>
      }
      %260 = arith.floordivsi %c1817008060_i64, %c1517640645_i64 : i64
      %261 = vector.broadcast %c469509676_i32 : i32 to vector<10xi32>
      %true = arith.constant true
      %262 = vector.broadcast %true : i1 to vector<10xi1>
      %263 = vector.maskedload %alloc_16[%c7, %c2, %c4], %262, %261 : memref<10x10x5xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
      %264 = math.ctpop %c27311_i16 : i16
      %265 = arith.cmpi slt, %c1159337967_i64, %c1817008060_i64 : i64
      %266 = index.sub %c5, %c3
      %267 = vector.insert %c27311_i16, %20 [3] : i16 into vector<5xi16>
      memref.assume_alignment %alloc_10, 1 : memref<5xi32>
      %268 = math.cttz %0 : tensor<7x5xi16>
      %269 = math.ipowi %0, %0 : tensor<7x5xi16>
      %270 = vector.extract %261[7] : vector<10xi32>
      %alloc_52 = memref.alloc() : memref<5xf32>
      memref.copy %alloc_20, %alloc_52 : memref<5xf32> to memref<5xf32>
      %271 = vector.broadcast %c1517640645_i64 : i64 to vector<7x5xi64>
      %272 = vector.broadcast %true : i1 to vector<7x5xi1>
      %273 = vector.broadcast %c55294092_i32 : i32 to vector<7x5xi32>
      %274 = vector.gather %8[%c10, %c11, %c13] [%273], %272, %271 : tensor<10x10x5xi64>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xi64> into vector<7x5xi64>
      %true_53 = arith.constant true
      scf.yield %alloc : memref<5xi16>
    }
    %36 = index.floordivs %c11, %c1
    %extracted = tensor.extract %12[%c2, %c2] : tensor<7x5xi16>
    %37 = scf.index_switch %c14 -> f16 
    case 1 {
      %258 = math.expm1 %cst_3 : f32
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %259 = vector.transfer_read %15[%c9, %c4, %c3], %cst_52 : tensor<10x10x5xf32>, vector<f32>
      %260 = math.log1p %23 : tensor<f16>
      %cast = tensor.cast %6 : tensor<7x5xi64> to tensor<?x?xi64>
      %261 = tensor.empty() : tensor<7x5xi1>
      %mapped_53 = linalg.map ins(%1, %1 : tensor<7x5xi1>, tensor<7x5xi1>) outs(%261 : tensor<7x5xi1>)
        (%in: i1, %in_57: i1) {
          %from_elements_58 = tensor.from_elements %extracted, %c27311_i16, %c5403_i16, %c5403_i16, %c5403_i16 : tensor<5xi16>
          %269 = arith.remsi %c1517640645_i64, %c1817008060_i64 : i64
          %270 = arith.andi %c1817008060_i64, %c976352095_i64 : i64
          %271 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
          %272 = arith.divsi %extracted, %c27311_i16 : i16
          %273 = math.ipowi %transposed, %transposed : tensor<5x10x10xi1>
          %274 = arith.floordivsi %c27311_i16, %extracted : i16
          memref.assume_alignment %alloc_9, 8 : memref<10x10x5xi32>
          %275 = vector.broadcast %c2126613511_i32 : i32 to vector<5xi32>
          %276 = vector.broadcast %in : i1 to vector<5xi1>
          %277 = vector.gather %4[%36, %c2] [%275], %276, %275 : tensor<10x10xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
          %278 = arith.ceildivsi %c1159337967_i64, %c1817008060_i64 : i64
          %splat_59 = tensor.splat %cst_4 : tensor<5xf32>
          %279 = bufferization.clone %alloc_14 : memref<10x10xi1> to memref<10x10xi1>
          %280 = index.divu %c15, %c2
          %281 = index.divu %c13, %c10
          %282 = index.floordivs %c8, %c2
          %283 = math.tanh %15 : tensor<10x10x5xf32>
          %284 = math.ipowi %from_elements_58, %13 : tensor<5xi16>
          %285 = arith.cmpi ne, %in_57, %in_57 : i1
          %286 = math.roundeven %cst_2 : f32
          %287 = arith.remui %c5403_i16, %c5403_i16 : i16
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %271, %20, %c27311_i16 : vector<5xi16>, vector<5xi16> into i16
          %cst_60 = arith.constant 0x4CA2E910 : f32
          %289 = arith.divf %cst_3, %cst_3 : f32
          %290 = math.tanh %15 : tensor<10x10x5xf32>
          %291 = arith.cmpf ord, %cst_5, %26 : f16
          memref.assume_alignment %alloc_19, 2 : memref<10x10x5xi16>
          %292 = vector.flat_transpose %277 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
          %293 = math.cos %cst_4 : f32
          %294 = math.atan2 %14, %14 : tensor<10x10x5xf16>
          %295 = math.tanh %26 : f16
          %c0_i16 = arith.constant 0 : i16
          %296 = vector.transfer_read %0[%281, %c3], %c0_i16 : tensor<7x5xi16>, vector<16xi16>
          %297 = vector.multi_reduction <minsi>, %20, %20 [] : vector<5xi16> to vector<5xi16>
          %false_61 = arith.constant false
          linalg.yield %false_61 : i1
        }
      %262 = math.ctlz %16 : tensor<10x10x5xi64>
      %263 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%c5, %c14, %c0, %36)
      memref.assume_alignment %alloc_13, 4 : memref<5xi64>
      %generated_54 = tensor.generate %c1, %c11 {
      ^bb0(%arg0: index, %arg1: index):
        %269 = index.divs %c10, %c12
        %270 = index.sizeof
        %alloc_57 = memref.alloc() : memref<10x10xi16>
        %271 = arith.remsi %c1159337967_i64, %c1517640645_i64 : i64
        tensor.yield %extracted : i16
      } : tensor<?x?xi16>
      %264 = math.rsqrt %23 : tensor<f16>
      %265 = vector.load %alloc_15[%c5, %c2] : memref<7x5xi32>, vector<5xi32>
      memref.assume_alignment %alloc_21, 1 : memref<10xf16>
      %266 = index.divu %c4, %c14
      %false_55 = arith.constant false
      %inserted_56 = tensor.insert %false_55 into %1[%c5, %c2] : tensor<7x5xi1>
      %267 = vector.extract %265[4] : vector<5xi32>
      %268 = vector.insert %c27311_i16, %20 [1] : i16 into vector<5xi16>
      scf.yield %cst_0 : f16
    }
    case 2 {
      %258 = math.roundeven %cst : f32
      %259 = index.maxu %c0, %c15
      %260 = math.fpowi %26, %c55294092_i32 : f16, i32
      %261 = arith.remf %cst_3, %cst_4 : f32
      %262 = memref.atomic_rmw minu %c55294092_i32, %alloc_9[%c1, %c8, %c2] : (i32, memref<10x10x5xi32>) -> i32
      %263 = arith.shrui %c1159337967_i64, %c976352095_i64 : i64
      %264 = arith.mulf %cst_0, %cst_0 : f16
      %265 = index.divs %36, %c8
      %266 = index.ceildivu %c13, %c13
      %267 = arith.remf %cst_1, %cst : f32
      %268 = math.log10 %15 : tensor<10x10x5xf32>
      %269 = tensor.empty() : tensor<5x7xi64>
      %270 = tensor.empty() : tensor<7x7xi64>
      %271 = linalg.matmul ins(%5, %269 : tensor<7x5xi64>, tensor<5x7xi64>) outs(%270 : tensor<7x7xi64>) -> tensor<7x7xi64>
      %272 = affine.if affine_set<(d0, d1, d2, d3) : (d0 mod 32 >= 0, d0 - (d2 + 17) == 0, d2 == 0)>(%c11, %c15, %c6, %c9) -> f16 {
        %275 = vector.broadcast %26 : f16 to vector<7x5x7xf16>
        %276 = vector.broadcast %cst_5 : f16 to vector<7x5xf16>
        %dest_52, %accumulated_value_53 = vector.scan <maxf>, %275, %276 {inclusive = true, reduction_dim = 2 : i64} : vector<7x5x7xf16>, vector<7x5xf16>
        %277 = index.add %c6, %c7
        %278 = math.log1p %14 : tensor<10x10x5xf16>
        %279 = index.sub %c12, %36
        %extracted_54 = tensor.extract %0[%c5, %c2] : tensor<7x5xi16>
        %280 = index.divu %c7, %c11
        %281 = index.maxu %280, %266
        %282 = math.tanh %cst_1 : f32
        affine.yield %26 : f16
      } else {
        %275 = vector.reduction <add>, %20 : vector<5xi16> into i16
        affine.store %c469509676_i32, %alloc_9[%c0, %c4, %c6] : memref<10x10x5xi32>
        %276 = bufferization.to_tensor %alloc_21 : memref<10xf16>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %20, %20, %c5403_i16 : vector<5xi16>, vector<5xi16> into i16
        %278 = math.fpowi %cst_4, %c2126613511_i32 : f32, i32
        %279 = index.sizeof
        %true = arith.constant true
        %280 = vector.broadcast %true : i1 to vector<5x16xi1>
        %281 = vector.broadcast %true : i1 to vector<5xi1>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %280, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<5x16xi1>, vector<5xi1>
        %282 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        vector.transfer_write %282, %alloc_17[%c3, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf32>, memref<10x10xf32>
        affine.yield %26 : f16
      }
      %extracted_51 = tensor.extract %5[%c3, %c0] : tensor<7x5xi64>
      %273 = bufferization.clone %alloc_13 : memref<5xi64> to memref<5xi64>
      %274 = vector.broadcast %extracted : i16 to vector<i16>
      vector.transfer_write %274, %alloc[%c10] : vector<i16>, memref<5xi16>
      scf.yield %cst_5 : f16
    }
    default {
      %258 = math.atan2 %cst_1, %cst_4 : f32
      %259 = arith.divf %cst, %cst_2 : f32
      %260 = math.ctlz %11 : tensor<10x10x5xi1>
      %261 = math.ipowi %c5403_i16, %extracted : i16
      %262 = arith.divui %c2126613511_i32, %c2126613511_i32 : i32
      affine.store %cst_4, %alloc_12[%c0, %c11, %c15] : memref<10x10x5xf32>
      %263 = math.roundeven %21 : tensor<10xf16>
      %264 = affine.if affine_set<(d0, d1, d2, d3) : (d0 mod 32 >= 0, d0 - (d2 + 17) == 0, d2 == 0)>(%c2, %c11, %c12, %c9) -> i1 {
        %271 = arith.ori %c1159337967_i64, %c976352095_i64 : i64
        %272 = arith.maxf %cst_4, %cst_4 : f32
        %273 = arith.remf %cst_3, %cst_3 : f32
        %274 = arith.ceildivsi %c976352095_i64, %c1517640645_i64 : i64
        %275 = vector.broadcast %c1 : index to vector<7xindex>
        %false_56 = arith.constant false
        %276 = vector.broadcast %false_56 : i1 to vector<7xi1>
        %277 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        vector.scatter %alloc_17[%c0, %c5] [%275], %276, %277 : memref<10x10xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %278 = arith.shli %c27311_i16, %c5403_i16 : i16
        %279 = math.atan %14 : tensor<10x10x5xf16>
        %280 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %true = arith.constant true
        affine.yield %true : i1
      } else {
        %271 = math.tanh %14 : tensor<10x10x5xf16>
        %272 = arith.remf %cst_1, %cst_2 : f32
        %273 = index.casts %extracted : i16 to index
        %274 = index.sub %c8, %c11
        %275 = math.tanh %23 : tensor<f16>
        %276 = math.cos %15 : tensor<10x10x5xf32>
        %277 = index.ceildivu %c5, %c12
        %278 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
        %true = arith.constant true
        affine.yield %true : i1
      }
      %265 = math.log10 %cst_1 : f32
      %266 = tensor.empty() : tensor<7x5xi64>
      %mapped_51 = linalg.map ins(%5, %6, %5 : tensor<7x5xi64>, tensor<7x5xi64>, tensor<7x5xi64>) outs(%266 : tensor<7x5xi64>)
        (%in: i64, %in_56: i64, %in_57: i64) {
          %271 = arith.remf %cst_1, %cst_4 : f32
          %272 = index.casts %in : i64 to index
          %splat_58 = tensor.splat %cst_3 : tensor<7x5xf32>
          %273 = arith.andi %c2126613511_i32, %c2126613511_i32 : i32
          %274 = vector.broadcast %c27311_i16 : i16 to vector<5x5xi16>
          %275 = vector.outerproduct %20, %20, %274 {kind = #vector.kind<minui>} : vector<5xi16>, vector<5xi16>
          %276 = math.cttz %7 : tensor<7x5xi16>
          %277 = index.mul %c8, %c15
          %278 = tensor.empty(%36, %c12) : tensor<?x?xf32>
          %279 = vector.insert %extracted, %20 [0] : i16 into vector<5xi16>
          %280 = index.mul %c5, %c3
          %281 = arith.ori %c976352095_i64, %in : i64
          %282 = math.atan %cst_0 : f16
          bufferization.dealloc_tensor %16 : tensor<10x10x5xi64>
          %283 = math.powf %23, %22 : tensor<f16>
          %284 = math.log1p %cst_4 : f32
          %285 = arith.maxsi %c1517640645_i64, %in : i64
          vector.print %20 : vector<5xi16>
          %286 = arith.floordivsi %c27311_i16, %c27311_i16 : i16
          %287 = vector.transpose %20, [0] : vector<5xi16> to vector<5xi16>
          %288 = index.divs %280, %c9
          %289 = arith.maxsi %c5403_i16, %c5403_i16 : i16
          %290 = math.log1p %15 : tensor<10x10x5xf32>
          %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %extracted : vector<5xi16>, vector<5xi16> into i16
          %292 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
          %293 = vector.shuffle %292, %20 [0, 2, 6] : vector<5xi16>, vector<5xi16>
          %294 = index.divu %c8, %c10
          %295 = memref.realloc %alloc_13 : memref<5xi64> to memref<10xi64>
          %296 = arith.andi %extracted, %c27311_i16 : i16
          %297 = index.divs %277, %c15
          %alloc_59 = memref.alloc() : memref<7x5xi16>
          vector.print %292 : vector<5xi16>
          %298 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %267 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
      %268 = arith.minf %cst, %cst_3 : f32
      %extracted_52 = tensor.extract %7[%c1, %c1] : tensor<7x5xi16>
      memref.assume_alignment %alloc_11, 16 : memref<10x10x5xi16>
      %269 = vector.broadcast %cst_5 : f16 to vector<10x7xf16>
      %270 = vector.broadcast %cst_0 : f16 to vector<10xf16>
      %dest_53, %accumulated_value_54 = vector.scan <maxf>, %269, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<10x7xf16>, vector<10xf16>
      %expanded_55 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<10x10xf16> into tensor<10x10x1xf16>
      scf.yield %cst_5 : f16
    }
    %38 = index.add %c10, %c7
    %alloc_22 = memref.alloc() : memref<10x10xf32>
    memref.copy %alloc_17, %alloc_22 : memref<10x10xf32> to memref<10x10xf32>
    %39 = affine.load %alloc_13[%c12] : memref<5xi64>
    %alloc_23 = memref.alloc() : memref<5xi16>
    memref.copy %alloc, %alloc_23 : memref<5xi16> to memref<5xi16>
    %40 = arith.maxsi %c2126613511_i32, %c55294092_i32 : i32
    %41 = affine.for %arg0 = 0 to 36 iter_args(%arg1 = %c469509676_i32) -> (i32) {
      affine.yield %c55294092_i32 : i32
    }
    %42 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
    %43 = index.sub %c4, %c4
    %44 = vector.shuffle %20, %20 [1, 2, 5, 7, 8, 9] : vector<5xi16>, vector<5xi16>
    affine.store %cst_2, %alloc_17[%c5, %c3] : memref<10x10xf32>
    %false = arith.constant false
    scf.if %false {
      %258 = bufferization.to_memref %12 : memref<7x5xi16>
      %259 = math.expm1 %cst_1 : f32
      %260 = arith.shrui %c2126613511_i32, %c469509676_i32 : i32
      %261 = arith.ceildivsi %c27311_i16, %extracted : i16
      %262 = vector.broadcast %c5403_i16 : i16 to vector<10x10x5xi16>
      %263 = arith.cmpi sgt, %false, %false : i1
      %264 = math.expm1 %15 : tensor<10x10x5xf32>
      %265 = scf.while (%arg0 = %alloc_17) : (memref<10x10xf32>) -> memref<10x10xf32> {
        %266 = arith.maxf %cst_4, %cst_1 : f32
        %267 = tensor.empty() : tensor<10x10x5xi32>
        %268 = math.fpowi %15, %267 : tensor<10x10x5xf32>, tensor<10x10x5xi32>
        %269 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        %270 = vector.broadcast %false : i1 to vector<16xi1>
        %271 = vector.maskedload %alloc_7[%c0, %c4], %270, %269 : memref<7x5xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %272 = index.sub %43, %c13
        %273 = math.round %22 : tensor<f16>
        %274 = math.ctpop %0 : tensor<7x5xi16>
        %275 = index.sub %c7, %c10
        %276 = math.rsqrt %22 : tensor<f16>
        scf.condition(%false) %alloc_17 : memref<10x10xf32>
      } do {
      ^bb0(%arg0: memref<10x10xf32>):
        %266 = arith.xori %39, %39 : i64
        %267 = arith.maxsi %c1159337967_i64, %c1817008060_i64 : i64
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %268 = vector.transfer_read %alloc_9[%c6, %c9, %43], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<10x10x5xi32>, vector<16xi32>
        %269 = arith.divsi %c976352095_i64, %c976352095_i64 : i64
        %270 = math.round %15 : tensor<10x10x5xf32>
        %271 = bufferization.to_memref %10 : memref<5xi16>
        %272 = bufferization.to_tensor %alloc_9 : memref<10x10x5xi32>
        %273 = vector.bitcast %262 : vector<10x10x5xi16> to vector<10x10x5xi16>
        %274 = arith.maxui %false, %false : i1
        %275 = math.roundeven %14 : tensor<10x10x5xf16>
        memref.store %c55294092_i32, %alloc_16[%c6, %c2, %c4] : memref<10x10x5xi32>
        %276 = math.log2 %14 : tensor<10x10x5xf16>
        %277 = math.expm1 %cst_2 : f32
        %278 = vector.shuffle %273, %262 [1, 2, 3, 4, 5, 6, 7, 10, 11, 12, 13, 14, 16] : vector<10x10x5xi16>, vector<10x10x5xi16>
        %279 = arith.muli %c1159337967_i64, %39 : i64
        %280 = index.casts %c1517640645_i64 : i64 to index
        scf.yield %alloc_17 : memref<10x10xf32>
      }
    }
    %45 = arith.shrsi %c469509676_i32, %c55294092_i32 : i32
    %46 = vector.extract %20[4] : vector<5xi16>
    %alloc_24 = memref.alloc() : memref<5xi1>
    %rank = tensor.rank %transposed : tensor<5x10x10xi1>
    %47 = arith.minf %cst_4, %cst_2 : f32
    %48 = scf.if %false -> (memref<10x10x5xf16>) {
      %258 = arith.ceildivsi %c469509676_i32, %c2126613511_i32 : i32
      %259 = arith.divsi %c1159337967_i64, %c1517640645_i64 : i64
      %260 = arith.minf %cst_5, %cst_5 : f16
      %261 = arith.ori %c976352095_i64, %39 : i64
      %262 = math.rsqrt %14 : tensor<10x10x5xf16>
      %263 = math.round %2 : tensor<10x10xf16>
      %extracted_51 = tensor.extract %9[%c4] : tensor<5xi64>
      %264 = arith.maxf %cst_4, %cst_2 : f32
      scf.yield %alloc_8 : memref<10x10x5xf16>
    } else {
      %258 = math.absi %1 : tensor<7x5xi1>
      %alloc_51 = memref.alloc() : memref<10x10x5xi1>
      %259 = vector.broadcast %false : i1 to vector<7x5xi1>
      %260 = vector.broadcast %c55294092_i32 : i32 to vector<7x5xi32>
      %261 = vector.gather %alloc_51[%c3, %c12, %c1] [%260], %259, %259 : memref<10x10x5xi1>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xi1> into vector<7x5xi1>
      %262 = index.divu %c13, %43
      %263 = arith.addf %cst_4, %cst_2 : f32
      %264 = vector.transpose %261, [1, 0] : vector<7x5xi1> to vector<5x7xi1>
      %265 = math.ctpop %13 : tensor<5xi16>
      %266 = arith.ori %false, %false : i1
      %267 = math.ctpop %39 : i64
      scf.yield %alloc_8 : memref<10x10x5xf16>
    }
    %49 = index.add %c6, %c4
    %inserted = tensor.insert %false into %1[%c0, %c1] : tensor<7x5xi1>
    %50 = math.cttz %0 : tensor<7x5xi16>
    %51 = arith.divsi %c27311_i16, %c5403_i16 : i16
    %52 = arith.mulf %cst_4, %cst_4 : f32
    %53 = arith.remf %cst_1, %cst_1 : f32
    memref.assume_alignment %alloc_18, 2 : memref<10x10x5xi16>
    %54 = vector.broadcast %false : i1 to vector<16x16xi1>
    %55 = vector.broadcast %false : i1 to vector<16xi1>
    %dest_25, %accumulated_value_26 = vector.scan <add>, %54, %55 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xi1>, vector<16xi1>
    %56 = arith.mulf %cst_0, %26 : f16
    vector.print %42 : vector<5xi16>
    %57 = tensor.empty() : tensor<10x10x5xf32>
    %mapped = linalg.map ins(%15, %15 : tensor<10x10x5xf32>, tensor<10x10x5xf32>) outs(%57 : tensor<10x10x5xf32>)
      (%in: f32, %in_51: f32) {
        %258 = tensor.empty() : tensor<10x10x5xi32>
        %259 = math.fpowi %57, %258 : tensor<10x10x5xf32>, tensor<10x10x5xi32>
        %260 = memref.atomic_rmw addi %c27311_i16, %alloc_19[%c2, %c9, %c2] : (i16, memref<10x10x5xi16>) -> i16
        %261 = vector.broadcast %extracted : i16 to vector<i16>
        %262 = vector.transfer_write %261, %0[%38, %c1] : vector<i16>, tensor<7x5xi16>
        %263 = arith.shrsi %c5403_i16, %c5403_i16 : i16
        %264 = memref.atomic_rmw assign %cst_5, %alloc_21[%c2] : (f16, memref<10xf16>) -> f16
        %265 = arith.addi %c469509676_i32, %c55294092_i32 : i32
        %inserted_52 = tensor.insert %cst_0 into %23[] : tensor<f16>
        affine.store %c55294092_i32, %alloc_15[%c7, %c4] : memref<7x5xi32>
        %266 = arith.remf %cst_2, %cst_4 : f32
        %inserted_53 = tensor.insert %c976352095_i64 into %9[%c3] : tensor<5xi64>
        %267 = vector.shuffle %20, %42 [1, 2, 3, 4, 6, 8, 9] : vector<5xi16>, vector<5xi16>
        %268 = index.ceildivs %c2, %38
        %269 = vector.shuffle %261, %261 [0, 1] : vector<i16>, vector<i16>
        %extracted_54 = tensor.extract %21[%c0] : tensor<10xf16>
        %270 = vector.load %alloc[%c2] : memref<5xi16>, vector<10x10x5xi16>
        %alloc_55 = memref.alloc() : memref<7x5xf16>
        memref.copy %alloc_7, %alloc_55 : memref<7x5xf16> to memref<7x5xf16>
        %271 = math.fpowi %26, %c469509676_i32 : f16, i32
        %272 = arith.divf %cst_4, %cst_2 : f32
        %from_elements_56 = tensor.from_elements %c1817008060_i64, %c1517640645_i64, %c1817008060_i64, %39, %c1517640645_i64, %c1159337967_i64, %c1517640645_i64, %39, %c1817008060_i64, %c976352095_i64, %c1817008060_i64, %c1159337967_i64, %c1159337967_i64, %c976352095_i64, %c976352095_i64, %c1159337967_i64, %c1817008060_i64, %c1517640645_i64, %c1817008060_i64, %c976352095_i64, %39, %c1817008060_i64, %c1159337967_i64, %c1159337967_i64, %39, %c1159337967_i64, %39, %c1517640645_i64, %c1817008060_i64, %39, %39, %c1817008060_i64, %c1817008060_i64, %39, %c1517640645_i64, %39, %c1159337967_i64, %c976352095_i64, %39, %c1817008060_i64, %c1517640645_i64, %c1159337967_i64, %c976352095_i64, %c1817008060_i64, %c1817008060_i64, %c1159337967_i64, %c1159337967_i64, %39, %c1817008060_i64, %c1159337967_i64, %c1159337967_i64, %c976352095_i64, %39, %c1517640645_i64, %c1817008060_i64, %39, %39, %39, %c1517640645_i64, %39, %c1159337967_i64, %c976352095_i64, %c976352095_i64, %c1159337967_i64, %c976352095_i64, %c976352095_i64, %c1517640645_i64, %39, %39, %c976352095_i64, %c1517640645_i64, %c1517640645_i64, %c976352095_i64, %c1817008060_i64, %c1159337967_i64, %39, %c1517640645_i64, %c1517640645_i64, %c1817008060_i64, %c1817008060_i64, %c976352095_i64, %39, %c1817008060_i64, %c1817008060_i64, %c976352095_i64, %c1159337967_i64, %c976352095_i64, %c1517640645_i64, %c1817008060_i64, %c1817008060_i64, %39, %c1159337967_i64, %39, %c976352095_i64, %c976352095_i64, %c1817008060_i64, %c1159337967_i64, %c1817008060_i64, %c1517640645_i64, %c976352095_i64 : tensor<10x10xi64>
        %273 = arith.ori %c469509676_i32, %c55294092_i32 : i32
        %274 = scf.index_switch %c15 -> index 
        case 1 {
          %284 = memref.realloc %alloc_10 : memref<5xi32> to memref<7xi32>
          %285 = arith.ceildivsi %c55294092_i32, %c469509676_i32 : i32
          %286 = vector.splat %c1159337967_i64 : vector<5xi64>
          %287 = arith.remf %cst_5, %extracted_54 : f16
          bufferization.dealloc_tensor %6 : tensor<7x5xi64>
          memref.copy %alloc_9, %alloc_16 : memref<10x10x5xi32> to memref<10x10x5xi32>
          %288 = vector.shuffle %42, %42 [0, 2, 3, 4, 7, 9] : vector<5xi16>, vector<5xi16>
          %289 = arith.divf %cst_5, %26 : f16
          %290 = math.powf %cst_5, %26 : f16
          %291 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d2)>(%c10, %c1, %c10, %c6)
          %292 = bufferization.to_tensor %alloc_6 : memref<7x5xi32>
          %293 = arith.remf %cst_2, %cst_2 : f32
          %294 = arith.floordivsi %c1159337967_i64, %c1159337967_i64 : i64
          %295 = memref.atomic_rmw muli %c5403_i16, %alloc_18[%c5, %c1, %c3] : (i16, memref<10x10x5xi16>) -> i16
          memref.store %c469509676_i32, %alloc_6[%c3, %c1] : memref<7x5xi32>
          %296 = index.sub %c11, %c8
          scf.yield %268 : index
        }
        case 2 {
          %284 = math.tanh %26 : f16
          %285 = affine.load %alloc_10[%c9] : memref<5xi32>
          %286 = index.mul %c12, %rank
          %287 = vector.transpose %261, [] : vector<i16> to vector<i16>
          %288 = math.tanh %21 : tensor<10xf16>
          vector.print %270 : vector<10x10x5xi16>
          %inserted_58 = tensor.insert %285 into %258[%c4, %c6, %c2] : tensor<10x10x5xi32>
          %289 = index.floordivs %268, %c8
          memref.store %c1159337967_i64, %alloc_13[%c1] : memref<5xi64>
          %290 = vector.broadcast %extracted : i16 to vector<10x10xi16>
          %291 = vector.load %alloc_11[%c8, %c1, %c1] : memref<10x10x5xi16>, vector<5xi16>
          %292 = arith.ori %c976352095_i64, %c976352095_i64 : i64
          %293 = math.roundeven %cst_2 : f32
          %294 = arith.floordivsi %c1817008060_i64, %c1517640645_i64 : i64
          memref.store %cst_0, %alloc_7[%c6, %c2] : memref<7x5xf16>
          %295 = math.log2 %15 : tensor<10x10x5xf32>
          scf.yield %286 : index
        }
        case 3 {
          %284 = vector.broadcast %c55294092_i32 : i32 to vector<16xi32>
          %285 = vector.broadcast %false : i1 to vector<16xi1>
          %286 = vector.maskedload %alloc_9[%c2, %c5, %c0], %285, %284 : memref<10x10x5xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
          %287 = vector.broadcast %36 : index to vector<16xindex>
          vector.scatter %alloc_16[%c9, %c4, %c1] [%287], %285, %284 : memref<10x10x5xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
          %288 = arith.remsi %c55294092_i32, %c469509676_i32 : i32
          %289 = arith.remsi %c27311_i16, %c27311_i16 : i16
          %290 = bufferization.to_memref %17 : memref<10x10x5xi64>
          %291 = index.mul %c6, %c3
          %292 = arith.mulf %cst_5, %cst_5 : f16
          %293 = math.log %15 : tensor<10x10x5xf32>
          %294 = arith.ceildivsi %39, %39 : i64
          %295 = arith.remf %in_51, %in : f32
          %296 = memref.atomic_rmw mulf %extracted_54, %alloc_21[%c1] : (f16, memref<10xf16>) -> f16
          %297 = arith.addf %extracted_54, %cst_0 : f16
          %298 = math.roundeven %26 : f16
          %299 = index.divu %36, %268
          %300 = index.sub %c11, %rank
          %301 = affine.load %alloc[%c6] : memref<5xi16>
          scf.yield %38 : index
        }
        case 4 {
          %284 = math.atan2 %cst_1, %cst_3 : f32
          %285 = arith.maxsi %c5403_i16, %c5403_i16 : i16
          %286 = arith.xori %c1817008060_i64, %c1159337967_i64 : i64
          %expanded_58 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<7x5xi16> into tensor<7x5x1xi16>
          %inserted_59 = tensor.insert %39 into %8[%c4, %c5, %c2] : tensor<10x10x5xi64>
          %287 = math.cttz %c1159337967_i64 : i64
          %288 = arith.maxui %extracted, %c5403_i16 : i16
          %289 = math.absi %transposed : tensor<5x10x10xi1>
          memref.store %extracted_54, %48[%c9, %c7, %c3] : memref<10x10x5xf16>
          %290 = arith.shrui %39, %c1817008060_i64 : i64
          %291 = arith.remf %26, %extracted_54 : f16
          %extracted_60 = tensor.extract %10[%c2] : tensor<5xi16>
          %292 = bufferization.clone %alloc_9 : memref<10x10x5xi32> to memref<10x10x5xi32>
          %293 = math.absi %0 : tensor<7x5xi16>
          vector.print %42 : vector<5xi16>
          %294 = vector.matrix_multiply %20, %42 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
          scf.yield %c5 : index
        }
        default {
          %284 = index.add %c4, %c6
          %285 = index.divu %c9, %38
          %286 = vector.extract %270[2] : vector<10x10x5xi16>
          %287 = math.roundeven %14 : tensor<10x10x5xf16>
          %288 = math.tanh %cst_5 : f16
          %289 = arith.maxui %c1517640645_i64, %c1159337967_i64 : i64
          %290 = index.divu %c1, %43
          %291 = index.sizeof
          memref.assume_alignment %alloc_18, 8 : memref<10x10x5xi16>
          %292 = bufferization.clone %alloc_11 : memref<10x10x5xi16> to memref<10x10x5xi16>
          %293 = math.ipowi %3, %3 : tensor<10x10x5xi1>
          %294 = math.cos %extracted_54 : f16
          %295 = math.expm1 %23 : tensor<f16>
          %inserted_58 = tensor.insert %c5403_i16 into %7[%c2, %c0] : tensor<7x5xi16>
          %296 = arith.floordivsi %c469509676_i32, %c469509676_i32 : i32
          %297 = index.divu %291, %c6
          scf.yield %c15 : index
        }
        scf.index_switch %c12 
        case 1 {
          %284 = arith.ori %c1817008060_i64, %39 : i64
          %285 = arith.minf %in, %in_51 : f32
          %cst_58 = arith.constant 2.0055799E+9 : f32
          %286 = arith.divsi %c5403_i16, %extracted : i16
          %287 = arith.divf %cst_4, %cst_2 : f32
          %288 = math.log10 %14 : tensor<10x10x5xf16>
          %289 = arith.divf %cst_5, %cst_0 : f16
          %290 = arith.andi %c55294092_i32, %c2126613511_i32 : i32
          %291 = arith.shli %c976352095_i64, %c1817008060_i64 : i64
          %292 = index.divu %c3, %c10
          %293 = arith.addf %in, %in_51 : f32
          %294 = vector.create_mask %c10 : vector<5xi1>
          %295 = affine.load %alloc_7[%c7, %c11] : memref<7x5xf16>
          bufferization.dealloc_tensor %10 : tensor<5xi16>
          %296 = arith.remsi %extracted, %c27311_i16 : i16
          %297 = arith.shrsi %c55294092_i32, %c469509676_i32 : i32
          scf.yield
        }
        case 2 {
          %284 = arith.remf %cst_5, %cst_0 : f16
          %285 = arith.ceildivsi %c1159337967_i64, %c1817008060_i64 : i64
          %286 = affine.min affine_map<(d0, d1, d2, d3) -> (-128)>(%36, %c14, %43, %c3)
          %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%c3, %268, %c11, %c13)
          %288 = arith.minf %cst_0, %extracted_54 : f16
          %289 = math.log10 %14 : tensor<10x10x5xf16>
          %290 = vector.matrix_multiply %42, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
          %291 = math.log %15 : tensor<10x10x5xf32>
          %292 = math.ctpop %12 : tensor<7x5xi16>
          %293 = math.powf %15, %15 : tensor<10x10x5xf32>
          %294 = math.absi %17 : tensor<10x10x5xi64>
          %295 = arith.divsi %extracted, %c5403_i16 : i16
          %296 = vector.reduction <maxsi>, %42 : vector<5xi16> into i16
          %297 = vector.transpose %261, [] : vector<i16> to vector<i16>
          %298 = vector.broadcast %26 : f16 to vector<10x10xf16>
          %299 = arith.divf %cst_5, %26 : f16
          scf.yield
        }
        case 3 {
          %expanded_58 = tensor.expand_shape %258 [[0], [1], [2, 3]] : tensor<10x10x5xi32> into tensor<10x10x5x1xi32>
          %284 = index.divu %268, %c3
          %285 = arith.negf %cst_0 : f16
          %286 = arith.maxsi %c1817008060_i64, %c1517640645_i64 : i64
          %287 = arith.remf %cst_4, %in : f32
          %288 = bufferization.clone %alloc_16 : memref<10x10x5xi32> to memref<10x10x5xi32>
          %289 = arith.shli %c5403_i16, %c27311_i16 : i16
          %290 = arith.maxsi %c1159337967_i64, %c1159337967_i64 : i64
          %291 = vector.shuffle %42, %20 [1, 2, 3, 4, 6, 8] : vector<5xi16>, vector<5xi16>
          %292 = arith.divui %c1159337967_i64, %c1517640645_i64 : i64
          %293 = arith.muli %c5403_i16, %c5403_i16 : i16
          %294 = arith.addf %cst_3, %cst_1 : f32
          %295 = arith.remf %in_51, %cst_4 : f32
          %alloc_59 = memref.alloc() : memref<5xi64>
          memref.copy %alloc_13, %alloc_59 : memref<5xi64> to memref<5xi64>
          %296 = arith.maxsi %c2126613511_i32, %c2126613511_i32 : i32
          %alloc_60 = memref.alloc() : memref<7x5xi16>
          %297 = vector.broadcast %c5403_i16 : i16 to vector<7x5xi16>
          %298 = vector.broadcast %false : i1 to vector<7x5xi1>
          %299 = vector.broadcast %c469509676_i32 : i32 to vector<7x5xi32>
          %300 = vector.gather %alloc_60[%c9, %c6] [%299], %298, %297 : memref<7x5xi16>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xi16> into vector<7x5xi16>
          scf.yield
        }
        default {
          %284 = vector.splat %cst_4 : vector<10x10xf32>
          %285 = arith.maxf %cst_2, %in : f32
          %286 = vector.broadcast %c5403_i16 : i16 to vector<10x5xi16>
          %287 = vector.insert %286, %270 [2] : vector<10x5xi16> into vector<10x10x5xi16>
          %288 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
          %289 = arith.addi %c469509676_i32, %c2126613511_i32 : i32
          %290 = arith.divf %cst_1, %cst : f32
          %291 = index.maxs %c14, %c1
          %292 = arith.addi %c27311_i16, %c27311_i16 : i16
          %cast = tensor.cast %11 : tensor<10x10x5xi1> to tensor<?x?x?xi1>
          %293 = index.sub %c6, %c8
          %inserted_58 = tensor.insert %in into %15[%c6, %c5, %c4] : tensor<10x10x5xf32>
          %294 = arith.remf %extracted_54, %cst_5 : f16
          %alloc_59 = memref.alloc() : memref<7x5xf16>
          memref.copy %alloc_7, %alloc_59 : memref<7x5xf16> to memref<7x5xf16>
          %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %288, %20, %extracted : vector<5xi16>, vector<5xi16> into i16
          %296 = vector.matrix_multiply %42, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
          %297 = arith.negf %cst : f32
        }
        %275 = arith.andi %c5403_i16, %c27311_i16 : i16
        %276 = arith.ori %c5403_i16, %extracted : i16
        %277 = arith.shrui %extracted, %c27311_i16 : i16
        %278 = math.tanh %cst_3 : f32
        %279 = vector.insert %c27311_i16, %42 [3] : i16 into vector<5xi16>
        %280 = index.casts %39 : i64 to index
        %281 = bufferization.to_tensor %alloc_17 : memref<10x10xf32>
        %282 = math.exp %cst_0 : f16
        %283 = math.absi %11 : tensor<10x10x5xi1>
        memref.assume_alignment %alloc_9, 16 : memref<10x10x5xi32>
        %cst_57 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_57 : f32
      }
    %generated = tensor.generate %c10, %rank {
    ^bb0(%arg0: index, %arg1: index):
      %258 = vector.extract %20[2] : vector<5xi16>
      %259 = scf.execute_region -> vector<10x10x5xi32> {
        %262 = arith.addi %c1517640645_i64, %39 : i64
        %263 = arith.remui %c2126613511_i32, %c469509676_i32 : i32
        %264 = affine.apply affine_map<(d0, d1) -> (d1 * 64 - 16)>(%c12, %c14)
        %265 = vector.flat_transpose %42 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %266 = vector.transfer_read %14[%arg0, %c0, %c12], %cst_51 : tensor<10x10x5xf16>, vector<10xf16>
        %267 = tensor.empty() : tensor<10x10x5xi32>
        %268 = math.fpowi %57, %267 : tensor<10x10x5xf32>, tensor<10x10x5xi32>
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, 0)>(%c3, %38, %c9, %c4)
        %270 = arith.minf %cst_4, %cst_3 : f32
        %alloc_52 = memref.alloc() : memref<5xf16>
        %271 = vector.broadcast %cst_0 : f16 to vector<10x10x5xf16>
        %272 = vector.broadcast %false : i1 to vector<10x10x5xi1>
        %273 = vector.broadcast %c469509676_i32 : i32 to vector<10x10x5xi32>
        %274 = vector.gather %alloc_52[%arg0] [%273], %272, %271 : memref<5xf16>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xf16> into vector<10x10x5xf16>
        %275 = math.roundeven %57 : tensor<10x10x5xf32>
        %276 = index.divu %rank, %c11
        memref.store %cst_5, %alloc_21[%c3] : memref<10xf16>
        %277 = arith.negf %cst_1 : f32
        %278 = math.powf %15, %15 : tensor<10x10x5xf32>
        %inserted_53 = tensor.insert %c27311_i16 into %10[%c2] : tensor<5xi16>
        %279 = vector.splat %c7 : vector<7x5xindex>
        scf.yield %273 : vector<10x10x5xi32>
      }
      %260 = math.log %15 : tensor<10x10x5xf32>
      %261 = arith.divui %c1159337967_i64, %39 : i64
      tensor.yield %c27311_i16 : i16
    } : tensor<?x?xi16>
    %58 = arith.maxsi %c469509676_i32, %c469509676_i32 : i32
    %false_27 = arith.constant false
    %false_28 = arith.constant false
    %59 = vector.transfer_read %alloc_14[%c14, %c10], %false_28 : memref<10x10xi1>, vector<i1>
    %60 = arith.floordivsi %false_27, %false_27 : i1
    %61 = math.cos %cst_0 : f16
    %62 = math.expm1 %22 : tensor<f16>
    %alloc_29 = memref.alloc() : memref<10x10xi16>
    %alloc_30 = memref.alloc() : memref<10x10xf32>
    memref.copy %alloc_17, %alloc_30 : memref<10x10xf32> to memref<10x10xf32>
    %63 = arith.maxf %cst_5, %cst_0 : f16
    memref.copy %alloc_15, %alloc_6 : memref<7x5xi32> to memref<7x5xi32>
    %64 = vector.broadcast %extracted : i16 to vector<5x5xi16>
    %65 = vector.outerproduct %20, %42, %64 {kind = #vector.kind<maxui>} : vector<5xi16>, vector<5xi16>
    %66 = vector.broadcast %39 : i64 to vector<i64>
    %67 = vector.transfer_write %66, %17[%49, %c6, %c1] : vector<i64>, tensor<10x10x5xi64>
    %68 = index.add %c4, %c2
    %from_elements = tensor.from_elements %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c469509676_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32 : tensor<10x10x5xi32>
    %69 = arith.maxf %cst, %cst_1 : f32
    %70 = affine.apply affine_map<(d0, d1) -> (((d0 * 2) floordiv 32) mod 32)>(%c3, %rank)
    %71 = index.ceildivu %c10, %c0
    %72 = arith.xori %c1517640645_i64, %c1517640645_i64 : i64
    %73 = vector.shuffle %20, %42 [0, 6, 9] : vector<5xi16>, vector<5xi16>
    %74 = vector.broadcast %extracted : i16 to vector<i16>
    %75 = vector.transfer_write %74, %10[%c3] : vector<i16>, tensor<5xi16>
    %76 = arith.remui %c976352095_i64, %c1517640645_i64 : i64
    %77 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %42, %20, %extracted : vector<5xi16>, vector<5xi16> into i16
    %78 = scf.if %false_27 -> (i32) {
      %258 = affine.min affine_map<(d0, d1, d2) -> (d0 - (d2 - 128) + d2 - 128)>(%36, %c3, %c15)
      %259 = scf.while (%arg0 = %alloc_16) : (memref<10x10x5xi32>) -> memref<10x10x5xi32> {
        %264 = index.casts %39 : i64 to index
        %265 = affine.load %alloc_14[%c2, %c10] : memref<10x10xi1>
        %266 = math.cttz %c469509676_i32 : i32
        %267 = arith.shrui %c2126613511_i32, %c2126613511_i32 : i32
        %268 = arith.mulf %cst_4, %cst_1 : f32
        %269 = math.exp %14 : tensor<10x10x5xf16>
        %270 = math.absi %transposed : tensor<5x10x10xi1>
        %271 = index.casts %68 : index to i32
        scf.condition(%false) %alloc_9 : memref<10x10x5xi32>
      } do {
      ^bb0(%arg0: memref<10x10x5xi32>):
        %alloc_52 = memref.alloc() : memref<10x10x5xf32>
        memref.copy %alloc_12, %alloc_52 : memref<10x10x5xf32> to memref<10x10x5xf32>
        memref.assume_alignment %48, 8 : memref<10x10x5xf16>
        %264 = arith.ori %c2126613511_i32, %c469509676_i32 : i32
        %265 = arith.ori %c5403_i16, %extracted : i16
        %266 = arith.shrui %c1817008060_i64, %c1517640645_i64 : i64
        %267 = vector.broadcast %cst_5 : f16 to vector<f16>
        %268 = vector.transfer_write %267, %21[%c13] : vector<f16>, tensor<10xf16>
        %269 = math.roundeven %cst_1 : f32
        %270 = arith.floordivsi %c55294092_i32, %c2126613511_i32 : i32
        %271 = vector.broadcast %26 : f16 to vector<10x10xf16>
        %272 = math.cos %21 : tensor<10xf16>
        %273 = arith.andi %c5403_i16, %c5403_i16 : i16
        %274 = arith.ori %false_27, %false : i1
        bufferization.dealloc_tensor %5 : tensor<7x5xi64>
        %275 = math.atan %cst_2 : f32
        %276 = index.sizeof
        %277 = arith.maxf %cst_0, %26 : f16
        scf.yield %alloc_16 : memref<10x10x5xi32>
      }
      %260 = vector.broadcast %cst_3 : f32 to vector<7x5xf32>
      %261 = scf.if %false -> (i32) {
        %264 = arith.remf %cst_2, %cst_1 : f32
        %265 = arith.ori %c5403_i16, %c5403_i16 : i16
        %266 = vector.broadcast %c2126613511_i32 : i32 to vector<10x10xi32>
        %267 = vector.load %alloc_13[%c0] : memref<5xi64>, vector<10x10xi64>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c27311_i16 : vector<5xi16>, vector<5xi16> into i16
        %269 = index.mul %38, %c4
        %false_52 = arith.constant false
        %false_53 = arith.constant false
        %270 = vector.transfer_read %3[%c8, %c7, %c15], %false_53 : tensor<10x10x5xi1>, vector<i1>
        vector.print %66 : vector<i64>
        scf.yield %c55294092_i32 : i32
      } else {
        %264 = vector.insertelement %c27311_i16, %42[%43 : index] : vector<5xi16>
        %265 = arith.shrui %c55294092_i32, %c469509676_i32 : i32
        affine.store %cst_1, %alloc_20[%c6] : memref<5xf32>
        %266 = vector.broadcast %c55294092_i32 : i32 to vector<7xi32>
        %267 = vector.broadcast %false : i1 to vector<7xi1>
        %268 = vector.maskedload %alloc_6[%c1, %c1], %267, %266 : memref<7x5xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %269 = arith.xori %c27311_i16, %c27311_i16 : i16
        %270 = arith.maxsi %c1159337967_i64, %c976352095_i64 : i64
        %271 = vector.shuffle %260, %260 [3, 7, 9, 11, 12] : vector<7x5xf32>, vector<7x5xf32>
        %272 = math.round %14 : tensor<10x10x5xf16>
        scf.yield %c2126613511_i32 : i32
      }
      %262 = math.cos %14 : tensor<10x10x5xf16>
      %263 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %inserted_51 = tensor.insert %extracted into %0[%c3, %c0] : tensor<7x5xi16>
      %c325500637_i64 = arith.constant 325500637 : i64
      scf.yield %261 : i32
    } else {
      %258 = math.powf %15, %57 : tensor<10x10x5xf32>
      %259 = math.rsqrt %cst_3 : f32
      %260 = math.expm1 %15 : tensor<10x10x5xf32>
      bufferization.dealloc_tensor %15 : tensor<10x10x5xf32>
      %261 = index.ceildivs %c7, %c1
      memref.assume_alignment %alloc_18, 16 : memref<10x10x5xi16>
      %262 = vector.insert %extracted, %42 [0] : i16 into vector<5xi16>
      %263 = vector.flat_transpose %42 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      scf.yield %c469509676_i32 : i32
    }
    %79 = memref.alloca_scope  -> (i32) {
      %258 = math.log1p %2 : tensor<10x10xf16>
      %259 = scf.while (%arg0 = %cst_4) : (f32) -> f32 {
        %288 = index.casts %c5403_i16 : i16 to index
        %289 = arith.maxf %cst, %cst_1 : f32
        %290 = index.ceildivu %c13, %c3
        %alloc_53 = memref.alloc() : memref<10x10x5xf32>
        memref.copy %alloc_12, %alloc_53 : memref<10x10x5xf32> to memref<10x10x5xf32>
        %291 = arith.muli %c976352095_i64, %c976352095_i64 : i64
        %292 = vector.multi_reduction <and>, %42, %c5403_i16 [0] : vector<5xi16> to i16
        %293 = vector.extract %20[1] : vector<5xi16>
        %294 = vector.insert %c5403_i16, %20 [3] : i16 into vector<5xi16>
        scf.condition(%false_27) %cst : f32
      } do {
      ^bb0(%arg0: f32):
        %288 = memref.load %alloc_11[%c2, %c9, %c2] : memref<10x10x5xi16>
        %289 = index.castu %c9 : index to i32
        %alloc_53 = memref.alloc() : memref<10x10x5xi1>
        %290 = bufferization.clone %alloc_8 : memref<10x10x5xf16> to memref<10x10x5xf16>
        %291 = vector.load %alloc_21[%c6] : memref<10xf16>, vector<7x5xf16>
        vector.print %74 : vector<i16>
        %292 = math.exp %cst_3 : f32
        %293 = arith.muli %c55294092_i32, %c2126613511_i32 : i32
        %294 = vector.broadcast %cst_2 : f32 to vector<5x7xf32>
        %295 = vector.transfer_write %294, %57[%36, %71, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x7xf32>, tensor<10x10x5xf32>
        %296 = vector.splat %c55294092_i32 : vector<10x10x5xi32>
        %297 = math.exp2 %cst_0 : f16
        %298 = math.atan2 %cst_1, %cst_4 : f32
        %299 = arith.remf %cst_3, %cst_3 : f32
        %300 = arith.remsi %c55294092_i32, %c2126613511_i32 : i32
        %from_elements_54 = tensor.from_elements %c469509676_i32, %78, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %c2126613511_i32, %78, %78, %c469509676_i32, %78, %c55294092_i32, %78, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %78, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c55294092_i32, %78, %c55294092_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %78, %78 : tensor<7x5xi32>
        %301 = arith.addf %cst_1, %cst_4 : f32
        scf.yield %cst_2 : f32
      }
      %260 = arith.remui %78, %78 : i32
      %261 = math.expm1 %26 : f16
      %inserted_51 = tensor.insert %c5403_i16 into %0[%c1, %c4] : tensor<7x5xi16>
      %262 = vector.shuffle %42, %42 [0, 1, 4, 6, 9] : vector<5xi16>, vector<5xi16>
      %263 = scf.while (%arg0 = %alloc_6) : (memref<7x5xi32>) -> memref<7x5xi32> {
        %288 = index.sizeof
        %289 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
        %290 = arith.ori %c1517640645_i64, %c1159337967_i64 : i64
        %291 = vector.multi_reduction <minsi>, %42, %c27311_i16 [0] : vector<5xi16> to i16
        %292 = memref.load %alloc_21[%c2] : memref<10xf16>
        %293 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        %294 = vector.broadcast %false : i1 to vector<16xi1>
        %295 = vector.maskedload %alloc_7[%c3, %c3], %294, %293 : memref<7x5xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %296 = vector.extract %295[14] : vector<16xf16>
        %297 = math.expm1 %14 : tensor<10x10x5xf16>
        scf.condition(%false) %alloc_6 : memref<7x5xi32>
      } do {
      ^bb0(%arg0: memref<7x5xi32>):
        %288 = index.floordivs %c14, %c15
        %289 = arith.minsi %c1159337967_i64, %c1159337967_i64 : i64
        %290 = index.sizeof
        %291 = arith.remf %cst_2, %cst_3 : f32
        %292 = math.roundeven %57 : tensor<10x10x5xf32>
        %293 = math.expm1 %cst_3 : f32
        %294 = vector.insert %extracted, %42 [2] : i16 into vector<5xi16>
        %alloc_53 = memref.alloc() : memref<10xf16>
        memref.copy %alloc_21, %alloc_53 : memref<10xf16> to memref<10xf16>
        %295 = arith.divf %26, %cst_0 : f16
        %296 = bufferization.clone %alloc_19 : memref<10x10x5xi16> to memref<10x10x5xi16>
        %297 = math.round %cst_4 : f32
        %from_elements_54 = tensor.from_elements %c1817008060_i64, %39, %c1159337967_i64, %c1817008060_i64, %39 : tensor<5xi64>
        %298 = math.exp %cst_4 : f32
        %299 = index.sub %c13, %c6
        %300 = vector.broadcast %c27311_i16 : i16 to vector<5x5xi16>
        %301 = vector.outerproduct %42, %42, %300 {kind = #vector.kind<mul>} : vector<5xi16>, vector<5xi16>
        memref.store %false_27, %alloc_14[%c5, %c1] : memref<10x10xi1>
        scf.yield %alloc_6 : memref<7x5xi32>
      }
      %264 = arith.divsi %c469509676_i32, %c2126613511_i32 : i32
      %265 = vector.create_mask %49, %70, %c6 : vector<10x10x5xi1>
      %266 = index.divs %c4, %c15
      %267 = index.sub %c5, %c14
      %268 = arith.mulf %cst_1, %cst_4 : f32
      %269 = arith.andi %39, %39 : i64
      %270 = index.divs %c2, %c9
      %271 = arith.remsi %c5403_i16, %extracted : i16
      %272 = vector.insertelement %c5403_i16, %20[%270 : index] : vector<5xi16>
      %273 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %274 = math.expm1 %cst_0 : f16
      %275 = math.roundeven %21 : tensor<10xf16>
      %276 = memref.atomic_rmw maxf %cst_2, %alloc_12[%c5, %c3, %c0] : (f32, memref<10x10x5xf32>) -> f32
      %277 = arith.remf %26, %cst_5 : f16
      %278 = arith.xori %78, %c469509676_i32 : i32
      %from_elements_52 = tensor.from_elements %c469509676_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %78, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c469509676_i32, %78, %c469509676_i32, %c55294092_i32, %78, %c469509676_i32, %78, %c469509676_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c469509676_i32, %c55294092_i32, %78, %c469509676_i32, %78, %c469509676_i32, %c2126613511_i32, %c55294092_i32, %78, %c469509676_i32, %c55294092_i32 : tensor<7x5xi32>
      %279 = memref.load %alloc_19[%c4, %c2, %c3] : memref<10x10x5xi16>
      %280 = arith.remsi %extracted, %c5403_i16 : i16
      %281 = arith.divsi %c976352095_i64, %c976352095_i64 : i64
      %282 = affine.if affine_set<(d0, d1) : (d1 mod 16 == 0, -(d1 mod 16) - 16 == 0, -16 == 0)>(%c3, %c4) -> i64 {
        %288 = bufferization.to_memref %17 : memref<10x10x5xi64>
        memref.store %cst_5, %alloc_21[%c8] : memref<10xf16>
        %289 = arith.andi %c2126613511_i32, %78 : i32
        %290 = index.casts %c469509676_i32 : i32 to index
        %291 = math.log %23 : tensor<f16>
        %extracted_53 = tensor.extract %7[%c0, %c3] : tensor<7x5xi16>
        %292 = math.tanh %14 : tensor<10x10x5xf16>
        %293 = math.log %26 : f16
        affine.yield %c1817008060_i64 : i64
      } else {
        %288 = arith.maxsi %c27311_i16, %c5403_i16 : i16
        %289 = math.round %23 : tensor<f16>
        %alloc_53 = memref.alloc() : memref<10x10x5xi16>
        %290 = tensor.empty(%c13) : tensor<?x10x5xi64>
        %291 = index.add %c3, %68
        %292 = math.ctpop %0 : tensor<7x5xi16>
        %293 = arith.maxsi %c1159337967_i64, %c976352095_i64 : i64
        %294 = math.cos %cst : f32
        affine.yield %39 : i64
      }
      %283 = math.round %2 : tensor<10x10xf16>
      %284 = math.absi %c469509676_i32 : i32
      %285 = arith.floordivsi %c5403_i16, %c27311_i16 : i16
      %286 = scf.while (%arg0 = %20) : (vector<5xi16>) -> vector<5xi16> {
        %288 = arith.addi %39, %c976352095_i64 : i64
        %289 = math.rsqrt %15 : tensor<10x10x5xf32>
        %inserted_53 = tensor.insert %c976352095_i64 into %5[%c0, %c2] : tensor<7x5xi64>
        %290 = arith.ori %c27311_i16, %c27311_i16 : i16
        %291 = vector.multi_reduction <or>, %42, %273 [] : vector<5xi16> to vector<5xi16>
        %292 = arith.shrui %false, %false : i1
        %293 = arith.shrui %c1817008060_i64, %c976352095_i64 : i64
        %294 = arith.floordivsi %c55294092_i32, %c469509676_i32 : i32
        scf.condition(%false) %42 : vector<5xi16>
      } do {
      ^bb0(%arg0: vector<5xi16>):
        %expanded_53 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<10x10xi32> into tensor<10x10x1xi32>
        %288 = tensor.empty() : tensor<i32>
        %289 = math.fpowi %22, %288 : tensor<f16>, tensor<i32>
        %290 = vector.broadcast %false : i1 to vector<10x5xi1>
        %dest_54, %accumulated_value_55 = vector.scan <maxui>, %265, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x5xi1>, vector<10x5xi1>
        affine.store %26, %alloc_21[%c1] : memref<10xf16>
        %291 = vector.broadcast %extracted : i16 to vector<7xi16>
        %292 = vector.broadcast %false_27 : i1 to vector<7xi1>
        %293 = vector.maskedload %alloc_18[%c7, %c4, %c1], %292, %291 : memref<10x10x5xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %294 = vector.reduction <minsi>, %273 : vector<5xi16> into i16
        %295 = arith.maxsi %c1517640645_i64, %c1159337967_i64 : i64
        %296 = arith.xori %78, %c55294092_i32 : i32
        %297 = math.rsqrt %cst_5 : f16
        %298 = math.ipowi %c5403_i16, %c27311_i16 : i16
        %299 = index.casts %false_27 : i1 to index
        %300 = vector.broadcast %false : i1 to vector<10x5xi1>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %265, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x5xi1>, vector<10x5xi1>
        %c582747299_i32 = arith.constant 582747299 : i32
        %alloc_58 = memref.alloc() : memref<10x10x5xi1>
        %301 = math.ctpop %5 : tensor<7x5xi64>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %42, %42, %extracted : vector<5xi16>, vector<5xi16> into i16
        scf.yield %273 : vector<5xi16>
      }
      %287 = vector.create_mask %c2, %rank : vector<10x10xi1>
      memref.alloca_scope.return %c469509676_i32 : i32
    }
    %80 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
    %81 = index.add %c11, %68
    %82 = scf.while (%arg0 = %alloc_11) : (memref<10x10x5xi16>) -> memref<10x10x5xi16> {
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %258 = vector.transfer_read %8[%71, %c15, %c11], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<10x10x5xi64>, vector<5x10xi64>
      %259 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %260 = arith.remui %c55294092_i32, %c55294092_i32 : i32
      %261 = math.tanh %cst_1 : f32
      %262 = arith.remf %cst_0, %cst_5 : f16
      %c1525568603_i64 = arith.constant 1525568603 : i64
      %263 = bufferization.clone %alloc_7 : memref<7x5xf16> to memref<7x5xf16>
      %rank_51 = tensor.rank %12 : tensor<7x5xi16>
      scf.condition(%false_27) %alloc_11 : memref<10x10x5xi16>
    } do {
    ^bb0(%arg0: memref<10x10x5xi16>):
      %258 = math.log1p %cst_5 : f16
      %259 = index.divs %c12, %38
      %260 = arith.addi %39, %c1817008060_i64 : i64
      %261 = vector.broadcast %extracted : i16 to vector<5x5xi16>
      %262 = vector.outerproduct %42, %42, %261 {kind = #vector.kind<add>} : vector<5xi16>, vector<5xi16>
      %263 = index.divu %81, %c15
      %true = index.bool.constant true
      %c-12720_i16 = arith.constant -12720 : i16
      %264 = index.sub %49, %49
      %265 = arith.remui %c2126613511_i32, %c2126613511_i32 : i32
      %266 = math.atan %cst_2 : f32
      %267 = arith.remui %c469509676_i32, %c469509676_i32 : i32
      %268 = bufferization.to_memref %9 : memref<5xi64>
      %269 = vector.shuffle %42, %20 [0, 1, 5, 9] : vector<5xi16>, vector<5xi16>
      %270 = arith.addi %extracted, %c5403_i16 : i16
      %271 = arith.remf %26, %cst_0 : f16
      %272 = vector.create_mask %81, %263 : vector<7x5xi1>
      scf.yield %alloc_11 : memref<10x10x5xi16>
    }
    %83 = index.add %81, %c7
    %84 = arith.andi %c27311_i16, %extracted : i16
    %85 = affine.apply affine_map<(d0, d1) -> (d1)>(%c15, %49)
    %86 = scf.while (%arg0 = %alloc_12) : (memref<10x10x5xf32>) -> memref<10x10x5xf32> {
      %258 = vector.splat %c0 : vector<10x10xindex>
      %inserted_51 = tensor.insert %extracted into %10[%c4] : tensor<5xi16>
      %259 = index.add %rank, %c10
      %260 = index.casts %43 : index to i32
      %261 = index.mul %rank, %c7
      %262 = arith.mulf %cst_3, %cst_2 : f32
      %263 = math.ctpop %3 : tensor<10x10x5xi1>
      %264 = index.add %c6, %c12
      scf.condition(%false) %arg0 : memref<10x10x5xf32>
    } do {
    ^bb0(%arg0: memref<10x10x5xf32>):
      %258 = arith.remf %cst_1, %cst_1 : f32
      memref.store %26, %alloc_21[%c3] : memref<10xf16>
      %259 = index.sub %81, %85
      %260 = math.log1p %15 : tensor<10x10x5xf32>
      %261 = math.ctpop %11 : tensor<10x10x5xi1>
      %262 = index.divs %85, %c4
      scf.if %false_27 {
        %270 = affine.load %alloc_15[%c8, %c15] : memref<7x5xi32>
        %271 = index.divu %38, %c11
        %true = arith.constant true
        %272 = bufferization.to_memref %6 : memref<7x5xi64>
        %273 = arith.negf %26 : f16
        %from_elements_51 = tensor.from_elements %cst_1, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst_4, %cst_1, %cst, %cst_3, %cst_2, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_3, %cst_2, %cst_2, %cst_4, %cst_3, %cst_1, %cst_4, %cst_3, %cst_2, %cst_1, %cst, %cst_4, %cst_1, %cst, %cst_2, %cst_1, %cst_2 : tensor<7x5xf32>
        %274 = arith.maxf %cst_1, %cst_1 : f32
        %275 = math.cos %15 : tensor<10x10x5xf32>
      } else {
        %270 = math.ctpop %7 : tensor<7x5xi16>
        %271 = vector.extract %20[0] : vector<5xi16>
        %272 = vector.insertelement %extracted, %74[] : vector<i16>
        %273 = index.add %36, %262
        %274 = affine.min affine_map<(d0, d1) -> (0, 0, d0, (d0 floordiv 64) * 128)>(%c1, %c14)
        %275 = index.divs %c15, %c6
        %276 = vector.insert %extracted, %20 [0] : i16 into vector<5xi16>
        %277 = vector.multi_reduction <and>, %42, %42 [] : vector<5xi16> to vector<5xi16>
      }
      %263 = index.divu %c5, %c9
      %264 = index.divu %c14, %38
      %265 = arith.remf %cst_4, %cst_4 : f32
      %266 = vector.reduction <mul>, %42 : vector<5xi16> into i16
      bufferization.dealloc_tensor %18 : tensor<5x10x10xi1>
      %267 = index.divu %70, %c3
      %268 = bufferization.to_memref %23 : memref<f16>
      memref.assume_alignment %alloc_7, 4 : memref<7x5xf16>
      %269 = memref.load %48[%c8, %c5, %c0] : memref<10x10x5xf16>
      scf.yield %alloc_12 : memref<10x10x5xf32>
    }
    %87 = arith.shrui %79, %79 : i32
    %88 = arith.negf %cst_5 : f16
    %89 = math.exp %cst_1 : f32
    %90 = vector.reduction <maxsi>, %42 : vector<5xi16> into i16
    %91 = vector.broadcast %78 : i32 to vector<16xi32>
    %92 = vector.broadcast %false : i1 to vector<16xi1>
    %93 = vector.maskedload %alloc_16[%c0, %c1, %c0], %92, %91 : memref<10x10x5xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
    scf.execute_region {
      %258 = arith.shrsi %c55294092_i32, %c55294092_i32 : i32
      %259 = arith.cmpi slt, %extracted, %c5403_i16 : i16
      %260 = bufferization.to_tensor %alloc_16 : memref<10x10x5xi32>
      %261 = vector.create_mask %70, %c11 : vector<10x10xi1>
      %expanded_51 = tensor.expand_shape %13 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
      %262 = memref.atomic_rmw minu %extracted, %alloc_19[%c7, %c0, %c4] : (i16, memref<10x10x5xi16>) -> i16
      %263 = index.sub %c9, %43
      %264 = affine.if affine_set<(d0, d1) : ((d0 - d1) ceildiv 64 == 0)>(%c3, %c9) -> i1 {
        %271 = arith.maxsi %c55294092_i32, %c2126613511_i32 : i32
        %272 = memref.atomic_rmw addi %c2126613511_i32, %alloc_16[%c6, %c9, %c1] : (i32, memref<10x10x5xi32>) -> i32
        %alloc_54 = memref.alloc() : memref<10x10xi1>
        memref.copy %alloc_14, %alloc_54 : memref<10x10xi1> to memref<10x10xi1>
        %273 = arith.maxui %false, %false_27 : i1
        %274 = vector.multi_reduction <or>, %42, %extracted [0] : vector<5xi16> to i16
        %275 = memref.atomic_rmw mins %c1159337967_i64, %alloc_13[%c0] : (i64, memref<5xi64>) -> i64
        %276 = index.sub %c14, %38
        %277 = math.atan %cst_4 : f32
        affine.yield %false_27 : i1
      } else {
        %271 = arith.addi %39, %c1159337967_i64 : i64
        %from_elements_54 = tensor.from_elements %78, %78, %c469509676_i32, %79, %c469509676_i32, %c469509676_i32, %c469509676_i32, %79, %78, %c55294092_i32, %c55294092_i32, %79, %79, %78, %79, %79, %c55294092_i32, %78, %c55294092_i32, %c2126613511_i32, %79, %79, %79, %78, %c469509676_i32, %c55294092_i32, %79, %c55294092_i32, %c2126613511_i32, %c2126613511_i32, %c55294092_i32, %c55294092_i32, %79, %79, %c469509676_i32 : tensor<7x5xi32>
        %cast = tensor.cast %2 : tensor<10x10xf16> to tensor<?x?xf16>
        %272 = math.roundeven %cst : f32
        %273 = arith.cmpi slt, %79, %c469509676_i32 : i32
        %274 = arith.maxf %cst_4, %cst_1 : f32
        %275 = vector.shuffle %93, %91 [0, 2, 3, 8, 10, 13, 15, 16, 18, 19, 20, 21, 23, 27, 29, 30] : vector<16xi32>, vector<16xi32>
        %false_55 = arith.constant false
        affine.yield %false : i1
      }
      %265 = math.ctpop %7 : tensor<7x5xi16>
      %266 = math.absf %cst_3 : f32
      %extracted_52 = tensor.extract %1[%c4, %c4] : tensor<7x5xi1>
      %267 = vector.reduction <add>, %92 : vector<16xi1> into i1
      %268 = arith.shrui %c1159337967_i64, %c976352095_i64 : i64
      %269 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
      %rank_53 = tensor.rank %260 : tensor<10x10x5xi32>
      %270 = arith.divf %cst_5, %cst_0 : f16
      scf.yield
    }
    %94 = index.maxs %83, %c15
    %95 = index.floordivs %c13, %c3
    %96 = math.log %22 : tensor<f16>
    %97 = index.sub %94, %85
    %98 = math.ipowi %5, %6 : tensor<7x5xi64>
    %99 = arith.remsi %78, %c469509676_i32 : i32
    %100 = arith.remsi %c55294092_i32, %78 : i32
    %101 = scf.index_switch %71 -> memref<5xf16> 
    case 1 {
      %258 = arith.maxsi %c27311_i16, %c27311_i16 : i16
      %259 = bufferization.to_memref %generated : memref<?x?xi16>
      %260 = arith.shrsi %c976352095_i64, %c1817008060_i64 : i64
      %261 = memref.atomic_rmw mulf %cst_5, %alloc_7[%c1, %c0] : (f16, memref<7x5xf16>) -> f16
      %262 = arith.mulf %cst, %cst : f32
      %263 = index.ceildivu %c4, %95
      %264 = vector.create_mask %70, %c15 : vector<10x10xi1>
      %265 = tensor.empty() : tensor<5x10xi1>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14, %alloc_14, %265 : memref<10x10xi1>, memref<10x10xi1>, tensor<5x10xi1>) outs(%transposed : tensor<5x10x10xi1>) {
      ^bb0(%in: i1, %in_54: i1, %in_55: i1, %out: i1):
        %273 = arith.andi %false, %in_55 : i1
        %274 = arith.mulf %cst_5, %cst_0 : f16
        %275 = memref.atomic_rmw muli %79, %alloc_10[%c1] : (i32, memref<5xi32>) -> i32
        %276 = math.tanh %22 : tensor<f16>
        %277 = math.atan2 %21, %21 : tensor<10xf16>
        %278 = arith.maxsi %c2126613511_i32, %78 : i32
        %279 = arith.ori %false_27, %out : i1
        %280 = math.ctpop %39 : i64
        %281 = affine.apply affine_map<(d0, d1) -> (-d1 - 32)>(%97, %c6)
        %282 = vector.reduction <maxui>, %93 : vector<16xi32> into i32
        %283 = arith.negf %cst_5 : f16
        %284 = index.casts %43 : index to i32
        %285 = arith.cmpi sge, %c1517640645_i64, %c976352095_i64 : i64
        %286 = arith.maxui %c1817008060_i64, %c976352095_i64 : i64
        %287 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
        %288 = math.cos %14 : tensor<10x10x5xf16>
        %alloc_56 = memref.alloc() : memref<5xi1>
        %289 = vector.broadcast %cst_0 : f16 to vector<10xf16>
        %290 = vector.broadcast %in : i1 to vector<10xi1>
        %291 = vector.maskedload %alloc_21[%c5], %290, %289 : memref<10xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %292 = memref.load %alloc[%c1] : memref<5xi16>
        %293 = vector.reduction <add>, %92 : vector<16xi1> into i1
        %294 = vector.create_mask %c8, %rank, %36 : vector<10x10x5xi1>
        %295 = arith.muli %in_55, %in_54 : i1
        %296 = arith.remf %cst, %cst : f32
        %297 = arith.ori %c2126613511_i32, %c55294092_i32 : i32
        %298 = arith.divsi %c976352095_i64, %c1159337967_i64 : i64
        %299 = math.rsqrt %14 : tensor<10x10x5xf16>
        %300 = index.ceildivu %c5, %c14
        %301 = arith.shrui %in, %in_54 : i1
        %alloc_57 = memref.alloc() : memref<7x5xi64>
        %302 = vector.broadcast %39 : i64 to vector<5xi64>
        %303 = vector.broadcast %false : i1 to vector<5xi1>
        %304 = vector.broadcast %78 : i32 to vector<5xi32>
        %305 = vector.gather %alloc_57[%c15, %263] [%304], %303, %302 : memref<7x5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %306 = bufferization.to_tensor %alloc_8 : memref<10x10x5xf16>
        %307 = vector.broadcast %26 : f16 to vector<10x10xf16>
        %308 = vector.outerproduct %291, %289, %307 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %309 = arith.andi %c2126613511_i32, %79 : i32
        linalg.yield %in_55 : i1
      } -> tensor<5x10x10xi1>
      %267 = arith.shli %false, %false_27 : i1
      %268 = scf.while (%arg0 = %alloc_6) : (memref<7x5xi32>) -> memref<7x5xi32> {
        %273 = arith.maxui %c1517640645_i64, %c1159337967_i64 : i64
        %274 = math.atan %14 : tensor<10x10x5xf16>
        %275 = memref.load %alloc_16[%c3, %c4, %c3] : memref<10x10x5xi32>
        memref.store %c2126613511_i32, %alloc_15[%c1, %c2] : memref<7x5xi32>
        %276 = affine.min affine_map<(d0) -> (d0 * 2 - (d0 * 2 + 16) + d0 * 2 + 80, d0 - (d0 * 2 + 80) ceildiv 2, d0 + d0 * 2 + 16, d0 * 2 + 80)>(%c4)
        %277 = index.mul %70, %97
        %278 = index.divs %49, %c6
        %279 = arith.remui %c2126613511_i32, %c2126613511_i32 : i32
        scf.condition(%false_27) %alloc_6 : memref<7x5xi32>
      } do {
      ^bb0(%arg0: memref<7x5xi32>):
        %273 = math.cos %15 : tensor<10x10x5xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_54 = arith.constant 0 : i32
        %274 = vector.transfer_read %arg0[%rank, %85], %c0_i32_54 : memref<7x5xi32>, vector<i32>
        %extracted_55 = tensor.extract %23[] : tensor<f16>
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d0 ceildiv 32) - 64, d0, d0 + 8, d0 ceildiv 32 - d2 + 8)>(%97, %c8, %83, %94)
        %276 = math.log10 %2 : tensor<10x10xf16>
        %277 = math.powf %22, %22 : tensor<f16>
        %278 = vector.splat %81 : vector<5xindex>
        %279 = arith.addi %78, %c469509676_i32 : i32
        %280 = arith.minf %cst_2, %cst_1 : f32
        bufferization.dealloc_tensor %4 : tensor<10x10xi32>
        %281 = arith.shrsi %c5403_i16, %extracted : i16
        %282 = vector.broadcast %c469509676_i32 : i32 to vector<10xi32>
        %283 = vector.broadcast %false : i1 to vector<10xi1>
        %284 = vector.maskedload %alloc_9[%c3, %c7, %c4], %283, %282 : memref<10x10x5xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %285 = vector.bitcast %91 : vector<16xi32> to vector<16xi32>
        %286 = arith.divui %79, %79 : i32
        %287 = math.expm1 %2 : tensor<10x10xf16>
        %alloc_56 = memref.alloc() : memref<5xi32>
        memref.copy %alloc_10, %alloc_56 : memref<5xi32> to memref<5xi32>
        scf.yield %arg0 : memref<7x5xi32>
      }
      %269 = vector.shuffle %91, %91 [0, 3, 5, 6, 7, 8, 10, 11, 17, 19, 23, 24, 25, 29, 30] : vector<16xi32>, vector<16xi32>
      %cst_51 = arith.constant 1.48391526E+9 : f32
      scf.execute_region {
        memref.assume_alignment %48, 16 : memref<10x10x5xf16>
        %273 = math.ctpop %extracted : i16
        %274 = arith.divf %cst_5, %cst_5 : f16
        %275 = vector.bitcast %42 : vector<5xi16> to vector<5xi16>
        %276 = vector.bitcast %91 : vector<16xi32> to vector<16xi32>
        %277 = math.ctpop %12 : tensor<7x5xi16>
        %278 = vector.load %alloc_17[%c7, %c3] : memref<10x10xf32>, vector<5xf32>
        %279 = vector.transpose %276, [0] : vector<16xi32> to vector<16xi32>
        %cast = tensor.cast %13 : tensor<5xi16> to tensor<?xi16>
        %280 = math.absf %21 : tensor<10xf16>
        %281 = arith.addf %cst_0, %cst_5 : f16
        %282 = arith.ori %c976352095_i64, %c1817008060_i64 : i64
        %283 = arith.shrui %c1817008060_i64, %c1817008060_i64 : i64
        %inserted_54 = tensor.insert %c2126613511_i32 into %from_elements[%c8, %c6, %c1] : tensor<10x10x5xi32>
        %284 = arith.divsi %c469509676_i32, %c55294092_i32 : i32
        %285 = arith.addf %cst_3, %cst_3 : f32
        scf.yield
      }
      %270 = arith.minsi %c1817008060_i64, %c1817008060_i64 : i64
      %271 = arith.addf %cst_0, %cst_0 : f16
      %alloc_52 = memref.alloc() : memref<10x5xi64>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52 : memref<10x5xi64>, memref<10x5xi64>) outs(%8 : tensor<10x10x5xi64>) {
      ^bb0(%in: i64, %in_54: i64, %out: i64):
        %true = arith.constant true
        %273 = index.sub %36, %94
        %274 = index.mul %c6, %97
        %275 = vector.extract_strided_slice %93 {offsets = [9], sizes = [7], strides = [1]} : vector<16xi32> to vector<7xi32>
        %276 = math.roundeven %2 : tensor<10x10xf16>
        %277 = arith.minsi %c2126613511_i32, %c55294092_i32 : i32
        %278 = arith.shli %c27311_i16, %extracted : i16
        %279 = vector.shuffle %275, %93 [0, 2, 3, 5, 6, 7, 11, 12, 15, 16, 20, 21, 22] : vector<7xi32>, vector<16xi32>
        %280 = arith.muli %c2126613511_i32, %78 : i32
        %281 = vector.broadcast %cst_2 : f32 to vector<10x10x5xf32>
        %282 = vector.broadcast %false : i1 to vector<10x10x5xi1>
        %283 = vector.broadcast %c469509676_i32 : i32 to vector<10x10x5xi32>
        %284 = vector.gather %alloc_12[%38, %38, %c14] [%283], %282, %281 : memref<10x10x5xf32>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xf32> into vector<10x10x5xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %92, %92, %false_27 : vector<16xi1>, vector<16xi1> into i1
        %286 = arith.maxsi %in_54, %in : i64
        %287 = arith.addf %cst_2, %cst : f32
        %288 = math.ipowi %c1817008060_i64, %out : i64
        %289 = arith.addf %cst_3, %cst_3 : f32
        %290 = arith.remui %c2126613511_i32, %79 : i32
        %291 = math.rsqrt %26 : f16
        %292 = arith.muli %false_27, %false : i1
        %293 = bufferization.clone %alloc_18 : memref<10x10x5xi16> to memref<10x10x5xi16>
        %294 = arith.divf %cst_3, %cst_1 : f32
        %295 = arith.shrui %39, %c976352095_i64 : i64
        %inserted_55 = tensor.insert %false into %3[%c2, %c6, %c0] : tensor<10x10x5xi1>
        %296 = math.fpowi %cst, %c469509676_i32 : f32, i32
        %297 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
        %dest_56, %accumulated_value_57 = vector.scan <minf>, %281, %297 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x5xf32>, vector<10x10xf32>
        %inserted_58 = tensor.insert %cst_0 into %23[] : tensor<f16>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_59 = arith.constant 0 : i16
        %298 = vector.transfer_read %293[%c8, %c3, %68], %c0_i16_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<10x10x5xi16>, vector<10xi16>
        vector.print %74 : vector<i16>
        %inserted_60 = tensor.insert %c27311_i16 into %12[%c0, %c4] : tensor<7x5xi16>
        %299 = arith.maxui %in_54, %c1817008060_i64 : i64
        %300 = arith.muli %out, %in_54 : i64
        %301 = arith.remf %26, %cst_0 : f16
        %302 = arith.maxf %cst_2, %cst : f32
        linalg.yield %in_54 : i64
      } -> tensor<10x10x5xi64>
      %alloc_53 = memref.alloc() : memref<5xf16>
      scf.yield %alloc_53 : memref<5xf16>
    }
    case 2 {
      %258 = vector.broadcast %false_27 : i1 to vector<16x16xi1>
      %259 = vector.outerproduct %92, %92, %258 {kind = #vector.kind<maxui>} : vector<16xi1>, vector<16xi1>
      %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d2 + 16)>(%c5, %c1, %38, %c7)
      %261 = math.log1p %23 : tensor<f16>
      %262 = index.add %c3, %83
      %263 = scf.if %false_27 -> (memref<10x10x5xf32>) {
        %false_54 = arith.constant false
        %275 = memref.load %alloc_13[%c3] : memref<5xi64>
        %276 = arith.maxf %cst_5, %26 : f16
        %277 = vector.multi_reduction <minsi>, %93, %93 [] : vector<16xi32> to vector<16xi32>
        %278 = math.ctpop %c1817008060_i64 : i64
        %279 = arith.remf %cst_3, %cst_1 : f32
        %280 = arith.remf %cst_1, %cst : f32
        %281 = math.absi %18 : tensor<5x10x10xi1>
        scf.yield %alloc_12 : memref<10x10x5xf32>
      } else {
        %inserted_54 = tensor.insert %c1817008060_i64 into %8[%c4, %c6, %c0] : tensor<10x10x5xi64>
        %275 = index.divu %94, %260
        %276 = memref.realloc %alloc_10 : memref<5xi32> to memref<10xi32>
        memref.assume_alignment %alloc_15, 8 : memref<7x5xi32>
        %extracted_55 = tensor.extract %7[%c5, %c4] : tensor<7x5xi16>
        %277 = vector.extract %93[10] : vector<16xi32>
        %278 = index.floordivs %36, %97
        %279 = affine.min affine_map<(d0, d1, d2) -> (d1, -d0, -d0, d1 * 8)>(%85, %278, %c7)
        scf.yield %alloc_12 : memref<10x10x5xf32>
      }
      %264 = index.add %c1, %c12
      %265 = arith.negf %cst : f32
      %266 = scf.if %false_27 -> (i16) {
        %275 = index.sub %c4, %c1
        %276 = bufferization.clone %alloc_16 : memref<10x10x5xi32> to memref<10x10x5xi32>
        %277 = index.mul %c10, %70
        %278 = arith.remsi %39, %c976352095_i64 : i64
        %alloc_54 = memref.alloc() : memref<5xi16>
        memref.copy %alloc, %alloc_54 : memref<5xi16> to memref<5xi16>
        %279 = math.cos %14 : tensor<10x10x5xf16>
        %280 = math.tanh %15 : tensor<10x10x5xf32>
        %281 = arith.remf %cst_4, %cst_3 : f32
        scf.yield %c5403_i16 : i16
      } else {
        %275 = vector.broadcast %78 : i32 to vector<10xi32>
        %276 = vector.broadcast %false_27 : i1 to vector<10xi1>
        %277 = vector.maskedload %alloc_15[%c3, %c1], %276, %275 : memref<7x5xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %278 = vector.broadcast %c8 : index to vector<10xindex>
        %279 = vector.broadcast %extracted : i16 to vector<10xi16>
        vector.scatter %alloc_11[%c0, %c0, %c1] [%278], %276, %279 : memref<10x10x5xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %280 = arith.shrsi %c469509676_i32, %79 : i32
        %281 = math.rsqrt %26 : f16
        %282 = arith.ceildivsi %c5403_i16, %extracted : i16
        %283 = index.sub %260, %264
        %284 = vector.broadcast %cst : f32 to vector<10x10x5xf32>
        %285 = vector.fma %284, %284, %284 : vector<10x10x5xf32>
        %286 = index.divs %83, %c7
        scf.yield %extracted : i16
      }
      %267 = arith.ori %false, %false_27 : i1
      %268 = math.expm1 %57 : tensor<10x10x5xf32>
      %269 = memref.realloc %alloc_20 : memref<5xf32> to memref<10xf32>
      %270 = bufferization.to_memref %5 : memref<7x5xi64>
      %alloc_51 = memref.alloc() : memref<5x16xi16>
      %271 = tensor.empty() : tensor<7x16xi16>
      %272 = linalg.matmul ins(%7, %alloc_51 : tensor<7x5xi16>, memref<5x16xi16>) outs(%271 : tensor<7x16xi16>) -> tensor<7x16xi16>
      %273 = vector.flat_transpose %92 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %274 = math.absi %5 : tensor<7x5xi64>
      %extracted_52 = tensor.extract %11[%c1, %c7, %c1] : tensor<10x10x5xi1>
      %alloc_53 = memref.alloc() : memref<5xf16>
      scf.yield %alloc_53 : memref<5xf16>
    }
    case 3 {
      %extracted_51 = tensor.extract %2[%c0, %c7] : tensor<10x10xf16>
      %258 = index.divs %70, %71
      %259 = arith.negf %26 : f16
      %260 = bufferization.clone %alloc_13 : memref<5xi64> to memref<5xi64>
      scf.if %false {
        %270 = vector.insertelement %c1159337967_i64, %66[] : vector<i64>
        %271 = math.powf %23, %23 : tensor<f16>
        %272 = vector.matrix_multiply %93, %93 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
        %273 = vector.load %alloc[%c2] : memref<5xi16>, vector<5xi16>
        %274 = math.fpowi %26, %c2126613511_i32 : f16, i32
        %275 = arith.divui %c27311_i16, %c27311_i16 : i16
        %276 = arith.shrsi %false_27, %false : i1
        %c363507133_i32 = arith.constant 363507133 : i32
      } else {
        %270 = index.divs %c10, %38
        %271 = vector.reduction <minui>, %42 : vector<5xi16> into i16
        %272 = math.powf %15, %15 : tensor<10x10x5xf32>
        affine.store %extracted_51, %alloc_7[%c0, %c6] : memref<7x5xf16>
        memref.copy %alloc_13, %260 : memref<5xi64> to memref<5xi64>
        %273 = math.log10 %15 : tensor<10x10x5xf32>
        %274 = math.cttz %7 : tensor<7x5xi16>
        %275 = arith.xori %c469509676_i32, %c55294092_i32 : i32
      }
      %false_52 = index.bool.constant false
      %261 = math.ipowi %11, %11 : tensor<10x10x5xi1>
      %262 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
      %263 = affine.min affine_map<(d0, d1, d2) -> (8, d0, 8)>(%c3, %c1, %43)
      %264 = arith.addf %cst_4, %cst_1 : f32
      %inserted_53 = tensor.insert %c469509676_i32 into %4[%c4, %c0] : tensor<10x10xi32>
      %265 = math.cos %2 : tensor<10x10xf16>
      %266 = math.powf %extracted_51, %extracted_51 : f16
      %267 = bufferization.to_tensor %alloc_18 : memref<10x10x5xi16>
      %268 = math.fma %cst_3, %cst_3, %cst_4 : f32
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %262, %20, %c27311_i16 : vector<5xi16>, vector<5xi16> into i16
      %alloc_54 = memref.alloc() : memref<5xf16>
      scf.yield %alloc_54 : memref<5xf16>
    }
    default {
      %258 = affine.min affine_map<(d0) -> (-(d0 ceildiv 64) - 2, d0 ceildiv 64, d0 floordiv 16, -(d0 ceildiv 64) + 2)>(%38)
      %259 = vector.insert %false_27, %92 [14] : i1 into vector<16xi1>
      scf.execute_region {
        %272 = arith.divui %c469509676_i32, %78 : i32
        %273 = math.log %2 : tensor<10x10xf16>
        %274 = index.casts %39 : i64 to index
        %275 = arith.maxsi %39, %c1817008060_i64 : i64
        %276 = arith.ori %79, %78 : i32
        vector.print %93 : vector<16xi32>
        %277 = math.absi %7 : tensor<7x5xi16>
        %278 = arith.maxsi %c976352095_i64, %c1817008060_i64 : i64
        %279 = arith.andi %c976352095_i64, %c1159337967_i64 : i64
        %280 = vector.broadcast %false_27 : i1 to vector<10x10x5xi1>
        %281 = vector.broadcast %c2126613511_i32 : i32 to vector<10x10x5xi32>
        %282 = vector.gather %1[%c5, %c2] [%281], %280, %280 : tensor<7x5xi1>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xi1> into vector<10x10x5xi1>
        %283 = index.add %c10, %c10
        %284 = math.roundeven %15 : tensor<10x10x5xf32>
        %285 = affine.max affine_map<(d0, d1) -> (d0 mod 8, d0 floordiv 8 - 32, 0, 0)>(%c1, %36)
        %286 = vector.load %alloc_15[%c4, %c0] : memref<7x5xi32>, vector<5xi32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %42, %42, %c5403_i16 : vector<5xi16>, vector<5xi16> into i16
        %288 = arith.addi %c1159337967_i64, %c1159337967_i64 : i64
        scf.yield
      }
      %260 = memref.atomic_rmw ori %c1817008060_i64, %alloc_13[%c3] : (i64, memref<5xi64>) -> i64
      %261 = math.log10 %23 : tensor<f16>
      %262 = vector.broadcast %extracted : i16 to vector<5x5xi16>
      %263 = vector.outerproduct %42, %20, %262 {kind = #vector.kind<maxsi>} : vector<5xi16>, vector<5xi16>
      %264 = arith.andi %c1517640645_i64, %c976352095_i64 : i64
      %265 = math.rsqrt %cst_3 : f32
      %266 = arith.divui %extracted, %c5403_i16 : i16
      vector.print %92 : vector<16xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<5x10x10xi1>) {
      ^bb0(%out: i1):
        %272 = arith.minsi %c5403_i16, %extracted : i16
        %c1143578165_i32 = arith.constant 1143578165 : i32
        %273 = math.ceil %15 : tensor<10x10x5xf32>
        %274 = vector.load %alloc_8[%c3, %c8, %c0] : memref<10x10x5xf16>, vector<10x10xf16>
        %275 = arith.mulf %cst_4, %cst_3 : f32
        %276 = vector.create_mask %c8, %c6 : vector<10x10xi1>
        %277 = index.maxu %c11, %c7
        %278 = vector.insert %c27311_i16, %20 [1] : i16 into vector<5xi16>
        %279 = arith.maxf %26, %cst_0 : f16
        %280 = arith.addf %cst_4, %cst_3 : f32
        %281 = math.rsqrt %22 : tensor<f16>
        %282 = bufferization.to_memref %57 : memref<10x10x5xf32>
        vector.print %274 : vector<10x10xf16>
        %283 = vector.broadcast %false_27 : i1 to vector<5xi1>
        %284 = vector.transfer_write %283, %18[%277, %95, %83] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<5x10x10xi1>
        %285 = index.sub %43, %c7
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 mod 2, d0 - d3 floordiv 8 + 64, 0, d0 - d3 floordiv 8 + 64)>(%c10, %c5, %71, %97)
        %287 = arith.divsi %c27311_i16, %extracted : i16
        %288 = vector.broadcast %cst_0 : f16 to vector<7x5xf16>
        %289 = vector.broadcast %false : i1 to vector<7x5xi1>
        %290 = vector.broadcast %c55294092_i32 : i32 to vector<7x5xi32>
        %291 = vector.gather %alloc_7[%277, %c10] [%290], %289, %288 : memref<7x5xf16>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xf16> into vector<7x5xf16>
        %292 = vector.load %alloc_21[%c1] : memref<10xf16>, vector<10x10xf16>
        %293 = index.maxs %49, %c3
        %294 = memref.realloc %alloc_21 : memref<10xf16> to memref<5xf16>
        %295 = arith.remui %c55294092_i32, %c469509676_i32 : i32
        %296 = arith.xori %c2126613511_i32, %78 : i32
        %297 = arith.shrui %c976352095_i64, %c976352095_i64 : i64
        %298 = arith.remf %cst_4, %cst_4 : f32
        %299 = math.fpowi %cst_3, %c55294092_i32 : f32, i32
        %300 = vector.extract %276[4] : vector<10x10xi1>
        bufferization.dealloc_tensor %4 : tensor<10x10xi32>
        %301 = vector.shuffle %74, %74 [0, 1] : vector<i16>, vector<i16>
        %302 = vector.bitcast %289 : vector<7x5xi1> to vector<7x5xi1>
        %303 = arith.remsi %c5403_i16, %c5403_i16 : i16
        %304 = math.roundeven %57 : tensor<10x10x5xf32>
        linalg.yield %false_27 : i1
      } -> tensor<5x10x10xi1>
      %268 = arith.ceildivsi %78, %c55294092_i32 : i32
      %269 = arith.andi %c55294092_i32, %79 : i32
      %270 = vector.splat %70 : vector<5xindex>
      scf.index_switch %c13 
      case 1 {
        %272 = arith.mulf %cst_0, %cst_5 : f16
        %273 = index.add %rank, %38
        %274 = arith.xori %c2126613511_i32, %79 : i32
        %275 = bufferization.clone %alloc_14 : memref<10x10xi1> to memref<10x10xi1>
        %276 = arith.remf %26, %26 : f16
        %277 = arith.remf %cst, %cst_2 : f32
        %278 = arith.ceildivsi %c5403_i16, %c5403_i16 : i16
        %279 = index.sizeof
        %280 = math.fma %14, %14, %14 : tensor<10x10x5xf16>
        %281 = vector.shuffle %91, %93 [1, 4, 6, 8, 10, 11, 12, 13, 14, 18, 19, 22, 23, 24, 30, 31] : vector<16xi32>, vector<16xi32>
        %inserted_52 = tensor.insert %cst_0 into %14[%c6, %c8, %c1] : tensor<10x10x5xf16>
        %282 = bufferization.clone %48 : memref<10x10x5xf16> to memref<10x10x5xf16>
        %283 = arith.ori %c976352095_i64, %c1159337967_i64 : i64
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %93, %91, %78 : vector<16xi32>, vector<16xi32> into i32
        %285 = math.powf %cst_4, %cst_4 : f32
        bufferization.dealloc_tensor %2 : tensor<10x10xf16>
        scf.yield
      }
      case 2 {
        %272 = vector.insert %extracted, %20 [0] : i16 into vector<5xi16>
        %273 = vector.broadcast %97 : index to vector<7xindex>
        %274 = vector.broadcast %false : i1 to vector<7xi1>
        %275 = vector.broadcast %cst_5 : f16 to vector<7xf16>
        vector.scatter %alloc_8[%c5, %c9, %c0] [%273], %274, %275 : memref<10x10x5xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %276 = math.absi %5 : tensor<7x5xi64>
        %277 = math.cos %2 : tensor<10x10xf16>
        %278 = bufferization.clone %alloc_17 : memref<10x10xf32> to memref<10x10xf32>
        %279 = memref.realloc %alloc_10 : memref<5xi32> to memref<16xi32>
        %280 = vector.broadcast %false : i1 to vector<i1>
        %281 = vector.transfer_write %280, %1[%c6, %258] : vector<i1>, tensor<7x5xi1>
        %282 = math.tanh %cst_3 : f32
        %283 = arith.shrsi %c27311_i16, %extracted : i16
        %284 = math.cos %57 : tensor<10x10x5xf32>
        %285 = arith.andi %c1817008060_i64, %c1517640645_i64 : i64
        %286 = vector.insert %c5403_i16, %42 [3] : i16 into vector<5xi16>
        %287 = affine.min affine_map<(d0, d1) -> (-(d1 ceildiv 16), d1)>(%c15, %c13)
        %288 = arith.shrui %c1159337967_i64, %39 : i64
        %289 = memref.load %alloc_11[%c3, %c4, %c1] : memref<10x10x5xi16>
        %290 = math.expm1 %15 : tensor<10x10x5xf32>
        scf.yield
      }
      case 3 {
        %272 = math.ctlz %18 : tensor<5x10x10xi1>
        %273 = vector.matrix_multiply %92, %92 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
        %274 = arith.xori %79, %79 : i32
        vector.print %20 : vector<5xi16>
        %275 = index.divu %81, %c8
        %276 = memref.load %alloc_6[%c1, %c1] : memref<7x5xi32>
        %277 = math.log2 %15 : tensor<10x10x5xf32>
        %278 = index.sub %95, %c7
        %279 = math.absi %4 : tensor<10x10xi32>
        %280 = arith.maxsi %c55294092_i32, %79 : i32
        %c31452_i16 = arith.constant 31452 : i16
        %281 = index.divu %95, %83
        %282 = arith.ori %false, %false : i1
        %283 = math.expm1 %22 : tensor<f16>
        %284 = arith.remf %26, %cst_0 : f16
        %285 = arith.floordivsi %false, %false_27 : i1
        scf.yield
      }
      case 4 {
        %272 = math.rsqrt %2 : tensor<10x10xf16>
        %273 = memref.atomic_rmw assign %78, %alloc_6[%c5, %c1] : (i32, memref<7x5xi32>) -> i32
        %274 = arith.minsi %78, %c55294092_i32 : i32
        %275 = index.sizeof
        %276 = index.mul %68, %258
        %277 = arith.mulf %26, %cst_5 : f16
        %expanded_52 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x5xi1> into tensor<7x5x1xi1>
        %278 = math.log %15 : tensor<10x10x5xf32>
        %279 = arith.addi %c55294092_i32, %79 : i32
        %280 = math.round %22 : tensor<f16>
        %inserted_53 = tensor.insert %26 into %2[%c9, %c6] : tensor<10x10xf16>
        %281 = vector.broadcast %c1817008060_i64 : i64 to vector<i64>
        %282 = vector.transfer_write %281, %6[%38, %97] : vector<i64>, tensor<7x5xi64>
        %283 = affine.load %alloc_18[%c6, %c1, %c11] : memref<10x10x5xi16>
        %284 = arith.remf %cst, %cst_3 : f32
        %285 = arith.mulf %cst, %cst : f32
        %286 = vector.insertelement %c2126613511_i32, %93[%c14 : index] : vector<16xi32>
        scf.yield
      }
      default {
        %272 = vector.extract_strided_slice %42 {offsets = [0], sizes = [5], strides = [1]} : vector<5xi16> to vector<5xi16>
        %273 = arith.divf %cst_1, %cst_3 : f32
        %274 = math.exp %cst_1 : f32
        %cst_52 = arith.constant 0x4E00BDB3 : f32
        %275 = arith.xori %c55294092_i32, %c469509676_i32 : i32
        %276 = index.divs %94, %94
        %277 = arith.remsi %39, %c1159337967_i64 : i64
        %278 = math.exp2 %2 : tensor<10x10xf16>
        %expanded_53 = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<10x10x5xi32> into tensor<10x10x5x1xi32>
        bufferization.dealloc_tensor %16 : tensor<10x10x5xi64>
        %279 = tensor.empty() : tensor<i32>
        %280 = math.fpowi %23, %279 : tensor<f16>, tensor<i32>
        %281 = math.rsqrt %26 : f16
        %282 = vector.broadcast %c2126613511_i32 : i32 to vector<7x5xi32>
        %283 = index.sizeof
        %284 = bufferization.to_memref %13 : memref<5xi16>
        %285 = arith.shrsi %c469509676_i32, %c2126613511_i32 : i32
      }
      %271 = arith.xori %false_27, %false_27 : i1
      %alloc_51 = memref.alloc() : memref<5xf16>
      scf.yield %alloc_51 : memref<5xf16>
    }
    %102 = affine.for %arg0 = 0 to 46 iter_args(%arg1 = %5) -> (tensor<7x5xi64>) {
      affine.yield %6 : tensor<7x5xi64>
    }
    %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x5xi1> into tensor<7x5x1xi1>
    %103 = arith.remui %c5403_i16, %extracted : i16
    %104 = arith.remf %cst_2, %cst_2 : f32
    memref.store %extracted, %alloc_18[%c8, %c5, %c3] : memref<10x10x5xi16>
    %105 = arith.addi %c1517640645_i64, %39 : i64
    %106 = vector.broadcast %c1817008060_i64 : i64 to vector<7x5xi64>
    %107 = index.divs %c6, %c1
    %108 = vector.matrix_multiply %93, %93 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
    %109 = memref.load %alloc_17[%c8, %c7] : memref<10x10xf32>
    %110 = arith.addi %extracted, %c5403_i16 : i16
    %alloc_31 = memref.alloc() : memref<10x10xi64>
    %111 = index.ceildivu %rank, %95
    %112 = arith.subi %extracted, %c5403_i16 : i16
    %113 = arith.remui %false, %false : i1
    %114 = index.divu %83, %68
    %115 = arith.ori %false, %false_27 : i1
    %116 = affine.min affine_map<(d0, d1, d2) -> (d1, -(d0 mod 16), 2)>(%71, %95, %c7)
    scf.if %false {
      %258 = vector.broadcast %68 : index to vector<16xindex>
      %259 = vector.broadcast %26 : f16 to vector<16xf16>
      vector.scatter %alloc_21[%c1] [%258], %92, %259 : memref<10xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
      %260 = vector.multi_reduction <maxui>, %108, %108 [] : vector<1xi32> to vector<1xi32>
      %261 = arith.shrsi %c1517640645_i64, %c1817008060_i64 : i64
      %262 = vector.broadcast %39 : i64 to vector<7xi64>
      %dest_51, %accumulated_value_52 = vector.scan <minui>, %106, %262 {inclusive = true, reduction_dim = 1 : i64} : vector<7x5xi64>, vector<7xi64>
      %263 = bufferization.to_memref %4 : memref<10x10xi32>
      %inserted_53 = tensor.insert %c27311_i16 into %10[%c0] : tensor<5xi16>
      %splat_54 = tensor.splat %26 : tensor<10x10x5xf16>
      %264 = index.floordivs %c7, %c13
    } else {
      memref.store %cst_0, %48[%c8, %c0, %c4] : memref<10x10x5xf16>
      %258 = index.add %c13, %68
      %259 = vector.shuffle %74, %74 [0, 1] : vector<i16>, vector<i16>
      %260 = arith.negf %cst : f32
      %261 = affine.min affine_map<(d0) -> (((d0 mod 4) floordiv 32) mod 32, d0 mod 4 + 8, d0 mod 4)>(%85)
      %262 = scf.while (%arg0 = %alloc_20) : (memref<5xf32>) -> memref<5xf32> {
        %265 = arith.muli %79, %c2126613511_i32 : i32
        %266 = math.absf %21 : tensor<10xf16>
        %267 = arith.divui %c469509676_i32, %c55294092_i32 : i32
        %inserted_51 = tensor.insert %false_27 into %1[%c1, %c0] : tensor<7x5xi1>
        %268 = index.maxs %c15, %49
        %269 = arith.shrsi %c1159337967_i64, %c976352095_i64 : i64
        %270 = arith.addi %c2126613511_i32, %c2126613511_i32 : i32
        %271 = vector.broadcast %c1817008060_i64 : i64 to vector<7xi64>
        %dest_52, %accumulated_value_53 = vector.scan <minui>, %106, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<7x5xi64>, vector<7xi64>
        scf.condition(%false) %alloc_20 : memref<5xf32>
      } do {
      ^bb0(%arg0: memref<5xf32>):
        %265 = index.ceildivu %81, %85
        %266 = arith.ori %c27311_i16, %extracted : i16
        %267 = vector.broadcast %c27311_i16 : i16 to vector<7xi16>
        %268 = vector.transfer_write %267, %7[%68, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<7x5xi16>
        %269 = index.floordivs %rank, %c1
        %270 = math.expm1 %cst_5 : f16
        %271 = tensor.empty() : tensor<10xi32>
        %272 = math.fpowi %21, %271 : tensor<10xf16>, tensor<10xi32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %c27311_i16 : vector<5xi16>, vector<5xi16> into i16
        %274 = math.log10 %14 : tensor<10x10x5xf16>
        %275 = math.absi %79 : i32
        %276 = index.sizeof
        %277 = vector.load %alloc_6[%c0, %c1] : memref<7x5xi32>, vector<10x10x5xi32>
        %278 = affine.load %alloc_6[%c3, %c14] : memref<7x5xi32>
        %279 = index.divu %68, %261
        %extracted_51 = tensor.extract %1[%c0, %c2] : tensor<7x5xi1>
        %280 = vector.splat %c9 : vector<5xindex>
        %cast = tensor.cast %7 : tensor<7x5xi16> to tensor<?x?xi16>
        scf.yield %alloc_20 : memref<5xf32>
      }
      %263 = tensor.empty() : tensor<5xi1>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14, %263 : memref<10x10xi1>, tensor<5xi1>) outs(%transposed : tensor<5x10x10xi1>) {
      ^bb0(%in: i1, %in_51: i1, %out: i1):
        %265 = math.absf %cst_4 : f32
        %266 = arith.subi %extracted, %c5403_i16 : i16
        %267 = affine.min affine_map<(d0) -> ((d0 * 128 + d0 - d0 mod 8) * 8, d0 * 128 + d0 - d0 mod 8 + 1, d0 * 128)>(%49)
        %268 = arith.divsi %79, %c55294092_i32 : i32
        %269 = vector.extract %42[0] : vector<5xi16>
        %270 = vector.extract %91[14] : vector<16xi32>
        %271 = math.log1p %cst_4 : f32
        %272 = index.sub %c10, %c7
        %273 = arith.shrsi %c5403_i16, %c5403_i16 : i16
        %274 = arith.minf %cst, %cst : f32
        %275 = index.add %261, %272
        %276 = vector.multi_reduction <minsi>, %92, %92 [] : vector<16xi1> to vector<16xi1>
        %277 = index.add %c6, %97
        %278 = index.casts %68 : index to i32
        %279 = bufferization.to_tensor %alloc_20 : memref<5xf32>
        %280 = arith.floordivsi %c1817008060_i64, %39 : i64
        %281 = arith.remf %26, %cst_5 : f16
        %282 = math.ctpop %4 : tensor<10x10xi32>
        %283 = arith.ceildivsi %c27311_i16, %extracted : i16
        %cst_52 = arith.constant 1.000000e+00 : f32
        %284 = vector.transfer_read %279[%c1], %cst_52 : tensor<5xf32>, vector<f32>
        %285 = index.castu %277 : index to i32
        %286 = vector.insertelement %78, %91[%95 : index] : vector<16xi32>
        %287 = vector.splat %c8 : vector<7x5xindex>
        %288 = index.maxs %70, %c2
        %289 = arith.cmpf ole, %cst_2, %cst_52 : f32
        %290 = math.expm1 %2 : tensor<10x10xf16>
        %291 = arith.maxsi %c2126613511_i32, %c2126613511_i32 : i32
        %expanded_53 = tensor.expand_shape %57 [[0], [1], [2, 3]] : tensor<10x10x5xf32> into tensor<10x10x5x1xf32>
        %292 = arith.maxf %cst_5, %cst_0 : f16
        %293 = memref.realloc %alloc_13 : memref<5xi64> to memref<7xi64>
        %294 = arith.maxsi %c976352095_i64, %39 : i64
        %295 = arith.ori %in, %in_51 : i1
        linalg.yield %false_27 : i1
      } -> tensor<5x10x10xi1>
      bufferization.dealloc_tensor %22 : tensor<f16>
    }
    %117 = vector.broadcast %c27311_i16 : i16 to vector<16xi16>
    %118 = vector.maskedload %alloc_19[%c6, %c6, %c4], %92, %117 : memref<10x10x5xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
    %119 = index.casts %c2126613511_i32 : i32 to index
    %120 = index.castu %c3 : index to i32
    %121 = vector.create_mask %rank, %85, %c0 : vector<10x10x5xi1>
    %122 = vector.reduction <minui>, %20 : vector<5xi16> into i16
    %123 = math.log10 %2 : tensor<10x10xf16>
    %124 = scf.while (%arg0 = %extracted) : (i16) -> i16 {
      %258 = arith.ceildivsi %c27311_i16, %arg0 : i16
      %259 = arith.shrui %false, %false_27 : i1
      %260 = vector.broadcast %c9 : index to vector<10xindex>
      %261 = vector.broadcast %false_27 : i1 to vector<10xi1>
      %262 = vector.broadcast %78 : i32 to vector<10xi32>
      vector.scatter %alloc_9[%c9, %c1, %c3] [%260], %261, %262 : memref<10x10x5xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
      scf.index_switch %81 
      case 1 {
        %268 = math.absf %cst_2 : f32
        %269 = arith.remui %arg0, %c27311_i16 : i16
        %270 = vector.broadcast %arg0 : i16 to vector<16x16xi16>
        %271 = vector.outerproduct %118, %117, %270 {kind = #vector.kind<minui>} : vector<16xi16>, vector<16xi16>
        %expanded_51 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<10x10xf16> into tensor<10x10x1xf16>
        memref.assume_alignment %alloc, 2 : memref<5xi16>
        %272 = vector.broadcast %116 : index to vector<10xindex>
        %273 = vector.broadcast %false_27 : i1 to vector<10xi1>
        %274 = vector.broadcast %c469509676_i32 : i32 to vector<10xi32>
        vector.scatter %alloc_16[%c0, %c1, %c4] [%272], %273, %274 : memref<10x10x5xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %275 = index.sub %c8, %c7
        %inserted_52 = tensor.insert %c2126613511_i32 into %from_elements[%c5, %c3, %c3] : tensor<10x10x5xi32>
        %276 = memref.load %alloc_17[%c3, %c4] : memref<10x10xf32>
        %277 = arith.shrui %arg0, %arg0 : i16
        memref.assume_alignment %alloc_7, 1 : memref<7x5xf16>
        %278 = bufferization.to_memref %0 : memref<7x5xi16>
        %279 = arith.floordivsi %c1159337967_i64, %39 : i64
        %280 = vector.broadcast %cst_4 : f32 to vector<10x10x5xf32>
        %281 = vector.broadcast %78 : i32 to vector<10x10x5xi32>
        %282 = vector.gather %alloc_20[%119] [%281], %121, %280 : memref<5xf32>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xf32> into vector<10x10x5xf32>
        memref.assume_alignment %alloc_7, 4 : memref<7x5xf16>
        %283 = arith.maxf %cst_5, %cst_5 : f16
        scf.yield
      }
      default {
        memref.assume_alignment %alloc_17, 1 : memref<10x10xf32>
        %268 = vector.matrix_multiply %108, %108 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %269 = math.expm1 %cst : f32
        %270 = arith.divsi %arg0, %c27311_i16 : i16
        %271 = arith.ceildivsi %arg0, %arg0 : i16
        %272 = arith.remui %c27311_i16, %extracted : i16
        %273 = arith.negf %cst_0 : f16
        %274 = math.absi %4 : tensor<10x10xi32>
        %275 = arith.xori %c1817008060_i64, %c1159337967_i64 : i64
        %276 = index.mul %c15, %c1
        %277 = arith.remf %cst_0, %cst_5 : f16
        %278 = index.mul %c2, %c1
        %279 = math.tanh %15 : tensor<10x10x5xf32>
        %280 = index.casts %107 : index to i32
        %281 = arith.shrsi %false_27, %false : i1
        %282 = vector.insertelement %c5403_i16, %42[%119 : index] : vector<5xi16>
      }
      %263 = vector.broadcast %c6 : index to vector<16xindex>
      %264 = vector.broadcast %cst_3 : f32 to vector<16xf32>
      vector.scatter %alloc_20[%c3] [%263], %92, %264 : memref<5xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %265 = math.round %14 : tensor<10x10x5xf16>
      %266 = scf.while (%arg1 = %alloc_16) : (memref<10x10x5xi32>) -> memref<10x10x5xi32> {
        %268 = arith.addf %cst_3, %cst_3 : f32
        %269 = index.divu %c12, %119
        %270 = math.roundeven %57 : tensor<10x10x5xf32>
        %cst_51 = arith.constant 1.84932032E+9 : f32
        affine.store %c55294092_i32, %alloc_15[%c15, %c3] : memref<7x5xi32>
        %271 = arith.floordivsi %c2126613511_i32, %c2126613511_i32 : i32
        %272 = arith.xori %c5403_i16, %c5403_i16 : i16
        %273 = math.fpowi %cst_2, %78 : f32, i32
        scf.condition(%false) %alloc_16 : memref<10x10x5xi32>
      } do {
      ^bb0(%arg1: memref<10x10x5xi32>):
        %268 = vector.insert %78, %93 [10] : i32 into vector<16xi32>
        %269 = bufferization.clone %alloc_17 : memref<10x10xf32> to memref<10x10xf32>
        %inserted_51 = tensor.insert %cst_0 into %14[%c0, %c8, %c2] : tensor<10x10x5xf16>
        %270 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %271 = vector.maskedload %alloc_20[%c4], %92, %270 : memref<5xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %271, %271, %cst_1 : vector<16xf32>, vector<16xf32> into f32
        %273 = arith.shrui %39, %39 : i64
        %274 = math.exp2 %22 : tensor<f16>
        %275 = arith.divf %cst_3, %cst_4 : f32
        %276 = arith.floordivsi %79, %78 : i32
        %277 = math.log2 %57 : tensor<10x10x5xf32>
        %278 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 8) mod 16, d0, d0 mod 128 + d0 floordiv 8 + 48)>(%c6, %119)
        %279 = vector.insert %arg0, %118 [4] : i16 into vector<16xi16>
        %280 = math.rsqrt %23 : tensor<f16>
        %281 = vector.broadcast %arg0 : i16 to vector<7x5xi16>
        %282 = math.powf %cst_2, %cst_3 : f32
        %283 = math.round %cst : f32
        scf.yield %alloc_16 : memref<10x10x5xi32>
      }
      %267 = math.log10 %15 : tensor<10x10x5xf32>
      scf.condition(%false) %arg0 : i16
    } do {
    ^bb0(%arg0: i16):
      %258 = tensor.empty() : tensor<10xi32>
      %259 = math.fpowi %21, %258 : tensor<10xf16>, tensor<10xi32>
      %inserted_51 = tensor.insert %c27311_i16 into %7[%c6, %c1] : tensor<7x5xi16>
      %260 = math.fma %21, %21, %21 : tensor<10xf16>
      %261 = math.powf %cst_5, %cst_5 : f16
      %262 = memref.load %alloc_11[%c0, %c9, %c3] : memref<10x10x5xi16>
      %263 = vector.broadcast %c1817008060_i64 : i64 to vector<10x10xi64>
      %264 = bufferization.to_memref %generated : memref<?x?xi16>
      %265 = arith.negf %cst_2 : f32
      %266 = memref.realloc %alloc_21 : memref<10xf16> to memref<16xf16>
      %267 = arith.andi %c469509676_i32, %78 : i32
      %268 = affine.load %alloc_6[%c15, %c7] : memref<7x5xi32>
      %269 = index.maxs %94, %38
      %270 = arith.divsi %78, %78 : i32
      %271 = arith.divui %c1817008060_i64, %c976352095_i64 : i64
      %272 = arith.maxsi %78, %c55294092_i32 : i32
      %273 = math.rsqrt %21 : tensor<10xf16>
      scf.yield %extracted : i16
    }
    %125 = index.casts %c2126613511_i32 : i32 to index
    %126 = arith.mulf %cst_5, %cst_0 : f16
    %127 = memref.load %alloc_17[%c4, %c8] : memref<10x10xf32>
    %128 = vector.broadcast %c469509676_i32 : i32 to vector<16x16xi32>
    %129 = vector.outerproduct %91, %91, %128 {kind = #vector.kind<maxsi>} : vector<16xi32>, vector<16xi32>
    %130 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
    %131 = memref.atomic_rmw minf %cst_0, %48[%c3, %c0, %c3] : (f16, memref<10x10x5xf16>) -> f16
    %132 = vector.broadcast %c15 : index to vector<7xindex>
    %133 = vector.broadcast %false : i1 to vector<7xi1>
    %134 = vector.broadcast %c2126613511_i32 : i32 to vector<7xi32>
    vector.scatter %alloc_15[%c1, %c2] [%132], %133, %134 : memref<7x5xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
    %135 = arith.ceildivsi %false_27, %false : i1
    %136 = arith.addf %cst_2, %cst : f32
    %137 = index.castu %78 : i32 to index
    %false_32 = arith.constant false
    %138 = vector.reduction <minsi>, %108 : vector<1xi32> into i32
    %139 = math.tanh %cst_1 : f32
    %140 = math.rsqrt %cst_2 : f32
    %141 = arith.minf %cst_4, %cst : f32
    %false_33 = arith.constant false
    %142 = vector.insert %extracted, %42 [3] : i16 into vector<5xi16>
    %143 = index.sizeof
    %144 = arith.floordivsi %c2126613511_i32, %c55294092_i32 : i32
    %145 = arith.ori %c5403_i16, %c5403_i16 : i16
    %146 = arith.andi %c1817008060_i64, %c1817008060_i64 : i64
    %147 = math.absi %3 : tensor<10x10x5xi1>
    %148 = index.castu %125 : index to i32
    %149 = affine.if affine_set<(d0, d1, d2) : ((d0 - 16) mod 32 + 128 == 0, (d0 - 2) floordiv 128 + d2 == 0)>(%c12, %c0, %c13) -> f32 {
      %258 = vector.broadcast %c1517640645_i64 : i64 to vector<7xi64>
      %dest_51, %accumulated_value_52 = vector.scan <xor>, %106, %258 {inclusive = true, reduction_dim = 1 : i64} : vector<7x5xi64>, vector<7xi64>
      %259 = arith.divsi %c27311_i16, %c27311_i16 : i16
      vector.print %130 : vector<5xi16>
      %260 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
      %261 = vector.broadcast %c5403_i16 : i16 to vector<i16>
      %262 = vector.transfer_write %261, %0[%71, %c7] : vector<i16>, tensor<7x5xi16>
      %263 = index.divu %125, %68
      memref.assume_alignment %48, 16 : memref<10x10x5xf16>
      %264 = math.expm1 %cst_1 : f32
      affine.yield %cst : f32
    } else {
      memref.assume_alignment %alloc_18, 8 : memref<10x10x5xi16>
      %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %118, %118, %extracted : vector<16xi16>, vector<16xi16> into i16
      %259 = arith.muli %c27311_i16, %extracted : i16
      %260 = arith.subi %c1817008060_i64, %39 : i64
      %261 = math.exp2 %2 : tensor<10x10xf16>
      %262 = vector.broadcast %c2126613511_i32 : i32 to vector<10x10x5xi32>
      %263 = math.cos %cst_2 : f32
      %264 = math.ctpop %0 : tensor<7x5xi16>
      affine.yield %cst : f32
    }
    %150 = math.cos %cst : f32
    %151 = arith.remf %cst_1, %cst_4 : f32
    %152 = index.casts %38 : index to i32
    %extracted_34 = tensor.extract %16[%c5, %c3, %c1] : tensor<10x10x5xi64>
    %153 = bufferization.to_memref %11 : memref<10x10x5xi1>
    %154 = arith.remf %cst_5, %26 : f16
    %155 = tensor.empty() : tensor<7x5xi16>
    %mapped_35 = linalg.map ins(%0, %7 : tensor<7x5xi16>, tensor<7x5xi16>) outs(%155 : tensor<7x5xi16>)
      (%in: i16, %in_51: i16) {
        %258 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
        %259 = affine.if affine_set<(d0, d1, d2) : ((d0 - 16) mod 32 + 128 == 0, (d0 - 2) floordiv 128 + d2 == 0)>(%c8, %c1, %c6) -> memref<10x10x5xi64> {
          %289 = vector.insertelement %78, %91[%111 : index] : vector<16xi32>
          %290 = vector.broadcast %cst_5 : f16 to vector<5xf16>
          %291 = vector.broadcast %false : i1 to vector<5xi1>
          %292 = vector.maskedload %alloc_8[%c3, %c2, %c1], %291, %290 : memref<10x10x5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
          %293 = index.sub %c6, %70
          %true = arith.constant true
          %294 = index.add %c3, %107
          %295 = vector.broadcast %false : i1 to vector<10x5xi1>
          %dest_52, %accumulated_value_53 = vector.scan <maxui>, %121, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x5xi1>, vector<10x5xi1>
          %296 = arith.shrui %extracted_34, %extracted_34 : i64
          %297 = math.tanh %2 : tensor<10x10xf16>
          %alloc_54 = memref.alloc() : memref<10x10x5xi64>
          affine.yield %alloc_54 : memref<10x10x5xi64>
        } else {
          %289 = arith.maxui %extracted_34, %extracted_34 : i64
          %290 = arith.ori %39, %c1159337967_i64 : i64
          %291 = arith.divsi %c1817008060_i64, %39 : i64
          %alloc_52 = memref.alloc() : memref<5xi64>
          memref.copy %alloc_13, %alloc_52 : memref<5xi64> to memref<5xi64>
          %292 = vector.broadcast %c55294092_i32 : i32 to vector<5xi32>
          vector.transfer_write %292, %alloc_9[%119, %c5, %137] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi32>, memref<10x10x5xi32>
          %293 = arith.shrui %c1817008060_i64, %39 : i64
          %294 = arith.maxsi %c5403_i16, %in_51 : i16
          %295 = arith.maxf %cst_3, %cst_1 : f32
          %alloc_53 = memref.alloc() : memref<10x10x5xi64>
          affine.yield %alloc_53 : memref<10x10x5xi64>
        }
        %c216712253_i32 = arith.constant 216712253 : i32
        %260 = index.ceildivs %c11, %rank
        %261 = vector.matrix_multiply %42, %130 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
        %262 = index.mul %94, %116
        scf.if %false_27 {
          %splat_52 = tensor.splat %cst_3 : tensor<7x5xf32>
          %289 = math.ctpop %11 : tensor<10x10x5xi1>
          %290 = vector.splat %26 : vector<10x10xf16>
          %291 = math.ctpop %1 : tensor<7x5xi1>
          memref.store %c55294092_i32, %alloc_16[%c6, %c2, %c2] : memref<10x10x5xi32>
          %292 = vector.reduction <mul>, %118 : vector<16xi16> into i16
          %293 = arith.muli %c976352095_i64, %c1159337967_i64 : i64
          %294 = arith.addf %cst_3, %cst : f32
        }
        %263 = arith.maxui %c27311_i16, %extracted : i16
        %264 = index.add %c10, %c10
        %265 = arith.remf %cst_0, %cst_5 : f16
        %266 = math.fpowi %57, %from_elements : tensor<10x10x5xf32>, tensor<10x10x5xi32>
        %267 = index.add %143, %c5
        %268 = math.atan %cst_4 : f32
        %269 = bufferization.to_tensor %alloc_9 : memref<10x10x5xi32>
        scf.index_switch %rank 
        case 1 {
          %289 = arith.shrsi %false_27, %false_27 : i1
          %290 = math.rsqrt %cst_2 : f32
          %291 = vector.broadcast %false : i1 to vector<10x10xi1>
          %dest_52, %accumulated_value_53 = vector.scan <minui>, %121, %291 {inclusive = false, reduction_dim = 2 : i64} : vector<10x10x5xi1>, vector<10x10xi1>
          %292 = math.absf %22 : tensor<f16>
          %293 = arith.addi %extracted_34, %c976352095_i64 : i64
          %294 = vector.flat_transpose %130 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
          memref.store %c5403_i16, %alloc_19[%c3, %c3, %c4] : memref<10x10x5xi16>
          %295 = arith.remsi %extracted_34, %c1517640645_i64 : i64
          %296 = memref.load %alloc_16[%c3, %c1, %c3] : memref<10x10x5xi32>
          %297 = index.divu %70, %c0
          %298 = arith.xori %c1517640645_i64, %c1159337967_i64 : i64
          %299 = vector.multi_reduction <xor>, %91, %93 [] : vector<16xi32> to vector<16xi32>
          memref.assume_alignment %153, 1 : memref<10x10x5xi1>
          %300 = arith.shrui %c2126613511_i32, %79 : i32
          %extracted_54 = tensor.extract %6[%c2, %c4] : tensor<7x5xi64>
          %expanded_55 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<10x10x5xf32> into tensor<10x10x5x1xf32>
          scf.yield
        }
        case 2 {
          %289 = math.rsqrt %22 : tensor<f16>
          %290 = math.expm1 %cst_0 : f16
          %291 = arith.addf %cst_5, %26 : f16
          %292 = vector.shuffle %42, %20 [0, 1, 3, 6] : vector<5xi16>, vector<5xi16>
          %293 = bufferization.clone %alloc_13 : memref<5xi64> to memref<5xi64>
          %294 = index.floordivs %49, %97
          %false_52 = arith.constant false
          %false_53 = arith.constant false
          %295 = vector.transfer_read %153[%43, %68, %c7], %false_53 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<10x10x5xi1>, vector<10xi1>
          %296 = arith.andi %c976352095_i64, %c976352095_i64 : i64
          %297 = math.ipowi %c469509676_i32, %78 : i32
          %298 = math.tanh %26 : f16
          %299 = index.sub %97, %c6
          %300 = math.cos %cst : f32
          %false_54 = index.bool.constant false
          %301 = arith.divui %false_54, %false_52 : i1
          %302 = index.sizeof
          %303 = vector.broadcast %false_27 : i1 to vector<10x10x5xi1>
          scf.yield
        }
        case 3 {
          %289 = math.ctpop %9 : tensor<5xi64>
          %290 = arith.andi %c5403_i16, %c5403_i16 : i16
          %291 = arith.xori %false, %false_27 : i1
          %292 = arith.remsi %39, %extracted_34 : i64
          %293 = memref.load %48[%c6, %c8, %c3] : memref<10x10x5xf16>
          %294 = arith.remf %cst, %cst_2 : f32
          %295 = arith.remf %cst_2, %cst_4 : f32
          %296 = arith.divsi %in_51, %extracted : i16
          %297 = math.roundeven %14 : tensor<10x10x5xf16>
          %298 = math.powf %23, %22 : tensor<f16>
          %299 = arith.andi %78, %c469509676_i32 : i32
          %300 = vector.flat_transpose %93 {columns = 4 : i32, rows = 4 : i32} : vector<16xi32> -> vector<16xi32>
          %301 = vector.splat %c2 : vector<7x5xindex>
          %inserted_52 = tensor.insert %in_51 into %7[%c0, %c3] : tensor<7x5xi16>
          %302 = affine.min affine_map<(d0) -> (d0 floordiv 16 + d0 floordiv 64 - 6, (d0 floordiv 64) * 128, d0 floordiv 16 - (d0 floordiv 64) * 4, d0)>(%107)
          %303 = vector.broadcast %false_27 : i1 to vector<10x10xi1>
          %dest_53, %accumulated_value_54 = vector.scan <mul>, %121, %303 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x5xi1>, vector<10x10xi1>
          scf.yield
        }
        case 4 {
          %289 = memref.load %alloc_21[%c1] : memref<10xf16>
          %290 = memref.atomic_rmw minu %78, %alloc_9[%c1, %c5, %c0] : (i32, memref<10x10x5xi32>) -> i32
          %291 = vector.bitcast %130 : vector<5xi16> to vector<5xi16>
          %292 = math.cttz %c5403_i16 : i16
          %293 = vector.create_mask %36, %97 : vector<7x5xi1>
          %294 = arith.maxui %c1517640645_i64, %c976352095_i64 : i64
          %295 = vector.extract_strided_slice %261 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
          %296 = math.ctpop %39 : i64
          %297 = vector.broadcast %c976352095_i64 : i64 to vector<10x10xi64>
          %298 = memref.atomic_rmw addf %cst_3, %alloc_20[%c3] : (f32, memref<5xf32>) -> f32
          %299 = index.divs %70, %c3
          %extracted_52 = tensor.extract %5[%c3, %c3] : tensor<7x5xi64>
          %300 = affine.min affine_map<(d0, d1, d2) -> (d0 + 8, d0, d0 + 7)>(%125, %49, %c7)
          %301 = arith.minsi %false, %false : i1
          %302 = math.roundeven %14 : tensor<10x10x5xf16>
          %303 = arith.mulf %26, %cst_5 : f16
          scf.yield
        }
        default {
          %289 = index.divu %c10, %49
          %290 = arith.floordivsi %extracted, %c5403_i16 : i16
          %291 = arith.maxf %cst_1, %cst_3 : f32
          %292 = arith.maxsi %c2126613511_i32, %c55294092_i32 : i32
          %293 = index.divu %c6, %116
          %294 = arith.ori %extracted, %extracted : i16
          %295 = arith.remf %cst_2, %cst_2 : f32
          vector.print %117 : vector<16xi16>
          %296 = vector.insertelement %79, %91[%c3 : index] : vector<16xi32>
          %297 = vector.bitcast %261 : vector<1xi16> to vector<1xi16>
          %298 = math.expm1 %22 : tensor<f16>
          %299 = index.floordivs %c4, %c10
          memref.copy %alloc_6, %alloc_15 : memref<7x5xi32> to memref<7x5xi32>
          %300 = arith.remsi %in_51, %extracted : i16
          %301 = vector.multi_reduction <minui>, %42, %130 [] : vector<5xi16> to vector<5xi16>
          %302 = arith.maxui %c5403_i16, %c5403_i16 : i16
        }
        %270 = math.absi %4 : tensor<10x10xi32>
        %271 = affine.max affine_map<(d0) -> (-(d0 mod 32), (d0 floordiv 128) mod 8)>(%111)
        %272 = math.powf %2, %2 : tensor<10x10xf16>
        %273 = index.sizeof
        %274 = affine.if affine_set<(d0, d1) : (d1 + d1 - 1 - 32 >= 0)>(%c13, %c3) -> memref<10x10xi64> {
          %289 = vector.matrix_multiply %117, %261 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<16xi16>, vector<1xi16>) -> vector<16xi16>
          %290 = index.casts %false_27 : i1 to index
          %291 = arith.remf %26, %26 : f16
          %292 = arith.ceildivsi %c976352095_i64, %c1817008060_i64 : i64
          %alloc_52 = memref.alloc() : memref<5xi16>
          memref.copy %alloc, %alloc_52 : memref<5xi16> to memref<5xi16>
          %293 = index.sub %36, %c5
          bufferization.dealloc_tensor %12 : tensor<7x5xi16>
          %294 = arith.subi %c2126613511_i32, %c469509676_i32 : i32
          %alloc_53 = memref.alloc() : memref<10x10xi64>
          affine.yield %alloc_53 : memref<10x10xi64>
        } else {
          %289 = math.fma %cst_2, %cst_1, %cst_1 : f32
          %290 = index.casts %83 : index to i32
          %291 = arith.maxf %cst_5, %cst_5 : f16
          %expanded_52 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<10x10x5xi64> into tensor<10x10x5x1xi64>
          %292 = vector.insertelement %c469509676_i32, %108[%36 : index] : vector<1xi32>
          %293 = index.add %c4, %262
          %294 = vector.broadcast %cst : f32 to vector<5xf32>
          %295 = vector.fma %294, %294, %294 : vector<5xf32>
          %296 = arith.remf %cst_0, %cst_0 : f16
          %alloc_53 = memref.alloc() : memref<10x10xi64>
          affine.yield %alloc_53 : memref<10x10xi64>
        }
        %275 = tensor.empty() : tensor<10xi32>
        %276 = math.fpowi %21, %275 : tensor<10xf16>, tensor<10xi32>
        %277 = math.ctlz %6 : tensor<7x5xi64>
        %278 = math.expm1 %14 : tensor<10x10x5xf16>
        %279 = math.cos %26 : f16
        %280 = vector.broadcast %false_27 : i1 to vector<10x10xi1>
        %281 = vector.multi_reduction <mul>, %121, %280 [2] : vector<10x10x5xi1> to vector<10x10xi1>
        %282 = math.exp %15 : tensor<10x10x5xf32>
        %283 = math.log10 %14 : tensor<10x10x5xf16>
        %284 = affine.load %alloc_8[%c5, %c11, %c15] : memref<10x10x5xf16>
        %285 = index.casts %c27311_i16 : i16 to index
        %286 = arith.maxsi %79, %78 : i32
        %287 = memref.atomic_rmw muli %extracted, %alloc_18[%c2, %c9, %c4] : (i16, memref<10x10x5xi16>) -> i16
        %288 = math.roundeven %cst_3 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %156 = arith.addf %26, %26 : f16
    %alloc_36 = memref.alloc() : memref<7x5xi32>
    %157 = index.mul %c3, %c8
    %158 = arith.addf %cst_0, %cst_0 : f16
    %159 = affine.for %arg0 = 0 to 91 iter_args(%arg1 = %8) -> (tensor<10x10x5xi64>) {
      affine.yield %17 : tensor<10x10x5xi64>
    }
    %rank_37 = tensor.rank %14 : tensor<10x10x5xf16>
    memref.copy %alloc_8, %48 : memref<10x10x5xf16> to memref<10x10x5xf16>
    bufferization.dealloc_tensor %0 : tensor<7x5xi16>
    %160 = affine.load %alloc_8[%c9, %c12, %c14] : memref<10x10x5xf16>
    %161 = math.cos %26 : f16
    %162 = arith.remf %26, %cst_5 : f16
    %163 = arith.xori %false, %false_27 : i1
    %164 = arith.minf %cst_2, %cst_2 : f32
    %165 = arith.remsi %39, %c976352095_i64 : i64
    %166 = arith.muli %c976352095_i64, %c976352095_i64 : i64
    affine.store %cst_5, %alloc_21[%c13] : memref<10xf16>
    %167 = vector.multi_reduction <maxui>, %42, %42 [] : vector<5xi16> to vector<5xi16>
    %168 = math.ctpop %from_elements : tensor<10x10x5xi32>
    %169 = index.casts %extracted_34 : i64 to index
    %c1058110296_i64 = arith.constant 1058110296 : i64
    %170 = vector.broadcast %extracted_34 : i64 to vector<10x10x5xi64>
    %cst_38 = arith.constant 1.000000e+00 : f16
    %cst_39 = arith.constant 0.000000e+00 : f16
    %171 = vector.transfer_read %alloc_21[%rank_37], %cst_39 : memref<10xf16>, vector<f16>
    %172 = math.rsqrt %57 : tensor<10x10x5xf32>
    %173 = scf.while (%arg0 = %alloc) : (memref<5xi16>) -> memref<5xi16> {
      %258 = arith.divui %c469509676_i32, %79 : i32
      %259 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, d0 * 4 == 0, -d3 >= 0)>(%c1, %c1, %c1, %c13) -> memref<7x5xi1> {
        %266 = arith.shrsi %39, %39 : i64
        %267 = math.tanh %cst_3 : f32
        %268 = index.casts %137 : index to i32
        %269 = index.maxu %157, %70
        %270 = vector.broadcast %c2126613511_i32 : i32 to vector<10x10x5xi32>
        %271 = vector.gather %alloc_10[%c1] [%270], %121, %270 : memref<5xi32>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xi32> into vector<10x10x5xi32>
        %272 = bufferization.to_tensor %alloc_12 : memref<10x10x5xf32>
        %273 = index.sizeof
        %274 = index.divu %273, %c4
        %alloc_51 = memref.alloc() : memref<7x5xi1>
        affine.yield %alloc_51 : memref<7x5xi1>
      } else {
        %inserted_51 = tensor.insert %cst_2 into %15[%c6, %c2, %c1] : tensor<10x10x5xf32>
        %266 = arith.andi %false, %false_27 : i1
        %267 = index.ceildivs %c1, %114
        %268 = arith.shrsi %c2126613511_i32, %c2126613511_i32 : i32
        %269 = arith.xori %false, %false_27 : i1
        %270 = arith.maxsi %79, %79 : i32
        %271 = arith.divf %cst_2, %cst_1 : f32
        %272 = math.exp %57 : tensor<10x10x5xf32>
        %alloc_52 = memref.alloc() : memref<7x5xi1>
        affine.yield %alloc_52 : memref<7x5xi1>
      }
      %260 = arith.negf %cst_3 : f32
      %261 = index.sub %68, %68
      %262 = arith.addf %cst_2, %cst_2 : f32
      %263 = math.absf %23 : tensor<f16>
      %264 = arith.floordivsi %c976352095_i64, %extracted_34 : i64
      %265 = vector.insertelement %c1817008060_i64, %66[] : vector<i64>
      scf.condition(%false_27) %arg0 : memref<5xi16>
    } do {
    ^bb0(%arg0: memref<5xi16>):
      %258 = arith.addf %cst_38, %cst_0 : f16
      %generated_51 = tensor.generate %c2 {
      ^bb0(%arg1: index, %arg2: index):
        %274 = arith.remf %cst_38, %160 : f16
        %275 = arith.mulf %cst_2, %cst_3 : f32
        %276 = vector.broadcast %c5403_i16 : i16 to vector<7x5xi16>
        %277 = memref.atomic_rmw ori %extracted, %alloc_11[%c3, %c8, %c1] : (i16, memref<10x10x5xi16>) -> i16
        tensor.yield %cst_2 : f32
      } : tensor<?x10xf32>
      %259 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      %260 = vector.broadcast %false : i1 to vector<5xi1>
      %261 = vector.maskedload %alloc_12[%c0, %c0, %c0], %260, %259 : memref<10x10x5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %262 = arith.divui %extracted_34, %c1817008060_i64 : i64
      %263 = arith.maxf %cst_5, %cst_5 : f16
      %264 = affine.if affine_set<(d0, d1, d2) : (d0 * 192 >= 0)>(%c0, %c0, %c13) -> memref<7x5xf32> {
        %274 = memref.atomic_rmw maxf %160, %alloc_7[%c5, %c3] : (f16, memref<7x5xf16>) -> f16
        %275 = arith.addf %cst_5, %cst_38 : f16
        %276 = math.tanh %cst_2 : f32
        %277 = index.sub %114, %c5
        %278 = arith.addf %cst_4, %cst_3 : f32
        memref.store %cst_4, %alloc_12[%c3, %c9, %c0] : memref<10x10x5xf32>
        %extracted_52 = tensor.extract %23[] : tensor<f16>
        %279 = math.exp %26 : f16
        %alloc_53 = memref.alloc() : memref<7x5xf32>
        affine.yield %alloc_53 : memref<7x5xf32>
      } else {
        %274 = vector.broadcast %70 : index to vector<10xindex>
        %275 = vector.broadcast %false : i1 to vector<10xi1>
        %276 = vector.broadcast %c27311_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_19[%c1, %c7, %c0] [%274], %275, %276 : memref<10x10x5xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %277 = vector.reduction <or>, %92 : vector<16xi1> into i1
        %extracted_52 = tensor.extract %12[%c3, %c1] : tensor<7x5xi16>
        %278 = affine.load %arg0[%c3] : memref<5xi16>
        %279 = vector.broadcast %false_27 : i1 to vector<7x5xi1>
        %280 = index.divu %36, %143
        %281 = tensor.empty() : tensor<5x16xi16>
        %282 = tensor.empty() : tensor<7x16xi16>
        %283 = linalg.matmul ins(%7, %281 : tensor<7x5xi16>, tensor<5x16xi16>) outs(%282 : tensor<7x16xi16>) -> tensor<7x16xi16>
        %284 = vector.reduction <maxsi>, %260 : vector<5xi1> into i1
        %alloc_53 = memref.alloc() : memref<7x5xf32>
        affine.yield %alloc_53 : memref<7x5xf32>
      }
      %265 = scf.index_switch %157 -> memref<10x10x5xf32> 
      case 1 {
        %274 = vector.extract %117[8] : vector<16xi16>
        %275 = math.log10 %26 : f16
        %276 = math.log1p %15 : tensor<10x10x5xf32>
        %277 = index.sizeof
        %278 = index.ceildivu %rank_37, %71
        %279 = bufferization.to_tensor %alloc_8 : memref<10x10x5xf16>
        %280 = arith.remui %c1159337967_i64, %c1159337967_i64 : i64
        %281 = arith.floordivsi %false, %false : i1
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * -64, d0, 0)>(%107, %c6, %70, %114)
        %283 = arith.andi %c55294092_i32, %78 : i32
        bufferization.dealloc_tensor %279 : tensor<10x10x5xf16>
        %false_52 = index.bool.constant false
        %284 = tensor.empty() : tensor<5x16xi64>
        %285 = tensor.empty() : tensor<7x16xi64>
        %286 = linalg.matmul ins(%6, %284 : tensor<7x5xi64>, tensor<5x16xi64>) outs(%285 : tensor<7x16xi64>) -> tensor<7x16xi64>
        %287 = arith.floordivsi %c55294092_i32, %c469509676_i32 : i32
        %288 = bufferization.to_memref %5 : memref<7x5xi64>
        %289 = bufferization.to_memref %generated_51 : memref<?x10xf32>
        scf.yield %alloc_12 : memref<10x10x5xf32>
      }
      case 2 {
        %274 = vector.broadcast %cst_38 : f16 to vector<5xf16>
        %275 = vector.broadcast %c55294092_i32 : i32 to vector<5xi32>
        %276 = vector.gather %48[%94, %119, %rank_37] [%275], %260, %274 : memref<10x10x5xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %277 = arith.floordivsi %extracted, %c27311_i16 : i16
        %278 = index.divu %169, %116
        %279 = vector.extract %121[2] : vector<10x10x5xi1>
        memref.assume_alignment %153, 2 : memref<10x10x5xi1>
        %280 = affine.load %alloc_18[%c15, %c7, %c15] : memref<10x10x5xi16>
        %281 = arith.negf %cst_4 : f32
        %282 = arith.remf %cst_38, %160 : f16
        %expanded_52 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x5xi64> into tensor<7x5x1xi64>
        %283 = vector.bitcast %275 : vector<5xi32> to vector<5xi32>
        bufferization.dealloc_tensor %13 : tensor<5xi16>
        %284 = memref.atomic_rmw mulf %cst_2, %alloc_17[%c6, %c7] : (f32, memref<10x10xf32>) -> f32
        %285 = arith.andi %false, %false : i1
        %286 = math.roundeven %cst_3 : f32
        memref.copy %arg0, %alloc : memref<5xi16> to memref<5xi16>
        %287 = arith.shrsi %c27311_i16, %c27311_i16 : i16
        scf.yield %alloc_12 : memref<10x10x5xf32>
      }
      case 3 {
        %274 = arith.xori %extracted_34, %c1817008060_i64 : i64
        %275 = index.floordivs %95, %43
        %276 = arith.andi %extracted, %c5403_i16 : i16
        %277 = vector.splat %49 : vector<10x10x5xindex>
        %278 = index.divs %c8, %rank
        %279 = index.mul %49, %111
        %280 = arith.divsi %c1159337967_i64, %c1517640645_i64 : i64
        %281 = arith.shrui %78, %78 : i32
        %282 = vector.multi_reduction <minui>, %91, %c55294092_i32 [0] : vector<16xi32> to i32
        %283 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        %284 = vector.maskedload %48[%c1, %c1, %c2], %92, %283 : memref<10x10x5xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %285 = vector.bitcast %91 : vector<16xi32> to vector<16xi32>
        memref.copy %alloc_8, %48 : memref<10x10x5xf16> to memref<10x10x5xf16>
        %286 = arith.remui %79, %c55294092_i32 : i32
        %287 = math.round %14 : tensor<10x10x5xf16>
        %cst_52 = arith.constant 1.000000e+00 : f32
        %288 = vector.transfer_read %alloc_17[%71, %c1], %cst_52 : memref<10x10xf32>, vector<f32>
        %289 = memref.realloc %alloc_21 : memref<10xf16> to memref<10xf16>
        scf.yield %alloc_12 : memref<10x10x5xf32>
      }
      default {
        %274 = arith.remf %cst, %cst_3 : f32
        %inserted_52 = tensor.insert %c5403_i16 into %7[%c1, %c0] : tensor<7x5xi16>
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d2)>(%97, %c1, %114, %143)
        %276 = math.rsqrt %57 : tensor<10x10x5xf32>
        %277 = arith.remui %c1159337967_i64, %c1159337967_i64 : i64
        %true_53 = index.bool.constant true
        %278 = math.ipowi %7, %12 : tensor<7x5xi16>
        %279 = math.atan %cst_3 : f32
        %280 = math.fma %2, %2, %2 : tensor<10x10xf16>
        %281 = math.round %22 : tensor<f16>
        %282 = vector.broadcast %true_53 : i1 to vector<10x5xi1>
        %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %121, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x5xi1>, vector<10x5xi1>
        %283 = bufferization.clone %alloc_20 : memref<5xf32> to memref<5xf32>
        %284 = vector.broadcast %c4 : index to vector<7xindex>
        %285 = vector.broadcast %false_27 : i1 to vector<7xi1>
        vector.scatter %153[%c7, %c2, %c3] [%284], %285, %285 : memref<10x10x5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %286 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %287 = vector.fma %286, %259, %259 : vector<5xf32>
        %288 = arith.divui %39, %c976352095_i64 : i64
        bufferization.dealloc_tensor %from_elements : tensor<10x10x5xi32>
        scf.yield %alloc_12 : memref<10x10x5xf32>
      }
      %266 = arith.minf %cst_5, %cst_0 : f16
      %267 = arith.maxsi %c2126613511_i32, %c55294092_i32 : i32
      %268 = bufferization.to_tensor %alloc_7 : memref<7x5xf16>
      %269 = arith.addi %c27311_i16, %c5403_i16 : i16
      %true = arith.constant true
      %270 = arith.maxsi %false, %false_27 : i1
      %271 = math.roundeven %22 : tensor<f16>
      %272 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
      %273 = math.roundeven %14 : tensor<10x10x5xf16>
      scf.yield %arg0 : memref<5xi16>
    }
    %alloc_40 = memref.alloc() : memref<10xf16>
    memref.copy %alloc_21, %alloc_40 : memref<10xf16> to memref<10xf16>
    %174 = vector.shuffle %42, %118 [0, 2, 4, 5, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20] : vector<5xi16>, vector<16xi16>
    %175 = arith.negf %cst_0 : f16
    %176 = vector.transpose %20, [0] : vector<5xi16> to vector<5xi16>
    %177 = arith.remf %cst_4, %cst_4 : f32
    %178 = bufferization.to_tensor %alloc_20 : memref<5xf32>
    %179 = math.exp %15 : tensor<10x10x5xf32>
    %180 = arith.remui %39, %c1159337967_i64 : i64
    %181 = vector.insertelement %c27311_i16, %20[%95 : index] : vector<5xi16>
    %inserted_41 = tensor.insert %false_27 into %transposed[%c0, %c8, %c1] : tensor<5x10x10xi1>
    %182 = math.log2 %cst_0 : f16
    %183 = math.expm1 %178 : tensor<5xf32>
    %184 = affine.if affine_set<(d0, d1) : (d1 mod 16 == 0, -(d1 mod 16) - 16 == 0, -16 == 0)>(%c0, %c15) -> i32 {
      %258 = vector.extract %42[4] : vector<5xi16>
      %259 = bufferization.to_memref %transposed : memref<5x10x10xi1>
      %260 = arith.remsi %c469509676_i32, %79 : i32
      %261 = vector.reduction <and>, %108 : vector<1xi32> into i32
      %cst_51 = arith.constant 0x4C5167DD : f32
      %262 = math.fpowi %57, %from_elements : tensor<10x10x5xf32>, tensor<10x10x5xi32>
      %263 = arith.divsi %extracted_34, %c1159337967_i64 : i64
      %264 = arith.andi %c469509676_i32, %79 : i32
      affine.yield %c55294092_i32 : i32
    } else {
      %258 = scf.while (%arg0 = %c976352095_i64) : (i64) -> i64 {
        %268 = affine.min affine_map<(d0, d1, d2) -> ((d1 + d0 - d0 ceildiv 64) * 4, d1 - 2)>(%c12, %97, %c14)
        %269 = vector.insert %c469509676_i32, %108 [0] : i32 into vector<1xi32>
        %270 = vector.broadcast %cst : f32 to vector<10x10x5xf32>
        %271 = vector.fma %270, %270, %270 : vector<10x10x5xf32>
        %alloc_51 = memref.alloc() : memref<5xi1>
        %272 = vector.broadcast %false : i1 to vector<10x10xi1>
        %273 = vector.broadcast %78 : i32 to vector<10x10xi32>
        %274 = vector.gather %alloc_51[%c3] [%273], %272, %272 : memref<5xi1>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi1> into vector<10x10xi1>
        %275 = math.expm1 %15 : tensor<10x10x5xf32>
        memref.store %c2126613511_i32, %alloc_6[%c2, %c4] : memref<7x5xi32>
        %276 = index.maxs %68, %70
        %277 = index.casts %rank : index to i32
        scf.condition(%false) %c1817008060_i64 : i64
      } do {
      ^bb0(%arg0: i64):
        %268 = vector.bitcast %91 : vector<16xi32> to vector<16xi32>
        %269 = arith.shrui %c469509676_i32, %78 : i32
        %270 = vector.matrix_multiply %108, %91 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<1xi32>, vector<16xi32>) -> vector<16xi32>
        %alloc_51 = memref.alloc() : memref<10x10xf16>
        %271 = vector.broadcast %cst_38 : f16 to vector<7x5xf16>
        %272 = vector.broadcast %false : i1 to vector<7x5xi1>
        %273 = vector.broadcast %78 : i32 to vector<7x5xi32>
        %274 = vector.gather %alloc_51[%70, %137] [%273], %272, %271 : memref<10x10xf16>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xf16> into vector<7x5xf16>
        %275 = math.ctlz %17 : tensor<10x10x5xi64>
        %276 = math.tanh %14 : tensor<10x10x5xf16>
        memref.assume_alignment %alloc_13, 4 : memref<5xi64>
        %277 = arith.shrui %c1517640645_i64, %c1817008060_i64 : i64
        %extracted_52 = tensor.extract %12[%c2, %c2] : tensor<7x5xi16>
        %278 = math.exp %23 : tensor<f16>
        memref.assume_alignment %alloc_8, 16 : memref<10x10x5xf16>
        %279 = memref.atomic_rmw andi %79, %alloc_16[%c6, %c7, %c3] : (i32, memref<10x10x5xi32>) -> i32
        %280 = math.exp2 %57 : tensor<10x10x5xf32>
        %281 = arith.divsi %c469509676_i32, %c469509676_i32 : i32
        %alloc_53 = memref.alloc() : memref<10x10xf16>
        memref.copy %alloc_51, %alloc_53 : memref<10x10xf16> to memref<10x10xf16>
        %282 = vector.broadcast %c976352095_i64 : i64 to vector<5xi64>
        %283 = vector.insert %282, %170 [3, 3] : vector<5xi64> into vector<10x10x5xi64>
        scf.yield %extracted_34 : i64
      }
      %259 = vector.extract_strided_slice %42 {offsets = [0], sizes = [3], strides = [1]} : vector<5xi16> to vector<3xi16>
      %260 = arith.maxui %c5403_i16, %extracted : i16
      %261 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
      %262 = vector.reduction <mul>, %93 : vector<16xi32> into i32
      %263 = arith.floordivsi %extracted_34, %c1517640645_i64 : i64
      %264 = index.casts %c1817008060_i64 : i64 to index
      %265 = vector.broadcast %38 : index to vector<7xindex>
      %266 = vector.broadcast %false : i1 to vector<7xi1>
      %267 = vector.broadcast %c5403_i16 : i16 to vector<7xi16>
      vector.scatter %alloc_19[%c9, %c0, %c4] [%265], %266, %267 : memref<10x10x5xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      affine.yield %c2126613511_i32 : i32
    }
    %185 = index.ceildivs %97, %119
    memref.store %c1517640645_i64, %alloc_13[%c4] : memref<5xi64>
    %186 = vector.insertelement %c5403_i16, %74[] : vector<i16>
    %187 = math.absf %cst_4 : f32
    %splat = tensor.splat %cst_1 : tensor<10x10xf32>
    %188 = math.exp %cst_1 : f32
    %189 = affine.if affine_set<(d0, d1) : ((d1 ceildiv 4) * 64 == 0, (d1 * -2 + 1) floordiv 128 == 0, d1 == 0, d1 * -2 + 1 == 0)>(%c7, %c7) -> memref<10x10x5xf32> {
      %258 = index.sub %81, %114
      %259 = math.powf %15, %15 : tensor<10x10x5xf32>
      %260 = index.sub %107, %c0
      scf.execute_region {
        %264 = arith.remf %26, %cst_5 : f16
        %265 = index.casts %38 : index to i32
        %266 = arith.negf %cst : f32
        %267 = arith.remsi %c1817008060_i64, %c1817008060_i64 : i64
        %268 = index.divs %rank_37, %c3
        %269 = memref.load %alloc_17[%c7, %c9] : memref<10x10xf32>
        %270 = arith.addi %39, %extracted_34 : i64
        %271 = arith.maxf %26, %cst_38 : f16
        %272 = arith.maxf %cst_2, %cst_3 : f32
        %273 = index.sizeof
        %274 = index.sizeof
        %275 = arith.xori %c1517640645_i64, %c976352095_i64 : i64
        %276 = math.exp %14 : tensor<10x10x5xf16>
        %277 = index.divu %c0, %c13
        %278 = arith.floordivsi %c5403_i16, %extracted : i16
        %279 = math.expm1 %14 : tensor<10x10x5xf16>
        scf.yield
      }
      %261 = scf.execute_region -> index {
        %extracted_52 = tensor.extract %17[%c4, %c6, %c4] : tensor<10x10x5xi64>
        %264 = vector.reduction <maxsi>, %20 : vector<5xi16> into i16
        %265 = vector.create_mask %rank_37, %c7, %157 : vector<10x10x5xi1>
        %266 = arith.ceildivsi %c469509676_i32, %c469509676_i32 : i32
        %267 = math.log1p %23 : tensor<f16>
        %268 = vector.insert %c27311_i16, %130 [1] : i16 into vector<5xi16>
        %269 = index.ceildivu %68, %c4
        %270 = math.absi %c2126613511_i32 : i32
        %271 = index.sub %c14, %49
        %272 = arith.xori %false_27, %false : i1
        %273 = vector.broadcast %cst_0 : f16 to vector<7x5xf16>
        %274 = index.floordivs %c3, %114
        bufferization.dealloc_tensor %3 : tensor<10x10x5xi1>
        %275 = arith.remsi %extracted_34, %c1159337967_i64 : i64
        %276 = vector.broadcast %160 : f16 to vector<5xf16>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %273, %276 {inclusive = true, reduction_dim = 0 : i64} : vector<7x5xf16>, vector<5xf16>
        %c1451777915_i32 = arith.constant 1451777915 : i32
        scf.yield %c9 : index
      }
      %262 = index.ceildivu %c4, %107
      %263 = arith.maxsi %78, %c2126613511_i32 : i32
      %inserted_51 = tensor.insert %cst_0 into %2[%c3, %c7] : tensor<10x10xf16>
      affine.yield %alloc_12 : memref<10x10x5xf32>
    } else {
      %258 = arith.addf %cst_2, %cst : f32
      %false_51 = index.bool.constant false
      %259 = index.add %107, %c9
      %260 = vector.shuffle %20, %20 [0, 1, 3, 4, 7, 8] : vector<5xi16>, vector<5xi16>
      %261 = math.fpowi %cst_38, %c55294092_i32 : f16, i32
      %alloc_52 = memref.alloc() : memref<10x10x5xi32>
      %262 = vector.insertelement %extracted, %130[%36 : index] : vector<5xi16>
      %rank_53 = tensor.rank %transposed : tensor<5x10x10xi1>
      affine.yield %alloc_12 : memref<10x10x5xf32>
    }
    %190 = vector.broadcast %26 : f16 to vector<f16>
    %191 = vector.transfer_write %190, %14[%81, %c2, %c12] : vector<f16>, tensor<10x10x5xf16>
    %192 = math.log1p %57 : tensor<10x10x5xf32>
    %193 = arith.floordivsi %c5403_i16, %c5403_i16 : i16
    %194 = index.sizeof
    %cst_42 = arith.constant 0x4B1340D1 : f32
    %195 = affine.apply affine_map<(d0) -> ((d0 + 32) * 32)>(%107)
    %196 = vector.splat %c5403_i16 : vector<10x10x5xi16>
    %197 = math.ipowi %c1159337967_i64, %c1817008060_i64 : i64
    %198 = arith.addf %cst_3, %cst_1 : f32
    %alloc_43 = memref.alloc() : memref<5x10xf16>
    %199 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %alloc_43 : tensor<10x10xf16>, memref<5x10xf16>) outs(%14 : tensor<10x10x5xf16>) {
    ^bb0(%in: f16, %in_51: f16, %out: f16):
      %258 = bufferization.to_memref %generated : memref<?x?xi16>
      %259 = vector.load %alloc_20[%c2] : memref<5xf32>, vector<7x5xf32>
      %260 = arith.maxsi %c1517640645_i64, %39 : i64
      %261 = index.add %95, %38
      %262 = arith.remui %c1159337967_i64, %39 : i64
      %263 = math.expm1 %178 : tensor<5xf32>
      %264 = index.mul %70, %107
      %265 = arith.maxsi %78, %c469509676_i32 : i32
      %266 = index.mul %95, %137
      %267 = arith.andi %c55294092_i32, %78 : i32
      %268 = vector.shuffle %91, %91 [1, 6, 11, 13, 14, 15, 17, 18, 23, 26, 27] : vector<16xi32>, vector<16xi32>
      %269 = math.ipowi %c5403_i16, %c5403_i16 : i16
      %270 = arith.maxsi %c1817008060_i64, %c1159337967_i64 : i64
      %271 = index.ceildivu %194, %185
      %272 = arith.maxf %cst_38, %cst_0 : f16
      %273 = scf.index_switch %137 -> vector<7x5xi16> 
      case 1 {
        %290 = vector.broadcast %c469509676_i32 : i32 to vector<16x16xi32>
        %291 = vector.outerproduct %91, %93, %290 {kind = #vector.kind<xor>} : vector<16xi32>, vector<16xi32>
        %292 = math.atan2 %23, %22 : tensor<f16>
        bufferization.dealloc_tensor %14 : tensor<10x10x5xf16>
        %293 = math.fma %splat, %splat, %splat : tensor<10x10xf32>
        %294 = math.cttz %c1517640645_i64 : i64
        %extracted_54 = tensor.extract %0[%c2, %c2] : tensor<7x5xi16>
        %295 = memref.realloc %alloc_21 : memref<10xf16> to memref<7xf16>
        %296 = arith.maxui %78, %c55294092_i32 : i32
        %297 = math.rsqrt %2 : tensor<10x10xf16>
        %298 = vector.reduction <add>, %20 : vector<5xi16> into i16
        %299 = math.ipowi %from_elements, %from_elements : tensor<10x10x5xi32>
        %300 = index.sizeof
        %301 = vector.broadcast %extracted_54 : i16 to vector<5x5xi16>
        %302 = vector.outerproduct %130, %130, %301 {kind = #vector.kind<or>} : vector<5xi16>, vector<5xi16>
        %303 = index.mul %c13, %185
        %304 = arith.remf %in_51, %cst_38 : f16
        %305 = math.atan %178 : tensor<5xf32>
        %306 = vector.broadcast %extracted : i16 to vector<7x5xi16>
        scf.yield %306 : vector<7x5xi16>
      }
      case 2 {
        %290 = vector.shuffle %91, %91 [1, 2, 4, 9, 10, 11, 13, 15, 18, 19, 20, 21, 22, 25, 27, 28, 29, 30] : vector<16xi32>, vector<16xi32>
        %291 = math.tanh %14 : tensor<10x10x5xf16>
        %292 = arith.floordivsi %c469509676_i32, %c469509676_i32 : i32
        %293 = memref.atomic_rmw maxu %c27311_i16, %alloc_19[%c3, %c8, %c4] : (i16, memref<10x10x5xi16>) -> i16
        %294 = arith.addi %78, %c469509676_i32 : i32
        %alloc_54 = memref.alloc() : memref<5xf32>
        memref.copy %alloc_20, %alloc_54 : memref<5xf32> to memref<5xf32>
        %295 = vector.broadcast %c5 : index to vector<5xindex>
        %296 = vector.broadcast %false : i1 to vector<5xi1>
        vector.scatter %alloc[%c0] [%295], %296, %130 : memref<5xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        affine.store %cst_38, %alloc_8[%c6, %c0, %c3] : memref<10x10x5xf16>
        %297 = math.ctlz %4 : tensor<10x10xi32>
        %298 = math.tanh %178 : tensor<5xf32>
        %expanded_55 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<10x10x5xi1> into tensor<10x10x5x1xi1>
        %299 = math.exp %cst_2 : f32
        %300 = arith.negf %cst_2 : f32
        %301 = math.tanh %2 : tensor<10x10xf16>
        %302 = math.exp2 %23 : tensor<f16>
        %303 = math.atan2 %cst_1, %cst_3 : f32
        %304 = vector.broadcast %extracted : i16 to vector<7x5xi16>
        scf.yield %304 : vector<7x5xi16>
      }
      default {
        %290 = math.ipowi %0, %7 : tensor<7x5xi16>
        %291 = math.powf %cst_0, %cst_38 : f16
        %292 = arith.andi %c976352095_i64, %c1517640645_i64 : i64
        %293 = memref.load %alloc_18[%c5, %c2, %c0] : memref<10x10x5xi16>
        %294 = memref.realloc %alloc_20 : memref<5xf32> to memref<16xf32>
        %295 = arith.remf %cst_2, %cst : f32
        memref.store %c469509676_i32, %alloc_6[%c0, %c0] : memref<7x5xi32>
        %extracted_54 = tensor.extract %14[%c6, %c4, %c1] : tensor<10x10x5xf16>
        %296 = arith.divsi %false, %false : i1
        %297 = arith.maxui %false, %false : i1
        %alloc_55 = memref.alloc() : memref<10x10x5xi64>
        %298 = index.divu %c14, %95
        %299 = vector.insert %c2126613511_i32, %91 [8] : i32 into vector<16xi32>
        %inserted_56 = tensor.insert %c27311_i16 into %155[%c1, %c1] : tensor<7x5xi16>
        %300 = arith.andi %extracted, %c5403_i16 : i16
        %301 = math.fma %extracted_54, %cst_5, %out : f16
        %302 = vector.broadcast %c5403_i16 : i16 to vector<7x5xi16>
        scf.yield %302 : vector<7x5xi16>
      }
      %274 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
      %275 = vector.broadcast %false : i1 to vector<10x10xi1>
      %276 = vector.broadcast %c469509676_i32 : i32 to vector<10x10xi32>
      %277 = vector.gather %splat[%95, %36] [%276], %275, %274 : tensor<10x10xf32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf32> into vector<10x10xf32>
      scf.index_switch %c10 
      case 1 {
        %true = index.bool.constant true
        %290 = vector.load %alloc_16[%c9, %c7, %c4] : memref<10x10x5xi32>, vector<10x10xi32>
        %291 = affine.min affine_map<(d0) -> (-d0)>(%114)
        %292 = arith.divui %78, %78 : i32
        %293 = arith.maxf %cst_5, %cst_0 : f16
        %expanded_54 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<7x5x1xi1> into tensor<7x5x1x1xi1>
        %expanded_55 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<10x10xf16> into tensor<10x10x1xf16>
        %294 = vector.splat %70 : vector<5xindex>
        %295 = index.castu %97 : index to i32
        %296 = arith.maxsi %c5403_i16, %c27311_i16 : i16
        %297 = index.ceildivs %c4, %70
        %298 = arith.addf %cst_0, %cst_5 : f16
        %299 = math.log10 %splat : tensor<10x10xf32>
        %300 = arith.ori %c55294092_i32, %c2126613511_i32 : i32
        %301 = vector.gather %alloc_6[%c15, %83] [%276], %275, %276 : memref<7x5xi32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi32> into vector<10x10xi32>
        memref.assume_alignment %alloc_14, 8 : memref<10x10xi1>
        scf.yield
      }
      case 2 {
        %290 = vector.broadcast %cst_0 : f16 to vector<5xf16>
        %291 = vector.broadcast %false : i1 to vector<5xi1>
        %292 = vector.broadcast %c55294092_i32 : i32 to vector<5xi32>
        %293 = vector.gather %2[%rank, %c3] [%292], %291, %290 : tensor<10x10xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %294 = arith.remf %cst_38, %cst_38 : f16
        %295 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%143, %111, %49, %185)
        %296 = arith.divsi %c5403_i16, %c5403_i16 : i16
        %297 = arith.ceildivsi %false_27, %false_27 : i1
        %298 = arith.floordivsi %c976352095_i64, %39 : i64
        %299 = index.sub %97, %c12
        %300 = index.divu %299, %rank_37
        %301 = math.tanh %in : f16
        %302 = arith.divsi %c469509676_i32, %79 : i32
        %303 = arith.shrui %c1817008060_i64, %c1817008060_i64 : i64
        %cast = tensor.cast %7 : tensor<7x5xi16> to tensor<?x?xi16>
        %304 = vector.broadcast %78 : i32 to vector<10x10x5xi32>
        %305 = vector.gather %4[%157, %157] [%304], %121, %304 : tensor<10x10xi32>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xi32> into vector<10x10x5xi32>
        %extracted_54 = tensor.extract %13[%c4] : tensor<5xi16>
        %306 = index.ceildivs %295, %70
        vector.print %106 : vector<7x5xi64>
        scf.yield
      }
      case 3 {
        %false_54 = arith.constant false
        %290 = vector.shuffle %42, %20 [2, 3] : vector<5xi16>, vector<5xi16>
        %291 = index.divu %116, %c3
        %292 = memref.atomic_rmw addi %extracted, %alloc_19[%c5, %c0, %c2] : (i16, memref<10x10x5xi16>) -> i16
        %cst_55 = arith.constant 1.15211878E+9 : f32
        %293 = index.sub %c3, %111
        %294 = arith.andi %extracted_34, %c976352095_i64 : i64
        %295 = math.expm1 %cst_5 : f16
        %296 = affine.min affine_map<(d0) -> ((d0 mod 32) ceildiv 64, d0 ceildiv 32)>(%116)
        %expanded_56 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x5xi64> into tensor<7x5x1xi64>
        %297 = arith.addf %cst_1, %cst_1 : f32
        %298 = vector.broadcast %79 : i32 to vector<7xi32>
        %299 = vector.transfer_write %298, %4[%137, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, tensor<10x10xi32>
        %300 = math.cos %14 : tensor<10x10x5xf16>
        %301 = arith.shli %78, %c2126613511_i32 : i32
        %302 = arith.cmpf ugt, %26, %cst_5 : f16
        %303 = arith.addi %79, %c469509676_i32 : i32
        scf.yield
      }
      default {
        %290 = index.sizeof
        %291 = index.add %114, %c10
        %292 = arith.andi %39, %c1159337967_i64 : i64
        %293 = math.log1p %160 : f16
        %294 = arith.maxsi %extracted_34, %c976352095_i64 : i64
        %295 = vector.insertelement %c55294092_i32, %108[%194 : index] : vector<1xi32>
        %296 = arith.andi %false, %false_27 : i1
        %297 = vector.broadcast %extracted : i16 to vector<10x10xi16>
        %298 = vector.gather %10[%95] [%276], %275, %297 : tensor<5xi16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi16> into vector<10x10xi16>
        %299 = math.expm1 %cst_2 : f32
        %300 = arith.negf %cst_0 : f16
        %301 = index.divu %c0, %c3
        %302 = math.atan %23 : tensor<f16>
        %303 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %304 = vector.broadcast %false : i1 to vector<5xi1>
        %305 = vector.maskedload %alloc_20[%c0], %304, %303 : memref<5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %306 = math.powf %cst_4, %cst_2 : f32
        %307 = vector.multi_reduction <minsi>, %304, %304 [] : vector<5xi1> to vector<5xi1>
        %308 = vector.reduction <minui>, %92 : vector<16xi1> into i1
      }
      %278 = arith.ori %78, %78 : i32
      %279 = math.log2 %178 : tensor<5xf32>
      affine.for %arg0 = 0 to 74 {
      }
      %280 = math.round %2 : tensor<10x10xf16>
      %281 = index.divs %38, %119
      %282 = arith.maxsi %c2126613511_i32, %79 : i32
      %283 = bufferization.to_tensor %48 : memref<10x10x5xf16>
      %284 = arith.shli %extracted, %extracted : i16
      %285 = arith.maxf %cst, %cst_2 : f32
      %expanded_52 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<10x10xf16> into tensor<10x10x1xf16>
      %286 = arith.maxsi %79, %c55294092_i32 : i32
      %287 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 + 8) mod 128 == 0, d1 - d2 == 0, d1 - (d1 - 56) + 8 == 0)>(%c4, %c12, %c8, %c4) -> i16 {
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %130, %42, %extracted : vector<5xi16>, vector<5xi16> into i16
        %291 = bufferization.to_memref %generated : memref<?x?xi16>
        %292 = math.expm1 %cst_1 : f32
        %293 = arith.divsi %c27311_i16, %c27311_i16 : i16
        %294 = math.floor %expanded_52 : tensor<10x10x1xf16>
        %295 = math.tanh %283 : tensor<10x10x5xf16>
        %296 = arith.xori %c1517640645_i64, %c1159337967_i64 : i64
        %297 = arith.maxsi %39, %c1817008060_i64 : i64
        affine.yield %extracted : i16
      } else {
        %290 = math.fpowi %57, %from_elements : tensor<10x10x5xf32>, tensor<10x10x5xi32>
        %291 = index.divs %68, %107
        %292 = index.sub %c11, %281
        %293 = vector.broadcast %c6 : index to vector<5xindex>
        %294 = vector.broadcast %false : i1 to vector<5xi1>
        %295 = vector.broadcast %c976352095_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_13[%c2] [%293], %294, %295 : memref<5xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %296 = arith.maxsi %c1517640645_i64, %c1817008060_i64 : i64
        %297 = index.add %264, %68
        %298 = arith.ceildivsi %extracted_34, %39 : i64
        %299 = index.ceildivs %271, %36
        affine.yield %c27311_i16 : i16
      }
      %inserted_53 = tensor.insert %false into %3[%c8, %c5, %c0] : tensor<10x10x5xi1>
      %288 = tensor.empty() : tensor<i32>
      %289 = math.fpowi %22, %288 : tensor<f16>, tensor<i32>
      linalg.yield %out : f16
    } -> tensor<10x10x5xf16>
    %200 = vector.broadcast %c27311_i16 : i16 to vector<7xi16>
    %201 = vector.broadcast %false : i1 to vector<7xi1>
    %202 = vector.maskedload %alloc_19[%c2, %c5, %c4], %201, %200 : memref<10x10x5xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %203 = math.log1p %14 : tensor<10x10x5xf16>
    %204 = arith.muli %false_27, %false : i1
    %205 = arith.remf %26, %26 : f16
    %206 = vector.broadcast %79 : i32 to vector<10x10x5xi32>
    %207 = vector.gather %6[%116, %114] [%206], %121, %170 : tensor<7x5xi64>, vector<10x10x5xi32>, vector<10x10x5xi1>, vector<10x10x5xi64> into vector<10x10x5xi64>
    bufferization.dealloc_tensor %4 : tensor<10x10xi32>
    %208 = index.divs %c14, %c11
    %209 = arith.mulf %cst_3, %cst_3 : f32
    %210 = bufferization.to_memref %8 : memref<10x10x5xi64>
    %211 = arith.addf %cst_3, %cst : f32
    %212 = arith.ori %c27311_i16, %c27311_i16 : i16
    %213 = affine.if affine_set<(d0, d1) : ((d0 ceildiv 128) mod 32 >= 0)>(%c9, %c8) -> f32 {
      %alloc_51 = memref.alloc() : memref<5xf32>
      memref.copy %alloc_20, %alloc_51 : memref<5xf32> to memref<5xf32>
      %258 = arith.remsi %extracted_34, %c976352095_i64 : i64
      %259 = vector.insert %c469509676_i32, %93 [11] : i32 into vector<16xi32>
      %260 = index.maxs %43, %85
      %261 = arith.maxf %cst, %cst_1 : f32
      %262 = bufferization.to_memref %10 : memref<5xi16>
      %263 = math.expm1 %cst_0 : f16
      %264 = index.maxu %rank, %125
      affine.yield %cst_4 : f32
    } else {
      %258 = arith.remf %26, %26 : f16
      %259 = index.floordivs %143, %c3
      %260 = arith.divsi %extracted, %extracted : i16
      %261 = affine.if affine_set<(d0, d1) : ((d0 - d1) ceildiv 64 == 0)>(%c8, %c4) -> memref<10x10x5xf32> {
        %265 = math.tanh %21 : tensor<10xf16>
        %266 = bufferization.to_tensor %alloc_9 : memref<10x10x5xi32>
        %267 = bufferization.to_tensor %alloc_13 : memref<5xi64>
        %268 = vector.insert %78, %93 [12] : i32 into vector<16xi32>
        %269 = memref.atomic_rmw addf %26, %alloc_21[%c9] : (f16, memref<10xf16>) -> f16
        %270 = arith.ori %c1817008060_i64, %39 : i64
        %271 = index.sizeof
        %272 = arith.remui %extracted_34, %39 : i64
        affine.yield %alloc_12 : memref<10x10x5xf32>
      } else {
        %265 = arith.addf %160, %cst_0 : f16
        %266 = math.fpowi %2, %4 : tensor<10x10xf16>, tensor<10x10xi32>
        %splat_51 = tensor.splat %c1817008060_i64 : tensor<7x5xi64>
        %extracted_52 = tensor.extract %8[%c5, %c6, %c4] : tensor<10x10x5xi64>
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 * 2) ceildiv 32, (d1 * 2) ceildiv 16, d2 * 8 - (d1 * 2) ceildiv 32)>(%c6, %107, %194, %c9)
        %268 = arith.minsi %c5403_i16, %c5403_i16 : i16
        %269 = math.ceil %15 : tensor<10x10x5xf32>
        %270 = math.expm1 %cst_0 : f16
        affine.yield %alloc_12 : memref<10x10x5xf32>
      }
      %262 = math.powf %cst_1, %cst : f32
      memref.assume_alignment %alloc_13, 16 : memref<5xi64>
      %263 = index.mul %c15, %116
      %264 = bufferization.to_tensor %alloc : memref<5xi16>
      affine.yield %cst_2 : f32
    }
    %214 = scf.while (%arg0 = %39) : (i64) -> i64 {
      %258 = vector.matrix_multiply %117, %117 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi16>, vector<16xi16>) -> vector<1xi16>
      %259 = arith.cmpi sgt, %c469509676_i32, %c2126613511_i32 : i32
      %260 = math.ctpop %39 : i64
      %261 = scf.index_switch %125 -> index 
      case 1 {
        memref.assume_alignment %alloc_16, 16 : memref<10x10x5xi32>
        %266 = arith.ori %c1517640645_i64, %c976352095_i64 : i64
        %267 = tensor.empty() : tensor<10x10xi32>
        %268 = linalg.matmul ins(%4, %4 : tensor<10x10xi32>, tensor<10x10xi32>) outs(%267 : tensor<10x10xi32>) -> tensor<10x10xi32>
        %269 = math.cos %23 : tensor<f16>
        %270 = index.maxs %70, %114
        %271 = index.ceildivu %119, %116
        %extracted_51 = tensor.extract %1[%c5, %c3] : tensor<7x5xi1>
        %272 = math.roundeven %cst_0 : f16
        %273 = vector.flat_transpose %130 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %274 = math.log1p %cst_1 : f32
        %275 = arith.ori %79, %79 : i32
        memref.assume_alignment %alloc_20, 16 : memref<5xf32>
        %276 = math.expm1 %cst_5 : f16
        %277 = index.sizeof
        %alloc_52 = memref.alloc() : memref<7x5xi64>
        memref.tensor_store %6, %alloc_52 : memref<7x5xi64>
        %278 = math.ctlz %extracted_51 : i1
        scf.yield %97 : index
      }
      default {
        %266 = index.sub %125, %c0
        %267 = math.log1p %26 : f16
        %268 = math.absi %false_27 : i1
        %269 = arith.cmpi eq, %c1817008060_i64, %c976352095_i64 : i64
        %270 = math.fpowi %160, %c469509676_i32 : f16, i32
        %271 = arith.shrui %c1517640645_i64, %c1159337967_i64 : i64
        %272 = memref.load %alloc[%c4] : memref<5xi16>
        %273 = index.sizeof
        %274 = index.sub %97, %c9
        %275 = math.round %cst_3 : f32
        %276 = vector.shuffle %202, %200 [0, 1, 2, 7, 11, 13] : vector<7xi16>, vector<7xi16>
        %alloc_51 = memref.alloc() : memref<5xf32>
        %277 = arith.remf %cst, %cst : f32
        %278 = arith.maxui %c5403_i16, %extracted : i16
        %alloc_52 = memref.alloc() : memref<5x16xi64>
        %279 = tensor.empty() : tensor<7x16xi64>
        %280 = linalg.matmul ins(%5, %alloc_52 : tensor<7x5xi64>, memref<5x16xi64>) outs(%279 : tensor<7x16xi64>) -> tensor<7x16xi64>
        %281 = math.round %cst_5 : f16
        scf.yield %43 : index
      }
      %262 = math.log10 %cst_1 : f32
      %263 = scf.index_switch %c14 -> memref<7x5xf32> 
      case 1 {
        %266 = affine.load %alloc[%c8] : memref<5xi16>
        %267 = arith.ceildivsi %c55294092_i32, %c469509676_i32 : i32
        memref.assume_alignment %alloc_21, 4 : memref<10xf16>
        %268 = bufferization.clone %alloc_10 : memref<5xi32> to memref<5xi32>
        %269 = memref.atomic_rmw ori %c2126613511_i32, %alloc_16[%c9, %c6, %c4] : (i32, memref<10x10x5xi32>) -> i32
        %270 = index.sizeof
        %271 = vector.bitcast %92 : vector<16xi1> to vector<16xi1>
        memref.assume_alignment %alloc_16, 16 : memref<10x10x5xi32>
        %272 = arith.andi %c2126613511_i32, %c2126613511_i32 : i32
        %273 = arith.divsi %c27311_i16, %extracted : i16
        %274 = index.floordivs %rank_37, %83
        %275 = index.sub %97, %c2
        %276 = arith.cmpi sle, %extracted, %c27311_i16 : i16
        %277 = arith.remf %cst_0, %cst_5 : f16
        %278 = vector.splat %275 : vector<5xindex>
        %279 = index.sub %274, %43
        %alloc_51 = memref.alloc() : memref<7x5xf32>
        scf.yield %alloc_51 : memref<7x5xf32>
      }
      case 2 {
        %266 = math.fpowi %14, %from_elements : tensor<10x10x5xf16>, tensor<10x10x5xi32>
        %267 = arith.divsi %extracted, %extracted : i16
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2, d3 - 128, -(d3 - 128) - 192)>(%85, %157, %119, %38)
        %269 = vector.reduction <xor>, %118 : vector<16xi16> into i16
        %270 = index.casts %false : i1 to index
        %271 = vector.reduction <and>, %118 : vector<16xi16> into i16
        vector.print %207 : vector<10x10x5xi64>
        %272 = index.sizeof
        %273 = arith.remui %c469509676_i32, %c2126613511_i32 : i32
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %91, %91, %78 : vector<16xi32>, vector<16xi32> into i32
        %275 = vector.insertelement %false, %92[%85 : index] : vector<16xi1>
        %276 = math.round %178 : tensor<5xf32>
        %277 = math.cos %cst_5 : f16
        %278 = index.sub %c11, %143
        %279 = arith.andi %78, %c469509676_i32 : i32
        %280 = arith.remf %160, %cst_5 : f16
        %alloc_51 = memref.alloc() : memref<7x5xf32>
        scf.yield %alloc_51 : memref<7x5xf32>
      }
      case 3 {
        %266 = arith.divsi %79, %78 : i32
        %267 = arith.negf %cst_4 : f32
        %268 = math.log1p %2 : tensor<10x10xf16>
        %269 = math.log1p %14 : tensor<10x10x5xf16>
        %270 = vector.matrix_multiply %92, %92 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
        %271 = vector.broadcast %c8 : index to vector<7xindex>
        %272 = vector.broadcast %78 : i32 to vector<7xi32>
        vector.scatter %alloc_6[%c4, %c2] [%271], %201, %272 : memref<7x5xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %273 = vector.insertelement %extracted, %202[%81 : index] : vector<7xi16>
        %274 = index.casts %c469509676_i32 : i32 to index
        %275 = index.casts %c55294092_i32 : i32 to index
        %cast = tensor.cast %7 : tensor<7x5xi16> to tensor<?x?xi16>
        %276 = memref.atomic_rmw addi %39, %210[%c2, %c0, %c0] : (i64, memref<10x10x5xi64>) -> i64
        %277 = math.round %cst_0 : f16
        %278 = arith.addi %78, %c469509676_i32 : i32
        vector.print %202 : vector<7xi16>
        %expanded_51 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<5x10x10xi1> into tensor<5x10x10x1xi1>
        %279 = vector.create_mask %c12, %c5 : vector<7x5xi1>
        %alloc_52 = memref.alloc() : memref<7x5xf32>
        scf.yield %alloc_52 : memref<7x5xf32>
      }
      case 4 {
        %266 = vector.broadcast %c27311_i16 : i16 to vector<10x10xi16>
        %267 = vector.broadcast %false_27 : i1 to vector<10x10xi1>
        %268 = vector.broadcast %79 : i32 to vector<10x10xi32>
        %269 = vector.gather %7[%107, %169] [%268], %267, %266 : tensor<7x5xi16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi16> into vector<10x10xi16>
        %270 = math.exp %cst_38 : f16
        %271 = vector.reduction <or>, %118 : vector<16xi16> into i16
        %272 = vector.splat %119 : vector<5xindex>
        %273 = arith.addf %cst_5, %cst_0 : f16
        %274 = arith.divui %c1817008060_i64, %c976352095_i64 : i64
        %275 = arith.remf %26, %cst_38 : f16
        %276 = index.divu %c9, %36
        %277 = memref.atomic_rmw mulf %cst_4, %alloc_17[%c5, %c9] : (f32, memref<10x10xf32>) -> f32
        %278 = arith.remsi %false_27, %false_27 : i1
        %279 = arith.ceildivsi %c27311_i16, %c5403_i16 : i16
        %280 = math.cos %cst_3 : f32
        %281 = arith.remf %26, %cst_5 : f16
        %282 = affine.min affine_map<(d0, d1, d2) -> (0, (d1 + d2 - 64) * -8, ((d1 + d2 - 64) * 8) mod 16, (d1 + d2 - 64) * 256)>(%125, %116, %68)
        %283 = math.cttz %c5403_i16 : i16
        %284 = vector.broadcast %extracted : i16 to vector<16xi16>
        %285 = vector.transfer_write %284, %0[%68, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi16>, tensor<7x5xi16>
        %alloc_51 = memref.alloc() : memref<7x5xf32>
        scf.yield %alloc_51 : memref<7x5xf32>
      }
      default {
        %266 = arith.divui %c55294092_i32, %79 : i32
        %267 = arith.addf %cst_38, %cst_38 : f16
        %268 = arith.addi %79, %c2126613511_i32 : i32
        %269 = math.tanh %26 : f16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_51 = arith.constant 0 : i64
        %270 = vector.transfer_read %17[%185, %c8, %43], %c0_i64_51 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<10x10x5xi64>, vector<10x16xi64>
        %271 = math.expm1 %14 : tensor<10x10x5xf16>
        %272 = arith.cmpi ult, %false_27, %false_27 : i1
        %273 = affine.load %alloc_11[%c11, %c4, %c6] : memref<10x10x5xi16>
        %274 = vector.extract %206[4] : vector<10x10x5xi32>
        %275 = vector.splat %c13 : vector<5xindex>
        %276 = arith.remui %c469509676_i32, %c55294092_i32 : i32
        %277 = math.fpowi %cst, %c469509676_i32 : f32, i32
        %278 = arith.maxsi %arg0, %arg0 : i64
        %279 = math.expm1 %cst_2 : f32
        %280 = arith.andi %c1517640645_i64, %c0_i64 : i64
        %281 = arith.ori %c469509676_i32, %c55294092_i32 : i32
        %alloc_52 = memref.alloc() : memref<7x5xf32>
        scf.yield %alloc_52 : memref<7x5xf32>
      }
      %264 = vector.shuffle %106, %106 [2, 4, 8, 10, 12, 13] : vector<7x5xi64>, vector<7x5xi64>
      %265 = index.sizeof
      scf.condition(%false) %c1517640645_i64 : i64
    } do {
    ^bb0(%arg0: i64):
      scf.execute_region {
        %271 = arith.ori %c55294092_i32, %c55294092_i32 : i32
        %272 = vector.broadcast %extracted_34 : i64 to vector<10x5xi64>
        %273 = vector.insert %272, %207 [3] : vector<10x5xi64> into vector<10x10x5xi64>
        %274 = arith.remf %cst_4, %cst_2 : f32
        %275 = index.divs %c9, %c9
        %276 = math.roundeven %cst_5 : f16
        %277 = affine.min affine_map<(d0) -> (d0 * 2, d0 * 2, ((d0 * -2) ceildiv 16) mod 64, 0)>(%97)
        %278 = arith.addi %false, %false_27 : i1
        %279 = index.castu %c976352095_i64 : i64 to index
        %alloc_53 = memref.alloc() : memref<5xf32>
        %280 = affine.load %alloc_19[%c5, %c4, %c13] : memref<10x10x5xi16>
        %281 = index.sub %95, %116
        %282 = arith.divui %false_27, %false_27 : i1
        %283 = math.fpowi %14, %from_elements : tensor<10x10x5xf16>, tensor<10x10x5xi32>
        %284 = math.fpowi %cst_1, %c55294092_i32 : f32, i32
        %285 = arith.shrui %c1517640645_i64, %39 : i64
        %286 = math.tanh %2 : tensor<10x10xf16>
        scf.yield
      }
      %258 = index.ceildivu %157, %169
      %false_51 = index.bool.constant false
      %259 = vector.broadcast %78 : i32 to vector<16x16xi32>
      %260 = vector.outerproduct %91, %91, %259 {kind = #vector.kind<minui>} : vector<16xi32>, vector<16xi32>
      %261 = arith.remf %cst_5, %160 : f16
      %262 = bufferization.to_memref %15 : memref<10x10x5xf32>
      scf.index_switch %c9 
      case 1 {
        %271 = memref.realloc %alloc_21 : memref<10xf16> to memref<10xf16>
        %272 = arith.ceildivsi %false_51, %false_51 : i1
        %273 = vector.insertelement %cst_38, %190[] : vector<f16>
        %274 = index.divu %rank, %71
        %275 = tensor.empty() : tensor<5xi32>
        %276 = math.fpowi %178, %275 : tensor<5xf32>, tensor<5xi32>
        %277 = index.sizeof
        %278 = index.divs %c15, %38
        %279 = tensor.empty() : tensor<10x10xf32>
        %280 = linalg.matmul ins(%splat, %splat : tensor<10x10xf32>, tensor<10x10xf32>) outs(%279 : tensor<10x10xf32>) -> tensor<10x10xf32>
        %281 = math.absi %7 : tensor<7x5xi16>
        %282 = math.log1p %21 : tensor<10xf16>
        %283 = math.expm1 %cst_5 : f16
        %284 = index.maxs %c0, %85
        %285 = math.powf %2, %2 : tensor<10x10xf16>
        %286 = vector.shuffle %93, %93 [1, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 18, 20, 22, 23, 25, 26, 27] : vector<16xi32>, vector<16xi32>
        %287 = arith.remui %c976352095_i64, %c976352095_i64 : i64
        %288 = math.ctpop %79 : i32
        scf.yield
      }
      case 2 {
        %alloc_53 = memref.alloc() : memref<10xf16>
        memref.copy %alloc_21, %alloc_53 : memref<10xf16> to memref<10xf16>
        %271 = arith.divf %cst_2, %cst_1 : f32
        %272 = vector.multi_reduction <xor>, %117, %117 [] : vector<16xi16> to vector<16xi16>
        %273 = math.fma %cst_38, %cst_0, %26 : f16
        %274 = arith.remf %cst_1, %cst : f32
        %275 = arith.muli %c55294092_i32, %78 : i32
        %276 = math.roundeven %splat : tensor<10x10xf32>
        %277 = arith.ceildivsi %c1817008060_i64, %arg0 : i64
        %278 = arith.divsi %39, %c1517640645_i64 : i64
        %alloc_54 = memref.alloc() : memref<10x10xf16>
        %279 = vector.broadcast %cst_0 : f16 to vector<10x10xf16>
        %280 = vector.broadcast %false : i1 to vector<10x10xi1>
        %281 = vector.broadcast %c469509676_i32 : i32 to vector<10x10xi32>
        %282 = vector.gather %alloc_54[%185, %c14] [%281], %280, %279 : memref<10x10xf16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf16> into vector<10x10xf16>
        %283 = arith.divf %cst_5, %160 : f16
        %284 = tensor.empty() : tensor<5xi32>
        %285 = math.fpowi %178, %284 : tensor<5xf32>, tensor<5xi32>
        %286 = math.rsqrt %cst_38 : f16
        %287 = vector.transpose %130, [0] : vector<5xi16> to vector<5xi16>
        %288 = math.tan %2 : tensor<10x10xf16>
        %289 = index.sub %c14, %c2
        scf.yield
      }
      case 3 {
        %271 = index.floordivs %c0, %70
        %272 = math.absf %57 : tensor<10x10x5xf32>
        %expanded_53 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<10x10x5xf32> into tensor<10x10x5x1xf32>
        %273 = arith.floordivsi %c2126613511_i32, %79 : i32
        memref.copy %262, %alloc_12 : memref<10x10x5xf32> to memref<10x10x5xf32>
        %274 = arith.divui %c976352095_i64, %c1159337967_i64 : i64
        %275 = arith.ceildivsi %extracted_34, %c1817008060_i64 : i64
        %276 = index.sub %271, %c4
        %277 = arith.remf %cst_2, %cst_2 : f32
        memref.assume_alignment %48, 4 : memref<10x10x5xf16>
        %278 = vector.broadcast %c5403_i16 : i16 to vector<7x5xi16>
        %alloc_54 = memref.alloc() : memref<5xi32>
        memref.copy %alloc_10, %alloc_54 : memref<5xi32> to memref<5xi32>
        %279 = math.log1p %cst_4 : f32
        %280 = arith.addi %false_51, %false_27 : i1
        affine.store %c469509676_i32, %alloc_15[%c6, %c10] : memref<7x5xi32>
        %281 = index.add %169, %125
        scf.yield
      }
      case 4 {
        %271 = vector.splat %cst_38 : vector<10x10xf16>
        %272 = math.absf %cst_3 : f32
        %inserted_53 = tensor.insert %c55294092_i32 into %4[%c3, %c2] : tensor<10x10xi32>
        %273 = vector.reduction <maxui>, %200 : vector<7xi16> into i16
        %274 = index.maxs %c0, %c11
        %275 = affine.min affine_map<(d0, d1, d2) -> ((-d0 - 3) mod 8)>(%c3, %125, %c8)
        %276 = arith.ceildivsi %c976352095_i64, %c1517640645_i64 : i64
        %277 = arith.divsi %79, %79 : i32
        %278 = arith.subi %false_51, %false_51 : i1
        %c1832059217_i32 = arith.constant 1832059217 : i32
        %279 = arith.addf %cst_3, %cst_4 : f32
        %280 = arith.remsi %c27311_i16, %extracted : i16
        %from_elements_54 = tensor.from_elements %cst_4, %cst_2, %cst_3, %cst_4, %cst_4, %cst_3, %cst_1, %cst, %cst_3, %cst, %cst, %cst_1, %cst, %cst, %cst_2, %cst, %cst_3, %cst, %cst_1, %cst_3, %cst_4, %cst_2, %cst_1, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst, %cst_4, %cst, %cst_4, %cst_2, %cst_1 : tensor<7x5xf32>
        %281 = arith.xori %c27311_i16, %c27311_i16 : i16
        %282 = arith.xori %extracted_34, %39 : i64
        %283 = math.exp %cst_38 : f16
        scf.yield
      }
      default {
        %271 = arith.maxf %160, %cst_5 : f16
        %272 = arith.negf %160 : f16
        %273 = arith.minui %c5403_i16, %c5403_i16 : i16
        %274 = index.ceildivu %c9, %71
        %275 = arith.ceildivsi %78, %c55294092_i32 : i32
        %276 = math.absf %cst_4 : f32
        %277 = arith.muli %c55294092_i32, %c469509676_i32 : i32
        %278 = math.ipowi %4, %4 : tensor<10x10xi32>
        %279 = index.divs %68, %c10
        affine.store %cst, %alloc_20[%c6] : memref<5xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %42, %20, %c27311_i16 : vector<5xi16>, vector<5xi16> into i16
        %281 = arith.remf %cst_3, %cst : f32
        %282 = math.ctlz %17 : tensor<10x10x5xi64>
        %283 = vector.broadcast %arg0 : i64 to vector<5xi64>
        %284 = vector.broadcast %false_27 : i1 to vector<5xi1>
        %285 = vector.maskedload %alloc_13[%c3], %284, %283 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %286 = arith.maxf %cst_1, %cst : f32
        %287 = arith.negf %cst_3 : f32
      }
      memref.assume_alignment %alloc_8, 2 : memref<10x10x5xf16>
      %263 = arith.shrui %39, %c1817008060_i64 : i64
      %expanded_52 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<10x10xf32> into tensor<10x10x1xf32>
      %264 = arith.andi %c55294092_i32, %c55294092_i32 : i32
      %265 = math.log10 %cst_5 : f16
      %266 = arith.cmpi eq, %false_51, %false : i1
      %267 = arith.addf %cst_5, %160 : f16
      %268 = vector.broadcast %c1159337967_i64 : i64 to vector<10x10x7xi64>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %207, %106, %268 : vector<10x10x5xi64>, vector<7x5xi64> into vector<10x10x7xi64>
      %270 = bufferization.to_memref %14 : memref<10x10x5xf16>
      scf.yield %c1517640645_i64 : i64
    }
    %215 = arith.remui %extracted, %extracted : i16
    %216 = index.add %137, %71
    %217 = affine.if affine_set<(d0, d1, d2, d3) : (d0 mod 32 >= 0, d0 - (d2 + 17) == 0, d2 == 0)>(%c1, %c10, %c11, %c13) -> memref<10x10x5xi16> {
      %258 = arith.andi %39, %c1159337967_i64 : i64
      %259 = arith.maxf %cst_0, %cst_38 : f16
      %260 = affine.apply affine_map<(d0, d1) -> (d1)>(%rank_37, %c15)
      %261 = bufferization.clone %alloc_20 : memref<5xf32> to memref<5xf32>
      %262 = arith.divsi %78, %79 : i32
      %inserted_51 = tensor.insert %false into %1[%c3, %c0] : tensor<7x5xi1>
      %263 = index.maxu %43, %95
      %264 = arith.ori %79, %c55294092_i32 : i32
      affine.yield %alloc_19 : memref<10x10x5xi16>
    } else {
      %258 = vector.insert %c2126613511_i32, %93 [15] : i32 into vector<16xi32>
      %259 = memref.load %alloc_6[%c3, %c3] : memref<7x5xi32>
      %260 = math.roundeven %26 : f16
      %261 = arith.maxf %160, %cst_0 : f16
      %262 = arith.ori %extracted_34, %extracted_34 : i64
      %263 = scf.while (%arg0 = %false) : (i1) -> i1 {
        %265 = math.absf %178 : tensor<5xf32>
        %266 = vector.flat_transpose %202 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %267 = arith.andi %c55294092_i32, %c2126613511_i32 : i32
        %268 = vector.matrix_multiply %42, %42 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
        %269 = math.round %cst_4 : f32
        %270 = index.ceildivu %107, %c2
        %271 = math.ctlz %false_27 : i1
        %272 = arith.shrsi %c5403_i16, %c5403_i16 : i16
        scf.condition(%false) %arg0 : i1
      } do {
      ^bb0(%arg0: i1):
        %inserted_51 = tensor.insert %c1817008060_i64 into %17[%c0, %c0, %c1] : tensor<10x10x5xi64>
        %265 = index.divu %94, %85
        %266 = vector.insertelement %c5403_i16, %42[%rank : index] : vector<5xi16>
        %267 = vector.splat %c6 : vector<10x10xindex>
        %268 = arith.floordivsi %c27311_i16, %c5403_i16 : i16
        %269 = vector.create_mask %c4, %125, %c3 : vector<10x10x5xi1>
        %270 = arith.remui %c1817008060_i64, %c1159337967_i64 : i64
        %271 = arith.xori %c976352095_i64, %extracted_34 : i64
        %272 = arith.shrsi %c27311_i16, %extracted : i16
        %273 = vector.broadcast %78 : i32 to vector<10x10xi32>
        %274 = vector.broadcast %arg0 : i1 to vector<10x10xi1>
        %275 = vector.gather %from_elements[%c7, %97, %216] [%273], %274, %273 : tensor<10x10x5xi32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi32> into vector<10x10xi32>
        %276 = bufferization.to_tensor %alloc_15 : memref<7x5xi32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_52 = arith.constant 0 : i16
        %277 = vector.transfer_read %155[%c14, %c1], %c0_i16_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x5xi16>, vector<7xi16>
        %278 = math.absi %c1517640645_i64 : i64
        %extracted_53 = tensor.extract %3[%c2, %c6, %c4] : tensor<10x10x5xi1>
        %279 = vector.create_mask %c8, %49 : vector<7x5xi1>
        bufferization.dealloc_tensor %11 : tensor<10x10x5xi1>
        scf.yield %extracted_53 : i1
      }
      %264 = arith.divsi %false_27, %false_27 : i1
      scf.if %false_27 {
        %265 = vector.insertelement %c55294092_i32, %93[%c3 : index] : vector<16xi32>
        %266 = arith.muli %c469509676_i32, %c55294092_i32 : i32
        %267 = vector.shuffle %20, %130 [0, 1, 4, 5, 6] : vector<5xi16>, vector<5xi16>
        vector.print %200 : vector<7xi16>
        %alloc_51 = memref.alloc() : memref<5xi64>
        memref.copy %alloc_13, %alloc_51 : memref<5xi64> to memref<5xi64>
        %268 = arith.remf %cst_0, %cst_5 : f16
        %269 = arith.divsi %c5403_i16, %extracted : i16
        %inserted_52 = tensor.insert %extracted into %0[%c2, %c3] : tensor<7x5xi16>
      } else {
        %265 = arith.remsi %extracted, %c5403_i16 : i16
        %266 = math.ctlz %false_27 : i1
        %267 = math.log1p %cst_3 : f32
        %268 = affine.min affine_map<(d0, d1) -> (d0 * 64, -32)>(%95, %157)
        %269 = arith.andi %c1159337967_i64, %c1817008060_i64 : i64
        %expanded_51 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<10x10x5xi1> into tensor<10x10x5x1xi1>
        %270 = vector.reduction <maxui>, %200 : vector<7xi16> into i16
        %271 = bufferization.to_tensor %alloc_16 : memref<10x10x5xi32>
      }
      affine.yield %alloc_19 : memref<10x10x5xi16>
    }
    %218 = vector.broadcast %c55294092_i32 : i32 to vector<10x10x5xi32>
    %219 = math.atan %cst_4 : f32
    %220 = arith.minui %false_27, %false_27 : i1
    %221 = memref.load %alloc_12[%c0, %c6, %c1] : memref<10x10x5xf32>
    %222 = math.exp %2 : tensor<10x10xf16>
    %extracted_44 = tensor.extract %0[%c5, %c2] : tensor<7x5xi16>
    %223 = arith.addi %c27311_i16, %extracted_44 : i16
    %expanded_45 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<7x5xi16> into tensor<7x5x1xi16>
    memref.assume_alignment %alloc_9, 8 : memref<10x10x5xi32>
    %224 = scf.while (%arg0 = %cst_5) : (f16) -> f16 {
      %258 = index.divu %c9, %c6
      %259 = arith.remf %160, %cst_5 : f16
      %260 = index.divs %185, %95
      %c231131893_i32 = arith.constant 231131893 : i32
      %261 = arith.addf %26, %160 : f16
      %262 = math.ctlz %12 : tensor<7x5xi16>
      %263 = arith.maxf %cst_38, %cst_5 : f16
      memref.alloca_scope  {
        %264 = arith.floordivsi %78, %79 : i32
        %265 = arith.addf %cst_4, %cst_1 : f32
        %266 = arith.divui %c1159337967_i64, %c1159337967_i64 : i64
        %267 = math.cos %22 : tensor<f16>
        %268 = affine.min affine_map<(d0, d1) -> ((d0 + (d0 + 64) floordiv 128) floordiv 32, (d0 + (d0 + 64) floordiv 128) floordiv 32, (d0 + 64) floordiv 128 + 1, (d0 + (d0 + 64) floordiv 128) floordiv 32)>(%137, %c9)
        %269 = arith.maxf %cst_38, %26 : f16
        bufferization.dealloc_tensor %178 : tensor<5xf32>
        %270 = math.round %15 : tensor<10x10x5xf32>
        %271 = arith.maxsi %extracted_44, %c27311_i16 : i16
        %272 = bufferization.to_tensor %alloc : memref<5xi16>
        %273 = vector.splat %125 : vector<10x10x5xindex>
        %274 = arith.maxf %cst_1, %cst : f32
        %275 = vector.bitcast %117 : vector<16xi16> to vector<16xf16>
        %276 = affine.min affine_map<(d0, d1) -> (((-d0) floordiv 8) * 64, ((-d0) floordiv 8) * 64, (d1 - 2) floordiv 16)>(%c2, %70)
        %277 = affine.min affine_map<(d0) -> (((d0 + 4) mod 32) floordiv 16, -4, ((d0 + 4) mod 32) floordiv 16, 0)>(%95)
        %278 = math.tanh %arg0 : f16
        %279 = math.roundeven %arg0 : f16
        %expanded_51 = tensor.expand_shape %13 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
        %280 = tensor.empty() : tensor<i32>
        %281 = math.fpowi %22, %280 : tensor<f16>, tensor<i32>
        %282 = index.ceildivs %70, %c11
        %283 = index.add %83, %71
        %284 = math.exp2 %14 : tensor<10x10x5xf16>
        %285 = bufferization.to_memref %15 : memref<10x10x5xf32>
        %286 = memref.load %153[%c6, %c1, %c2] : memref<10x10x5xi1>
        %c189872083_i32 = arith.constant 189872083 : i32
        %287 = index.ceildivu %c12, %c13
        %288 = math.ipowi %expanded_45, %expanded_45 : tensor<7x5x1xi16>
        %289 = arith.andi %c976352095_i64, %c1159337967_i64 : i64
        %290 = affine.load %alloc_19[%c1, %c12, %c13] : memref<10x10x5xi16>
        %291 = math.absi %0 : tensor<7x5xi16>
        %false_52 = index.bool.constant false
        %292 = vector.bitcast %20 : vector<5xi16> to vector<5xi16>
      }
      scf.condition(%false) %cst_5 : f16
    } do {
    ^bb0(%arg0: f16):
      %258 = bufferization.clone %alloc_9 : memref<10x10x5xi32> to memref<10x10x5xi32>
      %259 = vector.broadcast %extracted_44 : i16 to vector<7x5xi16>
      %260 = vector.broadcast %false_27 : i1 to vector<7x5xi1>
      %261 = vector.broadcast %c2126613511_i32 : i32 to vector<7x5xi32>
      %262 = vector.gather %10[%194] [%261], %260, %259 : tensor<5xi16>, vector<7x5xi32>, vector<7x5xi1>, vector<7x5xi16> into vector<7x5xi16>
      %263 = arith.maxf %cst_4, %cst : f32
      %264 = math.expm1 %cst_0 : f16
      %265 = arith.ori %c469509676_i32, %c2126613511_i32 : i32
      %266 = arith.minsi %c27311_i16, %extracted : i16
      %267 = index.divu %71, %143
      %268 = vector.broadcast %c55294092_i32 : i32 to vector<10xi32>
      %269 = vector.multi_reduction <maxui>, %206, %268 [1, 2] : vector<10x10x5xi32> to vector<10xi32>
      %270 = math.log10 %cst_5 : f16
      %271 = arith.divsi %c2126613511_i32, %79 : i32
      %272 = arith.divsi %false_27, %false : i1
      %273 = index.mul %rank_37, %70
      %274 = scf.while (%arg1 = %cst_2) : (f32) -> f32 {
        %inserted_51 = tensor.insert %c1517640645_i64 into %17[%c5, %c0, %c1] : tensor<10x10x5xi64>
        %extracted_52 = tensor.extract %transposed[%c0, %c5, %c8] : tensor<5x10x10xi1>
        %278 = arith.andi %extracted_52, %false_27 : i1
        %279 = arith.ori %c1159337967_i64, %39 : i64
        %inserted_53 = tensor.insert %extracted_44 into %0[%c0, %c3] : tensor<7x5xi16>
        %280 = math.tanh %14 : tensor<10x10x5xf16>
        %alloc_54 = memref.alloc() : memref<7x5xf32>
        %281 = math.expm1 %cst_1 : f32
        scf.condition(%false) %cst_3 : f32
      } do {
      ^bb0(%arg1: f32):
        %278 = math.tanh %23 : tensor<f16>
        %279 = math.absi %1 : tensor<7x5xi1>
        %280 = index.sizeof
        %281 = index.divu %c8, %114
        %282 = arith.floordivsi %39, %c1817008060_i64 : i64
        %283 = affine.min affine_map<(d0, d1, d2) -> (-d1 + d2 + 16, -d1 + d2, d1 - (d0 - 64) + 1, d0)>(%c2, %c8, %143)
        %284 = arith.andi %false, %false : i1
        %285 = math.fpowi %cst_1, %79 : f32, i32
        %286 = arith.remf %26, %160 : f16
        %287 = arith.remf %cst_1, %arg1 : f32
        %288 = memref.atomic_rmw mins %c55294092_i32, %alloc_9[%c9, %c6, %c2] : (i32, memref<10x10x5xi32>) -> i32
        %289 = math.roundeven %178 : tensor<5xf32>
        vector.print %206 : vector<10x10x5xi32>
        %290 = math.cos %26 : f16
        %291 = vector.flat_transpose %108 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %292 = index.divu %c7, %283
        scf.yield %cst : f32
      }
      %275 = vector.shuffle %130, %42 [0, 1, 2, 4, 5, 6, 7, 8, 9] : vector<5xi16>, vector<5xi16>
      %276 = index.ceildivs %c14, %107
      %277 = affine.min affine_map<(d0) -> (0, d0 mod 4)>(%195)
      scf.yield %cst_38 : f16
    }
    %225 = vector.extract %218[3] : vector<10x10x5xi32>
    memref.store %cst_5, %alloc_7[%c4, %c4] : memref<7x5xf16>
    %226 = vector.extract %91[11] : vector<16xi32>
    %extracted_46 = tensor.extract %22[] : tensor<f16>
    %227 = bufferization.to_memref %2 : memref<10x10xf16>
    %228 = index.maxs %rank, %c2
    %229 = arith.divsi %false, %false : i1
    %230 = arith.maxsi %c976352095_i64, %c976352095_i64 : i64
    %231 = vector.multi_reduction <or>, %201, %false_27 [0] : vector<7xi1> to i1
    %alloc_47 = memref.alloc() : memref<10x10x5xi64>
    %232 = index.ceildivs %c14, %119
    %233 = math.log1p %22 : tensor<f16>
    %234 = arith.divsi %c27311_i16, %c5403_i16 : i16
    %235 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d3, d0 - 1, d0 - 1)>(%116, %c6, %c4, %c0)
    %236 = arith.minui %79, %c469509676_i32 : i32
    %237 = arith.maxsi %c27311_i16, %c27311_i16 : i16
    %238 = arith.floordivsi %c976352095_i64, %c1817008060_i64 : i64
    %239 = vector.broadcast %169 : index to vector<5xindex>
    %240 = vector.broadcast %231 : i1 to vector<5xi1>
    %241 = vector.broadcast %cst_0 : f16 to vector<5xf16>
    vector.scatter %alloc_21[%c1] [%239], %240, %241 : memref<10xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
    %extracted_48 = tensor.extract %8[%c1, %c8, %c1] : tensor<10x10x5xi64>
    %242 = math.fpowi %15, %from_elements : tensor<10x10x5xf32>, tensor<10x10x5xi32>
    %extracted_49 = tensor.extract %14[%c1, %c4, %c0] : tensor<10x10x5xf16>
    %243 = index.maxu %c0, %c0
    memref.assume_alignment %alloc_12, 8 : memref<10x10x5xf32>
    %244 = scf.if %231 -> (memref<5xi64>) {
      scf.if %false_27 {
        %264 = arith.andi %c2126613511_i32, %c2126613511_i32 : i32
        %265 = index.divs %85, %157
        %from_elements_51 = tensor.from_elements %cst_2, %cst, %cst_3, %cst_2, %cst_4, %cst_1, %cst_2, %cst_3, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %cst_4, %cst_2, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst, %cst_4, %cst, %cst, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_4 : tensor<7x5xf32>
        %alloc_52 = memref.alloc() : memref<5xf32>
        memref.copy %alloc_20, %alloc_52 : memref<5xf32> to memref<5xf32>
        %266 = arith.remf %cst_1, %cst_3 : f32
        %267 = vector.multi_reduction <and>, %207, %39 [0, 1, 2] : vector<10x10x5xi64> to i64
        %268 = arith.divui %39, %extracted_34 : i64
        %dest_53, %accumulated_value_54 = vector.scan <add>, %218, %225 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x5xi32>, vector<10x5xi32>
      }
      %258 = arith.cmpi ne, %c1159337967_i64, %c1817008060_i64 : i64
      %259 = math.tanh %57 : tensor<10x10x5xf32>
      %260 = arith.negf %26 : f16
      %261 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d0 + d1, d0 + d1, d3)>(%c0, %107, %235, %243)
      %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%208, %94, %43, %157)
      affine.store %78, %alloc_10[%c7] : memref<5xi32>
      %263 = math.round %14 : tensor<10x10x5xf16>
      scf.yield %alloc_13 : memref<5xi64>
    } else {
      %258 = arith.floordivsi %false, %false_27 : i1
      %259 = affine.min affine_map<(d0) -> (d0, -((((d0 floordiv 128) * 2) ceildiv 128) floordiv 2 + 64), d0 ceildiv 4)>(%68)
      %260 = index.ceildivs %195, %c10
      %261 = math.fma %23, %22, %23 : tensor<f16>
      %262 = vector.broadcast %c55294092_i32 : i32 to vector<i32>
      vector.transfer_write %262, %alloc_6[%111, %185] : vector<i32>, memref<7x5xi32>
      %263 = arith.shli %false, %false_27 : i1
      %264 = math.atan2 %22, %22 : tensor<f16>
      %265 = arith.maxsi %c1517640645_i64, %39 : i64
      scf.yield %alloc_13 : memref<5xi64>
    }
    %245 = bufferization.to_tensor %alloc_21 : memref<10xf16>
    %246 = arith.divsi %extracted_48, %extracted_48 : i64
    %247 = vector.shuffle %121, %121 [1, 2, 7, 8, 10, 11, 15, 18] : vector<10x10x5xi1>, vector<10x10x5xi1>
    %248 = vector.broadcast %c5403_i16 : i16 to vector<16x16xi16>
    %249 = vector.outerproduct %117, %118, %248 {kind = #vector.kind<minsi>} : vector<16xi16>, vector<16xi16>
    %250 = math.atan %245 : tensor<10xf16>
    %251 = math.cos %178 : tensor<5xf32>
    %252 = math.ipowi %10, %10 : tensor<5xi16>
    %253 = scf.while (%arg0 = %cst_5) : (f16) -> f16 {
      affine.store %extracted_46, %alloc_21[%c2] : memref<10xf16>
      %258 = bufferization.to_memref %2 : memref<10x10xf16>
      %259 = vector.insertelement %c1159337967_i64, %66[] : vector<i64>
      %260 = arith.minf %cst_1, %cst_1 : f32
      %inserted_51 = tensor.insert %cst into %178[%c1] : tensor<5xf32>
      %261 = arith.maxf %extracted_49, %arg0 : f16
      %extracted_52 = tensor.extract %2[%c1, %c6] : tensor<10x10xf16>
      %262 = vector.broadcast %c2126613511_i32 : i32 to vector<5x5xi32>
      vector.transfer_write %262, %alloc_9[%232, %97, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x5xi32>, memref<10x10x5xi32>
      scf.condition(%false_27) %extracted_46 : f16
    } do {
    ^bb0(%arg0: f16):
      %258 = math.ctpop %extracted_48 : i64
      %inserted_51 = tensor.insert %c1817008060_i64 into %16[%c9, %c8, %c3] : tensor<10x10x5xi64>
      %259 = math.rsqrt %2 : tensor<10x10xf16>
      %alloc_52 = memref.alloc() : memref<5xi16>
      memref.copy %alloc, %alloc_52 : memref<5xi16> to memref<5xi16>
      %260 = arith.xori %c1159337967_i64, %c1159337967_i64 : i64
      %261 = scf.index_switch %c5 -> i64 
      case 1 {
        %dest_55, %accumulated_value_56 = vector.scan <and>, %218, %225 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x5xi32>, vector<10x5xi32>
        memref.copy %alloc_19, %alloc_18 : memref<10x10x5xi16> to memref<10x10x5xi16>
        vector.print %66 : vector<i64>
        %cast = tensor.cast %5 : tensor<7x5xi64> to tensor<?x?xi64>
        %269 = index.floordivs %c15, %c11
        %270 = bufferization.to_tensor %153 : memref<10x10x5xi1>
        %271 = math.rsqrt %15 : tensor<10x10x5xf32>
        %272 = math.roundeven %extracted_46 : f16
        %273 = math.exp %cst : f32
        %274 = bufferization.clone %alloc_17 : memref<10x10xf32> to memref<10x10xf32>
        %275 = arith.divui %c469509676_i32, %78 : i32
        %276 = arith.remui %79, %c55294092_i32 : i32
        %277 = arith.subi %c27311_i16, %extracted : i16
        %278 = arith.andi %extracted_34, %c976352095_i64 : i64
        %279 = vector.extract %207[3, 1] : vector<10x10x5xi64>
        %280 = vector.insert %extracted, %130 [3] : i16 into vector<5xi16>
        scf.yield %extracted_34 : i64
      }
      default {
        %269 = math.log %splat : tensor<10x10xf32>
        %270 = index.add %c13, %97
        %271 = index.casts %39 : i64 to index
        %272 = arith.remui %c1517640645_i64, %c1159337967_i64 : i64
        %273 = arith.remf %cst, %cst_4 : f32
        %expanded_55 = tensor.expand_shape %expanded_45 [[0], [1], [2, 3]] : tensor<7x5x1xi16> into tensor<7x5x1x1xi16>
        %274 = index.sizeof
        %275 = index.sub %270, %68
        %276 = math.atan %splat : tensor<10x10xf32>
        %277 = bufferization.to_tensor %227 : memref<10x10xf16>
        %278 = vector.multi_reduction <xor>, %202, %202 [] : vector<7xi16> to vector<7xi16>
        %279 = arith.addf %cst_1, %cst_2 : f32
        %280 = index.mul %157, %c11
        %281 = memref.atomic_rmw addf %cst_38, %227[%c0, %c8] : (f16, memref<10x10xf16>) -> f16
        %282 = bufferization.clone %alloc_13 : memref<5xi64> to memref<5xi64>
        %283 = arith.ori %extracted, %extracted : i16
        scf.yield %c976352095_i64 : i64
      }
      bufferization.dealloc_tensor %10 : tensor<5xi16>
      %262 = arith.shrui %extracted, %c27311_i16 : i16
      %263 = arith.andi %c1517640645_i64, %c976352095_i64 : i64
      %264 = vector.broadcast %c3 : index to vector<7xindex>
      %265 = vector.broadcast %39 : i64 to vector<7xi64>
      vector.scatter %alloc_13[%c0] [%264], %201, %265 : memref<5xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %alloc_53 = memref.alloc() : memref<10x10x5xi1>
      memref.copy %153, %alloc_53 : memref<10x10x5xi1> to memref<10x10x5xi1>
      %266 = arith.divui %78, %c2126613511_i32 : i32
      memref.store %39, %alloc_13[%c0] : memref<5xi64>
      %267 = arith.addi %78, %79 : i32
      %268 = vector.extract %20[4] : vector<5xi16>
      %alloc_54 = memref.alloc() : memref<7x5xf16>
      memref.copy %alloc_7, %alloc_54 : memref<7x5xf16> to memref<7x5xf16>
      scf.yield %cst_38 : f16
    }
    %254 = tensor.empty() : tensor<7x5x1xi16>
    %255 = linalg.copy ins(%expanded_45 : tensor<7x5x1xi16>) outs(%254 : tensor<7x5x1xi16>) -> tensor<7x5x1xi16>
    %alloc_50 = memref.alloc() : memref<10x10xf32>
    linalg.transpose ins(%splat : tensor<10x10xf32>) outs(%alloc_50 : memref<10x10xf32>) permutation = [1, 0] 
    %256 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_10 : memref<5xi32>) outs(%256 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %258 = index.mul %114, %c0
        %259 = arith.andi %extracted_34, %c1817008060_i64 : i64
        %260 = arith.addf %26, %160 : f16
        %261 = vector.broadcast %c2126613511_i32 : i32 to vector<16x16xi32>
        %262 = vector.outerproduct %91, %93, %261 {kind = #vector.kind<mul>} : vector<16xi32>, vector<16xi32>
        %263 = arith.maxsi %false_27, %false : i1
        %264 = arith.remui %c1817008060_i64, %extracted_34 : i64
        %265 = affine.load %alloc_11[%c8, %c2, %c12] : memref<10x10x5xi16>
        %266 = math.roundeven %extracted_49 : f16
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg0) = (%228) to (%c1) step (%c3) {
      %258 = arith.xori %79, %c469509676_i32 : i32
      %259 = arith.remsi %c1159337967_i64, %c976352095_i64 : i64
      %260 = arith.muli %c5403_i16, %extracted_44 : i16
      %261 = vector.insertelement %c5403_i16, %118[%107 : index] : vector<16xi16>
      %262 = arith.remf %26, %cst_0 : f16
      %263 = index.casts %79 : i32 to index
      %264 = math.log2 %15 : tensor<10x10x5xf32>
      %265 = vector.multi_reduction <maxui>, %118, %118 [] : vector<16xi16> to vector<16xi16>
      %266 = arith.subi %79, %c2126613511_i32 : i32
      %267 = memref.atomic_rmw minf %extracted_46, %alloc_8[%c6, %c2, %c1] : (f16, memref<10x10x5xf16>) -> f16
      %c1087748654_i32 = arith.constant 1087748654 : i32
      %268 = arith.mulf %cst, %cst_3 : f32
      %269 = arith.maxf %extracted_49, %cst_38 : f16
      %270 = arith.andi %c469509676_i32, %c469509676_i32 : i32
      %271 = arith.minf %cst_0, %cst_5 : f16
      %272 = arith.mulf %cst_1, %cst : f32
      scf.yield
    }
    %257 = affine.vector_load %alloc_6[%95, %232] : memref<7x5xi32>, vector<10xi32>
    affine.vector_store %91, %alloc_10[%116] : memref<5xi32>, vector<16xi32>
    vector.print %20 : vector<5xi16>
    vector.print %42 : vector<5xi16>
    vector.print %66 : vector<i64>
    vector.print %74 : vector<i16>
    vector.print %91 : vector<16xi32>
    vector.print %92 : vector<16xi1>
    vector.print %93 : vector<16xi32>
    vector.print %106 : vector<7x5xi64>
    vector.print %108 : vector<1xi32>
    vector.print %117 : vector<16xi16>
    vector.print %118 : vector<16xi16>
    vector.print %121 : vector<10x10x5xi1>
    vector.print %130 : vector<5xi16>
    vector.print %170 : vector<10x10x5xi64>
    vector.print %190 : vector<f16>
    vector.print %200 : vector<7xi16>
    vector.print %201 : vector<7xi1>
    vector.print %202 : vector<7xi16>
    vector.print %206 : vector<10x10x5xi32>
    vector.print %207 : vector<10x10x5xi64>
    vector.print %218 : vector<10x10x5xi32>
    vector.print %225 : vector<10x5xi32>
    vector.print %257 : vector<10xi32>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c976352095_i64 : i64
    vector.print %c2126613511_i32 : i32
    vector.print %cst_1 : f32
    vector.print %c469509676_i32 : i32
    vector.print %c1517640645_i64 : i64
    vector.print %c1159337967_i64 : i64
    vector.print %c1817008060_i64 : i64
    vector.print %c27311_i16 : i16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %c55294092_i32 : i32
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c5403_i16 : i16
    vector.print %26 : f16
    vector.print %extracted : i16
    vector.print %39 : i64
    vector.print %false : i1
    vector.print %false_27 : i1
    vector.print %78 : i32
    vector.print %79 : i32
    vector.print %extracted_34 : i64
    vector.print %160 : f16
    vector.print %cst_38 : f16
    vector.print %extracted_44 : i16
    vector.print %extracted_46 : f16
    vector.print %231 : i1
    vector.print %extracted_48 : i64
    vector.print %extracted_49 : f16
    return
  }
}
