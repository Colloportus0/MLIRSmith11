module {
  func.func private @func1(%arg0: i32, %arg1: memref<8x8xf32>) {
    %c1887825572_i64 = arith.constant 1887825572 : i64
    %c1055516512_i32 = arith.constant 1055516512 : i32
    %cst = arith.constant 1.25179072E+9 : f32
    %cst_0 = arith.constant 2.438000e+03 : f16
    %cst_1 = arith.constant 0x4E6B1A3F : f32
    %c172180046_i64 = arith.constant 172180046 : i64
    %c1783281111_i32 = arith.constant 1783281111 : i32
    %false = arith.constant false
    %cst_2 = arith.constant 2.592000e+04 : f16
    %cst_3 = arith.constant 1.4817577E+9 : f32
    %c1159318518_i64 = arith.constant 1159318518 : i64
    %false_4 = arith.constant false
    %c426441360_i64 = arith.constant 426441360 : i64
    %cst_5 = arith.constant 5.385600e+04 : f16
    %c-12258_i16 = arith.constant -12258 : i16
    %cst_6 = arith.constant 2.00290906E+9 : f32
    %0 = tensor.empty() : tensor<8xi64>
    %1 = tensor.empty() : tensor<8xi64>
    %2 = tensor.empty() : tensor<8xi1>
    %3 = tensor.empty() : tensor<8xf16>
    %4 = tensor.empty() : tensor<8x8xi64>
    %5 = tensor.empty() : tensor<8xf32>
    %6 = tensor.empty() : tensor<8x8xi64>
    %7 = tensor.empty() : tensor<8xi32>
    %8 = tensor.empty() : tensor<4x4xi64>
    %9 = tensor.empty() : tensor<4x4xf32>
    %10 = tensor.empty() : tensor<8x8xi1>
    %11 = tensor.empty() : tensor<8xi32>
    %12 = tensor.empty() : tensor<4x4xf16>
    %13 = tensor.empty() : tensor<8xi1>
    %14 = tensor.empty() : tensor<4x4xf32>
    %15 = tensor.empty() : tensor<8x8xi16>
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
    %alloc = memref.alloc() : memref<8xi1>
    %alloc_7 = memref.alloc() : memref<4x4xi32>
    %alloc_8 = memref.alloc() : memref<8xi1>
    %alloc_9 = memref.alloc() : memref<8xi1>
    %alloc_10 = memref.alloc() : memref<8x11xi1>
    %alloc_11 = memref.alloc() : memref<8xf16>
    %alloc_12 = memref.alloc() : memref<8x11xf16>
    %alloc_13 = memref.alloc() : memref<8x8xf32>
    %alloc_14 = memref.alloc() : memref<8xi16>
    %alloc_15 = memref.alloc() : memref<8x11xi1>
    %alloc_16 = memref.alloc() : memref<8x11xi64>
    %alloc_17 = memref.alloc() : memref<8x8xi16>
    %alloc_18 = memref.alloc() : memref<8x8xi32>
    %alloc_19 = memref.alloc() : memref<8xi16>
    %alloc_20 = memref.alloc() : memref<8x8xf16>
    %alloc_21 = memref.alloc() : memref<4x4xf16>
    %16 = tensor.empty() : tensor<4x4xf32>
    %17 = linalg.copy ins(%14 : tensor<4x4xf32>) outs(%16 : tensor<4x4xf32>) -> tensor<4x4xf32>
    %alloc_22 = memref.alloc() : memref<8xi1>
    linalg.transpose ins(%alloc_9 : memref<8xi1>) outs(%alloc_22 : memref<8xi1>) permutation = [0] 
    %alloc_23 = memref.alloc() : memref<11xf16>
    linalg.reduce ins(%alloc_12 : memref<8x11xf16>) outs(%alloc_23 : memref<11xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %256 = vector.broadcast %cst_0 : f16 to vector<8x11xf16>
        vector.print %256 : vector<8x11xf16>
        %257 = math.log10 %12 : tensor<4x4xf16>
        %258 = bufferization.clone %alloc_8 : memref<8xi1> to memref<8xi1>
        %259 = index.add %c9, %c2
        %260 = math.powf %cst_6, %cst : f32
        %261 = affine.load %alloc_13[%c10, %c1] : memref<8x8xf32>
        %262 = vector.broadcast %261 : f32 to vector<8x8xf32>
        %263 = vector.fma %262, %262, %262 : vector<8x8xf32>
        %264 = vector.broadcast %c-12258_i16 : i16 to vector<8xi16>
        %265 = vector.reduction <maxui>, %264 : vector<8xi16> into i16
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    scf.parallel (%arg2) = (%c4) to (%c6) step (%c13) {
      %256 = arith.shrui %c1159318518_i64, %c426441360_i64 : i64
      %inserted_57 = tensor.insert %false_4 into %10[%c0, %c3] : tensor<8x8xi1>
      %257 = tensor.empty() : tensor<8x11xf16>
      %258 = vector.broadcast %cst_2 : f16 to vector<4x4xf16>
      %259 = vector.broadcast %false : i1 to vector<4x4xi1>
      %260 = vector.broadcast %c1055516512_i32 : i32 to vector<4x4xi32>
      %261 = vector.gather %257[%c5, %c11] [%260], %259, %258 : tensor<8x11xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
      %262 = bufferization.to_memref %1 : memref<8xi64>
      %263 = tensor.empty() : tensor<8x8x8xi64>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%263 : tensor<8x8x8xi64>) {
      ^bb0(%out: i64):
        %274 = arith.addf %cst_5, %cst_0 : f16
        %275 = math.exp %14 : tensor<4x4xf32>
        %276 = bufferization.clone %alloc_9 : memref<8xi1> to memref<8xi1>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %277 = vector.transfer_read %9[%c7, %arg2], %cst_60 : tensor<4x4xf32>, vector<f32>
        %278 = math.fma %cst_60, %cst_6, %cst_1 : f32
        %279 = affine.min affine_map<(d0, d1, d2) -> (d1, (d0 * 64) mod 128, d0, ((d0 * 64 - 2) ceildiv 16) ceildiv 64)>(%c3, %c10, %c11)
        %280 = index.casts %c2 : index to i32
        %281 = math.ceil %5 : tensor<8xf32>
        %282 = vector.broadcast %cst_2 : f16 to vector<8x8xf16>
        %283 = vector.broadcast %false_4 : i1 to vector<8x8xi1>
        %284 = vector.broadcast %c1783281111_i32 : i32 to vector<8x8xi32>
        %285 = vector.gather %alloc_20[%c3, %c15] [%284], %283, %282 : memref<8x8xf16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xf16> into vector<8x8xf16>
        %286 = index.castu %c13 : index to i32
        %287 = memref.realloc %alloc_22 : memref<8xi1> to memref<11xi1>
        %288 = math.log %cst_2 : f16
        %289 = index.mul %c13, %c5
        memref.assume_alignment %alloc_10, 4 : memref<8x11xi1>
        %alloc_61 = memref.alloc() : memref<8x8xi64>
        memref.tensor_store %4, %alloc_61 : memref<8x8xi64>
        %290 = tensor.empty() : tensor<4x4xf32>
        %291 = linalg.matmul ins(%9, %17 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%290 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %292 = math.log10 %17 : tensor<4x4xf32>
        %293 = math.atan2 %14, %17 : tensor<4x4xf32>
        %294 = arith.minsi %c1783281111_i32, %c1055516512_i32 : i32
        vector.print %260 : vector<4x4xi32>
        %295 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %dest_62, %accumulated_value_63 = vector.scan <mul>, %282, %295 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xf16>, vector<8xf16>
        affine.store %cst_2, %alloc_20[%c8, %c0] : memref<8x8xf16>
        %296 = memref.load %262[%c6] : memref<8xi64>
        %297 = arith.xori %false_4, %false : i1
        %collapsed_64 = tensor.collapse_shape %16 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
        %298 = math.log %3 : tensor<8xf16>
        %299 = math.cos %cst_1 : f32
        %300 = arith.divui %out, %c426441360_i64 : i64
        %301 = math.expm1 %3 : tensor<8xf16>
        %302 = arith.andi %c1783281111_i32, %c1055516512_i32 : i32
        %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %282, %282, %285 : vector<8x8xf16>, vector<8x8xf16> into vector<8x8xf16>
        %304 = math.floor %12 : tensor<4x4xf16>
        linalg.yield %c1887825572_i64 : i64
      } -> tensor<8x8x8xi64>
      %265 = index.mul %c14, %c6
      %266 = bufferization.to_memref %1 : memref<8xi64>
      %inserted_58 = tensor.insert %c1159318518_i64 into %6[%c0, %c4] : tensor<8x8xi64>
      %267 = math.cos %16 : tensor<4x4xf32>
      %268 = arith.xori %c426441360_i64, %c172180046_i64 : i64
      %269 = math.sqrt %5 : tensor<8xf32>
      %270 = arith.ori %c-12258_i16, %c-12258_i16 : i16
      %271 = vector.extract_strided_slice %260 {offsets = [2], sizes = [1], strides = [1]} : vector<4x4xi32> to vector<1x4xi32>
      %rank_59 = tensor.rank %8 : tensor<4x4xi64>
      %272 = index.mul %c7, %c7
      %273 = index.add %c12, %c4
      scf.yield
    }
    %18 = affine.vector_load %alloc_11[%c10] : memref<8xf16>, vector<11xf16>
    affine.vector_store %18, %alloc_23[%c12] : memref<11xf16>, vector<11xf16>
    %alloc_24 = memref.alloc() : memref<8xi64>
    %19 = tensor.empty() : tensor<i64>
    %20 = linalg.dot ins(%0, %alloc_24 : tensor<8xi64>, memref<8xi64>) outs(%19 : tensor<i64>) -> tensor<i64>
    %21 = tensor.empty() : tensor<4x4xf32>
    %22 = linalg.matmul ins(%16, %17 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%21 : tensor<4x4xf32>) -> tensor<4x4xf32>
    affine.store %cst_5, %alloc_12[%c3, %c14] : memref<8x11xf16>
    %23 = math.expm1 %5 : tensor<8xf32>
    %24 = math.ipowi %false, %false : i1
    vector.print %18 : vector<11xf16>
    %25 = vector.reduction <add>, %18 : vector<11xf16> into f16
    %26 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %18, %18, %cst_5 : vector<11xf16>, vector<11xf16> into f16
    %27 = vector.broadcast %c-12258_i16 : i16 to vector<4xi16>
    %28 = vector.broadcast %false : i1 to vector<4xi1>
    %29 = vector.maskedload %alloc_17[%c7, %c5], %28, %27 : memref<8x8xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %30 = tensor.empty() : tensor<4x4xf16>
    %31 = linalg.matmul ins(%12, %12 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%30 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
    %32 = arith.divsi %c1783281111_i32, %c1055516512_i32 : i32
    %33 = math.powf %3, %3 : tensor<8xf16>
    %34 = math.roundeven %cst_0 : f16
    %35 = arith.andi %c426441360_i64, %c1159318518_i64 : i64
    %36 = arith.remui %false, %false : i1
    %37 = arith.addi %false_4, %false_4 : i1
    %cast = tensor.cast %0 : tensor<8xi64> to tensor<?xi64>
    %38 = arith.addf %cst_6, %cst_1 : f32
    scf.if %false_4 {
      %256 = arith.xori %c426441360_i64, %c1887825572_i64 : i64
      %false_57 = arith.constant false
      %257 = vector.transfer_read %10[%c11, %c2], %false_57 : tensor<8x8xi1>, vector<11xi1>
      %258 = vector.broadcast %cst_1 : f32 to vector<8x11xf32>
      %259 = vector.fma %258, %258, %258 : vector<8x11xf32>
      %260 = vector.reduction <add>, %28 : vector<4xi1> into i1
      %261 = math.ctpop %2 : tensor<8xi1>
      %262 = tensor.empty() : tensor<4x4xf16>
      %263 = linalg.matmul ins(%12, %30 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%262 : tensor<4x4xf16>) -> tensor<4x4xf16>
      %264 = affine.min affine_map<(d0, d1, d2) -> (d2, d2)>(%c12, %c1, %c0)
      %265 = bufferization.clone %alloc_20 : memref<8x8xf16> to memref<8x8xf16>
    } else {
      %256 = math.copysign %21, %14 : tensor<4x4xf32>
      %257 = vector.broadcast %c14 : index to vector<4xindex>
      vector.scatter %alloc_14[%c5] [%257], %28, %27 : memref<8xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %258 = arith.remsi %false_4, %false : i1
      %259 = math.sqrt %21 : tensor<4x4xf32>
      %260 = index.mul %c4, %c15
      %261 = vector.broadcast %c1887825572_i64 : i64 to vector<11xi64>
      %262 = vector.broadcast %false : i1 to vector<11xi1>
      %263 = vector.maskedload %alloc_24[%c3], %262, %261 : memref<8xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
      %264 = tensor.empty(%c4, %c5) : tensor<?x?xf32>
      %265 = math.ipowi %11, %7 : tensor<8xi32>
    }
    %39 = math.sqrt %17 : tensor<4x4xf32>
    %40 = math.cttz %expanded : tensor<8x8x1xi16>
    %41 = arith.subi %c1783281111_i32, %c1055516512_i32 : i32
    %42 = math.ctlz %2 : tensor<8xi1>
    %43 = math.log10 %cst_3 : f32
    %44 = math.copysign %12, %30 : tensor<4x4xf16>
    %45 = vector.transpose %27, [0] : vector<4xi16> to vector<4xi16>
    %46 = arith.remf %cst_3, %cst_3 : f32
    %47 = vector.insert %c-12258_i16, %27 [1] : i16 into vector<4xi16>
    %48 = vector.splat %c5 : vector<8xindex>
    %49 = math.ctlz %c1159318518_i64 : i64
    %50 = index.casts %c10 : index to i32
    %51 = math.ctpop %19 : tensor<i64>
    %52 = vector.load %alloc_20[%c4, %c0] : memref<8x8xf16>, vector<8x8xf16>
    %53 = arith.shrui %false, %false : i1
    %54 = bufferization.clone %alloc_23 : memref<11xf16> to memref<11xf16>
    %55 = arith.minsi %c426441360_i64, %c172180046_i64 : i64
    %56 = math.expm1 %9 : tensor<4x4xf32>
    %generated = tensor.generate %c0, %c13 {
    ^bb0(%arg2: index, %arg3: index):
      scf.if %false {
        affine.store %cst_2, %alloc_11[%c15] : memref<8xf16>
        %258 = math.ctpop %11 : tensor<8xi32>
        %259 = bufferization.to_tensor %alloc_20 : memref<8x8xf16>
        %260 = math.round %cst_1 : f32
        %261 = vector.flat_transpose %29 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %262 = math.round %cst_0 : f16
        %263 = arith.maxui %c1783281111_i32, %c1783281111_i32 : i32
        %264 = index.sizeof
      } else {
        %258 = bufferization.to_memref %20 : memref<i64>
        %259 = arith.xori %false_4, %false : i1
        %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d3 - d0) * 64, (d0 + 32) * 2, d2)>(%c13, %c15, %c13, %c5)
        %261 = vector.load %258[] : memref<i64>, vector<8x11xi64>
        %262 = index.divs %c9, %c0
        %rank_58 = tensor.rank %2 : tensor<8xi1>
        %263 = vector.reduction <mul>, %28 : vector<4xi1> into i1
        %264 = math.cos %12 : tensor<4x4xf16>
      }
      %cast_57 = tensor.cast %4 : tensor<8x8xi64> to tensor<?x?xi64>
      %256 = affine.max affine_map<(d0) -> (-(d0 * -2 - 2))>(%c12)
      %257 = vector.reduction <add>, %18 : vector<11xf16> into f16
      tensor.yield %c-12258_i16 : i16
    } : tensor<?x?xi16>
    %true = arith.constant true
    %false_25 = arith.constant false
    %57 = vector.transfer_read %10[%c3, %c13], %false_25 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<8x8xi1>, vector<11xi1>
    %rank = tensor.rank %3 : tensor<8xf16>
    %58 = bufferization.clone %alloc_19 : memref<8xi16> to memref<8xi16>
    %59 = arith.addf %cst_1, %cst_1 : f32
    %generated_26 = tensor.generate %c13, %c5 {
    ^bb0(%arg2: index, %arg3: index):
      %alloc_57 = memref.alloc() : memref<8xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %256 = vector.transfer_read %7[%c1], %c0_i32 : tensor<8xi32>, vector<i32>
      %257 = arith.minf %cst, %cst_6 : f32
      %258 = math.cttz %c1159318518_i64 : i64
      tensor.yield %false_4 : i1
    } : tensor<?x?xi1>
    %generated_27 = tensor.generate %c15 {
    ^bb0(%arg2: index, %arg3: index):
      %256 = arith.floordivsi %c1055516512_i32, %c1783281111_i32 : i32
      %rank_57 = tensor.rank %4 : tensor<8x8xi64>
      %257 = math.round %12 : tensor<4x4xf16>
      %258 = affine.max affine_map<(d0, d1) -> ((-d1 + d0) floordiv 128, ((-d1 + d0) floordiv 128 - d1) ceildiv 64)>(%c3, %c11)
      tensor.yield %c426441360_i64 : i64
    } : tensor<?x4xi64>
    %60 = vector.insertelement %c-12258_i16, %27[%c7 : index] : vector<4xi16>
    %61 = bufferization.clone %54 : memref<11xf16> to memref<11xf16>
    %62 = tensor.empty() : tensor<4x4xf16>
    %63 = linalg.matmul ins(%30, %12 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%62 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %true_28 = index.bool.constant true
    affine.store %cst_0, %alloc_20[%c13, %c8] : memref<8x8xf16>
    %64 = vector.flat_transpose %29 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %65 = arith.divsi %c1055516512_i32, %c1055516512_i32 : i32
    %66 = arith.maxui %c1887825572_i64, %c1159318518_i64 : i64
    %67 = vector.bitcast %64 : vector<4xi16> to vector<4xi16>
    affine.for %arg2 = 0 to 24 {
    }
    %68 = arith.minsi %c1783281111_i32, %c1783281111_i32 : i32
    %69 = affine.max affine_map<(d0, d1, d2) -> (d2 mod 16, (d1 + 1) mod 64)>(%c9, %c3, %c3)
    %70 = vector.load %alloc_24[%c3] : memref<8xi64>, vector<8x11xi64>
    %71 = arith.ceildivsi %c1887825572_i64, %c426441360_i64 : i64
    %72 = vector.flat_transpose %27 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %73 = math.powf %30, %12 : tensor<4x4xf16>
    %74 = affine.load %alloc_8[%c14] : memref<8xi1>
    %75 = vector.transpose %27, [0] : vector<4xi16> to vector<4xi16>
    %76 = arith.shrsi %c1159318518_i64, %c426441360_i64 : i64
    %77 = math.log %3 : tensor<8xf16>
    %78 = math.log2 %14 : tensor<4x4xf32>
    %79 = tensor.empty(%c4) : tensor<8x?xf16>
    %80 = bufferization.clone %alloc_11 : memref<8xf16> to memref<8xf16>
    %81 = vector.load %alloc_7[%c3, %c3] : memref<4x4xi32>, vector<4x4xi32>
    %82 = arith.remf %cst_2, %cst_2 : f16
    %83 = arith.minsi %c172180046_i64, %c1159318518_i64 : i64
    %84 = vector.broadcast %cst_3 : f32 to vector<8xf32>
    %85 = vector.fma %84, %84, %84 : vector<8xf32>
    %86 = vector.transpose %27, [0] : vector<4xi16> to vector<4xi16>
    %87 = arith.xori %74, %74 : i1
    %88 = bufferization.to_tensor %alloc_14 : memref<8xi16>
    %89 = bufferization.to_tensor %61 : memref<11xf16>
    %90 = affine.if affine_set<(d0, d1) : (d1 - (d0 + d1) floordiv 8 >= 0, (d0 mod 64 - 8) * 32 >= 0, d0 mod 64 + d0 mod 64 - 8 == 0, d0 + d1 == 0)>(%c4, %c12) -> memref<8x11xi32> {
      %256 = index.mul %69, %c14
      %257 = math.tanh %5 : tensor<8xf32>
      %258 = index.add %c3, %c15
      %inserted_57 = tensor.insert %cst_6 into %5[%c1] : tensor<8xf32>
      vector.print %85 : vector<8xf32>
      %259 = arith.ori %true_28, %true : i1
      %generated_58 = tensor.generate %c3, %c8 {
      ^bb0(%arg2: index, %arg3: index):
        %261 = index.maxs %c1, %c3
        %262 = index.floordivs %c6, %c3
        %263 = math.exp %cst_0 : f16
        %264 = arith.divui %true_28, %false : i1
        tensor.yield %c-12258_i16 : i16
      } : tensor<?x?xi16>
      %260 = vector.splat %true_28 : vector<8x8xi1>
      %alloc_59 = memref.alloc() : memref<8x11xi32>
      affine.yield %alloc_59 : memref<8x11xi32>
    } else {
      %256 = tensor.empty() : tensor<8x11xf32>
      %alloc_57 = memref.alloc() : memref<8xi64>
      %257 = arith.shrsi %false_4, %74 : i1
      %258 = arith.maxui %true_28, %74 : i1
      %extracted = tensor.extract %20[] : tensor<i64>
      %259 = memref.load %alloc_15[%c4, %c4] : memref<8x11xi1>
      %260 = math.log %17 : tensor<4x4xf32>
      %261 = arith.addf %cst_6, %cst_6 : f32
      %alloc_58 = memref.alloc() : memref<8x11xi32>
      affine.yield %alloc_58 : memref<8x11xi32>
    }
    %rank_29 = tensor.rank %1 : tensor<8xi64>
    %91 = arith.shrui %true, %74 : i1
    %92 = tensor.empty() : tensor<4x4xf32>
    %93 = linalg.matmul ins(%9, %14 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%92 : tensor<4x4xf32>) -> tensor<4x4xf32>
    %94 = arith.muli %c-12258_i16, %c-12258_i16 : i16
    %95 = index.add %rank_29, %rank_29
    %96 = index.add %rank, %rank
    vector.print %85 : vector<8xf32>
    %97 = index.mul %c10, %c10
    %98 = arith.floordivsi %false_4, %false : i1
    %99 = math.sqrt %9 : tensor<4x4xf32>
    %100 = arith.maxsi %false_4, %74 : i1
    %101 = index.ceildivs %c10, %95
    %102 = arith.muli %c426441360_i64, %c426441360_i64 : i64
    %103 = vector.broadcast %c-12258_i16 : i16 to vector<4x4xi16>
    %104 = vector.outerproduct %67, %27, %103 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
    %105 = arith.minf %cst, %cst_3 : f32
    %106 = math.powf %12, %62 : tensor<4x4xf16>
    %107 = index.casts %c5 : index to i32
    %108 = tensor.empty() : tensor<8x8xi16>
    %mapped = linalg.map ins(%alloc_17, %15 : memref<8x8xi16>, tensor<8x8xi16>) outs(%108 : tensor<8x8xi16>)
      (%in: i16, %in_57: i16) {
        %alloca = memref.alloca() : memref<8x8xi32>
        %256 = math.atan2 %5, %5 : tensor<8xf32>
        %257 = arith.shli %c426441360_i64, %c172180046_i64 : i64
        %258 = tensor.empty() : tensor<4x4xf16>
        %mapped_58 = linalg.map ins(%alloc_21, %alloc_21, %30 : memref<4x4xf16>, memref<4x4xf16>, tensor<4x4xf16>) outs(%258 : tensor<4x4xf16>)
          (%in_65: f16, %in_66: f16, %in_67: f16) {
            %283 = math.ceil %16 : tensor<4x4xf32>
            %284 = arith.minsi %true, %true_28 : i1
            %285 = arith.addf %in_66, %in_67 : f16
            %286 = bufferization.clone %alloc_13 : memref<8x8xf32> to memref<8x8xf32>
            %287 = index.sub %95, %101
            %288 = arith.maxui %false_4, %true_28 : i1
            %289 = arith.divui %c1055516512_i32, %c1055516512_i32 : i32
            %290 = math.sqrt %12 : tensor<4x4xf16>
            %291 = index.add %101, %101
            %292 = arith.subi %74, %true : i1
            %293 = index.castu %c4 : index to i32
            %294 = index.sizeof
            %295 = tensor.empty(%c2) : tensor<?x8xi32>
            %296 = memref.load %80[%c5] : memref<8xf16>
            %297 = math.floor %14 : tensor<4x4xf32>
            %298 = index.add %c15, %97
            %cst_68 = arith.constant 5.180000e+03 : f16
            %299 = vector.broadcast %cst : f32 to vector<8xf32>
            %300 = vector.fma %299, %84, %84 : vector<8xf32>
            %301 = math.cos %3 : tensor<8xf16>
            %alloc_69 = memref.alloc() : memref<4x4xf16>
            memref.copy %alloc_21, %alloc_69 : memref<4x4xf16> to memref<4x4xf16>
            %alloca_70 = memref.alloca() : memref<8x11xi64>
            %302 = arith.remui %c1159318518_i64, %c1887825572_i64 : i64
            %303 = math.ipowi %2, %2 : tensor<8xi1>
            %304 = vector.multi_reduction <minsi>, %72, %67 [] : vector<4xi16> to vector<4xi16>
            %305 = index.divs %c9, %291
            %306 = math.exp %in_66 : f16
            %307 = affine.apply affine_map<(d0, d1, d2) -> ((d2 mod 64) floordiv 8)>(%69, %287, %c12)
            %308 = arith.maxsi %c1159318518_i64, %c1159318518_i64 : i64
            %309 = arith.divui %c-12258_i16, %in : i16
            %310 = index.divs %c13, %rank
            %311 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - (d3 - d2) ceildiv 128, -(d3 - (d3 - d2) ceildiv 128))>(%c12, %c10, %c13, %c4)
            %312 = math.ctpop %10 : tensor<8x8xi1>
            %cst_71 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_71 : f16
          }
        memref.assume_alignment %alloc, 8 : memref<8xi1>
        %259 = math.copysign %258, %12 : tensor<4x4xf16>
        %260 = memref.alloca_scope  -> (memref<8x8xf32>) {
          %283 = arith.maxsi %false, %false_4 : i1
          %284 = bufferization.to_memref %8 : memref<4x4xi64>
          %285 = math.cos %89 : tensor<11xf16>
          %286 = index.casts %96 : index to i32
          %287 = bufferization.to_tensor %alloc_19 : memref<8xi16>
          %288 = arith.remui %c1783281111_i32, %c1783281111_i32 : i32
          %289 = index.casts %c1887825572_i64 : i64 to index
          %290 = index.add %95, %69
          %291 = vector.load %alloc_21[%c1, %c3] : memref<4x4xf16>, vector<8xf16>
          %292 = arith.xori %c-12258_i16, %in_57 : i16
          %293 = index.sizeof
          %294 = arith.remui %c172180046_i64, %c1887825572_i64 : i64
          %295 = arith.shrui %c1783281111_i32, %c1055516512_i32 : i32
          memref.assume_alignment %alloc_18, 4 : memref<8x8xi32>
          %296 = index.sizeof
          %297 = math.sqrt %92 : tensor<4x4xf32>
          %298 = math.ceil %cst_5 : f16
          %299 = math.tanh %16 : tensor<4x4xf32>
          %300 = vector.bitcast %67 : vector<4xi16> to vector<4xi16>
          %301 = math.absf %30 : tensor<4x4xf16>
          %302 = vector.reduction <mul>, %18 : vector<11xf16> into f16
          %303 = arith.shli %true_28, %74 : i1
          %304 = index.sizeof
          %extracted_65 = tensor.extract %cast[%c0] : tensor<?xi64>
          %alloc_66 = memref.alloc() : memref<8x8x1xi16>
          memref.tensor_store %expanded, %alloc_66 : memref<8x8x1xi16>
          %305 = math.ceil %89 : tensor<11xf16>
          %rank_67 = tensor.rank %cast : tensor<?xi64>
          %306 = math.tanh %cst_1 : f32
          %307 = bufferization.to_memref %7 : memref<8xi32>
          %308 = tensor.empty(%101) : tensor<?xf32>
          %309 = arith.minui %true, %false_4 : i1
          %310 = arith.andi %extracted_65, %c1159318518_i64 : i64
          memref.alloca_scope.return %alloc_13 : memref<8x8xf32>
        }
        %261 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 - 8) floordiv 64, (d1 - d3) mod 32, -(d1 - d3), d2 + (d3 - 8) floordiv 64)>(%c6, %c15, %c2, %c9)
        %262 = math.log10 %cst : f32
        %inserted_59 = tensor.insert %in into %15[%c3, %c7] : tensor<8x8xi16>
        %263 = tensor.empty() : tensor<4x4xi32>
        %mapped_60 = linalg.map ins(%alloc_7, %alloc_7, %alloc_7 : memref<4x4xi32>, memref<4x4xi32>, memref<4x4xi32>) outs(%263 : tensor<4x4xi32>)
          (%in_65: i32, %in_66: i32, %in_67: i32) {
            %collapsed_68 = tensor.collapse_shape %4 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
            %283 = arith.addf %cst_3, %cst_3 : f32
            %284 = affine.apply affine_map<(d0, d1, d2) -> (((d0 ceildiv 32) ceildiv 8 - (d1 - 132)) floordiv 2)>(%c14, %c10, %c11)
            %285 = vector.reduction <maxf>, %84 : vector<8xf32> into f32
            %286 = math.atan %92 : tensor<4x4xf32>
            %287 = vector.broadcast %c1783281111_i32 : i32 to vector<4xi32>
            %dest_69, %accumulated_value_70 = vector.scan <or>, %81, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4xi32>, vector<4xi32>
            %288 = arith.muli %true_28, %true : i1
            %289 = memref.load %alloc[%c3] : memref<8xi1>
            memref.store %in_57, %alloc_19[%c3] : memref<8xi16>
            %290 = math.powf %16, %9 : tensor<4x4xf32>
            %291 = math.ctlz %expanded : tensor<8x8x1xi16>
            %292 = arith.shrui %c1159318518_i64, %c426441360_i64 : i64
            %293 = arith.remsi %c1159318518_i64, %c1887825572_i64 : i64
            %294 = math.ctlz %263 : tensor<4x4xi32>
            %295 = math.cos %5 : tensor<8xf32>
            %296 = index.ceildivs %c7, %c4
            %297 = vector.reduction <minsi>, %67 : vector<4xi16> into i16
            %298 = index.sizeof
            %c0_i16_71 = arith.constant 0 : i16
            %299 = vector.transfer_read %108[%261, %rank], %c0_i16_71 : tensor<8x8xi16>, vector<11xi16>
            memref.tensor_store %1, %alloc_24 : memref<8xi64>
            %300 = arith.subi %c0_i16_71, %c-12258_i16 : i16
            %301 = index.mul %c11, %96
            %302 = math.ceil %cst_6 : f32
            %303 = index.divs %rank_29, %96
            %304 = vector.extract %27[3] : vector<4xi16>
            %305 = math.copysign %92, %14 : tensor<4x4xf32>
            %306 = index.casts %in_67 : i32 to index
            %c832205310_i64 = arith.constant 832205310 : i64
            %307 = math.exp %258 : tensor<4x4xf16>
            %308 = math.sqrt %cst_6 : f32
            %309 = math.ipowi %in_67, %in_67 : i32
            %alloca_72 = memref.alloca() : memref<8x8xi1>
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %264 = arith.ori %false_4, %true : i1
        %265 = tensor.empty() : tensor<4x4xf32>
        %266 = linalg.matmul ins(%9, %92 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%265 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %267 = arith.muli %c-12258_i16, %in_57 : i16
        %268 = arith.minsi %in_57, %in : i16
        %269 = arith.minsi %74, %true : i1
        %270 = index.casts %c6 : index to i32
        %false_61 = index.bool.constant false
        %271 = math.rsqrt %5 : tensor<8xf32>
        %inserted_62 = tensor.insert %c1159318518_i64 into %8[%c1, %c1] : tensor<4x4xi64>
        %extracted = tensor.extract %15[%c6, %c4] : tensor<8x8xi16>
        %inserted_63 = tensor.insert %74 into %generated_26[%c0, %c0] : tensor<?x?xi1>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %64, %27, %in : vector<4xi16>, vector<4xi16> into i16
        %273 = math.ipowi %15, %15 : tensor<8x8xi16>
        %274 = bufferization.to_tensor %alloc_21 : memref<4x4xf16>
        %275 = tensor.empty() : tensor<4x4xf32>
        %276 = linalg.matmul ins(%16, %9 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%275 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %277 = math.log1p %cst_3 : f32
        %278 = math.exp2 %62 : tensor<4x4xf16>
        %279 = math.absf %17 : tensor<4x4xf32>
        %280 = math.atan %cst_3 : f32
        %281 = math.ctlz %0 : tensor<8xi64>
        %282 = tensor.empty() : tensor<4x4xf16>
        %mapped_64 = linalg.map ins(%alloc_21, %62, %12 : memref<4x4xf16>, tensor<4x4xf16>, tensor<4x4xf16>) outs(%282 : tensor<4x4xf16>)
          (%in_65: f16, %in_66: f16, %in_67: f16) {
            %283 = math.floor %cst_1 : f32
            %284 = math.tanh %9 : tensor<4x4xf32>
            %cst_68 = arith.constant 5.190400e+04 : f16
            %false_69 = arith.constant false
            %285 = arith.shrui %c1783281111_i32, %c1055516512_i32 : i32
            %286 = memref.load %alloc_23[%c10] : memref<11xf16>
            %287 = math.atan2 %17, %9 : tensor<4x4xf32>
            %288 = memref.load %61[%c0] : memref<11xf16>
            %289 = arith.minui %false_4, %false : i1
            %290 = index.castu %c13 : index to i32
            %291 = vector.create_mask %rank_29, %rank_29 : vector<8x11xi1>
            %292 = tensor.empty() : tensor<8x11xi64>
            %293 = vector.load %alloc_13[%c7, %c3] : memref<8x8xf32>, vector<8x11xf32>
            %cst_70 = arith.constant 1.000000e+00 : f32
            %294 = vector.transfer_read %16[%c5, %97], %cst_70 : tensor<4x4xf32>, vector<f32>
            %295 = index.maxu %c9, %97
            %296 = arith.shli %false, %74 : i1
            %297 = math.exp %258 : tensor<4x4xf16>
            %extracted_71 = tensor.extract %4[%c3, %c5] : tensor<8x8xi64>
            %298 = math.round %5 : tensor<8xf32>
            %inserted_72 = tensor.insert %cst_3 into %265[%c2, %c0] : tensor<4x4xf32>
            %299 = vector.bitcast %81 : vector<4x4xi32> to vector<4x4xi32>
            %300 = index.casts %true : i1 to index
            %301 = math.log %14 : tensor<4x4xf32>
            %extracted_73 = tensor.extract %21[%c1, %c0] : tensor<4x4xf32>
            %302 = math.exp %3 : tensor<8xf16>
            %303 = math.powf %275, %14 : tensor<4x4xf32>
            %304 = arith.remsi %in, %c-12258_i16 : i16
            %305 = math.absf %12 : tensor<4x4xf16>
            %inserted_74 = tensor.insert %in_57 into %15[%c1, %c2] : tensor<8x8xi16>
            %306 = index.ceildivs %rank, %c4
            %307 = arith.shrsi %c426441360_i64, %c172180046_i64 : i64
            %308 = math.log2 %cst : f32
            %cst_75 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_75 : f16
          }
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %109 = scf.index_switch %rank_29 -> index 
    case 1 {
      %256 = memref.atomic_rmw assign %cst_2, %80[%c4] : (f16, memref<8xf16>) -> f16
      %257 = arith.floordivsi %c1159318518_i64, %c172180046_i64 : i64
      %c1_i16 = arith.constant 1 : i16
      %258 = vector.transfer_read %alloc_17[%c10, %c12], %c1_i16 : memref<8x8xi16>, vector<i16>
      %inserted_57 = tensor.insert %false into %13[%c5] : tensor<8xi1>
      %259 = memref.load %alloc_18[%c6, %c3] : memref<8x8xi32>
      %260 = index.castu %69 : index to i32
      %261 = affine.max affine_map<(d0) -> (d0 + (d0 ceildiv 2) ceildiv 8 - 36, -(d0 ceildiv 2), d0 + (d0 ceildiv 2) ceildiv 8 - 36, (d0 - 36) * 8)>(%c0)
      %262 = vector.broadcast %c1_i16 : i16 to vector<4x4xi16>
      %263 = vector.outerproduct %29, %27, %262 {kind = #vector.kind<mul>} : vector<4xi16>, vector<4xi16>
      %264 = vector.extract %72[0] : vector<4xi16>
      %265 = vector.broadcast %cst_1 : f32 to vector<8x8xf32>
      %266 = vector.outerproduct %85, %85, %265 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
      %267 = math.sqrt %62 : tensor<4x4xf16>
      %268 = arith.maxui %c1159318518_i64, %c1159318518_i64 : i64
      affine.store %c1055516512_i32, %alloc_7[%c7, %c5] : memref<4x4xi32>
      %269 = vector.broadcast %c-12258_i16 : i16 to vector<4x4xi16>
      %270 = vector.outerproduct %72, %67, %269 {kind = #vector.kind<maxsi>} : vector<4xi16>, vector<4xi16>
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %28, %28, %true : vector<4xi1>, vector<4xi1> into i1
      %inserted_58 = tensor.insert %c1055516512_i32 into %11[%c5] : tensor<8xi32>
      scf.yield %c12 : index
    }
    case 2 {
      %256 = index.sub %c2, %c10
      %257 = arith.divui %false_4, %74 : i1
      %258 = math.sqrt %89 : tensor<11xf16>
      %259 = vector.insertelement %c-12258_i16, %64[%c10 : index] : vector<4xi16>
      %260 = arith.maxsi %c-12258_i16, %c-12258_i16 : i16
      %261 = bufferization.clone %alloc_13 : memref<8x8xf32> to memref<8x8xf32>
      %262 = arith.shrsi %false_4, %false_4 : i1
      %alloc_57 = memref.alloc() : memref<8xi64>
      %263 = arith.xori %c1783281111_i32, %c1783281111_i32 : i32
      %264 = bufferization.to_memref %0 : memref<8xi64>
      %265 = math.exp %cst_5 : f16
      %266 = vector.broadcast %cst : f32 to vector<8x8xf32>
      %267 = vector.fma %266, %266, %266 : vector<8x8xf32>
      %cst_58 = arith.constant 1.06279955E+9 : f32
      %268 = index.ceildivs %96, %c12
      %269 = math.log1p %92 : tensor<4x4xf32>
      %cst_59 = arith.constant 6.339200e+04 : f16
      scf.yield %c6 : index
    }
    default {
      %256 = index.sub %c3, %c6
      %257 = arith.andi %true, %true : i1
      %258 = index.mul %c1, %c6
      %259 = math.expm1 %cst_5 : f16
      %260 = arith.andi %c1783281111_i32, %c1055516512_i32 : i32
      %261 = bufferization.clone %alloc_21 : memref<4x4xf16> to memref<4x4xf16>
      scf.if %false {
        %269 = memref.load %alloc_13[%c2, %c1] : memref<8x8xf32>
        %270 = arith.negf %cst_1 : f32
        %271 = math.round %3 : tensor<8xf16>
        %cast_60 = tensor.cast %0 : tensor<8xi64> to tensor<?xi64>
        %272 = vector.extract %29[1] : vector<4xi16>
        %273 = arith.remsi %c1783281111_i32, %c1783281111_i32 : i32
        %274 = arith.xori %c1159318518_i64, %c1159318518_i64 : i64
        %275 = index.divs %c2, %101
      }
      %262 = math.roundeven %30 : tensor<4x4xf16>
      %false_57 = arith.constant false
      %alloc_58 = memref.alloc() : memref<4x4xf32>
      memref.tensor_store %21, %alloc_58 : memref<4x4xf32>
      %263 = math.atan2 %14, %14 : tensor<4x4xf32>
      %264 = index.mul %c1, %c5
      %265 = bufferization.to_tensor %alloc_13 : memref<8x8xf32>
      %collapsed_59 = tensor.collapse_shape %4 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
      %266 = math.cos %89 : tensor<11xf16>
      %267 = vector.broadcast %false : i1 to vector<4x4xi1>
      %268 = vector.outerproduct %28, %28, %267 {kind = #vector.kind<maxui>} : vector<4xi1>, vector<4xi1>
      scf.yield %c1 : index
    }
    %110 = affine.max affine_map<(d0, d1, d2) -> (-d1)>(%c12, %c15, %c6)
    %111 = index.sub %69, %95
    %112 = index.sizeof
    %cast_30 = tensor.cast %92 : tensor<4x4xf32> to tensor<?x?xf32>
    %cst_31 = arith.constant 2.876800e+04 : f16
    %rank_32 = tensor.rank %14 : tensor<4x4xf32>
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_33 = arith.constant 0 : i16
    %113 = vector.transfer_read %58[%c11], %c0_i16_33 : memref<8xi16>, vector<i16>
    %114 = index.ceildivs %c8, %69
    %115 = math.copysign %21, %14 : tensor<4x4xf32>
    %116 = arith.xori %true, %false : i1
    %collapsed = tensor.collapse_shape %16 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
    %117 = tensor.empty() : tensor<8xi1>
    %118 = index.casts %c1055516512_i32 : i32 to index
    %119 = math.atan %cst_6 : f32
    %120 = tensor.empty(%c11) : tensor<8x?xf16>
    %121 = arith.ori %true_28, %false_4 : i1
    %122 = vector.broadcast %c172180046_i64 : i64 to vector<8xi64>
    %dest, %accumulated_value = vector.scan <and>, %70, %122 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11xi64>, vector<8xi64>
    %123 = arith.shrsi %c426441360_i64, %c172180046_i64 : i64
    %124 = index.sub %97, %c12
    %125 = vector.flat_transpose %84 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %126 = bufferization.to_tensor %alloc_13 : memref<8x8xf32>
    %127 = index.add %c12, %110
    %128 = vector.matrix_multiply %67, %72 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
    %129 = vector.broadcast %cst : f32 to vector<8x8xf32>
    %130 = vector.fma %129, %129, %129 : vector<8x8xf32>
    scf.index_switch %97 
    case 1 {
      %256 = arith.minsi %c0_i16, %c0_i16 : i16
      %257 = math.log %5 : tensor<8xf32>
      %inserted_57 = tensor.insert %true_28 into %2[%c5] : tensor<8xi1>
      %extracted = tensor.extract %11[%c6] : tensor<8xi32>
      %258 = index.divs %c13, %c3
      %259 = math.powf %cst_5, %cst_5 : f16
      %260 = arith.minf %cst_6, %cst_3 : f32
      %261 = index.casts %rank : index to i32
      %262 = bufferization.to_memref %7 : memref<8xi32>
      %263 = tensor.empty() : tensor<4x4xi64>
      %264 = linalg.matmul ins(%8, %8 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%263 : tensor<4x4xi64>) -> tensor<4x4xi64>
      %265 = arith.shrui %74, %true : i1
      %266 = math.log10 %9 : tensor<4x4xf32>
      %267 = scf.index_switch %c2 -> vector<4x4xi32> 
      case 1 {
        %270 = arith.addf %cst_1, %cst : f32
        %271 = vector.reduction <mul>, %67 : vector<4xi16> into i16
        %272 = bufferization.to_memref %5 : memref<8xf32>
        %273 = affine.load %alloc_12[%c7, %c12] : memref<8x11xf16>
        %274 = bufferization.clone %alloc_19 : memref<8xi16> to memref<8xi16>
        %275 = math.round %30 : tensor<4x4xf16>
        %276 = math.log2 %62 : tensor<4x4xf16>
        %277 = index.ceildivs %95, %c7
        %278 = memref.load %58[%c4] : memref<8xi16>
        %c-12537_i16 = arith.constant -12537 : i16
        %279 = arith.shrui %c1055516512_i32, %c1783281111_i32 : i32
        %280 = math.sqrt %92 : tensor<4x4xf32>
        %281 = index.sub %96, %rank_29
        %282 = index.ceildivs %c1, %69
        %283 = vector.reduction <mul>, %27 : vector<4xi16> into i16
        %284 = bufferization.to_memref %6 : memref<8x8xi64>
        scf.yield %81 : vector<4x4xi32>
      }
      default {
        %270 = arith.minui %c1159318518_i64, %c172180046_i64 : i64
        %271 = bufferization.clone %54 : memref<11xf16> to memref<11xf16>
        %272 = arith.shrsi %extracted, %c1055516512_i32 : i32
        %273 = vector.broadcast %rank_32 : index to vector<11xindex>
        %274 = vector.broadcast %74 : i1 to vector<11xi1>
        %275 = vector.broadcast %c-12258_i16 : i16 to vector<11xi16>
        vector.scatter %58[%c1] [%273], %274, %275 : memref<8xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
        %276 = arith.remui %extracted, %extracted : i32
        %277 = vector.broadcast %false : i1 to vector<11xi1>
        %278 = vector.maskedload %alloc_9[%c3], %277, %277 : memref<8xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %279 = arith.shli %true_28, %true : i1
        %from_elements_60 = tensor.from_elements %c-12258_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c0_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c-12258_i16, %c0_i16, %c-12258_i16, %c-12258_i16, %c0_i16 : tensor<8x8xi16>
        %alloc_61 = memref.alloc() : memref<8xi1>
        %280 = math.copysign %5, %5 : tensor<8xf32>
        %281 = arith.divui %74, %true_28 : i1
        %282 = index.mul %c12, %c12
        %283 = index.maxs %124, %114
        %284 = math.exp %cst_1 : f32
        %285 = tensor.empty() : tensor<8xf16>
        %286 = vector.bitcast %52 : vector<8x8xf16> to vector<8x8xf16>
        scf.yield %81 : vector<4x4xi32>
      }
      %268 = math.expm1 %cst_3 : f32
      %269 = tensor.empty() : tensor<4x4xf32>
      %mapped_58 = linalg.map ins(%92 : tensor<4x4xf32>) outs(%269 : tensor<4x4xf32>)
        (%in: f32) {
          %270 = math.round %16 : tensor<4x4xf32>
          %271 = vector.broadcast %cst_3 : f32 to vector<8xf32>
          %272 = vector.fma %271, %85, %125 : vector<8xf32>
          %273 = index.mul %c4, %c12
          %274 = arith.remui %c172180046_i64, %c426441360_i64 : i64
          %275 = index.add %c9, %c5
          %276 = arith.ori %true, %true_28 : i1
          %277 = vector.reduction <maxui>, %27 : vector<4xi16> into i16
          %278 = math.atan2 %3, %3 : tensor<8xf16>
          %279 = bufferization.to_tensor %alloc_11 : memref<8xf16>
          %280 = tensor.empty() : tensor<4x4xi1>
          %281 = bufferization.to_memref %2 : memref<8xi1>
          %282 = bufferization.to_tensor %alloc_7 : memref<4x4xi32>
          %283 = math.rsqrt %cst : f32
          %rank_60 = tensor.rank %12 : tensor<4x4xf16>
          %284 = math.expm1 %30 : tensor<4x4xf16>
          %285 = math.rsqrt %cst_5 : f16
          %286 = arith.minf %cst_3, %cst_1 : f32
          %287 = vector.load %alloc_19[%c2] : memref<8xi16>, vector<8x11xi16>
          %288 = arith.floordivsi %false_4, %false_4 : i1
          %289 = math.ipowi %0, %1 : tensor<8xi64>
          memref.tensor_store %12, %alloc_21 : memref<4x4xf16>
          %alloc_61 = memref.alloc() : memref<8x8xi16>
          %c1_i64 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %290 = vector.transfer_read %0[%273], %c0_i64 : tensor<8xi64>, vector<i64>
          %291 = index.divs %rank_60, %rank_32
          bufferization.dealloc_tensor %2 : tensor<8xi1>
          memref.tensor_store %1, %alloc_24 : memref<8xi64>
          %292 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
          %293 = affine.max affine_map<(d0, d1) -> (d1 + d1 - d0, d1 - d0 - 126)>(%97, %112)
          %294 = arith.ceildivsi %false_4, %true_28 : i1
          %295 = math.atan %5 : tensor<8xf32>
          %296 = arith.cmpi sle, %c172180046_i64, %c426441360_i64 : i64
          affine.store %c0_i16, %alloc_19[%c0] : memref<8xi16>
          %cst_62 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_62 : f32
        }
      %alloc_59 = memref.alloc() : memref<8x11xi64>
      scf.yield
    }
    default {
      %256 = index.sub %c13, %118
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%58, %expanded : memref<8xi16>, tensor<8x8x1xi16>) outs(%expanded : tensor<8x8x1xi16>) {
      ^bb0(%in: i16, %in_58: i16, %out: i16):
        %269 = arith.shrui %false, %74 : i1
        %270 = math.rsqrt %14 : tensor<4x4xf32>
        %271 = vector.extract %125[0] : vector<8xf32>
        %272 = arith.addf %cst, %cst_6 : f32
        %273 = affine.max affine_map<(d0, d1, d2, d3) -> (-(-(d3 floordiv 4) + -(d3 floordiv 4) + 32), -(d3 floordiv 4) + d1 + 32, -(d3 floordiv 4) + 32)>(%101, %c8, %110, %127)
        %274 = math.round %92 : tensor<4x4xf32>
        %275 = math.ipowi %0, %0 : tensor<8xi64>
        %276 = bufferization.clone %alloc_24 : memref<8xi64> to memref<8xi64>
        %277 = bufferization.clone %alloc_7 : memref<4x4xi32> to memref<4x4xi32>
        memref.assume_alignment %61, 16 : memref<11xf16>
        %278 = arith.minsi %true, %false : i1
        %279 = math.fma %62, %12, %30 : tensor<4x4xf16>
        %280 = math.log10 %5 : tensor<8xf32>
        %281 = vector.bitcast %29 : vector<4xi16> to vector<4xi16>
        %282 = math.ceil %62 : tensor<4x4xf16>
        %283 = affine.load %alloc_23[%c15] : memref<11xf16>
        %284 = index.sizeof
        %285 = vector.outerproduct %125, %125, %129 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
        %286 = arith.remf %cst_0, %cst_0 : f16
        %287 = vector.transpose %281, [0] : vector<4xi16> to vector<4xi16>
        %288 = arith.subi %false_4, %true : i1
        %289 = index.maxu %c15, %96
        %290 = math.roundeven %5 : tensor<8xf32>
        %291 = vector.extract %64[0] : vector<4xi16>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %129, %85 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
        %292 = math.sqrt %cst_3 : f32
        %293 = vector.broadcast %cst_6 : f32 to vector<4x4xf32>
        %294 = vector.fma %293, %293, %293 : vector<4x4xf32>
        %295 = vector.extract %125[3] : vector<8xf32>
        %296 = vector.flat_transpose %84 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %297 = bufferization.to_tensor %alloc : memref<8xi1>
        %298 = math.expm1 %cst_6 : f32
        %299 = bufferization.to_memref %expanded : memref<8x8x1xi16>
        linalg.yield %in_58 : i16
      } -> tensor<8x8x1xi16>
      %258 = arith.remsi %true_28, %false_4 : i1
      %259 = math.log %12 : tensor<4x4xf16>
      %260 = arith.remsi %c426441360_i64, %c1159318518_i64 : i64
      %261 = index.mul %c5, %rank_32
      %alloc_57 = memref.alloc() : memref<8x8xi32>
      %262 = math.sqrt %14 : tensor<4x4xf32>
      %263 = index.add %c7, %261
      %264 = bufferization.to_memref %expanded : memref<8x8x1xi16>
      %265 = arith.addf %cst_5, %cst_2 : f16
      %266 = arith.andi %74, %false : i1
      %c5630_i16 = arith.constant 5630 : i16
      %267 = vector.insert %125, %129 [0] : vector<8xf32> into vector<8x8xf32>
      affine.for %arg2 = 0 to 73 {
      }
      %268 = math.fma %126, %126, %126 : tensor<8x8xf32>
    }
    %131 = arith.remsi %false, %74 : i1
    %rank_34 = tensor.rank %108 : tensor<8x8xi16>
    %132 = vector.matrix_multiply %125, %84 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
    %133 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %rank_35 = tensor.rank %0 : tensor<8xi64>
    %134 = math.powf %16, %14 : tensor<4x4xf32>
    %135 = vector.bitcast %132 : vector<1xf32> to vector<1xf32>
    %rank_36 = tensor.rank %expanded : tensor<8x8x1xi16>
    %136 = arith.minui %true, %true_28 : i1
    %137 = math.expm1 %12 : tensor<4x4xf16>
    %138 = arith.shrui %c1055516512_i32, %c1055516512_i32 : i32
    %alloc_37 = memref.alloc() : memref<1x8x8xi16>
    %139 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37, %alloc_37 : memref<1x8x8xi16>, memref<1x8x8xi16>) outs(%expanded : tensor<8x8x1xi16>) {
    ^bb0(%in: i16, %in_57: i16, %out: i16):
      %extracted = tensor.extract %17[%c0, %c3] : tensor<4x4xf32>
      %256 = arith.maxui %in, %c-12258_i16 : i16
      %257 = math.log %cst_6 : f32
      %inserted_58 = tensor.insert %cst_6 into %9[%c2, %c1] : tensor<4x4xf32>
      %rank_59 = tensor.rank %30 : tensor<4x4xf16>
      %258 = math.ctlz %in_57 : i16
      %259 = index.divs %rank_29, %97
      %260 = math.log1p %cst_1 : f32
      %261 = vector.multi_reduction <minf>, %84, %cst_1 [0] : vector<8xf32> to f32
      %from_elements_60 = tensor.from_elements %in, %out, %in, %in, %c-12258_i16, %c0_i16, %out, %in, %c-12258_i16, %out, %in_57, %in, %in, %in, %in, %in : tensor<4x4xi16>
      scf.index_switch %c0 
      case 1 {
        %275 = arith.remui %c-12258_i16, %out : i16
        %cst_67 = arith.constant 0x4DA7E6DF : f32
        %276 = math.tanh %14 : tensor<4x4xf32>
        %277 = index.add %c11, %259
        %278 = affine.max affine_map<(d0, d1) -> (d1, (d0 - 2) * 8)>(%95, %110)
        %279 = arith.andi %c1887825572_i64, %c172180046_i64 : i64
        %280 = arith.maxsi %true_28, %74 : i1
        vector.print %70 : vector<8x11xi64>
        %281 = index.maxu %259, %c1
        %282 = math.tanh %261 : f32
        %283 = arith.xori %true, %false_4 : i1
        %284 = bufferization.clone %alloc_15 : memref<8x11xi1> to memref<8x11xi1>
        %285 = memref.load %alloc_24[%c6] : memref<8xi64>
        %286 = arith.floordivsi %true, %true_28 : i1
        %287 = arith.shrsi %true, %true_28 : i1
        %rank_68 = tensor.rank %from_elements_60 : tensor<4x4xi16>
        scf.yield
      }
      case 2 {
        %275 = index.sizeof
        %c389813919_i32 = arith.constant 389813919 : i32
        %rank_67 = tensor.rank %generated : tensor<?x?xi16>
        %276 = math.powf %12, %12 : tensor<4x4xf16>
        %277 = math.log2 %9 : tensor<4x4xf32>
        %278 = math.sqrt %89 : tensor<11xf16>
        %279 = memref.load %alloc[%c4] : memref<8xi1>
        %280 = vector.broadcast %true_28 : i1 to vector<8xi1>
        %281 = vector.maskedload %alloc_22[%c3], %280, %280 : memref<8xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %282 = vector.reduction <maxsi>, %72 : vector<4xi16> into i16
        %283 = arith.maxui %false, %false : i1
        %284 = math.log10 %21 : tensor<4x4xf32>
        %285 = math.expm1 %261 : f32
        %286 = index.ceildivs %c11, %c11
        vector.print %84 : vector<8xf32>
        %inserted_68 = tensor.insert %extracted into %5[%c7] : tensor<8xf32>
        %alloc_69 = memref.alloc() : memref<4x4xi16>
        memref.tensor_store %from_elements_60, %alloc_69 : memref<4x4xi16>
        scf.yield
      }
      default {
        %275 = arith.maxui %c1783281111_i32, %c1783281111_i32 : i32
        %276 = affine.max affine_map<(d0, d1) -> (d1)>(%c15, %c12)
        %277 = arith.shrui %true_28, %74 : i1
        %278 = math.log %126 : tensor<8x8xf32>
        %279 = vector.broadcast %cst_5 : f16 to vector<8xf16>
        %dest_67, %accumulated_value_68 = vector.scan <add>, %52, %279 {inclusive = false, reduction_dim = 1 : i64} : vector<8x8xf16>, vector<8xf16>
        %280 = index.add %rank_59, %c5
        %281 = arith.addf %cst_2, %cst_2 : f16
        %rank_69 = tensor.rank %17 : tensor<4x4xf32>
        %282 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %283 = tensor.empty() : tensor<4x4xi32>
        %284 = vector.broadcast %c1055516512_i32 : i32 to vector<8x11xi32>
        %285 = vector.broadcast %false : i1 to vector<8x11xi1>
        %286 = vector.gather %283[%259, %rank_59] [%284], %285, %284 : tensor<4x4xi32>, vector<8x11xi32>, vector<8x11xi1>, vector<8x11xi32> into vector<8x11xi32>
        %287 = memref.load %alloc_15[%c0, %c6] : memref<8x11xi1>
        %288 = math.cttz %13 : tensor<8xi1>
        %289 = arith.mulf %261, %261 : f32
        %true_70 = arith.constant true
        %290 = arith.shrsi %false_4, %false_4 : i1
        %291 = math.log %5 : tensor<8xf32>
      }
      %262 = math.log10 %126 : tensor<8x8xf32>
      %alloca = memref.alloca() : memref<8x11xi1>
      %263 = index.ceildivs %c15, %c10
      bufferization.dealloc_tensor %6 : tensor<8x8xi64>
      %264 = math.atan %126 : tensor<8x8xf32>
      %c0_i64 = arith.constant 0 : i64
      %265 = vector.transfer_read %0[%95], %c0_i64 : tensor<8xi64>, vector<i64>
      %alloc_61 = memref.alloc() : memref<4x4xi64>
      memref.tensor_store %8, %alloc_61 : memref<4x4xi64>
      %alloc_62 = memref.alloc() : memref<4x4xi1>
      %266 = tensor.empty() : tensor<8xf32>
      %mapped_63 = linalg.map ins(%5 : tensor<8xf32>) outs(%266 : tensor<8xf32>)
        (%in_67: f32) {
          %275 = affine.min affine_map<(d0, d1, d2, d3) -> (-32)>(%c12, %rank_32, %110, %111)
          %276 = arith.remsi %true, %true : i1
          %277 = math.ctlz %in_57 : i16
          %278 = bufferization.clone %alloc_9 : memref<8xi1> to memref<8xi1>
          %279 = math.round %3 : tensor<8xf16>
          %280 = math.cos %14 : tensor<4x4xf32>
          %281 = vector.load %alloc_22[%c1] : memref<8xi1>, vector<4x4xi1>
          %282 = vector.insertelement %cst_3, %84[%rank_35 : index] : vector<8xf32>
          %283 = math.sqrt %collapsed : tensor<16xf32>
          %284 = index.ceildivs %c12, %c11
          %285 = bufferization.clone %278 : memref<8xi1> to memref<8xi1>
          %286 = math.exp %cst_0 : f16
          %cst_68 = arith.constant 6.492800e+04 : f16
          %287 = arith.xori %c426441360_i64, %c1887825572_i64 : i64
          %288 = math.copysign %89, %89 : tensor<11xf16>
          %289 = math.atan %126 : tensor<8x8xf32>
          %290 = vector.load %alloc_14[%c3] : memref<8xi16>, vector<4x4xi16>
          %291 = index.casts %c0 : index to i32
          %292 = vector.flat_transpose %72 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %293 = affine.max affine_map<(d0, d1) -> (d0 mod 8, d0 - 128, d0, -d0)>(%c5, %c14)
          %294 = vector.insertelement %c-12258_i16, %72[%284 : index] : vector<4xi16>
          %295 = vector.broadcast %cst : f32 to vector<8x8xf32>
          %296 = vector.fma %295, %295, %130 : vector<8x8xf32>
          %297 = vector.insert %true, %28 [2] : i1 into vector<4xi1>
          %298 = tensor.empty() : tensor<8x8xi16>
          %299 = affine.load %alloc_14[%c15] : memref<8xi16>
          %300 = memref.load %alloc_24[%c6] : memref<8xi64>
          %301 = vector.broadcast %c1055516512_i32 : i32 to vector<8xi32>
          vector.transfer_write %301, %alloc_7[%95, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi32>, memref<4x4xi32>
          %302 = math.cos %9 : tensor<4x4xf32>
          %alloc_69 = memref.alloc() : memref<8x11xi16>
          %collapsed_70 = tensor.collapse_shape %10 [[0, 1]] : tensor<8x8xi1> into tensor<64xi1>
          %303 = math.atan %cst_5 : f16
          %304 = arith.andi %false, %false_4 : i1
          %cst_71 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_71 : f32
        }
      %267 = math.expm1 %9 : tensor<4x4xf32>
      %268 = memref.load %alloc_22[%c0] : memref<8xi1>
      %269 = vector.reduction <and>, %67 : vector<4xi16> into i16
      %270 = arith.shrsi %c1055516512_i32, %c1055516512_i32 : i32
      %cast_64 = tensor.cast %9 : tensor<4x4xf32> to tensor<?x?xf32>
      %271 = bufferization.clone %alloc_20 : memref<8x8xf16> to memref<8x8xf16>
      bufferization.dealloc_tensor %3 : tensor<8xf16>
      %272 = arith.shrsi %c1887825572_i64, %c172180046_i64 : i64
      %273 = scf.if %true_28 -> (memref<8xi32>) {
        %275 = arith.divui %c0_i64, %c0_i64 : i64
        %276 = vector.matrix_multiply %133, %133 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %277 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        memref.store %cst, %alloc_13[%c1, %c3] : memref<8x8xf32>
        %278 = vector.bitcast %72 : vector<4xi16> to vector<4xf16>
        %279 = math.rsqrt %9 : tensor<4x4xf32>
        %280 = index.castu %74 : i1 to index
        %281 = vector.broadcast %extracted : f32 to vector<4x4xf32>
        %282 = vector.fma %281, %281, %281 : vector<4x4xf32>
        %alloc_67 = memref.alloc() : memref<8xi32>
        scf.yield %alloc_67 : memref<8xi32>
      } else {
        %275 = math.sqrt %14 : tensor<4x4xf32>
        %276 = math.log %21 : tensor<4x4xf32>
        %277 = math.expm1 %3 : tensor<8xf16>
        %278 = vector.multi_reduction <maxui>, %27, %27 [] : vector<4xi16> to vector<4xi16>
        %279 = math.ctpop %1 : tensor<8xi64>
        %280 = index.maxs %114, %rank_29
        %281 = arith.maxf %cst_5, %cst_2 : f16
        %282 = math.ipowi %15, %15 : tensor<8x8xi16>
        %alloc_67 = memref.alloc() : memref<8xi32>
        scf.yield %alloc_67 : memref<8xi32>
      }
      %alloc_65 = memref.alloc() : memref<8xi64>
      %274 = arith.subi %false_4, %true_28 : i1
      %cast_66 = tensor.cast %13 : tensor<8xi1> to tensor<?xi1>
      linalg.yield %in : i16
    } -> tensor<8x8x1xi16>
    %140 = memref.load %alloc[%c4] : memref<8xi1>
    %141 = math.round %collapsed : tensor<16xf32>
    %collapsed_38 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
    %142 = arith.andi %c1159318518_i64, %c172180046_i64 : i64
    %143 = vector.multi_reduction <and>, %27, %c-12258_i16 [0] : vector<4xi16> to i16
    %144 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, (d1 * 8) ceildiv 16 - (d2 - (d1 * 8) ceildiv 16), d2 * 64 + 1, d1)>(%110, %111, %c9, %101)
    %145 = math.exp %3 : tensor<8xf16>
    %146 = math.round %92 : tensor<4x4xf32>
    %147 = math.copysign %5, %5 : tensor<8xf32>
    %148 = arith.xori %true, %false_4 : i1
    %149 = arith.maxsi %c1783281111_i32, %c1783281111_i32 : i32
    %150 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19 : memref<8xi16>) outs(%expanded : tensor<8x8x1xi16>) {
    ^bb0(%in: i16, %out: i16):
      %256 = index.maxu %101, %144
      %257 = arith.remf %cst, %cst : f32
      %258 = arith.mulf %cst_6, %cst : f32
      %259 = math.round %cst_6 : f32
      %260 = arith.remsi %74, %74 : i1
      %c1647188929_i64 = arith.constant 1647188929 : i64
      %261 = arith.maxui %c1159318518_i64, %c426441360_i64 : i64
      %262 = affine.load %54[%c13] : memref<11xf16>
      %alloc_57 = memref.alloc() : memref<16xf32>
      memref.tensor_store %collapsed_38, %alloc_57 : memref<16xf32>
      %263 = affine.for %arg2 = 0 to 103 iter_args(%arg3 = %74) -> (i1) {
        affine.yield %false : i1
      }
      vector.print %28 : vector<4xi1>
      %264 = vector.broadcast %c1055516512_i32 : i32 to vector<4xi32>
      %dest_58, %accumulated_value_59 = vector.scan <maxui>, %81, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
      %c1_i64 = arith.constant 1 : i64
      %265 = vector.transfer_read %8[%rank_36, %c4], %c1_i64 : tensor<4x4xi64>, vector<i64>
      %266 = arith.shli %c1159318518_i64, %c1159318518_i64 : i64
      %267 = math.cos %cst_3 : f32
      %268 = math.round %14 : tensor<4x4xf32>
      %269 = math.exp %cst_5 : f16
      %270 = vector.multi_reduction <minf>, %133, %133 [] : vector<8xf32> to vector<8xf32>
      %271 = arith.maxui %out, %c-12258_i16 : i16
      %272 = vector.bitcast %81 : vector<4x4xi32> to vector<4x4xi32>
      %273 = arith.andi %c1783281111_i32, %c1783281111_i32 : i32
      %274 = tensor.empty() : tensor<8xf16>
      %mapped_60 = linalg.map ins(%alloc_11 : memref<8xf16>) outs(%274 : tensor<8xf16>)
        (%in_61: f16) {
          %282 = bufferization.to_tensor %alloc_23 : memref<11xf16>
          %283 = index.mul %97, %127
          %true_62 = index.bool.constant true
          %284 = arith.remui %true_62, %true_62 : i1
          %285 = arith.floordivsi %c1055516512_i32, %c1055516512_i32 : i32
          %286 = arith.remui %true, %false : i1
          %287 = math.rsqrt %cst_5 : f16
          %288 = tensor.empty(%rank_36) : tensor<4x?xi16>
          %289 = arith.remf %cst_5, %cst_5 : f16
          affine.store %cst_0, %alloc_12[%c0, %c14] : memref<8x11xf16>
          %290 = tensor.empty() : tensor<4x4xf32>
          %291 = linalg.matmul ins(%92, %92 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%290 : tensor<4x4xf32>) -> tensor<4x4xf32>
          %292 = index.ceildivs %69, %110
          %293 = memref.load %alloc_21[%c0, %c2] : memref<4x4xf16>
          %294 = math.log2 %cst_6 : f32
          %inserted_63 = tensor.insert %c1783281111_i32 into %7[%c0] : tensor<8xi32>
          %295 = arith.remui %in, %out : i16
          %296 = arith.muli %c0_i16, %in : i16
          %c0_i16_64 = arith.constant 0 : i16
          %c0_i16_65 = arith.constant 0 : i16
          %297 = vector.transfer_read %15[%c0, %rank], %c0_i16_65 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<8x8xi16>, vector<11xi16>
          %298 = math.expm1 %89 : tensor<11xf16>
          %299 = arith.maxui %c172180046_i64, %c1_i64 : i64
          %cst_66 = arith.constant 5.516800e+04 : f16
          %300 = arith.ori %c1055516512_i32, %c1783281111_i32 : i32
          %301 = arith.addf %cst_0, %cst_0 : f16
          %302 = tensor.empty(%118) : tensor<4x?xf16>
          %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %29, %67, %c0_i16_64 : vector<4xi16>, vector<4xi16> into i16
          %304 = tensor.empty() : tensor<4x4xi64>
          %305 = linalg.matmul ins(%8, %8 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%304 : tensor<4x4xi64>) -> tensor<4x4xi64>
          %alloc_67 = memref.alloc() : memref<8x8xi32>
          %306 = math.ctlz %in : i16
          %307 = arith.shli %c1887825572_i64, %c1887825572_i64 : i64
          %308 = math.log10 %92 : tensor<4x4xf32>
          %309 = arith.shrui %true, %false : i1
          %310 = math.round %62 : tensor<4x4xf16>
          %cst_68 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_68 : f16
        }
      %splat = tensor.splat %false : tensor<4x4xi1>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<8x8x1xi16>) {
      ^bb0(%out_61: i16):
        %282 = bufferization.clone %54 : memref<11xf16> to memref<11xf16>
        %283 = math.log10 %12 : tensor<4x4xf16>
        %284 = math.copysign %3, %3 : tensor<8xf16>
        %285 = math.expm1 %cst_5 : f16
        %286 = arith.maxui %false, %false : i1
        %287 = tensor.empty() : tensor<4x4xf32>
        %288 = arith.shrsi %c1_i64, %c1887825572_i64 : i64
        %289 = math.roundeven %collapsed_38 : tensor<16xf32>
        %290 = bufferization.to_memref %11 : memref<8xi32>
        %cast_62 = tensor.cast %1 : tensor<8xi64> to tensor<?xi64>
        %291 = index.casts %c5 : index to i32
        %292 = index.ceildivs %97, %97
        affine.store %in, %alloc_17[%c10, %c12] : memref<8x8xi16>
        %dest_63, %accumulated_value_64 = vector.scan <add>, %130, %133 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
        %293 = vector.load %alloc_10[%c1, %c5] : memref<8x11xi1>, vector<8x8xi1>
        %294 = math.powf %collapsed_38, %collapsed_38 : tensor<16xf32>
        %295 = arith.xori %out_61, %out_61 : i16
        memref.tensor_store %7, %290 : memref<8xi32>
        %296 = arith.shrsi %c1_i64, %c426441360_i64 : i64
        %297 = arith.shrsi %c-12258_i16, %c-12258_i16 : i16
        %298 = index.sub %c3, %c15
        %299 = vector.reduction <add>, %85 : vector<8xf32> into f32
        %alloc_65 = memref.alloc() : memref<8x11xi64>
        memref.copy %alloc_16, %alloc_65 : memref<8x11xi64> to memref<8x11xi64>
        %300 = arith.shrui %in, %c0_i16 : i16
        %301 = math.log %cst_5 : f16
        %302 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
        %303 = vector.outerproduct %135, %132, %302 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %304 = bufferization.to_memref %collapsed_38 : memref<16xf32>
        %cast_66 = tensor.cast %16 : tensor<4x4xf32> to tensor<?x?xf32>
        %305 = arith.maxui %74, %false_4 : i1
        %306 = math.round %9 : tensor<4x4xf32>
        %cst_67 = arith.constant 3.217600e+04 : f16
        %307 = vector.matrix_multiply %67, %64 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        linalg.yield %c0_i16 : i16
      } -> tensor<8x8x1xi16>
      %276 = arith.divui %true_28, %74 : i1
      %277 = bufferization.clone %alloc_9 : memref<8xi1> to memref<8xi1>
      %278 = math.log10 %9 : tensor<4x4xf32>
      %279 = arith.ori %74, %74 : i1
      %280 = arith.divui %74, %false : i1
      bufferization.dealloc_tensor %14 : tensor<4x4xf32>
      %281 = math.round %cst_1 : f32
      scf.index_switch %c14 
      case 1 {
        %282 = arith.andi %true_28, %true : i1
        %283 = vector.create_mask %c0, %c14 : vector<8x11xi1>
        %284 = math.ceil %12 : tensor<4x4xf16>
        %from_elements_61 = tensor.from_elements %cst, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %cst_1, %cst, %cst_3, %cst_1, %cst_1, %cst, %cst_1, %cst_3, %cst_6, %cst_6, %cst_3, %cst, %cst_1, %cst_3, %cst_6, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_3, %cst_6, %cst, %cst_6, %cst_6, %cst_3, %cst_1, %cst_6, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_6, %cst_1, %cst_6, %cst_6, %cst_6, %cst, %cst_6, %cst_3, %cst_1, %cst_1, %cst_6, %cst_6, %cst_3, %cst, %cst, %cst_1, %cst : tensor<8x8xf32>
        %extracted = tensor.extract %12[%c3, %c0] : tensor<4x4xf16>
        %285 = memref.load %61[%c0] : memref<11xf16>
        %286 = arith.maxsi %c1_i64, %c1_i64 : i64
        %287 = vector.flat_transpose %27 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %288 = math.powf %16, %14 : tensor<4x4xf32>
        vector.print %52 : vector<8x8xf16>
        %289 = math.ctlz %out : i16
        %290 = index.mul %c2, %256
        %291 = index.casts %c172180046_i64 : i64 to index
        memref.tensor_store %62, %alloc_21 : memref<4x4xf16>
        memref.assume_alignment %alloc_7, 1 : memref<4x4xi32>
        %292 = vector.load %277[%c7] : memref<8xi1>, vector<8x8xi1>
        scf.yield
      }
      default {
        %282 = math.cos %3 : tensor<8xf16>
        %283 = math.sqrt %cst_6 : f32
        %284 = vector.broadcast %cst : f32 to vector<8x11xf32>
        %285 = vector.fma %284, %284, %284 : vector<8x11xf32>
        affine.store %cst_0, %alloc_23[%c12] : memref<11xf16>
        %286 = affine.max affine_map<(d0, d1) -> (-d0, 4, -16, 0)>(%c11, %69)
        %287 = vector.multi_reduction <minf>, %125, %84 [] : vector<8xf32> to vector<8xf32>
        %rank_61 = tensor.rank %cast : tensor<?xi64>
        %288 = math.sqrt %5 : tensor<8xf32>
        %289 = arith.floordivsi %c426441360_i64, %c1_i64 : i64
        %from_elements_62 = tensor.from_elements %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_0, %cst_5, %cst_0, %cst_2, %cst_2, %cst_2, %262, %cst_2, %cst_0, %cst_0, %262, %cst_0, %cst_2, %cst_0, %cst_0, %cst_5, %cst_2, %cst_0, %262, %cst_0, %cst_2, %cst_5, %cst_0, %cst_2, %262, %262, %cst_5, %cst_5, %cst_2, %262, %cst_0, %262, %cst_2, %cst_5, %cst_0, %cst_0, %cst_2, %cst_5, %cst_2, %cst_2, %cst_0, %cst_5, %cst_0, %cst_5, %262, %cst_0, %cst_5, %cst_0, %cst_5, %262, %cst_5, %cst_0, %cst_2, %cst_0, %cst_5, %262, %cst_5 : tensor<8x8xf16>
        %alloc_63 = memref.alloc() : memref<8xf16>
        %290 = arith.negf %cst_0 : f16
        %291 = arith.ori %c426441360_i64, %c172180046_i64 : i64
        %cast_64 = tensor.cast %88 : tensor<8xi16> to tensor<?xi16>
        %292 = vector.transpose %28, [0] : vector<4xi1> to vector<4xi1>
        %293 = arith.shrsi %true_28, %74 : i1
      }
      linalg.yield %out : i16
    } -> tensor<8x8x1xi16>
    %151 = index.casts %c426441360_i64 : i64 to index
    %152 = arith.xori %c172180046_i64, %c1159318518_i64 : i64
    %153 = vector.broadcast %c172180046_i64 : i64 to vector<8xi64>
    %dest_39, %accumulated_value_40 = vector.scan <maxsi>, %70, %153 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11xi64>, vector<8xi64>
    %154 = arith.divsi %c1159318518_i64, %c172180046_i64 : i64
    %155 = math.exp %9 : tensor<4x4xf32>
    %rank_41 = tensor.rank %11 : tensor<8xi32>
    %156 = vector.insertelement %cst_3, %84[%c10 : index] : vector<8xf32>
    %157 = affine.load %alloc_19[%c1] : memref<8xi16>
    %158 = math.expm1 %89 : tensor<11xf16>
    %159 = vector.multi_reduction <add>, %130, %130 [] : vector<8x8xf32> to vector<8x8xf32>
    %160 = memref.load %alloc_11[%c5] : memref<8xf16>
    %161 = math.log1p %14 : tensor<4x4xf32>
    %162 = arith.maxsi %true_28, %true_28 : i1
    memref.assume_alignment %alloc_18, 4 : memref<8x8xi32>
    %163 = arith.minsi %c172180046_i64, %c1887825572_i64 : i64
    memref.alloca_scope  {
      %256 = math.ctpop %4 : tensor<8x8xi64>
      %257 = arith.shrui %c426441360_i64, %c426441360_i64 : i64
      %258 = math.atan %cst_0 : f16
      %alloc_57 = memref.alloc() : memref<4x4xf32>
      memref.tensor_store %21, %alloc_57 : memref<4x4xf32>
      %259 = vector.load %alloc_12[%c1, %c5] : memref<8x11xf16>, vector<8x11xf16>
      memref.tensor_store %13, %alloc_9 : memref<8xi1>
      %260 = math.tanh %16 : tensor<4x4xf32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19 : memref<8xi16>) outs(%expanded : tensor<8x8x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %287 = arith.xori %true, %false_4 : i1
        %extracted = tensor.extract %17[%c1, %c3] : tensor<4x4xf32>
        %288 = vector.outerproduct %133, %133, %129 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %289 = math.sqrt %cst_2 : f16
        %290 = arith.divui %c1783281111_i32, %c1783281111_i32 : i32
        %291 = vector.broadcast %c172180046_i64 : i64 to vector<11x11xi64>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %70, %70, %291 : vector<8x11xi64>, vector<8x11xi64> into vector<11x11xi64>
        vector.print %52 : vector<8x8xf16>
        %293 = tensor.empty() : tensor<4x4xf32>
        %294 = linalg.matmul ins(%16, %14 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%293 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %c203525674_i32 = arith.constant 203525674 : i32
        %295 = vector.broadcast %cst_6 : f32 to vector<8xf32>
        %296 = vector.fma %295, %84, %133 : vector<8xf32>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %259, %18 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11xf16>, vector<11xf16>
        %297 = math.log2 %9 : tensor<4x4xf32>
        %collapsed_60 = tensor.collapse_shape %8 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
        %298 = math.log10 %cst_1 : f32
        %cast_61 = tensor.cast %1 : tensor<8xi64> to tensor<?xi64>
        %299 = index.divs %rank_41, %151
        %300 = arith.xori %c1887825572_i64, %c172180046_i64 : i64
        %301 = math.exp %12 : tensor<4x4xf16>
        %302 = affine.load %alloc_24[%c15] : memref<8xi64>
        %c-13987_i16 = arith.constant -13987 : i16
        %303 = index.add %c6, %c13
        %304 = affine.max affine_map<(d0, d1, d2) -> ((d2 + d0) mod 8)>(%111, %96, %c14)
        %305 = arith.shrui %74, %false : i1
        %306 = math.log10 %12 : tensor<4x4xf16>
        vector.print %129 : vector<8x8xf32>
        %307 = arith.addf %cst_6, %cst_3 : f32
        %308 = math.ctpop %false_4 : i1
        %309 = bufferization.to_tensor %alloc_23 : memref<11xf16>
        %310 = index.ceildivs %144, %c15
        %311 = vector.splat %c6 : vector<8xindex>
        %312 = vector.broadcast %extracted : f32 to vector<1x1xf32>
        %313 = vector.outerproduct %132, %132, %312 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %314 = arith.divui %c1783281111_i32, %c1783281111_i32 : i32
        linalg.yield %c-12258_i16 : i16
      } -> tensor<8x8x1xi16>
      %262 = vector.insertelement %cst, %132[%114 : index] : vector<1xf32>
      %c-27687_i16 = arith.constant -27687 : i16
      %263 = math.floor %cst_2 : f16
      %264 = math.expm1 %89 : tensor<11xf16>
      %265 = vector.bitcast %72 : vector<4xi16> to vector<4xi16>
      %266 = tensor.empty() : tensor<8x11xi32>
      %267 = vector.broadcast %c1783281111_i32 : i32 to vector<8x11xi32>
      %268 = vector.broadcast %true_28 : i1 to vector<8x11xi1>
      %269 = vector.gather %266[%c7, %c11] [%267], %268, %267 : tensor<8x11xi32>, vector<8x11xi32>, vector<8x11xi1>, vector<8x11xi32> into vector<8x11xi32>
      %270 = memref.alloca_scope  -> (f16) {
        %cast_58 = tensor.cast %21 : tensor<4x4xf32> to tensor<?x?xf32>
        %287 = math.sqrt %3 : tensor<8xf16>
        %288 = bufferization.clone %alloc_8 : memref<8xi1> to memref<8xi1>
        %289 = math.exp %cst_1 : f32
        %290 = affine.max affine_map<(d0) -> (-d0 - (d0 + 1) + -d0 - (d0 + 1) + 3 + 4)>(%rank_36)
        %291 = math.expm1 %12 : tensor<4x4xf16>
        %292 = arith.addf %cst_5, %cst_0 : f16
        %alloc_59 = memref.alloc() : memref<8xf32>
        memref.tensor_store %5, %alloc_59 : memref<8xf32>
        %293 = math.log10 %14 : tensor<4x4xf32>
        %294 = math.rsqrt %30 : tensor<4x4xf16>
        %295 = math.ctpop %15 : tensor<8x8xi16>
        %extracted = tensor.extract %6[%c2, %c2] : tensor<8x8xi64>
        %inserted_60 = tensor.insert %c1159318518_i64 into %1[%c6] : tensor<8xi64>
        %296 = math.absf %cst : f32
        %297 = arith.ori %false_4, %false : i1
        %298 = index.mul %290, %c11
        %299 = arith.andi %c1159318518_i64, %c172180046_i64 : i64
        %alloc_61 = memref.alloc() : memref<8xi16>
        %300 = tensor.empty() : tensor<8x8xi1>
        %301 = linalg.matmul ins(%10, %10 : tensor<8x8xi1>, tensor<8x8xi1>) outs(%300 : tensor<8x8xi1>) -> tensor<8x8xi1>
        %302 = math.tan %5 : tensor<8xf32>
        %extracted_62 = tensor.extract %1[%c7] : tensor<8xi64>
        %303 = arith.minsi %c-12258_i16, %c-12258_i16 : i16
        %304 = vector.reduction <xor>, %29 : vector<4xi16> into i16
        %305 = index.sizeof
        %306 = index.maxu %rank_35, %114
        %307 = arith.maxf %cst_6, %cst_6 : f32
        %308 = math.ctlz %13 : tensor<8xi1>
        %309 = index.ceildivs %118, %c4
        %310 = bufferization.clone %61 : memref<11xf16> to memref<11xf16>
        %311 = math.fpowi %5, %11 : tensor<8xf32>, tensor<8xi32>
        %312 = memref.load %alloc_15[%c0, %c10] : memref<8x11xi1>
        %313 = math.expm1 %12 : tensor<4x4xf16>
        memref.alloca_scope.return %cst_5 : f16
      }
      memref.alloca_scope  {
        %287 = vector.broadcast %c1783281111_i32 : i32 to vector<11x11xi32>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %269, %269, %287 : vector<8x11xi32>, vector<8x11xi32> into vector<11x11xi32>
        %289 = math.log2 %126 : tensor<8x8xf32>
        %290 = arith.maxui %c426441360_i64, %c426441360_i64 : i64
        %c1291639251_i64 = arith.constant 1291639251 : i64
        %291 = arith.maxf %cst_1, %cst_3 : f32
        %292 = affine.load %80[%c7] : memref<8xf16>
        %c495825701_i32 = arith.constant 495825701 : i32
        %293 = bufferization.to_tensor %54 : memref<11xf16>
        %294 = math.expm1 %collapsed_38 : tensor<16xf32>
        %295 = vector.insert %cst_1, %135 [0] : f32 into vector<1xf32>
        %296 = tensor.empty(%101) : tensor<4x?xi32>
        %297 = tensor.empty() : tensor<8x8xf32>
        %298 = linalg.matmul ins(%126, %126 : tensor<8x8xf32>, tensor<8x8xf32>) outs(%297 : tensor<8x8xf32>) -> tensor<8x8xf32>
        %299 = arith.negf %cst : f32
        %300 = math.cos %89 : tensor<11xf16>
        %301 = index.sizeof
        %302 = memref.realloc %80 : memref<8xf16> to memref<11xf16>
        %303 = arith.remsi %c1887825572_i64, %c1159318518_i64 : i64
        %304 = index.divs %rank_32, %301
        %305 = index.maxs %c15, %c2
        %306 = vector.bitcast %133 : vector<8xf32> to vector<8xf32>
        %307 = vector.load %alloc_10[%c6, %c3] : memref<8x11xi1>, vector<8xi1>
        %308 = arith.addf %292, %cst_0 : f16
        %309 = index.maxu %96, %151
        %310 = math.ceil %92 : tensor<4x4xf32>
        %311 = arith.shrsi %c1887825572_i64, %c1159318518_i64 : i64
        %312 = arith.shli %157, %143 : i16
        %313 = vector.insertelement %cst_6, %132[%c10 : index] : vector<1xf32>
        %314 = math.log10 %89 : tensor<11xf16>
        %315 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %64, %27, %143 : vector<4xi16>, vector<4xi16> into i16
        %cast_58 = tensor.cast %2 : tensor<8xi1> to tensor<?xi1>
        %316 = index.divs %95, %c11
        %rank_59 = tensor.rank %21 : tensor<4x4xf32>
      }
      %271 = tensor.empty() : tensor<8xi64>
      %272 = arith.addf %270, %cst_5 : f16
      %273 = math.atan %cst_2 : f16
      %274 = math.roundeven %5 : tensor<8xf32>
      %275 = index.mul %rank_34, %c2
      %276 = math.ceil %9 : tensor<4x4xf32>
      %277 = math.ceil %12 : tensor<4x4xf16>
      %278 = arith.ori %false_4, %true_28 : i1
      %279 = math.rsqrt %89 : tensor<11xf16>
      %280 = arith.remui %true, %true : i1
      %281 = math.exp %cst_5 : f16
      %282 = vector.broadcast %true : i1 to vector<4x4xi1>
      %283 = vector.outerproduct %28, %28, %282 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
      %284 = memref.alloca_scope  -> (memref<4x4xi16>) {
        %287 = memref.load %alloc_17[%c3, %c6] : memref<8x8xi16>
        %288 = vector.maskedload %alloc_8[%c7], %28, %28 : memref<8xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %from_elements_58 = tensor.from_elements %c1783281111_i32, %c1055516512_i32, %c1783281111_i32, %c1055516512_i32, %c1055516512_i32, %c1055516512_i32, %c1783281111_i32, %c1055516512_i32 : tensor<8xi32>
        %289 = memref.realloc %54 : memref<11xf16> to memref<8xf16>
        %290 = vector.insert %false, %28 [1] : i1 into vector<4xi1>
        %291 = vector.broadcast %c1783281111_i32 : i32 to vector<i32>
        %292 = vector.transfer_write %291, %7[%144] : vector<i32>, tensor<8xi32>
        %from_elements_59 = tensor.from_elements %cst_6, %cst_6, %cst_1, %cst, %cst, %cst_1, %cst_3, %cst, %cst, %cst_3, %cst, %cst_1, %cst_3, %cst, %cst_6, %cst_6, %cst_3, %cst_6, %cst, %cst, %cst, %cst_6, %cst, %cst, %cst_3, %cst_6, %cst, %cst_3, %cst_6, %cst_3, %cst_1, %cst_1, %cst, %cst_3, %cst, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_6, %cst_6, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_6, %cst, %cst_6, %cst_1, %cst_6, %cst_6, %cst_6, %cst_1, %cst_6, %cst_3, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_6, %cst_3, %cst_6, %cst_6, %cst_3, %cst_3, %cst_6, %cst_6, %cst_6, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_6, %cst_3, %cst_1, %cst_1, %cst_6 : tensor<8x11xf32>
        %293 = math.log %12 : tensor<4x4xf16>
        %294 = arith.ori %true_28, %true_28 : i1
        %295 = math.tanh %collapsed_38 : tensor<16xf32>
        %extracted = tensor.extract %15[%c0, %c5] : tensor<8x8xi16>
        %rank_60 = tensor.rank %1 : tensor<8xi64>
        %296 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %297 = index.sizeof
        memref.assume_alignment %54, 4 : memref<11xf16>
        %298 = vector.bitcast %268 : vector<8x11xi1> to vector<8x11xi1>
        %299 = arith.shrsi %c0_i16, %143 : i16
        %300 = vector.load %alloc_23[%c2] : memref<11xf16>, vector<8xf16>
        %301 = math.round %collapsed : tensor<16xf32>
        %302 = math.log2 %14 : tensor<4x4xf32>
        %303 = arith.shrsi %c172180046_i64, %c172180046_i64 : i64
        %304 = arith.maxsi %157, %143 : i16
        %305 = arith.andi %c1159318518_i64, %c1887825572_i64 : i64
        %306 = math.exp %126 : tensor<8x8xf32>
        %307 = tensor.empty() : tensor<11x4xi32>
        %308 = tensor.empty() : tensor<8x4xi32>
        %309 = linalg.matmul ins(%266, %307 : tensor<8x11xi32>, tensor<11x4xi32>) outs(%308 : tensor<8x4xi32>) -> tensor<8x4xi32>
        %310 = vector.reduction <add>, %300 : vector<8xf16> into f16
        %311 = memref.realloc %alloc_24 : memref<8xi64> to memref<11xi64>
        %312 = vector.broadcast %false : i1 to vector<i1>
        vector.transfer_write %312, %alloc[%c8] : vector<i1>, memref<8xi1>
        %313 = vector.broadcast %275 : index to vector<4xindex>
        vector.scatter %alloc_9[%c0] [%313], %28, %288 : memref<8xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %314 = math.absf %62 : tensor<4x4xf16>
        %extracted_61 = tensor.extract %9[%c1, %c1] : tensor<4x4xf32>
        %cast_62 = tensor.cast %2 : tensor<8xi1> to tensor<?xi1>
        %alloc_63 = memref.alloc() : memref<4x4xi16>
        memref.alloca_scope.return %alloc_63 : memref<4x4xi16>
      }
      memref.tensor_store %88, %alloc_14 : memref<8xi16>
      %285 = arith.shrui %c426441360_i64, %c1887825572_i64 : i64
      %286 = arith.remsi %c1159318518_i64, %c172180046_i64 : i64
    }
    %alloc_42 = memref.alloc() : memref<8xi32>
    memref.tensor_store %11, %alloc_42 : memref<8xi32>
    %164 = vector.splat %false : vector<8x11xi1>
    %165 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %129, %133, %125 : vector<8x8xf32>, vector<8xf32> into vector<8xf32>
    %166 = vector.extract %135[0] : vector<1xf32>
    %167 = vector.insertelement %cst_3, %135[%c12 : index] : vector<1xf32>
    %168 = vector.reduction <add>, %84 : vector<8xf32> into f32
    %generated_43 = tensor.generate %c0 {
    ^bb0(%arg2: index, %arg3: index):
      %256 = scf.execute_region -> i32 {
        %260 = vector.flat_transpose %84 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %261 = math.ceil %5 : tensor<8xf32>
        %262 = vector.broadcast %cst_2 : f16 to vector<8xf16>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %52, %262 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xf16>, vector<8xf16>
        %263 = math.sqrt %126 : tensor<8x8xf32>
        %264 = arith.remf %cst_6, %cst : f32
        %265 = math.copysign %3, %3 : tensor<8xf16>
        %266 = bufferization.to_tensor %54 : memref<11xf16>
        %267 = arith.andi %c1055516512_i32, %c1783281111_i32 : i32
        %inserted_59 = tensor.insert %c1887825572_i64 into %19[] : tensor<i64>
        memref.assume_alignment %alloc_24, 2 : memref<8xi64>
        %268 = arith.cmpi sle, %c1887825572_i64, %c426441360_i64 : i64
        %269 = arith.minf %cst_3, %cst : f32
        %270 = vector.insertelement %cst_3, %132[%c11 : index] : vector<1xf32>
        %271 = arith.cmpi uge, %true, %false : i1
        %272 = vector.reduction <mul>, %72 : vector<4xi16> into i16
        %273 = memref.load %alloc_7[%c1, %c0] : memref<4x4xi32>
        scf.yield %c1783281111_i32 : i32
      }
      %257 = vector.insert %c-12258_i16, %67 [3] : i16 into vector<4xi16>
      %258 = arith.xori %c1159318518_i64, %c426441360_i64 : i64
      %259 = math.ctpop %117 : tensor<8xi1>
      tensor.yield %cst_6 : f32
    } : tensor<?x8xf32>
    %169 = math.cos %5 : tensor<8xf32>
    %170 = vector.broadcast %cst_6 : f32 to vector<8x11xf32>
    %171 = vector.broadcast %true : i1 to vector<8x11xi1>
    %172 = vector.broadcast %c1055516512_i32 : i32 to vector<8x11xi32>
    %173 = vector.gather %alloc_13[%c2, %rank_35] [%172], %171, %170 : memref<8x8xf32>, vector<8x11xi32>, vector<8x11xi1>, vector<8x11xf32> into vector<8x11xf32>
    %174 = arith.andi %c1783281111_i32, %c1055516512_i32 : i32
    %false_44 = arith.constant false
    %175 = scf.index_switch %c8 -> memref<8x8xi64> 
    case 1 {
      %256 = index.ceildivs %c4, %rank_29
      %257 = math.absf %92 : tensor<4x4xf32>
      %258 = vector.broadcast %cst_6 : f32 to vector<8xf32>
      %259 = vector.fma %258, %84, %125 : vector<8xf32>
      %260 = tensor.empty() : tensor<8x8xi16>
      %mapped_57 = linalg.map ins(%15, %108 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%260 : tensor<8x8xi16>)
        (%in: i16, %in_60: i16) {
          %273 = arith.maxui %true_28, %false : i1
          %274 = math.cos %12 : tensor<4x4xf16>
          %275 = math.rsqrt %30 : tensor<4x4xf16>
          vector.print %173 : vector<8x11xf32>
          %276 = tensor.empty() : tensor<4x4xf32>
          %277 = linalg.matmul ins(%14, %92 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%276 : tensor<4x4xf32>) -> tensor<4x4xf32>
          %278 = vector.insertelement %cst_6, %84[%rank_34 : index] : vector<8xf32>
          %279 = affine.load %alloc_15[%c7, %c10] : memref<8x11xi1>
          %280 = arith.divui %279, %true_28 : i1
          %281 = math.expm1 %collapsed_38 : tensor<16xf32>
          %282 = math.cos %30 : tensor<4x4xf16>
          %283 = arith.remsi %c1055516512_i32, %c1783281111_i32 : i32
          %284 = vector.transpose %70, [0, 1] : vector<8x11xi64> to vector<8x11xi64>
          %rank_61 = tensor.rank %generated_43 : tensor<?x8xf32>
          %285 = memref.load %alloc_9[%c5] : memref<8xi1>
          %286 = arith.remsi %c426441360_i64, %c426441360_i64 : i64
          %287 = math.ctpop %157 : i16
          affine.store %cst_5, %61[%c2] : memref<11xf16>
          %288 = math.atan %89 : tensor<11xf16>
          %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %133, %125, %cst_6 : vector<8xf32>, vector<8xf32> into f32
          bufferization.dealloc_tensor %88 : tensor<8xi16>
          %290 = arith.xori %true_28, %false : i1
          %291 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 - d2) floordiv 64 - (d0 - d2), d0 + 16, d2 mod 4, d2)>(%rank_34, %c3, %118, %c11)
          %292 = vector.insert %c-12258_i16, %67 [3] : i16 into vector<4xi16>
          %293 = math.cos %17 : tensor<4x4xf32>
          %294 = vector.broadcast %c1783281111_i32 : i32 to vector<4xi32>
          %dest_62, %accumulated_value_63 = vector.scan <minui>, %81, %294 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
          %295 = index.sub %c10, %c13
          %cast_64 = tensor.cast %12 : tensor<4x4xf16> to tensor<?x?xf16>
          %296 = memref.load %alloc[%c3] : memref<8xi1>
          %297 = arith.remui %c0_i16, %157 : i16
          memref.store %279, %alloc_22[%c1] : memref<8xi1>
          %298 = math.cos %89 : tensor<11xf16>
          %299 = math.fma %89, %89, %89 : tensor<11xf16>
          %c0_i16_65 = arith.constant 0 : i16
          linalg.yield %c0_i16_65 : i16
        }
      %261 = tensor.empty() : tensor<11xi32>
      %262 = math.fpowi %89, %261 : tensor<11xf16>, tensor<11xi32>
      %263 = vector.extract_strided_slice %171 {offsets = [3], sizes = [1], strides = [1]} : vector<8x11xi1> to vector<1x11xi1>
      %from_elements_58 = tensor.from_elements %c1887825572_i64, %c1159318518_i64, %c172180046_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c1159318518_i64, %c1887825572_i64, %c1887825572_i64, %c426441360_i64, %c426441360_i64, %c426441360_i64, %c172180046_i64, %c172180046_i64, %c1887825572_i64, %c1159318518_i64 : tensor<4x4xi64>
      %264 = arith.minf %cst_6, %cst_6 : f32
      %265 = vector.insert %c0_i16, %27 [2] : i16 into vector<4xi16>
      %266 = scf.if %false_4 -> (memref<8x8xi64>) {
        %273 = math.log10 %cst_2 : f16
        %274 = index.sub %c7, %c3
        %275 = index.floordivs %127, %c5
        memref.copy %alloc, %alloc_22 : memref<8xi1> to memref<8xi1>
        %inserted_60 = tensor.insert %c-12258_i16 into %108[%c2, %c4] : tensor<8x8xi16>
        %276 = vector.insertelement %cst_6, %125[%c10 : index] : vector<8xf32>
        %277 = math.ceil %cst_0 : f16
        %278 = bufferization.to_tensor %alloc_15 : memref<8x11xi1>
        %alloc_61 = memref.alloc() : memref<8x8xi64>
        scf.yield %alloc_61 : memref<8x8xi64>
      } else {
        memref.store %cst_0, %80[%c5] : memref<8xf16>
        %273 = math.log %16 : tensor<4x4xf32>
        %274 = arith.addf %cst_2, %cst_0 : f16
        %275 = arith.shli %c-12258_i16, %c-12258_i16 : i16
        %276 = vector.reduction <minui>, %29 : vector<4xi16> into i16
        %277 = vector.reduction <maxf>, %85 : vector<8xf32> into f32
        %extracted = tensor.extract %3[%c1] : tensor<8xf16>
        %278 = arith.subi %74, %true : i1
        %alloc_60 = memref.alloc() : memref<8x8xi64>
        scf.yield %alloc_60 : memref<8x8xi64>
      }
      %267 = math.rsqrt %3 : tensor<8xf16>
      %collapsed_59 = tensor.collapse_shape %108 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
      %268 = vector.reduction <xor>, %72 : vector<4xi16> into i16
      %269 = vector.broadcast %157 : i16 to vector<4x4xi16>
      %270 = vector.outerproduct %29, %64, %269 {kind = #vector.kind<and>} : vector<4xi16>, vector<4xi16>
      %271 = vector.bitcast %85 : vector<8xf32> to vector<8xf32>
      %272 = bufferization.to_memref %0 : memref<8xi64>
      scf.yield %266 : memref<8x8xi64>
    }
    case 2 {
      %256 = affine.max affine_map<(d0, d1) -> (0, (d0 floordiv 32) floordiv 4 - (d0 floordiv 32) * 2, (d0 floordiv 32) floordiv 4 - (d0 floordiv 32) * 2, d0)>(%rank_34, %rank_34)
      %257 = arith.ori %c1159318518_i64, %c172180046_i64 : i64
      %258 = scf.if %true_28 -> (memref<8xi32>) {
        %269 = index.sizeof
        %270 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
        %271 = vector.broadcast %true_28 : i1 to vector<4x4xi1>
        %272 = vector.gather %alloc_11[%c15] [%81], %271, %270 : memref<8xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
        %273 = tensor.empty() : tensor<4x4xf32>
        %274 = linalg.matmul ins(%14, %9 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%273 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %275 = tensor.empty() : tensor<4x4xf32>
        %276 = linalg.matmul ins(%21, %92 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%275 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %277 = math.round %3 : tensor<8xf16>
        %278 = bufferization.to_tensor %alloc_23 : memref<11xf16>
        %collapsed_61 = tensor.collapse_shape %generated_43 [[0, 1]] : tensor<?x8xf32> into tensor<?xf32>
        %279 = arith.remsi %c1887825572_i64, %c1887825572_i64 : i64
        %alloc_62 = memref.alloc() : memref<8xi32>
        scf.yield %alloc_62 : memref<8xi32>
      } else {
        %269 = arith.remsi %74, %74 : i1
        %270 = math.log1p %12 : tensor<4x4xf16>
        %271 = vector.broadcast %cst_5 : f16 to vector<11x11xf16>
        %272 = vector.outerproduct %18, %18, %271 {kind = #vector.kind<maxf>} : vector<11xf16>, vector<11xf16>
        %273 = arith.remui %c1887825572_i64, %c172180046_i64 : i64
        %274 = index.add %118, %112
        %275 = arith.remsi %143, %c0_i16 : i16
        %276 = math.expm1 %9 : tensor<4x4xf32>
        %277 = math.log10 %5 : tensor<8xf32>
        %alloc_61 = memref.alloc() : memref<8xi32>
        scf.yield %alloc_61 : memref<8xi32>
      }
      %259 = math.ipowi %false_4, %false : i1
      %generated_57 = tensor.generate %c10 {
      ^bb0(%arg2: index):
        %269 = math.log %cst_0 : f16
        %270 = affine.max affine_map<(d0) -> (d0 ceildiv 32, 0)>(%110)
        %271 = arith.xori %c0_i16, %c0_i16 : i16
        %272 = arith.cmpi uge, %true, %false : i1
        tensor.yield %c172180046_i64 : i64
      } : tensor<?xi64>
      %260 = math.tanh %9 : tensor<4x4xf32>
      %261 = vector.outerproduct %133, %133, %130 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
      %262 = math.rsqrt %89 : tensor<11xf16>
      %263 = vector.broadcast %false_4 : i1 to vector<11xi1>
      %dest_58, %accumulated_value_59 = vector.scan <add>, %171, %263 {inclusive = false, reduction_dim = 0 : i64} : vector<8x11xi1>, vector<11xi1>
      memref.store %c1055516512_i32, %alloc_7[%c0, %c2] : memref<4x4xi32>
      %264 = index.divs %112, %127
      %265 = bufferization.to_tensor %alloc_16 : memref<8x11xi64>
      %266 = memref.alloca_scope  -> (memref<4x4xf32>) {
        %alloc_61 = memref.alloc() : memref<8x8xi16>
        %c1186660040_i64 = arith.constant 1186660040 : i64
        %269 = index.mul %127, %c6
        %alloc_62 = memref.alloc() : memref<8x8xi16>
        %270 = affine.min affine_map<(d0, d1) -> ((d1 + d0 - 128 + d0 + d0 mod 128) ceildiv 2 + 16, (d1 + d0 - 128 + d0 + d0 mod 128) ceildiv 2)>(%69, %c14)
        %271 = math.log1p %cst_1 : f32
        %272 = vector.insert %c-12258_i16, %64 [0] : i16 into vector<4xi16>
        %273 = math.ctlz %1 : tensor<8xi64>
        %274 = math.ipowi %expanded, %expanded : tensor<8x8x1xi16>
        %275 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %276 = vector.multi_reduction <minf>, %173, %275 [0] : vector<8x11xf32> to vector<11xf32>
        memref.assume_alignment %alloc_8, 4 : memref<8xi1>
        %277 = math.log10 %cst_2 : f16
        %278 = arith.remui %false, %true_28 : i1
        %279 = math.log1p %cst_3 : f32
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %173, %133, %275 : vector<8x11xf32>, vector<8xf32> into vector<11xf32>
        %collapsed_63 = tensor.collapse_shape %4 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
        %281 = math.ctpop %10 : tensor<8x8xi1>
        %282 = affine.max affine_map<(d0, d1) -> (d0 * -8, d0 * -8)>(%c3, %127)
        %283 = arith.remsi %157, %c-12258_i16 : i16
        %284 = index.divs %114, %264
        %285 = arith.mulf %cst_3, %cst_6 : f32
        %286 = arith.xori %c1055516512_i32, %c1783281111_i32 : i32
        %287 = arith.minsi %false, %false : i1
        %288 = math.floor %5 : tensor<8xf32>
        %289 = arith.remf %cst_2, %cst_5 : f16
        %290 = arith.shrsi %c-12258_i16, %157 : i16
        %291 = math.expm1 %14 : tensor<4x4xf32>
        %292 = math.absf %92 : tensor<4x4xf32>
        %alloca = memref.alloca() : memref<4x4xi1>
        %293 = math.ceil %14 : tensor<4x4xf32>
        %294 = bufferization.to_tensor %alloc_13 : memref<8x8xf32>
        %295 = arith.remsi %c1159318518_i64, %c426441360_i64 : i64
        %alloc_64 = memref.alloc() : memref<4x4xf32>
        memref.alloca_scope.return %alloc_64 : memref<4x4xf32>
      }
      %267 = arith.minf %cst_0, %cst_0 : f16
      %268 = bufferization.to_tensor %alloc_19 : memref<8xi16>
      %splat = tensor.splat %74 : tensor<8xi1>
      %alloc_60 = memref.alloc() : memref<8x8xi64>
      scf.yield %alloc_60 : memref<8x8xi64>
    }
    default {
      %256 = vector.broadcast %cst_6 : f32 to vector<1x1xf32>
      %257 = vector.outerproduct %135, %135, %256 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
      %258 = vector.multi_reduction <mul>, %132, %cst_1 [0] : vector<1xf32> to f32
      %259 = math.cttz %8 : tensor<4x4xi64>
      %cast_57 = tensor.cast %108 : tensor<8x8xi16> to tensor<?x?xi16>
      %260 = arith.remui %false, %false_4 : i1
      affine.store %true, %alloc_15[%c15, %c11] : memref<8x11xi1>
      %261 = arith.addi %143, %143 : i16
      %262 = vector.splat %cst_5 : vector<8xf16>
      %263 = memref.load %alloc_17[%c3, %c3] : memref<8x8xi16>
      %264 = arith.remsi %143, %157 : i16
      %265 = vector.reduction <minf>, %132 : vector<1xf32> into f32
      %alloc_58 = memref.alloc() : memref<8xf32>
      %266 = math.log2 %collapsed_38 : tensor<16xf32>
      %267 = vector.splat %c4 : vector<4x4xindex>
      %268 = memref.load %alloc_24[%c3] : memref<8xi64>
      %from_elements_59 = tensor.from_elements %c1159318518_i64, %c426441360_i64, %c172180046_i64, %c172180046_i64, %c1159318518_i64, %c426441360_i64, %c1159318518_i64, %c172180046_i64, %c426441360_i64, %c426441360_i64, %c172180046_i64, %c1887825572_i64, %c1159318518_i64, %c426441360_i64, %c1159318518_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c1159318518_i64, %c426441360_i64, %c1159318518_i64, %c172180046_i64, %c1887825572_i64, %c1159318518_i64, %c1887825572_i64, %c172180046_i64, %c172180046_i64, %c1159318518_i64, %c1887825572_i64, %c172180046_i64, %c1159318518_i64, %c1159318518_i64, %c172180046_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c426441360_i64, %c1887825572_i64, %c172180046_i64, %c426441360_i64, %c426441360_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c426441360_i64, %c1887825572_i64, %c1159318518_i64, %c172180046_i64, %c1159318518_i64, %c1887825572_i64, %c1887825572_i64, %c426441360_i64, %c426441360_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c1159318518_i64, %c1159318518_i64, %c172180046_i64, %c1159318518_i64, %c172180046_i64, %c172180046_i64, %c172180046_i64, %c1887825572_i64 : tensor<8x8xi64>
      %alloc_60 = memref.alloc() : memref<8x8xi64>
      scf.yield %alloc_60 : memref<8x8xi64>
    }
    %176 = affine.for %arg2 = 0 to 116 iter_args(%arg3 = %172) -> (vector<8x11xi32>) {
      affine.yield %172 : vector<8x11xi32>
    }
    %177 = arith.minf %cst_5, %cst_0 : f16
    %178 = index.sizeof
    %179 = math.ctlz %108 : tensor<8x8xi16>
    %180 = math.atan %14 : tensor<4x4xf32>
    %181 = index.ceildivs %151, %rank_35
    %182 = vector.broadcast %cst_1 : f32 to vector<11x8xf32>
    %183 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %173, %129, %182 : vector<8x11xf32>, vector<8x8xf32> into vector<11x8xf32>
    %184 = math.ceil %16 : tensor<4x4xf32>
    %rank_45 = tensor.rank %88 : tensor<8xi16>
    %185 = math.ceil %12 : tensor<4x4xf16>
    %186 = vector.broadcast %cst_5 : f16 to vector<4xf16>
    %187 = vector.maskedload %alloc_20[%c7, %c4], %28, %186 : memref<8x8xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %alloc_46 = memref.alloc() : memref<8x8xf16>
    %rank_47 = tensor.rank %4 : tensor<8x8xi64>
    %188 = tensor.empty() : tensor<8xi32>
    %mapped_48 = linalg.map ins(%11 : tensor<8xi32>) outs(%188 : tensor<8xi32>)
      (%in: i32) {
        %256 = math.powf %3, %3 : tensor<8xf16>
        %257 = index.add %124, %181
        %c1_i16 = arith.constant 1 : i16
        %c0_i16_57 = arith.constant 0 : i16
        %258 = vector.transfer_read %58[%144], %c0_i16_57 : memref<8xi16>, vector<i16>
        %259 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %dest_58, %accumulated_value_59 = vector.scan <minf>, %173, %259 {inclusive = true, reduction_dim = 0 : i64} : vector<8x11xf32>, vector<11xf32>
        %260 = tensor.empty() : tensor<4x4xf32>
        %261 = linalg.matmul ins(%14, %9 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%260 : tensor<4x4xf32>) -> tensor<4x4xf32>
        %262 = index.ceildivs %c3, %c2
        %263 = arith.minf %cst_5, %cst_0 : f16
        memref.assume_alignment %alloc_12, 16 : memref<8x11xf16>
        %264 = math.cos %cst_1 : f32
        %true_60 = arith.constant true
        %rank_61 = tensor.rank %188 : tensor<8xi32>
        %265 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
        %266 = vector.broadcast %true : i1 to vector<4x4xi1>
        %267 = vector.gather %62[%178, %c9] [%81], %266, %265 : tensor<4x4xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
        %268 = tensor.empty() : tensor<4x4xi32>
        %269 = vector.broadcast %c1055516512_i32 : i32 to vector<8x8xi32>
        %270 = vector.broadcast %true_28 : i1 to vector<8x8xi1>
        %271 = vector.gather %268[%rank_47, %96] [%269], %270, %269 : tensor<4x4xi32>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi32> into vector<8x8xi32>
        %collapsed_62 = tensor.collapse_shape %21 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
        %272 = bufferization.to_memref %5 : memref<8xf32>
        %273 = tensor.empty() : tensor<8x8xi1>
        %274 = linalg.matmul ins(%10, %10 : tensor<8x8xi1>, tensor<8x8xi1>) outs(%273 : tensor<8x8xi1>) -> tensor<8x8xi1>
        %275 = math.cttz %273 : tensor<8x8xi1>
        %276 = math.round %cst_2 : f16
        %277 = index.divs %111, %181
        %278 = index.maxu %c10, %rank_35
        %279 = index.maxu %rank_45, %278
        %280 = math.round %89 : tensor<11xf16>
        %281 = arith.divui %c1887825572_i64, %c1887825572_i64 : i64
        %282 = vector.load %alloc_16[%c2, %c6] : memref<8x11xi64>, vector<8x8xi64>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d1 * 128 + (-d1) ceildiv 16, d1 * 2, d2)>(%144, %rank_45, %rank)
        %284 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
        %285 = vector.outerproduct %135, %135, %284 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %286 = bufferization.to_tensor %alloc_19 : memref<8xi16>
        %287 = index.add %rank_45, %283
        %288 = math.ctpop %false_4 : i1
        %289 = vector.splat %262 : vector<8xindex>
        %290 = math.ctpop %c1_i16 : i16
        %291 = arith.maxui %74, %false_4 : i1
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %189 = math.round %21 : tensor<4x4xf32>
    %inserted = tensor.insert %false_4 into %13[%c0] : tensor<8xi1>
    %190 = arith.xori %c1055516512_i32, %c1783281111_i32 : i32
    %191 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %186, %186, %cst_5 : vector<4xf16>, vector<4xf16> into f16
    %192 = math.expm1 %9 : tensor<4x4xf32>
    %193 = index.maxu %c12, %96
    %194 = arith.maxsi %false_4, %false_4 : i1
    %true_49 = index.bool.constant true
    %195 = memref.realloc %alloc_8 : memref<8xi1> to memref<4xi1>
    %196 = vector.reduction <minf>, %84 : vector<8xf32> into f32
    %197 = arith.shli %c172180046_i64, %c1887825572_i64 : i64
    %198 = index.add %rank_41, %181
    %199 = index.casts %c1 : index to i32
    %200 = arith.shrsi %false, %74 : i1
    %from_elements = tensor.from_elements %cst_2, %cst_2, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_5, %cst_5, %cst_2, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_0, %cst_5, %cst_0, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_0, %cst_0, %cst_0, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2 : tensor<8x8xf16>
    %201 = vector.insert %cst_6, %125 [2] : f32 into vector<8xf32>
    %202 = arith.andi %c0_i16, %143 : i16
    %203 = vector.insertelement %cst_0, %18[%rank_32 : index] : vector<11xf16>
    %204 = math.powf %12, %62 : tensor<4x4xf16>
    %dest_50, %accumulated_value_51 = vector.scan <add>, %130, %125 {inclusive = false, reduction_dim = 1 : i64} : vector<8x8xf32>, vector<8xf32>
    %205 = affine.min affine_map<(d0, d1, d2) -> (d1 + d2 mod 4 + d2 mod 4, d2 mod 4)>(%c11, %c6, %c6)
    %206 = arith.minsi %true, %74 : i1
    %207 = math.ctlz %19 : tensor<i64>
    %208 = affine.load %alloc_8[%c7] : memref<8xi1>
    %209 = math.copysign %16, %92 : tensor<4x4xf32>
    %210 = vector.bitcast %125 : vector<8xf32> to vector<8xf32>
    %211 = math.copysign %3, %3 : tensor<8xf16>
    %212 = bufferization.to_tensor %alloc_12 : memref<8x11xf16>
    %213 = tensor.empty() : tensor<4x4xf16>
    %214 = linalg.matmul ins(%62, %30 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%213 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %215 = math.atan %from_elements : tensor<8x8xf16>
    %216 = arith.addf %cst_6, %cst : f32
    %217 = arith.ori %74, %true_28 : i1
    %218 = vector.multi_reduction <maxf>, %135, %135 [] : vector<1xf32> to vector<1xf32>
    %219 = math.atan %9 : tensor<4x4xf32>
    %220 = index.sub %rank_35, %c0
    %221 = vector.broadcast %cst_1 : f32 to vector<8xf32>
    %222 = vector.fma %221, %133, %125 : vector<8xf32>
    %223 = math.fma %21, %9, %21 : tensor<4x4xf32>
    %224 = arith.remui %208, %208 : i1
    %225 = math.log10 %89 : tensor<11xf16>
    %226 = math.log10 %cst : f32
    memref.store %cst_5, %alloc_21[%c0, %c3] : memref<4x4xf16>
    %227 = index.mul %c7, %181
    %228 = vector.extract_strided_slice %222 {offsets = [3], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
    %229 = arith.remsi %157, %c-12258_i16 : i16
    %230 = bufferization.to_memref %collapsed_38 : memref<16xf32>
    %231 = math.ctpop %10 : tensor<8x8xi1>
    %232 = math.log2 %92 : tensor<4x4xf32>
    %233 = index.casts %198 : index to i32
    %234 = arith.xori %c1887825572_i64, %c1159318518_i64 : i64
    %235 = vector.broadcast %true_49 : i1 to vector<8x8xi1>
    %236 = arith.shrui %false_4, %false : i1
    %237 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, ((-d0) mod 2) * 32)>(%rank_36, %114, %rank_47, %rank_35)
    %238 = affine.load %alloc_23[%c8] : memref<11xf16>
    %cst_52 = arith.constant 6.524800e+04 : f16
    %alloc_53 = memref.alloc() : memref<8x8xi16>
    %from_elements_54 = tensor.from_elements %c1159318518_i64, %c1887825572_i64, %c1159318518_i64, %c1887825572_i64, %c172180046_i64, %c172180046_i64, %c172180046_i64, %c172180046_i64, %c426441360_i64, %c426441360_i64, %c1159318518_i64, %c1159318518_i64, %c1887825572_i64, %c426441360_i64, %c426441360_i64, %c172180046_i64, %c1159318518_i64, %c172180046_i64, %c1887825572_i64, %c426441360_i64, %c426441360_i64, %c1887825572_i64, %c426441360_i64, %c1159318518_i64, %c426441360_i64, %c426441360_i64, %c1159318518_i64, %c426441360_i64, %c1887825572_i64, %c1887825572_i64, %c1159318518_i64, %c172180046_i64, %c426441360_i64, %c1887825572_i64, %c1887825572_i64, %c1887825572_i64, %c1887825572_i64, %c426441360_i64, %c1159318518_i64, %c1159318518_i64, %c1887825572_i64, %c1159318518_i64, %c1159318518_i64, %c172180046_i64, %c426441360_i64, %c426441360_i64, %c1159318518_i64, %c1159318518_i64, %c426441360_i64, %c1887825572_i64, %c1159318518_i64, %c426441360_i64, %c172180046_i64, %c1159318518_i64, %c172180046_i64, %c1887825572_i64, %c1159318518_i64, %c426441360_i64, %c1887825572_i64, %c426441360_i64, %c172180046_i64, %c1159318518_i64, %c426441360_i64, %c172180046_i64 : tensor<8x8xi64>
    %collapsed_55 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
    %239 = vector.flat_transpose %222 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    affine.for %arg2 = 0 to 119 {
    }
    %240 = vector.broadcast %cst_6 : f32 to vector<8xf32>
    %241 = vector.fma %240, %133, %84 : vector<8xf32>
    %242 = math.log2 %cst : f32
    %243 = arith.addi %74, %false : i1
    %244 = arith.remsi %c1783281111_i32, %c1055516512_i32 : i32
    %245 = math.atan %collapsed_38 : tensor<16xf32>
    %246 = bufferization.to_tensor %alloc_22 : memref<8xi1>
    %247 = math.ipowi %true_28, %true_28 : i1
    %248 = math.cos %14 : tensor<4x4xf32>
    %249 = arith.shrui %c1783281111_i32, %c1783281111_i32 : i32
    %250 = vector.multi_reduction <minsi>, %81, %81 [] : vector<4x4xi32> to vector<4x4xi32>
    %251 = arith.remf %cst, %cst_3 : f32
    %252 = tensor.empty() : tensor<8x8xf32>
    %253 = linalg.copy ins(%126 : tensor<8x8xf32>) outs(%252 : tensor<8x8xf32>) -> tensor<8x8xf32>
    %254 = tensor.empty() : tensor<8xi1>
    %transposed = linalg.transpose ins(%2 : tensor<8xi1>) outs(%254 : tensor<8xi1>) permutation = [0] 
    %alloc_56 = memref.alloc() : memref<i32>
    linalg.reduce ins(%188 : tensor<8xi32>) outs(%alloc_56 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %collapsed_57 = tensor.collapse_shape %15 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
        %256 = vector.reduction <maxf>, %222 : vector<8xf32> into f32
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %239, %125, %cst_6 : vector<8xf32>, vector<8xf32> into f32
        %258 = vector.bitcast %171 : vector<8x11xi1> to vector<8x11xi1>
        %259 = arith.shrui %false_4, %true : i1
        %260 = vector.load %alloc_20[%c2, %c7] : memref<8x8xf16>, vector<8x8xf16>
        %261 = vector.multi_reduction <mul>, %173, %cst [0, 1] : vector<8x11xf32> to f32
        %262 = index.sizeof
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg2) = (%198) to (%c11) step (%c13) {
      %alloc_57 = memref.alloc() : memref<8x11xi16>
      %256 = arith.xori %true_49, %true : i1
      %generated_58 = tensor.generate %110 {
      ^bb0(%arg3: index):
        %266 = vector.extract %130[6] : vector<8x8xf32>
        %267 = arith.remf %cst, %cst_1 : f32
        %268 = math.cttz %15 : tensor<8x8xi16>
        memref.store %cst_1, %alloc_13[%c2, %c4] : memref<8x8xf32>
        tensor.yield %cst_3 : f32
      } : tensor<?xf32>
      %rank_59 = tensor.rank %188 : tensor<8xi32>
      %257 = math.tan %212 : tensor<8x11xf16>
      %258 = vector.insertelement %cst_1, %85[%c9 : index] : vector<8xf32>
      %259 = arith.xori %true, %false : i1
      %260 = vector.reduction <minsi>, %29 : vector<4xi16> into i16
      %261 = arith.shli %143, %157 : i16
      %262 = arith.minui %c1055516512_i32, %c1783281111_i32 : i32
      affine.store %cst_2, %54[%c1] : memref<11xf16>
      %263 = arith.cmpi ne, %c1055516512_i32, %c1055516512_i32 : i32
      %alloc_60 = memref.alloc() : memref<4x4xf32>
      memref.tensor_store %9, %alloc_60 : memref<4x4xf32>
      %264 = index.mul %181, %127
      %265 = tensor.empty() : tensor<8xi64>
      %mapped_61 = linalg.map ins(%0 : tensor<8xi64>) outs(%265 : tensor<8xi64>)
        (%in: i64) {
          %266 = math.sqrt %62 : tensor<4x4xf16>
          %267 = index.divs %101, %193
          %268 = bufferization.to_memref %213 : memref<4x4xf16>
          %269 = math.ctpop %c0_i16 : i16
          %270 = math.atan %14 : tensor<4x4xf32>
          %271 = index.mul %rank_35, %rank_29
          %272 = vector.bitcast %240 : vector<8xf32> to vector<8xf32>
          %273 = tensor.empty() : tensor<4x4xf32>
          %274 = linalg.matmul ins(%16, %16 : tensor<4x4xf32>, tensor<4x4xf32>) outs(%273 : tensor<4x4xf32>) -> tensor<4x4xf32>
          %275 = arith.ceildivsi %c426441360_i64, %c172180046_i64 : i64
          %rank_62 = tensor.rank %10 : tensor<8x8xi1>
          %276 = arith.andi %c1887825572_i64, %c172180046_i64 : i64
          %277 = arith.remf %cst_3, %cst_6 : f32
          %278 = math.powf %collapsed_38, %collapsed_38 : tensor<16xf32>
          %279 = index.sizeof
          %280 = arith.andi %c172180046_i64, %c1159318518_i64 : i64
          %281 = index.add %c12, %c0
          %282 = bufferization.to_memref %254 : memref<8xi1>
          %283 = vector.broadcast %cst_6 : f32 to vector<8x11xf32>
          %284 = vector.fma %283, %170, %170 : vector<8x11xf32>
          %285 = vector.reduction <minf>, %125 : vector<8xf32> into f32
          %alloc_63 = memref.alloc() : memref<8x8xi64>
          %from_elements_64 = tensor.from_elements %74, %true_49, %false_4, %true_28, %true, %true_49, %true_28, %true_28, %208, %74, %74, %true_28, %74, %74, %true_28, %false_4 : tensor<4x4xi1>
          memref.assume_alignment %alloc_7, 2 : memref<4x4xi32>
          %286 = affine.load %alloc_7[%c12, %c15] : memref<4x4xi32>
          %cast_65 = tensor.cast %30 : tensor<4x4xf16> to tensor<?x?xf16>
          %287 = bufferization.to_tensor %alloc_20 : memref<8x8xf16>
          %288 = tensor.empty() : tensor<8x11xi32>
          %289 = affine.load %alloc_11[%c2] : memref<8xf16>
          memref.tensor_store %1, %alloc_24 : memref<8xi64>
          %290 = arith.minui %143, %157 : i16
          %291 = math.powf %21, %9 : tensor<4x4xf32>
          %292 = math.ipowi %15, %108 : tensor<8x8xi16>
          %293 = arith.remf %cst_6, %cst : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %extracted = tensor.extract %8[%c2, %c2] : tensor<4x4xi64>
      scf.yield
    }
    %255 = affine.vector_load %230[%c6] : memref<16xf32>, vector<8xf32>
    affine.vector_store %28, %alloc[%rank_34] : memref<8xi1>, vector<4xi1>
    vector.print %18 : vector<11xf16>
    vector.print %27 : vector<4xi16>
    vector.print %28 : vector<4xi1>
    vector.print %29 : vector<4xi16>
    vector.print %52 : vector<8x8xf16>
    vector.print %64 : vector<4xi16>
    vector.print %67 : vector<4xi16>
    vector.print %70 : vector<8x11xi64>
    vector.print %72 : vector<4xi16>
    vector.print %81 : vector<4x4xi32>
    vector.print %84 : vector<8xf32>
    vector.print %85 : vector<8xf32>
    vector.print %125 : vector<8xf32>
    vector.print %128 : vector<1xi16>
    vector.print %129 : vector<8x8xf32>
    vector.print %130 : vector<8x8xf32>
    vector.print %132 : vector<1xf32>
    vector.print %133 : vector<8xf32>
    vector.print %135 : vector<1xf32>
    vector.print %170 : vector<8x11xf32>
    vector.print %171 : vector<8x11xi1>
    vector.print %172 : vector<8x11xi32>
    vector.print %173 : vector<8x11xf32>
    vector.print %186 : vector<4xf16>
    vector.print %187 : vector<4xf16>
    vector.print %210 : vector<8xf32>
    vector.print %221 : vector<8xf32>
    vector.print %222 : vector<8xf32>
    vector.print %228 : vector<1xf32>
    vector.print %235 : vector<8x8xi1>
    vector.print %239 : vector<8xf32>
    vector.print %240 : vector<8xf32>
    vector.print %241 : vector<8xf32>
    vector.print %255 : vector<8xf32>
    vector.print %c1887825572_i64 : i64
    vector.print %c1055516512_i32 : i32
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %c172180046_i64 : i64
    vector.print %c1783281111_i32 : i32
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c1159318518_i64 : i64
    vector.print %false_4 : i1
    vector.print %c426441360_i64 : i64
    vector.print %cst_5 : f16
    vector.print %c-12258_i16 : i16
    vector.print %cst_6 : f32
    vector.print %true : i1
    vector.print %true_28 : i1
    vector.print %74 : i1
    vector.print %c0_i16 : i16
    vector.print %143 : i16
    vector.print %157 : i16
    vector.print %true_49 : i1
    vector.print %208 : i1
    vector.print %238 : f16
    return
  }
}
