module {
  func.func @func1(%arg0: i32) -> index {
    %c164473535_i64 = arith.constant 164473535 : i64
    %c-25754_i16 = arith.constant -25754 : i16
    %cst = arith.constant 0x4E12DC27 : f32
    %cst_0 = arith.constant 5.260800e+04 : f16
    %c2075337556_i64 = arith.constant 2075337556 : i64
    %c-16423_i16 = arith.constant -16423 : i16
    %true = arith.constant true
    %c565215290_i64 = arith.constant 565215290 : i64
    %cst_1 = arith.constant 4.339200e+04 : f16
    %cst_2 = arith.constant 0x4DADE664 : f32
    %c26528801_i32 = arith.constant 26528801 : i32
    %c168234945_i32 = arith.constant 168234945 : i32
    %cst_3 = arith.constant 1.519200e+04 : f16
    %c-16131_i16 = arith.constant -16131 : i16
    %c26531_i16 = arith.constant 26531 : i16
    %cst_4 = arith.constant 3.848000e+03 : f16
    %0 = tensor.empty() : tensor<9x8xi32>
    %1 = tensor.empty() : tensor<16x8x16xi1>
    %2 = tensor.empty() : tensor<9x8xi1>
    %3 = tensor.empty() : tensor<16x8x16xi32>
    %4 = tensor.empty() : tensor<9x8xf32>
    %5 = tensor.empty() : tensor<9x16xf16>
    %6 = tensor.empty() : tensor<9x3xf16>
    %7 = tensor.empty() : tensor<9x16xf32>
    %8 = tensor.empty() : tensor<16x8x16xf32>
    %9 = tensor.empty() : tensor<9x16xf32>
    %10 = tensor.empty() : tensor<9x3xi1>
    %11 = tensor.empty() : tensor<9x16xf32>
    %12 = tensor.empty() : tensor<9x3xi64>
    %13 = tensor.empty() : tensor<16x8x16xf32>
    %14 = tensor.empty() : tensor<16x8x16xi32>
    %15 = tensor.empty() : tensor<16x8x16xi1>
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
    %alloc = memref.alloc() : memref<9x16xf32>
    %alloc_5 = memref.alloc() : memref<9x3xf16>
    %alloc_6 = memref.alloc() : memref<9x3xi1>
    %alloc_7 = memref.alloc() : memref<9x8xi1>
    %alloc_8 = memref.alloc() : memref<16x8x16xi32>
    %alloc_9 = memref.alloc() : memref<9x3xf16>
    %alloc_10 = memref.alloc() : memref<16x8x16xi1>
    %alloc_11 = memref.alloc() : memref<9x8xf32>
    %alloc_12 = memref.alloc() : memref<9x3xf32>
    %alloc_13 = memref.alloc() : memref<16x8x16xf32>
    %alloc_14 = memref.alloc() : memref<9x3xf16>
    %alloc_15 = memref.alloc() : memref<9x8xf16>
    %alloc_16 = memref.alloc() : memref<16x8x16xf16>
    %alloc_17 = memref.alloc() : memref<9x3xi16>
    %alloc_18 = memref.alloc() : memref<9x16xi16>
    %alloc_19 = memref.alloc() : memref<9x3xi16>
    %16 = tensor.empty() : tensor<16x8x16xf32>
    %17 = linalg.copy ins(%13 : tensor<16x8x16xf32>) outs(%16 : tensor<16x8x16xf32>) -> tensor<16x8x16xf32>
    %18 = tensor.empty() : tensor<16x9xf32>
    %transposed = linalg.transpose ins(%9 : tensor<9x16xf32>) outs(%18 : tensor<16x9xf32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<16x8xi1>
    %reduced = linalg.reduce ins(%1 : tensor<16x8x16xi1>) outs(%19 : tensor<16x8xi1>) dimensions = [2] 
      (%in: i1, %init: i1) {
        %276 = vector.create_mask %c1, %c1 : vector<9x16xi1>
        %277 = arith.andi %c26531_i16, %c-16131_i16 : i16
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %278 = vector.transfer_read %alloc_9[%c0, %c7], %cst_49 : memref<9x3xf16>, vector<f16>
        %279 = math.ceil %cst_1 : f16
        %280 = math.ctpop %c26528801_i32 : i32
        %281 = math.fma %11, %7, %9 : tensor<9x16xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_50 = arith.constant 0 : i32
        %282 = vector.transfer_read %0[%c12, %c4], %c0_i32_50 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<9x8xi32>, vector<8xi32>
        %283 = scf.if %init -> (i16) {
          %284 = index.floordivs %c14, %c9
          %285 = bufferization.to_tensor %alloc_12 : memref<9x3xf32>
          %286 = index.maxu %c6, %c12
          %287 = math.absf %13 : tensor<16x8x16xf32>
          %alloc_52 = memref.alloc() : memref<16x8x16xf16>
          %288 = vector.broadcast %c164473535_i64 : i64 to vector<i64>
          %289 = vector.insertelement %c164473535_i64, %288[] : vector<i64>
          %290 = arith.minsi %c565215290_i64, %c164473535_i64 : i64
          %291 = arith.remf %cst_1, %cst_0 : f16
          scf.yield %c-16131_i16 : i16
        } else {
          %284 = index.floordivs %c15, %c1
          %285 = arith.remui %c164473535_i64, %c565215290_i64 : i64
          %286 = arith.cmpf uno, %cst_0, %cst_1 : f16
          %287 = vector.broadcast %true : i1 to vector<16xi1>
          %288 = vector.broadcast %true : i1 to vector<16x16xi1>
          %289 = vector.outerproduct %287, %287, %288 {kind = #vector.kind<or>} : vector<16xi1>, vector<16xi1>
          %290 = index.ceildivs %c3, %c8
          %291 = vector.broadcast %cst_48 : f16 to vector<f16>
          %292 = vector.transfer_write %291, %5[%c7, %c4] : vector<f16>, tensor<9x16xf16>
          %293 = math.cos %13 : tensor<16x8x16xf32>
          %294 = math.ceil %9 : tensor<9x16xf32>
          scf.yield %c-16131_i16 : i16
        }
        %false_51 = arith.constant false
        linalg.yield %false_51 : i1
      }
    scf.parallel (%arg1, %arg2) = (%c9, %c3) to (%c12, %c9) step (%c3, %c7) {
      %276 = scf.while (%arg3 = %alloc_16) : (memref<16x8x16xf16>) -> memref<16x8x16xf16> {
        %297 = vector.create_mask %c12, %arg2 : vector<9x3xi1>
        %298 = vector.broadcast %c7 : index to vector<8xindex>
        %299 = vector.broadcast %true : i1 to vector<8xi1>
        %300 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        vector.scatter %alloc[%c0, %c8] [%298], %299, %300 : memref<9x16xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        %301 = arith.shrsi %c164473535_i64, %c164473535_i64 : i64
        %302 = index.maxu %c0, %c0
        %303 = math.tan %4 : tensor<9x8xf32>
        %304 = arith.addf %cst_0, %cst_3 : f16
        %305 = arith.xori %c-16131_i16, %c-16131_i16 : i16
        %306 = arith.mulf %cst_0, %cst_0 : f16
        scf.condition(%true) %alloc_16 : memref<16x8x16xf16>
      } do {
      ^bb0(%arg3: memref<16x8x16xf16>):
        %297 = vector.broadcast %cst_1 : f16 to vector<9x8xf16>
        %298 = vector.transpose %297, [1, 0] : vector<9x8xf16> to vector<8x9xf16>
        %299 = bufferization.clone %alloc_11 : memref<9x8xf32> to memref<9x8xf32>
        %300 = index.floordivs %c8, %c1
        %301 = math.ceil %8 : tensor<16x8x16xf32>
        %302 = vector.broadcast %c168234945_i32 : i32 to vector<16x3xi32>
        %303 = vector.transfer_write %302, %14[%300, %c15, %arg2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x3xi32>, tensor<16x8x16xi32>
        %304 = math.fpowi %16, %3 : tensor<16x8x16xf32>, tensor<16x8x16xi32>
        %cast_48 = tensor.cast %15 : tensor<16x8x16xi1> to tensor<?x?x?xi1>
        %305 = bufferization.to_memref %6 : memref<9x3xf16>
        %306 = math.log2 %9 : tensor<9x16xf32>
        %307 = bufferization.clone %alloc_9 : memref<9x3xf16> to memref<9x3xf16>
        %308 = math.atan %13 : tensor<16x8x16xf32>
        %309 = arith.divf %cst_4, %cst_1 : f16
        %310 = math.exp %7 : tensor<9x16xf32>
        %311 = arith.minf %cst_3, %cst_3 : f16
        %312 = arith.subi %c164473535_i64, %c164473535_i64 : i64
        %313 = index.maxu %c15, %c3
        scf.yield %alloc_16 : memref<16x8x16xf16>
      }
      %277 = arith.shli %c565215290_i64, %c565215290_i64 : i64
      %278 = index.ceildivs %c14, %c7
      %279 = math.cos %cst_2 : f32
      %280 = math.round %13 : tensor<16x8x16xf32>
      %281 = index.floordivs %c3, %c13
      %282 = vector.broadcast %c26531_i16 : i16 to vector<16xi16>
      %283 = vector.broadcast %c-25754_i16 : i16 to vector<16x16xi16>
      %284 = vector.outerproduct %282, %282, %283 {kind = #vector.kind<or>} : vector<16xi16>, vector<16xi16>
      %285 = vector.broadcast %c26528801_i32 : i32 to vector<9x16xi32>
      %286 = vector.transpose %285, [0, 1] : vector<9x16xi32> to vector<9x16xi32>
      %287 = index.ceildivu %c2, %c12
      %288 = vector.transpose %285, [0, 1] : vector<9x16xi32> to vector<9x16xi32>
      %289 = index.mul %c13, %c3
      %290 = vector.broadcast %c168234945_i32 : i32 to vector<8xi32>
      %291 = vector.broadcast %c168234945_i32 : i32 to vector<8x8xi32>
      %292 = vector.outerproduct %290, %290, %291 {kind = #vector.kind<and>} : vector<8xi32>, vector<8xi32>
      %293 = math.ctlz %3 : tensor<16x8x16xi32>
      %294 = arith.remui %c2075337556_i64, %c565215290_i64 : i64
      %295 = math.log2 %13 : tensor<16x8x16xf32>
      %296 = math.cos %4 : tensor<9x8xf32>
      scf.yield
    }
    %20 = affine.vector_load %alloc_12[%c15, %c7] : memref<9x3xf32>, vector<9xf32>
    affine.vector_store %20, %alloc_13[%c7, %c4, %c12] : memref<16x8x16xf32>, vector<9xf32>
    %alloc_20 = memref.alloc() : memref<16xi64>
    %21 = tensor.empty() : tensor<16xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%alloc_20, %21 : memref<16xi64>, tensor<16xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = math.exp2 %8 : tensor<16x8x16xf32>
    %25 = arith.maxf %cst_1, %cst_3 : f16
    %26 = math.exp %13 : tensor<16x8x16xf32>
    %27 = math.atan %4 : tensor<9x8xf32>
    %28 = math.absi %14 : tensor<16x8x16xi32>
    %29 = bufferization.clone %alloc_10 : memref<16x8x16xi1> to memref<16x8x16xi1>
    %30 = arith.maxsi %true, %true : i1
    %generated = tensor.generate %c14, %c14 {
    ^bb0(%arg1: index, %arg2: index):
      %276 = index.add %c11, %c3
      %277 = arith.negf %cst_1 : f16
      %278 = math.absf %16 : tensor<16x8x16xf32>
      %279 = vector.multi_reduction <maxf>, %20, %cst [0] : vector<9xf32> to f32
      tensor.yield %c168234945_i32 : i32
    } : tensor<?x?xi32>
    %31 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
    %32 = vector.outerproduct %20, %20, %31 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
    %33 = index.casts %c26528801_i32 : i32 to index
    %34 = math.ipowi %14, %3 : tensor<16x8x16xi32>
    %35 = arith.negf %cst : f32
    %36 = index.divu %c12, %c4
    %37 = index.ceildivs %c11, %c7
    %38 = index.sub %c4, %c11
    %39 = vector.broadcast %cst_2 : f32 to vector<9x8xf32>
    %40 = vector.fma %39, %39, %39 : vector<9x8xf32>
    %41 = scf.if %true -> (memref<9x8xf16>) {
      %276 = arith.ori %c-16423_i16, %c-16131_i16 : i16
      %277 = scf.while (%arg1 = %alloc) : (memref<9x16xf32>) -> memref<9x16xf32> {
        %283 = arith.shrui %true, %true : i1
        %284 = arith.divf %cst_0, %cst_3 : f16
        %285 = math.ctlz %2 : tensor<9x8xi1>
        %286 = arith.cmpi ugt, %c565215290_i64, %c565215290_i64 : i64
        vector.print %40 : vector<9x8xf32>
        %287 = math.exp %13 : tensor<16x8x16xf32>
        %288 = bufferization.clone %alloc_13 : memref<16x8x16xf32> to memref<16x8x16xf32>
        %289 = index.maxu %c3, %c11
        scf.condition(%true) %arg1 : memref<9x16xf32>
      } do {
      ^bb0(%arg1: memref<9x16xf32>):
        %283 = memref.realloc %alloc_20 : memref<16xi64> to memref<9xi64>
        %284 = vector.broadcast %cst : f32 to vector<9x16xf32>
        %285 = arith.divf %cst_2, %cst : f32
        %286 = arith.divf %cst_1, %cst_0 : f16
        bufferization.dealloc_tensor %9 : tensor<9x16xf32>
        %alloc_50 = memref.alloc() : memref<9x8xi32>
        %287 = math.powf %6, %6 : tensor<9x3xf16>
        %288 = vector.broadcast %c168234945_i32 : i32 to vector<16xi32>
        %289 = vector.transfer_write %288, %3[%c4, %c9, %37] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<16xi32>, tensor<16x8x16xi32>
        %290 = math.absf %cst_2 : f32
        %291 = math.log10 %8 : tensor<16x8x16xf32>
        %292 = bufferization.clone %alloc_20 : memref<16xi64> to memref<16xi64>
        %293 = arith.xori %c-25754_i16, %c-16131_i16 : i16
        %294 = vector.broadcast %cst_1 : f16 to vector<9x3xf16>
        memref.tensor_store %7, %arg1 : memref<9x16xf32>
        %295 = arith.ori %true, %true : i1
        %296 = tensor.empty() : tensor<9x9xf32>
        %297 = linalg.matmul ins(%7, %transposed : tensor<9x16xf32>, tensor<16x9xf32>) outs(%296 : tensor<9x9xf32>) -> tensor<9x9xf32>
        scf.yield %alloc : memref<9x16xf32>
      }
      %278 = vector.shuffle %20, %20 [0, 1, 2, 3, 4, 5, 7, 8, 9, 11, 12, 16] : vector<9xf32>, vector<9xf32>
      %rank_48 = tensor.rank %transposed : tensor<16x9xf32>
      %279 = tensor.empty() : tensor<i64>
      %mapped_49 = linalg.map ins(%22, %23, %23 : tensor<i64>, tensor<i64>, tensor<i64>) outs(%279 : tensor<i64>)
        (%in: i64, %in_50: i64, %in_51: i64) {
          %283 = vector.create_mask %33, %c11, %c9 : vector<16x8x16xi1>
          %alloc_52 = memref.alloc() : memref<9x8xi1>
          %extracted = tensor.extract %2[%c2, %c5] : tensor<9x8xi1>
          %284 = arith.remf %cst_4, %cst_3 : f16
          bufferization.dealloc_tensor %279 : tensor<i64>
          %285 = math.ctlz %c-16423_i16 : i16
          memref.assume_alignment %alloc_13, 8 : memref<16x8x16xf32>
          %286 = math.exp2 %9 : tensor<9x16xf32>
          %287 = math.cttz %14 : tensor<16x8x16xi32>
          %288 = vector.broadcast %cst : f32 to vector<9x9xf32>
          %289 = vector.outerproduct %20, %20, %288 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
          %290 = vector.shuffle %283, %283 [3, 4, 5, 7, 9, 10, 11, 16, 21, 22, 23, 25, 27, 31] : vector<16x8x16xi1>, vector<16x8x16xi1>
          %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<9x8xi1> into tensor<9x8x1xi1>
          vector.print %283 : vector<16x8x16xi1>
          %291 = math.exp2 %cst_4 : f16
          %292 = math.log2 %11 : tensor<9x16xf32>
          %293 = memref.load %alloc_8[%c0, %c2, %c5] : memref<16x8x16xi32>
          %294 = math.cttz %c-16131_i16 : i16
          %295 = arith.shrui %in_50, %c164473535_i64 : i64
          %296 = memref.realloc %alloc_20 : memref<16xi64> to memref<8xi64>
          %297 = vector.flat_transpose %20 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
          %298 = math.powf %7, %7 : tensor<9x16xf32>
          %299 = memref.atomic_rmw ori %c-16131_i16, %alloc_19[%c1, %c1] : (i16, memref<9x3xi16>) -> i16
          %300 = math.round %11 : tensor<9x16xf32>
          %cst_53 = arith.constant 1.000000e+00 : f32
          %301 = vector.transfer_read %13[%36, %c3, %c1], %cst_53 : tensor<16x8x16xf32>, vector<f32>
          %302 = math.log1p %5 : tensor<9x16xf16>
          %303 = arith.muli %in_50, %in_50 : i64
          %304 = arith.divui %c164473535_i64, %c164473535_i64 : i64
          %305 = math.tan %4 : tensor<9x8xf32>
          %expanded_54 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
          %306 = tensor.empty() : tensor<16x3xf16>
          %307 = tensor.empty() : tensor<9x3xf16>
          %308 = linalg.matmul ins(%5, %306 : tensor<9x16xf16>, tensor<16x3xf16>) outs(%307 : tensor<9x3xf16>) -> tensor<9x3xf16>
          %309 = bufferization.to_tensor %alloc_17 : memref<9x3xi16>
          %310 = math.exp %cst : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %280 = arith.divui %c-25754_i16, %c-16131_i16 : i16
      %281 = index.casts %c26528801_i32 : i32 to index
      %282 = math.powf %13, %8 : tensor<16x8x16xf32>
      scf.yield %alloc_15 : memref<9x8xf16>
    } else {
      %276 = vector.shuffle %40, %39 [0, 2, 4, 6, 13, 14, 15, 17] : vector<9x8xf32>, vector<9x8xf32>
      %277 = arith.shli %c26528801_i32, %c168234945_i32 : i32
      %278 = math.exp2 %13 : tensor<16x8x16xf32>
      %279 = tensor.empty() : tensor<8xi1>
      %alloc_48 = memref.alloc() : memref<16xi1>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279, %279, %alloc_48 : tensor<8xi1>, tensor<8xi1>, memref<16xi1>) outs(%1 : tensor<16x8x16xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out: i1):
        %288 = vector.extract %39[2] : vector<9x8xf32>
        %289 = affine.load %alloc_14[%c11, %c0] : memref<9x3xf16>
        %290 = arith.shli %c26528801_i32, %c168234945_i32 : i32
        %291 = arith.xori %in_49, %in_50 : i1
        %292 = index.ceildivs %c10, %c13
        %293 = math.fma %cst_2, %cst, %cst : f32
        %294 = affine.load %29[%c2, %c0, %c2] : memref<16x8x16xi1>
        %295 = index.casts %c26528801_i32 : i32 to index
        %296 = vector.broadcast %294 : i1 to vector<i1>
        %297 = vector.transfer_write %296, %reduced[%c10, %c5] : vector<i1>, tensor<16x8xi1>
        %298 = math.fpowi %13, %3 : tensor<16x8x16xf32>, tensor<16x8x16xi32>
        %299 = vector.shuffle %296, %296 [0, 1] : vector<i1>, vector<i1>
        %300 = index.floordivs %c4, %c3
        %301 = tensor.empty() : tensor<8x3xi1>
        %302 = tensor.empty() : tensor<9x3xi1>
        %303 = linalg.matmul ins(%2, %301 : tensor<9x8xi1>, tensor<8x3xi1>) outs(%302 : tensor<9x3xi1>) -> tensor<9x3xi1>
        %304 = arith.muli %c-25754_i16, %c-16423_i16 : i16
        %305 = math.log10 %13 : tensor<16x8x16xf32>
        %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
        %306 = index.ceildivs %c7, %c11
        %307 = arith.shli %c565215290_i64, %c2075337556_i64 : i64
        %308 = vector.broadcast %cst : f32 to vector<3xf32>
        %309 = vector.transfer_write %308, %11[%c9, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, tensor<9x16xf32>
        %310 = arith.minf %cst_1, %cst_0 : f16
        %311 = vector.extract %39[1] : vector<9x8xf32>
        %312 = math.expm1 %9 : tensor<9x16xf32>
        vector.print %40 : vector<9x8xf32>
        %313 = index.ceildivs %300, %36
        %314 = index.maxs %295, %36
        %315 = arith.andi %in_49, %294 : i1
        %316 = math.atan %cst : f32
        %317 = math.tan %cst_3 : f16
        %318 = bufferization.clone %alloc_18 : memref<9x16xi16> to memref<9x16xi16>
        %319 = arith.shli %c168234945_i32, %c168234945_i32 : i32
        %320 = index.maxs %38, %c15
        %321 = math.ctlz %c565215290_i64 : i64
        linalg.yield %true : i1
      } -> tensor<16x8x16xi1>
      %281 = index.add %c7, %c5
      %282 = index.castu %c12 : index to i32
      %283 = vector.extract %20[0] : vector<9xf32>
      %284 = tensor.empty() : tensor<9x16xi32>
      %285 = vector.broadcast %c168234945_i32 : i32 to vector<9x8xi32>
      %286 = vector.broadcast %true : i1 to vector<9x8xi1>
      %287 = vector.gather %284[%c2, %36] [%285], %286, %285 : tensor<9x16xi32>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi32> into vector<9x8xi32>
      scf.yield %alloc_15 : memref<9x8xf16>
    }
    %42 = math.powf %6, %6 : tensor<9x3xf16>
    %43 = arith.ceildivsi %c168234945_i32, %c26528801_i32 : i32
    %alloc_21 = memref.alloc() : memref<16x8x16xf32>
    %44 = arith.mulf %cst_4, %cst_0 : f16
    %45 = arith.floordivsi %c-16131_i16, %c-16131_i16 : i16
    %generated_22 = tensor.generate %c3 {
    ^bb0(%arg1: index, %arg2: index):
      %276 = scf.while (%arg3 = %c26528801_i32) : (i32) -> i32 {
        %279 = arith.remui %c-16423_i16, %c26531_i16 : i16
        %280 = math.cos %11 : tensor<9x16xf32>
        %281 = index.add %33, %c6
        %282 = vector.bitcast %20 : vector<9xf32> to vector<9xi32>
        %283 = arith.minf %cst_4, %cst_3 : f16
        %284 = math.absf %17 : tensor<16x8x16xf32>
        %285 = index.maxs %c1, %36
        %286 = math.expm1 %cst : f32
        scf.condition(%true) %c26528801_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %279 = arith.andi %c164473535_i64, %c164473535_i64 : i64
        %280 = math.cos %13 : tensor<16x8x16xf32>
        %true_48 = index.bool.constant true
        %true_49 = index.bool.constant true
        %281 = math.expm1 %cst_0 : f16
        memref.tensor_store %14, %alloc_8 : memref<16x8x16xi32>
        %282 = bufferization.clone %alloc_13 : memref<16x8x16xf32> to memref<16x8x16xf32>
        %283 = tensor.empty() : tensor<9x16xi32>
        %284 = math.fpowi %11, %283 : tensor<9x16xf32>, tensor<9x16xi32>
        %285 = arith.andi %true, %true_49 : i1
        %286 = arith.minf %cst_1, %cst_4 : f16
        %true_50 = index.bool.constant true
        %287 = math.expm1 %5 : tensor<9x16xf16>
        %cast_51 = tensor.cast %15 : tensor<16x8x16xi1> to tensor<?x?x?xi1>
        %288 = vector.shuffle %40, %39 [1, 5, 6, 7, 12, 14, 15] : vector<9x8xf32>, vector<9x8xf32>
        %289 = math.absf %7 : tensor<9x16xf32>
        %290 = tensor.empty() : tensor<16x8x16xf32>
        scf.yield %c26528801_i32 : i32
      }
      %277 = index.mul %36, %c15
      memref.assume_alignment %alloc_16, 2 : memref<16x8x16xf16>
      %278 = arith.shrsi %c-25754_i16, %c26531_i16 : i16
      tensor.yield %c-16423_i16 : i16
    } : tensor<?x16xi16>
    %46 = index.casts %true : i1 to index
    %47 = arith.muli %c-16131_i16, %c-16423_i16 : i16
    %48 = math.ctlz %1 : tensor<16x8x16xi1>
    %alloc_23 = memref.alloc() : memref<9x8xi32>
    %49 = vector.broadcast %c-16131_i16 : i16 to vector<8xi16>
    vector.transfer_write %49, %alloc_18[%c13, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, memref<9x16xi16>
    %50 = arith.subi %c164473535_i64, %c164473535_i64 : i64
    %51 = arith.addf %cst_2, %cst : f32
    %true_24 = index.bool.constant true
    %52 = math.exp2 %7 : tensor<9x16xf32>
    %53 = vector.broadcast %cst_2 : f32 to vector<9xf32>
    %54 = vector.transfer_write %53, %9[%38, %37] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<9x16xf32>
    %55 = math.tan %8 : tensor<16x8x16xf32>
    %56 = bufferization.clone %alloc_17 : memref<9x3xi16> to memref<9x3xi16>
    %57 = vector.broadcast %c-16423_i16 : i16 to vector<8x8xi16>
    %58 = vector.outerproduct %49, %49, %57 {kind = #vector.kind<minui>} : vector<8xi16>, vector<8xi16>
    %59 = affine.load %29[%c4, %c8, %c14] : memref<16x8x16xi1>
    %60 = math.log10 %13 : tensor<16x8x16xf32>
    %61 = vector.multi_reduction <maxf>, %53, %20 [] : vector<9xf32> to vector<9xf32>
    %62 = arith.mulf %cst_0, %cst_3 : f16
    %63 = vector.broadcast %c9 : index to vector<16xindex>
    %64 = vector.broadcast %true_24 : i1 to vector<16xi1>
    %65 = vector.broadcast %c-16423_i16 : i16 to vector<16xi16>
    vector.scatter %alloc_19[%c3, %c1] [%63], %64, %65 : memref<9x3xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
    %alloca = memref.alloca() : memref<16x8x16xi64>
    %66 = math.round %4 : tensor<9x8xf32>
    %67 = memref.alloca_scope  -> (i64) {
      %276 = math.roundeven %cst_2 : f32
      %277 = scf.execute_region -> index {
        %306 = math.atan2 %9, %11 : tensor<9x16xf32>
        %307 = vector.broadcast %cst : f32 to vector<9x9xf32>
        %308 = vector.outerproduct %53, %53, %307 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
        %309 = arith.shli %c-25754_i16, %c26531_i16 : i16
        %alloc_51 = memref.alloc() : memref<9x8xf32>
        %false_52 = index.bool.constant false
        %310 = math.ceil %18 : tensor<16x9xf32>
        %311 = bufferization.clone %alloc_11 : memref<9x8xf32> to memref<9x8xf32>
        %312 = arith.xori %c168234945_i32, %c26528801_i32 : i32
        %313 = math.fma %9, %9, %9 : tensor<9x16xf32>
        %314 = index.sizeof
        %315 = index.floordivs %314, %37
        %316 = arith.shli %c-16131_i16, %c-16423_i16 : i16
        %317 = vector.bitcast %20 : vector<9xf32> to vector<9xf32>
        %318 = math.atan %7 : tensor<9x16xf32>
        %319 = math.exp2 %9 : tensor<9x16xf32>
        %320 = arith.ori %59, %59 : i1
        scf.yield %c10 : index
      }
      %278 = math.ctlz %c2075337556_i64 : i64
      memref.assume_alignment %alloc_13, 16 : memref<16x8x16xf32>
      memref.assume_alignment %alloc_13, 2 : memref<16x8x16xf32>
      %279 = math.log2 %7 : tensor<9x16xf32>
      %280 = index.divu %33, %c7
      %281 = index.ceildivs %c8, %c14
      %282 = arith.negf %cst_4 : f16
      %283 = vector.create_mask %c14, %c2 : vector<9x8xi1>
      %284 = vector.broadcast %true : i1 to vector<i1>
      %285 = vector.transfer_write %284, %19[%38, %c8] : vector<i1>, tensor<16x8xi1>
      %expanded = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<16x8xi1> into tensor<16x8x1xi1>
      %286 = index.casts %c164473535_i64 : i64 to index
      %287 = index.casts %true_24 : i1 to index
      %288 = vector.create_mask %c8, %c7 : vector<9x16xi1>
      %289 = math.absf %4 : tensor<9x8xf32>
      %290 = math.fma %11, %11, %9 : tensor<9x16xf32>
      %291 = arith.remsi %c-16131_i16, %c-25754_i16 : i16
      %expanded_48 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
      %292 = affine.load %alloc_15[%c10, %c0] : memref<9x8xf16>
      %alloca_49 = memref.alloca() : memref<16x8x16xi1>
      %293 = math.atan2 %expanded_48, %expanded_48 : tensor<9x16x1xf32>
      %294 = vector.reduction <mul>, %53 : vector<9xf32> into f32
      %295 = affine.load %alloc_9[%c11, %c8] : memref<9x3xf16>
      %296 = math.log2 %17 : tensor<16x8x16xf32>
      %297 = arith.andi %c-16423_i16, %c26531_i16 : i16
      %298 = vector.broadcast %c11 : index to vector<16xindex>
      %299 = vector.broadcast %true_24 : i1 to vector<16xi1>
      %300 = vector.broadcast %292 : f16 to vector<16xf16>
      vector.scatter %alloc_14[%c7, %c2] [%298], %299, %300 : memref<9x3xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
      %301 = vector.splat %295 : vector<9x3xf16>
      %302 = vector.broadcast %c164473535_i64 : i64 to vector<i64>
      vector.transfer_write %302, %alloc_20[%286] : vector<i64>, memref<16xi64>
      %false_50 = arith.constant false
      %303 = vector.transfer_read %1[%c9, %33, %286], %false_50 : tensor<16x8x16xi1>, vector<16x8xi1>
      %304 = math.roundeven %cst_0 : f16
      %305 = memref.atomic_rmw ori %c-16131_i16, %alloc_19[%c0, %c1] : (i16, memref<9x3xi16>) -> i16
      memref.alloca_scope.return %c164473535_i64 : i64
    }
    %68 = vector.broadcast %true : i1 to vector<3xi1>
    %69 = vector.transfer_write %68, %2[%c4, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<9x8xi1>
    %70 = affine.load %alloc_16[%c7, %c4, %c6] : memref<16x8x16xf16>
    %71 = vector.flat_transpose %53 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
    %72 = math.fma %5, %5, %5 : tensor<9x16xf16>
    %73 = tensor.empty() : tensor<9x16xi32>
    %74 = math.fpowi %7, %73 : tensor<9x16xf32>, tensor<9x16xi32>
    %75 = vector.transpose %20, [0] : vector<9xf32> to vector<9xf32>
    %alloc_25 = memref.alloc() : memref<9x16xi64>
    %76 = arith.addi %c-25754_i16, %c-25754_i16 : i16
    %77 = vector.bitcast %40 : vector<9x8xf32> to vector<9x8xf32>
    %78 = scf.while (%arg1 = %41) : (memref<9x8xf16>) -> memref<9x8xf16> {
      %276 = math.log %13 : tensor<16x8x16xf32>
      %277 = math.absi %12 : tensor<9x3xi64>
      %278 = math.log10 %7 : tensor<9x16xf32>
      memref.store %cst_3, %alloc_15[%c2, %c6] : memref<9x8xf16>
      %cast_48 = tensor.cast %4 : tensor<9x8xf32> to tensor<?x?xf32>
      %279 = arith.shli %59, %true_24 : i1
      %280 = memref.atomic_rmw addf %cst_2, %alloc[%c2, %c11] : (f32, memref<9x16xf32>) -> f32
      %281 = math.ctlz %67 : i64
      scf.condition(%true) %41 : memref<9x8xf16>
    } do {
    ^bb0(%arg1: memref<9x8xf16>):
      %276 = arith.cmpf uge, %cst_4, %cst_0 : f16
      %277 = arith.maxui %true, %true_24 : i1
      %278 = arith.ori %59, %true : i1
      %279 = vector.broadcast %cst : f32 to vector<9x16xf32>
      %280 = vector.fma %279, %279, %279 : vector<9x16xf32>
      %281 = math.atan2 %11, %11 : tensor<9x16xf32>
      %282 = index.mul %c4, %c6
      %283 = arith.ori %67, %67 : i64
      %284 = arith.divui %c565215290_i64, %c164473535_i64 : i64
      %285 = arith.cmpf ole, %cst_4, %cst_0 : f16
      %286 = vector.broadcast %cst_2 : f32 to vector<9x8xf32>
      %287 = vector.fma %286, %286, %286 : vector<9x8xf32>
      %288 = arith.ori %c26531_i16, %c26531_i16 : i16
      %289 = arith.minf %cst_0, %cst_3 : f16
      %290 = math.exp2 %11 : tensor<9x16xf32>
      %291 = arith.divui %true, %59 : i1
      %alloca_48 = memref.alloca() : memref<9x16xi1>
      %292 = vector.broadcast %c13 : index to vector<3xindex>
      %293 = vector.broadcast %cst : f32 to vector<3xf32>
      vector.scatter %alloc_13[%c15, %c4, %c4] [%292], %68, %293 : memref<16x8x16xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      scf.yield %arg1 : memref<9x8xf16>
    }
    %79 = arith.cmpf ole, %cst, %cst : f32
    %80 = index.divs %33, %c10
    %81 = memref.load %alloc_11[%c6, %c6] : memref<9x8xf32>
    %82 = math.ctpop %c26531_i16 : i16
    %83 = arith.shrui %c164473535_i64, %c565215290_i64 : i64
    bufferization.dealloc_tensor %8 : tensor<16x8x16xf32>
    memref.assume_alignment %alloc_17, 4 : memref<9x3xi16>
    memref.store %cst_0, %alloc_15[%c1, %c5] : memref<9x8xf16>
    %84 = math.log1p %8 : tensor<16x8x16xf32>
    %85 = arith.divui %67, %c164473535_i64 : i64
    %86 = vector.shuffle %68, %68 [4, 5] : vector<3xi1>, vector<3xi1>
    %87 = vector.insertelement %59, %68[%c10 : index] : vector<3xi1>
    %88 = vector.create_mask %c11, %80, %c13 : vector<16x8x16xi1>
    %89 = arith.ori %c2075337556_i64, %c164473535_i64 : i64
    %90 = math.absi %c168234945_i32 : i32
    %alloc_26 = memref.alloc() : memref<16x8x16xf32>
    %91 = math.powf %13, %17 : tensor<16x8x16xf32>
    %92 = index.ceildivs %c4, %c10
    %alloca_27 = memref.alloca() : memref<9x16xi64>
    %93 = math.atan2 %cst, %cst_2 : f32
    %94 = arith.ori %c-16423_i16, %c-16423_i16 : i16
    %95 = index.maxs %c6, %c14
    %generated_28 = tensor.generate %c3, %c14 {
    ^bb0(%arg1: index, %arg2: index):
      %276 = arith.mulf %cst, %cst_2 : f32
      %277 = index.sub %c1, %36
      %278 = arith.subi %c-25754_i16, %c26531_i16 : i16
      %279 = arith.shrsi %c168234945_i32, %c168234945_i32 : i32
      tensor.yield %67 : i64
    } : tensor<?x?xi64>
    %96 = arith.minf %cst_0, %cst_1 : f16
    %97 = tensor.empty() : tensor<9x3xf16>
    %98 = index.mul %c15, %c5
    %true_29 = index.bool.constant true
    %99 = vector.load %56[%c1, %c1] : memref<9x3xi16>, vector<16x8x16xi16>
    %100 = tensor.empty() : tensor<8x16xi1>
    %101 = tensor.empty() : tensor<9x16xi1>
    %102 = linalg.matmul ins(%2, %100 : tensor<9x8xi1>, tensor<8x16xi1>) outs(%101 : tensor<9x16xi1>) -> tensor<9x16xi1>
    %103 = vector.broadcast %c-16131_i16 : i16 to vector<8x8xi16>
    %104 = vector.outerproduct %49, %49, %103 {kind = #vector.kind<minui>} : vector<8xi16>, vector<8xi16>
    %105 = arith.divui %true_29, %true_24 : i1
    %106 = math.fma %4, %4, %4 : tensor<9x8xf32>
    %107 = index.add %c12, %c5
    %108 = index.add %98, %c1
    %109 = math.exp %17 : tensor<16x8x16xf32>
    %110 = arith.remui %c565215290_i64, %c565215290_i64 : i64
    %111 = arith.ori %67, %c565215290_i64 : i64
    %112 = bufferization.to_tensor %alloc_8 : memref<16x8x16xi32>
    %c1484371757_i32 = arith.constant 1484371757 : i32
    %cast = tensor.cast %14 : tensor<16x8x16xi32> to tensor<?x?x?xi32>
    %113 = tensor.empty() : tensor<16x8x16xf32>
    %114 = vector.broadcast %98 : index to vector<3xindex>
    vector.scatter %alloc_6[%c8, %c0] [%114], %68, %68 : memref<9x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    memref.assume_alignment %alloc_13, 8 : memref<16x8x16xf32>
    %115 = vector.shuffle %20, %53 [1, 3, 4, 5, 7, 10, 13, 14, 15, 17] : vector<9xf32>, vector<9xf32>
    %116 = math.exp %cst_4 : f16
    %117 = bufferization.clone %41 : memref<9x8xf16> to memref<9x8xf16>
    %118 = tensor.empty() : tensor<16x8xf32>
    %119 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%118, %118 : tensor<16x8xf32>, tensor<16x8xf32>) outs(%13 : tensor<16x8x16xf32>) {
    ^bb0(%in: f32, %in_48: f32, %out: f32):
      %276 = index.divu %c14, %c11
      %277 = math.fma %5, %5, %5 : tensor<9x16xf16>
      %278 = memref.load %117[%c0, %c4] : memref<9x8xf16>
      %279 = vector.broadcast %cst_3 : f16 to vector<8xf16>
      %280 = vector.transfer_write %279, %6[%c11, %80] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<9x3xf16>
      %281 = math.absi %c-16423_i16 : i16
      %282 = memref.atomic_rmw assign %in_48, %alloc_11[%c1, %c5] : (f32, memref<9x8xf32>) -> f32
      %283 = arith.xori %c164473535_i64, %c2075337556_i64 : i64
      %284 = vector.insert %cst_0, %279 [1] : f16 into vector<8xf16>
      %extracted = tensor.extract %113[%c15, %c5, %c0] : tensor<16x8x16xf32>
      %285 = math.expm1 %6 : tensor<9x3xf16>
      %rank_49 = tensor.rank %reduced : tensor<16x8xi1>
      %286 = bufferization.clone %117 : memref<9x8xf16> to memref<9x8xf16>
      %287 = index.casts %33 : index to i32
      %288 = memref.atomic_rmw maxf %cst_0, %alloc_5[%c5, %c0] : (f16, memref<9x3xf16>) -> f16
      %289 = index.ceildivu %33, %36
      %290 = vector.broadcast %c1 : index to vector<3xindex>
      %291 = vector.broadcast %extracted : f32 to vector<3xf32>
      vector.scatter %alloc_12[%c8, %c1] [%290], %68, %291 : memref<9x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      %292 = affine.for %arg1 = 0 to 85 iter_args(%arg2 = %46) -> (index) {
        affine.yield %c11 : index
      }
      bufferization.dealloc_tensor %8 : tensor<16x8x16xf32>
      %293 = math.fpowi %9, %73 : tensor<9x16xf32>, tensor<9x16xi32>
      %294 = math.powf %cst, %in : f32
      %295 = tensor.empty() : tensor<9x9xf32>
      %296 = linalg.matmul ins(%9, %transposed : tensor<9x16xf32>, tensor<16x9xf32>) outs(%295 : tensor<9x9xf32>) -> tensor<9x9xf32>
      %297 = memref.alloca_scope  -> (f16) {
        %307 = arith.mulf %out, %extracted : f32
        %alloc_51 = memref.alloc() : memref<16x8x16xf16>
        %308 = vector.broadcast %true_24 : i1 to vector<3x3xi1>
        %309 = vector.outerproduct %68, %68, %308 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
        %alloc_52 = memref.alloc() : memref<9x8xi16>
        %310 = vector.broadcast %c-25754_i16 : i16 to vector<9x3xi16>
        %311 = vector.broadcast %true_29 : i1 to vector<9x3xi1>
        %312 = vector.broadcast %c26528801_i32 : i32 to vector<9x3xi32>
        %313 = vector.gather %alloc_52[%c2, %33] [%312], %311, %310 : memref<9x8xi16>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi16> into vector<9x3xi16>
        %314 = index.divs %108, %c0
        %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<9x3xi64> into tensor<9x3x1xi64>
        %alloca_53 = memref.alloca() : memref<9x8xi64>
        %cast_54 = tensor.cast %16 : tensor<16x8x16xf32> to tensor<?x?x?xf32>
        %315 = math.sqrt %18 : tensor<16x9xf32>
        %316 = arith.shrsi %c168234945_i32, %c168234945_i32 : i32
        %collapsed = tensor.collapse_shape %73 [[0, 1]] : tensor<9x16xi32> into tensor<144xi32>
        %317 = memref.atomic_rmw assign %70, %alloc_5[%c2, %c2] : (f16, memref<9x3xf16>) -> f16
        %318 = math.absi %1 : tensor<16x8x16xi1>
        %319 = bufferization.clone %117 : memref<9x8xf16> to memref<9x8xf16>
        %320 = math.exp %17 : tensor<16x8x16xf32>
        %321 = math.roundeven %4 : tensor<9x8xf32>
        %alloc_55 = memref.alloc() : memref<16x8x16xf16>
        %322 = vector.create_mask %c9, %92, %c14 : vector<16x8x16xi1>
        %expanded_56 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
        %323 = vector.broadcast %in_48 : f32 to vector<16x8xf32>
        %324 = vector.transfer_write %323, %13[%c15, %c15, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x8xf32>, tensor<16x8x16xf32>
        %325 = arith.mulf %in, %extracted : f32
        %326 = arith.remf %cst_3, %cst_3 : f16
        %327 = math.expm1 %expanded_56 : tensor<9x16x1xf32>
        %expanded_57 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<9x8xi32> into tensor<9x8x1xi32>
        %328 = arith.xori %c164473535_i64, %c164473535_i64 : i64
        %329 = arith.mulf %out, %in_48 : f32
        %alloc_58 = memref.alloc() : memref<9x3xi1>
        %330 = bufferization.clone %alloc_12 : memref<9x3xf32> to memref<9x3xf32>
        %331 = math.log %4 : tensor<9x8xf32>
        memref.store %cst_2, %330[%c6, %c1] : memref<9x3xf32>
        %332 = index.maxs %37, %c8
        %333 = vector.broadcast %extracted : f32 to vector<9x16xf32>
        %334 = vector.broadcast %true_24 : i1 to vector<9x16xi1>
        %335 = vector.broadcast %c26528801_i32 : i32 to vector<9x16xi32>
        %336 = vector.gather %alloc_11[%46, %c4] [%335], %334, %333 : memref<9x8xf32>, vector<9x16xi32>, vector<9x16xi1>, vector<9x16xf32> into vector<9x16xf32>
        memref.alloca_scope.return %cst_1 : f16
      }
      %298 = math.exp2 %297 : f16
      %299 = index.sizeof
      %300 = arith.maxf %cst_3, %cst_3 : f16
      %301 = index.floordivs %c10, %c10
      %302 = vector.flat_transpose %279 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
      %true_50 = index.bool.constant true
      %303 = vector.bitcast %88 : vector<16x8x16xi1> to vector<16x8x16xi1>
      %304 = memref.atomic_rmw mins %c164473535_i64, %alloc_20[%c5] : (i64, memref<16xi64>) -> i64
      %305 = arith.shrui %true_29, %true_24 : i1
      %306 = math.log1p %7 : tensor<9x16xf32>
      linalg.yield %extracted : f32
    } -> tensor<16x8x16xf32>
    %120 = vector.transpose %20, [0] : vector<9xf32> to vector<9xf32>
    vector.print %20 : vector<9xf32>
    %121 = memref.load %alloc_19[%c7, %c0] : memref<9x3xi16>
    %122 = arith.divf %cst_3, %cst_4 : f16
    %123 = affine.load %alloc[%c11, %c7] : memref<9x16xf32>
    %124 = math.roundeven %cst : f32
    %125 = tensor.empty() : tensor<16x9xf32>
    %mapped = linalg.map ins(%18, %transposed, %18 : tensor<16x9xf32>, tensor<16x9xf32>, tensor<16x9xf32>) outs(%125 : tensor<16x9xf32>)
      (%in: f32, %in_48: f32, %in_49: f32) {
        %276 = vector.broadcast %c-16131_i16 : i16 to vector<16x8x16xi16>
        %splat = tensor.splat %c26531_i16 : tensor<9x16xi16>
        %277 = arith.divui %c-16423_i16, %c-16423_i16 : i16
        %278 = math.round %18 : tensor<16x9xf32>
        %279 = math.powf %in, %in_48 : f32
        %280 = index.maxu %c7, %c10
        %281 = index.castu %33 : index to i32
        %282 = math.log %13 : tensor<16x8x16xf32>
        %283 = arith.shli %c168234945_i32, %c26528801_i32 : i32
        %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
        %284 = arith.divf %in, %in_48 : f32
        %285 = vector.broadcast %59 : i1 to vector<9x16xi1>
        %286 = math.round %6 : tensor<9x3xf16>
        %287 = bufferization.clone %alloc_13 : memref<16x8x16xf32> to memref<16x8x16xf32>
        %288 = index.sub %46, %95
        %289 = index.ceildivu %37, %98
        %290 = vector.broadcast %70 : f16 to vector<9x3xf16>
        %false_50 = index.bool.constant false
        %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<16x8x16xi32>) {
        ^bb0(%out: i32):
          %false_53 = arith.constant false
          %303 = vector.transfer_read %2[%c6, %c3], %false_53 : tensor<9x8xi1>, vector<i1>
          %304 = index.add %c8, %95
          %305 = arith.shli %false_53, %true_29 : i1
          %306 = arith.addi %c-16131_i16, %c-16423_i16 : i16
          %307 = vector.broadcast %out : i32 to vector<9x8xi32>
          %308 = math.fma %13, %8, %8 : tensor<16x8x16xf32>
          %309 = vector.extract %77[4] : vector<9x8xf32>
          %310 = math.floor %8 : tensor<16x8x16xf32>
          %311 = math.fma %cst_1, %cst_3, %cst_0 : f16
          %312 = vector.broadcast %c-16131_i16 : i16 to vector<9x8xi16>
          %313 = math.cttz %101 : tensor<9x16xi1>
          %314 = math.log2 %7 : tensor<9x16xf32>
          %315 = vector.broadcast %c168234945_i32 : i32 to vector<16x8x16xi32>
          %316 = vector.gather %alloc_6[%c5, %c12] [%315], %88, %88 : memref<9x3xi1>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi1> into vector<16x8x16xi1>
          %317 = index.mul %92, %289
          %false_54 = index.bool.constant false
          %318 = math.fma %8, %16, %113 : tensor<16x8x16xf32>
          %319 = index.sizeof
          %320 = index.ceildivs %36, %304
          %321 = math.log2 %transposed : tensor<16x9xf32>
          %322 = math.tanh %8 : tensor<16x8x16xf32>
          %323 = arith.shli %67, %67 : i64
          %324 = math.log1p %expanded : tensor<9x16x1xf32>
          %325 = vector.broadcast %319 : index to vector<16xindex>
          %326 = vector.broadcast %true : i1 to vector<16xi1>
          %327 = vector.broadcast %cst_4 : f16 to vector<16xf16>
          vector.scatter %alloc_9[%c6, %c0] [%325], %326, %327 : memref<9x3xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
          %328 = math.absf %11 : tensor<9x16xf32>
          %329 = math.atan2 %4, %4 : tensor<9x8xf32>
          %330 = math.fma %cst_2, %in_49, %in : f32
          %331 = arith.ori %67, %67 : i64
          %332 = arith.addf %in, %in_49 : f32
          %333 = index.maxs %c4, %288
          %334 = vector.broadcast %true_29 : i1 to vector<9x8xi1>
          %335 = vector.gather %splat[%46, %c0] [%307], %334, %312 : tensor<9x16xi16>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi16> into vector<9x8xi16>
          %336 = math.ctpop %101 : tensor<9x16xi1>
          %337 = math.cos %113 : tensor<16x8x16xf32>
          linalg.yield %c168234945_i32 : i32
        } -> tensor<16x8x16xi32>
        %292 = vector.create_mask %c8, %c1 : vector<9x8xi1>
        %293 = math.cos %6 : tensor<9x3xf16>
        %294 = arith.maxsi %c26528801_i32, %c168234945_i32 : i32
        %295 = index.casts %true_24 : i1 to index
        memref.copy %alloc_15, %41 : memref<9x8xf16> to memref<9x8xf16>
        %296 = math.atan %9 : tensor<9x16xf32>
        %297 = bufferization.to_tensor %41 : memref<9x8xf16>
        %298 = index.castu %c-16423_i16 : i16 to index
        %299 = arith.minf %cst_0, %cst_0 : f16
        %300 = arith.divui %c2075337556_i64, %67 : i64
        %301 = arith.shrui %c-16131_i16, %c-25754_i16 : i16
        %expanded_51 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
        %302 = index.maxs %289, %280
        %cst_52 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_52 : f32
      }
    %126 = arith.andi %c26528801_i32, %c168234945_i32 : i32
    %127 = arith.xori %c168234945_i32, %c26528801_i32 : i32
    %128 = index.maxs %37, %c4
    %129 = memref.realloc %alloc_20 : memref<16xi64> to memref<16xi64>
    %130 = math.atan2 %cst, %123 : f32
    %131 = vector.insertelement %59, %68[%c5 : index] : vector<3xi1>
    %132 = index.add %c1, %c11
    %133 = vector.transpose %39, [1, 0] : vector<9x8xf32> to vector<8x9xf32>
    memref.assume_alignment %29, 4 : memref<16x8x16xi1>
    %134 = vector.broadcast %cst_4 : f16 to vector<9x8xf16>
    %135 = vector.broadcast %59 : i1 to vector<9x8xi1>
    %136 = vector.broadcast %c168234945_i32 : i32 to vector<9x8xi32>
    %137 = vector.gather %alloc_16[%107, %36, %38] [%136], %135, %134 : memref<16x8x16xf16>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xf16> into vector<9x8xf16>
    %138 = vector.broadcast %true_24 : i1 to vector<3x3xi1>
    %139 = vector.outerproduct %68, %68, %138 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
    %false = index.bool.constant false
    %140 = vector.broadcast %c6 : index to vector<9xindex>
    %141 = vector.broadcast %true_29 : i1 to vector<9xi1>
    %142 = vector.broadcast %cst_1 : f16 to vector<9xf16>
    vector.scatter %41[%c7, %c0] [%140], %141, %142 : memref<9x8xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
    %143 = index.castu %c10 : index to i32
    %144 = math.powf %9, %11 : tensor<9x16xf32>
    %145 = math.round %transposed : tensor<16x9xf32>
    %146 = vector.create_mask %80, %38, %92 : vector<16x8x16xi1>
    %147 = index.sub %107, %c14
    %148 = math.cttz %12 : tensor<9x3xi64>
    %149 = scf.index_switch %c5 -> i32 
    case 1 {
      %276 = arith.shrui %c-25754_i16, %c-16423_i16 : i16
      %277 = affine.load %alloc_9[%c9, %c1] : memref<9x3xf16>
      %278 = tensor.empty() : tensor<9x8xi32>
      %279 = math.tanh %113 : tensor<16x8x16xf32>
      %280 = index.ceildivu %c5, %38
      %281 = math.fma %9, %9, %7 : tensor<9x16xf32>
      %282 = scf.while (%arg1 = %77) : (vector<9x8xf32>) -> vector<9x8xf32> {
        %290 = math.atan2 %8, %17 : tensor<16x8x16xf32>
        %splat = tensor.splat %true_29 : tensor<9x16xi1>
        %291 = math.atan2 %17, %113 : tensor<16x8x16xf32>
        %292 = arith.andi %c26531_i16, %c-25754_i16 : i16
        %293 = vector.shuffle %137, %137 [1, 3, 4, 5, 8, 9, 14, 15, 17] : vector<9x8xf16>, vector<9x8xf16>
        %294 = index.maxs %c13, %c2
        %295 = math.expm1 %5 : tensor<9x16xf16>
        %296 = arith.maxui %59, %59 : i1
        scf.condition(%true_24) %77 : vector<9x8xf32>
      } do {
      ^bb0(%arg1: vector<9x8xf32>):
        %cst_49 = arith.constant 1.000000e+00 : f16
        %cst_50 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %5[%c5, %c15], %cst_50 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<9x16xf16>, vector<8xf16>
        %291 = math.log10 %5 : tensor<9x16xf16>
        %292 = index.sizeof
        %alloc_51 = memref.alloc() : memref<9x8xi64>
        %293 = index.add %280, %c4
        %294 = arith.maxf %70, %cst_4 : f16
        %295 = vector.broadcast %c168234945_i32 : i32 to vector<9x8xi32>
        %296 = vector.transfer_write %295, %14[%293, %c4, %95] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<9x8xi32>, tensor<16x8x16xi32>
        %297 = math.expm1 %5 : tensor<9x16xf16>
        %298 = math.log1p %8 : tensor<16x8x16xf32>
        %299 = math.cos %cst_2 : f32
        %true_52 = index.bool.constant true
        %300 = arith.divui %67, %67 : i64
        %301 = vector.multi_reduction <minf>, %77, %71 [1] : vector<9x8xf32> to vector<9xf32>
        %302 = math.absi %101 : tensor<9x16xi1>
        %303 = math.exp2 %70 : f16
        %304 = vector.broadcast %cst_2 : f32 to vector<9x16xf32>
        scf.yield %39 : vector<9x8xf32>
      }
      %expanded = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
      %283 = math.powf %expanded, %expanded : tensor<16x8x16x1xf32>
      %284 = bufferization.clone %alloc_5 : memref<9x3xf16> to memref<9x3xf16>
      %285 = vector.create_mask %92, %c1 : vector<9x8xi1>
      %286 = vector.load %117[%c5, %c2] : memref<9x8xf16>, vector<9x8xf16>
      %287 = math.ceil %cst_4 : f16
      %288 = vector.reduction <mul>, %20 : vector<9xf32> into f32
      %289 = vector.load %alloc_15[%c8, %c0] : memref<9x8xf16>, vector<9x8xf16>
      %false_48 = index.bool.constant false
      scf.yield %c168234945_i32 : i32
    }
    case 2 {
      %276 = math.cos %cst_2 : f32
      %277 = math.exp2 %123 : f32
      %278 = arith.ori %c-16423_i16, %c-25754_i16 : i16
      %generated_48 = tensor.generate %c10 {
      ^bb0(%arg1: index, %arg2: index):
        %289 = index.divs %46, %c4
        %290 = bufferization.clone %alloc_16 : memref<16x8x16xf16> to memref<16x8x16xf16>
        %291 = arith.shli %true_29, %true : i1
        %292 = affine.load %alloc_8[%c10, %c12, %c8] : memref<16x8x16xi32>
        tensor.yield %67 : i64
      } : tensor<?x3xi64>
      %c1_i64 = arith.constant 1 : i64
      %279 = vector.transfer_read %21[%c9], %c1_i64 : tensor<16xi64>, vector<i64>
      %280 = math.expm1 %cst_2 : f32
      %281 = vector.load %alloc_7[%c3, %c3] : memref<9x8xi1>, vector<16x8x16xi1>
      %282 = math.expm1 %5 : tensor<9x16xf16>
      %283 = arith.andi %c26531_i16, %c-16131_i16 : i16
      %284 = math.expm1 %cst_4 : f16
      %285 = vector.broadcast %c-16131_i16 : i16 to vector<9xi16>
      vector.transfer_write %285, %alloc_18[%c5, %37] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi16>, memref<9x16xi16>
      %286 = arith.remf %cst_4, %cst_1 : f16
      memref.store %cst_4, %41[%c5, %c7] : memref<9x8xf16>
      memref.store %c-16131_i16, %alloc_17[%c6, %c2] : memref<9x3xi16>
      %287 = math.absi %22 : tensor<i64>
      %288 = math.fma %13, %13, %16 : tensor<16x8x16xf32>
      scf.yield %c26528801_i32 : i32
    }
    case 3 {
      %276 = vector.broadcast %67 : i64 to vector<9xi64>
      %277 = vector.transfer_write %276, %12[%107, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, tensor<9x3xi64>
      %278 = arith.remsi %c26528801_i32, %c26528801_i32 : i32
      %279 = arith.shrui %c168234945_i32, %c168234945_i32 : i32
      %280 = arith.maxui %c168234945_i32, %c168234945_i32 : i32
      %281 = memref.alloca_scope  -> (memref<9x3xf32>) {
        %292 = arith.maxf %123, %123 : f32
        %293 = math.fpowi %17, %3 : tensor<16x8x16xf32>, tensor<16x8x16xi32>
        %294 = index.casts %c0 : index to i32
        %295 = math.round %13 : tensor<16x8x16xf32>
        %296 = vector.reduction <mul>, %49 : vector<8xi16> into i16
        %297 = vector.multi_reduction <minf>, %53, %53 [] : vector<9xf32> to vector<9xf32>
        %298 = math.round %6 : tensor<9x3xf16>
        %299 = math.tan %113 : tensor<16x8x16xf32>
        %300 = tensor.empty() : tensor<16x8x16xf16>
        %301 = index.maxs %c3, %c13
        %302 = index.casts %true_24 : i1 to index
        %303 = vector.broadcast %true : i1 to vector<8x16xi1>
        %dest, %accumulated_value = vector.scan <or>, %88, %303 {inclusive = true, reduction_dim = 0 : i64} : vector<16x8x16xi1>, vector<8x16xi1>
        %alloca_49 = memref.alloca() : memref<9x3xi1>
        %304 = math.round %cst_0 : f16
        %305 = math.absi %14 : tensor<16x8x16xi32>
        %306 = memref.atomic_rmw minf %70, %alloc_14[%c7, %c0] : (f16, memref<9x3xf16>) -> f16
        %307 = vector.splat %123 : vector<16x8x16xf32>
        %308 = arith.shrsi %false, %true_24 : i1
        bufferization.dealloc_tensor %2 : tensor<9x8xi1>
        %309 = arith.negf %123 : f32
        %310 = index.maxu %c6, %301
        %311 = bufferization.clone %alloc_12 : memref<9x3xf32> to memref<9x3xf32>
        %312 = affine.load %29[%c13, %c15, %c0] : memref<16x8x16xi1>
        %313 = memref.realloc %alloc_20 : memref<16xi64> to memref<3xi64>
        %314 = arith.shli %true_24, %true_24 : i1
        %315 = math.cos %11 : tensor<9x16xf32>
        %316 = arith.mulf %cst_3, %cst_0 : f16
        %317 = vector.broadcast %cst : f32 to vector<9x8xf32>
        %318 = vector.fma %317, %317, %77 : vector<9x8xf32>
        %319 = vector.insertelement %false, %68[%c5 : index] : vector<3xi1>
        %320 = vector.create_mask %c10, %c13 : vector<9x8xi1>
        %321 = arith.andi %c26528801_i32, %c26528801_i32 : i32
        %322 = math.exp2 %9 : tensor<9x16xf32>
        memref.alloca_scope.return %311 : memref<9x3xf32>
      }
      %282 = index.castu %c11 : index to i32
      %283 = arith.minui %67, %c164473535_i64 : i64
      %284 = math.ctlz %true_24 : i1
      %285 = math.ceil %113 : tensor<16x8x16xf32>
      %286 = memref.atomic_rmw mulf %cst, %281[%c1, %c2] : (f32, memref<9x3xf32>) -> f32
      %287 = arith.andi %c2075337556_i64, %67 : i64
      %288 = math.atan2 %123, %cst : f32
      %289 = math.fpowi %cst_0, %c26528801_i32 : f16, i32
      %290 = arith.andi %c168234945_i32, %c168234945_i32 : i32
      %291 = index.ceildivs %46, %107
      %cast_48 = tensor.cast %4 : tensor<9x8xf32> to tensor<?x?xf32>
      scf.yield %c168234945_i32 : i32
    }
    default {
      %276 = math.copysign %8, %13 : tensor<16x8x16xf32>
      %277 = index.floordivs %147, %c14
      %alloc_48 = memref.alloc() : memref<8x3xf32>
      %278 = tensor.empty() : tensor<9x3xf32>
      %279 = linalg.matmul ins(%4, %alloc_48 : tensor<9x8xf32>, memref<8x3xf32>) outs(%278 : tensor<9x3xf32>) -> tensor<9x3xf32>
      %280 = arith.ceildivsi %c565215290_i64, %c565215290_i64 : i64
      %281 = bufferization.clone %alloc_20 : memref<16xi64> to memref<16xi64>
      %282 = tensor.empty() : tensor<9x16xf32>
      %283 = arith.cmpf ogt, %123, %cst_2 : f32
      %alloca_49 = memref.alloca() : memref<9x8xi32>
      %284 = bufferization.clone %alloc_12 : memref<9x3xf32> to memref<9x3xf32>
      %285 = vector.broadcast %cst_0 : f16 to vector<16x8x16xf16>
      %generated_50 = tensor.generate %c12 {
      ^bb0(%arg1: index, %arg2: index):
        %291 = arith.cmpf ueq, %cst_4, %cst_1 : f16
        %292 = memref.load %alloc_5[%c7, %c0] : memref<9x3xf16>
        %alloca_53 = memref.alloca() : memref<9x16xi32>
        %293 = math.absi %3 : tensor<16x8x16xi32>
        tensor.yield %c-25754_i16 : i16
      } : tensor<?x8xi16>
      %286 = arith.remsi %c2075337556_i64, %67 : i64
      %287 = arith.negf %cst_0 : f16
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %288 = vector.transfer_read %alloc_13[%98, %108, %c12], %cst_52 : memref<16x8x16xf32>, vector<f32>
      %289 = memref.atomic_rmw maxf %123, %alloc_12[%c8, %c0] : (f32, memref<9x3xf32>) -> f32
      %290 = math.ctpop %10 : tensor<9x3xi1>
      scf.yield %c168234945_i32 : i32
    }
    %150 = arith.mulf %cst_3, %cst_3 : f16
    %151 = tensor.empty() : tensor<16x8x16xi1>
    %mapped_30 = linalg.map ins(%15, %1, %15 : tensor<16x8x16xi1>, tensor<16x8x16xi1>, tensor<16x8x16xi1>) outs(%151 : tensor<16x8x16xi1>)
      (%in: i1, %in_48: i1, %in_49: i1) {
        %276 = memref.atomic_rmw maxf %cst_4, %alloc_16[%c3, %c3, %c0] : (f16, memref<16x8x16xf16>) -> f16
        %277 = math.fpowi %70, %c26528801_i32 : f16, i32
        %278 = arith.subi %false, %in : i1
        %279 = bufferization.clone %alloc_17 : memref<9x3xi16> to memref<9x3xi16>
        %280 = vector.broadcast %123 : f32 to vector<9x16xf32>
        %281 = vector.fma %280, %280, %280 : vector<9x16xf32>
        %alloc_50 = memref.alloc() : memref<16x8x16xf16>
        memref.copy %alloc_16, %alloc_50 : memref<16x8x16xf16> to memref<16x8x16xf16>
        %282 = index.divu %c5, %95
        %283 = vector.broadcast %cst : f32 to vector<3xf32>
        %284 = vector.maskedload %alloc_11[%c8, %c3], %68, %283 : memref<9x8xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %285 = arith.cmpf one, %70, %cst_1 : f16
        %286 = math.atan2 %125, %18 : tensor<16x9xf32>
        scf.if %59 {
          %308 = vector.broadcast %123 : f32 to vector<f32>
          %309 = vector.transfer_write %308, %9[%33, %c6] : vector<f32>, tensor<9x16xf32>
          %310 = vector.load %41[%c3, %c2] : memref<9x8xf16>, vector<9x3xf16>
          %311 = arith.maxf %cst_2, %123 : f32
          %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<9x8xi1> into tensor<9x8x1xi1>
          %312 = vector.broadcast %cst_1 : f16 to vector<8xf16>
          %dest, %accumulated_value = vector.scan <minf>, %134, %312 {inclusive = true, reduction_dim = 0 : i64} : vector<9x8xf16>, vector<8xf16>
          %313 = index.maxs %37, %c3
          %alloc_57 = memref.alloc() : memref<9x16xi32>
          memref.tensor_store %73, %alloc_57 : memref<9x16xi32>
          %314 = arith.minf %70, %cst_4 : f16
        }
        %cst_51 = arith.constant 1.000000e+00 : f16
        %287 = vector.transfer_read %6[%c14, %c15], %cst_51 : tensor<9x3xf16>, vector<3xf16>
        %288 = arith.negf %cst_3 : f16
        %false_52 = index.bool.constant false
        %289 = arith.divui %true, %true_24 : i1
        %290 = index.maxs %c5, %95
        %291 = bufferization.to_memref %13 : memref<16x8x16xf32>
        %cast_53 = tensor.cast %10 : tensor<9x3xi1> to tensor<?x?xi1>
        %292 = math.cos %113 : tensor<16x8x16xf32>
        %293 = vector.bitcast %134 : vector<9x8xf16> to vector<9x8xi16>
        %294 = vector.broadcast %123 : f32 to vector<9x9xf32>
        %295 = vector.outerproduct %71, %20, %294 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
        %296 = arith.divf %123, %cst : f32
        %true_54 = index.bool.constant true
        %297 = index.casts %c0 : index to i32
        %splat = tensor.splat %true : tensor<9x8xi1>
        %298 = math.log1p %transposed : tensor<16x9xf32>
        %299 = vector.broadcast %cst_2 : f32 to vector<16x8x16xf32>
        %300 = vector.broadcast %c168234945_i32 : i32 to vector<16x8x16xi32>
        %301 = vector.gather %alloc_12[%c4, %c2] [%300], %88, %299 : memref<9x3xf32>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xf32> into vector<16x8x16xf32>
        %302 = vector.broadcast %282 : index to vector<16xindex>
        %303 = vector.broadcast %false_52 : i1 to vector<16xi1>
        %304 = vector.broadcast %c-25754_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_18[%c8, %c9] [%302], %303, %304 : memref<9x16xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %true_55 = index.bool.constant true
        %305 = bufferization.clone %alloc_14 : memref<9x3xf16> to memref<9x3xf16>
        %306 = tensor.empty(%107, %c10) : tensor<?x?xf32>
        %307 = vector.transpose %135, [0, 1] : vector<9x8xi1> to vector<9x8xi1>
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    %false_31 = index.bool.constant false
    %152 = scf.while (%arg1 = %c-16131_i16) : (i16) -> i16 {
      %276 = index.floordivs %c6, %92
      %277 = vector.broadcast %123 : f32 to vector<9x9xf32>
      %278 = vector.outerproduct %53, %71, %277 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
      %alloc_48 = memref.alloc() : memref<9x16xf32>
      %alloc_49 = memref.alloc() : memref<3x3xf16>
      %279 = tensor.empty() : tensor<9x3xf16>
      %280 = linalg.matmul ins(%6, %alloc_49 : tensor<9x3xf16>, memref<3x3xf16>) outs(%279 : tensor<9x3xf16>) -> tensor<9x3xf16>
      %281 = arith.shli %59, %false_31 : i1
      %282 = index.maxs %c0, %107
      %283 = index.add %c1, %37
      %284 = vector.broadcast %c13 : index to vector<8xindex>
      %285 = vector.broadcast %true_29 : i1 to vector<8xi1>
      vector.scatter %alloc_10[%c0, %c7, %c15] [%284], %285, %285 : memref<16x8x16xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
      scf.condition(%true) %c26531_i16 : i16
    } do {
    ^bb0(%arg1: i16):
      memref.tensor_store %10, %alloc_6 : memref<9x3xi1>
      %276 = math.absf %cst_2 : f32
      %277 = scf.while (%arg2 = %alloc_17) : (memref<9x3xi16>) -> memref<9x3xi16> {
        %290 = math.exp2 %8 : tensor<16x8x16xf32>
        %291 = tensor.empty() : tensor<16x3xf16>
        %292 = tensor.empty() : tensor<9x3xf16>
        %293 = linalg.matmul ins(%5, %291 : tensor<9x16xf16>, tensor<16x3xf16>) outs(%292 : tensor<9x3xf16>) -> tensor<9x3xf16>
        %294 = arith.negf %cst : f32
        %295 = index.maxu %108, %c2
        %296 = math.expm1 %5 : tensor<9x16xf16>
        %297 = math.copysign %125, %transposed : tensor<16x9xf32>
        %298 = arith.xori %false_31, %true : i1
        %299 = math.expm1 %292 : tensor<9x3xf16>
        scf.condition(%true) %alloc_19 : memref<9x3xi16>
      } do {
      ^bb0(%arg2: memref<9x3xi16>):
        %290 = math.cos %11 : tensor<9x16xf32>
        %291 = arith.andi %c2075337556_i64, %67 : i64
        %292 = math.tanh %7 : tensor<9x16xf32>
        %alloc_49 = memref.alloc() : memref<9x3xf32>
        %293 = arith.divui %false, %true_29 : i1
        %294 = arith.mulf %cst_3, %cst_3 : f16
        %295 = arith.negf %cst : f32
        %296 = tensor.empty() : tensor<16x8x16xi16>
        %297 = vector.broadcast %c-16131_i16 : i16 to vector<9x8xi16>
        %298 = vector.gather %296[%108, %80, %37] [%136], %135, %297 : tensor<16x8x16xi16>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi16> into vector<9x8xi16>
        %299 = vector.multi_reduction <minsi>, %297, %298 [] : vector<9x8xi16> to vector<9x8xi16>
        memref.store %c-16423_i16, %56[%c1, %c2] : memref<9x3xi16>
        %300 = arith.ceildivsi %arg1, %c-25754_i16 : i16
        %301 = math.ctlz %0 : tensor<9x8xi32>
        memref.tensor_store %1, %alloc_10 : memref<16x8x16xi1>
        %302 = math.absf %cst_1 : f16
        %303 = math.atan2 %13, %13 : tensor<16x8x16xf32>
        %304 = memref.load %alloc_10[%c9, %c2, %c6] : memref<16x8x16xi1>
        scf.yield %arg2 : memref<9x3xi16>
      }
      %278 = vector.broadcast %c26531_i16 : i16 to vector<16x8x16xi16>
      %279 = math.rsqrt %9 : tensor<9x16xf32>
      %280 = index.casts %c26528801_i32 : i32 to index
      %281 = math.log1p %4 : tensor<9x8xf32>
      %282 = index.divu %33, %c3
      %283 = bufferization.to_tensor %alloc_11 : memref<9x8xf32>
      %284 = vector.broadcast %cst_0 : f16 to vector<9x16xf16>
      %285 = index.maxs %c8, %280
      %true_48 = index.bool.constant true
      %286 = vector.create_mask %c7, %c8, %95 : vector<16x8x16xi1>
      %287 = math.log10 %cst : f32
      memref.assume_alignment %alloc_12, 16 : memref<9x3xf32>
      %288 = vector.broadcast %cst_0 : f16 to vector<9xf16>
      %289 = vector.multi_reduction <add>, %284, %288 [1] : vector<9x16xf16> to vector<9xf16>
      scf.yield %c-16131_i16 : i16
    }
    %153 = arith.remf %cst_3, %cst_0 : f16
    %154 = vector.broadcast %c11 : index to vector<16xindex>
    %155 = vector.broadcast %true_24 : i1 to vector<16xi1>
    %156 = vector.broadcast %70 : f16 to vector<16xf16>
    vector.scatter %41[%c7, %c5] [%154], %155, %156 : memref<9x8xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
    %157 = math.tan %6 : tensor<9x3xf16>
    %158 = index.maxu %37, %c0
    %159 = vector.broadcast %c10 : index to vector<3xindex>
    %160 = vector.broadcast %cst_1 : f16 to vector<3xf16>
    vector.scatter %alloc_5[%c2, %c2] [%159], %68, %160 : memref<9x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %true_32 = index.bool.constant true
    %161 = arith.shli %true_29, %false_31 : i1
    %162 = math.atan2 %113, %17 : tensor<16x8x16xf32>
    %163 = tensor.empty() : tensor<9x9xf32>
    %164 = linalg.matmul ins(%11, %transposed : tensor<9x16xf32>, tensor<16x9xf32>) outs(%163 : tensor<9x9xf32>) -> tensor<9x9xf32>
    %165 = math.powf %6, %6 : tensor<9x3xf16>
    %166 = memref.atomic_rmw minu %c-25754_i16, %alloc_18[%c6, %c0] : (i16, memref<9x16xi16>) -> i16
    %167 = scf.while (%arg1 = %88) : (vector<16x8x16xi1>) -> vector<16x8x16xi1> {
      %276 = math.powf %13, %113 : tensor<16x8x16xf32>
      %277 = math.floor %cst_1 : f16
      %278 = math.cttz %c26528801_i32 : i32
      %279 = bufferization.clone %alloc_17 : memref<9x3xi16> to memref<9x3xi16>
      %280 = math.ceil %7 : tensor<9x16xf32>
      %281 = index.casts %67 : i64 to index
      %282 = math.roundeven %18 : tensor<16x9xf32>
      %283 = arith.xori %59, %false : i1
      scf.condition(%true_24) %88 : vector<16x8x16xi1>
    } do {
    ^bb0(%arg1: vector<16x8x16xi1>):
      %276 = math.cttz %0 : tensor<9x8xi32>
      %277 = index.ceildivs %c10, %107
      %278 = math.log10 %70 : f16
      %279 = math.absi %73 : tensor<9x16xi32>
      scf.if %true_24 {
        %290 = math.ctlz %112 : tensor<16x8x16xi32>
        %291 = arith.mulf %cst, %cst : f32
        %292 = math.expm1 %4 : tensor<9x8xf32>
        bufferization.dealloc_tensor %2 : tensor<9x8xi1>
        %293 = vector.broadcast %c10 : index to vector<3xindex>
        %294 = vector.broadcast %cst_3 : f16 to vector<3xf16>
        vector.scatter %alloc_9[%c2, %c0] [%293], %68, %294 : memref<9x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %295 = vector.broadcast %cst : f32 to vector<8x8xf32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %40, %40, %295 : vector<9x8xf32>, vector<9x8xf32> into vector<8x8xf32>
        %297 = index.maxu %147, %46
        %298 = math.tanh %125 : tensor<16x9xf32>
      } else {
        %290 = index.ceildivs %c7, %c5
        %291 = vector.load %alloc_19[%c6, %c1] : memref<9x3xi16>, vector<9x3xi16>
        %292 = math.atan %16 : tensor<16x8x16xf32>
        %293 = arith.addf %cst_3, %cst_1 : f16
        %294 = vector.broadcast %false_31 : i1 to vector<16x16xi1>
        %dest, %accumulated_value = vector.scan <minsi>, %146, %294 {inclusive = false, reduction_dim = 1 : i64} : vector<16x8x16xi1>, vector<16x16xi1>
        bufferization.dealloc_tensor %transposed : tensor<16x9xf32>
        %295 = math.log1p %5 : tensor<9x16xf16>
        %296 = math.absi %c565215290_i64 : i64
      }
      %true_48 = index.bool.constant true
      %280 = arith.maxui %c164473535_i64, %c164473535_i64 : i64
      %281 = arith.remui %67, %c565215290_i64 : i64
      %282 = vector.broadcast %cst : f32 to vector<16xf32>
      vector.transfer_write %282, %alloc_11[%c6, %38] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, memref<9x8xf32>
      %alloc_49 = memref.alloc() : memref<8x3xf32>
      %283 = tensor.empty() : tensor<9x3xf32>
      %284 = linalg.matmul ins(%4, %alloc_49 : tensor<9x8xf32>, memref<8x3xf32>) outs(%283 : tensor<9x3xf32>) -> tensor<9x3xf32>
      %285 = arith.mulf %cst_0, %cst_1 : f16
      %286 = math.roundeven %transposed : tensor<16x9xf32>
      %287 = arith.ori %c565215290_i64, %c565215290_i64 : i64
      %288 = memref.atomic_rmw mins %c26531_i16, %alloc_18[%c8, %c5] : (i16, memref<9x16xi16>) -> i16
      %289 = math.fma %cst_1, %cst_4, %cst_4 : f16
      %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
      scf.yield %88 : vector<16x8x16xi1>
    }
    %168 = arith.shli %67, %c565215290_i64 : i64
    %169 = bufferization.clone %56 : memref<9x3xi16> to memref<9x3xi16>
    %170 = tensor.empty() : tensor<9x9xf32>
    %171 = linalg.matmul ins(%11, %18 : tensor<9x16xf32>, tensor<16x9xf32>) outs(%170 : tensor<9x9xf32>) -> tensor<9x9xf32>
    %172 = math.exp2 %cst_3 : f16
    %173 = vector.create_mask %92, %33 : vector<9x8xi1>
    %174 = vector.broadcast %67 : i64 to vector<i64>
    %175 = vector.transfer_write %174, %21[%c15] : vector<i64>, tensor<16xi64>
    %176 = vector.broadcast %158 : index to vector<8xindex>
    %177 = vector.broadcast %true_32 : i1 to vector<8xi1>
    vector.scatter %alloc_17[%c0, %c0] [%176], %177, %49 : memref<9x3xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
    %178 = math.cos %9 : tensor<9x16xf32>
    %179 = memref.load %alloc_13[%c15, %c5, %c5] : memref<16x8x16xf32>
    %180 = math.expm1 %5 : tensor<9x16xf16>
    %alloca_33 = memref.alloca() : memref<9x8xi1>
    %181 = bufferization.to_tensor %alloc_18 : memref<9x16xi16>
    %182 = arith.minui %true_29, %true_29 : i1
    %183 = index.casts %true_24 : i1 to index
    %184 = scf.if %true_32 -> (memref<16x8x16xi32>) {
      %276 = math.cos %cst_1 : f16
      %277 = vector.broadcast %c11 : index to vector<8xindex>
      %278 = vector.broadcast %true_32 : i1 to vector<8xi1>
      %279 = vector.broadcast %70 : f16 to vector<8xf16>
      vector.scatter %alloc_5[%c5, %c1] [%277], %278, %279 : memref<9x3xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
      %280 = vector.transpose %39, [0, 1] : vector<9x8xf32> to vector<9x8xf32>
      %281 = memref.alloca_scope  -> (memref<16x8x16xi64>) {
        %286 = arith.divf %cst, %cst_2 : f32
        %287 = arith.remsi %c2075337556_i64, %67 : i64
        %extracted = tensor.extract %cast[%c0, %c0, %c0] : tensor<?x?x?xi32>
        %288 = index.maxu %c15, %183
        %289 = index.add %128, %c10
        %290 = math.fma %cst_2, %cst, %123 : f32
        %291 = vector.broadcast %c-16423_i16 : i16 to vector<8x8xi16>
        %292 = vector.outerproduct %49, %49, %291 {kind = #vector.kind<mul>} : vector<8xi16>, vector<8xi16>
        %293 = arith.maxui %c168234945_i32, %c26528801_i32 : i32
        %294 = arith.cmpi sgt, %c168234945_i32, %c168234945_i32 : i32
        %295 = arith.remsi %true_29, %true : i1
        %296 = math.atan2 %16, %8 : tensor<16x8x16xf32>
        %297 = math.expm1 %8 : tensor<16x8x16xf32>
        %298 = arith.divf %cst_4, %cst_4 : f16
        %299 = math.copysign %7, %7 : tensor<9x16xf32>
        %300 = vector.shuffle %88, %88 [4, 7, 8, 9, 10, 12, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 29, 30, 31] : vector<16x8x16xi1>, vector<16x8x16xi1>
        %301 = bufferization.to_tensor %29 : memref<16x8x16xi1>
        %302 = vector.bitcast %173 : vector<9x8xi1> to vector<9x8xi1>
        %303 = math.tanh %7 : tensor<9x16xf32>
        %304 = math.log %cst_1 : f16
        %305 = arith.ceildivsi %false, %true_32 : i1
        %306 = arith.minf %cst, %cst : f32
        %307 = math.fpowi %5, %73 : tensor<9x16xf16>, tensor<9x16xi32>
        %308 = affine.load %alloc_13[%c5, %c14, %c2] : memref<16x8x16xf32>
        %309 = bufferization.clone %alloc : memref<9x16xf32> to memref<9x16xf32>
        %310 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 8, d3, d2 mod 8)>(%80, %38, %46, %c15)
        %311 = vector.broadcast %c2 : index to vector<8xindex>
        %312 = vector.broadcast %false_31 : i1 to vector<8xi1>
        %313 = vector.broadcast %c168234945_i32 : i32 to vector<8xi32>
        vector.scatter %alloc_8[%c3, %c0, %c15] [%311], %312, %313 : memref<16x8x16xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
        %314 = math.absf %11 : tensor<9x16xf32>
        %315 = index.castu %33 : index to i32
        %316 = arith.andi %extracted, %extracted : i32
        %317 = index.add %c3, %c1
        %cst_48 = arith.constant 1.000000e+00 : f32
        %318 = vector.transfer_read %alloc[%c13, %147], %cst_48 : memref<9x16xf32>, vector<f32>
        %319 = vector.broadcast %true : i1 to vector<16x9xi1>
        %320 = vector.transfer_write %319, %15[%c6, %c2, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x9xi1>, tensor<16x8x16xi1>
        %alloc_49 = memref.alloc() : memref<16x8x16xi64>
        memref.alloca_scope.return %alloc_49 : memref<16x8x16xi64>
      }
      %282 = vector.bitcast %39 : vector<9x8xf32> to vector<9x8xf32>
      %283 = math.atan2 %11, %9 : tensor<9x16xf32>
      %284 = vector.extract %49[0] : vector<8xi16>
      %285 = math.sqrt %4 : tensor<9x8xf32>
      scf.yield %alloc_8 : memref<16x8x16xi32>
    } else {
      %276 = bufferization.to_tensor %117 : memref<9x8xf16>
      %277 = memref.alloca_scope  -> (f32) {
        %281 = arith.andi %c164473535_i64, %c2075337556_i64 : i64
        %282 = math.log10 %163 : tensor<9x9xf32>
        %283 = vector.transpose %40, [0, 1] : vector<9x8xf32> to vector<9x8xf32>
        %284 = affine.load %alloc_8[%c8, %c9, %c2] : memref<16x8x16xi32>
        %285 = math.log1p %cst_4 : f16
        %286 = math.round %163 : tensor<9x9xf32>
        %287 = arith.addf %cst_4, %cst_3 : f16
        %288 = vector.broadcast %cst : f32 to vector<9xf32>
        %289 = vector.transfer_write %288, %125[%158, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<16x9xf32>
        %290 = arith.maxf %cst_3, %cst_3 : f16
        %291 = arith.maxui %false, %false_31 : i1
        %292 = vector.create_mask %c0, %c7, %c7 : vector<16x8x16xi1>
        %293 = arith.maxui %false, %59 : i1
        %294 = vector.broadcast %c2 : index to vector<8xindex>
        %295 = vector.broadcast %false_31 : i1 to vector<8xi1>
        %296 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        vector.scatter %117[%c3, %c2] [%294], %295, %296 : memref<9x8xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %297 = math.exp2 %cst_0 : f16
        %298 = arith.xori %c-25754_i16, %c-25754_i16 : i16
        %299 = index.ceildivs %c4, %158
        %alloca_48 = memref.alloca() : memref<9x3xi16>
        %300 = arith.remf %123, %cst_2 : f32
        %301 = arith.negf %cst_4 : f16
        %302 = tensor.empty() : tensor<9x3xf32>
        %alloc_49 = memref.alloc() : memref<9x16xi32>
        %303 = vector.gather %alloc_49[%95, %c4] [%136], %173, %136 : memref<9x16xi32>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi32> into vector<9x8xi32>
        %304 = arith.ceildivsi %true, %false_31 : i1
        %305 = math.cos %5 : tensor<9x16xf16>
        memref.tensor_store %276, %alloc_15 : memref<9x8xf16>
        %expanded = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<16x8x16xi32> into tensor<16x8x16x1xi32>
        %306 = index.maxs %80, %c11
        %307 = arith.remui %false_31, %true : i1
        %308 = math.atan %13 : tensor<16x8x16xf32>
        %309 = arith.ori %c2075337556_i64, %c565215290_i64 : i64
        %310 = math.atan %276 : tensor<9x8xf16>
        %311 = arith.ori %c565215290_i64, %c2075337556_i64 : i64
        %312 = math.log1p %transposed : tensor<16x9xf32>
        memref.alloca_scope.return %cst_2 : f32
      }
      memref.assume_alignment %117, 8 : memref<9x8xf16>
      %278 = index.casts %true_24 : i1 to index
      %279 = math.log2 %6 : tensor<9x3xf16>
      memref.tensor_store %3, %alloc_8 : memref<16x8x16xi32>
      %280 = bufferization.to_memref %generated_22 : memref<?x16xi16>
      memref.tensor_store %6, %alloc_5 : memref<9x3xf16>
      scf.yield %alloc_8 : memref<16x8x16xi32>
    }
    %185 = arith.divsi %c-25754_i16, %c-16423_i16 : i16
    %186 = math.ctlz %151 : tensor<16x8x16xi1>
    %187 = math.atan2 %7, %9 : tensor<9x16xf32>
    %188 = affine.load %alloc_11[%c4, %c0] : memref<9x8xf32>
    %189 = bufferization.clone %169 : memref<9x3xi16> to memref<9x3xi16>
    %190 = math.absi %reduced : tensor<16x8xi1>
    %191 = math.roundeven %4 : tensor<9x8xf32>
    memref.tensor_store %2, %alloc_7 : memref<9x8xi1>
    %192 = vector.shuffle %68, %68 [0, 1, 3, 5] : vector<3xi1>, vector<3xi1>
    memref.assume_alignment %alloc_18, 8 : memref<9x16xi16>
    %generated_34 = tensor.generate %147, %36 {
    ^bb0(%arg1: index, %arg2: index):
      %276 = math.powf %5, %5 : tensor<9x16xf16>
      %277 = math.exp %7 : tensor<9x16xf32>
      %278 = arith.remsi %true_32, %true_29 : i1
      %279 = index.maxu %c11, %37
      tensor.yield %false : i1
    } : tensor<?x?xi1>
    %193 = bufferization.to_tensor %169 : memref<9x3xi16>
    %alloca_35 = memref.alloca() : memref<9x3xf32>
    %194 = math.absi %c-16423_i16 : i16
    %195 = arith.andi %c-16423_i16, %c-25754_i16 : i16
    %196 = math.log1p %7 : tensor<9x16xf32>
    %197 = arith.muli %c2075337556_i64, %c2075337556_i64 : i64
    %rank = tensor.rank %9 : tensor<9x16xf32>
    %198 = vector.broadcast %70 : f16 to vector<9x3xf16>
    %199 = index.casts %36 : index to i32
    %200 = arith.ori %false, %true_29 : i1
    %201 = tensor.empty() : tensor<8x16xi1>
    %202 = tensor.empty() : tensor<16x16xi1>
    %203 = linalg.matmul ins(%reduced, %201 : tensor<16x8xi1>, tensor<8x16xi1>) outs(%202 : tensor<16x16xi1>) -> tensor<16x16xi1>
    %204 = vector.broadcast %123 : f32 to vector<16x8x16xf32>
    %205 = vector.fma %204, %204, %204 : vector<16x8x16xf32>
    %206 = vector.broadcast %188 : f32 to vector<9x16xf32>
    %207 = bufferization.to_tensor %alloc_14 : memref<9x3xf16>
    %208 = arith.cmpf true, %cst_2, %cst : f32
    %209 = arith.divf %123, %cst_2 : f32
    %210 = arith.mulf %123, %188 : f32
    %211 = arith.cmpf uge, %cst_1, %cst_4 : f16
    %212 = math.cttz %202 : tensor<16x16xi1>
    %213 = arith.cmpf ugt, %cst_4, %cst_0 : f16
    %214 = vector.broadcast %c168234945_i32 : i32 to vector<16x8x16xi32>
    %215 = vector.gather %alloc_7[%108, %128] [%214], %146, %146 : memref<9x8xi1>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi1> into vector<16x8x16xi1>
    %216 = tensor.empty() : tensor<8x8xi32>
    %217 = tensor.empty() : tensor<9x8xi32>
    %218 = linalg.matmul ins(%0, %216 : tensor<9x8xi32>, tensor<8x8xi32>) outs(%217 : tensor<9x8xi32>) -> tensor<9x8xi32>
    %219 = math.exp2 %125 : tensor<16x9xf32>
    %220 = index.ceildivu %c3, %158
    %221 = index.casts %c164473535_i64 : i64 to index
    %222 = index.mul %46, %c7
    memref.alloca_scope  {
      %276 = arith.minui %59, %false_31 : i1
      %277 = arith.addf %cst_1, %cst_0 : f16
      %278 = vector.broadcast %c9 : index to vector<9xindex>
      %279 = vector.broadcast %59 : i1 to vector<9xi1>
      vector.scatter %alloc_6[%c0, %c0] [%278], %279, %279 : memref<9x3xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
      %280 = index.add %46, %37
      %281 = vector.splat %c8 : vector<16x8x16xindex>
      %282 = vector.broadcast %c10 : index to vector<3xindex>
      %283 = vector.broadcast %c565215290_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_20[%c1] [%282], %68, %283 : memref<16xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %284 = vector.broadcast %c26528801_i32 : i32 to vector<16x8x16xi32>
      %285 = index.castu %c7 : index to i32
      %286 = memref.load %alloc_14[%c4, %c2] : memref<9x3xf16>
      %287 = math.copysign %cst_2, %123 : f32
      %288 = math.expm1 %11 : tensor<9x16xf32>
      %289 = math.round %170 : tensor<9x9xf32>
      %290 = math.expm1 %cst : f32
      %291 = bufferization.clone %alloc_5 : memref<9x3xf16> to memref<9x3xf16>
      %292 = index.maxs %222, %220
      %293 = vector.shuffle %49, %49 [0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 14] : vector<8xi16>, vector<8xi16>
      %294 = vector.broadcast %c26528801_i32 : i32 to vector<9xi32>
      %dest, %accumulated_value = vector.scan <maxui>, %136, %294 {inclusive = false, reduction_dim = 1 : i64} : vector<9x8xi32>, vector<9xi32>
      %295 = arith.ori %c2075337556_i64, %c2075337556_i64 : i64
      %296 = index.floordivs %c7, %98
      %297 = math.exp2 %13 : tensor<16x8x16xf32>
      %298 = math.ceil %6 : tensor<9x3xf16>
      %299 = arith.xori %c26528801_i32, %c26528801_i32 : i32
      %300 = math.fpowi %4, %0 : tensor<9x8xf32>, tensor<9x8xi32>
      %301 = memref.realloc %alloc_20 : memref<16xi64> to memref<3xi64>
      %302 = math.log2 %cst_0 : f16
      %303 = bufferization.clone %alloc_11 : memref<9x8xf32> to memref<9x8xf32>
      %304 = vector.create_mask %c0, %158 : vector<9x8xi1>
      %305 = bufferization.clone %291 : memref<9x3xf16> to memref<9x3xf16>
      %306 = arith.shrui %true_32, %true_29 : i1
      %307 = vector.transpose %206, [1, 0] : vector<9x16xf32> to vector<16x9xf32>
      %308 = math.tan %4 : tensor<9x8xf32>
      %rank_48 = tensor.rank %2 : tensor<9x8xi1>
    }
    %223 = vector.splat %95 : vector<9x8xindex>
    %224 = memref.realloc %alloc_20 : memref<16xi64> to memref<8xi64>
    %225 = memref.atomic_rmw ori %c26528801_i32, %184[%c15, %c2, %c4] : (i32, memref<16x8x16xi32>) -> i32
    %226 = memref.realloc %alloc_20 : memref<16xi64> to memref<16xi64>
    %227 = tensor.empty() : tensor<9x3xi64>
    %mapped_36 = linalg.map ins(%12, %12 : tensor<9x3xi64>, tensor<9x3xi64>) outs(%227 : tensor<9x3xi64>)
      (%in: i64, %in_48: i64) {
        %276 = arith.negf %cst_0 : f16
        %splat = tensor.splat %false : tensor<16x8x16xi1>
        %277 = math.absi %59 : i1
        %278 = affine.load %alloc_17[%c9, %c7] : memref<9x3xi16>
        %279 = math.exp2 %6 : tensor<9x3xf16>
        %280 = bufferization.clone %56 : memref<9x3xi16> to memref<9x3xi16>
        scf.execute_region {
          memref.copy %alloc_8, %184 : memref<16x8x16xi32> to memref<16x8x16xi32>
          %306 = index.ceildivu %36, %220
          %307 = math.absf %188 : f32
          %308 = math.cttz %splat : tensor<16x8x16xi1>
          %309 = arith.ceildivsi %in, %in_48 : i64
          %310 = vector.broadcast %123 : f32 to vector<f32>
          %311 = vector.transfer_write %310, %13[%c8, %147, %92] : vector<f32>, tensor<16x8x16xf32>
          %312 = arith.subi %in, %67 : i64
          %313 = math.expm1 %125 : tensor<16x9xf32>
          %314 = memref.load %alloc_14[%c3, %c2] : memref<9x3xf16>
          %315 = arith.negf %123 : f32
          %316 = index.ceildivu %80, %c6
          %317 = index.ceildivs %221, %92
          %318 = bufferization.to_tensor %alloc_18 : memref<9x16xi16>
          %319 = tensor.empty() : tensor<16x3xf16>
          %320 = tensor.empty() : tensor<9x3xf16>
          %321 = linalg.matmul ins(%5, %319 : tensor<9x16xf16>, tensor<16x3xf16>) outs(%320 : tensor<9x3xf16>) -> tensor<9x3xf16>
          %322 = math.tanh %4 : tensor<9x8xf32>
          %323 = bufferization.clone %alloc_9 : memref<9x3xf16> to memref<9x3xf16>
          scf.yield
        }
        %281 = math.atan %11 : tensor<9x16xf32>
        %282 = tensor.empty() : tensor<8x16xi32>
        %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%282 : tensor<8x16xi32>) outs(%14 : tensor<16x8x16xi32>) {
        ^bb0(%in_52: i32, %out: i32):
          %306 = math.absi %15 : tensor<16x8x16xi1>
          %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
          %307 = math.round %cst_0 : f16
          %308 = arith.negf %cst_1 : f16
          %309 = index.casts %278 : i16 to index
          %310 = bufferization.clone %alloc_6 : memref<9x3xi1> to memref<9x3xi1>
          %311 = index.maxs %c10, %c3
          %312 = index.castu %true_29 : i1 to index
          %313 = math.log1p %5 : tensor<9x16xf16>
          %314 = math.ctpop %14 : tensor<16x8x16xi32>
          %315 = arith.maxui %true_32, %true_24 : i1
          %splat_53 = tensor.splat %true : tensor<9x8xi1>
          %316 = index.divu %220, %33
          %317 = math.exp2 %170 : tensor<9x9xf32>
          %318 = arith.shrsi %c565215290_i64, %in : i64
          %319 = arith.minf %70, %cst_4 : f16
          %320 = affine.max affine_map<(d0, d1) -> (d0 + 4, d0 floordiv 16)>(%c13, %147)
          %321 = bufferization.to_memref %113 : memref<16x8x16xf32>
          %322 = vector.shuffle %137, %134 [1, 5, 8, 9, 13, 15, 16, 17] : vector<9x8xf16>, vector<9x8xf16>
          %false_54 = index.bool.constant false
          %323 = index.maxu %c14, %98
          %324 = vector.multi_reduction <add>, %53, %cst [0] : vector<9xf32> to f32
          %325 = index.maxu %c4, %33
          memref.copy %alloc_6, %310 : memref<9x3xi1> to memref<9x3xi1>
          %326 = index.maxs %c13, %c2
          %327 = math.absf %cst_4 : f16
          %328 = math.roundeven %cst : f32
          %329 = arith.andi %c-25754_i16, %c-16131_i16 : i16
          %330 = math.round %4 : tensor<9x8xf32>
          %331 = bufferization.clone %184 : memref<16x8x16xi32> to memref<16x8x16xi32>
          %332 = index.maxs %158, %311
          %false_55 = index.bool.constant false
          linalg.yield %c168234945_i32 : i32
        } -> tensor<16x8x16xi32>
        %284 = memref.atomic_rmw andi %c-25754_i16, %56[%c2, %c2] : (i16, memref<9x3xi16>) -> i16
        %285 = memref.atomic_rmw mulf %188, %alloc_11[%c5, %c5] : (f32, memref<9x8xf32>) -> f32
        %286 = tensor.empty() : tensor<9x3xi32>
        %287 = math.fpowi %207, %286 : tensor<9x3xf16>, tensor<9x3xi32>
        %cast_49 = tensor.cast %227 : tensor<9x3xi64> to tensor<?x?xi64>
        %288 = index.divs %92, %107
        %289 = scf.while (%arg1 = %206) : (vector<9x16xf32>) -> vector<9x16xf32> {
          %306 = math.ctpop %151 : tensor<16x8x16xi1>
          %307 = arith.maxui %67, %c2075337556_i64 : i64
          %308 = tensor.empty(%95, %33) : tensor<16x?x?xf16>
          %309 = math.log10 %cst_3 : f16
          %310 = arith.xori %in, %c2075337556_i64 : i64
          %311 = bufferization.clone %alloc_11 : memref<9x8xf32> to memref<9x8xf32>
          %312 = math.copysign %cst_1, %cst_3 : f16
          %313 = math.exp %cst_4 : f16
          scf.condition(%true_29) %206 : vector<9x16xf32>
        } do {
        ^bb0(%arg1: vector<9x16xf32>):
          %alloc_52 = memref.alloc() : memref<9x3xf16>
          %306 = math.fma %8, %8, %17 : tensor<16x8x16xf32>
          %307 = arith.subi %c26528801_i32, %c26528801_i32 : i32
          %308 = arith.muli %true_32, %true_29 : i1
          %309 = math.roundeven %125 : tensor<16x9xf32>
          %310 = index.ceildivs %132, %158
          %311 = arith.addf %70, %70 : f16
          %312 = math.absf %11 : tensor<9x16xf32>
          %313 = index.divu %c6, %c1
          %314 = math.log10 %11 : tensor<9x16xf32>
          %315 = arith.mulf %cst_3, %cst_1 : f16
          %316 = vector.transpose %134, [1, 0] : vector<9x8xf16> to vector<8x9xf16>
          %317 = vector.create_mask %33, %36 : vector<9x3xi1>
          %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<9x16xf32> into tensor<9x16x1xf32>
          %318 = tensor.empty() : tensor<9x8xf16>
          %319 = index.ceildivs %221, %c5
          scf.yield %206 : vector<9x16xf32>
        }
        %290 = index.floordivs %c13, %128
        %291 = arith.andi %false_31, %true : i1
        %292 = vector.broadcast %cst_2 : f32 to vector<9x3xf32>
        %293 = vector.fma %292, %292, %292 : vector<9x3xf32>
        %294 = arith.shli %67, %in : i64
        %295 = math.atan2 %6, %207 : tensor<9x3xf16>
        %296 = bufferization.to_tensor %alloc_17 : memref<9x3xi16>
        %c0_i32 = arith.constant 0 : i32
        %297 = vector.transfer_read %3[%c0, %c15, %132], %c0_i32 : tensor<16x8x16xi32>, vector<16x3xi32>
        %298 = affine.if affine_set<(d0, d1) : (d1 * -128 >= 0)>(%c10, %c4) -> memref<9x8xf16> {
          %306 = math.fma %cst_0, %70, %70 : f16
          %307 = arith.ori %false, %true : i1
          %308 = math.round %11 : tensor<9x16xf32>
          %309 = math.exp %cst_0 : f16
          %310 = bufferization.clone %280 : memref<9x3xi16> to memref<9x3xi16>
          %311 = arith.andi %true, %false_31 : i1
          %312 = arith.maxsi %278, %c-25754_i16 : i16
          %313 = arith.ori %in, %c565215290_i64 : i64
          affine.yield %41 : memref<9x8xf16>
        } else {
          %306 = vector.load %169[%c6, %c0] : memref<9x3xi16>, vector<9x8xi16>
          %307 = tensor.empty() : tensor<16x16xf32>
          %308 = linalg.matmul ins(%transposed, %7 : tensor<16x9xf32>, tensor<9x16xf32>) outs(%307 : tensor<16x16xf32>) -> tensor<16x16xf32>
          %309 = arith.shli %true_24, %false : i1
          %310 = arith.shli %true_29, %true_32 : i1
          %311 = index.casts %c10 : index to i32
          %312 = math.atan2 %5, %5 : tensor<9x16xf16>
          vector.print %135 : vector<9x8xi1>
          vector.print %49 : vector<8xi16>
          affine.yield %117 : memref<9x8xf16>
        }
        %299 = math.ctlz %reduced : tensor<16x8xi1>
        %300 = math.absf %16 : tensor<16x8x16xf32>
        %cast_50 = tensor.cast %163 : tensor<9x9xf32> to tensor<?x?xf32>
        %301 = index.maxs %rank, %183
        %302 = math.log10 %cst : f32
        %alloc_51 = memref.alloc() : memref<9x3xi32>
        memref.tensor_store %286, %alloc_51 : memref<9x3xi32>
        %303 = index.sub %33, %38
        %304 = index.ceildivs %183, %c14
        %305 = math.absf %11 : tensor<9x16xf32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %228 = vector.create_mask %rank, %132 : vector<9x16xi1>
    %from_elements = tensor.from_elements %true_24, %true_32, %true_24, %false, %false_31, %59, %true, %true_29, %59, %59, %true_32, %false_31, %true_32, %59, %false_31, %true_32, %59, %true, %59, %false, %59, %false, %false, %false, %false, %true_29, %true, %59, %true, %59, %false_31, %true_32, %true_32, %59, %true, %true_32, %false_31, %59, %true_29, %false_31, %true, %true, %true_32, %false_31, %false, %false_31, %false_31, %false, %true_32, %true_29, %true_24, %true_29, %true, %true_29, %59, %true_24, %true_29, %59, %true_32, %true_32, %true, %true, %true_24, %true, %true, %false, %true_32, %false_31, %false, %true_29, %true_32, %true : tensor<9x8xi1>
    %229 = vector.insertelement %123, %20[%158 : index] : vector<9xf32>
    %230 = arith.maxui %c-16423_i16, %c-16423_i16 : i16
    %231 = index.ceildivs %222, %c8
    %232 = scf.if %true_24 -> (f16) {
      %276 = index.divu %c6, %158
      %expanded = tensor.expand_shape %113 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
      memref.assume_alignment %41, 16 : memref<9x8xf16>
      memref.alloca_scope  {
        %cast_48 = tensor.cast %14 : tensor<16x8x16xi32> to tensor<?x?x?xi32>
        %281 = math.exp %4 : tensor<9x8xf32>
        %282 = arith.minf %cst_4, %70 : f16
        %283 = arith.cmpf uno, %cst_3, %cst_1 : f16
        %284 = vector.shuffle %136, %136 [0, 1, 3, 4, 5, 6, 7, 8, 10, 14, 15, 16] : vector<9x8xi32>, vector<9x8xi32>
        %285 = math.absi %14 : tensor<16x8x16xi32>
        %286 = arith.maxui %c-16423_i16, %c26531_i16 : i16
        memref.assume_alignment %alloc_19, 16 : memref<9x3xi16>
        %287 = arith.shrui %c2075337556_i64, %67 : i64
        %288 = arith.negf %cst_0 : f16
        memref.tensor_store %1, %29 : memref<16x8x16xi1>
        %c0_i64 = arith.constant 0 : i64
        %289 = vector.transfer_read %alloc_20[%c14], %c0_i64 : memref<16xi64>, vector<i64>
        %290 = math.powf %125, %transposed : tensor<16x9xf32>
        %291 = math.atan2 %5, %5 : tensor<9x16xf16>
        %292 = vector.bitcast %39 : vector<9x8xf32> to vector<9x8xf32>
        %293 = math.atan %13 : tensor<16x8x16xf32>
        %294 = index.mul %231, %33
        %alloc_49 = memref.alloc() : memref<9x8xi64>
        %295 = vector.broadcast %c0_i64 : i64 to vector<9x3xi64>
        %296 = vector.broadcast %true : i1 to vector<9x3xi1>
        %297 = vector.broadcast %c26528801_i32 : i32 to vector<9x3xi32>
        %298 = vector.gather %alloc_49[%92, %158] [%297], %296, %295 : memref<9x8xi64>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi64> into vector<9x3xi64>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %299 = vector.transfer_read %alloc_8[%128, %183, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<16x8x16xi32>, vector<8x16xi32>
        %300 = arith.cmpf ule, %70, %cst_3 : f16
        %301 = arith.andi %c168234945_i32, %c26528801_i32 : i32
        %302 = math.cos %207 : tensor<9x3xf16>
        %303 = arith.shrui %c164473535_i64, %c0_i64 : i64
        %304 = math.absi %false : i1
        %cst_50 = arith.constant 1.000000e+00 : f16
        %305 = vector.transfer_read %207[%183, %c5], %cst_50 : tensor<9x3xf16>, vector<9xf16>
        %306 = math.sqrt %18 : tensor<16x9xf32>
        %307 = index.divs %158, %c1
        %308 = math.expm1 %17 : tensor<16x8x16xf32>
        %309 = arith.shrui %c2075337556_i64, %c164473535_i64 : i64
        %310 = arith.mulf %cst_0, %cst_4 : f16
        %311 = math.absi %181 : tensor<9x16xi16>
        %312 = index.sub %98, %221
      }
      %277 = index.ceildivu %rank, %c6
      %278 = arith.shrsi %c-16131_i16, %c-25754_i16 : i16
      %279 = bufferization.to_memref %112 : memref<16x8x16xi32>
      %280 = index.ceildivs %46, %277
      scf.yield %cst_1 : f16
    } else {
      %276 = index.divs %c12, %98
      %277 = arith.addi %67, %c2075337556_i64 : i64
      %278 = vector.insertelement %123, %20[%37 : index] : vector<9xf32>
      %279 = memref.alloca_scope  -> (memref<9x8xf32>) {
        %284 = math.expm1 %cst_1 : f16
        %285 = index.sub %c5, %c2
        %286 = index.ceildivu %c13, %c14
        %287 = index.maxu %c7, %222
        %true_48 = arith.constant true
        %288 = vector.transfer_read %15[%286, %rank, %c0], %true_48 : tensor<16x8x16xi1>, vector<16x8xi1>
        %289 = math.expm1 %207 : tensor<9x3xf16>
        %290 = affine.apply affine_map<(d0, d1) -> (d0 * 2)>(%287, %92)
        %alloc_49 = memref.alloc() : memref<9x16xi32>
        %291 = vector.gather %alloc_49[%c6, %276] [%214], %146, %214 : memref<9x16xi32>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi32> into vector<16x8x16xi32>
        %292 = index.ceildivs %c15, %222
        memref.assume_alignment %alloc_49, 4 : memref<9x16xi32>
        %true_50 = arith.constant true
        %293 = vector.transfer_read %1[%rank, %231, %95], %true_50 : tensor<16x8x16xi1>, vector<i1>
        bufferization.dealloc_tensor %2 : tensor<9x8xi1>
        %alloc_51 = memref.alloc() : memref<9x3xf16>
        %294 = index.maxs %292, %221
        %295 = index.divu %37, %221
        %296 = math.ctpop %151 : tensor<16x8x16xi1>
        %cast_52 = tensor.cast %1 : tensor<16x8x16xi1> to tensor<?x?x?xi1>
        %297 = arith.ori %true_48, %true_24 : i1
        %298 = math.log10 %cst_3 : f16
        %299 = index.ceildivu %286, %222
        %300 = tensor.empty() : tensor<3x9xi1>
        %301 = tensor.empty() : tensor<9x9xi1>
        %302 = linalg.matmul ins(%10, %300 : tensor<9x3xi1>, tensor<3x9xi1>) outs(%301 : tensor<9x9xi1>) -> tensor<9x9xi1>
        %303 = math.atan2 %170, %170 : tensor<9x9xf32>
        %304 = arith.maxui %false_31, %true : i1
        memref.tensor_store %6, %alloc_9 : memref<9x3xf16>
        %305 = math.expm1 %113 : tensor<16x8x16xf32>
        %false_53 = index.bool.constant false
        %306 = math.log %163 : tensor<9x9xf32>
        %expanded = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
        %307 = arith.mulf %cst_0, %cst_1 : f16
        %308 = math.round %170 : tensor<9x9xf32>
        %309 = arith.addi %67, %67 : i64
        %310 = math.exp2 %13 : tensor<16x8x16xf32>
        memref.alloca_scope.return %alloc_11 : memref<9x8xf32>
      }
      %280 = vector.load %alloc_16[%c1, %c1, %c4] : memref<16x8x16xf16>, vector<16x8x16xf16>
      %281 = arith.cmpf ugt, %123, %cst_2 : f32
      %282 = vector.multi_reduction <maxui>, %214, %214 [] : vector<16x8x16xi32> to vector<16x8x16xi32>
      %283 = arith.andi %59, %true_29 : i1
      scf.yield %cst_3 : f16
    }
    %233 = vector.shuffle %99, %99 [1, 6, 10, 11, 12, 14, 16, 17, 18, 19, 20, 23, 25, 27, 28, 29] : vector<16x8x16xi16>, vector<16x8x16xi16>
    %234 = index.maxu %221, %37
    %true_37 = index.bool.constant true
    %235 = math.powf %9, %11 : tensor<9x16xf32>
    %cast_38 = tensor.cast %73 : tensor<9x16xi32> to tensor<?x?xi32>
    %236 = arith.negf %232 : f16
    %237 = math.ctlz %c-25754_i16 : i16
    %238 = index.maxu %98, %c8
    %false_39 = index.bool.constant false
    %alloc_40 = memref.alloc() : memref<16x8x16xi32>
    %239 = index.divu %c6, %c9
    %240 = math.roundeven %11 : tensor<9x16xf32>
    %241 = arith.minsi %c168234945_i32, %c168234945_i32 : i32
    %alloca_41 = memref.alloca() : memref<16x8x16xi32>
    %242 = math.atan %7 : tensor<9x16xf32>
    %243 = arith.shrui %67, %c565215290_i64 : i64
    %244 = index.castu %c15 : index to i32
    %245 = math.ceil %13 : tensor<16x8x16xf32>
    %246 = math.absf %8 : tensor<16x8x16xf32>
    memref.assume_alignment %alloc_9, 4 : memref<9x3xf16>
    %247 = arith.muli %c2075337556_i64, %67 : i64
    %248 = arith.cmpf uno, %232, %cst_0 : f16
    %249 = bufferization.to_tensor %alloc_12 : memref<9x3xf32>
    %250 = index.sizeof
    %251 = vector.broadcast %false_31 : i1 to vector<9x8xi1>
    %generated_42 = tensor.generate %c10, %183, %221 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %276 = arith.shli %c2075337556_i64, %67 : i64
      %277 = index.maxs %36, %239
      %278 = arith.cmpi slt, %true_29, %59 : i1
      %279 = bufferization.clone %56 : memref<9x3xi16> to memref<9x3xi16>
      tensor.yield %cst_2 : f32
    } : tensor<?x?x?xf32>
    %252 = arith.muli %c-25754_i16, %c-16423_i16 : i16
    %253 = bufferization.clone %alloc_13 : memref<16x8x16xf32> to memref<16x8x16xf32>
    %254 = arith.maxf %cst_1, %cst_1 : f16
    %alloc_43 = memref.alloc() : memref<16x16xf32>
    %alloc_44 = memref.alloc() : memref<16x8xf32>
    %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43, %alloc_44 : memref<16x16xf32>, memref<16x8xf32>) outs(%16 : tensor<16x8x16xf32>) {
    ^bb0(%in: f32, %in_48: f32, %out: f32):
      %276 = vector.broadcast %out : f32 to vector<9x9xf32>
      %277 = vector.outerproduct %53, %20, %276 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
      %278 = vector.broadcast %188 : f32 to vector<16xf32>
      %279 = vector.transfer_write %278, %11[%c15, %238] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, tensor<9x16xf32>
      %280 = arith.divf %188, %in_48 : f32
      %281 = vector.broadcast %c-16131_i16 : i16 to vector<8x8xi16>
      %282 = vector.outerproduct %49, %49, %281 {kind = #vector.kind<minsi>} : vector<8xi16>, vector<8xi16>
      %283 = memref.load %alloc_8[%c0, %c7, %c14] : memref<16x8x16xi32>
      %284 = index.maxs %33, %128
      %285 = math.exp2 %6 : tensor<9x3xf16>
      %286 = vector.broadcast %284 : index to vector<9xindex>
      %287 = vector.broadcast %true_37 : i1 to vector<9xi1>
      %288 = vector.broadcast %c-25754_i16 : i16 to vector<9xi16>
      vector.scatter %56[%c6, %c1] [%286], %287, %288 : memref<9x3xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
      %289 = arith.cmpf ole, %123, %cst_2 : f32
      %expanded = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<9x8xi1> into tensor<9x8x1xi1>
      %expanded_49 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<16x8x16xf32> into tensor<16x8x16x1xf32>
      %290 = memref.load %alloc_6[%c2, %c0] : memref<9x3xi1>
      %291 = math.tan %cst : f32
      %292 = memref.load %alloc_11[%c7, %c3] : memref<9x8xf32>
      %293 = vector.multi_reduction <minf>, %77, %40 [] : vector<9x8xf32> to vector<9x8xf32>
      %294 = math.powf %cst_1, %232 : f16
      %295 = index.castu %239 : index to i32
      %296 = index.floordivs %234, %c1
      scf.index_switch %c12 
      case 1 {
        %311 = bufferization.to_memref %expanded : memref<9x8x1xi1>
        %312 = arith.ori %c-16423_i16, %c-16423_i16 : i16
        %alloca_50 = memref.alloca() : memref<16x8x16xi32>
        %expanded_51 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<9x8xf32> into tensor<9x8x1xf32>
        %313 = bufferization.clone %alloc_13 : memref<16x8x16xf32> to memref<16x8x16xf32>
        %314 = math.absf %cst : f32
        %315 = index.add %98, %128
        %316 = vector.shuffle %251, %173 [1, 2, 3, 4, 6, 7, 8, 11, 12, 14, 15] : vector<9x8xi1>, vector<9x8xi1>
        %317 = arith.xori %true_29, %true_32 : i1
        %318 = tensor.empty() : tensor<9x9xf32>
        %319 = linalg.matmul ins(%9, %transposed : tensor<9x16xf32>, tensor<16x9xf32>) outs(%318 : tensor<9x9xf32>) -> tensor<9x9xf32>
        %320 = math.fpowi %cst, %c168234945_i32 : f32, i32
        bufferization.dealloc_tensor %7 : tensor<9x16xf32>
        %alloc_52 = memref.alloc() : memref<9x16xi1>
        %321 = vector.gather %alloc_52[%c15, %128] [%214], %146, %88 : memref<9x16xi1>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi1> into vector<16x8x16xi1>
        %322 = bufferization.to_tensor %alloc_15 : memref<9x8xf16>
        %323 = arith.ceildivsi %67, %c164473535_i64 : i64
        %324 = arith.negf %cst_1 : f16
        scf.yield
      }
      default {
        %c0_i64 = arith.constant 0 : i64
        %311 = vector.transfer_read %227[%rank, %c13], %c0_i64 : tensor<9x3xi64>, vector<9xi64>
        %expanded_50 = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<16x8xi1> into tensor<16x8x1xi1>
        %312 = vector.shuffle %206, %206 [1, 2, 6, 10, 11, 12, 15, 17] : vector<9x16xf32>, vector<9x16xf32>
        %313 = vector.broadcast %false_31 : i1 to vector<8x16xi1>
        %314 = vector.insert %313, %88 [13] : vector<8x16xi1> into vector<16x8x16xi1>
        %315 = index.ceildivu %36, %c13
        %316 = bufferization.clone %alloc_7 : memref<9x8xi1> to memref<9x8xi1>
        %317 = memref.realloc %alloc_20 : memref<16xi64> to memref<8xi64>
        %318 = vector.broadcast %c168234945_i32 : i32 to vector<3x16xi32>
        vector.transfer_write %318, %184[%c0, %221, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x16xi32>, memref<16x8x16xi32>
        %319 = math.absf %expanded_49 : tensor<16x8x16x1xf32>
        %320 = math.round %expanded_49 : tensor<16x8x16x1xf32>
        %alloca_51 = memref.alloca() : memref<16x8x16xf16>
        %321 = index.maxs %c11, %107
        %322 = index.casts %315 : index to i32
        %323 = bufferization.clone %alloc_11 : memref<9x8xf32> to memref<9x8xf32>
        %324 = tensor.empty() : tensor<16x16xf32>
        %325 = linalg.matmul ins(%18, %7 : tensor<16x9xf32>, tensor<9x16xf32>) outs(%324 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %326 = math.absf %cst : f32
      }
      %297 = vector.broadcast %284 : index to vector<8xindex>
      %298 = vector.broadcast %false : i1 to vector<8xi1>
      vector.scatter %alloc_18[%c5, %c5] [%297], %298, %49 : memref<9x16xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
      %299 = vector.shuffle %215, %88 [0, 1, 6, 7, 8, 10, 13, 14, 17, 18, 21, 22, 24, 26, 28, 29] : vector<16x8x16xi1>, vector<16x8x16xi1>
      %c1478132745_i64 = arith.constant 1478132745 : i64
      %300 = affine.if affine_set<(d0, d1) : (d1 * -128 >= 0)>(%c11, %c11) -> f32 {
        %311 = math.round %8 : tensor<16x8x16xf32>
        %false_50 = index.bool.constant false
        %312 = math.copysign %8, %16 : tensor<16x8x16xf32>
        %313 = index.maxu %107, %c4
        %314 = vector.broadcast %123 : f32 to vector<9x9xf32>
        %315 = vector.outerproduct %71, %71, %314 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
        %316 = arith.remsi %false_31, %true_37 : i1
        %317 = arith.andi %false, %true_24 : i1
        %318 = arith.addf %out, %123 : f32
        affine.yield %out : f32
      } else {
        %311 = vector.broadcast %true_32 : i1 to vector<9x16xi1>
        %312 = math.ctlz %true : i1
        %cast_50 = tensor.cast %101 : tensor<9x16xi1> to tensor<?x?xi1>
        %313 = math.ctlz %c26528801_i32 : i32
        %314 = index.sub %c11, %c5
        %315 = vector.broadcast %188 : f32 to vector<9x9xf32>
        %316 = vector.outerproduct %20, %53, %315 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
        %317 = affine.load %56[%c15, %c0] : memref<9x3xi16>
        %318 = memref.atomic_rmw mulf %cst_4, %41[%c2, %c2] : (f16, memref<9x8xf16>) -> f16
        affine.yield %cst_2 : f32
      }
      %301 = vector.broadcast %c3 : index to vector<3xindex>
      %302 = vector.broadcast %c-16423_i16 : i16 to vector<3xi16>
      vector.scatter %169[%c2, %c0] [%301], %68, %302 : memref<9x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      %303 = vector.broadcast %123 : f32 to vector<16xf32>
      vector.transfer_write %303, %alloc[%36, %231] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, memref<9x16xf32>
      %304 = math.powf %16, %13 : tensor<16x8x16xf32>
      %305 = vector.broadcast %188 : f32 to vector<9x8xf32>
      %306 = memref.alloca_scope  -> (memref<9x3xf32>) {
        %311 = arith.cmpf ult, %out, %cst : f32
        %312 = bufferization.to_tensor %alloc_8 : memref<16x8x16xi32>
        %313 = arith.remui %c168234945_i32, %c26528801_i32 : i32
        %314 = arith.cmpf one, %232, %cst_0 : f16
        %315 = index.casts %222 : index to i32
        %316 = index.add %c3, %284
        %317 = affine.load %253[%c10, %c15, %c11] : memref<16x8x16xf32>
        %318 = index.castu %c0 : index to i32
        bufferization.dealloc_tensor %15 : tensor<16x8x16xi1>
        %319 = memref.realloc %alloc_20 : memref<16xi64> to memref<3xi64>
        %alloc_50 = memref.alloc() : memref<9x16xf16>
        %320 = arith.cmpf true, %70, %232 : f16
        %321 = tensor.empty() : tensor<16x9xi32>
        %322 = math.fpowi %transposed, %321 : tensor<16x9xf32>, tensor<16x9xi32>
        %323 = arith.divf %cst_4, %cst_4 : f16
        %alloc_51 = memref.alloc() : memref<9x3xf16>
        %324 = arith.andi %false, %false : i1
        %325 = vector.create_mask %c7, %147 : vector<9x3xi1>
        %326 = arith.subi %c-25754_i16, %c-16423_i16 : i16
        %327 = math.cttz %true_29 : i1
        %328 = vector.shuffle %20, %71 [0, 2, 3, 6, 8, 9, 11, 14, 15, 16] : vector<9xf32>, vector<9xf32>
        %329 = bufferization.to_tensor %alloc_7 : memref<9x8xi1>
        %330 = arith.shli %c164473535_i64, %c164473535_i64 : i64
        %331 = math.fpowi %188, %c168234945_i32 : f32, i32
        %332 = math.tan %cst : f32
        %333 = math.atan %317 : f32
        %334 = vector.broadcast %107 : index to vector<8xindex>
        %335 = vector.broadcast %true_32 : i1 to vector<8xi1>
        %336 = vector.broadcast %67 : i64 to vector<8xi64>
        vector.scatter %alloc_20[%c7] [%334], %335, %336 : memref<16xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %337 = arith.addf %cst, %317 : f32
        %338 = vector.broadcast %false : i1 to vector<3x3xi1>
        %339 = vector.outerproduct %68, %68, %338 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
        %340 = math.tan %in_48 : f32
        %341 = arith.addi %false, %59 : i1
        %342 = vector.create_mask %c1, %284 : vector<9x16xi1>
        %343 = arith.divui %c26528801_i32, %c26528801_i32 : i32
        memref.alloca_scope.return %alloc_12 : memref<9x3xf32>
      }
      %307 = bufferization.to_memref %249 : memref<9x3xf32>
      %308 = index.sizeof
      %309 = memref.realloc %alloc_20 : memref<16xi64> to memref<8xi64>
      %310 = arith.andi %67, %67 : i64
      linalg.yield %cst : f32
    } -> tensor<16x8x16xf32>
    %alloca_45 = memref.alloca() : memref<16x8x16xi64>
    %256 = index.ceildivu %37, %37
    %257 = scf.index_switch %33 -> index 
    case 1 {
      %276 = arith.divf %cst_3, %cst_3 : f16
      %277 = arith.maxf %cst_4, %cst_3 : f16
      %278 = vector.shuffle %215, %88 [0, 2, 3, 5, 7, 9, 11, 12, 15, 16, 17, 18, 21, 23, 24, 25, 27, 29, 31] : vector<16x8x16xi1>, vector<16x8x16xi1>
      %279 = scf.execute_region -> memref<9x3xf32> {
        %291 = index.sub %107, %239
        %292 = arith.xori %true, %59 : i1
        %293 = arith.divui %false, %false_31 : i1
        %294 = math.log10 %cst_1 : f16
        %295 = vector.multi_reduction <and>, %136, %c168234945_i32 [0, 1] : vector<9x8xi32> to i32
        %296 = arith.mulf %70, %cst_4 : f16
        %alloca_49 = memref.alloca() : memref<9x3xf32>
        %297 = index.ceildivs %95, %c9
        %rank_50 = tensor.rank %113 : tensor<16x8x16xf32>
        %splat = tensor.splat %true_24 : tensor<9x3xi1>
        %298 = vector.broadcast %46 : index to vector<9xindex>
        %299 = vector.broadcast %false_31 : i1 to vector<9xi1>
        %300 = vector.broadcast %c168234945_i32 : i32 to vector<9xi32>
        vector.scatter %184[%c1, %c6, %c9] [%298], %299, %300 : memref<16x8x16xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %301 = vector.broadcast %c13 : index to vector<3xindex>
        %302 = vector.broadcast %c-16423_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_19[%c4, %c1] [%301], %68, %302 : memref<9x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %303 = math.tan %4 : tensor<9x8xf32>
        vector.print %214 : vector<16x8x16xi32>
        %304 = arith.shli %true_24, %true_24 : i1
        %alloc_51 = memref.alloc() : memref<9x3xi64>
        %305 = vector.broadcast %c2075337556_i64 : i64 to vector<9x8xi64>
        %306 = vector.gather %alloc_51[%256, %rank] [%136], %251, %305 : memref<9x3xi64>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi64> into vector<9x8xi64>
        scf.yield %alloc_12 : memref<9x3xf32>
      }
      %280 = math.expm1 %cst_0 : f16
      %281 = index.mul %250, %c10
      %282 = arith.divui %c565215290_i64, %c2075337556_i64 : i64
      %283 = index.floordivs %c15, %132
      %284 = vector.shuffle %77, %77 [2, 3, 11, 16] : vector<9x8xf32>, vector<9x8xf32>
      %285 = vector.broadcast %c26528801_i32 : i32 to vector<8xi32>
      %dest, %accumulated_value = vector.scan <mul>, %136, %285 {inclusive = true, reduction_dim = 0 : i64} : vector<9x8xi32>, vector<8xi32>
      %cast_48 = tensor.cast %18 : tensor<16x9xf32> to tensor<?x?xf32>
      %286 = math.atan %123 : f32
      %287 = math.absf %4 : tensor<9x8xf32>
      %288 = arith.divf %cst_1, %cst_1 : f16
      %289 = arith.cmpf one, %cst_4, %cst_4 : f16
      %290 = tensor.empty(%c11, %221) : tensor<?x?xi16>
      scf.yield %239 : index
    }
    case 2 {
      %276 = scf.while (%arg1 = %cst_0) : (f16) -> f16 {
        %292 = index.ceildivs %38, %231
        %alloc_51 = memref.alloc() : memref<9x3xi16>
        %293 = arith.andi %c565215290_i64, %c2075337556_i64 : i64
        %alloc_52 = memref.alloc() : memref<9x16xi1>
        %294 = affine.load %189[%c11, %c13] : memref<9x3xi16>
        %alloc_53 = memref.alloc() : memref<9x16xi1>
        %295 = vector.broadcast %cst_4 : f16 to vector<9x8xf16>
        %296 = arith.shrui %c26528801_i32, %c168234945_i32 : i32
        scf.condition(%true_37) %cst_0 : f16
      } do {
      ^bb0(%arg1: f16):
        memref.tensor_store %1, %alloc_10 : memref<16x8x16xi1>
        %292 = vector.multi_reduction <minf>, %53, %71 [] : vector<9xf32> to vector<9xf32>
        %293 = math.fma %6, %207, %207 : tensor<9x3xf16>
        %294 = math.atan %232 : f16
        %splat = tensor.splat %false : tensor<16x8x16xi1>
        %295 = vector.broadcast %123 : f32 to vector<8xf32>
        %296 = vector.insert %295, %40 [7] : vector<8xf32> into vector<9x8xf32>
        %297 = bufferization.to_tensor %alloc_19 : memref<9x3xi16>
        %298 = math.log2 %188 : f32
        %false_51 = index.bool.constant false
        %299 = math.exp2 %188 : f32
        %300 = vector.broadcast %123 : f32 to vector<8xf32>
        %301 = vector.transfer_write %300, %8[%rank, %158, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xf32>, tensor<16x8x16xf32>
        %302 = affine.apply affine_map<(d0, d1) -> (d0 * 2)>(%98, %37)
        %303 = arith.addf %cst_1, %cst_3 : f16
        %alloc_52 = memref.alloc() : memref<9x3xi1>
        memref.copy %alloc_6, %alloc_52 : memref<9x3xi1> to memref<9x3xi1>
        %true_53 = index.bool.constant true
        %304 = math.cos %7 : tensor<9x16xf32>
        scf.yield %cst_4 : f16
      }
      memref.tensor_store %112, %184 : memref<16x8x16xi32>
      %277 = vector.reduction <mul>, %71 : vector<9xf32> into f32
      bufferization.dealloc_tensor %112 : tensor<16x8x16xi32>
      %278 = math.log10 %4 : tensor<9x8xf32>
      %279 = vector.shuffle %215, %88 [1, 3, 4, 5, 6, 8, 10, 13, 15, 16, 19, 20, 21, 22, 25, 27, 29] : vector<16x8x16xi1>, vector<16x8x16xi1>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %280 = vector.transfer_read %3[%220, %238, %132], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<16x8x16xi32>, vector<9x8xi32>
      %c0_i32_48 = arith.constant 0 : i32
      %c0_i32_49 = arith.constant 0 : i32
      %281 = vector.transfer_read %73[%221, %234], %c0_i32_49 : tensor<9x16xi32>, vector<i32>
      %282 = affine.if affine_set<(d0) : (d0 floordiv 64 == 0, d0 floordiv 64 >= 0, (d0 floordiv 64) * 2 - 2 >= 0)>(%c4) -> i16 {
        %292 = math.log1p %8 : tensor<16x8x16xf32>
        %293 = bufferization.clone %alloc_8 : memref<16x8x16xi32> to memref<16x8x16xi32>
        %294 = arith.andi %true_24, %true : i1
        %alloca_51 = memref.alloca() : memref<9x3xi16>
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<9x8xi1> into tensor<9x8x1xi1>
        %295 = memref.load %253[%c7, %c3, %c13] : memref<16x8x16xf32>
        %296 = index.divu %95, %98
        %297 = math.sqrt %9 : tensor<9x16xf32>
        affine.yield %c-25754_i16 : i16
      } else {
        %292 = math.ceil %13 : tensor<16x8x16xf32>
        %293 = index.divs %98, %220
        %294 = bufferization.clone %117 : memref<9x8xf16> to memref<9x8xf16>
        %295 = arith.negf %cst_2 : f32
        %296 = arith.remui %true_29, %true_29 : i1
        %297 = math.fma %123, %188, %cst_2 : f32
        %alloc_51 = memref.alloc() : memref<9x3xf16>
        %298 = arith.mulf %188, %123 : f32
        affine.yield %c-16423_i16 : i16
      }
      %283 = arith.divui %c164473535_i64, %c2075337556_i64 : i64
      %284 = tensor.empty() : tensor<16x8x16xi32>
      %mapped_50 = linalg.map ins(%14, %14 : tensor<16x8x16xi32>, tensor<16x8x16xi32>) outs(%284 : tensor<16x8x16xi32>)
        (%in: i32, %in_51: i32) {
          %292 = arith.addf %70, %cst_0 : f16
          %293 = vector.broadcast %cst_4 : f16 to vector<8xf16>
          %294 = vector.insert %293, %137 [1] : vector<8xf16> into vector<9x8xf16>
          %295 = math.cos %232 : f16
          %296 = arith.divf %123, %123 : f32
          %alloc_52 = memref.alloc() : memref<9x16xi64>
          %297 = arith.remsi %true, %true_32 : i1
          %298 = math.absi %193 : tensor<9x3xi16>
          %299 = arith.minsi %false_39, %true_24 : i1
          %300 = arith.maxui %c0_i32_48, %c1_i32 : i32
          %301 = math.fpowi %cst_0, %c26528801_i32 : f16, i32
          %302 = arith.shli %c26531_i16, %c-16131_i16 : i16
          %303 = math.tanh %cst_1 : f16
          %304 = math.round %5 : tensor<9x16xf16>
          %305 = vector.multi_reduction <maxui>, %228, %228 [] : vector<9x16xi1> to vector<9x16xi1>
          %306 = arith.mulf %70, %cst_0 : f16
          %307 = math.fpowi %cst_0, %c0_i32_48 : f16, i32
          %308 = vector.broadcast %123 : f32 to vector<8xf32>
          %dest, %accumulated_value = vector.scan <mul>, %40, %308 {inclusive = true, reduction_dim = 0 : i64} : vector<9x8xf32>, vector<8xf32>
          %expanded = tensor.expand_shape %284 [[0], [1], [2, 3]] : tensor<16x8x16xi32> into tensor<16x8x16x1xi32>
          %309 = math.expm1 %17 : tensor<16x8x16xf32>
          %310 = vector.broadcast %c2075337556_i64 : i64 to vector<3xi64>
          %311 = vector.maskedload %alloc_20[%c9], %68, %310 : memref<16xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
          %312 = vector.gather %alloc_18[%221, %c14] [%214], %88, %99 : memref<9x16xi16>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi16> into vector<16x8x16xi16>
          %false_53 = arith.constant false
          %false_54 = arith.constant false
          %313 = vector.transfer_read %15[%234, %c12, %38], %false_54 : tensor<16x8x16xi1>, vector<i1>
          %314 = index.divu %107, %221
          %rank_55 = tensor.rank %1 : tensor<16x8x16xi1>
          %315 = memref.realloc %alloc_20 : memref<16xi64> to memref<9xi64>
          %316 = vector.broadcast %cst_1 : f16 to vector<f16>
          %317 = vector.transfer_write %316, %6[%c8, %132] : vector<f16>, tensor<9x3xf16>
          %318 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
          %319 = vector.outerproduct %71, %53, %318 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
          %320 = index.maxs %128, %46
          %true_56 = index.bool.constant true
          %cst_57 = arith.constant 1.000000e+00 : f16
          %321 = vector.transfer_read %alloc_9[%c0, %c9], %cst_57 : memref<9x3xf16>, vector<8xf16>
          %322 = memref.atomic_rmw maxu %c-16131_i16, %169[%c1, %c2] : (i16, memref<9x3xi16>) -> i16
          memref.assume_alignment %alloc_5, 16 : memref<9x3xf16>
          %c0_i32_58 = arith.constant 0 : i32
          linalg.yield %c0_i32_58 : i32
        }
      %285 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
      %286 = vector.outerproduct %53, %20, %285 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
      %287 = scf.if %false_39 -> (memref<9x8xf16>) {
        %292 = bufferization.clone %169 : memref<9x3xi16> to memref<9x3xi16>
        memref.store %59, %alloc_6[%c1, %c0] : memref<9x3xi1>
        %false_51 = index.bool.constant false
        %293 = math.round %170 : tensor<9x9xf32>
        %294 = memref.load %253[%c7, %c4, %c12] : memref<16x8x16xf32>
        %295 = vector.broadcast %cst : f32 to vector<16x8x16xf32>
        %296 = vector.fma %295, %295, %295 : vector<16x8x16xf32>
        %297 = arith.cmpf uge, %232, %cst_3 : f16
        %298 = math.fma %cst_1, %70, %232 : f16
        scf.yield %41 : memref<9x8xf16>
      } else {
        %292 = vector.broadcast %true_29 : i1 to vector<3xi1>
        %293 = vector.transfer_write %292, %202[%c5, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<16x16xi1>
        %false_51 = arith.constant false
        %294 = vector.transfer_read %alloc_7[%239, %c13], %false_51 : memref<9x8xi1>, vector<i1>
        %295 = arith.shli %c0_i32_48, %c168234945_i32 : i32
        %296 = index.sub %183, %c11
        %297 = vector.splat %c164473535_i64 : vector<9x8xi64>
        %298 = math.absf %cst_4 : f16
        %299 = math.ctpop %284 : tensor<16x8x16xi32>
        %300 = index.divu %147, %c1
        scf.yield %117 : memref<9x8xf16>
      }
      %288 = index.floordivs %38, %c14
      scf.index_switch %c9 
      case 1 {
        %292 = math.cttz %c168234945_i32 : i32
        %293 = index.castu %80 : index to i32
        %294 = arith.maxui %c-25754_i16, %c26531_i16 : i16
        %295 = arith.ori %false_39, %false_31 : i1
        %296 = index.mul %147, %c1
        %297 = math.ctlz %73 : tensor<9x16xi32>
        %298 = tensor.empty(%221) : tensor<?x3xf16>
        %299 = arith.subi %c565215290_i64, %c164473535_i64 : i64
        %300 = memref.load %184[%c6, %c6, %c6] : memref<16x8x16xi32>
        %301 = math.expm1 %123 : f32
        %302 = math.powf %207, %6 : tensor<9x3xf16>
        %303 = math.ctlz %1 : tensor<16x8x16xi1>
        memref.assume_alignment %184, 2 : memref<16x8x16xi32>
        %alloc_51 = memref.alloc() : memref<9x16xf32>
        memref.copy %alloc, %alloc_51 : memref<9x16xf32> to memref<9x16xf32>
        %304 = index.ceildivs %c0, %80
        %305 = math.cos %17 : tensor<16x8x16xf32>
        scf.yield
      }
      case 2 {
        %292 = math.atan2 %11, %11 : tensor<9x16xf32>
        %293 = memref.load %alloc_20[%c10] : memref<16xi64>
        %294 = memref.realloc %alloc_20 : memref<16xi64> to memref<8xi64>
        %295 = vector.matrix_multiply %68, %68 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        %296 = index.castu %c1_i32 : i32 to index
        %297 = math.absi %14 : tensor<16x8x16xi32>
        %298 = math.tan %7 : tensor<9x16xf32>
        %299 = vector.broadcast %59 : i1 to vector<9x3xi1>
        %300 = vector.broadcast %c0_i32_48 : i32 to vector<9x3xi32>
        %301 = vector.gather %alloc_6[%132, %c4] [%300], %299, %299 : memref<9x3xi1>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi1> into vector<9x3xi1>
        %302 = index.divu %80, %c10
        %303 = math.expm1 %163 : tensor<9x9xf32>
        %304 = vector.shuffle %206, %206 [1, 5, 8, 10, 11, 12, 14, 17] : vector<9x16xf32>, vector<9x16xf32>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %305 = vector.transfer_read %170[%c12, %37], %cst_51 : tensor<9x9xf32>, vector<16xf32>
        %306 = arith.muli %true, %true_37 : i1
        %307 = tensor.empty() : tensor<8x8xi32>
        %308 = tensor.empty() : tensor<9x8xi32>
        %309 = linalg.matmul ins(%0, %307 : tensor<9x8xi32>, tensor<8x8xi32>) outs(%308 : tensor<9x8xi32>) -> tensor<9x8xi32>
        %310 = vector.bitcast %77 : vector<9x8xf32> to vector<9x8xf32>
        %311 = vector.create_mask %256, %c15 : vector<9x8xi1>
        scf.yield
      }
      case 3 {
        %292 = math.fpowi %cst, %c0_i32_48 : f32, i32
        %293 = vector.shuffle %205, %205 [0, 3, 5, 9, 10, 11, 14, 16, 19, 20, 21, 22, 23, 24, 25, 28, 29] : vector<16x8x16xf32>, vector<16x8x16xf32>
        %294 = index.mul %46, %158
        %295 = arith.divsi %c-25754_i16, %c-16131_i16 : i16
        %296 = vector.broadcast %70 : f16 to vector<16x8x16xf16>
        %297 = math.fma %13, %8, %16 : tensor<16x8x16xf32>
        %298 = arith.ori %c0_i32_48, %c1_i32 : i32
        %299 = arith.shli %c1_i32, %c1_i32 : i32
        %300 = math.ipowi %15, %15 : tensor<16x8x16xi1>
        %301 = arith.shrui %c164473535_i64, %c164473535_i64 : i64
        %302 = math.cos %8 : tensor<16x8x16xf32>
        %inserted = tensor.insert %false_31 into %2[%c6, %c5] : tensor<9x8xi1>
        %303 = bufferization.clone %189 : memref<9x3xi16> to memref<9x3xi16>
        %304 = arith.remsi %c26528801_i32, %c1_i32 : i32
        %305 = arith.andi %false_31, %true_32 : i1
        %306 = tensor.empty() : tensor<9x8xi16>
        %307 = vector.broadcast %c26531_i16 : i16 to vector<9x16xi16>
        %308 = vector.broadcast %c26528801_i32 : i32 to vector<9x16xi32>
        %309 = vector.gather %306[%183, %256] [%308], %228, %307 : tensor<9x8xi16>, vector<9x16xi32>, vector<9x16xi1>, vector<9x16xi16> into vector<9x16xi16>
        scf.yield
      }
      default {
        %292 = math.log2 %17 : tensor<16x8x16xf32>
        %293 = arith.shrsi %c565215290_i64, %c164473535_i64 : i64
        %294 = vector.broadcast %cst_2 : f32 to vector<f32>
        %295 = vector.transfer_write %294, %113[%c13, %c8, %c3] : vector<f32>, tensor<16x8x16xf32>
        %296 = arith.mulf %123, %cst : f32
        %297 = affine.load %253[%c6, %c1, %c14] : memref<16x8x16xf32>
        %298 = math.atan2 %170, %170 : tensor<9x9xf32>
        %299 = vector.broadcast %297 : f32 to vector<9x3xf32>
        %300 = vector.broadcast %false : i1 to vector<9x3xi1>
        %301 = vector.broadcast %c0_i32_48 : i32 to vector<9x3xi32>
        %302 = vector.gather %249[%c11, %183] [%301], %300, %299 : tensor<9x3xf32>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xf32> into vector<9x3xf32>
        bufferization.dealloc_tensor %15 : tensor<16x8x16xi1>
        %303 = math.ceil %7 : tensor<9x16xf32>
        %expanded = tensor.expand_shape %217 [[0], [1, 2]] : tensor<9x8xi32> into tensor<9x8x1xi32>
        %304 = math.fma %11, %7, %9 : tensor<9x16xf32>
        %305 = math.exp %cst_1 : f16
        %306 = arith.mulf %cst_1, %cst_4 : f16
        %307 = arith.maxsi %c0_i32_48, %c0_i32_48 : i32
        %cst_51 = arith.constant 1.000000e+00 : f16
        %308 = vector.transfer_read %alloc_9[%c8, %c15], %cst_51 : memref<9x3xf16>, vector<16xf16>
        %309 = arith.minf %232, %cst_4 : f16
      }
      %289 = vector.broadcast %cst_3 : f16 to vector<9xf16>
      %290 = vector.broadcast %59 : i1 to vector<9xi1>
      %291 = vector.maskedload %287[%c3, %c5], %290, %289 : memref<9x8xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      scf.yield %128 : index
    }
    case 3 {
      %generated_48 = tensor.generate %38, %c14 {
      ^bb0(%arg1: index, %arg2: index):
        %294 = math.tanh %13 : tensor<16x8x16xf32>
        %295 = index.ceildivs %c4, %221
        %alloc_50 = memref.alloc() : memref<9x8xi1>
        %cast_51 = tensor.cast %12 : tensor<9x3xi64> to tensor<?x?xi64>
        tensor.yield %c26528801_i32 : i32
      } : tensor<?x?xi32>
      %276 = vector.broadcast %c-25754_i16 : i16 to vector<8x8xi16>
      %277 = vector.outerproduct %49, %49, %276 {kind = #vector.kind<maxsi>} : vector<8xi16>, vector<8xi16>
      %278 = arith.divui %c565215290_i64, %c565215290_i64 : i64
      %279 = math.absf %123 : f32
      %280 = math.tanh %6 : tensor<9x3xf16>
      %alloca_49 = memref.alloca() : memref<9x3xi16>
      %281 = arith.minf %cst_4, %cst_0 : f16
      %282 = vector.broadcast %256 : index to vector<3xindex>
      %283 = vector.broadcast %c168234945_i32 : i32 to vector<3xi32>
      vector.scatter %184[%c0, %c0, %c15] [%282], %68, %283 : memref<16x8x16xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      %284 = arith.minf %123, %cst_2 : f32
      %285 = vector.broadcast %cst_1 : f16 to vector<8xf16>
      %dest, %accumulated_value = vector.scan <minf>, %134, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<9x8xf16>, vector<8xf16>
      %286 = index.mul %c9, %c14
      %287 = vector.broadcast %c14 : index to vector<3xindex>
      %288 = vector.broadcast %cst_1 : f16 to vector<3xf16>
      vector.scatter %alloc_16[%c15, %c5, %c0] [%287], %68, %288 : memref<16x8x16xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %289 = bufferization.clone %alloc_17 : memref<9x3xi16> to memref<9x3xi16>
      %290 = math.tanh %70 : f16
      %291 = vector.create_mask %c11, %221, %c9 : vector<16x8x16xi1>
      %292 = vector.broadcast %true_32 : i1 to vector<9x8x16xi1>
      %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %228, %146, %292 : vector<9x16xi1>, vector<16x8x16xi1> into vector<9x8x16xi1>
      scf.yield %c12 : index
    }
    default {
      %276 = math.log10 %5 : tensor<9x16xf16>
      %277 = arith.divui %false_31, %59 : i1
      %278 = vector.shuffle %88, %146 [2, 3, 4, 5, 6, 10, 12, 14, 16, 18, 20, 21, 23, 26, 28] : vector<16x8x16xi1>, vector<16x8x16xi1>
      %279 = vector.create_mask %234, %c13 : vector<9x3xi1>
      %false_48 = index.bool.constant false
      %280 = vector.broadcast %c-16131_i16 : i16 to vector<8x8xi16>
      %281 = vector.outerproduct %49, %49, %280 {kind = #vector.kind<add>} : vector<8xi16>, vector<8xi16>
      %282 = vector.broadcast %true_37 : i1 to vector<9x8xi1>
      %283 = arith.andi %true_24, %59 : i1
      %284 = math.expm1 %7 : tensor<9x16xf32>
      %285 = index.add %46, %250
      %286 = tensor.empty() : tensor<8x16xi32>
      %alloc_49 = memref.alloc() : memref<16x16xi32>
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%286, %alloc_49 : tensor<8x16xi32>, memref<16x16xi32>) outs(%112 : tensor<16x8x16xi32>) {
      ^bb0(%in: i32, %in_50: i32, %out: i32):
        %293 = math.cttz %true : i1
        %294 = arith.cmpf oge, %cst_0, %70 : f16
        %alloc_51 = memref.alloc() : memref<9x8xi32>
        %295 = vector.gather %alloc_51[%38, %239] [%214], %146, %214 : memref<9x8xi32>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi32> into vector<16x8x16xi32>
        %296 = index.maxu %rank, %220
        %297 = math.ctlz %101 : tensor<9x16xi1>
        %298 = arith.shrsi %true_32, %false_39 : i1
        %299 = arith.shrui %true_24, %true_29 : i1
        %300 = math.log2 %cst_4 : f16
        %alloca_52 = memref.alloca() : memref<9x16xf32>
        %301 = math.atan2 %cst_3, %70 : f16
        %302 = math.expm1 %123 : f32
        %303 = math.absf %8 : tensor<16x8x16xf32>
        %304 = math.tan %cst_2 : f32
        %305 = arith.ori %c26531_i16, %c-16131_i16 : i16
        %306 = bufferization.to_tensor %alloc_19 : memref<9x3xi16>
        %307 = vector.bitcast %279 : vector<9x3xi1> to vector<9x3xi1>
        %308 = vector.gather %alloc_9[%rank, %234] [%136], %173, %134 : memref<9x3xf16>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xf16> into vector<9x8xf16>
        %309 = vector.bitcast %215 : vector<16x8x16xi1> to vector<16x8x16xi1>
        %310 = index.add %c3, %36
        %cst_53 = arith.constant 1.000000e+00 : f32
        %cst_54 = arith.constant 0.000000e+00 : f32
        %311 = vector.transfer_read %17[%c7, %33, %128], %cst_54 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<16x8x16xf32>, vector<3xf32>
        %312 = math.atan %cst_1 : f16
        %313 = math.exp %6 : tensor<9x3xf16>
        %314 = arith.andi %in, %out : i32
        %315 = math.atan2 %13, %13 : tensor<16x8x16xf32>
        %316 = vector.load %169[%c1, %c1] : memref<9x3xi16>, vector<9x8xi16>
        %317 = math.tan %7 : tensor<9x16xf32>
        %318 = arith.divf %cst_53, %cst_2 : f32
        %319 = arith.negf %cst_4 : f16
        %320 = arith.divui %false, %false_31 : i1
        %321 = math.cttz %false : i1
        %322 = math.log10 %188 : f32
        %323 = math.log10 %11 : tensor<9x16xf32>
        linalg.yield %c168234945_i32 : i32
      } -> tensor<16x8x16xi32>
      %288 = memref.alloca_scope  -> (i1) {
        %293 = vector.transpose %206, [1, 0] : vector<9x16xf32> to vector<16x9xf32>
        vector.print %71 : vector<9xf32>
        %294 = arith.maxf %188, %188 : f32
        %295 = vector.broadcast %false_39 : i1 to vector<9xi1>
        vector.transfer_write %295, %alloc_6[%c11, %98] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi1>, memref<9x3xi1>
        %296 = math.cttz %c565215290_i64 : i64
        %alloc_50 = memref.alloc() : memref<16x8x16xi16>
        %297 = vector.broadcast %c-16131_i16 : i16 to vector<9x8xi16>
        %298 = vector.gather %alloc_50[%rank, %222, %c6] [%136], %282, %297 : memref<16x8x16xi16>, vector<9x8xi32>, vector<9x8xi1>, vector<9x8xi16> into vector<9x8xi16>
        %299 = math.atan %16 : tensor<16x8x16xf32>
        %300 = index.casts %c26531_i16 : i16 to index
        %alloca_51 = memref.alloca() : memref<9x8xi64>
        %false_52 = index.bool.constant false
        %301 = arith.mulf %cst, %123 : f32
        %302 = arith.shli %false_31, %false_31 : i1
        %303 = index.mul %c9, %158
        %cst_53 = arith.constant 1.000000e+00 : f32
        %cst_54 = arith.constant 0.000000e+00 : f32
        %304 = vector.transfer_read %13[%46, %108, %95], %cst_54 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<16x8x16xf32>, vector<8xf32>
        %305 = arith.maxf %cst, %123 : f32
        %306 = math.atan %163 : tensor<9x9xf32>
        %307 = vector.load %alloc_11[%c8, %c1] : memref<9x8xf32>, vector<9x8xf32>
        %308 = vector.load %alloc_9[%c8, %c0] : memref<9x3xf16>, vector<16x8x16xf16>
        %alloc_55 = memref.alloc() : memref<16x3xi16>
        %309 = tensor.empty() : tensor<9x3xi16>
        %310 = linalg.matmul ins(%181, %alloc_55 : tensor<9x16xi16>, memref<16x3xi16>) outs(%309 : tensor<9x3xi16>) -> tensor<9x3xi16>
        %311 = math.log1p %11 : tensor<9x16xf32>
        %312 = math.fpowi %7, %73 : tensor<9x16xf32>, tensor<9x16xi32>
        %alloca_56 = memref.alloca() : memref<9x8xf32>
        %313 = arith.cmpf ueq, %70, %232 : f16
        %314 = index.divu %98, %183
        %315 = math.log %8 : tensor<16x8x16xf32>
        %316 = vector.multi_reduction <minui>, %135, %295 [1] : vector<9x8xi1> to vector<9xi1>
        %317 = vector.broadcast %c26528801_i32 : i32 to vector<8xi32>
        %318 = vector.broadcast %59 : i1 to vector<8xi1>
        %319 = vector.maskedload %184[%c14, %c6, %c4], %318, %317 : memref<16x8x16xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %320 = math.roundeven %4 : tensor<9x8xf32>
        %321 = arith.ori %c2075337556_i64, %c2075337556_i64 : i64
        %322 = memref.realloc %alloc_20 : memref<16xi64> to memref<3xi64>
        memref.assume_alignment %alloc_15, 1 : memref<9x8xf16>
        %323 = index.castu %107 : index to i32
        memref.alloca_scope.return %true : i1
      }
      %289 = vector.create_mask %37, %231, %c0 : vector<16x8x16xi1>
      %290 = bufferization.clone %alloc_16 : memref<16x8x16xf16> to memref<16x8x16xf16>
      %291 = math.ctpop %19 : tensor<16x8xi1>
      %292 = math.ctlz %0 : tensor<9x8xi32>
      scf.yield %c0 : index
    }
    %258 = arith.minf %cst_3, %cst_3 : f16
    %259 = index.maxu %38, %108
    vector.print %206 : vector<9x16xf32>
    %260 = arith.maxui %true_24, %true_32 : i1
    %261 = math.round %170 : tensor<9x9xf32>
    %262 = vector.bitcast %71 : vector<9xf32> to vector<9xf32>
    %263 = arith.addi %c26531_i16, %c-16423_i16 : i16
    %264 = arith.ori %59, %true : i1
    %265 = math.log10 %232 : f16
    %266 = math.atan %16 : tensor<16x8x16xf32>
    %267 = memref.atomic_rmw maxu %c-16131_i16, %alloc_18[%c8, %c7] : (i16, memref<9x16xi16>) -> i16
    %268 = vector.broadcast %123 : f32 to vector<16x8x16xf32>
    %269 = arith.andi %c-25754_i16, %c-25754_i16 : i16
    %270 = math.atan2 %11, %9 : tensor<9x16xf32>
    vector.print %173 : vector<9x8xi1>
    %271 = tensor.empty() : tensor<9x3xi64>
    %272 = linalg.copy ins(%12 : tensor<9x3xi64>) outs(%271 : tensor<9x3xi64>) -> tensor<9x3xi64>
    %alloc_46 = memref.alloc() : memref<3x9xi64>
    linalg.transpose ins(%272 : tensor<9x3xi64>) outs(%alloc_46 : memref<3x9xi64>) permutation = [1, 0] 
    %273 = tensor.empty() : tensor<16xf32>
    %reduced_47 = linalg.reduce ins(%11 : tensor<9x16xf32>) outs(%273 : tensor<16xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %276 = arith.divui %c-25754_i16, %c-16131_i16 : i16
        %277 = vector.gather %1[%38, %37, %259] [%214], %146, %215 : tensor<16x8x16xi1>, vector<16x8x16xi32>, vector<16x8x16xi1>, vector<16x8x16xi1> into vector<16x8x16xi1>
        %278 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
        %279 = vector.outerproduct %71, %262, %278 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
        %280 = index.ceildivs %c4, %128
        %rank_48 = tensor.rank %101 : tensor<9x16xi1>
        %281 = index.floordivs %c7, %256
        %282 = vector.insert %true_37, %68 [1] : i1 into vector<3xi1>
        %283 = scf.while (%arg1 = %70) : (f16) -> f16 {
          %284 = math.tanh %16 : tensor<16x8x16xf32>
          %285 = bufferization.to_tensor %alloc_14 : memref<9x3xf16>
          %286 = index.maxu %c11, %220
          %287 = index.maxs %c1, %128
          vector.print %214 : vector<16x8x16xi32>
          %288 = math.copysign %285, %285 : tensor<9x3xf16>
          %289 = index.maxs %c12, %239
          %cst_50 = arith.constant 1.000000e+00 : f32
          %cst_51 = arith.constant 0.000000e+00 : f32
          %290 = vector.transfer_read %alloc_13[%158, %239, %c15], %cst_51 : memref<16x8x16xf32>, vector<f32>
          scf.condition(%true) %232 : f16
        } do {
        ^bb0(%arg1: f16):
          %284 = arith.divf %123, %in : f32
          %285 = math.absi %217 : tensor<9x8xi32>
          memref.assume_alignment %alloc_16, 4 : memref<16x8x16xf16>
          %286 = memref.realloc %alloc_20 : memref<16xi64> to memref<9xi64>
          %287 = vector.broadcast %cst : f32 to vector<9x9xf32>
          %288 = vector.outerproduct %262, %53, %287 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
          %splat = tensor.splat %cst_1 : tensor<16x8x16xf16>
          %289 = math.tan %4 : tensor<9x8xf32>
          %290 = memref.atomic_rmw addf %in, %alloc_13[%c12, %c4, %c15] : (f32, memref<16x8x16xf32>) -> f32
          %291 = math.absi %c164473535_i64 : i64
          %292 = bufferization.clone %41 : memref<9x8xf16> to memref<9x8xf16>
          %293 = index.mul %231, %256
          %true_50 = index.bool.constant true
          %294 = index.maxu %c15, %c14
          %295 = math.roundeven %8 : tensor<16x8x16xf32>
          %296 = math.atan %163 : tensor<9x9xf32>
          %extracted = tensor.extract %16[%c4, %c2, %c1] : tensor<16x8x16xf32>
          scf.yield %arg1 : f16
        }
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    %274 = scf.parallel (%arg1, %arg2) = (%c14, %c9) to (%239, %c4) step (%c8, %c9) init (%68) -> vector<3xi1> {
      %276 = math.cttz %1 : tensor<16x8x16xi1>
      %277 = math.exp2 %125 : tensor<16x9xf32>
      %278 = math.cttz %c26531_i16 : i16
      %279 = tensor.empty() : tensor<8x16xi1>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%202, %reduced, %279 : tensor<16x16xi1>, tensor<16x8xi1>, tensor<8x16xi1>) outs(%15 : tensor<16x8x16xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out: i1):
        %292 = math.ceil %8 : tensor<16x8x16xf32>
        %293 = math.powf %232, %cst_3 : f16
        %alloc_51 = memref.alloc() : memref<3x3xi16>
        %294 = tensor.empty() : tensor<9x3xi16>
        %295 = linalg.matmul ins(%193, %alloc_51 : tensor<9x3xi16>, memref<3x3xi16>) outs(%294 : tensor<9x3xi16>) -> tensor<9x3xi16>
        %296 = bufferization.to_tensor %169 : memref<9x3xi16>
        %alloc_52 = memref.alloc() : memref<9x9xf32>
        memref.tensor_store %170, %alloc_52 : memref<9x9xf32>
        %297 = vector.load %alloc_15[%c0, %c1] : memref<9x8xf16>, vector<9x3xf16>
        %alloc_53 = memref.alloc() : memref<9x8xi32>
        memref.tensor_store %0, %alloc_53 : memref<9x8xi32>
        %298 = memref.atomic_rmw mins %c26528801_i32, %184[%c10, %c6, %c8] : (i32, memref<16x8x16xi32>) -> i32
        %299 = arith.shli %in, %true : i1
        %300 = memref.load %184[%c6, %c0, %c9] : memref<16x8x16xi32>
        %301 = vector.broadcast %67 : i64 to vector<9x3xi64>
        %302 = index.ceildivs %221, %c5
        %303 = index.maxu %38, %183
        %304 = arith.maxf %70, %cst_0 : f16
        %305 = arith.remui %c2075337556_i64, %c565215290_i64 : i64
        %306 = math.powf %4, %4 : tensor<9x8xf32>
        %307 = bufferization.clone %alloc_18 : memref<9x16xi16> to memref<9x16xi16>
        %308 = arith.shrui %out, %false : i1
        %309 = math.ceil %17 : tensor<16x8x16xf32>
        %310 = arith.ceildivsi %in, %false_31 : i1
        %311 = index.maxs %256, %arg1
        %312 = vector.create_mask %c0, %221 : vector<9x3xi1>
        %true_54 = index.bool.constant true
        %alloca_55 = memref.alloca() : memref<16x8x16xi64>
        %313 = arith.andi %c168234945_i32, %c26528801_i32 : i32
        %c415534065_i32 = arith.constant 415534065 : i32
        %314 = math.expm1 %cst_0 : f16
        %315 = bufferization.clone %alloc_10 : memref<16x8x16xi1> to memref<16x8x16xi1>
        %316 = vector.broadcast %in : i1 to vector<8xi1>
        %317 = vector.multi_reduction <maxui>, %251, %316 [0] : vector<9x8xi1> to vector<8xi1>
        %318 = bufferization.to_memref %21 : memref<16xi64>
        %319 = index.ceildivu %c4, %302
        %320 = math.fma %18, %125, %125 : tensor<16x9xf32>
        linalg.yield %in_50 : i1
      } -> tensor<16x8x16xi1>
      memref.assume_alignment %253, 1 : memref<16x8x16xf32>
      %281 = math.roundeven %6 : tensor<9x3xf16>
      %282 = arith.minf %70, %cst_4 : f16
      %283 = vector.broadcast %true_24 : i1 to vector<16x16xi1>
      %284 = vector.multi_reduction <add>, %88, %283 [1] : vector<16x8x16xi1> to vector<16x16xi1>
      %285 = arith.shrui %c164473535_i64, %c164473535_i64 : i64
      %286 = vector.insert %188, %262 [1] : f32 into vector<9xf32>
      %287 = affine.for %arg3 = 0 to 123 iter_args(%arg4 = %alloc_12) -> (memref<9x3xf32>) {
        affine.yield %alloc_12 : memref<9x3xf32>
      }
      %288 = arith.minf %70, %cst_3 : f16
      %289 = arith.maxf %cst_0, %cst_1 : f16
      memref.alloca_scope  {
        %292 = math.fpowi %9, %73 : tensor<9x16xf32>, tensor<9x16xi32>
        %293 = arith.shli %false, %false : i1
        %alloc_49 = memref.alloc() : memref<8x8xi32>
        %294 = tensor.empty() : tensor<9x8xi32>
        %295 = linalg.matmul ins(%0, %alloc_49 : tensor<9x8xi32>, memref<8x8xi32>) outs(%294 : tensor<9x8xi32>) -> tensor<9x8xi32>
        %296 = math.cttz %1 : tensor<16x8x16xi1>
        %cast_50 = tensor.cast %272 : tensor<9x3xi64> to tensor<?x?xi64>
        %297 = math.ctlz %0 : tensor<9x8xi32>
        %298 = index.ceildivs %108, %c12
        memref.tensor_store %8, %alloc_13 : memref<16x8x16xf32>
        %299 = math.absf %7 : tensor<9x16xf32>
        %300 = arith.remsi %true_32, %true_24 : i1
        %301 = math.round %cst : f32
        %302 = index.ceildivs %rank, %132
        %303 = index.add %c11, %c0
        %304 = math.atan2 %cst_4, %cst_4 : f16
        %305 = math.roundeven %11 : tensor<9x16xf32>
        %306 = arith.minf %cst_3, %cst_3 : f16
        %307 = index.sub %c13, %234
        %308 = math.atan2 %170, %170 : tensor<9x9xf32>
        %309 = arith.cmpf true, %232, %cst_0 : f16
        %310 = vector.bitcast %283 : vector<16x16xi1> to vector<16x16xi1>
        %311 = index.floordivs %239, %arg1
        %312 = math.expm1 %123 : f32
        %313 = index.ceildivs %239, %c12
        %314 = math.powf %reduced_47, %reduced_47 : tensor<16xf32>
        %315 = index.mul %c6, %c13
        %316 = math.cos %17 : tensor<16x8x16xf32>
        %317 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        %dest, %accumulated_value = vector.scan <add>, %198, %317 {inclusive = true, reduction_dim = 1 : i64} : vector<9x3xf16>, vector<9xf16>
        %alloca_51 = memref.alloca() : memref<9x3xi64>
        %318 = math.ceil %cst_4 : f16
        %319 = vector.transpose %135, [0, 1] : vector<9x8xi1> to vector<9x8xi1>
        %320 = arith.addf %cst_2, %123 : f32
        %321 = index.ceildivu %98, %107
      }
      %290 = tensor.empty() : tensor<9x3xi16>
      %mapped_48 = linalg.map ins(%169, %193, %alloc_19 : memref<9x3xi16>, tensor<9x3xi16>, memref<9x3xi16>) outs(%290 : tensor<9x3xi16>)
        (%in: i16, %in_49: i16, %in_50: i16) {
          %292 = vector.broadcast %c3 : index to vector<8xindex>
          %293 = vector.broadcast %true_32 : i1 to vector<8xi1>
          %294 = vector.broadcast %c168234945_i32 : i32 to vector<8xi32>
          vector.scatter %alloc_8[%c1, %c2, %c8] [%292], %293, %294 : memref<16x8x16xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
          %295 = math.copysign %cst_1, %cst_4 : f16
          %296 = index.add %183, %147
          %297 = affine.load %alloc_16[%c9, %c13, %c4] : memref<16x8x16xf16>
          %298 = math.ceil %7 : tensor<9x16xf32>
          %299 = vector.broadcast %false_31 : i1 to vector<16xi1>
          %300 = vector.multi_reduction <add>, %228, %299 [0] : vector<9x16xi1> to vector<16xi1>
          %301 = arith.muli %c26531_i16, %in_49 : i16
          %302 = vector.broadcast %in_49 : i16 to vector<i16>
          %303 = vector.transfer_write %302, %193[%220, %c0] : vector<i16>, tensor<9x3xi16>
          %304 = arith.addi %true, %59 : i1
          %305 = arith.shrsi %in_49, %c26531_i16 : i16
          %306 = math.absf %6 : tensor<9x3xf16>
          %307 = math.round %11 : tensor<9x16xf32>
          %308 = vector.insert %188, %71 [0] : f32 into vector<9xf32>
          %309 = math.ctlz %15 : tensor<16x8x16xi1>
          %c1_i32 = arith.constant 1 : i32
          %310 = vector.transfer_read %217[%c9, %rank], %c1_i32 : tensor<9x8xi32>, vector<i32>
          %311 = math.tan %cst : f32
          %alloc_51 = memref.alloc() : memref<9x8xi32>
          %312 = math.ipowi %1, %15 : tensor<16x8x16xi1>
          %313 = arith.divsi %false_31, %true_29 : i1
          %rank_52 = tensor.rank %125 : tensor<16x9xf32>
          %314 = memref.atomic_rmw andi %c26528801_i32, %alloc_8[%c1, %c5, %c1] : (i32, memref<16x8x16xi32>) -> i32
          %315 = index.divu %95, %107
          %from_elements_53 = tensor.from_elements %c2075337556_i64, %c565215290_i64, %67, %c164473535_i64, %67, %c164473535_i64, %c565215290_i64, %c2075337556_i64, %c565215290_i64, %c164473535_i64, %c164473535_i64, %67, %c565215290_i64, %67, %c565215290_i64, %c565215290_i64, %67, %c565215290_i64, %c565215290_i64, %c565215290_i64, %c164473535_i64, %67, %c565215290_i64, %67, %67, %67, %c2075337556_i64, %c565215290_i64, %c565215290_i64, %c565215290_i64, %c565215290_i64, %c2075337556_i64, %c2075337556_i64, %c164473535_i64, %c2075337556_i64, %c164473535_i64, %c2075337556_i64, %67, %c164473535_i64, %67, %c565215290_i64, %c565215290_i64, %c164473535_i64, %c565215290_i64, %c565215290_i64, %c164473535_i64, %c2075337556_i64, %c565215290_i64, %c164473535_i64, %c2075337556_i64, %c164473535_i64, %c565215290_i64, %c2075337556_i64, %c164473535_i64, %67, %c2075337556_i64, %c2075337556_i64, %c164473535_i64, %c2075337556_i64, %c2075337556_i64, %67, %c164473535_i64, %c565215290_i64, %c565215290_i64, %c164473535_i64, %67, %c164473535_i64, %c565215290_i64, %c565215290_i64, %c164473535_i64, %c565215290_i64, %67, %c2075337556_i64, %c2075337556_i64, %c565215290_i64, %c565215290_i64, %67, %c2075337556_i64, %c164473535_i64, %67, %c565215290_i64, %c164473535_i64, %67, %c164473535_i64, %c2075337556_i64, %67, %c565215290_i64, %c565215290_i64, %c2075337556_i64, %c565215290_i64, %c565215290_i64, %c164473535_i64, %c565215290_i64, %67, %c164473535_i64, %c565215290_i64, %c2075337556_i64, %c2075337556_i64, %c2075337556_i64, %c565215290_i64, %c565215290_i64, %c2075337556_i64, %67, %67, %67, %c164473535_i64, %c2075337556_i64, %c164473535_i64, %c565215290_i64, %c2075337556_i64, %c565215290_i64, %c2075337556_i64, %c565215290_i64, %c2075337556_i64, %c164473535_i64, %c2075337556_i64, %c2075337556_i64, %c565215290_i64, %c2075337556_i64, %c2075337556_i64, %67, %67, %67, %c164473535_i64, %c565215290_i64, %c164473535_i64, %c2075337556_i64, %c2075337556_i64, %c164473535_i64, %c565215290_i64, %c2075337556_i64, %c565215290_i64, %c2075337556_i64, %67, %c565215290_i64, %67, %c565215290_i64, %c2075337556_i64, %c2075337556_i64, %67, %67, %c2075337556_i64, %c2075337556_i64, %67 : tensor<9x16xi64>
          %316 = vector.broadcast %c26528801_i32 : i32 to vector<16xi32>
          %317 = vector.maskedload %184[%c12, %c5, %c15], %299, %316 : memref<16x8x16xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
          %318 = math.expm1 %16 : tensor<16x8x16xf32>
          %319 = bufferization.clone %alloc_18 : memref<9x16xi16> to memref<9x16xi16>
          %320 = math.ceil %232 : f16
          %321 = arith.mulf %cst_0, %232 : f16
          %322 = bufferization.to_tensor %29 : memref<16x8x16xi1>
          %323 = math.tan %113 : tensor<16x8x16xf32>
          %324 = arith.divf %70, %297 : f16
          %325 = arith.remsi %c-25754_i16, %c-16423_i16 : i16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %expanded = tensor.expand_shape %0 [[0], [1, 2]] : tensor<9x8xi32> into tensor<9x8x1xi32>
      %291 = vector.broadcast %true_37 : i1 to vector<3xi1>
      scf.reduce(%291)  : vector<3xi1> {
      ^bb0(%arg3: vector<3xi1>, %arg4: vector<3xi1>):
        %292 = arith.mulf %cst_2, %cst : f32
        %293 = index.sub %95, %c13
        %294 = vector.broadcast %188 : f32 to vector<f32>
        %295 = vector.transfer_write %294, %8[%c13, %183, %221] : vector<f32>, tensor<16x8x16xf32>
        %true_49 = index.bool.constant true
        %296 = math.log2 %13 : tensor<16x8x16xf32>
        %cast_50 = tensor.cast %13 : tensor<16x8x16xf32> to tensor<?x?x?xf32>
        %297 = arith.addi %false_31, %59 : i1
        memref.tensor_store %17, %253 : memref<16x8x16xf32>
        %298 = vector.broadcast %true : i1 to vector<3xi1>
        scf.reduce.return %298 : vector<3xi1>
      }
      scf.yield
    }
    %275 = affine.vector_load %alloc_6[%108, %c14] : memref<9x3xi1>, vector<16xi1>
    affine.vector_store %49, %alloc_19[%33, %c2] : memref<9x3xi16>, vector<8xi16>
    vector.print %20 : vector<9xf32>
    vector.print %39 : vector<9x8xf32>
    vector.print %40 : vector<9x8xf32>
    vector.print %49 : vector<8xi16>
    vector.print %53 : vector<9xf32>
    vector.print %68 : vector<3xi1>
    vector.print %71 : vector<9xf32>
    vector.print %77 : vector<9x8xf32>
    vector.print %88 : vector<16x8x16xi1>
    vector.print %99 : vector<16x8x16xi16>
    vector.print %134 : vector<9x8xf16>
    vector.print %135 : vector<9x8xi1>
    vector.print %136 : vector<9x8xi32>
    vector.print %137 : vector<9x8xf16>
    vector.print %146 : vector<16x8x16xi1>
    vector.print %173 : vector<9x8xi1>
    vector.print %174 : vector<i64>
    vector.print %198 : vector<9x3xf16>
    vector.print %204 : vector<16x8x16xf32>
    vector.print %205 : vector<16x8x16xf32>
    vector.print %206 : vector<9x16xf32>
    vector.print %214 : vector<16x8x16xi32>
    vector.print %215 : vector<16x8x16xi1>
    vector.print %228 : vector<9x16xi1>
    vector.print %251 : vector<9x8xi1>
    vector.print %262 : vector<9xf32>
    vector.print %268 : vector<16x8x16xf32>
    vector.print %275 : vector<16xi1>
    vector.print %c164473535_i64 : i64
    vector.print %c-25754_i16 : i16
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c2075337556_i64 : i64
    vector.print %c-16423_i16 : i16
    vector.print %true : i1
    vector.print %c565215290_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c26528801_i32 : i32
    vector.print %c168234945_i32 : i32
    vector.print %cst_3 : f16
    vector.print %c-16131_i16 : i16
    vector.print %c26531_i16 : i16
    vector.print %cst_4 : f16
    vector.print %true_24 : i1
    vector.print %59 : i1
    vector.print %67 : i64
    vector.print %70 : f16
    vector.print %true_29 : i1
    vector.print %123 : f32
    vector.print %false : i1
    vector.print %false_31 : i1
    vector.print %true_32 : i1
    vector.print %188 : f32
    vector.print %232 : f16
    vector.print %true_37 : i1
    vector.print %false_39 : i1
    return %221 : index
  }
}
