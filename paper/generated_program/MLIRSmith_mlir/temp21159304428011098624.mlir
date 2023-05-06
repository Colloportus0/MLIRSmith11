module {
  func.func @func1() {
    %cst = arith.constant 1.77512704E+9 : f32
    %c1154782291_i64 = arith.constant 1154782291 : i64
    %false = arith.constant false
    %cst_0 = arith.constant 2.243200e+04 : f16
    %c-3986_i16 = arith.constant -3986 : i16
    %cst_1 = arith.constant 1.5766592E+9 : f32
    %cst_2 = arith.constant 5.256000e+03 : f16
    %c-10262_i16 = arith.constant -10262 : i16
    %c1645090125_i64 = arith.constant 1645090125 : i64
    %cst_3 = arith.constant 5.292800e+04 : f16
    %c272237189_i64 = arith.constant 272237189 : i64
    %cst_4 = arith.constant 6.118400e+04 : f16
    %cst_5 = arith.constant 6.030000e+02 : f16
    %cst_6 = arith.constant 1.90314317E+9 : f32
    %false_7 = arith.constant false
    %false_8 = arith.constant false
    %0 = tensor.empty() : tensor<6x9xf16>
    %1 = tensor.empty() : tensor<9xf16>
    %2 = tensor.empty() : tensor<6xf32>
    %3 = tensor.empty() : tensor<6x6xi1>
    %4 = tensor.empty() : tensor<9xf16>
    %5 = tensor.empty() : tensor<6x6xi32>
    %6 = tensor.empty() : tensor<9xi32>
    %7 = tensor.empty() : tensor<6x9xf32>
    %8 = tensor.empty() : tensor<6xi64>
    %9 = tensor.empty() : tensor<9xi16>
    %10 = tensor.empty() : tensor<6x9xf16>
    %11 = tensor.empty() : tensor<6x6xf32>
    %12 = tensor.empty() : tensor<6x9xi64>
    %13 = tensor.empty() : tensor<6x9xi1>
    %14 = tensor.empty() : tensor<6x9xi16>
    %15 = tensor.empty() : tensor<9xf16>
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
    %alloc = memref.alloc() : memref<9xf16>
    %alloc_9 = memref.alloc() : memref<9xf32>
    %alloc_10 = memref.alloc() : memref<9xi64>
    %alloc_11 = memref.alloc() : memref<6xf32>
    %alloc_12 = memref.alloc() : memref<6xi16>
    %alloc_13 = memref.alloc() : memref<6x6xf16>
    %alloc_14 = memref.alloc() : memref<9xf16>
    %alloc_15 = memref.alloc() : memref<9xf16>
    %alloc_16 = memref.alloc() : memref<6x6xf32>
    %alloc_17 = memref.alloc() : memref<9xi1>
    %alloc_18 = memref.alloc() : memref<6x6xf16>
    %alloc_19 = memref.alloc() : memref<9xi1>
    %alloc_20 = memref.alloc() : memref<6xi64>
    %alloc_21 = memref.alloc() : memref<6xi16>
    %alloc_22 = memref.alloc() : memref<6xi32>
    %alloc_23 = memref.alloc() : memref<9xf32>
    %16 = tensor.empty() : tensor<6x6xi32>
    %17 = linalg.copy ins(%5 : tensor<6x6xi32>) outs(%16 : tensor<6x6xi32>) -> tensor<6x6xi32>
    %alloc_24 = memref.alloc() : memref<6x6xi32>
    linalg.transpose ins(%17 : tensor<6x6xi32>) outs(%alloc_24 : memref<6x6xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%1 : tensor<9xf16>) outs(%18 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %271 = vector.broadcast %c-3986_i16 : i16 to vector<6x9xi16>
        %272 = vector.broadcast %cst : f32 to vector<9xf32>
        %273 = vector.fma %272, %272, %272 : vector<9xf32>
        %274 = vector.broadcast %init : f16 to vector<6xf16>
        %275 = vector.broadcast %false_8 : i1 to vector<6xi1>
        %276 = vector.maskedload %alloc[%c2], %275, %274 : memref<9xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %277 = math.copysign %15, %15 : tensor<9xf16>
        %278 = math.powf %init, %cst_2 : f16
        %279 = index.casts %c-3986_i16 : i16 to index
        %280 = vector.broadcast %cst_6 : f32 to vector<9xf32>
        %281 = vector.fma %280, %272, %280 : vector<9xf32>
        %282 = math.tan %0 : tensor<6x9xf16>
        %283 = affine.max affine_map<(d0) -> (d0 * 2, d0 * 2 + 1, d0 * -3, d0 + 2)>(%c8)
        %cst_46 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_46 : f16
      }
    scf.parallel (%arg0) = (%c7) to (%c5) step (%c14) {
      %271 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 128) floordiv 4 + d1 + 16, d0 ceildiv 32)>(%c4, %c15, %c10)
      %272 = tensor.empty() : tensor<9x6xf16>
      %273 = tensor.empty() : tensor<6x6xf16>
      %274 = linalg.matmul ins(%10, %272 : tensor<6x9xf16>, tensor<9x6xf16>) outs(%273 : tensor<6x6xf16>) -> tensor<6x6xf16>
      %275 = arith.floordivsi %false, %false : i1
      memref.copy %alloc_12, %alloc_21 : memref<6xi16> to memref<6xi16>
      %276 = index.mul %c12, %c11
      %277 = bufferization.clone %alloc_13 : memref<6x6xf16> to memref<6x6xf16>
      bufferization.dealloc_tensor %2 : tensor<6xf32>
      memref.copy %alloc_21, %alloc_12 : memref<6xi16> to memref<6xi16>
      %278 = arith.maxf %cst, %cst : f32
      %279 = math.ctlz %false_7 : i1
      %splat_46 = tensor.splat %c1645090125_i64 : tensor<6xi64>
      %280 = arith.remf %cst_2, %cst_0 : f16
      %281 = arith.andi %false_8, %false_7 : i1
      %extracted = tensor.extract %8[%c3] : tensor<6xi64>
      %282 = index.sizeof
      %283 = vector.broadcast %false : i1 to vector<1xi1>
      %284 = vector.extract_strided_slice %283 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      scf.yield
    }
    %19 = affine.vector_load %alloc_14[%c13] : memref<9xf16>, vector<6xf16>
    affine.vector_store %19, %alloc_14[%c2] : memref<9xf16>, vector<6xf16>
    %20 = tensor.empty() : tensor<6xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc_22, %20 : memref<6xi32>, tensor<6xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = math.sqrt %0 : tensor<6x9xf16>
    memref.assume_alignment %alloc_11, 8 : memref<6xf32>
    %24 = arith.minui %false_8, %false_8 : i1
    %rank = tensor.rank %17 : tensor<6x6xi32>
    %generated = tensor.generate %c1 {
    ^bb0(%arg0: index):
      %271 = index.mul %c15, %c5
      %272 = index.ceildivu %c0, %c8
      %273 = math.floor %7 : tensor<6x9xf32>
      %274 = memref.atomic_rmw minf %cst_5, %alloc_14[%c7] : (f16, memref<9xf16>) -> f16
      %c0_i32 = arith.constant 0 : i32
      tensor.yield %c0_i32 : i32
    } : tensor<?xi32>
    %25 = tensor.empty() : tensor<6xi1>
    %26 = vector.broadcast %false_7 : i1 to vector<6x6xi1>
    %c1_i32 = arith.constant 1 : i32
    %27 = vector.broadcast %c1_i32 : i32 to vector<6x6xi32>
    %28 = vector.gather %25[%c10] [%27], %26, %26 : tensor<6xi1>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
    %29 = arith.remf %cst_3, %cst_5 : f16
    %30 = arith.divsi %c-10262_i16, %c-10262_i16 : i16
    %31 = index.divs %c4, %c0
    %generated_25 = tensor.generate %rank {
    ^bb0(%arg0: index, %arg1: index):
      %271 = arith.muli %false, %false_7 : i1
      %272 = index.mul %c13, %c3
      %273 = math.cttz %3 : tensor<6x6xi1>
      %274 = math.sqrt %7 : tensor<6x9xf32>
      tensor.yield %false : i1
    } : tensor<?x9xi1>
    %32 = memref.realloc %alloc_21 : memref<6xi16> to memref<11xi16>
    %33 = math.absf %10 : tensor<6x9xf16>
    %34 = arith.muli %c1_i32, %c1_i32 : i32
    %35 = math.absf %11 : tensor<6x6xf32>
    %36 = bufferization.clone %alloc_9 : memref<9xf32> to memref<9xf32>
    %37 = math.exp %cst_2 : f16
    %38 = index.floordivs %c15, %c2
    %39 = vector.reduction <maxf>, %19 : vector<6xf16> into f16
    %40 = memref.alloca_scope  -> (f32) {
      %271 = vector.shuffle %28, %28 [0, 1, 2, 3, 4, 5, 8, 9, 10] : vector<6x6xi1>, vector<6x6xi1>
      %272 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
      %273 = math.tanh %15 : tensor<9xf16>
      %274 = math.exp %1 : tensor<9xf16>
      %275 = math.round %15 : tensor<9xf16>
      %276 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %277 = tensor.empty() : tensor<6x9xi32>
      %278 = math.fpowi %10, %277 : tensor<6x9xf16>, tensor<6x9xi32>
      %279 = bufferization.to_memref %15 : memref<9xf16>
      %280 = arith.subi %c1154782291_i64, %c1645090125_i64 : i64
      %281 = vector.broadcast %false_7 : i1 to vector<6xi1>
      %dest, %accumulated_value = vector.scan <maxui>, %26, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi1>, vector<6xi1>
      %282 = index.sizeof
      %283 = math.tan %4 : tensor<9xf16>
      %generated_46 = tensor.generate %c11 {
      ^bb0(%arg0: index):
        %306 = arith.maxf %cst_5, %cst_2 : f16
        %307 = index.floordivs %c9, %c5
        %308 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d0 + 129)>(%307, %c15, %307, %c6)
        %309 = arith.muli %c-10262_i16, %c-3986_i16 : i16
        tensor.yield %c272237189_i64 : i64
      } : tensor<?xi64>
      %284 = arith.muli %c-3986_i16, %c-10262_i16 : i16
      %285 = arith.minui %c272237189_i64, %c1154782291_i64 : i64
      %extracted = tensor.extract %13[%c4, %c6] : tensor<6x9xi1>
      %286 = arith.divsi %c-10262_i16, %c-10262_i16 : i16
      %287 = arith.floordivsi %c-10262_i16, %c-3986_i16 : i16
      %288 = arith.addf %cst_5, %cst_3 : f16
      %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, -d2 - d1, d2 + -d2 - d1)>(%c13, %c1, %c4, %rank)
      %290 = vector.broadcast %cst_6 : f32 to vector<11xf32>
      %291 = vector.broadcast %false_7 : i1 to vector<11xi1>
      %292 = vector.maskedload %36[%c3], %291, %290 : memref<9xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      %cast_47 = tensor.cast %7 : tensor<6x9xf32> to tensor<?x?xf32>
      %293 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 64, d0 - 128)>(%289, %c8, %c14, %c1)
      %294 = vector.broadcast %cst_6 : f32 to vector<f32>
      %295 = vector.transfer_write %294, %7[%c12, %c7] : vector<f32>, tensor<6x9xf32>
      %296 = arith.andi %c1154782291_i64, %c272237189_i64 : i64
      %297 = arith.maxsi %false, %false_7 : i1
      %298 = vector.broadcast %extracted : i1 to vector<6xi1>
      %299 = vector.insert %298, %28 [1] : vector<6xi1> into vector<6x6xi1>
      %300 = vector.broadcast %cst_4 : f16 to vector<1x1xf16>
      %301 = vector.outerproduct %272, %276, %300 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %302 = scf.index_switch %c3 -> index 
      case 1 {
        %306 = arith.maxf %cst_0, %cst_0 : f16
        %307 = vector.bitcast %276 : vector<1xf16> to vector<1xi16>
        %308 = arith.floordivsi %c1_i32, %c1_i32 : i32
        %309 = math.absi %false_7 : i1
        %310 = arith.cmpf true, %cst_6, %cst : f32
        %311 = tensor.empty() : tensor<6x9xi32>
        %312 = linalg.matmul ins(%16, %277 : tensor<6x6xi32>, tensor<6x9xi32>) outs(%311 : tensor<6x9xi32>) -> tensor<6x9xi32>
        %313 = arith.minui %false_7, %false : i1
        %314 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %315 = arith.subi %c1154782291_i64, %c272237189_i64 : i64
        %316 = index.sizeof
        memref.assume_alignment %alloc_14, 2 : memref<9xf16>
        %317 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %27, %317 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6xi32>, vector<6xi32>
        %318 = bufferization.to_tensor %alloc_23 : memref<9xf32>
        %319 = arith.mulf %cst_0, %cst_0 : f16
        %320 = memref.load %alloc_21[%c3] : memref<6xi16>
        %321 = arith.cmpf oge, %cst_3, %cst_3 : f16
        scf.yield %c9 : index
      }
      case 2 {
        %306 = arith.divsi %extracted, %false_8 : i1
        %307 = math.exp %1 : tensor<9xf16>
        %308 = affine.load %alloc_17[%c8] : memref<9xi1>
        %from_elements_48 = tensor.from_elements %cst_6, %cst_6, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst_6, %cst_1, %cst_6, %cst, %cst, %cst_6, %cst_6, %cst_6, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_6, %cst, %cst, %cst_1, %cst, %cst, %cst_6, %cst_6, %cst, %cst_6, %cst, %cst, %cst, %cst, %cst_6, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_6, %cst_6, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_6 : tensor<6x9xf32>
        %309 = bufferization.clone %alloc_17 : memref<9xi1> to memref<9xi1>
        %310 = vector.insert %cst, %292 [5] : f32 into vector<11xf32>
        %311 = math.atan2 %1, %15 : tensor<9xf16>
        %312 = arith.divsi %308, %false_7 : i1
        %splat_49 = tensor.splat %cst_4 : tensor<6xf16>
        %313 = arith.subi %c-10262_i16, %c-10262_i16 : i16
        %rank_50 = tensor.rank %cast_47 : tensor<?x?xf32>
        %314 = index.divs %289, %rank_50
        %315 = math.fpowi %cst_3, %c1_i32 : f16, i32
        %316 = math.ctpop %6 : tensor<9xi32>
        %317 = arith.shrsi %308, %extracted : i1
        %318 = arith.andi %false_8, %false_7 : i1
        scf.yield %c3 : index
      }
      case 3 {
        %alloca_48 = memref.alloca() : memref<6x9xi64>
        %306 = memref.load %279[%c6] : memref<9xf16>
        %307 = arith.divui %false_8, %false_7 : i1
        %308 = index.floordivs %31, %c2
        %309 = tensor.empty() : tensor<6x6xi16>
        %310 = index.mul %293, %c11
        %311 = math.absf %4 : tensor<9xf16>
        %312 = vector.splat %c1645090125_i64 : vector<6x6xi64>
        %313 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %291, %291, %false : vector<11xi1>, vector<11xi1> into i1
        %314 = arith.negf %cst_4 : f16
        %315 = math.sqrt %10 : tensor<6x9xf16>
        %false_49 = index.bool.constant false
        %316 = index.maxu %c1, %c1
        %317 = math.absf %cst_5 : f16
        %318 = math.roundeven %cst_6 : f32
        %319 = math.absi %16 : tensor<6x6xi32>
        scf.yield %c2 : index
      }
      case 4 {
        %306 = affine.max affine_map<(d0, d1) -> (((d0 ceildiv 16) * 8) floordiv 128)>(%282, %c15)
        %307 = arith.shli %c1_i32, %c1_i32 : i32
        bufferization.dealloc_tensor %0 : tensor<6x9xf16>
        %308 = vector.insert %false_7, %291 [3] : i1 into vector<11xi1>
        %309 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %310 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        %311 = vector.insert %310, %27 [3] : vector<6xi32> into vector<6x6xi32>
        %312 = affine.max affine_map<(d0) -> (d0 - 32, (((d0 floordiv 8 - 4) ceildiv 64) floordiv 64) * 2, d0 floordiv 4)>(%c5)
        %from_elements_48 = tensor.from_elements %cst_2, %cst_0, %cst_2, %cst_5, %cst_5, %cst_4, %cst_3, %cst_0, %cst_4, %cst_5, %cst_3, %cst_2, %cst_0, %cst_3, %cst_5, %cst_5, %cst_3, %cst_0, %cst_4, %cst_3, %cst_5, %cst_0, %cst_3, %cst_0, %cst_4, %cst_2, %cst_5, %cst_4, %cst_5, %cst_3, %cst_4, %cst_3, %cst_4, %cst_5, %cst_3, %cst_5 : tensor<6x6xf16>
        %alloc_49 = memref.alloc() : memref<6xf32>
        memref.copy %alloc_11, %alloc_49 : memref<6xf32> to memref<6xf32>
        %313 = index.castu %c1645090125_i64 : i64 to index
        %314 = arith.cmpi sle, %c272237189_i64, %c272237189_i64 : i64
        %315 = arith.subi %c-10262_i16, %c-10262_i16 : i16
        %alloca_50 = memref.alloca() : memref<6x6xf16>
        %316 = tensor.empty() : tensor<6x9xi32>
        %317 = linalg.matmul ins(%5, %277 : tensor<6x6xi32>, tensor<6x9xi32>) outs(%316 : tensor<6x9xi32>) -> tensor<6x9xi32>
        %318 = math.fpowi %10, %277 : tensor<6x9xf16>, tensor<6x9xi32>
        %alloca_51 = memref.alloca() : memref<6x9xi32>
        scf.yield %c3 : index
      }
      default {
        %306 = arith.subi %c1645090125_i64, %c1645090125_i64 : i64
        %307 = arith.subi %c272237189_i64, %c1645090125_i64 : i64
        memref.copy %alloc_18, %alloc_13 : memref<6x6xf16> to memref<6x6xf16>
        memref.assume_alignment %alloc_10, 4 : memref<9xi64>
        memref.assume_alignment %alloc_21, 8 : memref<6xi16>
        %308 = vector.broadcast %c-3986_i16 : i16 to vector<6x6xi16>
        %309 = vector.gather %9[%c12] [%27], %26, %308 : tensor<9xi16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi16> into vector<6x6xi16>
        %310 = math.ctpop %9 : tensor<9xi16>
        %311 = math.roundeven %reduced : tensor<f16>
        memref.assume_alignment %alloc_24, 8 : memref<6x6xi32>
        %312 = arith.subi %c1645090125_i64, %c1645090125_i64 : i64
        %from_elements_48 = tensor.from_elements %c1154782291_i64, %c1154782291_i64, %c272237189_i64, %c272237189_i64, %c1154782291_i64, %c272237189_i64 : tensor<6xi64>
        %313 = arith.divsi %c-10262_i16, %c-3986_i16 : i16
        bufferization.dealloc_tensor %12 : tensor<6x9xi64>
        %314 = math.cttz %8 : tensor<6xi64>
        memref.assume_alignment %alloc_10, 8 : memref<9xi64>
        %315 = index.add %c5, %c8
        scf.yield %c9 : index
      }
      %303 = memref.load %alloc_22[%c4] : memref<6xi32>
      %304 = vector.matrix_multiply %298, %298 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
      %305 = arith.ori %false_7, %false : i1
      memref.alloca_scope.return %cst_1 : f32
    }
    %41 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %26, %28, %28 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
    %42 = math.exp %2 : tensor<6xf32>
    %43 = vector.splat %c-3986_i16 : vector<6xi16>
    %generated_26 = tensor.generate %c10 {
    ^bb0(%arg0: index):
      %271 = index.sizeof
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %28, %26, %26 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
      %273 = arith.addf %cst_4, %cst_4 : f16
      %274 = arith.ori %false_8, %false_7 : i1
      tensor.yield %c-10262_i16 : i16
    } : tensor<?xi16>
    %from_elements = tensor.from_elements %c272237189_i64, %c1645090125_i64, %c272237189_i64, %c272237189_i64, %c1154782291_i64, %c1645090125_i64, %c272237189_i64, %c272237189_i64, %c1154782291_i64 : tensor<9xi64>
    %44 = memref.realloc %alloc_12 : memref<6xi16> to memref<6xi16>
    %45 = index.casts %c1645090125_i64 : i64 to index
    %46 = vector.insert %cst_2, %19 [2] : f16 into vector<6xf16>
    %47 = index.ceildivu %c8, %c15
    %48 = math.atan2 %0, %0 : tensor<6x9xf16>
    %49 = arith.cmpi eq, %false_7, %false : i1
    %50 = math.log10 %0 : tensor<6x9xf16>
    %51 = vector.multi_reduction <or>, %28, %false_7 [0, 1] : vector<6x6xi1> to i1
    %52 = math.exp2 %cst_5 : f16
    %53 = vector.broadcast %51 : i1 to vector<i1>
    %54 = vector.transfer_write %53, %3[%c14, %c7] : vector<i1>, tensor<6x6xi1>
    %55 = math.round %15 : tensor<9xf16>
    %56 = math.log2 %cst_0 : f16
    %57 = arith.maxsi %51, %false : i1
    %58 = math.fpowi %reduced, %22 : tensor<f16>, tensor<i32>
    %cst_27 = arith.constant 1.000000e+00 : f16
    %59 = vector.transfer_read %alloc_18[%38, %c15], %cst_27 : memref<6x6xf16>, vector<6xf16>
    %60 = arith.maxf %cst_3, %cst_5 : f16
    %61 = arith.divsi %c272237189_i64, %c272237189_i64 : i64
    %62 = math.sqrt %cst_3 : f16
    %63 = math.absi %c-10262_i16 : i16
    %64 = vector.reduction <add>, %19 : vector<6xf16> into f16
    %splat = tensor.splat %40 : tensor<6x6xf32>
    %65 = arith.shrsi %51, %false_7 : i1
    %66 = math.ipowi %c1_i32, %c1_i32 : i32
    %67 = arith.addf %40, %cst_6 : f32
    %68 = bufferization.to_tensor %alloc_22 : memref<6xi32>
    %69 = memref.realloc %alloc_22 : memref<6xi32> to memref<6xi32>
    %70 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
    %71 = vector.multi_reduction <maxui>, %27, %70 [0] : vector<6x6xi32> to vector<6xi32>
    %72 = vector.extract_strided_slice %70 {offsets = [2], sizes = [3], strides = [1]} : vector<6xi32> to vector<3xi32>
    %73 = arith.shrsi %c-3986_i16, %c-3986_i16 : i16
    %74 = arith.minsi %c1_i32, %c1_i32 : i32
    %75 = vector.outerproduct %70, %70, %27 {kind = #vector.kind<maxui>} : vector<6xi32>, vector<6xi32>
    %76 = tensor.empty() : tensor<6x9xi1>
    %77 = linalg.matmul ins(%3, %13 : tensor<6x6xi1>, tensor<6x9xi1>) outs(%76 : tensor<6x9xi1>) -> tensor<6x9xi1>
    %78 = vector.extract_strided_slice %28 {offsets = [1], sizes = [3], strides = [1]} : vector<6x6xi1> to vector<3x6xi1>
    %79 = scf.index_switch %c4 -> index 
    case 1 {
      %271 = math.expm1 %cst_5 : f16
      %true_46 = index.bool.constant true
      %272 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 4)>(%rank, %c10, %c13)
      %273 = index.castu %c1154782291_i64 : i64 to index
      %274 = vector.broadcast %true_46 : i1 to vector<6xi1>
      %275 = vector.insert %274, %78 [0] : vector<6xi1> into vector<3x6xi1>
      %276 = vector.broadcast %40 : f32 to vector<f32>
      vector.transfer_write %276, %alloc_16[%c2, %272] : vector<f32>, memref<6x6xf32>
      %277 = memref.realloc %alloc_19 : memref<9xi1> to memref<6xi1>
      %278 = vector.broadcast %c-3986_i16 : i16 to vector<9xi16>
      %279 = vector.broadcast %false_7 : i1 to vector<9xi1>
      %280 = vector.maskedload %alloc_21[%c0], %279, %278 : memref<6xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %281 = index.maxu %c13, %rank
      %282 = math.rsqrt %2 : tensor<6xf32>
      %283 = math.roundeven %1 : tensor<9xf16>
      %284 = math.floor %11 : tensor<6x6xf32>
      %alloca_47 = memref.alloca() : memref<6x9xi32>
      memref.assume_alignment %alloc_21, 1 : memref<6xi16>
      %285 = math.atan2 %cst_0, %cst_5 : f16
      memref.store %cst_0, %alloc_13[%c2, %c1] : memref<6x6xf16>
      scf.yield %c0 : index
    }
    case 2 {
      %271 = math.absi %false_8 : i1
      %272 = arith.divsi %false_8, %false_8 : i1
      %273 = vector.multi_reduction <or>, %27, %70 [1] : vector<6x6xi32> to vector<6xi32>
      %274 = index.sizeof
      %275 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 4)>(%45, %c10, %31)
      %276 = math.round %splat : tensor<6x6xf32>
      %277 = vector.reduction <mul>, %19 : vector<6xf16> into f16
      %278 = math.sqrt %11 : tensor<6x6xf32>
      %279 = vector.insert %70, %27 [4] : vector<6xi32> into vector<6x6xi32>
      %280 = math.atan2 %cst_1, %40 : f32
      %281 = arith.cmpi ule, %c1154782291_i64, %c272237189_i64 : i64
      %282 = math.sqrt %reduced : tensor<f16>
      %283 = vector.transpose %28, [0, 1] : vector<6x6xi1> to vector<6x6xi1>
      %284 = vector.broadcast %40 : f32 to vector<6x6xf32>
      %285 = vector.fma %284, %284, %284 : vector<6x6xf32>
      %286 = arith.muli %false, %51 : i1
      %287 = arith.cmpf true, %cst_3, %cst_5 : f16
      scf.yield %c13 : index
    }
    default {
      %splat_46 = tensor.splat %cst_27 : tensor<6xf16>
      %true_47 = index.bool.constant true
      %from_elements_48 = tensor.from_elements %51, %false_8, %51, %false_7, %false_7, %true_47, %false_7, %false, %false, %51, %51, %false_7, %51, %false, %true_47, %false, %51, %false_7, %false, %false_8, %false, %false, %false, %false_7, %51, %false_7, %false_7, %51, %false_7, %false_7, %false_8, %51, %false_8, %51, %51, %true_47 : tensor<6x6xi1>
      %271 = arith.ori %false, %51 : i1
      %272 = math.absi %9 : tensor<9xi16>
      %273 = arith.ceildivsi %c1645090125_i64, %c1154782291_i64 : i64
      %274 = vector.broadcast %c272237189_i64 : i64 to vector<6x6xi64>
      %275 = vector.gather %alloc_10[%c3] [%27], %28, %274 : memref<9xi64>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi64> into vector<6x6xi64>
      %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<6x9xi64> into tensor<6x9x1xi64>
      scf.index_switch %c3 
      case 1 {
        %285 = index.add %c11, %c7
        %cst_50 = arith.constant 1.000000e+00 : f16
        %286 = vector.transfer_read %15[%285], %cst_50 : tensor<9xf16>, vector<f16>
        %287 = arith.muli %false, %false_8 : i1
        %288 = arith.divsi %c-10262_i16, %c-3986_i16 : i16
        %289 = math.rsqrt %7 : tensor<6x9xf32>
        %290 = math.log %2 : tensor<6xf32>
        %291 = vector.broadcast %false : i1 to vector<9xi1>
        %292 = math.log %11 : tensor<6x6xf32>
        %rank_51 = tensor.rank %22 : tensor<i32>
        %293 = arith.shli %false_8, %false_8 : i1
        %294 = memref.load %alloc_24[%c0, %c4] : memref<6x6xi32>
        %295 = arith.shrsi %51, %51 : i1
        %296 = index.casts %false : i1 to index
        %297 = vector.broadcast %false : i1 to vector<6xi1>
        %298 = vector.insert %297, %28 [1] : vector<6xi1> into vector<6x6xi1>
        %299 = math.cttz %3 : tensor<6x6xi1>
        %300 = math.rsqrt %cst : f32
        scf.yield
      }
      case 2 {
        %285 = math.atan %10 : tensor<6x9xf16>
        %286 = arith.minsi %c1645090125_i64, %c272237189_i64 : i64
        %287 = index.maxu %c8, %c0
        %288 = affine.load %alloc[%c0] : memref<9xf16>
        %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %289 = bufferization.to_tensor %alloc_12 : memref<6xi16>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%c2, %45, %287, %c8)
        %291 = arith.shli %c1_i32, %c1_i32 : i32
        memref.assume_alignment %alloc_19, 4 : memref<9xi1>
        memref.copy %alloc_19, %alloc_17 : memref<9xi1> to memref<9xi1>
        %292 = math.cttz %c1_i32 : i32
        bufferization.dealloc_tensor %22 : tensor<i32>
        %293 = math.fpowi %15, %6 : tensor<9xf16>, tensor<9xi32>
        %294 = math.ctlz %13 : tensor<6x9xi1>
        %295 = arith.mulf %cst_3, %cst_2 : f16
        %296 = math.atan2 %cst, %cst_6 : f32
        scf.yield
      }
      case 3 {
        %285 = math.floor %splat_46 : tensor<6xf16>
        %286 = bufferization.clone %36 : memref<9xf32> to memref<9xf32>
        %287 = math.ctpop %6 : tensor<9xi32>
        %288 = math.atan2 %11, %11 : tensor<6x6xf32>
        %289 = arith.maxui %51, %false_8 : i1
        %cst_50 = arith.constant 1.000000e+00 : f16
        %cst_51 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %alloc_14[%c2], %cst_51 : memref<9xf16>, vector<f16>
        %291 = math.ctlz %c-3986_i16 : i16
        %292 = math.ctpop %13 : tensor<6x9xi1>
        %293 = arith.maxsi %c-3986_i16, %c-10262_i16 : i16
        %294 = vector.broadcast %51 : i1 to vector<3xi1>
        %dest, %accumulated_value = vector.scan <or>, %78, %294 {inclusive = false, reduction_dim = 1 : i64} : vector<3x6xi1>, vector<3xi1>
        %295 = index.maxu %c9, %c9
        %296 = arith.divsi %51, %true_47 : i1
        %297 = index.divu %c9, %c4
        %298 = index.divs %c13, %295
        %299 = vector.create_mask %c12 : vector<6xi1>
        %300 = vector.bitcast %19 : vector<6xf16> to vector<6xf16>
        scf.yield
      }
      case 4 {
        %285 = math.copysign %15, %4 : tensor<9xf16>
        %286 = math.sqrt %11 : tensor<6x6xf32>
        %287 = tensor.empty() : tensor<6x9xf16>
        %alloc_50 = memref.alloc() : memref<6x6xi1>
        %288 = index.ceildivs %38, %c11
        %289 = tensor.empty() : tensor<6x9xf32>
        %290 = linalg.matmul ins(%11, %7 : tensor<6x6xf32>, tensor<6x9xf32>) outs(%289 : tensor<6x9xf32>) -> tensor<6x9xf32>
        %291 = bufferization.clone %alloc_14 : memref<9xf16> to memref<9xf16>
        %292 = affine.max affine_map<(d0) -> (d0 mod 4 - 8, d0 mod 4, d0 mod 4 - 8)>(%45)
        %293 = math.cttz %9 : tensor<9xi16>
        %294 = math.atan2 %10, %0 : tensor<6x9xf16>
        %295 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %296 = vector.transfer_write %295, %289[%c7, %45] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf32>, tensor<6x9xf32>
        %297 = vector.broadcast %c15 : index to vector<9xindex>
        %298 = vector.broadcast %false : i1 to vector<9xi1>
        %299 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        vector.scatter %alloc_18[%c4, %c3] [%297], %298, %299 : memref<6x6xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %300 = index.ceildivs %c2, %c9
        %301 = arith.shrsi %false, %false : i1
        %alloca_51 = memref.alloca() : memref<6xf16>
        %alloc_52 = memref.alloc() : memref<f16>
        memref.tensor_store %reduced, %alloc_52 : memref<f16>
        scf.yield
      }
      default {
        %285 = vector.flat_transpose %72 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %extracted = tensor.extract %3[%c5, %c3] : tensor<6x6xi1>
        %286 = tensor.empty() : tensor<9x6xi1>
        %287 = tensor.empty() : tensor<6x6xi1>
        %288 = linalg.matmul ins(%76, %286 : tensor<6x9xi1>, tensor<9x6xi1>) outs(%287 : tensor<6x6xi1>) -> tensor<6x6xi1>
        %289 = arith.subi %false_7, %false_7 : i1
        %290 = vector.shuffle %27, %27 [0, 2, 5, 8, 10, 11] : vector<6x6xi32>, vector<6x6xi32>
        %291 = tensor.empty() : tensor<6x9xi32>
        %292 = math.fpowi %0, %291 : tensor<6x9xf16>, tensor<6x9xi32>
        %293 = bufferization.clone %alloc_12 : memref<6xi16> to memref<6xi16>
        %294 = arith.addi %false, %extracted : i1
        %295 = vector.broadcast %c272237189_i64 : i64 to vector<6xi64>
        %296 = vector.insert %295, %274 [3] : vector<6xi64> into vector<6x6xi64>
        %297 = arith.shrsi %c-10262_i16, %c-10262_i16 : i16
        %298 = vector.broadcast %cst_6 : f32 to vector<6x9xf32>
        %299 = vector.fma %298, %298, %298 : vector<6x9xf32>
        %300 = vector.splat %c1_i32 : vector<6x6xi32>
        %true_50 = index.bool.constant true
        %301 = affine.max affine_map<(d0) -> ((d0 floordiv 64) floordiv 16, -(d0 - 1) - (-(d0 - 1) + 32) * 32)>(%47)
        %302 = index.sizeof
        %303 = arith.divui %false_7, %false : i1
      }
      %276 = arith.cmpf ole, %cst, %cst_6 : f32
      %alloc_49 = memref.alloc() : memref<9xi16>
      %277 = vector.broadcast %c-3986_i16 : i16 to vector<9xi16>
      %278 = vector.broadcast %51 : i1 to vector<9xi1>
      %279 = vector.broadcast %c1_i32 : i32 to vector<9xi32>
      %280 = vector.gather %alloc_49[%c4] [%279], %278, %277 : memref<9xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %281 = math.powf %2, %2 : tensor<6xf32>
      %282 = vector.transpose %72, [0] : vector<3xi32> to vector<3xi32>
      %283 = math.rsqrt %0 : tensor<6x9xf16>
      %284 = scf.while (%arg0 = %alloc) : (memref<9xf16>) -> memref<9xf16> {
        %285 = index.sub %c8, %c15
        memref.assume_alignment %alloc_49, 8 : memref<9xi16>
        %286 = index.castu %true_47 : i1 to index
        bufferization.dealloc_tensor %4 : tensor<9xf16>
        %287 = tensor.empty() : tensor<6x9xi16>
        %288 = math.absf %cst_4 : f16
        %289 = vector.broadcast %c272237189_i64 : i64 to vector<11xi64>
        %290 = vector.broadcast %51 : i1 to vector<11xi1>
        %291 = vector.maskedload %alloc_20[%c1], %290, %289 : memref<6xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %292 = index.maxs %c6, %c3
        scf.condition(%51) %alloc_15 : memref<9xf16>
      } do {
      ^bb0(%arg0: memref<9xf16>):
        %285 = arith.maxf %cst_4, %cst_4 : f16
        %286 = arith.muli %false, %true_47 : i1
        %287 = affine.load %alloc[%c6] : memref<9xf16>
        %288 = math.rsqrt %0 : tensor<6x9xf16>
        %289 = index.castu %true_47 : i1 to index
        %290 = arith.divsi %c1154782291_i64, %c1645090125_i64 : i64
        %291 = vector.create_mask %c2, %c2 : vector<6x6xi1>
        %292 = arith.cmpi slt, %c1154782291_i64, %c1154782291_i64 : i64
        %splat_50 = tensor.splat %true_47 : tensor<6xi1>
        %293 = math.ctlz %68 : tensor<6xi32>
        bufferization.dealloc_tensor %4 : tensor<9xf16>
        %294 = arith.shli %false_8, %false : i1
        %295 = math.powf %1, %4 : tensor<9xf16>
        %296 = arith.ori %c-10262_i16, %c-10262_i16 : i16
        %297 = math.rsqrt %7 : tensor<6x9xf32>
        %298 = index.casts %c5 : index to i32
        scf.yield %alloc_14 : memref<9xf16>
      }
      scf.index_switch %rank 
      case 1 {
        %285 = memref.realloc %alloc_14 : memref<9xf16> to memref<9xf16>
        %286 = vector.reduction <xor>, %279 : vector<9xi32> into i32
        %287 = math.absf %splat_46 : tensor<6xf16>
        %288 = math.fpowi %1, %6 : tensor<9xf16>, tensor<9xi32>
        %289 = arith.addf %cst_0, %cst_27 : f16
        %290 = memref.load %alloc_23[%c4] : memref<9xf32>
        %291 = math.atan %splat_46 : tensor<6xf16>
        %292 = index.ceildivs %c5, %c4
        %293 = index.sizeof
        %294 = bufferization.to_tensor %36 : memref<9xf32>
        %295 = math.atan2 %15, %15 : tensor<9xf16>
        %296 = vector.broadcast %cst_0 : f16 to vector<6x6xf16>
        %297 = vector.gather %alloc_14[%c14] [%27], %26, %296 : memref<9xf16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xf16> into vector<6x6xf16>
        %298 = math.cttz %c272237189_i64 : i64
        %299 = bufferization.clone %alloc_22 : memref<6xi32> to memref<6xi32>
        memref.copy %alloc_14, %alloc_15 : memref<9xf16> to memref<9xf16>
        %true_50 = index.bool.constant true
        scf.yield
      }
      case 2 {
        %285 = arith.maxui %true_47, %true_47 : i1
        %286 = math.powf %4, %4 : tensor<9xf16>
        %287 = math.powf %cst_27, %cst_0 : f16
        %288 = math.cttz %c272237189_i64 : i64
        %289 = arith.cmpf uno, %cst_6, %cst_6 : f32
        %290 = arith.minsi %c272237189_i64, %c1154782291_i64 : i64
        %291 = math.log %18 : tensor<f16>
        %292 = arith.shrsi %c1_i32, %c1_i32 : i32
        %293 = index.divs %rank, %47
        %294 = vector.shuffle %275, %275 [0, 1, 2, 3, 4, 5, 9] : vector<6x6xi64>, vector<6x6xi64>
        %splat_50 = tensor.splat %cst_6 : tensor<6xf32>
        %295 = math.ctlz %9 : tensor<9xi16>
        %296 = index.mul %c5, %c8
        bufferization.dealloc_tensor %9 : tensor<9xi16>
        %297 = vector.flat_transpose %278 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %alloca_51 = memref.alloca() : memref<6x6xi32>
        scf.yield
      }
      case 3 {
        %285 = math.exp2 %cst_3 : f16
        %286 = bufferization.clone %alloc_19 : memref<9xi1> to memref<9xi1>
        %287 = vector.broadcast %cst : f32 to vector<6x6xf32>
        %288 = vector.fma %287, %287, %287 : vector<6x6xf32>
        %289 = arith.cmpi ne, %c272237189_i64, %c1154782291_i64 : i64
        %290 = vector.bitcast %277 : vector<9xi16> to vector<9xf16>
        memref.assume_alignment %alloc_13, 1 : memref<6x6xf16>
        %291 = arith.muli %51, %51 : i1
        %292 = index.add %c4, %c11
        %293 = vector.matrix_multiply %70, %279 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<6xi32>, vector<9xi32>) -> vector<6xi32>
        %294 = vector.broadcast %cst_6 : f32 to vector<6x6xf32>
        %295 = vector.fma %294, %294, %294 : vector<6x6xf32>
        %296 = vector.shuffle %280, %280 [0, 1, 4, 5, 6, 10, 11, 13, 15, 16, 17] : vector<9xi16>, vector<9xi16>
        %297 = vector.reduction <minf>, %19 : vector<6xf16> into f16
        %298 = vector.splat %true_47 : vector<9xi1>
        %299 = math.log2 %splat_46 : tensor<6xf16>
        %300 = arith.minui %c-10262_i16, %c-10262_i16 : i16
        %301 = math.log2 %cst_4 : f16
        scf.yield
      }
      case 4 {
        %285 = math.ctlz %8 : tensor<6xi64>
        %true_50 = index.bool.constant true
        %286 = arith.divsi %c-3986_i16, %c-10262_i16 : i16
        %287 = arith.cmpf une, %cst, %cst_6 : f32
        %true_51 = index.bool.constant true
        %288 = math.absi %3 : tensor<6x6xi1>
        %289 = math.rsqrt %2 : tensor<6xf32>
        %290 = math.absi %13 : tensor<6x9xi1>
        %291 = math.cttz %true_50 : i1
        %292 = index.divs %c9, %c5
        %alloca_52 = memref.alloca() : memref<6xf16>
        %293 = index.casts %47 : index to i32
        %294 = arith.subi %c1154782291_i64, %c1154782291_i64 : i64
        %295 = index.maxs %c9, %c12
        %296 = index.maxs %295, %31
        %rank_53 = tensor.rank %13 : tensor<6x9xi1>
        scf.yield
      }
      default {
        %285 = arith.minsi %c1_i32, %c1_i32 : i32
        bufferization.dealloc_tensor %0 : tensor<6x9xf16>
        %286 = math.powf %1, %15 : tensor<9xf16>
        %287 = vector.flat_transpose %70 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %288 = math.ctpop %20 : tensor<6xi32>
        %cast_50 = tensor.cast %25 : tensor<6xi1> to tensor<?xi1>
        %289 = arith.shrsi %true_47, %false : i1
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 4)>(%c3, %rank, %c14, %c13)
        %291 = arith.minsi %c1154782291_i64, %c272237189_i64 : i64
        %292 = math.log %1 : tensor<9xf16>
        %293 = arith.minui %51, %51 : i1
        %294 = math.fma %splat, %11, %splat : tensor<6x6xf32>
        %295 = math.copysign %splat, %11 : tensor<6x6xf32>
        %296 = math.powf %2, %2 : tensor<6xf32>
        %297 = vector.broadcast %c6 : index to vector<6xindex>
        %298 = vector.broadcast %false_8 : i1 to vector<6xi1>
        vector.scatter %alloc[%c1] [%297], %298, %19 : memref<9xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %299 = bufferization.to_tensor %alloc_20 : memref<6xi64>
      }
      scf.yield %c13 : index
    }
    %80 = math.floor %1 : tensor<9xf16>
    scf.index_switch %c1 
    case 1 {
      %271 = math.exp %cst_4 : f16
      %272 = arith.cmpf oge, %cst_5, %cst_27 : f16
      %273 = arith.muli %false, %51 : i1
      %274 = arith.subi %c1_i32, %c1_i32 : i32
      %275 = arith.xori %c-10262_i16, %c-10262_i16 : i16
      %276 = arith.subi %c1645090125_i64, %c272237189_i64 : i64
      %277 = arith.minui %c1154782291_i64, %c1645090125_i64 : i64
      %278 = memref.realloc %alloc_21 : memref<6xi16> to memref<6xi16>
      %279 = arith.shli %c272237189_i64, %c272237189_i64 : i64
      %280 = math.rsqrt %40 : f32
      %281 = memref.alloca_scope  -> (memref<9xi64>) {
        %288 = math.fpowi %splat, %16 : tensor<6x6xf32>, tensor<6x6xi32>
        %289 = math.ctpop %c-3986_i16 : i16
        %290 = index.divs %c10, %c9
        %291 = math.exp2 %7 : tensor<6x9xf32>
        %292 = arith.divsi %false, %false : i1
        %293 = vector.insert %70, %27 [2] : vector<6xi32> into vector<6x6xi32>
        %294 = vector.shuffle %26, %28 [3, 6, 7, 8, 9, 10, 11] : vector<6x6xi1>, vector<6x6xi1>
        %295 = arith.remf %cst, %40 : f32
        %296 = arith.muli %false_8, %false : i1
        %297 = arith.muli %c1_i32, %c1_i32 : i32
        %298 = math.sqrt %cst_1 : f32
        %299 = math.powf %cst_27, %cst_27 : f16
        %300 = math.cttz %8 : tensor<6xi64>
        %301 = math.copysign %1, %4 : tensor<9xf16>
        %302 = vector.broadcast %cst_4 : f16 to vector<6x6xf16>
        %303 = vector.outerproduct %19, %19, %302 {kind = #vector.kind<mul>} : vector<6xf16>, vector<6xf16>
        %304 = arith.ori %c-10262_i16, %c-3986_i16 : i16
        %305 = math.absi %3 : tensor<6x6xi1>
        %306 = bufferization.to_tensor %alloc_16 : memref<6x6xf32>
        %307 = arith.divsi %false_8, %false_8 : i1
        memref.copy %alloc_17, %alloc_19 : memref<9xi1> to memref<9xi1>
        %308 = math.roundeven %cst_6 : f32
        %309 = math.exp %cst : f32
        %310 = arith.subi %c-3986_i16, %c-3986_i16 : i16
        %311 = vector.transpose %27, [1, 0] : vector<6x6xi32> to vector<6x6xi32>
        %cast_46 = tensor.cast %5 : tensor<6x6xi32> to tensor<?x?xi32>
        %expanded = tensor.expand_shape %8 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %312 = arith.subi %c1645090125_i64, %c1645090125_i64 : i64
        %313 = arith.cmpf ugt, %cst_0, %cst_2 : f16
        %314 = math.exp2 %10 : tensor<6x9xf16>
        %extracted = tensor.extract %6[%c2] : tensor<9xi32>
        %expanded_47 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<6x9xf32> into tensor<6x9x1xf32>
        %315 = arith.minsi %false, %false_7 : i1
        memref.alloca_scope.return %alloc_10 : memref<9xi64>
      }
      %282 = vector.insertelement %cst_0, %19[%c7 : index] : vector<6xf16>
      %283 = math.tan %40 : f32
      %284 = arith.divui %c-3986_i16, %c-10262_i16 : i16
      %285 = vector.broadcast %false_7 : i1 to vector<6xi1>
      %286 = vector.multi_reduction <or>, %28, %285 [1] : vector<6x6xi1> to vector<6xi1>
      %287 = scf.while (%arg0 = %alloc_10) : (memref<9xi64>) -> memref<9xi64> {
        %288 = arith.minui %c1_i32, %c1_i32 : i32
        %289 = math.tan %cst : f32
        %290 = vector.create_mask %c1, %c10 : vector<6x6xi1>
        %291 = math.powf %11, %11 : tensor<6x6xf32>
        %292 = math.copysign %15, %4 : tensor<9xf16>
        %from_elements_46 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<9xi32>
        %293 = memref.load %alloc_18[%c1, %c0] : memref<6x6xf16>
        %294 = arith.shrui %c1645090125_i64, %c1645090125_i64 : i64
        scf.condition(%false_8) %arg0 : memref<9xi64>
      } do {
      ^bb0(%arg0: memref<9xi64>):
        %288 = vector.flat_transpose %72 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %289 = arith.xori %c1154782291_i64, %c272237189_i64 : i64
        %290 = math.expm1 %cst_0 : f16
        %291 = math.cos %2 : tensor<6xf32>
        %292 = index.sub %c14, %c2
        %293 = tensor.empty() : tensor<6x9xi32>
        %294 = math.fpowi %7, %293 : tensor<6x9xf32>, tensor<6x9xi32>
        %295 = arith.xori %false_8, %false_7 : i1
        %296 = math.ctlz %5 : tensor<6x6xi32>
        %splat_46 = tensor.splat %cst_2 : tensor<6x6xf16>
        %297 = bufferization.clone %alloc_11 : memref<6xf32> to memref<6xf32>
        %298 = arith.minsi %false_8, %false : i1
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %299 = vector.transfer_read %alloc_15[%c11], %cst_48 : memref<9xf16>, vector<f16>
        %300 = arith.floordivsi %51, %false_8 : i1
        %301 = math.log %cst_2 : f16
        %302 = index.sizeof
        %false_49 = index.bool.constant false
        scf.yield %281 : memref<9xi64>
      }
      scf.yield
    }
    case 2 {
      %alloc_46 = memref.alloc() : memref<6x6xf32>
      memref.copy %alloc_16, %alloc_46 : memref<6x6xf32> to memref<6x6xf32>
      %271 = math.floor %cst_0 : f16
      %cst_47 = arith.constant 1.000000e+00 : f16
      %cst_48 = arith.constant 0.000000e+00 : f16
      %272 = vector.transfer_read %10[%c2, %c2], %cst_48 : tensor<6x9xf16>, vector<f16>
      %splat_49 = tensor.splat %c272237189_i64 : tensor<6x9xi64>
      %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
      %273 = math.absi %5 : tensor<6x6xi32>
      %274 = tensor.empty() : tensor<6x9xi1>
      %275 = linalg.matmul ins(%3, %76 : tensor<6x6xi1>, tensor<6x9xi1>) outs(%274 : tensor<6x9xi1>) -> tensor<6x9xi1>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_3 : vector<6xf16>, vector<6xf16> into f16
      %277 = math.round %2 : tensor<6xf32>
      %278 = index.floordivs %c14, %c6
      %279 = math.atan2 %4, %4 : tensor<9xf16>
      %280 = math.log10 %1 : tensor<9xf16>
      %281 = math.powf %collapsed, %collapsed : tensor<36xf32>
      %282 = index.casts %false_7 : i1 to index
      %283 = arith.remf %cst_3, %cst_0 : f16
      %284 = math.ctpop %51 : i1
      scf.yield
    }
    case 3 {
      scf.index_switch %c3 
      case 1 {
        %286 = vector.reduction <minui>, %70 : vector<6xi32> into i32
        %287 = arith.divsi %false_7, %51 : i1
        %288 = arith.muli %c1645090125_i64, %c1154782291_i64 : i64
        memref.copy %alloc_15, %alloc_14 : memref<9xf16> to memref<9xf16>
        %289 = vector.load %alloc_18[%c5, %c4] : memref<6x6xf16>, vector<6xf16>
        %290 = arith.xori %c1_i32, %c1_i32 : i32
        %291 = tensor.empty() : tensor<9xf32>
        %292 = math.exp2 %291 : tensor<9xf32>
        %293 = math.cttz %c1645090125_i64 : i64
        %cast_46 = tensor.cast %12 : tensor<6x9xi64> to tensor<?x?xi64>
        %294 = math.log %4 : tensor<9xf16>
        %295 = math.ctlz %c1154782291_i64 : i64
        %296 = memref.atomic_rmw mulf %cst_2, %alloc_18[%c2, %c4] : (f16, memref<6x6xf16>) -> f16
        %297 = vector.broadcast %cst_6 : f32 to vector<11xf32>
        %298 = vector.broadcast %51 : i1 to vector<11xi1>
        %299 = vector.maskedload %alloc_16[%c2, %c4], %298, %297 : memref<6x6xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %300 = index.maxu %38, %c4
        memref.assume_alignment %alloc_22, 8 : memref<6xi32>
        scf.yield
      }
      case 2 {
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (((-d1) floordiv 32) floordiv 64 + 5)>(%c11, %c6, %c5, %c8)
        %287 = index.divu %c1, %c10
        %288 = math.exp %cst : f32
        %289 = index.casts %c15 : index to i32
        %290 = math.exp %cst_3 : f16
        %291 = vector.reduction <minf>, %19 : vector<6xf16> into f16
        %splat_46 = tensor.splat %c272237189_i64 : tensor<6xi64>
        %292 = index.maxu %c2, %c6
        %293 = arith.remui %c1154782291_i64, %c1645090125_i64 : i64
        %294 = bufferization.clone %alloc_15 : memref<9xf16> to memref<9xf16>
        %295 = math.rsqrt %11 : tensor<6x6xf32>
        %296 = math.rsqrt %cst_27 : f16
        %297 = tensor.empty() : tensor<6xf16>
        %298 = vector.broadcast %cst_27 : f16 to vector<6x9xf16>
        %299 = vector.broadcast %false_7 : i1 to vector<6x9xi1>
        %300 = vector.broadcast %c1_i32 : i32 to vector<6x9xi32>
        %301 = vector.gather %297[%c15] [%300], %299, %298 : tensor<6xf16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xf16> into vector<6x9xf16>
        %alloc_47 = memref.alloc() : memref<9x9xf32>
        %302 = tensor.empty() : tensor<6x9xf32>
        %303 = linalg.matmul ins(%7, %alloc_47 : tensor<6x9xf32>, memref<9x9xf32>) outs(%302 : tensor<6x9xf32>) -> tensor<6x9xf32>
        %304 = arith.muli %c1_i32, %c1_i32 : i32
        memref.copy %alloc_13, %alloc_18 : memref<6x6xf16> to memref<6x6xf16>
        scf.yield
      }
      case 3 {
        %286 = vector.broadcast %c-3986_i16 : i16 to vector<6x9xi16>
        %287 = vector.broadcast %false_8 : i1 to vector<6x9xi1>
        %288 = vector.broadcast %c1_i32 : i32 to vector<6x9xi32>
        %289 = vector.gather %14[%c13, %c13] [%288], %287, %286 : tensor<6x9xi16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi16> into vector<6x9xi16>
        %290 = index.maxs %c4, %31
        %291 = bufferization.clone %alloc_14 : memref<9xf16> to memref<9xf16>
        %292 = vector.matrix_multiply %70, %70 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
        %293 = math.ctpop %c-3986_i16 : i16
        %splat_46 = tensor.splat %c-10262_i16 : tensor<6x6xi16>
        %294 = index.sizeof
        %295 = math.exp %1 : tensor<9xf16>
        %296 = math.absf %cst : f32
        %297 = memref.realloc %alloc_14 : memref<9xf16> to memref<11xf16>
        %alloc_47 = memref.alloc() : memref<6xi64>
        memref.copy %alloc_20, %alloc_47 : memref<6xi64> to memref<6xi64>
        %298 = math.roundeven %4 : tensor<9xf16>
        %299 = index.add %c6, %c5
        %300 = math.absi %21 : tensor<i32>
        %301 = math.atan %15 : tensor<9xf16>
        %302 = math.round %11 : tensor<6x6xf32>
        scf.yield
      }
      case 4 {
        %286 = vector.broadcast %51 : i1 to vector<6xi1>
        %287 = vector.insert %286, %78 [1] : vector<6xi1> into vector<3x6xi1>
        %288 = math.tan %2 : tensor<6xf32>
        %289 = vector.insertelement %false_8, %286[%c5 : index] : vector<6xi1>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %alloc_13[%31, %rank], %cst_47 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<6x6xf16>, vector<6xf16>
        %291 = arith.negf %cst_2 : f16
        %292 = index.ceildivu %45, %31
        %293 = vector.multi_reduction <and>, %78, %51 [0, 1] : vector<3x6xi1> to i1
        %294 = affine.load %alloc_18[%c1, %c10] : memref<6x6xf16>
        %295 = vector.load %alloc_10[%c7] : memref<9xi64>, vector<6xi64>
        %296 = index.floordivs %c15, %31
        %297 = arith.ori %false, %false_8 : i1
        %298 = math.tan %10 : tensor<6x9xf16>
        %299 = math.exp %cst_4 : f16
        %300 = math.fpowi %40, %c1_i32 : f32, i32
        %splat_48 = tensor.splat %294 : tensor<6x9xf16>
        %301 = vector.reduction <maxsi>, %70 : vector<6xi32> into i32
        scf.yield
      }
      default {
        %alloc_46 = memref.alloc() : memref<6xi64>
        memref.copy %alloc_20, %alloc_46 : memref<6xi64> to memref<6xi64>
        %from_elements_47 = tensor.from_elements %false_7, %false_8, %51, %false_8, %false_7, %51, %false_7, %false, %51, %false_8, %false_8, %false_7, %51, %false_7, %false, %false_8, %false, %false, %51, %false_7, %51, %51, %false_8, %51, %false_8, %false_8, %false_8, %false_7, %51, %false_7, %false_8, %false, %51, %false_7, %51, %51, %false_8, %false, %false_8, %false_8, %false, %false_7, %51, %false, %false_7, %false_7, %false_7, %false_7, %51, %51, %false, %false_7, %false, %51 : tensor<6x9xi1>
        %286 = vector.outerproduct %70, %70, %27 {kind = #vector.kind<maxui>} : vector<6xi32>, vector<6xi32>
        %287 = math.log %2 : tensor<6xf32>
        %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<6x9xi16> into tensor<54xi16>
        %288 = math.log %reduced : tensor<f16>
        memref.assume_alignment %alloc_24, 8 : memref<6x6xi32>
        %289 = arith.subi %c272237189_i64, %c272237189_i64 : i64
        %290 = vector.flat_transpose %70 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %291 = arith.minf %cst_5, %cst_27 : f16
        %292 = bufferization.clone %alloc_24 : memref<6x6xi32> to memref<6x6xi32>
        %293 = arith.muli %51, %false_7 : i1
        %294 = index.divu %c6, %c14
        %295 = math.ctpop %25 : tensor<6xi1>
        %296 = arith.cmpf ogt, %cst_27, %cst_3 : f16
        %297 = arith.shrsi %c-10262_i16, %c-10262_i16 : i16
      }
      %271 = vector.bitcast %28 : vector<6x6xi1> to vector<6x6xi1>
      %272 = math.absi %9 : tensor<9xi16>
      %273 = math.copysign %15, %4 : tensor<9xf16>
      %274 = arith.cmpf oge, %cst_6, %cst_1 : f32
      %275 = index.mul %c0, %c10
      %276 = index.mul %rank, %c9
      %277 = arith.minui %c1154782291_i64, %c272237189_i64 : i64
      %278 = vector.multi_reduction <xor>, %72, %c1_i32 [0] : vector<3xi32> to i32
      %279 = arith.ori %c1645090125_i64, %c1645090125_i64 : i64
      %280 = math.absf %cst_2 : f16
      %281 = vector.create_mask %rank, %47 : vector<6x6xi1>
      %282 = arith.cmpi sge, %c-3986_i16, %c-3986_i16 : i16
      %283 = math.cos %10 : tensor<6x9xf16>
      %284 = arith.cmpi ule, %c1154782291_i64, %c1645090125_i64 : i64
      %285 = math.expm1 %1 : tensor<9xf16>
      scf.yield
    }
    case 4 {
      %271 = affine.if affine_set<(d0, d1, d2) : (d1 mod 64 == 0)>(%c0, %c11, %c1) -> memref<9xi1> {
        %rank_47 = tensor.rank %5 : tensor<6x6xi32>
        %289 = arith.minui %c1645090125_i64, %c272237189_i64 : i64
        %290 = math.powf %4, %1 : tensor<9xf16>
        %291 = arith.muli %false, %51 : i1
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %292 = vector.transfer_read %1[%c12], %cst_49 : tensor<9xf16>, vector<f16>
        %293 = arith.andi %c-10262_i16, %c-3986_i16 : i16
        %294 = arith.minsi %false, %false_8 : i1
        %295 = math.expm1 %7 : tensor<6x9xf32>
        affine.yield %alloc_17 : memref<9xi1>
      } else {
        %289 = math.fma %reduced, %18, %reduced : tensor<f16>
        %cast_47 = tensor.cast %25 : tensor<6xi1> to tensor<?xi1>
        %290 = math.log10 %7 : tensor<6x9xf32>
        %291 = vector.extract_strided_slice %28 {offsets = [2], sizes = [1], strides = [1]} : vector<6x6xi1> to vector<1x6xi1>
        %alloc_48 = memref.alloc() : memref<6x6xi32>
        memref.copy %alloc_24, %alloc_48 : memref<6x6xi32> to memref<6x6xi32>
        %292 = bufferization.clone %alloc_12 : memref<6xi16> to memref<6xi16>
        %293 = bufferization.clone %36 : memref<9xf32> to memref<9xf32>
        %294 = arith.andi %false, %51 : i1
        affine.yield %alloc_19 : memref<9xi1>
      }
      %272 = math.ctpop %20 : tensor<6xi32>
      %273 = vector.splat %false_8 : vector<6x6xi1>
      %274 = vector.transpose %78, [0, 1] : vector<3x6xi1> to vector<3x6xi1>
      %275 = math.log10 %0 : tensor<6x9xf16>
      %276 = scf.while (%arg0 = %cst) : (f32) -> f32 {
        %289 = arith.addi %c272237189_i64, %c1154782291_i64 : i64
        %alloc_47 = memref.alloc() : memref<9xi64>
        memref.copy %alloc_10, %alloc_47 : memref<9xi64> to memref<9xi64>
        %290 = index.sub %c2, %c9
        %291 = arith.negf %cst_3 : f16
        %292 = arith.muli %c-10262_i16, %c-3986_i16 : i16
        %293 = vector.insertelement %c1_i32, %70[%c8 : index] : vector<6xi32>
        %294 = math.exp %splat : tensor<6x6xf32>
        %295 = vector.broadcast %false : i1 to vector<6xi1>
        %296 = vector.maskedload %alloc_19[%c8], %295, %295 : memref<9xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        scf.condition(%false_8) %cst_1 : f32
      } do {
      ^bb0(%arg0: f32):
        %289 = vector.reduction <mul>, %19 : vector<6xf16> into f16
        %290 = vector.broadcast %cst_0 : f16 to vector<6x6xf16>
        %291 = vector.splat %cst_27 : vector<6xf16>
        %292 = math.powf %15, %1 : tensor<9xf16>
        %293 = index.maxu %c7, %c0
        %294 = affine.load %alloc_12[%c12] : memref<6xi16>
        %295 = index.divs %c3, %c2
        %false_47 = index.bool.constant false
        %296 = arith.shrsi %c1645090125_i64, %c272237189_i64 : i64
        %297 = index.divu %c4, %c3
        %298 = index.casts %297 : index to i32
        %299 = arith.shli %false_7, %51 : i1
        %300 = index.ceildivu %c10, %297
        %301 = arith.subi %false_7, %false_47 : i1
        %302 = bufferization.clone %alloc_23 : memref<9xf32> to memref<9xf32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %303 = vector.transfer_read %2[%c13], %cst_48 : tensor<6xf32>, vector<f32>
        scf.yield %cst_6 : f32
      }
      %277 = math.tanh %11 : tensor<6x6xf32>
      %278 = math.rsqrt %reduced : tensor<f16>
      %279 = index.floordivs %c12, %c10
      %280 = math.expm1 %40 : f32
      %281 = math.tan %11 : tensor<6x6xf32>
      %alloc_46 = memref.alloc() : memref<9xf16>
      %282 = vector.shuffle %72, %72 [3, 5] : vector<3xi32>, vector<3xi32>
      bufferization.dealloc_tensor %12 : tensor<6x9xi64>
      %283 = bufferization.clone %alloc_19 : memref<9xi1> to memref<9xi1>
      %284 = tensor.empty() : tensor<6xf16>
      %285 = vector.broadcast %cst_3 : f16 to vector<9xf16>
      %286 = vector.broadcast %false_8 : i1 to vector<9xi1>
      %287 = vector.broadcast %c1_i32 : i32 to vector<9xi32>
      %288 = vector.gather %284[%c12] [%287], %286, %285 : tensor<6xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      scf.yield
    }
    default {
      %271 = vector.broadcast %false_7 : i1 to vector<6xi1>
      %272 = vector.insert %271, %28 [2] : vector<6xi1> into vector<6x6xi1>
      %273 = arith.maxui %c1154782291_i64, %c272237189_i64 : i64
      %274 = tensor.empty() : tensor<6x9xi32>
      %275 = math.fpowi %10, %274 : tensor<6x9xf16>, tensor<6x9xi32>
      %276 = arith.shli %c1645090125_i64, %c272237189_i64 : i64
      %277 = arith.divsi %c-3986_i16, %c-10262_i16 : i16
      %278 = tensor.empty() : tensor<6x6x6xf16>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%278 : tensor<6x6x6xf16>) {
      ^bb0(%out: f16):
        %291 = math.powf %10, %10 : tensor<6x9xf16>
        %292 = math.log %1 : tensor<9xf16>
        %293 = arith.negf %cst_6 : f32
        %294 = vector.transpose %78, [0, 1] : vector<3x6xi1> to vector<3x6xi1>
        %295 = affine.min affine_map<(d0) -> (d0, (d0 * 2) floordiv 16)>(%c13)
        %splat_48 = tensor.splat %cst_2 : tensor<9xf16>
        %296 = arith.minsi %false_8, %false_7 : i1
        %297 = vector.broadcast %cst_6 : f32 to vector<6x6xf32>
        %298 = vector.fma %297, %297, %297 : vector<6x6xf32>
        %299 = math.ceil %4 : tensor<9xf16>
        %300 = index.divs %47, %47
        %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<6x9xf16> into tensor<54xf16>
        %301 = arith.minui %c1645090125_i64, %c1645090125_i64 : i64
        %collapsed_49 = tensor.collapse_shape %12 [[0, 1]] : tensor<6x9xi64> into tensor<54xi64>
        %302 = index.sub %c14, %47
        %303 = arith.xori %false_8, %51 : i1
        %alloc_50 = memref.alloc() : memref<6x6xi1>
        memref.tensor_store %3, %alloc_50 : memref<6x6xi1>
        %304 = math.ctpop %c272237189_i64 : i64
        %305 = bufferization.to_tensor %alloc_13 : memref<6x6xf16>
        %306 = bufferization.clone %alloc_11 : memref<6xf32> to memref<6xf32>
        %307 = math.powf %splat, %11 : tensor<6x6xf32>
        %collapsed_51 = tensor.collapse_shape %splat [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
        %308 = arith.divf %cst_6, %cst_6 : f32
        %309 = index.maxs %c14, %c14
        %310 = arith.shrsi %51, %false_8 : i1
        %311 = index.ceildivs %302, %c1
        %312 = vector.extract_strided_slice %78 {offsets = [0], sizes = [2], strides = [1]} : vector<3x6xi1> to vector<2x6xi1>
        %313 = math.ceil %splat : tensor<6x6xf32>
        %314 = arith.xori %false_8, %false_8 : i1
        %315 = index.floordivs %38, %c10
        %316 = math.atan2 %out, %cst_0 : f16
        %317 = arith.xori %c-3986_i16, %c-10262_i16 : i16
        %alloc_52 = memref.alloc() : memref<9x6xi1>
        %318 = tensor.empty() : tensor<6x6xi1>
        %319 = linalg.matmul ins(%76, %alloc_52 : tensor<6x9xi1>, memref<9x6xi1>) outs(%318 : tensor<6x6xi1>) -> tensor<6x6xi1>
        linalg.yield %cst_0 : f16
      } -> tensor<6x6x6xf16>
      %280 = index.casts %c11 : index to i32
      %281 = arith.minf %40, %cst_6 : f32
      %282 = index.add %c7, %c2
      %283 = arith.divui %false_8, %false : i1
      %284 = vector.create_mask %c10 : vector<6xi1>
      %alloc_46 = memref.alloc() : memref<9x9xf16>
      %285 = tensor.empty() : tensor<6x9xf16>
      %286 = linalg.matmul ins(%10, %alloc_46 : tensor<6x9xf16>, memref<9x9xf16>) outs(%285 : tensor<6x9xf16>) -> tensor<6x9xf16>
      %287 = arith.maxsi %false, %false : i1
      %288 = vector.broadcast %51 : i1 to vector<i1>
      %289 = vector.transfer_write %288, %25[%c15] : vector<i1>, tensor<6xi1>
      %generated_47 = tensor.generate %c14, %rank {
      ^bb0(%arg0: index, %arg1: index):
        %from_elements_48 = tensor.from_elements %false_8, %false_7, %false_7, %false, %false_8, %false_7, %false_7, %51, %false_8 : tensor<9xi1>
        %291 = memref.atomic_rmw maxf %cst_0, %alloc_15[%c5] : (f16, memref<9xf16>) -> f16
        %292 = math.round %18 : tensor<f16>
        %293 = math.exp2 %10 : tensor<6x9xf16>
        tensor.yield %cst_6 : f32
      } : tensor<?x?xf32>
      %290 = arith.andi %c-10262_i16, %c-3986_i16 : i16
    }
    %81 = index.maxs %31, %47
    %82 = math.tan %cst_27 : f16
    %83 = memref.load %alloc_15[%c5] : memref<9xf16>
    %84 = arith.ceildivsi %false, %false_7 : i1
    %85 = math.round %cst_4 : f16
    %86 = arith.divsi %false_7, %false : i1
    %87 = math.ctlz %21 : tensor<i32>
    %true = arith.constant true
    %88 = vector.transfer_read %76[%c6, %c14], %true : tensor<6x9xi1>, vector<i1>
    %generated_28 = tensor.generate %38 {
    ^bb0(%arg0: index):
      %271 = index.floordivs %c10, %c1
      %272 = index.maxs %c1, %c15
      %alloc_46 = memref.alloc() : memref<6x9xi64>
      memref.tensor_store %12, %alloc_46 : memref<6x9xi64>
      %273 = arith.subi %false, %51 : i1
      tensor.yield %c1645090125_i64 : i64
    } : tensor<?xi64>
    %89 = index.sub %c10, %47
    %alloc_29 = memref.alloc() : memref<6xi32>
    memref.copy %alloc_22, %alloc_29 : memref<6xi32> to memref<6xi32>
    %true_30 = index.bool.constant true
    %90 = math.tan %1 : tensor<9xf16>
    %91 = arith.minf %cst_3, %cst_5 : f16
    %92 = arith.addi %c272237189_i64, %c1154782291_i64 : i64
    %93 = arith.andi %c1645090125_i64, %c1645090125_i64 : i64
    %94 = arith.divui %true, %true_30 : i1
    %95 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 32)>(%c11, %31, %45, %c1)
    %96 = index.ceildivu %c5, %c13
    %97 = tensor.empty() : tensor<6x6x6xf16>
    %98 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_13, %alloc_13 : memref<6x6xf16>, memref<6x6xf16>) outs(%97 : tensor<6x6x6xf16>) {
    ^bb0(%in: f16, %in_46: f16, %out: f16):
      %271 = math.copysign %0, %0 : tensor<6x9xf16>
      %272 = vector.insert %c1_i32, %72 [0] : i32 into vector<3xi32>
      %273 = math.exp %10 : tensor<6x9xf16>
      %274 = math.exp %40 : f32
      %275 = tensor.empty() : tensor<6x9xi32>
      %276 = math.fpowi %7, %275 : tensor<6x9xf32>, tensor<6x9xi32>
      %277 = vector.multi_reduction <minsi>, %27, %27 [] : vector<6x6xi32> to vector<6x6xi32>
      %278 = vector.splat %cst : vector<6x6xf32>
      %false_47 = index.bool.constant false
      %279 = arith.remui %c1645090125_i64, %c272237189_i64 : i64
      %280 = arith.remui %false, %false_47 : i1
      %281 = index.add %45, %c6
      %282 = index.ceildivs %95, %281
      %283 = math.exp %7 : tensor<6x9xf32>
      %284 = vector.insertelement %false, %53[] : vector<i1>
      %285 = arith.shli %c272237189_i64, %c272237189_i64 : i64
      %true_48 = index.bool.constant true
      %286 = arith.cmpi ule, %true_30, %true : i1
      %287 = math.fpowi %in_46, %c1_i32 : f16, i32
      %288 = math.expm1 %18 : tensor<f16>
      %289 = arith.minsi %c272237189_i64, %c272237189_i64 : i64
      memref.assume_alignment %36, 16 : memref<9xf32>
      %290 = tensor.empty() : tensor<i32>
      %mapped = linalg.map ins(%22, %21, %21 : tensor<i32>, tensor<i32>, tensor<i32>) outs(%290 : tensor<i32>)
        (%in_49: i32, %in_50: i32, %in_51: i32) {
          %300 = vector.reduction <maxf>, %19 : vector<6xf16> into f16
          %301 = arith.shli %c-10262_i16, %c-3986_i16 : i16
          %true_52 = index.bool.constant true
          %302 = vector.broadcast %in_46 : f16 to vector<6x6xf16>
          %303 = vector.outerproduct %19, %19, %302 {kind = #vector.kind<minf>} : vector<6xf16>, vector<6xf16>
          %304 = arith.subi %in_50, %in_50 : i32
          %305 = arith.subi %false_47, %false_8 : i1
          %306 = math.cttz %true_48 : i1
          %307 = arith.divui %true_52, %true : i1
          memref.tensor_store %5, %alloc_24 : memref<6x6xi32>
          %308 = vector.insert %in_49, %72 [1] : i32 into vector<3xi32>
          %309 = index.sizeof
          %310 = index.divs %95, %38
          %311 = index.maxu %c2, %281
          %312 = memref.load %alloc[%c0] : memref<9xf16>
          %false_53 = index.bool.constant false
          %313 = math.tan %10 : tensor<6x9xf16>
          %314 = vector.outerproduct %70, %70, %27 {kind = #vector.kind<minui>} : vector<6xi32>, vector<6xi32>
          %315 = math.expm1 %11 : tensor<6x6xf32>
          %alloca_54 = memref.alloca() : memref<6xf32>
          %316 = math.expm1 %15 : tensor<9xf16>
          %317 = math.fpowi %4, %6 : tensor<9xf16>, tensor<9xi32>
          %318 = arith.shrsi %c272237189_i64, %c1645090125_i64 : i64
          %319 = math.ctpop %16 : tensor<6x6xi32>
          %c1_i32_55 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %320 = vector.transfer_read %16[%c5, %31], %c0_i32 : tensor<6x6xi32>, vector<i32>
          %321 = arith.addi %true_30, %false_53 : i1
          %322 = tensor.empty() : tensor<9xi64>
          %323 = math.exp2 %reduced : tensor<f16>
          %324 = math.round %in_46 : f16
          %325 = math.fpowi %7, %275 : tensor<6x9xf32>, tensor<6x9xi32>
          %326 = math.ctpop %false_8 : i1
          %327 = arith.cmpf oge, %out, %cst_2 : f16
          %328 = arith.maxf %cst_5, %cst_2 : f16
          %c1_i32_56 = arith.constant 1 : i32
          linalg.yield %c1_i32_56 : i32
        }
      %291 = math.ctpop %6 : tensor<9xi32>
      %292 = arith.cmpi ule, %51, %false : i1
      %293 = math.cos %splat : tensor<6x6xf32>
      %294 = vector.transpose %26, [1, 0] : vector<6x6xi1> to vector<6x6xi1>
      %295 = vector.multi_reduction <maxsi>, %72, %c1_i32 [0] : vector<3xi32> to i32
      %296 = arith.subi %c-10262_i16, %c-10262_i16 : i16
      memref.assume_alignment %alloc_18, 16 : memref<6x6xf16>
      %297 = math.tanh %cst_5 : f16
      %298 = index.maxs %c14, %31
      %299 = bufferization.clone %alloc_13 : memref<6x6xf16> to memref<6x6xf16>
      linalg.yield %cst_2 : f16
    } -> tensor<6x6x6xf16>
    %99 = math.copysign %4, %15 : tensor<9xf16>
    memref.tensor_store %17, %alloc_24 : memref<6x6xi32>
    %100 = affine.min affine_map<(d0, d1, d2) -> (d1, (-(d2 floordiv 2)) mod 64, -(d2 floordiv 2), d0 - 16)>(%c7, %c5, %c0)
    %101 = math.exp %reduced : tensor<f16>
    %102 = math.fma %splat, %splat, %11 : tensor<6x6xf32>
    %103 = math.ctlz %true_30 : i1
    %104 = arith.divsi %c-3986_i16, %c-3986_i16 : i16
    %105 = index.divu %c0, %c14
    %106 = vector.reduction <or>, %72 : vector<3xi32> into i32
    %107 = index.divu %c9, %c3
    %108 = vector.shuffle %27, %27 [0, 1, 3, 5, 6, 10, 11] : vector<6x6xi32>, vector<6x6xi32>
    %109 = math.exp2 %splat : tensor<6x6xf32>
    %110 = arith.mulf %cst, %40 : f32
    %111 = math.log10 %10 : tensor<6x9xf16>
    %112 = affine.min affine_map<(d0) -> (d0 - 4, d0 + d0 + d0 ceildiv 8, d0 + d0 + d0 ceildiv 8, ((d0 ceildiv 8) mod 4) floordiv 2 - 2)>(%c5)
    %113 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
    %114 = math.exp2 %0 : tensor<6x9xf16>
    %115 = arith.addi %true, %false_7 : i1
    %116 = vector.broadcast %false_8 : i1 to vector<6xi1>
    %117 = vector.maskedload %alloc_13[%c4, %c4], %116, %19 : memref<6x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %118 = vector.insert %116, %28 [0] : vector<6xi1> into vector<6x6xi1>
    scf.index_switch %31 
    case 1 {
      %271 = arith.minsi %c1645090125_i64, %c1645090125_i64 : i64
      %272 = arith.maxui %c1645090125_i64, %c272237189_i64 : i64
      %273 = tensor.empty() : tensor<6x6xf32>
      %274 = linalg.matmul ins(%11, %11 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%273 : tensor<6x6xf32>) -> tensor<6x6xf32>
      %275 = arith.maxf %cst_6, %cst_1 : f32
      %276 = memref.load %alloc_23[%c2] : memref<9xf32>
      %277 = math.fpowi %splat, %5 : tensor<6x6xf32>, tensor<6x6xi32>
      %278 = arith.addi %c1_i32, %c1_i32 : i32
      memref.copy %alloc_13, %alloc_18 : memref<6x6xf16> to memref<6x6xf16>
      %279 = math.copysign %10, %0 : tensor<6x9xf16>
      %280 = math.rsqrt %10 : tensor<6x9xf16>
      %281 = index.divs %c9, %c15
      %282 = index.divs %100, %c3
      %283 = tensor.empty() : tensor<6x6xf32>
      %284 = linalg.matmul ins(%11, %273 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%283 : tensor<6x6xf32>) -> tensor<6x6xf32>
      %285 = arith.negf %40 : f32
      %286 = math.rsqrt %11 : tensor<6x6xf32>
      %true_46 = index.bool.constant true
      scf.yield
    }
    case 2 {
      memref.assume_alignment %alloc_15, 2 : memref<9xf16>
      %271 = math.rsqrt %cst_6 : f32
      %272 = bufferization.clone %alloc_10 : memref<9xi64> to memref<9xi64>
      %273 = math.ctlz %true : i1
      %274 = arith.floordivsi %false_7, %true_30 : i1
      %275 = vector.bitcast %113 : vector<6xf16> to vector<6xf16>
      %276 = math.ctlz %c1645090125_i64 : i64
      %277 = arith.shrsi %true_30, %51 : i1
      %278 = math.powf %0, %10 : tensor<6x9xf16>
      %279 = index.casts %c272237189_i64 : i64 to index
      %280 = math.tan %cst_6 : f32
      %alloca_46 = memref.alloca() : memref<6xf16>
      %281 = arith.divf %cst_2, %cst_5 : f16
      %282 = math.round %18 : tensor<f16>
      %283 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %284 = vector.fma %283, %283, %283 : vector<9xf32>
      %285 = bufferization.clone %alloc : memref<9xf16> to memref<9xf16>
      scf.yield
    }
    default {
      %271 = index.divs %c4, %47
      %272 = index.sizeof
      %273 = arith.shrsi %false_8, %51 : i1
      %274 = vector.reduction <minsi>, %116 : vector<6xi1> into i1
      %275 = affine.min affine_map<(d0, d1, d2) -> (d0 - (d2 + d0) + d2 + d0)>(%c4, %c3, %c3)
      %276 = math.floor %18 : tensor<f16>
      %277 = math.copysign %1, %1 : tensor<9xf16>
      %278 = math.powf %reduced, %18 : tensor<f16>
      %279 = math.rsqrt %reduced : tensor<f16>
      memref.copy %alloc_18, %alloc_13 : memref<6x6xf16> to memref<6x6xf16>
      %280 = arith.addi %false_7, %false : i1
      %281 = index.maxu %38, %c9
      %282 = vector.broadcast %40 : f32 to vector<9xf32>
      %283 = arith.remui %c1_i32, %c1_i32 : i32
      %284 = arith.divsi %false, %true_30 : i1
      %285 = vector.insertelement %cst_2, %19[%272 : index] : vector<6xf16>
    }
    %rank_31 = tensor.rank %splat : tensor<6x6xf32>
    %119 = index.add %c6, %c9
    %120 = scf.while (%arg0 = %72) : (vector<3xi32>) -> vector<3xi32> {
      %271 = vector.shuffle %28, %28 [0, 1, 5, 6, 7, 11] : vector<6x6xi1>, vector<6x6xi1>
      affine.for %arg1 = 0 to 41 {
      }
      %rank_46 = tensor.rank %7 : tensor<6x9xf32>
      %272 = memref.load %alloc[%c8] : memref<9xf16>
      %273 = math.powf %cst_0, %cst_5 : f16
      %274 = arith.addi %false_7, %false : i1
      %275 = math.round %4 : tensor<9xf16>
      %276 = index.add %c14, %c15
      scf.condition(%false_8) %72 : vector<3xi32>
    } do {
    ^bb0(%arg0: vector<3xi32>):
      %271 = arith.divsi %false_8, %false_7 : i1
      %272 = arith.muli %false_7, %true : i1
      %273 = arith.divsi %51, %true_30 : i1
      %274 = index.floordivs %c11, %96
      %275 = math.floor %cst_27 : f16
      %276 = vector.multi_reduction <and>, %78, %78 [] : vector<3x6xi1> to vector<3x6xi1>
      %277 = arith.subi %c1645090125_i64, %c1154782291_i64 : i64
      %278 = arith.minf %cst, %cst_1 : f32
      %279 = math.fpowi %cst_0, %c1_i32 : f16, i32
      %280 = math.ceil %cst_27 : f16
      %281 = math.exp2 %cst_5 : f16
      %282 = vector.flat_transpose %72 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
      %cast_46 = tensor.cast %76 : tensor<6x9xi1> to tensor<?x?xi1>
      %283 = arith.andi %c-3986_i16, %c-3986_i16 : i16
      %284 = math.ceil %15 : tensor<9xf16>
      %from_elements_47 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<9xi32>
      scf.yield %282 : vector<3xi32>
    }
    memref.copy %36, %alloc_23 : memref<9xf32> to memref<9xf32>
    %121 = vector.broadcast %c-3986_i16 : i16 to vector<11xi16>
    %122 = vector.broadcast %false_7 : i1 to vector<11xi1>
    %123 = vector.maskedload %alloc_21[%c1], %122, %121 : memref<6xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
    %124 = math.tan %cst_2 : f16
    %125 = math.round %cst_1 : f32
    %126 = arith.mulf %cst_27, %cst_4 : f16
    %127 = vector.splat %38 : vector<6x9xindex>
    memref.tensor_store %splat, %alloc_16 : memref<6x6xf32>
    %128 = math.copysign %7, %7 : tensor<6x9xf32>
    %129 = arith.cmpi ugt, %true_30, %51 : i1
    %130 = scf.index_switch %96 -> vector<6xi1> 
    case 1 {
      %271 = vector.insert %false_8, %116 [5] : i1 into vector<6xi1>
      %272 = math.exp2 %7 : tensor<6x9xf32>
      %273 = vector.extract_strided_slice %122 {offsets = [9], sizes = [2], strides = [1]} : vector<11xi1> to vector<2xi1>
      %274 = tensor.empty() : tensor<6x6x6xf16>
      %275 = tensor.empty() : tensor<6xf16>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_18, %275, %275 : memref<6x6xf16>, tensor<6xf16>, tensor<6xf16>) outs(%274 : tensor<6x6x6xf16>) {
      ^bb0(%in: f16, %in_47: f16, %in_48: f16, %out: f16):
        %288 = arith.divui %c-3986_i16, %c-10262_i16 : i16
        %289 = index.casts %false : i1 to index
        %290 = math.rsqrt %7 : tensor<6x9xf32>
        memref.assume_alignment %alloc_17, 1 : memref<9xi1>
        %291 = arith.shli %false_7, %51 : i1
        %292 = index.divs %289, %c11
        %splat_49 = tensor.splat %in_47 : tensor<6x6xf16>
        %293 = arith.cmpf ule, %in_48, %cst_5 : f16
        %294 = index.divs %c9, %c7
        %295 = arith.cmpf ueq, %cst_1, %cst : f32
        %296 = arith.muli %51, %false_8 : i1
        %297 = arith.muli %c-10262_i16, %c-3986_i16 : i16
        %298 = math.ctpop %true_30 : i1
        %extracted = tensor.extract %6[%c3] : tensor<9xi32>
        %299 = arith.maxf %in_48, %in : f16
        %300 = vector.transpose %116, [0] : vector<6xi1> to vector<6xi1>
        %301 = memref.load %alloc_17[%c6] : memref<9xi1>
        %302 = arith.andi %c-10262_i16, %c-3986_i16 : i16
        %303 = memref.load %alloc_10[%c8] : memref<9xi64>
        %304 = arith.maxui %false_7, %false : i1
        %305 = math.fpowi %cst_6, %c1_i32 : f32, i32
        %306 = vector.reduction <add>, %70 : vector<6xi32> into i32
        %307 = arith.muli %c1645090125_i64, %c1154782291_i64 : i64
        bufferization.dealloc_tensor %15 : tensor<9xf16>
        %308 = tensor.empty() : tensor<6xi16>
        %alloc_50 = memref.alloc() : memref<6xi64>
        memref.copy %alloc_20, %alloc_50 : memref<6xi64> to memref<6xi64>
        %309 = arith.cmpf ole, %out, %in_47 : f16
        %310 = vector.flat_transpose %116 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %311 = index.maxs %31, %47
        %312 = arith.andi %true_30, %false_7 : i1
        bufferization.dealloc_tensor %4 : tensor<9xf16>
        %313 = affine.max affine_map<(d0, d1, d2) -> (0, 0, d0 * 128, d2 mod 2)>(%311, %c6, %c4)
        linalg.yield %out : f16
      } -> tensor<6x6x6xf16>
      %277 = arith.minui %c1645090125_i64, %c1645090125_i64 : i64
      %278 = arith.minf %cst_2, %cst_5 : f16
      %279 = arith.divsi %c-3986_i16, %c-10262_i16 : i16
      %splat_46 = tensor.splat %c272237189_i64 : tensor<6x6xi64>
      %280 = memref.load %alloc[%c1] : memref<9xf16>
      %281 = math.round %cst_5 : f16
      %282 = index.castu %false : i1 to index
      %283 = math.fma %7, %7, %7 : tensor<6x9xf32>
      %284 = math.rsqrt %2 : tensor<6xf32>
      %285 = bufferization.clone %alloc_15 : memref<9xf16> to memref<9xf16>
      %286 = bufferization.to_tensor %36 : memref<9xf32>
      %287 = arith.minsi %false_8, %false_7 : i1
      scf.yield %116 : vector<6xi1>
    }
    case 2 {
      %271 = math.powf %15, %1 : tensor<9xf16>
      %272 = vector.transpose %28, [1, 0] : vector<6x6xi1> to vector<6x6xi1>
      %273 = arith.minsi %true, %51 : i1
      %274 = arith.xori %true_30, %true : i1
      %275 = memref.realloc %alloc_14 : memref<9xf16> to memref<11xf16>
      %276 = arith.xori %false_7, %51 : i1
      %277 = arith.addi %c1645090125_i64, %c1154782291_i64 : i64
      %278 = index.sizeof
      %279 = arith.minf %cst, %cst : f32
      %alloc_46 = memref.alloc() : memref<9x11xf16>
      %280 = tensor.empty() : tensor<6x11xf16>
      %281 = linalg.matmul ins(%0, %alloc_46 : tensor<6x9xf16>, memref<9x11xf16>) outs(%280 : tensor<6x11xf16>) -> tensor<6x11xf16>
      %282 = tensor.empty() : tensor<6x9xi32>
      %283 = math.fpowi %10, %282 : tensor<6x9xf16>, tensor<6x9xi32>
      %284 = memref.load %alloc_21[%c3] : memref<6xi16>
      %285 = vector.broadcast %cst : f32 to vector<11xf32>
      %286 = vector.maskedload %36[%c4], %122, %285 : memref<9xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      memref.assume_alignment %alloc_9, 1 : memref<9xf32>
      %287 = index.maxu %112, %107
      %288 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %288, %alloc_16[%119, %38] : vector<f32>, memref<6x6xf32>
      scf.yield %116 : vector<6xi1>
    }
    default {
      %271 = index.maxu %c14, %c11
      %272 = math.ctpop %9 : tensor<9xi16>
      %273 = arith.andi %c1154782291_i64, %c272237189_i64 : i64
      %274 = affine.load %alloc_23[%c0] : memref<9xf32>
      %275 = vector.reduction <xor>, %122 : vector<11xi1> into i1
      %276 = arith.maxui %false_8, %false_7 : i1
      %277 = index.casts %51 : i1 to index
      %from_elements_46 = tensor.from_elements %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-3986_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16, %c-10262_i16 : tensor<6x9xi16>
      %278 = bufferization.clone %alloc_9 : memref<9xf32> to memref<9xf32>
      %279 = arith.maxui %true, %false_8 : i1
      %280 = math.log %10 : tensor<6x9xf16>
      %alloc_47 = memref.alloc() : memref<6xi64>
      memref.copy %alloc_20, %alloc_47 : memref<6xi64> to memref<6xi64>
      %281 = math.exp2 %cst_6 : f32
      %from_elements_48 = tensor.from_elements %cst_0, %cst_3, %cst_0, %cst_3, %cst_3, %cst_0 : tensor<6xf16>
      %282 = math.copysign %15, %15 : tensor<9xf16>
      %283 = arith.muli %c272237189_i64, %c1154782291_i64 : i64
      scf.yield %116 : vector<6xi1>
    }
    %131 = arith.maxsi %c1_i32, %c1_i32 : i32
    %132 = vector.broadcast %c1_i32 : i32 to vector<11xi32>
    %133 = vector.maskedload %alloc_22[%c3], %122, %132 : memref<6xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
    %alloca = memref.alloca() : memref<6xi16>
    %134 = math.sqrt %cst : f32
    %alloc_32 = memref.alloc() : memref<6x9xf16>
    memref.tensor_store %10, %alloc_32 : memref<6x9xf16>
    %135 = vector.bitcast %27 : vector<6x6xi32> to vector<6x6xi32>
    %136 = arith.shrui %false_7, %51 : i1
    %137 = bufferization.clone %alloc_20 : memref<6xi64> to memref<6xi64>
    %138 = vector.insert %c1_i32, %70 [5] : i32 into vector<6xi32>
    %139 = index.divs %c11, %89
    %140 = vector.reduction <and>, %132 : vector<11xi32> into i32
    %141 = math.copysign %reduced, %reduced : tensor<f16>
    %alloca_33 = memref.alloca() : memref<9xf32>
    %142 = memref.load %alloc_17[%c5] : memref<9xi1>
    %143 = vector.broadcast %cst_1 : f32 to vector<6x9xf32>
    %144 = vector.fma %143, %143, %143 : vector<6x9xf32>
    %alloc_34 = memref.alloc() : memref<6xi32>
    memref.copy %alloc_22, %alloc_34 : memref<6xi32> to memref<6xi32>
    %145 = index.ceildivu %38, %c4
    %146 = vector.insert %c1_i32, %133 [5] : i32 into vector<11xi32>
    %147 = vector.transpose %144, [0, 1] : vector<6x9xf32> to vector<6x9xf32>
    %148 = math.powf %0, %0 : tensor<6x9xf16>
    %149 = vector.reduction <mul>, %19 : vector<6xf16> into f16
    %150 = math.log %18 : tensor<f16>
    %151 = vector.multi_reduction <mul>, %116, %116 [] : vector<6xi1> to vector<6xi1>
    %152 = math.tan %cst_5 : f16
    %153 = arith.divsi %c-3986_i16, %c-10262_i16 : i16
    %154 = math.atan2 %cst_3, %cst_0 : f16
    %155 = math.powf %reduced, %reduced : tensor<f16>
    %156 = arith.remf %cst_6, %cst_6 : f32
    %157 = math.atan %4 : tensor<9xf16>
    %158 = arith.andi %c-10262_i16, %c-10262_i16 : i16
    %159 = tensor.empty() : tensor<9x6xi64>
    %160 = tensor.empty() : tensor<6x6xi64>
    %161 = linalg.matmul ins(%12, %159 : tensor<6x9xi64>, tensor<9x6xi64>) outs(%160 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %162 = arith.cmpi slt, %c1154782291_i64, %c1645090125_i64 : i64
    %generated_35 = tensor.generate %c5 {
    ^bb0(%arg0: index):
      %271 = vector.flat_transpose %72 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
      %272 = vector.multi_reduction <and>, %121, %c-10262_i16 [0] : vector<11xi16> to i16
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %121, %123, %c-10262_i16 : vector<11xi16>, vector<11xi16> into i16
      %274 = arith.xori %false_7, %true_30 : i1
      tensor.yield %c1_i32 : i32
    } : tensor<?xi32>
    %163 = memref.atomic_rmw addf %cst_1, %alloc_11[%c3] : (f32, memref<6xf32>) -> f32
    %164 = math.log10 %1 : tensor<9xf16>
    bufferization.dealloc_tensor %0 : tensor<6x9xf16>
    %165 = math.ctlz %12 : tensor<6x9xi64>
    %166 = arith.maxf %cst_0, %cst_4 : f16
    %rank_36 = tensor.rank %4 : tensor<9xf16>
    %167 = arith.minf %cst_4, %cst_5 : f16
    %168 = arith.shrsi %false, %false_8 : i1
    %alloca_37 = memref.alloca() : memref<6x6xi1>
    %169 = scf.while (%arg0 = %78) : (vector<3x6xi1>) -> vector<3x6xi1> {
      %271 = vector.create_mask %c6 : vector<9xi1>
      %272 = index.divu %89, %c4
      %273 = math.rsqrt %cst_3 : f16
      %274 = arith.cmpi sgt, %c-10262_i16, %c-10262_i16 : i16
      memref.assume_alignment %alloc_24, 8 : memref<6x6xi32>
      %275 = math.tanh %0 : tensor<6x9xf16>
      %276 = math.absi %12 : tensor<6x9xi64>
      %277 = memref.load %alloc_23[%c6] : memref<9xf32>
      scf.condition(%false_7) %78 : vector<3x6xi1>
    } do {
    ^bb0(%arg0: vector<3x6xi1>):
      %271 = math.log10 %cst_5 : f16
      %272 = index.ceildivu %31, %c1
      %273 = vector.create_mask %c12 : vector<6xi1>
      %274 = index.sizeof
      %275 = math.ctlz %12 : tensor<6x9xi64>
      %false_46 = index.bool.constant false
      %276 = arith.minui %51, %true_30 : i1
      %277 = math.exp %10 : tensor<6x9xf16>
      %278 = memref.atomic_rmw addi %c-3986_i16, %alloc_21[%c2] : (i16, memref<6xi16>) -> i16
      %279 = vector.reduction <and>, %132 : vector<11xi32> into i32
      %280 = vector.broadcast %cst : f32 to vector<6x9xf32>
      %281 = bufferization.clone %alloc_15 : memref<9xf16> to memref<9xf16>
      %282 = math.roundeven %0 : tensor<6x9xf16>
      %283 = math.powf %2, %2 : tensor<6xf32>
      %284 = math.fpowi %2, %20 : tensor<6xf32>, tensor<6xi32>
      %285 = index.casts %51 : i1 to index
      scf.yield %78 : vector<3x6xi1>
    }
    %170 = math.expm1 %splat : tensor<6x6xf32>
    %171 = vector.flat_transpose %123 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
    %172 = memref.load %alloc[%c3] : memref<9xf16>
    %173 = math.roundeven %40 : f32
    %174 = arith.addf %cst_3, %cst_4 : f16
    %175 = arith.muli %false_7, %false_7 : i1
    %176 = math.fma %11, %11, %11 : tensor<6x6xf32>
    %177 = arith.muli %51, %false_8 : i1
    %178 = arith.divsi %false, %51 : i1
    %179 = arith.remui %c1645090125_i64, %c272237189_i64 : i64
    %180 = vector.create_mask %31, %38 : vector<6x6xi1>
    %181 = vector.extract_strided_slice %70 {offsets = [4], sizes = [1], strides = [1]} : vector<6xi32> to vector<1xi32>
    %182 = arith.subi %true_30, %51 : i1
    %183 = scf.while (%arg0 = %27) : (vector<6x6xi32>) -> vector<6x6xi32> {
      %271 = math.expm1 %7 : tensor<6x9xf32>
      %alloca_46 = memref.alloca() : memref<6xf16>
      %272 = arith.maxui %c1_i32, %c1_i32 : i32
      %273 = vector.flat_transpose %121 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
      %274 = memref.load %alloc_19[%c5] : memref<9xi1>
      %275 = memref.realloc %36 : memref<9xf32> to memref<11xf32>
      %rank_47 = tensor.rank %17 : tensor<6x6xi32>
      %276 = math.exp2 %2 : tensor<6xf32>
      scf.condition(%51) %135 : vector<6x6xi32>
    } do {
    ^bb0(%arg0: vector<6x6xi32>):
      %271 = math.exp %18 : tensor<f16>
      %rank_46 = tensor.rank %16 : tensor<6x6xi32>
      %272 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
      %273 = arith.shli %false, %true : i1
      %274 = arith.addf %cst_1, %cst_1 : f32
      %275 = arith.maxf %cst_2, %cst_3 : f16
      %276 = vector.load %alloc_19[%c8] : memref<9xi1>, vector<6x6xi1>
      %277 = arith.cmpf ult, %cst_0, %cst_27 : f16
      %278 = index.sub %89, %c12
      %279 = tensor.empty() : tensor<9x9xi1>
      %280 = tensor.empty() : tensor<6x9xi1>
      %281 = linalg.matmul ins(%13, %279 : tensor<6x9xi1>, tensor<9x9xi1>) outs(%280 : tensor<6x9xi1>) -> tensor<6x9xi1>
      %282 = index.divu %rank_46, %rank
      %283 = index.divs %c6, %c12
      %cst_47 = arith.constant 1.000000e+00 : f16
      %cst_48 = arith.constant 0.000000e+00 : f16
      %284 = vector.transfer_read %1[%c4], %cst_48 : tensor<9xf16>, vector<f16>
      %cast_49 = tensor.cast %11 : tensor<6x6xf32> to tensor<?x?xf32>
      %285 = arith.shrui %51, %false : i1
      %286 = arith.cmpi sge, %c-3986_i16, %c-10262_i16 : i16
      scf.yield %27 : vector<6x6xi32>
    }
    %184 = arith.remf %cst_5, %cst_27 : f16
    %185 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %135, %70, %70 : vector<6x6xi32>, vector<6xi32> into vector<6xi32>
    %cast = tensor.cast %18 : tensor<f16> to tensor<f16>
    memref.copy %alloc_18, %alloc_13 : memref<6x6xf16> to memref<6x6xf16>
    %186 = bufferization.to_tensor %alloc_11 : memref<6xf32>
    %187 = arith.floordivsi %c-10262_i16, %c-3986_i16 : i16
    %188 = tensor.empty() : tensor<6x9xi32>
    %189 = math.fpowi %7, %188 : tensor<6x9xf32>, tensor<6x9xi32>
    bufferization.dealloc_tensor %cast : tensor<f16>
    %190 = vector.insertelement %c1_i32, %70[%c6 : index] : vector<6xi32>
    %191 = math.expm1 %cst_6 : f32
    %192 = scf.while (%arg0 = %70) : (vector<6xi32>) -> vector<6xi32> {
      %271 = index.add %c8, %rank_36
      %272 = index.castu %145 : index to i32
      %273 = affine.max affine_map<(d0, d1, d2) -> (d2 - d0, ((d2 - d0) * 64) floordiv 128 - (d2 - d0) * 64, (d2 - d0) * 32)>(%c8, %c4, %107)
      %274 = bufferization.to_tensor %alloc_22 : memref<6xi32>
      %275 = bufferization.clone %36 : memref<9xf32> to memref<9xf32>
      %276 = bufferization.clone %alloc_24 : memref<6x6xi32> to memref<6x6xi32>
      bufferization.dealloc_tensor %5 : tensor<6x6xi32>
      memref.assume_alignment %alloc_17, 4 : memref<9xi1>
      scf.condition(%false_7) %70 : vector<6xi32>
    } do {
    ^bb0(%arg0: vector<6xi32>):
      %271 = vector.broadcast %cst_0 : f16 to vector<11xf16>
      %272 = vector.maskedload %alloc_13[%c2, %c5], %122, %271 : memref<6x6xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
      %273 = arith.addf %40, %cst : f32
      %274 = vector.broadcast %40 : f32 to vector<6x6xf32>
      %275 = arith.cmpf une, %cst_6, %40 : f32
      %276 = vector.extract_strided_slice %19 {offsets = [4], sizes = [2], strides = [1]} : vector<6xf16> to vector<2xf16>
      %277 = math.absf %0 : tensor<6x9xf16>
      %278 = arith.subi %false, %false_8 : i1
      %279 = vector.insert %70, %135 [4] : vector<6xi32> into vector<6x6xi32>
      %280 = math.powf %cst_5, %cst_0 : f16
      memref.assume_alignment %alloc_19, 8 : memref<9xi1>
      %281 = arith.remui %true_30, %true_30 : i1
      %282 = math.expm1 %reduced : tensor<f16>
      %283 = arith.cmpf une, %cst_3, %cst_5 : f16
      %284 = arith.minui %51, %false : i1
      %285 = tensor.empty() : tensor<6x6x6xf16>
      %286 = tensor.empty() : tensor<6xf16>
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%286, %alloc_18 : tensor<6xf16>, memref<6x6xf16>) outs(%285 : tensor<6x6x6xf16>) {
      ^bb0(%in: f16, %in_46: f16, %out: f16):
        %288 = math.expm1 %splat : tensor<6x6xf32>
        %289 = tensor.empty() : tensor<6x9xi32>
        %290 = linalg.matmul ins(%17, %188 : tensor<6x6xi32>, tensor<6x9xi32>) outs(%289 : tensor<6x9xi32>) -> tensor<6x9xi32>
        %291 = bufferization.clone %alloc_11 : memref<6xf32> to memref<6xf32>
        %292 = math.absf %cst_4 : f16
        %293 = vector.extract_strided_slice %121 {offsets = [1], sizes = [9], strides = [1]} : vector<11xi16> to vector<9xi16>
        %294 = arith.maxsi %c-10262_i16, %c-10262_i16 : i16
        %295 = math.atan2 %splat, %11 : tensor<6x6xf32>
        %rank_47 = tensor.rank %11 : tensor<6x6xf32>
        %296 = vector.broadcast %40 : f32 to vector<6xf32>
        %297 = vector.fma %296, %296, %296 : vector<6xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %122, %122, %true : vector<11xi1>, vector<11xi1> into i1
        %299 = arith.floordivsi %c272237189_i64, %c1154782291_i64 : i64
        %300 = arith.minsi %c1645090125_i64, %c1645090125_i64 : i64
        %301 = memref.atomic_rmw minu %c-10262_i16, %alloc_12[%c5] : (i16, memref<6xi16>) -> i16
        %302 = math.log10 %4 : tensor<9xf16>
        %303 = index.add %c12, %c2
        %304 = math.log2 %2 : tensor<6xf32>
        %305 = math.ctlz %false_7 : i1
        %306 = math.expm1 %cst_27 : f16
        %307 = vector.flat_transpose %133 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
        %308 = vector.create_mask %119 : vector<6xi1>
        %309 = vector.broadcast %45 : index to vector<6xindex>
        vector.scatter %alloc[%c1] [%309], %308, %19 : memref<9xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %310 = index.divs %145, %81
        %311 = arith.andi %true_30, %true : i1
        %312 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %313 = vector.fma %312, %296, %312 : vector<6xf32>
        %alloc_48 = memref.alloc() : memref<6x9xi16>
        %314 = vector.broadcast %c-10262_i16 : i16 to vector<6x9xi16>
        %315 = vector.broadcast %51 : i1 to vector<6x9xi1>
        %316 = vector.broadcast %c1_i32 : i32 to vector<6x9xi32>
        %317 = vector.gather %alloc_48[%96, %c4] [%316], %315, %314 : memref<6x9xi16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi16> into vector<6x9xi16>
        %318 = math.expm1 %4 : tensor<9xf16>
        %319 = arith.cmpf true, %cst_2, %cst_2 : f16
        %320 = math.ctlz %c1154782291_i64 : i64
        %321 = math.absf %cst_27 : f16
        %322 = vector.flat_transpose %181 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %323 = math.absi %true_30 : i1
        %324 = arith.subi %c-3986_i16, %c-3986_i16 : i16
        linalg.yield %cst_5 : f16
      } -> tensor<6x6x6xf16>
      bufferization.dealloc_tensor %splat : tensor<6x6xf32>
      scf.yield %70 : vector<6xi32>
    }
    %193 = arith.shrsi %false_8, %true_30 : i1
    %194 = math.fpowi %2, %20 : tensor<6xf32>, tensor<6xi32>
    %alloc_38 = memref.alloc() : memref<6xf16>
    %195 = math.log10 %cst_27 : f16
    %196 = math.cttz %51 : i1
    %197 = math.copysign %cst_2, %cst_5 : f16
    %198 = arith.remui %c1_i32, %c1_i32 : i32
    %199 = math.rsqrt %15 : tensor<9xf16>
    %200 = arith.shrsi %false, %true : i1
    %201 = math.sqrt %reduced : tensor<f16>
    %202 = index.casts %false_7 : i1 to index
    %203 = memref.atomic_rmw assign %c1_i32, %alloc_24[%c4, %c1] : (i32, memref<6x6xi32>) -> i32
    %204 = arith.divsi %false_8, %false : i1
    %205 = arith.minsi %c-10262_i16, %c-10262_i16 : i16
    %206 = math.log10 %cst_27 : f16
    %207 = index.ceildivs %c11, %c11
    %208 = vector.broadcast %cst_27 : f16 to vector<11xf16>
    %209 = vector.maskedload %alloc_15[%c7], %122, %208 : memref<9xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %210 = math.fpowi %2, %20 : tensor<6xf32>, tensor<6xi32>
    %211 = index.divs %119, %c7
    %212 = arith.cmpf uno, %cst_5, %cst_5 : f16
    %splat_39 = tensor.splat %cst_4 : tensor<6x9xf16>
    %213 = affine.apply affine_map<(d0, d1) -> ((-d1 + (d1 ceildiv 4) floordiv 4) ceildiv 16)>(%c5, %rank_31)
    %214 = arith.minf %cst_27, %cst_5 : f16
    %215 = tensor.empty() : tensor<6x6xi16>
    %216 = vector.broadcast %c-3986_i16 : i16 to vector<6x9xi16>
    %217 = vector.broadcast %true_30 : i1 to vector<6x9xi1>
    %218 = vector.broadcast %c1_i32 : i32 to vector<6x9xi32>
    %219 = vector.gather %215[%c12, %89] [%218], %217, %216 : tensor<6x6xi16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi16> into vector<6x9xi16>
    %220 = arith.addi %c1_i32, %c1_i32 : i32
    %221 = math.atan %splat : tensor<6x6xf32>
    %222 = tensor.empty() : tensor<6x6x6xf16>
    %223 = tensor.empty() : tensor<6xf16>
    %224 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%223, %alloc_18, %223 : tensor<6xf16>, memref<6x6xf16>, tensor<6xf16>) outs(%222 : tensor<6x6x6xf16>) {
    ^bb0(%in: f16, %in_46: f16, %in_47: f16, %out: f16):
      %alloc_48 = memref.alloc() : memref<9xi32>
      memref.tensor_store %6, %alloc_48 : memref<9xi32>
      %271 = arith.addf %cst, %cst : f32
      %272 = math.log %15 : tensor<9xf16>
      %273 = tensor.empty() : tensor<6x6x6xf16>
      %274 = tensor.empty() : tensor<6xf16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_18, %273, %274 : memref<6x6xf16>, tensor<6x6x6xf16>, tensor<6xf16>) outs(%273 : tensor<6x6x6xf16>) {
      ^bb0(%in_53: f16, %in_54: f16, %in_55: f16, %out_56: f16):
        %304 = vector.transpose %219, [1, 0] : vector<6x9xi16> to vector<9x6xi16>
        %305 = arith.minsi %c-10262_i16, %c-3986_i16 : i16
        %306 = bufferization.to_tensor %alloc_18 : memref<6x6xf16>
        %307 = arith.maxf %cst, %cst_6 : f32
        %308 = arith.addi %c272237189_i64, %c1154782291_i64 : i64
        %309 = arith.minf %out_56, %cst_2 : f16
        %310 = arith.remf %cst_27, %in_54 : f16
        %311 = vector.broadcast %false_8 : i1 to vector<9xi1>
        %312 = vector.insert %311, %217 [4] : vector<9xi1> into vector<6x9xi1>
        %313 = arith.muli %false_7, %true : i1
        %314 = math.log %in_46 : f16
        %315 = vector.reduction <minui>, %181 : vector<1xi32> into i32
        %316 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %132, %132, %c1_i32 : vector<11xi32>, vector<11xi32> into i32
        %rank_57 = tensor.rank %25 : tensor<6xi1>
        %317 = math.rsqrt %in : f16
        %318 = vector.splat %cst : vector<6x6xf32>
        %319 = math.log10 %15 : tensor<9xf16>
        %320 = math.ctpop %c272237189_i64 : i64
        %321 = math.ctlz %160 : tensor<6x6xi64>
        %322 = math.ctpop %76 : tensor<6x9xi1>
        %323 = arith.divsi %c-10262_i16, %c-10262_i16 : i16
        %324 = math.log %11 : tensor<6x6xf32>
        %collapsed = tensor.collapse_shape %16 [[0, 1]] : tensor<6x6xi32> into tensor<36xi32>
        %325 = affine.load %alloc_14[%c4] : memref<9xf16>
        %326 = arith.cmpi sle, %c-3986_i16, %c-10262_i16 : i16
        %327 = math.tanh %11 : tensor<6x6xf32>
        %collapsed_58 = tensor.collapse_shape %160 [[0, 1]] : tensor<6x6xi64> into tensor<36xi64>
        %328 = vector.insert %c-10262_i16, %171 [10] : i16 into vector<11xi16>
        %329 = vector.insert %c-3986_i16, %171 [3] : i16 into vector<11xi16>
        %330 = arith.cmpi sle, %false_7, %false : i1
        %331 = arith.negf %cst_3 : f16
        %332 = math.ctlz %12 : tensor<6x9xi64>
        %333 = memref.load %alloc_20[%c3] : memref<6xi64>
        linalg.yield %in_54 : f16
      } -> tensor<6x6x6xf16>
      %276 = math.copysign %cst_2, %in : f16
      %277 = arith.cmpi uge, %51, %false_8 : i1
      %278 = index.ceildivs %rank, %89
      %279 = arith.divsi %51, %true_30 : i1
      %280 = affine.max affine_map<(d0, d1) -> ((d1 + d0) * 2, (d1 + d0) * 2, d1 + d0)>(%c3, %c0)
      %281 = arith.shrui %c1645090125_i64, %c272237189_i64 : i64
      %282 = math.absf %cst_6 : f32
      %cast_49 = tensor.cast %11 : tensor<6x6xf32> to tensor<?x?xf32>
      %c1_i32_50 = arith.constant 1 : i32
      %283 = vector.transfer_read %16[%207, %c15], %c1_i32_50 : tensor<6x6xi32>, vector<9xi32>
      %284 = tensor.empty() : tensor<6x9xi1>
      %285 = linalg.matmul ins(%3, %13 : tensor<6x6xi1>, tensor<6x9xi1>) outs(%284 : tensor<6x9xi1>) -> tensor<6x9xi1>
      %286 = math.fpowi %cst_27, %c1_i32_50 : f16, i32
      %287 = arith.ceildivsi %c272237189_i64, %c1154782291_i64 : i64
      %288 = tensor.empty() : tensor<9x6xi64>
      %289 = tensor.empty() : tensor<6x6xi64>
      %290 = linalg.matmul ins(%12, %288 : tensor<6x9xi64>, tensor<9x6xi64>) outs(%289 : tensor<6x6xi64>) -> tensor<6x6xi64>
      %291 = arith.subi %c1154782291_i64, %c1154782291_i64 : i64
      %292 = arith.addf %cst_2, %cst_3 : f16
      %293 = arith.cmpf uge, %cst_5, %in_46 : f16
      %294 = math.tan %in : f16
      %rank_51 = tensor.rank %generated_25 : tensor<?x9xi1>
      %295 = math.tan %cst_2 : f16
      %296 = math.tan %1 : tensor<9xf16>
      %297 = math.log %2 : tensor<6xf32>
      %298 = arith.maxf %cst, %cst_6 : f32
      %rank_52 = tensor.rank %18 : tensor<f16>
      %299 = arith.maxsi %c1_i32, %c1_i32 : i32
      %300 = vector.splat %c5 : vector<6x6xindex>
      %301 = arith.minui %false_8, %false_8 : i1
      %302 = math.absf %in_46 : f16
      %303 = math.copysign %186, %2 : tensor<6xf32>
      linalg.yield %in_46 : f16
    } -> tensor<6x6x6xf16>
    %225 = math.absi %25 : tensor<6xi1>
    %226 = math.exp2 %cst_4 : f16
    %227 = math.powf %cst_1, %cst : f32
    %228 = index.floordivs %100, %107
    %229 = math.ctlz %14 : tensor<6x9xi16>
    %230 = math.log10 %cst_27 : f16
    %231 = math.powf %cst_27, %cst_3 : f16
    %232 = vector.matrix_multiply %116, %116 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
    %233 = math.fma %splat_39, %10, %splat_39 : tensor<6x9xf16>
    scf.if %false {
      %271 = arith.shli %c-10262_i16, %c-10262_i16 : i16
      %272 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 8) floordiv 2)>(%47, %rank_36, %c14)
      %273 = math.log %cst_1 : f32
      %274 = math.powf %cst_5, %cst_2 : f16
      %275 = vector.outerproduct %70, %70, %135 {kind = #vector.kind<maxui>} : vector<6xi32>, vector<6xi32>
      %276 = math.log10 %10 : tensor<6x9xf16>
      %277 = math.powf %186, %2 : tensor<6xf32>
      %278 = vector.insertelement %true_30, %122[%81 : index] : vector<11xi1>
    } else {
      %271 = arith.ori %c-10262_i16, %c-10262_i16 : i16
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %208, %209, %cst_27 : vector<11xf16>, vector<11xf16> into f16
      %cst_46 = arith.constant 1.000000e+00 : f32
      %cst_47 = arith.constant 0.000000e+00 : f32
      %273 = vector.transfer_read %11[%c1, %100], %cst_47 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x6xf32>, vector<6xf32>
      %274 = affine.if affine_set<(d0, d1) : ((d1 mod 32 - (d1 mod 32 + 128) - (d1 mod 32 + 128) ceildiv 8) mod 4 >= 0, d1 mod 32 + 128 == 0, d1 == 0)>(%c1, %c2) -> memref<6x9xf16> {
        %279 = math.absi %false_7 : i1
        %280 = vector.broadcast %c272237189_i64 : i64 to vector<11xi64>
        %281 = vector.maskedload %alloc_10[%c5], %122, %280 : memref<9xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %collapsed = tensor.collapse_shape %generated_25 [[0, 1]] : tensor<?x9xi1> into tensor<?xi1>
        %282 = math.tan %cst_4 : f16
        %283 = arith.divsi %false_8, %true_30 : i1
        %284 = arith.maxui %c1154782291_i64, %c1645090125_i64 : i64
        %285 = arith.addi %c1154782291_i64, %c272237189_i64 : i64
        %286 = arith.andi %false_8, %true_30 : i1
        %alloc_48 = memref.alloc() : memref<6x9xf16>
        affine.yield %alloc_48 : memref<6x9xf16>
      } else {
        %rank_48 = tensor.rank %14 : tensor<6x9xi16>
        %279 = arith.subi %c-10262_i16, %c-3986_i16 : i16
        %280 = bufferization.clone %alloc : memref<9xf16> to memref<9xf16>
        %281 = math.powf %18, %18 : tensor<f16>
        %282 = math.log2 %cst_27 : f16
        %cast_49 = tensor.cast %4 : tensor<9xf16> to tensor<?xf16>
        %283 = arith.minf %cst_1, %cst_46 : f32
        %284 = arith.shrsi %c1_i32, %c1_i32 : i32
        %alloc_50 = memref.alloc() : memref<6x9xf16>
        affine.yield %alloc_50 : memref<6x9xf16>
      }
      %275 = math.log10 %15 : tensor<9xf16>
      %276 = math.round %10 : tensor<6x9xf16>
      %277 = math.expm1 %7 : tensor<6x9xf32>
      %278 = arith.subi %false_7, %true_30 : i1
    }
    %234 = math.absf %cst : f32
    %235 = math.absf %cst_5 : f16
    %236 = vector.broadcast %51 : i1 to vector<1x1xi1>
    %237 = vector.outerproduct %232, %232, %236 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
    %238 = vector.maskedload %alloc_24[%c5, %c3], %116, %70 : memref<6x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %239 = math.atan %splat : tensor<6x6xf32>
    %240 = index.ceildivu %c9, %c4
    %241 = vector.shuffle %19, %19 [1, 2, 5, 7, 8, 10] : vector<6xf16>, vector<6xf16>
    %242 = math.cos %186 : tensor<6xf32>
    memref.assume_alignment %alloc_14, 16 : memref<9xf16>
    %243 = math.ctpop %9 : tensor<9xi16>
    %alloca_40 = memref.alloca() : memref<6x9xi64>
    %244 = math.fma %1, %15, %1 : tensor<9xf16>
    %245 = math.absi %9 : tensor<9xi16>
    %true_41 = index.bool.constant true
    %246 = arith.maxui %false, %false_7 : i1
    %247 = arith.xori %c-10262_i16, %c-3986_i16 : i16
    %248 = math.expm1 %1 : tensor<9xf16>
    %249 = arith.addi %true, %false : i1
    %250 = math.copysign %40, %cst : f32
    %251 = math.round %cst_3 : f16
    %252 = index.mul %c6, %rank
    %253 = vector.splat %40 : vector<6xf32>
    %splat_42 = tensor.splat %cst_0 : tensor<6x9xf16>
    %254 = math.fma %11, %11, %11 : tensor<6x6xf32>
    %alloc_43 = memref.alloc() : memref<6xi1>
    memref.tensor_store %25, %alloc_43 : memref<6xi1>
    %255 = math.round %splat_42 : tensor<6x9xf16>
    %256 = scf.while (%arg0 = %true_30) : (i1) -> i1 {
      memref.assume_alignment %alloc_22, 1 : memref<6xi32>
      scf.index_switch %105 
      case 1 {
        %275 = index.maxs %rank_31, %81
        %276 = index.divs %89, %95
        %277 = math.exp2 %2 : tensor<6xf32>
        %278 = arith.muli %arg0, %true : i1
        %279 = math.sqrt %0 : tensor<6x9xf16>
        %280 = math.exp2 %splat : tensor<6x6xf32>
        %281 = memref.load %alloc_23[%c8] : memref<9xf32>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %70, %238, %c1_i32 : vector<6xi32>, vector<6xi32> into i32
        %283 = math.absi %22 : tensor<i32>
        %284 = index.ceildivs %c13, %96
        %285 = math.exp2 %11 : tensor<6x6xf32>
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, ((d1 + d2) mod 8) floordiv 4, d3 + 8, (d1 + d2) mod 8)>(%c9, %c15, %31, %47)
        %287 = arith.remui %c1154782291_i64, %c1154782291_i64 : i64
        %288 = arith.shrsi %arg0, %true_41 : i1
        %289 = arith.andi %false, %true_30 : i1
        %290 = math.log10 %11 : tensor<6x6xf32>
        scf.yield
      }
      case 2 {
        %275 = vector.broadcast %40 : f32 to vector<6xf32>
        %276 = vector.fma %275, %275, %275 : vector<6xf32>
        %277 = math.exp %cst_27 : f16
        %278 = tensor.empty() : tensor<9x11xf16>
        %279 = tensor.empty() : tensor<6x11xf16>
        %280 = linalg.matmul ins(%splat_39, %278 : tensor<6x9xf16>, tensor<9x11xf16>) outs(%279 : tensor<6x11xf16>) -> tensor<6x11xf16>
        %281 = vector.multi_reduction <mul>, %209, %209 [] : vector<11xf16> to vector<11xf16>
        %extracted = tensor.extract %from_elements[%c5] : tensor<9xi64>
        %282 = math.absi %3 : tensor<6x6xi1>
        %283 = vector.insertelement %c1_i32, %70[%c14 : index] : vector<6xi32>
        %284 = arith.addf %cst_4, %cst_0 : f16
        %285 = index.divu %213, %211
        %286 = arith.cmpi sle, %false_7, %51 : i1
        %287 = index.sub %c7, %47
        %alloca_48 = memref.alloca() : memref<9xi16>
        %288 = math.exp2 %reduced : tensor<f16>
        %289 = index.maxu %89, %c15
        %290 = vector.transpose %117, [0] : vector<6xf16> to vector<6xf16>
        %dest, %accumulated_value = vector.scan <and>, %217, %116 {inclusive = false, reduction_dim = 1 : i64} : vector<6x9xi1>, vector<6xi1>
        scf.yield
      }
      case 3 {
        memref.assume_alignment %alloc_11, 16 : memref<6xf32>
        %275 = index.divu %112, %202
        %from_elements_48 = tensor.from_elements %c-10262_i16, %c-10262_i16, %c-3986_i16, %c-3986_i16, %c-3986_i16, %c-3986_i16 : tensor<6xi16>
        %276 = vector.broadcast %cst_4 : f16 to vector<6xf16>
        %277 = math.atan2 %2, %186 : tensor<6xf32>
        %278 = index.sub %275, %c0
        %279 = vector.reduction <add>, %181 : vector<1xi32> into i32
        %280 = vector.flat_transpose %72 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %dest, %accumulated_value = vector.scan <or>, %27, %238 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
        %281 = vector.broadcast %cst_0 : f16 to vector<f16>
        %282 = vector.transfer_write %281, %10[%c7, %c0] : vector<f16>, tensor<6x9xf16>
        %283 = index.casts %112 : index to i32
        %284 = index.casts %c272237189_i64 : i64 to index
        %285 = index.ceildivu %c15, %rank_36
        %286 = math.fpowi %15, %6 : tensor<9xf16>, tensor<9xi32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %72, %280, %c1_i32 : vector<3xi32>, vector<3xi32> into i32
        %288 = memref.load %alloc_14[%c6] : memref<9xf16>
        scf.yield
      }
      default {
        %275 = vector.splat %cst_0 : vector<6x9xf16>
        memref.assume_alignment %alloc_21, 8 : memref<6xi16>
        %true_48 = index.bool.constant true
        %276 = affine.min affine_map<(d0, d1) -> ((d0 + 16) * 128, d0 + 16, -d0, d1)>(%89, %c2)
        %277 = affine.min affine_map<(d0, d1) -> (d0 floordiv 2, d0)>(%145, %252)
        %278 = math.tan %2 : tensor<6xf32>
        %279 = math.floor %cst_0 : f16
        %280 = vector.broadcast %cst_1 : f32 to vector<6x9xf32>
        %281 = vector.fma %280, %144, %144 : vector<6x9xf32>
        %rank_49 = tensor.rank %22 : tensor<i32>
        %282 = index.casts %false_8 : i1 to index
        %283 = index.floordivs %282, %145
        %284 = arith.mulf %cst_1, %cst_6 : f32
        %285 = vector.flat_transpose %208 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_5 : vector<6xf16>, vector<6xf16> into f16
        %287 = vector.reduction <mul>, %113 : vector<6xf16> into f16
        %288 = memref.load %alloc_21[%c4] : memref<6xi16>
      }
      %271 = bufferization.clone %137 : memref<6xi64> to memref<6xi64>
      %272 = math.absi %14 : tensor<6x9xi16>
      %cst_46 = arith.constant 2.819200e+04 : f16
      %273 = arith.divsi %true_30, %false_8 : i1
      %alloca_47 = memref.alloca() : memref<6x6xi16>
      %274 = arith.ori %false_7, %false : i1
      scf.condition(%true) %arg0 : i1
    } do {
    ^bb0(%arg0: i1):
      %271 = arith.shrsi %true, %false_8 : i1
      %272 = tensor.empty() : tensor<6x9xf16>
      %mapped = linalg.map ins(%0, %10 : tensor<6x9xf16>, tensor<6x9xf16>) outs(%272 : tensor<6x9xf16>)
        (%in: f16, %in_47: f16) {
          %289 = math.ctpop %160 : tensor<6x6xi64>
          %rank_48 = tensor.rank %160 : tensor<6x6xi64>
          %290 = affine.load %alloc[%c12] : memref<9xf16>
          %291 = math.log10 %11 : tensor<6x6xf32>
          %292 = vector.multi_reduction <maxsi>, %123, %c-3986_i16 [0] : vector<11xi16> to i16
          %293 = vector.multi_reduction <or>, %123, %c-10262_i16 [0] : vector<11xi16> to i16
          %294 = arith.divui %c-10262_i16, %292 : i16
          %295 = index.divs %207, %100
          %cast_49 = tensor.cast %6 : tensor<9xi32> to tensor<?xi32>
          %296 = math.log10 %cst : f32
          %297 = vector.reduction <or>, %238 : vector<6xi32> into i32
          %298 = arith.cmpi ult, %c272237189_i64, %c272237189_i64 : i64
          %alloc_50 = memref.alloc() : memref<9x6xi1>
          %299 = tensor.empty() : tensor<6x6xi1>
          %300 = linalg.matmul ins(%13, %alloc_50 : tensor<6x9xi1>, memref<9x6xi1>) outs(%299 : tensor<6x6xi1>) -> tensor<6x6xi1>
          %301 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%47, %31, %295, %112)
          %302 = arith.muli %c272237189_i64, %c1645090125_i64 : i64
          %303 = index.maxu %c5, %228
          %304 = arith.mulf %cst_0, %cst_2 : f16
          memref.assume_alignment %alloc_15, 2 : memref<9xf16>
          %true_51 = arith.constant true
          %false_52 = arith.constant false
          %305 = vector.transfer_read %13[%202, %211], %false_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x9xi1>, vector<6xi1>
          %306 = index.add %c12, %c12
          %307 = vector.flat_transpose %113 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
          %308 = vector.multi_reduction <mul>, %113, %307 [] : vector<6xf16> to vector<6xf16>
          %309 = math.tan %11 : tensor<6x6xf32>
          %310 = arith.ori %292, %c-10262_i16 : i16
          %alloc_53 = memref.alloc() : memref<9x11xi1>
          %311 = tensor.empty() : tensor<6x11xi1>
          %312 = linalg.matmul ins(%13, %alloc_53 : tensor<6x9xi1>, memref<9x11xi1>) outs(%311 : tensor<6x11xi1>) -> tensor<6x11xi1>
          %313 = index.maxs %139, %c9
          %314 = arith.mulf %cst_5, %in : f16
          %315 = arith.shli %true, %51 : i1
          %rank_54 = tensor.rank %25 : tensor<6xi1>
          %316 = math.exp %15 : tensor<9xf16>
          %317 = index.casts %c4 : index to i32
          %318 = bufferization.to_memref %17 : memref<6x6xi32>
          %cst_55 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_55 : f16
        }
      %273 = vector.broadcast %c1_i32 : i32 to vector<i32>
      %274 = vector.transfer_write %273, %16[%47, %47] : vector<i32>, tensor<6x6xi32>
      %275 = arith.divui %false_8, %51 : i1
      %276 = affine.apply affine_map<(d0, d1) -> (d0 + d0 - (d1 + d0 - d1) + 64)>(%c4, %96)
      %277 = affine.min affine_map<(d0) -> (0, -1)>(%81)
      %278 = vector.broadcast %c272237189_i64 : i64 to vector<6xi64>
      %279 = vector.maskedload %137[%c0], %116, %278 : memref<6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %280 = vector.broadcast %cst_1 : f32 to vector<6x9xf32>
      %281 = vector.fma %280, %144, %143 : vector<6x9xf32>
      %282 = index.maxu %211, %rank_36
      %283 = arith.maxsi %c272237189_i64, %c272237189_i64 : i64
      %284 = index.casts %true_41 : i1 to index
      %285 = vector.multi_reduction <add>, %116, %116 [] : vector<6xi1> to vector<6xi1>
      %286 = arith.divui %c-3986_i16, %c-10262_i16 : i16
      %287 = vector.multi_reduction <mul>, %181, %181 [] : vector<1xi32> to vector<1xi32>
      %288 = arith.minf %cst_1, %40 : f32
      %from_elements_46 = tensor.from_elements %c1154782291_i64, %c272237189_i64, %c1645090125_i64, %c1645090125_i64, %c1154782291_i64, %c1154782291_i64, %c1154782291_i64, %c272237189_i64, %c272237189_i64, %c272237189_i64, %c1645090125_i64, %c1645090125_i64, %c272237189_i64, %c272237189_i64, %c1645090125_i64, %c1154782291_i64, %c1645090125_i64, %c1154782291_i64, %c1645090125_i64, %c1645090125_i64, %c1645090125_i64, %c1645090125_i64, %c272237189_i64, %c1154782291_i64, %c1645090125_i64, %c1154782291_i64, %c1645090125_i64, %c1645090125_i64, %c272237189_i64, %c272237189_i64, %c1645090125_i64, %c1645090125_i64, %c1645090125_i64, %c272237189_i64, %c1645090125_i64, %c272237189_i64 : tensor<6x6xi64>
      scf.yield %false : i1
    }
    %257 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 + 1), d1 - 1, (d2 ceildiv 16) floordiv 4)>(%112, %rank_36, %139, %96)
    %258 = index.ceildivu %257, %47
    %259 = bufferization.to_memref %186 : memref<6xf32>
    %260 = index.sizeof
    %261 = math.rsqrt %0 : tensor<6x9xf16>
    %262 = math.exp2 %cst_3 : f16
    %263 = arith.muli %51, %false_8 : i1
    %264 = index.maxu %rank_36, %c11
    %265 = index.divs %c12, %145
    %266 = arith.remf %cst_0, %cst_4 : f16
    %267 = tensor.empty() : tensor<9xi64>
    %268 = linalg.copy ins(%from_elements : tensor<9xi64>) outs(%267 : tensor<9xi64>) -> tensor<9xi64>
    %alloc_44 = memref.alloc() : memref<9xi1>
    linalg.transpose ins(%alloc_19 : memref<9xi1>) outs(%alloc_44 : memref<9xi1>) permutation = [0] 
    %269 = tensor.empty() : tensor<i64>
    %reduced_45 = linalg.reduce ins(%alloc_10 : memref<9xi64>) outs(%269 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %271 = arith.addi %false, %true_30 : i1
        %272 = arith.xori %true_30, %false : i1
        %273 = arith.muli %false_8, %true_41 : i1
        %274 = math.ipowi %16, %16 : tensor<6x6xi32>
        %275 = math.floor %10 : tensor<6x9xf16>
        %splat_46 = tensor.splat %false_8 : tensor<6x9xi1>
        %276 = vector.bitcast %70 : vector<6xi32> to vector<6xi32>
        %277 = arith.xori %c272237189_i64, %c1154782291_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg0) = (%81) to (%c3) step (%c13) {
      %271 = vector.insert %c1_i32, %72 [1] : i32 into vector<3xi32>
      %272 = arith.maxui %false, %true_41 : i1
      %273 = index.sizeof
      %274 = scf.while (%arg1 = %232) : (vector<1xi1>) -> vector<1xi1> {
        %284 = math.expm1 %18 : tensor<f16>
        %alloca_47 = memref.alloca() : memref<6xf32>
        %285 = vector.broadcast %c-10262_i16 : i16 to vector<9xi16>
        %286 = vector.broadcast %false : i1 to vector<9xi1>
        %287 = vector.maskedload %alloc_21[%c3], %286, %285 : memref<6xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %288 = math.exp %reduced : tensor<f16>
        %289 = vector.insert %c-10262_i16, %285 [6] : i16 into vector<9xi16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %290 = vector.transfer_read %alloc_21[%211], %c0_i16 : memref<6xi16>, vector<i16>
        %291 = affine.max affine_map<(d0) -> (-d0 + ((-d0) floordiv 4) mod 16 + 64, -d0 + ((-d0) floordiv 4) mod 16 + 64, ((-d0) ceildiv 8) mod 64)>(%211)
        %292 = index.maxs %arg0, %rank_36
        scf.condition(%true) %232 : vector<1xi1>
      } do {
      ^bb0(%arg1: vector<1xi1>):
        %284 = index.maxs %112, %31
        %285 = math.absf %1 : tensor<9xf16>
        %286 = math.absi %from_elements : tensor<9xi64>
        %287 = vector.reduction <maxui>, %116 : vector<6xi1> into i1
        %288 = arith.muli %c1645090125_i64, %c1645090125_i64 : i64
        %289 = vector.maskedload %alloc_13[%c2, %c0], %116, %117 : memref<6x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %290 = arith.mulf %cst_3, %cst_5 : f16
        %291 = arith.divsi %false_8, %false_8 : i1
        %292 = affine.min affine_map<(d0, d1) -> (d0 + 48, d1 - 4)>(%89, %95)
        %293 = math.cttz %3 : tensor<6x6xi1>
        %294 = math.copysign %4, %4 : tensor<9xf16>
        %from_elements_47 = tensor.from_elements %cst_2, %cst_0, %cst_5, %cst_2, %cst_27, %cst_5 : tensor<6xf16>
        %295 = math.tan %1 : tensor<9xf16>
        %296 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %297 = vector.maskedload %36[%c5], %122, %296 : memref<9xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %rank_48 = tensor.rank %20 : tensor<6xi32>
        %298 = index.maxu %265, %38
        scf.yield %232 : vector<1xi1>
      }
      %275 = vector.insert %c1_i32, %72 [2] : i32 into vector<3xi32>
      %splat_46 = tensor.splat %c-10262_i16 : tensor<6xi16>
      %276 = math.roundeven %1 : tensor<9xf16>
      %277 = arith.floordivsi %c-10262_i16, %c-3986_i16 : i16
      %278 = math.absf %10 : tensor<6x9xf16>
      %279 = arith.minf %cst_2, %cst_5 : f16
      %280 = arith.subi %false_7, %true : i1
      bufferization.dealloc_tensor %12 : tensor<6x9xi64>
      %281 = math.round %cst_0 : f16
      %dest, %accumulated_value = vector.scan <minsi>, %135, %238 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi32>, vector<6xi32>
      %282 = arith.maxui %c272237189_i64, %c1154782291_i64 : i64
      %283 = index.divs %257, %139
      scf.yield
    }
    %270 = affine.vector_load %alloc_17[%258] : memref<9xi1>, vector<11xi1>
    affine.vector_store %123, %alloc_12[%47] : memref<6xi16>, vector<11xi16>
    vector.print %19 : vector<6xf16>
    vector.print %26 : vector<6x6xi1>
    vector.print %27 : vector<6x6xi32>
    vector.print %28 : vector<6x6xi1>
    vector.print %53 : vector<i1>
    vector.print %70 : vector<6xi32>
    vector.print %72 : vector<3xi32>
    vector.print %78 : vector<3x6xi1>
    vector.print %113 : vector<6xf16>
    vector.print %116 : vector<6xi1>
    vector.print %117 : vector<6xf16>
    vector.print %121 : vector<11xi16>
    vector.print %122 : vector<11xi1>
    vector.print %123 : vector<11xi16>
    vector.print %132 : vector<11xi32>
    vector.print %133 : vector<11xi32>
    vector.print %135 : vector<6x6xi32>
    vector.print %143 : vector<6x9xf32>
    vector.print %144 : vector<6x9xf32>
    vector.print %171 : vector<11xi16>
    vector.print %180 : vector<6x6xi1>
    vector.print %181 : vector<1xi32>
    vector.print %208 : vector<11xf16>
    vector.print %209 : vector<11xf16>
    vector.print %216 : vector<6x9xi16>
    vector.print %217 : vector<6x9xi1>
    vector.print %218 : vector<6x9xi32>
    vector.print %219 : vector<6x9xi16>
    vector.print %232 : vector<1xi1>
    vector.print %238 : vector<6xi32>
    vector.print %270 : vector<11xi1>
    vector.print %cst : f32
    vector.print %c1154782291_i64 : i64
    vector.print %false : i1
    vector.print %cst_0 : f16
    vector.print %c-3986_i16 : i16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c-10262_i16 : i16
    vector.print %c1645090125_i64 : i64
    vector.print %cst_3 : f16
    vector.print %c272237189_i64 : i64
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %false_7 : i1
    vector.print %false_8 : i1
    vector.print %c1_i32 : i32
    vector.print %40 : f32
    vector.print %51 : i1
    vector.print %cst_27 : f16
    vector.print %true : i1
    vector.print %true_30 : i1
    vector.print %true_41 : i1
    return
  }
}
