module {
  func.func nested @func1(%arg0: tensor<11x8xi64>) -> vector<15x11xi64> {
    %c136293427_i64 = arith.constant 136293427 : i64
    %c2083548653_i32 = arith.constant 2083548653 : i32
    %c896457825_i32 = arith.constant 896457825 : i32
    %c1431178785_i64 = arith.constant 1431178785 : i64
    %cst = arith.constant 4.083200e+04 : f16
    %c27835_i16 = arith.constant 27835 : i16
    %cst_0 = arith.constant 5.488000e+04 : f16
    %c-18864_i16 = arith.constant -18864 : i16
    %c936353286_i64 = arith.constant 936353286 : i64
    %c1487694548_i64 = arith.constant 1487694548 : i64
    %false = arith.constant false
    %false_1 = arith.constant false
    %c1860604399_i32 = arith.constant 1860604399 : i32
    %c412358967_i32 = arith.constant 412358967 : i32
    %c1823884268_i64 = arith.constant 1823884268 : i64
    %c-8128_i16 = arith.constant -8128 : i16
    %0 = tensor.empty() : tensor<12x15xi16>
    %1 = tensor.empty() : tensor<15x11xi16>
    %2 = tensor.empty() : tensor<15x11xi32>
    %3 = tensor.empty() : tensor<15x11xi64>
    %4 = tensor.empty() : tensor<12xi32>
    %5 = tensor.empty() : tensor<12x15xi16>
    %6 = tensor.empty() : tensor<12x15xi32>
    %7 = tensor.empty() : tensor<12xf16>
    %8 = tensor.empty() : tensor<12x15xi64>
    %9 = tensor.empty() : tensor<12xf16>
    %10 = tensor.empty() : tensor<15x11xi16>
    %11 = tensor.empty() : tensor<15x11xi64>
    %12 = tensor.empty() : tensor<11x8xi64>
    %13 = tensor.empty() : tensor<11x8xf16>
    %14 = tensor.empty() : tensor<12x15xi32>
    %15 = tensor.empty() : tensor<11x8xf32>
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
    %alloc = memref.alloc() : memref<15x11xi64>
    %alloc_2 = memref.alloc() : memref<15x11xi16>
    %alloc_3 = memref.alloc() : memref<12xf32>
    %alloc_4 = memref.alloc() : memref<15x11xi64>
    %alloc_5 = memref.alloc() : memref<11x8xi1>
    %alloc_6 = memref.alloc() : memref<11x8xi32>
    %alloc_7 = memref.alloc() : memref<11x8xi32>
    %alloc_8 = memref.alloc() : memref<12x15xi16>
    %alloc_9 = memref.alloc() : memref<12x15xi1>
    %alloc_10 = memref.alloc() : memref<15x11xi1>
    %alloc_11 = memref.alloc() : memref<15x11xf16>
    %alloc_12 = memref.alloc() : memref<12x15xi32>
    %alloc_13 = memref.alloc() : memref<11x8xi32>
    %alloc_14 = memref.alloc() : memref<12xi32>
    %alloc_15 = memref.alloc() : memref<12xf32>
    %alloc_16 = memref.alloc() : memref<12xi32>
    %16 = tensor.empty() : tensor<12xf16>
    %17 = linalg.copy ins(%9 : tensor<12xf16>) outs(%16 : tensor<12xf16>) -> tensor<12xf16>
    %18 = tensor.empty() : tensor<12xf16>
    %transposed = linalg.transpose ins(%17 : tensor<12xf16>) outs(%18 : tensor<12xf16>) permutation = [0] 
    %19 = tensor.empty() : tensor<12xi16>
    %reduced = linalg.reduce ins(%0 : tensor<12x15xi16>) outs(%19 : tensor<12xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %260 = vector.broadcast %c1860604399_i32 : i32 to vector<8xi32>
        %261 = vector.reduction <xor>, %260 : vector<8xi32> into i32
        %262 = vector.load %alloc[%c4, %c3] : memref<15x11xi64>, vector<11x8xi64>
        %263 = arith.addi %c2083548653_i32, %c412358967_i32 : i32
        bufferization.dealloc_tensor %13 : tensor<11x8xf16>
        %264 = math.powf %7, %9 : tensor<12xf16>
        memref.copy %alloc_16, %alloc_14 : memref<12xi32> to memref<12xi32>
        vector.print %262 : vector<11x8xi64>
        %265 = arith.andi %c-18864_i16, %c27835_i16 : i16
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg1) = (%c15) to (%c14) step (%c6) {
      %260 = vector.broadcast %c1431178785_i64 : i64 to vector<1xi64>
      %261 = vector.insert %c936353286_i64, %260 [0] : i64 into vector<1xi64>
      %cast_39 = tensor.cast %10 : tensor<15x11xi16> to tensor<?x?xi16>
      %splat_40 = tensor.splat %c27835_i16 : tensor<12xi16>
      %262 = index.sub %c13, %c3
      %263 = memref.atomic_rmw addi %c412358967_i32, %alloc_16[%c5] : (i32, memref<12xi32>) -> i32
      %264 = index.floordivs %c9, %c10
      %splat_41 = tensor.splat %c2083548653_i32 : tensor<15x11xi32>
      %cst_42 = arith.constant 1.000000e+00 : f32
      %inserted_43 = tensor.insert %cst_42 into %15[%c2, %c0] : tensor<11x8xf32>
      %265 = vector.reduction <add>, %260 : vector<1xi64> into i64
      %266 = arith.ori %c896457825_i32, %c896457825_i32 : i32
      %267 = math.ipowi %0, %0 : tensor<12x15xi16>
      %268 = vector.broadcast %cst_42 : f32 to vector<15x11xf32>
      %269 = vector.fma %268, %268, %268 : vector<15x11xf32>
      %270 = index.maxu %c6, %c13
      %271 = arith.remf %cst_42, %cst_42 : f32
      %272 = vector.shuffle %268, %269 [5, 7, 8, 9, 11, 14, 16, 17, 19, 20, 22, 23, 24, 26, 27] : vector<15x11xf32>, vector<15x11xf32>
      %273 = scf.index_switch %c8 -> vector<12x15xi32> 
      case 1 {
        %cst_44 = arith.constant 4.771200e+04 : f16
        %274 = math.atan %15 : tensor<11x8xf32>
        %275 = index.sizeof
        %276 = arith.minf %cst_0, %cst_0 : f16
        bufferization.dealloc_tensor %1 : tensor<15x11xi16>
        %277 = arith.maxf %cst_0, %cst_0 : f16
        %278 = math.round %cst : f16
        %279 = arith.muli %c136293427_i64, %c136293427_i64 : i64
        %280 = index.castu %c1431178785_i64 : i64 to index
        %281 = vector.load %alloc_7[%c7, %c2] : memref<11x8xi32>, vector<12x15xi32>
        %282 = memref.realloc %alloc_16 : memref<12xi32> to memref<11xi32>
        %283 = math.log2 %cst : f16
        %284 = math.round %13 : tensor<11x8xf16>
        %285 = arith.negf %cst_42 : f32
        %286 = vector.flat_transpose %260 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %287 = arith.divui %c1823884268_i64, %c1487694548_i64 : i64
        scf.yield %281 : vector<12x15xi32>
      }
      case 2 {
        %274 = arith.shrsi %c936353286_i64, %c136293427_i64 : i64
        %275 = index.divs %c7, %c1
        %276 = arith.remf %cst_0, %cst : f16
        %277 = math.absf %9 : tensor<12xf16>
        %278 = math.powf %9, %transposed : tensor<12xf16>
        %279 = math.ceil %cst_0 : f16
        %280 = tensor.empty() : tensor<8x11xi64>
        %281 = tensor.empty() : tensor<11x11xi64>
        %282 = linalg.matmul ins(%12, %280 : tensor<11x8xi64>, tensor<8x11xi64>) outs(%281 : tensor<11x11xi64>) -> tensor<11x11xi64>
        %283 = arith.xori %c2083548653_i32, %c412358967_i32 : i32
        %false_44 = index.bool.constant false
        %splat_45 = tensor.splat %c27835_i16 : tensor<15x11xi16>
        %284 = memref.atomic_rmw minf %cst_42, %alloc_3[%c11] : (f32, memref<12xf32>) -> f32
        %285 = vector.broadcast %cst_42 : f32 to vector<12x15xf32>
        %286 = vector.fma %285, %285, %285 : vector<12x15xf32>
        %287 = index.castu %264 : index to i32
        %288 = index.divs %264, %arg1
        %289 = math.ipowi %splat_40, %splat_40 : tensor<12xi16>
        %290 = arith.divui %c-8128_i16, %c-18864_i16 : i16
        %291 = vector.broadcast %c2083548653_i32 : i32 to vector<12x15xi32>
        scf.yield %291 : vector<12x15xi32>
      }
      default {
        %cast_44 = tensor.cast %13 : tensor<11x8xf16> to tensor<?x?xf16>
        %274 = arith.minf %cst, %cst_0 : f16
        %cast_45 = tensor.cast %15 : tensor<11x8xf32> to tensor<?x?xf32>
        %275 = math.fma %9, %transposed, %transposed : tensor<12xf16>
        %276 = math.log2 %7 : tensor<12xf16>
        %277 = arith.minsi %c936353286_i64, %c936353286_i64 : i64
        %splat_46 = tensor.splat %c2083548653_i32 : tensor<11x8xi32>
        %278 = arith.addi %c1823884268_i64, %c1823884268_i64 : i64
        %279 = arith.minsi %false_1, %false_1 : i1
        %alloc_47 = memref.alloc() : memref<11x8xi16>
        %280 = tensor.empty() : tensor<15x8xi16>
        %281 = linalg.matmul ins(%1, %alloc_47 : tensor<15x11xi16>, memref<11x8xi16>) outs(%280 : tensor<15x8xi16>) -> tensor<15x8xi16>
        %282 = memref.load %alloc_4[%c2, %c8] : memref<15x11xi64>
        %283 = index.divs %c2, %c0
        %284 = vector.insert %c936353286_i64, %260 [0] : i64 into vector<1xi64>
        %285 = index.maxu %c5, %c4
        %286 = vector.broadcast %c1823884268_i64 : i64 to vector<1x1xi64>
        %287 = vector.outerproduct %260, %260, %286 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        %288 = vector.bitcast %269 : vector<15x11xf32> to vector<15x11xf32>
        %289 = vector.broadcast %c412358967_i32 : i32 to vector<12x15xi32>
        scf.yield %289 : vector<12x15xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c5, %c11] : memref<15x11xi64>, vector<11xi64>
    affine.vector_store %20, %alloc_4[%c1, %c2] : memref<15x11xi64>, vector<11xi64>
    %21 = tensor.empty() : tensor<12xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%9, %21 : tensor<12xf16>, tensor<12xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = math.absi %11 : tensor<15x11xi64>
    %25 = vector.multi_reduction <minsi>, %20, %c1487694548_i64 [0] : vector<11xi64> to i64
    %26 = tensor.empty() : tensor<12x11xi16>
    %27 = linalg.matmul ins(%0, %1 : tensor<12x15xi16>, tensor<15x11xi16>) outs(%26 : tensor<12x11xi16>) -> tensor<12x11xi16>
    %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<11x8xf16> into tensor<88xf16>
    %28 = arith.cmpf ueq, %cst_0, %cst_0 : f16
    %29 = math.copysign %7, %18 : tensor<12xf16>
    %30 = math.log2 %collapsed : tensor<88xf16>
    %31 = math.absf %22 : tensor<f16>
    %32 = index.divu %c6, %c4
    %generated = tensor.generate %c3 {
    ^bb0(%arg1: index, %arg2: index):
      %260 = math.exp2 %15 : tensor<11x8xf32>
      %splat_39 = tensor.splat %c-18864_i16 : tensor<15x11xi16>
      %cst_40 = arith.constant 1.000000e+00 : f32
      %261 = vector.broadcast %cst_40 : f32 to vector<f32>
      vector.transfer_write %261, %alloc_3[%c12] : vector<f32>, memref<12xf32>
      %262 = vector.reduction <maxsi>, %20 : vector<11xi64> into i64
      tensor.yield %c2083548653_i32 : i32
    } : tensor<?x8xi32>
    %33 = index.ceildivs %32, %c7
    %34 = math.ipowi %10, %1 : tensor<15x11xi16>
    %35 = arith.ceildivsi %false_1, %false : i1
    %36 = math.rsqrt %15 : tensor<11x8xf32>
    %37 = math.cttz %14 : tensor<12x15xi32>
    %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<15x11xi32> into tensor<15x11x1xi32>
    %38 = vector.broadcast %c3 : index to vector<15xindex>
    %39 = vector.broadcast %false : i1 to vector<15xi1>
    %40 = vector.broadcast %c2083548653_i32 : i32 to vector<15xi32>
    vector.scatter %alloc_14[%c4] [%38], %39, %40 : memref<12xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
    %41 = vector.shuffle %20, %20 [2, 3, 6, 7, 8, 9, 10, 11, 12, 13, 14, 18, 20] : vector<11xi64>, vector<11xi64>
    %42 = arith.ori %false, %false : i1
    %alloc_17 = memref.alloc() : memref<15x11xf16>
    memref.copy %alloc_11, %alloc_17 : memref<15x11xf16> to memref<15x11xf16>
    %43 = math.atan2 %15, %15 : tensor<11x8xf32>
    %44 = vector.insert %c936353286_i64, %20 [7] : i64 into vector<11xi64>
    %45 = vector.broadcast %c27835_i16 : i16 to vector<12x15xi16>
    %46 = vector.broadcast %false_1 : i1 to vector<12x15xi1>
    %47 = vector.broadcast %c2083548653_i32 : i32 to vector<12x15xi32>
    %48 = vector.gather %5[%c14, %c1] [%47], %46, %45 : tensor<12x15xi16>, vector<12x15xi32>, vector<12x15xi1>, vector<12x15xi16> into vector<12x15xi16>
    %49 = affine.min affine_map<(d0) -> (d0 * -2, (d0 * 2) mod 128, d0 * -2, (-d0) floordiv 32 - (-d0 + 64))>(%c12)
    %50 = math.log2 %9 : tensor<12xf16>
    %51 = math.fpowi %7, %4 : tensor<12xf16>, tensor<12xi32>
    %52 = index.floordivs %c13, %c14
    %53 = scf.if %false -> (memref<12xf16>) {
      vector.print %47 : vector<12x15xi32>
      %260 = math.ceil %16 : tensor<12xf16>
      %261 = math.log2 %13 : tensor<11x8xf16>
      %262 = arith.subi %c1823884268_i64, %c936353286_i64 : i64
      %263 = vector.reduction <minsi>, %20 : vector<11xi64> into i64
      %264 = memref.atomic_rmw andi %c1431178785_i64, %alloc[%c6, %c0] : (i64, memref<15x11xi64>) -> i64
      %265 = tensor.empty(%c2) : tensor<?xi32>
      %266 = vector.transpose %20, [0] : vector<11xi64> to vector<11xi64>
      %alloc_39 = memref.alloc() : memref<12xf16>
      scf.yield %alloc_39 : memref<12xf16>
    } else {
      %260 = arith.subi %false_1, %false_1 : i1
      %alloc_39 = memref.alloc() : memref<12x15xi1>
      %261 = math.round %cst : f16
      %262 = index.sizeof
      %true_40 = arith.constant true
      %263 = arith.negf %cst_0 : f16
      %cst_41 = arith.constant 1.000000e+00 : f32
      %264 = vector.broadcast %cst_41 : f32 to vector<12x15xf32>
      %265 = vector.fma %264, %264, %264 : vector<12x15xf32>
      %266 = bufferization.clone %alloc_10 : memref<15x11xi1> to memref<15x11xi1>
      %alloc_42 = memref.alloc() : memref<12xf16>
      scf.yield %alloc_42 : memref<12xf16>
    }
    %54 = memref.atomic_rmw mins %c1431178785_i64, %alloc_4[%c5, %c9] : (i64, memref<15x11xi64>) -> i64
    %55 = index.divu %c0, %c8
    %56 = memref.atomic_rmw minu %c2083548653_i32, %alloc_7[%c4, %c0] : (i32, memref<11x8xi32>) -> i32
    memref.copy %alloc_6, %alloc_7 : memref<11x8xi32> to memref<11x8xi32>
    scf.if %false_1 {
      bufferization.dealloc_tensor %generated : tensor<?x8xi32>
      %alloc_39 = memref.alloc() : memref<11x8xf16>
      %260 = math.exp2 %cst : f16
      %261 = arith.shrsi %25, %c1487694548_i64 : i64
      %262 = math.cttz %14 : tensor<12x15xi32>
      %263 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %264 = vector.bitcast %45 : vector<12x15xi16> to vector<12x15xi16>
      %265 = math.cttz %6 : tensor<12x15xi32>
    } else {
      %260 = arith.andi %c136293427_i64, %25 : i64
      %261 = index.divs %c14, %c11
      %262 = arith.negf %cst : f16
      bufferization.dealloc_tensor %15 : tensor<11x8xf32>
      %263 = vector.broadcast %25 : i64 to vector<11x11xi64>
      %264 = vector.outerproduct %20, %20, %263 {kind = #vector.kind<minui>} : vector<11xi64>, vector<11xi64>
      %265 = arith.ori %c-8128_i16, %c-18864_i16 : i16
      %266 = math.roundeven %collapsed : tensor<88xf16>
      %267 = index.maxu %c11, %c3
    }
    %57 = math.powf %9, %9 : tensor<12xf16>
    vector.print %47 : vector<12x15xi32>
    %58 = arith.mulf %cst_0, %cst : f16
    %59 = math.powf %cst, %cst : f16
    %from_elements = tensor.from_elements %false, %false, %false, %false_1, %false_1, %false, %false_1, %false, %false, %false, %false_1, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false, %false, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false, %false_1, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false_1, %false_1, %false : tensor<11x8xi1>
    %60 = bufferization.to_memref %1 : memref<15x11xi16>
    %61 = vector.broadcast %25 : i64 to vector<11x11xi64>
    %62 = vector.outerproduct %20, %20, %61 {kind = #vector.kind<xor>} : vector<11xi64>, vector<11xi64>
    %63 = math.expm1 %7 : tensor<12xf16>
    %64 = math.fma %cst_0, %cst_0, %cst_0 : f16
    %cst_18 = arith.constant 1.000000e+00 : f32
    %cst_19 = arith.constant 0.000000e+00 : f32
    %65 = vector.transfer_read %15[%52, %c13], %cst_19 : tensor<11x8xf32>, vector<f32>
    %66 = vector.multi_reduction <minsi>, %20, %20 [] : vector<11xi64> to vector<11xi64>
    %67 = index.ceildivs %c13, %32
    %68 = index.sizeof
    %69 = math.powf %cst_0, %cst_0 : f16
    %70 = arith.remf %cst_18, %cst_18 : f32
    %71 = arith.addf %cst_0, %cst_0 : f16
    %72 = affine.max affine_map<(d0) -> (d0 * 2 - 4, d0 - 128, d0 * 32)>(%67)
    %73 = arith.minui %c-18864_i16, %c27835_i16 : i16
    %74 = arith.xori %false_1, %false_1 : i1
    %75 = math.rsqrt %21 : tensor<12xf16>
    %c-8074_i16 = arith.constant -8074 : i16
    %76 = math.ceil %15 : tensor<11x8xf32>
    %77 = arith.maxsi %c-18864_i16, %c-8128_i16 : i16
    %78 = vector.insertelement %c1431178785_i64, %20[%32 : index] : vector<11xi64>
    %splat = tensor.splat %c936353286_i64 : tensor<12xi64>
    %79 = vector.broadcast %c-18864_i16 : i16 to vector<i16>
    %80 = vector.transfer_write %79, %reduced[%67] : vector<i16>, tensor<12xi16>
    %81 = arith.divui %25, %c1431178785_i64 : i64
    %82 = arith.andi %false, %false_1 : i1
    %83 = index.sub %c8, %c2
    %84 = arith.cmpf uge, %cst, %cst_0 : f16
    %85 = vector.broadcast %c1823884268_i64 : i64 to vector<i64>
    vector.transfer_write %85, %alloc_4[%67, %68] : vector<i64>, memref<15x11xi64>
    %86 = math.log %cst : f16
    %87 = tensor.empty() : tensor<12x11xi32>
    %88 = linalg.matmul ins(%14, %2 : tensor<12x15xi32>, tensor<15x11xi32>) outs(%87 : tensor<12x11xi32>) -> tensor<12x11xi32>
    %89 = math.fma %16, %9, %7 : tensor<12xf16>
    %90 = arith.minf %cst, %cst : f16
    %91 = index.divs %c14, %83
    %92 = vector.broadcast %c412358967_i32 : i32 to vector<15xi32>
    %93 = vector.insert %92, %47 [7] : vector<15xi32> into vector<12x15xi32>
    %94 = math.log %17 : tensor<12xf16>
    %95 = vector.insert %92, %47 [11] : vector<15xi32> into vector<12x15xi32>
    bufferization.dealloc_tensor %0 : tensor<12x15xi16>
    %96 = bufferization.to_tensor %alloc_3 : memref<12xf32>
    %97 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d2 * 2 - (d0 + 64), d3 * 8)>(%c7, %c10, %32, %c12)
    %98 = vector.flat_transpose %92 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
    affine.store %c-18864_i16, %alloc_2[%c4, %c9] : memref<15x11xi16>
    %99 = vector.transpose %45, [1, 0] : vector<12x15xi16> to vector<15x12xi16>
    %100 = index.maxu %91, %c2
    %101 = vector.transpose %20, [0] : vector<11xi64> to vector<11xi64>
    memref.assume_alignment %alloc_14, 2 : memref<12xi32>
    %102 = vector.broadcast %c412358967_i32 : i32 to vector<15x15xi32>
    %103 = vector.outerproduct %98, %98, %102 {kind = #vector.kind<xor>} : vector<15xi32>, vector<15xi32>
    %104 = math.ipowi %11, %3 : tensor<15x11xi64>
    bufferization.dealloc_tensor %reduced : tensor<12xi16>
    %105 = index.sizeof
    %106 = vector.insert %98, %47 [5] : vector<15xi32> into vector<12x15xi32>
    %107 = arith.divf %cst_18, %cst_18 : f32
    %108 = index.maxu %c12, %68
    %109 = math.exp %13 : tensor<11x8xf16>
    %110 = arith.divui %c-18864_i16, %c-8128_i16 : i16
    %111 = arith.xori %false_1, %false_1 : i1
    %112 = vector.broadcast %false : i1 to vector<15xi1>
    %113 = vector.multi_reduction <minsi>, %46, %112 [0] : vector<12x15xi1> to vector<15xi1>
    %114 = math.log1p %9 : tensor<12xf16>
    affine.store %c-18864_i16, %alloc_8[%c7, %c4] : memref<12x15xi16>
    %115 = vector.shuffle %98, %98 [0, 1, 5, 6, 7, 12, 15, 16, 17, 19, 20, 21, 22, 24, 25, 28, 29] : vector<15xi32>, vector<15xi32>
    %116 = arith.mulf %cst, %cst_0 : f16
    %117 = arith.xori %c-18864_i16, %c27835_i16 : i16
    %118 = math.ipowi %6, %14 : tensor<12x15xi32>
    %119 = vector.load %alloc_12[%c3, %c1] : memref<12x15xi32>, vector<15x11xi32>
    %120 = index.sub %c3, %68
    %121 = tensor.empty() : tensor<11x8xi32>
    %122 = math.fpowi %13, %121 : tensor<11x8xf16>, tensor<11x8xi32>
    %true = index.bool.constant true
    %123 = vector.broadcast %true : i1 to vector<15x15xi1>
    %124 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %46, %46, %123 : vector<12x15xi1>, vector<12x15xi1> into vector<15x15xi1>
    %125 = vector.reduction <minui>, %112 : vector<15xi1> into i1
    %126 = index.add %c4, %c12
    %127 = index.maxu %52, %108
    memref.assume_alignment %alloc_13, 1 : memref<11x8xi32>
    %from_elements_20 = tensor.from_elements %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18 : tensor<12xf32>
    %128 = index.maxu %c4, %c15
    %129 = arith.shrui %c1823884268_i64, %c1487694548_i64 : i64
    %splat_21 = tensor.splat %c27835_i16 : tensor<12xi16>
    %130 = index.floordivs %91, %c14
    %alloc_22 = memref.alloc() : memref<12xf32>
    %131 = arith.subi %false, %false : i1
    %132 = math.log2 %15 : tensor<11x8xf32>
    %133 = arith.muli %c-18864_i16, %c27835_i16 : i16
    %134 = math.rsqrt %collapsed : tensor<88xf16>
    %135 = arith.mulf %cst_0, %cst_0 : f16
    %136 = vector.bitcast %46 : vector<12x15xi1> to vector<12x15xi1>
    %137 = math.log2 %15 : tensor<11x8xf32>
    %138 = arith.ceildivsi %c1823884268_i64, %c1823884268_i64 : i64
    %collapsed_23 = tensor.collapse_shape %121 [[0, 1]] : tensor<11x8xi32> into tensor<88xi32>
    %139 = memref.load %alloc[%c4, %c10] : memref<15x11xi64>
    %140 = vector.shuffle %46, %46 [0, 3, 5, 7, 10, 11, 12, 15, 16, 18, 21] : vector<12x15xi1>, vector<12x15xi1>
    %generated_24 = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %cast_39 = tensor.cast %5 : tensor<12x15xi16> to tensor<?x?xi16>
      %260 = math.log10 %15 : tensor<11x8xf32>
      %261 = index.maxs %c4, %c6
      %262 = math.exp %96 : tensor<12xf32>
      tensor.yield %false_1 : i1
    } : tensor<?x11xi1>
    %141 = math.log2 %21 : tensor<12xf16>
    %142 = arith.ori %c136293427_i64, %c1823884268_i64 : i64
    %143 = index.divs %33, %c1
    %rank = tensor.rank %transposed : tensor<12xf16>
    vector.print %20 : vector<11xi64>
    %144 = math.tan %collapsed : tensor<88xf16>
    %145 = arith.remui %25, %c1487694548_i64 : i64
    %146 = math.cttz %collapsed_23 : tensor<88xi32>
    %alloc_25 = memref.alloc() : memref<12x15xi1>
    memref.copy %alloc_9, %alloc_25 : memref<12x15xi1> to memref<12x15xi1>
    %147 = math.round %18 : tensor<12xf16>
    %148 = vector.splat %c13 : vector<12x15xindex>
    %149 = math.ceil %96 : tensor<12xf32>
    %cast = tensor.cast %1 : tensor<15x11xi16> to tensor<?x?xi16>
    %from_elements_26 = tensor.from_elements %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0 : tensor<12xf16>
    vector.print %92 : vector<15xi32>
    %150 = vector.shuffle %98, %98 [1, 2, 5, 6, 7, 9, 10, 14, 15, 16, 17, 18, 19, 22, 26] : vector<15xi32>, vector<15xi32>
    %151 = math.rsqrt %21 : tensor<12xf16>
    %152 = math.exp %17 : tensor<12xf16>
    %true_27 = index.bool.constant true
    %from_elements_28 = tensor.from_elements %c1487694548_i64, %25, %25, %c136293427_i64, %c1823884268_i64, %c1487694548_i64, %c1487694548_i64, %c1487694548_i64, %c936353286_i64, %25, %c136293427_i64, %c1823884268_i64, %c1431178785_i64, %25, %25, %25, %25, %c1487694548_i64, %c1823884268_i64, %c1823884268_i64, %c136293427_i64, %c936353286_i64, %25, %c936353286_i64, %c936353286_i64, %c1431178785_i64, %25, %c1823884268_i64, %25, %c1823884268_i64, %c936353286_i64, %c1823884268_i64, %c936353286_i64, %25, %c936353286_i64, %c936353286_i64, %25, %c1823884268_i64, %c1431178785_i64, %c136293427_i64, %c1823884268_i64, %c936353286_i64, %c136293427_i64, %25, %c1823884268_i64, %c1431178785_i64, %c936353286_i64, %c1431178785_i64, %c136293427_i64, %c1823884268_i64, %c1823884268_i64, %c1431178785_i64, %c1823884268_i64, %c1823884268_i64, %c936353286_i64, %c1487694548_i64, %c1487694548_i64, %c1431178785_i64, %25, %c1431178785_i64, %c1431178785_i64, %c1823884268_i64, %c936353286_i64, %c136293427_i64, %c136293427_i64, %c1431178785_i64, %c1823884268_i64, %c136293427_i64, %c1487694548_i64, %c936353286_i64, %c936353286_i64, %25, %c1431178785_i64, %c1431178785_i64, %c936353286_i64, %c1823884268_i64, %c136293427_i64, %c1487694548_i64, %c1431178785_i64, %c1431178785_i64, %c936353286_i64, %25, %c936353286_i64, %c1431178785_i64, %c1823884268_i64, %c1487694548_i64, %c936353286_i64, %c1823884268_i64, %c1431178785_i64, %c936353286_i64, %c1431178785_i64, %c1487694548_i64, %c136293427_i64, %c936353286_i64, %25, %c936353286_i64, %c1431178785_i64, %c1823884268_i64, %c136293427_i64, %c936353286_i64, %c136293427_i64, %c1487694548_i64, %c1823884268_i64, %c136293427_i64, %c936353286_i64, %c1823884268_i64, %c1487694548_i64, %c136293427_i64, %c1487694548_i64, %c136293427_i64, %c1487694548_i64, %c1823884268_i64, %c1487694548_i64, %25, %c1431178785_i64, %c136293427_i64, %c1431178785_i64, %c1823884268_i64, %c936353286_i64, %c936353286_i64, %c1431178785_i64, %c1431178785_i64, %c936353286_i64, %c1431178785_i64, %c936353286_i64, %25, %c1431178785_i64, %c936353286_i64, %c136293427_i64, %c1487694548_i64, %c1487694548_i64, %c1431178785_i64, %c136293427_i64, %c1823884268_i64, %25, %c1823884268_i64, %c936353286_i64, %c136293427_i64, %25, %c136293427_i64, %c1823884268_i64, %c136293427_i64, %c1487694548_i64, %25, %c1823884268_i64, %c1823884268_i64, %c136293427_i64, %c1823884268_i64, %c936353286_i64, %25, %c936353286_i64, %25, %c1431178785_i64, %c936353286_i64, %c1823884268_i64, %25, %c136293427_i64, %c1431178785_i64, %c136293427_i64, %c1823884268_i64, %c136293427_i64, %25, %c136293427_i64, %c1487694548_i64, %c1487694548_i64, %c1431178785_i64, %c1431178785_i64, %25, %25, %c1823884268_i64, %c1823884268_i64, %25, %c1487694548_i64, %c936353286_i64, %c936353286_i64, %25, %c936353286_i64, %c1487694548_i64, %c136293427_i64, %c1431178785_i64 : tensor<12x15xi64>
    %153 = vector.broadcast %cst_18 : f32 to vector<11x8xf32>
    %154 = vector.fma %153, %153, %153 : vector<11x8xf32>
    %155 = arith.divf %cst, %cst_0 : f16
    %156 = memref.atomic_rmw andi %c2083548653_i32, %alloc_16[%c3] : (i32, memref<12xi32>) -> i32
    %157 = memref.realloc %alloc_15 : memref<12xf32> to memref<8xf32>
    %generated_29 = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %260 = vector.splat %105 : vector<12x15xindex>
      %261 = arith.mulf %cst, %cst : f16
      %262 = vector.splat %143 : vector<12x15xindex>
      %263 = math.round %13 : tensor<11x8xf16>
      tensor.yield %c1431178785_i64 : i64
    } : tensor<?x8xi64>
    %158 = math.tan %9 : tensor<12xf16>
    %159 = math.powf %9, %9 : tensor<12xf16>
    %160 = tensor.empty() : tensor<12x11xi64>
    %161 = linalg.matmul ins(%8, %3 : tensor<12x15xi64>, tensor<15x11xi64>) outs(%160 : tensor<12x11xi64>) -> tensor<12x11xi64>
    %from_elements_30 = tensor.from_elements %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32 : tensor<15x11xi32>
    %162 = tensor.empty() : tensor<12xf16>
    %mapped = linalg.map ins(%21 : tensor<12xf16>) outs(%162 : tensor<12xf16>)
      (%in: f16) {
        %260 = arith.shrsi %true_27, %false_1 : i1
        affine.store %c2083548653_i32, %alloc_6[%c10, %c4] : memref<11x8xi32>
        %inserted_39 = tensor.insert %c2083548653_i32 into %6[%c10, %c10] : tensor<12x15xi32>
        %261 = bufferization.to_tensor %alloc_16 : memref<12xi32>
        %262 = tensor.empty() : tensor<8x12xi64>
        %263 = tensor.empty() : tensor<11x12xi64>
        %264 = linalg.matmul ins(%12, %262 : tensor<11x8xi64>, tensor<8x12xi64>) outs(%263 : tensor<11x12xi64>) -> tensor<11x12xi64>
        %265 = math.atan %162 : tensor<12xf16>
        %266 = math.powf %cst, %cst : f16
        %267 = index.divs %c7, %c13
        %rank_40 = tensor.rank %14 : tensor<12x15xi32>
        %268 = memref.atomic_rmw muli %c27835_i16, %60[%c9, %c10] : (i16, memref<15x11xi16>) -> i16
        %269 = memref.atomic_rmw assign %cst_18, %alloc_15[%c0] : (f32, memref<12xf32>) -> f32
        %270 = math.roundeven %15 : tensor<11x8xf32>
        %271 = arith.subi %c1860604399_i32, %c1860604399_i32 : i32
        %272 = arith.andi %c412358967_i32, %c412358967_i32 : i32
        memref.copy %alloc_4, %alloc : memref<15x11xi64> to memref<15x11xi64>
        %generated_41 = tensor.generate %83 {
        ^bb0(%arg1: index):
          %287 = affine.min affine_map<(d0, d1) -> (((-d1 + 128) ceildiv 64) floordiv 8 - 1, (-d1 + 128) ceildiv 64 - 2, (-d1 + 120) ceildiv 32 - (-d1 + 128) ceildiv 64)>(%c11, %126)
          %288 = arith.divui %true_27, %false_1 : i1
          %from_elements_46 = tensor.from_elements %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32 : tensor<12xi32>
          %alloc_47 = memref.alloc() : memref<12x15xi16>
          tensor.yield %c1860604399_i32 : i32
        } : tensor<?xi32>
        %273 = index.sub %128, %130
        %274 = vector.reduction <minsi>, %92 : vector<15xi32> into i32
        %splat_42 = tensor.splat %c-18864_i16 : tensor<11x8xi16>
        %275 = vector.broadcast %c1431178785_i64 : i64 to vector<11x11xi64>
        %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<mul>} : vector<11xi64>, vector<11xi64>
        %277 = index.castu %c2083548653_i32 : i32 to index
        %278 = memref.alloca_scope  -> (i64) {
          %287 = memref.realloc %alloc_3 : memref<12xf32> to memref<8xf32>
          %288 = math.floor %cst_0 : f16
          bufferization.dealloc_tensor %4 : tensor<12xi32>
          %289 = math.ceil %13 : tensor<11x8xf16>
          affine.store %false, %alloc_5[%c13, %c6] : memref<11x8xi1>
          %290 = arith.shrui %true_27, %false : i1
          %291 = math.absi %1 : tensor<15x11xi16>
          %292 = affine.min affine_map<(d0, d1) -> ((-d0) mod 64, -d0, 0)>(%120, %128)
          %false_46 = index.bool.constant false
          %293 = arith.divsi %c936353286_i64, %c936353286_i64 : i64
          %294 = vector.broadcast %cst_18 : f32 to vector<11x8xf32>
          %295 = vector.fma %294, %294, %154 : vector<11x8xf32>
          %296 = vector.broadcast %cst_18 : f32 to vector<12x15xf32>
          %297 = vector.fma %296, %296, %296 : vector<12x15xf32>
          %298 = vector.matrix_multiply %98, %98 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
          %299 = vector.insertelement %c-18864_i16, %79[] : vector<i16>
          affine.store %cst_18, %alloc_3[%c13] : memref<12xf32>
          %300 = vector.load %alloc_5[%c7, %c6] : memref<11x8xi1>, vector<12xi1>
          %301 = math.ctpop %c136293427_i64 : i64
          %302 = math.ceil %21 : tensor<12xf16>
          %303 = math.fpowi %16, %261 : tensor<12xf16>, tensor<12xi32>
          %304 = index.sizeof
          %305 = arith.remf %in, %cst : f16
          %306 = arith.remf %cst_18, %cst_18 : f32
          %307 = math.atan %13 : tensor<11x8xf16>
          %308 = vector.matrix_multiply %298, %298 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %309 = math.fma %in, %cst_0, %cst : f16
          vector.print %297 : vector<12x15xf32>
          %310 = vector.broadcast %true_27 : i1 to vector<11xi1>
          vector.transfer_write %310, %alloc_5[%c1, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi1>, memref<11x8xi1>
          %311 = math.ceil %from_elements_20 : tensor<12xf32>
          %312 = arith.minsi %c27835_i16, %c27835_i16 : i16
          %313 = index.floordivs %292, %c2
          %314 = index.casts %c-8128_i16 : i16 to index
          %315 = math.powf %from_elements_26, %17 : tensor<12xf16>
          memref.alloca_scope.return %c136293427_i64 : i64
        }
        %279 = bufferization.clone %53 : memref<12xf16> to memref<12xf16>
        %280 = arith.ceildivsi %c27835_i16, %c-18864_i16 : i16
        %281 = math.rsqrt %15 : tensor<11x8xf32>
        %splat_43 = tensor.splat %cst_0 : tensor<12xf16>
        %282 = affine.if affine_set<(d0, d1) : (d1 floordiv 16 + 16 >= 0)>(%c7, %c12) -> memref<12xf16> {
          %287 = bufferization.clone %alloc_14 : memref<12xi32> to memref<12xi32>
          %288 = vector.bitcast %92 : vector<15xi32> to vector<15xi32>
          %rank_46 = tensor.rank %4 : tensor<12xi32>
          %289 = index.maxu %c9, %rank_46
          %290 = math.tan %transposed : tensor<12xf16>
          %291 = math.absf %from_elements_26 : tensor<12xf16>
          %292 = index.maxu %rank, %c11
          %293 = bufferization.to_memref %18 : memref<12xf16>
          affine.yield %293 : memref<12xf16>
        } else {
          %287 = index.sizeof
          %288 = math.rsqrt %9 : tensor<12xf16>
          %289 = vector.bitcast %119 : vector<15x11xi32> to vector<15x11xi32>
          %290 = vector.broadcast %in : f16 to vector<f16>
          %291 = vector.transfer_write %290, %17[%c15] : vector<f16>, tensor<12xf16>
          %292 = math.rsqrt %9 : tensor<12xf16>
          %293 = math.atan2 %15, %15 : tensor<11x8xf32>
          bufferization.dealloc_tensor %1 : tensor<15x11xi16>
          %294 = arith.andi %true, %false_1 : i1
          affine.yield %53 : memref<12xf16>
        }
        %283 = tensor.empty() : tensor<88xi32>
        %mapped_44 = linalg.map ins(%collapsed_23, %collapsed_23 : tensor<88xi32>, tensor<88xi32>) outs(%283 : tensor<88xi32>)
          (%in_46: i32, %in_47: i32) {
            %287 = bufferization.clone %alloc_5 : memref<11x8xi1> to memref<11x8xi1>
            %288 = math.absf %splat_43 : tensor<12xf16>
            %289 = arith.andi %c1487694548_i64, %c136293427_i64 : i64
            %290 = vector.extract_strided_slice %154 {offsets = [9], sizes = [2], strides = [1]} : vector<11x8xf32> to vector<2x8xf32>
            %291 = vector.bitcast %119 : vector<15x11xi32> to vector<15x11xi32>
            bufferization.dealloc_tensor %6 : tensor<12x15xi32>
            %292 = vector.transpose %45, [0, 1] : vector<12x15xi16> to vector<12x15xi16>
            %293 = arith.divf %cst, %in : f16
            %294 = math.roundeven %17 : tensor<12xf16>
            %rank_48 = tensor.rank %splat_21 : tensor<12xi16>
            %295 = arith.divui %c136293427_i64, %c1487694548_i64 : i64
            %296 = math.rsqrt %9 : tensor<12xf16>
            %297 = math.cttz %splat_42 : tensor<11x8xi16>
            %cast_49 = tensor.cast %6 : tensor<12x15xi32> to tensor<?x?xi32>
            %298 = math.cttz %c936353286_i64 : i64
            bufferization.dealloc_tensor %splat_43 : tensor<12xf16>
            %299 = bufferization.to_memref %13 : memref<11x8xf16>
            %300 = arith.minui %in_46, %c412358967_i32 : i32
            %301 = index.maxu %55, %267
            %302 = math.powf %17, %16 : tensor<12xf16>
            %303 = arith.minf %cst_0, %cst : f16
            %rank_50 = tensor.rank %121 : tensor<11x8xi32>
            %304 = math.tan %cst : f16
            %alloc_51 = memref.alloc() : memref<12x15xi1>
            memref.copy %alloc_9, %alloc_51 : memref<12x15xi1> to memref<12x15xi1>
            %305 = index.ceildivs %rank_40, %c1
            %306 = index.mul %c0, %c5
            %307 = math.log2 %18 : tensor<12xf16>
            %308 = bufferization.clone %alloc_7 : memref<11x8xi32> to memref<11x8xi32>
            %309 = index.casts %25 : i64 to index
            memref.assume_alignment %308, 8 : memref<11x8xi32>
            %310 = arith.subi %c1487694548_i64, %c1431178785_i64 : i64
            %311 = arith.remf %cst, %in : f16
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        memref.tensor_store %0, %alloc_8 : memref<12x15xi16>
        %284 = math.absi %splat_21 : tensor<12xi16>
        %285 = math.rsqrt %21 : tensor<12xf16>
        %286 = vector.shuffle %98, %92 [1, 3, 6, 7, 8, 9, 14, 15, 16, 17, 19, 20, 21, 22, 25, 26] : vector<15xi32>, vector<15xi32>
        %cst_45 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_45 : f16
      }
    %163 = math.atan %18 : tensor<12xf16>
    %164 = vector.splat %33 : vector<12xindex>
    %165 = math.log %15 : tensor<11x8xf32>
    %166 = arith.negf %cst_0 : f16
    memref.copy %alloc_6, %alloc_13 : memref<11x8xi32> to memref<11x8xi32>
    %167 = vector.load %alloc_5[%c8, %c1] : memref<11x8xi1>, vector<15x11xi1>
    %168 = vector.transpose %79, [] : vector<i16> to vector<i16>
    scf.index_switch %c1 
    case 1 {
      %260 = arith.addi %c1431178785_i64, %c1823884268_i64 : i64
      bufferization.dealloc_tensor %17 : tensor<12xf16>
      %261 = index.maxu %c10, %100
      %262 = arith.cmpf ord, %cst_18, %cst_18 : f32
      %263 = arith.subi %c412358967_i32, %c1860604399_i32 : i32
      %264 = math.tan %cst_0 : f16
      %265 = vector.shuffle %153, %153 [3, 5, 6, 7, 9, 10, 13, 15, 17, 18] : vector<11x8xf32>, vector<11x8xf32>
      %266 = math.roundeven %23 : tensor<f16>
      %collapsed_39 = tensor.collapse_shape %14 [[0, 1]] : tensor<12x15xi32> into tensor<180xi32>
      %267 = arith.ceildivsi %c-8128_i16, %c27835_i16 : i16
      %268 = arith.ori %false_1, %false_1 : i1
      %269 = scf.if %true_27 -> (memref<12x15xf32>) {
        %cst_42 = arith.constant 1.1892393E+9 : f32
        %272 = index.ceildivs %100, %c3
        %273 = vector.insertelement %c-8128_i16, %79[] : vector<i16>
        %274 = arith.ori %c-8128_i16, %c-8128_i16 : i16
        %275 = vector.broadcast %cst_18 : f32 to vector<15x11xf32>
        %276 = vector.fma %275, %275, %275 : vector<15x11xf32>
        memref.tensor_store %4, %alloc_16 : memref<12xi32>
        memref.tensor_store %6, %alloc_12 : memref<12x15xi32>
        %277 = bufferization.clone %53 : memref<12xf16> to memref<12xf16>
        %alloc_43 = memref.alloc() : memref<12x15xf32>
        scf.yield %alloc_43 : memref<12x15xf32>
      } else {
        %272 = math.ctpop %reduced : tensor<12xi16>
        memref.copy %alloc_16, %alloc_14 : memref<12xi32> to memref<12xi32>
        %273 = tensor.empty() : tensor<11x11xi16>
        %274 = tensor.empty() : tensor<15x11xi16>
        %275 = linalg.matmul ins(%1, %273 : tensor<15x11xi16>, tensor<11x11xi16>) outs(%274 : tensor<15x11xi16>) -> tensor<15x11xi16>
        %276 = math.round %from_elements_26 : tensor<12xf16>
        %277 = math.fma %9, %transposed, %16 : tensor<12xf16>
        %278 = math.exp2 %13 : tensor<11x8xf16>
        %279 = math.round %from_elements_20 : tensor<12xf32>
        %280 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %280, %53[%72] : vector<f16>, memref<12xf16>
        %alloc_42 = memref.alloc() : memref<12x15xf32>
        scf.yield %alloc_42 : memref<12x15xf32>
      }
      %alloc_40 = memref.alloc() : memref<12x15xi64>
      %270 = tensor.empty(%127, %c14) : tensor<?x?xf32>
      %271 = vector.splat %55 : vector<15x11xindex>
      %cast_41 = tensor.cast %121 : tensor<11x8xi32> to tensor<?x?xi32>
      scf.yield
    }
    case 2 {
      %260 = math.log2 %cst_0 : f16
      %261 = math.cttz %12 : tensor<11x8xi64>
      %generated_39 = tensor.generate %c11 {
      ^bb0(%arg1: index, %arg2: index):
        %276 = vector.flat_transpose %98 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %277 = vector.splat %c2 : vector<11x8xindex>
        %278 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 2)>(%67, %c10, %67)
        %279 = arith.xori %c-18864_i16, %c27835_i16 : i16
        tensor.yield %cst_18 : f32
      } : tensor<?x15xf32>
      %262 = vector.broadcast %c10 : index to vector<12xindex>
      %263 = vector.broadcast %true_27 : i1 to vector<12xi1>
      vector.scatter %alloc_5[%c1, %c7] [%262], %263, %263 : memref<11x8xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
      %264 = vector.broadcast %c412358967_i32 : i32 to vector<15x15xi32>
      %265 = vector.outerproduct %92, %92, %264 {kind = #vector.kind<or>} : vector<15xi32>, vector<15xi32>
      %alloc_40 = memref.alloc() : memref<1x15xi32>
      %alloc_41 = memref.alloc() : memref<15xi32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %alloc_41 : memref<1x15xi32>, memref<15xi32>) outs(%expanded : tensor<15x11x1xi32>) {
      ^bb0(%in: i32, %in_43: i32, %out: i32):
        %276 = vector.broadcast %true_27 : i1 to vector<15x15xi1>
        %277 = vector.outerproduct %112, %112, %276 {kind = #vector.kind<add>} : vector<15xi1>, vector<15xi1>
        %278 = vector.extract %154[6] : vector<11x8xf32>
        %279 = vector.insert %c2083548653_i32, %98 [9] : i32 into vector<15xi32>
        %280 = arith.ceildivsi %in_43, %c412358967_i32 : i32
        %281 = arith.minsi %in_43, %c412358967_i32 : i32
        %282 = vector.multi_reduction <maxsi>, %20, %20 [] : vector<11xi64> to vector<11xi64>
        %283 = index.divu %c11, %143
        %284 = vector.bitcast %46 : vector<12x15xi1> to vector<12x15xi1>
        %285 = math.fpowi %cst, %in_43 : f16, i32
        affine.store %c-8128_i16, %alloc_8[%c10, %c11] : memref<12x15xi16>
        %286 = index.castu %c136293427_i64 : i64 to index
        %287 = tensor.empty() : tensor<11x8xf16>
        %288 = index.divu %105, %67
        %289 = index.mul %c12, %rank
        %290 = math.atan %cst_18 : f32
        %291 = vector.splat %c412358967_i32 : vector<12x15xi32>
        %292 = index.sub %127, %127
        %293 = math.absf %18 : tensor<12xf16>
        %294 = vector.broadcast %cst_0 : f16 to vector<f16>
        %295 = vector.transfer_write %294, %162[%286] : vector<f16>, tensor<12xf16>
        %296 = math.cttz %c-18864_i16 : i16
        %297 = index.divu %c1, %126
        %298 = arith.shrsi %c412358967_i32, %c412358967_i32 : i32
        %299 = index.ceildivs %297, %49
        %300 = arith.xori %c1487694548_i64, %c1487694548_i64 : i64
        %301 = math.exp2 %13 : tensor<11x8xf16>
        %302 = index.casts %c4 : index to i32
        %rank_44 = tensor.rank %collapsed_23 : tensor<88xi32>
        %303 = index.casts %128 : index to i32
        %304 = arith.addi %c136293427_i64, %c936353286_i64 : i64
        %305 = arith.shrui %c1823884268_i64, %c136293427_i64 : i64
        %306 = arith.addf %cst_18, %cst_18 : f32
        %307 = memref.atomic_rmw minu %c-18864_i16, %alloc_8[%c5, %c7] : (i16, memref<12x15xi16>) -> i16
        linalg.yield %c1860604399_i32 : i32
      } -> tensor<15x11x1xi32>
      %from_elements_42 = tensor.from_elements %c27835_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-18864_i16, %c27835_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c27835_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c27835_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c-8128_i16, %c-18864_i16, %c-18864_i16, %c27835_i16, %c-8128_i16, %c27835_i16 : tensor<12x15xi16>
      %267 = bufferization.clone %53 : memref<12xf16> to memref<12xf16>
      %268 = vector.broadcast %c14 : index to vector<15xindex>
      vector.scatter %alloc_13[%c1, %c6] [%268], %112, %98 : memref<11x8xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
      %269 = math.ipowi %11, %11 : tensor<15x11xi64>
      %270 = math.fpowi %17, %4 : tensor<12xf16>, tensor<12xi32>
      %271 = vector.reduction <maxsi>, %98 : vector<15xi32> into i32
      %272 = math.round %96 : tensor<12xf32>
      %273 = index.castu %c1431178785_i64 : i64 to index
      %274 = bufferization.clone %alloc_9 : memref<12x15xi1> to memref<12x15xi1>
      %275 = arith.mulf %cst, %cst : f16
      scf.yield
    }
    case 3 {
      %alloc_39 = memref.alloc() : memref<11x8xi16>
      %260 = tensor.empty() : tensor<15x8xi16>
      %261 = linalg.matmul ins(%10, %alloc_39 : tensor<15x11xi16>, memref<11x8xi16>) outs(%260 : tensor<15x8xi16>) -> tensor<15x8xi16>
      %262 = math.round %13 : tensor<11x8xf16>
      %263 = arith.maxf %cst, %cst : f16
      %264 = index.casts %52 : index to i32
      %265 = index.ceildivs %c1, %c4
      %266 = memref.atomic_rmw muli %c1860604399_i32, %alloc_14[%c3] : (i32, memref<12xi32>) -> i32
      %267 = arith.negf %cst : f16
      %268 = math.fma %cst_18, %cst_18, %cst_18 : f32
      %269 = arith.addi %c27835_i16, %c-18864_i16 : i16
      %270 = index.divu %33, %68
      %271 = memref.realloc %53 : memref<12xf16> to memref<11xf16>
      %272 = vector.transpose %47, [1, 0] : vector<12x15xi32> to vector<15x12xi32>
      %273 = arith.ori %c27835_i16, %c-18864_i16 : i16
      %274 = scf.index_switch %105 -> memref<15x11xi32> 
      case 1 {
        %277 = arith.addf %cst_18, %cst_18 : f32
        %278 = arith.mulf %cst_0, %cst_0 : f16
        %279 = math.copysign %7, %7 : tensor<12xf16>
        %280 = vector.multi_reduction <mul>, %136, %136 [] : vector<12x15xi1> to vector<12x15xi1>
        %281 = arith.mulf %cst_18, %cst_18 : f32
        %282 = vector.broadcast %c6 : index to vector<11xindex>
        %283 = vector.broadcast %true : i1 to vector<11xi1>
        vector.scatter %alloc_9[%c0, %c6] [%282], %283, %283 : memref<12x15xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %284 = vector.broadcast %false_1 : i1 to vector<15x15xi1>
        %285 = vector.outerproduct %112, %112, %284 {kind = #vector.kind<add>} : vector<15xi1>, vector<15xi1>
        %286 = math.tanh %17 : tensor<12xf16>
        %287 = math.fma %collapsed, %collapsed, %collapsed : tensor<88xf16>
        %288 = vector.transpose %79, [] : vector<i16> to vector<i16>
        %289 = memref.realloc %alloc_14 : memref<12xi32> to memref<11xi32>
        %290 = vector.bitcast %98 : vector<15xi32> to vector<15xi32>
        %291 = vector.bitcast %48 : vector<12x15xi16> to vector<12x15xi16>
        %292 = bufferization.clone %alloc_14 : memref<12xi32> to memref<12xi32>
        %alloc_40 = memref.alloc() : memref<11x8xi1>
        memref.copy %alloc_5, %alloc_40 : memref<11x8xi1> to memref<11x8xi1>
        %293 = bufferization.to_memref %11 : memref<15x11xi64>
        %alloc_41 = memref.alloc() : memref<15x11xi32>
        scf.yield %alloc_41 : memref<15x11xi32>
      }
      case 2 {
        %277 = vector.transpose %46, [0, 1] : vector<12x15xi1> to vector<12x15xi1>
        %278 = arith.subi %c1487694548_i64, %c136293427_i64 : i64
        %279 = arith.divf %cst_0, %cst : f16
        %280 = bufferization.clone %alloc : memref<15x11xi64> to memref<15x11xi64>
        %281 = vector.splat %55 : vector<11x8xindex>
        %282 = arith.ceildivsi %c412358967_i32, %c1860604399_i32 : i32
        %283 = vector.broadcast %c-18864_i16 : i16 to vector<15xi16>
        %284 = vector.insert %283, %48 [8] : vector<15xi16> into vector<12x15xi16>
        %285 = math.round %9 : tensor<12xf16>
        %286 = arith.maxsi %c1860604399_i32, %c412358967_i32 : i32
        %287 = arith.cmpi ult, %true_27, %true : i1
        %288 = arith.subi %c1431178785_i64, %25 : i64
        %289 = vector.bitcast %48 : vector<12x15xi16> to vector<12x15xi16>
        %290 = tensor.empty() : tensor<12x11xi16>
        %291 = linalg.matmul ins(%5, %1 : tensor<12x15xi16>, tensor<15x11xi16>) outs(%290 : tensor<12x11xi16>) -> tensor<12x11xi16>
        memref.store %cst_18, %alloc_3[%c9] : memref<12xf32>
        %alloc_40 = memref.alloc() : memref<12x15xf16>
        %292 = vector.broadcast %cst : f16 to vector<12x15xf16>
        %293 = vector.gather %alloc_40[%105, %127] [%47], %136, %292 : memref<12x15xf16>, vector<12x15xi32>, vector<12x15xi1>, vector<12x15xf16> into vector<12x15xf16>
        %294 = vector.broadcast %cst_18 : f32 to vector<8xf32>
        %295 = vector.insert %294, %154 [9] : vector<8xf32> into vector<11x8xf32>
        %alloc_41 = memref.alloc() : memref<15x11xi32>
        scf.yield %alloc_41 : memref<15x11xi32>
      }
      case 3 {
        %277 = index.casts %c9 : index to i32
        %278 = math.rsqrt %9 : tensor<12xf16>
        affine.store %c1860604399_i32, %alloc_12[%c10, %c12] : memref<12x15xi32>
        %279 = bufferization.clone %alloc_5 : memref<11x8xi1> to memref<11x8xi1>
        %280 = arith.remf %cst_18, %cst_18 : f32
        %281 = arith.minf %cst_18, %cst_18 : f32
        memref.tensor_store %96, %alloc_3 : memref<12xf32>
        %282 = arith.remf %cst, %cst_0 : f16
        %283 = vector.load %alloc_13[%c8, %c3] : memref<11x8xi32>, vector<12xi32>
        %284 = math.absi %splat_21 : tensor<12xi16>
        %cast_40 = tensor.cast %5 : tensor<12x15xi16> to tensor<?x?xi16>
        %true_41 = index.bool.constant true
        %285 = math.absf %22 : tensor<f16>
        %splat_42 = tensor.splat %c896457825_i32 : tensor<11x8xi32>
        %286 = vector.extract %167[12] : vector<15x11xi1>
        %287 = memref.load %alloc_6[%c5, %c3] : memref<11x8xi32>
        %alloc_43 = memref.alloc() : memref<15x11xi32>
        scf.yield %alloc_43 : memref<15x11xi32>
      }
      case 4 {
        %277 = vector.insertelement %c1860604399_i32, %92[%c1 : index] : vector<15xi32>
        %278 = math.fma %21, %9, %16 : tensor<12xf16>
        %279 = arith.ori %false_1, %true : i1
        %280 = vector.broadcast %c3 : index to vector<8xindex>
        %281 = vector.broadcast %false : i1 to vector<8xi1>
        %282 = vector.broadcast %c2083548653_i32 : i32 to vector<8xi32>
        vector.scatter %alloc_7[%c4, %c3] [%280], %281, %282 : memref<11x8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
        %283 = arith.shrsi %c-18864_i16, %c-18864_i16 : i16
        %284 = math.cttz %10 : tensor<15x11xi16>
        %285 = vector.load %alloc_3[%c4] : memref<12xf32>, vector<12xf32>
        %286 = index.casts %127 : index to i32
        %287 = index.ceildivs %c12, %rank
        %288 = vector.broadcast %true : i1 to vector<15x15xi1>
        %289 = vector.outerproduct %112, %112, %288 {kind = #vector.kind<xor>} : vector<15xi1>, vector<15xi1>
        %from_elements_40 = tensor.from_elements %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c2083548653_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c2083548653_i32, %c412358967_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c896457825_i32, %c896457825_i32, %c412358967_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32 : tensor<12x15xi32>
        %290 = arith.subi %c1487694548_i64, %c1823884268_i64 : i64
        bufferization.dealloc_tensor %23 : tensor<f16>
        %291 = arith.andi %true, %false : i1
        %292 = arith.ceildivsi %true_27, %true_27 : i1
        %293 = arith.minsi %c2083548653_i32, %c2083548653_i32 : i32
        %alloc_41 = memref.alloc() : memref<15x11xi32>
        scf.yield %alloc_41 : memref<15x11xi32>
      }
      default {
        %true_40 = index.bool.constant true
        %277 = vector.load %53[%c9] : memref<12xf16>, vector<12x15xf16>
        %278 = vector.broadcast %c136293427_i64 : i64 to vector<8xi64>
        %279 = vector.transfer_write %278, %8[%67, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, tensor<12x15xi64>
        %280 = math.fma %transposed, %from_elements_26, %21 : tensor<12xf16>
        %281 = arith.mulf %cst_0, %cst : f16
        %282 = arith.addi %true_40, %true : i1
        %283 = vector.broadcast %cst_18 : f32 to vector<12xf32>
        %284 = vector.fma %283, %283, %283 : vector<12xf32>
        %285 = arith.divf %cst_0, %cst_0 : f16
        %286 = math.cttz %6 : tensor<12x15xi32>
        %287 = math.rsqrt %96 : tensor<12xf32>
        %inserted_41 = tensor.insert %cst_0 into %13[%c6, %c4] : tensor<11x8xf16>
        %288 = vector.reduction <minf>, %284 : vector<12xf32> into f32
        %289 = math.ipowi %5, %5 : tensor<12x15xi16>
        %290 = math.log %cst_18 : f32
        %291 = arith.divui %c896457825_i32, %c412358967_i32 : i32
        %292 = math.exp2 %7 : tensor<12xf16>
        %alloc_42 = memref.alloc() : memref<15x11xi32>
        scf.yield %alloc_42 : memref<15x11xi32>
      }
      %275 = tensor.empty() : tensor<12x15xf32>
      %276 = math.round %96 : tensor<12xf32>
      scf.yield
    }
    case 4 {
      %260 = math.tan %17 : tensor<12xf16>
      %261 = math.rsqrt %7 : tensor<12xf16>
      %262 = arith.remf %cst, %cst_0 : f16
      %263 = memref.load %alloc_6[%c7, %c2] : memref<11x8xi32>
      %264 = vector.transpose %112, [0] : vector<15xi1> to vector<15xi1>
      %265 = index.casts %105 : index to i32
      %alloc_39 = memref.alloc() : memref<12x15xi1>
      memref.copy %alloc_9, %alloc_39 : memref<12x15xi1> to memref<12x15xi1>
      %splat_40 = tensor.splat %cst_18 : tensor<12x15xf32>
      %266 = bufferization.to_tensor %alloc_3 : memref<12xf32>
      vector.print %20 : vector<11xi64>
      %from_elements_41 = tensor.from_elements %false, %true, %false_1, %false, %true_27, %false_1, %false, %false_1, %false, %true_27, %true_27, %true, %true, %true, %false_1, %false, %true, %true_27, %false, %false_1, %false, %false, %false, %true_27, %true, %false_1, %false_1, %true_27, %false, %true, %true_27, %true_27, %false_1, %false_1, %true, %false_1, %false_1, %true, %true, %true, %false, %true_27, %true, %false, %true_27, %false, %false_1, %false, %true, %true_27, %false, %true, %false_1, %true_27, %true, %false_1, %false, %true_27, %true, %false_1, %true, %false, %false_1, %false_1, %true, %true_27, %false_1, %false, %true, %true, %false, %true, %true_27, %true, %false, %true_27, %true, %false_1, %false, %true_27, %true_27, %false_1, %false, %true, %false, %true, %false, %false, %false_1, %false_1, %true_27, %false, %false, %false, %false, %true_27, %true, %true_27, %true, %false, %true, %true_27, %true, %true_27, %true_27, %false, %false_1, %true_27, %true, %false_1, %true_27, %false_1, %true, %true_27, %false_1, %true_27, %false_1, %true_27, %true_27, %true, %true, %false, %true_27, %false, %true, %true_27, %true_27, %true, %false, %false_1, %false, %false_1, %false, %false, %true, %false_1, %false_1, %false, %false, %false_1, %true_27, %false, %false, %true_27, %false, %false_1, %false_1, %true, %true_27, %false, %false_1, %true_27, %true, %true, %false, %false_1, %true_27, %false_1, %true_27, %true_27, %false_1, %false, %true_27, %false, %false, %false_1, %true, %true_27, %true_27, %true_27, %false, %true_27, %false_1, %true, %false_1, %false, %true, %false_1, %true, %false : tensor<12x15xi1>
      %c1829697604_i64 = arith.constant 1829697604 : i64
      %267 = tensor.empty() : tensor<15x11xi1>
      %268 = tensor.empty() : tensor<12x11xi1>
      %269 = linalg.matmul ins(%from_elements_41, %267 : tensor<12x15xi1>, tensor<15x11xi1>) outs(%268 : tensor<12x11xi1>) -> tensor<12x11xi1>
      %splat_42 = tensor.splat %c2083548653_i32 : tensor<15x11xi32>
      %270 = math.fpowi %15, %121 : tensor<11x8xf32>, tensor<11x8xi32>
      %271 = arith.andi %c-18864_i16, %c-8128_i16 : i16
      scf.yield
    }
    default {
      %260 = index.sizeof
      %261 = vector.broadcast %25 : i64 to vector<12xi64>
      %262 = vector.broadcast %true_27 : i1 to vector<12xi1>
      %263 = vector.broadcast %c1860604399_i32 : i32 to vector<12xi32>
      %264 = vector.gather %alloc[%c13, %c7] [%263], %262, %261 : memref<15x11xi64>, vector<12xi32>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      bufferization.dealloc_tensor %from_elements_30 : tensor<15x11xi32>
      %265 = vector.splat %100 : vector<11x8xindex>
      %266 = arith.addf %cst_0, %cst_0 : f16
      scf.execute_region {
        %273 = index.sizeof
        %274 = math.ctpop %4 : tensor<12xi32>
        %275 = index.floordivs %49, %55
        %276 = vector.splat %68 : vector<15x11xindex>
        %277 = arith.mulf %cst_18, %cst_18 : f32
        %278 = memref.load %60[%c13, %c6] : memref<15x11xi16>
        %279 = math.log2 %23 : tensor<f16>
        %280 = vector.bitcast %47 : vector<12x15xi32> to vector<12x15xi32>
        %281 = vector.insert %c896457825_i32, %92 [11] : i32 into vector<15xi32>
        memref.tensor_store %7, %53 : memref<12xf16>
        %282 = math.exp2 %96 : tensor<12xf32>
        memref.tensor_store %5, %alloc_8 : memref<12x15xi16>
        %283 = vector.multi_reduction <minsi>, %263, %c1860604399_i32 [0] : vector<12xi32> to i32
        %284 = memref.atomic_rmw mulf %cst, %53[%c6] : (f16, memref<12xf16>) -> f16
        memref.assume_alignment %alloc_9, 1 : memref<12x15xi1>
        memref.tensor_store %6, %alloc_12 : memref<12x15xi32>
        scf.yield
      }
      %generated_39 = tensor.generate %c1, %91 {
      ^bb0(%arg1: index, %arg2: index):
        %273 = math.cttz %2 : tensor<15x11xi32>
        %274 = vector.broadcast %c15 : index to vector<11xindex>
        %275 = vector.broadcast %true : i1 to vector<11xi1>
        %276 = vector.broadcast %cst_18 : f32 to vector<11xf32>
        vector.scatter %alloc_3[%c11] [%274], %275, %276 : memref<12xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %277 = math.tan %15 : tensor<11x8xf32>
        %278 = index.ceildivs %c3, %arg1
        tensor.yield %cst_18 : f32
      } : tensor<?x?xf32>
      %267 = math.atan %transposed : tensor<12xf16>
      vector.print %112 : vector<15xi1>
      %c136787325_i64 = arith.constant 136787325 : i64
      %268 = memref.realloc %alloc_14 : memref<12xi32> to memref<15xi32>
      %269 = index.divu %55, %100
      %270 = vector.reduction <minui>, %262 : vector<12xi1> into i1
      %271 = index.floordivs %127, %143
      %272 = arith.minsi %true_27, %false_1 : i1
      %cast_40 = tensor.cast %23 : tensor<f16> to tensor<f16>
    }
    %alloc_31 = memref.alloc() : memref<12x15xf32>
    %169 = vector.flat_transpose %98 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
    %170 = vector.insert %112, %46 [1] : vector<15xi1> into vector<12x15xi1>
    %171 = math.round %21 : tensor<12xf16>
    %172 = vector.flat_transpose %98 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
    %173 = math.log2 %13 : tensor<11x8xf16>
    %174 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<15x11x1xi32>) {
    ^bb0(%out: i32):
      %260 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
      %261 = arith.maxsi %c-8128_i16, %c27835_i16 : i16
      %262 = memref.atomic_rmw minf %cst_0, %alloc_11[%c3, %c4] : (f16, memref<15x11xf16>) -> f16
      %263 = vector.insert %c412358967_i32, %98 [7] : i32 into vector<15xi32>
      %264 = math.log %96 : tensor<12xf32>
      %265 = index.ceildivs %c15, %97
      %266 = arith.ori %25, %c1431178785_i64 : i64
      %267 = math.absi %4 : tensor<12xi32>
      %268 = math.round %22 : tensor<f16>
      %269 = arith.minsi %c1860604399_i32, %c2083548653_i32 : i32
      %270 = index.ceildivu %67, %105
      %271 = arith.minui %c896457825_i32, %c2083548653_i32 : i32
      %272 = tensor.empty() : tensor<12xf32>
      %mapped_39 = linalg.map ins(%from_elements_20 : tensor<12xf32>) outs(%272 : tensor<12xf32>)
        (%in: f32) {
          %295 = arith.minf %cst, %cst_0 : f16
          %rank_41 = tensor.rank %11 : tensor<15x11xi64>
          %296 = index.divu %127, %52
          %297 = arith.xori %c1431178785_i64, %c1823884268_i64 : i64
          %298 = bufferization.to_memref %10 : memref<15x11xi16>
          affine.store %c27835_i16, %alloc_8[%c11, %c1] : memref<12x15xi16>
          %299 = vector.broadcast %c936353286_i64 : i64 to vector<11x11xi64>
          %300 = vector.outerproduct %260, %20, %299 {kind = #vector.kind<minui>} : vector<11xi64>, vector<11xi64>
          %301 = vector.splat %c6 : vector<15x11xindex>
          %302 = index.castu %c-8128_i16 : i16 to index
          %303 = affine.min affine_map<(d0) -> ((d0 * 4) floordiv 8, ((d0 * 5) ceildiv 16) mod 4)>(%rank_41)
          %cast_42 = tensor.cast %collapsed : tensor<88xf16> to tensor<?xf16>
          %304 = index.divs %127, %c5
          %305 = arith.subi %c1823884268_i64, %c136293427_i64 : i64
          %306 = math.absf %7 : tensor<12xf16>
          %307 = arith.minsi %c412358967_i32, %c896457825_i32 : i32
          %308 = math.exp %13 : tensor<11x8xf16>
          %309 = index.divs %rank, %c6
          %310 = arith.maxsi %c2083548653_i32, %out : i32
          %311 = vector.broadcast %in : f32 to vector<15x11xf32>
          %312 = vector.fma %311, %311, %311 : vector<15x11xf32>
          %313 = index.sizeof
          affine.store %true_27, %alloc_5[%c5, %c2] : memref<11x8xi1>
          %314 = arith.addi %out, %c1860604399_i32 : i32
          %315 = math.exp2 %7 : tensor<12xf16>
          %extracted = tensor.extract %2[%c4, %c7] : tensor<15x11xi32>
          %316 = vector.broadcast %cst_18 : f32 to vector<12x15xf32>
          %317 = vector.fma %316, %316, %316 : vector<12x15xf32>
          %318 = math.tan %13 : tensor<11x8xf16>
          %319 = math.roundeven %272 : tensor<12xf32>
          %320 = vector.insert %112, %136 [3] : vector<15xi1> into vector<12x15xi1>
          %321 = memref.load %53[%c5] : memref<12xf16>
          %alloc_43 = memref.alloc() : memref<12xf16>
          memref.copy %53, %alloc_43 : memref<12xf16> to memref<12xf16>
          %322 = arith.shrui %true, %false : i1
          %323 = bufferization.to_tensor %alloc_2 : memref<15x11xi16>
          %cst_44 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_44 : f32
        }
      %273 = arith.ceildivsi %c896457825_i32, %c896457825_i32 : i32
      %274 = math.log2 %17 : tensor<12xf16>
      %275 = arith.ori %false_1, %false_1 : i1
      %276 = math.expm1 %13 : tensor<11x8xf16>
      %277 = vector.flat_transpose %172 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %278 = tensor.empty() : tensor<1xi32>
      %279 = tensor.empty() : tensor<15xi32>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %279, %278 : tensor<1xi32>, tensor<15xi32>, tensor<1xi32>) outs(%expanded : tensor<15x11x1xi32>) {
      ^bb0(%in: i32, %in_41: i32, %in_42: i32, %out_43: i32):
        %295 = math.floor %15 : tensor<11x8xf32>
        %true_44 = index.bool.constant true
        %296 = vector.broadcast %c136293427_i64 : i64 to vector<11x11xi64>
        %297 = vector.outerproduct %20, %20, %296 {kind = #vector.kind<and>} : vector<11xi64>, vector<11xi64>
        %298 = arith.maxui %c-8128_i16, %c-18864_i16 : i16
        %true_45 = index.bool.constant true
        %299 = arith.maxsi %true_45, %true : i1
        %300 = vector.transpose %153, [0, 1] : vector<11x8xf32> to vector<11x8xf32>
        %301 = vector.transpose %260, [0] : vector<11xi64> to vector<11xi64>
        %302 = index.sub %c7, %52
        %303 = vector.splat %c14 : vector<12xindex>
        %304 = vector.shuffle %46, %136 [0, 1, 2, 5, 7, 8, 9, 12, 14, 15, 16, 18, 19, 20] : vector<12x15xi1>, vector<12x15xi1>
        %305 = arith.muli %c1431178785_i64, %c136293427_i64 : i64
        %306 = math.exp %15 : tensor<11x8xf32>
        %307 = math.exp2 %cst_0 : f16
        %308 = vector.broadcast %cst_18 : f32 to vector<8xf32>
        %309 = vector.insert %308, %153 [8] : vector<8xf32> into vector<11x8xf32>
        %310 = index.sizeof
        %311 = vector.reduction <mul>, %92 : vector<15xi32> into i32
        %312 = arith.mulf %cst_0, %cst_0 : f16
        %313 = arith.cmpf ord, %cst_0, %cst : f16
        %extracted = tensor.extract %23[] : tensor<f16>
        %314 = arith.andi %c896457825_i32, %c2083548653_i32 : i32
        %315 = vector.reduction <or>, %112 : vector<15xi1> into i1
        %316 = index.ceildivs %c10, %68
        %317 = math.atan %7 : tensor<12xf16>
        %318 = index.sub %c0, %105
        %cast_46 = tensor.cast %transposed : tensor<12xf16> to tensor<?xf16>
        %319 = vector.insert %in_41, %172 [11] : i32 into vector<15xi32>
        %320 = math.absi %from_elements_28 : tensor<12x15xi64>
        %321 = index.divs %c9, %c3
        %322 = vector.matrix_multiply %172, %172 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %323 = index.castu %25 : i64 to index
        %324 = math.log2 %13 : tensor<11x8xf16>
        linalg.yield %c2083548653_i32 : i32
      } -> tensor<15x11x1xi32>
      %281 = bufferization.clone %alloc_8 : memref<12x15xi16> to memref<12x15xi16>
      %alloc_40 = memref.alloc() : memref<8x15xi64>
      %282 = tensor.empty() : tensor<11x15xi64>
      %283 = linalg.matmul ins(%12, %alloc_40 : tensor<11x8xi64>, memref<8x15xi64>) outs(%282 : tensor<11x15xi64>) -> tensor<11x15xi64>
      %284 = vector.broadcast %cst_18 : f32 to vector<8xf32>
      %285 = vector.insert %284, %153 [6] : vector<8xf32> into vector<11x8xf32>
      affine.store %false, %alloc_10[%c9, %c1] : memref<15x11xi1>
      %286 = bufferization.to_tensor %alloc_6 : memref<11x8xi32>
      %287 = arith.negf %cst_0 : f16
      %288 = vector.multi_reduction <add>, %136, %112 [0] : vector<12x15xi1> to vector<15xi1>
      %289 = math.exp2 %18 : tensor<12xf16>
      %290 = vector.load %alloc_8[%c10, %c8] : memref<12x15xi16>, vector<11x8xi16>
      %291 = math.cos %21 : tensor<12xf16>
      %292 = math.absf %9 : tensor<12xf16>
      %293 = math.floor %9 : tensor<12xf16>
      %294 = math.fpowi %15, %286 : tensor<11x8xf32>, tensor<11x8xi32>
      linalg.yield %out : i32
    } -> tensor<15x11x1xi32>
    %175 = scf.while (%arg1 = %60) : (memref<15x11xi16>) -> memref<15x11xi16> {
      %rank_39 = tensor.rank %6 : tensor<12x15xi32>
      %260 = memref.load %alloc_5[%c7, %c6] : memref<11x8xi1>
      %261 = vector.bitcast %169 : vector<15xi32> to vector<15xi32>
      %262 = math.exp %cst_0 : f16
      %263 = index.ceildivs %52, %105
      %264 = math.log2 %cst : f16
      %265 = math.absf %15 : tensor<11x8xf32>
      %266 = arith.remf %cst_0, %cst_0 : f16
      scf.condition(%true) %60 : memref<15x11xi16>
    } do {
    ^bb0(%arg1: memref<15x11xi16>):
      %260 = arith.shrui %c1823884268_i64, %c1431178785_i64 : i64
      %261 = bufferization.clone %alloc_14 : memref<12xi32> to memref<12xi32>
      %262 = index.maxs %c10, %c7
      %263 = vector.bitcast %92 : vector<15xi32> to vector<15xi32>
      %264 = index.castu %97 : index to i32
      vector.print %119 : vector<15x11xi32>
      %265 = vector.transpose %92, [0] : vector<15xi32> to vector<15xi32>
      %266 = vector.broadcast %cst_0 : f16 to vector<f16>
      %267 = vector.transfer_write %266, %7[%c7] : vector<f16>, tensor<12xf16>
      %268 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + d2 mod 16 - 8 - (d3 - (d1 - 32) - 16) * 32 == 0)>(%c10, %c0, %c12, %c8) -> memref<11x8xf16> {
        %276 = index.divs %c15, %126
        %277 = vector.insertelement %c-18864_i16, %79[] : vector<i16>
        %278 = math.log1p %13 : tensor<11x8xf16>
        %279 = index.castu %128 : index to i32
        %280 = arith.shrsi %c1860604399_i32, %c412358967_i32 : i32
        %splat_40 = tensor.splat %false_1 : tensor<15x11xi1>
        %281 = arith.subi %25, %c1431178785_i64 : i64
        affine.store %c1823884268_i64, %alloc_4[%c7, %c9] : memref<15x11xi64>
        %alloc_41 = memref.alloc() : memref<11x8xf16>
        affine.yield %alloc_41 : memref<11x8xf16>
      } else {
        vector.print %98 : vector<15xi32>
        %276 = index.sub %128, %127
        %277 = math.roundeven %cst : f16
        %278 = math.fma %collapsed, %collapsed, %collapsed : tensor<88xf16>
        %279 = vector.splat %c-8128_i16 : vector<11x8xi16>
        %280 = math.fma %23, %22, %22 : tensor<f16>
        %281 = vector.insertelement %c1860604399_i32, %172[%108 : index] : vector<15xi32>
        %282 = arith.remf %cst_18, %cst_18 : f32
        %alloc_40 = memref.alloc() : memref<11x8xf16>
        affine.yield %alloc_40 : memref<11x8xf16>
      }
      %269 = arith.negf %cst_18 : f32
      %cst_39 = arith.constant 1.000000e+00 : f32
      %270 = vector.transfer_read %alloc_3[%67], %cst_39 : memref<12xf32>, vector<f32>
      %271 = bufferization.clone %alloc_10 : memref<15x11xi1> to memref<15x11xi1>
      %272 = math.round %collapsed : tensor<88xf16>
      %273 = bufferization.clone %alloc_9 : memref<12x15xi1> to memref<12x15xi1>
      %274 = vector.flat_transpose %169 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %275 = index.ceildivu %c12, %262
      scf.yield %arg1 : memref<15x11xi16>
    }
    memref.assume_alignment %alloc_7, 2 : memref<11x8xi32>
    %176 = math.log2 %13 : tensor<11x8xf16>
    %177 = math.cttz %160 : tensor<12x11xi64>
    %false_32 = index.bool.constant false
    bufferization.dealloc_tensor %generated_29 : tensor<?x8xi64>
    %178 = math.cttz %2 : tensor<15x11xi32>
    %179 = vector.broadcast %cst_18 : f32 to vector<12xf32>
    %180 = vector.fma %179, %179, %179 : vector<12xf32>
    %181 = vector.broadcast %cst_18 : f32 to vector<12x15xf32>
    %182 = vector.fma %181, %181, %181 : vector<12x15xf32>
    %183 = arith.addf %cst_0, %cst_0 : f16
    %184 = affine.max affine_map<(d0, d1, d2, d3) -> (8, 4, 36)>(%100, %c10, %c4, %83)
    %185 = math.round %13 : tensor<11x8xf16>
    %186 = math.powf %17, %162 : tensor<12xf16>
    %187 = math.copysign %9, %18 : tensor<12xf16>
    %cast_33 = tensor.cast %10 : tensor<15x11xi16> to tensor<?x?xi16>
    %alloc_34 = memref.alloc() : memref<12xi32>
    %188 = affine.load %alloc_10[%c0, %c9] : memref<15x11xi1>
    %189 = math.round %23 : tensor<f16>
    %190 = math.exp %9 : tensor<12xf16>
    %191 = vector.broadcast %c1860604399_i32 : i32 to vector<15x15xi32>
    %192 = vector.outerproduct %172, %172, %191 {kind = #vector.kind<xor>} : vector<15xi32>, vector<15xi32>
    %193 = math.exp2 %16 : tensor<12xf16>
    %194 = math.cttz %188 : i1
    memref.copy %alloc_14, %alloc_16 : memref<12xi32> to memref<12xi32>
    %195 = index.floordivs %33, %c12
    %196 = index.sub %rank, %c2
    %197 = arith.mulf %cst_18, %cst_18 : f32
    %inserted = tensor.insert %c-18864_i16 into %cast_33[%c0, %c0] : tensor<?x?xi16>
    %198 = arith.mulf %cst_18, %cst_18 : f32
    %199 = arith.remf %cst, %cst : f16
    %200 = vector.broadcast %c896457825_i32 : i32 to vector<15x15xi32>
    %201 = vector.outerproduct %169, %98, %200 {kind = #vector.kind<maxui>} : vector<15xi32>, vector<15xi32>
    %202 = math.sqrt %from_elements_26 : tensor<12xf16>
    %203 = math.tanh %16 : tensor<12xf16>
    %204 = memref.atomic_rmw ori %c896457825_i32, %alloc_12[%c6, %c8] : (i32, memref<12x15xi32>) -> i32
    %205 = index.mul %97, %184
    %206 = arith.muli %188, %false_32 : i1
    %207 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 mod 16) floordiv 2, d2)>(%c15, %c13, %c1, %c10)
    %208 = math.cttz %10 : tensor<15x11xi16>
    %209 = memref.atomic_rmw maxs %c1431178785_i64, %alloc[%c3, %c9] : (i64, memref<15x11xi64>) -> i64
    %210 = bufferization.to_memref %22 : memref<f16>
    %211 = arith.minui %true, %false : i1
    %212 = vector.bitcast %119 : vector<15x11xi32> to vector<15x11xf32>
    %213 = index.sub %105, %105
    %214 = index.castu %128 : index to i32
    %215 = index.divu %108, %213
    %216 = index.divu %97, %213
    %217 = arith.subi %25, %c136293427_i64 : i64
    %218 = arith.remf %cst, %cst : f16
    %c10779_i16 = arith.constant 10779 : i16
    %219 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * -2 + d1 + 32, -(d3 mod 16), d0 + d3 * 2, d0 - 32)>(%c8, %c4, %c9, %127)
    %220 = tensor.empty() : tensor<15x8xi64>
    %221 = linalg.matmul ins(%11, %12 : tensor<15x11xi64>, tensor<11x8xi64>) outs(%220 : tensor<15x8xi64>) -> tensor<15x8xi64>
    %222 = math.fma %7, %18, %9 : tensor<12xf16>
    %223 = math.absi %4 : tensor<12xi32>
    %224 = arith.remsi %c27835_i16, %c-18864_i16 : i16
    %225 = arith.divui %true_27, %false_1 : i1
    %226 = tensor.empty() : tensor<8x8xi64>
    %227 = tensor.empty() : tensor<11x8xi64>
    %228 = linalg.matmul ins(%12, %226 : tensor<11x8xi64>, tensor<8x8xi64>) outs(%227 : tensor<11x8xi64>) -> tensor<11x8xi64>
    %229 = vector.multi_reduction <add>, %182, %cst_18 [0, 1] : vector<12x15xf32> to f32
    scf.execute_region {
      scf.index_switch %195 
      case 1 {
        %271 = vector.shuffle %45, %48 [3, 5, 6, 7, 8, 10, 11, 12, 13, 15, 17, 18, 19] : vector<12x15xi16>, vector<12x15xi16>
        %272 = index.castu %c12 : index to i32
        %273 = bufferization.clone %alloc_9 : memref<12x15xi1> to memref<12x15xi1>
        %274 = index.maxu %c14, %c13
        %275 = math.powf %cst, %cst : f16
        %276 = index.sizeof
        %277 = index.divu %127, %213
        %278 = vector.bitcast %172 : vector<15xi32> to vector<15xi32>
        bufferization.dealloc_tensor %8 : tensor<12x15xi64>
        %279 = arith.negf %cst_0 : f16
        %280 = math.fpowi %17, %4 : tensor<12xf16>, tensor<12xi32>
        %281 = index.divs %c9, %196
        %282 = index.ceildivs %281, %195
        %283 = arith.remf %cst_0, %cst_0 : f16
        %284 = index.divu %c3, %c12
        %285 = index.sub %52, %274
        scf.yield
      }
      case 2 {
        %271 = math.log %18 : tensor<12xf16>
        %272 = vector.transpose %46, [0, 1] : vector<12x15xi1> to vector<12x15xi1>
        %true_41 = index.bool.constant true
        %273 = tensor.empty() : tensor<8x15xi64>
        %274 = tensor.empty() : tensor<15x15xi64>
        %275 = linalg.matmul ins(%220, %273 : tensor<15x8xi64>, tensor<8x15xi64>) outs(%274 : tensor<15x15xi64>) -> tensor<15x15xi64>
        %from_elements_42 = tensor.from_elements %c1431178785_i64, %c1487694548_i64, %c1487694548_i64, %c1487694548_i64, %25, %c936353286_i64, %c136293427_i64, %c1487694548_i64, %c936353286_i64, %25, %c1823884268_i64, %c936353286_i64 : tensor<12xi64>
        %276 = vector.broadcast %cst_18 : f32 to vector<12x12xf32>
        %277 = vector.outerproduct %180, %179, %276 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        %278 = math.powf %229, %cst_18 : f32
        %279 = math.ipowi %3, %11 : tensor<15x11xi64>
        %280 = math.atan %17 : tensor<12xf16>
        %281 = arith.xori %c27835_i16, %c-8128_i16 : i16
        %282 = tensor.empty() : tensor<8x12xf32>
        %283 = tensor.empty() : tensor<11x12xf32>
        %284 = linalg.matmul ins(%15, %282 : tensor<11x8xf32>, tensor<8x12xf32>) outs(%283 : tensor<11x12xf32>) -> tensor<11x12xf32>
        %285 = math.ipowi %expanded, %expanded : tensor<15x11x1xi32>
        %286 = arith.remf %cst_18, %cst_18 : f32
        %287 = memref.realloc %alloc_15 : memref<12xf32> to memref<11xf32>
        %alloc_43 = memref.alloc() : memref<15x11xi16>
        %288 = vector.transpose %212, [1, 0] : vector<15x11xf32> to vector<11x15xf32>
        scf.yield
      }
      case 3 {
        %271 = index.floordivs %c8, %49
        %272 = vector.broadcast %c1860604399_i32 : i32 to vector<11x8xi32>
        %273 = vector.broadcast %true_27 : i1 to vector<11x8xi1>
        %274 = vector.gather %alloc_6[%c1, %c2] [%272], %273, %272 : memref<11x8xi32>, vector<11x8xi32>, vector<11x8xi1>, vector<11x8xi32> into vector<11x8xi32>
        %275 = arith.remsi %c1823884268_i64, %c936353286_i64 : i64
        %276 = arith.minui %c-18864_i16, %c-18864_i16 : i16
        %277 = math.tanh %9 : tensor<12xf16>
        %278 = arith.mulf %cst_0, %cst : f16
        %279 = math.ipowi %11, %11 : tensor<15x11xi64>
        %280 = arith.maxf %cst_0, %cst_0 : f16
        %281 = vector.multi_reduction <mul>, %180, %180 [] : vector<12xf32> to vector<12xf32>
        %282 = math.exp %22 : tensor<f16>
        %283 = math.copysign %15, %15 : tensor<11x8xf32>
        %284 = math.fma %from_elements_20, %from_elements_20, %from_elements_20 : tensor<12xf32>
        %285 = vector.load %alloc_11[%c9, %c10] : memref<15x11xf16>, vector<12x15xf16>
        %cst_41 = arith.constant 1.47495654E+9 : f32
        %286 = vector.broadcast %cst_0 : f16 to vector<15xf16>
        %287 = vector.transfer_write %286, %13[%52, %67] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf16>, tensor<11x8xf16>
        %288 = math.rsqrt %229 : f32
        scf.yield
      }
      case 4 {
        %271 = vector.insert %c896457825_i32, %169 [4] : i32 into vector<15xi32>
        %272 = arith.maxsi %c936353286_i64, %c1487694548_i64 : i64
        %273 = index.sub %c8, %83
        %274 = index.divs %219, %215
        %275 = vector.broadcast %c412358967_i32 : i32 to vector<15xi32>
        %276 = vector.transfer_write %275, %from_elements_30[%c9, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi32>, tensor<15x11xi32>
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - d3, d3)>(%128, %274, %108, %c11)
        %278 = arith.andi %false_32, %true_27 : i1
        %279 = index.sub %273, %68
        %280 = math.powf %13, %13 : tensor<11x8xf16>
        %281 = math.exp2 %16 : tensor<12xf16>
        %282 = math.expm1 %15 : tensor<11x8xf32>
        %283 = vector.shuffle %180, %180 [1, 2, 3, 6, 8, 10, 11, 12, 13, 15, 16, 19, 21, 22] : vector<12xf32>, vector<12xf32>
        %284 = vector.reduction <mul>, %92 : vector<15xi32> into i32
        %extracted = tensor.extract %2[%c9, %c2] : tensor<15x11xi32>
        %collapsed_41 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x15xi16> into tensor<180xi16>
        %285 = affine.max affine_map<(d0, d1) -> (d1 * -4, d0)>(%c8, %rank)
        scf.yield
      }
      default {
        %271 = memref.realloc %alloc_3 : memref<12xf32> to memref<8xf32>
        %from_elements_41 = tensor.from_elements %25, %c1431178785_i64, %c1431178785_i64, %c1431178785_i64, %c936353286_i64, %c136293427_i64, %c136293427_i64, %25, %c1823884268_i64, %c936353286_i64, %c1487694548_i64, %c1487694548_i64, %25, %c1823884268_i64, %c1431178785_i64, %25, %c936353286_i64, %c1431178785_i64, %c1431178785_i64, %c936353286_i64, %c1823884268_i64, %c1487694548_i64, %c1431178785_i64, %25, %c1823884268_i64, %c1431178785_i64, %c1487694548_i64, %c136293427_i64, %c1487694548_i64, %c936353286_i64, %c936353286_i64, %c1823884268_i64, %c1823884268_i64, %c1487694548_i64, %c136293427_i64, %c136293427_i64, %c136293427_i64, %c1823884268_i64, %25, %c1487694548_i64, %c136293427_i64, %c1431178785_i64, %c1823884268_i64, %25, %c936353286_i64, %c1487694548_i64, %c1431178785_i64, %25, %c1431178785_i64, %c1487694548_i64, %c1823884268_i64, %c1487694548_i64, %c136293427_i64, %25, %c1431178785_i64, %c1431178785_i64, %c136293427_i64, %c1431178785_i64, %25, %c136293427_i64, %c136293427_i64, %c1823884268_i64, %c1487694548_i64, %c136293427_i64, %c1487694548_i64, %c1487694548_i64, %c1487694548_i64, %c1431178785_i64, %c936353286_i64, %25, %25, %c1823884268_i64, %c1823884268_i64, %c1487694548_i64, %c1823884268_i64, %c1431178785_i64, %c1431178785_i64, %c1487694548_i64, %c1823884268_i64, %c1487694548_i64, %c1431178785_i64, %c1487694548_i64, %c1431178785_i64, %25, %c1823884268_i64, %c136293427_i64, %25, %25 : tensor<11x8xi64>
        %272 = math.absi %from_elements_28 : tensor<12x15xi64>
        %alloc_42 = memref.alloc() : memref<11x8xi32>
        %273 = vector.insertelement %c1823884268_i64, %20[%c11 : index] : vector<11xi64>
        %274 = arith.xori %c27835_i16, %c-18864_i16 : i16
        %275 = math.roundeven %15 : tensor<11x8xf32>
        %276 = arith.xori %c936353286_i64, %c1431178785_i64 : i64
        %277 = vector.broadcast %229 : f32 to vector<12x12xf32>
        %278 = vector.outerproduct %180, %180, %277 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        %alloc_43 = memref.alloc() : memref<11x8xi32>
        %279 = affine.min affine_map<(d0, d1, d2) -> (d0, d1)>(%33, %196, %205)
        %280 = vector.transpose %112, [0] : vector<15xi1> to vector<15xi1>
        %281 = math.ceil %23 : tensor<f16>
        %282 = arith.remf %cst, %cst : f16
        %283 = index.casts %188 : i1 to index
        %284 = vector.splat %143 : vector<15x11xindex>
      }
      %alloc_39 = memref.alloc() : memref<15x11xi64>
      %260 = arith.andi %false_1, %true : i1
      %261 = vector.transpose %181, [0, 1] : vector<12x15xf32> to vector<12x15xf32>
      %262 = index.sizeof
      %alloc_40 = memref.alloc() : memref<11x8xi64>
      %263 = index.sizeof
      memref.tensor_store %22, %210 : memref<f16>
      %264 = math.ceil %21 : tensor<12xf16>
      %265 = math.powf %22, %22 : tensor<f16>
      %266 = index.sizeof
      %267 = math.roundeven %from_elements_20 : tensor<12xf32>
      %268 = vector.multi_reduction <and>, %112, %112 [] : vector<15xi1> to vector<15xi1>
      %269 = bufferization.clone %alloc_4 : memref<15x11xi64> to memref<15x11xi64>
      %270 = math.ceil %from_elements_20 : tensor<12xf32>
      bufferization.dealloc_tensor %2 : tensor<15x11xi32>
      scf.yield
    }
    %230 = math.powf %cst_18, %229 : f32
    bufferization.dealloc_tensor %121 : tensor<11x8xi32>
    %231 = index.castu %100 : index to i32
    %232 = vector.broadcast %229 : f32 to vector<15xf32>
    %dest, %accumulated_value = vector.scan <add>, %181, %232 {inclusive = false, reduction_dim = 0 : i64} : vector<12x15xf32>, vector<15xf32>
    %233 = vector.splat %c11 : vector<12x15xindex>
    %234 = math.cos %22 : tensor<f16>
    %cast_35 = tensor.cast %220 : tensor<15x8xi64> to tensor<?x?xi64>
    %235 = bufferization.clone %alloc_11 : memref<15x11xf16> to memref<15x11xf16>
    %from_elements_36 = tensor.from_elements %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %229, %229, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %229, %229, %cst_18, %229, %229, %cst_18, %229, %cst_18, %229, %cst_18, %cst_18, %229, %229, %229, %cst_18, %229, %229, %cst_18, %229, %229, %cst_18, %229, %229, %229, %cst_18, %229, %229, %cst_18, %229, %229, %229, %cst_18, %cst_18, %229, %229, %229, %229, %229, %229, %229, %cst_18, %229, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %229, %229, %229, %cst_18, %cst_18, %cst_18, %229, %229, %cst_18, %cst_18, %229, %cst_18, %229, %cst_18, %229, %cst_18, %229, %cst_18, %229, %229, %229, %cst_18, %229, %229, %229, %229, %cst_18, %229, %229, %229, %229, %cst_18, %cst_18, %229, %cst_18, %229, %229, %229, %229, %cst_18, %cst_18, %229, %cst_18, %229, %229, %229, %229, %cst_18, %229, %229, %229, %cst_18, %229, %cst_18, %cst_18, %cst_18, %229, %cst_18, %cst_18, %cst_18, %cst_18, %229, %cst_18, %229, %cst_18, %cst_18, %cst_18, %229, %229, %cst_18, %cst_18, %229, %cst_18, %cst_18, %229, %cst_18, %229, %cst_18, %229, %cst_18, %229, %cst_18, %cst_18, %229, %229, %229, %cst_18, %229, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %229, %cst_18, %229, %cst_18, %229, %229, %cst_18, %cst_18, %229, %229, %cst_18, %cst_18 : tensor<15x11xf32>
    %236 = arith.divui %c1487694548_i64, %25 : i64
    affine.for %arg1 = 0 to 59 {
    }
    %237 = math.roundeven %7 : tensor<12xf16>
    %238 = arith.remf %229, %cst_18 : f32
    %239 = vector.broadcast %c896457825_i32 : i32 to vector<i32>
    %240 = vector.transfer_write %239, %4[%c2] : vector<i32>, tensor<12xi32>
    %241 = arith.maxf %cst_0, %cst_0 : f16
    %242 = math.cttz %2 : tensor<15x11xi32>
    %c8700_i16 = arith.constant 8700 : i16
    %243 = arith.divui %false_1, %188 : i1
    %244 = index.mul %216, %c11
    %245 = vector.shuffle %119, %119 [1, 4, 5, 6, 8, 9, 13, 15, 16, 19, 20, 23, 25, 28, 29] : vector<15x11xi32>, vector<15x11xi32>
    %246 = math.fma %from_elements_36, %from_elements_36, %from_elements_36 : tensor<15x11xf32>
    %247 = vector.shuffle %239, %239 [0, 1] : vector<i32>, vector<i32>
    %248 = vector.broadcast %c136293427_i64 : i64 to vector<i64>
    %249 = vector.transfer_write %248, %11[%c0, %c7] : vector<i64>, tensor<15x11xi64>
    %250 = math.atan %from_elements_36 : tensor<15x11xf32>
    vector.print %248 : vector<i64>
    %251 = vector.load %alloc_10[%c0, %c3] : memref<15x11xi1>, vector<11x8xi1>
    %252 = vector.multi_reduction <minsi>, %98, %c2083548653_i32 [0] : vector<15xi32> to i32
    %253 = affine.max affine_map<(d0, d1, d2) -> (d1 ceildiv 128 + 64, d1 - 18)>(%rank, %83, %c10)
    %254 = arith.ceildivsi %c1431178785_i64, %c1823884268_i64 : i64
    %255 = tensor.empty() : tensor<12x11xi32>
    %256 = linalg.copy ins(%87 : tensor<12x11xi32>) outs(%255 : tensor<12x11xi32>) -> tensor<12x11xi32>
    %alloc_37 = memref.alloc() : memref<11x15xi1>
    linalg.transpose ins(%alloc_10 : memref<15x11xi1>) outs(%alloc_37 : memref<11x15xi1>) permutation = [1, 0] 
    %257 = tensor.empty() : tensor<8xi64>
    %reduced_38 = linalg.reduce ins(%220 : tensor<15x8xi64>) outs(%257 : tensor<8xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %260 = math.roundeven %13 : tensor<11x8xf16>
        %261 = math.log2 %9 : tensor<12xf16>
        %262 = vector.load %235[%c6, %c3] : memref<15x11xf16>, vector<12x15xf16>
        %263 = arith.mulf %cst_18, %229 : f32
        %from_elements_39 = tensor.from_elements %252, %252, %c2083548653_i32, %c412358967_i32, %252, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c412358967_i32, %252, %c1860604399_i32, %c412358967_i32, %252, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %252, %c896457825_i32, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c2083548653_i32, %c412358967_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %252, %c2083548653_i32, %252, %c1860604399_i32, %252, %252, %c412358967_i32, %c896457825_i32, %c1860604399_i32, %c2083548653_i32, %c2083548653_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %252, %c896457825_i32, %c1860604399_i32, %252, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c412358967_i32, %c412358967_i32, %252, %c2083548653_i32, %c412358967_i32, %c896457825_i32, %252, %252, %c896457825_i32, %c2083548653_i32, %252, %c1860604399_i32, %252, %c896457825_i32, %c412358967_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %252, %252, %252, %252, %252, %c2083548653_i32, %252, %252, %252, %c412358967_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %252, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %252, %c2083548653_i32, %252, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c412358967_i32, %c2083548653_i32, %c1860604399_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c412358967_i32, %252, %c2083548653_i32, %c1860604399_i32, %252, %c1860604399_i32, %c1860604399_i32, %c412358967_i32, %c896457825_i32, %c412358967_i32, %252, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c2083548653_i32, %c1860604399_i32, %c1860604399_i32, %c1860604399_i32, %c896457825_i32, %c412358967_i32, %252, %c2083548653_i32, %252, %c2083548653_i32, %252, %c2083548653_i32, %c896457825_i32, %c412358967_i32, %c412358967_i32, %c896457825_i32, %c896457825_i32, %c2083548653_i32, %c1860604399_i32, %c2083548653_i32, %c896457825_i32 : tensor<15x11xi32>
        %264 = tensor.empty() : tensor<12x11xi32>
        %265 = linalg.matmul ins(%6, %from_elements_30 : tensor<12x15xi32>, tensor<15x11xi32>) outs(%264 : tensor<12x11xi32>) -> tensor<12x11xi32>
        %266 = arith.xori %c896457825_i32, %c1860604399_i32 : i32
        %267 = arith.andi %c-8128_i16, %c-8128_i16 : i16
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg1, %arg2) = (%33, %68) to (%52, %108) step (%c10, %c2) {
      %260 = arith.ori %false_32, %false_32 : i1
      %261 = arith.remsi %c2083548653_i32, %c1860604399_i32 : i32
      %262 = vector.insertelement %25, %85[] : vector<i64>
      %c1209077278_i64 = arith.constant 1209077278 : i64
      scf.execute_region {
        %false_42 = index.bool.constant false
        %273 = math.exp %7 : tensor<12xf16>
        %274 = vector.insert %92, %47 [0] : vector<15xi32> into vector<12x15xi32>
        %275 = index.casts %c4 : index to i32
        %276 = arith.minsi %false_32, %false_1 : i1
        %extracted = tensor.extract %generated_29[%c0, %c2] : tensor<?x8xi64>
        %277 = vector.broadcast %229 : f32 to vector<12xf32>
        %278 = vector.fma %277, %179, %179 : vector<12xf32>
        %279 = arith.shrui %c1823884268_i64, %c1431178785_i64 : i64
        %280 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %281 = math.fpowi %18, %4 : tensor<12xf16>, tensor<12xi32>
        affine.store %c1860604399_i32, %alloc_16[%c13] : memref<12xi32>
        %282 = tensor.empty() : tensor<12x11xi16>
        %283 = linalg.matmul ins(%0, %10 : tensor<12x15xi16>, tensor<15x11xi16>) outs(%282 : tensor<12x11xi16>) -> tensor<12x11xi16>
        memref.copy %alloc_15, %alloc_3 : memref<12xf32> to memref<12xf32>
        %284 = arith.addi %c1487694548_i64, %c1823884268_i64 : i64
        %285 = math.log2 %21 : tensor<12xf16>
        %286 = math.cttz %0 : tensor<12x15xi16>
        scf.yield
      }
      %263 = arith.shrui %c-18864_i16, %c-8128_i16 : i16
      %264 = vector.transpose %153, [0, 1] : vector<11x8xf32> to vector<11x8xf32>
      %265 = memref.load %alloc_9[%c11, %c10] : memref<12x15xi1>
      %266 = index.floordivs %52, %52
      %267 = memref.load %alloc_13[%c1, %c5] : memref<11x8xi32>
      %268 = math.ipowi %splat_21, %splat_21 : tensor<12xi16>
      %cast_39 = tensor.cast %13 : tensor<11x8xf16> to tensor<?x?xf16>
      %cast_40 = tensor.cast %12 : tensor<11x8xi64> to tensor<?x?xi64>
      %alloc_41 = memref.alloc() : memref<12xi64>
      %269 = vector.broadcast %c136293427_i64 : i64 to vector<12x15xi64>
      %270 = vector.gather %alloc_41[%c7] [%47], %46, %269 : memref<12xi64>, vector<12x15xi32>, vector<12x15xi1>, vector<12x15xi64> into vector<12x15xi64>
      %271 = index.sub %c15, %c0
      %272 = vector.shuffle %154, %153 [1, 2, 3, 4, 5, 8, 9, 12, 13, 14, 15, 20] : vector<11x8xf32>, vector<11x8xf32>
      scf.yield
    }
    %258 = affine.vector_load %53[%67] : memref<12xf16>, vector<8xf16>
    affine.vector_store %179, %alloc_3[%c8] : memref<12xf32>, vector<12xf32>
    vector.print %20 : vector<11xi64>
    vector.print %45 : vector<12x15xi16>
    vector.print %46 : vector<12x15xi1>
    vector.print %47 : vector<12x15xi32>
    vector.print %48 : vector<12x15xi16>
    vector.print %79 : vector<i16>
    vector.print %85 : vector<i64>
    vector.print %92 : vector<15xi32>
    vector.print %98 : vector<15xi32>
    vector.print %112 : vector<15xi1>
    vector.print %119 : vector<15x11xi32>
    vector.print %136 : vector<12x15xi1>
    vector.print %153 : vector<11x8xf32>
    vector.print %154 : vector<11x8xf32>
    vector.print %167 : vector<15x11xi1>
    vector.print %169 : vector<15xi32>
    vector.print %172 : vector<15xi32>
    vector.print %179 : vector<12xf32>
    vector.print %180 : vector<12xf32>
    vector.print %181 : vector<12x15xf32>
    vector.print %182 : vector<12x15xf32>
    vector.print %212 : vector<15x11xf32>
    vector.print %239 : vector<i32>
    vector.print %248 : vector<i64>
    vector.print %251 : vector<11x8xi1>
    vector.print %258 : vector<8xf16>
    vector.print %c136293427_i64 : i64
    vector.print %c2083548653_i32 : i32
    vector.print %c896457825_i32 : i32
    vector.print %c1431178785_i64 : i64
    vector.print %cst : f16
    vector.print %c27835_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c-18864_i16 : i16
    vector.print %c936353286_i64 : i64
    vector.print %c1487694548_i64 : i64
    vector.print %false : i1
    vector.print %false_1 : i1
    vector.print %c1860604399_i32 : i32
    vector.print %c412358967_i32 : i32
    vector.print %c1823884268_i64 : i64
    vector.print %c-8128_i16 : i16
    vector.print %25 : i64
    vector.print %cst_18 : f32
    vector.print %true : i1
    vector.print %true_27 : i1
    vector.print %false_32 : i1
    vector.print %188 : i1
    vector.print %229 : f32
    vector.print %252 : i32
    %259 = vector.broadcast %c936353286_i64 : i64 to vector<15x11xi64>
    return %259 : vector<15x11xi64>
  }
}
