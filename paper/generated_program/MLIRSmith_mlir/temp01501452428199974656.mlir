module {
  func.func @func1() -> vector<4xf16> {
    %c6664_i16 = arith.constant 6664 : i16
    %c719160052_i32 = arith.constant 719160052 : i32
    %c245943520_i64 = arith.constant 245943520 : i64
    %c918720073_i64 = arith.constant 918720073 : i64
    %cst = arith.constant 2.724800e+04 : f16
    %c-24057_i16 = arith.constant -24057 : i16
    %cst_0 = arith.constant 1.66827251E+9 : f32
    %c1238082036_i64 = arith.constant 1238082036 : i64
    %c-14628_i16 = arith.constant -14628 : i16
    %cst_1 = arith.constant 0x4DCDA1B4 : f32
    %c157618972_i64 = arith.constant 157618972 : i64
    %c8581_i16 = arith.constant 8581 : i16
    %c12262_i16 = arith.constant 12262 : i16
    %cst_2 = arith.constant 5.260800e+04 : f16
    %cst_3 = arith.constant 3.977600e+04 : f16
    %c371845031_i64 = arith.constant 371845031 : i64
    %0 = tensor.empty() : tensor<5xi32>
    %1 = tensor.empty() : tensor<4xf32>
    %2 = tensor.empty() : tensor<5xf16>
    %3 = tensor.empty() : tensor<5xi64>
    %4 = tensor.empty() : tensor<5xi64>
    %5 = tensor.empty() : tensor<5xf16>
    %6 = tensor.empty() : tensor<5x5x4xi32>
    %7 = tensor.empty() : tensor<5x5x4xi1>
    %8 = tensor.empty() : tensor<5x5x4xi32>
    %9 = tensor.empty() : tensor<5xf32>
    %10 = tensor.empty() : tensor<5xi64>
    %11 = tensor.empty() : tensor<5xf32>
    %12 = tensor.empty() : tensor<4xi64>
    %13 = tensor.empty() : tensor<4xf32>
    %14 = tensor.empty() : tensor<4xf16>
    %15 = tensor.empty() : tensor<5xi32>
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
    %alloc = memref.alloc() : memref<4xi1>
    %alloc_4 = memref.alloc() : memref<5xi32>
    %alloc_5 = memref.alloc() : memref<5xf16>
    %alloc_6 = memref.alloc() : memref<5x5x4xi64>
    %alloc_7 = memref.alloc() : memref<5x5x4xi32>
    %alloc_8 = memref.alloc() : memref<4xi64>
    %alloc_9 = memref.alloc() : memref<5xi64>
    %alloc_10 = memref.alloc() : memref<5xf32>
    %alloc_11 = memref.alloc() : memref<5xi1>
    %alloc_12 = memref.alloc() : memref<5xi16>
    %alloc_13 = memref.alloc() : memref<5xf32>
    %alloc_14 = memref.alloc() : memref<5x5x4xi16>
    %alloc_15 = memref.alloc() : memref<5xf32>
    %alloc_16 = memref.alloc() : memref<4xi64>
    %alloc_17 = memref.alloc() : memref<5xf16>
    %alloc_18 = memref.alloc() : memref<5xf16>
    %16 = tensor.empty() : tensor<5xf16>
    %17 = linalg.copy ins(%2 : tensor<5xf16>) outs(%16 : tensor<5xf16>) -> tensor<5xf16>
    %18 = tensor.empty() : tensor<4x5x5xi32>
    %transposed = linalg.transpose ins(%alloc_7 : memref<5x5x4xi32>) outs(%18 : tensor<4x5x5xi32>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%0 : tensor<5xi32>) outs(%19 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %273 = math.cttz %c-14628_i16 : i16
        %274 = math.log10 %11 : tensor<5xf32>
        %275 = math.fpowi %cst_3, %init : f16, i32
        %276 = index.add %c1, %c1
        %277 = math.log1p %13 : tensor<4xf32>
        %278 = math.exp %2 : tensor<5xf16>
        %279 = arith.maxui %c6664_i16, %c-24057_i16 : i16
        %280 = math.expm1 %11 : tensor<5xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg0) = (%c5) to (%c3) step (%c13) {
      %273 = vector.load %alloc_7[%c1, %c0, %c3] : memref<5x5x4xi32>, vector<5xi32>
      %274 = arith.xori %c-24057_i16, %c-24057_i16 : i16
      %275 = math.sqrt %16 : tensor<5xf16>
      %276 = arith.remf %cst_2, %cst_2 : f16
      %277 = math.absi %c918720073_i64 : i64
      %generated_39 = tensor.generate %arg0 {
      ^bb0(%arg1: index):
        %285 = affine.load %alloc_13[%c14] : memref<5xf32>
        %286 = arith.ori %c-24057_i16, %c8581_i16 : i16
        %287 = vector.create_mask %c15 : vector<4xi1>
        %288 = memref.atomic_rmw andi %c719160052_i32, %alloc_4[%c3] : (i32, memref<5xi32>) -> i32
        tensor.yield %c918720073_i64 : i64
      } : tensor<?xi64>
      %278 = arith.negf %cst_1 : f32
      %279 = math.floor %14 : tensor<4xf16>
      %280 = arith.subi %c12262_i16, %c8581_i16 : i16
      %281 = arith.divsi %c12262_i16, %c12262_i16 : i16
      %282 = bufferization.to_memref %2 : memref<5xf16>
      %inserted_40 = tensor.insert %cst into %5[%c2] : tensor<5xf16>
      %283 = math.exp %14 : tensor<4xf16>
      %284 = vector.broadcast %c12262_i16 : i16 to vector<5xi16>
      memref.assume_alignment %alloc_16, 1 : memref<4xi64>
      %expanded_41 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<4x5x5xi32> into tensor<4x5x5x1xi32>
      scf.yield
    }
    %20 = affine.vector_load %alloc_9[%c11] : memref<5xi64>, vector<1xi64>
    affine.vector_store %20, %alloc_16[%c10] : memref<4xi64>, vector<1xi64>
    %21 = tensor.empty() : tensor<5xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%alloc_5, %21 : memref<5xf16>, tensor<5xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = arith.minsi %c6664_i16, %c-24057_i16 : i16
    %25 = arith.andi %c1238082036_i64, %c157618972_i64 : i64
    %26 = arith.addi %c12262_i16, %c-14628_i16 : i16
    %true = index.bool.constant true
    %27 = bufferization.to_tensor %alloc_7 : memref<5x5x4xi32>
    %28 = math.powf %cst_1, %cst_1 : f32
    %29 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    memref.store %cst_3, %alloc_5[%c2] : memref<5xf16>
    %30 = math.ipowi %4, %10 : tensor<5xi64>
    %31 = vector.broadcast %cst : f16 to vector<5xf16>
    %32 = vector.broadcast %true : i1 to vector<5xi1>
    %33 = vector.maskedload %alloc_5[%c2], %32, %31 : memref<5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
    %34 = index.maxu %c6, %c5
    %35 = memref.load %alloc_10[%c2] : memref<5xf32>
    %36 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + 12 >= 0, 0 >= 0)>(%c13, %c5, %c7, %c2) -> memref<4xi64> {
      %273 = math.sqrt %13 : tensor<4xf32>
      %274 = tensor.empty() : tensor<4xi32>
      %275 = math.fpowi %14, %274 : tensor<4xf16>, tensor<4xi32>
      %alloc_39 = memref.alloc() : memref<5x5x4xi32>
      memref.copy %alloc_7, %alloc_39 : memref<5x5x4xi32> to memref<5x5x4xi32>
      %276 = math.expm1 %14 : tensor<4xf16>
      %277 = arith.subi %c1238082036_i64, %c918720073_i64 : i64
      %278 = arith.shli %c-24057_i16, %c12262_i16 : i16
      %alloc_40 = memref.alloc() : memref<5x5x4xi32>
      memref.copy %alloc_7, %alloc_40 : memref<5x5x4xi32> to memref<5x5x4xi32>
      %279 = memref.load %alloc_11[%c3] : memref<5xi1>
      affine.yield %alloc_8 : memref<4xi64>
    } else {
      bufferization.dealloc_tensor %1 : tensor<4xf32>
      %273 = math.cos %11 : tensor<5xf32>
      %274 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0, (d1 * 4) mod 16 == 0)>(%c8, %c6, %c12, %c11) -> f16 {
        %280 = math.copysign %cst_2, %cst : f16
        %splat_39 = tensor.splat %c157618972_i64 : tensor<4xi64>
        %281 = arith.addi %c918720073_i64, %c245943520_i64 : i64
        %expanded_40 = tensor.expand_shape %0 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %282 = index.floordivs %c12, %c10
        %283 = arith.shrsi %c719160052_i32, %c719160052_i32 : i32
        %284 = index.maxs %c0, %c13
        %285 = vector.broadcast %c719160052_i32 : i32 to vector<1x4xi32>
        %286 = vector.broadcast %c719160052_i32 : i32 to vector<4xi32>
        %dest_41, %accumulated_value_42 = vector.scan <add>, %285, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<1x4xi32>, vector<4xi32>
        affine.yield %cst_3 : f16
      } else {
        %280 = arith.remf %cst_2, %cst_2 : f16
        bufferization.dealloc_tensor %9 : tensor<5xf32>
        %281 = vector.create_mask %c1 : vector<5xi1>
        %282 = math.powf %17, %16 : tensor<5xf16>
        %283 = tensor.empty() : tensor<5x5xi16>
        %284 = tensor.empty() : tensor<5x5xi16>
        %285 = linalg.matmul ins(%283, %283 : tensor<5x5xi16>, tensor<5x5xi16>) outs(%284 : tensor<5x5xi16>) -> tensor<5x5xi16>
        %286 = math.absf %11 : tensor<5xf32>
        %287 = math.cos %1 : tensor<4xf32>
        %288 = math.copysign %2, %2 : tensor<5xf16>
        affine.yield %cst_2 : f16
      }
      %275 = bufferization.to_tensor %alloc_13 : memref<5xf32>
      %276 = memref.load %alloc_18[%c3] : memref<5xf16>
      %277 = affine.max affine_map<(d0, d1, d2) -> (-d0 + 64, d2 floordiv 128, -d0 - 96, -d0 + 32)>(%c6, %c2, %c13)
      %278 = arith.floordivsi %c8581_i16, %c8581_i16 : i16
      %279 = math.log10 %13 : tensor<4xf32>
      affine.yield %alloc_8 : memref<4xi64>
    }
    %37 = math.cos %13 : tensor<4xf32>
    %38 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    %39 = vector.fma %38, %38, %38 : vector<4xf32>
    %40 = arith.shli %c8581_i16, %c6664_i16 : i16
    %41 = index.casts %c7 : index to i32
    %42 = arith.xori %c12262_i16, %c12262_i16 : i16
    %43 = bufferization.to_tensor %alloc_6 : memref<5x5x4xi64>
    %44 = index.sizeof
    %45 = vector.shuffle %31, %33 [0, 1, 3, 6, 7, 8, 9] : vector<5xf16>, vector<5xf16>
    %alloca = memref.alloca() : memref<5xi1>
    %alloc_19 = memref.alloc() : memref<5x4x5xi64>
    %46 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19 : memref<5x4x5xi64>) outs(%43 : tensor<5x5x4xi64>) {
    ^bb0(%in: i64, %out: i64):
      %273 = index.ceildivs %c8, %c15
      %274 = math.ipowi %out, %c371845031_i64 : i64
      %275 = vector.create_mask %c12 : vector<5xi1>
      %alloc_39 = memref.alloc() : memref<4xi1>
      memref.copy %alloc, %alloc_39 : memref<4xi1> to memref<4xi1>
      %alloca_40 = memref.alloca() : memref<5x5x4xf32>
      %276 = index.divs %c10, %273
      %277 = affine.min affine_map<(d0, d1) -> ((d1 mod 64) * 128)>(%c12, %c15)
      %278 = arith.divsi %c1238082036_i64, %c1238082036_i64 : i64
      %279 = vector.broadcast %cst_0 : f32 to vector<5x5x4xf32>
      %280 = vector.fma %279, %279, %279 : vector<5x5x4xf32>
      %281 = math.log10 %1 : tensor<4xf32>
      %282 = vector.broadcast %cst_1 : f32 to vector<5xf32>
      %283 = vector.multi_reduction <minf>, %279, %282 [1, 2] : vector<5x5x4xf32> to vector<5xf32>
      %284 = arith.muli %c245943520_i64, %c1238082036_i64 : i64
      %alloca_41 = memref.alloca() : memref<4xi1>
      %285 = index.floordivs %c0, %c12
      %286 = math.round %13 : tensor<4xf32>
      %287 = math.tanh %9 : tensor<5xf32>
      %288 = vector.extract_strided_slice %38 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
      %289 = arith.maxui %true, %true : i1
      %290 = scf.while (%arg0 = %alloc_6) : (memref<5x5x4xi64>) -> memref<5x5x4xi64> {
        %300 = index.divs %c2, %c15
        bufferization.dealloc_tensor %0 : tensor<5xi32>
        memref.copy %arg0, %alloc_6 : memref<5x5x4xi64> to memref<5x5x4xi64>
        %301 = index.castu %c5 : index to i32
        %302 = arith.remui %c719160052_i32, %c719160052_i32 : i32
        %303 = index.ceildivu %c10, %273
        %304 = arith.xori %c918720073_i64, %out : i64
        %305 = arith.divui %in, %out : i64
        scf.condition(%true) %alloc_6 : memref<5x5x4xi64>
      } do {
      ^bb0(%arg0: memref<5x5x4xi64>):
        %300 = arith.shli %in, %in : i64
        %301 = math.log1p %21 : tensor<5xf16>
        %302 = index.sizeof
        %303 = arith.remui %c8581_i16, %c6664_i16 : i16
        %304 = math.atan %cst_2 : f16
        %305 = arith.xori %c8581_i16, %c12262_i16 : i16
        %306 = math.exp %cst_3 : f16
        %307 = affine.load %alloc_14[%c10, %c11, %c0] : memref<5x5x4xi16>
        %308 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %309 = vector.broadcast %true : i1 to vector<4xi1>
        %310 = vector.maskedload %alloc_5[%c3], %309, %308 : memref<5xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %311 = arith.floordivsi %in, %c1238082036_i64 : i64
        %312 = vector.shuffle %309, %275 [0] : vector<4xi1>, vector<5xi1>
        %313 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
        %dest_46, %accumulated_value_47 = vector.scan <maxf>, %279, %313 {inclusive = true, reduction_dim = 2 : i64} : vector<5x5x4xf32>, vector<5x5xf32>
        %314 = math.rsqrt %22 : tensor<f16>
        %315 = math.sqrt %17 : tensor<5xf16>
        %316 = math.rsqrt %5 : tensor<5xf16>
        %317 = vector.broadcast %cst_0 : f32 to vector<5x5x4xf32>
        %318 = vector.fma %317, %280, %280 : vector<5x5x4xf32>
        scf.yield %arg0 : memref<5x5x4xi64>
      }
      %291 = index.casts %44 : index to i32
      %292 = arith.ceildivsi %in, %c245943520_i64 : i64
      %293 = bufferization.to_tensor %alloc_4 : memref<5xi32>
      %294 = arith.remf %cst_3, %cst_3 : f16
      %expanded_42 = tensor.expand_shape %12 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
      %alloc_43 = memref.alloc() : memref<5xi16>
      memref.copy %alloc_12, %alloc_43 : memref<5xi16> to memref<5xi16>
      %295 = vector.maskedload %alloc_18[%c4], %275, %33 : memref<5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %alloca_44 = memref.alloca() : memref<5xi32>
      %inserted_45 = tensor.insert %c719160052_i32 into %27[%c4, %c4, %c3] : tensor<5x5x4xi32>
      %296 = arith.negf %cst : f16
      %297 = math.ceil %13 : tensor<4xf32>
      %298 = index.floordivs %c8, %277
      %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %39, %38, %cst_1 : vector<4xf32>, vector<4xf32> into f32
      linalg.yield %c918720073_i64 : i64
    } -> tensor<5x5x4xi64>
    %47 = arith.divui %c6664_i16, %c12262_i16 : i16
    %48 = math.ctpop %c719160052_i32 : i32
    %49 = math.ipowi %3, %3 : tensor<5xi64>
    %50 = arith.mulf %cst_2, %cst_2 : f16
    %51 = index.sizeof
    %52 = vector.broadcast %cst_1 : f32 to vector<f32>
    %53 = vector.transfer_write %52, %13[%c13] : vector<f32>, tensor<4xf32>
    %54 = index.ceildivs %c13, %c9
    %55 = index.ceildivu %c8, %34
    %56 = arith.shrui %c245943520_i64, %c371845031_i64 : i64
    %57 = index.maxs %c7, %c8
    %58 = arith.minui %c245943520_i64, %c1238082036_i64 : i64
    %59 = vector.broadcast %cst_1 : f32 to vector<5x5x4xf32>
    %60 = arith.shrsi %c719160052_i32, %c719160052_i32 : i32
    %61 = index.add %c13, %c14
    %splat = tensor.splat %c12262_i16 : tensor<5xi16>
    %62 = vector.load %alloc[%c3] : memref<4xi1>, vector<5x5x4xi1>
    %63 = arith.shli %c371845031_i64, %c245943520_i64 : i64
    %inserted = tensor.insert %cst into %14[%c3] : tensor<4xf16>
    %64 = arith.addi %c918720073_i64, %c918720073_i64 : i64
    memref.assume_alignment %alloc_9, 16 : memref<5xi64>
    %65 = vector.splat %c371845031_i64 : vector<5x5x4xi64>
    %66 = index.ceildivu %c14, %c8
    %67 = tensor.empty() : tensor<4x4xf16>
    %68 = tensor.empty() : tensor<4x4xf16>
    %69 = linalg.matmul ins(%67, %67 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%68 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %70 = math.log1p %9 : tensor<5xf32>
    %71 = math.ctpop %c-14628_i16 : i16
    %72 = math.ipowi %12, %12 : tensor<4xi64>
    %alloc_20 = memref.alloc() : memref<5x5x4xi32>
    memref.copy %alloc_7, %alloc_20 : memref<5x5x4xi32> to memref<5x5x4xi32>
    %73 = arith.minui %c918720073_i64, %c157618972_i64 : i64
    %74 = memref.load %alloc_12[%c2] : memref<5xi16>
    %75 = bufferization.clone %alloc_11 : memref<5xi1> to memref<5xi1>
    %76 = math.ipowi %15, %15 : tensor<5xi32>
    %77 = affine.for %arg0 = 0 to 36 iter_args(%arg1 = %c0) -> (index) {
      affine.yield %44 : index
    }
    %78 = math.tanh %5 : tensor<5xf16>
    %79 = arith.minsi %c-14628_i16, %c-14628_i16 : i16
    %80 = arith.divsi %c-14628_i16, %c12262_i16 : i16
    %81 = index.divs %c6, %34
    %generated = tensor.generate %c8 {
    ^bb0(%arg0: index):
      %273 = index.castu %c1238082036_i64 : i64 to index
      %274 = index.ceildivs %55, %c15
      %alloc_39 = memref.alloc() : memref<i32>
      memref.tensor_store %reduced, %alloc_39 : memref<i32>
      bufferization.dealloc_tensor %7 : tensor<5x5x4xi1>
      tensor.yield %c1238082036_i64 : i64
    } : tensor<?xi64>
    %82 = arith.negf %cst_0 : f32
    %83 = tensor.empty() : tensor<4x4xf16>
    %84 = linalg.matmul ins(%68, %68 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%83 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %85 = vector.shuffle %33, %31 [0, 2, 3, 4, 5, 6, 8] : vector<5xf16>, vector<5xf16>
    %86 = arith.divui %c6664_i16, %c8581_i16 : i16
    %87 = arith.xori %c6664_i16, %c6664_i16 : i16
    %false = index.bool.constant false
    %88 = math.ctlz %12 : tensor<4xi64>
    %89 = index.ceildivs %51, %c7
    %90 = arith.muli %c-14628_i16, %c-14628_i16 : i16
    %91 = vector.extract_strided_slice %38 {offsets = [0], sizes = [4], strides = [1]} : vector<4xf32> to vector<4xf32>
    %inserted_21 = tensor.insert %c-24057_i16 into %splat[%c4] : tensor<5xi16>
    %92 = index.floordivs %c0, %55
    %93 = vector.broadcast %c918720073_i64 : i64 to vector<1x1xi64>
    %94 = vector.outerproduct %20, %20, %93 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
    %95 = math.fpowi %11, %0 : tensor<5xf32>, tensor<5xi32>
    %96 = vector.load %alloc_12[%c2] : memref<5xi16>, vector<4xi16>
    %97 = index.ceildivu %54, %44
    %98 = vector.broadcast %c-14628_i16 : i16 to vector<5xi16>
    %99 = arith.shli %c8581_i16, %c12262_i16 : i16
    %100 = arith.negf %cst : f16
    %101 = vector.broadcast %cst_1 : f32 to vector<5x4xf32>
    %dest, %accumulated_value = vector.scan <add>, %59, %101 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
    %102 = arith.remf %cst_2, %cst_3 : f16
    %103 = arith.shrsi %c-24057_i16, %c12262_i16 : i16
    %104 = arith.shli %c8581_i16, %c8581_i16 : i16
    %105 = vector.broadcast %cst_0 : f32 to vector<5x5x4xf32>
    %106 = vector.fma %105, %59, %105 : vector<5x5x4xf32>
    %107 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %33, %31, %cst_3 : vector<5xf16>, vector<5xf16> into f16
    %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<5xf16> into tensor<5x1xf16>
    %108 = tensor.empty() : tensor<4x4xf16>
    %mapped = linalg.map ins(%68 : tensor<4x4xf16>) outs(%108 : tensor<4x4xf16>)
      (%in: f16) {
        %273 = tensor.empty() : tensor<4x5xi32>
        %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %transposed, %273 : tensor<4x5xi32>, tensor<4x5x5xi32>, tensor<4x5xi32>) outs(%transposed : tensor<4x5x5xi32>) {
        ^bb0(%in_43: i32, %in_44: i32, %in_45: i32, %out: i32):
          %c0_i16 = arith.constant 0 : i16
          %302 = vector.transfer_read %splat[%c8], %c0_i16 : tensor<5xi16>, vector<i16>
          %303 = arith.remf %cst_0, %cst_0 : f32
          %304 = math.tan %11 : tensor<5xf32>
          %305 = vector.create_mask %c4 : vector<5xi1>
          %true_46 = index.bool.constant true
          %306 = memref.load %alloc_14[%c0, %c0, %c0] : memref<5x5x4xi16>
          memref.store %false, %75[%c4] : memref<5xi1>
          %307 = index.casts %c245943520_i64 : i64 to index
          %false_47 = index.bool.constant false
          %alloca_48 = memref.alloca() : memref<5x5x4xf32>
          %308 = index.maxs %c1, %61
          %309 = math.atan2 %16, %5 : tensor<5xf16>
          %310 = math.atan2 %2, %2 : tensor<5xf16>
          %311 = bufferization.to_tensor %alloc_4 : memref<5xi32>
          %312 = index.sizeof
          %313 = index.casts %c5 : index to i32
          %314 = arith.muli %c918720073_i64, %c918720073_i64 : i64
          %315 = math.floor %23 : tensor<f16>
          %316 = arith.xori %false_47, %false : i1
          %false_49 = index.bool.constant false
          %317 = index.mul %c12, %c4
          %318 = math.log10 %11 : tensor<5xf32>
          memref.assume_alignment %alloc_17, 8 : memref<5xf16>
          %319 = math.log %5 : tensor<5xf16>
          %expanded_50 = tensor.expand_shape %68 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
          %320 = tensor.empty() : tensor<1x5xf16>
          %321 = tensor.empty() : tensor<5x5xf16>
          %322 = linalg.matmul ins(%expanded, %320 : tensor<5x1xf16>, tensor<1x5xf16>) outs(%321 : tensor<5x5xf16>) -> tensor<5x5xf16>
          %323 = math.log %cst : f16
          %324 = math.tan %2 : tensor<5xf16>
          %325 = math.ctpop %false_49 : i1
          %326 = math.ctlz %27 : tensor<5x5x4xi32>
          %327 = index.castu %false_49 : i1 to index
          %328 = math.log2 %23 : tensor<f16>
          linalg.yield %c719160052_i32 : i32
        } -> tensor<4x5x5xi32>
        affine.for %arg0 = 0 to 123 {
        }
        %275 = math.tanh %23 : tensor<f16>
        %276 = arith.divsi %c371845031_i64, %c245943520_i64 : i64
        %277 = math.tanh %17 : tensor<5xf16>
        %278 = memref.load %alloc_12[%c0] : memref<5xi16>
        %279 = vector.extract_strided_slice %91 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %280 = vector.broadcast %c13 : index to vector<4xindex>
        %281 = vector.broadcast %true : i1 to vector<4xi1>
        %282 = vector.broadcast %c719160052_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_7[%c0, %c2, %c2] [%280], %281, %282 : memref<5x5x4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %283 = arith.xori %c-24057_i16, %c-14628_i16 : i16
        %cast_39 = tensor.cast %reduced : tensor<i32> to tensor<i32>
        %rank = tensor.rank %12 : tensor<4xi64>
        %284 = memref.alloca_scope  -> (memref<5xi1>) {
          %302 = index.floordivs %c4, %34
          %303 = arith.shli %c371845031_i64, %c157618972_i64 : i64
          %304 = vector.broadcast %cst : f16 to vector<5x5x4xf16>
          %305 = vector.broadcast %false : i1 to vector<5x4xi1>
          %306 = vector.insert %305, %62 [2] : vector<5x4xi1> into vector<5x5x4xi1>
          %307 = math.tanh %83 : tensor<4x4xf16>
          %308 = arith.andi %false, %false : i1
          %309 = math.log10 %14 : tensor<4xf16>
          %310 = math.atan %2 : tensor<5xf16>
          %311 = index.floordivs %c11, %c3
          %312 = vector.load %75[%c2] : memref<5xi1>, vector<5xi1>
          %alloc_43 = memref.alloc() : memref<f16>
          memref.tensor_store %23, %alloc_43 : memref<f16>
          affine.store %c245943520_i64, %alloc_16[%c7] : memref<4xi64>
          %313 = vector.create_mask %55, %c10, %61 : vector<5x5x4xi1>
          %false_44 = index.bool.constant false
          %314 = vector.multi_reduction <maxui>, %313, %312 [1, 2] : vector<5x5x4xi1> to vector<5xi1>
          %315 = math.rsqrt %21 : tensor<5xf16>
          %316 = arith.muli %false, %false_44 : i1
          %317 = math.atan2 %83, %68 : tensor<4x4xf16>
          %318 = math.rsqrt %108 : tensor<4x4xf16>
          %319 = vector.broadcast %c8581_i16 : i16 to vector<5xi16>
          %320 = arith.cmpf oge, %cst_0, %cst_1 : f32
          %321 = math.atan2 %23, %23 : tensor<f16>
          %322 = arith.remui %c157618972_i64, %c371845031_i64 : i64
          %323 = math.cttz %c719160052_i32 : i32
          %expanded_45 = tensor.expand_shape %1 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
          %324 = math.fpowi %cst_0, %c719160052_i32 : f32, i32
          %325 = vector.create_mask %57 : vector<4xi1>
          %326 = index.ceildivs %302, %c8
          %327 = math.log2 %16 : tensor<5xf16>
          %expanded_46 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
          %328 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 128, d2 + 16, d2 + 64)>(%c13, %61, %89, %rank)
          %329 = arith.remui %c-14628_i16, %c8581_i16 : i16
          memref.alloca_scope.return %75 : memref<5xi1>
        }
        bufferization.dealloc_tensor %1 : tensor<4xf32>
        vector.print %29 : vector<1xi64>
        %285 = affine.max affine_map<(d0, d1, d2) -> (d1 - 16, d2 floordiv 16)>(%c14, %c2, %89)
        %expanded_40 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<5x5x4xi32> into tensor<5x5x4x1xi32>
        %286 = math.floor %1 : tensor<4xf32>
        %287 = math.ctpop %c157618972_i64 : i64
        %288 = arith.remf %cst_0, %cst_1 : f32
        %289 = arith.subi %c157618972_i64, %c371845031_i64 : i64
        bufferization.dealloc_tensor %22 : tensor<f16>
        %290 = tensor.empty() : tensor<1x4xf16>
        %291 = tensor.empty() : tensor<5x4xf16>
        %292 = linalg.matmul ins(%expanded, %290 : tensor<5x1xf16>, tensor<1x4xf16>) outs(%291 : tensor<5x4xf16>) -> tensor<5x4xf16>
        %293 = arith.remf %in, %in : f16
        %294 = math.log1p %2 : tensor<5xf16>
        %295 = bufferization.to_tensor %alloc_12 : memref<5xi16>
        %296 = index.castu %c-14628_i16 : i16 to index
        %297 = math.ctpop %43 : tensor<5x5x4xi64>
        %298 = arith.divf %cst_3, %in : f16
        %alloca_41 = memref.alloca() : memref<5xf16>
        %299 = math.log2 %cst_2 : f16
        %300 = vector.create_mask %c3 : vector<4xi1>
        %301 = math.ctpop %4 : tensor<5xi64>
        %cst_42 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_42 : f16
      }
    %expanded_22 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<5x5x4xi1> into tensor<5x5x4x1xi1>
    %cast = tensor.cast %16 : tensor<5xf16> to tensor<?xf16>
    %109 = arith.xori %c8581_i16, %c-14628_i16 : i16
    %expanded_23 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<5x5x4xi1> into tensor<5x5x4x1xi1>
    %110 = vector.broadcast %true : i1 to vector<5x5xi1>
    %111 = vector.outerproduct %32, %32, %110 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
    %112 = arith.minsi %true, %false : i1
    %113 = math.tan %17 : tensor<5xf16>
    %114 = index.casts %c-24057_i16 : i16 to index
    %115 = index.ceildivs %44, %c2
    %116 = index.castu %51 : index to i32
    %117 = vector.broadcast %cst_0 : f32 to vector<5x4x5x4xf32>
    %118 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %106, %106, %117 : vector<5x5x4xf32>, vector<5x5x4xf32> into vector<5x4x5x4xf32>
    %false_24 = index.bool.constant false
    %119 = vector.load %75[%c4] : memref<5xi1>, vector<5xi1>
    vector.print %106 : vector<5x5x4xf32>
    %120 = arith.cmpf ueq, %cst, %cst : f16
    %121 = arith.divsi %c1238082036_i64, %c918720073_i64 : i64
    %122 = math.log2 %5 : tensor<5xf16>
    %123 = arith.shrui %c8581_i16, %c8581_i16 : i16
    %124 = math.fpowi %9, %15 : tensor<5xf32>, tensor<5xi32>
    %125 = math.atan2 %cst_2, %cst : f16
    %126 = math.log10 %5 : tensor<5xf16>
    %127 = bufferization.to_tensor %alloc_8 : memref<4xi64>
    %128 = memref.load %alloc_12[%c2] : memref<5xi16>
    %129 = bufferization.to_tensor %75 : memref<5xi1>
    %alloca_25 = memref.alloca() : memref<5x5x4xf16>
    %130 = bufferization.to_tensor %alloc_6 : memref<5x5x4xi64>
    %131 = vector.broadcast %c719160052_i32 : i32 to vector<4xi32>
    %132 = vector.broadcast %false_24 : i1 to vector<4xi1>
    %133 = vector.maskedload %alloc_4[%c3], %132, %131 : memref<5xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %134 = index.add %c1, %c14
    %135 = math.tan %expanded : tensor<5x1xf16>
    %136 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
    %137 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %39, %105, %136 : vector<4xf32>, vector<5x5x4xf32> into vector<5x5xf32>
    %138 = math.log1p %cst_3 : f16
    %139 = index.casts %c-24057_i16 : i16 to index
    %140 = math.ctpop %splat : tensor<5xi16>
    %141 = vector.broadcast %cst_1 : f32 to vector<5x5x4xf32>
    %142 = vector.fma %141, %106, %141 : vector<5x5x4xf32>
    %143 = tensor.empty() : tensor<4x4xf16>
    %144 = linalg.matmul ins(%108, %83 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%143 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %145 = arith.minsi %c1238082036_i64, %c371845031_i64 : i64
    memref.store %cst, %alloc_5[%c2] : memref<5xf16>
    %146 = vector.extract_strided_slice %31 {offsets = [3], sizes = [2], strides = [1]} : vector<5xf16> to vector<2xf16>
    %147 = math.atan %21 : tensor<5xf16>
    %148 = math.expm1 %5 : tensor<5xf16>
    %149 = index.casts %c3 : index to i32
    %150 = index.add %c0, %c6
    %151 = affine.max affine_map<(d0) -> (-d0, 0, -d0 - 2, d0 mod 2)>(%c8)
    %152 = vector.matrix_multiply %29, %29 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %153 = math.fma %cst_3, %cst_3, %cst_2 : f16
    %154 = vector.load %alloc_8[%c2] : memref<4xi64>, vector<5xi64>
    %155 = math.log2 %expanded : tensor<5x1xf16>
    %156 = math.roundeven %16 : tensor<5xf16>
    %cast_26 = tensor.cast %6 : tensor<5x5x4xi32> to tensor<?x?x?xi32>
    %157 = math.absf %21 : tensor<5xf16>
    %158 = arith.divsi %c-14628_i16, %c-14628_i16 : i16
    %159 = math.log10 %cst_2 : f16
    %160 = memref.load %alloc[%c2] : memref<4xi1>
    %161 = affine.for %arg0 = 0 to 44 iter_args(%arg1 = %alloc_8) -> (memref<4xi64>) {
      affine.yield %arg1 : memref<4xi64>
    }
    %expanded_27 = tensor.expand_shape %17 [[0, 1]] : tensor<5xf16> into tensor<5x1xf16>
    %162 = vector.broadcast %cst_1 : f32 to vector<5xf32>
    %163 = vector.fma %162, %162, %162 : vector<5xf32>
    %164 = math.tan %68 : tensor<4x4xf16>
    %165 = math.rsqrt %21 : tensor<5xf16>
    %166 = arith.negf %cst : f16
    %167 = arith.remf %cst, %cst_3 : f16
    %168 = math.log2 %23 : tensor<f16>
    %169 = math.absf %22 : tensor<f16>
    %170 = arith.shli %false_24, %true : i1
    %expanded_28 = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<4x5x5xi32> into tensor<4x5x5x1xi32>
    %171 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%139, %c5, %134)
    %172 = bufferization.clone %alloc_15 : memref<5xf32> to memref<5xf32>
    %173 = arith.minui %true, %true : i1
    memref.assume_alignment %alloc_4, 2 : memref<5xi32>
    %174 = arith.remf %cst, %cst_3 : f16
    %175 = arith.minsi %c371845031_i64, %c157618972_i64 : i64
    memref.copy %alloc_5, %alloc_17 : memref<5xf16> to memref<5xf16>
    %176 = arith.shrui %true, %true : i1
    %177 = math.tan %1 : tensor<4xf32>
    %178 = vector.create_mask %57 : vector<5xi1>
    memref.alloca_scope  {
      %273 = math.floor %83 : tensor<4x4xf16>
      %274 = arith.cmpi sle, %c1238082036_i64, %c1238082036_i64 : i64
      %275 = math.cttz %4 : tensor<5xi64>
      %276 = arith.maxsi %c371845031_i64, %c918720073_i64 : i64
      %277 = arith.muli %c371845031_i64, %c371845031_i64 : i64
      %278 = math.fma %cst_2, %cst, %cst_2 : f16
      %279 = math.log1p %14 : tensor<4xf16>
      %280 = memref.load %alloc_5[%c0] : memref<5xf16>
      memref.copy %alloc_18, %alloc_5 : memref<5xf16> to memref<5xf16>
      %false_39 = index.bool.constant false
      %281 = arith.shrsi %c157618972_i64, %c157618972_i64 : i64
      %inserted_40 = tensor.insert %c245943520_i64 into %4[%c4] : tensor<5xi64>
      %282 = math.expm1 %83 : tensor<4x4xf16>
      %283 = vector.broadcast %cst_1 : f32 to vector<5x5xf32>
      %284 = vector.outerproduct %163, %162, %283 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
      %285 = tensor.empty() : tensor<5x5x4xi64>
      %mapped_41 = linalg.map ins(%43, %43, %130 : tensor<5x5x4xi64>, tensor<5x5x4xi64>, tensor<5x5x4xi64>) outs(%285 : tensor<5x5x4xi64>)
        (%in: i64, %in_45: i64, %in_46: i64) {
          %301 = math.rsqrt %cst : f16
          %302 = arith.mulf %cst, %cst_2 : f16
          %303 = index.casts %c9 : index to i32
          %304 = arith.maxui %false, %false_24 : i1
          %alloc_47 = memref.alloc() : memref<5x5x4xi16>
          memref.copy %alloc_14, %alloc_47 : memref<5x5x4xi16> to memref<5x5x4xi16>
          %305 = vector.reduction <add>, %91 : vector<4xf32> into f32
          %306 = math.atan2 %cst, %cst_2 : f16
          %307 = index.floordivs %34, %c8
          %true_48 = index.bool.constant true
          %308 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
          %dest_49, %accumulated_value_50 = vector.scan <maxf>, %106, %308 {inclusive = true, reduction_dim = 2 : i64} : vector<5x5x4xf32>, vector<5x5xf32>
          %309 = index.mul %c2, %c5
          %310 = arith.shrui %c1238082036_i64, %c371845031_i64 : i64
          %311 = arith.divui %c719160052_i32, %c719160052_i32 : i32
          %312 = arith.muli %false, %false_24 : i1
          memref.tensor_store %6, %alloc_7 : memref<5x5x4xi32>
          memref.assume_alignment %alloc_13, 16 : memref<5xf32>
          %313 = math.rsqrt %expanded : tensor<5x1xf16>
          %314 = index.add %c15, %54
          %315 = math.log10 %2 : tensor<5xf16>
          %316 = math.tan %11 : tensor<5xf32>
          %317 = memref.load %alloc_8[%c2] : memref<4xi64>
          %318 = math.log2 %5 : tensor<5xf16>
          %319 = index.ceildivs %92, %c8
          %false_51 = index.bool.constant false
          %320 = math.log10 %143 : tensor<4x4xf16>
          %alloc_52 = memref.alloc() : memref<5xf16>
          %321 = arith.addi %true_48, %true_48 : i1
          %322 = arith.ori %false_51, %false_51 : i1
          %323 = math.tan %13 : tensor<4xf32>
          %324 = math.copysign %2, %5 : tensor<5xf16>
          %325 = math.ctlz %10 : tensor<5xi64>
          %326 = vector.extract %105[4, 3] : vector<5x5x4xf32>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %286 = index.sizeof
      %287 = memref.alloca_scope  -> (f16) {
        affine.store %true, %75[%c10] : memref<5xi1>
        %301 = math.tan %21 : tensor<5xf16>
        %302 = math.tanh %9 : tensor<5xf32>
        %303 = arith.maxui %c8581_i16, %c8581_i16 : i16
        %alloca_45 = memref.alloca() : memref<5x5x4xi32>
        %false_46 = index.bool.constant false
        %304 = arith.remf %cst_1, %cst_1 : f32
        %305 = arith.remf %cst_0, %cst_0 : f32
        %306 = math.exp2 %cst_2 : f16
        %307 = math.tan %11 : tensor<5xf32>
        %308 = arith.divsi %c918720073_i64, %c918720073_i64 : i64
        %309 = arith.remf %cst_2, %cst : f16
        %310 = arith.xori %c371845031_i64, %c918720073_i64 : i64
        %311 = arith.minf %cst_1, %cst_0 : f32
        %312 = arith.remf %cst_2, %cst : f16
        %313 = arith.subi %c6664_i16, %c-24057_i16 : i16
        %true_47 = arith.constant true
        %314 = bufferization.to_memref %13 : memref<4xf32>
        %expanded_48 = tensor.expand_shape %129 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
        %315 = arith.minsi %c12262_i16, %c6664_i16 : i16
        %316 = arith.mulf %cst_1, %cst_0 : f32
        %317 = math.copysign %11, %9 : tensor<5xf32>
        %318 = math.atan %5 : tensor<5xf16>
        %319 = index.castu %81 : index to i32
        %320 = index.ceildivs %34, %c10
        %321 = vector.bitcast %141 : vector<5x5x4xf32> to vector<5x5x4xf32>
        %322 = math.powf %16, %5 : tensor<5xf16>
        %323 = memref.load %alloc_14[%c4, %c4, %c3] : memref<5x5x4xi16>
        %324 = arith.shrsi %c-24057_i16, %c-24057_i16 : i16
        %325 = math.log1p %17 : tensor<5xf16>
        %326 = arith.floordivsi %false_46, %false_39 : i1
        %327 = memref.atomic_rmw mulf %cst_1, %alloc_10[%c4] : (f32, memref<5xf32>) -> f32
        memref.alloca_scope.return %cst_3 : f16
      }
      %288 = scf.while (%arg0 = %alloc_14) : (memref<5x5x4xi16>) -> memref<5x5x4xi16> {
        %301 = arith.remf %287, %cst : f16
        %302 = arith.shli %c-24057_i16, %c6664_i16 : i16
        %303 = arith.shli %c157618972_i64, %c371845031_i64 : i64
        %304 = affine.load %alloc_9[%c4] : memref<5xi64>
        %305 = vector.shuffle %91, %162 [2, 3, 4, 6, 8] : vector<4xf32>, vector<5xf32>
        %306 = arith.shrsi %c12262_i16, %c6664_i16 : i16
        %307 = math.copysign %21, %5 : tensor<5xf16>
        %308 = affine.apply affine_map<(d0) -> (((d0 floordiv 8) floordiv 4) floordiv 2 - 4)>(%c4)
        scf.condition(%false_39) %alloc_14 : memref<5x5x4xi16>
      } do {
      ^bb0(%arg0: memref<5x5x4xi16>):
        %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %163, %163, %cst_0 : vector<5xf32>, vector<5xf32> into f32
        %302 = index.castu %89 : index to i32
        %true_45 = index.bool.constant true
        %303 = math.cos %5 : tensor<5xf16>
        %304 = affine.load %alloc_12[%c9] : memref<5xi16>
        %305 = affine.load %alloc_9[%c14] : memref<5xi64>
        %306 = vector.load %alloc_12[%c3] : memref<5xi16>, vector<5xi16>
        %307 = arith.floordivsi %c8581_i16, %c-24057_i16 : i16
        %308 = bufferization.to_tensor %alloc_9 : memref<5xi64>
        %alloca_46 = memref.alloca() : memref<5x5x4xi1>
        %309 = affine.max affine_map<(d0, d1) -> (0)>(%81, %115)
        %310 = arith.negf %cst : f16
        %311 = index.ceildivs %c13, %89
        %312 = arith.remf %cst, %cst_2 : f16
        %313 = arith.addi %c245943520_i64, %c371845031_i64 : i64
        %314 = vector.broadcast %c719160052_i32 : i32 to vector<5xi32>
        %315 = vector.maskedload %alloc_7[%c3, %c2, %c0], %178, %314 : memref<5x5x4xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        scf.yield %alloc_14 : memref<5x5x4xi16>
      }
      %289 = index.divs %61, %97
      %expanded_42 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<5x5x4xi32> into tensor<5x5x4x1xi32>
      %290 = vector.load %alloc_11[%c1] : memref<5xi1>, vector<5xi1>
      bufferization.dealloc_tensor %2 : tensor<5xf16>
      %291 = math.tan %287 : f16
      %292 = index.ceildivu %c3, %c14
      %293 = vector.broadcast %cst_1 : f32 to vector<5x4xf32>
      %dest_43, %accumulated_value_44 = vector.scan <mul>, %141, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
      %294 = math.atan2 %22, %22 : tensor<f16>
      %295 = vector.maskedload %alloc_4[%c0], %132, %133 : memref<5xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %296 = math.fma %13, %13, %13 : tensor<4xf32>
      %297 = arith.minui %c918720073_i64, %c1238082036_i64 : i64
      %298 = arith.addi %c-24057_i16, %c8581_i16 : i16
      %299 = index.mul %c13, %c13
      %300 = math.expm1 %11 : tensor<5xf32>
    }
    %179 = bufferization.clone %alloc_8 : memref<4xi64> to memref<4xi64>
    %180 = vector.extract %20[0] : vector<1xi64>
    %181 = arith.remf %cst_3, %cst_3 : f16
    %182 = math.cos %11 : tensor<5xf32>
    %183 = arith.shli %c1238082036_i64, %c245943520_i64 : i64
    %184 = arith.minui %c371845031_i64, %c918720073_i64 : i64
    %185 = vector.broadcast %c6664_i16 : i16 to vector<5xi16>
    %186 = index.sizeof
    %expanded_29 = tensor.expand_shape %12 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
    %187 = arith.mulf %cst_3, %cst_2 : f16
    %188 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
    %dest_30, %accumulated_value_31 = vector.scan <add>, %106, %188 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
    %189 = math.copysign %11, %11 : tensor<5xf32>
    %190 = arith.mulf %cst, %cst_2 : f16
    %191 = arith.xori %c719160052_i32, %c719160052_i32 : i32
    %192 = vector.bitcast %142 : vector<5x5x4xf32> to vector<5x5x4xf32>
    %193 = vector.broadcast %c719160052_i32 : i32 to vector<4x4xi32>
    %194 = vector.outerproduct %133, %131, %193 {kind = #vector.kind<xor>} : vector<4xi32>, vector<4xi32>
    %195 = index.ceildivs %c13, %c1
    %196 = math.tan %11 : tensor<5xf32>
    %197 = math.atan2 %83, %143 : tensor<4x4xf16>
    %198 = vector.insertelement %c371845031_i64, %152[%55 : index] : vector<1xi64>
    scf.index_switch %186 
    case 1 {
      %273 = arith.minsi %true, %false : i1
      %274 = arith.xori %c371845031_i64, %c371845031_i64 : i64
      %275 = arith.minui %false_24, %true : i1
      bufferization.dealloc_tensor %1 : tensor<4xf32>
      %276 = memref.atomic_rmw minf %cst_1, %172[%c4] : (f32, memref<5xf32>) -> f32
      %277 = arith.shrsi %true, %false : i1
      %278 = vector.create_mask %c10, %89, %195 : vector<5x5x4xi1>
      %279 = math.exp %5 : tensor<5xf16>
      %280 = vector.create_mask %34 : vector<5xi1>
      bufferization.dealloc_tensor %expanded : tensor<5x1xf16>
      %281 = math.exp %1 : tensor<4xf32>
      %282 = math.cos %14 : tensor<4xf16>
      memref.copy %alloc_5, %alloc_17 : memref<5xf16> to memref<5xf16>
      %283 = affine.if affine_set<(d0) : ((d0 floordiv 2) ceildiv 2 + 4 == 0, (d0 floordiv 2) ceildiv 2 == 0, d0 == 0, (d0 floordiv 2) ceildiv 2 >= 0)>(%c15) -> i32 {
        %286 = arith.remf %cst_0, %cst_1 : f32
        %287 = bufferization.to_tensor %alloc_7 : memref<5x5x4xi32>
        %288 = index.ceildivu %c15, %c9
        memref.store %c371845031_i64, %alloc_6[%c2, %c0, %c2] : memref<5x5x4xi64>
        %289 = math.tan %2 : tensor<5xf16>
        %290 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %291 = vector.fma %290, %163, %290 : vector<5xf32>
        %292 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 32 - 112) floordiv 128)>(%51, %186)
        %293 = index.ceildivs %81, %c0
        affine.yield %c719160052_i32 : i32
      } else {
        %286 = math.tanh %23 : tensor<f16>
        %287 = bufferization.clone %alloc_15 : memref<5xf32> to memref<5xf32>
        %alloca_39 = memref.alloca() : memref<5xi32>
        %288 = vector.multi_reduction <or>, %119, %false [0] : vector<5xi1> to i1
        %289 = bufferization.clone %alloc_8 : memref<4xi64> to memref<4xi64>
        %290 = tensor.empty() : tensor<4xi1>
        memref.assume_alignment %alloc_11, 1 : memref<5xi1>
        %291 = vector.create_mask %c4 : vector<5xi1>
        affine.yield %c719160052_i32 : i32
      }
      %284 = affine.if affine_set<(d0, d1, d2) : ((d1 ceildiv 16) * 2 == 0, d1 ceildiv 64 >= 0, d1 ceildiv 128 >= 0, d1 ceildiv 16 == 0)>(%c10, %c0, %c12) -> memref<5xi32> {
        %286 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        %dest_39, %accumulated_value_40 = vector.scan <mul>, %142, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
        %alloc_41 = memref.alloc() : memref<5xi64>
        memref.copy %alloc_9, %alloc_41 : memref<5xi64> to memref<5xi64>
        %287 = math.absi %7 : tensor<5x5x4xi1>
        %288 = arith.remf %cst, %cst : f16
        %289 = arith.shrui %true, %false_24 : i1
        %cst_42 = arith.constant 1.000000e+00 : f16
        %cst_43 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %68[%92, %114], %cst_43 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x4xf16>, vector<1xf16>
        %291 = tensor.empty() : tensor<4x4xf16>
        %292 = linalg.matmul ins(%68, %83 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%291 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %expanded_44 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<5x5x4xi32> into tensor<5x5x4x1xi32>
        affine.yield %alloc_4 : memref<5xi32>
      } else {
        %286 = vector.maskedload %alloc_13[%c3], %132, %39 : memref<5xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %287 = index.maxs %54, %c11
        %288 = math.atan2 %9, %9 : tensor<5xf32>
        %289 = vector.multi_reduction <mul>, %62, %278 [] : vector<5x5x4xi1> to vector<5x5x4xi1>
        %290 = tensor.empty() : tensor<5xi32>
        %cast_39 = tensor.cast %9 : tensor<5xf32> to tensor<?xf32>
        %291 = vector.bitcast %98 : vector<5xi16> to vector<5xi16>
        %alloc_40 = memref.alloc() : memref<5xi32>
        memref.copy %alloc_4, %alloc_40 : memref<5xi32> to memref<5xi32>
        affine.yield %alloc_4 : memref<5xi32>
      }
      %285 = vector.insertelement %c-14628_i16, %185[%81 : index] : vector<5xi16>
      scf.yield
    }
    case 2 {
      %273 = arith.remui %c157618972_i64, %c245943520_i64 : i64
      %274 = arith.remf %cst_3, %cst : f16
      %275 = math.ctpop %129 : tensor<5xi1>
      %276 = vector.broadcast %c1238082036_i64 : i64 to vector<5x5x4xi64>
      %277 = math.cos %14 : tensor<4xf16>
      %278 = vector.maskedload %alloc_17[%c0], %119, %33 : memref<5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %279 = scf.while (%arg0 = %alloc_8) : (memref<4xi64>) -> memref<4xi64> {
        %289 = arith.divui %c719160052_i32, %c719160052_i32 : i32
        %290 = index.casts %134 : index to i32
        %291 = vector.broadcast %c245943520_i64 : i64 to vector<5x4xi64>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %276, %154, %291 : vector<5x5x4xi64>, vector<5xi64> into vector<5x4xi64>
        %293 = vector.shuffle %31, %278 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] : vector<5xf16>, vector<5xf16>
        %294 = math.fpowi %16, %0 : tensor<5xf16>, tensor<5xi32>
        %295 = math.tanh %14 : tensor<4xf16>
        %296 = arith.shrsi %c12262_i16, %c8581_i16 : i16
        %297 = math.tanh %cst_3 : f16
        scf.condition(%false) %alloc_8 : memref<4xi64>
      } do {
      ^bb0(%arg0: memref<4xi64>):
        %289 = index.ceildivs %c14, %c3
        %c2020761860_i64 = arith.constant 2020761860 : i64
        %290 = arith.negf %cst_1 : f32
        %291 = tensor.empty() : tensor<5xi16>
        %292 = vector.broadcast %c157618972_i64 : i64 to vector<5x4x5x4xi64>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %276, %276, %292 : vector<5x5x4xi64>, vector<5x5x4xi64> into vector<5x4x5x4xi64>
        %294 = tensor.empty() : tensor<4x4xi32>
        %295 = math.fpowi %68, %294 : tensor<4x4xf16>, tensor<4x4xi32>
        %296 = index.casts %c2 : index to i32
        %297 = vector.extract %142[3] : vector<5x5x4xf32>
        %298 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 2)>(%97, %c6, %61)
        %299 = index.ceildivs %150, %115
        %inserted_40 = tensor.insert %c918720073_i64 into %4[%c3] : tensor<5xi64>
        memref.store %c12262_i16, %alloc_14[%c1, %c4, %c1] : memref<5x5x4xi16>
        %300 = math.fpowi %cst_3, %c719160052_i32 : f16, i32
        %false_41 = index.bool.constant false
        %301 = math.atan2 %9, %9 : tensor<5xf32>
        %302 = math.expm1 %143 : tensor<4x4xf16>
        scf.yield %arg0 : memref<4xi64>
      }
      %280 = math.tanh %143 : tensor<4x4xf16>
      %281 = tensor.empty() : tensor<5xf32>
      %mapped_39 = linalg.map ins(%alloc_15, %11, %11 : memref<5xf32>, tensor<5xf32>, tensor<5xf32>) outs(%281 : tensor<5xf32>)
        (%in: f32, %in_40: f32, %in_41: f32) {
          %289 = arith.xori %c8581_i16, %c12262_i16 : i16
          memref.assume_alignment %alloc_17, 8 : memref<5xf16>
          %290 = math.ipowi %4, %4 : tensor<5xi64>
          %291 = arith.xori %c-14628_i16, %c12262_i16 : i16
          %292 = arith.maxui %c6664_i16, %c-14628_i16 : i16
          %293 = arith.divsi %c6664_i16, %c6664_i16 : i16
          %294 = math.copysign %9, %11 : tensor<5xf32>
          %expanded_42 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<5x5x4xi32> into tensor<5x5x4x1xi32>
          memref.assume_alignment %179, 4 : memref<4xi64>
          %295 = vector.reduction <mul>, %91 : vector<4xf32> into f32
          %296 = bufferization.to_tensor %alloc_4 : memref<5xi32>
          %297 = vector.bitcast %31 : vector<5xf16> to vector<5xf16>
          %298 = math.exp %11 : tensor<5xf32>
          %299 = math.log10 %cst_0 : f32
          bufferization.dealloc_tensor %143 : tensor<4x4xf16>
          %300 = vector.broadcast %in_40 : f32 to vector<5x5x4xf32>
          %301 = vector.fma %300, %142, %142 : vector<5x5x4xf32>
          %302 = arith.shrsi %c157618972_i64, %c371845031_i64 : i64
          %303 = vector.extract %98[4] : vector<5xi16>
          %304 = arith.shrui %false_24, %true : i1
          %305 = arith.floordivsi %c371845031_i64, %c918720073_i64 : i64
          %306 = arith.muli %c-24057_i16, %c8581_i16 : i16
          %307 = index.divs %c11, %171
          %308 = math.round %in : f32
          %309 = arith.negf %cst_0 : f32
          %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %154, %154, %c1238082036_i64 : vector<5xi64>, vector<5xi64> into i64
          %311 = arith.minui %c12262_i16, %c-14628_i16 : i16
          %312 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
          %313 = vector.outerproduct %162, %162, %312 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
          %314 = index.ceildivu %89, %92
          %315 = arith.shli %c-24057_i16, %c-24057_i16 : i16
          vector.print %132 : vector<4xi1>
          memref.assume_alignment %alloc_5, 1 : memref<5xf16>
          %316 = math.rsqrt %143 : tensor<4x4xf16>
          %cst_43 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_43 : f32
        }
      %282 = bufferization.to_tensor %alloc_4 : memref<5xi32>
      %283 = math.rsqrt %83 : tensor<4x4xf16>
      %284 = math.fpowi %11, %0 : tensor<5xf32>, tensor<5xi32>
      %285 = math.log1p %expanded_27 : tensor<5x1xf16>
      %286 = affine.apply affine_map<(d0) -> (-8)>(%134)
      %287 = vector.create_mask %c12 : vector<4xi1>
      %288 = arith.divui %c8581_i16, %c8581_i16 : i16
      scf.yield
    }
    case 3 {
      %273 = bufferization.to_tensor %alloc_9 : memref<5xi64>
      %274 = vector.broadcast %cst_1 : f32 to vector<f32>
      %275 = vector.transfer_write %274, %11[%c8] : vector<f32>, tensor<5xf32>
      %276 = arith.shli %c8581_i16, %c-24057_i16 : i16
      memref.copy %alloc_18, %alloc_17 : memref<5xf16> to memref<5xf16>
      %277 = scf.while (%arg0 = %75) : (memref<5xi1>) -> memref<5xi1> {
        %287 = vector.broadcast %c6664_i16 : i16 to vector<5x5xi16>
        %288 = vector.outerproduct %185, %98, %287 {kind = #vector.kind<or>} : vector<5xi16>, vector<5xi16>
        %289 = index.ceildivs %c9, %61
        %290 = tensor.empty() : tensor<4x4xf16>
        %291 = linalg.matmul ins(%108, %108 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%290 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %alloc_41 = memref.alloc() : memref<1x4xi64>
        %292 = tensor.empty() : tensor<4x4xi64>
        %293 = linalg.matmul ins(%expanded_29, %alloc_41 : tensor<4x1xi64>, memref<1x4xi64>) outs(%292 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %294 = math.ctlz %c157618972_i64 : i64
        %295 = math.log10 %9 : tensor<5xf32>
        memref.assume_alignment %75, 8 : memref<5xi1>
        %296 = memref.load %179[%c2] : memref<4xi64>
        scf.condition(%false) %75 : memref<5xi1>
      } do {
      ^bb0(%arg0: memref<5xi1>):
        %287 = arith.shrui %c1238082036_i64, %c918720073_i64 : i64
        %288 = math.ipowi %6, %6 : tensor<5x5x4xi32>
        %c-21373_i16 = arith.constant -21373 : i16
        %289 = vector.create_mask %51 : vector<4xi1>
        %290 = math.cos %22 : tensor<f16>
        %291 = vector.broadcast %c719160052_i32 : i32 to vector<5xi32>
        %292 = arith.ceildivsi %c8581_i16, %c12262_i16 : i16
        %293 = arith.shli %c-24057_i16, %c6664_i16 : i16
        %294 = arith.minsi %c918720073_i64, %c371845031_i64 : i64
        %295 = math.round %5 : tensor<5xf16>
        %296 = arith.remf %cst, %cst_2 : f16
        %297 = math.ctpop %transposed : tensor<4x5x5xi32>
        %298 = vector.broadcast %c1238082036_i64 : i64 to vector<4xi64>
        %299 = vector.maskedload %alloc_16[%c3], %132, %298 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %300 = math.tanh %83 : tensor<4x4xf16>
        %301 = arith.muli %c8581_i16, %c-24057_i16 : i16
        %302 = vector.reduction <mul>, %91 : vector<4xf32> into f32
        scf.yield %75 : memref<5xi1>
      }
      %cast_39 = tensor.cast %21 : tensor<5xf16> to tensor<?xf16>
      %278 = arith.muli %false, %false : i1
      %279 = math.floor %23 : tensor<f16>
      %280 = vector.broadcast %false : i1 to vector<5xi1>
      %281 = bufferization.to_memref %7 : memref<5x5x4xi1>
      %282 = index.floordivs %c13, %89
      %283 = arith.remf %cst_1, %cst_1 : f32
      %inserted_40 = tensor.insert %cst_1 into %11[%c3] : tensor<5xf32>
      %284 = math.fpowi %2, %15 : tensor<5xf16>, tensor<5xi32>
      %285 = arith.addi %c8581_i16, %c-24057_i16 : i16
      %286 = index.maxs %c4, %195
      scf.yield
    }
    default {
      %273 = vector.broadcast %57 : index to vector<4xindex>
      %274 = vector.broadcast %c371845031_i64 : i64 to vector<4xi64>
      vector.scatter %alloc_6[%c4, %c3, %c3] [%273], %132, %274 : memref<5x5x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %275 = math.log10 %23 : tensor<f16>
      %276 = tensor.empty() : tensor<4x4xi32>
      %277 = math.fpowi %83, %276 : tensor<4x4xf16>, tensor<4x4xi32>
      %278 = scf.while (%arg0 = %false) : (i1) -> i1 {
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %31, %33, %cst : vector<5xf16>, vector<5xf16> into f16
        %289 = arith.shrsi %c6664_i16, %c12262_i16 : i16
        %290 = arith.muli %c8581_i16, %c-14628_i16 : i16
        %cast_41 = tensor.cast %expanded_27 : tensor<5x1xf16> to tensor<?x?xf16>
        %291 = index.ceildivs %c2, %139
        %292 = tensor.empty() : tensor<1x1xi64>
        %293 = tensor.empty() : tensor<4x1xi64>
        %294 = linalg.matmul ins(%expanded_29, %292 : tensor<4x1xi64>, tensor<1x1xi64>) outs(%293 : tensor<4x1xi64>) -> tensor<4x1xi64>
        %295 = math.fma %83, %83, %108 : tensor<4x4xf16>
        %cast_42 = tensor.cast %143 : tensor<4x4xf16> to tensor<?x?xf16>
        scf.condition(%false) %false : i1
      } do {
      ^bb0(%arg0: i1):
        memref.assume_alignment %179, 8 : memref<4xi64>
        %288 = vector.broadcast %cst_0 : f32 to vector<5x5x4xf32>
        %289 = vector.fma %288, %142, %105 : vector<5x5x4xf32>
        %290 = arith.shli %c-14628_i16, %c8581_i16 : i16
        %291 = vector.broadcast %c245943520_i64 : i64 to vector<1x1xi64>
        %292 = vector.outerproduct %152, %152, %291 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
        %293 = math.log2 %cst : f16
        %294 = math.ipowi %130, %43 : tensor<5x5x4xi64>
        %295 = arith.minsi %c-14628_i16, %c6664_i16 : i16
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %178, %32, %true : vector<5xi1>, vector<5xi1> into i1
        %297 = memref.load %alloc_17[%c4] : memref<5xf16>
        bufferization.dealloc_tensor %127 : tensor<4xi64>
        %298 = memref.atomic_rmw addi %c1238082036_i64, %179[%c0] : (i64, memref<4xi64>) -> i64
        %299 = arith.shrsi %true, %true : i1
        %300 = vector.extract_strided_slice %142 {offsets = [1], sizes = [4], strides = [1]} : vector<5x5x4xf32> to vector<4x5x4xf32>
        %alloca_41 = memref.alloca() : memref<4xf32>
        %301 = index.add %c0, %34
        %302 = math.cos %cst_0 : f32
        scf.yield %true : i1
      }
      memref.tensor_store %0, %alloc_4 : memref<5xi32>
      %279 = math.copysign %13, %1 : tensor<4xf32>
      %280 = arith.xori %false, %true : i1
      bufferization.dealloc_tensor %7 : tensor<5x5x4xi1>
      %281 = arith.andi %c12262_i16, %c12262_i16 : i16
      %282 = index.ceildivu %c10, %c15
      %283 = math.log %23 : tensor<f16>
      %284 = math.expm1 %9 : tensor<5xf32>
      scf.execute_region {
        %splat_41 = tensor.splat %c12262_i16 : tensor<5x5x4xi16>
        %288 = tensor.empty() : tensor<4x4xf16>
        %289 = linalg.matmul ins(%68, %68 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%288 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %290 = bufferization.to_tensor %alloc_17 : memref<5xf16>
        %291 = bufferization.to_memref %splat : memref<5xi16>
        %292 = index.mul %114, %c4
        %293 = vector.broadcast %c371845031_i64 : i64 to vector<4xi64>
        %294 = vector.maskedload %alloc_8[%c3], %132, %293 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %295 = arith.remui %c-14628_i16, %c12262_i16 : i16
        %296 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
        %dest_42, %accumulated_value_43 = vector.scan <minf>, %106, %296 {inclusive = true, reduction_dim = 2 : i64} : vector<5x5x4xf32>, vector<5x5xf32>
        %297 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %298 = vector.fma %297, %163, %163 : vector<5xf32>
        %299 = arith.muli %c371845031_i64, %c371845031_i64 : i64
        %300 = math.fma %1, %13, %13 : tensor<4xf32>
        bufferization.dealloc_tensor %expanded_29 : tensor<4x1xi64>
        %301 = vector.load %alloc_8[%c1] : memref<4xi64>, vector<5xi64>
        %302 = arith.floordivsi %false, %true : i1
        %303 = vector.multi_reduction <minsi>, %294, %293 [] : vector<4xi64> to vector<4xi64>
        %304 = arith.maxui %c-24057_i16, %c-24057_i16 : i16
        scf.yield
      }
      %285 = index.add %55, %c7
      %286 = arith.minui %c-14628_i16, %c-24057_i16 : i16
      %287 = vector.broadcast %false_24 : i1 to vector<5x4xi1>
      %dest_39, %accumulated_value_40 = vector.scan <maxui>, %62, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5x4xi1>, vector<5x4xi1>
    }
    %expanded_32 = tensor.expand_shape %129 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
    %199 = math.powf %cst_0, %cst_0 : f32
    %200 = index.sub %c0, %92
    %201 = index.casts %c157618972_i64 : i64 to index
    %202 = vector.broadcast %cst_0 : f32 to vector<5xf32>
    %203 = vector.fma %202, %162, %162 : vector<5xf32>
    affine.for %arg0 = 0 to 118 {
    }
    %204 = vector.create_mask %c7 : vector<4xi1>
    %205 = math.log2 %9 : tensor<5xf32>
    %206 = arith.remui %c12262_i16, %c-14628_i16 : i16
    %207 = math.tanh %5 : tensor<5xf16>
    %208 = index.ceildivs %c3, %c7
    %209 = index.ceildivs %195, %c0
    %210 = index.mul %139, %150
    %211 = tensor.empty() : tensor<4x4xf16>
    %212 = linalg.matmul ins(%83, %108 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%211 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %213 = index.casts %c-14628_i16 : i16 to index
    %214 = math.copysign %expanded_27, %expanded_27 : tensor<5x1xf16>
    %215 = arith.muli %c12262_i16, %c-14628_i16 : i16
    %216 = index.casts %c245943520_i64 : i64 to index
    %217 = math.cos %23 : tensor<f16>
    %218 = math.round %16 : tensor<5xf16>
    %219 = math.tan %13 : tensor<4xf32>
    %220 = vector.broadcast %c-14628_i16 : i16 to vector<5x5xi16>
    %221 = vector.outerproduct %98, %185, %220 {kind = #vector.kind<minsi>} : vector<5xi16>, vector<5xi16>
    %222 = index.casts %c0 : index to i32
    %223 = vector.load %179[%c0] : memref<4xi64>, vector<5x5x4xi64>
    vector.print %33 : vector<5xf16>
    %224 = scf.while (%arg0 = %119) : (vector<5xi1>) -> vector<5xi1> {
      %273 = arith.muli %c6664_i16, %c6664_i16 : i16
      %alloca_39 = memref.alloca() : memref<5xi1>
      %274 = affine.for %arg1 = 0 to 20 iter_args(%arg2 = %10) -> (tensor<5xi64>) {
        affine.yield %4 : tensor<5xi64>
      }
      %275 = arith.maxui %true, %false : i1
      %276 = math.fpowi %cst_1, %c719160052_i32 : f32, i32
      %277 = math.log10 %16 : tensor<5xf16>
      %278 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      %279 = vector.broadcast %false_24 : i1 to vector<1xi1>
      %280 = vector.maskedload %alloc_15[%c3], %279, %278 : memref<5xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %281 = math.exp %expanded_27 : tensor<5x1xf16>
      scf.condition(%true) %119 : vector<5xi1>
    } do {
    ^bb0(%arg0: vector<5xi1>):
      %expanded_39 = tensor.expand_shape %130 [[0], [1], [2, 3]] : tensor<5x5x4xi64> into tensor<5x5x4x1xi64>
      %273 = math.rsqrt %23 : tensor<f16>
      %274 = vector.shuffle %29, %152 [1] : vector<1xi64>, vector<1xi64>
      %275 = arith.ori %c371845031_i64, %c1238082036_i64 : i64
      %276 = index.add %200, %92
      %generated_40 = tensor.generate %c6 {
      ^bb0(%arg1: index):
        %287 = arith.negf %cst_0 : f32
        %288 = index.ceildivs %276, %c7
        %289 = math.fma %expanded_27, %expanded, %expanded : tensor<5x1xf16>
        %290 = arith.remui %c6664_i16, %c8581_i16 : i16
        tensor.yield %cst_3 : f16
      } : tensor<?xf16>
      %277 = arith.xori %c245943520_i64, %c918720073_i64 : i64
      %278 = arith.ori %c1238082036_i64, %c245943520_i64 : i64
      %279 = memref.load %alloc_15[%c2] : memref<5xf32>
      %280 = vector.transpose %38, [0] : vector<4xf32> to vector<4xf32>
      %281 = math.log2 %68 : tensor<4x4xf16>
      %282 = math.ctpop %129 : tensor<5xi1>
      %283 = vector.extract_strided_slice %33 {offsets = [1], sizes = [4], strides = [1]} : vector<5xf16> to vector<4xf16>
      %284 = arith.remf %cst_0, %cst_0 : f32
      %285 = math.tanh %cst : f16
      %286 = math.powf %1, %1 : tensor<4xf32>
      scf.yield %32 : vector<5xi1>
    }
    %225 = arith.xori %c6664_i16, %c6664_i16 : i16
    %226 = arith.ori %false_24, %true : i1
    %227 = index.divs %c7, %34
    %228 = arith.addi %c918720073_i64, %c1238082036_i64 : i64
    %229 = index.floordivs %44, %c8
    %expanded_33 = tensor.expand_shape %expanded_23 [[0], [1], [2], [3, 4]] : tensor<5x5x4x1xi1> into tensor<5x5x4x1x1xi1>
    %230 = math.tanh %108 : tensor<4x4xf16>
    %expanded_34 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<5x5x4xi1> into tensor<5x5x4x1xi1>
    %231 = math.copysign %211, %108 : tensor<4x4xf16>
    %232 = index.sizeof
    %233 = math.cos %9 : tensor<5xf32>
    %234 = arith.maxui %c719160052_i32, %c719160052_i32 : i32
    %235 = vector.broadcast %cst_1 : f32 to vector<5xf32>
    %236 = vector.fma %235, %163, %162 : vector<5xf32>
    memref.assume_alignment %alloc_9, 2 : memref<5xi64>
    %237 = arith.remui %c371845031_i64, %c245943520_i64 : i64
    %238 = index.floordivs %c4, %139
    %239 = arith.minsi %false_24, %false : i1
    %240 = math.exp %expanded_27 : tensor<5x1xf16>
    %241 = bufferization.to_tensor %alloc_13 : memref<5xf32>
    %242 = math.log1p %9 : tensor<5xf32>
    %243 = math.cos %cst_1 : f32
    %244 = math.copysign %14, %14 : tensor<4xf16>
    memref.assume_alignment %alloc_6, 4 : memref<5x5x4xi64>
    %245 = math.absi %expanded_22 : tensor<5x5x4x1xi1>
    %246 = math.log1p %143 : tensor<4x4xf16>
    %247 = arith.shli %c8581_i16, %c-24057_i16 : i16
    %248 = affine.if affine_set<(d0, d1) : (d1 - 64 == 0, ((d1 - d0) ceildiv 4) * 32 >= 0)>(%c10, %c4) -> memref<5xi32> {
      %273 = math.log %cst_3 : f16
      %274 = arith.shrsi %c8581_i16, %c6664_i16 : i16
      %275 = math.ctpop %c719160052_i32 : i32
      %alloca_39 = memref.alloca() : memref<5xi16>
      %276 = tensor.empty() : tensor<1x4xi64>
      %277 = tensor.empty() : tensor<4x4xi64>
      %278 = linalg.matmul ins(%expanded_29, %276 : tensor<4x1xi64>, tensor<1x4xi64>) outs(%277 : tensor<4x4xi64>) -> tensor<4x4xi64>
      %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d3)>(%201, %c13, %51, %c9)
      %cast_40 = tensor.cast %3 : tensor<5xi64> to tensor<?xi64>
      %280 = affine.if affine_set<(d0) : ((-d0) floordiv 128 >= 0)>(%c5) -> i64 {
        memref.assume_alignment %alloc, 1 : memref<4xi1>
        %281 = math.cttz %c918720073_i64 : i64
        %282 = arith.ori %c-24057_i16, %c6664_i16 : i16
        %283 = arith.shrsi %c371845031_i64, %c918720073_i64 : i64
        %alloca_41 = memref.alloca() : memref<5x5x4xi32>
        affine.store %c157618972_i64, %alloc_9[%c9] : memref<5xi64>
        memref.copy %alloc_18, %alloc_17 : memref<5xf16> to memref<5xf16>
        %284 = vector.broadcast %false : i1 to vector<i1>
        vector.transfer_write %284, %75[%c7] : vector<i1>, memref<5xi1>
        affine.yield %c1238082036_i64 : i64
      } else {
        %281 = arith.shli %false, %false_24 : i1
        %282 = math.copysign %16, %21 : tensor<5xf16>
        %283 = math.log2 %83 : tensor<4x4xf16>
        %284 = arith.floordivsi %c719160052_i32, %c719160052_i32 : i32
        memref.store %cst_0, %alloc_13[%c4] : memref<5xf32>
        %285 = math.sqrt %2 : tensor<5xf16>
        %286 = arith.remf %cst_2, %cst_2 : f16
        %287 = index.divs %c1, %114
        affine.yield %c1238082036_i64 : i64
      }
      affine.yield %alloc_4 : memref<5xi32>
    } else {
      %273 = math.cttz %7 : tensor<5x5x4xi1>
      %274 = math.expm1 %211 : tensor<4x4xf16>
      %275 = math.tanh %11 : tensor<5xf32>
      %276 = vector.maskedload %alloc_13[%c3], %132, %38 : memref<5xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %277 = index.maxs %151, %66
      %inserted_39 = tensor.insert %c719160052_i32 into %8[%c1, %c3, %c2] : tensor<5x5x4xi32>
      %278 = math.roundeven %5 : tensor<5xf16>
      memref.alloca_scope  {
        %279 = bufferization.to_memref %143 : memref<4x4xf16>
        %280 = arith.xori %c719160052_i32, %c719160052_i32 : i32
        %281 = index.mul %216, %209
        %282 = bufferization.to_tensor %alloc : memref<4xi1>
        %283 = arith.muli %c6664_i16, %c6664_i16 : i16
        %284 = math.log1p %9 : tensor<5xf32>
        %285 = arith.remf %cst_3, %cst_3 : f16
        %286 = math.ctlz %6 : tensor<5x5x4xi32>
        bufferization.dealloc_tensor %14 : tensor<4xf16>
        %287 = index.castu %57 : index to i32
        %288 = arith.minui %c245943520_i64, %c918720073_i64 : i64
        %289 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %290 = vector.fma %289, %202, %202 : vector<5xf32>
        %291 = arith.shrsi %true, %false : i1
        %292 = bufferization.to_tensor %alloc_17 : memref<5xf16>
        %splat_40 = tensor.splat %c-24057_i16 : tensor<5xi16>
        %293 = math.rsqrt %9 : tensor<5xf32>
        %294 = arith.cmpi ult, %c6664_i16, %c-24057_i16 : i16
        %295 = math.log1p %expanded_27 : tensor<5x1xf16>
        %inserted_41 = tensor.insert %cst_2 into %5[%c1] : tensor<5xf16>
        %296 = vector.shuffle %106, %106 [1, 2, 3, 4, 5, 6, 7] : vector<5x5x4xf32>, vector<5x5x4xf32>
        %297 = index.sizeof
        memref.assume_alignment %alloc_11, 8 : memref<5xi1>
        %298 = math.log10 %108 : tensor<4x4xf16>
        %299 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        %300 = vector.multi_reduction <mul>, %142, %299 [0] : vector<5x5x4xf32> to vector<5x4xf32>
        %301 = bufferization.to_tensor %279 : memref<4x4xf16>
        %302 = math.ipowi %c157618972_i64, %c371845031_i64 : i64
        %303 = math.fpowi %5, %15 : tensor<5xf16>, tensor<5xi32>
        %304 = index.sizeof
        %305 = bufferization.clone %alloc_10 : memref<5xf32> to memref<5xf32>
        %306 = vector.maskedload %alloc_5[%c1], %32, %33 : memref<5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        memref.assume_alignment %alloc_5, 16 : memref<5xf16>
        %307 = math.atan2 %9, %9 : tensor<5xf32>
      }
      affine.yield %alloc_4 : memref<5xi32>
    }
    %249 = index.mul %81, %209
    %250 = index.divs %209, %210
    %true_35 = index.bool.constant true
    %251 = arith.minui %false, %true_35 : i1
    %252 = affine.apply affine_map<(d0, d1, d2) -> (1)>(%134, %c5, %186)
    %253 = math.rsqrt %9 : tensor<5xf32>
    %254 = vector.create_mask %55 : vector<5xi1>
    %255 = tensor.empty() : tensor<4xi32>
    %256 = math.fpowi %14, %255 : tensor<4xf16>, tensor<4xi32>
    %257 = arith.remui %c1238082036_i64, %c157618972_i64 : i64
    %258 = affine.if affine_set<(d0, d1) : ((d1 mod 4) * 4 == 0, d0 ceildiv 2 + 16 == 0, 0 == 0)>(%c10, %c11) -> memref<4xf16> {
      %273 = index.casts %true : i1 to index
      %274 = arith.remui %c719160052_i32, %c719160052_i32 : i32
      %275 = arith.shrsi %c12262_i16, %c8581_i16 : i16
      %276 = math.atan2 %cst_2, %cst : f16
      memref.store %cst, %alloc_18[%c2] : memref<5xf16>
      %277 = scf.while (%arg0 = %192) : (vector<5x5x4xf32>) -> vector<5x5x4xf32> {
        %280 = affine.min affine_map<(d0, d1) -> (d1 * 2 + 1, -(d0 + 128), (d1 * 2 + 1) ceildiv 64)>(%216, %208)
        %281 = affine.max affine_map<(d0, d1) -> ((d1 mod 2) * 16)>(%61, %232)
        %282 = arith.remf %cst, %cst_3 : f16
        %283 = tensor.empty() : tensor<1x1xf16>
        %284 = tensor.empty() : tensor<5x1xf16>
        %285 = linalg.matmul ins(%expanded, %283 : tensor<5x1xf16>, tensor<1x1xf16>) outs(%284 : tensor<5x1xf16>) -> tensor<5x1xf16>
        %cast_40 = tensor.cast %3 : tensor<5xi64> to tensor<?xi64>
        %286 = index.casts %c-14628_i16 : i16 to index
        %287 = affine.max affine_map<(d0) -> (((d0 * 32 + 128) ceildiv 128) * 4, d0 * 32 - 1, d0)>(%57)
        %288 = arith.remf %cst_1, %cst_0 : f32
        scf.condition(%true_35) %192 : vector<5x5x4xf32>
      } do {
      ^bb0(%arg0: vector<5x5x4xf32>):
        %280 = affine.load %alloc_12[%c12] : memref<5xi16>
        %281 = bufferization.clone %alloc_12 : memref<5xi16> to memref<5xi16>
        %expanded_40 = tensor.expand_shape %0 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %282 = arith.mulf %cst, %cst_3 : f16
        vector.print %133 : vector<4xi32>
        %283 = arith.xori %c6664_i16, %c12262_i16 : i16
        %284 = math.log10 %2 : tensor<5xf16>
        %true_41 = index.bool.constant true
        %285 = arith.divsi %c371845031_i64, %c157618972_i64 : i64
        %286 = vector.create_mask %232, %92, %c6 : vector<5x5x4xi1>
        %287 = arith.shli %c6664_i16, %c12262_i16 : i16
        %288 = arith.mulf %cst_2, %cst : f16
        %289 = math.expm1 %17 : tensor<5xf16>
        %290 = index.sizeof
        %291 = arith.divsi %false, %true_41 : i1
        %expanded_42 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        scf.yield %59 : vector<5x5x4xf32>
      }
      %278 = index.sub %186, %c1
      %279 = math.tanh %241 : tensor<5xf32>
      %alloc_39 = memref.alloc() : memref<4xf16>
      affine.yield %alloc_39 : memref<4xf16>
    } else {
      %273 = math.log1p %cst_2 : f16
      %274 = vector.multi_reduction <mul>, %162, %163 [] : vector<5xf32> to vector<5xf32>
      %275 = index.maxs %114, %61
      %276 = vector.bitcast %178 : vector<5xi1> to vector<5xi1>
      %277 = math.roundeven %22 : tensor<f16>
      %278 = math.log10 %11 : tensor<5xf32>
      %alloc_39 = memref.alloc() : memref<1x5xi64>
      %279 = tensor.empty() : tensor<4x5xi64>
      %280 = linalg.matmul ins(%expanded_29, %alloc_39 : tensor<4x1xi64>, memref<1x5xi64>) outs(%279 : tensor<4x5xi64>) -> tensor<4x5xi64>
      %281 = vector.broadcast %c6664_i16 : i16 to vector<1xi16>
      %282 = vector.broadcast %false_24 : i1 to vector<1xi1>
      %283 = vector.maskedload %alloc_14[%c1, %c3, %c3], %282, %281 : memref<5x5x4xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %alloc_40 = memref.alloc() : memref<4xf16>
      affine.yield %alloc_40 : memref<4xf16>
    }
    %259 = vector.broadcast %cst_0 : f32 to vector<5xf32>
    %260 = math.sqrt %cst_2 : f16
    %261 = math.roundeven %13 : tensor<4xf32>
    %262 = math.powf %83, %108 : tensor<4x4xf16>
    %263 = index.sub %89, %c14
    %264 = arith.remui %c918720073_i64, %c918720073_i64 : i64
    %265 = vector.splat %c245943520_i64 : vector<4xi64>
    %generated_36 = tensor.generate %213 {
    ^bb0(%arg0: index):
      %alloca_39 = memref.alloca() : memref<5xi32>
      %273 = math.absi %true : i1
      %274 = math.cos %143 : tensor<4x4xf16>
      %275 = tensor.empty() : tensor<5xf16>
      tensor.yield %cst_2 : f16
    } : tensor<?xf16>
    %266 = vector.bitcast %146 : vector<2xf16> to vector<2xf16>
    %267 = bufferization.to_tensor %alloc_16 : memref<4xi64>
    %268 = tensor.empty() : tensor<4xi64>
    %269 = linalg.copy ins(%12 : tensor<4xi64>) outs(%268 : tensor<4xi64>) -> tensor<4xi64>
    %alloc_37 = memref.alloc() : memref<5xf16>
    linalg.transpose ins(%alloc_5 : memref<5xf16>) outs(%alloc_37 : memref<5xf16>) permutation = [0] 
    %270 = tensor.empty() : tensor<f32>
    %reduced_38 = linalg.reduce ins(%172 : memref<5xf32>) outs(%270 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %273 = arith.cmpf one, %init, %cst_0 : f32
        %274 = vector.broadcast %false_24 : i1 to vector<5x5xi1>
        %275 = vector.outerproduct %119, %32, %274 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
        %276 = index.sub %c4, %97
        %277 = memref.load %alloc_5[%c0] : memref<5xf16>
        %278 = vector.shuffle %192, %141 [1, 5, 6, 7, 9] : vector<5x5x4xf32>, vector<5x5x4xf32>
        %alloc_39 = memref.alloc() : memref<4xf16>
        %279 = arith.muli %true_35, %true_35 : i1
        %280 = math.tanh %init : f32
        %cst_40 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_40 : f32
      }
    scf.parallel (%arg0, %arg1) = (%66, %34) to (%92, %c12) step (%c4, %c3) {
      %273 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
      %dest_39, %accumulated_value_40 = vector.scan <maxf>, %106, %273 {inclusive = true, reduction_dim = 1 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
      %274 = math.floor %68 : tensor<4x4xf16>
      %275 = index.maxu %209, %151
      %276 = index.sub %213, %c6
      %277 = index.floordivs %c5, %c14
      %278 = index.castu %arg0 : index to i32
      affine.store %false_24, %alloc[%c3] : memref<4xi1>
      memref.alloca_scope  {
        %287 = math.rsqrt %5 : tensor<5xf16>
        %288 = index.ceildivu %208, %201
        %inserted_41 = tensor.insert %cst_3 into %21[%c2] : tensor<5xf16>
        %289 = math.atan2 %1, %1 : tensor<4xf32>
        %290 = arith.minui %c719160052_i32, %c719160052_i32 : i32
        %291 = vector.matrix_multiply %20, %154 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi64>, vector<5xi64>) -> vector<5xi64>
        %292 = arith.floordivsi %c6664_i16, %c12262_i16 : i16
        vector.print %32 : vector<5xi1>
        %splat_42 = tensor.splat %c1238082036_i64 : tensor<4xi64>
        %293 = arith.remui %c8581_i16, %c6664_i16 : i16
        %294 = math.tan %22 : tensor<f16>
        %295 = vector.load %alloc_11[%c3] : memref<5xi1>, vector<5xi1>
        %296 = arith.minui %c-24057_i16, %c6664_i16 : i16
        %297 = math.log2 %16 : tensor<5xf16>
        %298 = math.roundeven %expanded_27 : tensor<5x1xf16>
        %299 = math.fpowi %22, %19 : tensor<f16>, tensor<i32>
        %300 = tensor.empty() : tensor<4xf16>
        %301 = index.maxs %c8, %210
        %302 = vector.shuffle %203, %38 [0, 2, 4, 7] : vector<5xf32>, vector<4xf32>
        %303 = math.powf %cst_0, %cst_0 : f32
        bufferization.dealloc_tensor %13 : tensor<4xf32>
        %304 = arith.subi %c-14628_i16, %c6664_i16 : i16
        %305 = vector.extract_strided_slice %203 {offsets = [3], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
        %306 = arith.addi %c918720073_i64, %c1238082036_i64 : i64
        %307 = arith.maxui %c6664_i16, %c-24057_i16 : i16
        %308 = index.maxu %209, %277
        %309 = arith.divsi %c-24057_i16, %c6664_i16 : i16
        %expanded_43 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        %310 = math.log10 %cst_1 : f32
        %311 = math.roundeven %270 : tensor<f32>
        %312 = math.ipowi %129, %129 : tensor<5xi1>
        %313 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %141, %313 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5x4xf32>, vector<5x4xf32>
      }
      %279 = memref.load %alloc_10[%c2] : memref<5xf32>
      %280 = tensor.empty(%275) : tensor<5x5x?xf32>
      %281 = arith.divui %true, %false_24 : i1
      %282 = math.cttz %268 : tensor<4xi64>
      %283 = vector.load %alloc_9[%c0] : memref<5xi64>, vector<4xi64>
      %284 = math.ceil %11 : tensor<5xf32>
      %285 = bufferization.to_tensor %alloc_11 : memref<5xi1>
      %286 = index.maxs %arg0, %c0
      scf.yield
    }
    %271 = affine.vector_load %alloc_4[%249] : memref<5xi32>, vector<1xi32>
    affine.vector_store %133, %alloc_4[%44] : memref<5xi32>, vector<4xi32>
    vector.print %20 : vector<1xi64>
    vector.print %29 : vector<1xi64>
    vector.print %31 : vector<5xf16>
    vector.print %32 : vector<5xi1>
    vector.print %33 : vector<5xf16>
    vector.print %38 : vector<4xf32>
    vector.print %39 : vector<4xf32>
    vector.print %52 : vector<f32>
    vector.print %59 : vector<5x5x4xf32>
    vector.print %62 : vector<5x5x4xi1>
    vector.print %91 : vector<4xf32>
    vector.print %96 : vector<4xi16>
    vector.print %98 : vector<5xi16>
    vector.print %105 : vector<5x5x4xf32>
    vector.print %106 : vector<5x5x4xf32>
    vector.print %119 : vector<5xi1>
    vector.print %131 : vector<4xi32>
    vector.print %132 : vector<4xi1>
    vector.print %133 : vector<4xi32>
    vector.print %141 : vector<5x5x4xf32>
    vector.print %142 : vector<5x5x4xf32>
    vector.print %146 : vector<2xf16>
    vector.print %152 : vector<1xi64>
    vector.print %154 : vector<5xi64>
    vector.print %162 : vector<5xf32>
    vector.print %163 : vector<5xf32>
    vector.print %178 : vector<5xi1>
    vector.print %185 : vector<5xi16>
    vector.print %192 : vector<5x5x4xf32>
    vector.print %202 : vector<5xf32>
    vector.print %203 : vector<5xf32>
    vector.print %204 : vector<4xi1>
    vector.print %223 : vector<5x5x4xi64>
    vector.print %235 : vector<5xf32>
    vector.print %236 : vector<5xf32>
    vector.print %254 : vector<5xi1>
    vector.print %259 : vector<5xf32>
    vector.print %266 : vector<2xf16>
    vector.print %271 : vector<1xi32>
    vector.print %c6664_i16 : i16
    vector.print %c719160052_i32 : i32
    vector.print %c245943520_i64 : i64
    vector.print %c918720073_i64 : i64
    vector.print %cst : f16
    vector.print %c-24057_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1238082036_i64 : i64
    vector.print %c-14628_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c157618972_i64 : i64
    vector.print %c8581_i16 : i16
    vector.print %c12262_i16 : i16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %c371845031_i64 : i64
    vector.print %true : i1
    vector.print %false : i1
    vector.print %false_24 : i1
    vector.print %true_35 : i1
    %272 = vector.broadcast %cst_3 : f16 to vector<4xf16>
    return %272 : vector<4xf16>
  }
}
