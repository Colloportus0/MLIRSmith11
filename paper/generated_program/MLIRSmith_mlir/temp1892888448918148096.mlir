module {
  func.func private @func1() -> i16 {
    %c1610766458_i64 = arith.constant 1610766458 : i64
    %c1828038969_i32 = arith.constant 1828038969 : i32
    %false = arith.constant false
    %cst = arith.constant 4.368000e+04 : f16
    %c579311876_i32 = arith.constant 579311876 : i32
    %false_0 = arith.constant false
    %c1698949014_i64 = arith.constant 1698949014 : i64
    %cst_1 = arith.constant 1.0080631E+9 : f32
    %c930426571_i64 = arith.constant 930426571 : i64
    %c443974435_i32 = arith.constant 443974435 : i32
    %cst_2 = arith.constant 3.315200e+04 : f16
    %cst_3 = arith.constant 2.267200e+04 : f16
    %cst_4 = arith.constant 0x4D3214AE : f32
    %cst_5 = arith.constant 5.107200e+04 : f16
    %c1585423334_i32 = arith.constant 1585423334 : i32
    %c12747_i16 = arith.constant 12747 : i16
    %0 = tensor.empty() : tensor<10x11xi1>
    %1 = tensor.empty() : tensor<3x10xi64>
    %2 = tensor.empty() : tensor<10x11xi1>
    %3 = tensor.empty() : tensor<10x11xi1>
    %4 = tensor.empty() : tensor<3x10xf32>
    %5 = tensor.empty() : tensor<10x11xi16>
    %6 = tensor.empty() : tensor<3x10xf32>
    %7 = tensor.empty() : tensor<10x11xi16>
    %8 = tensor.empty() : tensor<3xf32>
    %9 = tensor.empty() : tensor<3xf32>
    %10 = tensor.empty() : tensor<3xf32>
    %11 = tensor.empty() : tensor<3x10xi64>
    %12 = tensor.empty() : tensor<3x10xf32>
    %13 = tensor.empty() : tensor<3xi32>
    %14 = tensor.empty() : tensor<3x10xi64>
    %15 = tensor.empty() : tensor<3x10xi1>
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
    %alloc = memref.alloc() : memref<3x10xi16>
    %alloc_6 = memref.alloc() : memref<10x11xi16>
    %alloc_7 = memref.alloc() : memref<3x10xi1>
    %alloc_8 = memref.alloc() : memref<3x10xi32>
    %alloc_9 = memref.alloc() : memref<3x10xf16>
    %alloc_10 = memref.alloc() : memref<3x10xi16>
    %alloc_11 = memref.alloc() : memref<3xi1>
    %alloc_12 = memref.alloc() : memref<3x10xf32>
    %alloc_13 = memref.alloc() : memref<3xi1>
    %alloc_14 = memref.alloc() : memref<3x10xi64>
    %alloc_15 = memref.alloc() : memref<3xi32>
    %alloc_16 = memref.alloc() : memref<10x11xi16>
    %alloc_17 = memref.alloc() : memref<3x10xi64>
    %alloc_18 = memref.alloc() : memref<3xf32>
    %alloc_19 = memref.alloc() : memref<3x10xi16>
    %alloc_20 = memref.alloc() : memref<3x10xi16>
    %16 = tensor.empty() : tensor<10x11xi16>
    %17 = linalg.copy ins(%5 : tensor<10x11xi16>) outs(%16 : tensor<10x11xi16>) -> tensor<10x11xi16>
    %alloc_21 = memref.alloc() : memref<10x3xi64>
    linalg.transpose ins(%1 : tensor<3x10xi64>) outs(%alloc_21 : memref<10x3xi64>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%3 : tensor<10x11xi1>) outs(%18 : tensor<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %259 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 128, (d1 + 136) ceildiv 32 - d0, d1)>(%c4, %c3)
        %260 = math.cos %cst_1 : f32
        %261 = arith.remf %cst_1, %cst_4 : f32
        %262 = arith.ori %false, %false : i1
        %263 = arith.minsi %init, %false : i1
        %splat_51 = tensor.splat %c1698949014_i64 : tensor<3x10xi64>
        %extracted = tensor.extract %2[%c7, %c2] : tensor<10x11xi1>
        %264 = arith.remf %cst, %cst_5 : f16
        %false_52 = arith.constant false
        linalg.yield %false_52 : i1
      }
    scf.parallel (%arg0, %arg1) = (%c8, %c9) to (%c15, %c0) step (%c10, %c14) {
      %259 = arith.maxsi %c1610766458_i64, %c930426571_i64 : i64
      %260 = vector.splat %c1585423334_i32 : vector<10x11xi32>
      %261 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 128)>(%c4, %c14)
      %expanded_51 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<3x10xi1> into tensor<3x10x1xi1>
      %262 = affine.apply affine_map<(d0) -> (d0 * -128)>(%c14)
      %263 = index.sizeof
      %264 = arith.minsi %c443974435_i32, %c443974435_i32 : i32
      %265 = vector.broadcast %c1828038969_i32 : i32 to vector<10x11xi32>
      %266 = vector.splat %c443974435_i32 : vector<3xi32>
      %267 = affine.apply affine_map<(d0, d1) -> (d1)>(%c2, %c1)
      %268 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%arg1, %c8)
      %269 = index.maxs %c2, %c10
      %270 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %271 = vector.broadcast %false_0 : i1 to vector<11xi1>
      %272 = vector.maskedload %alloc_12[%c1, %c1], %271, %270 : memref<3x10xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      %273 = arith.xori %c1610766458_i64, %c1610766458_i64 : i64
      %274 = vector.broadcast %c12747_i16 : i16 to vector<i16>
      vector.transfer_write %274, %alloc_19[%c10, %c15] : vector<i16>, memref<3x10xi16>
      %275 = vector.insertelement %cst_4, %272[%c8 : index] : vector<11xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_7[%c3, %c10] : memref<3x10xi1>, vector<1xi1>
    affine.vector_store %19, %alloc_11[%c13] : memref<3xi1>, vector<1xi1>
    %20 = tensor.empty() : tensor<3xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%8, %20 : tensor<3xf32>, tensor<3xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = affine.load %alloc_16[%c2, %c13] : memref<10x11xi16>
    %24 = math.cos %12 : tensor<3x10xf32>
    %25 = vector.broadcast %c0 : index to vector<10xindex>
    %26 = vector.broadcast %false : i1 to vector<10xi1>
    %27 = vector.broadcast %c12747_i16 : i16 to vector<10xi16>
    vector.scatter %alloc_10[%c2, %c6] [%25], %26, %27 : memref<3x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    %28 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4)>(%c12, %c14, %c15, %c5)
    %29 = vector.broadcast %c1610766458_i64 : i64 to vector<11x11xi64>
    %30 = vector.broadcast %c1698949014_i64 : i64 to vector<11xi64>
    %dest, %accumulated_value = vector.scan <add>, %29, %30 {inclusive = false, reduction_dim = 1 : i64} : vector<11x11xi64>, vector<11xi64>
    %31 = math.cos %21 : tensor<f32>
    %32 = arith.maxui %c1585423334_i32, %c1585423334_i32 : i32
    %33 = arith.ori %c1698949014_i64, %c1610766458_i64 : i64
    %34 = affine.min affine_map<(d0, d1, d2) -> (d0 - d1 - d1)>(%c13, %c14, %c7)
    %35 = arith.xori %c1610766458_i64, %c1698949014_i64 : i64
    %36 = math.tan %22 : tensor<f32>
    %37 = math.log2 %9 : tensor<3xf32>
    memref.copy %alloc_17, %alloc_14 : memref<3x10xi64> to memref<3x10xi64>
    %38 = math.exp2 %6 : tensor<3x10xf32>
    %39 = memref.realloc %alloc_11 : memref<3xi1> to memref<10xi1>
    %rank = tensor.rank %10 : tensor<3xf32>
    %40 = vector.broadcast %cst_1 : f32 to vector<f32>
    %41 = vector.transfer_write %40, %8[%c2] : vector<f32>, tensor<3xf32>
    %42 = math.ipowi %13, %13 : tensor<3xi32>
    %43 = arith.floordivsi %23, %23 : i16
    %44 = math.exp2 %6 : tensor<3x10xf32>
    %45 = arith.divsi %23, %c12747_i16 : i16
    %46 = arith.maxsi %c443974435_i32, %c443974435_i32 : i32
    %47 = tensor.empty() : tensor<3x10xf16>
    %48 = vector.broadcast %cst_2 : f16 to vector<3x10xf16>
    %49 = vector.broadcast %false : i1 to vector<3x10xi1>
    %50 = vector.broadcast %c1585423334_i32 : i32 to vector<3x10xi32>
    %51 = vector.gather %47[%rank, %c12] [%50], %49, %48 : tensor<3x10xf16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xf16> into vector<3x10xf16>
    affine.for %arg0 = 0 to 67 {
    }
    %52 = math.cos %12 : tensor<3x10xf32>
    %53 = math.expm1 %4 : tensor<3x10xf32>
    %54 = vector.insertelement %cst_4, %40[] : vector<f32>
    %55 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %56 = vector.fma %55, %55, %55 : vector<3xf32>
    %57 = vector.broadcast %34 : index to vector<1xindex>
    %58 = vector.broadcast %c12747_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_6[%c3, %c7] [%57], %19, %58 : memref<10x11xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    memref.copy %alloc_11, %alloc_13 : memref<3xi1> to memref<3xi1>
    %59 = math.expm1 %10 : tensor<3xf32>
    %60 = vector.splat %c1610766458_i64 : vector<10x11xi64>
    %61 = arith.divui %c1585423334_i32, %c579311876_i32 : i32
    %62 = arith.divf %cst_1, %cst_4 : f32
    %63 = affine.min affine_map<(d0, d1) -> ((d0 - 8) floordiv 32, d0 + 120, d0 * -64, d0 + 120)>(%c12, %c14)
    %64 = tensor.empty() : tensor<3x3x3xi1>
    %65 = tensor.empty() : tensor<3x3xi1>
    %66 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11, %65, %alloc_13 : memref<3xi1>, tensor<3x3xi1>, memref<3xi1>) outs(%64 : tensor<3x3x3xi1>) {
    ^bb0(%in: i1, %in_51: i1, %in_52: i1, %out: i1):
      %c0_i16_53 = arith.constant 0 : i16
      %259 = vector.transfer_read %7[%c5, %63], %c0_i16_53 : tensor<10x11xi16>, vector<i16>
      %260 = arith.minui %false_0, %out : i1
      %261 = vector.extract_strided_slice %48 {offsets = [0], sizes = [2], strides = [1]} : vector<3x10xf16> to vector<2x10xf16>
      %262 = arith.floordivsi %in_51, %in_51 : i1
      %263 = math.ctlz %2 : tensor<10x11xi1>
      vector.print %51 : vector<3x10xf16>
      %264 = vector.broadcast %cst_1 : f32 to vector<f32>
      vector.transfer_write %264, %alloc_18[%c0] : vector<f32>, memref<3xf32>
      %265 = math.exp2 %4 : tensor<3x10xf32>
      %266 = vector.multi_reduction <mul>, %261, %261 [] : vector<2x10xf16> to vector<2x10xf16>
      %extracted = tensor.extract %reduced[] : tensor<i1>
      %extracted_54 = tensor.extract %16[%c2, %c9] : tensor<10x11xi16>
      %267 = index.sizeof
      %268 = arith.muli %in, %in_52 : i1
      %269 = math.round %9 : tensor<3xf32>
      %alloc_55 = memref.alloc() : memref<10x11xi32>
      vector.print %40 : vector<f32>
      %270 = vector.broadcast %cst_5 : f16 to vector<10xf16>
      %271 = vector.insert %270, %48 [1] : vector<10xf16> into vector<3x10xf16>
      %cst_56 = arith.constant 1.000000e+00 : f32
      %cst_57 = arith.constant 0.000000e+00 : f32
      %272 = vector.transfer_read %4[%267, %c0], %cst_57 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x10xf32>, vector<3xf32>
      %273 = math.fma %cst, %cst_5, %cst_5 : f16
      %274 = arith.minf %cst_1, %cst_1 : f32
      %275 = math.roundeven %cst_4 : f32
      %276 = arith.mulf %cst_3, %cst : f16
      %277 = index.ceildivu %28, %c13
      %278 = arith.negf %cst_56 : f32
      %279 = vector.extract %56[1] : vector<3xf32>
      %280 = vector.splat %cst_5 : vector<3x10xf16>
      %281 = arith.addf %cst_5, %cst : f16
      %282 = vector.extract_strided_slice %49 {offsets = [0], sizes = [1], strides = [1]} : vector<3x10xi1> to vector<1x10xi1>
      %283 = bufferization.clone %alloc_11 : memref<3xi1> to memref<3xi1>
      %284 = vector.broadcast %in_51 : i1 to vector<10xi1>
      %285 = vector.insert %284, %282 [0] : vector<10xi1> into vector<1x10xi1>
      %286 = math.log2 %8 : tensor<3xf32>
      %287 = index.mul %277, %c12
      linalg.yield %false_0 : i1
    } -> tensor<3x3x3xi1>
    %67 = arith.cmpi sle, %c579311876_i32, %c443974435_i32 : i32
    %68 = math.ctlz %false_0 : i1
    %69 = scf.index_switch %c15 -> index 
    case 1 {
      memref.store %c930426571_i64, %alloc_14[%c0, %c4] : memref<3x10xi64>
      %259 = vector.splat %cst_2 : vector<10x11xf16>
      %c1_i16 = arith.constant 1 : i16
      %260 = vector.transfer_read %alloc_16[%c2, %c3], %c1_i16 : memref<10x11xi16>, vector<11xi16>
      %261 = math.exp2 %8 : tensor<3xf32>
      %262 = math.exp2 %cst_4 : f32
      %263 = memref.atomic_rmw maxs %23, %alloc[%c2, %c7] : (i16, memref<3x10xi16>) -> i16
      %264 = arith.xori %c1585423334_i32, %c443974435_i32 : i32
      %265 = math.absi %c12747_i16 : i16
      %266 = vector.broadcast %cst : f16 to vector<10x11xf16>
      %267 = tensor.empty() : tensor<3x3x3xi1>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11, %alloc_13 : memref<3xi1>, memref<3xi1>) outs(%267 : tensor<3x3x3xi1>) {
      ^bb0(%in: i1, %in_51: i1, %out: i1):
        %alloc_52 = memref.alloc() : memref<10x10xf32>
        %275 = tensor.empty() : tensor<3x10xf32>
        %276 = linalg.matmul ins(%6, %alloc_52 : tensor<3x10xf32>, memref<10x10xf32>) outs(%275 : tensor<3x10xf32>) -> tensor<3x10xf32>
        %277 = arith.minui %c579311876_i32, %c579311876_i32 : i32
        %rank_53 = tensor.rank %9 : tensor<3xf32>
        %278 = arith.subi %in, %out : i1
        %279 = index.maxs %c0, %c11
        %280 = vector.transpose %48, [0, 1] : vector<3x10xf16> to vector<3x10xf16>
        %281 = math.round %21 : tensor<f32>
        %282 = math.ceil %22 : tensor<f32>
        %283 = vector.extract %51[0] : vector<3x10xf16>
        %284 = math.cos %9 : tensor<3xf32>
        %285 = arith.maxsi %c1610766458_i64, %c930426571_i64 : i64
        %286 = tensor.empty(%c5) : tensor<?xf32>
        %287 = affine.apply affine_map<(d0, d1, d2) -> ((-(d0 + 4)) mod 16)>(%34, %c4, %c11)
        %288 = vector.create_mask %c10, %c0 : vector<10x11xi1>
        %289 = vector.broadcast %cst_4 : f32 to vector<3xf32>
        %290 = vector.fma %289, %56, %55 : vector<3xf32>
        %collapsed_54 = tensor.collapse_shape %275 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
        %291 = math.absi %reduced : tensor<i1>
        %292 = vector.broadcast %cst_5 : f16 to vector<10x11xf16>
        %293 = vector.insert %cst_4, %56 [2] : f32 into vector<3xf32>
        %294 = math.fma %6, %275, %12 : tensor<3x10xf32>
        %295 = memref.realloc %alloc_15 : memref<3xi32> to memref<10xi32>
        %296 = math.round %4 : tensor<3x10xf32>
        %297 = vector.splat %c9 : vector<3x10xindex>
        %298 = vector.broadcast %in_51 : i1 to vector<i1>
        %299 = vector.transfer_write %298, %3[%287, %c10] : vector<i1>, tensor<10x11xi1>
        %300 = index.mul %rank_53, %c6
        %301 = tensor.empty() : tensor<3x11xi1>
        %302 = linalg.matmul ins(%15, %3 : tensor<3x10xi1>, tensor<10x11xi1>) outs(%301 : tensor<3x11xi1>) -> tensor<3x11xi1>
        %303 = memref.load %alloc_10[%c0, %c1] : memref<3x10xi16>
        memref.copy %alloc_16, %alloc_6 : memref<10x11xi16> to memref<10x11xi16>
        %304 = math.exp %12 : tensor<3x10xf32>
        %305 = index.castu %c930426571_i64 : i64 to index
        %306 = affine.min affine_map<(d0, d1, d2) -> (d0 - 4, d1 + d2 + 1, (d1 + d2 + 1) ceildiv 32, d2 + 3)>(%c8, %c4, %c0)
        %307 = math.ctpop %out : i1
        linalg.yield %in_51 : i1
      } -> tensor<3x3x3xi1>
      %269 = arith.addf %cst_3, %cst_2 : f16
      %270 = arith.maxui %c1610766458_i64, %c1610766458_i64 : i64
      %271 = bufferization.clone %alloc_18 : memref<3xf32> to memref<3xf32>
      %272 = math.atan %4 : tensor<3x10xf32>
      %273 = arith.maxui %c1828038969_i32, %c1828038969_i32 : i32
      %274 = affine.if affine_set<(d0) : (-16 == 0)>(%c9) -> memref<10x11xi16> {
        %275 = math.exp2 %22 : tensor<f32>
        %276 = arith.maxsi %c1610766458_i64, %c930426571_i64 : i64
        %277 = index.castu %c10 : index to i32
        %278 = vector.extract_strided_slice %50 {offsets = [0], sizes = [1], strides = [1]} : vector<3x10xi32> to vector<1x10xi32>
        %279 = index.casts %c12 : index to i32
        %280 = vector.reduction <mul>, %19 : vector<1xi1> into i1
        %281 = arith.mulf %cst_4, %cst_4 : f32
        %cast_51 = tensor.cast %9 : tensor<3xf32> to tensor<?xf32>
        affine.yield %alloc_16 : memref<10x11xi16>
      } else {
        %275 = arith.remf %cst_4, %cst_4 : f32
        %276 = vector.matrix_multiply %56, %56 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %277 = vector.extract %48[0] : vector<3x10xf16>
        %278 = math.expm1 %9 : tensor<3xf32>
        %279 = memref.realloc %alloc_11 : memref<3xi1> to memref<11xi1>
        %280 = math.cos %12 : tensor<3x10xf32>
        vector.print %276 : vector<1xf32>
        %cast_51 = tensor.cast %6 : tensor<3x10xf32> to tensor<?x?xf32>
        affine.yield %alloc_6 : memref<10x11xi16>
      }
      scf.yield %c14 : index
    }
    case 2 {
      %259 = math.ctpop %2 : tensor<10x11xi1>
      %260 = arith.ceildivsi %c1610766458_i64, %c1610766458_i64 : i64
      %261 = arith.andi %23, %c12747_i16 : i16
      %262 = vector.create_mask %c9, %c1 : vector<3x10xi1>
      %263 = arith.remui %c1698949014_i64, %c1610766458_i64 : i64
      %264 = index.sizeof
      %265 = math.ctlz %5 : tensor<10x11xi16>
      %266 = memref.realloc %alloc_13 : memref<3xi1> to memref<3xi1>
      %267 = arith.mulf %cst_2, %cst_2 : f16
      %268 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      %dest_51, %accumulated_value_52 = vector.scan <minf>, %48, %268 {inclusive = true, reduction_dim = 0 : i64} : vector<3x10xf16>, vector<10xf16>
      %alloca_53 = memref.alloca() : memref<3x10xf32>
      %269 = math.cos %22 : tensor<f32>
      %270 = vector.broadcast %false_0 : i1 to vector<10x10xi1>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %49, %262, %270 : vector<3x10xi1>, vector<3x10xi1> into vector<10x10xi1>
      %272 = arith.cmpi ne, %c1828038969_i32, %c1585423334_i32 : i32
      %273 = arith.cmpf ult, %cst_2, %cst : f16
      memref.store %false_0, %alloc_7[%c1, %c8] : memref<3x10xi1>
      scf.yield %c14 : index
    }
    case 3 {
      %259 = arith.remf %cst_2, %cst : f16
      %260 = math.absi %5 : tensor<10x11xi16>
      %261 = vector.matrix_multiply %56, %55 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
      %262 = vector.create_mask %c1, %c2 : vector<10x11xi1>
      %263 = math.floor %10 : tensor<3xf32>
      memref.store %c1585423334_i32, %alloc_8[%c2, %c0] : memref<3x10xi32>
      %264 = arith.mulf %cst, %cst_2 : f16
      memref.copy %alloc_16, %alloc_6 : memref<10x11xi16> to memref<10x11xi16>
      %from_elements_51 = tensor.from_elements %false, %false_0, %false_0 : tensor<3xi1>
      %265 = math.atan2 %8, %8 : tensor<3xf32>
      %266 = affine.for %arg0 = 0 to 39 iter_args(%arg1 = %alloc_17) -> (memref<3x10xi64>) {
        affine.yield %alloc_17 : memref<3x10xi64>
      }
      %267 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 64) * 8 + d2 >= 0, d1 >= 0, (d1 mod 64) * 8 == 0)>(%c5, %c14, %c12) -> memref<10x11xi32> {
        %272 = math.log %4 : tensor<3x10xf32>
        %273 = math.cos %4 : tensor<3x10xf32>
        %274 = vector.flat_transpose %261 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %275 = math.expm1 %cst_5 : f16
        %276 = vector.broadcast %false : i1 to vector<10x10xi1>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %49, %49, %276 : vector<3x10xi1>, vector<3x10xi1> into vector<10x10xi1>
        %278 = bufferization.to_tensor %alloc_15 : memref<3xi32>
        %279 = math.roundeven %9 : tensor<3xf32>
        %280 = math.log2 %8 : tensor<3xf32>
        %alloc_52 = memref.alloc() : memref<10x11xi32>
        affine.yield %alloc_52 : memref<10x11xi32>
      } else {
        vector.print %50 : vector<3x10xi32>
        %272 = math.cos %6 : tensor<3x10xf32>
        %273 = math.tanh %4 : tensor<3x10xf32>
        %274 = arith.remui %c579311876_i32, %c443974435_i32 : i32
        %275 = math.log %cst_1 : f32
        affine.store %c1828038969_i32, %alloc_15[%c1] : memref<3xi32>
        %alloc_52 = memref.alloc() : memref<3x10xi1>
        memref.copy %alloc_7, %alloc_52 : memref<3x10xi1> to memref<3x10xi1>
        %276 = math.tan %cst_2 : f16
        %alloc_53 = memref.alloc() : memref<10x11xi32>
        affine.yield %alloc_53 : memref<10x11xi32>
      }
      %268 = vector.extract %56[1] : vector<3xf32>
      %269 = arith.maxui %c1698949014_i64, %c930426571_i64 : i64
      %270 = vector.broadcast %false : i1 to vector<3xi1>
      %271 = arith.minf %cst_1, %cst_1 : f32
      scf.yield %c4 : index
    }
    default {
      memref.store %false_0, %alloc_11[%c0] : memref<3xi1>
      %259 = arith.floordivsi %c930426571_i64, %c930426571_i64 : i64
      %260 = math.floor %12 : tensor<3x10xf32>
      %261 = arith.shrui %c930426571_i64, %c930426571_i64 : i64
      %262 = index.sizeof
      %263 = arith.shrsi %c930426571_i64, %c930426571_i64 : i64
      %264 = arith.minsi %false, %false_0 : i1
      %265 = arith.mulf %cst_1, %cst_1 : f32
      %266 = math.log2 %cst_3 : f16
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %267 = vector.transfer_read %8[%c5], %cst_52 : tensor<3xf32>, vector<f32>
      %268 = affine.if affine_set<(d0) : ((((d0 - 1) ceildiv 8 - d0 - 1) floordiv 4) ceildiv 64 + (d0 - 1) ceildiv 8 == 0)>(%c0) -> i32 {
        %276 = index.sub %34, %c11
        %277 = vector.extract_strided_slice %50 {offsets = [1], sizes = [1], strides = [1]} : vector<3x10xi32> to vector<1x10xi32>
        %278 = vector.extract_strided_slice %48 {offsets = [1], sizes = [2], strides = [1]} : vector<3x10xf16> to vector<2x10xf16>
        %279 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 4, d2 - d1, -(d2 - d1 - d1))>(%c11, %c10, %c5)
        %280 = vector.broadcast %cst_2 : f16 to vector<10xf16>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %48, %280 {inclusive = true, reduction_dim = 0 : i64} : vector<3x10xf16>, vector<10xf16>
        %281 = math.ctlz %5 : tensor<10x11xi16>
        %282 = index.divu %c5, %28
        %283 = memref.atomic_rmw assign %c12747_i16, %alloc[%c0, %c9] : (i16, memref<3x10xi16>) -> i16
        affine.yield %c579311876_i32 : i32
      } else {
        %276 = tensor.empty() : tensor<3x10xf16>
        %277 = arith.minf %cst_4, %cst_4 : f32
        vector.print %48 : vector<3x10xf16>
        %278 = arith.addf %cst_51, %cst_1 : f32
        bufferization.dealloc_tensor %11 : tensor<3x10xi64>
        %279 = math.exp2 %cst_51 : f32
        %280 = memref.load %alloc_12[%c2, %c2] : memref<3x10xf32>
        memref.copy %alloc_20, %alloc_19 : memref<3x10xi16> to memref<3x10xi16>
        affine.yield %c579311876_i32 : i32
      }
      %269 = math.absi %reduced : tensor<i1>
      %c0_i32 = arith.constant 0 : i32
      %270 = vector.transfer_read %13[%c5], %c0_i32 : tensor<3xi32>, vector<i32>
      %271 = memref.realloc %alloc_18 : memref<3xf32> to memref<10xf32>
      %272 = vector.broadcast %c12747_i16 : i16 to vector<10xi16>
      %273 = vector.broadcast %false_0 : i1 to vector<10xi1>
      %274 = vector.maskedload %alloc[%c1, %c1], %273, %272 : memref<3x10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %275 = math.roundeven %6 : tensor<3x10xf32>
      scf.yield %c11 : index
    }
    %70 = math.exp2 %6 : tensor<3x10xf32>
    %splat = tensor.splat %23 : tensor<3x10xi16>
    %71 = arith.maxui %c579311876_i32, %c1828038969_i32 : i32
    %72 = vector.extract %48[2] : vector<3x10xf16>
    %cast = tensor.cast %22 : tensor<f32> to tensor<f32>
    %73 = vector.broadcast %cst_1 : f32 to vector<f32>
    %74 = vector.transfer_write %73, %9[%c6] : vector<f32>, tensor<3xf32>
    %75 = math.exp %21 : tensor<f32>
    %from_elements = tensor.from_elements %c1610766458_i64, %c1698949014_i64, %c930426571_i64, %c1610766458_i64, %c1698949014_i64, %c1698949014_i64, %c1610766458_i64, %c1698949014_i64, %c1698949014_i64, %c930426571_i64, %c1698949014_i64, %c1698949014_i64, %c1610766458_i64, %c1610766458_i64, %c1698949014_i64, %c1610766458_i64, %c1698949014_i64, %c1610766458_i64, %c930426571_i64, %c930426571_i64, %c1610766458_i64, %c930426571_i64, %c930426571_i64, %c1610766458_i64, %c930426571_i64, %c1610766458_i64, %c1698949014_i64, %c1698949014_i64, %c1698949014_i64, %c1610766458_i64 : tensor<3x10xi64>
    %76 = index.divs %c5, %c5
    %77 = arith.minsi %false, %false : i1
    %78 = math.expm1 %cst_2 : f16
    %79 = bufferization.to_tensor %alloc_7 : memref<3x10xi1>
    %80 = tensor.empty() : tensor<3xi32>
    %mapped = linalg.map ins(%13, %alloc_15, %13 : tensor<3xi32>, memref<3xi32>, tensor<3xi32>) outs(%80 : tensor<3xi32>)
      (%in: i32, %in_51: i32, %in_52: i32) {
        %259 = index.castu %c12 : index to i32
        vector.print %73 : vector<f32>
        %260 = math.atan %47 : tensor<3x10xf16>
        %261 = vector.bitcast %50 : vector<3x10xi32> to vector<3x10xi32>
        %262 = math.fpowi %10, %80 : tensor<3xf32>, tensor<3xi32>
        %263 = arith.minf %cst, %cst : f16
        %264 = arith.shrsi %c930426571_i64, %c1610766458_i64 : i64
        %265 = vector.bitcast %51 : vector<3x10xf16> to vector<3x10xf16>
        %266 = vector.broadcast %cst_4 : f32 to vector<10x11xf32>
        %267 = vector.fma %266, %266, %266 : vector<10x11xf32>
        %268 = index.sizeof
        %269 = arith.mulf %cst, %cst_3 : f16
        %alloca_53 = memref.alloca() : memref<3x10xi16>
        %270 = vector.extract_strided_slice %55 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
        %271 = index.sizeof
        %272 = arith.divsi %c12747_i16, %c12747_i16 : i16
        %273 = vector.flat_transpose %56 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %274 = math.ipowi %c443974435_i32, %c443974435_i32 : i32
        %275 = vector.broadcast %cst_2 : f16 to vector<3xf16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %48, %72, %275 : vector<3x10xf16>, vector<10xf16> into vector<3xf16>
        vector.print %56 : vector<3xf32>
        %277 = vector.broadcast %cst_1 : f32 to vector<3x10xf32>
        %278 = vector.fma %277, %277, %277 : vector<3x10xf32>
        %279 = memref.atomic_rmw andi %23, %alloc_10[%c2, %c1] : (i16, memref<3x10xi16>) -> i16
        %280 = arith.divf %cst_1, %cst_4 : f32
        %281 = vector.broadcast %c1698949014_i64 : i64 to vector<i64>
        %282 = vector.transfer_write %281, %1[%c12, %28] : vector<i64>, tensor<3x10xi64>
        %283 = math.round %20 : tensor<3xf32>
        %284 = arith.divui %c443974435_i32, %in_52 : i32
        %285 = index.casts %in_52 : i32 to index
        %286 = vector.multi_reduction <add>, %277, %277 [] : vector<3x10xf32> to vector<3x10xf32>
        %287 = arith.maxsi %c1828038969_i32, %c1585423334_i32 : i32
        %288 = tensor.empty(%c8) : tensor<?x10xf32>
        %289 = index.sub %c14, %285
        %290 = index.mul %76, %c8
        %alloca_54 = memref.alloca() : memref<3xi16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %81 = scf.while (%arg0 = %c1610766458_i64) : (i64) -> i64 {
      %259 = vector.broadcast %c12747_i16 : i16 to vector<11xi16>
      %260 = vector.transfer_write %259, %7[%c3, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<10x11xi16>
      %261 = index.sub %c12, %c11
      %rank_51 = tensor.rank %0 : tensor<10x11xi1>
      %262 = arith.floordivsi %c12747_i16, %c12747_i16 : i16
      %263 = affine.for %arg1 = 0 to 97 iter_args(%arg2 = %6) -> (tensor<3x10xf32>) {
        affine.yield %12 : tensor<3x10xf32>
      }
      %264 = vector.broadcast %c1828038969_i32 : i32 to vector<i32>
      vector.transfer_write %264, %alloc_15[%c8] : vector<i32>, memref<3xi32>
      %265 = arith.remf %cst_4, %cst_4 : f32
      %c0_i16_52 = arith.constant 0 : i16
      %266 = vector.transfer_read %splat[%c1, %c6], %c0_i16_52 : tensor<3x10xi16>, vector<1xi16>
      scf.condition(%false_0) %c1610766458_i64 : i64
    } do {
    ^bb0(%arg0: i64):
      %259 = affine.apply affine_map<(d0) -> (d0 mod 4)>(%c9)
      %260 = vector.bitcast %48 : vector<3x10xf16> to vector<3x10xf16>
      %generated = tensor.generate %c6, %c5 {
      ^bb0(%arg1: index, %arg2: index):
        %274 = math.atan %cst_2 : f16
        %275 = arith.remf %cst, %cst_3 : f16
        %276 = math.roundeven %12 : tensor<3x10xf32>
        %277 = arith.xori %c1585423334_i32, %c1585423334_i32 : i32
        tensor.yield %c12747_i16 : i16
      } : tensor<?x?xi16>
      affine.for %arg1 = 0 to 33 {
      }
      %261 = affine.if affine_set<(d0) : (d0 - 126 >= 0)>(%c8) -> memref<10x11xf16> {
        %274 = arith.maxsi %c12747_i16, %c12747_i16 : i16
        affine.store %c12747_i16, %alloc_20[%c5, %c15] : memref<3x10xi16>
        %275 = vector.multi_reduction <and>, %19, %false_0 [0] : vector<1xi1> to i1
        %276 = vector.broadcast %cst_5 : f16 to vector<3xf16>
        %277 = vector.multi_reduction <minf>, %260, %276 [1] : vector<3x10xf16> to vector<3xf16>
        %278 = arith.divf %cst_3, %cst_3 : f16
        %279 = arith.maxui %c443974435_i32, %c579311876_i32 : i32
        %280 = index.divu %c10, %63
        %281 = math.rsqrt %9 : tensor<3xf32>
        %alloc_52 = memref.alloc() : memref<10x11xf16>
        affine.yield %alloc_52 : memref<10x11xf16>
      } else {
        %274 = arith.minsi %c1698949014_i64, %c930426571_i64 : i64
        %275 = arith.shrsi %false_0, %false : i1
        %276 = math.exp2 %cst_4 : f32
        %277 = arith.maxui %c1610766458_i64, %c1610766458_i64 : i64
        %278 = tensor.empty() : tensor<10x1xf32>
        %279 = tensor.empty() : tensor<3x1xf32>
        %280 = linalg.matmul ins(%6, %278 : tensor<3x10xf32>, tensor<10x1xf32>) outs(%279 : tensor<3x1xf32>) -> tensor<3x1xf32>
        %281 = math.tanh %21 : tensor<f32>
        %282 = math.ctpop %5 : tensor<10x11xi16>
        %283 = math.ipowi %arg0, %c930426571_i64 : i64
        %alloc_52 = memref.alloc() : memref<10x11xf16>
        affine.yield %alloc_52 : memref<10x11xf16>
      }
      %262 = index.add %c10, %c8
      %263 = arith.mulf %cst_5, %cst_3 : f16
      %264 = arith.subi %c1698949014_i64, %arg0 : i64
      %265 = memref.load %alloc_13[%c0] : memref<3xi1>
      %266 = affine.min affine_map<(d0) -> (d0 + (d0 - 64) mod 128 - 64, d0, d0 + (d0 - 64) mod 128 - 64, ((d0 - 64) mod 128) floordiv 4)>(%c1)
      %267 = vector.create_mask %28, %266 : vector<10x11xi1>
      %268 = tensor.empty() : tensor<3x3x3xi1>
      %269 = tensor.empty() : tensor<3x3xi1>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %269, %269 : tensor<3x3xi1>, tensor<3x3xi1>, tensor<3x3xi1>) outs(%268 : tensor<3x3x3xi1>) {
      ^bb0(%in: i1, %in_52: i1, %in_53: i1, %out: i1):
        %274 = arith.minsi %c1828038969_i32, %c1828038969_i32 : i32
        %275 = index.add %c8, %c9
        %276 = math.exp %22 : tensor<f32>
        %277 = arith.minui %c1585423334_i32, %c1585423334_i32 : i32
        %278 = bufferization.to_tensor %alloc_11 : memref<3xi1>
        %279 = math.log %4 : tensor<3x10xf32>
        %cast_54 = tensor.cast %12 : tensor<3x10xf32> to tensor<?x?xf32>
        %280 = arith.xori %in_52, %false : i1
        %281 = bufferization.to_tensor %alloc_7 : memref<3x10xi1>
        %282 = math.exp2 %6 : tensor<3x10xf32>
        %283 = arith.ori %c1698949014_i64, %c930426571_i64 : i64
        %284 = math.roundeven %22 : tensor<f32>
        %285 = affine.min affine_map<(d0, d1) -> (d1, d0 * 512, d0 * 2 + 64, (d0 - 1) ceildiv 32)>(%c8, %262)
        %286 = vector.multi_reduction <maxf>, %260, %72 [0] : vector<3x10xf16> to vector<10xf16>
        %287 = math.ctpop %from_elements : tensor<3x10xi64>
        %288 = index.casts %c1698949014_i64 : i64 to index
        %289 = math.fma %4, %4, %6 : tensor<3x10xf32>
        %290 = arith.remf %cst_4, %cst_1 : f32
        %291 = math.tanh %cst_1 : f32
        %292 = math.roundeven %47 : tensor<3x10xf16>
        %293 = math.ctpop %15 : tensor<3x10xi1>
        %cast_55 = tensor.cast %0 : tensor<10x11xi1> to tensor<?x?xi1>
        %294 = index.sizeof
        %295 = arith.mulf %cst_3, %cst_5 : f16
        %296 = math.atan2 %12, %6 : tensor<3x10xf32>
        %297 = math.roundeven %20 : tensor<3xf32>
        %splat_56 = tensor.splat %cst_5 : tensor<3x10xf16>
        %298 = index.mul %288, %c2
        %299 = arith.divf %cst_2, %cst : f16
        %300 = tensor.empty() : tensor<10x11xf16>
        %301 = affine.min affine_map<(d0) -> ((d0 * 7) mod 4)>(%28)
        %302 = arith.shli %in_53, %false : i1
        linalg.yield %false : i1
      } -> tensor<3x3x3xi1>
      %271 = math.floor %20 : tensor<3xf32>
      %272 = math.exp2 %8 : tensor<3xf32>
      %273 = math.fpowi %cst_2, %c1585423334_i32 : f16, i32
      %inserted_51 = tensor.insert %cst_1 into %4[%c0, %c5] : tensor<3x10xf32>
      scf.yield %c930426571_i64 : i64
    }
    %82 = vector.extract %50[2] : vector<3x10xi32>
    scf.if %false {
      %259 = vector.extract_strided_slice %50 {offsets = [0], sizes = [3], strides = [1]} : vector<3x10xi32> to vector<3x10xi32>
      %260 = vector.insertelement %cst_2, %72[%28 : index] : vector<10xf16>
      %extracted = tensor.extract %11[%c1, %c9] : tensor<3x10xi64>
      %261 = index.maxs %c11, %c9
      %262 = math.exp %cst_5 : f16
      %263 = arith.remf %cst_2, %cst_5 : f16
      %264 = arith.mulf %cst_2, %cst_2 : f16
      %rank_51 = tensor.rank %10 : tensor<3xf32>
    }
    %83 = vector.create_mask %63 : vector<3xi1>
    %c0_i16 = arith.constant 0 : i16
    %84 = vector.transfer_read %splat[%28, %c5], %c0_i16 : tensor<3x10xi16>, vector<i16>
    %expanded = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x11xi1> into tensor<10x11x1xi1>
    %85 = arith.minui %c0_i16, %c12747_i16 : i16
    %86 = arith.xori %23, %c0_i16 : i16
    %87 = vector.extract %55[0] : vector<3xf32>
    %c0_i16_22 = arith.constant 0 : i16
    %88 = vector.transfer_read %7[%rank, %c6], %c0_i16_22 : tensor<10x11xi16>, vector<i16>
    %89 = arith.mulf %cst_1, %cst_4 : f32
    %90 = math.ctpop %false_0 : i1
    %91 = arith.divui %c1828038969_i32, %c579311876_i32 : i32
    %92 = arith.maxui %c0_i16, %c0_i16_22 : i16
    %93 = math.powf %9, %10 : tensor<3xf32>
    %94 = arith.remf %cst_1, %cst_4 : f32
    %95 = arith.shrsi %c0_i16, %c0_i16_22 : i16
    %96 = index.mul %c9, %c13
    %97 = arith.remf %cst_2, %cst : f16
    %98 = arith.shli %c1610766458_i64, %c1698949014_i64 : i64
    bufferization.dealloc_tensor %14 : tensor<3x10xi64>
    %99 = arith.maxui %c1698949014_i64, %c1610766458_i64 : i64
    %100 = math.round %10 : tensor<3xf32>
    %101 = math.cttz %1 : tensor<3x10xi64>
    %102 = vector.transpose %49, [1, 0] : vector<3x10xi1> to vector<10x3xi1>
    %103 = math.ctpop %13 : tensor<3xi32>
    %alloc_23 = memref.alloc() : memref<10x3xi64>
    memref.copy %alloc_21, %alloc_23 : memref<10x3xi64> to memref<10x3xi64>
    %104 = arith.andi %23, %23 : i16
    %105 = vector.load %alloc_14[%c1, %c9] : memref<3x10xi64>, vector<3x10xi64>
    %106 = memref.alloca_scope  -> (memref<3xi64>) {
      %expanded_51 = tensor.expand_shape %20 [[0, 1]] : tensor<3xf32> into tensor<3x1xf32>
      %259 = arith.remf %cst, %cst_2 : f16
      affine.store %false, %alloc_7[%c7, %c7] : memref<3x10xi1>
      %260 = vector.broadcast %cst_4 : f32 to vector<3x10xf32>
      %261 = vector.fma %260, %260, %260 : vector<3x10xf32>
      %262 = index.mul %c10, %c10
      %rank_52 = tensor.rank %8 : tensor<3xf32>
      affine.store %c1610766458_i64, %alloc_21[%c8, %c5] : memref<10x3xi64>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<10x11x1xi1>) {
      ^bb0(%out: i1):
        %280 = arith.ori %c1610766458_i64, %c1698949014_i64 : i64
        %cst_62 = arith.constant 1.000000e+00 : f32
        %281 = vector.transfer_read %6[%c7, %262], %cst_62 : tensor<3x10xf32>, vector<10xf32>
        %282 = index.sub %c4, %c0
        %283 = math.log10 %4 : tensor<3x10xf32>
        %284 = index.maxs %c6, %34
        %285 = math.ctlz %splat : tensor<3x10xi16>
        %collapsed_63 = tensor.collapse_shape %0 [[0, 1]] : tensor<10x11xi1> into tensor<110xi1>
        %286 = math.log2 %cst_4 : f32
        %287 = vector.bitcast %50 : vector<3x10xi32> to vector<3x10xf32>
        %288 = vector.insert %82, %50 [0] : vector<10xi32> into vector<3x10xi32>
        %289 = math.roundeven %6 : tensor<3x10xf32>
        %290 = math.tanh %expanded_51 : tensor<3x1xf32>
        vector.print %287 : vector<3x10xf32>
        %291 = vector.broadcast %c0_i16_22 : i16 to vector<10x11xi16>
        %292 = math.fma %12, %4, %6 : tensor<3x10xf32>
        %293 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %294 = memref.realloc %alloc_18 : memref<3xf32> to memref<3xf32>
        %295 = math.log %cst_3 : f16
        %296 = arith.remf %cst_62, %cst_62 : f32
        %297 = tensor.empty() : tensor<3x10xi32>
        %298 = index.sub %76, %rank_52
        %299 = vector.splat %false : vector<3x10xi1>
        %300 = affine.min affine_map<(d0, d1, d2) -> (d0 - 16, d0 - 15, ((d1 + 2) ceildiv 8) * 4)>(%262, %28, %c2)
        %301 = bufferization.to_tensor %alloc_21 : memref<10x3xi64>
        %302 = arith.divsi %c579311876_i32, %c443974435_i32 : i32
        %303 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 128)>(%c5, %c12)
        %304 = index.maxs %c4, %c2
        %305 = arith.negf %cst_1 : f32
        %306 = vector.create_mask %262 : vector<3xi1>
        %307 = vector.flat_transpose %82 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %308 = math.absi %c443974435_i32 : i32
        %309 = index.sizeof
        linalg.yield %false : i1
      } -> tensor<10x11x1xi1>
      %splat_53 = tensor.splat %c0_i16 : tensor<3x10xi16>
      %264 = vector.matrix_multiply %19, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %rank_54 = tensor.rank %12 : tensor<3x10xf32>
      %265 = arith.addf %cst_3, %cst : f16
      %splat_55 = tensor.splat %c1828038969_i32 : tensor<10x11xi32>
      %266 = math.exp %8 : tensor<3xf32>
      %true_56 = index.bool.constant true
      %267 = arith.addf %cst_3, %cst_3 : f16
      %true_57 = index.bool.constant true
      %268 = arith.andi %c579311876_i32, %c443974435_i32 : i32
      %269 = tensor.empty() : tensor<i1>
      %mapped_58 = linalg.map ins(%reduced, %reduced : tensor<i1>, tensor<i1>) outs(%269 : tensor<i1>)
        (%in: i1, %in_62: i1) {
          %280 = arith.ori %false_0, %true_57 : i1
          %281 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          %alloca_63 = memref.alloca() : memref<10x11xi32>
          %282 = bufferization.clone %alloc_11 : memref<3xi1> to memref<3xi1>
          %283 = index.maxu %rank_52, %rank_52
          %284 = arith.maxf %cst_1, %cst_4 : f32
          %285 = index.maxs %76, %c2
          %286 = memref.atomic_rmw maxf %cst_4, %alloc_12[%c0, %c5] : (f32, memref<3x10xf32>) -> f32
          %c0_i64 = arith.constant 0 : i64
          %c0_i64_64 = arith.constant 0 : i64
          %287 = vector.transfer_read %14[%c10, %c12], %c0_i64_64 : tensor<3x10xi64>, vector<i64>
          %288 = arith.maxui %c0_i64, %c930426571_i64 : i64
          memref.tensor_store %16, %alloc_16 : memref<10x11xi16>
          %289 = math.expm1 %12 : tensor<3x10xf32>
          %290 = vector.splat %c0 : vector<3xindex>
          %from_elements_65 = tensor.from_elements %c0_i16, %c0_i16_22, %c0_i16, %c0_i16_22, %23, %c0_i16, %c0_i16_22, %c12747_i16, %23, %23, %23, %23, %23, %23, %c0_i16, %c0_i16, %c0_i16, %c0_i16_22, %c12747_i16, %c0_i16_22, %c12747_i16, %23, %23, %23, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %23, %c0_i16, %c0_i16, %c12747_i16, %23, %c0_i16, %c0_i16, %c12747_i16, %c0_i16, %c0_i16_22, %c0_i16, %23, %c0_i16, %c12747_i16, %c0_i16_22, %c12747_i16, %c0_i16, %c12747_i16, %c0_i16, %23, %c0_i16_22, %c0_i16, %c12747_i16, %23, %c0_i16_22, %23, %c12747_i16, %23, %c0_i16, %c0_i16_22, %c12747_i16, %c0_i16, %c0_i16, %c0_i16_22, %c0_i16, %23, %c12747_i16, %c0_i16_22, %23, %c0_i16_22, %c12747_i16, %23, %c0_i16_22, %c0_i16_22, %c12747_i16, %c0_i16, %c0_i16, %c0_i16_22, %c0_i16, %c0_i16, %c0_i16_22, %c0_i16, %c0_i16, %c0_i16_22, %c0_i16, %c0_i16_22, %c0_i16_22, %c0_i16_22, %c0_i16, %c0_i16_22, %c12747_i16, %c12747_i16, %c0_i16, %c12747_i16, %c0_i16, %23, %23, %c12747_i16, %c12747_i16, %c0_i16, %c0_i16, %23, %23, %c0_i16_22, %c0_i16, %c0_i16, %c0_i16_22, %23, %c0_i16, %c0_i16, %c0_i16_22, %23 : tensor<10x11xi16>
          %291 = index.casts %34 : index to i32
          %292 = arith.cmpi ugt, %c1610766458_i64, %c1698949014_i64 : i64
          %293 = math.cttz %11 : tensor<3x10xi64>
          %294 = math.fma %8, %10, %9 : tensor<3xf32>
          %295 = arith.maxui %c12747_i16, %23 : i16
          %296 = index.maxu %c10, %c6
          %297 = vector.transpose %105, [0, 1] : vector<3x10xi64> to vector<3x10xi64>
          %298 = memref.atomic_rmw maxu %c12747_i16, %alloc_20[%c0, %c7] : (i16, memref<3x10xi16>) -> i16
          %splat_66 = tensor.splat %true_57 : tensor<3xi1>
          %299 = index.sub %c10, %c13
          %300 = arith.divf %cst_4, %cst_4 : f32
          %301 = memref.realloc %alloc_18 : memref<3xf32> to memref<3xf32>
          %302 = arith.remf %cst, %cst_5 : f16
          %303 = math.ctpop %false_0 : i1
          %304 = math.tanh %10 : tensor<3xf32>
          %305 = vector.reduction <minsi>, %83 : vector<3xi1> into i1
          %rank_67 = tensor.rank %expanded_51 : tensor<3x1xf32>
          %306 = arith.remf %cst_3, %cst_2 : f16
          %false_68 = arith.constant false
          linalg.yield %false_68 : i1
        }
      %270 = affine.apply affine_map<(d0, d1) -> (d0)>(%rank_52, %c3)
      %271 = index.ceildivu %c13, %c1
      %272 = math.log %6 : tensor<3x10xf32>
      %273 = index.divs %c13, %c10
      %274 = memref.load %alloc_17[%c0, %c1] : memref<3x10xi64>
      %275 = index.sub %c1, %c15
      %276 = affine.for %arg0 = 0 to 104 iter_args(%arg1 = %cst_5) -> (f16) {
        affine.yield %arg1 : f16
      }
      memref.copy %alloc_16, %alloc_6 : memref<10x11xi16> to memref<10x11xi16>
      %277 = index.maxs %c11, %c3
      %alloc_59 = memref.alloc() : memref<3x10xi32>
      memref.copy %alloc_8, %alloc_59 : memref<3x10xi32> to memref<3x10xi32>
      %278 = vector.flat_transpose %55 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %279 = math.exp2 %10 : tensor<3xf32>
      %rank_60 = tensor.rank %splat : tensor<3x10xi16>
      %alloc_61 = memref.alloc() : memref<3xi64>
      memref.alloca_scope.return %alloc_61 : memref<3xi64>
    }
    %107 = index.sub %c0, %c8
    %108 = arith.andi %c1610766458_i64, %c930426571_i64 : i64
    %109 = arith.addf %cst_3, %cst : f16
    memref.store %c443974435_i32, %alloc_8[%c1, %c7] : memref<3x10xi32>
    %110 = vector.broadcast %c1610766458_i64 : i64 to vector<10xi64>
    %111 = vector.insert %110, %105 [1] : vector<10xi64> into vector<3x10xi64>
    memref.assume_alignment %alloc_7, 4 : memref<3x10xi1>
    %112 = math.atan %6 : tensor<3x10xf32>
    %113 = index.maxu %c6, %c14
    %114 = vector.transpose %82, [0] : vector<10xi32> to vector<10xi32>
    %false_24 = index.bool.constant false
    %115 = index.divs %c4, %c10
    %116 = math.atan %6 : tensor<3x10xf32>
    %117 = vector.matrix_multiply %72, %72 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
    %118 = affine.min affine_map<(d0) -> (-d0, 0)>(%rank)
    %119 = vector.bitcast %48 : vector<3x10xf16> to vector<3x10xf16>
    %true = index.bool.constant true
    affine.for %arg0 = 0 to 45 {
    }
    %120 = vector.extract %83[0] : vector<3xi1>
    %121 = math.exp2 %4 : tensor<3x10xf32>
    %122 = arith.ori %c1698949014_i64, %c1698949014_i64 : i64
    %123 = math.cos %20 : tensor<3xf32>
    vector.print %110 : vector<10xi64>
    %124 = index.castu %c1828038969_i32 : i32 to index
    %125 = arith.remf %cst_2, %cst_5 : f16
    %126 = memref.load %alloc_19[%c2, %c4] : memref<3x10xi16>
    %alloc_25 = memref.alloc() : memref<10x1xi1>
    %127 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25, %alloc_25 : memref<10x1xi1>, memref<10x1xi1>) outs(%expanded : tensor<10x11x1xi1>) {
    ^bb0(%in: i1, %in_51: i1, %out: i1):
      %259 = index.ceildivu %115, %34
      %260 = arith.andi %in_51, %false : i1
      %261 = memref.load %alloc_10[%c0, %c6] : memref<3x10xi16>
      %262 = index.casts %out : i1 to index
      memref.assume_alignment %106, 1 : memref<3xi64>
      %263 = arith.minf %cst_4, %cst_4 : f32
      vector.print %49 : vector<3x10xi1>
      %264 = math.fpowi %10, %80 : tensor<3xf32>, tensor<3xi32>
      %265 = affine.if affine_set<(d0) : (d0 * 2 >= 0)>(%c8) -> i1 {
        %286 = index.maxu %c10, %c15
        %287 = arith.remf %cst_1, %cst_4 : f32
        %288 = vector.broadcast %c1610766458_i64 : i64 to vector<10xi64>
        %289 = vector.transfer_write %288, %14[%rank, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, tensor<3x10xi64>
        %290 = vector.transpose %56, [0] : vector<3xf32> to vector<3xf32>
        %291 = memref.load %alloc_13[%c1] : memref<3xi1>
        %292 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %293 = index.maxs %262, %c7
        %294 = index.mul %c13, %63
        affine.yield %false : i1
      } else {
        %286 = vector.insertelement %c1585423334_i32, %82[%c7 : index] : vector<10xi32>
        %expanded_54 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<3x10xi64> into tensor<3x10x1xi64>
        %287 = arith.remf %cst, %cst : f16
        %288 = vector.insertelement %cst_3, %72[%262 : index] : vector<10xf16>
        %289 = arith.ori %c0_i16_22, %c0_i16_22 : i16
        %290 = arith.remsi %c1610766458_i64, %c1610766458_i64 : i64
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_55 = arith.constant 0 : i64
        %291 = vector.transfer_read %from_elements[%63, %115], %c0_i64_55 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x10xi64>, vector<3xi64>
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %49, %83 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi1>, vector<3xi1>
        affine.yield %false_24 : i1
      }
      %266 = arith.divui %c1610766458_i64, %c1698949014_i64 : i64
      %267 = vector.splat %cst_3 : vector<3x10xf16>
      %268 = arith.divf %cst, %cst_2 : f16
      %269 = arith.remf %cst_5, %cst_3 : f16
      %270 = arith.minui %23, %c0_i16_22 : i16
      %271 = math.expm1 %6 : tensor<3x10xf32>
      %272 = math.expm1 %10 : tensor<3xf32>
      %273 = arith.cmpi slt, %c1610766458_i64, %c1610766458_i64 : i64
      %274 = index.maxu %259, %107
      %275 = vector.reduction <minui>, %110 : vector<10xi64> into i64
      %276 = arith.maxf %cst, %cst_3 : f16
      %277 = math.ipowi %c443974435_i32, %c1828038969_i32 : i32
      %alloca_52 = memref.alloca() : memref<3xi16>
      affine.store %c1610766458_i64, %106[%c11] : memref<3xi64>
      %278 = index.castu %107 : index to i32
      %279 = arith.minsi %c579311876_i32, %c1585423334_i32 : i32
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<10x11x1xi1>) {
      ^bb0(%out_54: i1):
        %splat_55 = tensor.splat %in : tensor<10x11xi1>
        %286 = vector.insert %out_54, %83 [0] : i1 into vector<3xi1>
        %287 = vector.broadcast %false : i1 to vector<10xi1>
        %288 = vector.multi_reduction <xor>, %49, %287 [0] : vector<3x10xi1> to vector<10xi1>
        %289 = arith.minui %c1610766458_i64, %c1698949014_i64 : i64
        %290 = arith.minsi %true, %in_51 : i1
        %dest_56, %accumulated_value_57 = vector.scan <or>, %49, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<3x10xi1>, vector<10xi1>
        %291 = vector.reduction <minui>, %110 : vector<10xi64> into i64
        %292 = arith.shrui %out_54, %true : i1
        %293 = vector.broadcast %cst_1 : f32 to vector<3x3xf32>
        %294 = vector.outerproduct %55, %55, %293 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
        %295 = arith.maxui %false_24, %in : i1
        %296 = memref.atomic_rmw addi %c0_i16, %alloc_10[%c0, %c1] : (i16, memref<3x10xi16>) -> i16
        memref.store %cst_4, %alloc_18[%c2] : memref<3xf32>
        memref.store %c0_i16_22, %alloc_20[%c0, %c8] : memref<3x10xi16>
        %297 = math.cos %12 : tensor<3x10xf32>
        %298 = vector.multi_reduction <add>, %72, %cst [0] : vector<10xf16> to f16
        %299 = tensor.empty() : tensor<10x3xi64>
        %300 = tensor.empty() : tensor<3x3xi64>
        %301 = linalg.matmul ins(%1, %299 : tensor<3x10xi64>, tensor<10x3xi64>) outs(%300 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %302 = vector.broadcast %cst_4 : f32 to vector<f32>
        %303 = vector.transfer_write %302, %9[%rank] : vector<f32>, tensor<3xf32>
        %rank_58 = tensor.rank %7 : tensor<10x11xi16>
        %304 = arith.mulf %cst_4, %cst_4 : f32
        %rank_59 = tensor.rank %14 : tensor<3x10xi64>
        %305 = vector.reduction <add>, %83 : vector<3xi1> into i1
        %306 = arith.andi %c1610766458_i64, %c1610766458_i64 : i64
        %307 = arith.negf %cst_5 : f16
        memref.copy %alloc_16, %alloc_6 : memref<10x11xi16> to memref<10x11xi16>
        %308 = index.ceildivu %c3, %28
        %309 = vector.insertelement %cst_1, %55[%274 : index] : vector<3xf32>
        %310 = affine.max affine_map<(d0) -> ((d0 mod 8) mod 128, (d0 floordiv 8) mod 2)>(%113)
        %311 = arith.remf %cst_1, %cst_4 : f32
        %312 = arith.minui %c443974435_i32, %c579311876_i32 : i32
        %313 = arith.divui %c579311876_i32, %c1585423334_i32 : i32
        %314 = arith.minui %false_24, %in : i1
        %alloc_60 = memref.alloc() : memref<10x3xi64>
        memref.copy %alloc_21, %alloc_60 : memref<10x3xi64> to memref<10x3xi64>
        linalg.yield %true : i1
      } -> tensor<10x11x1xi1>
      %281 = math.powf %4, %12 : tensor<3x10xf32>
      %282 = affine.if affine_set<(d0) : (d0 * 2 >= 0)>(%c15) -> memref<3x10xi16> {
        %286 = math.ceil %4 : tensor<3x10xf32>
        %287 = arith.cmpi ugt, %out, %true : i1
        %288 = arith.xori %c1585423334_i32, %c1585423334_i32 : i32
        %289 = vector.broadcast %23 : i16 to vector<i16>
        vector.transfer_write %289, %alloc_6[%c14, %c15] : vector<i16>, memref<10x11xi16>
        memref.copy %alloc_10, %alloc : memref<3x10xi16> to memref<3x10xi16>
        bufferization.dealloc_tensor %10 : tensor<3xf32>
        %290 = vector.broadcast %23 : i16 to vector<11xi16>
        vector.transfer_write %290, %alloc_16[%115, %76] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, memref<10x11xi16>
        %291 = vector.broadcast %c1698949014_i64 : i64 to vector<3xi64>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %110, %105, %291 : vector<10xi64>, vector<3x10xi64> into vector<3xi64>
        affine.yield %alloc_19 : memref<3x10xi16>
      } else {
        %286 = index.add %34, %107
        %splat_54 = tensor.splat %cst_3 : tensor<3x10xf16>
        %287 = vector.broadcast %cst_4 : f32 to vector<3xf32>
        %288 = vector.fma %287, %287, %56 : vector<3xf32>
        %289 = arith.remf %cst_4, %cst_1 : f32
        %290 = vector.broadcast %cst_4 : f32 to vector<3x10xf32>
        %291 = vector.fma %290, %290, %290 : vector<3x10xf32>
        %292 = affine.apply affine_map<(d0, d1) -> (d1 + 32)>(%96, %63)
        %293 = math.ipowi %0, %3 : tensor<10x11xi1>
        %294 = arith.remsi %out, %false : i1
        affine.yield %alloc : memref<3x10xi16>
      }
      %collapsed_53 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
      %283 = arith.mulf %cst_2, %cst_5 : f16
      %284 = math.ctpop %23 : i16
      %285 = arith.maxf %cst_5, %cst : f16
      linalg.yield %out : i1
    } -> tensor<10x11x1xi1>
    %128 = math.absi %15 : tensor<3x10xi1>
    %129 = index.castu %c11 : index to i32
    %130 = arith.shli %c0_i16, %c0_i16_22 : i16
    %131 = arith.minsi %true, %false_0 : i1
    %true_26 = index.bool.constant true
    %132 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c14, %c2, %107, %63)
    %133 = math.exp2 %21 : tensor<f32>
    %134 = math.cos %6 : tensor<3x10xf32>
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
    %135 = vector.extract %72[0] : vector<10xf16>
    %136 = arith.shli %false_24, %false_24 : i1
    %137 = index.floordivs %c4, %c15
    %138 = vector.reduction <mul>, %82 : vector<10xi32> into i32
    %139 = math.cos %22 : tensor<f32>
    %140 = arith.xori %false_0, %false : i1
    %141 = arith.divui %c12747_i16, %c12747_i16 : i16
    %142 = arith.divf %cst_1, %cst_1 : f32
    %splat_27 = tensor.splat %c1828038969_i32 : tensor<3xi32>
    %143 = index.maxu %c15, %107
    %144 = arith.muli %true, %false : i1
    %145 = vector.reduction <mul>, %72 : vector<10xf16> into f16
    %146 = math.exp2 %22 : tensor<f32>
    %alloc_28 = memref.alloc() : memref<3xf32>
    memref.copy %alloc_18, %alloc_28 : memref<3xf32> to memref<3xf32>
    %147 = arith.divui %c1698949014_i64, %c1698949014_i64 : i64
    %148 = memref.atomic_rmw minf %cst_4, %alloc_12[%c2, %c1] : (f32, memref<3x10xf32>) -> f32
    %expanded_29 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<10x11xi1> into tensor<10x11x1xi1>
    %149 = arith.minsi %c443974435_i32, %c443974435_i32 : i32
    %150 = arith.xori %c930426571_i64, %c1610766458_i64 : i64
    %151 = math.roundeven %10 : tensor<3xf32>
    affine.store %c930426571_i64, %alloc_17[%c12, %c9] : memref<3x10xi64>
    %152 = affine.for %arg0 = 0 to 124 iter_args(%arg1 = %alloc_7) -> (memref<3x10xi1>) {
      affine.yield %alloc_7 : memref<3x10xi1>
    }
    %153 = vector.bitcast %50 : vector<3x10xi32> to vector<3x10xi32>
    memref.store %c0_i16, %alloc_19[%c2, %c8] : memref<3x10xi16>
    %154 = math.roundeven %cst_4 : f32
    %false_30 = arith.constant false
    %155 = vector.transfer_read %15[%c8, %c8], %false_30 : tensor<3x10xi1>, vector<i1>
    %156 = index.floordivs %96, %c1
    %alloc_31 = memref.alloc() : memref<1x10xi1>
    %157 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_31 : memref<1x10xi1>) outs(%expanded : tensor<10x11x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %259 = vector.broadcast %false_0 : i1 to vector<10x10xi1>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %49, %49, %259 : vector<3x10xi1>, vector<3x10xi1> into vector<10x10xi1>
      %261 = index.maxs %156, %143
      %262 = vector.multi_reduction <or>, %50, %82 [0] : vector<3x10xi32> to vector<10xi32>
      %263 = tensor.empty(%c12, %132) : tensor<?x?xf32>
      %264 = arith.xori %true, %in : i1
      %265 = math.absi %5 : tensor<10x11xi16>
      %alloca_51 = memref.alloca() : memref<3x10xf32>
      %alloc_52 = memref.alloc() : memref<3x10xi64>
      %266 = arith.shli %false_24, %in : i1
      %267 = math.atan2 %cst_2, %cst : f16
      %268 = math.absi %c0_i16 : i16
      %269 = index.maxs %63, %261
      memref.assume_alignment %alloc, 2 : memref<3x10xi16>
      %270 = math.ipowi %1, %14 : tensor<3x10xi64>
      %271 = math.ipowi %16, %16 : tensor<10x11xi16>
      %272 = arith.remf %cst_2, %cst_3 : f16
      %273 = index.maxu %118, %118
      %274 = memref.load %alloc_12[%c2, %c8] : memref<3x10xf32>
      %275 = index.mul %96, %76
      %276 = math.absi %14 : tensor<3x10xi64>
      %277 = vector.broadcast %c1698949014_i64 : i64 to vector<3xi64>
      %278 = vector.transfer_write %277, %14[%132, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, tensor<3x10xi64>
      %279 = index.casts %c4 : index to i32
      %280 = arith.divui %false_0, %true_26 : i1
      %cast_53 = tensor.cast %3 : tensor<10x11xi1> to tensor<?x?xi1>
      affine.store %false_24, %alloc_13[%c15] : memref<3xi1>
      %281 = math.ctpop %in : i1
      %282 = arith.minui %out, %false_30 : i1
      %283 = tensor.empty() : tensor<3x10xi32>
      %284 = math.fpowi %12, %283 : tensor<3x10xf32>, tensor<3x10xi32>
      %alloc_54 = memref.alloc() : memref<10x11xi32>
      %285 = memref.atomic_rmw maxu %c930426571_i64, %alloc_21[%c0, %c2] : (i64, memref<10x3xi64>) -> i64
      %286 = arith.subi %true, %false_24 : i1
      %287 = vector.broadcast %c1610766458_i64 : i64 to vector<3x10xi64>
      linalg.yield %in : i1
    } -> tensor<10x11x1xi1>
    %158 = vector.flat_transpose %83 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %159 = arith.shrui %c12747_i16, %23 : i16
    %160 = arith.shli %c930426571_i64, %c1610766458_i64 : i64
    %161 = vector.transpose %49, [1, 0] : vector<3x10xi1> to vector<10x3xi1>
    %162 = arith.remsi %false_24, %false : i1
    %163 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c12)
    %164 = arith.minf %cst, %cst_3 : f16
    %165 = arith.floordivsi %c1610766458_i64, %c1698949014_i64 : i64
    %166 = index.maxs %c14, %c2
    %167 = math.round %8 : tensor<3xf32>
    %168 = index.maxu %96, %c3
    %cast_32 = tensor.cast %from_elements : tensor<3x10xi64> to tensor<?x?xi64>
    %169 = bufferization.to_tensor %alloc_17 : memref<3x10xi64>
    %170 = vector.broadcast %cst_3 : f16 to vector<10x10xf16>
    %171 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %119, %51, %170 : vector<3x10xf16>, vector<3x10xf16> into vector<10x10xf16>
    %172 = vector.broadcast %c0_i16_22 : i16 to vector<3xi16>
    %173 = math.round %12 : tensor<3x10xf32>
    %174 = scf.index_switch %163 -> index 
    case 1 {
      %259 = vector.bitcast %19 : vector<1xi1> to vector<1xi1>
      %260 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * 2) floordiv 16)>(%156, %c15, %rank)
      %261 = arith.addi %c1610766458_i64, %c1698949014_i64 : i64
      vector.print %119 : vector<3x10xf16>
      %splat_51 = tensor.splat %cst_5 : tensor<10x11xf16>
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d1 ceildiv 8 + d0)>(%163, %rank, %107, %124)
      memref.assume_alignment %alloc_9, 8 : memref<3x10xf16>
      %263 = arith.divui %c12747_i16, %c0_i16 : i16
      %264 = arith.minui %c579311876_i32, %c443974435_i32 : i32
      %265 = vector.broadcast %c1828038969_i32 : i32 to vector<10x10xi32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %50, %50, %265 : vector<3x10xi32>, vector<3x10xi32> into vector<10x10xi32>
      %267 = arith.remf %cst_2, %cst : f16
      %268 = arith.xori %c1828038969_i32, %c443974435_i32 : i32
      %269 = math.fma %cst_1, %cst_1, %cst_1 : f32
      %270 = memref.load %alloc_7[%c0, %c9] : memref<3x10xi1>
      %271 = vector.extract_strided_slice %51 {offsets = [1], sizes = [2], strides = [1]} : vector<3x10xf16> to vector<2x10xf16>
      %272 = vector.create_mask %c6 : vector<3xi1>
      scf.yield %c7 : index
    }
    case 2 {
      %259 = vector.transpose %158, [0] : vector<3xi1> to vector<3xi1>
      affine.for %arg0 = 0 to 26 {
      }
      %260 = arith.divsi %c1610766458_i64, %c930426571_i64 : i64
      %261 = vector.broadcast %c12747_i16 : i16 to vector<10x11xi16>
      %262 = math.fma %8, %8, %9 : tensor<3xf32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %19, %19, %true_26 : vector<1xi1>, vector<1xi1> into i1
      %264 = arith.divf %cst_1, %cst_1 : f32
      %265 = math.fpowi %10, %13 : tensor<3xf32>, tensor<3xi32>
      %true_51 = arith.constant true
      %266 = memref.realloc %106 : memref<3xi64> to memref<3xi64>
      %splat_52 = tensor.splat %c1585423334_i32 : tensor<3x10xi32>
      affine.store %23, %alloc_6[%c6, %c8] : memref<10x11xi16>
      %collapsed_53 = tensor.collapse_shape %3 [[0, 1]] : tensor<10x11xi1> into tensor<110xi1>
      %267 = math.tanh %cst_5 : f16
      %268 = arith.ori %23, %c0_i16_22 : i16
      %269 = vector.extract %55[1] : vector<3xf32>
      scf.yield %107 : index
    }
    default {
      %259 = index.add %c10, %c6
      %260 = vector.broadcast %124 : index to vector<1xindex>
      %261 = vector.broadcast %c1610766458_i64 : i64 to vector<1xi64>
      vector.scatter %alloc_21[%c7, %c1] [%260], %19, %261 : memref<10x3xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %262 = arith.cmpi sgt, %c1828038969_i32, %c1585423334_i32 : i32
      %rank_51 = tensor.rank %1 : tensor<3x10xi64>
      %false_52 = arith.constant false
      %false_53 = arith.constant false
      %263 = vector.transfer_read %3[%c11, %c5], %false_53 : tensor<10x11xi1>, vector<i1>
      %264 = affine.if affine_set<(d0) : (d0 floordiv 2 >= 0, ((d0 ceildiv 128) mod 64) * -4 - 64 >= 0, ((d0 ceildiv 128) mod 64) * -4 == 0)>(%c11) -> memref<3x10xi1> {
        memref.assume_alignment %alloc_7, 1 : memref<3x10xi1>
        %274 = vector.reduction <add>, %110 : vector<10xi64> into i64
        %275 = vector.broadcast %cst_1 : f32 to vector<3x10xf32>
        %276 = vector.fma %275, %275, %275 : vector<3x10xf32>
        %277 = math.floor %22 : tensor<f32>
        %278 = arith.xori %23, %c0_i16_22 : i16
        %279 = math.round %8 : tensor<3xf32>
        %true_55 = arith.constant true
        %280 = math.ctlz %13 : tensor<3xi32>
        affine.yield %alloc_7 : memref<3x10xi1>
      } else {
        %274 = arith.minf %cst_1, %cst_1 : f32
        %splat_55 = tensor.splat %c443974435_i32 : tensor<3x10xi32>
        %alloca_56 = memref.alloca() : memref<10x11xf16>
        %275 = vector.extract %119[1] : vector<3x10xf16>
        %276 = affine.min affine_map<(d0, d1) -> (d1 + d1 - 4, (((d1 - 4) * 2) mod 32) * 2 - ((((d1 - 4) * 2) mod 32) * 2 - 1), d1 - 4, d1 - 4)>(%c6, %c10)
        %277 = arith.remf %cst_4, %cst_1 : f32
        %278 = math.ctpop %7 : tensor<10x11xi16>
        %279 = vector.broadcast %c579311876_i32 : i32 to vector<10x10xi32>
        %280 = vector.outerproduct %82, %82, %279 {kind = #vector.kind<maxui>} : vector<10xi32>, vector<10xi32>
        affine.yield %alloc_7 : memref<3x10xi1>
      }
      %265 = math.ctpop %reduced : tensor<i1>
      %266 = affine.min affine_map<(d0) -> (d0 + 3, d0)>(%c14)
      %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 32, (d1 mod 32) * 64)>(%113, %132, %c4, %137)
      %268 = arith.remf %cst_4, %cst_4 : f32
      %269 = math.powf %8, %9 : tensor<3xf32>
      %alloc_54 = memref.alloc() : memref<10x11xi1>
      %270 = math.absf %12 : tensor<3x10xf32>
      %271 = index.divu %96, %143
      %272 = index.ceildivs %28, %124
      %273 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 4) floordiv 64 - (d1 ceildiv 4) mod 8, (d1 ceildiv 4) mod 8 - d1 ceildiv 4 - 4, (d1 ceildiv 4) mod 8 - d1 ceildiv 4)>(%272, %143)
      scf.yield %c6 : index
    }
    %175 = vector.bitcast %82 : vector<10xi32> to vector<10xi32>
    %176 = vector.flat_transpose %55 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    %177 = index.sizeof
    %178 = arith.cmpf ult, %cst_4, %cst_1 : f32
    %179 = math.ipowi %15, %15 : tensor<3x10xi1>
    %180 = math.log2 %4 : tensor<3x10xf32>
    memref.copy %alloc_14, %alloc_17 : memref<3x10xi64> to memref<3x10xi64>
    %181 = arith.xori %false, %false_0 : i1
    %182 = math.atan2 %10, %9 : tensor<3xf32>
    %183 = arith.cmpf ord, %cst, %cst : f16
    %184 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %185 = vector.fma %184, %176, %184 : vector<3xf32>
    %186 = index.castu %107 : index to i32
    affine.store %c443974435_i32, %alloc_8[%c4, %c6] : memref<3x10xi32>
    %187 = vector.splat %143 : vector<3x10xindex>
    %188 = vector.broadcast %c0_i16 : i16 to vector<i16>
    vector.transfer_write %188, %alloc_10[%163, %rank] : vector<i16>, memref<3x10xi16>
    scf.if %false_30 {
      %259 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %259, %alloc_11[%118] : vector<i1>, memref<3xi1>
      %260 = arith.remui %false_24, %true_26 : i1
      %261 = bufferization.to_tensor %106 : memref<3xi64>
      %262 = vector.reduction <minf>, %117 : vector<1xf16> into f16
      %inserted_51 = tensor.insert %c579311876_i32 into %13[%c0] : tensor<3xi32>
      %263 = arith.ceildivsi %true, %false_24 : i1
      %264 = vector.reduction <maxf>, %184 : vector<3xf32> into f32
      %265 = memref.load %alloc_14[%c0, %c6] : memref<3x10xi64>
    }
    %189 = index.castu %c0_i16 : i16 to index
    %190 = index.casts %23 : i16 to index
    %191 = arith.maxui %false_30, %false_0 : i1
    %192 = arith.shli %23, %c0_i16_22 : i16
    %inserted = tensor.insert %false_30 into %18[] : tensor<i1>
    %193 = math.atan2 %20, %8 : tensor<3xf32>
    %194 = index.add %113, %166
    %195 = math.atan %12 : tensor<3x10xf32>
    affine.store %c0_i16_22, %alloc_19[%c8, %c10] : memref<3x10xi16>
    %196 = memref.realloc %alloc_11 : memref<3xi1> to memref<1xi1>
    %alloc_33 = memref.alloc() : memref<3xf32>
    memref.copy %alloc_18, %alloc_33 : memref<3xf32> to memref<3xf32>
    %197 = tensor.empty() : tensor<3x10xi32>
    %198 = vector.extract %105[1] : vector<3x10xi64>
    %199 = index.divu %113, %c0
    %200 = arith.ori %false_0, %true_26 : i1
    affine.for %arg0 = 0 to 66 {
    }
    %201 = math.log2 %20 : tensor<3xf32>
    %202 = math.fma %9, %10, %10 : tensor<3xf32>
    %203 = index.sub %rank, %c5
    %204 = math.powf %21, %22 : tensor<f32>
    %205 = arith.maxsi %c0_i16, %23 : i16
    %cast_34 = tensor.cast %14 : tensor<3x10xi64> to tensor<?x?xi64>
    %206 = math.ctpop %13 : tensor<3xi32>
    %rank_35 = tensor.rank %14 : tensor<3x10xi64>
    %207 = math.round %cst_4 : f32
    %208 = index.maxs %c13, %190
    affine.for %arg0 = 0 to 12 {
    }
    %209 = index.divs %c12, %194
    %210 = vector.bitcast %119 : vector<3x10xf16> to vector<3x10xf16>
    %from_elements_36 = tensor.from_elements %c1610766458_i64, %c930426571_i64, %c1610766458_i64 : tensor<3xi64>
    %211 = index.floordivs %76, %143
    %alloc_37 = memref.alloc() : memref<3x10xf32>
    memref.copy %alloc_12, %alloc_37 : memref<3x10xf32> to memref<3x10xf32>
    %212 = vector.create_mask %132, %168 : vector<3x10xi1>
    %alloc_38 = memref.alloc() : memref<3xi64>
    memref.copy %106, %alloc_38 : memref<3xi64> to memref<3xi64>
    %213 = vector.broadcast %c443974435_i32 : i32 to vector<3xi32>
    %dest_39, %accumulated_value_40 = vector.scan <minsi>, %50, %213 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi32>, vector<3xi32>
    %214 = math.tanh %cst_2 : f16
    %215 = memref.load %alloc_10[%c0, %c8] : memref<3x10xi16>
    %216 = math.exp %cst_2 : f16
    %alloc_41 = memref.alloc() : memref<10x11xf32>
    %217 = arith.floordivsi %c0_i16, %c0_i16 : i16
    %218 = affine.min affine_map<(d0, d1) -> (d1 * -2, d1 mod 64 - (d0 ceildiv 8) ceildiv 128, d1 * -8, d0 - 4)>(%115, %76)
    %cst_42 = arith.constant 1.200800e+04 : f16
    %219 = arith.minui %c1698949014_i64, %c1610766458_i64 : i64
    %220 = index.castu %c1585423334_i32 : i32 to index
    %221 = math.roundeven %12 : tensor<3x10xf32>
    %splat_43 = tensor.splat %true_26 : tensor<3x10xi1>
    %222 = index.sizeof
    %223 = arith.muli %true, %false_24 : i1
    %224 = vector.extract_strided_slice %55 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
    affine.store %c1828038969_i32, %alloc_15[%c4] : memref<3xi32>
    %225 = vector.reduction <maxf>, %185 : vector<3xf32> into f32
    %226 = math.ipowi %true, %true : i1
    %227 = vector.maskedload %alloc_11[%c2], %83, %158 : memref<3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %228 = vector.broadcast %c1698949014_i64 : i64 to vector<i64>
    %229 = vector.transfer_write %228, %1[%118, %222] : vector<i64>, tensor<3x10xi64>
    %cst_44 = arith.constant 1.000000e+00 : f32
    %cst_45 = arith.constant 0.000000e+00 : f32
    %230 = vector.transfer_read %collapsed[%rank_35], %cst_45 : tensor<30xf32>, vector<f32>
    %231 = vector.broadcast %cst_1 : f32 to vector<f32>
    %232 = vector.transfer_write %231, %6[%168, %211] : vector<f32>, tensor<3x10xf32>
    %collapsed_46 = tensor.collapse_shape %5 [[0, 1]] : tensor<10x11xi16> into tensor<110xi16>
    %233 = vector.broadcast %cst_1 : f32 to vector<3x10xf32>
    %234 = vector.fma %233, %233, %233 : vector<3x10xf32>
    %235 = math.log2 %cst_2 : f16
    %236 = vector.reduction <maxf>, %176 : vector<3xf32> into f32
    %237 = arith.divui %true_26, %true_26 : i1
    %238 = arith.shrsi %c1610766458_i64, %c1698949014_i64 : i64
    %239 = memref.atomic_rmw assign %c12747_i16, %alloc_10[%c1, %c9] : (i16, memref<3x10xi16>) -> i16
    %240 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 4) mod 16, d3)>(%166, %137, %c6, %c12)
    %241 = memref.realloc %alloc_18 : memref<3xf32> to memref<11xf32>
    %242 = arith.minui %c0_i16_22, %c12747_i16 : i16
    %243 = index.floordivs %63, %194
    %244 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<10x11x1xi1>) {
    ^bb0(%out: i1):
      %259 = arith.divui %true, %false : i1
      %260 = index.divu %c3, %168
      %261 = index.ceildivu %208, %c8
      %rank_51 = tensor.rank %11 : tensor<3x10xi64>
      %262 = math.tan %4 : tensor<3x10xf32>
      %263 = arith.minsi %c0_i16, %c0_i16_22 : i16
      %264 = math.round %8 : tensor<3xf32>
      %265 = affine.if affine_set<(d0) : (d0 mod 32 >= 0, d0 ceildiv 64 >= 0)>(%c14) -> i16 {
        %289 = vector.bitcast %51 : vector<3x10xf16> to vector<3x10xf16>
        %290 = vector.reduction <add>, %82 : vector<10xi32> into i32
        %291 = math.fma %9, %8, %8 : tensor<3xf32>
        %292 = math.tanh %12 : tensor<3x10xf32>
        %293 = vector.insert %72, %210 [2] : vector<10xf16> into vector<3x10xf16>
        %294 = vector.extract %175[5] : vector<10xi32>
        %295 = vector.create_mask %c8, %c10 : vector<3x10xi1>
        %296 = arith.minf %cst_2, %cst_3 : f16
        affine.yield %23 : i16
      } else {
        %289 = math.ctpop %16 : tensor<10x11xi16>
        %290 = vector.insert %false_0, %83 [0] : i1 into vector<3xi1>
        %291 = math.ctlz %false_0 : i1
        %292 = math.log10 %9 : tensor<3xf32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %293 = vector.transfer_read %1[%76, %c0], %c0_i64 : tensor<3x10xi64>, vector<i64>
        memref.assume_alignment %alloc_6, 1 : memref<10x11xi16>
        %294 = math.ceil %8 : tensor<3xf32>
        %295 = vector.insert %72, %51 [2] : vector<10xf16> into vector<3x10xf16>
        affine.yield %c0_i16_22 : i16
      }
      %266 = arith.shli %true_26, %false_24 : i1
      %267 = arith.remf %cst_1, %cst_4 : f32
      %268 = index.maxu %c3, %260
      memref.copy %alloc, %alloc_10 : memref<3x10xi16> to memref<3x10xi16>
      %269 = math.roundeven %cst_3 : f16
      memref.store %c930426571_i64, %106[%c1] : memref<3xi64>
      %alloca_52 = memref.alloca() : memref<3xi64>
      %270 = vector.broadcast %c1610766458_i64 : i64 to vector<i64>
      %271 = vector.transfer_write %270, %14[%208, %177] : vector<i64>, tensor<3x10xi64>
      %alloc_53 = memref.alloc() : memref<3x10xf16>
      %272 = math.log2 %8 : tensor<3xf32>
      %273 = tensor.empty() : tensor<3x10xi64>
      %mapped_54 = linalg.map ins(%14, %14 : tensor<3x10xi64>, tensor<3x10xi64>) outs(%273 : tensor<3x10xi64>)
        (%in: i64, %in_55: i64) {
          %splat_56 = tensor.splat %c0_i16_22 : tensor<10x11xi16>
          %289 = arith.xori %23, %c0_i16 : i16
          %290 = memref.atomic_rmw ori %c930426571_i64, %alloc_17[%c1, %c5] : (i64, memref<3x10xi64>) -> i64
          %291 = vector.extract %158[2] : vector<3xi1>
          %292 = math.roundeven %cst_1 : f32
          %293 = math.round %22 : tensor<f32>
          %294 = arith.minui %c1610766458_i64, %c930426571_i64 : i64
          %295 = index.divu %c6, %c11
          %296 = math.ctpop %c443974435_i32 : i32
          %297 = memref.atomic_rmw andi %c1828038969_i32, %alloc_8[%c2, %c5] : (i32, memref<3x10xi32>) -> i32
          %298 = math.roundeven %12 : tensor<3x10xf32>
          %299 = math.exp2 %8 : tensor<3xf32>
          %300 = bufferization.to_tensor %alloc_9 : memref<3x10xf16>
          %301 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 16) floordiv 128, (-(d1 floordiv 2)) mod 64, d0 floordiv 16)>(%c1, %261)
          %302 = math.atan %8 : tensor<3xf32>
          %303 = arith.minui %false_30, %false_24 : i1
          %304 = math.powf %47, %300 : tensor<3x10xf16>
          %305 = affine.load %alloc_7[%c11, %c2] : memref<3x10xi1>
          %306 = arith.ceildivsi %in, %in : i64
          memref.store %cst_4, %alloc_12[%c1, %c0] : memref<3x10xf32>
          %307 = arith.muli %false_30, %false_24 : i1
          %308 = arith.minf %cst_5, %cst_2 : f16
          %309 = math.ctpop %false_30 : i1
          %extracted = tensor.extract %4[%c2, %c2] : tensor<3x10xf32>
          %310 = math.absi %false : i1
          %311 = bufferization.to_tensor %106 : memref<3xi64>
          %312 = tensor.empty() : tensor<3x10xf32>
          %313 = arith.andi %false, %true_26 : i1
          %314 = math.ctpop %expanded : tensor<10x11x1xi1>
          %315 = vector.reduction <minf>, %55 : vector<3xf32> into f32
          %316 = math.fma %312, %4, %6 : tensor<3x10xf32>
          %317 = math.atan %cst_4 : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %274 = math.fma %12, %4, %4 : tensor<3x10xf32>
      %275 = vector.broadcast %23 : i16 to vector<10xi16>
      %276 = vector.broadcast %false : i1 to vector<10xi1>
      %277 = vector.maskedload %alloc_10[%c0, %c7], %276, %275 : memref<3x10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %278 = vector.extract_strided_slice %72 {offsets = [0], sizes = [6], strides = [1]} : vector<10xf16> to vector<6xf16>
      %279 = index.add %203, %c0
      %280 = arith.remf %cst_1, %cst_44 : f32
      %281 = bufferization.clone %alloc_18 : memref<3xf32> to memref<3xf32>
      %282 = arith.floordivsi %c0_i16, %c0_i16 : i16
      %283 = arith.ori %false, %true_26 : i1
      %284 = math.roundeven %12 : tensor<3x10xf32>
      %285 = math.atan %22 : tensor<f32>
      %286 = math.exp2 %collapsed : tensor<30xf32>
      %287 = affine.max affine_map<(d0, d1, d2) -> (d1, 0, d1 - 16)>(%261, %c10, %rank_51)
      %288 = memref.load %alloc_14[%c1, %c7] : memref<3x10xi64>
      linalg.yield %false_24 : i1
    } -> tensor<10x11x1xi1>
    %245 = math.ipowi %splat_43, %15 : tensor<3x10xi1>
    %alloc_47 = memref.alloc() : memref<1x11xi1>
    %246 = tensor.empty() : tensor<11x10xi1>
    %alloc_48 = memref.alloc() : memref<1xi1>
    %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %246, %alloc_48 : memref<1x11xi1>, tensor<11x10xi1>, memref<1xi1>) outs(%expanded_29 : tensor<10x11x1xi1>) {
    ^bb0(%in: i1, %in_51: i1, %in_52: i1, %out: i1):
      %259 = math.ctpop %18 : tensor<i1>
      %260 = arith.ori %in, %false_24 : i1
      %261 = math.atan %4 : tensor<3x10xf32>
      %262 = vector.broadcast %cst_4 : f32 to vector<1xf32>
      %263 = vector.transfer_write %262, %6[%c8, %194] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<3x10xf32>
      %264 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
      %265 = vector.outerproduct %262, %262, %264 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %266 = vector.broadcast %cst_3 : f16 to vector<10x10xf16>
      %267 = vector.outerproduct %72, %72, %266 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
      memref.store %c0_i16_22, %alloc[%c0, %c4] : memref<3x10xi16>
      %268 = arith.cmpi ne, %c0_i16, %23 : i16
      %269 = tensor.empty() : tensor<3x10xi1>
      %270 = vector.broadcast %23 : i16 to vector<10x11xi16>
      %271 = vector.broadcast %in : i1 to vector<10x11xi1>
      %272 = vector.broadcast %c579311876_i32 : i32 to vector<10x11xi32>
      %273 = vector.gather %alloc[%c11, %c3] [%272], %271, %270 : memref<3x10xi16>, vector<10x11xi32>, vector<10x11xi1>, vector<10x11xi16> into vector<10x11xi16>
      %274 = vector.bitcast %48 : vector<3x10xf16> to vector<3x10xf16>
      %275 = index.sizeof
      %276 = arith.shrsi %c579311876_i32, %c1828038969_i32 : i32
      %277 = index.castu %132 : index to i32
      %278 = math.ctlz %23 : i16
      %279 = arith.mulf %cst_44, %cst_44 : f32
      %280 = arith.remf %cst_3, %cst_5 : f16
      %281 = arith.floordivsi %in_52, %false_24 : i1
      %282 = arith.minf %cst_5, %cst : f16
      %283 = vector.broadcast %c930426571_i64 : i64 to vector<3xi64>
      %284 = math.absi %splat_43 : tensor<3x10xi1>
      %285 = index.maxu %240, %c15
      %collapsed_53 = tensor.collapse_shape %4 [[0, 1]] : tensor<3x10xf32> into tensor<30xf32>
      %286 = math.expm1 %12 : tensor<3x10xf32>
      %287 = index.maxs %143, %203
      %extracted = tensor.extract %11[%c1, %c8] : tensor<3x10xi64>
      %288 = index.divu %287, %c4
      scf.execute_region {
        bufferization.dealloc_tensor %20 : tensor<3xf32>
        %293 = vector.broadcast %c0_i16 : i16 to vector<11xi16>
        %294 = vector.broadcast %in_51 : i1 to vector<11xi1>
        %295 = vector.maskedload %alloc_10[%c1, %c6], %294, %293 : memref<3x10xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
        %296 = arith.andi %c930426571_i64, %c930426571_i64 : i64
        %297 = math.tanh %8 : tensor<3xf32>
        %298 = math.atan %10 : tensor<3xf32>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %51, %72 {inclusive = false, reduction_dim = 0 : i64} : vector<3x10xf16>, vector<10xf16>
        %299 = memref.load %alloc_10[%c2, %c3] : memref<3x10xi16>
        %300 = math.atan2 %22, %21 : tensor<f32>
        %301 = arith.shli %c1585423334_i32, %c1585423334_i32 : i32
        %302 = arith.maxui %in_52, %in : i1
        %303 = index.floordivs %113, %107
        %304 = math.roundeven %12 : tensor<3x10xf32>
        %305 = vector.extract_strided_slice %110 {offsets = [4], sizes = [6], strides = [1]} : vector<10xi64> to vector<6xi64>
        %306 = vector.extract %273[0] : vector<10x11xi16>
        %307 = arith.shrsi %false_0, %false_24 : i1
        %308 = vector.load %106[%c2] : memref<3xi64>, vector<3x10xi64>
        scf.yield
      }
      %289 = memref.load %alloc_10[%c0, %c7] : memref<3x10xi16>
      %290 = vector.extract %117[0] : vector<1xf16>
      %291 = vector.broadcast %c1585423334_i32 : i32 to vector<3xi32>
      %dest_54, %accumulated_value_55 = vector.scan <maxui>, %50, %291 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi32>, vector<3xi32>
      %292 = math.log2 %cst_5 : f16
      linalg.yield %in : i1
    } -> tensor<10x11x1xi1>
    %248 = arith.andi %c0_i16, %23 : i16
    %alloca = memref.alloca() : memref<3xi16>
    %249 = arith.minf %cst_2, %cst_5 : f16
    %250 = index.casts %c12747_i16 : i16 to index
    %251 = math.roundeven %6 : tensor<3x10xf32>
    %252 = arith.remf %cst_5, %cst : f16
    %253 = arith.divf %cst_2, %cst_3 : f16
    %254 = arith.minf %cst_1, %cst_1 : f32
    %255 = tensor.empty() : tensor<3x10xi32>
    %256 = linalg.copy ins(%197 : tensor<3x10xi32>) outs(%255 : tensor<3x10xi32>) -> tensor<3x10xi32>
    %alloc_49 = memref.alloc() : memref<10x3xf32>
    linalg.transpose ins(%12 : tensor<3x10xf32>) outs(%alloc_49 : memref<10x3xf32>) permutation = [1, 0] 
    %alloc_50 = memref.alloc() : memref<11xi1>
    linalg.reduce ins(%0 : tensor<10x11xi1>) outs(%alloc_50 : memref<11xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %259 = tensor.empty() : tensor<10x11xi32>
        %260 = math.tan %9 : tensor<3xf32>
        %alloc_51 = memref.alloc() : memref<3x10xi16>
        %261 = math.ctlz %c443974435_i32 : i32
        %262 = arith.minf %cst_5, %cst_3 : f16
        %263 = tensor.empty() : tensor<3x10xf16>
        %264 = math.expm1 %cst_3 : f16
        %265 = vector.insertelement %init, %227[%124 : index] : vector<3xi1>
        %false_52 = arith.constant false
        linalg.yield %false_52 : i1
      }
    %257 = scf.parallel (%arg0) = (%63) to (%115) step (%c2) init (%158) -> vector<3xi1> {
      %259 = vector.extract_strided_slice %224 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %collapsed_51 = tensor.collapse_shape %11 [[0, 1]] : tensor<3x10xi64> into tensor<30xi64>
      affine.for %arg1 = 0 to 97 {
      }
      memref.copy %alloc_11, %alloc_13 : memref<3xi1> to memref<3xi1>
      %260 = math.log %cst_2 : f16
      %261 = arith.remf %cst, %cst_2 : f16
      %262 = index.floordivs %96, %c13
      %263 = arith.maxui %false, %false_0 : i1
      %rank_52 = tensor.rank %9 : tensor<3xf32>
      %264 = memref.realloc %alloc_15 : memref<3xi32> to memref<3xi32>
      %265 = affine.min affine_map<(d0, d1) -> (d1 - 2)>(%199, %118)
      %266 = vector.broadcast %cst : f16 to vector<3xf16>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %119, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xf16>, vector<3xf16>
      %267 = index.mul %240, %199
      %268 = arith.maxui %false_24, %false_30 : i1
      %269 = vector.extract_strided_slice %259 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %270 = arith.maxui %c930426571_i64, %c1698949014_i64 : i64
      %271 = vector.broadcast %false_30 : i1 to vector<3xi1>
      scf.reduce(%271)  : vector<3xi1> {
      ^bb0(%arg1: vector<3xi1>, %arg2: vector<3xi1>):
        %272 = index.ceildivu %107, %c3
        %273 = arith.minui %23, %c0_i16_22 : i16
        %274 = math.expm1 %21 : tensor<f32>
        affine.store %c930426571_i64, %alloc_17[%c4, %c0] : memref<3x10xi64>
        %alloca_55 = memref.alloca() : memref<10x11xi32>
        %275 = math.tanh %4 : tensor<3x10xf32>
        %276 = vector.broadcast %c1698949014_i64 : i64 to vector<10xi64>
        %277 = vector.transfer_write %276, %1[%c11, %137] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, tensor<3x10xi64>
        %278 = math.rsqrt %6 : tensor<3x10xf32>
        %279 = vector.broadcast %false : i1 to vector<3xi1>
        scf.reduce.return %279 : vector<3xi1>
      }
      scf.yield
    }
    %258 = affine.vector_load %alloc_6[%222, %rank] : memref<10x11xi16>, vector<11xi16>
    affine.vector_store %175, %alloc_15[%243] : memref<3xi32>, vector<10xi32>
    vector.print %19 : vector<1xi1>
    vector.print %40 : vector<f32>
    vector.print %48 : vector<3x10xf16>
    vector.print %49 : vector<3x10xi1>
    vector.print %50 : vector<3x10xi32>
    vector.print %51 : vector<3x10xf16>
    vector.print %55 : vector<3xf32>
    vector.print %56 : vector<3xf32>
    vector.print %72 : vector<10xf16>
    vector.print %73 : vector<f32>
    vector.print %82 : vector<10xi32>
    vector.print %83 : vector<3xi1>
    vector.print %105 : vector<3x10xi64>
    vector.print %110 : vector<10xi64>
    vector.print %117 : vector<1xf16>
    vector.print %119 : vector<3x10xf16>
    vector.print %153 : vector<3x10xi32>
    vector.print %158 : vector<3xi1>
    vector.print %172 : vector<3xi16>
    vector.print %175 : vector<10xi32>
    vector.print %176 : vector<3xf32>
    vector.print %184 : vector<3xf32>
    vector.print %185 : vector<3xf32>
    vector.print %188 : vector<i16>
    vector.print %198 : vector<10xi64>
    vector.print %210 : vector<3x10xf16>
    vector.print %212 : vector<3x10xi1>
    vector.print %224 : vector<1xf32>
    vector.print %227 : vector<3xi1>
    vector.print %228 : vector<i64>
    vector.print %231 : vector<f32>
    vector.print %233 : vector<3x10xf32>
    vector.print %234 : vector<3x10xf32>
    vector.print %258 : vector<11xi16>
    vector.print %c1610766458_i64 : i64
    vector.print %c1828038969_i32 : i32
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %c579311876_i32 : i32
    vector.print %false_0 : i1
    vector.print %c1698949014_i64 : i64
    vector.print %cst_1 : f32
    vector.print %c930426571_i64 : i64
    vector.print %c443974435_i32 : i32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c1585423334_i32 : i32
    vector.print %c12747_i16 : i16
    vector.print %23 : i16
    vector.print %c0_i16 : i16
    vector.print %c0_i16_22 : i16
    vector.print %false_24 : i1
    vector.print %true : i1
    vector.print %true_26 : i1
    vector.print %false_30 : i1
    vector.print %cst_44 : f32
    return %23 : i16
  }
}
