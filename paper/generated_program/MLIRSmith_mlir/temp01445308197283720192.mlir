module {
  func.func private @func1(%arg0: f16, %arg1: index) -> index {
    %c212645413_i32 = arith.constant 212645413 : i32
    %c-18558_i16 = arith.constant -18558 : i16
    %c639860254_i64 = arith.constant 639860254 : i64
    %c1397839024_i32 = arith.constant 1397839024 : i32
    %c1850846997_i64 = arith.constant 1850846997 : i64
    %cst = arith.constant 3.686400e+04 : f16
    %cst_0 = arith.constant 6.233600e+04 : f16
    %cst_1 = arith.constant 4.348000e+03 : f16
    %c1178178208_i32 = arith.constant 1178178208 : i32
    %cst_2 = arith.constant 0x4CC5E1AD : f32
    %c2004814501_i32 = arith.constant 2004814501 : i32
    %cst_3 = arith.constant 9.704000e+03 : f16
    %true = arith.constant true
    %c1494751341_i64 = arith.constant 1494751341 : i64
    %c29427_i16 = arith.constant 29427 : i16
    %false = arith.constant false
    %0 = tensor.empty() : tensor<1xf32>
    %1 = tensor.empty() : tensor<1xf32>
    %2 = tensor.empty() : tensor<4xi32>
    %3 = tensor.empty() : tensor<1xf32>
    %4 = tensor.empty() : tensor<10x6xi16>
    %5 = tensor.empty() : tensor<4xf16>
    %6 = tensor.empty() : tensor<4xf16>
    %7 = tensor.empty() : tensor<10x6xf32>
    %8 = tensor.empty() : tensor<10x6xi16>
    %9 = tensor.empty() : tensor<1xf16>
    %10 = tensor.empty() : tensor<1xf32>
    %11 = tensor.empty() : tensor<10x6xi16>
    %12 = tensor.empty() : tensor<10x6xi32>
    %13 = tensor.empty() : tensor<10x6xi64>
    %14 = tensor.empty() : tensor<4xi16>
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
    %alloc = memref.alloc() : memref<10x6xf32>
    %alloc_4 = memref.alloc() : memref<10x6xf32>
    %alloc_5 = memref.alloc() : memref<1xf32>
    %alloc_6 = memref.alloc() : memref<4xi32>
    %alloc_7 = memref.alloc() : memref<4xf16>
    %alloc_8 = memref.alloc() : memref<1xi32>
    %alloc_9 = memref.alloc() : memref<1xi1>
    %alloc_10 = memref.alloc() : memref<4xi32>
    %alloc_11 = memref.alloc() : memref<1xi64>
    %alloc_12 = memref.alloc() : memref<4xi16>
    %alloc_13 = memref.alloc() : memref<10x6xi64>
    %alloc_14 = memref.alloc() : memref<10x6xi16>
    %alloc_15 = memref.alloc() : memref<1xf16>
    %alloc_16 = memref.alloc() : memref<10x6xi32>
    %alloc_17 = memref.alloc() : memref<4xf16>
    %alloc_18 = memref.alloc() : memref<1xi16>
    %16 = tensor.empty() : tensor<1xf32>
    %17 = linalg.copy ins(%3 : tensor<1xf32>) outs(%16 : tensor<1xf32>) -> tensor<1xf32>
    %18 = tensor.empty() : tensor<1xf32>
    %transposed = linalg.transpose ins(%0 : tensor<1xf32>) outs(%18 : tensor<1xf32>) permutation = [0] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_8 : memref<1xi32>) outs(%19 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %282 = vector.broadcast %c1494751341_i64 : i64 to vector<1xi64>
        %283 = vector.transpose %282, [0] : vector<1xi64> to vector<1xi64>
        %284 = index.ceildivu %c5, %c5
        %285 = vector.flat_transpose %282 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %286 = arith.xori %c1397839024_i32, %init : i32
        %287 = arith.minui %false, %false : i1
        %288 = vector.load %alloc_5[%c0] : memref<1xf32>, vector<4xf32>
        %289 = vector.broadcast %cst_2 : f32 to vector<6x1xf32>
        %290 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %dest_45, %accumulated_value_46 = vector.scan <minf>, %289, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<6x1xf32>, vector<1xf32>
        %291 = arith.maxf %cst_0, %cst_1 : f16
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %20 = scf.parallel (%arg2) = (%c11) to (%c6) step (%c4) init (%3) -> tensor<1xf32> {
      %282 = math.tan %0 : tensor<1xf32>
      %283 = index.add %c5, %c15
      %284 = math.tan %7 : tensor<10x6xf32>
      %285 = bufferization.to_tensor %alloc_7 : memref<4xf16>
      %286 = arith.addi %false, %false : i1
      %287 = math.absf %17 : tensor<1xf32>
      %288 = vector.broadcast %c9 : index to vector<4xindex>
      %289 = vector.broadcast %false : i1 to vector<4xi1>
      %290 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      vector.scatter %alloc_4[%c8, %c2] [%288], %289, %290 : memref<10x6xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %291 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %291, %alloc_9[%c11] : vector<i1>, memref<1xi1>
      %292 = index.casts %c11 : index to i32
      memref.alloca_scope  {
        %302 = vector.broadcast %c1494751341_i64 : i64 to vector<6xi64>
        %303 = vector.broadcast %c639860254_i64 : i64 to vector<6x6xi64>
        %304 = vector.outerproduct %302, %302, %303 {kind = #vector.kind<add>} : vector<6xi64>, vector<6xi64>
        %305 = tensor.empty() : tensor<1xf16>
        %306 = arith.andi %true, %true : i1
        %307 = arith.andi %true, %true : i1
        %308 = vector.transpose %291, [] : vector<i1> to vector<i1>
        %309 = arith.shrsi %false, %true : i1
        %310 = index.divs %c15, %c11
        %311 = bufferization.clone %alloc_13 : memref<10x6xi64> to memref<10x6xi64>
        %312 = bufferization.to_tensor %alloc_4 : memref<10x6xf32>
        %313 = vector.broadcast %c212645413_i32 : i32 to vector<1xi32>
        %314 = vector.multi_reduction <mul>, %313, %c1397839024_i32 [0] : vector<1xi32> to i32
        %315 = math.expm1 %10 : tensor<1xf32>
        %316 = bufferization.to_tensor %alloc : memref<10x6xf32>
        %false_45 = index.bool.constant false
        %317 = arith.maxf %cst_3, %cst_1 : f16
        %318 = bufferization.to_tensor %alloc_10 : memref<4xi32>
        %319 = math.ctpop %c1397839024_i32 : i32
        %320 = math.log1p %cst_2 : f32
        %321 = tensor.empty(%310) : tensor<?xf32>
        %322 = vector.matrix_multiply %313, %313 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %cst_46 = arith.constant 1.744000e+04 : f16
        %323 = vector.reduction <add>, %313 : vector<1xi32> into i32
        %324 = vector.matrix_multiply %313, %313 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %325 = math.cttz %11 : tensor<10x6xi16>
        %326 = vector.insert %c212645413_i32, %324 [0] : i32 into vector<1xi32>
        %327 = memref.atomic_rmw mulf %cst_3, %alloc_17[%c1] : (f16, memref<4xf16>) -> f16
        %328 = math.log10 %6 : tensor<4xf16>
        %329 = arith.minsi %false_45, %false_45 : i1
        %cst_47 = arith.constant 0x4CEE9F4D : f32
        %330 = arith.ceildivsi %c639860254_i64, %c1494751341_i64 : i64
        memref.store %c-18558_i16, %alloc_18[%c0] : memref<1xi16>
        %331 = index.castu %c9 : index to i32
        %332 = vector.broadcast %c12 : index to vector<1xindex>
        %333 = vector.broadcast %true : i1 to vector<1xi1>
        %334 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        vector.scatter %alloc[%c0, %c1] [%332], %333, %334 : memref<10x6xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      }
      memref.tensor_store %4, %alloc_14 : memref<10x6xi16>
      %293 = arith.xori %c1850846997_i64, %c1850846997_i64 : i64
      %294 = math.fpowi %5, %2 : tensor<4xf16>, tensor<4xi32>
      %295 = math.cttz %8 : tensor<10x6xi16>
      %296 = tensor.empty() : tensor<4x4x4xf32>
      %297 = tensor.empty() : tensor<4xf32>
      %298 = tensor.empty() : tensor<4x4xf32>
      %299 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%297, %296, %298 : tensor<4xf32>, tensor<4x4x4xf32>, tensor<4x4xf32>) outs(%296 : tensor<4x4x4xf32>) {
      ^bb0(%in: f32, %in_45: f32, %in_46: f32, %out: f32):
        %302 = math.expm1 %cst_3 : f16
        %303 = vector.broadcast %c639860254_i64 : i64 to vector<1xi64>
        %304 = vector.broadcast %c1494751341_i64 : i64 to vector<1xi64>
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %303, %304, %c1494751341_i64 : vector<1xi64>, vector<1xi64> into i64
        %inserted = tensor.insert %cst_1 into %9[%c0] : tensor<1xf16>
        %306 = bufferization.clone %alloc_10 : memref<4xi32> to memref<4xi32>
        %307 = math.sqrt %in : f32
        %308 = index.maxu %c3, %c3
        %309 = math.absf %16 : tensor<1xf32>
        %310 = index.ceildivs %c14, %c10
        %311 = index.ceildivs %c10, %c6
        %312 = vector.broadcast %in_46 : f32 to vector<1xf32>
        %313 = vector.broadcast %false : i1 to vector<1xi1>
        %314 = vector.broadcast %c212645413_i32 : i32 to vector<1xi32>
        %315 = vector.gather %transposed[%c7] [%314], %313, %312 : tensor<1xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %316 = vector.flat_transpose %303 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %c512595782_i32 = arith.constant 512595782 : i32
        %317 = arith.shrsi %c29427_i16, %c29427_i16 : i16
        %318 = vector.multi_reduction <xor>, %303, %c639860254_i64 [0] : vector<1xi64> to i64
        %319 = vector.bitcast %314 : vector<1xi32> to vector<1xf32>
        %320 = arith.ceildivsi %c1494751341_i64, %c639860254_i64 : i64
        %321 = math.expm1 %17 : tensor<1xf32>
        %322 = arith.addi %c-18558_i16, %c29427_i16 : i16
        %323 = math.exp %5 : tensor<4xf16>
        %cst_47 = arith.constant 1.724800e+04 : f16
        %324 = memref.realloc %alloc_5 : memref<1xf32> to memref<6xf32>
        %325 = affine.load %alloc_4[%c9, %c12] : memref<10x6xf32>
        %326 = math.log10 %6 : tensor<4xf16>
        %327 = vector.splat %cst_2 : vector<10x6xf32>
        %from_elements_48 = tensor.from_elements %c-18558_i16 : tensor<1xi16>
        %328 = arith.maxf %cst_3, %cst_1 : f16
        %329 = vector.transpose %315, [0] : vector<1xf32> to vector<1xf32>
        %330 = arith.minf %in_45, %in : f32
        %331 = math.log2 %1 : tensor<1xf32>
        %332 = index.sub %c0, %c0
        %333 = index.sub %c15, %c13
        %334 = math.floor %1 : tensor<1xf32>
        linalg.yield %in : f32
      } -> tensor<4x4x4xf32>
      %300 = math.tanh %cst_3 : f16
      %301 = tensor.empty() : tensor<1xf32>
      scf.reduce(%301)  : tensor<1xf32> {
      ^bb0(%arg3: tensor<1xf32>, %arg4: tensor<1xf32>):
        %302 = vector.broadcast %c29427_i16 : i16 to vector<1xi16>
        %303 = vector.broadcast %true : i1 to vector<1xi1>
        %304 = vector.broadcast %c1178178208_i32 : i32 to vector<1xi32>
        %305 = vector.gather %14[%c11] [%304], %303, %302 : tensor<4xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %306 = math.log2 %arg3 : tensor<1xf32>
        %307 = index.add %c0, %c9
        %expanded_45 = tensor.expand_shape %5 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %308 = memref.atomic_rmw muli %c2004814501_i32, %alloc_16[%c8, %c3] : (i32, memref<10x6xi32>) -> i32
        %309 = index.ceildivu %c11, %c4
        %310 = arith.addf %cst_3, %cst_3 : f16
        %311 = arith.subi %c639860254_i64, %c1850846997_i64 : i64
        %312 = tensor.empty() : tensor<1xf32>
        scf.reduce.return %312 : tensor<1xf32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_18[%c13] : memref<1xi16>, vector<1xi16>
    affine.vector_store %21, %alloc_18[%c9] : memref<1xi16>, vector<1xi16>
    %22 = tensor.empty() : tensor<1xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%16, %22 : tensor<1xf32>, tensor<1xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = index.divu %c14, %c0
    %26 = vector.broadcast %c212645413_i32 : i32 to vector<i32>
    vector.transfer_write %26, %alloc_10[%c10] : vector<i32>, memref<4xi32>
    %27 = affine.for %arg2 = 0 to 113 iter_args(%arg3 = %transposed) -> (tensor<1xf32>) {
      affine.yield %transposed : tensor<1xf32>
    }
    %28 = vector.create_mask %c12 : vector<4xi1>
    %29 = vector.multi_reduction <maxsi>, %28, %28 [] : vector<4xi1> to vector<4xi1>
    %true_19 = index.bool.constant true
    %30 = arith.xori %true_19, %false : i1
    %31 = tensor.empty() : tensor<4x4x4xf32>
    %alloc_20 = memref.alloc() : memref<4xf32>
    %32 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20 : memref<4xf32>) outs(%31 : tensor<4x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %282 = math.log2 %10 : tensor<1xf32>
      %283 = math.tanh %5 : tensor<4xf16>
      %284 = index.maxs %c12, %c14
      %285 = vector.broadcast %in : f32 to vector<4x4xf32>
      %286 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      %dest_45, %accumulated_value_46 = vector.scan <mul>, %285, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xf32>, vector<4xf32>
      %287 = scf.execute_region -> tensor<10x6xi32> {
        %312 = math.fpowi %cst_2, %c212645413_i32 : f32, i32
        %cast = tensor.cast %reduced : tensor<i32> to tensor<i32>
        %inserted = tensor.insert %cst_1 into %5[%c2] : tensor<4xf16>
        %313 = math.fpowi %23, %reduced : tensor<f32>, tensor<i32>
        %314 = arith.remf %cst_2, %out : f32
        %315 = arith.minui %c1178178208_i32, %c1178178208_i32 : i32
        %316 = arith.andi %c639860254_i64, %c639860254_i64 : i64
        bufferization.dealloc_tensor %3 : tensor<1xf32>
        %317 = arith.shrui %c29427_i16, %c29427_i16 : i16
        %318 = math.ceil %3 : tensor<1xf32>
        %319 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %28, %28, %true_19 : vector<4xi1>, vector<4xi1> into i1
        %from_elements_48 = tensor.from_elements %false, %false, %true_19, %true : tensor<4xi1>
        %320 = math.floor %3 : tensor<1xf32>
        %321 = vector.insertelement %c1178178208_i32, %26[] : vector<i32>
        %false_49 = index.bool.constant false
        %322 = vector.splat %in : vector<10x6xf32>
        scf.yield %12 : tensor<10x6xi32>
      }
      %288 = arith.subi %c29427_i16, %c-18558_i16 : i16
      %289 = arith.minui %c639860254_i64, %c1494751341_i64 : i64
      %290 = affine.apply affine_map<(d0, d1) -> (0)>(%c2, %c10)
      %291 = arith.ceildivsi %c639860254_i64, %c639860254_i64 : i64
      %292 = math.sqrt %23 : tensor<f32>
      %293 = index.ceildivs %c2, %c4
      %294 = vector.insert %false, %28 [1] : i1 into vector<4xi1>
      %295 = math.ctpop %reduced : tensor<i32>
      %296 = arith.remui %c1178178208_i32, %c1397839024_i32 : i32
      %297 = math.ipowi %c-18558_i16, %c29427_i16 : i16
      %298 = index.divu %c4, %c10
      %299 = index.ceildivs %c5, %c2
      %300 = math.ctpop %8 : tensor<10x6xi16>
      %301 = arith.ceildivsi %c1494751341_i64, %c639860254_i64 : i64
      bufferization.dealloc_tensor %19 : tensor<i32>
      %extracted = tensor.extract %11[%c7, %c4] : tensor<10x6xi16>
      %alloca_47 = memref.alloca() : memref<4xi64>
      %302 = scf.while (%arg2 = %cst_1) : (f16) -> f16 {
        %312 = math.exp %transposed : tensor<1xf32>
        %313 = math.powf %22, %0 : tensor<1xf32>
        %314 = math.log2 %22 : tensor<1xf32>
        %extracted_48 = tensor.extract %22[%c0] : tensor<1xf32>
        %315 = bufferization.clone %alloc_5 : memref<1xf32> to memref<1xf32>
        %316 = arith.maxf %cst_2, %extracted_48 : f32
        %317 = arith.maxui %c212645413_i32, %c1178178208_i32 : i32
        %318 = arith.ceildivsi %false, %true_19 : i1
        scf.condition(%false) %arg2 : f16
      } do {
      ^bb0(%arg2: f16):
        %312 = arith.subi %false, %false : i1
        %313 = vector.insert %c-18558_i16, %21 [0] : i16 into vector<1xi16>
        %extracted_48 = tensor.extract %4[%c3, %c2] : tensor<10x6xi16>
        %314 = arith.shrsi %extracted, %c-18558_i16 : i16
        %315 = arith.shli %true, %true_19 : i1
        %316 = arith.divui %c29427_i16, %extracted_48 : i16
        %317 = math.log10 %cst_1 : f16
        %318 = math.ipowi %c1178178208_i32, %c1397839024_i32 : i32
        memref.tensor_store %17, %alloc_5 : memref<1xf32>
        %319 = index.sizeof
        %320 = math.powf %17, %17 : tensor<1xf32>
        %321 = vector.insert %c-18558_i16, %21 [0] : i16 into vector<1xi16>
        %322 = math.powf %5, %5 : tensor<4xf16>
        %323 = arith.subi %c-18558_i16, %c-18558_i16 : i16
        %324 = arith.andi %c1178178208_i32, %c1178178208_i32 : i32
        %from_elements_49 = tensor.from_elements %arg2 : tensor<1xf16>
        scf.yield %cst_3 : f16
      }
      %303 = math.powf %9, %9 : tensor<1xf16>
      %304 = bufferization.clone %alloc_17 : memref<4xf16> to memref<4xf16>
      %305 = index.maxu %c5, %c8
      %306 = arith.remsi %c1850846997_i64, %c1494751341_i64 : i64
      %307 = math.cttz %extracted : i16
      %308 = vector.multi_reduction <mul>, %28, %true [0] : vector<4xi1> to i1
      %309 = vector.multi_reduction <maxui>, %21, %extracted [0] : vector<1xi16> to i16
      %310 = index.ceildivu %c13, %293
      %311 = index.ceildivu %c11, %c4
      linalg.yield %out : f32
    } -> tensor<4x4x4xf32>
    %33 = vector.broadcast %cst_2 : f32 to vector<f32>
    %34 = vector.transfer_write %33, %0[%c15] : vector<f32>, tensor<1xf32>
    %35 = arith.minf %cst_3, %cst_1 : f16
    %36 = index.divu %c1, %c2
    %37 = math.log %cst_1 : f16
    %38 = math.ceil %cst_3 : f16
    %39 = arith.minf %cst_1, %cst_1 : f16
    %40 = math.copysign %17, %17 : tensor<1xf32>
    %41 = arith.shrsi %false, %false : i1
    %42 = math.ipowi %c2004814501_i32, %c2004814501_i32 : i32
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
    %43 = math.tanh %cst_2 : f32
    %44 = vector.shuffle %33, %33 [0, 1] : vector<f32>, vector<f32>
    %45 = scf.while (%arg2 = %alloc_10) : (memref<4xi32>) -> memref<4xi32> {
      %282 = vector.load %alloc_18[%c0] : memref<1xi16>, vector<4xi16>
      %283 = math.round %cst_0 : f16
      %284 = index.castu %c9 : index to i32
      %285 = arith.maxf %cst_3, %cst_1 : f16
      %286 = math.log1p %9 : tensor<1xf16>
      %287 = math.copysign %0, %0 : tensor<1xf32>
      %288 = arith.remf %cst_1, %cst : f16
      %289 = math.floor %cst : f16
      scf.condition(%false) %arg2 : memref<4xi32>
    } do {
    ^bb0(%arg2: memref<4xi32>):
      memref.tensor_store %1, %alloc_5 : memref<1xf32>
      %282 = vector.broadcast %cst_2 : f32 to vector<f32>
      vector.transfer_write %282, %alloc_5[%c11] : vector<f32>, memref<1xf32>
      %283 = memref.alloca_scope  -> (i16) {
        %299 = vector.broadcast %c1494751341_i64 : i64 to vector<1xi64>
        %300 = vector.broadcast %false : i1 to vector<1xi1>
        %301 = vector.maskedload %alloc_11[%c0], %300, %299 : memref<1xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %302 = arith.ceildivsi %true_19, %true : i1
        %303 = tensor.empty() : tensor<4xi32>
        %304 = vector.multi_reduction <add>, %301, %c1494751341_i64 [0] : vector<1xi64> to i64
        %305 = vector.broadcast %c29427_i16 : i16 to vector<1x1xi16>
        %306 = vector.outerproduct %21, %21, %305 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
        %307 = math.floor %3 : tensor<1xf32>
        %308 = math.fma %transposed, %0, %3 : tensor<1xf32>
        %309 = affine.load %alloc_8[%c13] : memref<1xi32>
        %310 = arith.mulf %cst_3, %cst_3 : f16
        %311 = arith.shrsi %true, %true_19 : i1
        %312 = index.ceildivs %c15, %c7
        %313 = arith.mulf %cst_3, %cst_1 : f16
        %314 = vector.broadcast %304 : i64 to vector<1x1xi64>
        %315 = vector.outerproduct %299, %301, %314 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        %316 = math.powf %10, %1 : tensor<1xf32>
        %317 = math.fma %23, %23, %23 : tensor<f32>
        %318 = math.floor %cst_2 : f32
        %319 = arith.addi %c1494751341_i64, %c1850846997_i64 : i64
        %320 = index.floordivs %c8, %c11
        %321 = vector.create_mask %c13 : vector<4xi1>
        %322 = arith.maxf %cst_2, %cst_2 : f32
        %323 = arith.addf %cst_1, %cst_3 : f16
        memref.tensor_store %14, %alloc_12 : memref<4xi16>
        %324 = vector.transpose %21, [0] : vector<1xi16> to vector<1xi16>
        %325 = index.add %25, %c7
        %326 = math.powf %7, %7 : tensor<10x6xf32>
        %327 = arith.shrui %c639860254_i64, %304 : i64
        %cst_45 = arith.constant 1.000000e+00 : f16
        %cst_46 = arith.constant 0.000000e+00 : f16
        %328 = vector.transfer_read %9[%c4], %cst_46 : tensor<1xf16>, vector<f16>
        %329 = arith.mulf %cst_45, %cst_0 : f16
        %330 = vector.load %alloc_10[%c2] : memref<4xi32>, vector<1xi32>
        %331 = vector.reduction <add>, %300 : vector<1xi1> into i1
        %332 = index.castu %320 : index to i32
        %333 = arith.addi %c1397839024_i32, %c1178178208_i32 : i32
        memref.alloca_scope.return %c-18558_i16 : i16
      }
      %extracted = tensor.extract %5[%c0] : tensor<4xf16>
      %284 = index.sizeof
      %285 = math.round %22 : tensor<1xf32>
      %286 = math.log2 %9 : tensor<1xf16>
      %287 = arith.shrsi %false, %true_19 : i1
      %288 = vector.broadcast %c-18558_i16 : i16 to vector<4xi16>
      %289 = vector.broadcast %c212645413_i32 : i32 to vector<4xi32>
      %290 = vector.gather %14[%c2] [%289], %28, %288 : tensor<4xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %291 = index.castu %c6 : index to i32
      %292 = bufferization.to_tensor %alloc_12 : memref<4xi16>
      %293 = vector.broadcast %false : i1 to vector<1xi1>
      %294 = vector.broadcast %c212645413_i32 : i32 to vector<1xi32>
      %295 = vector.gather %14[%c6] [%294], %293, %21 : tensor<4xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      memref.alloca_scope  {
        %299 = index.casts %c2004814501_i32 : i32 to index
        %300 = vector.gather %alloc_8[%299] [%289], %28, %289 : memref<1xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %301 = arith.addi %c1850846997_i64, %c639860254_i64 : i64
        %302 = bufferization.to_tensor %alloc_4 : memref<10x6xf32>
        %303 = index.mul %c2, %c0
        %304 = arith.xori %true, %true_19 : i1
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %288, %290, %c-18558_i16 : vector<4xi16>, vector<4xi16> into i16
        %306 = arith.remf %cst_1, %extracted : f16
        %307 = arith.mulf %cst_1, %cst : f16
        %308 = vector.matrix_multiply %290, %288 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %309 = vector.insert %283, %290 [2] : i16 into vector<4xi16>
        %310 = vector.broadcast %c2004814501_i32 : i32 to vector<10x4xi32>
        %311 = vector.broadcast %c2004814501_i32 : i32 to vector<10xi32>
        %dest_45, %accumulated_value_46 = vector.scan <maxui>, %310, %311 {inclusive = true, reduction_dim = 1 : i64} : vector<10x4xi32>, vector<10xi32>
        %inserted = tensor.insert %extracted into %5[%c3] : tensor<4xf16>
        %312 = math.ceil %10 : tensor<1xf32>
        %313 = math.sqrt %6 : tensor<4xf16>
        %314 = math.copysign %17, %10 : tensor<1xf32>
        %315 = arith.andi %c212645413_i32, %c212645413_i32 : i32
        %316 = arith.shli %c2004814501_i32, %c1397839024_i32 : i32
        %317 = index.maxu %c15, %c15
        %318 = math.round %5 : tensor<4xf16>
        %inserted_47 = tensor.insert %cst_2 into %7[%c7, %c2] : tensor<10x6xf32>
        %319 = arith.minui %c-18558_i16, %c29427_i16 : i16
        %cast = tensor.cast %5 : tensor<4xf16> to tensor<?xf16>
        %320 = math.powf %0, %17 : tensor<1xf32>
        %321 = math.round %22 : tensor<1xf32>
        %collapsed_48 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
        %322 = vector.insertelement %c-18558_i16, %288[%299 : index] : vector<4xi16>
        %323 = math.log2 %24 : tensor<f32>
        memref.assume_alignment %alloc_13, 8 : memref<10x6xi64>
        %324 = affine.apply affine_map<(d0) -> (d0 * -64 - 32)>(%25)
        %325 = math.sqrt %24 : tensor<f32>
        %326 = vector.gather %12[%c15, %25] [%294], %293, %294 : tensor<10x6xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      }
      %296 = index.casts %c3 : index to i32
      %297 = arith.addf %cst_0, %cst : f16
      %298 = bufferization.clone %alloc_12 : memref<4xi16> to memref<4xi16>
      scf.yield %arg2 : memref<4xi32>
    }
    %46 = vector.matrix_multiply %28, %28 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %47 = math.log10 %cst_0 : f16
    %48 = vector.broadcast %c-18558_i16 : i16 to vector<1x1xi16>
    %dest, %accumulated_value = vector.scan <minui>, %48, %21 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xi16>, vector<1xi16>
    %49 = vector.broadcast %c9 : index to vector<4xindex>
    %50 = vector.broadcast %c2004814501_i32 : i32 to vector<4xi32>
    vector.scatter %alloc_8[%c0] [%49], %28, %50 : memref<1xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
    %51 = arith.divsi %c1178178208_i32, %c2004814501_i32 : i32
    %52 = math.ceil %cst_0 : f16
    %53 = index.add %36, %c5
    %54 = vector.broadcast %cst_0 : f16 to vector<4xf16>
    %55 = vector.broadcast %c1397839024_i32 : i32 to vector<4xi32>
    %56 = vector.gather %5[%c9] [%55], %28, %54 : tensor<4xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %57 = arith.divui %true, %true : i1
    %58 = arith.remf %cst_1, %cst_3 : f16
    %59 = math.sqrt %9 : tensor<1xf16>
    %60 = vector.transpose %33, [] : vector<f32> to vector<f32>
    %61 = arith.remf %cst_3, %cst_1 : f16
    %62 = arith.minui %c1850846997_i64, %c639860254_i64 : i64
    %63 = tensor.empty() : tensor<1xi64>
    %from_elements = tensor.from_elements %c1178178208_i32, %c1397839024_i32, %c212645413_i32, %c2004814501_i32 : tensor<4xi32>
    %true_21 = index.bool.constant true
    %64 = math.exp %10 : tensor<1xf32>
    %65 = vector.multi_reduction <minui>, %55, %c1397839024_i32 [0] : vector<4xi32> to i32
    %66 = vector.broadcast %false : i1 to vector<4x6x4xi1>
    %67 = vector.broadcast %true_19 : i1 to vector<6x4xi1>
    %dest_22, %accumulated_value_23 = vector.scan <mul>, %66, %67 {inclusive = true, reduction_dim = 0 : i64} : vector<4x6x4xi1>, vector<6x4xi1>
    %splat = tensor.splat %cst_0 : tensor<1xf16>
    %68 = index.divs %c6, %c1
    %69 = memref.atomic_rmw mins %c639860254_i64, %alloc_13[%c2, %c2] : (i64, memref<10x6xi64>) -> i64
    %70 = math.expm1 %0 : tensor<1xf32>
    %71 = index.sub %c12, %c11
    %72 = vector.bitcast %55 : vector<4xi32> to vector<4xi32>
    %73 = vector.matrix_multiply %55, %55 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
    %74 = tensor.empty() : tensor<1xi32>
    %75 = math.fpowi %10, %74 : tensor<1xf32>, tensor<1xi32>
    %76 = vector.transpose %72, [0] : vector<4xi32> to vector<4xi32>
    %77 = math.floor %3 : tensor<1xf32>
    %78 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 4, d1 + 2, d0 floordiv 4, d0 mod 4 - d1)>(%71, %36, %36)
    %79 = vector.maskedload %alloc_18[%c0], %46, %21 : memref<1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
    %80 = bufferization.clone %alloc_12 : memref<4xi16> to memref<4xi16>
    %81 = math.expm1 %22 : tensor<1xf32>
    %82 = arith.minui %true, %true_21 : i1
    %83 = math.cttz %true_19 : i1
    %84 = arith.maxui %c1397839024_i32, %c2004814501_i32 : i32
    affine.store %c29427_i16, %80[%c6] : memref<4xi16>
    %85 = math.powf %0, %3 : tensor<1xf32>
    %86 = math.round %23 : tensor<f32>
    %87 = arith.remf %cst, %cst_0 : f16
    %cst_24 = arith.constant 0x4DAD2A1C : f32
    %88 = bufferization.clone %alloc_9 : memref<1xi1> to memref<1xi1>
    %89 = arith.xori %true_21, %true_21 : i1
    %90 = bufferization.to_tensor %alloc_9 : memref<1xi1>
    %91 = vector.broadcast %cst_2 : f32 to vector<f32>
    %92 = vector.transfer_write %91, %0[%c1] : vector<f32>, tensor<1xf32>
    %93 = arith.shli %c639860254_i64, %c1850846997_i64 : i64
    %generated = tensor.generate %c11 {
    ^bb0(%arg2: index):
      %282 = arith.andi %c1850846997_i64, %c1494751341_i64 : i64
      %283 = index.castu %true_19 : i1 to index
      memref.assume_alignment %alloc_11, 16 : memref<1xi64>
      %284 = vector.insertelement %65, %26[] : vector<i32>
      tensor.yield %cst_1 : f16
    } : tensor<?xf16>
    %94 = scf.execute_region -> memref<4xi64> {
      memref.tensor_store %1, %alloc_5 : memref<1xf32>
      %282 = math.fpowi %17, %74 : tensor<1xf32>, tensor<1xi32>
      %283 = vector.matrix_multiply %55, %73 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<1xi32>) -> vector<4xi32>
      %c-8371_i16 = arith.constant -8371 : i16
      affine.store %c-18558_i16, %alloc_18[%c5] : memref<1xi16>
      %284 = index.sizeof
      %285 = arith.addf %cst_3, %cst : f16
      %collapsed_45 = tensor.collapse_shape %7 [[0, 1]] : tensor<10x6xf32> into tensor<60xf32>
      %286 = vector.load %alloc_8[%c0] : memref<1xi32>, vector<1xi32>
      %inserted = tensor.insert %65 into %19[] : tensor<i32>
      %287 = scf.execute_region -> memref<4xi1> {
        %292 = vector.multi_reduction <maxsi>, %79, %21 [] : vector<1xi16> to vector<1xi16>
        %293 = math.tan %18 : tensor<1xf32>
        %294 = index.ceildivu %c7, %c14
        %295 = math.ceil %23 : tensor<f32>
        %296 = arith.remf %cst_3, %cst : f16
        %297 = math.log1p %3 : tensor<1xf32>
        %298 = arith.divui %true_21, %true_21 : i1
        %299 = math.sqrt %22 : tensor<1xf32>
        %300 = arith.andi %c639860254_i64, %c1494751341_i64 : i64
        %301 = arith.minf %cst_0, %cst_0 : f16
        %alloc_48 = memref.alloc() : memref<4xi32>
        %302 = math.fpowi %5, %2 : tensor<4xf16>, tensor<4xi32>
        %false_49 = arith.constant false
        %303 = vector.reduction <maxsi>, %72 : vector<4xi32> into i32
        %304 = bufferization.clone %alloc_11 : memref<1xi64> to memref<1xi64>
        %305 = arith.cmpf ogt, %cst_1, %cst_0 : f16
        %alloc_50 = memref.alloc() : memref<4xi1>
        scf.yield %alloc_50 : memref<4xi1>
      }
      %288 = math.copysign %1, %10 : tensor<1xf32>
      %289 = bufferization.to_memref %14 : memref<4xi16>
      %from_elements_46 = tensor.from_elements %c639860254_i64, %c1850846997_i64, %c1850846997_i64, %c1850846997_i64 : tensor<4xi64>
      %290 = arith.muli %c1178178208_i32, %c1397839024_i32 : i32
      %291 = arith.shli %c639860254_i64, %c639860254_i64 : i64
      %alloc_47 = memref.alloc() : memref<4xi64>
      scf.yield %alloc_47 : memref<4xi64>
    }
    %95 = affine.load %alloc_17[%c4] : memref<4xf16>
    %96 = vector.broadcast %c1494751341_i64 : i64 to vector<1xi64>
    %97 = vector.gather %13[%25, %71] [%73], %46, %96 : tensor<10x6xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %98 = memref.load %alloc_11[%c0] : memref<1xi64>
    %99 = math.tan %1 : tensor<1xf32>
    %100 = arith.shrsi %c2004814501_i32, %65 : i32
    %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %101 = math.log1p %7 : tensor<10x6xf32>
    %102 = arith.minf %95, %cst_0 : f16
    %103 = bufferization.clone %alloc_10 : memref<4xi32> to memref<4xi32>
    %104 = arith.shli %true, %true_19 : i1
    %105 = tensor.empty() : tensor<1xf32>
    %106 = arith.divui %65, %c1397839024_i32 : i32
    %107 = arith.floordivsi %true_19, %true_19 : i1
    %108 = math.fpowi %10, %74 : tensor<1xf32>, tensor<1xi32>
    %generated_25 = tensor.generate %c4 {
    ^bb0(%arg2: index):
      %282 = math.cttz %11 : tensor<10x6xi16>
      %283 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      %284 = vector.fma %283, %283, %283 : vector<4xf32>
      %285 = math.ceil %7 : tensor<10x6xf32>
      %286 = arith.remf %cst_0, %cst_3 : f16
      tensor.yield %true_19 : i1
    } : tensor<?xi1>
    %109 = arith.remsi %c2004814501_i32, %c212645413_i32 : i32
    bufferization.dealloc_tensor %collapsed : tensor<60xi16>
    %110 = math.ceil %23 : tensor<f32>
    %111 = vector.shuffle %72, %55 [1, 4] : vector<4xi32>, vector<4xi32>
    %112 = vector.broadcast %cst_2 : f32 to vector<4xf32>
    %113 = vector.fma %112, %112, %112 : vector<4xf32>
    %114 = arith.minui %c-18558_i16, %c29427_i16 : i16
    %115 = bufferization.to_tensor %88 : memref<1xi1>
    %116 = index.mul %c5, %c14
    %117 = arith.andi %c1850846997_i64, %c1494751341_i64 : i64
    %118 = arith.minui %c-18558_i16, %c29427_i16 : i16
    scf.execute_region {
      %282 = arith.minui %true_21, %true : i1
      %283 = arith.shli %true_21, %true_21 : i1
      %284 = math.copysign %5, %6 : tensor<4xf16>
      %285 = tensor.empty() : tensor<f32>
      %mapped_45 = linalg.map ins(%23 : tensor<f32>) outs(%285 : tensor<f32>)
        (%in: f32) {
          %300 = math.ipowi %c1178178208_i32, %c2004814501_i32 : i32
          %301 = math.ceil %5 : tensor<4xf16>
          %302 = arith.mulf %cst_1, %95 : f16
          %collapsed_46 = tensor.collapse_shape %7 [[0, 1]] : tensor<10x6xf32> into tensor<60xf32>
          %303 = index.floordivs %c8, %c3
          %304 = math.ceil %7 : tensor<10x6xf32>
          %305 = index.castu %true_21 : i1 to index
          %306 = arith.floordivsi %c639860254_i64, %c639860254_i64 : i64
          %307 = math.log %6 : tensor<4xf16>
          %308 = index.castu %65 : i32 to index
          %309 = memref.load %103[%c1] : memref<4xi32>
          %310 = memref.atomic_rmw maxs %c1850846997_i64, %94[%c3] : (i64, memref<4xi64>) -> i64
          %true_47 = arith.constant true
          %311 = vector.transfer_read %88[%305], %true_47 : memref<1xi1>, vector<i1>
          %312 = math.ctpop %c639860254_i64 : i64
          %alloc_48 = memref.alloc() : memref<4xf16>
          %313 = math.tan %7 : tensor<10x6xf32>
          %314 = arith.andi %true_21, %true : i1
          %315 = math.ceil %18 : tensor<1xf32>
          %expanded_49 = tensor.expand_shape %1 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
          %316 = vector.multi_reduction <xor>, %72, %72 [] : vector<4xi32> to vector<4xi32>
          %317 = math.copysign %1, %0 : tensor<1xf32>
          %318 = vector.load %alloc_18[%c0] : memref<1xi16>, vector<1xi16>
          %319 = vector.multi_reduction <minsi>, %28, %true [0] : vector<4xi1> to i1
          %320 = math.expm1 %9 : tensor<1xf16>
          %321 = arith.maxf %cst_1, %cst_3 : f16
          %c963163588_i32 = arith.constant 963163588 : i32
          %322 = arith.minui %c1397839024_i32, %c212645413_i32 : i32
          %323 = math.roundeven %0 : tensor<1xf32>
          %c1369929655_i64 = arith.constant 1369929655 : i64
          %324 = tensor.empty() : tensor<4xf32>
          %325 = vector.broadcast %cst_2 : f32 to vector<1xf32>
          %326 = vector.gather %324[%c13] [%73], %46, %325 : tensor<4xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %327 = bufferization.clone %alloc_18 : memref<1xi16> to memref<1xi16>
          %328 = index.add %71, %c8
          %cst_50 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_50 : f32
        }
      %286 = memref.atomic_rmw minu %c1397839024_i32, %alloc_16[%c3, %c3] : (i32, memref<10x6xi32>) -> i32
      %287 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
      %288 = vector.outerproduct %56, %54, %287 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
      %289 = arith.xori %true_19, %false : i1
      %290 = math.floor %1 : tensor<1xf32>
      %291 = vector.broadcast %c1850846997_i64 : i64 to vector<1x1xi64>
      %292 = vector.outerproduct %96, %97, %291 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
      %293 = math.expm1 %18 : tensor<1xf32>
      %294 = bufferization.to_tensor %88 : memref<1xi1>
      %295 = math.tanh %1 : tensor<1xf32>
      %296 = arith.mulf %cst, %cst_1 : f16
      %297 = affine.apply affine_map<(d0) -> (d0 * -64 - 32)>(%c11)
      memref.tensor_store %13, %alloc_13 : memref<10x6xi64>
      %298 = vector.broadcast %c-18558_i16 : i16 to vector<1x1xi16>
      %299 = vector.outerproduct %79, %79, %298 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
      scf.yield
    }
    %119 = scf.execute_region -> tensor<4xf32> {
      %282 = arith.subi %c2004814501_i32, %65 : i32
      %283 = math.sqrt %splat : tensor<1xf16>
      %284 = vector.broadcast %65 : i32 to vector<4xi32>
      %285 = index.castu %c2 : index to i32
      %286 = math.fma %10, %16, %10 : tensor<1xf32>
      %287 = arith.subi %true_21, %true_19 : i1
      %288 = affine.if affine_set<(d0) : (d0 - (d0 - 16) >= 0, d0 >= 0, (d0 - 18) * 2 == 0)>(%c11) -> memref<4xi32> {
        %299 = index.sub %c4, %68
        %300 = math.ctpop %c212645413_i32 : i32
        %301 = math.fpowi %6, %2 : tensor<4xf16>, tensor<4xi32>
        %302 = vector.load %alloc_9[%c0] : memref<1xi1>, vector<4xi1>
        %303 = math.tanh %cst : f16
        %304 = index.sizeof
        %305 = arith.negf %cst_2 : f32
        %306 = affine.min affine_map<(d0, d1) -> (d0, (-d1) ceildiv 2)>(%304, %304)
        affine.yield %alloc_6 : memref<4xi32>
      } else {
        %299 = arith.subi %65, %c2004814501_i32 : i32
        %300 = arith.shrsi %c2004814501_i32, %c212645413_i32 : i32
        %301 = vector.broadcast %false : i1 to vector<10x4x6xi1>
        %302 = vector.broadcast %true_21 : i1 to vector<10x4xi1>
        %dest_45, %accumulated_value_46 = vector.scan <maxui>, %301, %302 {inclusive = true, reduction_dim = 2 : i64} : vector<10x4x6xi1>, vector<10x4xi1>
        %303 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        %304 = vector.fma %303, %303, %112 : vector<4xf32>
        %305 = arith.mulf %cst, %cst_0 : f16
        %306 = math.log1p %0 : tensor<1xf32>
        %307 = arith.remf %cst_0, %cst_3 : f16
        %308 = index.floordivs %68, %71
        affine.yield %103 : memref<4xi32>
      }
      %289 = vector.insert %cst_3, %54 [3] : f16 into vector<4xf16>
      %290 = math.ctpop %4 : tensor<10x6xi16>
      %291 = arith.shrsi %c-18558_i16, %c29427_i16 : i16
      %292 = arith.minui %c639860254_i64, %c1494751341_i64 : i64
      %293 = index.divs %c3, %c8
      %294 = vector.bitcast %96 : vector<1xi64> to vector<1xi64>
      %295 = math.expm1 %cst_2 : f32
      %296 = index.divu %78, %c7
      %297 = math.powf %7, %7 : tensor<10x6xf32>
      %298 = tensor.empty() : tensor<4xf32>
      scf.yield %298 : tensor<4xf32>
    }
    %120 = bufferization.clone %alloc_17 : memref<4xf16> to memref<4xf16>
    %121 = index.castu %true_19 : i1 to index
    %122 = arith.muli %true_21, %true : i1
    %123 = memref.realloc %alloc_6 : memref<4xi32> to memref<1xi32>
    %124 = arith.maxui %c639860254_i64, %c1850846997_i64 : i64
    %125 = math.sqrt %22 : tensor<1xf32>
    %126 = tensor.empty() : tensor<4x4x4xf32>
    %127 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%126 : tensor<4x4x4xf32>) {
    ^bb0(%out: f32):
      %282 = math.round %9 : tensor<1xf16>
      %283 = math.rsqrt %0 : tensor<1xf32>
      %284 = arith.remf %cst_0, %cst_1 : f16
      %285 = bufferization.to_tensor %alloc_7 : memref<4xf16>
      %286 = arith.remf %cst_0, %cst_1 : f16
      %c343166621_i64 = arith.constant 343166621 : i64
      %287 = index.casts %c212645413_i32 : i32 to index
      %288 = math.expm1 %cst_1 : f16
      %289 = math.ctpop %from_elements : tensor<4xi32>
      %expanded_45 = tensor.expand_shape %74 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
      %290 = arith.subi %c212645413_i32, %c1178178208_i32 : i32
      %291 = vector.reduction <minsi>, %21 : vector<1xi16> into i16
      %false_46 = index.bool.constant false
      %292 = arith.mulf %cst_2, %cst_2 : f32
      %extracted = tensor.extract %4[%c6, %c4] : tensor<10x6xi16>
      %293 = index.casts %c6 : index to i32
      %294 = index.ceildivs %c6, %53
      %295 = affine.if affine_set<(d0, d1, d2) : (d2 * 32 + 64 == 0, -d0 + 2 >= 0, d2 - 32 == 0, d0 - 64 == 0)>(%c8, %c3, %c5) -> memref<10x6xi1> {
        %310 = math.fpowi %3, %74 : tensor<1xf32>, tensor<1xi32>
        %311 = arith.remf %cst, %95 : f16
        %312 = math.fma %cst, %cst, %cst_0 : f16
        %313 = vector.splat %c13 : vector<1xindex>
        %314 = arith.minf %cst, %95 : f16
        %315 = vector.broadcast %c29427_i16 : i16 to vector<4xi16>
        %316 = vector.gather %8[%116, %c13] [%55], %28, %315 : tensor<10x6xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %317 = math.ctpop %11 : tensor<10x6xi16>
        affine.store %cst_3, %alloc_17[%c2] : memref<4xf16>
        %alloc_48 = memref.alloc() : memref<10x6xi1>
        affine.yield %alloc_48 : memref<10x6xi1>
      } else {
        %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %97, %96, %c639860254_i64 : vector<1xi64>, vector<1xi64> into i64
        %311 = math.log10 %expanded : tensor<1x1xf32>
        %rank = tensor.rank %18 : tensor<1xf32>
        %312 = vector.broadcast %c5 : index to vector<4xindex>
        vector.scatter %alloc_5[%c0] [%312], %28, %112 : memref<1xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %313 = arith.shrsi %c212645413_i32, %c1178178208_i32 : i32
        %314 = arith.minf %95, %cst : f16
        %315 = arith.shrsi %true, %false_46 : i1
        %316 = bufferization.clone %94 : memref<4xi64> to memref<4xi64>
        %alloc_48 = memref.alloc() : memref<10x6xi1>
        affine.yield %alloc_48 : memref<10x6xi1>
      }
      %296 = index.floordivs %71, %c3
      %297 = arith.addi %extracted, %c-18558_i16 : i16
      %298 = arith.addi %c639860254_i64, %c1494751341_i64 : i64
      %299 = arith.subi %extracted, %extracted : i16
      %300 = arith.andi %true, %false_46 : i1
      %301 = math.rsqrt %cst_1 : f16
      %302 = arith.minui %false_46, %true : i1
      %303 = arith.shli %c1178178208_i32, %c1397839024_i32 : i32
      %304 = math.log10 %cst_2 : f32
      %305 = memref.alloca_scope  -> (i64) {
        %310 = index.add %71, %c3
        %311 = math.ctpop %2 : tensor<4xi32>
        %312 = math.tan %7 : tensor<10x6xf32>
        %313 = math.sqrt %3 : tensor<1xf32>
        %314 = arith.remsi %c-18558_i16, %c-18558_i16 : i16
        %315 = arith.xori %c-18558_i16, %c29427_i16 : i16
        affine.store %out, %alloc_5[%c11] : memref<1xf32>
        %316 = vector.multi_reduction <add>, %28, %true_21 [0] : vector<4xi1> to i1
        %317 = bufferization.clone %alloc_4 : memref<10x6xf32> to memref<10x6xf32>
        %318 = index.divs %c15, %287
        %319 = tensor.empty(%71) : tensor<?xi16>
        %320 = arith.ceildivsi %65, %c1397839024_i32 : i32
        %321 = vector.broadcast %cst_1 : f16 to vector<4x6x6xf16>
        %322 = vector.broadcast %cst_3 : f16 to vector<4x6xf16>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %321, %322 {inclusive = true, reduction_dim = 1 : i64} : vector<4x6x6xf16>, vector<4x6xf16>
        %323 = vector.broadcast %95 : f16 to vector<10x1xf16>
        %324 = vector.broadcast %95 : f16 to vector<1xf16>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %323, %324 {inclusive = false, reduction_dim = 0 : i64} : vector<10x1xf16>, vector<1xf16>
        %325 = vector.transpose %55, [0] : vector<4xi32> to vector<4xi32>
        %cst_52 = arith.constant 6.460800e+04 : f16
        %326 = memref.atomic_rmw mulf %cst_2, %317[%c3, %c0] : (f32, memref<10x6xf32>) -> f32
        %inserted = tensor.insert %95 into %6[%c0] : tensor<4xf16>
        %alloca_53 = memref.alloca() : memref<4xi16>
        %true_54 = index.bool.constant true
        %327 = index.sub %c5, %c12
        %collapsed_55 = tensor.collapse_shape %expanded [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %328 = index.sizeof
        %329 = arith.xori %true_54, %316 : i1
        %330 = vector.shuffle %97, %96 [0] : vector<1xi64>, vector<1xi64>
        %331 = bufferization.clone %alloc_7 : memref<4xf16> to memref<4xf16>
        %332 = math.cttz %c-18558_i16 : i16
        %cst_56 = arith.constant 5.030400e+04 : f16
        %333 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
        %334 = vector.outerproduct %112, %112, %333 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
        %335 = math.log2 %1 : tensor<1xf32>
        %336 = math.round %5 : tensor<4xf16>
        %337 = bufferization.to_tensor %80 : memref<4xi16>
        memref.alloca_scope.return %c639860254_i64 : i64
      }
      %extracted_47 = tensor.extract %24[] : tensor<f32>
      %306 = vector.broadcast %extracted_47 : f32 to vector<4xf32>
      %307 = vector.fma %306, %113, %112 : vector<4xf32>
      %308 = math.copysign %expanded, %expanded : tensor<1x1xf32>
      %309 = math.tanh %6 : tensor<4xf16>
      linalg.yield %extracted_47 : f32
    } -> tensor<4x4x4xf32>
    %128 = arith.divui %c639860254_i64, %c1494751341_i64 : i64
    %129 = index.casts %c15 : index to i32
    %130 = vector.broadcast %c1494751341_i64 : i64 to vector<1x1xi64>
    %131 = vector.outerproduct %96, %97, %130 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
    %132 = math.tan %105 : tensor<1xf32>
    %133 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c12, %c15, %c8, %c0)
    %134 = math.copysign %23, %23 : tensor<f32>
    %135 = vector.broadcast %c212645413_i32 : i32 to vector<4x4xi32>
    %136 = vector.outerproduct %55, %72, %135 {kind = #vector.kind<maxui>} : vector<4xi32>, vector<4xi32>
    %137 = affine.apply affine_map<(d0, d1, d2) -> (-((d0 - d2) floordiv 2))>(%c0, %68, %c15)
    %138 = affine.load %103[%c5] : memref<4xi32>
    %139 = affine.for %arg2 = 0 to 87 iter_args(%arg3 = %105) -> (tensor<1xf32>) {
      affine.yield %10 : tensor<1xf32>
    }
    %140 = memref.atomic_rmw muli %c-18558_i16, %alloc_18[%c0] : (i16, memref<1xi16>) -> i16
    bufferization.dealloc_tensor %8 : tensor<10x6xi16>
    %141 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 16)>(%116, %53, %c9)
    %142 = scf.index_switch %c7 -> i1 
    case 1 {
      %282 = math.ceil %7 : tensor<10x6xf32>
      %283 = math.ctpop %13 : tensor<10x6xi64>
      %284 = vector.transpose %55, [0] : vector<4xi32> to vector<4xi32>
      bufferization.dealloc_tensor %90 : tensor<1xi1>
      %285 = index.casts %141 : index to i32
      %286 = arith.andi %c-18558_i16, %c29427_i16 : i16
      %287 = arith.divui %false, %true_21 : i1
      %alloca_45 = memref.alloca() : memref<1xi64>
      %288 = tensor.empty() : tensor<4x4x4xf32>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%119, %119 : tensor<4xf32>, tensor<4xf32>) outs(%288 : tensor<4x4x4xf32>) {
      ^bb0(%in: f32, %in_46: f32, %out: f32):
        %295 = tensor.empty() : tensor<10x6xi1>
        %296 = math.log10 %1 : tensor<1xf32>
        %297 = arith.andi %c639860254_i64, %c639860254_i64 : i64
        %298 = math.expm1 %10 : tensor<1xf32>
        %299 = arith.maxui %c212645413_i32, %c212645413_i32 : i32
        %300 = math.fma %119, %119, %119 : tensor<4xf32>
        %301 = arith.minui %c1397839024_i32, %c1178178208_i32 : i32
        %c0_i32 = arith.constant 0 : i32
        %302 = vector.transfer_read %12[%53, %71], %c0_i32 : tensor<10x6xi32>, vector<1xi32>
        %303 = math.copysign %7, %7 : tensor<10x6xf32>
        %304 = arith.addf %95, %cst : f16
        %305 = index.divs %c6, %c4
        %306 = arith.ceildivsi %false, %true : i1
        %307 = vector.load %94[%c1] : memref<4xi64>, vector<4xi64>
        %308 = math.sqrt %10 : tensor<1xf32>
        %309 = arith.shrsi %c1494751341_i64, %c1494751341_i64 : i64
        %310 = index.castu %false : i1 to index
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, -(d3 floordiv 32 + 2))>(%c2, %c3, %53, %c7)
        %312 = index.casts %141 : index to i32
        %313 = vector.broadcast %c639860254_i64 : i64 to vector<4x4xi64>
        %314 = vector.outerproduct %307, %307, %313 {kind = #vector.kind<and>} : vector<4xi64>, vector<4xi64>
        %315 = index.casts %53 : index to i32
        %316 = index.ceildivu %25, %133
        %317 = arith.shrui %c29427_i16, %c29427_i16 : i16
        %318 = arith.remf %in_46, %out : f32
        %319 = vector.insert %c1850846997_i64, %97 [0] : i64 into vector<1xi64>
        %320 = math.tan %9 : tensor<1xf16>
        %321 = index.maxs %310, %c15
        %322 = math.powf %23, %23 : tensor<f32>
        %323 = vector.bitcast %72 : vector<4xi32> to vector<4xi32>
        %324 = bufferization.clone %alloc_5 : memref<1xf32> to memref<1xf32>
        %alloca_47 = memref.alloca() : memref<10x6xi1>
        %325 = vector.load %alloc_7[%c1] : memref<4xf16>, vector<10x6xf16>
        %326 = vector.insert %c1850846997_i64, %97 [0] : i64 into vector<1xi64>
        linalg.yield %in : f32
      } -> tensor<4x4x4xf32>
      memref.tensor_store %22, %alloc_5 : memref<1xf32>
      %290 = arith.minui %65, %c1178178208_i32 : i32
      %291 = math.ctlz %c1494751341_i64 : i64
      %292 = scf.while (%arg2 = %alloc_18) : (memref<1xi16>) -> memref<1xi16> {
        %false_46 = index.bool.constant false
        %295 = bufferization.to_tensor %alloc_12 : memref<4xi16>
        %296 = vector.bitcast %72 : vector<4xi32> to vector<4xi32>
        %297 = arith.remf %cst, %95 : f16
        %splat_47 = tensor.splat %cst_2 : tensor<4xf32>
        %298 = math.ctlz %115 : tensor<1xi1>
        %alloc_48 = memref.alloc() : memref<i32>
        memref.tensor_store %19, %alloc_48 : memref<i32>
        %299 = bufferization.clone %alloc_15 : memref<1xf16> to memref<1xf16>
        scf.condition(%false) %arg2 : memref<1xi16>
      } do {
      ^bb0(%arg2: memref<1xi16>):
        %295 = memref.load %alloc_16[%c7, %c2] : memref<10x6xi32>
        %rank = tensor.rank %7 : tensor<10x6xf32>
        %296 = arith.negf %95 : f16
        %297 = index.divu %78, %c2
        %298 = index.ceildivs %c5, %25
        %299 = index.ceildivu %c14, %c2
        %300 = vector.transpose %112, [0] : vector<4xf32> to vector<4xf32>
        %301 = index.castu %c3 : index to i32
        %rank_46 = tensor.rank %7 : tensor<10x6xf32>
        %302 = vector.matrix_multiply %56, %56 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
        %303 = vector.extract %28[3] : vector<4xi1>
        %304 = vector.multi_reduction <or>, %97, %c1850846997_i64 [0] : vector<1xi64> to i64
        %305 = arith.minui %304, %c639860254_i64 : i64
        %306 = vector.create_mask %137 : vector<1xi1>
        %307 = vector.insert %c-18558_i16, %21 [0] : i16 into vector<1xi16>
        %308 = index.casts %304 : i64 to index
        scf.yield %alloc_18 : memref<1xi16>
      }
      %293 = vector.multi_reduction <minsi>, %21, %21 [] : vector<1xi16> to vector<1xi16>
      %294 = arith.shrui %true_21, %true_19 : i1
      bufferization.dealloc_tensor %6 : tensor<4xf16>
      scf.yield %true_21 : i1
    }
    case 2 {
      %282 = vector.bitcast %73 : vector<1xi32> to vector<1xi32>
      affine.for %arg2 = 0 to 34 {
      }
      %283 = arith.addi %c212645413_i32, %65 : i32
      %284 = arith.maxf %cst_1, %cst_1 : f16
      %285 = index.divs %c12, %c14
      %286 = tensor.empty() : tensor<1xf16>
      %mapped_45 = linalg.map ins(%alloc_15 : memref<1xf16>) outs(%286 : tensor<1xf16>)
        (%in: f16) {
          %295 = arith.divui %c2004814501_i32, %138 : i32
          %296 = vector.shuffle %33, %33 [0, 1] : vector<f32>, vector<f32>
          %297 = vector.insert %cst_2, %113 [0] : f32 into vector<4xf32>
          %298 = math.ctpop %c29427_i16 : i16
          %299 = vector.broadcast %c639860254_i64 : i64 to vector<i64>
          vector.transfer_write %299, %94[%c2] : vector<i64>, memref<4xi64>
          %300 = math.tan %23 : tensor<f32>
          %301 = math.round %3 : tensor<1xf32>
          %302 = math.log10 %splat : tensor<1xf16>
          %303 = affine.load %alloc_13[%c6, %c6] : memref<10x6xi64>
          %304 = memref.atomic_rmw minf %cst_2, %alloc_4[%c0, %c4] : (f32, memref<10x6xf32>) -> f32
          %305 = arith.ceildivsi %true_19, %true_21 : i1
          %c372728270_i32 = arith.constant 372728270 : i32
          %306 = memref.atomic_rmw muli %c1494751341_i64, %alloc_11[%c0] : (i64, memref<1xi64>) -> i64
          %307 = math.tan %5 : tensor<4xf16>
          %308 = vector.load %alloc_7[%c3] : memref<4xf16>, vector<4xf16>
          %309 = arith.andi %138, %65 : i32
          %310 = arith.shrsi %c2004814501_i32, %65 : i32
          %311 = math.fma %9, %splat, %9 : tensor<1xf16>
          %312 = affine.load %alloc_6[%c14] : memref<4xi32>
          %313 = vector.broadcast %false : i1 to vector<4x4xi1>
          %dest_48, %accumulated_value_49 = vector.scan <xor>, %313, %28 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi1>, vector<4xi1>
          %314 = vector.multi_reduction <and>, %46, %true [0] : vector<1xi1> to i1
          %cst_50 = arith.constant 1.000000e+00 : f32
          %315 = vector.transfer_read %18[%c12], %cst_50 : tensor<1xf32>, vector<f32>
          %316 = memref.load %103[%c0] : memref<4xi32>
          %317 = index.add %c0, %121
          %collapsed_51 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xi64> into tensor<60xi64>
          %318 = math.tanh %transposed : tensor<1xf32>
          %319 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 - d3) * 2, d1 mod 4)>(%c2, %c10, %25, %137)
          %320 = vector.broadcast %cst_0 : f16 to vector<10x6xf16>
          %321 = vector.broadcast %true : i1 to vector<10x6xi1>
          %322 = vector.broadcast %c2004814501_i32 : i32 to vector<10x6xi32>
          %323 = vector.gather %alloc_15[%53] [%322], %321, %320 : memref<1xf16>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xf16> into vector<10x6xf16>
          %324 = arith.minui %314, %314 : i1
          %325 = math.powf %24, %24 : tensor<f32>
          %326 = vector.broadcast %c1178178208_i32 : i32 to vector<i32>
          %327 = vector.transfer_write %326, %74[%c14] : vector<i32>, tensor<1xi32>
          %328 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
          %cst_52 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_52 : f16
        }
      %287 = arith.mulf %cst_1, %cst : f16
      %288 = affine.load %120[%c8] : memref<4xf16>
      %collapsed_46 = tensor.collapse_shape %expanded [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
      %289 = math.log2 %6 : tensor<4xf16>
      %alloca_47 = memref.alloca() : memref<4xi1>
      %290 = vector.transpose %72, [0] : vector<4xi32> to vector<4xi32>
      %291 = index.divs %137, %68
      %292 = math.fma %0, %10, %18 : tensor<1xf32>
      %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %55, %72, %c1178178208_i32 : vector<4xi32>, vector<4xi32> into i32
      %294 = affine.if affine_set<(d0) : (d0 * 4 - (d0 * 4 + 16) == 0)>(%c9) -> f16 {
        %295 = math.absf %17 : tensor<1xf32>
        %296 = arith.addi %false, %true_19 : i1
        %297 = math.ctpop %14 : tensor<4xi16>
        %298 = arith.ceildivsi %138, %c2004814501_i32 : i32
        %299 = vector.insertelement %true, %28[%291 : index] : vector<4xi1>
        %300 = math.fpowi %286, %74 : tensor<1xf16>, tensor<1xi32>
        %301 = arith.maxf %cst_0, %cst_3 : f16
        %302 = arith.shli %c2004814501_i32, %65 : i32
        affine.yield %cst : f16
      } else {
        %295 = math.powf %transposed, %3 : tensor<1xf32>
        %296 = vector.insertelement %c639860254_i64, %96[%71 : index] : vector<1xi64>
        %297 = arith.subi %false, %true_21 : i1
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %73, %73, %c212645413_i32 : vector<1xi32>, vector<1xi32> into i32
        %299 = math.tan %16 : tensor<1xf32>
        %300 = index.mul %133, %36
        %301 = vector.insertelement %c2004814501_i32, %55[%c7 : index] : vector<4xi32>
        %302 = math.atan %10 : tensor<1xf32>
        affine.yield %cst_1 : f16
      }
      scf.yield %true : i1
    }
    case 3 {
      %282 = math.atan %95 : f16
      %283 = arith.ceildivsi %c2004814501_i32, %c2004814501_i32 : i32
      %true_45 = index.bool.constant true
      %284 = arith.divui %false, %true_19 : i1
      %285 = tensor.empty() : tensor<10x6xi16>
      %mapped_46 = linalg.map ins(%8 : tensor<10x6xi16>) outs(%285 : tensor<10x6xi16>)
        (%in: i16) {
          %298 = math.powf %7, %7 : tensor<10x6xf32>
          %c619508564_i64 = arith.constant 619508564 : i64
          %299 = math.ceil %10 : tensor<1xf32>
          %300 = arith.minsi %c1850846997_i64, %c1494751341_i64 : i64
          %301 = math.exp %24 : tensor<f32>
          %302 = arith.floordivsi %false, %true : i1
          %303 = math.ipowi %c29427_i16, %c-18558_i16 : i16
          %304 = vector.broadcast %cst_2 : f32 to vector<4x1xf32>
          %305 = vector.broadcast %cst_2 : f32 to vector<1xf32>
          %dest_49, %accumulated_value_50 = vector.scan <minf>, %304, %305 {inclusive = false, reduction_dim = 0 : i64} : vector<4x1xf32>, vector<1xf32>
          vector.print %91 : vector<f32>
          %306 = index.mul %c13, %25
          %307 = vector.broadcast %c212645413_i32 : i32 to vector<4x4xi32>
          %308 = vector.outerproduct %55, %55, %307 {kind = #vector.kind<maxui>} : vector<4xi32>, vector<4xi32>
          %309 = arith.cmpi sge, %c1397839024_i32, %c1397839024_i32 : i32
          %310 = arith.muli %138, %65 : i32
          %311 = vector.broadcast %in : i16 to vector<1x1xi16>
          %312 = vector.outerproduct %21, %21, %311 {kind = #vector.kind<mul>} : vector<1xi16>, vector<1xi16>
          %313 = arith.remf %cst, %95 : f16
          %314 = arith.xori %c29427_i16, %in : i16
          %315 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %28, %28, %true_45 : vector<4xi1>, vector<4xi1> into i1
          %c20060127_i64 = arith.constant 20060127 : i64
          %316 = arith.remf %95, %cst_3 : f16
          %317 = vector.flat_transpose %21 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
          %318 = math.log1p %10 : tensor<1xf32>
          %319 = index.divs %c10, %c4
          %320 = math.powf %119, %119 : tensor<4xf32>
          %321 = math.fpowi %6, %2 : tensor<4xf16>, tensor<4xi32>
          %322 = index.ceildivs %68, %25
          %323 = math.log %cst_1 : f16
          %extracted = tensor.extract %115[%c0] : tensor<1xi1>
          %324 = index.maxs %c9, %116
          %325 = arith.shli %c1397839024_i32, %c1178178208_i32 : i32
          %326 = index.divu %137, %68
          %327 = arith.remf %95, %cst_1 : f16
          %328 = arith.xori %c1397839024_i32, %c2004814501_i32 : i32
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %286 = arith.addf %cst_1, %95 : f16
      %287 = memref.realloc %alloc_9 : memref<1xi1> to memref<10xi1>
      %288 = math.fpowi %9, %74 : tensor<1xf16>, tensor<1xi32>
      %289 = math.tan %cst_0 : f16
      %290 = vector.broadcast %c1178178208_i32 : i32 to vector<4x4xi32>
      %291 = vector.outerproduct %72, %55, %290 {kind = #vector.kind<minsi>} : vector<4xi32>, vector<4xi32>
      %292 = vector.transpose %54, [0] : vector<4xf16> to vector<4xf16>
      %293 = math.sqrt %cst : f16
      %294 = arith.maxf %cst, %cst_0 : f16
      %295 = vector.insertelement %cst_2, %112[%71 : index] : vector<4xf32>
      %296 = vector.broadcast %cst_2 : f32 to vector<4x6xf32>
      %dest_47, %accumulated_value_48 = vector.scan <add>, %296, %112 {inclusive = false, reduction_dim = 1 : i64} : vector<4x6xf32>, vector<4xf32>
      %297 = vector.extract_strided_slice %21 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      scf.yield %false : i1
    }
    default {
      %282 = math.exp %7 : tensor<10x6xf32>
      %283 = math.ceil %1 : tensor<1xf32>
      %284 = vector.load %88[%c0] : memref<1xi1>, vector<1xi1>
      %285 = arith.maxf %cst_1, %cst_3 : f16
      %286 = index.castu %65 : i32 to index
      %287 = tensor.empty() : tensor<1xf32>
      %mapped_45 = linalg.map ins(%18, %transposed, %17 : tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) outs(%287 : tensor<1xf32>)
        (%in: f32, %in_48: f32, %in_49: f32) {
          %296 = arith.remf %in, %cst_2 : f32
          %cst_50 = arith.constant 1.000000e+00 : f32
          %cst_51 = arith.constant 0.000000e+00 : f32
          %297 = vector.transfer_read %0[%137], %cst_51 : tensor<1xf32>, vector<f32>
          %298 = math.fpowi %in, %c2004814501_i32 : f32, i32
          %299 = math.absf %cst_0 : f16
          %collapsed_52 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
          %300 = math.absf %7 : tensor<10x6xf32>
          %301 = vector.bitcast %112 : vector<4xf32> to vector<4xf32>
          %302 = arith.minf %cst_1, %cst_0 : f16
          %303 = arith.minui %c1494751341_i64, %c639860254_i64 : i64
          %304 = math.absf %0 : tensor<1xf32>
          %305 = vector.load %94[%c0] : memref<4xi64>, vector<10x6xi64>
          %306 = math.fma %10, %1, %18 : tensor<1xf32>
          %307 = index.divs %c15, %116
          %308 = math.log2 %119 : tensor<4xf32>
          %309 = vector.load %alloc_9[%c0] : memref<1xi1>, vector<1xi1>
          %310 = arith.addi %65, %c2004814501_i32 : i32
          %311 = index.add %c5, %c7
          %312 = math.absf %0 : tensor<1xf32>
          %313 = math.fpowi %cst_1, %65 : f16, i32
          %314 = vector.create_mask %c0, %311 : vector<10x6xi1>
          %315 = index.sizeof
          %316 = arith.xori %c2004814501_i32, %c212645413_i32 : i32
          memref.tensor_store %18, %alloc_5 : memref<1xf32>
          affine.store %cst_3, %alloc_15[%c7] : memref<1xf16>
          %317 = math.powf %6, %6 : tensor<4xf16>
          %318 = vector.insertelement %c1397839024_i32, %72[%78 : index] : vector<4xi32>
          %319 = math.ceil %1 : tensor<1xf32>
          %320 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
          %321 = vector.outerproduct %56, %54, %320 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
          %322 = arith.xori %true_21, %true : i1
          %323 = math.ctlz %12 : tensor<10x6xi32>
          vector.print %91 : vector<f32>
          %324 = arith.mulf %cst_1, %cst_1 : f16
          %cst_53 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_53 : f32
        }
      %288 = math.ctlz %true_21 : i1
      %289 = vector.load %alloc_10[%c2] : memref<4xi32>, vector<1xi32>
      %290 = memref.atomic_rmw maxf %cst_2, %alloc[%c6, %c4] : (f32, memref<10x6xf32>) -> f32
      %alloca_46 = memref.alloca() : memref<4xi1>
      %generated_47 = tensor.generate %c8 {
      ^bb0(%arg2: index):
        %296 = math.exp %expanded : tensor<1x1xf32>
        %297 = vector.create_mask %c3, %c7 : vector<10x6xi1>
        %298 = index.casts %c15 : index to i32
        %299 = math.fpowi %10, %74 : tensor<1xf32>, tensor<1xi32>
        tensor.yield %cst_2 : f32
      } : tensor<?xf32>
      %291 = memref.alloca_scope  -> (memref<10x6xi16>) {
        %296 = math.exp %cst : f16
        %297 = vector.create_mask %c6, %133 : vector<10x6xi1>
        %298 = math.ctpop %4 : tensor<10x6xi16>
        %false_48 = index.bool.constant false
        %299 = index.sizeof
        %300 = arith.shrsi %138, %c1397839024_i32 : i32
        %301 = math.ceil %22 : tensor<1xf32>
        vector.print %79 : vector<1xi16>
        %302 = math.sqrt %7 : tensor<10x6xf32>
        %303 = math.exp %7 : tensor<10x6xf32>
        %alloc_49 = memref.alloc() : memref<6x10xi16>
        %304 = tensor.empty() : tensor<10x10xi16>
        %305 = linalg.matmul ins(%8, %alloc_49 : tensor<10x6xi16>, memref<6x10xi16>) outs(%304 : tensor<10x10xi16>) -> tensor<10x10xi16>
        %306 = arith.mulf %cst_1, %cst_0 : f16
        %307 = arith.minsi %c1397839024_i32, %c2004814501_i32 : i32
        %308 = arith.subi %c212645413_i32, %138 : i32
        %309 = vector.transpose %97, [0] : vector<1xi64> to vector<1xi64>
        %310 = math.log %23 : tensor<f32>
        %311 = vector.multi_reduction <add>, %55, %55 [] : vector<4xi32> to vector<4xi32>
        %rank = tensor.rank %expanded : tensor<1x1xf32>
        %312 = index.divu %137, %c15
        %313 = vector.matrix_multiply %284, %46 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        affine.store %cst_2, %alloc[%c11, %c7] : memref<10x6xf32>
        %314 = bufferization.clone %103 : memref<4xi32> to memref<4xi32>
        %315 = index.divs %c0, %c14
        %316 = bufferization.clone %94 : memref<4xi64> to memref<4xi64>
        %317 = math.sqrt %22 : tensor<1xf32>
        %318 = math.ceil %105 : tensor<1xf32>
        %319 = arith.maxf %95, %cst_3 : f16
        %320 = math.log1p %transposed : tensor<1xf32>
        %321 = index.divs %c15, %312
        %322 = vector.flat_transpose %289 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %323 = math.ipowi %11, %11 : tensor<10x6xi16>
        %324 = math.expm1 %splat : tensor<1xf16>
        memref.alloca_scope.return %alloc_14 : memref<10x6xi16>
      }
      %292 = math.ceil %6 : tensor<4xf16>
      %293 = index.divu %c7, %c0
      %294 = math.log10 %24 : tensor<f32>
      %295 = arith.minui %138, %c2004814501_i32 : i32
      scf.yield %false : i1
    }
    %alloc_26 = memref.alloc() : memref<1xf32>
    %143 = affine.min affine_map<(d0) -> ((d0 * 32) mod 128, -34, d0 floordiv 64, d0 * 32)>(%c14)
    %144 = affine.load %alloc_16[%c3, %c4] : memref<10x6xi32>
    %145 = arith.maxui %c639860254_i64, %c1850846997_i64 : i64
    %146 = index.divu %141, %c0
    %147 = math.ceil %0 : tensor<1xf32>
    %148 = math.fma %splat, %splat, %9 : tensor<1xf16>
    %149 = affine.if affine_set<(d0, d1, d2, d3) : (d1 + d3 * 32 >= 0, -(d2 floordiv 128) >= 0, d2 floordiv 128 - d1 >= 0, d1 == 0)>(%c12, %c15, %c14, %c9) -> f16 {
      %282 = math.fpowi %9, %74 : tensor<1xf16>, tensor<1xi32>
      %283 = arith.ceildivsi %true, %false : i1
      %284 = vector.create_mask %c8 : vector<4xi1>
      %285 = vector.load %alloc_8[%c0] : memref<1xi32>, vector<4xi32>
      %286 = index.ceildivu %143, %c15
      %287 = vector.matrix_multiply %79, %79 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %288 = math.expm1 %cst : f16
      %289 = math.ceil %10 : tensor<1xf32>
      affine.yield %cst : f16
    } else {
      %282 = bufferization.clone %alloc : memref<10x6xf32> to memref<10x6xf32>
      %283 = math.fpowi %10, %74 : tensor<1xf32>, tensor<1xi32>
      %extracted = tensor.extract %6[%c0] : tensor<4xf16>
      %284 = vector.insert %true_19, %28 [0] : i1 into vector<4xi1>
      %285 = arith.mulf %95, %95 : f16
      %alloc_45 = memref.alloc() : memref<10x6xf32>
      %286 = vector.transpose %97, [0] : vector<1xi64> to vector<1xi64>
      %287 = index.add %c2, %c15
      affine.yield %cst_0 : f16
    }
    %150 = arith.floordivsi %65, %c1178178208_i32 : i32
    %151 = vector.broadcast %c212645413_i32 : i32 to vector<4x4xi32>
    %152 = vector.outerproduct %55, %72, %151 {kind = #vector.kind<and>} : vector<4xi32>, vector<4xi32>
    %153 = math.fpowi %3, %74 : tensor<1xf32>, tensor<1xi32>
    %154 = index.maxs %36, %c10
    %155 = math.sqrt %10 : tensor<1xf32>
    %true_27 = index.bool.constant true
    %156 = math.expm1 %10 : tensor<1xf32>
    %157 = bufferization.to_tensor %alloc_7 : memref<4xf16>
    %158 = arith.minui %65, %c1397839024_i32 : i32
    %159 = tensor.empty() : tensor<4x4x4xf32>
    %160 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%159 : tensor<4x4x4xf32>) outs(%159 : tensor<4x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %282 = math.round %7 : tensor<10x6xf32>
      %283 = math.ctpop %13 : tensor<10x6xi64>
      %284 = arith.minf %cst_3, %cst : f16
      %false_45 = arith.constant false
      %285 = vector.transfer_read %alloc_9[%c4], %false_45 : memref<1xi1>, vector<i1>
      %286 = bufferization.clone %alloc_14 : memref<10x6xi16> to memref<10x6xi16>
      %287 = arith.maxf %cst_0, %cst_3 : f16
      %288 = math.fpowi %cst_1, %65 : f16, i32
      %289 = bufferization.clone %alloc_14 : memref<10x6xi16> to memref<10x6xi16>
      %290 = math.cttz %true_19 : i1
      %291 = index.floordivs %c9, %c0
      %292 = affine.apply affine_map<(d0) -> (d0 * -64 - 32)>(%c2)
      %293 = vector.transpose %72, [0] : vector<4xi32> to vector<4xi32>
      %294 = arith.divui %144, %138 : i32
      %295 = arith.divui %c29427_i16, %c-18558_i16 : i16
      %296 = vector.broadcast %false_45 : i1 to vector<4x4xi1>
      %297 = vector.outerproduct %28, %28, %296 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
      %298 = arith.cmpf oge, %cst_0, %95 : f16
      %299 = arith.remui %c1397839024_i32, %c1397839024_i32 : i32
      %300 = vector.transpose %46, [0] : vector<1xi1> to vector<1xi1>
      %301 = math.ceil %16 : tensor<1xf32>
      %302 = math.cttz %15 : tensor<4xi64>
      %303 = vector.gather %119[%c15] [%55], %28, %113 : tensor<4xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %generated_46 = tensor.generate %c10 {
      ^bb0(%arg2: index):
        %311 = math.round %16 : tensor<1xf32>
        %false_49 = index.bool.constant false
        %312 = math.floor %1 : tensor<1xf32>
        %313 = arith.remf %cst, %cst_0 : f16
        tensor.yield %138 : i32
      } : tensor<?xi32>
      %304 = index.add %36, %c8
      affine.store %c1397839024_i32, %alloc_6[%c8] : memref<4xi32>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_47 = arith.constant 0 : i16
      %305 = vector.transfer_read %alloc_12[%c12], %c0_i16_47 : memref<4xi16>, vector<i16>
      %306 = math.powf %1, %0 : tensor<1xf32>
      %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %56, %56, %cst : vector<4xf16>, vector<4xf16> into f16
      %collapsed_48 = tensor.collapse_shape %11 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
      vector.print %46 : vector<1xi1>
      %308 = math.log2 %5 : tensor<4xf16>
      %309 = vector.insertelement %out, %91[] : vector<f32>
      %310 = arith.addi %c2004814501_i32, %c212645413_i32 : i32
      linalg.yield %in : f32
    } -> tensor<4x4x4xf32>
    %alloc_28 = memref.alloc() : memref<f32>
    memref.tensor_store %24, %alloc_28 : memref<f32>
    %161 = arith.maxui %65, %65 : i32
    %162 = vector.transpose %28, [0] : vector<4xi1> to vector<4xi1>
    %163 = affine.min affine_map<(d0, d1, d2) -> ((d1 - (d2 - d1)) mod 16, (d1 - d2 + 8) ceildiv 8, -d2, -d2)>(%121, %c13, %53)
    %164 = arith.andi %true_21, %true : i1
    %165 = math.powf %9, %9 : tensor<1xf16>
    %166 = vector.create_mask %c8 : vector<4xi1>
    %167 = index.add %c5, %141
    %168 = index.add %25, %146
    %169 = vector.insert %cst_2, %113 [0] : f32 into vector<4xf32>
    %170 = arith.mulf %cst, %cst_1 : f16
    %171 = vector.transpose %113, [0] : vector<4xf32> to vector<4xf32>
    %generated_29 = tensor.generate %141 {
    ^bb0(%arg2: index):
      %282 = arith.remui %144, %138 : i32
      %283 = vector.extract %113[2] : vector<4xf32>
      %284 = memref.alloca_scope  -> (memref<4xf32>) {
        %286 = arith.maxf %cst_3, %cst : f16
        %287 = math.expm1 %cst : f16
        %from_elements_45 = tensor.from_elements %c1494751341_i64, %c1850846997_i64, %c639860254_i64, %c1494751341_i64, %c1850846997_i64, %c1494751341_i64, %c1494751341_i64, %c639860254_i64, %c639860254_i64, %c1494751341_i64, %c1850846997_i64, %c1494751341_i64, %c1494751341_i64, %c639860254_i64, %c1850846997_i64, %c1494751341_i64, %c1494751341_i64, %c639860254_i64, %c1494751341_i64, %c639860254_i64, %c1850846997_i64, %c639860254_i64, %c1494751341_i64, %c639860254_i64, %c1850846997_i64, %c1494751341_i64, %c639860254_i64, %c1850846997_i64, %c639860254_i64, %c1494751341_i64, %c1494751341_i64, %c1850846997_i64, %c1850846997_i64, %c1494751341_i64, %c639860254_i64, %c639860254_i64, %c1850846997_i64, %c639860254_i64, %c1850846997_i64, %c1494751341_i64, %c1850846997_i64, %c639860254_i64, %c1494751341_i64, %c1850846997_i64, %c639860254_i64, %c639860254_i64, %c1850846997_i64, %c1850846997_i64, %c1494751341_i64, %c1850846997_i64, %c1850846997_i64, %c639860254_i64, %c1494751341_i64, %c1494751341_i64, %c1494751341_i64, %c639860254_i64, %c1850846997_i64, %c1850846997_i64, %c1850846997_i64, %c1494751341_i64 : tensor<10x6xi64>
        %alloca_46 = memref.alloca() : memref<10x6xi16>
        %alloca_47 = memref.alloca() : memref<10x6xi64>
        %288 = arith.maxui %c1178178208_i32, %144 : i32
        %289 = vector.broadcast %cst_1 : f16 to vector<10x6xf16>
        %290 = arith.addf %cst_3, %95 : f16
        %291 = vector.broadcast %144 : i32 to vector<10x6xi32>
        %292 = vector.broadcast %true_27 : i1 to vector<10x6xi1>
        %293 = vector.gather %103[%116] [%291], %292, %291 : memref<4xi32>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi32> into vector<10x6xi32>
        %294 = vector.load %103[%c2] : memref<4xi32>, vector<4xi32>
        %295 = bufferization.clone %alloc_13 : memref<10x6xi64> to memref<10x6xi64>
        %296 = math.tan %7 : tensor<10x6xf32>
        %297 = index.castu %c6 : index to i32
        %298 = math.log2 %5 : tensor<4xf16>
        %false_48 = index.bool.constant false
        %299 = vector.transpose %113, [0] : vector<4xf32> to vector<4xf32>
        %300 = arith.mulf %95, %cst_1 : f16
        %301 = arith.ceildivsi %c2004814501_i32, %138 : i32
        %302 = index.divu %163, %c15
        %303 = vector.multi_reduction <minui>, %73, %73 [] : vector<1xi32> to vector<1xi32>
        %304 = arith.floordivsi %c212645413_i32, %c1397839024_i32 : i32
        memref.tensor_store %10, %alloc_5 : memref<1xf32>
        %305 = bufferization.clone %alloc : memref<10x6xf32> to memref<10x6xf32>
        %306 = math.expm1 %0 : tensor<1xf32>
        %307 = bufferization.clone %alloc_7 : memref<4xf16> to memref<4xf16>
        %308 = vector.broadcast %c11 : index to vector<1xindex>
        vector.scatter %alloc_18[%c0] [%308], %46, %79 : memref<1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %309 = arith.mulf %95, %cst_3 : f16
        %310 = arith.minui %false_48, %false_48 : i1
        %311 = math.powf %9, %9 : tensor<1xf16>
        %c0_i32 = arith.constant 0 : i32
        %312 = vector.transfer_read %alloc_6[%163], %c0_i32 : memref<4xi32>, vector<i32>
        %313 = math.ctpop %c1178178208_i32 : i32
        %314 = math.tan %6 : tensor<4xf16>
        %alloc_49 = memref.alloc() : memref<4xf32>
        memref.alloca_scope.return %alloc_49 : memref<4xf32>
      }
      %285 = math.sqrt %cst_1 : f16
      tensor.yield %c1494751341_i64 : i64
    } : tensor<?xi64>
    %172 = vector.multi_reduction <xor>, %72, %c2004814501_i32 [0] : vector<4xi32> to i32
    %173 = vector.insertelement %cst_1, %54[%c14 : index] : vector<4xf16>
    %174 = bufferization.to_tensor %80 : memref<4xi16>
    %175 = arith.remf %cst, %cst_0 : f16
    %176 = arith.shli %c1397839024_i32, %c212645413_i32 : i32
    %177 = math.log2 %23 : tensor<f32>
    %false_30 = index.bool.constant false
    %178 = arith.shrui %true_27, %true_19 : i1
    %179 = math.ceil %23 : tensor<f32>
    %180 = affine.apply affine_map<(d0, d1) -> (d1 mod 4)>(%c13, %c12)
    %181 = math.expm1 %16 : tensor<1xf32>
    %182 = tensor.empty() : tensor<4xf16>
    %mapped = linalg.map ins(%5 : tensor<4xf16>) outs(%182 : tensor<4xf16>)
      (%in: f16) {
        %282 = arith.mulf %95, %in : f16
        %283 = scf.while (%arg2 = %false) : (i1) -> i1 {
          %312 = vector.broadcast %172 : i32 to vector<10x6xi32>
          %313 = vector.broadcast %true : i1 to vector<10x6xi1>
          %314 = vector.gather %alloc_8[%168] [%312], %313, %312 : memref<1xi32>, vector<10x6xi32>, vector<10x6xi1>, vector<10x6xi32> into vector<10x6xi32>
          %extracted = tensor.extract %2[%c2] : tensor<4xi32>
          %315 = math.fma %10, %10, %17 : tensor<1xf32>
          %316 = vector.multi_reduction <mul>, %112, %112 [] : vector<4xf32> to vector<4xf32>
          %317 = math.round %9 : tensor<1xf16>
          %318 = arith.xori %c212645413_i32, %65 : i32
          %319 = math.roundeven %23 : tensor<f32>
          %c14699624_i64 = arith.constant 14699624 : i64
          scf.condition(%true_27) %false : i1
        } do {
        ^bb0(%arg2: i1):
          %312 = tensor.empty() : tensor<4xi1>
          %313 = index.castu %false_30 : i1 to index
          %314 = arith.xori %172, %c1178178208_i32 : i32
          %315 = arith.minui %true_19, %true_21 : i1
          %316 = vector.insert %c29427_i16, %79 [0] : i16 into vector<1xi16>
          %317 = index.sizeof
          %318 = math.fma %95, %cst_0, %cst_0 : f16
          %319 = math.fpowi %7, %12 : tensor<10x6xf32>, tensor<10x6xi32>
          %320 = index.floordivs %180, %154
          %321 = math.cttz %reduced : tensor<i32>
          %splat_47 = tensor.splat %c29427_i16 : tensor<1xi16>
          %322 = math.log2 %16 : tensor<1xf32>
          %323 = math.round %in : f16
          %324 = math.log10 %9 : tensor<1xf16>
          %325 = index.divu %53, %c12
          %326 = math.atan %7 : tensor<10x6xf32>
          scf.yield %true_21 : i1
        }
        %284 = vector.extract %73[0] : vector<1xi32>
        %285 = vector.insert %c1494751341_i64, %97 [0] : i64 into vector<1xi64>
        %286 = affine.for %arg2 = 0 to 110 iter_args(%arg3 = %cst_3) -> (f16) {
          affine.yield %arg3 : f16
        }
        %287 = scf.while (%arg2 = %alloc_13) : (memref<10x6xi64>) -> memref<10x6xi64> {
          %312 = index.sizeof
          %313 = vector.multi_reduction <add>, %73, %65 [0] : vector<1xi32> to i32
          %314 = math.round %95 : f16
          %315 = math.ctpop %12 : tensor<10x6xi32>
          %316 = vector.multi_reduction <or>, %73, %138 [0] : vector<1xi32> to i32
          %317 = math.floor %cst_1 : f16
          vector.print %33 : vector<f32>
          %318 = arith.shrsi %c1850846997_i64, %c1850846997_i64 : i64
          scf.condition(%false) %alloc_13 : memref<10x6xi64>
        } do {
        ^bb0(%arg2: memref<10x6xi64>):
          %312 = affine.load %alloc_15[%c1] : memref<1xf16>
          %313 = index.floordivs %53, %c7
          %314 = memref.load %94[%c0] : memref<4xi64>
          %315 = bufferization.clone %alloc : memref<10x6xf32> to memref<10x6xf32>
          %316 = bufferization.clone %arg2 : memref<10x6xi64> to memref<10x6xi64>
          %317 = vector.broadcast %143 : index to vector<4xindex>
          vector.scatter %alloc_10[%c2] [%317], %28, %72 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
          %318 = vector.flat_transpose %55 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
          memref.assume_alignment %94, 1 : memref<4xi64>
          %319 = vector.broadcast %true_21 : i1 to vector<1x1xi1>
          %320 = vector.outerproduct %46, %46, %319 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
          %321 = vector.shuffle %97, %96 [0] : vector<1xi64>, vector<1xi64>
          %322 = math.exp %cst_0 : f16
          %323 = math.log1p %3 : tensor<1xf32>
          %324 = memref.load %103[%c3] : memref<4xi32>
          %325 = arith.divf %cst_3, %95 : f16
          %326 = bufferization.to_tensor %alloc_10 : memref<4xi32>
          %327 = math.copysign %in, %cst_3 : f16
          scf.yield %316 : memref<10x6xi64>
        }
        %288 = memref.atomic_rmw mulf %cst_2, %alloc_5[%c0] : (f32, memref<1xf32>) -> f32
        %289 = index.sub %c6, %c8
        %290 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
        %291 = vector.outerproduct %56, %54, %290 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
        %292 = arith.maxf %cst_0, %cst_1 : f16
        %293 = math.log %95 : f16
        %294 = arith.divui %true_21, %true_27 : i1
        %295 = arith.negf %cst_3 : f16
        %296 = memref.alloca_scope  -> (i32) {
          %cst_47 = arith.constant 1.000000e+00 : f16
          %312 = vector.transfer_read %9[%116], %cst_47 : tensor<1xf16>, vector<f16>
          %313 = math.copysign %cst_47, %cst_1 : f16
          %314 = arith.ceildivsi %true, %true : i1
          %315 = bufferization.clone %120 : memref<4xf16> to memref<4xf16>
          %316 = arith.remf %cst, %in : f16
          %317 = bufferization.clone %alloc_9 : memref<1xi1> to memref<1xi1>
          %318 = vector.broadcast %true_27 : i1 to vector<1x1xi1>
          %319 = vector.outerproduct %46, %46, %318 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
          %alloc_48 = memref.alloc() : memref<10x6xi32>
          %320 = arith.remsi %c29427_i16, %c-18558_i16 : i16
          %cast = tensor.cast %4 : tensor<10x6xi16> to tensor<?x?xi16>
          vector.print %56 : vector<4xf16>
          %321 = index.add %c10, %c5
          %splat_49 = tensor.splat %65 : tensor<4xi32>
          %322 = arith.maxui %false_30, %false_30 : i1
          %collapsed_50 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
          %from_elements_51 = tensor.from_elements %172 : tensor<1xi32>
          %323 = arith.cmpi eq, %true_21, %true_19 : i1
          %324 = arith.shli %c1397839024_i32, %c1397839024_i32 : i32
          %325 = arith.floordivsi %c1494751341_i64, %c639860254_i64 : i64
          %326 = math.expm1 %1 : tensor<1xf32>
          %327 = arith.xori %c639860254_i64, %c1494751341_i64 : i64
          %328 = arith.maxf %cst_0, %cst : f16
          %329 = arith.shrui %false, %true_19 : i1
          %330 = affine.load %alloc_15[%c4] : memref<1xf16>
          %331 = vector.multi_reduction <and>, %97, %c1494751341_i64 [0] : vector<1xi64> to i64
          %332 = vector.broadcast %c-18558_i16 : i16 to vector<1x1xi16>
          %333 = vector.outerproduct %21, %79, %332 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
          %334 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
          %335 = vector.outerproduct %56, %54, %334 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
          memref.tensor_store %11, %alloc_14 : memref<10x6xi16>
          %alloc_52 = memref.alloc() : memref<10x6xi1>
          %336 = vector.gather %alloc_52[%71, %c3] [%73], %46, %46 : memref<10x6xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %337 = arith.shli %c639860254_i64, %331 : i64
          %338 = vector.matrix_multiply %113, %112 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
          %339 = index.floordivs %c1, %c9
          memref.alloca_scope.return %144 : i32
        }
        %297 = index.maxu %c3, %c0
        %298 = memref.load %88[%c0] : memref<1xi1>
        %299 = bufferization.clone %alloc_16 : memref<10x6xi32> to memref<10x6xi32>
        %300 = math.floor %transposed : tensor<1xf32>
        %301 = index.floordivs %c2, %78
        %302 = arith.shli %296, %c1397839024_i32 : i32
        %303 = math.absf %expanded : tensor<1x1xf32>
        %304 = bufferization.clone %alloc_5 : memref<1xf32> to memref<1xf32>
        %305 = arith.remf %cst, %cst_1 : f16
        %306 = arith.shrsi %65, %c1397839024_i32 : i32
        %307 = arith.ceildivsi %c-18558_i16, %c-18558_i16 : i16
        affine.store %296, %alloc_8[%c5] : memref<1xi32>
        %308 = math.exp2 %in : f16
        %309 = math.absf %22 : tensor<1xf32>
        %true_45 = index.bool.constant true
        memref.tensor_store %157, %alloc_7 : memref<4xf16>
        %310 = arith.addi %138, %172 : i32
        %311 = vector.broadcast %65 : i32 to vector<10x6xi32>
        %cst_46 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_46 : f16
      }
    %alloca = memref.alloca() : memref<4xi16>
    %183 = arith.negf %cst_1 : f16
    %184 = arith.andi %c29427_i16, %c29427_i16 : i16
    %185 = vector.broadcast %c1850846997_i64 : i64 to vector<1x1xi64>
    %186 = vector.outerproduct %96, %96, %185 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
    %187 = arith.maxf %cst_2, %cst_2 : f32
    %188 = math.cttz %2 : tensor<4xi32>
    %189 = math.cttz %12 : tensor<10x6xi32>
    %190 = math.powf %10, %0 : tensor<1xf32>
    %alloca_31 = memref.alloca() : memref<4xi16>
    %191 = arith.remf %cst_3, %cst_0 : f16
    %192 = math.log1p %3 : tensor<1xf32>
    %193 = bufferization.clone %alloc : memref<10x6xf32> to memref<10x6xf32>
    %194 = math.log %cst_3 : f16
    %195 = vector.insertelement %cst_2, %113[%c5 : index] : vector<4xf32>
    %196 = vector.matrix_multiply %73, %72 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi32>, vector<4xi32>) -> vector<4xi32>
    %true_32 = index.bool.constant true
    %197 = vector.flat_transpose %113 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %198 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
    %199 = vector.outerproduct %54, %56, %198 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
    %200 = math.powf %7, %7 : tensor<10x6xf32>
    %201 = math.absf %24 : tensor<f32>
    %202 = tensor.empty() : tensor<4x4x4xf32>
    %203 = tensor.empty() : tensor<4x4xf32>
    %204 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%203, %203 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%202 : tensor<4x4x4xf32>) {
    ^bb0(%in: f32, %in_45: f32, %out: f32):
      %282 = arith.muli %c639860254_i64, %c1850846997_i64 : i64
      %283 = arith.ceildivsi %c-18558_i16, %c29427_i16 : i16
      %284 = arith.addi %c29427_i16, %c-18558_i16 : i16
      %cast = tensor.cast %11 : tensor<10x6xi16> to tensor<?x?xi16>
      %285 = index.divu %c15, %25
      %286 = vector.multi_reduction <maxf>, %56, %54 [] : vector<4xf16> to vector<4xf16>
      %287 = vector.maskedload %80[%c1], %46, %79 : memref<4xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %288 = index.casts %c6 : index to i32
      %true_46 = index.bool.constant true
      %collapsed_47 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x6xi16> into tensor<60xi16>
      %289 = vector.broadcast %c2004814501_i32 : i32 to vector<4x4xi32>
      %290 = vector.outerproduct %72, %55, %289 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
      %291 = math.fpowi %7, %12 : tensor<10x6xf32>, tensor<10x6xi32>
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<10x6xi32> into tensor<60xi32>
      %292 = affine.apply affine_map<(d0) -> (d0)>(%116)
      %293 = bufferization.clone %80 : memref<4xi16> to memref<4xi16>
      %294 = math.ceil %cst_0 : f16
      %alloc_49 = memref.alloc() : memref<4xi64>
      %295 = math.copysign %cst_3, %95 : f16
      %296 = vector.create_mask %c15 : vector<4xi1>
      %297 = math.floor %9 : tensor<1xf16>
      %298 = vector.broadcast %in_45 : f32 to vector<f32>
      %299 = vector.transfer_write %298, %18[%163] : vector<f32>, tensor<1xf32>
      %300 = vector.reduction <xor>, %96 : vector<1xi64> into i64
      %301 = math.log %1 : tensor<1xf32>
      %302 = math.powf %0, %17 : tensor<1xf32>
      %303 = math.exp %157 : tensor<4xf16>
      %304 = arith.shrsi %172, %c1397839024_i32 : i32
      %alloca_50 = memref.alloca() : memref<10x6xi32>
      %305 = tensor.empty() : tensor<4x4x4xf32>
      %306 = tensor.empty() : tensor<4x4xf32>
      %307 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%306, %306, %306 : tensor<4x4xf32>, tensor<4x4xf32>, tensor<4x4xf32>) outs(%305 : tensor<4x4x4xf32>) {
      ^bb0(%in_51: f32, %in_52: f32, %in_53: f32, %out_54: f32):
        %312 = math.tanh %cst : f16
        %313 = arith.minui %true_21, %true_21 : i1
        %314 = math.log1p %0 : tensor<1xf32>
        %315 = arith.maxf %cst_3, %cst_3 : f16
        %316 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %28, %296, %true_32 : vector<4xi1>, vector<4xi1> into i1
        %true_55 = index.bool.constant true
        %317 = arith.remf %out_54, %in_52 : f32
        %318 = vector.splat %true_55 : vector<4xi1>
        %319 = tensor.empty() : tensor<4xf16>
        %320 = math.exp %182 : tensor<4xf16>
        %321 = index.ceildivu %c14, %180
        %322 = index.ceildivu %36, %137
        %323 = index.divu %c4, %143
        %expanded_56 = tensor.expand_shape %6 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %324 = arith.minf %95, %cst : f16
        %325 = tensor.empty() : tensor<10x6xf16>
        %326 = math.copysign %18, %22 : tensor<1xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16_57 = arith.constant 0 : i16
        %327 = vector.transfer_read %174[%c14], %c0_i16_57 : tensor<4xi16>, vector<i16>
        %328 = vector.broadcast %true_55 : i1 to vector<4x4xi1>
        %329 = vector.outerproduct %296, %28, %328 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
        %330 = index.add %53, %163
        %331 = math.tan %cst_0 : f16
        %332 = vector.load %alloc_13[%c8, %c4] : memref<10x6xi64>, vector<1xi64>
        %false_58 = index.bool.constant false
        %333 = arith.addi %c1850846997_i64, %c1494751341_i64 : i64
        %c551159894_i64 = arith.constant 551159894 : i64
        %334 = arith.remf %out_54, %in_45 : f32
        %335 = math.fpowi %out_54, %172 : f32, i32
        memref.store %c1397839024_i32, %103[%c3] : memref<4xi32>
        %336 = index.divs %78, %c12
        %splat_59 = tensor.splat %out : tensor<10x6xf32>
        %337 = math.log1p %10 : tensor<1xf32>
        %338 = vector.shuffle %79, %79 [0] : vector<1xi16>, vector<1xi16>
        linalg.yield %in_51 : f32
      } -> tensor<4x4x4xf32>
      %308 = math.fma %cst_2, %out, %in : f32
      %309 = math.rsqrt %3 : tensor<1xf32>
      %310 = memref.atomic_rmw andi %65, %alloc_16[%c6, %c4] : (i32, memref<10x6xi32>) -> i32
      %311 = math.log1p %0 : tensor<1xf32>
      linalg.yield %in_45 : f32
    } -> tensor<4x4x4xf32>
    %205 = math.expm1 %9 : tensor<1xf16>
    %206 = vector.matrix_multiply %56, %54 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
    %207 = arith.addf %cst_3, %cst_3 : f16
    %208 = vector.broadcast %cst_3 : f16 to vector<1x1xf16>
    %209 = vector.outerproduct %206, %206, %208 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
    %210 = arith.shli %138, %144 : i32
    %211 = arith.remf %cst, %95 : f16
    %212 = vector.broadcast %cst_2 : f32 to vector<6x4x10xf32>
    %213 = vector.broadcast %cst_2 : f32 to vector<4x10xf32>
    %dest_33, %accumulated_value_34 = vector.scan <mul>, %212, %213 {inclusive = false, reduction_dim = 0 : i64} : vector<6x4x10xf32>, vector<4x10xf32>
    %214 = math.fma %22, %0, %transposed : tensor<1xf32>
    %215 = index.castu %c639860254_i64 : i64 to index
    %216 = tensor.empty() : tensor<4x4x4xf32>
    %217 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%216 : tensor<4x4x4xf32>) {
    ^bb0(%out: f32):
      %c0_i16_45 = arith.constant 0 : i16
      %c0_i16_46 = arith.constant 0 : i16
      %282 = vector.transfer_read %alloc_14[%c13, %c11], %c0_i16_46 : memref<10x6xi16>, vector<i16>
      %283 = math.round %6 : tensor<4xf16>
      %284 = math.absf %1 : tensor<1xf32>
      %285 = math.fpowi %22, %74 : tensor<1xf32>, tensor<1xi32>
      %286 = arith.addf %cst_0, %cst_0 : f16
      %287 = memref.load %alloc_5[%c0] : memref<1xf32>
      %288 = bufferization.clone %alloc_6 : memref<4xi32> to memref<4xi32>
      %289 = math.sqrt %16 : tensor<1xf32>
      %290 = index.add %c9, %c2
      %291 = arith.ceildivsi %c1178178208_i32, %c2004814501_i32 : i32
      %292 = math.ceil %23 : tensor<f32>
      %293 = math.fpowi %182, %2 : tensor<4xf16>, tensor<4xi32>
      %294 = bufferization.to_memref %11 : memref<10x6xi16>
      %295 = vector.maskedload %alloc_5[%c0], %28, %112 : memref<1xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %296 = math.sqrt %18 : tensor<1xf32>
      %297 = scf.execute_region -> vector<4xi1> {
        %from_elements_48 = tensor.from_elements %cst_2, %out, %cst_2, %cst_2 : tensor<4xf32>
        %313 = bufferization.clone %alloc_5 : memref<1xf32> to memref<1xf32>
        %314 = math.round %cst_1 : f16
        %315 = vector.broadcast %cst_3 : f16 to vector<1x1xf16>
        %316 = vector.outerproduct %206, %206, %315 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
        %317 = math.fpowi %from_elements_48, %2 : tensor<4xf32>, tensor<4xi32>
        %318 = math.tan %10 : tensor<1xf32>
        %alloca_49 = memref.alloca() : memref<4xi1>
        %319 = index.casts %71 : index to i32
        %320 = arith.ceildivsi %144, %138 : i32
        %321 = math.ctpop %13 : tensor<10x6xi64>
        %322 = math.log2 %119 : tensor<4xf32>
        %323 = index.ceildivu %121, %c12
        %324 = arith.ceildivsi %true_32, %true_19 : i1
        %325 = arith.mulf %95, %cst_1 : f16
        %326 = vector.load %alloc_14[%c0, %c0] : memref<10x6xi16>, vector<4xi16>
        %327 = affine.load %alloc_13[%c9, %c9] : memref<10x6xi64>
        scf.yield %28 : vector<4xi1>
      }
      %true_47 = index.bool.constant true
      %298 = arith.xori %144, %c212645413_i32 : i32
      %299 = affine.for %arg2 = 0 to 4 iter_args(%arg3 = %0) -> (tensor<1xf32>) {
        affine.yield %3 : tensor<1xf32>
      }
      %300 = math.rsqrt %18 : tensor<1xf32>
      %301 = math.atan %out : f32
      %302 = arith.ceildivsi %c1178178208_i32, %138 : i32
      %303 = index.casts %false_30 : i1 to index
      %304 = affine.load %alloc_18[%c10] : memref<1xi16>
      %305 = index.maxu %116, %163
      %306 = vector.broadcast %172 : i32 to vector<1x1xi32>
      %307 = vector.outerproduct %73, %73, %306 {kind = #vector.kind<maxsi>} : vector<1xi32>, vector<1xi32>
      %308 = tensor.empty(%133) : tensor<?xf16>
      %309 = index.casts %c1494751341_i64 : i64 to index
      %310 = math.fma %105, %3, %1 : tensor<1xf32>
      scf.execute_region {
        %313 = arith.remf %cst, %95 : f16
        %314 = arith.maxui %172, %c2004814501_i32 : i32
        %315 = arith.mulf %cst_3, %cst : f16
        %316 = arith.divui %138, %c1178178208_i32 : i32
        %317 = math.log2 %157 : tensor<4xf16>
        %318 = index.casts %c11 : index to i32
        %319 = tensor.empty() : tensor<1xi1>
        %320 = index.maxu %133, %163
        %321 = arith.ceildivsi %c1178178208_i32, %172 : i32
        %322 = vector.broadcast %c15 : index to vector<4xindex>
        vector.scatter %alloc_6[%c2] [%322], %28, %72 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %323 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d3 mod 2 - 16, d2)>(%137, %c14, %c5, %c7)
        %324 = arith.addi %c212645413_i32, %65 : i32
        %325 = tensor.empty() : tensor<1x1xi32>
        %326 = math.fpowi %expanded, %325 : tensor<1x1xf32>, tensor<1x1xi32>
        %327 = arith.maxui %138, %138 : i32
        %328 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %46, %46, %true_21 : vector<1xi1>, vector<1xi1> into i1
        %329 = math.ctpop %74 : tensor<1xi32>
        scf.yield
      }
      %311 = arith.mulf %cst_1, %cst : f16
      %312 = math.sqrt %cst : f16
      linalg.yield %cst_2 : f32
    } -> tensor<4x4x4xf32>
    %218 = math.ctpop %138 : i32
    %219 = vector.insertelement %cst_0, %56[%141 : index] : vector<4xf16>
    %220 = bufferization.clone %alloc_14 : memref<10x6xi16> to memref<10x6xi16>
    %221 = affine.apply affine_map<(d0, d1, d2) -> (-((d0 - d2) floordiv 2))>(%71, %c10, %53)
    %222 = arith.xori %138, %c1178178208_i32 : i32
    %expanded_35 = tensor.expand_shape %174 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
    %c690350156_i64 = arith.constant 690350156 : i64
    %223 = math.cos %cst_1 : f16
    %224 = bufferization.to_tensor %alloc_13 : memref<10x6xi64>
    %225 = math.copysign %3, %10 : tensor<1xf32>
    %226 = math.roundeven %119 : tensor<4xf32>
    memref.tensor_store %8, %220 : memref<10x6xi16>
    %227 = math.sqrt %157 : tensor<4xf16>
    %228 = index.castu %c2 : index to i32
    %229 = math.expm1 %182 : tensor<4xf16>
    %230 = scf.if %true -> (memref<4xi16>) {
      %282 = vector.bitcast %112 : vector<4xf32> to vector<4xf32>
      %283 = vector.gather %6[%78] [%55], %166, %54 : tensor<4xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %generated_45 = tensor.generate %36 {
      ^bb0(%arg2: index):
        %289 = math.tan %24 : tensor<f32>
        %290 = bufferization.clone %193 : memref<10x6xf32> to memref<10x6xf32>
        %291 = vector.bitcast %79 : vector<1xi16> to vector<1xf16>
        %292 = math.tan %5 : tensor<4xf16>
        tensor.yield %true_19 : i1
      } : tensor<?xi1>
      %284 = vector.shuffle %73, %72 [2] : vector<1xi32>, vector<4xi32>
      %285 = vector.load %alloc[%c0, %c3] : memref<10x6xf32>, vector<10x6xf32>
      %286 = index.sizeof
      %287 = vector.transpose %26, [] : vector<i32> to vector<i32>
      %288 = arith.maxf %cst_0, %cst_3 : f16
      scf.yield %alloc_12 : memref<4xi16>
    } else {
      %282 = math.log %23 : tensor<f32>
      %cst_45 = arith.constant 1.000000e+00 : f16
      %cst_46 = arith.constant 0.000000e+00 : f16
      %283 = vector.transfer_read %alloc_7[%221], %cst_46 : memref<4xf16>, vector<f16>
      %284 = arith.remsi %65, %65 : i32
      %285 = arith.xori %false_30, %true_32 : i1
      %286 = tensor.empty() : tensor<1xi1>
      %mapped_47 = linalg.map ins(%90, %88, %115 : tensor<1xi1>, memref<1xi1>, tensor<1xi1>) outs(%286 : tensor<1xi1>)
        (%in: i1, %in_49: i1, %in_50: i1) {
          %289 = memref.atomic_rmw maxf %cst, %alloc_15[%c0] : (f16, memref<1xf16>) -> f16
          %290 = arith.andi %false, %true_32 : i1
          %291 = arith.remf %cst_3, %cst_45 : f16
          %292 = arith.shrui %138, %172 : i32
          %293 = math.log2 %6 : tensor<4xf16>
          %alloca_51 = memref.alloca() : memref<4xf16>
          %294 = math.ipowi %11, %8 : tensor<10x6xi16>
          %collapsed_52 = tensor.collapse_shape %13 [[0, 1]] : tensor<10x6xi64> into tensor<60xi64>
          %295 = math.log1p %7 : tensor<10x6xf32>
          %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %166, %166, %true_27 : vector<4xi1>, vector<4xi1> into i1
          %297 = arith.minf %cst_0, %95 : f16
          %298 = math.copysign %182, %182 : tensor<4xf16>
          %299 = math.log10 %1 : tensor<1xf32>
          %splat_53 = tensor.splat %cst_45 : tensor<4xf16>
          %300 = arith.addi %138, %c1397839024_i32 : i32
          memref.store %c29427_i16, %alloc_14[%c5, %c5] : memref<10x6xi16>
          %301 = arith.minui %c212645413_i32, %65 : i32
          %302 = bufferization.clone %alloc_6 : memref<4xi32> to memref<4xi32>
          %from_elements_54 = tensor.from_elements %cst_45, %cst_0, %cst, %95 : tensor<4xf16>
          %303 = vector.bitcast %112 : vector<4xf32> to vector<4xf32>
          %304 = vector.create_mask %168 : vector<4xi1>
          %305 = math.cos %157 : tensor<4xf16>
          %306 = arith.maxsi %in_50, %in_49 : i1
          %307 = arith.divsi %c1178178208_i32, %c212645413_i32 : i32
          %308 = math.ctpop %false_30 : i1
          %309 = math.round %10 : tensor<1xf32>
          %310 = memref.load %220[%c7, %c4] : memref<10x6xi16>
          %311 = index.ceildivu %137, %215
          %alloca_55 = memref.alloca() : memref<4xf16>
          %312 = arith.remf %cst_45, %95 : f16
          %313 = arith.divf %cst_1, %cst_0 : f16
          %314 = math.log10 %5 : tensor<4xf16>
          %true_56 = arith.constant true
          linalg.yield %true_56 : i1
        }
      %287 = bufferization.clone %alloc_15 : memref<1xf16> to memref<1xf16>
      %288 = math.ctpop %c1178178208_i32 : i32
      %splat_48 = tensor.splat %false_30 : tensor<4xi1>
      scf.yield %80 : memref<4xi16>
    }
    %231 = math.log10 %5 : tensor<4xf16>
    %232 = math.sqrt %transposed : tensor<1xf32>
    %c0_i16 = arith.constant 0 : i16
    %233 = vector.transfer_read %alloc_14[%c2, %c13], %c0_i16 : memref<10x6xi16>, vector<6xi16>
    %234 = math.tanh %0 : tensor<1xf32>
    %235 = arith.minf %cst_3, %cst_1 : f16
    %236 = vector.broadcast %cst_2 : f32 to vector<f32>
    %237 = vector.transfer_write %236, %16[%215] : vector<f32>, tensor<1xf32>
    %238 = memref.atomic_rmw maxs %c0_i16, %220[%c5, %c5] : (i16, memref<10x6xi16>) -> i16
    %c289973131_i32 = arith.constant 289973131 : i32
    %239 = vector.broadcast %c2 : index to vector<6xindex>
    %240 = vector.broadcast %true_19 : i1 to vector<6xi1>
    %241 = vector.broadcast %c-18558_i16 : i16 to vector<6xi16>
    vector.scatter %230[%c2] [%239], %240, %241 : memref<4xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
    %alloc_36 = memref.alloc() : memref<1x1xf32>
    memref.tensor_store %expanded, %alloc_36 : memref<1x1xf32>
    %242 = arith.cmpi sle, %144, %c1178178208_i32 : i32
    %243 = arith.cmpi ugt, %172, %65 : i32
    %244 = math.floor %23 : tensor<f32>
    %245 = tensor.empty() : tensor<4xi64>
    %mapped_37 = linalg.map ins(%15 : tensor<4xi64>) outs(%245 : tensor<4xi64>)
      (%in: i64) {
        %282 = math.fma %3, %3, %10 : tensor<1xf32>
        %283 = math.copysign %5, %6 : tensor<4xf16>
        %inserted = tensor.insert %in into %245[%c0] : tensor<4xi64>
        %284 = index.sub %c1, %221
        %285 = math.ctpop %12 : tensor<10x6xi32>
        %286 = tensor.empty(%c2) : tensor<?x6xi1>
        affine.store %c0_i16, %80[%c2] : memref<4xi16>
        %287 = arith.maxf %cst_3, %95 : f16
        %288 = vector.bitcast %166 : vector<4xi1> to vector<4xi1>
        %289 = arith.shrsi %144, %138 : i32
        %290 = vector.multi_reduction <maxf>, %206, %cst_1 [0] : vector<1xf16> to f16
        %291 = vector.flat_transpose %79 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %292 = math.fpowi %1, %74 : tensor<1xf32>, tensor<1xi32>
        %293 = arith.xori %c-18558_i16, %c29427_i16 : i16
        %294 = index.ceildivs %163, %68
        %295 = scf.execute_region -> memref<1xi1> {
          %312 = math.copysign %9, %9 : tensor<1xf16>
          %313 = tensor.empty(%146) : tensor<?xf16>
          %314 = arith.remf %cst_0, %cst_3 : f16
          %315 = math.expm1 %17 : tensor<1xf32>
          %316 = math.powf %290, %cst : f16
          %317 = vector.transpose %79, [0] : vector<1xi16> to vector<1xi16>
          %318 = index.sub %163, %167
          %319 = vector.broadcast %c212645413_i32 : i32 to vector<4xi32>
          %320 = arith.minf %95, %cst : f16
          %321 = tensor.empty() : tensor<4xf16>
          %322 = vector.reduction <minf>, %56 : vector<4xf16> into f16
          affine.store %cst_1, %alloc_17[%c4] : memref<4xf16>
          %323 = math.fma %23, %23, %24 : tensor<f32>
          %324 = bufferization.clone %80 : memref<4xi16> to memref<4xi16>
          %325 = math.log1p %3 : tensor<1xf32>
          %326 = arith.mulf %290, %95 : f16
          scf.yield %alloc_9 : memref<1xi1>
        }
        %296 = arith.maxf %95, %cst : f16
        %297 = bufferization.clone %alloc_4 : memref<10x6xf32> to memref<10x6xf32>
        %298 = index.divu %c2, %284
        %299 = math.expm1 %0 : tensor<1xf32>
        %300 = math.ctlz %false : i1
        %301 = math.log10 %0 : tensor<1xf32>
        %302 = bufferization.to_tensor %alloc_4 : memref<10x6xf32>
        %303 = index.ceildivs %180, %c14
        %304 = math.roundeven %7 : tensor<10x6xf32>
        %305 = math.log1p %3 : tensor<1xf32>
        %306 = arith.maxf %cst_3, %cst_3 : f16
        %307 = math.sqrt %7 : tensor<10x6xf32>
        %308 = arith.floordivsi %in, %in : i64
        %309 = vector.insert %c-18558_i16, %79 [0] : i16 into vector<1xi16>
        %310 = memref.alloca_scope  -> (i16) {
          %312 = arith.maxui %true, %true_19 : i1
          %c1666187298_i32 = arith.constant 1666187298 : i32
          %313 = math.atan %6 : tensor<4xf16>
          %314 = arith.ceildivsi %144, %c212645413_i32 : i32
          %expanded_45 = tensor.expand_shape %22 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
          %315 = vector.load %alloc_14[%c4, %c3] : memref<10x6xi16>, vector<4xi16>
          %316 = math.log2 %10 : tensor<1xf32>
          %317 = math.round %9 : tensor<1xf16>
          %318 = arith.ceildivsi %true_19, %true_32 : i1
          %319 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %96, %96, %c1494751341_i64 : vector<1xi64>, vector<1xi64> into i64
          %320 = arith.addi %c639860254_i64, %c639860254_i64 : i64
          %321 = arith.remui %c-18558_i16, %c-18558_i16 : i16
          %true_46 = index.bool.constant true
          affine.store %c1850846997_i64, %94[%c7] : memref<4xi64>
          %322 = vector.bitcast %79 : vector<1xi16> to vector<1xf16>
          %alloc_47 = memref.alloc() : memref<f32>
          memref.tensor_store %24, %alloc_47 : memref<f32>
          affine.store %172, %103[%c5] : memref<4xi32>
          %323 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %28, %288, %true_27 : vector<4xi1>, vector<4xi1> into i1
          %324 = vector.bitcast %197 : vector<4xf32> to vector<4xf32>
          %325 = vector.broadcast %true_27 : i1 to vector<6x1xi1>
          %326 = vector.broadcast %true_27 : i1 to vector<6xi1>
          %dest_48, %accumulated_value_49 = vector.scan <minsi>, %325, %326 {inclusive = false, reduction_dim = 1 : i64} : vector<6x1xi1>, vector<6xi1>
          %cst_50 = arith.constant 1.000000e+00 : f32
          %cst_51 = arith.constant 0.000000e+00 : f32
          %327 = vector.transfer_read %22[%c4], %cst_51 : tensor<1xf32>, vector<f32>
          %328 = math.round %23 : tensor<f32>
          %329 = bufferization.to_tensor %88 : memref<1xi1>
          %330 = bufferization.to_tensor %295 : memref<1xi1>
          %331 = arith.shli %true_21, %true_27 : i1
          %extracted = tensor.extract %2[%c2] : tensor<4xi32>
          memref.tensor_store %4, %alloc_14 : memref<10x6xi16>
          %332 = vector.transpose %166, [0] : vector<4xi1> to vector<4xi1>
          %333 = math.cttz %true_46 : i1
          %334 = tensor.empty() : tensor<4xi32>
          %335 = vector.insert %c29427_i16, %291 [0] : i16 into vector<1xi16>
          affine.store %c-18558_i16, %alloc_18[%c6] : memref<1xi16>
          memref.alloca_scope.return %c0_i16 : i16
        }
        %311 = vector.transpose %46, [0] : vector<1xi1> to vector<1xi1>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %246 = vector.broadcast %144 : i32 to vector<4x4xi32>
    %247 = vector.outerproduct %55, %196, %246 {kind = #vector.kind<mul>} : vector<4xi32>, vector<4xi32>
    %248 = arith.minsi %c2004814501_i32, %144 : i32
    %249 = arith.floordivsi %c2004814501_i32, %c1178178208_i32 : i32
    %250 = bufferization.to_memref %6 : memref<4xf16>
    %251 = arith.ceildivsi %c0_i16, %c-18558_i16 : i16
    %252 = arith.subi %c1850846997_i64, %c639860254_i64 : i64
    %253 = vector.broadcast %144 : i32 to vector<6x6xi32>
    %254 = vector.broadcast %144 : i32 to vector<6xi32>
    %dest_38, %accumulated_value_39 = vector.scan <add>, %253, %254 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
    %255 = arith.remui %c2004814501_i32, %65 : i32
    %256 = scf.index_switch %c2 -> i32 
    case 1 {
      %282 = math.sqrt %cst_2 : f32
      %283 = vector.create_mask %133, %c1 : vector<10x6xi1>
      %284 = arith.negf %cst_2 : f32
      %285 = index.ceildivu %c4, %143
      %286 = math.log10 %splat : tensor<1xf16>
      %287 = scf.while (%arg2 = %94) : (memref<4xi64>) -> memref<4xi64> {
        %298 = math.tan %3 : tensor<1xf32>
        %299 = math.powf %182, %157 : tensor<4xf16>
        %false_45 = arith.constant false
        %300 = vector.transfer_read %115[%c9], %false_45 : tensor<1xi1>, vector<i1>
        %301 = math.fma %0, %105, %105 : tensor<1xf32>
        %302 = vector.gather %alloc_9[%c10] [%73], %46, %46 : memref<1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        memref.assume_alignment %alloc, 1 : memref<10x6xf32>
        %true_46 = arith.constant true
        %303 = math.log %6 : tensor<4xf16>
        scf.condition(%true_21) %arg2 : memref<4xi64>
      } do {
      ^bb0(%arg2: memref<4xi64>):
        %298 = vector.multi_reduction <xor>, %79, %79 [] : vector<1xi16> to vector<1xi16>
        %299 = index.divu %285, %133
        %300 = arith.subi %c0_i16, %c-18558_i16 : i16
        %301 = index.casts %c6 : index to i32
        %302 = memref.atomic_rmw maxu %c2004814501_i32, %alloc_16[%c9, %c1] : (i32, memref<10x6xi32>) -> i32
        %cst_45 = arith.constant 1.047200e+04 : f16
        memref.assume_alignment %103, 1 : memref<4xi32>
        %c1_i32 = arith.constant 1 : i32
        %303 = vector.transfer_read %alloc_6[%c10], %c1_i32 : memref<4xi32>, vector<i32>
        %304 = math.ctpop %c2004814501_i32 : i32
        %305 = arith.mulf %cst_0, %95 : f16
        %306 = arith.xori %c1397839024_i32, %c1_i32 : i32
        %307 = index.sizeof
        %308 = arith.addi %144, %c1178178208_i32 : i32
        %309 = math.expm1 %3 : tensor<1xf32>
        memref.tensor_store %from_elements, %103 : memref<4xi32>
        %310 = index.sizeof
        scf.yield %94 : memref<4xi64>
      }
      %288 = index.castu %168 : index to i32
      %289 = math.log10 %7 : tensor<10x6xf32>
      %290 = math.tanh %cst_3 : f16
      %291 = math.sqrt %0 : tensor<1xf32>
      %292 = arith.subi %c-18558_i16, %c29427_i16 : i16
      %293 = bufferization.clone %94 : memref<4xi64> to memref<4xi64>
      %294 = index.sizeof
      %295 = arith.minsi %c639860254_i64, %c639860254_i64 : i64
      %296 = vector.broadcast %true_27 : i1 to vector<1xi1>
      %297 = math.exp %splat : tensor<1xf16>
      scf.yield %138 : i32
    }
    case 2 {
      %282 = scf.execute_region -> tensor<10x6xf32> {
        %splat_46 = tensor.splat %cst_1 : tensor<4xf16>
        %297 = bufferization.clone %alloc : memref<10x6xf32> to memref<10x6xf32>
        %true_47 = index.bool.constant true
        %298 = index.casts %c29427_i16 : i16 to index
        %299 = arith.shrsi %true_32, %false : i1
        %alloca_48 = memref.alloca() : memref<1xi64>
        %300 = vector.transpose %54, [0] : vector<4xf16> to vector<4xf16>
        vector.print %33 : vector<f32>
        %301 = vector.bitcast %21 : vector<1xi16> to vector<1xi16>
        %302 = index.sub %c7, %c15
        %303 = arith.mulf %cst_0, %cst_1 : f16
        memref.tensor_store %105, %alloc_5 : memref<1xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %206, %206, %cst_0 : vector<1xf16>, vector<1xf16> into f16
        %305 = math.round %6 : tensor<4xf16>
        %306 = index.castu %c-18558_i16 : i16 to index
        %307 = vector.extract_strided_slice %112 {offsets = [1], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        scf.yield %7 : tensor<10x6xf32>
      }
      affine.for %arg2 = 0 to 40 {
      }
      %283 = arith.shli %false, %true_19 : i1
      %generated_45 = tensor.generate %c1 {
      ^bb0(%arg2: index, %arg3: index):
        %297 = index.mul %180, %c2
        %298 = math.powf %cst_3, %cst_1 : f16
        %299 = vector.insertelement %true_32, %46[%36 : index] : vector<1xi1>
        %300 = arith.addi %true, %true_32 : i1
        tensor.yield %c1494751341_i64 : i64
      } : tensor<?x6xi64>
      %284 = math.cttz %expanded_35 : tensor<4x1xi16>
      %285 = math.log10 %23 : tensor<f32>
      %286 = vector.create_mask %c3 : vector<4xi1>
      %287 = vector.insert %true_27, %286 [2] : i1 into vector<4xi1>
      %288 = arith.maxf %cst_1, %cst : f16
      %289 = arith.minui %144, %144 : i32
      %290 = vector.broadcast %c212645413_i32 : i32 to vector<i32>
      vector.transfer_write %290, %alloc_6[%167] : vector<i32>, memref<4xi32>
      %291 = math.cttz %true_27 : i1
      %292 = arith.divui %172, %c1178178208_i32 : i32
      %293 = tensor.empty() : tensor<4xi1>
      %294 = vector.gather %293[%c4] [%72], %28, %166 : tensor<4xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %295 = arith.remui %true_21, %true : i1
      %296 = vector.insertelement %c29427_i16, %21[%133 : index] : vector<1xi16>
      scf.yield %c212645413_i32 : i32
    }
    case 3 {
      %282 = math.log10 %10 : tensor<1xf32>
      %283 = arith.divui %true, %true_27 : i1
      %284 = vector.insert %cst_1, %56 [3] : f16 into vector<4xf16>
      %285 = arith.xori %false_30, %false_30 : i1
      %286 = vector.bitcast %97 : vector<1xi64> to vector<1xi64>
      %287 = arith.floordivsi %false, %true_27 : i1
      %288 = arith.muli %false, %false : i1
      %289 = index.casts %78 : index to i32
      %290 = vector.broadcast %c8 : index to vector<6xindex>
      %291 = vector.broadcast %true_32 : i1 to vector<6xi1>
      %292 = vector.broadcast %c-18558_i16 : i16 to vector<6xi16>
      vector.scatter %alloc_18[%c0] [%290], %291, %292 : memref<1xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
      %293 = arith.divui %c639860254_i64, %c1494751341_i64 : i64
      %294 = arith.addi %c1397839024_i32, %172 : i32
      %295 = arith.minui %c1850846997_i64, %c1494751341_i64 : i64
      %296 = arith.shli %true, %true_32 : i1
      %true_45 = index.bool.constant true
      vector.print %46 : vector<1xi1>
      %297 = arith.shli %c1178178208_i32, %144 : i32
      scf.yield %c1397839024_i32 : i32
    }
    case 4 {
      %282 = index.casts %true_27 : i1 to index
      %283 = math.sqrt %1 : tensor<1xf32>
      %c0_i16_45 = arith.constant 0 : i16
      %c0_i16_46 = arith.constant 0 : i16
      %284 = vector.transfer_read %expanded_35[%221, %180], %c0_i16_46 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x1xi16>, vector<1xi16>
      %285 = bufferization.to_memref %16 : memref<1xf32>
      scf.execute_region {
        %296 = math.tan %157 : tensor<4xf16>
        %297 = math.round %17 : tensor<1xf32>
        %298 = math.floor %cst_1 : f16
        %299 = vector.create_mask %c7 : vector<4xi1>
        %300 = index.add %c11, %c2
        %301 = vector.insert %false_30, %299 [3] : i1 into vector<4xi1>
        %302 = arith.minsi %c212645413_i32, %138 : i32
        %303 = math.ctlz %11 : tensor<10x6xi16>
        %304 = math.rsqrt %0 : tensor<1xf32>
        %305 = memref.atomic_rmw addi %c1178178208_i32, %103[%c0] : (i32, memref<4xi32>) -> i32
        %306 = math.exp %cst_2 : f32
        %c1501920729_i64 = arith.constant 1501920729 : i64
        %307 = math.log1p %95 : f16
        %308 = index.divu %71, %180
        %309 = math.absf %cst_0 : f16
        %310 = math.log10 %3 : tensor<1xf32>
        scf.yield
      }
      %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %196, %72, %144 : vector<4xi32>, vector<4xi32> into i32
      %287 = vector.broadcast %65 : i32 to vector<1x1xi32>
      %288 = vector.outerproduct %73, %73, %287 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
      affine.for %arg2 = 0 to 17 {
      }
      %289 = vector.reduction <minf>, %54 : vector<4xf16> into f16
      %290 = index.divs %c1, %221
      %291 = math.roundeven %23 : tensor<f32>
      %292 = math.log10 %transposed : tensor<1xf32>
      %293 = scf.while (%arg2 = %true) : (i1) -> i1 {
        %296 = arith.addi %true_21, %true_21 : i1
        %297 = bufferization.to_tensor %250 : memref<4xf16>
        %298 = vector.gather %94[%c11] [%73], %46, %97 : memref<4xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %299 = arith.minui %c1397839024_i32, %c212645413_i32 : i32
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %112, %112, %cst_2 : vector<4xf32>, vector<4xf32> into f32
        %301 = math.sqrt %cst : f16
        %302 = math.fpowi %cst_3, %138 : f16, i32
        %303 = arith.negf %cst : f16
        scf.condition(%true_19) %true : i1
      } do {
      ^bb0(%arg2: i1):
        %296 = affine.min affine_map<(d0, d1, d2) -> (d2 + d0, (d1 ceildiv 128) mod 128)>(%154, %c15, %290)
        %alloca_47 = memref.alloca() : memref<1xf16>
        %297 = arith.ceildivsi %c1397839024_i32, %c1178178208_i32 : i32
        %298 = math.log2 %7 : tensor<10x6xf32>
        %299 = math.expm1 %18 : tensor<1xf32>
        %300 = math.absf %105 : tensor<1xf32>
        memref.tensor_store %14, %230 : memref<4xi16>
        %301 = index.casts %c12 : index to i32
        %302 = vector.extract_strided_slice %73 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %303 = vector.matrix_multiply %56, %56 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
        %304 = math.log1p %24 : tensor<f32>
        %inserted = tensor.insert %cst_2 into %18[%c0] : tensor<1xf32>
        %305 = arith.mulf %95, %cst : f16
        %306 = arith.minf %cst_1, %cst_1 : f16
        %307 = arith.minf %cst_3, %cst_3 : f16
        %308 = arith.shli %c1494751341_i64, %c1850846997_i64 : i64
        scf.yield %true_19 : i1
      }
      memref.tensor_store %14, %alloc_12 : memref<4xi16>
      %294 = bufferization.clone %285 : memref<1xf32> to memref<1xf32>
      %295 = arith.andi %c29427_i16, %c0_i16 : i16
      scf.yield %138 : i32
    }
    default {
      %282 = index.sub %c8, %116
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %283 = vector.transfer_read %alloc_6[%116], %c0_i32 : memref<4xi32>, vector<i32>
      %284 = memref.atomic_rmw mins %c1_i32, %alloc_10[%c0] : (i32, memref<4xi32>) -> i32
      %285 = arith.minf %cst_2, %cst_2 : f32
      %286 = math.log10 %24 : tensor<f32>
      %rank = tensor.rank %generated_25 : tensor<?xi1>
      %287 = vector.multi_reduction <mul>, %72, %c2004814501_i32 [0] : vector<4xi32> to i32
      %288 = index.add %121, %c3
      %289 = math.ipowi %11, %11 : tensor<10x6xi16>
      %290 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
      %291 = vector.outerproduct %112, %113, %290 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      %generated_45 = tensor.generate %143 {
      ^bb0(%arg2: index):
        %297 = arith.addi %c1178178208_i32, %138 : i32
        %298 = math.tan %transposed : tensor<1xf32>
        %299 = math.ceil %7 : tensor<10x6xf32>
        %300 = arith.andi %true_21, %true_21 : i1
        tensor.yield %false_30 : i1
      } : tensor<?xi1>
      %292 = math.ipowi %11, %8 : tensor<10x6xi16>
      %293 = arith.addi %65, %c1397839024_i32 : i32
      %294 = index.maxs %137, %c4
      %295 = arith.remf %cst_2, %cst_2 : f32
      %296 = math.tanh %3 : tensor<1xf32>
      scf.yield %287 : i32
    }
    affine.store %cst_2, %193[%c5, %c12] : memref<10x6xf32>
    %257 = vector.create_mask %71 : vector<4xi1>
    %258 = math.log %22 : tensor<1xf32>
    %259 = bufferization.to_memref %1 : memref<1xf32>
    %260 = index.casts %c639860254_i64 : i64 to index
    %261 = vector.transpose %28, [0] : vector<4xi1> to vector<4xi1>
    %262 = math.log10 %cst_2 : f32
    vector.print %33 : vector<f32>
    %alloca_40 = memref.alloca() : memref<10x6xi16>
    %263 = math.expm1 %cst_1 : f16
    %alloca_41 = memref.alloca() : memref<4xf16>
    %264 = arith.maxui %c2004814501_i32, %c212645413_i32 : i32
    %265 = affine.for %arg2 = 0 to 74 iter_args(%arg3 = %alloc_4) -> (memref<10x6xf32>) {
      affine.yield %193 : memref<10x6xf32>
    }
    %266 = arith.minui %c1397839024_i32, %138 : i32
    affine.store %95, %250[%c3] : memref<4xf16>
    %267 = math.log10 %transposed : tensor<1xf32>
    %268 = arith.addi %c1178178208_i32, %65 : i32
    %269 = arith.andi %true_32, %true_27 : i1
    %270 = vector.broadcast %c1397839024_i32 : i32 to vector<i32>
    %271 = vector.transfer_write %270, %74[%c2] : vector<i32>, tensor<1xi32>
    %272 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 16)>(%c14, %25, %146)
    affine.store %true_21, %88[%c3] : memref<1xi1>
    %273 = math.round %10 : tensor<1xf32>
    %274 = math.copysign %3, %0 : tensor<1xf32>
    %275 = math.cttz %c1397839024_i32 : i32
    %alloc_42 = memref.alloc() : memref<4xi1>
    %276 = vector.gather %alloc_42[%167] [%73], %46, %46 : memref<4xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %277 = tensor.empty() : tensor<10x6xi64>
    %278 = linalg.copy ins(%13 : tensor<10x6xi64>) outs(%277 : tensor<10x6xi64>) -> tensor<10x6xi64>
    %279 = tensor.empty() : tensor<4xi1>
    %transposed_43 = linalg.transpose ins(%alloc_42 : memref<4xi1>) outs(%279 : tensor<4xi1>) permutation = [0] 
    %alloc_44 = memref.alloc() : memref<i16>
    linalg.reduce ins(%80 : memref<4xi16>) outs(%alloc_44 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %282 = index.ceildivu %36, %c13
        %283 = math.ctpop %c0_i16 : i16
        %284 = math.tanh %5 : tensor<4xf16>
        %285 = math.cos %16 : tensor<1xf32>
        %286 = memref.alloca_scope  -> (f16) {
          %290 = arith.minf %cst_0, %cst_3 : f16
          %291 = vector.transpose %54, [0] : vector<4xf16> to vector<4xf16>
          %true_46 = index.bool.constant true
          %292 = vector.matrix_multiply %96, %97 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %293 = arith.subi %c1178178208_i32, %c1178178208_i32 : i32
          %294 = index.castu %143 : index to i32
          %295 = math.log2 %9 : tensor<1xf16>
          %296 = math.copysign %182, %182 : tensor<4xf16>
          %297 = index.divs %163, %167
          %298 = index.floordivs %154, %68
          %c1629013714_i32 = arith.constant 1629013714 : i32
          %299 = math.copysign %3, %0 : tensor<1xf32>
          %300 = arith.maxf %cst, %cst_0 : f16
          %alloca_47 = memref.alloca() : memref<4xi16>
          %301 = math.log1p %5 : tensor<4xf16>
          %302 = vector.create_mask %68 : vector<1xi1>
          %303 = math.powf %17, %transposed : tensor<1xf32>
          %304 = math.log1p %23 : tensor<f32>
          %305 = bufferization.clone %alloc_42 : memref<4xi1> to memref<4xi1>
          %306 = index.castu %true_46 : i1 to index
          %inserted = tensor.insert %c1850846997_i64 into %13[%c2, %c3] : tensor<10x6xi64>
          %false_48 = index.bool.constant false
          %307 = math.log2 %7 : tensor<10x6xf32>
          vector.print %33 : vector<f32>
          %308 = math.log2 %3 : tensor<1xf32>
          %309 = vector.insertelement %cst_3, %206[%c15 : index] : vector<1xf16>
          %310 = arith.remf %cst, %95 : f16
          %311 = arith.shli %in, %c29427_i16 : i16
          %312 = arith.maxf %cst_3, %cst_3 : f16
          %313 = math.roundeven %182 : tensor<4xf16>
          %314 = arith.remf %cst_0, %cst : f16
          %315 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 4)>(%c15, %71, %c9)
          memref.alloca_scope.return %cst_3 : f16
        }
        %287 = arith.minui %true_27, %false_30 : i1
        %288 = vector.multi_reduction <maxf>, %206, %cst_3 [0] : vector<1xf16> to f16
        %289 = math.fma %9, %9, %9 : tensor<1xf16>
        %c0_i16_45 = arith.constant 0 : i16
        linalg.yield %c0_i16_45 : i16
      }
    %280 = scf.parallel (%arg2) = (%68) to (%146) step (%c2) init (%96) -> vector<1xi64> {
      %282 = math.atan %7 : tensor<10x6xf32>
      %283 = math.tan %3 : tensor<1xf32>
      %284 = vector.transpose %73, [0] : vector<1xi32> to vector<1xi32>
      %285 = scf.while (%arg3 = %alloc_15) : (memref<1xf16>) -> memref<1xf16> {
        %298 = index.ceildivu %221, %c13
        %alloca_46 = memref.alloca() : memref<4xi64>
        %299 = arith.muli %true_32, %true : i1
        %300 = math.exp %95 : f16
        %301 = math.sqrt %5 : tensor<4xf16>
        %302 = arith.negf %cst : f16
        %303 = math.copysign %24, %23 : tensor<f32>
        %304 = tensor.empty() : tensor<4xi1>
        scf.condition(%true) %arg3 : memref<1xf16>
      } do {
      ^bb0(%arg3: memref<1xf16>):
        %298 = math.rsqrt %1 : tensor<1xf32>
        %cst_46 = arith.constant 5.776000e+03 : f16
        %299 = affine.load %alloc_15[%c10] : memref<1xf16>
        %300 = vector.reduction <and>, %79 : vector<1xi16> into i16
        %301 = index.casts %138 : i32 to index
        %302 = arith.xori %c1850846997_i64, %c1494751341_i64 : i64
        %303 = vector.splat %144 : vector<1xi32>
        %304 = arith.andi %c1850846997_i64, %c1850846997_i64 : i64
        %305 = index.casts %25 : index to i32
        %306 = vector.multi_reduction <add>, %206, %cst_3 [0] : vector<1xf16> to f16
        %307 = arith.minui %138, %65 : i32
        %308 = bufferization.to_tensor %alloc_13 : memref<10x6xi64>
        %309 = arith.maxui %c1397839024_i32, %172 : i32
        %310 = bufferization.clone %arg3 : memref<1xf16> to memref<1xf16>
        %311 = math.log10 %23 : tensor<f32>
        %312 = math.sqrt %95 : f16
        scf.yield %alloc_15 : memref<1xf16>
      }
      %c0_i64 = arith.constant 0 : i64
      %286 = vector.transfer_read %277[%167, %215], %c0_i64 : tensor<10x6xi64>, vector<i64>
      %287 = index.casts %138 : i32 to index
      %288 = arith.remf %95, %95 : f16
      %289 = arith.shrsi %138, %c212645413_i32 : i32
      %290 = arith.ceildivsi %c1850846997_i64, %c1494751341_i64 : i64
      %291 = index.sizeof
      %292 = tensor.empty() : tensor<4xi32>
      %from_elements_45 = tensor.from_elements %cst_2 : tensor<1xf32>
      %293 = arith.remf %cst_0, %cst : f16
      %294 = math.log1p %0 : tensor<1xf32>
      %295 = arith.negf %95 : f16
      %296 = index.floordivs %c2, %137
      %297 = vector.broadcast %c1494751341_i64 : i64 to vector<1xi64>
      scf.reduce(%297)  : vector<1xi64> {
      ^bb0(%arg3: vector<1xi64>, %arg4: vector<1xi64>):
        %298 = math.cttz %13 : tensor<10x6xi64>
        %299 = arith.minui %c29427_i16, %c-18558_i16 : i16
        %300 = memref.load %alloc_15[%c0] : memref<1xf16>
        %301 = affine.load %220[%c4, %c13] : memref<10x6xi16>
        %302 = math.ctlz %301 : i16
        affine.store %false_30, %88[%c6] : memref<1xi1>
        %303 = math.log %0 : tensor<1xf32>
        %304 = affine.min affine_map<(d0, d1) -> (d1 - d0, (d0 + 32) * 16, d0 + 160)>(%137, %71)
        %305 = vector.broadcast %c639860254_i64 : i64 to vector<1xi64>
        scf.reduce.return %305 : vector<1xi64>
      }
      scf.yield
    }
    %281 = affine.vector_load %alloc_12[%168] : memref<4xi16>, vector<6xi16>
    affine.vector_store %55, %alloc_16[%c8, %141] : memref<10x6xi32>, vector<4xi32>
    vector.print %21 : vector<1xi16>
    vector.print %26 : vector<i32>
    vector.print %28 : vector<4xi1>
    vector.print %33 : vector<f32>
    vector.print %46 : vector<1xi1>
    vector.print %54 : vector<4xf16>
    vector.print %55 : vector<4xi32>
    vector.print %56 : vector<4xf16>
    vector.print %72 : vector<4xi32>
    vector.print %73 : vector<1xi32>
    vector.print %79 : vector<1xi16>
    vector.print %91 : vector<f32>
    vector.print %96 : vector<1xi64>
    vector.print %97 : vector<1xi64>
    vector.print %112 : vector<4xf32>
    vector.print %113 : vector<4xf32>
    vector.print %166 : vector<4xi1>
    vector.print %196 : vector<4xi32>
    vector.print %197 : vector<4xf32>
    vector.print %206 : vector<1xf16>
    vector.print %236 : vector<f32>
    vector.print %257 : vector<4xi1>
    vector.print %270 : vector<i32>
    vector.print %276 : vector<1xi1>
    vector.print %281 : vector<6xi16>
    vector.print %c212645413_i32 : i32
    vector.print %c-18558_i16 : i16
    vector.print %c639860254_i64 : i64
    vector.print %c1397839024_i32 : i32
    vector.print %c1850846997_i64 : i64
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %c1178178208_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c2004814501_i32 : i32
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %c1494751341_i64 : i64
    vector.print %c29427_i16 : i16
    vector.print %false : i1
    vector.print %true_19 : i1
    vector.print %true_21 : i1
    vector.print %65 : i32
    vector.print %95 : f16
    vector.print %138 : i32
    vector.print %144 : i32
    vector.print %true_27 : i1
    vector.print %172 : i32
    vector.print %false_30 : i1
    vector.print %true_32 : i1
    vector.print %c0_i16 : i16
    return %c6 : index
  }
}
