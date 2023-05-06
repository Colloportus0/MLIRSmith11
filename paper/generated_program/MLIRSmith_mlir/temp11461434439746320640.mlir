module {
  func.func @func1() -> memref<7x8xi16> {
    %true = arith.constant true
    %c17955_i16 = arith.constant 17955 : i16
    %c2079524800_i32 = arith.constant 2079524800 : i32
    %cst = arith.constant 4.979200e+04 : f16
    %c-25433_i16 = arith.constant -25433 : i16
    %c1335811011_i32 = arith.constant 1335811011 : i32
    %cst_0 = arith.constant 2.918400e+04 : f16
    %cst_1 = arith.constant 0x4E234947 : f32
    %c26135_i16 = arith.constant 26135 : i16
    %false = arith.constant false
    %cst_2 = arith.constant 0x4DFFE517 : f32
    %cst_3 = arith.constant 4.966400e+04 : f16
    %cst_4 = arith.constant 3.705600e+04 : f16
    %c24492_i16 = arith.constant 24492 : i16
    %cst_5 = arith.constant 0x4E6E12DA : f32
    %cst_6 = arith.constant 4.176000e+04 : f16
    %0 = tensor.empty() : tensor<10x2xi16>
    %1 = tensor.empty() : tensor<2x2x7xf16>
    %2 = tensor.empty() : tensor<10x2xi1>
    %3 = tensor.empty() : tensor<7x8xi32>
    %4 = tensor.empty() : tensor<10x2xf16>
    %5 = tensor.empty() : tensor<7x8xi32>
    %6 = tensor.empty() : tensor<7x8xi1>
    %7 = tensor.empty() : tensor<2xi1>
    %8 = tensor.empty() : tensor<2xi32>
    %9 = tensor.empty() : tensor<10x2xi64>
    %10 = tensor.empty() : tensor<2xi1>
    %11 = tensor.empty() : tensor<2x2x7xf32>
    %12 = tensor.empty() : tensor<10x2xi1>
    %13 = tensor.empty() : tensor<7x8xi32>
    %14 = tensor.empty() : tensor<2x2x7xi64>
    %15 = tensor.empty() : tensor<2x2x7xi32>
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
    %alloc = memref.alloc() : memref<10x2xi1>
    %alloc_7 = memref.alloc() : memref<2xi32>
    %alloc_8 = memref.alloc() : memref<2x2x7xf32>
    %alloc_9 = memref.alloc() : memref<7x8xi32>
    %alloc_10 = memref.alloc() : memref<2xi64>
    %alloc_11 = memref.alloc() : memref<10x2xf32>
    %alloc_12 = memref.alloc() : memref<2xi16>
    %alloc_13 = memref.alloc() : memref<7x8xi1>
    %alloc_14 = memref.alloc() : memref<7x8xf16>
    %alloc_15 = memref.alloc() : memref<2xi32>
    %alloc_16 = memref.alloc() : memref<2x2x7xf32>
    %alloc_17 = memref.alloc() : memref<10x2xi64>
    %alloc_18 = memref.alloc() : memref<7x8xi32>
    %alloc_19 = memref.alloc() : memref<2x2x7xi32>
    %alloc_20 = memref.alloc() : memref<2x2x7xf16>
    %alloc_21 = memref.alloc() : memref<2xf16>
    %16 = tensor.empty() : tensor<2x2x7xi64>
    %17 = linalg.copy ins(%14 : tensor<2x2x7xi64>) outs(%16 : tensor<2x2x7xi64>) -> tensor<2x2x7xi64>
    %18 = tensor.empty() : tensor<8x7xi32>
    %transposed = linalg.transpose ins(%13 : tensor<7x8xi32>) outs(%18 : tensor<8x7xi32>) permutation = [1, 0] 
    %alloc_22 = memref.alloc() : memref<i32>
    linalg.reduce ins(%alloc_15 : memref<2xi32>) outs(%alloc_22 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %259 = arith.maxui %c26135_i16, %c17955_i16 : i16
        %260 = vector.broadcast %false : i1 to vector<i1>
        %261 = vector.transfer_write %260, %10[%c0] : vector<i1>, tensor<2xi1>
        %262 = affine.min affine_map<(d0) -> (d0 + 162, d0 + 128, d0 - d0 ceildiv 128 + 64, d0)>(%c15)
        %c1_i64 = arith.constant 1 : i64
        %263 = vector.broadcast %c1_i64 : i64 to vector<1xi64>
        %264 = vector.insert %c1_i64, %263 [0] : i64 into vector<1xi64>
        %265 = arith.xori %c-25433_i16, %c24492_i16 : i16
        %266 = index.maxs %c3, %c9
        %alloca_47 = memref.alloca() : memref<2x2x7xf16>
        %267 = vector.broadcast %init : i32 to vector<i32>
        vector.transfer_write %267, %alloc_15[%c8] : vector<i32>, memref<2xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg0, %arg1) = (%c9, %c0) to (%c2, %c2) step (%c3, %c10) {
      %259 = math.floor %cst_3 : f16
      %cast_47 = tensor.cast %11 : tensor<2x2x7xf32> to tensor<?x?x?xf32>
      %260 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      %261 = vector.bitcast %260 : vector<1xf32> to vector<1xf32>
      %262 = index.castu %c6 : index to i32
      %263 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
      %264 = vector.outerproduct %260, %261, %263 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %265 = math.powf %1, %1 : tensor<2x2x7xf16>
      %266 = arith.remf %cst_2, %cst_2 : f32
      %267 = vector.broadcast %true : i1 to vector<10x2xi1>
      %268 = vector.broadcast %c2079524800_i32 : i32 to vector<10x2xi32>
      %269 = vector.gather %12[%arg1, %c5] [%268], %267, %267 : tensor<10x2xi1>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xi1> into vector<10x2xi1>
      %270 = vector.transpose %268, [1, 0] : vector<10x2xi32> to vector<2x10xi32>
      %271 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %272 = vector.outerproduct %261, %260, %271 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %273 = arith.maxf %cst_2, %cst_5 : f32
      %274 = tensor.empty() : tensor<10x2xf16>
      %mapped = linalg.map ins(%4, %4 : tensor<10x2xf16>, tensor<10x2xf16>) outs(%274 : tensor<10x2xf16>)
        (%in: f16, %in_49: f16) {
          %279 = index.floordivs %c8, %c12
          %280 = vector.broadcast %c7 : index to vector<7xindex>
          %281 = vector.broadcast %false : i1 to vector<7xi1>
          %282 = vector.broadcast %c2079524800_i32 : i32 to vector<7xi32>
          vector.scatter %alloc_9[%c2, %c0] [%280], %281, %282 : memref<7x8xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %283 = math.atan2 %in, %cst : f16
          %284 = tensor.empty(%arg0, %c3) : tensor<?x?x7xf32>
          %285 = vector.broadcast %true : i1 to vector<2x2xi1>
          %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %269, %267, %285 : vector<10x2xi1>, vector<10x2xi1> into vector<2x2xi1>
          %287 = vector.insertelement %cst_1, %260[%c10 : index] : vector<1xf32>
          %288 = arith.xori %true, %true : i1
          %289 = math.log2 %11 : tensor<2x2x7xf32>
          %290 = math.expm1 %1 : tensor<2x2x7xf16>
          %alloc_50 = memref.alloc() : memref<2xi16>
          memref.copy %alloc_12, %alloc_50 : memref<2xi16> to memref<2xi16>
          %291 = index.floordivs %c2, %arg1
          %292 = vector.broadcast %true : i1 to vector<7x8xi1>
          %293 = vector.broadcast %c2079524800_i32 : i32 to vector<7x8xi32>
          %294 = vector.gather %10[%279] [%293], %292, %292 : tensor<2xi1>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi1> into vector<7x8xi1>
          %alloc_51 = memref.alloc() : memref<2xi1>
          memref.tensor_store %10, %alloc_51 : memref<2xi1>
          %295 = math.log %in : f16
          %c20599185_i64 = arith.constant 20599185 : i64
          %inserted_52 = tensor.insert %c17955_i16 into %0[%c5, %c1] : tensor<10x2xi16>
          %296 = math.log10 %11 : tensor<2x2x7xf32>
          %297 = vector.broadcast %false : i1 to vector<2xi1>
          %dest_53, %accumulated_value_54 = vector.scan <and>, %267, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2xi1>, vector<2xi1>
          %298 = math.fma %cst_2, %cst_2, %cst_5 : f32
          %299 = index.mul %c7, %c3
          %300 = vector.insertelement %cst_2, %260[%c6 : index] : vector<1xf32>
          vector.print %260 : vector<1xf32>
          %301 = index.sub %c13, %c4
          %302 = vector.bitcast %269 : vector<10x2xi1> to vector<10x2xi1>
          %303 = vector.multi_reduction <or>, %268, %c1335811011_i32 [0, 1] : vector<10x2xi32> to i32
          %304 = arith.divui %true, %true : i1
          %305 = math.ipowi %transposed, %transposed : tensor<8x7xi32>
          %306 = vector.transpose %294, [0, 1] : vector<7x8xi1> to vector<7x8xi1>
          %307 = vector.bitcast %294 : vector<7x8xi1> to vector<7x8xi1>
          %308 = math.powf %1, %1 : tensor<2x2x7xf16>
          %c-4742_i16 = arith.constant -4742 : i16
          %expanded_55 = tensor.expand_shape %8 [[0, 1]] : tensor<2xi32> into tensor<2x1xi32>
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %275 = arith.cmpf ogt, %cst_1, %cst_5 : f32
      %276 = vector.broadcast %true : i1 to vector<2xi1>
      %277 = vector.insert %276, %267 [3] : vector<2xi1> into vector<10x2xi1>
      %278 = math.absi %true : i1
      %inserted_48 = tensor.insert %c1335811011_i32 into %transposed[%c5, %c1] : tensor<8x7xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_12[%c3] : memref<2xi16>, vector<10xi16>
    affine.vector_store %19, %alloc_12[%c11] : memref<2xi16>, vector<10xi16>
    %20 = tensor.empty() : tensor<2xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc_7, %20 : memref<2xi32>, tensor<2xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 16)>(%c13, %c0, %c7, %c10)
    %24 = tensor.empty() : tensor<10x2xi32>
    %25 = math.fpowi %4, %24 : tensor<10x2xf16>, tensor<10x2xi32>
    %26 = arith.divsi %true, %false : i1
    vector.print %19 : vector<10xi16>
    %27 = arith.maxf %cst_3, %cst_6 : f16
    %28 = math.fma %cst_1, %cst_1, %cst_1 : f32
    scf.if %true {
      %259 = affine.if affine_set<(d0, d1) : (d1 == 0, 0 >= 0, d0 mod 128 >= 0, (((d0 floordiv 16) mod 2) ceildiv 16) ceildiv 4 == 0)>(%c8, %c14) -> memref<10x2xi16> {
        %266 = arith.maxsi %true, %true : i1
        %267 = arith.maxf %cst_3, %cst_3 : f16
        %268 = arith.remui %c-25433_i16, %c-25433_i16 : i16
        %269 = memref.realloc %alloc_7 : memref<2xi32> to memref<7xi32>
        %270 = arith.subi %c1335811011_i32, %c2079524800_i32 : i32
        %cast_49 = tensor.cast %2 : tensor<10x2xi1> to tensor<?x?xi1>
        %alloc_50 = memref.alloc() : memref<2x2x7xi64>
        %c1_i64 = arith.constant 1 : i64
        %271 = vector.broadcast %c1_i64 : i64 to vector<7x8xi64>
        %272 = vector.broadcast %false : i1 to vector<7x8xi1>
        %273 = vector.broadcast %c2079524800_i32 : i32 to vector<7x8xi32>
        %274 = vector.gather %alloc_50[%c7, %c3, %c11] [%273], %272, %271 : memref<2x2x7xi64>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi64> into vector<7x8xi64>
        %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 8 - 2)>(%c7, %c11, %c3, %c2)
        %alloc_51 = memref.alloc() : memref<10x2xi16>
        affine.yield %alloc_51 : memref<10x2xi16>
      } else {
        %266 = math.tanh %1 : tensor<2x2x7xf16>
        %267 = memref.load %alloc_22[] : memref<i32>
        %from_elements_49 = tensor.from_elements %cst_2, %cst_5, %cst_1, %cst_1, %cst_2, %cst_5, %cst_2, %cst_5, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_2, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_2, %cst_2, %cst_1, %cst_2, %cst_5, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_5, %cst_5, %cst_1, %cst_2, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_2, %cst_1, %cst_1, %cst_5, %cst_1, %cst_2, %cst_1 : tensor<7x8xf32>
        %268 = index.mul %c7, %c0
        %269 = vector.reduction <minui>, %19 : vector<10xi16> into i16
        %expanded_50 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x2xi16> into tensor<10x2x1xi16>
        %270 = vector.splat %c14 : vector<2xindex>
        %271 = arith.remf %cst_2, %cst_1 : f32
        %alloc_51 = memref.alloc() : memref<10x2xi16>
        affine.yield %alloc_51 : memref<10x2xi16>
      }
      %260 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
      %261 = vector.outerproduct %19, %19, %260 {kind = #vector.kind<add>} : vector<10xi16>, vector<10xi16>
      %262 = arith.shrsi %c2079524800_i32, %c1335811011_i32 : i32
      %true_47 = index.bool.constant true
      %from_elements_48 = tensor.from_elements %cst_1, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_1, %cst_2, %cst_5, %cst_1, %cst_1, %cst_5 : tensor<10x2xf32>
      %263 = index.casts %c17955_i16 : i16 to index
      %264 = vector.broadcast %cst_3 : f16 to vector<10x2xf16>
      %265 = arith.subi %c2079524800_i32, %c1335811011_i32 : i32
    }
    %29 = math.powf %4, %4 : tensor<10x2xf16>
    %30 = arith.remf %cst_0, %cst_0 : f16
    %31 = vector.shuffle %19, %19 [1, 2, 3, 4, 5, 6, 7, 8, 9, 15, 18, 19] : vector<10xi16>, vector<10xi16>
    %32 = math.ctpop %true : i1
    %33 = arith.xori %true, %false : i1
    %alloc_23 = memref.alloc() : memref<2x8xi16>
    %34 = tensor.empty() : tensor<10x8xi16>
    %35 = linalg.matmul ins(%0, %alloc_23 : tensor<10x2xi16>, memref<2x8xi16>) outs(%34 : tensor<10x8xi16>) -> tensor<10x8xi16>
    %36 = vector.broadcast %cst_1 : f32 to vector<2x2x7xf32>
    %37 = vector.fma %36, %36, %36 : vector<2x2x7xf32>
    %38 = math.log1p %cst_4 : f16
    %39 = arith.maxui %c1335811011_i32, %c2079524800_i32 : i32
    %40 = index.casts %c-25433_i16 : i16 to index
    %inserted = tensor.insert %c26135_i16 into %34[%c9, %c6] : tensor<10x8xi16>
    %splat = tensor.splat %cst_0 : tensor<7x8xf16>
    memref.tensor_store %5, %alloc_9 : memref<7x8xi32>
    %41 = arith.divsi %c17955_i16, %c17955_i16 : i16
    %42 = tensor.empty() : tensor<7x7xi32>
    %43 = linalg.matmul ins(%13, %transposed : tensor<7x8xi32>, tensor<8x7xi32>) outs(%42 : tensor<7x7xi32>) -> tensor<7x7xi32>
    scf.if %false {
      %259 = arith.minsi %c17955_i16, %c26135_i16 : i16
      %260 = vector.broadcast %cst_2 : f32 to vector<2x7xf32>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %36, %260 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
      %261 = vector.extract %36[1] : vector<2x2x7xf32>
      %262 = vector.transpose %36, [1, 2, 0] : vector<2x2x7xf32> to vector<2x7x2xf32>
      %inserted_49 = tensor.insert %false into %12[%c5, %c1] : tensor<10x2xi1>
      %263 = affine.if affine_set<(d0) : ((d0 - 88) floordiv 128 == 0, 0 == 0, d0 - 96 == 0, 0 >= 0)>(%c6) -> memref<10x2xf32> {
        %267 = math.ctpop %true : i1
        %268 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %268, %alloc[%40, %c15] : vector<i1>, memref<10x2xi1>
        %alloc_50 = memref.alloc() : memref<7x8xi64>
        %269 = arith.maxsi %false, %false : i1
        %270 = math.ctpop %3 : tensor<7x8xi32>
        %271 = arith.minui %c-25433_i16, %c24492_i16 : i16
        %272 = arith.andi %c17955_i16, %c-25433_i16 : i16
        %273 = vector.load %alloc_14[%c3, %c0] : memref<7x8xf16>, vector<2xf16>
        affine.yield %alloc_11 : memref<10x2xf32>
      } else {
        %267 = memref.realloc %alloc_10 : memref<2xi64> to memref<2xi64>
        %268 = affine.max affine_map<(d0) -> ((d0 * 8) mod 128 - 2, d0 * 6)>(%c0)
        %269 = index.casts %268 : index to i32
        %270 = math.atan %cst : f16
        %cst_50 = arith.constant 0x4D8DC59D : f32
        %271 = vector.shuffle %36, %36 [2] : vector<2x2x7xf32>, vector<2x2x7xf32>
        %272 = arith.remf %cst_4, %cst_6 : f16
        %273 = arith.cmpf ult, %cst_4, %cst_4 : f16
        affine.yield %alloc_11 : memref<10x2xf32>
      }
      %264 = vector.create_mask %c15, %c1 : vector<7x8xi1>
      %265 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
      %266 = vector.outerproduct %19, %19, %265 {kind = #vector.kind<and>} : vector<10xi16>, vector<10xi16>
    } else {
      %259 = vector.broadcast %cst_2 : f32 to vector<2x7xf32>
      %260 = vector.insert %259, %37 [0] : vector<2x7xf32> into vector<2x2x7xf32>
      %261 = vector.broadcast %cst_1 : f32 to vector<7x2x7xf32>
      %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %259, %37, %261 : vector<2x7xf32>, vector<2x2x7xf32> into vector<7x2x7xf32>
      %263 = memref.realloc %alloc_15 : memref<2xi32> to memref<2xi32>
      memref.store %c1335811011_i32, %alloc_22[] : memref<i32>
      %cast_47 = tensor.cast %5 : tensor<7x8xi32> to tensor<?x?xi32>
      %cst_48 = arith.constant 1.000000e+00 : f16
      %cst_49 = arith.constant 0.000000e+00 : f16
      %264 = vector.transfer_read %alloc_20[%c7, %c9, %c2], %cst_49 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<2x2x7xf16>, vector<10x10xf16>
      %265 = vector.extract %19[5] : vector<10xi16>
      %266 = vector.bitcast %37 : vector<2x2x7xf32> to vector<2x2x7xi32>
    }
    scf.index_switch %c8 
    case 1 {
      %259 = vector.broadcast %cst_1 : f32 to vector<2x7xf32>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %36, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
      %260 = math.ipowi %20, %8 : tensor<2xi32>
      %261 = tensor.empty() : tensor<2xi1>
      %262 = math.atan2 %1, %1 : tensor<2x2x7xf16>
      %263 = vector.broadcast %false : i1 to vector<7xi1>
      %264 = vector.maskedload %alloc_13[%c3, %c6], %263, %263 : memref<7x8xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %265 = index.floordivs %c4, %c10
      %266 = vector.broadcast %c1335811011_i32 : i32 to vector<7xi32>
      %267 = vector.maskedload %alloc_22[], %264, %266 : memref<i32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %268 = tensor.empty() : tensor<2x2x7xi32>
      %mapped = linalg.map ins(%15 : tensor<2x2x7xi32>) outs(%268 : tensor<2x2x7xi32>)
        (%in: i32) {
          %272 = math.log1p %cst_1 : f32
          %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %264, %263, %true : vector<7xi1>, vector<7xi1> into i1
          %274 = arith.andi %c1335811011_i32, %in : i32
          %275 = index.floordivs %c0, %c6
          %276 = arith.xori %c24492_i16, %c24492_i16 : i16
          %277 = vector.load %alloc_16[%c1, %c0, %c5] : memref<2x2x7xf32>, vector<2x2x7xf32>
          %278 = vector.broadcast %cst_1 : f32 to vector<2x7xf32>
          %dest_53, %accumulated_value_54 = vector.scan <maxf>, %37, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
          %279 = vector.broadcast %cst_5 : f32 to vector<2x7x2x7xf32>
          %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %277, %37, %279 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
          %281 = vector.bitcast %19 : vector<10xi16> to vector<10xi16>
          %alloc_55 = memref.alloc() : memref<10x2xf16>
          %282 = vector.broadcast %cst_6 : f16 to vector<10x2xf16>
          %283 = vector.broadcast %false : i1 to vector<10x2xi1>
          %284 = vector.broadcast %in : i32 to vector<10x2xi32>
          %285 = vector.gather %alloc_55[%c14, %c7] [%284], %283, %282 : memref<10x2xf16>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xf16> into vector<10x2xf16>
          %286 = math.ctpop %12 : tensor<10x2xi1>
          %287 = affine.min affine_map<(d0, d1, d2) -> (d2 - (d2 floordiv 32 - d2), d1 floordiv 128, -d1)>(%275, %c6, %c6)
          %288 = arith.negf %cst_0 : f16
          %c1_i64 = arith.constant 1 : i64
          %289 = vector.broadcast %c1_i64 : i64 to vector<i64>
          %290 = vector.transfer_write %289, %9[%c2, %c4] : vector<i64>, tensor<10x2xi64>
          %291 = bufferization.clone %alloc : memref<10x2xi1> to memref<10x2xi1>
          %292 = math.log10 %cst_0 : f16
          %alloc_56 = memref.alloc() : memref<10x2xf16>
          memref.copy %alloc_55, %alloc_56 : memref<10x2xf16> to memref<10x2xf16>
          %293 = math.powf %11, %11 : tensor<2x2x7xf32>
          %294 = tensor.empty() : tensor<7x8xi64>
          %295 = index.castu %c8 : index to i32
          %296 = math.atan2 %4, %4 : tensor<10x2xf16>
          %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %266, %266, %in : vector<7xi32>, vector<7xi32> into i32
          %298 = math.cos %cst_1 : f32
          %299 = math.exp %1 : tensor<2x2x7xf16>
          %300 = index.ceildivs %275, %23
          %301 = index.add %265, %c0
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %302 = vector.transfer_read %5[%c1, %c1], %c0_i32 : tensor<7x8xi32>, vector<i32>
          vector.print %285 : vector<10x2xf16>
          %303 = index.floordivs %287, %c9
          %304 = index.maxu %c11, %c4
          %305 = index.ceildivs %c10, %40
          %306 = math.fpowi %11, %268 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
          %c1_i32_57 = arith.constant 1 : i32
          linalg.yield %c1_i32_57 : i32
        }
      %alloca_49 = memref.alloca() : memref<10x2xi16>
      scf.if %true {
        %272 = math.atan %cst_4 : f16
        %273 = index.floordivs %c2, %c11
        %274 = math.round %cst_6 : f16
        %275 = math.powf %cst_0, %cst_6 : f16
        %276 = arith.cmpf true, %cst_5, %cst_5 : f32
        %277 = math.ctlz %12 : tensor<10x2xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %266, %267, %c2079524800_i32 : vector<7xi32>, vector<7xi32> into i32
        %279 = index.floordivs %23, %c2
      }
      %269 = index.floordivs %c5, %c2
      %expanded_50 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<7x8xf16> into tensor<7x8x1xf16>
      %cast_51 = tensor.cast %7 : tensor<2xi1> to tensor<?xi1>
      %false_52 = index.bool.constant false
      %270 = index.divs %c12, %40
      %271 = vector.flat_transpose %264 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      scf.yield
    }
    case 2 {
      %259 = vector.transpose %37, [1, 0, 2] : vector<2x2x7xf32> to vector<2x2x7xf32>
      vector.print %37 : vector<2x2x7xf32>
      %260 = memref.load %alloc_9[%c5, %c2] : memref<7x8xi32>
      %261 = arith.shrui %c2079524800_i32, %c1335811011_i32 : i32
      %262 = vector.create_mask %23, %c4 : vector<7x8xi1>
      %263 = arith.remsi %c-25433_i16, %c17955_i16 : i16
      %264 = math.cos %4 : tensor<10x2xf16>
      %265 = vector.extract %36[1] : vector<2x2x7xf32>
      %266 = vector.create_mask %c4, %c3, %40 : vector<2x2x7xi1>
      %267 = index.floordivs %c1, %23
      %268 = memref.load %alloc_20[%c1, %c0, %c1] : memref<2x2x7xf16>
      %c0_i64_47 = arith.constant 0 : i64
      %269 = vector.broadcast %c0_i64_47 : i64 to vector<7xi64>
      %270 = vector.broadcast %true : i1 to vector<7xi1>
      %271 = vector.maskedload %alloc_17[%c2, %c0], %270, %269 : memref<10x2xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %272 = arith.divsi %true, %true : i1
      vector.print %19 : vector<10xi16>
      %273 = arith.remf %cst_1, %cst_1 : f32
      %274 = arith.maxsi %true, %true : i1
      scf.yield
    }
    default {
      %259 = tensor.empty() : tensor<7x8xi1>
      %mapped = linalg.map ins(%alloc_13, %6 : memref<7x8xi1>, tensor<7x8xi1>) outs(%259 : tensor<7x8xi1>)
        (%in: i1, %in_50: i1) {
          %273 = vector.shuffle %37, %37 [2] : vector<2x2x7xf32>, vector<2x2x7xf32>
          %274 = math.absf %cst_0 : f16
          %275 = vector.insertelement %c24492_i16, %19[%40 : index] : vector<10xi16>
          %276 = arith.shrsi %c2079524800_i32, %c1335811011_i32 : i32
          %277 = math.log %cst_1 : f32
          %278 = arith.remui %in_50, %in : i1
          %279 = affine.min affine_map<(d0, d1, d2) -> (-d0)>(%c0, %c12, %c0)
          %alloc_51 = memref.alloc() : memref<2x2x7xi1>
          %280 = vector.broadcast %in : i1 to vector<2xi1>
          %281 = vector.broadcast %c2079524800_i32 : i32 to vector<2xi32>
          %282 = vector.gather %alloc_51[%c5, %23, %c12] [%281], %280, %280 : memref<2x2x7xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %283 = vector.broadcast %cst_3 : f16 to vector<7xf16>
          %284 = vector.broadcast %false : i1 to vector<7xi1>
          %285 = vector.maskedload %alloc_20[%c0, %c0, %c3], %284, %283 : memref<2x2x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
          %286 = math.tan %cst : f16
          %287 = vector.broadcast %cst_5 : f32 to vector<2x2xf32>
          %dest_52, %accumulated_value_53 = vector.scan <maxf>, %36, %287 {inclusive = true, reduction_dim = 2 : i64} : vector<2x2x7xf32>, vector<2x2xf32>
          %288 = tensor.empty(%c13) : tensor<2x2x?xi16>
          %289 = math.round %cst_1 : f32
          %290 = bufferization.to_tensor %alloc_7 : memref<2xi32>
          %291 = vector.transpose %285, [0] : vector<7xf16> to vector<7xf16>
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %282, %280, %true : vector<2xi1>, vector<2xi1> into i1
          %293 = arith.andi %c-25433_i16, %c17955_i16 : i16
          %294 = affine.min affine_map<(d0, d1, d2) -> (-d2 + d0, -d2 + d0, -(d2 * 8 - 32))>(%c3, %23, %c0)
          %295 = math.powf %11, %11 : tensor<2x2x7xf32>
          %296 = vector.broadcast %c2079524800_i32 : i32 to vector<i32>
          vector.transfer_write %296, %alloc_7[%c2] : vector<i32>, memref<2xi32>
          %297 = vector.insert %c1335811011_i32, %281 [0] : i32 into vector<2xi32>
          %298 = arith.xori %c24492_i16, %c-25433_i16 : i16
          %299 = vector.extract %283[6] : vector<7xf16>
          %300 = math.powf %1, %1 : tensor<2x2x7xf16>
          %301 = index.ceildivs %c3, %c14
          %302 = math.sqrt %cst_4 : f16
          %303 = affine.apply affine_map<(d0) -> ((d0 * 2) ceildiv 16 - d0 * 3)>(%c9)
          %from_elements_54 = tensor.from_elements %c26135_i16, %c24492_i16, %c17955_i16, %c26135_i16, %c-25433_i16, %c-25433_i16, %c-25433_i16, %c17955_i16, %c-25433_i16, %c17955_i16, %c24492_i16, %c26135_i16, %c26135_i16, %c-25433_i16, %c17955_i16, %c24492_i16, %c-25433_i16, %c-25433_i16, %c-25433_i16, %c26135_i16, %c26135_i16, %c26135_i16, %c17955_i16, %c17955_i16, %c26135_i16, %c-25433_i16, %c-25433_i16, %c24492_i16, %c24492_i16, %c26135_i16, %c24492_i16, %c-25433_i16, %c17955_i16, %c26135_i16, %c24492_i16, %c17955_i16, %c24492_i16, %c17955_i16, %c-25433_i16, %c17955_i16, %c17955_i16, %c-25433_i16, %c26135_i16, %c-25433_i16, %c-25433_i16, %c-25433_i16, %c26135_i16, %c17955_i16, %c-25433_i16, %c17955_i16, %c26135_i16, %c-25433_i16, %c26135_i16, %c17955_i16, %c26135_i16, %c24492_i16 : tensor<7x8xi16>
          %304 = math.roundeven %11 : tensor<2x2x7xf32>
          %305 = vector.broadcast %c1335811011_i32 : i32 to vector<10xi32>
          %306 = vector.broadcast %false : i1 to vector<10xi1>
          %307 = vector.maskedload %alloc_18[%c4, %c2], %306, %305 : memref<7x8xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %308 = arith.cmpf olt, %cst_2, %cst_1 : f32
          %309 = vector.broadcast %cst : f16 to vector<10x2xf16>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %260 = index.casts %c1 : index to i32
      %from_elements_47 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5 : tensor<10x2xf32>
      %261 = arith.shrsi %c17955_i16, %c-25433_i16 : i16
      %262 = vector.broadcast %cst_2 : f32 to vector<2x2xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %36, %262 {inclusive = true, reduction_dim = 2 : i64} : vector<2x2x7xf32>, vector<2x2xf32>
      %263 = memref.realloc %alloc_21 : memref<2xf16> to memref<2xf16>
      %264 = vector.broadcast %cst_6 : f16 to vector<2x2x7xf16>
      %265 = arith.minsi %false, %true : i1
      %266 = index.maxu %c6, %c9
      %267 = arith.maxsi %c-25433_i16, %c26135_i16 : i16
      %268 = arith.remf %cst_0, %cst : f16
      %c25442_i16 = arith.constant 25442 : i16
      %269 = arith.remui %true, %false : i1
      %270 = math.absf %cst_3 : f16
      %271 = math.log10 %11 : tensor<2x2x7xf32>
      %272 = vector.reduction <or>, %19 : vector<10xi16> into i16
    }
    %alloca = memref.alloca() : memref<2xf16>
    %44 = index.maxs %c15, %c13
    %45 = vector.transpose %36, [0, 1, 2] : vector<2x2x7xf32> to vector<2x2x7xf32>
    %46 = arith.maxf %cst_5, %cst_1 : f32
    %47 = vector.broadcast %c24492_i16 : i16 to vector<10x2xi16>
    %48 = math.ipowi %14, %14 : tensor<2x2x7xi64>
    %49 = arith.maxf %cst_5, %cst_2 : f32
    %50 = arith.remf %cst_6, %cst_3 : f16
    %51 = arith.subi %c26135_i16, %c26135_i16 : i16
    %52 = math.powf %4, %4 : tensor<10x2xf16>
    %53 = scf.if %false -> (i64) {
      %259 = math.round %cst_1 : f32
      %260 = arith.xori %c24492_i16, %c17955_i16 : i16
      %261 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
      %262 = math.absi %8 : tensor<2xi32>
      %263 = arith.maxsi %c17955_i16, %c17955_i16 : i16
      %264 = affine.if affine_set<(d0) : ((d0 - 88) floordiv 128 == 0, 0 == 0, d0 - 96 == 0, 0 >= 0)>(%c7) -> memref<7x8xi1> {
        %267 = math.expm1 %cst_2 : f32
        %inserted_47 = tensor.insert %cst_0 into %splat[%c2, %c7] : tensor<7x8xf16>
        %alloc_48 = memref.alloc() : memref<8x7xi32>
        memref.tensor_store %transposed, %alloc_48 : memref<8x7xi32>
        memref.store %c1335811011_i32, %alloc_18[%c5, %c3] : memref<7x8xi32>
        %c0_i64_49 = arith.constant 0 : i64
        %268 = vector.broadcast %c0_i64_49 : i64 to vector<8xi64>
        %269 = vector.broadcast %true : i1 to vector<8xi1>
        %270 = vector.maskedload %alloc_10[%c0], %269, %268 : memref<2xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %271 = arith.maxsi %c24492_i16, %c24492_i16 : i16
        %272 = arith.andi %c1335811011_i32, %c2079524800_i32 : i32
        %rank = tensor.rank %15 : tensor<2x2x7xi32>
        affine.yield %alloc_13 : memref<7x8xi1>
      } else {
        %267 = vector.broadcast %cst_3 : f16 to vector<7xf16>
        %268 = vector.broadcast %true : i1 to vector<7xi1>
        %269 = vector.maskedload %alloc_20[%c1, %c1, %c4], %268, %267 : memref<2x2x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %alloc_47 = memref.alloc() : memref<10x2xi16>
        %270 = vector.broadcast %true : i1 to vector<10x2xi1>
        %271 = vector.broadcast %c1335811011_i32 : i32 to vector<10x2xi32>
        %272 = vector.gather %alloc_47[%c3, %c11] [%271], %270, %47 : memref<10x2xi16>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xi16> into vector<10x2xi16>
        %273 = affine.max affine_map<(d0, d1, d2, d3) -> (-((-(d1 - 120)) ceildiv 64 + d1), d3 mod 2, d2)>(%c6, %c12, %c1, %c11)
        %274 = index.mul %c4, %c12
        %275 = index.mul %44, %c4
        %276 = vector.broadcast %true : i1 to vector<2xi1>
        %277 = vector.transfer_write %276, %6[%c10, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi1>, tensor<7x8xi1>
        vector.print %19 : vector<10xi16>
        %278 = vector.broadcast %false : i1 to vector<7x8xi1>
        affine.yield %alloc_13 : memref<7x8xi1>
      }
      %265 = bufferization.clone %alloc_21 : memref<2xf16> to memref<2xf16>
      %266 = math.exp2 %11 : tensor<2x2x7xf32>
      %c1_i64 = arith.constant 1 : i64
      scf.yield %c1_i64 : i64
    } else {
      %259 = vector.broadcast %c24492_i16 : i16 to vector<10x10xi16>
      %260 = vector.outerproduct %19, %19, %259 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
      %261 = memref.load %alloc_14[%c3, %c7] : memref<7x8xf16>
      %262 = math.tanh %cst : f16
      %263 = math.log1p %cst_1 : f32
      %264 = math.tanh %cst_6 : f16
      memref.assume_alignment %alloc_12, 1 : memref<2xi16>
      %265 = affine.apply affine_map<(d0, d1) -> (d1)>(%c1, %40)
      %266 = index.divu %c13, %c0
      %c0_i64_47 = arith.constant 0 : i64
      scf.yield %c0_i64_47 : i64
    }
    %54 = math.ipowi %7, %7 : tensor<2xi1>
    %55 = index.add %c10, %c0
    %56 = arith.subi %c24492_i16, %c17955_i16 : i16
    %57 = arith.remf %cst_0, %cst_3 : f16
    %58 = math.log1p %cst_0 : f16
    %59 = math.absf %cst_0 : f16
    %60 = math.absi %18 : tensor<8x7xi32>
    %cast = tensor.cast %3 : tensor<7x8xi32> to tensor<?x?xi32>
    %61 = arith.shrsi %false, %true : i1
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_24 = arith.constant 0 : i64
    %62 = vector.transfer_read %alloc_17[%c10, %c2], %c0_i64_24 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<10x2xi64>, vector<10xi64>
    %63 = vector.broadcast %false : i1 to vector<8xi1>
    %64 = vector.transfer_write %63, %12[%c5, %40] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi1>, tensor<10x2xi1>
    %65 = affine.if affine_set<(d0) : (-d0 + 60 >= 0, (-d0 - 68) * 2 == 0)>(%c10) -> memref<10x2xi64> {
      memref.store %c1335811011_i32, %alloc_7[%c0] : memref<2xi32>
      %259 = arith.negf %cst_4 : f16
      %260 = index.ceildivu %c15, %c0
      %261 = arith.remui %c24492_i16, %c24492_i16 : i16
      %262 = index.casts %c11 : index to i32
      %263 = vector.extract_strided_slice %19 {offsets = [1], sizes = [8], strides = [1]} : vector<10xi16> to vector<8xi16>
      %264 = arith.maxf %cst_1, %cst_5 : f32
      %265 = memref.load %alloc_9[%c4, %c1] : memref<7x8xi32>
      affine.yield %alloc_17 : memref<10x2xi64>
    } else {
      %259 = vector.extract %19[3] : vector<10xi16>
      scf.if %true {
        %266 = tensor.empty(%c10) : tensor<?xi32>
        %267 = arith.maxui %false, %true : i1
        %268 = vector.broadcast %cst_4 : f16 to vector<10x2xf16>
        %269 = math.rsqrt %cst_2 : f32
        memref.tensor_store %8, %alloc_7 : memref<2xi32>
        %270 = arith.divf %cst, %cst_3 : f16
        %271 = math.ipowi %false, %true : i1
        %272 = arith.subi %false, %true : i1
      } else {
        %266 = math.round %splat : tensor<7x8xf16>
        %267 = arith.minsi %false, %false : i1
        %268 = index.castu %c1335811011_i32 : i32 to index
        %269 = math.exp %11 : tensor<2x2x7xf32>
        %270 = vector.broadcast %c24492_i16 : i16 to vector<10x10xi16>
        %271 = vector.outerproduct %19, %19, %270 {kind = #vector.kind<or>} : vector<10xi16>, vector<10xi16>
        %true_47 = index.bool.constant true
        %272 = math.round %4 : tensor<10x2xf16>
        %273 = math.fma %cst_0, %cst_4, %cst : f16
      }
      %260 = scf.while (%arg0 = %c24492_i16) : (i16) -> i16 {
        %266 = affine.min affine_map<(d0, d1) -> (d1 floordiv 4, d1 - d1 floordiv 4)>(%40, %c15)
        %267 = vector.splat %false : vector<10x2xi1>
        %alloc_47 = memref.alloc() : memref<7x8xf16>
        memref.copy %alloc_14, %alloc_47 : memref<7x8xf16> to memref<7x8xf16>
        %268 = bufferization.clone %alloc_22 : memref<i32> to memref<i32>
        %269 = vector.broadcast %cst_6 : f16 to vector<2xf16>
        %270 = vector.broadcast %cst_2 : f32 to vector<2x7x2x7xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %36, %37, %270 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
        %272 = math.fpowi %4, %24 : tensor<10x2xf16>, tensor<10x2xi32>
        %273 = index.ceildivs %23, %c11
        scf.condition(%false) %arg0 : i16
      } do {
      ^bb0(%arg0: i16):
        %266 = index.maxu %c9, %c1
        %cst_47 = arith.constant 1.000000e+00 : f16
        %267 = vector.transfer_read %4[%c0, %266], %cst_47 : tensor<10x2xf16>, vector<7xf16>
        %268 = tensor.empty(%23) : tensor<7x?xi16>
        %269 = index.maxu %c3, %c4
        %270 = vector.broadcast %cst_1 : f32 to vector<7x8xf32>
        %271 = math.ipowi %53, %c0_i64 : i64
        %272 = vector.transpose %36, [1, 0, 2] : vector<2x2x7xf32> to vector<2x2x7xf32>
        memref.assume_alignment %alloc_21, 8 : memref<2xf16>
        %from_elements_48 = tensor.from_elements %true, %true, %false, %true, %false, %true, %true, %false, %false, %false, %false, %true, %false, %true, %true, %true, %true, %true, %true, %false, %false, %true, %true, %true, %true, %true, %false, %false : tensor<2x2x7xi1>
        %273 = math.ctpop %true : i1
        %274 = math.powf %cst_2, %cst_5 : f32
        %275 = vector.bitcast %47 : vector<10x2xi16> to vector<10x2xf16>
        %276 = math.atan2 %cst_2, %cst_1 : f32
        %277 = arith.shrui %c26135_i16, %c17955_i16 : i16
        %278 = math.round %4 : tensor<10x2xf16>
        %279 = arith.xori %true, %true : i1
        scf.yield %c17955_i16 : i16
      }
      %261 = math.atan %cst_0 : f16
      %262 = math.log2 %cst_5 : f32
      %263 = arith.andi %false, %false : i1
      %264 = arith.divf %cst_3, %cst_0 : f16
      %265 = vector.reduction <maxui>, %63 : vector<8xi1> into i1
      affine.yield %alloc_17 : memref<10x2xi64>
    }
    %66 = vector.transpose %36, [1, 2, 0] : vector<2x2x7xf32> to vector<2x7x2xf32>
    %67 = memref.realloc %alloc_12 : memref<2xi16> to memref<8xi16>
    %alloca_25 = memref.alloca() : memref<2x2x7xi16>
    %68 = arith.cmpf olt, %cst_4, %cst_4 : f16
    %69 = math.fpowi %1, %15 : tensor<2x2x7xf16>, tensor<2x2x7xi32>
    %70 = vector.broadcast %c5 : index to vector<2xindex>
    %71 = vector.broadcast %true : i1 to vector<2xi1>
    %72 = vector.broadcast %cst_0 : f16 to vector<2xf16>
    vector.scatter %alloc_20[%c0, %c1, %c2] [%70], %71, %72 : memref<2x2x7xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
    %73 = index.divu %40, %c13
    %74 = vector.load %alloc_18[%c6, %c7] : memref<7x8xi32>, vector<10x2xi32>
    %75 = math.absf %4 : tensor<10x2xf16>
    %76 = arith.divf %cst_5, %cst_2 : f32
    %alloca_26 = memref.alloca() : memref<10x2xf16>
    %77 = memref.alloca_scope  -> (memref<10x2xi16>) {
      %alloca_47 = memref.alloca() : memref<10x2xf32>
      %alloca_48 = memref.alloca() : memref<10x2xi1>
      %rank = tensor.rank %1 : tensor<2x2x7xf16>
      %259 = scf.if %false -> (i32) {
        %287 = bufferization.clone %alloc_13 : memref<7x8xi1> to memref<7x8xi1>
        %288 = math.rsqrt %cst_3 : f16
        %289 = affine.max affine_map<(d0, d1, d2) -> (((d2 floordiv 8) * 4 - d1) * 16)>(%44, %44, %c14)
        %290 = math.fpowi %cst_5, %c1335811011_i32 : f32, i32
        %false_51 = arith.constant false
        %291 = math.absi %6 : tensor<7x8xi1>
        %292 = vector.load %alloc_20[%c0, %c0, %c5] : memref<2x2x7xf16>, vector<7x8xf16>
        %293 = arith.andi %c1335811011_i32, %c2079524800_i32 : i32
        scf.yield %c2079524800_i32 : i32
      } else {
        %287 = memref.load %alloc_14[%c1, %c1] : memref<7x8xf16>
        %288 = arith.cmpf uge, %cst_4, %cst_0 : f16
        %false_51 = arith.constant false
        %false_52 = arith.constant false
        %289 = vector.transfer_read %2[%c8, %c6], %false_52 : tensor<10x2xi1>, vector<i1>
        %290 = math.ctpop %0 : tensor<10x2xi16>
        %291 = math.cos %cst_3 : f16
        %292 = arith.addi %false, %false_51 : i1
        %293 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 8, d0 - 1)>(%c3, %23)
        %c22125_i16 = arith.constant 22125 : i16
        scf.yield %c1335811011_i32 : i32
      }
      %260 = arith.cmpf ult, %cst_1, %cst_2 : f32
      %261 = affine.apply affine_map<(d0, d1) -> (d1)>(%c10, %c15)
      %262 = math.tanh %cst_1 : f32
      %263 = index.divs %rank, %c11
      %264 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 32, d1 ceildiv 32, -(d1 mod 16 + 64), -(d1 mod 16 + 64))>(%73, %c6)
      %265 = math.fpowi %cst, %c1335811011_i32 : f16, i32
      %266 = index.mul %c11, %c7
      %267 = math.log10 %cst_6 : f16
      %alloc_49 = memref.alloc() : memref<2x2x7xf32>
      %268 = math.ctpop %24 : tensor<10x2xi32>
      %269 = math.fma %11, %11, %11 : tensor<2x2x7xf32>
      %270 = vector.broadcast %cst_2 : f32 to vector<2x7x2x7xf32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %36, %37, %270 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
      %272 = arith.addi %c17955_i16, %c-25433_i16 : i16
      %273 = vector.broadcast %cst_2 : f32 to vector<7x8xf32>
      %274 = vector.load %alloc_13[%c2, %c1] : memref<7x8xi1>, vector<7x8xi1>
      %275 = memref.load %alloc_15[%c0] : memref<2xi32>
      %276 = arith.shrsi %c24492_i16, %c17955_i16 : i16
      %277 = bufferization.clone %alloc_10 : memref<2xi64> to memref<2xi64>
      %278 = arith.subi %53, %53 : i64
      %279 = arith.maxui %53, %53 : i64
      %280 = arith.andi %false, %true : i1
      %281 = math.ipowi %10, %7 : tensor<2xi1>
      %282 = scf.index_switch %c11 -> tensor<2xi1> 
      case 1 {
        %287 = arith.shrui %c24492_i16, %c17955_i16 : i16
        %288 = math.fma %cst_5, %cst_5, %cst_1 : f32
        memref.assume_alignment %alloc_7, 2 : memref<2xi32>
        %splat_51 = tensor.splat %c-25433_i16 : tensor<7x8xi16>
        memref.store %true, %alloc_13[%c0, %c6] : memref<7x8xi1>
        %289 = arith.muli %c0_i64, %c0_i64 : i64
        %290 = math.fpowi %splat, %5 : tensor<7x8xf16>, tensor<7x8xi32>
        %291 = index.add %c11, %c5
        %292 = vector.broadcast %cst_2 : f32 to vector<8x2x2xf32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %273, %37, %292 : vector<7x8xf32>, vector<2x2x7xf32> into vector<8x2x2xf32>
        %294 = memref.load %alloc_10[%c1] : memref<2xi64>
        %c0_i32 = arith.constant 0 : i32
        %295 = vector.transfer_read %13[%266, %c8], %c0_i32 : tensor<7x8xi32>, vector<8xi32>
        %296 = vector.broadcast %cst_1 : f32 to vector<2x2x8xf32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %36, %273, %296 : vector<2x2x7xf32>, vector<7x8xf32> into vector<2x2x8xf32>
        %298 = math.fpowi %11, %15 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
        %299 = index.add %c3, %c13
        %300 = vector.transpose %37, [1, 0, 2] : vector<2x2x7xf32> to vector<2x2x7xf32>
        %301 = math.sqrt %1 : tensor<2x2x7xf16>
        scf.yield %10 : tensor<2xi1>
      }
      case 2 {
        %287 = arith.muli %c17955_i16, %c-25433_i16 : i16
        %288 = math.ctpop %10 : tensor<2xi1>
        %289 = math.ctlz %10 : tensor<2xi1>
        %290 = arith.remf %cst_4, %cst_0 : f16
        %291 = index.floordivs %c5, %266
        %292 = math.log10 %4 : tensor<10x2xf16>
        %293 = arith.maxsi %53, %53 : i64
        %294 = math.copysign %4, %4 : tensor<10x2xf16>
        %295 = arith.remf %cst_5, %cst_2 : f32
        %cast_51 = tensor.cast %14 : tensor<2x2x7xi64> to tensor<?x?x?xi64>
        %296 = index.castu %c17955_i16 : i16 to index
        %297 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3 - 64)>(%c10, %c11, %55, %c15)
        %298 = arith.maxf %cst_4, %cst_6 : f16
        %alloc_52 = memref.alloc() : memref<10x2xi1>
        %299 = affine.max affine_map<(d0, d1, d2) -> (-d0, -d0, d1 mod 4)>(%c3, %296, %55)
        %300 = vector.broadcast %cst_5 : f32 to vector<8xf32>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %273, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<7x8xf32>, vector<8xf32>
        scf.yield %10 : tensor<2xi1>
      }
      default {
        %287 = arith.remsi %false, %true : i1
        %288 = math.atan %cst_0 : f16
        %289 = math.round %cst_6 : f16
        %290 = arith.cmpf ole, %cst, %cst : f16
        %291 = math.log %1 : tensor<2x2x7xf16>
        %292 = vector.shuffle %274, %274 [0, 1, 5, 8, 12] : vector<7x8xi1>, vector<7x8xi1>
        %293 = arith.addi %true, %true : i1
        %294 = vector.transpose %63, [0] : vector<8xi1> to vector<8xi1>
        %295 = arith.maxsi %true, %true : i1
        %296 = math.powf %splat, %splat : tensor<7x8xf16>
        %297 = vector.broadcast %53 : i64 to vector<i64>
        vector.transfer_write %297, %277[%c1] : vector<i64>, memref<2xi64>
        %298 = arith.maxui %c1335811011_i32, %c2079524800_i32 : i32
        %299 = math.ctpop %15 : tensor<2x2x7xi32>
        %300 = memref.realloc %alloc_7 : memref<2xi32> to memref<8xi32>
        %301 = math.absf %splat : tensor<7x8xf16>
        %expanded_51 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<2x2x7xf32> into tensor<2x2x7x1xf32>
        scf.yield %7 : tensor<2xi1>
      }
      %283 = math.exp %11 : tensor<2x2x7xf32>
      %284 = arith.divui %c26135_i16, %c-25433_i16 : i16
      %285 = index.mul %c9, %c3
      memref.assume_alignment %alloc_17, 8 : memref<10x2xi64>
      %286 = vector.multi_reduction <add>, %273, %273 [] : vector<7x8xf32> to vector<7x8xf32>
      %alloc_50 = memref.alloc() : memref<10x2xi16>
      memref.alloca_scope.return %alloc_50 : memref<10x2xi16>
    }
    %78 = index.casts %c1335811011_i32 : i32 to index
    %79 = math.tanh %cst_2 : f32
    %80 = vector.bitcast %74 : vector<10x2xi32> to vector<10x2xi32>
    %81 = scf.execute_region -> i32 {
      %259 = math.ctlz %2 : tensor<10x2xi1>
      %260 = math.log2 %cst_6 : f16
      %261 = arith.remf %cst_3, %cst : f16
      %262 = arith.cmpf ueq, %cst_5, %cst_1 : f32
      %263 = math.tanh %splat : tensor<7x8xf16>
      %264 = math.fma %cst_4, %cst_6, %cst_6 : f16
      %265 = memref.load %alloc_8[%c0, %c1, %c2] : memref<2x2x7xf32>
      %rank = tensor.rank %6 : tensor<7x8xi1>
      %generated_47 = tensor.generate %c15, %c15 {
      ^bb0(%arg0: index, %arg1: index):
        %272 = arith.remf %cst_6, %cst_0 : f16
        %273 = math.log2 %cst_0 : f16
        %expanded_48 = tensor.expand_shape %7 [[0, 1]] : tensor<2xi1> into tensor<2x1xi1>
        %274 = math.cos %cst_0 : f16
        tensor.yield %c2079524800_i32 : i32
      } : tensor<?x?xi32>
      %266 = math.absi %20 : tensor<2xi32>
      %267 = arith.negf %cst_2 : f32
      %c1120400756_i64 = arith.constant 1120400756 : i64
      %268 = index.floordivs %c1, %c13
      %269 = index.add %c13, %23
      %270 = scf.index_switch %268 -> index 
      case 1 {
        vector.print %74 : vector<10x2xi32>
        %272 = math.ctlz %7 : tensor<2xi1>
        memref.store %c-25433_i16, %alloc_12[%c0] : memref<2xi16>
        %273 = arith.remf %cst_4, %cst : f16
        %274 = vector.bitcast %19 : vector<10xi16> to vector<10xf16>
        %275 = math.fpowi %cst_4, %c1335811011_i32 : f16, i32
        %276 = math.absi %true : i1
        bufferization.dealloc_tensor %21 : tensor<i32>
        %277 = memref.load %alloc_8[%c1, %c0, %c4] : memref<2x2x7xf32>
        %278 = math.log2 %splat : tensor<7x8xf16>
        %279 = math.absf %11 : tensor<2x2x7xf32>
        %280 = math.cos %11 : tensor<2x2x7xf32>
        %281 = math.absf %4 : tensor<10x2xf16>
        %282 = vector.shuffle %47, %47 [0, 1, 2, 4, 5, 7, 8, 9, 10, 12, 13, 14, 17, 19] : vector<10x2xi16>, vector<10x2xi16>
        %283 = bufferization.clone %alloc_21 : memref<2xf16> to memref<2xf16>
        %284 = math.atan %1 : tensor<2x2x7xf16>
        scf.yield %c15 : index
      }
      case 2 {
        %272 = vector.broadcast %cst_5 : f32 to vector<2x7xf32>
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %37, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
        %273 = vector.broadcast %false : i1 to vector<i1>
        %274 = vector.transfer_write %273, %12[%78, %c14] : vector<i1>, tensor<10x2xi1>
        %275 = vector.broadcast %c2079524800_i32 : i32 to vector<10xi32>
        %dest_50, %accumulated_value_51 = vector.scan <minui>, %74, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<10x2xi32>, vector<10xi32>
        %276 = vector.broadcast %c2079524800_i32 : i32 to vector<2x2xi32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %80, %74, %276 : vector<10x2xi32>, vector<10x2xi32> into vector<2x2xi32>
        %278 = arith.cmpf one, %cst_1, %cst_2 : f32
        %279 = vector.extract_strided_slice %74 {offsets = [2], sizes = [3], strides = [1]} : vector<10x2xi32> to vector<3x2xi32>
        %280 = index.divs %c13, %73
        %281 = math.cos %cst_5 : f32
        %282 = bufferization.to_memref %6 : memref<7x8xi1>
        %283 = math.ctlz %transposed : tensor<8x7xi32>
        %284 = vector.broadcast %c1335811011_i32 : i32 to vector<2x2xi32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %74, %74, %284 : vector<10x2xi32>, vector<10x2xi32> into vector<2x2xi32>
        %286 = math.ctpop %10 : tensor<2xi1>
        %287 = tensor.empty() : tensor<7x8xi32>
        %288 = index.casts %c1 : index to i32
        %289 = math.atan %cst_5 : f32
        %290 = math.absi %c24492_i16 : i16
        scf.yield %c3 : index
      }
      case 3 {
        %272 = index.add %78, %c10
        %273 = math.atan2 %cst_3, %cst_6 : f16
        %274 = math.log10 %cst_6 : f16
        %275 = arith.remsi %c0_i64, %c0_i64 : i64
        %276 = math.cos %cst_4 : f16
        %277 = arith.andi %c2079524800_i32, %c1335811011_i32 : i32
        %278 = arith.negf %cst_4 : f16
        %279 = index.floordivs %c14, %rank
        memref.store %cst_0, %alloc_20[%c0, %c1, %c1] : memref<2x2x7xf16>
        memref.store %c0_i64, %alloc_17[%c7, %c1] : memref<10x2xi64>
        vector.print %19 : vector<10xi16>
        %280 = math.ctlz %14 : tensor<2x2x7xi64>
        %281 = index.casts %c9 : index to i32
        %282 = math.ctpop %21 : tensor<i32>
        %extracted_48 = tensor.extract %14[%c1, %c1, %c4] : tensor<2x2x7xi64>
        %283 = math.log2 %cst_2 : f32
        scf.yield %55 : index
      }
      case 4 {
        %272 = math.log1p %cst_5 : f32
        %273 = vector.transpose %63, [0] : vector<8xi1> to vector<8xi1>
        %alloca_48 = memref.alloca() : memref<2xi32>
        %274 = math.cttz %6 : tensor<7x8xi1>
        %275 = math.log10 %cst : f16
        %276 = arith.cmpf ole, %cst, %cst_3 : f16
        %277 = math.round %4 : tensor<10x2xf16>
        %278 = tensor.empty() : tensor<2x2x7xi1>
        %279 = vector.broadcast %true : i1 to vector<8x8xi1>
        %280 = vector.outerproduct %63, %63, %279 {kind = #vector.kind<mul>} : vector<8xi1>, vector<8xi1>
        %281 = math.atan2 %1, %1 : tensor<2x2x7xf16>
        %282 = math.log10 %4 : tensor<10x2xf16>
        %283 = arith.xori %c17955_i16, %c-25433_i16 : i16
        %284 = vector.extract %74[9] : vector<10x2xi32>
        %285 = vector.extract %37[1] : vector<2x2x7xf32>
        %286 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %287 = vector.broadcast %false : i1 to vector<2xi1>
        %288 = vector.maskedload %alloc_16[%c1, %c0, %c6], %287, %286 : memref<2x2x7xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %289 = arith.divsi %c2079524800_i32, %c1335811011_i32 : i32
        scf.yield %269 : index
      }
      default {
        %272 = math.cttz %17 : tensor<2x2x7xi64>
        %273 = vector.broadcast %cst_6 : f16 to vector<2x2x7xf16>
        %274 = tensor.empty() : tensor<7x8xi64>
        %275 = arith.remf %cst, %cst_6 : f16
        %alloca_48 = memref.alloca() : memref<2x2x7xi1>
        %276 = index.sub %c1, %c2
        %277 = bufferization.to_tensor %alloc_14 : memref<7x8xf16>
        %278 = arith.maxui %c24492_i16, %c-25433_i16 : i16
        %279 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
        %280 = vector.outerproduct %19, %19, %279 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
        %281 = math.ctpop %12 : tensor<10x2xi1>
        %282 = index.floordivs %c9, %rank
        %283 = math.ctlz %0 : tensor<10x2xi16>
        %284 = math.ctlz %10 : tensor<2xi1>
        %285 = vector.broadcast %cst_2 : f32 to vector<10x2xf32>
        %286 = vector.fma %285, %285, %285 : vector<10x2xf32>
        %287 = tensor.empty() : tensor<2xi16>
        %288 = index.add %268, %c15
        scf.yield %c12 : index
      }
      %271 = math.floor %cst_5 : f32
      scf.yield %c2079524800_i32 : i32
    }
    %82 = index.mul %c6, %c7
    %83 = arith.divf %cst_1, %cst_1 : f32
    %84 = scf.execute_region -> vector<10x2xf32> {
      %259 = math.round %11 : tensor<2x2x7xf32>
      %260 = math.tan %cst_4 : f16
      %261 = arith.minui %81, %c2079524800_i32 : i32
      %262 = arith.addi %c24492_i16, %c-25433_i16 : i16
      %263 = arith.shrui %c17955_i16, %c-25433_i16 : i16
      %264 = vector.broadcast %c2079524800_i32 : i32 to vector<10xi32>
      %265 = vector.transfer_write %264, %3[%c10, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi32>, tensor<7x8xi32>
      %266 = math.absi %12 : tensor<10x2xi1>
      %267 = tensor.empty() : tensor<2xi32>
      %mapped = linalg.map ins(%8, %alloc_7 : tensor<2xi32>, memref<2xi32>) outs(%267 : tensor<2xi32>)
        (%in: i32, %in_47: i32) {
          %278 = math.fpowi %cst_6, %c1335811011_i32 : f16, i32
          %279 = vector.broadcast %78 : index to vector<8xindex>
          %280 = vector.broadcast %in : i32 to vector<8xi32>
          vector.scatter %alloc_9[%c3, %c1] [%279], %63, %280 : memref<7x8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
          %281 = memref.realloc %alloc_12 : memref<2xi16> to memref<2xi16>
          %282 = index.sub %23, %c12
          %283 = index.sub %44, %282
          %alloc_48 = memref.alloc() : memref<2x2x7xi64>
          memref.tensor_store %16, %alloc_48 : memref<2x2x7xi64>
          %284 = index.add %c15, %44
          %alloc_49 = memref.alloc() : memref<2x2x7xf16>
          %285 = vector.broadcast %in_47 : i32 to vector<10x10xi32>
          %286 = vector.outerproduct %264, %264, %285 {kind = #vector.kind<or>} : vector<10xi32>, vector<10xi32>
          %287 = arith.shrsi %c24492_i16, %c17955_i16 : i16
          %288 = vector.broadcast %true : i1 to vector<i1>
          vector.transfer_write %288, %alloc_13[%c6, %282] : vector<i1>, memref<7x8xi1>
          %289 = arith.remf %cst_3, %cst_0 : f16
          %290 = arith.divui %c-25433_i16, %c-25433_i16 : i16
          %291 = arith.divf %cst_6, %cst_4 : f16
          %292 = tensor.empty(%c9) : tensor<?x2xf32>
          %293 = index.ceildivs %c3, %73
          %294 = arith.remf %cst_5, %cst_1 : f32
          %alloca_50 = memref.alloca() : memref<7x8xi64>
          vector.print %288 : vector<i1>
          %295 = index.maxs %c10, %c11
          %cast_51 = tensor.cast %12 : tensor<10x2xi1> to tensor<?x?xi1>
          %296 = index.castu %81 : i32 to index
          %from_elements_52 = tensor.from_elements %cst_5, %cst_2, %cst_1, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_1, %cst_5, %cst_2 : tensor<10x2xf32>
          %297 = index.maxs %c4, %c9
          %rank = tensor.rank %5 : tensor<7x8xi32>
          %298 = math.log2 %cst : f16
          %299 = math.atan2 %cst, %cst_0 : f16
          %alloc_53 = memref.alloc() : memref<2x2x7xf16>
          %300 = arith.shrui %81, %c1335811011_i32 : i32
          %301 = vector.transpose %47, [0, 1] : vector<10x2xi16> to vector<10x2xi16>
          %302 = math.fpowi %cst_6, %c2079524800_i32 : f16, i32
          %303 = vector.transpose %264, [0] : vector<10xi32> to vector<10xi32>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %268 = math.ipowi %14, %14 : tensor<2x2x7xi64>
      %269 = vector.broadcast %false : i1 to vector<8x8xi1>
      %270 = vector.outerproduct %63, %63, %269 {kind = #vector.kind<or>} : vector<8xi1>, vector<8xi1>
      %271 = vector.bitcast %36 : vector<2x2x7xf32> to vector<2x2x7xf32>
      %272 = math.atan %cst : f16
      %273 = memref.realloc %alloc_21 : memref<2xf16> to memref<7xf16>
      %274 = math.atan %11 : tensor<2x2x7xf32>
      %275 = arith.mulf %cst_5, %cst_5 : f32
      %276 = index.casts %81 : i32 to index
      %277 = vector.broadcast %cst_5 : f32 to vector<10x2xf32>
      scf.yield %277 : vector<10x2xf32>
    }
    %85 = math.cos %splat : tensor<7x8xf16>
    %86 = math.floor %11 : tensor<2x2x7xf32>
    %87 = math.log2 %11 : tensor<2x2x7xf32>
    %88 = affine.max affine_map<(d0) -> (((d0 ceildiv 8) ceildiv 8) mod 32, ((d0 mod 16) floordiv 4 + (d0 ceildiv 8) ceildiv 8 - 32) mod 32)>(%c7)
    scf.if %false {
      %259 = math.expm1 %cst : f16
      %260 = memref.realloc %alloc_10 : memref<2xi64> to memref<8xi64>
      %261 = math.log1p %1 : tensor<2x2x7xf16>
      memref.store %c1335811011_i32, %alloc_18[%c1, %c3] : memref<7x8xi32>
      %262 = math.log2 %1 : tensor<2x2x7xf16>
      %from_elements_47 = tensor.from_elements %c17955_i16, %c-25433_i16, %c17955_i16, %c-25433_i16, %c24492_i16, %c-25433_i16, %c17955_i16, %c17955_i16, %c17955_i16, %c17955_i16, %c26135_i16, %c24492_i16, %c26135_i16, %c26135_i16, %c-25433_i16, %c24492_i16, %c24492_i16, %c-25433_i16, %c26135_i16, %c17955_i16, %c24492_i16, %c24492_i16, %c26135_i16, %c24492_i16, %c24492_i16, %c26135_i16, %c26135_i16, %c24492_i16, %c-25433_i16, %c17955_i16, %c17955_i16, %c17955_i16, %c24492_i16, %c24492_i16, %c-25433_i16, %c24492_i16, %c17955_i16, %c24492_i16, %c24492_i16, %c-25433_i16, %c-25433_i16, %c17955_i16, %c-25433_i16, %c17955_i16, %c17955_i16, %c-25433_i16, %c24492_i16, %c17955_i16, %c17955_i16, %c17955_i16, %c26135_i16, %c-25433_i16, %c24492_i16, %c-25433_i16, %c26135_i16, %c17955_i16 : tensor<7x8xi16>
      %263 = index.floordivs %c14, %c10
      %264 = index.sub %c14, %c12
    } else {
      %alloc_47 = memref.alloc() : memref<10x2xi1>
      %259 = index.maxu %c5, %73
      %260 = math.log %splat : tensor<7x8xf16>
      %261 = math.cos %cst_6 : f16
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 32 + 4, d1, d3 floordiv 4, d0)>(%c6, %82, %c1, %c3)
      %263 = math.fpowi %cst_4, %c2079524800_i32 : f16, i32
      memref.alloca_scope  {
        %265 = arith.subi %c26135_i16, %c17955_i16 : i16
        %266 = math.log2 %cst_1 : f32
        %267 = arith.minui %81, %c2079524800_i32 : i32
        %268 = vector.broadcast %true : i1 to vector<8x8xi1>
        %269 = vector.outerproduct %63, %63, %268 {kind = #vector.kind<and>} : vector<8xi1>, vector<8xi1>
        %270 = vector.load %alloc_7[%c1] : memref<2xi32>, vector<10x2xi32>
        %271 = arith.remsi %81, %81 : i32
        %272 = math.ctpop %8 : tensor<2xi32>
        %273 = math.ctlz %9 : tensor<10x2xi64>
        %274 = math.floor %1 : tensor<2x2x7xf16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_48 = arith.constant 0 : i32
        %275 = vector.transfer_read %18[%c2, %c13], %c0_i32_48 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x7xi32>, vector<2xi32>
        %276 = math.tanh %4 : tensor<10x2xf16>
        %277 = index.floordivs %c10, %73
        %278 = arith.cmpf uge, %cst_2, %cst_2 : f32
        %alloc_49 = memref.alloc() : memref<2xf32>
        %279 = math.log10 %cst_2 : f32
        %280 = vector.bitcast %36 : vector<2x2x7xf32> to vector<2x2x7xf32>
        %281 = math.ctlz %12 : tensor<10x2xi1>
        %282 = vector.create_mask %c15, %40 : vector<10x2xi1>
        %283 = vector.bitcast %280 : vector<2x2x7xf32> to vector<2x2x7xi32>
        %284 = memref.realloc %alloc_10 : memref<2xi64> to memref<10xi64>
        %285 = arith.addi %true, %true : i1
        %286 = arith.shrsi %c0_i32, %c0_i32 : i32
        %287 = index.floordivs %c11, %277
        %288 = index.sizeof
        %289 = vector.broadcast %cst_2 : f32 to vector<2x7xf32>
        %dest_50, %accumulated_value_51 = vector.scan <maxf>, %280, %289 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
        %alloca_52 = memref.alloca() : memref<2xi1>
        %alloc_53 = memref.alloc() : memref<2x2x7xi64>
        %290 = vector.broadcast %53 : i64 to vector<7x8xi64>
        %291 = vector.broadcast %true : i1 to vector<7x8xi1>
        %292 = vector.broadcast %c2079524800_i32 : i32 to vector<7x8xi32>
        %293 = vector.gather %alloc_53[%c4, %c14, %c11] [%292], %291, %290 : memref<2x2x7xi64>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi64> into vector<7x8xi64>
        %294 = index.maxs %259, %262
        %295 = math.powf %cst_2, %cst_1 : f32
        %296 = math.ctpop %34 : tensor<10x8xi16>
        %297 = index.maxs %287, %259
        %298 = index.casts %c4 : index to i32
      }
      %264 = tensor.empty() : tensor<2xi16>
      %mapped = linalg.map ins(%alloc_12, %alloc_12, %alloc_12 : memref<2xi16>, memref<2xi16>, memref<2xi16>) outs(%264 : tensor<2xi16>)
        (%in: i16, %in_48: i16, %in_49: i16) {
          %265 = index.floordivs %78, %c2
          %266 = arith.maxf %cst_5, %cst_5 : f32
          %267 = arith.shrui %53, %c0_i64 : i64
          %268 = arith.subi %c1335811011_i32, %c1335811011_i32 : i32
          %269 = vector.load %alloc_17[%c8, %c1] : memref<10x2xi64>, vector<7x8xi64>
          %270 = vector.broadcast %c8 : index to vector<2xindex>
          %271 = vector.broadcast %false : i1 to vector<2xi1>
          %272 = vector.broadcast %c1335811011_i32 : i32 to vector<2xi32>
          vector.scatter %alloc_22[] [%270], %271, %272 : memref<i32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
          %273 = index.ceildivs %c6, %88
          %274 = math.ctpop %12 : tensor<10x2xi1>
          %275 = math.absf %cst_5 : f32
          %extracted_50 = tensor.extract %17[%c0, %c0, %c5] : tensor<2x2x7xi64>
          %276 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
          %277 = affine.min affine_map<(d0) -> (0, 0, -(d0 * 1024 - 2))>(%c15)
          %c1_i16_51 = arith.constant 1 : i16
          %c0_i16_52 = arith.constant 0 : i16
          %278 = vector.transfer_read %0[%23, %c6], %c0_i16_52 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<10x2xi16>, vector<10xi16>
          %279 = math.exp %cst : f16
          %280 = arith.andi %81, %c2079524800_i32 : i32
          %281 = math.cos %cst_0 : f16
          %282 = arith.remf %cst_2, %cst_2 : f32
          %cast_53 = tensor.cast %10 : tensor<2xi1> to tensor<?xi1>
          %283 = math.ctpop %9 : tensor<10x2xi64>
          %284 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
          %285 = vector.outerproduct %276, %276, %284 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
          %286 = math.log2 %cst_5 : f32
          %287 = index.add %c4, %c4
          %288 = bufferization.clone %alloc_16 : memref<2x2x7xf32> to memref<2x2x7xf32>
          %289 = vector.broadcast %cst_5 : f32 to vector<2xf32>
          %290 = vector.fma %289, %289, %289 : vector<2xf32>
          %291 = index.add %40, %23
          %292 = vector.multi_reduction <or>, %63, %false [0] : vector<8xi1> to i1
          %from_elements_54 = tensor.from_elements %false, %292, %true, %true, %false, %false, %true, %false, %292, %true, %true, %292, %false, %false, %true, %292, %false, %false, %292, %292, %false, %false, %292, %292, %false, %292, %292, %292 : tensor<2x2x7xi1>
          %293 = math.ctpop %8 : tensor<2xi32>
          %294 = vector.bitcast %276 : vector<10xi16> to vector<10xi16>
          %295 = arith.remf %cst_5, %cst_5 : f32
          %rank = tensor.rank %6 : tensor<7x8xi1>
          %296 = affine.load %alloc_12[%c12] : memref<2xi16>
          %c0_i16_55 = arith.constant 0 : i16
          linalg.yield %c0_i16_55 : i16
        }
    }
    %89 = math.exp %4 : tensor<10x2xf16>
    %90 = arith.andi %true, %false : i1
    %91 = math.round %cst_0 : f16
    %92 = vector.bitcast %37 : vector<2x2x7xf32> to vector<2x2x7xf32>
    %93 = math.log %cst_2 : f32
    %94 = scf.while (%arg0 = %cst_3) : (f16) -> f16 {
      %259 = memref.load %alloc_21[%c0] : memref<2xf16>
      %260 = arith.divsi %true, %false : i1
      %261 = math.log10 %cst_5 : f32
      %262 = index.floordivs %78, %c13
      %263 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
      %264 = vector.outerproduct %19, %19, %263 {kind = #vector.kind<and>} : vector<10xi16>, vector<10xi16>
      %265 = arith.divsi %c0_i64, %53 : i64
      %266 = index.mul %c11, %23
      %267 = vector.reduction <maxsi>, %19 : vector<10xi16> into i16
      scf.condition(%false) %cst_4 : f16
    } do {
    ^bb0(%arg0: f16):
      %alloc_47 = memref.alloc() : memref<10x2xi16>
      memref.copy %77, %alloc_47 : memref<10x2xi16> to memref<10x2xi16>
      %259 = vector.broadcast %cst_3 : f16 to vector<f16>
      vector.transfer_write %259, %alloc_20[%c9, %23, %82] : vector<f16>, memref<2x2x7xf16>
      vector.print %259 : vector<f16>
      %260 = math.ipowi %6, %6 : tensor<7x8xi1>
      %261 = math.absi %true : i1
      %262 = vector.broadcast %c-25433_i16 : i16 to vector<2x2xi16>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %47, %47, %262 : vector<10x2xi16>, vector<10x2xi16> into vector<2x2xi16>
      %cast_48 = tensor.cast %11 : tensor<2x2x7xf32> to tensor<?x?x?xf32>
      %264 = math.expm1 %arg0 : f16
      %265 = vector.broadcast %cst_5 : f32 to vector<10x2xf32>
      %266 = vector.fma %265, %265, %265 : vector<10x2xf32>
      %267 = math.atan2 %4, %4 : tensor<10x2xf16>
      %268 = math.log %cst_4 : f16
      %269 = index.add %c11, %c3
      %270 = math.fpowi %1, %15 : tensor<2x2x7xf16>, tensor<2x2x7xi32>
      %271 = math.cos %cst : f16
      %272 = arith.remui %c2079524800_i32, %c1335811011_i32 : i32
      %inserted_49 = tensor.insert %cst_1 into %11[%c0, %c1, %c5] : tensor<2x2x7xf32>
      scf.yield %arg0 : f16
    }
    %alloc_27 = memref.alloc() : memref<10x2xi1>
    memref.copy %alloc, %alloc_27 : memref<10x2xi1> to memref<10x2xi1>
    %95 = math.fma %cst_4, %cst_6, %cst : f16
    %96 = index.add %82, %c5
    %97 = arith.subi %true, %false : i1
    %alloca_28 = memref.alloca() : memref<2xi64>
    %98 = arith.divui %c-25433_i16, %c24492_i16 : i16
    %99 = index.maxu %c10, %c4
    %100 = math.round %splat : tensor<7x8xf16>
    %101 = arith.andi %81, %81 : i32
    %102 = math.ctpop %transposed : tensor<8x7xi32>
    %alloc_29 = memref.alloc() : memref<2xi32>
    %103 = bufferization.clone %alloc_16 : memref<2x2x7xf32> to memref<2x2x7xf32>
    %104 = math.absf %1 : tensor<2x2x7xf16>
    %105 = math.tanh %cst_0 : f16
    %106 = vector.broadcast %cst_5 : f32 to vector<2x7x2x7xf32>
    %107 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %37, %92, %106 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
    %108 = math.absf %cst_3 : f16
    %109 = index.add %78, %c8
    %110 = scf.index_switch %23 -> vector<10x2xi1> 
    case 1 {
      %259 = vector.insertelement %false, %63[%88 : index] : vector<8xi1>
      %260 = vector.broadcast %c24492_i16 : i16 to vector<2xi16>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %19, %47, %260 : vector<10xi16>, vector<10x2xi16> into vector<2xi16>
      %262 = math.log1p %cst : f16
      %263 = arith.negf %cst_3 : f16
      %264 = index.divu %96, %109
      %265 = affine.if affine_set<(d0) : (-d0 + -d0 - 4 >= 0, -d0 == 0, -d0 + -d0 - 4 - d0 mod 16 == 0)>(%c10) -> i32 {
        %273 = memref.realloc %alloc_10 : memref<2xi64> to memref<8xi64>
        %274 = index.castu %false : i1 to index
        %275 = math.ctpop %13 : tensor<7x8xi32>
        %cast_49 = tensor.cast %42 : tensor<7x7xi32> to tensor<?x?xi32>
        %276 = vector.shuffle %92, %37 [0, 1, 3] : vector<2x2x7xf32>, vector<2x2x7xf32>
        %277 = index.mul %78, %96
        %from_elements_50 = tensor.from_elements %c24492_i16, %c17955_i16 : tensor<2xi16>
        %278 = vector.bitcast %63 : vector<8xi1> to vector<8xi1>
        affine.yield %c2079524800_i32 : i32
      } else {
        %273 = math.expm1 %cst_1 : f32
        %274 = bufferization.clone %alloc_19 : memref<2x2x7xi32> to memref<2x2x7xi32>
        %275 = bufferization.clone %77 : memref<10x2xi16> to memref<10x2xi16>
        %276 = arith.subi %false, %true : i1
        %277 = arith.divf %cst_3, %cst_3 : f16
        %278 = arith.remui %c0_i64, %53 : i64
        %expanded_49 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<10x2xi64> into tensor<10x2x1xi64>
        %279 = index.ceildivs %109, %73
        affine.yield %c2079524800_i32 : i32
      }
      %266 = math.absi %9 : tensor<10x2xi64>
      %267 = arith.shrui %false, %true : i1
      vector.print %74 : vector<10x2xi32>
      %268 = vector.transpose %36, [2, 1, 0] : vector<2x2x7xf32> to vector<7x2x2xf32>
      %269 = vector.insertelement %c-25433_i16, %19[%c2 : index] : vector<10xi16>
      %expanded_47 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<7x8xi32> into tensor<7x8x1xi32>
      %expanded_48 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x8xi1> into tensor<7x8x1xi1>
      %270 = vector.bitcast %37 : vector<2x2x7xf32> to vector<2x2x7xf32>
      %271 = arith.remf %cst_1, %cst_2 : f32
      memref.store %c1335811011_i32, %alloc_18[%c5, %c4] : memref<7x8xi32>
      %272 = vector.broadcast %false : i1 to vector<10x2xi1>
      scf.yield %272 : vector<10x2xi1>
    }
    case 2 {
      %cast_47 = tensor.cast %12 : tensor<10x2xi1> to tensor<?x?xi1>
      %259 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %260 = vector.broadcast %false : i1 to vector<2xi1>
      %261 = vector.maskedload %alloc_11[%c5, %c0], %260, %259 : memref<10x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %alloca_48 = memref.alloca() : memref<2x2x7xi1>
      %262 = vector.broadcast %cst_1 : f32 to vector<2x7x2x7xf32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %36, %92, %262 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
      %from_elements_49 = tensor.from_elements %true, %true, %false, %false, %false, %false, %false, %false, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %false, %true : tensor<10x2xi1>
      %264 = math.powf %1, %1 : tensor<2x2x7xf16>
      %265 = arith.shrsi %c26135_i16, %c24492_i16 : i16
      %266 = tensor.empty() : tensor<7x8xi32>
      %mapped = linalg.map ins(%3 : tensor<7x8xi32>) outs(%266 : tensor<7x8xi32>)
        (%in: i32) {
          %275 = index.sub %109, %109
          %276 = vector.bitcast %19 : vector<10xi16> to vector<10xi16>
          memref.store %in, %alloc_19[%c1, %c0, %c5] : memref<2x2x7xi32>
          %277 = math.ipowi %5, %5 : tensor<7x8xi32>
          %278 = math.powf %cst, %cst : f16
          %c1_i64 = arith.constant 1 : i64
          %279 = vector.transfer_read %16[%c2, %55, %c6], %c1_i64 : tensor<2x2x7xi64>, vector<8xi64>
          %280 = math.fpowi %cst_5, %81 : f32, i32
          %281 = arith.divsi %81, %81 : i32
          %282 = arith.muli %c26135_i16, %c-25433_i16 : i16
          %283 = index.sub %c12, %23
          %284 = arith.maxf %cst_0, %cst : f16
          %285 = vector.bitcast %47 : vector<10x2xi16> to vector<10x2xi16>
          %alloc_50 = memref.alloc() : memref<7x8xf16>
          memref.copy %alloc_14, %alloc_50 : memref<7x8xf16> to memref<7x8xf16>
          %286 = vector.broadcast %c-25433_i16 : i16 to vector<2xi16>
          %dest_51, %accumulated_value_52 = vector.scan <minui>, %285, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2xi16>, vector<2xi16>
          %287 = vector.broadcast %c26135_i16 : i16 to vector<2xi16>
          %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %47, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2xi16>, vector<2xi16>
          %288 = math.ctlz %c2079524800_i32 : i32
          %289 = arith.remsi %c2079524800_i32, %in : i32
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %63, %63, %true : vector<8xi1>, vector<8xi1> into i1
          %291 = vector.shuffle %285, %285 [1, 3, 4, 5, 11, 13, 15, 17, 19] : vector<10x2xi16>, vector<10x2xi16>
          %292 = math.ctpop %20 : tensor<2xi32>
          %293 = tensor.empty() : tensor<2x2x7xi16>
          %294 = vector.create_mask %88, %73 : vector<10x2xi1>
          %cast_55 = tensor.cast %transposed : tensor<8x7xi32> to tensor<?x?xi32>
          %295 = arith.remf %cst, %cst_3 : f16
          memref.store %c1_i64, %alloc_17[%c8, %c1] : memref<10x2xi64>
          %296 = vector.create_mask %78, %275 : vector<10x2xi1>
          %297 = vector.broadcast %false : i1 to vector<10xi1>
          %298 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %296, %260, %297 : vector<10x2xi1>, vector<2xi1> into vector<10xi1>
          %299 = index.mul %c15, %c4
          %300 = index.castu %99 : index to i32
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_56 = arith.constant 0 : i32
          %301 = vector.transfer_read %20[%283], %c0_i32_56 : tensor<2xi32>, vector<i32>
          %302 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %294, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2xi1>, vector<2xi1>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %267 = math.ipowi %13, %5 : tensor<7x8xi32>
      %268 = arith.divsi %c2079524800_i32, %c2079524800_i32 : i32
      scf.index_switch %c14 
      case 1 {
        %275 = math.powf %cst_0, %cst_3 : f16
        %276 = tensor.empty(%c14) : tensor<?xi1>
        %277 = vector.broadcast %cst_5 : f32 to vector<2x2xf32>
        %278 = vector.outerproduct %261, %261, %277 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
        %expanded_50 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<2x2x7xi64> into tensor<2x2x7x1xi64>
        %279 = vector.broadcast %false : i1 to vector<8x8xi1>
        %280 = vector.outerproduct %63, %63, %279 {kind = #vector.kind<mul>} : vector<8xi1>, vector<8xi1>
        %281 = arith.divf %cst, %cst : f16
        %282 = math.absi %false : i1
        %283 = math.ipowi %10, %7 : tensor<2xi1>
        %284 = arith.remf %cst_0, %cst_3 : f16
        %285 = math.exp %4 : tensor<10x2xf16>
        %286 = index.floordivs %c15, %99
        %287 = arith.remf %cst_1, %cst_2 : f32
        %288 = math.atan %11 : tensor<2x2x7xf32>
        %289 = vector.broadcast %c26135_i16 : i16 to vector<7x8xi16>
        %290 = vector.broadcast %false : i1 to vector<7x8xi1>
        %291 = vector.broadcast %c1335811011_i32 : i32 to vector<7x8xi32>
        %292 = vector.gather %alloc_12[%44] [%291], %290, %289 : memref<2xi16>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi16> into vector<7x8xi16>
        memref.tensor_store %13, %alloc_18 : memref<7x8xi32>
        %293 = arith.remui %c1335811011_i32, %c2079524800_i32 : i32
        scf.yield
      }
      default {
        %expanded_50 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<8x7xi32> into tensor<8x7x1xi32>
        %275 = index.floordivs %23, %c8
        %276 = tensor.empty() : tensor<2x2x7xf16>
        %277 = math.ctpop %7 : tensor<2xi1>
        %278 = vector.broadcast %false : i1 to vector<8x8xi1>
        %279 = vector.outerproduct %63, %63, %278 {kind = #vector.kind<xor>} : vector<8xi1>, vector<8xi1>
        %280 = index.casts %c2 : index to i32
        %281 = vector.maskedload %alloc_16[%c1, %c0, %c6], %260, %259 : memref<2x2x7xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %282 = math.log10 %1 : tensor<2x2x7xf16>
        %283 = math.powf %11, %11 : tensor<2x2x7xf32>
        %284 = arith.maxf %cst_6, %cst_3 : f16
        %285 = index.sizeof
        %286 = vector.transpose %47, [0, 1] : vector<10x2xi16> to vector<10x2xi16>
        %287 = arith.minsi %53, %c0_i64 : i64
        %288 = index.casts %55 : index to i32
        %alloc_51 = memref.alloc() : memref<10x2xi16>
        memref.copy %77, %alloc_51 : memref<10x2xi16> to memref<10x2xi16>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %47, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<10x2xi16>, vector<10xi16>
      }
      %269 = arith.maxf %cst_6, %cst_6 : f16
      %270 = arith.minsi %81, %81 : i32
      %271 = arith.addi %c2079524800_i32, %c1335811011_i32 : i32
      %272 = math.absf %cst_4 : f16
      %273 = index.floordivs %c3, %c0
      %274 = vector.broadcast %true : i1 to vector<10x2xi1>
      scf.yield %274 : vector<10x2xi1>
    }
    case 3 {
      %259 = arith.andi %c26135_i16, %c24492_i16 : i16
      %260 = vector.bitcast %74 : vector<10x2xi32> to vector<10x2xi32>
      %261 = scf.while (%arg0 = %alloc_20) : (memref<2x2x7xf16>) -> memref<2x2x7xf16> {
        %275 = math.powf %cst, %cst_4 : f16
        %276 = index.divs %c11, %82
        %277 = arith.shrui %53, %53 : i64
        %278 = index.floordivs %40, %109
        %279 = arith.subi %c0_i64, %c0_i64 : i64
        %280 = math.log10 %cst_0 : f16
        %281 = vector.broadcast %cst_5 : f32 to vector<7x8xf32>
        %282 = vector.fma %281, %281, %281 : vector<7x8xf32>
        %283 = bufferization.clone %alloc_11 : memref<10x2xf32> to memref<10x2xf32>
        scf.condition(%false) %arg0 : memref<2x2x7xf16>
      } do {
      ^bb0(%arg0: memref<2x2x7xf16>):
        %275 = vector.transpose %36, [2, 0, 1] : vector<2x2x7xf32> to vector<7x2x2xf32>
        %276 = tensor.empty() : tensor<2xf32>
        %277 = index.casts %c26135_i16 : i16 to index
        %278 = vector.broadcast %cst_3 : f16 to vector<10x2xf16>
        %279 = index.add %c0, %99
        %280 = arith.remf %cst_1, %cst_1 : f32
        %281 = index.maxu %99, %279
        %282 = index.castu %55 : index to i32
        %283 = math.log %cst_2 : f32
        %284 = arith.shrsi %53, %53 : i64
        %285 = index.sub %82, %c7
        %286 = arith.shrsi %c1335811011_i32, %c1335811011_i32 : i32
        %extracted_47 = tensor.extract %1[%c0, %c0, %c0] : tensor<2x2x7xf16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_48 = arith.constant 0 : i32
        %287 = vector.transfer_read %15[%c9, %109, %55], %c0_i32_48 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<2x2x7xi32>, vector<7x7xi32>
        %288 = arith.subi %false, %false : i1
        %289 = arith.shrui %c-25433_i16, %c17955_i16 : i16
        scf.yield %alloc_20 : memref<2x2x7xf16>
      }
      %262 = index.ceildivs %82, %c2
      %263 = math.ipowi %c24492_i16, %c-25433_i16 : i16
      vector.print %92 : vector<2x2x7xf32>
      %264 = index.ceildivs %c7, %262
      %265 = arith.addi %c2079524800_i32, %c1335811011_i32 : i32
      %266 = arith.maxsi %81, %c2079524800_i32 : i32
      %267 = arith.maxui %c1335811011_i32, %c1335811011_i32 : i32
      %268 = math.ctlz %20 : tensor<2xi32>
      %269 = bufferization.to_memref %15 : memref<2x2x7xi32>
      %270 = tensor.empty(%264) : tensor<2x?x7xi16>
      %271 = arith.minf %cst_6, %cst_6 : f16
      %272 = index.ceildivs %c14, %c15
      %273 = index.maxs %82, %44
      %274 = vector.broadcast %true : i1 to vector<10x2xi1>
      scf.yield %274 : vector<10x2xi1>
    }
    case 4 {
      %collapsed_47 = tensor.collapse_shape %transposed [[0, 1]] : tensor<8x7xi32> into tensor<56xi32>
      %259 = math.ipowi %true, %true : i1
      %260 = arith.maxsi %c17955_i16, %c26135_i16 : i16
      %261 = tensor.empty(%c5) : tensor<7x?xi64>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %262 = vector.transfer_read %15[%82, %c1, %c7], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<2x2x7xi32>, vector<7xi32>
      %263 = affine.apply affine_map<(d0, d1) -> (d0 + 1)>(%c15, %c6)
      %264 = scf.while (%arg0 = %alloc_22) : (memref<i32>) -> memref<i32> {
        %273 = index.maxu %23, %c2
        %274 = math.log %cst_3 : f16
        %from_elements_51 = tensor.from_elements %c2079524800_i32, %c1335811011_i32, %c2079524800_i32, %81, %81, %c1335811011_i32, %81, %81, %c2079524800_i32, %c1335811011_i32, %c1335811011_i32, %c1_i32, %81, %c1_i32, %c1_i32, %c1335811011_i32, %c2079524800_i32, %c2079524800_i32, %81, %c1335811011_i32, %81, %81, %c1_i32, %81, %c2079524800_i32, %c2079524800_i32, %c1_i32, %c1_i32, %81, %c1335811011_i32, %81, %c1335811011_i32, %c1335811011_i32, %c2079524800_i32, %c2079524800_i32, %c2079524800_i32, %c2079524800_i32, %c1_i32, %81, %c1_i32, %c1335811011_i32, %c2079524800_i32, %c2079524800_i32, %c1335811011_i32, %c1335811011_i32, %c1_i32, %c1335811011_i32, %c1_i32, %81, %81, %c2079524800_i32, %c1335811011_i32, %c2079524800_i32, %c2079524800_i32, %81, %c1335811011_i32 : tensor<7x8xi32>
        %true_52 = index.bool.constant true
        %275 = index.ceildivs %c0, %88
        %276 = arith.remf %cst_0, %cst_0 : f16
        %277 = arith.shrsi %c-25433_i16, %c26135_i16 : i16
        %278 = math.atan2 %4, %4 : tensor<10x2xf16>
        scf.condition(%false) %alloc_22 : memref<i32>
      } do {
      ^bb0(%arg0: memref<i32>):
        %273 = arith.xori %c1335811011_i32, %81 : i32
        %274 = vector.extract %36[0] : vector<2x2x7xf32>
        %275 = math.ctpop %false : i1
        %276 = tensor.empty(%88, %c1) : tensor<?x?x7xi32>
        %c30034_i16 = arith.constant 30034 : i16
        %277 = math.round %cst_0 : f16
        %278 = index.sub %23, %c14
        %from_elements_51 = tensor.from_elements %cst_1, %cst_5, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_1, %cst_5, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1 : tensor<2x2x7xf32>
        %279 = arith.xori %53, %53 : i64
        %280 = arith.divf %cst_3, %cst_6 : f16
        %281 = arith.remui %c1_i32, %81 : i32
        memref.store %cst_5, %alloc_11[%c0, %c0] : memref<10x2xf32>
        memref.tensor_store %20, %alloc_15 : memref<2xi32>
        %282 = index.ceildivs %c15, %c1
        %283 = arith.cmpf false, %cst_5, %cst_5 : f32
        %284 = math.absi %24 : tensor<10x2xi32>
        scf.yield %arg0 : memref<i32>
      }
      %265 = math.tan %11 : tensor<2x2x7xf32>
      %266 = math.expm1 %11 : tensor<2x2x7xf32>
      %267 = vector.broadcast %c17955_i16 : i16 to vector<10x10xi16>
      %268 = vector.outerproduct %19, %19, %267 {kind = #vector.kind<add>} : vector<10xi16>, vector<10xi16>
      %generated_48 = tensor.generate %78 {
      ^bb0(%arg0: index, %arg1: index):
        %273 = arith.shrui %c0_i64, %c0_i64 : i64
        %274 = arith.cmpf ule, %cst_0, %cst_0 : f16
        %275 = math.tanh %1 : tensor<2x2x7xf16>
        %276 = math.powf %cst_5, %cst_2 : f32
        tensor.yield %cst : f16
      } : tensor<?x2xf16>
      memref.alloca_scope  {
        %273 = arith.andi %true, %true : i1
        %274 = arith.negf %cst_2 : f32
        %275 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %c29406_i16 = arith.constant 29406 : i16
        %c1_i32_51 = arith.constant 1 : i32
        %276 = vector.transfer_read %5[%40, %c11], %c1_i32_51 : tensor<7x8xi32>, vector<i32>
        %from_elements_52 = tensor.from_elements %false, %true, %true, %false, %false, %true, %false, %false, %true, %false, %true, %false, %true, %true, %false, %true, %true, %true, %true, %false : tensor<10x2xi1>
        %277 = arith.addi %c1335811011_i32, %81 : i32
        %278 = arith.maxsi %c26135_i16, %c-25433_i16 : i16
        %279 = arith.remui %true, %false : i1
        %280 = arith.divui %c24492_i16, %c-25433_i16 : i16
        %281 = arith.remf %cst_6, %cst_6 : f16
        %282 = vector.broadcast %81 : i32 to vector<2xi32>
        %283 = vector.insert %282, %80 [7] : vector<2xi32> into vector<10x2xi32>
        %expanded_53 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<7x8xi32> into tensor<7x8x1xi32>
        %284 = math.log2 %splat : tensor<7x8xf16>
        %285 = arith.muli %81, %c1_i32_51 : i32
        %286 = math.tanh %cst_1 : f32
        %287 = arith.xori %c1335811011_i32, %c1_i32_51 : i32
        %288 = math.atan2 %cst_5, %cst_2 : f32
        memref.tensor_store %2, %alloc : memref<10x2xi1>
        %true_54 = index.bool.constant true
        %289 = memref.load %alloc_16[%c1, %c0, %c5] : memref<2x2x7xf32>
        %290 = index.mul %96, %263
        %291 = math.tan %cst_0 : f16
        %292 = vector.broadcast %cst_1 : f32 to vector<2x7x2x7xf32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %92, %36, %292 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
        %294 = index.castu %c17955_i16 : i16 to index
        %295 = memref.realloc %alloc_12 : memref<2xi16> to memref<8xi16>
        %296 = vector.broadcast %false : i1 to vector<2xi1>
        %297 = vector.gather %13[%c1, %c15] [%282], %296, %282 : tensor<7x8xi32>, vector<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %298 = affine.min affine_map<(d0, d1) -> (d1 - d0 + d0 + 1)>(%73, %99)
        %299 = arith.cmpf ole, %cst_6, %cst_3 : f16
        %300 = math.log10 %cst_0 : f16
        %301 = index.floordivs %c7, %c9
        %302 = index.sub %109, %c8
      }
      memref.store %cst_2, %alloc_8[%c1, %c1, %c4] : memref<2x2x7xf32>
      %269 = index.castu %c-25433_i16 : i16 to index
      %270 = vector.broadcast %81 : i32 to vector<2xi32>
      %dest_49, %accumulated_value_50 = vector.scan <add>, %74, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2xi32>, vector<2xi32>
      %271 = arith.remf %cst_4, %cst : f16
      %272 = vector.broadcast %true : i1 to vector<10x2xi1>
      scf.yield %272 : vector<10x2xi1>
    }
    default {
      %259 = math.tanh %cst_3 : f16
      %260 = math.round %cst_2 : f32
      %261 = vector.bitcast %74 : vector<10x2xi32> to vector<10x2xi32>
      %262 = math.copysign %cst_3, %cst_6 : f16
      %263 = math.cos %splat : tensor<7x8xf16>
      %264 = vector.broadcast %c24492_i16 : i16 to vector<7x8xi16>
      %alloca_47 = memref.alloca() : memref<10x2xi64>
      %265 = math.log2 %cst : f16
      %266 = arith.maxf %cst_4, %cst : f16
      %267 = math.atan %4 : tensor<10x2xf16>
      %268 = math.ctlz %20 : tensor<2xi32>
      %269 = index.floordivs %c7, %73
      %270 = index.casts %c26135_i16 : i16 to index
      %271 = affine.if affine_set<(d0, d1, d2) : (-d0 + 128 >= 0, -d2 == 0)>(%c4, %c9, %c10) -> memref<2xi64> {
        %274 = vector.transpose %261, [1, 0] : vector<10x2xi32> to vector<2x10xi32>
        %275 = index.add %78, %c2
        %276 = math.log10 %cst_2 : f32
        %277 = vector.shuffle %92, %36 [0, 2, 3] : vector<2x2x7xf32>, vector<2x2x7xf32>
        %278 = memref.load %77[%c8, %c1] : memref<10x2xi16>
        %279 = math.atan2 %cst_0, %cst_6 : f16
        %280 = index.ceildivu %96, %96
        %281 = math.ctpop %12 : tensor<10x2xi1>
        affine.yield %alloc_10 : memref<2xi64>
      } else {
        memref.store %cst_1, %alloc_16[%c1, %c1, %c3] : memref<2x2x7xf32>
        %274 = math.ipowi %c1335811011_i32, %81 : i32
        %275 = vector.reduction <mul>, %63 : vector<8xi1> into i1
        %276 = vector.broadcast %cst_1 : f32 to vector<2x7x2x7xf32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %92, %92, %276 : vector<2x2x7xf32>, vector<2x2x7xf32> into vector<2x7x2x7xf32>
        %alloc_49 = memref.alloc() : memref<2xi1>
        %278 = math.ctpop %9 : tensor<10x2xi64>
        %279 = arith.maxf %cst_2, %cst_1 : f32
        %280 = index.add %109, %c6
        affine.yield %alloc_10 : memref<2xi64>
      }
      %272 = index.mul %78, %c10
      %alloca_48 = memref.alloca() : memref<2x2x7xi64>
      %273 = vector.broadcast %false : i1 to vector<10x2xi1>
      scf.yield %273 : vector<10x2xi1>
    }
    %111 = vector.transpose %74, [1, 0] : vector<10x2xi32> to vector<2x10xi32>
    %112 = vector.broadcast %cst_1 : f32 to vector<2x7xf32>
    %113 = vector.insert %112, %92 [1] : vector<2x7xf32> into vector<2x2x7xf32>
    %114 = vector.extract_strided_slice %19 {offsets = [2], sizes = [4], strides = [1]} : vector<10xi16> to vector<4xi16>
    %115 = arith.divui %c17955_i16, %c17955_i16 : i16
    %116 = math.tanh %cst_0 : f16
    %117 = index.mul %c3, %99
    %118 = index.sub %c15, %73
    %119 = arith.minsi %c0_i64, %c0_i64 : i64
    %120 = arith.cmpf false, %cst_5, %cst_1 : f32
    %121 = arith.remui %c17955_i16, %c-25433_i16 : i16
    %122 = math.ctpop %c24492_i16 : i16
    %123 = math.tanh %splat : tensor<7x8xf16>
    %124 = index.casts %c12 : index to i32
    %125 = math.log %1 : tensor<2x2x7xf16>
    %126 = vector.bitcast %36 : vector<2x2x7xf32> to vector<2x2x7xf32>
    %127 = math.exp %cst_0 : f16
    %128 = scf.while (%arg0 = %alloc_9) : (memref<7x8xi32>) -> memref<7x8xi32> {
      %259 = arith.remf %cst_4, %cst_3 : f16
      %260 = math.absi %c-25433_i16 : i16
      %261 = index.add %c8, %109
      %262 = arith.divsi %53, %c0_i64 : i64
      %263 = math.log2 %11 : tensor<2x2x7xf32>
      %264 = vector.shuffle %36, %37 [1, 2, 3] : vector<2x2x7xf32>, vector<2x2x7xf32>
      %265 = vector.broadcast %c26135_i16 : i16 to vector<2x2x7xi16>
      %266 = math.ctlz %24 : tensor<10x2xi32>
      scf.condition(%true) %arg0 : memref<7x8xi32>
    } do {
    ^bb0(%arg0: memref<7x8xi32>):
      %259 = vector.broadcast %c-25433_i16 : i16 to vector<2xi16>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %19, %47, %259 : vector<10xi16>, vector<10x2xi16> into vector<2xi16>
      %261 = math.absi %53 : i64
      %generated_47 = tensor.generate %23 {
      ^bb0(%arg1: index):
        %277 = arith.addi %c17955_i16, %c26135_i16 : i16
        memref.tensor_store %15, %alloc_19 : memref<2x2x7xi32>
        %278 = math.floor %cst_3 : f16
        %279 = math.tanh %cst : f16
        tensor.yield %false : i1
      } : tensor<?xi1>
      %262 = vector.broadcast %53 : i64 to vector<7x8xi64>
      %263 = vector.broadcast %false : i1 to vector<7x8xi1>
      %264 = vector.broadcast %81 : i32 to vector<7x8xi32>
      %265 = vector.gather %9[%c3, %44] [%264], %263, %262 : tensor<10x2xi64>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi64> into vector<7x8xi64>
      %266 = arith.ceildivsi %53, %c0_i64 : i64
      %267 = index.sub %c9, %23
      %268 = arith.maxf %cst_1, %cst_5 : f32
      %extracted_48 = tensor.extract %17[%c1, %c1, %c5] : tensor<2x2x7xi64>
      %269 = arith.xori %c0_i64, %c0_i64 : i64
      %270 = math.log2 %cst_2 : f32
      %271 = memref.realloc %alloc_10 : memref<2xi64> to memref<7xi64>
      %272 = arith.minsi %c-25433_i16, %c24492_i16 : i16
      %273 = index.castu %96 : index to i32
      %274 = math.log10 %11 : tensor<2x2x7xf32>
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 16)>(%c1, %c12, %23, %c5)
      %276 = arith.andi %c26135_i16, %c26135_i16 : i16
      scf.yield %arg0 : memref<7x8xi32>
    }
    %129 = arith.remf %cst_2, %cst_2 : f32
    %130 = index.add %44, %55
    %131 = arith.remui %false, %false : i1
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_30 = arith.constant 0 : i16
    %132 = vector.transfer_read %0[%88, %118], %c0_i16_30 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<10x2xi16>, vector<2xi16>
    %alloca_31 = memref.alloca() : memref<7x8xi16>
    %133 = index.castu %55 : index to i32
    %134 = vector.reduction <minui>, %114 : vector<4xi16> into i16
    %collapsed = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<2x2x7xi32> into tensor<4x7xi32>
    %135 = vector.extract_strided_slice %114 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
    %136 = math.ctlz %true : i1
    %137 = bufferization.to_tensor %alloc_21 : memref<2xf16>
    %138 = arith.subi %c0_i64, %c0_i64 : i64
    %139 = math.powf %137, %137 : tensor<2xf16>
    %140 = vector.extract %63[5] : vector<8xi1>
    %141 = math.round %4 : tensor<10x2xf16>
    %142 = scf.if %false -> (i32) {
      %259 = index.mul %c0, %c7
      %260 = math.ctpop %10 : tensor<2xi1>
      %261 = index.floordivs %c13, %c5
      %262 = arith.divf %cst_5, %cst_5 : f32
      %263 = vector.broadcast %c2079524800_i32 : i32 to vector<2xi32>
      %dest_47, %accumulated_value_48 = vector.scan <minui>, %80, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2xi32>, vector<2xi32>
      %264 = index.sizeof
      %265 = index.casts %false : i1 to index
      %expanded_49 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<10x2xf16> into tensor<10x2x1xf16>
      scf.yield %81 : i32
    } else {
      %259 = math.floor %11 : tensor<2x2x7xf32>
      memref.alloca_scope  {
        %266 = memref.load %alloc_16[%c0, %c1, %c6] : memref<2x2x7xf32>
        %expanded_47 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x2xi16> into tensor<10x2x1xi16>
        %267 = tensor.empty(%44, %40) : tensor<2x?x?xf16>
        %268 = arith.remsi %c1335811011_i32, %81 : i32
        %269 = vector.bitcast %63 : vector<8xi1> to vector<8xi1>
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %270 = vector.transfer_read %1[%88, %c0, %c11], %cst_49 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<2x2x7xf16>, vector<2x10xf16>
        %271 = vector.bitcast %92 : vector<2x2x7xf32> to vector<2x2x7xf32>
        %272 = math.log2 %cst_48 : f16
        %273 = math.cos %11 : tensor<2x2x7xf32>
        %274 = math.atan2 %11, %11 : tensor<2x2x7xf32>
        %275 = index.sub %130, %c13
        %276 = math.floor %137 : tensor<2xf16>
        %277 = bufferization.clone %alloc_19 : memref<2x2x7xi32> to memref<2x2x7xi32>
        %278 = arith.addi %53, %c0_i64 : i64
        %279 = vector.broadcast %130 : index to vector<7xindex>
        %280 = vector.broadcast %false : i1 to vector<7xi1>
        vector.scatter %alloc_13[%c5, %c1] [%279], %280, %280 : memref<7x8xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %281 = arith.divui %c24492_i16, %c-25433_i16 : i16
        %282 = arith.negf %cst_0 : f16
        %283 = index.floordivs %73, %c3
        %284 = arith.minui %c26135_i16, %c17955_i16 : i16
        %285 = vector.reduction <maxui>, %135 : vector<2xi16> into i16
        %286 = memref.load %alloc_12[%c1] : memref<2xi16>
        %287 = arith.remsi %c0_i16, %c17955_i16 : i16
        %288 = math.ctpop %12 : tensor<10x2xi1>
        %289 = arith.divsi %c17955_i16, %c0_i16 : i16
        %290 = vector.broadcast %53 : i64 to vector<7x8xi64>
        %291 = math.expm1 %11 : tensor<2x2x7xf32>
        %292 = index.sub %55, %275
        %293 = math.atan2 %4, %4 : tensor<10x2xf16>
        %294 = memref.realloc %alloc_10 : memref<2xi64> to memref<7xi64>
        %295 = arith.negf %cst_5 : f32
        %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 128, d2 + 34)>(%c11, %283, %c15, %117)
        vector.print %19 : vector<10xi16>
      }
      %260 = arith.andi %c24492_i16, %c0_i16 : i16
      %261 = math.round %1 : tensor<2x2x7xf16>
      %262 = math.roundeven %cst_4 : f16
      %263 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %264 = math.powf %cst_2, %cst_2 : f32
      %265 = math.fpowi %cst_5, %81 : f32, i32
      scf.yield %c2079524800_i32 : i32
    }
    %143 = vector.shuffle %74, %80 [0, 1, 2, 4, 5, 11, 13, 14, 16, 19] : vector<10x2xi32>, vector<10x2xi32>
    %144 = math.tanh %1 : tensor<2x2x7xf16>
    %145 = arith.shrsi %142, %142 : i32
    %splat_32 = tensor.splat %c-25433_i16 : tensor<7x8xi16>
    %146 = vector.broadcast %cst_5 : f32 to vector<10x2xf32>
    %147 = vector.broadcast %false : i1 to vector<10x2xi1>
    %148 = vector.gather %alloc_11[%96, %c8] [%80], %147, %146 : memref<10x2xf32>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xf32> into vector<10x2xf32>
    %149 = affine.min affine_map<(d0, d1) -> (0, 0, 0, 0)>(%c10, %55)
    %150 = index.mul %c14, %c10
    %151 = math.log1p %cst_1 : f32
    %152 = arith.muli %c-25433_i16, %c17955_i16 : i16
    %153 = vector.broadcast %cst_1 : f32 to vector<7x2x7xf32>
    %154 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %112, %36, %153 : vector<2x7xf32>, vector<2x2x7xf32> into vector<7x2x7xf32>
    %155 = arith.negf %cst_3 : f16
    %156 = arith.remf %cst, %cst : f16
    %157 = index.ceildivs %c4, %149
    %158 = index.casts %c12 : index to i32
    %159 = math.fma %137, %137, %137 : tensor<2xf16>
    %160 = math.powf %cst_2, %cst_5 : f32
    %161 = math.atan2 %4, %4 : tensor<10x2xf16>
    %c1_i16 = arith.constant 1 : i16
    %162 = vector.transfer_read %34[%c5, %82], %c1_i16 : tensor<10x8xi16>, vector<7xi16>
    %cast_33 = tensor.cast %4 : tensor<10x2xf16> to tensor<?x?xf16>
    %163 = math.log1p %cst : f16
    %164 = arith.maxf %cst_0, %cst : f16
    %165 = vector.load %alloc_7[%c0] : memref<2xi32>, vector<7x8xi32>
    %166 = vector.insertelement %false, %63[%c14 : index] : vector<8xi1>
    %167 = vector.shuffle %114, %135 [0, 2, 4] : vector<4xi16>, vector<2xi16>
    %168 = math.powf %cst, %cst_0 : f16
    scf.if %true {
      %259 = index.floordivs %78, %c15
      %260 = bufferization.to_memref %42 : memref<7x7xi32>
      %261 = math.exp %cst_3 : f16
      %262 = arith.addi %53, %53 : i64
      %263 = math.log1p %cst_4 : f16
      %264 = math.absi %14 : tensor<2x2x7xi64>
      %265 = memref.realloc %alloc_7 : memref<2xi32> to memref<8xi32>
      memref.store %c26135_i16, %77[%c5, %c1] : memref<10x2xi16>
    }
    %169 = arith.cmpf one, %cst_5, %cst_2 : f32
    memref.copy %alloc_16, %alloc_8 : memref<2x2x7xf32> to memref<2x2x7xf32>
    %170 = vector.gather %5[%23, %c11] [%80], %147, %74 : tensor<7x8xi32>, vector<10x2xi32>, vector<10x2xi1>, vector<10x2xi32> into vector<10x2xi32>
    %171 = vector.insert %false, %63 [2] : i1 into vector<8xi1>
    %extracted = tensor.extract %16[%c0, %c1, %c4] : tensor<2x2x7xi64>
    %172 = math.tanh %11 : tensor<2x2x7xf32>
    %alloc_34 = memref.alloc() : memref<10x2xf16>
    %173 = index.maxs %c13, %109
    %174 = arith.muli %81, %c2079524800_i32 : i32
    %175 = math.cos %cst_1 : f32
    %176 = bufferization.clone %alloc : memref<10x2xi1> to memref<10x2xi1>
    %false_35 = index.bool.constant false
    %alloca_36 = memref.alloca() : memref<2xf32>
    %177 = arith.maxf %cst_6, %cst : f16
    %178 = vector.broadcast %c2079524800_i32 : i32 to vector<2x2xi32>
    %179 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %74, %170, %178 : vector<10x2xi32>, vector<10x2xi32> into vector<2x2xi32>
    %180 = arith.divui %c1_i16, %c-25433_i16 : i16
    %181 = arith.xori %c0_i64, %extracted : i64
    %182 = arith.cmpf olt, %cst_5, %cst_2 : f32
    %183 = tensor.empty(%73, %88) : tensor<2x?x?xi1>
    %184 = math.log2 %cst_0 : f16
    %185 = arith.maxf %cst_0, %cst_0 : f16
    %cast_37 = tensor.cast %3 : tensor<7x8xi32> to tensor<?x?xi32>
    %186 = index.maxu %c5, %82
    %187 = memref.realloc %alloc_7 : memref<2xi32> to memref<10xi32>
    bufferization.dealloc_tensor %3 : tensor<7x8xi32>
    %188 = memref.realloc %alloc_10 : memref<2xi64> to memref<10xi64>
    %189 = vector.broadcast %142 : i32 to vector<10xi32>
    %dest, %accumulated_value = vector.scan <or>, %170, %189 {inclusive = true, reduction_dim = 1 : i64} : vector<10x2xi32>, vector<10xi32>
    %190 = bufferization.clone %alloc_19 : memref<2x2x7xi32> to memref<2x2x7xi32>
    %191 = arith.remui %c1335811011_i32, %c1335811011_i32 : i32
    %192 = math.exp %cst_2 : f32
    %193 = index.sub %c3, %55
    %194 = math.ctlz %true : i1
    %cast_38 = tensor.cast %21 : tensor<i32> to tensor<i32>
    %195 = math.exp %cst_6 : f16
    %196 = arith.remui %true, %false_35 : i1
    %extracted_39 = tensor.extract %cast_33[%c0, %c0] : tensor<?x?xf16>
    %expanded = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<2x2x7xi32> into tensor<2x2x7x1xi32>
    %197 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    %198 = vector.fma %197, %197, %197 : vector<2xf32>
    %199 = index.casts %c4 : index to i32
    %generated = tensor.generate %c12 {
    ^bb0(%arg0: index):
      %259 = index.floordivs %c12, %88
      %260 = math.ctpop %16 : tensor<2x2x7xi64>
      %261 = arith.remf %cst_0, %cst_6 : f16
      %262 = math.round %cst_4 : f16
      tensor.yield %true : i1
    } : tensor<?xi1>
    %200 = index.mul %c11, %c11
    %201 = tensor.empty() : tensor<2x2x7xi16>
    %202 = math.fpowi %1, %15 : tensor<2x2x7xf16>, tensor<2x2x7xi32>
    %c-6159_i16 = arith.constant -6159 : i16
    %203 = math.log %cst : f16
    %204 = math.ipowi %c17955_i16, %c24492_i16 : i16
    %205 = affine.apply affine_map<(d0, d1) -> (d0)>(%c10, %109)
    %206 = memref.load %alloc_17[%c4, %c1] : memref<10x2xi64>
    %207 = math.ipowi %9, %9 : tensor<10x2xi64>
    bufferization.dealloc_tensor %13 : tensor<7x8xi32>
    %208 = math.atan2 %cst, %cst_3 : f16
    %209 = math.ipowi %false_35, %true : i1
    %210 = arith.minsi %53, %53 : i64
    %211 = arith.xori %c1335811011_i32, %c1335811011_i32 : i32
    %212 = math.ipowi %17, %14 : tensor<2x2x7xi64>
    %213 = vector.broadcast %c26135_i16 : i16 to vector<2x2xi16>
    %214 = vector.outerproduct %135, %135, %213 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
    %215 = arith.divui %53, %53 : i64
    %216 = arith.cmpf oeq, %cst_3, %cst_4 : f16
    bufferization.dealloc_tensor %9 : tensor<10x2xi64>
    %alloca_40 = memref.alloca() : memref<2xf32>
    %217 = arith.maxf %cst_1, %cst_5 : f32
    %218 = arith.remf %cst_0, %extracted_39 : f16
    %219 = arith.maxf %cst_5, %cst_1 : f32
    %220 = arith.maxsi %c1335811011_i32, %142 : i32
    %221 = arith.maxsi %81, %c1335811011_i32 : i32
    %222 = memref.alloca_scope  -> (f32) {
      %259 = tensor.empty() : tensor<7x8xi32>
      %mapped = linalg.map ins(%5 : tensor<7x8xi32>) outs(%259 : tensor<7x8xi32>)
        (%in: i32) {
          %c-138_i16 = arith.constant -138 : i16
          %from_elements_54 = tensor.from_elements %cst_4, %cst_0 : tensor<2xf16>
          %alloc_55 = memref.alloc() : memref<i32>
          memref.copy %alloc_22, %alloc_55 : memref<i32> to memref<i32>
          %286 = vector.broadcast %in : i32 to vector<2xi32>
          %dest_56, %accumulated_value_57 = vector.scan <minui>, %170, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2xi32>, vector<2xi32>
          memref.copy %alloc_8, %103 : memref<2x2x7xf32> to memref<2x2x7xf32>
          %287 = tensor.empty() : tensor<7x8xi64>
          %288 = vector.broadcast %cst_2 : f32 to vector<7xf32>
          %289 = vector.insert %288, %112 [1] : vector<7xf32> into vector<2x7xf32>
          %290 = arith.remf %cst_5, %cst_5 : f32
          vector.print %19 : vector<10xi16>
          %291 = index.maxs %200, %c3
          %292 = math.floor %cst_6 : f16
          %293 = math.roundeven %1 : tensor<2x2x7xf16>
          %294 = arith.subi %53, %c0_i64 : i64
          %295 = index.maxs %c9, %99
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_58 = arith.constant 0 : i32
          %296 = vector.transfer_read %5[%149, %205], %c0_i32_58 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<7x8xi32>, vector<7xi32>
          %from_elements_59 = tensor.from_elements %c-25433_i16, %c24492_i16, %c1_i16, %c-25433_i16, %c17955_i16, %c24492_i16, %c17955_i16, %c26135_i16, %c17955_i16, %c24492_i16, %c17955_i16, %c0_i16, %c17955_i16, %c26135_i16, %c1_i16, %c1_i16, %c26135_i16, %c0_i16, %c26135_i16, %c17955_i16, %c26135_i16, %c24492_i16, %c0_i16, %c17955_i16, %c17955_i16, %c17955_i16, %c-25433_i16, %c17955_i16, %c24492_i16, %c-25433_i16, %c0_i16, %c24492_i16, %c0_i16, %c0_i16, %c17955_i16, %c17955_i16, %c-25433_i16, %c24492_i16, %c-25433_i16, %c26135_i16, %c-25433_i16, %c1_i16, %c26135_i16, %c24492_i16, %c24492_i16, %c26135_i16, %c0_i16, %c26135_i16, %c-25433_i16, %c0_i16, %c17955_i16, %c1_i16, %c26135_i16, %c1_i16, %c26135_i16, %c26135_i16 : tensor<7x8xi16>
          %297 = arith.maxf %extracted_39, %cst_0 : f16
          %expanded_60 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<10x2xi64> into tensor<10x2x1xi64>
          %298 = memref.realloc %alloc_12 : memref<2xi16> to memref<10xi16>
          %299 = memref.load %alloc_17[%c0, %c0] : memref<10x2xi64>
          %300 = arith.minsi %in, %c0_i32 : i32
          %301 = vector.broadcast %cst_5 : f32 to vector<7x8xf32>
          %302 = vector.fma %301, %301, %301 : vector<7x8xf32>
          %303 = math.cos %from_elements_54 : tensor<2xf16>
          %304 = vector.transpose %80, [1, 0] : vector<10x2xi32> to vector<2x10xi32>
          %305 = memref.load %190[%c0, %c0, %c1] : memref<2x2x7xi32>
          %306 = math.tan %splat : tensor<7x8xf16>
          %307 = vector.bitcast %80 : vector<10x2xi32> to vector<10x2xi32>
          %308 = arith.addi %in, %c2079524800_i32 : i32
          %309 = arith.remui %c0_i16, %c24492_i16 : i16
          %310 = vector.bitcast %112 : vector<2x7xf32> to vector<2x7xf32>
          %311 = index.add %c15, %173
          %312 = index.divs %c11, %311
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %260 = math.atan2 %1, %1 : tensor<2x2x7xf16>
      %alloc_47 = memref.alloc() : memref<10x2xi16>
      scf.if %true {
        %286 = index.mul %109, %40
        affine.store %c1335811011_i32, %alloc_18[%c2, %c13] : memref<7x8xi32>
        %287 = math.ipowi %splat_32, %splat_32 : tensor<7x8xi16>
        %288 = vector.extract %198[1] : vector<2xf32>
        %289 = vector.transpose %63, [0] : vector<8xi1> to vector<8xi1>
        %290 = arith.divui %142, %142 : i32
        %291 = math.exp %11 : tensor<2x2x7xf32>
        %292 = vector.broadcast %142 : i32 to vector<2xi32>
        %293 = vector.insert %292, %170 [4] : vector<2xi32> into vector<10x2xi32>
      }
      %261 = memref.realloc %alloc_21 : memref<2xf16> to memref<10xf16>
      %262 = arith.maxui %c1_i16, %c-25433_i16 : i16
      %263 = tensor.empty() : tensor<8x8xi32>
      %264 = linalg.matmul ins(%transposed, %5 : tensor<8x7xi32>, tensor<7x8xi32>) outs(%263 : tensor<8x8xi32>) -> tensor<8x8xi32>
      bufferization.dealloc_tensor %24 : tensor<10x2xi32>
      %265 = vector.broadcast %cst_5 : f32 to vector<2x2xf32>
      %dest_48, %accumulated_value_49 = vector.scan <mul>, %36, %265 {inclusive = true, reduction_dim = 2 : i64} : vector<2x2x7xf32>, vector<2x2xf32>
      %266 = math.atan2 %11, %11 : tensor<2x2x7xf32>
      %267 = vector.bitcast %126 : vector<2x2x7xf32> to vector<2x2x7xf32>
      %268 = math.round %11 : tensor<2x2x7xf32>
      %269 = math.tanh %cst_0 : f16
      %270 = vector.bitcast %19 : vector<10xi16> to vector<10xi16>
      %271 = math.ipowi %16, %16 : tensor<2x2x7xi64>
      %272 = memref.load %alloc_19[%c0, %c0, %c4] : memref<2x2x7xi32>
      %alloca_50 = memref.alloca() : memref<10x2xf32>
      %cast_51 = tensor.cast %21 : tensor<i32> to tensor<i32>
      %273 = vector.extract_strided_slice %92 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2x7xf32> to vector<1x2x7xf32>
      memref.alloca_scope  {
        %286 = arith.remui %c-25433_i16, %c0_i16 : i16
        %287 = index.floordivs %c10, %44
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %47, %270, %135 : vector<10x2xi16>, vector<10xi16> into vector<2xi16>
        %alloca_54 = memref.alloca() : memref<2xf32>
        %from_elements_55 = tensor.from_elements %cst_1, %cst_2, %cst_2, %cst_1, %cst_5, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_2, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1 : tensor<2x2x7xf32>
        %289 = arith.remf %cst_5, %cst_2 : f32
        %290 = vector.broadcast %false : i1 to vector<2xi1>
        %dest_56, %accumulated_value_57 = vector.scan <or>, %147, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2xi1>, vector<2xi1>
        %291 = math.absf %cst_0 : f16
        %292 = math.atan2 %1, %1 : tensor<2x2x7xf16>
        %293 = arith.remf %extracted_39, %cst_6 : f16
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_58 = arith.constant 0 : i32
        %294 = vector.transfer_read %alloc_19[%c0, %88, %73], %c0_i32_58 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<2x2x7xi32>, vector<2xi32>
        %295 = arith.remsi %81, %c0_i32 : i32
        %296 = index.mul %c1, %c9
        %from_elements_59 = tensor.from_elements %c1335811011_i32, %142, %81, %c1335811011_i32, %c1335811011_i32, %c2079524800_i32, %81, %142, %c1335811011_i32, %142, %c0_i32, %c2079524800_i32, %c1335811011_i32, %c0_i32, %c0_i32, %81, %81, %142, %142, %81, %c1335811011_i32, %142, %c1335811011_i32, %81, %81, %81, %c0_i32, %81 : tensor<2x2x7xi32>
        %297 = index.floordivs %88, %c6
        %298 = math.cos %1 : tensor<2x2x7xf16>
        %c0_i32_60 = arith.constant 0 : i32
        %299 = vector.transfer_read %8[%c6], %c0_i32_60 : tensor<2xi32>, vector<i32>
        %300 = arith.negf %cst_5 : f32
        %301 = arith.maxsi %c24492_i16, %c26135_i16 : i16
        %302 = math.log10 %1 : tensor<2x2x7xf16>
        %303 = vector.shuffle %92, %267 [0] : vector<2x2x7xf32>, vector<2x2x7xf32>
        %304 = vector.broadcast %false_35 : i1 to vector<2xi1>
        %305 = vector.transfer_write %304, %2[%157, %44] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi1>, tensor<10x2xi1>
        %cast_61 = tensor.cast %24 : tensor<10x2xi32> to tensor<?x?xi32>
        %alloca_62 = memref.alloca() : memref<10x2xi1>
        vector.print %165 : vector<7x8xi32>
        %306 = arith.remsi %142, %c2079524800_i32 : i32
        %307 = index.divs %c12, %c1
        %308 = vector.shuffle %63, %304 [0, 4, 5, 8, 9] : vector<8xi1>, vector<2xi1>
        %309 = arith.remsi %c17955_i16, %c-25433_i16 : i16
        %310 = math.tan %cst_3 : f16
        %311 = vector.create_mask %186, %c6, %307 : vector<2x2x7xi1>
        %312 = math.log10 %cst_6 : f16
      }
      scf.index_switch %c5 
      case 1 {
        %286 = math.atan %extracted_39 : f16
        bufferization.dealloc_tensor %13 : tensor<7x8xi32>
        %287 = arith.minsi %c-25433_i16, %c26135_i16 : i16
        %288 = arith.negf %cst_3 : f16
        %289 = vector.transpose %37, [2, 1, 0] : vector<2x2x7xf32> to vector<7x2x2xf32>
        %290 = vector.transpose %267, [0, 2, 1] : vector<2x2x7xf32> to vector<2x7x2xf32>
        %291 = vector.transpose %74, [1, 0] : vector<10x2xi32> to vector<2x10xi32>
        %292 = arith.divsi %c1_i16, %c26135_i16 : i16
        %293 = arith.shrsi %true, %false : i1
        %c1048465418_i32 = arith.constant 1048465418 : i32
        %cast_54 = tensor.cast %13 : tensor<7x8xi32> to tensor<?x?xi32>
        %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3 - 64)>(%193, %c0, %117, %186)
        %295 = vector.insertelement %false, %63[%99 : index] : vector<8xi1>
        %296 = index.add %118, %c2
        %cast_55 = tensor.cast %1 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %267, %112 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
        scf.yield
      }
      case 2 {
        %286 = affine.min affine_map<(d0) -> (0, d0, -d0)>(%186)
        %287 = vector.broadcast %142 : i32 to vector<2x2xi32>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %80, %80, %287 : vector<10x2xi32>, vector<10x2xi32> into vector<2x2xi32>
        %289 = arith.maxui %c1_i16, %c17955_i16 : i16
        %290 = arith.remsi %c17955_i16, %c-25433_i16 : i16
        %291 = arith.shrsi %c17955_i16, %c-25433_i16 : i16
        %292 = vector.broadcast %cst_1 : f32 to vector<10xf32>
        %dest_54, %accumulated_value_55 = vector.scan <add>, %146, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<10x2xf32>, vector<10xf32>
        %293 = vector.broadcast %cst_2 : f32 to vector<2x2xf32>
        %dest_56, %accumulated_value_57 = vector.scan <minf>, %126, %293 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x7xf32>, vector<2x2xf32>
        %294 = arith.cmpf olt, %cst_1, %cst_5 : f32
        %295 = vector.broadcast %c1 : index to vector<8xindex>
        %296 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        vector.scatter %alloc_11[%c3, %c0] [%295], %63, %296 : memref<10x2xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        vector.print %197 : vector<2xf32>
        memref.copy %alloc, %176 : memref<10x2xi1> to memref<10x2xi1>
        %297 = arith.andi %c2079524800_i32, %142 : i32
        %298 = math.ctpop %21 : tensor<i32>
        %299 = arith.ceildivsi %false_35, %false : i1
        %300 = vector.broadcast %c15 : index to vector<2xindex>
        %301 = vector.broadcast %false : i1 to vector<2xi1>
        %302 = vector.broadcast %142 : i32 to vector<2xi32>
        vector.scatter %alloc_18[%c0, %c2] [%300], %301, %302 : memref<7x8xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %303 = index.floordivs %c13, %193
        scf.yield
      }
      case 3 {
        %286 = math.log %cst_0 : f16
        %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3 - 64)>(%55, %c11, %c3, %c2)
        %288 = arith.minsi %c1_i16, %c0_i16 : i16
        %289 = index.maxu %c0, %287
        %290 = vector.broadcast %c2079524800_i32 : i32 to vector<10xi32>
        %291 = vector.broadcast %true : i1 to vector<10xi1>
        %292 = vector.maskedload %alloc_7[%c1], %291, %290 : memref<2xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %293 = index.sub %200, %c1
        %294 = arith.muli %53, %53 : i64
        vector.print %198 : vector<2xf32>
        %295 = math.round %1 : tensor<2x2x7xf16>
        %296 = bufferization.to_memref %34 : memref<10x8xi16>
        %297 = arith.maxui %c0_i16, %c1_i16 : i16
        %298 = math.absi %53 : i64
        %299 = vector.bitcast %273 : vector<1x2x7xf32> to vector<1x2x7xf32>
        %300 = index.divs %c10, %23
        %cast_54 = tensor.cast %21 : tensor<i32> to tensor<i32>
        %301 = index.divs %c15, %c2
        scf.yield
      }
      default {
        %286 = math.ctpop %10 : tensor<2xi1>
        %false_54 = index.bool.constant false
        %287 = arith.addi %false_54, %false_54 : i1
        %288 = arith.divf %cst, %cst : f16
        %289 = math.absf %cst_5 : f32
        %290 = index.sub %c7, %82
        %291 = arith.cmpf ult, %cst_0, %cst_0 : f16
        memref.copy %alloc_18, %alloc_9 : memref<7x8xi32> to memref<7x8xi32>
        %292 = arith.divf %cst_6, %cst_3 : f16
        %293 = index.mul %c14, %c14
        %294 = vector.multi_reduction <mul>, %135, %c24492_i16 [0] : vector<2xi16> to i16
        %295 = arith.shrsi %142, %c1335811011_i32 : i32
        %296 = affine.apply affine_map<(d0, d1) -> (d0 + d1 - d0)>(%c10, %c7)
        memref.store %false, %176[%c0, %c0] : memref<10x2xi1>
        %297 = vector.reduction <maxf>, %198 : vector<2xf32> into f32
        %298 = index.maxu %173, %73
      }
      %false_52 = arith.constant false
      %false_53 = arith.constant false
      %274 = vector.transfer_read %7[%78], %false_53 : tensor<2xi1>, vector<i1>
      %275 = math.log2 %cst_3 : f16
      %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - d1, d1 * 16, d3 - d1 + d2)>(%c6, %c4, %c15, %55)
      %277 = arith.addi %c1_i16, %c24492_i16 : i16
      %278 = memref.realloc %alloc_7 : memref<2xi32> to memref<2xi32>
      %279 = vector.broadcast %cst_2 : f32 to vector<2x2x7xf32>
      %280 = vector.fma %279, %36, %126 : vector<2x2x7xf32>
      %281 = arith.xori %53, %c0_i64 : i64
      %282 = vector.multi_reduction <minsi>, %63, %63 [] : vector<8xi1> to vector<8xi1>
      %283 = vector.bitcast %114 : vector<4xi16> to vector<4xi16>
      %284 = arith.remui %extracted, %extracted : i64
      %285 = arith.remf %extracted_39, %cst_4 : f16
      memref.alloca_scope.return %cst_2 : f32
    }
    %223 = arith.remsi %c0_i16, %c1_i16 : i16
    %224 = arith.maxf %cst, %cst_0 : f16
    %225 = scf.while (%arg0 = %cst) : (f16) -> f16 {
      %alloc_47 = memref.alloc() : memref<2xi64>
      memref.copy %alloc_10, %alloc_47 : memref<2xi64> to memref<2xi64>
      %259 = math.fpowi %4, %24 : tensor<10x2xf16>, tensor<10x2xi32>
      %260 = vector.insertelement %222, %197[%44 : index] : vector<2xf32>
      %generated_48 = tensor.generate %200, %73 {
      ^bb0(%arg1: index, %arg2: index):
        %266 = math.log %cst_4 : f16
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %126, %197, %112 : vector<2x2x7xf32>, vector<2xf32> into vector<2x7xf32>
        %268 = index.sub %c7, %23
        vector.print %63 : vector<8xi1>
        tensor.yield %c24492_i16 : i16
      } : tensor<?x?xi16>
      %261 = index.ceildivs %44, %149
      %262 = vector.broadcast %81 : i32 to vector<2xi32>
      %263 = vector.insert %262, %80 [2] : vector<2xi32> into vector<10x2xi32>
      %264 = math.atan2 %splat, %splat : tensor<7x8xf16>
      %265 = index.floordivs %c1, %c8
      scf.condition(%false_35) %cst_3 : f16
    } do {
    ^bb0(%arg0: f16):
      %259 = vector.bitcast %36 : vector<2x2x7xf32> to vector<2x2x7xf32>
      %expanded_47 = tensor.expand_shape %201 [[0], [1], [2, 3]] : tensor<2x2x7xi16> into tensor<2x2x7x1xi16>
      %260 = math.ctpop %34 : tensor<10x8xi16>
      scf.if %false {
        %272 = vector.broadcast %c26135_i16 : i16 to vector<2x2xi16>
        %273 = vector.outerproduct %135, %135, %272 {kind = #vector.kind<minui>} : vector<2xi16>, vector<2xi16>
        %274 = math.sqrt %cst_3 : f16
        %275 = arith.divsi %c2079524800_i32, %142 : i32
        %276 = arith.addi %81, %81 : i32
        memref.store %c-25433_i16, %alloc_12[%c1] : memref<2xi16>
        %277 = index.sizeof
        %278 = arith.negf %cst_0 : f16
        %279 = vector.bitcast %165 : vector<7x8xi32> to vector<7x8xf32>
      } else {
        %272 = arith.remf %extracted_39, %cst : f16
        %273 = index.mul %c8, %200
        %extracted_48 = tensor.extract %13[%c6, %c6] : tensor<7x8xi32>
        %274 = arith.remf %cst, %arg0 : f16
        %275 = arith.andi %c24492_i16, %c17955_i16 : i16
        memref.store %cst_2, %alloc_16[%c0, %c1, %c6] : memref<2x2x7xf32>
        %276 = tensor.empty(%117) : tensor<?x2xf16>
        %277 = math.log1p %1 : tensor<2x2x7xf16>
      }
      %261 = bufferization.clone %77 : memref<10x2xi16> to memref<10x2xi16>
      %262 = arith.remf %cst_5, %cst_2 : f32
      %263 = arith.xori %c1335811011_i32, %c1335811011_i32 : i32
      %264 = vector.insertelement %cst_5, %197[%73 : index] : vector<2xf32>
      %265 = bufferization.clone %alloc_18 : memref<7x8xi32> to memref<7x8xi32>
      %rank = tensor.rank %2 : tensor<10x2xi1>
      %266 = math.log10 %arg0 : f16
      %267 = index.add %205, %c4
      %268 = scf.if %false_35 -> (memref<7x8xi64>) {
        %272 = bufferization.clone %alloc_20 : memref<2x2x7xf16> to memref<2x2x7xf16>
        %273 = vector.broadcast %cst_5 : f32 to vector<2x2x7xf32>
        %274 = vector.fma %273, %36, %259 : vector<2x2x7xf32>
        %275 = arith.shrsi %142, %81 : i32
        %cast_48 = tensor.cast %201 : tensor<2x2x7xi16> to tensor<?x?x?xi16>
        %276 = math.ipowi %3, %13 : tensor<7x8xi32>
        vector.print %165 : vector<7x8xi32>
        %inserted_49 = tensor.insert %c1335811011_i32 into %cast_37[%c0, %c0] : tensor<?x?xi32>
        %277 = arith.muli %c0_i16, %c26135_i16 : i16
        %alloc_50 = memref.alloc() : memref<7x8xi64>
        scf.yield %alloc_50 : memref<7x8xi64>
      } else {
        %272 = math.ctpop %3 : tensor<7x8xi32>
        %273 = vector.broadcast %c26135_i16 : i16 to vector<10x10xi16>
        %274 = vector.outerproduct %19, %19, %273 {kind = #vector.kind<xor>} : vector<10xi16>, vector<10xi16>
        %275 = index.castu %c13 : index to i32
        %276 = arith.negf %extracted_39 : f16
        memref.copy %176, %alloc : memref<10x2xi1> to memref<10x2xi1>
        %277 = index.casts %150 : index to i32
        vector.print %47 : vector<10x2xi16>
        %expanded_48 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<7x8xi32> into tensor<7x8x1xi32>
        %alloc_49 = memref.alloc() : memref<7x8xi64>
        scf.yield %alloc_49 : memref<7x8xi64>
      }
      %269 = arith.remui %c-25433_i16, %c24492_i16 : i16
      %270 = index.ceildivs %c2, %186
      %271 = vector.transpose %147, [1, 0] : vector<10x2xi1> to vector<2x10xi1>
      scf.yield %cst_0 : f16
    }
    %226 = math.atan2 %cst_0, %cst_3 : f16
    %227 = vector.broadcast %c17955_i16 : i16 to vector<2x2x7xi16>
    %228 = index.mul %173, %200
    %229 = memref.load %alloc_11[%c5, %c1] : memref<10x2xf32>
    %230 = math.atan %cst_4 : f16
    %231 = math.log1p %cst : f16
    %cast_41 = tensor.cast %137 : tensor<2xf16> to tensor<?xf16>
    %232 = tensor.empty() : tensor<2x7xi1>
    %233 = tensor.empty() : tensor<10x7xi1>
    %234 = linalg.matmul ins(%2, %232 : tensor<10x2xi1>, tensor<2x7xi1>) outs(%233 : tensor<10x7xi1>) -> tensor<10x7xi1>
    %235 = tensor.empty() : tensor<2xi16>
    %236 = index.casts %150 : index to i32
    %237 = math.log2 %1 : tensor<2x2x7xf16>
    %238 = arith.minsi %81, %c2079524800_i32 : i32
    %239 = math.ctpop %c1335811011_i32 : i32
    %240 = vector.splat %150 : vector<2xindex>
    %false_42 = index.bool.constant false
    memref.assume_alignment %alloc_11, 1 : memref<10x2xf32>
    %241 = math.atan %222 : f32
    memref.assume_alignment %alloc_14, 2 : memref<7x8xf16>
    %242 = bufferization.to_tensor %alloc_18 : memref<7x8xi32>
    %243 = vector.shuffle %135, %19 [2, 3, 4, 6, 10, 11] : vector<2xi16>, vector<10xi16>
    %244 = vector.transpose %47, [1, 0] : vector<10x2xi16> to vector<2x10xi16>
    %false_43 = index.bool.constant false
    %245 = vector.broadcast %53 : i64 to vector<2x2x7xi64>
    %246 = memref.realloc %alloc_7 : memref<2xi32> to memref<8xi32>
    %247 = arith.remsi %c17955_i16, %c17955_i16 : i16
    %248 = math.log10 %11 : tensor<2x2x7xf32>
    %249 = math.cos %cst_6 : f16
    %250 = index.castu %c5 : index to i32
    %251 = arith.shrsi %true, %false_35 : i1
    %252 = math.tanh %11 : tensor<2x2x7xf32>
    %from_elements = tensor.from_elements %cst_2, %222 : tensor<2xf32>
    %253 = vector.broadcast %186 : index to vector<8xindex>
    %254 = vector.broadcast %cst_1 : f32 to vector<8xf32>
    vector.scatter %alloc_8[%c0, %c0, %c6] [%253], %63, %254 : memref<2x2x7xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    %255 = math.rsqrt %cst_3 : f16
    %256 = tensor.empty() : tensor<2x2x7xf32>
    %257 = linalg.copy ins(%11 : tensor<2x2x7xf32>) outs(%256 : tensor<2x2x7xf32>) -> tensor<2x2x7xf32>
    %alloc_44 = memref.alloc() : memref<7x4xi32>
    linalg.transpose ins(%collapsed : tensor<4x7xi32>) outs(%alloc_44 : memref<7x4xi32>) permutation = [1, 0] 
    %alloc_45 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc_14 : memref<7x8xf16>) outs(%alloc_45 : memref<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %259 = arith.minsi %c26135_i16, %c26135_i16 : i16
        %260 = math.log1p %cst_0 : f16
        %261 = arith.andi %false_42, %true : i1
        memref.store %c2079524800_i32, %alloc_7[%c0] : memref<2xi32>
        %262 = tensor.empty() : tensor<7x8xi32>
        %263 = math.powf %137, %137 : tensor<2xf16>
        %264 = vector.broadcast %222 : f32 to vector<2x2xf32>
        %265 = vector.outerproduct %198, %198, %264 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
        %266 = math.ctpop %24 : tensor<10x2xi32>
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    scf.parallel (%arg0) = (%130) to (%228) step (%c5) {
      %259 = tensor.empty() : tensor<7x8xi64>
      %260 = index.mul %99, %23
      %261 = index.mul %186, %c7
      memref.assume_alignment %alloc_12, 4 : memref<2xi16>
      %262 = arith.minsi %53, %53 : i64
      %263 = math.round %256 : tensor<2x2x7xf32>
      memref.store %c0_i64, %alloc_17[%c8, %c1] : memref<10x2xi64>
      %264 = vector.insertelement %cst_2, %197[%c8 : index] : vector<2xf32>
      %265 = memref.load %alloc_44[%c1, %c3] : memref<7x4xi32>
      %266 = vector.broadcast %222 : f32 to vector<10x2x7xf32>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %148, %37, %266 : vector<10x2xf32>, vector<2x2x7xf32> into vector<10x2x7xf32>
      %268 = vector.bitcast %80 : vector<10x2xi32> to vector<10x2xi32>
      scf.if %false_35 {
        %272 = vector.splat %73 : vector<7x8xindex>
        %273 = arith.divsi %false_43, %false : i1
        %274 = arith.subi %c26135_i16, %c24492_i16 : i16
        %cast_48 = tensor.cast %201 : tensor<2x2x7xi16> to tensor<?x?x?xi16>
        %275 = vector.bitcast %126 : vector<2x2x7xf32> to vector<2x2x7xf32>
        %276 = math.fma %137, %137, %137 : tensor<2xf16>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %19, %47, %135 : vector<10xi16>, vector<10x2xi16> into vector<2xi16>
        %278 = vector.shuffle %37, %37 [0, 1, 2] : vector<2x2x7xf32>, vector<2x2x7xf32>
      }
      %from_elements_47 = tensor.from_elements %c1335811011_i32, %81 : tensor<2xi32>
      scf.if %false_35 {
        %272 = vector.load %alloc_9[%c0, %c4] : memref<7x8xi32>, vector<2x2x7xi32>
        %273 = math.floor %cst_3 : f16
        %274 = arith.muli %false, %false_42 : i1
        %275 = math.fma %11, %257, %11 : tensor<2x2x7xf32>
        %276 = vector.splat %extracted_39 : vector<2x2x7xf16>
        %277 = math.log10 %cst_2 : f32
        %278 = index.divs %c10, %c12
        %cst_48 = arith.constant 0x4DDE0D32 : f32
      }
      %269 = vector.broadcast %c17955_i16 : i16 to vector<2x2xi16>
      %270 = vector.outerproduct %135, %135, %269 {kind = #vector.kind<minui>} : vector<2xi16>, vector<2xi16>
      %271 = vector.multi_reduction <add>, %114, %114 [] : vector<4xi16> to vector<4xi16>
      scf.yield
    }
    %258 = affine.vector_load %alloc_10[%c14] : memref<2xi64>, vector<10xi64>
    affine.vector_store %198, %alloc_16[%117, %117, %109] : memref<2x2x7xf32>, vector<2xf32>
    vector.print %19 : vector<10xi16>
    vector.print %36 : vector<2x2x7xf32>
    vector.print %37 : vector<2x2x7xf32>
    vector.print %47 : vector<10x2xi16>
    vector.print %63 : vector<8xi1>
    vector.print %74 : vector<10x2xi32>
    vector.print %80 : vector<10x2xi32>
    vector.print %92 : vector<2x2x7xf32>
    vector.print %112 : vector<2x7xf32>
    vector.print %114 : vector<4xi16>
    vector.print %126 : vector<2x2x7xf32>
    vector.print %135 : vector<2xi16>
    vector.print %146 : vector<10x2xf32>
    vector.print %147 : vector<10x2xi1>
    vector.print %148 : vector<10x2xf32>
    vector.print %165 : vector<7x8xi32>
    vector.print %170 : vector<10x2xi32>
    vector.print %197 : vector<2xf32>
    vector.print %198 : vector<2xf32>
    vector.print %227 : vector<2x2x7xi16>
    vector.print %245 : vector<2x2x7xi64>
    vector.print %258 : vector<10xi64>
    vector.print %true : i1
    vector.print %c17955_i16 : i16
    vector.print %c2079524800_i32 : i32
    vector.print %cst : f16
    vector.print %c-25433_i16 : i16
    vector.print %c1335811011_i32 : i32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %c26135_i16 : i16
    vector.print %false : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %c24492_i16 : i16
    vector.print %cst_5 : f32
    vector.print %cst_6 : f16
    vector.print %53 : i64
    vector.print %c0_i64 : i64
    vector.print %81 : i32
    vector.print %c0_i16 : i16
    vector.print %142 : i32
    vector.print %c1_i16 : i16
    vector.print %extracted : i64
    vector.print %false_35 : i1
    vector.print %extracted_39 : f16
    vector.print %222 : f32
    vector.print %false_42 : i1
    vector.print %false_43 : i1
    %alloc_46 = memref.alloc() : memref<7x8xi16>
    return %alloc_46 : memref<7x8xi16>
  }
}
