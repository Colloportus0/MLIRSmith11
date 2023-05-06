module {
  func.func private @func1(%arg0: tensor<3x2xi32>, %arg1: tensor<4x2xi32>) -> tensor<4x2xi64> {
    %cst = arith.constant 1.884800e+04 : f16
    %cst_0 = arith.constant 1.057600e+04 : f16
    %c1625667180_i64 = arith.constant 1625667180 : i64
    %false = arith.constant false
    %c-26608_i16 = arith.constant -26608 : i16
    %c1747437374_i64 = arith.constant 1747437374 : i64
    %cst_1 = arith.constant 0x4D38EF59 : f32
    %false_2 = arith.constant false
    %c9465_i16 = arith.constant 9465 : i16
    %c1300628449_i64 = arith.constant 1300628449 : i64
    %cst_3 = arith.constant 3.110400e+04 : f16
    %cst_4 = arith.constant 3.075200e+04 : f16
    %cst_5 = arith.constant 3.398400e+04 : f16
    %c-19705_i16 = arith.constant -19705 : i16
    %c-30193_i16 = arith.constant -30193 : i16
    %c1112807906_i32 = arith.constant 1112807906 : i32
    %0 = tensor.empty() : tensor<8xf32>
    %1 = tensor.empty() : tensor<8xi1>
    %2 = tensor.empty() : tensor<3x2xi16>
    %3 = tensor.empty() : tensor<2xi16>
    %4 = tensor.empty() : tensor<8xi32>
    %5 = tensor.empty() : tensor<2xi64>
    %6 = tensor.empty() : tensor<3x2xi1>
    %7 = tensor.empty() : tensor<4x2xi32>
    %8 = tensor.empty() : tensor<3x2xi1>
    %9 = tensor.empty() : tensor<3x2xi16>
    %10 = tensor.empty() : tensor<4x2xi64>
    %11 = tensor.empty() : tensor<4x2xf16>
    %12 = tensor.empty() : tensor<8xf32>
    %13 = tensor.empty() : tensor<2xf16>
    %14 = tensor.empty() : tensor<4x2xi16>
    %15 = tensor.empty() : tensor<4x2xf32>
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
    %alloc = memref.alloc() : memref<4x2xf16>
    %alloc_6 = memref.alloc() : memref<4x2xi16>
    %alloc_7 = memref.alloc() : memref<8xi16>
    %alloc_8 = memref.alloc() : memref<3x2xi16>
    %alloc_9 = memref.alloc() : memref<8xi16>
    %alloc_10 = memref.alloc() : memref<8xf16>
    %alloc_11 = memref.alloc() : memref<3x2xi16>
    %alloc_12 = memref.alloc() : memref<3x2xf32>
    %alloc_13 = memref.alloc() : memref<8xi16>
    %alloc_14 = memref.alloc() : memref<8xi1>
    %alloc_15 = memref.alloc() : memref<2xi16>
    %alloc_16 = memref.alloc() : memref<2xf16>
    %alloc_17 = memref.alloc() : memref<8xi1>
    %alloc_18 = memref.alloc() : memref<4x2xf16>
    %alloc_19 = memref.alloc() : memref<2xf32>
    %alloc_20 = memref.alloc() : memref<4x2xi64>
    %16 = tensor.empty() : tensor<4x2xf32>
    %17 = linalg.copy ins(%15 : tensor<4x2xf32>) outs(%16 : tensor<4x2xf32>) -> tensor<4x2xf32>
    %18 = tensor.empty() : tensor<2x3xi16>
    %transposed = linalg.transpose ins(%2 : tensor<3x2xi16>) outs(%18 : tensor<2x3xi16>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<f32>
    linalg.reduce ins(%12 : tensor<8xf32>) outs(%alloc_21 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %260 = math.log2 %cst_3 : f16
        %261 = index.sub %c11, %c9
        %262 = arith.addi %false_2, %false : i1
        %splat_49 = tensor.splat %false : tensor<8xi1>
        %263 = arith.muli %c-26608_i16, %c-26608_i16 : i16
        %264 = vector.broadcast %c1300628449_i64 : i64 to vector<4x2xi64>
        %265 = index.ceildivs %c8, %c15
        %expanded_50 = tensor.expand_shape %5 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c15, %c3) to (%c8, %c0) step (%c15, %c1) init (%false_2) -> i1 {
      %260 = tensor.empty() : tensor<3x3x3xf32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%260 : tensor<3x3x3xf32>) {
      ^bb0(%out: f32):
        %276 = index.casts %arg2 : index to i32
        %277 = math.ctlz %c1625667180_i64 : i64
        %278 = math.absf %cst_3 : f16
        %279 = arith.ceildivsi %c1112807906_i32, %c1112807906_i32 : i32
        %280 = math.round %15 : tensor<4x2xf32>
        %281 = index.casts %c10 : index to i32
        %extracted_52 = tensor.extract %6[%c0, %c1] : tensor<3x2xi1>
        %282 = index.mul %c12, %c5
        %283 = arith.remsi %c1747437374_i64, %c1747437374_i64 : i64
        %284 = math.tanh %12 : tensor<8xf32>
        %false_53 = index.bool.constant false
        %285 = math.tanh %15 : tensor<4x2xf32>
        %286 = arith.muli %c1300628449_i64, %c1625667180_i64 : i64
        %rank_54 = tensor.rank %14 : tensor<4x2xi16>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %287 = vector.transfer_read %4[%c5], %c0_i32 : tensor<8xi32>, vector<i32>
        %288 = vector.broadcast %false_53 : i1 to vector<2xi1>
        %289 = vector.reduction <minsi>, %288 : vector<2xi1> into i1
        %290 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %291 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %292 = vector.fma %291, %291, %291 : vector<8xf32>
        memref.copy %alloc_8, %alloc_11 : memref<3x2xi16> to memref<3x2xi16>
        %293 = vector.broadcast %c11 : index to vector<2xindex>
        %294 = vector.broadcast %false : i1 to vector<2xi1>
        %295 = vector.broadcast %c-30193_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_9[%c5] [%293], %294, %295 : memref<8xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %296 = memref.realloc %alloc_9 : memref<8xi16> to memref<3xi16>
        %297 = math.atan2 %11, %11 : tensor<4x2xf16>
        %298 = math.exp %0 : tensor<8xf32>
        %299 = affine.max affine_map<(d0) -> (d0 * -128, d0 * -2 + 4)>(%c6)
        %300 = math.rsqrt %15 : tensor<4x2xf32>
        %301 = math.round %11 : tensor<4x2xf16>
        %302 = arith.ori %c1300628449_i64, %c1625667180_i64 : i64
        %cast_55 = tensor.cast %7 : tensor<4x2xi32> to tensor<?x?xi32>
        %303 = tensor.empty() : tensor<4x2xf32>
        %304 = index.maxs %c15, %c3
        %305 = bufferization.to_memref %15 : memref<4x2xf32>
        %extracted_56 = tensor.extract %0[%c5] : tensor<8xf32>
        %306 = math.rsqrt %13 : tensor<2xf16>
        linalg.yield %cst_1 : f32
      } -> tensor<3x3x3xf32>
      %262 = index.maxs %c5, %c6
      %263 = math.sqrt %17 : tensor<4x2xf32>
      %264 = index.maxu %c10, %c13
      %265 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %266 = vector.transpose %265, [0] : vector<2xf32> to vector<2xf32>
      %267 = arith.cmpi sgt, %false_2, %false_2 : i1
      %268 = affine.load %alloc_8[%c8, %c10] : memref<3x2xi16>
      %269 = affine.max affine_map<(d0, d1) -> (-d0 - (d0 - d1) + 2, d1, d0)>(%c10, %c8)
      %270 = index.divu %arg2, %c11
      %271 = math.floor %cst_5 : f16
      %extracted_49 = tensor.extract %11[%c1, %c1] : tensor<4x2xf16>
      %272 = index.casts %269 : index to i32
      %273 = index.divu %arg2, %c4
      %274 = arith.addf %cst_1, %cst_1 : f32
      %rank_50 = tensor.rank %5 : tensor<2xi64>
      %275 = arith.cmpi sle, %c1747437374_i64, %c1625667180_i64 : i64
      %false_51 = arith.constant false
      scf.reduce(%false_51)  : i1 {
      ^bb0(%arg4: i1, %arg5: i1):
        %splat_52 = tensor.splat %cst : tensor<3x2xf16>
        %276 = math.round %11 : tensor<4x2xf16>
        %277 = tensor.empty() : tensor<8xf16>
        %278 = arith.ceildivsi %c9465_i16, %c-30193_i16 : i16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_53 = arith.constant 0 : i64
        %279 = vector.transfer_read %10[%arg3, %c13], %c0_i64_53 : tensor<4x2xi64>, vector<i64>
        %280 = math.rsqrt %15 : tensor<4x2xf32>
        %alloc_54 = memref.alloc() : memref<4x2xf32>
        memref.tensor_store %17, %alloc_54 : memref<4x2xf32>
        %splat_55 = tensor.splat %c-19705_i16 : tensor<3x2xi16>
        %true = arith.constant true
        scf.reduce.return %true : i1
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c6] : memref<2xi16>, vector<4xi16>
    affine.vector_store %20, %alloc_15[%c6] : memref<2xi16>, vector<4xi16>
    %21 = tensor.empty() : tensor<8xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%alloc_9, %21 : memref<8xi16>, tensor<8xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %24 = tensor.empty(%c0) : tensor<?xi32>
    %25 = math.tanh %cst_5 : f16
    %26 = index.add %c3, %c11
    %27 = math.cttz %3 : tensor<2xi16>
    %28 = affine.load %alloc_21[] : memref<f32>
    %29 = arith.addf %cst, %cst : f16
    %30 = math.floor %17 : tensor<4x2xf32>
    %31 = vector.broadcast %c-19705_i16 : i16 to vector<i16>
    vector.transfer_write %31, %alloc_15[%26] : vector<i16>, memref<2xi16>
    %32 = memref.load %alloc_19[%c0] : memref<2xf32>
    %33 = tensor.empty() : tensor<3x3x3xf32>
    %alloc_22 = memref.alloc() : memref<3x3xf32>
    %34 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22 : memref<3x3xf32>) outs(%33 : tensor<3x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %extracted_49 = tensor.extract %7[%c1, %c0] : tensor<4x2xi32>
      memref.alloca_scope  {
        %289 = arith.shrui %c-26608_i16, %c-30193_i16 : i16
        %290 = vector.extract_strided_slice %20 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (((d1 + 32) * 8) mod 128, d2 - d1 ceildiv 32, d2 - d1 ceildiv 32)>(%c11, %c6, %c12, %c2)
        %292 = math.atan2 %12, %12 : tensor<8xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %293 = vector.transfer_read %21[%c4], %c0_i16 : tensor<8xi16>, vector<i16>
        %294 = math.ctlz %14 : tensor<4x2xi16>
        %from_elements_55 = tensor.from_elements %c1300628449_i64, %c1300628449_i64, %c1300628449_i64, %c1300628449_i64, %c1625667180_i64, %c1625667180_i64, %c1625667180_i64, %c1747437374_i64 : tensor<4x2xi64>
        %alloc_56 = memref.alloc() : memref<2x8xi1>
        %295 = tensor.empty() : tensor<3x8xi1>
        %296 = linalg.matmul ins(%8, %alloc_56 : tensor<3x2xi1>, memref<2x8xi1>) outs(%295 : tensor<3x8xi1>) -> tensor<3x8xi1>
        %297 = vector.extract_strided_slice %20 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
        affine.store %c-30193_i16, %alloc_15[%c6] : memref<2xi16>
        %false_57 = index.bool.constant false
        %298 = arith.muli %c-30193_i16, %c-19705_i16 : i16
        %299 = arith.addi %false_2, %false : i1
        %300 = math.atan2 %out, %out : f32
        %301 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %302 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %303 = vector.maskedload %alloc_21[], %302, %301 : memref<f32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %304 = index.casts %c9 : index to i32
        %305 = math.log10 %13 : tensor<2xf16>
        %306 = vector.extract %290[0] : vector<2xi16>
        %alloc_58 = memref.alloc() : memref<2x8xi1>
        %307 = tensor.empty() : tensor<3x8xi1>
        %308 = linalg.matmul ins(%8, %alloc_58 : tensor<3x2xi1>, memref<2x8xi1>) outs(%307 : tensor<3x8xi1>) -> tensor<3x8xi1>
        %309 = arith.addi %c9465_i16, %c1_i16 : i16
        %310 = arith.minf %cst_0, %cst_0 : f16
        %alloc_59 = memref.alloc() : memref<2x3xi16>
        memref.tensor_store %18, %alloc_59 : memref<2x3xi16>
        %311 = arith.xori %c1625667180_i64, %c1300628449_i64 : i64
        %312 = affine.max affine_map<(d0, d1, d2) -> (-d1 - 1, d0)>(%c6, %c6, %c15)
        %313 = vector.flat_transpose %302 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %314 = arith.muli %c-30193_i16, %c-26608_i16 : i16
        %315 = index.divu %c14, %c11
        %316 = arith.addi %c1112807906_i32, %extracted_49 : i32
        %317 = arith.remui %false, %false_2 : i1
        %318 = arith.cmpf ueq, %out, %out : f32
        %319 = math.copysign %cst_1, %out : f32
        %320 = affine.apply affine_map<(d0) -> ((d0 mod 32) ceildiv 4)>(%312)
      }
      %260 = arith.remui %c1747437374_i64, %c1625667180_i64 : i64
      %cast_50 = tensor.cast %10 : tensor<4x2xi64> to tensor<?x?xi64>
      %261 = math.ctlz %3 : tensor<2xi16>
      %262 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %263 = affine.max affine_map<(d0, d1, d2) -> (d0, d0 - (d2 - 16), d1 + 64)>(%c3, %c6, %c10)
      %extracted_51 = tensor.extract %17[%c3, %c0] : tensor<4x2xf32>
      %264 = arith.shrsi %c1300628449_i64, %c1625667180_i64 : i64
      %265 = math.absi %22 : tensor<i16>
      %266 = index.sizeof
      %267 = math.rsqrt %0 : tensor<8xf32>
      %268 = arith.cmpi sge, %c1625667180_i64, %c1625667180_i64 : i64
      %269 = vector.reduction <and>, %262 : vector<1xi16> into i16
      %270 = arith.maxf %cst_1, %extracted_51 : f32
      %271 = vector.transpose %262, [0] : vector<1xi16> to vector<1xi16>
      %false_52 = index.bool.constant false
      %generated_53 = tensor.generate %266 {
      ^bb0(%arg2: index):
        %289 = affine.min affine_map<(d0, d1) -> (d0 floordiv 64, -(d1 + 1), d1 - 1, d0 floordiv 64 - d0 + d1)>(%c12, %c5)
        %290 = math.floor %12 : tensor<8xf32>
        %291 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
        %292 = arith.subi %c-19705_i16, %c-19705_i16 : i16
        tensor.yield %c1112807906_i32 : i32
      } : tensor<?xi32>
      %272 = vector.broadcast %c-26608_i16 : i16 to vector<4x2xi16>
      %273 = vector.broadcast %false_2 : i1 to vector<4x2xi1>
      %274 = vector.broadcast %extracted_49 : i32 to vector<4x2xi32>
      %275 = vector.gather %alloc_8[%c9, %c9] [%274], %273, %272 : memref<3x2xi16>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi16> into vector<4x2xi16>
      %276 = arith.muli %false, %false_52 : i1
      %277 = vector.broadcast %cst_1 : f32 to vector<4x2xf32>
      %278 = vector.fma %277, %277, %277 : vector<4x2xf32>
      %279 = math.atan2 %16, %16 : tensor<4x2xf32>
      %280 = arith.shli %c9465_i16, %c-30193_i16 : i16
      %281 = math.cttz %2 : tensor<3x2xi16>
      %282 = tensor.empty(%263) : tensor<4x?xi64>
      %283 = tensor.empty() : tensor<4x2xi16>
      %284 = arith.divf %out, %out : f32
      %285 = arith.cmpf une, %28, %in : f32
      %286 = index.sizeof
      %splat_54 = tensor.splat %out : tensor<8xf32>
      %287 = math.exp %11 : tensor<4x2xf16>
      %288 = bufferization.to_memref %5 : memref<2xi64>
      linalg.yield %out : f32
    } -> tensor<3x3x3xf32>
    %35 = memref.realloc %alloc_7 : memref<8xi16> to memref<4xi16>
    %36 = arith.maxf %cst_5, %cst_4 : f16
    %37 = arith.addi %c1747437374_i64, %c1300628449_i64 : i64
    %38 = vector.broadcast %c-26608_i16 : i16 to vector<4x8xi16>
    %dest, %accumulated_value = vector.scan <or>, %38, %20 {inclusive = true, reduction_dim = 1 : i64} : vector<4x8xi16>, vector<4xi16>
    %39 = bufferization.to_memref %16 : memref<4x2xf32>
    %40 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
    %41 = vector.fma %40, %40, %40 : vector<3x2xf32>
    %42 = math.copysign %28, %28 : f32
    %43 = math.cttz %transposed : tensor<2x3xi16>
    %44 = math.ctlz %6 : tensor<3x2xi1>
    %45 = arith.shrui %c1112807906_i32, %c1112807906_i32 : i32
    %46 = vector.create_mask %c0, %c12 : vector<4x2xi1>
    %47 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %48 = index.floordivs %c5, %c5
    %49 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %47, %c-30193_i16 : vector<4xi16>, vector<4xi16> into i16
    %50 = arith.maxui %c1625667180_i64, %c1300628449_i64 : i64
    %51 = arith.mulf %cst, %cst_0 : f16
    %from_elements = tensor.from_elements %cst_3, %cst : tensor<2xf16>
    %52 = math.rsqrt %cst_4 : f16
    %53 = arith.maxsi %c1112807906_i32, %c1112807906_i32 : i32
    %54 = vector.insertelement %c-19705_i16, %20[%c0 : index] : vector<4xi16>
    %55 = vector.insertelement %c-30193_i16, %47[%c2 : index] : vector<4xi16>
    %56 = tensor.empty() : tensor<8xi64>
    %57 = vector.broadcast %c1625667180_i64 : i64 to vector<4x2xi64>
    %58 = vector.broadcast %c1112807906_i32 : i32 to vector<4x2xi32>
    %59 = vector.gather %56[%c14] [%58], %46, %57 : tensor<8xi64>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi64> into vector<4x2xi64>
    %60 = arith.maxsi %false, %false_2 : i1
    %61 = arith.divui %c-26608_i16, %c-30193_i16 : i16
    %62 = scf.index_switch %c12 -> tensor<2xf16> 
    case 1 {
      %260 = math.rsqrt %from_elements : tensor<2xf16>
      %261 = math.round %17 : tensor<4x2xf32>
      %262 = arith.xori %c-19705_i16, %c-19705_i16 : i16
      %263 = math.log10 %0 : tensor<8xf32>
      %splat_49 = tensor.splat %cst_5 : tensor<2xf16>
      %264 = math.atan2 %from_elements, %13 : tensor<2xf16>
      %265 = index.sizeof
      %266 = vector.create_mask %c13 : vector<8xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %266, %266, %false : vector<8xi1>, vector<8xi1> into i1
      %268 = index.divu %c5, %c1
      %269 = tensor.empty() : tensor<2xf16>
      %mapped_50 = linalg.map ins(%13 : tensor<2xf16>) outs(%269 : tensor<2xf16>)
        (%in: f16) {
          %273 = vector.broadcast %false : i1 to vector<2x2xi1>
          %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %46, %46, %273 : vector<4x2xi1>, vector<4x2xi1> into vector<2x2xi1>
          %275 = arith.remui %c1300628449_i64, %c1747437374_i64 : i64
          %276 = bufferization.to_tensor %39 : memref<4x2xf32>
          %rank_53 = tensor.rank %14 : tensor<4x2xi16>
          %277 = math.exp %11 : tensor<4x2xf16>
          %278 = arith.xori %c-30193_i16, %c9465_i16 : i16
          %279 = index.sizeof
          %280 = arith.cmpi slt, %c-19705_i16, %c-19705_i16 : i16
          %281 = arith.shli %c1300628449_i64, %c1747437374_i64 : i64
          %282 = arith.remsi %c1625667180_i64, %c1300628449_i64 : i64
          %283 = arith.minf %cst, %cst_5 : f16
          %284 = index.sizeof
          %cast_54 = tensor.cast %11 : tensor<4x2xf16> to tensor<?x?xf16>
          %285 = tensor.empty() : tensor<3x2xi1>
          %286 = index.floordivs %c14, %c14
          %287 = arith.minf %28, %28 : f32
          %288 = vector.broadcast %c-26608_i16 : i16 to vector<i16>
          %289 = vector.transfer_write %288, %9[%c12, %c2] : vector<i16>, tensor<3x2xi16>
          %290 = affine.load %alloc_10[%c9] : memref<8xf16>
          %cst_55 = arith.constant 1.000000e+00 : f32
          %cst_56 = arith.constant 0.000000e+00 : f32
          %291 = vector.transfer_read %17[%48, %c8], %cst_56 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x2xf32>, vector<2xf32>
          %292 = math.rsqrt %11 : tensor<4x2xf16>
          %293 = math.rsqrt %from_elements : tensor<2xf16>
          vector.print %47 : vector<4xi16>
          %294 = math.atan %17 : tensor<4x2xf32>
          %295 = math.floor %11 : tensor<4x2xf16>
          %296 = vector.broadcast %279 : index to vector<4xindex>
          %297 = vector.broadcast %false : i1 to vector<4xi1>
          %298 = vector.broadcast %cst_3 : f16 to vector<4xf16>
          vector.scatter %alloc_10[%c4] [%296], %297, %298 : memref<8xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %299 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
          %300 = vector.multi_reduction <and>, %58, %299 [0] : vector<4x2xi32> to vector<2xi32>
          %301 = memref.load %39[%c2, %c1] : memref<4x2xf32>
          %302 = math.exp %15 : tensor<4x2xf32>
          %303 = arith.mulf %cst_3, %cst_0 : f16
          %304 = index.sizeof
          %305 = memref.realloc %alloc_7 : memref<8xi16> to memref<4xi16>
          %306 = arith.maxsi %false_2, %false_2 : i1
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      %270 = arith.remf %cst_4, %cst_5 : f16
      %271 = index.maxu %c8, %c4
      %alloca_51 = memref.alloca() : memref<4x2xi64>
      %272 = arith.addf %cst, %cst_3 : f16
      %generated_52 = tensor.generate %c7, %c8 {
      ^bb0(%arg2: index, %arg3: index):
        %273 = affine.max affine_map<(d0, d1, d2) -> (0, ((-d2 - 16) ceildiv 4) * -2)>(%c9, %c6, %48)
        %274 = arith.minf %cst_3, %cst_3 : f16
        %expanded_53 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
        %275 = arith.shrsi %c-30193_i16, %c-26608_i16 : i16
        tensor.yield %c1747437374_i64 : i64
      } : tensor<?x?xi64>
      scf.yield %splat_49 : tensor<2xf16>
    }
    case 2 {
      %260 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %261 = vector.broadcast %48 : index to vector<8xindex>
      %262 = vector.broadcast %false_2 : i1 to vector<8xi1>
      %263 = vector.broadcast %cst_5 : f16 to vector<8xf16>
      vector.scatter %alloc_10[%c7] [%261], %262, %263 : memref<8xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
      %splat_49 = tensor.splat %c-30193_i16 : tensor<8xi16>
      %264 = arith.cmpf ogt, %cst_3, %cst_0 : f16
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d1 - d0 + d0 - 1)>(%c0, %c7, %c13, %c1)
      %266 = math.log1p %0 : tensor<8xf32>
      %267 = math.absf %12 : tensor<8xf32>
      %268 = math.exp %13 : tensor<2xf16>
      memref.tensor_store %15, %39 : memref<4x2xf32>
      %269 = arith.shrsi %false_2, %false_2 : i1
      %270 = vector.broadcast %cst : f16 to vector<8xf16>
      %271 = vector.broadcast %28 : f32 to vector<2xf32>
      %dest_50, %accumulated_value_51 = vector.scan <maxf>, %41, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
      %272 = math.rsqrt %13 : tensor<2xf16>
      %273 = vector.broadcast %28 : f32 to vector<2xf32>
      %274 = vector.broadcast %false : i1 to vector<2xi1>
      %275 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
      %276 = vector.gather %0[%c12] [%275], %274, %273 : tensor<8xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %extracted_52 = tensor.extract %9[%c1, %c0] : tensor<3x2xi16>
      %277 = math.copysign %16, %16 : tensor<4x2xf32>
      scf.yield %13 : tensor<2xf16>
    }
    case 3 {
      %260 = arith.minf %28, %cst_1 : f32
      %261 = arith.remui %c1747437374_i64, %c1300628449_i64 : i64
      %262 = vector.insertelement %c-26608_i16, %47[%c11 : index] : vector<4xi16>
      %263 = arith.floordivsi %c-19705_i16, %c-26608_i16 : i16
      %264 = vector.broadcast %c1747437374_i64 : i64 to vector<2xi64>
      %dest_49, %accumulated_value_50 = vector.scan <maxui>, %59, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<4x2xi64>, vector<2xi64>
      %from_elements_51 = tensor.from_elements %cst_1, %28, %cst_1, %28, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<8xf32>
      %265 = vector.broadcast %c1112807906_i32 : i32 to vector<2x2xi32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %58, %58, %265 : vector<4x2xi32>, vector<4x2xi32> into vector<2x2xi32>
      %267 = arith.remui %c1625667180_i64, %c1300628449_i64 : i64
      %splat_52 = tensor.splat %c1300628449_i64 : tensor<2xi64>
      %268 = math.log2 %13 : tensor<2xf16>
      %269 = arith.minf %28, %28 : f32
      %270 = arith.remui %false, %false : i1
      %271 = vector.transpose %46, [0, 1] : vector<4x2xi1> to vector<4x2xi1>
      %272 = arith.remui %c-30193_i16, %c-26608_i16 : i16
      %273 = arith.addf %28, %28 : f32
      %274 = arith.shrsi %c9465_i16, %c-26608_i16 : i16
      scf.yield %from_elements : tensor<2xf16>
    }
    default {
      %260 = arith.remui %c-19705_i16, %c9465_i16 : i16
      %261 = math.log %13 : tensor<2xf16>
      %262 = affine.if affine_set<(d0) : ((d0 * 2) floordiv 8 - 64 >= 0)>(%c5) -> f32 {
        %274 = arith.minf %cst_3, %cst_0 : f16
        %275 = arith.cmpf ole, %cst_3, %cst_3 : f16
        %276 = math.atan2 %13, %13 : tensor<2xf16>
        %277 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %278 = vector.broadcast %false : i1 to vector<3xi1>
        %279 = vector.maskedload %39[%c2, %c0], %278, %277 : memref<4x2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %280 = math.log1p %0 : tensor<8xf32>
        %281 = math.exp %17 : tensor<4x2xf32>
        %282 = arith.remsi %c1625667180_i64, %c1625667180_i64 : i64
        %283 = tensor.empty(%c14) : tensor<?x2xf32>
        affine.yield %28 : f32
      } else {
        %274 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
        %275 = vector.broadcast %false : i1 to vector<2xi1>
        %276 = vector.maskedload %alloc_13[%c7], %275, %274 : memref<8xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %276, %274, %c-19705_i16 : vector<2xi16>, vector<2xi16> into i16
        %278 = arith.maxsi %c9465_i16, %c9465_i16 : i16
        %279 = math.cttz %22 : tensor<i16>
        %280 = arith.remsi %false_2, %false_2 : i1
        %281 = index.sizeof
        %282 = vector.bitcast %274 : vector<2xi16> to vector<2xi16>
        %283 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %41, %40, %283 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
        affine.yield %28 : f32
      }
      %263 = arith.subi %c1625667180_i64, %c1747437374_i64 : i64
      %264 = index.divu %c15, %c11
      %265 = math.atan %16 : tensor<4x2xf32>
      %266 = arith.addf %cst, %cst_0 : f16
      %267 = arith.addi %c9465_i16, %c-30193_i16 : i16
      %c0_i16 = arith.constant 0 : i16
      %268 = vector.transfer_read %alloc_15[%c8], %c0_i16 : memref<2xi16>, vector<i16>
      %269 = bufferization.clone %alloc : memref<4x2xf16> to memref<4x2xf16>
      %270 = arith.cmpi sge, %false, %false : i1
      %271 = math.absf %15 : tensor<4x2xf32>
      %splat_49 = tensor.splat %28 : tensor<2xf32>
      affine.store %false_2, %alloc_14[%c11] : memref<8xi1>
      %272 = math.round %cst : f16
      %273 = index.mul %264, %c0
      scf.yield %13 : tensor<2xf16>
    }
    %63 = math.ipowi %2, %9 : tensor<3x2xi16>
    scf.if %false_2 {
      %260 = scf.index_switch %c9 -> vector<2xf16> 
      case 1 {
        %265 = math.round %16 : tensor<4x2xf32>
        %alloc_50 = memref.alloc() : memref<2xf32>
        memref.copy %alloc_19, %alloc_50 : memref<2xf32> to memref<2xf32>
        %266 = vector.reduction <and>, %47 : vector<4xi16> into i16
        %from_elements_51 = tensor.from_elements %28, %28, %28, %cst_1, %cst_1, %cst_1, %28, %cst_1 : tensor<4x2xf32>
        %267 = index.ceildivu %c5, %c13
        %268 = affine.min affine_map<(d0) -> ((d0 mod 4) * 4 + 16, (d0 + 8) mod 64, (d0 + 8) mod 64)>(%c13)
        %269 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %58, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<4x2xi32>, vector<2xi32>
        %270 = memref.realloc %alloc_15 : memref<2xi16> to memref<3xi16>
        %271 = math.log10 %cst_0 : f16
        %alloc_54 = memref.alloc() : memref<4x2xi32>
        %272 = vector.broadcast %c1112807906_i32 : i32 to vector<8xi32>
        %273 = vector.broadcast %false_2 : i1 to vector<8xi1>
        %274 = vector.gather %alloc_54[%48, %c6] [%272], %273, %272 : memref<4x2xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %275 = vector.multi_reduction <add>, %274, %c1112807906_i32 [0] : vector<8xi32> to i32
        %276 = index.sizeof
        memref.copy %alloc_11, %alloc_8 : memref<3x2xi16> to memref<3x2xi16>
        %277 = vector.insertelement %false_2, %273[%c1 : index] : vector<8xi1>
        memref.assume_alignment %alloc_12, 16 : memref<3x2xf32>
        %278 = arith.shli %false_2, %false_2 : i1
        %279 = vector.broadcast %cst : f16 to vector<2xf16>
        scf.yield %279 : vector<2xf16>
      }
      default {
        %rank_50 = tensor.rank %1 : tensor<8xi1>
        %265 = arith.ori %c-19705_i16, %c9465_i16 : i16
        %266 = arith.maxf %cst, %cst_4 : f16
        %267 = math.floor %11 : tensor<4x2xf16>
        %268 = math.floor %0 : tensor<8xf32>
        %269 = tensor.empty(%c3) : tensor<3x?xf16>
        %270 = vector.splat %c-30193_i16 : vector<8xi16>
        %271 = vector.multi_reduction <and>, %46, %false [0, 1] : vector<4x2xi1> to i1
        %272 = math.ceil %28 : f32
        memref.assume_alignment %alloc, 16 : memref<4x2xf16>
        %273 = arith.remsi %c1747437374_i64, %c1625667180_i64 : i64
        %274 = arith.remui %c1747437374_i64, %c1747437374_i64 : i64
        %from_elements_51 = tensor.from_elements %cst_5, %cst_4, %cst_0, %cst_4, %cst_4, %cst_3, %cst_0, %cst : tensor<4x2xf16>
        %275 = vector.insertelement %c-26608_i16, %47[%c9 : index] : vector<4xi16>
        %splat_52 = tensor.splat %cst_3 : tensor<3x2xf16>
        %276 = arith.xori %c1625667180_i64, %c1300628449_i64 : i64
        %277 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        scf.yield %277 : vector<2xf16>
      }
      memref.assume_alignment %alloc_11, 4 : memref<3x2xi16>
      %261 = math.fma %cst_3, %cst_3, %cst_0 : f16
      %splat_49 = tensor.splat %c1112807906_i32 : tensor<4x2xi32>
      %262 = vector.extract_strided_slice %58 {offsets = [2], sizes = [1], strides = [1]} : vector<4x2xi32> to vector<1x2xi32>
      %263 = arith.cmpi eq, %c-30193_i16, %c-30193_i16 : i16
      %264 = index.divu %c1, %26
      vector.print %57 : vector<4x2xi64>
    } else {
      %260 = math.round %11 : tensor<4x2xf16>
      %261 = tensor.empty() : tensor<2x4xf32>
      %262 = tensor.empty() : tensor<4x4xf32>
      %263 = linalg.matmul ins(%17, %261 : tensor<4x2xf32>, tensor<2x4xf32>) outs(%262 : tensor<4x4xf32>) -> tensor<4x4xf32>
      %264 = vector.broadcast %cst_1 : f32 to vector<4x2xf32>
      %265 = vector.fma %264, %264, %264 : vector<4x2xf32>
      %266 = arith.muli %c-19705_i16, %c-19705_i16 : i16
      %267 = vector.matrix_multiply %20, %47 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %268 = vector.insertelement %c-26608_i16, %31[] : vector<i16>
      %269 = math.exp %17 : tensor<4x2xf32>
      %270 = memref.load %alloc_18[%c0, %c1] : memref<4x2xf16>
    }
    %64 = vector.shuffle %40, %41 [2, 5] : vector<3x2xf32>, vector<3x2xf32>
    %65 = math.ipowi %10, %10 : tensor<4x2xi64>
    %66 = scf.index_switch %c0 -> tensor<3x2xi32> 
    case 1 {
      %260 = index.add %c1, %c3
      %261 = arith.cmpf ule, %cst_0, %cst_5 : f16
      %262 = tensor.empty() : tensor<3x2xf32>
      %263 = vector.broadcast %28 : f32 to vector<2xf32>
      %264 = vector.broadcast %false_2 : i1 to vector<2xi1>
      %265 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
      %266 = vector.gather %262[%c6, %c8] [%265], %264, %263 : tensor<3x2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %267 = bufferization.to_tensor %alloc_9 : memref<8xi16>
      %268 = tensor.empty() : tensor<4x3xi16>
      %269 = linalg.matmul ins(%14, %18 : tensor<4x2xi16>, tensor<2x3xi16>) outs(%268 : tensor<4x3xi16>) -> tensor<4x3xi16>
      %270 = memref.realloc %alloc_10 : memref<8xf16> to memref<3xf16>
      %271 = arith.mulf %28, %28 : f32
      %272 = index.divu %c2, %c12
      %273 = arith.remui %c1112807906_i32, %c1112807906_i32 : i32
      %274 = bufferization.to_memref %transposed : memref<2x3xi16>
      %275 = math.tanh %11 : tensor<4x2xf16>
      %276 = vector.broadcast %28 : f32 to vector<8xf32>
      %277 = vector.fma %276, %276, %276 : vector<8xf32>
      %278 = vector.bitcast %263 : vector<2xf32> to vector<2xf32>
      %279 = math.log2 %13 : tensor<2xf16>
      %280 = index.ceildivu %26, %c4
      %281 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %282 = vector.fma %281, %266, %266 : vector<2xf32>
      %283 = tensor.empty() : tensor<3x2xi32>
      scf.yield %283 : tensor<3x2xi32>
    }
    case 2 {
      %260 = math.cos %cst_5 : f16
      %261 = math.round %17 : tensor<4x2xf32>
      %262 = vector.transpose %47, [0] : vector<4xi16> to vector<4xi16>
      %263 = arith.shli %c1625667180_i64, %c1625667180_i64 : i64
      scf.index_switch %c10 
      case 1 {
        %276 = math.rsqrt %13 : tensor<2xf16>
        %277 = vector.broadcast %false_2 : i1 to vector<2x2xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %46, %46, %277 : vector<4x2xi1>, vector<4x2xi1> into vector<2x2xi1>
        %279 = math.cttz %18 : tensor<2x3xi16>
        %280 = vector.reduction <or>, %47 : vector<4xi16> into i16
        %281 = arith.maxf %cst_4, %cst : f16
        %282 = vector.broadcast %c1112807906_i32 : i32 to vector<4xi32>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %58, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi32>, vector<4xi32>
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %47, %20, %c-30193_i16 : vector<4xi16>, vector<4xi16> into i16
        %284 = vector.matrix_multiply %47, %47 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %285 = vector.create_mask %c12, %c11 : vector<3x2xi1>
        memref.tensor_store %13, %alloc_16 : memref<2xf16>
        %286 = vector.create_mask %c1, %c10 : vector<4x2xi1>
        %287 = math.copysign %cst_1, %28 : f32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %288 = vector.transfer_read %3[%c7], %c0_i16 : tensor<2xi16>, vector<i16>
        vector.print %47 : vector<4xi16>
        %289 = arith.muli %c1_i16, %c-19705_i16 : i16
        %290 = math.floor %cst_3 : f16
        scf.yield
      }
      case 2 {
        %276 = arith.ceildivsi %c9465_i16, %c-30193_i16 : i16
        %277 = bufferization.clone %alloc_9 : memref<8xi16> to memref<8xi16>
        %278 = math.floor %cst_4 : f16
        %279 = memref.realloc %alloc_7 : memref<8xi16> to memref<3xi16>
        vector.print %31 : vector<i16>
        %false_50 = index.bool.constant false
        %280 = arith.divsi %c1747437374_i64, %c1747437374_i64 : i64
        %281 = math.round %11 : tensor<4x2xf16>
        %282 = math.ipowi %8, %8 : tensor<3x2xi1>
        %cast_51 = tensor.cast %8 : tensor<3x2xi1> to tensor<?x?xi1>
        %283 = vector.broadcast %false : i1 to vector<3x2xi1>
        %284 = vector.broadcast %c1112807906_i32 : i32 to vector<3x2xi32>
        %285 = vector.gather %39[%c12, %c15] [%284], %283, %41 : memref<4x2xf32>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xf32> into vector<3x2xf32>
        %286 = arith.xori %false_2, %false_2 : i1
        %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 4, (d3 ceildiv 128) mod 128, d3 + 128)>(%c0, %c13, %26, %c11)
        affine.store %c-30193_i16, %alloc_6[%c6, %c5] : memref<4x2xi16>
        %288 = index.ceildivu %c9, %c3
        %289 = math.rsqrt %13 : tensor<2xf16>
        scf.yield
      }
      default {
        %276 = vector.reduction <minsi>, %20 : vector<4xi16> into i16
        %277 = arith.ceildivsi %c-30193_i16, %c9465_i16 : i16
        %278 = math.cos %cst_5 : f16
        %279 = index.mul %48, %c1
        %280 = math.ipowi %c1625667180_i64, %c1300628449_i64 : i64
        %281 = arith.maxf %cst_5, %cst_4 : f16
        %282 = arith.remsi %c-26608_i16, %c-26608_i16 : i16
        %283 = vector.broadcast %c13 : index to vector<3xindex>
        %284 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %285 = vector.broadcast %cst_0 : f16 to vector<3xf16>
        vector.scatter %alloc_18[%c2, %c0] [%283], %284, %285 : memref<4x2xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %286 = bufferization.clone %alloc_8 : memref<3x2xi16> to memref<3x2xi16>
        %287 = vector.broadcast %false_2 : i1 to vector<2x2xi1>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %46, %46, %287 : vector<4x2xi1>, vector<4x2xi1> into vector<2x2xi1>
        %alloc_50 = memref.alloc() : memref<2x3xf16>
        %289 = tensor.empty() : tensor<4x3xf16>
        %290 = linalg.matmul ins(%11, %alloc_50 : tensor<4x2xf16>, memref<2x3xf16>) outs(%289 : tensor<4x3xf16>) -> tensor<4x3xf16>
        %extracted_51 = tensor.extract %16[%c0, %c0] : tensor<4x2xf32>
        %291 = math.cttz %c1300628449_i64 : i64
        %292 = math.absf %cst_4 : f16
        %293 = arith.cmpi slt, %c1112807906_i32, %c1112807906_i32 : i32
        %294 = vector.transpose %40, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
      }
      %264 = vector.broadcast %false : i1 to vector<2x2xi1>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %46, %46, %264 : vector<4x2xi1>, vector<4x2xi1> into vector<2x2xi1>
      %266 = arith.floordivsi %c-19705_i16, %c-30193_i16 : i16
      %267 = index.maxu %26, %c9
      %268 = math.fma %cst_0, %cst_3, %cst_3 : f16
      %269 = index.casts %c4 : index to i32
      %270 = arith.minsi %c1112807906_i32, %c1112807906_i32 : i32
      %271 = math.round %cst_5 : f16
      %272 = vector.broadcast %c-19705_i16 : i16 to vector<4x2xi16>
      %extracted_49 = tensor.extract %15[%c2, %c1] : tensor<4x2xf32>
      %273 = index.divu %48, %c1
      %274 = arith.ceildivsi %false_2, %false : i1
      %275 = tensor.empty() : tensor<3x2xi32>
      scf.yield %275 : tensor<3x2xi32>
    }
    default {
      %260 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
      %splat_49 = tensor.splat %28 : tensor<2xf32>
      %from_elements_50 = tensor.from_elements %c1625667180_i64, %c1300628449_i64, %c1625667180_i64, %c1300628449_i64, %c1300628449_i64, %c1625667180_i64, %c1300628449_i64, %c1747437374_i64 : tensor<8xi64>
      %261 = arith.mulf %28, %28 : f32
      %rank_51 = tensor.rank %0 : tensor<8xf32>
      %262 = vector.load %alloc_6[%c2, %c0] : memref<4x2xi16>, vector<4x2xi16>
      vector.print %46 : vector<4x2xi1>
      %263 = arith.minf %cst_5, %cst : f16
      %from_elements_52 = tensor.from_elements %c1625667180_i64, %c1300628449_i64, %c1747437374_i64, %c1300628449_i64, %c1747437374_i64, %c1625667180_i64, %c1625667180_i64, %c1300628449_i64 : tensor<8xi64>
      %264 = tensor.empty() : tensor<2xf32>
      %mapped_53 = linalg.map ins(%alloc_19, %alloc_19, %splat_49 : memref<2xf32>, memref<2xf32>, tensor<2xf32>) outs(%264 : tensor<2xf32>)
        (%in: f32, %in_56: f32, %in_57: f32) {
          vector.print %262 : vector<4x2xi16>
          %272 = arith.shrui %c-19705_i16, %c-26608_i16 : i16
          %273 = math.cttz %6 : tensor<3x2xi1>
          %274 = memref.load %alloc_16[%c0] : memref<2xf16>
          %275 = vector.broadcast %c1112807906_i32 : i32 to vector<i32>
          %276 = vector.transfer_write %275, %4[%c9] : vector<i32>, tensor<8xi32>
          %277 = index.sizeof
          %278 = arith.floordivsi %c-26608_i16, %c9465_i16 : i16
          %279 = arith.floordivsi %c9465_i16, %c-26608_i16 : i16
          %280 = vector.matrix_multiply %47, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
          %281 = arith.remui %false_2, %false_2 : i1
          %282 = vector.broadcast %false_2 : i1 to vector<4xi1>
          %283 = vector.maskedload %260[%c0], %282, %20 : memref<8xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
          %rank_58 = tensor.rank %3 : tensor<2xi16>
          %284 = math.log2 %cst : f16
          %from_elements_59 = tensor.from_elements %c-19705_i16, %c-30193_i16, %c-26608_i16, %c-30193_i16, %c-19705_i16, %c9465_i16, %c-19705_i16, %c-26608_i16 : tensor<8xi16>
          %285 = memref.load %alloc_9[%c7] : memref<8xi16>
          %286 = arith.negf %in : f32
          %287 = math.cttz %14 : tensor<4x2xi16>
          %288 = arith.ceildivsi %false_2, %false : i1
          %289 = arith.xori %c1625667180_i64, %c1300628449_i64 : i64
          %290 = math.tanh %11 : tensor<4x2xf16>
          vector.print %282 : vector<4xi1>
          %291 = arith.addi %c1112807906_i32, %c1112807906_i32 : i32
          %292 = math.tan %12 : tensor<8xf32>
          %293 = index.maxs %c8, %c13
          %splat_60 = tensor.splat %in_56 : tensor<3x2xf32>
          %294 = index.add %rank_51, %c4
          %295 = math.log10 %12 : tensor<8xf32>
          %296 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 4, (d2 floordiv 8) ceildiv 4, -(-(d2 ceildiv 4) - (-d2 - d0)))>(%c3, %c3, %26)
          %297 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
          %298 = vector.multi_reduction <add>, %58, %297 [0] : vector<4x2xi32> to vector<2xi32>
          %299 = math.exp %in : f32
          %300 = math.atan2 %17, %15 : tensor<4x2xf32>
          %301 = math.absf %in : f32
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %265 = vector.broadcast %c1747437374_i64 : i64 to vector<4xi64>
      %dest_54, %accumulated_value_55 = vector.scan <and>, %59, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi64>, vector<4xi64>
      %266 = affine.min affine_map<(d0, d1, d2) -> (-d0, ((d1 mod 8) mod 64) * 32, 0, d0 ceildiv 64)>(%c12, %c15, %c1)
      %267 = index.ceildivu %26, %c3
      %268 = index.castu %c1112807906_i32 : i32 to index
      %269 = math.floor %28 : f32
      %270 = vector.multi_reduction <minui>, %57, %57 [] : vector<4x2xi64> to vector<4x2xi64>
      %271 = tensor.empty() : tensor<3x2xi32>
      scf.yield %271 : tensor<3x2xi32>
    }
    %67 = affine.apply affine_map<(d0) -> (((d0 * 8) ceildiv 128) floordiv 2)>(%c11)
    %68 = arith.shli %c-26608_i16, %c-30193_i16 : i16
    vector.print %31 : vector<i16>
    %69 = index.ceildivu %c4, %c7
    %generated = tensor.generate %26 {
    ^bb0(%arg2: index, %arg3: index):
      %260 = math.floor %cst_1 : f32
      %261 = arith.ori %c1112807906_i32, %c1112807906_i32 : i32
      %262 = arith.addf %cst_3, %cst_5 : f16
      %263 = math.log2 %0 : tensor<8xf32>
      tensor.yield %false_2 : i1
    } : tensor<?x2xi1>
    memref.assume_alignment %alloc_21, 1 : memref<f32>
    %70 = math.cttz %56 : tensor<8xi64>
    %71 = arith.mulf %cst_1, %cst_1 : f32
    %72 = arith.floordivsi %c1747437374_i64, %c1625667180_i64 : i64
    %73 = vector.reduction <maxsi>, %20 : vector<4xi16> into i16
    %74 = math.round %16 : tensor<4x2xf32>
    memref.store %false_2, %alloc_17[%c2] : memref<8xi1>
    %75 = vector.multi_reduction <xor>, %47, %47 [] : vector<4xi16> to vector<4xi16>
    %76 = scf.if %false -> (f16) {
      %260 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %261 = affine.if affine_set<(d0, d1, d2, d3) : ((-d2) floordiv 32 == 0, d1 >= 0, d0 + 4 >= 0, d3 == 0)>(%c7, %c15, %c14, %c13) -> memref<4x2xf16> {
        affine.store %c9465_i16, %alloc_15[%c15] : memref<2xi16>
        %269 = tensor.empty() : tensor<8xf16>
        %270 = index.maxs %c11, %c12
        memref.copy %alloc_14, %alloc_17 : memref<8xi1> to memref<8xi1>
        %extracted_49 = tensor.extract %6[%c1, %c0] : tensor<3x2xi1>
        %271 = arith.cmpi sgt, %c-19705_i16, %c-19705_i16 : i16
        %272 = memref.load %alloc_10[%c0] : memref<8xf16>
        %273 = arith.maxf %cst_1, %cst_1 : f32
        affine.yield %alloc_18 : memref<4x2xf16>
      } else {
        %269 = math.ctlz %false_2 : i1
        %270 = arith.cmpf ule, %cst, %cst_0 : f16
        %271 = arith.ceildivsi %c1625667180_i64, %c1747437374_i64 : i64
        %c1979694108_i32 = arith.constant 1979694108 : i32
        %272 = index.sub %67, %c4
        %273 = arith.muli %c1300628449_i64, %c1625667180_i64 : i64
        %274 = math.ipowi %10, %10 : tensor<4x2xi64>
        %extracted_49 = tensor.extract %7[%c3, %c0] : tensor<4x2xi32>
        affine.yield %alloc_18 : memref<4x2xf16>
      }
      %262 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
      %263 = vector.fma %262, %262, %262 : vector<3x2xf32>
      %264 = vector.transpose %47, [0] : vector<4xi16> to vector<4xi16>
      %265 = affine.min affine_map<(d0) -> ((d0 + d0 - 128 - 2) * 128, d0 - 4)>(%c3)
      %266 = vector.broadcast %28 : f32 to vector<2xf32>
      %267 = vector.insert %266, %41 [1] : vector<2xf32> into vector<3x2xf32>
      memref.assume_alignment %alloc_20, 1 : memref<4x2xi64>
      %268 = vector.multi_reduction <minf>, %41, %266 [0] : vector<3x2xf32> to vector<2xf32>
      scf.yield %cst_3 : f16
    } else {
      %260 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %dest_49, %accumulated_value_50 = vector.scan <minf>, %41, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
      %261 = math.fma %11, %11, %11 : tensor<4x2xf16>
      %262 = arith.shli %c-19705_i16, %c-30193_i16 : i16
      %263 = arith.minf %cst_4, %cst_3 : f16
      %expanded_51 = tensor.expand_shape %13 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
      %expanded_52 = tensor.expand_shape %0 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
      %from_elements_53 = tensor.from_elements %cst, %cst, %cst_0, %cst_5, %cst_5, %cst_0 : tensor<3x2xf16>
      %264 = tensor.empty() : tensor<2xf16>
      %mapped_54 = linalg.map ins(%13 : tensor<2xf16>) outs(%264 : tensor<2xf16>)
        (%in: f16) {
          %c0_i16 = arith.constant 0 : i16
          %265 = vector.transfer_read %transposed[%c15, %c1], %c0_i16 : tensor<2x3xi16>, vector<i16>
          memref.assume_alignment %alloc_6, 4 : memref<4x2xi16>
          memref.copy %alloc_7, %alloc_13 : memref<8xi16> to memref<8xi16>
          %266 = arith.remsi %c1625667180_i64, %c1625667180_i64 : i64
          %267 = tensor.empty() : tensor<3x2xi1>
          memref.assume_alignment %alloc_13, 1 : memref<8xi16>
          %268 = arith.shrsi %c9465_i16, %c0_i16 : i16
          affine.store %cst_1, %39[%c14, %c10] : memref<4x2xf32>
          %269 = index.maxs %c15, %c7
          %270 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
          %271 = vector.fma %270, %40, %40 : vector<3x2xf32>
          %272 = arith.remf %cst_5, %cst_4 : f16
          %273 = arith.minf %cst, %cst : f16
          %274 = index.ceildivu %c4, %c8
          %275 = vector.broadcast %28 : f32 to vector<3x2xf32>
          %276 = vector.fma %275, %275, %41 : vector<3x2xf32>
          %277 = arith.maxsi %false_2, %false : i1
          %278 = index.maxs %274, %c12
          %279 = arith.addf %cst_0, %cst_3 : f16
          %280 = arith.maxf %cst_5, %in : f16
          %281 = math.exp %0 : tensor<8xf32>
          %true = arith.constant true
          %false_55 = arith.constant false
          %282 = vector.transfer_read %6[%c12, %c12], %false_55 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x2xi1>, vector<4xi1>
          %283 = index.divu %c5, %c8
          %expanded_56 = tensor.expand_shape %generated [[0], [1, 2]] : tensor<?x2xi1> into tensor<?x2x1xi1>
          %284 = vector.extract_strided_slice %58 {offsets = [0], sizes = [2], strides = [1]} : vector<4x2xi32> to vector<2x2xi32>
          %285 = index.maxs %c12, %c10
          %286 = vector.transpose %57, [1, 0] : vector<4x2xi64> to vector<2x4xi64>
          %287 = index.divu %283, %c3
          %288 = arith.addi %c0_i16, %c-26608_i16 : i16
          %289 = math.cttz %23 : tensor<i16>
          %cst_57 = arith.constant 1.000000e+00 : f32
          %cst_58 = arith.constant 0.000000e+00 : f32
          %290 = vector.transfer_read %alloc_19[%48], %cst_58 : memref<2xf32>, vector<f32>
          affine.store %c9465_i16, %alloc_7[%c13] : memref<8xi16>
          %291 = math.cttz %true : i1
          %292 = math.log2 %15 : tensor<4x2xf32>
          %cst_59 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_59 : f16
        }
      scf.yield %cst : f16
    }
    %77 = arith.cmpf ugt, %cst_5, %cst_5 : f16
    %78 = arith.addf %cst, %cst_5 : f16
    %alloc_23 = memref.alloc() : memref<2xf32>
    memref.copy %alloc_19, %alloc_23 : memref<2xf32> to memref<2xf32>
    %79 = tensor.empty() : tensor<3x3x3xf32>
    %alloc_24 = memref.alloc() : memref<3xf32>
    %80 = tensor.empty() : tensor<3x3xf32>
    %81 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %alloc_24, %80 : memref<3xf32>, memref<3xf32>, tensor<3x3xf32>) outs(%79 : tensor<3x3x3xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %out: f32):
      %260 = index.maxs %26, %67
      %261 = tensor.empty() : tensor<2xi16>
      %mapped_51 = linalg.map ins(%3 : tensor<2xi16>) outs(%261 : tensor<2xi16>)
        (%in_54: i16) {
          %293 = math.fpowi %0, %4 : tensor<8xf32>, tensor<8xi32>
          %294 = tensor.empty(%c5, %48) : tensor<?x?xf32>
          %295 = vector.broadcast %cst_3 : f16 to vector<8xf16>
          %296 = vector.broadcast %false_2 : i1 to vector<8xi1>
          %297 = vector.maskedload %alloc[%c0, %c1], %296, %295 : memref<4x2xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %298 = math.cttz %c9465_i16 : i16
          %299 = vector.broadcast %in_49 : f32 to vector<3x2xf32>
          %300 = vector.fma %299, %299, %40 : vector<3x2xf32>
          %301 = index.floordivs %c14, %c13
          %302 = arith.shrsi %c1747437374_i64, %c1625667180_i64 : i64
          %303 = arith.andi %c-30193_i16, %c-26608_i16 : i16
          %304 = bufferization.to_memref %9 : memref<3x2xi16>
          %305 = math.cttz %4 : tensor<8xi32>
          %306 = arith.shrui %c1112807906_i32, %c1112807906_i32 : i32
          %alloc_55 = memref.alloc() : memref<2xi64>
          memref.tensor_store %5, %alloc_55 : memref<2xi64>
          %307 = math.cttz %false_2 : i1
          %308 = vector.create_mask %301 : vector<8xi1>
          %309 = vector.broadcast %c1112807906_i32 : i32 to vector<8xi32>
          %310 = vector.gather %1[%c3] [%309], %296, %296 : tensor<8xi1>, vector<8xi32>, vector<8xi1>, vector<8xi1> into vector<8xi1>
          %311 = arith.xori %false_2, %false : i1
          %312 = math.ctlz %2 : tensor<3x2xi16>
          %313 = math.ipowi %5, %5 : tensor<2xi64>
          %314 = arith.addi %c-19705_i16, %c9465_i16 : i16
          %315 = math.atan2 %13, %from_elements : tensor<2xf16>
          %316 = memref.realloc %alloc_14 : memref<8xi1> to memref<2xi1>
          %317 = arith.minsi %c9465_i16, %c-19705_i16 : i16
          %318 = arith.shli %c1625667180_i64, %c1625667180_i64 : i64
          %319 = math.log10 %0 : tensor<8xf32>
          %320 = arith.ceildivsi %c9465_i16, %c9465_i16 : i16
          %321 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 4)>(%c9, %69, %c11)
          %322 = index.ceildivu %c9, %c5
          %cst_56 = arith.constant 1.000000e+00 : f16
          %323 = vector.transfer_read %from_elements[%321], %cst_56 : tensor<2xf16>, vector<f16>
          %324 = math.sqrt %cst_5 : f16
          %325 = vector.broadcast %c1625667180_i64 : i64 to vector<3x2xi64>
          %326 = math.round %15 : tensor<4x2xf32>
          %327 = index.mul %c5, %c14
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %262 = vector.reduction <minui>, %20 : vector<4xi16> into i16
      %263 = arith.addf %76, %76 : f16
      %264 = math.log2 %from_elements : tensor<2xf16>
      %265 = affine.min affine_map<(d0, d1, d2) -> (d0 - (d2 - d0), -((d2 ceildiv 16 + d0) mod 64), d2 - d0)>(%c4, %260, %c13)
      %266 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_52 = memref.alloc() : memref<3xf32>
      %267 = tensor.empty() : tensor<3x3xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %266, %267 : memref<3xf32>, tensor<3x3x3xf32>, tensor<3x3xf32>) outs(%266 : tensor<3x3x3xf32>) {
      ^bb0(%in_54: f32, %in_55: f32, %in_56: f32, %out_57: f32):
        %293 = index.maxs %c1, %c14
        %294 = math.log10 %in : f32
        %295 = math.ctlz %c9465_i16 : i16
        vector.print %47 : vector<4xi16>
        %296 = arith.muli %c-26608_i16, %c9465_i16 : i16
        %297 = memref.load %alloc_8[%c1, %c0] : memref<3x2xi16>
        %298 = affine.min affine_map<(d0, d1, d2) -> (d2 - 16)>(%c4, %c5, %69)
        %299 = bufferization.to_memref %3 : memref<2xi16>
        %300 = index.maxs %c0, %c3
        %301 = arith.remsi %c1625667180_i64, %c1300628449_i64 : i64
        %302 = math.atan2 %76, %cst : f16
        %303 = arith.maxf %in_49, %in_56 : f32
        %304 = math.log2 %16 : tensor<4x2xf32>
        %305 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c5, %c13, %c3, %c5)
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %47, %47, %c-30193_i16 : vector<4xi16>, vector<4xi16> into i16
        %307 = math.cttz %c-19705_i16 : i16
        %308 = arith.mulf %in_50, %in : f32
        %309 = math.cttz %261 : tensor<2xi16>
        %310 = math.atan2 %12, %12 : tensor<8xf32>
        %311 = math.exp %28 : f32
        %312 = math.log10 %13 : tensor<2xf16>
        %313 = arith.cmpi slt, %c1625667180_i64, %c1747437374_i64 : i64
        %314 = arith.ceildivsi %c-26608_i16, %c-26608_i16 : i16
        vector.print %57 : vector<4x2xi64>
        %315 = vector.broadcast %cst_4 : f16 to vector<3x2xf16>
        %316 = vector.transpose %59, [0, 1] : vector<4x2xi64> to vector<4x2xi64>
        %317 = memref.load %alloc_8[%c2, %c0] : memref<3x2xi16>
        %318 = arith.xori %c9465_i16, %c-26608_i16 : i16
        %319 = index.maxs %67, %c10
        %320 = vector.flat_transpose %47 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %321 = vector.broadcast %298 : index to vector<2xindex>
        %322 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %323 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_11[%c2, %c1] [%321], %322, %323 : memref<3x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %324 = index.sizeof
        linalg.yield %in_54 : f32
      } -> tensor<3x3x3xf32>
      %269 = affine.min affine_map<(d0, d1) -> (d1 floordiv 32)>(%265, %c13)
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c6, %26, %c15, %c3)
      %271 = math.round %in : f32
      scf.index_switch %c12 
      case 1 {
        %293 = tensor.empty(%c15, %270) : tensor<?x?xi32>
        %294 = math.ctlz %10 : tensor<4x2xi64>
        %295 = memref.realloc %alloc_13 : memref<8xi16> to memref<8xi16>
        %296 = arith.addi %c1112807906_i32, %c1112807906_i32 : i32
        %297 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0, (d2 ceildiv 64 + d2 + 128) * 128, d2 ceildiv 64)>(%c12, %c6, %c2, %c4)
        %299 = math.cttz %c1747437374_i64 : i64
        %300 = vector.broadcast %270 : index to vector<4xindex>
        %301 = vector.broadcast %false : i1 to vector<4xi1>
        %302 = vector.broadcast %out : f32 to vector<4xf32>
        vector.scatter %39[%c3, %c1] [%300], %301, %302 : memref<4x2xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %303 = math.absf %12 : tensor<8xf32>
        %304 = vector.reduction <add>, %20 : vector<4xi16> into i16
        %305 = math.tanh %0 : tensor<8xf32>
        %306 = arith.remui %c-30193_i16, %c-30193_i16 : i16
        %307 = tensor.empty() : tensor<3x3xi16>
        %308 = linalg.matmul ins(%9, %transposed : tensor<3x2xi16>, tensor<2x3xi16>) outs(%307 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %309 = arith.divsi %c1112807906_i32, %c1112807906_i32 : i32
        %310 = math.ctlz %5 : tensor<2xi64>
        %311 = math.log %cst : f16
        scf.yield
      }
      case 2 {
        %293 = memref.atomic_rmw andi %c9465_i16, %alloc_7[%c6] : (i16, memref<8xi16>) -> i16
        %294 = math.absi %56 : tensor<8xi64>
        memref.assume_alignment %alloc_9, 16 : memref<8xi16>
        %295 = vector.broadcast %in : f32 to vector<4x2xf32>
        %296 = vector.fma %295, %295, %295 : vector<4x2xf32>
        %297 = bufferization.clone %alloc_12 : memref<3x2xf32> to memref<3x2xf32>
        %298 = bufferization.to_memref %2 : memref<3x2xi16>
        %299 = arith.subi %false_2, %false_2 : i1
        %300 = arith.mulf %76, %76 : f16
        %301 = index.ceildivu %c4, %270
        %302 = math.log10 %12 : tensor<8xf32>
        vector.print %47 : vector<4xi16>
        %303 = vector.extract_strided_slice %40 {offsets = [0], sizes = [1], strides = [1]} : vector<3x2xf32> to vector<1x2xf32>
        %304 = index.divu %c13, %26
        %305 = math.ipowi %2, %9 : tensor<3x2xi16>
        %306 = arith.divf %in_50, %28 : f32
        %307 = index.add %c10, %c5
        scf.yield
      }
      default {
        %293 = arith.muli %false, %false_2 : i1
        %294 = arith.addi %c-26608_i16, %c9465_i16 : i16
        %splat_54 = tensor.splat %in_49 : tensor<4x2xf32>
        %295 = math.ctlz %9 : tensor<3x2xi16>
        %296 = vector.broadcast %in : f32 to vector<4x2xf32>
        %297 = vector.fma %296, %296, %296 : vector<4x2xf32>
        %cst_55 = arith.constant 1.000000e+00 : f32
        %298 = vector.transfer_read %12[%c13], %cst_55 : tensor<8xf32>, vector<f32>
        %299 = vector.transpose %57, [1, 0] : vector<4x2xi64> to vector<2x4xi64>
        %300 = memref.realloc %alloc_10 : memref<8xf16> to memref<3xf16>
        %301 = arith.floordivsi %c-19705_i16, %c9465_i16 : i16
        %302 = arith.minf %cst_4, %cst_5 : f16
        %303 = index.ceildivs %c9, %270
        %304 = arith.floordivsi %c9465_i16, %c-26608_i16 : i16
        %305 = arith.cmpf true, %76, %cst_5 : f16
        %306 = index.casts %c1747437374_i64 : i64 to index
        %307 = vector.shuffle %57, %59 [0, 2, 4, 5, 7] : vector<4x2xi64>, vector<4x2xi64>
        %308 = math.ctpop %c1300628449_i64 : i64
      }
      %272 = vector.create_mask %c7 : vector<8xi1>
      %273 = memref.realloc %alloc_15 : memref<2xi16> to memref<2xi16>
      %274 = vector.broadcast %c-19705_i16 : i16 to vector<8xi16>
      %275 = vector.broadcast %c1112807906_i32 : i32 to vector<8xi32>
      %276 = vector.gather %alloc_6[%67, %260] [%275], %272, %274 : memref<4x2xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %277 = memref.realloc %alloc_15 : memref<2xi16> to memref<8xi16>
      %278 = index.ceildivu %c13, %c11
      %collapsed_53 = tensor.collapse_shape %11 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
      %279 = math.exp %collapsed_53 : tensor<8xf16>
      %280 = scf.if %false_2 -> (f16) {
        %293 = arith.cmpi sge, %c1747437374_i64, %c1300628449_i64 : i64
        %294 = math.log %76 : f16
        %295 = math.log10 %in_50 : f32
        %296 = index.add %c13, %269
        %297 = arith.addi %c-30193_i16, %c-30193_i16 : i16
        %298 = arith.remf %in, %in_49 : f32
        %299 = vector.splat %c4 : vector<8xindex>
        %300 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 + 8) mod 16 + 64) ceildiv 2)>(%c2, %c1, %265, %c9)
        scf.yield %cst_0 : f16
      } else {
        %extracted_54 = tensor.extract %18[%c0, %c2] : tensor<2x3xi16>
        %293 = arith.remsi %c1112807906_i32, %c1112807906_i32 : i32
        %294 = index.add %c10, %260
        %295 = index.sizeof
        %296 = math.cttz %14 : tensor<4x2xi16>
        %297 = math.expm1 %from_elements : tensor<2xf16>
        %298 = vector.insertelement %c-30193_i16, %47[%260 : index] : vector<4xi16>
        %299 = tensor.empty() : tensor<2x4xi64>
        %300 = tensor.empty() : tensor<4x4xi64>
        %301 = linalg.matmul ins(%10, %299 : tensor<4x2xi64>, tensor<2x4xi64>) outs(%300 : tensor<4x4xi64>) -> tensor<4x4xi64>
        scf.yield %cst_4 : f16
      }
      scf.execute_region {
        %293 = arith.minf %cst_1, %28 : f32
        %294 = math.ctlz %c1625667180_i64 : i64
        %295 = index.sizeof
        %296 = vector.broadcast %c-30193_i16 : i16 to vector<2xi16>
        %297 = index.divu %c6, %c7
        affine.store %cst_1, %alloc_19[%c9] : memref<2xf32>
        %expanded_54 = tensor.expand_shape %5 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        %298 = vector.reduction <maxsi>, %20 : vector<4xi16> into i16
        %299 = math.exp %280 : f16
        %300 = affine.max affine_map<(d0, d1, d2) -> (d0, d1 + 1, d2, d1 + 1)>(%26, %c1, %67)
        %301 = vector.broadcast %c6 : index to vector<4xindex>
        %302 = vector.broadcast %false_2 : i1 to vector<4xi1>
        vector.scatter %alloc_17[%c5] [%301], %302, %302 : memref<8xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %303 = math.ctlz %3 : tensor<2xi16>
        %rank_55 = tensor.rank %7 : tensor<4x2xi32>
        %304 = math.rsqrt %17 : tensor<4x2xf32>
        %305 = math.log2 %28 : f32
        %306 = arith.mulf %76, %cst_3 : f16
        scf.yield
      }
      %281 = arith.remsi %c1300628449_i64, %c1747437374_i64 : i64
      %282 = math.tan %13 : tensor<2xf16>
      %283 = arith.shrsi %c-26608_i16, %c-26608_i16 : i16
      %284 = arith.muli %false_2, %false_2 : i1
      %285 = memref.realloc %alloc_15 : memref<2xi16> to memref<3xi16>
      %286 = bufferization.to_tensor %alloc_11 : memref<3x2xi16>
      %287 = bufferization.clone %alloc_8 : memref<3x2xi16> to memref<3x2xi16>
      %288 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
      %289 = math.cttz %5 : tensor<2xi64>
      %290 = math.sqrt %16 : tensor<4x2xf32>
      %291 = scf.if %false_2 -> (memref<3x2xf32>) {
        %293 = vector.insertelement %c1112807906_i32, %275[%c2 : index] : vector<8xi32>
        %294 = arith.cmpf one, %280, %cst_0 : f16
        %295 = vector.extract %274[2] : vector<8xi16>
        %296 = arith.cmpi ugt, %c9465_i16, %c-26608_i16 : i16
        %297 = memref.load %alloc_11[%c1, %c0] : memref<3x2xi16>
        %298 = index.ceildivu %c3, %c9
        %299 = vector.multi_reduction <maxui>, %272, %272 [] : vector<8xi1> to vector<8xi1>
        %300 = affine.max affine_map<(d0, d1, d2) -> (d1 + 16, d1 + 16, d0, -(d1 - d2))>(%298, %48, %c2)
        scf.yield %alloc_12 : memref<3x2xf32>
      } else {
        %293 = index.divu %c2, %260
        %294 = index.ceildivu %260, %48
        %295 = math.ceil %76 : f16
        %cast_54 = tensor.cast %0 : tensor<8xf32> to tensor<?xf32>
        %296 = math.log2 %cst_3 : f16
        %297 = arith.cmpi ule, %c-30193_i16, %c9465_i16 : i16
        %298 = vector.broadcast %c1747437374_i64 : i64 to vector<2x2xi64>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %59, %57, %298 : vector<4x2xi64>, vector<4x2xi64> into vector<2x2xi64>
        %300 = index.maxs %c15, %278
        scf.yield %alloc_12 : memref<3x2xf32>
      }
      %292 = math.tan %cst_1 : f32
      linalg.yield %in : f32
    } -> tensor<3x3x3xf32>
    %82 = arith.maxf %cst_4, %cst_0 : f16
    %83 = arith.xori %c1300628449_i64, %c1300628449_i64 : i64
    memref.copy %alloc_17, %alloc_14 : memref<8xi1> to memref<8xi1>
    %84 = arith.ceildivsi %c-26608_i16, %c9465_i16 : i16
    %85 = vector.broadcast %c1747437374_i64 : i64 to vector<2xi64>
    %dest_25, %accumulated_value_26 = vector.scan <or>, %57, %85 {inclusive = true, reduction_dim = 0 : i64} : vector<4x2xi64>, vector<2xi64>
    scf.index_switch %c7 
    case 1 {
      %260 = arith.maxsi %c1300628449_i64, %c1625667180_i64 : i64
      %261 = math.floor %cst_3 : f16
      %262 = memref.load %alloc_14[%c7] : memref<8xi1>
      %263 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %40, %40, %263 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
      %alloc_49 = memref.alloc() : memref<3x2xi1>
      memref.tensor_store %6, %alloc_49 : memref<3x2xi1>
      %265 = arith.minf %cst_3, %cst_5 : f16
      %266 = math.log10 %0 : tensor<8xf32>
      %267 = arith.remui %false_2, %false_2 : i1
      %268 = math.ctlz %1 : tensor<8xi1>
      %269 = memref.load %alloc_18[%c1, %c1] : memref<4x2xf16>
      %270 = index.ceildivu %c15, %c5
      %271 = math.tan %12 : tensor<8xf32>
      %272 = affine.load %alloc_15[%c6] : memref<2xi16>
      %generated_50 = tensor.generate %48, %c1 {
      ^bb0(%arg2: index, %arg3: index):
        %275 = tensor.empty() : tensor<2xi32>
        %276 = math.fpowi %13, %275 : tensor<2xf16>, tensor<2xi32>
        %277 = index.divu %26, %c8
        %278 = arith.maxf %cst_0, %cst_0 : f16
        %279 = index.floordivs %c8, %arg3
        tensor.yield %false_2 : i1
      } : tensor<?x?xi1>
      %273 = arith.mulf %76, %cst_5 : f16
      %274 = math.ctlz %18 : tensor<2x3xi16>
      scf.yield
    }
    case 2 {
      %260 = arith.muli %c1300628449_i64, %c1300628449_i64 : i64
      %261 = arith.remsi %c9465_i16, %c-26608_i16 : i16
      %262 = vector.insertelement %c-26608_i16, %47[%c8 : index] : vector<4xi16>
      %263 = affine.if affine_set<(d0) : ((-d0) floordiv 32 - 64 >= 0, -d0 + (-d0) floordiv 32 == 0, ((-d0) floordiv 32) mod 64 >= 0, (-d0) floordiv 32 + d0 * 16 + (d0 mod 2) floordiv 128 >= 0)>(%c9) -> i32 {
        %276 = vector.broadcast %c3 : index to vector<2xindex>
        %277 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %278 = vector.broadcast %cst_4 : f16 to vector<2xf16>
        vector.scatter %alloc[%c1, %c0] [%276], %277, %278 : memref<4x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %279 = arith.addf %cst_1, %28 : f32
        %280 = index.ceildivu %c10, %69
        %281 = vector.load %alloc_10[%c2] : memref<8xf16>, vector<3x2xf16>
        %282 = math.log10 %0 : tensor<8xf32>
        %283 = arith.muli %c1747437374_i64, %c1625667180_i64 : i64
        %284 = math.exp %cst_3 : f16
        %285 = arith.muli %false_2, %false : i1
        affine.yield %c1112807906_i32 : i32
      } else {
        %276 = index.mul %c5, %c10
        memref.tensor_store %11, %alloc_18 : memref<4x2xf16>
        %277 = arith.xori %false_2, %false : i1
        %278 = arith.addf %cst_4, %cst_3 : f16
        %279 = arith.xori %c1300628449_i64, %c1747437374_i64 : i64
        %280 = arith.xori %c1625667180_i64, %c1625667180_i64 : i64
        %281 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2, d2 + 16)>(%67, %67, %c2)
        %282 = arith.ceildivsi %c-19705_i16, %c-19705_i16 : i16
        affine.yield %c1112807906_i32 : i32
      }
      %264 = math.cttz %22 : tensor<i16>
      %265 = math.round %17 : tensor<4x2xf32>
      %266 = index.ceildivs %48, %c3
      %267 = index.add %c12, %266
      %268 = math.atan2 %76, %cst_3 : f16
      %269 = index.maxu %c7, %267
      %from_elements_49 = tensor.from_elements %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32 : tensor<8xi32>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - 4) * 8, d0 mod 8)>(%c13, %c15, %c6, %269)
      %271 = math.rsqrt %cst_5 : f16
      %272 = tensor.empty() : tensor<3x3xi16>
      %273 = linalg.matmul ins(%9, %18 : tensor<3x2xi16>, tensor<2x3xi16>) outs(%272 : tensor<3x3xi16>) -> tensor<3x3xi16>
      %274 = index.sizeof
      %275 = vector.extract_strided_slice %20 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi16> to vector<4xi16>
      scf.yield
    }
    case 3 {
      %260 = vector.broadcast %c-19705_i16 : i16 to vector<2xi16>
      %261 = math.exp %12 : tensor<8xf32>
      %262 = math.tanh %cst_3 : f16
      %263 = math.exp %13 : tensor<2xf16>
      %264 = math.cttz %8 : tensor<3x2xi1>
      %265 = tensor.empty() : tensor<2x4xf32>
      %266 = tensor.empty() : tensor<4x4xf32>
      %267 = linalg.matmul ins(%17, %265 : tensor<4x2xf32>, tensor<2x4xf32>) outs(%266 : tensor<4x4xf32>) -> tensor<4x4xf32>
      %268 = index.maxs %c11, %c15
      %from_elements_49 = tensor.from_elements %c1625667180_i64, %c1625667180_i64, %c1300628449_i64, %c1747437374_i64, %c1300628449_i64, %c1747437374_i64, %c1747437374_i64, %c1300628449_i64 : tensor<8xi64>
      %269 = vector.shuffle %46, %46 [0] : vector<4x2xi1>, vector<4x2xi1>
      %270 = tensor.empty() : tensor<4x3xi16>
      %271 = linalg.matmul ins(%14, %transposed : tensor<4x2xi16>, tensor<2x3xi16>) outs(%270 : tensor<4x3xi16>) -> tensor<4x3xi16>
      %splat_50 = tensor.splat %c1747437374_i64 : tensor<3x2xi64>
      %272 = arith.muli %false, %false : i1
      scf.if %false {
        %cast_51 = tensor.cast %3 : tensor<2xi16> to tensor<?xi16>
        %276 = vector.broadcast %false : i1 to vector<2xi1>
        %dest_52, %accumulated_value_53 = vector.scan <minsi>, %46, %276 {inclusive = true, reduction_dim = 0 : i64} : vector<4x2xi1>, vector<2xi1>
        %277 = arith.xori %c1747437374_i64, %c1300628449_i64 : i64
        %278 = arith.remf %cst_4, %76 : f16
        %279 = vector.transpose %57, [1, 0] : vector<4x2xi64> to vector<2x4xi64>
        %280 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
        %281 = vector.transfer_write %280, %14[%26, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi16>, tensor<4x2xi16>
        %282 = arith.minsi %c1625667180_i64, %c1300628449_i64 : i64
        %283 = math.absi %9 : tensor<3x2xi16>
      }
      %273 = index.ceildivu %c14, %67
      %c0_i16 = arith.constant 0 : i16
      %274 = vector.transfer_read %21[%c6], %c0_i16 : tensor<8xi16>, vector<i16>
      %275 = math.sqrt %266 : tensor<4x4xf32>
      scf.yield
    }
    case 4 {
      %260 = arith.negf %28 : f32
      %261 = scf.if %false_2 -> (memref<8xi1>) {
        %279 = arith.addi %c9465_i16, %c9465_i16 : i16
        %280 = arith.shli %c1747437374_i64, %c1625667180_i64 : i64
        %281 = arith.subi %c-19705_i16, %c-30193_i16 : i16
        %282 = arith.divsi %c1625667180_i64, %c1625667180_i64 : i64
        %283 = math.tanh %11 : tensor<4x2xf16>
        %284 = arith.negf %cst_1 : f32
        affine.store %cst_1, %alloc_21[] : memref<f32>
        %285 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        scf.yield %alloc_14 : memref<8xi1>
      } else {
        %279 = vector.multi_reduction <maxui>, %47, %20 [] : vector<4xi16> to vector<4xi16>
        %true = arith.constant true
        %false_50 = arith.constant false
        %280 = vector.transfer_read %6[%c5, %c12], %false_50 : tensor<3x2xi1>, vector<i1>
        %splat_51 = tensor.splat %76 : tensor<8xf16>
        %281 = arith.shrui %c1625667180_i64, %c1747437374_i64 : i64
        %282 = arith.remui %c1112807906_i32, %c1112807906_i32 : i32
        %cast_52 = tensor.cast %5 : tensor<2xi64> to tensor<?xi64>
        %283 = math.tan %11 : tensor<4x2xf16>
        %284 = arith.remui %c-19705_i16, %c-30193_i16 : i16
        scf.yield %alloc_14 : memref<8xi1>
      }
      %262 = arith.mulf %28, %28 : f32
      %263 = vector.matrix_multiply %20, %47 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %264 = vector.broadcast %c1300628449_i64 : i64 to vector<2xi64>
      %265 = vector.insert %264, %59 [1] : vector<2xi64> into vector<4x2xi64>
      %266 = arith.cmpi sge, %c-26608_i16, %c9465_i16 : i16
      %267 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
      %268 = memref.load %alloc_13[%c0] : memref<8xi16>
      %269 = index.ceildivu %c4, %c4
      %270 = index.ceildivs %c15, %c0
      %271 = vector.broadcast %cst_1 : f32 to vector<8xf32>
      %272 = vector.fma %271, %271, %271 : vector<8xf32>
      %273 = arith.cmpf ule, %cst_0, %cst_0 : f16
      %274 = math.ctlz %10 : tensor<4x2xi64>
      %alloc_49 = memref.alloc() : memref<3x2xi1>
      %275 = vector.broadcast %c1625667180_i64 : i64 to vector<3xi64>
      %276 = vector.broadcast %false : i1 to vector<3xi1>
      %277 = vector.maskedload %alloc_20[%c3, %c0], %276, %275 : memref<4x2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %278 = math.floor %28 : f32
      scf.yield
    }
    default {
      %260 = arith.andi %c9465_i16, %c-19705_i16 : i16
      %261 = math.tanh %28 : f32
      %262 = tensor.empty() : tensor<8xf32>
      %mapped_49 = linalg.map ins(%0, %0, %12 : tensor<8xf32>, tensor<8xf32>, tensor<8xf32>) outs(%262 : tensor<8xf32>)
        (%in: f32, %in_55: f32, %in_56: f32) {
          %274 = arith.cmpi ult, %false_2, %false_2 : i1
          %275 = index.mul %c12, %26
          %276 = math.atan2 %12, %12 : tensor<8xf32>
          %277 = arith.addf %76, %cst_0 : f16
          %278 = arith.maxf %in, %28 : f32
          %false_57 = index.bool.constant false
          %279 = math.round %262 : tensor<8xf32>
          %280 = arith.ceildivsi %false_2, %false : i1
          %281 = math.absi %5 : tensor<2xi64>
          %true = index.bool.constant true
          memref.assume_alignment %alloc_16, 16 : memref<2xf16>
          %282 = arith.divsi %c1747437374_i64, %c1300628449_i64 : i64
          %283 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %284 = vector.transpose %41, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
          %285 = index.ceildivu %c0, %c12
          %286 = index.add %48, %c7
          %extracted_58 = tensor.extract %9[%c0, %c0] : tensor<3x2xi16>
          %287 = index.divu %69, %c5
          %288 = arith.maxf %76, %cst : f16
          %from_elements_59 = tensor.from_elements %c-19705_i16, %c-30193_i16, %c-19705_i16, %extracted_58, %c-19705_i16, %c9465_i16, %c-26608_i16, %c9465_i16 : tensor<4x2xi16>
          %289 = vector.create_mask %c10 : vector<2xi1>
          %290 = math.log10 %0 : tensor<8xf32>
          %291 = vector.load %alloc_17[%c0] : memref<8xi1>, vector<8xi1>
          %292 = math.log2 %13 : tensor<2xf16>
          %293 = index.add %c7, %c13
          %294 = affine.max affine_map<(d0, d1, d2) -> (-d2, -d2, (-d2 - 5) * 64, d0 mod 8)>(%c14, %293, %c10)
          %295 = memref.realloc %alloc_16 : memref<2xf16> to memref<8xf16>
          affine.store %cst_0, %alloc[%c11, %c8] : memref<4x2xf16>
          %296 = bufferization.to_memref %14 : memref<4x2xi16>
          %297 = arith.divui %c1625667180_i64, %c1625667180_i64 : i64
          %298 = index.sizeof
          %299 = index.add %c3, %287
          %cst_60 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_60 : f32
        }
      %generated_50 = tensor.generate %c4 {
      ^bb0(%arg2: index, %arg3: index):
        %274 = arith.subi %c1112807906_i32, %c1112807906_i32 : i32
        %275 = arith.remui %c1112807906_i32, %c1112807906_i32 : i32
        %276 = index.ceildivu %c9, %c5
        %277 = index.ceildivs %48, %c1
        tensor.yield %c1112807906_i32 : i32
      } : tensor<?x2xi32>
      %263 = arith.cmpi uge, %false_2, %false : i1
      %264 = index.divs %c14, %26
      %extracted_51 = tensor.extract %2[%c0, %c0] : tensor<3x2xi16>
      %265 = memref.realloc %alloc_19 : memref<2xf32> to memref<4xf32>
      %splat_52 = tensor.splat %c1747437374_i64 : tensor<3x2xi64>
      %266 = vector.broadcast %28 : f32 to vector<4x2xf32>
      %267 = vector.fma %266, %266, %266 : vector<4x2xf32>
      %cast_53 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
      %268 = vector.create_mask %69, %c13 : vector<3x2xi1>
      %269 = arith.ceildivsi %false_2, %false : i1
      %270 = vector.broadcast %cst_1 : f32 to vector<8xf32>
      %271 = vector.broadcast %false : i1 to vector<8xi1>
      %272 = vector.maskedload %alloc_21[], %271, %270 : memref<f32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %splat_54 = tensor.splat %cst_0 : tensor<4x2xf16>
      %273 = arith.addi %c1747437374_i64, %c1300628449_i64 : i64
    }
    %86 = tensor.empty() : tensor<3x3x3xf32>
    %alloc_27 = memref.alloc() : memref<3xf32>
    %87 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27 : memref<3xf32>) outs(%86 : tensor<3x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %260 = arith.shli %c1300628449_i64, %c1300628449_i64 : i64
      %261 = affine.min affine_map<(d0, d1) -> ((-(d0 - 1)) mod 64)>(%c13, %c9)
      %262 = math.ipowi %3, %3 : tensor<2xi16>
      %263 = arith.minf %in, %28 : f32
      %264 = bufferization.to_memref %15 : memref<4x2xf32>
      %265 = tensor.empty() : tensor<2x3xi1>
      %266 = tensor.empty() : tensor<3x3xi1>
      %267 = linalg.matmul ins(%8, %265 : tensor<3x2xi1>, tensor<2x3xi1>) outs(%266 : tensor<3x3xi1>) -> tensor<3x3xi1>
      %268 = index.castu %67 : index to i32
      %alloc_49 = memref.alloc() : memref<2xf32>
      memref.copy %alloc_19, %alloc_49 : memref<2xf32> to memref<2xf32>
      %269 = math.atan2 %12, %12 : tensor<8xf32>
      %270 = index.divu %c4, %c14
      %271 = index.maxs %c9, %261
      %272 = arith.cmpi eq, %c1300628449_i64, %c1625667180_i64 : i64
      scf.execute_region {
        %293 = tensor.empty() : tensor<3x2xf16>
        %294 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %295 = tensor.empty() : tensor<2x4xi1>
        %296 = tensor.empty() : tensor<3x4xi1>
        %297 = linalg.matmul ins(%6, %295 : tensor<3x2xi1>, tensor<2x4xi1>) outs(%296 : tensor<3x4xi1>) -> tensor<3x4xi1>
        %298 = bufferization.to_memref %21 : memref<8xi16>
        %299 = affine.min affine_map<(d0, d1) -> (0, 0, -(d1 floordiv 8) - 1)>(%c6, %c14)
        %300 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
        %301 = vector.broadcast %false : i1 to vector<2xi1>
        %302 = vector.maskedload %alloc_7[%c3], %301, %300 : memref<8xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %303 = arith.remui %c-19705_i16, %c9465_i16 : i16
        %304 = arith.ceildivsi %c-19705_i16, %c9465_i16 : i16
        %305 = index.sizeof
        %306 = math.ctlz %2 : tensor<3x2xi16>
        %cast_55 = tensor.cast %0 : tensor<8xf32> to tensor<?xf32>
        %307 = arith.subi %c1747437374_i64, %c1747437374_i64 : i64
        %308 = affine.apply affine_map<(d0, d1) -> (d0 - d1 + 4)>(%c6, %261)
        %309 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, ((d0 mod 16) mod 128 - d1) mod 2)>(%c11, %c0, %c4, %c12)
        %310 = arith.minf %cst_1, %cst_1 : f32
        %311 = vector.load %39[%c2, %c0] : memref<4x2xf32>, vector<8xf32>
        scf.yield
      }
      %273 = vector.matrix_multiply %20, %47 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %generated_50 = tensor.generate %c12 {
      ^bb0(%arg2: index):
        %extracted_55 = tensor.extract %0[%c5] : tensor<8xf32>
        %293 = vector.broadcast %c-19705_i16 : i16 to vector<3x2xi16>
        %294 = arith.divf %extracted_55, %in : f32
        %295 = math.ceil %0 : tensor<8xf32>
        tensor.yield %out : f32
      } : tensor<?xf32>
      %274 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_51 = memref.alloc() : memref<3x3xf32>
      %275 = tensor.empty() : tensor<3xf32>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51, %275, %alloc_51 : memref<3x3xf32>, tensor<3xf32>, memref<3x3xf32>) outs(%274 : tensor<3x3x3xf32>) {
      ^bb0(%in_55: f32, %in_56: f32, %in_57: f32, %out_58: f32):
        %293 = arith.remsi %false_2, %false : i1
        %294 = arith.minf %cst_3, %cst_4 : f16
        %295 = arith.muli %c1747437374_i64, %c1625667180_i64 : i64
        %296 = index.maxs %c3, %c6
        %297 = index.ceildivu %67, %c2
        %298 = arith.floordivsi %false, %false_2 : i1
        %299 = math.absi %false : i1
        %300 = bufferization.to_tensor %alloc_12 : memref<3x2xf32>
        %301 = math.floor %0 : tensor<8xf32>
        %302 = index.ceildivu %c8, %c5
        %303 = index.ceildivs %271, %c11
        %cst_59 = arith.constant 1.000000e+00 : f16
        %cst_60 = arith.constant 0.000000e+00 : f16
        %304 = vector.transfer_read %alloc_16[%c1], %cst_60 : memref<2xf16>, vector<f16>
        %305 = arith.remf %cst_4, %cst : f16
        %306 = math.rsqrt %out_58 : f32
        %307 = arith.minsi %c1625667180_i64, %c1300628449_i64 : i64
        %308 = math.exp %in_57 : f32
        %309 = vector.broadcast %26 : index to vector<8xindex>
        %310 = vector.broadcast %false_2 : i1 to vector<8xi1>
        %311 = vector.broadcast %out : f32 to vector<8xf32>
        vector.scatter %alloc_19[%c0] [%309], %310, %311 : memref<2xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        %312 = vector.insertelement %c-26608_i16, %273[%69 : index] : vector<1xi16>
        %313 = affine.min affine_map<(d0, d1, d2) -> ((d0 floordiv 64) floordiv 2 + d0 floordiv 64 - 64, (d0 floordiv 64) floordiv 2 + d0 floordiv 64 - 64, d1)>(%69, %270, %67)
        %314 = memref.realloc %alloc_14 : memref<8xi1> to memref<4xi1>
        %315 = vector.insertelement %c9465_i16, %20[%c11 : index] : vector<4xi16>
        %316 = math.fpowi %cst_59, %c1112807906_i32 : f16, i32
        %317 = vector.broadcast %out_58 : f32 to vector<3x2xf32>
        %318 = vector.fma %317, %41, %41 : vector<3x2xf32>
        %319 = affine.min affine_map<(d0, d1) -> (d0 - d1, 0, -32, 0)>(%c8, %67)
        %320 = arith.maxsi %c1625667180_i64, %c1747437374_i64 : i64
        %321 = math.log2 %0 : tensor<8xf32>
        %322 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 8, 0, 4)>(%67, %c14, %319)
        %323 = index.floordivs %67, %c14
        %324 = math.copysign %out, %out_58 : f32
        %325 = vector.broadcast %in_55 : f32 to vector<8xf32>
        %326 = vector.fma %325, %325, %325 : vector<8xf32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %327 = vector.transfer_read %4[%c12], %c0_i32 : tensor<8xi32>, vector<i32>
        %alloc_61 = memref.alloc() : memref<2x8xi64>
        %328 = tensor.empty() : tensor<4x8xi64>
        %329 = linalg.matmul ins(%10, %alloc_61 : tensor<4x2xi64>, memref<2x8xi64>) outs(%328 : tensor<4x8xi64>) -> tensor<4x8xi64>
        linalg.yield %in_56 : f32
      } -> tensor<3x3x3xf32>
      %277 = math.floor %13 : tensor<2xf16>
      %278 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_52 = memref.alloc() : memref<3xf32>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<3xf32>) outs(%278 : tensor<3x3x3xf32>) {
      ^bb0(%in_55: f32, %out_56: f32):
        %293 = bufferization.clone %alloc_17 : memref<8xi1> to memref<8xi1>
        %294 = arith.maxf %in, %in_55 : f32
        %alloca_57 = memref.alloca() : memref<3x2xf16>
        %295 = arith.cmpi eq, %c1625667180_i64, %c1625667180_i64 : i64
        %296 = vector.reduction <add>, %273 : vector<1xi16> into i16
        %297 = index.mul %c10, %69
        %298 = vector.reduction <minsi>, %47 : vector<4xi16> into i16
        %299 = index.ceildivs %c13, %c4
        %300 = math.floor %in : f32
        %true = index.bool.constant true
        %301 = math.tan %16 : tensor<4x2xf32>
        %302 = index.ceildivu %c0, %c15
        affine.store %28, %alloc_19[%c14] : memref<2xf32>
        affine.store %cst_1, %alloc_12[%c5, %c5] : memref<3x2xf32>
        %303 = vector.broadcast %in : f32 to vector<8xf32>
        %304 = vector.fma %303, %303, %303 : vector<8xf32>
        %305 = index.maxs %271, %67
        %306 = vector.broadcast %out_56 : f32 to vector<2xf32>
        %307 = vector.fma %306, %306, %306 : vector<2xf32>
        %308 = arith.shrsi %c1625667180_i64, %c1747437374_i64 : i64
        %309 = math.absf %cst_4 : f16
        %310 = arith.minui %c-19705_i16, %c-30193_i16 : i16
        %311 = index.ceildivu %c1, %c9
        %cst_58 = arith.constant 1.000000e+00 : f16
        %cst_59 = arith.constant 0.000000e+00 : f16
        %312 = vector.transfer_read %13[%c15], %cst_59 : tensor<2xf16>, vector<f16>
        %313 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + d0 - 2, (d3 - d1 - 128) * 64, (d1 + 1) mod 4)>(%c14, %c12, %26, %297)
        %314 = vector.broadcast %76 : f16 to vector<8xf16>
        %315 = arith.remsi %true, %true : i1
        %316 = arith.remf %cst_3, %cst_0 : f16
        %317 = arith.remui %true, %false_2 : i1
        %318 = arith.divsi %false, %true : i1
        %extracted_60 = tensor.extract %9[%c1, %c0] : tensor<3x2xi16>
        %319 = index.maxs %26, %c5
        %320 = vector.load %alloc_18[%c3, %c0] : memref<4x2xf16>, vector<4x2xf16>
        %321 = math.sqrt %cst_3 : f16
        linalg.yield %out_56 : f32
      } -> tensor<3x3x3xf32>
      %280 = bufferization.clone %alloc : memref<4x2xf16> to memref<4x2xf16>
      %281 = math.ipowi %9, %2 : tensor<3x2xi16>
      %282 = arith.minf %cst_3, %cst_0 : f16
      bufferization.dealloc_tensor %8 : tensor<3x2xi1>
      %283 = vector.broadcast %c1112807906_i32 : i32 to vector<4xi32>
      %dest_53, %accumulated_value_54 = vector.scan <xor>, %58, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi32>, vector<4xi32>
      %284 = bufferization.to_tensor %alloc_8 : memref<3x2xi16>
      %285 = arith.addi %false, %false : i1
      %286 = index.ceildivu %c6, %c13
      %287 = bufferization.to_tensor %alloc_14 : memref<8xi1>
      %288 = vector.insertelement %c-30193_i16, %47[%286 : index] : vector<4xi16>
      %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c0, %286, %270, %c13)
      %290 = index.sizeof
      %291 = vector.insertelement %c-30193_i16, %31[] : vector<i16>
      %292 = math.tanh %13 : tensor<2xf16>
      linalg.yield %cst_1 : f32
    } -> tensor<3x3x3xf32>
    %88 = affine.apply affine_map<(d0) -> ((d0 - 8) * -64)>(%69)
    %89 = bufferization.clone %alloc_10 : memref<8xf16> to memref<8xf16>
    %90 = vector.transpose %59, [0, 1] : vector<4x2xi64> to vector<4x2xi64>
    %from_elements_28 = tensor.from_elements %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32, %c1112807906_i32 : tensor<4x2xi32>
    %91 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %47, %47, %c9465_i16 : vector<4xi16>, vector<4xi16> into i16
    affine.store %false, %alloc_14[%c11] : memref<8xi1>
    %92 = vector.extract_strided_slice %46 {offsets = [2], sizes = [1], strides = [1]} : vector<4x2xi1> to vector<1x2xi1>
    %93 = vector.multi_reduction <minf>, %40, %41 [] : vector<3x2xf32> to vector<3x2xf32>
    %94 = math.sqrt %0 : tensor<8xf32>
    %95 = vector.create_mask %c4 : vector<8xi1>
    %96 = arith.divui %c-30193_i16, %c-19705_i16 : i16
    memref.assume_alignment %alloc_14, 16 : memref<8xi1>
    %97 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0)>(%c7, %88, %c4, %c10)
    %98 = math.ipowi %c9465_i16, %c-30193_i16 : i16
    %99 = math.sqrt %cst_3 : f16
    %100 = arith.cmpi ule, %c-30193_i16, %c-26608_i16 : i16
    affine.store %c9465_i16, %alloc_9[%c13] : memref<8xi16>
    %101 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
    %102 = affine.if affine_set<(d0, d1, d2) : (d1 ceildiv 128 == 0, 0 == 0, 0 == 0)>(%c12, %c2, %c7) -> i64 {
      %260 = math.tan %13 : tensor<2xf16>
      %261 = math.rsqrt %76 : f16
      %262 = vector.extract %92[0] : vector<1x2xi1>
      %263 = math.floor %11 : tensor<4x2xf16>
      %264 = vector.broadcast %c1300628449_i64 : i64 to vector<4x2xi64>
      memref.assume_alignment %101, 16 : memref<8xi16>
      %265 = math.atan2 %cst_5, %cst_0 : f16
      %266 = vector.matrix_multiply %262, %95 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xi1>, vector<8xi1>) -> vector<4xi1>
      affine.yield %c1747437374_i64 : i64
    } else {
      %260 = math.log %cst : f16
      memref.alloca_scope  {
        %266 = arith.subi %c1112807906_i32, %c1112807906_i32 : i32
        %267 = math.absf %11 : tensor<4x2xf16>
        %268 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
        %269 = vector.fma %268, %40, %268 : vector<3x2xf32>
        %270 = vector.broadcast %28 : f32 to vector<3xf32>
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %41, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
        memref.assume_alignment %alloc_18, 16 : memref<4x2xf16>
        %271 = arith.maxf %cst_1, %cst_1 : f32
        %272 = index.sub %c6, %c3
        %273 = vector.load %alloc_16[%c1] : memref<2xf16>, vector<3x2xf16>
        %extracted_51 = tensor.extract %14[%c1, %c1] : tensor<4x2xi16>
        %274 = vector.broadcast %67 : index to vector<8xindex>
        %275 = vector.broadcast %c-19705_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_13[%c4] [%274], %95, %275 : memref<8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %276 = math.round %13 : tensor<2xf16>
        %277 = vector.broadcast %28 : f32 to vector<4x2xf32>
        %278 = vector.fma %277, %277, %277 : vector<4x2xf32>
        %279 = math.atan2 %cst_3, %cst_5 : f16
        %280 = arith.addf %cst_5, %cst_5 : f16
        %281 = index.ceildivs %c1, %c2
        %282 = vector.create_mask %c8, %c0 : vector<3x2xi1>
        %283 = index.add %48, %c1
        %284 = arith.shli %c1112807906_i32, %c1112807906_i32 : i32
        %285 = math.rsqrt %15 : tensor<4x2xf32>
        %expanded_52 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<2x3xi16> into tensor<2x3x1xi16>
        %286 = arith.muli %c-30193_i16, %c-30193_i16 : i16
        %287 = vector.reduction <maxui>, %47 : vector<4xi16> into i16
        %288 = memref.realloc %alloc_7 : memref<8xi16> to memref<2xi16>
        %289 = arith.floordivsi %c1747437374_i64, %c1300628449_i64 : i64
        %290 = math.tanh %76 : f16
        %291 = arith.addf %cst, %cst_4 : f16
        %292 = index.ceildivu %c0, %c11
        %293 = arith.remf %cst_3, %cst_3 : f16
        %294 = math.ipowi %c9465_i16, %c-26608_i16 : i16
        %rank_53 = tensor.rank %0 : tensor<8xf32>
        %295 = index.divu %97, %c10
        %296 = index.maxs %67, %283
      }
      %261 = math.expm1 %28 : f32
      %262 = math.tanh %from_elements : tensor<2xf16>
      %263 = index.mul %c13, %67
      vector.print %58 : vector<4x2xi32>
      %264 = vector.transpose %95, [0] : vector<8xi1> to vector<8xi1>
      %265 = math.tanh %16 : tensor<4x2xf32>
      affine.yield %c1300628449_i64 : i64
    }
    %103 = index.divu %c1, %c3
    %104 = memref.realloc %alloc_15 : memref<2xi16> to memref<3xi16>
    %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<4x2xi32> into tensor<8xi32>
    %cast = tensor.cast %2 : tensor<3x2xi16> to tensor<?x?xi16>
    %105 = math.cttz %9 : tensor<3x2xi16>
    %106 = vector.broadcast %28 : f32 to vector<8xf32>
    %107 = vector.maskedload %alloc_21[], %95, %106 : memref<f32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
    %108 = index.sizeof
    scf.execute_region {
      %260 = math.exp %28 : f32
      %261 = tensor.empty() : tensor<8xi16>
      %262 = math.expm1 %0 : tensor<8xf32>
      %263 = scf.index_switch %c6 -> memref<3x2xi16> 
      case 1 {
        %273 = bufferization.to_tensor %89 : memref<8xf16>
        %274 = math.absf %16 : tensor<4x2xf32>
        %275 = vector.multi_reduction <maxsi>, %57, %57 [] : vector<4x2xi64> to vector<4x2xi64>
        %276 = math.fpowi %11, %from_elements_28 : tensor<4x2xf16>, tensor<4x2xi32>
        %277 = arith.maxf %cst_4, %cst_0 : f16
        %278 = arith.remui %c-19705_i16, %c-30193_i16 : i16
        %279 = arith.ceildivsi %c-19705_i16, %c-26608_i16 : i16
        %280 = arith.ceildivsi %c1747437374_i64, %c1747437374_i64 : i64
        %281 = affine.min affine_map<(d0, d1, d2) -> (d0 + d0 floordiv 16 + 2 - (d0 + 32))>(%26, %67, %c9)
        %282 = math.rsqrt %from_elements : tensor<2xf16>
        %283 = vector.insertelement %false_2, %95[%c9 : index] : vector<8xi1>
        %284 = vector.reduction <mul>, %107 : vector<8xf32> into f32
        %285 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 4)>(%103, %88, %c8)
        %286 = vector.reduction <add>, %20 : vector<4xi16> into i16
        %287 = arith.addf %cst_4, %cst_5 : f16
        %288 = vector.broadcast %c1300628449_i64 : i64 to vector<3x2xi64>
        %289 = vector.broadcast %false_2 : i1 to vector<3x2xi1>
        %290 = vector.broadcast %c1112807906_i32 : i32 to vector<3x2xi32>
        %291 = vector.gather %10[%c11, %285] [%290], %289, %288 : tensor<4x2xi64>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi64> into vector<3x2xi64>
        scf.yield %alloc_11 : memref<3x2xi16>
      }
      default {
        %false_51 = index.bool.constant false
        %273 = math.log10 %cst_1 : f32
        %274 = vector.create_mask %c3, %103 : vector<3x2xi1>
        %275 = arith.remsi %c1625667180_i64, %c1747437374_i64 : i64
        %276 = memref.realloc %alloc_14 : memref<8xi1> to memref<3xi1>
        %277 = math.rsqrt %cst_4 : f16
        %false_52 = index.bool.constant false
        %278 = arith.addf %cst_5, %cst_3 : f16
        %279 = vector.broadcast %c1112807906_i32 : i32 to vector<4xi32>
        %dest_53, %accumulated_value_54 = vector.scan <and>, %58, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi32>, vector<4xi32>
        %280 = vector.broadcast %28 : f32 to vector<2xf32>
        %dest_55, %accumulated_value_56 = vector.scan <minf>, %40, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xf32>, vector<2xf32>
        %281 = math.rsqrt %15 : tensor<4x2xf32>
        %expanded_57 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
        %c1_i16 = arith.constant 1 : i16
        %282 = vector.transfer_read %alloc_6[%c7, %103], %c1_i16 : memref<4x2xi16>, vector<i16>
        %283 = index.sub %88, %c14
        %284 = arith.mulf %cst_0, %cst_4 : f16
        %285 = arith.mulf %cst, %cst_0 : f16
        scf.yield %alloc_11 : memref<3x2xi16>
      }
      %expanded_49 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
      %264 = math.ctlz %false_2 : i1
      %265 = affine.apply affine_map<(d0, d1) -> (d1 * -8)>(%67, %c11)
      affine.store %c1300628449_i64, %alloc_20[%c12, %c14] : memref<4x2xi64>
      %266 = arith.cmpi ugt, %c-30193_i16, %c-19705_i16 : i16
      %267 = bufferization.to_memref %2 : memref<3x2xi16>
      %268 = math.tan %cst_3 : f16
      %269 = vector.reduction <mul>, %95 : vector<8xi1> into i1
      %270 = math.round %12 : tensor<8xf32>
      %271 = math.cttz %transposed : tensor<2x3xi16>
      %272 = math.exp %13 : tensor<2xf16>
      %splat_50 = tensor.splat %76 : tensor<3x2xf16>
      scf.yield
    }
    %109 = arith.addf %cst_1, %28 : f32
    %110 = math.fpowi %11, %from_elements_28 : tensor<4x2xf16>, tensor<4x2xi32>
    %111 = index.ceildivu %c12, %c11
    %112 = math.atan2 %cst_1, %28 : f32
    affine.store %76, %alloc_16[%c12] : memref<2xf16>
    %113 = bufferization.to_tensor %alloc_11 : memref<3x2xi16>
    %114 = math.log10 %cst : f16
    %115 = vector.reduction <minf>, %106 : vector<8xf32> into f32
    %116 = math.absi %10 : tensor<4x2xi64>
    affine.store %c-19705_i16, %alloc_6[%c9, %c3] : memref<4x2xi16>
    %117 = index.sizeof
    %118 = math.round %15 : tensor<4x2xf32>
    %119 = tensor.empty() : tensor<2xi64>
    %120 = vector.broadcast %c9465_i16 : i16 to vector<3x2xi16>
    %121 = vector.broadcast %false : i1 to vector<3x2xi1>
    %122 = vector.broadcast %c1112807906_i32 : i32 to vector<3x2xi32>
    %123 = vector.gather %21[%88] [%122], %121, %120 : tensor<8xi16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi16> into vector<3x2xi16>
    %124 = affine.min affine_map<(d0) -> (d0 + 4, d0 + 1)>(%111)
    %125 = math.cttz %56 : tensor<8xi64>
    %126 = vector.insert %c9465_i16, %47 [3] : i16 into vector<4xi16>
    %127 = math.log %0 : tensor<8xf32>
    %128 = vector.transpose %47, [0] : vector<4xi16> to vector<4xi16>
    %extracted = tensor.extract %5[%c1] : tensor<2xi64>
    %129 = arith.minsi %c1300628449_i64, %c1747437374_i64 : i64
    memref.copy %alloc_8, %alloc_11 : memref<3x2xi16> to memref<3x2xi16>
    %130 = affine.if affine_set<(d0, d1, d2) : (d1 ceildiv 4 >= 0, d0 * 2 >= 0, (d1 ceildiv 64) mod 64 - 2 == 0)>(%c8, %c1, %c14) -> memref<4x2xi16> {
      %260 = math.sqrt %13 : tensor<2xf16>
      %261 = math.expm1 %15 : tensor<4x2xf32>
      %262 = math.round %11 : tensor<4x2xf16>
      %263 = math.exp %12 : tensor<8xf32>
      %264 = vector.extract_strided_slice %92 {offsets = [0], sizes = [1], strides = [1]} : vector<1x2xi1> to vector<1x2xi1>
      %265 = math.atan %13 : tensor<2xf16>
      %266 = math.roundeven %28 : f32
      %267 = arith.addf %cst_3, %cst_4 : f16
      affine.yield %alloc_6 : memref<4x2xi16>
    } else {
      %cst_49 = arith.constant 1.000000e+00 : f32
      %cst_50 = arith.constant 0.000000e+00 : f32
      %260 = vector.transfer_read %alloc_12[%c3, %c6], %cst_50 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x2xf32>, vector<8xf32>
      %splat_51 = tensor.splat %cst_0 : tensor<2xf16>
      %261 = index.divu %c9, %97
      %262 = arith.ceildivsi %c-30193_i16, %c9465_i16 : i16
      %generated_52 = tensor.generate %c15 {
      ^bb0(%arg2: index, %arg3: index):
        affine.store %cst_1, %39[%c10, %c4] : memref<4x2xf32>
        %266 = index.sizeof
        %267 = vector.splat %c-19705_i16 : vector<3x2xi16>
        %268 = arith.muli %c1747437374_i64, %c1300628449_i64 : i64
        tensor.yield %28 : f32
      } : tensor<?x2xf32>
      %263 = math.log %0 : tensor<8xf32>
      %264 = vector.multi_reduction <mul>, %106, %107 [] : vector<8xf32> to vector<8xf32>
      %265 = affine.max affine_map<(d0, d1, d2) -> (d1 + 128, -(d1 floordiv 128 + (d1 mod 128) * 2), (d1 mod 128) * 2)>(%c4, %c14, %117)
      affine.yield %alloc_6 : memref<4x2xi16>
    }
    %131 = math.absi %4 : tensor<8xi32>
    %alloca = memref.alloca() : memref<8xi64>
    %132 = index.maxs %c6, %c2
    %133 = tensor.empty() : tensor<2x8xf32>
    %134 = tensor.empty() : tensor<4x8xf32>
    %135 = linalg.matmul ins(%16, %133 : tensor<4x2xf32>, tensor<2x8xf32>) outs(%134 : tensor<4x8xf32>) -> tensor<4x8xf32>
    %136 = scf.while (%arg2 = %57) : (vector<4x2xi64>) -> vector<4x2xi64> {
      %generated_49 = tensor.generate %c9 {
      ^bb0(%arg3: index, %arg4: index):
        %268 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %269 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %270 = vector.maskedload %alloc_10[%c5], %269, %268 : memref<8xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %271 = arith.shli %c1747437374_i64, %extracted : i64
        %272 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 2, d2 - d1)>(%c7, %48, %arg3)
        %273 = vector.reduction <mul>, %269 : vector<2xi1> into i1
        tensor.yield %c1112807906_i32 : i32
      } : tensor<?x2xi32>
      %260 = math.round %cst_4 : f16
      %261 = scf.index_switch %26 -> index 
      case 1 {
        %268 = index.ceildivu %c13, %c9
        %269 = math.tan %cst_0 : f16
        memref.assume_alignment %alloc_7, 1 : memref<8xi16>
        %false_50 = index.bool.constant false
        %270 = arith.addf %28, %28 : f32
        %false_51 = arith.constant false
        %false_52 = arith.constant false
        %271 = vector.transfer_read %6[%c4, %c7], %false_52 : tensor<3x2xi1>, vector<i1>
        memref.assume_alignment %alloc, 1 : memref<4x2xf16>
        %272 = math.atan %134 : tensor<4x8xf32>
        %273 = math.atan2 %cst, %cst : f16
        %extracted_53 = tensor.extract %14[%c3, %c1] : tensor<4x2xi16>
        %274 = index.casts %132 : index to i32
        %275 = math.fpowi %cst_1, %c1112807906_i32 : f32, i32
        %276 = math.atan2 %16, %15 : tensor<4x2xf32>
        %277 = bufferization.clone %alloc_8 : memref<3x2xi16> to memref<3x2xi16>
        %278 = arith.cmpf one, %cst, %cst_0 : f16
        %splat_54 = tensor.splat %c1747437374_i64 : tensor<4x2xi64>
        scf.yield %88 : index
      }
      case 2 {
        %268 = math.log10 %from_elements : tensor<2xf16>
        vector.print %122 : vector<3x2xi32>
        %extracted_50 = tensor.extract %14[%c1, %c0] : tensor<4x2xi16>
        %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0)>(%c12, %117, %c2, %124)
        memref.copy %alloc_10, %89 : memref<8xf16> to memref<8xf16>
        %splat_51 = tensor.splat %cst_0 : tensor<4x2xf16>
        %270 = index.mul %c15, %c7
        %271 = vector.transpose %123, [0, 1] : vector<3x2xi16> to vector<3x2xi16>
        %272 = vector.create_mask %88 : vector<2xi1>
        %273 = index.sizeof
        %274 = math.floor %0 : tensor<8xf32>
        %275 = arith.addi %extracted, %extracted : i64
        %276 = arith.mulf %cst_5, %cst_3 : f16
        %277 = index.sizeof
        %278 = memref.load %alloc_19[%c0] : memref<2xf32>
        %279 = vector.broadcast %273 : index to vector<8xindex>
        %280 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        vector.scatter %alloc_10[%c6] [%279], %95, %280 : memref<8xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        scf.yield %c10 : index
      }
      default {
        %268 = index.divu %c6, %c11
        %269 = arith.divsi %c1625667180_i64, %c1625667180_i64 : i64
        %270 = index.divu %132, %c10
        %splat_50 = tensor.splat %false : tensor<3x2xi1>
        %271 = arith.shrui %c9465_i16, %c-30193_i16 : i16
        %272 = vector.broadcast %28 : f32 to vector<8xf32>
        %273 = vector.fma %272, %107, %272 : vector<8xf32>
        %274 = vector.multi_reduction <and>, %58, %c1112807906_i32 [0, 1] : vector<4x2xi32> to i32
        %275 = index.sizeof
        %276 = vector.broadcast %c1625667180_i64 : i64 to vector<3x2xi64>
        %277 = index.divu %132, %26
        %278 = arith.maxsi %c-30193_i16, %c-19705_i16 : i16
        %279 = arith.floordivsi %c9465_i16, %c9465_i16 : i16
        %280 = arith.addi %c1112807906_i32, %274 : i32
        %281 = math.tanh %cst_3 : f16
        %282 = vector.broadcast %28 : f32 to vector<8xf32>
        %283 = vector.fma %282, %106, %106 : vector<8xf32>
        %284 = math.cttz %1 : tensor<8xi1>
        scf.yield %c14 : index
      }
      %262 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
      %263 = vector.fma %262, %262, %262 : vector<3x2xf32>
      %264 = affine.apply affine_map<(d0, d1) -> (d0 mod 4)>(%132, %c15)
      %265 = math.powf %cst_5, %cst_5 : f16
      %266 = index.ceildivu %c15, %c8
      %267 = math.ctpop %c1112807906_i32 : i32
      scf.condition(%false_2) %57 : vector<4x2xi64>
    } do {
    ^bb0(%arg2: vector<4x2xi64>):
      %260 = index.add %111, %c3
      %261 = math.log10 %134 : tensor<4x8xf32>
      %262 = arith.divsi %extracted, %c1625667180_i64 : i64
      %263 = arith.xori %c9465_i16, %c-19705_i16 : i16
      %264 = index.mul %67, %111
      %265 = memref.realloc %alloc_17 : memref<8xi1> to memref<8xi1>
      %266 = memref.alloca_scope  -> (i32) {
        %274 = math.log2 %17 : tensor<4x2xf32>
        %275 = math.cttz %56 : tensor<8xi64>
        %276 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
        %277 = math.log2 %13 : tensor<2xf16>
        %278 = arith.addf %76, %cst_3 : f16
        %279 = vector.reduction <maxsi>, %20 : vector<4xi16> into i16
        %280 = index.casts %c8 : index to i32
        %281 = arith.xori %c1300628449_i64, %c1625667180_i64 : i64
        %282 = index.maxs %c7, %117
        %283 = index.maxs %c5, %264
        affine.store %28, %alloc_19[%c1] : memref<2xf32>
        %284 = memref.load %alloc_21[] : memref<f32>
        %285 = index.castu %c-19705_i16 : i16 to index
        %286 = math.rsqrt %13 : tensor<2xf16>
        %287 = arith.cmpf uge, %cst_5, %cst_5 : f16
        %288 = arith.remf %cst_4, %76 : f16
        %289 = vector.transpose %41, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
        %290 = index.add %282, %48
        %291 = arith.divui %c9465_i16, %c9465_i16 : i16
        %292 = math.log2 %cst_3 : f16
        %from_elements_50 = tensor.from_elements %c1300628449_i64, %c1625667180_i64 : tensor<2xi64>
        %293 = vector.broadcast %260 : index to vector<8xindex>
        %294 = vector.broadcast %cst : f16 to vector<8xf16>
        vector.scatter %alloc_18[%c0, %c0] [%293], %95, %294 : memref<4x2xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %295 = arith.addf %cst_4, %cst_3 : f16
        %296 = arith.cmpf ueq, %cst, %cst_4 : f16
        %rank_51 = tensor.rank %2 : tensor<3x2xi16>
        %297 = memref.load %alloc_12[%c1, %c0] : memref<3x2xf32>
        %298 = index.maxs %264, %c13
        %299 = index.maxs %c8, %298
        %300 = index.divu %264, %c8
        %c1_i16 = arith.constant 1 : i16
        %301 = vector.transfer_read %alloc_9[%88], %c1_i16 : memref<8xi16>, vector<i16>
        %302 = math.log10 %cst_0 : f16
        %cast_52 = tensor.cast %17 : tensor<4x2xf32> to tensor<?x?xf32>
        memref.alloca_scope.return %c1112807906_i32 : i32
      }
      scf.index_switch %67 
      case 1 {
        %alloc_50 = memref.alloc() : memref<2xi64>
        %274 = math.log10 %cst : f16
        %275 = arith.shrsi %266, %266 : i32
        %false_51 = arith.constant false
        %276 = vector.transfer_read %8[%117, %108], %false_51 : tensor<3x2xi1>, vector<i1>
        %277 = index.sizeof
        %278 = math.exp %cst_1 : f32
        %true = index.bool.constant true
        %cast_52 = tensor.cast %3 : tensor<2xi16> to tensor<?xi16>
        %279 = math.round %17 : tensor<4x2xf32>
        %280 = index.floordivs %97, %117
        %281 = vector.reduction <maxsi>, %47 : vector<4xi16> into i16
        %282 = arith.divui %c1747437374_i64, %c1747437374_i64 : i64
        %283 = vector.broadcast %c9465_i16 : i16 to vector<8xi16>
        %284 = vector.maskedload %alloc_8[%c2, %c0], %95, %283 : memref<3x2xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %285 = vector.splat %264 : vector<8xindex>
        %286 = math.round %76 : f16
        %287 = vector.multi_reduction <maxsi>, %46, %true [0, 1] : vector<4x2xi1> to i1
        scf.yield
      }
      case 2 {
        %274 = index.divu %260, %c2
        %275 = index.divs %c0, %108
        %276 = bufferization.clone %alloc_9 : memref<8xi16> to memref<8xi16>
        %277 = arith.shrsi %266, %266 : i32
        %278 = vector.broadcast %c1300628449_i64 : i64 to vector<2x2xi64>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %59, %59, %278 : vector<4x2xi64>, vector<4x2xi64> into vector<2x2xi64>
        %extracted_50 = tensor.extract %9[%c2, %c0] : tensor<3x2xi16>
        %280 = vector.broadcast %extracted_50 : i16 to vector<2xi16>
        %281 = vector.multi_reduction <or>, %120, %280 [0] : vector<3x2xi16> to vector<2xi16>
        %282 = vector.broadcast %28 : f32 to vector<f32>
        %283 = vector.transfer_write %282, %12[%108] : vector<f32>, tensor<8xf32>
        %splat_51 = tensor.splat %c-26608_i16 : tensor<8xi16>
        %284 = math.log1p %13 : tensor<2xf16>
        %285 = index.casts %108 : index to i32
        %286 = affine.apply affine_map<(d0) -> (((d0 * 8) ceildiv 128) floordiv 2)>(%c1)
        %287 = math.fpowi %15, %from_elements_28 : tensor<4x2xf32>, tensor<4x2xi32>
        %288 = math.powf %12, %0 : tensor<8xf32>
        %289 = arith.maxsi %c1747437374_i64, %c1747437374_i64 : i64
        %290 = arith.maxsi %266, %266 : i32
        scf.yield
      }
      case 3 {
        affine.store %c-19705_i16, %alloc_7[%c1] : memref<8xi16>
        %274 = arith.ceildivsi %c1747437374_i64, %c1747437374_i64 : i64
        %275 = bufferization.to_memref %11 : memref<4x2xf16>
        %276 = vector.insertelement %28, %107[%117 : index] : vector<8xf32>
        %277 = index.casts %88 : index to i32
        %extracted_50 = tensor.extract %from_elements[%c0] : tensor<2xf16>
        %278 = math.log10 %cst_1 : f32
        %279 = arith.divsi %false_2, %false_2 : i1
        affine.store %cst, %alloc[%c12, %c9] : memref<4x2xf16>
        %280 = index.mul %c10, %69
        %281 = arith.muli %extracted, %c1300628449_i64 : i64
        %282 = math.log10 %76 : f16
        %283 = math.sqrt %cst_0 : f16
        %284 = math.tan %cst_4 : f16
        %285 = math.ctlz %6 : tensor<3x2xi1>
        %286 = memref.realloc %alloc_14 : memref<8xi1> to memref<8xi1>
        scf.yield
      }
      case 4 {
        %274 = index.ceildivu %c8, %c15
        %rank_50 = tensor.rank %from_elements : tensor<2xf16>
        %275 = arith.remf %cst_0, %76 : f16
        %276 = vector.transpose %41, [1, 0] : vector<3x2xf32> to vector<2x3xf32>
        %277 = memref.load %alloc_21[] : memref<f32>
        %278 = arith.divsi %c9465_i16, %c-26608_i16 : i16
        %279 = index.divu %c9, %c12
        %280 = math.round %17 : tensor<4x2xf32>
        %281 = arith.maxui %c1625667180_i64, %c1300628449_i64 : i64
        %282 = vector.broadcast %c-19705_i16 : i16 to vector<2x2xi16>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %120, %123, %282 : vector<3x2xi16>, vector<3x2xi16> into vector<2x2xi16>
        %284 = vector.broadcast %266 : i32 to vector<i32>
        %285 = vector.transfer_write %284, %7[%260, %c5] : vector<i32>, tensor<4x2xi32>
        %286 = tensor.empty() : tensor<2x2xi32>
        %287 = tensor.empty() : tensor<4x2xi32>
        %288 = linalg.matmul ins(%from_elements_28, %286 : tensor<4x2xi32>, tensor<2x2xi32>) outs(%287 : tensor<4x2xi32>) -> tensor<4x2xi32>
        %289 = math.rsqrt %17 : tensor<4x2xf32>
        %290 = math.exp %0 : tensor<8xf32>
        %291 = vector.broadcast %28 : f32 to vector<2xf32>
        %292 = vector.multi_reduction <minf>, %41, %291 [0] : vector<3x2xf32> to vector<2xf32>
        %293 = index.casts %c1747437374_i64 : i64 to index
        scf.yield
      }
      default {
        %274 = math.round %15 : tensor<4x2xf32>
        %extracted_50 = tensor.extract %6[%c1, %c0] : tensor<3x2xi1>
        %275 = affine.max affine_map<(d0) -> (d0 - 1, d0 ceildiv 64)>(%117)
        %extracted_51 = tensor.extract %17[%c1, %c1] : tensor<4x2xf32>
        %276 = arith.ceildivsi %extracted_50, %extracted_50 : i1
        %277 = math.absi %extracted : i64
        %278 = arith.subi %c1300628449_i64, %extracted : i64
        %279 = math.tan %11 : tensor<4x2xf16>
        %280 = tensor.empty(%69, %c4) : tensor<?x?xi64>
        %281 = vector.broadcast %28 : f32 to vector<4x2xf32>
        %282 = vector.fma %281, %281, %281 : vector<4x2xf32>
        %283 = math.log2 %134 : tensor<4x8xf32>
        %284 = vector.gather %1[%103] [%58], %46, %46 : tensor<8xi1>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi1> into vector<4x2xi1>
        %285 = vector.broadcast %48 : index to vector<8xindex>
        %286 = vector.broadcast %c-19705_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_8[%c0, %c0] [%285], %95, %286 : memref<3x2xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %287 = math.log10 %cst_0 : f16
        memref.copy %alloc_18, %alloc : memref<4x2xf16> to memref<4x2xf16>
        %288 = math.absf %13 : tensor<2xf16>
      }
      %267 = math.sqrt %cst_0 : f16
      %268 = math.log1p %11 : tensor<4x2xf16>
      %269 = math.ctlz %2 : tensor<3x2xi16>
      %270 = arith.minsi %c1112807906_i32, %c1112807906_i32 : i32
      %271 = math.log10 %13 : tensor<2xf16>
      %272 = vector.extract_strided_slice %41 {offsets = [0], sizes = [1], strides = [1]} : vector<3x2xf32> to vector<1x2xf32>
      %splat_49 = tensor.splat %266 : tensor<3x2xi32>
      %273 = arith.shrsi %c1300628449_i64, %c1625667180_i64 : i64
      scf.yield %57 : vector<4x2xi64>
    }
    %137 = math.ipowi %23, %22 : tensor<i16>
    %138 = tensor.empty() : tensor<3x2xf16>
    %139 = memref.alloca_scope  -> (i64) {
      %260 = arith.remsi %c1300628449_i64, %extracted : i64
      %261 = index.add %c10, %c3
      %262 = arith.floordivsi %false_2, %false_2 : i1
      %263 = index.sub %261, %c11
      %264 = arith.floordivsi %c1625667180_i64, %c1300628449_i64 : i64
      scf.index_switch %c14 
      case 1 {
        %289 = math.ctlz %2 : tensor<3x2xi16>
        %290 = math.absf %0 : tensor<8xf32>
        %291 = arith.shli %c9465_i16, %c-26608_i16 : i16
        %292 = memref.realloc %alloc_17 : memref<8xi1> to memref<3xi1>
        %293 = arith.divui %c9465_i16, %c-19705_i16 : i16
        %294 = bufferization.to_tensor %alloc_13 : memref<8xi16>
        %295 = vector.reduction <maxsi>, %47 : vector<4xi16> into i16
        %296 = math.rsqrt %15 : tensor<4x2xf32>
        %297 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %298 = vector.fma %297, %297, %106 : vector<8xf32>
        %299 = arith.minf %28, %cst_1 : f32
        %300 = arith.divsi %c-26608_i16, %c-19705_i16 : i16
        %301 = arith.shli %c1625667180_i64, %c1747437374_i64 : i64
        %302 = bufferization.clone %alloc_18 : memref<4x2xf16> to memref<4x2xf16>
        %303 = arith.andi %c1300628449_i64, %c1625667180_i64 : i64
        %304 = bufferization.to_memref %generated : memref<?x2xi1>
        %305 = arith.minsi %extracted, %extracted : i64
        scf.yield
      }
      case 2 {
        %289 = math.ipowi %c-19705_i16, %c-30193_i16 : i16
        %290 = arith.muli %c1625667180_i64, %c1747437374_i64 : i64
        %291 = arith.maxui %c9465_i16, %c9465_i16 : i16
        %292 = arith.floordivsi %c1112807906_i32, %c1112807906_i32 : i32
        %293 = index.add %c12, %c4
        %294 = index.ceildivu %c1, %c9
        %295 = math.absf %13 : tensor<2xf16>
        %296 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %40, %41, %296 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
        %298 = math.fma %13, %13, %13 : tensor<2xf16>
        %299 = arith.xori %c1112807906_i32, %c1112807906_i32 : i32
        %300 = index.divu %c10, %261
        %301 = math.expm1 %11 : tensor<4x2xf16>
        %302 = math.expm1 %16 : tensor<4x2xf32>
        %303 = arith.minsi %c-26608_i16, %c-19705_i16 : i16
        %304 = arith.minf %cst_3, %cst_4 : f16
        %splat_51 = tensor.splat %c9465_i16 : tensor<3x2xi16>
        scf.yield
      }
      case 3 {
        %289 = bufferization.clone %39 : memref<4x2xf32> to memref<4x2xf32>
        %290 = index.mul %69, %c2
        %291 = memref.load %289[%c0, %c1] : memref<4x2xf32>
        %from_elements_51 = tensor.from_elements %false_2, %false, %false_2, %false_2, %false, %false, %false_2, %false_2 : tensor<8xi1>
        %292 = arith.remsi %c-19705_i16, %c-19705_i16 : i16
        %293 = index.maxu %c15, %c0
        %294 = math.round %11 : tensor<4x2xf16>
        %295 = arith.shli %c1300628449_i64, %extracted : i64
        %296 = vector.broadcast %48 : index to vector<3xindex>
        %297 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %298 = vector.broadcast %28 : f32 to vector<3xf32>
        vector.scatter %alloc_12[%c1, %c0] [%296], %297, %298 : memref<3x2xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %299 = math.ctlz %23 : tensor<i16>
        %300 = vector.flat_transpose %47 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %301 = tensor.empty() : tensor<2x2xi1>
        %302 = tensor.empty() : tensor<3x2xi1>
        %303 = linalg.matmul ins(%6, %301 : tensor<3x2xi1>, tensor<2x2xi1>) outs(%302 : tensor<3x2xi1>) -> tensor<3x2xi1>
        %304 = arith.remsi %false, %false_2 : i1
        %305 = arith.remsi %extracted, %c1300628449_i64 : i64
        %306 = arith.remsi %c-30193_i16, %c-30193_i16 : i16
        %307 = vector.broadcast %false_2 : i1 to vector<4xi1>
        %dest_52, %accumulated_value_53 = vector.scan <minsi>, %46, %307 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi1>, vector<4xi1>
        scf.yield
      }
      default {
        %289 = vector.broadcast %108 : index to vector<8xindex>
        %290 = vector.broadcast %c9465_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_11[%c1, %c0] [%289], %95, %290 : memref<3x2xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %291 = math.log2 %17 : tensor<4x2xf32>
        %alloc_51 = memref.alloc() : memref<3x2xi1>
        %292 = vector.gather %alloc_51[%c4, %c7] [%122], %121, %121 : memref<3x2xi1>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi1> into vector<3x2xi1>
        %293 = arith.shli %c-26608_i16, %c-30193_i16 : i16
        %294 = index.sizeof
        affine.store %cst_5, %alloc[%c6, %c15] : memref<4x2xf16>
        %295 = math.sqrt %cst_3 : f16
        %296 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %297 = arith.shli %false, %false_2 : i1
        vector.print %296 : vector<1xi16>
        %298 = vector.insert %false_2, %95 [3] : i1 into vector<8xi1>
        %299 = math.ctlz %3 : tensor<2xi16>
        %300 = arith.shrui %c9465_i16, %c-19705_i16 : i16
        %301 = arith.cmpi ugt, %c1747437374_i64, %extracted : i64
        %alloc_52 = memref.alloc() : memref<3x2xf32>
        %302 = arith.muli %c-19705_i16, %c-26608_i16 : i16
      }
      %265 = arith.muli %c1300628449_i64, %c1747437374_i64 : i64
      %266 = tensor.empty() : tensor<2xf16>
      %mapped_49 = linalg.map ins(%from_elements, %13 : tensor<2xf16>, tensor<2xf16>) outs(%266 : tensor<2xf16>)
        (%in: f16, %in_51: f16) {
          %289 = vector.multi_reduction <maxui>, %121, %false_2 [0, 1] : vector<3x2xi1> to i1
          %290 = bufferization.to_tensor %alloc_16 : memref<2xf16>
          %291 = vector.insertelement %c-26608_i16, %47[%108 : index] : vector<4xi16>
          %292 = bufferization.clone %alloc_20 : memref<4x2xi64> to memref<4x2xi64>
          %293 = vector.extract %122[1] : vector<3x2xi32>
          %294 = vector.broadcast %c-19705_i16 : i16 to vector<3xi16>
          %295 = vector.broadcast %289 : i1 to vector<3xi1>
          %296 = vector.maskedload %alloc_15[%c0], %295, %294 : memref<2xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %297 = bufferization.to_memref %1 : memref<8xi1>
          %298 = affine.max affine_map<(d0, d1) -> ((d0 + 16) ceildiv 64, d1)>(%c8, %c11)
          %299 = math.log %in_51 : f16
          %300 = vector.broadcast %c1112807906_i32 : i32 to vector<2x2xi32>
          %301 = vector.outerproduct %293, %293, %300 {kind = #vector.kind<maxsi>} : vector<2xi32>, vector<2xi32>
          %expanded_52 = tensor.expand_shape %13 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
          %302 = arith.xori %extracted, %c1747437374_i64 : i64
          %extracted_53 = tensor.extract %2[%c2, %c1] : tensor<3x2xi16>
          %splat_54 = tensor.splat %in_51 : tensor<3x2xf16>
          %303 = index.divu %117, %c9
          %304 = vector.broadcast %cst_1 : f32 to vector<3xf32>
          %dest_55, %accumulated_value_56 = vector.scan <add>, %40, %304 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
          %305 = index.maxu %117, %c11
          %306 = index.sub %c11, %c13
          %307 = arith.minf %in, %76 : f16
          %308 = index.sub %305, %263
          %309 = math.floor %in : f16
          %310 = vector.broadcast %28 : f32 to vector<4x2xf32>
          %311 = vector.fma %310, %310, %310 : vector<4x2xf32>
          %312 = math.absf %15 : tensor<4x2xf32>
          %313 = math.rsqrt %13 : tensor<2xf16>
          %314 = math.cttz %c1300628449_i64 : i64
          %315 = tensor.empty() : tensor<3x3xi16>
          %316 = linalg.matmul ins(%9, %18 : tensor<3x2xi16>, tensor<2x3xi16>) outs(%315 : tensor<3x3xi16>) -> tensor<3x3xi16>
          %alloca_57 = memref.alloca() : memref<8xf16>
          memref.assume_alignment %alloc, 4 : memref<4x2xf16>
          %317 = bufferization.clone %89 : memref<8xf16> to memref<8xf16>
          %318 = tensor.empty() : tensor<8xf32>
          %319 = affine.load %317[%c15] : memref<8xf16>
          %320 = vector.broadcast %c9465_i16 : i16 to vector<2xi16>
          %321 = vector.multi_reduction <xor>, %123, %320 [0] : vector<3x2xi16> to vector<2xi16>
          %cst_58 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_58 : f16
        }
      %267 = math.fpowi %cst_1, %c1112807906_i32 : f32, i32
      %268 = index.ceildivu %c1, %108
      %269 = arith.ceildivsi %false, %false_2 : i1
      %270 = arith.minsi %c-30193_i16, %c-30193_i16 : i16
      %271 = arith.cmpi ugt, %c9465_i16, %c-19705_i16 : i16
      %272 = memref.load %alloc_14[%c5] : memref<8xi1>
      %273 = memref.load %alloc_10[%c7] : memref<8xf16>
      %274 = affine.if affine_set<(d0, d1, d2, d3) : (d1 mod 8 == 0, -d2 == 0, -d2 == 0)>(%c0, %c6, %c8, %c7) -> memref<3x2xf16> {
        %289 = arith.remui %c9465_i16, %c-19705_i16 : i16
        affine.store %c1625667180_i64, %alloc_20[%c1, %c0] : memref<4x2xi64>
        %290 = index.maxs %268, %c2
        %291 = math.log10 %cst_1 : f32
        %292 = bufferization.clone %alloc_10 : memref<8xf16> to memref<8xf16>
        %293 = arith.minsi %c1625667180_i64, %extracted : i64
        %splat_51 = tensor.splat %cst_4 : tensor<2xf16>
        %294 = index.maxs %124, %c2
        %alloc_52 = memref.alloc() : memref<3x2xf16>
        affine.yield %alloc_52 : memref<3x2xf16>
      } else {
        %289 = affine.apply affine_map<(d0, d1) -> (-(d0 * 16 - 48))>(%c12, %48)
        %290 = math.copysign %cst_5, %cst_4 : f16
        %291 = math.log2 %138 : tensor<3x2xf16>
        %292 = vector.create_mask %c5 : vector<8xi1>
        %293 = index.floordivs %48, %c15
        %294 = math.expm1 %from_elements : tensor<2xf16>
        %295 = index.casts %c12 : index to i32
        %296 = vector.extract_strided_slice %120 {offsets = [0], sizes = [2], strides = [1]} : vector<3x2xi16> to vector<2x2xi16>
        %alloc_51 = memref.alloc() : memref<3x2xf16>
        affine.yield %alloc_51 : memref<3x2xf16>
      }
      %275 = math.log10 %cst_1 : f32
      %276 = arith.maxf %28, %28 : f32
      %277 = math.exp %cst_5 : f16
      %278 = math.tanh %134 : tensor<4x8xf32>
      %279 = bufferization.to_memref %3 : memref<2xi16>
      %280 = arith.cmpi sge, %c1112807906_i32, %c1112807906_i32 : i32
      %generated_50 = tensor.generate %c1 {
      ^bb0(%arg2: index):
        %289 = math.ipowi %c9465_i16, %c-19705_i16 : i16
        %290 = affine.apply affine_map<(d0) -> (((d0 * 8) ceildiv 128) floordiv 2)>(%c10)
        %291 = arith.remsi %c1625667180_i64, %c1747437374_i64 : i64
        %292 = vector.insertelement %c-26608_i16, %47[%c8 : index] : vector<4xi16>
        tensor.yield %cst_1 : f32
      } : tensor<?xf32>
      %281 = memref.realloc %alloc_15 : memref<2xi16> to memref<8xi16>
      affine.store %c-30193_i16, %alloc_13[%c9] : memref<8xi16>
      %282 = affine.min affine_map<(d0) -> (d0, d0 ceildiv 16, d0 ceildiv 8 - 64, d0 ceildiv 32 + d0 + 16)>(%c2)
      %283 = vector.matrix_multiply %106, %106 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
      %284 = index.ceildivs %c14, %108
      %285 = affine.apply affine_map<(d0, d1) -> (d1 * -8)>(%c4, %263)
      %286 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3, -((d1 ceildiv 2) floordiv 64) - d3, d1 * -4, -d1)>(%284, %c2, %97, %132)
      %287 = arith.maxf %cst_5, %cst_0 : f16
      %288 = math.atan2 %cst, %cst_3 : f16
      memref.alloca_scope.return %c1625667180_i64 : i64
    }
    %false_29 = index.bool.constant false
    %140 = affine.if affine_set<(d0) : (d0 * -2 >= 0)>(%c9) -> memref<4x2xi64> {
      %260 = tensor.empty() : tensor<4x2xf16>
      %mapped_49 = linalg.map ins(%11, %11, %11 : tensor<4x2xf16>, tensor<4x2xf16>, tensor<4x2xf16>) outs(%260 : tensor<4x2xf16>)
        (%in: f16, %in_50: f16, %in_51: f16) {
          %268 = arith.cmpi eq, %false, %false : i1
          %269 = arith.subi %false_2, %false : i1
          %270 = vector.shuffle %40, %41 [0, 3, 4, 5] : vector<3x2xf32>, vector<3x2xf32>
          %271 = memref.realloc %alloc_7 : memref<8xi16> to memref<3xi16>
          %272 = arith.shli %c1112807906_i32, %c1112807906_i32 : i32
          %273 = index.add %c12, %132
          %274 = math.copysign %134, %134 : tensor<4x8xf32>
          %275 = vector.insertelement %c-19705_i16, %20[%c8 : index] : vector<4xi16>
          %276 = math.floor %0 : tensor<8xf32>
          %277 = arith.divui %139, %c1747437374_i64 : i64
          %278 = index.divu %c1, %117
          %279 = bufferization.to_tensor %101 : memref<8xi16>
          %expanded_52 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x2xi16> into tensor<4x2x1xi16>
          %280 = tensor.empty() : tensor<8xi64>
          %281 = index.maxs %124, %c14
          %282 = index.ceildivu %c3, %c8
          %283 = arith.cmpi sgt, %false_29, %false : i1
          %284 = vector.insertelement %false, %95[%108 : index] : vector<8xi1>
          %from_elements_53 = tensor.from_elements %c9465_i16, %c-26608_i16, %c-19705_i16, %c-30193_i16, %c9465_i16, %c-26608_i16 : tensor<3x2xi16>
          %285 = math.round %cst_4 : f16
          %286 = memref.load %101[%c2] : memref<8xi16>
          %287 = bufferization.to_memref %10 : memref<4x2xi64>
          %288 = arith.cmpi uge, %c1625667180_i64, %extracted : i64
          %289 = tensor.empty() : tensor<3x3xi16>
          %290 = linalg.matmul ins(%from_elements_53, %transposed : tensor<3x2xi16>, tensor<2x3xi16>) outs(%289 : tensor<3x3xi16>) -> tensor<3x3xi16>
          %291 = index.casts %false : i1 to index
          %292 = arith.muli %extracted, %c1625667180_i64 : i64
          %293 = math.exp %16 : tensor<4x2xf32>
          %294 = math.ipowi %c-26608_i16, %c-19705_i16 : i16
          %295 = index.maxs %108, %69
          %296 = arith.ori %c1625667180_i64, %c1747437374_i64 : i64
          %297 = arith.mulf %76, %76 : f16
          %298 = vector.extract_strided_slice %107 {offsets = [4], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
          %cst_54 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_54 : f16
        }
      %261 = arith.addf %28, %cst_1 : f32
      %262 = math.tan %0 : tensor<8xf32>
      %263 = affine.if affine_set<(d0) : ((-d0) floordiv 32 - 64 >= 0, -d0 + (-d0) floordiv 32 == 0, ((-d0) floordiv 32) mod 64 >= 0, (-d0) floordiv 32 + d0 * 16 + (d0 mod 2) floordiv 128 >= 0)>(%c15) -> memref<3x2xi64> {
        %collapsed_50 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x2xi16> into tensor<6xi16>
        %268 = arith.remf %cst_4, %cst_0 : f16
        %269 = tensor.empty(%c10) : tensor<?xi1>
        %270 = math.absf %cst_1 : f32
        %expanded_51 = tensor.expand_shape %collapsed [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %extracted_52 = tensor.extract %7[%c3, %c0] : tensor<4x2xi32>
        %271 = vector.extract_strided_slice %46 {offsets = [0], sizes = [4], strides = [1]} : vector<4x2xi1> to vector<4x2xi1>
        %272 = vector.broadcast %c9465_i16 : i16 to vector<4x2xi16>
        %273 = vector.gather %21[%103] [%58], %46, %272 : tensor<8xi16>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi16> into vector<4x2xi16>
        %alloc_53 = memref.alloc() : memref<3x2xi64>
        affine.yield %alloc_53 : memref<3x2xi64>
      } else {
        %268 = bufferization.to_memref %22 : memref<i16>
        %269 = math.log10 %15 : tensor<4x2xf32>
        %270 = math.floor %16 : tensor<4x2xf32>
        %271 = arith.maxf %cst_4, %cst : f16
        %272 = math.cos %13 : tensor<2xf16>
        %273 = math.rsqrt %cst_5 : f16
        %274 = math.round %16 : tensor<4x2xf32>
        %275 = tensor.empty() : tensor<3x2xf32>
        %alloc_50 = memref.alloc() : memref<3x2xi64>
        affine.yield %alloc_50 : memref<3x2xi64>
      }
      %264 = vector.insertelement %c9465_i16, %31[] : vector<i16>
      %265 = math.log10 %from_elements : tensor<2xf16>
      %266 = math.absf %cst_5 : f16
      %267 = math.tanh %from_elements : tensor<2xf16>
      affine.yield %alloc_20 : memref<4x2xi64>
    } else {
      %260 = bufferization.clone %alloc_17 : memref<8xi1> to memref<8xi1>
      %261 = index.ceildivu %c7, %c15
      %262 = vector.create_mask %67 : vector<2xi1>
      %263 = math.log10 %15 : tensor<4x2xf32>
      %generated_49 = tensor.generate %108, %c14 {
      ^bb0(%arg2: index, %arg3: index):
        %269 = affine.max affine_map<(d0, d1) -> (d1 * 31, 0, d0 mod 64, 0)>(%97, %c9)
        %270 = arith.xori %extracted, %139 : i64
        %271 = index.add %69, %c9
        %272 = bufferization.to_memref %cast : memref<?x?xi16>
        tensor.yield %false_29 : i1
      } : tensor<?x?xi1>
      %264 = vector.broadcast %c0 : index to vector<8xindex>
      %265 = vector.broadcast %76 : f16 to vector<8xf16>
      vector.scatter %alloc[%c3, %c1] [%264], %95, %265 : memref<4x2xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
      %266 = arith.cmpi ult, %false, %false_2 : i1
      %267 = vector.broadcast %false : i1 to vector<2x2xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %46, %46, %267 : vector<4x2xi1>, vector<4x2xi1> into vector<2x2xi1>
      affine.yield %alloc_20 : memref<4x2xi64>
    }
    %141 = vector.broadcast %c10 : index to vector<2xindex>
    %142 = vector.broadcast %false_29 : i1 to vector<2xi1>
    %143 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
    vector.scatter %alloc_15[%c1] [%141], %142, %143 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
    %144 = scf.while (%arg2 = %alloc) : (memref<4x2xf16>) -> memref<4x2xf16> {
      %260 = math.log2 %11 : tensor<4x2xf16>
      %261 = vector.create_mask %88, %124 : vector<3x2xi1>
      %262 = math.atan2 %0, %0 : tensor<8xf32>
      %263 = arith.maxf %76, %cst_0 : f16
      %264 = memref.load %arg2[%c3, %c0] : memref<4x2xf16>
      %265 = index.maxu %97, %c1
      %266 = vector.insertelement %false_2, %95[%c7 : index] : vector<8xi1>
      %267 = vector.insertelement %c-19705_i16, %47[%111 : index] : vector<4xi16>
      scf.condition(%false_29) %alloc_18 : memref<4x2xf16>
    } do {
    ^bb0(%arg2: memref<4x2xf16>):
      %260 = tensor.empty() : tensor<2xi16>
      %mapped_49 = linalg.map ins(%alloc_15, %3, %3 : memref<2xi16>, tensor<2xi16>, tensor<2xi16>) outs(%260 : tensor<2xi16>)
        (%in: i16, %in_52: i16, %in_53: i16) {
          %277 = math.tanh %13 : tensor<2xf16>
          %278 = arith.addf %cst_3, %cst_3 : f16
          %279 = math.atan %11 : tensor<4x2xf16>
          %280 = index.mul %c6, %c15
          %281 = arith.divsi %false_29, %false : i1
          %282 = tensor.empty() : tensor<3x2xf32>
          %283 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
          %284 = arith.minf %cst_0, %cst_5 : f16
          %285 = math.ctlz %6 : tensor<3x2xi1>
          %cast_54 = tensor.cast %56 : tensor<8xi64> to tensor<?xi64>
          %286 = index.ceildivs %67, %280
          %287 = arith.muli %c1112807906_i32, %c1112807906_i32 : i32
          %288 = arith.remui %in_53, %c9465_i16 : i16
          %289 = arith.minf %28, %cst_1 : f32
          %290 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
          %dest_55, %accumulated_value_56 = vector.scan <maxui>, %58, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<4x2xi32>, vector<2xi32>
          %291 = vector.broadcast %88 : index to vector<8xindex>
          %292 = vector.broadcast %76 : f16 to vector<8xf16>
          vector.scatter %alloc_16[%c0] [%291], %95, %292 : memref<2xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
          %293 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
          %294 = vector.multi_reduction <add>, %58, %293 [0] : vector<4x2xi32> to vector<2xi32>
          %295 = math.round %15 : tensor<4x2xf32>
          %296 = math.copysign %13, %from_elements : tensor<2xf16>
          %297 = arith.xori %c1300628449_i64, %139 : i64
          %298 = math.copysign %0, %12 : tensor<8xf32>
          %299 = index.divu %c12, %c0
          %300 = vector.broadcast %299 : index to vector<3xindex>
          %301 = vector.broadcast %false_2 : i1 to vector<3xi1>
          %302 = vector.broadcast %28 : f32 to vector<3xf32>
          vector.scatter %alloc_12[%c2, %c0] [%300], %301, %302 : memref<3x2xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
          %303 = arith.shrsi %c1112807906_i32, %c1112807906_i32 : i32
          affine.store %139, %alloc_20[%c0, %c6] : memref<4x2xi64>
          %304 = math.floor %cst_5 : f16
          %305 = vector.broadcast %false : i1 to vector<1xi1>
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %92, %305 {inclusive = false, reduction_dim = 1 : i64} : vector<1x2xi1>, vector<1xi1>
          %306 = arith.remsi %false_2, %false : i1
          %307 = arith.minf %cst, %cst_4 : f16
          %308 = bufferization.to_memref %7 : memref<4x2xi32>
          %309 = index.casts %false_2 : i1 to index
          %310 = arith.maxf %cst_5, %cst_5 : f16
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %generated_50 = tensor.generate %c15 {
      ^bb0(%arg3: index, %arg4: index):
        %277 = arith.shrsi %139, %c1625667180_i64 : i64
        %278 = math.log2 %12 : tensor<8xf32>
        %279 = math.tanh %28 : f32
        %280 = affine.apply affine_map<(d0) -> (d0 * -8)>(%124)
        tensor.yield %c1300628449_i64 : i64
      } : tensor<?x2xi64>
      %261 = math.atan %cst_1 : f32
      %262 = arith.addf %cst_1, %28 : f32
      %263 = arith.ceildivsi %c1300628449_i64, %139 : i64
      %264 = math.round %0 : tensor<8xf32>
      %265 = arith.muli %c9465_i16, %c-26608_i16 : i16
      vector.print %106 : vector<8xf32>
      %266 = tensor.empty() : tensor<2x3xf16>
      %267 = tensor.empty() : tensor<4x3xf16>
      %268 = linalg.matmul ins(%11, %266 : tensor<4x2xf16>, tensor<2x3xf16>) outs(%267 : tensor<4x3xf16>) -> tensor<4x3xf16>
      %269 = memref.alloca_scope  -> (f16) {
        %277 = math.expm1 %0 : tensor<8xf32>
        %278 = memref.realloc %alloc_17 : memref<8xi1> to memref<2xi1>
        %279 = arith.cmpi uge, %c9465_i16, %c-19705_i16 : i16
        %from_elements_52 = tensor.from_elements %c1747437374_i64, %139, %c1747437374_i64, %c1625667180_i64, %139, %c1747437374_i64, %139, %c1300628449_i64 : tensor<8xi64>
        %280 = arith.xori %false_2, %false_29 : i1
        %281 = index.ceildivu %c1, %c6
        %282 = math.rsqrt %12 : tensor<8xf32>
        %283 = math.floor %28 : f32
        %284 = math.copysign %13, %from_elements : tensor<2xf16>
        %285 = arith.ceildivsi %c1112807906_i32, %c1112807906_i32 : i32
        %286 = vector.reduction <minsi>, %47 : vector<4xi16> into i16
        %287 = tensor.empty() : tensor<8xi1>
        %288 = affine.load %alloc_15[%c6] : memref<2xi16>
        %289 = index.ceildivu %69, %c9
        %290 = vector.shuffle %95, %95 [1, 5, 7, 8, 10, 11, 13, 14, 15] : vector<8xi1>, vector<8xi1>
        affine.store %cst, %alloc_18[%c14, %c0] : memref<4x2xf16>
        %291 = index.floordivs %281, %c8
        %292 = math.cttz %5 : tensor<2xi64>
        %293 = vector.load %arg2[%c3, %c1] : memref<4x2xf16>, vector<3x2xf16>
        vector.print %293 : vector<3x2xf16>
        %294 = vector.transpose %46, [1, 0] : vector<4x2xi1> to vector<2x4xi1>
        %cast_53 = tensor.cast %10 : tensor<4x2xi64> to tensor<?x?xi64>
        %295 = math.ipowi %113, %9 : tensor<3x2xi16>
        %296 = tensor.empty(%132) : tensor<?xi16>
        %297 = math.exp %0 : tensor<8xf32>
        %rank_54 = tensor.rank %5 : tensor<2xi64>
        %298 = vector.insertelement %288, %31[] : vector<i16>
        %299 = math.cttz %14 : tensor<4x2xi16>
        %300 = arith.muli %c1300628449_i64, %139 : i64
        %301 = math.cos %13 : tensor<2xf16>
        affine.store %76, %89[%c2] : memref<8xf16>
        %302 = memref.realloc %alloc_9 : memref<8xi16> to memref<2xi16>
        memref.alloca_scope.return %cst_0 : f16
      }
      %rank_51 = tensor.rank %13 : tensor<2xf16>
      %270 = index.floordivs %c9, %c10
      %271 = arith.remf %cst_5, %269 : f16
      %272 = math.round %11 : tensor<4x2xf16>
      %273 = tensor.empty() : tensor<3x3x3xf32>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %273 : tensor<3x3x3xf32>, tensor<3x3x3xf32>) outs(%273 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_52: f32, %out: f32):
        affine.store %false_29, %alloc_14[%c7] : memref<8xi1>
        %277 = math.floor %0 : tensor<8xf32>
        %278 = arith.muli %false_29, %false_29 : i1
        %279 = index.casts %c-26608_i16 : i16 to index
        %280 = vector.bitcast %107 : vector<8xf32> to vector<8xi32>
        %cast_53 = tensor.cast %10 : tensor<4x2xi64> to tensor<?x?xi64>
        %281 = vector.broadcast %false_29 : i1 to vector<3xi1>
        %282 = vector.multi_reduction <and>, %121, %281 [1] : vector<3x2xi1> to vector<3xi1>
        %283 = memref.atomic_rmw assign %cst_0, %89[%c7] : (f16, memref<8xf16>) -> f16
        %284 = affine.min affine_map<(d0, d1) -> (d0)>(%c13, %c3)
        %285 = arith.shrui %c1747437374_i64, %extracted : i64
        %286 = vector.create_mask %c14, %c2 : vector<4x2xi1>
        %287 = vector.transpose %106, [0] : vector<8xf32> to vector<8xf32>
        %rank_54 = tensor.rank %3 : tensor<2xi16>
        %288 = math.rsqrt %0 : tensor<8xf32>
        %289 = tensor.empty() : tensor<8xi64>
        %290 = arith.addf %cst_1, %in_52 : f32
        %291 = vector.extract_strided_slice %47 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
        %292 = index.sizeof
        memref.assume_alignment %101, 2 : memref<8xi16>
        %293 = vector.broadcast %false : i1 to vector<4x1xi1>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %46, %92, %293 : vector<4x2xi1>, vector<1x2xi1> into vector<4x1xi1>
        %alloc_55 = memref.alloc() : memref<8xi32>
        memref.tensor_store %collapsed, %alloc_55 : memref<8xi32>
        %295 = math.ctpop %c-30193_i16 : i16
        %false_56 = index.bool.constant false
        %296 = math.absf %28 : f32
        %297 = affine.apply affine_map<(d0, d1) -> (-(d0 * 16 - 48))>(%c7, %c5)
        %298 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 4)>(%48, %88, %117)
        %299 = math.absi %from_elements_28 : tensor<4x2xi32>
        %300 = math.ceil %15 : tensor<4x2xf32>
        %cast_57 = tensor.cast %0 : tensor<8xf32> to tensor<?xf32>
        %301 = affine.min affine_map<(d0) -> (-(d0 floordiv 16) + (d0 floordiv 16 - 10) floordiv 32)>(%c12)
        %302 = math.round %in : f32
        %303 = arith.shrsi %c9465_i16, %c-26608_i16 : i16
        linalg.yield %in_52 : f32
      } -> tensor<3x3x3xf32>
      %275 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %276 = vector.multi_reduction <maxf>, %40, %275 [0] : vector<3x2xf32> to vector<2xf32>
      scf.yield %alloc : memref<4x2xf16>
    }
    %145 = math.round %12 : tensor<8xf32>
    %146 = tensor.empty() : tensor<3x3xi16>
    %147 = linalg.matmul ins(%113, %transposed : tensor<3x2xi16>, tensor<2x3xi16>) outs(%146 : tensor<3x3xi16>) -> tensor<3x3xi16>
    %148 = affine.if affine_set<(d0) : (d0 * -2 >= 0)>(%c13) -> memref<4x2xi16> {
      %generated_49 = tensor.generate %103, %c12 {
      ^bb0(%arg2: index, %arg3: index):
        %266 = tensor.empty() : tensor<2x4xi1>
        %267 = tensor.empty() : tensor<3x4xi1>
        %268 = linalg.matmul ins(%6, %266 : tensor<3x2xi1>, tensor<2x4xi1>) outs(%267 : tensor<3x4xi1>) -> tensor<3x4xi1>
        %269 = vector.broadcast %28 : f32 to vector<2xf32>
        %270 = vector.fma %269, %269, %269 : vector<2xf32>
        %271 = math.absf %0 : tensor<8xf32>
        %272 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c2, %c5, %108, %132)
        tensor.yield %false : i1
      } : tensor<?x?xi1>
      %260 = math.log10 %12 : tensor<8xf32>
      bufferization.dealloc_tensor %12 : tensor<8xf32>
      %261 = vector.broadcast %false_2 : i1 to vector<8xi1>
      %262 = affine.for %arg2 = 0 to 39 iter_args(%arg3 = %cst_3) -> (f16) {
        affine.yield %cst_3 : f16
      }
      %263 = vector.broadcast %false_2 : i1 to vector<1xi1>
      %dest_50, %accumulated_value_51 = vector.scan <maxsi>, %92, %263 {inclusive = true, reduction_dim = 1 : i64} : vector<1x2xi1>, vector<1xi1>
      %264 = affine.max affine_map<(d0, d1) -> (d1 floordiv 4 + 32, d0 - 4, -(d1 floordiv 4 + 32), d0 - 4)>(%97, %c15)
      %265 = index.divu %67, %69
      affine.yield %alloc_6 : memref<4x2xi16>
    } else {
      %260 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %261 = vector.fma %260, %260, %260 : vector<2xf32>
      %cast_49 = tensor.cast %9 : tensor<3x2xi16> to tensor<?x?xi16>
      %262 = vector.broadcast %false : i1 to vector<4x3xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %46, %121, %262 : vector<4x2xi1>, vector<3x2xi1> into vector<4x3xi1>
      %264 = vector.broadcast %c1300628449_i64 : i64 to vector<2x2xi64>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %57, %59, %264 : vector<4x2xi64>, vector<4x2xi64> into vector<2x2xi64>
      %266 = arith.addi %false, %false : i1
      %267 = affine.min affine_map<(d0, d1, d2) -> (d2, 2, d2 mod 64)>(%c14, %c10, %103)
      %268 = arith.xori %false_2, %false_2 : i1
      %269 = arith.addf %cst_0, %cst_4 : f16
      affine.yield %alloc_6 : memref<4x2xi16>
    }
    %149 = arith.maxf %76, %cst : f16
    %150 = vector.broadcast %cst_1 : f32 to vector<8xf32>
    %151 = vector.fma %150, %107, %107 : vector<8xf32>
    %152 = index.casts %false_29 : i1 to index
    %153 = math.round %13 : tensor<2xf16>
    %extracted_30 = tensor.extract %12[%c7] : tensor<8xf32>
    %154 = tensor.empty() : tensor<8xi16>
    %mapped = linalg.map ins(%alloc_9, %101, %21 : memref<8xi16>, memref<8xi16>, tensor<8xi16>) outs(%154 : tensor<8xi16>)
      (%in: i16, %in_49: i16, %in_50: i16) {
        %260 = math.floor %0 : tensor<8xf32>
        affine.store %c9465_i16, %alloc_9[%c11] : memref<8xi16>
        %cast_51 = tensor.cast %2 : tensor<3x2xi16> to tensor<?x?xi16>
        %261 = index.sizeof
        %262 = math.round %0 : tensor<8xf32>
        %263 = index.divu %103, %117
        %alloc_52 = memref.alloc() : memref<2x3xf32>
        %264 = tensor.empty() : tensor<4x3xf32>
        %265 = linalg.matmul ins(%16, %alloc_52 : tensor<4x2xf32>, memref<2x3xf32>) outs(%264 : tensor<4x3xf32>) -> tensor<4x3xf32>
        %266 = arith.remui %false, %false_29 : i1
        scf.index_switch %108 
        case 1 {
          %rank_56 = tensor.rank %1 : tensor<8xi1>
          %290 = arith.floordivsi %in_50, %c9465_i16 : i16
          %291 = vector.broadcast %c1625667180_i64 : i64 to vector<2xi64>
          %dest_57, %accumulated_value_58 = vector.scan <maxsi>, %57, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<4x2xi64>, vector<2xi64>
          %292 = index.maxs %132, %c13
          %alloc_59 = memref.alloc() : memref<2x3xi1>
          %293 = tensor.empty() : tensor<3x3xi1>
          %294 = linalg.matmul ins(%8, %alloc_59 : tensor<3x2xi1>, memref<2x3xi1>) outs(%293 : tensor<3x3xi1>) -> tensor<3x3xi1>
          %295 = affine.max affine_map<(d0, d1) -> ((d0 * 4) mod 128, d0 * 9 + 8)>(%c2, %261)
          %296 = arith.muli %extracted, %139 : i64
          %297 = math.cttz %in_50 : i16
          %298 = bufferization.to_tensor %alloc_11 : memref<3x2xi16>
          vector.print %40 : vector<3x2xf32>
          vector.print %41 : vector<3x2xf32>
          %299 = arith.muli %c1747437374_i64, %c1625667180_i64 : i64
          %300 = vector.broadcast %false_2 : i1 to vector<3xi1>
          %dest_60, %accumulated_value_61 = vector.scan <xor>, %121, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
          %301 = index.divu %152, %c14
          %302 = math.log1p %0 : tensor<8xf32>
          %303 = math.round %cst_1 : f32
          scf.yield
        }
        case 2 {
          %290 = index.maxs %c3, %c2
          %from_elements_56 = tensor.from_elements %c1625667180_i64, %c1625667180_i64 : tensor<2xi64>
          %cst_57 = arith.constant 1.000000e+00 : f16
          %291 = vector.transfer_read %alloc_10[%c8], %cst_57 : memref<8xf16>, vector<f16>
          %292 = arith.addf %cst_57, %cst_0 : f16
          %293 = math.atan2 %17, %15 : tensor<4x2xf32>
          %294 = arith.floordivsi %c-19705_i16, %c9465_i16 : i16
          %295 = index.ceildivu %c12, %263
          %296 = arith.shli %false_29, %false : i1
          %297 = memref.realloc %alloc_16 : memref<2xf16> to memref<8xf16>
          %298 = arith.ceildivsi %139, %extracted : i64
          %299 = arith.remui %c-30193_i16, %in : i16
          %300 = vector.multi_reduction <minui>, %95, %false_2 [0] : vector<8xi1> to i1
          %301 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
          %302 = math.atan2 %cst, %cst_4 : f16
          %303 = arith.remsi %c-26608_i16, %c-19705_i16 : i16
          %304 = index.sizeof
          scf.yield
        }
        case 3 {
          %290 = math.round %11 : tensor<4x2xf16>
          memref.copy %alloc_11, %alloc_8 : memref<3x2xi16> to memref<3x2xi16>
          %291 = arith.xori %c1300628449_i64, %c1747437374_i64 : i64
          %292 = vector.splat %28 : vector<3x2xf32>
          %expanded_56 = tensor.expand_shape %146 [[0], [1, 2]] : tensor<3x3xi16> into tensor<3x3x1xi16>
          %293 = arith.ceildivsi %false_29, %false_29 : i1
          %294 = index.ceildivu %69, %c7
          %295 = arith.maxf %cst_5, %cst_5 : f16
          %296 = math.round %16 : tensor<4x2xf32>
          %297 = index.casts %c0 : index to i32
          %cast_57 = tensor.cast %16 : tensor<4x2xf32> to tensor<?x?xf32>
          %298 = bufferization.clone %39 : memref<4x2xf32> to memref<4x2xf32>
          %299 = math.tanh %cst_0 : f16
          %300 = vector.broadcast %in_49 : i16 to vector<2xi16>
          %301 = vector.multi_reduction <minui>, %123, %300 [0] : vector<3x2xi16> to vector<2xi16>
          %302 = math.sqrt %15 : tensor<4x2xf32>
          %303 = index.ceildivs %69, %c8
          scf.yield
        }
        default {
          %290 = tensor.empty() : tensor<2xi32>
          %291 = math.fpowi %13, %290 : tensor<2xf16>, tensor<2xi32>
          %292 = arith.xori %c1112807906_i32, %c1112807906_i32 : i32
          %293 = vector.load %alloc_18[%c3, %c1] : memref<4x2xf16>, vector<3x2xf16>
          %extracted_56 = tensor.extract %0[%c5] : tensor<8xf32>
          %294 = vector.broadcast %c1625667180_i64 : i64 to vector<4xi64>
          %dest_57, %accumulated_value_58 = vector.scan <or>, %57, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi64>, vector<4xi64>
          %rank_59 = tensor.rank %7 : tensor<4x2xi32>
          %295 = index.maxs %26, %97
          %296 = index.divu %c6, %152
          %297 = arith.addf %extracted_30, %cst_1 : f32
          %298 = math.rsqrt %cst : f16
          %299 = memref.realloc %alloc_7 : memref<8xi16> to memref<3xi16>
          %300 = affine.apply affine_map<(d0) -> (d0 - 4)>(%c1)
          %301 = vector.reduction <maxui>, %20 : vector<4xi16> into i16
          %302 = arith.maxf %cst_4, %cst : f16
          bufferization.dealloc_tensor %1 : tensor<8xi1>
          %303 = math.absi %9 : tensor<3x2xi16>
        }
        %267 = vector.extract_strided_slice %107 {offsets = [5], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
        %268 = arith.ceildivsi %c-19705_i16, %c-30193_i16 : i16
        %269 = arith.shli %in_50, %c-30193_i16 : i16
        %270 = vector.reduction <maxf>, %107 : vector<8xf32> into f32
        %271 = arith.cmpi sle, %c1300628449_i64, %139 : i64
        %272 = arith.shli %c1625667180_i64, %139 : i64
        %273 = index.divu %c15, %48
        %274 = arith.remui %false, %false_2 : i1
        %275 = arith.remsi %c1625667180_i64, %c1300628449_i64 : i64
        %276 = vector.broadcast %cst_3 : f16 to vector<3x2xf16>
        %277 = vector.gather %89[%c15] [%122], %121, %276 : memref<8xf16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xf16> into vector<3x2xf16>
        %278 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %122, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi32>, vector<2xi32>
        %279 = memref.load %alloc_8[%c1, %c0] : memref<3x2xi16>
        %280 = index.divu %152, %273
        %281 = memref.realloc %101 : memref<8xi16> to memref<8xi16>
        %282 = arith.maxf %cst_0, %cst : f16
        %283 = math.log2 %cst_0 : f16
        %284 = affine.if affine_set<(d0, d1, d2) : (d2 ceildiv 4 == 0)>(%c4, %c11, %c2) -> i1 {
          bufferization.dealloc_tensor %0 : tensor<8xf32>
          %290 = vector.broadcast %c0 : index to vector<8xindex>
          %291 = vector.broadcast %cst_3 : f16 to vector<8xf16>
          vector.scatter %alloc[%c3, %c1] [%290], %95, %291 : memref<4x2xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
          %292 = vector.broadcast %cst_4 : f16 to vector<3xf16>
          %dest_56, %accumulated_value_57 = vector.scan <maxf>, %277, %292 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xf16>, vector<3xf16>
          %extracted_58 = tensor.extract %3[%c0] : tensor<2xi16>
          %293 = arith.cmpf ugt, %cst, %cst_5 : f16
          %294 = index.add %97, %117
          %295 = math.round %12 : tensor<8xf32>
          %296 = arith.minf %cst_3, %cst_4 : f16
          affine.yield %false : i1
        } else {
          %290 = index.maxs %c12, %c0
          %291 = affine.max affine_map<(d0, d1) -> ((d1 mod 64) * 2, (d1 mod 64) ceildiv 2 - d1 mod 64, (d1 + 1) * 4)>(%132, %c2)
          %splat_56 = tensor.splat %c1625667180_i64 : tensor<8xi64>
          %292 = vector.broadcast %c1625667180_i64 : i64 to vector<4xi64>
          %dest_57, %accumulated_value_58 = vector.scan <maxsi>, %59, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi64>, vector<4xi64>
          %293 = math.floor %cst_3 : f16
          %294 = arith.xori %c1112807906_i32, %c1112807906_i32 : i32
          %295 = vector.broadcast %false_2 : i1 to vector<2xi1>
          %296 = vector.multi_reduction <maxui>, %121, %295 [0] : vector<3x2xi1> to vector<2xi1>
          %297 = index.sizeof
          affine.yield %false : i1
        }
        %rank_55 = tensor.rank %154 : tensor<8xi16>
        %285 = math.ipowi %c1300628449_i64, %c1747437374_i64 : i64
        %286 = vector.broadcast %c2 : index to vector<8xindex>
        %287 = vector.broadcast %cst_4 : f16 to vector<8xf16>
        vector.scatter %alloc_18[%c2, %c1] [%286], %95, %287 : memref<4x2xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %288 = vector.extract_strided_slice %40 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2xf32> to vector<2x2xf32>
        %289 = index.mul %c6, %69
        vector.print %40 : vector<3x2xf32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %155 = math.cttz %4 : tensor<8xi32>
    %156 = vector.multi_reduction <and>, %95, %false_29 [0] : vector<8xi1> to i1
    scf.if %false_29 {
      %alloc_49 = memref.alloc() : memref<2xi1>
      %260 = math.log2 %15 : tensor<4x2xf32>
      %261 = tensor.empty(%124, %c0) : tensor<?x?xi32>
      %262 = math.fma %cst_4, %cst_5, %76 : f16
      %splat_50 = tensor.splat %c1112807906_i32 : tensor<2xi32>
      %263 = math.exp %138 : tensor<3x2xf16>
      %264 = arith.xori %c-26608_i16, %c-30193_i16 : i16
      %alloc_51 = memref.alloc() : memref<8xf32>
      memref.tensor_store %0, %alloc_51 : memref<8xf32>
    } else {
      %260 = arith.xori %156, %false_29 : i1
      %261 = index.divu %c10, %88
      %262 = vector.broadcast %cst_1 : f32 to vector<8x8xf32>
      %263 = vector.outerproduct %151, %106, %262 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
      %264 = math.cos %cst : f16
      %265 = affine.max affine_map<(d0, d1) -> (d0 mod 4 + 64, d0 mod 4 + d1 + 4, d0 mod 4 + 64, d0 mod 32)>(%261, %c8)
      %266 = math.floor %15 : tensor<4x2xf32>
      %267 = vector.broadcast %c10 : index to vector<8xindex>
      %268 = vector.broadcast %c-26608_i16 : i16 to vector<8xi16>
      vector.scatter %alloc_11[%c0, %c1] [%267], %95, %268 : memref<3x2xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
      %269 = index.maxs %c1, %69
    }
    %157 = index.maxs %c11, %152
    %158 = vector.extract_strided_slice %92 {offsets = [0], sizes = [1], strides = [1]} : vector<1x2xi1> to vector<1x2xi1>
    %159 = arith.maxf %cst_5, %cst_3 : f16
    memref.assume_alignment %alloc_21, 1 : memref<f32>
    %extracted_31 = tensor.extract %12[%c6] : tensor<8xf32>
    %160 = index.divu %c9, %69
    %161 = arith.cmpf uge, %extracted_31, %extracted_31 : f32
    %162 = tensor.empty() : tensor<8xi32>
    %mapped_32 = linalg.map ins(%collapsed, %4 : tensor<8xi32>, tensor<8xi32>) outs(%162 : tensor<8xi32>)
      (%in: i32, %in_49: i32) {
        %260 = vector.broadcast %extracted_30 : f32 to vector<4x2xf32>
        %261 = vector.fma %260, %260, %260 : vector<4x2xf32>
        %262 = math.copysign %15, %16 : tensor<4x2xf32>
        %263 = math.round %12 : tensor<8xf32>
        %splat_50 = tensor.splat %false_29 : tensor<3x2xi1>
        %264 = affine.load %101[%c7] : memref<8xi16>
        %265 = math.atan2 %11, %11 : tensor<4x2xf16>
        %expanded_51 = tensor.expand_shape %splat_50 [[0], [1, 2]] : tensor<3x2xi1> into tensor<3x2x1xi1>
        %266 = arith.muli %false_2, %156 : i1
        %267 = arith.cmpf ord, %extracted_31, %28 : f32
        %268 = index.sizeof
        %269 = math.tan %76 : f16
        %270 = tensor.empty() : tensor<2x8xi1>
        %271 = tensor.empty() : tensor<3x8xi1>
        %272 = linalg.matmul ins(%splat_50, %270 : tensor<3x2xi1>, tensor<2x8xi1>) outs(%271 : tensor<3x8xi1>) -> tensor<3x8xi1>
        %273 = vector.create_mask %67 : vector<2xi1>
        %274 = memref.realloc %alloc_7 : memref<8xi16> to memref<8xi16>
        %275 = math.exp %0 : tensor<8xf32>
        %276 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<3x2xi16> to vector<1x2xi16>
        %277 = arith.muli %false_29, %false_29 : i1
        %278 = math.roundeven %76 : f16
        %279 = index.sizeof
        %280 = math.absf %12 : tensor<8xf32>
        %alloc_52 = memref.alloc() : memref<8xi1>
        %281 = vector.splat %cst_5 : vector<2xf16>
        %c0_i16 = arith.constant 0 : i16
        %282 = vector.transfer_read %alloc_15[%c14], %c0_i16 : memref<2xi16>, vector<i16>
        %283 = math.atan2 %cst_5, %cst_5 : f16
        %284 = arith.ceildivsi %c9465_i16, %264 : i16
        %285 = tensor.empty() : tensor<4x3xi16>
        %286 = linalg.matmul ins(%14, %18 : tensor<4x2xi16>, tensor<2x3xi16>) outs(%285 : tensor<4x3xi16>) -> tensor<4x3xi16>
        %287 = math.floor %13 : tensor<2xf16>
        %288 = arith.subi %c-26608_i16, %c9465_i16 : i16
        %289 = math.ctlz %9 : tensor<3x2xi16>
        memref.copy %alloc_14, %alloc_17 : memref<8xi1> to memref<8xi1>
        %expanded_53 = tensor.expand_shape %3 [[0, 1]] : tensor<2xi16> into tensor<2x1xi16>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %c9465_i16 : vector<4xi16>, vector<4xi16> into i16
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %163 = tensor.empty(%c4, %117) : tensor<?x?xi64>
    memref.assume_alignment %alloc, 8 : memref<4x2xf16>
    %164 = math.ctlz %2 : tensor<3x2xi16>
    %165 = vector.transpose %31, [] : vector<i16> to vector<i16>
    %166 = affine.apply affine_map<(d0) -> (d0 + 128)>(%152)
    %167 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 1)>(%c13, %c13, %152, %c15)
    %168 = vector.broadcast %false_29 : i1 to vector<2xi1>
    %dest_33, %accumulated_value_34 = vector.scan <minsi>, %158, %168 {inclusive = true, reduction_dim = 0 : i64} : vector<1x2xi1>, vector<2xi1>
    %169 = index.ceildivu %c8, %160
    %170 = math.atan2 %15, %16 : tensor<4x2xf32>
    %171 = arith.xori %c1300628449_i64, %139 : i64
    %172 = vector.broadcast %c-19705_i16 : i16 to vector<2x2xi16>
    %173 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %120, %120, %172 : vector<3x2xi16>, vector<3x2xi16> into vector<2x2xi16>
    %174 = arith.maxsi %156, %false_29 : i1
    %175 = affine.if affine_set<(d0) : (d0 * 8 - (d0 mod 4) * 32 >= 0)>(%c8) -> memref<8xf16> {
      %cast_49 = tensor.cast %10 : tensor<4x2xi64> to tensor<?x?xi64>
      %260 = scf.if %false_29 -> (memref<3x2xi64>) {
        %265 = arith.minsi %c9465_i16, %c-26608_i16 : i16
        %266 = index.mul %c13, %108
        %267 = vector.splat %cst_4 : vector<2xf16>
        %268 = arith.remsi %c1300628449_i64, %c1300628449_i64 : i64
        %269 = index.sizeof
        %alloc_51 = memref.alloc() : memref<4x2xi32>
        %270 = vector.gather %alloc_51[%88, %152] [%58], %46, %58 : memref<4x2xi32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi32> into vector<4x2xi32>
        %271 = arith.addf %cst, %cst : f16
        %splat_52 = tensor.splat %cst_3 : tensor<3x2xf16>
        %alloc_53 = memref.alloc() : memref<3x2xi64>
        scf.yield %alloc_53 : memref<3x2xi64>
      } else {
        %265 = math.ipowi %extracted, %c1625667180_i64 : i64
        %266 = memref.realloc %alloc_10 : memref<8xf16> to memref<4xf16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %267 = vector.transfer_read %alloc_6[%48, %c7], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<4x2xi16>, vector<8xi16>
        %268 = arith.floordivsi %false_29, %false : i1
        %269 = vector.broadcast %false : i1 to vector<2xi1>
        %270 = vector.insert %269, %46 [1] : vector<2xi1> into vector<4x2xi1>
        %271 = arith.addf %cst, %76 : f16
        %272 = math.log2 %134 : tensor<4x8xf32>
        %273 = math.floor %134 : tensor<4x8xf32>
        %alloc_51 = memref.alloc() : memref<3x2xi64>
        scf.yield %alloc_51 : memref<3x2xi64>
      }
      %261 = arith.addf %76, %76 : f16
      %262 = math.cttz %14 : tensor<4x2xi16>
      vector.print %150 : vector<8xf32>
      %from_elements_50 = tensor.from_elements %extracted, %c1625667180_i64 : tensor<2xi64>
      %263 = math.exp %0 : tensor<8xf32>
      %264 = affine.apply affine_map<(d0) -> ((d0 + d0 floordiv 16) * 2 + d0 floordiv 16)>(%152)
      affine.yield %alloc_10 : memref<8xf16>
    } else {
      %260 = arith.minui %c1300628449_i64, %c1625667180_i64 : i64
      %cast_49 = tensor.cast %22 : tensor<i16> to tensor<i16>
      %expanded_50 = tensor.expand_shape %5 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
      %261 = math.absf %0 : tensor<8xf32>
      %262 = math.log2 %extracted_30 : f32
      %263 = tensor.empty() : tensor<3x3x3xf32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263 : tensor<3x3x3xf32>) outs(%263 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %267 = index.ceildivs %c11, %111
        %268 = bufferization.clone %alloc_20 : memref<4x2xi64> to memref<4x2xi64>
        %269 = vector.broadcast %c-30193_i16 : i16 to vector<3xi16>
        %270 = vector.broadcast %156 : i1 to vector<3xi1>
        %271 = vector.maskedload %alloc_6[%c0, %c0], %270, %269 : memref<4x2xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %272 = math.exp %cst_1 : f32
        %273 = vector.broadcast %c1747437374_i64 : i64 to vector<3x2xi64>
        %274 = math.absi %14 : tensor<4x2xi16>
        affine.store %extracted_31, %alloc_19[%c9] : memref<2xf32>
        %extracted_51 = tensor.extract %13[%c1] : tensor<2xf16>
        %275 = arith.divsi %false_29, %false_29 : i1
        %276 = vector.broadcast %c-26608_i16 : i16 to vector<i16>
        %277 = vector.transfer_write %276, %3[%108] : vector<i16>, tensor<2xi16>
        %278 = vector.multi_reduction <maxsi>, %120, %123 [] : vector<3x2xi16> to vector<3x2xi16>
        %279 = math.floor %in : f32
        %280 = arith.shrsi %139, %extracted : i64
        %281 = index.mul %c8, %c3
        %282 = arith.ori %c-30193_i16, %c-26608_i16 : i16
        %283 = math.ctlz %10 : tensor<4x2xi64>
        %284 = arith.minf %out, %cst_1 : f32
        %285 = math.atan2 %11, %11 : tensor<4x2xf16>
        %286 = tensor.empty() : tensor<2xi1>
        %287 = arith.remui %c1747437374_i64, %c1625667180_i64 : i64
        %288 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
        %289 = vector.broadcast %28 : f32 to vector<2xf32>
        %290 = vector.fma %289, %289, %289 : vector<2xf32>
        %291 = arith.subi %c1747437374_i64, %139 : i64
        %extracted_52 = tensor.extract %10[%c1, %c1] : tensor<4x2xi64>
        %expanded_53 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<3x2xi1> into tensor<3x2x1xi1>
        %292 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
        %293 = vector.broadcast %false_29 : i1 to vector<2xi1>
        %294 = vector.gather %from_elements_28[%169, %c8] [%292], %293, %292 : tensor<4x2xi32>, vector<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %295 = arith.divsi %extracted_52, %c1747437374_i64 : i64
        %c0_i32 = arith.constant 0 : i32
        %296 = vector.transfer_read %7[%169, %88], %c0_i32 : tensor<4x2xi32>, vector<2xi32>
        %297 = vector.broadcast %c11 : index to vector<3xindex>
        %298 = vector.broadcast %extracted_31 : f32 to vector<3xf32>
        vector.scatter %alloc_19[%c1] [%297], %270, %298 : memref<2xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d3 + 16, d2 ceildiv 16 + d1 ceildiv 2 + d1 + d3 + 64, d2 ceildiv 16 + d1 ceildiv 2)>(%c9, %160, %c2, %88)
        %300 = math.exp %16 : tensor<4x2xf32>
        %301 = math.log2 %12 : tensor<8xf32>
        linalg.yield %in : f32
      } -> tensor<3x3x3xf32>
      %265 = math.atan2 %16, %15 : tensor<4x2xf32>
      %266 = arith.andi %139, %extracted : i64
      affine.yield %89 : memref<8xf16>
    }
    %176 = index.ceildivu %111, %160
    memref.assume_alignment %alloc_20, 8 : memref<4x2xi64>
    %177 = vector.broadcast %c-30193_i16 : i16 to vector<8xi16>
    %178 = vector.maskedload %alloc_11[%c1, %c0], %95, %177 : memref<3x2xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %alloc_35 = memref.alloc() : memref<4x2xi1>
    %179 = vector.broadcast %c1112807906_i32 : i32 to vector<8xi32>
    %180 = vector.gather %alloc_35[%c2, %108] [%179], %95, %95 : memref<4x2xi1>, vector<8xi32>, vector<8xi1>, vector<8xi1> into vector<8xi1>
    %181 = vector.extract_strided_slice %123 {offsets = [0], sizes = [2], strides = [1]} : vector<3x2xi16> to vector<2x2xi16>
    %182 = arith.muli %c1625667180_i64, %c1625667180_i64 : i64
    %183 = affine.if affine_set<(d0) : ((d0 * 2) floordiv 8 - 64 >= 0)>(%c0) -> f32 {
      %260 = arith.muli %false, %false : i1
      vector.print %41 : vector<3x2xf32>
      %261 = math.absf %15 : tensor<4x2xf32>
      %262 = math.rsqrt %cst_0 : f16
      %expanded_49 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<3x2xi1> into tensor<3x2x1xi1>
      %263 = memref.load %alloc_21[] : memref<f32>
      %cast_50 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
      %264 = arith.remsi %156, %false_29 : i1
      affine.yield %cst_1 : f32
    } else {
      %260 = math.ipowi %c1747437374_i64, %139 : i64
      %261 = bufferization.to_tensor %alloc_9 : memref<8xi16>
      scf.if %false_2 {
        %267 = arith.mulf %extracted_31, %cst_1 : f32
        %268 = vector.transpose %59, [0, 1] : vector<4x2xi64> to vector<4x2xi64>
        memref.assume_alignment %alloc_9, 2 : memref<8xi16>
        %rank_49 = tensor.rank %cast : tensor<?x?xi16>
        %269 = math.copysign %from_elements, %13 : tensor<2xf16>
        %270 = math.cttz %56 : tensor<8xi64>
        %271 = vector.multi_reduction <or>, %181, %c9465_i16 [0, 1] : vector<2x2xi16> to i16
        %272 = math.atan2 %cst_3, %cst : f16
      } else {
        %267 = index.add %c2, %26
        %268 = index.sizeof
        %269 = index.floordivs %c12, %c6
        %270 = math.ctlz %6 : tensor<3x2xi1>
        %271 = memref.realloc %alloc_19 : memref<2xf32> to memref<2xf32>
        %272 = math.log10 %12 : tensor<8xf32>
        %273 = arith.cmpf olt, %extracted_31, %cst_1 : f32
        %274 = math.cttz %2 : tensor<3x2xi16>
      }
      %262 = vector.broadcast %false_2 : i1 to vector<2x2xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %158, %92, %262 : vector<1x2xi1>, vector<1x2xi1> into vector<2x2xi1>
      %true = index.bool.constant true
      %264 = math.log2 %11 : tensor<4x2xf16>
      %265 = arith.shli %c1625667180_i64, %c1300628449_i64 : i64
      %266 = math.round %0 : tensor<8xf32>
      affine.yield %28 : f32
    }
    %184 = arith.cmpf une, %76, %cst_3 : f16
    %185 = math.round %from_elements : tensor<2xf16>
    %186 = arith.shrsi %false, %156 : i1
    %187 = affine.apply affine_map<(d0) -> ((d0 + d0 floordiv 16) * 2 + d0 floordiv 16)>(%c12)
    %188 = arith.remui %false_29, %156 : i1
    %189 = arith.xori %c1300628449_i64, %c1625667180_i64 : i64
    %190 = arith.remsi %c-19705_i16, %c-30193_i16 : i16
    %191 = math.exp %28 : f32
    %extracted_36 = tensor.extract %10[%c0, %c0] : tensor<4x2xi64>
    %192 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
    %193 = vector.load %alloc_10[%c6] : memref<8xf16>, vector<4x2xf16>
    %194 = affine.if affine_set<(d0, d1) : ((d1 mod 8) * 2 >= 0)>(%c13, %c8) -> memref<3x2xi64> {
      %260 = bufferization.to_tensor %alloc_20 : memref<4x2xi64>
      %generated_49 = tensor.generate %26, %c5 {
      ^bb0(%arg2: index, %arg3: index):
        %267 = affine.min affine_map<(d0, d1, d2) -> (4, d0, ((d0 - 8) mod 32) * 2, (d0 - 8) mod 32)>(%160, %88, %166)
        %268 = math.cttz %156 : i1
        %269 = tensor.empty() : tensor<2x2xi16>
        %270 = linalg.matmul ins(%transposed, %113 : tensor<2x3xi16>, tensor<3x2xi16>) outs(%269 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %271 = arith.cmpi ne, %156, %156 : i1
        tensor.yield %156 : i1
      } : tensor<?x?xi1>
      %261 = vector.broadcast %c1747437374_i64 : i64 to vector<4x2xi64>
      %262 = index.ceildivu %167, %c4
      %263 = arith.maxf %extracted_31, %extracted_31 : f32
      %264 = affine.load %89[%c1] : memref<8xf16>
      %265 = memref.realloc %alloc_13 : memref<8xi16> to memref<2xi16>
      %266 = math.floor %16 : tensor<4x2xf32>
      %alloc_50 = memref.alloc() : memref<3x2xi64>
      affine.yield %alloc_50 : memref<3x2xi64>
    } else {
      %cast_49 = tensor.cast %from_elements_28 : tensor<4x2xi32> to tensor<?x?xi32>
      %260 = arith.remui %extracted, %c1625667180_i64 : i64
      %261 = arith.addf %cst_4, %cst_0 : f16
      %262 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_50 = memref.alloc() : memref<3xf32>
      %263 = tensor.empty() : tensor<3x3xf32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50, %263 : memref<3xf32>, tensor<3x3xf32>) outs(%262 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_52: f32, %out: f32):
        %splat_53 = tensor.splat %false_2 : tensor<4x2xi1>
        %269 = vector.insertelement %c-30193_i16, %31[] : vector<i16>
        %270 = math.ipowi %10, %10 : tensor<4x2xi64>
        %271 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
        %272 = arith.floordivsi %c1112807906_i32, %c1112807906_i32 : i32
        memref.assume_alignment %alloc_13, 2 : memref<8xi16>
        %273 = arith.xori %c1300628449_i64, %139 : i64
        %274 = math.absf %out : f32
        %275 = math.round %11 : tensor<4x2xf16>
        %276 = math.exp %from_elements : tensor<2xf16>
        %277 = math.ceil %15 : tensor<4x2xf32>
        %278 = arith.shrui %false, %false_2 : i1
        %279 = arith.minf %cst_1, %cst_1 : f32
        %280 = math.cttz %4 : tensor<8xi32>
        %281 = arith.minui %156, %false : i1
        %282 = arith.ori %false_29, %156 : i1
        %283 = arith.addf %28, %extracted_30 : f32
        %284 = math.log2 %11 : tensor<4x2xf16>
        %285 = math.expm1 %138 : tensor<3x2xf16>
        %286 = index.casts %extracted_36 : i64 to index
        %287 = math.sqrt %extracted_31 : f32
        %288 = math.log10 %0 : tensor<8xf32>
        %289 = arith.addf %cst_5, %cst_4 : f16
        %290 = index.add %108, %169
        %291 = affine.max affine_map<(d0) -> (d0 - 32, d0 mod 2)>(%124)
        %292 = arith.shli %c-26608_i16, %c9465_i16 : i16
        memref.tensor_store %16, %39 : memref<4x2xf32>
        %293 = tensor.empty() : tensor<2xi32>
        %294 = vector.gather %293[%c4] [%58], %46, %58 : tensor<2xi32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi32> into vector<4x2xi32>
        %295 = index.sizeof
        %296 = math.expm1 %in : f32
        %297 = memref.realloc %alloc_7 : memref<8xi16> to memref<4xi16>
        %298 = math.ctpop %6 : tensor<3x2xi1>
        linalg.yield %extracted_31 : f32
      } -> tensor<3x3x3xf32>
      %265 = arith.minf %extracted_30, %cst_1 : f32
      %266 = scf.while (%arg2 = %123) : (vector<3x2xi16>) -> vector<3x2xi16> {
        %269 = math.sqrt %cst_1 : f32
        %270 = index.casts %c10 : index to i32
        %271 = arith.shrsi %extracted_36, %extracted_36 : i64
        %272 = arith.shrui %false_29, %false_2 : i1
        %273 = index.sizeof
        %274 = arith.mulf %76, %cst : f16
        %275 = vector.broadcast %c13 : index to vector<2xindex>
        %276 = vector.broadcast %false_2 : i1 to vector<2xi1>
        %277 = vector.broadcast %c-26608_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_15[%c0] [%275], %276, %277 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        memref.copy %101, %alloc_9 : memref<8xi16> to memref<8xi16>
        scf.condition(%false) %120 : vector<3x2xi16>
      } do {
      ^bb0(%arg2: vector<3x2xi16>):
        %269 = index.mul %c7, %c3
        %270 = math.sqrt %from_elements : tensor<2xf16>
        %271 = arith.mulf %cst_5, %cst_0 : f16
        %272 = math.tanh %138 : tensor<3x2xf16>
        %273 = arith.shrsi %c-19705_i16, %c-26608_i16 : i16
        %cast_52 = tensor.cast %5 : tensor<2xi64> to tensor<?xi64>
        %274 = index.floordivs %c3, %152
        %275 = math.ctlz %collapsed : tensor<8xi32>
        %276 = vector.insertelement %c-19705_i16, %177[%c13 : index] : vector<8xi16>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %277 = vector.transfer_read %transposed[%169, %c13], %c0_i16_53 : tensor<2x3xi16>, vector<i16>
        %278 = math.round %0 : tensor<8xf32>
        %279 = arith.remf %cst_3, %cst_3 : f16
        %280 = memref.load %101[%c4] : memref<8xi16>
        %281 = math.cttz %extracted_36 : i64
        memref.assume_alignment %alloc_12, 16 : memref<3x2xf32>
        %282 = affine.min affine_map<(d0, d1) -> (d0 mod 4, d0 floordiv 4)>(%c12, %157)
        scf.yield %123 : vector<3x2xi16>
      }
      %267 = arith.divsi %false_2, %false_2 : i1
      %268 = vector.load %89[%c4] : memref<8xf16>, vector<8xf16>
      %alloc_51 = memref.alloc() : memref<3x2xi64>
      affine.yield %alloc_51 : memref<3x2xi64>
    }
    %195 = index.divs %c8, %26
    %generated_37 = tensor.generate %c6 {
    ^bb0(%arg2: index):
      %260 = math.round %0 : tensor<8xf32>
      %261 = memref.alloca_scope  -> (memref<4x2xi1>) {
        %264 = math.log10 %134 : tensor<4x8xf32>
        affine.store %false_29, %alloc_14[%c4] : memref<8xi1>
        %265 = math.log1p %cst_3 : f16
        %266 = arith.shrui %false_2, %false : i1
        %267 = arith.maxf %76, %cst_3 : f16
        %268 = math.exp %15 : tensor<4x2xf32>
        %269 = math.rsqrt %11 : tensor<4x2xf16>
        %270 = math.ctlz %false_2 : i1
        %271 = arith.maxsi %c1625667180_i64, %c1747437374_i64 : i64
        %272 = arith.addf %28, %extracted_30 : f32
        %273 = arith.andi %c9465_i16, %c-30193_i16 : i16
        %extracted_49 = tensor.extract %23[] : tensor<i16>
        %274 = math.round %cst_1 : f32
        affine.store %false, %alloc_35[%c13, %c15] : memref<4x2xi1>
        %275 = vector.splat %cst : vector<8xf16>
        %276 = math.floor %cst_1 : f32
        %277 = math.round %15 : tensor<4x2xf32>
        %278 = index.casts %extracted_49 : i16 to index
        %279 = arith.minf %cst_5, %cst_4 : f16
        %280 = math.ctlz %7 : tensor<4x2xi32>
        %281 = arith.maxf %extracted_30, %extracted_30 : f32
        %282 = memref.load %alloc[%c3, %c1] : memref<4x2xf16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %alloc_15[%c6], %c0_i16 : memref<2xi16>, vector<i16>
        %alloc_50 = memref.alloc() : memref<2xf32>
        %284 = bufferization.clone %alloc_14 : memref<8xi1> to memref<8xi1>
        %285 = memref.realloc %alloc_10 : memref<8xf16> to memref<2xf16>
        %286 = arith.maxf %cst_3, %cst : f16
        %287 = memref.realloc %alloc_16 : memref<2xf16> to memref<4xf16>
        %288 = math.ctlz %3 : tensor<2xi16>
        %289 = vector.multi_reduction <or>, %47, %47 [] : vector<4xi16> to vector<4xi16>
        memref.tensor_store %14, %alloc_6 : memref<4x2xi16>
        %290 = math.absf %from_elements : tensor<2xf16>
        memref.alloca_scope.return %alloc_35 : memref<4x2xi1>
      }
      %262 = tensor.empty() : tensor<8xi32>
      %263 = memref.realloc %alloc_15 : memref<2xi16> to memref<8xi16>
      tensor.yield %false : i1
    } : tensor<?xi1>
    %extracted_38 = tensor.extract %5[%c1] : tensor<2xi64>
    vector.print %177 : vector<8xi16>
    %196 = vector.insert %false, %180 [3] : i1 into vector<8xi1>
    vector.print %95 : vector<8xi1>
    %197 = arith.muli %extracted_38, %extracted : i64
    %198 = tensor.empty() : tensor<4x2xf32>
    %199 = math.rsqrt %28 : f32
    %200 = math.round %16 : tensor<4x2xf32>
    %201 = math.exp %11 : tensor<4x2xf16>
    %alloca_39 = memref.alloca() : memref<2xi32>
    %202 = math.atan2 %13, %13 : tensor<2xf16>
    %203 = vector.broadcast %extracted_38 : i64 to vector<2xi64>
    %204 = vector.broadcast %false_2 : i1 to vector<2xi1>
    %205 = vector.maskedload %alloc_20[%c0, %c1], %204, %203 : memref<4x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %splat = tensor.splat %c9465_i16 : tensor<3x2xi16>
    %splat_40 = tensor.splat %extracted_30 : tensor<4x2xf32>
    %206 = math.fma %12, %12, %12 : tensor<8xf32>
    %207 = arith.remui %false_2, %false : i1
    memref.assume_alignment %alloc_6, 4 : memref<4x2xi16>
    %208 = arith.muli %false_2, %false : i1
    %209 = affine.max affine_map<(d0, d1, d2) -> (d0 + 4, d0 + 36, -d1, -d1)>(%67, %c10, %c9)
    %210 = vector.insertelement %c-19705_i16, %47[%132 : index] : vector<4xi16>
    %211 = math.tan %cst_3 : f16
    %212 = math.exp %0 : tensor<8xf32>
    affine.store %false, %alloc_14[%c8] : memref<8xi1>
    %213 = arith.remsi %c9465_i16, %c-26608_i16 : i16
    %expanded = tensor.expand_shape %from_elements_28 [[0], [1, 2]] : tensor<4x2xi32> into tensor<4x2x1xi32>
    %214 = memref.load %alloc_13[%c1] : memref<8xi16>
    %215 = math.rsqrt %15 : tensor<4x2xf32>
    %216 = arith.shrsi %c-26608_i16, %c-30193_i16 : i16
    %from_elements_41 = tensor.from_elements %28, %cst_1, %extracted_31, %28, %28, %extracted_30, %28, %extracted_30 : tensor<4x2xf32>
    %217 = index.divu %c10, %c3
    %218 = math.tanh %0 : tensor<8xf32>
    %219 = arith.remui %c-26608_i16, %c-30193_i16 : i16
    %220 = bufferization.to_memref %8 : memref<3x2xi1>
    vector.print %123 : vector<3x2xi16>
    %221 = math.log2 %76 : f16
    %222 = arith.ceildivsi %false, %false : i1
    %223 = index.divu %c8, %26
    %224 = math.log2 %0 : tensor<8xf32>
    %225 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
    %226 = vector.fma %225, %225, %225 : vector<3x2xf32>
    %227 = arith.minsi %extracted_36, %c1747437374_i64 : i64
    %228 = math.round %splat_40 : tensor<4x2xf32>
    %229 = bufferization.to_memref %expanded : memref<4x2x1xi32>
    %230 = memref.realloc %101 : memref<8xi16> to memref<2xi16>
    %alloc_42 = memref.alloc() : memref<4x1xi32>
    %alloc_43 = memref.alloc() : memref<1xi32>
    %231 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_42, %alloc_43 : memref<4x1xi32>, memref<1xi32>) outs(%expanded : tensor<4x2x1xi32>) {
    ^bb0(%in: i32, %in_49: i32, %out: i32):
      memref.assume_alignment %89, 2 : memref<8xf16>
      %260 = index.divs %c5, %c2
      %261 = math.log2 %cst_5 : f16
      %262 = arith.addi %false, %false_2 : i1
      memref.alloca_scope  {
        %286 = vector.flat_transpose %180 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %287 = arith.maxf %cst_3, %cst_0 : f16
        %288 = math.rsqrt %11 : tensor<4x2xf16>
        %289 = arith.mulf %76, %cst_3 : f16
        %290 = index.divu %c12, %67
        %291 = math.round %extracted_31 : f32
        %292 = math.sqrt %extracted_31 : f32
        %293 = arith.maxf %cst_4, %76 : f16
        %294 = arith.addi %c1112807906_i32, %c1112807906_i32 : i32
        %295 = index.divu %209, %c8
        %296 = affine.apply affine_map<(d0) -> (d0 - 4)>(%295)
        %297 = tensor.empty(%152) : tensor<?x2xf32>
        %c0_i16 = arith.constant 0 : i16
        %298 = vector.transfer_read %146[%167, %67], %c0_i16 : tensor<3x3xi16>, vector<2xi16>
        %299 = arith.maxf %extracted_30, %extracted_31 : f32
        %300 = tensor.empty() : tensor<2xi1>
        %301 = index.maxs %c12, %c13
        %302 = tensor.empty(%c2) : tensor<?x2xf32>
        %cast_55 = tensor.cast %138 : tensor<3x2xf16> to tensor<?x?xf16>
        %303 = math.tanh %15 : tensor<4x2xf32>
        %304 = affine.min affine_map<(d0) -> (0, ((-(d0 ceildiv 2)) ceildiv 128) * 128, (d0 ceildiv 2) mod 32 + d0 ceildiv 2)>(%176)
        %splat_56 = tensor.splat %extracted : tensor<3x2xi64>
        %305 = index.mul %97, %296
        %306 = vector.transpose %158, [0, 1] : vector<1x2xi1> to vector<1x2xi1>
        %307 = tensor.empty() : tensor<3x2xi16>
        %alloc_57 = memref.alloc() : memref<2xi64>
        %308 = index.add %c4, %301
        memref.tensor_store %307, %alloc_8 : memref<3x2xi16>
        memref.assume_alignment %alloc_20, 2 : memref<4x2xi64>
        %309 = vector.broadcast %c9465_i16 : i16 to vector<2xi16>
        %310 = vector.multi_reduction <minsi>, %181, %309 [0] : vector<2x2xi16> to vector<2xi16>
        %dest_58, %accumulated_value_59 = vector.scan <and>, %181, %309 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi16>, vector<2xi16>
        %311 = arith.negf %cst_4 : f16
        %312 = arith.minsi %extracted_36, %139 : i64
      }
      %263 = arith.maxf %cst_0, %cst_3 : f16
      %alloc_50 = memref.alloc() : memref<3x2xi16>
      %264 = memref.realloc %alloc_15 : memref<2xi16> to memref<2xi16>
      %265 = tensor.empty() : tensor<4x2xi1>
      %266 = vector.gather %265[%169, %c2] [%179], %95, %95 : tensor<4x2xi1>, vector<8xi32>, vector<8xi1>, vector<8xi1> into vector<8xi1>
      %267 = math.exp %splat_40 : tensor<4x2xf32>
      %268 = vector.broadcast %152 : index to vector<8xindex>
      vector.scatter %220[%c2, %c0] [%268], %180, %95 : memref<3x2xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
      vector.print %95 : vector<8xi1>
      %269 = math.exp %cst_0 : f16
      %270 = arith.addi %extracted_38, %c1625667180_i64 : i64
      %271 = vector.insertelement %139, %205[%c12 : index] : vector<2xi64>
      affine.store %c-26608_i16, %alloc_11[%c11, %c12] : memref<3x2xi16>
      %272 = vector.broadcast %260 : index to vector<3xindex>
      %273 = vector.broadcast %false_29 : i1 to vector<3xi1>
      vector.scatter %220[%c1, %c0] [%272], %273, %273 : memref<3x2xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %274 = math.ipowi %10, %10 : tensor<4x2xi64>
      %275 = math.cttz %56 : tensor<8xi64>
      %276 = vector.extract_strided_slice %106 {offsets = [1], sizes = [6], strides = [1]} : vector<8xf32> to vector<6xf32>
      %277 = math.cttz %5 : tensor<2xi64>
      %true = arith.constant true
      %false_51 = arith.constant false
      %278 = vector.transfer_read %265[%c11, %111], %false_51 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x2xi1>, vector<2xi1>
      %expanded_52 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
      %279 = arith.divf %extracted_30, %extracted_31 : f32
      affine.store %extracted_30, %39[%c13, %c0] : memref<4x2xf32>
      %280 = math.exp %0 : tensor<8xf32>
      %281 = vector.broadcast %c9465_i16 : i16 to vector<2xi16>
      %dest_53, %accumulated_value_54 = vector.scan <or>, %120, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi16>, vector<2xi16>
      %282 = arith.maxf %cst_4, %cst_4 : f16
      %283 = math.copysign %cst_4, %cst_5 : f16
      %284 = vector.matrix_multiply %205, %203 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
      %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 8, d0)>(%c12, %97, %103, %152)
      memref.assume_alignment %alloc_14, 2 : memref<8xi1>
      linalg.yield %out : i32
    } -> tensor<4x2x1xi32>
    %232 = vector.matrix_multiply %107, %151 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
    %233 = math.exp %16 : tensor<4x2xf32>
    %rank = tensor.rank %14 : tensor<4x2xi16>
    scf.index_switch %132 
    case 1 {
      %260 = index.ceildivu %26, %c15
      %261 = arith.mulf %cst, %cst_3 : f16
      %generated_49 = tensor.generate %c2, %260 {
      ^bb0(%arg2: index, %arg3: index):
        %270 = arith.ori %extracted_38, %c1747437374_i64 : i64
        %271 = math.ctpop %extracted_38 : i64
        %272 = memref.load %alloc[%c1, %c1] : memref<4x2xf16>
        %273 = math.ctpop %8 : tensor<3x2xi1>
        tensor.yield %c-30193_i16 : i16
      } : tensor<?x?xi16>
      %262 = math.log2 %cst_5 : f16
      %splat_50 = tensor.splat %c1300628449_i64 : tensor<4x2xi64>
      %expanded_51 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
      %263 = arith.shrsi %extracted_36, %c1747437374_i64 : i64
      %264 = arith.minf %cst_4, %cst_5 : f16
      %splat_52 = tensor.splat %cst_3 : tensor<3x2xf16>
      %265 = index.castu %false : i1 to index
      %266 = index.sizeof
      %267 = math.log10 %from_elements_41 : tensor<4x2xf32>
      %268 = vector.flat_transpose %107 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      %from_elements_53 = tensor.from_elements %cst_0, %cst, %76, %cst_3, %cst_5, %cst : tensor<3x2xf16>
      %from_elements_54 = tensor.from_elements %c-26608_i16, %c-30193_i16, %c9465_i16, %c-30193_i16, %c-19705_i16, %c9465_i16, %c-30193_i16, %c-26608_i16 : tensor<4x2xi16>
      %269 = arith.remsi %139, %c1625667180_i64 : i64
      scf.yield
    }
    case 2 {
      %260 = index.add %103, %117
      %261 = affine.load %alloc_10[%c7] : memref<8xf16>
      %262 = arith.remf %cst_4, %cst : f16
      %263 = math.tanh %16 : tensor<4x2xf32>
      %false_49 = index.bool.constant false
      %264 = index.mul %166, %160
      %265 = tensor.empty(%209, %132) : tensor<?x?xf16>
      %266 = vector.broadcast %c-19705_i16 : i16 to vector<4x4xi16>
      %267 = vector.outerproduct %20, %20, %266 {kind = #vector.kind<and>} : vector<4xi16>, vector<4xi16>
      %268 = math.tan %15 : tensor<4x2xf32>
      %269 = math.ctlz %162 : tensor<8xi32>
      %270 = vector.broadcast %c-19705_i16 : i16 to vector<2xi16>
      %271 = vector.broadcast %c1112807906_i32 : i32 to vector<2xi32>
      %272 = vector.gather %alloc_11[%117, %108] [%271], %204, %270 : memref<3x2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %273 = math.exp %28 : f32
      %274 = math.floor %261 : f16
      %275 = memref.realloc %alloc_19 : memref<2xf32> to memref<8xf32>
      %276 = arith.remsi %extracted_36, %c1747437374_i64 : i64
      %277 = scf.if %false -> (i16) {
        memref.assume_alignment %alloc_18, 1 : memref<4x2xf16>
        %rank_50 = tensor.rank %from_elements_41 : tensor<4x2xf32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %272, %181, %272 : vector<2xi16>, vector<2x2xi16> into vector<2xi16>
        %279 = affine.max affine_map<(d0, d1) -> (d0 + 2)>(%26, %223)
        %280 = arith.maxsi %extracted_38, %c1300628449_i64 : i64
        %281 = arith.negf %cst : f16
        %282 = arith.muli %c1747437374_i64, %c1747437374_i64 : i64
        %283 = arith.minf %cst_5, %76 : f16
        scf.yield %c-26608_i16 : i16
      } else {
        %278 = tensor.empty() : tensor<4x2xf16>
        %279 = index.ceildivs %103, %217
        %280 = math.floor %cst_3 : f16
        %281 = vector.multi_reduction <mul>, %232, %232 [] : vector<1xf32> to vector<1xf32>
        %282 = math.log2 %extracted_31 : f32
        %283 = index.ceildivu %152, %c3
        %splat_50 = tensor.splat %c1112807906_i32 : tensor<3x2xi32>
        %284 = arith.minf %cst_5, %cst_5 : f16
        scf.yield %c-19705_i16 : i16
      }
      scf.yield
    }
    default {
      %260 = vector.transpose %58, [0, 1] : vector<4x2xi32> to vector<4x2xi32>
      vector.print %158 : vector<1x2xi1>
      %261 = scf.if %false_2 -> (i32) {
        %271 = math.ipowi %10, %10 : tensor<4x2xi64>
        %272 = index.ceildivu %c12, %223
        %273 = index.sizeof
        %274 = tensor.empty() : tensor<3x3xi16>
        %275 = linalg.matmul ins(%2, %18 : tensor<3x2xi16>, tensor<2x3xi16>) outs(%274 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %276 = index.divu %c5, %117
        %277 = arith.muli %false_2, %false : i1
        %278 = index.ceildivu %272, %217
        %expanded_51 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
        scf.yield %c1112807906_i32 : i32
      } else {
        %271 = vector.broadcast %c1112807906_i32 : i32 to vector<3x4xi32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %122, %58, %271 : vector<3x2xi32>, vector<4x2xi32> into vector<3x4xi32>
        %273 = index.sub %c15, %117
        %false_51 = index.bool.constant false
        %274 = memref.load %alloc_7[%c0] : memref<8xi16>
        %275 = vector.matrix_multiply %151, %232 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<1xf32>) -> vector<8xf32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %232, %232, %extracted_30 : vector<1xf32>, vector<1xf32> into f32
        %277 = arith.subi %c1112807906_i32, %c1112807906_i32 : i32
        %278 = index.mul %157, %c9
        scf.yield %c1112807906_i32 : i32
      }
      %262 = bufferization.to_memref %12 : memref<8xf32>
      affine.store %c-26608_i16, %alloc_9[%c6] : memref<8xi16>
      %cast_49 = tensor.cast %15 : tensor<4x2xf32> to tensor<?x?xf32>
      %263 = scf.index_switch %169 -> i32 
      case 1 {
        %271 = math.floor %cst_0 : f16
        %extracted_51 = tensor.extract %12[%c0] : tensor<8xf32>
        affine.store %false_2, %alloc_14[%c9] : memref<8xi1>
        %272 = math.tan %12 : tensor<8xf32>
        %273 = affine.max affine_map<(d0, d1) -> (((d0 - 8) * 2) floordiv 32, d1, 0)>(%103, %c15)
        %274 = math.rsqrt %splat_40 : tensor<4x2xf32>
        %275 = index.mul %c4, %c12
        %276 = vector.broadcast %c-26608_i16 : i16 to vector<3xi16>
        %277 = vector.broadcast %false : i1 to vector<3xi1>
        %278 = vector.maskedload %alloc_8[%c0, %c1], %277, %276 : memref<3x2xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %279 = math.rsqrt %198 : tensor<4x2xf32>
        %280 = bufferization.to_memref %11 : memref<4x2xf16>
        %extracted_52 = tensor.extract %4[%c5] : tensor<8xi32>
        %281 = index.casts %c15 : index to i32
        %282 = index.casts %c-26608_i16 : i16 to index
        %283 = math.round %12 : tensor<8xf32>
        %284 = arith.minsi %extracted_36, %extracted_38 : i64
        %extracted_53 = tensor.extract %3[%c1] : tensor<2xi16>
        scf.yield %c1112807906_i32 : i32
      }
      case 2 {
        %271 = arith.floordivsi %c-26608_i16, %c-26608_i16 : i16
        %272 = math.fpowi %16, %7 : tensor<4x2xf32>, tensor<4x2xi32>
        %rank_51 = tensor.rank %0 : tensor<8xf32>
        %273 = index.divu %167, %108
        %274 = tensor.empty() : tensor<2xf16>
        %275 = arith.ceildivsi %c-30193_i16, %c-19705_i16 : i16
        %276 = vector.broadcast %111 : index to vector<4xindex>
        %277 = vector.broadcast %false_2 : i1 to vector<4xi1>
        vector.scatter %alloc_13[%c6] [%276], %277, %20 : memref<8xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %278 = math.tan %16 : tensor<4x2xf32>
        %alloc_52 = memref.alloc() : memref<8xf32>
        affine.store %c-30193_i16, %alloc_7[%c9] : memref<8xi16>
        %279 = math.floor %0 : tensor<8xf32>
        memref.assume_alignment %alloc_9, 2 : memref<8xi16>
        %280 = arith.maxf %28, %28 : f32
        memref.assume_alignment %262, 1 : memref<8xf32>
        %281 = math.tan %76 : f16
        %282 = math.round %12 : tensor<8xf32>
        scf.yield %c1112807906_i32 : i32
      }
      case 3 {
        %271 = affine.max affine_map<(d0, d1, d2) -> ((d1 - 12) mod 16 + d1 + 8)>(%97, %c2, %97)
        %splat_51 = tensor.splat %c1300628449_i64 : tensor<8xi64>
        %272 = arith.shli %c-19705_i16, %c-19705_i16 : i16
        affine.store %false_2, %alloc_17[%c10] : memref<8xi1>
        %273 = affine.load %alloc_15[%c7] : memref<2xi16>
        %274 = arith.mulf %cst_4, %cst_5 : f16
        %275 = index.sizeof
        %expanded_52 = tensor.expand_shape %from_elements [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %276 = arith.shli %273, %c-19705_i16 : i16
        %277 = arith.minf %76, %76 : f16
        %278 = index.sizeof
        %279 = vector.maskedload %alloc_6[%c0, %c1], %180, %177 : memref<4x2xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %280 = tensor.empty() : tensor<3x3xi16>
        %281 = linalg.matmul ins(%113, %18 : tensor<3x2xi16>, tensor<2x3xi16>) outs(%280 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %c0_i32 = arith.constant 0 : i32
        %282 = vector.transfer_read %collapsed[%c7], %c0_i32 : tensor<8xi32>, vector<i32>
        %283 = math.cttz %280 : tensor<3x3xi16>
        %284 = tensor.empty() : tensor<4x3xi16>
        %285 = linalg.matmul ins(%14, %transposed : tensor<4x2xi16>, tensor<2x3xi16>) outs(%284 : tensor<4x3xi16>) -> tensor<4x3xi16>
        scf.yield %c0_i32 : i32
      }
      default {
        %271 = vector.broadcast %28 : f32 to vector<2xf32>
        %272 = vector.insert %271, %225 [1] : vector<2xf32> into vector<3x2xf32>
        %273 = arith.subi %c9465_i16, %c-19705_i16 : i16
        %274 = vector.create_mask %c13, %167 : vector<3x2xi1>
        %275 = vector.insert %204, %274 [0] : vector<2xi1> into vector<3x2xi1>
        %276 = affine.load %262[%c0] : memref<8xf32>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %cst_52 = arith.constant 0.000000e+00 : f16
        %277 = vector.transfer_read %89[%c3], %cst_52 : memref<8xf16>, vector<f16>
        %278 = math.ceil %cst_5 : f16
        %279 = index.sizeof
        %280 = math.atan2 %13, %13 : tensor<2xf16>
        %cast_53 = tensor.cast %splat_40 : tensor<4x2xf32> to tensor<?x?xf32>
        %expanded_54 = tensor.expand_shape %collapsed [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %281 = arith.minf %cst_51, %cst_3 : f16
        vector.print %150 : vector<8xf32>
        %282 = index.divu %217, %c6
        %rank_55 = tensor.rank %17 : tensor<4x2xf32>
        %283 = arith.maxf %276, %extracted_30 : f32
        scf.yield %c1112807906_i32 : i32
      }
      %264 = math.sqrt %0 : tensor<8xf32>
      %265 = index.sub %223, %c2
      %collapsed_50 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x2xi16> into tensor<6xi16>
      %266 = arith.negf %cst_4 : f16
      %267 = math.tan %15 : tensor<4x2xf32>
      %268 = arith.minf %cst_1, %extracted_31 : f32
      %269 = index.ceildivs %167, %124
      memref.assume_alignment %alloc_20, 16 : memref<4x2xi64>
      %270 = math.atan %cst_5 : f16
    }
    %234 = arith.remsi %c1625667180_i64, %c1747437374_i64 : i64
    %235 = math.log2 %28 : f32
    %236 = arith.mulf %cst_5, %76 : f16
    %237 = memref.load %alloc_18[%c3, %c0] : memref<4x2xf16>
    memref.copy %alloc_18, %alloc : memref<4x2xf16> to memref<4x2xf16>
    %238 = math.expm1 %extracted_30 : f32
    %splat_44 = tensor.splat %cst : tensor<4x2xf16>
    %239 = vector.create_mask %167 : vector<2xi1>
    %240 = math.round %extracted_30 : f32
    %alloc_45 = memref.alloc() : memref<1x2x4xi32>
    %241 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45 : memref<1x2x4xi32>) outs(%expanded : tensor<4x2x1xi32>) {
    ^bb0(%in: i32, %out: i32):
      %260 = math.tanh %11 : tensor<4x2xf16>
      %261 = memref.realloc %alloc_9 : memref<8xi16> to memref<4xi16>
      %extracted_49 = tensor.extract %113[%c1, %c1] : tensor<3x2xi16>
      %262 = math.ipowi %22, %23 : tensor<i16>
      %263 = affine.if affine_set<(d0) : (d0 * 8 - (d0 mod 4) * 32 >= 0)>(%c15) -> memref<2xi64> {
        %286 = bufferization.to_memref %12 : memref<8xf32>
        %287 = math.tanh %cst_4 : f16
        %288 = math.round %134 : tensor<4x8xf32>
        %289 = vector.transpose %123, [1, 0] : vector<3x2xi16> to vector<2x3xi16>
        %290 = tensor.empty() : tensor<2xi64>
        %291 = math.log10 %134 : tensor<4x8xf32>
        %292 = affine.apply affine_map<(d0) -> (d0 - 4)>(%209)
        %293 = arith.muli %false_29, %false_2 : i1
        %alloc_57 = memref.alloc() : memref<2xi64>
        affine.yield %alloc_57 : memref<2xi64>
      } else {
        %286 = arith.remui %out, %in : i32
        %287 = arith.muli %c1747437374_i64, %c1747437374_i64 : i64
        %288 = arith.divui %extracted_36, %c1747437374_i64 : i64
        %cst_57 = arith.constant 1.000000e+00 : f32
        %289 = vector.transfer_read %198[%c7, %rank], %cst_57 : tensor<4x2xf32>, vector<4xf32>
        %290 = arith.floordivsi %c1625667180_i64, %c1747437374_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_58 = arith.constant 0 : i16
        %291 = vector.transfer_read %transposed[%69, %c13], %c0_i16_58 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x3xi16>, vector<3xi16>
        %292 = vector.broadcast %c10 : index to vector<8xindex>
        vector.scatter %alloc_17[%c0] [%292], %180, %95 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %293 = arith.remui %false_29, %false : i1
        %alloc_59 = memref.alloc() : memref<2xi64>
        affine.yield %alloc_59 : memref<2xi64>
      }
      %264 = index.add %c9, %c13
      %265 = vector.load %alloc_18[%c0, %c1] : memref<4x2xf16>, vector<4x2xf16>
      affine.for %arg2 = 0 to 56 {
      }
      %extracted_50 = tensor.extract %10[%c2, %c0] : tensor<4x2xi64>
      %266 = affine.max affine_map<(d0, d1) -> ((d0 floordiv 128 - d1) floordiv 128)>(%67, %132)
      %267 = index.ceildivs %97, %108
      %generated_51 = tensor.generate %c14 {
      ^bb0(%arg2: index):
        %286 = tensor.empty() : tensor<4x3xi16>
        %287 = linalg.matmul ins(%14, %transposed : tensor<4x2xi16>, tensor<2x3xi16>) outs(%286 : tensor<4x3xi16>) -> tensor<4x3xi16>
        %288 = index.mul %c13, %169
        %289 = math.ipowi %4, %collapsed : tensor<8xi32>
        %290 = memref.realloc %alloc_16 : memref<2xf16> to memref<2xf16>
        tensor.yield %c-26608_i16 : i16
      } : tensor<?xi16>
      %268 = index.ceildivu %209, %209
      %269 = arith.ceildivsi %156, %false : i1
      %270 = arith.addf %cst_4, %cst_0 : f16
      %271 = arith.cmpf ole, %76, %cst : f16
      %272 = affine.if affine_set<(d0) : (d0 ceildiv 16 == 0, d0 >= 0)>(%c12) -> memref<8xi64> {
        %286 = math.tanh %extracted_30 : f32
        %287 = math.round %11 : tensor<4x2xf16>
        %288 = arith.maxf %cst_0, %cst_3 : f16
        %289 = index.add %c6, %48
        %290 = vector.broadcast %28 : f32 to vector<3xf32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %226, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
        %291 = math.log2 %cst_1 : f32
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %180, %180, %false_29 : vector<8xi1>, vector<8xi1> into i1
        %false_59 = index.bool.constant false
        %alloc_60 = memref.alloc() : memref<8xi64>
        affine.yield %alloc_60 : memref<8xi64>
      } else {
        %286 = math.atan2 %15, %from_elements_41 : tensor<4x2xf32>
        %287 = math.fpowi %cst_1, %c1112807906_i32 : f32, i32
        %288 = arith.divui %156, %false : i1
        %289 = arith.maxf %extracted_31, %28 : f32
        %cast_57 = tensor.cast %8 : tensor<3x2xi1> to tensor<?x?xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %205, %203, %extracted_38 : vector<2xi64>, vector<2xi64> into i64
        %291 = arith.minf %extracted_31, %28 : f32
        %292 = math.copysign %13, %13 : tensor<2xf16>
        %alloc_58 = memref.alloc() : memref<8xi64>
        affine.yield %alloc_58 : memref<8xi64>
      }
      %alloc_52 = memref.alloc() : memref<2xi32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<2xi32>) outs(%expanded : tensor<4x2x1xi32>) {
      ^bb0(%in_57: i32, %out_58: i32):
        %286 = math.round %13 : tensor<2xf16>
        %287 = vector.broadcast %false_2 : i1 to vector<i1>
        vector.transfer_write %287, %alloc_14[%209] : vector<i1>, memref<8xi1>
        %288 = math.cttz %c9465_i16 : i16
        %expanded_59 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<4x2xi32> into tensor<4x2x1xi32>
        %289 = math.absf %splat_40 : tensor<4x2xf32>
        %290 = affine.apply affine_map<(d0) -> ((d0 - 8) * -64)>(%97)
        %from_elements_60 = tensor.from_elements %false_2, %false, %false_29, %false, %false_2, %false_29, %156, %false : tensor<8xi1>
        %291 = math.ctlz %7 : tensor<4x2xi32>
        vector.print %107 : vector<8xf32>
        %292 = index.sizeof
        %293 = math.copysign %extracted_31, %cst_1 : f32
        memref.assume_alignment %alloc_10, 16 : memref<8xf16>
        %294 = math.log2 %15 : tensor<4x2xf32>
        %295 = math.round %cst_3 : f16
        %296 = index.add %c14, %267
        %297 = math.exp %12 : tensor<8xf32>
        %298 = index.ceildivu %c8, %c3
        %299 = arith.minf %cst_0, %cst : f16
        %300 = math.exp %134 : tensor<4x8xf32>
        %301 = math.floor %0 : tensor<8xf32>
        %302 = arith.xori %extracted_36, %c1747437374_i64 : i64
        %303 = math.ipowi %7, %7 : tensor<4x2xi32>
        %304 = bufferization.clone %alloc_17 : memref<8xi1> to memref<8xi1>
        %305 = arith.maxsi %extracted, %c1300628449_i64 : i64
        %306 = math.expm1 %198 : tensor<4x2xf32>
        %307 = arith.ceildivsi %c1300628449_i64, %extracted_38 : i64
        %308 = vector.broadcast %extracted_30 : f32 to vector<3xf32>
        %dest_61, %accumulated_value_62 = vector.scan <mul>, %41, %308 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
        %309 = index.add %c1, %217
        %310 = vector.shuffle %57, %59 [1, 3, 4, 5, 7] : vector<4x2xi64>, vector<4x2xi64>
        %311 = affine.max affine_map<(d0) -> (d0 floordiv 16, (d0 mod 16) * 128 - 1, (d0 mod 16) ceildiv 2, (d0 mod 16) * 128 - 1)>(%48)
        %312 = arith.cmpi slt, %false_2, %false_29 : i1
        %c198757895_i32 = arith.constant 198757895 : i32
        linalg.yield %out : i32
      } -> tensor<4x2x1xi32>
      %274 = vector.broadcast %28 : f32 to vector<3xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %225, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
      %275 = index.sizeof
      %276 = arith.divf %76, %cst_4 : f16
      %277 = arith.negf %cst_5 : f16
      %278 = arith.remsi %c1625667180_i64, %extracted_36 : i64
      %279 = arith.addi %extracted_49, %c-30193_i16 : i16
      %280 = arith.muli %c1112807906_i32, %c1112807906_i32 : i32
      %expanded_55 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<4x2x1xi32> into tensor<4x2x1x1xi32>
      %281 = math.copysign %13, %13 : tensor<2xf16>
      %282 = vector.insertelement %extracted_31, %150[%48 : index] : vector<8xf32>
      %283 = arith.muli %156, %false : i1
      %284 = index.mul %c9, %187
      %285 = math.expm1 %12 : tensor<8xf32>
      %cast_56 = tensor.cast %5 : tensor<2xi64> to tensor<?xi64>
      linalg.yield %out : i32
    } -> tensor<4x2x1xi32>
    %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %106, %151, %28 : vector<8xf32>, vector<8xf32> into f32
    %alloc_46 = memref.alloc() : memref<2xi16>
    %243 = affine.apply affine_map<(d0) -> (d0 * -8)>(%c12)
    %244 = vector.load %alloc_8[%c2, %c0] : memref<3x2xi16>, vector<3x2xi16>
    %splat_47 = tensor.splat %cst_0 : tensor<3x2xf16>
    %245 = affine.apply affine_map<(d0) -> (d0 + 128)>(%223)
    %246 = vector.reduction <minsi>, %204 : vector<2xi1> into i1
    %247 = index.sizeof
    %248 = vector.reduction <and>, %239 : vector<2xi1> into i1
    %249 = math.sqrt %15 : tensor<4x2xf32>
    %250 = arith.ceildivsi %c-26608_i16, %c-26608_i16 : i16
    %251 = arith.cmpi uge, %c-19705_i16, %c-19705_i16 : i16
    vector.print %150 : vector<8xf32>
    %252 = arith.remsi %false, %false_29 : i1
    %253 = index.maxu %c5, %124
    %254 = index.ceildivu %c6, %c2
    %255 = math.log %17 : tensor<4x2xf32>
    %256 = tensor.empty() : tensor<4x2xi32>
    %257 = linalg.copy ins(%7 : tensor<4x2xi32>) outs(%256 : tensor<4x2xi32>) -> tensor<4x2xi32>
    %alloc_48 = memref.alloc() : memref<2xi16>
    linalg.transpose ins(%3 : tensor<2xi16>) outs(%alloc_48 : memref<2xi16>) permutation = [0] 
    %258 = tensor.empty() : tensor<2xf16>
    %reduced = linalg.reduce ins(%alloc : memref<4x2xf16>) outs(%258 : tensor<2xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %260 = arith.ori %c1112807906_i32, %c1112807906_i32 : i32
        %261 = vector.extract_strided_slice %193 {offsets = [0], sizes = [2], strides = [1]} : vector<4x2xf16> to vector<2x2xf16>
        %262 = arith.muli %false, %false_29 : i1
        %263 = math.exp %in : f16
        %264 = math.log10 %extracted_30 : f32
        %265 = arith.cmpf false, %init, %in : f16
        scf.index_switch %124 
        case 1 {
          %266 = arith.shrsi %156, %false_29 : i1
          %267 = arith.shli %c9465_i16, %c-26608_i16 : i16
          %268 = affine.max affine_map<(d0) -> ((d0 mod 16) * 18, (d0 mod 16) * 2 - ((d0 mod 16) * 2 + 64))>(%124)
          %269 = index.sizeof
          %270 = index.maxs %253, %253
          memref.copy %alloc_7, %alloc_13 : memref<8xi16> to memref<8xi16>
          %271 = arith.floordivsi %extracted_36, %139 : i64
          %272 = bufferization.to_memref %14 : memref<4x2xi16>
          %273 = math.log10 %init : f16
          %274 = index.sizeof
          %splat_51 = tensor.splat %28 : tensor<8xf32>
          %275 = arith.ceildivsi %c-26608_i16, %c-30193_i16 : i16
          %276 = math.log2 %11 : tensor<4x2xf16>
          %277 = math.expm1 %15 : tensor<4x2xf32>
          %278 = arith.muli %156, %false_29 : i1
          %cast_52 = tensor.cast %113 : tensor<3x2xi16> to tensor<?x?xi16>
          scf.yield
        }
        case 2 {
          %extracted_51 = tensor.extract %splat[%c1, %c0] : tensor<3x2xi16>
          %266 = tensor.empty() : tensor<4x2xi16>
          %267 = math.tan %extracted_31 : f32
          %268 = vector.broadcast %cst_1 : f32 to vector<8xf32>
          %269 = arith.minf %extracted_31, %extracted_30 : f32
          %270 = arith.mulf %in, %cst_4 : f16
          %271 = math.rsqrt %11 : tensor<4x2xf16>
          %272 = index.sizeof
          %273 = math.log10 %16 : tensor<4x2xf32>
          %alloc_52 = memref.alloc() : memref<8xi64>
          %274 = vector.shuffle %46, %121 [3, 4, 5] : vector<4x2xi1>, vector<3x2xi1>
          %275 = vector.broadcast %in : f16 to vector<f16>
          %276 = vector.transfer_write %275, %258[%111] : vector<f16>, tensor<2xf16>
          vector.print %178 : vector<8xi16>
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_53 = arith.constant 0 : i16
          %277 = vector.transfer_read %2[%c10, %167], %c0_i16_53 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x2xi16>, vector<2xi16>
          %278 = math.exp %init : f16
          %279 = math.absf %13 : tensor<2xf16>
          scf.yield
        }
        case 3 {
          %266 = arith.addf %cst_4, %cst_4 : f16
          %extracted_51 = tensor.extract %from_elements_41[%c1, %c0] : tensor<4x2xf32>
          %267 = math.tanh %12 : tensor<8xf32>
          %268 = affine.apply affine_map<(d0) -> ((d0 mod 32) ceildiv 4)>(%c9)
          %269 = arith.addi %139, %extracted_36 : i64
          %270 = arith.minf %extracted_51, %cst_1 : f32
          %271 = index.mul %209, %67
          %272 = math.absi %7 : tensor<4x2xi32>
          %273 = arith.ori %c-19705_i16, %c-30193_i16 : i16
          %c0_i16 = arith.constant 0 : i16
          %274 = vector.transfer_read %alloc_6[%152, %c10], %c0_i16 : memref<4x2xi16>, vector<i16>
          %275 = index.ceildivu %132, %111
          %276 = math.rsqrt %15 : tensor<4x2xf32>
          %277 = math.exp %134 : tensor<4x8xf32>
          %278 = math.log10 %28 : f32
          %279 = math.cttz %162 : tensor<8xi32>
          %280 = index.mul %c5, %195
          scf.yield
        }
        case 4 {
          %266 = math.tanh %12 : tensor<8xf32>
          %267 = vector.gather %alloc_35[%117, %c9] [%58], %46, %46 : memref<4x2xi1>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi1> into vector<4x2xi1>
          %268 = math.ctlz %4 : tensor<8xi32>
          %269 = arith.shrsi %c1625667180_i64, %extracted_38 : i64
          %270 = vector.broadcast %extracted_30 : f32 to vector<2x2xf32>
          %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %40, %226, %270 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
          %272 = math.exp %cst_4 : f16
          vector.print %20 : vector<4xi16>
          %273 = arith.muli %false, %false_29 : i1
          %274 = math.log10 %extracted_31 : f32
          %275 = vector.insertelement %139, %205[%254 : index] : vector<2xi64>
          %276 = index.sizeof
          %277 = tensor.empty() : tensor<2x2xi16>
          %278 = linalg.matmul ins(%transposed, %2 : tensor<2x3xi16>, tensor<3x2xi16>) outs(%277 : tensor<2x2xi16>) -> tensor<2x2xi16>
          %279 = memref.realloc %alloc_15 : memref<2xi16> to memref<3xi16>
          %280 = arith.cmpf ult, %cst_5, %76 : f16
          %281 = math.rsqrt %198 : tensor<4x2xf32>
          %282 = vector.broadcast %cst_5 : f16 to vector<3x2xf16>
          scf.yield
        }
        default {
          %266 = vector.multi_reduction <xor>, %181, %c-26608_i16 [0, 1] : vector<2x2xi16> to i16
          %267 = index.ceildivs %152, %c10
          %268 = arith.shrsi %c1112807906_i32, %c1112807906_i32 : i32
          %269 = index.sizeof
          %270 = vector.broadcast %extracted_30 : f32 to vector<3xf32>
          %271 = vector.broadcast %false : i1 to vector<3xi1>
          %272 = vector.maskedload %alloc_21[], %271, %270 : memref<f32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
          %expanded_51 = tensor.expand_shape %198 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
          %273 = bufferization.to_memref %56 : memref<8xi64>
          %274 = arith.remf %76, %cst_4 : f16
          %275 = math.round %12 : tensor<8xf32>
          %276 = bufferization.to_memref %splat_47 : memref<3x2xf16>
          memref.copy %alloc_18, %alloc : memref<4x2xf16> to memref<4x2xf16>
          %277 = vector.broadcast %cst : f16 to vector<f16>
          %278 = vector.transfer_write %277, %splat_44[%c11, %rank] : vector<f16>, tensor<4x2xf16>
          %279 = math.exp %76 : f16
          %280 = arith.maxf %28, %extracted_31 : f32
          memref.assume_alignment %220, 2 : memref<3x2xi1>
          %281 = arith.xori %c1625667180_i64, %extracted : i64
        }
        %splat_49 = tensor.splat %cst_5 : tensor<2xf16>
        %cst_50 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_50 : f16
      }
    scf.parallel (%arg2, %arg3) = (%254, %c10) to (%209, %rank) step (%c4, %c10) {
      %260 = vector.broadcast %c-30193_i16 : i16 to vector<2xi16>
      %dest_49, %accumulated_value_50 = vector.scan <maxui>, %244, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi16>, vector<2xi16>
      %261 = math.absf %cst_5 : f16
      %262 = vector.broadcast %c9465_i16 : i16 to vector<3xi16>
      %dest_51, %accumulated_value_52 = vector.scan <maxui>, %120, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi16>, vector<3xi16>
      %263 = arith.maxf %cst, %cst_5 : f16
      %264 = vector.broadcast %false_2 : i1 to vector<2x2xi1>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %158, %158, %264 : vector<1x2xi1>, vector<1x2xi1> into vector<2x2xi1>
      %266 = arith.minf %cst_4, %cst_3 : f16
      %267 = scf.while (%arg4 = %alloc_35) : (memref<4x2xi1>) -> memref<4x2xi1> {
        %277 = arith.xori %extracted_36, %extracted_36 : i64
        %278 = bufferization.clone %229 : memref<4x2x1xi32> to memref<4x2x1xi32>
        %279 = index.divu %97, %254
        vector.print %121 : vector<3x2xi1>
        %280 = arith.maxf %cst_0, %cst_3 : f16
        %cst_54 = arith.constant 1.000000e+00 : f32
        %cst_55 = arith.constant 0.000000e+00 : f32
        %281 = vector.transfer_read %198[%c10, %48], %cst_55 : tensor<4x2xf32>, vector<f32>
        %282 = arith.minf %cst_1, %extracted_31 : f32
        %283 = math.atan2 %extracted_31, %cst_54 : f32
        scf.condition(%false) %alloc_35 : memref<4x2xi1>
      } do {
      ^bb0(%arg4: memref<4x2xi1>):
        %277 = vector.broadcast %c4 : index to vector<2xindex>
        vector.scatter %alloc_17[%c6] [%277], %239, %239 : memref<8xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %278 = math.absf %134 : tensor<4x8xf32>
        %279 = math.absf %12 : tensor<8xf32>
        %280 = arith.minf %76, %cst_4 : f16
        %281 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
        %282 = affine.min affine_map<(d0) -> ((d0 floordiv 2 - 62) ceildiv 128 - (d0 floordiv 128 - (d0 - 128) - 1) ceildiv 128)>(%169)
        vector.print %203 : vector<2xi64>
        %283 = index.sizeof
        %284 = index.divu %103, %103
        %285 = math.round %cst_4 : f16
        %286 = math.atan2 %cst_3, %cst_0 : f16
        %287 = vector.multi_reduction <mul>, %232, %232 [] : vector<1xf32> to vector<1xf32>
        %288 = arith.minf %cst_0, %cst_5 : f16
        %cast_54 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
        %289 = math.absf %12 : tensor<8xf32>
        %290 = index.casts %245 : index to i32
        scf.yield %arg4 : memref<4x2xi1>
      }
      %268 = arith.ceildivsi %c1625667180_i64, %139 : i64
      %269 = math.ceil %cst_0 : f16
      %270 = vector.flat_transpose %177 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
      %271 = math.round %cst_5 : f16
      %alloc_53 = memref.alloc() : memref<2x3xi16>
      memref.tensor_store %transposed, %alloc_53 : memref<2x3xi16>
      %272 = tensor.empty() : tensor<2xi32>
      %273 = math.fpowi %13, %272 : tensor<2xf16>, tensor<2xi32>
      %274 = math.copysign %from_elements_41, %17 : tensor<4x2xf32>
      scf.if %false_29 {
        %277 = math.round %cst_4 : f16
        %278 = affine.load %alloc_15[%c5] : memref<2xi16>
        %279 = vector.matrix_multiply %239, %95 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xi1>, vector<8xi1>) -> vector<4xi1>
        %280 = index.divu %245, %arg2
        vector.print %151 : vector<8xf32>
        %281 = arith.maxsi %extracted_36, %extracted : i64
        %282 = vector.maskedload %alloc_13[%c7], %95, %178 : memref<8xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %283 = arith.maxf %cst, %76 : f16
      }
      %275 = vector.broadcast %extracted_31 : f32 to vector<2xf32>
      %276 = vector.multi_reduction <add>, %225, %275 [0] : vector<3x2xf32> to vector<2xf32>
      scf.yield
    }
    %259 = affine.vector_load %89[%c6] : memref<8xf16>, vector<2xf16>
    affine.vector_store %47, %101[%223] : memref<8xi16>, vector<4xi16>
    vector.print %20 : vector<4xi16>
    vector.print %31 : vector<i16>
    vector.print %40 : vector<3x2xf32>
    vector.print %41 : vector<3x2xf32>
    vector.print %46 : vector<4x2xi1>
    vector.print %47 : vector<4xi16>
    vector.print %57 : vector<4x2xi64>
    vector.print %58 : vector<4x2xi32>
    vector.print %59 : vector<4x2xi64>
    vector.print %92 : vector<1x2xi1>
    vector.print %95 : vector<8xi1>
    vector.print %106 : vector<8xf32>
    vector.print %107 : vector<8xf32>
    vector.print %120 : vector<3x2xi16>
    vector.print %121 : vector<3x2xi1>
    vector.print %122 : vector<3x2xi32>
    vector.print %123 : vector<3x2xi16>
    vector.print %150 : vector<8xf32>
    vector.print %151 : vector<8xf32>
    vector.print %158 : vector<1x2xi1>
    vector.print %177 : vector<8xi16>
    vector.print %178 : vector<8xi16>
    vector.print %179 : vector<8xi32>
    vector.print %180 : vector<8xi1>
    vector.print %181 : vector<2x2xi16>
    vector.print %193 : vector<4x2xf16>
    vector.print %203 : vector<2xi64>
    vector.print %204 : vector<2xi1>
    vector.print %205 : vector<2xi64>
    vector.print %225 : vector<3x2xf32>
    vector.print %226 : vector<3x2xf32>
    vector.print %232 : vector<1xf32>
    vector.print %239 : vector<2xi1>
    vector.print %244 : vector<3x2xi16>
    vector.print %259 : vector<2xf16>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c1625667180_i64 : i64
    vector.print %false : i1
    vector.print %c-26608_i16 : i16
    vector.print %c1747437374_i64 : i64
    vector.print %cst_1 : f32
    vector.print %false_2 : i1
    vector.print %c9465_i16 : i16
    vector.print %c1300628449_i64 : i64
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %c-19705_i16 : i16
    vector.print %c-30193_i16 : i16
    vector.print %c1112807906_i32 : i32
    vector.print %28 : f32
    vector.print %76 : f16
    vector.print %extracted : i64
    vector.print %139 : i64
    vector.print %false_29 : i1
    vector.print %extracted_30 : f32
    vector.print %156 : i1
    vector.print %extracted_31 : f32
    vector.print %extracted_36 : i64
    vector.print %extracted_38 : i64
    return %10 : tensor<4x2xi64>
  }
}
