module {
  func.func private @func1(%arg0: i32, %arg1: tensor<2x16xf32>) {
    %c510109333_i64 = arith.constant 510109333 : i64
    %c2583_i16 = arith.constant 2583 : i16
    %c-22596_i16 = arith.constant -22596 : i16
    %c559758251_i32 = arith.constant 559758251 : i32
    %cst = arith.constant 7.496000e+03 : f16
    %cst_0 = arith.constant 1.937600e+04 : f16
    %cst_1 = arith.constant 2.937600e+04 : f16
    %c1005867067_i64 = arith.constant 1005867067 : i64
    %c-26098_i16 = arith.constant -26098 : i16
    %true = arith.constant true
    %cst_2 = arith.constant 4.275200e+04 : f16
    %c292723955_i64 = arith.constant 292723955 : i64
    %false = arith.constant false
    %cst_3 = arith.constant 1.061600e+04 : f16
    %cst_4 = arith.constant 0x4E6ACE94 : f32
    %c-11464_i16 = arith.constant -11464 : i16
    %0 = tensor.empty() : tensor<2xf16>
    %1 = tensor.empty() : tensor<14x16xi32>
    %2 = tensor.empty() : tensor<16x16x16xf32>
    %3 = tensor.empty() : tensor<2xi64>
    %4 = tensor.empty() : tensor<14x16xi16>
    %5 = tensor.empty() : tensor<14x16xi16>
    %6 = tensor.empty() : tensor<14x16xf32>
    %7 = tensor.empty() : tensor<16x16x16xi64>
    %8 = tensor.empty() : tensor<16x16x16xi32>
    %9 = tensor.empty() : tensor<16x16x16xi64>
    %10 = tensor.empty() : tensor<14x16xi32>
    %11 = tensor.empty() : tensor<14x16xi16>
    %12 = tensor.empty() : tensor<16x16x16xi64>
    %13 = tensor.empty() : tensor<14x16xi32>
    %14 = tensor.empty() : tensor<2x16xi32>
    %15 = tensor.empty() : tensor<14x16xf32>
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
    %alloc = memref.alloc() : memref<2xf32>
    %alloc_5 = memref.alloc() : memref<2x16xi16>
    %alloc_6 = memref.alloc() : memref<16x16x16xf32>
    %alloc_7 = memref.alloc() : memref<2xi32>
    %alloc_8 = memref.alloc() : memref<16x16x16xf32>
    %alloc_9 = memref.alloc() : memref<16x16x16xi32>
    %alloc_10 = memref.alloc() : memref<2x16xf16>
    %alloc_11 = memref.alloc() : memref<2xi32>
    %alloc_12 = memref.alloc() : memref<16x16x16xf32>
    %alloc_13 = memref.alloc() : memref<2x16xf32>
    %alloc_14 = memref.alloc() : memref<14x16xf16>
    %alloc_15 = memref.alloc() : memref<14x16xi16>
    %alloc_16 = memref.alloc() : memref<2xi16>
    %alloc_17 = memref.alloc() : memref<2xi64>
    %alloc_18 = memref.alloc() : memref<2xi32>
    %alloc_19 = memref.alloc() : memref<2xi32>
    %16 = tensor.empty() : tensor<16x16x16xi64>
    %17 = linalg.copy ins(%7 : tensor<16x16x16xi64>) outs(%16 : tensor<16x16x16xi64>) -> tensor<16x16x16xi64>
    %18 = tensor.empty() : tensor<16x14xi16>
    %transposed = linalg.transpose ins(%5 : tensor<14x16xi16>) outs(%18 : tensor<16x14xi16>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<i16>
    linalg.reduce ins(%18 : tensor<16x14xi16>) outs(%alloc_20 : memref<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %collapsed_26 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<16x16x16xf32> into tensor<256x16xf32>
        %261 = math.floor %cst_4 : f32
        %262 = math.log2 %2 : tensor<16x16x16xf32>
        %from_elements_27 = tensor.from_elements %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4 : tensor<2x16xf32>
        %263 = arith.ori %false, %false : i1
        %264 = vector.broadcast %cst_2 : f16 to vector<2xf16>
        %265 = vector.shuffle %264, %264 [0, 2] : vector<2xf16>, vector<2xf16>
        %266 = arith.cmpf uno, %cst, %cst_3 : f16
        %267 = index.add %c12, %c12
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c6, %c6) to (%c0, %c1) step (%c8, %c4) init (%2) -> tensor<16x16x16xf32> {
      %261 = math.atan %cst_1 : f16
      %262 = affine.if affine_set<(d0, d1, d2) : ((d2 ceildiv 16) floordiv 2 - 62 >= 0, ((d2 ceildiv 16) floordiv 2 - 62) mod 8 == 0, (d2 ceildiv 16) * 32 == 0)>(%c15, %c7, %c10) -> memref<2x16xi64> {
        %277 = vector.broadcast %c1 : index to vector<2xindex>
        %278 = vector.broadcast %false : i1 to vector<2xi1>
        %279 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        vector.scatter %alloc[%c1] [%277], %278, %279 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %280 = arith.muli %true, %true : i1
        %281 = math.floor %15 : tensor<14x16xf32>
        %282 = bufferization.to_memref %2 : memref<16x16x16xf32>
        %283 = math.absf %0 : tensor<2xf16>
        %284 = index.add %c5, %c8
        %285 = index.add %c9, %c13
        %286 = math.tanh %cst_3 : f16
        %alloc_27 = memref.alloc() : memref<2x16xi64>
        affine.yield %alloc_27 : memref<2x16xi64>
      } else {
        %277 = math.rsqrt %0 : tensor<2xf16>
        %278 = bufferization.to_memref %0 : memref<2xf16>
        %279 = affine.max affine_map<(d0, d1) -> (((d0 * 2) mod 32) * 64 + d1)>(%c2, %c13)
        %280 = arith.shli %c-22596_i16, %c-26098_i16 : i16
        %281 = arith.remf %cst_0, %cst_1 : f16
        %282 = arith.remf %cst_1, %cst_0 : f16
        %283 = vector.broadcast %c559758251_i32 : i32 to vector<i32>
        %284 = vector.insertelement %c559758251_i32, %283[] : vector<i32>
        %285 = math.cttz %c-11464_i16 : i16
        %alloc_27 = memref.alloc() : memref<2x16xi64>
        affine.yield %alloc_27 : memref<2x16xi64>
      }
      %263 = arith.minsi %c559758251_i32, %c559758251_i32 : i32
      %264 = arith.minsi %c510109333_i64, %c510109333_i64 : i64
      %collapsed_26 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x16xi32> into tensor<224xi32>
      %265 = arith.maxf %cst_1, %cst_3 : f16
      %266 = affine.min affine_map<(d0) -> (d0 + (d0 * 16 + 16) * 2)>(%arg3)
      %267 = math.log2 %0 : tensor<2xf16>
      %268 = affine.load %alloc_11[%c3] : memref<2xi32>
      %269 = affine.if affine_set<(d0, d1, d2) : ((d1 + 1) * 4 >= 0, d1 + 1 >= 0, d2 * 2 == 0)>(%c10, %c13, %c1) -> i1 {
        %277 = vector.load %alloc[%c1] : memref<2xf32>, vector<2x16xf32>
        %278 = arith.cmpi eq, %c-11464_i16, %c-11464_i16 : i16
        %279 = vector.broadcast %cst_4 : f32 to vector<16xf32>
        %280 = vector.insert %279, %277 [0] : vector<16xf32> into vector<2x16xf32>
        %281 = math.log2 %cst_3 : f16
        %282 = math.absf %2 : tensor<16x16x16xf32>
        %283 = vector.extract %279[10] : vector<16xf32>
        %284 = math.rsqrt %2 : tensor<16x16x16xf32>
        %extracted_27 = tensor.extract %6[%c5, %c15] : tensor<14x16xf32>
        affine.yield %true : i1
      } else {
        %277 = arith.shrsi %c1005867067_i64, %c510109333_i64 : i64
        %cast_27 = tensor.cast %3 : tensor<2xi64> to tensor<?xi64>
        %278 = math.ceil %cst_1 : f16
        %279 = vector.broadcast %cst_1 : f16 to vector<f16>
        vector.transfer_write %279, %alloc_14[%arg2, %c0] : vector<f16>, memref<14x16xf16>
        %alloc_28 = memref.alloc() : memref<2xf32>
        memref.copy %alloc, %alloc_28 : memref<2xf32> to memref<2xf32>
        %280 = arith.subi %false, %false : i1
        affine.store %268, %alloc_11[%c13] : memref<2xi32>
        %281 = arith.remui %c2583_i16, %c-26098_i16 : i16
        affine.yield %false : i1
      }
      %270 = math.cttz %collapsed_26 : tensor<224xi32>
      %271 = math.absf %15 : tensor<14x16xf32>
      %272 = arith.muli %c559758251_i32, %c559758251_i32 : i32
      %273 = math.floor %15 : tensor<14x16xf32>
      %274 = arith.shli %c559758251_i32, %c559758251_i32 : i32
      %275 = arith.remsi %c-11464_i16, %c-22596_i16 : i16
      %276 = tensor.empty() : tensor<16x16x16xf32>
      scf.reduce(%276)  : tensor<16x16x16xf32> {
      ^bb0(%arg4: tensor<16x16x16xf32>, %arg5: tensor<16x16x16xf32>):
        %extracted_27 = tensor.extract %4[%c9, %c15] : tensor<14x16xi16>
        %277 = math.cttz %18 : tensor<16x14xi16>
        %278 = math.atan2 %15, %15 : tensor<14x16xf32>
        %279 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        %280 = vector.extract_strided_slice %279 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %281 = vector.splat %c1 : vector<14x16xindex>
        %282 = index.maxu %c12, %c0
        %283 = math.copysign %6, %6 : tensor<14x16xf32>
        %284 = arith.minsi %c559758251_i32, %c559758251_i32 : i32
        %285 = tensor.empty() : tensor<16x16x16xf32>
        scf.reduce.return %285 : tensor<16x16x16xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c0, %c7] : memref<14x16xi16>, vector<16xi16>
    affine.vector_store %20, %alloc_16[%c3] : memref<2xi16>, vector<16xi16>
    %21 = tensor.empty() : tensor<2xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_7, %21 : memref<2xi32>, tensor<2xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = vector.insertelement %c-22596_i16, %20[%c5 : index] : vector<16xi16>
    %25 = arith.ori %c-22596_i16, %c-11464_i16 : i16
    %26 = arith.cmpf uno, %cst_3, %cst_0 : f16
    affine.for %arg2 = 0 to 107 {
    }
    %27 = arith.ceildivsi %c292723955_i64, %c292723955_i64 : i64
    %28 = index.casts %c-11464_i16 : i16 to index
    %29 = vector.extract %20[5] : vector<16xi16>
    %30 = math.expm1 %2 : tensor<16x16x16xf32>
    %31 = scf.if %false -> (memref<14x16xf32>) {
      %261 = arith.muli %c292723955_i64, %c292723955_i64 : i64
      %262 = vector.reduction <maxsi>, %20 : vector<16xi16> into i16
      %263 = math.ceil %0 : tensor<2xf16>
      %264 = vector.transpose %20, [0] : vector<16xi16> to vector<16xi16>
      %265 = affine.load %alloc_9[%c13, %c4, %c2] : memref<16x16x16xi32>
      %266 = math.expm1 %6 : tensor<14x16xf32>
      %cast_26 = tensor.cast %9 : tensor<16x16x16xi64> to tensor<?x?x?xi64>
      %267 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xi16> -> vector<16xi16>
      %alloc_27 = memref.alloc() : memref<14x16xf32>
      scf.yield %alloc_27 : memref<14x16xf32>
    } else {
      %261 = arith.ori %c559758251_i32, %c559758251_i32 : i32
      %262 = affine.for %arg2 = 0 to 8 iter_args(%arg3 = %6) -> (tensor<14x16xf32>) {
        affine.yield %15 : tensor<14x16xf32>
      }
      %extracted_26 = tensor.extract %7[%c0, %c7, %c11] : tensor<16x16x16xi64>
      %263 = math.round %0 : tensor<2xf16>
      %264 = vector.splat %cst_4 : vector<2x16xf32>
      %265 = math.exp2 %15 : tensor<14x16xf32>
      %266 = arith.addi %c-26098_i16, %c-26098_i16 : i16
      %267 = arith.addf %cst_4, %cst_4 : f32
      %alloc_27 = memref.alloc() : memref<14x16xf32>
      scf.yield %alloc_27 : memref<14x16xf32>
    }
    %32 = vector.extract %20[8] : vector<16xi16>
    %33 = index.sizeof
    memref.copy %alloc_7, %alloc_18 : memref<2xi32> to memref<2xi32>
    %34 = vector.reduction <xor>, %20 : vector<16xi16> into i16
    %35 = math.powf %2, %2 : tensor<16x16x16xf32>
    %36 = memref.realloc %alloc_16 : memref<2xi16> to memref<14xi16>
    %inserted = tensor.insert %c559758251_i32 into %10[%c9, %c15] : tensor<14x16xi32>
    %37 = math.round %cst_3 : f16
    vector.print %20 : vector<16xi16>
    %38 = vector.splat %28 : vector<2x16xindex>
    %39 = math.exp2 %15 : tensor<14x16xf32>
    %40 = arith.divui %c-11464_i16, %c2583_i16 : i16
    %41 = index.ceildivs %c9, %c15
    %42 = vector.splat %cst_4 : vector<2xf32>
    %43 = vector.broadcast %cst_4 : f32 to vector<16xf32>
    %44 = vector.broadcast %true : i1 to vector<16xi1>
    %45 = vector.maskedload %alloc_13[%c0, %c11], %44, %43 : memref<2x16xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
    %46 = index.sizeof
    %47 = affine.load %alloc_7[%c1] : memref<2xi32>
    %48 = index.casts %c3 : index to i32
    %49 = arith.maxf %cst_0, %cst_0 : f16
    %50 = math.expm1 %2 : tensor<16x16x16xf32>
    %51 = vector.broadcast %c15 : index to vector<2xindex>
    %52 = vector.broadcast %true : i1 to vector<2xi1>
    %53 = vector.broadcast %47 : i32 to vector<2xi32>
    vector.scatter %alloc_11[%c0] [%51], %52, %53 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %54 = scf.if %true -> (f32) {
      %261 = math.exp2 %0 : tensor<2xf16>
      %262 = math.cos %0 : tensor<2xf16>
      %263 = math.exp %cst_4 : f32
      %264 = arith.cmpi ult, %c510109333_i64, %c292723955_i64 : i64
      %265 = arith.maxf %cst_4, %cst_4 : f32
      %cast_26 = tensor.cast %8 : tensor<16x16x16xi32> to tensor<?x?x?xi32>
      %266 = arith.shli %c559758251_i32, %47 : i32
      %267 = math.ceil %6 : tensor<14x16xf32>
      scf.yield %cst_4 : f32
    } else {
      %261 = math.log2 %cst_1 : f16
      %262 = math.sqrt %0 : tensor<2xf16>
      %263 = arith.shrsi %c-26098_i16, %c-26098_i16 : i16
      %264 = math.copysign %cst_1, %cst_0 : f16
      %265 = index.divu %c4, %c9
      %266 = math.fma %cst_4, %cst_4, %cst_4 : f32
      %267 = arith.ori %47, %47 : i32
      %cast_26 = tensor.cast %4 : tensor<14x16xi16> to tensor<?x?xi16>
      scf.yield %cst_4 : f32
    }
    %55 = math.cttz %10 : tensor<14x16xi32>
    %56 = arith.cmpi sgt, %c-11464_i16, %c-11464_i16 : i16
    %57 = math.ceil %6 : tensor<14x16xf32>
    %58 = math.ceil %54 : f32
    %59 = math.cttz %12 : tensor<16x16x16xi64>
    %60 = index.casts %c15 : index to i32
    %61 = vector.transpose %43, [0] : vector<16xf32> to vector<16xf32>
    %62 = arith.remf %cst_1, %cst_2 : f16
    %63 = vector.splat %c559758251_i32 : vector<2xi32>
    affine.for %arg2 = 0 to 31 {
    }
    %64 = math.exp2 %15 : tensor<14x16xf32>
    %65 = arith.mulf %cst_4, %54 : f32
    %alloca = memref.alloca() : memref<2xi1>
    %66 = math.ctpop %transposed : tensor<16x14xi16>
    %67 = tensor.empty() : tensor<14x14xi16>
    %68 = linalg.matmul ins(%4, %18 : tensor<14x16xi16>, tensor<16x14xi16>) outs(%67 : tensor<14x14xi16>) -> tensor<14x14xi16>
    %69 = affine.load %alloc_20[] : memref<i16>
    %70 = math.ceil %cst_2 : f16
    affine.for %arg2 = 0 to 8 {
    }
    %71 = arith.remf %cst_0, %cst_3 : f16
    %72 = vector.broadcast %c-26098_i16 : i16 to vector<14xi16>
    %73 = vector.broadcast %true : i1 to vector<14xi1>
    %74 = vector.maskedload %alloc_16[%c1], %73, %72 : memref<2xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
    %75 = math.ceil %cst_1 : f16
    %76 = arith.shrsi %c-22596_i16, %c-22596_i16 : i16
    %77 = memref.realloc %alloc_18 : memref<2xi32> to memref<11xi32>
    %78 = affine.max affine_map<(d0, d1, d2) -> ((d1 - d0) mod 8 + d0, ((d0 mod 32) * 2) mod 128, (d1 - d0) mod 8 + d0)>(%c14, %33, %c4)
    %79 = math.exp2 %2 : tensor<16x16x16xf32>
    %80 = arith.muli %true, %false : i1
    %81 = math.absf %15 : tensor<14x16xf32>
    %82 = vector.create_mask %c11, %41 : vector<14x16xi1>
    %83 = index.casts %c1005867067_i64 : i64 to index
    %84 = arith.maxf %cst_3, %cst_2 : f16
    %85 = vector.insertelement %false, %44[%c10 : index] : vector<16xi1>
    %86 = math.copysign %6, %6 : tensor<14x16xf32>
    %87 = index.sizeof
    %88 = index.ceildivs %46, %c14
    %89 = math.atan2 %15, %6 : tensor<14x16xf32>
    %90 = arith.remf %cst, %cst_0 : f16
    %91 = math.atan2 %0, %0 : tensor<2xf16>
    %92 = arith.addi %c292723955_i64, %c1005867067_i64 : i64
    %93 = index.casts %c510109333_i64 : i64 to index
    %94 = math.exp2 %cst_3 : f16
    %95 = index.add %c12, %88
    %96 = vector.extract %74[12] : vector<14xi16>
    %97 = math.floor %cst_4 : f32
    %98 = math.log10 %cst : f16
    %99 = math.round %0 : tensor<2xf16>
    memref.assume_alignment %alloc_19, 2 : memref<2xi32>
    %100 = index.mul %c9, %c12
    %101 = memref.atomic_rmw mulf %54, %alloc_13[%c1, %c11] : (f32, memref<2x16xf32>) -> f32
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<14x16xi16> into tensor<224xi16>
    %c0_i64 = arith.constant 0 : i64
    %102 = vector.transfer_read %alloc_17[%87], %c0_i64 : memref<2xi64>, vector<i64>
    %103 = math.ceil %15 : tensor<14x16xf32>
    %104 = arith.addi %c-11464_i16, %c2583_i16 : i16
    %105 = index.mul %c8, %c6
    memref.copy %alloc_12, %alloc_8 : memref<16x16x16xf32> to memref<16x16x16xf32>
    %cast = tensor.cast %14 : tensor<2x16xi32> to tensor<?x?xi32>
    %106 = scf.if %true -> (memref<2xi64>) {
      %261 = arith.divui %c2583_i16, %c-22596_i16 : i16
      %262 = index.ceildivs %c0, %78
      %263 = arith.andi %c559758251_i32, %47 : i32
      %264 = arith.ceildivsi %c-11464_i16, %c-22596_i16 : i16
      %alloc_26 = memref.alloc() : memref<2x16xi16>
      memref.copy %alloc_5, %alloc_26 : memref<2x16xi16> to memref<2x16xi16>
      %265 = vector.insertelement %54, %45[%93 : index] : vector<16xf32>
      %266 = math.round %cst : f16
      %267 = arith.negf %cst : f16
      scf.yield %alloc_17 : memref<2xi64>
    } else {
      %261 = index.add %33, %c14
      %262 = arith.remf %cst_2, %cst_3 : f16
      %generated_26 = tensor.generate %c3, %c15 {
      ^bb0(%arg2: index, %arg3: index):
        %268 = vector.extract %73[1] : vector<14xi1>
        %269 = vector.extract %45[14] : vector<16xf32>
        %270 = arith.floordivsi %c-11464_i16, %c-22596_i16 : i16
        %271 = arith.remui %true, %false : i1
        tensor.yield %54 : f32
      } : tensor<?x?xf32>
      %263 = vector.reduction <maxui>, %74 : vector<14xi16> into i16
      %264 = math.cos %0 : tensor<2xf16>
      %265 = arith.ceildivsi %c-22596_i16, %69 : i16
      %266 = math.round %cst_2 : f16
      %267 = arith.shli %false, %true : i1
      scf.yield %alloc_17 : memref<2xi64>
    }
    memref.store %c559758251_i32, %alloc_18[%c1] : memref<2xi32>
    %107 = arith.addi %47, %47 : i32
    %108 = math.exp2 %6 : tensor<14x16xf32>
    %109 = math.log2 %cst_0 : f16
    %110 = arith.ori %c0_i64, %c292723955_i64 : i64
    %111 = math.fma %cst_1, %cst_1, %cst : f16
    memref.assume_alignment %alloc_8, 4 : memref<16x16x16xf32>
    %112 = arith.remui %47, %47 : i32
    %113 = math.log2 %6 : tensor<14x16xf32>
    %114 = arith.maxf %cst, %cst_2 : f16
    %115 = scf.while (%arg2 = %73) : (vector<14xi1>) -> vector<14xi1> {
      %261 = math.expm1 %cst_0 : f16
      %262 = arith.ori %69, %69 : i16
      %263 = index.mul %100, %87
      scf.if %true {
        %268 = math.tanh %15 : tensor<14x16xf32>
        %269 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %269, %alloc_14[%c15, %c4] : vector<f16>, memref<14x16xf16>
        %270 = vector.broadcast %95 : index to vector<11xindex>
        %271 = vector.broadcast %true : i1 to vector<11xi1>
        %272 = vector.broadcast %c-26098_i16 : i16 to vector<11xi16>
        vector.scatter %alloc_20[] [%270], %271, %272 : memref<i16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
        %273 = math.round %0 : tensor<2xf16>
        %274 = math.ceil %cst_1 : f16
        %275 = index.add %78, %88
        %276 = arith.ori %c559758251_i32, %47 : i32
        affine.store %47, %alloc_11[%c4] : memref<2xi32>
      } else {
        %268 = arith.minsi %c292723955_i64, %c1005867067_i64 : i64
        %269 = arith.divui %c-11464_i16, %c2583_i16 : i16
        memref.assume_alignment %alloc_11, 8 : memref<2xi32>
        %270 = arith.ori %69, %c-11464_i16 : i16
        %alloc_27 = memref.alloc() : memref<2x16xi32>
        memref.tensor_store %14, %alloc_27 : memref<2x16xi32>
        %271 = math.rsqrt %cst_4 : f32
        %272 = math.exp %15 : tensor<14x16xf32>
        %273 = math.expm1 %15 : tensor<14x16xf32>
      }
      %264 = memref.atomic_rmw assign %cst_4, %alloc_8[%c14, %c14, %c8] : (f32, memref<16x16x16xf32>) -> f32
      %265 = index.floordivs %87, %83
      %c0_i64_26 = arith.constant 0 : i64
      %266 = vector.transfer_read %3[%c6], %c0_i64_26 : tensor<2xi64>, vector<i64>
      %267 = math.cos %cst : f16
      scf.condition(%false) %73 : vector<14xi1>
    } do {
    ^bb0(%arg2: vector<14xi1>):
      %261 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 8, d2 ceildiv 128 - 1, d2 ceildiv 128, d2 ceildiv 128 - d1 - 1)>(%c0, %c15, %c15, %c14)
      %262 = index.divu %c9, %87
      %263 = index.sizeof
      %264 = vector.splat %33 : vector<2x16xindex>
      %265 = arith.maxui %c1005867067_i64, %c1005867067_i64 : i64
      %266 = arith.maxf %cst_3, %cst_0 : f16
      %267 = vector.insertelement %c-26098_i16, %20[%78 : index] : vector<16xi16>
      %268 = arith.maxf %cst_3, %cst : f16
      %269 = affine.max affine_map<(d0, d1) -> (-((d0 mod 128) * 64 + d1 + d0 floordiv 8), -((d0 mod 128) * 64 + d1 + d0 floordiv 8))>(%87, %93)
      %inserted_26 = tensor.insert %c0_i64 into %16[%c4, %c5, %c14] : tensor<16x16x16xi64>
      %270 = affine.min affine_map<(d0, d1) -> ((d1 + (d1 mod 64) * 64) mod 128, d0 * 1024, (d1 mod 64) * 128)>(%78, %262)
      %271 = arith.addi %c0_i64, %c292723955_i64 : i64
      %272 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 64 >= 0, d0 == 0)>(%c9, %c11, %c4, %c1) -> f16 {
        %277 = arith.remf %cst_3, %cst : f16
        %278 = math.cttz %5 : tensor<14x16xi16>
        %279 = arith.maxf %54, %54 : f32
        %280 = memref.atomic_rmw minf %cst_4, %alloc_8[%c2, %c4, %c8] : (f32, memref<16x16x16xf32>) -> f32
        %281 = vector.matrix_multiply %73, %73 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
        %282 = arith.shli %true, %true : i1
        %283 = math.rsqrt %2 : tensor<16x16x16xf32>
        %284 = math.expm1 %cst_1 : f16
        affine.yield %cst_2 : f16
      } else {
        %277 = math.exp %cst_3 : f16
        %278 = vector.broadcast %c559758251_i32 : i32 to vector<i32>
        vector.transfer_write %278, %alloc_7[%c4] : vector<i32>, memref<2xi32>
        %279 = index.ceildivs %83, %105
        %280 = vector.matrix_multiply %20, %72 {lhs_columns = 2 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<16xi16>, vector<14xi16>) -> vector<56xi16>
        %281 = math.round %6 : tensor<14x16xf32>
        %282 = arith.addf %54, %54 : f32
        %283 = arith.addi %c292723955_i64, %c0_i64 : i64
        %284 = math.log2 %cst_2 : f16
        affine.yield %cst_1 : f16
      }
      %273 = vector.broadcast %c-22596_i16 : i16 to vector<i16>
      %274 = vector.transfer_write %273, %67[%263, %c5] : vector<i16>, tensor<14x14xi16>
      %275 = math.log10 %cst_3 : f16
      %276 = arith.divui %c-11464_i16, %c-11464_i16 : i16
      scf.yield %73 : vector<14xi1>
    }
    scf.if %true {
      %261 = index.add %41, %c12
      %262 = math.absf %6 : tensor<14x16xf32>
      memref.assume_alignment %alloc_17, 16 : memref<2xi64>
      %263 = math.floor %cst : f16
      %c0_i32 = arith.constant 0 : i32
      %264 = vector.transfer_read %10[%c9, %87], %c0_i32 : tensor<14x16xi32>, vector<16xi32>
      %265 = vector.flat_transpose %72 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      %266 = affine.load %alloc_6[%c1, %c12, %c7] : memref<16x16x16xf32>
      %267 = arith.minsi %c-26098_i16, %c-22596_i16 : i16
    }
    %116 = arith.negf %cst_0 : f16
    %117 = arith.shrui %true, %true : i1
    scf.if %false {
      affine.for %arg2 = 0 to 113 {
      }
      %261 = arith.maxui %c1005867067_i64, %c510109333_i64 : i64
      scf.if %false {
        %268 = arith.mulf %cst_1, %cst_0 : f16
        %269 = vector.matrix_multiply %45, %45 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_27 = arith.constant 0 : i32
        %270 = vector.transfer_read %8[%c0, %78, %c10], %c0_i32_27 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<16x16x16xi32>, vector<16xi32>
        %cast_28 = tensor.cast %18 : tensor<16x14xi16> to tensor<?x?xi16>
        %inserted_29 = tensor.insert %c-26098_i16 into %18[%c13, %c0] : tensor<16x14xi16>
        %271 = math.log10 %6 : tensor<14x16xf32>
        %cast_30 = tensor.cast %21 : tensor<2xi32> to tensor<?xi32>
        %272 = math.log2 %cst_1 : f16
      }
      %false_26 = index.bool.constant false
      %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%c12, %c12, %33, %c7)
      %263 = math.atan2 %cst_1, %cst : f16
      %264 = bufferization.to_memref %67 : memref<14x14xi16>
      %265 = tensor.empty() : tensor<16xi64>
      %266 = tensor.empty() : tensor<16x16xi64>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %266 : tensor<16xi64>, tensor<16x16xi64>) outs(%7 : tensor<16x16x16xi64>) {
      ^bb0(%in: i64, %in_27: i64, %out: i64):
        %268 = math.exp %2 : tensor<16x16x16xf32>
        %269 = math.atan2 %0, %0 : tensor<2xf16>
        %270 = arith.xori %c1005867067_i64, %c510109333_i64 : i64
        %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%87, %c6, %100, %88)
        %272 = vector.insert %c2583_i16, %20 [3] : i16 into vector<16xi16>
        %273 = vector.transpose %74, [0] : vector<14xi16> to vector<14xi16>
        %274 = index.ceildivs %c4, %c6
        %275 = arith.divui %false, %false_26 : i1
        %276 = index.casts %41 : index to i32
        %277 = math.fma %6, %15, %6 : tensor<14x16xf32>
        %278 = vector.splat %69 : vector<16x16x16xi16>
        %279 = math.rsqrt %cst_4 : f32
        %280 = math.rsqrt %cst_0 : f16
        %281 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%83, %95)
        %282 = vector.transpose %44, [0] : vector<16xi1> to vector<16xi1>
        %283 = vector.splat %in_27 : vector<2xi64>
        %from_elements_28 = tensor.from_elements %54, %54, %cst_4, %54, %54, %cst_4, %54, %cst_4, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %cst_4, %54, %54, %54, %cst_4, %cst_4, %54, %cst_4, %54, %cst_4, %cst_4 : tensor<2x16xf32>
        %284 = vector.broadcast %271 : index to vector<14xindex>
        %285 = vector.broadcast %54 : f32 to vector<14xf32>
        vector.scatter %31[%c13, %c0] [%284], %73, %285 : memref<14x16xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %286 = arith.remf %cst_4, %54 : f32
        %287 = math.copysign %15, %15 : tensor<14x16xf32>
        %288 = arith.maxui %c1005867067_i64, %c510109333_i64 : i64
        %289 = arith.subi %c559758251_i32, %c559758251_i32 : i32
        %290 = arith.minui %c510109333_i64, %c292723955_i64 : i64
        %291 = index.add %c9, %281
        %292 = affine.load %31[%c5, %c7] : memref<14x16xf32>
        %293 = math.tanh %6 : tensor<14x16xf32>
        %294 = math.log %2 : tensor<16x16x16xf32>
        %295 = index.floordivs %c14, %c13
        %296 = arith.shli %c-26098_i16, %69 : i16
        %297 = arith.shli %c-11464_i16, %c-22596_i16 : i16
        %true_29 = index.bool.constant true
        %298 = vector.extract %44[1] : vector<16xi1>
        linalg.yield %c292723955_i64 : i64
      } -> tensor<16x16x16xi64>
    } else {
      %collapsed_26 = tensor.collapse_shape %5 [[0, 1]] : tensor<14x16xi16> into tensor<224xi16>
      %261 = arith.xori %c559758251_i32, %47 : i32
      %262 = memref.load %alloc_18[%c0] : memref<2xi32>
      %263 = affine.min affine_map<(d0, d1, d2) -> (d2 * 16, d0 + 32, 0, (d2 + d0) * 32)>(%93, %c13, %c8)
      %264 = arith.addf %54, %54 : f32
      %265 = math.copysign %cst_3, %cst_3 : f16
      %dest, %accumulated_value = vector.scan <minsi>, %82, %44 {inclusive = false, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
      %266 = math.rsqrt %2 : tensor<16x16x16xf32>
    }
    %118 = index.castu %47 : i32 to index
    %119 = math.log2 %6 : tensor<14x16xf32>
    %120 = math.cos %cst_1 : f16
    %121 = math.log1p %6 : tensor<14x16xf32>
    %122 = memref.alloca_scope  -> (i16) {
      %261 = index.sizeof
      %262 = arith.ceildivsi %c1005867067_i64, %c1005867067_i64 : i64
      %263 = scf.while (%arg2 = %c510109333_i64) : (i64) -> i64 {
        %295 = math.log2 %54 : f32
        %296 = arith.shrsi %c559758251_i32, %c559758251_i32 : i32
        %297 = math.exp %cst_3 : f16
        %298 = affine.max affine_map<(d0) -> (d0 * -2, d0 * -2 - 64)>(%c5)
        memref.tensor_store %3, %106 : memref<2xi64>
        %299 = math.rsqrt %cst : f16
        %300 = vector.matrix_multiply %43, %43 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %301 = index.maxu %c8, %c3
        scf.condition(%true) %c0_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %295 = math.cos %cst : f16
        %296 = arith.addi %c2583_i16, %c-11464_i16 : i16
        %297 = vector.insertelement %false, %73[%95 : index] : vector<14xi1>
        %298 = math.floor %6 : tensor<14x16xf32>
        %299 = math.log10 %6 : tensor<14x16xf32>
        %300 = math.round %54 : f32
        %301 = arith.cmpi sle, %c2583_i16, %69 : i16
        %302 = arith.maxsi %c510109333_i64, %c510109333_i64 : i64
        %303 = index.castu %105 : index to i32
        %304 = math.ceil %6 : tensor<14x16xf32>
        %305 = arith.maxf %cst_0, %cst_1 : f16
        %306 = index.floordivs %c12, %c15
        %307 = arith.minsi %c-26098_i16, %69 : i16
        %308 = arith.ceildivsi %c-11464_i16, %c-11464_i16 : i16
        %309 = math.round %6 : tensor<14x16xf32>
        %310 = vector.broadcast %c559758251_i32 : i32 to vector<14xi32>
        %311 = vector.maskedload %alloc_7[%c0], %73, %310 : memref<2xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        scf.yield %c1005867067_i64 : i64
      }
      %264 = arith.maxsi %c559758251_i32, %47 : i32
      %265 = math.expm1 %0 : tensor<2xf16>
      %266 = vector.bitcast %72 : vector<14xi16> to vector<14xi16>
      %267 = bufferization.to_memref %5 : memref<14x16xi16>
      %268 = arith.subi %c1005867067_i64, %c0_i64 : i64
      %collapsed_26 = tensor.collapse_shape %67 [[0, 1]] : tensor<14x14xi16> into tensor<196xi16>
      %269 = memref.atomic_rmw assign %47, %alloc_9[%c7, %c12, %c9] : (i32, memref<16x16x16xi32>) -> i32
      %270 = arith.addi %c559758251_i32, %47 : i32
      %271 = tensor.empty() : tensor<16x16xi64>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271 : tensor<16x16xi64>) outs(%12 : tensor<16x16x16xi64>) {
      ^bb0(%in: i64, %out: i64):
        %295 = math.rsqrt %cst_0 : f16
        %296 = arith.addi %69, %c2583_i16 : i16
        %297 = vector.broadcast %54 : f32 to vector<2xf32>
        %298 = vector.broadcast %false : i1 to vector<2xi1>
        %299 = vector.maskedload %alloc_12[%c15, %c13, %c15], %298, %297 : memref<16x16x16xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %300 = arith.maxui %c1005867067_i64, %c0_i64 : i64
        %301 = affine.min affine_map<(d0, d1) -> ((d1 - d0 + 8) ceildiv 64, d1 - d0 - d1 + d1 mod 2, d1 mod 2 - 128, (d1 - d0 + 8) ceildiv 64)>(%c7, %c5)
        %302 = vector.broadcast %in : i64 to vector<i64>
        %303 = vector.transfer_write %302, %3[%301] : vector<i64>, tensor<2xi64>
        %304 = math.exp %15 : tensor<14x16xf32>
        %305 = math.ceil %2 : tensor<16x16x16xf32>
        %306 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%261, %100, %261, %41)
        %307 = arith.minui %c0_i64, %c510109333_i64 : i64
        %308 = arith.ceildivsi %47, %c559758251_i32 : i32
        %309 = math.atan %6 : tensor<14x16xf32>
        %310 = math.exp2 %0 : tensor<2xf16>
        %311 = vector.extract_strided_slice %43 {offsets = [7], sizes = [5], strides = [1]} : vector<16xf32> to vector<5xf32>
        %312 = vector.extract_strided_slice %20 {offsets = [13], sizes = [3], strides = [1]} : vector<16xi16> to vector<3xi16>
        %313 = math.floor %54 : f32
        %314 = arith.remf %cst_3, %cst_1 : f16
        %315 = arith.subi %c1005867067_i64, %c1005867067_i64 : i64
        %316 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, d2 mod 4, (d2 mod 4 + d0 ceildiv 8) floordiv 4)>(%c15, %c3, %c8, %c4)
        %317 = vector.flat_transpose %45 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
        %318 = math.exp2 %cst_0 : f16
        %319 = math.copysign %cst_3, %cst_0 : f16
        %320 = affine.max affine_map<(d0, d1, d2) -> (d0 + 8, d2)>(%c2, %c10, %88)
        %cast_27 = tensor.cast %transposed : tensor<16x14xi16> to tensor<?x?xi16>
        %321 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4 - (d2 + d1) + d2 + d1)>(%105, %c6, %c7, %c7)
        %322 = math.log1p %2 : tensor<16x16x16xf32>
        %323 = arith.remf %54, %cst_4 : f32
        %324 = index.add %c6, %c6
        %325 = index.add %28, %88
        %326 = bufferization.to_memref %10 : memref<14x16xi32>
        %327 = math.atan %15 : tensor<14x16xf32>
        %328 = math.floor %2 : tensor<16x16x16xf32>
        linalg.yield %out : i64
      } -> tensor<16x16x16xi64>
      %273 = arith.addf %cst_0, %cst : f16
      %274 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%118, %46)
      %275 = vector.broadcast %c2583_i16 : i16 to vector<14x14xi16>
      %276 = vector.outerproduct %266, %72, %275 {kind = #vector.kind<add>} : vector<14xi16>, vector<14xi16>
      %277 = vector.multi_reduction <maxsi>, %82, %73 [1] : vector<14x16xi1> to vector<14xi1>
      %278 = affine.for %arg2 = 0 to 80 iter_args(%arg3 = %93) -> (index) {
        affine.yield %c13 : index
      }
      %279 = vector.broadcast %c11 : index to vector<11xindex>
      %280 = vector.broadcast %false : i1 to vector<11xi1>
      %281 = vector.broadcast %c510109333_i64 : i64 to vector<11xi64>
      vector.scatter %alloc_17[%c0] [%279], %280, %281 : memref<2xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
      %282 = arith.remf %cst_1, %cst_3 : f16
      %283 = math.floor %15 : tensor<14x16xf32>
      %284 = scf.while (%arg2 = %47) : (i32) -> i32 {
        %295 = bufferization.to_memref %15 : memref<14x16xf32>
        %296 = arith.divui %c-26098_i16, %69 : i16
        %297 = math.log2 %0 : tensor<2xf16>
        %298 = arith.remf %54, %54 : f32
        %cast_27 = tensor.cast %1 : tensor<14x16xi32> to tensor<?x?xi32>
        %299 = math.floor %15 : tensor<14x16xf32>
        %300 = arith.addi %c1005867067_i64, %c0_i64 : i64
        %301 = arith.divui %69, %c-11464_i16 : i16
        scf.condition(%true) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %295 = arith.remui %c1005867067_i64, %c292723955_i64 : i64
        %296 = affine.apply affine_map<(d0) -> (d0)>(%46)
        %297 = math.ceil %cst_2 : f16
        %298 = arith.subi %c-26098_i16, %69 : i16
        %299 = arith.addi %false, %false : i1
        %300 = bufferization.clone %alloc_12 : memref<16x16x16xf32> to memref<16x16x16xf32>
        %301 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d1 - (d1 - 64) + 16), d2)>(%c2, %100, %c11, %c10)
        %302 = arith.subi %c0_i64, %c510109333_i64 : i64
        %303 = math.cttz %47 : i32
        %304 = vector.transpose %20, [0] : vector<16xi16> to vector<16xi16>
        memref.assume_alignment %267, 2 : memref<14x16xi16>
        memref.assume_alignment %alloc_7, 16 : memref<2xi32>
        %305 = arith.subi %arg2, %arg2 : i32
        %306 = math.exp %cst_4 : f32
        %307 = index.divu %c7, %105
        %308 = math.tanh %15 : tensor<14x16xf32>
        scf.yield %arg2 : i32
      }
      %285 = index.ceildivs %118, %c1
      %286 = affine.min affine_map<(d0) -> (d0 + 33, 0, (d0 + 32) * 8)>(%c10)
      %287 = index.divu %83, %c11
      %288 = math.tanh %2 : tensor<16x16x16xf32>
      %289 = index.casts %286 : index to i32
      memref.copy %106, %alloc_17 : memref<2xi64> to memref<2xi64>
      %290 = vector.splat %69 : vector<16x16x16xi16>
      %291 = math.log10 %54 : f32
      %292 = math.expm1 %15 : tensor<14x16xf32>
      %293 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%83, %c9)
      %294 = affine.for %arg2 = 0 to 52 iter_args(%arg3 = %c2583_i16) -> (i16) {
        affine.yield %69 : i16
      }
      memref.alloca_scope.return %c-22596_i16 : i16
    }
    memref.assume_alignment %alloc_15, 2 : memref<14x16xi16>
    %123 = arith.maxf %cst_4, %cst_4 : f32
    %124 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, (d2 ceildiv 128) floordiv 32 + d1 - 16 >= 0, -d3 >= 0)>(%c6, %c7, %c10, %c4) -> memref<16x16x16xi32> {
      %261 = arith.subi %c-22596_i16, %c2583_i16 : i16
      %262 = scf.while (%arg2 = %alloc_13) : (memref<2x16xf32>) -> memref<2x16xf32> {
        %268 = memref.atomic_rmw ori %69, %alloc_20[] : (i16, memref<i16>) -> i16
        %269 = math.cos %cst_3 : f16
        %270 = math.rsqrt %cst_3 : f16
        %extracted_27 = tensor.extract %3[%c0] : tensor<2xi64>
        %271 = math.log %cst_3 : f16
        %272 = vector.broadcast %c559758251_i32 : i32 to vector<14xi32>
        %273 = vector.maskedload %alloc_18[%c0], %73, %272 : memref<2xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %274 = index.sizeof
        %275 = math.ceil %cst_1 : f16
        scf.condition(%true) %alloc_13 : memref<2x16xf32>
      } do {
      ^bb0(%arg2: memref<2x16xf32>):
        %268 = index.casts %33 : index to i32
        %269 = arith.cmpi ugt, %true, %false : i1
        %270 = math.cos %54 : f32
        %271 = vector.broadcast %54 : f32 to vector<f32>
        vector.transfer_write %271, %alloc[%93] : vector<f32>, memref<2xf32>
        %272 = index.ceildivs %c7, %c14
        %273 = arith.negf %cst : f16
        %274 = arith.xori %true, %false : i1
        %275 = vector.extract_strided_slice %74 {offsets = [6], sizes = [6], strides = [1]} : vector<14xi16> to vector<6xi16>
        %collapsed_27 = tensor.collapse_shape %18 [[0, 1]] : tensor<16x14xi16> into tensor<224xi16>
        %276 = index.sizeof
        %277 = math.absf %2 : tensor<16x16x16xf32>
        %278 = affine.load %alloc_20[] : memref<i16>
        %279 = math.log2 %0 : tensor<2xf16>
        %inserted_28 = tensor.insert %122 into %5[%c13, %c15] : tensor<14x16xi16>
        %280 = index.ceildivu %87, %95
        %281 = arith.addi %69, %c-11464_i16 : i16
        scf.yield %alloc_13 : memref<2x16xf32>
      }
      %263 = math.fma %cst_1, %cst_0, %cst_0 : f16
      %cast_26 = tensor.cast %collapsed : tensor<224xi16> to tensor<?xi16>
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4 - (d2 + d1) + d2 + d1)>(%87, %c1, %c15, %41)
      %265 = arith.ori %c-26098_i16, %c-22596_i16 : i16
      %266 = index.maxu %105, %33
      %267 = math.sqrt %cst_4 : f32
      affine.yield %alloc_9 : memref<16x16x16xi32>
    } else {
      %261 = vector.create_mask %95, %c14 : vector<14x16xi1>
      %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4 - (d2 + d1) + d2 + d1)>(%c13, %46, %c9, %c1)
      %263 = vector.splat %c13 : vector<2xindex>
      %264 = math.ceil %2 : tensor<16x16x16xf32>
      %265 = arith.maxf %cst_0, %cst_2 : f16
      %266 = arith.addi %122, %c-26098_i16 : i16
      %267 = math.ipowi %8, %8 : tensor<16x16x16xi32>
      %268 = math.round %2 : tensor<16x16x16xf32>
      affine.yield %alloc_9 : memref<16x16x16xi32>
    }
    %125 = math.round %6 : tensor<14x16xf32>
    %126 = arith.cmpi sgt, %c0_i64, %c510109333_i64 : i64
    %127 = arith.ori %c510109333_i64, %c510109333_i64 : i64
    %128 = index.casts %c5 : index to i32
    %129 = affine.load %alloc_6[%c0, %c9, %c11] : memref<16x16x16xf32>
    %130 = math.exp %15 : tensor<14x16xf32>
    %131 = arith.muli %true, %true : i1
    %inserted_21 = tensor.insert %47 into %13[%c8, %c2] : tensor<14x16xi32>
    bufferization.dealloc_tensor %1 : tensor<14x16xi32>
    %132 = index.divs %c8, %c8
    %133 = bufferization.to_memref %5 : memref<14x16xi16>
    %134 = arith.ori %122, %c-26098_i16 : i16
    affine.store %c1005867067_i64, %alloc_17[%c0] : memref<2xi64>
    %from_elements = tensor.from_elements %129, %cst_4 : tensor<2xf32>
    %135 = arith.ceildivsi %69, %69 : i16
    %136 = affine.load %alloc_15[%c7, %c5] : memref<14x16xi16>
    %137 = affine.load %alloc_6[%c8, %c6, %c14] : memref<16x16x16xf32>
    %138 = scf.while (%arg2 = %20) : (vector<16xi16>) -> vector<16xi16> {
      %261 = math.log10 %2 : tensor<16x16x16xf32>
      %262 = affine.load %133[%c4, %c7] : memref<14x16xi16>
      %263 = math.tan %2 : tensor<16x16x16xf32>
      %264 = arith.addi %c510109333_i64, %c510109333_i64 : i64
      %265 = math.atan2 %0, %0 : tensor<2xf16>
      %266 = math.round %15 : tensor<14x16xf32>
      affine.store %47, %alloc_11[%c5] : memref<2xi32>
      %267 = math.sqrt %cst_4 : f32
      scf.condition(%true) %20 : vector<16xi16>
    } do {
    ^bb0(%arg2: vector<16xi16>):
      %261 = math.roundeven %2 : tensor<16x16x16xf32>
      %262 = vector.broadcast %cst_3 : f16 to vector<2x16xf16>
      %263 = arith.minsi %136, %c-22596_i16 : i16
      %264 = bufferization.to_memref %21 : memref<2xi32>
      %c0_i64_26 = arith.constant 0 : i64
      %265 = vector.transfer_read %106[%87], %c0_i64_26 : memref<2xi64>, vector<i64>
      %266 = arith.addf %cst_2, %cst_0 : f16
      %267 = vector.broadcast %78 : index to vector<11xindex>
      %268 = vector.broadcast %false : i1 to vector<11xi1>
      %269 = vector.broadcast %129 : f32 to vector<11xf32>
      vector.scatter %alloc_8[%c3, %c9, %c3] [%267], %268, %269 : memref<16x16x16xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
      %270 = vector.broadcast %41 : index to vector<11xindex>
      %271 = vector.broadcast %true : i1 to vector<11xi1>
      %272 = vector.broadcast %c0_i64_26 : i64 to vector<11xi64>
      vector.scatter %106[%c1] [%270], %271, %272 : memref<2xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
      %273 = math.ceil %15 : tensor<14x16xf32>
      %274 = arith.muli %c510109333_i64, %c0_i64_26 : i64
      %275 = math.exp %cst_4 : f32
      %276 = math.atan %from_elements : tensor<2xf32>
      %277 = math.expm1 %cst_0 : f16
      %278 = scf.while (%arg3 = %43) : (vector<16xf32>) -> vector<16xf32> {
        %281 = index.casts %c1 : index to i32
        %282 = arith.shli %true, %false : i1
        %283 = math.round %from_elements : tensor<2xf32>
        %from_elements_28 = tensor.from_elements %true, %true, %true, %false, %true, %true, %true, %false, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %true, %true, %true, %false, %false, %false, %true, %false, %true, %false, %true, %true, %false, %false, %false, %false, %false, %true, %true, %false, %false, %false, %false, %false, %true, %false, %true, %false, %false, %true, %true, %true, %true, %true, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true, %false, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %true, %false, %false, %false, %true, %false, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %false, %false, %false, %true, %true, %false, %true, %false, %false, %true, %true, %false, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %false, %false, %false, %false, %true, %true, %false, %true, %false, %true, %true, %true, %false, %true, %false, %false, %false, %false, %true, %true, %false, %false, %false, %false, %true, %false, %false, %false, %true, %true, %true, %true, %false, %true, %false, %false, %false, %false, %true, %true, %false, %true, %true, %true, %true, %true, %true, %false, %false, %true, %false, %false, %false, %false, %false, %false, %true, %false, %true, %true, %true, %true, %false, %false, %false, %false, %true, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true : tensor<14x16xi1>
        %284 = arith.subi %136, %69 : i16
        %285 = vector.load %31[%c8, %c7] : memref<14x16xf32>, vector<2xf32>
        %286 = vector.broadcast %c559758251_i32 : i32 to vector<16xi32>
        %287 = vector.maskedload %alloc_11[%c1], %44, %286 : memref<2xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %288 = affine.load %alloc_6[%c8, %c14, %c11] : memref<16x16x16xf32>
        scf.condition(%false) %45 : vector<16xf32>
      } do {
      ^bb0(%arg3: vector<16xf32>):
        %281 = math.round %from_elements : tensor<2xf32>
        %282 = math.tanh %15 : tensor<14x16xf32>
        %283 = index.divu %c11, %c13
        %284 = bufferization.to_memref %14 : memref<2x16xi32>
        %285 = index.floordivs %c6, %41
        %286 = math.round %6 : tensor<14x16xf32>
        %287 = math.copysign %54, %54 : f32
        %288 = affine.min affine_map<(d0, d1, d2) -> (d1 - 4, d1 - 4, d2 * 8, d0 ceildiv 64)>(%c4, %c9, %c7)
        %289 = arith.shli %false, %false : i1
        %290 = arith.mulf %cst_1, %cst : f16
        affine.store %47, %alloc_9[%c6, %c14, %c5] : memref<16x16x16xi32>
        %291 = math.round %0 : tensor<2xf16>
        memref.copy %alloc_19, %alloc_7 : memref<2xi32> to memref<2xi32>
        memref.copy %133, %alloc_15 : memref<14x16xi16> to memref<14x16xi16>
        %292 = index.casts %88 : index to i32
        %293 = math.round %from_elements : tensor<2xf32>
        scf.yield %45 : vector<16xf32>
      }
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_27 = arith.constant 0 : i32
      %279 = vector.transfer_read %14[%33, %c11], %c0_i32_27 : tensor<2x16xi32>, vector<i32>
      %280 = math.round %129 : f32
      scf.yield %20 : vector<16xi16>
    }
    memref.tensor_store %from_elements, %alloc : memref<2xf32>
    %139 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%c5, %132, %118, %95)
    %140 = arith.ori %c-22596_i16, %69 : i16
    %141 = math.floor %2 : tensor<16x16x16xf32>
    %142 = arith.ori %c1005867067_i64, %c0_i64 : i64
    %143 = arith.addi %c-22596_i16, %122 : i16
    %144 = arith.shli %c1005867067_i64, %c0_i64 : i64
    %145 = memref.atomic_rmw assign %129, %alloc_6[%c11, %c4, %c0] : (f32, memref<16x16x16xf32>) -> f32
    %146 = arith.floordivsi %c292723955_i64, %c292723955_i64 : i64
    %147 = index.sizeof
    %148 = affine.for %arg2 = 0 to 56 iter_args(%arg3 = %15) -> (tensor<14x16xf32>) {
      affine.yield %arg3 : tensor<14x16xf32>
    }
    %149 = arith.negf %cst_1 : f16
    %150 = vector.multi_reduction <mul>, %20, %20 [] : vector<16xi16> to vector<16xi16>
    %151 = arith.shrsi %c-22596_i16, %136 : i16
    %152 = vector.transpose %73, [0] : vector<14xi1> to vector<14xi1>
    %153 = math.exp %15 : tensor<14x16xf32>
    affine.store %c0_i64, %alloc_17[%c0] : memref<2xi64>
    %154 = vector.extract %44[1] : vector<16xi1>
    %155 = math.cttz %c-22596_i16 : i16
    %156 = vector.insert %122, %72 [7] : i16 into vector<14xi16>
    %157 = vector.insertelement %c-26098_i16, %72[%105 : index] : vector<14xi16>
    %158 = vector.splat %c-22596_i16 : vector<2x16xi16>
    %159 = math.cos %0 : tensor<2xf16>
    %160 = math.sqrt %cst_3 : f16
    %161 = scf.while (%arg2 = %cst_3) : (f16) -> f16 {
      %261 = arith.addf %129, %129 : f32
      %262 = arith.shli %47, %c559758251_i32 : i32
      %263 = math.sqrt %arg2 : f16
      %264 = affine.min affine_map<(d0, d1) -> (d1 * -4 + d0 - d1, d1 * -4 + d0 - d1, d1 * 4)>(%100, %c0)
      %265 = scf.while (%arg3 = %54) : (f32) -> f32 {
        %270 = math.round %6 : tensor<14x16xf32>
        %271 = vector.extract %82[6] : vector<14x16xi1>
        %272 = index.castu %false : i1 to index
        %rank = tensor.rank %6 : tensor<14x16xf32>
        %273 = arith.muli %true, %false : i1
        %274 = index.ceildivs %93, %c7
        %275 = math.rsqrt %129 : f32
        %276 = index.divu %c15, %139
        scf.condition(%false) %129 : f32
      } do {
      ^bb0(%arg3: f32):
        %270 = math.tanh %cst_4 : f32
        %271 = math.copysign %0, %0 : tensor<2xf16>
        vector.print %74 : vector<14xi16>
        %272 = arith.subi %69, %69 : i16
        %alloc_26 = memref.alloc() : memref<16x16x16xi64>
        memref.tensor_store %12, %alloc_26 : memref<16x16x16xi64>
        %273 = arith.ori %c-22596_i16, %c2583_i16 : i16
        %274 = math.round %0 : tensor<2xf16>
        %275 = math.cttz %5 : tensor<14x16xi16>
        %276 = arith.remf %arg3, %arg3 : f32
        %277 = index.casts %c559758251_i32 : i32 to index
        %278 = arith.cmpi uge, %true, %true : i1
        %279 = math.log2 %129 : f32
        %extracted_27 = tensor.extract %22[] : tensor<i32>
        %280 = index.ceildivs %c14, %264
        %281 = vector.create_mask %280, %277 : vector<14x16xi1>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %282 = vector.transfer_read %1[%105, %95], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<14x16xi32>, vector<14xi32>
        scf.yield %129 : f32
      }
      %266 = vector.broadcast %c2 : index to vector<11xindex>
      %267 = vector.broadcast %true : i1 to vector<11xi1>
      %268 = vector.broadcast %c-11464_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_20[] [%266], %267, %268 : memref<i16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %269 = affine.load %alloc_14[%c0, %c15] : memref<14x16xf16>
      %dest, %accumulated_value = vector.scan <mul>, %82, %44 {inclusive = false, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
      scf.condition(%true) %arg2 : f16
    } do {
    ^bb0(%arg2: f16):
      %261 = vector.insert %false, %44 [12] : i1 into vector<16xi1>
      %262 = math.ceil %54 : f32
      %263 = scf.while (%arg3 = %cst_4) : (f32) -> f32 {
        %275 = math.round %cst_1 : f16
        %276 = vector.insertelement %false, %44[%83 : index] : vector<16xi1>
        %277 = bufferization.to_tensor %alloc_20 : memref<i16>
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 + 1) mod 64 + 16)>(%c7, %c3, %147, %41)
        %279 = arith.cmpi ne, %c292723955_i64, %c510109333_i64 : i64
        %280 = math.log2 %2 : tensor<16x16x16xf32>
        %281 = arith.negf %cst_3 : f16
        %282 = vector.shuffle %43, %43 [0, 5, 6, 7, 11, 15, 20, 21, 22, 23, 27, 29, 30, 31] : vector<16xf32>, vector<16xf32>
        scf.condition(%false) %137 : f32
      } do {
      ^bb0(%arg3: f32):
        %275 = vector.splat %129 : vector<16x16x16xf32>
        %276 = arith.muli %c2583_i16, %c-26098_i16 : i16
        %277 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4 - (d2 + d1) + d2 + d1)>(%132, %c7, %95, %147)
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d3)>(%c0, %c11, %c14, %c11)
        %279 = affine.apply affine_map<(d0) -> (d0)>(%c12)
        %280 = vector.extract %74[3] : vector<14xi16>
        %281 = bufferization.to_tensor %alloc_16 : memref<2xi16>
        %282 = bufferization.clone %alloc_5 : memref<2x16xi16> to memref<2x16xi16>
        %283 = math.ceil %cst_2 : f16
        %284 = arith.ori %69, %69 : i16
        %285 = vector.broadcast %41 : index to vector<16xindex>
        %286 = vector.broadcast %cst_1 : f16 to vector<16xf16>
        vector.scatter %alloc_14[%c3, %c4] [%285], %44, %286 : memref<14x16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %287 = vector.broadcast %c1005867067_i64 : i64 to vector<14x14xi64>
        %288 = vector.transfer_write %287, %7[%46, %c14, %279] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x14xi64>, tensor<16x16x16xi64>
        %289 = arith.divui %c559758251_i32, %47 : i32
        %290 = memref.atomic_rmw maxu %c-26098_i16, %alloc_5[%c1, %c13] : (i16, memref<2x16xi16>) -> i16
        %291 = math.cos %0 : tensor<2xf16>
        %292 = math.log %137 : f32
        scf.yield %cst_4 : f32
      }
      %264 = scf.if %true -> (i32) {
        %275 = arith.ori %122, %c2583_i16 : i16
        %276 = math.floor %cst_0 : f16
        %277 = arith.ori %c0_i64, %c292723955_i64 : i64
        %278 = math.log10 %from_elements : tensor<2xf32>
        %279 = math.expm1 %15 : tensor<14x16xf32>
        %280 = arith.maxf %cst_3, %cst_0 : f16
        %281 = memref.realloc %106 : memref<2xi64> to memref<14xi64>
        %alloca_27 = memref.alloca() : memref<14x16xf16>
        scf.yield %c559758251_i32 : i32
      } else {
        %275 = arith.maxsi %c-11464_i16, %136 : i16
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + d2 * 64) * 2 + 32)>(%139, %c1, %95, %c11)
        %277 = vector.create_mask %c14 : vector<2xi1>
        %278 = index.castu %c510109333_i64 : i64 to index
        %279 = math.rsqrt %arg2 : f16
        %280 = index.sizeof
        %281 = math.absf %137 : f32
        %282 = math.copysign %cst, %cst : f16
        scf.yield %c559758251_i32 : i32
      }
      %265 = math.exp %cst : f16
      %266 = affine.load %alloc_19[%c11] : memref<2xi32>
      %267 = math.ceil %cst_1 : f16
      %268 = math.rsqrt %54 : f32
      %269 = math.absf %cst : f16
      %270 = math.ceil %6 : tensor<14x16xf32>
      scf.index_switch %105 
      case 1 {
        %275 = index.sub %87, %c4
        %276 = math.log2 %15 : tensor<14x16xf32>
        %277 = arith.maxui %69, %122 : i16
        %278 = memref.atomic_rmw mins %264, %alloc_9[%c15, %c0, %c11] : (i32, memref<16x16x16xi32>) -> i32
        %279 = index.divu %100, %100
        %280 = vector.bitcast %74 : vector<14xi16> to vector<14xf16>
        %281 = vector.create_mask %147 : vector<2xi1>
        %282 = math.absf %15 : tensor<14x16xf32>
        %283 = math.ipowi %5, %4 : tensor<14x16xi16>
        memref.assume_alignment %alloc_5, 2 : memref<2x16xi16>
        %284 = math.powf %cst, %cst_0 : f16
        %285 = math.ipowi %7, %12 : tensor<16x16x16xi64>
        %286 = arith.ceildivsi %true, %true : i1
        %287 = math.log10 %6 : tensor<14x16xf32>
        affine.store %cst_1, %alloc_10[%c5, %c7] : memref<2x16xf16>
        %288 = math.ceil %0 : tensor<2xf16>
        scf.yield
      }
      case 2 {
        %275 = index.casts %132 : index to i32
        %rank = tensor.rank %16 : tensor<16x16x16xi64>
        %276 = math.exp2 %6 : tensor<14x16xf32>
        %277 = arith.shrsi %c292723955_i64, %c0_i64 : i64
        %278 = index.sizeof
        %279 = affine.apply affine_map<(d0, d1, d2) -> (d2 - d1 + 1)>(%46, %c10, %c12)
        %280 = math.atan2 %15, %15 : tensor<14x16xf32>
        %281 = vector.load %106[%c0] : memref<2xi64>, vector<14x16xi64>
        %282 = vector.matrix_multiply %20, %74 {lhs_columns = 2 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<16xi16>, vector<14xi16>) -> vector<56xi16>
        %283 = index.floordivs %279, %rank
        %284 = arith.xori %266, %266 : i32
        %cst_27 = arith.constant 1.000000e+00 : f32
        %285 = vector.transfer_read %alloc[%132], %cst_27 : memref<2xf32>, vector<f32>
        %286 = math.exp %15 : tensor<14x16xf32>
        %inserted_28 = tensor.insert %c2583_i16 into %67[%c4, %c6] : tensor<14x14xi16>
        %287 = vector.extract %282[35] : vector<56xi16>
        %288 = math.cttz %23 : tensor<i32>
        scf.yield
      }
      default {
        %275 = index.casts %c-11464_i16 : i16 to index
        %276 = index.divu %c3, %46
        %277 = index.floordivs %46, %c1
        %278 = arith.andi %c-26098_i16, %c-11464_i16 : i16
        %279 = math.roundeven %54 : f32
        %280 = arith.ori %266, %47 : i32
        %281 = index.add %277, %33
        %282 = math.atan2 %2, %2 : tensor<16x16x16xf32>
        %283 = vector.broadcast %cst_2 : f16 to vector<f16>
        %284 = vector.transfer_write %283, %0[%281] : vector<f16>, tensor<2xf16>
        %285 = math.cos %6 : tensor<14x16xf32>
        %286 = memref.atomic_rmw assign %arg2, %alloc_14[%c11, %c5] : (f16, memref<14x16xf16>) -> f16
        %287 = math.cos %129 : f32
        %288 = math.absf %6 : tensor<14x16xf32>
        %289 = arith.maxui %false, %true : i1
        %290 = index.add %c5, %41
        %291 = math.expm1 %cst_3 : f16
      }
      %271 = math.exp %cst_4 : f32
      %from_elements_26 = tensor.from_elements %true, %false : tensor<2xi1>
      %272 = arith.maxf %cst_1, %cst_3 : f16
      %273 = vector.multi_reduction <minsi>, %73, %false [0] : vector<14xi1> to i1
      %274 = vector.broadcast %95 : index to vector<16xindex>
      vector.scatter %alloc_6[%c3, %c3, %c2] [%274], %44, %43 : memref<16x16x16xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      scf.yield %cst_1 : f16
    }
    %162 = math.exp2 %cst : f16
    %163 = arith.shli %136, %69 : i16
    %164 = affine.load %alloc_13[%c1, %c5] : memref<2x16xf32>
    %165 = index.mul %c13, %c11
    %166 = memref.atomic_rmw addf %164, %alloc_6[%c14, %c10, %c1] : (f32, memref<16x16x16xf32>) -> f32
    %167 = arith.negf %164 : f32
    %168 = math.expm1 %cst_2 : f16
    %cast_22 = tensor.cast %12 : tensor<16x16x16xi64> to tensor<?x?x?xi64>
    %169 = math.ceil %0 : tensor<2xf16>
    %170 = arith.remui %69, %c-11464_i16 : i16
    %171 = arith.shli %c510109333_i64, %c0_i64 : i64
    %172 = affine.if affine_set<(d0, d1) : (d0 * 4 >= 0)>(%c3, %c8) -> i64 {
      %alloc_26 = memref.alloc() : memref<16x16x16xi64>
      memref.tensor_store %9, %alloc_26 : memref<16x16x16xi64>
      affine.store %cst_0, %alloc_10[%c12, %c2] : memref<2x16xf16>
      %261 = math.round %129 : f32
      %262 = math.cos %2 : tensor<16x16x16xf32>
      %263 = affine.load %alloc_16[%c4] : memref<2xi16>
      %264 = math.round %cst : f16
      %265 = scf.while (%arg2 = %20) : (vector<16xi16>) -> vector<16xi16> {
        %267 = arith.ceildivsi %263, %c-26098_i16 : i16
        %268 = arith.subi %69, %c-11464_i16 : i16
        %269 = vector.broadcast %c559758251_i32 : i32 to vector<14xi32>
        %270 = vector.maskedload %alloc_11[%c1], %73, %269 : memref<2xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %271 = vector.insertelement %false, %73[%c12 : index] : vector<14xi1>
        %272 = math.rsqrt %15 : tensor<14x16xf32>
        %273 = arith.shli %c292723955_i64, %c292723955_i64 : i64
        %274 = arith.negf %cst : f16
        %275 = math.log1p %164 : f32
        scf.condition(%true) %20 : vector<16xi16>
      } do {
      ^bb0(%arg2: vector<16xi16>):
        %267 = arith.remf %cst_0, %cst_3 : f16
        %268 = vector.broadcast %118 : index to vector<2xindex>
        %269 = vector.broadcast %true : i1 to vector<2xi1>
        %270 = vector.broadcast %c559758251_i32 : i32 to vector<2xi32>
        vector.scatter %alloc_7[%c1] [%268], %269, %270 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %271 = math.atan2 %15, %6 : tensor<14x16xf32>
        %272 = index.mul %c12, %c2
        %273 = index.add %c8, %147
        %274 = math.roundeven %164 : f32
        %275 = vector.transpose %82, [1, 0] : vector<14x16xi1> to vector<16x14xi1>
        %cast_27 = tensor.cast %4 : tensor<14x16xi16> to tensor<?x?xi16>
        %alloc_28 = memref.alloc() : memref<16x14xi32>
        %276 = tensor.empty() : tensor<14x14xi32>
        %277 = linalg.matmul ins(%13, %alloc_28 : tensor<14x16xi32>, memref<16x14xi32>) outs(%276 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %278 = math.tan %0 : tensor<2xf16>
        %279 = index.sizeof
        %280 = vector.broadcast %c559758251_i32 : i32 to vector<14x11xi32>
        %281 = vector.transfer_write %280, %8[%c14, %273, %83] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x11xi32>, tensor<16x16x16xi32>
        %282 = arith.subi %c0_i64, %c0_i64 : i64
        %283 = arith.maxf %54, %129 : f32
        %true_29 = index.bool.constant true
        %284 = arith.minsi %136, %122 : i16
        scf.yield %20 : vector<16xi16>
      }
      %266 = vector.extract_strided_slice %43 {offsets = [6], sizes = [2], strides = [1]} : vector<16xf32> to vector<2xf32>
      affine.yield %c0_i64 : i64
    } else {
      %261 = bufferization.to_tensor %alloc_17 : memref<2xi64>
      %262 = arith.subi %c2583_i16, %122 : i16
      %263 = index.add %c10, %132
      %264 = arith.addf %129, %54 : f32
      %265 = math.ipowi %69, %69 : i16
      %alloc_26 = memref.alloc() : memref<2x16xi16>
      memref.copy %alloc_5, %alloc_26 : memref<2x16xi16> to memref<2x16xi16>
      %266 = math.ceil %0 : tensor<2xf16>
      %267 = arith.xori %c1005867067_i64, %c0_i64 : i64
      affine.yield %c0_i64 : i64
    }
    %173 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %7 : tensor<16x16x16xi64>, tensor<16x16x16xi64>) outs(%9 : tensor<16x16x16xi64>) {
    ^bb0(%in: i64, %in_26: i64, %out: i64):
      %261 = math.fma %cst_0, %cst_3, %cst_3 : f16
      %262 = vector.broadcast %164 : f32 to vector<f32>
      vector.transfer_write %262, %alloc_6[%c7, %105, %c9] : vector<f32>, memref<16x16x16xf32>
      %263 = math.cttz %c510109333_i64 : i64
      %alloc_27 = memref.alloc() : memref<14x16xf32>
      %264 = vector.broadcast %in_26 : i64 to vector<i64>
      vector.transfer_write %264, %alloc_17[%78] : vector<i64>, memref<2xi64>
      %265 = vector.broadcast %136 : i16 to vector<2xi16>
      %266 = vector.broadcast %false : i1 to vector<2xi1>
      %267 = vector.maskedload %alloc_5[%c1, %c4], %266, %265 : memref<2x16xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      vector.print %73 : vector<14xi1>
      %268 = arith.divui %c-22596_i16, %122 : i16
      %269 = math.exp2 %54 : f32
      %270 = math.sqrt %15 : tensor<14x16xf32>
      affine.for %arg2 = 0 to 92 {
      }
      %271 = memref.realloc %106 : memref<2xi64> to memref<2xi64>
      %272 = arith.negf %cst : f16
      %273 = vector.insertelement %false, %266[%28 : index] : vector<2xi1>
      memref.assume_alignment %106, 16 : memref<2xi64>
      %274 = math.exp %cst_0 : f16
      %275 = arith.addf %cst, %cst_0 : f16
      %276 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c7, %147, %95, %c1)
      %277 = arith.negf %cst_2 : f16
      scf.index_switch %95 
      case 1 {
        %287 = vector.broadcast %c10 : index to vector<14xindex>
        vector.scatter %alloc_16[%c1] [%287], %73, %72 : memref<2xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %288 = memref.realloc %alloc_17 : memref<2xi64> to memref<16xi64>
        %289 = index.sizeof
        %290 = index.casts %289 : index to i32
        %291 = math.absf %54 : f32
        %292 = math.cos %15 : tensor<14x16xf32>
        %293 = math.cos %2 : tensor<16x16x16xf32>
        %294 = vector.broadcast %c559758251_i32 : i32 to vector<i32>
        %295 = vector.transfer_write %294, %14[%c11, %87] : vector<i32>, tensor<2x16xi32>
        %dest_30, %accumulated_value_31 = vector.scan <add>, %82, %73 {inclusive = true, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
        %rank = tensor.rank %17 : tensor<16x16x16xi64>
        %296 = vector.broadcast %129 : f32 to vector<16x16x16xf32>
        %297 = vector.fma %296, %296, %296 : vector<16x16x16xf32>
        %298 = math.ceil %164 : f32
        %299 = math.ipowi %c-22596_i16, %122 : i16
        %300 = arith.ori %c-26098_i16, %c2583_i16 : i16
        %301 = index.add %88, %83
        %302 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%33, %33, %33, %c6)
        scf.yield
      }
      default {
        %287 = memref.realloc %alloc_19 : memref<2xi32> to memref<11xi32>
        %288 = index.add %c4, %c15
        %alloc_30 = memref.alloc() : memref<2xi16>
        memref.copy %alloc_16, %alloc_30 : memref<2xi16> to memref<2xi16>
        %289 = math.cttz %c559758251_i32 : i32
        %290 = math.expm1 %0 : tensor<2xf16>
        %291 = arith.addf %129, %137 : f32
        %292 = index.add %c7, %c1
        %c0_i16 = arith.constant 0 : i16
        %293 = vector.transfer_read %alloc_15[%87, %288], %c0_i16 : memref<14x16xi16>, vector<i16>
        %alloc_31 = memref.alloc() : memref<14x16xf32>
        memref.copy %31, %alloc_31 : memref<14x16xf32> to memref<14x16xf32>
        %294 = index.add %c11, %33
        %295 = arith.addi %true, %false : i1
        %296 = bufferization.to_tensor %alloc_6 : memref<16x16x16xf32>
        %297 = math.tanh %15 : tensor<14x16xf32>
        %298 = math.fma %0, %0, %0 : tensor<2xf16>
        memref.tensor_store %15, %31 : memref<14x16xf32>
        %299 = math.ceil %0 : tensor<2xf16>
      }
      %278 = arith.mulf %cst, %cst_0 : f16
      %279 = index.casts %276 : index to i32
      %alloc_28 = memref.alloc() : memref<2x16xi16>
      memref.copy %alloc_5, %alloc_28 : memref<2x16xi16> to memref<2x16xi16>
      %280 = math.round %129 : f32
      %281 = math.round %cst_1 : f16
      %282 = math.log2 %2 : tensor<16x16x16xf32>
      %dest, %accumulated_value = vector.scan <xor>, %82, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
      %alloc_29 = memref.alloc() : memref<16x16x16xi64>
      memref.tensor_store %7, %alloc_29 : memref<16x16x16xi64>
      %283 = vector.splat %c2 : vector<2xindex>
      %284 = math.round %2 : tensor<16x16x16xf32>
      %285 = math.atan2 %0, %0 : tensor<2xf16>
      %286 = index.sizeof
      linalg.yield %in_26 : i64
    } -> tensor<16x16x16xi64>
    memref.copy %alloc_17, %106 : memref<2xi64> to memref<2xi64>
    %174 = index.sizeof
    %175 = math.copysign %0, %0 : tensor<2xf16>
    %collapsed_23 = tensor.collapse_shape %5 [[0, 1]] : tensor<14x16xi16> into tensor<224xi16>
    %176 = vector.extract %20[9] : vector<16xi16>
    %177 = arith.muli %c-26098_i16, %c-26098_i16 : i16
    %178 = math.tanh %2 : tensor<16x16x16xf32>
    %179 = arith.cmpi sge, %false, %false : i1
    %180 = scf.while (%arg2 = %cst_1) : (f16) -> f16 {
      %261 = math.exp %15 : tensor<14x16xf32>
      %262 = index.floordivs %c0, %c6
      %263 = vector.broadcast %c-26098_i16 : i16 to vector<14x14xi16>
      %264 = vector.outerproduct %74, %74, %263 {kind = #vector.kind<and>} : vector<14xi16>, vector<14xi16>
      %265 = math.ipowi %21, %21 : tensor<2xi32>
      %266 = memref.load %alloc_7[%c1] : memref<2xi32>
      %267 = math.ceil %cst_2 : f16
      %268 = arith.ori %c510109333_i64, %c510109333_i64 : i64
      %269 = math.tanh %6 : tensor<14x16xf32>
      scf.condition(%false) %cst_0 : f16
    } do {
    ^bb0(%arg2: f16):
      %261 = math.round %15 : tensor<14x16xf32>
      %262 = index.sizeof
      %263 = arith.floordivsi %c559758251_i32, %c559758251_i32 : i32
      %264 = arith.remui %c2583_i16, %c-22596_i16 : i16
      %265 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 16 + 128)>(%93, %118)
      %266 = scf.while (%arg3 = %alloc_11) : (memref<2xi32>) -> memref<2xi32> {
        %276 = math.tanh %2 : tensor<16x16x16xf32>
        %277 = math.copysign %15, %15 : tensor<14x16xf32>
        %278 = index.maxu %c13, %46
        %279 = index.floordivs %c5, %c11
        %280 = vector.insert %129, %43 [1] : f32 into vector<16xf32>
        %281 = math.cos %15 : tensor<14x16xf32>
        %282 = arith.shli %true, %true : i1
        %cast_27 = tensor.cast %0 : tensor<2xf16> to tensor<?xf16>
        scf.condition(%false) %alloc_18 : memref<2xi32>
      } do {
      ^bb0(%arg3: memref<2xi32>):
        %alloc_27 = memref.alloc() : memref<16x11xi32>
        %276 = tensor.empty() : tensor<14x11xi32>
        %277 = linalg.matmul ins(%13, %alloc_27 : tensor<14x16xi32>, memref<16x11xi32>) outs(%276 : tensor<14x11xi32>) -> tensor<14x11xi32>
        %cast_28 = tensor.cast %15 : tensor<14x16xf32> to tensor<?x?xf32>
        %278 = arith.muli %122, %c-11464_i16 : i16
        %279 = math.log10 %2 : tensor<16x16x16xf32>
        %280 = math.exp2 %0 : tensor<2xf16>
        %alloc_29 = memref.alloc() : memref<2xi16>
        %281 = vector.insert %false, %73 [10] : i1 into vector<14xi1>
        %282 = arith.negf %cst_1 : f16
        %283 = arith.cmpi ule, %false, %true : i1
        %284 = math.round %2 : tensor<16x16x16xf32>
        %285 = index.casts %c0 : index to i32
        %286 = bufferization.to_memref %3 : memref<2xi64>
        %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - d3)>(%105, %c2, %c7, %c14)
        vector.print %72 : vector<14xi16>
        %288 = arith.subi %c510109333_i64, %c0_i64 : i64
        %289 = arith.addf %cst_0, %cst_1 : f16
        scf.yield %alloc_18 : memref<2xi32>
      }
      %267 = math.exp %6 : tensor<14x16xf32>
      %268 = affine.max affine_map<(d0) -> ((d0 mod 64) floordiv 128, -((-d0) floordiv 2), (-d0) floordiv 2, -d0)>(%33)
      %269 = affine.max affine_map<(d0, d1) -> ((d1 * -2) mod 8 + ((d1 * -2) mod 8) mod 16, ((d1 * -2) mod 8) ceildiv 128 + (d1 * -2) mod 8, (((d1 * -2) mod 8) ceildiv 128 + (d1 * -2) mod 8) * 64)>(%147, %c7)
      %270 = vector.insertelement %false, %44[%93 : index] : vector<16xi1>
      %271 = math.cttz %17 : tensor<16x16x16xi64>
      %272 = math.ceil %2 : tensor<16x16x16xf32>
      %273 = math.round %cst_0 : f16
      %274 = math.log1p %164 : f32
      %collapsed_26 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<16x16x16xi64> into tensor<256x16xi64>
      %275 = math.exp %cst_4 : f32
      scf.yield %cst : f16
    }
    %181 = arith.cmpi sge, %47, %c559758251_i32 : i32
    %182 = vector.create_mask %174 : vector<2xi1>
    %183 = math.roundeven %2 : tensor<16x16x16xf32>
    %184 = arith.muli %c-26098_i16, %136 : i16
    %185 = math.ipowi %14, %14 : tensor<2x16xi32>
    %186 = tensor.empty() : tensor<16x16x16xf32>
    %mapped = linalg.map ins(%alloc_6, %2, %2 : memref<16x16x16xf32>, tensor<16x16x16xf32>, tensor<16x16x16xf32>) outs(%186 : tensor<16x16x16xf32>)
      (%in: f32, %in_26: f32, %in_27: f32) {
        %261 = math.atan2 %186, %2 : tensor<16x16x16xf32>
        %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 2 + 64, d0 + d0 - 128)>(%87, %c0, %c12, %c1)
        %263 = arith.addi %c0_i64, %c510109333_i64 : i64
        %264 = vector.extract %43[2] : vector<16xf32>
        %265 = scf.while (%arg2 = %47) : (i32) -> i32 {
          %290 = vector.splat %c8 : vector<14x16xindex>
          %291 = math.expm1 %137 : f32
          %292 = vector.create_mask %c15, %174, %88 : vector<16x16x16xi1>
          %293 = index.maxu %100, %88
          %294 = vector.broadcast %c-22596_i16 : i16 to vector<14x14xi16>
          %295 = vector.outerproduct %72, %74, %294 {kind = #vector.kind<and>} : vector<14xi16>, vector<14xi16>
          %296 = math.exp2 %129 : f32
          memref.tensor_store %21, %alloc_7 : memref<2xi32>
          %297 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%c6, %c10, %93, %c1)
          scf.condition(%true) %c559758251_i32 : i32
        } do {
        ^bb0(%arg2: i32):
          %290 = arith.subi %false, %true : i1
          %dest, %accumulated_value = vector.scan <or>, %82, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
          %alloc_31 = memref.alloc() : memref<2xf32>
          %291 = arith.maxui %c-26098_i16, %122 : i16
          %292 = arith.addf %129, %in : f32
          %293 = vector.transpose %182, [0] : vector<2xi1> to vector<2xi1>
          %294 = arith.subi %arg2, %c559758251_i32 : i32
          %295 = vector.broadcast %132 : index to vector<16xindex>
          vector.scatter %alloc_16[%c0] [%295], %44, %20 : memref<2xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
          %296 = arith.addi %true, %true : i1
          %297 = index.sizeof
          %298 = arith.muli %c-22596_i16, %c2583_i16 : i16
          %299 = arith.cmpi ne, %47, %47 : i32
          %300 = index.floordivs %c5, %c2
          %301 = arith.remf %in_26, %164 : f32
          %302 = arith.remf %129, %cst_4 : f32
          %cast_32 = tensor.cast %7 : tensor<16x16x16xi64> to tensor<?x?x?xi64>
          scf.yield %c559758251_i32 : i32
        }
        %266 = arith.remf %cst_1, %cst_0 : f16
        %267 = math.cttz %47 : i32
        %268 = math.rsqrt %2 : tensor<16x16x16xf32>
        %269 = arith.addi %47, %47 : i32
        %270 = vector.multi_reduction <maxf>, %43, %43 [] : vector<16xf32> to vector<16xf32>
        %271 = affine.if affine_set<(d0, d1) : (d0 * 4 >= 0)>(%c1, %c11) -> memref<2x16xi64> {
          %290 = math.exp %54 : f32
          %291 = vector.insert %true, %44 [10] : i1 into vector<16xi1>
          %292 = index.ceildivu %c1, %83
          %293 = arith.ceildivsi %c-26098_i16, %c-11464_i16 : i16
          %294 = math.round %164 : f32
          %295 = vector.broadcast %47 : i32 to vector<11xi32>
          %296 = vector.broadcast %true : i1 to vector<11xi1>
          %297 = vector.maskedload %alloc_11[%c1], %296, %295 : memref<2xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
          %298 = arith.subi %c-22596_i16, %136 : i16
          %299 = math.round %cst : f16
          %alloc_31 = memref.alloc() : memref<2x16xi64>
          affine.yield %alloc_31 : memref<2x16xi64>
        } else {
          %290 = math.cttz %9 : tensor<16x16x16xi64>
          %291 = math.ceil %in_26 : f32
          %292 = index.floordivs %41, %c15
          %293 = vector.insertelement %122, %74[%87 : index] : vector<14xi16>
          %294 = arith.muli %47, %47 : i32
          %295 = arith.subi %c1005867067_i64, %c292723955_i64 : i64
          %296 = index.divs %41, %105
          %297 = affine.load %alloc_20[] : memref<i16>
          %alloc_31 = memref.alloc() : memref<2x16xi64>
          affine.yield %alloc_31 : memref<2x16xi64>
        }
        %272 = index.mul %262, %c3
        %273 = arith.subi %c1005867067_i64, %c1005867067_i64 : i64
        %274 = affine.load %alloc[%c15] : memref<2xf32>
        %275 = math.exp %15 : tensor<14x16xf32>
        %276 = affine.min affine_map<(d0, d1, d2) -> ((d0 - (d1 - ((d0 - 2) ceildiv 16 + d0 - 2))) * 64, (d0 - 2) * 4, (d0 - 2) ceildiv 16 + d0 - 2)>(%105, %c8, %c4)
        %277 = arith.ceildivsi %122, %c2583_i16 : i16
        %278 = index.ceildivs %93, %276
        %279 = arith.muli %c-11464_i16, %69 : i16
        %280 = vector.create_mask %93 : vector<2xi1>
        %281 = arith.ori %69, %c-26098_i16 : i16
        %282 = index.mul %88, %c4
        %283 = index.mul %93, %93
        scf.index_switch %28 
        case 1 {
          %290 = arith.remui %c292723955_i64, %c510109333_i64 : i64
          %291 = arith.remf %cst, %cst_2 : f16
          %292 = affine.max affine_map<(d0) -> ((-d0) mod 8 - d0, (-d0) mod 8)>(%c12)
          %alloca_31 = memref.alloca() : memref<2xi64>
          %rank = tensor.rank %23 : tensor<i32>
          %293 = vector.insert %c2583_i16, %20 [5] : i16 into vector<16xi16>
          %294 = arith.subi %69, %136 : i16
          %295 = math.exp %in : f32
          %296 = vector.broadcast %c559758251_i32 : i32 to vector<i32>
          %297 = vector.transfer_write %296, %8[%83, %c1, %88] : vector<i32>, tensor<16x16x16xi32>
          %298 = vector.broadcast %164 : f32 to vector<14x16xf32>
          %299 = vector.fma %298, %298, %298 : vector<14x16xf32>
          %300 = vector.multi_reduction <minf>, %299, %164 [0, 1] : vector<14x16xf32> to f32
          %301 = math.rsqrt %164 : f32
          %302 = math.log %cst_3 : f16
          %303 = math.rsqrt %cst_1 : f16
          %304 = index.ceildivs %33, %132
          %305 = arith.remui %c-26098_i16, %c-26098_i16 : i16
          scf.yield
        }
        default {
          %290 = math.copysign %in_27, %in_27 : f32
          %291 = vector.insert %44, %82 [13] : vector<16xi1> into vector<14x16xi1>
          %292 = arith.minf %cst_3, %cst_2 : f16
          %293 = math.rsqrt %from_elements : tensor<2xf32>
          %cast_31 = tensor.cast %6 : tensor<14x16xf32> to tensor<?x?xf32>
          %294 = math.copysign %cst_2, %cst_1 : f16
          affine.store %c2583_i16, %133[%c4, %c4] : memref<14x16xi16>
          %295 = index.maxu %c15, %132
          %296 = vector.insertelement %false, %182[%c1 : index] : vector<2xi1>
          %297 = index.maxu %262, %105
          %298 = index.add %132, %c7
          %299 = vector.broadcast %132 : index to vector<11xindex>
          %300 = vector.broadcast %false : i1 to vector<11xi1>
          %301 = vector.broadcast %69 : i16 to vector<11xi16>
          vector.scatter %133[%c6, %c13] [%299], %300, %301 : memref<14x16xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
          %302 = index.castu %c12 : index to i32
          memref.assume_alignment %alloc_15, 1 : memref<14x16xi16>
          %303 = math.log %6 : tensor<14x16xf32>
          %304 = math.roundeven %in : f32
        }
        %284 = math.round %0 : tensor<2xf16>
        %cast_28 = tensor.cast %2 : tensor<16x16x16xf32> to tensor<?x?x?xf32>
        %285 = scf.while (%arg2 = %31) : (memref<14x16xf32>) -> memref<14x16xf32> {
          %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, -d3)>(%132, %262, %c5, %c4)
          %291 = vector.flat_transpose %43 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
          %292 = vector.shuffle %45, %291 [0, 2, 3, 4, 5, 6, 10, 13, 14, 15, 18, 19, 20, 23, 28, 29, 31] : vector<16xf32>, vector<16xf32>
          %293 = arith.minui %false, %true : i1
          %extracted_31 = tensor.extract %2[%c0, %c11, %c3] : tensor<16x16x16xf32>
          %294 = vector.broadcast %c2583_i16 : i16 to vector<11xi16>
          %295 = vector.broadcast %false : i1 to vector<11xi1>
          %296 = vector.maskedload %133[%c4, %c10], %295, %294 : memref<14x16xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
          %297 = arith.addf %cst_3, %cst_0 : f16
          %298 = vector.bitcast %45 : vector<16xf32> to vector<16xf32>
          scf.condition(%true) %arg2 : memref<14x16xf32>
        } do {
        ^bb0(%arg2: memref<14x16xf32>):
          %290 = index.floordivs %83, %165
          %291 = arith.shli %c292723955_i64, %c510109333_i64 : i64
          %292 = arith.minsi %122, %c-22596_i16 : i16
          %293 = tensor.empty() : tensor<14x14xi16>
          %294 = linalg.matmul ins(%5, %transposed : tensor<14x16xi16>, tensor<16x14xi16>) outs(%293 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %295 = math.absi %7 : tensor<16x16x16xi64>
          memref.assume_alignment %alloc_16, 2 : memref<2xi16>
          %296 = arith.addf %274, %cst_4 : f32
          %from_elements_31 = tensor.from_elements %c-26098_i16, %c-26098_i16, %c-22596_i16, %c2583_i16, %c2583_i16, %69, %c2583_i16, %c-26098_i16, %c-11464_i16, %c-26098_i16, %c-11464_i16, %c-11464_i16, %c-22596_i16, %122, %c-26098_i16, %136, %c-22596_i16, %69, %c-11464_i16, %122, %c-26098_i16, %c-11464_i16, %69, %c-11464_i16, %c-11464_i16, %122, %c-26098_i16, %c-26098_i16, %136, %136, %c2583_i16, %122, %c2583_i16, %c-26098_i16, %c-26098_i16, %c-11464_i16, %122, %c-22596_i16, %c2583_i16, %122, %c-11464_i16, %69, %136, %c2583_i16, %c-11464_i16, %c-11464_i16, %c-11464_i16, %136, %122, %69, %122, %122, %122, %c-22596_i16, %69, %c2583_i16, %c-22596_i16, %69, %c-11464_i16, %c-22596_i16, %c2583_i16, %69, %c-26098_i16, %122, %c2583_i16, %c2583_i16, %69, %122, %122, %122, %69, %122, %c-22596_i16, %c2583_i16, %c-26098_i16, %136, %136, %122, %69, %c-11464_i16, %c-11464_i16, %c-22596_i16, %136, %c2583_i16, %122, %69, %69, %69, %69, %69, %c-22596_i16, %c-26098_i16, %69, %c-26098_i16, %69, %122, %c2583_i16, %136, %c-22596_i16, %c-11464_i16, %136, %c-22596_i16, %c-26098_i16, %136, %122, %c2583_i16, %122, %c2583_i16, %c-26098_i16, %c-22596_i16, %136, %122, %c-22596_i16, %69, %69, %122, %c2583_i16, %c-22596_i16, %c-26098_i16, %c-26098_i16, %c2583_i16, %c2583_i16, %c-26098_i16, %c2583_i16, %122, %122, %c-26098_i16, %c-26098_i16, %c-22596_i16, %c-26098_i16, %c2583_i16, %c2583_i16, %122, %122, %c-22596_i16, %c-26098_i16, %136, %c-26098_i16, %69, %c2583_i16, %136, %c-22596_i16, %c-11464_i16, %c-26098_i16, %c-11464_i16, %c-11464_i16, %122, %122, %136, %136, %c-26098_i16, %136, %c-22596_i16, %c-26098_i16, %136, %136, %c2583_i16, %c-26098_i16, %c-11464_i16, %122, %c-22596_i16, %c-22596_i16, %136, %c-11464_i16, %69, %c2583_i16, %69, %c-22596_i16, %c2583_i16, %c-26098_i16, %c-26098_i16, %c-26098_i16, %122, %136, %136, %122, %c2583_i16, %c-22596_i16, %c-22596_i16, %c-11464_i16, %c-11464_i16, %c-22596_i16, %136, %c2583_i16, %c-26098_i16, %c-11464_i16, %c-22596_i16, %69, %136, %c-26098_i16, %c-26098_i16, %c-22596_i16, %c-26098_i16, %c-11464_i16, %69, %122, %136, %c-22596_i16, %122, %122, %c2583_i16, %c-26098_i16, %69, %136, %69, %c2583_i16, %122, %69, %69, %122, %122, %c-22596_i16, %c-22596_i16, %c-22596_i16, %122, %c-26098_i16, %c2583_i16, %c-26098_i16, %c-11464_i16, %c-22596_i16, %c-22596_i16, %c-26098_i16, %c2583_i16, %136 : tensor<14x16xi16>
          %297 = vector.transpose %20, [0] : vector<16xi16> to vector<16xi16>
          %298 = index.maxu %c14, %174
          %c62 = arith.constant 62 : index
          %inserted_32 = tensor.insert %136 into %collapsed[%c62] : tensor<224xi16>
          %299 = arith.muli %c1005867067_i64, %c1005867067_i64 : i64
          %300 = vector.broadcast %54 : f32 to vector<f32>
          vector.transfer_write %300, %alloc_6[%276, %132, %147] : vector<f32>, memref<16x16x16xf32>
          %301 = index.maxu %278, %c12
          %302 = vector.splat %129 : vector<2x16xf32>
          %303 = bufferization.clone %alloc_18 : memref<2xi32> to memref<2xi32>
          scf.yield %arg2 : memref<14x16xf32>
        }
        %286 = math.floor %0 : tensor<2xf16>
        %cast_29 = tensor.cast %6 : tensor<14x16xf32> to tensor<?x?xf32>
        %287 = arith.shli %c0_i64, %c510109333_i64 : i64
        %288 = math.log10 %0 : tensor<2xf16>
        %289 = math.log %in_26 : f32
        %cst_30 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_30 : f32
      }
    %187 = math.round %129 : f32
    %188 = index.divu %41, %118
    %189 = arith.shrsi %false, %true : i1
    %190 = arith.addi %47, %47 : i32
    %191 = vector.load %alloc_8[%c12, %c4, %c3] : memref<16x16x16xf32>, vector<2xf32>
    %192 = math.fma %cst_4, %129, %164 : f32
    %193 = math.floor %54 : f32
    %194 = index.add %c8, %105
    %195 = arith.shli %true, %true : i1
    %196 = math.exp %137 : f32
    %197 = index.add %28, %c15
    %198 = arith.addi %69, %122 : i16
    %extracted = tensor.extract %23[] : tensor<i32>
    %199 = math.rsqrt %0 : tensor<2xf16>
    %200 = memref.atomic_rmw addf %129, %alloc_8[%c11, %c4, %c15] : (f32, memref<16x16x16xf32>) -> f32
    %201 = math.tanh %164 : f32
    %202 = arith.remf %cst_2, %cst_0 : f16
    %203 = vector.load %133[%c7, %c14] : memref<14x16xi16>, vector<14x16xi16>
    %204 = index.add %c8, %c9
    %205 = math.log %0 : tensor<2xf16>
    memref.store %c559758251_i32, %alloc_9[%c9, %c11, %c4] : memref<16x16x16xi32>
    %206 = index.floordivs %c11, %88
    %207 = math.log2 %cst_3 : f16
    %208 = scf.while (%arg2 = %c-26098_i16) : (i16) -> i16 {
      %261 = vector.extract %20[3] : vector<16xi16>
      %262 = index.floordivs %147, %204
      %263 = arith.negf %cst_4 : f32
      %264 = arith.divsi %c-22596_i16, %arg2 : i16
      affine.store %69, %alloc_15[%c14, %c11] : memref<14x16xi16>
      %265 = math.fma %6, %15, %6 : tensor<14x16xf32>
      %266 = index.sizeof
      %alloc_26 = memref.alloc() : memref<16x16x16xi64>
      memref.tensor_store %7, %alloc_26 : memref<16x16x16xi64>
      scf.condition(%true) %136 : i16
    } do {
    ^bb0(%arg2: i16):
      %261 = arith.ori %extracted, %47 : i32
      %262 = math.tanh %cst : f16
      %from_elements_26 = tensor.from_elements %136, %122 : tensor<2xi16>
      %263 = arith.maxui %c-11464_i16, %122 : i16
      %264 = math.round %2 : tensor<16x16x16xf32>
      memref.copy %alloc_12, %alloc_8 : memref<16x16x16xf32> to memref<16x16x16xf32>
      %265 = vector.insert %20, %203 [6] : vector<16xi16> into vector<14x16xi16>
      memref.assume_alignment %alloc_6, 8 : memref<16x16x16xf32>
      %266 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 + 1) mod 64 + 16)>(%c4, %c2, %c12, %33)
      %267 = math.cttz %11 : tensor<14x16xi16>
      %268 = arith.addi %c0_i64, %c0_i64 : i64
      %269 = math.sqrt %0 : tensor<2xf16>
      %270 = vector.extract_strided_slice %44 {offsets = [4], sizes = [10], strides = [1]} : vector<16xi1> to vector<10xi1>
      %271 = arith.shli %c2583_i16, %arg2 : i16
      %272 = index.mul %204, %206
      %273 = index.add %87, %165
      scf.yield %69 : i16
    }
    %209 = math.cos %129 : f32
    %210 = arith.addi %true, %false : i1
    %211 = vector.extract %74[7] : vector<14xi16>
    %212 = scf.index_switch %c10 -> tensor<2x16xi32> 
    case 1 {
      %261 = math.log2 %cst : f16
      %262 = vector.extract_strided_slice %82 {offsets = [11], sizes = [1], strides = [1]} : vector<14x16xi1> to vector<1x16xi1>
      %263 = index.mul %c14, %c7
      affine.store %cst_1, %alloc_14[%c8, %c15] : memref<14x16xf16>
      %264 = index.sub %c7, %28
      %cast_26 = tensor.cast %6 : tensor<14x16xf32> to tensor<?x?xf32>
      %265 = index.mul %c5, %c6
      %266 = index.mul %147, %95
      %267 = index.sub %147, %c1
      %268 = math.absf %186 : tensor<16x16x16xf32>
      %269 = math.log %186 : tensor<16x16x16xf32>
      %270 = vector.insertelement %c-26098_i16, %20[%78 : index] : vector<16xi16>
      %271 = vector.extract %191[0] : vector<2xf32>
      %272 = arith.minsi %47, %extracted : i32
      %273 = math.fma %6, %15, %6 : tensor<14x16xf32>
      %274 = memref.atomic_rmw muli %c0_i64, %alloc_17[%c1] : (i64, memref<2xi64>) -> i64
      scf.yield %14 : tensor<2x16xi32>
    }
    case 2 {
      %261 = math.copysign %137, %164 : f32
      %262 = vector.insertelement %c-11464_i16, %20[%165 : index] : vector<16xi16>
      %263 = math.exp2 %2 : tensor<16x16x16xf32>
      %264 = arith.ori %47, %extracted : i32
      %265 = index.maxu %28, %c0
      %266 = arith.shli %c-22596_i16, %c-26098_i16 : i16
      %267 = arith.muli %c-26098_i16, %c-22596_i16 : i16
      %268 = scf.while (%arg2 = %54) : (f32) -> f32 {
        %277 = arith.addi %true, %true : i1
        %278 = index.add %c9, %c15
        %279 = vector.insert %c-11464_i16, %74 [11] : i16 into vector<14xi16>
        %280 = index.add %c6, %83
        %281 = arith.ori %extracted, %extracted : i32
        %282 = affine.load %alloc_10[%c15, %c8] : memref<2x16xf16>
        %283 = math.exp2 %54 : f32
        %284 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xi16> -> vector<16xi16>
        scf.condition(%true) %arg2 : f32
      } do {
      ^bb0(%arg2: f32):
        %277 = arith.addi %false, %false : i1
        %278 = math.log10 %129 : f32
        %279 = bufferization.to_memref %67 : memref<14x14xi16>
        %280 = math.roundeven %6 : tensor<14x16xf32>
        %281 = arith.shrsi %c-22596_i16, %136 : i16
        %282 = vector.flat_transpose %45 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
        %283 = math.log %cst_4 : f32
        %284 = vector.bitcast %72 : vector<14xi16> to vector<14xi16>
        %285 = vector.insert %122, %284 [4] : i16 into vector<14xi16>
        affine.store %c-22596_i16, %133[%c10, %c0] : memref<14x16xi16>
        %286 = math.exp2 %cst : f16
        %287 = arith.negf %137 : f32
        %288 = math.cttz %c-11464_i16 : i16
        %289 = arith.remf %129, %arg2 : f32
        %extracted_26 = tensor.extract %1[%c8, %c7] : tensor<14x16xi32>
        %290 = math.rsqrt %cst_0 : f16
        scf.yield %129 : f32
      }
      %269 = arith.shrsi %c-22596_i16, %c-22596_i16 : i16
      %270 = math.absf %cst_4 : f32
      %271 = vector.create_mask %118 : vector<2xi1>
      %272 = index.ceildivs %c13, %83
      %273 = vector.insert %137, %45 [7] : f32 into vector<16xf32>
      %274 = arith.addi %true, %true : i1
      %275 = math.cttz %14 : tensor<2x16xi32>
      %276 = math.log1p %2 : tensor<16x16x16xf32>
      scf.yield %14 : tensor<2x16xi32>
    }
    case 3 {
      %261 = math.powf %15, %6 : tensor<14x16xf32>
      %alloc_26 = memref.alloc() : memref<16x16xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %alloc_26, %17 : tensor<16x16x16xi64>, memref<16x16xi64>, tensor<16x16x16xi64>) outs(%12 : tensor<16x16x16xi64>) {
      ^bb0(%in: i64, %in_27: i64, %in_28: i64, %out: i64):
        %277 = arith.muli %c1005867067_i64, %c292723955_i64 : i64
        %278 = arith.floordivsi %c0_i64, %c292723955_i64 : i64
        %279 = memref.realloc %alloc_17 : memref<2xi64> to memref<14xi64>
        %280 = index.casts %c13 : index to i32
        %281 = memref.load %alloc_16[%c1] : memref<2xi16>
        %282 = vector.insertelement %true, %73[%83 : index] : vector<14xi1>
        %283 = math.absf %0 : tensor<2xf16>
        %alloc_29 = memref.alloc() : memref<16x14xi16>
        memref.tensor_store %transposed, %alloc_29 : memref<16x14xi16>
        %284 = vector.flat_transpose %43 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
        %285 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 16 - 1, d0 ceildiv 16 + 4, d0 mod 16)>(%83, %c12)
        %286 = index.floordivs %83, %c8
        %c1_i16 = arith.constant 1 : i16
        %287 = vector.transfer_read %67[%95, %46], %c1_i16 : tensor<14x14xi16>, vector<16xi16>
        vector.print %72 : vector<14xi16>
        %alloc_30 = memref.alloc() : memref<16x16x16xi64>
        %alloc_31 = memref.alloc() : memref<2x16xf16>
        memref.copy %alloc_10, %alloc_31 : memref<2x16xf16> to memref<2x16xf16>
        %288 = vector.extract %203[0] : vector<14x16xi16>
        %289 = math.copysign %15, %15 : tensor<14x16xf32>
        affine.store %c-22596_i16, %alloc_15[%c5, %c11] : memref<14x16xi16>
        %290 = math.log10 %164 : f32
        %291 = vector.transpose %191, [0] : vector<2xf32> to vector<2xf32>
        %292 = arith.remui %136, %122 : i16
        memref.tensor_store %5, %133 : memref<14x16xi16>
        %alloc_32 = memref.alloc() : memref<16x16x16xi64>
        memref.tensor_store %7, %alloc_32 : memref<16x16x16xi64>
        %293 = vector.bitcast %73 : vector<14xi1> to vector<14xi1>
        %294 = index.floordivs %c5, %78
        %295 = math.absf %54 : f32
        %296 = bufferization.clone %alloc_19 : memref<2xi32> to memref<2xi32>
        %297 = arith.addf %cst, %cst_2 : f16
        %298 = vector.transpose %82, [0, 1] : vector<14x16xi1> to vector<14x16xi1>
        %299 = index.ceildivs %285, %188
        %300 = vector.matrix_multiply %182, %182 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
        %301 = index.casts %41 : index to i32
        linalg.yield %in : i64
      } -> tensor<16x16x16xi64>
      %263 = math.ipowi %collapsed_23, %collapsed : tensor<224xi16>
      %264 = math.cos %cst : f16
      %265 = math.absf %0 : tensor<2xf16>
      %266 = index.divu %147, %188
      %267 = math.exp %2 : tensor<16x16x16xf32>
      %268 = vector.transpose %45, [0] : vector<16xf32> to vector<16xf32>
      %269 = vector.transpose %182, [0] : vector<2xi1> to vector<2xi1>
      %270 = arith.ori %136, %c2583_i16 : i16
      %271 = arith.maxui %c0_i64, %c292723955_i64 : i64
      %272 = tensor.empty() : tensor<16x16xi32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272 : tensor<16x16xi32>) outs(%8 : tensor<16x16x16xi32>) {
      ^bb0(%in: i32, %out: i32):
        %277 = vector.broadcast %c6 : index to vector<11xindex>
        %278 = vector.broadcast %true : i1 to vector<11xi1>
        %279 = vector.broadcast %69 : i16 to vector<11xi16>
        vector.scatter %alloc_15[%c12, %c12] [%277], %278, %279 : memref<14x16xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
        %280 = vector.insert %cst_4, %43 [8] : f32 into vector<16xf32>
        memref.copy %alloc_17, %106 : memref<2xi64> to memref<2xi64>
        %281 = index.add %204, %c7
        %282 = vector.extract %20[6] : vector<16xi16>
        %283 = arith.cmpi ult, %136, %c-11464_i16 : i16
        %284 = math.fma %186, %186, %2 : tensor<16x16x16xf32>
        %285 = affine.max affine_map<(d0, d1) -> (-d1, -d1, d1, d1 - 1)>(%c11, %165)
        %286 = arith.cmpi ult, %c292723955_i64, %c1005867067_i64 : i64
        %extracted_27 = tensor.extract %17[%c8, %c3, %c5] : tensor<16x16x16xi64>
        %287 = bufferization.to_tensor %106 : memref<2xi64>
        %288 = math.cos %0 : tensor<2xf16>
        %289 = arith.shrsi %c1005867067_i64, %c0_i64 : i64
        %290 = math.copysign %15, %15 : tensor<14x16xf32>
        %291 = arith.maxf %137, %cst_4 : f32
        %292 = math.expm1 %137 : f32
        %293 = vector.maskedload %alloc_20[], %44, %20 : memref<i16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %294 = arith.addi %extracted_27, %c292723955_i64 : i64
        %295 = vector.matrix_multiply %20, %293 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi16>, vector<16xi16>) -> vector<1xi16>
        %296 = arith.negf %54 : f32
        %297 = math.exp %cst_4 : f32
        %298 = arith.ceildivsi %true, %true : i1
        %299 = vector.maskedload %133[%c5, %c7], %44, %293 : memref<14x16xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %300 = arith.ceildivsi %extracted, %c559758251_i32 : i32
        %301 = vector.transpose %73, [0] : vector<14xi1> to vector<14xi1>
        %302 = arith.maxf %cst_4, %164 : f32
        %303 = memref.realloc %alloc : memref<2xf32> to memref<16xf32>
        %304 = math.log2 %2 : tensor<16x16x16xf32>
        %305 = vector.broadcast %118 : index to vector<11xindex>
        %306 = vector.broadcast %true : i1 to vector<11xi1>
        %307 = vector.broadcast %cst_4 : f32 to vector<11xf32>
        vector.scatter %alloc_8[%c11, %c6, %c4] [%305], %306, %307 : memref<16x16x16xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %308 = math.ceil %cst : f16
        %from_elements_28 = tensor.from_elements %c-22596_i16, %122, %c-22596_i16, %c-26098_i16, %122, %69, %c-22596_i16, %69, %136, %c2583_i16, %69, %136, %122, %c-11464_i16, %69, %136, %c-22596_i16, %c2583_i16, %c-26098_i16, %c2583_i16, %136, %69, %136, %136, %69, %c-11464_i16, %136, %122, %c2583_i16, %c-11464_i16, %69, %c-26098_i16 : tensor<2x16xi16>
        %309 = math.cttz %c-11464_i16 : i16
        linalg.yield %out : i32
      } -> tensor<16x16x16xi32>
      %274 = vector.bitcast %44 : vector<16xi1> to vector<16xi1>
      %275 = math.rsqrt %164 : f32
      %276 = arith.maxf %137, %137 : f32
      memref.copy %alloc_6, %alloc_12 : memref<16x16x16xf32> to memref<16x16x16xf32>
      scf.yield %14 : tensor<2x16xi32>
    }
    default {
      %261 = vector.extract_strided_slice %182 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      affine.store %54, %alloc_6[%c12, %c5, %c9] : memref<16x16x16xf32>
      %262 = vector.broadcast %extracted : i32 to vector<i32>
      %263 = vector.transfer_write %262, %21[%132] : vector<i32>, tensor<2xi32>
      %264 = vector.transpose %82, [1, 0] : vector<14x16xi1> to vector<16x14xi1>
      %265 = index.ceildivu %c10, %206
      %266 = arith.xori %false, %true : i1
      %267 = arith.negf %cst_0 : f16
      %268 = math.tanh %137 : f32
      %269 = math.sqrt %137 : f32
      affine.store %extracted, %alloc_19[%c1] : memref<2xi32>
      %270 = arith.addf %cst_2, %cst_2 : f16
      %271 = arith.negf %cst_4 : f32
      %272 = arith.addi %true, %false : i1
      %273 = affine.max affine_map<(d0, d1) -> ((d1 - 16) * 16, -(d1 mod 16 - (d1 - 16) + 1) + d1 mod 16 - (d1 - 16), d1 mod 16 - 8, (d1 mod 16 - (d1 - 16)) ceildiv 8)>(%c7, %c3)
      %274 = memref.atomic_rmw muli %extracted, %alloc_7[%c1] : (i32, memref<2xi32>) -> i32
      %275 = math.ceil %cst_3 : f16
      scf.yield %14 : tensor<2x16xi32>
    }
    %213 = arith.shli %122, %122 : i16
    %214 = vector.broadcast %47 : i32 to vector<i32>
    %215 = vector.transfer_write %214, %14[%c3, %87] : vector<i32>, tensor<2x16xi32>
    %216 = vector.flat_transpose %182 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
    %217 = math.roundeven %186 : tensor<16x16x16xf32>
    %218 = vector.splat %188 : vector<16x16x16xindex>
    %219 = arith.remf %cst_1, %cst_3 : f16
    %220 = arith.shli %c-11464_i16, %c-11464_i16 : i16
    %221 = arith.subi %c-11464_i16, %69 : i16
    %222 = vector.insertelement %129, %43[%95 : index] : vector<16xf32>
    %cast_24 = tensor.cast %11 : tensor<14x16xi16> to tensor<?x?xi16>
    affine.store %cst, %alloc_10[%c1, %c7] : memref<2x16xf16>
    %223 = index.mul %c6, %194
    %224 = index.floordivs %88, %206
    %225 = vector.transpose %82, [1, 0] : vector<14x16xi1> to vector<16x14xi1>
    %226 = index.sizeof
    %227 = arith.shrsi %c0_i64, %c292723955_i64 : i64
    %228 = math.exp2 %137 : f32
    %229 = math.powf %186, %2 : tensor<16x16x16xf32>
    %230 = math.absf %2 : tensor<16x16x16xf32>
    %231 = memref.realloc %alloc : memref<2xf32> to memref<14xf32>
    %232 = vector.extract %20[10] : vector<16xi16>
    %233 = arith.maxf %cst_4, %54 : f32
    memref.copy %alloc_8, %alloc_6 : memref<16x16x16xf32> to memref<16x16x16xf32>
    %234 = affine.for %arg2 = 0 to 34 iter_args(%arg3 = %cst_0) -> (f16) {
      affine.yield %arg3 : f16
    }
    %235 = math.ipowi %4, %11 : tensor<14x16xi16>
    %236 = affine.max affine_map<(d0) -> (-(d0 floordiv 8), -(d0 floordiv 8), ((-d0) floordiv 8) ceildiv 4 + 8, d0)>(%226)
    %237 = index.sizeof
    %238 = arith.ceildivsi %false, %false : i1
    %239 = affine.min affine_map<(d0, d1, d2) -> (d0, d0, d0)>(%c8, %147, %223)
    %240 = math.cttz %c0_i64 : i64
    %241 = index.ceildivs %223, %88
    %242 = math.exp2 %137 : f32
    %243 = arith.addi %c2583_i16, %c-26098_i16 : i16
    affine.store %c-22596_i16, %alloc_16[%c5] : memref<2xi16>
    %244 = math.tanh %54 : f32
    %245 = math.ceil %cst_2 : f16
    %246 = vector.broadcast %true : i1 to vector<2x2xi1>
    %247 = vector.outerproduct %216, %182, %246 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
    affine.for %arg2 = 0 to 75 {
    }
    memref.tensor_store %15, %31 : memref<14x16xf32>
    %248 = memref.realloc %alloc_17 : memref<2xi64> to memref<14xi64>
    %249 = vector.splat %c0 : vector<2xindex>
    %250 = vector.insertelement %false, %182[%236 : index] : vector<2xi1>
    %251 = arith.minui %c-26098_i16, %122 : i16
    %252 = math.cos %cst_4 : f32
    %generated = tensor.generate %100 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %261 = index.castu %arg4 : index to i32
      %alloca_26 = memref.alloca() : memref<14x16xi16>
      %262 = math.log10 %0 : tensor<2xf16>
      %263 = vector.insert %129, %43 [14] : f32 into vector<16xf32>
      tensor.yield %47 : i32
    } : tensor<?x16x16xi32>
    %253 = math.roundeven %cst_1 : f16
    %254 = arith.maxf %cst, %cst : f16
    %255 = tensor.empty() : tensor<224xi16>
    %256 = linalg.copy ins(%collapsed : tensor<224xi16>) outs(%255 : tensor<224xi16>) -> tensor<224xi16>
    %257 = tensor.empty() : tensor<16x14xf32>
    %transposed_25 = linalg.transpose ins(%15 : tensor<14x16xf32>) outs(%257 : tensor<16x14xf32>) permutation = [1, 0] 
    %258 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%from_elements : tensor<2xf32>) outs(%258 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %261 = math.exp %cst_0 : f16
        %262 = vector.extract %191[1] : vector<2xf32>
        %263 = affine.max affine_map<(d0) -> ((-d0) floordiv 16, d0 * -33, d0 * -33)>(%224)
        %generated_26 = tensor.generate %28 {
        ^bb0(%arg2: index):
          %267 = arith.shrsi %c510109333_i64, %c1005867067_i64 : i64
          %268 = memref.atomic_rmw ori %47, %alloc_9[%c12, %c7, %c7] : (i32, memref<16x16x16xi32>) -> i32
          %269 = math.rsqrt %186 : tensor<16x16x16xf32>
          %270 = math.fma %2, %186, %2 : tensor<16x16x16xf32>
          tensor.yield %c559758251_i32 : i32
        } : tensor<?xi32>
        %264 = vector.multi_reduction <minui>, %20, %20 [] : vector<16xi16> to vector<16xi16>
        %265 = arith.cmpi sle, %false, %false : i1
        %266 = index.divu %241, %224
        affine.for %arg2 = 0 to 52 {
        }
        %cst_27 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_27 : f32
      }
    %259 = scf.parallel (%arg2) = (%c6) to (%241) step (%c9) init (%cst_2) -> f16 {
      %261 = math.round %2 : tensor<16x16x16xf32>
      %262 = math.expm1 %137 : f32
      %263 = math.log2 %2 : tensor<16x16x16xf32>
      %264 = math.roundeven %186 : tensor<16x16x16xf32>
      %265 = math.exp %cst : f16
      %266 = arith.subi %false, %true : i1
      %267 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, (d2 ceildiv 128) floordiv 32 + d1 - 16 >= 0, -d3 >= 0)>(%c7, %c8, %c13, %c9) -> i1 {
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%88, %95, %147, %88)
        vector.print %216 : vector<2xi1>
        %281 = arith.shli %c-11464_i16, %c-22596_i16 : i16
        %282 = index.ceildivs %88, %165
        %283 = math.copysign %cst_1, %cst_3 : f16
        %284 = memref.load %alloc_10[%c1, %c13] : memref<2x16xf16>
        %285 = vector.transpose %82, [0, 1] : vector<14x16xi1> to vector<14x16xi1>
        %286 = math.tanh %cst_2 : f16
        affine.yield %true : i1
      } else {
        %280 = vector.broadcast %c510109333_i64 : i64 to vector<14xi64>
        %281 = vector.maskedload %106[%c0], %73, %280 : memref<2xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %282 = vector.multi_reduction <add>, %72, %c2583_i16 [0] : vector<14xi16> to i16
        %283 = arith.xori %282, %122 : i16
        %284 = affine.load %alloc_16[%c13] : memref<2xi16>
        %285 = math.fma %258, %258, %258 : tensor<f32>
        %286 = math.log2 %54 : f32
        %287 = index.casts %c7 : index to i32
        %288 = vector.create_mask %87, %204 : vector<2x16xi1>
        affine.yield %true : i1
      }
      %268 = math.round %164 : f32
      %269 = vector.broadcast %118 : index to vector<11xindex>
      %270 = vector.broadcast %false : i1 to vector<11xi1>
      %271 = vector.broadcast %extracted : i32 to vector<11xi32>
      vector.scatter %alloc_19[%c1] [%269], %270, %271 : memref<2xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
      %272 = math.exp %164 : f32
      %273 = bufferization.to_tensor %alloc_15 : memref<14x16xi16>
      %274 = arith.shli %47, %c559758251_i32 : i32
      %275 = arith.shli %136, %136 : i16
      %276 = vector.insertelement %cst_4, %191[%41 : index] : vector<2xf32>
      %alloc_26 = memref.alloc() : memref<16x16xi64>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %alloc_26, %alloc_26 : tensor<16x16x16xi64>, memref<16x16xi64>, memref<16x16xi64>) outs(%7 : tensor<16x16x16xi64>) {
      ^bb0(%in: i64, %in_28: i64, %in_29: i64, %out: i64):
        %280 = arith.addf %164, %164 : f32
        %cast_30 = tensor.cast %258 : tensor<f32> to tensor<f32>
        %281 = math.round %6 : tensor<14x16xf32>
        %282 = affine.load %alloc_5[%c9, %c4] : memref<2x16xi16>
        memref.assume_alignment %alloc_9, 1 : memref<16x16x16xi32>
        %283 = arith.maxui %in, %c1005867067_i64 : i64
        %284 = math.exp %transposed_25 : tensor<16x14xf32>
        %285 = math.log %137 : f32
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d1, d2, d0 + d1)>(%c3, %197, %c10, %88)
        %287 = math.tanh %2 : tensor<16x16x16xf32>
        %288 = math.ceil %6 : tensor<14x16xf32>
        %289 = arith.remf %137, %137 : f32
        %290 = arith.shli %c1005867067_i64, %in_28 : i64
        %291 = arith.shrsi %extracted, %c559758251_i32 : i32
        %292 = arith.divui %true, %false : i1
        memref.assume_alignment %alloc_11, 1 : memref<2xi32>
        %293 = vector.matrix_multiply %44, %73 {lhs_columns = 2 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<16xi1>, vector<14xi1>) -> vector<56xi1>
        %294 = memref.realloc %alloc_18 : memref<2xi32> to memref<14xi32>
        %295 = vector.extract %74[5] : vector<14xi16>
        %dest, %accumulated_value = vector.scan <xor>, %82, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
        %296 = arith.maxf %54, %137 : f32
        %297 = math.ceil %0 : tensor<2xf16>
        %298 = index.casts %241 : index to i32
        %299 = vector.extract_strided_slice %44 {offsets = [13], sizes = [1], strides = [1]} : vector<16xi1> to vector<1xi1>
        %300 = vector.broadcast %33 : index to vector<2xindex>
        %301 = vector.broadcast %c559758251_i32 : i32 to vector<2xi32>
        vector.scatter %alloc_7[%c1] [%300], %216, %301 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        memref.tensor_store %4, %133 : memref<14x16xi16>
        %302 = vector.broadcast %129 : f32 to vector<14x16xf32>
        %303 = vector.fma %302, %302, %302 : vector<14x16xf32>
        %alloca_31 = memref.alloca() : memref<16x16x16xf16>
        %alloca_32 = memref.alloca() : memref<2xi32>
        %304 = math.copysign %2, %2 : tensor<16x16x16xf32>
        %305 = math.log2 %15 : tensor<14x16xf32>
        %306 = arith.minui %69, %136 : i16
        linalg.yield %in_29 : i64
      } -> tensor<16x16x16xi64>
      %278 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
      %279 = vector.outerproduct %191, %191, %278 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
      %cst_27 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_27)  : f16 {
      ^bb0(%arg3: f16, %arg4: f16):
        %280 = arith.xori %true, %false : i1
        %281 = index.add %c12, %139
        %282 = math.atan2 %15, %6 : tensor<14x16xf32>
        %alloc_28 = memref.alloc() : memref<i32>
        memref.tensor_store %23, %alloc_28 : memref<i32>
        %alloc_29 = memref.alloc() : memref<16x16x16xi32>
        memref.copy %alloc_9, %alloc_29 : memref<16x16x16xi32> to memref<16x16x16xi32>
        %283 = vector.broadcast %241 : index to vector<14xindex>
        vector.scatter %alloc_15[%c8, %c3] [%283], %73, %72 : memref<14x16xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %284 = arith.ceildivsi %extracted, %47 : i32
        %285 = vector.extract %44[5] : vector<16xi1>
        %cst_30 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_30 : f16
      }
      scf.yield
    }
    %260 = affine.vector_load %alloc[%105] : memref<2xf32>, vector<14xf32>
    affine.vector_store %191, %alloc_8[%83, %c10, %c11] : memref<16x16x16xf32>, vector<2xf32>
    vector.print %20 : vector<16xi16>
    vector.print %43 : vector<16xf32>
    vector.print %44 : vector<16xi1>
    vector.print %45 : vector<16xf32>
    vector.print %72 : vector<14xi16>
    vector.print %73 : vector<14xi1>
    vector.print %74 : vector<14xi16>
    vector.print %82 : vector<14x16xi1>
    vector.print %182 : vector<2xi1>
    vector.print %191 : vector<2xf32>
    vector.print %203 : vector<14x16xi16>
    vector.print %214 : vector<i32>
    vector.print %216 : vector<2xi1>
    vector.print %260 : vector<14xf32>
    vector.print %c510109333_i64 : i64
    vector.print %c2583_i16 : i16
    vector.print %c-22596_i16 : i16
    vector.print %c559758251_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %c1005867067_i64 : i64
    vector.print %c-26098_i16 : i16
    vector.print %true : i1
    vector.print %cst_2 : f16
    vector.print %c292723955_i64 : i64
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c-11464_i16 : i16
    vector.print %47 : i32
    vector.print %54 : f32
    vector.print %69 : i16
    vector.print %c0_i64 : i64
    vector.print %122 : i16
    vector.print %129 : f32
    vector.print %136 : i16
    vector.print %137 : f32
    vector.print %164 : f32
    vector.print %extracted : i32
    return
  }
}
