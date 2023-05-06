module {
  func.func @func1(%arg0: i1, %arg1: index) {
    %c1953646482_i64 = arith.constant 1953646482 : i64
    %cst = arith.constant 0x4E6297F6 : f32
    %c1710492121_i32 = arith.constant 1710492121 : i32
    %cst_0 = arith.constant 5.436000e+03 : f16
    %c-28697_i16 = arith.constant -28697 : i16
    %c252830507_i64 = arith.constant 252830507 : i64
    %c677189089_i64 = arith.constant 677189089 : i64
    %cst_1 = arith.constant 5.862400e+04 : f16
    %cst_2 = arith.constant 8.592000e+03 : f16
    %false = arith.constant false
    %cst_3 = arith.constant 6.728000e+03 : f16
    %c22723_i16 = arith.constant 22723 : i16
    %true = arith.constant true
    %c1385183345_i32 = arith.constant 1385183345 : i32
    %c1244010096_i64 = arith.constant 1244010096 : i64
    %cst_4 = arith.constant 5.395200e+04 : f16
    %0 = tensor.empty() : tensor<9x9x9xi16>
    %1 = tensor.empty() : tensor<2x2xi64>
    %2 = tensor.empty() : tensor<2x10xi1>
    %3 = tensor.empty() : tensor<9x9x10xi16>
    %4 = tensor.empty() : tensor<9x9x10xf32>
    %5 = tensor.empty() : tensor<9x9x9xi16>
    %6 = tensor.empty() : tensor<9x9x10xi32>
    %7 = tensor.empty() : tensor<2x2xf16>
    %8 = tensor.empty() : tensor<2x10xf32>
    %9 = tensor.empty() : tensor<2x10xi16>
    %10 = tensor.empty() : tensor<9x9x10xf16>
    %11 = tensor.empty() : tensor<2x10xi64>
    %12 = tensor.empty() : tensor<2x10xf32>
    %13 = tensor.empty() : tensor<2x2xi1>
    %14 = tensor.empty() : tensor<9x9x9xf32>
    %15 = tensor.empty() : tensor<2x10xi32>
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
    %alloc = memref.alloc() : memref<2x2xi16>
    %alloc_5 = memref.alloc() : memref<9x9x10xf32>
    %alloc_6 = memref.alloc() : memref<9x9x10xi32>
    %alloc_7 = memref.alloc() : memref<9x9x9xf32>
    %alloc_8 = memref.alloc() : memref<2x2xi32>
    %alloc_9 = memref.alloc() : memref<9x9x9xi32>
    %alloc_10 = memref.alloc() : memref<9x9x9xf16>
    %alloc_11 = memref.alloc() : memref<9x9x10xf16>
    %alloc_12 = memref.alloc() : memref<2x10xi16>
    %alloc_13 = memref.alloc() : memref<2x2xi16>
    %alloc_14 = memref.alloc() : memref<2x10xi32>
    %alloc_15 = memref.alloc() : memref<2x2xf32>
    %alloc_16 = memref.alloc() : memref<9x9x10xi32>
    %alloc_17 = memref.alloc() : memref<9x9x10xi64>
    %alloc_18 = memref.alloc() : memref<2x10xi64>
    %alloc_19 = memref.alloc() : memref<2x10xf32>
    %16 = tensor.empty() : tensor<9x9x9xf32>
    %17 = linalg.copy ins(%14 : tensor<9x9x9xf32>) outs(%16 : tensor<9x9x9xf32>) -> tensor<9x9x9xf32>
    %alloc_20 = memref.alloc() : memref<10x9x9xf32>
    linalg.transpose ins(%alloc_5 : memref<9x9x10xf32>) outs(%alloc_20 : memref<10x9x9xf32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<9xf32>
    %reduced = linalg.reduce ins(%17 : tensor<9x9x9xf32>) outs(%18 : tensor<9xf32>) dimensions = [1, 2] 
      (%in: f32, %init: f32) {
        %271 = arith.minsi %c-28697_i16, %c-28697_i16 : i16
        %272 = vector.broadcast %c252830507_i64 : i64 to vector<9x9x9xi64>
        %273 = vector.broadcast %false : i1 to vector<9x9x9xi1>
        %274 = vector.broadcast %c1385183345_i32 : i32 to vector<9x9x9xi32>
        %275 = vector.gather %alloc_18[%c2, %c7] [%274], %273, %272 : memref<2x10xi64>, vector<9x9x9xi32>, vector<9x9x9xi1>, vector<9x9x9xi64> into vector<9x9x9xi64>
        affine.for %arg2 = 0 to 61 {
        }
        %276 = math.ctpop %6 : tensor<9x9x10xi32>
        bufferization.dealloc_tensor %5 : tensor<9x9x9xi16>
        %277 = vector.broadcast %in : f32 to vector<2x10xf32>
        %inserted_44 = tensor.insert %cst into %16[%c8, %c1, %c8] : tensor<9x9x9xf32>
        %278 = math.log2 %8 : tensor<2x10xf32>
        %cst_45 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_45 : f32
      }
    %19 = scf.parallel (%arg2) = (%c8) to (%c3) step (%c12) init (%c252830507_i64) -> i64 {
      %271 = vector.broadcast %cst_1 : f16 to vector<1xf16>
      %272 = vector.multi_reduction <maxf>, %271, %cst_2 [0] : vector<1xf16> to f16
      %273 = index.ceildivu %c7, %c7
      %274 = math.ceil %7 : tensor<2x2xf16>
      %275 = tensor.empty() : tensor<9x9x9xi32>
      %276 = math.fpowi %16, %275 : tensor<9x9x9xf32>, tensor<9x9x9xi32>
      %277 = vector.broadcast %c1 : index to vector<10xindex>
      %278 = vector.broadcast %false : i1 to vector<10xi1>
      %279 = vector.broadcast %c-28697_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_12[%c0, %c5] [%277], %278, %279 : memref<2x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %280 = math.fma %7, %7, %7 : tensor<2x2xf16>
      %collapsed_44 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x9x9xf32> into tensor<81x9xf32>
      %281 = vector.broadcast %272 : f16 to vector<10xf16>
      %282 = vector.broadcast %true : i1 to vector<10xi1>
      %283 = vector.maskedload %alloc_11[%c5, %c1, %c7], %282, %281 : memref<9x9x10xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %cst_45 = arith.constant 1.000000e+00 : f32
      %284 = vector.transfer_read %12[%c2, %c14], %cst_45 : tensor<2x10xf32>, vector<9xf32>
      %285 = bufferization.clone %alloc_6 : memref<9x9x10xi32> to memref<9x9x10xi32>
      memref.alloca_scope  {
        %alloc_46 = memref.alloc() : memref<5xf16>
        %291 = memref.realloc %alloc_46 : memref<5xf16> to memref<9xf16>
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %271, %271, %cst_4 : vector<1xf16>, vector<1xf16> into f16
        %293 = index.sizeof
        %true_47 = index.bool.constant true
        %294 = vector.multi_reduction <or>, %282, %282 [] : vector<10xi1> to vector<10xi1>
        %295 = memref.load %alloc_16[%c2, %c4, %c8] : memref<9x9x10xi32>
        %296 = math.cos %16 : tensor<9x9x9xf32>
        %297 = arith.minsi %c252830507_i64, %c252830507_i64 : i64
        %298 = vector.create_mask %c8, %arg2 : vector<2x2xi1>
        %alloc_48 = memref.alloc() : memref<9x9x10xf16>
        memref.copy %alloc_11, %alloc_48 : memref<9x9x10xf16> to memref<9x9x10xf16>
        %alloc_49 = memref.alloc() : memref<10xi1>
        %299 = memref.realloc %alloc_49 : memref<10xi1> to memref<10xi1>
        %alloc_50 = memref.alloc() : memref<2x2xf32>
        %c-1703_i16 = arith.constant -1703 : i16
        %300 = vector.extract_strided_slice %271 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %301 = arith.maxf %cst_45, %cst_45 : f32
        %302 = index.divs %c15, %c10
        %303 = index.sizeof
        %304 = math.log1p %cst_2 : f16
        %305 = arith.addi %c252830507_i64, %c1953646482_i64 : i64
        %306 = bufferization.clone %alloc_15 : memref<2x2xf32> to memref<2x2xf32>
        %307 = math.floor %8 : tensor<2x10xf32>
        %308 = arith.shli %c677189089_i64, %c1244010096_i64 : i64
        %309 = arith.ceildivsi %c1953646482_i64, %c1953646482_i64 : i64
        %alloc_51 = memref.alloc() : memref<2x10xi64>
        %310 = arith.addi %c1710492121_i32, %c1710492121_i32 : i32
        affine.store %cst_45, %alloc_5[%c15, %c4, %c8] : memref<9x9x10xf32>
        %311 = bufferization.clone %alloc_11 : memref<9x9x10xf16> to memref<9x9x10xf16>
        %312 = arith.divui %false, %false : i1
        %313 = arith.remf %cst_0, %cst_2 : f16
        vector.print %281 : vector<10xf16>
        %from_elements_52 = tensor.from_elements %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c-28697_i16, %c-28697_i16, %c22723_i16, %c-28697_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16, %c22723_i16 : tensor<9x9x9xi16>
        %314 = math.ctlz %c22723_i16 : i16
      }
      %286 = math.log2 %cst_1 : f16
      %287 = math.fma %14, %14, %17 : tensor<9x9x9xf32>
      %288 = arith.divui %c252830507_i64, %c1953646482_i64 : i64
      %289 = index.add %arg2, %c12
      %290 = affine.if affine_set<(d0, d1) : ((d1 * 16 + 128) * 4 + 128 >= 0, d0 * 4 >= 0, d1 * 16 == 0)>(%c13, %c10) -> memref<2x2xi64> {
        %291 = arith.ori %c1710492121_i32, %c1385183345_i32 : i32
        %292 = arith.addi %c1244010096_i64, %c1953646482_i64 : i64
        %293 = index.castu %c252830507_i64 : i64 to index
        %294 = vector.broadcast %272 : f16 to vector<f16>
        %295 = vector.transfer_write %294, %7[%c10, %c8] : vector<f16>, tensor<2x2xf16>
        %296 = arith.andi %c1710492121_i32, %c1385183345_i32 : i32
        %297 = math.log1p %8 : tensor<2x10xf32>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %298 = vector.transfer_read %10[%c8, %c2, %c10], %cst_47 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<9x9x10xf16>, vector<9x5xf16>
        %299 = math.ipowi %2, %2 : tensor<2x10xi1>
        %alloc_48 = memref.alloc() : memref<2x2xi64>
        affine.yield %alloc_48 : memref<2x2xi64>
      } else {
        %291 = affine.min affine_map<(d0, d1) -> (d0 * 2 + 32)>(%c11, %c14)
        %cast = tensor.cast %1 : tensor<2x2xi64> to tensor<?x?xi64>
        %292 = vector.extract_strided_slice %282 {offsets = [3], sizes = [4], strides = [1]} : vector<10xi1> to vector<4xi1>
        %293 = arith.cmpi eq, %true, %false : i1
        memref.assume_alignment %alloc, 8 : memref<2x2xi16>
        %294 = math.log %8 : tensor<2x10xf32>
        %295 = arith.divsi %c1244010096_i64, %c1953646482_i64 : i64
        %extracted_46 = tensor.extract %9[%c0, %c1] : tensor<2x10xi16>
        %alloc_47 = memref.alloc() : memref<2x2xi64>
        affine.yield %alloc_47 : memref<2x2xi64>
      }
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        %291 = math.ctpop %false : i1
        %292 = math.ctpop %false : i1
        %293 = vector.broadcast %c1385183345_i32 : i32 to vector<2x10xi32>
        %294 = arith.cmpf ugt, %272, %cst_1 : f16
        %cast = tensor.cast %9 : tensor<2x10xi16> to tensor<?x?xi16>
        %false_46 = index.bool.constant false
        %295 = arith.xori %c1953646482_i64, %c677189089_i64 : i64
        %296 = math.round %12 : tensor<2x10xf32>
        %c1_i64_47 = arith.constant 1 : i64
        scf.reduce.return %c1_i64_47 : i64
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c6, %c1] : memref<2x2xi16>, vector<9xi16>
    affine.vector_store %20, %alloc_12[%c13, %c4] : memref<2x10xi16>, vector<9xi16>
    %alloc_21 = memref.alloc() : memref<9xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%18, %alloc_21 : tensor<9xf32>, memref<9xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = math.fma %14, %14, %16 : tensor<9x9x9xf32>
    %24 = arith.minui %false, %false : i1
    %25 = math.log2 %7 : tensor<2x2xf16>
    %26 = math.ipowi %3, %3 : tensor<9x9x10xi16>
    %27 = math.cttz %5 : tensor<9x9x9xi16>
    %splat = tensor.splat %c252830507_i64 : tensor<2x10xi64>
    %28 = affine.if affine_set<(d0) : ((-(d0 mod 128)) ceildiv 4 >= 0, d0 mod 128 + 1 >= 0)>(%c8) -> memref<2x2xf32> {
      %alloc_44 = memref.alloc() : memref<9x9x10xf32>
      memref.copy %alloc_5, %alloc_44 : memref<9x9x10xf32> to memref<9x9x10xf32>
      %271 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
      %272 = index.add %c7, %c5
      %273 = bufferization.to_memref %22 : memref<f32>
      %274 = math.exp2 %10 : tensor<9x9x10xf16>
      %275 = arith.minui %c1385183345_i32, %c1710492121_i32 : i32
      %276 = math.ceil %7 : tensor<2x2xf16>
      %277 = index.mul %c2, %c13
      affine.yield %alloc_15 : memref<2x2xf32>
    } else {
      %271 = bufferization.to_tensor %alloc_9 : memref<9x9x9xi32>
      %272 = index.casts %c12 : index to i32
      %extracted_44 = tensor.extract %7[%c1, %c1] : tensor<2x2xf16>
      %273 = vector.matrix_multiply %20, %20 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
      %274 = math.exp2 %cst_4 : f16
      %275 = bufferization.clone %alloc_7 : memref<9x9x9xf32> to memref<9x9x9xf32>
      %276 = math.ctlz %2 : tensor<2x10xi1>
      %277 = vector.reduction <minsi>, %20 : vector<9xi16> into i16
      affine.yield %alloc_15 : memref<2x2xf32>
    }
    %29 = vector.broadcast %c10 : index to vector<10xindex>
    %30 = vector.broadcast %false : i1 to vector<10xi1>
    %31 = vector.broadcast %cst : f32 to vector<10xf32>
    vector.scatter %alloc_19[%c0, %c4] [%29], %30, %31 : memref<2x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
    %32 = arith.maxsi %false, %true : i1
    %33 = math.absf %7 : tensor<2x2xf16>
    %34 = arith.cmpi sge, %c252830507_i64, %c252830507_i64 : i64
    %35 = vector.insertelement %c-28697_i16, %20[%c7 : index] : vector<9xi16>
    %c1_i16 = arith.constant 1 : i16
    %36 = vector.transfer_read %alloc[%c2, %c5], %c1_i16 : memref<2x2xi16>, vector<i16>
    %37 = math.log1p %cst_2 : f16
    %38 = math.log2 %4 : tensor<9x9x10xf32>
    %39 = arith.shrsi %false, %true : i1
    %false_22 = index.bool.constant false
    %40 = index.mul %c11, %c5
    %41 = affine.min affine_map<(d0, d1) -> (d1 floordiv 2 - 16)>(%c13, %c14)
    %42 = arith.xori %true, %false_22 : i1
    %43 = index.floordivs %c12, %c1
    %rank = tensor.rank %15 : tensor<2x10xi32>
    %false_23 = arith.constant false
    %44 = math.ceil %14 : tensor<9x9x9xf32>
    %45 = vector.broadcast %c1_i16 : i16 to vector<9x9xi16>
    %46 = vector.outerproduct %20, %20, %45 {kind = #vector.kind<add>} : vector<9xi16>, vector<9xi16>
    %47 = arith.remf %cst_0, %cst_3 : f16
    %48 = index.mul %c11, %c12
    %49 = math.log1p %12 : tensor<2x10xf32>
    %50 = math.log2 %reduced : tensor<9xf32>
    %51 = math.round %17 : tensor<9x9x9xf32>
    %52 = arith.ceildivsi %true, %false_22 : i1
    %53 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %20, %c22723_i16 : vector<9xi16>, vector<9xi16> into i16
    %54 = arith.mulf %cst_4, %cst_0 : f16
    %55 = math.ctlz %13 : tensor<2x2xi1>
    %56 = math.log %17 : tensor<9x9x9xf32>
    %57 = math.tan %7 : tensor<2x2xf16>
    %58 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c-28697_i16 : vector<9xi16>, vector<9xi16> into i16
    %59 = math.absf %cst_2 : f16
    %60 = affine.min affine_map<(d0, d1) -> (d1 floordiv 2 + 8)>(%41, %48)
    %from_elements = tensor.from_elements %cst_0, %cst_4, %cst_4, %cst_0 : tensor<2x2xf16>
    %61 = vector.create_mask %c10, %c0, %c1 : vector<9x9x9xi1>
    %62 = math.exp %12 : tensor<2x10xf32>
    %63 = index.floordivs %c1, %60
    %64 = math.ctlz %11 : tensor<2x10xi64>
    %65 = index.castu %true : i1 to index
    %66 = vector.reduction <maxui>, %20 : vector<9xi16> into i16
    %67 = index.sizeof
    %68 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 4, d1 - d2 * 64 - 2, d1 - d2 * 64 - 2, 0)>(%c2, %65, %c5)
    %69 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %c1_i16 : vector<9xi16>, vector<9xi16> into i16
    %70 = arith.mulf %cst_2, %cst_3 : f16
    %71 = math.log1p %17 : tensor<9x9x9xf32>
    %72 = memref.realloc %alloc_21 : memref<9xf32> to memref<10xf32>
    %73 = vector.create_mask %40, %41, %68 : vector<9x9x9xi1>
    %74 = vector.reduction <and>, %20 : vector<9xi16> into i16
    %75 = arith.subi %c22723_i16, %c22723_i16 : i16
    %76 = vector.create_mask %c8, %c2, %c7 : vector<9x9x9xi1>
    %77 = math.ctlz %6 : tensor<9x9x10xi32>
    %78 = math.cos %cst_1 : f16
    %79 = arith.muli %c252830507_i64, %c677189089_i64 : i64
    %80 = index.castu %c10 : index to i32
    %81 = arith.minf %cst_1, %cst_1 : f16
    %82 = arith.shrui %c1710492121_i32, %c1385183345_i32 : i32
    %83 = arith.addf %cst, %cst : f32
    %84 = index.castu %c14 : index to i32
    %85 = arith.negf %cst_2 : f16
    %86 = math.ctlz %9 : tensor<2x10xi16>
    %87 = math.tanh %cst_3 : f16
    %88 = math.cttz %c677189089_i64 : i64
    %89 = arith.xori %c1710492121_i32, %c1385183345_i32 : i32
    %90 = arith.maxui %false_22, %false_22 : i1
    %false_24 = index.bool.constant false
    %91 = math.ctlz %c22723_i16 : i16
    %92 = math.exp2 %cst_3 : f16
    %93 = bufferization.clone %alloc_6 : memref<9x9x10xi32> to memref<9x9x10xi32>
    %94 = arith.maxsi %c1244010096_i64, %c1244010096_i64 : i64
    %95 = vector.broadcast %c-28697_i16 : i16 to vector<9x9xi16>
    %96 = vector.outerproduct %20, %20, %95 {kind = #vector.kind<or>} : vector<9xi16>, vector<9xi16>
    %97 = vector.create_mask %rank, %c3, %c6 : vector<9x9x10xi1>
    %98 = arith.shrsi %c677189089_i64, %c677189089_i64 : i64
    %99 = math.round %14 : tensor<9x9x9xf32>
    %100 = math.exp %4 : tensor<9x9x10xf32>
    %101 = arith.divf %cst_1, %cst_1 : f16
    %102 = vector.create_mask %c14, %c7, %c7 : vector<9x9x10xi1>
    %103 = arith.floordivsi %c1_i16, %c1_i16 : i16
    %104 = bufferization.clone %alloc_7 : memref<9x9x9xf32> to memref<9x9x9xf32>
    memref.assume_alignment %alloc_10, 2 : memref<9x9x9xf16>
    %105 = vector.load %alloc_8[%c1, %c1] : memref<2x2xi32>, vector<9x9x10xi32>
    %106 = math.cttz %c677189089_i64 : i64
    %107 = vector.matrix_multiply %20, %20 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
    %108 = vector.broadcast %c1385183345_i32 : i32 to vector<9x9xi32>
    %109 = vector.multi_reduction <and>, %105, %108 [2] : vector<9x9x10xi32> to vector<9x9xi32>
    %110 = vector.broadcast %cst : f32 to vector<2x10xf32>
    %111 = vector.fma %110, %110, %110 : vector<2x10xf32>
    %alloc_25 = memref.alloc() : memref<9x9x9xf32>
    %112 = tensor.empty() : tensor<9x9x9xi32>
    %113 = math.fpowi %16, %112 : tensor<9x9x9xf32>, tensor<9x9x9xi32>
    %inserted = tensor.insert %c1385183345_i32 into %15[%c1, %c6] : tensor<2x10xi32>
    %114 = arith.muli %false_24, %false_22 : i1
    %115 = math.tan %22 : tensor<f32>
    %c1_i64 = arith.constant 1 : i64
    %116 = vector.transfer_read %11[%c2, %c15], %c1_i64 : tensor<2x10xi64>, vector<5xi64>
    %117 = math.log1p %cst_4 : f16
    %118 = index.sizeof
    scf.index_switch %c10 
    case 1 {
      %271 = index.add %63, %118
      %272 = affine.load %alloc_6[%c6, %c1, %c6] : memref<9x9x10xi32>
      %alloc_44 = memref.alloc() : memref<10x5xi64>
      %273 = tensor.empty() : tensor<2x5xi64>
      %274 = linalg.matmul ins(%splat, %alloc_44 : tensor<2x10xi64>, memref<10x5xi64>) outs(%273 : tensor<2x5xi64>) -> tensor<2x5xi64>
      %275 = math.ipowi %13, %13 : tensor<2x2xi1>
      %276 = arith.maxf %cst_4, %cst_3 : f16
      affine.store %cst_1, %alloc_10[%c0, %c0, %c6] : memref<9x9x9xf16>
      %277 = affine.apply affine_map<(d0, d1) -> (d0)>(%c4, %40)
      %278 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%68, %c1, %c8)
      %279 = arith.divui %false_22, %false_22 : i1
      %280 = vector.matrix_multiply %107, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi16>, vector<9xi16>) -> vector<9xi16>
      %281 = vector.reduction <mul>, %107 : vector<1xi16> into i16
      %282 = memref.atomic_rmw addi %272, %alloc_16[%c0, %c1, %c0] : (i32, memref<9x9x10xi32>) -> i32
      %283 = math.ctpop %9 : tensor<2x10xi16>
      %284 = math.round %8 : tensor<2x10xf32>
      %285 = math.exp %cst_0 : f16
      %286 = arith.cmpf true, %cst_0, %cst_3 : f16
      scf.yield
    }
    default {
      %271 = vector.extract_strided_slice %76 {offsets = [0, 4], sizes = [6, 5], strides = [1, 1]} : vector<9x9x9xi1> to vector<6x5x9xi1>
      %272 = vector.broadcast %c677189089_i64 : i64 to vector<2x10xi64>
      %273 = vector.broadcast %false : i1 to vector<2x10xi1>
      %274 = vector.broadcast %c1710492121_i32 : i32 to vector<2x10xi32>
      %275 = vector.gather %alloc_17[%c13, %c1, %c4] [%274], %273, %272 : memref<9x9x10xi64>, vector<2x10xi32>, vector<2x10xi1>, vector<2x10xi64> into vector<2x10xi64>
      %276 = arith.shrsi %c1710492121_i32, %c1385183345_i32 : i32
      %277 = math.log1p %14 : tensor<9x9x9xf32>
      %278 = vector.broadcast %43 : index to vector<9xindex>
      %279 = vector.broadcast %false_22 : i1 to vector<9xi1>
      vector.scatter %alloc_12[%c1, %c5] [%278], %279, %20 : memref<2x10xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
      %280 = arith.addf %cst_0, %cst_0 : f16
      %281 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + d0 * 32 == 0, d3 ceildiv 16 == 0, d3 + d0 * 32 == 0)>(%c10, %c5, %c8, %c5) -> memref<9x9x10xi32> {
        %290 = math.round %10 : tensor<9x9x10xf16>
        %291 = affine.min affine_map<(d0) -> ((d0 mod 32) mod 64, ((d0 * 3) floordiv 4) mod 4, (d0 * 3) floordiv 64)>(%c15)
        %292 = vector.extract_strided_slice %20 {offsets = [4], sizes = [4], strides = [1]} : vector<9xi16> to vector<4xi16>
        %293 = index.mul %67, %c7
        %294 = arith.divui %c-28697_i16, %c-28697_i16 : i16
        %295 = arith.muli %c1244010096_i64, %c1_i64 : i64
        %296 = arith.maxsi %c1_i16, %c-28697_i16 : i16
        %alloca_45 = memref.alloca() : memref<9x9x10xi16>
        affine.yield %93 : memref<9x9x10xi32>
      } else {
        %extracted_45 = tensor.extract %12[%c0, %c7] : tensor<2x10xf32>
        %cast = tensor.cast %10 : tensor<9x9x10xf16> to tensor<?x?x?xf16>
        memref.store %c1385183345_i32, %alloc_14[%c1, %c4] : memref<2x10xi32>
        memref.copy %alloc_7, %104 : memref<9x9x9xf32> to memref<9x9x9xf32>
        %290 = vector.extract %102[4, 2] : vector<9x9x10xi1>
        %291 = arith.addf %cst_1, %cst_4 : f16
        %292 = bufferization.to_tensor %alloc_18 : memref<2x10xi64>
        %293 = bufferization.to_tensor %alloc_17 : memref<9x9x10xi64>
        affine.yield %alloc_16 : memref<9x9x10xi32>
      }
      %282 = index.divs %41, %c8
      %283 = vector.broadcast %c22723_i16 : i16 to vector<i16>
      vector.transfer_write %283, %alloc[%c12, %60] : vector<i16>, memref<2x2xi16>
      %284 = index.divu %c15, %c8
      %285 = math.cttz %15 : tensor<2x10xi32>
      %286 = math.ceil %8 : tensor<2x10xf32>
      %false_44 = index.bool.constant false
      %287 = tensor.empty(%118) : tensor<9x?x10xi16>
      %288 = arith.ori %true, %false_24 : i1
      %289 = index.maxs %c3, %c11
    }
    %119 = vector.insertelement %c-28697_i16, %107[%c0 : index] : vector<1xi16>
    %120 = tensor.empty() : tensor<9x9x9xi64>
    %121 = vector.broadcast %c1244010096_i64 : i64 to vector<9x9x10xi64>
    %122 = vector.gather %120[%c12, %67, %40] [%105], %97, %121 : tensor<9x9x9xi64>, vector<9x9x10xi32>, vector<9x9x10xi1>, vector<9x9x10xi64> into vector<9x9x10xi64>
    %123 = math.log1p %from_elements : tensor<2x2xf16>
    %124 = arith.floordivsi %c1_i64, %c1953646482_i64 : i64
    %125 = memref.load %alloc_11[%c7, %c6, %c2] : memref<9x9x10xf16>
    %126 = arith.minf %cst_0, %cst_1 : f16
    %127 = math.fpowi %4, %6 : tensor<9x9x10xf32>, tensor<9x9x10xi32>
    %128 = vector.reduction <minsi>, %20 : vector<9xi16> into i16
    %alloc_26 = memref.alloc() : memref<2x10xf32>
    memref.copy %alloc_19, %alloc_26 : memref<2x10xf32> to memref<2x10xf32>
    %129 = scf.while (%arg2 = %alloc_18) : (memref<2x10xi64>) -> memref<2x10xi64> {
      %271 = math.ipowi %false_22, %false_24 : i1
      %272 = vector.reduction <or>, %107 : vector<1xi16> into i16
      %273 = arith.maxsi %c1244010096_i64, %c1_i64 : i64
      %274 = math.exp2 %7 : tensor<2x2xf16>
      %275 = math.cttz %c677189089_i64 : i64
      %276 = affine.max affine_map<(d0, d1, d2) -> (-((-d1) mod 8), -((-d1) mod 8), d2, 0)>(%rank, %40, %65)
      %277 = arith.shrui %false_24, %true : i1
      %extracted_44 = tensor.extract %10[%c0, %c6, %c5] : tensor<9x9x10xf16>
      scf.condition(%false) %alloc_18 : memref<2x10xi64>
    } do {
    ^bb0(%arg2: memref<2x10xi64>):
      %271 = arith.muli %c1_i16, %c-28697_i16 : i16
      %272 = index.castu %c1244010096_i64 : i64 to index
      %273 = scf.while (%arg3 = %cst_1) : (f16) -> f16 {
        %288 = math.log1p %4 : tensor<9x9x10xf32>
        %289 = vector.extract_strided_slice %61 {offsets = [4], sizes = [4], strides = [1]} : vector<9x9x9xi1> to vector<4x9x9xi1>
        %290 = vector.shuffle %105, %105 [0, 1, 2, 4, 5, 6, 8, 9, 10, 12, 15] : vector<9x9x10xi32>, vector<9x9x10xi32>
        %291 = bufferization.clone %alloc_21 : memref<9xf32> to memref<9xf32>
        %292 = arith.maxsi %c-28697_i16, %c1_i16 : i16
        %293 = arith.cmpi uge, %c-28697_i16, %c-28697_i16 : i16
        %294 = math.atan2 %cst_0, %cst_2 : f16
        %295 = math.ceil %10 : tensor<9x9x10xf16>
        scf.condition(%false_22) %cst_1 : f16
      } do {
      ^bb0(%arg3: f16):
        %288 = bufferization.clone %104 : memref<9x9x9xf32> to memref<9x9x9xf32>
        %289 = math.tanh %8 : tensor<2x10xf32>
        %290 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 128) floordiv 32 + 4)>(%41, %67, %c14)
        memref.store %cst, %288[%c7, %c6, %c1] : memref<9x9x9xf32>
        %true_46 = index.bool.constant true
        %291 = arith.divui %c252830507_i64, %c252830507_i64 : i64
        %292 = math.log2 %cst : f32
        %293 = arith.ori %c22723_i16, %c1_i16 : i16
        %294 = bufferization.to_tensor %alloc_18 : memref<2x10xi64>
        %295 = index.sizeof
        %296 = vector.broadcast %c1953646482_i64 : i64 to vector<2xi64>
        vector.transfer_write %296, %arg2[%118, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi64>, memref<2x10xi64>
        %297 = arith.maxsi %c252830507_i64, %c252830507_i64 : i64
        %298 = arith.cmpi ugt, %c1244010096_i64, %c1_i64 : i64
        %299 = arith.divsi %c677189089_i64, %c1_i64 : i64
        %300 = math.log %12 : tensor<2x10xf32>
        %alloc_47 = memref.alloc() : memref<10x2xi64>
        %301 = tensor.empty() : tensor<2x2xi64>
        %302 = linalg.matmul ins(%11, %alloc_47 : tensor<2x10xi64>, memref<10x2xi64>) outs(%301 : tensor<2x2xi64>) -> tensor<2x2xi64>
        scf.yield %cst_2 : f16
      }
      %274 = math.rsqrt %4 : tensor<9x9x10xf32>
      %275 = math.absi %11 : tensor<2x10xi64>
      %276 = math.absi %false_22 : i1
      %277 = math.tan %4 : tensor<9x9x10xf32>
      %278 = arith.addf %cst_3, %cst_1 : f16
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %279 = vector.transfer_read %alloc_10[%63, %c10, %c9], %cst_45 : memref<9x9x9xf16>, vector<f16>
      %280 = tensor.empty() : tensor<i32>
      %281 = math.fpowi %21, %280 : tensor<f32>, tensor<i32>
      %282 = math.ctlz %c1953646482_i64 : i64
      %283 = arith.cmpi ult, %c1385183345_i32, %c1385183345_i32 : i32
      %284 = vector.insertelement %c1_i16, %20[%c8 : index] : vector<9xi16>
      %285 = index.casts %c12 : index to i32
      %286 = affine.for %arg3 = 0 to 97 iter_args(%arg4 = %76) -> (vector<9x9x9xi1>) {
        affine.yield %76 : vector<9x9x9xi1>
      }
      %287 = arith.remf %cst_1, %cst_0 : f16
      scf.yield %arg2 : memref<2x10xi64>
    }
    %130 = arith.shli %c1_i16, %c-28697_i16 : i16
    %131 = arith.remf %cst_0, %cst_0 : f16
    %132 = arith.remf %cst_4, %cst_0 : f16
    %133 = math.log1p %from_elements : tensor<2x2xf16>
    %134 = arith.remsi %c22723_i16, %c1_i16 : i16
    %135 = math.ceil %from_elements : tensor<2x2xf16>
    %136 = arith.addi %true, %true : i1
    %137 = vector.broadcast %cst : f32 to vector<9x9x10xf32>
    %138 = vector.fma %137, %137, %137 : vector<9x9x10xf32>
    %139 = vector.flat_transpose %20 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
    %140 = bufferization.clone %alloc_9 : memref<9x9x9xi32> to memref<9x9x9xi32>
    %141 = math.roundeven %cst : f32
    %142 = memref.realloc %alloc_21 : memref<9xf32> to memref<2xf32>
    %splat_27 = tensor.splat %cst_1 : tensor<2x2xf16>
    %143 = memref.realloc %alloc_21 : memref<9xf32> to memref<2xf32>
    %144 = arith.remui %true, %false_22 : i1
    %145 = arith.maxui %c677189089_i64, %c677189089_i64 : i64
    %146 = scf.while (%arg2 = %c1385183345_i32) : (i32) -> i32 {
      %extracted_44 = tensor.extract %9[%c1, %c8] : tensor<2x10xi16>
      %271 = arith.minsi %false_22, %false_22 : i1
      %272 = arith.mulf %cst_2, %cst_0 : f16
      %273 = memref.realloc %alloc_21 : memref<9xf32> to memref<9xf32>
      %c1642067156_i32 = arith.constant 1642067156 : i32
      %274 = tensor.empty() : tensor<9x9x10xf16>
      %mapped_45 = linalg.map ins(%10 : tensor<9x9x10xf16>) outs(%274 : tensor<9x9x10xf16>)
        (%in: f16) {
          %277 = vector.splat %c8 : vector<2x2xindex>
          %rank_46 = tensor.rank %from_elements : tensor<2x2xf16>
          %278 = math.log1p %splat_27 : tensor<2x2xf16>
          %279 = bufferization.to_tensor %alloc_9 : memref<9x9x9xi32>
          %280 = vector.broadcast %false : i1 to vector<10xi1>
          %281 = vector.transfer_write %280, %13[%65, %40] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, tensor<2x2xi1>
          %282 = math.round %10 : tensor<9x9x10xf16>
          %283 = vector.reduction <or>, %107 : vector<1xi16> into i16
          %284 = math.round %splat_27 : tensor<2x2xf16>
          %285 = arith.cmpi uge, %c252830507_i64, %c252830507_i64 : i64
          %286 = vector.broadcast %false : i1 to vector<9x9xi1>
          %287 = vector.insert %286, %73 [8] : vector<9x9xi1> into vector<9x9x9xi1>
          %288 = arith.andi %c1710492121_i32, %c1385183345_i32 : i32
          %289 = arith.cmpf one, %cst_1, %cst_0 : f16
          %collapsed_47 = tensor.collapse_shape %7 [[0, 1]] : tensor<2x2xf16> into tensor<4xf16>
          %290 = affine.max affine_map<(d0) -> (0)>(%c7)
          affine.store %cst, %alloc_21[%c12] : memref<9xf32>
          %291 = arith.shrui %true, %false_22 : i1
          %292 = arith.cmpi eq, %c-28697_i16, %c22723_i16 : i16
          %293 = math.ctlz %c677189089_i64 : i64
          %294 = arith.divui %c22723_i16, %c22723_i16 : i16
          %295 = vector.create_mask %c6, %c0, %290 : vector<9x9x9xi1>
          %296 = math.rsqrt %splat_27 : tensor<2x2xf16>
          %cst_48 = arith.constant 2.06966426E+9 : f32
          %297 = math.ctpop %5 : tensor<9x9x9xi16>
          %cst_49 = arith.constant 0x4E3A353A : f32
          %298 = vector.insertelement %false_22, %280[%c3 : index] : vector<10xi1>
          affine.store %arg2, %alloc_16[%c15, %c2, %c1] : memref<9x9x10xi32>
          %inserted_50 = tensor.insert %cst into %4[%c7, %c4, %c5] : tensor<9x9x10xf32>
          %alloc_51 = memref.alloc() : memref<9x9x10xi16>
          %299 = vector.broadcast %extracted_44 : i16 to vector<9x9x10xi16>
          %300 = vector.gather %alloc_51[%c14, %c14, %c6] [%105], %97, %299 : memref<9x9x10xi16>, vector<9x9x10xi32>, vector<9x9x10xi1>, vector<9x9x10xi16> into vector<9x9x10xi16>
          %301 = math.log2 %14 : tensor<9x9x9xf32>
          %splat_52 = tensor.splat %true : tensor<9x9x10xi1>
          %302 = affine.min affine_map<(d0, d1) -> ((d1 - 16) * 8, d0, -d1)>(%c2, %rank_46)
          %303 = arith.remsi %c22723_i16, %c22723_i16 : i16
          %cst_53 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_53 : f16
        }
      %275 = math.cos %cst_0 : f16
      %276 = index.floordivs %63, %43
      scf.condition(%false) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %271 = arith.ceildivsi %false_22, %false : i1
      %collapsed_44 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<9x9x9xf32> into tensor<81x9xf32>
      affine.store %c1385183345_i32, %140[%c9, %c15, %c4] : memref<9x9x9xi32>
      %272 = math.cttz %c1_i64 : i64
      %273 = vector.insertelement %c22723_i16, %139[%60 : index] : vector<9xi16>
      %274 = index.add %65, %65
      %275 = vector.broadcast %c22723_i16 : i16 to vector<9x9x10xi16>
      %276 = math.round %7 : tensor<2x2xf16>
      %277 = affine.load %alloc_15[%c13, %c6] : memref<2x2xf32>
      affine.store %cst, %alloc_15[%c10, %c0] : memref<2x2xf32>
      memref.store %c677189089_i64, %alloc_18[%c1, %c6] : memref<2x10xi64>
      %false_45 = index.bool.constant false
      memref.store %cst_4, %alloc_10[%c7, %c2, %c2] : memref<9x9x9xf16>
      %278 = math.atan %4 : tensor<9x9x10xf32>
      %279 = math.atan2 %277, %277 : f32
      %280 = math.log1p %cst_2 : f16
      scf.yield %arg2 : i32
    }
    %147 = arith.xori %false, %true : i1
    %148 = memref.load %alloc_7[%c7, %c7, %c1] : memref<9x9x9xf32>
    %149 = arith.minf %cst, %cst : f32
    %150 = memref.atomic_rmw assign %cst, %alloc_5[%c5, %c8, %c4] : (f32, memref<9x9x10xf32>) -> f32
    %151 = arith.cmpi sge, %false, %false_22 : i1
    %152 = math.ceil %cst_4 : f16
    %153 = memref.load %93[%c0, %c6, %c6] : memref<9x9x10xi32>
    %154 = math.fma %cst_1, %cst_4, %cst_0 : f16
    %155 = index.castu %c12 : index to i32
    %156 = arith.andi %false_22, %false_24 : i1
    %157 = arith.addi %false_24, %false_22 : i1
    %158 = arith.cmpi ugt, %c1710492121_i32, %c1710492121_i32 : i32
    %159 = vector.insertelement %c-28697_i16, %107[%65 : index] : vector<1xi16>
    %160 = math.tan %7 : tensor<2x2xf16>
    %161 = vector.broadcast %60 : index to vector<5xindex>
    %162 = vector.broadcast %false_24 : i1 to vector<5xi1>
    %163 = vector.broadcast %c1710492121_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_9[%c6, %c8, %c6] [%161], %162, %163 : memref<9x9x9xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %inserted_28 = tensor.insert %cst into %8[%c0, %c8] : tensor<2x10xf32>
    %164 = scf.while (%arg2 = %alloc_9) : (memref<9x9x9xi32>) -> memref<9x9x9xi32> {
      %271 = arith.divsi %c1953646482_i64, %c677189089_i64 : i64
      %272 = index.divs %c4, %48
      %273 = vector.broadcast %63 : index to vector<2xindex>
      %274 = vector.broadcast %false : i1 to vector<2xi1>
      %275 = vector.broadcast %c1385183345_i32 : i32 to vector<2xi32>
      vector.scatter %140[%c3, %c4, %c8] [%273], %274, %275 : memref<9x9x9xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %276 = arith.cmpf true, %cst_4, %cst_0 : f16
      %277 = arith.addf %cst_4, %cst_0 : f16
      %278 = index.ceildivs %c12, %c14
      %true_44 = index.bool.constant true
      %279 = index.add %60, %40
      scf.condition(%true_44) %140 : memref<9x9x9xi32>
    } do {
    ^bb0(%arg2: memref<9x9x9xi32>):
      %271 = vector.broadcast %false_24 : i1 to vector<9xi1>
      %272 = vector.multi_reduction <mul>, %73, %271 [1, 2] : vector<9x9x9xi1> to vector<9xi1>
      %273 = arith.cmpf ogt, %cst_0, %cst_4 : f16
      %274 = arith.subi %true, %false_22 : i1
      %275 = math.ctlz %2 : tensor<2x10xi1>
      %276 = math.log %4 : tensor<9x9x10xf32>
      %277 = arith.muli %false_22, %false_22 : i1
      %278 = index.castu %c11 : index to i32
      %279 = vector.insertelement %c-28697_i16, %139[%43 : index] : vector<9xi16>
      %splat_44 = tensor.splat %c22723_i16 : tensor<2x2xi16>
      %280 = scf.execute_region -> vector<2x10xf16> {
        %inserted_45 = tensor.insert %cst_1 into %7[%c1, %c1] : tensor<2x2xf16>
        %287 = vector.matrix_multiply %107, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi16>, vector<9xi16>) -> vector<9xi16>
        %alloc_46 = memref.alloc() : memref<9xf32>
        memref.copy %alloc_21, %alloc_46 : memref<9xf32> to memref<9xf32>
        %288 = vector.broadcast %cst : f32 to vector<9x9x9xf32>
        %289 = vector.broadcast %c1385183345_i32 : i32 to vector<9x9x9xi32>
        %290 = vector.gather %16[%c0, %c15, %65] [%289], %73, %288 : tensor<9x9x9xf32>, vector<9x9x9xi32>, vector<9x9x9xi1>, vector<9x9x9xf32> into vector<9x9x9xf32>
        %extracted_47 = tensor.extract %4[%c2, %c7, %c0] : tensor<9x9x10xf32>
        %291 = arith.maxsi %c22723_i16, %c22723_i16 : i16
        %292 = arith.minui %false_22, %false_22 : i1
        %293 = vector.broadcast %false_24 : i1 to vector<9x9x9x9xi1>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %61, %61, %293 : vector<9x9x9xi1>, vector<9x9x9xi1> into vector<9x9x9x9xi1>
        %295 = memref.realloc %alloc_21 : memref<9xf32> to memref<2xf32>
        %296 = arith.floordivsi %true, %false_24 : i1
        %297 = math.log1p %cst_0 : f16
        %298 = arith.minui %true, %true : i1
        %299 = vector.broadcast %c677189089_i64 : i64 to vector<9x9x9xi64>
        %300 = vector.gather %1[%c2, %41] [%289], %61, %299 : tensor<2x2xi64>, vector<9x9x9xi32>, vector<9x9x9xi1>, vector<9x9x9xi64> into vector<9x9x9xi64>
        %301 = index.floordivs %c12, %60
        %302 = math.ipowi %112, %112 : tensor<9x9x9xi32>
        %inserted_48 = tensor.insert %cst into %8[%c0, %c1] : tensor<2x10xf32>
        %303 = vector.broadcast %cst_2 : f16 to vector<2x10xf16>
        scf.yield %303 : vector<2x10xf16>
      }
      %281 = arith.shrui %true, %false_22 : i1
      %282 = arith.xori %c-28697_i16, %c22723_i16 : i16
      %283 = index.ceildivs %c1, %c4
      %284 = affine.min affine_map<(d0, d1) -> (d0)>(%c5, %67)
      %285 = index.add %c9, %48
      %286 = affine.for %arg3 = 0 to 79 iter_args(%arg4 = %splat) -> (tensor<2x10xi64>) {
        affine.yield %11 : tensor<2x10xi64>
      }
      scf.yield %arg2 : memref<9x9x9xi32>
    }
    %165 = vector.broadcast %c1385183345_i32 : i32 to vector<9x9x9xi32>
    %166 = arith.andi %c1953646482_i64, %c1953646482_i64 : i64
    %167 = scf.index_switch %67 -> f32 
    case 1 {
      %271 = math.atan2 %4, %4 : tensor<9x9x10xf32>
      %272 = math.roundeven %22 : tensor<f32>
      %273 = vector.reduction <and>, %20 : vector<9xi16> into i16
      %274 = math.floor %splat_27 : tensor<2x2xf16>
      %275 = math.ipowi %13, %13 : tensor<2x2xi1>
      %alloc_44 = memref.alloc() : memref<2x2xi32>
      memref.copy %alloc_8, %alloc_44 : memref<2x2xi32> to memref<2x2xi32>
      %276 = vector.broadcast %48 : index to vector<5xindex>
      %277 = vector.broadcast %false_24 : i1 to vector<5xi1>
      %278 = vector.broadcast %c1710492121_i32 : i32 to vector<5xi32>
      vector.scatter %alloc_9[%c6, %c2, %c1] [%276], %277, %278 : memref<9x9x9xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x10xi1> into tensor<20xi1>
      %279 = scf.while (%arg2 = %c1953646482_i64) : (i64) -> i64 {
        %288 = math.ipowi %2, %2 : tensor<2x10xi1>
        %289 = arith.remui %c-28697_i16, %c1_i16 : i16
        %290 = arith.xori %c1710492121_i32, %c1710492121_i32 : i32
        %291 = math.cos %10 : tensor<9x9x10xf16>
        %292 = math.exp %10 : tensor<9x9x10xf16>
        %293 = math.atan %cst_0 : f16
        %294 = index.sizeof
        %295 = vector.broadcast %c22723_i16 : i16 to vector<9x9xi16>
        %296 = vector.outerproduct %139, %139, %295 {kind = #vector.kind<minsi>} : vector<9xi16>, vector<9xi16>
        scf.condition(%true) %c677189089_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %288 = vector.broadcast %c1_i16 : i16 to vector<9x9x9xi16>
        %289 = vector.gather %alloc_13[%c12, %c8] [%165], %73, %288 : memref<2x2xi16>, vector<9x9x9xi32>, vector<9x9x9xi1>, vector<9x9x9xi16> into vector<9x9x9xi16>
        %alloca_46 = memref.alloca() : memref<2x2xi1>
        %290 = arith.subi %arg2, %arg2 : i64
        %291 = math.log %14 : tensor<9x9x9xf32>
        %292 = math.ctpop %9 : tensor<2x10xi16>
        %293 = arith.shrui %false_24, %false_22 : i1
        %294 = math.round %cst_2 : f16
        %295 = math.cttz %1 : tensor<2x2xi64>
        %296 = math.fma %4, %4, %4 : tensor<9x9x10xf32>
        %collapsed_47 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<9x9x10xf32> into tensor<81x10xf32>
        %297 = arith.remui %true, %false_24 : i1
        %298 = math.round %8 : tensor<2x10xf32>
        %299 = vector.transpose %76, [0, 2, 1] : vector<9x9x9xi1> to vector<9x9x9xi1>
        %300 = vector.broadcast %c1385183345_i32 : i32 to vector<2x10xi32>
        %301 = arith.muli %c1_i64, %c1244010096_i64 : i64
        %302 = vector.broadcast %false_24 : i1 to vector<2x10xi1>
        %303 = vector.gather %6[%40, %48, %c10] [%300], %302, %300 : tensor<9x9x10xi32>, vector<2x10xi32>, vector<2x10xi1>, vector<2x10xi32> into vector<2x10xi32>
        scf.yield %c1953646482_i64 : i64
      }
      %280 = arith.shrui %c1_i64, %c1953646482_i64 : i64
      %281 = vector.broadcast %cst_2 : f16 to vector<10x5xf16>
      %282 = vector.transfer_write %281, %10[%118, %60, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x5xf16>, tensor<9x9x10xf16>
      %283 = arith.shrui %c677189089_i64, %c1_i64 : i64
      %284 = bufferization.clone %alloc_6 : memref<9x9x10xi32> to memref<9x9x10xi32>
      %285 = arith.shli %c1244010096_i64, %c1953646482_i64 : i64
      %286 = math.expm1 %reduced : tensor<9xf32>
      %287 = affine.load %alloc_18[%c15, %c10] : memref<2x10xi64>
      scf.yield %cst : f32
    }
    case 2 {
      %271 = arith.subi %c1_i16, %c1_i16 : i16
      %272 = vector.broadcast %false : i1 to vector<9x10x9x9xi1>
      %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %97, %73, %272 : vector<9x9x10xi1>, vector<9x9x9xi1> into vector<9x10x9x9xi1>
      affine.store %c1710492121_i32, %alloc_9[%c13, %c11, %c8] : memref<9x9x9xi32>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_44 = arith.constant 0 : i32
      %274 = vector.transfer_read %alloc_14[%c6, %c9], %c0_i32_44 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<2x10xi32>, vector<2xi32>
      %275 = index.divs %48, %c7
      %276 = affine.load %alloc_11[%c13, %c14, %c15] : memref<9x9x10xf16>
      %277 = math.ctlz %13 : tensor<2x2xi1>
      %278 = arith.ori %c1385183345_i32, %c1710492121_i32 : i32
      %279 = math.tan %4 : tensor<9x9x10xf32>
      %280 = tensor.empty() : tensor<9x9x9xi64>
      %281 = arith.mulf %cst_0, %cst_1 : f16
      %282 = index.castu %false_24 : i1 to index
      %283 = math.cttz %c1244010096_i64 : i64
      %284 = arith.maxui %c1385183345_i32, %c0_i32 : i32
      %extracted_45 = tensor.extract %12[%c1, %c2] : tensor<2x10xf32>
      %285 = math.cos %splat_27 : tensor<2x2xf16>
      scf.yield %extracted_45 : f32
    }
    case 3 {
      %271 = arith.cmpi ule, %true, %false_24 : i1
      affine.for %arg2 = 0 to 106 {
      }
      affine.for %arg2 = 0 to 62 {
      }
      %272 = arith.subi %true, %false_24 : i1
      affine.store %c252830507_i64, %alloc_17[%c9, %c7, %c12] : memref<9x9x10xi64>
      %273 = vector.broadcast %false_22 : i1 to vector<9x10xi1>
      %274 = vector.multi_reduction <maxsi>, %102, %273 [1] : vector<9x9x10xi1> to vector<9x10xi1>
      %collapsed_44 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x10xi1> into tensor<20xi1>
      %275 = bufferization.clone %alloc_21 : memref<9xf32> to memref<9xf32>
      %276 = math.fma %reduced, %reduced, %reduced : tensor<9xf32>
      %rank_45 = tensor.rank %112 : tensor<9x9x9xi32>
      %277 = tensor.empty(%65) : tensor<?x2xf16>
      %278 = affine.max affine_map<(d0, d1, d2) -> (d2 * 32)>(%60, %c10, %c15)
      %279 = affine.max affine_map<(d0, d1, d2, d3) -> (((d2 - 2) ceildiv 128) floordiv 64)>(%41, %c8, %c14, %c1)
      %280 = math.cttz %3 : tensor<9x9x10xi16>
      %281 = math.cos %cst_4 : f16
      %282 = vector.broadcast %c-28697_i16 : i16 to vector<1x1xi16>
      %283 = vector.outerproduct %107, %107, %282 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
      scf.yield %cst : f32
    }
    default {
      %rank_44 = tensor.rank %3 : tensor<9x9x10xi16>
      %271 = math.atan %7 : tensor<2x2xf16>
      %272 = math.log1p %8 : tensor<2x10xf32>
      %273 = arith.minui %c1953646482_i64, %c1244010096_i64 : i64
      %collapsed_45 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<9x9x9xi16> into tensor<81x9xi16>
      %274 = vector.broadcast %cst : f32 to vector<10xf32>
      %275 = vector.insert %274, %110 [1] : vector<10xf32> into vector<2x10xf32>
      %276 = math.tanh %16 : tensor<9x9x9xf32>
      %277 = index.mul %c12, %40
      %278 = math.exp %splat_27 : tensor<2x2xf16>
      %279 = vector.broadcast %41 : index to vector<2xindex>
      %280 = vector.broadcast %false_22 : i1 to vector<2xi1>
      %281 = vector.broadcast %c-28697_i16 : i16 to vector<2xi16>
      vector.scatter %alloc_13[%c1, %c0] [%279], %280, %281 : memref<2x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      %282 = arith.cmpf ule, %cst_0, %cst_0 : f16
      %283 = arith.divui %false_22, %false_22 : i1
      %284 = arith.ori %false_24, %false : i1
      %285 = vector.matrix_multiply %274, %274 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
      %286 = math.ctlz %splat : tensor<2x10xi64>
      %287 = arith.shli %false, %true : i1
      scf.yield %cst : f32
    }
    %168 = arith.muli %c1710492121_i32, %c1385183345_i32 : i32
    %169 = index.sizeof
    %170 = math.log2 %cst : f32
    %171 = arith.cmpf oeq, %cst_1, %cst_1 : f16
    %extracted = tensor.extract %22[] : tensor<f32>
    %172 = arith.shrui %true, %true : i1
    %173 = arith.xori %c1_i16, %c22723_i16 : i16
    %174 = vector.matrix_multiply %107, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi16>, vector<9xi16>) -> vector<9xi16>
    %alloc_29 = memref.alloc() : memref<9x9x10xf32>
    memref.copy %alloc_5, %alloc_29 : memref<9x9x10xf32> to memref<9x9x10xf32>
    %175 = math.cos %reduced : tensor<9xf32>
    %176 = math.exp %21 : tensor<f32>
    %177 = arith.remf %cst_1, %cst_3 : f16
    %178 = arith.shrsi %c1953646482_i64, %c1_i64 : i64
    %179 = math.log2 %14 : tensor<9x9x9xf32>
    %180 = vector.insertelement %c-28697_i16, %139[%169 : index] : vector<9xi16>
    %181 = vector.broadcast %c9 : index to vector<2xindex>
    %182 = vector.broadcast %false_24 : i1 to vector<2xi1>
    %183 = vector.broadcast %c1385183345_i32 : i32 to vector<2xi32>
    vector.scatter %alloc_9[%c4, %c5, %c1] [%181], %182, %183 : memref<9x9x9xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %184 = vector.insertelement %c1_i16, %174[%c10 : index] : vector<9xi16>
    %185 = arith.minf %extracted, %cst : f32
    %186 = vector.broadcast %c-28697_i16 : i16 to vector<1x1xi16>
    %187 = vector.outerproduct %107, %107, %186 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
    %alloc_30 = memref.alloc() : memref<10x10xf32>
    %188 = tensor.empty() : tensor<2x10xf32>
    %189 = linalg.matmul ins(%8, %alloc_30 : tensor<2x10xf32>, memref<10x10xf32>) outs(%188 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %190 = arith.addf %cst, %extracted : f32
    %191 = math.tanh %reduced : tensor<9xf32>
    %192 = math.atan2 %14, %14 : tensor<9x9x9xf32>
    %193 = arith.mulf %cst, %extracted : f32
    %true_31 = index.bool.constant true
    %alloc_32 = memref.alloc() : memref<9x9x10xf16>
    %194 = vector.broadcast %true : i1 to vector<9x10x9x10xi1>
    %195 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %97, %97, %194 : vector<9x9x10xi1>, vector<9x9x10xi1> into vector<9x10x9x10xi1>
    %196 = math.ctpop %c1710492121_i32 : i32
    %197 = arith.mulf %cst_3, %cst_1 : f16
    %extracted_33 = tensor.extract %0[%c5, %c2, %c7] : tensor<9x9x9xi16>
    %198 = arith.shrui %c22723_i16, %c1_i16 : i16
    %splat_34 = tensor.splat %c-28697_i16 : tensor<9x9x10xi16>
    memref.assume_alignment %alloc_12, 1 : memref<2x10xi16>
    %199 = arith.floordivsi %false_24, %true_31 : i1
    affine.for %arg2 = 0 to 75 {
    }
    %200 = math.rsqrt %12 : tensor<2x10xf32>
    %201 = math.cos %188 : tensor<2x10xf32>
    %202 = math.ceil %cst_4 : f16
    %203 = arith.addi %c-28697_i16, %c1_i16 : i16
    scf.if %true {
      %271 = math.ctlz %true : i1
      %272 = affine.if affine_set<(d0) : ((-(d0 mod 128)) ceildiv 4 >= 0, d0 mod 128 + 1 >= 0)>(%c5) -> i1 {
        %278 = arith.remsi %c1953646482_i64, %c677189089_i64 : i64
        %279 = vector.reduction <xor>, %107 : vector<1xi16> into i16
        %280 = math.ceil %reduced : tensor<9xf32>
        %alloc_45 = memref.alloc() : memref<2x2xi16>
        %281 = vector.broadcast %extracted : f32 to vector<2x2xf32>
        %282 = vector.broadcast %true_31 : i1 to vector<2x2xi1>
        %283 = vector.broadcast %c1710492121_i32 : i32 to vector<2x2xi32>
        %284 = vector.gather %alloc_15[%c0, %c3] [%283], %282, %281 : memref<2x2xf32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf32> into vector<2x2xf32>
        %285 = arith.maxui %false_22, %true : i1
        %286 = memref.load %alloc_19[%c1, %c0] : memref<2x10xf32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %174, %c1_i16 : vector<9xi16>, vector<9xi16> into i16
        affine.yield %false_22 : i1
      } else {
        %278 = arith.remf %extracted, %extracted : f32
        %279 = index.sizeof
        %280 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
        %c496747951_i32 = arith.constant 496747951 : i32
        %281 = tensor.empty() : tensor<9x9x9xi16>
        %282 = arith.shrsi %c1244010096_i64, %c252830507_i64 : i64
        %283 = math.tan %14 : tensor<9x9x9xf32>
        %284 = arith.remf %cst_4, %cst_4 : f16
        affine.yield %true : i1
      }
      %273 = arith.divsi %c252830507_i64, %c1953646482_i64 : i64
      %274 = arith.floordivsi %c677189089_i64, %c677189089_i64 : i64
      %275 = arith.minui %false_22, %true_31 : i1
      %276 = arith.ori %c1953646482_i64, %c1953646482_i64 : i64
      %277 = arith.floordivsi %c677189089_i64, %c1953646482_i64 : i64
      %extracted_44 = tensor.extract %7[%c1, %c0] : tensor<2x2xf16>
    } else {
      %271 = arith.shrsi %extracted_33, %c-28697_i16 : i16
      %272 = arith.divui %c252830507_i64, %c677189089_i64 : i64
      %273 = arith.xori %c1_i64, %c1953646482_i64 : i64
      %274 = arith.minui %false, %true : i1
      %extracted_44 = tensor.extract %splat_27[%c1, %c1] : tensor<2x2xf16>
      bufferization.dealloc_tensor %5 : tensor<9x9x9xi16>
      %275 = scf.execute_region -> vector<2x2xf16> {
        %277 = vector.extract_strided_slice %107 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %278 = vector.insertelement %c1_i16, %107[%67 : index] : vector<1xi16>
        %splat_45 = tensor.splat %c1_i16 : tensor<2x2xi16>
        %279 = affine.max affine_map<(d0) -> (d0 + (d0 mod 4) ceildiv 128, ((d0 + (d0 mod 4) ceildiv 128) mod 2) floordiv 32)>(%c13)
        %280 = arith.xori %true_31, %false : i1
        %rank_46 = tensor.rank %15 : tensor<2x10xi32>
        %281 = index.mul %c7, %c8
        %282 = math.log2 %extracted : f32
        %283 = math.round %cst_0 : f16
        %284 = math.log %8 : tensor<2x10xf32>
        %285 = arith.cmpf uno, %cst_1, %cst_2 : f16
        %286 = math.round %21 : tensor<f32>
        %287 = vector.broadcast %cst_0 : f16 to vector<2x10xf16>
        %288 = index.mul %c8, %48
        %c0_i64 = arith.constant 0 : i64
        %289 = vector.transfer_read %splat[%118, %169], %c0_i64 : tensor<2x10xi64>, vector<i64>
        %rank_47 = tensor.rank %0 : tensor<9x9x9xi16>
        %290 = vector.broadcast %extracted_44 : f16 to vector<2x2xf16>
        scf.yield %290 : vector<2x2xf16>
      }
      %276 = index.casts %c15 : index to i32
    }
    %204 = tensor.empty() : tensor<2x10xi1>
    %205 = linalg.matmul ins(%13, %2 : tensor<2x2xi1>, tensor<2x10xi1>) outs(%204 : tensor<2x10xi1>) -> tensor<2x10xi1>
    %206 = math.ipowi %13, %13 : tensor<2x2xi1>
    %207 = math.cttz %0 : tensor<9x9x9xi16>
    %208 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + d0 * 32 == 0, d3 ceildiv 16 == 0, d3 + d0 * 32 == 0)>(%c2, %c11, %c11, %c14) -> memref<2x2xf32> {
      %271 = affine.for %arg2 = 0 to 108 iter_args(%arg3 = %extracted) -> (f32) {
        affine.yield %extracted : f32
      }
      %272 = math.cttz %5 : tensor<9x9x9xi16>
      %alloc_44 = memref.alloc() : memref<10x2xi64>
      %273 = tensor.empty() : tensor<2x2xi64>
      %274 = linalg.matmul ins(%11, %alloc_44 : tensor<2x10xi64>, memref<10x2xi64>) outs(%273 : tensor<2x2xi64>) -> tensor<2x2xi64>
      %275 = arith.shli %c1244010096_i64, %c1953646482_i64 : i64
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%reduced : tensor<9xf32>) outs(%4 : tensor<9x9x10xf32>) {
      ^bb0(%in: f32, %out: f32):
        %279 = index.maxu %c12, %63
        %alloca_46 = memref.alloca() : memref<2x2xf32>
        %280 = index.maxu %c1, %c7
        %281 = arith.remf %extracted, %in : f32
        bufferization.dealloc_tensor %18 : tensor<9xf32>
        %collapsed_47 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x9x9xf32> into tensor<81x9xf32>
        %282 = math.log %14 : tensor<9x9x9xf32>
        %283 = arith.minui %false_24, %false_22 : i1
        %284 = math.copysign %splat_27, %from_elements : tensor<2x2xf16>
        %rank_48 = tensor.rank %2 : tensor<2x10xi1>
        %285 = vector.broadcast %cst : f32 to vector<9x9x10xf32>
        %286 = vector.fma %285, %138, %285 : vector<9x9x10xf32>
        %287 = index.divs %rank_48, %c5
        %288 = index.castu %41 : index to i32
        %289 = index.castu %43 : index to i32
        %290 = arith.mulf %cst_4, %cst_3 : f16
        %291 = math.floor %collapsed_47 : tensor<81x9xf32>
        %292 = math.log %cst_3 : f16
        %alloca_49 = memref.alloca() : memref<9x9x10xi1>
        %293 = math.cttz %9 : tensor<2x10xi16>
        memref.assume_alignment %alloc_18, 16 : memref<2x10xi64>
        %294 = vector.broadcast %c1_i16 : i16 to vector<9x9x9xi16>
        %295 = index.add %40, %60
        %296 = index.casts %true : i1 to index
        %297 = arith.remui %extracted_33, %c22723_i16 : i16
        %298 = vector.broadcast %c1385183345_i32 : i32 to vector<10xi32>
        %299 = vector.broadcast %true : i1 to vector<10xi1>
        %300 = vector.maskedload %140[%c4, %c5, %c0], %299, %298 : memref<9x9x9xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %301 = arith.divui %false_24, %false_24 : i1
        %302 = bufferization.clone %alloc_14 : memref<2x10xi32> to memref<2x10xi32>
        %303 = arith.maxsi %false, %true_31 : i1
        %extracted_50 = tensor.extract %2[%c0, %c9] : tensor<2x10xi1>
        %304 = arith.remf %cst_1, %cst_2 : f16
        %305 = math.roundeven %22 : tensor<f32>
        %306 = vector.broadcast %true_31 : i1 to vector<9x9x9xi1>
        linalg.yield %extracted : f32
      } -> tensor<9x9x10xf32>
      %277 = math.ipowi %c252830507_i64, %c677189089_i64 : i64
      %278 = math.log %reduced : tensor<9xf32>
      %true_45 = arith.constant true
      affine.yield %alloc_15 : memref<2x2xf32>
    } else {
      %271 = vector.extract %97[1] : vector<9x9x10xi1>
      %272 = vector.extract_strided_slice %139 {offsets = [2], sizes = [4], strides = [1]} : vector<9xi16> to vector<4xi16>
      %cst_44 = arith.constant 1.000000e+00 : f32
      %273 = vector.transfer_read %alloc_15[%rank, %c15], %cst_44 : memref<2x2xf32>, vector<9xf32>
      %274 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
      %275 = math.cos %from_elements : tensor<2x2xf16>
      %276 = index.castu %c1244010096_i64 : i64 to index
      %277 = arith.divsi %c677189089_i64, %c1953646482_i64 : i64
      %278 = vector.insertelement %c-28697_i16, %174[%c1 : index] : vector<9xi16>
      affine.yield %alloc_15 : memref<2x2xf32>
    }
    %209 = index.floordivs %c5, %65
    %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<2x10xi32> into tensor<20xi32>
    %210 = math.ceil %10 : tensor<9x9x10xf16>
    %211 = affine.if affine_set<(d0, d1) : (d0 - 8 >= 0, d0 == 0, (d0 - 8) ceildiv 128 == 0)>(%c15, %c10) -> i1 {
      %271 = arith.divui %c1244010096_i64, %c677189089_i64 : i64
      %272 = math.log %7 : tensor<2x2xf16>
      %273 = arith.minf %cst_4, %cst_4 : f16
      %274 = vector.broadcast %true_31 : i1 to vector<2x2xi1>
      %275 = arith.remsi %false_24, %true : i1
      %276 = arith.andi %c252830507_i64, %c252830507_i64 : i64
      %277 = affine.if affine_set<(d0) : ((-(d0 mod 128)) ceildiv 4 >= 0, d0 mod 128 + 1 >= 0)>(%c9) -> memref<9x9x10xf32> {
        %279 = arith.maxui %extracted_33, %c-28697_i16 : i16
        %280 = arith.mulf %cst_2, %cst_3 : f16
        %281 = vector.broadcast %c1_i64 : i64 to vector<9xi64>
        %282 = vector.broadcast %true_31 : i1 to vector<9xi1>
        %283 = vector.maskedload %alloc_18[%c1, %c6], %282, %281 : memref<2x10xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %284 = vector.broadcast %c10 : index to vector<9xindex>
        %285 = vector.broadcast %c1710492121_i32 : i32 to vector<9xi32>
        vector.scatter %140[%c3, %c5, %c0] [%284], %282, %285 : memref<9x9x9xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %286 = vector.broadcast %false : i1 to vector<2x2xi1>
        %287 = math.tanh %cst_1 : f16
        %288 = arith.remsi %c1_i64, %c252830507_i64 : i64
        %289 = math.absf %7 : tensor<2x2xf16>
        affine.yield %alloc_5 : memref<9x9x10xf32>
      } else {
        %279 = math.tan %16 : tensor<9x9x9xf32>
        %280 = math.log %10 : tensor<9x9x10xf16>
        %281 = arith.maxui %c1710492121_i32, %c1385183345_i32 : i32
        %282 = vector.extract %122[4, 1] : vector<9x9x10xi64>
        %283 = math.cttz %0 : tensor<9x9x9xi16>
        %284 = arith.andi %false, %true : i1
        %false_44 = index.bool.constant false
        %285 = arith.negf %cst_1 : f16
        affine.yield %alloc_5 : memref<9x9x10xf32>
      }
      %278 = arith.andi %c1710492121_i32, %c1710492121_i32 : i32
      affine.yield %false_24 : i1
    } else {
      %271 = vector.insertelement %c-28697_i16, %139[%c3 : index] : vector<9xi16>
      %272 = arith.cmpi sge, %extracted_33, %c22723_i16 : i16
      %273 = arith.divui %extracted_33, %extracted_33 : i16
      %274 = vector.reduction <mul>, %20 : vector<9xi16> into i16
      %275 = arith.divf %cst_1, %cst_0 : f16
      %276 = arith.remf %cst_1, %cst_3 : f16
      %277 = math.exp %splat_27 : tensor<2x2xf16>
      %278 = bufferization.clone %104 : memref<9x9x9xf32> to memref<9x9x9xf32>
      affine.yield %false : i1
    }
    %212 = vector.create_mask %c6, %63 : vector<2x2xi1>
    %213 = tensor.empty() : tensor<9x9x9xi16>
    %214 = math.log2 %splat_27 : tensor<2x2xf16>
    %215 = tensor.empty() : tensor<2x2xf16>
    %mapped = linalg.map ins(%from_elements : tensor<2x2xf16>) outs(%215 : tensor<2x2xf16>)
      (%in: f16) {
        affine.store %c1385183345_i32, %alloc_8[%c4, %c10] : memref<2x2xi32>
        %271 = arith.maxf %cst, %extracted : f32
        %splat_44 = tensor.splat %cst_1 : tensor<9x9x9xf16>
        %272 = arith.mulf %cst_1, %cst_4 : f16
        %alloc_45 = memref.alloc() : memref<10x2xf32>
        %273 = tensor.empty() : tensor<2x2xf32>
        %274 = linalg.matmul ins(%8, %alloc_45 : tensor<2x10xf32>, memref<10x2xf32>) outs(%273 : tensor<2x2xf32>) -> tensor<2x2xf32>
        affine.store %extracted, %alloc_19[%c9, %c12] : memref<2x10xf32>
        affine.for %arg2 = 0 to 33 {
        }
        %275 = vector.multi_reduction <mul>, %20, %20 [] : vector<9xi16> to vector<9xi16>
        %276 = math.atan2 %4, %4 : tensor<9x9x10xf32>
        %277 = arith.addf %cst_2, %cst_2 : f16
        %278 = arith.addi %c1385183345_i32, %c1385183345_i32 : i32
        %279 = tensor.empty() : tensor<9x10xf32>
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18, %279, %alloc_21 : tensor<9xf32>, tensor<9x10xf32>, memref<9xf32>) outs(%4 : tensor<9x9x10xf32>) {
        ^bb0(%in_51: f32, %in_52: f32, %in_53: f32, %out: f32):
          %302 = arith.mulf %cst_4, %cst_3 : f16
          %303 = memref.realloc %alloc_21 : memref<9xf32> to memref<9xf32>
          %304 = affine.max affine_map<(d0, d1, d2) -> ((d1 * 128 + d1 * 128 - (d1 * 128 - 2) + d2) * 2, d1 + (-(d1 * 128 - 2)) floordiv 128, ((-d0) floordiv 32) * 32)>(%60, %c0, %60)
          %true_54 = index.bool.constant true
          %305 = vector.broadcast %c0 : index to vector<2xindex>
          %306 = vector.broadcast %true_54 : i1 to vector<2xi1>
          %307 = vector.broadcast %c1710492121_i32 : i32 to vector<2xi32>
          vector.scatter %alloc_8[%c1, %c0] [%305], %306, %307 : memref<2x2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
          %308 = arith.xori %c1710492121_i32, %c1710492121_i32 : i32
          %309 = arith.ori %c1_i16, %extracted_33 : i16
          %310 = arith.divui %c252830507_i64, %c1953646482_i64 : i64
          %311 = arith.addf %cst_3, %cst_2 : f16
          %312 = memref.load %alloc_17[%c0, %c4, %c8] : memref<9x9x10xi64>
          %313 = arith.ori %true_31, %false_24 : i1
          %314 = arith.remf %in_51, %extracted : f32
          %315 = affine.min affine_map<(d0) -> ((d0 + 4) mod 8, (d0 + 4) mod 8)>(%c14)
          %316 = arith.mulf %cst_3, %cst_1 : f16
          %true_55 = index.bool.constant true
          %317 = vector.extract_strided_slice %111 {offsets = [0], sizes = [1], strides = [1]} : vector<2x10xf32> to vector<1x10xf32>
          %318 = arith.mulf %cst, %extracted : f32
          %319 = math.absf %cst_3 : f16
          %320 = arith.shrsi %c1953646482_i64, %c1953646482_i64 : i64
          %true_56 = index.bool.constant true
          %321 = math.atan %215 : tensor<2x2xf16>
          %322 = math.exp2 %8 : tensor<2x10xf32>
          %collapsed_57 = tensor.collapse_shape %12 [[0, 1]] : tensor<2x10xf32> into tensor<20xf32>
          %323 = vector.reduction <or>, %174 : vector<9xi16> into i16
          %324 = arith.xori %c252830507_i64, %c1244010096_i64 : i64
          %inserted_58 = tensor.insert %c1_i64 into %1[%c1, %c1] : tensor<2x2xi64>
          %alloc_59 = memref.alloc() : memref<9x9x9xf32>
          %325 = index.castu %c1953646482_i64 : i64 to index
          %326 = arith.maxsi %c1_i16, %c-28697_i16 : i16
          %327 = arith.cmpi slt, %c1710492121_i32, %c1385183345_i32 : i32
          %328 = arith.remf %extracted, %in_51 : f32
          %329 = tensor.empty() : tensor<2x2xi64>
          %330 = linalg.matmul ins(%1, %1 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%329 : tensor<2x2xi64>) -> tensor<2x2xi64>
          linalg.yield %in_53 : f32
        } -> tensor<9x9x10xf32>
        %281 = vector.broadcast %c-28697_i16 : i16 to vector<9xi16>
        %282 = vector.transfer_write %281, %0[%40, %c1, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi16>, tensor<9x9x9xi16>
        %283 = affine.min affine_map<(d0) -> (0)>(%65)
        %alloc_46 = memref.alloc() : memref<2x10xf32>
        %284 = math.log2 %cst_3 : f16
        %285 = arith.divsi %true_31, %false_24 : i1
        %286 = math.log10 %12 : tensor<2x10xf32>
        %287 = memref.realloc %alloc_21 : memref<9xf32> to memref<2xf32>
        %288 = math.cos %8 : tensor<2x10xf32>
        %289 = affine.if affine_set<(d0, d1) : ((-(d1 - 4)) mod 64 >= 0, -128 == 0)>(%c15, %c14) -> i1 {
          %302 = arith.cmpi ule, %false, %true_31 : i1
          %303 = math.absf %10 : tensor<9x9x10xf16>
          %collapsed_51 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<9x9x10xi32> into tensor<81x10xi32>
          %304 = affine.max affine_map<(d0, d1, d2) -> (-(d1 + 24), d1 + 24)>(%c10, %c13, %67)
          %305 = math.ctlz %collapsed_51 : tensor<81x10xi32>
          %306 = affine.load %alloc_14[%c8, %c7] : memref<2x10xi32>
          %inserted_52 = tensor.insert %c1710492121_i32 into %collapsed[%c3] : tensor<20xi32>
          %rank_53 = tensor.rank %11 : tensor<2x10xi64>
          affine.yield %false_24 : i1
        } else {
          %302 = math.roundeven %7 : tensor<2x2xf16>
          %303 = arith.addf %cst, %extracted : f32
          %304 = arith.minui %c1244010096_i64, %c1_i64 : i64
          %305 = vector.broadcast %48 : index to vector<2xindex>
          %306 = vector.broadcast %true : i1 to vector<2xi1>
          %307 = vector.broadcast %cst : f32 to vector<2xf32>
          vector.scatter %alloc_19[%c0, %c6] [%305], %306, %307 : memref<2x10xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
          %308 = arith.negf %cst_2 : f16
          %collapsed_51 = tensor.collapse_shape %7 [[0, 1]] : tensor<2x2xf16> into tensor<4xf16>
          %309 = arith.andi %c1_i64, %c1_i64 : i64
          %alloc_52 = memref.alloc() : memref<10x5xi16>
          %310 = tensor.empty() : tensor<2x5xi16>
          %311 = linalg.matmul ins(%9, %alloc_52 : tensor<2x10xi16>, memref<10x5xi16>) outs(%310 : tensor<2x5xi16>) -> tensor<2x5xi16>
          affine.yield %false_22 : i1
        }
        %rank_47 = tensor.rank %9 : tensor<2x10xi16>
        %290 = arith.addf %cst_3, %in : f16
        %291 = index.sizeof
        %292 = vector.broadcast %cst : f32 to vector<2x2xf32>
        %293 = vector.fma %292, %292, %292 : vector<2x2xf32>
        %294 = vector.extract_strided_slice %73 {offsets = [3], sizes = [2], strides = [1]} : vector<9x9x9xi1> to vector<2x9x9xi1>
        %295 = affine.for %arg2 = 0 to 73 iter_args(%arg3 = %61) -> (vector<9x9x9xi1>) {
          affine.yield %61 : vector<9x9x9xi1>
        }
        %296 = vector.broadcast %c1710492121_i32 : i32 to vector<9xi32>
        %297 = vector.broadcast %false_22 : i1 to vector<9xi1>
        %298 = vector.maskedload %alloc_16[%c3, %c4, %c9], %297, %296 : memref<9x9x10xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %inserted_48 = tensor.insert %false_22 into %204[%c1, %c6] : tensor<2x10xi1>
        %c1_i64_49 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %299 = vector.transfer_read %alloc_17[%67, %291, %291], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<9x9x10xi64>, vector<10x10xi64>
        %300 = arith.addf %cst_3, %in : f16
        %301 = math.log10 %reduced : tensor<9xf32>
        %cst_50 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_50 : f16
      }
    %216 = arith.floordivsi %c-28697_i16, %c-28697_i16 : i16
    %217 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %174, %c22723_i16 : vector<9xi16>, vector<9xi16> into i16
    %218 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
    %219 = math.ctpop %120 : tensor<9x9x9xi64>
    %220 = arith.cmpi sgt, %c-28697_i16, %c22723_i16 : i16
    %collapsed_35 = tensor.collapse_shape %8 [[0, 1]] : tensor<2x10xf32> into tensor<20xf32>
    %221 = math.ipowi %collapsed, %collapsed : tensor<20xi32>
    %extracted_36 = tensor.extract %15[%c1, %c8] : tensor<2x10xi32>
    %alloca = memref.alloca() : memref<2x2xi16>
    %222 = memref.load %alloc_14[%c1, %c9] : memref<2x10xi32>
    %223 = tensor.empty() : tensor<9x9x9xi1>
    %224 = arith.floordivsi %c1385183345_i32, %extracted_36 : i32
    %225 = arith.ori %c252830507_i64, %c1953646482_i64 : i64
    %226 = arith.maxsi %true, %false_24 : i1
    %227 = vector.gather %alloc_8[%c12, %c7] [%105], %97, %105 : memref<2x2xi32>, vector<9x9x10xi32>, vector<9x9x10xi1>, vector<9x9x10xi32> into vector<9x9x10xi32>
    %228 = memref.atomic_rmw mulf %cst_1, %alloc_11[%c5, %c6, %c5] : (f16, memref<9x9x10xf16>) -> f16
    %229 = arith.subi %extracted_33, %c-28697_i16 : i16
    %230 = memref.load %alloc_16[%c4, %c8, %c9] : memref<9x9x10xi32>
    %231 = arith.maxsi %c1244010096_i64, %c1244010096_i64 : i64
    %232 = index.mul %c5, %c9
    %233 = arith.divui %c1710492121_i32, %c1710492121_i32 : i32
    %234 = math.ctlz %c1385183345_i32 : i32
    %235 = index.add %c13, %c14
    %from_elements_37 = tensor.from_elements %cst, %cst, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %extracted, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %cst, %extracted, %cst, %cst, %cst, %cst, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %cst, %extracted, %cst, %cst, %cst, %cst, %extracted, %extracted, %cst, %cst, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %extracted, %cst, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %cst, %cst, %extracted, %cst, %extracted, %cst, %extracted, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %extracted, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %extracted, %extracted, %cst, %extracted, %cst, %cst, %extracted, %cst : tensor<9x9x9xf32>
    affine.store %extracted, %104[%c13, %c7, %c11] : memref<9x9x9xf32>
    %236 = vector.broadcast %c2 : index to vector<2xindex>
    %237 = vector.broadcast %false_22 : i1 to vector<2xi1>
    %238 = vector.broadcast %cst : f32 to vector<2xf32>
    vector.scatter %alloc_7[%c2, %c3, %c1] [%236], %237, %238 : memref<9x9x9xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
    %239 = arith.xori %c1_i64, %c1_i64 : i64
    %collapsed_38 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<9x9x10xi16> into tensor<81x10xi16>
    %240 = math.cos %8 : tensor<2x10xf32>
    %241 = index.floordivs %209, %118
    %242 = arith.remf %cst_3, %cst_3 : f16
    %243 = scf.while (%arg2 = %c1244010096_i64) : (i64) -> i64 {
      %false_44 = index.bool.constant false
      %271 = vector.broadcast %c1953646482_i64 : i64 to vector<9xi64>
      vector.transfer_write %271, %alloc_18[%41, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, memref<2x10xi64>
      %272 = arith.shrsi %arg2, %arg2 : i64
      %rank_45 = tensor.rank %14 : tensor<9x9x9xf32>
      %alloc_46 = memref.alloc() : memref<9x9x10xi1>
      %273 = vector.load %alloc_8[%c1, %c0] : memref<2x2xi32>, vector<9x9x9xi32>
      %274 = arith.divui %extracted_36, %c1385183345_i32 : i32
      %275 = arith.remf %cst_0, %cst_1 : f16
      scf.condition(%true) %c252830507_i64 : i64
    } do {
    ^bb0(%arg2: i64):
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d0 * 2 >= 0, d0 == 0, d2 - 16 >= 0)>(%c4, %c5, %c7, %c4) -> memref<9x9x10xi32> {
        %true_44 = index.bool.constant true
        %291 = arith.remsi %c252830507_i64, %arg2 : i64
        %292 = math.log %18 : tensor<9xf32>
        %293 = arith.remf %cst_3, %cst_3 : f16
        %inserted_45 = tensor.insert %c22723_i16 into %splat_34[%c7, %c8, %c3] : tensor<9x9x10xi16>
        %294 = vector.extract_strided_slice %73 {offsets = [0], sizes = [3], strides = [1]} : vector<9x9x9xi1> to vector<3x9x9xi1>
        %295 = index.sizeof
        %296 = vector.broadcast %extracted_36 : i32 to vector<10xi32>
        %297 = vector.broadcast %true_31 : i1 to vector<10xi1>
        %298 = vector.maskedload %alloc_6[%c3, %c4, %c0], %297, %296 : memref<9x9x10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        affine.yield %93 : memref<9x9x10xi32>
      } else {
        %collapsed_44 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<9x9x10xf32> into tensor<81x10xf32>
        %291 = arith.addi %true, %false : i1
        %292 = math.roundeven %7 : tensor<2x2xf16>
        memref.assume_alignment %alloc_7, 2 : memref<9x9x9xf32>
        %293 = math.absf %21 : tensor<f32>
        %294 = math.round %cst : f32
        %295 = index.divu %118, %c13
        %296 = index.mul %67, %60
        affine.yield %alloc_6 : memref<9x9x10xi32>
      }
      %272 = math.log %4 : tensor<9x9x10xf32>
      %273 = vector.broadcast %c22723_i16 : i16 to vector<2xi16>
      %274 = vector.broadcast %true : i1 to vector<2xi1>
      %275 = vector.maskedload %alloc_12[%c1, %c8], %274, %273 : memref<2x10xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %276 = arith.maxsi %true_31, %true_31 : i1
      %277 = math.cttz %true_31 : i1
      %278 = arith.cmpf uno, %cst_0, %cst_3 : f16
      %279 = index.sizeof
      %280 = index.sizeof
      %281 = arith.minui %true_31, %true : i1
      %282 = arith.divsi %c1385183345_i32, %extracted_36 : i32
      %283 = vector.load %alloc_8[%c1, %c0] : memref<2x2xi32>, vector<2x10xi32>
      %284 = tensor.empty() : tensor<2x10xi1>
      %285 = linalg.matmul ins(%13, %204 : tensor<2x2xi1>, tensor<2x10xi1>) outs(%284 : tensor<2x10xi1>) -> tensor<2x10xi1>
      %286 = math.ctlz %15 : tensor<2x10xi32>
      %287 = vector.broadcast %cst : f32 to vector<9x9x10xf32>
      %288 = vector.fma %287, %138, %137 : vector<9x9x10xf32>
      %289 = arith.divsi %c1_i16, %c-28697_i16 : i16
      %290 = scf.while (%arg3 = %165) : (vector<9x9x9xi32>) -> vector<9x9x9xi32> {
        %291 = vector.broadcast %false : i1 to vector<9x9xi1>
        %292 = vector.insert %291, %73 [1] : vector<9x9xi1> into vector<9x9x9xi1>
        %293 = vector.insertelement %extracted_33, %174[%209 : index] : vector<9xi16>
        %294 = index.ceildivu %c6, %232
        %295 = index.sizeof
        %296 = math.ctpop %13 : tensor<2x2xi1>
        %297 = math.ipowi %collapsed_38, %collapsed_38 : tensor<81x10xi16>
        %true_44 = index.bool.constant true
        %298 = arith.mulf %cst_3, %cst_0 : f16
        scf.condition(%true_44) %165 : vector<9x9x9xi32>
      } do {
      ^bb0(%arg3: vector<9x9x9xi32>):
        affine.store %extracted_36, %alloc_14[%c10, %c8] : memref<2x10xi32>
        %291 = arith.addf %cst_2, %cst_3 : f16
        %292 = arith.cmpf oeq, %cst, %extracted : f32
        %293 = math.round %cst_3 : f16
        %splat_44 = tensor.splat %extracted : tensor<9x9x10xf32>
        %collapsed_45 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x10xi1> into tensor<20xi1>
        %294 = vector.broadcast %cst_2 : f16 to vector<2x2xf16>
        %295 = vector.broadcast %c1385183345_i32 : i32 to vector<2x2xi32>
        %296 = vector.gather %10[%63, %c3, %c5] [%295], %212, %294 : tensor<9x9x10xf16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf16> into vector<2x2xf16>
        %297 = memref.atomic_rmw muli %extracted_36, %alloc_14[%c1, %c7] : (i32, memref<2x10xi32>) -> i32
        %298 = arith.addi %false_22, %false_22 : i1
        %false_46 = index.bool.constant false
        %299 = arith.addi %c677189089_i64, %c1953646482_i64 : i64
        %300 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
        %301 = math.fma %7, %7, %7 : tensor<2x2xf16>
        %302 = math.round %cst_4 : f16
        %303 = index.castu %c1_i16 : i16 to index
        %inserted_47 = tensor.insert %c1385183345_i32 into %15[%c1, %c2] : tensor<2x10xi32>
        scf.yield %165 : vector<9x9x9xi32>
      }
      scf.yield %arg2 : i64
    }
    %244 = arith.minui %c1710492121_i32, %extracted_36 : i32
    %245 = vector.extract %227[2] : vector<9x9x10xi32>
    %246 = math.ceil %cst_0 : f16
    %247 = math.round %cst_2 : f16
    %rank_39 = tensor.rank %17 : tensor<9x9x9xf32>
    %248 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 64, (d0 ceildiv 64) ceildiv 16 - 66, ((-(d0 ceildiv 64)) mod 128) * 128, (d0 ceildiv 64) ceildiv 16 + 128)>(%40, %c12)
    %249 = vector.broadcast %c1953646482_i64 : i64 to vector<2x2xi64>
    %250 = arith.remf %cst_1, %cst_1 : f16
    %251 = math.round %21 : tensor<f32>
    %252 = arith.subi %c252830507_i64, %c677189089_i64 : i64
    %253 = index.floordivs %rank, %c2
    %extracted_40 = tensor.extract %18[%c3] : tensor<9xf32>
    %254 = arith.minui %true_31, %true_31 : i1
    %255 = vector.broadcast %extracted_40 : f32 to vector<2x2xf32>
    %256 = math.fma %from_elements_37, %14, %14 : tensor<9x9x9xf32>
    %257 = index.mul %241, %c2
    %alloc_41 = memref.alloc() : memref<10x9x9xf32>
    memref.copy %alloc_20, %alloc_41 : memref<10x9x9xf32> to memref<10x9x9xf32>
    %258 = arith.maxui %false, %true : i1
    %259 = arith.shrui %extracted_36, %c1385183345_i32 : i32
    %alloc_42 = memref.alloc() : memref<2x2xi32>
    %260 = arith.maxsi %false, %true : i1
    %261 = bufferization.clone %alloc_5 : memref<9x9x10xf32> to memref<9x9x10xf32>
    %262 = math.log %cst_1 : f16
    %263 = arith.shrui %extracted_33, %c1_i16 : i16
    %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %212, %212, %212 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
    %265 = arith.remf %cst_3, %cst_2 : f16
    %266 = tensor.empty() : tensor<9x9x9xi16>
    %267 = linalg.copy ins(%5 : tensor<9x9x9xi16>) outs(%266 : tensor<9x9x9xi16>) -> tensor<9x9x9xi16>
    %268 = tensor.empty() : tensor<9x9x9xf32>
    %transposed = linalg.transpose ins(%alloc_7 : memref<9x9x9xf32>) outs(%268 : tensor<9x9x9xf32>) permutation = [2, 0, 1] 
    %269 = tensor.empty() : tensor<2xf16>
    %reduced_43 = linalg.reduce ins(%from_elements : tensor<2x2xf16>) outs(%269 : tensor<2xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %271 = math.powf %7, %splat_27 : tensor<2x2xf16>
        %272 = memref.realloc %alloc_21 : memref<9xf32> to memref<5xf32>
        %273 = math.ipowi %266, %213 : tensor<9x9x9xi16>
        %274 = math.exp %cst_0 : f16
        %275 = arith.maxsi %c1953646482_i64, %c252830507_i64 : i64
        %276 = arith.andi %c1385183345_i32, %extracted_36 : i32
        %277 = math.fma %cst_3, %init, %cst_0 : f16
        %alloc_44 = memref.alloc() : memref<2x10xi1>
        %cst_45 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_45 : f16
      }
    scf.parallel (%arg2, %arg3) = (%60, %67) to (%118, %c12) step (%c3, %c14) {
      %271 = arith.cmpi ult, %c1_i16, %extracted_33 : i16
      %extracted_44 = tensor.extract %120[%c3, %c1, %c0] : tensor<9x9x9xi64>
      %272 = vector.load %261[%c1, %c3, %c3] : memref<9x9x10xf32>, vector<2x2xf32>
      %273 = math.round %14 : tensor<9x9x9xf32>
      %274 = scf.if %false -> (i64) {
        %285 = memref.load %alloc_12[%c1, %c9] : memref<2x10xi16>
        %286 = vector.broadcast %extracted_36 : i32 to vector<2xi32>
        %287 = vector.broadcast %false_22 : i1 to vector<2xi1>
        %288 = vector.maskedload %alloc_16[%c5, %c2, %c6], %287, %286 : memref<9x9x10xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %289 = math.log2 %transposed : tensor<9x9x9xf32>
        %290 = memref.atomic_rmw assign %c1710492121_i32, %93[%c2, %c8, %c8] : (i32, memref<9x9x10xi32>) -> i32
        %291 = math.log %188 : tensor<2x10xf32>
        %alloc_47 = memref.alloc() : memref<2x10xi32>
        memref.copy %alloc_14, %alloc_47 : memref<2x10xi32> to memref<2x10xi32>
        %292 = vector.reduction <maxui>, %107 : vector<1xi16> into i16
        %293 = vector.insert %extracted_36, %288 [0] : i32 into vector<2xi32>
        scf.yield %c1953646482_i64 : i64
      } else {
        %cast_47 = tensor.cast %9 : tensor<2x10xi16> to tensor<?x?xi16>
        %285 = bufferization.to_tensor %alloc_8 : memref<2x2xi32>
        %286 = math.ipowi %266, %213 : tensor<9x9x9xi16>
        %287 = math.log %reduced : tensor<9xf32>
        %288 = math.log10 %17 : tensor<9x9x9xf32>
        %289 = arith.minf %cst_3, %cst_4 : f16
        %290 = arith.addf %extracted_40, %cst : f32
        %291 = math.cos %cst_1 : f16
        scf.yield %extracted_44 : i64
      }
      %cast = tensor.cast %266 : tensor<9x9x9xi16> to tensor<?x?x?xi16>
      %275 = tensor.empty() : tensor<2x10xi64>
      %276 = linalg.matmul ins(%1, %splat : tensor<2x2xi64>, tensor<2x10xi64>) outs(%275 : tensor<2x10xi64>) -> tensor<2x10xi64>
      %cast_45 = tensor.cast %11 : tensor<2x10xi64> to tensor<?x?xi64>
      %277 = arith.mulf %cst_2, %cst_3 : f16
      %278 = arith.addf %cst_4, %cst_4 : f16
      %279 = arith.ori %true_31, %false : i1
      %280 = index.casts %c0 : index to i32
      %281 = affine.max affine_map<(d0) -> (d0 * 2 - 2)>(%rank)
      %282 = arith.addf %cst_4, %cst_4 : f16
      %283 = math.tanh %reduced : tensor<9xf32>
      %284 = tensor.empty() : tensor<2x2xi64>
      %mapped_46 = linalg.map ins(%1, %1, %1 : tensor<2x2xi64>, tensor<2x2xi64>, tensor<2x2xi64>) outs(%284 : tensor<2x2xi64>)
        (%in: i64, %in_47: i64, %in_48: i64) {
          %splat_49 = tensor.splat %c-28697_i16 : tensor<2x10xi16>
          %285 = vector.transpose %107, [0] : vector<1xi16> to vector<1xi16>
          %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %20, %174, %c22723_i16 : vector<9xi16>, vector<9xi16> into i16
          %splat_50 = tensor.splat %c1_i64 : tensor<2x2xi64>
          %287 = math.tanh %14 : tensor<9x9x9xf32>
          %288 = affine.max affine_map<(d0, d1, d2) -> (-(d0 floordiv 8), d2, d1 - d0 floordiv 8)>(%65, %arg2, %rank_39)
          %false_51 = index.bool.constant false
          %289 = math.exp2 %12 : tensor<2x10xf32>
          %inserted_52 = tensor.insert %extracted_40 into %collapsed_35[%c6] : tensor<20xf32>
          %290 = arith.addf %cst_4, %cst_4 : f16
          %291 = vector.broadcast %extracted : f32 to vector<10x10xf32>
          %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %111, %111, %291 : vector<2x10xf32>, vector<2x10xf32> into vector<10x10xf32>
          %293 = vector.broadcast %c677189089_i64 : i64 to vector<9x9x9xi64>
          memref.store %c1385183345_i32, %alloc_9[%c5, %c3, %c8] : memref<9x9x9xi32>
          %294 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%209, %41, %c4)
          %295 = arith.remui %c252830507_i64, %extracted_44 : i64
          %296 = affine.max affine_map<(d0, d1, d2) -> (((d2 - d1) mod 4) ceildiv 64, d2 ceildiv 16)>(%288, %c10, %c12)
          %297 = arith.minui %c677189089_i64, %c1244010096_i64 : i64
          %298 = vector.insertelement %c22723_i16, %107[%c8 : index] : vector<1xi16>
          %299 = arith.shli %false_51, %false_51 : i1
          %true_53 = index.bool.constant true
          %300 = vector.insertelement %c1_i16, %20[%294 : index] : vector<9xi16>
          %301 = math.sqrt %188 : tensor<2x10xf32>
          %302 = vector.matrix_multiply %20, %20 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
          %303 = index.divu %c0, %43
          %extracted_54 = tensor.extract %splat_50[%c0, %c1] : tensor<2x2xi64>
          %304 = math.ipowi %collapsed, %collapsed : tensor<20xi32>
          %305 = vector.broadcast %c1_i64 : i64 to vector<2xi64>
          %306 = vector.transfer_write %305, %275[%c11, %281] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi64>, tensor<2x10xi64>
          %307 = arith.addi %c677189089_i64, %c677189089_i64 : i64
          %308 = arith.addf %cst_4, %cst_0 : f16
          %309 = arith.divsi %true_31, %false_24 : i1
          %310 = vector.broadcast %c4 : index to vector<10xindex>
          %311 = vector.broadcast %false_51 : i1 to vector<10xi1>
          %312 = vector.broadcast %c1710492121_i32 : i32 to vector<10xi32>
          vector.scatter %alloc_9[%c2, %c4, %c1] [%310], %311, %312 : memref<9x9x9xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
          %313 = math.log10 %extracted_40 : f32
          %c1_i64_55 = arith.constant 1 : i64
          linalg.yield %c1_i64_55 : i64
        }
      scf.yield
    }
    %270 = affine.vector_load %alloc_13[%c6, %67] : memref<2x2xi16>, vector<10xi16>
    affine.vector_store %20, %alloc_13[%c6, %63] : memref<2x2xi16>, vector<9xi16>
    vector.print %20 : vector<9xi16>
    vector.print %61 : vector<9x9x9xi1>
    vector.print %73 : vector<9x9x9xi1>
    vector.print %76 : vector<9x9x9xi1>
    vector.print %97 : vector<9x9x10xi1>
    vector.print %102 : vector<9x9x10xi1>
    vector.print %105 : vector<9x9x10xi32>
    vector.print %107 : vector<1xi16>
    vector.print %108 : vector<9x9xi32>
    vector.print %110 : vector<2x10xf32>
    vector.print %111 : vector<2x10xf32>
    vector.print %121 : vector<9x9x10xi64>
    vector.print %122 : vector<9x9x10xi64>
    vector.print %137 : vector<9x9x10xf32>
    vector.print %138 : vector<9x9x10xf32>
    vector.print %139 : vector<9xi16>
    vector.print %165 : vector<9x9x9xi32>
    vector.print %174 : vector<9xi16>
    vector.print %212 : vector<2x2xi1>
    vector.print %227 : vector<9x9x10xi32>
    vector.print %245 : vector<9x10xi32>
    vector.print %249 : vector<2x2xi64>
    vector.print %255 : vector<2x2xf32>
    vector.print %270 : vector<10xi16>
    vector.print %c1953646482_i64 : i64
    vector.print %cst : f32
    vector.print %c1710492121_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c-28697_i16 : i16
    vector.print %c252830507_i64 : i64
    vector.print %c677189089_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %c22723_i16 : i16
    vector.print %true : i1
    vector.print %c1385183345_i32 : i32
    vector.print %c1244010096_i64 : i64
    vector.print %cst_4 : f16
    vector.print %c1_i16 : i16
    vector.print %false_22 : i1
    vector.print %false_24 : i1
    vector.print %c1_i64 : i64
    vector.print %extracted : f32
    vector.print %true_31 : i1
    vector.print %extracted_33 : i16
    vector.print %extracted_36 : i32
    vector.print %extracted_40 : f32
    return
  }
}
