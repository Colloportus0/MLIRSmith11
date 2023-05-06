module {
  func.func private @func1(%arg0: vector<3x7xi1>, %arg1: vector<3x3xi1>) {
    %cst = arith.constant 1.86350067E+9 : f32
    %cst_0 = arith.constant 4.131200e+04 : f16
    %cst_1 = arith.constant 1.686400e+04 : f16
    %true = arith.constant true
    %c1410414642_i32 = arith.constant 1410414642 : i32
    %c1339498953_i64 = arith.constant 1339498953 : i64
    %c1555822493_i32 = arith.constant 1555822493 : i32
    %cst_2 = arith.constant 1.920160e+09 : f32
    %true_3 = arith.constant true
    %false = arith.constant false
    %cst_4 = arith.constant 0x4E69F3BD : f32
    %c1936655018_i32 = arith.constant 1936655018 : i32
    %c423853968_i32 = arith.constant 423853968 : i32
    %c1012543730_i32 = arith.constant 1012543730 : i32
    %c1514_i16 = arith.constant 1514 : i16
    %cst_5 = arith.constant 1.17023437E+9 : f32
    %0 = tensor.empty() : tensor<7x5x7xi16>
    %1 = tensor.empty() : tensor<3x5x7xi64>
    %2 = tensor.empty() : tensor<3x5x7xf16>
    %3 = tensor.empty() : tensor<3x3xf16>
    %4 = tensor.empty() : tensor<3x3xi16>
    %5 = tensor.empty() : tensor<3x3xf32>
    %6 = tensor.empty() : tensor<7x5x7xf32>
    %7 = tensor.empty() : tensor<3x3xf16>
    %8 = tensor.empty() : tensor<7x5x7xi16>
    %9 = tensor.empty() : tensor<3x5x7xf32>
    %10 = tensor.empty() : tensor<3x7xi64>
    %11 = tensor.empty() : tensor<3x7xi16>
    %12 = tensor.empty() : tensor<3x5x7xi1>
    %13 = tensor.empty() : tensor<3x3xi64>
    %14 = tensor.empty() : tensor<7x5x7xi1>
    %15 = tensor.empty() : tensor<3x5x7xi64>
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
    %alloc = memref.alloc() : memref<7x5x7xf16>
    %alloc_6 = memref.alloc() : memref<3x7xi32>
    %alloc_7 = memref.alloc() : memref<7x5x7xi1>
    %alloc_8 = memref.alloc() : memref<3x7xi32>
    %alloc_9 = memref.alloc() : memref<3x5x7xf16>
    %alloc_10 = memref.alloc() : memref<3x5x7xf32>
    %alloc_11 = memref.alloc() : memref<3x3xi32>
    %alloc_12 = memref.alloc() : memref<3x5x7xf16>
    %alloc_13 = memref.alloc() : memref<3x3xi64>
    %alloc_14 = memref.alloc() : memref<3x5x7xi1>
    %alloc_15 = memref.alloc() : memref<3x3xf32>
    %alloc_16 = memref.alloc() : memref<3x5x7xf32>
    %alloc_17 = memref.alloc() : memref<7x5x7xf32>
    %alloc_18 = memref.alloc() : memref<3x5x7xi64>
    %alloc_19 = memref.alloc() : memref<7x5x7xf32>
    %alloc_20 = memref.alloc() : memref<3x3xi16>
    %16 = tensor.empty() : tensor<7x5x7xi1>
    %17 = linalg.copy ins(%14 : tensor<7x5x7xi1>) outs(%16 : tensor<7x5x7xi1>) -> tensor<7x5x7xi1>
    %18 = tensor.empty() : tensor<7x3x5xi1>
    %transposed = linalg.transpose ins(%12 : tensor<3x5x7xi1>) outs(%18 : tensor<7x3x5xi1>) permutation = [2, 0, 1] 
    %alloc_21 = memref.alloc() : memref<7x5xf32>
    linalg.reduce ins(%alloc_19 : memref<7x5x7xf32>) outs(%alloc_21 : memref<7x5xf32>) dimensions = [2] 
      (%in: f32, %init: f32) {
        %inserted_51 = tensor.insert %c1514_i16 into %8[%c4, %c4, %c2] : tensor<7x5x7xi16>
        %270 = math.roundeven %3 : tensor<3x3xf16>
        %271 = vector.broadcast %true : i1 to vector<i1>
        %272 = vector.transfer_write %271, %18[%c6, %c12, %c1] : vector<i1>, tensor<7x3x5xi1>
        %273 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 4)>(%c7, %c9)
        %274 = math.log2 %init : f32
        %275 = vector.broadcast %c1514_i16 : i16 to vector<3xi16>
        %276 = vector.broadcast %c1514_i16 : i16 to vector<3x3xi16>
        %277 = vector.outerproduct %275, %275, %276 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
        %278 = scf.while (%arg2 = %cst_2) : (f32) -> f32 {
          %281 = arith.shrui %c423853968_i32, %c1936655018_i32 : i32
          %282 = math.ipowi %c423853968_i32, %c1012543730_i32 : i32
          %283 = index.ceildivu %c5, %c15
          %284 = math.tan %init : f32
          %285 = math.absi %c1555822493_i32 : i32
          %286 = arith.divui %c1936655018_i32, %c1555822493_i32 : i32
          %287 = vector.broadcast %false : i1 to vector<3xi1>
          %288 = vector.maskedload %alloc_7[%c6, %c1, %c5], %287, %287 : memref<7x5x7xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
          %289 = arith.divsi %c423853968_i32, %c1012543730_i32 : i32
          scf.condition(%false) %cst_5 : f32
        } do {
        ^bb0(%arg2: f32):
          %false_53 = index.bool.constant false
          %281 = math.fma %cst_5, %in, %arg2 : f32
          %282 = arith.addf %in, %arg2 : f32
          %283 = arith.maxf %cst_2, %cst_2 : f32
          %284 = arith.cmpi uge, %c1936655018_i32, %c1555822493_i32 : i32
          %285 = vector.broadcast %true_3 : i1 to vector<i1>
          %286 = vector.transfer_write %285, %14[%c10, %c7, %c8] : vector<i1>, tensor<7x5x7xi1>
          %287 = math.roundeven %init : f32
          %288 = math.exp %arg2 : f32
          %289 = vector.broadcast %init : f32 to vector<3x5x7xf32>
          %290 = arith.remui %c1410414642_i32, %c423853968_i32 : i32
          memref.store %cst_1, %alloc_9[%c0, %c1, %c1] : memref<3x5x7xf16>
          %291 = vector.broadcast %cst_4 : f32 to vector<1xf32>
          %292 = vector.broadcast %false_53 : i1 to vector<1xi1>
          %293 = vector.maskedload %alloc_21[%c3, %c2], %292, %291 : memref<7x5xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %294 = arith.minui %c1936655018_i32, %c1555822493_i32 : i32
          %295 = index.divu %c4, %c5
          %296 = math.log10 %cst_2 : f32
          %297 = vector.broadcast %cst : f32 to vector<1x1xf32>
          %298 = vector.outerproduct %293, %293, %297 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
          scf.yield %in : f32
        }
        %279 = tensor.empty() : tensor<3x3xi32>
        %280 = math.fpowi %3, %279 : tensor<3x3xf16>, tensor<3x3xi32>
        %cst_52 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_52 : f32
      }
    scf.parallel (%arg2) = (%c12) to (%c4) step (%c13) {
      %270 = arith.shrsi %c1514_i16, %c1514_i16 : i16
      memref.assume_alignment %alloc_12, 8 : memref<3x5x7xf16>
      %271 = tensor.empty() : tensor<3x5x7xi32>
      %272 = math.fpowi %2, %271 : tensor<3x5x7xf16>, tensor<3x5x7xi32>
      %expanded_51 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<7x3x5xi1> into tensor<7x3x5x1xi1>
      %273 = memref.alloca_scope  -> (memref<3x3xf16>) {
        %289 = arith.andi %c1514_i16, %c1514_i16 : i16
        %290 = index.add %c2, %c4
        %291 = vector.broadcast %c9 : index to vector<7xindex>
        %292 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_7[%c1, %c4, %c5] [%291], %292, %292 : memref<7x5x7xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %293 = vector.broadcast %true_3 : i1 to vector<1xi1>
        %294 = vector.multi_reduction <add>, %293, %293 [] : vector<1xi1> to vector<1xi1>
        %c1836908784_i32 = arith.constant 1836908784 : i32
        %295 = arith.addf %cst_5, %cst_2 : f32
        %296 = vector.broadcast %true : i1 to vector<7x5x7xi1>
        memref.store %cst, %alloc_15[%c2, %c1] : memref<3x3xf32>
        %collapsed_53 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<3x5x7xi64> into tensor<15x7xi64>
        %297 = vector.insertelement %true, %293[%c1 : index] : vector<1xi1>
        %298 = vector.broadcast %true_3 : i1 to vector<7xi1>
        %299 = vector.multi_reduction <minsi>, %296, %298 [0, 1] : vector<7x5x7xi1> to vector<7xi1>
        %300 = vector.load %alloc_8[%c1, %c2] : memref<3x7xi32>, vector<3x5x7xi32>
        %301 = index.floordivs %c15, %c2
        bufferization.dealloc_tensor %1 : tensor<3x5x7xi64>
        %302 = arith.divui %c1012543730_i32, %c423853968_i32 : i32
        %alloc_54 = memref.alloc() : memref<7x5x7xf16>
        %303 = arith.remui %c1012543730_i32, %c1936655018_i32 : i32
        %304 = arith.minf %cst, %cst_2 : f32
        %305 = vector.broadcast %c1339498953_i64 : i64 to vector<i64>
        %306 = vector.transfer_write %305, %collapsed_53[%c1, %c9] : vector<i64>, tensor<15x7xi64>
        %307 = tensor.empty() : tensor<3x3xi32>
        %308 = math.rsqrt %cst : f32
        %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %293, %293, %false : vector<1xi1>, vector<1xi1> into i1
        %310 = vector.broadcast %c1555822493_i32 : i32 to vector<3x7xi32>
        %311 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 mod 32) ceildiv 64)>(%c6, %c8, %c7, %c12)
        %collapsed_55 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<7x5x7xi1> into tensor<35x7xi1>
        %312 = arith.remf %cst_5, %cst : f32
        %313 = index.sub %c4, %290
        %314 = vector.transpose %305, [] : vector<i64> to vector<i64>
        %315 = memref.atomic_rmw maxu %c1339498953_i64, %alloc_18[%c1, %c1, %c5] : (i64, memref<3x5x7xi64>) -> i64
        bufferization.dealloc_tensor %307 : tensor<3x3xi32>
        %316 = index.add %c13, %c11
        %317 = arith.xori %c1514_i16, %c1514_i16 : i16
        %alloc_56 = memref.alloc() : memref<3x3xf16>
        memref.alloca_scope.return %alloc_56 : memref<3x3xf16>
      }
      %274 = arith.cmpf oge, %cst_1, %cst_1 : f16
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - (d2 * 2 - 4) - 4)>(%arg2, %c12, %arg2, %c13)
      %generated_52 = tensor.generate %c4 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %289 = vector.load %alloc_6[%c1, %c0] : memref<3x7xi32>, vector<3x3xi32>
        %290 = arith.shrsi %true_3, %true_3 : i1
        %291 = arith.divsi %true, %false : i1
        %292 = math.atan2 %5, %5 : tensor<3x3xf32>
        tensor.yield %false : i1
      } : tensor<?x5x7xi1>
      %276 = index.maxu %c14, %c14
      %277 = vector.broadcast %false : i1 to vector<i1>
      %278 = vector.transfer_write %277, %12[%c8, %c11, %c15] : vector<i1>, tensor<3x5x7xi1>
      %279 = arith.maxf %cst_4, %cst : f32
      %280 = math.ctlz %17 : tensor<7x5x7xi1>
      %281 = memref.atomic_rmw minu %c1339498953_i64, %alloc_13[%c1, %c0] : (i64, memref<3x3xi64>) -> i64
      %282 = arith.divui %c1514_i16, %c1514_i16 : i16
      %283 = tensor.empty() : tensor<7x3xi16>
      %284 = tensor.empty() : tensor<3x3xi16>
      %285 = linalg.matmul ins(%11, %283 : tensor<3x7xi16>, tensor<7x3xi16>) outs(%284 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %286 = vector.broadcast %c1339498953_i64 : i64 to vector<7xi64>
      %287 = vector.broadcast %true_3 : i1 to vector<7xi1>
      %288 = vector.maskedload %alloc_13[%c1, %c1], %287, %286 : memref<3x3xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c0, %c1] : memref<3x3xf32>, vector<1xf32>
    affine.vector_store %19, %alloc_19[%c11, %c1, %c1] : memref<7x5x7xf32>, vector<1xf32>
    %alloc_22 = memref.alloc() : memref<7xf16>
    %20 = tensor.empty() : tensor<7xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%alloc_22, %20 : memref<7xf16>, tensor<7xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = math.powf %21, %22 : tensor<f16>
    %24 = vector.broadcast %c1410414642_i32 : i32 to vector<7xi32>
    %25 = vector.broadcast %false : i1 to vector<7xi1>
    %26 = vector.maskedload %alloc_6[%c0, %c1], %25, %24 : memref<3x7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %27 = bufferization.to_tensor %alloc_20 : memref<3x3xi16>
    %28 = vector.broadcast %cst_2 : f32 to vector<3x1x1xf32>
    %29 = vector.broadcast %cst_4 : f32 to vector<3x1xf32>
    %dest, %accumulated_value = vector.scan <minf>, %28, %29 {inclusive = false, reduction_dim = 1 : i64} : vector<3x1x1xf32>, vector<3x1xf32>
    %30 = bufferization.to_memref %27 : memref<3x3xi16>
    %31 = arith.minf %cst_2, %cst_5 : f32
    %32 = math.fma %6, %6, %6 : tensor<7x5x7xf32>
    %inserted = tensor.insert %c1339498953_i64 into %1[%c0, %c1, %c0] : tensor<3x5x7xi64>
    %33 = arith.minui %true, %false : i1
    %34 = bufferization.to_tensor %alloc_16 : memref<3x5x7xf32>
    %35 = vector.splat %c10 : vector<3x5x7xindex>
    %36 = arith.shrsi %c1012543730_i32, %c1555822493_i32 : i32
    %37 = vector.flat_transpose %24 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    %38 = arith.muli %c1339498953_i64, %c1339498953_i64 : i64
    %39 = index.mul %c15, %c2
    %40 = scf.if %true_3 -> (memref<3x7xf32>) {
      %270 = math.sqrt %9 : tensor<3x5x7xf32>
      %271 = affine.load %alloc_22[%c5] : memref<7xf16>
      %272 = vector.broadcast %c1514_i16 : i16 to vector<3x7xi16>
      %273 = vector.transfer_write %272, %8[%c12, %c15, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x7xi16>, tensor<7x5x7xi16>
      %274 = math.log1p %cst_0 : f16
      %275 = math.absf %271 : f16
      %alloc_51 = memref.alloc() : memref<7x5x7xi16>
      %276 = vector.broadcast %c1514_i16 : i16 to vector<3x3xi16>
      %277 = vector.broadcast %false : i1 to vector<3x3xi1>
      %278 = vector.broadcast %c1410414642_i32 : i32 to vector<3x3xi32>
      %279 = vector.gather %alloc_51[%c13, %c8, %c1] [%278], %277, %276 : memref<7x5x7xi16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi16> into vector<3x3xi16>
      %280 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
      %281 = arith.negf %cst : f32
      %alloc_52 = memref.alloc() : memref<3x7xf32>
      scf.yield %alloc_52 : memref<3x7xf32>
    } else {
      %270 = arith.addf %cst_2, %cst_2 : f32
      %271 = tensor.empty() : tensor<7x5xi1>
      %272 = tensor.empty() : tensor<5xi1>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %272 : tensor<7x5xi1>, tensor<5xi1>) outs(%14 : tensor<7x5x7xi1>) {
      ^bb0(%in: i1, %in_54: i1, %out: i1):
        %279 = arith.cmpi slt, %c423853968_i32, %c1410414642_i32 : i32
        %280 = arith.andi %c1936655018_i32, %c423853968_i32 : i32
        %281 = arith.muli %c1936655018_i32, %c423853968_i32 : i32
        %c2014873813_i32 = arith.constant 2014873813 : i32
        %282 = vector.broadcast %in_54 : i1 to vector<3x7xi1>
        %283 = tensor.empty() : tensor<3x3xf32>
        %284 = linalg.matmul ins(%5, %5 : tensor<3x3xf32>, tensor<3x3xf32>) outs(%283 : tensor<3x3xf32>) -> tensor<3x3xf32>
        %285 = vector.multi_reduction <minui>, %25, %25 [] : vector<7xi1> to vector<7xi1>
        %286 = math.roundeven %6 : tensor<7x5x7xf32>
        %287 = math.absi %12 : tensor<3x5x7xi1>
        %288 = math.ipowi %8, %0 : tensor<7x5x7xi16>
        %289 = arith.addf %cst_0, %cst_1 : f16
        %290 = math.ipowi %in_54, %true_3 : i1
        %291 = vector.multi_reduction <or>, %24, %26 [] : vector<7xi32> to vector<7xi32>
        %292 = vector.extract %24[4] : vector<7xi32>
        %293 = vector.transpose %282, [0, 1] : vector<3x7xi1> to vector<3x7xi1>
        %294 = arith.remui %c1514_i16, %c1514_i16 : i16
        %295 = arith.maxsi %c423853968_i32, %c1012543730_i32 : i32
        %296 = vector.broadcast %out : i1 to vector<3x3xi1>
        %297 = arith.remsi %true_3, %in_54 : i1
        %298 = arith.divui %c1339498953_i64, %c1339498953_i64 : i64
        %299 = math.absi %14 : tensor<7x5x7xi1>
        vector.print %37 : vector<7xi32>
        %300 = math.ctlz %c1555822493_i32 : i32
        %301 = index.maxu %39, %c3
        %302 = arith.maxf %cst_0, %cst_1 : f16
        %303 = math.sqrt %6 : tensor<7x5x7xf32>
        %304 = bufferization.to_memref %0 : memref<7x5x7xi16>
        %305 = tensor.empty() : tensor<3x3xf16>
        %306 = linalg.matmul ins(%3, %3 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%305 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %307 = arith.divsi %c1410414642_i32, %c1012543730_i32 : i32
        %308 = index.mul %c8, %c1
        %309 = index.ceildivs %c12, %308
        %310 = bufferization.clone %alloc_7 : memref<7x5x7xi1> to memref<7x5x7xi1>
        linalg.yield %true : i1
      } -> tensor<7x5x7xi1>
      %inserted_51 = tensor.insert %cst_1 into %7[%c1, %c2] : tensor<3x3xf16>
      memref.store %cst_0, %alloc_9[%c1, %c2, %c4] : memref<3x5x7xf16>
      %274 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
      %275 = vector.outerproduct %19, %19, %274 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %inserted_52 = tensor.insert %cst_0 into %3[%c0, %c2] : tensor<3x3xf16>
      %276 = math.absi %c1339498953_i64 : i64
      %277 = tensor.empty() : tensor<3x3xi16>
      %278 = linalg.matmul ins(%27, %4 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%277 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %alloc_53 = memref.alloc() : memref<3x7xf32>
      scf.yield %alloc_53 : memref<3x7xf32>
    }
    %41 = arith.minsi %c1555822493_i32, %c423853968_i32 : i32
    %42 = math.log10 %cst_4 : f32
    %43 = arith.maxui %c1410414642_i32, %c1555822493_i32 : i32
    %44 = vector.splat %c10 : vector<7x5x7xindex>
    %45 = math.floor %2 : tensor<3x5x7xf16>
    %46 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<3x5x7xf16>) {
    ^bb0(%out: f16):
      %270 = arith.floordivsi %c1012543730_i32, %c1410414642_i32 : i32
      %271 = vector.reduction <and>, %37 : vector<7xi32> into i32
      %272 = index.add %c12, %c1
      %273 = vector.shuffle %25, %25 [0, 1, 3, 4, 6, 7, 9, 10, 12] : vector<7xi1>, vector<7xi1>
      %274 = arith.maxsi %c423853968_i32, %c1936655018_i32 : i32
      %275 = arith.negf %cst_1 : f16
      %276 = arith.mulf %cst_2, %cst_2 : f32
      %277 = arith.remui %c1555822493_i32, %c1012543730_i32 : i32
      scf.execute_region {
        %303 = math.tan %cst : f32
        %304 = math.roundeven %5 : tensor<3x3xf32>
        %305 = index.sub %c14, %c3
        %306 = vector.broadcast %cst_0 : f16 to vector<f16>
        %307 = vector.transfer_write %306, %3[%c5, %c2] : vector<f16>, tensor<3x3xf16>
        %308 = arith.maxsi %true_3, %true_3 : i1
        %309 = arith.divsi %c1410414642_i32, %c1012543730_i32 : i32
        %310 = index.casts %c12 : index to i32
        %311 = vector.transpose %25, [0] : vector<7xi1> to vector<7xi1>
        %312 = index.ceildivu %c8, %c10
        %313 = index.casts %305 : index to i32
        %314 = arith.minsi %c1936655018_i32, %c423853968_i32 : i32
        %315 = index.divs %c1, %c9
        memref.store %c1012543730_i32, %alloc_8[%c2, %c2] : memref<3x7xi32>
        %316 = vector.broadcast %true_3 : i1 to vector<1xi1>
        %317 = vector.maskedload %alloc_21[%c4, %c3], %316, %19 : memref<7x5xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %318 = vector.multi_reduction <minui>, %24, %c1012543730_i32 [0] : vector<7xi32> to i32
        %319 = arith.divui %c1410414642_i32, %c423853968_i32 : i32
        scf.yield
      }
      %278 = arith.subi %false, %false : i1
      %collapsed_51 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x5x7xf32> into tensor<15x7xf32>
      %279 = scf.execute_region -> index {
        %expanded_53 = tensor.expand_shape %20 [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
        %303 = arith.divsi %c423853968_i32, %c1936655018_i32 : i32
        %304 = arith.divf %out, %out : f16
        %305 = index.maxs %c4, %c15
        %306 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
        %307 = vector.insertelement %c1555822493_i32, %37[%c9 : index] : vector<7xi32>
        %308 = arith.floordivsi %c423853968_i32, %c1555822493_i32 : i32
        %309 = arith.xori %c1514_i16, %c1514_i16 : i16
        vector.print %25 : vector<7xi1>
        %310 = index.mul %c5, %c4
        %311 = arith.divui %c423853968_i32, %c1555822493_i32 : i32
        %312 = vector.insertelement %c1410414642_i32, %26[%c0 : index] : vector<7xi32>
        %313 = math.powf %2, %2 : tensor<3x5x7xf16>
        %314 = math.exp %5 : tensor<3x3xf32>
        %315 = vector.multi_reduction <xor>, %25, %25 [] : vector<7xi1> to vector<7xi1>
        %316 = index.casts %c7 : index to i32
        scf.yield %c6 : index
      }
      %280 = arith.minui %c1410414642_i32, %c1012543730_i32 : i32
      %281 = vector.broadcast %true_3 : i1 to vector<i1>
      vector.transfer_write %281, %alloc_7[%c14, %c1, %c0] : vector<i1>, memref<7x5x7xi1>
      %282 = affine.apply affine_map<(d0, d1, d2) -> (d0 floordiv 4 - 32)>(%c8, %c6, %c14)
      %283 = arith.addi %c1012543730_i32, %c1410414642_i32 : i32
      %284 = index.ceildivu %c13, %c6
      %285 = vector.flat_transpose %25 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %286 = bufferization.clone %30 : memref<3x3xi16> to memref<3x3xi16>
      %287 = vector.transpose %25, [0] : vector<7xi1> to vector<7xi1>
      %288 = vector.broadcast %282 : index to vector<3xindex>
      %289 = vector.broadcast %false : i1 to vector<3xi1>
      %290 = vector.broadcast %c1339498953_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_13[%c0, %c2] [%288], %289, %290 : memref<3x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %291 = vector.create_mask %c7, %282, %c15 : vector<3x5x7xi1>
      %292 = index.add %c1, %c0
      %collapsed_52 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<7x5x7xi1> into tensor<35x7xi1>
      %293 = index.maxs %c0, %c12
      %294 = vector.broadcast %out : f16 to vector<1xf16>
      %295 = vector.broadcast %true : i1 to vector<1xi1>
      %296 = vector.maskedload %alloc_12[%c1, %c0, %c3], %295, %294 : memref<3x5x7xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      %297 = vector.transpose %285, [0] : vector<7xi1> to vector<7xi1>
      %298 = math.floor %7 : tensor<3x3xf16>
      %299 = arith.addf %cst_4, %cst : f32
      %300 = vector.flat_transpose %25 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %301 = math.expm1 %3 : tensor<3x3xf16>
      %302 = vector.broadcast %c1012543730_i32 : i32 to vector<3x5x7xi32>
      linalg.yield %cst_1 : f16
    } -> tensor<3x5x7xf16>
    %47 = math.log2 %cst : f32
    %48 = arith.divui %c1339498953_i64, %c1339498953_i64 : i64
    %49 = math.absi %1 : tensor<3x5x7xi64>
    %c215874685_i32 = arith.constant 215874685 : i32
    %50 = math.ipowi %15, %15 : tensor<3x5x7xi64>
    memref.assume_alignment %alloc_16, 1 : memref<3x5x7xf32>
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<3x5x7xf32>) {
    ^bb0(%out: f32):
      %270 = arith.maxui %true, %true : i1
      %expanded_51 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<7x5x7xi1> into tensor<7x5x7x1xi1>
      %271 = math.ipowi %11, %11 : tensor<3x7xi16>
      %272 = math.exp2 %5 : tensor<3x3xf32>
      %273 = vector.broadcast %c1936655018_i32 : i32 to vector<3x5x7xi32>
      %274 = arith.remui %c1339498953_i64, %c1339498953_i64 : i64
      %275 = tensor.empty() : tensor<3x5x7xi16>
      %276 = math.rsqrt %cst_0 : f16
      %inserted_52 = tensor.insert %cst_5 into %5[%c1, %c0] : tensor<3x3xf32>
      %expanded_53 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x5x7xi16> into tensor<7x5x7x1xi16>
      %inserted_54 = tensor.insert %cst_1 into %2[%c0, %c4, %c2] : tensor<3x5x7xf16>
      %277 = index.casts %c1339498953_i64 : i64 to index
      %278 = math.ipowi %8, %8 : tensor<7x5x7xi16>
      %279 = vector.broadcast %c1514_i16 : i16 to vector<i16>
      %280 = vector.transfer_write %279, %0[%c10, %c9, %39] : vector<i16>, tensor<7x5x7xi16>
      %281 = affine.max affine_map<(d0, d1, d2) -> (-((-d0) ceildiv 2) - 16)>(%c2, %c4, %277)
      %generated_55 = tensor.generate %c3, %39 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %296 = index.ceildivu %c3, %c3
        %297 = tensor.empty() : tensor<7x5x7xf16>
        %298 = vector.broadcast %cst_0 : f16 to vector<3x7xf16>
        %299 = vector.broadcast %true_3 : i1 to vector<3x7xi1>
        %300 = vector.broadcast %c423853968_i32 : i32 to vector<3x7xi32>
        %301 = vector.gather %297[%296, %arg3, %c2] [%300], %299, %298 : tensor<7x5x7xf16>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf16> into vector<3x7xf16>
        %302 = memref.atomic_rmw assign %cst_1, %alloc_12[%c0, %c0, %c0] : (f16, memref<3x5x7xf16>) -> f16
        %alloc_57 = memref.alloc() : memref<7x5x7xi16>
        tensor.yield %c1339498953_i64 : i64
      } : tensor<?x?x7xi64>
      %282 = tensor.empty() : tensor<7xf16>
      %mapped_56 = linalg.map ins(%alloc_22, %20 : memref<7xf16>, tensor<7xf16>) outs(%282 : tensor<7xf16>)
        (%in: f16, %in_57: f16) {
          %296 = arith.remf %in, %cst_0 : f16
          %297 = index.divs %281, %c1
          %298 = arith.muli %false, %true : i1
          %299 = arith.mulf %out, %cst_2 : f32
          %300 = arith.divui %c423853968_i32, %c1012543730_i32 : i32
          %301 = math.log10 %5 : tensor<3x3xf32>
          %302 = arith.addf %in, %in_57 : f16
          %303 = arith.remui %c1339498953_i64, %c1339498953_i64 : i64
          %304 = math.floor %6 : tensor<7x5x7xf32>
          %305 = bufferization.to_tensor %alloc_21 : memref<7x5xf32>
          %306 = vector.splat %277 : vector<3x7xindex>
          %307 = vector.splat %c4 : vector<3x3xindex>
          %expanded_58 = tensor.expand_shape %34 [[0], [1], [2, 3]] : tensor<3x5x7xf32> into tensor<3x5x7x1xf32>
          %308 = vector.broadcast %c1555822493_i32 : i32 to vector<3x7xi32>
          %dest_59, %accumulated_value_60 = vector.scan <xor>, %273, %308 {inclusive = false, reduction_dim = 1 : i64} : vector<3x5x7xi32>, vector<3x7xi32>
          %309 = arith.mulf %cst_5, %out : f32
          %310 = index.casts %c1339498953_i64 : i64 to index
          %inserted_61 = tensor.insert %false into %14[%c3, %c2, %c2] : tensor<7x5x7xi1>
          %311 = math.fpowi %cst, %c1936655018_i32 : f32, i32
          %312 = math.log2 %cst_0 : f16
          %313 = arith.minf %cst_2, %cst : f32
          %314 = vector.load %alloc_22[%c3] : memref<7xf16>, vector<3x3xf16>
          %315 = arith.maxf %cst_1, %in : f16
          %cast = tensor.cast %10 : tensor<3x7xi64> to tensor<?x?xi64>
          vector.print %37 : vector<7xi32>
          %316 = vector.extract_strided_slice %24 {offsets = [0], sizes = [6], strides = [1]} : vector<7xi32> to vector<6xi32>
          %317 = vector.create_mask %c12, %c9, %c15 : vector<7x5x7xi1>
          %318 = bufferization.clone %alloc_8 : memref<3x7xi32> to memref<3x7xi32>
          %319 = affine.load %alloc[%c0, %c13, %c4] : memref<7x5x7xf16>
          %320 = arith.ori %true_3, %false : i1
          %321 = math.log10 %2 : tensor<3x5x7xf16>
          %322 = vector.insertelement %c1936655018_i32, %26[%c8 : index] : vector<7xi32>
          %323 = index.floordivs %c7, %c5
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %283 = index.add %c12, %c13
      %284 = memref.atomic_rmw maxu %c1012543730_i32, %alloc_11[%c1, %c2] : (i32, memref<3x3xi32>) -> i32
      %285 = arith.shrsi %false, %true_3 : i1
      memref.copy %alloc_16, %alloc_10 : memref<3x5x7xf32> to memref<3x5x7xf32>
      %286 = arith.shrsi %true, %true : i1
      vector.print %26 : vector<7xi32>
      %287 = tensor.empty() : tensor<3x3xi16>
      %288 = linalg.matmul ins(%27, %4 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%287 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %289 = arith.remui %c1936655018_i32, %c1936655018_i32 : i32
      %290 = arith.minf %cst_5, %cst_2 : f32
      %291 = tensor.empty(%c4) : tensor<3x?xi16>
      %292 = arith.addf %cst_0, %cst_1 : f16
      %293 = math.copysign %2, %2 : tensor<3x5x7xf16>
      %294 = math.floor %3 : tensor<3x3xf16>
      memref.store %cst_0, %alloc_22[%c2] : memref<7xf16>
      %295 = vector.multi_reduction <maxsi>, %26, %c1555822493_i32 [0] : vector<7xi32> to i32
      linalg.yield %cst : f32
    } -> tensor<3x5x7xf32>
    %52 = vector.broadcast %false : i1 to vector<5xi1>
    %53 = vector.transfer_write %52, %18[%c1, %c7, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<7x3x5xi1>
    %54 = index.mul %c8, %c2
    %55 = vector.insertelement %c1410414642_i32, %37[%c9 : index] : vector<7xi32>
    %56 = vector.insertelement %c1936655018_i32, %26[%c6 : index] : vector<7xi32>
    %57 = vector.multi_reduction <maxui>, %25, %25 [] : vector<7xi1> to vector<7xi1>
    %58 = math.cttz %c423853968_i32 : i32
    %59 = math.exp %cst : f32
    %60 = bufferization.clone %alloc_8 : memref<3x7xi32> to memref<3x7xi32>
    memref.alloca_scope  {
      %270 = vector.insertelement %c1936655018_i32, %26[%c10 : index] : vector<7xi32>
      %271 = math.powf %20, %20 : tensor<7xf16>
      %272 = vector.broadcast %true : i1 to vector<1xi1>
      %273 = vector.maskedload %alloc_14[%c2, %c3, %c3], %272, %272 : memref<3x5x7xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %274 = vector.matrix_multiply %272, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi1>, vector<7xi1>) -> vector<7xi1>
      %expanded_51 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<3x5x7xi64> into tensor<3x5x7x1xi64>
      %275 = math.floor %21 : tensor<f16>
      %276 = tensor.empty() : tensor<3x3xi16>
      %277 = linalg.matmul ins(%4, %27 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%276 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %278 = arith.minf %cst_4, %cst_4 : f32
      %false_52 = index.bool.constant false
      %279 = math.fma %20, %20, %20 : tensor<7xf16>
      %280 = vector.broadcast %c1339498953_i64 : i64 to vector<i64>
      %281 = vector.transfer_write %280, %10[%c10, %c10] : vector<i64>, tensor<3x7xi64>
      %282 = math.expm1 %9 : tensor<3x5x7xf32>
      %283 = index.add %c9, %c11
      %284 = vector.splat %c3 : vector<7x5x7xindex>
      %285 = math.exp2 %cst : f32
      %286 = affine.load %alloc_17[%c6, %c11, %c15] : memref<7x5x7xf32>
      %287 = index.ceildivu %c14, %c14
      %splat = tensor.splat %false_52 : tensor<3x7xi1>
      %288 = arith.muli %true_3, %true_3 : i1
      %289 = vector.insert %false, %273 [0] : i1 into vector<1xi1>
      %290 = math.fma %cst_5, %cst_5, %cst_5 : f32
      %291 = arith.shrsi %c1555822493_i32, %c1012543730_i32 : i32
      %292 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %293 = vector.transfer_write %292, %6[%c7, %c2, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x3xf32>, tensor<7x5x7xf32>
      %294 = math.fma %9, %9, %34 : tensor<3x5x7xf32>
      %295 = affine.load %alloc_22[%c11] : memref<7xf16>
      %296 = index.add %c4, %c1
      %297 = arith.divsi %c1410414642_i32, %c1012543730_i32 : i32
      memref.store %c1514_i16, %alloc_20[%c2, %c2] : memref<3x3xi16>
      %298 = arith.remui %c1339498953_i64, %c1339498953_i64 : i64
      %299 = index.divs %c12, %c12
      %300 = math.log2 %21 : tensor<f16>
      %301 = math.expm1 %7 : tensor<3x3xf16>
    }
    %expanded = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<3x5x7xf16> into tensor<3x5x7x1xf16>
    %61 = arith.addf %cst_4, %cst_4 : f32
    %false_23 = arith.constant false
    %62 = index.ceildivu %c0, %c4
    %63 = vector.extract_strided_slice %26 {offsets = [4], sizes = [1], strides = [1]} : vector<7xi32> to vector<1xi32>
    memref.assume_alignment %alloc_21, 16 : memref<7x5xf32>
    %64 = tensor.empty() : tensor<7xi16>
    %65 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%64, %64 : tensor<7xi16>, tensor<7xi16>) outs(%0 : tensor<7x5x7xi16>) {
    ^bb0(%in: i16, %in_51: i16, %out: i16):
      %expanded_52 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x5x7xi16> into tensor<7x5x7x1xi16>
      %270 = index.floordivs %c12, %c2
      %271 = scf.execute_region -> memref<3x5x7xi16> {
        %300 = arith.maxui %c1514_i16, %out : i16
        %301 = vector.extract %63[0] : vector<1xi32>
        %302 = vector.flat_transpose %52 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %303 = vector.broadcast %true_3 : i1 to vector<7x5xi1>
        %dest_54, %accumulated_value_55 = vector.scan <maxui>, %303, %25 {inclusive = false, reduction_dim = 1 : i64} : vector<7x5xi1>, vector<7xi1>
        %304 = vector.flat_transpose %52 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %305 = arith.minui %c1936655018_i32, %c423853968_i32 : i32
        %306 = vector.multi_reduction <mul>, %19, %cst_2 [0] : vector<1xf32> to f32
        %307 = index.ceildivs %c13, %c4
        %308 = arith.cmpi sgt, %c1339498953_i64, %c1339498953_i64 : i64
        %309 = math.powf %6, %6 : tensor<7x5x7xf32>
        %310 = tensor.empty() : tensor<7x5x7xi32>
        %311 = vector.broadcast %c1410414642_i32 : i32 to vector<7x5x7xi32>
        %312 = vector.broadcast %true : i1 to vector<7x5x7xi1>
        %313 = vector.gather %310[%270, %54, %62] [%311], %312, %311 : tensor<7x5x7xi32>, vector<7x5x7xi32>, vector<7x5x7xi1>, vector<7x5x7xi32> into vector<7x5x7xi32>
        %collapsed_56 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x5x7xf32> into tensor<15x7xf32>
        %314 = index.add %c10, %c0
        %315 = vector.shuffle %63, %24 [7] : vector<1xi32>, vector<7xi32>
        %316 = index.ceildivs %c12, %270
        %317 = math.expm1 %20 : tensor<7xf16>
        %alloc_57 = memref.alloc() : memref<3x5x7xi16>
        scf.yield %alloc_57 : memref<3x5x7xi16>
      }
      %272 = vector.broadcast %c1936655018_i32 : i32 to vector<7x5x7xi32>
      %273 = arith.cmpi ult, %false, %false : i1
      %274 = arith.addf %cst, %cst_2 : f32
      %275 = arith.maxf %cst_4, %cst : f32
      %276 = arith.minui %c1514_i16, %c1514_i16 : i16
      %splat = tensor.splat %in_51 : tensor<7x5x7xi16>
      %277 = math.floor %2 : tensor<3x5x7xf16>
      %278 = math.expm1 %20 : tensor<7xf16>
      %279 = index.add %62, %62
      %280 = math.absi %0 : tensor<7x5x7xi16>
      %281 = index.maxu %c4, %c2
      affine.store %c1936655018_i32, %alloc_8[%c10, %c7] : memref<3x7xi32>
      %282 = arith.addf %cst, %cst_4 : f32
      %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + (d0 - d1) mod 16)>(%c8, %c10, %c0, %c0)
      %284 = vector.shuffle %24, %24 [3, 4, 8, 9, 10, 11, 12, 13] : vector<7xi32>, vector<7xi32>
      %285 = arith.shrsi %true_3, %true_3 : i1
      scf.execute_region {
        %300 = arith.maxui %c1012543730_i32, %c1936655018_i32 : i32
        %301 = math.atan2 %cst_1, %cst_1 : f16
        %302 = arith.addf %cst_1, %cst_1 : f16
        %303 = bufferization.to_tensor %271 : memref<3x5x7xi16>
        %304 = arith.ori %true_3, %false : i1
        %305 = vector.broadcast %out : i16 to vector<3x3xi16>
        %306 = bufferization.to_memref %1 : memref<3x5x7xi64>
        vector.print %305 : vector<3x3xi16>
        %307 = vector.splat %c1514_i16 : vector<3x3xi16>
        %308 = vector.multi_reduction <mul>, %19, %19 [] : vector<1xf32> to vector<1xf32>
        %rank = tensor.rank %3 : tensor<3x3xf16>
        %309 = arith.remui %in, %out : i16
        %310 = bufferization.to_memref %0 : memref<7x5x7xi16>
        %311 = index.ceildivu %54, %281
        %312 = vector.splat %270 : vector<3x5x7xindex>
        %313 = arith.addf %cst, %cst : f32
        scf.yield
      }
      %alloc_53 = memref.alloc() : memref<7x3xi16>
      %286 = tensor.empty() : tensor<3x3xi16>
      %287 = linalg.matmul ins(%11, %alloc_53 : tensor<3x7xi16>, memref<7x3xi16>) outs(%286 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %288 = index.floordivs %39, %c11
      %289 = arith.minf %cst_0, %cst_0 : f16
      %290 = bufferization.to_tensor %alloc_9 : memref<3x5x7xf16>
      %291 = vector.broadcast %54 : index to vector<1xindex>
      %292 = vector.broadcast %false : i1 to vector<1xi1>
      vector.scatter %60[%c0, %c6] [%291], %292, %63 : memref<3x7xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %293 = vector.create_mask %c8, %c15, %c7 : vector<3x5x7xi1>
      %294 = memref.alloca_scope  -> (f32) {
        %300 = vector.splat %c1555822493_i32 : vector<7x5x7xi32>
        %301 = math.log2 %cst_4 : f32
        %302 = index.add %c5, %288
        %303 = vector.create_mask %c3, %c4, %c12 : vector<3x5x7xi1>
        %304 = arith.minui %c1514_i16, %c1514_i16 : i16
        %305 = arith.minf %cst, %cst_4 : f32
        %306 = math.powf %cst_4, %cst_4 : f32
        %307 = arith.shrsi %c1012543730_i32, %c1555822493_i32 : i32
        %308 = vector.extract_strided_slice %272 {offsets = [1], sizes = [1], strides = [1]} : vector<7x5x7xi32> to vector<1x5x7xi32>
        %309 = tensor.empty() : tensor<3x7xi16>
        %310 = linalg.matmul ins(%4, %11 : tensor<3x3xi16>, tensor<3x7xi16>) outs(%309 : tensor<3x7xi16>) -> tensor<3x7xi16>
        %311 = math.ctlz %false : i1
        %312 = vector.broadcast %c1339498953_i64 : i64 to vector<5xi64>
        vector.transfer_write %312, %alloc_13[%c6, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi64>, memref<3x3xi64>
        %313 = affine.load %alloc[%c8, %c10, %c1] : memref<7x5x7xf16>
        vector.print %26 : vector<7xi32>
        %314 = tensor.empty() : tensor<7x5x7xi32>
        %315 = math.fpowi %6, %314 : tensor<7x5x7xf32>, tensor<7x5x7xi32>
        %316 = math.copysign %2, %290 : tensor<3x5x7xf16>
        %317 = vector.broadcast %c1339498953_i64 : i64 to vector<7xi64>
        %318 = vector.maskedload %alloc_13[%c0, %c1], %25, %317 : memref<3x3xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %319 = vector.broadcast %cst_2 : f32 to vector<3x7xf32>
        %320 = vector.broadcast %true_3 : i1 to vector<3x7xi1>
        %321 = vector.broadcast %c423853968_i32 : i32 to vector<3x7xi32>
        %322 = vector.gather %5[%302, %c14] [%321], %320, %319 : tensor<3x3xf32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf32> into vector<3x7xf32>
        %323 = index.ceildivu %c2, %62
        %324 = vector.create_mask %288, %c10 : vector<3x7xi1>
        %325 = index.ceildivs %302, %c1
        %326 = vector.flat_transpose %37 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %327 = tensor.empty() : tensor<7x1xi16>
        %328 = tensor.empty() : tensor<3x1xi16>
        %329 = linalg.matmul ins(%309, %327 : tensor<3x7xi16>, tensor<7x1xi16>) outs(%328 : tensor<3x1xi16>) -> tensor<3x1xi16>
        %330 = vector.broadcast %cst_4 : f32 to vector<3x7xf32>
        %331 = arith.divsi %false, %false : i1
        %332 = math.round %3 : tensor<3x3xf16>
        %333 = arith.andi %c1339498953_i64, %c1339498953_i64 : i64
        %334 = arith.shrui %in_51, %in : i16
        %335 = vector.extract %272[4] : vector<7x5x7xi32>
        %336 = arith.shrsi %c1514_i16, %out : i16
        %337 = math.fma %6, %6, %6 : tensor<7x5x7xf32>
        %338 = math.fma %6, %6, %6 : tensor<7x5x7xf32>
        memref.alloca_scope.return %cst_4 : f32
      }
      %295 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 4 - d1)>(%279, %c13, %c13, %c12)
      %296 = math.absf %cst_1 : f16
      %297 = scf.while (%arg2 = %alloc_11) : (memref<3x3xi32>) -> memref<3x3xi32> {
        %300 = vector.extract_strided_slice %25 {offsets = [5], sizes = [2], strides = [1]} : vector<7xi1> to vector<2xi1>
        %301 = math.tan %7 : tensor<3x3xf16>
        %302 = math.copysign %7, %3 : tensor<3x3xf16>
        %303 = index.divu %c3, %c2
        bufferization.dealloc_tensor %34 : tensor<3x5x7xf32>
        %304 = math.absf %22 : tensor<f16>
        %collapsed_54 = tensor.collapse_shape %286 [[0, 1]] : tensor<3x3xi16> into tensor<9xi16>
        %305 = vector.broadcast %true : i1 to vector<5x7xi1>
        %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %293, %305 {inclusive = false, reduction_dim = 0 : i64} : vector<3x5x7xi1>, vector<5x7xi1>
        scf.condition(%true_3) %alloc_11 : memref<3x3xi32>
      } do {
      ^bb0(%arg2: memref<3x3xi32>):
        %300 = arith.maxui %in_51, %out : i16
        %301 = vector.shuffle %25, %52 [1, 3, 5, 8, 9, 10] : vector<7xi1>, vector<5xi1>
        %302 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %303 = index.floordivs %279, %c15
        %304 = arith.shrsi %true_3, %true_3 : i1
        %expanded_54 = tensor.expand_shape %290 [[0], [1], [2, 3]] : tensor<3x5x7xf16> into tensor<3x5x7x1xf16>
        memref.store %c1936655018_i32, %arg2[%c2, %c2] : memref<3x3xi32>
        %305 = math.tan %21 : tensor<f16>
        %306 = math.cttz %27 : tensor<3x3xi16>
        %307 = arith.maxsi %false, %true : i1
        %308 = math.exp %cst_5 : f32
        %309 = vector.transpose %293, [1, 2, 0] : vector<3x5x7xi1> to vector<5x7x3xi1>
        %310 = vector.create_mask %281, %c12 : vector<3x7xi1>
        %311 = index.divs %c6, %303
        %312 = arith.negf %cst_0 : f16
        %313 = index.add %c13, %c3
        scf.yield %alloc_11 : memref<3x3xi32>
      }
      %298 = index.sub %c9, %c7
      %299 = vector.shuffle %26, %24 [0, 2, 4, 5, 10, 11, 12] : vector<7xi32>, vector<7xi32>
      linalg.yield %out : i16
    } -> tensor<7x5x7xi16>
    %66 = index.mul %c12, %c6
    %67 = arith.minui %c1012543730_i32, %c1936655018_i32 : i32
    %68 = index.floordivs %62, %c12
    %69 = tensor.empty() : tensor<7x5x7xi32>
    %70 = math.fpowi %6, %69 : tensor<7x5x7xf32>, tensor<7x5x7xi32>
    %71 = math.exp2 %5 : tensor<3x3xf32>
    %72 = math.ctlz %1 : tensor<3x5x7xi64>
    %73 = vector.broadcast %c1514_i16 : i16 to vector<i16>
    %74 = vector.transfer_write %73, %0[%66, %68, %c0] : vector<i16>, tensor<7x5x7xi16>
    %75 = index.ceildivu %c10, %c5
    %76 = index.castu %c11 : index to i32
    %77 = memref.realloc %alloc_22 : memref<7xf16> to memref<7xf16>
    %78 = bufferization.to_tensor %alloc_13 : memref<3x3xi64>
    %79 = arith.muli %true, %true_3 : i1
    %80 = arith.maxui %c423853968_i32, %c423853968_i32 : i32
    %inserted_24 = tensor.insert %cst_0 into %20[%c3] : tensor<7xf16>
    %81 = bufferization.to_memref %11 : memref<3x7xi16>
    %alloc_25 = memref.alloc() : memref<7x7x5xi16>
    %alloc_26 = memref.alloc() : memref<7xi16>
    %82 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25, %alloc_26 : memref<7x7x5xi16>, memref<7xi16>) outs(%0 : tensor<7x5x7xi16>) {
    ^bb0(%in: i16, %in_51: i16, %out: i16):
      memref.store %c1514_i16, %alloc_20[%c2, %c2] : memref<3x3xi16>
      %collapsed_52 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<7x5x7xi1> into tensor<35x7xi1>
      %270 = math.tanh %expanded : tensor<3x5x7x1xf16>
      %271 = arith.minf %cst_4, %cst_2 : f32
      %272 = arith.minf %cst, %cst_2 : f32
      %273 = index.ceildivu %c4, %c15
      %274 = math.expm1 %6 : tensor<7x5x7xf32>
      %275 = math.fpowi %cst_0, %c1410414642_i32 : f16, i32
      %276 = math.ceil %20 : tensor<7xf16>
      %277 = index.floordivs %54, %c1
      %278 = vector.shuffle %73, %73 [0, 1] : vector<i16>, vector<i16>
      %279 = math.fma %9, %34, %34 : tensor<3x5x7xf32>
      %280 = tensor.empty() : tensor<7x5xi1>
      %281 = tensor.empty() : tensor<35x5xi1>
      %282 = linalg.matmul ins(%collapsed_52, %280 : tensor<35x7xi1>, tensor<7x5xi1>) outs(%281 : tensor<35x5xi1>) -> tensor<35x5xi1>
      %283 = vector.broadcast %cst_4 : f32 to vector<3x7xf32>
      %284 = vector.broadcast %true : i1 to vector<3x7xi1>
      %285 = vector.broadcast %c1555822493_i32 : i32 to vector<3x7xi32>
      %286 = vector.gather %alloc_17[%39, %c10, %c10] [%285], %284, %283 : memref<7x5x7xf32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf32> into vector<3x7xf32>
      %287 = arith.minui %c1514_i16, %in_51 : i16
      %288 = vector.flat_transpose %37 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
      %289 = math.fma %cst, %cst, %cst_5 : f32
      %290 = math.absi %true_3 : i1
      %291 = math.ceil %expanded : tensor<3x5x7x1xf16>
      %292 = arith.cmpf uge, %cst_0, %cst_0 : f16
      %293 = affine.apply affine_map<(d0, d1, d2) -> (d0 - 32)>(%c12, %c4, %62)
      %294 = arith.subi %true_3, %false : i1
      %295 = index.maxu %c3, %c9
      %296 = arith.cmpi uge, %c423853968_i32, %c1012543730_i32 : i32
      %297 = scf.while (%arg2 = %alloc_22) : (memref<7xf16>) -> memref<7xf16> {
        %304 = arith.maxsi %true, %true_3 : i1
        %305 = math.rsqrt %2 : tensor<3x5x7xf16>
        %306 = arith.remsi %out, %c1514_i16 : i16
        %307 = vector.multi_reduction <minui>, %285, %c1555822493_i32 [0, 1] : vector<3x7xi32> to i32
        %308 = arith.minf %cst_0, %cst_1 : f16
        %309 = bufferization.to_memref %8 : memref<7x5x7xi16>
        %310 = vector.transpose %19, [0] : vector<1xf32> to vector<1xf32>
        %311 = arith.divsi %307, %c1410414642_i32 : i32
        scf.condition(%true_3) %arg2 : memref<7xf16>
      } do {
      ^bb0(%arg2: memref<7xf16>):
        %304 = index.casts %c2 : index to i32
        %305 = index.add %c15, %c7
        %306 = math.log10 %5 : tensor<3x3xf32>
        %307 = math.exp2 %6 : tensor<7x5x7xf32>
        %308 = arith.ori %c1410414642_i32, %c1012543730_i32 : i32
        %309 = arith.xori %c1339498953_i64, %c1339498953_i64 : i64
        %310 = bufferization.to_memref %13 : memref<3x3xi64>
        %cast = tensor.cast %78 : tensor<3x3xi64> to tensor<?x?xi64>
        %311 = affine.apply affine_map<(d0) -> (d0 + 14)>(%c10)
        %312 = arith.divsi %out, %out : i16
        %313 = vector.extract %286[1] : vector<3x7xf32>
        %314 = math.copysign %cst, %cst_2 : f32
        %315 = affine.load %arg2[%c8] : memref<7xf16>
        %316 = vector.shuffle %73, %73 [0, 1] : vector<i16>, vector<i16>
        %317 = math.expm1 %2 : tensor<3x5x7xf16>
        %318 = index.ceildivu %c0, %68
        scf.yield %alloc_22 : memref<7xf16>
      }
      %298 = arith.cmpi eq, %true_3, %false : i1
      %alloc_53 = memref.alloc() : memref<7x5x7xf16>
      memref.copy %alloc, %alloc_53 : memref<7x5x7xf16> to memref<7x5x7xf16>
      %299 = arith.remsi %out, %out : i16
      %300 = affine.if affine_set<(d0, d1, d2, d3) : (d0 + d3 * 2 == 0, ((((d3 + d2) floordiv 8) ceildiv 64) mod 2) floordiv 64 >= 0)>(%c11, %c11, %c10, %c1) -> f16 {
        %304 = vector.insert %25, %284 [1] : vector<7xi1> into vector<3x7xi1>
        %305 = arith.xori %true, %true_3 : i1
        %306 = math.ctlz %c423853968_i32 : i32
        %307 = math.cttz %281 : tensor<35x5xi1>
        %alloc_54 = memref.alloc() : memref<7x5x7xi1>
        memref.copy %alloc_7, %alloc_54 : memref<7x5x7xi1> to memref<7x5x7xi1>
        %308 = math.exp %21 : tensor<f16>
        %309 = arith.remf %cst_1, %cst_0 : f16
        %310 = arith.ceildivsi %c423853968_i32, %c1936655018_i32 : i32
        affine.yield %cst_0 : f16
      } else {
        %304 = math.exp2 %cst : f32
        %305 = arith.floordivsi %c1555822493_i32, %c423853968_i32 : i32
        %306 = arith.remf %cst_0, %cst_1 : f16
        %307 = index.divs %68, %39
        %308 = arith.cmpf ult, %cst_1, %cst_0 : f16
        %309 = math.expm1 %21 : tensor<f16>
        %310 = math.exp %21 : tensor<f16>
        %311 = arith.remf %cst, %cst_4 : f32
        affine.yield %cst_0 : f16
      }
      %301 = arith.remui %false, %true_3 : i1
      %302 = vector.broadcast %c423853968_i32 : i32 to vector<7x5x7xi32>
      %303 = arith.shli %c1012543730_i32, %c1012543730_i32 : i32
      linalg.yield %in_51 : i16
    } -> tensor<7x5x7xi16>
    %83 = index.divu %c2, %c13
    %alloc_27 = memref.alloc() : memref<3x5x7xi32>
    %84 = math.log %7 : tensor<3x3xf16>
    %85 = math.round %2 : tensor<3x5x7xf16>
    %86 = index.maxs %c2, %c12
    memref.copy %alloc_19, %alloc_17 : memref<7x5x7xf32> to memref<7x5x7xf32>
    %87 = arith.shli %c423853968_i32, %c1936655018_i32 : i32
    %88 = memref.realloc %alloc_22 : memref<7xf16> to memref<5xf16>
    %89 = math.absi %4 : tensor<3x3xi16>
    %90 = vector.broadcast %cst_1 : f16 to vector<1x1x7xf16>
    %91 = vector.broadcast %cst_1 : f16 to vector<1x7xf16>
    %dest_28, %accumulated_value_29 = vector.scan <add>, %90, %91 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1x7xf16>, vector<1x7xf16>
    %92 = vector.flat_transpose %52 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    memref.copy %alloc_17, %alloc_19 : memref<7x5x7xf32> to memref<7x5x7xf32>
    %alloc_30 = memref.alloc() : memref<5x7xi16>
    %93 = tensor.empty() : tensor<7x5xi16>
    %94 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_30, %93 : memref<5x7xi16>, tensor<7x5xi16>) outs(%8 : tensor<7x5x7xi16>) {
    ^bb0(%in: i16, %in_51: i16, %out: i16):
      %270 = arith.remui %in_51, %out : i16
      %271 = math.floor %cst_5 : f32
      %272 = arith.ceildivsi %c1936655018_i32, %c1012543730_i32 : i32
      %273 = vector.multi_reduction <add>, %92, %92 [] : vector<5xi1> to vector<5xi1>
      %274 = bufferization.to_tensor %alloc_10 : memref<3x5x7xf32>
      %275 = arith.ceildivsi %c1410414642_i32, %c1410414642_i32 : i32
      scf.if %true {
        %299 = vector.insert %c1936655018_i32, %26 [3] : i32 into vector<7xi32>
        %300 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
        %301 = vector.broadcast %true : i1 to vector<1xi1>
        %302 = vector.maskedload %alloc_21[%c4, %c4], %301, %19 : memref<7x5xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %303 = index.casts %false : i1 to index
        %304 = arith.cmpi uge, %out, %in : i16
        %305 = math.tan %9 : tensor<3x5x7xf32>
        %306 = arith.andi %c1410414642_i32, %c1012543730_i32 : i32
        %307 = arith.floordivsi %c1936655018_i32, %c1936655018_i32 : i32
      }
      %276 = math.rsqrt %cst_0 : f16
      %277 = vector.extract %63[0] : vector<1xi32>
      %278 = arith.maxf %cst_4, %cst_4 : f32
      %279 = vector.insert %false, %25 [6] : i1 into vector<7xi1>
      %280 = math.absf %2 : tensor<3x5x7xf16>
      %c585193321_i32 = arith.constant 585193321 : i32
      %281 = arith.remf %cst_2, %cst : f32
      %282 = vector.create_mask %c1, %c13 : vector<3x7xi1>
      %283 = math.log10 %9 : tensor<3x5x7xf32>
      %284 = math.exp %9 : tensor<3x5x7xf32>
      %285 = arith.muli %true_3, %true_3 : i1
      %286 = arith.remf %cst_2, %cst_2 : f32
      %287 = index.ceildivu %c1, %c0
      %288 = math.tan %274 : tensor<3x5x7xf32>
      %289 = arith.shrsi %c1514_i16, %c1514_i16 : i16
      %290 = index.sub %c6, %c10
      %291 = vector.insertelement %c1936655018_i32, %24[%c12 : index] : vector<7xi32>
      %292 = arith.remui %in, %in : i16
      %293 = vector.flat_transpose %26 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
      %294 = tensor.empty(%c14) : tensor<?x3xf32>
      %295 = arith.cmpi sle, %c1555822493_i32, %c1555822493_i32 : i32
      %296 = math.tanh %cst : f32
      %297 = arith.cmpf uge, %cst_1, %cst_0 : f16
      %expanded_52 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<3x3xf16> into tensor<3x3x1xf16>
      %298 = memref.atomic_rmw maxf %cst_4, %alloc_16[%c0, %c0, %c6] : (f32, memref<3x5x7xf32>) -> f32
      linalg.yield %in_51 : i16
    } -> tensor<7x5x7xi16>
    %95 = math.log2 %5 : tensor<3x3xf32>
    %96 = arith.minsi %c1555822493_i32, %c1936655018_i32 : i32
    %97 = arith.subi %c1012543730_i32, %c1936655018_i32 : i32
    %98 = arith.maxf %cst_2, %cst : f32
    %99 = index.add %c14, %86
    %100 = index.sub %c6, %99
    %101 = arith.divsi %c1410414642_i32, %c1410414642_i32 : i32
    %102 = arith.negf %cst_5 : f32
    %103 = memref.atomic_rmw maxu %c1555822493_i32, %60[%c0, %c3] : (i32, memref<3x7xi32>) -> i32
    %104 = arith.divui %false, %true_3 : i1
    %105 = math.cttz %17 : tensor<7x5x7xi1>
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<7x5x7xi16> into tensor<35x7xi16>
    memref.assume_alignment %alloc_9, 4 : memref<3x5x7xf16>
    %106 = vector.broadcast %cst_2 : f32 to vector<3x7xf32>
    %107 = vector.broadcast %true_3 : i1 to vector<3x7xi1>
    %108 = vector.broadcast %c1555822493_i32 : i32 to vector<3x7xi32>
    %109 = vector.gather %9[%66, %54, %c15] [%108], %107, %106 : tensor<3x5x7xf32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf32> into vector<3x7xf32>
    %110 = math.powf %3, %3 : tensor<3x3xf16>
    %111 = vector.insertelement %c1410414642_i32, %63[%c1 : index] : vector<1xi32>
    %112 = vector.reduction <maxf>, %19 : vector<1xf32> into f32
    %113 = bufferization.to_memref %4 : memref<3x3xi16>
    %114 = vector.splat %c423853968_i32 : vector<3x5x7xi32>
    %115 = arith.minf %cst_5, %cst_2 : f32
    %116 = math.ceil %7 : tensor<3x3xf16>
    vector.print %25 : vector<7xi1>
    %117 = arith.shrui %c1410414642_i32, %c1555822493_i32 : i32
    %118 = index.mul %86, %c12
    %119 = bufferization.clone %alloc_7 : memref<7x5x7xi1> to memref<7x5x7xi1>
    %120 = arith.addi %c1410414642_i32, %c423853968_i32 : i32
    %121 = index.add %c10, %c12
    %collapsed_31 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<7x5x7xi1> into tensor<35x7xi1>
    %122 = vector.multi_reduction <add>, %106, %cst_4 [0, 1] : vector<3x7xf32> to f32
    %123 = arith.minui %c1339498953_i64, %c1339498953_i64 : i64
    %124 = affine.for %arg2 = 0 to 107 iter_args(%arg3 = %alloc) -> (memref<7x5x7xf16>) {
      affine.yield %alloc : memref<7x5x7xf16>
    }
    %125 = math.atan2 %cst_0, %cst_0 : f16
    %126 = math.floor %6 : tensor<7x5x7xf32>
    %127 = index.ceildivu %83, %c12
    %128 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%69 : tensor<7x5x7xi32>) {
    ^bb0(%out: i32):
      %270 = arith.maxui %true_3, %true : i1
      %271 = arith.divsi %false, %true : i1
      %272 = vector.maskedload %119[%c5, %c1, %c4], %92, %52 : memref<7x5x7xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %273 = arith.negf %cst_5 : f32
      %alloc_51 = memref.alloc() : memref<7xi64>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51 : memref<7xi64>) outs(%1 : tensor<3x5x7xi64>) {
      ^bb0(%in: i64, %out_57: i64):
        %300 = math.fma %7, %3, %3 : tensor<3x3xf16>
        %301 = math.log2 %21 : tensor<f16>
        %302 = vector.broadcast %c1012543730_i32 : i32 to vector<3x7xi32>
        %c0_i64 = arith.constant 0 : i64
        %303 = vector.transfer_read %10[%127, %39], %c0_i64 : tensor<3x7xi64>, vector<i64>
        vector.print %302 : vector<3x7xi32>
        %304 = math.log2 %expanded : tensor<3x5x7x1xf16>
        %305 = arith.remui %c1936655018_i32, %c1012543730_i32 : i32
        %306 = arith.maxf %cst_5, %cst : f32
        %307 = arith.maxui %true_3, %true_3 : i1
        %308 = arith.maxf %cst_5, %cst_5 : f32
        %309 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest_58, %accumulated_value_59 = vector.scan <maxf>, %109, %309 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
        %310 = affine.apply affine_map<(d0) -> (d0)>(%66)
        %311 = index.add %62, %c3
        %312 = affine.load %alloc_7[%c10, %c7, %c7] : memref<7x5x7xi1>
        %313 = math.cttz %14 : tensor<7x5x7xi1>
        %314 = index.maxu %66, %c11
        %315 = math.exp %2 : tensor<3x5x7xf16>
        %316 = vector.broadcast %true : i1 to vector<1xi1>
        vector.transfer_write %316, %alloc_14[%c11, %c6, %54] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi1>, memref<3x5x7xi1>
        %expanded_60 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x5x7xi16> into tensor<7x5x7x1xi16>
        %317 = arith.remf %cst_2, %122 : f32
        %318 = memref.realloc %alloc_22 : memref<7xf16> to memref<5xf16>
        %319 = bufferization.clone %alloc_13 : memref<3x3xi64> to memref<3x3xi64>
        %320 = arith.remf %cst_5, %cst_2 : f32
        %321 = vector.shuffle %24, %26 [1, 2, 4, 8, 9, 10, 12] : vector<7xi32>, vector<7xi32>
        %alloc_61 = memref.alloc() : memref<7xf16>
        memref.copy %alloc_22, %alloc_61 : memref<7xf16> to memref<7xf16>
        %322 = bufferization.to_memref %21 : memref<f16>
        %323 = arith.remsi %false, %false : i1
        %324 = vector.maskedload %alloc_8[%c0, %c6], %25, %26 : memref<3x7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %inserted_62 = tensor.insert %true into %14[%c2, %c4, %c4] : tensor<7x5x7xi1>
        vector.print %24 : vector<7xi32>
        %325 = math.tan %expanded : tensor<3x5x7x1xf16>
        %326 = index.maxu %c0, %310
        linalg.yield %c1339498953_i64 : i64
      } -> tensor<3x5x7xi64>
      %generated_52 = tensor.generate %68 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %rank = tensor.rank %8 : tensor<7x5x7xi16>
        %300 = math.log2 %34 : tensor<3x5x7xf32>
        %301 = math.ipowi %15, %15 : tensor<3x5x7xi64>
        %302 = index.casts %c1012543730_i32 : i32 to index
        tensor.yield %c1339498953_i64 : i64
      } : tensor<?x5x7xi64>
      %275 = arith.maxf %122, %cst : f32
      %276 = vector.broadcast %true : i1 to vector<5x5xi1>
      %277 = vector.outerproduct %92, %52, %276 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
      %inserted_53 = tensor.insert %122 into %6[%c0, %c3, %c3] : tensor<7x5x7xf32>
      %278 = arith.ceildivsi %true_3, %true : i1
      %279 = math.log10 %cst_5 : f32
      %280 = math.floor %22 : tensor<f16>
      %281 = math.tan %22 : tensor<f16>
      %282 = index.mul %62, %c15
      %alloca = memref.alloca() : memref<7x5x7xi64>
      %c0_i16 = arith.constant 0 : i16
      %283 = vector.transfer_read %11[%66, %c0], %c0_i16 : tensor<3x7xi16>, vector<1xi16>
      %284 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
      %285 = math.exp %5 : tensor<3x3xf32>
      %286 = tensor.empty() : tensor<3x5x7xi64>
      %mapped_54 = linalg.map ins(%1, %1 : tensor<3x5x7xi64>, tensor<3x5x7xi64>) outs(%286 : tensor<3x5x7xi64>)
        (%in: i64, %in_57: i64) {
          %300 = index.casts %c423853968_i32 : i32 to index
          %301 = math.fpowi %122, %c1555822493_i32 : f32, i32
          %302 = math.tan %21 : tensor<f16>
          %rank = tensor.rank %15 : tensor<3x5x7xi64>
          %303 = vector.broadcast %true : i1 to vector<3x7xi1>
          %304 = vector.insert %25, %303 [0] : vector<7xi1> into vector<3x7xi1>
          %305 = bufferization.clone %alloc_22 : memref<7xf16> to memref<7xf16>
          %306 = arith.ceildivsi %c1410414642_i32, %c1936655018_i32 : i32
          %307 = index.ceildivu %c6, %c12
          %308 = arith.divsi %false, %false : i1
          %309 = index.casts %282 : index to i32
          %310 = arith.remui %in, %in : i64
          %311 = memref.atomic_rmw addf %cst_5, %alloc_15[%c0, %c2] : (f32, memref<3x3xf32>) -> f32
          memref.store %c0_i16, %alloc_20[%c2, %c2] : memref<3x3xi16>
          %312 = memref.realloc %305 : memref<7xf16> to memref<3xf16>
          %313 = arith.shrsi %in_57, %c1339498953_i64 : i64
          %314 = vector.broadcast %true : i1 to vector<5x5xi1>
          %315 = vector.outerproduct %272, %52, %314 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
          %expanded_58 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<7x5x7xi16> into tensor<7x5x7x1xi16>
          %316 = math.tan %34 : tensor<3x5x7xf32>
          %317 = index.casts %86 : index to i32
          %318 = vector.broadcast %c1012543730_i32 : i32 to vector<3x3xi32>
          %319 = vector.broadcast %true : i1 to vector<3x3xi1>
          %320 = vector.gather %69[%c6, %300, %c15] [%318], %319, %318 : tensor<7x5x7xi32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi32> into vector<3x3xi32>
          %321 = arith.cmpi sge, %in_57, %in_57 : i64
          %322 = arith.shrsi %true_3, %true_3 : i1
          %323 = arith.shli %c1410414642_i32, %c1555822493_i32 : i32
          %324 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 4 + 32, (d2 - 2) * 512)>(%c0, %c15, %62, %54)
          %325 = arith.maxui %c1012543730_i32, %c1410414642_i32 : i32
          %326 = bufferization.to_memref %1 : memref<3x5x7xi64>
          %327 = arith.ori %c1555822493_i32, %c423853968_i32 : i32
          %328 = math.ceil %2 : tensor<3x5x7xf16>
          %329 = index.add %121, %c14
          %330 = arith.remsi %c423853968_i32, %out : i32
          %331 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 4)>(%86, %100)
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %287 = vector.broadcast %cst_5 : f32 to vector<7xf32>
      %dest_55, %accumulated_value_56 = vector.scan <maxf>, %106, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
      %288 = index.sub %127, %62
      %289 = arith.remf %cst_0, %cst_1 : f16
      %290 = arith.muli %false, %true : i1
      %291 = memref.atomic_rmw minf %cst_5, %alloc_21[%c5, %c3] : (f32, memref<7x5xf32>) -> f32
      %292 = arith.ori %out, %c1555822493_i32 : i32
      %293 = math.atan2 %5, %5 : tensor<3x3xf32>
      %294 = arith.cmpi sgt, %c1410414642_i32, %c1410414642_i32 : i32
      %295 = math.exp %6 : tensor<7x5x7xf32>
      %296 = arith.maxui %c1012543730_i32, %out : i32
      %297 = vector.extract %109[1] : vector<3x7xf32>
      %298 = arith.ori %true_3, %false : i1
      %299 = scf.index_switch %c2 -> memref<3x3xf16> 
      case 1 {
        %rank = tensor.rank %12 : tensor<3x5x7xi1>
        %300 = index.floordivs %83, %c12
        %301 = vector.splat %c1 : vector<3x7xindex>
        %302 = math.expm1 %2 : tensor<3x5x7xf16>
        %303 = arith.cmpi ne, %true_3, %true_3 : i1
        %304 = index.casts %54 : index to i32
        %305 = arith.maxsi %false, %true_3 : i1
        %306 = arith.divui %c1555822493_i32, %c1410414642_i32 : i32
        %307 = arith.ceildivsi %out, %out : i32
        memref.store %cst_4, %alloc_10[%c2, %c4, %c1] : memref<3x5x7xf32>
        %308 = math.copysign %6, %6 : tensor<7x5x7xf32>
        %309 = arith.xori %true, %true_3 : i1
        memref.store %cst_5, %alloc_15[%c0, %c1] : memref<3x3xf32>
        %310 = math.atan2 %6, %6 : tensor<7x5x7xf32>
        %311 = arith.xori %out, %c1012543730_i32 : i32
        %312 = vector.insertelement %true_3, %25[%68 : index] : vector<7xi1>
        %alloc_57 = memref.alloc() : memref<3x3xf16>
        scf.yield %alloc_57 : memref<3x3xf16>
      }
      case 2 {
        %300 = arith.cmpf une, %cst, %cst_5 : f32
        %dest_57, %accumulated_value_58 = vector.scan <and>, %108, %26 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xi32>, vector<7xi32>
        bufferization.dealloc_tensor %69 : tensor<7x5x7xi32>
        %301 = math.absi %286 : tensor<3x5x7xi64>
        %302 = arith.maxsi %true, %true : i1
        %303 = math.powf %34, %9 : tensor<3x5x7xf32>
        %304 = vector.broadcast %c0_i16 : i16 to vector<i16>
        %305 = vector.transfer_write %304, %0[%c14, %288, %66] : vector<i16>, tensor<7x5x7xi16>
        %306 = index.maxs %c1, %c10
        %307 = arith.divui %out, %c1555822493_i32 : i32
        %308 = vector.insert %true, %272 [3] : i1 into vector<5xi1>
        %309 = math.exp %6 : tensor<7x5x7xf32>
        %310 = math.atan2 %5, %5 : tensor<3x3xf32>
        %311 = math.exp %cst_0 : f16
        %312 = arith.addi %true, %false : i1
        %313 = bufferization.to_memref %8 : memref<7x5x7xi16>
        %314 = vector.load %alloc_15[%c1, %c1] : memref<3x3xf32>, vector<7x5x7xf32>
        %alloc_59 = memref.alloc() : memref<3x3xf16>
        scf.yield %alloc_59 : memref<3x3xf16>
      }
      case 3 {
        %300 = index.ceildivu %c13, %75
        %false_57 = index.bool.constant false
        memref.assume_alignment %alloc_19, 16 : memref<7x5x7xf32>
        %301 = vector.extract_strided_slice %37 {offsets = [5], sizes = [1], strides = [1]} : vector<7xi32> to vector<1xi32>
        %302 = bufferization.to_tensor %alloc_19 : memref<7x5x7xf32>
        %303 = math.exp2 %cst : f32
        %304 = vector.shuffle %92, %25 [0, 2, 4, 7, 10, 11] : vector<5xi1>, vector<7xi1>
        %305 = vector.create_mask %66, %127 : vector<3x7xi1>
        memref.store %c1012543730_i32, %alloc_11[%c1, %c2] : memref<3x3xi32>
        %306 = bufferization.clone %alloc_12 : memref<3x5x7xf16> to memref<3x5x7xf16>
        %307 = vector.multi_reduction <add>, %19, %19 [] : vector<1xf32> to vector<1xf32>
        %308 = arith.remui %c1936655018_i32, %c423853968_i32 : i32
        %309 = vector.flat_transpose %297 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %310 = arith.subi %c1555822493_i32, %c1410414642_i32 : i32
        %311 = math.absi %15 : tensor<3x5x7xi64>
        %312 = index.ceildivu %121, %100
        %alloc_58 = memref.alloc() : memref<3x3xf16>
        scf.yield %alloc_58 : memref<3x3xf16>
      }
      case 4 {
        %300 = index.ceildivu %99, %127
        bufferization.dealloc_tensor %3 : tensor<3x3xf16>
        %301 = index.divs %c1, %c6
        %302 = arith.andi %true, %true : i1
        %inserted_57 = tensor.insert %cst_0 into %7[%c0, %c0] : tensor<3x3xf16>
        %303 = math.expm1 %5 : tensor<3x3xf32>
        %cst_58 = arith.constant 2.0855808E+9 : f32
        %304 = index.divs %288, %c12
        %305 = math.exp %cst_0 : f16
        %306 = vector.broadcast %out : i32 to vector<1x1xi32>
        %307 = vector.outerproduct %63, %63, %306 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %308 = vector.flat_transpose %63 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %309 = vector.transpose %92, [0] : vector<5xi1> to vector<5xi1>
        %310 = arith.divsi %c1555822493_i32, %c423853968_i32 : i32
        %311 = math.fma %cst_0, %cst_1, %cst_0 : f16
        %312 = vector.broadcast %c423853968_i32 : i32 to vector<3x5x7xi32>
        %expanded_59 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<3x5x7xi64> into tensor<3x5x7x1xi64>
        %alloc_60 = memref.alloc() : memref<3x3xf16>
        scf.yield %alloc_60 : memref<3x3xf16>
      }
      default {
        %300 = arith.remui %true, %false : i1
        %cst_57 = arith.constant 1.829000e+03 : f16
        %301 = vector.transpose %106, [1, 0] : vector<3x7xf32> to vector<7x3xf32>
        %302 = bufferization.clone %alloc_22 : memref<7xf16> to memref<7xf16>
        %303 = arith.addf %cst, %cst_5 : f32
        %alloc_58 = memref.alloc() : memref<7x5xi64>
        %304 = tensor.empty() : tensor<3x5xi64>
        %305 = linalg.matmul ins(%10, %alloc_58 : tensor<3x7xi64>, memref<7x5xi64>) outs(%304 : tensor<3x5xi64>) -> tensor<3x5xi64>
        %306 = math.exp %20 : tensor<7xf16>
        %307 = arith.minsi %c1936655018_i32, %out : i32
        memref.store %cst_0, %alloc_22[%c1] : memref<7xf16>
        %308 = index.floordivs %121, %86
        memref.store %c1555822493_i32, %60[%c0, %c0] : memref<3x7xi32>
        %309 = arith.ori %c423853968_i32, %c1555822493_i32 : i32
        %expanded_59 = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<35x7xi16> into tensor<35x7x1xi16>
        %expanded_60 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<3x7xi64> into tensor<3x7x1xi64>
        %310 = vector.load %alloc_12[%c1, %c4, %c2] : memref<3x5x7xf16>, vector<7x5x7xf16>
        %alloc_61 = memref.alloc() : memref<7x5x7xi32>
        %alloc_62 = memref.alloc() : memref<3x3xf16>
        scf.yield %alloc_62 : memref<3x3xf16>
      }
      linalg.yield %c1410414642_i32 : i32
    } -> tensor<7x5x7xi32>
    %129 = math.tan %21 : tensor<f16>
    %inserted_32 = tensor.insert %cst_1 into %2[%c2, %c3, %c6] : tensor<3x5x7xf16>
    %130 = vector.create_mask %127, %86 : vector<3x3xi1>
    %131 = arith.ori %c1410414642_i32, %c1936655018_i32 : i32
    %132 = vector.broadcast %c1012543730_i32 : i32 to vector<3xi32>
    %dest_33, %accumulated_value_34 = vector.scan <add>, %108, %132 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi32>, vector<3xi32>
    %133 = index.sub %68, %c14
    %134 = index.ceildivs %62, %c5
    %135 = math.ipowi %collapsed, %collapsed : tensor<35x7xi16>
    %136 = arith.maxsi %c423853968_i32, %c423853968_i32 : i32
    %137 = arith.maxf %122, %cst_5 : f32
    %138 = vector.load %alloc_8[%c1, %c2] : memref<3x7xi32>, vector<3x3xi32>
    %generated = tensor.generate %54, %86 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      bufferization.dealloc_tensor %78 : tensor<3x3xi64>
      %270 = arith.floordivsi %true, %true : i1
      %271 = tensor.empty() : tensor<3x3xi64>
      %272 = linalg.matmul ins(%13, %78 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%271 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %273 = scf.if %true -> (memref<3x5x7xi1>) {
        %274 = index.sub %100, %c7
        %275 = math.powf %3, %3 : tensor<3x3xf16>
        %276 = tensor.empty(%c6, %c13) : tensor<3x?x?xi32>
        %277 = arith.subi %c1514_i16, %c1514_i16 : i16
        %278 = math.floor %2 : tensor<3x5x7xf16>
        %279 = arith.shrui %c1514_i16, %c1514_i16 : i16
        %true_51 = index.bool.constant true
        %280 = vector.broadcast %c1555822493_i32 : i32 to vector<7x7xi32>
        %281 = vector.outerproduct %26, %37, %280 {kind = #vector.kind<or>} : vector<7xi32>, vector<7xi32>
        scf.yield %alloc_14 : memref<3x5x7xi1>
      } else {
        %274 = index.casts %83 : index to i32
        %275 = arith.addf %cst_1, %cst_1 : f16
        %276 = vector.broadcast %false : i1 to vector<3x3xi1>
        %277 = bufferization.to_memref %8 : memref<7x5x7xi16>
        %278 = math.tan %expanded : tensor<3x5x7x1xf16>
        %279 = vector.shuffle %276, %276 [0, 1, 3, 4] : vector<3x3xi1>, vector<3x3xi1>
        %280 = index.add %c12, %c12
        %inserted_51 = tensor.insert %c1514_i16 into %11[%c0, %c2] : tensor<3x7xi16>
        scf.yield %alloc_14 : memref<3x5x7xi1>
      }
      tensor.yield %c1514_i16 : i16
    } : tensor<?x?x7xi16>
    %139 = arith.addf %cst_5, %cst_4 : f32
    %140 = vector.broadcast %c1339498953_i64 : i64 to vector<5x1xi64>
    vector.transfer_write %140, %alloc_18[%c12, %127, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x1xi64>, memref<3x5x7xi64>
    %141 = vector.insertelement %c1936655018_i32, %37[%133 : index] : vector<7xi32>
    memref.store %cst, %alloc_16[%c0, %c2, %c6] : memref<3x5x7xf32>
    %142 = vector.multi_reduction <xor>, %63, %c1012543730_i32 [0] : vector<1xi32> to i32
    %143 = arith.shli %true_3, %true : i1
    %144 = math.exp %20 : tensor<7xf16>
    %145 = arith.cmpi sge, %c1410414642_i32, %c1555822493_i32 : i32
    %146 = arith.shli %c1012543730_i32, %c1555822493_i32 : i32
    %147 = vector.broadcast %122 : f32 to vector<3xf32>
    %dest_35, %accumulated_value_36 = vector.scan <maxf>, %106, %147 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
    %148 = tensor.empty() : tensor<3x3xf16>
    %149 = linalg.matmul ins(%7, %3 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%148 : tensor<3x3xf16>) -> tensor<3x3xf16>
    %150 = vector.transpose %138, [1, 0] : vector<3x3xi32> to vector<3x3xi32>
    %151 = math.log2 %cst_2 : f32
    %152 = vector.flat_transpose %92 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    %153 = vector.multi_reduction <xor>, %108, %37 [0] : vector<3x7xi32> to vector<7xi32>
    %154 = index.ceildivu %54, %66
    %155 = vector.shuffle %19, %19 [0] : vector<1xf32>, vector<1xf32>
    %156 = arith.divf %cst_5, %122 : f32
    %157 = math.log10 %3 : tensor<3x3xf16>
    %158 = arith.cmpi sge, %c423853968_i32, %c1555822493_i32 : i32
    %generated_37 = tensor.generate %134 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %270 = math.atan2 %cst_2, %122 : f32
      %expanded_51 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<3x7xi16> into tensor<3x7x1xi16>
      %271 = math.exp %7 : tensor<3x3xf16>
      memref.store %c1012543730_i32, %alloc_11[%c0, %c2] : memref<3x3xi32>
      tensor.yield %122 : f32
    } : tensor<?x5x7xf32>
    %159 = arith.muli %c1339498953_i64, %c1339498953_i64 : i64
    %160 = math.expm1 %22 : tensor<f16>
    %161 = vector.reduction <or>, %37 : vector<7xi32> into i32
    %162 = arith.negf %cst_1 : f16
    %163 = arith.minui %c1936655018_i32, %c423853968_i32 : i32
    %164 = vector.splat %134 : vector<3x7xindex>
    %165 = arith.cmpf ole, %cst_1, %cst_0 : f16
    %166 = vector.splat %c1 : vector<3x7xindex>
    %167 = index.divs %68, %c9
    scf.index_switch %68 
    case 1 {
      %expanded_51 = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<7x3x5xi1> into tensor<7x3x5x1xi1>
      %270 = arith.shrui %true_3, %true_3 : i1
      %collapsed_52 = tensor.collapse_shape %transposed [[0, 1], [2]] : tensor<7x3x5xi1> into tensor<21x5xi1>
      %271 = index.sub %118, %c12
      %272 = index.mul %c4, %c0
      memref.store %c1514_i16, %81[%c1, %c2] : memref<3x7xi16>
      %273 = tensor.empty() : tensor<3x7xf16>
      scf.execute_region {
        %280 = vector.flat_transpose %92 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %281 = arith.maxf %122, %122 : f32
        %282 = arith.divui %c1012543730_i32, %c1555822493_i32 : i32
        %283 = arith.remui %false, %true_3 : i1
        %284 = arith.maxf %cst_1, %cst_0 : f16
        %285 = math.absi %27 : tensor<3x3xi16>
        %286 = memref.atomic_rmw maxf %cst, %alloc_15[%c1, %c1] : (f32, memref<3x3xf32>) -> f32
        %287 = arith.minsi %c1555822493_i32, %c1936655018_i32 : i32
        %288 = math.log2 %22 : tensor<f16>
        %289 = tensor.empty() : tensor<7x5x7xi64>
        %290 = vector.broadcast %c1339498953_i64 : i64 to vector<7x5x7xi64>
        %291 = vector.broadcast %true : i1 to vector<7x5x7xi1>
        %292 = vector.broadcast %142 : i32 to vector<7x5x7xi32>
        %293 = vector.gather %289[%75, %c7, %100] [%292], %291, %290 : tensor<7x5x7xi64>, vector<7x5x7xi32>, vector<7x5x7xi1>, vector<7x5x7xi64> into vector<7x5x7xi64>
        %false_54 = index.bool.constant false
        %294 = vector.extract_strided_slice %291 {offsets = [4], sizes = [2], strides = [1]} : vector<7x5x7xi1> to vector<2x5x7xi1>
        %295 = index.add %c12, %c11
        %296 = arith.remf %cst_2, %122 : f32
        %297 = vector.broadcast %c1012543730_i32 : i32 to vector<1x1xi32>
        %298 = vector.outerproduct %63, %63, %297 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %299 = vector.insertelement %c1012543730_i32, %26[%121 : index] : vector<7xi32>
        scf.yield
      }
      %274 = arith.remui %c1339498953_i64, %c1339498953_i64 : i64
      %275 = index.casts %c13 : index to i32
      memref.store %cst_0, %alloc_12[%c2, %c2, %c1] : memref<3x5x7xf16>
      %276 = vector.shuffle %19, %19 [0] : vector<1xf32>, vector<1xf32>
      %expanded_53 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<7x3x5xi1> into tensor<7x3x5x1xi1>
      %277 = arith.floordivsi %c1514_i16, %c1514_i16 : i16
      %278 = math.log2 %22 : tensor<f16>
      %279 = math.expm1 %cst_0 : f16
      scf.yield
    }
    case 2 {
      %270 = math.powf %7, %7 : tensor<3x3xf16>
      %271 = affine.for %arg2 = 0 to 63 iter_args(%arg3 = %2) -> (tensor<3x5x7xf16>) {
        affine.yield %arg3 : tensor<3x5x7xf16>
      }
      %272 = tensor.empty() : tensor<3x5x7xf32>
      %273 = math.exp2 %21 : tensor<f16>
      %274 = math.exp %22 : tensor<f16>
      %275 = vector.shuffle %140, %140 [0, 1, 2, 5, 7] : vector<5x1xi64>, vector<5x1xi64>
      %276 = arith.remsi %true_3, %false : i1
      %277 = tensor.empty() : tensor<7x5xi1>
      %278 = tensor.empty() : tensor<7x7x5xi1>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277, %278 : tensor<7x5xi1>, tensor<7x7x5xi1>) outs(%14 : tensor<7x5x7xi1>) {
      ^bb0(%in: i1, %in_53: i1, %out: i1):
        %288 = arith.muli %false, %true : i1
        %289 = vector.load %alloc_13[%c2, %c2] : memref<3x3xi64>, vector<3x7xi64>
        %290 = vector.extract_strided_slice %107 {offsets = [0], sizes = [2], strides = [1]} : vector<3x7xi1> to vector<2x7xi1>
        %291 = math.cttz %true_3 : i1
        %292 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
        %293 = arith.divf %cst, %cst_5 : f32
        %294 = index.ceildivs %c3, %c3
        %295 = math.powf %cst_4, %cst_2 : f32
        %296 = arith.divf %cst_1, %cst_0 : f16
        %297 = arith.shrui %c1555822493_i32, %142 : i32
        %298 = arith.muli %c1410414642_i32, %c423853968_i32 : i32
        %299 = math.absi %142 : i32
        %300 = tensor.empty() : tensor<3x3xi32>
        %301 = math.fpowi %148, %300 : tensor<3x3xf16>, tensor<3x3xi32>
        %inserted_54 = tensor.insert %c1514_i16 into %0[%c3, %c0, %c6] : tensor<7x5x7xi16>
        %302 = math.powf %148, %7 : tensor<3x3xf16>
        %303 = bufferization.to_tensor %alloc_9 : memref<3x5x7xf16>
        vector.print %130 : vector<3x3xi1>
        %304 = memref.realloc %alloc_22 : memref<7xf16> to memref<1xf16>
        %305 = arith.cmpi sge, %c1410414642_i32, %142 : i32
        %306 = arith.xori %true_3, %true_3 : i1
        %307 = math.log2 %cst_1 : f16
        %308 = math.round %cst_0 : f16
        %309 = math.absi %12 : tensor<3x5x7xi1>
        %310 = memref.atomic_rmw minf %cst_2, %alloc_19[%c4, %c4, %c1] : (f32, memref<7x5x7xf32>) -> f32
        %311 = index.add %c10, %294
        %312 = vector.flat_transpose %26 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %313 = index.divu %154, %c5
        %314 = index.floordivs %c6, %99
        %inserted_55 = tensor.insert %out into %16[%c0, %c0, %c6] : tensor<7x5x7xi1>
        %315 = math.exp %22 : tensor<f16>
        %316 = vector.splat %118 : vector<3x3xindex>
        %317 = arith.maxui %c1555822493_i32, %c1012543730_i32 : i32
        linalg.yield %in : i1
      } -> tensor<7x5x7xi1>
      %280 = vector.create_mask %c13, %39, %68 : vector<7x5x7xi1>
      %281 = index.add %c13, %99
      %true_51 = arith.constant true
      %282 = math.fma %3, %7, %7 : tensor<3x3xf16>
      %283 = arith.maxsi %false, %true : i1
      %284 = tensor.empty() : tensor<5x3xi1>
      %alloc_52 = memref.alloc() : memref<7xi1>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%284, %alloc_52 : tensor<5x3xi1>, memref<7xi1>) outs(%12 : tensor<3x5x7xi1>) {
      ^bb0(%in: i1, %in_53: i1, %out: i1):
        %288 = arith.maxf %cst_1, %cst_1 : f16
        %289 = vector.shuffle %25, %92 [0, 4, 5, 6, 7, 8] : vector<7xi1>, vector<5xi1>
        %290 = math.atan2 %expanded, %expanded : tensor<3x5x7x1xf16>
        %291 = arith.maxf %cst_0, %cst_1 : f16
        %alloc_54 = memref.alloc() : memref<3x7xi1>
        %292 = vector.shuffle %138, %138 [2, 3] : vector<3x3xi32>, vector<3x3xi32>
        %293 = index.maxu %c1, %c9
        %alloc_55 = memref.alloc() : memref<3x5x7xi32>
        vector.print %63 : vector<1xi32>
        %294 = arith.minui %c1012543730_i32, %c1555822493_i32 : i32
        %295 = math.atan2 %22, %22 : tensor<f16>
        %296 = vector.broadcast %c1555822493_i32 : i32 to vector<7x7xi32>
        %297 = vector.outerproduct %26, %26, %296 {kind = #vector.kind<and>} : vector<7xi32>, vector<7xi32>
        %298 = vector.shuffle %73, %73 [0, 1] : vector<i16>, vector<i16>
        %299 = bufferization.to_memref %15 : memref<3x5x7xi64>
        memref.assume_alignment %alloc_14, 1 : memref<3x5x7xi1>
        %300 = affine.min affine_map<(d0, d1) -> ((d1 - (d1 - d0)) * 8 - 32, 32, d0, (d1 - (d1 - d0)) * 40)>(%281, %54)
        %301 = math.atan2 %2, %2 : tensor<3x5x7xf16>
        %302 = math.round %5 : tensor<3x3xf32>
        %303 = math.atan2 %expanded, %expanded : tensor<3x5x7x1xf16>
        %304 = index.sub %134, %c2
        %305 = arith.ori %true, %out : i1
        %306 = affine.apply affine_map<(d0) -> (d0 mod 2)>(%39)
        %307 = index.ceildivs %c2, %62
        %308 = math.log2 %122 : f32
        %309 = index.add %281, %c10
        %310 = vector.multi_reduction <minui>, %24, %37 [] : vector<7xi32> to vector<7xi32>
        %cst_56 = arith.constant 1.000000e+00 : f32
        %311 = vector.transfer_read %alloc_17[%66, %c3, %306], %cst_56 : memref<7x5x7xf32>, vector<5xf32>
        %312 = arith.cmpf true, %122, %cst_2 : f32
        vector.print %109 : vector<3x7xf32>
        %313 = vector.transpose %109, [1, 0] : vector<3x7xf32> to vector<7x3xf32>
        %alloc_57 = memref.alloc() : memref<3x7xi16>
        %314 = vector.splat %c11 : vector<7x5x7xindex>
        linalg.yield %true_3 : i1
      } -> tensor<3x5x7xi1>
      %286 = arith.maxsi %c423853968_i32, %c1410414642_i32 : i32
      %287 = index.casts %c15 : index to i32
      scf.yield
    }
    case 3 {
      bufferization.dealloc_tensor %6 : tensor<7x5x7xf32>
      %270 = math.fpowi %6, %69 : tensor<7x5x7xf32>, tensor<7x5x7xi32>
      %271 = math.log2 %6 : tensor<7x5x7xf32>
      %272 = vector.multi_reduction <minsi>, %63, %c1555822493_i32 [0] : vector<1xi32> to i32
      %273 = vector.broadcast %142 : i32 to vector<7x5x7xi32>
      %274 = affine.apply affine_map<(d0) -> (0)>(%c4)
      %275 = math.exp %20 : tensor<7xf16>
      %276 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      vector.print %276 : vector<1xf32>
      %277 = index.maxs %121, %c15
      %278 = arith.remf %cst_5, %cst_2 : f32
      affine.store %false, %alloc_7[%c3, %c3, %c3] : memref<7x5x7xi1>
      %279 = math.tan %22 : tensor<f16>
      %280 = arith.addf %cst_0, %cst_1 : f16
      %collapsed_51 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<3x5x7x1xf16> into tensor<15x7x1xf16>
      %281 = index.ceildivs %99, %c0
      scf.yield
    }
    case 4 {
      %270 = vector.splat %true : vector<3x5x7xi1>
      %271 = vector.extract_strided_slice %106 {offsets = [0], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
      %272 = index.maxs %68, %c0
      %273 = arith.shrui %142, %c1012543730_i32 : i32
      %274 = arith.mulf %cst_2, %cst_2 : f32
      %275 = scf.index_switch %100 -> vector<3x3xf16> 
      case 1 {
        %285 = math.cttz %c1012543730_i32 : i32
        %286 = math.powf %cst_4, %122 : f32
        %false_53 = index.bool.constant false
        %287 = math.atan2 %expanded, %expanded : tensor<3x5x7x1xf16>
        memref.store %cst_2, %alloc_10[%c2, %c3, %c1] : memref<3x5x7xf32>
        %288 = index.maxu %c3, %83
        %289 = math.atan2 %3, %7 : tensor<3x3xf16>
        %290 = math.floor %5 : tensor<3x3xf32>
        %collapsed_54 = tensor.collapse_shape %13 [[0, 1]] : tensor<3x3xi64> into tensor<9xi64>
        %291 = bufferization.to_memref %9 : memref<3x5x7xf32>
        %292 = index.ceildivu %c2, %134
        %293 = math.log10 %5 : tensor<3x3xf32>
        %294 = index.divs %c9, %54
        %295 = vector.broadcast %c1555822493_i32 : i32 to vector<7x7xi32>
        %296 = vector.outerproduct %37, %24, %295 {kind = #vector.kind<minui>} : vector<7xi32>, vector<7xi32>
        %297 = vector.broadcast %cst_1 : f16 to vector<7xf16>
        %298 = vector.maskedload %alloc_22[%c1], %25, %297 : memref<7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %299 = math.round %9 : tensor<3x5x7xf32>
        %300 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
        scf.yield %300 : vector<3x3xf16>
      }
      case 2 {
        memref.store %cst_5, %40[%c2, %c0] : memref<3x7xf32>
        %285 = bufferization.clone %alloc_6 : memref<3x7xi32> to memref<3x7xi32>
        %286 = vector.load %alloc_22[%c6] : memref<7xf16>, vector<7x5x7xf16>
        %287 = tensor.empty() : tensor<3x5x7xi16>
        %288 = vector.broadcast %c1514_i16 : i16 to vector<3x5x7xi16>
        %289 = vector.broadcast %true_3 : i1 to vector<3x5x7xi1>
        %290 = vector.broadcast %c1936655018_i32 : i32 to vector<3x5x7xi32>
        %291 = vector.gather %287[%c14, %c5, %54] [%290], %289, %288 : tensor<3x5x7xi16>, vector<3x5x7xi32>, vector<3x5x7xi1>, vector<3x5x7xi16> into vector<3x5x7xi16>
        %alloc_53 = memref.alloc() : memref<7x5x7xi1>
        %292 = index.add %66, %83
        vector.print %290 : vector<3x5x7xi32>
        %293 = bufferization.to_memref %8 : memref<7x5x7xi16>
        %294 = math.ceil %5 : tensor<3x3xf32>
        %295 = vector.extract_strided_slice %271 {offsets = [0], sizes = [1], strides = [1]} : vector<1x7xf32> to vector<1x7xf32>
        %296 = vector.transpose %140, [1, 0] : vector<5x1xi64> to vector<1x5xi64>
        %297 = arith.maxui %c1514_i16, %c1514_i16 : i16
        %rank = tensor.rank %14 : tensor<7x5x7xi1>
        %298 = arith.divui %c1514_i16, %c1514_i16 : i16
        %299 = arith.addf %cst_2, %cst : f32
        affine.store %cst, %alloc_21[%c3, %c8] : memref<7x5xf32>
        %300 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
        scf.yield %300 : vector<3x3xf16>
      }
      default {
        %285 = arith.cmpi slt, %c1012543730_i32, %c423853968_i32 : i32
        %286 = bufferization.to_tensor %alloc_12 : memref<3x5x7xf16>
        %287 = bufferization.to_tensor %alloc_10 : memref<3x5x7xf32>
        %288 = tensor.empty() : tensor<i32>
        %289 = math.fpowi %22, %288 : tensor<f16>, tensor<i32>
        %290 = math.tanh %6 : tensor<7x5x7xf32>
        %alloc_53 = memref.alloc() : memref<3x7xf32>
        memref.copy %40, %alloc_53 : memref<3x7xf32> to memref<3x7xf32>
        vector.print %19 : vector<1xf32>
        %291 = arith.cmpi uge, %c1410414642_i32, %c1012543730_i32 : i32
        %292 = math.atan2 %20, %20 : tensor<7xf16>
        %293 = arith.muli %true, %true : i1
        %294 = math.absf %2 : tensor<3x5x7xf16>
        %295 = arith.minf %cst, %cst : f32
        memref.store %c1012543730_i32, %60[%c0, %c1] : memref<3x7xi32>
        %collapsed_54 = tensor.collapse_shape %13 [[0, 1]] : tensor<3x3xi64> into tensor<9xi64>
        %296 = math.ceil %5 : tensor<3x3xf32>
        %297 = math.tan %287 : tensor<3x5x7xf32>
        %298 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
        scf.yield %298 : vector<3x3xf16>
      }
      %alloc_51 = memref.alloc() : memref<3x3xf32>
      %276 = tensor.empty(%c11, %c0, %86) : tensor<?x?x?xi64>
      %277 = affine.if affine_set<(d0, d1, d2) : (d1 * 128 >= 0, d1 == 0)>(%c12, %c2, %c10) -> i32 {
        %alloc_53 = memref.alloc() : memref<7x5x7xi32>
        %285 = vector.flat_transpose %52 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %286 = vector.broadcast %false : i1 to vector<3xi1>
        %287 = vector.insert %286, %130 [1] : vector<3xi1> into vector<3x3xi1>
        %288 = vector.extract_strided_slice %106 {offsets = [0], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
        %289 = math.fma %3, %3, %3 : tensor<3x3xf16>
        %290 = vector.insertelement %c1555822493_i32, %37[%39 : index] : vector<7xi32>
        %291 = math.exp2 %34 : tensor<3x5x7xf32>
        %292 = memref.realloc %alloc_22 : memref<7xf16> to memref<5xf16>
        affine.yield %c423853968_i32 : i32
      } else {
        %285 = index.sizeof
        %286 = vector.create_mask %c2, %c8 : vector<3x3xi1>
        vector.print %92 : vector<5xi1>
        %287 = math.log %9 : tensor<3x5x7xf32>
        %288 = index.mul %c12, %99
        %289 = vector.extract %92[3] : vector<5xi1>
        %290 = index.ceildivs %c6, %c3
        %291 = index.ceildivu %86, %86
        affine.yield %c1410414642_i32 : i32
      }
      %alloc_52 = memref.alloc() : memref<3x7xf32>
      memref.copy %40, %alloc_52 : memref<3x7xf32> to memref<3x7xf32>
      %278 = math.absi %1 : tensor<3x5x7xi64>
      %279 = tensor.empty() : tensor<3x7xi32>
      %280 = vector.gather %279[%54, %134] [%108], %107, %108 : tensor<3x7xi32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi32> into vector<3x7xi32>
      %281 = math.absi %c1555822493_i32 : i32
      %282 = arith.ori %c1555822493_i32, %c1012543730_i32 : i32
      %283 = arith.cmpi ugt, %c1514_i16, %c1514_i16 : i16
      %284 = math.exp2 %21 : tensor<f16>
      scf.yield
    }
    default {
      %270 = index.ceildivu %66, %118
      %271 = arith.negf %122 : f32
      %272 = math.absf %6 : tensor<7x5x7xf32>
      %273 = math.absf %3 : tensor<3x3xf16>
      %generated_51 = tensor.generate %c2 {
      ^bb0(%arg2: index, %arg3: index):
        %284 = arith.muli %true, %true_3 : i1
        %285 = arith.shli %c1936655018_i32, %c1410414642_i32 : i32
        %286 = arith.ceildivsi %true_3, %true_3 : i1
        %287 = bufferization.clone %alloc_17 : memref<7x5x7xf32> to memref<7x5x7xf32>
        tensor.yield %cst_5 : f32
      } : tensor<?x3xf32>
      %274 = affine.if affine_set<(d0, d1) : (0 >= 0)>(%c3, %c13) -> memref<3x7xi64> {
        %284 = vector.extract_strided_slice %92 {offsets = [0], sizes = [5], strides = [1]} : vector<5xi1> to vector<5xi1>
        %285 = math.log10 %expanded : tensor<3x5x7x1xf16>
        %286 = vector.splat %c15 : vector<3x3xindex>
        %287 = arith.shrui %c1514_i16, %c1514_i16 : i16
        %288 = bufferization.to_memref %9 : memref<3x5x7xf32>
        %289 = math.cttz %1 : tensor<3x5x7xi64>
        %290 = vector.broadcast %c1339498953_i64 : i64 to vector<3x7xi64>
        %291 = vector.gather %1[%c4, %c12, %c0] [%108], %107, %290 : tensor<3x5x7xi64>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi64> into vector<3x7xi64>
        %292 = index.mul %c6, %68
        %alloc_52 = memref.alloc() : memref<3x7xi64>
        affine.yield %alloc_52 : memref<3x7xi64>
      } else {
        %284 = math.atan2 %6, %6 : tensor<7x5x7xf32>
        %285 = math.roundeven %7 : tensor<3x3xf16>
        %286 = arith.divsi %true_3, %true : i1
        %alloc_52 = memref.alloc() : memref<3x5x7xi32>
        %287 = arith.subi %c1339498953_i64, %c1339498953_i64 : i64
        %288 = vector.extract_strided_slice %106 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
        %289 = index.add %75, %c12
        %290 = math.floor %9 : tensor<3x5x7xf32>
        %alloc_53 = memref.alloc() : memref<3x7xi64>
        affine.yield %alloc_53 : memref<3x7xi64>
      }
      %alloca = memref.alloca() : memref<7x5x7xf16>
      %275 = tensor.empty() : tensor<3x3xf16>
      %276 = linalg.matmul ins(%148, %7 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%275 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %277 = affine.for %arg2 = 0 to 9 iter_args(%arg3 = %alloc) -> (memref<7x5x7xf16>) {
        affine.yield %alloc : memref<7x5x7xf16>
      }
      %278 = affine.apply affine_map<(d0) -> (d0)>(%66)
      %279 = math.exp2 %2 : tensor<3x5x7xf16>
      %280 = math.log10 %7 : tensor<3x3xf16>
      memref.store %true_3, %119[%c2, %c3, %c3] : memref<7x5x7xi1>
      %281 = scf.while (%arg2 = %73) : (vector<i16>) -> vector<i16> {
        %284 = math.tan %expanded : tensor<3x5x7x1xf16>
        %285 = arith.remf %cst, %cst_2 : f32
        %286 = arith.remf %122, %122 : f32
        %287 = vector.multi_reduction <xor>, %25, %true_3 [0] : vector<7xi1> to i1
        %288 = index.sub %c1, %62
        %289 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d1 + 128, d1 - d0 * 2 - d1 mod 4)>(%c0, %c2, %100, %c10)
        %290 = arith.maxsi %c423853968_i32, %c423853968_i32 : i32
        %291 = memref.atomic_rmw maxu %c1514_i16, %30[%c0, %c0] : (i16, memref<3x3xi16>) -> i16
        scf.condition(%false) %73 : vector<i16>
      } do {
      ^bb0(%arg2: vector<i16>):
        %collapsed_52 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x7xi16> into tensor<?x7xi16>
        %284 = arith.maxsi %true, %true : i1
        %285 = arith.shrsi %c1936655018_i32, %142 : i32
        %286 = vector.shuffle %24, %26 [2, 3, 9, 10, 11] : vector<7xi32>, vector<7xi32>
        %287 = vector.extract %63[0] : vector<1xi32>
        %288 = vector.broadcast %c11 : index to vector<5xindex>
        %289 = vector.broadcast %c1514_i16 : i16 to vector<5xi16>
        vector.scatter %30[%c1, %c0] [%288], %52, %289 : memref<3x3xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %290 = math.powf %cst_1, %cst_1 : f16
        %291 = index.ceildivu %75, %c4
        %292 = index.mul %75, %c4
        %293 = index.sub %c8, %66
        %294 = math.ipowi %1, %1 : tensor<3x5x7xi64>
        memref.store %c1514_i16, %30[%c2, %c1] : memref<3x3xi16>
        %295 = math.floor %cst : f32
        %296 = index.casts %c2 : index to i32
        %297 = math.ceil %3 : tensor<3x3xf16>
        %298 = bufferization.clone %alloc_9 : memref<3x5x7xf16> to memref<3x5x7xf16>
        scf.yield %73 : vector<i16>
      }
      %282 = arith.remui %c423853968_i32, %c1410414642_i32 : i32
      %283 = memref.atomic_rmw assign %cst_1, %alloc[%c2, %c2, %c5] : (f16, memref<7x5x7xf16>) -> f16
    }
    %168 = math.expm1 %cst_2 : f32
    %169 = math.roundeven %5 : tensor<3x3xf32>
    %170 = vector.insertelement %true, %52[%c5 : index] : vector<5xi1>
    %171 = index.divs %c12, %75
    affine.store %cst_2, %alloc_15[%c3, %c12] : memref<3x3xf32>
    %172 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, d3 - 128 == 0, d3 + d1 + 16 == 0, d1 >= 0)>(%c9, %c9, %c9, %c0) -> i16 {
      %270 = math.ipowi %10, %10 : tensor<3x7xi64>
      vector.print %130 : vector<3x3xi1>
      %271 = math.exp %2 : tensor<3x5x7xf16>
      %272 = math.atan2 %34, %34 : tensor<3x5x7xf32>
      %273 = math.log1p %cst_4 : f32
      %274 = math.ipowi %c423853968_i32, %c1410414642_i32 : i32
      %275 = arith.ori %c1555822493_i32, %142 : i32
      vector.print %109 : vector<3x7xf32>
      affine.yield %c1514_i16 : i16
    } else {
      %270 = math.expm1 %148 : tensor<3x3xf16>
      %271 = arith.minui %c1555822493_i32, %c1936655018_i32 : i32
      %272 = tensor.empty() : tensor<7xi16>
      %273 = tensor.empty() : tensor<5x7xi16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %272, %273 : tensor<7x5x7xi16>, tensor<7xi16>, tensor<5x7xi16>) outs(%0 : tensor<7x5x7xi16>) {
      ^bb0(%in: i16, %in_51: i16, %in_52: i16, %out: i16):
        %280 = arith.subi %true, %true_3 : i1
        %281 = arith.divui %out, %in : i16
        %282 = arith.negf %122 : f32
        %283 = math.log10 %2 : tensor<3x5x7xf16>
        %284 = memref.load %alloc_18[%c1, %c1, %c2] : memref<3x5x7xi64>
        %collapsed_53 = tensor.collapse_shape %148 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
        %285 = math.exp2 %9 : tensor<3x5x7xf32>
        %286 = arith.divsi %c1410414642_i32, %c1410414642_i32 : i32
        %c247595119_i64 = arith.constant 247595119 : i64
        %287 = arith.andi %c1012543730_i32, %c1936655018_i32 : i32
        %288 = vector.shuffle %37, %63 [1] : vector<7xi32>, vector<1xi32>
        %289 = arith.ori %out, %in_52 : i16
        %290 = vector.extract %92[2] : vector<5xi1>
        %291 = arith.minui %in, %out : i16
        %292 = vector.shuffle %24, %24 [1, 2, 7, 11, 12, 13] : vector<7xi32>, vector<7xi32>
        %293 = math.exp %cst_5 : f32
        memref.assume_alignment %alloc_19, 4 : memref<7x5x7xf32>
        %294 = math.atan2 %148, %3 : tensor<3x3xf16>
        %295 = vector.multi_reduction <xor>, %107, %false [0, 1] : vector<3x7xi1> to i1
        %296 = arith.divui %c1555822493_i32, %c1012543730_i32 : i32
        %297 = arith.divsi %c423853968_i32, %c1012543730_i32 : i32
        %298 = math.tan %9 : tensor<3x5x7xf32>
        %299 = arith.muli %c1936655018_i32, %c1555822493_i32 : i32
        %300 = tensor.empty() : tensor<3x3xi32>
        %301 = math.fpowi %7, %300 : tensor<3x3xf16>, tensor<3x3xi32>
        %302 = vector.extract_strided_slice %37 {offsets = [4], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
        %303 = math.log10 %5 : tensor<3x3xf32>
        %true_54 = index.bool.constant true
        %304 = math.floor %148 : tensor<3x3xf16>
        %305 = arith.ori %c1339498953_i64, %c1339498953_i64 : i64
        %306 = vector.splat %171 : vector<3x3xindex>
        %307 = math.expm1 %7 : tensor<3x3xf16>
        %308 = vector.broadcast %c1936655018_i32 : i32 to vector<i32>
        %309 = vector.transfer_write %308, %300[%100, %39] : vector<i32>, tensor<3x3xi32>
        linalg.yield %c1514_i16 : i16
      } -> tensor<7x5x7xi16>
      %275 = arith.maxui %c1012543730_i32, %c1012543730_i32 : i32
      %276 = index.sub %c15, %54
      %277 = vector.matrix_multiply %37, %24 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      %278 = math.rsqrt %cst : f32
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<7x5x7xi16>) {
      ^bb0(%out: i16):
        memref.assume_alignment %alloc_7, 2 : memref<7x5x7xi1>
        %cst_51 = arith.constant 3.051200e+04 : f16
        %280 = arith.subi %out, %c1514_i16 : i16
        %281 = index.ceildivu %154, %99
        %282 = bufferization.clone %alloc_8 : memref<3x7xi32> to memref<3x7xi32>
        %283 = vector.broadcast %c423853968_i32 : i32 to vector<3xi32>
        %dest_52, %accumulated_value_53 = vector.scan <maxsi>, %138, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi32>, vector<3xi32>
        %284 = bufferization.to_tensor %alloc_10 : memref<3x5x7xf32>
        %285 = vector.broadcast %cst_0 : f16 to vector<f16>
        vector.transfer_write %285, %alloc_22[%118] : vector<f16>, memref<7xf16>
        %286 = arith.remui %true, %false : i1
        %287 = math.log10 %cst_4 : f32
        %288 = index.maxu %100, %100
        memref.assume_alignment %alloc_16, 2 : memref<3x5x7xf32>
        %289 = math.exp %7 : tensor<3x3xf16>
        %290 = math.exp %cst_5 : f32
        %291 = memref.realloc %alloc_22 : memref<7xf16> to memref<1xf16>
        %292 = index.maxs %c10, %39
        %293 = arith.divsi %true, %true_3 : i1
        %294 = math.log2 %3 : tensor<3x3xf16>
        %295 = vector.broadcast %122 : f32 to vector<3x5x7xf32>
        affine.store %cst_5, %alloc_16[%c4, %c4, %c2] : memref<3x5x7xf32>
        %296 = vector.splat %c1514_i16 : vector<3x7xi16>
        %297 = arith.ori %c1012543730_i32, %c1936655018_i32 : i32
        %298 = index.casts %c1514_i16 : i16 to index
        %299 = arith.remf %122, %cst_4 : f32
        %300 = arith.divui %c1555822493_i32, %142 : i32
        %301 = affine.load %113[%c2, %c12] : memref<3x3xi16>
        %302 = arith.ceildivsi %c1936655018_i32, %c1012543730_i32 : i32
        %303 = tensor.empty() : tensor<3x3xi16>
        %304 = linalg.matmul ins(%27, %27 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%303 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %305 = arith.addf %cst_1, %cst_1 : f16
        %306 = index.floordivs %c7, %c3
        %307 = vector.extract %19[0] : vector<1xf32>
        %308 = index.ceildivu %c9, %99
        linalg.yield %c1514_i16 : i16
      } -> tensor<7x5x7xi16>
      affine.yield %c1514_i16 : i16
    }
    %173 = math.ipowi %27, %4 : tensor<3x3xi16>
    %174 = arith.ori %c1410414642_i32, %c423853968_i32 : i32
    %175 = vector.multi_reduction <mul>, %25, %false [0] : vector<7xi1> to i1
    %176 = memref.load %alloc_8[%c1, %c2] : memref<3x7xi32>
    %177 = arith.andi %c423853968_i32, %c423853968_i32 : i32
    %178 = vector.transpose %37, [0] : vector<7xi32> to vector<7xi32>
    %179 = vector.broadcast %171 : index to vector<1xindex>
    %180 = vector.broadcast %false : i1 to vector<1xi1>
    vector.scatter %alloc_8[%c0, %c2] [%179], %180, %63 : memref<3x7xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
    %181 = math.powf %7, %3 : tensor<3x3xf16>
    %182 = math.floor %expanded : tensor<3x5x7x1xf16>
    affine.for %arg2 = 0 to 54 {
    }
    %183 = arith.negf %122 : f32
    %184 = math.ipowi %false, %175 : i1
    %185 = math.exp %cst_0 : f16
    %186 = tensor.empty() : tensor<7x5x7xi1>
    %mapped = linalg.map ins(%17 : tensor<7x5x7xi1>) outs(%186 : tensor<7x5x7xi1>)
      (%in: i1) {
        %270 = index.maxs %c5, %c1
        %271 = index.divs %54, %c14
        %272 = arith.remf %cst_5, %122 : f32
        %273 = math.log2 %148 : tensor<3x3xf16>
        vector.print %152 : vector<5xi1>
        %false_51 = index.bool.constant false
        %274 = tensor.empty() : tensor<7x5x7xf16>
        %275 = math.log2 %cst_5 : f32
        %276 = bufferization.clone %alloc_11 : memref<3x3xi32> to memref<3x3xi32>
        %277 = index.casts %86 : index to i32
        %278 = math.floor %9 : tensor<3x5x7xf32>
        %279 = index.maxu %c8, %134
        %280 = vector.insert %25, %107 [2] : vector<7xi1> into vector<3x7xi1>
        %281 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %282 = index.maxu %75, %127
        %283 = vector.create_mask %c13, %c2, %c5 : vector<3x5x7xi1>
        %alloc_52 = memref.alloc() : memref<7xi64>
        %284 = tensor.empty() : tensor<3xi64>
        %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %284 : memref<7xi64>, tensor<3xi64>) outs(%15 : tensor<3x5x7xi64>) {
        ^bb0(%in_57: i64, %in_58: i64, %out: i64):
          %298 = index.mul %134, %282
          %299 = arith.maxui %c1555822493_i32, %c1555822493_i32 : i32
          %300 = memref.load %alloc_7[%c3, %c2, %c5] : memref<7x5x7xi1>
          %301 = vector.transpose %152, [0] : vector<5xi1> to vector<5xi1>
          %302 = vector.insertelement %c1555822493_i32, %24[%133 : index] : vector<7xi32>
          %303 = vector.matrix_multiply %152, %152 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
          %304 = math.exp2 %3 : tensor<3x3xf16>
          %305 = arith.divf %cst_5, %cst : f32
          %306 = arith.remf %cst_5, %cst_4 : f32
          %307 = affine.load %alloc_9[%c4, %c15, %c12] : memref<3x5x7xf16>
          %308 = arith.maxf %cst_5, %cst_2 : f32
          %309 = math.log2 %148 : tensor<3x3xf16>
          %310 = vector.multi_reduction <add>, %108, %24 [0] : vector<3x7xi32> to vector<7xi32>
          %311 = index.casts %false_51 : i1 to index
          %312 = vector.load %alloc_18[%c2, %c0, %c6] : memref<3x5x7xi64>, vector<7x5x7xi64>
          %inserted_59 = tensor.insert %true_3 into %186[%c2, %c1, %c4] : tensor<7x5x7xi1>
          %313 = vector.create_mask %62, %c5, %298 : vector<7x5x7xi1>
          %314 = vector.transpose %73, [] : vector<i16> to vector<i16>
          %315 = vector.transpose %92, [0] : vector<5xi1> to vector<5xi1>
          %316 = vector.broadcast %c1012543730_i32 : i32 to vector<7x5x7xi32>
          %317 = vector.gather %69[%66, %270, %c8] [%316], %313, %316 : tensor<7x5x7xi32>, vector<7x5x7xi32>, vector<7x5x7xi1>, vector<7x5x7xi32> into vector<7x5x7xi32>
          %318 = index.ceildivs %c4, %c10
          %319 = index.maxu %66, %271
          %320 = arith.shrsi %true, %true : i1
          %321 = index.casts %false_51 : i1 to index
          %322 = tensor.empty() : tensor<3x3xi16>
          %323 = linalg.matmul ins(%4, %4 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%322 : tensor<3x3xi16>) -> tensor<3x3xi16>
          %324 = math.log10 %2 : tensor<3x5x7xf16>
          %325 = vector.load %alloc_21[%c6, %c0] : memref<7x5xf32>, vector<3x5x7xf32>
          %326 = math.cttz %collapsed : tensor<35x7xi16>
          %327 = vector.transpose %283, [2, 0, 1] : vector<3x5x7xi1> to vector<7x3x5xi1>
          %328 = index.castu %c1410414642_i32 : i32 to index
          %329 = arith.xori %false, %175 : i1
          %330 = vector.load %alloc_13[%c0, %c2] : memref<3x3xi64>, vector<3x7xi64>
          linalg.yield %in_57 : i64
        } -> tensor<3x5x7xi64>
        %286 = arith.maxsi %false, %false : i1
        %false_53 = index.bool.constant false
        %287 = vector.transpose %130, [0, 1] : vector<3x3xi1> to vector<3x3xi1>
        %288 = math.tan %6 : tensor<7x5x7xf32>
        %289 = arith.divui %c1410414642_i32, %c1936655018_i32 : i32
        %290 = affine.for %arg2 = 0 to 43 iter_args(%arg3 = %11) -> (tensor<3x7xi16>) {
          affine.yield %arg3 : tensor<3x7xi16>
        }
        %291 = math.round %148 : tensor<3x3xf16>
        %292 = index.ceildivs %127, %c3
        %dest_54, %accumulated_value_55 = vector.scan <minsi>, %108, %37 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi32>, vector<7xi32>
        %293 = math.sqrt %274 : tensor<7x5x7xf16>
        %294 = arith.remf %cst_4, %122 : f32
        %295 = vector.extract_strided_slice %106 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
        %296 = math.cttz %c1555822493_i32 : i32
        %297 = index.casts %54 : index to i32
        scf.index_switch %c7 
        case 1 {
          %298 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - (d2 * 2 - 4) - 4)>(%c6, %167, %c6, %171)
          %299 = arith.divui %c1936655018_i32, %c1410414642_i32 : i32
          %300 = vector.create_mask %133, %c14 : vector<3x3xi1>
          %301 = memref.load %alloc_9[%c1, %c4, %c5] : memref<3x5x7xf16>
          %302 = arith.minf %122, %cst_2 : f32
          %303 = math.ipowi %12, %12 : tensor<3x5x7xi1>
          %304 = arith.addi %false_53, %in : i1
          %305 = arith.xori %c1339498953_i64, %c1339498953_i64 : i64
          %306 = tensor.empty() : tensor<7x3xi64>
          %307 = tensor.empty() : tensor<3x3xi64>
          %308 = linalg.matmul ins(%10, %306 : tensor<3x7xi64>, tensor<7x3xi64>) outs(%307 : tensor<3x3xi64>) -> tensor<3x3xi64>
          %309 = arith.divsi %175, %175 : i1
          %310 = math.atan2 %7, %7 : tensor<3x3xf16>
          %311 = index.sub %83, %c11
          %312 = arith.ori %false_53, %false_51 : i1
          %313 = vector.splat %282 : vector<3x3xindex>
          %314 = math.log10 %3 : tensor<3x3xf16>
          %315 = vector.insert %c423853968_i32, %37 [3] : i32 into vector<7xi32>
          scf.yield
        }
        case 2 {
          %298 = vector.shuffle %140, %140 [2, 3, 4, 6, 7] : vector<5x1xi64>, vector<5x1xi64>
          %expanded_57 = tensor.expand_shape %148 [[0], [1, 2]] : tensor<3x3xf16> into tensor<3x3x1xf16>
          %299 = math.round %cst_4 : f32
          %collapsed_58 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x7xi16> into tensor<?x7xi16>
          %300 = bufferization.clone %alloc_16 : memref<3x5x7xf32> to memref<3x5x7xf32>
          %301 = arith.subi %true, %true_3 : i1
          %302 = math.absf %5 : tensor<3x3xf32>
          %303 = math.ipowi %c1555822493_i32, %c1012543730_i32 : i32
          %304 = arith.divf %cst_5, %cst_2 : f32
          %305 = arith.shli %true, %false_53 : i1
          %306 = arith.remui %true, %false_53 : i1
          %307 = memref.atomic_rmw minu %c1410414642_i32, %alloc_6[%c2, %c3] : (i32, memref<3x7xi32>) -> i32
          %308 = vector.splat %false : vector<7x5x7xi1>
          %309 = vector.multi_reduction <minui>, %283, %25 [0, 1] : vector<3x5x7xi1> to vector<7xi1>
          %310 = affine.load %113[%c5, %c4] : memref<3x3xi16>
          %311 = arith.cmpf oeq, %cst_5, %cst : f32
          scf.yield
        }
        case 3 {
          %298 = index.ceildivs %c14, %121
          %299 = arith.shrsi %175, %false_51 : i1
          %300 = vector.insert %25, %283 [1, 0] : vector<7xi1> into vector<3x5x7xi1>
          %301 = index.sizeof
          %302 = math.absi %175 : i1
          %303 = arith.maxsi %c1012543730_i32, %c423853968_i32 : i32
          %304 = tensor.empty() : tensor<3x3xi32>
          memref.copy %113, %30 : memref<3x3xi16> to memref<3x3xi16>
          %305 = vector.shuffle %24, %26 [4, 5, 6, 7, 8, 9, 10, 11, 12] : vector<7xi32>, vector<7xi32>
          %306 = arith.negf %cst_2 : f32
          memref.store %c1514_i16, %30[%c0, %c1] : memref<3x3xi16>
          %307 = arith.xori %false_51, %true_3 : i1
          %308 = vector.broadcast %c1012543730_i32 : i32 to vector<1x1xi32>
          %309 = vector.outerproduct %63, %63, %308 {kind = #vector.kind<maxui>} : vector<1xi32>, vector<1xi32>
          %c415870252_i64 = arith.constant 415870252 : i64
          %310 = arith.divsi %142, %c1410414642_i32 : i32
          %311 = arith.minsi %c1936655018_i32, %c1012543730_i32 : i32
          scf.yield
        }
        default {
          %298 = index.mul %68, %c14
          %299 = arith.addf %cst_5, %122 : f32
          %300 = math.rsqrt %6 : tensor<7x5x7xf32>
          %301 = memref.realloc %alloc_22 : memref<7xf16> to memref<1xf16>
          %302 = math.exp %7 : tensor<3x3xf16>
          %303 = arith.minf %cst_1, %cst_1 : f16
          %304 = arith.shrsi %c1555822493_i32, %142 : i32
          %305 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %306 = arith.negf %cst_2 : f32
          %307 = index.maxu %c0, %c5
          %308 = arith.ceildivsi %c1410414642_i32, %c423853968_i32 : i32
          %309 = arith.remf %cst_0, %cst_1 : f16
          %310 = vector.insertelement %175, %92[%c15 : index] : vector<5xi1>
          %311 = arith.remui %c1555822493_i32, %c1012543730_i32 : i32
          bufferization.dealloc_tensor %10 : tensor<3x7xi64>
          %312 = math.exp %148 : tensor<3x3xf16>
        }
        %false_56 = arith.constant false
        linalg.yield %false_56 : i1
      }
    %187 = math.floor %7 : tensor<3x3xf16>
    %188 = arith.floordivsi %142, %c423853968_i32 : i32
    %189 = vector.broadcast %true_3 : i1 to vector<1xi1>
    %190 = vector.maskedload %alloc_11[%c1, %c0], %189, %63 : memref<3x3xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %191 = scf.while (%arg2 = %140) : (vector<5x1xi64>) -> vector<5x1xi64> {
      %270 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %271 = vector.splat %100 : vector<7x5x7xindex>
      %272 = math.expm1 %2 : tensor<3x5x7xf16>
      %273 = arith.divui %false, %175 : i1
      %274 = vector.insertelement %false, %25[%c7 : index] : vector<7xi1>
      %275 = math.cttz %12 : tensor<3x5x7xi1>
      %276 = tensor.empty() : tensor<3x3xf16>
      %277 = linalg.matmul ins(%7, %3 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%276 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %278 = vector.extract_strided_slice %109 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xf32> to vector<3x7xf32>
      scf.condition(%175) %140 : vector<5x1xi64>
    } do {
    ^bb0(%arg2: vector<5x1xi64>):
      %270 = vector.broadcast %171 : index to vector<7xindex>
      %271 = vector.broadcast %cst_0 : f16 to vector<7xf16>
      vector.scatter %alloc_12[%c1, %c1, %c5] [%270], %25, %271 : memref<3x5x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %272 = arith.shrui %c1555822493_i32, %c1012543730_i32 : i32
      %273 = math.powf %3, %7 : tensor<3x3xf16>
      %c836010065_i32 = arith.constant 836010065 : i32
      %274 = vector.extract_strided_slice %130 {offsets = [0], sizes = [1], strides = [1]} : vector<3x3xi1> to vector<1x3xi1>
      %275 = tensor.empty() : tensor<3x3xi32>
      %276 = math.fpowi %5, %275 : tensor<3x3xf32>, tensor<3x3xi32>
      %277 = index.floordivs %83, %127
      %278 = math.ipowi %13, %78 : tensor<3x3xi64>
      %279 = arith.xori %true_3, %false : i1
      scf.execute_region {
        %285 = math.atan2 %7, %3 : tensor<3x3xf16>
        %286 = index.casts %118 : index to i32
        %287 = arith.maxf %cst_1, %cst_0 : f16
        %288 = vector.broadcast %cst : f32 to vector<7xf32>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %106, %288 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
        %289 = math.fpowi %7, %275 : tensor<3x3xf16>, tensor<3x3xi32>
        memref.store %true, %alloc_14[%c1, %c3, %c3] : memref<3x5x7xi1>
        %290 = math.sqrt %2 : tensor<3x5x7xf16>
        %291 = arith.cmpi ugt, %c1514_i16, %c1514_i16 : i16
        %292 = bufferization.clone %alloc_12 : memref<3x5x7xf16> to memref<3x5x7xf16>
        %293 = index.ceildivs %c1, %83
        %294 = math.atan2 %2, %2 : tensor<3x5x7xf16>
        %295 = arith.maxsi %c1555822493_i32, %c1555822493_i32 : i32
        %296 = math.ipowi %collapsed_31, %collapsed_31 : tensor<35x7xi1>
        %rank = tensor.rank %0 : tensor<7x5x7xi16>
        %297 = math.copysign %cst_2, %cst_4 : f32
        %298 = math.tan %cst_4 : f32
        scf.yield
      }
      %280 = index.casts %175 : i1 to index
      %281 = math.absf %21 : tensor<f16>
      %282 = arith.xori %c1555822493_i32, %c423853968_i32 : i32
      %alloc_51 = memref.alloc() : memref<3x3xi16>
      %283 = vector.shuffle %73, %73 [0, 1] : vector<i16>, vector<i16>
      %284 = math.tan %cst : f32
      scf.yield %140 : vector<5x1xi64>
    }
    %192 = math.roundeven %7 : tensor<3x3xf16>
    %193 = arith.remf %cst_2, %cst : f32
    %194 = math.powf %122, %cst_2 : f32
    %195 = vector.multi_reduction <xor>, %130, %130 [] : vector<3x3xi1> to vector<3x3xi1>
    %196 = arith.divui %142, %c1012543730_i32 : i32
    %197 = index.divs %86, %c1
    %198 = vector.transpose %52, [0] : vector<5xi1> to vector<5xi1>
    %199 = vector.multi_reduction <maxsi>, %108, %c423853968_i32 [0, 1] : vector<3x7xi32> to i32
    %200 = arith.negf %122 : f32
    %collapsed_38 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<7x5x7xi16> into tensor<35x7xi16>
    %201 = vector.multi_reduction <or>, %37, %c423853968_i32 [0] : vector<7xi32> to i32
    %202 = math.fma %5, %5, %5 : tensor<3x3xf32>
    %203 = vector.load %alloc_18[%c1, %c0, %c4] : memref<3x5x7xi64>, vector<3x3xi64>
    memref.alloca_scope  {
      %270 = math.absf %34 : tensor<3x5x7xf32>
      %271 = arith.shrui %175, %true : i1
      %generated_51 = tensor.generate %167, %c5, %c12 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %301 = vector.load %alloc_15[%c1, %c1] : memref<3x3xf32>, vector<3x5x7xf32>
        %302 = arith.divsi %false, %true : i1
        memref.assume_alignment %alloc_20, 2 : memref<3x3xi16>
        %303 = arith.maxui %true_3, %false : i1
        tensor.yield %cst_1 : f16
      } : tensor<?x?x?xf16>
      %272 = arith.addf %cst_1, %cst_0 : f16
      %273 = arith.muli %true_3, %175 : i1
      %274 = math.atan2 %7, %7 : tensor<3x3xf16>
      %275 = bufferization.to_tensor %alloc_11 : memref<3x3xi32>
      %276 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
      vector.transfer_write %276, %alloc_12[%66, %167, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x1xf16>, memref<3x5x7xf16>
      %277 = math.copysign %2, %2 : tensor<3x5x7xf16>
      %278 = math.atan2 %cst_0, %cst_1 : f16
      %279 = index.divs %c1, %c8
      %280 = math.log2 %expanded : tensor<3x5x7x1xf16>
      %generated_52 = tensor.generate %c0, %68 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %301 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %302 = vector.maskedload %alloc_19[%c6, %c2, %c0], %92, %301 : memref<7x5x7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %303 = vector.shuffle %109, %109 [1, 2, 5] : vector<3x7xf32>, vector<3x7xf32>
        %304 = math.roundeven %34 : tensor<3x5x7xf32>
        %305 = arith.remui %false, %true : i1
        tensor.yield %c1339498953_i64 : i64
      } : tensor<?x?x7xi64>
      %281 = math.rsqrt %cst_4 : f32
      %282 = math.log2 %5 : tensor<3x3xf32>
      %283 = math.log2 %cst_2 : f32
      %284 = memref.atomic_rmw andi %c423853968_i32, %60[%c1, %c5] : (i32, memref<3x7xi32>) -> i32
      %285 = arith.cmpf ugt, %cst_4, %cst_5 : f32
      %286 = math.ctlz %17 : tensor<7x5x7xi1>
      %287 = vector.broadcast %cst_4 : f32 to vector<5xf32>
      %288 = vector.maskedload %alloc_17[%c1, %c0, %c0], %92, %287 : memref<7x5x7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %289 = arith.muli %c1339498953_i64, %c1339498953_i64 : i64
      %290 = math.log10 %2 : tensor<3x5x7xf16>
      %false_53 = arith.constant false
      %291 = vector.transfer_read %collapsed_31[%86, %c11], %false_53 : tensor<35x7xi1>, vector<7xi1>
      %292 = index.divs %c1, %279
      %293 = math.log2 %148 : tensor<3x3xf16>
      %294 = arith.minsi %c1936655018_i32, %c1410414642_i32 : i32
      %295 = math.exp %34 : tensor<3x5x7xf32>
      %296 = arith.ori %c1514_i16, %c1514_i16 : i16
      %297 = math.ctpop %c1012543730_i32 : i32
      %298 = arith.minsi %142, %199 : i32
      %299 = arith.cmpi slt, %false_53, %true : i1
      %300 = arith.minf %cst_1, %cst_1 : f16
    }
    %204 = arith.divsi %c1339498953_i64, %c1339498953_i64 : i64
    %205 = math.ipowi %15, %1 : tensor<3x5x7xi64>
    %206 = bufferization.clone %alloc_11 : memref<3x3xi32> to memref<3x3xi32>
    %207 = math.expm1 %9 : tensor<3x5x7xf32>
    %208 = arith.remf %cst_5, %cst_5 : f32
    %dest_39, %accumulated_value_40 = vector.scan <xor>, %107, %25 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
    %209 = vector.extract_strided_slice %109 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xf32> to vector<3x7xf32>
    %210 = math.fma %6, %6, %6 : tensor<7x5x7xf32>
    %211 = vector.load %alloc_11[%c0, %c0] : memref<3x3xi32>, vector<3x5x7xi32>
    %212 = vector.splat %c1012543730_i32 : vector<3x7xi32>
    %213 = arith.divui %199, %c1936655018_i32 : i32
    %214 = arith.remui %c1410414642_i32, %c1936655018_i32 : i32
    %215 = index.divs %c11, %154
    %216 = math.round %cst_0 : f16
    %217 = tensor.empty() : tensor<3x5x7xi1>
    %mapped_41 = linalg.map ins(%12 : tensor<3x5x7xi1>) outs(%217 : tensor<3x5x7xi1>)
      (%in: i1) {
        %270 = tensor.empty() : tensor<7x5x7xi16>
        %mapped_51 = linalg.map ins(%0 : tensor<7x5x7xi16>) outs(%270 : tensor<7x5x7xi16>)
          (%in_59: i16) {
            %true_60 = arith.constant true
            %false_61 = arith.constant false
            %294 = vector.transfer_read %12[%c1, %75, %99], %false_61 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<3x5x7xi1>, vector<1x1xi1>
            %295 = arith.shrui %c1514_i16, %c1514_i16 : i16
            %true_62 = index.bool.constant true
            %296 = arith.divf %cst_4, %cst : f32
            memref.assume_alignment %alloc_12, 1 : memref<3x5x7xf16>
            %297 = vector.broadcast %62 : index to vector<1xindex>
            vector.scatter %alloc_15[%c2, %c2] [%297], %189, %19 : memref<3x3xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
            %298 = vector.multi_reduction <and>, %107, %107 [] : vector<3x7xi1> to vector<3x7xi1>
            %299 = vector.insert %true_3, %52 [0] : i1 into vector<5xi1>
            memref.store %cst_2, %alloc_16[%c0, %c1, %c6] : memref<3x5x7xf32>
            %300 = math.roundeven %9 : tensor<3x5x7xf32>
            %301 = index.sub %c9, %c6
            %302 = math.copysign %cst_1, %cst_1 : f16
            %303 = vector.broadcast %122 : f32 to vector<f32>
            vector.transfer_write %303, %alloc_19[%197, %c9, %118] : vector<f32>, memref<7x5x7xf32>
            %304 = arith.muli %true_3, %true_60 : i1
            %305 = math.ipowi %17, %186 : tensor<7x5x7xi1>
            %306 = index.divs %54, %c2
            %307 = tensor.empty() : tensor<3x3xi64>
            %308 = linalg.matmul ins(%13, %13 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%307 : tensor<3x3xi64>) -> tensor<3x3xi64>
            %309 = vector.splat %134 : vector<7x5x7xindex>
            %inserted_63 = tensor.insert %c1339498953_i64 into %13[%c0, %c1] : tensor<3x3xi64>
            %310 = arith.minui %175, %true : i1
            %311 = vector.insertelement %c1936655018_i32, %24[%c11 : index] : vector<7xi32>
            %312 = arith.divui %true, %false : i1
            %313 = math.exp2 %20 : tensor<7xf16>
            %314 = vector.shuffle %52, %189 [2, 3, 4] : vector<5xi1>, vector<1xi1>
            %315 = arith.remf %cst_0, %cst_1 : f16
            %316 = memref.load %alloc_7[%c5, %c3, %c5] : memref<7x5x7xi1>
            %c379091257_i64 = arith.constant 379091257 : i64
            %317 = arith.divui %in_59, %c1514_i16 : i16
            %318 = math.atan2 %cst_0, %cst_0 : f16
            memref.copy %30, %113 : memref<3x3xi16> to memref<3x3xi16>
            %319 = arith.ori %201, %142 : i32
            %320 = vector.create_mask %c3, %86, %c5 : vector<3x5x7xi1>
            %c1_i16 = arith.constant 1 : i16
            linalg.yield %c1_i16 : i16
          }
        %true_52 = index.bool.constant true
        %271 = vector.broadcast %127 : index to vector<3xindex>
        %272 = vector.broadcast %true : i1 to vector<3xi1>
        %273 = vector.broadcast %c1514_i16 : i16 to vector<3xi16>
        vector.scatter %30[%c1, %c1] [%271], %272, %273 : memref<3x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %274 = vector.splat %134 : vector<3x7xindex>
        %generated_53 = tensor.generate %118 {
        ^bb0(%arg2: index, %arg3: index):
          %294 = index.sub %c3, %127
          %295 = index.ceildivu %86, %54
          %296 = tensor.empty() : tensor<3x5x7xi32>
          %297 = math.fpowi %2, %296 : tensor<3x5x7xf16>, tensor<3x5x7xi32>
          vector.print %140 : vector<5x1xi64>
          tensor.yield %true_52 : i1
        } : tensor<?x3xi1>
        %275 = index.ceildivu %c7, %c1
        %276 = index.casts %275 : index to i32
        %277 = arith.maxsi %c1936655018_i32, %c1012543730_i32 : i32
        %278 = vector.transpose %92, [0] : vector<5xi1> to vector<5xi1>
        %279 = vector.broadcast %c1012543730_i32 : i32 to vector<3xi32>
        %dest_54, %accumulated_value_55 = vector.scan <and>, %138, %279 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi32>, vector<3xi32>
        %280 = scf.while (%arg2 = %cst_2) : (f32) -> f32 {
          %294 = arith.divsi %c1339498953_i64, %c1339498953_i64 : i64
          %295 = index.casts %true_3 : i1 to index
          %296 = index.add %167, %86
          %297 = math.roundeven %cst_4 : f32
          %298 = math.exp %20 : tensor<7xf16>
          %299 = arith.negf %cst_0 : f16
          %300 = vector.broadcast %c1339498953_i64 : i64 to vector<3x7xi64>
          %301 = vector.transpose %25, [0] : vector<7xi1> to vector<7xi1>
          scf.condition(%true) %cst : f32
        } do {
        ^bb0(%arg2: f32):
          %294 = arith.ori %175, %false : i1
          %295 = bufferization.to_tensor %alloc_13 : memref<3x3xi64>
          %296 = math.fma %2, %2, %2 : tensor<3x5x7xf16>
          %297 = index.ceildivu %c6, %83
          %298 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
          %299 = vector.outerproduct %19, %19, %298 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
          %300 = math.powf %5, %5 : tensor<3x3xf32>
          %collapsed_59 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<7x5x7xi16> into tensor<35x7xi16>
          %301 = math.copysign %21, %22 : tensor<f16>
          %302 = vector.broadcast %142 : i32 to vector<5xi32>
          vector.transfer_write %302, %alloc_8[%167, %68] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi32>, memref<3x7xi32>
          %303 = math.tan %9 : tensor<3x5x7xf32>
          vector.print %108 : vector<3x7xi32>
          %304 = arith.maxsi %true_3, %175 : i1
          %inserted_60 = tensor.insert %true into %generated_53[%c0, %c0] : tensor<?x3xi1>
          %collapsed_61 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<3x5x7xi64> into tensor<15x7xi64>
          %305 = index.floordivs %100, %62
          %306 = math.exp %cst_5 : f32
          scf.yield %cst_2 : f32
        }
        %281 = arith.maxf %cst_4, %122 : f32
        %282 = arith.remf %cst, %122 : f32
        %283 = arith.xori %in, %true_52 : i1
        %expanded_56 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<3x5x7xi64> into tensor<3x5x7x1xi64>
        %284 = vector.transpose %106, [0, 1] : vector<3x7xf32> to vector<3x7xf32>
        %285 = vector.splat %c5 : vector<3x5x7xindex>
        %c1902783825_i32 = arith.constant 1902783825 : i32
        memref.store %199, %alloc_6[%c0, %c0] : memref<3x7xi32>
        affine.store %cst_2, %alloc_19[%c2, %c12, %c15] : memref<7x5x7xf32>
        vector.print %140 : vector<5x1xi64>
        scf.execute_region {
          %294 = vector.splat %c0 : vector<3x3xindex>
          %295 = math.log2 %34 : tensor<3x5x7xf32>
          %296 = vector.broadcast %true : i1 to vector<3x5x7xi1>
          %297 = vector.gather %60[%c10, %66] [%211], %296, %211 : memref<3x7xi32>, vector<3x5x7xi32>, vector<3x5x7xi1>, vector<3x5x7xi32> into vector<3x5x7xi32>
          %298 = index.ceildivs %68, %c5
          %299 = tensor.empty() : tensor<3x3xi64>
          %300 = linalg.matmul ins(%13, %13 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%299 : tensor<3x3xi64>) -> tensor<3x3xi64>
          %301 = arith.negf %122 : f32
          %302 = vector.multi_reduction <mul>, %19, %122 [0] : vector<1xf32> to f32
          %303 = memref.load %alloc_14[%c2, %c2, %c2] : memref<3x5x7xi1>
          %304 = index.ceildivu %121, %62
          %305 = arith.cmpf true, %302, %302 : f32
          %collapsed_59 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x3xf32> into tensor<9xf32>
          %306 = vector.insertelement %c1936655018_i32, %190[%133 : index] : vector<1xi32>
          %inserted_60 = tensor.insert %c1339498953_i64 into %expanded_56[%c2, %c3, %c2, %c0] : tensor<3x5x7x1xi64>
          %307 = math.log10 %3 : tensor<3x3xf16>
          %308 = vector.broadcast %c1514_i16 : i16 to vector<3x7xi16>
          %309 = math.exp %5 : tensor<3x3xf32>
          scf.yield
        }
        memref.store %cst_5, %alloc_17[%c4, %c3, %c0] : memref<7x5x7xf32>
        %286 = math.exp2 %34 : tensor<3x5x7xf32>
        %287 = arith.minf %cst, %cst : f32
        %288 = vector.load %alloc_14[%c0, %c1, %c3] : memref<3x5x7xi1>, vector<3x7xi1>
        %generated_57 = tensor.generate %62 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %294 = index.sub %c7, %c11
          %inserted_59 = tensor.insert %cst into %9[%c0, %c4, %c3] : tensor<3x5x7xf32>
          %295 = index.floordivs %c2, %c11
          %296 = arith.minui %201, %199 : i32
          tensor.yield %c1339498953_i64 : i64
        } : tensor<?x5x7xi64>
        %289 = memref.atomic_rmw addi %199, %60[%c2, %c5] : (i32, memref<3x7xi32>) -> i32
        %290 = vector.create_mask %215, %c11 : vector<3x7xi1>
        %291 = vector.shuffle %203, %203 [0, 1, 2, 3, 5] : vector<3x3xi64>, vector<3x3xi64>
        %292 = vector.extract_strided_slice %140 {offsets = [3], sizes = [2], strides = [1]} : vector<5x1xi64> to vector<2x1xi64>
        %293 = index.divs %133, %171
        %true_58 = arith.constant true
        linalg.yield %true_58 : i1
      }
    %218 = arith.divsi %c1936655018_i32, %c1012543730_i32 : i32
    %219 = arith.maxui %true_3, %175 : i1
    %220 = index.ceildivs %c3, %134
    %221 = math.absi %collapsed : tensor<35x7xi16>
    %222 = bufferization.clone %alloc_17 : memref<7x5x7xf32> to memref<7x5x7xf32>
    %223 = arith.shrui %175, %true : i1
    %alloc_42 = memref.alloc() : memref<3x7xi16>
    memref.copy %81, %alloc_42 : memref<3x7xi16> to memref<3x7xi16>
    %224 = math.log10 %5 : tensor<3x3xf32>
    %225 = math.expm1 %20 : tensor<7xf16>
    %226 = arith.shrsi %c1514_i16, %c1514_i16 : i16
    %227 = math.rsqrt %cst_4 : f32
    %228 = math.cttz %8 : tensor<7x5x7xi16>
    %229 = tensor.empty() : tensor<3x3xi16>
    %mapped_43 = linalg.map ins(%113, %113, %27 : memref<3x3xi16>, memref<3x3xi16>, tensor<3x3xi16>) outs(%229 : tensor<3x3xi16>)
      (%in: i16, %in_51: i16, %in_52: i16) {
        %false_53 = arith.constant false
        %false_54 = arith.constant false
        %270 = vector.transfer_read %transposed[%99, %171, %c10], %false_54 : tensor<7x3x5xi1>, vector<i1>
        %271 = arith.ori %true, %false_53 : i1
        %272 = index.ceildivu %197, %c7
        %273 = math.exp %cst_0 : f16
        %274 = index.ceildivs %c0, %c14
        %275 = math.absf %cst_2 : f32
        %276 = vector.transpose %152, [0] : vector<5xi1> to vector<5xi1>
        %277 = index.ceildivs %c11, %133
        %278 = arith.minui %in, %in_51 : i16
        %279 = math.fma %9, %9, %9 : tensor<3x5x7xf32>
        %280 = math.powf %cst_2, %cst_2 : f32
        %281 = tensor.empty() : tensor<35x7xi16>
        %mapped_55 = linalg.map ins(%collapsed_38 : tensor<35x7xi16>) outs(%281 : tensor<35x7xi16>)
          (%in_58: i16) {
            %300 = arith.divsi %in_58, %in : i16
            %301 = bufferization.clone %30 : memref<3x3xi16> to memref<3x3xi16>
            %302 = math.atan2 %7, %3 : tensor<3x3xf16>
            %303 = affine.load %alloc_12[%c9, %c3, %c8] : memref<3x5x7xf16>
            memref.store %false_53, %alloc_14[%c1, %c0, %c4] : memref<3x5x7xi1>
            %304 = vector.transpose %63, [0] : vector<1xi32> to vector<1xi32>
            %305 = arith.ori %in_58, %in_52 : i16
            %306 = arith.ceildivsi %true, %false_53 : i1
            %307 = math.cttz %true_3 : i1
            %308 = math.powf %cst_2, %cst_5 : f32
            %collapsed_59 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<3x5x7x1xf16> into tensor<15x7x1xf16>
            %309 = index.maxu %c0, %75
            %310 = math.floor %5 : tensor<3x3xf32>
            %311 = index.mul %127, %83
            %312 = index.maxu %c2, %68
            %313 = index.floordivs %68, %220
            bufferization.dealloc_tensor %7 : tensor<3x3xf16>
            %314 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%311, %66, %100, %c3)
            %inserted_60 = tensor.insert %cst_5 into %34[%c0, %c0, %c5] : tensor<3x5x7xf32>
            %315 = math.tan %20 : tensor<7xf16>
            %c1_i16_61 = arith.constant 1 : i16
            %c0_i16 = arith.constant 0 : i16
            %316 = vector.transfer_read %collapsed[%c5, %100], %c0_i16 : tensor<35x7xi16>, vector<i16>
            %317 = math.rsqrt %cst : f32
            %318 = math.atan %cst_2 : f32
            memref.copy %alloc_19, %222 : memref<7x5x7xf32> to memref<7x5x7xf32>
            %dest_62, %accumulated_value_63 = vector.scan <minui>, %108, %37 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xi32>, vector<7xi32>
            %319 = math.ceil %3 : tensor<3x3xf16>
            %320 = index.ceildivs %215, %311
            %321 = index.mul %c9, %133
            %322 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
            %323 = math.expm1 %3 : tensor<3x3xf16>
            %324 = index.maxu %c15, %215
            %325 = arith.addf %cst_2, %122 : f32
            %c0_i16_64 = arith.constant 0 : i16
            linalg.yield %c0_i16_64 : i16
          }
        %282 = index.add %c1, %c4
        %283 = vector.broadcast %cst : f32 to vector<7x5x7xf32>
        %284 = arith.remf %cst, %cst_2 : f32
        %285 = bufferization.to_tensor %alloc_10 : memref<3x5x7xf32>
        %286 = arith.remf %cst_1, %cst_1 : f16
        %287 = arith.divsi %in_51, %in_52 : i16
        %288 = vector.insertelement %true_3, %52[%282 : index] : vector<5xi1>
        %289 = arith.shrui %199, %201 : i32
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %52, %92, %false_53 : vector<5xi1>, vector<5xi1> into i1
        %291 = math.copysign %3, %3 : tensor<3x3xf16>
        %292 = arith.addf %122, %122 : f32
        %generated_56 = tensor.generate %c4, %66 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %300 = math.exp %122 : f32
          %301 = vector.maskedload %alloc_15[%c0, %c0], %189, %19 : memref<3x3xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %expanded_58 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<3x3xf16> into tensor<3x3x1xf16>
          %302 = math.rsqrt %expanded : tensor<3x5x7x1xf16>
          tensor.yield %in : i16
        } : tensor<?x?x7xi16>
        memref.copy %alloc_8, %alloc_6 : memref<3x7xi32> to memref<3x7xi32>
        %293 = math.powf %2, %2 : tensor<3x5x7xf16>
        %generated_57 = tensor.generate %c2 {
        ^bb0(%arg2: index, %arg3: index):
          %300 = index.divs %c1, %68
          %301 = arith.negf %cst_1 : f16
          %302 = math.log2 %2 : tensor<3x5x7xf16>
          %303 = memref.atomic_rmw muli %142, %alloc_11[%c0, %c2] : (i32, memref<3x3xi32>) -> i32
          tensor.yield %cst_4 : f32
        } : tensor<?x3xf32>
        %294 = math.expm1 %2 : tensor<3x5x7xf16>
        %295 = vector.broadcast %122 : f32 to vector<7xf32>
        %296 = vector.maskedload %alloc_16[%c0, %c4, %c4], %25, %295 : memref<3x5x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %297 = math.atan2 %21, %22 : tensor<f16>
        %298 = scf.while (%arg2 = %c1339498953_i64) : (i64) -> i64 {
          %300 = math.atan2 %7, %7 : tensor<3x3xf16>
          %301 = math.atan2 %3, %3 : tensor<3x3xf16>
          %302 = math.roundeven %cst_1 : f16
          %303 = arith.maxsi %in_51, %in : i16
          %304 = vector.extract %138[0] : vector<3x3xi32>
          %305 = vector.extract %109[0] : vector<3x7xf32>
          %306 = math.tan %148 : tensor<3x3xf16>
          %307 = math.fpowi %cst, %c423853968_i32 : f32, i32
          scf.condition(%true) %c1339498953_i64 : i64
        } do {
        ^bb0(%arg2: i64):
          vector.print %92 : vector<5xi1>
          %300 = math.tanh %2 : tensor<3x5x7xf16>
          %301 = arith.minf %cst_2, %cst_4 : f32
          %302 = math.copysign %21, %21 : tensor<f16>
          %303 = tensor.empty() : tensor<3x5x7xi32>
          %alloc_58 = memref.alloc() : memref<3x7xi1>
          %304 = math.exp %285 : tensor<3x5x7xf32>
          %305 = math.floor %cst_5 : f32
          memref.assume_alignment %40, 2 : memref<3x7xf32>
          %306 = math.atan2 %21, %21 : tensor<f16>
          %307 = math.roundeven %5 : tensor<3x3xf32>
          %308 = bufferization.to_tensor %alloc_21 : memref<7x5xf32>
          %309 = memref.realloc %alloc_22 : memref<7xf16> to memref<5xf16>
          %310 = math.floor %7 : tensor<3x3xf16>
          %311 = arith.ceildivsi %c1514_i16, %in : i16
          %312 = index.ceildivu %c8, %c10
          scf.yield %c1339498953_i64 : i64
        }
        %299 = math.atan2 %2, %2 : tensor<3x5x7xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %230 = math.floor %20 : tensor<7xf16>
    %231 = arith.addf %cst, %122 : f32
    %232 = math.exp2 %cst : f32
    %233 = tensor.empty(%171, %c3) : tensor<?x5x?xi1>
    %234 = memref.realloc %alloc_22 : memref<7xf16> to memref<7xf16>
    %235 = arith.floordivsi %c1012543730_i32, %c1410414642_i32 : i32
    %236 = math.log2 %cst_2 : f32
    %237 = math.fma %122, %cst, %122 : f32
    %alloc_44 = memref.alloc() : memref<3xf32>
    %238 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44 : memref<3xf32>) outs(%9 : tensor<3x5x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %270 = math.absf %6 : tensor<7x5x7xf32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<3x5x7xf16>) {
      ^bb0(%out_55: f16):
        %303 = arith.muli %c1514_i16, %c1514_i16 : i16
        %304 = memref.atomic_rmw mulf %cst_5, %alloc_19[%c5, %c3, %c4] : (f32, memref<7x5x7xf32>) -> f32
        %305 = bufferization.to_tensor %alloc_18 : memref<3x5x7xi64>
        %306 = arith.ceildivsi %c1555822493_i32, %c1012543730_i32 : i32
        %307 = arith.remf %cst_1, %cst_1 : f16
        %308 = arith.remf %cst_4, %cst_2 : f32
        %309 = vector.broadcast %220 : index to vector<3xindex>
        %310 = vector.broadcast %175 : i1 to vector<3xi1>
        %311 = vector.broadcast %cst_2 : f32 to vector<3xf32>
        vector.scatter %alloc_15[%c1, %c0] [%309], %310, %311 : memref<3x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %312 = vector.multi_reduction <add>, %19, %19 [] : vector<1xf32> to vector<1xf32>
        %313 = arith.remui %c1339498953_i64, %c1339498953_i64 : i64
        %314 = math.log10 %2 : tensor<3x5x7xf16>
        %315 = index.add %220, %134
        %316 = math.atan2 %cst, %cst_5 : f32
        %317 = math.fma %122, %cst_5, %cst_5 : f32
        %318 = math.ipowi %0, %0 : tensor<7x5x7xi16>
        %319 = arith.addf %out, %cst_5 : f32
        %320 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %321 = math.fma %cst_1, %cst_0, %cst_0 : f16
        %collapsed_56 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<7x5x7xi1> into tensor<35x7xi1>
        %322 = vector.load %alloc_16[%c2, %c3, %c0] : memref<3x5x7xf32>, vector<7x5x7xf32>
        %323 = index.ceildivu %c7, %c13
        %324 = affine.load %alloc_20[%c7, %c7] : memref<3x3xi16>
        %325 = vector.broadcast %c1410414642_i32 : i32 to vector<1x1xi32>
        %326 = vector.outerproduct %63, %63, %325 {kind = #vector.kind<maxui>} : vector<1xi32>, vector<1xi32>
        %327 = index.sub %315, %323
        %328 = math.absf %34 : tensor<3x5x7xf32>
        %329 = vector.extract_strided_slice %108 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xi32> to vector<2x7xi32>
        %330 = arith.negf %out : f32
        %331 = vector.create_mask %c3, %121, %c3 : vector<3x5x7xi1>
        %332 = arith.cmpi sge, %c1339498953_i64, %c1339498953_i64 : i64
        %333 = math.cttz %324 : i16
        %334 = vector.extract_strided_slice %107 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xi1> to vector<3x7xi1>
        %c-24257_i16 = arith.constant -24257 : i16
        %335 = math.absf %in : f32
        linalg.yield %cst_1 : f16
      } -> tensor<3x5x7xf16>
      %272 = vector.transpose %24, [0] : vector<7xi32> to vector<7xi32>
      %273 = bufferization.clone %alloc_20 : memref<3x3xi16> to memref<3x3xi16>
      %274 = index.floordivs %c1, %c12
      %275 = vector.splat %122 : vector<3x7xf32>
      %276 = tensor.empty() : tensor<7x5xi16>
      %277 = tensor.empty() : tensor<35x5xi16>
      %278 = linalg.matmul ins(%collapsed, %276 : tensor<35x7xi16>, tensor<7x5xi16>) outs(%277 : tensor<35x5xi16>) -> tensor<35x5xi16>
      %279 = math.absi %0 : tensor<7x5x7xi16>
      %280 = arith.remsi %c1410414642_i32, %199 : i32
      %281 = vector.shuffle %189, %152 [0, 1, 2, 3] : vector<1xi1>, vector<5xi1>
      %282 = index.sub %c0, %62
      memref.store %in, %alloc_19[%c1, %c0, %c5] : memref<7x5x7xf32>
      %283 = math.log10 %cst_1 : f16
      %284 = arith.divui %c1410414642_i32, %c423853968_i32 : i32
      %285 = arith.addf %122, %in : f32
      memref.copy %alloc_17, %alloc_19 : memref<7x5x7xf32> to memref<7x5x7xf32>
      %286 = math.absi %c1339498953_i64 : i64
      %287 = math.roundeven %cst_5 : f32
      %288 = index.floordivs %c6, %c9
      %289 = scf.execute_region -> f16 {
        %303 = math.expm1 %148 : tensor<3x3xf16>
        %304 = arith.cmpi ugt, %c423853968_i32, %199 : i32
        %305 = arith.cmpi ne, %false, %175 : i1
        %306 = math.fpowi %cst_0, %c1936655018_i32 : f16, i32
        %307 = math.absf %expanded : tensor<3x5x7x1xf16>
        %308 = vector.broadcast %out : f32 to vector<f32>
        vector.transfer_write %308, %alloc_19[%c2, %154, %133] : vector<f32>, memref<7x5x7xf32>
        %309 = vector.broadcast %out : f32 to vector<7xf32>
        %dest_55, %accumulated_value_56 = vector.scan <minf>, %106, %309 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
        %310 = arith.maxsi %c423853968_i32, %c1936655018_i32 : i32
        %311 = math.exp %expanded : tensor<3x5x7x1xf16>
        %312 = index.add %118, %c5
        %313 = vector.create_mask %220, %c3, %c13 : vector<3x5x7xi1>
        %314 = vector.broadcast %true : i1 to vector<5x5xi1>
        %315 = vector.outerproduct %92, %92, %314 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
        %316 = math.floor %2 : tensor<3x5x7xf16>
        %317 = arith.shrsi %199, %c1555822493_i32 : i32
        %318 = bufferization.clone %206 : memref<3x3xi32> to memref<3x3xi32>
        %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0 : tensor<7x5x7xf16>
        scf.yield %cst_0 : f16
      }
      %290 = arith.shrsi %c1012543730_i32, %c423853968_i32 : i32
      %291 = index.mul %54, %197
      %292 = index.ceildivs %167, %c6
      %293 = vector.broadcast %in : f32 to vector<5xf32>
      %294 = vector.transfer_write %293, %6[%c14, %c6, %171] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xf32>, tensor<7x5x7xf32>
      %295 = arith.maxf %cst_4, %cst : f32
      %296 = vector.broadcast %cst_4 : f32 to vector<7xf32>
      %dest_51, %accumulated_value_52 = vector.scan <maxf>, %209, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
      %297 = vector.broadcast %201 : i32 to vector<3xi32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %138, %297 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi32>, vector<3xi32>
      %298 = affine.for %arg2 = 0 to 82 iter_args(%arg3 = %c15) -> (index) {
        affine.yield %282 : index
      }
      %299 = arith.shli %175, %false : i1
      %300 = math.cttz %10 : tensor<3x7xi64>
      %301 = vector.insertelement %true_3, %152[%99 : index] : vector<5xi1>
      %302 = math.tan %2 : tensor<3x5x7xf16>
      linalg.yield %in : f32
    } -> tensor<3x5x7xf32>
    %239 = memref.load %alloc_9[%c1, %c4, %c5] : memref<3x5x7xf16>
    %240 = vector.transpose %109, [1, 0] : vector<3x7xf32> to vector<7x3xf32>
    %241 = vector.extract_strided_slice %24 {offsets = [3], sizes = [4], strides = [1]} : vector<7xi32> to vector<4xi32>
    %242 = index.divs %83, %c10
    %243 = index.maxu %c10, %154
    %244 = arith.divui %true, %true_3 : i1
    %245 = arith.minui %c1012543730_i32, %142 : i32
    %246 = index.floordivs %121, %242
    memref.store %cst_2, %alloc_21[%c5, %c2] : memref<7x5xf32>
    %247 = arith.cmpf ogt, %cst_2, %cst_2 : f32
    %cst_45 = arith.constant 5.155200e+04 : f16
    %248 = math.round %122 : f32
    %249 = math.ctlz %16 : tensor<7x5x7xi1>
    %250 = tensor.empty() : tensor<7x5x7xi16>
    %mapped_46 = linalg.map ins(%8 : tensor<7x5x7xi16>) outs(%250 : tensor<7x5x7xi16>)
      (%in: i16) {
        %270 = vector.extract_strided_slice %25 {offsets = [2], sizes = [4], strides = [1]} : vector<7xi1> to vector<4xi1>
        %collapsed_51 = tensor.collapse_shape %7 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
        %271 = vector.broadcast %c1339498953_i64 : i64 to vector<3xi64>
        %dest_52, %accumulated_value_53 = vector.scan <minsi>, %203, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi64>, vector<3xi64>
        %272 = arith.remui %175, %false : i1
        %273 = arith.cmpi slt, %c1012543730_i32, %201 : i32
        %274 = arith.addi %c1012543730_i32, %c1555822493_i32 : i32
        %generated_54 = tensor.generate %121, %133 {
        ^bb0(%arg2: index, %arg3: index):
          %301 = index.maxu %134, %220
          %302 = vector.flat_transpose %52 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %303 = arith.remsi %c1012543730_i32, %142 : i32
          %304 = arith.minui %175, %true : i1
          tensor.yield %201 : i32
        } : tensor<?x?xi32>
        %275 = index.add %167, %c7
        %c1424138094_i64 = arith.constant 1424138094 : i64
        %276 = index.casts %true : i1 to index
        %277 = memref.realloc %alloc_22 : memref<7xf16> to memref<5xf16>
        %278 = arith.ceildivsi %c1410414642_i32, %c1012543730_i32 : i32
        %279 = math.absf %21 : tensor<f16>
        %280 = memref.realloc %alloc_22 : memref<7xf16> to memref<7xf16>
        %281 = arith.divui %199, %c1936655018_i32 : i32
        %282 = vector.broadcast %142 : i32 to vector<3xi32>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %108, %26, %282 : vector<3x7xi32>, vector<7xi32> into vector<3xi32>
        %284 = math.cttz %175 : i1
        %285 = vector.extract %19[0] : vector<1xf32>
        %286 = vector.insert %true_3, %189 [0] : i1 into vector<1xi1>
        %287 = arith.shrui %c1410414642_i32, %199 : i32
        %288 = arith.muli %c1555822493_i32, %c1410414642_i32 : i32
        %289 = arith.remf %cst_2, %cst_5 : f32
        %290 = math.absi %16 : tensor<7x5x7xi1>
        %291 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest_55, %accumulated_value_56 = vector.scan <maxf>, %106, %291 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
        %292 = arith.shrui %201, %201 : i32
        %293 = arith.remf %122, %cst : f32
        %294 = arith.addf %cst, %cst_2 : f32
        %295 = index.maxu %c13, %276
        %296 = index.add %c6, %c5
        %297 = memref.alloca_scope  -> (memref<3x7xi32>) {
          %301 = arith.maxf %122, %cst_5 : f32
          %302 = index.ceildivs %c5, %c0
          %303 = math.ceil %122 : f32
          %304 = math.exp %3 : tensor<3x3xf16>
          memref.copy %alloc_20, %113 : memref<3x3xi16> to memref<3x3xi16>
          %305 = vector.broadcast %cst_1 : f16 to vector<1xf16>
          %306 = vector.maskedload %alloc_22[%c3], %189, %305 : memref<7xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
          %307 = affine.load %alloc_6[%c4, %c2] : memref<3x7xi32>
          %308 = math.atan2 %7, %7 : tensor<3x3xf16>
          %309 = vector.broadcast %307 : i32 to vector<3x5xi32>
          %310 = vector.multi_reduction <minsi>, %211, %309 [2] : vector<3x5x7xi32> to vector<3x5xi32>
          %311 = index.mul %c3, %c11
          %312 = index.floordivs %68, %220
          %313 = math.roundeven %21 : tensor<f16>
          %314 = arith.remui %c1410414642_i32, %142 : i32
          %315 = math.log2 %5 : tensor<3x3xf32>
          %316 = arith.minui %c1555822493_i32, %c423853968_i32 : i32
          %317 = arith.maxf %cst_0, %cst_0 : f16
          %318 = tensor.empty() : tensor<3x5x7xi1>
          %319 = arith.shrsi %c1514_i16, %c1514_i16 : i16
          %320 = vector.broadcast %c1339498953_i64 : i64 to vector<3xi64>
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %203, %320 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi64>, vector<3xi64>
          %321 = vector.transpose %52, [0] : vector<5xi1> to vector<5xi1>
          %322 = bufferization.to_tensor %206 : memref<3x3xi32>
          %323 = math.atan2 %34, %9 : tensor<3x5x7xf32>
          %324 = arith.muli %c1410414642_i32, %142 : i32
          %325 = math.ceil %3 : tensor<3x3xf16>
          %326 = affine.load %60[%c9, %c4] : memref<3x7xi32>
          %327 = arith.divsi %c1339498953_i64, %c1339498953_i64 : i64
          %328 = math.tanh %expanded : tensor<3x5x7x1xf16>
          %329 = arith.shrsi %c423853968_i32, %c1555822493_i32 : i32
          %330 = vector.broadcast %c13 : index to vector<3xindex>
          %331 = vector.broadcast %false : i1 to vector<3xi1>
          %332 = vector.broadcast %cst : f32 to vector<3xf32>
          vector.scatter %alloc_15[%c2, %c2] [%330], %331, %332 : memref<3x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
          %333 = arith.mulf %cst_5, %cst_4 : f32
          %rank = tensor.rank %12 : tensor<3x5x7xi1>
          %334 = index.casts %100 : index to i32
          memref.alloca_scope.return %alloc_8 : memref<3x7xi32>
        }
        %298 = tensor.empty() : tensor<3x5x7xi32>
        %299 = math.fpowi %9, %298 : tensor<3x5x7xf32>, tensor<3x5x7xi32>
        %300 = math.log10 %6 : tensor<7x5x7xf32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %dest_47, %accumulated_value_48 = vector.scan <or>, %107, %25 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
    %251 = index.sub %c7, %c12
    %252 = math.expm1 %7 : tensor<3x3xf16>
    %253 = scf.index_switch %220 -> memref<3x5x7xf32> 
    case 1 {
      %270 = math.floor %148 : tensor<3x3xf16>
      %271 = vector.matrix_multiply %19, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %272 = arith.addi %c1936655018_i32, %c1410414642_i32 : i32
      %from_elements = tensor.from_elements %false, %175, %true_3, %false, %true, %true_3, %true, %true, %false, %false, %175, %false, %true_3, %true, %true, %false, %175, %false, %175, %175, %true_3 : tensor<3x7xi1>
      %273 = math.roundeven %148 : tensor<3x3xf16>
      %274 = vector.broadcast %c1410414642_i32 : i32 to vector<4x4xi32>
      %275 = vector.outerproduct %241, %241, %274 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
      %276 = bufferization.to_memref %from_elements : memref<3x7xi1>
      %277 = math.rsqrt %cst_1 : f16
      %alloc_51 = memref.alloc() : memref<7x5xi1>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51, %17 : memref<7x5xi1>, tensor<7x5x7xi1>) outs(%14 : tensor<7x5x7xi1>) {
      ^bb0(%in: i1, %in_52: i1, %out: i1):
        %286 = math.floor %34 : tensor<3x5x7xf32>
        %287 = arith.maxui %142, %c423853968_i32 : i32
        %288 = memref.load %60[%c2, %c0] : memref<3x7xi32>
        %289 = arith.mulf %cst_2, %122 : f32
        %290 = arith.minf %cst_4, %cst_2 : f32
        %291 = math.floor %7 : tensor<3x3xf16>
        %292 = vector.transpose %63, [0] : vector<1xi32> to vector<1xi32>
        %293 = arith.divui %true_3, %175 : i1
        %294 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
        %295 = vector.create_mask %121, %c7, %c2 : vector<3x5x7xi1>
        %296 = arith.remsi %c1410414642_i32, %c1410414642_i32 : i32
        %297 = vector.broadcast %154 : index to vector<3xindex>
        %298 = vector.broadcast %in_52 : i1 to vector<3xi1>
        %299 = vector.broadcast %cst_1 : f16 to vector<3xf16>
        vector.scatter %alloc[%c6, %c3, %c3] [%297], %298, %299 : memref<7x5x7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %300 = vector.broadcast %c1339498953_i64 : i64 to vector<1xi64>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %140, %300 {inclusive = false, reduction_dim = 0 : i64} : vector<5x1xi64>, vector<1xi64>
        %301 = arith.minf %cst_0, %cst_0 : f16
        %302 = arith.divui %c1410414642_i32, %142 : i32
        %303 = vector.insertelement %c423853968_i32, %24[%251 : index] : vector<7xi32>
        %from_elements_55 = tensor.from_elements %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<3x7xf16>
        %304 = arith.addf %cst_4, %122 : f32
        %305 = arith.cmpi uge, %out, %true : i1
        %306 = arith.minf %cst_5, %cst_2 : f32
        %307 = math.floor %7 : tensor<3x3xf16>
        %308 = math.log2 %cst_2 : f32
        %309 = index.casts %true : i1 to index
        %310 = index.ceildivu %171, %118
        %311 = vector.flat_transpose %241 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %312 = vector.insertelement %c1410414642_i32, %241[%118 : index] : vector<4xi32>
        %313 = math.log10 %122 : f32
        bufferization.dealloc_tensor %generated : tensor<?x?x7xi16>
        %true_56 = index.bool.constant true
        %314 = arith.minsi %c423853968_i32, %c423853968_i32 : i32
        %315 = math.log10 %2 : tensor<3x5x7xf16>
        %316 = vector.shuffle %152, %25 [0, 1, 2, 4, 9] : vector<5xi1>, vector<7xi1>
        linalg.yield %true : i1
      } -> tensor<7x5x7xi1>
      %279 = math.absf %cst_4 : f32
      %280 = arith.remui %true, %true_3 : i1
      %281 = math.log1p %3 : tensor<3x3xf16>
      %282 = index.sizeof
      %283 = affine.load %222[%c12, %c7, %c7] : memref<7x5x7xf32>
      %284 = math.roundeven %7 : tensor<3x3xf16>
      %285 = tensor.empty(%243, %c12) : tensor<?x?x7xf16>
      scf.yield %alloc_16 : memref<3x5x7xf32>
    }
    case 2 {
      %270 = vector.create_mask %75, %215, %121 : vector<3x5x7xi1>
      %271 = arith.shrsi %c423853968_i32, %199 : i32
      %272 = arith.remsi %199, %142 : i32
      %273 = scf.if %175 -> (memref<3x7xf32>) {
        %286 = arith.shrsi %201, %c1012543730_i32 : i32
        %287 = math.exp %2 : tensor<3x5x7xf16>
        %288 = arith.shrsi %c1339498953_i64, %c1339498953_i64 : i64
        %289 = arith.addi %c1012543730_i32, %c423853968_i32 : i32
        %290 = math.exp %34 : tensor<3x5x7xf32>
        %291 = vector.broadcast %c1410414642_i32 : i32 to vector<5xi32>
        %292 = vector.transfer_write %291, %69[%134, %39, %54] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi32>, tensor<7x5x7xi32>
        %293 = tensor.empty() : tensor<3x5x7xi16>
        %294 = vector.broadcast %c1514_i16 : i16 to vector<3x3xi16>
        %295 = vector.gather %293[%c9, %86, %c0] [%138], %130, %294 : tensor<3x5x7xi16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi16> into vector<3x3xi16>
        %296 = arith.cmpi ne, %c1012543730_i32, %c1936655018_i32 : i32
        scf.yield %40 : memref<3x7xf32>
      } else {
        %286 = math.log10 %5 : tensor<3x3xf32>
        %287 = math.log2 %5 : tensor<3x3xf32>
        %288 = arith.divui %c1514_i16, %c1514_i16 : i16
        %289 = arith.maxui %true_3, %true : i1
        %290 = vector.multi_reduction <xor>, %52, %true_3 [0] : vector<5xi1> to i1
        %291 = math.cttz %8 : tensor<7x5x7xi16>
        %292 = affine.load %alloc_11[%c14, %c5] : memref<3x3xi32>
        %293 = vector.maskedload %40[%c2, %c4], %189, %19 : memref<3x7xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        scf.yield %40 : memref<3x7xf32>
      }
      %274 = math.exp %148 : tensor<3x3xf16>
      %275 = vector.reduction <minsi>, %63 : vector<1xi32> into i32
      %276 = vector.broadcast %cst_5 : f32 to vector<3x3xf32>
      %277 = math.copysign %2, %2 : tensor<3x5x7xf16>
      %278 = math.fma %34, %9, %9 : tensor<3x5x7xf32>
      memref.assume_alignment %alloc_14, 16 : memref<3x5x7xi1>
      %279 = math.log %cst_5 : f32
      %280 = vector.multi_reduction <add>, %270, %25 [0, 1] : vector<3x5x7xi1> to vector<7xi1>
      %281 = vector.broadcast %66 : index to vector<5xindex>
      %282 = vector.broadcast %c1339498953_i64 : i64 to vector<5xi64>
      vector.scatter %alloc_13[%c0, %c0] [%281], %52, %282 : memref<3x3xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      %283 = math.expm1 %22 : tensor<f16>
      %284 = arith.remf %cst_1, %cst_1 : f16
      %285 = arith.addi %c1555822493_i32, %142 : i32
      scf.yield %alloc_10 : memref<3x5x7xf32>
    }
    default {
      %270 = vector.splat %true : vector<3x7xi1>
      %271 = vector.transpose %140, [1, 0] : vector<5x1xi64> to vector<1x5xi64>
      %272 = bufferization.to_tensor %222 : memref<7x5x7xf32>
      %273 = arith.muli %false, %false : i1
      %274 = vector.multi_reduction <add>, %241, %199 [0] : vector<4xi32> to i32
      %275 = vector.shuffle %37, %26 [0, 1, 2, 3, 5, 8, 9, 11, 12] : vector<7xi32>, vector<7xi32>
      %276 = affine.for %arg2 = 0 to 16 iter_args(%arg3 = %alloc_20) -> (memref<3x3xi16>) {
        affine.yield %arg3 : memref<3x3xi16>
      }
      %277 = arith.remsi %c1555822493_i32, %c423853968_i32 : i32
      %278 = vector.broadcast %true : i1 to vector<3x5x7xi1>
      %279 = vector.gather %16[%133, %68, %127] [%211], %278, %278 : tensor<7x5x7xi1>, vector<3x5x7xi32>, vector<3x5x7xi1>, vector<3x5x7xi1> into vector<3x5x7xi1>
      %280 = math.ipowi %250, %0 : tensor<7x5x7xi16>
      %281 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %282 = math.absi %142 : i32
      %283 = memref.atomic_rmw addf %cst_5, %alloc_10[%c1, %c2, %c4] : (f32, memref<3x5x7xf32>) -> f32
      %284 = vector.broadcast %cst_1 : f16 to vector<f16>
      %285 = vector.transfer_write %284, %7[%251, %c15] : vector<f16>, tensor<3x3xf16>
      %286 = arith.addf %cst_1, %cst_1 : f16
      %287 = tensor.empty(%133) : tensor<?x3xi1>
      scf.yield %alloc_16 : memref<3x5x7xf32>
    }
    %254 = math.ceil %expanded : tensor<3x5x7x1xf16>
    %255 = math.atan2 %cst_5, %cst_2 : f32
    %256 = math.fma %cst_1, %cst_1, %cst_0 : f16
    %257 = math.tan %34 : tensor<3x5x7xf32>
    %258 = arith.shrsi %199, %199 : i32
    %259 = math.fpowi %6, %69 : tensor<7x5x7xf32>, tensor<7x5x7xi32>
    %260 = vector.broadcast %c1012543730_i32 : i32 to vector<7x7xi32>
    %261 = vector.outerproduct %37, %26, %260 {kind = #vector.kind<maxui>} : vector<7xi32>, vector<7xi32>
    %262 = math.exp2 %21 : tensor<f16>
    %263 = arith.negf %cst_5 : f32
    %true_49 = index.bool.constant true
    %264 = math.rsqrt %7 : tensor<3x3xf16>
    %265 = tensor.empty() : tensor<f16>
    %266 = linalg.copy ins(%21 : tensor<f16>) outs(%265 : tensor<f16>) -> tensor<f16>
    %267 = tensor.empty() : tensor<5x7x3xi1>
    %transposed_50 = linalg.transpose ins(%transposed : tensor<7x3x5xi1>) outs(%267 : tensor<5x7x3xi1>) permutation = [2, 0, 1] 
    %268 = tensor.empty() : tensor<5xi1>
    %reduced = linalg.reduce ins(%16 : tensor<7x5x7xi1>) outs(%268 : tensor<5xi1>) dimensions = [0, 2] 
      (%in: i1, %init: i1) {
        %c-24541_i16 = arith.constant -24541 : i16
        %270 = vector.insert %true_3, %92 [2] : i1 into vector<5xi1>
        %271 = index.add %215, %c10
        %272 = vector.broadcast %142 : i32 to vector<5x7xi32>
        %273 = vector.multi_reduction <maxsi>, %211, %272 [0] : vector<3x5x7xi32> to vector<5x7xi32>
        %274 = tensor.empty() : tensor<3x3xf16>
        %275 = linalg.matmul ins(%7, %7 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%274 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %276 = math.floor %266 : tensor<f16>
        %277 = scf.index_switch %133 -> i32 
        case 1 {
          %279 = vector.broadcast %in : i1 to vector<5x5xi1>
          %280 = vector.outerproduct %52, %92, %279 {kind = #vector.kind<add>} : vector<5xi1>, vector<5xi1>
          %281 = math.ipowi %14, %14 : tensor<7x5x7xi1>
          %282 = index.mul %134, %c1
          %283 = arith.addf %122, %122 : f32
          %284 = math.absf %265 : tensor<f16>
          %285 = arith.shrsi %c1514_i16, %c1514_i16 : i16
          %286 = arith.remui %in, %init : i1
          bufferization.dealloc_tensor %16 : tensor<7x5x7xi1>
          %287 = math.absf %cst_2 : f32
          %288 = arith.mulf %cst_5, %cst_5 : f32
          %289 = vector.flat_transpose %24 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
          %false_52 = index.bool.constant false
          %290 = vector.insertelement %201, %289[%154 : index] : vector<7xi32>
          %291 = math.log2 %6 : tensor<7x5x7xf32>
          %inserted_53 = tensor.insert %cst_1 into %7[%c2, %c0] : tensor<3x3xf16>
          %292 = index.add %121, %c3
          scf.yield %c423853968_i32 : i32
        }
        case 2 {
          %alloc_52 = memref.alloc() : memref<7x5x7xi32>
          %279 = arith.minsi %201, %142 : i32
          %280 = math.roundeven %20 : tensor<7xf16>
          %281 = vector.create_mask %c10, %39, %243 : vector<3x5x7xi1>
          %282 = arith.maxsi %c1555822493_i32, %c1555822493_i32 : i32
          %inserted_53 = tensor.insert %cst_0 into %20[%c5] : tensor<7xf16>
          %283 = arith.remf %cst_5, %cst : f32
          %284 = vector.insertelement %in, %25[%215 : index] : vector<7xi1>
          %285 = memref.realloc %alloc_22 : memref<7xf16> to memref<3xf16>
          %286 = vector.insertelement %c1410414642_i32, %37[%c10 : index] : vector<7xi32>
          %287 = bufferization.to_tensor %alloc_9 : memref<3x5x7xf16>
          %288 = vector.extract %109[1] : vector<3x7xf32>
          %289 = affine.max affine_map<(d0) -> (d0, d0 + d0 mod 128 - 16, d0 mod 128, d0 mod 128 - (d0 * -2 + 7))>(%c2)
          %290 = bufferization.clone %alloc_15 : memref<3x3xf32> to memref<3x3xf32>
          %291 = arith.remsi %199, %201 : i32
          %292 = index.casts %in : i1 to index
          scf.yield %142 : i32
        }
        case 3 {
          %279 = math.atan2 %21, %21 : tensor<f16>
          %false_52 = arith.constant false
          %280 = arith.remf %cst_1, %cst_0 : f16
          %281 = index.ceildivu %c3, %c15
          %282 = math.powf %6, %6 : tensor<7x5x7xf32>
          %283 = vector.broadcast %c423853968_i32 : i32 to vector<3xi32>
          %dest_53, %accumulated_value_54 = vector.scan <minui>, %108, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi32>, vector<3xi32>
          %284 = vector.shuffle %272, %108 [1, 4] : vector<5x7xi32>, vector<3x7xi32>
          %285 = vector.broadcast %c1936655018_i32 : i32 to vector<1x1xi32>
          %286 = vector.outerproduct %190, %63, %285 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
          %287 = index.mul %c9, %100
          %288 = index.casts %86 : index to i32
          %289 = vector.broadcast %c3 : index to vector<7xindex>
          %290 = vector.broadcast %cst_5 : f32 to vector<7xf32>
          vector.scatter %alloc_15[%c2, %c0] [%289], %25, %290 : memref<3x3xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          memref.store %cst_2, %alloc_10[%c2, %c2, %c3] : memref<3x5x7xf32>
          %291 = math.tanh %2 : tensor<3x5x7xf16>
          %292 = vector.load %206[%c2, %c1] : memref<3x3xi32>, vector<3x3xi32>
          %293 = arith.muli %199, %142 : i32
          %294 = arith.addf %cst_1, %cst_0 : f16
          scf.yield %199 : i32
        }
        default {
          %279 = arith.minui %201, %142 : i32
          %280 = vector.insertelement %175, %152[%c5 : index] : vector<5xi1>
          %281 = arith.maxsi %201, %c1410414642_i32 : i32
          %282 = math.log10 %5 : tensor<3x3xf32>
          %283 = math.log10 %9 : tensor<3x5x7xf32>
          %284 = index.maxs %54, %c9
          %285 = index.add %121, %c14
          %286 = vector.shuffle %52, %152 [0] : vector<5xi1>, vector<5xi1>
          %287 = arith.shli %true_49, %true_3 : i1
          %288 = math.absf %21 : tensor<f16>
          %false_52 = index.bool.constant false
          %289 = math.exp2 %2 : tensor<3x5x7xf16>
          %290 = arith.negf %cst_1 : f16
          %expanded_53 = tensor.expand_shape %229 [[0], [1, 2]] : tensor<3x3xi16> into tensor<3x3x1xi16>
          %291 = vector.broadcast %142 : i32 to vector<5xi32>
          %dest_54, %accumulated_value_55 = vector.scan <add>, %272, %291 {inclusive = false, reduction_dim = 1 : i64} : vector<5x7xi32>, vector<5xi32>
          bufferization.dealloc_tensor %11 : tensor<3x7xi16>
          scf.yield %c1555822493_i32 : i32
        }
        %278 = affine.load %40[%c7, %c7] : memref<3x7xf32>
        %true_51 = arith.constant true
        linalg.yield %true_51 : i1
      }
    scf.parallel (%arg2) = (%243) to (%242) step (%c14) {
      %270 = arith.subi %true, %true : i1
      vector.print %107 : vector<3x7xi1>
      %271 = index.sub %c8, %c2
      %272 = arith.negf %cst_0 : f16
      %273 = memref.alloca_scope  -> (memref<7x5x7xi1>) {
        %280 = index.casts %54 : index to i32
        %281 = bufferization.to_memref %3 : memref<3x3xf16>
        %282 = math.exp2 %5 : tensor<3x3xf32>
        %283 = arith.shrui %false, %true_3 : i1
        %284 = math.log %6 : tensor<7x5x7xf32>
        %285 = math.log %21 : tensor<f16>
        %286 = math.absf %122 : f32
        %287 = memref.load %113[%c0, %c0] : memref<3x3xi16>
        %288 = vector.maskedload %alloc_14[%c1, %c4, %c6], %92, %152 : memref<3x5x7xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %289 = arith.remf %cst_4, %cst_5 : f32
        %290 = arith.shrui %c423853968_i32, %c423853968_i32 : i32
        %291 = math.absf %6 : tensor<7x5x7xf32>
        %292 = math.fma %cst_5, %cst, %cst_2 : f32
        %293 = arith.maxui %c1410414642_i32, %142 : i32
        %294 = vector.extract_strided_slice %26 {offsets = [5], sizes = [1], strides = [1]} : vector<7xi32> to vector<1xi32>
        %295 = math.cttz %12 : tensor<3x5x7xi1>
        %296 = vector.broadcast %cst_0 : f16 to vector<f16>
        %297 = vector.transfer_write %296, %7[%242, %251] : vector<f16>, tensor<3x3xf16>
        %298 = math.cttz %0 : tensor<7x5x7xi16>
        %299 = math.absf %cst_5 : f32
        %300 = vector.load %alloc_10[%c1, %c4, %c2] : memref<3x5x7xf32>, vector<3x5x7xf32>
        %301 = vector.insert %c423853968_i32, %37 [5] : i32 into vector<7xi32>
        %302 = arith.negf %cst_1 : f16
        %303 = vector.broadcast %cst_0 : f16 to vector<3xf16>
        %304 = vector.broadcast %true_49 : i1 to vector<3xi1>
        %305 = vector.maskedload %alloc_9[%c2, %c4, %c2], %304, %303 : memref<3x5x7xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %dest_53, %accumulated_value_54 = vector.scan <maxf>, %300, %209 {inclusive = false, reduction_dim = 1 : i64} : vector<3x5x7xf32>, vector<3x7xf32>
        %306 = arith.remf %cst_5, %cst_4 : f32
        %expanded_55 = tensor.expand_shape %34 [[0], [1], [2, 3]] : tensor<3x5x7xf32> into tensor<3x5x7x1xf32>
        memref.store %c1012543730_i32, %alloc_8[%c1, %c1] : memref<3x7xi32>
        %307 = arith.subi %c1514_i16, %c1514_i16 : i16
        %308 = arith.negf %cst_5 : f32
        %309 = arith.remf %cst, %cst_5 : f32
        %310 = arith.shli %c423853968_i32, %201 : i32
        %311 = vector.splat %118 : vector<7x5x7xindex>
        memref.alloca_scope.return %119 : memref<7x5x7xi1>
      }
      %inserted_51 = tensor.insert %c1339498953_i64 into %15[%c2, %c1, %c4] : tensor<3x5x7xi64>
      scf.index_switch %62 
      case 1 {
        %280 = index.casts %142 : i32 to index
        %281 = arith.shli %true, %175 : i1
        %282 = bufferization.to_tensor %alloc_18 : memref<3x5x7xi64>
        %true_53 = index.bool.constant true
        %283 = memref.atomic_rmw maxu %199, %alloc_6[%c1, %c3] : (i32, memref<3x7xi32>) -> i32
        %284 = math.round %20 : tensor<7xf16>
        %285 = index.ceildivu %100, %c8
        %286 = arith.minf %122, %cst_2 : f32
        %287 = math.log2 %cst_1 : f16
        %288 = math.fpowi %6, %69 : tensor<7x5x7xf32>, tensor<7x5x7xi32>
        %289 = index.ceildivu %c2, %c6
        %290 = tensor.empty() : tensor<3x3xf32>
        %291 = linalg.matmul ins(%5, %5 : tensor<3x3xf32>, tensor<3x3xf32>) outs(%290 : tensor<3x3xf32>) -> tensor<3x3xf32>
        %expanded_54 = tensor.expand_shape %186 [[0], [1], [2, 3]] : tensor<7x5x7xi1> into tensor<7x5x7x1xi1>
        %292 = vector.broadcast %122 : f32 to vector<7xf32>
        %dest_55, %accumulated_value_56 = vector.scan <maxf>, %109, %292 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
        %293 = index.add %arg2, %75
        bufferization.dealloc_tensor %2 : tensor<3x5x7xf16>
        scf.yield
      }
      default {
        %280 = vector.flat_transpose %63 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %collapsed_53 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<7x5x7xf32> into tensor<35x7xf32>
        %281 = arith.addf %cst_2, %cst_2 : f32
        %282 = math.powf %9, %34 : tensor<3x5x7xf32>
        %283 = vector.splat %false : vector<7x5x7xi1>
        %284 = math.round %5 : tensor<3x3xf32>
        %285 = arith.andi %c1339498953_i64, %c1339498953_i64 : i64
        %286 = tensor.empty() : tensor<3x3xi64>
        %287 = linalg.matmul ins(%78, %13 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%286 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %288 = arith.remf %cst_5, %cst_2 : f32
        %289 = bufferization.to_tensor %alloc_9 : memref<3x5x7xf16>
        %false_54 = index.bool.constant false
        %290 = math.copysign %cst_2, %cst_5 : f32
        %291 = arith.divf %cst_1, %cst_1 : f16
        %292 = math.ctpop %15 : tensor<3x5x7xi64>
        %293 = vector.broadcast %true_3 : i1 to vector<1x1xi1>
        %294 = vector.outerproduct %189, %189, %293 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
        %295 = arith.addi %142, %c1555822493_i32 : i32
      }
      %274 = arith.addi %false, %false : i1
      %c1762672859_i64 = arith.constant 1762672859 : i64
      %275 = vector.flat_transpose %190 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %collapsed_52 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<7x5x7xi16> into tensor<35x7xi16>
      %276 = index.maxs %39, %62
      %277 = math.atan2 %cst_5, %cst_5 : f32
      %278 = arith.maxf %cst_2, %cst_2 : f32
      %279 = arith.divui %c1339498953_i64, %c1339498953_i64 : i64
      memref.store %cst_1, %alloc_12[%c2, %c4, %c1] : memref<3x5x7xf16>
      scf.yield
    }
    %269 = affine.vector_load %206[%171, %154] : memref<3x3xi32>, vector<5xi32>
    affine.vector_store %92, %alloc_7[%c9, %127, %c13] : memref<7x5x7xi1>, vector<5xi1>
    vector.print %19 : vector<1xf32>
    vector.print %24 : vector<7xi32>
    vector.print %25 : vector<7xi1>
    vector.print %26 : vector<7xi32>
    vector.print %37 : vector<7xi32>
    vector.print %52 : vector<5xi1>
    vector.print %63 : vector<1xi32>
    vector.print %73 : vector<i16>
    vector.print %92 : vector<5xi1>
    vector.print %106 : vector<3x7xf32>
    vector.print %107 : vector<3x7xi1>
    vector.print %108 : vector<3x7xi32>
    vector.print %109 : vector<3x7xf32>
    vector.print %130 : vector<3x3xi1>
    vector.print %138 : vector<3x3xi32>
    vector.print %140 : vector<5x1xi64>
    vector.print %152 : vector<5xi1>
    vector.print %189 : vector<1xi1>
    vector.print %190 : vector<1xi32>
    vector.print %203 : vector<3x3xi64>
    vector.print %209 : vector<3x7xf32>
    vector.print %211 : vector<3x5x7xi32>
    vector.print %241 : vector<4xi32>
    vector.print %269 : vector<5xi32>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %true : i1
    vector.print %c1410414642_i32 : i32
    vector.print %c1339498953_i64 : i64
    vector.print %c1555822493_i32 : i32
    vector.print %cst_2 : f32
    vector.print %true_3 : i1
    vector.print %false : i1
    vector.print %cst_4 : f32
    vector.print %c1936655018_i32 : i32
    vector.print %c423853968_i32 : i32
    vector.print %c1012543730_i32 : i32
    vector.print %c1514_i16 : i16
    vector.print %cst_5 : f32
    vector.print %122 : f32
    vector.print %142 : i32
    vector.print %175 : i1
    vector.print %199 : i32
    vector.print %201 : i32
    vector.print %true_49 : i1
    return
  }
}
