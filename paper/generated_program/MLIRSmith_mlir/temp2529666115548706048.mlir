module {
  func.func private @func1(%arg0: memref<6x4xf32>, %arg1: tensor<10xf16>) {
    %cst = arith.constant 5.446400e+04 : f16
    %c2136742139_i32 = arith.constant 2136742139 : i32
    %c310643539_i64 = arith.constant 310643539 : i64
    %c1494315362_i32 = arith.constant 1494315362 : i32
    %c1320143622_i32 = arith.constant 1320143622 : i32
    %true = arith.constant true
    %cst_0 = arith.constant 1.628000e+04 : f16
    %cst_1 = arith.constant 0x4E4E8717 : f32
    %false = arith.constant false
    %cst_2 = arith.constant 4.931200e+04 : f16
    %cst_3 = arith.constant 0x4D29E173 : f32
    %cst_4 = arith.constant 0x4E54EFEA : f32
    %c1610444304_i32 = arith.constant 1610444304 : i32
    %c-3329_i16 = arith.constant -3329 : i16
    %false_5 = arith.constant false
    %true_6 = arith.constant true
    %0 = tensor.empty() : tensor<4x4xi32>
    %1 = tensor.empty() : tensor<10xf16>
    %2 = tensor.empty() : tensor<4xi16>
    %3 = tensor.empty() : tensor<4xf32>
    %4 = tensor.empty() : tensor<4xi64>
    %5 = tensor.empty() : tensor<10xi64>
    %6 = tensor.empty() : tensor<6x4xi16>
    %7 = tensor.empty() : tensor<4xi16>
    %8 = tensor.empty() : tensor<6x4xf32>
    %9 = tensor.empty() : tensor<4x4xi32>
    %10 = tensor.empty() : tensor<4xi32>
    %11 = tensor.empty() : tensor<4xf32>
    %12 = tensor.empty() : tensor<4xi1>
    %13 = tensor.empty() : tensor<4x4xi64>
    %14 = tensor.empty() : tensor<10xi32>
    %15 = tensor.empty() : tensor<4xi32>
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
    %alloc = memref.alloc() : memref<4xf32>
    %alloc_7 = memref.alloc() : memref<10xi32>
    %alloc_8 = memref.alloc() : memref<6x4xf32>
    %alloc_9 = memref.alloc() : memref<10xf32>
    %alloc_10 = memref.alloc() : memref<6x4xf16>
    %alloc_11 = memref.alloc() : memref<4x4xi64>
    %alloc_12 = memref.alloc() : memref<10xi32>
    %alloc_13 = memref.alloc() : memref<4x4xf16>
    %alloc_14 = memref.alloc() : memref<6x4xf32>
    %alloc_15 = memref.alloc() : memref<10xi16>
    %alloc_16 = memref.alloc() : memref<6x4xi1>
    %alloc_17 = memref.alloc() : memref<4xf32>
    %alloc_18 = memref.alloc() : memref<10xi16>
    %alloc_19 = memref.alloc() : memref<10xi64>
    %alloc_20 = memref.alloc() : memref<6x4xi32>
    %alloc_21 = memref.alloc() : memref<4xf16>
    %16 = tensor.empty() : tensor<4x4xi32>
    %17 = linalg.copy ins(%0 : tensor<4x4xi32>) outs(%16 : tensor<4x4xi32>) -> tensor<4x4xi32>
    %18 = tensor.empty() : tensor<4xi64>
    %transposed = linalg.transpose ins(%4 : tensor<4xi64>) outs(%18 : tensor<4xi64>) permutation = [0] 
    %alloc_22 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_18 : memref<10xi16>) outs(%alloc_22 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %270 = vector.broadcast %c1610444304_i32 : i32 to vector<6x4xi32>
        %271 = tensor.empty() : tensor<4x4x4xi32>
        %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %9 : tensor<4x4x4xi32>, tensor<4x4xi32>) outs(%271 : tensor<4x4x4xi32>) {
        ^bb0(%in_41: i32, %in_42: i32, %out: i32):
          %279 = arith.floordivsi %false_5, %false : i1
          %280 = arith.ori %c310643539_i64, %c310643539_i64 : i64
          %281 = arith.divf %cst_1, %cst_1 : f32
          %282 = arith.maxsi %c2136742139_i32, %in_42 : i32
          %283 = math.log10 %1 : tensor<10xf16>
          %284 = index.maxu %c1, %c14
          %285 = memref.realloc %alloc_18 : memref<10xi16> to memref<10xi16>
          %286 = arith.shli %false, %true_6 : i1
          %287 = math.roundeven %8 : tensor<6x4xf32>
          %288 = math.log2 %cst_0 : f16
          %289 = index.divs %c13, %c13
          %290 = arith.shli %c1320143622_i32, %in_41 : i32
          %291 = math.log1p %cst_4 : f32
          %292 = memref.realloc %alloc_15 : memref<10xi16> to memref<8xi16>
          %293 = math.copysign %3, %3 : tensor<4xf32>
          %294 = vector.transpose %270, [1, 0] : vector<6x4xi32> to vector<4x6xi32>
          %295 = vector.broadcast %false_5 : i1 to vector<4xi1>
          %296 = vector.reduction <mul>, %295 : vector<4xi1> into i1
          %297 = arith.addf %cst_4, %cst_4 : f32
          %298 = math.copysign %1, %1 : tensor<10xf16>
          %299 = vector.transpose %270, [1, 0] : vector<6x4xi32> to vector<4x6xi32>
          %300 = math.ctpop %6 : tensor<6x4xi16>
          %301 = vector.broadcast %out : i32 to vector<4xi32>
          %302 = vector.insert %301, %270 [2] : vector<4xi32> into vector<6x4xi32>
          %303 = arith.maxsi %c310643539_i64, %c310643539_i64 : i64
          %304 = math.tan %3 : tensor<4xf32>
          %305 = arith.ceildivsi %false, %false : i1
          %306 = math.floor %cst : f16
          %307 = math.rsqrt %cst_1 : f32
          %308 = index.floordivs %c13, %c7
          %309 = index.sub %c8, %c14
          %310 = vector.create_mask %c8 : vector<4xi1>
          %311 = vector.broadcast %false_5 : i1 to vector<6x4xi1>
          %312 = vector.gather %9[%c6, %284] [%270], %311, %270 : tensor<4x4xi32>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xi32> into vector<6x4xi32>
          %313 = vector.broadcast %cst_4 : f32 to vector<4xf32>
          %314 = vector.fma %313, %313, %313 : vector<4xf32>
          linalg.yield %c1494315362_i32 : i32
        } -> tensor<4x4x4xi32>
        memref.assume_alignment %alloc_8, 8 : memref<6x4xf32>
        %273 = affine.for %arg2 = 0 to 74 iter_args(%arg3 = %c-3329_i16) -> (i16) {
          affine.yield %c-3329_i16 : i16
        }
        %274 = math.ceil %11 : tensor<4xf32>
        %275 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %276 = vector.reduction <minf>, %275 : vector<6xf32> into f32
        %277 = bufferization.clone %alloc_18 : memref<10xi16> to memref<10xi16>
        %278 = arith.ori %true_6, %true_6 : i1
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c14, %c3) to (%c1, %c13) step (%c14, %c5) init (%1) -> tensor<10xf16> {
      %270 = vector.broadcast %cst_3 : f32 to vector<10xf32>
      %271 = arith.cmpi eq, %true, %false_5 : i1
      %272 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
      %273 = vector.outerproduct %270, %270, %272 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
      %274 = arith.negf %cst : f16
      %275 = memref.load %alloc_18[%c7] : memref<10xi16>
      %276 = arith.maxui %c1494315362_i32, %c1320143622_i32 : i32
      %277 = math.log %8 : tensor<6x4xf32>
      %278 = math.log1p %cst_0 : f16
      %279 = arith.cmpi ne, %false_5, %true : i1
      %280 = index.ceildivs %arg2, %c1
      %281 = math.atan2 %8, %8 : tensor<6x4xf32>
      %282 = vector.broadcast %c310643539_i64 : i64 to vector<10x10xi64>
      %283 = vector.broadcast %c310643539_i64 : i64 to vector<10xi64>
      %dest, %accumulated_value = vector.scan <maxsi>, %282, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xi64>, vector<10xi64>
      %284 = math.atan2 %11, %11 : tensor<4xf32>
      %285 = index.casts %c310643539_i64 : i64 to index
      %286 = math.ctpop %c-3329_i16 : i16
      %287 = affine.if affine_set<(d0, d1, d2, d3) : (d0 ceildiv 64 - 64 == 0)>(%c7, %c5, %c1, %c4) -> memref<6x4xf16> {
        %289 = index.sub %c11, %arg2
        %290 = math.ipowi %2, %7 : tensor<4xi16>
        %291 = memref.realloc %alloc_9 : memref<10xf32> to memref<10xf32>
        %292 = arith.shli %c1610444304_i32, %c1610444304_i32 : i32
        %293 = math.cttz %5 : tensor<10xi64>
        %294 = affine.load %alloc_11[%c6, %c2] : memref<4x4xi64>
        %295 = math.tan %cst_2 : f16
        %296 = vector.broadcast %c9 : index to vector<6xindex>
        %297 = vector.broadcast %false : i1 to vector<6xi1>
        %298 = vector.broadcast %c-3329_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_18[%c8] [%296], %297, %298 : memref<10xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        affine.yield %alloc_10 : memref<6x4xf16>
      } else {
        %289 = affine.load %alloc_13[%c14, %c1] : memref<4x4xf16>
        %290 = math.log10 %3 : tensor<4xf32>
        %291 = arith.ori %c310643539_i64, %c310643539_i64 : i64
        %292 = arith.ceildivsi %true_6, %true : i1
        %293 = vector.flat_transpose %270 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %294 = memref.realloc %alloc_12 : memref<10xi32> to memref<4xi32>
        %295 = memref.realloc %alloc_17 : memref<4xf32> to memref<6xf32>
        %296 = math.ctlz %15 : tensor<4xi32>
        affine.yield %alloc_10 : memref<6x4xf16>
      }
      %288 = tensor.empty() : tensor<10xf16>
      scf.reduce(%288)  : tensor<10xf16> {
      ^bb0(%arg4: tensor<10xf16>, %arg5: tensor<10xf16>):
        %289 = bufferization.to_tensor %alloc_18 : memref<10xi16>
        %290 = affine.load %alloc_22[] : memref<i16>
        %291 = index.sizeof
        %292 = math.cos %1 : tensor<10xf16>
        %293 = arith.addi %true, %false_5 : i1
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %270, %270, %cst_4 : vector<10xf32>, vector<10xf32> into f32
        %295 = vector.broadcast %c-3329_i16 : i16 to vector<10xi16>
        %296 = math.fma %cst_1, %cst_4, %cst_1 : f32
        %297 = tensor.empty() : tensor<10xf16>
        scf.reduce.return %297 : tensor<10xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_18[%c12] : memref<10xi16>, vector<6xi16>
    affine.vector_store %20, %alloc_22[] : memref<i16>, vector<6xi16>
    %21 = tensor.empty() : tensor<4xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%2, %21 : tensor<4xi16>, tensor<4xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %24 = vector.broadcast %c2 : index to vector<8xindex>
    %25 = vector.broadcast %true : i1 to vector<8xi1>
    %26 = vector.broadcast %cst_3 : f32 to vector<8xf32>
    vector.scatter %alloc_17[%c1] [%24], %25, %26 : memref<4xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    %27 = vector.broadcast %c1494315362_i32 : i32 to vector<10xi32>
    %28 = vector.broadcast %true_6 : i1 to vector<10xi1>
    %29 = vector.gather %14[%c5] [%27], %28, %27 : tensor<10xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
    %30 = arith.maxf %cst_1, %cst_3 : f32
    %generated = tensor.generate %c14 {
    ^bb0(%arg2: index):
      %270 = index.casts %true_6 : i1 to index
      %extracted = tensor.extract %7[%c3] : tensor<4xi16>
      %271 = index.casts %c-3329_i16 : i16 to index
      %272 = math.floor %11 : tensor<4xf32>
      tensor.yield %cst_2 : f16
    } : tensor<?xf16>
    %31 = arith.addi %true_6, %false_5 : i1
    %32 = math.cos %cst_0 : f16
    %33 = scf.if %true_6 -> (i1) {
      %270 = math.atan %cst_0 : f16
      %271 = vector.insert %c-3329_i16, %20 [2] : i16 into vector<6xi16>
      %272 = memref.realloc %alloc_9 : memref<10xf32> to memref<4xf32>
      %273 = scf.execute_region -> memref<10xf16> {
        %278 = math.atan2 %11, %11 : tensor<4xf32>
        %279 = math.fma %11, %3, %3 : tensor<4xf32>
        %280 = vector.broadcast %cst_4 : f32 to vector<6x4xf32>
        %281 = vector.fma %280, %280, %280 : vector<6x4xf32>
        %c-4173_i16 = arith.constant -4173 : i16
        %282 = index.maxs %c6, %c0
        %283 = bufferization.clone %alloc_8 : memref<6x4xf32> to memref<6x4xf32>
        %284 = math.roundeven %8 : tensor<6x4xf32>
        %from_elements_41 = tensor.from_elements %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64, %c310643539_i64 : tensor<4x4xi64>
        %alloc_42 = memref.alloc() : memref<4x4xi32>
        memref.tensor_store %17, %alloc_42 : memref<4x4xi32>
        %285 = vector.multi_reduction <or>, %27, %29 [] : vector<10xi32> to vector<10xi32>
        %alloca_43 = memref.alloca() : memref<6x4xi16>
        %286 = arith.negf %cst_4 : f32
        %287 = math.sqrt %3 : tensor<4xf32>
        %288 = math.round %8 : tensor<6x4xf32>
        %289 = math.ceil %11 : tensor<4xf32>
        %290 = math.ctpop %23 : tensor<i16>
        %alloc_44 = memref.alloc() : memref<10xf16>
        scf.yield %alloc_44 : memref<10xf16>
      }
      %274 = vector.transpose %27, [0] : vector<10xi32> to vector<10xi32>
      %275 = math.fpowi %3, %15 : tensor<4xf32>, tensor<4xi32>
      %276 = math.atan %cst_1 : f32
      %277 = math.tan %cst_3 : f32
      scf.yield %false_5 : i1
    } else {
      %270 = vector.shuffle %29, %27 [0, 1, 3, 7, 10, 13, 15, 17, 18] : vector<10xi32>, vector<10xi32>
      %271 = math.absf %11 : tensor<4xf32>
      %272 = math.ceil %cst_2 : f16
      %273 = math.log1p %11 : tensor<4xf32>
      %from_elements_41 = tensor.from_elements %cst_2, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0 : tensor<10xf16>
      %274 = arith.cmpi ult, %c1610444304_i32, %c1610444304_i32 : i32
      %275 = scf.if %true_6 -> (i16) {
        %277 = arith.addi %true_6, %false_5 : i1
        %278 = arith.maxsi %c1610444304_i32, %c1494315362_i32 : i32
        %279 = arith.cmpf false, %cst_3, %cst_3 : f32
        %280 = index.add %c5, %c13
        %281 = vector.multi_reduction <minui>, %29, %c1494315362_i32 [0] : vector<10xi32> to i32
        %from_elements_42 = tensor.from_elements %c-3329_i16, %c-3329_i16, %c-3329_i16, %c-3329_i16 : tensor<4xi16>
        %282 = index.casts %280 : index to i32
        %283 = vector.multi_reduction <xor>, %28, %false [0] : vector<10xi1> to i1
        scf.yield %c-3329_i16 : i16
      } else {
        %277 = math.log10 %from_elements_41 : tensor<10xf16>
        %278 = arith.addi %false_5, %false : i1
        %alloc_42 = memref.alloc() : memref<4xi64>
        memref.tensor_store %transposed, %alloc_42 : memref<4xi64>
        %279 = math.cos %11 : tensor<4xf32>
        %280 = arith.shrsi %c1610444304_i32, %c1320143622_i32 : i32
        %281 = math.powf %cst_3, %cst_1 : f32
        %282 = memref.realloc %alloc_7 : memref<10xi32> to memref<8xi32>
        %283 = vector.extract %27[8] : vector<10xi32>
        scf.yield %c-3329_i16 : i16
      }
      %276 = arith.maxui %c1494315362_i32, %c2136742139_i32 : i32
      scf.yield %true : i1
    }
    %34 = vector.shuffle %28, %28 [0, 1, 2, 3, 5, 7, 8, 11, 12, 18, 19] : vector<10xi1>, vector<10xi1>
    %35 = vector.extract %29[6] : vector<10xi32>
    %36 = vector.insert %c1610444304_i32, %27 [4] : i32 into vector<10xi32>
    %37 = math.cttz %c1494315362_i32 : i32
    %38 = arith.divf %cst_0, %cst_2 : f16
    %39 = memref.load %alloc_15[%c8] : memref<10xi16>
    %40 = arith.ceildivsi %c1610444304_i32, %c1494315362_i32 : i32
    %41 = tensor.empty() : tensor<10xf32>
    %42 = math.log2 %1 : tensor<10xf16>
    %43 = memref.load %alloc[%c2] : memref<4xf32>
    %44 = vector.broadcast %cst_4 : f32 to vector<6x4xf32>
    %45 = vector.fma %44, %44, %44 : vector<6x4xf32>
    %46 = math.sqrt %cst_1 : f32
    %47 = index.castu %c5 : index to i32
    %48 = math.expm1 %cst_3 : f32
    %49 = arith.addf %cst_0, %cst_0 : f16
    %50 = math.absf %3 : tensor<4xf32>
    %alloc_23 = memref.alloc() : memref<10xi1>
    %51 = vector.reduction <or>, %27 : vector<10xi32> into i32
    %inserted = tensor.insert %c2136742139_i32 into %9[%c2, %c2] : tensor<4x4xi32>
    %52 = math.log2 %cst_3 : f32
    %53 = vector.splat %true : vector<4xi1>
    %54 = index.add %c2, %c8
    %55 = scf.execute_region -> f16 {
      %270 = index.sub %c6, %c9
      %271 = arith.muli %c1494315362_i32, %c2136742139_i32 : i32
      %272 = math.ipowi %14, %14 : tensor<10xi32>
      %273 = arith.divf %cst_3, %cst_3 : f32
      %274 = memref.realloc %alloc_7 : memref<10xi32> to memref<4xi32>
      %275 = arith.addi %c1494315362_i32, %c1610444304_i32 : i32
      %276 = math.tanh %11 : tensor<4xf32>
      %277 = index.maxs %c3, %c8
      %278 = index.add %c3, %c1
      %279 = vector.broadcast %cst_2 : f16 to vector<f16>
      vector.transfer_write %279, %alloc_21[%c7] : vector<f16>, memref<4xf16>
      %280 = index.maxu %c14, %278
      scf.if %33 {
        %285 = arith.maxui %false, %33 : i1
        %286 = math.powf %cst_1, %cst_3 : f32
        %287 = vector.splat %c-3329_i16 : vector<4xi16>
        %288 = math.fpowi %41, %14 : tensor<10xf32>, tensor<10xi32>
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 4, d1 - 128, (d1 - 128) * 16)>(%c14, %c13, %c2, %c2)
        %290 = index.divu %c1, %54
        %291 = arith.shli %c1610444304_i32, %c2136742139_i32 : i32
        %292 = math.fpowi %1, %14 : tensor<10xf16>, tensor<10xi32>
      }
      %281 = math.log1p %cst_0 : f16
      %282 = math.log2 %cst_0 : f16
      %283 = arith.remf %cst_0, %cst_0 : f16
      %284 = arith.shrsi %c310643539_i64, %c310643539_i64 : i64
      scf.yield %cst_2 : f16
    }
    %56 = scf.if %33 -> (memref<10xi64>) {
      scf.if %false {
        %278 = math.expm1 %1 : tensor<10xf16>
        %279 = arith.divf %55, %cst_0 : f16
        %280 = math.atan2 %cst, %cst_2 : f16
        %281 = arith.subi %c2136742139_i32, %c1494315362_i32 : i32
        %282 = tensor.empty() : tensor<10xf32>
        %283 = math.ipowi %16, %0 : tensor<4x4xi32>
        %284 = arith.shrsi %c1494315362_i32, %c2136742139_i32 : i32
        %285 = vector.flat_transpose %27 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      } else {
        %278 = arith.floordivsi %c1494315362_i32, %c1494315362_i32 : i32
        %279 = arith.divf %cst_0, %cst_0 : f16
        %280 = math.log2 %11 : tensor<4xf32>
        %281 = math.log10 %55 : f16
        %282 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %282, %alloc_10[%c4, %54] : vector<f16>, memref<6x4xf16>
        %283 = math.cttz %14 : tensor<10xi32>
        %284 = memref.load %alloc_13[%c2, %c0] : memref<4x4xf16>
        %285 = arith.shli %c1610444304_i32, %c1320143622_i32 : i32
      }
      %270 = arith.ceildivsi %false_5, %33 : i1
      %271 = vector.broadcast %c2136742139_i32 : i32 to vector<10x10xi32>
      %272 = vector.outerproduct %27, %27, %271 {kind = #vector.kind<xor>} : vector<10xi32>, vector<10xi32>
      %273 = math.log %cst_0 : f16
      %274 = math.log %1 : tensor<10xf16>
      %275 = vector.splat %true : vector<4x4xi1>
      %276 = math.fpowi %3, %15 : tensor<4xf32>, tensor<4xi32>
      %277 = math.tan %8 : tensor<6x4xf32>
      scf.yield %alloc_19 : memref<10xi64>
    } else {
      %270 = arith.maxsi %c1320143622_i32, %c1494315362_i32 : i32
      %271 = math.round %cst_4 : f32
      %272 = bufferization.clone %alloc_17 : memref<4xf32> to memref<4xf32>
      %273 = affine.apply affine_map<(d0, d1) -> ((d1 - 132) mod 32)>(%c8, %c14)
      %274 = math.tan %cst_4 : f32
      %275 = math.log10 %cst_3 : f32
      memref.tensor_store %13, %alloc_11 : memref<4x4xi64>
      %276 = index.ceildivu %c4, %c13
      scf.yield %alloc_19 : memref<10xi64>
    }
    %57 = arith.andi %c2136742139_i32, %c1494315362_i32 : i32
    %58 = scf.execute_region -> tensor<10xi64> {
      %270 = math.tan %cst_2 : f16
      bufferization.dealloc_tensor %3 : tensor<4xf32>
      %271 = arith.shrui %c310643539_i64, %c310643539_i64 : i64
      %272 = affine.for %arg2 = 0 to 72 iter_args(%arg3 = %c13) -> (index) {
        affine.yield %c14 : index
      }
      %273 = arith.ori %c1494315362_i32, %c2136742139_i32 : i32
      %274 = arith.cmpf one, %cst_4, %cst_3 : f32
      affine.store %cst_2, %alloc_13[%c10, %c9] : memref<4x4xf16>
      %275 = arith.minsi %true, %false_5 : i1
      %from_elements_41 = tensor.from_elements %c1494315362_i32, %c1610444304_i32, %c1494315362_i32, %c1610444304_i32 : tensor<4xi32>
      %276 = arith.shli %33, %true : i1
      %277 = arith.muli %true_6, %true_6 : i1
      %278 = arith.shli %c1610444304_i32, %c1320143622_i32 : i32
      %279 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, d1 mod 8, (d0 + d1) mod 16, (d1 mod 8 - 4) ceildiv 8)>(%54, %c8, %c10, %c7)
      %alloc_42 = memref.alloc() : memref<i16>
      memref.copy %alloc_22, %alloc_42 : memref<i16> to memref<i16>
      %cst_43 = arith.constant 2.01597722E+9 : f32
      %280 = math.log10 %1 : tensor<10xf16>
      scf.yield %5 : tensor<10xi64>
    }
    %cst_24 = arith.constant 1.80709299E+9 : f32
    %59 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 32)>(%54, %c13, %c11, %c0)
    %60 = affine.max affine_map<(d0, d1, d2) -> (d0, d2 + 1)>(%c5, %c4, %c4)
    %61 = arith.subi %false, %true : i1
    %62 = arith.remf %cst_0, %55 : f16
    %63 = math.log10 %cst_1 : f32
    %64 = vector.broadcast %cst_4 : f32 to vector<10xf32>
    %65 = vector.fma %64, %64, %64 : vector<10xf32>
    %66 = arith.remf %cst_3, %cst_1 : f32
    %67 = math.fpowi %1, %14 : tensor<10xf16>, tensor<10xi32>
    %68 = arith.andi %c1320143622_i32, %c1610444304_i32 : i32
    %69 = index.ceildivs %c10, %c5
    %70 = index.ceildivu %c13, %c8
    %71 = arith.addi %33, %false : i1
    %72 = math.floor %cst_3 : f32
    %73 = index.casts %c2136742139_i32 : i32 to index
    %74 = vector.splat %cst_2 : vector<6x4xf16>
    %75 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
    %76 = math.tan %8 : tensor<6x4xf32>
    %77 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %27, %27, %c1610444304_i32 : vector<10xi32>, vector<10xi32> into i32
    %true_25 = index.bool.constant true
    %from_elements = tensor.from_elements %cst, %cst, %cst_2, %cst_2, %cst_0, %cst, %55, %cst_0, %cst, %55, %55, %55, %55, %cst_0, %cst_0, %55 : tensor<4x4xf16>
    %78 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %28, %28, %false_5 : vector<10xi1>, vector<10xi1> into i1
    %79 = arith.andi %c1610444304_i32, %c1610444304_i32 : i32
    %generated_26 = tensor.generate %c9 {
    ^bb0(%arg2: index):
      %270 = math.round %cst_0 : f16
      %271 = math.roundeven %11 : tensor<4xf32>
      %272 = math.atan2 %1, %1 : tensor<10xf16>
      %true_41 = arith.constant true
      tensor.yield %cst_3 : f32
    } : tensor<?xf32>
    %80 = tensor.empty() : tensor<4x4xi16>
    affine.for %arg2 = 0 to 32 {
    }
    %81 = index.castu %c11 : index to i32
    %82 = math.powf %1, %1 : tensor<10xf16>
    %83 = vector.shuffle %27, %29 [1, 3, 9, 11, 13, 14, 17, 19] : vector<10xi32>, vector<10xi32>
    %84 = arith.maxui %true_25, %true_25 : i1
    %85 = math.tanh %1 : tensor<10xf16>
    %86 = index.maxs %59, %c12
    scf.execute_region {
      %270 = arith.floordivsi %true_6, %false_5 : i1
      %271 = math.powf %1, %1 : tensor<10xf16>
      %272 = vector.extract_strided_slice %29 {offsets = [0], sizes = [10], strides = [1]} : vector<10xi32> to vector<10xi32>
      %273 = math.log %cst_0 : f16
      %274 = math.fma %cst_0, %cst, %cst : f16
      %275 = arith.remf %cst_2, %cst_0 : f16
      %276 = vector.splat %c-3329_i16 : vector<4x4xi16>
      %277 = affine.load %alloc_11[%c5, %c7] : memref<4x4xi64>
      %278 = arith.cmpf ult, %55, %cst_0 : f16
      %279 = arith.maxf %cst_4, %cst_3 : f32
      %280 = vector.flat_transpose %27 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %281 = math.log %cst_0 : f16
      %alloc_41 = memref.alloc() : memref<4xf32>
      %282 = vector.create_mask %59, %c2 : vector<6x4xi1>
      %283 = math.ipowi %22, %22 : tensor<i16>
      %284 = vector.insert %c-3329_i16, %20 [0] : i16 into vector<6xi16>
      scf.yield
    }
    %87 = arith.cmpf ole, %cst_0, %cst : f16
    %88 = arith.divf %cst_4, %cst_4 : f32
    %89 = arith.minsi %c-3329_i16, %c-3329_i16 : i16
    %90 = math.fpowi %cst_0, %c1610444304_i32 : f16, i32
    %91 = arith.maxf %cst_4, %cst_4 : f32
    %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
    %92 = vector.insert %cst_3, %65 [8] : f32 into vector<10xf32>
    %93 = math.round %cst_2 : f16
    %94 = bufferization.clone %alloc_20 : memref<6x4xi32> to memref<6x4xi32>
    %95 = math.atan2 %8, %8 : tensor<6x4xf32>
    %96 = math.log2 %cst : f16
    %97 = arith.muli %c310643539_i64, %c310643539_i64 : i64
    %98 = math.rsqrt %11 : tensor<4xf32>
    %99 = math.atan2 %11, %11 : tensor<4xf32>
    %100 = vector.insertelement %c1320143622_i32, %29[%c15 : index] : vector<10xi32>
    %101 = arith.addi %c-3329_i16, %c-3329_i16 : i16
    %102 = arith.cmpi ne, %true, %true_6 : i1
    %103 = vector.broadcast %55 : f16 to vector<6xf16>
    %104 = vector.broadcast %false_5 : i1 to vector<6xi1>
    %105 = vector.maskedload %alloc_13[%c1, %c0], %104, %103 : memref<4x4xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %106 = index.ceildivs %c10, %86
    %107 = index.ceildivs %c1, %59
    %108 = math.log10 %41 : tensor<10xf32>
    %109 = arith.floordivsi %true_6, %true : i1
    %110 = math.sqrt %cst_3 : f32
    %111 = math.copysign %11, %11 : tensor<4xf32>
    %112 = math.ctpop %15 : tensor<4xi32>
    %alloc_27 = memref.alloc() : memref<i16>
    memref.copy %alloc_22, %alloc_27 : memref<i16> to memref<i16>
    %113 = arith.maxf %cst_3, %cst_3 : f32
    %114 = vector.insertelement %33, %104[%c6 : index] : vector<6xi1>
    %115 = affine.load %alloc_22[] : memref<i16>
    %alloc_28 = memref.alloc() : memref<4x4xi32>
    memref.tensor_store %17, %alloc_28 : memref<4x4xi32>
    memref.assume_alignment %94, 8 : memref<6x4xi32>
    %116 = arith.divf %55, %cst : f16
    %117 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
    %118 = affine.max affine_map<(d0, d1, d2) -> ((d1 ceildiv 2) floordiv 64)>(%86, %c11, %c12)
    %119 = vector.splat %cst_4 : vector<4xf32>
    %120 = index.ceildivs %70, %c14
    %121 = tensor.empty(%70) : tensor<?xi1>
    %122 = vector.splat %cst_2 : vector<4x4xf16>
    %123 = tensor.empty(%c14, %107) : tensor<?x?xi1>
    %124 = arith.ori %true, %true : i1
    %125 = math.tan %cst_3 : f32
    %126 = vector.shuffle %104, %104 [3, 4, 5, 6, 8, 9, 10, 11] : vector<6xi1>, vector<6xi1>
    %alloc_29 = memref.alloc() : memref<i16>
    memref.copy %alloc_22, %alloc_29 : memref<i16> to memref<i16>
    %127 = index.add %c10, %60
    %128 = math.copysign %3, %3 : tensor<4xf32>
    %129 = math.atan2 %1, %1 : tensor<10xf16>
    %expanded_30 = tensor.expand_shape %14 [[0, 1]] : tensor<10xi32> into tensor<10x1xi32>
    %130 = math.log10 %cst_0 : f16
    %c1_i16 = arith.constant 1 : i16
    %131 = vector.transfer_read %7[%54], %c1_i16 : tensor<4xi16>, vector<i16>
    %132 = arith.ori %true_6, %false_5 : i1
    %133 = index.castu %120 : index to i32
    %134 = math.log %cst_4 : f32
    %135 = index.sub %c7, %107
    %136 = math.fpowi %cst_1, %c1494315362_i32 : f32, i32
    %137 = arith.addi %c1494315362_i32, %c1320143622_i32 : i32
    %138 = vector.create_mask %107 : vector<10xi1>
    %139 = vector.broadcast %115 : i16 to vector<6x6xi16>
    %140 = vector.outerproduct %20, %20, %139 {kind = #vector.kind<and>} : vector<6xi16>, vector<6xi16>
    %141 = arith.subi %33, %true_25 : i1
    %142 = arith.cmpf oeq, %cst_2, %55 : f16
    %143 = arith.subi %c1320143622_i32, %c2136742139_i32 : i32
    %144 = vector.broadcast %c1610444304_i32 : i32 to vector<6xi32>
    vector.transfer_write %144, %alloc_20[%107, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, memref<6x4xi32>
    %145 = arith.maxsi %c1320143622_i32, %c1610444304_i32 : i32
    %146 = arith.ceildivsi %c1494315362_i32, %c1494315362_i32 : i32
    %false_31 = arith.constant false
    %147 = vector.transfer_read %12[%c14], %false_31 : tensor<4xi1>, vector<i1>
    %148 = arith.ori %33, %false : i1
    %149 = math.roundeven %8 : tensor<6x4xf32>
    %150 = arith.muli %false_5, %false_31 : i1
    %151 = math.ipowi %expanded_30, %expanded_30 : tensor<10x1xi32>
    %152 = vector.extract %105[1] : vector<6xf16>
    %153 = vector.broadcast %cst_4 : f32 to vector<4xf32>
    %154 = vector.insert %153, %44 [3] : vector<4xf32> into vector<6x4xf32>
    %155 = math.round %55 : f16
    %156 = affine.if affine_set<(d0) : (d0 - d0 ceildiv 16 == 0, d0 - (d0 - 128) - 384 >= 0, d0 >= 0)>(%c5) -> f32 {
      %270 = affine.min affine_map<(d0, d1) -> (-d1 + d1 mod 16, -(d1 ceildiv 64), d0 + 1)>(%c15, %c13)
      %271 = vector.broadcast %false : i1 to vector<6x6xi1>
      %272 = vector.outerproduct %104, %104, %271 {kind = #vector.kind<xor>} : vector<6xi1>, vector<6xi1>
      %273 = math.log10 %cst_1 : f32
      %274 = index.ceildivs %c4, %c2
      %275 = arith.xori %true_6, %false_5 : i1
      %276 = math.tanh %1 : tensor<10xf16>
      vector.print %64 : vector<10xf32>
      %277 = arith.shrsi %false, %false_5 : i1
      affine.yield %cst_1 : f32
    } else {
      %270 = math.absf %cst_1 : f32
      %271 = affine.for %arg2 = 0 to 47 iter_args(%arg3 = %from_elements) -> (tensor<4x4xf16>) {
        affine.yield %from_elements : tensor<4x4xf16>
      }
      %272 = memref.load %alloc_17[%c2] : memref<4xf32>
      %273 = math.tan %1 : tensor<10xf16>
      %274 = index.add %60, %c14
      %275 = math.expm1 %8 : tensor<6x4xf32>
      %276 = math.ceil %3 : tensor<4xf32>
      %277 = tensor.empty() : tensor<10xi1>
      affine.yield %cst_4 : f32
    }
    %157 = arith.maxsi %false_5, %33 : i1
    %158 = tensor.empty() : tensor<10xi16>
    %159 = vector.broadcast %c1_i16 : i16 to vector<10xi16>
    %160 = vector.gather %158[%c8] [%29], %28, %159 : tensor<10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    %161 = index.ceildivu %c13, %73
    %from_elements_32 = tensor.from_elements %cst, %55, %cst_0, %cst_2, %55, %cst_0, %cst, %cst_0, %cst, %55, %cst_2, %cst_0, %cst_0, %55, %55, %cst : tensor<4x4xf16>
    %162 = arith.remf %cst_3, %cst_3 : f32
    %163 = index.maxu %161, %c7
    %164 = arith.cmpi sgt, %c1494315362_i32, %c1320143622_i32 : i32
    %165 = arith.cmpi uge, %false, %33 : i1
    scf.if %false_5 {
      %270 = vector.matrix_multiply %144, %27 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<6xi32>, vector<10xi32>) -> vector<15xi32>
      %271 = math.expm1 %3 : tensor<4xf32>
      %272 = math.log %cst_3 : f32
      %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<4x4xi32> into tensor<16xi32>
      %273 = math.cttz %c1494315362_i32 : i32
      vector.print %29 : vector<10xi32>
      scf.index_switch %c0 
      case 1 {
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %104, %104, %false_31 : vector<6xi1>, vector<6xi1> into i1
        %276 = arith.cmpi ne, %c1320143622_i32, %c1610444304_i32 : i32
        %277 = math.round %11 : tensor<4xf32>
        %278 = arith.shli %true, %true_6 : i1
        %279 = vector.insertelement %55, %103[%60 : index] : vector<6xf16>
        %280 = vector.transpose %144, [0] : vector<6xi32> to vector<6xi32>
        %281 = math.ctpop %c1320143622_i32 : i32
        %282 = arith.floordivsi %c2136742139_i32, %c1320143622_i32 : i32
        %283 = memref.realloc %alloc_12 : memref<10xi32> to memref<8xi32>
        memref.tensor_store %3, %alloc_17 : memref<4xf32>
        %284 = math.floor %11 : tensor<4xf32>
        %285 = vector.splat %c1320143622_i32 : vector<6x4xi32>
        bufferization.dealloc_tensor %5 : tensor<10xi64>
        %286 = arith.minsi %c310643539_i64, %c310643539_i64 : i64
        %287 = affine.load %alloc_11[%c15, %c4] : memref<4x4xi64>
        %288 = math.ctpop %false_5 : i1
        scf.yield
      }
      default {
        %275 = math.rsqrt %8 : tensor<6x4xf32>
        %276 = affine.load %alloc_9[%c7] : memref<10xf32>
        %277 = arith.remf %cst_4, %cst_1 : f32
        %278 = vector.broadcast %70 : index to vector<6xindex>
        vector.scatter %alloc_10[%c4, %c2] [%278], %104, %103 : memref<6x4xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %279 = arith.remf %cst_2, %cst_2 : f16
        %280 = vector.broadcast %c-3329_i16 : i16 to vector<6x6xi16>
        %281 = vector.outerproduct %20, %20, %280 {kind = #vector.kind<mul>} : vector<6xi16>, vector<6xi16>
        %cst_41 = arith.constant 0x4E1185BA : f32
        %282 = vector.shuffle %138, %104 [0, 1, 2, 5, 13, 14] : vector<10xi1>, vector<6xi1>
        %283 = math.ctpop %115 : i16
        %284 = math.atan2 %cst, %cst_0 : f16
        %285 = index.add %c4, %c7
        %286 = index.add %c15, %c0
        %alloc_42 = memref.alloc() : memref<4xi64>
        memref.tensor_store %4, %alloc_42 : memref<4xi64>
        %287 = math.ctlz %4 : tensor<4xi64>
        memref.tensor_store %22, %alloc_22 : memref<i16>
        %288 = vector.insert %153, %117 [1] : vector<4xf32> into vector<4x4xf32>
      }
      %274 = index.maxs %135, %60
    }
    %166 = math.expm1 %3 : tensor<4xf32>
    %167 = math.fpowi %41, %14 : tensor<10xf32>, tensor<10xi32>
    memref.assume_alignment %alloc_18, 2 : memref<10xi16>
    %168 = arith.muli %c1494315362_i32, %c2136742139_i32 : i32
    %169 = math.log2 %cst_1 : f32
    %alloca = memref.alloca() : memref<6x4xf32>
    %170 = arith.negf %cst : f16
    scf.execute_region {
      %270 = math.fma %expanded, %expanded, %expanded : tensor<4x1xf32>
      %271 = vector.create_mask %120, %135 : vector<6x4xi1>
      %272 = vector.load %alloc[%c3] : memref<4xf32>, vector<10xf32>
      %273 = arith.muli %false_5, %true : i1
      %274 = arith.maxsi %c1_i16, %115 : i16
      %275 = math.rsqrt %cst_2 : f16
      %276 = arith.addf %cst, %cst : f16
      %277 = math.tanh %1 : tensor<10xf16>
      %278 = arith.addf %cst_0, %cst_2 : f16
      %279 = arith.remf %cst_3, %cst_1 : f32
      %280 = math.fpowi %11, %15 : tensor<4xf32>, tensor<4xi32>
      %281 = arith.addf %55, %55 : f16
      %282 = index.divu %69, %c8
      %283 = math.expm1 %cst : f16
      %284 = scf.if %33 -> (f32) {
        %286 = index.maxs %69, %c14
        %287 = math.ceil %55 : f16
        %288 = vector.create_mask %c9, %c1 : vector<6x4xi1>
        %289 = math.tan %8 : tensor<6x4xf32>
        %290 = math.roundeven %1 : tensor<10xf16>
        %291 = arith.cmpi ult, %c310643539_i64, %c310643539_i64 : i64
        %292 = vector.flat_transpose %103 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %293 = math.expm1 %cst_1 : f32
        scf.yield %cst_1 : f32
      } else {
        %286 = vector.splat %true_25 : vector<4x4xi1>
        %287 = arith.cmpi uge, %c2136742139_i32, %c1610444304_i32 : i32
        %288 = math.ipowi %10, %10 : tensor<4xi32>
        %289 = vector.broadcast %c10 : index to vector<4xindex>
        %290 = vector.broadcast %true_25 : i1 to vector<4xi1>
        vector.scatter %alloc_17[%c1] [%289], %290, %153 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %291 = math.log10 %cst_3 : f32
        %292 = vector.extract_strided_slice %138 {offsets = [2], sizes = [2], strides = [1]} : vector<10xi1> to vector<2xi1>
        %293 = arith.subi %c2136742139_i32, %c1320143622_i32 : i32
        %alloc_41 = memref.alloc() : memref<6x4xi16>
        memref.tensor_store %6, %alloc_41 : memref<6x4xi16>
        scf.yield %cst_1 : f32
      }
      %285 = math.tan %cst_1 : f32
      scf.yield
    }
    %171 = index.maxs %c14, %c0
    %172 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d1 * 2, d3 + d0 ceildiv 4)>(%c1, %c3, %86, %c6)
    %173 = math.ceil %11 : tensor<4xf32>
    %174 = vector.broadcast %true_6 : i1 to vector<10xi1>
    %alloc_33 = memref.alloc() : memref<4xi64>
    %175 = math.log10 %from_elements_32 : tensor<4x4xf16>
    %176 = arith.maxsi %c310643539_i64, %c310643539_i64 : i64
    %177 = arith.shrui %false, %true_6 : i1
    %178 = arith.shrui %115, %c1_i16 : i16
    %179 = index.maxs %70, %c0
    %180 = arith.shrui %c-3329_i16, %c1_i16 : i16
    %181 = index.sub %c13, %c10
    %182 = arith.mulf %cst_2, %cst_0 : f16
    %183 = arith.remf %cst_1, %cst_1 : f32
    %184 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 32, d1, d1, d0 - 128)>(%c12, %c8, %60, %127)
    %185 = vector.broadcast %107 : index to vector<10xindex>
    vector.scatter %alloc_17[%c3] [%185], %28, %65 : memref<4xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
    %186 = arith.ceildivsi %c2136742139_i32, %c1610444304_i32 : i32
    affine.for %arg2 = 0 to 109 {
    }
    %187 = math.powf %8, %8 : tensor<6x4xf32>
    %188 = arith.shrsi %false_5, %false : i1
    %189 = vector.broadcast %c310643539_i64 : i64 to vector<i64>
    %190 = vector.transfer_write %189, %13[%184, %c6] : vector<i64>, tensor<4x4xi64>
    %c1685111648_i32 = arith.constant 1685111648 : i32
    %191 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 + d1), d1 mod 4)>(%c15, %120, %163, %60)
    %192 = affine.if affine_set<(d0, d1, d2, d3) : (-(d2 floordiv 8 + 4) >= 0, d2 floordiv 8 + d2 floordiv 8 + 4 - 4 == 0, d2 floordiv 8 >= 0, d1 * -64 + 128 == 0)>(%c8, %c3, %c10, %c15) -> i16 {
      %extracted = tensor.extract %generated_26[%c0] : tensor<?xf32>
      scf.execute_region {
        %276 = arith.maxf %extracted, %cst_3 : f32
        %277 = arith.remf %extracted, %extracted : f32
        %alloc_41 = memref.alloc() : memref<4x4xi16>
        %278 = memref.load %56[%c0] : memref<10xi64>
        %279 = vector.flat_transpose %64 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %280 = index.ceildivs %106, %c1
        %281 = arith.divf %cst_4, %cst_4 : f32
        %alloca_42 = memref.alloca() : memref<4x4xf32>
        %282 = arith.negf %cst_4 : f32
        %283 = index.castu %59 : index to i32
        %284 = arith.minsi %false_31, %true_6 : i1
        %285 = arith.shrui %true, %true : i1
        %286 = arith.maxsi %c1610444304_i32, %c1494315362_i32 : i32
        %287 = math.expm1 %3 : tensor<4xf32>
        %288 = arith.ceildivsi %115, %115 : i16
        %289 = math.atan2 %from_elements, %from_elements_32 : tensor<4x4xf16>
        scf.yield
      }
      %270 = math.round %3 : tensor<4xf32>
      %271 = arith.ceildivsi %false, %true : i1
      %272 = math.log2 %11 : tensor<4xf32>
      %273 = math.expm1 %8 : tensor<6x4xf32>
      %274 = index.sub %69, %c7
      %275 = affine.if affine_set<(d0, d1) : (-(d1 floordiv 32) + 4 >= 0)>(%c12, %c6) -> i1 {
        %276 = index.sub %c0, %c2
        %277 = math.tan %cst_3 : f32
        %278 = vector.broadcast %c7 : index to vector<10xindex>
        vector.scatter %alloc_12[%c9] [%278], %174, %29 : memref<10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %279 = index.ceildivs %135, %120
        %280 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %281 = vector.fma %280, %64, %64 : vector<10xf32>
        %282 = arith.shrsi %33, %true_6 : i1
        %283 = math.round %3 : tensor<4xf32>
        %284 = index.ceildivs %279, %c0
        affine.yield %true_6 : i1
      } else {
        %276 = index.ceildivu %60, %106
        %277 = vector.broadcast %extracted : f32 to vector<10x10xf32>
        %278 = vector.outerproduct %65, %65, %277 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
        %alloc_41 = memref.alloc() : memref<4xi1>
        memref.tensor_store %12, %alloc_41 : memref<4xi1>
        %279 = vector.broadcast %c2136742139_i32 : i32 to vector<6x6xi32>
        %280 = vector.outerproduct %144, %144, %279 {kind = #vector.kind<or>} : vector<6xi32>, vector<6xi32>
        %281 = memref.realloc %alloc_21 : memref<4xf16> to memref<8xf16>
        %282 = vector.bitcast %159 : vector<10xi16> to vector<10xi16>
        %c27321_i16 = arith.constant 27321 : i16
        %283 = math.ctlz %transposed : tensor<4xi64>
        affine.yield %true_25 : i1
      }
      affine.yield %c1_i16 : i16
    } else {
      %270 = arith.minsi %c310643539_i64, %c310643539_i64 : i64
      %271 = math.ipowi %6, %6 : tensor<6x4xi16>
      %alloca_41 = memref.alloca() : memref<4x4xf16>
      bufferization.dealloc_tensor %80 : tensor<4x4xi16>
      %272 = index.ceildivu %118, %179
      %273 = index.add %54, %c6
      %274 = index.casts %106 : index to i32
      %275 = affine.for %arg2 = 0 to 93 iter_args(%arg3 = %107) -> (index) {
        affine.yield %c2 : index
      }
      affine.yield %c-3329_i16 : i16
    }
    %193 = math.copysign %cst_1, %cst_1 : f32
    %194 = index.casts %c2136742139_i32 : i32 to index
    %195 = math.round %8 : tensor<6x4xf32>
    %196 = affine.if affine_set<(d0, d1, d2) : ((d0 mod 2) * -2 == 0, d1 - 80 >= 0, (d1 mod 2) * 32 >= 0, d0 + 2 >= 0)>(%c9, %c8, %c4) -> f32 {
      %270 = math.ceil %cst_1 : f32
      %271 = scf.if %false_5 -> (memref<6x4xi1>) {
        %276 = math.ceil %3 : tensor<4xf32>
        %277 = math.fpowi %cst_0, %c1320143622_i32 : f16, i32
        %278 = index.sub %194, %59
        %279 = index.castu %73 : index to i32
        %280 = arith.maxsi %c1610444304_i32, %c1320143622_i32 : i32
        %281 = math.atan2 %cst, %cst_0 : f16
        %282 = arith.subi %c1610444304_i32, %c1320143622_i32 : i32
        %283 = math.log %11 : tensor<4xf32>
        scf.yield %alloc_16 : memref<6x4xi1>
      } else {
        %276 = math.roundeven %cst_1 : f32
        %277 = arith.floordivsi %c310643539_i64, %c310643539_i64 : i64
        %278 = arith.xori %115, %c-3329_i16 : i16
        %279 = index.casts %69 : index to i32
        %from_elements_43 = tensor.from_elements %c1320143622_i32, %c1494315362_i32, %c1610444304_i32, %c1494315362_i32, %c1494315362_i32, %c1610444304_i32, %c1494315362_i32, %c1320143622_i32, %c1494315362_i32, %c1494315362_i32, %c1320143622_i32, %c2136742139_i32, %c1610444304_i32, %c1320143622_i32, %c1320143622_i32, %c1494315362_i32 : tensor<4x4xi32>
        %280 = math.ipowi %5, %5 : tensor<10xi64>
        %281 = math.expm1 %cst_3 : f32
        %alloca_44 = memref.alloca() : memref<6x4xf32>
        scf.yield %alloc_16 : memref<6x4xi1>
      }
      %272 = arith.minsi %c1320143622_i32, %c1494315362_i32 : i32
      %cst_41 = arith.constant 2.05436506E+9 : f32
      %from_elements_42 = tensor.from_elements %c1320143622_i32, %c1610444304_i32, %c1610444304_i32, %c1610444304_i32, %c1610444304_i32, %c1494315362_i32, %c1610444304_i32, %c2136742139_i32, %c1320143622_i32, %c1610444304_i32, %c1610444304_i32, %c1320143622_i32, %c1494315362_i32, %c2136742139_i32, %c1320143622_i32, %c2136742139_i32 : tensor<4x4xi32>
      %273 = vector.create_mask %c1 : vector<4xi1>
      %274 = math.sqrt %cst_4 : f32
      %275 = index.divu %181, %c4
      affine.yield %cst_3 : f32
    } else {
      %270 = index.maxs %120, %c3
      %271 = affine.load %75[%c3] : memref<4xf16>
      %272 = vector.broadcast %cst_3 : f32 to vector<10xf32>
      %273 = vector.bitcast %272 : vector<10xf32> to vector<10xf32>
      %274 = vector.matrix_multiply %153, %272 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<10xf32>) -> vector<10xf32>
      %275 = math.fma %cst_0, %271, %55 : f16
      %276 = index.maxu %c8, %c15
      %277 = vector.broadcast %60 : index to vector<10xindex>
      %278 = vector.broadcast %cst_0 : f16 to vector<10xf16>
      vector.scatter %alloc_10[%c5, %c1] [%277], %28, %278 : memref<6x4xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      affine.yield %cst_1 : f32
    }
    %197 = vector.broadcast %cst_1 : f32 to vector<4xf32>
    %198 = vector.fma %197, %197, %153 : vector<4xf32>
    %199 = index.divu %c3, %c6
    %200 = math.ceil %cst_1 : f32
    %201 = index.ceildivu %c7, %163
    %202 = tensor.empty() : tensor<4xi64>
    affine.for %arg2 = 0 to 16 {
    }
    %203 = math.rsqrt %55 : f16
    %204 = arith.remf %cst_3, %cst_1 : f32
    %205 = vector.gather %6[%c3, %c13] [%27], %28, %160 : tensor<6x4xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    %206 = arith.subi %c-3329_i16, %115 : i16
    %207 = arith.floordivsi %115, %115 : i16
    %208 = index.sub %86, %179
    %209 = math.fpowi %from_elements_32, %0 : tensor<4x4xf16>, tensor<4x4xi32>
    %alloca_34 = memref.alloca() : memref<4xi32>
    %210 = bufferization.to_tensor %alloc_18 : memref<10xi16>
    %211 = index.divu %c9, %86
    %212 = vector.broadcast %c4 : index to vector<6xindex>
    vector.scatter %alloc_21[%c1] [%212], %104, %105 : memref<4xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
    %213 = index.maxs %c11, %c15
    %cst_35 = arith.constant 1.9334889E+9 : f32
    %214 = affine.max affine_map<(d0) -> (d0 + 8)>(%86)
    %215 = index.maxu %c11, %c10
    %216 = math.powf %cst_3, %cst_4 : f32
    %217 = math.roundeven %55 : f16
    %218 = math.log10 %from_elements : tensor<4x4xf16>
    %219 = arith.cmpf ule, %cst, %55 : f16
    %220 = math.cttz %expanded_30 : tensor<10x1xi32>
    %221 = tensor.empty() : tensor<4xf16>
    %222 = vector.flat_transpose %28 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
    %223 = arith.cmpf ogt, %cst_3, %cst_1 : f32
    %224 = arith.ceildivsi %c1610444304_i32, %c2136742139_i32 : i32
    %225 = index.add %59, %172
    %generated_36 = tensor.generate %c13 {
    ^bb0(%arg2: index):
      %270 = arith.addf %cst, %55 : f16
      %271 = arith.addf %cst_0, %cst : f16
      memref.copy %alloc_12, %alloc_7 : memref<10xi32> to memref<10xi32>
      %272 = index.ceildivu %c3, %86
      tensor.yield %55 : f16
    } : tensor<?xf16>
    %226 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %105, %103, %cst_2 : vector<6xf16>, vector<6xf16> into f16
    %227 = vector.broadcast %c1494315362_i32 : i32 to vector<4x4xi32>
    %228 = vector.broadcast %33 : i1 to vector<4x4xi1>
    %229 = vector.gather %9[%208, %c14] [%227], %228, %227 : tensor<4x4xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
    %inserted_37 = tensor.insert %cst_2 into %from_elements[%c0, %c1] : tensor<4x4xf16>
    %230 = math.round %11 : tensor<4xf32>
    %231 = arith.ori %c1494315362_i32, %c1320143622_i32 : i32
    %232 = affine.min affine_map<(d0) -> (d0 - 32, -d0, -4)>(%214)
    %233 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %105, %103, %cst_2 : vector<6xf16>, vector<6xf16> into f16
    %234 = math.fma %55, %cst_0, %55 : f16
    %235 = math.sqrt %cst : f16
    %236 = math.log %cst_2 : f16
    %237 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %205, %159, %c-3329_i16 : vector<10xi16>, vector<10xi16> into i16
    %238 = math.atan %8 : tensor<6x4xf32>
    %cst_38 = arith.constant 3.856000e+04 : f16
    %239 = math.log10 %cst_3 : f32
    %240 = math.fpowi %1, %14 : tensor<10xf16>, tensor<10xi32>
    %241 = affine.if affine_set<(d0, d1) : (-(d1 floordiv 32) + 4 >= 0)>(%c12, %c15) -> i64 {
      %270 = math.fma %3, %3, %11 : tensor<4xf32>
      %271 = tensor.empty() : tensor<4xf16>
      %272 = index.casts %true : i1 to index
      %273 = math.absf %cst_3 : f32
      %274 = math.ipowi %13, %13 : tensor<4x4xi64>
      %275 = math.cos %55 : f16
      %276 = bufferization.clone %alloc_20 : memref<6x4xi32> to memref<6x4xi32>
      %alloca_41 = memref.alloca() : memref<4x4xi64>
      affine.yield %c310643539_i64 : i64
    } else {
      %270 = affine.if affine_set<(d0, d1) : (-(d1 floordiv 32) + 4 >= 0)>(%c14, %c6) -> memref<4xf32> {
        %278 = arith.muli %c1320143622_i32, %c2136742139_i32 : i32
        %279 = index.ceildivu %c8, %c2
        %280 = index.sub %70, %70
        %281 = math.round %8 : tensor<6x4xf32>
        %false_41 = arith.constant false
        %282 = arith.divf %cst_3, %cst_1 : f32
        %283 = math.log10 %from_elements : tensor<4x4xf16>
        %284 = math.expm1 %8 : tensor<6x4xf32>
        affine.yield %alloc : memref<4xf32>
      } else {
        affine.store %c-3329_i16, %alloc_22[] : memref<i16>
        %278 = math.round %cst : f16
        %279 = tensor.empty() : tensor<4xf32>
        %280 = vector.reduction <and>, %29 : vector<10xi32> into i32
        %cst_41 = arith.constant 1.64278733E+9 : f32
        %281 = arith.maxsi %c1494315362_i32, %c1494315362_i32 : i32
        %282 = index.maxs %120, %171
        %283 = vector.shuffle %104, %104 [4, 8, 9, 11] : vector<6xi1>, vector<6xi1>
        affine.yield %alloc_17 : memref<4xf32>
      }
      %271 = index.add %c6, %232
      %272 = affine.max affine_map<(d0) -> (d0 + 8, d0 + 32, d0 + 32, d0 + 2)>(%c5)
      %273 = vector.multi_reduction <maxsi>, %205, %160 [] : vector<10xi16> to vector<10xi16>
      %274 = vector.extract %205[4] : vector<10xi16>
      %275 = vector.matrix_multiply %105, %103 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
      %276 = math.atan %from_elements_32 : tensor<4x4xf16>
      %277 = math.ceil %cst : f16
      affine.yield %c310643539_i64 : i64
    }
    %242 = math.log1p %cst_0 : f16
    %243 = arith.maxsi %c310643539_i64, %c310643539_i64 : i64
    %244 = math.tan %1 : tensor<10xf16>
    memref.alloca_scope  {
      %270 = math.atan2 %41, %41 : tensor<10xf32>
      %271 = arith.remf %cst_4, %cst_1 : f32
      %dest, %accumulated_value = vector.scan <mul>, %117, %198 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xf32>, vector<4xf32>
      %272 = affine.load %alloc_15[%c4] : memref<10xi16>
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %197, %153, %cst_1 : vector<4xf32>, vector<4xf32> into f32
      %274 = arith.muli %true_6, %true : i1
      %275 = math.sqrt %cst_0 : f16
      %276 = vector.insert %c1320143622_i32, %144 [5] : i32 into vector<6xi32>
      %277 = vector.splat %c1320143622_i32 : vector<4x4xi32>
      %from_elements_41 = tensor.from_elements %c2136742139_i32, %c1320143622_i32, %c1494315362_i32, %c1494315362_i32, %c1494315362_i32, %c1320143622_i32, %c1320143622_i32, %c1320143622_i32, %c1494315362_i32, %c1610444304_i32, %c1320143622_i32, %c1320143622_i32, %c1494315362_i32, %c1610444304_i32, %c1494315362_i32, %c2136742139_i32, %c1610444304_i32, %c1494315362_i32, %c1320143622_i32, %c2136742139_i32, %c1610444304_i32, %c1610444304_i32, %c1320143622_i32, %c1320143622_i32 : tensor<6x4xi32>
      %278 = math.log1p %cst_4 : f32
      %279 = index.casts %true_6 : i1 to index
      %280 = vector.splat %201 : vector<4x4xindex>
      %281 = math.log %8 : tensor<6x4xf32>
      %282 = math.ctpop %21 : tensor<4xi16>
      %283 = math.atan2 %55, %cst : f16
      scf.execute_region {
        %297 = arith.cmpi ult, %c1320143622_i32, %c1320143622_i32 : i32
        %298 = math.log1p %3 : tensor<4xf32>
        %299 = index.sub %c13, %179
        %300 = arith.muli %272, %272 : i16
        %alloca_42 = memref.alloca() : memref<4x4xf32>
        %301 = math.ceil %from_elements_32 : tensor<4x4xf16>
        %302 = index.sub %194, %299
        %303 = math.cttz %c-3329_i16 : i16
        %304 = index.sizeof
        %305 = math.log2 %cst : f16
        %306 = vector.broadcast %false_31 : i1 to vector<10xi1>
        %307 = vector.broadcast %c1320143622_i32 : i32 to vector<10x10xi32>
        %308 = vector.outerproduct %29, %27, %307 {kind = #vector.kind<maxui>} : vector<10xi32>, vector<10xi32>
        %309 = bufferization.clone %alloc_14 : memref<6x4xf32> to memref<6x4xf32>
        %310 = math.sqrt %41 : tensor<10xf32>
        %311 = arith.shrsi %c1320143622_i32, %c2136742139_i32 : i32
        %312 = index.ceildivs %179, %70
        scf.yield
      }
      %284 = vector.shuffle %229, %229 [1, 4, 5, 6, 7] : vector<4x4xi32>, vector<4x4xi32>
      %285 = math.powf %3, %11 : tensor<4xf32>
      %286 = vector.gather %alloc_9[%161] [%227], %228, %117 : memref<10xf32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf32> into vector<4x4xf32>
      affine.for %arg2 = 0 to 95 {
      }
      %287 = arith.cmpf ueq, %cst_2, %cst_0 : f16
      %288 = vector.create_mask %181 : vector<4xi1>
      %289 = vector.load %56[%c5] : memref<10xi64>, vector<10xi64>
      %290 = arith.shrui %false_31, %false : i1
      %291 = scf.execute_region -> i16 {
        %297 = arith.addf %55, %cst_2 : f16
        %298 = math.roundeven %11 : tensor<4xf32>
        %299 = vector.reduction <mul>, %198 : vector<4xf32> into f32
        %300 = math.log10 %expanded : tensor<4x1xf32>
        %301 = affine.load %alloc_12[%c6] : memref<10xi32>
        %302 = index.sub %54, %c9
        %303 = math.fma %cst_1, %cst_3, %cst_1 : f32
        %304 = math.log10 %cst : f16
        %305 = math.rsqrt %11 : tensor<4xf32>
        %306 = vector.broadcast %301 : i32 to vector<4x4xi32>
        %307 = arith.remf %cst_2, %cst : f16
        %308 = math.atan2 %from_elements_32, %from_elements_32 : tensor<4x4xf16>
        %309 = arith.addf %55, %cst_0 : f16
        %310 = memref.realloc %alloc_18 : memref<10xi16> to memref<4xi16>
        %311 = math.fma %41, %41, %41 : tensor<10xf32>
        %312 = math.round %1 : tensor<10xf16>
        scf.yield %c-3329_i16 : i16
      }
      %292 = math.ctpop %6 : tensor<6x4xi16>
      %293 = math.log2 %41 : tensor<10xf32>
      %294 = vector.matrix_multiply %153, %64 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<10xf32>) -> vector<10xf32>
      %295 = index.casts %true_6 : i1 to index
      %296 = math.sqrt %expanded : tensor<4x1xf32>
      memref.tensor_store %from_elements_41, %94 : memref<6x4xi32>
    }
    %245 = index.sizeof
    %246 = math.cttz %true_6 : i1
    %247 = math.ipowi %c1320143622_i32, %c1320143622_i32 : i32
    %248 = math.tan %cst_1 : f32
    %249 = scf.if %true -> (memref<4x4xf16>) {
      %270 = scf.index_switch %213 -> tensor<4x4xi32> 
      case 1 {
        %281 = arith.negf %cst_4 : f32
        %282 = arith.shrsi %33, %true_6 : i1
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 1, d0)>(%c10, %211, %c15, %161)
        %284 = vector.broadcast %cst_4 : f32 to vector<f32>
        %285 = vector.transfer_write %284, %3[%54] : vector<f32>, tensor<4xf32>
        %286 = math.cos %from_elements_32 : tensor<4x4xf16>
        %287 = vector.matrix_multiply %103, %103 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
        %288 = math.ceil %1 : tensor<10xf16>
        %alloc_41 = memref.alloc() : memref<4xi64>
        memref.tensor_store %18, %alloc_41 : memref<4xi64>
        %289 = vector.shuffle %159, %20 [0, 3, 6, 8, 9, 10, 15] : vector<10xi16>, vector<6xi16>
        %from_elements_42 = tensor.from_elements %cst_1, %cst_1, %cst_4, %cst_3, %cst_3, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1 : tensor<10xf32>
        %290 = index.sub %c13, %c13
        %true_43 = arith.constant true
        %291 = vector.broadcast %55 : f16 to vector<6x6xf16>
        %292 = vector.outerproduct %103, %103, %291 {kind = #vector.kind<add>} : vector<6xf16>, vector<6xf16>
        %293 = math.log1p %3 : tensor<4xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %160, %159, %115 : vector<10xi16>, vector<10xi16> into i16
        %295 = index.castu %c3 : index to i32
        scf.yield %16 : tensor<4x4xi32>
      }
      case 2 {
        %281 = vector.insert %cst_4, %198 [1] : f32 into vector<4xf32>
        %282 = vector.broadcast %c15 : index to vector<10xindex>
        vector.scatter %alloc_22[] [%282], %174, %160 : memref<i16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %splat = tensor.splat %c310643539_i64 : tensor<6x4xi64>
        %alloc_41 = memref.alloc() : memref<6x4xi16>
        %283 = vector.gather %alloc_41[%c14, %59] [%27], %174, %205 : memref<6x4xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %284 = math.tan %8 : tensor<6x4xf32>
        %285 = math.tan %1 : tensor<10xf16>
        %286 = vector.broadcast %245 : index to vector<10xindex>
        vector.scatter %alloc_12[%c2] [%286], %138, %29 : memref<10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %287 = arith.shrui %false, %false : i1
        %288 = arith.shli %false_31, %33 : i1
        %289 = vector.extract %227[1] : vector<4x4xi32>
        %290 = arith.divsi %115, %115 : i16
        %291 = math.tan %8 : tensor<6x4xf32>
        %292 = vector.splat %false_31 : vector<4x4xi1>
        %293 = math.sqrt %cst_4 : f32
        %294 = arith.minsi %c1_i16, %115 : i16
        %295 = math.ctpop %21 : tensor<4xi16>
        scf.yield %17 : tensor<4x4xi32>
      }
      case 3 {
        %281 = vector.transpose %189, [] : vector<i64> to vector<i64>
        %282 = arith.ori %true, %false : i1
        %283 = vector.splat %c15 : vector<10xindex>
        %284 = math.log2 %11 : tensor<4xf32>
        %285 = arith.remf %cst_0, %cst_0 : f16
        %286 = tensor.empty() : tensor<6x4xf32>
        vector.print %229 : vector<4x4xi32>
        %287 = arith.shrui %true, %false : i1
        %288 = math.cttz %4 : tensor<4xi64>
        %289 = arith.shli %true_6, %false : i1
        %290 = math.expm1 %expanded : tensor<4x1xf32>
        %291 = math.ctpop %4 : tensor<4xi64>
        %292 = math.ctpop %true_6 : i1
        %293 = vector.broadcast %c-3329_i16 : i16 to vector<10x10xi16>
        %294 = vector.outerproduct %205, %160, %293 {kind = #vector.kind<minsi>} : vector<10xi16>, vector<10xi16>
        %295 = index.sub %208, %214
        %296 = arith.mulf %cst_3, %cst_3 : f32
        scf.yield %17 : tensor<4x4xi32>
      }
      default {
        %alloc_41 = memref.alloc() : memref<1x8xi32>
        %281 = tensor.empty() : tensor<10x8xi32>
        %282 = linalg.matmul ins(%expanded_30, %alloc_41 : tensor<10x1xi32>, memref<1x8xi32>) outs(%281 : tensor<10x8xi32>) -> tensor<10x8xi32>
        %283 = arith.maxsi %c-3329_i16, %115 : i16
        %284 = vector.maskedload %alloc_16[%c1, %c2], %104, %104 : memref<6x4xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %285 = arith.divf %55, %cst_2 : f16
        %286 = arith.divf %cst, %cst_2 : f16
        %287 = index.maxs %208, %232
        %288 = vector.flat_transpose %28 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %289 = index.ceildivu %c14, %c12
        %290 = vector.shuffle %205, %205 [2, 12, 16] : vector<10xi16>, vector<10xi16>
        %291 = index.maxu %201, %c7
        %292 = arith.muli %false_31, %true : i1
        %293 = tensor.empty(%c1) : tensor<?x4xf32>
        %294 = vector.insert %cst_3, %65 [3] : f32 into vector<10xf32>
        %295 = index.sub %171, %c9
        %296 = arith.ceildivsi %true, %false_5 : i1
        %297 = vector.shuffle %44, %45 [0, 2, 3, 5] : vector<6x4xf32>, vector<6x4xf32>
        scf.yield %0 : tensor<4x4xi32>
      }
      %271 = vector.transpose %222, [0] : vector<10xi1> to vector<10xi1>
      %272 = arith.remf %cst_3, %cst_4 : f32
      %273 = math.ipowi %6, %6 : tensor<6x4xi16>
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2, (d3 floordiv 8) mod 8, d3, d1 mod 32)>(%163, %54, %69, %161)
      %275 = vector.broadcast %c310643539_i64 : i64 to vector<4xi64>
      %276 = vector.broadcast %true_6 : i1 to vector<4xi1>
      %277 = vector.maskedload %alloc_19[%c0], %276, %275 : memref<10xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %278 = index.sizeof
      %279 = tensor.empty() : tensor<4x4xi32>
      %280 = linalg.matmul ins(%0, %9 : tensor<4x4xi32>, tensor<4x4xi32>) outs(%279 : tensor<4x4xi32>) -> tensor<4x4xi32>
      scf.yield %alloc_13 : memref<4x4xf16>
    } else {
      %270 = math.log10 %expanded : tensor<4x1xf32>
      %271 = math.log %41 : tensor<10xf32>
      %272 = vector.create_mask %118, %163 : vector<4x4xi1>
      %273 = vector.broadcast %false_5 : i1 to vector<4x4xi1>
      %274 = tensor.empty(%194) : tensor<?x4xf16>
      %275 = math.sqrt %cst_4 : f32
      %276 = arith.subi %c310643539_i64, %c310643539_i64 : i64
      %277 = arith.addf %cst_1, %cst_3 : f32
      scf.yield %alloc_13 : memref<4x4xf16>
    }
    %250 = arith.maxsi %true_25, %false_5 : i1
    %251 = vector.transpose %104, [0] : vector<6xi1> to vector<6xi1>
    %252 = vector.insertelement %cst_4, %198[%70 : index] : vector<4xf32>
    %253 = tensor.empty() : tensor<6x4xi32>
    %254 = math.fpowi %8, %253 : tensor<6x4xf32>, tensor<6x4xi32>
    %255 = index.casts %59 : index to i32
    %256 = math.atan2 %3, %3 : tensor<4xf32>
    %257 = math.ipowi %15, %15 : tensor<4xi32>
    %258 = math.powf %1, %1 : tensor<10xf16>
    %259 = vector.reduction <minui>, %138 : vector<10xi1> into i1
    affine.for %arg2 = 0 to 110 {
    }
    %260 = arith.shli %false, %true_6 : i1
    %261 = math.log10 %expanded : tensor<4x1xf32>
    %262 = math.roundeven %11 : tensor<4xf32>
    %263 = memref.load %56[%c1] : memref<10xi64>
    %264 = arith.minsi %c310643539_i64, %c310643539_i64 : i64
    %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %138, %28, %33 : vector<10xi1>, vector<10xi1> into i1
    %266 = tensor.empty() : tensor<4x1xf32>
    %267 = linalg.copy ins(%expanded : tensor<4x1xf32>) outs(%266 : tensor<4x1xf32>) -> tensor<4x1xf32>
    %268 = tensor.empty() : tensor<10xi16>
    %transposed_39 = linalg.transpose ins(%alloc_15 : memref<10xi16>) outs(%268 : tensor<10xi16>) permutation = [0] 
    %alloc_40 = memref.alloc() : memref<f32>
    linalg.reduce ins(%3 : tensor<4xf32>) outs(%alloc_40 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %270 = vector.insertelement %false_5, %28[%c13 : index] : vector<10xi1>
        %271 = math.atan %cst_1 : f32
        %272 = arith.maxui %true_6, %false_5 : i1
        %273 = math.sqrt %266 : tensor<4x1xf32>
        %274 = arith.cmpi sgt, %115, %c-3329_i16 : i16
        %cst_41 = arith.constant 2.297600e+04 : f16
        %275 = math.atan %8 : tensor<6x4xf32>
        %276 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    scf.parallel (%arg2) = (%60) to (%181) step (%c12) {
      %270 = arith.subi %115, %c-3329_i16 : i16
      %271 = arith.maxui %false_31, %false_31 : i1
      %272 = math.sqrt %expanded : tensor<4x1xf32>
      scf.index_switch %54 
      case 1 {
        %284 = index.add %199, %60
        %285 = arith.maxui %false_31, %true : i1
        %286 = index.maxs %c3, %107
        %287 = math.sqrt %1 : tensor<10xf16>
        %288 = math.exp2 %1 : tensor<10xf16>
        %289 = math.absf %1 : tensor<10xf16>
        %290 = index.add %286, %163
        %291 = math.ipowi %c1494315362_i32, %c1494315362_i32 : i32
        %292 = arith.minsi %33, %false_5 : i1
        %293 = math.ceil %1 : tensor<10xf16>
        %294 = math.tan %8 : tensor<6x4xf32>
        %295 = vector.broadcast %c1610444304_i32 : i32 to vector<10x10xi32>
        %296 = vector.outerproduct %27, %27, %295 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
        %297 = index.castu %c2136742139_i32 : i32 to index
        %298 = vector.create_mask %c6, %286 : vector<6x4xi1>
        %299 = arith.shli %false_5, %false : i1
        %extracted = tensor.extract %transposed_39[%c7] : tensor<10xi16>
        scf.yield
      }
      case 2 {
        %284 = math.log10 %8 : tensor<6x4xf32>
        %alloc_42 = memref.alloc() : memref<4x4xi32>
        %285 = math.atan %55 : f16
        %286 = math.expm1 %8 : tensor<6x4xf32>
        %287 = math.expm1 %cst_2 : f16
        %288 = math.log10 %41 : tensor<10xf32>
        %289 = arith.cmpf uge, %cst, %cst_2 : f16
        %290 = math.atan2 %55, %cst_0 : f16
        %291 = math.tanh %cst_0 : f16
        %292 = index.castu %33 : i1 to index
        memref.tensor_store %8, %alloc_14 : memref<6x4xf32>
        %293 = math.log10 %55 : f16
        %294 = vector.shuffle %44, %117 [1, 5, 6] : vector<6x4xf32>, vector<4x4xf32>
        %295 = math.roundeven %8 : tensor<6x4xf32>
        %296 = arith.maxui %true_6, %false : i1
        %297 = arith.addi %true_25, %false : i1
        scf.yield
      }
      default {
        %284 = arith.shrsi %c2136742139_i32, %c2136742139_i32 : i32
        %285 = vector.matrix_multiply %27, %27 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %286 = index.floordivs %181, %c8
        %inserted_42 = tensor.insert %cst_1 into %generated_26[%c0] : tensor<?xf32>
        %287 = math.log %11 : tensor<4xf32>
        memref.tensor_store %14, %alloc_7 : memref<10xi32>
        %288 = math.log2 %cst_3 : f32
        %289 = math.cttz %transposed : tensor<4xi64>
        %290 = vector.insert %cst_3, %64 [4] : f32 into vector<10xf32>
        %291 = vector.maskedload %alloc_15[%c9], %222, %160 : memref<10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %292 = arith.subi %c310643539_i64, %c310643539_i64 : i64
        %293 = arith.divf %cst_2, %cst : f16
        memref.copy %alloc_14, %alloc_8 : memref<6x4xf32> to memref<6x4xf32>
        bufferization.dealloc_tensor %transposed : tensor<4xi64>
        %294 = arith.maxf %cst_2, %55 : f16
        %295 = arith.cmpf ogt, %cst_0, %55 : f16
      }
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %104, %104, %false_5 : vector<6xi1>, vector<6xi1> into i1
      %274 = index.maxu %199, %120
      %275 = vector.create_mask %107 : vector<4xi1>
      vector.print %104 : vector<6xi1>
      %276 = vector.flat_transpose %64 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      %277 = math.tan %from_elements : tensor<4x4xf16>
      %278 = vector.splat %208 : vector<4xindex>
      %279 = vector.broadcast %cst_0 : f16 to vector<6x6xf16>
      %280 = vector.outerproduct %105, %105, %279 {kind = #vector.kind<add>} : vector<6xf16>, vector<6xf16>
      %281 = arith.cmpi ne, %c-3329_i16, %c1_i16 : i16
      %282 = math.ceil %11 : tensor<4xf32>
      %alloc_41 = memref.alloc() : memref<4x1xf32>
      memref.tensor_store %266, %alloc_41 : memref<4x1xf32>
      %283 = math.floor %55 : f16
      scf.yield
    }
    %269 = affine.vector_load %alloc_14[%201, %232] : memref<6x4xf32>, vector<4xf32>
    affine.vector_store %174, %alloc_16[%184, %181] : memref<6x4xi1>, vector<10xi1>
    vector.print %20 : vector<6xi16>
    vector.print %27 : vector<10xi32>
    vector.print %28 : vector<10xi1>
    vector.print %29 : vector<10xi32>
    vector.print %44 : vector<6x4xf32>
    vector.print %45 : vector<6x4xf32>
    vector.print %64 : vector<10xf32>
    vector.print %65 : vector<10xf32>
    vector.print %103 : vector<6xf16>
    vector.print %104 : vector<6xi1>
    vector.print %105 : vector<6xf16>
    vector.print %117 : vector<4x4xf32>
    vector.print %138 : vector<10xi1>
    vector.print %144 : vector<6xi32>
    vector.print %153 : vector<4xf32>
    vector.print %159 : vector<10xi16>
    vector.print %160 : vector<10xi16>
    vector.print %174 : vector<10xi1>
    vector.print %189 : vector<i64>
    vector.print %197 : vector<4xf32>
    vector.print %198 : vector<4xf32>
    vector.print %205 : vector<10xi16>
    vector.print %222 : vector<10xi1>
    vector.print %227 : vector<4x4xi32>
    vector.print %228 : vector<4x4xi1>
    vector.print %229 : vector<4x4xi32>
    vector.print %269 : vector<4xf32>
    vector.print %cst : f16
    vector.print %c2136742139_i32 : i32
    vector.print %c310643539_i64 : i64
    vector.print %c1494315362_i32 : i32
    vector.print %c1320143622_i32 : i32
    vector.print %true : i1
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %c1610444304_i32 : i32
    vector.print %c-3329_i16 : i16
    vector.print %false_5 : i1
    vector.print %true_6 : i1
    vector.print %33 : i1
    vector.print %55 : f16
    vector.print %true_25 : i1
    vector.print %115 : i16
    vector.print %c1_i16 : i16
    vector.print %false_31 : i1
    return
  }
}
