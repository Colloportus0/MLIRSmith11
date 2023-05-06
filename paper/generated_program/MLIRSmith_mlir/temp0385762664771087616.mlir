module {
  func.func @func1(%arg0: tensor<14x10xi64>, %arg1: f32, %arg2: index) {
    %false = arith.constant false
    %c25621_i16 = arith.constant 25621 : i16
    %c-32520_i16 = arith.constant -32520 : i16
    %false_0 = arith.constant false
    %false_1 = arith.constant false
    %cst = arith.constant 1.81416704E+9 : f32
    %cst_2 = arith.constant 1.053600e+04 : f16
    %cst_3 = arith.constant 0x4E36B8DF : f32
    %c2019218376_i32 = arith.constant 2019218376 : i32
    %cst_4 = arith.constant 0x4E21705C : f32
    %c1702488874_i32 = arith.constant 1702488874 : i32
    %c-14197_i16 = arith.constant -14197 : i16
    %cst_5 = arith.constant 4.745600e+04 : f16
    %false_6 = arith.constant false
    %c1637224188_i64 = arith.constant 1637224188 : i64
    %c2080863597_i64 = arith.constant 2080863597 : i64
    %0 = tensor.empty() : tensor<14x6xi1>
    %1 = tensor.empty() : tensor<14x6xi32>
    %2 = tensor.empty() : tensor<16x14xi1>
    %3 = tensor.empty() : tensor<16x14xi16>
    %4 = tensor.empty() : tensor<14x6xi32>
    %5 = tensor.empty() : tensor<16x14xf32>
    %6 = tensor.empty() : tensor<10x10xi16>
    %7 = tensor.empty() : tensor<14x10xi64>
    %8 = tensor.empty() : tensor<16x14xi32>
    %9 = tensor.empty() : tensor<14x6xi32>
    %10 = tensor.empty() : tensor<14x10xi1>
    %11 = tensor.empty() : tensor<14x10xi1>
    %12 = tensor.empty() : tensor<14x10xi16>
    %13 = tensor.empty() : tensor<16x14xf16>
    %14 = tensor.empty() : tensor<14x10xi16>
    %15 = tensor.empty() : tensor<14x6xi1>
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
    %alloc = memref.alloc() : memref<16x14xi32>
    %alloc_7 = memref.alloc() : memref<10x10xi32>
    %alloc_8 = memref.alloc() : memref<10x10xf32>
    %alloc_9 = memref.alloc() : memref<14x10xf16>
    %alloc_10 = memref.alloc() : memref<16x14xi64>
    %alloc_11 = memref.alloc() : memref<10x10xf16>
    %alloc_12 = memref.alloc() : memref<10x10xi1>
    %alloc_13 = memref.alloc() : memref<14x6xf32>
    %alloc_14 = memref.alloc() : memref<14x10xi32>
    %alloc_15 = memref.alloc() : memref<14x6xf32>
    %alloc_16 = memref.alloc() : memref<14x6xf16>
    %alloc_17 = memref.alloc() : memref<10x10xi1>
    %alloc_18 = memref.alloc() : memref<14x10xf32>
    %alloc_19 = memref.alloc() : memref<14x6xi16>
    %alloc_20 = memref.alloc() : memref<16x14xf16>
    %alloc_21 = memref.alloc() : memref<16x14xi64>
    %16 = tensor.empty() : tensor<14x6xi32>
    %17 = linalg.copy ins(%1 : tensor<14x6xi32>) outs(%16 : tensor<14x6xi32>) -> tensor<14x6xi32>
    %18 = tensor.empty() : tensor<14x16xf32>
    %transposed = linalg.transpose ins(%5 : tensor<16x14xf32>) outs(%18 : tensor<14x16xf32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<6xf32>
    %reduced = linalg.reduce ins(%alloc_15 : memref<14x6xf32>) outs(%19 : tensor<6xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %267 = math.absi %6 : tensor<10x10xi16>
        %268 = vector.splat %c1637224188_i64 : vector<14x6xi64>
        %269 = tensor.empty() : tensor<6x6xi1>
        %270 = tensor.empty() : tensor<14x6xi1>
        %271 = linalg.matmul ins(%0, %269 : tensor<14x6xi1>, tensor<6x6xi1>) outs(%270 : tensor<14x6xi1>) -> tensor<14x6xi1>
        %272 = vector.splat %cst_2 : vector<10x10xf16>
        %273 = arith.divsi %c1702488874_i32, %c1702488874_i32 : i32
        %274 = index.divu %c0, %c15
        %275 = index.maxu %c7, %c9
        memref.alloca_scope  {
          %inserted_52 = tensor.insert %c1702488874_i32 into %8[%c12, %c11] : tensor<16x14xi32>
          %from_elements_53 = tensor.from_elements %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64 : tensor<10x10xi64>
          %276 = math.log1p %cst_3 : f32
          %277 = vector.broadcast %false_6 : i1 to vector<16xi1>
          %278 = vector.matrix_multiply %277, %277 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
          %279 = arith.addf %cst_2, %cst_5 : f16
          %280 = math.fpowi %init, %c1702488874_i32 : f32, i32
          %281 = vector.broadcast %c12 : index to vector<10xindex>
          %282 = vector.broadcast %false : i1 to vector<10xi1>
          %283 = vector.broadcast %c2019218376_i32 : i32 to vector<10xi32>
          vector.scatter %alloc_7[%c9, %c9] [%281], %282, %283 : memref<10x10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
          %284 = vector.broadcast %false_0 : i1 to vector<16x6xi1>
          %dest_54, %accumulated_value_55 = vector.scan <xor>, %284, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<16x6xi1>, vector<16xi1>
          %285 = math.log10 %13 : tensor<16x14xf16>
          %286 = math.exp %19 : tensor<6xf32>
          %287 = vector.extract %277[2] : vector<16xi1>
          memref.assume_alignment %alloc, 16 : memref<16x14xi32>
          %288 = arith.mulf %in, %init : f32
          %289 = math.expm1 %13 : tensor<16x14xf16>
          %cast_56 = tensor.cast %0 : tensor<14x6xi1> to tensor<?x?xi1>
          %290 = math.exp2 %19 : tensor<6xf32>
          %291 = arith.divsi %c1702488874_i32, %c1702488874_i32 : i32
          %292 = arith.muli %c25621_i16, %c-14197_i16 : i16
          %293 = tensor.empty(%c10, %c14) : tensor<?x?xi1>
          %294 = math.ipowi %9, %17 : tensor<14x6xi32>
          %295 = math.absf %13 : tensor<16x14xf16>
          %296 = arith.remf %cst_3, %cst : f32
          %297 = math.tanh %cst_2 : f16
          %298 = math.absf %18 : tensor<14x16xf32>
          bufferization.dealloc_tensor %15 : tensor<14x6xi1>
          %299 = vector.broadcast %c14 : index to vector<10xindex>
          %300 = vector.broadcast %false_1 : i1 to vector<10xi1>
          %301 = vector.broadcast %c2080863597_i64 : i64 to vector<10xi64>
          vector.scatter %alloc_21[%c0, %c7] [%299], %300, %301 : memref<16x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %302 = arith.mulf %cst_5, %cst_2 : f16
          %303 = index.floordivs %c5, %c4
          %304 = arith.remf %in, %init : f32
          %305 = arith.divsi %c1702488874_i32, %c2019218376_i32 : i32
          %from_elements_57 = tensor.from_elements %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5 : tensor<14x10xf16>
          %true = index.bool.constant true
        }
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %20 = scf.parallel (%arg3, %arg4) = (%c9, %c3) to (%c1, %c8) step (%c8, %c9) init (%alloc_18) -> memref<14x10xf32> {
      %267 = vector.broadcast %cst_2 : f16 to vector<14xf16>
      %268 = vector.broadcast %false_6 : i1 to vector<14xi1>
      %269 = vector.maskedload %alloc_20[%c5, %c9], %268, %267 : memref<16x14xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      %270 = arith.remui %false_6, %false_0 : i1
      %271 = bufferization.to_memref %17 : memref<14x6xi32>
      %272 = vector.broadcast %c1637224188_i64 : i64 to vector<14x10x16xi64>
      %273 = vector.broadcast %c1637224188_i64 : i64 to vector<10x16xi64>
      %dest_51, %accumulated_value_52 = vector.scan <maxui>, %272, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<14x10x16xi64>, vector<10x16xi64>
      %274 = vector.extract_strided_slice %267 {offsets = [4], sizes = [9], strides = [1]} : vector<14xf16> to vector<9xf16>
      %275 = vector.broadcast %c-32520_i16 : i16 to vector<10x16xi16>
      %276 = vector.broadcast %c25621_i16 : i16 to vector<16xi16>
      %dest_53, %accumulated_value_54 = vector.scan <add>, %275, %276 {inclusive = false, reduction_dim = 0 : i64} : vector<10x16xi16>, vector<16xi16>
      %277 = index.divu %c15, %c3
      %extracted_55 = tensor.extract %18[%c11, %c5] : tensor<14x16xf32>
      %278 = index.castu %c25621_i16 : i16 to index
      %279 = bufferization.clone %alloc_7 : memref<10x10xi32> to memref<10x10xi32>
      %280 = math.floor %cst_4 : f32
      %281 = affine.load %alloc_10[%c1, %c6] : memref<16x14xi64>
      %282 = math.rsqrt %cst_3 : f32
      %283 = vector.shuffle %269, %274 [0, 1, 3, 4, 8, 10, 11, 14, 16, 21] : vector<14xf16>, vector<9xf16>
      %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d3, (d0 + 1) mod 128)>(%c13, %c15, %c0, %arg4)
      %285 = scf.execute_region -> vector<10x10xi64> {
        %286 = tensor.empty() : tensor<16x10xi16>
        %287 = linalg.matmul ins(%3, %14 : tensor<16x14xi16>, tensor<14x10xi16>) outs(%286 : tensor<16x10xi16>) -> tensor<16x10xi16>
        %288 = arith.xori %false_6, %false : i1
        %289 = arith.shli %false_0, %false_1 : i1
        %splat_57 = tensor.splat %c1702488874_i32 : tensor<14x6xi32>
        %290 = index.divs %c3, %278
        %291 = index.floordivs %c12, %c4
        %292 = vector.bitcast %267 : vector<14xf16> to vector<14xf16>
        %293 = math.exp %cst_2 : f16
        %294 = math.round %transposed : tensor<14x16xf32>
        %alloc_58 = memref.alloc() : memref<10xi16>
        %295 = memref.realloc %alloc_58 : memref<10xi16> to memref<16xi16>
        %296 = math.rsqrt %5 : tensor<16x14xf32>
        %297 = bufferization.to_memref %15 : memref<14x6xi1>
        %298 = vector.transpose %274, [0] : vector<9xf16> to vector<9xf16>
        %collapsed_59 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x6xi32> into tensor<84xi32>
        %299 = affine.load %alloc_9[%c12, %c6] : memref<14x10xf16>
        %300 = vector.broadcast %c10 : index to vector<10xindex>
        %301 = vector.broadcast %false : i1 to vector<10xi1>
        %302 = vector.broadcast %c2019218376_i32 : i32 to vector<10xi32>
        vector.scatter %alloc_7[%c1, %c2] [%300], %301, %302 : memref<10x10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %303 = vector.broadcast %281 : i64 to vector<10x10xi64>
        scf.yield %303 : vector<10x10xi64>
      }
      %alloc_56 = memref.alloc() : memref<14x10xf32>
      scf.reduce(%alloc_56)  : memref<14x10xf32> {
      ^bb0(%arg5: memref<14x10xf32>, %arg6: memref<14x10xf32>):
        %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c11, %c0, %c3, %c1)
        %287 = vector.load %alloc_19[%c13, %c3] : memref<14x6xi16>, vector<16x14xi16>
        %288 = math.atan %13 : tensor<16x14xf16>
        %289 = index.divu %c8, %arg4
        %290 = vector.extract_strided_slice %268 {offsets = [5], sizes = [9], strides = [1]} : vector<14xi1> to vector<9xi1>
        %291 = arith.xori %c25621_i16, %c25621_i16 : i16
        %alloca = memref.alloca() : memref<14x6xf32>
        bufferization.dealloc_tensor %9 : tensor<14x6xi32>
        %alloc_57 = memref.alloc() : memref<14x10xf32>
        scf.reduce.return %alloc_57 : memref<14x10xf32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_19[%c10, %c2] : memref<14x6xi16>, vector<10xi16>
    affine.vector_store %21, %alloc_19[%c2, %c6] : memref<14x6xi16>, vector<10xi16>
    %22 = tensor.empty() : tensor<6xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%reduced, %22 : tensor<6xf32>, tensor<6xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = arith.shrsi %false_6, %false : i1
    %26 = index.divs %c2, %c6
    %27 = index.floordivs %26, %26
    %28 = bufferization.clone %alloc : memref<16x14xi32> to memref<16x14xi32>
    %from_elements = tensor.from_elements %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32 : tensor<14x6xi32>
    %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<14x10xi1> into tensor<14x10x1xi1>
    %29 = math.absi %2 : tensor<16x14xi1>
    %30 = index.sizeof
    %31 = vector.insert %c25621_i16, %21 [4] : i16 into vector<10xi16>
    %32 = math.roundeven %24 : tensor<f32>
    %33 = math.fpowi %cst_4, %c1702488874_i32 : f32, i32
    %34 = affine.if affine_set<(d0, d1, d2, d3) : (d1 - 16 >= 0, (d2 * 4) floordiv 128 + d2 == 0)>(%c3, %c6, %c8, %c1) -> f32 {
      %267 = vector.shuffle %21, %21 [0, 4, 7, 9, 10, 11, 12, 13, 17, 18, 19] : vector<10xi16>, vector<10xi16>
      %268 = memref.atomic_rmw assign %cst_2, %alloc_16[%c3, %c2] : (f16, memref<14x6xf16>) -> f16
      %alloc_51 = memref.alloc() : memref<14x6xi32>
      memref.tensor_store %9, %alloc_51 : memref<14x6xi32>
      %269 = tensor.empty() : tensor<i32>
      %270 = math.fpowi %24, %269 : tensor<f32>, tensor<i32>
      %271 = vector.create_mask %c0, %c9 : vector<14x6xi1>
      %272 = arith.floordivsi %c2080863597_i64, %c2080863597_i64 : i64
      %273 = math.tanh %24 : tensor<f32>
      %274 = arith.remsi %c2019218376_i32, %c1702488874_i32 : i32
      affine.yield %cst_4 : f32
    } else {
      %267 = math.rsqrt %19 : tensor<6xf32>
      %268 = index.divu %c10, %c11
      %269 = arith.floordivsi %c25621_i16, %c-32520_i16 : i16
      %270 = math.absi %3 : tensor<16x14xi16>
      %271 = tensor.empty() : tensor<10x10xi1>
      %272 = tensor.empty() : tensor<14x10xi1>
      %273 = linalg.matmul ins(%10, %271 : tensor<14x10xi1>, tensor<10x10xi1>) outs(%272 : tensor<14x10xi1>) -> tensor<14x10xi1>
      %274 = arith.ceildivsi %c-14197_i16, %c-14197_i16 : i16
      %275 = math.rsqrt %18 : tensor<14x16xf32>
      %276 = index.divu %c8, %c1
      affine.yield %cst_4 : f32
    }
    %35 = math.absi %8 : tensor<16x14xi32>
    %36 = vector.extract %21[3] : vector<10xi16>
    %37 = bufferization.clone %alloc_12 : memref<10x10xi1> to memref<10x10xi1>
    %38 = vector.reduction <and>, %21 : vector<10xi16> into i16
    %39 = math.exp %23 : tensor<f32>
    %40 = math.absf %transposed : tensor<14x16xf32>
    %41 = vector.load %alloc_16[%c10, %c3] : memref<14x6xf16>, vector<16x14xf16>
    %42 = vector.broadcast %cst_2 : f16 to vector<16xf16>
    %43 = vector.multi_reduction <add>, %41, %42 [1] : vector<16x14xf16> to vector<16xf16>
    %44 = vector.broadcast %cst : f32 to vector<16xf32>
    %45 = vector.broadcast %false_0 : i1 to vector<16xi1>
    %46 = vector.maskedload %alloc_15[%c5, %c2], %45, %44 : memref<14x6xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
    %47 = math.ctlz %9 : tensor<14x6xi32>
    %48 = vector.broadcast %cst_5 : f16 to vector<6xf16>
    vector.transfer_write %48, %alloc_16[%30, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf16>, memref<14x6xf16>
    %dest, %accumulated_value = vector.scan <maxf>, %41, %42 {inclusive = false, reduction_dim = 1 : i64} : vector<16x14xf16>, vector<16xf16>
    %49 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %45, %45, %false : vector<16xi1>, vector<16xi1> into i1
    %50 = arith.shrui %c25621_i16, %c-14197_i16 : i16
    %from_elements_22 = tensor.from_elements %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32 : tensor<14x6xi32>
    %51 = math.atan %13 : tensor<16x14xf16>
    %52 = math.copysign %5, %5 : tensor<16x14xf32>
    %53 = math.roundeven %13 : tensor<16x14xf16>
    %54 = index.casts %c-14197_i16 : i16 to index
    %55 = math.ctpop %8 : tensor<16x14xi32>
    %from_elements_23 = tensor.from_elements %false_0, %false_1, %false_6, %false_6, %false_6, %false_1, %false, %false_1, %false_0, %false_1, %false, %false_1, %false, %false_1, %false_6, %false_1, %false_0, %false_6, %false_0, %false_6, %false_6, %false_1, %false_0, %false_6, %false_6, %false_0, %false_1, %false_6, %false_1, %false_0, %false_0, %false_1, %false, %false_6, %false, %false_6, %false, %false_6, %false_1, %false_6, %false, %false_1, %false, %false_0, %false_6, %false_0, %false_0, %false_6, %false_0, %false, %false, %false, %false, %false_0, %false_1, %false_0, %false_1, %false_0, %false, %false_0, %false, %false, %false_1, %false_6, %false_0, %false, %false_1, %false_1, %false, %false_1, %false, %false, %false_1, %false_0, %false_6, %false_1, %false_0, %false_0, %false_0, %false_1, %false, %false_6, %false_1, %false_0, %false_0, %false, %false_1, %false, %false_1, %false_6, %false_6, %false_0, %false_6, %false_6, %false_6, %false_1, %false_6, %false_0, %false_6, %false, %false_1, %false_0, %false_1, %false_0, %false_1, %false_1, %false_0, %false_1, %false_1, %false, %false_6, %false, %false, %false_0, %false_0, %false_6, %false_1, %false, %false_1, %false_0, %false_1, %false_1, %false_6, %false, %false_6, %false_6, %false_6, %false_0, %false_1, %false_1, %false, %false_1, %false_1, %false_6, %false_0, %false, %false_6, %false_6, %false, %false_0 : tensor<14x10xi1>
    %56 = arith.cmpf false, %cst_3, %cst : f32
    %57 = math.expm1 %5 : tensor<16x14xf32>
    %58 = math.copysign %cst, %cst_3 : f32
    %59 = index.ceildivu %c11, %c10
    %60 = vector.flat_transpose %45 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
    %61 = vector.broadcast %cst_3 : f32 to vector<16x16xf32>
    %62 = vector.outerproduct %46, %46, %61 {kind = #vector.kind<add>} : vector<16xf32>, vector<16xf32>
    %63 = tensor.empty() : tensor<16x10xi16>
    %64 = linalg.matmul ins(%3, %12 : tensor<16x14xi16>, tensor<14x10xi16>) outs(%63 : tensor<16x10xi16>) -> tensor<16x10xi16>
    %expanded_24 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<16x14xi1> into tensor<16x14x1xi1>
    %65 = math.absf %13 : tensor<16x14xf16>
    bufferization.dealloc_tensor %14 : tensor<14x10xi16>
    %66 = vector.splat %c1637224188_i64 : vector<10x10xi64>
    %67 = math.absf %transposed : tensor<14x16xf32>
    %68 = vector.transpose %41, [1, 0] : vector<16x14xf16> to vector<14x16xf16>
    %69 = memref.atomic_rmw addf %cst_5, %alloc_9[%c9, %c8] : (f16, memref<14x10xf16>) -> f16
    %70 = arith.floordivsi %c25621_i16, %c-32520_i16 : i16
    %71 = arith.mulf %cst, %cst : f32
    %72 = math.exp %24 : tensor<f32>
    %extracted = tensor.extract %5[%c7, %c0] : tensor<16x14xf32>
    %73 = arith.divsi %c1637224188_i64, %c2080863597_i64 : i64
    %74 = arith.andi %c2080863597_i64, %c1637224188_i64 : i64
    %75 = affine.load %alloc_15[%c2, %c13] : memref<14x6xf32>
    %76 = arith.remf %75, %cst : f32
    %false_25 = index.bool.constant false
    %77 = vector.broadcast %c3 : index to vector<6xindex>
    %78 = vector.broadcast %false_0 : i1 to vector<6xi1>
    vector.scatter %alloc_11[%c3, %c8] [%77], %78, %48 : memref<10x10xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
    %79 = index.ceildivu %c4, %c10
    %80 = affine.load %alloc_16[%c1, %c0] : memref<14x6xf16>
    %81 = vector.load %alloc_20[%c11, %c12] : memref<16x14xf16>, vector<10x10xf16>
    %82 = math.exp %cst : f32
    %83 = math.log1p %22 : tensor<6xf32>
    %84 = index.castu %c1702488874_i32 : i32 to index
    %85 = math.roundeven %transposed : tensor<14x16xf32>
    %86 = arith.remf %extracted, %cst : f32
    %87 = math.rsqrt %23 : tensor<f32>
    %88 = bufferization.to_memref %10 : memref<14x10xi1>
    %89 = math.expm1 %13 : tensor<16x14xf16>
    %inserted = tensor.insert %false_0 into %2[%c2, %c6] : tensor<16x14xi1>
    %90 = math.log1p %22 : tensor<6xf32>
    scf.index_switch %c5 
    case 1 {
      %alloc_51 = memref.alloc() : memref<14x10xf16>
      memref.copy %alloc_9, %alloc_51 : memref<14x10xf16> to memref<14x10xf16>
      %267 = vector.broadcast %false_25 : i1 to vector<16x16xi1>
      %268 = vector.outerproduct %45, %45, %267 {kind = #vector.kind<and>} : vector<16xi1>, vector<16xi1>
      %269 = index.floordivs %c11, %26
      %270 = vector.bitcast %41 : vector<16x14xf16> to vector<16x14xf16>
      %inserted_52 = tensor.insert %c-14197_i16 into %12[%c3, %c2] : tensor<14x10xi16>
      %271 = arith.xori %c25621_i16, %c25621_i16 : i16
      %272 = math.expm1 %23 : tensor<f32>
      %273 = math.tanh %23 : tensor<f32>
      %274 = math.ctlz %4 : tensor<14x6xi32>
      %275 = arith.remui %c-14197_i16, %c-14197_i16 : i16
      affine.store %false_25, %88[%c7, %c7] : memref<14x10xi1>
      %276 = tensor.empty() : tensor<14x10xi16>
      %277 = linalg.matmul ins(%12, %6 : tensor<14x10xi16>, tensor<10x10xi16>) outs(%276 : tensor<14x10xi16>) -> tensor<14x10xi16>
      %278 = arith.shli %c1637224188_i64, %c1637224188_i64 : i64
      %279 = vector.broadcast %c8 : index to vector<6xindex>
      %280 = vector.broadcast %false_25 : i1 to vector<6xi1>
      vector.scatter %alloc_11[%c8, %c6] [%279], %280, %48 : memref<10x10xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
      %281 = math.log1p %5 : tensor<16x14xf32>
      %282 = arith.divf %cst_3, %cst_4 : f32
      scf.yield
    }
    case 2 {
      %267 = math.exp %80 : f16
      %generated_51 = tensor.generate %26, %c5 {
      ^bb0(%arg3: index, %arg4: index):
        %281 = vector.extract_strided_slice %21 {offsets = [4], sizes = [2], strides = [1]} : vector<10xi16> to vector<2xi16>
        %splat_54 = tensor.splat %false_0 : tensor<14x10xi1>
        %282 = math.log10 %reduced : tensor<6xf32>
        %283 = arith.divsi %c2019218376_i32, %c2019218376_i32 : i32
        tensor.yield %c1702488874_i32 : i32
      } : tensor<?x?xi32>
      affine.for %arg3 = 0 to 107 {
      }
      %268 = affine.if affine_set<(d0, d1, d2, d3) : (0 == 0, -(d3 - 192) == 0)>(%c15, %c9, %c11, %c11) -> memref<14x6xi32> {
        %281 = index.ceildivu %c0, %59
        %282 = vector.create_mask %59, %281 : vector<16x14xi1>
        %283 = math.ctlz %1 : tensor<14x6xi32>
        %284 = affine.load %alloc_10[%c7, %c9] : memref<16x14xi64>
        %285 = math.ctlz %expanded_24 : tensor<16x14x1xi1>
        %286 = index.add %c6, %c3
        %287 = arith.shli %c25621_i16, %c-14197_i16 : i16
        %288 = memref.atomic_rmw addf %cst_2, %alloc_11[%c5, %c1] : (f16, memref<10x10xf16>) -> f16
        %alloc_54 = memref.alloc() : memref<14x6xi32>
        affine.yield %alloc_54 : memref<14x6xi32>
      } else {
        %281 = arith.cmpf olt, %cst_5, %cst_2 : f16
        memref.assume_alignment %alloc_18, 16 : memref<14x10xf32>
        %from_elements_54 = tensor.from_elements %c-32520_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16 : tensor<10x10xi16>
        %282 = math.tanh %13 : tensor<16x14xf16>
        %283 = math.ctpop %4 : tensor<14x6xi32>
        %284 = index.divu %c5, %c8
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d3 ceildiv 4 + d2 + 1) - d1 floordiv 16, -(d3 ceildiv 4 + d2 + 1) - d1 floordiv 16 - 32)>(%84, %c0, %284, %27)
        %286 = arith.andi %c25621_i16, %c-14197_i16 : i16
        %alloc_55 = memref.alloc() : memref<14x6xi32>
        affine.yield %alloc_55 : memref<14x6xi32>
      }
      %269 = arith.divf %80, %cst_2 : f16
      %270 = math.round %reduced : tensor<6xf32>
      %false_52 = index.bool.constant false
      %alloc_53 = memref.alloc() : memref<6xi32>
      %271 = memref.realloc %alloc_53 : memref<6xi32> to memref<10xi32>
      %272 = bufferization.to_tensor %alloc_15 : memref<14x6xf32>
      %273 = math.fpowi %75, %c2019218376_i32 : f32, i32
      %274 = index.castu %c4 : index to i32
      %275 = math.ctpop %c25621_i16 : i16
      %276 = vector.splat %cst_3 : vector<16x14xf32>
      %277 = tensor.empty() : tensor<16x6xf32>
      %278 = linalg.matmul ins(%5, %272 : tensor<16x14xf32>, tensor<14x6xf32>) outs(%277 : tensor<16x6xf32>) -> tensor<16x6xf32>
      %279 = tensor.empty() : tensor<14x10xi16>
      %280 = scf.if %false_1 -> (i32) {
        %281 = vector.insert %false_25, %60 [1] : i1 into vector<16xi1>
        %282 = affine.load %alloc_20[%c3, %c9] : memref<16x14xf16>
        %283 = affine.min affine_map<(d0) -> (0, 0, 0)>(%c12)
        affine.store %75, %alloc_15[%c4, %c11] : memref<14x6xf32>
        %284 = vector.broadcast %282 : f16 to vector<14xf16>
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %41, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xf16>, vector<14xf16>
        %285 = index.maxs %c8, %c8
        %286 = math.expm1 %13 : tensor<16x14xf16>
        %287 = math.fpowi %80, %c1702488874_i32 : f16, i32
        scf.yield %c2019218376_i32 : i32
      } else {
        %281 = math.expm1 %cst_2 : f16
        %282 = math.ceil %75 : f32
        %283 = math.absf %13 : tensor<16x14xf16>
        %284 = vector.insert %cst_2, %42 [1] : f16 into vector<16xf16>
        %285 = math.fpowi %272, %4 : tensor<14x6xf32>, tensor<14x6xi32>
        %286 = math.cos %75 : f32
        %287 = affine.load %alloc_9[%c5, %c6] : memref<14x10xf16>
        %cast_54 = tensor.cast %3 : tensor<16x14xi16> to tensor<?x?xi16>
        scf.yield %c1702488874_i32 : i32
      }
      scf.yield
    }
    case 3 {
      %cast_51 = tensor.cast %3 : tensor<16x14xi16> to tensor<?x?xi16>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %48, %48, %cst_2 : vector<6xf16>, vector<6xf16> into f16
      %268 = math.log %extracted : f32
      %269 = bufferization.clone %alloc_13 : memref<14x6xf32> to memref<14x6xf32>
      %270 = index.sub %79, %84
      %generated_52 = tensor.generate %c8 {
      ^bb0(%arg3: index, %arg4: index):
        %278 = index.sub %c12, %79
        %279 = index.maxs %79, %26
        %280 = arith.remf %cst_4, %75 : f32
        %281 = vector.broadcast %80 : f16 to vector<6x6xf16>
        %282 = vector.outerproduct %48, %48, %281 {kind = #vector.kind<mul>} : vector<6xf16>, vector<6xf16>
        tensor.yield %c25621_i16 : i16
      } : tensor<?x10xi16>
      scf.if %false_25 {
        %278 = math.tanh %cst_4 : f32
        %279 = arith.remui %false_6, %false_25 : i1
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, 0, -d1 + 2, -d1)>(%c7, %c8, %c14, %c3)
        %281 = arith.remui %c1702488874_i32, %c2019218376_i32 : i32
        %282 = arith.divsi %c2080863597_i64, %c2080863597_i64 : i64
        %283 = arith.muli %c1702488874_i32, %c2019218376_i32 : i32
        %collapsed_55 = tensor.collapse_shape %4 [[0, 1]] : tensor<14x6xi32> into tensor<84xi32>
        affine.store %false_6, %alloc_17[%c14, %c10] : memref<10x10xi1>
      } else {
        %278 = math.exp2 %reduced : tensor<6xf32>
        %279 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + 2) * 64 - 2)>(%c4, %c4, %27)
        %280 = index.castu %c0 : index to i32
        %281 = math.atan %23 : tensor<f32>
        %282 = memref.load %alloc_13[%c5, %c2] : memref<14x6xf32>
        memref.store %cst, %alloc_18[%c9, %c2] : memref<14x10xf32>
        %collapsed_55 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<14x6xi32> into tensor<84xi32>
        memref.assume_alignment %alloc_18, 16 : memref<14x10xf32>
      }
      %271 = math.roundeven %13 : tensor<16x14xf16>
      %272 = tensor.empty(%c2) : tensor<?x14xf16>
      %273 = math.absi %17 : tensor<14x6xi32>
      %inserted_53 = tensor.insert %c2019218376_i32 into %9[%c11, %c4] : tensor<14x6xi32>
      %inserted_54 = tensor.insert %cst_4 into %5[%c9, %c5] : tensor<16x14xf32>
      %274 = arith.cmpi sle, %c-32520_i16, %c-32520_i16 : i16
      %alloca = memref.alloca() : memref<14x10xi1>
      %275 = vector.broadcast %cst_3 : f32 to vector<16x16xf32>
      %276 = vector.outerproduct %46, %46, %275 {kind = #vector.kind<maxf>} : vector<16xf32>, vector<16xf32>
      %277 = math.tanh %cst_4 : f32
      scf.yield
    }
    default {
      %267 = arith.negf %cst : f32
      bufferization.dealloc_tensor %0 : tensor<14x6xi1>
      %268 = arith.remui %c-14197_i16, %c-32520_i16 : i16
      %269 = affine.load %alloc_14[%c1, %c8] : memref<14x10xi32>
      %270 = math.ipowi %16, %16 : tensor<14x6xi32>
      %generated_51 = tensor.generate %c1, %27 {
      ^bb0(%arg3: index, %arg4: index):
        %280 = math.absi %4 : tensor<14x6xi32>
        %alloc_55 = memref.alloc() : memref<10x6xi64>
        %281 = tensor.empty() : tensor<14x6xi64>
        %282 = linalg.matmul ins(%7, %alloc_55 : tensor<14x10xi64>, memref<10x6xi64>) outs(%281 : tensor<14x6xi64>) -> tensor<14x6xi64>
        %283 = index.sub %30, %c4
        %284 = vector.broadcast %false_25 : i1 to vector<16x16xi1>
        %285 = vector.outerproduct %60, %45, %284 {kind = #vector.kind<minui>} : vector<16xi1>, vector<16xi1>
        tensor.yield %c-14197_i16 : i16
      } : tensor<?x?xi16>
      %271 = math.ctpop %c-14197_i16 : i16
      %272 = arith.mulf %cst_4, %extracted : f32
      %273 = math.log2 %80 : f16
      %274 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      %dest_52, %accumulated_value_53 = vector.scan <mul>, %81, %274 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
      %275 = arith.shrui %false_25, %false_0 : i1
      %inserted_54 = tensor.insert %269 into %8[%c11, %c3] : tensor<16x14xi32>
      %276 = math.tanh %24 : tensor<f32>
      %277 = index.ceildivu %c8, %c3
      vector.print %60 : vector<16xi1>
      %278 = tensor.empty() : tensor<6xi32>
      %279 = math.fpowi %19, %278 : tensor<6xf32>, tensor<6xi32>
    }
    %91 = vector.broadcast %cst_2 : f16 to vector<10xf16>
    %92 = vector.insert %91, %81 [3] : vector<10xf16> into vector<10x10xf16>
    %93 = arith.andi %false, %false_1 : i1
    %94 = vector.insertelement %false_25, %60[%26 : index] : vector<16xi1>
    %95 = math.expm1 %cst_4 : f32
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<14x6xi32> into tensor<84xi32>
    %96 = arith.remui %c2019218376_i32, %c1702488874_i32 : i32
    %97 = arith.maxf %cst_3, %75 : f32
    %alloc_26 = memref.alloc() : memref<16x14xf16>
    %98 = arith.remf %cst_5, %cst_2 : f16
    %99 = math.ipowi %2, %2 : tensor<16x14xi1>
    %100 = arith.muli %false, %false_1 : i1
    %101 = index.casts %false_1 : i1 to index
    %102 = arith.muli %c-32520_i16, %c-14197_i16 : i16
    %103 = arith.ori %false, %false : i1
    %104 = math.atan %5 : tensor<16x14xf32>
    %expanded_27 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<16x14xi16> into tensor<16x14x1xi16>
    %105 = math.ctlz %14 : tensor<14x10xi16>
    %106 = vector.create_mask %c6, %30 : vector<16x14xi1>
    memref.store %80, %alloc_11[%c8, %c3] : memref<10x10xf16>
    %107 = vector.broadcast %c2019218376_i32 : i32 to vector<10xi32>
    %108 = vector.transfer_write %107, %4[%c5, %84] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi32>, tensor<14x6xi32>
    %109 = memref.atomic_rmw addi %c2019218376_i32, %28[%c9, %c12] : (i32, memref<16x14xi32>) -> i32
    %110 = math.atan2 %13, %13 : tensor<16x14xf16>
    %111 = arith.addi %c1702488874_i32, %c2019218376_i32 : i32
    %112 = arith.xori %c2080863597_i64, %c2080863597_i64 : i64
    %113 = arith.remui %c25621_i16, %c-14197_i16 : i16
    %splat = tensor.splat %75 : tensor<14x6xf32>
    %114 = math.rsqrt %23 : tensor<f32>
    %115 = arith.shrui %false_25, %false_25 : i1
    %116 = math.log10 %13 : tensor<16x14xf16>
    %117 = math.cos %5 : tensor<16x14xf32>
    %118 = bufferization.to_tensor %alloc_14 : memref<14x10xi32>
    %119 = arith.andi %false_6, %false_1 : i1
    %120 = vector.transpose %91, [0] : vector<10xf16> to vector<10xf16>
    %121 = index.sizeof
    %extracted_28 = tensor.extract %3[%c4, %c3] : tensor<16x14xi16>
    %122 = index.maxu %c10, %c6
    %123 = vector.insert %80, %91 [9] : f16 into vector<10xf16>
    %124 = index.ceildivu %c8, %27
    %125 = vector.splat %121 : vector<14x10xindex>
    %126 = affine.load %alloc_15[%c11, %c10] : memref<14x6xf32>
    %generated = tensor.generate %54, %c5 {
    ^bb0(%arg3: index, %arg4: index):
      %267 = arith.shrui %c-32520_i16, %extracted_28 : i16
      %268 = math.powf %5, %5 : tensor<16x14xf32>
      %269 = memref.atomic_rmw ori %c2019218376_i32, %28[%c9, %c7] : (i32, memref<16x14xi32>) -> i32
      scf.execute_region {
        %270 = bufferization.to_memref %9 : memref<14x6xi32>
        %271 = vector.broadcast %cst_2 : f16 to vector<14xf16>
        vector.transfer_write %271, %alloc_20[%c6, %59] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf16>, memref<16x14xf16>
        %272 = arith.cmpi eq, %c25621_i16, %c-14197_i16 : i16
        %273 = arith.ori %c25621_i16, %extracted_28 : i16
        %274 = arith.andi %false, %false_1 : i1
        %275 = index.maxs %c3, %30
        %276 = arith.remui %c2080863597_i64, %c1637224188_i64 : i64
        %277 = arith.shrui %c1637224188_i64, %c1637224188_i64 : i64
        %278 = index.ceildivu %c15, %c13
        %279 = index.maxs %c15, %c8
        %from_elements_51 = tensor.from_elements %false_1, %false_25, %false, %false_6, %false_25, %false_6, %false_25, %false, %false, %false_25, %false_1, %false_1, %false_0, %false_6, %false_0, %false_25, %false_1, %false_0, %false_6, %false_6, %false_1, %false, %false_0, %false_25, %false_6, %false_1, %false_25, %false_6, %false_25, %false_0, %false_6, %false_25, %false_6, %false, %false_0, %false_25, %false_0, %false_1, %false_25, %false_6, %false_25, %false_25, %false_1, %false, %false_0, %false_1, %false_0, %false_0, %false_6, %false_0, %false_25, %false, %false_25, %false_1, %false_6, %false_25, %false_25, %false, %false, %false_25, %false_0, %false_0, %false_1, %false_25, %false_25, %false_1, %false_6, %false_25, %false_25, %false_1, %false_25, %false_1, %false_6, %false_0, %false, %false_0, %false_6, %false, %false_25, %false_25, %false_25, %false_0, %false_0, %false_1, %false_1, %false_25, %false_1, %false_0, %false_25, %false, %false_0, %false, %false_0, %false_6, %false_0, %false_1, %false_25, %false_6, %false_25, %false_25 : tensor<10x10xi1>
        %inserted_52 = tensor.insert %false_25 into %10[%c6, %c8] : tensor<14x10xi1>
        %280 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + 2) * 64 - 2)>(%c12, %c12, %278)
        %281 = math.cos %126 : f32
        %dest_53, %accumulated_value_54 = vector.scan <add>, %41, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xf16>, vector<14xf16>
        %282 = arith.floordivsi %c-32520_i16, %c-32520_i16 : i16
        scf.yield
      }
      tensor.yield %c-14197_i16 : i16
    } : tensor<?x?xi16>
    %127 = affine.if affine_set<(d0, d1) : (d1 >= 0)>(%c15, %c15) -> f16 {
      %267 = arith.xori %false_0, %false : i1
      %cast_51 = tensor.cast %from_elements_23 : tensor<14x10xi1> to tensor<?x?xi1>
      scf.if %false_6 {
        %272 = vector.broadcast %cst_5 : f16 to vector<16x16xf16>
        %273 = vector.outerproduct %42, %42, %272 {kind = #vector.kind<minf>} : vector<16xf16>, vector<16xf16>
        vector.print %42 : vector<16xf16>
        %274 = math.absi %10 : tensor<14x10xi1>
        %275 = index.divu %c15, %c1
        %expanded_52 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<16x14xi1> into tensor<16x14x1xi1>
        %276 = affine.load %alloc_9[%c13, %c4] : memref<14x10xf16>
        %277 = math.exp %splat : tensor<14x6xf32>
        %extracted_53 = tensor.extract %0[%c4, %c3] : tensor<14x6xi1>
      } else {
        %272 = arith.remui %c2019218376_i32, %c1702488874_i32 : i32
        %273 = arith.remf %75, %cst_4 : f32
        %274 = index.add %79, %30
        %from_elements_52 = tensor.from_elements %false_6, %false, %false_25, %false_0, %false, %false, %false_25, %false, %false_1, %false_0, %false_1, %false_1, %false, %false_0, %false_25, %false_6, %false, %false_6, %false, %false_0, %false_1, %false_0, %false_25, %false_0, %false_25, %false_0, %false_0, %false_1, %false_25, %false_0, %false, %false_25, %false, %false_0, %false_6, %false, %false_0, %false_0, %false_0, %false, %false_6, %false_1, %false, %false_6, %false_25, %false_6, %false_1, %false_6, %false_0, %false_25, %false_1, %false, %false_1, %false_6, %false_1, %false, %false, %false_25, %false, %false_25, %false_1, %false_25, %false_25, %false_6, %false_6, %false_1, %false_6, %false_0, %false_25, %false, %false_25, %false, %false_1, %false_1, %false_0, %false_1, %false_25, %false_6, %false_6, %false_6, %false_25, %false_1, %false_0, %false, %false_0, %false_6, %false_6, %false, %false_1, %false_25, %false_6, %false_0, %false_1, %false_6, %false_0, %false, %false_0, %false_25, %false, %false_0 : tensor<10x10xi1>
        %275 = vector.extract_strided_slice %107 {offsets = [8], sizes = [2], strides = [1]} : vector<10xi32> to vector<2xi32>
        %276 = math.copysign %13, %13 : tensor<16x14xf16>
        %277 = index.sub %c15, %79
        memref.assume_alignment %alloc_17, 8 : memref<10x10xi1>
      }
      %268 = vector.extract_strided_slice %60 {offsets = [6], sizes = [6], strides = [1]} : vector<16xi1> to vector<6xi1>
      %269 = arith.cmpf ole, %cst_5, %80 : f16
      %270 = vector.reduction <minf>, %42 : vector<16xf16> into f16
      scf.execute_region {
        %272 = arith.maxsi %c25621_i16, %c-14197_i16 : i16
        %273 = arith.divsi %extracted_28, %c25621_i16 : i16
        %274 = arith.shli %false_6, %false : i1
        %275 = arith.shrui %c1702488874_i32, %c1702488874_i32 : i32
        %extracted_52 = tensor.extract %11[%c3, %c9] : tensor<14x10xi1>
        %276 = affine.load %alloc_16[%c2, %c15] : memref<14x6xf16>
        %inserted_53 = tensor.insert %cst_3 into %5[%c11, %c8] : tensor<16x14xf32>
        %277 = index.sub %30, %59
        %278 = arith.subi %c2080863597_i64, %c2080863597_i64 : i64
        %dest_54, %accumulated_value_55 = vector.scan <add>, %81, %91 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
        %279 = vector.broadcast %false_6 : i1 to vector<14xi1>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %106, %279 {inclusive = false, reduction_dim = 0 : i64} : vector<16x14xi1>, vector<14xi1>
        %280 = arith.divsi %false_25, %false_25 : i1
        %splat_58 = tensor.splat %c1637224188_i64 : tensor<16x14xi64>
        memref.tensor_store %8, %28 : memref<16x14xi32>
        %281 = vector.splat %cst_3 : vector<16x14xf32>
        %282 = math.rsqrt %13 : tensor<16x14xf16>
        scf.yield
      }
      %271 = index.sub %c10, %84
      affine.yield %80 : f16
    } else {
      %dest_51, %accumulated_value_52 = vector.scan <maxf>, %81, %91 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
      %267 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %268 = vector.broadcast %false : i1 to vector<10xi1>
      %269 = vector.maskedload %alloc_8[%c0, %c6], %268, %267 : memref<10x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %generated_53 = tensor.generate %c7 {
      ^bb0(%arg3: index, %arg4: index):
        %274 = arith.muli %c1637224188_i64, %c2080863597_i64 : i64
        %275 = math.log10 %cst_4 : f32
        affine.store %cst_5, %alloc_11[%c15, %c0] : memref<10x10xf16>
        %276 = vector.shuffle %42, %48 [0, 1, 2, 4, 7, 8, 9, 10, 12, 13, 17, 19, 20, 21] : vector<16xf16>, vector<6xf16>
        tensor.yield %false_25 : i1
      } : tensor<?x10xi1>
      memref.store %c-14197_i16, %alloc_19[%c6, %c0] : memref<14x6xi16>
      %270 = math.tanh %reduced : tensor<6xf32>
      %271 = arith.remsi %false_1, %false_0 : i1
      %272 = math.tanh %23 : tensor<f32>
      %273 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 32 + (d0 ceildiv 128) floordiv 32) mod 32 - d2 * 128, (d2 ceildiv 32 + (d0 ceildiv 128) floordiv 32) mod 32, d1 + 1)>(%121, %c14, %c13)
      affine.yield %cst_5 : f16
    }
    %128 = arith.ori %c1637224188_i64, %c1637224188_i64 : i64
    %129 = vector.splat %30 : vector<14x10xindex>
    %130 = math.log2 %reduced : tensor<6xf32>
    %131 = arith.remsi %false_25, %false : i1
    %132 = index.divs %c8, %c13
    memref.assume_alignment %alloc_13, 1 : memref<14x6xf32>
    %inserted_29 = tensor.insert %c-14197_i16 into %3[%c5, %c3] : tensor<16x14xi16>
    %133 = vector.reduction <minf>, %42 : vector<16xf16> into f16
    %134 = affine.load %alloc_20[%c6, %c2] : memref<16x14xf16>
    %135 = index.maxs %c8, %c14
    %136 = arith.ori %c1702488874_i32, %c2019218376_i32 : i32
    %splat_30 = tensor.splat %false_1 : tensor<10x10xi1>
    %137 = affine.load %alloc[%c0, %c1] : memref<16x14xi32>
    %generated_31 = tensor.generate %27, %121 {
    ^bb0(%arg3: index, %arg4: index):
      scf.if %false {
        %270 = math.floor %22 : tensor<6xf32>
        %271 = arith.cmpf oge, %cst_4, %75 : f32
        %272 = affine.min affine_map<(d0, d1) -> (d1 * 34 + 8, -(d1 floordiv 64) + 1, d1 * 32)>(%122, %c8)
        %273 = math.roundeven %transposed : tensor<14x16xf32>
        %274 = vector.insert %137, %107 [1] : i32 into vector<10xi32>
        %275 = math.tanh %cst_2 : f16
        %276 = math.atan %18 : tensor<14x16xf32>
        %277 = vector.load %28[%c4, %c6] : memref<16x14xi32>, vector<14x10xi32>
      } else {
        %270 = tensor.empty() : tensor<14x16xi32>
        %271 = math.fpowi %transposed, %270 : tensor<14x16xf32>, tensor<14x16xi32>
        %272 = arith.shli %extracted_28, %c-32520_i16 : i16
        %273 = vector.broadcast %137 : i32 to vector<i32>
        vector.transfer_write %273, %alloc[%30, %c4] : vector<i32>, memref<16x14xi32>
        %274 = vector.broadcast %extracted : f32 to vector<16x14xf32>
        %275 = math.absi %collapsed : tensor<84xi32>
        %276 = math.copysign %19, %22 : tensor<6xf32>
        %277 = bufferization.to_tensor %28 : memref<16x14xi32>
        %extracted_51 = tensor.extract %13[%c8, %c13] : tensor<16x14xf16>
      }
      %267 = math.copysign %cst_4, %cst : f32
      %268 = arith.addi %c25621_i16, %extracted_28 : i16
      %269 = math.fpowi %cst, %c2019218376_i32 : f32, i32
      tensor.yield %false_25 : i1
    } : tensor<?x?xi1>
    %138 = memref.load %alloc_7[%c9, %c8] : memref<10x10xi32>
    %139 = vector.load %alloc_19[%c9, %c2] : memref<14x6xi16>, vector<14x6xi16>
    %140 = math.atan2 %5, %5 : tensor<16x14xf32>
    %141 = scf.execute_region -> tensor<14x10xf16> {
      %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128)>(%c3, %101, %c8, %c10)
      %268 = arith.floordivsi %false_6, %false_25 : i1
      %269 = index.maxs %c3, %101
      %270 = math.cos %5 : tensor<16x14xf32>
      %271 = math.ipowi %8, %8 : tensor<16x14xi32>
      %272 = vector.broadcast %c-32520_i16 : i16 to vector<6xi16>
      %273 = vector.insert %272, %139 [13] : vector<6xi16> into vector<14x6xi16>
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (-d1 + d3, -d1)>(%c10, %30, %124, %79)
      %275 = vector.extract %106[5] : vector<16x14xi1>
      scf.index_switch %c10 
      case 1 {
        %alloc_53 = memref.alloc() : memref<6x14xi32>
        %281 = tensor.empty() : tensor<14x14xi32>
        %282 = linalg.matmul ins(%from_elements_22, %alloc_53 : tensor<14x6xi32>, memref<6x14xi32>) outs(%281 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %283 = vector.extract_strided_slice %81 {offsets = [6], sizes = [3], strides = [1]} : vector<10x10xf16> to vector<3x10xf16>
        %284 = vector.bitcast %44 : vector<16xf32> to vector<16xf32>
        %285 = bufferization.to_tensor %alloc_15 : memref<14x6xf32>
        %286 = math.round %5 : tensor<16x14xf32>
        %287 = math.ctpop %7 : tensor<14x10xi64>
        %288 = vector.broadcast %137 : i32 to vector<16xi32>
        %289 = vector.transfer_write %288, %9[%121, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi32>, tensor<14x6xi32>
        %290 = math.tanh %splat : tensor<14x6xf32>
        %291 = arith.negf %cst_3 : f32
        %292 = arith.cmpf oge, %cst_2, %cst_5 : f16
        %293 = arith.remf %cst_5, %80 : f16
        %294 = memref.atomic_rmw addi %c2019218376_i32, %alloc_14[%c4, %c1] : (i32, memref<14x10xi32>) -> i32
        %295 = bufferization.to_tensor %alloc : memref<16x14xi32>
        %296 = index.maxs %101, %27
        %alloca = memref.alloca() : memref<10x10xi16>
        %297 = affine.min affine_map<(d0, d1, d2) -> (d0, -32, (d1 ceildiv 2) * 64 + d0)>(%c12, %274, %c3)
        scf.yield
      }
      case 2 {
        %281 = affine.load %37[%c7, %c1] : memref<10x10xi1>
        %282 = arith.addf %75, %cst_3 : f32
        %283 = arith.mulf %80, %80 : f16
        affine.store %false_1, %alloc_12[%c1, %c3] : memref<10x10xi1>
        %284 = affine.min affine_map<(d0, d1, d2) -> ((d2 + d0 - 1) mod 32, d0 + 8)>(%101, %c10, %84)
        %285 = vector.broadcast %cst_5 : f16 to vector<16x16xf16>
        %286 = vector.outerproduct %42, %42, %285 {kind = #vector.kind<maxf>} : vector<16xf16>, vector<16xf16>
        %287 = math.absi %c2019218376_i32 : i32
        %288 = memref.atomic_rmw ori %137, %alloc_7[%c4, %c9] : (i32, memref<10x10xi32>) -> i32
        %from_elements_53 = tensor.from_elements %134, %80, %cst_2, %134, %134, %80, %cst_2, %cst_2, %cst_5, %cst_5, %134, %80, %cst_5, %134, %80, %80, %cst_5, %80, %cst_2, %80, %cst_2, %cst_5, %80, %80, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %134, %80, %cst_5, %80, %cst_5, %cst_5, %cst_2, %134, %80, %134, %cst_2, %cst_2, %cst_2, %cst_2, %134, %80, %134, %80, %cst_5, %cst_5, %cst_2, %80, %cst_5, %80, %80, %80, %cst_5, %cst_2, %134, %134, %cst_2, %cst_2, %80, %cst_2, %134, %80, %cst_2, %134, %80, %cst_5, %134, %134, %80, %134, %134, %134, %134, %cst_2, %80, %80, %80, %cst_2 : tensor<14x6xf16>
        %289 = arith.cmpi ule, %false_0, %false_0 : i1
        %290 = arith.andi %false_25, %false_1 : i1
        %291 = arith.muli %extracted_28, %c-14197_i16 : i16
        %292 = math.roundeven %reduced : tensor<6xf32>
        %293 = affine.min affine_map<(d0, d1, d2) -> (d0 + 16, (d2 * -64) floordiv 128, d2 mod 64)>(%c1, %284, %59)
        %294 = arith.mulf %126, %cst : f32
        memref.assume_alignment %alloc_12, 4 : memref<10x10xi1>
        scf.yield
      }
      default {
        %alloc_53 = memref.alloc() : memref<14x6xi32>
        %281 = index.divu %c1, %c2
        %expanded_54 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<14x10xi1> into tensor<14x10x1xi1>
        vector.print %45 : vector<16xi1>
        %282 = vector.broadcast %c-32520_i16 : i16 to vector<14xi16>
        %dest_55, %accumulated_value_56 = vector.scan <and>, %139, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<14x6xi16>, vector<14xi16>
        %283 = math.absi %8 : tensor<16x14xi32>
        %284 = arith.mulf %cst_5, %134 : f16
        %285 = arith.remsi %c-32520_i16, %c25621_i16 : i16
        %286 = math.expm1 %75 : f32
        memref.copy %alloc_15, %alloc_13 : memref<14x6xf32> to memref<14x6xf32>
        %287 = math.absi %false : i1
        %288 = math.exp %24 : tensor<f32>
        %289 = affine.apply affine_map<(d0, d1, d2) -> (((d1 * 4) floordiv 64 - 2) ceildiv 4)>(%c10, %124, %c10)
        %290 = math.fpowi %5, %8 : tensor<16x14xf32>, tensor<16x14xi32>
        %291 = vector.broadcast %cst_5 : f16 to vector<14xf16>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %41, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xf16>, vector<14xf16>
        %292 = math.absi %from_elements_22 : tensor<14x6xi32>
      }
      %276 = index.ceildivu %84, %c0
      %277 = math.log1p %24 : tensor<f32>
      %inserted_51 = tensor.insert %c1702488874_i32 into %16[%c1, %c4] : tensor<14x6xi32>
      %278 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + 2) * 64 - 2)>(%267, %132, %c15)
      %generated_52 = tensor.generate %135 {
      ^bb0(%arg3: index, %arg4: index):
        %281 = index.floordivs %c13, %c2
        %282 = arith.minui %c2019218376_i32, %c1702488874_i32 : i32
        %283 = arith.floordivsi %c25621_i16, %c-32520_i16 : i16
        %284 = vector.broadcast %c-14197_i16 : i16 to vector<14xi16>
        %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %139, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<14x6xi16>, vector<14xi16>
        tensor.yield %134 : f16
      } : tensor<?x6xf16>
      scf.execute_region {
        %expanded_53 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<16x14xi16> into tensor<16x14x1xi16>
        %cast_54 = tensor.cast %1 : tensor<14x6xi32> to tensor<?x?xi32>
        memref.store %false_6, %alloc_17[%c6, %c8] : memref<10x10xi1>
        %281 = math.expm1 %cst_2 : f16
        %282 = arith.divsi %c1702488874_i32, %137 : i32
        %283 = vector.insert %cst_4, %44 [12] : f32 into vector<16xf32>
        %284 = memref.load %alloc[%c12, %c8] : memref<16x14xi32>
        %from_elements_55 = tensor.from_elements %cst_3, %75, %extracted, %cst_3, %126, %cst_3, %cst, %cst_3, %126, %extracted, %75, %126, %cst_3, %126, %cst, %cst_4, %extracted, %cst, %126, %extracted, %cst_4, %cst, %cst_3, %cst_3, %cst, %extracted, %cst_4, %extracted, %126, %cst_4, %126, %extracted, %extracted, %cst_4, %cst_3, %cst, %extracted, %126, %cst, %126, %extracted, %extracted, %extracted, %cst_4, %75, %cst, %126, %extracted, %extracted, %cst, %75, %cst_3, %126, %cst_4, %75, %cst_4, %extracted, %cst_4, %126, %extracted, %cst, %126, %126, %126, %75, %cst_3, %cst_4, %75, %cst, %126, %cst_3, %126, %cst_3, %cst, %cst_3, %extracted, %126, %cst_3, %extracted, %75, %cst, %126, %cst, %extracted, %cst, %75, %126, %cst, %cst_4, %126, %cst_4, %cst_4, %cst_3, %126, %cst, %cst_4, %cst_3, %cst_4, %cst_3, %extracted, %cst_4, %cst, %cst_4, %75, %126, %cst_3, %75, %cst_4, %extracted, %cst_3, %extracted, %cst_3, %cst_3, %75, %75, %126, %cst, %cst, %cst_3, %cst, %75, %cst_4, %extracted, %126, %75, %extracted, %cst, %126, %cst_3, %cst_4, %126, %75, %cst_4, %cst, %126, %126, %cst_4, %cst_3, %75, %126, %extracted, %cst_3, %75, %126, %cst, %126, %cst_4, %75, %cst_4, %extracted, %cst_3, %cst_3, %cst_4, %extracted, %126, %cst_4, %extracted, %75, %126, %cst_3, %cst_3, %75, %cst_4, %cst_3, %cst, %75, %126, %cst, %126, %extracted, %cst, %126, %cst_4, %75, %cst, %126, %cst_4, %cst_3, %126, %75, %extracted, %cst_4, %cst_3, %126, %extracted, %75, %extracted, %cst, %cst, %extracted, %extracted, %cst_3, %cst_4, %cst_3, %cst_3, %126, %extracted, %extracted, %126, %cst, %extracted, %cst_3, %cst, %cst, %extracted, %extracted, %75, %75, %extracted, %cst_3, %126, %extracted, %75, %cst_4, %cst_4, %cst_3, %cst_3, %cst, %126, %extracted, %cst, %cst_4, %cst_3, %cst : tensor<16x14xf32>
        %285 = math.expm1 %134 : f16
        %286 = arith.cmpi sle, %false_0, %false_1 : i1
        %splat_56 = tensor.splat %cst : tensor<16x14xf32>
        %287 = arith.mulf %126, %extracted : f32
        %288 = vector.splat %c1637224188_i64 : vector<10x10xi64>
        %289 = vector.bitcast %48 : vector<6xf16> to vector<6xi16>
        bufferization.dealloc_tensor %cast_54 : tensor<?x?xi32>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128)>(%c14, %c4, %27, %c6)
        scf.yield
      }
      %279 = scf.while (%arg3 = %c-32520_i16) : (i16) -> i16 {
        %281 = arith.andi %c-32520_i16, %c-14197_i16 : i16
        %282 = arith.xori %false, %false_6 : i1
        memref.assume_alignment %alloc_9, 4 : memref<14x10xf16>
        %283 = math.exp %24 : tensor<f32>
        %284 = math.atan2 %transposed, %transposed : tensor<14x16xf32>
        %285 = math.ceil %13 : tensor<16x14xf16>
        %286 = affine.load %alloc_7[%c0, %c5] : memref<10x10xi32>
        %287 = math.rsqrt %80 : f16
        scf.condition(%false_1) %c25621_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %281 = vector.insertelement %false_1, %60[%c4 : index] : vector<16xi1>
        %282 = math.powf %transposed, %transposed : tensor<14x16xf32>
        %283 = index.floordivs %c4, %122
        %284 = vector.broadcast %c1702488874_i32 : i32 to vector<6xi32>
        %285 = vector.transfer_write %284, %9[%101, %274] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, tensor<14x6xi32>
        %286 = math.log1p %75 : f32
        %287 = bufferization.to_memref %expanded : memref<14x10x1xi1>
        memref.store %cst_5, %alloc_9[%c10, %c2] : memref<14x10xf16>
        memref.assume_alignment %287, 8 : memref<14x10x1xi1>
        %288 = affine.apply affine_map<(d0) -> (1)>(%c6)
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %46, %44, %cst : vector<16xf32>, vector<16xf32> into f32
        %alloca = memref.alloca() : memref<14x10xf32>
        %290 = vector.extract %275[2] : vector<14xi1>
        %291 = arith.remf %cst_4, %126 : f32
        %292 = vector.extract %46[15] : vector<16xf32>
        %extracted_53 = tensor.extract %15[%c11, %c2] : tensor<14x6xi1>
        %293 = index.floordivs %269, %135
        scf.yield %c-14197_i16 : i16
      }
      %280 = tensor.empty() : tensor<14x10xf16>
      scf.yield %280 : tensor<14x10xf16>
    }
    %142 = arith.cmpf une, %cst_3, %cst : f32
    %143 = index.ceildivu %84, %c9
    %144 = memref.load %37[%c0, %c0] : memref<10x10xi1>
    %145 = arith.shrui %c2019218376_i32, %c1702488874_i32 : i32
    %146 = index.casts %c9 : index to i32
    %generated_32 = tensor.generate %c13, %59 {
    ^bb0(%arg3: index, %arg4: index):
      %267 = vector.flat_transpose %21 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
      %268 = arith.shrui %c2080863597_i64, %c2080863597_i64 : i64
      %cast_51 = tensor.cast %10 : tensor<14x10xi1> to tensor<?x?xi1>
      %269 = memref.atomic_rmw addi %c2019218376_i32, %28[%c2, %c5] : (i32, memref<16x14xi32>) -> i32
      tensor.yield %c2080863597_i64 : i64
    } : tensor<?x?xi64>
    %147 = index.divu %27, %135
    %148 = arith.divsi %c2080863597_i64, %c1637224188_i64 : i64
    %149 = index.castu %121 : index to i32
    %150 = arith.ori %c1637224188_i64, %c2080863597_i64 : i64
    %151 = math.exp2 %cst_5 : f16
    %152 = scf.index_switch %c9 -> tensor<14x6xi64> 
    case 1 {
      %alloc_51 = memref.alloc() : memref<10x10xf16>
      %267 = vector.broadcast %c2019218376_i32 : i32 to vector<14xi32>
      %268 = vector.broadcast %false_25 : i1 to vector<14xi1>
      %269 = vector.maskedload %alloc[%c13, %c1], %268, %267 : memref<16x14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
      %270 = vector.broadcast %false : i1 to vector<14x14xi1>
      %271 = vector.outerproduct %268, %268, %270 {kind = #vector.kind<minui>} : vector<14xi1>, vector<14xi1>
      %272 = vector.reduction <mul>, %44 : vector<16xf32> into f32
      %273 = bufferization.clone %alloc_7 : memref<10x10xi32> to memref<10x10xi32>
      %274 = affine.min affine_map<(d0) -> (d0 * 7, d0 * 7, d0)>(%135)
      %275 = math.absi %from_elements_23 : tensor<14x10xi1>
      %276 = arith.shrsi %false_0, %false_25 : i1
      %277 = arith.shrui %false_6, %false : i1
      %true = index.bool.constant true
      %278 = vector.insert %extracted, %46 [9] : f32 into vector<16xf32>
      %279 = memref.load %alloc_14[%c7, %c9] : memref<14x10xi32>
      %cast_52 = tensor.cast %7 : tensor<14x10xi64> to tensor<?x?xi64>
      %280 = tensor.empty() : tensor<14x10xf32>
      %mapped_53 = linalg.map ins(%alloc_18, %alloc_18, %alloc_18 : memref<14x10xf32>, memref<14x10xf32>, memref<14x10xf32>) outs(%280 : tensor<14x10xf32>)
        (%in: f32, %in_54: f32, %in_55: f32) {
          %inserted_56 = tensor.insert %c-14197_i16 into %6[%c2, %c6] : tensor<10x10xi16>
          %284 = math.absf %13 : tensor<16x14xf16>
          %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, ((d3 floordiv 128) ceildiv 8) * 16, d3, d3 - 32)>(%c3, %c4, %101, %c0)
          %286 = arith.mulf %134, %cst_5 : f16
          memref.store %extracted_28, %alloc_19[%c12, %c4] : memref<14x6xi16>
          %287 = math.sqrt %splat : tensor<14x6xf32>
          %288 = vector.reduction <maxui>, %268 : vector<14xi1> into i1
          %289 = math.fpowi %in, %137 : f32, i32
          %290 = vector.reduction <add>, %45 : vector<16xi1> into i1
          %291 = math.atan2 %cst_4, %75 : f32
          %292 = vector.shuffle %91, %42 [0, 4, 8, 10, 11, 15, 19, 20, 22, 24, 25] : vector<10xf16>, vector<16xf16>
          %293 = vector.multi_reduction <and>, %106, %false [0, 1] : vector<16x14xi1> to i1
          %294 = vector.extract_strided_slice %91 {offsets = [8], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
          %295 = arith.muli %c-32520_i16, %c-32520_i16 : i16
          %296 = arith.xori %137, %c1702488874_i32 : i32
          %297 = math.log1p %24 : tensor<f32>
          %298 = vector.broadcast %cst_5 : f16 to vector<16x16xf16>
          %299 = vector.outerproduct %42, %42, %298 {kind = #vector.kind<add>} : vector<16xf16>, vector<16xf16>
          %300 = index.floordivs %c11, %84
          %301 = arith.xori %false_1, %false_25 : i1
          %302 = vector.broadcast %c2019218376_i32 : i32 to vector<16x14xi32>
          %303 = vector.gather %splat_30[%84, %c2] [%302], %106, %106 : tensor<10x10xi1>, vector<16x14xi32>, vector<16x14xi1>, vector<16x14xi1> into vector<16x14xi1>
          %304 = vector.broadcast %c9 : index to vector<10xindex>
          %305 = vector.broadcast %true : i1 to vector<10xi1>
          %306 = vector.broadcast %c1637224188_i64 : i64 to vector<10xi64>
          vector.scatter %alloc_21[%c11, %c5] [%304], %305, %306 : memref<16x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %307 = memref.atomic_rmw addf %cst_5, %alloc_9[%c12, %c6] : (f16, memref<14x10xf16>) -> f16
          memref.assume_alignment %alloc_15, 16 : memref<14x6xf32>
          %308 = vector.multi_reduction <minf>, %44, %46 [] : vector<16xf32> to vector<16xf32>
          %309 = vector.broadcast %c2019218376_i32 : i32 to vector<14x14xi32>
          %310 = vector.outerproduct %269, %269, %309 {kind = #vector.kind<mul>} : vector<14xi32>, vector<14xi32>
          %311 = math.atan2 %126, %in_55 : f32
          %312 = affine.load %alloc_16[%c3, %c0] : memref<14x6xf16>
          %313 = math.tanh %134 : f16
          %314 = arith.xori %false, %293 : i1
          %315 = bufferization.to_memref %3 : memref<16x14xi16>
          %316 = math.absi %6 : tensor<10x10xi16>
          %true_57 = index.bool.constant true
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      %281 = vector.bitcast %107 : vector<10xi32> to vector<10xi32>
      %282 = math.atan %126 : f32
      %283 = tensor.empty() : tensor<14x6xi64>
      scf.yield %283 : tensor<14x6xi64>
    }
    case 2 {
      %267 = math.ipowi %3, %3 : tensor<16x14xi16>
      %268 = math.ctlz %false_25 : i1
      %269 = math.roundeven %cst : f32
      %270 = math.expm1 %75 : f32
      %271 = math.fpowi %splat, %4 : tensor<14x6xf32>, tensor<14x6xi32>
      %272 = index.maxs %121, %c3
      %273 = vector.broadcast %cst_5 : f16 to vector<14xf16>
      %dest_51, %accumulated_value_52 = vector.scan <mul>, %41, %273 {inclusive = false, reduction_dim = 0 : i64} : vector<16x14xf16>, vector<14xf16>
      %274 = vector.load %alloc_15[%c13, %c0] : memref<14x6xf32>, vector<16x14xf32>
      %275 = math.absi %c25621_i16 : i16
      %276 = index.floordivs %26, %124
      vector.print %60 : vector<16xi1>
      %cast_53 = tensor.cast %23 : tensor<f32> to tensor<f32>
      %277 = vector.extract_strided_slice %48 {offsets = [0], sizes = [2], strides = [1]} : vector<6xf16> to vector<2xf16>
      %278 = math.ctlz %118 : tensor<14x10xi32>
      %279 = arith.mulf %75, %75 : f32
      %280 = tensor.empty() : tensor<16x16xf32>
      %281 = linalg.matmul ins(%5, %transposed : tensor<16x14xf32>, tensor<14x16xf32>) outs(%280 : tensor<16x16xf32>) -> tensor<16x16xf32>
      %282 = tensor.empty() : tensor<14x6xi64>
      scf.yield %282 : tensor<14x6xi64>
    }
    case 3 {
      %267 = arith.xori %false_25, %false_1 : i1
      %268 = arith.muli %false, %false : i1
      %269 = vector.broadcast %false_6 : i1 to vector<14xi1>
      %dest_51, %accumulated_value_52 = vector.scan <minui>, %106, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<16x14xi1>, vector<14xi1>
      %true = index.bool.constant true
      %270 = vector.load %alloc_11[%c0, %c0] : memref<10x10xf16>, vector<16x14xf16>
      %271 = arith.xori %extracted_28, %extracted_28 : i16
      %extracted_53 = tensor.extract %7[%c2, %c2] : tensor<14x10xi64>
      %272 = vector.load %alloc_9[%c8, %c8] : memref<14x10xf16>, vector<10x10xf16>
      %273 = affine.apply affine_map<(d0, d1) -> (d1 + 4)>(%c11, %c3)
      %274 = arith.addf %126, %75 : f32
      %275 = math.rsqrt %extracted : f32
      %276 = math.roundeven %5 : tensor<16x14xf32>
      %277 = scf.execute_region -> tensor<14x10xf16> {
        %281 = index.ceildivs %59, %c1
        %282 = vector.broadcast %false_25 : i1 to vector<16x16xi1>
        %283 = vector.outerproduct %45, %45, %282 {kind = #vector.kind<add>} : vector<16xi1>, vector<16xi1>
        %284 = math.atan %cst_4 : f32
        %285 = arith.muli %c1637224188_i64, %c1637224188_i64 : i64
        %286 = tensor.empty() : tensor<14x10xi16>
        %287 = linalg.matmul ins(%12, %6 : tensor<14x10xi16>, tensor<10x10xi16>) outs(%286 : tensor<14x10xi16>) -> tensor<14x10xi16>
        %288 = index.sub %26, %c4
        %289 = arith.shrui %c1637224188_i64, %c1637224188_i64 : i64
        %290 = arith.xori %c1637224188_i64, %extracted_53 : i64
        %291 = math.log1p %141 : tensor<14x10xf16>
        %292 = math.copysign %13, %13 : tensor<16x14xf16>
        %293 = math.atan %cst_3 : f32
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %81, %91 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        %294 = math.absi %expanded : tensor<14x10x1xi1>
        %inserted_56 = tensor.insert %137 into %4[%c9, %c2] : tensor<14x6xi32>
        %295 = index.castu %27 : index to i32
        %296 = index.divu %59, %30
        scf.yield %141 : tensor<14x10xf16>
      }
      memref.assume_alignment %28, 16 : memref<16x14xi32>
      %278 = index.divu %79, %c0
      %279 = arith.xori %extracted_28, %c-32520_i16 : i16
      %280 = tensor.empty() : tensor<14x6xi64>
      scf.yield %280 : tensor<14x6xi64>
    }
    case 4 {
      %267 = math.ceil %134 : f16
      scf.if %false_0 {
        %283 = math.absf %134 : f16
        %284 = vector.extract_strided_slice %21 {offsets = [0], sizes = [6], strides = [1]} : vector<10xi16> to vector<6xi16>
        %285 = vector.splat %c25621_i16 : vector<14x6xi16>
        %286 = vector.splat %147 : vector<16x14xindex>
        %287 = math.copysign %134, %134 : f16
        %288 = math.copysign %splat, %splat : tensor<14x6xf32>
        %289 = vector.load %28[%c8, %c4] : memref<16x14xi32>, vector<16x14xi32>
        %290 = math.exp %24 : tensor<f32>
      } else {
        %283 = arith.mulf %cst_3, %75 : f32
        %284 = vector.broadcast %134 : f16 to vector<14xf16>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %41, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xf16>, vector<14xf16>
        %285 = tensor.empty() : tensor<14x6xi32>
        %286 = arith.remui %false_1, %false : i1
        %287 = index.maxu %c4, %84
        %288 = math.tanh %cst_2 : f16
        %289 = math.tan %18 : tensor<14x16xf32>
        memref.assume_alignment %alloc_14, 16 : memref<14x10xi32>
      }
      %268 = arith.ceildivsi %false_1, %false_6 : i1
      %269 = math.absi %16 : tensor<14x6xi32>
      %270 = index.mul %27, %c15
      %271 = arith.ori %extracted_28, %extracted_28 : i16
      %272 = math.atan %19 : tensor<6xf32>
      %273 = arith.muli %c2080863597_i64, %c1637224188_i64 : i64
      %274 = arith.ceildivsi %c1637224188_i64, %c2080863597_i64 : i64
      %275 = math.roundeven %cst_2 : f16
      %276 = arith.ori %false_25, %false_25 : i1
      %277 = vector.bitcast %45 : vector<16xi1> to vector<16xi1>
      %alloc_51 = memref.alloc() : memref<6xi1>
      %278 = memref.realloc %alloc_51 : memref<6xi1> to memref<6xi1>
      %279 = math.fma %22, %reduced, %22 : tensor<6xf32>
      %280 = math.tanh %80 : f16
      %281 = vector.matrix_multiply %44, %46 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
      %282 = tensor.empty() : tensor<14x6xi64>
      scf.yield %282 : tensor<14x6xi64>
    }
    default {
      %267 = arith.remsi %c-14197_i16, %c25621_i16 : i16
      %268 = arith.cmpi sgt, %c1702488874_i32, %c1702488874_i32 : i32
      %269 = affine.for %arg3 = 0 to 90 iter_args(%arg4 = %alloc_13) -> (memref<14x6xf32>) {
        affine.yield %alloc_15 : memref<14x6xf32>
      }
      %inserted_51 = tensor.insert %false_1 into %expanded[%c5, %c3, %c0] : tensor<14x10x1xi1>
      %270 = vector.splat %126 : vector<16x14xf32>
      %271 = arith.cmpi sle, %c2019218376_i32, %137 : i32
      %alloca = memref.alloca() : memref<14x10xi16>
      %272 = vector.flat_transpose %45 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %273 = scf.execute_region -> vector<16x14xi32> {
        %283 = arith.divsi %c2080863597_i64, %c1637224188_i64 : i64
        %284 = math.roundeven %22 : tensor<6xf32>
        %285 = math.atan2 %5, %5 : tensor<16x14xf32>
        %splat_52 = tensor.splat %c2080863597_i64 : tensor<14x6xi64>
        %286 = math.ctpop %12 : tensor<14x10xi16>
        %287 = tensor.empty() : tensor<6xi32>
        %288 = math.fpowi %22, %287 : tensor<6xf32>, tensor<6xi32>
        %289 = math.exp %141 : tensor<14x10xf16>
        %290 = arith.muli %false, %false : i1
        %291 = math.ctpop %0 : tensor<14x6xi1>
        %292 = vector.broadcast %false : i1 to vector<16x16xi1>
        %293 = vector.outerproduct %272, %60, %292 {kind = #vector.kind<mul>} : vector<16xi1>, vector<16xi1>
        %294 = arith.muli %c1637224188_i64, %c1637224188_i64 : i64
        %295 = arith.divf %cst_3, %75 : f32
        %296 = arith.remf %cst, %extracted : f32
        %297 = arith.shrsi %c1702488874_i32, %137 : i32
        %298 = vector.shuffle %41, %41 [0, 3, 7, 8, 13, 15, 16, 20, 21, 25] : vector<16x14xf16>, vector<16x14xf16>
        %299 = arith.remf %126, %cst : f32
        %300 = vector.broadcast %c1702488874_i32 : i32 to vector<16x14xi32>
        scf.yield %300 : vector<16x14xi32>
      }
      %274 = math.ipowi %9, %from_elements : tensor<14x6xi32>
      %275 = math.copysign %cst, %extracted : f32
      %276 = arith.muli %extracted_28, %c-14197_i16 : i16
      %277 = math.ipowi %expanded, %expanded : tensor<14x10x1xi1>
      %278 = index.castu %54 : index to i32
      %279 = vector.broadcast %126 : f32 to vector<16x16xf32>
      %280 = vector.outerproduct %44, %44, %279 {kind = #vector.kind<add>} : vector<16xf32>, vector<16xf32>
      %281 = vector.reduction <or>, %272 : vector<16xi1> into i1
      %282 = tensor.empty() : tensor<14x6xi64>
      scf.yield %282 : tensor<14x6xi64>
    }
    %cast = tensor.cast %expanded_24 : tensor<16x14x1xi1> to tensor<?x?x?xi1>
    %153 = arith.cmpi sge, %c2080863597_i64, %c1637224188_i64 : i64
    %154 = affine.load %alloc_14[%c14, %c0] : memref<14x10xi32>
    %155 = vector.broadcast %c-32520_i16 : i16 to vector<6x6xi16>
    %156 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %139, %139, %155 : vector<14x6xi16>, vector<14x6xi16> into vector<6x6xi16>
    %157 = math.atan2 %cst_4, %extracted : f32
    %158 = memref.load %88[%c7, %c5] : memref<14x10xi1>
    %inserted_33 = tensor.insert %false_0 into %15[%c6, %c4] : tensor<14x6xi1>
    %159 = math.absf %141 : tensor<14x10xf16>
    %160 = vector.broadcast %cst : f32 to vector<16x16xf32>
    %161 = vector.outerproduct %44, %46, %160 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
    %162 = tensor.empty() : tensor<14x10xi1>
    %163 = linalg.matmul ins(%10, %splat_30 : tensor<14x10xi1>, tensor<10x10xi1>) outs(%162 : tensor<14x10xi1>) -> tensor<14x10xi1>
    %164 = scf.while (%arg3 = %alloc_10) : (memref<16x14xi64>) -> memref<16x14xi64> {
      %267 = vector.transpose %107, [0] : vector<10xi32> to vector<10xi32>
      %268 = math.fpowi %cst_2, %c2019218376_i32 : f16, i32
      %269 = math.ctpop %6 : tensor<10x10xi16>
      %270 = vector.splat %122 : vector<10x10xindex>
      %271 = scf.execute_region -> index {
        %275 = affine.load %88[%c8, %c7] : memref<14x10xi1>
        %276 = affine.load %alloc_11[%c13, %c11] : memref<10x10xf16>
        %277 = index.divs %c3, %27
        %true = index.bool.constant true
        %278 = vector.broadcast %276 : f16 to vector<14xf16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %41, %42, %278 : vector<16x14xf16>, vector<16xf16> into vector<14xf16>
        %280 = arith.remui %c2019218376_i32, %154 : i32
        %281 = math.exp2 %80 : f16
        %282 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%c7, %c9, %121)
        %283 = vector.broadcast %extracted : f32 to vector<16x16xf32>
        %284 = vector.outerproduct %46, %46, %283 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
        %285 = math.exp2 %13 : tensor<16x14xf16>
        %286 = vector.load %alloc_17[%c7, %c5] : memref<10x10xi1>, vector<16x14xi1>
        %alloc_51 = memref.alloc() : memref<6x14xf32>
        %287 = tensor.empty() : tensor<14x14xf32>
        %288 = linalg.matmul ins(%splat, %alloc_51 : tensor<14x6xf32>, memref<6x14xf32>) outs(%287 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %289 = math.fma %23, %24, %23 : tensor<f32>
        %290 = vector.extract_strided_slice %42 {offsets = [2], sizes = [7], strides = [1]} : vector<16xf16> to vector<7xf16>
        %291 = arith.cmpf olt, %extracted, %cst_3 : f32
        %292 = math.exp2 %5 : tensor<16x14xf32>
        scf.yield %132 : index
      }
      %272 = vector.broadcast %extracted : f32 to vector<10x10xf32>
      %273 = index.casts %false_0 : i1 to index
      %274 = math.ceil %13 : tensor<16x14xf16>
      scf.condition(%false) %alloc_10 : memref<16x14xi64>
    } do {
    ^bb0(%arg3: memref<16x14xi64>):
      %267 = math.fma %transposed, %18, %transposed : tensor<14x16xf32>
      %268 = math.absi %8 : tensor<16x14xi32>
      %269 = arith.mulf %extracted, %75 : f32
      affine.for %arg4 = 0 to 118 {
      }
      %270 = arith.remf %126, %75 : f32
      %271 = arith.cmpf ugt, %cst_5, %cst_2 : f16
      %272 = math.cos %splat : tensor<14x6xf32>
      %273 = math.roundeven %transposed : tensor<14x16xf32>
      %274 = math.atan %cst : f32
      %alloca = memref.alloca() : memref<14x10xi1>
      %275 = memref.alloca_scope  -> (memref<14x10xi32>) {
        %281 = bufferization.clone %alloc_9 : memref<14x10xf16> to memref<14x10xf16>
        %282 = math.atan2 %cst_3, %cst : f32
        %283 = arith.ceildivsi %c2080863597_i64, %c2080863597_i64 : i64
        %284 = arith.remui %false_25, %false_6 : i1
        %285 = arith.cmpi ule, %c2019218376_i32, %137 : i32
        %286 = vector.load %alloc_10[%c12, %c4] : memref<16x14xi64>, vector<14x6xi64>
        %287 = arith.negf %134 : f16
        %288 = math.ctpop %14 : tensor<14x10xi16>
        %289 = arith.cmpi eq, %false_6, %false_1 : i1
        %collapsed_51 = tensor.collapse_shape %8 [[0, 1]] : tensor<16x14xi32> into tensor<224xi32>
        %290 = arith.muli %154, %c2019218376_i32 : i32
        %291 = math.log1p %5 : tensor<16x14xf32>
        %292 = index.castu %121 : index to i32
        %293 = math.exp %cst_2 : f16
        %294 = index.divu %c5, %c7
        %295 = math.rsqrt %5 : tensor<16x14xf32>
        %296 = index.ceildivu %c1, %84
        %297 = math.ipowi %1, %4 : tensor<14x6xi32>
        %298 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 128)>(%c6, %135, %101, %122)
        %299 = arith.cmpf ult, %cst_3, %cst : f32
        %300 = vector.shuffle %42, %91 [1, 3, 4, 6, 9, 10, 11, 14, 15, 17, 22, 23, 24] : vector<16xf16>, vector<10xf16>
        %extracted_52 = tensor.extract %5[%c4, %c7] : tensor<16x14xf32>
        %301 = arith.shli %c25621_i16, %c25621_i16 : i16
        %302 = index.sub %c9, %c13
        %303 = arith.shrsi %c25621_i16, %c-32520_i16 : i16
        %304 = math.expm1 %134 : f16
        %305 = memref.atomic_rmw mins %c2080863597_i64, %alloc_21[%c5, %c4] : (i64, memref<16x14xi64>) -> i64
        %false_53 = index.bool.constant false
        %306 = vector.flat_transpose %60 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %307 = math.absi %collapsed_51 : tensor<224xi32>
        %from_elements_54 = tensor.from_elements %cst, %extracted_52, %extracted_52, %extracted_52, %extracted_52, %cst_3, %126, %cst, %126, %extracted, %extracted, %cst_4, %75, %75, %75, %75, %extracted, %extracted, %extracted, %75, %cst_4, %126, %126, %75, %cst_3, %cst, %126, %cst_3, %75, %extracted_52, %cst_3, %cst_3, %cst_4, %cst_3, %extracted_52, %126, %cst_4, %cst, %75, %cst_3, %cst, %cst, %extracted, %75, %126, %extracted_52, %extracted, %cst_4, %extracted_52, %cst_4, %cst_4, %extracted, %cst_3, %cst_4, %75, %cst_3, %126, %cst, %126, %extracted, %cst, %cst, %extracted, %extracted_52, %75, %extracted_52, %126, %cst_3, %75, %126, %75, %cst_3, %extracted_52, %126, %126, %75, %75, %cst_4, %cst_3, %75, %126, %cst_3, %126, %extracted_52, %cst_3, %126, %cst, %75, %extracted, %cst, %extracted, %cst, %cst_4, %cst_3, %extracted_52, %cst_3, %126, %cst_3, %extracted_52, %extracted_52 : tensor<10x10xf32>
        %308 = index.add %c14, %c15
        memref.alloca_scope.return %alloc_14 : memref<14x10xi32>
      }
      %276 = index.maxu %c3, %c14
      %277 = index.sizeof
      %278 = arith.divsi %137, %137 : i32
      %279 = math.cos %13 : tensor<16x14xf16>
      %280 = math.atan %extracted : f32
      scf.yield %alloc_21 : memref<16x14xi64>
    }
    %165 = index.maxu %c3, %30
    %alloc_34 = memref.alloc() : memref<14x1xi16>
    %166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34, %alloc_34 : memref<14x1xi16>, memref<14x1xi16>) outs(%expanded_27 : tensor<16x14x1xi16>) {
    ^bb0(%in: i16, %in_51: i16, %out: i16):
      %267 = vector.create_mask %143, %79 : vector<10x10xi1>
      %from_elements_52 = tensor.from_elements %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %80, %cst_2, %80, %134, %80, %cst_5, %cst_2, %134, %80, %cst_2, %80, %80, %cst_2, %80, %80, %cst_5, %80, %134, %cst_5, %80, %134, %134, %cst_5, %cst_2, %cst_2, %80, %80, %80, %cst_2, %80, %134, %134, %80, %cst_5, %cst_2, %80, %134, %80, %cst_5, %cst_5, %134, %cst_2, %134, %134, %134, %80, %cst_5, %cst_2, %134, %80, %cst_5, %134, %134, %80, %cst_2, %cst_5, %80, %cst_2, %cst_2, %cst_5, %cst_2, %80, %cst_2, %cst_5, %134, %80, %cst_5, %80, %134, %cst_2, %134, %80, %134, %80, %cst_5, %134, %80, %134, %134, %cst_5, %cst_5, %cst_2, %cst_5, %80, %80, %134, %134, %80, %134, %134, %cst_2, %80, %cst_2, %cst_5, %80, %80, %80, %cst_5, %cst_2, %cst_2, %cst_5, %134, %cst_5, %cst_2, %80, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %134, %80, %80, %cst_2, %cst_5, %134, %80, %80, %cst_5, %cst_5, %80, %80, %cst_2, %cst_2, %134, %cst_5, %80, %80, %cst_5, %cst_2, %cst_2, %134, %134, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %80, %134, %cst_5, %134, %134, %cst_5, %cst_2, %134, %cst_2, %80, %134, %cst_2, %80, %134, %134, %cst_5, %80, %80, %cst_5, %cst_2, %80, %80, %80, %80, %cst_2, %cst_5, %cst_2, %cst_2, %80, %80, %cst_2, %80, %cst_2, %134, %cst_5, %134, %cst_2, %80, %80, %cst_2, %80, %80, %134, %cst_5, %cst_5, %134, %80, %cst_5, %80, %cst_5, %134, %cst_2, %cst_5, %cst_5, %134, %80, %80, %cst_2, %80, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %80, %cst_2, %80, %cst_2, %80, %134, %80, %134, %cst_5, %134, %cst_2, %80, %80, %134, %80, %cst_2 : tensor<16x14xf16>
      %268 = arith.divf %extracted, %cst : f32
      %269 = vector.extract_strided_slice %139 {offsets = [9], sizes = [1], strides = [1]} : vector<14x6xi16> to vector<1x6xi16>
      %270 = vector.broadcast %c1702488874_i32 : i32 to vector<i32>
      %271 = vector.transfer_write %270, %collapsed[%c8] : vector<i32>, tensor<84xi32>
      %272 = math.ctlz %2 : tensor<16x14xi1>
      %273 = vector.extract_strided_slice %45 {offsets = [6], sizes = [3], strides = [1]} : vector<16xi1> to vector<3xi1>
      affine.store %cst_5, %alloc_11[%c8, %c3] : memref<10x10xf16>
      %274 = math.tanh %from_elements_52 : tensor<16x14xf16>
      %275 = index.divs %c15, %c9
      %276 = arith.minf %cst_2, %134 : f16
      affine.store %154, %alloc[%c7, %c8] : memref<16x14xi32>
      %277 = math.atan %141 : tensor<14x10xf16>
      %278 = math.copysign %19, %reduced : tensor<6xf32>
      %279 = vector.create_mask %79, %26 : vector<14x10xi1>
      memref.assume_alignment %alloc_14, 8 : memref<14x10xi32>
      %280 = arith.ori %extracted_28, %extracted_28 : i16
      %281 = affine.apply affine_map<(d0, d1, d2) -> (((d1 * 4) floordiv 64 - 2) ceildiv 4)>(%c11, %c11, %59)
      %282 = vector.broadcast %126 : f32 to vector<16x14xf32>
      %283 = vector.fma %282, %282, %282 : vector<16x14xf32>
      %284 = vector.create_mask %121, %135 : vector<10x10xi1>
      %285 = index.ceildivu %c14, %c8
      %286 = vector.broadcast %false_6 : i1 to vector<10xi1>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %267, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
      %287 = math.rsqrt %75 : f32
      %288 = affine.apply affine_map<(d0, d1) -> (d0 + d1 + d0)>(%132, %59)
      memref.alloca_scope  {
        %294 = vector.reduction <xor>, %21 : vector<10xi16> into i16
        %expanded_56 = tensor.expand_shape %collapsed [[0, 1]] : tensor<84xi32> into tensor<84x1xi32>
        %295 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + 2) * 64 - 2)>(%c9, %59, %124)
        %296 = arith.mulf %cst_3, %cst : f32
        %dest_57, %accumulated_value_58 = vector.scan <minsi>, %106, %60 {inclusive = false, reduction_dim = 1 : i64} : vector<16x14xi1>, vector<16xi1>
        %297 = index.divu %84, %c3
        %298 = math.roundeven %5 : tensor<16x14xf32>
        %299 = bufferization.to_tensor %alloc_16 : memref<14x6xf16>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %282, %46 {inclusive = true, reduction_dim = 1 : i64} : vector<16x14xf32>, vector<16xf32>
        %300 = memref.load %28[%c14, %c11] : memref<16x14xi32>
        %301 = vector.load %alloc[%c5, %c2] : memref<16x14xi32>, vector<16x14xi32>
        %302 = math.log2 %extracted : f32
        %303 = vector.extract %107[6] : vector<10xi32>
        %304 = arith.xori %out, %c-32520_i16 : i16
        %alloc_61 = memref.alloc() : memref<10xi1>
        %305 = memref.realloc %alloc_61 : memref<10xi1> to memref<16xi1>
        %306 = arith.cmpf uge, %extracted, %cst : f32
        %307 = arith.cmpf ule, %cst_5, %cst_2 : f16
        %308 = vector.extract_strided_slice %41 {offsets = [2], sizes = [2], strides = [1]} : vector<16x14xf16> to vector<2x14xf16>
        %309 = index.maxu %101, %59
        %310 = arith.ori %c1637224188_i64, %c1637224188_i64 : i64
        %311 = math.fpowi %299, %1 : tensor<14x6xf16>, tensor<14x6xi32>
        memref.copy %alloc_21, %alloc_10 : memref<16x14xi64> to memref<16x14xi64>
        %312 = vector.splat %in : vector<14x6xi16>
        %313 = arith.xori %c1637224188_i64, %c2080863597_i64 : i64
        %314 = math.fpowi %cst, %154 : f32, i32
        %alloc_62 = memref.alloc() : memref<14xf16>
        %315 = memref.realloc %alloc_62 : memref<14xf16> to memref<10xf16>
        %316 = arith.shli %c-32520_i16, %in : i16
        %317 = arith.muli %false_1, %false_25 : i1
        %318 = math.powf %23, %24 : tensor<f32>
        %cast_63 = tensor.cast %9 : tensor<14x6xi32> to tensor<?x?xi32>
        %319 = math.atan2 %5, %5 : tensor<16x14xf32>
        %320 = tensor.empty() : tensor<14x10xi1>
        %321 = linalg.matmul ins(%from_elements_23, %splat_30 : tensor<14x10xi1>, tensor<10x10xi1>) outs(%320 : tensor<14x10xi1>) -> tensor<14x10xi1>
      }
      %expanded_55 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<10x10xi16> into tensor<10x10x1xi16>
      %289 = affine.apply affine_map<(d0, d1) -> (d0 - d1 - 128)>(%79, %c2)
      %alloca = memref.alloca() : memref<14x10xi32>
      %290 = arith.xori %false_1, %false_1 : i1
      %291 = arith.xori %c1637224188_i64, %c2080863597_i64 : i64
      %292 = arith.remf %cst_5, %cst_2 : f16
      %293 = math.expm1 %reduced : tensor<6xf32>
      linalg.yield %c-32520_i16 : i16
    } -> tensor<16x14x1xi16>
    %167 = affine.if affine_set<(d0, d1, d2, d3) : (-8 >= 0, d1 * 64 >= 0, -10 >= 0, 0 >= 0)>(%c13, %c0, %c0, %c15) -> f16 {
      %267 = vector.load %88[%c6, %c7] : memref<14x10xi1>, vector<14x10xi1>
      %268 = vector.broadcast %c-14197_i16 : i16 to vector<10x10xi16>
      %269 = vector.outerproduct %21, %21, %268 {kind = #vector.kind<minui>} : vector<10xi16>, vector<10xi16>
      memref.store %extracted, %alloc_15[%c4, %c4] : memref<14x6xf32>
      %270 = math.rsqrt %23 : tensor<f32>
      %271 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, ((-d1) ceildiv 16) * 16)>(%79, %27, %c10, %124)
      %272 = vector.extract_strided_slice %42 {offsets = [0], sizes = [14], strides = [1]} : vector<16xf16> to vector<14xf16>
      %expanded_51 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<14x10xi16> into tensor<14x10x1xi16>
      %273 = affine.apply affine_map<(d0) -> (-d0)>(%c2)
      affine.yield %cst_2 : f16
    } else {
      memref.store %c1702488874_i32, %alloc[%c5, %c10] : memref<16x14xi32>
      %267 = math.copysign %cst_5, %cst_5 : f16
      %268 = math.ctpop %c2019218376_i32 : i32
      %269 = vector.broadcast %75 : f32 to vector<16x16xf32>
      %270 = vector.outerproduct %44, %46, %269 {kind = #vector.kind<minf>} : vector<16xf32>, vector<16xf32>
      %from_elements_51 = tensor.from_elements %cst_2, %80, %80, %cst_5, %cst_2, %cst_2, %cst_5, %134, %134, %cst_5, %80, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %134, %cst_5, %cst_2, %cst_2, %134, %80, %cst_5, %134, %cst_2, %cst_2, %cst_5, %134, %cst_2, %80, %cst_5, %cst_5, %134, %134, %80, %cst_2, %134, %cst_5, %134, %cst_2, %cst_5, %80, %cst_5, %80, %cst_5, %80, %cst_2, %cst_2, %134, %134, %80, %80, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %134, %134, %134, %cst_2, %80, %cst_2, %134, %80, %134, %80, %134, %cst_5, %cst_2, %80, %134, %134, %80, %134, %cst_2, %cst_5, %134, %134, %cst_5, %134, %cst_5, %cst_2, %cst_2, %cst_5, %80, %cst_5, %80, %cst_2, %134, %cst_5, %134, %80, %cst_2, %cst_5, %134, %cst_5, %80, %cst_5 : tensor<10x10xf16>
      %271 = arith.xori %false_25, %false_25 : i1
      %from_elements_52 = tensor.from_elements %c-32520_i16, %extracted_28, %extracted_28, %extracted_28, %c25621_i16, %c25621_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %c-14197_i16, %extracted_28, %c-14197_i16, %extracted_28, %c25621_i16, %extracted_28, %c25621_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %extracted_28, %c25621_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %extracted_28, %c25621_i16, %extracted_28, %extracted_28, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %extracted_28, %extracted_28, %extracted_28, %c25621_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %extracted_28, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %extracted_28, %c-32520_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %c25621_i16, %extracted_28, %extracted_28, %c-14197_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-14197_i16, %extracted_28, %c-14197_i16, %extracted_28, %c-32520_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %extracted_28, %c25621_i16, %c25621_i16, %extracted_28, %c-32520_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %extracted_28, %extracted_28, %c-14197_i16, %c25621_i16, %extracted_28, %c25621_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %extracted_28, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %extracted_28, %extracted_28, %c25621_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %c-32520_i16, %c-32520_i16, %c25621_i16, %extracted_28, %extracted_28, %extracted_28, %extracted_28, %extracted_28, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %extracted_28, %c-32520_i16, %c-14197_i16, %extracted_28, %c25621_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %extracted_28, %extracted_28, %c25621_i16, %c25621_i16, %extracted_28, %c-14197_i16, %c25621_i16, %c25621_i16, %c25621_i16, %extracted_28, %extracted_28, %c-14197_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %c25621_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %c25621_i16, %extracted_28, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %extracted_28, %c-32520_i16 : tensor<16x14xi16>
      %272 = index.maxu %c5, %c3
      affine.yield %134 : f16
    }
    %cast_35 = tensor.cast %10 : tensor<14x10xi1> to tensor<?x?xi1>
    %168 = arith.shli %false_25, %false : i1
    %169 = vector.broadcast %false_25 : i1 to vector<10xi1>
    %170 = vector.maskedload %alloc_14[%c4, %c7], %169, %107 : memref<14x10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
    %expanded_36 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<16x14xi1> into tensor<16x14x1xi1>
    %171 = tensor.empty() : tensor<6xi32>
    %172 = math.fpowi %22, %171 : tensor<6xf32>, tensor<6xi32>
    %173 = affine.if affine_set<(d0, d1, d2, d3) : ((-d3) floordiv 4 >= 0, (d0 * 32 - 64) * 2 == 0, d0 * 32 >= 0, (d0 * 32 - 64) * 128 >= 0)>(%c4, %c8, %c15, %c7) -> memref<16x14xi16> {
      %267 = arith.ori %false, %false_1 : i1
      %268 = vector.splat %80 : vector<16x14xf16>
      %269 = arith.cmpi ugt, %c2080863597_i64, %c2080863597_i64 : i64
      affine.store %c1702488874_i32, %28[%c1, %c8] : memref<16x14xi32>
      %270 = arith.shli %false_1, %false_25 : i1
      %271 = arith.remui %c25621_i16, %extracted_28 : i16
      %272 = scf.while (%arg3 = %extracted_28) : (i16) -> i16 {
        %dest_52, %accumulated_value_53 = vector.scan <maxf>, %81, %91 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
        %274 = index.sizeof
        %275 = index.divs %c3, %c13
        %276 = index.sizeof
        %277 = index.add %c11, %79
        %278 = arith.muli %arg3, %c-32520_i16 : i16
        %279 = math.floor %141 : tensor<14x10xf16>
        %280 = arith.muli %false_1, %false_25 : i1
        scf.condition(%false_6) %extracted_28 : i16
      } do {
      ^bb0(%arg3: i16):
        %274 = arith.remf %126, %extracted : f32
        %275 = math.roundeven %19 : tensor<6xf32>
        %alloc_52 = memref.alloc() : memref<14x6xi32>
        memref.tensor_store %from_elements_22, %alloc_52 : memref<14x6xi32>
        %276 = index.divu %59, %147
        %277 = arith.mulf %cst_4, %extracted : f32
        %278 = math.copysign %134, %80 : f16
        %279 = arith.maxsi %extracted_28, %extracted_28 : i16
        %alloca = memref.alloca() : memref<14x10xi1>
        %280 = arith.minsi %arg3, %extracted_28 : i16
        %281 = index.add %165, %c8
        %282 = tensor.empty() : tensor<i32>
        %283 = math.fpowi %23, %282 : tensor<f32>, tensor<i32>
        %284 = arith.ori %c1702488874_i32, %c2019218376_i32 : i32
        %285 = arith.cmpi eq, %154, %154 : i32
        %inserted_53 = tensor.insert %false_1 into %expanded_24[%c1, %c5, %c0] : tensor<16x14x1xi1>
        %286 = vector.insert %cst_5, %48 [3] : f16 into vector<6xf16>
        %287 = index.ceildivu %c6, %281
        scf.yield %c-32520_i16 : i16
      }
      %273 = index.ceildivs %c2, %135
      %alloc_51 = memref.alloc() : memref<16x14xi16>
      affine.yield %alloc_51 : memref<16x14xi16>
    } else {
      %dest_51, %accumulated_value_52 = vector.scan <xor>, %106, %45 {inclusive = true, reduction_dim = 1 : i64} : vector<16x14xi1>, vector<16xi1>
      %267 = arith.cmpi sge, %c-32520_i16, %extracted_28 : i16
      %268 = index.sub %54, %c11
      %269 = index.divs %143, %c15
      %270 = vector.shuffle %41, %41 [2, 5, 7, 8, 14, 17, 21, 22, 24, 25, 26, 27, 29, 30, 31] : vector<16x14xf16>, vector<16x14xf16>
      %271 = arith.cmpf false, %80, %134 : f16
      %from_elements_53 = tensor.from_elements %extracted_28, %c-14197_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %extracted_28, %c-32520_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %c-32520_i16, %c-32520_i16, %c25621_i16, %extracted_28, %extracted_28, %extracted_28, %extracted_28, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c25621_i16, %extracted_28, %c25621_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %extracted_28, %extracted_28, %c-14197_i16, %extracted_28, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %extracted_28, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c-32520_i16 : tensor<14x6xi16>
      %272 = math.atan %18 : tensor<14x16xf32>
      %alloc_54 = memref.alloc() : memref<16x14xi16>
      affine.yield %alloc_54 : memref<16x14xi16>
    }
    %from_elements_37 = tensor.from_elements %134, %134, %cst_2, %80, %cst_2, %cst_5, %cst_2, %80, %cst_2, %cst_2, %80, %134, %cst_2, %cst_5, %cst_2, %80, %cst_2, %134, %cst_5, %134, %134, %80, %134, %cst_2, %134, %cst_2, %cst_5, %cst_5, %134, %80, %cst_2, %80, %cst_5, %cst_5, %80, %cst_2, %cst_2, %cst_5, %80, %80, %80, %134, %cst_5, %cst_5, %80, %cst_2, %cst_2, %134, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %134, %134, %cst_2, %134, %cst_5, %cst_2, %cst_5, %80, %80, %134, %cst_5, %80, %80, %134, %134, %cst_2, %80, %cst_2, %cst_5, %80, %cst_2, %cst_5, %80, %80, %80, %cst_5, %cst_5, %cst_5, %80, %cst_5, %cst_2, %134, %80, %cst_5, %134, %80, %80, %cst_2, %80, %cst_2, %134, %cst_2, %cst_5, %134, %134, %cst_2, %134 : tensor<10x10xf16>
    %alloc_38 = memref.alloc() : memref<6x16xi1>
    %174 = tensor.empty() : tensor<14x16xi1>
    %175 = linalg.matmul ins(%15, %alloc_38 : tensor<14x6xi1>, memref<6x16xi1>) outs(%174 : tensor<14x16xi1>) -> tensor<14x16xi1>
    %176 = arith.divsi %c-14197_i16, %c-32520_i16 : i16
    %dest_39, %accumulated_value_40 = vector.scan <maxf>, %81, %91 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
    %177 = math.ceil %reduced : tensor<6xf32>
    %178 = vector.extract_strided_slice %46 {offsets = [11], sizes = [4], strides = [1]} : vector<16xf32> to vector<4xf32>
    %179 = arith.addf %cst_4, %cst_3 : f32
    %180 = math.sqrt %5 : tensor<16x14xf32>
    %181 = math.absi %7 : tensor<14x10xi64>
    %182 = arith.remf %cst_3, %extracted : f32
    %183 = scf.while (%arg3 = %alloc_8) : (memref<10x10xf32>) -> memref<10x10xf32> {
      %267 = math.ctlz %171 : tensor<6xi32>
      %268 = vector.extract_strided_slice %41 {offsets = [6], sizes = [6], strides = [1]} : vector<16x14xf16> to vector<6x14xf16>
      %269 = math.exp2 %cst_4 : f32
      %270 = memref.atomic_rmw maxu %c-32520_i16, %alloc_19[%c2, %c1] : (i16, memref<14x6xi16>) -> i16
      %271 = math.exp2 %75 : f32
      scf.if %false_6 {
        %273 = vector.extract_strided_slice %170 {offsets = [1], sizes = [5], strides = [1]} : vector<10xi32> to vector<5xi32>
        %274 = bufferization.clone %alloc_14 : memref<14x10xi32> to memref<14x10xi32>
        %275 = math.copysign %cst_5, %cst_5 : f16
        %276 = bufferization.to_memref %from_elements : memref<14x6xi32>
        %277 = bufferization.to_memref %generated_31 : memref<?x?xi1>
        %278 = arith.addi %false_25, %false_6 : i1
        %279 = math.atan2 %22, %19 : tensor<6xf32>
        %280 = math.exp2 %134 : f16
      }
      memref.copy %arg3, %alloc_8 : memref<10x10xf32> to memref<10x10xf32>
      %272 = arith.maxsi %c-14197_i16, %c25621_i16 : i16
      scf.condition(%false_1) %alloc_8 : memref<10x10xf32>
    } do {
    ^bb0(%arg3: memref<10x10xf32>):
      %267 = math.log2 %23 : tensor<f32>
      %268 = vector.extract_strided_slice %169 {offsets = [4], sizes = [4], strides = [1]} : vector<10xi1> to vector<4xi1>
      %269 = vector.extract %139[0] : vector<14x6xi16>
      %270 = arith.cmpf ueq, %extracted, %126 : f32
      %271 = arith.shrui %154, %c2019218376_i32 : i32
      %272 = tensor.empty() : tensor<14x10xi64>
      %273 = bufferization.to_memref %14 : memref<14x10xi16>
      %274 = affine.if affine_set<(d0) : ((d0 mod 128) * 2 == 0, 33 >= 0, d0 mod 128 == 0)>(%c6) -> f32 {
        %280 = vector.transpose %46, [0] : vector<16xf32> to vector<16xf32>
        %281 = index.sizeof
        %282 = vector.transpose %268, [0] : vector<4xi1> to vector<4xi1>
        %283 = index.sub %c3, %c15
        %284 = arith.andi %extracted_28, %c-14197_i16 : i16
        %285 = arith.minui %154, %154 : i32
        %286 = math.fma %from_elements_37, %from_elements_37, %from_elements_37 : tensor<10x10xf16>
        %287 = math.copysign %transposed, %18 : tensor<14x16xf32>
        affine.yield %cst_3 : f32
      } else {
        %cast_52 = tensor.cast %14 : tensor<14x10xi16> to tensor<?x?xi16>
        %280 = math.absi %2 : tensor<16x14xi1>
        %281 = math.fpowi %cst, %c2019218376_i32 : f32, i32
        %extracted_53 = tensor.extract %15[%c4, %c2] : tensor<14x6xi1>
        memref.store %80, %alloc_20[%c8, %c10] : memref<16x14xf16>
        %282 = vector.broadcast %false : i1 to vector<6xi1>
        %283 = vector.maskedload %alloc_12[%c4, %c9], %282, %282 : memref<10x10xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %284 = arith.xori %extracted_28, %c25621_i16 : i16
        %285 = math.ipowi %11, %10 : tensor<14x10xi1>
        affine.yield %extracted : f32
      }
      %275 = scf.index_switch %143 -> vector<16x14xi16> 
      case 1 {
        %280 = index.maxs %101, %101
        %281 = vector.broadcast %126 : f32 to vector<16x16xf32>
        %282 = vector.outerproduct %46, %46, %281 {kind = #vector.kind<add>} : vector<16xf32>, vector<16xf32>
        %283 = index.ceildivu %c2, %c6
        %284 = arith.remf %cst_3, %75 : f32
        %285 = index.sub %147, %c13
        %286 = memref.load %alloc_16[%c4, %c0] : memref<14x6xf16>
        memref.store %cst_2, %alloc_9[%c2, %c1] : memref<14x10xf16>
        affine.store %false_0, %alloc_17[%c4, %c1] : memref<10x10xi1>
        %from_elements_52 = tensor.from_elements %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64 : tensor<16x14xi64>
        %287 = vector.insert %269, %139 [10] : vector<6xi16> into vector<14x6xi16>
        %splat_53 = tensor.splat %126 : tensor<10x10xf32>
        %288 = vector.transpose %41, [1, 0] : vector<16x14xf16> to vector<14x16xf16>
        memref.tensor_store %11, %88 : memref<14x10xi1>
        %289 = index.divu %285, %c14
        %290 = vector.extract_strided_slice %44 {offsets = [5], sizes = [8], strides = [1]} : vector<16xf32> to vector<8xf32>
        %inserted_54 = tensor.insert %c2019218376_i32 into %16[%c6, %c1] : tensor<14x6xi32>
        %291 = vector.broadcast %c-14197_i16 : i16 to vector<16x14xi16>
        scf.yield %291 : vector<16x14xi16>
      }
      default {
        %280 = math.ctpop %10 : tensor<14x10xi1>
        %281 = arith.divsi %extracted_28, %c-14197_i16 : i16
        %282 = memref.load %273[%c8, %c2] : memref<14x10xi16>
        %283 = index.sub %c6, %122
        %284 = vector.broadcast %false_25 : i1 to vector<i1>
        %285 = vector.transfer_write %284, %15[%c11, %c7] : vector<i1>, tensor<14x6xi1>
        %286 = memref.atomic_rmw andi %154, %28[%c1, %c0] : (i32, memref<16x14xi32>) -> i32
        %287 = vector.reduction <minui>, %268 : vector<4xi1> into i1
        %288 = math.ipowi %4, %9 : tensor<14x6xi32>
        bufferization.dealloc_tensor %118 : tensor<14x10xi32>
        %289 = math.ctlz %c1637224188_i64 : i64
        %290 = vector.insert %false_6, %60 [4] : i1 into vector<16xi1>
        %291 = bufferization.clone %alloc_8 : memref<10x10xf32> to memref<10x10xf32>
        %292 = index.maxs %c6, %283
        memref.store %false, %alloc_12[%c0, %c2] : memref<10x10xi1>
        %293 = arith.minui %false_6, %false : i1
        %294 = vector.broadcast %54 : index to vector<14xindex>
        %295 = vector.broadcast %false_0 : i1 to vector<14xi1>
        %296 = vector.broadcast %c-32520_i16 : i16 to vector<14xi16>
        vector.scatter %alloc_19[%c10, %c3] [%294], %295, %296 : memref<14x6xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %297 = vector.broadcast %c25621_i16 : i16 to vector<16x14xi16>
        scf.yield %297 : vector<16x14xi16>
      }
      %276 = affine.apply affine_map<(d0, d1) -> (d0 - d1 - 128)>(%101, %c15)
      %277 = arith.divsi %154, %c2019218376_i32 : i32
      %278 = bufferization.clone %alloc_19 : memref<14x6xi16> to memref<14x6xi16>
      memref.assume_alignment %alloc_9, 4 : memref<14x10xf16>
      bufferization.dealloc_tensor %1 : tensor<14x6xi32>
      %inserted_51 = tensor.insert %c1702488874_i32 into %8[%c4, %c3] : tensor<16x14xi32>
      %279 = math.copysign %13, %13 : tensor<16x14xf16>
      scf.yield %arg3 : memref<10x10xf32>
    }
    %184 = vector.shuffle %107, %170 [1, 3, 4, 6, 8, 10, 11, 12, 13, 14, 18] : vector<10xi32>, vector<10xi32>
    %185 = arith.minui %c-14197_i16, %c-32520_i16 : i16
    %186 = index.divs %30, %c1
    %187 = arith.addf %75, %extracted : f32
    %alloc_41 = memref.alloc() : memref<6x10xi1>
    %188 = tensor.empty() : tensor<14x10xi1>
    %189 = linalg.matmul ins(%15, %alloc_41 : tensor<14x6xi1>, memref<6x10xi1>) outs(%188 : tensor<14x10xi1>) -> tensor<14x10xi1>
    %alloc_42 = memref.alloc() : memref<14x10xi1>
    memref.copy %88, %alloc_42 : memref<14x10xi1> to memref<14x10xi1>
    %190 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128)>(%c5, %26, %c2, %c15)
    %191 = index.add %79, %c7
    %192 = math.rsqrt %from_elements_37 : tensor<10x10xf16>
    %193 = vector.shuffle %139, %139 [0, 1, 2, 4, 8, 9, 10, 11, 12, 14, 15, 16, 18, 19, 20, 21, 27] : vector<14x6xi16>, vector<14x6xi16>
    %194 = tensor.empty() : tensor<14xi1>
    %195 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%194 : tensor<14xi1>) outs(%expanded_36 : tensor<16x14x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %267 = arith.divsi %false_1, %false_0 : i1
      %268 = tensor.empty() : tensor<i32>
      %269 = math.fpowi %23, %268 : tensor<f32>, tensor<i32>
      %270 = affine.min affine_map<(d0, d1) -> (d1 + 1, d0 ceildiv 4)>(%c1, %26)
      %expanded_51 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<10x10xi16> into tensor<10x10x1xi16>
      %271 = index.divu %124, %121
      %272 = arith.cmpf uno, %75, %cst : f32
      %alloc_52 = memref.alloc() : memref<14xi1>
      %273 = memref.realloc %alloc_52 : memref<14xi1> to memref<6xi1>
      %274 = vector.broadcast %extracted_28 : i16 to vector<6xi16>
      %dest_53, %accumulated_value_54 = vector.scan <minui>, %139, %274 {inclusive = false, reduction_dim = 0 : i64} : vector<14x6xi16>, vector<6xi16>
      %275 = arith.minf %cst_4, %75 : f32
      %276 = index.ceildivu %c13, %190
      %277 = math.atan %24 : tensor<f32>
      %278 = math.log2 %13 : tensor<16x14xf16>
      %279 = arith.xori %137, %154 : i32
      %280 = arith.shrui %c-14197_i16, %extracted_28 : i16
      %281 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
      %282 = vector.outerproduct %178, %178, %281 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
      %283 = vector.broadcast %false_1 : i1 to vector<6xi1>
      %284 = vector.maskedload %alloc_11[%c3, %c4], %283, %48 : memref<10x10xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      %285 = math.expm1 %cst_5 : f16
      %alloc_55 = memref.alloc() : memref<14x16xi1>
      memref.tensor_store %174, %alloc_55 : memref<14x16xi1>
      %cast_56 = tensor.cast %15 : tensor<14x6xi1> to tensor<?x?xi1>
      %286 = math.rsqrt %from_elements_37 : tensor<10x10xf16>
      %287 = vector.broadcast %cst_3 : f32 to vector<16x16xf32>
      %288 = vector.outerproduct %46, %44, %287 {kind = #vector.kind<maxf>} : vector<16xf32>, vector<16xf32>
      %alloca = memref.alloca() : memref<10x10xi1>
      %289 = vector.bitcast %283 : vector<6xi1> to vector<6xi1>
      %290 = index.ceildivu %84, %271
      %291 = math.exp %13 : tensor<16x14xf16>
      %292 = arith.cmpf ult, %extracted, %126 : f32
      %from_elements_57 = tensor.from_elements %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64 : tensor<10x10xi64>
      %293 = math.atan2 %134, %134 : f16
      %294 = vector.bitcast %169 : vector<10xi1> to vector<10xi1>
      %295 = index.divu %c0, %290
      %296 = index.floordivs %c14, %c13
      %297 = arith.addf %126, %cst : f32
      linalg.yield %false_0 : i1
    } -> tensor<16x14x1xi1>
    %196 = math.sqrt %5 : tensor<16x14xf32>
    %197 = math.ipowi %2, %2 : tensor<16x14xi1>
    %198 = index.divs %143, %79
    %199 = math.tan %24 : tensor<f32>
    %200 = arith.shrui %false_25, %false_25 : i1
    %inserted_43 = tensor.insert %c2019218376_i32 into %9[%c12, %c4] : tensor<14x6xi32>
    %201 = arith.mulf %extracted, %75 : f32
    %202 = memref.atomic_rmw mins %137, %28[%c2, %c12] : (i32, memref<16x14xi32>) -> i32
    %203 = index.maxs %c0, %c9
    %204 = math.exp %141 : tensor<14x10xf16>
    %205 = memref.atomic_rmw andi %c2019218376_i32, %28[%c9, %c3] : (i32, memref<16x14xi32>) -> i32
    %206 = vector.splat %cst_3 : vector<14x10xf32>
    %207 = arith.cmpi ne, %false_1, %false_6 : i1
    memref.assume_alignment %alloc_9, 16 : memref<14x10xf16>
    %208 = math.copysign %80, %80 : f16
    %209 = memref.atomic_rmw minu %154, %28[%c8, %c6] : (i32, memref<16x14xi32>) -> i32
    %210 = arith.muli %c2019218376_i32, %137 : i32
    %alloc_44 = memref.alloc() : memref<16xi64>
    %211 = memref.realloc %alloc_44 : memref<16xi64> to memref<16xi64>
    %212 = arith.remf %cst_4, %75 : f32
    %213 = math.absi %162 : tensor<14x10xi1>
    %214 = memref.load %alloc_8[%c1, %c2] : memref<10x10xf32>
    %215 = math.expm1 %19 : tensor<6xf32>
    %216 = math.log2 %splat : tensor<14x6xf32>
    memref.tensor_store %from_elements_37, %alloc_11 : memref<10x10xf16>
    %217 = vector.broadcast %c9 : index to vector<10xindex>
    %218 = vector.broadcast %c1637224188_i64 : i64 to vector<10xi64>
    vector.scatter %alloc_10[%c7, %c2] [%217], %169, %218 : memref<16x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
    %219 = vector.insert %cst_2, %42 [5] : f16 into vector<16xf16>
    %220 = index.add %186, %c0
    %221 = vector.splat %165 : vector<14x6xindex>
    %222 = index.add %c13, %30
    %223 = arith.muli %154, %154 : i32
    %224 = vector.bitcast %139 : vector<14x6xi16> to vector<14x6xi16>
    %225 = index.casts %c2080863597_i64 : i64 to index
    %226 = math.tanh %23 : tensor<f32>
    %from_elements_45 = tensor.from_elements %c25621_i16, %extracted_28, %extracted_28, %c-14197_i16, %extracted_28, %c25621_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %extracted_28, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %extracted_28, %extracted_28, %c25621_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %extracted_28, %extracted_28, %c-14197_i16, %extracted_28, %extracted_28, %extracted_28, %c-14197_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %extracted_28, %c25621_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %extracted_28, %extracted_28, %extracted_28, %c-14197_i16, %extracted_28, %extracted_28, %c-14197_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-14197_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %extracted_28, %c-32520_i16, %c25621_i16, %c25621_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %extracted_28, %c-32520_i16, %extracted_28, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %extracted_28, %c25621_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %extracted_28, %extracted_28, %extracted_28, %c25621_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %extracted_28, %extracted_28, %c-14197_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-32520_i16, %c25621_i16, %extracted_28, %c-32520_i16, %extracted_28, %c25621_i16, %extracted_28, %c-14197_i16, %extracted_28, %extracted_28, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-32520_i16 : tensor<14x10xi16>
    %227 = math.log10 %18 : tensor<14x16xf32>
    %228 = math.exp %cst_4 : f32
    %229 = scf.while (%arg3 = %28) : (memref<16x14xi32>) -> memref<16x14xi32> {
      %267 = arith.andi %false_25, %false_6 : i1
      memref.alloca_scope  {
        %271 = index.sub %101, %101
        %272 = vector.broadcast %false_25 : i1 to vector<10x10xi1>
        %273 = vector.outerproduct %169, %169, %272 {kind = #vector.kind<minui>} : vector<10xi1>, vector<10xi1>
        %274 = memref.load %alloc_14[%c8, %c8] : memref<14x10xi32>
        %275 = math.log2 %19 : tensor<6xf32>
        %276 = vector.broadcast %c11 : index to vector<10xindex>
        %277 = vector.broadcast %cst_3 : f32 to vector<10xf32>
        vector.scatter %alloc_8[%c5, %c7] [%276], %169, %277 : memref<10x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %278 = math.ipowi %8, %8 : tensor<16x14xi32>
        %alloc_52 = memref.alloc() : memref<10x10xf16>
        %inserted_53 = tensor.insert %extracted into %24[] : tensor<f32>
        %279 = bufferization.clone %88 : memref<14x10xi1> to memref<14x10xi1>
        %280 = arith.cmpf ult, %80, %80 : f16
        %281 = memref.load %alloc[%c11, %c13] : memref<16x14xi32>
        %282 = math.sqrt %from_elements_37 : tensor<10x10xf16>
        %alloc_54 = memref.alloc() : memref<14x6xi32>
        memref.tensor_store %9, %alloc_54 : memref<14x6xi32>
        %cast_55 = tensor.cast %8 : tensor<16x14xi32> to tensor<?x?xi32>
        %283 = index.maxu %30, %c15
        %284 = arith.remf %126, %75 : f32
        %285 = arith.mulf %126, %126 : f32
        %286 = affine.min affine_map<(d0, d1) -> (d0, 0)>(%30, %c7)
        %287 = bufferization.to_memref %15 : memref<14x6xi1>
        %288 = vector.broadcast %extracted : f32 to vector<16x16xf32>
        %289 = vector.outerproduct %44, %44, %288 {kind = #vector.kind<add>} : vector<16xf32>, vector<16xf32>
        %290 = affine.apply affine_map<(d0, d1) -> (d1 - 4)>(%27, %122)
        %291 = vector.broadcast %false : i1 to vector<14xi1>
        %292 = vector.insert %291, %106 [7] : vector<14xi1> into vector<16x14xi1>
        affine.store %154, %alloc[%c7, %c7] : memref<16x14xi32>
        %293 = vector.matrix_multiply %48, %48 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
        %294 = vector.load %alloc[%c1, %c0] : memref<16x14xi32>, vector<10x10xi32>
        memref.store %cst_4, %alloc_15[%c8, %c1] : memref<14x6xf32>
        %295 = arith.remf %cst_2, %cst_5 : f16
        %296 = vector.insert %cst_2, %48 [3] : f16 into vector<6xf16>
        %297 = arith.remsi %false_0, %false_25 : i1
        %298 = index.floordivs %191, %c4
        %299 = arith.mulf %cst_4, %cst : f32
        %300 = math.exp %cst_4 : f32
      }
      scf.index_switch %225 
      case 1 {
        %271 = bufferization.clone %alloc_8 : memref<10x10xf32> to memref<10x10xf32>
        %extracted_52 = tensor.extract %7[%c5, %c5] : tensor<14x10xi64>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %169, %169, %false_25 : vector<10xi1>, vector<10xi1> into i1
        %273 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2) ceildiv 4 - 8, -((d0 + d2) ceildiv 4))>(%54, %c11, %c13)
        %274 = math.log1p %cst_5 : f16
        %275 = math.roundeven %23 : tensor<f32>
        %expanded_53 = tensor.expand_shape %19 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %alloc_54 = memref.alloc() : memref<14x10xi1>
        %276 = index.divu %27, %190
        %277 = index.floordivs %147, %c14
        %from_elements_55 = tensor.from_elements %126, %cst_4, %cst_4, %extracted, %75, %cst_4, %cst_3, %cst_3, %cst_4, %cst_3, %cst_4, %cst_4, %extracted, %cst_3, %extracted, %extracted, %cst_4, %extracted, %cst, %cst_3, %75, %cst_3, %75, %75, %126, %75, %cst, %126, %cst_3, %126, %126, %75, %cst_4, %126, %cst_3, %75, %cst_3, %cst_4, %cst_3, %cst, %cst, %extracted, %cst_4, %cst_3, %126, %126, %75, %extracted, %cst, %extracted, %126, %75, %126, %cst, %126, %126, %cst_4, %75, %extracted, %cst, %75, %75, %extracted, %extracted, %cst_3, %cst_3, %extracted, %126, %75, %126, %cst_3, %75, %cst_4, %cst_4, %cst, %cst_3, %126, %126, %cst_4, %cst_4, %cst_4, %cst_3, %cst, %75, %cst, %extracted, %cst_3, %126, %cst_4, %126, %extracted, %extracted, %cst, %126, %75, %cst, %cst_4, %extracted, %cst_4, %extracted : tensor<10x10xf32>
        %extracted_56 = tensor.extract %0[%c9, %c4] : tensor<14x6xi1>
        %278 = arith.xori %c-32520_i16, %c-32520_i16 : i16
        %279 = tensor.empty() : tensor<6x6xi32>
        %280 = tensor.empty() : tensor<14x6xi32>
        %281 = linalg.matmul ins(%16, %279 : tensor<14x6xi32>, tensor<6x6xi32>) outs(%280 : tensor<14x6xi32>) -> tensor<14x6xi32>
        %splat_57 = tensor.splat %false_0 : tensor<14x6xi1>
        %from_elements_58 = tensor.from_elements %c2080863597_i64, %extracted_52, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %extracted_52, %extracted_52, %c1637224188_i64, %c1637224188_i64, %extracted_52, %extracted_52, %extracted_52, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c2080863597_i64, %extracted_52, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c1637224188_i64, %extracted_52, %extracted_52, %c1637224188_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %extracted_52, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %extracted_52, %extracted_52, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %extracted_52, %extracted_52, %c2080863597_i64, %extracted_52, %c1637224188_i64, %extracted_52, %extracted_52, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %extracted_52, %c2080863597_i64, %extracted_52, %extracted_52, %extracted_52, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %extracted_52, %extracted_52, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %extracted_52, %extracted_52, %c1637224188_i64, %extracted_52, %c1637224188_i64, %extracted_52, %c2080863597_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %extracted_52, %extracted_52, %extracted_52, %c2080863597_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %extracted_52, %extracted_52, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %extracted_52, %c2080863597_i64, %extracted_52, %extracted_52, %extracted_52, %extracted_52, %extracted_52, %c2080863597_i64, %c2080863597_i64, %extracted_52, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64 : tensor<16x14xi64>
        scf.yield
      }
      case 2 {
        %271 = affine.load %28[%c3, %c5] : memref<16x14xi32>
        %272 = index.maxu %54, %186
        %273 = math.copysign %cst, %cst_3 : f32
        %274 = math.log2 %23 : tensor<f32>
        %275 = memref.load %alloc_16[%c8, %c4] : memref<14x6xf16>
        memref.store %c25621_i16, %alloc_19[%c5, %c2] : memref<14x6xi16>
        %276 = bufferization.to_tensor %alloc_15 : memref<14x6xf32>
        %277 = arith.negf %extracted : f32
        %278 = arith.divsi %c25621_i16, %c-14197_i16 : i16
        %279 = memref.load %alloc_12[%c9, %c9] : memref<10x10xi1>
        memref.assume_alignment %alloc_13, 4 : memref<14x6xf32>
        %280 = math.copysign %134, %cst_5 : f16
        %281 = vector.bitcast %46 : vector<16xf32> to vector<16xf32>
        %282 = math.tanh %reduced : tensor<6xf32>
        %283 = vector.broadcast %75 : f32 to vector<16xf32>
        %284 = vector.transfer_write %283, %5[%124, %135] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, tensor<16x14xf32>
        %alloc_52 = memref.alloc() : memref<6x14xi1>
        %285 = tensor.empty() : tensor<14x14xi1>
        %286 = linalg.matmul ins(%15, %alloc_52 : tensor<14x6xi1>, memref<6x14xi1>) outs(%285 : tensor<14x14xi1>) -> tensor<14x14xi1>
        scf.yield
      }
      case 3 {
        %271 = vector.broadcast %220 : index to vector<16xindex>
        vector.scatter %alloc_8[%c3, %c3] [%271], %60, %44 : memref<10x10xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %272 = arith.divf %75, %cst_3 : f32
        %273 = arith.divsi %137, %154 : i32
        %274 = index.sub %135, %220
        %275 = vector.broadcast %false_25 : i1 to vector<14xi1>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %106, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xi1>, vector<14xi1>
        %276 = math.fma %cst_3, %cst_4, %75 : f32
        %277 = affine.apply affine_map<(d0) -> (-d0)>(%c7)
        %expanded_54 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<16x14xf32> into tensor<16x14x1xf32>
        %278 = vector.splat %c2019218376_i32 : vector<10x10xi32>
        %279 = math.log1p %5 : tensor<16x14xf32>
        %280 = math.ceil %22 : tensor<6xf32>
        %281 = vector.reduction <minf>, %42 : vector<16xf16> into f16
        %282 = arith.ceildivsi %c2019218376_i32, %154 : i32
        %extracted_55 = tensor.extract %0[%c0, %c4] : tensor<14x6xi1>
        %283 = vector.broadcast %c-32520_i16 : i16 to vector<14xi16>
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %224, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<14x6xi16>, vector<14xi16>
        %284 = math.tanh %reduced : tensor<6xf32>
        scf.yield
      }
      default {
        %271 = index.sub %c15, %c2
        %272 = arith.negf %cst_3 : f32
        %273 = math.exp2 %13 : tensor<16x14xf16>
        %274 = vector.extract %46[7] : vector<16xf32>
        %275 = memref.load %alloc_18[%c9, %c5] : memref<14x10xf32>
        %276 = bufferization.to_tensor %alloc_16 : memref<14x6xf16>
        %277 = math.round %18 : tensor<14x16xf32>
        %278 = bufferization.to_tensor %alloc_13 : memref<14x6xf32>
        %279 = math.roundeven %extracted : f32
        %280 = index.maxs %190, %198
        %281 = vector.reduction <minui>, %170 : vector<10xi32> into i32
        %282 = vector.extract_strided_slice %81 {offsets = [0], sizes = [9], strides = [1]} : vector<10x10xf16> to vector<9x10xf16>
        %283 = arith.ori %c2019218376_i32, %137 : i32
        %284 = vector.create_mask %c10, %c7 : vector<14x6xi1>
        %285 = vector.broadcast %154 : i32 to vector<14x6xi32>
        %286 = vector.gather %alloc_19[%c11, %147] [%285], %284, %224 : memref<14x6xi16>, vector<14x6xi32>, vector<14x6xi1>, vector<14x6xi16> into vector<14x6xi16>
        %287 = index.floordivs %271, %124
      }
      %268 = arith.negf %cst_5 : f16
      %generated_51 = tensor.generate %84 {
      ^bb0(%arg4: index, %arg5: index):
        %271 = bufferization.to_memref %171 : memref<6xi32>
        %272 = arith.floordivsi %154, %154 : i32
        %273 = index.divs %147, %c10
        %274 = vector.extract_strided_slice %46 {offsets = [12], sizes = [2], strides = [1]} : vector<16xf32> to vector<2xf32>
        tensor.yield %false_0 : i1
      } : tensor<?x10xi1>
      %269 = vector.insert %75, %46 [10] : f32 into vector<16xf32>
      %270 = arith.cmpf ult, %126, %126 : f32
      affine.for %arg4 = 0 to 38 {
      }
      scf.condition(%false_0) %28 : memref<16x14xi32>
    } do {
    ^bb0(%arg3: memref<16x14xi32>):
      %267 = arith.cmpi sle, %c1637224188_i64, %c1637224188_i64 : i64
      %268 = math.ctlz %7 : tensor<14x10xi64>
      %269 = arith.ori %c-14197_i16, %c25621_i16 : i16
      %270 = index.sub %c13, %135
      %271 = math.cttz %8 : tensor<16x14xi32>
      %272 = math.ctpop %9 : tensor<14x6xi32>
      %273 = affine.load %28[%c10, %c3] : memref<16x14xi32>
      %274 = memref.atomic_rmw muli %c1702488874_i32, %28[%c13, %c7] : (i32, memref<16x14xi32>) -> i32
      %275 = math.roundeven %13 : tensor<16x14xf16>
      %alloc_51 = memref.alloc() : memref<6x16xi1>
      %276 = tensor.empty() : tensor<14x16xi1>
      %277 = linalg.matmul ins(%0, %alloc_51 : tensor<14x6xi1>, memref<6x16xi1>) outs(%276 : tensor<14x16xi1>) -> tensor<14x16xi1>
      %278 = arith.xori %c1637224188_i64, %c1637224188_i64 : i64
      %279 = math.log2 %22 : tensor<6xf32>
      %dest_52, %accumulated_value_53 = vector.scan <minf>, %81, %91 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
      %280 = math.roundeven %13 : tensor<16x14xf16>
      %281 = math.atan2 %24, %24 : tensor<f32>
      %282 = vector.create_mask %132, %203 : vector<10x10xi1>
      scf.yield %alloc : memref<16x14xi32>
    }
    %230 = arith.remui %c2019218376_i32, %154 : i32
    %231 = affine.apply affine_map<(d0, d1, d2) -> (((d1 * 4) floordiv 64 - 2) ceildiv 4)>(%c3, %c12, %c5)
    %232 = scf.while (%arg3 = %c1702488874_i32) : (i32) -> i32 {
      memref.copy %alloc_15, %alloc_13 : memref<14x6xf32> to memref<14x6xf32>
      %267 = math.exp %from_elements_37 : tensor<10x10xf16>
      %268 = affine.load %alloc_11[%c8, %c0] : memref<10x10xf16>
      bufferization.dealloc_tensor %8 : tensor<16x14xi32>
      %269 = arith.floordivsi %c-14197_i16, %extracted_28 : i16
      %270 = memref.load %alloc_7[%c6, %c0] : memref<10x10xi32>
      %271 = arith.remui %false_25, %false_25 : i1
      %272 = index.mul %c8, %c0
      scf.condition(%false_1) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):
      %267 = vector.multi_reduction <maxsi>, %45, %45 [] : vector<16xi1> to vector<16xi1>
      %268 = affine.apply affine_map<(d0) -> (1)>(%c1)
      %269 = vector.multi_reduction <mul>, %45, %false_6 [0] : vector<16xi1> to i1
      %270 = arith.ori %c2080863597_i64, %c2080863597_i64 : i64
      %271 = math.fpowi %141, %118 : tensor<14x10xf16>, tensor<14x10xi32>
      %272 = index.add %c15, %30
      %273 = arith.maxf %80, %cst_5 : f16
      %274 = index.divs %225, %27
      %275 = tensor.empty() : tensor<16x10xf16>
      %276 = linalg.matmul ins(%13, %141 : tensor<16x14xf16>, tensor<14x10xf16>) outs(%275 : tensor<16x10xf16>) -> tensor<16x10xf16>
      %277 = vector.extract_strided_slice %42 {offsets = [8], sizes = [7], strides = [1]} : vector<16xf16> to vector<7xf16>
      %278 = index.floordivs %220, %198
      %279 = bufferization.clone %88 : memref<14x10xi1> to memref<14x10xi1>
      %280 = arith.divsi %137, %arg3 : i32
      memref.tensor_store %162, %88 : memref<14x10xi1>
      %281 = math.rsqrt %5 : tensor<16x14xf32>
      %282 = vector.matrix_multiply %169, %169 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      scf.yield %137 : i32
    }
    %233 = arith.subi %extracted_28, %c25621_i16 : i16
    %collapsed_46 = tensor.collapse_shape %6 [[0, 1]] : tensor<10x10xi16> into tensor<100xi16>
    %alloc_47 = memref.alloc() : memref<14x6xi32>
    memref.tensor_store %9, %alloc_47 : memref<14x6xi32>
    %234 = math.log10 %reduced : tensor<6xf32>
    scf.execute_region {
      %267 = math.expm1 %5 : tensor<16x14xf32>
      %extracted_51 = tensor.extract %8[%c7, %c4] : tensor<16x14xi32>
      memref.store %extracted, %alloc_13[%c5, %c2] : memref<14x6xf32>
      %268 = scf.index_switch %165 -> i64 
      case 1 {
        %281 = arith.floordivsi %c2019218376_i32, %c1702488874_i32 : i32
        %cast_53 = tensor.cast %9 : tensor<14x6xi32> to tensor<?x?xi32>
        %282 = bufferization.clone %alloc_14 : memref<14x10xi32> to memref<14x10xi32>
        %283 = arith.muli %c2080863597_i64, %c2080863597_i64 : i64
        %284 = arith.shli %false_25, %false : i1
        %285 = affine.apply affine_map<(d0) -> (1)>(%135)
        %286 = math.roundeven %80 : f16
        %287 = vector.shuffle %107, %107 [0, 1, 3, 4, 6, 8, 11, 12, 15, 16, 19] : vector<10xi32>, vector<10xi32>
        %288 = affine.max affine_map<(d0) -> (d0 * -5)>(%132)
        %289 = math.exp2 %24 : tensor<f32>
        %from_elements_54 = tensor.from_elements %80, %134, %cst_2, %134, %cst_2, %cst_2, %134, %cst_5, %cst_2, %134, %134, %80, %cst_5, %cst_5, %134, %cst_5, %134, %cst_5, %cst_2, %cst_5, %80, %cst_2, %134, %80, %80, %cst_5, %134, %cst_5, %80, %80, %cst_5, %80, %134, %cst_5, %134, %134, %cst_2, %80, %cst_2, %134, %80, %cst_2, %cst_2, %80, %cst_2, %cst_2, %134, %134, %80, %cst_5, %80, %134, %134, %134, %80, %cst_5, %134, %cst_5, %134, %cst_5, %134, %cst_5, %cst_2, %cst_2, %cst_2, %134, %cst_5, %80, %cst_2, %134, %134, %80, %80, %cst_5, %134, %cst_5, %cst_2, %cst_5, %134, %80, %134, %80, %cst_2, %cst_5, %cst_5, %80, %cst_5, %134, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %134, %cst_5, %134, %80, %80 : tensor<10x10xf16>
        %290 = arith.divsi %c1637224188_i64, %c2080863597_i64 : i64
        %alloc_55 = memref.alloc() : memref<10x10xf16>
        memref.copy %alloc_11, %alloc_55 : memref<10x10xf16> to memref<10x10xf16>
        %291 = vector.splat %124 : vector<14x6xindex>
        %292 = math.absi %splat_30 : tensor<10x10xi1>
        %extracted_56 = tensor.extract %5[%c7, %c6] : tensor<16x14xf32>
        scf.yield %c2080863597_i64 : i64
      }
      case 2 {
        %cast_53 = tensor.cast %18 : tensor<14x16xf32> to tensor<?x?xf32>
        bufferization.dealloc_tensor %17 : tensor<14x6xi32>
        %281 = vector.reduction <maxf>, %48 : vector<6xf16> into f16
        %282 = math.exp2 %126 : f32
        %283 = arith.shrui %c1637224188_i64, %c1637224188_i64 : i64
        memref.assume_alignment %alloc_12, 1 : memref<10x10xi1>
        %284 = arith.remui %c1637224188_i64, %c1637224188_i64 : i64
        %285 = vector.bitcast %91 : vector<10xf16> to vector<10xi16>
        %collapsed_54 = tensor.collapse_shape %expanded_36 [[0, 1], [2]] : tensor<16x14x1xi1> into tensor<224x1xi1>
        %286 = vector.extract %224[10] : vector<14x6xi16>
        %287 = arith.cmpf olt, %126, %extracted : f32
        %288 = math.atan2 %cst_5, %cst_2 : f16
        %289 = index.divu %198, %231
        %290 = vector.splat %84 : vector<14x10xindex>
        %291 = index.floordivs %c4, %c1
        %292 = arith.mulf %126, %75 : f32
        scf.yield %c2080863597_i64 : i64
      }
      default {
        %281 = arith.floordivsi %154, %c2019218376_i32 : i32
        %282 = tensor.empty() : tensor<16x16xf32>
        %283 = linalg.matmul ins(%5, %transposed : tensor<16x14xf32>, tensor<14x16xf32>) outs(%282 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %284 = index.maxs %190, %26
        %285 = math.rsqrt %141 : tensor<14x10xf16>
        %alloca = memref.alloca() : memref<14x10xi32>
        %286 = index.divu %222, %225
        %287 = vector.splat %30 : vector<10x10xindex>
        %288 = arith.shli %c1702488874_i32, %c2019218376_i32 : i32
        %289 = affine.load %alloc_12[%c3, %c4] : memref<10x10xi1>
        memref.assume_alignment %alloc_20, 16 : memref<16x14xf16>
        %290 = math.ctpop %10 : tensor<14x10xi1>
        %291 = vector.create_mask %c15, %c5 : vector<10x10xi1>
        %292 = math.rsqrt %extracted : f32
        %293 = arith.divsi %false_1, %false_25 : i1
        %294 = vector.insert %80, %48 [4] : f16 into vector<6xf16>
        %295 = math.rsqrt %5 : tensor<16x14xf32>
        scf.yield %c2080863597_i64 : i64
      }
      %269 = vector.bitcast %81 : vector<10x10xf16> to vector<10x10xf16>
      %270 = index.sub %165, %c8
      %271 = math.tanh %134 : f16
      %272 = index.sizeof
      %273 = index.divs %222, %272
      %274 = vector.broadcast %cst_2 : f16 to vector<14xf16>
      %275 = vector.broadcast %false_25 : i1 to vector<14xi1>
      %276 = vector.maskedload %alloc_16[%c4, %c0], %275, %274 : memref<14x6xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      scf.execute_region {
        %281 = arith.remui %c25621_i16, %c25621_i16 : i16
        %282 = arith.remui %false_1, %false_1 : i1
        %283 = index.sub %165, %147
        %splat_53 = tensor.splat %false : tensor<16x14xi1>
        %from_elements_54 = tensor.from_elements %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64 : tensor<16x14xi64>
        %284 = arith.andi %extracted_51, %c1702488874_i32 : i32
        %285 = math.fpowi %13, %8 : tensor<16x14xf16>, tensor<16x14xi32>
        %286 = math.exp2 %cst_2 : f16
        %287 = vector.shuffle %60, %275 [1, 2, 4, 6, 9, 11, 12, 14, 16, 17, 24, 25] : vector<16xi1>, vector<14xi1>
        %288 = arith.shli %154, %137 : i32
        %289 = math.ctpop %14 : tensor<14x10xi16>
        %290 = vector.create_mask %122, %132 : vector<14x10xi1>
        %291 = math.expm1 %126 : f32
        %292 = arith.divf %80, %cst_2 : f16
        %293 = vector.maskedload %37[%c0, %c9], %275, %275 : memref<10x10xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
        affine.store %extracted_51, %alloc_14[%c14, %c3] : memref<14x10xi32>
        scf.yield
      }
      %277 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + d3 floordiv 2 + 8 >= 0)>(%c1, %c2, %c1, %c9) -> memref<10x10xf32> {
        %281 = arith.shrui %false_25, %false_6 : i1
        %282 = index.add %c2, %272
        %283 = bufferization.to_tensor %alloc_14 : memref<14x10xi32>
        %284 = index.maxu %198, %222
        %285 = math.expm1 %cst_5 : f16
        memref.store %c2019218376_i32, %alloc_14[%c0, %c2] : memref<14x10xi32>
        %286 = arith.ori %false_0, %false_0 : i1
        %from_elements_53 = tensor.from_elements %c-14197_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %c-14197_i16, %extracted_28, %c-14197_i16, %c25621_i16, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %extracted_28, %extracted_28, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c-14197_i16, %c-32520_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-32520_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %c-32520_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c25621_i16, %extracted_28, %c-14197_i16, %extracted_28, %c-14197_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %extracted_28, %extracted_28, %c25621_i16, %c-14197_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %c-14197_i16, %c-32520_i16, %extracted_28, %c-14197_i16, %extracted_28, %c-14197_i16, %c-14197_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-32520_i16, %c-14197_i16, %extracted_28, %c25621_i16, %extracted_28, %extracted_28, %c-32520_i16, %extracted_28, %c-32520_i16, %c25621_i16, %c-14197_i16, %extracted_28, %c25621_i16, %c-32520_i16, %extracted_28, %extracted_28, %c-14197_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c-32520_i16, %c25621_i16, %c-32520_i16, %c25621_i16, %c25621_i16, %c-32520_i16, %extracted_28, %c-32520_i16, %c25621_i16, %extracted_28, %c-32520_i16, %c25621_i16, %extracted_28, %c25621_i16, %c-14197_i16, %c-14197_i16, %c25621_i16, %c25621_i16, %c-14197_i16, %extracted_28, %extracted_28, %c-14197_i16 : tensor<14x10xi16>
        affine.yield %alloc_8 : memref<10x10xf32>
      } else {
        %281 = vector.shuffle %42, %276 [0, 1, 2, 4, 6, 9, 12, 14, 15, 16, 19, 20, 21, 23, 25, 26, 29] : vector<16xf16>, vector<14xf16>
        %282 = memref.load %alloc_15[%c13, %c4] : memref<14x6xf32>
        %283 = arith.addi %154, %137 : i32
        %284 = arith.addf %cst, %cst_4 : f32
        %285 = index.add %220, %121
        %286 = arith.ori %false_0, %false_1 : i1
        %287 = index.floordivs %198, %186
        %288 = arith.remui %c1702488874_i32, %154 : i32
        affine.yield %alloc_8 : memref<10x10xf32>
      }
      %278 = math.roundeven %24 : tensor<f32>
      %279 = affine.min affine_map<(d0) -> (0, -(d0 ceildiv 32), d0 ceildiv 32 + 32, d0 ceildiv 32 + 32)>(%270)
      %280 = vector.flat_transpose %45 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %cast_52 = tensor.cast %12 : tensor<14x10xi16> to tensor<?x?xi16>
      scf.yield
    }
    %235 = index.sizeof
    %236 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 4096 - 16)>(%30, %84, %c14, %122)
    %237 = vector.broadcast %101 : index to vector<10xindex>
    vector.scatter %alloc_14[%c4, %c3] [%237], %169, %107 : memref<14x10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
    %238 = vector.shuffle %106, %106 [0, 2, 3, 5, 6, 7, 9, 11, 14, 19, 20, 21, 23, 24, 26, 29, 30, 31] : vector<16x14xi1>, vector<16x14xi1>
    %239 = vector.shuffle %42, %48 [2, 4, 6, 8, 10, 12, 14, 15, 16, 20] : vector<16xf16>, vector<6xf16>
    %240 = index.floordivs %225, %198
    %241 = math.log1p %126 : f32
    %242 = tensor.empty() : tensor<6x10xi1>
    %243 = tensor.empty() : tensor<14x10xi1>
    %244 = linalg.matmul ins(%15, %242 : tensor<14x6xi1>, tensor<6x10xi1>) outs(%243 : tensor<14x10xi1>) -> tensor<14x10xi1>
    %245 = tensor.empty() : tensor<16x14xi16>
    %mapped = linalg.map ins(%3 : tensor<16x14xi16>) outs(%245 : tensor<16x14xi16>)
      (%in: i16) {
        %267 = vector.broadcast %c2019218376_i32 : i32 to vector<10x10xi32>
        %268 = vector.outerproduct %170, %107, %267 {kind = #vector.kind<mul>} : vector<10xi32>, vector<10xi32>
        %269 = vector.broadcast %c3 : index to vector<14xindex>
        %270 = vector.broadcast %false : i1 to vector<14xi1>
        %271 = vector.broadcast %c2019218376_i32 : i32 to vector<14xi32>
        vector.scatter %alloc_7[%c8, %c6] [%269], %270, %271 : memref<10x10xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
        %alloca = memref.alloca() : memref<14x10xi64>
        %272 = affine.apply affine_map<(d0, d1, d2) -> (((d1 * 4) floordiv 64 - 2) ceildiv 4)>(%121, %c2, %c11)
        %273 = math.ipowi %from_elements_22, %16 : tensor<14x6xi32>
        %274 = memref.load %alloc_17[%c1, %c0] : memref<10x10xi1>
        %275 = arith.remui %c2080863597_i64, %c2080863597_i64 : i64
        %from_elements_51 = tensor.from_elements %75, %cst_4, %cst_3, %75, %cst, %cst_4, %cst_4, %cst, %126, %cst_4, %cst_4, %75, %cst_3, %126, %126, %cst_4, %extracted, %75, %75, %cst_4, %75, %126, %extracted, %cst, %126, %126, %cst_4, %126, %cst_4, %cst_3, %cst, %126, %extracted, %cst_4, %cst_3, %75, %75, %cst_4, %cst_3, %75, %cst_3, %cst_3, %126, %cst, %extracted, %126, %cst, %cst_4, %extracted, %126, %126, %extracted, %extracted, %cst_3, %cst_3, %cst, %cst_4, %75, %cst_3, %126, %extracted, %cst_4, %cst_4, %cst_3, %cst_3, %126, %75, %extracted, %extracted, %cst_4, %126, %cst_4, %extracted, %cst, %126, %75, %cst_4, %cst_4, %126, %cst_4, %cst_4, %cst, %cst_4, %75, %cst, %cst_3, %75, %75, %cst_3, %cst_3, %126, %cst_3, %cst_4, %cst, %126, %75, %cst_3, %75, %126, %extracted, %extracted, %cst_3, %extracted, %75, %extracted, %75, %cst_3, %75, %cst, %cst_3, %75, %extracted, %126, %cst_4, %cst_3, %extracted, %cst_4, %cst, %75, %extracted, %cst, %126, %75, %extracted, %cst, %extracted, %cst_4, %75, %extracted, %126, %75, %75, %75, %cst, %extracted, %cst_4, %cst_3, %126, %extracted, %cst_3, %extracted, %cst_3, %126, %cst_3, %cst_4, %cst, %126, %cst_3, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_3, %cst, %75, %cst_4, %75, %126, %cst, %75, %75, %cst, %extracted, %75, %cst_3, %126, %extracted, %75, %75, %126, %extracted, %cst, %extracted, %126, %cst_3, %75, %cst_3, %126, %126, %cst_3, %126, %cst_3, %75, %75, %75, %126, %extracted, %cst_4, %cst, %cst, %cst_3, %cst, %cst_4, %cst, %126, %cst, %126, %75, %cst_4, %75, %cst_3, %75, %cst, %126, %cst_4, %75, %extracted, %cst_3, %75, %cst_3, %cst_4, %cst, %cst_4, %extracted, %cst_3, %75, %cst, %126, %cst_3, %cst, %126, %cst, %126 : tensor<16x14xf32>
        %276 = tensor.empty() : tensor<14x6xi32>
        %mapped_52 = linalg.map ins(%1, %from_elements_22 : tensor<14x6xi32>, tensor<14x6xi32>) outs(%276 : tensor<14x6xi32>)
          (%in_53: i32, %in_54: i32) {
            memref.assume_alignment %alloc_17, 1 : memref<10x10xi1>
            %299 = index.casts %c1702488874_i32 : i32 to index
            %300 = memref.atomic_rmw assign %cst_3, %alloc_18[%c12, %c8] : (f32, memref<14x10xf32>) -> f32
            %301 = arith.remf %cst_4, %126 : f32
            %302 = vector.broadcast %75 : f32 to vector<6xf32>
            %303 = vector.broadcast %false_25 : i1 to vector<6xi1>
            %304 = vector.maskedload %alloc_15[%c8, %c4], %303, %302 : memref<14x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
            %305 = math.roundeven %19 : tensor<6xf32>
            %alloc_55 = memref.alloc() : memref<14x6xi64>
            %306 = memref.atomic_rmw assign %cst_4, %alloc_18[%c11, %c8] : (f32, memref<14x10xf32>) -> f32
            %307 = index.castu %231 : index to i32
            %308 = index.divu %27, %225
            %309 = arith.minui %c1702488874_i32, %137 : i32
            %310 = affine.load %alloc_8[%c0, %c8] : memref<10x10xf32>
            %311 = arith.remf %80, %80 : f16
            %312 = math.atan %13 : tensor<16x14xf16>
            %313 = math.cos %13 : tensor<16x14xf16>
            %314 = vector.broadcast %false : i1 to vector<14xi1>
            %dest_56, %accumulated_value_57 = vector.scan <minui>, %106, %314 {inclusive = true, reduction_dim = 0 : i64} : vector<16x14xi1>, vector<14xi1>
            %315 = index.maxs %79, %124
            %316 = vector.reduction <maxsi>, %60 : vector<16xi1> into i1
            %317 = vector.flat_transpose %42 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
            %318 = arith.cmpi sge, %c25621_i16, %c25621_i16 : i16
            %319 = arith.divsi %false_25, %false : i1
            %dest_58, %accumulated_value_59 = vector.scan <add>, %81, %91 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
            %320 = affine.min affine_map<(d0, d1, d2) -> (d0 - d2, ((d0 - d2) * -4) ceildiv 32 + 16, -d1 + d2 - 1, d0)>(%132, %191, %143)
            %321 = arith.remf %cst_4, %75 : f32
            %322 = vector.load %alloc_19[%c6, %c1] : memref<14x6xi16>, vector<14x6xi16>
            %323 = bufferization.to_memref %from_elements_37 : memref<10x10xf16>
            %alloc_60 = memref.alloc() : memref<6x10xi32>
            %324 = tensor.empty() : tensor<14x10xi32>
            %325 = linalg.matmul ins(%17, %alloc_60 : tensor<14x6xi32>, memref<6x10xi32>) outs(%324 : tensor<14x10xi32>) -> tensor<14x10xi32>
            %326 = math.absf %13 : tensor<16x14xf16>
            %327 = vector.broadcast %in_54 : i32 to vector<14xi32>
            %328 = vector.transfer_write %327, %8[%231, %222] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, tensor<16x14xi32>
            %329 = vector.transpose %41, [1, 0] : vector<16x14xf16> to vector<14x16xf16>
            %330 = vector.broadcast %false_6 : i1 to vector<16x16xi1>
            %331 = vector.outerproduct %60, %45, %330 {kind = #vector.kind<minui>} : vector<16xi1>, vector<16xi1>
            %332 = vector.broadcast %126 : f32 to vector<14x10xf32>
            %333 = vector.fma %332, %332, %332 : vector<14x10xf32>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %277 = affine.load %alloc_20[%c15, %c8] : memref<16x14xf16>
        %278 = vector.flat_transpose %60 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %279 = vector.broadcast %147 : index to vector<16xindex>
        vector.scatter %alloc_8[%c9, %c7] [%279], %45, %44 : memref<10x10xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %280 = arith.xori %false_0, %false : i1
        %281 = affine.if affine_set<(d0) : (d0 == 0)>(%c15) -> memref<10x10xi64> {
          %alloc_53 = memref.alloc() : memref<14x6xi32>
          memref.tensor_store %9, %alloc_53 : memref<14x6xi32>
          %299 = index.floordivs %220, %147
          %300 = arith.remf %cst_3, %extracted : f32
          %301 = arith.mulf %126, %cst_3 : f32
          %302 = math.roundeven %13 : tensor<16x14xf16>
          %303 = math.copysign %18, %18 : tensor<14x16xf32>
          %304 = math.copysign %5, %from_elements_51 : tensor<16x14xf32>
          %305 = index.floordivs %203, %c11
          %alloc_54 = memref.alloc() : memref<10x10xi64>
          affine.yield %alloc_54 : memref<10x10xi64>
        } else {
          %299 = arith.mulf %134, %134 : f16
          %300 = memref.atomic_rmw mulf %cst_2, %alloc_16[%c7, %c0] : (f16, memref<14x6xf16>) -> f16
          %301 = vector.broadcast %c25621_i16 : i16 to vector<i16>
          %302 = vector.transfer_write %301, %3[%c10, %124] : vector<i16>, tensor<16x14xi16>
          %303 = vector.splat %c25621_i16 : vector<16x14xi16>
          %304 = math.roundeven %5 : tensor<16x14xf32>
          %305 = memref.load %alloc_20[%c12, %c2] : memref<16x14xf16>
          %306 = arith.remui %false_25, %false_6 : i1
          %307 = index.floordivs %236, %54
          %alloc_53 = memref.alloc() : memref<10x10xi64>
          affine.yield %alloc_53 : memref<10x10xi64>
        }
        %282 = math.expm1 %23 : tensor<f32>
        %283 = vector.splat %cst_3 : vector<14x10xf32>
        %284 = arith.muli %c-32520_i16, %c-14197_i16 : i16
        %285 = arith.muli %c-32520_i16, %c-14197_i16 : i16
        %286 = vector.splat %false_1 : vector<16x14xi1>
        %287 = math.log2 %141 : tensor<14x10xf16>
        %288 = index.divs %190, %c8
        %289 = math.atan2 %126, %126 : f32
        %290 = arith.divsi %false, %false_25 : i1
        %291 = vector.insert %277, %42 [9] : f16 into vector<16xf16>
        scf.execute_region {
          %299 = vector.flat_transpose %91 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
          %300 = arith.divf %75, %cst_4 : f32
          %301 = tensor.empty() : tensor<14x6xi16>
          %302 = vector.broadcast %c-32520_i16 : i16 to vector<14x10xi16>
          %303 = vector.broadcast %false_0 : i1 to vector<14x10xi1>
          %304 = vector.broadcast %c1702488874_i32 : i32 to vector<14x10xi32>
          %305 = vector.gather %301[%222, %c3] [%304], %303, %302 : tensor<14x6xi16>, vector<14x10xi32>, vector<14x10xi1>, vector<14x10xi16> into vector<14x10xi16>
          %c77 = arith.constant 77 : index
          %extracted_53 = tensor.extract %collapsed_46[%c77] : tensor<100xi16>
          %306 = vector.broadcast %false_1 : i1 to vector<16x16xi1>
          %307 = vector.outerproduct %278, %60, %306 {kind = #vector.kind<and>} : vector<16xi1>, vector<16xi1>
          %308 = vector.flat_transpose %178 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
          %309 = math.ipowi %14, %12 : tensor<14x10xi16>
          memref.assume_alignment %alloc_13, 16 : memref<14x6xf32>
          %splat_54 = tensor.splat %126 : tensor<14x10xf32>
          memref.store %154, %alloc_14[%c2, %c6] : memref<14x10xi32>
          %310 = math.absi %10 : tensor<14x10xi1>
          %311 = math.fpowi %277, %c2019218376_i32 : f16, i32
          %312 = math.atan2 %cst_2, %cst_2 : f16
          %collapsed_55 = tensor.collapse_shape %17 [[0, 1]] : tensor<14x6xi32> into tensor<84xi32>
          %true = index.bool.constant true
          %313 = vector.broadcast %154 : i32 to vector<i32>
          %314 = vector.transfer_write %313, %1[%236, %147] : vector<i32>, tensor<14x6xi32>
          scf.yield
        }
        %292 = arith.xori %in, %c25621_i16 : i16
        %293 = math.absi %171 : tensor<6xi32>
        %294 = arith.divf %cst, %cst_4 : f32
        %295 = vector.bitcast %41 : vector<16x14xf16> to vector<16x14xf16>
        %296 = math.tanh %splat : tensor<14x6xf32>
        %297 = index.ceildivu %c11, %147
        %298 = arith.muli %c1637224188_i64, %c1637224188_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %246 = arith.mulf %cst_5, %cst_5 : f16
    memref.alloca_scope  {
      %267 = math.atan %80 : f16
      %false_51 = index.bool.constant false
      %268 = vector.outerproduct %91, %91, %81 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
      %269 = index.floordivs %79, %186
      %270 = math.ctpop %6 : tensor<10x10xi16>
      %271 = math.sqrt %18 : tensor<14x16xf32>
      %272 = arith.cmpi slt, %false, %false_1 : i1
      %273 = index.divu %143, %231
      %274 = math.fpowi %126, %c1702488874_i32 : f32, i32
      scf.execute_region {
        %294 = math.exp2 %reduced : tensor<6xf32>
        %extracted_54 = tensor.extract %from_elements_23[%c1, %c7] : tensor<14x10xi1>
        %295 = arith.remf %cst_4, %cst_3 : f32
        memref.assume_alignment %alloc_12, 2 : memref<10x10xi1>
        %296 = memref.atomic_rmw mulf %cst_2, %alloc_20[%c14, %c5] : (f16, memref<16x14xf16>) -> f16
        %splat_55 = tensor.splat %extracted_28 : tensor<16x14xi16>
        %297 = vector.broadcast %extracted_28 : i16 to vector<6x6xi16>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %224, %139, %297 : vector<14x6xi16>, vector<14x6xi16> into vector<6x6xi16>
        %299 = math.powf %24, %24 : tensor<f32>
        %expanded_56 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<14x6xi32> into tensor<14x6x1xi32>
        %300 = vector.bitcast %178 : vector<4xf32> to vector<4xf32>
        %301 = vector.reduction <or>, %21 : vector<10xi16> into i16
        %302 = math.atan %19 : tensor<6xf32>
        %303 = tensor.empty() : tensor<i32>
        %304 = math.fpowi %24, %303 : tensor<f32>, tensor<i32>
        %305 = index.floordivs %c9, %c8
        bufferization.dealloc_tensor %10 : tensor<14x10xi1>
        memref.assume_alignment %alloc_11, 1 : memref<10x10xf16>
        scf.yield
      }
      %from_elements_52 = tensor.from_elements %137, %c1702488874_i32, %c1702488874_i32, %154, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %137, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %137, %137, %c2019218376_i32, %c1702488874_i32, %154, %c2019218376_i32, %154, %137, %154, %c1702488874_i32, %c2019218376_i32, %154, %154, %c2019218376_i32, %137, %c2019218376_i32, %154, %c2019218376_i32, %137, %137, %137, %c1702488874_i32, %154, %c1702488874_i32, %137, %137, %137, %154, %137, %137, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %137, %c1702488874_i32, %c1702488874_i32, %154, %c1702488874_i32, %154, %154, %137, %154, %137, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %137, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %c1702488874_i32, %c2019218376_i32, %137, %c1702488874_i32, %c2019218376_i32, %154, %c2019218376_i32, %c2019218376_i32, %137, %137, %c1702488874_i32, %c2019218376_i32, %c1702488874_i32, %137, %137, %137, %c2019218376_i32, %154, %c1702488874_i32, %c2019218376_i32, %c2019218376_i32, %137, %154, %c1702488874_i32, %154, %c1702488874_i32, %137, %137, %c2019218376_i32, %c2019218376_i32, %c1702488874_i32, %137 : tensor<10x10xi32>
      %275 = memref.atomic_rmw maxu %c2019218376_i32, %28[%c10, %c11] : (i32, memref<16x14xi32>) -> i32
      %276 = index.castu %c8 : index to i32
      %277 = arith.mulf %126, %cst_4 : f32
      %278 = vector.extract_strided_slice %81 {offsets = [5], sizes = [1], strides = [1]} : vector<10x10xf16> to vector<1x10xf16>
      memref.assume_alignment %alloc_21, 4 : memref<16x14xi64>
      %279 = arith.remui %c2080863597_i64, %c2080863597_i64 : i64
      %280 = index.divs %c5, %c14
      %281 = math.exp %cst_4 : f32
      %282 = arith.addf %cst_5, %134 : f16
      %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %48, %48, %80 : vector<6xf16>, vector<6xf16> into f16
      %284 = vector.load %alloc_10[%c2, %c11] : memref<16x14xi64>, vector<14x6xi64>
      %285 = vector.outerproduct %91, %91, %81 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
      %286 = arith.divsi %false_1, %false_25 : i1
      %287 = math.round %cst_3 : f32
      %288 = index.castu %236 : index to i32
      %extracted_53 = tensor.extract %6[%c9, %c3] : tensor<10x10xi16>
      %289 = memref.atomic_rmw minf %cst_2, %alloc_16[%c1, %c2] : (f16, memref<14x6xf16>) -> f16
      bufferization.dealloc_tensor %8 : tensor<16x14xi32>
      %290 = index.castu %false_1 : i1 to index
      %291 = vector.broadcast %cst_2 : f16 to vector<f16>
      %292 = vector.transfer_write %291, %13[%280, %235] : vector<f16>, tensor<16x14xf16>
      %293 = math.exp %cst_2 : f16
    }
    %247 = vector.splat %84 : vector<14x10xindex>
    %248 = vector.bitcast %139 : vector<14x6xi16> to vector<14x6xi16>
    %249 = scf.if %false_1 -> (memref<10x10xf16>) {
      %267 = vector.shuffle %45, %60 [0, 1, 4, 5, 7, 8, 10, 11, 12, 13, 14, 16, 19, 21, 24, 27] : vector<16xi1>, vector<16xi1>
      %268 = vector.broadcast %c1702488874_i32 : i32 to vector<10x10xi32>
      %269 = vector.outerproduct %170, %107, %268 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
      %270 = math.fma %18, %18, %18 : tensor<14x16xf32>
      %271 = math.ctlz %collapsed : tensor<84xi32>
      %expanded_51 = tensor.expand_shape %19 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
      %splat_52 = tensor.splat %false_25 : tensor<10x10xi1>
      %272 = arith.maxf %extracted, %extracted : f32
      %273 = vector.insert %false_1, %45 [4] : i1 into vector<16xi1>
      scf.yield %alloc_11 : memref<10x10xf16>
    } else {
      bufferization.dealloc_tensor %12 : tensor<14x10xi16>
      %267 = index.maxu %135, %240
      %268 = vector.broadcast %extracted_28 : i16 to vector<6xi16>
      %269 = vector.insert %268, %248 [12] : vector<6xi16> into vector<14x6xi16>
      %270 = index.castu %false_6 : i1 to index
      %271 = index.floordivs %190, %270
      %272 = memref.atomic_rmw minf %cst_4, %alloc_15[%c0, %c4] : (f32, memref<14x6xf32>) -> f32
      %273 = arith.muli %154, %c2019218376_i32 : i32
      memref.assume_alignment %alloc_8, 8 : memref<10x10xf32>
      scf.yield %alloc_11 : memref<10x10xf16>
    }
    %250 = tensor.empty() : tensor<16x6xi32>
    %251 = linalg.matmul ins(%8, %1 : tensor<16x14xi32>, tensor<14x6xi32>) outs(%250 : tensor<16x6xi32>) -> tensor<16x6xi32>
    %252 = math.absf %cst : f32
    %alloc_48 = memref.alloc() : memref<10xf16>
    %253 = memref.realloc %alloc_48 : memref<10xf16> to memref<6xf16>
    %254 = math.ctpop %15 : tensor<14x6xi1>
    %255 = bufferization.clone %alloc_9 : memref<14x10xf16> to memref<14x10xf16>
    %256 = memref.alloca_scope  -> (memref<10x10xi32>) {
      %alloc_51 = memref.alloc() : memref<10x10xi32>
      memref.copy %alloc_7, %alloc_51 : memref<10x10xi32> to memref<10x10xi32>
      %267 = math.absi %118 : tensor<14x10xi32>
      %268 = vector.create_mask %191, %c15 : vector<14x10xi1>
      %splat_52 = tensor.splat %c2080863597_i64 : tensor<10x10xi64>
      %269 = math.absi %63 : tensor<16x10xi16>
      %270 = math.atan %13 : tensor<16x14xf16>
      %271 = math.powf %transposed, %18 : tensor<14x16xf32>
      %alloc_53 = memref.alloc() : memref<6x14xi32>
      %272 = tensor.empty() : tensor<14x14xi32>
      %273 = linalg.matmul ins(%1, %alloc_53 : tensor<14x6xi32>, memref<6x14xi32>) outs(%272 : tensor<14x14xi32>) -> tensor<14x14xi32>
      %274 = math.ctpop %1 : tensor<14x6xi32>
      memref.store %false_1, %alloc_17[%c6, %c9] : memref<10x10xi1>
      %expanded_54 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<14x10x1xi1> into tensor<14x10x1x1xi1>
      %275 = index.mul %30, %c15
      %276 = vector.reduction <add>, %170 : vector<10xi32> into i32
      %277 = arith.divsi %extracted_28, %c-14197_i16 : i16
      %278 = vector.matrix_multiply %170, %107 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
      %279 = arith.ori %137, %137 : i32
      %280 = math.cttz %expanded_27 : tensor<16x14x1xi16>
      %alloc_55 = memref.alloc() : memref<16xf32>
      %281 = memref.realloc %alloc_55 : memref<16xf32> to memref<16xf32>
      %282 = scf.if %false -> (i1) {
        %296 = index.add %143, %54
        %297 = index.sub %c2, %225
        %298 = index.add %c4, %c10
        %299 = index.divu %231, %c2
        %300 = index.casts %59 : index to i32
        %301 = arith.minf %cst_3, %75 : f32
        %302 = vector.shuffle %107, %107 [4, 9, 12, 13, 14, 15, 16, 17, 18, 19] : vector<10xi32>, vector<10xi32>
        %303 = math.rsqrt %13 : tensor<16x14xf16>
        scf.yield %false_0 : i1
      } else {
        %296 = math.atan %19 : tensor<6xf32>
        %297 = math.atan %22 : tensor<6xf32>
        %expanded_57 = tensor.expand_shape %collapsed_46 [[0, 1]] : tensor<100xi16> into tensor<100x1xi16>
        %298 = arith.shrui %c1637224188_i64, %c1637224188_i64 : i64
        memref.assume_alignment %37, 8 : memref<10x10xi1>
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128)>(%c7, %240, %c4, %c15)
        memref.store %c1637224188_i64, %alloc_10[%c13, %c1] : memref<16x14xi64>
        %300 = arith.mulf %80, %80 : f16
        scf.yield %false : i1
      }
      %283 = index.casts %c25621_i16 : i16 to index
      %284 = arith.muli %c2080863597_i64, %c2080863597_i64 : i64
      %285 = vector.bitcast %45 : vector<16xi1> to vector<16xi1>
      %286 = index.divu %c14, %220
      %287 = index.sub %c13, %203
      %288 = vector.reduction <mul>, %44 : vector<16xf32> into f32
      %289 = math.roundeven %23 : tensor<f32>
      %inserted_56 = tensor.insert %c2019218376_i32 into %1[%c7, %c3] : tensor<14x6xi32>
      %290 = index.ceildivu %c13, %c5
      %291 = vector.broadcast %225 : index to vector<16xindex>
      %292 = vector.broadcast %c1702488874_i32 : i32 to vector<16xi32>
      vector.scatter %alloc_14[%c11, %c0] [%291], %285, %292 : memref<14x10xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
      %293 = vector.load %alloc_7[%c8, %c0] : memref<10x10xi32>, vector<16x14xi32>
      %294 = vector.create_mask %c4, %c5 : vector<16x14xi1>
      %295 = arith.ori %154, %137 : i32
      memref.alloca_scope.return %alloc_7 : memref<10x10xi32>
    }
    %257 = arith.maxf %extracted, %126 : f32
    %258 = index.castu %c2019218376_i32 : i32 to index
    vector.print %46 : vector<16xf32>
    %259 = arith.remf %cst_5, %134 : f16
    %260 = index.maxs %26, %c3
    %261 = arith.remf %cst_5, %80 : f16
    %262 = tensor.empty() : tensor<16x14xi16>
    %263 = linalg.copy ins(%3 : tensor<16x14xi16>) outs(%262 : tensor<16x14xi16>) -> tensor<16x14xi16>
    %alloc_49 = memref.alloc() : memref<6x14xf32>
    linalg.transpose ins(%splat : tensor<14x6xf32>) outs(%alloc_49 : memref<6x14xf32>) permutation = [1, 0] 
    %264 = tensor.empty() : tensor<i16>
    %reduced_50 = linalg.reduce ins(%263 : tensor<16x14xi16>) outs(%264 : tensor<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %267 = index.sub %c12, %220
        %268 = math.atan2 %cst_4, %75 : f32
        memref.assume_alignment %alloc_49, 4 : memref<6x14xf32>
        %269 = vector.matrix_multiply %21, %21 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %41, %42 {inclusive = true, reduction_dim = 1 : i64} : vector<16x14xf16>, vector<16xf16>
        %270 = scf.while (%arg3 = %c25621_i16) : (i16) -> i16 {
          %extracted_54 = tensor.extract %250[%c7, %c4] : tensor<16x6xi32>
          %272 = vector.flat_transpose %44 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
          %273 = math.log1p %23 : tensor<f32>
          %alloc_55 = memref.alloc() : memref<6xf16>
          %274 = memref.realloc %alloc_55 : memref<6xf16> to memref<6xf16>
          %alloc_56 = memref.alloc() : memref<14x6xi32>
          memref.tensor_store %4, %alloc_56 : memref<14x6xi32>
          %275 = tensor.empty() : tensor<14x14xi1>
          %276 = linalg.matmul ins(%174, %2 : tensor<14x16xi1>, tensor<16x14xi1>) outs(%275 : tensor<14x14xi1>) -> tensor<14x14xi1>
          %277 = vector.splat %220 : vector<14x6xindex>
          %alloca = memref.alloca() : memref<14x10xi32>
          scf.condition(%false_0) %c-14197_i16 : i16
        } do {
        ^bb0(%arg3: i16):
          %272 = vector.extract_strided_slice %41 {offsets = [4], sizes = [11], strides = [1]} : vector<16x14xf16> to vector<11x14xf16>
          %273 = math.rsqrt %134 : f16
          %274 = vector.extract_strided_slice %170 {offsets = [1], sizes = [4], strides = [1]} : vector<10xi32> to vector<4xi32>
          %275 = arith.cmpf ole, %126, %cst : f32
          %276 = index.maxs %c12, %135
          %277 = math.fpowi %141, %118 : tensor<14x10xf16>, tensor<14x10xi32>
          %278 = math.log1p %cst_4 : f32
          %alloc_54 = memref.alloc() : memref<6xi1>
          %279 = memref.realloc %alloc_54 : memref<6xi1> to memref<6xi1>
          %280 = vector.outerproduct %91, %91, %81 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
          %281 = affine.load %alloc_19[%c7, %c3] : memref<14x6xi16>
          %282 = arith.floordivsi %c25621_i16, %c-14197_i16 : i16
          %283 = math.exp %126 : f32
          %284 = vector.shuffle %21, %21 [1, 3, 5, 6, 8, 9, 11, 14, 18, 19] : vector<10xi16>, vector<10xi16>
          %285 = index.ceildivu %124, %236
          %cast_55 = tensor.cast %5 : tensor<16x14xf32> to tensor<?x?xf32>
          %286 = math.ctlz %from_elements_22 : tensor<14x6xi32>
          scf.yield %extracted_28 : i16
        }
        %271 = arith.muli %in, %init : i16
        %from_elements_53 = tensor.from_elements %134, %cst_5, %134, %80, %134, %cst_2, %134, %cst_5, %134, %80, %134, %cst_2, %cst_5, %cst_2, %cst_2, %80, %134, %cst_2, %134, %134, %80, %80, %134, %cst_5, %134, %cst_5, %134, %80, %cst_2, %cst_2, %cst_2, %134, %cst_5, %cst_5, %cst_5, %134, %134, %80, %cst_2, %cst_2, %80, %80, %cst_2, %134, %134, %cst_2, %80, %80, %134, %cst_2, %134, %cst_2, %cst_5, %cst_2, %cst_5, %80, %134, %80, %cst_5, %134, %cst_2, %cst_2, %80, %80, %80, %80, %80, %cst_2, %cst_5, %80, %80, %80, %cst_2, %cst_2, %cst_5, %134, %80, %cst_2, %80, %80, %cst_5, %134, %80, %134, %cst_2, %80, %cst_5, %134, %cst_5, %cst_2, %80, %cst_2, %80, %cst_5, %134, %80, %134, %cst_2, %cst_2, %cst_5 : tensor<10x10xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %265 = scf.parallel (%arg3, %arg4) = (%c14, %c15) to (%26, %54) step (%c8, %c10) init (%12) -> tensor<14x10xi16> {
      bufferization.dealloc_tensor %1 : tensor<14x6xi32>
      %267 = arith.muli %154, %137 : i32
      %268 = arith.muli %c1702488874_i32, %154 : i32
      %269 = vector.splat %220 : vector<16x14xindex>
      %270 = vector.shuffle %81, %81 [2, 3, 5, 9, 10, 13, 14, 15] : vector<10x10xf16>, vector<10x10xf16>
      %generated_51 = tensor.generate %c9, %arg3 {
      ^bb0(%arg5: index, %arg6: index):
        %280 = arith.addi %154, %c2019218376_i32 : i32
        %281 = math.sqrt %141 : tensor<14x10xf16>
        %282 = arith.shrui %154, %c1702488874_i32 : i32
        %283 = affine.load %alloc_21[%c4, %c11] : memref<16x14xi64>
        tensor.yield %cst_4 : f32
      } : tensor<?x?xf32>
      %271 = index.castu %191 : index to i32
      %272 = arith.remf %cst_3, %extracted : f32
      %273 = memref.atomic_rmw maxf %extracted, %alloc_18[%c4, %c5] : (f32, memref<14x10xf32>) -> f32
      %274 = math.rsqrt %cst_5 : f16
      %275 = vector.broadcast %c2019218376_i32 : i32 to vector<14x6xi32>
      %276 = arith.cmpf oeq, %126, %cst : f32
      %277 = math.log1p %24 : tensor<f32>
      %278 = affine.for %arg5 = 0 to 23 iter_args(%arg6 = %splat_30) -> (tensor<10x10xi1>) {
        affine.yield %splat_30 : tensor<10x10xi1>
      }
      affine.for %arg5 = 0 to 103 {
      }
      %alloc_52 = memref.alloc() : memref<16x14xf32>
      memref.tensor_store %5, %alloc_52 : memref<16x14xf32>
      %279 = tensor.empty() : tensor<14x10xi16>
      scf.reduce(%279)  : tensor<14x10xi16> {
      ^bb0(%arg5: tensor<14x10xi16>, %arg6: tensor<14x10xi16>):
        %280 = arith.andi %false_0, %false_0 : i1
        %281 = math.log %13 : tensor<16x14xf16>
        %282 = vector.splat %198 : vector<10x10xindex>
        %from_elements_53 = tensor.from_elements %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64, %c2080863597_i64, %c1637224188_i64, %c1637224188_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c2080863597_i64, %c1637224188_i64 : tensor<10x10xi64>
        %283 = math.log10 %cst_3 : f32
        %284 = index.maxs %190, %121
        %285 = vector.load %37[%c3, %c9] : memref<10x10xi1>, vector<14x6xi1>
        %286 = vector.broadcast %extracted_28 : i16 to vector<6xi16>
        %dest_54, %accumulated_value_55 = vector.scan <or>, %224, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<14x6xi16>, vector<6xi16>
        %287 = tensor.empty() : tensor<14x10xi16>
        scf.reduce.return %287 : tensor<14x10xi16>
      }
      scf.yield
    }
    %266 = affine.vector_load %37[%c12, %c4] : memref<10x10xi1>, vector<16xi1>
    affine.vector_store %169, %37[%236, %c13] : memref<10x10xi1>, vector<10xi1>
    vector.print %21 : vector<10xi16>
    vector.print %41 : vector<16x14xf16>
    vector.print %42 : vector<16xf16>
    vector.print %44 : vector<16xf32>
    vector.print %45 : vector<16xi1>
    vector.print %46 : vector<16xf32>
    vector.print %48 : vector<6xf16>
    vector.print %60 : vector<16xi1>
    vector.print %81 : vector<10x10xf16>
    vector.print %91 : vector<10xf16>
    vector.print %106 : vector<16x14xi1>
    vector.print %107 : vector<10xi32>
    vector.print %139 : vector<14x6xi16>
    vector.print %169 : vector<10xi1>
    vector.print %170 : vector<10xi32>
    vector.print %178 : vector<4xf32>
    vector.print %224 : vector<14x6xi16>
    vector.print %248 : vector<14x6xi16>
    vector.print %266 : vector<16xi1>
    vector.print %false : i1
    vector.print %c25621_i16 : i16
    vector.print %c-32520_i16 : i16
    vector.print %false_0 : i1
    vector.print %false_1 : i1
    vector.print %cst : f32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c2019218376_i32 : i32
    vector.print %cst_4 : f32
    vector.print %c1702488874_i32 : i32
    vector.print %c-14197_i16 : i16
    vector.print %cst_5 : f16
    vector.print %false_6 : i1
    vector.print %c1637224188_i64 : i64
    vector.print %c2080863597_i64 : i64
    vector.print %extracted : f32
    vector.print %75 : f32
    vector.print %false_25 : i1
    vector.print %80 : f16
    vector.print %extracted_28 : i16
    vector.print %126 : f32
    vector.print %134 : f16
    vector.print %137 : i32
    vector.print %154 : i32
    return
  }
}
