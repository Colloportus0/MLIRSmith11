module {
  func.func private @func1(%arg0: memref<3x10xi1>, %arg1: i1, %arg2: vector<3x10xi1>) {
    %c205974663_i32 = arith.constant 205974663 : i32
    %true = arith.constant true
    %cst = arith.constant 4.627200e+04 : f16
    %true_0 = arith.constant true
    %c2017549053_i32 = arith.constant 2017549053 : i32
    %c-19910_i16 = arith.constant -19910 : i16
    %true_1 = arith.constant true
    %cst_2 = arith.constant 0x4DF0B043 : f32
    %cst_3 = arith.constant 5.894400e+04 : f16
    %c1965706431_i64 = arith.constant 1965706431 : i64
    %c1860912383_i64 = arith.constant 1860912383 : i64
    %c1284882329_i64 = arith.constant 1284882329 : i64
    %c787680365_i64 = arith.constant 787680365 : i64
    %c1265439514_i32 = arith.constant 1265439514 : i32
    %c1201619418_i32 = arith.constant 1201619418 : i32
    %c126204340_i64 = arith.constant 126204340 : i64
    %0 = tensor.empty() : tensor<3x10x8xf16>
    %1 = tensor.empty() : tensor<3x10xi1>
    %2 = tensor.empty() : tensor<10x12x3xf32>
    %3 = tensor.empty() : tensor<3x10x8xi64>
    %4 = tensor.empty() : tensor<3x10xf32>
    %5 = tensor.empty() : tensor<8x8x8xi1>
    %6 = tensor.empty() : tensor<8x8x8xi32>
    %7 = tensor.empty() : tensor<3x10xf32>
    %8 = tensor.empty() : tensor<3x10x8xi16>
    %9 = tensor.empty() : tensor<10x12x3xf16>
    %10 = tensor.empty() : tensor<3x10x8xf32>
    %11 = tensor.empty() : tensor<3x10xi1>
    %12 = tensor.empty() : tensor<8x8x8xi1>
    %13 = tensor.empty() : tensor<10x12x3xi1>
    %14 = tensor.empty() : tensor<3x10xf32>
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
    %alloc = memref.alloc() : memref<10x12x3xi16>
    %alloc_4 = memref.alloc() : memref<3x10x8xf32>
    %alloc_5 = memref.alloc() : memref<8x8x8xi32>
    %alloc_6 = memref.alloc() : memref<8x8x8xi1>
    %alloc_7 = memref.alloc() : memref<10x12x3xi16>
    %alloc_8 = memref.alloc() : memref<8x8x8xf32>
    %alloc_9 = memref.alloc() : memref<3x10x8xf16>
    %alloc_10 = memref.alloc() : memref<10x12x3xf16>
    %alloc_11 = memref.alloc() : memref<3x10x8xi64>
    %alloc_12 = memref.alloc() : memref<3x10x8xi16>
    %alloc_13 = memref.alloc() : memref<8x8x8xf16>
    %alloc_14 = memref.alloc() : memref<3x10x8xi16>
    %alloc_15 = memref.alloc() : memref<8x8x8xf16>
    %alloc_16 = memref.alloc() : memref<3x10xi16>
    %alloc_17 = memref.alloc() : memref<3x10xi16>
    %alloc_18 = memref.alloc() : memref<10x12x3xi64>
    %16 = tensor.empty() : tensor<10x12x3xf32>
    %17 = linalg.copy ins(%2 : tensor<10x12x3xf32>) outs(%16 : tensor<10x12x3xf32>) -> tensor<10x12x3xf32>
    %18 = tensor.empty() : tensor<3x10x12xf32>
    %transposed = linalg.transpose ins(%2 : tensor<10x12x3xf32>) outs(%18 : tensor<3x10x12xf32>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<8xi1>
    linalg.reduce ins(%5 : tensor<8x8x8xi1>) outs(%alloc_19 : memref<8xi1>) dimensions = [0, 2] 
      (%in: i1, %init: i1) {
        %276 = arith.remsi %c1860912383_i64, %c787680365_i64 : i64
        %277 = bufferization.to_memref %13 : memref<10x12x3xi1>
        %278 = math.ctpop %c1860912383_i64 : i64
        %279 = bufferization.clone %alloc_15 : memref<8x8x8xf16> to memref<8x8x8xf16>
        %280 = vector.broadcast %c205974663_i32 : i32 to vector<12xi32>
        %281 = vector.broadcast %c1265439514_i32 : i32 to vector<12x12xi32>
        %282 = vector.outerproduct %280, %280, %281 {kind = #vector.kind<minui>} : vector<12xi32>, vector<12xi32>
        %283 = math.tanh %14 : tensor<3x10xf32>
        %284 = math.round %10 : tensor<3x10x8xf32>
        %285 = arith.shli %c1965706431_i64, %c126204340_i64 : i64
        %false_57 = arith.constant false
        linalg.yield %false_57 : i1
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c6, %c10) to (%c10, %c15) step (%c9, %c9) init (%c1860912383_i64) -> i64 {
      %276 = bufferization.clone %alloc_16 : memref<3x10xi16> to memref<3x10xi16>
      %277 = math.powf %2, %2 : tensor<10x12x3xf32>
      %278 = vector.broadcast %true_1 : i1 to vector<8xi1>
      %279 = vector.broadcast %true_0 : i1 to vector<8x8xi1>
      %280 = vector.outerproduct %278, %278, %279 {kind = #vector.kind<maxsi>} : vector<8xi1>, vector<8xi1>
      %281 = index.divs %c10, %c11
      affine.for %arg5 = 0 to 120 {
      }
      %282 = math.ceil %14 : tensor<3x10xf32>
      %283 = arith.remf %cst_3, %cst_3 : f16
      %284 = index.ceildivs %c0, %arg3
      %285 = math.floor %2 : tensor<10x12x3xf32>
      %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 16 - 4, (-d2) mod 64, d1 + 2, d3 ceildiv 128)>(%c5, %c10, %arg4, %c9)
      %287 = arith.remsi %c1965706431_i64, %c1965706431_i64 : i64
      %288 = bufferization.clone %alloc_12 : memref<3x10x8xi16> to memref<3x10x8xi16>
      %289 = index.maxs %arg3, %c11
      %290 = math.fma %cst_2, %cst_2, %cst_2 : f32
      %291 = bufferization.clone %alloc_4 : memref<3x10x8xf32> to memref<3x10x8xf32>
      %292 = math.rsqrt %transposed : tensor<3x10x12xf32>
      %c1_i64 = arith.constant 1 : i64
      scf.reduce(%c1_i64)  : i64 {
      ^bb0(%arg5: i64, %arg6: i64):
        %293 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %294 = vector.multi_reduction <mul>, %293, %cst_2 [0] : vector<1xf32> to f32
        %295 = bufferization.clone %276 : memref<3x10xi16> to memref<3x10xi16>
        %296 = arith.shrui %c126204340_i64, %c787680365_i64 : i64
        %alloc_57 = memref.alloc() : memref<10x10xf32>
        %297 = tensor.empty() : tensor<3x10xf32>
        %298 = linalg.matmul ins(%14, %alloc_57 : tensor<3x10xf32>, memref<10x10xf32>) outs(%297 : tensor<3x10xf32>) -> tensor<3x10xf32>
        %299 = index.ceildivu %c1, %c2
        %300 = bufferization.clone %alloc_15 : memref<8x8x8xf16> to memref<8x8x8xf16>
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d0 - (d1 ceildiv 2) ceildiv 64)>(%289, %299, %c10)
        %302 = bufferization.to_tensor %alloc_8 : memref<8x8x8xf32>
        %c0_i64_58 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_58 : i64
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_6[%c5, %c12, %c10] : memref<8x8x8xi1>, vector<8xi1>
    affine.vector_store %20, %alloc_19[%c14] : memref<8xi1>, vector<8xi1>
    %21 = tensor.empty() : tensor<8xi1>
    %22 = tensor.empty() : tensor<i1>
    %23 = linalg.dot ins(%alloc_19, %21 : memref<8xi1>, tensor<8xi1>) outs(%22 : tensor<i1>) -> tensor<i1>
    %rank = tensor.rank %2 : tensor<10x12x3xf32>
    %24 = index.maxs %c8, %c6
    %25 = math.roundeven %4 : tensor<3x10xf32>
    %26 = math.atan %9 : tensor<10x12x3xf16>
    %27 = math.copysign %cst_2, %cst_2 : f32
    %28 = index.divu %c10, %c1
    %29 = math.roundeven %4 : tensor<3x10xf32>
    %30 = math.exp %0 : tensor<3x10x8xf16>
    %31 = math.round %17 : tensor<10x12x3xf32>
    %32 = math.sqrt %14 : tensor<3x10xf32>
    %33 = vector.broadcast %c-19910_i16 : i16 to vector<3xi16>
    %34 = vector.broadcast %true_1 : i1 to vector<3xi1>
    %35 = vector.maskedload %alloc[%c6, %c8, %c2], %34, %33 : memref<10x12x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    %36 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 16) * 8 >= 0)>(%c9, %c0, %c5) -> i32 {
      %276 = tensor.empty() : tensor<12xf32>
      %277 = tensor.empty() : tensor<10xf32>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %277, %16 : tensor<12xf32>, tensor<10xf32>, tensor<10x12x3xf32>) outs(%16 : tensor<10x12x3xf32>) {
      ^bb0(%in: f32, %in_57: f32, %in_58: f32, %out: f32):
        %286 = affine.max affine_map<(d0) -> (d0 mod 64 - (d0 mod 64 + 16) - 16, (d0 mod 64 - (d0 mod 64 + d0 floordiv 128)) floordiv 64)>(%c4)
        %287 = arith.minui %true, %true_1 : i1
        %splat_59 = tensor.splat %cst_2 : tensor<8x8x8xf32>
        %288 = math.tan %transposed : tensor<3x10x12xf32>
        %289 = math.rsqrt %9 : tensor<10x12x3xf16>
        %false_60 = index.bool.constant false
        %290 = arith.ori %true_1, %true_0 : i1
        %291 = vector.broadcast %true_1 : i1 to vector<10xi1>
        %292 = vector.maskedload %alloc_19[%c5], %291, %291 : memref<8xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %293 = index.divu %24, %c10
        %alloca_61 = memref.alloca() : memref<8x8x8xi16>
        %294 = index.ceildivs %c9, %c10
        %295 = math.copysign %splat_59, %splat_59 : tensor<8x8x8xf32>
        %296 = index.floordivs %c11, %c3
        %297 = arith.muli %c787680365_i64, %c1284882329_i64 : i64
        %298 = arith.minui %c1860912383_i64, %c787680365_i64 : i64
        %299 = index.sizeof
        %300 = arith.negf %in_58 : f32
        %301 = arith.divsi %c2017549053_i32, %c205974663_i32 : i32
        %alloca_62 = memref.alloca() : memref<8x8x8xi1>
        %302 = bufferization.clone %alloc_14 : memref<3x10x8xi16> to memref<3x10x8xi16>
        %303 = math.roundeven %10 : tensor<3x10x8xf32>
        %304 = vector.broadcast %in_58 : f32 to vector<3x10x8xf32>
        %305 = vector.fma %304, %304, %304 : vector<3x10x8xf32>
        %306 = arith.divui %c126204340_i64, %c1965706431_i64 : i64
        %307 = math.round %9 : tensor<10x12x3xf16>
        %308 = vector.multi_reduction <maxf>, %304, %305 [] : vector<3x10x8xf32> to vector<3x10x8xf32>
        %309 = math.round %cst : f16
        %310 = math.expm1 %transposed : tensor<3x10x12xf32>
        %311 = arith.divsi %c2017549053_i32, %c205974663_i32 : i32
        %312 = vector.extract %291[9] : vector<10xi1>
        %313 = math.log2 %cst_3 : f16
        %from_elements_63 = tensor.from_elements %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16 : tensor<10x12x3xi16>
        affine.store %cst, %alloc_15[%c0, %c13, %c10] : memref<8x8x8xf16>
        linalg.yield %in_58 : f32
      } -> tensor<10x12x3xf32>
      %279 = memref.realloc %alloc_19 : memref<8xi1> to memref<12xi1>
      %280 = vector.reduction <minsi>, %20 : vector<8xi1> into i1
      %281 = vector.create_mask %c10, %28, %c13 : vector<8x8x8xi1>
      %282 = math.log2 %cst_2 : f32
      %283 = vector.reduction <minsi>, %20 : vector<8xi1> into i1
      %284 = math.tanh %cst : f16
      %285 = math.roundeven %9 : tensor<10x12x3xf16>
      affine.yield %c205974663_i32 : i32
    } else {
      %276 = math.cos %9 : tensor<10x12x3xf16>
      %277 = math.log10 %7 : tensor<3x10xf32>
      %rank_57 = tensor.rank %transposed : tensor<3x10x12xf32>
      %278 = scf.while (%arg3 = %c1284882329_i64) : (i64) -> i64 {
        %284 = math.roundeven %14 : tensor<3x10xf32>
        %285 = arith.negf %cst_3 : f16
        %286 = arith.ori %c126204340_i64, %c1860912383_i64 : i64
        %alloc_58 = memref.alloc() : memref<10x10xf32>
        %287 = tensor.empty() : tensor<3x10xf32>
        %288 = linalg.matmul ins(%4, %alloc_58 : tensor<3x10xf32>, memref<10x10xf32>) outs(%287 : tensor<3x10xf32>) -> tensor<3x10xf32>
        %289 = memref.atomic_rmw maxs %c-19910_i16, %alloc_14[%c0, %c2, %c1] : (i16, memref<3x10x8xi16>) -> i16
        %290 = math.round %16 : tensor<10x12x3xf32>
        %291 = vector.transpose %35, [0] : vector<3xi16> to vector<3xi16>
        %292 = affine.min affine_map<(d0) -> (d0 + 4)>(%c9)
        scf.condition(%true_1) %c1965706431_i64 : i64
      } do {
      ^bb0(%arg3: i64):
        %284 = math.sqrt %cst : f16
        %285 = bufferization.to_memref %6 : memref<8x8x8xi32>
        %286 = vector.broadcast %true_1 : i1 to vector<3x3xi1>
        %287 = vector.outerproduct %34, %34, %286 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
        %288 = tensor.empty() : tensor<10x10xi64>
        %289 = tensor.empty() : tensor<3x10xi64>
        %290 = linalg.matmul ins(%15, %288 : tensor<3x10xi64>, tensor<10x10xi64>) outs(%289 : tensor<3x10xi64>) -> tensor<3x10xi64>
        %291 = vector.broadcast %c-19910_i16 : i16 to vector<12x10xi16>
        %292 = vector.broadcast %c-19910_i16 : i16 to vector<12xi16>
        %dest, %accumulated_value = vector.scan <minui>, %291, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xi16>, vector<12xi16>
        %293 = vector.broadcast %true_1 : i1 to vector<12xi1>
        %294 = vector.maskedload %alloc_6[%c3, %c3, %c5], %293, %293 : memref<8x8x8xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %295 = bufferization.to_tensor %alloc_12 : memref<3x10x8xi16>
        %296 = math.rsqrt %0 : tensor<3x10x8xf16>
        %297 = memref.atomic_rmw muli %c1265439514_i32, %285[%c5, %c3, %c7] : (i32, memref<8x8x8xi32>) -> i32
        %298 = math.tanh %14 : tensor<3x10xf32>
        %299 = vector.load %alloc_10[%c4, %c4, %c0] : memref<10x12x3xf16>, vector<3x10x8xf16>
        %300 = vector.broadcast %c-19910_i16 : i16 to vector<i16>
        %301 = vector.transfer_write %300, %295[%c7, %c0, %c5] : vector<i16>, tensor<3x10x8xi16>
        %302 = arith.floordivsi %true, %true_1 : i1
        %303 = math.cos %17 : tensor<10x12x3xf32>
        %304 = arith.divsi %c-19910_i16, %c-19910_i16 : i16
        %305 = vector.reduction <minsi>, %35 : vector<3xi16> into i16
        scf.yield %c1284882329_i64 : i64
      }
      %279 = math.atan2 %4, %14 : tensor<3x10xf32>
      %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 128)>(%c1, %rank, %c3, %c7)
      %281 = arith.ceildivsi %true_0, %true_0 : i1
      %282 = vector.broadcast %true_0 : i1 to vector<8x8xi1>
      %283 = vector.outerproduct %20, %20, %282 {kind = #vector.kind<minsi>} : vector<8xi1>, vector<8xi1>
      affine.yield %c205974663_i32 : i32
    }
    %37 = math.ctlz %12 : tensor<8x8x8xi1>
    %38 = vector.broadcast %c-19910_i16 : i16 to vector<10xi16>
    %39 = vector.broadcast %true_1 : i1 to vector<10xi1>
    %40 = vector.maskedload %alloc_17[%c2, %c5], %39, %38 : memref<3x10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    %41 = math.roundeven %2 : tensor<10x12x3xf32>
    %42 = index.ceildivs %c5, %c9
    %43 = index.maxu %c12, %c7
    %44 = math.ctpop %c205974663_i32 : i32
    %45 = math.tanh %7 : tensor<3x10xf32>
    %46 = vector.reduction <xor>, %40 : vector<10xi16> into i16
    %47 = math.tanh %cst : f16
    %alloc_20 = memref.alloc() : memref<10x3xf32>
    %48 = tensor.empty() : tensor<3x3xf32>
    %49 = linalg.matmul ins(%7, %alloc_20 : tensor<3x10xf32>, memref<10x3xf32>) outs(%48 : tensor<3x3xf32>) -> tensor<3x3xf32>
    %expanded = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<8x8x8xi1> into tensor<8x8x8x1xi1>
    %50 = tensor.empty() : tensor<3x10xf32>
    %mapped = linalg.map ins(%4 : tensor<3x10xf32>) outs(%50 : tensor<3x10xf32>)
      (%in: f32) {
        %276 = vector.broadcast %in : f32 to vector<10x12x3xf32>
        %277 = vector.fma %276, %276, %276 : vector<10x12x3xf32>
        %278 = memref.realloc %alloc_19 : memref<8xi1> to memref<3xi1>
        %279 = math.round %2 : tensor<10x12x3xf32>
        memref.store %c-19910_i16, %alloc_14[%c1, %c8, %c5] : memref<3x10x8xi16>
        %280 = bufferization.clone %alloc_16 : memref<3x10xi16> to memref<3x10xi16>
        %281 = index.castu %c3 : index to i32
        %282 = vector.multi_reduction <or>, %38, %c-19910_i16 [0] : vector<10xi16> to i16
        %283 = arith.divf %cst_3, %cst : f16
        affine.for %arg3 = 0 to 112 {
        }
        %alloca_57 = memref.alloca() : memref<10x12x3xf16>
        %rank_58 = tensor.rank %3 : tensor<3x10x8xi64>
        %284 = vector.multi_reduction <minsi>, %35, %35 [] : vector<3xi16> to vector<3xi16>
        %285 = math.atan2 %cst_3, %cst : f16
        %286 = math.rsqrt %14 : tensor<3x10xf32>
        %287 = memref.alloca_scope  -> (i64) {
          %expanded_61 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x10xf32> into tensor<3x10x1xf32>
          %302 = index.add %rank, %c7
          %303 = arith.divsi %true_1, %true_0 : i1
          %alloca_62 = memref.alloca() : memref<8x8x8xi16>
          %304 = tensor.empty() : tensor<8x8x8xi16>
          %305 = vector.broadcast %282 : i16 to vector<10x12x3xi16>
          %306 = vector.broadcast %true : i1 to vector<10x12x3xi1>
          %307 = vector.broadcast %c205974663_i32 : i32 to vector<10x12x3xi32>
          %308 = vector.gather %304[%rank_58, %c5, %c5] [%307], %306, %305 : tensor<8x8x8xi16>, vector<10x12x3xi32>, vector<10x12x3xi1>, vector<10x12x3xi16> into vector<10x12x3xi16>
          %309 = vector.extract %39[1] : vector<10xi1>
          %inserted = tensor.insert %in into %7[%c1, %c2] : tensor<3x10xf32>
          %310 = vector.broadcast %cst_2 : f32 to vector<3x10xf32>
          %311 = vector.fma %310, %310, %310 : vector<3x10xf32>
          %312 = index.divs %28, %c7
          %313 = math.ctlz %21 : tensor<8xi1>
          %314 = vector.broadcast %c1201619418_i32 : i32 to vector<10x3xi32>
          %dest, %accumulated_value = vector.scan <and>, %307, %314 {inclusive = false, reduction_dim = 1 : i64} : vector<10x12x3xi32>, vector<10x3xi32>
          %315 = arith.shli %c205974663_i32, %c2017549053_i32 : i32
          memref.copy %alloc_15, %alloc_13 : memref<8x8x8xf16> to memref<8x8x8xf16>
          %316 = math.atan2 %48, %48 : tensor<3x3xf32>
          %317 = arith.minui %c205974663_i32, %c1201619418_i32 : i32
          %alloc_63 = memref.alloc() : memref<8x8x8xf32>
          memref.copy %alloc_8, %alloc_63 : memref<8x8x8xf32> to memref<8x8x8xf32>
          %318 = math.log2 %14 : tensor<3x10xf32>
          %false_64 = arith.constant false
          %319 = vector.transfer_read %11[%c14, %c14], %false_64 : tensor<3x10xi1>, vector<3xi1>
          %320 = index.divu %43, %c4
          %321 = math.ceil %cst_3 : f16
          %322 = math.copysign %transposed, %transposed : tensor<3x10x12xf32>
          %from_elements_65 = tensor.from_elements %c1284882329_i64, %c1860912383_i64, %c1284882329_i64, %c1860912383_i64, %c1284882329_i64, %c1965706431_i64, %c1965706431_i64, %c787680365_i64, %c1965706431_i64, %c1284882329_i64, %c1284882329_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c1284882329_i64, %c1965706431_i64, %c1284882329_i64, %c1284882329_i64, %c1965706431_i64, %c1284882329_i64, %c1284882329_i64, %c126204340_i64, %c787680365_i64, %c1965706431_i64, %c1284882329_i64, %c1284882329_i64, %c787680365_i64, %c1965706431_i64, %c787680365_i64, %c1284882329_i64, %c1965706431_i64, %c1860912383_i64, %c1860912383_i64, %c1965706431_i64, %c787680365_i64, %c1860912383_i64, %c126204340_i64, %c126204340_i64, %c1860912383_i64, %c787680365_i64, %c1965706431_i64, %c1965706431_i64, %c1965706431_i64, %c126204340_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c1284882329_i64, %c126204340_i64, %c126204340_i64, %c1965706431_i64, %c787680365_i64, %c126204340_i64, %c787680365_i64, %c1284882329_i64, %c1284882329_i64, %c1860912383_i64, %c126204340_i64, %c126204340_i64, %c787680365_i64, %c1860912383_i64, %c787680365_i64, %c1965706431_i64, %c1284882329_i64, %c1965706431_i64, %c1284882329_i64, %c1965706431_i64, %c126204340_i64, %c1284882329_i64, %c1860912383_i64, %c787680365_i64, %c126204340_i64, %c1284882329_i64, %c1965706431_i64, %c1860912383_i64, %c126204340_i64, %c1860912383_i64, %c1860912383_i64, %c1860912383_i64, %c1284882329_i64, %c1860912383_i64, %c1284882329_i64, %c1860912383_i64, %c787680365_i64, %c1860912383_i64, %c1284882329_i64, %c1860912383_i64, %c787680365_i64, %c787680365_i64, %c1860912383_i64, %c126204340_i64, %c1860912383_i64, %c126204340_i64, %c1284882329_i64, %c126204340_i64, %c1284882329_i64, %c1965706431_i64, %c126204340_i64, %c126204340_i64, %c1284882329_i64, %c1860912383_i64, %c126204340_i64, %c1965706431_i64, %c787680365_i64, %c1284882329_i64, %c126204340_i64, %c1965706431_i64, %c126204340_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %c126204340_i64, %c1860912383_i64, %c1965706431_i64, %c1965706431_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c126204340_i64, %c1284882329_i64, %c1284882329_i64, %c1284882329_i64, %c1860912383_i64, %c787680365_i64, %c787680365_i64, %c1284882329_i64, %c1965706431_i64, %c1965706431_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c1284882329_i64, %c1860912383_i64, %c1860912383_i64, %c1860912383_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c1284882329_i64, %c126204340_i64, %c787680365_i64, %c1860912383_i64, %c787680365_i64, %c1860912383_i64, %c1965706431_i64, %c1965706431_i64, %c126204340_i64, %c1860912383_i64, %c1284882329_i64, %c126204340_i64, %c1860912383_i64, %c126204340_i64, %c787680365_i64, %c787680365_i64, %c1284882329_i64, %c787680365_i64, %c787680365_i64, %c787680365_i64, %c126204340_i64, %c1965706431_i64, %c126204340_i64, %c1284882329_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c1860912383_i64, %c1860912383_i64, %c787680365_i64, %c1860912383_i64, %c1860912383_i64, %c1284882329_i64, %c787680365_i64, %c1965706431_i64, %c787680365_i64, %c787680365_i64, %c1284882329_i64, %c126204340_i64, %c1965706431_i64, %c126204340_i64, %c1284882329_i64, %c126204340_i64, %c126204340_i64, %c1860912383_i64, %c1860912383_i64, %c1965706431_i64, %c1965706431_i64, %c126204340_i64, %c787680365_i64, %c1965706431_i64, %c1965706431_i64, %c126204340_i64, %c1965706431_i64, %c787680365_i64, %c1965706431_i64, %c787680365_i64, %c1965706431_i64, %c787680365_i64, %c787680365_i64, %c126204340_i64, %c1860912383_i64, %c126204340_i64, %c1965706431_i64, %c126204340_i64, %c1860912383_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %c1284882329_i64, %c126204340_i64, %c1860912383_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %c126204340_i64, %c126204340_i64, %c1284882329_i64, %c787680365_i64, %c1965706431_i64, %c1284882329_i64, %c126204340_i64, %c1860912383_i64, %c787680365_i64, %c787680365_i64, %c787680365_i64, %c126204340_i64, %c787680365_i64, %c126204340_i64, %c787680365_i64, %c1965706431_i64, %c1860912383_i64, %c1860912383_i64, %c126204340_i64, %c787680365_i64, %c126204340_i64, %c787680365_i64, %c1860912383_i64, %c1284882329_i64 : tensor<3x10x8xi64>
          %323 = vector.broadcast %in : f32 to vector<8x8x8xf32>
          %324 = vector.fma %323, %323, %323 : vector<8x8x8xf32>
          %325 = math.ctpop %11 : tensor<3x10xi1>
          %326 = vector.insertelement %false_64, %34[%c14 : index] : vector<3xi1>
          %327 = index.floordivs %24, %c11
          %328 = arith.minui %c1965706431_i64, %c1860912383_i64 : i64
          %cast = tensor.cast %1 : tensor<3x10xi1> to tensor<?x?xi1>
          %329 = math.ipowi %8, %8 : tensor<3x10x8xi16>
          %330 = vector.reduction <mul>, %35 : vector<3xi16> into i16
          %331 = vector.extract %34[2] : vector<3xi1>
          %rank_66 = tensor.rank %12 : tensor<8x8x8xi1>
          memref.alloca_scope.return %c1965706431_i64 : i64
        }
        %288 = arith.maxui %true_0, %true_0 : i1
        memref.store %cst, %alloc_10[%c2, %c1, %c1] : memref<10x12x3xf16>
        %289 = vector.maskedload %280[%c0, %c2], %39, %40 : memref<3x10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %290 = bufferization.to_memref %5 : memref<8x8x8xi1>
        %291 = arith.ceildivsi %c1265439514_i32, %c1201619418_i32 : i32
        %false_59 = index.bool.constant false
        %292 = math.copysign %0, %0 : tensor<3x10x8xf16>
        %293 = bufferization.to_memref %transposed : memref<3x10x12xf32>
        %294 = math.log2 %17 : tensor<10x12x3xf32>
        memref.alloca_scope  {
          %302 = vector.load %alloc[%c8, %c11, %c0] : memref<10x12x3xi16>, vector<8x8x8xi16>
          %303 = index.castu %c126204340_i64 : i64 to index
          %304 = arith.remf %cst_3, %cst : f16
          %305 = bufferization.clone %alloc_12 : memref<3x10x8xi16> to memref<3x10x8xi16>
          %306 = math.cos %4 : tensor<3x10xf32>
          affine.store %c-19910_i16, %alloc_7[%c14, %c6, %c3] : memref<10x12x3xi16>
          %307 = vector.extract %34[2] : vector<3xi1>
          %308 = arith.shrsi %287, %c1860912383_i64 : i64
          %309 = arith.ceildivsi %c787680365_i64, %c1860912383_i64 : i64
          %expanded_61 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<3x10x8xf16> into tensor<3x10x8x1xf16>
          %310 = vector.broadcast %true_1 : i1 to vector<8x8xi1>
          %311 = vector.outerproduct %20, %20, %310 {kind = #vector.kind<and>} : vector<8xi1>, vector<8xi1>
          %inserted = tensor.insert %true_0 into %13[%c0, %c0, %c2] : tensor<10x12x3xi1>
          %312 = math.round %48 : tensor<3x3xf32>
          %313 = math.roundeven %0 : tensor<3x10x8xf16>
          %314 = index.castu %c7 : index to i32
          %315 = math.ctpop %c205974663_i32 : i32
          %splat_62 = tensor.splat %c787680365_i64 : tensor<3x10x8xi64>
          %316 = arith.cmpi slt, %c787680365_i64, %c1965706431_i64 : i64
          %317 = index.ceildivs %24, %24
          %rank_63 = tensor.rank %14 : tensor<3x10xf32>
          %318 = vector.broadcast %282 : i16 to vector<10xi16>
          vector.transfer_write %318, %alloc_16[%c3, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi16>, memref<3x10xi16>
          %319 = arith.remui %false_59, %true : i1
          %320 = arith.minui %c2017549053_i32, %c205974663_i32 : i32
          %321 = arith.remui %c-19910_i16, %282 : i16
          %322 = index.floordivs %c15, %rank_63
          %323 = memref.atomic_rmw maxf %in, %293[%c2, %c3, %c6] : (f32, memref<3x10x12xf32>) -> f32
          %rank_64 = tensor.rank %4 : tensor<3x10xf32>
          %324 = math.atan %7 : tensor<3x10xf32>
          %325 = vector.extract %302[7] : vector<8x8x8xi16>
          %alloc_65 = memref.alloc() : memref<10x12xi64>
          %326 = tensor.empty() : tensor<3x12xi64>
          %327 = linalg.matmul ins(%15, %alloc_65 : tensor<3x10xi64>, memref<10x12xi64>) outs(%326 : tensor<3x12xi64>) -> tensor<3x12xi64>
          %328 = math.ctpop %8 : tensor<3x10x8xi16>
          %329 = affine.max affine_map<(d0) -> (d0 mod 8)>(%c9)
        }
        %295 = arith.shrui %c787680365_i64, %287 : i64
        %296 = vector.extract %38[4] : vector<10xi16>
        %297 = math.ctlz %22 : tensor<i1>
        %298 = math.floor %14 : tensor<3x10xf32>
        %299 = memref.atomic_rmw andi %c-19910_i16, %alloc[%c6, %c7, %c1] : (i16, memref<10x12x3xi16>) -> i16
        %300 = math.cttz %3 : tensor<3x10x8xi64>
        %301 = index.casts %c126204340_i64 : i64 to index
        %cst_60 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_60 : f32
      }
    %51 = math.ceil %9 : tensor<10x12x3xf16>
    %52 = arith.xori %c1965706431_i64, %c787680365_i64 : i64
    %53 = vector.extract %40[6] : vector<10xi16>
    %54 = arith.divui %c1965706431_i64, %c1965706431_i64 : i64
    %55 = index.floordivs %rank, %c11
    %56 = bufferization.to_memref %11 : memref<3x10xi1>
    %57 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
    %58 = vector.outerproduct %40, %38, %57 {kind = #vector.kind<and>} : vector<10xi16>, vector<10xi16>
    %59 = math.tan %48 : tensor<3x3xf32>
    %rank_21 = tensor.rank %12 : tensor<8x8x8xi1>
    %60 = math.expm1 %9 : tensor<10x12x3xf16>
    %61 = arith.shrui %true, %true_0 : i1
    %62 = vector.reduction <or>, %20 : vector<8xi1> into i1
    %generated = tensor.generate %c15 {
    ^bb0(%arg3: index, %arg4: index):
      %276 = arith.remsi %true_1, %true : i1
      %277 = affine.if affine_set<(d0, d1) : (-(d1 - d1 floordiv 16) == 0, d1 >= 0, d1 - d1 floordiv 16 == 0)>(%c2, %c0) -> i1 {
        %281 = affine.max affine_map<(d0, d1, d2) -> (-d0, -(-d1 - 128))>(%c11, %c6, %rank)
        %282 = arith.remf %cst, %cst_3 : f16
        %283 = affine.load %56[%c12, %c4] : memref<3x10xi1>
        %284 = math.floor %50 : tensor<3x10xf32>
        %285 = math.exp2 %10 : tensor<3x10x8xf32>
        %286 = memref.realloc %alloc_19 : memref<8xi1> to memref<8xi1>
        %287 = math.ceil %16 : tensor<10x12x3xf32>
        %288 = arith.remsi %c205974663_i32, %c205974663_i32 : i32
        affine.yield %true_1 : i1
      } else {
        %281 = index.add %c11, %c12
        %282 = arith.divsi %true_1, %true : i1
        %283 = math.round %7 : tensor<3x10xf32>
        %284 = arith.minui %c-19910_i16, %c-19910_i16 : i16
        %285 = arith.ori %c1860912383_i64, %c126204340_i64 : i64
        %286 = arith.divui %true_1, %true_0 : i1
        %287 = index.sizeof
        %288 = math.exp2 %0 : tensor<3x10x8xf16>
        affine.yield %true_0 : i1
      }
      %278 = math.fma %2, %2, %2 : tensor<10x12x3xf32>
      %279 = vector.broadcast %cst : f16 to vector<f16>
      %280 = vector.transfer_write %279, %0[%c13, %c7, %24] : vector<f16>, tensor<3x10x8xf16>
      tensor.yield %c-19910_i16 : i16
    } : tensor<?x10xi16>
    %cst_22 = arith.constant 1.000000e+00 : f32
    %cst_23 = arith.constant 0.000000e+00 : f32
    %63 = vector.transfer_read %10[%c7, %42, %c8], %cst_23 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<3x10x8xf32>, vector<12xf32>
    %64 = vector.broadcast %c-19910_i16 : i16 to vector<3x10x8xi16>
    %65 = vector.broadcast %true_0 : i1 to vector<3x10x8xi1>
    %66 = vector.broadcast %c1265439514_i32 : i32 to vector<3x10x8xi32>
    %67 = vector.gather %alloc_17[%24, %c6] [%66], %65, %64 : memref<3x10xi16>, vector<3x10x8xi32>, vector<3x10x8xi1>, vector<3x10x8xi16> into vector<3x10x8xi16>
    %68 = arith.remsi %c1284882329_i64, %c1965706431_i64 : i64
    %69 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 8)>(%c8, %28, %c11)
    %expanded_24 = tensor.expand_shape %expanded [[0], [1], [2], [3, 4]] : tensor<8x8x8x1xi1> into tensor<8x8x8x1x1xi1>
    %70 = arith.addf %cst_2, %cst_22 : f32
    %alloc_25 = memref.alloc() : memref<10x12xi1>
    %71 = tensor.empty() : tensor<3x12xi1>
    %72 = linalg.matmul ins(%11, %alloc_25 : tensor<3x10xi1>, memref<10x12xi1>) outs(%71 : tensor<3x12xi1>) -> tensor<3x12xi1>
    %73 = vector.multi_reduction <add>, %39, %true_1 [0] : vector<10xi1> to i1
    %74 = affine.for %arg3 = 0 to 124 iter_args(%arg4 = %expanded) -> (tensor<8x8x8x1xi1>) {
      affine.yield %expanded : tensor<8x8x8x1xi1>
    }
    %75 = vector.extract %35[2] : vector<3xi16>
    %76 = arith.mulf %cst_2, %cst_2 : f32
    %77 = math.atan2 %10, %10 : tensor<3x10x8xf32>
    %78 = tensor.empty() : tensor<8x8x8x1xi1>
    %mapped_26 = linalg.map ins(%expanded, %expanded, %expanded : tensor<8x8x8x1xi1>, tensor<8x8x8x1xi1>, tensor<8x8x8x1xi1>) outs(%78 : tensor<8x8x8x1xi1>)
      (%in: i1, %in_57: i1, %in_58: i1) {
        %alloc_59 = memref.alloc() : memref<10x10xi64>
        %276 = tensor.empty() : tensor<3x10xi64>
        %277 = linalg.matmul ins(%15, %alloc_59 : tensor<3x10xi64>, memref<10x10xi64>) outs(%276 : tensor<3x10xi64>) -> tensor<3x10xi64>
        %278 = memref.realloc %alloc_19 : memref<8xi1> to memref<3xi1>
        %279 = vector.broadcast %cst_3 : f16 to vector<10x12x3xf16>
        %280 = vector.broadcast %in_57 : i1 to vector<10x12x3xi1>
        %281 = vector.broadcast %c205974663_i32 : i32 to vector<10x12x3xi32>
        %282 = vector.gather %alloc_10[%24, %c5, %c6] [%281], %280, %279 : memref<10x12x3xf16>, vector<10x12x3xi32>, vector<10x12x3xi1>, vector<10x12x3xf16> into vector<10x12x3xf16>
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> (0, (d0 * 8) floordiv 16, d0 * 8 - 8)>(%c0, %28, %43, %c8)
        %from_elements_60 = tensor.from_elements %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_22 : tensor<3x10x8xf32>
        %cast = tensor.cast %71 : tensor<3x12xi1> to tensor<?x?xi1>
        %284 = vector.splat %c10 : vector<8x8x8xindex>
        %285 = vector.create_mask %c9, %c3, %c1 : vector<3x10x8xi1>
        %286 = math.log10 %17 : tensor<10x12x3xf32>
        %287 = index.ceildivs %c4, %55
        %288 = vector.broadcast %true : i1 to vector<10x8x10x8xi1>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %65, %285, %288 : vector<3x10x8xi1>, vector<3x10x8xi1> into vector<10x8x10x8xi1>
        %290 = memref.atomic_rmw mins %c-19910_i16, %alloc_14[%c1, %c7, %c2] : (i16, memref<3x10x8xi16>) -> i16
        %291 = arith.divsi %in, %73 : i1
        %292 = memref.atomic_rmw minu %c1201619418_i32, %alloc_5[%c3, %c3, %c7] : (i32, memref<8x8x8xi32>) -> i32
        %293 = vector.reduction <maxui>, %33 : vector<3xi16> into i16
        %294 = tensor.empty() : tensor<8x8x8xf16>
        %295 = vector.gather %294[%c6, %c7, %c10] [%281], %280, %282 : tensor<8x8x8xf16>, vector<10x12x3xi32>, vector<10x12x3xi1>, vector<10x12x3xf16> into vector<10x12x3xf16>
        %296 = vector.broadcast %c1265439514_i32 : i32 to vector<10xi32>
        %297 = vector.multi_reduction <maxui>, %66, %296 [0, 2] : vector<3x10x8xi32> to vector<10xi32>
        memref.alloca_scope  {
          %true_65 = index.bool.constant true
          memref.copy %alloc_12, %alloc_14 : memref<3x10x8xi16> to memref<3x10x8xi16>
          %309 = vector.transpose %296, [0] : vector<10xi32> to vector<10xi32>
          %310 = vector.broadcast %true_0 : i1 to vector<8x8xi1>
          %311 = vector.outerproduct %20, %20, %310 {kind = #vector.kind<maxui>} : vector<8xi1>, vector<8xi1>
          %312 = math.floor %9 : tensor<10x12x3xf16>
          %collapsed_66 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
          %313 = affine.min affine_map<(d0, d1, d2) -> (d2 * 8, d1 floordiv 32, d1 floordiv 32 + d0)>(%c2, %c3, %c7)
          %314 = arith.divsi %c1860912383_i64, %c126204340_i64 : i64
          %315 = bufferization.clone %alloc_12 : memref<3x10x8xi16> to memref<3x10x8xi16>
          %316 = vector.broadcast %true_1 : i1 to vector<10xi1>
          %317 = vector.transfer_write %316, %1[%c4, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, tensor<3x10xi1>
          %rank_67 = tensor.rank %expanded : tensor<8x8x8x1xi1>
          %alloc_68 = memref.alloc() : memref<8x8x8xi1>
          memref.copy %alloc_6, %alloc_68 : memref<8x8x8xi1> to memref<8x8x8xi1>
          %318 = vector.broadcast %c2017549053_i32 : i32 to vector<10x12xi32>
          %319 = vector.multi_reduction <minsi>, %281, %318 [2] : vector<10x12x3xi32> to vector<10x12xi32>
          %320 = math.exp %14 : tensor<3x10xf32>
          %expanded_69 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<3x10x8xf32> into tensor<3x10x8x1xf32>
          %321 = math.fma %7, %4, %50 : tensor<3x10xf32>
          %322 = arith.maxui %c-19910_i16, %c-19910_i16 : i16
          %323 = arith.shli %in, %in_58 : i1
          %324 = bufferization.to_memref %expanded_24 : memref<8x8x8x1x1xi1>
          %325 = bufferization.clone %alloc_8 : memref<8x8x8xf32> to memref<8x8x8xf32>
          %326 = affine.load %324[%c11, %c3, %c6, %c14, %c3] : memref<8x8x8x1x1xi1>
          %327 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
          %328 = vector.outerproduct %38, %38, %327 {kind = #vector.kind<and>} : vector<10xi16>, vector<10xi16>
          %329 = arith.muli %in_57, %true_1 : i1
          %330 = index.floordivs %c14, %42
          %331 = vector.transpose %38, [0] : vector<10xi16> to vector<10xi16>
          %332 = math.tanh %7 : tensor<3x10xf32>
          %333 = arith.divf %cst_22, %cst_22 : f32
          %334 = vector.extract %65[2] : vector<3x10x8xi1>
          %335 = math.tan %from_elements_60 : tensor<3x10x8xf32>
          %c25621_i16 = arith.constant 25621 : i16
          %336 = vector.multi_reduction <maxui>, %33, %c-19910_i16 [0] : vector<3xi16> to i16
          %337 = arith.maxf %cst_2, %cst_22 : f32
        }
        %298 = memref.load %alloc[%c2, %c6, %c2] : memref<10x12x3xi16>
        %299 = arith.minf %cst_2, %cst_22 : f32
        %true_61 = arith.constant true
        %300 = vector.transfer_read %12[%42, %c14, %c13], %true_61 : tensor<8x8x8xi1>, vector<8xi1>
        %301 = math.cos %14 : tensor<3x10xf32>
        %302 = memref.load %alloc_13[%c5, %c2, %c1] : memref<8x8x8xf16>
        %false_62 = index.bool.constant false
        %generated_63 = tensor.generate %rank_21, %c2 {
        ^bb0(%arg3: index, %arg4: index, %arg5: index):
          %c-10969_i16 = arith.constant -10969 : i16
          %309 = bufferization.to_tensor %alloc_4 : memref<3x10x8xf32>
          %310 = index.divs %arg4, %c2
          %311 = arith.ori %true_61, %in : i1
          tensor.yield %c2017549053_i32 : i32
        } : tensor<?x?x8xi32>
        %303 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2 floordiv 2 - 4) mod 16)>(%c15, %c13, %283)
        scf.if %true_1 {
          %309 = math.round %18 : tensor<3x10x12xf32>
          %310 = arith.maxui %c1965706431_i64, %c1284882329_i64 : i64
          %311 = math.exp %2 : tensor<10x12x3xf32>
          %312 = arith.minui %c787680365_i64, %c1284882329_i64 : i64
          %313 = arith.divsi %true, %true_1 : i1
          %314 = arith.shrui %in, %in : i1
          %315 = math.ctlz %expanded : tensor<8x8x8x1xi1>
          %316 = memref.atomic_rmw addf %cst, %alloc_10[%c7, %c5, %c1] : (f16, memref<10x12x3xf16>) -> f16
        } else {
          %309 = math.rsqrt %17 : tensor<10x12x3xf32>
          %310 = math.ctpop %15 : tensor<3x10xi64>
          %311 = index.maxu %c11, %43
          %312 = arith.divsi %c1860912383_i64, %c787680365_i64 : i64
          %313 = arith.remsi %c787680365_i64, %c787680365_i64 : i64
          %314 = arith.xori %c1284882329_i64, %c1284882329_i64 : i64
          %315 = math.tan %10 : tensor<3x10x8xf32>
          %316 = math.roundeven %cst_3 : f16
        }
        %304 = arith.remsi %c205974663_i32, %c1201619418_i32 : i32
        %305 = memref.realloc %alloc_19 : memref<8xi1> to memref<8xi1>
        %306 = math.log10 %7 : tensor<3x10xf32>
        %307 = memref.alloca_scope  -> (memref<10x12x3xi64>) {
          %309 = math.ipowi %expanded_24, %expanded_24 : tensor<8x8x8x1x1xi1>
          %310 = bufferization.to_memref %10 : memref<3x10x8xf32>
          %311 = arith.ceildivsi %c-19910_i16, %c-19910_i16 : i16
          %312 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - d3 - 32, (d3 + d1 ceildiv 32) ceildiv 4, d3 + d1 ceildiv 32, (d3 + d1 ceildiv 32) ceildiv 4)>(%c7, %rank, %c6, %c3)
          %313 = math.floor %2 : tensor<10x12x3xf32>
          %314 = vector.insertelement %c-19910_i16, %35[%rank_21 : index] : vector<3xi16>
          %315 = vector.create_mask %c14, %c11 : vector<3x10xi1>
          %316 = vector.create_mask %c15, %c10, %c4 : vector<8x8x8xi1>
          %317 = memref.realloc %alloc_19 : memref<8xi1> to memref<10xi1>
          %inserted = tensor.insert %in_58 into %13[%c3, %c9, %c1] : tensor<10x12x3xi1>
          %318 = vector.reduction <minui>, %39 : vector<10xi1> into i1
          %319 = vector.multi_reduction <and>, %296, %c1201619418_i32 [0] : vector<10xi32> to i32
          %320 = vector.broadcast %cst_3 : f16 to vector<12x3x12x3xf16>
          %321 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %279, %279, %320 : vector<10x12x3xf16>, vector<10x12x3xf16> into vector<12x3x12x3xf16>
          %322 = vector.transpose %296, [0] : vector<10xi32> to vector<10xi32>
          %323 = math.ctpop %73 : i1
          %324 = arith.remsi %73, %in : i1
          %325 = arith.maxsi %73, %in : i1
          %326 = index.divs %42, %c8
          %c-23871_i16 = arith.constant -23871 : i16
          %327 = arith.divf %cst_3, %cst : f16
          affine.store %c-19910_i16, %alloc_14[%c8, %c4, %c6] : memref<3x10x8xi16>
          %cst_65 = arith.constant 3.198400e+04 : f16
          %328 = index.maxs %24, %c10
          %rank_66 = tensor.rank %8 : tensor<3x10x8xi16>
          %329 = math.rsqrt %4 : tensor<3x10xf32>
          %330 = math.cos %16 : tensor<10x12x3xf32>
          %331 = index.sizeof
          %rank_67 = tensor.rank %0 : tensor<3x10x8xf16>
          %332 = math.round %50 : tensor<3x10xf32>
          %333 = index.floordivs %328, %c2
          %334 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 128)>(%c0, %rank_21, %24)
          %335 = arith.remf %cst_3, %cst : f16
          memref.alloca_scope.return %alloc_18 : memref<10x12x3xi64>
        }
        %308 = math.ctpop %true : i1
        %true_64 = arith.constant true
        linalg.yield %true_64 : i1
      }
    %false = arith.constant false
    %79 = vector.transfer_read %21[%c14], %false : tensor<8xi1>, vector<i1>
    %80 = index.sizeof
    %81 = arith.minf %cst_22, %cst_2 : f32
    %82 = index.add %c1, %c2
    %83 = math.expm1 %cst_3 : f16
    %84 = tensor.empty() : tensor<3xf16>
    %85 = tensor.empty() : tensor<10xf16>
    %86 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%84, %85 : tensor<3xf16>, tensor<10xf16>) outs(%0 : tensor<3x10x8xf16>) {
    ^bb0(%in: f16, %in_57: f16, %out: f16):
      %276 = affine.if affine_set<(d0, d1) : (-d0 + 8 == 0, -((d0 mod 32) mod 64) - 8 == 0, -((d0 mod 32) mod 64) - 8 >= 0, d0 mod 4 == 0)>(%c2, %c3) -> memref<8x8x8xi16> {
        %307 = affine.apply affine_map<(d0, d1) -> (d0 * -127 - 128)>(%c15, %c14)
        %308 = math.expm1 %50 : tensor<3x10xf32>
        %309 = index.mul %c2, %c15
        affine.store %out, %alloc_13[%c10, %c1, %c1] : memref<8x8x8xf16>
        %310 = math.log10 %10 : tensor<3x10x8xf32>
        %311 = arith.ceildivsi %c1201619418_i32, %c1201619418_i32 : i32
        %alloca_62 = memref.alloca() : memref<3x10xi16>
        %312 = arith.remsi %true, %true : i1
        %alloc_63 = memref.alloc() : memref<8x8x8xi16>
        affine.yield %alloc_63 : memref<8x8x8xi16>
      } else {
        %307 = vector.reduction <mul>, %20 : vector<8xi1> into i1
        %308 = vector.broadcast %false : i1 to vector<8x8xi1>
        %309 = vector.outerproduct %20, %20, %308 {kind = #vector.kind<xor>} : vector<8xi1>, vector<8xi1>
        %rank_62 = tensor.rank %10 : tensor<3x10x8xf32>
        %310 = arith.divui %c1965706431_i64, %c1965706431_i64 : i64
        %311 = arith.shrui %c787680365_i64, %c1860912383_i64 : i64
        %312 = vector.bitcast %66 : vector<3x10x8xi32> to vector<3x10x8xi32>
        %313 = math.exp2 %50 : tensor<3x10xf32>
        %314 = arith.remf %in, %out : f16
        %alloc_63 = memref.alloc() : memref<8x8x8xi16>
        affine.yield %alloc_63 : memref<8x8x8xi16>
      }
      memref.alloca_scope  {
        %alloc_62 = memref.alloc() : memref<10x12x3xf32>
        %307 = vector.broadcast %cst_22 : f32 to vector<8x8x8xf32>
        %308 = vector.broadcast %true_1 : i1 to vector<8x8x8xi1>
        %309 = vector.broadcast %c1265439514_i32 : i32 to vector<8x8x8xi32>
        %310 = vector.gather %alloc_62[%c6, %c9, %c11] [%309], %308, %307 : memref<10x12x3xf32>, vector<8x8x8xi32>, vector<8x8x8xi1>, vector<8x8x8xf32> into vector<8x8x8xf32>
        %311 = vector.load %alloc_4[%c2, %c1, %c4] : memref<3x10x8xf32>, vector<8x8x8xf32>
        %from_elements_63 = tensor.from_elements %true_1, %true_0, %true_1, %true_0, %73, %73, %73, %73, %true, %true_1, %73, %73, %true, %true_0, %false, %true_1, %true_0, %true_0, %true_1, %false, %false, %false, %false, %true, %true, %73, %73, %true_1, %false, %false : tensor<3x10xi1>
        %312 = arith.muli %true_0, %true : i1
        %313 = vector.broadcast %73 : i1 to vector<i1>
        %314 = vector.transfer_write %313, %1[%c8, %43] : vector<i1>, tensor<3x10xi1>
        %315 = math.absf %10 : tensor<3x10x8xf32>
        %316 = affine.load %alloc_6[%c10, %c13, %c5] : memref<8x8x8xi1>
        %317 = math.fma %transposed, %transposed, %transposed : tensor<3x10x12xf32>
        %318 = arith.andi %73, %73 : i1
        %319 = vector.reduction <and>, %35 : vector<3xi16> into i16
        %320 = vector.matrix_multiply %39, %39 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %alloc_64 = memref.alloc() : memref<10x12x3xf32>
        memref.copy %alloc_62, %alloc_64 : memref<10x12x3xf32> to memref<10x12x3xf32>
        %collapsed_65 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<3x10x8xf32> into tensor<30x8xf32>
        %321 = vector.matrix_multiply %20, %20 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %expanded_66 = tensor.expand_shape %collapsed_65 [[0], [1, 2]] : tensor<30x8xf32> into tensor<30x8x1xf32>
        %322 = tensor.empty() : tensor<8x8x8xf16>
        %323 = vector.broadcast %cst : f16 to vector<3x10xf16>
        %324 = vector.broadcast %73 : i1 to vector<3x10xi1>
        %325 = vector.broadcast %c205974663_i32 : i32 to vector<3x10xi32>
        %326 = vector.gather %322[%c2, %c5, %c14] [%325], %324, %323 : tensor<8x8x8xf16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xf16> into vector<3x10xf16>
        %327 = affine.load %alloc_12[%c10, %c15, %c13] : memref<3x10x8xi16>
        %328 = index.divu %c12, %rank_21
        %329 = index.mul %55, %c1
        %330 = math.round %2 : tensor<10x12x3xf32>
        %331 = vector.broadcast %true : i1 to vector<10x10xi1>
        %332 = vector.outerproduct %39, %39, %331 {kind = #vector.kind<minsi>} : vector<10xi1>, vector<10xi1>
        %333 = index.sizeof
        %334 = vector.extract %33[0] : vector<3xi16>
        %335 = bufferization.to_tensor %alloc_13 : memref<8x8x8xf16>
        %336 = memref.atomic_rmw minf %cst_22, %alloc_62[%c0, %c10, %c1] : (f32, memref<10x12x3xf32>) -> f32
        %337 = math.log10 %in_57 : f16
        %338 = math.rsqrt %7 : tensor<3x10xf32>
        %339 = math.log10 %collapsed_65 : tensor<30x8xf32>
        %340 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, -(d3 + d0))>(%80, %c8, %82, %rank_21)
        %341 = vector.transpose %321, [0] : vector<1xi1> to vector<1xi1>
        %342 = math.exp %collapsed_65 : tensor<30x8xf32>
        %343 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      }
      %277 = vector.broadcast %c-19910_i16 : i16 to vector<3x3xi16>
      %278 = vector.outerproduct %35, %33, %277 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
      %279 = affine.min affine_map<(d0, d1, d2) -> ((d1 * 2) mod 8)>(%28, %55, %c4)
      %280 = vector.broadcast %c-19910_i16 : i16 to vector<3x3xi16>
      %281 = vector.outerproduct %35, %35, %280 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
      %282 = arith.minui %c126204340_i64, %c1284882329_i64 : i64
      %cst_58 = arith.constant 4.345600e+04 : f16
      %283 = arith.remf %in_57, %in : f16
      %284 = arith.maxui %c1201619418_i32, %c205974663_i32 : i32
      %285 = vector.flat_transpose %35 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %286 = math.log2 %cst_2 : f32
      %287 = math.log10 %cst : f16
      %288 = vector.splat %73 : vector<10x12x3xi1>
      %289 = arith.remui %true_0, %false : i1
      %splat_59 = tensor.splat %cst_2 : tensor<3x10xf32>
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<8x8x8xi1>) outs(%5 : tensor<8x8x8xi1>) {
      ^bb0(%in_62: i1, %out_63: i1):
        %rank_64 = tensor.rank %expanded_24 : tensor<8x8x8x1x1xi1>
        %307 = index.sub %rank_21, %42
        %from_elements_65 = tensor.from_elements %true_1, %true_0, %true_0, %out_63, %false, %in_62, %out_63, %73, %73, %true_0, %true, %73, %true_0, %true_0, %true_1, %out_63, %out_63, %true, %true_1, %false, %out_63, %out_63, %false, %out_63, %73, %true_0, %true_0, %true, %true_1, %73, %true, %in_62, %true_1, %in_62, %false, %true_1, %true_1, %true, %true_0, %false, %73, %in_62, %true_0, %true_0, %true, %73, %true, %true_0, %false, %true, %in_62, %in_62, %out_63, %out_63, %false, %true_0, %73, %true_1, %false, %true, %out_63, %in_62, %true, %true, %73, %true_0, %out_63, %true_0, %true_1, %out_63, %out_63, %73, %out_63, %true_0, %true, %73, %73, %false, %true_1, %true_1, %true_0, %true_0, %in_62, %73, %false, %73, %true, %true_0, %true_0, %out_63, %true_0, %out_63, %true, %true_0, %in_62, %in_62, %false, %73, %73, %false, %true, %out_63, %in_62, %false, %in_62, %true_0, %true_0, %out_63, %true, %false, %true_1, %false, %true, %73, %in_62, %73, %true, %73, %out_63, %false, %out_63, %true_1, %in_62, %false, %in_62, %73, %false, %out_63, %in_62, %in_62, %true_1, %73, %in_62, %true, %in_62, %in_62, %true_1, %in_62, %true, %73, %73, %true_1, %out_63, %true_0, %true, %true_0, %out_63, %true, %out_63, %false, %73, %true_0, %out_63, %false, %73, %false, %true_0, %73, %in_62, %true_1, %true_0, %out_63, %in_62, %false, %out_63, %true_1, %true, %73, %73, %in_62, %in_62, %true, %in_62, %true_1, %out_63, %true, %true_0, %true_0, %true_0, %false, %in_62, %in_62, %false, %false, %false, %73, %true_0, %true_1, %false, %true_1, %in_62, %out_63, %73, %true_1, %out_63, %true_1, %true, %false, %out_63, %false, %false, %true_0, %73, %73, %out_63, %out_63, %true_0, %false, %out_63, %true_1, %true, %false, %false, %out_63, %out_63, %true, %false, %73, %true, %73, %out_63, %false, %true_1, %in_62, %out_63, %false, %out_63, %out_63, %73, %true_1, %true_0, %true_1, %in_62, %73, %true, %73, %out_63, %73, %true_1, %out_63, %true_0, %true_0, %out_63, %in_62, %true_0, %73, %true, %in_62, %false, %out_63, %true_0, %73, %true_1, %false, %out_63, %in_62, %false, %73, %73, %in_62, %true_1, %true_0, %false, %true_1, %false, %false, %true_1, %in_62, %true, %true_0, %true_1, %true, %in_62, %73, %in_62, %true_0, %out_63, %true_1, %false, %true_1, %true_1, %73, %out_63, %false, %true, %in_62, %73, %out_63, %out_63, %true_0, %in_62, %in_62, %out_63, %false, %out_63, %true_1, %true_0, %true_0, %73, %true_1, %in_62, %73, %true_1, %true_0, %true_0, %73, %73, %true_0, %73, %false, %true_1, %true_0, %true, %false, %false, %true, %73, %true, %true_0, %out_63, %73, %out_63, %false, %in_62, %in_62, %true, %73, %true_1, %73, %out_63, %true_1, %true_0, %in_62, %out_63, %true_1, %false, %true, %true, %true_0, %true_1, %false, %73, %true_1, %true, %true_0, %true_0, %false, %73, %true, %in_62, %73, %in_62, %false, %false, %true, %true_0, %true_0, %true_0, %out_63, %false, %73, %true_0, %true, %false, %out_63, %true, %true_0, %in_62, %73, %true_0, %73, %true_1, %73, %73, %true, %out_63, %in_62, %73, %in_62, %in_62, %false, %true_1, %true_1, %true_1, %73, %true, %out_63, %true_0, %true, %out_63, %true_0, %out_63, %true_0, %true_0, %out_63, %true_1, %73, %true_1, %out_63, %in_62, %true_0, %in_62, %false, %true_0, %true_1, %true, %73, %false, %73, %true_0, %73, %true, %73, %true, %false, %out_63, %false, %73, %73, %in_62, %out_63, %true_0, %in_62, %false, %true_1, %in_62, %true_1, %true, %true_0, %in_62, %out_63, %false, %in_62, %true, %true_1, %73, %out_63, %73, %out_63, %out_63, %true, %true, %false, %true, %false, %out_63, %true, %true, %true_0, %false, %true, %in_62, %false, %true, %true_1, %true, %out_63, %73, %out_63, %in_62, %true_1, %true, %true_0, %73, %in_62, %true_0, %true, %73, %true, %true, %in_62, %in_62, %out_63, %73, %true_0, %true_1, %73, %in_62, %false, %73, %in_62, %false, %in_62, %true_0, %out_63, %false, %out_63, %false, %73, %in_62, %in_62, %true_0, %false, %73, %false, %true, %in_62, %true, %false, %in_62, %true, %73, %true_0, %73, %true_0, %in_62, %true, %true_1, %73, %out_63, %in_62, %true_1 : tensor<8x8x8xi1>
        %308 = vector.broadcast %cst_2 : f32 to vector<10x12x3xf32>
        %309 = vector.fma %308, %308, %308 : vector<10x12x3xf32>
        %310 = affine.load %alloc[%c4, %c9, %c9] : memref<10x12x3xi16>
        %311 = vector.reduction <xor>, %38 : vector<10xi16> into i16
        %312 = math.ctlz %6 : tensor<8x8x8xi32>
        %rank_66 = tensor.rank %9 : tensor<10x12x3xf16>
        %313 = vector.multi_reduction <add>, %309, %308 [] : vector<10x12x3xf32> to vector<10x12x3xf32>
        %314 = vector.matrix_multiply %40, %38 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
        %splat_67 = tensor.splat %c2017549053_i32 : tensor<8x8x8xi32>
        %315 = math.round %transposed : tensor<3x10x12xf32>
        %316 = arith.shrsi %c1201619418_i32, %c205974663_i32 : i32
        %317 = math.cttz %c1201619418_i32 : i32
        %318 = vector.splat %c9 : vector<8x8x8xindex>
        %319 = tensor.empty() : tensor<3x10x12xi32>
        %320 = math.fpowi %transposed, %319 : tensor<3x10x12xf32>, tensor<3x10x12xi32>
        %321 = memref.atomic_rmw minf %out, %alloc_10[%c7, %c6, %c1] : (f16, memref<10x12x3xf16>) -> f16
        %322 = vector.maskedload %alloc_19[%c6], %20, %20 : memref<8xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %323 = vector.extract %35[1] : vector<3xi16>
        %324 = arith.remsi %310, %310 : i16
        %325 = index.floordivs %69, %c2
        %326 = math.expm1 %9 : tensor<10x12x3xf16>
        memref.assume_alignment %alloc_19, 4 : memref<8xi1>
        %327 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + d2 ceildiv 128) * 2, d2, d1, d3 - (d1 + 1) - 8)>(%c3, %c6, %69, %c6)
        %328 = vector.splat %false : vector<10x12x3xi1>
        %329 = arith.andi %c205974663_i32, %c1265439514_i32 : i32
        %330 = arith.maxui %c1265439514_i32, %c205974663_i32 : i32
        %331 = index.add %c3, %327
        %332 = arith.xori %c1265439514_i32, %c1201619418_i32 : i32
        %333 = memref.realloc %alloc_19 : memref<8xi1> to memref<8xi1>
        %334 = index.maxs %c0, %rank_66
        %335 = affine.apply affine_map<(d0, d1, d2) -> (d0 - (d1 ceildiv 2) ceildiv 64)>(%rank, %80, %331)
        linalg.yield %out_63 : i1
      } -> tensor<8x8x8xi1>
      %291 = bufferization.clone %alloc_15 : memref<8x8x8xf16> to memref<8x8x8xf16>
      %292 = vector.extract %33[2] : vector<3xi16>
      %293 = vector.broadcast %cst_3 : f16 to vector<12xf16>
      %294 = vector.broadcast %true_1 : i1 to vector<12xi1>
      %295 = vector.maskedload %alloc_9[%c0, %c4, %c4], %294, %293 : memref<3x10x8xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
      %296 = vector.broadcast %cst_22 : f32 to vector<10x12x3xf32>
      %297 = vector.fma %296, %296, %296 : vector<10x12x3xf32>
      %298 = math.powf %10, %10 : tensor<3x10x8xf32>
      memref.copy %alloc_16, %alloc_17 : memref<3x10xi16> to memref<3x10xi16>
      %299 = memref.atomic_rmw maxf %cst_22, %alloc_8[%c6, %c6, %c2] : (f32, memref<8x8x8xf32>) -> f32
      %300 = tensor.empty() : tensor<3x10xf32>
      %mapped_60 = linalg.map ins(%splat_59, %14 : tensor<3x10xf32>, tensor<3x10xf32>) outs(%300 : tensor<3x10xf32>)
        (%in_62: f32, %in_63: f32) {
          %307 = memref.realloc %alloc_19 : memref<8xi1> to memref<12xi1>
          %308 = math.powf %cst, %in_57 : f16
          %309 = math.exp %4 : tensor<3x10xf32>
          %310 = vector.reduction <minsi>, %285 : vector<3xi16> into i16
          %c1_i64 = arith.constant 1 : i64
          %311 = vector.transfer_read %15[%c13, %c5], %c1_i64 : tensor<3x10xi64>, vector<i64>
          %312 = arith.minsi %c787680365_i64, %c1860912383_i64 : i64
          %313 = vector.broadcast %c11 : index to vector<12xindex>
          %314 = vector.broadcast %cst_2 : f32 to vector<12xf32>
          vector.scatter %alloc_8[%c3, %c0, %c5] [%313], %294, %314 : memref<8x8x8xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
          %315 = arith.divui %c1201619418_i32, %c1265439514_i32 : i32
          %316 = arith.remf %in_63, %cst_2 : f32
          %317 = math.log10 %16 : tensor<10x12x3xf32>
          affine.store %c-19910_i16, %alloc_12[%c0, %c8, %c15] : memref<3x10x8xi16>
          %inserted = tensor.insert %cst_3 into %0[%c2, %c0, %c5] : tensor<3x10x8xf16>
          %318 = bufferization.to_tensor %alloc_5 : memref<8x8x8xi32>
          %319 = math.exp %0 : tensor<3x10x8xf16>
          %320 = math.log2 %in : f16
          %321 = math.ctpop %c1284882329_i64 : i64
          %322 = math.roundeven %48 : tensor<3x3xf32>
          %323 = math.cos %in_57 : f16
          %324 = math.round %17 : tensor<10x12x3xf32>
          %325 = arith.remf %cst, %in_57 : f16
          %326 = arith.maxui %c205974663_i32, %c205974663_i32 : i32
          %327 = bufferization.clone %alloc_12 : memref<3x10x8xi16> to memref<3x10x8xi16>
          %328 = index.sizeof
          %329 = arith.shli %73, %true_0 : i1
          %330 = arith.ceildivsi %c1284882329_i64, %c1860912383_i64 : i64
          %331 = math.ceil %cst_2 : f32
          %332 = index.ceildivu %c6, %28
          %333 = arith.minf %cst_22, %cst_2 : f32
          %334 = bufferization.to_tensor %56 : memref<3x10xi1>
          %335 = math.expm1 %cst_22 : f32
          %336 = arith.cmpf olt, %cst_2, %cst_22 : f32
          %337 = affine.max affine_map<(d0) -> ((d0 mod 8) * 32 + 2, d0 floordiv 4)>(%55)
          %cst_64 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_64 : f32
        }
      memref.assume_alignment %alloc_12, 4 : memref<3x10x8xi16>
      %collapsed_61 = tensor.collapse_shape %300 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
      %301 = math.floor %collapsed_61 : tensor<30xf32>
      %302 = affine.load %alloc_19[%c14] : memref<8xi1>
      %303 = arith.remui %c1201619418_i32, %c205974663_i32 : i32
      %304 = scf.if %true -> (memref<8x8x8xi32>) {
        %307 = math.exp2 %48 : tensor<3x3xf32>
        %308 = arith.minui %c205974663_i32, %c1201619418_i32 : i32
        %309 = index.divu %279, %43
        %310 = math.log2 %in_57 : f16
        %311 = index.ceildivu %c0, %24
        %312 = math.ceil %10 : tensor<3x10x8xf32>
        %313 = math.roundeven %50 : tensor<3x10xf32>
        %314 = index.add %28, %24
        scf.yield %alloc_5 : memref<8x8x8xi32>
      } else {
        %307 = math.fma %cst_22, %cst_22, %cst_2 : f32
        %308 = vector.broadcast %302 : i1 to vector<3x10x8xi1>
        %309 = arith.minf %out, %cst_3 : f16
        %310 = index.casts %c-19910_i16 : i16 to index
        %311 = math.tanh %16 : tensor<10x12x3xf32>
        %312 = vector.transpose %65, [2, 1, 0] : vector<3x10x8xi1> to vector<8x10x3xi1>
        %313 = vector.load %alloc_19[%c7] : memref<8xi1>, vector<3x10xi1>
        %314 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%c14, %c4, %c3)
        scf.yield %alloc_5 : memref<8x8x8xi32>
      }
      %305 = arith.maxui %true_0, %true_1 : i1
      %306 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 2 - 8, d3 * 8)>(%c13, %c6, %c0, %c8)
      linalg.yield %in : f16
    } -> tensor<3x10x8xf16>
    %87 = vector.broadcast %cst_2 : f32 to vector<3x10xf32>
    %88 = vector.fma %87, %87, %87 : vector<3x10xf32>
    %rank_27 = tensor.rank %2 : tensor<10x12x3xf32>
    %89 = vector.matrix_multiply %33, %35 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    %90 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * -4)>(%c3, %82, %c3, %69)
    %91 = math.powf %10, %10 : tensor<3x10x8xf32>
    scf.if %true_1 {
      %c1_i64 = arith.constant 1 : i64
      %276 = vector.transfer_read %alloc_18[%55, %rank_21, %24], %c1_i64 : memref<10x12x3xi64>, vector<12xi64>
      %alloc_57 = memref.alloc() : memref<8x8x8xf32>
      memref.copy %alloc_8, %alloc_57 : memref<8x8x8xf32> to memref<8x8x8xf32>
      %277 = memref.atomic_rmw minu %c205974663_i32, %alloc_5[%c3, %c3, %c7] : (i32, memref<8x8x8xi32>) -> i32
      %278 = math.exp %9 : tensor<10x12x3xf16>
      %279 = arith.divf %cst_2, %cst_2 : f32
      %280 = math.round %4 : tensor<3x10xf32>
      %281 = math.rsqrt %0 : tensor<3x10x8xf16>
      %282 = math.expm1 %9 : tensor<10x12x3xf16>
    } else {
      %276 = math.fma %18, %transposed, %18 : tensor<3x10x12xf32>
      %277 = math.exp %9 : tensor<10x12x3xf16>
      %278 = vector.extract_strided_slice %39 {offsets = [7], sizes = [3], strides = [1]} : vector<10xi1> to vector<3xi1>
      %279 = arith.ceildivsi %c126204340_i64, %c1860912383_i64 : i64
      %280 = math.exp %cst_2 : f32
      %281 = vector.extract %34[1] : vector<3xi1>
      %282 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
      %283 = vector.outerproduct %38, %38, %282 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
      %284 = vector.broadcast %false : i1 to vector<3x3xi1>
      %285 = vector.outerproduct %34, %34, %284 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
    }
    %92 = math.atan2 %cst_3, %cst : f16
    %splat = tensor.splat %c1860912383_i64 : tensor<3x10x8xi64>
    %93 = bufferization.clone %alloc_6 : memref<8x8x8xi1> to memref<8x8x8xi1>
    %94 = math.cttz %15 : tensor<3x10xi64>
    %95 = vector.multi_reduction <xor>, %40, %40 [] : vector<10xi16> to vector<10xi16>
    %96 = vector.broadcast %c-19910_i16 : i16 to vector<1x1xi16>
    %97 = vector.outerproduct %89, %89, %96 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
    %98 = arith.shli %false, %true_0 : i1
    %splat_28 = tensor.splat %true : tensor<10x12x3xi1>
    %99 = arith.ori %c1860912383_i64, %c126204340_i64 : i64
    memref.assume_alignment %alloc_5, 1 : memref<8x8x8xi32>
    %c319742787_i64 = arith.constant 319742787 : i64
    %100 = arith.maxui %true_1, %73 : i1
    %101 = math.cos %4 : tensor<3x10xf32>
    %102 = arith.remsi %c787680365_i64, %c1284882329_i64 : i64
    %103 = tensor.empty() : tensor<10x3xf32>
    %104 = tensor.empty() : tensor<3x3xf32>
    %105 = linalg.matmul ins(%7, %103 : tensor<3x10xf32>, tensor<10x3xf32>) outs(%104 : tensor<3x3xf32>) -> tensor<3x3xf32>
    %106 = math.tan %cst_3 : f16
    %107 = arith.addf %cst, %cst : f16
    %108 = math.tan %10 : tensor<3x10x8xf32>
    %109 = arith.ceildivsi %false, %true_1 : i1
    %110 = arith.divui %c1860912383_i64, %c1965706431_i64 : i64
    %111 = math.atan2 %7, %14 : tensor<3x10xf32>
    %alloc_29 = memref.alloc() : memref<8x8x8xi32>
    memref.copy %alloc_5, %alloc_29 : memref<8x8x8xi32> to memref<8x8x8xi32>
    %112 = memref.atomic_rmw mins %c-19910_i16, %alloc_14[%c1, %c1, %c4] : (i16, memref<3x10x8xi16>) -> i16
    %113 = math.roundeven %9 : tensor<10x12x3xf16>
    %114 = math.exp %9 : tensor<10x12x3xf16>
    %true_30 = index.bool.constant true
    %115 = math.atan2 %10, %10 : tensor<3x10x8xf32>
    %116 = math.ctpop %true_30 : i1
    %117 = index.sizeof
    %118 = affine.for %arg3 = 0 to 101 iter_args(%arg4 = %alloc_19) -> (memref<8xi1>) {
      affine.yield %alloc_19 : memref<8xi1>
    }
    %119 = math.round %0 : tensor<3x10x8xf16>
    %120 = memref.atomic_rmw assign %cst, %alloc_10[%c6, %c6, %c1] : (f16, memref<10x12x3xf16>) -> f16
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
    %121 = math.absf %2 : tensor<10x12x3xf32>
    %122 = arith.remsi %false, %73 : i1
    %alloca = memref.alloca() : memref<10x12x3xi1>
    %123 = arith.floordivsi %false, %73 : i1
    %c-28965_i16 = arith.constant -28965 : i16
    %124 = memref.atomic_rmw assign %cst_3, %alloc_15[%c7, %c3, %c7] : (f16, memref<8x8x8xf16>) -> f16
    %125 = arith.ceildivsi %c1265439514_i32, %c2017549053_i32 : i32
    %126 = index.mul %c6, %c9
    %127 = affine.load %alloc_13[%c5, %c12, %c2] : memref<8x8x8xf16>
    %128 = index.floordivs %c6, %c12
    %129 = arith.maxui %c1284882329_i64, %c1860912383_i64 : i64
    %130 = math.expm1 %cst : f16
    %131 = affine.min affine_map<(d0) -> ((d0 + d0 ceildiv 32) floordiv 8, (d0 + d0 ceildiv 32) floordiv 8 - 2, (d0 + d0 ceildiv 32) floordiv 8 - 2, ((d0 + d0 ceildiv 32) ceildiv 2) * 2)>(%rank)
    %132 = arith.shrui %true_30, %true_30 : i1
    %133 = math.log10 %4 : tensor<3x10xf32>
    %expanded_31 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<8x8x8xi1> into tensor<8x8x8x1xi1>
    %134 = arith.addf %cst_3, %127 : f16
    %rank_32 = tensor.rank %23 : tensor<i1>
    %135 = arith.ceildivsi %false, %true : i1
    %136 = index.divu %82, %c9
    %137 = arith.andi %c205974663_i32, %c2017549053_i32 : i32
    %138 = index.castu %c0 : index to i32
    %139 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
    %140 = vector.outerproduct %38, %40, %139 {kind = #vector.kind<add>} : vector<10xi16>, vector<10xi16>
    %141 = math.ipowi %c787680365_i64, %c1284882329_i64 : i64
    %142 = math.exp2 %cst_22 : f32
    %143 = index.casts %c2017549053_i32 : i32 to index
    %true_33 = arith.constant true
    %false_34 = arith.constant false
    %144 = vector.transfer_read %splat_28[%rank_21, %117, %rank_21], %false_34 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<10x12x3xi1>, vector<3x3xi1>
    %145 = index.ceildivs %c5, %c11
    %rank_35 = tensor.rank %3 : tensor<3x10x8xi64>
    %146 = arith.shrui %c1284882329_i64, %c1965706431_i64 : i64
    %rank_36 = tensor.rank %expanded : tensor<8x8x8x1xi1>
    %147 = arith.divsi %c2017549053_i32, %c2017549053_i32 : i32
    %c0_i64 = arith.constant 0 : i64
    %148 = vector.transfer_read %alloc_11[%126, %c3, %rank_36], %c0_i64 : memref<3x10x8xi64>, vector<3x12xi64>
    %149 = arith.addi %true_1, %true : i1
    %150 = arith.remsi %c1284882329_i64, %c1860912383_i64 : i64
    %splat_37 = tensor.splat %cst_3 : tensor<8x8x8xf16>
    %151 = bufferization.to_tensor %alloc_7 : memref<10x12x3xi16>
    %152 = index.ceildivu %43, %143
    %153 = scf.if %false -> (memref<8x8x8xi32>) {
      %276 = math.cos %splat_37 : tensor<8x8x8xf16>
      %277 = math.atan %splat_37 : tensor<8x8x8xf16>
      %278 = vector.broadcast %73 : i1 to vector<8x3xi1>
      %279 = vector.transfer_write %278, %splat_28[%c5, %rank_32, %42] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x3xi1>, tensor<10x12x3xi1>
      %280 = vector.extract %40[2] : vector<10xi16>
      %281 = arith.maxf %cst_22, %cst_2 : f32
      %282 = arith.minui %c2017549053_i32, %c2017549053_i32 : i32
      %283 = tensor.empty() : tensor<8x8x8xf32>
      %284 = arith.andi %c1965706431_i64, %c1284882329_i64 : i64
      scf.yield %alloc_5 : memref<8x8x8xi32>
    } else {
      %276 = arith.minf %cst_3, %127 : f16
      %277 = vector.broadcast %43 : index to vector<8xindex>
      %278 = vector.broadcast %c205974663_i32 : i32 to vector<8xi32>
      vector.scatter %alloc_5[%c1, %c1, %c0] [%277], %20, %278 : memref<8x8x8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
      %splat_57 = tensor.splat %c205974663_i32 : tensor<8x8x8xi32>
      %cst_58 = arith.constant 5.993600e+04 : f16
      %279 = tensor.empty() : tensor<10x12x3xi32>
      %280 = vector.reduction <maxsi>, %39 : vector<10xi1> into i1
      %281 = index.ceildivs %128, %117
      %282 = math.atan %10 : tensor<3x10x8xf32>
      scf.yield %alloc_5 : memref<8x8x8xi32>
    }
    %154 = arith.minui %c1284882329_i64, %c787680365_i64 : i64
    %155 = affine.load %alloc_18[%c14, %c1, %c11] : memref<10x12x3xi64>
    %rank_38 = tensor.rank %splat_37 : tensor<8x8x8xf16>
    affine.store %c205974663_i32, %alloc_5[%c4, %c7, %c3] : memref<8x8x8xi32>
    %156 = index.divs %rank_32, %152
    %expanded_39 = tensor.expand_shape %151 [[0], [1], [2, 3]] : tensor<10x12x3xi16> into tensor<10x12x3x1xi16>
    %157 = vector.transpose %35, [0] : vector<3xi16> to vector<3xi16>
    %158 = arith.minui %73, %false : i1
    %159 = math.atan2 %104, %104 : tensor<3x3xf32>
    %160 = math.ctlz %true_33 : i1
    %161 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %38, %40, %c-19910_i16 : vector<10xi16>, vector<10xi16> into i16
    %162 = bufferization.to_tensor %alloc_15 : memref<8x8x8xf16>
    %163 = index.maxu %c2, %c5
    %cst_40 = arith.constant 0x4E2E6049 : f32
    %164 = math.log10 %7 : tensor<3x10xf32>
    %165 = vector.splat %cst_2 : vector<3x10x8xf32>
    %false_41 = arith.constant false
    %166 = memref.realloc %alloc_19 : memref<8xi1> to memref<3xi1>
    %from_elements = tensor.from_elements %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16, %c-19910_i16 : tensor<8x8x8xi16>
    %collapsed_42 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x8x8xi1> into tensor<64x8xi1>
    %167 = vector.broadcast %c-19910_i16 : i16 to vector<8x8x8xi16>
    %168 = vector.broadcast %true_30 : i1 to vector<8x8x8xi1>
    %169 = vector.broadcast %c205974663_i32 : i32 to vector<8x8x8xi32>
    %170 = vector.gather %alloc_14[%145, %c13, %152] [%169], %168, %167 : memref<3x10x8xi16>, vector<8x8x8xi32>, vector<8x8x8xi1>, vector<8x8x8xi16> into vector<8x8x8xi16>
    %171 = math.atan2 %18, %18 : tensor<3x10x12xf32>
    %172 = vector.multi_reduction <xor>, %20, %20 [] : vector<8xi1> to vector<8xi1>
    %173 = arith.maxui %false, %73 : i1
    %174 = math.round %transposed : tensor<3x10x12xf32>
    %175 = arith.ceildivsi %c1965706431_i64, %155 : i64
    %alloc_43 = memref.alloc() : memref<10x3xi1>
    %176 = tensor.empty() : tensor<3x3xi1>
    %177 = linalg.matmul ins(%11, %alloc_43 : tensor<3x10xi1>, memref<10x3xi1>) outs(%176 : tensor<3x3xi1>) -> tensor<3x3xi1>
    %178 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<10x12x3xi1>) {
    ^bb0(%out: i1):
      %276 = bufferization.to_tensor %alloc_16 : memref<3x10xi16>
      %277 = arith.minsi %73, %true_30 : i1
      %278 = index.sub %c3, %c14
      %279 = arith.minui %c2017549053_i32, %c1265439514_i32 : i32
      %280 = math.round %17 : tensor<10x12x3xf32>
      %281 = math.atan2 %16, %2 : tensor<10x12x3xf32>
      %282 = memref.realloc %alloc_19 : memref<8xi1> to memref<3xi1>
      %cst_57 = arith.constant 1.000000e+00 : f32
      %283 = vector.transfer_read %14[%c12, %156], %cst_57 : tensor<3x10xf32>, vector<f32>
      %284 = math.log10 %14 : tensor<3x10xf32>
      %from_elements_58 = tensor.from_elements %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c2017549053_i32, %c205974663_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c2017549053_i32, %c1265439514_i32, %c205974663_i32, %c2017549053_i32 : tensor<3x10xi32>
      %285 = math.tan %17 : tensor<10x12x3xf32>
      %286 = arith.minf %cst, %127 : f16
      memref.copy %alloc, %alloc_7 : memref<10x12x3xi16> to memref<10x12x3xi16>
      %287 = bufferization.to_tensor %alloc_10 : memref<10x12x3xf16>
      %288 = math.exp %48 : tensor<3x3xf32>
      %289 = arith.minf %127, %127 : f16
      %expanded_59 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<3x10xf32> into tensor<3x10x1xf32>
      %290 = math.ctpop %c126204340_i64 : i64
      %291 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 4 - 30, d0 floordiv 4, 0, d1 floordiv 4 + 2)>(%c11, %c1, %128)
      %292 = vector.matrix_multiply %34, %34 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %293 = math.exp %4 : tensor<3x10xf32>
      %294 = bufferization.clone %93 : memref<8x8x8xi1> to memref<8x8x8xi1>
      %295 = arith.divui %c0_i64, %c1860912383_i64 : i64
      %296 = affine.min affine_map<(d0, d1) -> ((-d0 - 1) * 32, (-d0 - 1) * 2 + 2, (-d0 - 1) * 2, -(-d0 - 1) + d0 * 33)>(%rank_38, %28)
      %297 = math.rsqrt %104 : tensor<3x3xf32>
      %true_60 = index.bool.constant true
      %false_61 = index.bool.constant false
      %298 = math.ctpop %73 : i1
      %299 = vector.matrix_multiply %34, %292 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<1xi1>) -> vector<3xi1>
      %alloc_62 = memref.alloc() : memref<10x12xi1>
      %300 = tensor.empty() : tensor<3x12xi1>
      %301 = linalg.matmul ins(%1, %alloc_62 : tensor<3x10xi1>, memref<10x12xi1>) outs(%300 : tensor<3x12xi1>) -> tensor<3x12xi1>
      %302 = index.mul %rank_21, %c2
      %303 = math.roundeven %cst_22 : f32
      linalg.yield %true_1 : i1
    } -> tensor<10x12x3xi1>
    %179 = math.atan %48 : tensor<3x3xf32>
    %180 = affine.if affine_set<(d0, d1, d2) : (-d1 >= 0, d0 - d2 == 0)>(%c7, %c2, %c7) -> memref<8x8x8xi16> {
      %276 = math.fma %16, %2, %17 : tensor<10x12x3xf32>
      affine.store %c-19910_i16, %alloc_7[%c5, %c4, %c11] : memref<10x12x3xi16>
      %277 = vector.reduction <and>, %20 : vector<8xi1> into i1
      %278 = vector.broadcast %false : i1 to vector<10x10xi1>
      %279 = vector.outerproduct %39, %39, %278 {kind = #vector.kind<and>} : vector<10xi1>, vector<10xi1>
      %alloca_57 = memref.alloca() : memref<3x10xf32>
      %280 = arith.shrui %true_33, %false : i1
      %281 = index.maxu %163, %145
      %282 = scf.if %true_30 -> (memref<8x8x8xi32>) {
        %283 = arith.remf %cst_3, %127 : f16
        %284 = affine.min affine_map<(d0) -> (d0 - (d0 - 66) - 64)>(%c5)
        %285 = index.sub %136, %c10
        %286 = math.atan %splat_37 : tensor<8x8x8xf16>
        %287 = index.ceildivs %82, %c10
        %288 = bufferization.to_tensor %alloc_5 : memref<8x8x8xi32>
        %from_elements_59 = tensor.from_elements %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_22, %cst_2, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_22, %cst_2, %cst_22, %cst_22, %cst_2, %cst_22, %cst_22, %cst_22, %cst_2, %cst_2, %cst_22, %cst_2, %cst_2 : tensor<3x10xf32>
        %289 = math.floor %2 : tensor<10x12x3xf32>
        scf.yield %alloc_5 : memref<8x8x8xi32>
      } else {
        %283 = memref.load %alloc_12[%c2, %c5, %c6] : memref<3x10x8xi16>
        %284 = math.exp %splat_37 : tensor<8x8x8xf16>
        %285 = math.rsqrt %2 : tensor<10x12x3xf32>
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + d0)>(%rank_27, %rank_35, %c6, %42)
        %287 = vector.reduction <mul>, %40 : vector<10xi16> into i16
        %288 = vector.extract %34[1] : vector<3xi1>
        %289 = arith.divsi %c1265439514_i32, %c1201619418_i32 : i32
        %290 = math.cos %cst_2 : f32
        scf.yield %alloc_5 : memref<8x8x8xi32>
      }
      %alloc_58 = memref.alloc() : memref<8x8x8xi16>
      affine.yield %alloc_58 : memref<8x8x8xi16>
    } else {
      %276 = index.casts %c6 : index to i32
      %277 = vector.extract %64[1] : vector<3x10x8xi16>
      %278 = affine.load %alloc_17[%c14, %c12] : memref<3x10xi16>
      affine.store %cst, %alloc_15[%c4, %c9, %c0] : memref<8x8x8xf16>
      %279 = arith.remui %true_1, %true_33 : i1
      %280 = affine.load %alloc_17[%c13, %c4] : memref<3x10xi16>
      %281 = math.exp %18 : tensor<3x10x12xf32>
      %cst_57 = arith.constant 1.000000e+00 : f32
      %282 = vector.transfer_read %7[%136, %128], %cst_57 : tensor<3x10xf32>, vector<3xf32>
      %alloc_58 = memref.alloc() : memref<8x8x8xi16>
      affine.yield %alloc_58 : memref<8x8x8xi16>
    }
    %181 = arith.xori %155, %c0_i64 : i64
    %alloc_44 = memref.alloc() : memref<12xf32>
    %182 = tensor.empty() : tensor<10xf32>
    %183 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %182 : memref<12xf32>, tensor<10xf32>) outs(%16 : tensor<10x12x3xf32>) {
    ^bb0(%in: f32, %in_57: f32, %out: f32):
      %276 = arith.cmpi eq, %155, %c0_i64 : i64
      %277 = arith.maxui %true_30, %false : i1
      %278 = index.maxs %c0, %c5
      %expanded_58 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<3x10xi64> into tensor<3x10x1xi64>
      %279 = arith.minf %cst_22, %in : f32
      %280 = vector.multi_reduction <mul>, %88, %out [0, 1] : vector<3x10xf32> to f32
      %281 = vector.load %alloc_13[%c7, %c6, %c6] : memref<8x8x8xf16>, vector<3x10xf16>
      %282 = math.fma %2, %16, %2 : tensor<10x12x3xf32>
      %283 = arith.ceildivsi %155, %c1965706431_i64 : i64
      %284 = vector.multi_reduction <xor>, %34, %34 [] : vector<3xi1> to vector<3xi1>
      %285 = arith.remsi %true_0, %true_1 : i1
      %true_59 = index.bool.constant true
      %286 = vector.insertelement %73, %39[%163 : index] : vector<10xi1>
      %287 = vector.broadcast %c-19910_i16 : i16 to vector<8xi16>
      %288 = vector.maskedload %alloc_17[%c2, %c5], %20, %287 : memref<3x10xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      scf.if %false {
        %305 = bufferization.clone %153 : memref<8x8x8xi32> to memref<8x8x8xi32>
        %306 = math.cos %cst : f16
        %307 = math.tan %cst_2 : f32
        %308 = arith.divsi %155, %c126204340_i64 : i64
        %309 = math.roundeven %cst : f16
        %310 = bufferization.to_tensor %alloc_18 : memref<10x12x3xi64>
        %311 = math.exp %16 : tensor<10x12x3xf32>
        %312 = arith.floordivsi %c126204340_i64, %c0_i64 : i64
      } else {
        %305 = bufferization.clone %alloc_4 : memref<3x10x8xf32> to memref<3x10x8xf32>
        %306 = vector.multi_reduction <maxui>, %288, %c-19910_i16 [0] : vector<8xi16> to i16
        %307 = affine.load %alloc_4[%c10, %c5, %c7] : memref<3x10x8xf32>
        %308 = vector.broadcast %c1265439514_i32 : i32 to vector<8xi32>
        vector.transfer_write %308, %153[%c13, %rank, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi32>, memref<8x8x8xi32>
        %309 = arith.divf %127, %cst : f16
        %310 = arith.negf %in_57 : f32
        %311 = affine.apply affine_map<(d0, d1, d2) -> (d0 - (d1 ceildiv 2) ceildiv 64)>(%c9, %126, %rank_38)
        %312 = affine.min affine_map<(d0) -> (d0 mod 4, d0 + 128, (d0 * 2) floordiv 4, d0 mod 4)>(%128)
      }
      %289 = arith.ceildivsi %c126204340_i64, %c126204340_i64 : i64
      %290 = arith.maxf %in_57, %280 : f32
      %291 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d1 * 64, 0, d2 mod 16)>(%278, %c7, %90, %152)
      %292 = math.ctpop %78 : tensor<8x8x8x1xi1>
      %293 = math.log10 %in_57 : f32
      %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, 0)>(%rank, %55, %117, %152)
      %295 = arith.maxui %true_30, %true_59 : i1
      %296 = vector.multi_reduction <minsi>, %35, %c-19910_i16 [0] : vector<3xi16> to i16
      %297 = arith.minui %c787680365_i64, %c126204340_i64 : i64
      %298 = vector.matrix_multiply %38, %287 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 4 : i32} : (vector<10xi16>, vector<8xi16>) -> vector<20xi16>
      %alloc_60 = memref.alloc() : memref<3x10x8xf32>
      memref.copy %alloc_4, %alloc_60 : memref<3x10x8xf32> to memref<3x10x8xf32>
      %299 = math.cttz %78 : tensor<8x8x8x1xi1>
      %300 = index.ceildivs %136, %126
      %301 = index.ceildivu %rank_21, %rank_21
      %true_61 = arith.constant true
      %false_62 = arith.constant false
      %302 = vector.transfer_read %1[%c2, %28], %false_62 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x10xi1>, vector<10xi1>
      %303 = math.ceil %16 : tensor<10x12x3xf32>
      %304 = arith.shli %true_0, %true_0 : i1
      linalg.yield %out : f32
    } -> tensor<10x12x3xf32>
    %184 = math.expm1 %cst_3 : f16
    %185 = index.sizeof
    %186 = vector.splat %c12 : vector<3x10xindex>
    %187 = index.mul %24, %c10
    %alloca_45 = memref.alloca() : memref<8x8x8xi16>
    %188 = arith.shrsi %true_1, %false : i1
    %cst_46 = arith.constant 3.446400e+04 : f16
    %189 = bufferization.to_memref %9 : memref<10x12x3xf16>
    %190 = math.tanh %splat_37 : tensor<8x8x8xf16>
    %191 = arith.addf %cst_22, %cst_2 : f32
    %192 = math.absf %0 : tensor<3x10x8xf16>
    %193 = vector.flat_transpose %35 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
    %194 = index.maxs %156, %136
    %195 = arith.andi %true_0, %true_30 : i1
    %196 = math.log10 %cst_3 : f16
    %197 = arith.remf %127, %cst_3 : f16
    %198 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
    %199 = vector.outerproduct %40, %40, %198 {kind = #vector.kind<or>} : vector<10xi16>, vector<10xi16>
    %200 = index.ceildivu %126, %rank_32
    %201 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0 * 32, -((d2 ceildiv 16) ceildiv 32), 0)>(%c3, %c3, %c1, %80)
    %202 = arith.minsi %c126204340_i64, %c1284882329_i64 : i64
    %203 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 4 - 32, (-d1) ceildiv 64)>(%c15, %163, %rank_35, %194)
    %204 = vector.splat %c1860912383_i64 : vector<3x10x8xi64>
    %205 = index.sizeof
    %cst_47 = arith.constant 1.000000e+00 : f16
    %206 = vector.transfer_read %splat_37[%200, %200, %185], %cst_47 : tensor<8x8x8xf16>, vector<f16>
    %207 = math.floor %4 : tensor<3x10xf32>
    %generated_48 = tensor.generate %152 {
    ^bb0(%arg3: index, %arg4: index):
      %276 = vector.broadcast %c-19910_i16 : i16 to vector<3x3xi16>
      %277 = vector.outerproduct %193, %33, %276 {kind = #vector.kind<xor>} : vector<3xi16>, vector<3xi16>
      %278 = math.log2 %collapsed : tensor<30xf32>
      memref.alloca_scope  {
        %alloca_57 = memref.alloca() : memref<8x8x8xi64>
        %280 = math.expm1 %splat_37 : tensor<8x8x8xf16>
        %281 = math.tan %14 : tensor<3x10xf32>
        %282 = index.maxs %rank_36, %126
        %splat_58 = tensor.splat %true_1 : tensor<8x8x8xi1>
        %283 = bufferization.clone %alloc_4 : memref<3x10x8xf32> to memref<3x10x8xf32>
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%rank_38, %131, %282)
        %285 = arith.shli %true_1, %true : i1
        %286 = vector.reduction <mul>, %34 : vector<3xi1> into i1
        %rank_59 = tensor.rank %162 : tensor<8x8x8xf16>
        %287 = bufferization.to_tensor %alloc_8 : memref<8x8x8xf32>
        %288 = index.maxs %arg3, %136
        %289 = vector.broadcast %c11 : index to vector<8xindex>
        vector.scatter %56[%c2, %c3] [%289], %20, %20 : memref<3x10xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %c1897683183_i64 = arith.constant 1897683183 : i64
        %290 = math.ctpop %true_0 : i1
        %291 = vector.transpose %34, [0] : vector<3xi1> to vector<3xi1>
        %292 = vector.extract %65[0] : vector<3x10x8xi1>
        %293 = math.ipowi %from_elements, %from_elements : tensor<8x8x8xi16>
        %294 = math.exp2 %14 : tensor<3x10xf32>
        %295 = vector.transpose %34, [0] : vector<3xi1> to vector<3xi1>
        %296 = math.tanh %7 : tensor<3x10xf32>
        %297 = vector.broadcast %cst_22 : f32 to vector<10x8xf32>
        %298 = vector.transfer_write %297, %287[%c10, %136, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x8xf32>, tensor<8x8x8xf32>
        %299 = arith.negf %cst_22 : f32
        %300 = math.atan2 %16, %2 : tensor<10x12x3xf32>
        %301 = math.exp2 %287 : tensor<8x8x8xf32>
        %302 = math.log2 %cst_47 : f16
        %303 = vector.reduction <maxui>, %89 : vector<1xi16> into i16
        %304 = math.log2 %17 : tensor<10x12x3xf32>
        %305 = math.tanh %9 : tensor<10x12x3xf16>
        %306 = math.tanh %9 : tensor<10x12x3xf16>
        %307 = math.log2 %transposed : tensor<3x10x12xf32>
        %308 = index.add %c1, %163
      }
      %279 = vector.multi_reduction <maxui>, %20, %false [0] : vector<8xi1> to i1
      tensor.yield %c787680365_i64 : i64
    } : tensor<?x10xi64>
    %208 = vector.reduction <and>, %40 : vector<10xi16> into i16
    %209 = affine.min affine_map<(d0, d1, d2) -> ((d0 * 2 - 2) * 2 - (d1 - 4))>(%c4, %rank, %200)
    %210 = tensor.empty() : tensor<10x3xf32>
    %211 = tensor.empty() : tensor<3x3xf32>
    %212 = linalg.matmul ins(%4, %210 : tensor<3x10xf32>, tensor<10x3xf32>) outs(%211 : tensor<3x3xf32>) -> tensor<3x3xf32>
    %false_49 = index.bool.constant false
    %213 = math.exp %4 : tensor<3x10xf32>
    %214 = memref.alloca_scope  -> (f16) {
      %276 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 2, d2)>(%c11, %rank_38, %131)
      affine.store %c126204340_i64, %alloc_11[%c8, %c14, %c3] : memref<3x10x8xi64>
      %277 = index.casts %131 : index to i32
      %278 = arith.ceildivsi %false_49, %true_33 : i1
      memref.assume_alignment %alloc_5, 4 : memref<8x8x8xi32>
      %279 = arith.ceildivsi %155, %c126204340_i64 : i64
      %280 = tensor.empty() : tensor<8x8x8xi32>
      %mapped_57 = linalg.map ins(%alloc_5, %alloc_5 : memref<8x8x8xi32>, memref<8x8x8xi32>) outs(%280 : tensor<8x8x8xi32>)
        (%in: i32, %in_59: i32) {
          %310 = vector.reduction <minui>, %38 : vector<10xi16> into i16
          %311 = arith.ceildivsi %73, %true_30 : i1
          %312 = math.powf %7, %50 : tensor<3x10xf32>
          %313 = arith.maxsi %c1201619418_i32, %c2017549053_i32 : i32
          %314 = math.roundeven %7 : tensor<3x10xf32>
          %rank_60 = tensor.rank %8 : tensor<3x10x8xi16>
          %315 = math.exp %4 : tensor<3x10xf32>
          %316 = math.fma %50, %4, %7 : tensor<3x10xf32>
          %317 = math.sqrt %50 : tensor<3x10xf32>
          %318 = arith.muli %true_0, %true : i1
          %319 = math.floor %211 : tensor<3x3xf32>
          %320 = arith.ceildivsi %in, %c205974663_i32 : i32
          %321 = math.fma %cst_2, %cst_22, %cst_22 : f32
          %322 = arith.divsi %c-19910_i16, %c-19910_i16 : i16
          %323 = math.cos %splat_37 : tensor<8x8x8xf16>
          %324 = vector.transpose %65, [2, 1, 0] : vector<3x10x8xi1> to vector<8x10x3xi1>
          %true_61 = index.bool.constant true
          %325 = bufferization.to_tensor %56 : memref<3x10xi1>
          %cst_62 = arith.constant 1.000000e+00 : f32
          %326 = vector.transfer_read %2[%131, %69, %c7], %cst_62 : tensor<10x12x3xf32>, vector<f32>
          %327 = vector.splat %90 : vector<8x8x8xindex>
          %328 = math.tanh %9 : tensor<10x12x3xf16>
          %329 = math.powf %50, %50 : tensor<3x10xf32>
          %330 = math.ctpop %false_49 : i1
          %331 = index.ceildivs %205, %24
          %332 = arith.shli %in, %c205974663_i32 : i32
          %333 = math.cos %211 : tensor<3x3xf32>
          %334 = arith.divsi %c1201619418_i32, %in_59 : i32
          %rank_63 = tensor.rank %71 : tensor<3x12xi1>
          %335 = vector.splat %69 : vector<10x12x3xindex>
          %336 = arith.floordivsi %c1201619418_i32, %c1265439514_i32 : i32
          %337 = vector.transpose %64, [1, 0, 2] : vector<3x10x8xi16> to vector<10x3x8xi16>
          %cast = tensor.cast %162 : tensor<8x8x8xf16> to tensor<?x?x?xf16>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %281 = index.casts %true_30 : i1 to index
      %282 = vector.flat_transpose %33 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %283 = affine.min affine_map<(d0) -> (d0, ((d0 ceildiv 16) ceildiv 32) mod 32)>(%43)
      %284 = math.atan2 %7, %7 : tensor<3x10xf32>
      %285 = arith.divsi %c126204340_i64, %c1965706431_i64 : i64
      %286 = bufferization.to_memref %22 : memref<i1>
      %alloc_58 = memref.alloc() : memref<10x12xi1>
      %287 = tensor.empty() : tensor<3x12xi1>
      %288 = linalg.matmul ins(%11, %alloc_58 : tensor<3x10xi1>, memref<10x12xi1>) outs(%287 : tensor<3x12xi1>) -> tensor<3x12xi1>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<3x10x8xi64>) {
      ^bb0(%out: i64):
        %from_elements_59 = tensor.from_elements %false_49, %true_1, %73, %true_0, %false, %true_30, %true_1, %73, %false_49, %true_0, %false, %true_0, %73, %73, %false_49, %false_49, %false, %true, %true, %true, %true_33, %false, %true_33, %false, %true_1, %73, %true_1, %73, %true_0, %true_1 : tensor<3x10xi1>
        %310 = affine.min affine_map<(d0) -> (-d0, d0 - 2, -((d0 * -2 - 4) mod 128), -(d0 * -2 - 4))>(%c13)
        %311 = index.ceildivu %55, %c0
        %312 = tensor.empty() : tensor<10x12x3xi64>
        %313 = math.roundeven %9 : tensor<10x12x3xf16>
        %314 = vector.maskedload %93[%c1, %c3, %c1], %34, %34 : memref<8x8x8xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %315 = index.sizeof
        %316 = arith.andi %73, %true_0 : i1
        %317 = bufferization.clone %189 : memref<10x12x3xf16> to memref<10x12x3xf16>
        %true_60 = index.bool.constant true
        memref.store %c-19910_i16, %alloc_17[%c1, %c6] : memref<3x10xi16>
        %318 = bufferization.to_tensor %alloc_9 : memref<3x10x8xf16>
        %collapsed_61 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<8x8x8x1xi1> into tensor<64x8x1xi1>
        %319 = memref.atomic_rmw maxf %cst, %alloc_13[%c1, %c1, %c1] : (f16, memref<8x8x8xf16>) -> f16
        %320 = vector.flat_transpose %89 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %321 = vector.broadcast %cst_22 : f32 to vector<3x10x8xf32>
        %322 = vector.fma %321, %321, %321 : vector<3x10x8xf32>
        %323 = vector.broadcast %73 : i1 to vector<8x8xi1>
        %324 = vector.outerproduct %20, %20, %323 {kind = #vector.kind<mul>} : vector<8xi1>, vector<8xi1>
        %325 = arith.cmpf ogt, %127, %cst_47 : f16
        %326 = math.roundeven %9 : tensor<10x12x3xf16>
        %327 = arith.cmpf uge, %cst_22, %cst_2 : f32
        %328 = arith.maxsi %true_33, %true_33 : i1
        %329 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 * -16) mod 32, d1 + d3 mod 2, ((d3 mod 2) ceildiv 2) floordiv 4)>(%276, %311, %rank_35, %c14)
        affine.store %true_60, %286[] : memref<i1>
        %330 = arith.addf %cst, %cst : f16
        %331 = math.atan %18 : tensor<3x10x12xf32>
        %332 = arith.shrsi %true_60, %73 : i1
        %333 = math.roundeven %7 : tensor<3x10xf32>
        %334 = vector.transpose %87, [0, 1] : vector<3x10xf32> to vector<3x10xf32>
        %true_62 = index.bool.constant true
        %from_elements_63 = tensor.from_elements %c1965706431_i64, %c126204340_i64, %c126204340_i64, %out, %c1284882329_i64, %c787680365_i64, %c1860912383_i64, %c1965706431_i64, %c0_i64, %c126204340_i64, %c1284882329_i64, %c1965706431_i64, %c1284882329_i64, %155, %c1284882329_i64, %c787680365_i64, %155, %c126204340_i64, %c126204340_i64, %c0_i64, %c1284882329_i64, %out, %c1284882329_i64, %c1860912383_i64, %c0_i64, %c1284882329_i64, %out, %c1860912383_i64, %c787680365_i64, %c0_i64, %c1965706431_i64, %c787680365_i64, %c787680365_i64, %c126204340_i64, %out, %c1965706431_i64, %c0_i64, %c1965706431_i64, %c1284882329_i64, %c1284882329_i64, %c1284882329_i64, %c1860912383_i64, %c1860912383_i64, %out, %c0_i64, %155, %c1965706431_i64, %155, %c126204340_i64, %c0_i64, %out, %c1965706431_i64, %out, %out, %c0_i64, %c787680365_i64, %c1860912383_i64, %c0_i64, %c1284882329_i64, %c787680365_i64, %c787680365_i64, %out, %c0_i64, %c1860912383_i64, %c787680365_i64, %c1965706431_i64, %155, %c1284882329_i64, %c126204340_i64, %c1284882329_i64, %155, %c126204340_i64, %155, %155, %c1965706431_i64, %c787680365_i64, %c0_i64, %c1284882329_i64, %c787680365_i64, %out, %c0_i64, %c126204340_i64, %c787680365_i64, %c0_i64, %c787680365_i64, %c126204340_i64, %c1965706431_i64, %c126204340_i64, %c0_i64, %c1284882329_i64, %155, %c126204340_i64, %c1284882329_i64, %c1860912383_i64, %155, %c1965706431_i64, %c787680365_i64, %c1284882329_i64, %155, %c1860912383_i64, %c1284882329_i64, %c0_i64, %c1860912383_i64, %c126204340_i64, %out, %155, %155, %c126204340_i64, %c0_i64, %c1860912383_i64, %c1860912383_i64, %c1860912383_i64, %c1860912383_i64, %155, %155, %c787680365_i64, %c1965706431_i64, %155, %c0_i64, %c1284882329_i64, %c787680365_i64, %155, %out, %c126204340_i64, %c787680365_i64, %c1284882329_i64, %c1284882329_i64, %c787680365_i64, %c1284882329_i64, %c0_i64, %c0_i64, %c126204340_i64, %c126204340_i64, %c1284882329_i64, %out, %c1860912383_i64, %c1965706431_i64, %155, %c0_i64, %155, %c126204340_i64, %out, %out, %c0_i64, %out, %c0_i64, %155, %c0_i64, %out, %155, %155, %c126204340_i64, %c1284882329_i64, %c1860912383_i64, %c1860912383_i64, %c1284882329_i64, %c787680365_i64, %155, %out, %out, %c1860912383_i64, %155, %c1860912383_i64, %c126204340_i64, %c0_i64, %c787680365_i64, %c0_i64, %c0_i64, %c0_i64, %c1284882329_i64, %c1284882329_i64, %155, %c1860912383_i64, %c787680365_i64, %c787680365_i64, %c1284882329_i64, %c1860912383_i64, %155, %155, %out, %c1965706431_i64, %c1860912383_i64, %c126204340_i64, %c1965706431_i64, %c1860912383_i64, %c787680365_i64, %c787680365_i64, %c787680365_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %c0_i64, %c0_i64, %c787680365_i64, %c1860912383_i64, %c1860912383_i64, %out, %c1860912383_i64, %c126204340_i64, %c1965706431_i64, %c1965706431_i64, %c787680365_i64, %c1860912383_i64, %c1284882329_i64, %c1965706431_i64, %c787680365_i64, %out, %c126204340_i64, %out, %c1284882329_i64, %c126204340_i64, %c126204340_i64, %c1860912383_i64, %c1860912383_i64, %c1284882329_i64, %155, %c1860912383_i64, %c1965706431_i64, %c787680365_i64, %c1965706431_i64, %c1965706431_i64, %c787680365_i64, %out, %out, %c1860912383_i64, %c1860912383_i64, %c1965706431_i64, %c787680365_i64, %c0_i64, %c1284882329_i64, %c1860912383_i64, %c0_i64, %c126204340_i64, %out, %c126204340_i64, %out, %155, %out, %c126204340_i64, %155 : tensor<3x10x8xi64>
        %335 = math.floor %9 : tensor<10x12x3xf16>
        %336 = vector.splat %310 : vector<3x10xindex>
        linalg.yield %out : i64
      } -> tensor<3x10x8xi64>
      %290 = bufferization.clone %286 : memref<i1> to memref<i1>
      %291 = arith.cmpi uge, %c1201619418_i32, %c1265439514_i32 : i32
      %292 = tensor.empty() : tensor<12x8xi1>
      %293 = tensor.empty() : tensor<3x8xi1>
      %294 = linalg.matmul ins(%71, %292 : tensor<3x12xi1>, tensor<12x8xi1>) outs(%293 : tensor<3x8xi1>) -> tensor<3x8xi1>
      %295 = vector.broadcast %c-19910_i16 : i16 to vector<3x8xi16>
      %dest, %accumulated_value = vector.scan <or>, %64, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10x8xi16>, vector<3x8xi16>
      %296 = arith.remsi %155, %155 : i64
      %297 = math.rsqrt %17 : tensor<10x12x3xf32>
      %298 = arith.divf %cst_3, %cst_47 : f16
      %299 = vector.splat %c-19910_i16 : vector<3x10xi16>
      %300 = scf.index_switch %rank_27 -> index 
      case 1 {
        %310 = memref.atomic_rmw mulf %cst_3, %alloc_15[%c3, %c0, %c2] : (f16, memref<8x8x8xf16>) -> f16
        %311 = arith.divsi %c1860912383_i64, %c126204340_i64 : i64
        %312 = vector.broadcast %cst_2 : f32 to vector<8x8x8xf32>
        %313 = vector.fma %312, %312, %312 : vector<8x8x8xf32>
        %false_59 = arith.constant false
        %false_60 = arith.constant false
        %314 = vector.transfer_read %78[%42, %143, %c8, %126], %false_60 {permutation_map = affine_map<(d0, d1, d2, d3) -> (0, 0, 0)>} : tensor<8x8x8x1xi1>, vector<8x8x8xi1>
        %315 = math.exp %7 : tensor<3x10xf32>
        %316 = arith.divui %true_1, %true_1 : i1
        %317 = vector.broadcast %73 : i1 to vector<3x10xi1>
        %318 = math.expm1 %17 : tensor<10x12x3xf32>
        %319 = math.log2 %104 : tensor<3x3xf32>
        %320 = math.powf %cst_22, %cst_22 : f32
        %321 = bufferization.to_memref %104 : memref<3x3xf32>
        %322 = bufferization.to_memref %2 : memref<10x12x3xf32>
        %323 = arith.cmpf ult, %cst_3, %cst_47 : f16
        %324 = arith.shli %true_0, %false_49 : i1
        %325 = arith.ori %true, %73 : i1
        %326 = arith.maxui %true_33, %true : i1
        scf.yield %c15 : index
      }
      case 2 {
        %310 = vector.matrix_multiply %89, %193 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi16>, vector<3xi16>) -> vector<3xi16>
        %311 = math.rsqrt %splat_37 : tensor<8x8x8xf16>
        %from_elements_59 = tensor.from_elements %c2017549053_i32, %c205974663_i32, %c2017549053_i32, %c2017549053_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c2017549053_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c205974663_i32, %c2017549053_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c2017549053_i32, %c1201619418_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c205974663_i32, %c205974663_i32, %c1201619418_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c205974663_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c1201619418_i32, %c2017549053_i32, %c1201619418_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c1265439514_i32, %c1265439514_i32, %c2017549053_i32, %c1201619418_i32, %c2017549053_i32, %c205974663_i32, %c2017549053_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c2017549053_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c1265439514_i32, %c2017549053_i32, %c1201619418_i32, %c2017549053_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c205974663_i32, %c1201619418_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c205974663_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c2017549053_i32, %c2017549053_i32, %c1201619418_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c2017549053_i32, %c1201619418_i32, %c1201619418_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c1201619418_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c1201619418_i32, %c2017549053_i32, %c2017549053_i32, %c1201619418_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c2017549053_i32, %c1265439514_i32, %c1265439514_i32, %c1265439514_i32, %c2017549053_i32, %c2017549053_i32, %c2017549053_i32, %c205974663_i32, %c205974663_i32, %c1265439514_i32, %c205974663_i32, %c2017549053_i32, %c205974663_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c1265439514_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c1265439514_i32, %c2017549053_i32, %c1201619418_i32, %c1201619418_i32, %c1201619418_i32, %c1265439514_i32, %c205974663_i32, %c205974663_i32, %c2017549053_i32, %c1201619418_i32, %c2017549053_i32, %c1201619418_i32, %c2017549053_i32, %c1265439514_i32, %c1201619418_i32, %c205974663_i32, %c1201619418_i32, %c1265439514_i32, %c1201619418_i32 : tensor<3x10x8xi32>
        %312 = affine.max affine_map<(d0, d1, d2) -> (d1 - 1, ((d1 - 1) mod 128) * 32 - (d1 - 1) floordiv 128 + (d0 * 4) ceildiv 8 + (d1 - 1) floordiv 128 - d2, ((d1 - 1) mod 128) * 32 - (d1 - 1) floordiv 128 + (d0 * 4) ceildiv 8 + (d1 - 1) floordiv 128 - d2)>(%281, %rank_36, %117)
        %313 = math.log2 %4 : tensor<3x10xf32>
        %alloc_60 = memref.alloc() : memref<10x3xi1>
        %314 = tensor.empty() : tensor<3x3xi1>
        %315 = linalg.matmul ins(%1, %alloc_60 : tensor<3x10xi1>, memref<10x3xi1>) outs(%314 : tensor<3x3xi1>) -> tensor<3x3xi1>
        %cst_61 = arith.constant 1.000000e+00 : f32
        %cst_62 = arith.constant 0.000000e+00 : f32
        %316 = vector.transfer_read %211[%163, %rank_35], %cst_62 : tensor<3x3xf32>, vector<f32>
        %317 = math.exp %cst : f16
        %318 = math.cos %cst_3 : f16
        %c743302860_i32 = arith.constant 743302860 : i32
        %319 = vector.broadcast %false_49 : i1 to vector<8x8xi1>
        %320 = vector.outerproduct %20, %20, %319 {kind = #vector.kind<xor>} : vector<8xi1>, vector<8xi1>
        %321 = index.casts %c5 : index to i32
        %322 = vector.maskedload %alloc_6[%c1, %c3, %c3], %34, %34 : memref<8x8x8xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %323 = index.sizeof
        %324 = math.ceil %splat_37 : tensor<8x8x8xf16>
        %325 = vector.broadcast %cst_2 : f32 to vector<8x8x8xf32>
        %326 = vector.fma %325, %325, %325 : vector<8x8x8xf32>
        scf.yield %43 : index
      }
      case 3 {
        %rank_59 = tensor.rank %splat_37 : tensor<8x8x8xf16>
        %310 = memref.atomic_rmw minu %c2017549053_i32, %alloc_5[%c1, %c0, %c2] : (i32, memref<8x8x8xi32>) -> i32
        %collapsed_60 = tensor.collapse_shape %4 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
        %311 = math.tanh %cst : f16
        %312 = math.atan %162 : tensor<8x8x8xf16>
        %313 = math.cos %0 : tensor<3x10x8xf16>
        %314 = memref.load %alloc_4[%c1, %c2, %c5] : memref<3x10x8xf32>
        %315 = math.ceil %transposed : tensor<3x10x12xf32>
        %316 = memref.realloc %alloc_19 : memref<8xi1> to memref<8xi1>
        %317 = index.castu %true_30 : i1 to index
        %318 = vector.broadcast %cst_47 : f16 to vector<3x10x8xf16>
        %319 = vector.gather %0[%c6, %126, %c4] [%66], %65, %318 : tensor<3x10x8xf16>, vector<3x10x8xi32>, vector<3x10x8xi1>, vector<3x10x8xf16> into vector<3x10x8xf16>
        %320 = bufferization.to_memref %287 : memref<3x12xi1>
        %collapsed_61 = tensor.collapse_shape %1 [[0, 1]] : tensor<3x10xi1> into tensor<30xi1>
        %321 = math.round %104 : tensor<3x3xf32>
        %322 = vector.multi_reduction <minui>, %39, %39 [] : vector<10xi1> to vector<10xi1>
        %323 = math.fma %211, %104, %211 : tensor<3x3xf32>
        scf.yield %c1 : index
      }
      case 4 {
        %310 = math.ipowi %from_elements, %from_elements : tensor<8x8x8xi16>
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + 8, d0, d1 ceildiv 64, d1 mod 64)>(%c5, %136, %55, %c7)
        %312 = arith.floordivsi %c1284882329_i64, %c787680365_i64 : i64
        %313 = vector.extract %40[9] : vector<10xi16>
        %314 = vector.extract %169[5] : vector<8x8x8xi32>
        %315 = arith.shrui %c-19910_i16, %c-19910_i16 : i16
        %316 = math.cos %18 : tensor<3x10x12xf32>
        %317 = math.floor %50 : tensor<3x10xf32>
        %318 = memref.load %93[%c3, %c7, %c7] : memref<8x8x8xi1>
        %cst_59 = arith.constant 1.000000e+00 : f32
        %319 = vector.transfer_read %2[%80, %131, %82], %cst_59 : tensor<10x12x3xf32>, vector<f32>
        %320 = math.exp2 %14 : tensor<3x10xf32>
        %321 = arith.ceildivsi %false_49, %true_33 : i1
        %322 = memref.realloc %alloc_19 : memref<8xi1> to memref<12xi1>
        %323 = arith.cmpf ult, %cst_22, %cst_22 : f32
        %324 = vector.extract %20[6] : vector<8xi1>
        %325 = math.ceil %2 : tensor<10x12x3xf32>
        scf.yield %c11 : index
      }
      default {
        %310 = index.maxu %128, %201
        %311 = index.floordivs %c8, %rank_36
        %312 = arith.divf %127, %cst : f16
        %313 = math.cos %211 : tensor<3x3xf32>
        %314 = index.add %55, %80
        %cst_59 = arith.constant 3.708800e+04 : f16
        %315 = index.maxs %131, %c4
        %316 = math.roundeven %cst_3 : f16
        %317 = arith.maxui %false, %false_49 : i1
        %318 = math.log10 %cst_22 : f32
        %319 = index.ceildivs %131, %c10
        %320 = math.floor %cst_3 : f16
        %alloc_60 = memref.alloc() : memref<10x12xf32>
        %321 = tensor.empty() : tensor<3x12xf32>
        %322 = linalg.matmul ins(%7, %alloc_60 : tensor<3x10xf32>, memref<10x12xf32>) outs(%321 : tensor<3x12xf32>) -> tensor<3x12xf32>
        %323 = vector.matrix_multiply %38, %282 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 3 : i32} : (vector<10xi16>, vector<3xi16>) -> vector<30xi16>
        %324 = vector.extract %193[0] : vector<3xi16>
        %325 = math.ceil %10 : tensor<3x10x8xf32>
        scf.yield %rank : index
      }
      %301 = vector.broadcast %c2 : index to vector<10xindex>
      vector.scatter %alloc_12[%c0, %c6, %c4] [%301], %39, %38 : memref<3x10x8xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %302 = index.floordivs %163, %200
      %303 = math.roundeven %0 : tensor<3x10x8xf16>
      %304 = vector.broadcast %c-19910_i16 : i16 to vector<3x3xi16>
      %305 = vector.outerproduct %33, %33, %304 {kind = #vector.kind<add>} : vector<3xi16>, vector<3xi16>
      %306 = math.rsqrt %splat_37 : tensor<8x8x8xf16>
      %307 = math.ceil %0 : tensor<3x10x8xf16>
      %308 = vector.broadcast %127 : f16 to vector<3xf16>
      vector.transfer_write %308, %alloc_15[%rank, %136, %276] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf16>, memref<8x8x8xf16>
      %309 = math.exp2 %9 : tensor<10x12x3xf16>
      memref.alloca_scope.return %cst_47 : f16
    }
    %215 = arith.maxf %cst, %cst_47 : f16
    %216 = vector.broadcast %c2017549053_i32 : i32 to vector<12xi32>
    %217 = vector.broadcast %true_33 : i1 to vector<12xi1>
    %218 = vector.maskedload %153[%c7, %c2, %c0], %217, %216 : memref<8x8x8xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
    %219 = math.atan2 %7, %4 : tensor<3x10xf32>
    %false_50 = index.bool.constant false
    %220 = vector.broadcast %c-19910_i16 : i16 to vector<10x8xi16>
    %221 = vector.multi_reduction <xor>, %67, %220 [0] : vector<3x10x8xi16> to vector<10x8xi16>
    %222 = vector.multi_reduction <and>, %33, %33 [] : vector<3xi16> to vector<3xi16>
    %223 = math.sqrt %7 : tensor<3x10xf32>
    %224 = math.atan2 %cst_2, %cst_2 : f32
    %splat_51 = tensor.splat %c1265439514_i32 : tensor<8x8x8xi32>
    %225 = vector.bitcast %217 : vector<12xi1> to vector<12xi1>
    %226 = arith.andi %c1965706431_i64, %c787680365_i64 : i64
    %227 = vector.broadcast %cst_22 : f32 to vector<8x8x8xf32>
    %228 = vector.fma %227, %227, %227 : vector<8x8x8xf32>
    %229 = scf.if %false_50 -> (memref<10x12x3xi16>) {
      %276 = arith.remf %214, %127 : f16
      scf.if %true_30 {
        %282 = affine.max affine_map<(d0, d1, d2) -> (0)>(%c5, %203, %136)
        %283 = vector.extract %66[2, 6] : vector<3x10x8xi32>
        %284 = affine.max affine_map<(d0) -> ((d0 - 24) * 64)>(%rank)
        %alloca_59 = memref.alloca() : memref<3x10x8xi64>
        %285 = arith.remsi %c787680365_i64, %c1965706431_i64 : i64
        %286 = math.atan2 %transposed, %transposed : tensor<3x10x12xf32>
        %287 = math.floor %collapsed : tensor<30xf32>
        %288 = arith.minf %cst_22, %cst_2 : f32
      } else {
        %282 = math.ceil %18 : tensor<3x10x12xf32>
        %283 = math.atan2 %cst_2, %cst_2 : f32
        %from_elements_59 = tensor.from_elements %155, %c1284882329_i64, %c126204340_i64, %c1965706431_i64, %c0_i64, %c1284882329_i64, %c1284882329_i64, %c1860912383_i64, %c1284882329_i64, %c1860912383_i64, %155, %c126204340_i64, %c787680365_i64, %c126204340_i64, %c787680365_i64, %155, %c126204340_i64, %c0_i64, %155, %c1284882329_i64, %c1860912383_i64, %155, %c787680365_i64, %c1284882329_i64, %c0_i64, %c126204340_i64, %c787680365_i64, %c1965706431_i64, %c787680365_i64, %c1965706431_i64 : tensor<3x10xi64>
        %284 = math.tanh %0 : tensor<3x10x8xf16>
        affine.store %127, %alloc_10[%c12, %c11, %c11] : memref<10x12x3xf16>
        %285 = bufferization.clone %alloc_14 : memref<3x10x8xi16> to memref<3x10x8xi16>
        %286 = math.cos %0 : tensor<3x10x8xf16>
        %inserted = tensor.insert %true into %22[] : tensor<i1>
      }
      %277 = vector.broadcast %cst_2 : f32 to vector<3x10xf32>
      %false_57 = arith.constant false
      %false_58 = arith.constant false
      %278 = vector.transfer_read %21[%c0], %false_58 : tensor<8xi1>, vector<i1>
      %279 = arith.maxui %c2017549053_i32, %c1265439514_i32 : i32
      memref.copy %alloc_17, %alloc_16 : memref<3x10xi16> to memref<3x10xi16>
      %280 = scf.while (%arg3 = %c787680365_i64) : (i64) -> i64 {
        %282 = vector.load %alloc_19[%c3] : memref<8xi1>, vector<8x8x8xi1>
        %alloca_59 = memref.alloca() : memref<3x10xi64>
        %283 = vector.insertelement %c205974663_i32, %218[%24 : index] : vector<12xi32>
        %284 = vector.reduction <xor>, %35 : vector<3xi16> into i16
        memref.copy %alloc_12, %alloc_14 : memref<3x10x8xi16> to memref<3x10x8xi16>
        %285 = vector.matrix_multiply %89, %38 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi16>, vector<10xi16>) -> vector<10xi16>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %286 = vector.transfer_read %50[%131, %131], %cst_60 : tensor<3x10xf32>, vector<12xf32>
        %287 = index.divs %136, %128
        scf.condition(%false_49) %arg3 : i64
      } do {
      ^bb0(%arg3: i64):
        %282 = math.powf %7, %50 : tensor<3x10xf32>
        %283 = bufferization.clone %alloc_11 : memref<3x10x8xi64> to memref<3x10x8xi64>
        %284 = math.log2 %14 : tensor<3x10xf32>
        %285 = index.ceildivs %rank_35, %c3
        %286 = index.maxu %209, %c4
        memref.copy %93, %alloc_6 : memref<8x8x8xi1> to memref<8x8x8xi1>
        %287 = arith.divsi %c787680365_i64, %155 : i64
        %288 = tensor.empty() : tensor<3x10x8xi32>
        %289 = math.fpowi %10, %288 : tensor<3x10x8xf32>, tensor<3x10x8xi32>
        %290 = math.exp2 %211 : tensor<3x3xf32>
        %291 = arith.ceildivsi %true_33, %true : i1
        %292 = affine.load %alloc_8[%c0, %c12, %c6] : memref<8x8x8xf32>
        %293 = math.roundeven %17 : tensor<10x12x3xf32>
        %294 = arith.divf %cst_47, %127 : f16
        %295 = arith.floordivsi %c126204340_i64, %c787680365_i64 : i64
        %296 = arith.divsi %true_1, %true_0 : i1
        %297 = math.ctpop %3 : tensor<3x10x8xi64>
        scf.yield %c0_i64 : i64
      }
      %281 = bufferization.to_memref %11 : memref<3x10xi1>
      scf.yield %alloc_7 : memref<10x12x3xi16>
    } else {
      %276 = index.add %205, %80
      %277 = math.tan %4 : tensor<3x10xf32>
      %278 = arith.addf %cst_3, %cst_3 : f16
      %279 = vector.reduction <minsi>, %225 : vector<12xi1> into i1
      %280 = memref.atomic_rmw addi %c-19910_i16, %alloc_12[%c0, %c8, %c5] : (i16, memref<3x10x8xi16>) -> i16
      %splat_57 = tensor.splat %cst_47 : tensor<10x12x3xf16>
      %281 = arith.floordivsi %c2017549053_i32, %c205974663_i32 : i32
      %282 = arith.mulf %127, %cst : f16
      scf.yield %alloc_7 : memref<10x12x3xi16>
    }
    %230 = index.mul %c12, %c11
    %231 = affine.load %alloc_13[%c2, %c11, %c0] : memref<8x8x8xf16>
    %232 = arith.xori %true_30, %true_1 : i1
    %alloca_52 = memref.alloca() : memref<10x12x3xi32>
    %233 = vector.extract %167[2] : vector<8x8x8xi16>
    %234 = arith.minf %cst_47, %cst_3 : f16
    %235 = vector.reduction <xor>, %218 : vector<12xi32> into i32
    %236 = math.tanh %14 : tensor<3x10xf32>
    %237 = arith.ceildivsi %c2017549053_i32, %c205974663_i32 : i32
    %238 = math.rsqrt %0 : tensor<3x10x8xf16>
    %239 = math.ctlz %13 : tensor<10x12x3xi1>
    %240 = arith.ceildivsi %false_49, %false : i1
    memref.assume_alignment %alloc_16, 8 : memref<3x10xi16>
    %241 = vector.broadcast %230 : index to vector<8xindex>
    vector.scatter %alloc_6[%c0, %c0, %c6] [%241], %20, %20 : memref<8x8x8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
    %242 = math.fma %4, %14, %14 : tensor<3x10xf32>
    %243 = index.ceildivu %c6, %c10
    %244 = tensor.empty() : tensor<10x12x3xi32>
    %245 = math.fpowi %2, %244 : tensor<10x12x3xf32>, tensor<10x12x3xi32>
    %246 = vector.maskedload %alloc_6[%c7, %c6, %c0], %34, %34 : memref<8x8x8xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %247 = arith.minsi %false_49, %false : i1
    %from_elements_53 = tensor.from_elements %false_49, %true, %false, %false, %true_33, %true_30, %true_30, %true, %true_33, %true, %false, %true_0, %false_49, %true, %false_50, %true_1, %false_50, %true_30, %true_33, %false, %true_0, %true_30, %false, %true, %true, %false, %true_33, %false_49, %true_1, %true_1, %true_0, %true, %true, %true_1, %true_0, %73, %true_1, %true_1, %true_30, %true_1, %73, %false_50, %true_30, %true, %true, %true_33, %false_49, %false_49, %false_49, %true_1, %true, %73, %73, %true_0, %false_50, %true_0, %false, %false_50, %false_50, %true_30, %true, %false_50, %73, %false, %false, %false, %false_49, %false_50, %false_49, %true, %73, %true_1, %true_1, %false, %true_33, %true_0, %true_30, %true_0, %false_49, %true_33, %true, %true_33, %false, %true_1, %false, %true_0, %false, %false_50, %false, %false_50, %false_50, %73, %true, %73, %true, %false_50, %73, %true, %false, %false_50, %73, %false_50, %true, %true_1, %true_0, %true_0, %false_50, %false_50, %false, %false_49, %true_1, %true_0, %true_1, %false, %true_33, %false_49, %false_49, %true, %true, %false_49, %true_1, %true_1, %false_50, %true_0, %true_0, %true, %true_30, %true_0, %false_49, %true_33, %true_1, %73, %true, %true, %true_0, %true_1, %true_30, %false, %true_30, %false_49, %false, %true_30, %true, %true_1, %73, %false_49, %73, %true_33, %true_30, %true_33, %true_33, %true_1, %false_50, %true_1, %true_33, %true, %true_33, %true_30, %false_49, %true_0, %true_33, %false_50, %true, %false, %false, %true_1, %false, %true_30, %true, %true_30, %false_50, %true, %73, %true_30, %false_49, %false_50, %true_0, %false, %false_49, %false_50, %false, %true_30, %true_1, %false, %true_1, %true_0, %true_33, %true_1, %true_30, %false_49, %true_30, %true_30, %73, %73, %true_30, %true, %true_30, %true, %false, %false, %true, %73, %true_33, %73, %true, %false_49, %false_49, %true_30, %true_33, %false_50, %73, %true_1, %false, %true_1, %true, %true_33, %false_49, %false, %true_30, %true, %false_49, %73, %true_1, %false_50, %false_49, %true_0, %false_49, %true_1, %true_30, %true_1, %true_33, %true_30, %false, %true_1, %false_50, %73, %true_0, %false, %false_50, %73, %true_1, %true, %true, %false, %true, %true_30, %false_49, %false_50, %true_1, %true_33, %false, %false_49, %73, %false_50, %true_30, %false, %true_33, %true_30, %true_0, %true, %true_0, %true_0, %73, %false, %false, %true_0, %true_1, %false, %true_0, %true_1, %73, %true_1, %true_1, %true_33, %true_0, %true, %true_33, %true_30, %false, %false, %false_49, %false_49, %true_30, %true, %true_33, %false, %false, %true, %true_0, %true_33, %true_0, %true_33, %true_0, %false_50, %true_0, %true_1, %false_50, %true_0, %true_1, %true_33, %true_30, %false_49, %true, %false_50, %true_1, %false, %73, %true_30, %true_0, %false, %true_30, %true_33, %false_49, %false, %true_30, %false_49, %73, %true_0, %true_0, %true_30, %false, %false, %true_0, %false_50, %true_30, %false_50, %true_0, %73, %true, %true_33, %false_49, %true, %true, %true_33, %true_1, %false, %true_33, %true_33, %true_30, %true, %73, %false_50, %false, %false, %false_49, %73, %true_0, %true_1, %true, %false, %false, %true_1, %true_1, %true_1, %true_1, %false_50, %false, %true_1, %true, %false_49 : tensor<10x12x3xi1>
    %alloc_54 = memref.alloc() : memref<10x8xi1>
    %248 = tensor.empty() : tensor<3x8xi1>
    %249 = linalg.matmul ins(%1, %alloc_54 : tensor<3x10xi1>, memref<10x8xi1>) outs(%248 : tensor<3x8xi1>) -> tensor<3x8xi1>
    %250 = affine.max affine_map<(d0) -> (d0 + 16)>(%126)
    %251 = vector.broadcast %c-19910_i16 : i16 to vector<10x10xi16>
    %252 = vector.outerproduct %40, %38, %251 {kind = #vector.kind<mul>} : vector<10xi16>, vector<10xi16>
    %253 = vector.multi_reduction <xor>, %216, %c1265439514_i32 [0] : vector<12xi32> to i32
    %254 = affine.min affine_map<(d0) -> (2, -122, d0 - 4)>(%43)
    %255 = math.ceil %10 : tensor<3x10x8xf32>
    %256 = vector.insertelement %true_1, %246[%c5 : index] : vector<3xi1>
    %257 = arith.remf %cst_47, %214 : f16
    %258 = index.casts %250 : index to i32
    %259 = vector.extract %39[1] : vector<10xi1>
    %260 = index.ceildivu %90, %42
    %261 = math.ceil %10 : tensor<3x10x8xf32>
    bufferization.dealloc_tensor %expanded : tensor<8x8x8x1xi1>
    %262 = arith.ceildivsi %c1201619418_i32, %c2017549053_i32 : i32
    %263 = vector.insertelement %c-19910_i16, %89[%260 : index] : vector<1xi16>
    %264 = arith.maxui %73, %true : i1
    memref.copy %93, %alloc_6 : memref<8x8x8xi1> to memref<8x8x8xi1>
    %265 = arith.andi %c1860912383_i64, %c1965706431_i64 : i64
    %266 = vector.broadcast %true_1 : i1 to vector<3x10x8xi1>
    %267 = vector.extract %168[2] : vector<8x8x8xi1>
    affine.store %true_1, %alloc_19[%c13] : memref<8xi1>
    %268 = vector.reduction <maxsi>, %35 : vector<3xi16> into i16
    %collapsed_55 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<10x12x3xi1> into tensor<120x3xi1>
    %269 = arith.divsi %false_49, %false : i1
    %270 = affine.max affine_map<(d0, d1, d2) -> (d1, 0, -32)>(%156, %90, %c6)
    %271 = tensor.empty() : tensor<3x10xf32>
    %272 = linalg.copy ins(%14 : tensor<3x10xf32>) outs(%271 : tensor<3x10xf32>) -> tensor<3x10xf32>
    %alloc_56 = memref.alloc(%c0) : memref<10x?xi64>
    linalg.transpose ins(%generated_48 : tensor<?x10xi64>) outs(%alloc_56 : memref<10x?xi64>) permutation = [1, 0] 
    %273 = tensor.empty() : tensor<12xf16>
    %reduced = linalg.reduce ins(%9 : tensor<10x12x3xf16>) outs(%273 : tensor<12xf16>) dimensions = [0, 2] 
      (%in: f16, %init: f16) {
        %276 = math.expm1 %7 : tensor<3x10xf32>
        %277 = math.floor %271 : tensor<3x10xf32>
        %alloc_57 = memref.alloc() : memref<3x10xf16>
        %collapsed_58 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
        %278 = bufferization.clone %93 : memref<8x8x8xi1> to memref<8x8x8xi1>
        %279 = index.divu %rank_21, %c8
        %280 = scf.while (%arg3 = %alloc_12) : (memref<3x10x8xi16>) -> memref<3x10x8xi16> {
          %281 = index.add %42, %117
          %282 = math.atan2 %0, %0 : tensor<3x10x8xf16>
          %283 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 16)>(%43, %90, %163)
          %284 = arith.andi %true_33, %false : i1
          %285 = vector.splat %cst_47 : vector<3x10x8xf16>
          %286 = bufferization.clone %alloc_12 : memref<3x10x8xi16> to memref<3x10x8xi16>
          %287 = arith.cmpf ule, %cst_22, %cst_22 : f32
          %288 = math.powf %10, %10 : tensor<3x10x8xf32>
          scf.condition(%false) %alloc_14 : memref<3x10x8xi16>
        } do {
        ^bb0(%arg3: memref<3x10x8xi16>):
          %281 = vector.broadcast %c9 : index to vector<3xindex>
          %282 = vector.broadcast %cst_2 : f32 to vector<3xf32>
          vector.scatter %alloc_8[%c2, %c1, %c5] [%281], %246, %282 : memref<8x8x8xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
          %283 = arith.shrui %true_0, %false_49 : i1
          %284 = vector.splat %163 : vector<10x12x3xindex>
          %285 = arith.ceildivsi %true_33, %true : i1
          %dest, %accumulated_value = vector.scan <or>, %167, %233 {inclusive = true, reduction_dim = 2 : i64} : vector<8x8x8xi16>, vector<8x8xi16>
          %286 = math.cos %splat_37 : tensor<8x8x8xf16>
          %287 = math.absf %4 : tensor<3x10xf32>
          %288 = math.rsqrt %7 : tensor<3x10xf32>
          %289 = index.divu %55, %c5
          %290 = arith.divsi %true_1, %true_33 : i1
          %291 = math.absf %0 : tensor<3x10x8xf16>
          %292 = vector.broadcast %cst_47 : f16 to vector<8xf16>
          %293 = vector.maskedload %189[%c6, %c4, %c2], %20, %292 : memref<10x12x3xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          memref.assume_alignment %229, 4 : memref<10x12x3xi16>
          %294 = math.cttz %collapsed_55 : tensor<120x3xi1>
          %from_elements_60 = tensor.from_elements %true_30, %true, %73, %73, %true_1, %true_30, %false_49, %73, %true_1, %true_30, %true_30, %false_49, %73, %true_30, %true_1, %false_49, %false_50, %true_1, %true_33, %false, %false_50, %true_33, %true_30, %false_50, %true, %true_0, %true, %73, %false_50, %true_0, %true_30, %true_1, %true, %true_1, %true_1, %true_33, %true_1, %true_30, %true_30, %true_33, %true_1, %true_30, %false_49, %true_33, %false_49, %true_0, %true, %73, %73, %true_0, %true_30, %true, %false, %true_30, %true_1, %true, %73, %73, %73, %false_50, %true, %false_49, %false, %true_33, %false_50, %false_49, %false_49, %true_30, %73, %73, %true_33, %true_33, %true_33, %true, %true_0, %false, %true_1, %false_50, %false_49, %true_33, %false, %true_33, %73, %false_50, %true_0, %true_1, %true_33, %73, %true_0, %true_30, %true_33, %true_1, %true_30, %true_1, %false_50, %true_1, %false, %true_1, %true_1, %false, %true_1, %true_0, %true_33, %true_30, %true_0, %73, %true_30, %true_33, %true, %false_49, %73, %true_1, %false, %false, %73, %true, %true_30, %true_1, %false_50, %false, %false_49, %true, %false, %false_49, %false_50, %73, %false, %false_49, %true_1, %true, %true_0, %false_50, %true, %true_0, %false_50, %true_33, %true_33, %true_0, %false, %true_30, %73, %73, %true_0, %true_1, %false, %true_30, %false, %true_30, %true_33, %false_49, %false, %73, %true_30, %true_0, %true_33, %false, %true_33, %false_49, %true_0, %73, %false, %73, %true_30, %true_33, %true_33, %true_30, %true_33, %73, %true_30, %false_49, %true_33, %true_0, %73, %true, %true, %true_1, %false_49, %false_49, %false_49, %true_33, %true, %false_49, %true_30, %false_49, %73, %73, %true_0, %false_50, %true, %false_49, %false_50, %true_33, %73, %false_49, %true_0, %false_49, %73, %true_33, %false_50, %false, %false, %false_49, %true, %false_50, %true_33, %true_30, %true_1, %true_33, %false_50, %false_50, %false, %false_50, %true_0, %false_50, %true_0, %true_30, %true_33, %73, %true_1, %73, %true_30, %true_1, %false_49, %73, %true_1, %false_49, %false_50, %true_33, %true_30, %true_0, %false_50, %false, %false, %73, %true_33, %true, %true_0, %true_1, %true, %true_30, %true_0, %false, %true_30, %true_33, %true_0, %false_49, %true_33, %true_1, %false_49, %false, %true_30, %false_49, %true_0, %73, %true_0, %true_1, %false, %false_50, %true_1, %false_50, %false_49, %false, %true_33, %false, %73, %true, %true_33, %true_1, %73, %73, %true, %false, %false_50, %true_0, %false_50, %73, %true_33, %false_49, %false_49, %false_50, %true_33, %false_50, %73, %true_33, %73, %true_30, %true_1, %true_1, %false, %true_1, %false_50, %73, %73, %true_1, %true_30, %true_1, %false_50, %true, %false_50, %true_0, %true_0, %true_1, %false_50, %73, %73, %false_49, %true_0, %true, %true_30, %true_1, %false_49, %73, %true_33, %false, %false, %true_30, %false, %true, %false_49, %true_33, %true_0, %false_50, %false_49, %false_50, %false_49, %73, %true_33, %false_49, %true_30, %false_50, %false_50, %true_33, %false, %false_49, %false, %false_49, %true_0, %false, %true_33, %false_49, %73, %false_49, %false_49, %true_33, %false, %true_33, %true_1, %true_0, %true_1, %true_30, %false, %false_50, %true_33, %true_1, %true_33, %true_1, %73, %false_49, %73, %false_50, %true_30, %false_50, %true, %false, %true, %false_49, %73, %true, %true_0, %73, %true_0, %true_30, %true_0, %true_30, %true_1, %true, %true_0, %true, %false_50, %true_30, %73, %true_1, %true_1, %false_49, %true_1, %true_0, %true, %false_50, %true, %false_50, %true_1, %false_50, %true_1, %73, %true, %true_1, %false_50, %false_50, %true, %false, %false_50, %true, %false_50, %73, %true_33, %true, %true_33, %true_0, %true, %false_50, %73, %false, %true_0, %false_49, %true_1, %false, %false_49, %true_30, %false_50, %true_0, %true_33, %false_50, %true, %true_0, %false, %false, %true_30, %true_1, %false_50, %false_49, %true_0, %false_49, %false_50, %true_0, %false_49, %true, %true_30, %true_1, %false, %true, %false_49, %true_0, %true, %false, %true_1, %true_0, %73, %false, %true_33, %true_30, %true_33, %true_30, %false, %true_1, %false_50, %true, %true, %false_50, %true, %true_30, %false_50, %true_33, %true_1, %true_30, %false_50, %true, %false_49, %true_1, %true_0, %true_0, %true, %true_0, %false_49, %false_50, %false, %73, %true_1, %true_33, %true_30, %false_49, %true_33, %true_1, %true_0, %true_0, %true_0, %73, %true_1, %true_1, %true_33, %false_49, %false_49, %true_33, %true_33, %true, %false_50, %false, %false, %false, %false_49, %false_49, %true_0, %false, %true, %true_30, %true_1, %false, %true, %true, %true_30, %true_30, %false, %false : tensor<8x8x8xi1>
          %295 = bufferization.to_memref %15 : memref<3x10xi64>
          scf.yield %alloc_12 : memref<3x10x8xi16>
        }
        affine.store %c-19910_i16, %alloc_17[%c14, %c6] : memref<3x10xi16>
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %274 = scf.parallel (%arg3) = (%c10) to (%90) step (%c2) init (%253) -> i32 {
      %276 = bufferization.to_memref %splat_37 : memref<8x8x8xf16>
      %277 = arith.divsi %true_30, %true_33 : i1
      %278 = vector.maskedload %56[%c2, %c5], %217, %217 : memref<3x10xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      %279 = arith.shli %false_49, %73 : i1
      %true_57 = index.bool.constant true
      %280 = math.copysign %0, %0 : tensor<3x10x8xf16>
      %281 = vector.splat %214 : vector<3x10x8xf16>
      %282 = index.sizeof
      %283 = bufferization.clone %alloc_18 : memref<10x12x3xi64> to memref<10x12x3xi64>
      %generated_58 = tensor.generate %163 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %291 = math.log2 %cst_2 : f32
        %292 = arith.minui %true_0, %false_50 : i1
        %293 = tensor.empty() : tensor<3x8xi1>
        %294 = linalg.matmul ins(%176, %248 : tensor<3x3xi1>, tensor<3x8xi1>) outs(%293 : tensor<3x8xi1>) -> tensor<3x8xi1>
        %expanded_59 = tensor.expand_shape %48 [[0], [1, 2]] : tensor<3x3xf32> into tensor<3x3x1xf32>
        tensor.yield %c-19910_i16 : i16
      } : tensor<?x10x8xi16>
      %284 = index.sizeof
      %285 = arith.remsi %c1201619418_i32, %c205974663_i32 : i32
      %286 = vector.broadcast %cst_2 : f32 to vector<10x12x3xf32>
      %287 = vector.fma %286, %286, %286 : vector<10x12x3xf32>
      %288 = math.tan %50 : tensor<3x10xf32>
      %289 = math.copysign %10, %10 : tensor<3x10x8xf32>
      %290 = index.maxs %243, %194
      %c1_i32 = arith.constant 1 : i32
      scf.reduce(%c1_i32)  : i32 {
      ^bb0(%arg4: i32, %arg5: i32):
        %291 = vector.extract %64[1, 4] : vector<3x10x8xi16>
        %292 = vector.broadcast %cst_22 : f32 to vector<3x10xf32>
        %293 = vector.fma %292, %88, %292 : vector<3x10xf32>
        %294 = math.exp %9 : tensor<10x12x3xf16>
        %splat_59 = tensor.splat %false : tensor<3x10xi1>
        %295 = bufferization.to_memref %splat_59 : memref<3x10xi1>
        %296 = memref.realloc %alloc_19 : memref<8xi1> to memref<8xi1>
        %297 = vector.broadcast %cst_2 : f32 to vector<8x8x8xf32>
        %298 = vector.fma %297, %228, %228 : vector<8x8x8xf32>
        %rank_60 = tensor.rank %generated_58 : tensor<?x10x8xi16>
        %c1_i32_61 = arith.constant 1 : i32
        scf.reduce.return %c1_i32_61 : i32
      }
      scf.yield
    }
    %275 = affine.vector_load %alloc_7[%c0, %194, %201] : memref<10x12x3xi16>, vector<3xi16>
    affine.vector_store %217, %alloc_6[%69, %270, %55] : memref<8x8x8xi1>, vector<12xi1>
    vector.print %20 : vector<8xi1>
    vector.print %33 : vector<3xi16>
    vector.print %34 : vector<3xi1>
    vector.print %35 : vector<3xi16>
    vector.print %38 : vector<10xi16>
    vector.print %39 : vector<10xi1>
    vector.print %40 : vector<10xi16>
    vector.print %64 : vector<3x10x8xi16>
    vector.print %65 : vector<3x10x8xi1>
    vector.print %66 : vector<3x10x8xi32>
    vector.print %67 : vector<3x10x8xi16>
    vector.print %87 : vector<3x10xf32>
    vector.print %88 : vector<3x10xf32>
    vector.print %89 : vector<1xi16>
    vector.print %167 : vector<8x8x8xi16>
    vector.print %168 : vector<8x8x8xi1>
    vector.print %169 : vector<8x8x8xi32>
    vector.print %170 : vector<8x8x8xi16>
    vector.print %193 : vector<3xi16>
    vector.print %216 : vector<12xi32>
    vector.print %217 : vector<12xi1>
    vector.print %218 : vector<12xi32>
    vector.print %220 : vector<10x8xi16>
    vector.print %225 : vector<12xi1>
    vector.print %227 : vector<8x8x8xf32>
    vector.print %228 : vector<8x8x8xf32>
    vector.print %233 : vector<8x8xi16>
    vector.print %246 : vector<3xi1>
    vector.print %266 : vector<3x10x8xi1>
    vector.print %267 : vector<8x8xi1>
    vector.print %275 : vector<3xi16>
    vector.print %c205974663_i32 : i32
    vector.print %true : i1
    vector.print %cst : f16
    vector.print %true_0 : i1
    vector.print %c2017549053_i32 : i32
    vector.print %c-19910_i16 : i16
    vector.print %true_1 : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c1965706431_i64 : i64
    vector.print %c1860912383_i64 : i64
    vector.print %c1284882329_i64 : i64
    vector.print %c787680365_i64 : i64
    vector.print %c1265439514_i32 : i32
    vector.print %c1201619418_i32 : i32
    vector.print %c126204340_i64 : i64
    vector.print %cst_22 : f32
    vector.print %73 : i1
    vector.print %false : i1
    vector.print %true_30 : i1
    vector.print %127 : f16
    vector.print %true_33 : i1
    vector.print %c0_i64 : i64
    vector.print %155 : i64
    vector.print %cst_47 : f16
    vector.print %false_49 : i1
    vector.print %214 : f16
    vector.print %false_50 : i1
    vector.print %231 : f16
    vector.print %253 : i32
    return
  }
}
