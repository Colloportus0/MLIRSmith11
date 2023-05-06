module {
  func.func nested @func1(%arg0: vector<6xi32>, %arg1: vector<5x16xf32>) -> f32 {
    %false = arith.constant false
    %c1736010049_i32 = arith.constant 1736010049 : i32
    %c1677136924_i64 = arith.constant 1677136924 : i64
    %false_0 = arith.constant false
    %c2080235350_i64 = arith.constant 2080235350 : i64
    %cst = arith.constant 1.88227149E+9 : f32
    %cst_1 = arith.constant 1.64669645E+9 : f32
    %c730999098_i64 = arith.constant 730999098 : i64
    %false_2 = arith.constant false
    %c1052418246_i32 = arith.constant 1052418246 : i32
    %c1319773611_i32 = arith.constant 1319773611 : i32
    %c1114120595_i64 = arith.constant 1114120595 : i64
    %false_3 = arith.constant false
    %false_4 = arith.constant false
    %c-14964_i16 = arith.constant -14964 : i16
    %true = arith.constant true
    %0 = tensor.empty() : tensor<5x16xi64>
    %1 = tensor.empty() : tensor<6xi32>
    %2 = tensor.empty() : tensor<5x5x3xi64>
    %3 = tensor.empty() : tensor<16x5xi32>
    %4 = tensor.empty() : tensor<5x16xi32>
    %5 = tensor.empty() : tensor<5x16xi64>
    %6 = tensor.empty() : tensor<5x5x3xi1>
    %7 = tensor.empty() : tensor<6xf32>
    %8 = tensor.empty() : tensor<5x16xi1>
    %9 = tensor.empty() : tensor<5x16xf16>
    %10 = tensor.empty() : tensor<6xi64>
    %11 = tensor.empty() : tensor<5x16xf16>
    %12 = tensor.empty() : tensor<6xi1>
    %13 = tensor.empty() : tensor<16x5xi16>
    %14 = tensor.empty() : tensor<5x16xi1>
    %15 = tensor.empty() : tensor<6xi32>
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
    %alloc = memref.alloc() : memref<16x5xi16>
    %alloc_5 = memref.alloc() : memref<5x16xi1>
    %alloc_6 = memref.alloc() : memref<16x5xi32>
    %alloc_7 = memref.alloc() : memref<16x5xf16>
    %alloc_8 = memref.alloc() : memref<6xf16>
    %alloc_9 = memref.alloc() : memref<5x5x3xi64>
    %alloc_10 = memref.alloc() : memref<5x16xi64>
    %alloc_11 = memref.alloc() : memref<5x5x3xi16>
    %alloc_12 = memref.alloc() : memref<5x16xi1>
    %alloc_13 = memref.alloc() : memref<5x16xi16>
    %alloc_14 = memref.alloc() : memref<5x5x3xf32>
    %alloc_15 = memref.alloc() : memref<5x5x3xf32>
    %alloc_16 = memref.alloc() : memref<5x16xi32>
    %alloc_17 = memref.alloc() : memref<16x5xi64>
    %alloc_18 = memref.alloc() : memref<6xi64>
    %alloc_19 = memref.alloc() : memref<5x5x3xf16>
    %16 = tensor.empty() : tensor<6xf32>
    %17 = linalg.copy ins(%7 : tensor<6xf32>) outs(%16 : tensor<6xf32>) -> tensor<6xf32>
    %18 = tensor.empty() : tensor<16x5xi1>
    %transposed = linalg.transpose ins(%8 : tensor<5x16xi1>) outs(%18 : tensor<16x5xi1>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<i64>
    linalg.reduce ins(%10 : tensor<6xi64>) outs(%alloc_20 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %264 = affine.apply affine_map<(d0) -> ((d0 floordiv 128 + d0) floordiv 32)>(%c4)
        %265 = index.ceildivs %c8, %c14
        %266 = math.log2 %7 : tensor<6xf32>
        %267 = arith.maxsi %c730999098_i64, %c1114120595_i64 : i64
        %268 = arith.remf %cst, %cst : f32
        %269 = bufferization.clone %alloc : memref<16x5xi16> to memref<16x5xi16>
        %270 = tensor.empty() : tensor<6xi1>
        %mapped = linalg.map ins(%12, %12 : tensor<6xi1>, tensor<6xi1>) outs(%270 : tensor<6xi1>)
          (%in_54: i1, %in_55: i1) {
            %272 = math.exp %7 : tensor<6xf32>
            %cast_56 = tensor.cast %10 : tensor<6xi64> to tensor<?xi64>
            %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2 - 2, d3 mod 8 - 32)>(%c13, %c15, %c12, %264)
            %274 = affine.load %alloc_17[%c9, %c11] : memref<16x5xi64>
            %275 = arith.ori %c1677136924_i64, %c2080235350_i64 : i64
            %from_elements_57 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1 : tensor<16x5xf32>
            %276 = index.sub %c11, %c3
            %277 = arith.shrsi %c1319773611_i32, %c1319773611_i32 : i32
            %expanded_58 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<5x16xi1> into tensor<5x16x1xi1>
            %278 = arith.shrui %false_3, %false : i1
            %expanded_59 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<5x5x3xi1> into tensor<5x5x3x1xi1>
            %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%c6, %c10, %c13, %276)
            %280 = arith.maxui %c1677136924_i64, %274 : i64
            %281 = arith.cmpf ueq, %cst_1, %cst_1 : f32
            %282 = math.cttz %5 : tensor<5x16xi64>
            %283 = index.mul %c15, %c8
            %284 = vector.splat %c13 : vector<6xindex>
            %285 = math.absi %true : i1
            %286 = vector.broadcast %false_4 : i1 to vector<6xi1>
            %287 = vector.shuffle %286, %286 [0, 2, 3, 5, 6, 7, 9, 10] : vector<6xi1>, vector<6xi1>
            %288 = vector.broadcast %cst_1 : f32 to vector<5x5x3xf32>
            %289 = vector.broadcast %false_3 : i1 to vector<5x5x3xi1>
            %290 = vector.broadcast %c1319773611_i32 : i32 to vector<5x5x3xi32>
            %291 = vector.gather %from_elements_57[%c14, %c0] [%290], %289, %288 : tensor<16x5xf32>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xf32> into vector<5x5x3xf32>
            %292 = index.ceildivs %c2, %c6
            %293 = math.rsqrt %9 : tensor<5x16xf16>
            %294 = arith.ori %c1114120595_i64, %c1677136924_i64 : i64
            %295 = affine.apply affine_map<(d0, d1) -> (-((d0 ceildiv 2) mod 16))>(%c9, %c8)
            %296 = vector.extract_strided_slice %288 {offsets = [0], sizes = [2], strides = [1]} : vector<5x5x3xf32> to vector<2x5x3xf32>
            %297 = vector.broadcast %c-14964_i16 : i16 to vector<i16>
            %298 = vector.insertelement %c-14964_i16, %297[] : vector<i16>
            %alloc_60 = memref.alloc() : memref<16x5xi1>
            memref.tensor_store %18, %alloc_60 : memref<16x5xi1>
            %299 = math.rsqrt %17 : tensor<6xf32>
            bufferization.dealloc_tensor %16 : tensor<6xf32>
            %300 = index.floordivs %c11, %273
            %301 = arith.cmpi ne, %in, %init : i64
            %302 = math.ctlz %3 : tensor<16x5xi32>
            %false_61 = arith.constant false
            linalg.yield %false_61 : i1
          }
        %271 = arith.muli %init, %c1114120595_i64 : i64
        %c0_i64_53 = arith.constant 0 : i64
        linalg.yield %c0_i64_53 : i64
      }
    scf.parallel (%arg2, %arg3) = (%c0, %c15) to (%c6, %c1) step (%c8, %c1) {
      %264 = math.round %7 : tensor<6xf32>
      %265 = math.fpowi %11, %4 : tensor<5x16xf16>, tensor<5x16xi32>
      %266 = arith.xori %c-14964_i16, %c-14964_i16 : i16
      %alloc_53 = memref.alloc() : memref<3x5xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53 : memref<3x5xi1>) outs(%6 : tensor<5x5x3xi1>) {
      ^bb0(%in: i1, %out: i1):
        %280 = math.rsqrt %cst_1 : f32
        %281 = math.absf %16 : tensor<6xf32>
        %rank_54 = tensor.rank %9 : tensor<5x16xf16>
        %282 = math.rsqrt %16 : tensor<6xf32>
        %283 = vector.broadcast %c-14964_i16 : i16 to vector<6xi16>
        %284 = vector.broadcast %true : i1 to vector<6xi1>
        %285 = vector.maskedload %alloc[%c7, %c0], %284, %283 : memref<16x5xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %286 = arith.negf %cst_1 : f32
        %287 = vector.shuffle %284, %284 [4, 6, 7, 10] : vector<6xi1>, vector<6xi1>
        %288 = index.sub %c8, %c7
        %289 = math.tanh %9 : tensor<5x16xf16>
        %290 = vector.load %alloc_18[%c1] : memref<6xi64>, vector<16x5xi64>
        %291 = math.fma %17, %7, %7 : tensor<6xf32>
        %292 = arith.shli %in, %out : i1
        %293 = math.absf %9 : tensor<5x16xf16>
        %294 = math.roundeven %cst_1 : f32
        %295 = math.ctpop %4 : tensor<5x16xi32>
        %296 = arith.ori %c1319773611_i32, %c1736010049_i32 : i32
        %297 = index.castu %in : i1 to index
        %298 = math.tan %7 : tensor<6xf32>
        %299 = vector.broadcast %false_2 : i1 to vector<3x6xi1>
        %300 = vector.transfer_write %299, %6[%arg2, %288, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x6xi1>, tensor<5x5x3xi1>
        %301 = arith.ori %c1677136924_i64, %c2080235350_i64 : i64
        %alloc_55 = memref.alloc() : memref<16x16xi64>
        %302 = tensor.empty() : tensor<5x16xi64>
        %303 = linalg.matmul ins(%5, %alloc_55 : tensor<5x16xi64>, memref<16x16xi64>) outs(%302 : tensor<5x16xi64>) -> tensor<5x16xi64>
        %collapsed_56 = tensor.collapse_shape %3 [[0, 1]] : tensor<16x5xi32> into tensor<80xi32>
        %true_57 = index.bool.constant true
        %304 = vector.broadcast %c-14964_i16 : i16 to vector<6x6xi16>
        %305 = vector.outerproduct %285, %283, %304 {kind = #vector.kind<add>} : vector<6xi16>, vector<6xi16>
        %from_elements_58 = tensor.from_elements %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1 : tensor<16x5xf32>
        %306 = math.ctpop %c730999098_i64 : i64
        %307 = memref.atomic_rmw addi %c1677136924_i64, %alloc_9[%c4, %c4, %c2] : (i64, memref<5x5x3xi64>) -> i64
        %308 = memref.atomic_rmw addi %c730999098_i64, %alloc_17[%c11, %c0] : (i64, memref<16x5xi64>) -> i64
        %309 = memref.load %alloc_7[%c15, %c4] : memref<16x5xf16>
        %310 = math.fpowi %cst, %c1052418246_i32 : f32, i32
        bufferization.dealloc_tensor %16 : tensor<6xf32>
        %311 = arith.ceildivsi %c-14964_i16, %c-14964_i16 : i16
        linalg.yield %false : i1
      } -> tensor<5x5x3xi1>
      %268 = math.tan %16 : tensor<6xf32>
      %269 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + -d3 + d1) ceildiv 64 == 0, -d3 >= 0)>(%c9, %c4, %c9, %c5) -> memref<5x16xf16> {
        %280 = index.casts %arg2 : index to i32
        %281 = index.maxu %arg2, %c1
        %282 = arith.shrsi %false, %false_2 : i1
        %283 = math.ctpop %c730999098_i64 : i64
        %284 = math.log1p %16 : tensor<6xf32>
        %285 = math.ceil %cst : f32
        %286 = bufferization.to_memref %10 : memref<6xi64>
        %287 = arith.subi %c2080235350_i64, %c2080235350_i64 : i64
        %alloc_54 = memref.alloc() : memref<5x16xf16>
        affine.yield %alloc_54 : memref<5x16xf16>
      } else {
        %alloca = memref.alloca() : memref<5x5x3xi64>
        %from_elements_54 = tensor.from_elements %false_3, %false, %false, %false_3, %false_0, %false_2, %false_4, %false_3, %false_0, %false_0, %true, %false_0, %false_3, %false_0, %true, %false_4, %false_0, %true, %false, %false_4, %false_2, %false_2, %false_3, %false_0, %true, %true, %false_0, %false_0, %false_3, %false_4, %false_0, %false_3, %false_3, %false, %false, %false_4, %false_3, %false_3, %false_4, %false_3, %false, %false_4, %false_4, %false_2, %true, %true, %false_3, %true, %false_4, %false_3, %false_2, %false_0, %false_2, %false, %false, %true, %false_4, %true, %false_4, %false_3, %false_4, %false_3, %true, %true, %true, %false_0, %true, %false_0, %true, %true, %false, %false_2, %false_3, %false_0, %false_0, %false_4, %false_2, %false_4, %false_2, %true : tensor<5x16xi1>
        bufferization.dealloc_tensor %10 : tensor<6xi64>
        %280 = index.castu %c1114120595_i64 : i64 to index
        %281 = arith.ceildivsi %c1677136924_i64, %c2080235350_i64 : i64
        %expanded_55 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<16x5xi16> into tensor<16x5x1xi16>
        %282 = arith.minsi %c1319773611_i32, %c1736010049_i32 : i32
        %283 = math.ceil %9 : tensor<5x16xf16>
        %alloc_56 = memref.alloc() : memref<5x16xf16>
        affine.yield %alloc_56 : memref<5x16xf16>
      }
      %270 = math.ipowi %13, %13 : tensor<16x5xi16>
      %271 = vector.create_mask %c2, %c14, %c2 : vector<5x5x3xi1>
      %272 = arith.shli %c1736010049_i32, %c1052418246_i32 : i32
      %273 = bufferization.to_tensor %alloc_11 : memref<5x5x3xi16>
      %274 = math.fma %16, %7, %7 : tensor<6xf32>
      %275 = arith.maxui %c-14964_i16, %c-14964_i16 : i16
      %276 = bufferization.clone %alloc_11 : memref<5x5x3xi16> to memref<5x5x3xi16>
      %277 = affine.load %alloc_14[%c5, %c8, %c15] : memref<5x5x3xf32>
      %278 = arith.ori %c730999098_i64, %c1677136924_i64 : i64
      %279 = math.round %cst : f32
      scf.yield
    }
    %19 = affine.vector_load %alloc_6[%c4, %c3] : memref<16x5xi32>, vector<3xi32>
    affine.vector_store %19, %alloc_6[%c1, %c6] : memref<16x5xi32>, vector<3xi32>
    %20 = tensor.empty() : tensor<6xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc_18, %20 : memref<6xi64>, tensor<6xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = math.ipowi %18, %transposed : tensor<16x5xi1>
    %24 = vector.matrix_multiply %19, %19 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
    %25 = math.fpowi %7, %1 : tensor<6xf32>, tensor<6xi32>
    %26 = arith.minui %false_0, %false_4 : i1
    %27 = affine.load %alloc_11[%c2, %c8, %c8] : memref<5x5x3xi16>
    %28 = scf.execute_region -> vector<6xi32> {
      %264 = vector.transpose %24, [0] : vector<1xi32> to vector<1xi32>
      affine.store %c-14964_i16, %alloc_11[%c1, %c14, %c2] : memref<5x5x3xi16>
      %265 = vector.transpose %24, [0] : vector<1xi32> to vector<1xi32>
      %266 = index.sizeof
      %alloca = memref.alloca() : memref<5x16xi32>
      %267 = index.ceildivu %c12, %c0
      %268 = memref.atomic_rmw mins %27, %alloc_13[%c2, %c5] : (i16, memref<5x16xi16>) -> i16
      %alloca_53 = memref.alloca() : memref<5x5x3xi32>
      %269 = math.round %17 : tensor<6xf32>
      %270 = vector.broadcast %c1052418246_i32 : i32 to vector<16x5xi32>
      %271 = math.tan %9 : tensor<5x16xf16>
      %272 = math.sqrt %cst : f32
      %273 = math.roundeven %16 : tensor<6xf32>
      %274 = arith.cmpf ueq, %cst_1, %cst : f32
      %275 = index.castu %c15 : index to i32
      %276 = math.exp %cst : f32
      %277 = vector.broadcast %c1052418246_i32 : i32 to vector<6xi32>
      scf.yield %277 : vector<6xi32>
    }
    %29 = memref.alloca_scope  -> (i32) {
      %true_53 = index.bool.constant true
      %264 = index.sizeof
      %265 = index.maxu %c11, %c14
      %266 = vector.broadcast %cst_1 : f32 to vector<16x6xf32>
      %267 = vector.broadcast %cst : f32 to vector<16xf32>
      %dest_54, %accumulated_value_55 = vector.scan <minf>, %266, %267 {inclusive = true, reduction_dim = 1 : i64} : vector<16x6xf32>, vector<16xf32>
      %268 = math.cttz %15 : tensor<6xi32>
      %269 = index.maxu %c4, %c2
      %270 = math.floor %9 : tensor<5x16xf16>
      %271 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c7, %c2, %264)
      %272 = math.round %17 : tensor<6xf32>
      %273 = math.log2 %11 : tensor<5x16xf16>
      %274 = arith.xori %c2080235350_i64, %c1677136924_i64 : i64
      %275 = math.atan2 %16, %7 : tensor<6xf32>
      %alloca = memref.alloca() : memref<5x5x3xi1>
      %276 = vector.splat %true : vector<5x16xi1>
      %277 = vector.transpose %24, [0] : vector<1xi32> to vector<1xi32>
      %278 = vector.broadcast %c1114120595_i64 : i64 to vector<5xi64>
      %279 = vector.broadcast %false_0 : i1 to vector<5xi1>
      %280 = vector.maskedload %alloc_9[%c2, %c1, %c0], %279, %278 : memref<5x5x3xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %281 = math.log %cst : f32
      %282 = index.add %c0, %c10
      %283 = vector.load %alloc_17[%c9, %c0] : memref<16x5xi64>, vector<5x16xi64>
      scf.execute_region {
        %297 = arith.cmpf uno, %cst, %cst : f32
        %rank_56 = tensor.rank %2 : tensor<5x5x3xi64>
        %298 = math.floor %16 : tensor<6xf32>
        %299 = arith.xori %c-14964_i16, %27 : i16
        %alloca_57 = memref.alloca() : memref<5x5x3xi1>
        %cst_58 = arith.constant 0x4E5157EF : f32
        %300 = arith.ceildivsi %c1319773611_i32, %c1319773611_i32 : i32
        %301 = index.castu %c13 : index to i32
        %cst_59 = arith.constant 1.000000e+00 : f16
        %302 = vector.transfer_read %11[%c15, %rank_56], %cst_59 : tensor<5x16xf16>, vector<f16>
        %303 = arith.remsi %false_0, %true : i1
        %304 = index.sub %c5, %c15
        %305 = vector.reduction <mul>, %24 : vector<1xi32> into i32
        vector.print %278 : vector<5xi64>
        %306 = memref.atomic_rmw andi %c1677136924_i64, %alloc_17[%c4, %c1] : (i64, memref<16x5xi64>) -> i64
        %307 = math.log2 %11 : tensor<5x16xf16>
        %308 = math.rsqrt %11 : tensor<5x16xf16>
        scf.yield
      }
      %284 = arith.divui %c1114120595_i64, %c730999098_i64 : i64
      %285 = vector.shuffle %279, %279 [0, 2, 4, 6, 7, 9] : vector<5xi1>, vector<5xi1>
      %286 = arith.maxui %c1114120595_i64, %c1114120595_i64 : i64
      %287 = vector.reduction <or>, %278 : vector<5xi64> into i64
      %288 = vector.broadcast %c1114120595_i64 : i64 to vector<5x5xi64>
      %289 = vector.outerproduct %278, %278, %288 {kind = #vector.kind<minsi>} : vector<5xi64>, vector<5xi64>
      %290 = bufferization.clone %alloc_7 : memref<16x5xf16> to memref<16x5xf16>
      %291 = arith.shrui %c1736010049_i32, %c1319773611_i32 : i32
      %292 = math.exp %9 : tensor<5x16xf16>
      %293 = vector.broadcast %false : i1 to vector<5x5xi1>
      %294 = vector.outerproduct %279, %279, %293 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
      %295 = vector.matrix_multiply %278, %280 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      memref.alloca_scope  {
        %297 = arith.shli %c730999098_i64, %c1114120595_i64 : i64
        memref.store %c1114120595_i64, %alloc_18[%c1] : memref<6xi64>
        %298 = memref.realloc %alloc_18 : memref<6xi64> to memref<6xi64>
        %cst_56 = arith.constant 1.000000e+00 : f16
        %299 = vector.transfer_read %alloc_19[%c9, %c11, %282], %cst_56 : memref<5x5x3xf16>, vector<5xf16>
        %300 = arith.remf %cst, %cst_1 : f32
        %301 = index.sub %c14, %c9
        %302 = memref.atomic_rmw addf %cst, %alloc_15[%c1, %c4, %c2] : (f32, memref<5x5x3xf32>) -> f32
        %303 = math.log2 %cst : f32
        %true_57 = index.bool.constant true
        %304 = arith.remsi %false_3, %true : i1
        %305 = arith.cmpi uge, %false, %true_53 : i1
        %306 = vector.broadcast %cst_1 : f32 to vector<16x5xf32>
        %307 = index.sub %c5, %c15
        %308 = arith.maxsi %true_57, %false : i1
        %309 = math.round %cst_56 : f16
        %310 = arith.cmpi slt, %true, %true : i1
        %311 = vector.broadcast %cst : f32 to vector<16x3xf32>
        vector.transfer_write %311, %alloc_14[%c4, %c12, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x3xf32>, memref<5x5x3xf32>
        %312 = math.fma %16, %7, %17 : tensor<6xf32>
        %313 = math.round %cst_1 : f32
        %314 = arith.maxui %false_3, %false_3 : i1
        memref.assume_alignment %alloc_5, 16 : memref<5x16xi1>
        %315 = math.log %7 : tensor<6xf32>
        %316 = bufferization.to_memref %0 : memref<5x16xi64>
        %317 = arith.remui %false_0, %true_57 : i1
        %318 = bufferization.clone %alloc_20 : memref<i64> to memref<i64>
        %319 = math.ipowi %0, %0 : tensor<5x16xi64>
        %320 = math.cttz %10 : tensor<6xi64>
        %321 = arith.floordivsi %c1677136924_i64, %c1114120595_i64 : i64
        %322 = arith.remsi %false, %false_3 : i1
        %323 = arith.shli %false, %false_3 : i1
        %324 = bufferization.to_memref %17 : memref<6xf32>
        %325 = vector.broadcast %c11 : index to vector<3xindex>
        %326 = vector.broadcast %false_0 : i1 to vector<3xi1>
        %327 = vector.broadcast %cst_56 : f16 to vector<3xf16>
        vector.scatter %alloc_7[%c15, %c2] [%325], %326, %327 : memref<16x5xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      }
      %296 = index.casts %c11 : index to i32
      memref.alloca_scope.return %c1319773611_i32 : i32
    }
    %expanded = tensor.expand_shape %15 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
    %30 = math.atan2 %17, %7 : tensor<6xf32>
    %31 = math.roundeven %11 : tensor<5x16xf16>
    %32 = math.log10 %11 : tensor<5x16xf16>
    %33 = vector.load %alloc_20[] : memref<i64>, vector<5x5x3xi64>
    %34 = index.casts %c4 : index to i32
    %35 = index.ceildivu %c12, %c15
    %36 = arith.remsi %c2080235350_i64, %c2080235350_i64 : i64
    %37 = vector.reduction <minui>, %24 : vector<1xi32> into i32
    %38 = math.rsqrt %9 : tensor<5x16xf16>
    %39 = arith.maxsi %c730999098_i64, %c1677136924_i64 : i64
    %40 = arith.subi %27, %27 : i16
    %41 = arith.muli %false_2, %false_3 : i1
    %c1_i64 = arith.constant 1 : i64
    %42 = vector.transfer_read %10[%c14], %c1_i64 : tensor<6xi64>, vector<i64>
    %43 = vector.transpose %19, [0] : vector<3xi32> to vector<3xi32>
    %44 = math.ctpop %c2080235350_i64 : i64
    %45 = index.castu %c11 : index to i32
    %46 = math.ipowi %c-14964_i16, %27 : i16
    %47 = index.add %c9, %c13
    %48 = math.log10 %16 : tensor<6xf32>
    %extracted = tensor.extract %7[%c1] : tensor<6xf32>
    %49 = vector.shuffle %33, %33 [2, 3, 4, 5, 7, 9] : vector<5x5x3xi64>, vector<5x5x3xi64>
    %50 = tensor.empty() : tensor<5x5xi1>
    %51 = linalg.matmul ins(%8, %transposed : tensor<5x16xi1>, tensor<16x5xi1>) outs(%50 : tensor<5x5xi1>) -> tensor<5x5xi1>
    %52 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c4, %47, %c5)
    memref.assume_alignment %alloc_16, 4 : memref<5x16xi32>
    %53 = vector.shuffle %19, %19 [0, 2, 3] : vector<3xi32>, vector<3xi32>
    %54 = vector.insert %c1319773611_i32, %24 [0] : i32 into vector<1xi32>
    %true_21 = index.bool.constant true
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<5x16xf16> into tensor<80xf16>
    %cast = tensor.cast %9 : tensor<5x16xf16> to tensor<?x?xf16>
    bufferization.dealloc_tensor %14 : tensor<5x16xi1>
    %55 = vector.broadcast %c1114120595_i64 : i64 to vector<5x3xi64>
    %dest, %accumulated_value = vector.scan <xor>, %33, %55 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5x3xi64>, vector<5x3xi64>
    %56 = math.sqrt %7 : tensor<6xf32>
    vector.print %33 : vector<5x5x3xi64>
    %57 = math.ctlz %6 : tensor<5x5x3xi1>
    %58 = arith.negf %cst : f32
    %59 = math.round %16 : tensor<6xf32>
    %60 = arith.remsi %c1114120595_i64, %c2080235350_i64 : i64
    %61 = arith.maxui %true_21, %true : i1
    %62 = affine.max affine_map<(d0) -> (d0 floordiv 128 + 4, (d0 floordiv 128 - 60) * 16)>(%52)
    %63 = vector.transpose %19, [0] : vector<3xi32> to vector<3xi32>
    %64 = vector.broadcast %29 : i32 to vector<6xi32>
    %65 = vector.broadcast %true_21 : i1 to vector<6xi1>
    %66 = vector.maskedload %alloc_6[%c1, %c1], %65, %64 : memref<16x5xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %alloc_22 = memref.alloc() : memref<5x3xi64>
    %67 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22 : memref<5x3xi64>) outs(%2 : tensor<5x5x3xi64>) {
    ^bb0(%in: i64, %out: i64):
      %264 = index.divu %52, %c6
      %265 = arith.remf %cst, %cst_1 : f32
      %266 = arith.maxsi %c730999098_i64, %c1677136924_i64 : i64
      %267 = bufferization.to_tensor %alloc_10 : memref<5x16xi64>
      %268 = vector.create_mask %c9, %c1, %52 : vector<5x5x3xi1>
      %269 = arith.remui %27, %c-14964_i16 : i16
      %270 = math.ctpop %false_0 : i1
      %cst_53 = arith.constant 1.000000e+00 : f16
      %271 = vector.broadcast %cst_53 : f16 to vector<f16>
      vector.transfer_write %271, %alloc_8[%47] : vector<f16>, memref<6xf16>
      %272 = arith.maxui %c1319773611_i32, %c1736010049_i32 : i32
      %rank_54 = tensor.rank %collapsed : tensor<80xf16>
      %273 = arith.floordivsi %c-14964_i16, %27 : i16
      %274 = arith.remui %c1319773611_i32, %29 : i32
      %275 = affine.min affine_map<(d0, d1, d2) -> (d0 + d1, d0 + d1, d0 + d1)>(%c12, %c14, %c14)
      %cst_55 = arith.constant 1.000000e+00 : f16
      %cst_56 = arith.constant 0.000000e+00 : f16
      %276 = vector.transfer_read %9[%62, %c9], %cst_56 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<5x16xf16>, vector<16xf16>
      %277 = index.casts %264 : index to i32
      %278 = math.log2 %11 : tensor<5x16xf16>
      %279 = vector.broadcast %c2080235350_i64 : i64 to vector<16xi64>
      vector.transfer_write %279, %alloc_10[%c14, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi64>, memref<5x16xi64>
      %280 = math.atan2 %17, %7 : tensor<6xf32>
      %281 = math.tanh %cst_1 : f32
      %282 = math.ctlz %4 : tensor<5x16xi32>
      %283 = arith.remsi %c1319773611_i32, %c1736010049_i32 : i32
      %284 = math.exp %cst_55 : f16
      scf.index_switch %c1 
      case 1 {
        %expanded_57 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<16x5xi16> into tensor<16x5x1xi16>
        vector.print %64 : vector<6xi32>
        %false_58 = index.bool.constant false
        %295 = affine.load %alloc_19[%c12, %c2, %c6] : memref<5x5x3xf16>
        %296 = math.log2 %16 : tensor<6xf32>
        %297 = vector.broadcast %false_2 : i1 to vector<3xi1>
        vector.transfer_write %297, %alloc_5[%275, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, memref<5x16xi1>
        %298 = index.divu %c13, %c2
        %299 = arith.shli %c1736010049_i32, %29 : i32
        %300 = index.add %c0, %c12
        %301 = math.ctlz %c1114120595_i64 : i64
        %302 = math.round %9 : tensor<5x16xf16>
        %303 = arith.shrui %c2080235350_i64, %c1114120595_i64 : i64
        %304 = index.mul %rank_54, %c2
        %cst_59 = arith.constant 1.000000e+00 : f16
        %305 = vector.transfer_read %11[%c11, %c9], %cst_59 : tensor<5x16xf16>, vector<16xf16>
        %306 = affine.min affine_map<(d0, d1) -> (-d1, d1 floordiv 2)>(%c9, %c8)
        vector.print %297 : vector<3xi1>
        scf.yield
      }
      case 2 {
        %295 = arith.remf %cst_1, %extracted : f32
        %296 = index.divu %c0, %c15
        %297 = vector.create_mask %c10, %c12 : vector<16x5xi1>
        %298 = math.floor %11 : tensor<5x16xf16>
        %299 = math.tanh %cst_53 : f16
        %alloc_57 = memref.alloc() : memref<5x5x3xi1>
        memref.tensor_store %6, %alloc_57 : memref<5x5x3xi1>
        %300 = math.ipowi %false_2, %false_2 : i1
        %301 = arith.remui %c-14964_i16, %27 : i16
        %302 = math.absi %c1052418246_i32 : i32
        %303 = arith.maxsi %false, %true_21 : i1
        %304 = memref.realloc %alloc_8 : memref<6xf16> to memref<5xf16>
        %305 = math.roundeven %11 : tensor<5x16xf16>
        %306 = arith.divui %c1736010049_i32, %c1052418246_i32 : i32
        %extracted_58 = tensor.extract %11[%c2, %c11] : tensor<5x16xf16>
        %307 = vector.transpose %271, [] : vector<f16> to vector<f16>
        %308 = math.fma %extracted, %extracted, %cst_1 : f32
        scf.yield
      }
      case 3 {
        %295 = bufferization.to_tensor %alloc : memref<16x5xi16>
        %296 = vector.bitcast %65 : vector<6xi1> to vector<6xi1>
        %297 = math.tanh %cst_55 : f16
        %298 = math.round %cst_53 : f16
        %299 = math.ctlz %5 : tensor<5x16xi64>
        %300 = math.exp %17 : tensor<6xf32>
        %301 = vector.reduction <add>, %19 : vector<3xi32> into i32
        %302 = vector.reduction <xor>, %279 : vector<16xi64> into i64
        %303 = math.ctpop %20 : tensor<6xi64>
        %304 = arith.xori %false, %false_3 : i1
        %305 = arith.xori %c2080235350_i64, %c1114120595_i64 : i64
        %306 = bufferization.clone %alloc_18 : memref<6xi64> to memref<6xi64>
        %307 = index.castu %c1_i64 : i64 to index
        %308 = arith.cmpf ole, %cst, %cst_1 : f32
        %309 = math.exp %16 : tensor<6xf32>
        %310 = index.castu %c9 : index to i32
        scf.yield
      }
      case 4 {
        %295 = bufferization.to_memref %2 : memref<5x5x3xi64>
        %296 = math.log10 %cst_55 : f16
        %297 = math.log %extracted : f32
        %298 = vector.broadcast %out : i64 to vector<5x3xi64>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %33, %298 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5x3xi64>, vector<5x3xi64>
        %299 = vector.bitcast %19 : vector<3xi32> to vector<3xf32>
        %300 = vector.load %alloc_15[%c0, %c1, %c1] : memref<5x5x3xf32>, vector<16x5xf32>
        %301 = arith.shrui %true, %true : i1
        %rank_59 = tensor.rank %7 : tensor<6xf32>
        %302 = arith.subi %c1319773611_i32, %c1319773611_i32 : i32
        %303 = index.ceildivu %c8, %c4
        %304 = math.log1p %7 : tensor<6xf32>
        %305 = arith.ori %27, %c-14964_i16 : i16
        %306 = arith.cmpf ule, %cst, %extracted : f32
        %307 = bufferization.clone %alloc_8 : memref<6xf16> to memref<6xf16>
        %308 = math.absf %extracted : f32
        %309 = index.sub %52, %c14
        scf.yield
      }
      default {
        %295 = math.round %extracted : f32
        %cast_57 = tensor.cast %15 : tensor<6xi32> to tensor<?xi32>
        %296 = math.cttz %8 : tensor<5x16xi1>
        %297 = arith.negf %cst_1 : f32
        %298 = arith.remui %c1114120595_i64, %c1677136924_i64 : i64
        %299 = arith.ori %false_3, %true : i1
        bufferization.dealloc_tensor %3 : tensor<16x5xi32>
        %300 = bufferization.clone %alloc_13 : memref<5x16xi16> to memref<5x16xi16>
        %301 = vector.broadcast %c1114120595_i64 : i64 to vector<i64>
        vector.transfer_write %301, %alloc_18[%rank_54] : vector<i64>, memref<6xi64>
        %302 = memref.atomic_rmw muli %out, %alloc_18[%c2] : (i64, memref<6xi64>) -> i64
        %303 = arith.subi %27, %c-14964_i16 : i16
        %collapsed_58 = tensor.collapse_shape %4 [[0, 1]] : tensor<5x16xi32> into tensor<80xi32>
        %304 = arith.shli %true, %false_2 : i1
        %305 = vector.transpose %19, [0] : vector<3xi32> to vector<3xi32>
        %306 = index.sizeof
        memref.tensor_store %8, %alloc_5 : memref<5x16xi1>
      }
      %285 = math.ctpop %29 : i32
      %286 = index.divu %c2, %52
      %287 = math.fma %cst_53, %cst_53, %cst_55 : f16
      %288 = vector.reduction <mul>, %65 : vector<6xi1> into i1
      %289 = math.log10 %cst_1 : f32
      %290 = affine.if affine_set<(d0, d1) : ((-(d1 + 2)) floordiv 2 - 1 == 0)>(%c5, %c9) -> i64 {
        %295 = math.ctpop %2 : tensor<5x5x3xi64>
        %296 = arith.addf %cst_55, %cst_55 : f16
        %297 = math.roundeven %cst : f32
        %298 = math.log2 %7 : tensor<6xf32>
        %299 = arith.shli %c1736010049_i32, %c1319773611_i32 : i32
        %alloca = memref.alloca() : memref<5x16xf32>
        %300 = math.atan2 %9, %9 : tensor<5x16xf16>
        %301 = math.ipowi %18, %18 : tensor<16x5xi1>
        affine.yield %c1114120595_i64 : i64
      } else {
        %295 = memref.realloc %alloc_18 : memref<6xi64> to memref<16xi64>
        %296 = math.tanh %17 : tensor<6xf32>
        %297 = vector.broadcast %c1736010049_i32 : i32 to vector<5xi32>
        %298 = vector.transfer_write %297, %4[%275, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi32>, tensor<5x16xi32>
        %299 = math.rsqrt %11 : tensor<5x16xf16>
        %300 = arith.floordivsi %c730999098_i64, %c730999098_i64 : i64
        %301 = memref.realloc %alloc_18 : memref<6xi64> to memref<16xi64>
        %302 = math.sqrt %cst_53 : f16
        %303 = vector.extract %65[3] : vector<6xi1>
        affine.yield %c1_i64 : i64
      }
      %291 = bufferization.clone %alloc_19 : memref<5x5x3xf16> to memref<5x5x3xf16>
      %292 = scf.execute_region -> memref<6xi64> {
        %295 = arith.shrsi %c730999098_i64, %c1677136924_i64 : i64
        %296 = affine.apply affine_map<(d0, d1) -> (-((d0 ceildiv 2) mod 16))>(%275, %c3)
        %297 = bufferization.clone %alloc_10 : memref<5x16xi64> to memref<5x16xi64>
        %298 = math.ceil %cst_53 : f16
        %299 = math.cttz %0 : tensor<5x16xi64>
        %300 = math.ctlz %true_21 : i1
        %301 = affine.min affine_map<(d0, d1, d2) -> (d1 - d2, d1 - d2, d1 + d1 - d2)>(%c8, %c9, %62)
        %302 = arith.cmpi ule, %c730999098_i64, %c2080235350_i64 : i64
        %303 = arith.cmpi ule, %c1_i64, %in : i64
        %true_57 = index.bool.constant true
        %304 = index.ceildivs %c14, %c5
        %cast_58 = tensor.cast %4 : tensor<5x16xi32> to tensor<?x?xi32>
        %305 = memref.atomic_rmw mins %29, %alloc_6[%c5, %c4] : (i32, memref<16x5xi32>) -> i32
        %rank_59 = tensor.rank %7 : tensor<6xf32>
        bufferization.dealloc_tensor %17 : tensor<6xf32>
        %306 = tensor.empty() : tensor<16x16xi64>
        %307 = tensor.empty() : tensor<5x16xi64>
        %308 = linalg.matmul ins(%5, %306 : tensor<5x16xi64>, tensor<16x16xi64>) outs(%307 : tensor<5x16xi64>) -> tensor<5x16xi64>
        scf.yield %alloc_18 : memref<6xi64>
      }
      %293 = vector.broadcast %true_21 : i1 to vector<6x6xi1>
      %294 = vector.outerproduct %65, %65, %293 {kind = #vector.kind<add>} : vector<6xi1>, vector<6xi1>
      linalg.yield %c2080235350_i64 : i64
    } -> tensor<5x5x3xi64>
    %68 = arith.minsi %false_2, %true_21 : i1
    %69 = index.sub %c10, %c7
    %collapsed_23 = tensor.collapse_shape %0 [[0, 1]] : tensor<5x16xi64> into tensor<80xi64>
    %70 = math.log %16 : tensor<6xf32>
    %71 = vector.create_mask %52, %c3 : vector<16x5xi1>
    %72 = arith.divf %cst, %cst : f32
    %73 = memref.alloca_scope  -> (i16) {
      %264 = arith.remf %cst, %cst_1 : f32
      %265 = arith.maxui %29, %29 : i32
      %266 = math.cos %cst : f32
      %267 = arith.shrui %27, %c-14964_i16 : i16
      %268 = memref.realloc %alloc_18 : memref<6xi64> to memref<3xi64>
      %collapsed_53 = tensor.collapse_shape %0 [[0, 1]] : tensor<5x16xi64> into tensor<80xi64>
      %269 = bufferization.clone %alloc_13 : memref<5x16xi16> to memref<5x16xi16>
      %270 = index.casts %c0 : index to i32
      %271 = math.tan %9 : tensor<5x16xf16>
      %272 = math.log10 %collapsed : tensor<80xf16>
      %273 = math.ipowi %true, %false_4 : i1
      %274 = arith.andi %c1677136924_i64, %c730999098_i64 : i64
      %275 = tensor.empty() : tensor<5x3xi1>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275 : tensor<5x3xi1>) outs(%6 : tensor<5x5x3xi1>) {
      ^bb0(%in: i1, %out: i1):
        %298 = tensor.empty() : tensor<1x16xi32>
        %299 = tensor.empty() : tensor<6x16xi32>
        %300 = linalg.matmul ins(%expanded, %298 : tensor<6x1xi32>, tensor<1x16xi32>) outs(%299 : tensor<6x16xi32>) -> tensor<6x16xi32>
        %301 = math.ceil %9 : tensor<5x16xf16>
        %302 = arith.subi %false, %false_3 : i1
        %303 = index.ceildivu %c3, %c3
        %304 = arith.shli %c1736010049_i32, %c1052418246_i32 : i32
        %305 = arith.ceildivsi %c1677136924_i64, %c2080235350_i64 : i64
        %306 = bufferization.clone %alloc_14 : memref<5x5x3xf32> to memref<5x5x3xf32>
        %307 = math.ipowi %c730999098_i64, %c730999098_i64 : i64
        %308 = index.casts %true : i1 to index
        %309 = vector.matrix_multiply %64, %24 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<1xi32>) -> vector<6xi32>
        %310 = arith.remsi %c1052418246_i32, %c1052418246_i32 : i32
        %311 = arith.ceildivsi %c1736010049_i32, %c1052418246_i32 : i32
        %from_elements_56 = tensor.from_elements %c-14964_i16, %27, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %27, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %27, %27, %27, %27, %27, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %27, %27, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %27, %27, %27, %c-14964_i16, %27, %c-14964_i16, %27, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %27, %27, %c-14964_i16, %27, %27, %c-14964_i16, %27, %c-14964_i16 : tensor<16x5xi16>
        %expanded_57 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<5x16xi64> into tensor<5x16x1xi64>
        %312 = index.floordivs %c12, %52
        %313 = math.tan %9 : tensor<5x16xf16>
        %314 = vector.transpose %309, [0] : vector<6xi32> to vector<6xi32>
        memref.assume_alignment %alloc_12, 1 : memref<5x16xi1>
        %315 = arith.minsi %c1319773611_i32, %c1319773611_i32 : i32
        %316 = math.round %9 : tensor<5x16xf16>
        %317 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 4)>(%c12, %c11, %c4, %35)
        %318 = arith.maxui %27, %c-14964_i16 : i16
        %319 = arith.remui %false, %false_4 : i1
        %320 = vector.transpose %24, [0] : vector<1xi32> to vector<1xi32>
        %321 = arith.cmpi sle, %27, %27 : i16
        %cst_58 = arith.constant 1.000000e+00 : f32
        %322 = vector.transfer_read %7[%c3], %cst_58 : tensor<6xf32>, vector<f32>
        %323 = index.divu %c6, %c0
        %324 = math.absi %6 : tensor<5x5x3xi1>
        %325 = arith.muli %false, %false_2 : i1
        %326 = arith.maxui %c1052418246_i32, %29 : i32
        %327 = math.roundeven %cst_1 : f32
        %328 = affine.load %alloc_17[%c15, %c10] : memref<16x5xi64>
        linalg.yield %false : i1
      } -> tensor<5x5x3xi1>
      %277 = vector.broadcast %c1114120595_i64 : i64 to vector<5x16xi64>
      %278 = index.casts %c0 : index to i32
      %279 = vector.broadcast %c2080235350_i64 : i64 to vector<6xi64>
      %280 = vector.maskedload %alloc_10[%c2, %c13], %65, %279 : memref<5x16xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %281 = arith.divf %cst, %cst : f32
      %282 = math.ctpop %8 : tensor<5x16xi1>
      %283 = arith.negf %extracted : f32
      %284 = vector.broadcast %c2080235350_i64 : i64 to vector<5xi64>
      %285 = vector.broadcast %false_2 : i1 to vector<5xi1>
      %286 = vector.maskedload %alloc_20[], %285, %284 : memref<i64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %287 = affine.min affine_map<(d0, d1) -> ((d0 mod 4) * 128 - 8, d1, (d0 mod 4) * 128 - 8)>(%62, %c2)
      %288 = affine.min affine_map<(d0, d1) -> (d0 * 16 + 128, d0 * 16)>(%c6, %c6)
      %289 = math.floor %extracted : f32
      %290 = index.castu %false_0 : i1 to index
      %cst_54 = arith.constant 1.000000e+00 : f16
      %291 = vector.transfer_read %alloc_19[%c12, %c6, %c15], %cst_54 : memref<5x5x3xf16>, vector<6x5xf16>
      %292 = math.log2 %cst : f32
      %293 = memref.atomic_rmw mulf %cst_54, %alloc_7[%c12, %c2] : (f16, memref<16x5xf16>) -> f16
      %294 = vector.bitcast %33 : vector<5x5x3xi64> to vector<5x5x3xi64>
      %false_55 = index.bool.constant false
      %295 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 32)>(%c4, %c6, %c4, %c14)
      %296 = vector.extract %280[1] : vector<6xi64>
      %297 = index.ceildivs %c6, %287
      memref.alloca_scope.return %c-14964_i16 : i16
    }
    memref.tensor_store %5, %alloc_10 : memref<5x16xi64>
    %74 = vector.broadcast %false_0 : i1 to vector<5x5x3xi1>
    %75 = vector.broadcast %c1319773611_i32 : i32 to vector<5x5x3xi32>
    %76 = vector.gather %alloc_12[%c3, %c9] [%75], %74, %74 : memref<5x16xi1>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi1> into vector<5x5x3xi1>
    %cst_24 = arith.constant 1.000000e+00 : f16
    %77 = vector.broadcast %cst_24 : f16 to vector<f16>
    vector.transfer_write %77, %alloc_19[%47, %c15, %c12] : vector<f16>, memref<5x5x3xf16>
    %78 = arith.cmpf ult, %extracted, %cst_1 : f32
    %79 = math.exp %7 : tensor<6xf32>
    vector.print %75 : vector<5x5x3xi32>
    %80 = math.absf %7 : tensor<6xf32>
    %81 = math.atan2 %cst_24, %cst_24 : f16
    %82 = arith.divf %cst_24, %cst_24 : f16
    %splat = tensor.splat %c1_i64 : tensor<5x16xi64>
    memref.assume_alignment %alloc_19, 8 : memref<5x5x3xf16>
    vector.print %66 : vector<6xi32>
    %83 = math.round %9 : tensor<5x16xf16>
    %cast_25 = tensor.cast %14 : tensor<5x16xi1> to tensor<?x?xi1>
    %84 = vector.insertelement %c1052418246_i32, %24[%c9 : index] : vector<1xi32>
    %85 = arith.divui %c1114120595_i64, %c2080235350_i64 : i64
    %86 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 8)>(%c14, %c14, %c6, %c14)
    %87 = math.ctlz %8 : tensor<5x16xi1>
    %88 = vector.broadcast %true : i1 to vector<16xi1>
    %89 = vector.transfer_write %88, %6[%86, %c7, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<16xi1>, tensor<5x5x3xi1>
    %90 = vector.broadcast %cst_1 : f32 to vector<5x5x3xf32>
    %91 = vector.fma %90, %90, %90 : vector<5x5x3xf32>
    %92 = vector.broadcast %extracted : f32 to vector<16x5xf32>
    %93 = vector.fma %92, %92, %92 : vector<16x5xf32>
    %94 = math.absi %29 : i32
    %95 = arith.xori %false_4, %false_0 : i1
    %96 = math.fpowi %7, %1 : tensor<6xf32>, tensor<6xi32>
    %97 = arith.shrsi %73, %73 : i16
    %98 = index.casts %c7 : index to i32
    %99 = math.roundeven %16 : tensor<6xf32>
    %100 = math.exp2 %cst : f32
    %101 = math.tan %11 : tensor<5x16xf16>
    %102 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2 + 64, d3 - d0, d3)>(%c3, %86, %c0, %47)
    %103 = math.round %9 : tensor<5x16xf16>
    %104 = memref.realloc %alloc_18 : memref<6xi64> to memref<16xi64>
    %105 = index.ceildivu %c0, %c1
    %106 = math.ceil %16 : tensor<6xf32>
    %107 = arith.divui %c1319773611_i32, %c1736010049_i32 : i32
    %108 = arith.remf %cst, %cst_1 : f32
    %false_26 = index.bool.constant false
    %109 = arith.remsi %false, %false_4 : i1
    %true_27 = index.bool.constant true
    %110 = math.ceil %7 : tensor<6xf32>
    %111 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %alloc_28 = memref.alloc() : memref<5xi64>
    %112 = tensor.empty() : tensor<3x5x5xi64>
    %alloc_29 = memref.alloc() : memref<5x3xi64>
    %113 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_28, %112, %alloc_29 : memref<5xi64>, tensor<3x5x5xi64>, memref<5x3xi64>) outs(%2 : tensor<5x5x3xi64>) {
    ^bb0(%in: i64, %in_53: i64, %in_54: i64, %out: i64):
      %264 = math.ipowi %4, %4 : tensor<5x16xi32>
      %265 = arith.maxui %false_26, %false_3 : i1
      %266 = vector.broadcast %cst_1 : f32 to vector<5xf32>
      %267 = vector.insert %266, %92 [1] : vector<5xf32> into vector<16x5xf32>
      %268 = math.fma %11, %11, %11 : tensor<5x16xf16>
      %alloc_55 = memref.alloc() : memref<3x5xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_55 : memref<3x5xi1>) outs(%6 : tensor<5x5x3xi1>) {
      ^bb0(%in_59: i1, %out_60: i1):
        %294 = vector.broadcast %extracted : f32 to vector<5x16xf32>
        %295 = math.rsqrt %cst : f32
        %296 = math.atan2 %11, %11 : tensor<5x16xf16>
        %297 = index.castu %c8 : index to i32
        %298 = bufferization.clone %alloc_17 : memref<16x5xi64> to memref<16x5xi64>
        %299 = index.maxs %c10, %c12
        %300 = math.atan %17 : tensor<6xf32>
        %301 = arith.remf %extracted, %cst : f32
        %302 = arith.negf %extracted : f32
        %303 = math.fma %cst, %extracted, %cst : f32
        %304 = index.divu %c12, %35
        %305 = bufferization.to_memref %cast_25 : memref<?x?xi1>
        %306 = math.atan2 %16, %16 : tensor<6xf32>
        %307 = vector.reduction <maxui>, %88 : vector<16xi1> into i1
        %308 = bufferization.clone %alloc_6 : memref<16x5xi32> to memref<16x5xi32>
        %309 = math.log2 %extracted : f32
        %from_elements_61 = tensor.from_elements %false, %true_27, %true_27, %false_2, %false_4, %true, %false_26, %false_4, %false, %true, %false_26, %in_59, %false, %true_27, %out_60, %out_60, %true_27, %false_3, %false_4, %in_59, %true_27, %false_26, %false_3, %false_26, %true_21, %true, %out_60, %true_27, %false_4, %false_2, %false_26, %false_4, %true, %true, %false_4, %true_27, %false_2, %true, %false_4, %false_26, %false_4, %false_2, %false_0, %false, %false_2, %true_27, %false_4, %out_60, %false_26, %false, %false_3, %true_27, %out_60, %false_3, %true_27, %false_26, %false_3, %true, %false_2, %false, %false_26, %false_3, %true_21, %false_3, %false_4, %false_2, %out_60, %true, %true_21, %false_26, %true_27, %false_0, %false_0, %false_0, %false_26, %false_3, %in_59, %true, %false_0, %out_60 : tensor<16x5xi1>
        %310 = math.ctpop %c2080235350_i64 : i64
        %311 = vector.reduction <xor>, %65 : vector<6xi1> into i1
        %312 = math.absf %9 : tensor<5x16xf16>
        %313 = index.ceildivu %47, %47
        %314 = vector.broadcast %false_2 : i1 to vector<5x5x3xi1>
        %315 = arith.muli %true, %false_0 : i1
        %316 = math.atan2 %7, %7 : tensor<6xf32>
        %317 = math.log %16 : tensor<6xf32>
        %318 = bufferization.clone %alloc_9 : memref<5x5x3xi64> to memref<5x5x3xi64>
        %319 = arith.negf %extracted : f32
        %320 = arith.maxsi %c1677136924_i64, %in_53 : i64
        %321 = math.log2 %11 : tensor<5x16xf16>
        %322 = arith.subi %true_27, %in_59 : i1
        %323 = vector.insert %266, %92 [11] : vector<5xf32> into vector<16x5xf32>
        %324 = arith.maxsi %false_0, %false_3 : i1
        linalg.yield %false_2 : i1
      } -> tensor<5x5x3xi1>
      %270 = math.absf %cst : f32
      %271 = math.ctpop %c1052418246_i32 : i32
      %272 = vector.shuffle %77, %77 [0, 1] : vector<f16>, vector<f16>
      %273 = arith.remui %false_2, %true_21 : i1
      %alloc_56 = memref.alloc() : memref<5x5x3xi32>
      %274 = vector.broadcast %c1319773611_i32 : i32 to vector<5x16xi32>
      %275 = vector.broadcast %false_0 : i1 to vector<5x16xi1>
      %276 = vector.gather %alloc_56[%c13, %c9, %c5] [%274], %275, %274 : memref<5x5x3xi32>, vector<5x16xi32>, vector<5x16xi1>, vector<5x16xi32> into vector<5x16xi32>
      %c3469_i16 = arith.constant 3469 : i16
      %277 = arith.negf %cst : f32
      %278 = memref.load %alloc_17[%c3, %c1] : memref<16x5xi64>
      %279 = math.round %17 : tensor<6xf32>
      scf.index_switch %102 
      case 1 {
        bufferization.dealloc_tensor %cast : tensor<?x?xf16>
        %294 = arith.maxui %false_0, %true_27 : i1
        %295 = vector.broadcast %c2080235350_i64 : i64 to vector<16x5xi64>
        %296 = bufferization.clone %alloc_5 : memref<5x16xi1> to memref<5x16xi1>
        %297 = math.cttz %13 : tensor<16x5xi16>
        %expanded_59 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<5x16xf16> into tensor<5x16x1xf16>
        %298 = index.sub %c1, %c3
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_60 = arith.constant 0 : i32
        %299 = vector.transfer_read %alloc_6[%c2, %62], %c0_i32_60 : memref<16x5xi32>, vector<i32>
        %300 = vector.broadcast %true : i1 to vector<16xi1>
        vector.transfer_write %300, %296[%c13, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi1>, memref<5x16xi1>
        %301 = affine.min affine_map<(d0, d1) -> (-d0 - 4)>(%62, %c7)
        %302 = arith.remf %cst, %cst_1 : f32
        %303 = math.sqrt %9 : tensor<5x16xf16>
        %304 = index.ceildivu %c7, %62
        %305 = arith.shli %false_0, %false_0 : i1
        %306 = vector.extract_strided_slice %74 {offsets = [1], sizes = [3], strides = [1]} : vector<5x5x3xi1> to vector<3x5x3xi1>
        %307 = vector.shuffle %93, %93 [0, 1, 2, 5, 6, 7, 8, 9, 11, 14, 15, 16, 19, 22, 24, 26, 27, 28, 31] : vector<16x5xf32>, vector<16x5xf32>
        scf.yield
      }
      case 2 {
        %294 = math.atan2 %7, %16 : tensor<6xf32>
        %295 = math.log10 %7 : tensor<6xf32>
        %296 = math.tan %9 : tensor<5x16xf16>
        %297 = math.ipowi %c1_i64, %c1_i64 : i64
        %298 = math.log2 %9 : tensor<5x16xf16>
        %299 = arith.divui %c1319773611_i32, %c1319773611_i32 : i32
        %300 = math.absi %1 : tensor<6xi32>
        %expanded_59 = tensor.expand_shape %7 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %301 = arith.maxui %c2080235350_i64, %c2080235350_i64 : i64
        %302 = arith.ori %c1677136924_i64, %out : i64
        %303 = math.roundeven %cst_1 : f32
        %304 = vector.shuffle %91, %91 [1, 3, 5, 6, 8, 9] : vector<5x5x3xf32>, vector<5x5x3xf32>
        %305 = arith.cmpi eq, %in_54, %in_54 : i64
        %306 = math.absf %9 : tensor<5x16xf16>
        %307 = memref.realloc %alloc_18 : memref<6xi64> to memref<5xi64>
        %308 = math.absf %7 : tensor<6xf32>
        scf.yield
      }
      case 3 {
        %from_elements_59 = tensor.from_elements %73, %c-14964_i16, %27, %73, %27, %27, %c-14964_i16, %73, %73, %73, %27, %73, %c-14964_i16, %27, %27, %27, %c-14964_i16, %c-14964_i16, %27, %27, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %73, %73, %27, %c-14964_i16, %c-14964_i16, %27, %73, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %73, %73, %27, %73, %c-14964_i16, %27, %27, %c-14964_i16, %c-14964_i16, %73, %c-14964_i16, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %73, %73, %73, %27, %27, %73, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %73, %c-14964_i16, %c-14964_i16, %c-14964_i16, %73, %c-14964_i16, %27, %27, %27, %73, %27, %27, %c-14964_i16 : tensor<5x5x3xi16>
        %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 + d3 floordiv 32 - 4)>(%86, %c3, %c5, %52)
        %295 = math.exp %cst : f32
        %296 = vector.shuffle %275, %275 [1, 3, 5, 7, 8, 9] : vector<5x16xi1>, vector<5x16xi1>
        %297 = vector.broadcast %c1319773611_i32 : i32 to vector<16xi32>
        %298 = vector.insert %297, %274 [2] : vector<16xi32> into vector<5x16xi32>
        %299 = math.fpowi %cst_24, %c1736010049_i32 : f16, i32
        %300 = math.ctlz %29 : i32
        %301 = math.log10 %cst_1 : f32
        %302 = math.atan2 %17, %17 : tensor<6xf32>
        %303 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %303, %alloc_14[%69, %c9, %52] : vector<f32>, memref<5x5x3xf32>
        %304 = arith.divf %cst_24, %cst_24 : f16
        %305 = arith.shli %false_0, %true_27 : i1
        %306 = affine.apply affine_map<(d0, d1) -> ((d0 + 32) * 16)>(%c4, %c10)
        %307 = index.ceildivs %86, %c7
        %alloc_60 = memref.alloc() : memref<16x5xi64>
        memref.copy %alloc_17, %alloc_60 : memref<16x5xi64> to memref<16x5xi64>
        %308 = affine.min affine_map<(d0) -> (d0 * 2 - 1, d0 floordiv 8, ((d0 * 2) mod 8) * 16)>(%c12)
        scf.yield
      }
      default {
        %294 = index.divu %c1, %c13
        %295 = memref.load %alloc_16[%c0, %c10] : memref<5x16xi32>
        %296 = arith.cmpf ult, %cst_24, %cst_24 : f16
        %297 = math.absi %10 : tensor<6xi64>
        %298 = index.sub %c13, %c1
        %299 = arith.maxui %false_4, %false : i1
        %300 = math.absf %9 : tensor<5x16xf16>
        %301 = index.divu %86, %298
        %302 = vector.reduction <minsi>, %111 : vector<1xi32> into i32
        %303 = math.roundeven %17 : tensor<6xf32>
        %304 = index.ceildivu %294, %301
        %305 = index.add %294, %c7
        %306 = math.exp %11 : tensor<5x16xf16>
        %307 = arith.ceildivsi %c1_i64, %in : i64
        %308 = math.roundeven %17 : tensor<6xf32>
        %309 = arith.xori %c1319773611_i32, %c1052418246_i32 : i32
      }
      %false_57 = index.bool.constant false
      %from_elements_58 = tensor.from_elements %extracted, %extracted, %extracted, %cst, %extracted, %cst, %cst_1, %cst, %extracted, %extracted, %cst_1, %cst, %extracted, %extracted, %cst, %extracted, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst_1, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst, %extracted, %cst_1, %cst, %extracted, %cst, %extracted, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %extracted, %extracted, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %extracted, %cst_1, %extracted, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %extracted, %extracted, %extracted, %cst, %cst_1, %cst_1, %extracted, %cst_1, %extracted, %cst_1 : tensor<5x16xf32>
      %280 = index.sub %c4, %c9
      %281 = arith.maxsi %in_54, %c2080235350_i64 : i64
      %282 = affine.min affine_map<(d0, d1, d2) -> (0, d1)>(%c12, %280, %62)
      %283 = affine.min affine_map<(d0, d1) -> (0, 0, d1 * 32 - 64)>(%c5, %c12)
      %284 = math.ceil %from_elements_58 : tensor<5x16xf32>
      %285 = math.rsqrt %cst : f32
      %286 = scf.while (%arg2 = %90) : (vector<5x5x3xf32>) -> vector<5x5x3xf32> {
        %294 = vector.load %alloc_13[%c4, %c7] : memref<5x16xi16>, vector<6xi16>
        %295 = math.ceil %extracted : f32
        %296 = arith.remf %cst_1, %extracted : f32
        %297 = math.log2 %11 : tensor<5x16xf16>
        %298 = vector.broadcast %c-14964_i16 : i16 to vector<16xi16>
        %299 = vector.maskedload %alloc[%c6, %c4], %88, %298 : memref<16x5xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %300 = vector.broadcast %c1319773611_i32 : i32 to vector<6x6xi32>
        %301 = vector.outerproduct %66, %64, %300 {kind = #vector.kind<mul>} : vector<6xi32>, vector<6xi32>
        %302 = math.cttz %0 : tensor<5x16xi64>
        %303 = arith.ori %73, %c-14964_i16 : i16
        scf.condition(%false) %91 : vector<5x5x3xf32>
      } do {
      ^bb0(%arg2: vector<5x5x3xf32>):
        %294 = math.floor %11 : tensor<5x16xf16>
        %295 = index.add %c14, %c11
        %296 = math.absf %11 : tensor<5x16xf16>
        %297 = arith.minsi %in_53, %out : i64
        %298 = tensor.empty() : tensor<5x5xi1>
        %299 = linalg.matmul ins(%8, %18 : tensor<5x16xi1>, tensor<16x5xi1>) outs(%298 : tensor<5x5xi1>) -> tensor<5x5xi1>
        %300 = math.round %9 : tensor<5x16xf16>
        %301 = math.rsqrt %9 : tensor<5x16xf16>
        %302 = math.atan2 %16, %17 : tensor<6xf32>
        %303 = index.maxu %c0, %283
        %304 = memref.atomic_rmw minf %cst, %alloc_15[%c3, %c2, %c0] : (f32, memref<5x5x3xf32>) -> f32
        %305 = vector.broadcast %false_3 : i1 to vector<5x5xi1>
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %74, %305 {inclusive = true, reduction_dim = 2 : i64} : vector<5x5x3xi1>, vector<5x5xi1>
        %306 = math.ctlz %collapsed_23 : tensor<80xi64>
        %307 = index.divu %c4, %303
        %rank_61 = tensor.rank %2 : tensor<5x5x3xi64>
        %308 = arith.subi %true_27, %true : i1
        %309 = math.log %16 : tensor<6xf32>
        scf.yield %90 : vector<5x5x3xf32>
      }
      %287 = arith.xori %true_21, %true : i1
      %288 = arith.xori %false_2, %true_21 : i1
      vector.print %111 : vector<1xi32>
      %289 = vector.shuffle %74, %76 [0, 4, 5, 6, 7, 9] : vector<5x5x3xi1>, vector<5x5x3xi1>
      %290 = arith.minsi %false_26, %false_0 : i1
      %291 = index.ceildivs %c14, %c2
      %292 = math.ctlz %6 : tensor<5x5x3xi1>
      %293 = math.fma %extracted, %cst_1, %extracted : f32
      linalg.yield %c730999098_i64 : i64
    } -> tensor<5x5x3xi64>
    %114 = vector.insertelement %29, %19[%c13 : index] : vector<3xi32>
    %115 = scf.while (%arg2 = %alloc_19) : (memref<5x5x3xf16>) -> memref<5x5x3xf16> {
      %264 = math.log10 %9 : tensor<5x16xf16>
      %265 = bufferization.to_tensor %alloc_18 : memref<6xi64>
      %266 = math.log10 %cst : f32
      %267 = math.round %9 : tensor<5x16xf16>
      %268 = math.roundeven %11 : tensor<5x16xf16>
      %rank_53 = tensor.rank %9 : tensor<5x16xf16>
      %269 = math.roundeven %collapsed : tensor<80xf16>
      %270 = index.casts %false_26 : i1 to index
      scf.condition(%false_3) %arg2 : memref<5x5x3xf16>
    } do {
    ^bb0(%arg2: memref<5x5x3xf16>):
      %264 = math.ipowi %5, %0 : tensor<5x16xi64>
      %265 = vector.create_mask %c15, %c15 : vector<5x16xi1>
      %266 = math.exp %extracted : f32
      %267 = math.atan %11 : tensor<5x16xf16>
      %268 = math.round %cst_24 : f16
      %269 = arith.shli %c1319773611_i32, %c1319773611_i32 : i32
      %270 = arith.divf %cst_24, %cst_24 : f16
      %271 = vector.broadcast %true_21 : i1 to vector<16x5xi1>
      %272 = memref.alloca_scope  -> (memref<5x5x3xi16>) {
        %279 = bufferization.to_tensor %alloc_9 : memref<5x5x3xi64>
        %280 = index.castu %false_0 : i1 to index
        %rank_55 = tensor.rank %22 : tensor<i64>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_56 = arith.constant 0 : i32
        %281 = vector.transfer_read %1[%47], %c0_i32_56 : tensor<6xi32>, vector<i32>
        %282 = vector.splat %false_26 : vector<5x5x3xi1>
        %283 = math.ceil %7 : tensor<6xf32>
        %alloc_57 = memref.alloc() : memref<5x16xf16>
        memref.tensor_store %11, %alloc_57 : memref<5x16xf16>
        %284 = arith.divf %cst_24, %cst_24 : f16
        %285 = math.rsqrt %extracted : f32
        %286 = math.fma %11, %11, %11 : tensor<5x16xf16>
        %287 = vector.shuffle %74, %74 [1, 3, 4, 6, 9] : vector<5x5x3xi1>, vector<5x5x3xi1>
        %288 = arith.cmpf true, %extracted, %extracted : f32
        %from_elements_58 = tensor.from_elements %c1_i64, %c1_i64, %c730999098_i64, %c2080235350_i64, %c1114120595_i64, %c1114120595_i64, %c2080235350_i64, %c1_i64, %c730999098_i64, %c1_i64, %c730999098_i64, %c2080235350_i64, %c730999098_i64, %c1114120595_i64, %c2080235350_i64, %c1677136924_i64, %c730999098_i64, %c1_i64, %c730999098_i64, %c1_i64, %c1114120595_i64, %c730999098_i64, %c1_i64, %c1114120595_i64, %c2080235350_i64, %c2080235350_i64, %c1114120595_i64, %c1_i64, %c1114120595_i64, %c1114120595_i64, %c2080235350_i64, %c2080235350_i64, %c1114120595_i64, %c1677136924_i64, %c2080235350_i64, %c2080235350_i64, %c730999098_i64, %c1677136924_i64, %c1_i64, %c1_i64, %c2080235350_i64, %c2080235350_i64, %c1677136924_i64, %c1_i64, %c1114120595_i64, %c1114120595_i64, %c1114120595_i64, %c1677136924_i64, %c1677136924_i64, %c1114120595_i64, %c1114120595_i64, %c1677136924_i64, %c2080235350_i64, %c730999098_i64, %c2080235350_i64, %c2080235350_i64, %c2080235350_i64, %c1_i64, %c1677136924_i64, %c1677136924_i64, %c1677136924_i64, %c730999098_i64, %c2080235350_i64, %c1677136924_i64, %c1_i64, %c1677136924_i64, %c1677136924_i64, %c1_i64, %c1677136924_i64, %c1_i64, %c2080235350_i64, %c1114120595_i64, %c730999098_i64, %c1_i64, %c1_i64, %c2080235350_i64, %c730999098_i64, %c2080235350_i64, %c1677136924_i64, %c730999098_i64 : tensor<5x16xi64>
        %289 = vector.broadcast %extracted : f32 to vector<3xf32>
        %290 = vector.broadcast %false : i1 to vector<3xi1>
        %291 = vector.maskedload %alloc_15[%c2, %c4, %c2], %290, %289 : memref<5x5x3xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %292 = vector.broadcast %cst_1 : f32 to vector<16x5xf32>
        %293 = vector.fma %292, %292, %92 : vector<16x5xf32>
        %294 = vector.insertelement %29, %19[%c7 : index] : vector<3xi32>
        %295 = index.castu %true : i1 to index
        %296 = index.ceildivu %52, %52
        %extracted_59 = tensor.extract %9[%c2, %c9] : tensor<5x16xf16>
        memref.assume_alignment %alloc_19, 8 : memref<5x5x3xf16>
        %297 = math.fma %11, %11, %9 : tensor<5x16xf16>
        %298 = math.fma %11, %9, %9 : tensor<5x16xf16>
        %299 = index.castu %false_26 : i1 to index
        %300 = math.floor %cst_24 : f16
        %301 = arith.remsi %73, %27 : i16
        %302 = arith.xori %c-14964_i16, %73 : i16
        %303 = arith.divf %extracted, %extracted : f32
        vector.print %111 : vector<1xi32>
        %304 = index.divu %47, %c7
        %305 = math.exp %cst : f32
        %306 = math.atan %extracted_59 : f16
        %307 = math.log10 %9 : tensor<5x16xf16>
        memref.alloca_scope.return %alloc_11 : memref<5x5x3xi16>
      }
      %273 = arith.divf %cst_1, %cst_1 : f32
      %274 = vector.broadcast %29 : i32 to vector<5x16xi32>
      %275 = vector.gather %4[%c12, %102] [%274], %265, %274 : tensor<5x16xi32>, vector<5x16xi32>, vector<5x16xi1>, vector<5x16xi32> into vector<5x16xi32>
      %276 = arith.cmpf une, %cst_1, %extracted : f32
      %277 = math.fma %17, %7, %7 : tensor<6xf32>
      %278 = math.ctpop %14 : tensor<5x16xi1>
      %true_53 = index.bool.constant true
      %true_54 = index.bool.constant true
      scf.yield %alloc_19 : memref<5x5x3xf16>
    }
    %116 = math.sqrt %16 : tensor<6xf32>
    %117 = arith.shli %false_0, %false_0 : i1
    %118 = math.atan2 %7, %7 : tensor<6xf32>
    %expanded_30 = tensor.expand_shape %17 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
    %119 = math.round %9 : tensor<5x16xf16>
    %120 = arith.cmpi sgt, %false_0, %false_2 : i1
    %121 = math.ctpop %8 : tensor<5x16xi1>
    %122 = affine.if affine_set<(d0, d1, d2) : ((d0 mod 8) floordiv 4 >= 0, d0 == 0, d0 mod 8 + 16 >= 0)>(%c9, %c11, %c1) -> f32 {
      %264 = math.floor %9 : tensor<5x16xf16>
      %265 = math.absf %17 : tensor<6xf32>
      %266 = math.exp2 %7 : tensor<6xf32>
      %cast_53 = tensor.cast %3 : tensor<16x5xi32> to tensor<?x?xi32>
      %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2, d0)>(%52, %c4, %c0, %c13)
      %268 = arith.divf %cst, %cst : f32
      %269 = arith.remf %cst, %cst : f32
      memref.tensor_store %14, %alloc_12 : memref<5x16xi1>
      affine.yield %cst : f32
    } else {
      %264 = arith.remsi %false_4, %true_27 : i1
      %265 = bufferization.to_memref %50 : memref<5x5xi1>
      %266 = arith.maxui %c1114120595_i64, %c1114120595_i64 : i64
      %267 = math.absf %16 : tensor<6xf32>
      %268 = math.exp2 %cst_24 : f16
      %269 = arith.shrui %c730999098_i64, %c1114120595_i64 : i64
      %270 = bufferization.to_memref %1 : memref<6xi32>
      %271 = vector.gather %18[%c9, %c14] [%75], %74, %76 : tensor<16x5xi1>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi1> into vector<5x5x3xi1>
      affine.yield %cst : f32
    }
    memref.assume_alignment %alloc_5, 2 : memref<5x16xi1>
    %alloc_31 = memref.alloc() : memref<16x16xf16>
    %123 = tensor.empty() : tensor<5x16xf16>
    %124 = linalg.matmul ins(%9, %alloc_31 : tensor<5x16xf16>, memref<16x16xf16>) outs(%123 : tensor<5x16xf16>) -> tensor<5x16xf16>
    %125 = math.tan %collapsed : tensor<80xf16>
    %126 = arith.cmpi slt, %false_26, %false : i1
    %127 = math.absi %splat : tensor<5x16xi64>
    %128 = math.absf %17 : tensor<6xf32>
    %129 = arith.remsi %c1736010049_i32, %c1319773611_i32 : i32
    %130 = arith.maxui %false_3, %true : i1
    %131 = index.ceildivu %86, %c2
    vector.print %65 : vector<6xi1>
    vector.print %93 : vector<16x5xf32>
    %132 = math.tanh %expanded_30 : tensor<6x1xf32>
    %133 = math.absf %11 : tensor<5x16xf16>
    %134 = index.ceildivu %62, %131
    %135 = bufferization.to_tensor %alloc_7 : memref<16x5xf16>
    %collapsed_32 = tensor.collapse_shape %3 [[0, 1]] : tensor<16x5xi32> into tensor<80xi32>
    %136 = arith.minsi %73, %73 : i16
    bufferization.dealloc_tensor %cast : tensor<?x?xf16>
    %alloc_33 = memref.alloc() : memref<3x5xi64>
    %alloc_34 = memref.alloc() : memref<3xi64>
    %137 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_33, %alloc_34 : memref<3x5xi64>, memref<3xi64>) outs(%2 : tensor<5x5x3xi64>) {
    ^bb0(%in: i64, %in_53: i64, %out: i64):
      %264 = math.ceil %7 : tensor<6xf32>
      %265 = arith.ceildivsi %c2080235350_i64, %c1_i64 : i64
      scf.execute_region {
        %298 = index.ceildivs %c0, %c1
        %299 = index.add %c3, %c8
        %300 = math.cttz %1 : tensor<6xi32>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %301 = vector.transfer_read %7[%c7], %cst_59 : tensor<6xf32>, vector<f32>
        %alloca = memref.alloca() : memref<5x16xi64>
        %rank_60 = tensor.rank %11 : tensor<5x16xf16>
        %302 = math.fma %cst_1, %extracted, %extracted : f32
        %303 = math.atan2 %17, %17 : tensor<6xf32>
        %alloca_61 = memref.alloca() : memref<6xf16>
        %304 = math.round %17 : tensor<6xf32>
        %305 = index.ceildivs %c2, %52
        %306 = math.ctlz %5 : tensor<5x16xi64>
        %307 = arith.cmpf ole, %cst, %cst_58 : f32
        affine.store %27, %alloc_13[%c9, %c2] : memref<5x16xi16>
        %308 = math.log10 %collapsed : tensor<80xf16>
        memref.assume_alignment %alloc_15, 2 : memref<5x5x3xf32>
        scf.yield
      }
      %266 = vector.shuffle %75, %75 [0, 2, 3, 4, 5, 7, 8, 9] : vector<5x5x3xi32>, vector<5x5x3xi32>
      %267 = vector.broadcast %cst_1 : f32 to vector<5x3xf32>
      %dest_54, %accumulated_value_55 = vector.scan <mul>, %91, %267 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5x3xf32>, vector<5x3xf32>
      %268 = arith.muli %c1_i64, %in_53 : i64
      %269 = arith.shli %c1319773611_i32, %29 : i32
      %270 = arith.shrui %false_2, %false : i1
      %271 = arith.shrsi %true, %false_3 : i1
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d1)>(%131, %c3, %c1, %c15)
      %273 = vector.broadcast %c1736010049_i32 : i32 to vector<5x3xi32>
      %274 = vector.multi_reduction <maxsi>, %75, %273 [1] : vector<5x5x3xi32> to vector<5x3xi32>
      %275 = arith.remf %cst_1, %cst : f32
      %276 = vector.broadcast %c1052418246_i32 : i32 to vector<5x16xi32>
      %277 = vector.broadcast %false_3 : i1 to vector<5x16xi1>
      %278 = vector.gather %15[%c4] [%276], %277, %276 : tensor<6xi32>, vector<5x16xi32>, vector<5x16xi1>, vector<5x16xi32> into vector<5x16xi32>
      %279 = affine.if affine_set<(d0, d1) : ((-(d1 + 2)) floordiv 2 - 1 == 0)>(%c0, %c2) -> i1 {
        %298 = arith.shrsi %73, %27 : i16
        %299 = bufferization.clone %alloc : memref<16x5xi16> to memref<16x5xi16>
        %300 = arith.maxsi %73, %73 : i16
        %301 = bufferization.clone %alloc_6 : memref<16x5xi32> to memref<16x5xi32>
        %302 = math.copysign %cst_1, %extracted : f32
        %303 = math.ceil %11 : tensor<5x16xf16>
        %304 = arith.cmpi ult, %c730999098_i64, %c2080235350_i64 : i64
        %305 = math.tanh %123 : tensor<5x16xf16>
        affine.yield %true_27 : i1
      } else {
        %298 = arith.divf %cst_24, %cst_24 : f16
        %collapsed_58 = tensor.collapse_shape %5 [[0, 1]] : tensor<5x16xi64> into tensor<80xi64>
        %299 = index.divu %102, %c0
        %300 = arith.remf %cst_24, %cst_24 : f16
        %301 = vector.broadcast %c2080235350_i64 : i64 to vector<i64>
        %302 = vector.transfer_write %301, %collapsed_23[%102] : vector<i64>, tensor<80xi64>
        %rank_59 = tensor.rank %11 : tensor<5x16xf16>
        %303 = arith.negf %cst : f32
        %304 = arith.subi %c1052418246_i32, %c1052418246_i32 : i32
        affine.yield %false_3 : i1
      }
      %280 = tensor.empty() : tensor<6xi16>
      %281 = vector.broadcast %c-14964_i16 : i16 to vector<5x5x3xi16>
      %282 = vector.gather %280[%c3] [%75], %74, %281 : tensor<6xi16>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi16> into vector<5x5x3xi16>
      %283 = math.exp %135 : tensor<16x5xf16>
      %284 = math.rsqrt %expanded_30 : tensor<6x1xf32>
      %285 = math.atan2 %cst_1, %cst : f32
      %from_elements_56 = tensor.from_elements %extracted, %extracted, %extracted, %cst, %cst_1, %extracted, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %extracted, %extracted, %extracted, %extracted, %extracted, %cst, %cst_1, %cst_1, %cst, %extracted, %extracted, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %extracted, %extracted, %cst, %cst_1, %cst_1, %extracted, %extracted, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %extracted, %cst, %cst, %cst, %extracted, %extracted, %extracted, %cst, %cst_1, %cst_1, %cst_1, %extracted, %cst_1, %cst_1, %extracted, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %extracted, %cst_1, %cst_1, %extracted, %cst_1 : tensor<5x5x3xf32>
      %286 = math.ctpop %false_26 : i1
      %from_elements_57 = tensor.from_elements %true_21, %false_3, %false, %false_4, %false_2, %false_26, %false, %false_2, %false_3, %true, %false_4, %false_2, %false_3, %false_2, %false_2, %false_4, %true, %false_4, %false_26, %false_0, %true_27, %true, %false_3, %false_0, %false_4, %false_3, %false_0, %false_4, %true_27, %true, %true_21, %false, %false_0, %true_21, %true_21, %false_26, %false_0, %false_26, %false_2, %true_21, %false_2, %true_21, %false_0, %false_0, %true_27, %false, %false_3, %true_27, %false_3, %false_26, %true_27, %false, %false_26, %false, %false_3, %false_3, %false_26, %true_21, %true, %false_2, %false, %true, %false_2, %true, %false_3, %false, %false_2, %false, %true_21, %true_21, %false_2, %false_2, %false, %false_2, %true_21, %false_3, %false_26, %false, %false_3, %false_2 : tensor<16x5xi1>
      %287 = arith.remsi %false_3, %true : i1
      %288 = index.divu %c11, %c2
      %289 = bufferization.to_memref %12 : memref<6xi1>
      %290 = math.log10 %cst : f32
      %291 = math.log1p %11 : tensor<5x16xf16>
      %292 = math.roundeven %9 : tensor<5x16xf16>
      %293 = math.expm1 %7 : tensor<6xf32>
      %294 = math.absf %expanded_30 : tensor<6x1xf32>
      %295 = math.fma %from_elements_56, %from_elements_56, %from_elements_56 : tensor<5x5x3xf32>
      %296 = math.exp %extracted : f32
      %297 = math.ctpop %5 : tensor<5x16xi64>
      linalg.yield %c2080235350_i64 : i64
    } -> tensor<5x5x3xi64>
    %alloc_35 = memref.alloc() : memref<5x16xf16>
    memref.tensor_store %11, %alloc_35 : memref<5x16xf16>
    %138 = arith.maxui %73, %c-14964_i16 : i16
    %139 = vector.reduction <maxui>, %64 : vector<6xi32> into i32
    %140 = math.log1p %expanded_30 : tensor<6x1xf32>
    %141 = arith.shli %c1319773611_i32, %c1052418246_i32 : i32
    %142 = math.ctpop %1 : tensor<6xi32>
    %143 = vector.splat %105 : vector<16x5xindex>
    %144 = math.fma %11, %11, %9 : tensor<5x16xf16>
    %145 = vector.broadcast %cst_24 : f16 to vector<5x5x3xf16>
    %146 = vector.gather %alloc_8[%35] [%75], %74, %145 : memref<6xf16>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xf16> into vector<5x5x3xf16>
    %147 = math.log10 %expanded_30 : tensor<6x1xf32>
    %148 = math.exp2 %cst : f32
    %149 = scf.index_switch %c4 -> tensor<5x5x3xi16> 
    case 1 {
      %264 = vector.extract %24[0] : vector<1xi32>
      %265 = arith.minsi %false_2, %true_21 : i1
      %266 = math.tan %collapsed : tensor<80xf16>
      %267 = arith.remf %cst_1, %cst : f32
      %268 = math.floor %collapsed : tensor<80xf16>
      affine.for %arg2 = 0 to 39 {
      }
      %cast_53 = tensor.cast %2 : tensor<5x5x3xi64> to tensor<?x?x?xi64>
      %269 = math.log2 %11 : tensor<5x16xf16>
      %270 = math.exp %cst : f32
      %271 = arith.shli %true_21, %false_3 : i1
      %272 = bufferization.clone %alloc_19 : memref<5x5x3xf16> to memref<5x5x3xf16>
      %273 = index.divu %47, %62
      %274 = arith.minf %extracted, %cst_1 : f32
      %275 = bufferization.clone %alloc_12 : memref<5x16xi1> to memref<5x16xi1>
      %276 = vector.broadcast %cst : f32 to vector<6xf32>
      %277 = vector.fma %276, %276, %276 : vector<6xf32>
      %278 = math.log1p %7 : tensor<6xf32>
      %279 = tensor.empty() : tensor<5x5x3xi16>
      scf.yield %279 : tensor<5x5x3xi16>
    }
    case 2 {
      %264 = arith.remf %cst, %cst : f32
      %265 = memref.alloca_scope  -> (memref<5x5x3xi64>) {
        vector.print %90 : vector<5x5x3xf32>
        %282 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %92, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<16x5xf32>, vector<16xf32>
        %true_56 = index.bool.constant true
        %283 = arith.mulf %extracted, %cst_1 : f32
        %284 = arith.minsi %true, %false_0 : i1
        %cast_57 = tensor.cast %5 : tensor<5x16xi64> to tensor<?x?xi64>
        %285 = index.casts %false_4 : i1 to index
        %286 = arith.remsi %27, %c-14964_i16 : i16
        %287 = arith.ori %false, %true_56 : i1
        %288 = math.tanh %123 : tensor<5x16xf16>
        %289 = vector.broadcast %extracted : f32 to vector<16x5xf32>
        %290 = vector.fma %289, %93, %289 : vector<16x5xf32>
        %291 = bufferization.clone %alloc_13 : memref<5x16xi16> to memref<5x16xi16>
        %c1827194490_i32 = arith.constant 1827194490 : i32
        %292 = arith.cmpf uno, %cst_24, %cst_24 : f16
        %293 = arith.shrsi %true_21, %false_4 : i1
        %294 = arith.maxui %c1114120595_i64, %c1114120595_i64 : i64
        %295 = affine.min affine_map<(d0) -> (d0, d0 + 8)>(%285)
        %296 = arith.maxsi %c1_i64, %c2080235350_i64 : i64
        %297 = index.casts %c-14964_i16 : i16 to index
        %298 = arith.remf %cst, %cst_1 : f32
        %rank_58 = tensor.rank %5 : tensor<5x16xi64>
        %299 = index.ceildivu %c15, %295
        %300 = math.log10 %11 : tensor<5x16xf16>
        %301 = vector.reduction <mul>, %64 : vector<6xi32> into i32
        %302 = arith.muli %true_21, %true_27 : i1
        %303 = vector.create_mask %35, %285 : vector<16x5xi1>
        %304 = index.castu %false_26 : i1 to index
        %305 = math.fma %123, %9, %9 : tensor<5x16xf16>
        %306 = bufferization.clone %alloc_16 : memref<5x16xi32> to memref<5x16xi32>
        %307 = math.log %extracted : f32
        memref.tensor_store %21, %alloc_20 : memref<i64>
        %308 = arith.negf %cst_24 : f16
        memref.alloca_scope.return %alloc_9 : memref<5x5x3xi64>
      }
      %266 = affine.for %arg2 = 0 to 62 iter_args(%arg3 = %3) -> (tensor<16x5xi32>) {
        affine.yield %3 : tensor<16x5xi32>
      }
      %267 = tensor.empty() : tensor<5xi64>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267 : tensor<5xi64>) outs(%2 : tensor<5x5x3xi64>) {
      ^bb0(%in: i64, %out: i64):
        %282 = math.rsqrt %cst_1 : f32
        %283 = math.log10 %cst_1 : f32
        %284 = math.log10 %135 : tensor<16x5xf16>
        %285 = math.sqrt %11 : tensor<5x16xf16>
        %286 = math.atan2 %7, %17 : tensor<6xf32>
        %287 = math.sqrt %16 : tensor<6xf32>
        %288 = index.castu %69 : index to i32
        %289 = math.log2 %cst : f32
        %from_elements_54 = tensor.from_elements %true_21, %false_4, %false, %true_27, %false_0, %true_21, %false_4, %false_2, %false_0, %true_21, %false_0, %false_2, %true_21, %true, %false_2, %false_0, %false_2, %false_26, %true_27, %false_26, %false_26, %false_3, %false, %true, %false_2, %false_0, %true_27, %true_21, %true_21, %false_3, %false, %true_21, %true, %false_0, %false_3, %false_2, %false_2, %false_26, %false, %true_27, %true_27, %false_3, %true_21, %false_4, %false_2, %true, %false_26, %false, %false_2, %true_27, %false_26, %false_0, %true_21, %false_0, %false_0, %false_2, %false, %true_27, %false_0, %true_27, %true_21, %true_27, %true_27, %true_27, %false_4, %true_27, %false_0, %false, %true, %false_0, %true_21, %true, %false_0, %true, %false, %false_4, %true_27, %false_2, %false_0, %false_3 : tensor<16x5xi1>
        %290 = bufferization.clone %alloc_5 : memref<5x16xi1> to memref<5x16xi1>
        %291 = vector.broadcast %out : i64 to vector<6xi64>
        %292 = vector.gather %alloc_18[%c13] [%64], %65, %291 : memref<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %293 = memref.realloc %alloc_18 : memref<6xi64> to memref<3xi64>
        %294 = index.castu %in : i64 to index
        %295 = index.casts %294 : index to i32
        %296 = arith.ori %c1736010049_i32, %c1736010049_i32 : i32
        %297 = vector.broadcast %73 : i16 to vector<5x5x3xi16>
        %298 = affine.min affine_map<(d0) -> (-d0, d0 - 2)>(%c14)
        %299 = index.castu %c12 : index to i32
        %300 = arith.xori %c1677136924_i64, %out : i64
        %301 = vector.broadcast %false : i1 to vector<5x16xi1>
        %302 = arith.minsi %out, %out : i64
        %303 = vector.matrix_multiply %111, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi32>, vector<6xi32>) -> vector<6xi32>
        %304 = arith.ceildivsi %c1319773611_i32, %c1736010049_i32 : i32
        %305 = index.divu %c0, %35
        %306 = arith.muli %false_2, %true : i1
        %307 = index.casts %102 : index to i32
        %308 = math.log %11 : tensor<5x16xf16>
        %309 = math.ipowi %73, %c-14964_i16 : i16
        %310 = math.tanh %cst_24 : f16
        %311 = math.log10 %135 : tensor<16x5xf16>
        %312 = index.sub %298, %52
        %313 = math.floor %expanded_30 : tensor<6x1xf32>
        linalg.yield %c1114120595_i64 : i64
      } -> tensor<5x5x3xi64>
      %269 = arith.divui %c1_i64, %c2080235350_i64 : i64
      %rank_53 = tensor.rank %3 : tensor<16x5xi32>
      %270 = arith.maxui %true, %false : i1
      %271 = math.log10 %11 : tensor<5x16xf16>
      %272 = memref.load %alloc_18[%c2] : memref<6xi64>
      %273 = vector.shuffle %88, %88 [1, 2, 6, 8, 9, 11, 12, 13, 15, 18, 19, 21, 25, 27, 30, 31] : vector<16xi1>, vector<16xi1>
      %274 = vector.broadcast %c1319773611_i32 : i32 to vector<3x3xi32>
      %275 = vector.outerproduct %19, %19, %274 {kind = #vector.kind<maxsi>} : vector<3xi32>, vector<3xi32>
      %276 = arith.minsi %29, %29 : i32
      %277 = arith.ceildivsi %27, %73 : i16
      %278 = affine.min affine_map<(d0, d1, d2) -> ((-d2) floordiv 16, ((-d2) floordiv 16) floordiv 4 - 4)>(%102, %c9, %c11)
      %279 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%69, %105)
      %280 = math.exp %11 : tensor<5x16xf16>
      %281 = tensor.empty() : tensor<5x5x3xi16>
      scf.yield %281 : tensor<5x5x3xi16>
    }
    default {
      memref.tensor_store %5, %alloc_10 : memref<5x16xi64>
      %264 = index.ceildivu %102, %47
      %265 = arith.remsi %c1114120595_i64, %c1_i64 : i64
      %266 = arith.minui %true_21, %false_4 : i1
      %267 = arith.minsi %true_21, %true_27 : i1
      scf.index_switch %c7 
      case 1 {
        %281 = tensor.empty() : tensor<5x5xf16>
        %282 = linalg.matmul ins(%123, %135 : tensor<5x16xf16>, tensor<16x5xf16>) outs(%281 : tensor<5x5xf16>) -> tensor<5x5xf16>
        %283 = vector.load %alloc_16[%c4, %c4] : memref<5x16xi32>, vector<5x5x3xi32>
        %284 = math.exp2 %281 : tensor<5x5xf16>
        %285 = arith.shrsi %false_4, %true : i1
        %286 = tensor.empty() : tensor<16x5xi64>
        %287 = tensor.empty() : tensor<5x5xi64>
        %288 = linalg.matmul ins(%5, %286 : tensor<5x16xi64>, tensor<16x5xi64>) outs(%287 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %289 = tensor.empty() : tensor<16x5xi64>
        %290 = tensor.empty() : tensor<5x5xi64>
        %291 = linalg.matmul ins(%splat, %289 : tensor<5x16xi64>, tensor<16x5xi64>) outs(%290 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %c1_i32 = arith.constant 1 : i32
        %292 = vector.transfer_read %expanded[%c3, %c13], %c1_i32 : tensor<6x1xi32>, vector<6xi32>
        %293 = index.castu %c7 : index to i32
        %294 = arith.maxui %c1_i32, %29 : i32
        %295 = vector.matrix_multiply %65, %65 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
        %296 = math.absf %collapsed : tensor<80xf16>
        %297 = arith.shrsi %73, %c-14964_i16 : i16
        %298 = math.floor %expanded_30 : tensor<6x1xf32>
        %299 = index.casts %86 : index to i32
        %300 = index.castu %false_26 : i1 to index
        %301 = vector.transpose %88, [0] : vector<16xi1> to vector<16xi1>
        scf.yield
      }
      case 2 {
        %281 = vector.matrix_multiply %66, %64 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
        %282 = math.cos %135 : tensor<16x5xf16>
        %283 = index.sub %62, %105
        %false_54 = index.bool.constant false
        %c27901_i16 = arith.constant 27901 : i16
        %extracted_55 = tensor.extract %4[%c2, %c15] : tensor<5x16xi32>
        %284 = arith.divf %cst_1, %cst_1 : f32
        %285 = math.fma %9, %123, %9 : tensor<5x16xf16>
        %286 = arith.xori %false_3, %false_4 : i1
        %expanded_56 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<5x16xi64> into tensor<5x16x1xi64>
        %287 = index.ceildivu %52, %c11
        %288 = math.tanh %9 : tensor<5x16xf16>
        %289 = math.tan %11 : tensor<5x16xf16>
        %290 = vector.broadcast %c1052418246_i32 : i32 to vector<i32>
        %291 = vector.transfer_write %290, %1[%86] : vector<i32>, tensor<6xi32>
        %292 = math.fma %cst, %extracted, %extracted : f32
        %293 = math.absf %cst : f32
        scf.yield
      }
      case 3 {
        %281 = bufferization.clone %alloc_19 : memref<5x5x3xf16> to memref<5x5x3xf16>
        %282 = math.floor %collapsed : tensor<80xf16>
        %283 = math.ctlz %1 : tensor<6xi32>
        %284 = index.add %c11, %c14
        %285 = math.rsqrt %collapsed : tensor<80xf16>
        %286 = bufferization.to_memref %17 : memref<6xf32>
        %287 = arith.subi %c1319773611_i32, %c1736010049_i32 : i32
        %288 = affine.apply affine_map<(d0, d1) -> ((d1 + d0 - d0) * 2)>(%c1, %35)
        %289 = math.ipowi %14, %14 : tensor<5x16xi1>
        %collapsed_54 = tensor.collapse_shape %9 [[0, 1]] : tensor<5x16xf16> into tensor<80xf16>
        %290 = arith.ori %c-14964_i16, %27 : i16
        %291 = arith.minsi %73, %27 : i16
        %292 = vector.insert %false, %65 [2] : i1 into vector<6xi1>
        %293 = vector.reduction <maxsi>, %111 : vector<1xi32> into i32
        %294 = index.ceildivs %c12, %c8
        %295 = math.exp2 %collapsed : tensor<80xf16>
        scf.yield
      }
      default {
        %281 = arith.shli %c-14964_i16, %27 : i16
        %282 = vector.broadcast %c1_i64 : i64 to vector<i64>
        %283 = vector.transfer_write %282, %20[%52] : vector<i64>, tensor<6xi64>
        %284 = math.log %16 : tensor<6xf32>
        %285 = math.tanh %7 : tensor<6xf32>
        %286 = math.absi %c1114120595_i64 : i64
        %287 = math.ctpop %3 : tensor<16x5xi32>
        %288 = arith.divf %cst_1, %cst_1 : f32
        %289 = math.log10 %9 : tensor<5x16xf16>
        %290 = vector.reduction <maxsi>, %88 : vector<16xi1> into i1
        %291 = arith.shrui %c1736010049_i32, %c1319773611_i32 : i32
        %292 = bufferization.clone %alloc_19 : memref<5x5x3xf16> to memref<5x5x3xf16>
        %true_54 = index.bool.constant true
        %293 = tensor.empty() : tensor<5x16xi1>
        %294 = linalg.matmul ins(%50, %8 : tensor<5x5xi1>, tensor<5x16xi1>) outs(%293 : tensor<5x16xi1>) -> tensor<5x16xi1>
        %295 = math.log10 %cst_1 : f32
        %296 = math.round %17 : tensor<6xf32>
        %297 = arith.shrui %c-14964_i16, %27 : i16
      }
      %268 = math.expm1 %collapsed : tensor<80xf16>
      %269 = tensor.empty() : tensor<5x5x3xf16>
      %270 = vector.broadcast %cst_24 : f16 to vector<16x5xf16>
      %271 = vector.broadcast %29 : i32 to vector<16x5xi32>
      %272 = vector.gather %269[%c15, %c5, %105] [%271], %71, %270 : tensor<5x5x3xf16>, vector<16x5xi32>, vector<16x5xi1>, vector<16x5xf16> into vector<16x5xf16>
      %273 = vector.reduction <maxsi>, %19 : vector<3xi32> into i32
      %cast_53 = tensor.cast %4 : tensor<5x16xi32> to tensor<?x?xi32>
      %274 = vector.matrix_multiply %24, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi32>, vector<3xi32>) -> vector<3xi32>
      %275 = math.rsqrt %269 : tensor<5x5x3xf16>
      %276 = math.tanh %expanded_30 : tensor<6x1xf32>
      %277 = index.sub %c15, %102
      %278 = arith.addf %cst, %cst_1 : f32
      %279 = math.tan %cst_1 : f32
      %280 = tensor.empty() : tensor<5x5x3xi16>
      scf.yield %280 : tensor<5x5x3xi16>
    }
    %150 = math.exp %extracted : f32
    %151 = index.ceildivs %131, %c15
    %152 = index.ceildivs %c11, %151
    %153 = math.tanh %11 : tensor<5x16xf16>
    %154 = math.fma %cst, %cst, %cst : f32
    %155 = vector.matrix_multiply %65, %88 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 8 : i32} : (vector<6xi1>, vector<16xi1>) -> vector<24xi1>
    %156 = tensor.empty() : tensor<5x16xf32>
    %157 = vector.broadcast %c1319773611_i32 : i32 to vector<16x5xi32>
    %158 = vector.gather %156[%35, %151] [%157], %71, %92 : tensor<5x16xf32>, vector<16x5xi32>, vector<16x5xi1>, vector<16x5xf32> into vector<16x5xf32>
    %159 = index.ceildivs %c12, %c4
    %160 = math.ipowi %false, %true_21 : i1
    %161 = math.floor %11 : tensor<5x16xf16>
    %rank = tensor.rank %6 : tensor<5x5x3xi1>
    %162 = bufferization.clone %alloc_19 : memref<5x5x3xf16> to memref<5x5x3xf16>
    %163 = math.ctlz %8 : tensor<5x16xi1>
    %true_36 = index.bool.constant true
    %164 = index.ceildivs %35, %rank
    %165 = math.ctlz %6 : tensor<5x5x3xi1>
    %alloc_37 = memref.alloc() : memref<5x3xi64>
    %166 = tensor.empty() : tensor<5x5xi64>
    %alloc_38 = memref.alloc() : memref<3x5xi64>
    %167 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37, %166, %alloc_38 : memref<5x3xi64>, tensor<5x5xi64>, memref<3x5xi64>) outs(%2 : tensor<5x5x3xi64>) {
    ^bb0(%in: i64, %in_53: i64, %in_54: i64, %out: i64):
      %264 = arith.divsi %c1677136924_i64, %c1677136924_i64 : i64
      %alloca = memref.alloca() : memref<5x16xi64>
      %265 = vector.splat %rank : vector<6xindex>
      %266 = vector.transpose %19, [0] : vector<3xi32> to vector<3xi32>
      %267 = bufferization.to_memref %3 : memref<16x5xi32>
      %268 = vector.reduction <xor>, %64 : vector<6xi32> into i32
      %269 = math.log2 %17 : tensor<6xf32>
      %270 = affine.if affine_set<(d0, d1, d2) : (d2 + d0 - d2 floordiv 64 >= 0, (d2 floordiv 64 + 2) floordiv 8 - (-(d2 floordiv 64)) mod 64 >= 0, d2 + d0 == 0, -(d2 floordiv 64) >= 0)>(%c14, %c11, %c13) -> memref<6xf32> {
        %alloc_62 = memref.alloc() : memref<80xi32>
        memref.tensor_store %collapsed_32, %alloc_62 : memref<80xi32>
        vector.print %75 : vector<5x5x3xi32>
        %291 = arith.cmpf olt, %cst, %cst_1 : f32
        %rank_63 = tensor.rank %20 : tensor<6xi64>
        %extracted_64 = tensor.extract %expanded_30[%c1, %c0] : tensor<6x1xf32>
        %292 = vector.reduction <minsi>, %24 : vector<1xi32> into i32
        %293 = index.ceildivs %rank_63, %164
        bufferization.dealloc_tensor %9 : tensor<5x16xf16>
        %alloc_65 = memref.alloc() : memref<6xf32>
        affine.yield %alloc_65 : memref<6xf32>
      } else {
        %291 = arith.shrsi %c-14964_i16, %73 : i16
        %292 = vector.maskedload %alloc_16[%c4, %c5], %65, %64 : memref<5x16xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %293 = vector.broadcast %cst_24 : f16 to vector<6xf16>
        %294 = vector.gather %alloc_19[%c6, %c6, %c4] [%66], %65, %293 : memref<5x5x3xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %false_62 = index.bool.constant false
        %295 = math.atan %17 : tensor<6xf32>
        %296 = vector.matrix_multiply %294, %294 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
        %297 = vector.broadcast %cst : f32 to vector<5x16xf32>
        %298 = vector.fma %297, %297, %297 : vector<5x16xf32>
        %rank_63 = tensor.rank %12 : tensor<6xi1>
        %alloc_64 = memref.alloc() : memref<6xf32>
        affine.yield %alloc_64 : memref<6xf32>
      }
      %false_55 = arith.constant false
      %false_56 = arith.constant false
      %271 = vector.transfer_read %12[%35], %false_56 : tensor<6xi1>, vector<i1>
      %272 = arith.shrsi %false, %true_21 : i1
      %273 = arith.maxui %false_3, %true_21 : i1
      %274 = index.castu %c14 : index to i32
      %275 = arith.divf %cst, %extracted : f32
      %276 = vector.reduction <and>, %24 : vector<1xi32> into i32
      %from_elements_57 = tensor.from_elements %c2080235350_i64, %in_54, %in, %c730999098_i64, %c1677136924_i64, %out, %c1677136924_i64, %c1_i64, %c1677136924_i64, %in, %in, %c1114120595_i64, %in_53, %c1114120595_i64, %in, %c1114120595_i64, %in_54, %c1_i64, %in, %in, %c1114120595_i64, %c2080235350_i64, %c730999098_i64, %c1677136924_i64, %in_53, %c2080235350_i64, %out, %c1677136924_i64, %c1114120595_i64, %c2080235350_i64, %in_54, %c1114120595_i64, %in_54, %c1_i64, %out, %in, %c1_i64, %c1_i64, %c1677136924_i64, %in_53, %in_54, %c1114120595_i64, %in_53, %c1114120595_i64, %out, %in_53, %in, %in, %in_54, %c1114120595_i64, %c2080235350_i64, %in_53, %in_53, %c1114120595_i64, %c1_i64, %in_53, %in_53, %c1114120595_i64, %in, %in_54, %in_54, %c1114120595_i64, %out, %c730999098_i64, %c1_i64, %c730999098_i64, %in_53, %in_53, %out, %out, %in_54, %c1677136924_i64, %c2080235350_i64, %in_54, %in_53, %in_53, %out, %in_53, %in_54, %in : tensor<5x16xi64>
      %277 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 16 >= 0, d1 * 8 == 0)>(%c15, %c6, %c5, %c5) -> i16 {
        %291 = memref.realloc %alloc_8 : memref<6xf16> to memref<5xf16>
        %292 = math.tan %11 : tensor<5x16xf16>
        %293 = affine.apply affine_map<(d0, d1) -> (-((d0 ceildiv 2) mod 16))>(%c11, %rank)
        %294 = math.ctpop %expanded : tensor<6x1xi32>
        %295 = arith.shli %true_36, %false_26 : i1
        %296 = math.fpowi %cst, %c1052418246_i32 : f32, i32
        %alloca_62 = memref.alloca() : memref<5x5x3xi32>
        %297 = affine.load %alloc_9[%c9, %c4, %c8] : memref<5x5x3xi64>
        affine.yield %73 : i16
      } else {
        %291 = bufferization.clone %alloc_5 : memref<5x16xi1> to memref<5x16xi1>
        %292 = arith.remui %c2080235350_i64, %c1_i64 : i64
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %64, %66, %c1052418246_i32 : vector<6xi32>, vector<6xi32> into i32
        %294 = arith.maxui %29, %29 : i32
        %inserted_62 = tensor.insert %false into %transposed[%c5, %c1] : tensor<16x5xi1>
        %295 = math.log2 %135 : tensor<16x5xf16>
        %296 = vector.insertelement %c1736010049_i32, %111[%c13 : index] : vector<1xi32>
        %297 = vector.reduction <maxsi>, %19 : vector<3xi32> into i32
        affine.yield %c-14964_i16 : i16
      }
      %rank_58 = tensor.rank %3 : tensor<16x5xi32>
      %278 = math.log10 %cst_1 : f32
      %279 = math.atan2 %9, %9 : tensor<5x16xf16>
      %280 = vector.load %alloc_15[%c1, %c1, %c1] : memref<5x5x3xf32>, vector<6xf32>
      %281 = arith.remui %c1677136924_i64, %c730999098_i64 : i64
      %alloca_59 = memref.alloca() : memref<5x5x3xi16>
      %282 = arith.xori %c1319773611_i32, %c1319773611_i32 : i32
      %283 = math.round %7 : tensor<6xf32>
      %284 = arith.negf %cst_1 : f32
      %285 = arith.remf %cst, %cst_1 : f32
      %inserted = tensor.insert %cst_24 into %123[%c3, %c13] : tensor<5x16xf16>
      %286 = vector.broadcast %rank_58 : index to vector<5xindex>
      %287 = vector.broadcast %false_3 : i1 to vector<5xi1>
      %288 = vector.broadcast %in_54 : i64 to vector<5xi64>
      vector.scatter %alloc_9[%c2, %c1, %c1] [%286], %287, %288 : memref<5x5x3xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      scf.index_switch %c9 
      case 1 {
        %291 = arith.remui %false_3, %false_55 : i1
        %292 = math.round %156 : tensor<5x16xf32>
        bufferization.dealloc_tensor %7 : tensor<6xf32>
        %293 = math.tanh %123 : tensor<5x16xf16>
        %294 = math.ipowi %from_elements_57, %from_elements_57 : tensor<5x16xi64>
        %295 = index.casts %false_55 : i1 to index
        %296 = vector.broadcast %in_53 : i64 to vector<3xi64>
        %297 = vector.broadcast %true : i1 to vector<3xi1>
        %298 = vector.maskedload %alloc_18[%c5], %297, %296 : memref<6xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %299 = math.tanh %17 : tensor<6xf32>
        %300 = vector.insertelement %c1052418246_i32, %19[%c11 : index] : vector<3xi32>
        %301 = memref.realloc %alloc_18 : memref<6xi64> to memref<6xi64>
        %302 = arith.shli %c-14964_i16, %c-14964_i16 : i16
        %303 = bufferization.clone %alloc_5 : memref<5x16xi1> to memref<5x16xi1>
        %304 = index.ceildivs %164, %c7
        %305 = index.ceildivu %c10, %c7
        %306 = vector.broadcast %cst : f32 to vector<5xf32>
        %307 = vector.broadcast %false_3 : i1 to vector<5xi1>
        %308 = vector.maskedload %alloc_14[%c3, %c4, %c2], %307, %306 : memref<5x5x3xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %309 = math.ctlz %c1_i64 : i64
        scf.yield
      }
      case 2 {
        %291 = arith.muli %in_54, %in_53 : i64
        %292 = arith.cmpi uge, %true_27, %true_36 : i1
        %293 = arith.maxsi %in, %out : i64
        %294 = math.atan2 %123, %11 : tensor<5x16xf16>
        %295 = arith.shli %c1677136924_i64, %c1677136924_i64 : i64
        %296 = bufferization.clone %alloc_14 : memref<5x5x3xf32> to memref<5x5x3xf32>
        %297 = arith.shli %true, %false : i1
        %298 = bufferization.to_memref %collapsed_23 : memref<80xi64>
        %299 = math.fma %cst_1, %cst, %extracted : f32
        %300 = arith.xori %27, %73 : i16
        memref.tensor_store %2, %alloc_9 : memref<5x5x3xi64>
        %301 = index.ceildivs %102, %102
        %302 = tensor.empty() : tensor<5x5xi1>
        %303 = linalg.matmul ins(%8, %18 : tensor<5x16xi1>, tensor<16x5xi1>) outs(%302 : tensor<5x5xi1>) -> tensor<5x5xi1>
        %304 = affine.min affine_map<(d0, d1) -> (d1 * -4)>(%c11, %164)
        %305 = arith.ceildivsi %false_2, %false_2 : i1
        %306 = vector.gather %3[%c11, %c12] [%157], %71, %157 : tensor<16x5xi32>, vector<16x5xi32>, vector<16x5xi1>, vector<16x5xi32> into vector<16x5xi32>
        scf.yield
      }
      case 3 {
        %alloca_62 = memref.alloca() : memref<6xi16>
        %291 = math.round %11 : tensor<5x16xf16>
        %292 = arith.maxui %c1736010049_i32, %c1736010049_i32 : i32
        %293 = index.maxu %62, %c3
        %294 = math.atan2 %156, %156 : tensor<5x16xf32>
        %295 = math.round %156 : tensor<5x16xf32>
        %296 = vector.transpose %19, [0] : vector<3xi32> to vector<3xi32>
        %297 = index.castu %rank : index to i32
        %298 = arith.maxui %in_53, %c1_i64 : i64
        affine.store %c1_i64, %alloc_10[%c1, %c8] : memref<5x16xi64>
        %false_63 = index.bool.constant false
        %299 = memref.realloc %alloc_18 : memref<6xi64> to memref<3xi64>
        %300 = math.exp %cst_1 : f32
        memref.copy %alloc_5, %alloc_12 : memref<5x16xi1> to memref<5x16xi1>
        %301 = arith.remsi %false_0, %true : i1
        %302 = arith.maxui %false_2, %true : i1
        scf.yield
      }
      default {
        %291 = math.ctpop %0 : tensor<5x16xi64>
        %292 = index.floordivs %rank, %rank_58
        %293 = math.cos %9 : tensor<5x16xf16>
        %294 = arith.xori %true_36, %false_4 : i1
        %295 = math.floor %11 : tensor<5x16xf16>
        %296 = index.ceildivu %c5, %rank
        %297 = index.casts %false_2 : i1 to index
        %298 = math.exp2 %collapsed : tensor<80xf16>
        %299 = math.atan %7 : tensor<6xf32>
        %300 = index.casts %true_36 : i1 to index
        %301 = math.log10 %collapsed : tensor<80xf16>
        %302 = arith.remsi %true_21, %false_0 : i1
        %303 = arith.minf %cst_1, %cst_1 : f32
        %304 = arith.shli %c1319773611_i32, %29 : i32
        %305 = arith.muli %true_36, %false : i1
        %alloc_62 = memref.alloc() : memref<6xf32>
        memref.tensor_store %17, %alloc_62 : memref<6xf32>
      }
      %expanded_60 = tensor.expand_shape %156 [[0], [1, 2]] : tensor<5x16xf32> into tensor<5x16x1xf32>
      %289 = vector.broadcast %cst_24 : f16 to vector<6xf16>
      %290 = vector.maskedload %alloc_19[%c4, %c3, %c0], %65, %289 : memref<5x5x3xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      %inserted_61 = tensor.insert %extracted into %17[%c5] : tensor<6xf32>
      linalg.yield %in : i64
    } -> tensor<5x5x3xi64>
    %168 = math.exp2 %extracted : f32
    %169 = arith.minsi %c1677136924_i64, %c1_i64 : i64
    %170 = math.tanh %expanded_30 : tensor<6x1xf32>
    %171 = memref.alloca_scope  -> (i32) {
      %264 = vector.insertelement %cst_24, %77[] : vector<f16>
      %265 = arith.andi %true_36, %false_2 : i1
      scf.index_switch %35 
      case 1 {
        %299 = index.casts %27 : i16 to index
        memref.assume_alignment %alloc_13, 2 : memref<5x16xi16>
        %c1707836405_i64 = arith.constant 1707836405 : i64
        affine.store %cst_24, %alloc_8[%c0] : memref<6xf16>
        %300 = index.ceildivu %c7, %131
        %301 = arith.divf %extracted, %cst : f32
        %302 = arith.maxui %c-14964_i16, %c-14964_i16 : i16
        %303 = arith.shrui %false_3, %false : i1
        %304 = math.ctpop %1 : tensor<6xi32>
        %305 = index.casts %c3 : index to i32
        %306 = arith.remsi %false_2, %true_36 : i1
        %307 = bufferization.clone %alloc_16 : memref<5x16xi32> to memref<5x16xi32>
        %308 = arith.remsi %false_0, %false_26 : i1
        %309 = index.maxu %152, %131
        %true_57 = index.bool.constant true
        bufferization.dealloc_tensor %3 : tensor<16x5xi32>
        scf.yield
      }
      case 2 {
        %299 = arith.xori %c1114120595_i64, %c730999098_i64 : i64
        %300 = math.ctlz %21 : tensor<i64>
        %301 = vector.gather %2[%c14, %102, %c0] [%75], %74, %33 : tensor<5x5x3xi64>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi64> into vector<5x5x3xi64>
        %302 = vector.reduction <add>, %24 : vector<1xi32> into i32
        %303 = index.sub %c14, %rank
        %304 = arith.shli %29, %c1736010049_i32 : i32
        %305 = index.maxu %35, %c5
        %306 = index.floordivs %131, %c2
        %307 = bufferization.to_tensor %alloc_13 : memref<5x16xi16>
        %308 = vector.extract %88[15] : vector<16xi1>
        %309 = vector.splat %134 : vector<6xindex>
        %310 = bufferization.clone %alloc_6 : memref<16x5xi32> to memref<16x5xi32>
        %311 = vector.broadcast %cst_1 : f32 to vector<5x3xf32>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %91, %311 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5x3xf32>, vector<5x3xf32>
        %312 = vector.matrix_multiply %88, %88 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
        %c19 = arith.constant 19 : index
        %extracted_59 = tensor.extract %collapsed_23[%c19] : tensor<80xi64>
        %313 = math.round %extracted : f32
        scf.yield
      }
      case 3 {
        %299 = vector.broadcast %false_0 : i1 to vector<5x16xi1>
        %300 = math.roundeven %11 : tensor<5x16xf16>
        %301 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1, (d3 - 2) * 2, d0 - d3)>(%35, %c9, %c10, %c6)
        %alloca = memref.alloca() : memref<5x16xi16>
        %302 = math.log2 %11 : tensor<5x16xf16>
        %303 = vector.broadcast %cst : f32 to vector<5xf32>
        %304 = vector.transfer_write %303, %expanded_30[%164, %151] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf32>, tensor<6x1xf32>
        %305 = math.fpowi %7, %1 : tensor<6xf32>, tensor<6xi32>
        %306 = vector.shuffle %93, %92 [1, 2, 6, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 28] : vector<16x5xf32>, vector<16x5xf32>
        %307 = math.round %17 : tensor<6xf32>
        %308 = vector.bitcast %92 : vector<16x5xf32> to vector<16x5xf32>
        %309 = math.fpowi %156, %4 : tensor<5x16xf32>, tensor<5x16xi32>
        %310 = arith.remf %extracted, %cst_1 : f32
        %311 = index.ceildivs %134, %131
        %312 = index.ceildivu %164, %52
        %313 = affine.max affine_map<(d0) -> (-(d0 + d0 - 32 - 32))>(%311)
        %314 = math.exp %7 : tensor<6xf32>
        scf.yield
      }
      default {
        %299 = vector.broadcast %62 : index to vector<3xindex>
        %300 = vector.broadcast %true : i1 to vector<3xi1>
        %301 = vector.broadcast %73 : i16 to vector<3xi16>
        vector.scatter %alloc[%c14, %c0] [%299], %300, %301 : memref<16x5xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %302 = bufferization.to_tensor %162 : memref<5x5x3xf16>
        %303 = index.maxu %151, %164
        %304 = arith.divf %cst_1, %cst : f32
        %305 = index.castu %27 : i16 to index
        %306 = index.casts %true_21 : i1 to index
        %307 = vector.broadcast %cst_1 : f32 to vector<16x5xf32>
        %308 = vector.fma %307, %307, %93 : vector<16x5xf32>
        %rank_57 = tensor.rank %50 : tensor<5x5xi1>
        %309 = math.atan2 %302, %302 : tensor<5x5x3xf16>
        %310 = math.rsqrt %135 : tensor<16x5xf16>
        %311 = tensor.empty() : tensor<5x5xf16>
        %312 = linalg.matmul ins(%123, %135 : tensor<5x16xf16>, tensor<16x5xf16>) outs(%311 : tensor<5x5xf16>) -> tensor<5x5xf16>
        %313 = vector.create_mask %305, %c10 : vector<16x5xi1>
        %314 = arith.remf %cst_1, %cst : f32
        %315 = affine.max affine_map<(d0, d1, d2) -> ((d1 + d2) mod 32, ((d1 + d2) mod 32) floordiv 8, d1 + d2 - 112, 0)>(%105, %c4, %c2)
        %316 = vector.create_mask %164, %52 : vector<5x16xi1>
        %317 = bufferization.clone %162 : memref<5x5x3xf16> to memref<5x5x3xf16>
      }
      %266 = tensor.empty() : tensor<16x16xi32>
      %267 = linalg.matmul ins(%3, %4 : tensor<16x5xi32>, tensor<5x16xi32>) outs(%266 : tensor<16x16xi32>) -> tensor<16x16xi32>
      %collapsed_53 = tensor.collapse_shape %13 [[0, 1]] : tensor<16x5xi16> into tensor<80xi16>
      %268 = index.sub %152, %c14
      %269 = scf.index_switch %47 -> memref<5x16xi64> 
      case 1 {
        bufferization.dealloc_tensor %splat : tensor<5x16xi64>
        %alloca = memref.alloca() : memref<6xi16>
        %299 = vector.create_mask %c5, %c1 : vector<16x5xi1>
        %300 = arith.minsi %true, %true_36 : i1
        %from_elements_57 = tensor.from_elements %c730999098_i64, %c730999098_i64, %c1677136924_i64, %c2080235350_i64, %c1_i64, %c1_i64 : tensor<6xi64>
        %alloc_58 = memref.alloc() : memref<80xi16>
        memref.tensor_store %collapsed_53, %alloc_58 : memref<80xi16>
        %301 = math.log2 %7 : tensor<6xf32>
        %302 = vector.broadcast %c1114120595_i64 : i64 to vector<5xi64>
        %303 = vector.broadcast %true_36 : i1 to vector<5xi1>
        %304 = vector.maskedload %alloc_9[%c2, %c0, %c1], %303, %302 : memref<5x5x3xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %305 = index.sub %134, %c1
        %306 = math.log10 %156 : tensor<5x16xf32>
        %307 = math.exp2 %156 : tensor<5x16xf32>
        %308 = affine.load %alloc_9[%c8, %c8, %c0] : memref<5x5x3xi64>
        memref.assume_alignment %alloc_11, 16 : memref<5x5x3xi16>
        %309 = arith.minsi %27, %27 : i16
        %310 = math.sqrt %11 : tensor<5x16xf16>
        %311 = arith.negf %extracted : f32
        scf.yield %alloc_10 : memref<5x16xi64>
      }
      default {
        %299 = vector.broadcast %c-14964_i16 : i16 to vector<5xi16>
        %300 = vector.broadcast %true_36 : i1 to vector<5xi1>
        %301 = vector.maskedload %alloc_11[%c0, %c0, %c2], %300, %299 : memref<5x5x3xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        memref.assume_alignment %alloc_14, 8 : memref<5x5x3xf32>
        %302 = math.atan %123 : tensor<5x16xf16>
        %303 = arith.shrui %73, %c-14964_i16 : i16
        %304 = math.roundeven %156 : tensor<5x16xf32>
        %305 = math.tanh %collapsed : tensor<80xf16>
        %306 = vector.broadcast %62 : index to vector<16xindex>
        %307 = vector.broadcast %cst_24 : f16 to vector<16xf16>
        vector.scatter %alloc_19[%c2, %c2, %c0] [%306], %88, %307 : memref<5x5x3xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        vector.print %111 : vector<1xi32>
        %308 = math.fma %extracted, %cst_1, %extracted : f32
        %309 = arith.divsi %27, %c-14964_i16 : i16
        %310 = arith.shrsi %27, %27 : i16
        %311 = arith.shrui %false_0, %true : i1
        %312 = vector.shuffle %146, %145 [1, 3, 4, 5, 6, 7, 8, 9] : vector<5x5x3xf16>, vector<5x5x3xf16>
        %313 = arith.divsi %true_21, %false_3 : i1
        %314 = arith.cmpi ugt, %false_3, %true_36 : i1
        %315 = arith.maxui %c1_i64, %c730999098_i64 : i64
        scf.yield %alloc_10 : memref<5x16xi64>
      }
      %270 = vector.matrix_multiply %65, %65 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
      %271 = math.atan2 %expanded_30, %expanded_30 : tensor<6x1xf32>
      %272 = vector.broadcast %cst_1 : f32 to vector<16x5xf32>
      %273 = vector.fma %272, %272, %92 : vector<16x5xf32>
      %274 = arith.cmpf uno, %cst_1, %cst_1 : f32
      %alloc_54 = memref.alloc() : memref<6xf32>
      memref.tensor_store %16, %alloc_54 : memref<6xf32>
      %275 = vector.shuffle %92, %158 [0, 2, 3, 5, 8, 11, 12, 13, 17, 18, 20, 21, 22, 23, 24, 27, 28] : vector<16x5xf32>, vector<16x5xf32>
      %276 = index.ceildivu %62, %c3
      %277 = vector.load %alloc[%c0, %c1] : memref<16x5xi16>, vector<6xi16>
      %278 = vector.broadcast %c1_i64 : i64 to vector<5x16xi64>
      %279 = vector.broadcast %true : i1 to vector<5x16xi1>
      %280 = vector.broadcast %c1319773611_i32 : i32 to vector<5x16xi32>
      %281 = vector.gather %2[%c1, %152, %c3] [%280], %279, %278 : tensor<5x5x3xi64>, vector<5x16xi32>, vector<5x16xi1>, vector<5x16xi64> into vector<5x16xi64>
      %282 = math.log2 %extracted : f32
      %283 = tensor.empty() : tensor<16x16xi64>
      %284 = tensor.empty() : tensor<5x16xi64>
      %285 = linalg.matmul ins(%5, %283 : tensor<5x16xi64>, tensor<16x16xi64>) outs(%284 : tensor<5x16xi64>) -> tensor<5x16xi64>
      %286 = math.absi %collapsed_53 : tensor<80xi16>
      %287 = math.ctpop %29 : i32
      %288 = arith.negf %extracted : f32
      %289 = arith.maxui %27, %73 : i16
      %290 = math.atan2 %extracted, %extracted : f32
      %291 = tensor.empty() : tensor<16x5xi32>
      %mapped = linalg.map ins(%3 : tensor<16x5xi32>) outs(%291 : tensor<16x5xi32>)
        (%in: i32) {
          %299 = math.absi %3 : tensor<16x5xi32>
          %300 = index.sub %c9, %159
          %301 = vector.insertelement %false_3, %155[%c10 : index] : vector<24xi1>
          %302 = math.ctpop %266 : tensor<16x16xi32>
          %303 = vector.broadcast %extracted : f32 to vector<3xf32>
          %304 = vector.insert %303, %90 [1, 4] : vector<3xf32> into vector<5x5x3xf32>
          %305 = arith.shli %c1052418246_i32, %29 : i32
          %306 = affine.min affine_map<(d0) -> ((d0 * 4) ceildiv 8, ((d0 * 4) ceildiv 8) floordiv 2)>(%159)
          %307 = vector.broadcast %cst : f32 to vector<5x3xf32>
          %dest_57, %accumulated_value_58 = vector.scan <add>, %90, %307 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5x3xf32>, vector<5x3xf32>
          %308 = math.tan %16 : tensor<6xf32>
          %309 = index.castu %151 : index to i32
          %310 = vector.maskedload %alloc_11[%c0, %c2, %c1], %65, %277 : memref<5x5x3xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %311 = arith.minsi %c-14964_i16, %73 : i16
          %312 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 + d3 floordiv 32 - 4)>(%131, %c11, %c11, %102)
          %313 = memref.realloc %alloc_18 : memref<6xi64> to memref<3xi64>
          %314 = math.log1p %7 : tensor<6xf32>
          %315 = index.divu %c15, %c6
          %316 = arith.divf %cst_1, %cst : f32
          %317 = math.log %expanded_30 : tensor<6x1xf32>
          %318 = index.maxu %c9, %131
          %319 = math.fpowi %135, %291 : tensor<16x5xf16>, tensor<16x5xi32>
          %320 = arith.ceildivsi %c1319773611_i32, %c1736010049_i32 : i32
          %321 = math.roundeven %cst_24 : f16
          %322 = index.ceildivu %105, %c2
          %323 = index.ceildivu %69, %c8
          %324 = arith.shli %c1677136924_i64, %c1677136924_i64 : i64
          %alloca = memref.alloca() : memref<16x5xi16>
          %325 = arith.remf %cst, %cst_1 : f32
          %326 = arith.maxui %73, %c-14964_i16 : i16
          %327 = math.fpowi %expanded_30, %expanded : tensor<6x1xf32>, tensor<6x1xi32>
          %328 = vector.gather %12[%52] [%75], %76, %74 : tensor<6xi1>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi1> into vector<5x5x3xi1>
          %329 = arith.divf %extracted, %extracted : f32
          %cast_59 = tensor.cast %266 : tensor<16x16xi32> to tensor<?x?xi32>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %292 = scf.index_switch %35 -> tensor<16x5xf32> 
      case 1 {
        %299 = math.rsqrt %123 : tensor<5x16xf16>
        %300 = arith.maxui %c1_i64, %c2080235350_i64 : i64
        %301 = math.absf %9 : tensor<5x16xf16>
        %302 = math.log2 %16 : tensor<6xf32>
        %303 = math.ipowi %splat, %5 : tensor<5x16xi64>
        %304 = vector.broadcast %c2080235350_i64 : i64 to vector<16xi64>
        %305 = vector.maskedload %alloc_9[%c4, %c4, %c1], %88, %304 : memref<5x5x3xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %306 = math.fpowi %7, %1 : tensor<6xf32>, tensor<6xi32>
        %307 = bufferization.to_memref %collapsed_32 : memref<80xi32>
        %true_57 = index.bool.constant true
        %308 = vector.insertelement %c1736010049_i32, %66[%47 : index] : vector<6xi32>
        %309 = math.atan2 %collapsed, %collapsed : tensor<80xf16>
        %310 = arith.minsi %false_2, %false : i1
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 floordiv 16) floordiv 4) mod 64, d0 + 4)>(%105, %c2, %c5, %c8)
        %312 = arith.shli %c1677136924_i64, %c1114120595_i64 : i64
        %collapsed_58 = tensor.collapse_shape %135 [[0, 1]] : tensor<16x5xf16> into tensor<80xf16>
        %313 = index.casts %69 : index to i32
        %314 = tensor.empty() : tensor<16x5xf32>
        scf.yield %314 : tensor<16x5xf32>
      }
      case 2 {
        %299 = math.roundeven %156 : tensor<5x16xf32>
        %from_elements_57 = tensor.from_elements %c1_i64, %c1677136924_i64, %c1_i64, %c1_i64, %c1677136924_i64, %c1114120595_i64, %c2080235350_i64, %c1114120595_i64, %c1_i64, %c1114120595_i64, %c2080235350_i64, %c1_i64, %c1_i64, %c1677136924_i64, %c1_i64, %c1114120595_i64, %c1_i64, %c1114120595_i64, %c1114120595_i64, %c1677136924_i64, %c730999098_i64, %c2080235350_i64, %c1677136924_i64, %c730999098_i64, %c2080235350_i64, %c1_i64, %c1_i64, %c1_i64, %c1114120595_i64, %c1_i64, %c1114120595_i64, %c730999098_i64, %c2080235350_i64, %c1_i64, %c1114120595_i64, %c2080235350_i64, %c730999098_i64, %c2080235350_i64, %c2080235350_i64, %c2080235350_i64, %c1114120595_i64, %c2080235350_i64, %c1677136924_i64, %c1677136924_i64, %c1_i64, %c1_i64, %c730999098_i64, %c730999098_i64, %c730999098_i64, %c1114120595_i64, %c730999098_i64, %c1_i64, %c1677136924_i64, %c1_i64, %c1_i64, %c730999098_i64, %c1677136924_i64, %c1677136924_i64, %c730999098_i64, %c1677136924_i64, %c1_i64, %c2080235350_i64, %c2080235350_i64, %c2080235350_i64, %c2080235350_i64, %c730999098_i64, %c1_i64, %c1114120595_i64, %c2080235350_i64, %c2080235350_i64, %c1677136924_i64, %c1114120595_i64, %c1114120595_i64, %c1677136924_i64, %c1677136924_i64, %c730999098_i64, %c1114120595_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<5x16xi64>
        %300 = math.tan %156 : tensor<5x16xf32>
        %301 = bufferization.to_tensor %alloc_8 : memref<6xf16>
        %302 = vector.load %alloc_12[%c2, %c7] : memref<5x16xi1>, vector<5x16xi1>
        %303 = bufferization.to_memref %4 : memref<5x16xi32>
        %304 = arith.negf %cst_1 : f32
        %305 = math.log1p %301 : tensor<6xf16>
        %306 = affine.apply affine_map<(d0) -> ((d0 * 2) mod 64)>(%c3)
        %307 = arith.ori %false_3, %false_0 : i1
        %308 = arith.ori %c1_i64, %c2080235350_i64 : i64
        %309 = vector.load %alloc_7[%c2, %c4] : memref<16x5xf16>, vector<5x16xf16>
        %310 = arith.ceildivsi %c1052418246_i32, %c1736010049_i32 : i32
        %311 = math.ipowi %c730999098_i64, %c730999098_i64 : i64
        %312 = arith.remui %false_3, %false_3 : i1
        memref.tensor_store %splat, %alloc_10 : memref<5x16xi64>
        %313 = tensor.empty() : tensor<16x5xf32>
        scf.yield %313 : tensor<16x5xf32>
      }
      default {
        %299 = affine.max affine_map<(d0) -> ((d0 mod 4) * 16, d0 floordiv 64, d0 floordiv 64 - (d0 mod 4) * 16 - 64)>(%276)
        %300 = vector.create_mask %c14, %c11 : vector<16x5xi1>
        %301 = arith.minui %c1677136924_i64, %c730999098_i64 : i64
        %302 = math.round %156 : tensor<5x16xf32>
        vector.print %33 : vector<5x5x3xi64>
        %303 = vector.reduction <and>, %270 : vector<1xi1> into i1
        %304 = math.cos %collapsed : tensor<80xf16>
        %305 = index.castu %c2080235350_i64 : i64 to index
        %306 = arith.maxui %c1677136924_i64, %c1_i64 : i64
        %alloc_57 = memref.alloc() : memref<6xi32>
        memref.tensor_store %15, %alloc_57 : memref<6xi32>
        %307 = arith.divf %cst_1, %cst : f32
        %cast_58 = tensor.cast %collapsed : tensor<80xf16> to tensor<?xf16>
        %308 = math.atan2 %16, %7 : tensor<6xf32>
        %309 = bufferization.to_memref %2 : memref<5x5x3xi64>
        %310 = math.roundeven %16 : tensor<6xf32>
        %311 = index.casts %c3 : index to i32
        %312 = tensor.empty() : tensor<16x5xf32>
        scf.yield %312 : tensor<16x5xf32>
      }
      %293 = vector.gather %alloc_6[%134, %152] [%157], %71, %157 : memref<16x5xi32>, vector<16x5xi32>, vector<16x5xi1>, vector<16x5xi32> into vector<16x5xi32>
      %expanded_55 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<5x16xi1> into tensor<5x16x1xi1>
      %294 = math.cos %156 : tensor<5x16xf32>
      %295 = math.log2 %11 : tensor<5x16xf16>
      %296 = arith.muli %false, %false_26 : i1
      %297 = arith.remf %extracted, %extracted : f32
      %298 = tensor.empty() : tensor<16x5xi32>
      %mapped_56 = linalg.map ins(%3 : tensor<16x5xi32>) outs(%298 : tensor<16x5xi32>)
        (%in: i32) {
          %c0_i32 = arith.constant 0 : i32
          %299 = vector.transfer_read %3[%268, %69], %c0_i32 : tensor<16x5xi32>, vector<i32>
          %collapsed_57 = tensor.collapse_shape %3 [[0, 1]] : tensor<16x5xi32> into tensor<80xi32>
          %300 = memref.atomic_rmw minf %cst_24, %alloc_7[%c9, %c0] : (f16, memref<16x5xf16>) -> f16
          %301 = math.sqrt %11 : tensor<5x16xf16>
          %302 = index.ceildivs %151, %134
          %303 = arith.minsi %c1_i64, %c1_i64 : i64
          %304 = math.ctpop %c730999098_i64 : i64
          %305 = math.sqrt %collapsed : tensor<80xf16>
          %306 = arith.minsi %c1319773611_i32, %c1052418246_i32 : i32
          %307 = bufferization.to_tensor %alloc_20 : memref<i64>
          %308 = math.rsqrt %11 : tensor<5x16xf16>
          %rank_58 = tensor.rank %17 : tensor<6xf32>
          %309 = index.castu %69 : index to i32
          %310 = math.round %9 : tensor<5x16xf16>
          %311 = math.cttz %expanded_55 : tensor<5x16x1xi1>
          %312 = arith.ori %false, %false_3 : i1
          %313 = math.tanh %9 : tensor<5x16xf16>
          %314 = index.divu %c11, %69
          %315 = index.maxs %c1, %c2
          %316 = arith.remf %cst, %cst : f32
          %317 = index.castu %c1114120595_i64 : i64 to index
          %318 = vector.shuffle %279, %279 [0, 1, 3, 5, 6, 9] : vector<5x16xi1>, vector<5x16xi1>
          vector.print %90 : vector<5x5x3xf32>
          memref.assume_alignment %alloc_19, 8 : memref<5x5x3xf16>
          %319 = arith.remf %extracted, %extracted : f32
          %320 = index.divu %c3, %86
          %321 = arith.shrui %c730999098_i64, %c1_i64 : i64
          %322 = index.castu %152 : index to i32
          %323 = arith.minsi %true_21, %true_27 : i1
          %324 = math.fma %156, %156, %156 : tensor<5x16xf32>
          %325 = index.maxu %276, %c5
          %326 = math.fma %expanded_30, %expanded_30, %expanded_30 : tensor<6x1xf32>
          %c0_i32_59 = arith.constant 0 : i32
          linalg.yield %c0_i32_59 : i32
        }
      memref.alloca_scope.return %c1319773611_i32 : i32
    }
    bufferization.dealloc_tensor %12 : tensor<6xi1>
    %172 = math.fpowi %cst, %c1319773611_i32 : f32, i32
    memref.tensor_store %2, %alloc_9 : memref<5x5x3xi64>
    %173 = vector.bitcast %155 : vector<24xi1> to vector<24xi1>
    %cast_39 = tensor.cast %transposed : tensor<16x5xi1> to tensor<?x?xi1>
    %alloc_40 = memref.alloc() : memref<80xi32>
    memref.tensor_store %collapsed_32, %alloc_40 : memref<80xi32>
    %174 = math.log10 %7 : tensor<6xf32>
    %175 = index.ceildivs %c10, %c13
    %176 = vector.broadcast %c2080235350_i64 : i64 to vector<6xi64>
    %177 = vector.gather %alloc_17[%c5, %69] [%64], %65, %176 : memref<16x5xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    memref.alloca_scope  {
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 + d3 floordiv 32 - 4)>(%c11, %175, %c8, %c12)
      affine.for %arg2 = 0 to 106 {
      }
      %265 = math.log10 %11 : tensor<5x16xf16>
      %266 = bufferization.to_memref %splat : memref<5x16xi64>
      %267 = vector.transpose %75, [2, 0, 1] : vector<5x5x3xi32> to vector<3x5x5xi32>
      %268 = arith.remf %cst_24, %cst_24 : f16
      %269 = index.divu %c10, %rank
      %270 = arith.shli %true_27, %true_36 : i1
      %271 = math.ipowi %true_27, %false_3 : i1
      %272 = tensor.empty() : tensor<16x5xi32>
      %mapped = linalg.map ins(%alloc_6 : memref<16x5xi32>) outs(%272 : tensor<16x5xi32>)
        (%in: i32) {
          %291 = arith.shrsi %c1677136924_i64, %c730999098_i64 : i64
          %292 = math.ctpop %true_27 : i1
          %293 = arith.maxsi %c1677136924_i64, %c730999098_i64 : i64
          %294 = math.floor %17 : tensor<6xf32>
          %295 = arith.minsi %true_27, %false_2 : i1
          %296 = math.atan2 %11, %11 : tensor<5x16xf16>
          %alloc_58 = memref.alloc() : memref<5x16xf16>
          memref.tensor_store %9, %alloc_58 : memref<5x16xf16>
          %297 = vector.gather %2[%134, %159, %152] [%75], %76, %33 : tensor<5x5x3xi64>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi64> into vector<5x5x3xi64>
          %298 = math.log10 %156 : tensor<5x16xf32>
          %299 = arith.remf %cst_1, %cst : f32
          %300 = math.fpowi %16, %15 : tensor<6xf32>, tensor<6xi32>
          affine.store %c1677136924_i64, %alloc_20[] : memref<i64>
          %301 = bufferization.clone %266 : memref<5x16xi64> to memref<5x16xi64>
          %true_59 = index.bool.constant true
          %302 = index.casts %35 : index to i32
          %303 = index.castu %false_26 : i1 to index
          %304 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%c11, %175, %69, %269)
          %305 = math.round %7 : tensor<6xf32>
          %306 = arith.ori %c1319773611_i32, %c1319773611_i32 : i32
          %307 = math.fpowi %11, %4 : tensor<5x16xf16>, tensor<5x16xi32>
          %308 = arith.remui %c730999098_i64, %c2080235350_i64 : i64
          %309 = vector.broadcast %303 : index to vector<6xindex>
          %310 = vector.broadcast %cst_24 : f16 to vector<6xf16>
          vector.scatter %alloc_8[%c5] [%309], %65, %310 : memref<6xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
          %311 = arith.maxsi %c-14964_i16, %c-14964_i16 : i16
          %312 = vector.shuffle %157, %157 [0, 3, 8, 9, 10, 20, 21, 22, 25, 30, 31] : vector<16x5xi32>, vector<16x5xi32>
          %313 = arith.maxui %c730999098_i64, %c1114120595_i64 : i64
          %314 = math.ceil %16 : tensor<6xf32>
          %315 = arith.divf %extracted, %cst : f32
          %316 = arith.remsi %true_59, %true : i1
          %317 = math.ipowi %8, %14 : tensor<5x16xi1>
          memref.assume_alignment %alloc_12, 1 : memref<5x16xi1>
          %318 = index.divu %47, %102
          %319 = math.log %collapsed : tensor<80xf16>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %273 = arith.ori %false_4, %true_36 : i1
      %274 = vector.load %alloc_17[%c0, %c2] : memref<16x5xi64>, vector<5x16xi64>
      %from_elements_53 = tensor.from_elements %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24 : tensor<16x5xf16>
      %false_54 = index.bool.constant false
      %275 = index.casts %62 : index to i32
      %276 = affine.min affine_map<(d0) -> (d0 * 128 - 1)>(%c12)
      %277 = vector.load %alloc_12[%c3, %c5] : memref<5x16xi1>, vector<5x5x3xi1>
      %278 = math.tanh %extracted : f32
      %279 = vector.flat_transpose %111 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %alloc_55 = memref.alloc() : memref<80xi32>
      memref.tensor_store %collapsed_32, %alloc_55 : memref<80xi32>
      %280 = math.atan2 %from_elements_53, %from_elements_53 : tensor<16x5xf16>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_56 = arith.constant 0 : i32
      %281 = vector.transfer_read %4[%c7, %35], %c0_i32_56 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x16xi32>, vector<6xi32>
      %282 = arith.shrsi %29, %c0_i32 : i32
      %expanded_57 = tensor.expand_shape %15 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
      %283 = index.mul %264, %86
      %284 = memref.atomic_rmw ori %c1_i64, %alloc_18[%c4] : (i64, memref<6xi64>) -> i64
      %285 = index.ceildivu %131, %52
      %286 = bufferization.to_tensor %alloc_7 : memref<16x5xf16>
      %287 = vector.broadcast %cst : f32 to vector<3xf32>
      %288 = vector.transfer_write %287, %expanded_30[%131, %164] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, tensor<6x1xf32>
      %289 = vector.transpose %277, [2, 0, 1] : vector<5x5x3xi1> to vector<3x5x5xi1>
      %alloca = memref.alloca() : memref<6xf32>
      %290 = index.maxu %62, %151
    }
    %178 = math.cttz %2 : tensor<5x5x3xi64>
    %179 = bufferization.to_tensor %alloc_9 : memref<5x5x3xi64>
    %180 = arith.shli %c730999098_i64, %c2080235350_i64 : i64
    %181 = math.roundeven %11 : tensor<5x16xf16>
    %182 = vector.matrix_multiply %66, %66 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
    %183 = arith.remui %true_36, %true_21 : i1
    %184 = math.roundeven %11 : tensor<5x16xf16>
    %cst_41 = arith.constant 1.000000e+00 : f32
    %cst_42 = arith.constant 0.000000e+00 : f32
    %185 = vector.transfer_read %16[%c12], %cst_42 : tensor<6xf32>, vector<f32>
    %186 = affine.if affine_set<(d0, d1, d2) : ((d0 ceildiv 128) mod 128 + d2 >= 0, (d0 ceildiv 128) mod 128 >= 0, d1 * -8 == 0, (d0 ceildiv 128) mod 128 >= 0)>(%c12, %c2, %c14) -> i64 {
      %264 = affine.min affine_map<(d0, d1, d2) -> (d1 ceildiv 8 - d1 * 16, d0 * 8, d2)>(%rank, %c0, %47)
      %265 = index.casts %c1114120595_i64 : i64 to index
      %266 = arith.remf %cst_41, %cst : f32
      %267 = math.sqrt %cst_24 : f16
      %268 = vector.bitcast %157 : vector<16x5xi32> to vector<16x5xf32>
      %269 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%c11, %175)
      %270 = math.log2 %17 : tensor<6xf32>
      %271 = vector.reduction <minsi>, %182 : vector<1xi32> into i32
      affine.yield %c1_i64 : i64
    } else {
      %c1416810002_i32 = arith.constant 1416810002 : i32
      %264 = index.add %c0, %c10
      %true_53 = index.bool.constant true
      %265 = index.castu %c1114120595_i64 : i64 to index
      %266 = vector.reduction <minsi>, %173 : vector<24xi1> into i1
      memref.copy %alloc_12, %alloc_5 : memref<5x16xi1> to memref<5x16xi1>
      %267 = vector.broadcast %true_36 : i1 to vector<i1>
      %268 = vector.transfer_write %267, %12[%c10] : vector<i1>, tensor<6xi1>
      %269 = arith.xori %c1677136924_i64, %c1114120595_i64 : i64
      affine.yield %c1114120595_i64 : i64
    }
    memref.assume_alignment %alloc_11, 4 : memref<5x5x3xi16>
    %187 = vector.broadcast %extracted : f32 to vector<5x16xf32>
    %188 = vector.fma %187, %187, %187 : vector<5x16xf32>
    %189 = math.round %156 : tensor<5x16xf32>
    %190 = bufferization.clone %alloc_10 : memref<5x16xi64> to memref<5x16xi64>
    %rank_43 = tensor.rank %12 : tensor<6xi1>
    %expanded_44 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<5x16xf16> into tensor<5x16x1xf16>
    %cst_45 = arith.constant 1.000000e+00 : f16
    %191 = vector.transfer_read %11[%131, %86], %cst_45 : tensor<5x16xf16>, vector<f16>
    %192 = memref.realloc %alloc_8 : memref<6xf16> to memref<6xf16>
    %collapsed_46 = tensor.collapse_shape %expanded_44 [[0, 1], [2]] : tensor<5x16x1xf16> into tensor<80x1xf16>
    %193 = vector.broadcast %cst_41 : f32 to vector<6xf32>
    %194 = vector.fma %193, %193, %193 : vector<6xf32>
    %195 = arith.minf %extracted, %cst_1 : f32
    %196 = math.ipowi %4, %4 : tensor<5x16xi32>
    %197 = arith.negf %cst : f32
    %expanded_47 = tensor.expand_shape %collapsed_46 [[0], [1, 2]] : tensor<80x1xf16> into tensor<80x1x1xf16>
    %198 = bufferization.clone %alloc_10 : memref<5x16xi64> to memref<5x16xi64>
    bufferization.dealloc_tensor %expanded_47 : tensor<80x1x1xf16>
    %199 = vector.load %alloc_10[%c1, %c15] : memref<5x16xi64>, vector<5x16xi64>
    %200 = arith.remui %false_2, %true_21 : i1
    %201 = affine.apply affine_map<(d0) -> (-8)>(%134)
    %202 = arith.shrui %true, %false_4 : i1
    memref.alloca_scope  {
      %264 = index.divu %131, %c5
      %265 = math.atan2 %9, %11 : tensor<5x16xf16>
      %266 = math.absf %123 : tensor<5x16xf16>
      %267 = math.floor %cst_45 : f16
      %268 = math.exp2 %collapsed_46 : tensor<80x1xf16>
      %269 = arith.xori %c1_i64, %c2080235350_i64 : i64
      %270 = arith.remui %false_2, %true_36 : i1
      %c0_i32 = arith.constant 0 : i32
      %271 = vector.transfer_read %expanded[%rank_43, %102], %c0_i32 : tensor<6x1xi32>, vector<16xi32>
      %272 = math.sqrt %9 : tensor<5x16xf16>
      %273 = math.fma %156, %156, %156 : tensor<5x16xf32>
      %274 = math.rsqrt %expanded_44 : tensor<5x16x1xf16>
      %275 = vector.shuffle %92, %93 [2, 3, 5, 8, 9, 10, 11, 14, 15, 16, 18, 20, 22, 23, 24, 25, 26, 27, 30] : vector<16x5xf32>, vector<16x5xf32>
      %276 = arith.shli %c1052418246_i32, %c1736010049_i32 : i32
      %cst_53 = arith.constant 1.000000e+00 : f16
      %277 = vector.transfer_read %alloc_7[%52, %c8], %cst_53 : memref<16x5xf16>, vector<f16>
      %expanded_54 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<5x16xi64> into tensor<5x16x1xi64>
      %278 = arith.cmpi ne, %false_0, %false_0 : i1
      %279 = affine.load %alloc_15[%c11, %c2, %c4] : memref<5x5x3xf32>
      %280 = bufferization.to_memref %7 : memref<6xf32>
      %281 = vector.broadcast %cst_53 : f16 to vector<5xf16>
      %282 = vector.broadcast %true : i1 to vector<5xi1>
      %283 = vector.maskedload %alloc_7[%c14, %c1], %282, %281 : memref<16x5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %284 = math.fma %collapsed, %collapsed, %collapsed : tensor<80xf16>
      %285 = vector.broadcast %c1114120595_i64 : i64 to vector<5xi64>
      %286 = vector.maskedload %alloc_10[%c4, %c8], %282, %285 : memref<5x16xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %287 = vector.broadcast %c0_i32 : i32 to vector<5x5x3xi32>
      %288 = math.log1p %cst_45 : f16
      %cast_55 = tensor.cast %collapsed_32 : tensor<80xi32> to tensor<?xi32>
      %289 = bufferization.clone %alloc_12 : memref<5x16xi1> to memref<5x16xi1>
      %290 = math.sqrt %7 : tensor<6xf32>
      %291 = math.cos %cst_41 : f32
      %false_56 = index.bool.constant false
      %292 = math.atan2 %9, %123 : tensor<5x16xf16>
      %293 = vector.broadcast %cst_53 : f16 to vector<6xf16>
      %294 = vector.gather %162[%rank, %rank_43, %164] [%64], %65, %293 : memref<5x5x3xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      %295 = math.rsqrt %expanded_30 : tensor<6x1xf32>
      %296 = bufferization.clone %alloc_20 : memref<i64> to memref<i64>
    }
    %203 = index.castu %175 : index to i32
    %204 = memref.realloc %alloc_8 : memref<6xf16> to memref<16xf16>
    %205 = affine.apply affine_map<(d0) -> ((d0 floordiv 128 + d0) floordiv 32)>(%62)
    %206 = index.ceildivs %c3, %102
    %207 = index.castu %c1319773611_i32 : i32 to index
    %208 = vector.broadcast %cst : f32 to vector<16xf32>
    %dest_48, %accumulated_value_49 = vector.scan <minf>, %188, %208 {inclusive = false, reduction_dim = 0 : i64} : vector<5x16xf32>, vector<16xf32>
    %209 = math.log1p %cst_45 : f16
    %210 = vector.bitcast %76 : vector<5x5x3xi1> to vector<5x5x3xi1>
    %c1_i64_50 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %211 = vector.transfer_read %collapsed_23[%c8], %c0_i64 : tensor<80xi64>, vector<i64>
    %212 = vector.broadcast %c1_i64_50 : i64 to vector<6x3xi64>
    %213 = vector.transfer_write %212, %2[%c13, %102, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x3xi64>, tensor<5x5x3xi64>
    %214 = index.divu %c1, %c12
    %215 = math.fma %collapsed, %collapsed, %collapsed : tensor<80xf16>
    %216 = arith.shrui %c1736010049_i32, %c1736010049_i32 : i32
    %217 = math.exp2 %7 : tensor<6xf32>
    %218 = tensor.empty() : tensor<3x5x5xi64>
    %219 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%218 : tensor<3x5x5xi64>) outs(%179 : tensor<5x5x3xi64>) {
    ^bb0(%in: i64, %out: i64):
      %264 = math.fma %9, %123, %11 : tensor<5x16xf16>
      %265 = affine.min affine_map<(d0, d1, d2) -> (d0 * 4, d0 floordiv 8, -(d2 + 8), d1)>(%47, %205, %c0)
      %266 = arith.remui %false_26, %false_3 : i1
      %267 = scf.while (%arg2 = %90) : (vector<5x5x3xf32>) -> vector<5x5x3xf32> {
        %297 = math.log2 %135 : tensor<16x5xf16>
        %298 = math.log %156 : tensor<5x16xf32>
        %true_54 = arith.constant true
        %299 = vector.transfer_read %8[%175, %c2], %true_54 : tensor<5x16xi1>, vector<3xi1>
        %c0_i32 = arith.constant 0 : i32
        %300 = vector.transfer_read %1[%35], %c0_i32 : tensor<6xi32>, vector<i32>
        %301 = math.atan2 %cst_1, %extracted : f32
        %302 = vector.bitcast %210 : vector<5x5x3xi1> to vector<5x5x3xi1>
        affine.store %cst_41, %alloc_15[%c13, %c8, %c14] : memref<5x5x3xf32>
        %303 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c14, %c10, %c5)
        scf.condition(%false) %91 : vector<5x5x3xf32>
      } do {
      ^bb0(%arg2: vector<5x5x3xf32>):
        %297 = math.ctlz %c730999098_i64 : i64
        %298 = arith.maxui %false_0, %false_4 : i1
        %299 = vector.insertelement %c1736010049_i32, %24[%206 : index] : vector<1xi32>
        %false_54 = index.bool.constant false
        %300 = math.log2 %9 : tensor<5x16xf16>
        %301 = math.log2 %cst_24 : f16
        %302 = math.log10 %cst_45 : f16
        %303 = math.floor %cst : f32
        %collapsed_55 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        %304 = vector.create_mask %c5, %62, %214 : vector<5x5x3xi1>
        %305 = affine.min affine_map<(d0, d1) -> (d0)>(%c3, %c14)
        %306 = bufferization.to_tensor %alloc_12 : memref<5x16xi1>
        affine.store %extracted, %alloc_15[%c15, %c10, %c3] : memref<5x5x3xf32>
        %307 = arith.divsi %true, %false_2 : i1
        %308 = bufferization.clone %alloc_8 : memref<6xf16> to memref<6xf16>
        %309 = index.divu %159, %c15
        scf.yield %90 : vector<5x5x3xf32>
      }
      %268 = vector.broadcast %c730999098_i64 : i64 to vector<6x6xi64>
      %269 = vector.outerproduct %177, %177, %268 {kind = #vector.kind<maxui>} : vector<6xi64>, vector<6xi64>
      %270 = vector.broadcast %true_36 : i1 to vector<6xi1>
      %271 = vector.broadcast %c2080235350_i64 : i64 to vector<16xi64>
      %272 = vector.maskedload %alloc_10[%c1, %c5], %88, %271 : memref<5x16xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      %273 = vector.load %alloc_13[%c2, %c1] : memref<5x16xi16>, vector<16x5xi16>
      %274 = affine.for %arg2 = 0 to 127 iter_args(%arg3 = %9) -> (tensor<5x16xf16>) {
        affine.yield %9 : tensor<5x16xf16>
      }
      %275 = arith.remf %cst_45, %cst_24 : f16
      %276 = vector.broadcast %c1052418246_i32 : i32 to vector<3x3xi32>
      %277 = vector.outerproduct %19, %19, %276 {kind = #vector.kind<add>} : vector<3xi32>, vector<3xi32>
      %278 = index.castu %false_2 : i1 to index
      %279 = math.absi %splat : tensor<5x16xi64>
      %280 = math.roundeven %9 : tensor<5x16xf16>
      %281 = math.fma %7, %7, %17 : tensor<6xf32>
      %282 = affine.min affine_map<(d0) -> ((-d0 - 1) ceildiv 64 + (d0 floordiv 16 + 8) * 128)>(%86)
      vector.print %88 : vector<16xi1>
      %283 = math.sqrt %11 : tensor<5x16xf16>
      %284 = math.fma %156, %156, %156 : tensor<5x16xf32>
      %285 = arith.minsi %29, %c1319773611_i32 : i32
      %286 = math.absi %c1052418246_i32 : i32
      %287 = index.castu %c1_i64_50 : i64 to index
      %alloc_53 = memref.alloc() : memref<6xf16>
      %288 = arith.maxsi %false_2, %false_0 : i1
      %289 = math.rsqrt %cst_41 : f32
      %290 = index.castu %105 : index to i32
      %291 = math.log2 %17 : tensor<6xf32>
      %292 = memref.load %alloc_11[%c3, %c3, %c1] : memref<5x5x3xi16>
      %293 = math.ctlz %12 : tensor<6xi1>
      %294 = arith.addf %cst_45, %cst_45 : f16
      %295 = math.rsqrt %7 : tensor<6xf32>
      %296 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%50 : tensor<5x5xi1>) outs(%6 : tensor<5x5x3xi1>) {
      ^bb0(%in_54: i1, %out_55: i1):
        %297 = vector.broadcast %true_27 : i1 to vector<i1>
        %298 = vector.transfer_write %297, %12[%c3] : vector<i1>, tensor<6xi1>
        %299 = index.castu %205 : index to i32
        %300 = math.log2 %cst_45 : f16
        %301 = math.ctlz %20 : tensor<6xi64>
        %302 = arith.minf %cst_24, %cst_45 : f16
        %303 = math.cttz %1 : tensor<6xi32>
        %304 = bufferization.clone %alloc_16 : memref<5x16xi32> to memref<5x16xi32>
        %305 = arith.remsi %c730999098_i64, %c730999098_i64 : i64
        %rank_56 = tensor.rank %13 : tensor<16x5xi16>
        %306 = affine.max affine_map<(d0, d1) -> (d0 - d1 floordiv 2 + 64)>(%rank_43, %c11)
        %307 = arith.remui %false, %false_26 : i1
        %308 = vector.reduction <maxsi>, %177 : vector<6xi64> into i64
        %309 = arith.xori %in, %c1_i64 : i64
        %310 = vector.splat %c1736010049_i32 : vector<5x5x3xi32>
        %311 = index.floordivs %c9, %c11
        %312 = arith.maxsi %false_4, %false_26 : i1
        %313 = arith.remsi %true, %in_54 : i1
        %314 = math.tan %cst_24 : f16
        %from_elements_57 = tensor.from_elements %c1319773611_i32, %171, %29, %c1052418246_i32, %c1052418246_i32, %c1319773611_i32 : tensor<6xi32>
        %cast_58 = tensor.cast %5 : tensor<5x16xi64> to tensor<?x?xi64>
        %315 = bufferization.clone %alloc_17 : memref<16x5xi64> to memref<16x5xi64>
        %316 = vector.broadcast %c1_i64_50 : i64 to vector<16x16xi64>
        %317 = vector.outerproduct %272, %272, %316 {kind = #vector.kind<minui>} : vector<16xi64>, vector<16xi64>
        %318 = math.roundeven %collapsed : tensor<80xf16>
        %319 = arith.shrui %true_36, %false_3 : i1
        %320 = arith.divsi %73, %c-14964_i16 : i16
        %321 = math.log2 %123 : tensor<5x16xf16>
        %322 = vector.broadcast %201 : index to vector<5xindex>
        %323 = vector.broadcast %false_4 : i1 to vector<5xi1>
        %324 = vector.broadcast %29 : i32 to vector<5xi32>
        vector.scatter %alloc_16[%c2, %c14] [%322], %323, %324 : memref<5x16xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %325 = math.absi %73 : i16
        %326 = arith.negf %extracted : f32
        %327 = vector.broadcast %27 : i16 to vector<5x16xi16>
        %328 = arith.divf %cst_24, %cst_45 : f16
        %329 = arith.xori %c1736010049_i32, %29 : i32
        linalg.yield %true_36 : i1
      } -> tensor<5x5x3xi1>
      linalg.yield %c1_i64_50 : i64
    } -> tensor<5x5x3xi64>
    %220 = scf.execute_region -> tensor<6xi64> {
      %rank_53 = tensor.rank %cast_25 : tensor<?x?xi1>
      %264 = vector.transpose %188, [1, 0] : vector<5x16xf32> to vector<16x5xf32>
      %265 = vector.insertelement %c1319773611_i32, %111[%69 : index] : vector<1xi32>
      %266 = math.log2 %156 : tensor<5x16xf32>
      %267 = math.log1p %cst_45 : f16
      %268 = memref.alloca_scope  -> (f16) {
        %281 = arith.ori %171, %c1319773611_i32 : i32
        %282 = math.cttz %21 : tensor<i64>
        %283 = math.ctpop %1 : tensor<6xi32>
        %284 = index.castu %62 : index to i32
        vector.print %111 : vector<1xi32>
        %285 = index.ceildivu %47, %c7
        %collapsed_54 = tensor.collapse_shape %expanded [[0, 1]] : tensor<6x1xi32> into tensor<6xi32>
        %286 = vector.broadcast %c1052418246_i32 : i32 to vector<6x6xi32>
        %287 = vector.outerproduct %64, %64, %286 {kind = #vector.kind<maxui>} : vector<6xi32>, vector<6xi32>
        %288 = arith.minsi %false_26, %false_26 : i1
        %289 = vector.splat %false : vector<6xi1>
        %290 = math.atan2 %collapsed, %collapsed : tensor<80xf16>
        %291 = arith.shrui %false_3, %true : i1
        %292 = index.ceildivs %c9, %c10
        %293 = vector.create_mask %206 : vector<6xi1>
        %294 = math.powf %expanded_47, %expanded_47 : tensor<80x1x1xf16>
        %expanded_55 = tensor.expand_shape %7 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        memref.store %73, %alloc_13[%c0, %c7] : memref<5x16xi16>
        %295 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 16, d0 ceildiv 16 - d1 - (d0 ceildiv 16 - d1 + d0) ceildiv 4, d0 ceildiv 16 - d1 - (d0 ceildiv 16 - d1 + d0) ceildiv 4, (d0 ceildiv 16 - d1 + d0) ceildiv 4)>(%47, %c1)
        %296 = vector.broadcast %c2080235350_i64 : i64 to vector<3xi64>
        %297 = vector.insert %296, %212 [2] : vector<3xi64> into vector<6x3xi64>
        %298 = vector.broadcast %c1319773611_i32 : i32 to vector<6x6xi32>
        %299 = vector.outerproduct %66, %64, %298 {kind = #vector.kind<mul>} : vector<6xi32>, vector<6xi32>
        %300 = arith.ceildivsi %false_3, %true_27 : i1
        %301 = arith.shrsi %false_3, %true_36 : i1
        %302 = math.log1p %7 : tensor<6xf32>
        %303 = math.fma %cst, %extracted, %cst : f32
        %304 = tensor.empty() : tensor<5x16x1xi32>
        %305 = math.fpowi %expanded_44, %304 : tensor<5x16x1xf16>, tensor<5x16x1xi32>
        %306 = math.log10 %9 : tensor<5x16xf16>
        %307 = math.absf %135 : tensor<16x5xf16>
        %308 = math.ctlz %18 : tensor<16x5xi1>
        %rank_56 = tensor.rank %5 : tensor<5x16xi64>
        %309 = math.absf %156 : tensor<5x16xf32>
        %310 = vector.reduction <xor>, %111 : vector<1xi32> into i32
        %311 = bufferization.clone %alloc_12 : memref<5x16xi1> to memref<5x16xi1>
        memref.alloca_scope.return %cst_24 : f16
      }
      %269 = math.tan %7 : tensor<6xf32>
      %270 = vector.broadcast %cst : f32 to vector<f32>
      %271 = vector.transfer_write %270, %16[%205] : vector<f32>, tensor<6xf32>
      %272 = vector.broadcast %c1052418246_i32 : i32 to vector<16xi32>
      %273 = vector.maskedload %alloc_16[%c4, %c14], %88, %272 : memref<5x16xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
      %274 = math.atan2 %9, %123 : tensor<5x16xf16>
      %275 = math.roundeven %7 : tensor<6xf32>
      %276 = index.sizeof
      %277 = arith.divui %27, %c-14964_i16 : i16
      %278 = vector.matrix_multiply %273, %19 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 3 : i32} : (vector<16xi32>, vector<3xi32>) -> vector<48xi32>
      %279 = arith.cmpi ule, %c1_i64, %c1114120595_i64 : i64
      %280 = math.floor %11 : tensor<5x16xf16>
      scf.yield %10 : tensor<6xi64>
    }
    %221 = bufferization.to_memref %50 : memref<5x5xi1>
    memref.tensor_store %10, %alloc_18 : memref<6xi64>
    %222 = index.castu %105 : index to i32
    %223 = math.absf %expanded_44 : tensor<5x16x1xf16>
    bufferization.dealloc_tensor %22 : tensor<i64>
    %224 = arith.maxsi %c1736010049_i32, %c1052418246_i32 : i32
    %225 = memref.alloca_scope  -> (f32) {
      %264 = arith.ceildivsi %true_21, %false_0 : i1
      %265 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 4)>(%c3, %c5, %c7, %c13)
      %collapsed_53 = tensor.collapse_shape %cast_39 [[0, 1]] : tensor<?x?xi1> into tensor<?xi1>
      %266 = math.tan %collapsed : tensor<80xf16>
      %267 = math.absi %22 : tensor<i64>
      %268 = math.fma %11, %9, %11 : tensor<5x16xf16>
      %269 = math.round %expanded_30 : tensor<6x1xf32>
      %270 = index.ceildivs %175, %214
      %cst_54 = arith.constant 1.000000e+00 : f32
      %271 = vector.transfer_read %17[%c15], %cst_54 : tensor<6xf32>, vector<f32>
      %272 = arith.divsi %171, %c1052418246_i32 : i32
      %273 = vector.broadcast %c1114120595_i64 : i64 to vector<16xi64>
      %274 = vector.maskedload %alloc_17[%c2, %c0], %88, %273 : memref<16x5xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      vector.print %173 : vector<24xi1>
      %275 = bufferization.to_tensor %alloc_9 : memref<5x5x3xi64>
      %276 = arith.xori %29, %171 : i32
      %277 = vector.broadcast %cst_24 : f16 to vector<6xf16>
      %278 = vector.gather %123[%c10, %rank_43] [%64], %65, %277 : tensor<5x16xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      %279 = math.round %expanded_30 : tensor<6x1xf32>
      %280 = arith.shrsi %false_4, %false_0 : i1
      %281 = arith.ceildivsi %false_4, %true : i1
      %282 = arith.remsi %27, %73 : i16
      %283 = vector.broadcast %134 : index to vector<6xindex>
      vector.scatter %alloc_16[%c3, %c4] [%283], %65, %64 : memref<5x16xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
      %284 = vector.gather %3[%86, %c10] [%64], %65, %66 : tensor<16x5xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %285 = index.ceildivs %c7, %105
      %286 = math.ipowi %false_2, %false_3 : i1
      %287 = arith.shrsi %c1319773611_i32, %171 : i32
      %288 = vector.broadcast %cst : f32 to vector<16x5xf32>
      %289 = vector.fma %288, %93, %92 : vector<16x5xf32>
      %290 = tensor.empty() : tensor<5x5xf16>
      %291 = linalg.matmul ins(%11, %135 : tensor<5x16xf16>, tensor<16x5xf16>) outs(%290 : tensor<5x5xf16>) -> tensor<5x5xf16>
      %292 = arith.subi %c1052418246_i32, %c1319773611_i32 : i32
      %293 = arith.remf %cst_24, %cst_24 : f16
      affine.store %cst_41, %alloc_14[%c15, %c4, %c11] : memref<5x5x3xf32>
      %294 = arith.negf %cst_45 : f16
      %295 = math.fpowi %9, %4 : tensor<5x16xf16>, tensor<5x16xi32>
      %296 = vector.bitcast %157 : vector<16x5xi32> to vector<16x5xf32>
      memref.alloca_scope.return %cst_54 : f32
    }
    %226 = index.ceildivs %c10, %159
    %227 = math.log1p %16 : tensor<6xf32>
    %228 = affine.min affine_map<(d0, d1) -> (d1 - (-d1 + (-d1) mod 4 - d1))>(%86, %c2)
    %229 = vector.shuffle %91, %90 [0, 1, 2, 3, 4, 5, 6, 8, 9] : vector<5x5x3xf32>, vector<5x5x3xf32>
    %230 = memref.load %alloc_6[%c15, %c3] : memref<16x5xi32>
    %231 = arith.shli %true_27, %false_0 : i1
    %232 = math.round %cst_24 : f16
    %233 = tensor.empty() : tensor<5x5xi32>
    %234 = linalg.matmul ins(%4, %3 : tensor<5x16xi32>, tensor<16x5xi32>) outs(%233 : tensor<5x5xi32>) -> tensor<5x5xi32>
    %235 = vector.broadcast %73 : i16 to vector<16xi16>
    %236 = vector.maskedload %alloc[%c15, %c3], %88, %235 : memref<16x5xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
    %237 = math.floor %collapsed : tensor<80xf16>
    %238 = index.sub %226, %rank_43
    %239 = arith.divui %c1_i64_50, %c1677136924_i64 : i64
    %240 = index.ceildivs %c12, %175
    %241 = arith.remf %cst_24, %cst_45 : f16
    %242 = index.sub %86, %c0
    %from_elements = tensor.from_elements %cst_24, %cst_24, %cst_24, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_45, %cst_45, %cst_24, %cst_24, %cst_24, %cst_45, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24, %cst_45, %cst_45, %cst_24, %cst_45, %cst_45, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_24, %cst_45, %cst_24, %cst_24, %cst_45, %cst_45, %cst_45, %cst_24, %cst_45, %cst_45, %cst_24, %cst_24, %cst_45, %cst_45, %cst_45, %cst_24, %cst_24, %cst_45, %cst_45, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24, %cst_24, %cst_45, %cst_45, %cst_24, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24, %cst_45, %cst_24, %cst_24, %cst_45, %cst_45, %cst_45, %cst_45, %cst_24, %cst_45, %cst_24, %cst_24, %cst_24 : tensor<5x16xf16>
    %243 = arith.muli %c1114120595_i64, %c1677136924_i64 : i64
    %244 = arith.cmpi ugt, %false, %false : i1
    %245 = math.ctpop %8 : tensor<5x16xi1>
    %246 = vector.flat_transpose %176 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
    %247 = math.log1p %cst_24 : f16
    %248 = vector.bitcast %182 : vector<1xi32> to vector<1xi32>
    memref.tensor_store %2, %alloc_9 : memref<5x5x3xi64>
    %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<5x5x3xi64>) {
    ^bb0(%out: i64):
      %264 = math.absi %false_0 : i1
      %expanded_53 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<5x16xi1> into tensor<5x16x1xi1>
      %265 = index.castu %false_26 : i1 to index
      %266 = arith.remf %225, %cst_1 : f32
      %267 = arith.xori %c1677136924_i64, %out : i64
      %268 = memref.atomic_rmw ori %c1677136924_i64, %alloc_9[%c0, %c3, %c1] : (i64, memref<5x5x3xi64>) -> i64
      vector.print %236 : vector<16xi16>
      %expanded_54 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<5x16xi1> into tensor<5x16x1xi1>
      %269 = arith.remf %cst, %cst : f32
      %270 = arith.shrsi %true_21, %false_2 : i1
      %271 = vector.splat %228 : vector<16x5xindex>
      %272 = vector.matrix_multiply %19, %111 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
      %273 = vector.gather %156[%159, %206] [%75], %74, %91 : tensor<5x16xf32>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xf32> into vector<5x5x3xf32>
      %274 = arith.minsi %c1_i64, %c1677136924_i64 : i64
      memref.store %c1114120595_i64, %198[%c2, %c5] : memref<5x16xi64>
      %275 = vector.matrix_multiply %19, %24 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<1xi32>) -> vector<3xi32>
      %276 = arith.muli %c-14964_i16, %73 : i16
      %277 = math.cttz %21 : tensor<i64>
      %278 = index.ceildivu %86, %c15
      %279 = math.fma %225, %cst_41, %225 : f32
      %280 = index.ceildivs %214, %c4
      %281 = math.fpowi %cst_24, %c1052418246_i32 : f16, i32
      vector.print %199 : vector<5x16xi64>
      %282 = math.fpowi %9, %4 : tensor<5x16xf16>, tensor<5x16xi32>
      %rank_55 = tensor.rank %16 : tensor<6xf32>
      %283 = math.log2 %extracted : f32
      %284 = math.exp %7 : tensor<6xf32>
      %285 = math.log10 %cst : f32
      %286 = memref.alloca_scope  -> (memref<5x16xf16>) {
        %292 = vector.reduction <maxui>, %19 : vector<3xi32> into i32
        %293 = arith.remf %cst_41, %extracted : f32
        %c-7501_i16 = arith.constant -7501 : i16
        %294 = math.log10 %9 : tensor<5x16xf16>
        %295 = vector.insertelement %true, %173[%c4 : index] : vector<24xi1>
        %296 = math.sqrt %expanded_47 : tensor<80x1x1xf16>
        %297 = arith.minsi %c1_i64, %out : i64
        %298 = arith.remf %cst_24, %cst_45 : f16
        %299 = bufferization.clone %alloc_18 : memref<6xi64> to memref<6xi64>
        %300 = math.round %cst_1 : f32
        %301 = memref.load %221[%c3, %c1] : memref<5x5xi1>
        %302 = arith.cmpi slt, %c1677136924_i64, %c1_i64_50 : i64
        %303 = math.fma %expanded_47, %expanded_47, %expanded_47 : tensor<80x1x1xf16>
        %304 = arith.divf %225, %cst_41 : f32
        %305 = memref.load %alloc_15[%c4, %c4, %c2] : memref<5x5x3xf32>
        %from_elements_56 = tensor.from_elements %73, %73, %73, %c-14964_i16, %27, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %27, %73, %c-14964_i16, %73, %27, %c-14964_i16, %27, %73, %73, %c-14964_i16, %27, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %c-14964_i16, %73, %73, %c-14964_i16, %73, %c-14964_i16, %73, %73, %73, %27, %c-14964_i16, %27, %c-14964_i16, %73, %27, %c-14964_i16, %27, %73, %27, %73, %c-14964_i16, %73, %c-14964_i16, %73, %c-14964_i16, %27, %73, %c-14964_i16, %c-14964_i16, %27, %27, %27, %27, %c-14964_i16, %c-14964_i16, %73, %27, %27, %73, %c-14964_i16, %c-14964_i16, %73, %c-14964_i16, %27, %c-14964_i16, %c-14964_i16, %c-14964_i16, %73, %27, %27, %27 : tensor<5x5x3xi16>
        %306 = math.floor %16 : tensor<6xf32>
        %307 = vector.broadcast %false_3 : i1 to vector<6xi1>
        %308 = arith.remsi %27, %27 : i16
        %309 = index.divu %c12, %62
        %310 = bufferization.to_tensor %198 : memref<5x16xi64>
        %311 = vector.broadcast %cst : f32 to vector<f32>
        %312 = vector.transfer_write %311, %16[%c8] : vector<f32>, tensor<6xf32>
        %313 = math.ipowi %c1319773611_i32, %c1052418246_i32 : i32
        %alloca = memref.alloca() : memref<6xi1>
        %314 = math.log %expanded_47 : tensor<80x1x1xf16>
        %315 = math.log10 %collapsed : tensor<80xf16>
        %cast_57 = tensor.cast %12 : tensor<6xi1> to tensor<?xi1>
        %316 = arith.remsi %true_27, %false_0 : i1
        %317 = affine.min affine_map<(d0) -> (-(d0 mod 128) + d0, -65, (d0 ceildiv 128) ceildiv 128)>(%c14)
        %318 = math.round %expanded_30 : tensor<6x1xf32>
        %319 = arith.divsi %c730999098_i64, %c1677136924_i64 : i64
        %320 = vector.broadcast %true_21 : i1 to vector<i1>
        %321 = vector.transfer_write %320, %transposed[%317, %265] : vector<i1>, tensor<16x5xi1>
        %alloc_58 = memref.alloc() : memref<5x16xf16>
        memref.alloca_scope.return %alloc_58 : memref<5x16xf16>
      }
      %287 = index.maxu %c6, %265
      %288 = math.absi %false_0 : i1
      %289 = vector.broadcast %cst_45 : f16 to vector<5xf16>
      %290 = vector.broadcast %true_21 : i1 to vector<5xi1>
      %291 = vector.maskedload %alloc_7[%c8, %c0], %290, %289 : memref<16x5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      linalg.yield %c2080235350_i64 : i64
    } -> tensor<5x5x3xi64>
    memref.assume_alignment %alloc_17, 8 : memref<16x5xi64>
    %250 = math.cttz %220 : tensor<6xi64>
    %251 = vector.broadcast %c1114120595_i64 : i64 to vector<i64>
    %252 = vector.transfer_write %251, %collapsed_23[%c2] : vector<i64>, tensor<80xi64>
    %253 = index.sizeof
    %254 = vector.broadcast %cst_24 : f16 to vector<3xf16>
    %255 = vector.broadcast %false_0 : i1 to vector<3xi1>
    %256 = vector.maskedload %alloc_7[%c7, %c1], %255, %254 : memref<16x5xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %rank_51 = tensor.rank %10 : tensor<6xi64>
    %257 = scf.execute_region -> memref<16x5xi1> {
      %264 = affine.for %arg2 = 0 to 71 iter_args(%arg3 = %from_elements) -> (tensor<5x16xf16>) {
        affine.yield %11 : tensor<5x16xf16>
      }
      %265 = math.log10 %collapsed_46 : tensor<80x1xf16>
      %266 = vector.insert %cst_45, %254 [1] : f16 into vector<3xf16>
      %267 = index.ceildivs %134, %c8
      %268 = math.round %7 : tensor<6xf32>
      %269 = bufferization.clone %alloc_15 : memref<5x5x3xf32> to memref<5x5x3xf32>
      %270 = vector.transpose %24, [0] : vector<1xi32> to vector<1xi32>
      %rank_53 = tensor.rank %8 : tensor<5x16xi1>
      %271 = math.tanh %cst_1 : f32
      %272 = index.sizeof
      %273 = arith.maxui %true_36, %true : i1
      %274 = bufferization.to_memref %8 : memref<5x16xi1>
      memref.store %c1677136924_i64, %alloc_10[%c2, %c6] : memref<5x16xi64>
      %275 = index.castu %false_26 : i1 to index
      %276 = index.divu %228, %c8
      %collapsed_54 = tensor.collapse_shape %4 [[0, 1]] : tensor<5x16xi32> into tensor<80xi32>
      %alloc_55 = memref.alloc() : memref<16x5xi1>
      scf.yield %alloc_55 : memref<16x5xi1>
    }
    %258 = index.ceildivs %52, %c3
    %259 = tensor.empty() : tensor<6xi1>
    %260 = linalg.copy ins(%12 : tensor<6xi1>) outs(%259 : tensor<6xi1>) -> tensor<6xi1>
    %alloc_52 = memref.alloc() : memref<5x16xf16>
    linalg.transpose ins(%alloc_7 : memref<16x5xf16>) outs(%alloc_52 : memref<5x16xf16>) permutation = [1, 0] 
    %261 = tensor.empty() : tensor<5xi32>
    %reduced = linalg.reduce ins(%4 : tensor<5x16xi32>) outs(%261 : tensor<5xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %264 = math.cttz %27 : i16
        %265 = arith.divui %c1114120595_i64, %c1677136924_i64 : i64
        %266 = arith.negf %cst : f32
        %267 = math.ipowi %220, %20 : tensor<6xi64>
        %268 = vector.bitcast %210 : vector<5x5x3xi1> to vector<5x5x3xi1>
        %269 = arith.remf %cst_24, %cst_45 : f16
        scf.index_switch %134 
        case 1 {
          %271 = arith.xori %true_27, %false_2 : i1
          %272 = index.sub %c2, %c6
          %273 = math.log1p %cst_41 : f32
          %274 = arith.cmpi ugt, %in, %in : i32
          %cast_53 = tensor.cast %6 : tensor<5x5x3xi1> to tensor<?x?x?xi1>
          %275 = affine.apply affine_map<(d0) -> ((d0 floordiv 128 + d0) floordiv 32)>(%c15)
          %276 = arith.ceildivsi %true_36, %false_3 : i1
          %277 = index.ceildivs %c3, %c12
          %278 = tensor.empty() : tensor<5x16xi16>
          %279 = vector.broadcast %73 : i16 to vector<5x16xi16>
          %280 = vector.broadcast %false_0 : i1 to vector<5x16xi1>
          %281 = vector.broadcast %c1052418246_i32 : i32 to vector<5x16xi32>
          %282 = vector.gather %278[%rank, %69] [%281], %280, %279 : tensor<5x16xi16>, vector<5x16xi32>, vector<5x16xi1>, vector<5x16xi16> into vector<5x16xi16>
          %283 = vector.gather %12[%205] [%75], %76, %210 : tensor<6xi1>, vector<5x5x3xi32>, vector<5x5x3xi1>, vector<5x5x3xi1> into vector<5x5x3xi1>
          %284 = index.divu %62, %258
          %285 = arith.divf %cst_45, %cst_24 : f16
          %286 = vector.broadcast %c1677136924_i64 : i64 to vector<16x5xi64>
          %287 = arith.remsi %c730999098_i64, %c1_i64 : i64
          %288 = vector.transpose %64, [0] : vector<6xi32> to vector<6xi32>
          %289 = arith.maxui %c1_i64, %c2080235350_i64 : i64
          scf.yield
        }
        case 2 {
          memref.assume_alignment %alloc_14, 8 : memref<5x5x3xf32>
          %271 = vector.bitcast %76 : vector<5x5x3xi1> to vector<5x5x3xi1>
          %272 = vector.insertelement %init, %111[%207 : index] : vector<1xi32>
          %273 = bufferization.clone %alloc_8 : memref<6xf16> to memref<6xf16>
          %274 = math.absf %collapsed : tensor<80xf16>
          %cast_53 = tensor.cast %0 : tensor<5x16xi64> to tensor<?x?xi64>
          %275 = math.log %7 : tensor<6xf32>
          %276 = math.sqrt %cst : f32
          %277 = math.sqrt %9 : tensor<5x16xf16>
          %278 = vector.maskedload %alloc_6[%c12, %c0], %255, %19 : memref<16x5xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
          %279 = arith.cmpf false, %cst_41, %cst_41 : f32
          %280 = math.atan2 %expanded_30, %expanded_30 : tensor<6x1xf32>
          %281 = math.ctlz %220 : tensor<6xi64>
          %282 = math.ctpop %259 : tensor<6xi1>
          %283 = arith.cmpi sgt, %171, %171 : i32
          %284 = arith.cmpf une, %cst_41, %extracted : f32
          scf.yield
        }
        default {
          %271 = bufferization.to_tensor %alloc_8 : memref<6xf16>
          %272 = vector.broadcast %c2080235350_i64 : i64 to vector<16x5xi64>
          %273 = vector.gather %10[%rank_51] [%157], %71, %272 : tensor<6xi64>, vector<16x5xi32>, vector<16x5xi1>, vector<16x5xi64> into vector<16x5xi64>
          %274 = affine.apply affine_map<(d0) -> (-8)>(%151)
          %275 = arith.remui %in, %171 : i32
          %cst_53 = arith.constant 1.000000e+00 : f16
          %276 = vector.transfer_read %9[%69, %240], %cst_53 : tensor<5x16xf16>, vector<6xf16>
          %277 = math.atan2 %cst_24, %cst_24 : f16
          %278 = vector.broadcast %false_3 : i1 to vector<3xi1>
          %279 = vector.transfer_write %278, %50[%205, %86] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<5x5xi1>
          %280 = math.log %225 : f32
          %alloca = memref.alloca() : memref<5x16xf32>
          %281 = arith.ori %c1114120595_i64, %c1677136924_i64 : i64
          %282 = arith.maxui %c1319773611_i32, %171 : i32
          %283 = index.sizeof
          %cast_54 = tensor.cast %collapsed_32 : tensor<80xi32> to tensor<?xi32>
          %284 = arith.maxsi %c1052418246_i32, %171 : i32
          %285 = arith.addf %cst_41, %cst : f32
          %true_55 = index.bool.constant true
        }
        %270 = math.log10 %expanded_44 : tensor<5x16x1xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %262 = scf.parallel (%arg2) = (%105) to (%52) step (%c2) init (%2) -> tensor<5x5x3xi64> {
      %264 = tensor.empty() : tensor<5x5xf16>
      %265 = linalg.matmul ins(%11, %135 : tensor<5x16xf16>, tensor<16x5xf16>) outs(%264 : tensor<5x5xf16>) -> tensor<5x5xf16>
      %266 = math.cos %expanded_47 : tensor<80x1x1xf16>
      %rank_53 = tensor.rank %2 : tensor<5x5x3xi64>
      %267 = index.castu %159 : index to i32
      %268 = bufferization.clone %221 : memref<5x5xi1> to memref<5x5xi1>
      %269 = math.sqrt %11 : tensor<5x16xf16>
      %270 = arith.subi %c1736010049_i32, %29 : i32
      %271 = scf.execute_region -> i64 {
        %280 = math.rsqrt %11 : tensor<5x16xf16>
        %281 = math.exp %11 : tensor<5x16xf16>
        %282 = affine.apply affine_map<(d0, d1) -> (d1 + 2)>(%151, %152)
        %283 = math.sqrt %cst_1 : f32
        %284 = arith.ori %171, %c1052418246_i32 : i32
        %285 = arith.cmpi slt, %true, %true_21 : i1
        %286 = arith.remf %cst_1, %225 : f32
        %287 = index.ceildivs %47, %35
        %288 = index.maxu %c12, %253
        %289 = vector.matrix_multiply %64, %64 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
        %290 = tensor.empty() : tensor<16x16xi1>
        %291 = linalg.matmul ins(%transposed, %8 : tensor<16x5xi1>, tensor<5x16xi1>) outs(%290 : tensor<16x16xi1>) -> tensor<16x16xi1>
        %292 = math.cos %9 : tensor<5x16xf16>
        %rank_55 = tensor.rank %13 : tensor<16x5xi16>
        %293 = arith.muli %c1736010049_i32, %29 : i32
        %294 = math.sqrt %264 : tensor<5x5xf16>
        %295 = tensor.empty() : tensor<5x5xf16>
        %296 = linalg.matmul ins(%11, %135 : tensor<5x16xf16>, tensor<16x5xf16>) outs(%295 : tensor<5x5xf16>) -> tensor<5x5xf16>
        scf.yield %c1677136924_i64 : i64
      }
      %272 = vector.reduction <maxui>, %19 : vector<3xi32> into i32
      %273 = vector.reduction <add>, %193 : vector<6xf32> into f32
      %274 = arith.divf %cst, %225 : f32
      %275 = arith.cmpf false, %cst, %225 : f32
      %276 = math.cos %expanded_44 : tensor<5x16x1xf16>
      %277 = arith.divf %cst_45, %cst_45 : f16
      %rank_54 = tensor.rank %3 : tensor<16x5xi32>
      %278 = arith.negf %extracted : f32
      %279 = tensor.empty() : tensor<5x5x3xi64>
      scf.reduce(%279)  : tensor<5x5x3xi64> {
      ^bb0(%arg3: tensor<5x5x3xi64>, %arg4: tensor<5x5x3xi64>):
        %280 = index.maxu %c2, %131
        %281 = bufferization.clone %alloc_17 : memref<16x5xi64> to memref<16x5xi64>
        %282 = index.ceildivu %242, %258
        %283 = arith.minui %271, %c1_i64_50 : i64
        %284 = bufferization.to_tensor %162 : memref<5x5x3xf16>
        %285 = vector.reduction <add>, %235 : vector<16xi16> into i16
        %286 = arith.maxsi %false_26, %false_3 : i1
        %287 = arith.shrui %false_0, %true : i1
        %288 = tensor.empty() : tensor<5x5x3xi64>
        scf.reduce.return %288 : tensor<5x5x3xi64>
      }
      scf.yield
    }
    %263 = affine.vector_load %alloc_5[%238, %c0] : memref<5x16xi1>, vector<3xi1>
    affine.vector_store %254, %162[%c2, %47, %c7] : memref<5x5x3xf16>, vector<3xf16>
    vector.print %19 : vector<3xi32>
    vector.print %24 : vector<1xi32>
    vector.print %33 : vector<5x5x3xi64>
    vector.print %64 : vector<6xi32>
    vector.print %65 : vector<6xi1>
    vector.print %66 : vector<6xi32>
    vector.print %71 : vector<16x5xi1>
    vector.print %74 : vector<5x5x3xi1>
    vector.print %75 : vector<5x5x3xi32>
    vector.print %76 : vector<5x5x3xi1>
    vector.print %77 : vector<f16>
    vector.print %88 : vector<16xi1>
    vector.print %90 : vector<5x5x3xf32>
    vector.print %91 : vector<5x5x3xf32>
    vector.print %92 : vector<16x5xf32>
    vector.print %93 : vector<16x5xf32>
    vector.print %111 : vector<1xi32>
    vector.print %145 : vector<5x5x3xf16>
    vector.print %146 : vector<5x5x3xf16>
    vector.print %155 : vector<24xi1>
    vector.print %157 : vector<16x5xi32>
    vector.print %158 : vector<16x5xf32>
    vector.print %173 : vector<24xi1>
    vector.print %176 : vector<6xi64>
    vector.print %177 : vector<6xi64>
    vector.print %182 : vector<1xi32>
    vector.print %187 : vector<5x16xf32>
    vector.print %188 : vector<5x16xf32>
    vector.print %193 : vector<6xf32>
    vector.print %194 : vector<6xf32>
    vector.print %199 : vector<5x16xi64>
    vector.print %210 : vector<5x5x3xi1>
    vector.print %212 : vector<6x3xi64>
    vector.print %235 : vector<16xi16>
    vector.print %236 : vector<16xi16>
    vector.print %246 : vector<6xi64>
    vector.print %248 : vector<1xi32>
    vector.print %251 : vector<i64>
    vector.print %254 : vector<3xf16>
    vector.print %255 : vector<3xi1>
    vector.print %256 : vector<3xf16>
    vector.print %263 : vector<3xi1>
    vector.print %false : i1
    vector.print %c1736010049_i32 : i32
    vector.print %c1677136924_i64 : i64
    vector.print %false_0 : i1
    vector.print %c2080235350_i64 : i64
    vector.print %cst : f32
    vector.print %cst_1 : f32
    vector.print %c730999098_i64 : i64
    vector.print %false_2 : i1
    vector.print %c1052418246_i32 : i32
    vector.print %c1319773611_i32 : i32
    vector.print %c1114120595_i64 : i64
    vector.print %false_3 : i1
    vector.print %false_4 : i1
    vector.print %c-14964_i16 : i16
    vector.print %true : i1
    vector.print %27 : i16
    vector.print %29 : i32
    vector.print %c1_i64 : i64
    vector.print %extracted : f32
    vector.print %true_21 : i1
    vector.print %73 : i16
    vector.print %cst_24 : f16
    vector.print %false_26 : i1
    vector.print %true_27 : i1
    vector.print %true_36 : i1
    vector.print %171 : i32
    vector.print %cst_41 : f32
    vector.print %cst_45 : f16
    vector.print %c1_i64_50 : i64
    vector.print %225 : f32
    return %extracted : f32
  }
}
