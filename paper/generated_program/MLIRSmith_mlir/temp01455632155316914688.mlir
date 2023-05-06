module {
  func.func @func1() -> memref<11x3xi1> {
    %c-32686_i16 = arith.constant -32686 : i16
    %c1285476782_i32 = arith.constant 1285476782 : i32
    %cst = arith.constant 6.387200e+04 : f16
    %c-9062_i16 = arith.constant -9062 : i16
    %cst_0 = arith.constant 2.121600e+04 : f16
    %c135673915_i32 = arith.constant 135673915 : i32
    %c-6816_i16 = arith.constant -6816 : i16
    %c162211059_i64 = arith.constant 162211059 : i64
    %c665835470_i32 = arith.constant 665835470 : i32
    %c1587616062_i32 = arith.constant 1587616062 : i32
    %c4509_i16 = arith.constant 4509 : i16
    %c27201_i16 = arith.constant 27201 : i16
    %c1852420563_i64 = arith.constant 1852420563 : i64
    %c1210957407_i32 = arith.constant 1210957407 : i32
    %cst_1 = arith.constant 0x4D9442BC : f32
    %cst_2 = arith.constant 1.18284109E+9 : f32
    %0 = tensor.empty() : tensor<3xf16>
    %1 = tensor.empty() : tensor<14x3xf32>
    %2 = tensor.empty() : tensor<11x3xf16>
    %3 = tensor.empty() : tensor<14x3xi16>
    %4 = tensor.empty() : tensor<3x14xf16>
    %5 = tensor.empty() : tensor<14x3xf16>
    %6 = tensor.empty() : tensor<14x3xi32>
    %7 = tensor.empty() : tensor<14x3xf32>
    %8 = tensor.empty() : tensor<3xi64>
    %9 = tensor.empty() : tensor<3x14xi16>
    %10 = tensor.empty() : tensor<14x3xi32>
    %11 = tensor.empty() : tensor<3xi16>
    %12 = tensor.empty() : tensor<3xi1>
    %13 = tensor.empty() : tensor<14x3xi1>
    %14 = tensor.empty() : tensor<3xf32>
    %15 = tensor.empty() : tensor<3xf32>
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
    %alloc = memref.alloc() : memref<3xi32>
    %alloc_3 = memref.alloc() : memref<11x3xi16>
    %alloc_4 = memref.alloc() : memref<11x3xi16>
    %alloc_5 = memref.alloc() : memref<14x3xf16>
    %alloc_6 = memref.alloc() : memref<3xi1>
    %alloc_7 = memref.alloc() : memref<3xi64>
    %alloc_8 = memref.alloc() : memref<11x3xf16>
    %alloc_9 = memref.alloc() : memref<3x14xf16>
    %alloc_10 = memref.alloc() : memref<3x14xi64>
    %alloc_11 = memref.alloc() : memref<3x14xf32>
    %alloc_12 = memref.alloc() : memref<3x14xi32>
    %alloc_13 = memref.alloc() : memref<14x3xi1>
    %alloc_14 = memref.alloc() : memref<3x14xi32>
    %alloc_15 = memref.alloc() : memref<3x14xi16>
    %alloc_16 = memref.alloc() : memref<14x3xi32>
    %alloc_17 = memref.alloc() : memref<14x3xf16>
    %16 = tensor.empty() : tensor<14x3xf32>
    %17 = linalg.copy ins(%7 : tensor<14x3xf32>) outs(%16 : tensor<14x3xf32>) -> tensor<14x3xf32>
    %alloc_18 = memref.alloc() : memref<3xf16>
    linalg.transpose ins(%0 : tensor<3xf16>) outs(%alloc_18 : memref<3xf16>) permutation = [0] 
    %alloc_19 = memref.alloc() : memref<i1>
    linalg.reduce ins(%12 : tensor<3xi1>) outs(%alloc_19 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %263 = vector.broadcast %c4509_i16 : i16 to vector<3x14xi16>
        vector.print %263 : vector<3x14xi16>
        %264 = math.cttz %in : i1
        %265 = affine.load %alloc_13[%c4, %c7] : memref<14x3xi1>
        %266 = arith.muli %init, %265 : i1
        %267 = vector.broadcast %cst : f16 to vector<11xf16>
        %268 = vector.flat_transpose %267 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
        %269 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %270 = vector.fma %269, %269, %269 : vector<3xf32>
        %271 = arith.remsi %in, %265 : i1
        %272 = vector.broadcast %c11 : index to vector<3xindex>
        %273 = vector.broadcast %init : i1 to vector<3xi1>
        %274 = vector.broadcast %c-32686_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_4[%c8, %c1] [%272], %273, %274 : memref<11x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %true_37 = arith.constant true
        linalg.yield %true_37 : i1
      }
    %18 = scf.parallel (%arg0, %arg1) = (%c4, %c4) to (%c8, %c7) step (%c4, %c2) init (%alloc_17) -> memref<14x3xf16> {
      %263 = math.round %5 : tensor<14x3xf16>
      %264 = arith.shrui %c1587616062_i32, %c665835470_i32 : i32
      %265 = index.floordivs %c12, %c5
      %266 = math.roundeven %16 : tensor<14x3xf32>
      %from_elements_37 = tensor.from_elements %c-6816_i16, %c27201_i16, %c-6816_i16, %c27201_i16, %c27201_i16, %c4509_i16, %c-6816_i16, %c-32686_i16, %c-32686_i16, %c-32686_i16, %c-9062_i16, %c-6816_i16, %c27201_i16, %c-6816_i16, %c27201_i16, %c-9062_i16, %c-6816_i16, %c-32686_i16, %c-9062_i16, %c27201_i16, %c-32686_i16, %c-6816_i16, %c4509_i16, %c4509_i16, %c-6816_i16, %c4509_i16, %c-9062_i16, %c-9062_i16, %c4509_i16, %c27201_i16, %c-6816_i16, %c4509_i16, %c4509_i16, %c-9062_i16, %c-32686_i16, %c-32686_i16, %c-9062_i16, %c4509_i16, %c4509_i16, %c-32686_i16, %c-9062_i16, %c-32686_i16 : tensor<14x3xi16>
      %267 = math.atan2 %14, %14 : tensor<3xf32>
      %268 = arith.cmpi sgt, %c1852420563_i64, %c162211059_i64 : i64
      %269 = math.tanh %0 : tensor<3xf16>
      %270 = vector.splat %c-32686_i16 : vector<14x3xi16>
      %271 = arith.shli %c-32686_i16, %c27201_i16 : i16
      %272 = arith.remf %cst_0, %cst_0 : f16
      %273 = arith.muli %c665835470_i32, %c665835470_i32 : i32
      %274 = arith.addf %cst_0, %cst : f16
      %275 = vector.broadcast %c162211059_i64 : i64 to vector<i64>
      %276 = vector.transfer_write %275, %8[%c5] : vector<i64>, tensor<3xi64>
      %277 = memref.atomic_rmw minf %cst_0, %alloc_17[%c4, %c1] : (f16, memref<14x3xf16>) -> f16
      %278 = vector.broadcast %c4509_i16 : i16 to vector<1xi16>
      %279 = vector.multi_reduction <or>, %278, %c-6816_i16 [0] : vector<1xi16> to i16
      %alloc_38 = memref.alloc() : memref<14x3xf16>
      scf.reduce(%alloc_38)  : memref<14x3xf16> {
      ^bb0(%arg2: memref<14x3xf16>, %arg3: memref<14x3xf16>):
        %280 = arith.andi %c1587616062_i32, %c1285476782_i32 : i32
        %281 = index.castu %c7 : index to i32
        %282 = arith.mulf %cst_2, %cst_1 : f32
        %283 = arith.remf %cst_2, %cst_1 : f32
        %true_39 = index.bool.constant true
        %284 = bufferization.to_tensor %alloc_15 : memref<3x14xi16>
        %285 = index.sub %c14, %arg0
        %286 = math.powf %4, %4 : tensor<3x14xf16>
        %alloc_40 = memref.alloc() : memref<14x3xf16>
        scf.reduce.return %alloc_40 : memref<14x3xf16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_17[%c7, %c11] : memref<14x3xf16>, vector<6xf16>
    affine.vector_store %19, %alloc_8[%c14, %c7] : memref<11x3xf16>, vector<6xf16>
    %20 = tensor.empty() : tensor<3xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc, %20 : memref<3xi32>, tensor<3xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %alloca = memref.alloca() : memref<11x3xi64>
    %23 = vector.broadcast %c14 : index to vector<3xindex>
    %true = arith.constant true
    %24 = vector.broadcast %true : i1 to vector<3xi1>
    vector.scatter %alloc_6[%c0] [%23], %24, %24 : memref<3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %25 = affine.load %alloc_3[%c10, %c12] : memref<11x3xi16>
    %26 = arith.floordivsi %c665835470_i32, %c135673915_i32 : i32
    %27 = index.ceildivs %c0, %c4
    %28 = index.maxs %c11, %c10
    %29 = math.tanh %15 : tensor<3xf32>
    %30 = bufferization.to_tensor %alloc_17 : memref<14x3xf16>
    %31 = vector.insertelement %cst, %19[%c5 : index] : vector<6xf16>
    %32 = arith.minsi %c1587616062_i32, %c1210957407_i32 : i32
    %33 = vector.shuffle %19, %19 [3, 4, 5, 8, 9, 11] : vector<6xf16>, vector<6xf16>
    %34 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
    memref.store %cst_0, %alloc_8[%c4, %c0] : memref<11x3xf16>
    %35 = vector.broadcast %cst : f16 to vector<14xf16>
    %false = arith.constant false
    %36 = vector.broadcast %false : i1 to vector<14xi1>
    %37 = vector.maskedload %alloc_8[%c1, %c1], %36, %35 : memref<11x3xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
    %38 = index.ceildivs %c15, %c8
    %39 = math.round %15 : tensor<3xf32>
    %40 = vector.bitcast %36 : vector<14xi1> to vector<14xi1>
    %41 = math.round %15 : tensor<3xf32>
    %42 = arith.remf %cst_0, %cst_0 : f16
    %43 = index.floordivs %c4, %28
    %from_elements = tensor.from_elements %c162211059_i64, %c1852420563_i64, %c162211059_i64 : tensor<3xi64>
    %44 = math.roundeven %4 : tensor<3x14xf16>
    %45 = arith.shli %c162211059_i64, %c162211059_i64 : i64
    %46 = arith.remui %c1285476782_i32, %c665835470_i32 : i32
    %47 = bufferization.clone %alloc_4 : memref<11x3xi16> to memref<11x3xi16>
    %48 = arith.shrui %c1587616062_i32, %c665835470_i32 : i32
    %49 = math.round %17 : tensor<14x3xf32>
    %50 = math.exp %0 : tensor<3xf16>
    %cast = tensor.cast %22 : tensor<i32> to tensor<i32>
    %51 = math.roundeven %1 : tensor<14x3xf32>
    %alloc_20 = memref.alloc() : memref<3x14xi16>
    %splat = tensor.splat %cst : tensor<3xf16>
    %52 = math.powf %1, %7 : tensor<14x3xf32>
    memref.assume_alignment %alloc_18, 8 : memref<3xf16>
    %alloc_21 = memref.alloc() : memref<3xi32>
    memref.copy %alloc, %alloc_21 : memref<3xi32> to memref<3xi32>
    %53 = arith.remsi %c1587616062_i32, %c665835470_i32 : i32
    %54 = arith.divui %false, %false : i1
    %55 = math.powf %30, %5 : tensor<14x3xf16>
    %56 = math.cttz %8 : tensor<3xi64>
    %57 = math.atan2 %1, %7 : tensor<14x3xf32>
    %58 = index.ceildivs %c5, %c14
    %59 = vector.broadcast %cst : f16 to vector<f16>
    %60 = vector.transfer_write %59, %2[%c11, %c6] : vector<f16>, tensor<11x3xf16>
    %61 = arith.xori %false, %false : i1
    %62 = vector.bitcast %35 : vector<14xf16> to vector<14xf16>
    %63 = math.copysign %7, %1 : tensor<14x3xf32>
    %alloc_22 = memref.alloc() : memref<3xf32>
    memref.tensor_store %14, %alloc_22 : memref<3xf32>
    %64 = math.cttz %13 : tensor<14x3xi1>
    %65 = arith.subi %c-6816_i16, %c-6816_i16 : i16
    %66 = arith.subi %c135673915_i32, %c1210957407_i32 : i32
    %67 = vector.extract %34[3] : vector<6xf16>
    %68 = math.atan2 %15, %14 : tensor<3xf32>
    %69 = math.round %splat : tensor<3xf16>
    %70 = memref.load %alloc_18[%c1] : memref<3xf16>
    %71 = scf.while (%arg0 = %19) : (vector<6xf16>) -> vector<6xf16> {
      %263 = math.expm1 %0 : tensor<3xf16>
      %264 = math.powf %1, %1 : tensor<14x3xf32>
      %from_elements_37 = tensor.from_elements %c1852420563_i64, %c1852420563_i64, %c162211059_i64, %c162211059_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64, %c1852420563_i64, %c1852420563_i64, %c1852420563_i64, %c1852420563_i64, %c1852420563_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64, %c162211059_i64, %c162211059_i64, %c162211059_i64, %c162211059_i64, %c1852420563_i64, %c1852420563_i64, %c162211059_i64, %c162211059_i64, %c1852420563_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64, %c162211059_i64, %c1852420563_i64 : tensor<11x3xi64>
      %265 = math.powf %0, %splat : tensor<3xf16>
      %266 = memref.atomic_rmw minf %cst, %alloc_9[%c0, %c2] : (f16, memref<3x14xf16>) -> f16
      %267 = bufferization.clone %alloc_5 : memref<14x3xf16> to memref<14x3xf16>
      %268 = vector.insert %false, %36 [2] : i1 into vector<14xi1>
      %269 = arith.divf %cst_1, %cst_1 : f32
      scf.condition(%false) %34 : vector<6xf16>
    } do {
    ^bb0(%arg0: vector<6xf16>):
      %263 = index.casts %c1 : index to i32
      %264 = affine.if affine_set<(d0, d1, d2) : ((d0 + 128) ceildiv 2 >= 0, d0 == 0, (d0 floordiv 128) mod 16 - d0 >= 0, d0 + d2 == 0)>(%c4, %c1, %c9) -> i1 {
        %275 = math.tanh %splat : tensor<3xf16>
        %276 = arith.negf %cst_2 : f32
        %277 = math.copysign %7, %7 : tensor<14x3xf32>
        %278 = math.roundeven %14 : tensor<3xf32>
        %279 = arith.negf %cst_0 : f16
        %280 = vector.transpose %35, [0] : vector<14xf16> to vector<14xf16>
        %281 = arith.maxf %cst_0, %cst : f16
        %282 = math.ctpop %c135673915_i32 : i32
        affine.yield %false : i1
      } else {
        %275 = math.fpowi %17, %6 : tensor<14x3xf32>, tensor<14x3xi32>
        memref.tensor_store %9, %alloc_15 : memref<3x14xi16>
        %276 = math.tanh %16 : tensor<14x3xf32>
        %277 = math.roundeven %14 : tensor<3xf32>
        %278 = arith.addi %c27201_i16, %c-9062_i16 : i16
        %279 = memref.atomic_rmw mulf %cst_0, %alloc_9[%c2, %c11] : (f16, memref<3x14xf16>) -> f16
        %280 = index.sub %28, %c10
        %281 = arith.muli %c162211059_i64, %c1852420563_i64 : i64
        affine.yield %false : i1
      }
      %265 = math.exp2 %cst_2 : f32
      %266 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c7, %38, %c13)
      %267 = bufferization.to_tensor %47 : memref<11x3xi16>
      %false_37 = index.bool.constant false
      %268 = math.expm1 %cst_1 : f32
      %269 = scf.while (%arg1 = %25) : (i16) -> i16 {
        %275 = index.ceildivu %c3, %c10
        %alloc_39 = memref.alloc() : memref<11x3xi32>
        %276 = index.divs %c13, %c2
        memref.store %false_37, %alloc_13[%c4, %c0] : memref<14x3xi1>
        %277 = index.divs %c13, %c13
        %278 = arith.minui %c162211059_i64, %c162211059_i64 : i64
        %279 = arith.minsi %c162211059_i64, %c162211059_i64 : i64
        %280 = index.maxs %c8, %c5
        scf.condition(%false) %25 : i16
      } do {
      ^bb0(%arg1: i16):
        %275 = vector.load %alloc_17[%c4, %c0] : memref<14x3xf16>, vector<11x3xf16>
        %276 = arith.shrsi %false_37, %false_37 : i1
        %c-10200_i16 = arith.constant -10200 : i16
        %277 = math.fpowi %5, %10 : tensor<14x3xf16>, tensor<14x3xi32>
        %278 = memref.realloc %alloc_18 : memref<3xf16> to memref<6xf16>
        %279 = memref.realloc %alloc : memref<3xi32> to memref<11xi32>
        %280 = vector.extract_strided_slice %62 {offsets = [8], sizes = [6], strides = [1]} : vector<14xf16> to vector<6xf16>
        %281 = arith.muli %false, %false : i1
        %282 = vector.broadcast %false : i1 to vector<6xi1>
        %283 = vector.transfer_write %282, %13[%c1, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi1>, tensor<14x3xi1>
        %284 = math.atan %5 : tensor<14x3xf16>
        bufferization.dealloc_tensor %13 : tensor<14x3xi1>
        %285 = vector.multi_reduction <add>, %280, %cst [0] : vector<6xf16> to f16
        %286 = math.log10 %7 : tensor<14x3xf32>
        %287 = bufferization.to_tensor %alloc_6 : memref<3xi1>
        %288 = vector.bitcast %36 : vector<14xi1> to vector<14xi1>
        %289 = tensor.empty() : tensor<3x14xi16>
        scf.yield %c-6816_i16 : i16
      }
      %270 = vector.extract %19[2] : vector<6xf16>
      %271 = arith.negf %cst : f16
      bufferization.dealloc_tensor %11 : tensor<3xi16>
      vector.print %19 : vector<6xf16>
      %272 = bufferization.clone %alloc_18 : memref<3xf16> to memref<3xf16>
      %273 = arith.muli %c665835470_i32, %c1210957407_i32 : i32
      %274 = arith.remf %cst_2, %cst_2 : f32
      %alloc_38 = memref.alloc() : memref<3x14xi16>
      memref.copy %alloc_15, %alloc_38 : memref<3x14xi16> to memref<3x14xi16>
      scf.yield %19 : vector<6xf16>
    }
    %72 = arith.addi %c27201_i16, %c-6816_i16 : i16
    %73 = scf.while (%arg0 = %alloc_10) : (memref<3x14xi64>) -> memref<3x14xi64> {
      %263 = arith.subi %c-9062_i16, %c-6816_i16 : i16
      %264 = memref.load %alloc_10[%c1, %c11] : memref<3x14xi64>
      %265 = math.ipowi %c1210957407_i32, %c1210957407_i32 : i32
      %266 = arith.maxf %cst_0, %cst : f16
      %267 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 mod 16) floordiv 16 - 32 == 0, d2 mod 8 + 128 == 0, (d0 mod 16) floordiv 16 == 0, (d2 mod 8) * 64 >= 0)>(%c10, %c12, %c15, %c6) -> memref<11x3xi1> {
        %rank_37 = tensor.rank %0 : tensor<3xf16>
        %272 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c14, %c3, %28)
        %273 = arith.addi %c-9062_i16, %c4509_i16 : i16
        %274 = arith.minf %cst_1, %cst_2 : f32
        %275 = arith.shli %c665835470_i32, %c135673915_i32 : i32
        %276 = math.absi %c4509_i16 : i16
        %277 = arith.ori %false, %false : i1
        %278 = arith.muli %c665835470_i32, %c1285476782_i32 : i32
        %alloc_38 = memref.alloc() : memref<11x3xi1>
        affine.yield %alloc_38 : memref<11x3xi1>
      } else {
        %272 = vector.reduction <add>, %62 : vector<14xf16> into f16
        %273 = index.maxs %c11, %27
        %274 = index.castu %c4509_i16 : i16 to index
        %275 = arith.remf %cst_0, %cst_0 : f16
        %276 = arith.muli %c1210957407_i32, %c1587616062_i32 : i32
        %277 = vector.bitcast %62 : vector<14xf16> to vector<14xf16>
        %278 = index.divu %38, %274
        %279 = math.cttz %c-6816_i16 : i16
        %alloc_37 = memref.alloc() : memref<11x3xi1>
        affine.yield %alloc_37 : memref<11x3xi1>
      }
      %268 = math.tanh %1 : tensor<14x3xf32>
      %269 = vector.broadcast %false : i1 to vector<14x14xi1>
      %270 = vector.outerproduct %40, %40, %269 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
      %271 = arith.remsi %c1852420563_i64, %c1852420563_i64 : i64
      scf.condition(%false) %alloc_10 : memref<3x14xi64>
    } do {
    ^bb0(%arg0: memref<3x14xi64>):
      %263 = tensor.empty() : tensor<11x3xi32>
      %264 = math.fpowi %2, %263 : tensor<11x3xf16>, tensor<11x3xi32>
      %265 = bufferization.clone %alloc_18 : memref<3xf16> to memref<3xf16>
      %266 = vector.broadcast %c-6816_i16 : i16 to vector<3x14xi16>
      %267 = scf.while (%arg1 = %c1210957407_i32) : (i32) -> i32 {
        %alloc_39 = memref.alloc() : memref<14x3xf32>
        memref.tensor_store %16, %alloc_39 : memref<14x3xf32>
        %279 = vector.shuffle %40, %36 [0, 1, 8, 10, 15, 16, 18, 21, 22, 23, 26] : vector<14xi1>, vector<14xi1>
        %280 = arith.maxf %cst_0, %cst_0 : f16
        %281 = math.log1p %16 : tensor<14x3xf32>
        %282 = arith.minsi %c4509_i16, %25 : i16
        %283 = math.ctlz %c-32686_i16 : i16
        bufferization.dealloc_tensor %11 : tensor<3xi16>
        %284 = vector.bitcast %62 : vector<14xf16> to vector<14xf16>
        scf.condition(%false) %c1587616062_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %279 = index.add %c13, %c4
        %280 = math.copysign %2, %2 : tensor<11x3xf16>
        %281 = vector.broadcast %c27201_i16 : i16 to vector<3xi16>
        %282 = index.floordivs %c15, %c3
        %283 = bufferization.to_memref %0 : memref<3xf16>
        %284 = bufferization.clone %alloc_16 : memref<14x3xi32> to memref<14x3xi32>
        %285 = math.copysign %15, %14 : tensor<3xf32>
        %286 = math.ctlz %263 : tensor<11x3xi32>
        %287 = index.floordivs %c4, %279
        %288 = vector.broadcast %cst_2 : f32 to vector<11x3xf32>
        %289 = vector.fma %288, %288, %288 : vector<11x3xf32>
        %290 = arith.muli %false, %false : i1
        %291 = math.ctlz %arg1 : i32
        %292 = math.exp2 %15 : tensor<3xf32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %34, %34, %cst : vector<6xf16>, vector<6xf16> into f16
        %294 = arith.muli %c1587616062_i32, %c135673915_i32 : i32
        %295 = index.castu %c1852420563_i64 : i64 to index
        scf.yield %c665835470_i32 : i32
      }
      %268 = arith.addi %c1285476782_i32, %c665835470_i32 : i32
      %false_37 = arith.constant false
      %false_38 = arith.constant false
      %269 = vector.transfer_read %alloc_6[%c2], %false_38 : memref<3xi1>, vector<i1>
      %270 = index.divs %c8, %27
      %271 = index.ceildivu %58, %c10
      %272 = index.sizeof
      vector.print %35 : vector<14xf16>
      %273 = memref.realloc %alloc_7 : memref<3xi64> to memref<3xi64>
      %274 = tensor.empty() : tensor<3x3x3xf16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%274 : tensor<3x3x3xf16>) {
      ^bb0(%out: f16):
        %279 = index.ceildivs %c2, %c1
        %280 = arith.divui %c665835470_i32, %c1210957407_i32 : i32
        %281 = arith.remf %cst, %cst_0 : f16
        %282 = arith.mulf %cst, %cst : f16
        %283 = vector.load %47[%c2, %c2] : memref<11x3xi16>, vector<11x3xi16>
        %284 = arith.negf %cst_2 : f32
        %285 = math.ipowi %12, %12 : tensor<3xi1>
        %286 = bufferization.clone %alloc_14 : memref<3x14xi32> to memref<3x14xi32>
        memref.copy %286, %alloc_12 : memref<3x14xi32> to memref<3x14xi32>
        %287 = index.casts %false : i1 to index
        %288 = arith.shrui %25, %c-32686_i16 : i16
        %true_39 = index.bool.constant true
        %289 = arith.shli %false, %true_39 : i1
        %290 = vector.insert %cst, %62 [1] : f16 into vector<14xf16>
        %291 = vector.broadcast %false : i1 to vector<3xi1>
        %292 = vector.transfer_write %291, %13[%27, %28] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<14x3xi1>
        %293 = arith.remui %c4509_i16, %c27201_i16 : i16
        %294 = vector.reduction <minsi>, %36 : vector<14xi1> into i1
        %rank_40 = tensor.rank %7 : tensor<14x3xf32>
        %295 = math.round %out : f16
        %296 = memref.atomic_rmw andi %c1587616062_i32, %alloc_14[%c0, %c3] : (i32, memref<3x14xi32>) -> i32
        %297 = math.atan %30 : tensor<14x3xf16>
        %298 = math.tanh %cst : f16
        %299 = index.maxu %rank_40, %c4
        %300 = vector.transpose %36, [0] : vector<14xi1> to vector<14xi1>
        %301 = vector.extract %19[5] : vector<6xf16>
        %302 = arith.minsi %c-6816_i16, %25 : i16
        %cst_41 = arith.constant 1.000000e+00 : f16
        %cst_42 = arith.constant 0.000000e+00 : f16
        %303 = vector.transfer_read %4[%299, %c4], %cst_42 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x14xf16>, vector<6xf16>
        %304 = arith.minf %out, %cst_0 : f16
        %alloca_43 = memref.alloca() : memref<3xi16>
        %305 = bufferization.clone %alloc_8 : memref<11x3xf16> to memref<11x3xf16>
        %306 = arith.divsi %c1285476782_i32, %c135673915_i32 : i32
        %307 = index.castu %25 : i16 to index
        linalg.yield %out : f16
      } -> tensor<3x3x3xf16>
      %276 = arith.cmpi ult, %c135673915_i32, %c1210957407_i32 : i32
      %277 = vector.multi_reduction <add>, %35, %37 [] : vector<14xf16> to vector<14xf16>
      %278 = arith.shli %c4509_i16, %c27201_i16 : i16
      bufferization.dealloc_tensor %11 : tensor<3xi16>
      scf.yield %alloc_10 : memref<3x14xi64>
    }
    %74 = vector.extract %36[0] : vector<14xi1>
    memref.tensor_store %30, %alloc_5 : memref<14x3xf16>
    %splat_23 = tensor.splat %cst_1 : tensor<11x3xf32>
    %75 = arith.cmpf uno, %cst_2, %cst_1 : f32
    memref.tensor_store %20, %alloc : memref<3xi32>
    %76 = vector.matrix_multiply %37, %19 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xf16>, vector<6xf16>) -> vector<21xf16>
    %77 = vector.matrix_multiply %34, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
    %78 = vector.extract_strided_slice %35 {offsets = [11], sizes = [3], strides = [1]} : vector<14xf16> to vector<3xf16>
    %79 = vector.flat_transpose %77 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %80 = index.castu %c1210957407_i32 : i32 to index
    %81 = math.cttz %9 : tensor<3x14xi16>
    %82 = vector.flat_transpose %40 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
    %83 = math.cos %14 : tensor<3xf32>
    %84 = vector.broadcast %c1285476782_i32 : i32 to vector<i32>
    vector.transfer_write %84, %alloc[%c11] : vector<i32>, memref<3xi32>
    %85 = affine.apply affine_map<(d0, d1, d2) -> (d0 - 16)>(%c6, %c12, %c3)
    %86 = index.floordivs %c9, %c9
    %87 = arith.ori %c1210957407_i32, %c1587616062_i32 : i32
    %88 = math.log10 %0 : tensor<3xf16>
    %89 = affine.load %alloc_9[%c8, %c7] : memref<3x14xf16>
    %90 = index.maxs %c8, %c3
    %91 = index.ceildivs %86, %c15
    memref.store %c-6816_i16, %alloc_15[%c2, %c0] : memref<3x14xi16>
    %true_24 = index.bool.constant true
    %92 = vector.broadcast %false : i1 to vector<i1>
    %93 = vector.transfer_write %92, %12[%86] : vector<i1>, tensor<3xi1>
    %94 = vector.broadcast %cst_0 : f16 to vector<3x11xf16>
    %95 = vector.broadcast %cst : f16 to vector<11xf16>
    %dest, %accumulated_value = vector.scan <add>, %94, %95 {inclusive = false, reduction_dim = 0 : i64} : vector<3x11xf16>, vector<11xf16>
    %96 = math.log10 %0 : tensor<3xf16>
    %97 = scf.while (%arg0 = %47) : (memref<11x3xi16>) -> memref<11x3xi16> {
      %263 = vector.bitcast %40 : vector<14xi1> to vector<14xi1>
      %264 = vector.splat %cst : vector<3xf16>
      %265 = vector.matrix_multiply %79, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %266 = arith.remf %cst_2, %cst_1 : f32
      %267 = scf.while (%arg1 = %alloc_6) : (memref<3xi1>) -> memref<3xi1> {
        %271 = arith.remsi %false, %true_24 : i1
        %272 = vector.broadcast %c-6816_i16 : i16 to vector<3xi16>
        %273 = vector.broadcast %true_24 : i1 to vector<3xi1>
        %274 = vector.maskedload %arg0[%c1, %c2], %273, %272 : memref<11x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %from_elements_38 = tensor.from_elements %cst, %89, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %89, %cst_0, %89, %cst_0, %89, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %89, %cst, %cst, %cst_0, %cst_0, %89, %cst_0, %cst, %cst, %89, %cst : tensor<14x3xf16>
        %275 = index.floordivs %c9, %91
        %276 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %277 = vector.fma %276, %276, %276 : vector<3xf32>
        %278 = memref.atomic_rmw ori %c162211059_i64, %alloc_7[%c0] : (i64, memref<3xi64>) -> i64
        %279 = vector.flat_transpose %76 {columns = 7 : i32, rows = 3 : i32} : vector<21xf16> -> vector<21xf16>
        %280 = math.tanh %5 : tensor<14x3xf16>
        scf.condition(%false) %alloc_6 : memref<3xi1>
      } do {
      ^bb0(%arg1: memref<3xi1>):
        %271 = math.expm1 %1 : tensor<14x3xf32>
        %272 = math.ipowi %c1210957407_i32, %c1587616062_i32 : i32
        %273 = arith.divui %c4509_i16, %c-32686_i16 : i16
        %274 = affine.load %alloc_8[%c11, %c14] : memref<11x3xf16>
        %275 = vector.splat %c0 : vector<3xindex>
        %276 = bufferization.clone %arg1 : memref<3xi1> to memref<3xi1>
        %alloc_38 = memref.alloc() : memref<11x3xi64>
        %277 = math.ipowi %25, %c-9062_i16 : i16
        %278 = math.log10 %0 : tensor<3xf16>
        %279 = math.absi %22 : tensor<i32>
        %280 = arith.floordivsi %c1587616062_i32, %c665835470_i32 : i32
        %281 = arith.floordivsi %c1587616062_i32, %c1210957407_i32 : i32
        %282 = index.ceildivs %38, %c0
        %283 = arith.remui %c665835470_i32, %c1587616062_i32 : i32
        %alloc_39 = memref.alloc() : memref<14x3xi16>
        %284 = math.ceil %89 : f16
        scf.yield %alloc_6 : memref<3xi1>
      }
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_37 = arith.constant 0 : i16
      %268 = vector.transfer_read %47[%c9, %c2], %c0_i16_37 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<11x3xi16>, vector<6xi16>
      %269 = arith.minsi %c-32686_i16, %c1_i16 : i16
      %270 = math.sqrt %15 : tensor<3xf32>
      scf.condition(%true_24) %arg0 : memref<11x3xi16>
    } do {
    ^bb0(%arg0: memref<11x3xi16>):
      %263 = vector.extract_strided_slice %62 {offsets = [8], sizes = [3], strides = [1]} : vector<14xf16> to vector<3xf16>
      %264 = bufferization.clone %alloc_14 : memref<3x14xi32> to memref<3x14xi32>
      %265 = math.sqrt %splat : tensor<3xf16>
      %266 = memref.load %alloc_9[%c0, %c5] : memref<3x14xf16>
      %267 = arith.negf %cst_0 : f16
      %268 = math.expm1 %14 : tensor<3xf32>
      %269 = arith.remf %cst_1, %cst_2 : f32
      %270 = vector.broadcast %c135673915_i32 : i32 to vector<14xi32>
      %271 = vector.maskedload %264[%c1, %c5], %36, %270 : memref<3x14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
      %272 = vector.broadcast %cst_2 : f32 to vector<3xf32>
      %273 = vector.fma %272, %272, %272 : vector<3xf32>
      %274 = math.copysign %cst_0, %cst : f16
      %275 = arith.xori %25, %c4509_i16 : i16
      bufferization.dealloc_tensor %0 : tensor<3xf16>
      %276 = math.tan %7 : tensor<14x3xf32>
      %277 = math.ceil %5 : tensor<14x3xf16>
      %278 = index.floordivs %c15, %43
      %collapsed_37 = tensor.collapse_shape %5 [[0, 1]] : tensor<14x3xf16> into tensor<42xf16>
      scf.yield %alloc_3 : memref<11x3xi16>
    }
    %98 = arith.negf %cst_2 : f32
    %99 = vector.insertelement %89, %19[%43 : index] : vector<6xf16>
    %100 = math.log10 %splat : tensor<3xf16>
    %101 = bufferization.clone %alloc_17 : memref<14x3xf16> to memref<14x3xf16>
    %102 = math.log10 %17 : tensor<14x3xf32>
    %103 = index.divu %c9, %c13
    %104 = vector.broadcast %c4509_i16 : i16 to vector<11xi16>
    %105 = vector.transfer_write %104, %9[%85, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<3x14xi16>
    %rank = tensor.rank %7 : tensor<14x3xf32>
    %106 = arith.remf %cst, %cst_0 : f16
    %107 = vector.broadcast %c665835470_i32 : i32 to vector<14x3xi32>
    %108 = scf.while (%arg0 = %cst_0) : (f16) -> f16 {
      %263 = vector.load %alloc_18[%c0] : memref<3xf16>, vector<11x3xf16>
      %264 = math.atan2 %15, %14 : tensor<3xf32>
      %265 = math.powf %7, %16 : tensor<14x3xf32>
      %266 = arith.remsi %c665835470_i32, %c1210957407_i32 : i32
      memref.tensor_store %10, %alloc_16 : memref<14x3xi32>
      %267 = arith.negf %arg0 : f16
      %268 = index.sub %c14, %c13
      %extracted = tensor.extract %0[%c2] : tensor<3xf16>
      scf.condition(%true_24) %89 : f16
    } do {
    ^bb0(%arg0: f16):
      %263 = math.expm1 %4 : tensor<3x14xf16>
      %264 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
      %265 = vector.outerproduct %62, %35, %264 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
      %266 = memref.atomic_rmw ori %25, %alloc_4[%c7, %c0] : (i16, memref<11x3xi16>) -> i16
      %267 = math.expm1 %1 : tensor<14x3xf32>
      %268 = scf.while (%arg1 = %alloc_13) : (memref<14x3xi1>) -> memref<14x3xi1> {
        %280 = affine.apply affine_map<(d0) -> (-128)>(%c3)
        %281 = math.expm1 %17 : tensor<14x3xf32>
        %282 = vector.broadcast %arg0 : f16 to vector<6x6xf16>
        %283 = vector.outerproduct %19, %34, %282 {kind = #vector.kind<add>} : vector<6xf16>, vector<6xf16>
        %false_39 = index.bool.constant false
        %284 = arith.divui %c135673915_i32, %c135673915_i32 : i32
        %285 = vector.broadcast %c1852420563_i64 : i64 to vector<3xi64>
        %286 = math.roundeven %splat_23 : tensor<11x3xf32>
        %287 = math.cttz %c135673915_i32 : i32
        scf.condition(%true_24) %arg1 : memref<14x3xi1>
      } do {
      ^bb0(%arg1: memref<14x3xi1>):
        %280 = index.castu %c665835470_i32 : i32 to index
        %281 = index.ceildivs %86, %c3
        %collapsed_39 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x14xi16> into tensor<42xi16>
        %282 = math.expm1 %16 : tensor<14x3xf32>
        memref.tensor_store %0, %alloc_18 : memref<3xf16>
        memref.copy %alloc_5, %alloc_17 : memref<14x3xf16> to memref<14x3xf16>
        %283 = arith.shli %25, %25 : i16
        %284 = math.exp2 %cst_0 : f16
        %285 = vector.broadcast %c135673915_i32 : i32 to vector<3xi32>
        %dest_40, %accumulated_value_41 = vector.scan <minsi>, %107, %285 {inclusive = true, reduction_dim = 0 : i64} : vector<14x3xi32>, vector<3xi32>
        memref.store %false, %alloc_13[%c1, %c0] : memref<14x3xi1>
        %286 = vector.load %alloc_10[%c1, %c4] : memref<3x14xi64>, vector<11x3xi64>
        %287 = memref.atomic_rmw assign %c1210957407_i32, %alloc_14[%c2, %c1] : (i32, memref<3x14xi32>) -> i32
        %288 = index.ceildivu %c2, %80
        %289 = arith.minf %cst_2, %cst_1 : f32
        %290 = math.log2 %cst_0 : f16
        %291 = vector.load %alloc_18[%c2] : memref<3xf16>, vector<3xf16>
        scf.yield %arg1 : memref<14x3xi1>
      }
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d1 - 4)>(%c2, %91, %90, %27)
      %270 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - d0 - (d0 - d2)) floordiv 4)>(%c1, %c2, %c12)
      %271 = arith.negf %89 : f16
      %272 = vector.broadcast %c1285476782_i32 : i32 to vector<14xi32>
      %dest_37, %accumulated_value_38 = vector.scan <maxsi>, %107, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<14x3xi32>, vector<14xi32>
      %273 = tensor.empty() : tensor<14x3xf16>
      %mapped = linalg.map ins(%30 : tensor<14x3xf16>) outs(%273 : tensor<14x3xf16>)
        (%in: f16) {
          %280 = memref.atomic_rmw addi %c665835470_i32, %alloc_16[%c6, %c2] : (i32, memref<14x3xi32>) -> i32
          %281 = index.casts %true_24 : i1 to index
          %282 = arith.addi %c-9062_i16, %c4509_i16 : i16
          %283 = arith.minf %in, %arg0 : f16
          %284 = math.tanh %89 : f16
          %285 = math.tanh %0 : tensor<3xf16>
          %286 = vector.bitcast %37 : vector<14xf16> to vector<14xf16>
          %287 = math.log1p %7 : tensor<14x3xf32>
          %288 = vector.broadcast %25 : i16 to vector<3xi16>
          %289 = vector.broadcast %true_24 : i1 to vector<3xi1>
          %290 = vector.broadcast %c1285476782_i32 : i32 to vector<3xi32>
          %291 = vector.gather %47[%28, %c7] [%290], %289, %288 : memref<11x3xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %292 = arith.shrsi %c1852420563_i64, %c162211059_i64 : i64
          %cast_39 = tensor.cast %7 : tensor<14x3xf32> to tensor<?x?xf32>
          %293 = math.log10 %cst_2 : f32
          %294 = arith.shrsi %c-9062_i16, %c-32686_i16 : i16
          %295 = arith.floordivsi %c162211059_i64, %c1852420563_i64 : i64
          %296 = index.castu %c2 : index to i32
          %297 = math.atan2 %1, %7 : tensor<14x3xf32>
          %298 = arith.remsi %c4509_i16, %c27201_i16 : i16
          %299 = index.casts %c1587616062_i32 : i32 to index
          %300 = math.ceil %splat : tensor<3xf16>
          %301 = arith.muli %c1587616062_i32, %c135673915_i32 : i32
          %302 = math.powf %15, %15 : tensor<3xf32>
          %303 = math.log1p %14 : tensor<3xf32>
          %304 = arith.addi %c27201_i16, %25 : i16
          %305 = math.expm1 %cst_2 : f32
          bufferization.dealloc_tensor %1 : tensor<14x3xf32>
          %306 = math.sqrt %4 : tensor<3x14xf16>
          %307 = vector.insert %arg0, %78 [0] : f16 into vector<3xf16>
          %308 = vector.broadcast %cst_2 : f32 to vector<11x3xf32>
          %309 = vector.fma %308, %308, %308 : vector<11x3xf32>
          %c1778193965_i64 = arith.constant 1778193965 : i64
          %310 = math.exp2 %cst_1 : f32
          %311 = arith.remsi %c4509_i16, %c4509_i16 : i16
          %312 = arith.subi %c-9062_i16, %25 : i16
          %cst_40 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_40 : f16
        }
      %274 = math.copysign %14, %14 : tensor<3xf32>
      %275 = math.ceil %arg0 : f16
      %276 = math.absi %10 : tensor<14x3xi32>
      %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %79, %79, %cst_0 : vector<1xf16>, vector<1xf16> into f16
      %278 = index.floordivs %c12, %c15
      %279 = arith.muli %false, %true_24 : i1
      scf.yield %arg0 : f16
    }
    %109 = vector.extract %19[1] : vector<6xf16>
    %110 = math.fpowi %17, %10 : tensor<14x3xf32>, tensor<14x3xi32>
    %111 = math.copysign %14, %15 : tensor<3xf32>
    %112 = math.log10 %17 : tensor<14x3xf32>
    %113 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d2 * -4, d0 - 4)>(%rank, %c12, %c6, %rank)
    %c0_i16 = arith.constant 0 : i16
    %114 = vector.transfer_read %alloc_15[%85, %86], %c0_i16 : memref<3x14xi16>, vector<i16>
    %115 = arith.floordivsi %c1852420563_i64, %c1852420563_i64 : i64
    %116 = arith.remui %c162211059_i64, %c1852420563_i64 : i64
    %117 = arith.maxf %cst, %89 : f16
    %118 = arith.shrui %c4509_i16, %c-6816_i16 : i16
    %119 = arith.ori %c1285476782_i32, %c665835470_i32 : i32
    %120 = arith.floordivsi %true_24, %true_24 : i1
    %121 = arith.cmpi ugt, %c-32686_i16, %c-6816_i16 : i16
    %122 = bufferization.to_tensor %alloc_14 : memref<3x14xi32>
    %123 = index.floordivs %c15, %c0
    scf.if %true_24 {
      %263 = bufferization.clone %alloc_14 : memref<3x14xi32> to memref<3x14xi32>
      %264 = bufferization.to_tensor %alloc_10 : memref<3x14xi64>
      %false_37 = index.bool.constant false
      %265 = arith.negf %89 : f16
      %266 = tensor.empty() : tensor<3x3x3xf16>
      %267 = tensor.empty() : tensor<3x3xf16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %0, %266 : tensor<3x3xf16>, tensor<3xf16>, tensor<3x3x3xf16>) outs(%266 : tensor<3x3x3xf16>) {
      ^bb0(%in: f16, %in_38: f16, %in_39: f16, %out: f16):
        %272 = arith.remsi %c0_i16, %c0_i16 : i16
        %collapsed_40 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x3xi1> into tensor<42xi1>
        %273 = math.exp %15 : tensor<3xf32>
        %274 = arith.remf %89, %cst : f16
        %275 = math.cttz %c0_i16 : i16
        %276 = arith.cmpf ule, %cst_1, %cst_2 : f32
        %277 = arith.negf %out : f16
        %278 = vector.transpose %84, [] : vector<i32> to vector<i32>
        %279 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %280 = vector.fma %279, %279, %279 : vector<3xf32>
        %cst_41 = arith.constant 1.08462694E+9 : f32
        %281 = math.copysign %splat, %splat : tensor<3xf16>
        %282 = vector.insertelement %cst, %37[%c0 : index] : vector<14xf16>
        %283 = math.copysign %30, %5 : tensor<14x3xf16>
        %284 = math.cttz %12 : tensor<3xi1>
        %285 = math.fpowi %17, %6 : tensor<14x3xf32>, tensor<14x3xi32>
        %286 = index.ceildivu %rank, %c12
        %287 = math.log10 %1 : tensor<14x3xf32>
        %288 = index.casts %c162211059_i64 : i64 to index
        %289 = arith.remf %cst_2, %cst_1 : f32
        memref.store %in_38, %alloc_18[%c0] : memref<3xf16>
        %290 = vector.splat %c0_i16 : vector<14x3xi16>
        %291 = arith.cmpf ueq, %in_38, %in : f16
        %292 = vector.bitcast %77 : vector<1xf16> to vector<1xf16>
        %293 = arith.floordivsi %c1210957407_i32, %c1587616062_i32 : i32
        %294 = math.log10 %2 : tensor<11x3xf16>
        vector.print %40 : vector<14xi1>
        %295 = affine.load %alloc_13[%c6, %c9] : memref<14x3xi1>
        %296 = arith.remf %in, %cst : f16
        %297 = index.divu %27, %c3
        %298 = math.copysign %17, %7 : tensor<14x3xf32>
        %299 = arith.remf %cst_2, %cst_1 : f32
        %300 = math.cttz %c162211059_i64 : i64
        linalg.yield %in : f16
      } -> tensor<3x3x3xf16>
      %269 = vector.broadcast %25 : i16 to vector<i16>
      vector.transfer_write %269, %alloc_4[%c5, %86] : vector<i16>, memref<11x3xi16>
      %270 = index.ceildivs %90, %c1
      %271 = arith.remf %cst, %cst_0 : f16
    } else {
      %263 = index.castu %28 : index to i32
      %264 = tensor.empty() : tensor<14x3xf32>
      %mapped = linalg.map ins(%17, %17 : tensor<14x3xf32>, tensor<14x3xf32>) outs(%264 : tensor<14x3xf32>)
        (%in: f32, %in_39: f32) {
          %270 = arith.remui %c665835470_i32, %c665835470_i32 : i32
          %271 = arith.shrui %c27201_i16, %25 : i16
          %272 = memref.realloc %alloc_7 : memref<3xi64> to memref<14xi64>
          %273 = vector.bitcast %78 : vector<3xf16> to vector<3xf16>
          %274 = memref.load %alloc_16[%c8, %c2] : memref<14x3xi32>
          %275 = bufferization.clone %alloc_5 : memref<14x3xf16> to memref<14x3xf16>
          %276 = affine.load %alloc[%c1] : memref<3xi32>
          %277 = arith.floordivsi %c1210957407_i32, %c1587616062_i32 : i32
          %278 = arith.shrui %c135673915_i32, %276 : i32
          %rank_40 = tensor.rank %264 : tensor<14x3xf32>
          %c0_i64_41 = arith.constant 0 : i64
          %279 = vector.transfer_read %8[%123], %c0_i64_41 : tensor<3xi64>, vector<i64>
          %280 = vector.splat %c12 : vector<11x3xindex>
          %281 = math.sqrt %0 : tensor<3xf16>
          %282 = math.log2 %14 : tensor<3xf32>
          %283 = arith.minf %89, %cst_0 : f16
          %284 = vector.matrix_multiply %62, %273 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 3 : i32} : (vector<14xf16>, vector<3xf16>) -> vector<42xf16>
          %285 = arith.addi %c135673915_i32, %c1587616062_i32 : i32
          %286 = bufferization.to_tensor %alloc_17 : memref<14x3xf16>
          %287 = math.tan %cst_0 : f16
          %288 = vector.multi_reduction <maxf>, %77, %77 [] : vector<1xf16> to vector<1xf16>
          %289 = vector.broadcast %cst : f16 to vector<21x21xf16>
          %290 = vector.outerproduct %76, %76, %289 {kind = #vector.kind<mul>} : vector<21xf16>, vector<21xf16>
          %291 = bufferization.to_tensor %alloc_6 : memref<3xi1>
          %292 = arith.negf %89 : f16
          %293 = index.divu %85, %80
          vector.print %36 : vector<14xi1>
          %294 = math.fpowi %cst, %c1285476782_i32 : f16, i32
          %295 = math.round %4 : tensor<3x14xf16>
          %296 = arith.divf %cst, %cst_0 : f16
          %297 = math.ceil %286 : tensor<14x3xf16>
          %298 = tensor.empty() : tensor<11x3xi1>
          %299 = vector.broadcast %false : i1 to vector<3xi1>
          %300 = vector.broadcast %c1210957407_i32 : i32 to vector<3xi32>
          %301 = vector.gather %298[%113, %c10] [%300], %299, %299 : tensor<11x3xi1>, vector<3xi32>, vector<3xi1>, vector<3xi1> into vector<3xi1>
          memref.tensor_store %4, %alloc_9 : memref<3x14xf16>
          %302 = bufferization.clone %alloc_12 : memref<3x14xi32> to memref<3x14xi32>
          %cst_42 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_42 : f32
        }
      %265 = index.floordivs %c10, %123
      %266 = arith.muli %true_24, %false : i1
      %collapsed_37 = tensor.collapse_shape %5 [[0, 1]] : tensor<14x3xf16> into tensor<42xf16>
      %267 = tensor.empty() : tensor<11x3xf16>
      %mapped_38 = linalg.map ins(%alloc_8, %2, %alloc_8 : memref<11x3xf16>, tensor<11x3xf16>, memref<11x3xf16>) outs(%267 : tensor<11x3xf16>)
        (%in: f16, %in_39: f16, %in_40: f16) {
          %270 = memref.atomic_rmw maxu %c-6816_i16, %alloc_15[%c0, %c0] : (i16, memref<3x14xi16>) -> i16
          %271 = vector.insertelement %false, %92[] : vector<i1>
          %272 = arith.minf %cst_2, %cst_2 : f32
          %273 = bufferization.clone %alloc_6 : memref<3xi1> to memref<3xi1>
          %from_elements_41 = tensor.from_elements %true_24, %false, %true_24, %false, %false, %true_24, %true_24, %false, %true_24, %true_24, %false, %false, %false, %false, %true_24, %true_24, %true_24, %true_24, %false, %true_24, %false, %true_24, %true_24, %false, %true_24, %true_24, %false, %false, %true_24, %false, %false, %true_24, %true_24 : tensor<11x3xi1>
          %274 = memref.atomic_rmw maxf %cst_0, %101[%c5, %c2] : (f16, memref<14x3xf16>) -> f16
          %275 = index.ceildivs %c15, %c15
          %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %104, %104, %c0_i16 : vector<11xi16>, vector<11xi16> into i16
          %277 = vector.splat %c8 : vector<14x3xindex>
          %278 = arith.subi %c-9062_i16, %c-6816_i16 : i16
          bufferization.dealloc_tensor %8 : tensor<3xi64>
          %279 = arith.shli %c665835470_i32, %c135673915_i32 : i32
          %280 = vector.transpose %104, [0] : vector<11xi16> to vector<11xi16>
          %alloc_42 = memref.alloc() : memref<14x3xi16>
          %alloc_43 = memref.alloc() : memref<3x14xi16>
          memref.copy %alloc_15, %alloc_43 : memref<3x14xi16> to memref<3x14xi16>
          %281 = arith.subi %c-9062_i16, %c-9062_i16 : i16
          %282 = arith.minsi %c-32686_i16, %c27201_i16 : i16
          %cst_44 = arith.constant 1.000000e+00 : f16
          %cst_45 = arith.constant 0.000000e+00 : f16
          %283 = vector.transfer_read %alloc_18[%c7], %cst_45 : memref<3xf16>, vector<f16>
          %284 = index.floordivs %c10, %80
          %285 = affine.min affine_map<(d0, d1, d2) -> (0, d0 mod 2)>(%c5, %c4, %91)
          %286 = arith.minf %cst_2, %cst_2 : f32
          %287 = math.fpowi %16, %10 : tensor<14x3xf32>, tensor<14x3xi32>
          %288 = memref.realloc %alloc_6 : memref<3xi1> to memref<14xi1>
          %289 = vector.broadcast %in : f16 to vector<3xf16>
          bufferization.dealloc_tensor %11 : tensor<3xi16>
          memref.assume_alignment %alloc_8, 8 : memref<11x3xf16>
          %290 = math.cttz %c0_i16 : i16
          %291 = arith.addi %c1852420563_i64, %c162211059_i64 : i64
          %292 = vector.multi_reduction <minf>, %77, %cst_0 [0] : vector<1xf16> to f16
          %293 = vector.insert %false, %82 [11] : i1 into vector<14xi1>
          %294 = arith.minf %in_40, %in : f16
          %295 = math.tanh %264 : tensor<14x3xf32>
          %cst_46 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_46 : f16
        }
      %268 = arith.cmpf ugt, %89, %cst : f16
      %269 = arith.floordivsi %c-32686_i16, %c4509_i16 : i16
    }
    %124 = arith.maxf %cst_0, %89 : f16
    %125 = arith.cmpf ogt, %cst, %89 : f16
    %126 = vector.bitcast %37 : vector<14xf16> to vector<14xf16>
    %127 = affine.if affine_set<(d0, d1, d2, d3) : (d2 ceildiv 8 == 0, d2 ceildiv 8 >= 0, (d3 + 1) mod 32 >= 0, d2 + d0 == 0)>(%c12, %c7, %c8, %c5) -> i64 {
      %263 = vector.insert %c4509_i16, %104 [3] : i16 into vector<11xi16>
      %264 = index.ceildivs %c8, %c10
      %265 = memref.atomic_rmw minu %c1210957407_i32, %alloc_12[%c0, %c4] : (i32, memref<3x14xi32>) -> i32
      %266 = arith.maxf %cst_2, %cst_2 : f32
      %267 = tensor.empty() : tensor<3xf32>
      %268 = bufferization.to_memref %15 : memref<3xf32>
      %269 = math.fpowi %15, %20 : tensor<3xf32>, tensor<3xi32>
      %270 = index.sizeof
      affine.yield %c1852420563_i64 : i64
    } else {
      %263 = scf.while (%arg0 = %82) : (vector<14xi1>) -> vector<14xi1> {
        %271 = math.log %cst_2 : f32
        %272 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %splat_39 = tensor.splat %cst_2 : tensor<14x3xf32>
        %273 = math.cttz %12 : tensor<3xi1>
        %274 = vector.extract %36[8] : vector<14xi1>
        %275 = bufferization.to_memref %13 : memref<14x3xi1>
        %276 = arith.remui %25, %c-9062_i16 : i16
        %277 = math.roundeven %7 : tensor<14x3xf32>
        scf.condition(%false) %82 : vector<14xi1>
      } do {
      ^bb0(%arg0: vector<14xi1>):
        %271 = bufferization.clone %alloc_8 : memref<11x3xf16> to memref<11x3xf16>
        %272 = index.divu %86, %c4
        %273 = math.round %cst_1 : f32
        %274 = vector.transpose %92, [] : vector<i1> to vector<i1>
        %275 = math.ceil %17 : tensor<14x3xf32>
        %276 = memref.atomic_rmw maxu %c135673915_i32, %alloc_14[%c1, %c9] : (i32, memref<3x14xi32>) -> i32
        %277 = math.tanh %cst : f16
        %278 = vector.splat %90 : vector<11x3xindex>
        %279 = math.ctpop %3 : tensor<14x3xi16>
        %280 = arith.shrsi %c1852420563_i64, %c162211059_i64 : i64
        %281 = math.ctpop %13 : tensor<14x3xi1>
        %282 = math.cttz %10 : tensor<14x3xi32>
        %283 = index.floordivs %58, %c8
        %284 = index.sub %c14, %283
        %285 = arith.andi %c27201_i16, %c0_i16 : i16
        %286 = math.tan %7 : tensor<14x3xf32>
        scf.yield %40 : vector<14xi1>
      }
      %alloc_37 = memref.alloc() : memref<3xf16>
      memref.copy %alloc_18, %alloc_37 : memref<3xf16> to memref<3xf16>
      %264 = vector.broadcast %c-6816_i16 : i16 to vector<6xi16>
      vector.transfer_write %264, %alloc_4[%c11, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi16>, memref<11x3xi16>
      %265 = index.maxu %113, %27
      %266 = tensor.empty() : tensor<3x3x3xf16>
      %alloc_38 = memref.alloc() : memref<3x3xf16>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38 : memref<3x3xf16>) outs(%266 : tensor<3x3x3xf16>) {
      ^bb0(%in: f16, %out: f16):
        %271 = arith.ori %c162211059_i64, %c162211059_i64 : i64
        %false_39 = index.bool.constant false
        %272 = vector.insert %in, %76 [8] : f16 into vector<21xf16>
        %273 = memref.atomic_rmw addf %cst_1, %alloc_11[%c2, %c11] : (f32, memref<3x14xf32>) -> f32
        %274 = math.cttz %11 : tensor<3xi16>
        %275 = bufferization.clone %alloc_19 : memref<i1> to memref<i1>
        %276 = arith.maxf %cst_0, %cst : f16
        %277 = arith.shli %c0_i16, %c-6816_i16 : i16
        %278 = math.ceil %cst_1 : f32
        %279 = math.copysign %splat, %0 : tensor<3xf16>
        %280 = arith.shli %c27201_i16, %c27201_i16 : i16
        %281 = math.log %7 : tensor<14x3xf32>
        %282 = arith.remui %c162211059_i64, %c1852420563_i64 : i64
        %283 = vector.broadcast %false : i1 to vector<14x14xi1>
        %284 = vector.outerproduct %40, %40, %283 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
        %285 = math.ceil %0 : tensor<3xf16>
        %286 = vector.extract %35[1] : vector<14xf16>
        %287 = arith.andi %c1852420563_i64, %c162211059_i64 : i64
        %288 = math.sqrt %1 : tensor<14x3xf32>
        %289 = arith.divui %c-32686_i16, %c0_i16 : i16
        %290 = arith.shrui %c135673915_i32, %c1587616062_i32 : i32
        %291 = vector.splat %cst_0 : vector<11x3xf16>
        %292 = arith.floordivsi %c1852420563_i64, %c162211059_i64 : i64
        %293 = math.expm1 %splat : tensor<3xf16>
        %294 = math.log10 %2 : tensor<11x3xf16>
        %295 = arith.subi %c1210957407_i32, %c665835470_i32 : i32
        %296 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 4 + 32, d0 floordiv 4 + 32)>(%85, %c4, %rank)
        %297 = vector.broadcast %false_39 : i1 to vector<14x3xi1>
        %298 = vector.gather %12[%c3] [%107], %297, %297 : tensor<3xi1>, vector<14x3xi32>, vector<14x3xi1>, vector<14x3xi1> into vector<14x3xi1>
        %299 = affine.load %alloc[%c3] : memref<3xi32>
        %300 = vector.create_mask %c12 : vector<3xi1>
        %301 = bufferization.clone %alloc : memref<3xi32> to memref<3xi32>
        bufferization.dealloc_tensor %8 : tensor<3xi64>
        %cst_40 = arith.constant 1.13545971E+9 : f32
        linalg.yield %cst : f16
      } -> tensor<3x3x3xf16>
      %268 = bufferization.to_tensor %alloc_18 : memref<3xf16>
      %269 = vector.bitcast %264 : vector<6xi16> to vector<6xf16>
      %270 = index.floordivs %c0, %43
      affine.yield %c1852420563_i64 : i64
    }
    %128 = math.tanh %14 : tensor<3xf32>
    %129 = math.expm1 %cst_2 : f32
    %130 = math.ipowi %c4509_i16, %c27201_i16 : i16
    %131 = math.exp %cst_0 : f16
    %c0_i32 = arith.constant 0 : i32
    %132 = vector.transfer_read %alloc_16[%28, %113], %c0_i32 : memref<14x3xi32>, vector<i32>
    %133 = vector.broadcast %cst_1 : f32 to vector<11xf32>
    %134 = vector.broadcast %false : i1 to vector<11xi1>
    %135 = vector.maskedload %alloc_11[%c1, %c6], %134, %133 : memref<3x14xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
    %136 = vector.broadcast %c665835470_i32 : i32 to vector<14xi32>
    %dest_25, %accumulated_value_26 = vector.scan <xor>, %107, %136 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi32>, vector<14xi32>
    %137 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 64)>(%c15, %c11, %c1, %c15)
    affine.store %89, %alloc_9[%c1, %c15] : memref<3x14xf16>
    %138 = arith.ori %c0_i16, %c0_i16 : i16
    %139 = vector.extract %36[12] : vector<14xi1>
    %140 = vector.broadcast %false : i1 to vector<14x14xi1>
    %141 = vector.outerproduct %40, %82, %140 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
    %142 = arith.subi %c0_i16, %c-9062_i16 : i16
    %143 = vector.multi_reduction <add>, %34, %34 [] : vector<6xf16> to vector<6xf16>
    %144 = arith.mulf %89, %cst_0 : f16
    %145 = tensor.empty(%c0, %c5) : tensor<?x?xi1>
    %146 = math.atan2 %89, %cst : f16
    %147 = arith.subi %c27201_i16, %c0_i16 : i16
    %148 = memref.atomic_rmw muli %c1210957407_i32, %alloc[%c2] : (i32, memref<3xi32>) -> i32
    %149 = arith.cmpf ogt, %cst_1, %cst_2 : f32
    %150 = index.ceildivu %c14, %c8
    %151 = index.maxs %113, %c12
    %cst_27 = arith.constant 1.000000e+00 : f16
    %cst_28 = arith.constant 0.000000e+00 : f16
    %152 = vector.transfer_read %101[%28, %c4], %cst_28 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<14x3xf16>, vector<3xf16>
    vector.print %77 : vector<1xf16>
    %false_29 = index.bool.constant false
    %153 = arith.remui %c0_i16, %c-9062_i16 : i16
    %154 = index.casts %c-9062_i16 : i16 to index
    %155 = arith.subi %c-9062_i16, %c27201_i16 : i16
    %156 = vector.matrix_multiply %19, %37 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<6xf16>, vector<14xf16>) -> vector<21xf16>
    bufferization.dealloc_tensor %10 : tensor<14x3xi32>
    %157 = vector.bitcast %104 : vector<11xi16> to vector<11xi16>
    %158 = tensor.empty() : tensor<11x3xi32>
    %159 = math.fpowi %2, %158 : tensor<11x3xf16>, tensor<11x3xi32>
    %cst_30 = arith.constant 1.000000e+00 : f16
    %160 = vector.transfer_read %30[%113, %c0], %cst_30 : tensor<14x3xf16>, vector<f16>
    bufferization.dealloc_tensor %20 : tensor<3xi32>
    memref.copy %alloc_12, %alloc_14 : memref<3x14xi32> to memref<3x14xi32>
    %161 = memref.load %alloc_12[%c2, %c1] : memref<3x14xi32>
    %162 = arith.subi %c1285476782_i32, %c1285476782_i32 : i32
    %163 = vector.multi_reduction <maxsi>, %157, %157 [] : vector<11xi16> to vector<11xi16>
    %164 = vector.transpose %76, [0] : vector<21xf16> to vector<21xf16>
    %165 = vector.broadcast %c-9062_i16 : i16 to vector<i16>
    vector.transfer_write %165, %alloc_3[%c9, %85] : vector<i16>, memref<11x3xi16>
    %166 = arith.minui %25, %c4509_i16 : i16
    %167 = bufferization.clone %alloc_6 : memref<3xi1> to memref<3xi1>
    %168 = memref.load %alloc_12[%c0, %c0] : memref<3x14xi32>
    %169 = index.castu %86 : index to i32
    %170 = math.atan %cst_0 : f16
    %171 = vector.load %alloc_17[%c5, %c1] : memref<14x3xf16>, vector<3x14xf16>
    %172 = arith.minsi %c-6816_i16, %c-6816_i16 : i16
    %173 = bufferization.clone %101 : memref<14x3xf16> to memref<14x3xf16>
    memref.store %cst_27, %alloc_18[%c2] : memref<3xf16>
    %174 = scf.execute_region -> index {
      %263 = arith.cmpf ogt, %cst_27, %cst_0 : f16
      %264 = vector.transpose %59, [] : vector<f16> to vector<f16>
      %265 = arith.ori %c-6816_i16, %c-32686_i16 : i16
      %266 = math.roundeven %15 : tensor<3xf32>
      %267 = math.sqrt %cst_1 : f32
      %268 = math.absi %8 : tensor<3xi64>
      %269 = index.mul %c5, %c15
      %270 = arith.mulf %cst_27, %cst_0 : f16
      %271 = arith.minui %c-6816_i16, %c-9062_i16 : i16
      %272 = scf.if %true_24 -> (memref<14x3xi32>) {
        %277 = math.round %cst_27 : f16
        %278 = vector.insert %cst_27, %79 [0] : f16 into vector<1xf16>
        %279 = vector.multi_reduction <xor>, %157, %157 [] : vector<11xi16> to vector<11xi16>
        %280 = vector.transpose %79, [0] : vector<1xf16> to vector<1xf16>
        %281 = arith.addf %cst_0, %cst : f16
        %282 = arith.shli %c162211059_i64, %c1852420563_i64 : i64
        %283 = vector.extract %157[9] : vector<11xi16>
        %284 = math.tanh %16 : tensor<14x3xf32>
        scf.yield %alloc_16 : memref<14x3xi32>
      } else {
        %277 = index.ceildivs %c3, %c1
        %278 = vector.flat_transpose %156 {columns = 7 : i32, rows = 3 : i32} : vector<21xf16> -> vector<21xf16>
        %279 = math.atan %1 : tensor<14x3xf32>
        %280 = arith.muli %c-6816_i16, %25 : i16
        %281 = math.log10 %2 : tensor<11x3xf16>
        %282 = bufferization.clone %alloc_15 : memref<3x14xi16> to memref<3x14xi16>
        %283 = vector.broadcast %151 : index to vector<6xindex>
        %284 = vector.broadcast %false_29 : i1 to vector<6xi1>
        vector.scatter %alloc_17[%c9, %c2] [%283], %284, %19 : memref<14x3xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %splat_37 = tensor.splat %c1285476782_i32 : tensor<11x3xi32>
        scf.yield %alloc_16 : memref<14x3xi32>
      }
      memref.tensor_store %8, %alloc_7 : memref<3xi64>
      %273 = index.maxu %c14, %c15
      %274 = math.tanh %cst_1 : f32
      %275 = bufferization.to_tensor %alloc_10 : memref<3x14xi64>
      %276 = arith.shli %c4509_i16, %25 : i16
      %inserted = tensor.insert %cst_2 into %1[%c11, %c2] : tensor<14x3xf32>
      scf.yield %85 : index
    }
    %175 = math.tan %cst_0 : f16
    %176 = arith.divf %cst_30, %cst_0 : f16
    %177 = bufferization.clone %101 : memref<14x3xf16> to memref<14x3xf16>
    %178 = bufferization.clone %alloc_10 : memref<3x14xi64> to memref<3x14xi64>
    %179 = math.copysign %splat, %splat : tensor<3xf16>
    %180 = arith.muli %c27201_i16, %c-32686_i16 : i16
    %181 = arith.divui %c4509_i16, %c-6816_i16 : i16
    %182 = arith.shrsi %c135673915_i32, %c1210957407_i32 : i32
    %183 = math.ctpop %9 : tensor<3x14xi16>
    %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<14x3xi1> into tensor<42xi1>
    %184 = index.castu %154 : index to i32
    %185 = arith.divui %c1587616062_i32, %c0_i32 : i32
    %186 = scf.execute_region -> f16 {
      %263 = scf.if %false -> (f32) {
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %133, %133, %cst_1 : vector<11xf32>, vector<11xf32> into f32
        %282 = arith.muli %c0_i32, %c1210957407_i32 : i32
        %283 = vector.broadcast %true_24 : i1 to vector<3xi1>
        %284 = vector.broadcast %c665835470_i32 : i32 to vector<3xi32>
        %285 = vector.gather %alloc_18[%rank] [%284], %283, %78 : memref<3xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %286 = index.casts %c14 : index to i32
        %from_elements_37 = tensor.from_elements %cst_30, %89, %cst_30, %cst, %cst_27, %cst, %cst, %89, %cst_27, %89, %cst_30, %cst, %cst_0, %cst, %cst_0, %cst_30, %cst_30, %cst_27, %cst, %cst_27, %cst_27, %cst_0, %cst_27, %cst_27, %cst, %89, %cst, %cst_27, %89, %89, %cst, %cst_30, %cst_27 : tensor<11x3xf16>
        %287 = vector.transpose %157, [0] : vector<11xi16> to vector<11xi16>
        %288 = memref.atomic_rmw assign %cst_0, %alloc_18[%c0] : (f16, memref<3xf16>) -> f16
        %289 = vector.maskedload %alloc_12[%c2, %c2], %283, %284 : memref<3x14xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        scf.yield %cst_1 : f32
      } else {
        %inserted = tensor.insert %89 into %splat[%c0] : tensor<3xf16>
        %281 = bufferization.clone %alloc_16 : memref<14x3xi32> to memref<14x3xi32>
        %282 = arith.muli %c1210957407_i32, %c1285476782_i32 : i32
        %283 = math.round %7 : tensor<14x3xf32>
        %284 = math.ctlz %c-9062_i16 : i16
        %285 = math.copysign %cst, %cst_27 : f16
        %286 = memref.atomic_rmw maxf %cst_27, %173[%c1, %c1] : (f16, memref<14x3xf16>) -> f16
        %287 = math.round %cst_1 : f32
        scf.yield %cst_1 : f32
      }
      %264 = arith.minsi %c1285476782_i32, %c665835470_i32 : i32
      %265 = math.log10 %2 : tensor<11x3xf16>
      %266 = scf.execute_region -> tensor<3x14xi32> {
        %281 = math.round %1 : tensor<14x3xf32>
        %282 = arith.muli %c-6816_i16, %c-6816_i16 : i16
        %283 = vector.load %alloc_6[%c0] : memref<3xi1>, vector<14x3xi1>
        %284 = arith.andi %c-9062_i16, %c-9062_i16 : i16
        %285 = vector.broadcast %false_29 : i1 to vector<3xi1>
        %286 = vector.maskedload %177[%c3, %c0], %285, %78 : memref<14x3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %287 = vector.maskedload %alloc_19[], %134, %134 : memref<i1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %288 = arith.remf %cst_0, %cst_30 : f16
        %289 = math.ipowi %true_24, %false_29 : i1
        %290 = math.cttz %c27201_i16 : i16
        %291 = math.exp %splat_23 : tensor<11x3xf32>
        %rank_37 = tensor.rank %21 : tensor<i32>
        %false_38 = index.bool.constant false
        %292 = arith.divui %false_29, %false_38 : i1
        %293 = index.castu %c-6816_i16 : i16 to index
        %294 = index.divu %rank, %58
        %295 = arith.muli %false, %false_29 : i1
        scf.yield %122 : tensor<3x14xi32>
      }
      %267 = vector.bitcast %19 : vector<6xf16> to vector<6xf16>
      %268 = vector.broadcast %c-32686_i16 : i16 to vector<11x11xi16>
      %269 = vector.outerproduct %104, %157, %268 {kind = #vector.kind<and>} : vector<11xi16>, vector<11xi16>
      %270 = memref.atomic_rmw maxu %c135673915_i32, %alloc_12[%c1, %c10] : (i32, memref<3x14xi32>) -> i32
      %271 = math.tanh %5 : tensor<14x3xf16>
      %272 = vector.load %101[%c0, %c2] : memref<14x3xf16>, vector<14x3xf16>
      %273 = index.divs %c10, %154
      %274 = vector.matrix_multiply %133, %135 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
      %275 = math.tanh %splat_23 : tensor<11x3xf32>
      %276 = math.exp2 %2 : tensor<11x3xf16>
      %277 = vector.broadcast %false : i1 to vector<11x11xi1>
      %278 = vector.outerproduct %134, %134, %277 {kind = #vector.kind<mul>} : vector<11xi1>, vector<11xi1>
      %279 = arith.negf %cst_2 : f32
      %280 = math.roundeven %14 : tensor<3xf32>
      scf.yield %cst_30 : f16
    }
    %187 = affine.apply affine_map<(d0, d1) -> (d0 + 1)>(%151, %rank)
    %188 = math.tanh %0 : tensor<3xf16>
    bufferization.dealloc_tensor %6 : tensor<14x3xi32>
    %189 = arith.remf %186, %cst : f16
    %190 = math.round %2 : tensor<11x3xf16>
    %191 = arith.remsi %c1587616062_i32, %c1587616062_i32 : i32
    %192 = vector.load %alloc_8[%c1, %c1] : memref<11x3xf16>, vector<3xf16>
    %193 = scf.while (%arg0 = %c4509_i16) : (i16) -> i16 {
      %263 = index.ceildivs %123, %c2
      %264 = index.divu %rank, %c1
      %265 = math.cttz %3 : tensor<14x3xi16>
      %c0_i16_37 = arith.constant 0 : i16
      %266 = vector.transfer_read %11[%90], %c0_i16_37 : tensor<3xi16>, vector<i16>
      scf.execute_region {
        %271 = arith.andi %c1587616062_i32, %c135673915_i32 : i32
        %272 = index.casts %c-9062_i16 : i16 to index
        %273 = arith.cmpf ogt, %cst_27, %cst_30 : f16
        %274 = tensor.empty() : tensor<3x3xi16>
        %275 = linalg.matmul ins(%9, %3 : tensor<3x14xi16>, tensor<14x3xi16>) outs(%274 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %276 = math.ctpop %false : i1
        %277 = tensor.empty() : tensor<11x3xi16>
        %278 = arith.floordivsi %false, %false : i1
        %279 = math.copysign %cst_1, %cst_1 : f32
        %280 = arith.muli %c0_i16, %c0_i16_37 : i16
        %281 = vector.transpose %126, [0] : vector<14xf16> to vector<14xf16>
        %282 = math.round %cst_1 : f32
        %283 = arith.shrui %c-9062_i16, %arg0 : i16
        %284 = vector.broadcast %true_24 : i1 to vector<14x14xi1>
        %285 = vector.outerproduct %82, %36, %284 {kind = #vector.kind<add>} : vector<14xi1>, vector<14xi1>
        %286 = math.ctlz %c162211059_i64 : i64
        %287 = math.absi %c162211059_i64 : i64
        %288 = math.tan %7 : tensor<14x3xf32>
        scf.yield
      }
      %267 = index.casts %123 : index to i32
      %268 = vector.broadcast %cst : f16 to vector<14x14xf16>
      %269 = vector.outerproduct %37, %126, %268 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
      %270 = index.casts %58 : index to i32
      scf.condition(%true_24) %25 : i16
    } do {
    ^bb0(%arg0: i16):
      %263 = arith.remf %cst, %89 : f16
      %264 = arith.subi %c0_i32, %c1587616062_i32 : i32
      %265 = vector.insert %89, %192 [1] : f16 into vector<3xf16>
      %266 = arith.negf %186 : f16
      %from_elements_37 = tensor.from_elements %89, %cst_30, %cst_0, %89, %cst_30, %cst, %cst_27, %cst_27, %cst_27, %cst_30, %cst_30, %cst_27, %cst_27, %186, %cst_27, %cst, %89, %186, %cst, %89, %186, %186, %cst_27, %cst_30, %cst, %cst_30, %cst, %cst_30, %cst_27, %cst_27, %89, %cst_0, %cst_30, %cst_0, %cst_0, %cst_0, %89, %cst_30, %186, %cst_0, %cst_0, %cst_0 : tensor<14x3xf16>
      %267 = math.exp2 %0 : tensor<3xf16>
      %268 = math.round %cst_30 : f16
      %269 = memref.realloc %alloc_18 : memref<3xf16> to memref<6xf16>
      %splat_38 = tensor.splat %cst : tensor<3xf16>
      %270 = math.tan %16 : tensor<14x3xf32>
      %271 = math.cos %17 : tensor<14x3xf32>
      %272 = vector.transpose %77, [0] : vector<1xf16> to vector<1xf16>
      %273 = vector.broadcast %c11 : index to vector<3xindex>
      %274 = vector.broadcast %true_24 : i1 to vector<3xi1>
      vector.scatter %177[%c2, %c2] [%273], %274, %192 : memref<14x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %275 = math.exp %1 : tensor<14x3xf32>
      %276 = tensor.empty() : tensor<3x3x3xf16>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%276 : tensor<3x3x3xf16>) {
      ^bb0(%out: f16):
        %279 = arith.minui %c0_i32, %c1285476782_i32 : i32
        %splat_39 = tensor.splat %false : tensor<3x14xi1>
        %280 = arith.muli %c-9062_i16, %c27201_i16 : i16
        %281 = affine.min affine_map<(d0, d1, d2) -> (d0, (d1 - d2 mod 4) ceildiv 16)>(%43, %c8, %43)
        %282 = arith.minsi %c1285476782_i32, %c1285476782_i32 : i32
        memref.store %89, %alloc_18[%c1] : memref<3xf16>
        %alloc_40 = memref.alloc() : memref<i32>
        memref.tensor_store %21, %alloc_40 : memref<i32>
        %283 = index.divu %86, %c0
        %284 = math.floor %1 : tensor<14x3xf32>
        %285 = arith.ori %c4509_i16, %c-32686_i16 : i16
        %286 = memref.load %alloc_15[%c2, %c7] : memref<3x14xi16>
        %287 = arith.minsi %false, %false_29 : i1
        %288 = vector.load %alloc_16[%c13, %c0] : memref<14x3xi32>, vector<11x3xi32>
        %cst_41 = arith.constant 1.000000e+00 : f32
        %cst_42 = arith.constant 0.000000e+00 : f32
        %289 = vector.transfer_read %1[%154, %c9], %cst_42 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x3xf32>, vector<6xf32>
        %290 = math.log10 %1 : tensor<14x3xf32>
        %from_elements_43 = tensor.from_elements %cst_41, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_41, %cst_1, %cst_1, %cst_41, %cst_41, %cst_41, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_41, %cst_1, %cst_1, %cst_41, %cst_1, %cst_2, %cst_1, %cst_41, %cst_41, %cst_1, %cst_2, %cst_1, %cst_2, %cst_41, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_41, %cst_41, %cst_41 : tensor<3x14xf32>
        %291 = bufferization.to_tensor %alloc_3 : memref<11x3xi16>
        %292 = math.absi %13 : tensor<14x3xi1>
        %293 = arith.maxf %cst, %186 : f16
        %294 = arith.divui %c-9062_i16, %c27201_i16 : i16
        %295 = math.cttz %10 : tensor<14x3xi32>
        %296 = math.fma %from_elements_43, %from_elements_43, %from_elements_43 : tensor<3x14xf32>
        %alloc_44 = memref.alloc() : memref<11x3xf16>
        memref.copy %alloc_8, %alloc_44 : memref<11x3xf16> to memref<11x3xf16>
        %297 = arith.mulf %cst_1, %cst_41 : f32
        %298 = vector.extract %192[0] : vector<3xf16>
        %299 = bufferization.to_memref %1 : memref<14x3xf32>
        %300 = bufferization.to_tensor %alloc_14 : memref<3x14xi32>
        %false_45 = index.bool.constant false
        %301 = vector.broadcast %false_45 : i1 to vector<6xi1>
        %302 = vector.maskedload %alloc_6[%c1], %301, %301 : memref<3xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %303 = math.ctpop %c1587616062_i32 : i32
        %304 = affine.load %178[%c0, %c6] : memref<3x14xi64>
        %305 = vector.broadcast %true_24 : i1 to vector<14x14xi1>
        %306 = vector.outerproduct %36, %36, %305 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
        linalg.yield %186 : f16
      } -> tensor<3x3x3xf16>
      %278 = math.floor %cst_27 : f16
      scf.yield %c-32686_i16 : i16
    }
    memref.tensor_store %6, %alloc_16 : memref<14x3xi32>
    %194 = math.log10 %cst_30 : f16
    %195 = math.exp2 %15 : tensor<3xf32>
    %196 = math.tan %cst_0 : f16
    %197 = vector.broadcast %cst_2 : f32 to vector<3xf32>
    %198 = vector.fma %197, %197, %197 : vector<3xf32>
    %199 = vector.insertelement %cst_0, %35[%103 : index] : vector<14xf16>
    %rank_31 = tensor.rank %4 : tensor<3x14xf16>
    %200 = arith.minsi %c665835470_i32, %c1285476782_i32 : i32
    %201 = math.atan2 %7, %7 : tensor<14x3xf32>
    %202 = vector.matrix_multiply %62, %37 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
    %203 = vector.extract %76[18] : vector<21xf16>
    %204 = math.fma %cst_27, %cst_30, %cst_0 : f16
    %205 = vector.flat_transpose %34 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
    memref.tensor_store %12, %alloc_6 : memref<3xi1>
    %206 = scf.execute_region -> index {
      %263 = index.ceildivs %38, %c3
      %true_37 = index.bool.constant true
      %264 = math.expm1 %7 : tensor<14x3xf32>
      %265 = arith.shrui %false, %false : i1
      %266 = arith.floordivsi %c-6816_i16, %c4509_i16 : i16
      %267 = affine.load %alloc_12[%c13, %c7] : memref<3x14xi32>
      %268 = arith.shli %c-6816_i16, %c27201_i16 : i16
      %269 = math.exp %2 : tensor<11x3xf16>
      %270 = arith.minf %cst_27, %89 : f16
      %271 = vector.flat_transpose %126 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
      %272 = vector.load %167[%c2] : memref<3xi1>, vector<3xi1>
      %273 = math.ipowi %10, %6 : tensor<14x3xi32>
      %274 = arith.muli %c665835470_i32, %c1587616062_i32 : i32
      %275 = index.divu %91, %c13
      vector.print %156 : vector<21xf16>
      %276 = bufferization.to_tensor %alloc_16 : memref<14x3xi32>
      scf.yield %27 : index
    }
    %207 = vector.insertelement %89, %59[] : vector<f16>
    %208 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 2)>(%150, %c0)
    %false_32 = index.bool.constant false
    %209 = index.casts %false : i1 to index
    %210 = vector.broadcast %cst_1 : f32 to vector<3x14xf32>
    %211 = vector.fma %210, %210, %210 : vector<3x14xf32>
    %212 = scf.while (%arg0 = %cst_27) : (f16) -> f16 {
      %263 = memref.atomic_rmw muli %c1852420563_i64, %alloc_10[%c0, %c11] : (i64, memref<3x14xi64>) -> i64
      %264 = arith.divf %arg0, %89 : f16
      %265 = math.powf %7, %7 : tensor<14x3xf32>
      %266 = bufferization.clone %alloc_3 : memref<11x3xi16> to memref<11x3xi16>
      %267 = arith.ori %25, %c0_i16 : i16
      %268 = memref.atomic_rmw mins %c-32686_i16, %266[%c8, %c1] : (i16, memref<11x3xi16>) -> i16
      bufferization.dealloc_tensor %13 : tensor<14x3xi1>
      %269 = index.floordivs %85, %151
      scf.condition(%false_29) %cst : f16
    } do {
    ^bb0(%arg0: f16):
      %263 = math.exp2 %4 : tensor<3x14xf16>
      %264 = math.copysign %4, %4 : tensor<3x14xf16>
      %265 = vector.broadcast %cst_30 : f16 to vector<6x6xf16>
      %266 = vector.outerproduct %205, %205, %265 {kind = #vector.kind<mul>} : vector<6xf16>, vector<6xf16>
      %267 = vector.shuffle %171, %171 [1, 4, 5] : vector<3x14xf16>, vector<3x14xf16>
      %268 = tensor.empty() : tensor<14x3xf16>
      %mapped = linalg.map ins(%5, %alloc_5, %173 : tensor<14x3xf16>, memref<14x3xf16>, memref<14x3xf16>) outs(%268 : tensor<14x3xf16>)
        (%in: f16, %in_37: f16, %in_38: f16) {
          %280 = vector.broadcast %c1852420563_i64 : i64 to vector<3xi64>
          %281 = math.exp %in_38 : f16
          %282 = index.ceildivs %103, %28
          %283 = vector.load %alloc_14[%c1, %c5] : memref<3x14xi32>, vector<14x3xi32>
          %284 = vector.broadcast %103 : index to vector<14xindex>
          %285 = vector.broadcast %c27201_i16 : i16 to vector<14xi16>
          vector.scatter %alloc_15[%c2, %c1] [%284], %40, %285 : memref<3x14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
          %286 = arith.muli %c-32686_i16, %25 : i16
          %287 = math.exp %2 : tensor<11x3xf16>
          %288 = arith.addi %c0_i16, %c-32686_i16 : i16
          %289 = math.exp2 %cst_0 : f16
          %290 = arith.remf %186, %in : f16
          %291 = arith.remui %c-32686_i16, %c-6816_i16 : i16
          %292 = math.round %4 : tensor<3x14xf16>
          %293 = vector.broadcast %false_29 : i1 to vector<3xi1>
          %294 = vector.maskedload %alloc_6[%c1], %293, %293 : memref<3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
          %295 = memref.realloc %alloc_7 : memref<3xi64> to memref<14xi64>
          %296 = index.ceildivu %151, %113
          %297 = math.cos %cst_1 : f32
          %298 = arith.cmpi eq, %false, %false : i1
          bufferization.dealloc_tensor %17 : tensor<14x3xf32>
          %299 = memref.atomic_rmw assign %89, %177[%c3, %c2] : (f16, memref<14x3xf16>) -> f16
          %300 = arith.muli %c0_i32, %c135673915_i32 : i32
          %301 = math.exp %arg0 : f16
          %302 = arith.divsi %c0_i16, %c27201_i16 : i16
          %303 = index.castu %208 : index to i32
          %304 = math.roundeven %cst_30 : f16
          %true_39 = index.bool.constant true
          %305 = arith.muli %c4509_i16, %c-6816_i16 : i16
          %306 = arith.minf %186, %cst_30 : f16
          %307 = arith.remf %cst, %89 : f16
          %308 = arith.muli %c1587616062_i32, %c1285476782_i32 : i32
          %309 = math.roundeven %17 : tensor<14x3xf32>
          %310 = arith.divui %c1587616062_i32, %c135673915_i32 : i32
          %311 = bufferization.to_memref %10 : memref<14x3xi32>
          %cst_40 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_40 : f16
        }
      %269 = arith.minui %c0_i16, %c0_i16 : i16
      %270 = math.round %5 : tensor<14x3xf16>
      %271 = vector.broadcast %186 : f16 to vector<14x14xf16>
      %272 = vector.outerproduct %126, %126, %271 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
      %273 = arith.minsi %false_32, %false_32 : i1
      %274 = arith.minui %c-9062_i16, %c-9062_i16 : i16
      memref.tensor_store %8, %alloc_7 : memref<3xi64>
      %275 = vector.transpose %35, [0] : vector<14xf16> to vector<14xf16>
      %276 = vector.multi_reduction <and>, %104, %c-6816_i16 [0] : vector<11xi16> to i16
      %277 = arith.divsi %c0_i16, %c-6816_i16 : i16
      %278 = index.sub %rank_31, %209
      %279 = math.cos %7 : tensor<14x3xf32>
      scf.yield %cst : f16
    }
    %213 = math.exp2 %cst_2 : f32
    %214 = arith.muli %false_29, %false_29 : i1
    %215 = index.sub %c14, %154
    %216 = arith.shrui %c1210957407_i32, %c1587616062_i32 : i32
    %217 = index.ceildivs %c10, %208
    %218 = arith.shli %c0_i32, %c665835470_i32 : i32
    %219 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 8, d1, d0 + 16)>(%174, %103, %86)
    %220 = vector.transpose %36, [0] : vector<14xi1> to vector<14xi1>
    %221 = math.rsqrt %15 : tensor<3xf32>
    %222 = arith.minsi %false, %false_32 : i1
    %false_33 = index.bool.constant false
    %223 = arith.negf %cst : f16
    %224 = math.cttz %false_32 : i1
    %225 = index.casts %c12 : index to i32
    %226 = bufferization.clone %47 : memref<11x3xi16> to memref<11x3xi16>
    memref.tensor_store %122, %alloc_12 : memref<3x14xi32>
    %227 = vector.insertelement %cst_30, %37[%86 : index] : vector<14xf16>
    %228 = arith.minui %c27201_i16, %c27201_i16 : i16
    %229 = arith.shli %c4509_i16, %c-6816_i16 : i16
    %230 = arith.divsi %c665835470_i32, %c1587616062_i32 : i32
    %true_34 = index.bool.constant true
    %231 = arith.divf %cst_30, %cst : f16
    %232 = tensor.empty() : tensor<3x3x3xf16>
    %233 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%232 : tensor<3x3x3xf16>) {
    ^bb0(%out: f16):
      %263 = arith.shrui %c27201_i16, %c-32686_i16 : i16
      %264 = affine.load %alloc_18[%c8] : memref<3xf16>
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 2, d3 - 2, d3 ceildiv 8)>(%43, %27, %43, %c9)
      %collapsed_37 = tensor.collapse_shape %30 [[0, 1]] : tensor<14x3xf16> into tensor<42xf16>
      %266 = arith.remf %186, %264 : f16
      %267 = arith.xori %true_24, %true_24 : i1
      %268 = math.log2 %cst_27 : f16
      %269 = vector.broadcast %cst_2 : f32 to vector<3xf32>
      %270 = vector.fma %269, %269, %197 : vector<3xf32>
      %271 = vector.create_mask %rank_31, %208 : vector<14x3xi1>
      %272 = arith.addi %c162211059_i64, %c1852420563_i64 : i64
      %273 = arith.minui %c-6816_i16, %c-6816_i16 : i16
      %274 = bufferization.clone %alloc_15 : memref<3x14xi16> to memref<3x14xi16>
      %275 = vector.extract %76[6] : vector<21xf16>
      %276 = arith.shrui %c1852420563_i64, %c162211059_i64 : i64
      %277 = vector.broadcast %false_33 : i1 to vector<3xi1>
      %278 = vector.maskedload %alloc_5[%c11, %c1], %277, %78 : memref<14x3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %279 = math.round %264 : f16
      %280 = math.cttz %12 : tensor<3xi1>
      %281 = vector.extract %210[1] : vector<3x14xf32>
      %282 = vector.splat %c162211059_i64 : vector<3xi64>
      %283 = math.exp %30 : tensor<14x3xf16>
      %284 = arith.andi %false, %false : i1
      %285 = index.ceildivs %c0, %rank_31
      %286 = index.castu %c-9062_i16 : i16 to index
      memref.store %out, %177[%c3, %c1] : memref<14x3xf16>
      %287 = index.floordivs %c2, %38
      %288 = arith.remf %cst_30, %cst_0 : f16
      %289 = vector.bitcast %35 : vector<14xf16> to vector<14xf16>
      %290 = math.atan %5 : tensor<14x3xf16>
      %291 = arith.subi %false_29, %false_33 : i1
      %292 = arith.remf %186, %186 : f16
      %generated = tensor.generate %c5 {
      ^bb0(%arg0: index, %arg1: index):
        bufferization.dealloc_tensor %7 : tensor<14x3xf32>
        %collapsed_38 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x14xi16> into tensor<42xi16>
        %false_39 = index.bool.constant false
        %294 = memref.atomic_rmw minu %c-32686_i16, %274[%c0, %c7] : (i16, memref<3x14xi16>) -> i16
        tensor.yield %cst_2 : f32
      } : tensor<?x14xf32>
      %293 = arith.ori %c1852420563_i64, %c162211059_i64 : i64
      linalg.yield %out : f16
    } -> tensor<3x3x3xf16>
    %234 = arith.andi %c1587616062_i32, %c0_i32 : i32
    %235 = index.divu %c2, %90
    %236 = vector.multi_reduction <mul>, %40, %82 [] : vector<14xi1> to vector<14xi1>
    %237 = math.expm1 %16 : tensor<14x3xf32>
    memref.tensor_store %from_elements, %alloc_7 : memref<3xi64>
    %238 = math.cttz %false_29 : i1
    %239 = vector.reduction <minf>, %62 : vector<14xf16> into f16
    %240 = math.expm1 %186 : f16
    %241 = arith.minf %cst, %cst_30 : f16
    %c0_i64 = arith.constant 0 : i64
    %242 = vector.transfer_read %from_elements[%91], %c0_i64 : tensor<3xi64>, vector<i64>
    %243 = vector.bitcast %134 : vector<11xi1> to vector<11xi1>
    %244 = affine.load %alloc_19[] : memref<i1>
    vector.print %19 : vector<6xf16>
    %245 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, 0, 0, -(d1 floordiv 8))>(%215, %215, %28, %154)
    %246 = math.exp %1 : tensor<14x3xf32>
    %247 = memref.load %alloc_11[%c2, %c11] : memref<3x14xf32>
    %248 = vector.splat %true_24 : vector<3x14xi1>
    %249 = memref.load %alloc_15[%c1, %c3] : memref<3x14xi16>
    %250 = arith.xori %244, %244 : i1
    %251 = math.log10 %7 : tensor<14x3xf32>
    %252 = vector.flat_transpose %156 {columns = 7 : i32, rows = 3 : i32} : vector<21xf16> -> vector<21xf16>
    %false_35 = arith.constant false
    %253 = vector.insertelement %true_24, %92[] : vector<i1>
    %254 = arith.cmpi sgt, %c0_i16, %c-32686_i16 : i16
    scf.execute_region {
      %rank_37 = tensor.rank %17 : tensor<14x3xf32>
      %263 = vector.transpose %37, [0] : vector<14xf16> to vector<14xf16>
      %264 = math.roundeven %17 : tensor<14x3xf32>
      %from_elements_38 = tensor.from_elements %c0_i64, %c1852420563_i64, %c1852420563_i64 : tensor<3xi64>
      %265 = scf.execute_region -> vector<11x3xi64> {
        %276 = index.ceildivu %c5, %c13
        %277 = arith.muli %c4509_i16, %c-32686_i16 : i16
        %278 = math.tanh %186 : f16
        %279 = arith.cmpf ord, %cst, %cst_30 : f16
        %280 = math.tanh %4 : tensor<3x14xf16>
        %281 = arith.andi %c0_i16, %c-6816_i16 : i16
        %282 = math.exp %89 : f16
        %283 = memref.load %alloc_14[%c1, %c0] : memref<3x14xi32>
        %284 = arith.minui %true_24, %true_34 : i1
        %285 = arith.ori %c665835470_i32, %c665835470_i32 : i32
        memref.store %186, %173[%c5, %c1] : memref<14x3xf16>
        %alloc_40 = memref.alloc() : memref<14x3xi16>
        memref.tensor_store %3, %alloc_40 : memref<14x3xi16>
        %rank_41 = tensor.rank %6 : tensor<14x3xi32>
        %286 = index.ceildivs %rank_31, %28
        %287 = affine.load %alloc_13[%c2, %c10] : memref<14x3xi1>
        %288 = math.roundeven %7 : tensor<14x3xf32>
        %289 = vector.broadcast %c1852420563_i64 : i64 to vector<11x3xi64>
        scf.yield %289 : vector<11x3xi64>
      }
      %266 = arith.remf %cst_0, %89 : f16
      %267 = math.absi %13 : tensor<14x3xi1>
      %268 = vector.broadcast %cst_30 : f16 to vector<14x3xf16>
      %269 = arith.remui %c0_i32, %c0_i32 : i32
      %270 = arith.remui %c27201_i16, %c27201_i16 : i16
      %271 = index.castu %c0_i64 : i64 to index
      %272 = math.cos %5 : tensor<14x3xf16>
      %273 = math.tanh %0 : tensor<3xf16>
      %from_elements_39 = tensor.from_elements %cst_0, %cst, %cst_0, %cst, %89, %cst, %89, %186, %cst_0, %186, %89, %cst_27, %cst_0, %cst, %cst, %89, %186, %186, %89, %cst_27, %cst_27, %cst, %cst_27, %cst_30, %89, %cst_0, %186, %89, %cst_27, %cst, %cst_30, %186, %cst, %89, %186, %cst, %cst_30, %cst_27, %cst_27, %cst_30, %cst_30, %89 : tensor<14x3xf16>
      %274 = arith.shrui %244, %244 : i1
      %275 = arith.negf %cst_30 : f16
      scf.yield
    }
    %255 = arith.minui %25, %c-9062_i16 : i16
    %256 = index.castu %c2 : index to i32
    %257 = tensor.empty() : tensor<42xi1>
    %258 = linalg.copy ins(%collapsed : tensor<42xi1>) outs(%257 : tensor<42xi1>) -> tensor<42xi1>
    %259 = tensor.empty() : tensor<3x14xi32>
    %transposed = linalg.transpose ins(%6 : tensor<14x3xi32>) outs(%259 : tensor<3x14xi32>) permutation = [1, 0] 
    %260 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%7 : tensor<14x3xf32>) outs(%260 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        scf.if %true_24 {
          %269 = tensor.empty(%c6, %137) : tensor<?x?xi64>
          %270 = vector.shuffle %252, %205 [1, 2, 3, 5, 9, 11, 14, 20, 23, 24] : vector<21xf16>, vector<6xf16>
          %271 = arith.negf %init : f32
          %272 = arith.remf %89, %89 : f16
          %273 = vector.multi_reduction <maxf>, %76, %186 [0] : vector<21xf16> to f16
          %274 = math.powf %16, %1 : tensor<14x3xf32>
          %275 = math.exp %4 : tensor<3x14xf16>
          %276 = index.castu %c-6816_i16 : i16 to index
        } else {
          %269 = math.tanh %1 : tensor<14x3xf32>
          %270 = affine.min affine_map<(d0, d1) -> (d1 - 48, d1 - 16, d1 - 16, d1 - 16)>(%c0, %c10)
          %271 = arith.cmpf ogt, %cst_27, %89 : f16
          %272 = vector.broadcast %in : f32 to vector<14x3xf32>
          %273 = vector.fma %272, %272, %272 : vector<14x3xf32>
          %274 = vector.load %alloc_14[%c1, %c13] : memref<3x14xi32>, vector<14x3xi32>
          %alloc_39 = memref.alloc() : memref<42xi1>
          memref.tensor_store %collapsed, %alloc_39 : memref<42xi1>
          %275 = memref.realloc %alloc_18 : memref<3xf16> to memref<3xf16>
          %276 = vector.multi_reduction <add>, %192, %cst [0] : vector<3xf16> to f16
        }
        %263 = math.exp %14 : tensor<3xf32>
        %264 = tensor.empty(%c1) : tensor<?x3xi16>
        %265 = math.sqrt %cst_2 : f32
        %266 = memref.load %101[%c4, %c0] : memref<14x3xf16>
        %267 = arith.negf %89 : f16
        %from_elements_37 = tensor.from_elements %cst, %cst_27, %186, %186, %186, %186, %cst_27, %cst_30, %cst_30, %186, %89, %89, %cst_0, %cst_0, %cst_27, %cst, %89, %cst_30, %cst_0, %186, %cst, %cst_27, %89, %cst_30, %cst, %cst_30, %cst_30, %89, %cst_30, %186, %cst_30, %cst_27, %cst_0, %186, %cst_0, %cst_30, %89, %cst, %cst_27, %cst_27, %89, %cst_30 : tensor<3x14xf16>
        %268 = index.castu %245 : index to i32
        %cst_38 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_38 : f32
      }
    %261 = scf.parallel (%arg0, %arg1) = (%150, %245) to (%219, %c6) step (%c6, %c15) init (%178) -> memref<3x14xi64> {
      %263 = vector.extract %198[2] : vector<3xf32>
      %false_37 = index.bool.constant false
      %264 = bufferization.to_tensor %alloc_11 : memref<3x14xf32>
      %265 = arith.mulf %cst_0, %cst_27 : f16
      %266 = arith.addi %c1587616062_i32, %c1587616062_i32 : i32
      %267 = index.castu %187 : index to i32
      %268 = tensor.empty() : tensor<3x14xi64>
      %269 = arith.addi %c-9062_i16, %c-9062_i16 : i16
      %270 = arith.cmpi sge, %c665835470_i32, %c665835470_i32 : i32
      %271 = arith.remf %cst_1, %cst_2 : f32
      %272 = math.absi %259 : tensor<3x14xi32>
      %273 = vector.transpose %78, [0] : vector<3xf16> to vector<3xf16>
      %274 = math.cttz %21 : tensor<i32>
      %275 = arith.divf %cst, %cst_30 : f16
      %alloc_38 = memref.alloc() : memref<14x3xi32>
      memref.copy %alloc_16, %alloc_38 : memref<14x3xi32> to memref<14x3xi32>
      %276 = arith.subi %c1285476782_i32, %c665835470_i32 : i32
      %alloc_39 = memref.alloc() : memref<3x14xi64>
      scf.reduce(%alloc_39)  : memref<3x14xi64> {
      ^bb0(%arg2: memref<3x14xi64>, %arg3: memref<3x14xi64>):
        %277 = arith.minui %c665835470_i32, %c665835470_i32 : i32
        %278 = vector.insertelement %cst_30, %156[%arg1 : index] : vector<21xf16>
        %279 = arith.remsi %false_29, %true_24 : i1
        %280 = arith.negf %89 : f16
        memref.copy %alloc_5, %173 : memref<14x3xf16> to memref<14x3xf16>
        %281 = index.ceildivu %c9, %c1
        %282 = affine.min affine_map<(d0, d1) -> (((d1 - 8) * 16 + 16) floordiv 64, d1 ceildiv 128 - d0)>(%43, %206)
        %283 = arith.minui %false_32, %true_24 : i1
        %alloc_40 = memref.alloc() : memref<3x14xi64>
        scf.reduce.return %alloc_40 : memref<3x14xi64>
      }
      scf.yield
    }
    %262 = affine.vector_load %alloc_6[%38] : memref<3xi1>, vector<11xi1>
    affine.vector_store %35, %alloc_18[%43] : memref<3xf16>, vector<14xf16>
    vector.print %19 : vector<6xf16>
    vector.print %34 : vector<6xf16>
    vector.print %35 : vector<14xf16>
    vector.print %36 : vector<14xi1>
    vector.print %37 : vector<14xf16>
    vector.print %40 : vector<14xi1>
    vector.print %59 : vector<f16>
    vector.print %62 : vector<14xf16>
    vector.print %76 : vector<21xf16>
    vector.print %77 : vector<1xf16>
    vector.print %78 : vector<3xf16>
    vector.print %79 : vector<1xf16>
    vector.print %82 : vector<14xi1>
    vector.print %84 : vector<i32>
    vector.print %92 : vector<i1>
    vector.print %104 : vector<11xi16>
    vector.print %107 : vector<14x3xi32>
    vector.print %126 : vector<14xf16>
    vector.print %133 : vector<11xf32>
    vector.print %134 : vector<11xi1>
    vector.print %135 : vector<11xf32>
    vector.print %156 : vector<21xf16>
    vector.print %157 : vector<11xi16>
    vector.print %165 : vector<i16>
    vector.print %171 : vector<3x14xf16>
    vector.print %192 : vector<3xf16>
    vector.print %197 : vector<3xf32>
    vector.print %198 : vector<3xf32>
    vector.print %202 : vector<1xf16>
    vector.print %205 : vector<6xf16>
    vector.print %210 : vector<3x14xf32>
    vector.print %211 : vector<3x14xf32>
    vector.print %243 : vector<11xi1>
    vector.print %252 : vector<21xf16>
    vector.print %262 : vector<11xi1>
    vector.print %c-32686_i16 : i16
    vector.print %c1285476782_i32 : i32
    vector.print %cst : f16
    vector.print %c-9062_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c135673915_i32 : i32
    vector.print %c-6816_i16 : i16
    vector.print %c162211059_i64 : i64
    vector.print %c665835470_i32 : i32
    vector.print %c1587616062_i32 : i32
    vector.print %c4509_i16 : i16
    vector.print %c27201_i16 : i16
    vector.print %c1852420563_i64 : i64
    vector.print %c1210957407_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %25 : i16
    vector.print %false : i1
    vector.print %89 : f16
    vector.print %true_24 : i1
    vector.print %c0_i16 : i16
    vector.print %c0_i32 : i32
    vector.print %cst_27 : f16
    vector.print %false_29 : i1
    vector.print %cst_30 : f16
    vector.print %186 : f16
    vector.print %false_32 : i1
    vector.print %false_33 : i1
    vector.print %true_34 : i1
    vector.print %c0_i64 : i64
    vector.print %244 : i1
    %alloc_36 = memref.alloc() : memref<11x3xi1>
    return %alloc_36 : memref<11x3xi1>
  }
}
