module {
  func.func @func1(%arg0: i64) {
    %cst = arith.constant 2.430400e+04 : f16
    %c1741789997_i32 = arith.constant 1741789997 : i32
    %c-23282_i16 = arith.constant -23282 : i16
    %c-5401_i16 = arith.constant -5401 : i16
    %c-1812_i16 = arith.constant -1812 : i16
    %c-9787_i16 = arith.constant -9787 : i16
    %cst_0 = arith.constant 5.753600e+04 : f16
    %c894789441_i64 = arith.constant 894789441 : i64
    %cst_1 = arith.constant 2.211200e+04 : f16
    %cst_2 = arith.constant 3.080000e+04 : f16
    %c2050434069_i64 = arith.constant 2050434069 : i64
    %c-23154_i16 = arith.constant -23154 : i16
    %true = arith.constant true
    %cst_3 = arith.constant 1.49542541E+9 : f32
    %cst_4 = arith.constant 2.12536179E+9 : f32
    %c833515725_i64 = arith.constant 833515725 : i64
    %0 = tensor.empty() : tensor<10xi1>
    %1 = tensor.empty() : tensor<1x5xi16>
    %2 = tensor.empty() : tensor<1x5xf16>
    %3 = tensor.empty() : tensor<1x5xf16>
    %4 = tensor.empty() : tensor<11xf32>
    %5 = tensor.empty() : tensor<5xi32>
    %6 = tensor.empty() : tensor<1x5xi64>
    %7 = tensor.empty() : tensor<1x5xi64>
    %8 = tensor.empty() : tensor<1x5xf32>
    %9 = tensor.empty() : tensor<10xi64>
    %10 = tensor.empty() : tensor<10xi32>
    %11 = tensor.empty() : tensor<5xi64>
    %12 = tensor.empty() : tensor<5xi1>
    %13 = tensor.empty() : tensor<11xi32>
    %14 = tensor.empty() : tensor<11xi16>
    %15 = tensor.empty() : tensor<1x5xi16>
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
    %alloc_5 = memref.alloc() : memref<1x5xf16>
    %alloc_6 = memref.alloc() : memref<11xi64>
    %alloc_7 = memref.alloc() : memref<11xi64>
    %alloc_8 = memref.alloc() : memref<10xf32>
    %alloc_9 = memref.alloc() : memref<1x5xf32>
    %alloc_10 = memref.alloc() : memref<11xf32>
    %alloc_11 = memref.alloc() : memref<5xf16>
    %alloc_12 = memref.alloc() : memref<1x5xi16>
    %alloc_13 = memref.alloc() : memref<1x5xf16>
    %alloc_14 = memref.alloc() : memref<11xi16>
    %alloc_15 = memref.alloc() : memref<1x5xi16>
    %alloc_16 = memref.alloc() : memref<11xi1>
    %alloc_17 = memref.alloc() : memref<5xi16>
    %alloc_18 = memref.alloc() : memref<10xi16>
    %alloc_19 = memref.alloc() : memref<5xf32>
    %16 = tensor.empty() : tensor<10xi1>
    %17 = linalg.copy ins(%0 : tensor<10xi1>) outs(%16 : tensor<10xi1>) -> tensor<10xi1>
    %alloc_20 = memref.alloc() : memref<5x1xi16>
    linalg.transpose ins(%1 : tensor<1x5xi16>) outs(%alloc_20 : memref<5x1xi16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%12 : tensor<5xi1>) outs(%18 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %282 = bufferization.clone %alloc_16 : memref<11xi1> to memref<11xi1>
        %283 = vector.broadcast %c-5401_i16 : i16 to vector<10xi16>
        %284 = vector.broadcast %in : i1 to vector<10xi1>
        %285 = vector.maskedload %alloc[%c4], %284, %283 : memref<5xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %286 = arith.remf %cst_3, %cst_3 : f32
        %287 = arith.maxf %cst, %cst : f16
        %288 = arith.maxsi %c-9787_i16, %c-5401_i16 : i16
        %289 = math.fpowi %cst_2, %c1741789997_i32 : f16, i32
        %290 = arith.maxsi %c-1812_i16, %c-1812_i16 : i16
        %291 = tensor.empty() : tensor<1x5xi32>
        %292 = vector.broadcast %c1741789997_i32 : i32 to vector<11xi32>
        %293 = vector.broadcast %true : i1 to vector<11xi1>
        %294 = vector.gather %291[%c7, %c6] [%292], %293, %292 : tensor<1x5xi32>, vector<11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %true_34 = arith.constant true
        linalg.yield %true_34 : i1
      }
    %19 = scf.parallel (%arg1) = (%c11) to (%c15) step (%c7) init (%reduced) -> tensor<i1> {
      %282 = memref.alloca_scope  -> (i1) {
        %300 = index.sizeof
        %301 = arith.remui %c1741789997_i32, %c1741789997_i32 : i32
        %true_34 = arith.constant true
        %302 = math.atan %cst_3 : f32
        %303 = math.round %cst_0 : f16
        %304 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %305 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
        %306 = vector.outerproduct %304, %304, %305 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
        %splat_35 = tensor.splat %c-23282_i16 : tensor<5xi16>
        %307 = arith.muli %c-23154_i16, %c-23282_i16 : i16
        %308 = math.atan %cst_4 : f32
        %309 = arith.minf %cst_4, %cst_3 : f32
        %310 = vector.broadcast %true : i1 to vector<1xi1>
        %311 = vector.extract_strided_slice %310 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %312 = vector.broadcast %c-23154_i16 : i16 to vector<1x5xi16>
        %313 = math.copysign %cst_4, %cst_3 : f32
        %314 = math.log2 %cst : f16
        %315 = memref.realloc %alloc_14 : memref<11xi16> to memref<5xi16>
        %rank_36 = tensor.rank %2 : tensor<1x5xf16>
        %316 = math.exp %4 : tensor<11xf32>
        %317 = math.ctpop %c1741789997_i32 : i32
        %318 = vector.extract_strided_slice %311 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %319 = vector.flat_transpose %310 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %320 = arith.subi %c-23154_i16, %c-1812_i16 : i16
        %321 = math.ctlz %c-5401_i16 : i16
        %322 = vector.extract %311[0] : vector<1xi1>
        affine.store %c-9787_i16, %alloc_15[%c0, %c10] : memref<1x5xi16>
        %323 = arith.maxf %cst_0, %cst : f16
        %324 = memref.load %alloc_16[%c1] : memref<11xi1>
        %rank_37 = tensor.rank %7 : tensor<1x5xi64>
        %325 = vector.extract %311[0] : vector<1xi1>
        %326 = index.divs %c5, %300
        %327 = arith.xori %c2050434069_i64, %c833515725_i64 : i64
        %328 = math.log2 %cst_4 : f32
        %329 = vector.reduction <add>, %318 : vector<1xi1> into i1
        memref.alloca_scope.return %true : i1
      }
      %283 = arith.remui %c833515725_i64, %c833515725_i64 : i64
      %284 = math.ctlz %13 : tensor<11xi32>
      %285 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %286 = vector.reduction <minf>, %285 : vector<10xf32> into f32
      %287 = arith.divf %cst_1, %cst : f16
      %288 = tensor.empty() : tensor<1x5xi32>
      %289 = math.fpowi %8, %288 : tensor<1x5xf32>, tensor<1x5xi32>
      %290 = arith.maxf %cst, %cst : f16
      %291 = index.divs %c13, %c10
      scf.execute_region {
        %300 = math.round %cst_2 : f16
        %301 = bufferization.to_tensor %alloc_17 : memref<5xi16>
        %302 = arith.muli %c-9787_i16, %c-9787_i16 : i16
        %303 = bufferization.to_tensor %alloc_8 : memref<10xf32>
        %304 = index.floordivs %c12, %c3
        %rank_34 = tensor.rank %9 : tensor<10xi64>
        %305 = index.mul %c11, %c0
        %306 = math.copysign %cst, %cst_2 : f16
        %307 = tensor.empty() : tensor<11xf32>
        %308 = math.round %cst : f16
        %309 = arith.minf %cst_2, %cst_2 : f16
        %collapsed_35 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x5xi16> into tensor<5xi16>
        %310 = math.exp2 %cst_1 : f16
        %311 = vector.load %alloc_20[%c4, %c0] : memref<5x1xi16>, vector<11xi16>
        %312 = vector.flat_transpose %311 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %313 = arith.shrui %c1741789997_i32, %c1741789997_i32 : i32
        scf.yield
      }
      %292 = math.exp2 %4 : tensor<11xf32>
      %293 = affine.max affine_map<(d0, d1) -> (d1, (d0 - 60) ceildiv 32)>(%c4, %c11)
      %294 = arith.ori %true, %true : i1
      %295 = math.cos %2 : tensor<1x5xf16>
      %296 = arith.andi %true, %282 : i1
      %297 = math.round %2 : tensor<1x5xf16>
      %298 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 16, d0)>(%c15, %c2, %c10, %c8)
      %299 = tensor.empty() : tensor<i1>
      scf.reduce(%299)  : tensor<i1> {
      ^bb0(%arg2: tensor<i1>, %arg3: tensor<i1>):
        %300 = arith.xori %c-5401_i16, %c-5401_i16 : i16
        %301 = index.floordivs %c6, %c13
        %302 = arith.minf %cst, %cst_0 : f16
        %303 = arith.addf %cst, %cst : f16
        %304 = math.log1p %cst_0 : f16
        %305 = vector.broadcast %c-5401_i16 : i16 to vector<10xi16>
        vector.print %305 : vector<10xi16>
        %306 = index.sub %c5, %c7
        %307 = arith.divui %c1741789997_i32, %c1741789997_i32 : i32
        %308 = tensor.empty() : tensor<i1>
        scf.reduce.return %308 : tensor<i1>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_11[%c3] : memref<5xf16>, vector<1xf16>
    affine.vector_store %20, %alloc_13[%c7, %c10] : memref<1x5xf16>, vector<1xf16>
    %alloc_21 = memref.alloc() : memref<10xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%10, %alloc_21 : tensor<10xi32>, memref<10xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = arith.shli %true, %true : i1
    %24 = bufferization.to_memref %21 : memref<i32>
    %25 = math.exp %3 : tensor<1x5xf16>
    %26 = math.ctpop %6 : tensor<1x5xi64>
    %true_22 = arith.constant true
    %27 = vector.bitcast %20 : vector<1xf16> to vector<1xi16>
    %28 = math.exp %cst_4 : f32
    %29 = arith.remui %c894789441_i64, %c894789441_i64 : i64
    %30 = tensor.empty() : tensor<10x10x10xi1>
    %alloc_23 = memref.alloc() : memref<10x10xi1>
    %31 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %16, %alloc_23 : memref<10x10xi1>, tensor<10xi1>, memref<10x10xi1>) outs(%30 : tensor<10x10x10xi1>) {
    ^bb0(%in: i1, %in_34: i1, %in_35: i1, %out: i1):
      %282 = math.round %4 : tensor<11xf32>
      %283 = math.floor %8 : tensor<1x5xf32>
      %284 = math.ctpop %10 : tensor<10xi32>
      %285 = math.atan %cst_2 : f16
      %286 = arith.xori %in, %true : i1
      %alloc_36 = memref.alloc() : memref<10xi16>
      %287 = math.ctpop %c-23154_i16 : i16
      %288 = memref.load %alloc_12[%c0, %c4] : memref<1x5xi16>
      %289 = arith.ori %out, %in_35 : i1
      vector.print %27 : vector<1xi16>
      %290 = index.maxs %c6, %c6
      %291 = math.atan %2 : tensor<1x5xf16>
      %292 = arith.xori %c-23282_i16, %c-23154_i16 : i16
      %293 = arith.cmpf uge, %cst_2, %cst_1 : f16
      %294 = index.sub %c15, %c14
      %295 = arith.divf %cst_0, %cst_2 : f16
      %296 = math.round %8 : tensor<1x5xf32>
      %297 = memref.atomic_rmw muli %c1741789997_i32, %24[] : (i32, memref<i32>) -> i32
      %298 = tensor.empty() : tensor<10x10x10xi1>
      %alloc_37 = memref.alloc() : memref<10x10xi1>
      %299 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%298, %alloc_37, %alloc_37 : tensor<10x10x10xi1>, memref<10x10xi1>, memref<10x10xi1>) outs(%298 : tensor<10x10x10xi1>) {
      ^bb0(%in_39: i1, %in_40: i1, %in_41: i1, %out_42: i1):
        %313 = vector.bitcast %27 : vector<1xi16> to vector<1xi16>
        %314 = arith.maxf %cst_0, %cst_2 : f16
        %315 = index.maxs %c12, %c13
        %316 = arith.subi %c-5401_i16, %c-23154_i16 : i16
        %317 = index.ceildivs %c4, %c4
        %318 = math.exp2 %3 : tensor<1x5xf16>
        %319 = arith.subi %in_39, %out_42 : i1
        %320 = tensor.empty() : tensor<1x5xi32>
        %321 = math.fpowi %8, %320 : tensor<1x5xf32>, tensor<1x5xi32>
        %322 = vector.create_mask %c11 : vector<11xi1>
        %323 = math.sqrt %8 : tensor<1x5xf32>
        %324 = math.tan %3 : tensor<1x5xf16>
        %325 = math.cttz %22 : tensor<i32>
        %326 = affine.max affine_map<(d0, d1, d2) -> (d1 - 64, d0, d0, d1 floordiv 2 - (d1 floordiv 2 - 32) - 1)>(%315, %c9, %c3)
        %327 = bufferization.to_memref %17 : memref<10xi1>
        %328 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %322, %322, %in_40 : vector<11xi1>, vector<11xi1> into i1
        %329 = math.floor %cst_2 : f16
        %330 = math.floor %4 : tensor<11xf32>
        %331 = vector.transpose %313, [0] : vector<1xi16> to vector<1xi16>
        %332 = vector.create_mask %c7 : vector<11xi1>
        %333 = arith.remf %cst, %cst_2 : f16
        %334 = arith.subi %c-1812_i16, %c-23154_i16 : i16
        %335 = math.cos %8 : tensor<1x5xf32>
        %336 = arith.shrsi %in_34, %in_39 : i1
        %337 = memref.load %24[] : memref<i32>
        %338 = vector.splat %c10 : vector<5xindex>
        %339 = affine.min affine_map<(d0, d1, d2) -> (d2 + (-d1) mod 32 + d0 floordiv 128 + 64, d1, d2)>(%c6, %c2, %c8)
        %340 = math.fma %cst_1, %cst, %cst_0 : f16
        %341 = index.mul %c8, %c2
        %342 = index.sub %315, %c1
        %343 = affine.apply affine_map<(d0, d1) -> (0)>(%c2, %c5)
        %344 = arith.maxf %cst_0, %cst_0 : f16
        %345 = arith.shrsi %out_42, %in_40 : i1
        linalg.yield %in_34 : i1
      } -> tensor<10x10x10xi1>
      %alloc_38 = memref.alloc() : memref<10xi64>
      memref.tensor_store %9, %alloc_38 : memref<10xi64>
      %300 = bufferization.to_tensor %alloc : memref<5xi16>
      %301 = vector.broadcast %in : i1 to vector<i1>
      %302 = vector.transfer_write %301, %0[%c3] : vector<i1>, tensor<10xi1>
      %303 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %304 = math.ipowi %c1741789997_i32, %c1741789997_i32 : i32
      %305 = index.floordivs %c7, %c4
      %306 = arith.muli %c-23154_i16, %c-1812_i16 : i16
      %307 = arith.minf %cst_3, %cst_3 : f32
      %308 = arith.minf %cst_2, %cst : f16
      %309 = math.roundeven %cst : f16
      %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %27, %27, %c-23154_i16 : vector<1xi16>, vector<1xi16> into i16
      %311 = vector.create_mask %c13 : vector<5xi1>
      %312 = math.ctlz %13 : tensor<11xi32>
      linalg.yield %in : i1
    } -> tensor<10x10x10xi1>
    %32 = affine.max affine_map<(d0) -> (d0 mod 64 - d0, d0 mod 16)>(%c13)
    memref.tensor_store %1, %alloc_12 : memref<1x5xi16>
    %33 = math.atan %cst_0 : f16
    %34 = vector.broadcast %c-9787_i16 : i16 to vector<1x1xi16>
    %35 = vector.outerproduct %27, %27, %34 {kind = #vector.kind<mul>} : vector<1xi16>, vector<1xi16>
    %36 = math.fma %8, %8, %8 : tensor<1x5xf32>
    %37 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %38 = index.ceildivs %c8, %c3
    %39 = arith.addi %c-1812_i16, %c-1812_i16 : i16
    %40 = arith.shrsi %c833515725_i64, %c833515725_i64 : i64
    %41 = index.mul %c8, %c11
    %42 = math.round %2 : tensor<1x5xf16>
    %43 = memref.load %alloc_9[%c0, %c2] : memref<1x5xf32>
    %44 = bufferization.clone %alloc_7 : memref<11xi64> to memref<11xi64>
    %45 = tensor.empty() : tensor<1x5xf16>
    %mapped = linalg.map ins(%alloc_5, %3 : memref<1x5xf16>, tensor<1x5xf16>) outs(%45 : tensor<1x5xf16>)
      (%in: f16, %in_34: f16) {
        %282 = arith.divui %c2050434069_i64, %c894789441_i64 : i64
        %283 = bufferization.clone %alloc_13 : memref<1x5xf16> to memref<1x5xf16>
        %284 = arith.muli %true, %true : i1
        %generated_35 = tensor.generate %c1, %c11 {
        ^bb0(%arg1: index, %arg2: index):
          %312 = arith.negf %cst : f16
          %313 = math.expm1 %in : f16
          %314 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%c14, %c13, %c2)
          %315 = bufferization.to_tensor %alloc : memref<5xi16>
          tensor.yield %in_34 : f16
        } : tensor<?x?xf16>
        %c673967120_i32 = arith.constant 673967120 : i32
        %285 = math.tanh %in_34 : f16
        %286 = index.sizeof
        %287 = math.roundeven %2 : tensor<1x5xf16>
        %288 = math.ctpop %13 : tensor<11xi32>
        %289 = arith.shrsi %c833515725_i64, %c894789441_i64 : i64
        %290 = bufferization.clone %44 : memref<11xi64> to memref<11xi64>
        %291 = arith.minsi %true, %true : i1
        %292 = arith.shrui %c833515725_i64, %c2050434069_i64 : i64
        %293 = index.maxu %c0, %32
        %294 = arith.andi %c-1812_i16, %c-1812_i16 : i16
        %295 = arith.maxsi %c2050434069_i64, %c2050434069_i64 : i64
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst_1 : vector<1xf16>, vector<1xf16> into f16
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %37, %37, %c-23154_i16 : vector<1xi16>, vector<1xi16> into i16
        scf.if %true {
          %312 = vector.multi_reduction <and>, %37, %c-23154_i16 [0] : vector<1xi16> to i16
          %313 = memref.atomic_rmw assign %c894789441_i64, %alloc_7[%c2] : (i64, memref<11xi64>) -> i64
          %314 = memref.atomic_rmw ori %c-1812_i16, %alloc[%c1] : (i16, memref<5xi16>) -> i16
          %315 = math.log10 %2 : tensor<1x5xf16>
          %316 = memref.realloc %alloc_6 : memref<11xi64> to memref<10xi64>
          %317 = vector.broadcast %cst_3 : f32 to vector<5xf32>
          %318 = vector.fma %317, %317, %317 : vector<5xf32>
          %319 = vector.broadcast %cst_2 : f16 to vector<10xf16>
          %rank_38 = tensor.rank %22 : tensor<i32>
        }
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %27, %27, %c-5401_i16 : vector<1xi16>, vector<1xi16> into i16
        %299 = memref.atomic_rmw assign %c-5401_i16, %alloc_20[%c0, %c0] : (i16, memref<5x1xi16>) -> i16
        %300 = math.ctpop %c-1812_i16 : i16
        %301 = vector.multi_reduction <xor>, %37, %c-9787_i16 [0] : vector<1xi16> to i16
        %302 = math.ctpop %c833515725_i64 : i64
        %303 = vector.broadcast %c-23154_i16 : i16 to vector<1x1xi16>
        %304 = vector.outerproduct %37, %27, %303 {kind = #vector.kind<or>} : vector<1xi16>, vector<1xi16>
        %305 = vector.shuffle %37, %37 [0] : vector<1xi16>, vector<1xi16>
        %306 = tensor.empty() : tensor<10xi32>
        %mapped_36 = linalg.map ins(%10, %10, %10 : tensor<10xi32>, tensor<10xi32>, tensor<10xi32>) outs(%306 : tensor<10xi32>)
          (%in_38: i32, %in_39: i32, %in_40: i32) {
            %312 = index.floordivs %c7, %286
            %313 = arith.subi %in_39, %in_40 : i32
            %from_elements = tensor.from_elements %c833515725_i64, %c2050434069_i64, %c833515725_i64, %c2050434069_i64, %c833515725_i64, %c833515725_i64, %c894789441_i64, %c833515725_i64, %c894789441_i64, %c833515725_i64, %c894789441_i64 : tensor<11xi64>
            %extracted_41 = tensor.extract %16[%c1] : tensor<10xi1>
            %314 = math.ctlz %reduced : tensor<i1>
            %315 = math.atan %8 : tensor<1x5xf32>
            %316 = math.ctpop %0 : tensor<10xi1>
            %317 = arith.maxsi %c894789441_i64, %c894789441_i64 : i64
            %318 = arith.maxsi %c-23154_i16, %c-1812_i16 : i16
            %319 = math.powf %cst_3, %cst_4 : f32
            %320 = math.roundeven %in : f16
            %321 = vector.splat %312 : vector<11xindex>
            %322 = index.maxu %c15, %c8
            %323 = memref.realloc %alloc_21 : memref<10xi32> to memref<5xi32>
            %extracted_42 = tensor.extract %4[%c9] : tensor<11xf32>
            %324 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d2 floordiv 32 + d3 - d0, d0)>(%c12, %c11, %41, %c7)
            %collapsed_43 = tensor.collapse_shape %7 [[0, 1]] : tensor<1x5xi64> into tensor<5xi64>
            %325 = index.divs %c7, %312
            %326 = math.fpowi %in, %in_40 : f16, i32
            %327 = math.powf %cst_1, %cst_2 : f16
            %328 = bufferization.to_memref %14 : memref<11xi16>
            %329 = arith.addf %extracted_42, %cst_3 : f32
            %alloca_44 = memref.alloca() : memref<1x5xf16>
            %c-26544_i16 = arith.constant -26544 : i16
            %330 = math.ipowi %21, %22 : tensor<i32>
            %331 = arith.cmpi ne, %c1741789997_i32, %in_40 : i32
            %332 = arith.remf %cst, %in : f16
            %333 = index.sizeof
            %collapsed_45 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x5xi16> into tensor<5xi16>
            %334 = arith.subi %c2050434069_i64, %c833515725_i64 : i64
            %335 = index.sizeof
            %collapsed_46 = tensor.collapse_shape %3 [[0, 1]] : tensor<1x5xf16> into tensor<5xf16>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %307 = math.powf %3, %2 : tensor<1x5xf16>
        %308 = arith.subi %c-5401_i16, %c-9787_i16 : i16
        %309 = math.roundeven %cst : f16
        %310 = index.maxu %c3, %c15
        %311 = scf.while (%arg1 = %alloc_16) : (memref<11xi1>) -> memref<11xi1> {
          %312 = arith.divsi %c-5401_i16, %c-23154_i16 : i16
          %313 = math.ctpop %13 : tensor<11xi32>
          %314 = arith.addf %cst_1, %cst_2 : f16
          %315 = math.exp2 %in_34 : f16
          %316 = arith.cmpi eq, %c-23282_i16, %301 : i16
          %317 = index.castu %c9 : index to i32
          %318 = math.log2 %8 : tensor<1x5xf32>
          %319 = vector.bitcast %20 : vector<1xf16> to vector<1xf16>
          scf.condition(%true) %arg1 : memref<11xi1>
        } do {
        ^bb0(%arg1: memref<11xi1>):
          %312 = memref.atomic_rmw minu %c2050434069_i64, %44[%c1] : (i64, memref<11xi64>) -> i64
          vector.print %37 : vector<1xi16>
          %313 = arith.floordivsi %c894789441_i64, %c894789441_i64 : i64
          %314 = arith.remui %c-23154_i16, %301 : i16
          vector.print %20 : vector<1xf16>
          %315 = arith.minui %c-1812_i16, %c-9787_i16 : i16
          %316 = tensor.empty() : tensor<5xf32>
          %317 = vector.broadcast %cst_3 : f32 to vector<10xf32>
          %318 = vector.broadcast %true : i1 to vector<10xi1>
          %319 = vector.broadcast %c1741789997_i32 : i32 to vector<10xi32>
          %320 = vector.gather %316[%38] [%319], %318, %317 : tensor<5xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
          %321 = math.log2 %316 : tensor<5xf32>
          %322 = index.castu %c2050434069_i64 : i64 to index
          %323 = arith.negf %cst_4 : f32
          %324 = math.expm1 %3 : tensor<1x5xf16>
          %325 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %318, %318, %true : vector<10xi1>, vector<10xi1> into i1
          %326 = math.absi %c2050434069_i64 : i64
          %327 = bufferization.to_tensor %alloc_21 : memref<10xi32>
          %328 = bufferization.clone %24 : memref<i32> to memref<i32>
          %329 = vector.bitcast %317 : vector<10xf32> to vector<10xf32>
          scf.yield %alloc_16 : memref<11xi1>
        }
        %cst_37 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_37 : f16
      }
    %46 = math.fpowi %4, %13 : tensor<11xf32>, tensor<11xi32>
    %47 = affine.if affine_set<(d0) : (-d0 == 0, d0 - 128 == 0)>(%c5) -> i1 {
      %282 = math.powf %8, %8 : tensor<1x5xf32>
      %283 = bufferization.to_tensor %alloc_13 : memref<1x5xf16>
      %284 = math.log2 %cst_3 : f32
      %285 = memref.atomic_rmw ori %c-9787_i16, %alloc_17[%c1] : (i16, memref<5xi16>) -> i16
      %286 = arith.maxsi %c2050434069_i64, %c833515725_i64 : i64
      %287 = math.tanh %2 : tensor<1x5xf16>
      %288 = vector.broadcast %c-23282_i16 : i16 to vector<1x5xi16>
      %289 = math.log2 %3 : tensor<1x5xf16>
      affine.yield %true : i1
    } else {
      %282 = math.round %3 : tensor<1x5xf16>
      %283 = memref.load %alloc[%c3] : memref<5xi16>
      %284 = bufferization.clone %alloc_7 : memref<11xi64> to memref<11xi64>
      %285 = math.roundeven %cst_3 : f32
      %286 = index.castu %c-23154_i16 : i16 to index
      %287 = arith.ori %c894789441_i64, %c894789441_i64 : i64
      %rank_34 = tensor.rank %2 : tensor<1x5xf16>
      %288 = math.expm1 %2 : tensor<1x5xf16>
      affine.yield %true : i1
    }
    %48 = index.floordivs %32, %32
    %49 = arith.xori %c-5401_i16, %c-23282_i16 : i16
    %50 = math.log10 %cst_2 : f16
    %51 = arith.divsi %c1741789997_i32, %c1741789997_i32 : i32
    %52 = math.log10 %8 : tensor<1x5xf32>
    %53 = arith.xori %c-9787_i16, %c-9787_i16 : i16
    %54 = vector.bitcast %37 : vector<1xi16> to vector<1xi16>
    %55 = index.divs %c6, %c8
    %56 = index.sizeof
    %57 = arith.remf %cst_4, %cst_3 : f32
    %58 = arith.floordivsi %c833515725_i64, %c894789441_i64 : i64
    %59 = math.log2 %3 : tensor<1x5xf16>
    %60 = vector.extract %20[0] : vector<1xf16>
    %61 = vector.bitcast %27 : vector<1xi16> to vector<1xi16>
    %62 = memref.load %alloc_16[%c3] : memref<11xi1>
    %63 = index.maxu %41, %48
    %64 = math.roundeven %cst_2 : f16
    %65 = arith.ori %c833515725_i64, %c894789441_i64 : i64
    %66 = math.fma %cst, %cst_2, %cst_2 : f16
    %67 = index.maxu %c3, %c5
    %68 = tensor.empty() : tensor<10x10x10xi1>
    %alloc_24 = memref.alloc() : memref<10x10xi1>
    %69 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %68, %68 : memref<10x10xi1>, tensor<10x10x10xi1>, tensor<10x10x10xi1>) outs(%68 : tensor<10x10x10xi1>) {
    ^bb0(%in: i1, %in_34: i1, %in_35: i1, %out: i1):
      %282 = bufferization.clone %44 : memref<11xi64> to memref<11xi64>
      %283 = vector.load %alloc_19[%c2] : memref<5xf32>, vector<10xf32>
      %284 = vector.transpose %27, [0] : vector<1xi16> to vector<1xi16>
      %285 = index.ceildivs %c5, %c3
      %286 = math.tan %cst : f16
      %alloc_36 = memref.alloc() : memref<i1>
      memref.tensor_store %18, %alloc_36 : memref<i1>
      %287 = math.powf %cst, %cst_1 : f16
      %288 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + d2 - 2) floordiv 16)>(%c13, %32, %32, %c12)
      affine.store %c-23282_i16, %alloc_18[%c5] : memref<10xi16>
      %289 = math.expm1 %cst_2 : f16
      %290 = math.log2 %45 : tensor<1x5xf16>
      memref.alloca_scope  {
        %312 = arith.floordivsi %c2050434069_i64, %c894789441_i64 : i64
        %313 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 16 + 4) * 2)>(%c13, %c7)
        affine.store %c-23282_i16, %alloc_14[%c0] : memref<11xi16>
        %314 = index.divs %c14, %c9
        %315 = memref.realloc %alloc_16 : memref<11xi1> to memref<11xi1>
        %316 = vector.bitcast %37 : vector<1xi16> to vector<1xf16>
        %317 = math.log10 %2 : tensor<1x5xf16>
        %318 = arith.remsi %c833515725_i64, %c894789441_i64 : i64
        %319 = affine.max affine_map<(d0, d1, d2) -> (d1 + 128, 0, d0 mod 2)>(%c5, %48, %c5)
        %320 = math.log2 %cst_2 : f16
        %321 = math.log1p %cst_1 : f16
        %322 = math.ctpop %c1741789997_i32 : i32
        %323 = arith.minf %cst, %cst_0 : f16
        %324 = arith.maxf %cst_0, %cst_0 : f16
        %325 = math.fma %2, %45, %45 : tensor<1x5xf16>
        %326 = arith.maxsi %c-23154_i16, %c-1812_i16 : i16
        %327 = arith.minf %cst_0, %cst_1 : f16
        %328 = vector.broadcast %c7 : index to vector<1xindex>
        %329 = vector.broadcast %out : i1 to vector<1xi1>
        %330 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        vector.scatter %alloc_8[%c3] [%328], %329, %330 : memref<10xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %331 = index.mul %63, %c4
        vector.print %54 : vector<1xi16>
        %332 = arith.mulf %cst, %cst_0 : f16
        %333 = arith.muli %c833515725_i64, %c833515725_i64 : i64
        %334 = vector.load %alloc_19[%c2] : memref<5xf32>, vector<5xf32>
        %335 = math.absf %cst_3 : f32
        %336 = math.fpowi %cst_3, %c1741789997_i32 : f32, i32
        %alloc_39 = memref.alloc() : memref<10xi64>
        memref.tensor_store %9, %alloc_39 : memref<10xi64>
        %337 = math.ctpop %out : i1
        %338 = memref.atomic_rmw assign %cst_3, %alloc_8[%c0] : (f32, memref<10xf32>) -> f32
        %339 = math.exp %3 : tensor<1x5xf16>
        %340 = tensor.empty() : tensor<1x5xi32>
        %341 = math.fpowi %3, %340 : tensor<1x5xf16>, tensor<1x5xi32>
        %342 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %27, %27, %c-5401_i16 : vector<1xi16>, vector<1xi16> into i16
        %343 = vector.broadcast %cst_3 : f32 to vector<1x5xf32>
        %344 = vector.broadcast %in : i1 to vector<1x5xi1>
        %345 = vector.broadcast %c1741789997_i32 : i32 to vector<1x5xi32>
        %346 = vector.gather %8[%67, %c9] [%345], %344, %343 : tensor<1x5xf32>, vector<1x5xi32>, vector<1x5xi1>, vector<1x5xf32> into vector<1x5xf32>
      }
      %291 = math.log2 %cst_3 : f32
      %generated_37 = tensor.generate %c11, %c2 {
      ^bb0(%arg1: index, %arg2: index):
        %312 = arith.xori %c-23282_i16, %c-1812_i16 : i16
        %313 = vector.load %282[%c6] : memref<11xi64>, vector<1x5xi64>
        %314 = vector.reduction <or>, %61 : vector<1xi16> into i16
        %315 = arith.floordivsi %c-23154_i16, %c-23282_i16 : i16
        tensor.yield %true : i1
      } : tensor<?x?xi1>
      %292 = arith.floordivsi %c-23282_i16, %c-9787_i16 : i16
      %293 = index.mul %48, %41
      %294 = vector.reduction <add>, %61 : vector<1xi16> into i16
      %295 = vector.bitcast %54 : vector<1xi16> to vector<1xi16>
      %296 = vector.broadcast %c-23282_i16 : i16 to vector<5xi16>
      %297 = vector.broadcast %out : i1 to vector<5xi1>
      %298 = vector.broadcast %c1741789997_i32 : i32 to vector<5xi32>
      %299 = vector.gather %alloc_12[%48, %38] [%298], %297, %296 : memref<1x5xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %300 = arith.mulf %cst_2, %cst : f16
      %301 = arith.minf %cst_1, %cst_0 : f16
      %generated_38 = tensor.generate %c8 {
      ^bb0(%arg1: index):
        %312 = math.powf %2, %2 : tensor<1x5xf16>
        %313 = arith.floordivsi %out, %in_34 : i1
        %314 = bufferization.to_memref %11 : memref<5xi64>
        %315 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 8)>(%c6, %c6, %c11, %48)
        tensor.yield %cst_4 : f32
      } : tensor<?xf32>
      %302 = bufferization.to_memref %reduced : memref<i1>
      %303 = math.powf %cst_2, %cst_2 : f16
      %304 = affine.max affine_map<(d0, d1) -> (-(((d0 - d1) mod 64 + (d0 - d1) ceildiv 2 - d1) mod 4))>(%c1, %67)
      %305 = vector.transpose %295, [0] : vector<1xi16> to vector<1xi16>
      %306 = math.round %cst_2 : f16
      %307 = arith.divf %cst_3, %cst_3 : f32
      %308 = vector.extract_strided_slice %296 {offsets = [0], sizes = [3], strides = [1]} : vector<5xi16> to vector<3xi16>
      %309 = math.atan %cst_0 : f16
      %310 = math.roundeven %cst_0 : f16
      %311 = math.fma %cst_1, %cst_2, %cst_2 : f16
      linalg.yield %true : i1
    } -> tensor<10x10x10xi1>
    %70 = vector.create_mask %c13 : vector<11xi1>
    %71 = vector.broadcast %c-9787_i16 : i16 to vector<1x5xi16>
    %72 = arith.divui %c-9787_i16, %c-23154_i16 : i16
    %73 = arith.maxsi %c-23282_i16, %c-23154_i16 : i16
    %74 = affine.min affine_map<(d0, d1) -> (d0 - 64, d0 * 2, d0 * 2, 0)>(%c5, %c7)
    %75 = vector.broadcast %cst_4 : f32 to vector<1x5xf32>
    %76 = vector.fma %75, %75, %75 : vector<1x5xf32>
    %77 = vector.broadcast %cst_3 : f32 to vector<5x5xf32>
    %78 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %76, %76, %77 : vector<1x5xf32>, vector<1x5xf32> into vector<5x5xf32>
    %79 = vector.bitcast %37 : vector<1xi16> to vector<1xi16>
    %80 = scf.if %true -> (i1) {
      %282 = bufferization.to_tensor %alloc_6 : memref<11xi64>
      %283 = vector.broadcast %c-5401_i16 : i16 to vector<11xi16>
      %284 = index.mul %c9, %c3
      %285 = index.mul %63, %56
      %286 = arith.floordivsi %c-1812_i16, %c-23282_i16 : i16
      %287 = math.exp %8 : tensor<1x5xf32>
      %288 = vector.broadcast %cst_4 : f32 to vector<11xf32>
      %289 = vector.maskedload %alloc_19[%c0], %70, %288 : memref<5xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      %generated_34 = tensor.generate %56 {
      ^bb0(%arg1: index):
        %290 = math.sqrt %8 : tensor<1x5xf32>
        %291 = affine.min affine_map<(d0, d1) -> (-d0)>(%c6, %55)
        %292 = index.sub %c9, %55
        %293 = index.castu %c894789441_i64 : i64 to index
        tensor.yield %cst_0 : f16
      } : tensor<?xf16>
      scf.yield %true : i1
    } else {
      %282 = math.absi %5 : tensor<5xi32>
      %283 = math.absi %10 : tensor<10xi32>
      %284 = arith.ori %c-23282_i16, %c-5401_i16 : i16
      %285 = arith.cmpf true, %cst, %cst_1 : f16
      %286 = vector.broadcast %c8 : index to vector<10xindex>
      %287 = vector.broadcast %true : i1 to vector<10xi1>
      %288 = vector.broadcast %c-5401_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_17[%c0] [%286], %287, %288 : memref<5xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %289 = bufferization.to_tensor %alloc_20 : memref<5x1xi16>
      %290 = vector.bitcast %76 : vector<1x5xf32> to vector<1x5xi32>
      %splat_34 = tensor.splat %c1741789997_i32 : tensor<5xi32>
      scf.yield %true : i1
    }
    %81 = index.add %c7, %c4
    %82 = math.fma %cst_1, %cst_0, %cst : f16
    %83 = memref.load %alloc_20[%c4, %c0] : memref<5x1xi16>
    %84 = index.divs %c13, %c10
    %85 = vector.multi_reduction <minui>, %61, %c-23154_i16 [0] : vector<1xi16> to i16
    %86 = arith.remsi %c-5401_i16, %c-9787_i16 : i16
    %87 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 64 - d3)>(%38, %74, %c12, %41)
    %88 = arith.shli %80, %true : i1
    %89 = bufferization.clone %alloc_8 : memref<10xf32> to memref<10xf32>
    %90 = arith.shrsi %c1741789997_i32, %c1741789997_i32 : i32
    %91 = vector.broadcast %c1741789997_i32 : i32 to vector<11xi32>
    %92 = vector.gather %16[%c1] [%91], %70, %70 : tensor<10xi1>, vector<11xi32>, vector<11xi1>, vector<11xi1> into vector<11xi1>
    %93 = vector.create_mask %c10 : vector<11xi1>
    %94 = vector.multi_reduction <minsi>, %71, %54 [1] : vector<1x5xi16> to vector<1xi16>
    %95 = vector.broadcast %c-1812_i16 : i16 to vector<1x1xi16>
    %96 = vector.outerproduct %61, %27, %95 {kind = #vector.kind<mul>} : vector<1xi16>, vector<1xi16>
    %97 = vector.broadcast %c1741789997_i32 : i32 to vector<1x5xi32>
    %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<1x5xi64> into tensor<5xi64>
    %98 = arith.shli %c894789441_i64, %c894789441_i64 : i64
    %99 = math.ctpop %11 : tensor<5xi64>
    %generated = tensor.generate %c13, %c11 {
    ^bb0(%arg1: index, %arg2: index):
      %282 = math.powf %8, %8 : tensor<1x5xf32>
      %283 = bufferization.to_tensor %44 : memref<11xi64>
      %284 = math.log10 %cst_2 : f16
      %285 = arith.minsi %c894789441_i64, %c894789441_i64 : i64
      tensor.yield %cst : f16
    } : tensor<?x?xf16>
    %100 = bufferization.to_tensor %alloc_6 : memref<11xi64>
    %101 = bufferization.clone %alloc_11 : memref<5xf16> to memref<5xf16>
    %102 = tensor.empty() : tensor<10x10x10xi1>
    %103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%102 : tensor<10x10x10xi1>) outs(%102 : tensor<10x10x10xi1>) {
    ^bb0(%in: i1, %out: i1):
      %282 = vector.broadcast %c-9787_i16 : i16 to vector<i16>
      vector.transfer_write %282, %alloc[%32] : vector<i16>, memref<5xi16>
      %283 = index.floordivs %c0, %74
      %284 = arith.cmpf ord, %cst_2, %cst_0 : f16
      %285 = vector.extract_strided_slice %70 {offsets = [7], sizes = [4], strides = [1]} : vector<11xi1> to vector<4xi1>
      %286 = math.fma %2, %45, %2 : tensor<1x5xf16>
      %287 = affine.max affine_map<(d0, d1, d2) -> (d1, ((d0 mod 128) floordiv 4 - d2) floordiv 4, 0, 0)>(%c7, %c2, %c2)
      %alloc_34 = memref.alloc() : memref<11xf16>
      %288 = vector.broadcast %cst_2 : f16 to vector<11xf16>
      %289 = vector.gather %alloc_34[%32] [%91], %92, %288 : memref<11xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
      %290 = arith.muli %80, %out : i1
      %291 = memref.realloc %44 : memref<11xi64> to memref<1xi64>
      %292 = math.exp %3 : tensor<1x5xf16>
      %293 = arith.ori %c-23154_i16, %85 : i16
      %294 = index.ceildivs %c3, %c6
      %295 = math.log2 %cst_2 : f16
      %296 = math.sqrt %cst_1 : f16
      %297 = math.cttz %12 : tensor<5xi1>
      %298 = math.ctlz %13 : tensor<11xi32>
      %299 = arith.addf %cst_4, %cst_3 : f32
      %300 = arith.xori %c-5401_i16, %c-1812_i16 : i16
      %301 = vector.broadcast %cst : f16 to vector<5xf16>
      %302 = math.exp2 %cst_0 : f16
      %303 = math.ctlz %15 : tensor<1x5xi16>
      %304 = arith.maxsi %c833515725_i64, %c833515725_i64 : i64
      %305 = memref.load %alloc_20[%c3, %c0] : memref<5x1xi16>
      %306 = arith.cmpf one, %cst_3, %cst_3 : f32
      %307 = math.cos %cst : f16
      %cast = tensor.cast %45 : tensor<1x5xf16> to tensor<?x?xf16>
      %308 = math.fma %cst_1, %cst_0, %cst_1 : f16
      %309 = vector.extract_strided_slice %288 {offsets = [6], sizes = [1], strides = [1]} : vector<11xf16> to vector<1xf16>
      %310 = math.log1p %cst_0 : f16
      %311 = math.absi %12 : tensor<5xi1>
      %312 = index.floordivs %c8, %32
      %313 = vector.create_mask %48 : vector<11xi1>
      linalg.yield %in : i1
    } -> tensor<10x10x10xi1>
    %104 = scf.while (%arg1 = %alloc_15) : (memref<1x5xi16>) -> memref<1x5xi16> {
      %generated_34 = tensor.generate %74 {
      ^bb0(%arg2: index):
        %289 = arith.divui %true, %true : i1
        %290 = math.cttz %c-23282_i16 : i16
        %291 = index.maxu %87, %32
        %292 = vector.create_mask %c0 : vector<5xi1>
        tensor.yield %c894789441_i64 : i64
      } : tensor<?xi64>
      %282 = math.fpowi %cst_0, %c1741789997_i32 : f16, i32
      %283 = vector.splat %55 : vector<5xindex>
      %284 = math.log2 %3 : tensor<1x5xf16>
      %285 = arith.cmpf one, %cst_3, %cst_3 : f32
      %286 = vector.shuffle %61, %61 [0] : vector<1xi16>, vector<1xi16>
      %287 = arith.shrui %c833515725_i64, %c833515725_i64 : i64
      %288 = arith.mulf %cst_3, %cst_4 : f32
      scf.condition(%80) %alloc_15 : memref<1x5xi16>
    } do {
    ^bb0(%arg1: memref<1x5xi16>):
      %282 = vector.broadcast %c2050434069_i64 : i64 to vector<1x5xi64>
      %283 = math.expm1 %cst_3 : f32
      %284 = math.expm1 %4 : tensor<11xf32>
      %285 = bufferization.to_tensor %alloc_18 : memref<10xi16>
      %286 = memref.load %arg1[%c0, %c0] : memref<1x5xi16>
      %287 = arith.cmpi ult, %c-23282_i16, %c-5401_i16 : i16
      %288 = arith.shli %c1741789997_i32, %c1741789997_i32 : i32
      %289 = arith.remui %c-23282_i16, %c-9787_i16 : i16
      %290 = math.fma %cst, %cst_2, %cst : f16
      %291 = math.floor %cst_4 : f32
      %292 = vector.broadcast %cst_4 : f32 to vector<5xf32>
      %293 = arith.divf %cst_4, %cst_3 : f32
      %294 = arith.mulf %cst_0, %cst_1 : f16
      %295 = index.castu %c-9787_i16 : i16 to index
      %296 = math.ipowi %5, %5 : tensor<5xi32>
      %297 = math.tanh %cst_1 : f16
      scf.yield %arg1 : memref<1x5xi16>
    }
    %105 = arith.minui %80, %80 : i1
    %106 = arith.divf %cst, %cst : f16
    %107 = affine.min affine_map<(d0, d1, d2) -> (0, 0, (d0 - (d2 + 64) + 24) ceildiv 8)>(%c12, %84, %48)
    %108 = vector.broadcast %cst_0 : f16 to vector<10xf16>
    %109 = vector.broadcast %80 : i1 to vector<10xi1>
    %110 = vector.broadcast %c1741789997_i32 : i32 to vector<10xi32>
    %111 = vector.gather %alloc_11[%c9] [%110], %109, %108 : memref<5xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
    %112 = vector.transpose %61, [0] : vector<1xi16> to vector<1xi16>
    %113 = arith.maxsi %c-23154_i16, %c-1812_i16 : i16
    %114 = scf.while (%arg1 = %alloc_17) : (memref<5xi16>) -> memref<5xi16> {
      %282 = bufferization.to_tensor %alloc_11 : memref<5xf16>
      %283 = index.maxs %c13, %32
      %284 = math.expm1 %2 : tensor<1x5xf16>
      %285 = index.castu %c-9787_i16 : i16 to index
      %286 = arith.maxsi %c-23282_i16, %c-5401_i16 : i16
      %287 = arith.cmpf true, %cst_0, %cst_2 : f16
      %288 = arith.shli %85, %c-23282_i16 : i16
      %289 = arith.minf %cst_3, %cst_4 : f32
      scf.condition(%true) %arg1 : memref<5xi16>
    } do {
    ^bb0(%arg1: memref<5xi16>):
      %282 = arith.shrsi %80, %true : i1
      %283 = arith.floordivsi %c-23154_i16, %c-23282_i16 : i16
      %284 = index.sizeof
      %285 = index.castu %c833515725_i64 : i64 to index
      %286 = math.log2 %cst_3 : f32
      %collapsed_34 = tensor.collapse_shape %6 [[0, 1]] : tensor<1x5xi64> into tensor<5xi64>
      %287 = vector.broadcast %c-23282_i16 : i16 to vector<11xi16>
      %288 = vector.transpose %287, [0] : vector<11xi16> to vector<11xi16>
      %289 = affine.min affine_map<(d0, d1, d2) -> (-(d0 floordiv 64 - d0) - 8, -(d0 floordiv 64 - d0))>(%c15, %48, %c6)
      %290 = memref.atomic_rmw addf %cst, %101[%c2] : (f16, memref<5xf16>) -> f16
      %291 = vector.reduction <maxui>, %110 : vector<10xi32> into i32
      %collapsed_35 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x5xf32> into tensor<5xf32>
      %292 = vector.broadcast %cst_4 : f32 to vector<5xf32>
      %293 = vector.fma %292, %292, %292 : vector<5xf32>
      %294 = arith.maxsi %c-23154_i16, %c-5401_i16 : i16
      %295 = memref.atomic_rmw mulf %cst_3, %alloc_10[%c7] : (f32, memref<11xf32>) -> f32
      %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %91, %91, %c1741789997_i32 : vector<11xi32>, vector<11xi32> into i32
      scf.yield %alloc : memref<5xi16>
    }
    %115 = memref.realloc %89 : memref<10xf32> to memref<11xf32>
    %116 = affine.if affine_set<(d0) : ((((d0 + 16) floordiv 32 + 32) ceildiv 2) mod 32 >= 0, (d0 + 16) floordiv 128 == 0)>(%c6) -> i1 {
      %282 = arith.divf %cst_0, %cst_2 : f16
      %283 = math.roundeven %45 : tensor<1x5xf16>
      %284 = arith.ori %c-9787_i16, %c-23282_i16 : i16
      %285 = index.floordivs %c6, %84
      %cast = tensor.cast %18 : tensor<i1> to tensor<i1>
      %286 = vector.multi_reduction <add>, %109, %true [0] : vector<10xi1> to i1
      %287 = math.fpowi %cst_2, %c1741789997_i32 : f16, i32
      %generated_34 = tensor.generate %c3 {
      ^bb0(%arg1: index):
        %288 = math.fma %cst_1, %cst_2, %cst_1 : f16
        %289 = math.exp %45 : tensor<1x5xf16>
        %290 = arith.addf %cst, %cst_1 : f16
        %291 = arith.minsi %c894789441_i64, %c894789441_i64 : i64
        tensor.yield %c894789441_i64 : i64
      } : tensor<?xi64>
      affine.yield %80 : i1
    } else {
      %282 = arith.muli %85, %c-1812_i16 : i16
      %283 = math.floor %4 : tensor<11xf32>
      %284 = tensor.empty() : tensor<11xf16>
      %285 = vector.broadcast %cst_0 : f16 to vector<5xf16>
      %286 = vector.broadcast %true : i1 to vector<5xi1>
      %287 = vector.broadcast %c1741789997_i32 : i32 to vector<5xi32>
      %288 = vector.gather %284[%63] [%287], %286, %285 : tensor<11xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %289 = arith.minf %cst_2, %cst_0 : f16
      %290 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 4)>(%32, %41, %c3)
      %291 = math.round %cst_1 : f16
      %292 = vector.reduction <or>, %91 : vector<11xi32> into i32
      %293 = bufferization.clone %89 : memref<10xf32> to memref<10xf32>
      affine.yield %80 : i1
    }
    %117 = vector.multi_reduction <minf>, %111, %108 [] : vector<10xf16> to vector<10xf16>
    %118 = memref.alloca_scope  -> (i1) {
      %collapsed_34 = tensor.collapse_shape %6 [[0, 1]] : tensor<1x5xi64> into tensor<5xi64>
      %282 = math.absi %6 : tensor<1x5xi64>
      %283 = math.round %cst_2 : f16
      %284 = index.floordivs %c12, %81
      %285 = tensor.empty() : tensor<10x10x10xi1>
      %286 = tensor.empty() : tensor<10x10xi1>
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%286, %285 : tensor<10x10xi1>, tensor<10x10x10xi1>) outs(%285 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_39: i1, %out: i1):
        %309 = math.cttz %collapsed : tensor<5xi64>
        %310 = arith.ori %c-9787_i16, %c-1812_i16 : i16
        %311 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %312 = affine.apply affine_map<(d0, d1) -> (-(d1 ceildiv 8) + d1)>(%41, %284)
        %313 = affine.max affine_map<(d0, d1, d2) -> (-((d2 ceildiv 2) ceildiv 2), (d2 mod 128) floordiv 32)>(%74, %c8, %84)
        %314 = arith.shli %c-1812_i16, %c-1812_i16 : i16
        %315 = memref.load %alloc_19[%c2] : memref<5xf32>
        %316 = index.castu %c1741789997_i32 : i32 to index
        %317 = tensor.empty() : tensor<1x5xi16>
        %318 = math.floor %cst_2 : f16
        %319 = tensor.empty() : tensor<11xf16>
        %320 = vector.gather %319[%32] [%110], %109, %111 : tensor<11xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %321 = arith.maxsi %c-9787_i16, %c-1812_i16 : i16
        %322 = arith.maxsi %c-23154_i16, %c-1812_i16 : i16
        %323 = vector.create_mask %c9 : vector<11xi1>
        %324 = arith.shrsi %c-5401_i16, %c-23282_i16 : i16
        %325 = index.maxu %312, %32
        %326 = math.tan %cst_4 : f32
        %327 = index.maxu %74, %c15
        %328 = vector.load %44[%c9] : memref<11xi64>, vector<1x5xi64>
        %329 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 2, d3)>(%284, %c5, %81, %284)
        %330 = arith.maxui %85, %85 : i16
        %331 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3, d1 - 32)>(%c10, %74, %c8, %c10)
        %332 = arith.minsi %c833515725_i64, %c894789441_i64 : i64
        %333 = arith.divf %cst_2, %cst_1 : f16
        %334 = arith.minsi %in, %out : i1
        %335 = math.cos %cst : f16
        %336 = arith.remf %cst_3, %cst_4 : f32
        %337 = tensor.empty(%c0) : tensor<?xf32>
        %338 = arith.floordivsi %c-9787_i16, %c-23154_i16 : i16
        %339 = math.ctlz %true : i1
        %340 = memref.load %alloc_7[%c7] : memref<11xi64>
        %341 = vector.transpose %111, [0] : vector<10xf16> to vector<10xf16>
        linalg.yield %80 : i1
      } -> tensor<10x10x10xi1>
      %288 = vector.broadcast %true : i1 to vector<11x11xi1>
      %289 = vector.outerproduct %70, %92, %288 {kind = #vector.kind<minsi>} : vector<11xi1>, vector<11xi1>
      %290 = arith.addf %cst, %cst : f16
      %291 = math.ipowi %true, %80 : i1
      %cast = tensor.cast %15 : tensor<1x5xi16> to tensor<?x?xi16>
      %alloca_35 = memref.alloca() : memref<5xi32>
      vector.print %97 : vector<1x5xi32>
      %292 = arith.shrsi %c-1812_i16, %c-5401_i16 : i16
      %generated_36 = tensor.generate %74 {
      ^bb0(%arg1: index):
        %309 = arith.subi %c894789441_i64, %c2050434069_i64 : i64
        %310 = math.cos %45 : tensor<1x5xf16>
        %311 = index.mul %c2, %c2
        %312 = memref.realloc %44 : memref<11xi64> to memref<1xi64>
        tensor.yield %cst_4 : f32
      } : tensor<?xf32>
      %rank_37 = tensor.rank %collapsed_34 : tensor<5xi64>
      %293 = arith.minsi %c833515725_i64, %c833515725_i64 : i64
      %294 = math.round %4 : tensor<11xf32>
      %295 = vector.shuffle %76, %76 [0] : vector<1x5xf32>, vector<1x5xf32>
      %296 = math.ctlz %11 : tensor<5xi64>
      %297 = vector.transpose %79, [0] : vector<1xi16> to vector<1xi16>
      %298 = vector.transpose %61, [0] : vector<1xi16> to vector<1xi16>
      %299 = math.roundeven %cst : f16
      %300 = affine.min affine_map<(d0, d1) -> (d1 + d0 + (d1 ceildiv 16) mod 2, ((d1 ceildiv 16) mod 2) floordiv 16 + 2, d0 mod 32)>(%c12, %c5)
      %301 = math.exp %3 : tensor<1x5xf16>
      affine.store %cst_0, %101[%c14] : memref<5xf16>
      %302 = vector.shuffle %79, %37 [0, 1] : vector<1xi16>, vector<1xi16>
      %expanded_38 = tensor.expand_shape %14 [[0, 1]] : tensor<11xi16> into tensor<11x1xi16>
      %303 = arith.andi %c-5401_i16, %c-9787_i16 : i16
      %304 = arith.divf %cst_2, %cst : f16
      %305 = arith.minf %cst_2, %cst : f16
      %306 = arith.minf %cst_3, %cst_4 : f32
      %307 = vector.multi_reduction <maxf>, %75, %76 [] : vector<1x5xf32> to vector<1x5xf32>
      %308 = math.ctlz %13 : tensor<11xi32>
      memref.alloca_scope.return %true : i1
    }
    %119 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 16 - 1) mod 4 - d2 mod 8)>(%c0, %c9, %38, %c2)
    %120 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32 + d2 + d0 + d0, d1, (d2 + d0) * 64, d3 floordiv 32 + d2 + d0)>(%c4, %c15, %41, %c5)
    %121 = arith.shrsi %c1741789997_i32, %c1741789997_i32 : i32
    %122 = index.maxu %c2, %c1
    %extracted = tensor.extract %21[] : tensor<i32>
    %123 = vector.broadcast %true : i1 to vector<1xi1>
    %124 = vector.maskedload %alloc[%c2], %123, %37 : memref<5xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
    %125 = memref.load %alloc_10[%c6] : memref<11xf32>
    %126 = memref.atomic_rmw maxf %cst_4, %alloc_10[%c1] : (f32, memref<11xf32>) -> f32
    %127 = index.sub %c5, %c9
    %128 = arith.floordivsi %c-23282_i16, %c-5401_i16 : i16
    %129 = arith.shrui %c-5401_i16, %c-9787_i16 : i16
    %130 = math.ctpop %5 : tensor<5xi32>
    %131 = math.exp %4 : tensor<11xf32>
    %132 = arith.maxf %cst_2, %cst : f16
    %133 = index.add %c7, %c11
    %134 = math.atan %cst : f16
    %splat = tensor.splat %c-9787_i16 : tensor<10xi16>
    %135 = arith.shrui %118, %118 : i1
    %generated_25 = tensor.generate %133, %c11 {
    ^bb0(%arg1: index, %arg2: index):
      %282 = arith.remsi %85, %85 : i16
      %283 = arith.ceildivsi %c-23154_i16, %c-9787_i16 : i16
      %284 = math.log2 %3 : tensor<1x5xf16>
      %rank_34 = tensor.rank %4 : tensor<11xf32>
      tensor.yield %cst_1 : f16
    } : tensor<?x?xf16>
    %136 = vector.broadcast %c-1812_i16 : i16 to vector<5xi16>
    %137 = vector.broadcast %cst : f16 to vector<10x10xf16>
    %138 = vector.outerproduct %108, %111, %137 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
    %139 = vector.matrix_multiply %110, %110 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
    %140 = vector.flat_transpose %108 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
    %141 = bufferization.clone %alloc_21 : memref<10xi32> to memref<10xi32>
    %142 = arith.andi %85, %c-5401_i16 : i16
    %c58031342_i32 = arith.constant 58031342 : i32
    %143 = arith.subi %c833515725_i64, %c894789441_i64 : i64
    %rank = tensor.rank %2 : tensor<1x5xf16>
    %c1541305699_i64 = arith.constant 1541305699 : i64
    %144 = arith.ori %85, %c-23282_i16 : i16
    %145 = math.tan %4 : tensor<11xf32>
    %146 = math.powf %cst_1, %cst : f16
    %rank_26 = tensor.rank %1 : tensor<1x5xi16>
    %rank_27 = tensor.rank %11 : tensor<5xi64>
    %147 = arith.shli %c-5401_i16, %85 : i16
    %148 = index.divs %119, %c4
    %149 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d3, d2)>(%c15, %rank, %c6, %c3)
    %150 = arith.xori %c-23154_i16, %c-5401_i16 : i16
    %151 = index.mul %c3, %87
    %152 = math.log1p %4 : tensor<11xf32>
    %153 = arith.subi %c-5401_i16, %c-9787_i16 : i16
    %154 = tensor.empty() : tensor<10x10x10xi1>
    %155 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%154 : tensor<10x10x10xi1>) {
    ^bb0(%out: i1):
      %282 = math.fpowi %cst_4, %c1741789997_i32 : f32, i32
      %283 = math.tan %8 : tensor<1x5xf32>
      %284 = index.sub %55, %87
      %285 = arith.maxf %cst_3, %cst_4 : f32
      %286 = arith.shli %true, %true : i1
      %287 = math.cttz %6 : tensor<1x5xi64>
      %288 = vector.bitcast %111 : vector<10xf16> to vector<10xi16>
      %289 = tensor.empty() : tensor<11xi1>
      %290 = vector.gather %289[%56] [%110], %109, %109 : tensor<11xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %291 = arith.muli %extracted, %c1741789997_i32 : i32
      %292 = index.sub %rank_27, %56
      %293 = arith.shli %true, %80 : i1
      %294 = arith.andi %85, %c-5401_i16 : i16
      %295 = arith.maxsi %out, %out : i1
      %296 = vector.shuffle %91, %139 [0, 1, 2, 4, 5, 6, 7, 8, 11] : vector<11xi32>, vector<1xi32>
      %297 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      %298 = vector.multi_reduction <maxf>, %75, %297 [0] : vector<1x5xf32> to vector<5xf32>
      %299 = vector.shuffle %124, %136 [1, 2, 5] : vector<1xi16>, vector<5xi16>
      %300 = math.ctpop %80 : i1
      %301 = memref.realloc %alloc_17 : memref<5xi16> to memref<1xi16>
      %302 = index.mul %48, %c4
      %303 = math.ctpop %15 : tensor<1x5xi16>
      %rank_34 = tensor.rank %15 : tensor<1x5xi16>
      %304 = index.ceildivs %c14, %149
      %305 = vector.shuffle %97, %97 [0] : vector<1x5xi32>, vector<1x5xi32>
      %from_elements = tensor.from_elements %cst_3, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_3, %cst_4, %cst_4, %cst_3, %cst_4 : tensor<11xf32>
      %306 = index.floordivs %55, %84
      %307 = arith.minf %cst_4, %cst_3 : f32
      %308 = arith.divui %out, %80 : i1
      %309 = vector.reduction <and>, %109 : vector<10xi1> into i1
      %310 = math.tan %cst_3 : f32
      vector.print %79 : vector<1xi16>
      %311 = math.tan %2 : tensor<1x5xf16>
      %312 = arith.minsi %extracted, %c1741789997_i32 : i32
      linalg.yield %80 : i1
    } -> tensor<10x10x10xi1>
    %156 = math.ipowi %10, %10 : tensor<10xi32>
    %157 = arith.remf %cst_4, %cst_4 : f32
    %158 = arith.minf %cst_4, %cst_3 : f32
    %159 = math.absf %cst_2 : f16
    %160 = scf.while (%arg1 = %alloc_19) : (memref<5xf32>) -> memref<5xf32> {
      %282 = index.mul %c4, %127
      %283 = affine.min affine_map<(d0, d1, d2) -> (d1 - d0 - 1)>(%148, %149, %c6)
      %284 = arith.minsi %c-23154_i16, %c-23154_i16 : i16
      %285 = memref.realloc %101 : memref<5xf16> to memref<1xf16>
      %generated_34 = tensor.generate %32 {
      ^bb0(%arg2: index, %arg3: index):
        %290 = arith.subi %c-23154_i16, %c-23154_i16 : i16
        %291 = vector.bitcast %93 : vector<11xi1> to vector<11xi1>
        %292 = arith.divf %cst_4, %cst_4 : f32
        %293 = vector.flat_transpose %109 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        tensor.yield %extracted : i32
      } : tensor<?x5xi32>
      %alloc_35 = memref.alloc() : memref<11xi32>
      %286 = vector.broadcast %extracted : i32 to vector<5xi32>
      %287 = vector.broadcast %80 : i1 to vector<5xi1>
      %288 = vector.gather %alloc_35[%41] [%286], %287, %286 : memref<11xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %cst_36 = arith.constant 4.764800e+04 : f16
      %289 = math.powf %3, %3 : tensor<1x5xf16>
      scf.condition(%118) %arg1 : memref<5xf32>
    } do {
    ^bb0(%arg1: memref<5xf32>):
      %282 = arith.divui %c-1812_i16, %85 : i16
      %283 = arith.remf %cst_3, %cst_3 : f32
      %284 = arith.minf %cst, %cst_1 : f16
      %285 = arith.remf %cst_0, %cst_1 : f16
      %286 = arith.maxsi %118, %118 : i1
      %287 = vector.broadcast %c-9787_i16 : i16 to vector<10xi16>
      %288 = vector.transfer_write %287, %15[%c14, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi16>, tensor<1x5xi16>
      %289 = arith.maxf %cst_3, %cst_4 : f32
      %290 = math.log10 %3 : tensor<1x5xf16>
      %291 = vector.splat %c2 : vector<5xindex>
      %292 = math.ctlz %extracted : i32
      %293 = math.log10 %4 : tensor<11xf32>
      %294 = tensor.empty() : tensor<10x10x10xi1>
      %alloc_34 = memref.alloc() : memref<10x10xi1>
      %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34 : memref<10x10xi1>) outs(%294 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %out: i1):
        %300 = math.tan %8 : tensor<1x5xf32>
        %301 = arith.minf %cst_0, %cst : f16
        %302 = math.log2 %3 : tensor<1x5xf16>
        %303 = index.castu %c-9787_i16 : i16 to index
        %304 = math.tanh %cst_0 : f16
        %305 = arith.floordivsi %c-1812_i16, %c-1812_i16 : i16
        %306 = math.cos %8 : tensor<1x5xf32>
        %307 = math.ctlz %16 : tensor<10xi1>
        %308 = vector.load %alloc_18[%c5] : memref<10xi16>, vector<1x5xi16>
        %309 = arith.maxsi %true, %118 : i1
        %310 = index.sub %84, %127
        %311 = math.atan2 %cst, %cst_0 : f16
        %312 = math.log10 %45 : tensor<1x5xf16>
        %313 = vector.reduction <maxf>, %140 : vector<10xf16> into f16
        %314 = index.mul %63, %149
        %315 = arith.minsi %80, %out : i1
        %316 = math.log2 %4 : tensor<11xf32>
        %c0_i64 = arith.constant 0 : i64
        %317 = vector.transfer_read %collapsed[%107], %c0_i64 : tensor<5xi64>, vector<i64>
        %318 = arith.remf %cst, %cst : f16
        %319 = arith.muli %c2050434069_i64, %c2050434069_i64 : i64
        %320 = math.log10 %2 : tensor<1x5xf16>
        %321 = vector.create_mask %122, %c4 : vector<1x5xi1>
        %322 = index.divs %303, %151
        affine.store %c-23282_i16, %alloc_18[%c1] : memref<10xi16>
        %expanded_35 = tensor.expand_shape %13 [[0, 1]] : tensor<11xi32> into tensor<11x1xi32>
        %323 = math.fma %2, %3, %3 : tensor<1x5xf16>
        %324 = arith.xori %118, %true : i1
        %325 = arith.ori %c833515725_i64, %c833515725_i64 : i64
        %cast = tensor.cast %5 : tensor<5xi32> to tensor<?xi32>
        affine.store %cst_0, %alloc_5[%c15, %c7] : memref<1x5xf16>
        %326 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 16 - 1) mod 4 - d2 mod 8)>(%c13, %310, %55, %127)
        %327 = vector.multi_reduction <mul>, %92, %93 [] : vector<11xi1> to vector<11xi1>
        linalg.yield %in : i1
      } -> tensor<10x10x10xi1>
      %296 = arith.maxui %extracted, %extracted : i32
      %297 = index.floordivs %c8, %c6
      %298 = memref.realloc %alloc_16 : memref<11xi1> to memref<5xi1>
      %299 = arith.ori %extracted, %extracted : i32
      scf.yield %arg1 : memref<5xf32>
    }
    %161 = math.ctlz %17 : tensor<10xi1>
    %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<10xi32> into tensor<10x1xi32>
    %162 = math.ctpop %reduced : tensor<i1>
    %163 = affine.for %arg1 = 0 to 89 iter_args(%arg2 = %c833515725_i64) -> (i64) {
      affine.yield %c2050434069_i64 : i64
    }
    %164 = vector.broadcast %c-23282_i16 : i16 to vector<1x1xi16>
    %165 = vector.outerproduct %27, %27, %164 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
    %166 = vector.transpose %61, [0] : vector<1xi16> to vector<1xi16>
    %167 = index.add %74, %c3
    %168 = vector.broadcast %true : i1 to vector<5xi1>
    %169 = vector.broadcast %c1741789997_i32 : i32 to vector<5xi32>
    %170 = vector.gather %0[%c12] [%169], %168, %168 : tensor<10xi1>, vector<5xi32>, vector<5xi1>, vector<5xi1> into vector<5xi1>
    %171 = math.fpowi %cst_4, %extracted : f32, i32
    %172 = index.floordivs %c2, %c9
    %173 = scf.while (%arg1 = %alloc_20) : (memref<5x1xi16>) -> memref<5x1xi16> {
      %282 = arith.addf %cst_3, %cst_4 : f32
      %283 = index.add %c1, %c2
      %284 = vector.reduction <minui>, %61 : vector<1xi16> into i16
      %285 = math.ipowi %splat, %splat : tensor<10xi16>
      %286 = index.sizeof
      %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, -d3 - 128, -d3 - 2)>(%c0, %81, %32, %149)
      %288 = index.castu %c833515725_i64 : i64 to index
      affine.for %arg2 = 0 to 81 {
      }
      scf.condition(%true) %alloc_20 : memref<5x1xi16>
    } do {
    ^bb0(%arg1: memref<5x1xi16>):
      %collapsed_34 = tensor.collapse_shape %7 [[0, 1]] : tensor<1x5xi64> into tensor<5xi64>
      %282 = vector.insertelement %extracted, %169[%c15 : index] : vector<5xi32>
      %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %108, %108, %cst_1 : vector<10xf16>, vector<10xf16> into f16
      %284 = tensor.empty() : tensor<10x10x10xi1>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%284 : tensor<10x10x10xi1>) {
      ^bb0(%out: i1):
        %297 = arith.shrsi %c-23282_i16, %c-9787_i16 : i16
        %298 = arith.addf %cst, %cst_1 : f16
        %299 = math.sqrt %4 : tensor<11xf32>
        %300 = index.castu %c-5401_i16 : i16 to index
        %301 = math.cos %8 : tensor<1x5xf32>
        %302 = vector.flat_transpose %109 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %303 = math.cos %cst : f16
        %304 = affine.max affine_map<(d0, d1) -> (d0, d1 ceildiv 64)>(%300, %127)
        %305 = math.fma %cst_0, %cst_1, %cst_2 : f16
        %306 = affine.max affine_map<(d0, d1) -> (d1 mod 32, d1 + 4)>(%84, %148)
        %307 = affine.apply affine_map<(d0) -> (-(d0 mod 128))>(%172)
        %308 = math.log2 %cst : f16
        %309 = bufferization.to_tensor %alloc_13 : memref<1x5xf16>
        %310 = bufferization.to_tensor %arg1 : memref<5x1xi16>
        %311 = vector.create_mask %304, %c15 : vector<1x5xi1>
        %312 = arith.minf %cst_2, %cst_0 : f16
        %313 = arith.remsi %85, %c-23154_i16 : i16
        %314 = arith.maxsi %out, %80 : i1
        %315 = math.powf %2, %3 : tensor<1x5xf16>
        %316 = math.exp2 %309 : tensor<1x5xf16>
        %317 = vector.reduction <xor>, %37 : vector<1xi16> into i16
        %318 = arith.cmpi ne, %c894789441_i64, %c833515725_i64 : i64
        %319 = math.exp2 %3 : tensor<1x5xf16>
        %320 = arith.shrui %c894789441_i64, %c2050434069_i64 : i64
        %321 = arith.maxsi %c-1812_i16, %85 : i16
        %322 = vector.broadcast %c-5401_i16 : i16 to vector<10xi16>
        %323 = arith.mulf %cst, %cst_2 : f16
        %324 = arith.shrsi %c1741789997_i32, %extracted : i32
        %325 = vector.shuffle %75, %76 [1] : vector<1x5xf32>, vector<1x5xf32>
        %alloc_36 = memref.alloc() : memref<11xf16>
        %326 = vector.broadcast %cst_2 : f16 to vector<5xf16>
        %327 = vector.gather %alloc_36[%120] [%169], %168, %326 : memref<11xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %328 = memref.atomic_rmw maxu %c894789441_i64, %alloc_6[%c10] : (i64, memref<11xi64>) -> i64
        %329 = vector.broadcast %c-9787_i16 : i16 to vector<1x1xi16>
        %330 = vector.outerproduct %54, %37, %329 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
        linalg.yield %118 : i1
      } -> tensor<10x10x10xi1>
      %286 = arith.minsi %c2050434069_i64, %c833515725_i64 : i64
      %287 = math.tan %8 : tensor<1x5xf32>
      %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %110, %110, %c1741789997_i32 : vector<10xi32>, vector<10xi32> into i32
      %289 = arith.remsi %80, %80 : i1
      %alloc_35 = memref.alloc() : memref<11xf16>
      %290 = arith.cmpf ole, %cst, %cst_0 : f16
      %291 = arith.maxsi %c2050434069_i64, %c894789441_i64 : i64
      %292 = bufferization.to_tensor %alloc_15 : memref<1x5xi16>
      %293 = math.ctpop %292 : tensor<1x5xi16>
      %294 = vector.transpose %61, [0] : vector<1xi16> to vector<1xi16>
      %295 = index.sub %133, %c12
      %296 = arith.xori %c-23154_i16, %c-9787_i16 : i16
      scf.yield %alloc_20 : memref<5x1xi16>
    }
    %174 = index.mul %rank_27, %122
    %175 = arith.minsi %c-23154_i16, %c-5401_i16 : i16
    %176 = affine.min affine_map<(d0) -> ((d0 * 32 - 64) floordiv 128 - 32, 0)>(%174)
    %177 = math.expm1 %cst_2 : f16
    %178 = math.ctlz %c-1812_i16 : i16
    %179 = bufferization.to_tensor %alloc_9 : memref<1x5xf32>
    %180 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 2)>(%84, %32, %55, %38)
    %181 = memref.atomic_rmw mulf %cst_3, %alloc_8[%c3] : (f32, memref<10xf32>) -> f32
    %182 = index.sizeof
    %183 = vector.broadcast %c1741789997_i32 : i32 to vector<1x1xi32>
    %184 = vector.outerproduct %139, %139, %183 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
    %185 = arith.divsi %c2050434069_i64, %c833515725_i64 : i64
    %186 = arith.floordivsi %c1741789997_i32, %extracted : i32
    %187 = arith.andi %85, %c-23154_i16 : i16
    %alloca = memref.alloca() : memref<11xi16>
    %188 = affine.min affine_map<(d0, d1, d2) -> (d2 + d1 - 32, d0, d0 + d2 + d1)>(%rank, %148, %148)
    %189 = vector.flat_transpose %91 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
    %190 = tensor.empty() : tensor<10x10x10xi1>
    %191 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%190 : tensor<10x10x10xi1>) {
    ^bb0(%out: i1):
      %282 = arith.xori %c-5401_i16, %c-5401_i16 : i16
      %283 = math.round %cst_0 : f16
      %284 = bufferization.clone %44 : memref<11xi64> to memref<11xi64>
      %285 = math.log2 %cst : f16
      %286 = vector.broadcast %80 : i1 to vector<1x5xi1>
      %287 = math.cos %cst : f16
      %288 = math.log2 %cst_4 : f32
      %289 = vector.broadcast %extracted : i32 to vector<10x10xi32>
      %290 = vector.outerproduct %110, %110, %289 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
      %291 = math.log2 %45 : tensor<1x5xf16>
      %292 = memref.realloc %alloc_18 : memref<10xi16> to memref<10xi16>
      %293 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      %294 = vector.multi_reduction <maxf>, %75, %293 [0] : vector<1x5xf32> to vector<5xf32>
      %295 = math.sqrt %2 : tensor<1x5xf16>
      %296 = vector.extract_strided_slice %93 {offsets = [7], sizes = [3], strides = [1]} : vector<11xi1> to vector<3xi1>
      %297 = arith.subi %c-5401_i16, %c-23154_i16 : i16
      %298 = index.floordivs %c7, %c12
      %299 = vector.broadcast %55 : index to vector<11xindex>
      %300 = vector.broadcast %c894789441_i64 : i64 to vector<11xi64>
      vector.scatter %alloc_6[%c5] [%299], %93, %300 : memref<11xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
      %301 = arith.xori %out, %true : i1
      %302 = bufferization.to_tensor %alloc_18 : memref<10xi16>
      %303 = arith.minui %c-23154_i16, %85 : i16
      %304 = bufferization.to_memref %302 : memref<10xi16>
      %305 = math.ctlz %5 : tensor<5xi32>
      %306 = scf.while (%arg1 = %out) : (i1) -> i1 {
        %320 = math.log2 %cst : f16
        %321 = index.maxu %rank_26, %84
        %322 = index.maxu %c4, %148
        %323 = index.sizeof
        %rank_34 = tensor.rank %reduced : tensor<i1>
        %324 = vector.shuffle %92, %170 [2, 7, 9, 11, 15] : vector<11xi1>, vector<5xi1>
        %325 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 mod 64, (d1 - 32) * 8)>(%180, %322, %323, %rank_26)
        %326 = affine.max affine_map<(d0, d1) -> ((((d1 * 2) ceildiv 128) ceildiv 32) floordiv 2, d1 + d0 * 32, d1 + d0 * 32)>(%rank_27, %41)
        scf.condition(%arg1) %80 : i1
      } do {
      ^bb0(%arg1: i1):
        %320 = math.atan %2 : tensor<1x5xf16>
        %321 = vector.bitcast %108 : vector<10xf16> to vector<10xi16>
        %322 = math.exp2 %3 : tensor<1x5xf16>
        %alloca_34 = memref.alloca() : memref<1x5xf32>
        %323 = arith.andi %c-5401_i16, %c-23154_i16 : i16
        %324 = math.atan %45 : tensor<1x5xf16>
        %extracted_35 = tensor.extract %1[%c0, %c2] : tensor<1x5xi16>
        %325 = tensor.empty() : tensor<5xi16>
        %326 = vector.splat %c-9787_i16 : vector<11xi16>
        %327 = arith.addf %cst_2, %cst_1 : f16
        %328 = index.maxs %c11, %c15
        %329 = math.cos %2 : tensor<1x5xf16>
        %330 = vector.flat_transpose %123 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %331 = index.mul %182, %149
        %332 = index.sizeof
        %333 = vector.extract_strided_slice %61 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        scf.yield %true : i1
      }
      %307 = index.sub %48, %c5
      %308 = index.castu %c-23282_i16 : i16 to index
      %309 = vector.broadcast %c2050434069_i64 : i64 to vector<i64>
      %310 = vector.transfer_write %309, %collapsed[%c9] : vector<i64>, tensor<5xi64>
      %311 = tensor.empty() : tensor<1x5xi32>
      %312 = math.fpowi %3, %311 : tensor<1x5xf16>, tensor<1x5xi32>
      %313 = arith.floordivsi %c-5401_i16, %c-23282_i16 : i16
      %314 = vector.broadcast %c1741789997_i32 : i32 to vector<5x5xi32>
      %315 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %97, %97, %314 : vector<1x5xi32>, vector<1x5xi32> into vector<5x5xi32>
      %316 = arith.divf %cst_4, %cst_4 : f32
      %317 = math.ipowi %c-23282_i16, %c-5401_i16 : i16
      %318 = index.floordivs %180, %c5
      %319 = vector.create_mask %c10, %149 : vector<1x5xi1>
      linalg.yield %out : i1
    } -> tensor<10x10x10xi1>
    %192 = index.sizeof
    vector.print %169 : vector<5xi32>
    %193 = index.divs %c3, %c4
    %194 = arith.remf %cst_1, %cst_2 : f16
    %195 = vector.extract_strided_slice %110 {offsets = [6], sizes = [4], strides = [1]} : vector<10xi32> to vector<4xi32>
    memref.store %c-23282_i16, %alloc_15[%c0, %c4] : memref<1x5xi16>
    %196 = math.ipowi %12, %12 : tensor<5xi1>
    %197 = math.floor %cst : f16
    %198 = vector.shuffle %195, %195 [4, 5] : vector<4xi32>, vector<4xi32>
    %199 = vector.broadcast %cst_4 : f32 to vector<11xf32>
    vector.transfer_write %199, %alloc_9[%87, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf32>, memref<1x5xf32>
    %200 = arith.remsi %85, %c-9787_i16 : i16
    %201 = vector.multi_reduction <minui>, %170, %118 [0] : vector<5xi1> to i1
    %202 = affine.apply affine_map<(d0) -> (-(d0 mod 128))>(%rank)
    %203 = vector.multi_reduction <and>, %54, %124 [] : vector<1xi16> to vector<1xi16>
    %204 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %124, %27, %c-9787_i16 : vector<1xi16>, vector<1xi16> into i16
    %205 = memref.atomic_rmw maxf %cst_1, %alloc_13[%c0, %c3] : (f16, memref<1x5xf16>) -> f16
    %206 = affine.apply affine_map<(d0) -> (d0)>(%149)
    %207 = bufferization.clone %alloc_16 : memref<11xi1> to memref<11xi1>
    %208 = math.fma %2, %3, %3 : tensor<1x5xf16>
    %209 = math.sqrt %cst_2 : f16
    %210 = arith.xori %extracted, %c1741789997_i32 : i32
    %211 = scf.if %201 -> (i32) {
      %282 = math.floor %cst_0 : f16
      %283 = arith.shrsi %c894789441_i64, %c2050434069_i64 : i64
      %284 = vector.create_mask %c12 : vector<10xi1>
      %285 = vector.broadcast %118 : i1 to vector<5x5xi1>
      %286 = vector.outerproduct %170, %168, %285 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
      %287 = index.castu %c833515725_i64 : i64 to index
      %rank_34 = tensor.rank %22 : tensor<i32>
      %splat_35 = tensor.splat %cst_1 : tensor<10xf16>
      memref.store %extracted, %141[%c7] : memref<10xi32>
      scf.yield %extracted : i32
    } else {
      %282 = vector.broadcast %c1741789997_i32 : i32 to vector<4x4xi32>
      %283 = vector.outerproduct %195, %195, %282 {kind = #vector.kind<maxui>} : vector<4xi32>, vector<4xi32>
      %284 = arith.ori %201, %118 : i1
      %285 = tensor.empty() : tensor<10xf32>
      %286 = memref.realloc %alloc_14 : memref<11xi16> to memref<1xi16>
      %287 = arith.maxf %cst_1, %cst_1 : f16
      %288 = arith.divui %80, %201 : i1
      %289 = arith.andi %c2050434069_i64, %c833515725_i64 : i64
      %290 = bufferization.to_tensor %alloc_14 : memref<11xi16>
      scf.yield %extracted : i32
    }
    %212 = affine.apply affine_map<(d0) -> (d0 * 2)>(%84)
    %213 = index.ceildivs %41, %120
    %214 = vector.reduction <or>, %27 : vector<1xi16> into i16
    %215 = vector.broadcast %cst_2 : f16 to vector<10x10xf16>
    %216 = vector.outerproduct %108, %111, %215 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
    %217 = arith.minsi %201, %201 : i1
    %218 = bufferization.clone %24 : memref<i32> to memref<i32>
    %219 = vector.broadcast %true : i1 to vector<10xi1>
    %220 = math.copysign %cst_3, %cst_3 : f32
    %221 = math.ipowi %c-1812_i16, %c-23282_i16 : i16
    %222 = index.ceildivs %c14, %c15
    %223 = math.fma %8, %8, %8 : tensor<1x5xf32>
    %224 = math.tan %45 : tensor<1x5xf16>
    %225 = math.ctlz %7 : tensor<1x5xi64>
    %226 = math.exp %3 : tensor<1x5xf16>
    %227 = math.ctlz %reduced : tensor<i1>
    %228 = scf.while (%arg1 = %140) : (vector<10xf16>) -> vector<10xf16> {
      vector.print %109 : vector<10xi1>
      %282 = vector.broadcast %32 : index to vector<10xindex>
      vector.scatter %207[%c6] [%282], %219, %109 : memref<11xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %283 = math.roundeven %2 : tensor<1x5xf16>
      %284 = bufferization.to_tensor %alloc_16 : memref<11xi1>
      %cast = tensor.cast %1 : tensor<1x5xi16> to tensor<?x?xi16>
      %285 = arith.floordivsi %211, %211 : i32
      %286 = index.sub %c9, %81
      %287 = math.log2 %cst_3 : f32
      scf.condition(%201) %111 : vector<10xf16>
    } do {
    ^bb0(%arg1: vector<10xf16>):
      %282 = math.sqrt %3 : tensor<1x5xf16>
      %283 = vector.flat_transpose %110 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %284 = scf.index_switch %c11 -> index 
      case 1 {
        %294 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %295 = vector.maskedload %alloc_9[%c0, %c0], %170, %294 : memref<1x5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %cast_34 = tensor.cast %10 : tensor<10xi32> to tensor<?xi32>
        %296 = arith.remsi %85, %c-1812_i16 : i16
        %297 = vector.broadcast %cst_3 : f32 to vector<10xf32>
        %298 = vector.gather %179[%192, %120] [%283], %109, %297 : tensor<1x5xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %299 = memref.load %alloc_9[%c0, %c1] : memref<1x5xf32>
        %300 = tensor.empty() : tensor<10xf32>
        %301 = vector.gather %300[%122] [%283], %219, %298 : tensor<10xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %302 = arith.negf %cst_4 : f32
        %303 = math.tan %4 : tensor<11xf32>
        %304 = index.castu %c-23282_i16 : i16 to index
        %305 = math.round %4 : tensor<11xf32>
        %306 = math.atan2 %cst_2, %cst : f16
        %307 = arith.subi %c894789441_i64, %c833515725_i64 : i64
        %308 = math.ctlz %c1741789997_i32 : i32
        %309 = arith.minsi %c2050434069_i64, %c833515725_i64 : i64
        %310 = vector.load %101[%c2] : memref<5xf16>, vector<10xf16>
        %311 = bufferization.clone %alloc_21 : memref<10xi32> to memref<10xi32>
        scf.yield %c3 : index
      }
      case 2 {
        %294 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %extracted_34 = tensor.extract %11[%c3] : tensor<5xi64>
        %295 = tensor.empty() : tensor<11xi16>
        %296 = affine.apply affine_map<(d0) -> (d0)>(%107)
        %297 = math.round %cst : f16
        %298 = vector.broadcast %cst_4 : f32 to vector<5x5xf32>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %76, %76, %298 : vector<1x5xf32>, vector<1x5xf32> into vector<5x5xf32>
        %300 = vector.create_mask %rank_27 : vector<10xi1>
        %301 = bufferization.clone %89 : memref<10xf32> to memref<10xf32>
        %302 = math.atan %179 : tensor<1x5xf32>
        %303 = math.ipowi %7, %6 : tensor<1x5xi64>
        %304 = math.cos %cst_3 : f32
        %305 = bufferization.clone %alloc_15 : memref<1x5xi16> to memref<1x5xi16>
        %306 = arith.addf %cst, %cst_0 : f16
        %307 = math.fma %3, %45, %45 : tensor<1x5xf16>
        %308 = vector.load %alloc_14[%c0] : memref<11xi16>, vector<10xi16>
        %309 = arith.shli %c-1812_i16, %85 : i16
        scf.yield %120 : index
      }
      case 3 {
        %294 = math.tanh %4 : tensor<11xf32>
        %295 = math.round %cst : f16
        %296 = memref.atomic_rmw maxu %c-9787_i16, %alloc_12[%c0, %c4] : (i16, memref<1x5xi16>) -> i16
        %297 = index.maxs %119, %167
        %298 = math.ctlz %14 : tensor<11xi16>
        vector.print %139 : vector<1xi32>
        %299 = vector.multi_reduction <mul>, %124, %c-23282_i16 [0] : vector<1xi16> to i16
        %300 = vector.extract_strided_slice %168 {offsets = [0], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %301 = math.ipowi %1, %15 : tensor<1x5xi16>
        %302 = math.round %cst_2 : f16
        %303 = affine.max affine_map<(d0) -> (-(d0 - 30) - 16, 0, d0 - 30)>(%202)
        %304 = math.ipowi %17, %16 : tensor<10xi1>
        %305 = index.mul %133, %120
        %306 = index.mul %303, %55
        %307 = vector.broadcast %c1741789997_i32 : i32 to vector<11x11xi32>
        %308 = vector.outerproduct %91, %189, %307 {kind = #vector.kind<and>} : vector<11xi32>, vector<11xi32>
        %309 = math.fpowi %4, %13 : tensor<11xf32>, tensor<11xi32>
        scf.yield %306 : index
      }
      default {
        %294 = math.log10 %2 : tensor<1x5xf16>
        %295 = affine.apply affine_map<(d0) -> (d0)>(%202)
        %296 = memref.realloc %alloc_6 : memref<11xi64> to memref<11xi64>
        %297 = math.exp %179 : tensor<1x5xf32>
        %298 = arith.minf %cst, %cst_2 : f16
        %299 = math.floor %cst_1 : f16
        %300 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 4 - 16) * 128, (d1 - 128) * 4)>(%119, %c0)
        %301 = vector.create_mask %c13 : vector<10xi1>
        %302 = arith.minf %cst_0, %cst : f16
        %303 = index.divs %48, %c1
        %304 = index.floordivs %84, %149
        %305 = math.fma %2, %3, %2 : tensor<1x5xf16>
        %306 = math.cttz %10 : tensor<10xi32>
        %307 = math.expm1 %8 : tensor<1x5xf32>
        %308 = vector.broadcast %c-5401_i16 : i16 to vector<1x1xi16>
        %309 = vector.outerproduct %27, %79, %308 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
        %310 = math.floor %4 : tensor<11xf32>
        scf.yield %213 : index
      }
      %285 = math.floor %8 : tensor<1x5xf32>
      %286 = affine.for %arg2 = 0 to 52 iter_args(%arg3 = %7) -> (tensor<1x5xi64>) {
        affine.yield %7 : tensor<1x5xi64>
      }
      vector.print %169 : vector<5xi32>
      %287 = math.atan2 %cst, %cst_0 : f16
      %288 = scf.execute_region -> vector<10xi16> {
        %294 = arith.subi %c-5401_i16, %c-23154_i16 : i16
        %295 = bufferization.to_memref %4 : memref<11xf32>
        %296 = arith.divui %201, %118 : i1
        %297 = arith.floordivsi %c-5401_i16, %c-23154_i16 : i16
        %298 = math.fpowi %cst_3, %extracted : f32, i32
        %299 = vector.broadcast %cst_0 : f16 to vector<10x10xf16>
        %300 = vector.outerproduct %140, %111, %299 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
        bufferization.dealloc_tensor %2 : tensor<1x5xf16>
        %301 = index.castu %c5 : index to i32
        %302 = vector.bitcast %111 : vector<10xf16> to vector<10xf16>
        %303 = math.absf %179 : tensor<1x5xf32>
        %304 = math.absf %cst_3 : f32
        %305 = vector.create_mask %222, %87 : vector<1x5xi1>
        %306 = arith.shrsi %201, %80 : i1
        %307 = arith.cmpf ule, %cst, %cst_0 : f16
        %308 = vector.insertelement %extracted, %195[%48 : index] : vector<4xi32>
        %309 = affine.max affine_map<(d0, d1) -> (d1 * 4, d0 - (d0 - d1 * 2), d0 - d1 * 2 - 64, d0 - d1 * 2 - 64)>(%174, %c11)
        %310 = vector.broadcast %c-23282_i16 : i16 to vector<10xi16>
        scf.yield %310 : vector<10xi16>
      }
      %289 = bufferization.clone %alloc_13 : memref<1x5xf16> to memref<1x5xf16>
      memref.alloca_scope  {
        %294 = math.log1p %cst_2 : f16
        %295 = index.sizeof
        %alloca_34 = memref.alloca() : memref<1x5xi1>
        %296 = bufferization.clone %alloc_15 : memref<1x5xi16> to memref<1x5xi16>
        %297 = index.maxu %55, %c2
        %298 = math.round %2 : tensor<1x5xf16>
        %299 = vector.extract_strided_slice %136 {offsets = [2], sizes = [2], strides = [1]} : vector<5xi16> to vector<2xi16>
        %300 = arith.cmpf ult, %cst_2, %cst_2 : f16
        %301 = math.ctlz %211 : i32
        %302 = arith.xori %c833515725_i64, %c2050434069_i64 : i64
        %303 = index.sub %84, %133
        %304 = vector.reduction <add>, %195 : vector<4xi32> into i32
        %305 = arith.muli %118, %80 : i1
        %extracted_35 = tensor.extract %4[%c3] : tensor<11xf32>
        %306 = math.absf %2 : tensor<1x5xf16>
        %307 = math.tan %3 : tensor<1x5xf16>
        %308 = index.ceildivs %192, %48
        %309 = index.mul %55, %c14
        %310 = vector.multi_reduction <maxui>, %195, %211 [0] : vector<4xi32> to i32
        %311 = arith.shli %c894789441_i64, %c833515725_i64 : i64
        %312 = arith.divf %cst_0, %cst_1 : f16
        %313 = math.sqrt %3 : tensor<1x5xf16>
        %314 = index.mul %87, %167
        %315 = index.divs %84, %151
        %316 = tensor.empty() : tensor<5xf32>
        %317 = vector.broadcast %201 : i1 to vector<1x5xi1>
        %expanded_36 = tensor.expand_shape %collapsed [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
        %rank_37 = tensor.rank %15 : tensor<1x5xi16>
        %318 = bufferization.to_tensor %44 : memref<11xi64>
        %319 = arith.addi %c-9787_i16, %85 : i16
        %320 = vector.create_mask %212 : vector<5xi1>
        %321 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %37, %27, %c-9787_i16 : vector<1xi16>, vector<1xi16> into i16
      }
      memref.tensor_store %10, %alloc_21 : memref<10xi32>
      %290 = arith.floordivsi %c-1812_i16, %c-9787_i16 : i16
      %291 = arith.minf %cst_4, %cst_3 : f32
      %292 = vector.extract %169[2] : vector<5xi32>
      %293 = arith.remf %cst_0, %cst_0 : f16
      %cast = tensor.cast %reduced : tensor<i1> to tensor<i1>
      scf.yield %111 : vector<10xf16>
    }
    %229 = affine.min affine_map<(d0, d1, d2) -> (d2 floordiv 4, d1 floordiv 8, (d1 floordiv 8) * 8, d1 floordiv 8)>(%c10, %192, %202)
    %230 = vector.extract_strided_slice %139 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
    %generated_28 = tensor.generate %c15 {
    ^bb0(%arg1: index):
      %282 = affine.apply affine_map<(d0) -> (128)>(%84)
      %283 = math.fma %4, %4, %4 : tensor<11xf32>
      %284 = arith.ceildivsi %85, %c-23154_i16 : i16
      %285 = math.round %2 : tensor<1x5xf16>
      tensor.yield %c1741789997_i32 : i32
    } : tensor<?xi32>
    %231 = arith.floordivsi %true, %80 : i1
    %232 = arith.mulf %cst_0, %cst : f16
    %233 = math.fma %2, %3, %2 : tensor<1x5xf16>
    %234 = index.maxu %167, %c3
    %generated_29 = tensor.generate %81 {
    ^bb0(%arg1: index):
      %282 = memref.load %44[%c2] : memref<11xi64>
      %283 = index.mul %127, %119
      %284 = math.floor %4 : tensor<11xf32>
      %285 = vector.reduction <and>, %79 : vector<1xi16> into i16
      tensor.yield %cst_4 : f32
    } : tensor<?xf32>
    %235 = vector.broadcast %extracted : i32 to vector<11xi32>
    %236 = math.ctlz %12 : tensor<5xi1>
    %237 = index.castu %c9 : index to i32
    %238 = vector.load %alloc_16[%c5] : memref<11xi1>, vector<10xi1>
    %239 = bufferization.clone %alloc_5 : memref<1x5xf16> to memref<1x5xf16>
    %240 = arith.muli %211, %extracted : i32
    %241 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 2 - (d0 + d3 floordiv 2 + d3 + 2), -(d0 + d3 floordiv 2 + d3 + 2) + d3, -(d0 + d3 floordiv 2 + d3 + 2) + d3, d1)>(%rank_27, %222, %84, %63)
    %242 = index.divs %119, %234
    %243 = arith.ori %true, %118 : i1
    %244 = vector.splat %38 : vector<5xindex>
    %245 = arith.remf %cst_1, %cst_0 : f16
    %246 = math.powf %4, %4 : tensor<11xf32>
    %247 = arith.shli %c894789441_i64, %c833515725_i64 : i64
    %248 = tensor.empty() : tensor<5xf32>
    %rank_30 = tensor.rank %179 : tensor<1x5xf32>
    %249 = vector.broadcast %cst_3 : f32 to vector<5xf32>
    %dest, %accumulated_value = vector.scan <minf>, %75, %249 {inclusive = false, reduction_dim = 0 : i64} : vector<1x5xf32>, vector<5xf32>
    %250 = arith.muli %c894789441_i64, %c894789441_i64 : i64
    %251 = scf.while (%arg1 = %alloc_19) : (memref<5xf32>) -> memref<5xf32> {
      %282 = bufferization.to_tensor %239 : memref<1x5xf16>
      affine.store %cst_0, %alloc_13[%c4, %c11] : memref<1x5xf16>
      %283 = arith.andi %c-9787_i16, %85 : i16
      %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %cst : vector<1xf16>, vector<1xf16> into f16
      %285 = arith.addi %c833515725_i64, %c2050434069_i64 : i64
      %286 = math.fma %45, %3, %45 : tensor<1x5xf16>
      %287 = vector.load %alloc_10[%c2] : memref<11xf32>, vector<10xf32>
      %288 = vector.create_mask %rank_26, %202 : vector<1x5xi1>
      scf.condition(%201) %arg1 : memref<5xf32>
    } do {
    ^bb0(%arg1: memref<5xf32>):
      %282 = vector.load %alloc_21[%c1] : memref<10xi32>, vector<5xi32>
      %cst_34 = arith.constant 2.556800e+04 : f16
      %283 = vector.create_mask %rank_27 : vector<10xi1>
      %284 = tensor.empty() : tensor<5xf16>
      %285 = vector.gather %284[%202] [%110], %109, %108 : tensor<5xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %286 = arith.ori %c894789441_i64, %c894789441_i64 : i64
      %287 = memref.alloca_scope  -> (f16) {
        %alloca_36 = memref.alloca() : memref<1x5xi32>
        %299 = arith.shrui %c-9787_i16, %85 : i16
        %300 = affine.max affine_map<(d0, d1, d2) -> ((-d1 - 2) * 128, d0 ceildiv 4 - 1, (d0 + d2 floordiv 16) floordiv 64, d2 floordiv 2)>(%87, %41, %174)
        %301 = index.sizeof
        %302 = math.exp %284 : tensor<5xf16>
        %303 = memref.realloc %arg1 : memref<5xf32> to memref<11xf32>
        %304 = index.maxu %48, %87
        %splat_37 = tensor.splat %cst_2 : tensor<11xf16>
        %305 = memref.realloc %207 : memref<11xi1> to memref<1xi1>
        %306 = math.exp %splat_37 : tensor<11xf16>
        %alloc_38 = memref.alloc() : memref<5xi32>
        memref.tensor_store %5, %alloc_38 : memref<5xi32>
        %307 = arith.remsi %85, %c-1812_i16 : i16
        %308 = arith.divsi %c1741789997_i32, %c1741789997_i32 : i32
        %309 = math.cos %cst_2 : f16
        %310 = index.divs %32, %c2
        %311 = index.ceildivs %c2, %55
        %312 = math.tanh %cst_1 : f16
        %313 = arith.divsi %c-23282_i16, %85 : i16
        %314 = vector.extract_strided_slice %108 {offsets = [8], sizes = [1], strides = [1]} : vector<10xf16> to vector<1xf16>
        %315 = arith.minf %cst_0, %cst_0 : f16
        %316 = arith.xori %85, %c-23154_i16 : i16
        %317 = math.powf %45, %2 : tensor<1x5xf16>
        %318 = vector.reduction <or>, %282 : vector<5xi32> into i32
        %319 = math.exp2 %8 : tensor<1x5xf32>
        %320 = math.ctlz %c2050434069_i64 : i64
        %321 = arith.xori %true, %201 : i1
        %322 = math.cttz %c-23154_i16 : i16
        %323 = affine.apply affine_map<(d0, d1, d2) -> (((d1 ceildiv 4) mod 2) ceildiv 128)>(%122, %193, %229)
        %324 = arith.addf %cst, %cst_2 : f16
        %325 = arith.ceildivsi %extracted, %extracted : i32
        %326 = math.fpowi %splat_37, %13 : tensor<11xf16>, tensor<11xi32>
        %327 = bufferization.clone %101 : memref<5xf16> to memref<5xf16>
        memref.alloca_scope.return %cst_0 : f16
      }
      %288 = arith.divsi %c2050434069_i64, %c894789441_i64 : i64
      %289 = tensor.empty() : tensor<1x5xi16>
      %mapped_35 = linalg.map ins(%15, %1, %alloc_12 : tensor<1x5xi16>, tensor<1x5xi16>, memref<1x5xi16>) outs(%289 : tensor<1x5xi16>)
        (%in: i16, %in_36: i16, %in_37: i16) {
          affine.store %c833515725_i64, %alloc_7[%c1] : memref<11xi64>
          %c1970995277_i32 = arith.constant 1970995277 : i32
          %from_elements = tensor.from_elements %c894789441_i64, %c2050434069_i64, %c894789441_i64, %c894789441_i64, %c2050434069_i64, %c894789441_i64, %c833515725_i64, %c833515725_i64, %c894789441_i64, %c894789441_i64 : tensor<10xi64>
          %299 = vector.multi_reduction <minui>, %123, %123 [] : vector<1xi1> to vector<1xi1>
          %300 = arith.subi %c-23282_i16, %in_36 : i16
          %301 = arith.negf %cst_4 : f32
          %302 = math.exp %179 : tensor<1x5xf32>
          %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %79, %61, %in_37 : vector<1xi16>, vector<1xi16> into i16
          %304 = arith.remui %c833515725_i64, %c833515725_i64 : i64
          %alloc_38 = memref.alloc() : memref<5xi1>
          %305 = vector.gather %alloc_38[%rank_26] [%110], %219, %283 : memref<5xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
          %306 = memref.realloc %arg1 : memref<5xf32> to memref<11xf32>
          %307 = math.round %2 : tensor<1x5xf16>
          %308 = index.divs %c10, %rank_27
          %309 = bufferization.to_tensor %alloc_18 : memref<10xi16>
          %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %92, %92, %201 : vector<11xi1>, vector<11xi1> into i1
          %311 = math.floor %cst_0 : f16
          %312 = index.floordivs %74, %c11
          %313 = vector.multi_reduction <or>, %91, %c1741789997_i32 [0] : vector<11xi32> to i32
          %314 = vector.flat_transpose %219 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          %315 = arith.shli %c894789441_i64, %c833515725_i64 : i64
          %316 = vector.multi_reduction <minsi>, %123, %80 [0] : vector<1xi1> to i1
          %317 = math.log %179 : tensor<1x5xf32>
          %318 = arith.subi %c-23282_i16, %in_36 : i16
          %319 = bufferization.to_memref %4 : memref<11xf32>
          %320 = index.sub %48, %c1
          %321 = math.round %cst_2 : f16
          %322 = arith.remsi %211, %313 : i32
          %323 = arith.remui %true, %118 : i1
          %324 = arith.remf %cst_2, %cst_2 : f16
          %325 = arith.andi %in_36, %c-1812_i16 : i16
          %326 = math.sqrt %2 : tensor<1x5xf16>
          %327 = math.exp %8 : tensor<1x5xf32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %290 = scf.while (%arg2 = %cst_2) : (f16) -> f16 {
        %from_elements = tensor.from_elements %287, %arg2, %cst_1, %287, %cst_0 : tensor<5xf16>
        %299 = math.fma %3, %3, %45 : tensor<1x5xf16>
        %extracted_36 = tensor.extract %generated_25[%c0, %c0] : tensor<?x?xf16>
        %300 = arith.remf %arg2, %arg2 : f16
        affine.store %arg2, %alloc_13[%c8, %c5] : memref<1x5xf16>
        %301 = index.ceildivs %41, %63
        %302 = memref.load %arg1[%c0] : memref<5xf32>
        %303 = math.round %284 : tensor<5xf16>
        scf.condition(%118) %cst_2 : f16
      } do {
      ^bb0(%arg2: f16):
        %299 = math.cos %179 : tensor<1x5xf32>
        %300 = math.powf %179, %179 : tensor<1x5xf32>
        %301 = index.sizeof
        %cast = tensor.cast %289 : tensor<1x5xi16> to tensor<?x?xi16>
        %302 = arith.shrui %118, %true : i1
        %splat_36 = tensor.splat %c894789441_i64 : tensor<11xi64>
        %303 = arith.subi %c-23282_i16, %85 : i16
        %304 = arith.divsi %c833515725_i64, %c2050434069_i64 : i64
        %collapsed_37 = tensor.collapse_shape %15 [[0, 1]] : tensor<1x5xi16> into tensor<5xi16>
        %305 = arith.shli %201, %true : i1
        %306 = memref.realloc %alloc_21 : memref<10xi32> to memref<11xi32>
        %307 = math.exp2 %248 : tensor<5xf32>
        %308 = arith.remf %cst_1, %arg2 : f16
        %309 = affine.apply affine_map<(d0, d1, d2) -> (d0 * -8)>(%c7, %c1, %119)
        %310 = bufferization.to_tensor %alloc_17 : memref<5xi16>
        %311 = arith.floordivsi %c894789441_i64, %c2050434069_i64 : i64
        scf.yield %cst_2 : f16
      }
      vector.print %140 : vector<10xf16>
      %291 = vector.reduction <or>, %110 : vector<10xi32> into i32
      %292 = affine.apply affine_map<(d0, d1) -> (-(d1 ceildiv 8) + d1)>(%176, %120)
      %293 = bufferization.to_tensor %alloc_15 : memref<1x5xi16>
      %294 = math.floor %cst_0 : f16
      %295 = tensor.empty() : tensor<10x10x10xi1>
      %296 = tensor.empty() : tensor<10x10xi1>
      %297 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%296 : tensor<10x10xi1>) outs(%295 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %out: i1):
        %299 = arith.ori %201, %80 : i1
        %300 = math.round %cst_3 : f32
        %301 = arith.remsi %118, %201 : i1
        %302 = bufferization.clone %alloc_14 : memref<11xi16> to memref<11xi16>
        %303 = arith.maxf %cst_1, %cst_1 : f16
        %304 = math.log10 %287 : f16
        %305 = memref.realloc %alloc_10 : memref<11xf32> to memref<5xf32>
        %306 = math.ctpop %293 : tensor<1x5xi16>
        %307 = vector.splat %c833515725_i64 : vector<11xi64>
        %alloc_36 = memref.alloc() : memref<10xi64>
        %308 = vector.broadcast %c894789441_i64 : i64 to vector<5xi64>
        %309 = vector.gather %alloc_36[%rank_30] [%282], %168, %308 : memref<10xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %310 = math.floor %8 : tensor<1x5xf32>
        %311 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%176, %c5, %213, %229)
        %312 = math.fma %284, %284, %284 : tensor<5xf16>
        %313 = affine.min affine_map<(d0, d1, d2) -> (-d1)>(%213, %180, %63)
        %314 = math.expm1 %cst_0 : f16
        %315 = arith.divsi %80, %201 : i1
        %316 = math.cttz %c2050434069_i64 : i64
        %317 = arith.minsi %in, %118 : i1
        memref.tensor_store %4, %alloc_10 : memref<11xf32>
        %318 = math.ctpop %13 : tensor<11xi32>
        %319 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 * 4 + 32) * 32)>(%63, %192, %188, %rank_26)
        %320 = vector.bitcast %219 : vector<10xi1> to vector<10xi1>
        %321 = math.exp %cst_3 : f32
        %322 = memref.load %alloc_11[%c1] : memref<5xf16>
        %323 = vector.extract_strided_slice %75 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xf32> to vector<1x5xf32>
        %324 = arith.subi %c1741789997_i32, %211 : i32
        %325 = math.ipowi %21, %22 : tensor<i32>
        %326 = arith.floordivsi %c833515725_i64, %c894789441_i64 : i64
        %327 = arith.addf %cst_4, %cst_4 : f32
        %328 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%192, %c6, %c15, %55)
        %329 = vector.broadcast %cst_1 : f16 to vector<10x10xf16>
        %330 = vector.outerproduct %285, %285, %329 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %331 = math.powf %cst_4, %cst_3 : f32
        linalg.yield %out : i1
      } -> tensor<10x10x10xi1>
      %298 = vector.shuffle %20, %20 [1] : vector<1xf16>, vector<1xf16>
      scf.yield %arg1 : memref<5xf32>
    }
    %252 = math.round %3 : tensor<1x5xf16>
    %253 = arith.maxsi %true, %118 : i1
    affine.store %c2050434069_i64, %44[%c11] : memref<11xi64>
    %254 = vector.create_mask %192 : vector<11xi1>
    %255 = arith.addf %cst_3, %cst_3 : f32
    %256 = arith.maxf %cst, %cst_2 : f16
    %257 = arith.xori %extracted, %c1741789997_i32 : i32
    %258 = arith.andi %c2050434069_i64, %c833515725_i64 : i64
    %collapsed_31 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x5xi16> into tensor<5xi16>
    %259 = math.floor %cst : f16
    %260 = bufferization.clone %alloc : memref<5xi16> to memref<5xi16>
    %261 = scf.if %true -> (i1) {
      %extracted_34 = tensor.extract %0[%c8] : tensor<10xi1>
      %282 = math.tan %cst_4 : f32
      %283 = arith.xori %c1741789997_i32, %211 : i32
      %284 = arith.floordivsi %c1741789997_i32, %extracted : i32
      %alloc_35 = memref.alloc() : memref<11xi32>
      memref.tensor_store %13, %alloc_35 : memref<11xi32>
      %rank_36 = tensor.rank %0 : tensor<10xi1>
      %285 = math.ctpop %14 : tensor<11xi16>
      %286 = arith.minf %cst_4, %cst_4 : f32
      scf.yield %true : i1
    } else {
      %282 = vector.multi_reduction <xor>, %235, %91 [] : vector<11xi32> to vector<11xi32>
      vector.print %195 : vector<4xi32>
      %283 = vector.reduction <and>, %136 : vector<5xi16> into i16
      %284 = math.floor %248 : tensor<5xf32>
      %285 = arith.minf %cst, %cst_1 : f16
      %286 = arith.subi %c-5401_i16, %c-1812_i16 : i16
      %287 = math.exp %3 : tensor<1x5xf16>
      %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %195, %195, %c1741789997_i32 : vector<4xi32>, vector<4xi32> into i32
      scf.yield %true : i1
    }
    %262 = vector.broadcast %180 : index to vector<1xindex>
    vector.scatter %207[%c1] [%262], %123, %123 : memref<11xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %263 = math.sqrt %4 : tensor<11xf32>
    %264 = tensor.empty() : tensor<10x10x10xi1>
    %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<10xi1>) outs(%264 : tensor<10x10x10xi1>) {
    ^bb0(%in: i1, %out: i1):
      %alloc_34 = memref.alloc() : memref<1x5xi16>
      %282 = arith.shrsi %out, %261 : i1
      %283 = vector.transpose %71, [1, 0] : vector<1x5xi16> to vector<5x1xi16>
      %284 = vector.create_mask %234 : vector<5xi1>
      %285 = math.ctlz %14 : tensor<11xi16>
      %286 = math.atan %cst_4 : f32
      %287 = arith.ori %c1741789997_i32, %c1741789997_i32 : i32
      %288 = arith.floordivsi %c-23154_i16, %c-23282_i16 : i16
      %289 = scf.while (%arg1 = %alloc_20) : (memref<5x1xi16>) -> memref<5x1xi16> {
        %309 = arith.remf %cst_2, %cst_1 : f16
        %310 = arith.floordivsi %c2050434069_i64, %c833515725_i64 : i64
        %311 = vector.create_mask %c2, %87 : vector<1x5xi1>
        %312 = math.floor %cst_1 : f16
        %313 = arith.addf %cst_1, %cst_1 : f16
        %314 = math.atan %8 : tensor<1x5xf32>
        %315 = arith.cmpf oge, %cst, %cst_0 : f16
        %316 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %311, %123, %284 : vector<1x5xi1>, vector<1xi1> into vector<5xi1>
        scf.condition(%201) %alloc_20 : memref<5x1xi16>
      } do {
      ^bb0(%arg1: memref<5x1xi16>):
        %309 = arith.maxsi %out, %in : i1
        %310 = vector.load %alloc_6[%c2] : memref<11xi64>, vector<11xi64>
        %311 = vector.reduction <maxui>, %54 : vector<1xi16> into i16
        %312 = index.maxu %48, %c2
        %313 = math.round %8 : tensor<1x5xf32>
        %314 = math.exp %cst_4 : f32
        %315 = arith.maxf %cst_4, %cst_4 : f32
        %316 = index.divs %c15, %149
        %317 = math.expm1 %248 : tensor<5xf32>
        %318 = arith.subi %extracted, %211 : i32
        %319 = index.divs %74, %312
        %320 = math.ipowi %5, %5 : tensor<5xi32>
        %321 = vector.reduction <add>, %230 : vector<1xi32> into i32
        %322 = memref.realloc %alloc_21 : memref<10xi32> to memref<11xi32>
        %323 = arith.remsi %c833515725_i64, %c2050434069_i64 : i64
        %324 = arith.minf %cst_3, %cst_4 : f32
        scf.yield %alloc_20 : memref<5x1xi16>
      }
      %290 = arith.shrui %c894789441_i64, %c894789441_i64 : i64
      scf.execute_region {
        %309 = math.log10 %cst_3 : f32
        %310 = arith.shrui %c833515725_i64, %c894789441_i64 : i64
        %311 = math.exp2 %cst_3 : f32
        %false = arith.constant false
        %312 = vector.gather %alloc_9[%c5, %55] [%91], %93, %199 : memref<1x5xf32>, vector<11xi32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %313 = vector.shuffle %284, %170 [1, 2, 5, 6, 7, 9] : vector<5xi1>, vector<5xi1>
        %314 = math.round %cst_4 : f32
        %315 = math.cos %3 : tensor<1x5xf16>
        %316 = vector.matrix_multiply %111, %108 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %317 = arith.andi %211, %211 : i32
        %318 = index.divs %c14, %193
        %319 = arith.subi %extracted, %extracted : i32
        %320 = vector.multi_reduction <maxsi>, %169, %c1741789997_i32 [0] : vector<5xi32> to i32
        %321 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + d2 - 2) floordiv 16)>(%193, %229, %81, %c12)
        %322 = arith.remui %c1741789997_i32, %c1741789997_i32 : i32
        %323 = vector.load %alloc_14[%c6] : memref<11xi16>, vector<5xi16>
        scf.yield
      }
      %291 = math.round %45 : tensor<1x5xf16>
      %292 = arith.divf %cst_1, %cst_0 : f16
      %293 = affine.apply affine_map<(d0) -> (d0 * 2)>(%67)
      %294 = vector.multi_reduction <or>, %219, %in [0] : vector<10xi1> to i1
      %295 = math.ctpop %expanded : tensor<10x1xi32>
      %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 128, d1 - 128, -d1)>(%202, %213, %c10, %c4)
      %297 = vector.broadcast %85 : i16 to vector<11xi16>
      %298 = math.log2 %4 : tensor<11xf32>
      %299 = math.atan2 %cst_0, %cst_1 : f16
      %300 = math.sqrt %cst_1 : f16
      %301 = math.tan %cst_4 : f32
      bufferization.dealloc_tensor %reduced : tensor<i1>
      %302 = vector.create_mask %180 : vector<10xi1>
      %303 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 64)>(%192, %133, %133)
      %304 = vector.transpose %71, [1, 0] : vector<1x5xi16> to vector<5x1xi16>
      %inserted = tensor.insert %in into %0[%c2] : tensor<10xi1>
      memref.alloca_scope  {
        %309 = arith.xori %in, %80 : i1
        %310 = arith.remsi %out, %true : i1
        %311 = vector.bitcast %79 : vector<1xi16> to vector<1xi16>
        %312 = index.sizeof
        %313 = math.exp %2 : tensor<1x5xf16>
        %314 = math.exp %2 : tensor<1x5xf16>
        %315 = vector.broadcast %c2050434069_i64 : i64 to vector<11xi64>
        %316 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %37, %71, %136 : vector<1xi16>, vector<1x5xi16> into vector<5xi16>
        %true_35 = arith.constant true
        %c-21095_i16 = arith.constant -21095 : i16
        %rank_36 = tensor.rank %248 : tensor<5xf32>
        %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %109, %219, %in : vector<10xi1>, vector<10xi1> into i1
        %318 = vector.reduction <minsi>, %169 : vector<5xi32> into i32
        %319 = arith.remui %261, %out : i1
        %320 = arith.floordivsi %c-9787_i16, %c-23282_i16 : i16
        %321 = tensor.empty() : tensor<11xi16>
        %322 = math.sqrt %2 : tensor<1x5xf16>
        %323 = math.copysign %45, %3 : tensor<1x5xf16>
        %324 = memref.realloc %alloc_21 : memref<10xi32> to memref<1xi32>
        %325 = arith.shrui %118, %201 : i1
        %326 = arith.cmpf olt, %cst, %cst : f16
        %327 = affine.max affine_map<(d0) -> (0, -4, 0)>(%149)
        %328 = vector.broadcast %cst_4 : f32 to vector<5x5xf32>
        %329 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %76, %75, %328 : vector<1x5xf32>, vector<1x5xf32> into vector<5x5xf32>
        %extracted_37 = tensor.extract %14[%c3] : tensor<11xi16>
        %cast = tensor.cast %5 : tensor<5xi32> to tensor<?xi32>
        %330 = arith.shrui %80, %in : i1
        %331 = math.log2 %8 : tensor<1x5xf32>
        affine.store %211, %alloc_21[%c6] : memref<10xi32>
        %332 = arith.shrsi %294, %out : i1
        %333 = index.floordivs %229, %120
        %334 = arith.cmpf ogt, %cst, %cst_2 : f16
        %335 = arith.minsi %true, %out : i1
      }
      %305 = arith.ori %85, %85 : i16
      %306 = arith.floordivsi %c1741789997_i32, %extracted : i32
      %307 = arith.divf %cst, %cst_0 : f16
      %308 = math.exp %2 : tensor<1x5xf16>
      linalg.yield %118 : i1
    } -> tensor<10x10x10xi1>
    vector.print %230 : vector<1xi32>
    %266 = vector.broadcast %c-5401_i16 : i16 to vector<1x1xi16>
    %267 = vector.outerproduct %124, %27, %266 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
    %268 = vector.reduction <xor>, %230 : vector<1xi32> into i32
    %269 = arith.cmpf une, %cst_1, %cst : f16
    memref.tensor_store %248, %alloc_19 : memref<5xf32>
    affine.for %arg1 = 0 to 4 {
    }
    %270 = math.floor %3 : tensor<1x5xf16>
    %271 = math.log2 %cst_2 : f16
    %272 = math.cttz %1 : tensor<1x5xi16>
    %273 = affine.apply affine_map<(d0, d1) -> (0)>(%c0, %c7)
    %274 = arith.maxf %cst_3, %cst_4 : f32
    %275 = affine.apply affine_map<(d0) -> (d0 * 2)>(%rank_27)
    %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %93, %93, %80 : vector<11xi1>, vector<11xi1> into i1
    %277 = tensor.empty() : tensor<1x5xi64>
    %278 = linalg.copy ins(%6 : tensor<1x5xi64>) outs(%277 : tensor<1x5xi64>) -> tensor<1x5xi64>
    %alloc_32 = memref.alloc() : memref<10xi1>
    linalg.transpose ins(%16 : tensor<10xi1>) outs(%alloc_32 : memref<10xi1>) permutation = [0] 
    %279 = tensor.empty() : tensor<1xi64>
    %reduced_33 = linalg.reduce ins(%278 : tensor<1x5xi64>) outs(%279 : tensor<1xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %282 = index.sub %241, %192
        %283 = arith.floordivsi %118, %201 : i1
        %284 = math.log %8 : tensor<1x5xf32>
        %285 = vector.reduction <and>, %93 : vector<11xi1> into i1
        %286 = arith.muli %c1741789997_i32, %c1741789997_i32 : i32
        %287 = vector.broadcast %261 : i1 to vector<i1>
        vector.transfer_write %287, %alloc_16[%c3] : vector<i1>, memref<11xi1>
        %288 = arith.maxsi %201, %true : i1
        %289 = bufferization.clone %alloc_6 : memref<11xi64> to memref<11xi64>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %280 = scf.parallel (%arg1, %arg2) = (%242, %120) to (%c8, %122) step (%c9, %c6) init (%3) -> tensor<1x5xf16> {
      %rank_34 = tensor.rank %10 : tensor<10xi32>
      %282 = arith.xori %c-23154_i16, %c-5401_i16 : i16
      %283 = arith.cmpf ueq, %cst_4, %cst_3 : f32
      %284 = math.exp %cst_2 : f16
      %285 = vector.shuffle %238, %170 [2, 6, 8, 13, 14] : vector<10xi1>, vector<5xi1>
      %286 = index.castu %167 : index to i32
      %287 = math.roundeven %4 : tensor<11xf32>
      %288 = vector.transpose %254, [0] : vector<11xi1> to vector<11xi1>
      %289 = bufferization.clone %alloc_17 : memref<5xi16> to memref<5xi16>
      %generated_35 = tensor.generate %rank_34 {
      ^bb0(%arg3: index):
        %296 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %297 = vector.fma %296, %296, %296 : vector<5xf32>
        %298 = arith.xori %c894789441_i64, %c2050434069_i64 : i64
        %299 = math.ctlz %211 : i32
        %300 = arith.negf %cst_4 : f32
        tensor.yield %cst_2 : f16
      } : tensor<?xf16>
      %290 = arith.addf %cst_3, %cst_4 : f32
      %291 = arith.muli %extracted, %c1741789997_i32 : i32
      %292 = tensor.empty() : tensor<11xf16>
      %293 = vector.flat_transpose %27 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
      %294 = arith.xori %261, %true : i1
      scf.if %true {
        %296 = index.divs %arg2, %rank_27
        %297 = math.log10 %3 : tensor<1x5xf16>
        %collapsed_36 = tensor.collapse_shape %3 [[0, 1]] : tensor<1x5xf16> into tensor<5xf16>
        %298 = math.log10 %cst_1 : f16
        %299 = vector.load %alloc_18[%c5] : memref<10xi16>, vector<1x5xi16>
        %300 = math.expm1 %cst_2 : f16
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d0 * -8)>(%c6, %120, %38)
        %302 = arith.minf %cst_1, %cst : f16
      } else {
        %296 = arith.maxf %cst_0, %cst : f16
        %297 = math.tanh %4 : tensor<11xf32>
        %298 = arith.shrui %c-23154_i16, %c-9787_i16 : i16
        %299 = arith.minf %cst, %cst_0 : f16
        %300 = arith.remf %cst_4, %cst_4 : f32
        %301 = math.cos %cst_3 : f32
        %302 = math.log10 %cst_1 : f16
        %303 = math.ceil %3 : tensor<1x5xf16>
      }
      %295 = tensor.empty() : tensor<1x5xf16>
      scf.reduce(%295)  : tensor<1x5xf16> {
      ^bb0(%arg3: tensor<1x5xf16>, %arg4: tensor<1x5xf16>):
        %296 = math.round %cst_1 : f16
        %297 = math.cos %cst_0 : f16
        %298 = vector.create_mask %c15, %48 : vector<1x5xi1>
        %299 = bufferization.to_tensor %alloc_8 : memref<10xf32>
        vector.print %110 : vector<10xi32>
        %300 = math.ctpop %278 : tensor<1x5xi64>
        %301 = arith.ori %261, %201 : i1
        %302 = memref.atomic_rmw muli %c-23282_i16, %alloc_20[%c0, %c0] : (i16, memref<5x1xi16>) -> i16
        %303 = tensor.empty() : tensor<1x5xf16>
        scf.reduce.return %303 : tensor<1x5xf16>
      }
      scf.yield
    }
    %281 = affine.vector_load %101[%c5] : memref<5xf16>, vector<1xf16>
    affine.vector_store %37, %alloc_15[%c15, %c11] : memref<1x5xi16>, vector<1xi16>
    vector.print %20 : vector<1xf16>
    vector.print %27 : vector<1xi16>
    vector.print %37 : vector<1xi16>
    vector.print %54 : vector<1xi16>
    vector.print %61 : vector<1xi16>
    vector.print %70 : vector<11xi1>
    vector.print %71 : vector<1x5xi16>
    vector.print %75 : vector<1x5xf32>
    vector.print %76 : vector<1x5xf32>
    vector.print %79 : vector<1xi16>
    vector.print %91 : vector<11xi32>
    vector.print %92 : vector<11xi1>
    vector.print %93 : vector<11xi1>
    vector.print %97 : vector<1x5xi32>
    vector.print %108 : vector<10xf16>
    vector.print %109 : vector<10xi1>
    vector.print %110 : vector<10xi32>
    vector.print %111 : vector<10xf16>
    vector.print %123 : vector<1xi1>
    vector.print %124 : vector<1xi16>
    vector.print %136 : vector<5xi16>
    vector.print %139 : vector<1xi32>
    vector.print %140 : vector<10xf16>
    vector.print %168 : vector<5xi1>
    vector.print %169 : vector<5xi32>
    vector.print %170 : vector<5xi1>
    vector.print %189 : vector<11xi32>
    vector.print %195 : vector<4xi32>
    vector.print %199 : vector<11xf32>
    vector.print %219 : vector<10xi1>
    vector.print %230 : vector<1xi32>
    vector.print %235 : vector<11xi32>
    vector.print %238 : vector<10xi1>
    vector.print %254 : vector<11xi1>
    vector.print %281 : vector<1xf16>
    vector.print %cst : f16
    vector.print %c1741789997_i32 : i32
    vector.print %c-23282_i16 : i16
    vector.print %c-5401_i16 : i16
    vector.print %c-1812_i16 : i16
    vector.print %c-9787_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c894789441_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c2050434069_i64 : i64
    vector.print %c-23154_i16 : i16
    vector.print %true : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %c833515725_i64 : i64
    vector.print %80 : i1
    vector.print %85 : i16
    vector.print %118 : i1
    vector.print %extracted : i32
    vector.print %201 : i1
    vector.print %211 : i32
    vector.print %261 : i1
    return
  }
}
