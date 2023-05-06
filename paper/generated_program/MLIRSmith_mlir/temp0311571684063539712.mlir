module {
  func.func nested @func1(%arg0: memref<4x10xi1>, %arg1: memref<4x2x2xi32>) {
    %c690179085_i32 = arith.constant 690179085 : i32
    %cst = arith.constant 3.238400e+04 : f16
    %c1525623552_i32 = arith.constant 1525623552 : i32
    %cst_0 = arith.constant 6.448000e+04 : f16
    %true = arith.constant true
    %false = arith.constant false
    %c5118_i16 = arith.constant 5118 : i16
    %true_1 = arith.constant true
    %c21640_i16 = arith.constant 21640 : i16
    %cst_2 = arith.constant 0x4DCF16E9 : f32
    %cst_3 = arith.constant 0x4E009A55 : f32
    %false_4 = arith.constant false
    %c533791251_i64 = arith.constant 533791251 : i64
    %c1130808043_i64 = arith.constant 1130808043 : i64
    %c998028318_i64 = arith.constant 998028318 : i64
    %c1669402709_i32 = arith.constant 1669402709 : i32
    %0 = tensor.empty() : tensor<4x2xi16>
    %1 = tensor.empty() : tensor<4x2xi16>
    %2 = tensor.empty() : tensor<4x10xf32>
    %3 = tensor.empty() : tensor<4x2xi1>
    %4 = tensor.empty() : tensor<4x2x2xi1>
    %5 = tensor.empty() : tensor<4x8xf32>
    %6 = tensor.empty() : tensor<4x2x2xi64>
    %7 = tensor.empty() : tensor<4x8xf32>
    %8 = tensor.empty() : tensor<4x8xf16>
    %9 = tensor.empty() : tensor<4x2xi1>
    %10 = tensor.empty() : tensor<4x2x2xf16>
    %11 = tensor.empty() : tensor<4x10xi16>
    %12 = tensor.empty() : tensor<4x2x2xf16>
    %13 = tensor.empty() : tensor<4x2xi64>
    %14 = tensor.empty() : tensor<4x8xf32>
    %15 = tensor.empty() : tensor<4x8xf32>
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
    %alloc = memref.alloc() : memref<4x8xi32>
    %alloc_5 = memref.alloc() : memref<4x2xi64>
    %alloc_6 = memref.alloc() : memref<4x8xf32>
    %alloc_7 = memref.alloc() : memref<4x10xf32>
    %alloc_8 = memref.alloc() : memref<4x2xi64>
    %alloc_9 = memref.alloc() : memref<4x8xi16>
    %alloc_10 = memref.alloc() : memref<4x10xi64>
    %alloc_11 = memref.alloc() : memref<4x2x2xf32>
    %alloc_12 = memref.alloc() : memref<4x2xi1>
    %alloc_13 = memref.alloc() : memref<4x2x2xi64>
    %alloc_14 = memref.alloc() : memref<4x2x2xf16>
    %alloc_15 = memref.alloc() : memref<4x2x2xi64>
    %alloc_16 = memref.alloc() : memref<4x10xi32>
    %alloc_17 = memref.alloc() : memref<4x8xf16>
    %alloc_18 = memref.alloc() : memref<4x8xi32>
    %alloc_19 = memref.alloc() : memref<4x2x2xi16>
    %16 = tensor.empty() : tensor<4x2xi1>
    %17 = linalg.copy ins(%9 : tensor<4x2xi1>) outs(%16 : tensor<4x2xi1>) -> tensor<4x2xi1>
    %alloc_20 = memref.alloc() : memref<8x4xf16>
    linalg.transpose ins(%8 : tensor<4x8xf16>) outs(%alloc_20 : memref<8x4xf16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%7 : tensor<4x8xf32>) outs(%18 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %alloc_62 = memref.alloc() : memref<4x2xi1>
        memref.copy %alloc_12, %alloc_62 : memref<4x2xi1> to memref<4x2xi1>
        %249 = vector.broadcast %c5118_i16 : i16 to vector<i16>
        %250 = vector.transfer_write %249, %0[%c12, %c7] : vector<i16>, tensor<4x2xi16>
        memref.tensor_store %3, %alloc_12 : memref<4x2xi1>
        %251 = arith.muli %c690179085_i32, %c1525623552_i32 : i32
        %252 = tensor.empty() : tensor<4x8xi32>
        %253 = vector.broadcast %c1669402709_i32 : i32 to vector<4x2x2xi32>
        %254 = vector.broadcast %true_1 : i1 to vector<4x2x2xi1>
        %255 = vector.gather %252[%c3, %c14] [%253], %254, %253 : tensor<4x8xi32>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xi32> into vector<4x2x2xi32>
        %256 = arith.remsi %c690179085_i32, %c1669402709_i32 : i32
        %257 = math.copysign %8, %8 : tensor<4x8xf16>
        %258 = math.floor %cst : f16
        %cst_63 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_63 : f32
      }
    %19 = scf.parallel (%arg2) = (%c1) to (%c3) step (%c8) init (%7) -> tensor<4x8xf32> {
      %249 = bufferization.clone %alloc_17 : memref<4x8xf16> to memref<4x8xf16>
      %250 = arith.mulf %cst_2, %cst_3 : f32
      %251 = affine.apply affine_map<(d0, d1, d2) -> (d0 mod 16)>(%c2, %c14, %c5)
      %252 = vector.broadcast %cst_0 : f16 to vector<4x2x2xf16>
      %253 = vector.transpose %252, [2, 1, 0] : vector<4x2x2xf16> to vector<2x2x4xf16>
      %254 = arith.floordivsi %true, %true_1 : i1
      %255 = vector.broadcast %c5118_i16 : i16 to vector<8xi16>
      %256 = vector.insertelement %c21640_i16, %255[%c8 : index] : vector<8xi16>
      %257 = arith.cmpf olt, %cst_0, %cst_0 : f16
      %258 = arith.addf %cst_2, %cst_3 : f32
      %259 = math.floor %cst_3 : f32
      %260 = index.sub %c9, %c1
      %261 = arith.minsi %c1130808043_i64, %c998028318_i64 : i64
      %262 = affine.load %alloc_7[%c3, %c0] : memref<4x10xf32>
      %263 = arith.shli %false, %true : i1
      %264 = arith.cmpf uge, %cst_2, %cst_2 : f32
      %265 = vector.broadcast %262 : f32 to vector<8xf32>
      %266 = vector.broadcast %false_4 : i1 to vector<8xi1>
      %267 = vector.maskedload %alloc_11[%c3, %c1, %c0], %266, %265 : memref<4x2x2xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %268 = math.exp2 %8 : tensor<4x8xf16>
      %269 = tensor.empty() : tensor<4x8xf32>
      scf.reduce(%269)  : tensor<4x8xf32> {
      ^bb0(%arg3: tensor<4x8xf32>, %arg4: tensor<4x8xf32>):
        memref.copy %249, %alloc_17 : memref<4x8xf16> to memref<4x8xf16>
        %270 = arith.shrsi %c690179085_i32, %c1669402709_i32 : i32
        %271 = index.sizeof
        %272 = index.mul %c10, %c14
        %273 = math.ctpop %c21640_i16 : i16
        %274 = arith.minui %true, %true_1 : i1
        %275 = index.ceildivs %c12, %c4
        %276 = vector.broadcast %262 : f32 to vector<4x8xf32>
        %277 = vector.fma %276, %276, %276 : vector<4x8xf32>
        %278 = tensor.empty() : tensor<4x8xf32>
        scf.reduce.return %278 : tensor<4x8xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_7[%c5, %c11] : memref<4x10xf32>, vector<8xf32>
    affine.vector_store %20, %alloc_6[%c9, %c13] : memref<4x8xf32>, vector<8xf32>
    %21 = tensor.empty() : tensor<10xi32>
    %alloc_21 = memref.alloc() : memref<10xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%21, %alloc_21 : tensor<10xi32>, memref<10xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = affine.load %alloc_7[%c15, %c3] : memref<4x10xf32>
    %25 = index.divu %c1, %c13
    %26 = arith.addi %c998028318_i64, %c1130808043_i64 : i64
    %c27718_i16 = arith.constant 27718 : i16
    %27 = math.roundeven %15 : tensor<4x8xf32>
    %28 = index.divu %c0, %c5
    %29 = arith.mulf %cst, %cst_0 : f16
    %true_22 = index.bool.constant true
    vector.print %20 : vector<8xf32>
    %30 = affine.max affine_map<(d0, d1) -> ((-(((d0 + d1) floordiv 2) mod 128)) ceildiv 32, -(d0 + d1 - ((d0 + d1) floordiv 2) mod 128) + 2)>(%c5, %c2)
    %31 = vector.extract %20[2] : vector<8xf32>
    %32 = vector.multi_reduction <minf>, %20, %cst_2 [0] : vector<8xf32> to f32
    %alloc_23 = memref.alloc() : memref<4x10xf16>
    %33 = vector.broadcast %cst_0 : f16 to vector<4x8xf16>
    %34 = vector.broadcast %false : i1 to vector<4x8xi1>
    %35 = vector.broadcast %c690179085_i32 : i32 to vector<4x8xi32>
    %36 = vector.gather %alloc_23[%c3, %c8] [%35], %34, %33 : memref<4x10xf16>, vector<4x8xi32>, vector<4x8xi1>, vector<4x8xf16> into vector<4x8xf16>
    %37 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, d1 == 0, d1 * 64 == 0)>(%c0, %c4, %c14) -> i32 {
      %249 = vector.broadcast %c1525623552_i32 : i32 to vector<4x8xi32>
      %250 = bufferization.to_memref %11 : memref<4x10xi16>
      %251 = vector.broadcast %true : i1 to vector<4x2xi1>
      %252 = index.mul %28, %c7
      %253 = index.mul %25, %c7
      %254 = bufferization.clone %alloc_10 : memref<4x10xi64> to memref<4x10xi64>
      %255 = vector.load %alloc_13[%c0, %c0, %c0] : memref<4x2x2xi64>, vector<4x10xi64>
      %256 = math.ctpop %0 : tensor<4x2xi16>
      affine.yield %c1525623552_i32 : i32
    } else {
      %249 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
      %250 = arith.negf %cst_0 : f16
      %251 = vector.extract %36[3] : vector<4x8xf16>
      %252 = arith.addi %false_4, %false_4 : i1
      %253 = arith.shrui %false_4, %true : i1
      %254 = vector.broadcast %c1130808043_i64 : i64 to vector<4x2x2xi64>
      %255 = affine.if affine_set<(d0) : (0 >= 0, d0 floordiv 32 + 8 >= 0, -64 == 0, -64 == 0)>(%c3) -> i16 {
        %257 = index.divu %c4, %25
        %expanded_62 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<4x10xf32> into tensor<4x10x1xf32>
        %258 = arith.ceildivsi %false, %true : i1
        %259 = vector.load %alloc_12[%c3, %c0] : memref<4x2xi1>, vector<4x2x2xi1>
        %260 = vector.broadcast %c1130808043_i64 : i64 to vector<10xi64>
        %261 = vector.broadcast %true_1 : i1 to vector<10xi1>
        %262 = vector.maskedload %alloc_13[%c3, %c0, %c1], %261, %260 : memref<4x2x2xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %expanded_63 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<4x10xi16> into tensor<4x10x1xi16>
        %inserted_64 = tensor.insert %c1669402709_i32 into %22[] : tensor<i32>
        %from_elements_65 = tensor.from_elements %c690179085_i32, %c690179085_i32, %c1669402709_i32, %c1525623552_i32, %c1669402709_i32, %c1669402709_i32, %c1525623552_i32, %c690179085_i32 : tensor<4x2xi32>
        affine.yield %c5118_i16 : i16
      } else {
        %257 = arith.divsi %c21640_i16, %c21640_i16 : i16
        %258 = index.maxs %c7, %c12
        %259 = arith.shli %true, %true : i1
        %cst_62 = arith.constant 5.830000e+02 : f16
        %from_elements_63 = tensor.from_elements %cst_3, %24, %cst_3, %cst_3, %24, %32, %cst_2, %cst_3, %24, %32, %cst_3, %24, %cst_3, %32, %cst_2, %32, %cst_2, %cst_2, %32, %cst_2, %24, %24, %24, %32, %cst_2, %cst_3, %32, %cst_3, %cst_2, %32, %32, %24, %32, %24, %cst_2, %cst_3, %cst_3, %24, %32, %cst_2 : tensor<4x10xf32>
        %260 = arith.negf %24 : f32
        memref.store %cst, %alloc_14[%c2, %c1, %c1] : memref<4x2x2xf16>
        %261 = index.ceildivu %c15, %c15
        affine.yield %c21640_i16 : i16
      }
      %256 = index.add %c14, %30
      affine.yield %c1525623552_i32 : i32
    }
    %38 = vector.broadcast %cst_3 : f32 to vector<4x2xf32>
    %39 = math.absi %1 : tensor<4x2xi16>
    %40 = arith.shli %c1130808043_i64, %c998028318_i64 : i64
    %41 = arith.remf %cst, %cst_0 : f16
    affine.store %true_22, %alloc_12[%c14, %c14] : memref<4x2xi1>
    %42 = math.sqrt %8 : tensor<4x8xf16>
    %43 = vector.broadcast %32 : f32 to vector<2x2xf32>
    %44 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %38, %38, %43 : vector<4x2xf32>, vector<4x2xf32> into vector<2x2xf32>
    %45 = vector.extract_strided_slice %20 {offsets = [6], sizes = [2], strides = [1]} : vector<8xf32> to vector<2xf32>
    %46 = arith.ceildivsi %c1669402709_i32, %c1669402709_i32 : i32
    %47 = vector.load %alloc_9[%c3, %c3] : memref<4x8xi16>, vector<4x2x2xi16>
    %48 = arith.mulf %24, %24 : f32
    %49 = index.mul %c1, %c10
    %50 = arith.cmpf uno, %cst_3, %24 : f32
    %51 = memref.realloc %alloc_21 : memref<10xi32> to memref<2xi32>
    %52 = math.copysign %10, %10 : tensor<4x2x2xf16>
    %53 = tensor.empty() : tensor<8x10xf32>
    %54 = tensor.empty() : tensor<4x10xf32>
    %55 = linalg.matmul ins(%7, %53 : tensor<4x8xf32>, tensor<8x10xf32>) outs(%54 : tensor<4x10xf32>) -> tensor<4x10xf32>
    %56 = tensor.empty() : tensor<4x8xi32>
    %57 = bufferization.to_memref %3 : memref<4x2xi1>
    %58 = arith.addi %c1525623552_i32, %c1525623552_i32 : i32
    %59 = math.atan2 %2, %2 : tensor<4x10xf32>
    %60 = math.roundeven %10 : tensor<4x2x2xf16>
    bufferization.dealloc_tensor %14 : tensor<4x8xf32>
    %61 = math.ctlz %1 : tensor<4x2xi16>
    %62 = math.absf %7 : tensor<4x8xf32>
    %extracted = tensor.extract %15[%c3, %c5] : tensor<4x8xf32>
    %63 = arith.negf %extracted : f32
    %64 = bufferization.clone %alloc_10 : memref<4x10xi64> to memref<4x10xi64>
    vector.print %35 : vector<4x8xi32>
    %alloc_24 = memref.alloc() : memref<f32>
    memref.tensor_store %18, %alloc_24 : memref<f32>
    %65 = vector.broadcast %cst_0 : f16 to vector<8x8xf16>
    %66 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %33, %33, %65 : vector<4x8xf16>, vector<4x8xf16> into vector<8x8xf16>
    %67 = math.absf %cst_0 : f16
    %68 = bufferization.to_memref %11 : memref<4x10xi16>
    %69 = vector.broadcast %cst : f16 to vector<8xf16>
    %dest, %accumulated_value = vector.scan <add>, %33, %69 {inclusive = false, reduction_dim = 0 : i64} : vector<4x8xf16>, vector<8xf16>
    %70 = arith.divf %cst_0, %cst : f16
    %71 = arith.minf %32, %extracted : f32
    %72 = bufferization.clone %57 : memref<4x2xi1> to memref<4x2xi1>
    %73 = arith.remf %cst_2, %32 : f32
    %74 = vector.broadcast %cst_0 : f16 to vector<4xf16>
    %75 = vector.transfer_write %74, %10[%30, %c11, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xf16>, tensor<4x2x2xf16>
    %76 = arith.remsi %c690179085_i32, %c1525623552_i32 : i32
    %extracted_25 = tensor.extract %3[%c0, %c1] : tensor<4x2xi1>
    %77 = scf.while (%arg2 = %c1130808043_i64) : (i64) -> i64 {
      %249 = arith.divsi %extracted_25, %extracted_25 : i1
      memref.copy %alloc_8, %alloc_5 : memref<4x2xi64> to memref<4x2xi64>
      %250 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
      %251 = arith.divui %true, %true_1 : i1
      %252 = index.mul %c9, %30
      %alloc_62 = memref.alloc() : memref<4x10xf32>
      memref.copy %alloc_7, %alloc_62 : memref<4x10xf32> to memref<4x10xf32>
      %253 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
      %254 = arith.xori %false, %true_1 : i1
      scf.condition(%false_4) %arg2 : i64
    } do {
    ^bb0(%arg2: i64):
      %249 = bufferization.to_tensor %alloc_19 : memref<4x2x2xi16>
      %250 = affine.if affine_set<(d0, d1, d2) : (d1 + d0 - (d1 + d1 + d0) >= 0, d2 >= 0, (d1 + d1 + d0) * 2 - 4 >= 0, d1 + d1 + d0 - 32 == 0)>(%c10, %c8, %c7) -> memref<4x10xi32> {
        %267 = index.ceildivu %c3, %c3
        %268 = arith.minsi %c21640_i16, %c21640_i16 : i16
        %269 = index.divs %c3, %c6
        %270 = bufferization.clone %alloc_18 : memref<4x8xi32> to memref<4x8xi32>
        %271 = memref.realloc %alloc_21 : memref<10xi32> to memref<2xi32>
        %272 = arith.shli %true_1, %true_1 : i1
        %273 = bufferization.to_memref %15 : memref<4x8xf32>
        %274 = arith.addi %false_4, %true_22 : i1
        affine.yield %alloc_16 : memref<4x10xi32>
      } else {
        %267 = arith.andi %c690179085_i32, %c1669402709_i32 : i32
        %268 = arith.ceildivsi %c5118_i16, %c5118_i16 : i16
        %269 = arith.maxui %c690179085_i32, %c1669402709_i32 : i32
        %270 = index.ceildivu %c10, %30
        %271 = math.floor %8 : tensor<4x8xf16>
        %272 = math.log10 %8 : tensor<4x8xf16>
        %273 = math.ceil %15 : tensor<4x8xf32>
        %274 = index.mul %c6, %c1
        affine.yield %alloc_16 : memref<4x10xi32>
      }
      %251 = math.absf %32 : f32
      %252 = vector.broadcast %c690179085_i32 : i32 to vector<8xi32>
      %253 = vector.multi_reduction <maxsi>, %35, %252 [0] : vector<4x8xi32> to vector<8xi32>
      %254 = vector.broadcast %32 : f32 to vector<4x8xf32>
      %255 = vector.fma %254, %254, %254 : vector<4x8xf32>
      %256 = scf.while (%arg3 = %false_4) : (i1) -> i1 {
        %267 = math.absf %5 : tensor<4x8xf32>
        %268 = math.tanh %32 : f32
        %269 = tensor.empty() : tensor<4x8xi1>
        %270 = vector.broadcast %c533791251_i64 : i64 to vector<4x2x2xi64>
        %271 = vector.broadcast %true_1 : i1 to vector<4x2x2xi1>
        %272 = vector.broadcast %c1525623552_i32 : i32 to vector<4x2x2xi32>
        %273 = vector.gather %13[%25, %c4] [%272], %271, %270 : tensor<4x2xi64>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xi64> into vector<4x2x2xi64>
        %274 = bufferization.to_tensor %alloc_17 : memref<4x8xf16>
        %275 = arith.remf %cst, %cst_0 : f16
        %276 = vector.transpose %271, [0, 2, 1] : vector<4x2x2xi1> to vector<4x2x2xi1>
        %277 = index.ceildivu %30, %c15
        scf.condition(%false) %true_1 : i1
      } do {
      ^bb0(%arg3: i1):
        %267 = vector.broadcast %c8 : index to vector<2xindex>
        %268 = vector.broadcast %true_1 : i1 to vector<2xi1>
        %269 = vector.broadcast %c5118_i16 : i16 to vector<2xi16>
        vector.scatter %68[%c3, %c2] [%267], %268, %269 : memref<4x10xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %270 = math.ceil %15 : tensor<4x8xf32>
        %271 = vector.broadcast %c1130808043_i64 : i64 to vector<4xi64>
        %272 = vector.broadcast %true : i1 to vector<4xi1>
        %273 = vector.maskedload %64[%c1, %c1], %272, %271 : memref<4x10xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %alloc_63 = memref.alloc() : memref<4x10xf32>
        memref.copy %alloc_7, %alloc_63 : memref<4x10xf32> to memref<4x10xf32>
        %274 = math.tan %2 : tensor<4x10xf32>
        %275 = index.castu %28 : index to i32
        %276 = math.floor %12 : tensor<4x2x2xf16>
        %277 = math.log1p %32 : f32
        %278 = index.sizeof
        %279 = math.ctpop %false_4 : i1
        %280 = vector.insert %c998028318_i64, %271 [2] : i64 into vector<4xi64>
        %281 = math.fma %12, %12, %12 : tensor<4x2x2xf16>
        %282 = math.ctlz %true : i1
        %extracted_64 = tensor.extract %9[%c0, %c0] : tensor<4x2xi1>
        %c1_i16 = arith.constant 1 : i16
        %283 = vector.transfer_read %0[%c14, %28], %c1_i16 : tensor<4x2xi16>, vector<10xi16>
        memref.tensor_store %14, %alloc_6 : memref<4x8xf32>
        scf.yield %true_22 : i1
      }
      %257 = math.fma %15, %15, %5 : tensor<4x8xf32>
      %258 = vector.matrix_multiply %45, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xf32>, vector<8xf32>) -> vector<4xf32>
      %259 = math.roundeven %32 : f32
      %260 = vector.broadcast %cst : f16 to vector<4x4xf16>
      %261 = vector.outerproduct %74, %74, %260 {kind = #vector.kind<add>} : vector<4xf16>, vector<4xf16>
      %262 = math.floor %7 : tensor<4x8xf32>
      %263 = arith.mulf %cst_0, %cst : f16
      %generated_62 = tensor.generate %30, %c9 {
      ^bb0(%arg3: index, %arg4: index):
        %267 = arith.remf %32, %cst_3 : f32
        %268 = arith.remui %c5118_i16, %c5118_i16 : i16
        %269 = vector.bitcast %33 : vector<4x8xf16> to vector<4x8xi16>
        %270 = affine.max affine_map<(d0, d1) -> (d0 - d1)>(%c13, %c4)
        tensor.yield %32 : f32
      } : tensor<?x?xf32>
      %264 = math.ceil %14 : tensor<4x8xf32>
      %265 = math.log10 %extracted : f32
      %266 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
      scf.yield %c998028318_i64 : i64
    }
    %generated = tensor.generate %c0, %28, %c14 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %249 = arith.cmpf oeq, %cst_0, %cst_0 : f16
      %250 = math.ceil %8 : tensor<4x8xf16>
      %251 = math.copysign %5, %5 : tensor<4x8xf32>
      %252 = math.floor %12 : tensor<4x2x2xf16>
      tensor.yield %extracted : f32
    } : tensor<?x?x?xf32>
    %78 = bufferization.clone %alloc_5 : memref<4x2xi64> to memref<4x2xi64>
    %79 = vector.broadcast %cst_3 : f32 to vector<8x8xf32>
    %80 = vector.outerproduct %20, %20, %79 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
    %inserted = tensor.insert %cst into %10[%c2, %c1, %c1] : tensor<4x2x2xf16>
    %extracted_26 = tensor.extract %15[%c0, %c6] : tensor<4x8xf32>
    %splat = tensor.splat %cst_0 : tensor<4x10xf16>
    %81 = arith.negf %cst : f16
    %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<4x2xi1> into tensor<4x2x1xi1>
    %82 = arith.mulf %cst_0, %cst_0 : f16
    %83 = math.ceil %splat : tensor<4x10xf16>
    %84 = vector.insertelement %cst, %74[%c8 : index] : vector<4xf16>
    %85 = index.floordivs %30, %c11
    %86 = arith.remf %extracted, %cst_2 : f32
    scf.if %true {
      %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<4x10xi16> into tensor<40xi16>
      %alloc_62 = memref.alloc() : memref<4x2x2xf16>
      %from_elements_63 = tensor.from_elements %true, %false_4, %true, %true_1, %false, %extracted_25, %true, %false_4, %true_1, %true, %true_1, %false, %extracted_25, %false_4, %extracted_25, %false_4 : tensor<4x2x2xi1>
      %249 = math.fpowi %8, %56 : tensor<4x8xf16>, tensor<4x8xi32>
      %250 = arith.shli %c1525623552_i32, %c1525623552_i32 : i32
      %251 = vector.broadcast %32 : f32 to vector<8x8xf32>
      %252 = vector.outerproduct %20, %20, %251 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
      %253 = index.maxs %25, %25
      %254 = scf.while (%arg2 = %c1130808043_i64) : (i64) -> i64 {
        %255 = memref.realloc %alloc_21 : memref<10xi32> to memref<4xi32>
        %256 = math.absf %10 : tensor<4x2x2xf16>
        %257 = arith.minsi %false, %false : i1
        %258 = math.atan2 %2, %2 : tensor<4x10xf32>
        %259 = vector.broadcast %extracted_25 : i1 to vector<4xi1>
        %260 = vector.maskedload %alloc_23[%c2, %c0], %259, %74 : memref<4x10xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %261 = arith.minui %c533791251_i64, %c1130808043_i64 : i64
        %alloc_64 = memref.alloc() : memref<4x8xf32>
        memref.copy %alloc_6, %alloc_64 : memref<4x8xf32> to memref<4x8xf32>
        %262 = arith.minf %32, %cst_3 : f32
        scf.condition(%false_4) %arg2 : i64
      } do {
      ^bb0(%arg2: i64):
        %255 = arith.maxui %c5118_i16, %c5118_i16 : i16
        %from_elements_64 = tensor.from_elements %c21640_i16, %c21640_i16, %c21640_i16, %c21640_i16, %c21640_i16, %c21640_i16, %c21640_i16, %c5118_i16 : tensor<4x2xi16>
        %256 = arith.mulf %32, %24 : f32
        %257 = math.fpowi %7, %56 : tensor<4x8xf32>, tensor<4x8xi32>
        %258 = arith.shrsi %c1669402709_i32, %c690179085_i32 : i32
        %expanded_65 = tensor.expand_shape %21 [[0, 1]] : tensor<10xi32> into tensor<10x1xi32>
        %259 = vector.broadcast %cst : f16 to vector<4x2x2xf16>
        %260 = vector.broadcast %false_4 : i1 to vector<4x2x2xi1>
        %261 = vector.broadcast %c1525623552_i32 : i32 to vector<4x2x2xi32>
        %262 = vector.gather %alloc_14[%c12, %c11, %c6] [%261], %260, %259 : memref<4x2x2xf16>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xf16> into vector<4x2x2xf16>
        %263 = vector.shuffle %259, %262 [2, 4, 5, 6] : vector<4x2x2xf16>, vector<4x2x2xf16>
        %264 = math.ctlz %true_1 : i1
        %265 = affine.max affine_map<(d0, d1, d2) -> (-((-d1) mod 32) + d2)>(%c2, %c10, %30)
        %266 = arith.remf %32, %extracted : f32
        %rank_66 = tensor.rank %3 : tensor<4x2xi1>
        %267 = arith.ori %arg2, %c533791251_i64 : i64
        %268 = bufferization.to_tensor %alloc : memref<4x8xi32>
        %269 = vector.extract %38[2] : vector<4x2xf32>
        %270 = math.floor %12 : tensor<4x2x2xf16>
        scf.yield %c998028318_i64 : i64
      }
    }
    %87 = index.ceildivu %28, %c1
    scf.if %false {
      %249 = math.round %cst : f16
      %250 = math.floor %10 : tensor<4x2x2xf16>
      %251 = arith.subi %c690179085_i32, %c1669402709_i32 : i32
      %252 = vector.shuffle %74, %74 [1, 2, 3, 4, 7] : vector<4xf16>, vector<4xf16>
      %253 = math.log %extracted_26 : f32
      %254 = bufferization.to_tensor %alloc_10 : memref<4x10xi64>
      %255 = tensor.empty() : tensor<4x8xf32>
      %mapped_62 = linalg.map ins(%5, %15 : tensor<4x8xf32>, tensor<4x8xf32>) outs(%255 : tensor<4x8xf32>)
        (%in: f32, %in_63: f32) {
          %257 = arith.xori %c21640_i16, %c5118_i16 : i16
          %258 = tensor.empty(%c6) : tensor<4x2x?xf32>
          %259 = math.tan %splat : tensor<4x10xf16>
          %alloc_64 = memref.alloc() : memref<4x8xi32>
          %260 = vector.broadcast %false_4 : i1 to vector<4x2xi1>
          %261 = vector.broadcast %extracted_26 : f32 to vector<4xf32>
          %262 = vector.broadcast %false_4 : i1 to vector<4xi1>
          %263 = vector.maskedload %alloc_11[%c2, %c1, %c1], %262, %261 : memref<4x2x2xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
          %264 = tensor.empty() : tensor<10x2xf32>
          %265 = tensor.empty() : tensor<4x2xf32>
          %266 = linalg.matmul ins(%54, %264 : tensor<4x10xf32>, tensor<10x2xf32>) outs(%265 : tensor<4x2xf32>) -> tensor<4x2xf32>
          %267 = vector.reduction <minf>, %261 : vector<4xf32> into f32
          %268 = index.divs %87, %c5
          %269 = vector.broadcast %true_22 : i1 to vector<8xi1>
          %270 = vector.maskedload %alloc_7[%c1, %c6], %269, %20 : memref<4x10xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %271 = math.ctlz %9 : tensor<4x2xi1>
          %272 = math.roundeven %15 : tensor<4x8xf32>
          %273 = vector.shuffle %263, %45 [1, 3, 4] : vector<4xf32>, vector<2xf32>
          %274 = math.log1p %10 : tensor<4x2x2xf16>
          %275 = arith.mulf %32, %24 : f32
          bufferization.dealloc_tensor %18 : tensor<f32>
          %276 = math.round %2 : tensor<4x10xf32>
          %277 = vector.shuffle %270, %261 [0, 1, 3, 5, 8, 9] : vector<8xf32>, vector<4xf32>
          %cast_65 = tensor.cast %8 : tensor<4x8xf16> to tensor<?x?xf16>
          %278 = index.divs %87, %25
          %279 = bufferization.to_memref %2 : memref<4x10xf32>
          %280 = arith.mulf %cst_2, %cst_2 : f32
          %281 = index.sizeof
          bufferization.dealloc_tensor %7 : tensor<4x8xf32>
          %282 = math.fma %265, %265, %265 : tensor<4x2xf32>
          %283 = index.divs %25, %c7
          %284 = math.round %255 : tensor<4x8xf32>
          %285 = math.tan %extracted_26 : f32
          %alloc_66 = memref.alloc() : memref<4x10xf32>
          %286 = bufferization.to_memref %16 : memref<4x2xi1>
          %287 = vector.gather %56[%278, %25] [%35], %34, %35 : tensor<4x8xi32>, vector<4x8xi32>, vector<4x8xi1>, vector<4x8xi32> into vector<4x8xi32>
          %cast_67 = tensor.cast %254 : tensor<4x10xi64> to tensor<?x?xi64>
          %cst_68 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_68 : f32
        }
      %256 = index.ceildivu %30, %c8
    } else {
      %249 = vector.reduction <minf>, %20 : vector<8xf32> into f32
      %250 = arith.addi %false, %extracted_25 : i1
      %251 = scf.index_switch %c9 -> i16 
      case 1 {
        %255 = math.ipowi %9, %3 : tensor<4x2xi1>
        %alloc_64 = memref.alloc() : memref<4x10xi1>
        %256 = vector.broadcast %false : i1 to vector<4x2xi1>
        %257 = vector.broadcast %true : i1 to vector<4x10xi1>
        %258 = vector.broadcast %c1669402709_i32 : i32 to vector<4x10xi32>
        %259 = vector.gather %4[%30, %c15, %25] [%258], %257, %257 : tensor<4x2x2xi1>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi1> into vector<4x10xi1>
        %alloc_65 = memref.alloc() : memref<4x2xi16>
        memref.tensor_store %1, %alloc_65 : memref<4x2xi16>
        %alloc_66 = memref.alloc() : memref<4x2x2xf32>
        memref.copy %alloc_11, %alloc_66 : memref<4x2x2xf32> to memref<4x2x2xf32>
        %260 = arith.negf %cst_0 : f16
        %c11343_i16 = arith.constant 11343 : i16
        %261 = vector.reduction <minf>, %74 : vector<4xf16> into f16
        %262 = vector.transpose %74, [0] : vector<4xf16> to vector<4xf16>
        %263 = math.cttz %6 : tensor<4x2x2xi64>
        %264 = arith.remf %cst_3, %cst_2 : f32
        %265 = index.maxs %c7, %85
        %266 = vector.broadcast %c5118_i16 : i16 to vector<i16>
        %267 = vector.transfer_write %266, %1[%c15, %30] : vector<i16>, tensor<4x2xi16>
        %268 = vector.broadcast %c690179085_i32 : i32 to vector<4x10xi32>
        %cast_67 = tensor.cast %23 : tensor<i32> to tensor<i32>
        scf.yield %c21640_i16 : i16
      }
      default {
        %255 = math.atan2 %cst_2, %extracted_26 : f32
        %256 = math.log1p %2 : tensor<4x10xf32>
        %257 = memref.realloc %alloc_21 : memref<10xi32> to memref<2xi32>
        %258 = arith.subi %false, %true : i1
        %259 = index.casts %c5 : index to i32
        %260 = math.absf %32 : f32
        %261 = affine.max affine_map<(d0, d1, d2) -> (-(d2 - d1), -(d1 ceildiv 4), d1 ceildiv 4)>(%25, %85, %c10)
        %262 = arith.floordivsi %c998028318_i64, %c533791251_i64 : i64
        %263 = vector.broadcast %cst : f16 to vector<8xf16>
        %264 = vector.insert %263, %36 [2] : vector<8xf16> into vector<4x8xf16>
        %265 = math.round %2 : tensor<4x10xf32>
        %266 = index.add %c8, %28
        %267 = index.divs %28, %85
        %268 = tensor.empty() : tensor<4x8xi64>
        %269 = vector.broadcast %c998028318_i64 : i64 to vector<4x2x2xi64>
        %270 = vector.broadcast %true_1 : i1 to vector<4x2x2xi1>
        %271 = vector.broadcast %c1669402709_i32 : i32 to vector<4x2x2xi32>
        %272 = vector.gather %268[%28, %c3] [%271], %270, %269 : tensor<4x8xi64>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xi64> into vector<4x2x2xi64>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %74, %33, %263 : vector<4xf16>, vector<4x8xf16> into vector<8xf16>
        %274 = bufferization.to_memref %23 : memref<i32>
        %275 = index.mul %c4, %28
        scf.yield %c5118_i16 : i16
      }
      %252 = math.powf %cst_3, %extracted_26 : f32
      %253 = tensor.empty() : tensor<f32>
      %mapped_62 = linalg.map ins(%18, %18 : tensor<f32>, tensor<f32>) outs(%253 : tensor<f32>)
        (%in: f32, %in_64: f32) {
          %cst_65 = arith.constant 0x4E33C205 : f32
          %255 = math.log1p %2 : tensor<4x10xf32>
          %cst_66 = arith.constant 1.06002221E+9 : f32
          %256 = math.ipowi %11, %11 : tensor<4x10xi16>
          %257 = affine.max affine_map<(d0, d1, d2) -> (d1 - 16, (d2 * -7 + 64) * 2, 64)>(%49, %c0, %28)
          %258 = arith.mulf %extracted, %in_64 : f32
          %259 = arith.minsi %true, %true_22 : i1
          %260 = arith.remf %cst_3, %in_64 : f32
          %261 = bufferization.clone %alloc_8 : memref<4x2xi64> to memref<4x2xi64>
          %262 = math.atan2 %32, %cst_2 : f32
          %263 = bufferization.to_tensor %alloc_18 : memref<4x8xi32>
          %264 = math.powf %15, %5 : tensor<4x8xf32>
          %c1382068177_i32 = arith.constant 1382068177 : i32
          affine.store %in, %alloc_6[%c4, %c0] : memref<4x8xf32>
          %265 = arith.cmpf oge, %cst, %cst : f16
          %266 = arith.muli %c1130808043_i64, %c998028318_i64 : i64
          %267 = arith.shrsi %true_1, %true_1 : i1
          %268 = index.ceildivu %c10, %c3
          %269 = math.powf %8, %8 : tensor<4x8xf16>
          %270 = math.powf %24, %extracted_26 : f32
          %271 = arith.maxf %in_64, %in_64 : f32
          %272 = index.add %c10, %c2
          %273 = math.ctpop %13 : tensor<4x2xi64>
          memref.tensor_store %7, %alloc_6 : memref<4x8xf32>
          %alloc_67 = memref.alloc() : memref<4x2x2xf16>
          %274 = arith.remsi %c690179085_i32, %c690179085_i32 : i32
          %275 = vector.load %alloc_23[%c3, %c1] : memref<4x10xf16>, vector<4x2xf16>
          %276 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
          %277 = math.ceil %5 : tensor<4x8xf32>
          %278 = math.tanh %5 : tensor<4x8xf32>
          %279 = arith.ceildivsi %c998028318_i64, %c1130808043_i64 : i64
          %280 = math.log1p %15 : tensor<4x8xf32>
          %cst_68 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_68 : f32
        }
      %from_elements_63 = tensor.from_elements %24, %24, %extracted, %extracted, %extracted_26, %extracted_26, %extracted, %24 : tensor<4x2xf32>
      %254 = index.mul %c9, %c7
      memref.tensor_store %2, %alloc_7 : memref<4x10xf32>
    }
    %88 = arith.divsi %c1525623552_i32, %c690179085_i32 : i32
    %89 = vector.reduction <minf>, %74 : vector<4xf16> into f16
    %90 = math.round %extracted_26 : f32
    %expanded_27 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<4x8xf16> into tensor<4x8x1xf16>
    %91 = arith.subi %true_1, %true_22 : i1
    %92 = math.absi %c1525623552_i32 : i32
    %93 = math.fpowi %7, %56 : tensor<4x8xf32>, tensor<4x8xi32>
    %94 = tensor.empty() : tensor<4x10xi64>
    %95 = bufferization.to_memref %reduced : memref<f32>
    %96 = math.absi %c998028318_i64 : i64
    %97 = arith.maxf %cst_3, %32 : f32
    %98 = arith.maxf %cst, %cst : f16
    %99 = index.ceildivu %87, %c3
    %false_28 = arith.constant false
    %100 = arith.cmpf oge, %extracted, %cst_3 : f32
    %101 = math.fma %32, %cst_2, %cst_2 : f32
    memref.store %c1669402709_i32, %alloc_16[%c1, %c8] : memref<4x10xi32>
    %102 = math.cttz %false_4 : i1
    %103 = math.cttz %true_22 : i1
    %104 = vector.broadcast %c1525623552_i32 : i32 to vector<4x2x2xi32>
    %105 = vector.broadcast %cst : f16 to vector<2xf16>
    %106 = vector.broadcast %false_4 : i1 to vector<2xi1>
    %107 = vector.maskedload %alloc_17[%c2, %c7], %106, %105 : memref<4x8xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
    %108 = math.log1p %12 : tensor<4x2x2xf16>
    %109 = math.ctpop %c1130808043_i64 : i64
    %110 = bufferization.clone %alloc_15 : memref<4x2x2xi64> to memref<4x2x2xi64>
    %111 = math.fpowi %15, %56 : tensor<4x8xf32>, tensor<4x8xi32>
    %112 = math.tanh %cst : f16
    %extracted_29 = tensor.extract %2[%c1, %c1] : tensor<4x10xf32>
    %113 = arith.shrsi %c533791251_i64, %c998028318_i64 : i64
    %114 = math.log10 %expanded_27 : tensor<4x8x1xf16>
    %115 = arith.xori %c21640_i16, %c5118_i16 : i16
    %116 = vector.load %alloc_23[%c0, %c6] : memref<4x10xf16>, vector<4x2xf16>
    %117 = index.mul %30, %c13
    %118 = vector.insertelement %false, %106[%49 : index] : vector<2xi1>
    %119 = vector.extract %105[0] : vector<2xf16>
    %120 = tensor.empty() : tensor<8x4xf16>
    %mapped = linalg.map ins(%alloc_20, %alloc_20 : memref<8x4xf16>, memref<8x4xf16>) outs(%120 : tensor<8x4xf16>)
      (%in: f16, %in_62: f16) {
        %inserted_63 = tensor.insert %true_22 into %expanded[%c2, %c1, %c0] : tensor<4x2x1xi1>
        %249 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 4) * 2 >= 0, (d1 - 8) * 128 == 0, (d0 ceildiv 4 + 32) * 2 >= 0)>(%c13, %c2, %c5) -> i1 {
          %281 = index.floordivs %c5, %c1
          %282 = math.absf %8 : tensor<4x8xf16>
          %283 = math.absi %extracted_25 : i1
          %284 = math.log10 %15 : tensor<4x8xf32>
          %285 = index.maxu %c4, %49
          %286 = arith.shli %false_4, %false_4 : i1
          %287 = vector.broadcast %cst_3 : f32 to vector<4x8xf32>
          %288 = vector.fma %287, %287, %287 : vector<4x8xf32>
          %289 = vector.reduction <minsi>, %106 : vector<2xi1> into i1
          affine.yield %false : i1
        } else {
          %281 = arith.maxf %in, %in : f16
          %282 = vector.matrix_multiply %105, %107 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          memref.store %false, %72[%c2, %c1] : memref<4x2xi1>
          %collapsed = tensor.collapse_shape %splat [[0, 1]] : tensor<4x10xf16> into tensor<40xf16>
          %283 = bufferization.to_memref %2 : memref<4x10xf32>
          %284 = bufferization.clone %283 : memref<4x10xf32> to memref<4x10xf32>
          %alloc_72 = memref.alloc() : memref<10xi32>
          memref.copy %alloc_21, %alloc_72 : memref<10xi32> to memref<10xi32>
          %285 = vector.broadcast %32 : f32 to vector<4x2xf32>
          affine.yield %true_1 : i1
        }
        %250 = vector.broadcast %c690179085_i32 : i32 to vector<i32>
        %251 = vector.transfer_write %250, %21[%c0] : vector<i32>, tensor<10xi32>
        %252 = bufferization.clone %alloc_5 : memref<4x2xi64> to memref<4x2xi64>
        %253 = math.ceil %cst_3 : f32
        %254 = arith.mulf %extracted_26, %cst_3 : f32
        %255 = math.exp %cst_0 : f16
        %256 = math.absi %22 : tensor<i32>
        %257 = bufferization.clone %alloc_19 : memref<4x2x2xi16> to memref<4x2x2xi16>
        %258 = index.mul %c3, %c12
        %259 = scf.while (%arg2 = %57) : (memref<4x2xi1>) -> memref<4x2xi1> {
          %from_elements_72 = tensor.from_elements %c1130808043_i64, %c533791251_i64, %c1130808043_i64, %c533791251_i64, %c998028318_i64, %c1130808043_i64, %c1130808043_i64, %c1130808043_i64, %c998028318_i64, %c998028318_i64, %c998028318_i64, %c1130808043_i64, %c1130808043_i64, %c533791251_i64, %c1130808043_i64, %c1130808043_i64 : tensor<4x2x2xi64>
          %281 = math.expm1 %12 : tensor<4x2x2xf16>
          %282 = arith.addf %in_62, %cst : f16
          %283 = vector.matrix_multiply %105, %105 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          %alloc_73 = memref.alloc() : memref<4x2x2xf32>
          %284 = memref.realloc %alloc_21 : memref<10xi32> to memref<2xi32>
          %285 = arith.remsi %extracted_25, %true : i1
          %286 = index.mul %85, %c9
          scf.condition(%true_1) %arg2 : memref<4x2xi1>
        } do {
        ^bb0(%arg2: memref<4x2xi1>):
          %281 = arith.shrsi %c533791251_i64, %c998028318_i64 : i64
          %282 = arith.addi %true_1, %true_22 : i1
          %283 = index.sub %25, %c3
          %284 = index.maxs %c15, %c4
          %285 = math.tanh %cst : f16
          %286 = arith.remui %c690179085_i32, %c1525623552_i32 : i32
          %287 = arith.maxui %c998028318_i64, %c533791251_i64 : i64
          %inserted_72 = tensor.insert %extracted_29 into %5[%c1, %c2] : tensor<4x8xf32>
          %288 = index.divu %c10, %87
          %289 = math.log %reduced : tensor<f32>
          %290 = index.maxu %85, %c8
          %291 = index.divs %c1, %c5
          %292 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
          %293 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, d1 + d2 + d3 - 16, d3)>(%c0, %c2, %291, %c13)
          %294 = math.ctlz %56 : tensor<4x8xi32>
          %295 = math.roundeven %15 : tensor<4x8xf32>
          scf.yield %72 : memref<4x2xi1>
        }
        %cast_64 = tensor.cast %13 : tensor<4x2xi64> to tensor<?x?xi64>
        %false_65 = arith.constant false
        %260 = vector.transfer_read %9[%99, %c7], %false_65 : tensor<4x2xi1>, vector<10xi1>
        %261 = index.sub %c11, %c3
        %262 = bufferization.clone %alloc_7 : memref<4x10xf32> to memref<4x10xf32>
        %263 = arith.remf %cst_3, %extracted : f32
        %264 = bufferization.clone %alloc_6 : memref<4x8xf32> to memref<4x8xf32>
        %265 = tensor.empty() : tensor<4x2xi16>
        %mapped_66 = linalg.map ins(%0, %0, %1 : tensor<4x2xi16>, tensor<4x2xi16>, tensor<4x2xi16>) outs(%265 : tensor<4x2xi16>)
          (%in_72: i16, %in_73: i16, %in_74: i16) {
            %281 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
            %282 = tensor.empty() : tensor<4x2xi32>
            %283 = index.castu %c12 : index to i32
            %284 = bufferization.clone %57 : memref<4x2xi1> to memref<4x2xi1>
            %285 = math.atan2 %24, %extracted : f32
            %286 = bufferization.to_tensor %252 : memref<4x2xi64>
            memref.store %cst, %alloc_17[%c0, %c3] : memref<4x8xf16>
            %287 = index.divu %c5, %c7
            %288 = arith.shli %c533791251_i64, %c1130808043_i64 : i64
            %289 = arith.remf %extracted_26, %24 : f32
            %290 = math.log10 %extracted : f32
            %291 = math.expm1 %5 : tensor<4x8xf32>
            %292 = arith.andi %c533791251_i64, %c533791251_i64 : i64
            %293 = arith.mulf %extracted_26, %24 : f32
            %294 = vector.reduction <maxf>, %105 : vector<2xf16> into f16
            %295 = vector.transpose %74, [0] : vector<4xf16> to vector<4xf16>
            affine.store %c533791251_i64, %alloc_10[%c6, %c12] : memref<4x10xi64>
            %splat_75 = tensor.splat %c1525623552_i32 : tensor<4x2xi32>
            %296 = arith.subi %c1130808043_i64, %c1130808043_i64 : i64
            %297 = vector.reduction <minf>, %20 : vector<8xf32> into f32
            %298 = math.copysign %in, %in_62 : f16
            %299 = math.log10 %32 : f32
            memref.tensor_store %3, %284 : memref<4x2xi1>
            %300 = math.exp2 %7 : tensor<4x8xf32>
            %301 = index.ceildivs %49, %25
            %302 = math.copysign %extracted, %extracted_29 : f32
            %303 = vector.insertelement %32, %45[%c2 : index] : vector<2xf32>
            %304 = arith.minsi %c998028318_i64, %c533791251_i64 : i64
            %305 = index.maxu %28, %258
            %splat_76 = tensor.splat %cst_0 : tensor<4x8xf16>
            %splat_77 = tensor.splat %c533791251_i64 : tensor<4x2xi64>
            %306 = arith.divsi %false, %true : i1
            %c0_i16_78 = arith.constant 0 : i16
            linalg.yield %c0_i16_78 : i16
          }
        bufferization.dealloc_tensor %8 : tensor<4x8xf16>
        %alloc_67 = memref.alloc() : memref<4x8xf16>
        %266 = arith.minsi %false_4, %true : i1
        %267 = tensor.empty() : tensor<4xf16>
        %268 = tensor.empty() : tensor<2x4xf16>
        %269 = tensor.empty() : tensor<2xf16>
        %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %268, %269 : tensor<4xf16>, tensor<2x4xf16>, tensor<2xf16>) outs(%12 : tensor<4x2x2xf16>) {
        ^bb0(%in_72: f16, %in_73: f16, %in_74: f16, %out: f16):
          %281 = arith.remf %24, %cst_3 : f32
          %from_elements_75 = tensor.from_elements %c533791251_i64, %c1130808043_i64, %c998028318_i64, %c998028318_i64, %c1130808043_i64, %c998028318_i64, %c1130808043_i64, %c533791251_i64, %c1130808043_i64, %c998028318_i64, %c998028318_i64, %c998028318_i64, %c533791251_i64, %c1130808043_i64, %c998028318_i64, %c533791251_i64, %c533791251_i64, %c533791251_i64, %c1130808043_i64, %c1130808043_i64, %c1130808043_i64, %c998028318_i64, %c998028318_i64, %c533791251_i64, %c998028318_i64, %c998028318_i64, %c533791251_i64, %c1130808043_i64, %c1130808043_i64, %c533791251_i64, %c998028318_i64, %c998028318_i64 : tensor<4x8xi64>
          memref.tensor_store %11, %68 : memref<4x10xi16>
          %282 = tensor.empty() : tensor<4x8xi64>
          %283 = arith.shrsi %extracted_25, %false_4 : i1
          %284 = math.log1p %2 : tensor<4x10xf32>
          %false_76 = index.bool.constant false
          %285 = math.round %54 : tensor<4x10xf32>
          %286 = arith.shli %c1669402709_i32, %c1525623552_i32 : i32
          %287 = index.mul %258, %c11
          %288 = index.maxs %c9, %c3
          %289 = arith.muli %false_76, %true_22 : i1
          %inserted_77 = tensor.insert %c533791251_i64 into %282[%c2, %c0] : tensor<4x8xi64>
          %290 = math.ipowi %1, %0 : tensor<4x2xi16>
          %291 = math.fpowi %24, %c1669402709_i32 : f32, i32
          %292 = arith.remsi %c533791251_i64, %c1130808043_i64 : i64
          %293 = arith.remf %extracted_29, %32 : f32
          %294 = arith.subi %false_76, %true : i1
          %295 = bufferization.clone %alloc_13 : memref<4x2x2xi64> to memref<4x2x2xi64>
          %296 = math.ceil %cst_3 : f32
          %297 = vector.broadcast %c690179085_i32 : i32 to vector<10xi32>
          %298 = vector.broadcast %true : i1 to vector<10xi1>
          %299 = vector.maskedload %alloc_21[%c9], %298, %297 : memref<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %300 = vector.load %alloc_11[%c3, %c1, %c0] : memref<4x2x2xf32>, vector<4x2x2xf32>
          %301 = index.casts %261 : index to i32
          %302 = affine.max affine_map<(d0, d1, d2) -> (((d1 ceildiv 8) ceildiv 128) ceildiv 128)>(%c6, %c3, %49)
          %303 = arith.addf %cst, %in : f16
          %304 = vector.reduction <minf>, %105 : vector<2xf16> into f16
          %305 = math.exp %54 : tensor<4x10xf32>
          %306 = index.divu %49, %288
          %307 = index.casts %306 : index to i32
          %308 = bufferization.clone %alloc_9 : memref<4x8xi16> to memref<4x8xi16>
          %309 = math.ceil %in_73 : f16
          %310 = math.ceil %8 : tensor<4x8xf16>
          linalg.yield %in : f16
        } -> tensor<4x2x2xf16>
        %271 = index.mul %c8, %c4
        %cst_68 = arith.constant 1.000000e+00 : f16
        %272 = vector.transfer_read %alloc_14[%c10, %261, %c6], %cst_68 : memref<4x2x2xf16>, vector<2x2xf16>
        %273 = scf.index_switch %c9 -> i32 
        case 1 {
          %281 = index.mul %c14, %c2
          %282 = math.log10 %12 : tensor<4x2x2xf16>
          %283 = arith.addi %c998028318_i64, %c1130808043_i64 : i64
          %284 = math.copysign %18, %18 : tensor<f32>
          %285 = vector.splat %c15 : vector<4x2xindex>
          %286 = index.divs %117, %c3
          %287 = arith.xori %c5118_i16, %c5118_i16 : i16
          %288 = vector.broadcast %24 : f32 to vector<8xf32>
          %289 = vector.transfer_write %288, %5[%c12, %258] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf32>, tensor<4x8xf32>
          %290 = vector.transpose %35, [1, 0] : vector<4x8xi32> to vector<8x4xi32>
          %291 = math.powf %in, %in : f16
          %292 = index.mul %c7, %c14
          %293 = math.ctpop %1 : tensor<4x2xi16>
          %294 = math.ctlz %21 : tensor<10xi32>
          %295 = index.sizeof
          %296 = math.powf %24, %extracted : f32
          bufferization.dealloc_tensor %2 : tensor<4x10xf32>
          scf.yield %c1525623552_i32 : i32
        }
        default {
          %281 = index.divu %117, %c14
          %282 = affine.load %72[%c4, %c4] : memref<4x2xi1>
          %283 = index.divu %c10, %c6
          %284 = arith.remsi %c533791251_i64, %c1130808043_i64 : i64
          %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<4x2x2xf16> into tensor<8x2xf16>
          %285 = vector.matrix_multiply %107, %105 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          %286 = bufferization.to_tensor %alloc : memref<4x8xi32>
          %287 = index.ceildivu %271, %c11
          %splat_72 = tensor.splat %c998028318_i64 : tensor<4x2xi64>
          %288 = arith.shrsi %c690179085_i32, %c690179085_i32 : i32
          %289 = bufferization.clone %alloc_5 : memref<4x2xi64> to memref<4x2xi64>
          %290 = arith.floordivsi %true_22, %true_22 : i1
          %291 = vector.reduction <add>, %105 : vector<2xf16> into f16
          %292 = vector.load %257[%c3, %c0, %c1] : memref<4x2x2xi16>, vector<4x2x2xi16>
          %from_elements_73 = tensor.from_elements %c5118_i16, %c21640_i16, %c5118_i16, %c21640_i16, %c5118_i16, %c21640_i16, %c5118_i16, %c5118_i16 : tensor<4x2xi16>
          %293 = math.roundeven %8 : tensor<4x8xf16>
          scf.yield %c690179085_i32 : i32
        }
        %274 = affine.if affine_set<(d0, d1) : (d0 - ((d1 floordiv 128) floordiv 2) ceildiv 128 == 0, (d1 floordiv 128) floordiv 2 >= 0, -d1 >= 0)>(%c3, %c14) -> i64 {
          %281 = vector.create_mask %c5, %117, %99 : vector<4x2x2xi1>
          %282 = tensor.empty() : tensor<4x8xi32>
          %283 = vector.broadcast %cst : f16 to vector<4x4xf16>
          %284 = vector.outerproduct %74, %74, %283 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
          %285 = arith.minsi %false_65, %false : i1
          %286 = arith.andi %c1525623552_i32, %c1525623552_i32 : i32
          %287 = index.sub %c7, %c8
          %288 = arith.minui %c5118_i16, %c5118_i16 : i16
          %289 = index.ceildivu %25, %c10
          affine.yield %c1130808043_i64 : i64
        } else {
          %inserted_72 = tensor.insert %c1669402709_i32 into %23[] : tensor<i32>
          %alloca = memref.alloca() : memref<4x8xi1>
          %281 = index.sizeof
          %282 = index.mul %85, %c2
          %283 = vector.broadcast %extracted_26 : f32 to vector<4x2xf32>
          vector.transfer_write %283, %alloc_11[%85, %c9, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x2xf32>, memref<4x2x2xf32>
          %284 = arith.minui %c5118_i16, %c21640_i16 : i16
          %285 = arith.remf %extracted_29, %32 : f32
          %286 = math.exp %24 : f32
          affine.yield %c533791251_i64 : i64
        }
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_69 = arith.constant 0 : i32
        %275 = vector.transfer_read %alloc_16[%28, %c12], %c0_i32_69 : memref<4x10xi32>, vector<i32>
        %276 = arith.subi %c5118_i16, %c5118_i16 : i16
        %277 = vector.broadcast %c1525623552_i32 : i32 to vector<4x8xi32>
        %278 = vector.shuffle %35, %277 [0, 1, 3] : vector<4x8xi32>, vector<4x8xi32>
        %279 = index.floordivs %c5, %c11
        %false_70 = arith.constant false
        %280 = vector.transfer_read %4[%c2, %87, %85], %false_70 : tensor<4x2x2xi1>, vector<i1>
        %cst_71 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_71 : f16
      }
    %121 = arith.shrsi %true_22, %true_22 : i1
    %122 = affine.max affine_map<(d0, d1, d2) -> (d2 - 1, d2 + 16)>(%c8, %c11, %c5)
    %123 = affine.max affine_map<(d0, d1) -> (0, d0, d1 + d0, 0)>(%c1, %49)
    %124 = math.exp %splat : tensor<4x10xf16>
    memref.store %c690179085_i32, %alloc_21[%c6] : memref<10xi32>
    %125 = bufferization.to_memref %7 : memref<4x8xf32>
    %126 = memref.realloc %alloc_21 : memref<10xi32> to memref<4xi32>
    %127 = vector.broadcast %extracted_25 : i1 to vector<4x2xi1>
    %128 = vector.broadcast %c690179085_i32 : i32 to vector<4x2xi32>
    %129 = vector.gather %alloc_11[%c12, %25, %c0] [%128], %127, %38 : memref<4x2x2xf32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xf32> into vector<4x2xf32>
    %130 = bufferization.clone %95 : memref<f32> to memref<f32>
    %splat_30 = tensor.splat %24 : tensor<4x8xf32>
    %131 = vector.transpose %74, [0] : vector<4xf16> to vector<4xf16>
    %alloc_31 = memref.alloc() : memref<4x10xi16>
    memref.copy %68, %alloc_31 : memref<4x10xi16> to memref<4x10xi16>
    bufferization.dealloc_tensor %reduced : tensor<f32>
    %132 = math.log1p %15 : tensor<4x8xf32>
    %133 = tensor.empty() : tensor<4x10xi16>
    %mapped_32 = linalg.map ins(%11, %11, %68 : tensor<4x10xi16>, tensor<4x10xi16>, memref<4x10xi16>) outs(%133 : tensor<4x10xi16>)
      (%in: i16, %in_62: i16, %in_63: i16) {
        memref.copy %72, %57 : memref<4x2xi1> to memref<4x2xi1>
        %249 = vector.broadcast %c1130808043_i64 : i64 to vector<4x2x2xi64>
        %alloc_64 = memref.alloc() : memref<4x2xi16>
        %250 = arith.mulf %24, %cst_3 : f32
        %251 = vector.broadcast %c690179085_i32 : i32 to vector<8x8xi32>
        %252 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %35, %35, %251 : vector<4x8xi32>, vector<4x8xi32> into vector<8x8xi32>
        %253 = vector.flat_transpose %105 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %254 = arith.remsi %c21640_i16, %c21640_i16 : i16
        %255 = math.exp %32 : f32
        %256 = affine.min affine_map<(d0, d1, d2) -> ((d0 - d2) mod 4, d0 - d2 - 16)>(%117, %c2, %25)
        %257 = vector.reduction <add>, %107 : vector<2xf16> into f16
        %258 = index.divu %25, %123
        %259 = arith.mulf %extracted_29, %extracted_29 : f32
        %260 = index.floordivs %99, %117
        %261 = math.log %extracted_26 : f32
        memref.assume_alignment %alloc_7, 4 : memref<4x10xf32>
        %262 = arith.subi %true_22, %true_22 : i1
        %263 = bufferization.clone %alloc_7 : memref<4x10xf32> to memref<4x10xf32>
        %264 = arith.minsi %false, %true_22 : i1
        %265 = vector.broadcast %in_63 : i16 to vector<4x2x2xi16>
        %extracted_65 = tensor.extract %5[%c3, %c1] : tensor<4x8xf32>
        %266 = index.sub %260, %c14
        %267 = arith.cmpf ugt, %32, %extracted : f32
        %268 = vector.shuffle %253, %74 [0, 1, 5] : vector<2xf16>, vector<4xf16>
        %269 = math.absf %12 : tensor<4x2x2xf16>
        %extracted_66 = tensor.extract %14[%c1, %c2] : tensor<4x8xf32>
        %270 = math.exp %5 : tensor<4x8xf32>
        %271 = math.log10 %12 : tensor<4x2x2xf16>
        %expanded_67 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x8xf32> into tensor<4x8x1xf32>
        memref.store %c5118_i16, %68[%c0, %c3] : memref<4x10xi16>
        affine.store %c533791251_i64, %64[%c2, %c8] : memref<4x10xi64>
        %272 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        %273 = vector.transfer_write %272, %12[%117, %c14, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xf16>, tensor<4x2x2xf16>
        memref.assume_alignment %alloc_7, 16 : memref<4x10xf32>
        %c0_i16_68 = arith.constant 0 : i16
        linalg.yield %c0_i16_68 : i16
      }
    bufferization.dealloc_tensor %8 : tensor<4x8xf16>
    %alloc_33 = memref.alloc() : memref<4x8xf32>
    %134 = tensor.empty() : tensor<4x8xi16>
    %mapped_34 = linalg.map ins(%alloc_9, %alloc_9, %alloc_9 : memref<4x8xi16>, memref<4x8xi16>, memref<4x8xi16>) outs(%134 : tensor<4x8xi16>)
      (%in: i16, %in_62: i16, %in_63: i16) {
        %249 = index.floordivs %25, %c11
        %250 = arith.maxf %cst_0, %cst : f16
        %cast_64 = tensor.cast %4 : tensor<4x2x2xi1> to tensor<?x?x?xi1>
        %251 = vector.insertelement %cst, %74[%c1 : index] : vector<4xf16>
        %cst_65 = arith.constant 1.000000e+00 : f16
        %cst_66 = arith.constant 0.000000e+00 : f16
        %252 = vector.transfer_read %12[%c15, %28, %c15], %cst_66 : tensor<4x2x2xf16>, vector<f16>
        %253 = arith.addf %extracted_29, %cst_3 : f32
        %254 = vector.matrix_multiply %107, %105 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %255 = math.copysign %5, %5 : tensor<4x8xf32>
        %256 = vector.shuffle %20, %45 [2, 4, 5, 7, 9] : vector<8xf32>, vector<2xf32>
        %257 = math.log %2 : tensor<4x10xf32>
        %258 = vector.matrix_multiply %45, %45 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %259 = arith.floordivsi %in_62, %c21640_i16 : i16
        %260 = affine.min affine_map<(d0, d1) -> (-d1 + 16, d0, d1 + d0)>(%49, %c9)
        %261 = scf.execute_region -> tensor<4x10xf32> {
          %278 = arith.minsi %c533791251_i64, %c1130808043_i64 : i64
          %279 = math.log10 %12 : tensor<4x2x2xf16>
          %280 = math.cttz %56 : tensor<4x8xi32>
          %281 = vector.broadcast %c998028318_i64 : i64 to vector<10x2xi64>
          vector.transfer_write %281, %alloc_13[%c2, %c13, %122] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x2xi64>, memref<4x2x2xi64>
          %282 = tensor.empty() : tensor<4x10xi32>
          %283 = arith.cmpf uge, %extracted_26, %cst_3 : f32
          %284 = index.maxs %c1, %123
          %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %106, %106, %false : vector<2xi1>, vector<2xi1> into i1
          %286 = vector.extract %35[2] : vector<4x8xi32>
          %287 = bufferization.clone %125 : memref<4x8xf32> to memref<4x8xf32>
          %288 = arith.remf %extracted, %24 : f32
          %289 = tensor.empty() : tensor<8x4xi32>
          %290 = math.fpowi %120, %289 : tensor<8x4xf16>, tensor<8x4xi32>
          %alloc_69 = memref.alloc() : memref<10xi32>
          memref.copy %alloc_21, %alloc_69 : memref<10xi32> to memref<10xi32>
          memref.store %c1130808043_i64, %78[%c0, %c0] : memref<4x2xi64>
          %291 = affine.max affine_map<(d0) -> ((d0 * 2) floordiv 8 - 16, d0 * 2 + 64)>(%c12)
          %292 = vector.matrix_multiply %105, %107 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          scf.yield %2 : tensor<4x10xf32>
        }
        %262 = arith.remf %cst_3, %32 : f32
        affine.store %extracted_29, %130[] : memref<f32>
        memref.copy %alloc_12, %57 : memref<4x2xi1> to memref<4x2xi1>
        %263 = math.atan2 %5, %5 : tensor<4x8xf32>
        %264 = vector.shuffle %20, %258 [0, 1, 2, 4, 5, 8] : vector<8xf32>, vector<1xf32>
        %265 = tensor.empty(%87) : tensor<4x?xi16>
        %266 = vector.transpose %105, [0] : vector<2xf16> to vector<2xf16>
        %267 = memref.atomic_rmw ori %c1130808043_i64, %alloc_15[%c0, %c1, %c0] : (i64, memref<4x2x2xi64>) -> i64
        %268 = tensor.empty() : tensor<4x8xf16>
        %mapped_67 = linalg.map ins(%8, %8, %alloc_17 : tensor<4x8xf16>, tensor<4x8xf16>, memref<4x8xf16>) outs(%268 : tensor<4x8xf16>)
          (%in_69: f16, %in_70: f16, %in_71: f16) {
            %278 = math.cttz %c1130808043_i64 : i64
            %279 = arith.mulf %in_69, %in_71 : f16
            %280 = math.log1p %14 : tensor<4x8xf32>
            %281 = math.round %7 : tensor<4x8xf32>
            %282 = arith.shrsi %c998028318_i64, %c998028318_i64 : i64
            %extracted_72 = tensor.extract %4[%c2, %c1, %c1] : tensor<4x2x2xi1>
            %283 = math.floor %15 : tensor<4x8xf32>
            %284 = affine.load %95[] : memref<f32>
            %c979882231_i32 = arith.constant 979882231 : i32
            %expanded_73 = tensor.expand_shape %expanded_27 [[0], [1], [2, 3]] : tensor<4x8x1xf16> into tensor<4x8x1x1xf16>
            %285 = math.log2 %extracted_26 : f32
            %286 = bufferization.to_memref %54 : memref<4x10xf32>
            %287 = index.maxs %87, %c11
            %from_elements_74 = tensor.from_elements %true_1, %true_1, %extracted_72, %extracted_72, %true_1, %true_22, %true, %true : tensor<4x2xi1>
            %288 = math.roundeven %cst_3 : f32
            %289 = arith.ceildivsi %c21640_i16, %in_62 : i16
            %290 = index.ceildivu %c6, %c5
            %alloc_75 = memref.alloc() : memref<4x10xf16>
            %291 = math.log %reduced : tensor<f32>
            %292 = index.divs %c7, %c3
            %293 = math.absi %false_4 : i1
            %294 = arith.minsi %c1130808043_i64, %c533791251_i64 : i64
            %295 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
            %296 = arith.remf %24, %extracted : f32
            %297 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
            %298 = tensor.empty() : tensor<4x2x2xi32>
            %299 = math.fpowi %12, %298 : tensor<4x2x2xf16>, tensor<4x2x2xi32>
            %300 = arith.mulf %cst_2, %32 : f32
            %301 = arith.minsi %true, %true_1 : i1
            %302 = math.log10 %12 : tensor<4x2x2xf16>
            %303 = arith.minsi %c1130808043_i64, %c998028318_i64 : i64
            %cst_76 = arith.constant 2.884800e+04 : f16
            %304 = affine.max affine_map<(d0, d1, d2) -> (d1 * 64)>(%c4, %c2, %c13)
            %cst_77 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_77 : f16
          }
        %269 = vector.broadcast %32 : f32 to vector<4x8xf32>
        %270 = vector.fma %269, %269, %269 : vector<4x8xf32>
        %271 = index.divu %117, %c0
        %cast_68 = tensor.cast %9 : tensor<4x2xi1> to tensor<?x?xi1>
        %272 = vector.create_mask %123, %c13, %c14 : vector<4x2x2xi1>
        %273 = bufferization.clone %125 : memref<4x8xf32> to memref<4x8xf32>
        %274 = math.expm1 %extracted : f32
        %275 = arith.remui %c21640_i16, %in : i16
        %276 = vector.transpose %270, [0, 1] : vector<4x8xf32> to vector<4x8xf32>
        %277 = vector.extract %45[1] : vector<2xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %135 = affine.if affine_set<(d0) : (((d0 ceildiv 8) * 8) floordiv 32 >= 0, 0 >= 0)>(%c8) -> memref<4x10xf32> {
      %249 = arith.maxui %c690179085_i32, %c1525623552_i32 : i32
      %250 = index.casts %c998028318_i64 : i64 to index
      %251 = math.ipowi %56, %56 : tensor<4x8xi32>
      %252 = math.powf %extracted_29, %cst_2 : f32
      %253 = arith.cmpf uge, %extracted, %extracted_29 : f32
      %254 = math.expm1 %splat_30 : tensor<4x8xf32>
      %255 = math.ctpop %22 : tensor<i32>
      %256 = index.add %87, %49
      affine.yield %alloc_7 : memref<4x10xf32>
    } else {
      %249 = math.roundeven %extracted_29 : f32
      memref.store %c1669402709_i32, %alloc[%c1, %c0] : memref<4x8xi32>
      bufferization.dealloc_tensor %7 : tensor<4x8xf32>
      %250 = vector.transpose %36, [1, 0] : vector<4x8xf16> to vector<8x4xf16>
      %251 = index.mul %123, %85
      %252 = math.exp %12 : tensor<4x2x2xf16>
      %253 = memref.realloc %alloc_21 : memref<10xi32> to memref<2xi32>
      %254 = arith.remsi %extracted_25, %true : i1
      affine.yield %alloc_7 : memref<4x10xf32>
    }
    affine.store %24, %alloc_7[%c5, %c6] : memref<4x10xf32>
    %cst_35 = arith.constant 0x4C9F9B14 : f32
    %136 = arith.cmpf ord, %cst_0, %cst_0 : f16
    %from_elements = tensor.from_elements %true_1, %true, %false_4, %true_1, %true_1, %true, %false_4, %true, %true_1, %false_4, %extracted_25, %extracted_25, %true_1, %true_22, %true_1, %true_1, %true_1, %false_4, %true_22, %true, %false, %true, %true, %true_1, %extracted_25, %true_1, %extracted_25, %false, %true_22, %true_22, %false, %true_1, %true_1, %true_22, %false, %false_4, %true_22, %extracted_25, %extracted_25, %extracted_25 : tensor<4x10xi1>
    %137 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 16, d3, -(d2 + 32), d1 mod 32)>(%30, %25, %c4, %87)
    %138 = vector.shuffle %127, %127 [3, 6, 7] : vector<4x2xi1>, vector<4x2xi1>
    memref.copy %72, %alloc_12 : memref<4x2xi1> to memref<4x2xi1>
    %139 = vector.shuffle %127, %127 [0, 4, 5, 6] : vector<4x2xi1>, vector<4x2xi1>
    %140 = math.log1p %extracted : f32
    %141 = arith.subi %true, %true : i1
    %142 = math.powf %8, %8 : tensor<4x8xf16>
    %143 = vector.insertelement %cst, %107[%117 : index] : vector<2xf16>
    %144 = vector.broadcast %c5118_i16 : i16 to vector<4x8xi16>
    %145 = vector.gather %alloc_19[%c8, %c0, %c3] [%35], %34, %144 : memref<4x2x2xi16>, vector<4x8xi32>, vector<4x8xi1>, vector<4x8xi16> into vector<4x8xi16>
    %146 = arith.maxui %extracted_25, %extracted_25 : i1
    %147 = index.maxu %c14, %c0
    %148 = math.log %8 : tensor<4x8xf16>
    %149 = index.ceildivu %c3, %25
    %150 = math.roundeven %12 : tensor<4x2x2xf16>
    %151 = tensor.empty() : tensor<4x2xi1>
    %mapped_36 = linalg.map ins(%3, %16 : tensor<4x2xi1>, tensor<4x2xi1>) outs(%151 : tensor<4x2xi1>)
      (%in: i1, %in_62: i1) {
        %249 = arith.shrui %extracted_25, %extracted_25 : i1
        %250 = arith.mulf %24, %extracted : f32
        %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<4x10xi16> into tensor<40xi16>
        %251 = index.casts %c3 : index to i32
        %252 = math.roundeven %2 : tensor<4x10xf32>
        %253 = index.maxs %c15, %87
        %254 = scf.while (%arg2 = %c690179085_i32) : (i32) -> i32 {
          %rank_70 = tensor.rank %7 : tensor<4x8xf32>
          %cst_71 = arith.constant 1.000000e+00 : f32
          %cst_72 = arith.constant 0.000000e+00 : f32
          %280 = vector.transfer_read %14[%c11, %c3], %cst_72 : tensor<4x8xf32>, vector<f32>
          %281 = math.absi %4 : tensor<4x2x2xi1>
          %282 = index.maxu %253, %147
          %283 = math.log1p %cst_71 : f32
          %284 = index.divu %c9, %123
          %285 = vector.broadcast %arg2 : i32 to vector<10xi32>
          %286 = vector.broadcast %extracted_25 : i1 to vector<10xi1>
          %287 = vector.maskedload %alloc_16[%c1, %c1], %286, %285 : memref<4x10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %inserted_73 = tensor.insert %c1130808043_i64 into %13[%c3, %c0] : tensor<4x2xi64>
          scf.condition(%false) %c690179085_i32 : i32
        } do {
        ^bb0(%arg2: i32):
          %280 = math.ctlz %true_1 : i1
          %281 = arith.minsi %true_22, %false_4 : i1
          %282 = math.ipowi %false_4, %true_22 : i1
          %283 = arith.remsi %c1525623552_i32, %c1669402709_i32 : i32
          %284 = arith.negf %extracted_26 : f32
          %285 = math.absi %collapsed : tensor<40xi16>
          %286 = arith.shrsi %c21640_i16, %c5118_i16 : i16
          %287 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
          %288 = index.mul %123, %c7
          %289 = math.absf %7 : tensor<4x8xf32>
          %290 = affine.apply affine_map<(d0, d1, d2) -> ((d0 ceildiv 16) ceildiv 4)>(%49, %c4, %c5)
          %291 = arith.minf %cst, %cst : f16
          %292 = arith.andi %c5118_i16, %c5118_i16 : i16
          %293 = index.floordivs %c12, %c14
          %294 = math.copysign %extracted_29, %cst_2 : f32
          %295 = math.roundeven %splat_30 : tensor<4x8xf32>
          scf.yield %c690179085_i32 : i32
        }
        %255 = math.fma %8, %8, %8 : tensor<4x8xf16>
        %256 = vector.extract %36[0] : vector<4x8xf16>
        %257 = tensor.empty() : tensor<4x10xf32>
        %mapped_63 = linalg.map ins(%alloc_7, %alloc_7, %2 : memref<4x10xf32>, memref<4x10xf32>, tensor<4x10xf32>) outs(%257 : tensor<4x10xf32>)
          (%in_70: f32, %in_71: f32, %in_72: f32) {
            %280 = arith.andi %in, %true : i1
            %281 = vector.transpose %34, [1, 0] : vector<4x8xi1> to vector<8x4xi1>
            %282 = arith.andi %extracted_25, %false_4 : i1
            %283 = vector.multi_reduction <minsi>, %144, %c5118_i16 [0, 1] : vector<4x8xi16> to i16
            %284 = arith.shli %c5118_i16, %c21640_i16 : i16
            %285 = math.log10 %splat : tensor<4x10xf16>
            %from_elements_73 = tensor.from_elements %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst : tensor<4x2x2xf16>
            %286 = arith.maxsi %extracted_25, %false_4 : i1
            %287 = vector.reduction <minui>, %106 : vector<2xi1> into i1
            %288 = arith.minsi %c690179085_i32, %c1669402709_i32 : i32
            %289 = arith.shrui %extracted_25, %in_62 : i1
            %290 = vector.broadcast %in : i1 to vector<i1>
            %291 = vector.transfer_write %290, %9[%c2, %c3] : vector<i1>, tensor<4x2xi1>
            %292 = arith.addi %c1669402709_i32, %c1669402709_i32 : i32
            %293 = arith.minsi %c1130808043_i64, %c533791251_i64 : i64
            %294 = index.divu %c10, %c15
            %295 = vector.transpose %104, [0, 1, 2] : vector<4x2x2xi32> to vector<4x2x2xi32>
            %296 = math.powf %reduced, %reduced : tensor<f32>
            %297 = vector.load %alloc_8[%c0, %c0] : memref<4x2xi64>, vector<4x2xi64>
            %298 = index.casts %c4 : index to i32
            %299 = arith.minui %c1525623552_i32, %c1525623552_i32 : i32
            %300 = math.exp %12 : tensor<4x2x2xf16>
            %301 = vector.flat_transpose %74 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
            %302 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %116, %301, %105 : vector<4x2xf16>, vector<4xf16> into vector<2xf16>
            %303 = index.mul %253, %99
            %304 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
            %305 = math.exp %2 : tensor<4x10xf32>
            %expanded_74 = tensor.expand_shape %from_elements_73 [[0], [1], [2, 3]] : tensor<4x2x2xf16> into tensor<4x2x2x1xf16>
            %306 = arith.maxui %true_22, %false : i1
            %307 = vector.broadcast %in_72 : f32 to vector<4x2xf32>
            %308 = vector.fma %307, %129, %38 : vector<4x2xf32>
            %expanded_75 = tensor.expand_shape %133 [[0], [1, 2]] : tensor<4x10xi16> into tensor<4x10x1xi16>
            %309 = vector.matrix_multiply %20, %45 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<2xf32>) -> vector<4xf32>
            %310 = bufferization.to_memref %6 : memref<4x2x2xi64>
            %cst_76 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_76 : f32
          }
        %258 = memref.alloca_scope  -> (memref<4x2x2xf32>) {
          %280 = vector.shuffle %107, %74 [3, 4] : vector<2xf16>, vector<4xf16>
          memref.store %extracted_29, %alloc_11[%c0, %c1, %c0] : memref<4x2x2xf32>
          %281 = math.absi %extracted_25 : i1
          %282 = arith.remui %c1525623552_i32, %c1525623552_i32 : i32
          %283 = bufferization.clone %72 : memref<4x2xi1> to memref<4x2xi1>
          memref.store %c1669402709_i32, %alloc[%c2, %c1] : memref<4x8xi32>
          %284 = arith.cmpf une, %extracted, %32 : f32
          %285 = arith.negf %extracted_29 : f32
          %286 = math.ceil %24 : f32
          %287 = bufferization.to_tensor %64 : memref<4x10xi64>
          %288 = affine.load %125[%c2, %c1] : memref<4x8xf32>
          %289 = bufferization.to_tensor %130 : memref<f32>
          %290 = arith.remui %true, %false_4 : i1
          %291 = bufferization.to_memref %15 : memref<4x8xf32>
          %inserted_70 = tensor.insert %288 into %5[%c0, %c5] : tensor<4x8xf32>
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %20, %extracted_26 : vector<8xf32>, vector<8xf32> into f32
          %expanded_71 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<4x10xi16> into tensor<4x10x1xi16>
          %293 = index.divu %149, %28
          %294 = arith.shrsi %c1525623552_i32, %c690179085_i32 : i32
          %295 = arith.shrui %in_62, %true : i1
          %296 = affine.load %alloc_21[%c1] : memref<10xi32>
          %297 = vector.matrix_multiply %45, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xf32>, vector<8xf32>) -> vector<4xf32>
          %298 = vector.broadcast %c998028318_i64 : i64 to vector<4xi64>
          %299 = vector.broadcast %false : i1 to vector<4xi1>
          %300 = vector.maskedload %alloc_5[%c3, %c0], %299, %298 : memref<4x2xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %301 = arith.addf %cst_3, %32 : f32
          %302 = arith.shli %c21640_i16, %c5118_i16 : i16
          %303 = tensor.empty() : tensor<4x10xi32>
          %304 = math.fpowi %257, %303 : tensor<4x10xf32>, tensor<4x10xi32>
          %305 = tensor.empty() : tensor<4x2xi32>
          %306 = arith.mulf %cst_2, %extracted_29 : f32
          %307 = arith.ceildivsi %false, %in : i1
          %308 = arith.ceildivsi %true, %true : i1
          %309 = arith.remf %cst_0, %cst : f16
          %310 = arith.minsi %in, %in_62 : i1
          memref.alloca_scope.return %alloc_11 : memref<4x2x2xf32>
        }
        %259 = arith.shrsi %true_1, %in : i1
        %260 = vector.matrix_multiply %74, %105 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<2xf16>) -> vector<2xf16>
        %261 = arith.mulf %cst_3, %cst_3 : f32
        %262 = memref.alloca_scope  -> (memref<4x2x2xf32>) {
          %280 = arith.floordivsi %true_22, %in : i1
          %281 = bufferization.clone %130 : memref<f32> to memref<f32>
          %282 = arith.minsi %extracted_25, %false : i1
          %283 = arith.shli %false, %true : i1
          %284 = index.sizeof
          %285 = vector.broadcast %c1525623552_i32 : i32 to vector<10xi32>
          %286 = vector.broadcast %in_62 : i1 to vector<10xi1>
          %287 = vector.maskedload %alloc_18[%c2, %c2], %286, %285 : memref<4x8xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %288 = index.divs %c7, %284
          %289 = arith.maxf %24, %32 : f32
          %cst_70 = arith.constant 1.000000e+00 : f16
          %290 = vector.transfer_read %10[%c4, %123, %288], %cst_70 : tensor<4x2x2xf16>, vector<2x4xf16>
          %291 = arith.minsi %true, %in_62 : i1
          %292 = math.absi %true_1 : i1
          %293 = vector.multi_reduction <mul>, %33, %74 [1] : vector<4x8xf16> to vector<4xf16>
          affine.store %c5118_i16, %alloc_9[%c3, %c6] : memref<4x8xi16>
          %294 = math.absf %5 : tensor<4x8xf32>
          %295 = index.sizeof
          %296 = arith.remf %cst_2, %cst_2 : f32
          %297 = vector.transpose %74, [0] : vector<4xf16> to vector<4xf16>
          %298 = index.divs %284, %49
          %true_71 = arith.constant true
          %299 = vector.transfer_read %72[%25, %c6], %true_71 : memref<4x2xi1>, vector<i1>
          %300 = arith.shrsi %false, %in : i1
          %301 = arith.subi %in, %extracted_25 : i1
          %302 = index.maxs %c11, %123
          %303 = index.floordivs %c1, %99
          %304 = index.divu %c9, %303
          %expanded_72 = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<4x10xi1> into tensor<4x10x1xi1>
          %305 = math.copysign %cst, %cst_0 : f16
          %306 = arith.mulf %extracted, %cst_2 : f32
          %307 = affine.max affine_map<(d0) -> (((d0 * 8) ceildiv 64) floordiv 64 - d0 + 64, d0 * 8 + 2, d0 + ((d0 * 8) ceildiv 64) floordiv 64 + 64 + 16, 0)>(%149)
          %308 = math.absi %c1525623552_i32 : i32
          %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %287, %285, %c1525623552_i32 : vector<10xi32>, vector<10xi32> into i32
          %310 = arith.ceildivsi %c5118_i16, %c21640_i16 : i16
          %rank_73 = tensor.rank %3 : tensor<4x2xi1>
          memref.alloca_scope.return %alloc_11 : memref<4x2x2xf32>
        }
        %263 = bufferization.to_tensor %alloc_16 : memref<4x10xi32>
        %alloc_64 = memref.alloc() : memref<2x4x2xi1>
        %alloc_65 = memref.alloc() : memref<2x4xi1>
        %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_64, %72, %alloc_65 : memref<2x4x2xi1>, memref<4x2xi1>, memref<2x4xi1>) outs(%4 : tensor<4x2x2xi1>) {
        ^bb0(%in_70: i1, %in_71: i1, %in_72: i1, %out: i1):
          %280 = vector.shuffle %34, %34 [0, 4, 5, 6] : vector<4x8xi1>, vector<4x8xi1>
          %splat_73 = tensor.splat %cst_2 : tensor<4x8xf32>
          %281 = arith.minsi %in_71, %in_71 : i1
          %282 = vector.insertelement %cst_0, %256[%122 : index] : vector<8xf16>
          %283 = vector.transpose %104, [1, 0, 2] : vector<4x2x2xi32> to vector<2x4x2xi32>
          %284 = arith.remsi %in_72, %false_4 : i1
          %extracted_74 = tensor.extract %12[%c0, %c1, %c0] : tensor<4x2x2xf16>
          %collapsed_75 = tensor.collapse_shape %13 [[0, 1]] : tensor<4x2xi64> into tensor<8xi64>
          %285 = math.roundeven %extracted_74 : f16
          %286 = math.log %splat_73 : tensor<4x8xf32>
          %287 = index.add %c6, %c1
          %288 = vector.broadcast %extracted_26 : f32 to vector<f32>
          %289 = vector.transfer_write %288, %7[%c4, %c3] : vector<f32>, tensor<4x8xf32>
          %290 = vector.load %alloc_18[%c3, %c5] : memref<4x8xi32>, vector<4x2x2xi32>
          %291 = arith.shrsi %c1525623552_i32, %c1525623552_i32 : i32
          %292 = math.powf %splat_73, %14 : tensor<4x8xf32>
          %rank_76 = tensor.rank %133 : tensor<4x10xi16>
          %293 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 64 - ((d1 ceildiv 64) floordiv 8) * 2 - (d1 ceildiv 64) floordiv 8 - 32, (d1 ceildiv 64) ceildiv 64, d1 ceildiv 64 - ((d1 ceildiv 64) floordiv 8) * 2 + (d1 ceildiv 64) ceildiv 64 - 32, -((d1 ceildiv 64) floordiv 8))>(%c9, %30)
          %294 = arith.ceildivsi %in, %false_4 : i1
          %collapsed_77 = tensor.collapse_shape %17 [[0, 1]] : tensor<4x2xi1> into tensor<8xi1>
          %295 = vector.broadcast %c998028318_i64 : i64 to vector<10xi64>
          %296 = vector.broadcast %out : i1 to vector<10xi1>
          %297 = vector.maskedload %alloc_13[%c0, %c0, %c1], %296, %295 : memref<4x2x2xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
          %298 = math.ipowi %c1525623552_i32, %c1669402709_i32 : i32
          %299 = math.fma %extracted, %cst_2, %cst_2 : f32
          %300 = vector.broadcast %c1669402709_i32 : i32 to vector<2x2x2x2xi32>
          %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %290, %104, %300 : vector<4x2x2xi32>, vector<4x2x2xi32> into vector<2x2x2x2xi32>
          %302 = bufferization.to_tensor %alloc_8 : memref<4x2xi64>
          %303 = math.ctlz %in : i1
          %304 = arith.andi %c1525623552_i32, %c1669402709_i32 : i32
          %305 = index.mul %85, %147
          %306 = tensor.empty() : tensor<10x10xf32>
          %307 = tensor.empty() : tensor<4x10xf32>
          %308 = linalg.matmul ins(%257, %306 : tensor<4x10xf32>, tensor<10x10xf32>) outs(%307 : tensor<4x10xf32>) -> tensor<4x10xf32>
          %309 = bufferization.clone %68 : memref<4x10xi16> to memref<4x10xi16>
          %310 = math.log10 %extracted_29 : f32
          %311 = arith.minui %in_72, %in_72 : i1
          %312 = bufferization.to_memref %23 : memref<i32>
          linalg.yield %true : i1
        } -> tensor<4x2x2xi1>
        %265 = index.divu %c12, %25
        %extracted_66 = tensor.extract %5[%c3, %c0] : tensor<4x8xf32>
        %266 = vector.multi_reduction <mul>, %105, %105 [] : vector<2xf16> to vector<2xf16>
        %267 = math.floor %expanded_27 : tensor<4x8x1xf16>
        %cst_67 = arith.constant 1.000000e+00 : f32
        %cst_68 = arith.constant 0.000000e+00 : f32
        %268 = vector.transfer_read %54[%c1, %85], %cst_68 : tensor<4x10xf32>, vector<f32>
        %269 = index.sizeof
        %270 = vector.insertelement %false_4, %106[%25 : index] : vector<2xi1>
        %271 = math.tanh %14 : tensor<4x8xf32>
        %272 = math.powf %reduced, %18 : tensor<f32>
        %273 = vector.broadcast %c998028318_i64 : i64 to vector<4x2xi64>
        %274 = vector.gather %6[%c15, %c15, %149] [%128], %127, %273 : tensor<4x2x2xi64>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi64> into vector<4x2xi64>
        %275 = math.absf %18 : tensor<f32>
        %276 = math.ceil %extracted : f32
        %277 = math.ipowi %3, %3 : tensor<4x2xi1>
        %278 = index.maxu %c4, %253
        %279 = math.absi %c690179085_i32 : i32
        %true_69 = arith.constant true
        linalg.yield %true_69 : i1
      }
    %152 = math.ctlz %151 : tensor<4x2xi1>
    %153 = index.maxu %28, %c5
    %splat_37 = tensor.splat %c5118_i16 : tensor<4x10xi16>
    %154 = vector.broadcast %cst : f16 to vector<f16>
    %155 = vector.transfer_write %154, %10[%123, %c3, %c11] : vector<f16>, tensor<4x2x2xf16>
    %cast = tensor.cast %2 : tensor<4x10xf32> to tensor<?x?xf32>
    scf.if %extracted_25 {
      %249 = arith.muli %c690179085_i32, %c1525623552_i32 : i32
      %250 = arith.remf %cst_3, %extracted : f32
      %251 = vector.broadcast %extracted_25 : i1 to vector<4x2x2xi1>
      %alloc_62 = memref.alloc() : memref<4x10xi32>
      %expanded_63 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<4x2x2xi64> into tensor<4x2x2x1xi64>
      %252 = index.casts %extracted_25 : i1 to index
      %253 = vector.extract %127[1] : vector<4x2xi1>
      %254 = tensor.empty() : tensor<4x8xf16>
    } else {
      %249 = arith.shli %c998028318_i64, %c998028318_i64 : i64
      %250 = math.cttz %13 : tensor<4x2xi64>
      %251 = index.sizeof
      %252 = arith.floordivsi %c1130808043_i64, %c998028318_i64 : i64
      %alloc_62 = memref.alloc() : memref<4x2x2xi32>
      %253 = arith.floordivsi %false_4, %extracted_25 : i1
      %254 = arith.addi %true_1, %false : i1
      %255 = math.powf %8, %8 : tensor<4x8xf16>
    }
    %156 = math.exp2 %120 : tensor<8x4xf16>
    %157 = arith.minui %c1525623552_i32, %c1669402709_i32 : i32
    %158 = index.sizeof
    %rank = tensor.rank %133 : tensor<4x10xi16>
    %from_elements_38 = tensor.from_elements %extracted, %32, %extracted_26, %cst_3, %cst_2, %cst_2, %extracted_26, %24 : tensor<4x2xf32>
    %alloc_39 = memref.alloc() : memref<4x2xi16>
    %159 = arith.shrsi %c21640_i16, %c21640_i16 : i16
    %160 = arith.shrui %c1525623552_i32, %c1669402709_i32 : i32
    %alloc_40 = memref.alloc() : memref<2x2xf16>
    %alloc_41 = memref.alloc() : memref<4xf16>
    %alloc_42 = memref.alloc() : memref<4x2xf16>
    %161 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %alloc_41, %alloc_42 : memref<2x2xf16>, memref<4xf16>, memref<4x2xf16>) outs(%10 : tensor<4x2x2xf16>) {
    ^bb0(%in: f16, %in_62: f16, %in_63: f16, %out: f16):
      %249 = arith.divsi %c5118_i16, %c5118_i16 : i16
      %250 = index.maxu %153, %28
      %251 = arith.ceildivsi %extracted_25, %true_1 : i1
      %252 = arith.maxui %extracted_25, %true : i1
      %253 = vector.broadcast %c5118_i16 : i16 to vector<8x8xi16>
      %254 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %145, %144, %253 : vector<4x8xi16>, vector<4x8xi16> into vector<8x8xi16>
      %255 = arith.minsi %c1130808043_i64, %c1130808043_i64 : i64
      %256 = arith.minsi %extracted_25, %false_4 : i1
      %257 = vector.broadcast %true : i1 to vector<4x2x2xi1>
      %258 = vector.gather %alloc_9[%85, %c0] [%104], %257, %47 : memref<4x8xi16>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xi16> into vector<4x2x2xi16>
      %259 = index.divu %28, %c6
      %260 = arith.remf %cst_2, %cst_2 : f32
      %261 = vector.shuffle %257, %257 [1, 2, 3, 4, 5] : vector<4x2x2xi1>, vector<4x2x2xi1>
      %262 = math.exp %from_elements_38 : tensor<4x2xf32>
      %263 = bufferization.to_memref %8 : memref<4x8xf16>
      %264 = math.sqrt %2 : tensor<4x10xf32>
      %265 = tensor.empty() : tensor<10x8xi16>
      %266 = tensor.empty() : tensor<4x8xi16>
      %267 = linalg.matmul ins(%11, %265 : tensor<4x10xi16>, tensor<10x8xi16>) outs(%266 : tensor<4x8xi16>) -> tensor<4x8xi16>
      %268 = math.absf %7 : tensor<4x8xf32>
      memref.copy %alloc_13, %alloc_15 : memref<4x2x2xi64> to memref<4x2x2xi64>
      memref.alloca_scope  {
        %276 = vector.reduction <mul>, %107 : vector<2xf16> into f16
        %277 = math.log10 %15 : tensor<4x8xf32>
        %278 = vector.insertelement %cst_0, %154[] : vector<f16>
        %279 = arith.shli %c21640_i16, %c5118_i16 : i16
        %280 = vector.broadcast %extracted : f32 to vector<4x2xf32>
        %inserted_68 = tensor.insert %extracted_29 into %2[%c1, %c3] : tensor<4x10xf32>
        %281 = tensor.empty() : tensor<4x2x2xi32>
        %282 = math.fpowi %12, %281 : tensor<4x2x2xf16>, tensor<4x2x2xi32>
        %283 = math.powf %extracted_29, %cst_2 : f32
        %284 = math.ctpop %c5118_i16 : i16
        %285 = math.log %in_63 : f16
        %286 = arith.remsi %true, %extracted_25 : i1
        %287 = affine.load %alloc[%c6, %c0] : memref<4x8xi32>
        %288 = index.casts %true_1 : i1 to index
        %289 = index.castu %false : i1 to index
        %290 = vector.broadcast %in_62 : f16 to vector<2x2xf16>
        %291 = vector.outerproduct %105, %107, %290 {kind = #vector.kind<maxf>} : vector<2xf16>, vector<2xf16>
        %292 = tensor.empty() : tensor<4x10xi32>
        %293 = vector.gather %292[%c4, %149] [%35], %34, %35 : tensor<4x10xi32>, vector<4x8xi32>, vector<4x8xi1>, vector<4x8xi32> into vector<4x8xi32>
        %294 = math.floor %54 : tensor<4x10xf32>
        %295 = vector.shuffle %145, %144 [0, 3, 4, 5, 6] : vector<4x8xi16>, vector<4x8xi16>
        %296 = math.fpowi %10, %281 : tensor<4x2x2xf16>, tensor<4x2x2xi32>
        memref.store %false_4, %alloc_12[%c3, %c0] : memref<4x2xi1>
        %297 = arith.shrui %c998028318_i64, %c1130808043_i64 : i64
        %298 = vector.bitcast %127 : vector<4x2xi1> to vector<4x2xi1>
        %299 = index.divu %153, %rank
        memref.copy %alloc, %alloc_18 : memref<4x8xi32> to memref<4x8xi32>
        %300 = arith.ceildivsi %c5118_i16, %c21640_i16 : i16
        %301 = affine.max affine_map<(d0, d1, d2) -> ((d1 - 16) ceildiv 4, d1 - 16, d1 floordiv 2 - 8, d1)>(%49, %c11, %158)
        %302 = vector.broadcast %32 : f32 to vector<2x2xf32>
        %303 = vector.outerproduct %45, %45, %302 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
        %304 = arith.floordivsi %c998028318_i64, %c533791251_i64 : i64
        %305 = arith.shrsi %c1525623552_i32, %287 : i32
        %306 = vector.extract %257[2] : vector<4x2x2xi1>
        %307 = vector.broadcast %c5118_i16 : i16 to vector<8xi16>
        %308 = vector.broadcast %true_1 : i1 to vector<8xi1>
        %309 = vector.maskedload %alloc_19[%c0, %c0, %c1], %308, %307 : memref<4x2x2xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %310 = arith.addf %in, %out : f16
      }
      %false_64 = index.bool.constant false
      %269 = arith.remf %extracted_29, %extracted : f32
      %from_elements_65 = tensor.from_elements %c533791251_i64, %c1130808043_i64, %c1130808043_i64, %c533791251_i64, %c1130808043_i64, %c1130808043_i64, %c998028318_i64, %c1130808043_i64 : tensor<4x2xi64>
      %270 = arith.floordivsi %true_1, %false_4 : i1
      %271 = arith.xori %c690179085_i32, %c1525623552_i32 : i32
      %272 = arith.maxui %true_22, %true : i1
      %273 = math.ctlz %0 : tensor<4x2xi16>
      %274 = arith.muli %c1669402709_i32, %c1669402709_i32 : i32
      %from_elements_66 = tensor.from_elements %c5118_i16, %c21640_i16, %c5118_i16, %c5118_i16, %c5118_i16, %c5118_i16, %c21640_i16, %c5118_i16, %c5118_i16, %c5118_i16, %c5118_i16, %c21640_i16, %c21640_i16, %c5118_i16, %c21640_i16, %c21640_i16 : tensor<4x2x2xi16>
      %cast_67 = tensor.cast %10 : tensor<4x2x2xf16> to tensor<?x?x?xf16>
      memref.tensor_store %120, %alloc_20 : memref<8x4xf16>
      %275 = math.atan2 %7, %15 : tensor<4x8xf32>
      memref.store %false, %72[%c0, %c0] : memref<4x2xi1>
      bufferization.dealloc_tensor %9 : tensor<4x2xi1>
      linalg.yield %cst : f16
    } -> tensor<4x2x2xf16>
    %162 = bufferization.clone %alloc : memref<4x8xi32> to memref<4x8xi32>
    %163 = vector.broadcast %true_1 : i1 to vector<4x2xi1>
    memref.copy %alloc_8, %alloc_5 : memref<4x2xi64> to memref<4x2xi64>
    %164 = index.castu %true_22 : i1 to index
    %165 = index.maxs %c8, %c12
    %false_43 = arith.constant false
    %false_44 = arith.constant false
    %166 = vector.transfer_read %16[%c10, %164], %false_44 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x2xi1>, vector<2xi1>
    %167 = bufferization.clone %162 : memref<4x8xi32> to memref<4x8xi32>
    %168 = arith.negf %24 : f32
    %169 = vector.broadcast %extracted_29 : f32 to vector<10xf32>
    %170 = vector.transfer_write %169, %54[%c13, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf32>, tensor<4x10xf32>
    scf.if %false_4 {
      %alloc_62 = memref.alloc() : memref<2xi1>
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_62 : memref<2xi1>) outs(%expanded : tensor<4x2x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %extracted_64 = tensor.extract %14[%c0, %c0] : tensor<4x8xf32>
        %257 = index.casts %false_43 : i1 to index
        %258 = arith.minsi %true_1, %false_43 : i1
        %259 = vector.reduction <add>, %45 : vector<2xf32> into f32
        %260 = math.atan2 %extracted_29, %extracted_29 : f32
        %cst_65 = arith.constant 1.18584525E+9 : f32
        %261 = arith.minsi %c1669402709_i32, %c1669402709_i32 : i32
        %262 = arith.mulf %cst_0, %cst : f16
        %263 = math.log10 %14 : tensor<4x8xf32>
        %264 = vector.broadcast %c1669402709_i32 : i32 to vector<4x10xi32>
        %265 = vector.reduction <maxf>, %74 : vector<4xf16> into f16
        %266 = math.cttz %13 : tensor<4x2xi64>
        %267 = arith.minsi %c1669402709_i32, %c1669402709_i32 : i32
        %268 = math.ctpop %expanded : tensor<4x2x1xi1>
        %269 = arith.minsi %c5118_i16, %c21640_i16 : i16
        %270 = index.ceildivu %122, %c13
        %c1313283919_i64 = arith.constant 1313283919 : i64
        %271 = arith.shli %false_4, %in : i1
        %272 = index.sizeof
        %273 = vector.broadcast %c690179085_i32 : i32 to vector<4x2xi32>
        memref.tensor_store %10, %alloc_14 : memref<4x2x2xf16>
        %274 = vector.broadcast %extracted_25 : i1 to vector<4x2x2xi1>
        %275 = math.cttz %0 : tensor<4x2xi16>
        %276 = arith.xori %false, %extracted_25 : i1
        %277 = index.casts %c8 : index to i32
        %278 = memref.load %125[%c2, %c7] : memref<4x8xf32>
        %279 = memref.realloc %alloc_21 : memref<10xi32> to memref<4xi32>
        %280 = arith.cmpf oeq, %24, %32 : f32
        %281 = arith.subi %extracted_25, %false_4 : i1
        %true_66 = arith.constant true
        %282 = math.atan2 %extracted_64, %24 : f32
        bufferization.dealloc_tensor %3 : tensor<4x2xi1>
        linalg.yield %false_4 : i1
      } -> tensor<4x2x1xi1>
      %250 = index.mul %158, %c5
      %251 = index.ceildivu %30, %85
      %expanded_63 = tensor.expand_shape %54 [[0], [1, 2]] : tensor<4x10xf32> into tensor<4x10x1xf32>
      %252 = vector.broadcast %true_1 : i1 to vector<4xi1>
      %253 = vector.maskedload %alloc_14[%c1, %c1, %c0], %252, %74 : memref<4x2x2xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %254 = math.ctlz %expanded : tensor<4x2x1xi1>
      %255 = math.tanh %2 : tensor<4x10xf32>
      %256 = arith.minui %true_22, %true_22 : i1
    }
    %171 = math.absf %8 : tensor<4x8xf16>
    %172 = vector.transpose %34, [1, 0] : vector<4x8xi1> to vector<8x4xi1>
    %173 = arith.mulf %cst_2, %extracted_29 : f32
    %alloc_45 = memref.alloc() : memref<4x8xi16>
    %alloc_46 = memref.alloc() : memref<4x2xi64>
    %174 = math.log1p %8 : tensor<4x8xf16>
    %175 = memref.alloca_scope  -> (memref<4x10xi32>) {
      %249 = arith.minsi %c21640_i16, %c5118_i16 : i16
      %250 = math.atan2 %cst, %cst : f16
      %251 = index.divu %c5, %c4
      %252 = arith.andi %true_22, %false : i1
      %253 = arith.ceildivsi %false_4, %false : i1
      %from_elements_62 = tensor.from_elements %true, %extracted_25, %true, %false, %true, %true, %true_22, %true : tensor<4x2xi1>
      %254 = index.maxu %87, %123
      %from_elements_63 = tensor.from_elements %32, %cst_3, %extracted, %extracted_29, %cst_3, %cst_3, %cst_2, %extracted_26 : tensor<4x2xf32>
      %255 = index.sizeof
      %256 = arith.cmpf ule, %32, %extracted_26 : f32
      %257 = arith.ceildivsi %c21640_i16, %c5118_i16 : i16
      %258 = arith.shrsi %c1525623552_i32, %c1669402709_i32 : i32
      %259 = math.log1p %extracted : f32
      %260 = math.floor %cst_0 : f16
      memref.assume_alignment %alloc_16, 2 : memref<4x10xi32>
      %261 = tensor.empty(%147) : tensor<?x10xi64>
      %262 = vector.extract %20[2] : vector<8xf32>
      %alloc_64 = memref.alloc() : memref<4x2x2xi16>
      memref.copy %alloc_19, %alloc_64 : memref<4x2x2xi16> to memref<4x2x2xi16>
      %263 = arith.andi %c690179085_i32, %c1525623552_i32 : i32
      %264 = arith.maxui %c998028318_i64, %c1130808043_i64 : i64
      %265 = arith.minui %c1130808043_i64, %c1130808043_i64 : i64
      %266 = index.add %149, %49
      %267 = math.round %from_elements_38 : tensor<4x2xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<4x2x2xi1>) {
      ^bb0(%out: i1):
        %276 = math.roundeven %cst_2 : f32
        %from_elements_65 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0 : tensor<4x2xf16>
        %277 = index.divs %117, %c13
        %278 = vector.broadcast %cst_0 : f16 to vector<2x2xf16>
        %279 = vector.outerproduct %107, %107, %278 {kind = #vector.kind<maxf>} : vector<2xf16>, vector<2xf16>
        %280 = arith.cmpf ueq, %cst, %cst_0 : f16
        %281 = math.ctlz %1 : tensor<4x2xi16>
        %282 = index.casts %c1 : index to i32
        %283 = math.absi %17 : tensor<4x2xi1>
        %284 = arith.ceildivsi %c5118_i16, %c21640_i16 : i16
        %285 = arith.shli %out, %extracted_25 : i1
        %286 = math.powf %cst_0, %cst : f16
        %287 = vector.transpose %144, [0, 1] : vector<4x8xi16> to vector<4x8xi16>
        %288 = math.ipowi %c1525623552_i32, %c1669402709_i32 : i32
        %289 = bufferization.clone %68 : memref<4x10xi16> to memref<4x10xi16>
        %290 = math.expm1 %15 : tensor<4x8xf32>
        %291 = vector.shuffle %33, %36 [0, 1, 3, 5, 6, 7] : vector<4x8xf16>, vector<4x8xf16>
        %292 = vector.broadcast %cst_0 : f16 to vector<4x2xf16>
        %293 = math.ctpop %false_43 : i1
        %294 = affine.load %alloc_21[%c8] : memref<10xi32>
        %cst_66 = arith.constant 1.000000e+00 : f16
        %cst_67 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %10[%165, %149, %c1], %cst_67 : tensor<4x2x2xf16>, vector<f16>
        memref.copy %alloc_8, %78 : memref<4x2xi64> to memref<4x2xi64>
        %296 = math.log10 %from_elements_63 : tensor<4x2xf32>
        %297 = arith.minui %c5118_i16, %c21640_i16 : i16
        %298 = vector.transpose %104, [2, 0, 1] : vector<4x2x2xi32> to vector<2x4x2xi32>
        %299 = arith.subi %true_22, %true : i1
        %cst_68 = arith.constant 1.78057293E+9 : f32
        %300 = vector.insertelement %out, %106[%c1 : index] : vector<2xi1>
        %301 = arith.mulf %cst_0, %cst_66 : f16
        %302 = math.ipowi %true, %false_43 : i1
        %303 = arith.shrsi %c533791251_i64, %c533791251_i64 : i64
        %rank_69 = tensor.rank %133 : tensor<4x10xi16>
        %true_70 = arith.constant true
        linalg.yield %false_43 : i1
      } -> tensor<4x2x2xi1>
      %269 = math.exp %8 : tensor<4x8xf16>
      %270 = arith.maxui %c533791251_i64, %c998028318_i64 : i64
      %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xi16> into tensor<8xi16>
      %271 = math.roundeven %splat : tensor<4x10xf16>
      %272 = arith.ceildivsi %c5118_i16, %c21640_i16 : i16
      %273 = arith.minui %c1130808043_i64, %c1130808043_i64 : i64
      %274 = arith.mulf %extracted, %cst_3 : f32
      %275 = math.fma %expanded_27, %expanded_27, %expanded_27 : tensor<4x8x1xf16>
      memref.alloca_scope.return %alloc_16 : memref<4x10xi32>
    }
    %176 = index.mul %149, %123
    %177 = arith.maxui %c690179085_i32, %c1669402709_i32 : i32
    %178 = scf.while (%arg2 = %167) : (memref<4x8xi32>) -> memref<4x8xi32> {
      %alloc_62 = memref.alloc() : memref<4x8x1xf16>
      memref.tensor_store %expanded_27, %alloc_62 : memref<4x8x1xf16>
      %249 = arith.minui %true_1, %false_43 : i1
      %250 = vector.matrix_multiply %45, %45 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
      %251 = math.ctlz %c1525623552_i32 : i32
      %alloc_63 = memref.alloc() : memref<4x2xi16>
      memref.tensor_store %1, %alloc_63 : memref<4x2xi16>
      %252 = arith.remsi %c690179085_i32, %c690179085_i32 : i32
      %inserted_64 = tensor.insert %false_4 into %from_elements[%c3, %c7] : tensor<4x10xi1>
      %253 = arith.divf %cst, %cst_0 : f16
      scf.condition(%extracted_25) %alloc : memref<4x8xi32>
    } do {
    ^bb0(%arg2: memref<4x8xi32>):
      affine.store %extracted, %95[] : memref<f32>
      %249 = arith.floordivsi %true, %false : i1
      %250 = scf.if %true_1 -> (memref<4x2x2xi64>) {
        %264 = math.powf %cst, %cst_0 : f16
        %265 = arith.cmpi ult, %c1130808043_i64, %c998028318_i64 : i64
        %266 = vector.reduction <maxf>, %107 : vector<2xf16> into f16
        %267 = bufferization.to_tensor %alloc_20 : memref<8x4xf16>
        %268 = index.maxu %c6, %c6
        %269 = tensor.empty(%c9) : tensor<4x?xi32>
        %inserted_62 = tensor.insert %cst_0 into %10[%c3, %c0, %c0] : tensor<4x2x2xf16>
        %inserted_63 = tensor.insert %32 into %reduced[] : tensor<f32>
        scf.yield %alloc_13 : memref<4x2x2xi64>
      } else {
        %264 = index.maxu %123, %49
        %265 = arith.minui %true, %true_1 : i1
        %266 = math.tanh %splat_30 : tensor<4x8xf32>
        %267 = vector.matrix_multiply %20, %169 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<8xf32>, vector<10xf32>) -> vector<20xf32>
        %268 = vector.broadcast %false_43 : i1 to vector<8xi1>
        vector.transfer_write %268, %57[%123, %85] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi1>, memref<4x2xi1>
        %269 = math.exp %32 : f32
        %270 = arith.cmpf ole, %cst_0, %cst : f16
        %271 = index.divu %147, %149
        scf.yield %alloc_13 : memref<4x2x2xi64>
      }
      %251 = vector.extract %105[1] : vector<2xf16>
      %252 = tensor.empty(%137, %c12) : tensor<?x?xi1>
      %253 = arith.floordivsi %c1130808043_i64, %c533791251_i64 : i64
      %254 = scf.if %true -> (i64) {
        %264 = index.maxs %c4, %c13
        memref.store %cst_2, %130[] : memref<f32>
        %265 = arith.shli %c533791251_i64, %c998028318_i64 : i64
        %266 = vector.flat_transpose %105 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %267 = math.absf %10 : tensor<4x2x2xf16>
        %268 = arith.mulf %extracted_29, %extracted : f32
        %269 = vector.broadcast %true : i1 to vector<i1>
        %270 = vector.transfer_write %269, %17[%c13, %c1] : vector<i1>, tensor<4x2xi1>
        %271 = vector.broadcast %c1669402709_i32 : i32 to vector<4x10xi32>
        scf.yield %c998028318_i64 : i64
      } else {
        %264 = math.round %18 : tensor<f32>
        %265 = arith.divsi %c5118_i16, %c21640_i16 : i16
        %266 = index.sizeof
        %267 = math.round %24 : f32
        %268 = arith.shrsi %true_22, %false_4 : i1
        %269 = bufferization.to_tensor %alloc_17 : memref<4x8xf16>
        %270 = vector.transpose %34, [1, 0] : vector<4x8xi1> to vector<8x4xi1>
        %271 = math.floor %269 : tensor<4x8xf16>
        scf.yield %c1130808043_i64 : i64
      }
      %255 = arith.shrsi %c690179085_i32, %c1525623552_i32 : i32
      %256 = arith.remf %cst, %cst_0 : f16
      %257 = math.fma %splat_30, %14, %14 : tensor<4x8xf32>
      %258 = index.casts %87 : index to i32
      %259 = tensor.empty() : tensor<4x2xi16>
      %260 = math.powf %5, %5 : tensor<4x8xf32>
      %261 = index.casts %true_22 : i1 to index
      %262 = math.log %12 : tensor<4x2x2xf16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<4x2x2xf16>) {
      ^bb0(%out: f16):
        memref.store %cst_0, %alloc_23[%c0, %c5] : memref<4x10xf16>
        %264 = math.cos %32 : f32
        %265 = index.maxu %149, %176
        %266 = vector.broadcast %true_1 : i1 to vector<4x10xi1>
        %267 = arith.cmpf oge, %cst_0, %cst : f16
        %268 = index.castu %c5118_i16 : i16 to index
        %269 = index.divu %165, %c12
        %270 = arith.floordivsi %false_43, %true_22 : i1
        %271 = math.tanh %extracted_26 : f32
        %272 = vector.maskedload %alloc_23[%c3, %c5], %106, %107 : memref<4x10xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %273 = arith.minsi %c21640_i16, %c5118_i16 : i16
        %274 = arith.shrui %true_1, %false : i1
        %275 = index.sizeof
        %276 = math.log1p %extracted_26 : f32
        %277 = arith.addf %cst, %cst_0 : f16
        %278 = math.exp2 %extracted_26 : f32
        %279 = tensor.empty() : tensor<4x8xf16>
        %280 = arith.minsi %c533791251_i64, %c998028318_i64 : i64
        %281 = index.floordivs %165, %268
        %282 = math.tanh %10 : tensor<4x2x2xf16>
        %283 = math.ceil %cst_2 : f32
        %284 = bufferization.to_memref %5 : memref<4x8xf32>
        %285 = arith.floordivsi %false_4, %false_4 : i1
        %extracted_62 = tensor.extract %0[%c1, %c0] : tensor<4x2xi16>
        %286 = math.log %7 : tensor<4x8xf32>
        %287 = math.absf %15 : tensor<4x8xf32>
        %288 = arith.minsi %false, %true_1 : i1
        %289 = arith.shli %c1669402709_i32, %c690179085_i32 : i32
        %290 = vector.broadcast %24 : f32 to vector<2x2xf32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %129, %129, %290 : vector<4x2xf32>, vector<4x2xf32> into vector<2x2xf32>
        %292 = arith.shrui %c998028318_i64, %c1130808043_i64 : i64
        %293 = arith.remf %cst_3, %cst_2 : f32
        %294 = math.log %120 : tensor<8x4xf16>
        linalg.yield %cst : f16
      } -> tensor<4x2x2xf16>
      scf.yield %alloc : memref<4x8xi32>
    }
    %179 = bufferization.clone %78 : memref<4x2xi64> to memref<4x2xi64>
    %180 = index.floordivs %c10, %87
    %generated_47 = tensor.generate %30 {
    ^bb0(%arg2: index, %arg3: index):
      %249 = memref.load %alloc_5[%c0, %c1] : memref<4x2xi64>
      %250 = tensor.empty(%c3, %165) : tensor<?x?xi64>
      %251 = arith.minui %c1525623552_i32, %c1525623552_i32 : i32
      %252 = math.cos %10 : tensor<4x2x2xf16>
      tensor.yield %c1525623552_i32 : i32
    } : tensor<?x2xi32>
    %181 = arith.addi %true_1, %extracted_25 : i1
    %182 = math.absf %5 : tensor<4x8xf32>
    %183 = tensor.empty() : tensor<4x2xi64>
    %mapped_48 = linalg.map ins(%13 : tensor<4x2xi64>) outs(%183 : tensor<4x2xi64>)
      (%in: i64) {
        %249 = math.exp %18 : tensor<f32>
        memref.store %in, %alloc_13[%c0, %c1, %c0] : memref<4x2x2xi64>
        %inserted_62 = tensor.insert %c5118_i16 into %0[%c3, %c1] : tensor<4x2xi16>
        %splat_63 = tensor.splat %extracted : tensor<4x2xf32>
        %250 = arith.ceildivsi %c690179085_i32, %c690179085_i32 : i32
        %251 = arith.xori %true, %true : i1
        %252 = arith.minsi %c998028318_i64, %c1130808043_i64 : i64
        %253 = affine.if affine_set<(d0, d1) : (d0 mod 32 - (d0 mod 32) mod 64 >= 0)>(%c11, %c15) -> i64 {
          %280 = math.absf %2 : tensor<4x10xf32>
          %281 = tensor.empty() : tensor<8x4xi32>
          %282 = math.fpowi %120, %281 : tensor<8x4xf16>, tensor<8x4xi32>
          %283 = arith.remf %cst_2, %extracted_29 : f32
          %c1_i64_67 = arith.constant 1 : i64
          %284 = vector.transfer_read %13[%49, %c0], %c1_i64_67 : tensor<4x2xi64>, vector<i64>
          memref.store %c998028318_i64, %78[%c3, %c0] : memref<4x2xi64>
          %285 = vector.shuffle %47, %47 [5, 6, 7] : vector<4x2x2xi16>, vector<4x2x2xi16>
          %286 = arith.remsi %false_43, %false_43 : i1
          %287 = arith.subi %c1130808043_i64, %c1130808043_i64 : i64
          affine.yield %c1_i64_67 : i64
        } else {
          %280 = index.maxu %30, %117
          %alloc_67 = memref.alloc() : memref<4x2x2xf32>
          memref.copy %alloc_11, %alloc_67 : memref<4x2x2xf32> to memref<4x2x2xf32>
          %281 = math.absf %14 : tensor<4x8xf32>
          %282 = math.absi %false_43 : i1
          %283 = arith.minsi %c998028318_i64, %in : i64
          %alloc_68 = memref.alloc() : memref<4x2x2xi1>
          %284 = vector.shuffle %33, %33 [1, 2, 3, 6, 7] : vector<4x8xf16>, vector<4x8xf16>
          %285 = math.log1p %cst_0 : f16
          affine.yield %in : i64
        }
        %254 = arith.shrsi %true, %true_1 : i1
        %255 = arith.shrsi %c1669402709_i32, %c1669402709_i32 : i32
        %256 = index.ceildivu %122, %c7
        %257 = index.floordivs %c10, %c1
        %cast_64 = tensor.cast %10 : tensor<4x2x2xf16> to tensor<?x?x?xf16>
        %258 = math.cttz %true_1 : i1
        %259 = arith.shrsi %false, %extracted_25 : i1
        %alloc_65 = memref.alloc() : memref<4x2x2xi1>
        %260 = vector.broadcast %true_22 : i1 to vector<4x2x2xi1>
        %261 = vector.gather %alloc_65[%117, %99, %c15] [%104], %260, %260 : memref<4x2x2xi1>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xi1> into vector<4x2x2xi1>
        %262 = vector.broadcast %24 : f32 to vector<8x8xf32>
        %263 = vector.outerproduct %20, %20, %262 {kind = #vector.kind<add>} : vector<8xf32>, vector<8xf32>
        %264 = arith.maxui %c5118_i16, %c5118_i16 : i16
        %265 = index.maxs %165, %256
        %266 = arith.minui %in, %in : i64
        %267 = affine.min affine_map<(d0, d1) -> (-(d1 + 32), d1 + 32)>(%87, %c12)
        %268 = arith.cmpf ugt, %extracted, %cst_2 : f32
        %269 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %270 = vector.broadcast %true_1 : i1 to vector<8xi1>
        %271 = vector.maskedload %alloc_23[%c2, %c3], %270, %269 : memref<4x10xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %272 = vector.load %alloc_15[%c1, %c1, %c0] : memref<4x2x2xi64>, vector<4x10xi64>
        %273 = vector.broadcast %c21640_i16 : i16 to vector<8xi16>
        %274 = vector.maskedload %alloc_9[%c2, %c4], %270, %273 : memref<4x8xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %275 = vector.multi_reduction <minui>, %261, %260 [] : vector<4x2x2xi1> to vector<4x2x2xi1>
        %276 = arith.remsi %false_43, %true : i1
        memref.store %true_22, %alloc_12[%c1, %c0] : memref<4x2xi1>
        %277 = math.tan %cst : f16
        %278 = math.log %8 : tensor<4x8xf16>
        %cast_66 = tensor.cast %23 : tensor<i32> to tensor<i32>
        %279 = math.ceil %cst : f16
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %184 = affine.min affine_map<(d0, d1) -> (d1 - 1, (d1 + 16) * 64 - 16)>(%87, %176)
    %185 = vector.reduction <add>, %106 : vector<2xi1> into i1
    %186 = vector.matrix_multiply %106, %106 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
    %187 = math.round %7 : tensor<4x8xf32>
    %188 = math.atan2 %14, %7 : tensor<4x8xf32>
    %189 = index.casts %c1669402709_i32 : i32 to index
    %190 = math.ctlz %true : i1
    %191 = vector.reduction <maxf>, %20 : vector<8xf32> into f32
    %from_elements_49 = tensor.from_elements %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0 : tensor<4x2x2xf16>
    %192 = index.divs %c2, %176
    %193 = index.castu %true_22 : i1 to index
    %194 = arith.shrsi %true, %false_43 : i1
    %195 = arith.minsi %c1525623552_i32, %c690179085_i32 : i32
    %196 = arith.divui %true_1, %false_43 : i1
    %197 = vector.broadcast %c5118_i16 : i16 to vector<2x2xi16>
    %198 = vector.insert %197, %47 [2] : vector<2x2xi16> into vector<4x2x2xi16>
    %199 = arith.minsi %c998028318_i64, %c998028318_i64 : i64
    %200 = index.divu %30, %122
    %201 = arith.addf %extracted_29, %cst_2 : f32
    scf.if %true {
      %alloc_62 = memref.alloc() : memref<4x2xf16>
      %249 = index.maxs %c2, %rank
      %250 = scf.while (%arg2 = %72) : (memref<4x2xi1>) -> memref<4x2xi1> {
        %false_63 = index.bool.constant false
        %256 = math.floor %splat_30 : tensor<4x8xf32>
        %c1543940394_i32 = arith.constant 1543940394 : i32
        %257 = math.expm1 %12 : tensor<4x2x2xf16>
        %expanded_64 = tensor.expand_shape %expanded_27 [[0], [1], [2, 3]] : tensor<4x8x1xf16> into tensor<4x8x1x1xf16>
        %258 = index.ceildivu %28, %c13
        %259 = math.ctlz %134 : tensor<4x8xi16>
        %alloc_65 = memref.alloc() : memref<8x10xf32>
        %260 = tensor.empty() : tensor<4x10xf32>
        %261 = linalg.matmul ins(%5, %alloc_65 : tensor<4x8xf32>, memref<8x10xf32>) outs(%260 : tensor<4x10xf32>) -> tensor<4x10xf32>
        scf.condition(%false_63) %72 : memref<4x2xi1>
      } do {
      ^bb0(%arg2: memref<4x2xi1>):
        %256 = arith.minsi %false_4, %false_4 : i1
        %257 = math.cttz %11 : tensor<4x10xi16>
        %258 = bufferization.to_memref %14 : memref<4x8xf32>
        %259 = vector.shuffle %107, %74 [0, 4, 5] : vector<2xf16>, vector<4xf16>
        %260 = index.mul %c14, %c2
        %261 = arith.minsi %false, %false : i1
        %262 = index.maxu %147, %rank
        %263 = arith.remsi %extracted_25, %true : i1
        %264 = vector.broadcast %c533791251_i64 : i64 to vector<2xi64>
        %265 = vector.maskedload %179[%c3, %c1], %106, %264 : memref<4x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %266 = vector.matrix_multiply %186, %106 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi1>, vector<2xi1>) -> vector<2xi1>
        %267 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
        %268 = arith.shrsi %c5118_i16, %c5118_i16 : i16
        %269 = index.castu %c1669402709_i32 : i32 to index
        %270 = arith.xori %c5118_i16, %c5118_i16 : i16
        %271 = index.casts %c1 : index to i32
        %272 = arith.shrui %c998028318_i64, %c998028318_i64 : i64
        scf.yield %arg2 : memref<4x2xi1>
      }
      %251 = bufferization.to_memref %5 : memref<4x8xf32>
      %252 = index.maxu %147, %165
      %253 = math.sqrt %18 : tensor<f32>
      %254 = math.sqrt %extracted : f32
      %255 = math.floor %10 : tensor<4x2x2xf16>
    } else {
      %249 = arith.negf %cst_2 : f32
      %250 = vector.reduction <mul>, %74 : vector<4xf16> into f16
      %extracted_62 = tensor.extract %expanded[%c0, %c1, %c0] : tensor<4x2x1xi1>
      %251 = affine.if affine_set<(d0) : (0 == 0, ((d0 ceildiv 32) floordiv 128) * 16 - 32 >= 0, 0 >= 0)>(%c12) -> memref<4x2x2xf32> {
        %256 = math.powf %expanded_27, %expanded_27 : tensor<4x8x1xf16>
        %257 = math.tanh %cst : f16
        %258 = math.sqrt %extracted_26 : f32
        %259 = index.ceildivu %c1, %c0
        %260 = math.absi %expanded : tensor<4x2x1xi1>
        %alloc_63 = memref.alloc() : memref<4x2xi1>
        %261 = bufferization.clone %125 : memref<4x8xf32> to memref<4x8xf32>
        %262 = math.copysign %12, %10 : tensor<4x2x2xf16>
        affine.yield %alloc_11 : memref<4x2x2xf32>
      } else {
        %256 = math.log1p %2 : tensor<4x10xf32>
        %257 = math.roundeven %14 : tensor<4x8xf32>
        %258 = arith.negf %extracted_29 : f32
        %259 = bufferization.clone %alloc_6 : memref<4x8xf32> to memref<4x8xf32>
        %260 = index.divs %c12, %c4
        %261 = arith.minsi %c1130808043_i64, %c533791251_i64 : i64
        %262 = arith.minui %c998028318_i64, %c1130808043_i64 : i64
        %263 = bufferization.to_memref %from_elements_49 : memref<4x2x2xf16>
        affine.yield %alloc_11 : memref<4x2x2xf32>
      }
      %252 = index.divs %192, %147
      %253 = memref.alloca_scope  -> (i1) {
        %256 = math.floor %10 : tensor<4x2x2xf16>
        %false_63 = arith.constant false
        %257 = math.log %15 : tensor<4x8xf32>
        %258 = vector.broadcast %24 : f32 to vector<4x8xf32>
        %259 = vector.fma %258, %258, %258 : vector<4x8xf32>
        %260 = index.sizeof
        %261 = arith.subi %true_1, %false_43 : i1
        %262 = index.ceildivu %c7, %193
        %263 = arith.muli %extracted_62, %true : i1
        %264 = math.log1p %2 : tensor<4x10xf32>
        %265 = math.log10 %from_elements_38 : tensor<4x2xf32>
        %266 = index.casts %149 : index to i32
        %from_elements_64 = tensor.from_elements %c1525623552_i32, %c1525623552_i32, %c1525623552_i32, %c690179085_i32, %c1669402709_i32, %c690179085_i32, %c1525623552_i32, %c1669402709_i32, %c1525623552_i32, %c1669402709_i32, %c690179085_i32, %c1669402709_i32, %c1669402709_i32, %c690179085_i32, %c1525623552_i32, %c690179085_i32, %c1525623552_i32, %c1669402709_i32, %c1669402709_i32, %c1669402709_i32, %c1669402709_i32, %c1525623552_i32, %c1525623552_i32, %c1525623552_i32, %c1525623552_i32, %c690179085_i32, %c1669402709_i32, %c1525623552_i32, %c690179085_i32, %c1525623552_i32, %c1525623552_i32, %c690179085_i32, %c1525623552_i32, %c1669402709_i32, %c1669402709_i32, %c1525623552_i32, %c1669402709_i32, %c1669402709_i32, %c690179085_i32, %c690179085_i32 : tensor<4x10xi32>
        %267 = arith.remsi %true_1, %false : i1
        %268 = vector.broadcast %true_1 : i1 to vector<2x2xi1>
        %269 = vector.outerproduct %106, %106, %268 {kind = #vector.kind<mul>} : vector<2xi1>, vector<2xi1>
        %270 = math.atan2 %7, %7 : tensor<4x8xf32>
        %271 = math.roundeven %54 : tensor<4x10xf32>
        %272 = math.roundeven %15 : tensor<4x8xf32>
        %273 = vector.multi_reduction <maxf>, %20, %20 [] : vector<8xf32> to vector<8xf32>
        %from_elements_65 = tensor.from_elements %false_43, %false_4, %false_4, %extracted_25, %false, %extracted_25, %false_4, %false, %false, %false_4, %extracted_25, %true, %true_1, %false_43, %true_22, %true_22 : tensor<4x2x2xi1>
        bufferization.dealloc_tensor %5 : tensor<4x8xf32>
        %274 = index.mul %c0, %189
        %275 = index.sub %123, %260
        %276 = math.log1p %24 : f32
        %277 = vector.shuffle %36, %36 [0, 1, 2, 3, 4] : vector<4x8xf16>, vector<4x8xf16>
        %278 = vector.transpose %163, [0, 1] : vector<4x2xi1> to vector<4x2xi1>
        %279 = index.mul %c3, %117
        %280 = math.ipowi %133, %11 : tensor<4x10xi16>
        %281 = vector.load %alloc_10[%c2, %c3] : memref<4x10xi64>, vector<4x10xi64>
        %282 = math.powf %extracted_29, %cst_3 : f32
        %283 = arith.divf %extracted_26, %extracted_26 : f32
        %284 = math.absi %splat_37 : tensor<4x10xi16>
        %285 = arith.remf %32, %extracted_29 : f32
        memref.alloca_scope.return %extracted_25 : i1
      }
      %254 = arith.floordivsi %c21640_i16, %c21640_i16 : i16
      %255 = vector.load %57[%c3, %c0] : memref<4x2xi1>, vector<4x10xi1>
    }
    %202 = math.expm1 %2 : tensor<4x10xf32>
    %203 = arith.minsi %false, %true_1 : i1
    %204 = math.ipowi %false_4, %extracted_25 : i1
    %c794624162_i32 = arith.constant 794624162 : i32
    %205 = vector.broadcast %c690179085_i32 : i32 to vector<4x8xi32>
    %206 = math.log1p %extracted_29 : f32
    %207 = math.cttz %56 : tensor<4x8xi32>
    %208 = arith.addf %24, %extracted_29 : f32
    %209 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
    %210 = arith.remf %cst_0, %cst : f16
    %splat_50 = tensor.splat %false_4 : tensor<4x2xi1>
    %211 = arith.subi %c998028318_i64, %c1130808043_i64 : i64
    memref.copy %alloc_6, %125 : memref<4x8xf32> to memref<4x8xf32>
    %212 = arith.addf %extracted, %extracted_26 : f32
    %213 = index.sizeof
    memref.store %cst, %alloc_17[%c3, %c6] : memref<4x8xf16>
    %214 = math.cttz %13 : tensor<4x2xi64>
    %cst_51 = arith.constant 1.000000e+00 : f16
    %cst_52 = arith.constant 0.000000e+00 : f16
    %215 = vector.transfer_read %splat[%rank, %87], %cst_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x10xf16>, vector<4xf16>
    %216 = arith.floordivsi %c1525623552_i32, %c690179085_i32 : i32
    %217 = math.ceil %10 : tensor<4x2x2xf16>
    %218 = index.mul %192, %28
    %219 = arith.addf %24, %cst_2 : f32
    %220 = memref.realloc %alloc_21 : memref<10xi32> to memref<4xi32>
    %221 = index.ceildivu %158, %c0
    %cst_53 = arith.constant 0x4D6BBCC9 : f32
    %222 = index.ceildivu %49, %c15
    %223 = vector.extract %127[0] : vector<4x2xi1>
    %224 = math.copysign %extracted, %cst_2 : f32
    %alloc_54 = memref.alloc() : memref<4x2xi16>
    memref.tensor_store %1, %alloc_54 : memref<4x2xi16>
    %inserted_55 = tensor.insert %32 into %2[%c1, %c4] : tensor<4x10xf32>
    %225 = math.exp %extracted_26 : f32
    %226 = math.log %14 : tensor<4x8xf32>
    %227 = bufferization.to_memref %5 : memref<4x8xf32>
    %228 = vector.extract %34[2] : vector<4x8xi1>
    %generated_56 = tensor.generate %184, %123, %122 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %249 = scf.while (%arg5 = %extracted_29) : (f32) -> f32 {
        %253 = bufferization.clone %72 : memref<4x2xi1> to memref<4x2xi1>
        %254 = math.floor %8 : tensor<4x8xf16>
        %255 = arith.remf %extracted, %extracted_29 : f32
        %alloc_62 = memref.alloc() : memref<4x2xf32>
        %256 = vector.broadcast %24 : f32 to vector<4x2x2xf32>
        %257 = vector.broadcast %false : i1 to vector<4x2x2xi1>
        %258 = vector.gather %alloc_62[%c0, %192] [%104], %257, %256 : memref<4x2xf32>, vector<4x2x2xi32>, vector<4x2x2xi1>, vector<4x2x2xf32> into vector<4x2x2xf32>
        %259 = vector.broadcast %c1525623552_i32 : i32 to vector<4x10xi32>
        %260 = vector.broadcast %true : i1 to vector<4x10xi1>
        %261 = vector.gather %56[%158, %c9] [%259], %260, %259 : tensor<4x8xi32>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi32> into vector<4x10xi32>
        %from_elements_63 = tensor.from_elements %c690179085_i32, %c1525623552_i32, %c690179085_i32, %c1669402709_i32, %c690179085_i32, %c1669402709_i32, %c1669402709_i32, %c690179085_i32 : tensor<4x2xi32>
        %262 = arith.addi %c533791251_i64, %c1130808043_i64 : i64
        %263 = vector.insertelement %extracted_26, %45[%c6 : index] : vector<2xf32>
        scf.condition(%extracted_25) %arg5 : f32
      } do {
      ^bb0(%arg5: f32):
        memref.store %c1525623552_i32, %alloc_21[%c4] : memref<10xi32>
        %253 = math.roundeven %2 : tensor<4x10xf32>
        %254 = arith.cmpf olt, %24, %arg5 : f32
        %255 = math.fma %2, %2, %2 : tensor<4x10xf32>
        affine.store %c533791251_i64, %78[%c9, %c4] : memref<4x2xi64>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16_62 = arith.constant 0 : i16
        %256 = vector.transfer_read %68[%137, %c3], %c0_i16_62 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<4x10xi16>, vector<4xi16>
        %257 = tensor.empty() : tensor<8x10xf32>
        %258 = tensor.empty() : tensor<4x10xf32>
        %259 = linalg.matmul ins(%14, %257 : tensor<4x8xf32>, tensor<8x10xf32>) outs(%258 : tensor<4x10xf32>) -> tensor<4x10xf32>
        %260 = vector.broadcast %c21640_i16 : i16 to vector<8x8xi16>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %144, %145, %260 : vector<4x8xi16>, vector<4x8xi16> into vector<8x8xi16>
        %inserted_63 = tensor.insert %c1_i16 into %133[%c2, %c8] : tensor<4x10xi16>
        %262 = memref.realloc %alloc_21 : memref<10xi32> to memref<10xi32>
        %263 = arith.negf %cst_0 : f16
        %264 = arith.addi %false_4, %true : i1
        %265 = arith.minsi %c1525623552_i32, %c690179085_i32 : i32
        memref.tensor_store %10, %alloc_14 : memref<4x2x2xf16>
        %266 = vector.broadcast %32 : f32 to vector<4x8xf32>
        %267 = vector.gather %alloc_7[%c7, %c2] [%205], %34, %266 : memref<4x10xf32>, vector<4x8xi32>, vector<4x8xi1>, vector<4x8xf32> into vector<4x8xf32>
        %268 = arith.ori %extracted_25, %true : i1
        scf.yield %cst_2 : f32
      }
      %250 = vector.matrix_multiply %106, %228 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xi1>, vector<8xi1>) -> vector<4xi1>
      %251 = math.ipowi %c533791251_i64, %c1130808043_i64 : i64
      %252 = math.round %15 : tensor<4x8xf32>
      tensor.yield %c1669402709_i32 : i32
    } : tensor<?x?x?xi32>
    %229 = math.log10 %12 : tensor<4x2x2xf16>
    %230 = vector.reduction <mul>, %223 : vector<2xi1> into i1
    %231 = vector.multi_reduction <or>, %106, %223 [] : vector<2xi1> to vector<2xi1>
    %extracted_57 = tensor.extract %4[%c2, %c0, %c0] : tensor<4x2x2xi1>
    %232 = vector.shuffle %197, %197 [1, 3] : vector<2x2xi16>, vector<2x2xi16>
    %233 = vector.transpose %45, [0] : vector<2xf32> to vector<2xf32>
    %234 = math.log1p %expanded_27 : tensor<4x8x1xf16>
    %235 = math.round %32 : f32
    %236 = memref.realloc %alloc_21 : memref<10xi32> to memref<4xi32>
    %from_elements_58 = tensor.from_elements %true_22, %true_1, %false_4, %extracted_25, %false_43, %extracted_25, %false, %true_22, %false_4, %false_4, %true, %false_43, %false_43, %true, %extracted_25, %false_43, %true, %extracted_57, %false_4, %true_22, %false, %extracted_57, %extracted_57, %extracted_25, %true_22, %extracted_57, %false_43, %false_4, %false_43, %extracted_25, %true_22, %true_22, %extracted_25, %extracted_57, %extracted_57, %false, %false_43, %false_4, %true_22, %extracted_57 : tensor<4x10xi1>
    %237 = affine.max affine_map<(d0, d1) -> (d1 floordiv 16, d1 + d0)>(%153, %99)
    %238 = math.tan %cst_2 : f32
    %239 = vector.reduction <mul>, %186 : vector<1xi1> into i1
    %240 = affine.max affine_map<(d0, d1) -> (0, d1 floordiv 64, d1, d1)>(%c8, %218)
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_59 = arith.constant 0 : i16
    %241 = vector.transfer_read %1[%c13, %25], %c0_i16_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x2xi16>, vector<10xi16>
    %alloc_60 = memref.alloc() : memref<i32>
    memref.tensor_store %23, %alloc_60 : memref<i32>
    %242 = arith.andi %c533791251_i64, %c533791251_i64 : i64
    %243 = tensor.empty() : tensor<4x8xf16>
    %244 = linalg.copy ins(%8 : tensor<4x8xf16>) outs(%243 : tensor<4x8xf16>) -> tensor<4x8xf16>
    %245 = tensor.empty() : tensor<8x4xf32>
    %transposed = linalg.transpose ins(%7 : tensor<4x8xf32>) outs(%245 : tensor<8x4xf32>) permutation = [1, 0] 
    %246 = tensor.empty() : tensor<f16>
    %reduced_61 = linalg.reduce ins(%alloc_17 : memref<4x8xf16>) outs(%246 : tensor<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %249 = bufferization.clone %110 : memref<4x2x2xi64> to memref<4x2x2xi64>
        %250 = scf.if %false_4 -> (memref<4x2xf16>) {
          %257 = math.exp %from_elements_49 : tensor<4x2x2xf16>
          %258 = math.atan2 %cst_3, %extracted_29 : f32
          %259 = math.powf %18, %reduced : tensor<f32>
          %260 = vector.reduction <maxui>, %223 : vector<2xi1> into i1
          %261 = math.absf %14 : tensor<4x8xf32>
          %262 = math.absf %54 : tensor<4x10xf32>
          bufferization.dealloc_tensor %12 : tensor<4x2x2xf16>
          %263 = arith.mulf %cst, %cst_51 : f16
          %alloc_65 = memref.alloc() : memref<4x2xf16>
          scf.yield %alloc_65 : memref<4x2xf16>
        } else {
          %257 = math.round %246 : tensor<f16>
          %258 = index.ceildivs %c4, %c8
          %259 = arith.maxui %c1130808043_i64, %c533791251_i64 : i64
          %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<4x2xi1> into tensor<8xi1>
          %extracted_65 = tensor.extract %0[%c3, %c0] : tensor<4x2xi16>
          %260 = arith.minui %c1130808043_i64, %c1130808043_i64 : i64
          %261 = arith.remsi %false, %true_1 : i1
          %262 = math.round %splat : tensor<4x10xf16>
          %alloc_66 = memref.alloc() : memref<4x2xf16>
          scf.yield %alloc_66 : memref<4x2xf16>
        }
        %251 = index.divu %165, %189
        %rank_62 = tensor.rank %generated_56 : tensor<?x?x?xi32>
        %252 = arith.subi %c690179085_i32, %c690179085_i32 : i32
        %alloc_63 = memref.alloc() : memref<10x10xi16>
        %253 = tensor.empty() : tensor<4x10xi16>
        %254 = linalg.matmul ins(%splat_37, %alloc_63 : tensor<4x10xi16>, memref<10x10xi16>) outs(%253 : tensor<4x10xi16>) -> tensor<4x10xi16>
        %255 = vector.extract %74[2] : vector<4xf16>
        %256 = arith.minsi %extracted_25, %false : i1
        %cst_64 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_64 : f16
      }
    %247 = scf.parallel (%arg2, %arg3) = (%180, %c12) to (%165, %158) step (%c7, %c10) init (%false_43) -> i1 {
      %249 = arith.shrsi %true, %false_4 : i1
      %250 = math.exp %12 : tensor<4x2x2xf16>
      %251 = arith.xori %extracted_57, %extracted_25 : i1
      %cst_62 = arith.constant 1.000000e+00 : f16
      %cst_63 = arith.constant 0.000000e+00 : f16
      %252 = vector.transfer_read %alloc_20[%c0, %c6], %cst_63 : memref<8x4xf16>, vector<f16>
      %generated_64 = tensor.generate %c10 {
      ^bb0(%arg4: index, %arg5: index):
        %263 = arith.shli %extracted_25, %true_1 : i1
        %264 = arith.subi %true_22, %true : i1
        %splat_67 = tensor.splat %cst : tensor<4x2x2xf16>
        %alloc_68 = memref.alloc() : memref<4x10xf16>
        tensor.yield %24 : f32
      } : tensor<?x2xf32>
      %253 = arith.maxui %c690179085_i32, %c1525623552_i32 : i32
      %from_elements_65 = tensor.from_elements %cst_62, %cst_0, %cst, %cst, %cst_62, %cst_0, %cst_51, %cst_51 : tensor<4x2xf16>
      %254 = arith.remf %cst_62, %cst_51 : f16
      %255 = math.ipowi %13, %13 : tensor<4x2xi64>
      %256 = index.mul %240, %87
      %257 = memref.alloca_scope  -> (i16) {
        %263 = vector.bitcast %74 : vector<4xf16> to vector<4xf16>
        %264 = memref.realloc %alloc_21 : memref<10xi32> to memref<8xi32>
        %265 = math.ctpop %from_elements_58 : tensor<4x10xi1>
        %266 = index.maxs %c7, %122
        memref.store %c1669402709_i32, %167[%c0, %c2] : memref<4x8xi32>
        %267 = math.floor %transposed : tensor<8x4xf32>
        %c157746078_i32 = arith.constant 157746078 : i32
        %268 = math.log10 %8 : tensor<4x8xf16>
        %269 = index.divu %164, %213
        %270 = index.divs %c5, %c6
        %271 = math.fma %extracted, %extracted_26, %cst_2 : f32
        %272 = math.sqrt %245 : tensor<8x4xf32>
        %273 = arith.muli %c5118_i16, %c0_i16 : i16
        %274 = vector.broadcast %cst_3 : f32 to vector<4x2xf32>
        %275 = index.divs %c12, %117
        %276 = vector.shuffle %107, %263 [2, 3, 4] : vector<2xf16>, vector<4xf16>
        %277 = arith.ceildivsi %c21640_i16, %c5118_i16 : i16
        %278 = vector.broadcast %c1669402709_i32 : i32 to vector<8x2x2xi32>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %205, %104, %278 : vector<4x8xi32>, vector<4x2x2xi32> into vector<8x2x2xi32>
        %280 = arith.minsi %c1669402709_i32, %c690179085_i32 : i32
        %alloc_67 = memref.alloc() : memref<4x2xi64>
        %281 = arith.cmpf ugt, %cst_62, %cst_62 : f16
        %282 = arith.negf %cst : f16
        %283 = math.ipowi %4, %4 : tensor<4x2x2xi1>
        %284 = vector.shuffle %205, %205 [2] : vector<4x8xi32>, vector<4x8xi32>
        %285 = arith.cmpf oge, %extracted_29, %cst_3 : f32
        %286 = math.ctlz %6 : tensor<4x2x2xi64>
        %extracted_68 = tensor.extract %22[] : tensor<i32>
        %287 = arith.minsi %extracted_57, %false : i1
        %288 = affine.max affine_map<(d0, d1) -> (d0 + 130, ((d0 + 146) ceildiv 128) mod 8, d1)>(%222, %164)
        %from_elements_69 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_51, %cst_62, %cst, %cst, %cst_51, %cst_0 : tensor<4x2x2xf16>
        %289 = index.divu %221, %221
        %290 = math.ipowi %56, %56 : tensor<4x8xi32>
        memref.alloca_scope.return %c0_i16 : i16
      }
      %258 = index.maxu %99, %117
      %259 = math.absi %4 : tensor<4x2x2xi1>
      %260 = math.powf %extracted_26, %cst_3 : f32
      %261 = vector.matrix_multiply %106, %223 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
      %262 = vector.bitcast %205 : vector<4x8xi32> to vector<4x8xf32>
      %true_66 = arith.constant true
      scf.reduce(%true_66)  : i1 {
      ^bb0(%arg4: i1, %arg5: i1):
        %263 = math.ctlz %13 : tensor<4x2xi64>
        %from_elements_67 = tensor.from_elements %c21640_i16, %257, %c21640_i16, %c5118_i16, %c0_i16, %c0_i16, %c0_i16, %257, %c5118_i16, %c21640_i16, %c5118_i16, %257, %c0_i16, %c21640_i16, %c21640_i16, %c5118_i16 : tensor<4x2x2xi16>
        %264 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%99, %c13, %137)
        %265 = math.log %splat_30 : tensor<4x8xf32>
        %266 = math.tanh %32 : f32
        %267 = index.maxu %192, %184
        %268 = arith.cmpf olt, %extracted_26, %extracted_26 : f32
        %269 = vector.multi_reduction <maxsi>, %144, %c0_i16 [0, 1] : vector<4x8xi16> to i16
        %true_68 = arith.constant true
        scf.reduce.return %true_68 : i1
      }
      scf.yield
    }
    %248 = affine.vector_load %alloc_18[%213, %c9] : memref<4x8xi32>, vector<8xi32>
    affine.vector_store %248, %167[%218, %c0] : memref<4x8xi32>, vector<8xi32>
    vector.print %20 : vector<8xf32>
    vector.print %33 : vector<4x8xf16>
    vector.print %34 : vector<4x8xi1>
    vector.print %35 : vector<4x8xi32>
    vector.print %36 : vector<4x8xf16>
    vector.print %38 : vector<4x2xf32>
    vector.print %45 : vector<2xf32>
    vector.print %47 : vector<4x2x2xi16>
    vector.print %74 : vector<4xf16>
    vector.print %104 : vector<4x2x2xi32>
    vector.print %105 : vector<2xf16>
    vector.print %106 : vector<2xi1>
    vector.print %107 : vector<2xf16>
    vector.print %116 : vector<4x2xf16>
    vector.print %127 : vector<4x2xi1>
    vector.print %128 : vector<4x2xi32>
    vector.print %129 : vector<4x2xf32>
    vector.print %144 : vector<4x8xi16>
    vector.print %145 : vector<4x8xi16>
    vector.print %154 : vector<f16>
    vector.print %163 : vector<4x2xi1>
    vector.print %169 : vector<10xf32>
    vector.print %186 : vector<1xi1>
    vector.print %197 : vector<2x2xi16>
    vector.print %205 : vector<4x8xi32>
    vector.print %223 : vector<2xi1>
    vector.print %228 : vector<8xi1>
    vector.print %248 : vector<8xi32>
    vector.print %c690179085_i32 : i32
    vector.print %cst : f16
    vector.print %c1525623552_i32 : i32
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %false : i1
    vector.print %c5118_i16 : i16
    vector.print %true_1 : i1
    vector.print %c21640_i16 : i16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %false_4 : i1
    vector.print %c533791251_i64 : i64
    vector.print %c1130808043_i64 : i64
    vector.print %c998028318_i64 : i64
    vector.print %c1669402709_i32 : i32
    vector.print %24 : f32
    vector.print %true_22 : i1
    vector.print %32 : f32
    vector.print %extracted : f32
    vector.print %extracted_25 : i1
    vector.print %extracted_26 : f32
    vector.print %extracted_29 : f32
    vector.print %false_43 : i1
    vector.print %cst_51 : f16
    vector.print %extracted_57 : i1
    vector.print %c0_i16 : i16
    return
  }
}
