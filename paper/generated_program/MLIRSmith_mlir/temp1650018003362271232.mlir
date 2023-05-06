module {
  func.func private @func1() -> tensor<1x9x7xf16> {
    %cst = arith.constant 1.45652928E+9 : f32
    %cst_0 = arith.constant 1.29592909E+9 : f32
    %c1944593197_i32 = arith.constant 1944593197 : i32
    %c2023546911_i32 = arith.constant 2023546911 : i32
    %cst_1 = arith.constant 0x4E08E754 : f32
    %c1102296611_i32 = arith.constant 1102296611 : i32
    %c61268768_i64 = arith.constant 61268768 : i64
    %c-27608_i16 = arith.constant -27608 : i16
    %c342458842_i32 = arith.constant 342458842 : i32
    %cst_2 = arith.constant 2.09571251E+9 : f32
    %cst_3 = arith.constant 2.769600e+04 : f16
    %c1077083642_i32 = arith.constant 1077083642 : i32
    %c971899678_i32 = arith.constant 971899678 : i32
    %c1303960709_i32 = arith.constant 1303960709 : i32
    %cst_4 = arith.constant 4.470400e+04 : f16
    %c14584_i16 = arith.constant 14584 : i16
    %0 = tensor.empty() : tensor<9x7x1xi64>
    %1 = tensor.empty() : tensor<7x1x9xf32>
    %2 = tensor.empty() : tensor<9x7x1xf32>
    %3 = tensor.empty() : tensor<7x1x9xi1>
    %4 = tensor.empty() : tensor<1x9x7xi32>
    %5 = tensor.empty() : tensor<9x7x1xi1>
    %6 = tensor.empty() : tensor<1x9x7xi1>
    %7 = tensor.empty() : tensor<7x1x9xf16>
    %8 = tensor.empty() : tensor<7x1x9xi16>
    %9 = tensor.empty() : tensor<7x1xi16>
    %10 = tensor.empty() : tensor<1x9x7xf16>
    %11 = tensor.empty() : tensor<7x1xi16>
    %12 = tensor.empty() : tensor<9x7x1xf32>
    %13 = tensor.empty() : tensor<7x1xf32>
    %14 = tensor.empty() : tensor<1x9x7xi1>
    %15 = tensor.empty() : tensor<7x1x9xi64>
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
    %alloc = memref.alloc() : memref<9x7x1xf16>
    %alloc_5 = memref.alloc() : memref<7x1x9xi32>
    %alloc_6 = memref.alloc() : memref<1x9x7xf32>
    %alloc_7 = memref.alloc() : memref<7x1x9xi1>
    %alloc_8 = memref.alloc() : memref<1x9x7xi64>
    %alloc_9 = memref.alloc() : memref<7x1x9xi32>
    %alloc_10 = memref.alloc() : memref<7x1xi32>
    %alloc_11 = memref.alloc() : memref<1x9x7xi1>
    %alloc_12 = memref.alloc() : memref<9x7x1xi64>
    %alloc_13 = memref.alloc() : memref<1x9x7xi32>
    %alloc_14 = memref.alloc() : memref<7x1x9xf16>
    %alloc_15 = memref.alloc() : memref<7x1x9xi32>
    %alloc_16 = memref.alloc() : memref<9x7x1xi1>
    %alloc_17 = memref.alloc() : memref<1x9x7xi16>
    %alloc_18 = memref.alloc() : memref<9x7x1xi16>
    %alloc_19 = memref.alloc() : memref<9x7x1xi64>
    %16 = tensor.empty() : tensor<7x1x9xi16>
    %17 = linalg.copy ins(%8 : tensor<7x1x9xi16>) outs(%16 : tensor<7x1x9xi16>) -> tensor<7x1x9xi16>
    %alloc_20 = memref.alloc() : memref<9x7x1xi32>
    linalg.transpose ins(%alloc_15 : memref<7x1x9xi32>) outs(%alloc_20 : memref<9x7x1xi32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<9x7xf32>
    %reduced = linalg.reduce ins(%12 : tensor<9x7x1xf32>) outs(%18 : tensor<9x7xf32>) dimensions = [2] 
      (%in: f32, %init: f32) {
        %261 = bufferization.clone %alloc_9 : memref<7x1x9xi32> to memref<7x1x9xi32>
        %262 = vector.broadcast %c14584_i16 : i16 to vector<1xi16>
        %263 = vector.bitcast %262 : vector<1xi16> to vector<1xi16>
        %264 = index.floordivs %c2, %c13
        %cast_54 = tensor.cast %8 : tensor<7x1x9xi16> to tensor<?x?x?xi16>
        %265 = math.log1p %cst_2 : f32
        %266 = math.tanh %10 : tensor<1x9x7xf16>
        %267 = memref.load %alloc_8[%c0, %c3, %c0] : memref<1x9x7xi64>
        %268 = arith.remsi %c61268768_i64, %c61268768_i64 : i64
        %cst_55 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_55 : f32
      }
    scf.parallel (%arg0, %arg1) = (%c3, %c8) to (%c4, %c4) step (%c7, %c8) {
      %261 = vector.broadcast %c61268768_i64 : i64 to vector<9x7x1xi64>
      %false_54 = arith.constant false
      %262 = vector.broadcast %false_54 : i1 to vector<9x7x1xi1>
      %263 = vector.broadcast %c342458842_i32 : i32 to vector<9x7x1xi32>
      %264 = vector.gather %alloc_8[%c9, %c8, %arg0] [%263], %262, %261 : memref<1x9x7xi64>, vector<9x7x1xi32>, vector<9x7x1xi1>, vector<9x7x1xi64> into vector<9x7x1xi64>
      %265 = vector.broadcast %false_54 : i1 to vector<9x7xi1>
      %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %262, %265 {inclusive = false, reduction_dim = 2 : i64} : vector<9x7x1xi1>, vector<9x7xi1>
      %266 = vector.extract %261[2] : vector<9x7x1xi64>
      %267 = arith.subi %c971899678_i32, %c1303960709_i32 : i32
      %268 = math.absi %16 : tensor<7x1x9xi16>
      %splat_57 = tensor.splat %false_54 : tensor<9x7x1xi1>
      affine.store %c1944593197_i32, %alloc_13[%c15, %c14, %c3] : memref<1x9x7xi32>
      %269 = math.absi %c61268768_i64 : i64
      %collapsed_58 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x1xf32> into tensor<7xf32>
      %270 = arith.cmpf oge, %cst_4, %cst_3 : f16
      %271 = arith.minsi %c14584_i16, %c14584_i16 : i16
      %272 = index.divu %c11, %arg1
      %273 = vector.broadcast %c14 : index to vector<1xindex>
      %274 = vector.broadcast %false_54 : i1 to vector<1xi1>
      %275 = vector.broadcast %c1303960709_i32 : i32 to vector<1xi32>
      vector.scatter %alloc_9[%c5, %c0, %c4] [%273], %274, %275 : memref<7x1x9xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %c1_i16 = arith.constant 1 : i16
      %276 = vector.transfer_read %alloc_17[%c6, %c14, %c6], %c1_i16 : memref<1x9x7xi16>, vector<i16>
      %277 = arith.muli %false_54, %false_54 : i1
      %278 = vector.extract_strided_slice %263 {offsets = [0], sizes = [6], strides = [1]} : vector<9x7x1xi32> to vector<6x7x1xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_10[%c7, %c14] : memref<7x1xi32>, vector<7xi32>
    affine.vector_store %19, %alloc_5[%c15, %c4, %c5] : memref<7x1x9xi32>, vector<7xi32>
    %alloc_21 = memref.alloc() : memref<7xf32>
    %alloc_22 = memref.alloc() : memref<7xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%alloc_21, %alloc_22 : memref<7xf32>, memref<7xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %22 = vector.transpose %19, [0] : vector<7xi32> to vector<7xi32>
    %23 = affine.min affine_map<(d0) -> (d0 * 2 + ((d0 * 2) floordiv 64) floordiv 16 + 8)>(%c8)
    %24 = arith.divsi %c971899678_i32, %c1102296611_i32 : i32
    %25 = index.divu %c15, %c9
    %26 = bufferization.to_tensor %alloc_16 : memref<9x7x1xi1>
    %27 = memref.atomic_rmw minf %cst, %alloc_21[%c6] : (f32, memref<7xf32>) -> f32
    %28 = arith.remui %c342458842_i32, %c971899678_i32 : i32
    %29 = arith.shrui %c1944593197_i32, %c342458842_i32 : i32
    bufferization.dealloc_tensor %3 : tensor<7x1x9xi1>
    %30 = index.maxu %c8, %c12
    %alloc_23 = memref.alloc() : memref<7xf16>
    %alloc_24 = memref.alloc() : memref<1x7xf16>
    %31 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %alloc_24 : memref<7xf16>, memref<1x7xf16>) outs(%10 : tensor<1x9x7xf16>) {
    ^bb0(%in: f16, %in_54: f16, %out: f16):
      %261 = vector.multi_reduction <maxsi>, %19, %19 [] : vector<7xi32> to vector<7xi32>
      %262 = affine.min affine_map<(d0, d1, d2) -> (d1 + d0 - d2, d1 - 8)>(%c2, %c10, %c3)
      %263 = vector.transpose %19, [0] : vector<7xi32> to vector<7xi32>
      memref.assume_alignment %alloc_9, 16 : memref<7x1x9xi32>
      %264 = bufferization.to_memref %4 : memref<1x9x7xi32>
      %265 = index.floordivs %c11, %c3
      %266 = affine.load %alloc_12[%c14, %c2, %c12] : memref<9x7x1xi64>
      %267 = vector.broadcast %23 : index to vector<1xindex>
      %true_55 = arith.constant true
      %268 = vector.broadcast %true_55 : i1 to vector<1xi1>
      %269 = vector.broadcast %cst_2 : f32 to vector<1xf32>
      vector.scatter %alloc_22[%c3] [%267], %268, %269 : memref<7xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %270 = math.floor %10 : tensor<1x9x7xf16>
      %271 = arith.shrui %c1077083642_i32, %c1944593197_i32 : i32
      %272 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 32) floordiv 2 - 4 >= 0, -(d1 mod 32) == 0, (d1 - 1) floordiv 8 >= 0)>(%c4, %c6, %c8) -> memref<7x1x9xi1> {
        %295 = index.ceildivs %262, %c4
        %296 = math.fma %10, %10, %10 : tensor<1x9x7xf16>
        %297 = arith.cmpf ueq, %out, %cst_4 : f16
        %298 = math.copysign %cst_1, %cst : f32
        %299 = index.floordivs %c2, %c9
        %300 = vector.broadcast %c1077083642_i32 : i32 to vector<7x7xi32>
        %301 = vector.outerproduct %19, %19, %300 {kind = #vector.kind<xor>} : vector<7xi32>, vector<7xi32>
        %302 = index.maxs %23, %c7
        %303 = memref.load %alloc_20[%c3, %c3, %c0] : memref<9x7x1xi32>
        affine.yield %alloc_7 : memref<7x1x9xi1>
      } else {
        %295 = math.fma %1, %1, %1 : tensor<7x1x9xf32>
        %296 = index.ceildivs %c11, %c9
        %297 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %298 = arith.ori %c971899678_i32, %c1077083642_i32 : i32
        %299 = index.divu %c3, %30
        %300 = index.ceildivs %296, %c1
        %301 = math.log %cst_3 : f16
        %alloc_59 = memref.alloc() : memref<9x7x1xf16>
        affine.yield %alloc_7 : memref<7x1x9xi1>
      }
      %273 = vector.create_mask %c9, %c15 : vector<7x1xi1>
      memref.assume_alignment %alloc_21, 2 : memref<7xf32>
      bufferization.dealloc_tensor %8 : tensor<7x1x9xi16>
      %274 = vector.broadcast %c14584_i16 : i16 to vector<7xi16>
      %275 = vector.transfer_write %274, %9[%c10, %262] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<7x1xi16>
      %alloca_56 = memref.alloca() : memref<7x1x9xf32>
      %276 = bufferization.to_tensor %alloc_19 : memref<9x7x1xi64>
      %277 = math.tan %cst_2 : f32
      %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %274, %274, %c14584_i16 : vector<7xi16>, vector<7xi16> into i16
      %279 = vector.insertelement %c342458842_i32, %19[%30 : index] : vector<7xi32>
      %alloc_57 = memref.alloc() : memref<1x9x7xi64>
      %280 = math.absi %4 : tensor<1x9x7xi32>
      %281 = math.ctpop %c-27608_i16 : i16
      %282 = arith.ceildivsi %c971899678_i32, %c1077083642_i32 : i32
      %283 = arith.shrui %c-27608_i16, %c-27608_i16 : i16
      %284 = bufferization.clone %alloc_12 : memref<9x7x1xi64> to memref<9x7x1xi64>
      %285 = arith.shrui %c1303960709_i32, %c1102296611_i32 : i32
      %286 = math.ctpop %0 : tensor<9x7x1xi64>
      %287 = index.ceildivs %25, %23
      %288 = tensor.empty() : tensor<7x1xi64>
      %289 = vector.broadcast %c61268768_i64 : i64 to vector<9x7x1xi64>
      %true_58 = arith.constant true
      %290 = vector.broadcast %true_58 : i1 to vector<9x7x1xi1>
      %291 = vector.broadcast %c1077083642_i32 : i32 to vector<9x7x1xi32>
      %292 = vector.gather %288[%c9, %287] [%291], %290, %289 : tensor<7x1xi64>, vector<9x7x1xi32>, vector<9x7x1xi1>, vector<9x7x1xi64> into vector<9x7x1xi64>
      %293 = arith.minf %out, %cst_3 : f16
      %294 = index.maxs %265, %c15
      linalg.yield %out : f16
    } -> tensor<1x9x7xf16>
    %32 = index.ceildivu %c4, %c2
    %33 = arith.maxui %c-27608_i16, %c14584_i16 : i16
    %34 = tensor.empty(%c14, %32) : tensor<?x?xi16>
    %35 = math.ctpop %15 : tensor<7x1x9xi64>
    %36 = vector.load %alloc_17[%c0, %c0, %c4] : memref<1x9x7xi16>, vector<7x1xi16>
    %37 = vector.broadcast %cst_3 : f16 to vector<1xf16>
    %true = arith.constant true
    %38 = vector.broadcast %true : i1 to vector<1xi1>
    %39 = vector.maskedload %alloc[%c8, %c6, %c0], %38, %37 : memref<9x7x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %40 = vector.broadcast %c14584_i16 : i16 to vector<7xi16>
    %dest, %accumulated_value = vector.scan <minsi>, %36, %40 {inclusive = true, reduction_dim = 1 : i64} : vector<7x1xi16>, vector<7xi16>
    %41 = math.absf %10 : tensor<1x9x7xf16>
    %alloc_25 = memref.alloc() : memref<7x1x9xf16>
    %42 = tensor.empty() : tensor<7x1x9xi32>
    %43 = math.fpowi %7, %42 : tensor<7x1x9xf16>, tensor<7x1x9xi32>
    %44 = math.floor %2 : tensor<9x7x1xf32>
    %45 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %39, %37, %cst_3 : vector<1xf16>, vector<1xf16> into f16
    %46 = vector.broadcast %c1944593197_i32 : i32 to vector<7x1xi32>
    %47 = vector.splat %c1944593197_i32 : vector<7x1xi32>
    %48 = arith.divf %cst_2, %cst_0 : f32
    %49 = vector.shuffle %46, %46 [3, 4, 6, 8, 12, 13] : vector<7x1xi32>, vector<7x1xi32>
    %50 = math.expm1 %10 : tensor<1x9x7xf16>
    %51 = vector.transpose %38, [0] : vector<1xi1> to vector<1xi1>
    %52 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %38, %38, %true : vector<1xi1>, vector<1xi1> into i1
    %false = index.bool.constant false
    %53 = vector.broadcast %true : i1 to vector<1x1xi1>
    %54 = vector.outerproduct %38, %38, %53 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
    %55 = math.round %10 : tensor<1x9x7xf16>
    %56 = math.round %7 : tensor<7x1x9xf16>
    %57 = index.sizeof
    %58 = vector.broadcast %c1077083642_i32 : i32 to vector<1xi32>
    %dest_26, %accumulated_value_27 = vector.scan <add>, %46, %58 {inclusive = false, reduction_dim = 0 : i64} : vector<7x1xi32>, vector<1xi32>
    affine.store %c61268768_i64, %alloc_8[%c15, %c9, %c3] : memref<1x9x7xi64>
    affine.store %c1077083642_i32, %alloc_10[%c11, %c5] : memref<7x1xi32>
    memref.tensor_store %42, %alloc_5 : memref<7x1x9xi32>
    scf.index_switch %c10 
    case 1 {
      %261 = math.log1p %13 : tensor<7x1xf32>
      %true_54 = index.bool.constant true
      %262 = arith.remsi %false, %true : i1
      %263 = math.log %12 : tensor<9x7x1xf32>
      %264 = vector.broadcast %cst : f32 to vector<7x1xf32>
      %265 = vector.fma %264, %264, %264 : vector<7x1xf32>
      %266 = index.maxs %c4, %c5
      %267 = tensor.empty() : tensor<9x1xi32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_5, %267 : memref<7x1x9xi32>, tensor<9x1xi32>) outs(%42 : tensor<7x1x9xi32>) {
      ^bb0(%in: i32, %in_56: i32, %out: i32):
        bufferization.dealloc_tensor %11 : tensor<7x1xi16>
        %278 = math.round %2 : tensor<9x7x1xf32>
        %279 = arith.negf %cst_1 : f32
        %280 = tensor.empty() : tensor<7x1x9xi16>
        %281 = math.ceil %7 : tensor<7x1x9xf16>
        %alloc_57 = memref.alloc() : memref<9x7x1xf32>
        %282 = arith.shrsi %in, %c1102296611_i32 : i32
        %283 = index.maxu %c9, %25
        %284 = math.ipowi %c971899678_i32, %out : i32
        %285 = math.log %cst_1 : f32
        %286 = vector.shuffle %38, %38 [1] : vector<1xi1>, vector<1xi1>
        %287 = vector.maskedload %alloc[%c7, %c4, %c0], %38, %37 : memref<9x7x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %288 = arith.xori %c61268768_i64, %c61268768_i64 : i64
        %alloc_58 = memref.alloc() : memref<7x1x9xi64>
        %289 = vector.bitcast %265 : vector<7x1xf32> to vector<7x1xf32>
        %290 = memref.atomic_rmw assign %c-27608_i16, %alloc_17[%c0, %c1, %c1] : (i16, memref<1x9x7xi16>) -> i16
        %291 = arith.remf %cst_2, %cst : f32
        %292 = arith.cmpf false, %cst_0, %cst : f32
        %293 = arith.muli %false, %false : i1
        %294 = arith.divf %cst_4, %cst_3 : f16
        memref.copy %alloc_5, %alloc_9 : memref<7x1x9xi32> to memref<7x1x9xi32>
        %295 = arith.divsi %true, %false : i1
        %296 = arith.maxui %out, %c1944593197_i32 : i32
        %297 = math.atan %reduced : tensor<9x7xf32>
        %298 = arith.shli %c14584_i16, %c14584_i16 : i16
        %299 = index.sizeof
        %300 = vector.broadcast %cst_4 : f16 to vector<7x1x9xf16>
        %301 = vector.broadcast %true_54 : i1 to vector<7x1x9xi1>
        %302 = vector.broadcast %c1102296611_i32 : i32 to vector<7x1x9xi32>
        %303 = vector.gather %alloc[%c6, %c15, %c1] [%302], %301, %300 : memref<9x7x1xf16>, vector<7x1x9xi32>, vector<7x1x9xi1>, vector<7x1x9xf16> into vector<7x1x9xf16>
        affine.store %true_54, %alloc_7[%c4, %c8, %c5] : memref<7x1x9xi1>
        %304 = arith.ceildivsi %in, %c1303960709_i32 : i32
        %collapsed_59 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<9x7x1xi64> into tensor<63x1xi64>
        %305 = arith.muli %c14584_i16, %c14584_i16 : i16
        %306 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        linalg.yield %in_56 : i32
      } -> tensor<7x1x9xi32>
      %269 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      %270 = tensor.empty() : tensor<9x7xi32>
      %271 = math.fpowi %18, %270 : tensor<9x7xf32>, tensor<9x7xi32>
      %272 = scf.while (%arg0 = %true) : (i1) -> i1 {
        %278 = math.log2 %1 : tensor<7x1x9xf32>
        %279 = arith.subi %true_54, %true : i1
        %280 = math.absi %4 : tensor<1x9x7xi32>
        %281 = math.fpowi %cst_1, %c971899678_i32 : f32, i32
        %alloc_56 = memref.alloc() : memref<9x7x1xi64>
        %282 = vector.extract_strided_slice %269 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %alloc_57 = memref.alloc() : memref<9x7x1xf32>
        %283 = vector.reduction <minui>, %19 : vector<7xi32> into i32
        scf.condition(%true) %false : i1
      } do {
      ^bb0(%arg0: i1):
        %278 = math.log1p %7 : tensor<7x1x9xf16>
        %279 = vector.broadcast %cst_1 : f32 to vector<f32>
        %280 = vector.transfer_write %279, %13[%32, %23] : vector<f32>, tensor<7x1xf32>
        %281 = index.casts %c971899678_i32 : i32 to index
        %282 = arith.addf %cst_4, %cst_4 : f16
        %283 = vector.broadcast %c971899678_i32 : i32 to vector<7x1xi32>
        %284 = math.log2 %cst_1 : f32
        %285 = vector.transpose %39, [0] : vector<1xf16> to vector<1xf16>
        %286 = index.ceildivs %c1, %c3
        %287 = vector.insertelement %c342458842_i32, %19[%c4 : index] : vector<7xi32>
        %alloc_56 = memref.alloc() : memref<7x1xf16>
        %288 = index.add %c9, %c3
        %289 = arith.cmpi sgt, %true_54, %true_54 : i1
        %290 = index.casts %266 : index to i32
        %291 = vector.broadcast %cst_3 : f16 to vector<1x9x7xf16>
        %292 = math.absf %cst_3 : f16
        %293 = vector.broadcast %cst_4 : f16 to vector<9x7xf16>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %37, %291, %293 : vector<1xf16>, vector<1x9x7xf16> into vector<9x7xf16>
        scf.yield %arg0 : i1
      }
      %273 = arith.cmpi sgt, %c14584_i16, %c-27608_i16 : i16
      %274 = arith.minui %c2023546911_i32, %c1077083642_i32 : i32
      %275 = math.atan %21 : tensor<f32>
      %276 = memref.realloc %alloc_22 : memref<7xf32> to memref<1xf32>
      affine.store %cst_0, %alloc_21[%c4] : memref<7xf32>
      %277 = tensor.empty() : tensor<7x1x9xi16>
      %mapped_55 = linalg.map ins(%16 : tensor<7x1x9xi16>) outs(%277 : tensor<7x1x9xi16>)
        (%in: i16) {
          %278 = arith.cmpf ord, %cst_4, %cst_3 : f16
          %279 = arith.divsi %false, %true : i1
          %280 = vector.extract %38[0] : vector<1xi1>
          %cast_56 = tensor.cast %13 : tensor<7x1xf32> to tensor<?x?xf32>
          %281 = vector.create_mask %c8, %c14 : vector<7x1xi1>
          %282 = vector.matrix_multiply %19, %269 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<1xi32>) -> vector<7xi32>
          %283 = arith.floordivsi %c971899678_i32, %c2023546911_i32 : i32
          %284 = math.absf %cst_1 : f32
          %285 = math.absi %c971899678_i32 : i32
          %286 = bufferization.to_memref %277 : memref<7x1x9xi16>
          %287 = bufferization.to_memref %11 : memref<7x1xi16>
          %cast_57 = tensor.cast %277 : tensor<7x1x9xi16> to tensor<?x?x?xi16>
          %288 = math.round %18 : tensor<9x7xf32>
          %289 = math.log2 %18 : tensor<9x7xf32>
          %290 = math.absi %6 : tensor<1x9x7xi1>
          %291 = math.round %cst_3 : f16
          %cast_58 = tensor.cast %15 : tensor<7x1x9xi64> to tensor<?x?x?xi64>
          %292 = vector.extract %265[5] : vector<7x1xf32>
          %293 = vector.reduction <minui>, %269 : vector<1xi32> into i32
          %294 = arith.muli %c14584_i16, %c-27608_i16 : i16
          %295 = bufferization.to_memref %5 : memref<9x7x1xi1>
          %296 = bufferization.clone %alloc_11 : memref<1x9x7xi1> to memref<1x9x7xi1>
          %297 = arith.cmpf true, %cst_3, %cst_4 : f16
          %298 = vector.broadcast %c-27608_i16 : i16 to vector<7xi16>
          %299 = vector.transfer_write %298, %17[%c11, %c2, %32] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi16>, tensor<7x1x9xi16>
          %300 = vector.broadcast %true : i1 to vector<7x1xi1>
          %301 = arith.cmpi eq, %c14584_i16, %in : i16
          %302 = vector.transpose %46, [0, 1] : vector<7x1xi32> to vector<7x1xi32>
          %303 = vector.splat %c3 : vector<7x1xindex>
          %extracted_59 = tensor.extract %0[%c8, %c5, %c0] : tensor<9x7x1xi64>
          %304 = tensor.empty() : tensor<1x9x7xf32>
          %305 = math.floor %cst : f32
          %splat_60 = tensor.splat %cst : tensor<9x7x1xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      scf.yield
    }
    default {
      %261 = affine.min affine_map<(d0) -> (d0 * 3 - 128, 0)>(%c15)
      %262 = vector.insertelement %true, %38[%c12 : index] : vector<1xi1>
      %263 = vector.reduction <minf>, %39 : vector<1xf16> into f16
      scf.index_switch %c13 
      case 1 {
        %collapsed_55 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
        %275 = memref.atomic_rmw maxf %cst_1, %alloc_22[%c5] : (f32, memref<7xf32>) -> f32
        %276 = index.divu %c0, %c13
        %277 = arith.floordivsi %false, %true : i1
        %278 = math.rsqrt %13 : tensor<7x1xf32>
        %279 = vector.broadcast %true : i1 to vector<1x1xi1>
        %280 = vector.outerproduct %38, %38, %279 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
        %281 = index.mul %32, %23
        %282 = bufferization.clone %alloc_6 : memref<1x9x7xf32> to memref<1x9x7xf32>
        %283 = math.cttz %4 : tensor<1x9x7xi32>
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 32 + d0, d2 + 64, d1 * 32)>(%c7, %276, %261, %c7)
        %285 = bufferization.clone %alloc_13 : memref<1x9x7xi32> to memref<1x9x7xi32>
        %collapsed_56 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x1xi16> into tensor<7xi16>
        bufferization.dealloc_tensor %8 : tensor<7x1x9xi16>
        %286 = tensor.empty() : tensor<7x1xi64>
        %287 = vector.broadcast %c61268768_i64 : i64 to vector<7x1x9xi64>
        %288 = vector.broadcast %true : i1 to vector<7x1x9xi1>
        %289 = vector.broadcast %c342458842_i32 : i32 to vector<7x1x9xi32>
        %290 = vector.gather %286[%c9, %c15] [%289], %288, %287 : tensor<7x1xi64>, vector<7x1x9xi32>, vector<7x1x9xi1>, vector<7x1x9xi64> into vector<7x1x9xi64>
        %291 = arith.negf %cst_0 : f32
        %292 = vector.load %alloc_9[%c3, %c0, %c6] : memref<7x1x9xi32>, vector<7x1x9xi32>
        scf.yield
      }
      default {
        %275 = vector.shuffle %46, %46 [1, 2, 5, 7, 9, 10] : vector<7x1xi32>, vector<7x1xi32>
        %276 = math.ctpop %c61268768_i64 : i64
        %277 = vector.broadcast %c14 : index to vector<1xindex>
        vector.scatter %alloc[%c7, %c1, %c0] [%277], %38, %37 : memref<9x7x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %278 = math.copysign %cst_2, %cst_1 : f32
        %rank_55 = tensor.rank %15 : tensor<7x1x9xi64>
        %279 = vector.extract_strided_slice %39 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %280 = vector.insertelement %cst_4, %279[%c4 : index] : vector<1xf16>
        %281 = arith.minui %c1944593197_i32, %c1077083642_i32 : i32
        %282 = arith.addf %cst_4, %cst_3 : f16
        %283 = math.tan %13 : tensor<7x1xf32>
        %284 = vector.matrix_multiply %39, %279 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %285 = vector.broadcast %261 : index to vector<7xindex>
        %286 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_16[%c5, %c4, %c0] [%285], %286, %286 : memref<9x7x1xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %287 = vector.broadcast %false : i1 to vector<7xi1>
        %288 = vector.maskedload %alloc_7[%c2, %c0, %c7], %287, %287 : memref<7x1x9xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %289 = index.maxs %c3, %c11
        %290 = index.casts %c1 : index to i32
        %291 = vector.transpose %279, [0] : vector<1xf16> to vector<1xf16>
      }
      %264 = index.mul %c12, %c9
      %265 = affine.load %alloc_18[%c1, %c11, %c8] : memref<9x7x1xi16>
      %266 = vector.splat %cst_3 : vector<7x1xf16>
      %267 = arith.remf %cst_3, %cst_3 : f16
      memref.assume_alignment %alloc_16, 1 : memref<9x7x1xi1>
      %268 = affine.load %alloc_10[%c12, %c6] : memref<7x1xi32>
      %269 = arith.subi %c1303960709_i32, %c971899678_i32 : i32
      %270 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
      %271 = math.atan2 %cst_1, %cst_2 : f32
      %272 = tensor.empty() : tensor<1x9x7xf16>
      %mapped_54 = linalg.map ins(%10, %10, %10 : tensor<1x9x7xf16>, tensor<1x9x7xf16>, tensor<1x9x7xf16>) outs(%272 : tensor<1x9x7xf16>)
        (%in: f16, %in_55: f16, %in_56: f16) {
          %275 = vector.create_mask %c2, %c3, %c14 : vector<7x1x9xi1>
          %276 = vector.broadcast %cst : f32 to vector<1x9x7xf32>
          %277 = vector.broadcast %true : i1 to vector<1x9x7xi1>
          %278 = vector.broadcast %268 : i32 to vector<1x9x7xi32>
          %279 = vector.gather %1[%c1, %c14, %c7] [%278], %277, %276 : tensor<7x1x9xf32>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xf32> into vector<1x9x7xf32>
          %280 = math.fpowi %1, %42 : tensor<7x1x9xf32>, tensor<7x1x9xi32>
          %281 = index.sub %30, %c15
          %282 = index.ceildivu %32, %c14
          %283 = arith.addf %in_55, %cst_3 : f16
          %284 = arith.remui %c971899678_i32, %268 : i32
          %285 = math.atan2 %7, %7 : tensor<7x1x9xf16>
          %splat_57 = tensor.splat %c-27608_i16 : tensor<7x1xi16>
          %286 = arith.subi %c1303960709_i32, %c1944593197_i32 : i32
          %287 = index.maxs %c6, %c1
          %288 = arith.shrsi %c342458842_i32, %268 : i32
          %289 = arith.cmpi ugt, %265, %265 : i16
          %inserted = tensor.insert %in_55 into %272[%c0, %c8, %c5] : tensor<1x9x7xf16>
          %290 = arith.subi %c342458842_i32, %c1944593197_i32 : i32
          %291 = tensor.empty(%282) : tensor<9x?x1xi16>
          %alloca_58 = memref.alloca() : memref<1x9x7xf32>
          %cst_59 = arith.constant 1.40901363E+9 : f32
          %292 = vector.broadcast %265 : i16 to vector<1xi16>
          %dest_60, %accumulated_value_61 = vector.scan <or>, %36, %292 {inclusive = true, reduction_dim = 0 : i64} : vector<7x1xi16>, vector<1xi16>
          %alloc_62 = memref.alloc() : memref<7x1x9xi32>
          %293 = vector.broadcast %c61268768_i64 : i64 to vector<7x1x9xi64>
          %294 = arith.cmpf ord, %in_56, %cst_4 : f16
          %false_63 = arith.constant false
          %295 = arith.minui %c1077083642_i32, %c1102296611_i32 : i32
          %296 = index.ceildivu %c9, %264
          %297 = math.ceil %cst_4 : f16
          %298 = math.ctpop %c342458842_i32 : i32
          %299 = index.maxs %261, %c2
          %300 = arith.remsi %c-27608_i16, %c-27608_i16 : i16
          bufferization.dealloc_tensor %272 : tensor<1x9x7xf16>
          %301 = arith.minf %cst_1, %cst : f32
          %302 = tensor.empty() : tensor<7x1x9xi64>
          %cst_64 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_64 : f16
        }
      %273 = arith.ori %c61268768_i64, %c61268768_i64 : i64
      %274 = index.maxu %c10, %261
    }
    memref.assume_alignment %alloc_21, 16 : memref<7xf32>
    %59 = vector.broadcast %c14584_i16 : i16 to vector<9xi16>
    %60 = vector.transfer_write %59, %8[%c9, %c4, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi16>, tensor<7x1x9xi16>
    %61 = scf.index_switch %25 -> i32 
    case 1 {
      %261 = math.log2 %12 : tensor<9x7x1xf32>
      %262 = arith.divsi %c342458842_i32, %c971899678_i32 : i32
      %263 = vector.broadcast %c1102296611_i32 : i32 to vector<1xi32>
      %dest_54, %accumulated_value_55 = vector.scan <maxui>, %46, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<7x1xi32>, vector<1xi32>
      %264 = affine.min affine_map<(d0, d1) -> (d1 + d0 ceildiv 8 + 2, -d1)>(%c5, %c9)
      %265 = index.ceildivu %264, %30
      %266 = arith.addf %cst_1, %cst_0 : f32
      %267 = index.maxs %c13, %265
      %268 = arith.muli %c1303960709_i32, %c1944593197_i32 : i32
      %269 = vector.reduction <mul>, %39 : vector<1xf16> into f16
      %generated_56 = tensor.generate %c0 {
      ^bb0(%arg0: index, %arg1: index):
        %277 = arith.ceildivsi %c-27608_i16, %c-27608_i16 : i16
        %278 = vector.multi_reduction <maxf>, %37, %39 [] : vector<1xf16> to vector<1xf16>
        %279 = arith.subi %c342458842_i32, %c1102296611_i32 : i32
        %280 = math.round %cst_2 : f32
        tensor.yield %cst_3 : f16
      } : tensor<?x1xf16>
      %270 = scf.index_switch %c14 -> tensor<1x9x7xi32> 
      case 1 {
        %277 = arith.minui %c1944593197_i32, %c342458842_i32 : i32
        %278 = vector.insertelement %c1944593197_i32, %19[%32 : index] : vector<7xi32>
        %279 = math.expm1 %13 : tensor<7x1xf32>
        %280 = arith.maxui %c61268768_i64, %c61268768_i64 : i64
        %281 = affine.load %alloc_20[%c12, %c12, %c4] : memref<9x7x1xi32>
        %282 = tensor.empty(%32, %c9, %264) : tensor<?x?x?xi16>
        %283 = index.floordivs %30, %c9
        bufferization.dealloc_tensor %26 : tensor<9x7x1xi1>
        %284 = vector.reduction <add>, %59 : vector<9xi16> into i16
        %285 = arith.remui %true, %false : i1
        %286 = math.ceil %cst_3 : f16
        %287 = index.casts %c-27608_i16 : i16 to index
        %288 = math.absf %10 : tensor<1x9x7xf16>
        %289 = tensor.empty() : tensor<9x1xf32>
        %290 = linalg.matmul ins(%18, %13 : tensor<9x7xf32>, tensor<7x1xf32>) outs(%289 : tensor<9x1xf32>) -> tensor<9x1xf32>
        %291 = tensor.empty() : tensor<9x7xi32>
        %292 = math.fpowi %18, %291 : tensor<9x7xf32>, tensor<9x7xi32>
        %293 = arith.addf %cst_0, %cst : f32
        scf.yield %4 : tensor<1x9x7xi32>
      }
      case 2 {
        %277 = math.copysign %cst, %cst_0 : f32
        %278 = tensor.empty() : tensor<7x1xi32>
        %279 = math.fpowi %13, %278 : tensor<7x1xf32>, tensor<7x1xi32>
        %280 = arith.floordivsi %false, %true : i1
        memref.assume_alignment %alloc_7, 4 : memref<7x1x9xi1>
        %281 = tensor.empty(%c12) : tensor<?x1xf16>
        %282 = vector.reduction <add>, %38 : vector<1xi1> into i1
        %283 = tensor.empty(%c13) : tensor<?x1xf32>
        %284 = arith.floordivsi %c-27608_i16, %c-27608_i16 : i16
        %285 = math.atan %10 : tensor<1x9x7xf16>
        %286 = vector.reduction <mul>, %39 : vector<1xf16> into f16
        memref.tensor_store %14, %alloc_11 : memref<1x9x7xi1>
        %287 = tensor.empty() : tensor<9x7x1xi1>
        %288 = memref.realloc %alloc_22 : memref<7xf32> to memref<7xf32>
        %289 = index.divu %c9, %c15
        %290 = vector.broadcast %c1944593197_i32 : i32 to vector<9xi32>
        %291 = vector.broadcast %true : i1 to vector<9xi1>
        %292 = vector.maskedload %alloc_13[%c0, %c4, %c4], %291, %290 : memref<1x9x7xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %293 = vector.broadcast %c1303960709_i32 : i32 to vector<7x7xi32>
        %294 = vector.outerproduct %19, %19, %293 {kind = #vector.kind<add>} : vector<7xi32>, vector<7xi32>
        scf.yield %4 : tensor<1x9x7xi32>
      }
      default {
        bufferization.dealloc_tensor %4 : tensor<1x9x7xi32>
        %277 = arith.remf %cst_1, %cst : f32
        %278 = arith.muli %c14584_i16, %c-27608_i16 : i16
        %279 = vector.broadcast %c1303960709_i32 : i32 to vector<1xi32>
        %dest_57, %accumulated_value_58 = vector.scan <and>, %46, %279 {inclusive = false, reduction_dim = 0 : i64} : vector<7x1xi32>, vector<1xi32>
        %280 = math.copysign %cst_2, %cst_0 : f32
        %281 = math.cos %cst : f32
        %282 = math.cos %10 : tensor<1x9x7xf16>
        %283 = vector.broadcast %c14584_i16 : i16 to vector<9x7x1xi16>
        %284 = vector.broadcast %true : i1 to vector<9x7x1xi1>
        %285 = vector.broadcast %c971899678_i32 : i32 to vector<9x7x1xi32>
        %286 = vector.gather %alloc_18[%c4, %c11, %23] [%285], %284, %283 : memref<9x7x1xi16>, vector<9x7x1xi32>, vector<9x7x1xi1>, vector<9x7x1xi16> into vector<9x7x1xi16>
        %287 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        %alloc_59 = memref.alloc() : memref<1x7xf32>
        %288 = tensor.empty() : tensor<7x7xf32>
        %289 = linalg.matmul ins(%13, %alloc_59 : tensor<7x1xf32>, memref<1x7xf32>) outs(%288 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %290 = arith.shrui %true, %false : i1
        %291 = arith.addf %cst_4, %cst_4 : f16
        %292 = math.absf %13 : tensor<7x1xf32>
        %293 = vector.broadcast %c-27608_i16 : i16 to vector<9x1xi16>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %286, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<9x7x1xi16>, vector<9x1xi16>
        %294 = math.log1p %cst_3 : f16
        %295 = memref.atomic_rmw minf %cst_3, %alloc_14[%c5, %c0, %c8] : (f16, memref<7x1x9xf16>) -> f16
        scf.yield %4 : tensor<1x9x7xi32>
      }
      %271 = vector.load %alloc_12[%c1, %c2, %c0] : memref<9x7x1xi64>, vector<7x1x9xi64>
      %272 = vector.shuffle %46, %46 [0, 1, 2, 5, 7, 8, 10, 11, 12, 13] : vector<7x1xi32>, vector<7x1xi32>
      %273 = vector.broadcast %cst_0 : f32 to vector<7x9xf32>
      %274 = vector.transfer_write %273, %1[%30, %c13, %23] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x9xf32>, tensor<7x1x9xf32>
      %275 = math.tanh %18 : tensor<9x7xf32>
      %276 = index.ceildivu %c6, %c2
      scf.yield %c1102296611_i32 : i32
    }
    case 2 {
      %261 = math.copysign %2, %2 : tensor<9x7x1xf32>
      %262 = arith.shrui %false, %false : i1
      %263 = memref.load %alloc_16[%c5, %c1, %c0] : memref<9x7x1xi1>
      %264 = vector.multi_reduction <or>, %38, %false [0] : vector<1xi1> to i1
      %265 = arith.minf %cst_1, %cst_2 : f32
      %266 = math.tanh %1 : tensor<7x1x9xf32>
      %cst_54 = arith.constant 0x4E363886 : f32
      %267 = vector.matrix_multiply %39, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %268 = affine.load %alloc_20[%c15, %c12, %c14] : memref<9x7x1xi32>
      affine.store %false, %alloc_7[%c15, %c9, %c11] : memref<7x1x9xi1>
      %269 = math.exp %13 : tensor<7x1xf32>
      %270 = bufferization.clone %alloc_5 : memref<7x1x9xi32> to memref<7x1x9xi32>
      %271 = arith.subi %264, %true : i1
      %272 = math.ctlz %0 : tensor<9x7x1xi64>
      %273 = arith.maxui %true, %false : i1
      %274 = tensor.empty() : tensor<7x1xi32>
      scf.yield %c2023546911_i32 : i32
    }
    case 3 {
      %261 = tensor.empty() : tensor<f32>
      %mapped_54 = linalg.map ins(%20, %21 : tensor<f32>, tensor<f32>) outs(%261 : tensor<f32>)
        (%in: f32, %in_57: f32) {
          %277 = arith.shrui %c-27608_i16, %c-27608_i16 : i16
          bufferization.dealloc_tensor %9 : tensor<7x1xi16>
          %278 = arith.subi %c14584_i16, %c14584_i16 : i16
          %279 = index.maxs %c12, %c2
          %280 = index.maxs %c9, %c12
          %281 = index.casts %c-27608_i16 : i16 to index
          %282 = index.sizeof
          %283 = math.fma %18, %reduced, %18 : tensor<9x7xf32>
          %splat_58 = tensor.splat %cst_2 : tensor<9x7x1xf32>
          %alloca_59 = memref.alloca() : memref<9x7x1xf16>
          %alloc_60 = memref.alloc() : memref<1x1xf32>
          %284 = tensor.empty() : tensor<7x1xf32>
          %285 = linalg.matmul ins(%13, %alloc_60 : tensor<7x1xf32>, memref<1x1xf32>) outs(%284 : tensor<7x1xf32>) -> tensor<7x1xf32>
          %alloc_61 = memref.alloc() : memref<9x7x1xf32>
          %286 = index.floordivs %25, %282
          %287 = index.maxs %281, %30
          %288 = vector.transpose %46, [0, 1] : vector<7x1xi32> to vector<7x1xi32>
          %289 = arith.remf %cst_3, %cst_3 : f16
          %290 = math.expm1 %284 : tensor<7x1xf32>
          %291 = math.log %reduced : tensor<9x7xf32>
          %292 = math.log1p %splat_58 : tensor<9x7x1xf32>
          %293 = math.floor %18 : tensor<9x7xf32>
          %294 = vector.broadcast %cst_4 : f16 to vector<1x9x7xf16>
          %295 = vector.broadcast %false : i1 to vector<1x9x7xi1>
          %296 = vector.broadcast %c1077083642_i32 : i32 to vector<1x9x7xi32>
          %297 = vector.gather %10[%279, %c15, %c10] [%296], %295, %294 : tensor<1x9x7xf16>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xf16> into vector<1x9x7xf16>
          %298 = vector.broadcast %c12 : index to vector<9xindex>
          %299 = vector.broadcast %true : i1 to vector<9xi1>
          %300 = vector.broadcast %c61268768_i64 : i64 to vector<9xi64>
          vector.scatter %alloc_8[%c0, %c2, %c1] [%298], %299, %300 : memref<1x9x7xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
          %301 = math.fma %20, %261, %21 : tensor<f32>
          %302 = vector.broadcast %286 : index to vector<1xindex>
          %303 = vector.broadcast %c342458842_i32 : i32 to vector<1xi32>
          vector.scatter %alloc_13[%c0, %c7, %c6] [%302], %38, %303 : memref<1x9x7xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
          %304 = vector.flat_transpose %38 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          memref.assume_alignment %alloc_7, 2 : memref<7x1x9xi1>
          %305 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d1)>(%c4, %c1, %25, %279)
          %alloc_62 = memref.alloc() : memref<9x7x1xf32>
          %306 = arith.maxui %c1303960709_i32, %c342458842_i32 : i32
          affine.store %false, %alloc_11[%c4, %c7, %c11] : memref<1x9x7xi1>
          %307 = bufferization.to_tensor %alloc_22 : memref<7xf32>
          %308 = vector.matrix_multiply %59, %59 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
          %cst_63 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_63 : f32
        }
      %262 = vector.broadcast %cst_0 : f32 to vector<f32>
      %263 = vector.transfer_write %262, %1[%c2, %c12, %c9] : vector<f32>, tensor<7x1x9xf32>
      %264 = arith.minf %cst_3, %cst_3 : f16
      %265 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
      %266 = arith.ori %c-27608_i16, %c14584_i16 : i16
      %267 = vector.broadcast %c1077083642_i32 : i32 to vector<1x9x7xi32>
      %268 = arith.cmpf ule, %cst, %cst_0 : f32
      %269 = math.absf %10 : tensor<1x9x7xf16>
      %270 = index.ceildivu %c5, %c15
      %271 = tensor.empty() : tensor<7x1x9xi32>
      %mapped_55 = linalg.map ins(%alloc_9 : memref<7x1x9xi32>) outs(%271 : tensor<7x1x9xi32>)
        (%in: i32) {
          %dest_57, %accumulated_value_58 = vector.scan <or>, %46, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<7x1xi32>, vector<7xi32>
          %277 = tensor.empty() : tensor<1x9xf32>
          %278 = tensor.empty() : tensor<7x9xf32>
          %279 = linalg.matmul ins(%13, %277 : tensor<7x1xf32>, tensor<1x9xf32>) outs(%278 : tensor<7x9xf32>) -> tensor<7x9xf32>
          %alloc_59 = memref.alloc() : memref<1x7xi16>
          %280 = tensor.empty() : tensor<7x7xi16>
          %281 = linalg.matmul ins(%9, %alloc_59 : tensor<7x1xi16>, memref<1x7xi16>) outs(%280 : tensor<7x7xi16>) -> tensor<7x7xi16>
          %282 = math.log %cst : f32
          %283 = math.round %1 : tensor<7x1x9xf32>
          %284 = bufferization.clone %alloc_21 : memref<7xf32> to memref<7xf32>
          %285 = arith.minf %cst_4, %cst_3 : f16
          %286 = vector.reduction <mul>, %59 : vector<9xi16> into i16
          %287 = index.casts %c1303960709_i32 : i32 to index
          %288 = tensor.empty(%c11) : tensor<7x?xi1>
          %289 = index.sizeof
          %290 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
          %291 = affine.load %alloc_6[%c10, %c9, %c9] : memref<1x9x7xf32>
          %292 = math.exp %10 : tensor<1x9x7xf16>
          %293 = index.casts %287 : index to i32
          %294 = index.divu %32, %c1
          %295 = math.absi %4 : tensor<1x9x7xi32>
          %296 = vector.broadcast %c61268768_i64 : i64 to vector<7x1x9xi64>
          %297 = vector.broadcast %false : i1 to vector<7x1x9xi1>
          %298 = vector.broadcast %c1102296611_i32 : i32 to vector<7x1x9xi32>
          %299 = vector.gather %0[%c10, %c3, %c9] [%298], %297, %296 : tensor<9x7x1xi64>, vector<7x1x9xi32>, vector<7x1x9xi1>, vector<7x1x9xi64> into vector<7x1x9xi64>
          %300 = vector.broadcast %c-27608_i16 : i16 to vector<9x9xi16>
          %301 = vector.outerproduct %59, %59, %300 {kind = #vector.kind<minui>} : vector<9xi16>, vector<9xi16>
          %302 = vector.insertelement %cst_3, %37[%c12 : index] : vector<1xf16>
          %303 = arith.floordivsi %c1077083642_i32, %c1303960709_i32 : i32
          bufferization.dealloc_tensor %14 : tensor<1x9x7xi1>
          %304 = index.add %57, %c13
          %305 = vector.broadcast %false : i1 to vector<7x1xi1>
          %dest_60, %accumulated_value_61 = vector.scan <add>, %297, %305 {inclusive = true, reduction_dim = 2 : i64} : vector<7x1x9xi1>, vector<7x1xi1>
          %306 = arith.cmpi uge, %false, %false : i1
          %307 = vector.extract %298[2] : vector<7x1x9xi32>
          %308 = arith.addf %cst_0, %cst_0 : f32
          %309 = vector.broadcast %c342458842_i32 : i32 to vector<7x7xi32>
          %310 = vector.outerproduct %19, %19, %309 {kind = #vector.kind<xor>} : vector<7xi32>, vector<7xi32>
          %311 = tensor.empty() : tensor<7x1xi16>
          %312 = arith.addf %cst_2, %cst_2 : f32
          %313 = math.powf %cst_1, %cst : f32
          %collapsed_62 = tensor.collapse_shape %reduced [[0, 1]] : tensor<9x7xf32> into tensor<63xf32>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %272 = math.atan %1 : tensor<7x1x9xf32>
      %273 = arith.muli %c-27608_i16, %c-27608_i16 : i16
      %274 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2) mod 2, -((d0 + d2) mod 4), d1)>(%c12, %270, %c8)
      %275 = arith.remui %c14584_i16, %c14584_i16 : i16
      %rank_56 = tensor.rank %9 : tensor<7x1xi16>
      %276 = math.expm1 %cst_2 : f32
      scf.yield %c1303960709_i32 : i32
    }
    default {
      memref.store %c1944593197_i32, %alloc_10[%c4, %c0] : memref<7x1xi32>
      %261 = arith.minf %cst_4, %cst_3 : f16
      %alloc_54 = memref.alloc() : memref<7x1x9xi32>
      %262 = vector.broadcast %c1303960709_i32 : i32 to vector<7x7xi32>
      %263 = vector.outerproduct %19, %19, %262 {kind = #vector.kind<add>} : vector<7xi32>, vector<7xi32>
      bufferization.dealloc_tensor %14 : tensor<1x9x7xi1>
      memref.alloca_scope  {
        %273 = math.ctpop %false : i1
        %274 = arith.minf %cst_2, %cst_2 : f32
        %275 = arith.remui %c2023546911_i32, %c1102296611_i32 : i32
        %276 = index.casts %c971899678_i32 : i32 to index
        %277 = vector.broadcast %c14584_i16 : i16 to vector<1xi16>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %36, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<7x1xi16>, vector<1xi16>
        %278 = math.ctpop %c971899678_i32 : i32
        %279 = math.absi %15 : tensor<7x1x9xi64>
        %280 = math.expm1 %cst_0 : f32
        %281 = math.log2 %13 : tensor<7x1xf32>
        %282 = math.tanh %18 : tensor<9x7xf32>
        %283 = arith.addf %cst_2, %cst_0 : f32
        %284 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
        %285 = arith.addf %cst_0, %cst_2 : f32
        %286 = tensor.empty(%c10, %c10, %276) : tensor<?x?x?xi32>
        %287 = memref.realloc %alloc_22 : memref<7xf32> to memref<1xf32>
        %288 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %289 = math.atan2 %21, %21 : tensor<f32>
        %290 = math.absi %c1102296611_i32 : i32
        %291 = arith.remf %cst_3, %cst_4 : f16
        %292 = index.floordivs %32, %c7
        bufferization.dealloc_tensor %0 : tensor<9x7x1xi64>
        %293 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        %294 = index.maxu %c8, %c15
        %295 = math.absf %13 : tensor<7x1xf32>
        %296 = arith.minf %cst_2, %cst_1 : f32
        %297 = arith.shrui %c1102296611_i32, %c1077083642_i32 : i32
        %298 = arith.ceildivsi %true, %false : i1
        bufferization.dealloc_tensor %6 : tensor<1x9x7xi1>
        %299 = vector.multi_reduction <maxf>, %37, %cst_4 [0] : vector<1xf16> to f16
        %300 = index.ceildivu %c11, %c3
        %301 = arith.shrui %c971899678_i32, %c971899678_i32 : i32
        %302 = index.ceildivs %c9, %c9
      }
      %alloca_55 = memref.alloca() : memref<7x1x9xi1>
      %264 = arith.shrsi %false, %true : i1
      %265 = math.log %cst_3 : f16
      %rank_56 = tensor.rank %3 : tensor<7x1x9xi1>
      %266 = math.floor %cst_3 : f16
      %267 = vector.extract_strided_slice %38 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %268 = memref.alloca_scope  -> (memref<9x7x1xi32>) {
        %273 = arith.xori %c342458842_i32, %c1944593197_i32 : i32
        %274 = arith.divsi %c2023546911_i32, %c1303960709_i32 : i32
        %275 = index.floordivs %c8, %c8
        %276 = arith.ceildivsi %c1077083642_i32, %c1944593197_i32 : i32
        %rank_57 = tensor.rank %3 : tensor<7x1x9xi1>
        %277 = index.maxu %c13, %c8
        %278 = index.casts %c0 : index to i32
        memref.store %c61268768_i64, %alloc_8[%c0, %c1, %c4] : memref<1x9x7xi64>
        %279 = arith.ceildivsi %c1944593197_i32, %c1077083642_i32 : i32
        %280 = arith.minf %cst_1, %cst : f32
        %281 = math.atan2 %12, %12 : tensor<9x7x1xf32>
        %282 = index.add %275, %c0
        %283 = arith.minui %false, %true : i1
        %284 = arith.remsi %c61268768_i64, %c61268768_i64 : i64
        %285 = vector.broadcast %c-27608_i16 : i16 to vector<7xi16>
        %286 = vector.multi_reduction <minui>, %36, %285 [1] : vector<7x1xi16> to vector<7xi16>
        %287 = vector.insertelement %c-27608_i16, %285[%282 : index] : vector<7xi16>
        %288 = index.add %c7, %c5
        %289 = math.fma %cst_1, %cst_2, %cst_2 : f32
        memref.tensor_store %0, %alloc_19 : memref<9x7x1xi64>
        %290 = memref.atomic_rmw muli %c14584_i16, %alloc_17[%c0, %c8, %c2] : (i16, memref<1x9x7xi16>) -> i16
        %291 = math.log %reduced : tensor<9x7xf32>
        %292 = index.maxs %275, %c0
        %293 = math.absf %1 : tensor<7x1x9xf32>
        %294 = tensor.empty(%c14, %c7) : tensor<?x7x?xf16>
        %cst_58 = arith.constant 1.000000e+00 : f16
        %cst_59 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %7[%c14, %c8, %c7], %cst_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<7x1x9xf16>, vector<1xf16>
        %dest_60, %accumulated_value_61 = vector.scan <and>, %36, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<7x1xi16>, vector<7xi16>
        %296 = vector.extract_strided_slice %267 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %297 = index.divu %c8, %c1
        %298 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %299 = vector.broadcast %false : i1 to vector<9xi1>
        %300 = vector.maskedload %alloc_21[%c2], %299, %298 : memref<7xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %301 = arith.remsi %false, %false : i1
        %302 = index.floordivs %282, %c0
        %303 = vector.transpose %300, [0] : vector<9xf32> to vector<9xf32>
        memref.alloca_scope.return %alloc_20 : memref<9x7x1xi32>
      }
      %269 = index.sizeof
      %270 = vector.broadcast %cst_1 : f32 to vector<1x9x7xf32>
      %271 = vector.fma %270, %270, %270 : vector<1x9x7xf32>
      %272 = index.add %c0, %c7
      scf.yield %c2023546911_i32 : i32
    }
    %62 = scf.if %true -> (memref<7x1x9xf16>) {
      %261 = index.add %c10, %c15
      %262 = affine.load %alloc_12[%c15, %c8, %c11] : memref<9x7x1xi64>
      %263 = arith.addf %cst_4, %cst_4 : f16
      %264 = vector.extract_strided_slice %36 {offsets = [1], sizes = [1], strides = [1]} : vector<7x1xi16> to vector<1x1xi16>
      %265 = arith.ori %c1102296611_i32, %c342458842_i32 : i32
      %266 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
      %alloca_54 = memref.alloca() : memref<7x1x9xi32>
      %267 = arith.minsi %262, %262 : i64
      scf.yield %alloc_14 : memref<7x1x9xf16>
    } else {
      %261 = memref.realloc %alloc_22 : memref<7xf32> to memref<7xf32>
      %262 = math.absi %0 : tensor<9x7x1xi64>
      %263 = math.log2 %2 : tensor<9x7x1xf32>
      %264 = vector.multi_reduction <maxui>, %46, %19 [1] : vector<7x1xi32> to vector<7xi32>
      %265 = index.divu %c11, %c1
      %266 = index.mul %c4, %c9
      %267 = math.tanh %2 : tensor<9x7x1xf32>
      %268 = math.ceil %10 : tensor<1x9x7xf16>
      scf.yield %alloc_14 : memref<7x1x9xf16>
    }
    %63 = vector.transpose %46, [1, 0] : vector<7x1xi32> to vector<1x7xi32>
    %64 = memref.load %alloc_16[%c5, %c0, %c0] : memref<9x7x1xi1>
    %65 = arith.shrui %c1077083642_i32, %c1944593197_i32 : i32
    %66 = math.atan %2 : tensor<9x7x1xf32>
    %67 = index.divu %c0, %c5
    %68 = math.expm1 %13 : tensor<7x1xf32>
    %cast = tensor.cast %13 : tensor<7x1xf32> to tensor<?x?xf32>
    %69 = math.powf %7, %7 : tensor<7x1x9xf16>
    %splat = tensor.splat %cst_0 : tensor<7x1xf32>
    %70 = tensor.empty() : tensor<7x1xi32>
    %71 = math.fpowi %13, %70 : tensor<7x1xf32>, tensor<7x1xi32>
    %72 = vector.broadcast %c1944593197_i32 : i32 to vector<1xi32>
    %dest_28, %accumulated_value_29 = vector.scan <and>, %46, %72 {inclusive = true, reduction_dim = 0 : i64} : vector<7x1xi32>, vector<1xi32>
    %73 = arith.minf %cst_3, %cst_4 : f16
    %74 = vector.insertelement %cst_4, %37[%c11 : index] : vector<1xf16>
    bufferization.dealloc_tensor %reduced : tensor<9x7xf32>
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<9x7x1xi64> into tensor<63x1xi64>
    %75 = math.atan2 %2, %12 : tensor<9x7x1xf32>
    %76 = math.round %cst_2 : f32
    %77 = arith.ori %false, %true : i1
    %78 = math.absi %c1944593197_i32 : i32
    %79 = math.tan %1 : tensor<7x1x9xf32>
    %80 = vector.extract %37[0] : vector<1xf16>
    bufferization.dealloc_tensor %21 : tensor<f32>
    %81 = index.add %30, %c10
    %82 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
    %83 = math.absf %7 : tensor<7x1x9xf16>
    %generated = tensor.generate %c7, %57, %c10 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %261 = arith.minf %cst_1, %cst_0 : f32
      %262 = index.casts %true : i1 to index
      %generated_54 = tensor.generate %c14, %23 {
      ^bb0(%arg3: index, %arg4: index):
        %264 = math.ceil %12 : tensor<9x7x1xf32>
        %rank_55 = tensor.rank %5 : tensor<9x7x1xi1>
        %265 = index.casts %67 : index to i32
        %266 = tensor.empty() : tensor<9x1xf32>
        %267 = linalg.matmul ins(%reduced, %13 : tensor<9x7xf32>, tensor<7x1xf32>) outs(%266 : tensor<9x1xf32>) -> tensor<9x1xf32>
        tensor.yield %c61268768_i64 : i64
      } : tensor<?x?xi64>
      %263 = vector.create_mask %arg2, %c5 : vector<7x1xi1>
      tensor.yield %c1102296611_i32 : i32
    } : tensor<?x?x?xi32>
    %cast_30 = tensor.cast %8 : tensor<7x1x9xi16> to tensor<?x?x?xi16>
    %84 = math.copysign %7, %7 : tensor<7x1x9xf16>
    %85 = arith.cmpi ult, %c1077083642_i32, %c971899678_i32 : i32
    %86 = vector.reduction <maxf>, %37 : vector<1xf16> into f16
    %87 = math.floor %cst : f32
    %88 = arith.divsi %c1944593197_i32, %c971899678_i32 : i32
    %89 = index.mul %c9, %c10
    %90 = index.sizeof
    %91 = math.expm1 %cst_0 : f32
    %92 = index.maxu %32, %c14
    %93 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 32) floordiv 2 - 4 >= 0, -(d1 mod 32) == 0, (d1 - 1) floordiv 8 >= 0)>(%c0, %c14, %c6) -> memref<7x1xf16> {
      %261 = bufferization.clone %alloc_19 : memref<9x7x1xi64> to memref<9x7x1xi64>
      %262 = bufferization.clone %alloc_12 : memref<9x7x1xi64> to memref<9x7x1xi64>
      %263 = arith.shrui %c61268768_i64, %c61268768_i64 : i64
      %264 = affine.if affine_set<(d0) : (d0 ceildiv 4 + 128 == 0)>(%c3) -> memref<7x1x9xf32> {
        %268 = memref.atomic_rmw assign %c971899678_i32, %alloc_10[%c0, %c0] : (i32, memref<7x1xi32>) -> i32
        %269 = index.add %c14, %c9
        %270 = math.powf %2, %2 : tensor<9x7x1xf32>
        %271 = vector.load %alloc_17[%c0, %c6, %c6] : memref<1x9x7xi16>, vector<7x1x9xi16>
        %272 = tensor.empty() : tensor<1x9xi16>
        %273 = tensor.empty() : tensor<7x9xi16>
        %274 = linalg.matmul ins(%11, %272 : tensor<7x1xi16>, tensor<1x9xi16>) outs(%273 : tensor<7x9xi16>) -> tensor<7x9xi16>
        %275 = math.tanh %13 : tensor<7x1xf32>
        %276 = math.log2 %18 : tensor<9x7xf32>
        %277 = index.maxs %57, %67
        %alloc_56 = memref.alloc() : memref<7x1x9xf32>
        affine.yield %alloc_56 : memref<7x1x9xf32>
      } else {
        %268 = vector.broadcast %cst_4 : f16 to vector<1x1xf16>
        %269 = vector.outerproduct %37, %37, %268 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
        %270 = tensor.empty() : tensor<9x1xf32>
        %271 = linalg.matmul ins(%18, %13 : tensor<9x7xf32>, tensor<7x1xf32>) outs(%270 : tensor<9x1xf32>) -> tensor<9x1xf32>
        %272 = math.fpowi %7, %42 : tensor<7x1x9xf16>, tensor<7x1x9xi32>
        %273 = index.maxu %c13, %c1
        %274 = arith.shli %c971899678_i32, %c1303960709_i32 : i32
        %275 = math.log2 %18 : tensor<9x7xf32>
        %276 = math.absi %3 : tensor<7x1x9xi1>
        %277 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %alloc_56 = memref.alloc() : memref<7x1x9xf32>
        affine.yield %alloc_56 : memref<7x1x9xf32>
      }
      %265 = vector.extract %46[2] : vector<7x1xi32>
      %cast_54 = tensor.cast %6 : tensor<1x9x7xi1> to tensor<?x?x?xi1>
      %266 = vector.create_mask %57, %c8, %32 : vector<1x9x7xi1>
      %267 = memref.atomic_rmw muli %c61268768_i64, %alloc_8[%c0, %c5, %c4] : (i64, memref<1x9x7xi64>) -> i64
      %alloc_55 = memref.alloc() : memref<7x1xf16>
      affine.yield %alloc_55 : memref<7x1xf16>
    } else {
      affine.for %arg0 = 0 to 1 {
      }
      %261 = scf.while (%arg0 = %c61268768_i64) : (i64) -> i64 {
        %266 = vector.transpose %37, [0] : vector<1xf16> to vector<1xf16>
        %267 = vector.multi_reduction <and>, %36, %c-27608_i16 [0, 1] : vector<7x1xi16> to i16
        %268 = arith.floordivsi %c-27608_i16, %267 : i16
        %269 = index.maxs %c1, %c11
        %270 = vector.matrix_multiply %39, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %271 = arith.shli %c342458842_i32, %c971899678_i32 : i32
        %272 = index.sizeof
        %273 = arith.remui %true, %true : i1
        scf.condition(%true) %c61268768_i64 : i64
      } do {
      ^bb0(%arg0: i64):
        %266 = math.floor %cst_0 : f32
        %267 = arith.cmpf ule, %cst_2, %cst : f32
        %268 = arith.muli %c1077083642_i32, %c971899678_i32 : i32
        bufferization.dealloc_tensor %splat : tensor<7x1xf32>
        %269 = arith.cmpf oeq, %cst, %cst_2 : f32
        %270 = arith.addi %false, %false : i1
        %expanded = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<63x1xi64> into tensor<63x1x1xi64>
        %271 = math.log1p %cst_3 : f16
        %272 = math.absi %false : i1
        %273 = math.fma %20, %20, %21 : tensor<f32>
        memref.copy %alloc_19, %alloc_12 : memref<9x7x1xi64> to memref<9x7x1xi64>
        %274 = math.fma %cst_1, %cst_0, %cst_0 : f32
        %275 = vector.maskedload %alloc[%c3, %c1, %c0], %38, %37 : memref<9x7x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %276 = arith.cmpf false, %cst_2, %cst_0 : f32
        %277 = math.tanh %cst : f32
        %278 = arith.addf %cst_2, %cst_0 : f32
        scf.yield %arg0 : i64
      }
      %262 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
      %rank_54 = tensor.rank %5 : tensor<9x7x1xi1>
      %263 = arith.cmpi ult, %false, %false : i1
      %264 = bufferization.to_tensor %alloc_22 : memref<7xf32>
      %265 = arith.addf %cst_4, %cst_4 : f16
      %inserted = tensor.insert %c342458842_i32 into %4[%c0, %c3, %c3] : tensor<1x9x7xi32>
      %alloc_55 = memref.alloc() : memref<7x1xf16>
      affine.yield %alloc_55 : memref<7x1xf16>
    }
    %94 = math.expm1 %10 : tensor<1x9x7xf16>
    %95 = index.maxs %23, %c13
    %generated_31 = tensor.generate %23 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %261 = affine.min affine_map<(d0, d1, d2) -> (d2 + d0 + 4, ((d2 + 64) * 2) mod 4 - (d2 + d0), d0)>(%23, %c1, %c6)
      memref.assume_alignment %alloc_13, 4 : memref<1x9x7xi32>
      %262 = vector.broadcast %c-27608_i16 : i16 to vector<i16>
      %263 = vector.transfer_write %262, %8[%57, %c0, %arg2] : vector<i16>, tensor<7x1x9xi16>
      %264 = math.round %7 : tensor<7x1x9xf16>
      tensor.yield %cst_2 : f32
    } : tensor<?x9x7xf32>
    %96 = index.mul %c12, %90
    %97 = math.fma %13, %13, %13 : tensor<7x1xf32>
    %98 = arith.cmpf uge, %cst_1, %cst_1 : f32
    %99 = index.maxs %c1, %96
    %100 = bufferization.to_memref %11 : memref<7x1xi16>
    %alloc_32 = memref.alloc() : memref<7x1x9xi1>
    %101 = arith.divf %cst_4, %cst_4 : f16
    %102 = math.log2 %10 : tensor<1x9x7xf16>
    %103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<7x1x9xf32>) {
    ^bb0(%out: f32):
      %261 = math.tanh %cst_4 : f16
      %c1278816971_i64 = arith.constant 1278816971 : i64
      %262 = vector.extract %19[1] : vector<7xi32>
      %263 = vector.broadcast %cst : f32 to vector<7x1x9xf32>
      %264 = vector.fma %263, %263, %263 : vector<7x1x9xf32>
      %265 = scf.while (%arg0 = %c1303960709_i32) : (i32) -> i32 {
        %290 = arith.maxui %false, %true : i1
        %291 = arith.subi %c342458842_i32, %c2023546911_i32 : i32
        %292 = math.absf %7 : tensor<7x1x9xf16>
        %293 = math.log2 %cst : f32
        %294 = vector.splat %23 : vector<7x1x9xindex>
        %splat_59 = tensor.splat %cst : tensor<1x9x7xf32>
        %295 = index.ceildivu %25, %90
        %296 = math.round %12 : tensor<9x7x1xf32>
        scf.condition(%false) %c2023546911_i32 : i32
      } do {
      ^bb0(%arg0: i32):
        %290 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %291 = index.floordivs %32, %89
        %292 = math.floor %12 : tensor<9x7x1xf32>
        %293 = memref.load %alloc[%c7, %c6, %c0] : memref<9x7x1xf16>
        %alloca_59 = memref.alloca() : memref<1x9x7xi16>
        %294 = vector.broadcast %89 : index to vector<1xindex>
        %295 = vector.broadcast %c14584_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_18[%c3, %c4, %c0] [%294], %38, %295 : memref<9x7x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %dest_60, %accumulated_value_61 = vector.scan <add>, %46, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<7x1xi32>, vector<1xi32>
        %296 = index.ceildivu %c1, %c8
        %297 = arith.divf %cst_4, %cst_3 : f16
        %298 = arith.divf %cst_2, %cst : f32
        %299 = arith.xori %c61268768_i64, %c61268768_i64 : i64
        %300 = index.ceildivu %291, %23
        %301 = vector.splat %c8 : vector<7x1xindex>
        %302 = memref.realloc %alloc_22 : memref<7xf32> to memref<7xf32>
        %303 = arith.minf %cst_4, %cst_3 : f16
        %304 = math.absf %10 : tensor<1x9x7xf16>
        scf.yield %c1303960709_i32 : i32
      }
      %266 = arith.subi %c1944593197_i32, %c1102296611_i32 : i32
      %267 = arith.remui %c971899678_i32, %c342458842_i32 : i32
      %268 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %269 = vector.multi_reduction <minf>, %263, %268 [0, 1] : vector<7x1x9xf32> to vector<9xf32>
      %270 = memref.load %alloc_6[%c0, %c4, %c5] : memref<1x9x7xf32>
      %271 = arith.subi %c-27608_i16, %c14584_i16 : i16
      %rank_54 = tensor.rank %15 : tensor<7x1x9xi64>
      %272 = index.castu %32 : index to i32
      %273 = bufferization.to_tensor %alloc_14 : memref<7x1x9xf16>
      %extracted_55 = tensor.extract %11[%c3, %c0] : tensor<7x1xi16>
      %274 = index.floordivs %96, %c12
      %275 = tensor.empty(%rank_54, %c2, %c1) : tensor<?x?x?xf16>
      %276 = affine.load %100[%c4, %c3] : memref<7x1xi16>
      %277 = math.expm1 %7 : tensor<7x1x9xf16>
      %278 = arith.ceildivsi %c2023546911_i32, %c1944593197_i32 : i32
      %279 = arith.cmpf une, %cst_4, %cst_4 : f16
      %280 = math.round %13 : tensor<7x1xf32>
      %281 = arith.xori %276, %c14584_i16 : i16
      scf.index_switch %23 
      case 1 {
        %290 = arith.floordivsi %c2023546911_i32, %c971899678_i32 : i32
        %291 = vector.broadcast %false : i1 to vector<1xi1>
        vector.transfer_write %291, %alloc_11[%32, %c6, %32] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi1>, memref<1x9x7xi1>
        %292 = math.tan %reduced : tensor<9x7xf32>
        %293 = vector.bitcast %268 : vector<9xf32> to vector<9xf32>
        %c4886_i16 = arith.constant 4886 : i16
        %294 = math.cttz %276 : i16
        %cast_59 = tensor.cast %7 : tensor<7x1x9xf16> to tensor<?x?x?xf16>
        %295 = arith.muli %c1303960709_i32, %c1303960709_i32 : i32
        %296 = vector.extract_strided_slice %264 {offsets = [2], sizes = [2], strides = [1]} : vector<7x1x9xf32> to vector<2x1x9xf32>
        %297 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 floordiv 32) * 2, (d0 ceildiv 128) ceildiv 128, d2, d0 + 1)>(%c11, %c7, %89, %30)
        %298 = arith.remsi %c342458842_i32, %c1303960709_i32 : i32
        %299 = vector.broadcast %true : i1 to vector<7xi1>
        %300 = vector.maskedload %alloc_20[%c8, %c4, %c0], %299, %19 : memref<9x7x1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %301 = affine.min affine_map<(d0) -> (0, d0, d0 * -128)>(%c5)
        %302 = arith.divui %c-27608_i16, %c14584_i16 : i16
        %303 = vector.load %alloc_19[%c5, %c3, %c0] : memref<9x7x1xi64>, vector<1x9x7xi64>
        %304 = index.mul %25, %c9
        scf.yield
      }
      case 2 {
        %290 = index.add %c11, %57
        %291 = vector.broadcast %true : i1 to vector<7xi1>
        %292 = vector.transfer_write %291, %3[%32, %67, %96] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi1>, tensor<7x1x9xi1>
        %293 = arith.muli %true, %true : i1
        %294 = arith.shli %c971899678_i32, %c1077083642_i32 : i32
        %295 = arith.cmpi ne, %c971899678_i32, %c1102296611_i32 : i32
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %296 = vector.transfer_read %alloc_10[%c13, %67], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x1xi32>, vector<7xi32>
        %297 = arith.divsi %c1_i32, %c1077083642_i32 : i32
        %298 = math.absi %5 : tensor<9x7x1xi1>
        %299 = vector.extract %268[8] : vector<9xf32>
        %300 = arith.minf %cst_0, %cst_2 : f32
        %301 = index.mul %c3, %90
        %alloca_59 = memref.alloca() : memref<1x9x7xi32>
        %302 = vector.insertelement %true, %291[%c4 : index] : vector<7xi1>
        %303 = bufferization.to_tensor %alloc_13 : memref<1x9x7xi32>
        memref.assume_alignment %alloc_9, 8 : memref<7x1x9xi32>
        %304 = math.cttz %c971899678_i32 : i32
        scf.yield
      }
      case 3 {
        %290 = bufferization.to_memref %13 : memref<7x1xf32>
        %291 = index.maxs %81, %c3
        %292 = vector.splat %c9 : vector<7x1x9xindex>
        %293 = index.maxu %c9, %90
        %294 = vector.load %290[%c3, %c0] : memref<7x1xf32>, vector<9x7x1xf32>
        %295 = index.floordivs %30, %293
        %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<9x7x1xi1> into tensor<9x7x1x1xi1>
        %296 = vector.multi_reduction <mul>, %37, %cst_3 [0] : vector<1xf16> to f16
        memref.copy %alloc_22, %alloc_21 : memref<7xf32> to memref<7xf32>
        memref.assume_alignment %100, 8 : memref<7x1xi16>
        %297 = math.tan %20 : tensor<f32>
        %rank_59 = tensor.rank %7 : tensor<7x1x9xf16>
        %alloc_60 = memref.alloc() : memref<7x1xf16>
        %298 = vector.multi_reduction <minf>, %268, %268 [] : vector<9xf32> to vector<9xf32>
        %alloc_61 = memref.alloc() : memref<7x1x9xf32>
        %cast_62 = tensor.cast %8 : tensor<7x1x9xi16> to tensor<?x?x?xi16>
        scf.yield
      }
      default {
        %290 = arith.cmpf oeq, %out, %cst : f32
        %alloca_59 = memref.alloca() : memref<7x1x9xi64>
        %291 = math.absf %1 : tensor<7x1x9xf32>
        memref.assume_alignment %alloc_5, 16 : memref<7x1x9xi32>
        %alloc_60 = memref.alloc() : memref<7x1xi32>
        %292 = memref.atomic_rmw addf %cst_1, %alloc_6[%c0, %c6, %c0] : (f32, memref<1x9x7xf32>) -> f32
        %splat_61 = tensor.splat %c1303960709_i32 : tensor<7x1xi32>
        %inserted = tensor.insert %cst_4 into %10[%c0, %c5, %c3] : tensor<1x9x7xf16>
        %293 = index.maxu %c4, %c5
        %294 = vector.broadcast %c1303960709_i32 : i32 to vector<i32>
        vector.transfer_write %294, %alloc_15[%c15, %c2, %67] : vector<i32>, memref<7x1x9xi32>
        %295 = bufferization.to_tensor %100 : memref<7x1xi16>
        %296 = arith.ceildivsi %c1303960709_i32, %c2023546911_i32 : i32
        %297 = arith.negf %out : f32
        %298 = arith.shli %c14584_i16, %c14584_i16 : i16
        %299 = arith.ceildivsi %extracted_55, %c14584_i16 : i16
        %300 = math.log2 %21 : tensor<f32>
      }
      %282 = arith.minsi %extracted_55, %c-27608_i16 : i16
      %cast_56 = tensor.cast %splat : tensor<7x1xf32> to tensor<?x?xf32>
      %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, (d0 ceildiv 32) * 64, d0 + d2)>(%30, %99, %c7, %rank_54)
      %284 = math.cos %7 : tensor<7x1x9xf16>
      %285 = vector.broadcast %cst : f32 to vector<7x9xf32>
      %dest_57, %accumulated_value_58 = vector.scan <minf>, %264, %285 {inclusive = false, reduction_dim = 1 : i64} : vector<7x1x9xf32>, vector<7x9xf32>
      %286 = arith.remsi %c1303960709_i32, %c1944593197_i32 : i32
      %287 = vector.reduction <maxsi>, %19 : vector<7xi32> into i32
      %288 = index.mul %25, %c3
      %289 = index.floordivs %96, %81
      linalg.yield %out : f32
    } -> tensor<7x1x9xf32>
    %104 = index.divu %90, %92
    affine.for %arg0 = 0 to 46 {
    }
    %105 = index.maxu %c7, %99
    affine.store %cst_3, %alloc_14[%c11, %c3, %c5] : memref<7x1x9xf16>
    %106 = memref.atomic_rmw ori %c1102296611_i32, %alloc_5[%c4, %c0, %c1] : (i32, memref<7x1x9xi32>) -> i32
    %107 = arith.minf %cst, %cst_0 : f32
    %alloca = memref.alloca() : memref<9x7x1xi1>
    %108 = vector.transpose %46, [0, 1] : vector<7x1xi32> to vector<7x1xi32>
    %109 = math.tan %1 : tensor<7x1x9xf32>
    %110 = math.absf %cst : f32
    %c528155162_i64 = arith.constant 528155162 : i64
    affine.for %arg0 = 0 to 41 {
    }
    %111 = vector.transpose %39, [0] : vector<1xf16> to vector<1xf16>
    %alloca_33 = memref.alloca() : memref<9x7x1xf16>
    %112 = math.exp %1 : tensor<7x1x9xf32>
    %113 = tensor.empty() : tensor<7x1xi32>
    %mapped = linalg.map ins(%alloc_10, %alloc_10, %70 : memref<7x1xi32>, memref<7x1xi32>, tensor<7x1xi32>) outs(%113 : tensor<7x1xi32>)
      (%in: i32, %in_54: i32, %in_55: i32) {
        %261 = vector.bitcast %19 : vector<7xi32> to vector<7xf32>
        %262 = arith.muli %c1303960709_i32, %c1102296611_i32 : i32
        %263 = vector.broadcast %c14584_i16 : i16 to vector<9x9xi16>
        %264 = vector.outerproduct %59, %59, %263 {kind = #vector.kind<minsi>} : vector<9xi16>, vector<9xi16>
        %265 = tensor.empty() : tensor<9x7x1xi32>
        %266 = math.fpowi %2, %265 : tensor<9x7x1xf32>, tensor<9x7x1xi32>
        %267 = math.log2 %13 : tensor<7x1xf32>
        %268 = vector.broadcast %99 : index to vector<9xindex>
        %269 = vector.broadcast %true : i1 to vector<9xi1>
        %270 = vector.broadcast %c342458842_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_15[%c4, %c0, %c5] [%268], %269, %270 : memref<7x1x9xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %271 = vector.matrix_multiply %59, %59 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
        %272 = arith.muli %c1303960709_i32, %in_55 : i32
        %273 = bufferization.clone %alloc_10 : memref<7x1xi32> to memref<7x1xi32>
        %274 = arith.negf %cst_1 : f32
        %275 = vector.insertelement %false, %38[%23 : index] : vector<1xi1>
        %276 = vector.multi_reduction <mul>, %37, %39 [] : vector<1xf16> to vector<1xf16>
        %277 = math.log2 %13 : tensor<7x1xf32>
        %278 = arith.cmpi sgt, %c1102296611_i32, %in_54 : i32
        %279 = bufferization.to_memref %8 : memref<7x1x9xi16>
        %280 = arith.floordivsi %false, %false : i1
        %281 = affine.for %arg0 = 0 to 90 iter_args(%arg1 = %18) -> (tensor<9x7xf32>) {
          affine.yield %18 : tensor<9x7xf32>
        }
        %282 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %283 = affine.min affine_map<(d0, d1, d2) -> (d1 * 8, -(d1 + 4))>(%c7, %c9, %90)
        %splat_56 = tensor.splat %c14584_i16 : tensor<1x9x7xi16>
        %284 = math.fpowi %7, %42 : tensor<7x1x9xf16>, tensor<7x1x9xi32>
        %285 = math.tan %cst_3 : f16
        %cast_57 = tensor.cast %7 : tensor<7x1x9xf16> to tensor<?x?x?xf16>
        %286 = vector.shuffle %282, %282 [0, 1] : vector<1xf16>, vector<1xf16>
        %287 = arith.floordivsi %c342458842_i32, %in_54 : i32
        %288 = vector.transpose %261, [0] : vector<7xf32> to vector<7xf32>
        %289 = arith.addi %c1102296611_i32, %c1077083642_i32 : i32
        %290 = arith.muli %in, %c1944593197_i32 : i32
        bufferization.dealloc_tensor %10 : tensor<1x9x7xf16>
        %291 = vector.broadcast %cst_4 : f16 to vector<7x1x9xf16>
        %292 = vector.broadcast %true : i1 to vector<7x1x9xi1>
        %293 = vector.broadcast %c1944593197_i32 : i32 to vector<7x1x9xi32>
        %294 = vector.gather %alloc[%32, %81, %c5] [%293], %292, %291 : memref<9x7x1xf16>, vector<7x1x9xi32>, vector<7x1x9xi1>, vector<7x1x9xf16> into vector<7x1x9xf16>
        %295 = memref.atomic_rmw mins %in_54, %alloc_9[%c3, %c0, %c6] : (i32, memref<7x1x9xi32>) -> i32
        %296 = index.sizeof
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %114 = tensor.empty() : tensor<9x7x1xi32>
    %115 = math.fpowi %12, %114 : tensor<9x7x1xf32>, tensor<9x7x1xi32>
    %116 = math.log %21 : tensor<f32>
    %117 = math.expm1 %13 : tensor<7x1xf32>
    %118 = index.casts %c4 : index to i32
    %119 = vector.broadcast %cst_0 : f32 to vector<f32>
    %120 = vector.transfer_write %119, %reduced[%104, %30] : vector<f32>, tensor<9x7xf32>
    %121 = index.floordivs %105, %c6
    %122 = vector.load %alloc_20[%c7, %c2, %c0] : memref<9x7x1xi32>, vector<7x1xi32>
    %123 = index.maxs %89, %57
    %124 = vector.shuffle %38, %38 [0] : vector<1xi1>, vector<1xi1>
    %125 = arith.muli %c-27608_i16, %c14584_i16 : i16
    %126 = vector.broadcast %c342458842_i32 : i32 to vector<1xi32>
    %127 = vector.insert %126, %122 [6] : vector<1xi32> into vector<7x1xi32>
    %128 = vector.broadcast %cst : f32 to vector<7x1xf32>
    %129 = vector.fma %128, %128, %128 : vector<7x1xf32>
    %130 = math.fpowi %10, %4 : tensor<1x9x7xf16>, tensor<1x9x7xi32>
    %131 = vector.broadcast %cst : f32 to vector<9x7x1xf32>
    %132 = vector.fma %131, %131, %131 : vector<9x7x1xf32>
    %133 = scf.while (%arg0 = %c1102296611_i32) : (i32) -> i32 {
      %261 = arith.remui %c1102296611_i32, %c1077083642_i32 : i32
      scf.index_switch %c7 
      case 1 {
        %270 = math.floor %12 : tensor<9x7x1xf32>
        %cast_54 = tensor.cast %collapsed : tensor<63x1xi64> to tensor<?x?xi64>
        %271 = arith.remsi %false, %true : i1
        %272 = arith.cmpi sle, %c1944593197_i32, %c971899678_i32 : i32
        %273 = vector.broadcast %cst_2 : f32 to vector<7x1x9xf32>
        %274 = vector.fma %273, %273, %273 : vector<7x1x9xf32>
        %275 = index.sub %67, %c15
        %276 = math.cttz %c1944593197_i32 : i32
        %277 = index.add %c9, %30
        %278 = index.divu %123, %32
        %279 = arith.cmpi slt, %c1102296611_i32, %c1077083642_i32 : i32
        %cst_55 = arith.constant 1.261600e+04 : f16
        %280 = vector.load %alloc_17[%c0, %c0, %c6] : memref<1x9x7xi16>, vector<9x7x1xi16>
        %281 = math.absi %15 : tensor<7x1x9xi64>
        %282 = vector.broadcast %c2023546911_i32 : i32 to vector<7x7xi32>
        %283 = vector.outerproduct %19, %19, %282 {kind = #vector.kind<minsi>} : vector<7xi32>, vector<7xi32>
        %284 = math.tanh %cst_2 : f32
        %alloc_56 = memref.alloc() : memref<1x9x7xi64>
        scf.yield
      }
      case 2 {
        %270 = arith.shli %c1077083642_i32, %c1077083642_i32 : i32
        %271 = index.mul %81, %c12
        %272 = math.ceil %7 : tensor<7x1x9xf16>
        %273 = arith.remui %arg0, %c1944593197_i32 : i32
        %274 = vector.multi_reduction <maxui>, %19, %19 [] : vector<7xi32> to vector<7xi32>
        %275 = math.fpowi %7, %42 : tensor<7x1x9xf16>, tensor<7x1x9xi32>
        %276 = arith.remui %c1944593197_i32, %c1102296611_i32 : i32
        %277 = index.casts %c1102296611_i32 : i32 to index
        %278 = vector.broadcast %false : i1 to vector<7x1xi1>
        %279 = vector.gather %alloc_18[%c2, %c15, %96] [%46], %278, %36 : memref<9x7x1xi16>, vector<7x1xi32>, vector<7x1xi1>, vector<7x1xi16> into vector<7x1xi16>
        %280 = math.atan2 %7, %7 : tensor<7x1x9xf16>
        %splat_54 = tensor.splat %c971899678_i32 : tensor<7x1xi32>
        memref.copy %alloc_14, %62 : memref<7x1x9xf16> to memref<7x1x9xf16>
        %281 = math.tan %7 : tensor<7x1x9xf16>
        %282 = index.ceildivu %123, %105
        %283 = math.round %cst : f32
        %284 = index.ceildivu %c12, %67
        scf.yield
      }
      case 3 {
        %270 = math.copysign %cst_4, %cst_4 : f16
        %271 = arith.subi %false, %true : i1
        %272 = math.fma %21, %21, %20 : tensor<f32>
        %273 = arith.divf %cst_0, %cst_1 : f32
        %274 = arith.divf %cst_1, %cst_2 : f32
        %275 = vector.broadcast %cst_2 : f32 to vector<1x9x7xf32>
        %276 = vector.broadcast %true : i1 to vector<1x9x7xi1>
        %277 = vector.broadcast %c1944593197_i32 : i32 to vector<1x9x7xi32>
        %278 = vector.gather %2[%123, %95, %c5] [%277], %276, %275 : tensor<9x7x1xf32>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xf32> into vector<1x9x7xf32>
        %279 = index.mul %c9, %99
        %280 = math.atan2 %1, %1 : tensor<7x1x9xf32>
        %alloc_54 = memref.alloc() : memref<7x1x9xf32>
        %rank_55 = tensor.rank %15 : tensor<7x1x9xi64>
        %281 = index.maxu %c9, %c12
        %282 = index.floordivs %c13, %96
        %283 = math.atan2 %7, %7 : tensor<7x1x9xf16>
        %splat_56 = tensor.splat %true : tensor<7x1xi1>
        %alloc_57 = memref.alloc() : memref<7x1x9xi32>
        %284 = index.ceildivu %c12, %c4
        scf.yield
      }
      default {
        %270 = math.atan2 %cst_0, %cst_0 : f32
        %alloc_54 = memref.alloc() : memref<7x1x9xi32>
        %271 = vector.matrix_multiply %39, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %272 = math.tan %1 : tensor<7x1x9xf32>
        %273 = index.ceildivu %32, %99
        %274 = index.floordivs %273, %c6
        %collapsed_55 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
        %275 = arith.maxui %arg0, %c1102296611_i32 : i32
        %276 = index.maxs %89, %c4
        %277 = bufferization.to_memref %15 : memref<7x1x9xi64>
        %rank_56 = tensor.rank %splat : tensor<7x1xf32>
        %278 = vector.reduction <or>, %126 : vector<1xi32> into i32
        %279 = math.exp %1 : tensor<7x1x9xf32>
        %280 = affine.load %alloc_8[%c3, %c0, %c9] : memref<1x9x7xi64>
        %281 = math.fma %12, %2, %12 : tensor<9x7x1xf32>
        %282 = memref.atomic_rmw assign %cst_3, %alloc_14[%c1, %c0, %c1] : (f16, memref<7x1x9xf16>) -> f16
      }
      %262 = vector.broadcast %c-27608_i16 : i16 to vector<1xi16>
      %263 = vector.maskedload %100[%c3, %c0], %38, %262 : memref<7x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %264 = vector.bitcast %19 : vector<7xi32> to vector<7xf32>
      %265 = vector.matrix_multiply %264, %264 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
      %266 = scf.while (%arg1 = %alloc_20) : (memref<9x7x1xi32>) -> memref<9x7x1xi32> {
        %270 = index.floordivs %123, %c8
        %271 = index.divs %25, %92
        %272 = index.maxu %23, %121
        %rank_54 = tensor.rank %4 : tensor<1x9x7xi32>
        %273 = vector.splat %270 : vector<9x7x1xindex>
        %inserted = tensor.insert %c14584_i16 into %8[%c0, %c0, %c6] : tensor<7x1x9xi16>
        %274 = vector.create_mask %89, %272, %92 : vector<7x1x9xi1>
        %275 = vector.broadcast %c1077083642_i32 : i32 to vector<7x1xi32>
        scf.condition(%false) %arg1 : memref<9x7x1xi32>
      } do {
      ^bb0(%arg1: memref<9x7x1xi32>):
        %270 = arith.remui %c14584_i16, %c-27608_i16 : i16
        %271 = affine.max affine_map<(d0) -> ((d0 mod 64 - 144) ceildiv 64, d0, d0 mod 64 - (-d0) ceildiv 64 + d0 - 128)>(%96)
        %272 = math.round %cst_0 : f32
        %273 = math.tan %10 : tensor<1x9x7xf16>
        %274 = arith.addf %cst_2, %cst_1 : f32
        %275 = math.tan %splat : tensor<7x1xf32>
        %276 = vector.maskedload %alloc_10[%c5, %c0], %38, %126 : memref<7x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %277 = tensor.empty() : tensor<9x7x1xf32>
        %278 = arith.floordivsi %c61268768_i64, %c61268768_i64 : i64
        %279 = arith.divsi %c14584_i16, %c14584_i16 : i16
        %280 = vector.load %alloc[%c2, %c0, %c0] : memref<9x7x1xf16>, vector<1x9x7xf16>
        %281 = math.log2 %reduced : tensor<9x7xf32>
        %282 = index.floordivs %57, %25
        %283 = math.exp %13 : tensor<7x1xf32>
        %284 = tensor.empty() : tensor<7x1x9xf16>
        %285 = arith.remui %c14584_i16, %c14584_i16 : i16
        scf.yield %alloc_20 : memref<9x7x1xi32>
      }
      %267 = arith.divf %cst_0, %cst_0 : f32
      %268 = vector.broadcast %true : i1 to vector<1x1xi1>
      %269 = vector.outerproduct %38, %38, %268 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      scf.condition(%false) %c971899678_i32 : i32
    } do {
    ^bb0(%arg0: i32):
      %261 = arith.divf %cst_1, %cst_1 : f32
      %262 = vector.load %alloc_15[%c4, %c0, %c6] : memref<7x1x9xi32>, vector<1x9x7xi32>
      %263 = index.maxs %c0, %81
      %264 = arith.divf %cst_0, %cst_1 : f32
      %265 = arith.maxui %c61268768_i64, %c61268768_i64 : i64
      %266 = math.absi %5 : tensor<9x7x1xi1>
      %267 = arith.cmpf one, %cst, %cst : f32
      %extracted_54 = tensor.extract %26[%c2, %c4, %c0] : tensor<9x7x1xi1>
      %268 = math.roundeven %cst_4 : f16
      %269 = arith.addi %c14584_i16, %c14584_i16 : i16
      %270 = tensor.empty() : tensor<1x9x7xi1>
      %mapped_55 = linalg.map ins(%14, %alloc_11 : tensor<1x9x7xi1>, memref<1x9x7xi1>) outs(%270 : tensor<1x9x7xi1>)
        (%in: i1, %in_57: i1) {
          %inserted = tensor.insert %arg0 into %113[%c5, %c0] : tensor<7x1xi32>
          %275 = arith.negf %cst_3 : f16
          %276 = arith.addf %cst_3, %cst_4 : f16
          %277 = vector.broadcast %cst_4 : f16 to vector<1xf16>
          %278 = vector.transfer_write %277, %7[%99, %90, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf16>, tensor<7x1x9xf16>
          %279 = math.round %2 : tensor<9x7x1xf32>
          %280 = index.maxs %23, %121
          %281 = vector.broadcast %c8 : index to vector<1xindex>
          %282 = vector.broadcast %c61268768_i64 : i64 to vector<1xi64>
          vector.scatter %alloc_12[%c7, %c4, %c0] [%281], %38, %282 : memref<9x7x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
          %283 = bufferization.to_tensor %alloc_6 : memref<1x9x7xf32>
          %284 = index.add %c12, %263
          %285 = vector.create_mask %c7, %263, %c11 : vector<9x7x1xi1>
          %286 = math.floor %cst_2 : f32
          %287 = math.round %1 : tensor<7x1x9xf32>
          %288 = math.atan2 %12, %2 : tensor<9x7x1xf32>
          %289 = vector.create_mask %95, %90, %c3 : vector<9x7x1xi1>
          %290 = vector.extract %128[2] : vector<7x1xf32>
          %291 = vector.splat %c8 : vector<7x1x9xindex>
          %292 = affine.min affine_map<(d0, d1) -> ((((d1 + 64) ceildiv 16) floordiv 4) * 8, (((d1 + 64) ceildiv 16) floordiv 4) * 8, d1, d1 + 80)>(%121, %99)
          %293 = arith.shrsi %c2023546911_i32, %c2023546911_i32 : i32
          %294 = tensor.empty() : tensor<7x1x9xi16>
          %cst_58 = arith.constant 1.000000e+00 : f32
          %cst_59 = arith.constant 0.000000e+00 : f32
          %295 = vector.transfer_read %2[%c15, %95, %c13], %cst_59 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<9x7x1xf32>, vector<1x9xf32>
          %296 = vector.create_mask %c6, %23 : vector<7x1xi1>
          %297 = math.expm1 %cst_4 : f16
          %298 = memref.load %alloc_20[%c1, %c0, %c0] : memref<9x7x1xi32>
          %splat_60 = tensor.splat %cst_58 : tensor<7x1x9xf32>
          %299 = math.ctpop %c971899678_i32 : i32
          %rank_61 = tensor.rank %11 : tensor<7x1xi16>
          %300 = arith.subi %c-27608_i16, %c-27608_i16 : i16
          %301 = arith.cmpi sle, %in, %false : i1
          bufferization.dealloc_tensor %20 : tensor<f32>
          %302 = arith.cmpi sgt, %c971899678_i32, %c971899678_i32 : i32
          %alloca_62 = memref.alloca() : memref<7x1xi1>
          %303 = vector.extract_strided_slice %37 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %true_63 = arith.constant true
          linalg.yield %true_63 : i1
        }
      %271 = arith.remui %c61268768_i64, %c61268768_i64 : i64
      %272 = vector.transpose %119, [] : vector<f32> to vector<f32>
      %273 = math.log %10 : tensor<1x9x7xf16>
      %274 = arith.divsi %true, %true : i1
      %alloc_56 = memref.alloc() : memref<9x7x1xi16>
      scf.yield %c1303960709_i32 : i32
    }
    %134 = affine.load %alloc_10[%c2, %c4] : memref<7x1xi32>
    %135 = index.add %c14, %96
    %136 = vector.broadcast %c5 : index to vector<1xindex>
    vector.scatter %alloc_7[%c0, %c0, %c7] [%136], %38, %38 : memref<7x1x9xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %137 = arith.shrui %c-27608_i16, %c14584_i16 : i16
    %138 = arith.minf %cst_0, %cst_1 : f32
    %139 = memref.load %alloc_21[%c4] : memref<7xf32>
    %140 = arith.shli %134, %c1944593197_i32 : i32
    %alloc_34 = memref.alloc() : memref<7x1xi64>
    %141 = math.floor %cst_1 : f32
    %142 = tensor.empty() : tensor<9x7x1xi1>
    %mapped_35 = linalg.map ins(%alloc_16, %alloc_16, %5 : memref<9x7x1xi1>, memref<9x7x1xi1>, tensor<9x7x1xi1>) outs(%142 : tensor<9x7x1xi1>)
      (%in: i1, %in_54: i1, %in_55: i1) {
        %collapsed_56 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
        %261 = vector.create_mask %89, %c12 : vector<7x1xi1>
        %262 = arith.ceildivsi %c971899678_i32, %c1303960709_i32 : i32
        %collapsed_57 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<9x7x1xf32> into tensor<63x1xf32>
        %263 = index.mul %c7, %90
        %264 = vector.reduction <xor>, %19 : vector<7xi32> into i32
        %265 = arith.andi %c2023546911_i32, %c342458842_i32 : i32
        memref.store %false, %alloc_11[%c0, %c8, %c1] : memref<1x9x7xi1>
        %266 = arith.shli %c1077083642_i32, %c1102296611_i32 : i32
        affine.store %cst_1, %alloc_6[%c9, %c11, %c1] : memref<1x9x7xf32>
        %267 = math.ctpop %collapsed : tensor<63x1xi64>
        %268 = math.log2 %cst_4 : f16
        %269 = arith.ceildivsi %c-27608_i16, %c14584_i16 : i16
        %270 = math.absi %c1102296611_i32 : i32
        %271 = arith.muli %c971899678_i32, %c342458842_i32 : i32
        %272 = index.mul %c4, %99
        %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, (d0 ceildiv 8) floordiv 8 - 8, (d0 ceildiv 8) * 2, (d0 ceildiv 8) * 2)>(%c14, %67, %123, %c11)
        %274 = arith.subi %false, %in_55 : i1
        %collapsed_58 = tensor.collapse_shape %70 [[0, 1]] : tensor<7x1xi32> into tensor<7xi32>
        %275 = bufferization.to_tensor %alloc_18 : memref<9x7x1xi16>
        %276 = arith.xori %c1303960709_i32, %c971899678_i32 : i32
        %277 = arith.minui %true, %in_55 : i1
        %278 = math.cttz %4 : tensor<1x9x7xi32>
        %279 = vector.transpose %38, [0] : vector<1xi1> to vector<1xi1>
        %280 = tensor.empty() : tensor<7x1x9xf32>
        %281 = math.cttz %c971899678_i32 : i32
        %282 = math.tanh %280 : tensor<7x1x9xf32>
        %283 = vector.broadcast %in_55 : i1 to vector<1x9x7xi1>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %122, %126, %19 : vector<7x1xi32>, vector<1xi32> into vector<7xi32>
        %285 = arith.remui %c-27608_i16, %c14584_i16 : i16
        %286 = tensor.empty(%135, %c3) : tensor<7x?x?xi1>
        %287 = tensor.empty() : tensor<7x1x9xi32>
        %mapped_59 = linalg.map ins(%alloc_5, %alloc_15 : memref<7x1x9xi32>, memref<7x1x9xi32>) outs(%287 : tensor<7x1x9xi32>)
          (%in_61: i32, %in_62: i32) {
            %288 = bufferization.clone %alloc_21 : memref<7xf32> to memref<7xf32>
            %289 = math.round %10 : tensor<1x9x7xf16>
            %290 = vector.broadcast %99 : index to vector<1xindex>
            vector.scatter %alloc_5[%c3, %c0, %c7] [%290], %38, %126 : memref<7x1x9xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
            %291 = index.divu %c3, %95
            %c1127071776_i64 = arith.constant 1127071776 : i64
            %292 = math.tan %7 : tensor<7x1x9xf16>
            %293 = index.sub %105, %c6
            %rank_63 = tensor.rank %splat : tensor<7x1xf32>
            %294 = math.absi %in_61 : i32
            %295 = math.ctpop %134 : i32
            %alloca_64 = memref.alloca() : memref<1x9x7xf16>
            %296 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
            %297 = arith.maxui %in, %true : i1
            memref.assume_alignment %62, 8 : memref<7x1x9xf16>
            %alloc_65 = memref.alloc() : memref<1x7xf32>
            %298 = tensor.empty() : tensor<7x7xf32>
            %299 = linalg.matmul ins(%13, %alloc_65 : tensor<7x1xf32>, memref<1x7xf32>) outs(%298 : tensor<7x7xf32>) -> tensor<7x7xf32>
            %300 = index.maxu %c11, %135
            %301 = vector.broadcast %c342458842_i32 : i32 to vector<7x1x9xi32>
            %302 = index.maxs %95, %95
            %303 = arith.ori %c61268768_i64, %c61268768_i64 : i64
            %304 = vector.shuffle %283, %283 [1] : vector<1x9x7xi1>, vector<1x9x7xi1>
            %305 = arith.addf %cst_2, %cst_2 : f32
            %splat_66 = tensor.splat %cst_2 : tensor<7x1xf32>
            %306 = index.divu %23, %23
            %307 = vector.matrix_multiply %19, %126 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<1xi32>) -> vector<7xi32>
            memref.assume_alignment %alloc_12, 4 : memref<9x7x1xi64>
            %308 = vector.extract %36[6] : vector<7x1xi16>
            %309 = math.log %20 : tensor<f32>
            %310 = math.floor %cst_4 : f16
            %311 = index.mul %c9, %273
            %312 = arith.remsi %true, %in_54 : i1
            %313 = index.add %293, %89
            %314 = vector.broadcast %cst_0 : f32 to vector<1x9x7xf32>
            %315 = vector.fma %314, %314, %314 : vector<1x9x7xf32>
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %false_60 = arith.constant false
        linalg.yield %false_60 : i1
      }
    %143 = vector.shuffle %132, %132 [1, 3, 5, 7, 9, 11, 12, 13, 16, 17] : vector<9x7x1xf32>, vector<9x7x1xf32>
    %144 = vector.broadcast %c61268768_i64 : i64 to vector<9xi64>
    %145 = vector.transfer_write %144, %collapsed[%99, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, tensor<63x1xi64>
    %146 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
    %147 = math.tan %cst_1 : f32
    %148 = bufferization.clone %alloc_6 : memref<1x9x7xf32> to memref<1x9x7xf32>
    %extracted = tensor.extract %113[%c2, %c0] : tensor<7x1xi32>
    %149 = arith.remui %134, %c1077083642_i32 : i32
    %150 = math.cttz %17 : tensor<7x1x9xi16>
    %151 = math.round %10 : tensor<1x9x7xf16>
    affine.store %true, %alloc_7[%c4, %c12, %c4] : memref<7x1x9xi1>
    %152 = math.log %10 : tensor<1x9x7xf16>
    %153 = math.floor %7 : tensor<7x1x9xf16>
    %154 = vector.shuffle %39, %37 [0] : vector<1xf16>, vector<1xf16>
    %155 = math.round %2 : tensor<9x7x1xf32>
    %156 = vector.multi_reduction <and>, %46, %122 [] : vector<7x1xi32> to vector<7x1xi32>
    %157 = arith.minui %extracted, %c342458842_i32 : i32
    %158 = math.log1p %cst_1 : f32
    %159 = math.atan %10 : tensor<1x9x7xf16>
    %160 = tensor.empty() : tensor<1x1xi16>
    %161 = tensor.empty() : tensor<7x1xi16>
    %162 = linalg.matmul ins(%9, %160 : tensor<7x1xi16>, tensor<1x1xi16>) outs(%161 : tensor<7x1xi16>) -> tensor<7x1xi16>
    %163 = index.divu %c9, %c14
    memref.assume_alignment %alloc_21, 2 : memref<7xf32>
    %164 = math.round %cst_1 : f32
    %165 = arith.minsi %false, %false : i1
    %166 = arith.shli %c-27608_i16, %c14584_i16 : i16
    %167 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %12 : tensor<9x7x1xf32>, tensor<9x7x1xf32>) outs(%2 : tensor<9x7x1xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %261 = vector.shuffle %119, %119 [0, 1] : vector<f32>, vector<f32>
      %262 = arith.addi %c2023546911_i32, %c1102296611_i32 : i32
      %263 = vector.broadcast %false : i1 to vector<9xi1>
      %264 = vector.maskedload %alloc_19[%c0, %c4, %c0], %263, %144 : memref<9x7x1xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %265 = arith.shrui %c971899678_i32, %c1077083642_i32 : i32
      %266 = math.log %cst_2 : f32
      %267 = arith.remf %in, %cst_1 : f32
      %268 = math.tan %splat : tensor<7x1xf32>
      %269 = vector.insertelement %false, %263[%25 : index] : vector<9xi1>
      %270 = vector.reduction <mul>, %37 : vector<1xf16> into f16
      %271 = vector.load %alloc_20[%c0, %c3, %c0] : memref<9x7x1xi32>, vector<7x1xi32>
      %272 = tensor.empty() : tensor<7xi16>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272 : tensor<7xi16>) outs(%8 : tensor<7x1x9xi16>) {
      ^bb0(%in_60: i16, %out_61: i16):
        %292 = arith.cmpf oeq, %cst_2, %cst_0 : f32
        %293 = memref.load %alloc_22[%c2] : memref<7xf32>
        %294 = math.absi %false : i1
        %295 = arith.floordivsi %false, %false : i1
        %296 = index.sizeof
        %alloc_62 = memref.alloc() : memref<9x7x1xf32>
        %297 = arith.minf %in, %cst_0 : f32
        %298 = index.add %c8, %c12
        %299 = index.sizeof
        %300 = index.maxu %c11, %c1
        %301 = math.log2 %splat : tensor<7x1xf32>
        memref.tensor_store %9, %100 : memref<7x1xi16>
        %302 = vector.extract_strided_slice %129 {offsets = [3], sizes = [3], strides = [1]} : vector<7x1xf32> to vector<3x1xf32>
        %extracted_63 = tensor.extract %8[%c3, %c0, %c6] : tensor<7x1x9xi16>
        %303 = arith.remui %c1077083642_i32, %c1102296611_i32 : i32
        %304 = math.cttz %11 : tensor<7x1xi16>
        %305 = vector.matrix_multiply %39, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %306 = math.powf %18, %reduced : tensor<9x7xf32>
        %307 = vector.multi_reduction <minui>, %122, %19 [1] : vector<7x1xi32> to vector<7xi32>
        %collapsed_64 = tensor.collapse_shape %9 [[0, 1]] : tensor<7x1xi16> into tensor<7xi16>
        %308 = math.round %reduced : tensor<9x7xf32>
        %309 = math.floor %10 : tensor<1x9x7xf16>
        %alloc_65 = memref.alloc() : memref<7x1xi32>
        memref.copy %alloc_10, %alloc_65 : memref<7x1xi32> to memref<7x1xi32>
        %310 = memref.load %alloc_11[%c0, %c3, %c3] : memref<1x9x7xi1>
        memref.assume_alignment %62, 4 : memref<7x1x9xf16>
        %311 = arith.xori %134, %extracted : i32
        %312 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        %313 = vector.insertelement %cst_4, %39[%c13 : index] : vector<1xf16>
        %314 = vector.matrix_multiply %38, %38 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %315 = vector.load %alloc_5[%c5, %c0, %c6] : memref<7x1x9xi32>, vector<1x9x7xi32>
        %316 = index.casts %c1102296611_i32 : i32 to index
        %317 = math.cos %10 : tensor<1x9x7xf16>
        linalg.yield %extracted_63 : i16
      } -> tensor<7x1x9xi16>
      %274 = vector.reduction <or>, %264 : vector<9xi64> into i64
      %275 = vector.reduction <maxsi>, %144 : vector<9xi64> into i64
      %276 = arith.divf %cst_0, %in_54 : f32
      %277 = vector.broadcast %out : f32 to vector<f32>
      vector.transfer_write %277, %alloc_22[%c4] : vector<f32>, memref<7xf32>
      bufferization.dealloc_tensor %splat : tensor<7x1xf32>
      memref.store %cst_3, %alloc[%c1, %c0, %c0] : memref<9x7x1xf16>
      %278 = index.ceildivs %163, %92
      %279 = index.sub %c13, %25
      %280 = vector.transpose %37, [0] : vector<1xf16> to vector<1xf16>
      %281 = arith.remui %c1303960709_i32, %c971899678_i32 : i32
      memref.assume_alignment %alloc, 16 : memref<9x7x1xf16>
      %dest_55, %accumulated_value_56 = vector.scan <minui>, %271, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<7x1xi32>, vector<7xi32>
      %282 = arith.shrsi %c61268768_i64, %c61268768_i64 : i64
      %283 = arith.cmpf ule, %cst_4, %cst_3 : f16
      %284 = math.log %10 : tensor<1x9x7xf16>
      %285 = arith.minui %134, %c1077083642_i32 : i32
      %286 = vector.insertelement %c61268768_i64, %264[%279 : index] : vector<9xi64>
      %287 = vector.matrix_multiply %126, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi32>, vector<7xi32>) -> vector<7xi32>
      %alloc_57 = memref.alloc() : memref<1xf32>
      %alloc_58 = memref.alloc() : memref<1x7xf32>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_58, %alloc_58 : memref<1xf32>, memref<1x7xf32>, memref<1x7xf32>) outs(%2 : tensor<9x7x1xf32>) {
      ^bb0(%in_60: f32, %in_61: f32, %in_62: f32, %out_63: f32):
        %292 = affine.max affine_map<(d0, d1) -> (d1 - (d1 + 8) - 8, d0, (d1 + 8) ceildiv 16, d1 - (d1 + 8) - 8)>(%123, %25)
        %c883961194_i64 = arith.constant 883961194 : i64
        memref.assume_alignment %100, 16 : memref<7x1xi16>
        %293 = vector.create_mask %c14, %67, %25 : vector<7x1x9xi1>
        %294 = bufferization.to_tensor %alloc_21 : memref<7xf32>
        %295 = math.absi %false : i1
        %296 = math.log2 %1 : tensor<7x1x9xf32>
        %297 = vector.multi_reduction <minf>, %39, %37 [] : vector<1xf16> to vector<1xf16>
        %298 = math.log %1 : tensor<7x1x9xf32>
        %299 = vector.broadcast %true : i1 to vector<1x7xi1>
        %300 = vector.transfer_write %299, %3[%c1, %81, %95] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x7xi1>, tensor<7x1x9xi1>
        %301 = bufferization.clone %alloc_8 : memref<1x9x7xi64> to memref<1x9x7xi64>
        %302 = index.casts %99 : index to i32
        %303 = index.mul %99, %32
        %304 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        %305 = index.ceildivu %c5, %c1
        %306 = vector.matrix_multiply %264, %264 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %307 = math.tan %2 : tensor<9x7x1xf32>
        %308 = arith.minsi %c61268768_i64, %c61268768_i64 : i64
        %309 = tensor.empty(%104, %c13) : tensor<?x?xf16>
        %310 = math.absi %11 : tensor<7x1xi16>
        %311 = arith.minui %c971899678_i32, %c2023546911_i32 : i32
        %312 = arith.divf %cst_3, %cst_4 : f16
        %313 = arith.minsi %134, %c1077083642_i32 : i32
        %alloca_64 = memref.alloca() : memref<1x9x7xi32>
        %314 = memref.load %alloc_21[%c6] : memref<7xf32>
        %315 = vector.broadcast %true : i1 to vector<7x1xi1>
        %316 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %263, %293, %315 : vector<9xi1>, vector<7x1x9xi1> into vector<7x1xi1>
        %rank_65 = tensor.rank %4 : tensor<1x9x7xi32>
        %317 = index.maxu %305, %23
        %318 = math.log2 %out : f32
        %319 = arith.maxui %false, %false : i1
        %320 = index.maxu %292, %99
        %321 = index.divu %57, %c2
        linalg.yield %in_62 : f32
      } -> tensor<9x7x1xf32>
      %289 = bufferization.to_tensor %alloc_9 : memref<7x1x9xi32>
      %alloc_59 = memref.alloc() : memref<1x1xi16>
      %290 = tensor.empty() : tensor<7x1xi16>
      %291 = linalg.matmul ins(%9, %alloc_59 : tensor<7x1xi16>, memref<1x1xi16>) outs(%290 : tensor<7x1xi16>) -> tensor<7x1xi16>
      linalg.yield %cst_2 : f32
    } -> tensor<9x7x1xf32>
    %168 = arith.addf %cst, %cst_0 : f32
    %generated_36 = tensor.generate %23 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %261 = index.mul %81, %arg1
      %262 = index.casts %true : i1 to index
      %263 = index.maxs %123, %163
      %264 = vector.transpose %39, [0] : vector<1xf16> to vector<1xf16>
      tensor.yield %true : i1
    } : tensor<?x7x1xi1>
    %169 = affine.load %alloc_8[%c15, %c10, %c0] : memref<1x9x7xi64>
    %170 = math.log2 %7 : tensor<7x1x9xf16>
    %171 = vector.multi_reduction <minui>, %46, %126 [0] : vector<7x1xi32> to vector<1xi32>
    %172 = vector.multi_reduction <add>, %37, %cst_3 [0] : vector<1xf16> to f16
    %173 = scf.execute_region -> vector<7x1x9xi1> {
      %261 = arith.muli %c14584_i16, %c14584_i16 : i16
      memref.alloca_scope  {
        %274 = index.floordivs %90, %121
        bufferization.dealloc_tensor %42 : tensor<7x1x9xi32>
        %275 = vector.extract_strided_slice %36 {offsets = [1], sizes = [6], strides = [1]} : vector<7x1xi16> to vector<6x1xi16>
        %276 = bufferization.to_tensor %alloc : memref<9x7x1xf16>
        %277 = arith.negf %cst_3 : f16
        %278 = arith.maxui %false, %false : i1
        %279 = index.sizeof
        memref.assume_alignment %alloc_13, 2 : memref<1x9x7xi32>
        %280 = arith.remui %c-27608_i16, %c-27608_i16 : i16
        %281 = vector.reduction <add>, %59 : vector<9xi16> into i16
        %282 = memref.atomic_rmw maxs %c342458842_i32, %alloc_5[%c0, %c0, %c0] : (i32, memref<7x1x9xi32>) -> i32
        %283 = arith.divui %169, %c61268768_i64 : i64
        %284 = vector.broadcast %169 : i64 to vector<1x9x7xi64>
        %285 = vector.broadcast %false : i1 to vector<1x9x7xi1>
        %286 = vector.broadcast %extracted : i32 to vector<1x9x7xi32>
        %287 = vector.gather %alloc_8[%c0, %c7, %c12] [%286], %285, %284 : memref<1x9x7xi64>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xi64> into vector<1x9x7xi64>
        %288 = affine.max affine_map<(d0, d1, d2) -> (-(d2 - d1))>(%105, %23, %104)
        bufferization.dealloc_tensor %generated : tensor<?x?x?xi32>
        %289 = vector.broadcast %true : i1 to vector<9x7x1xi1>
        %290 = vector.broadcast %extracted : i32 to vector<9x7x1xi32>
        %291 = vector.gather %alloc_7[%c3, %96, %c15] [%290], %289, %289 : memref<7x1x9xi1>, vector<9x7x1xi32>, vector<9x7x1xi1>, vector<9x7x1xi1> into vector<9x7x1xi1>
        %292 = memref.realloc %alloc_22 : memref<7xf32> to memref<9xf32>
        %293 = memref.atomic_rmw assign %c-27608_i16, %100[%c4, %c0] : (i16, memref<7x1xi16>) -> i16
        memref.tensor_store %0, %alloc_19 : memref<9x7x1xi64>
        %294 = vector.create_mask %57, %c10, %c2 : vector<1x9x7xi1>
        %295 = vector.maskedload %62[%c5, %c0, %c8], %38, %39 : memref<7x1x9xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %296 = math.fpowi %cst_2, %c2023546911_i32 : f32, i32
        %297 = math.atan %cst_0 : f32
        %298 = index.maxs %104, %96
        %299 = arith.minf %cst_3, %172 : f16
        %300 = index.ceildivu %25, %104
        %301 = arith.subi %false, %true : i1
        %302 = math.tan %cst_2 : f32
        %303 = math.fma %7, %7, %7 : tensor<7x1x9xf16>
        %304 = vector.broadcast %30 : index to vector<1xindex>
        vector.scatter %alloc[%c8, %c3, %c0] [%304], %38, %39 : memref<9x7x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %305 = index.floordivs %c1, %121
        %306 = bufferization.to_tensor %alloc_15 : memref<7x1x9xi32>
      }
      %262 = vector.broadcast %cst_2 : f32 to vector<9x7xf32>
      %dest_54, %accumulated_value_55 = vector.scan <add>, %131, %262 {inclusive = false, reduction_dim = 2 : i64} : vector<9x7x1xf32>, vector<9x7xf32>
      %263 = vector.extract_strided_slice %59 {offsets = [3], sizes = [6], strides = [1]} : vector<9xi16> to vector<6xi16>
      %264 = math.log2 %7 : tensor<7x1x9xf16>
      %265 = vector.multi_reduction <add>, %129, %cst_1 [0, 1] : vector<7x1xf32> to f32
      %266 = index.maxs %c6, %c15
      scf.if %true {
        %alloc_58 = memref.alloc() : memref<7x1x9xi64>
        %274 = arith.minf %172, %cst_4 : f16
        %275 = vector.broadcast %cst_1 : f32 to vector<7x1xf32>
        %276 = vector.fma %275, %275, %129 : vector<7x1xf32>
        %277 = arith.shli %c1077083642_i32, %extracted : i32
        %278 = vector.flat_transpose %59 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %279 = math.ctpop %5 : tensor<9x7x1xi1>
        %alloc_59 = memref.alloc() : memref<1x9x7xi1>
        %280 = math.expm1 %cst_3 : f16
      } else {
        %extracted_58 = tensor.extract %12[%c2, %c3, %c0] : tensor<9x7x1xf32>
        %274 = vector.extract %131[5] : vector<9x7x1xf32>
        %275 = index.casts %89 : index to i32
        %alloca_59 = memref.alloca() : memref<9x7x1xi16>
        %276 = arith.remui %134, %c1303960709_i32 : i32
        %277 = arith.remsi %c1303960709_i32, %c2023546911_i32 : i32
        %278 = bufferization.clone %148 : memref<1x9x7xf32> to memref<1x9x7xf32>
        %279 = vector.multi_reduction <mul>, %274, %129 [] : vector<7x1xf32> to vector<7x1xf32>
      }
      %267 = tensor.empty() : tensor<9x7x1xf16>
      %mapped_56 = linalg.map ins(%alloc, %alloc, %alloc : memref<9x7x1xf16>, memref<9x7x1xf16>, memref<9x7x1xf16>) outs(%267 : tensor<9x7x1xf16>)
        (%in: f16, %in_58: f16, %in_59: f16) {
          %274 = arith.ceildivsi %c2023546911_i32, %c1077083642_i32 : i32
          %275 = arith.muli %c1944593197_i32, %c2023546911_i32 : i32
          %276 = vector.broadcast %c14584_i16 : i16 to vector<1xi16>
          %277 = vector.maskedload %alloc_18[%c0, %c2, %c0], %38, %276 : memref<9x7x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %278 = arith.addf %cst_3, %in_58 : f16
          %279 = math.expm1 %cst_2 : f32
          %280 = bufferization.to_memref %cast_30 : memref<?x?x?xi16>
          %281 = index.ceildivu %266, %c12
          %282 = index.ceildivu %266, %81
          %283 = math.log2 %18 : tensor<9x7xf32>
          %dest_60, %accumulated_value_61 = vector.scan <add>, %122, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<7x1xi32>, vector<7xi32>
          %284 = index.castu %c342458842_i32 : i32 to index
          %285 = index.casts %c-27608_i16 : i16 to index
          %286 = arith.minf %in_58, %172 : f16
          %287 = vector.broadcast %265 : f32 to vector<7x1x9xf32>
          %288 = vector.fma %287, %287, %287 : vector<7x1x9xf32>
          %289 = index.casts %134 : i32 to index
          %290 = vector.matrix_multiply %38, %38 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %291 = vector.broadcast %false : i1 to vector<9xi1>
          %292 = vector.maskedload %alloc_18[%c5, %c0, %c0], %291, %59 : memref<9x7x1xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
          %alloc_62 = memref.alloc() : memref<9x7x1xi1>
          memref.copy %alloc_16, %alloc_62 : memref<9x7x1xi1> to memref<9x7x1xi1>
          %293 = arith.remui %169, %c61268768_i64 : i64
          %294 = index.sizeof
          %295 = vector.broadcast %false : i1 to vector<i1>
          vector.transfer_write %295, %alloc_11[%294, %121, %c2] : vector<i1>, memref<1x9x7xi1>
          %296 = math.log %10 : tensor<1x9x7xf16>
          %297 = arith.ceildivsi %c1303960709_i32, %134 : i32
          %298 = math.exp %cst_2 : f32
          %extracted_63 = tensor.extract %7[%c0, %c0, %c4] : tensor<7x1x9xf16>
          %299 = tensor.empty(%281) : tensor<?x1xf32>
          %300 = arith.divsi %c-27608_i16, %c-27608_i16 : i16
          %301 = index.maxs %163, %c5
          %302 = vector.broadcast %false : i1 to vector<7x1xi1>
          %303 = vector.gather %alloc_17[%c9, %c10, %30] [%122], %302, %36 : memref<1x9x7xi16>, vector<7x1xi32>, vector<7x1xi1>, vector<7x1xi16> into vector<7x1xi16>
          %304 = arith.minsi %c1303960709_i32, %c342458842_i32 : i32
          %305 = math.ipowi %8, %8 : tensor<7x1x9xi16>
          %306 = vector.transpose %19, [0] : vector<7xi32> to vector<7xi32>
          %cst_64 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_64 : f16
        }
      %268 = math.log %2 : tensor<9x7x1xf32>
      bufferization.dealloc_tensor %14 : tensor<1x9x7xi1>
      %269 = scf.while (%arg0 = %38) : (vector<1xi1>) -> vector<1xi1> {
        %274 = vector.multi_reduction <maxsi>, %144, %144 [] : vector<9xi64> to vector<9xi64>
        %275 = math.tan %splat : tensor<7x1xf32>
        %276 = affine.load %alloc_20[%c1, %c11, %c5] : memref<9x7x1xi32>
        %collapsed_58 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x1xi16> into tensor<7xi16>
        %277 = index.divu %c6, %123
        %278 = math.round %7 : tensor<7x1x9xf16>
        %279 = math.tanh %13 : tensor<7x1xf32>
        %280 = arith.minf %cst_4, %172 : f16
        scf.condition(%false) %38 : vector<1xi1>
      } do {
      ^bb0(%arg0: vector<1xi1>):
        %274 = vector.load %alloc_12[%c4, %c0, %c0] : memref<9x7x1xi64>, vector<1x9x7xi64>
        %cast_58 = tensor.cast %10 : tensor<1x9x7xf16> to tensor<?x?x?xf16>
        %275 = index.ceildivs %c13, %c11
        %276 = memref.atomic_rmw andi %c-27608_i16, %alloc_17[%c0, %c4, %c0] : (i16, memref<1x9x7xi16>) -> i16
        %277 = arith.remsi %c1102296611_i32, %c1303960709_i32 : i32
        %278 = arith.muli %134, %c971899678_i32 : i32
        %279 = vector.reduction <add>, %263 : vector<6xi16> into i16
        %280 = math.exp %172 : f16
        %281 = bufferization.to_memref %4 : memref<1x9x7xi32>
        %282 = arith.remui %c342458842_i32, %c2023546911_i32 : i32
        %283 = index.ceildivu %67, %266
        %collapsed_59 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
        %284 = math.exp %12 : tensor<9x7x1xf32>
        %285 = arith.remsi %false, %false : i1
        %286 = arith.xori %c61268768_i64, %169 : i64
        %287 = vector.insert %169, %144 [0] : i64 into vector<9xi64>
        scf.yield %38 : vector<1xi1>
      }
      %270 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 2)>(%c3, %81, %c5)
      %splat_57 = tensor.splat %cst : tensor<1x9x7xf32>
      %271 = memref.atomic_rmw muli %c61268768_i64, %alloc_12[%c4, %c1, %c0] : (i64, memref<9x7x1xi64>) -> i64
      %272 = vector.splat %81 : vector<9x7x1xindex>
      %273 = vector.broadcast %true : i1 to vector<7x1x9xi1>
      scf.yield %273 : vector<7x1x9xi1>
    }
    %174 = arith.divsi %false, %false : i1
    %alloc_37 = memref.alloc() : memref<7x1x9xf32>
    %175 = math.log2 %10 : tensor<1x9x7xf16>
    %176 = bufferization.to_tensor %alloc_11 : memref<1x9x7xi1>
    %177 = vector.extract %128[5] : vector<7x1xf32>
    %178 = index.ceildivu %57, %c1
    %179 = index.maxs %99, %30
    %180 = vector.transpose %177, [0] : vector<1xf32> to vector<1xf32>
    %181 = scf.while (%arg0 = %cst_4) : (f16) -> f16 {
      %generated_54 = tensor.generate %c13, %c7 {
      ^bb0(%arg1: index, %arg2: index):
        %269 = vector.broadcast %cst_0 : f32 to vector<9x7xf32>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %132, %177, %269 : vector<9x7x1xf32>, vector<1xf32> into vector<9x7xf32>
        %271 = math.cttz %5 : tensor<9x7x1xi1>
        %cast_56 = tensor.cast %13 : tensor<7x1xf32> to tensor<?x?xf32>
        %272 = math.log2 %reduced : tensor<9x7xf32>
        tensor.yield %c14584_i16 : i16
      } : tensor<?x?xi16>
      %261 = math.round %cst : f32
      %262 = arith.ori %extracted, %134 : i32
      %263 = vector.reduction <mul>, %38 : vector<1xi1> into i1
      %264 = scf.if %true -> (i64) {
        %269 = vector.splat %c14 : vector<1x9x7xindex>
        %270 = vector.broadcast %cst_4 : f16 to vector<7xf16>
        %271 = vector.broadcast %false : i1 to vector<7xi1>
        %272 = vector.maskedload %62[%c3, %c0, %c1], %271, %270 : memref<7x1x9xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %273 = vector.matrix_multiply %37, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %274 = arith.remui %169, %c61268768_i64 : i64
        %275 = vector.extract_strided_slice %131 {offsets = [2], sizes = [4], strides = [1]} : vector<9x7x1xf32> to vector<4x7x1xf32>
        %276 = vector.create_mask %67, %c5, %104 : vector<9x7x1xi1>
        %277 = memref.atomic_rmw maxf %cst, %alloc_22[%c2] : (f32, memref<7xf32>) -> f32
        %278 = index.floordivs %96, %c0
        scf.yield %169 : i64
      } else {
        %269 = arith.shrui %134, %c1102296611_i32 : i32
        %270 = arith.subi %c2023546911_i32, %c1303960709_i32 : i32
        %271 = vector.insertelement %134, %19[%135 : index] : vector<7xi32>
        %272 = arith.cmpf ult, %cst_2, %cst_1 : f32
        %273 = math.round %18 : tensor<9x7xf32>
        %274 = arith.cmpf ugt, %cst_2, %cst_1 : f32
        %275 = vector.load %alloc_20[%c7, %c5, %c0] : memref<9x7x1xi32>, vector<1x9x7xi32>
        %276 = arith.divsi %c2023546911_i32, %extracted : i32
        scf.yield %169 : i64
      }
      %265 = vector.insertelement %cst_1, %177[%c15 : index] : vector<1xf32>
      %266 = tensor.empty() : tensor<7x1xi32>
      %mapped_55 = linalg.map ins(%alloc_10, %alloc_10 : memref<7x1xi32>, memref<7x1xi32>) outs(%266 : tensor<7x1xi32>)
        (%in: i32, %in_56: i32) {
          %269 = vector.broadcast %cst_0 : f32 to vector<1x9xf32>
          %270 = vector.transfer_write %269, %2[%c3, %30, %104] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x9xf32>, tensor<9x7x1xf32>
          %271 = memref.load %alloc_8[%c0, %c6, %c4] : memref<1x9x7xi64>
          memref.store %c-27608_i16, %100[%c4, %c0] : memref<7x1xi16>
          %272 = tensor.empty() : tensor<7x1xi1>
          %273 = math.log %arg0 : f16
          %274 = math.copysign %2, %2 : tensor<9x7x1xf32>
          %275 = vector.broadcast %cst_1 : f32 to vector<7x1x7x1xf32>
          %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %132, %132, %275 : vector<9x7x1xf32>, vector<9x7x1xf32> into vector<7x1x7x1xf32>
          %277 = math.log %172 : f16
          %rank_57 = tensor.rank %cast : tensor<?x?xf32>
          %278 = bufferization.to_memref %3 : memref<7x1x9xi1>
          %279 = index.maxs %c8, %30
          %280 = arith.andi %c1944593197_i32, %c1077083642_i32 : i32
          %281 = bufferization.clone %alloc_16 : memref<9x7x1xi1> to memref<9x7x1xi1>
          %282 = vector.splat %c6 : vector<9x7x1xindex>
          %alloc_58 = memref.alloc() : memref<9x7xf32>
          memref.tensor_store %18, %alloc_58 : memref<9x7xf32>
          %283 = memref.atomic_rmw maxf %cst_3, %alloc_14[%c3, %c0, %c4] : (f16, memref<7x1x9xf16>) -> f16
          %284 = vector.broadcast %arg0 : f16 to vector<1x1xf16>
          %285 = vector.outerproduct %37, %37, %284 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
          %286 = affine.load %alloc_6[%c2, %c5, %c7] : memref<1x9x7xf32>
          %splat_59 = tensor.splat %c61268768_i64 : tensor<7x1xi64>
          %287 = math.absf %13 : tensor<7x1xf32>
          %288 = vector.broadcast %true : i1 to vector<7xi1>
          %289 = vector.maskedload %alloc_7[%c5, %c0, %c8], %288, %288 : memref<7x1x9xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %290 = tensor.empty() : tensor<9x7x1xi32>
          %291 = tensor.empty(%81, %c11, %121) : tensor<?x?x?xi16>
          %292 = arith.cmpf false, %cst_0, %cst_0 : f32
          %293 = index.sizeof
          %294 = arith.shli %in_56, %c1077083642_i32 : i32
          %295 = vector.transpose %38, [0] : vector<1xi1> to vector<1xi1>
          %296 = index.casts %57 : index to i32
          %297 = index.divu %rank_57, %92
          %alloc_60 = memref.alloc() : memref<9x7x1xf32>
          memref.tensor_store %2, %alloc_60 : memref<9x7x1xf32>
          memref.assume_alignment %alloc_19, 2 : memref<9x7x1xi64>
          %298 = arith.cmpi ugt, %169, %264 : i64
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %267 = vector.broadcast %arg0 : f16 to vector<1x1xf16>
      %268 = vector.outerproduct %39, %39, %267 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      scf.condition(%true) %cst_3 : f16
    } do {
    ^bb0(%arg0: f16):
      %true_54 = index.bool.constant true
      memref.assume_alignment %alloc_22, 2 : memref<7xf32>
      %261 = arith.floordivsi %c1303960709_i32, %c2023546911_i32 : i32
      %262 = math.copysign %cst_1, %cst_1 : f32
      %263 = vector.transpose %37, [0] : vector<1xf16> to vector<1xf16>
      %264 = index.add %178, %135
      %265 = tensor.empty() : tensor<7x1xi16>
      %mapped_55 = linalg.map ins(%11, %161 : tensor<7x1xi16>, tensor<7x1xi16>) outs(%265 : tensor<7x1xi16>)
        (%in: i16, %in_57: i16) {
          %274 = arith.minf %cst_2, %cst_2 : f32
          %275 = math.fpowi %cst, %c1944593197_i32 : f32, i32
          %inserted = tensor.insert %c1944593197_i32 into %42[%c0, %c0, %c6] : tensor<7x1x9xi32>
          %276 = arith.cmpf une, %cst_0, %cst_2 : f32
          %277 = math.exp %reduced : tensor<9x7xf32>
          %278 = vector.broadcast %c15 : index to vector<9xindex>
          %279 = vector.broadcast %true_54 : i1 to vector<9xi1>
          vector.scatter %alloc_18[%c8, %c6, %c0] [%278], %279, %59 : memref<9x7x1xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
          %rank_58 = tensor.rank %4 : tensor<1x9x7xi32>
          %280 = vector.reduction <or>, %126 : vector<1xi32> into i32
          %281 = arith.cmpi sge, %extracted, %c342458842_i32 : i32
          %282 = index.maxs %135, %32
          %283 = index.divu %c8, %c8
          %284 = index.divu %30, %c7
          %285 = math.tan %18 : tensor<9x7xf32>
          %286 = vector.broadcast %in : i16 to vector<7xi16>
          %dest_59, %accumulated_value_60 = vector.scan <or>, %36, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<7x1xi16>, vector<7xi16>
          %287 = index.maxu %264, %67
          %rank_61 = tensor.rank %16 : tensor<7x1x9xi16>
          %288 = vector.broadcast %c14584_i16 : i16 to vector<9x7x1xi16>
          %289 = vector.broadcast %true : i1 to vector<9x7x1xi1>
          %290 = vector.broadcast %c1303960709_i32 : i32 to vector<9x7x1xi32>
          %291 = vector.gather %100[%c0, %c14] [%290], %289, %288 : memref<7x1xi16>, vector<9x7x1xi32>, vector<9x7x1xi1>, vector<9x7x1xi16> into vector<9x7x1xi16>
          %292 = arith.addf %cst, %cst_1 : f32
          %293 = math.cttz %c1944593197_i32 : i32
          %294 = math.exp %12 : tensor<9x7x1xf32>
          %295 = arith.shrsi %c342458842_i32, %c1944593197_i32 : i32
          %296 = math.absf %18 : tensor<9x7xf32>
          %extracted_62 = tensor.extract %12[%c6, %c0, %c0] : tensor<9x7x1xf32>
          %alloc_63 = memref.alloc() : memref<7x1xf16>
          %297 = vector.broadcast %172 : f16 to vector<7x1xf16>
          %298 = vector.broadcast %true_54 : i1 to vector<7x1xi1>
          %299 = vector.gather %alloc_63[%282, %99] [%122], %298, %297 : memref<7x1xf16>, vector<7x1xi32>, vector<7x1xi1>, vector<7x1xf16> into vector<7x1xf16>
          %300 = arith.minui %c2023546911_i32, %extracted : i32
          %301 = arith.ceildivsi %true, %true : i1
          %302 = memref.atomic_rmw addf %arg0, %alloc_14[%c1, %c0, %c3] : (f16, memref<7x1x9xf16>) -> f16
          %303 = arith.muli %c2023546911_i32, %c971899678_i32 : i32
          %304 = tensor.empty() : tensor<9x7xi32>
          %305 = math.fpowi %18, %304 : tensor<9x7xf32>, tensor<9x7xi32>
          bufferization.dealloc_tensor %6 : tensor<1x9x7xi1>
          %306 = arith.shrui %c2023546911_i32, %c1944593197_i32 : i32
          %307 = arith.divf %cst_2, %cst_1 : f32
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %266 = vector.transpose %132, [0, 2, 1] : vector<9x7x1xf32> to vector<9x1x7xf32>
      %true_56 = index.bool.constant true
      %267 = vector.multi_reduction <maxf>, %128, %cst [0, 1] : vector<7x1xf32> to f32
      %268 = index.ceildivu %c1, %c14
      %269 = vector.broadcast %89 : index to vector<7xindex>
      %270 = vector.broadcast %true_56 : i1 to vector<7xi1>
      vector.scatter %alloc_10[%c1, %c0] [%269], %270, %19 : memref<7x1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
      %271 = arith.cmpf oge, %arg0, %cst_3 : f16
      %272 = arith.addf %267, %cst_0 : f32
      memref.assume_alignment %alloc_13, 2 : memref<1x9x7xi32>
      %273 = vector.matrix_multiply %126, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi32>, vector<7xi32>) -> vector<7xi32>
      scf.yield %arg0 : f16
    }
    %generated_38 = tensor.generate %67, %c2 {
    ^bb0(%arg0: index, %arg1: index):
      %261 = arith.remui %c342458842_i32, %c1303960709_i32 : i32
      %262 = vector.broadcast %cst_4 : f16 to vector<9xf16>
      %263 = vector.broadcast %false : i1 to vector<9xi1>
      %264 = vector.maskedload %62[%c0, %c0, %c3], %263, %262 : memref<7x1x9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %265 = vector.matrix_multiply %38, %38 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %266 = arith.remui %false, %false : i1
      tensor.yield %true : i1
    } : tensor<?x?xi1>
    %182 = arith.remui %c-27608_i16, %c14584_i16 : i16
    %183 = arith.addf %172, %cst_3 : f16
    %184 = math.tanh %10 : tensor<1x9x7xf16>
    %185 = tensor.empty() : tensor<7x9xi32>
    %alloc_39 = memref.alloc() : memref<1xi32>
    %186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%185, %4, %alloc_39 : tensor<7x9xi32>, tensor<1x9x7xi32>, memref<1xi32>) outs(%4 : tensor<1x9x7xi32>) {
    ^bb0(%in: i32, %in_54: i32, %in_55: i32, %out: i32):
      %261 = index.floordivs %81, %c0
      %262 = tensor.empty() : tensor<7x1xf16>
      %263 = vector.create_mask %23, %178 : vector<7x1xi1>
      %264 = arith.remui %out, %134 : i32
      %265 = vector.broadcast %cst : f32 to vector<9x7xf32>
      %dest_56, %accumulated_value_57 = vector.scan <minf>, %131, %265 {inclusive = true, reduction_dim = 2 : i64} : vector<9x7x1xf32>, vector<9x7xf32>
      %266 = math.ctpop %42 : tensor<7x1x9xi32>
      %cst_58 = arith.constant 1.554390e+09 : f32
      %267 = tensor.empty() : tensor<7xf32>
      %mapped_59 = linalg.map ins(%alloc_21, %alloc_21 : memref<7xf32>, memref<7xf32>) outs(%267 : tensor<7xf32>)
        (%in_62: f32, %in_63: f32) {
          memref.tensor_store %142, %alloc_16 : memref<9x7x1xi1>
          %291 = vector.multi_reduction <minsi>, %19, %c1077083642_i32 [0] : vector<7xi32> to i32
          %rank_64 = tensor.rank %13 : tensor<7x1xf32>
          %292 = bufferization.to_tensor %alloc_7 : memref<7x1x9xi1>
          %293 = arith.remf %in_62, %cst_1 : f32
          %294 = bufferization.to_tensor %alloc_18 : memref<9x7x1xi16>
          %295 = arith.muli %291, %in : i32
          %296 = arith.muli %in_55, %c2023546911_i32 : i32
          %297 = arith.floordivsi %c1944593197_i32, %c1944593197_i32 : i32
          %298 = arith.subi %c14584_i16, %c14584_i16 : i16
          %299 = index.add %95, %67
          %300 = index.ceildivu %c10, %179
          %301 = arith.andi %c971899678_i32, %134 : i32
          %302 = index.maxu %c10, %c3
          %303 = index.mul %123, %81
          %304 = math.log2 %cst_0 : f32
          %rank_65 = tensor.rank %0 : tensor<9x7x1xi64>
          %305 = arith.divf %cst_4, %cst_4 : f16
          %306 = vector.broadcast %cst_4 : f16 to vector<1x1xf16>
          %307 = vector.outerproduct %39, %37, %306 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
          %308 = vector.insertelement %c1303960709_i32, %19[%c11 : index] : vector<7xi32>
          %309 = index.casts %302 : index to i32
          %310 = math.ctpop %collapsed : tensor<63x1xi64>
          %cst_66 = arith.constant 4.876000e+03 : f16
          %311 = arith.maxui %c1944593197_i32, %c1102296611_i32 : i32
          %alloc_67 = memref.alloc() : memref<1x9xi16>
          %312 = tensor.empty() : tensor<7x9xi16>
          %313 = linalg.matmul ins(%9, %alloc_67 : tensor<7x1xi16>, memref<1x9xi16>) outs(%312 : tensor<7x9xi16>) -> tensor<7x9xi16>
          %314 = vector.broadcast %false : i1 to vector<9xi1>
          %315 = vector.maskedload %alloc_7[%c6, %c0, %c2], %314, %314 : memref<7x1x9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
          %316 = vector.broadcast %c1077083642_i32 : i32 to vector<9xi32>
          %317 = vector.maskedload %alloc_5[%c5, %c0, %c8], %314, %316 : memref<7x1x9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
          %extracted_68 = tensor.extract %292[%c3, %c0, %c0] : tensor<7x1x9xi1>
          %318 = arith.floordivsi %c971899678_i32, %in : i32
          %319 = bufferization.clone %62 : memref<7x1x9xf16> to memref<7x1x9xf16>
          %320 = arith.cmpf ult, %cst_2, %cst_2 : f32
          %321 = math.expm1 %cst_1 : f32
          %cst_69 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_69 : f32
        }
      %268 = arith.muli %134, %c1944593197_i32 : i32
      %269 = vector.shuffle %39, %37 [0] : vector<1xf16>, vector<1xf16>
      %270 = affine.if affine_set<(d0, d1) : ((-d1) floordiv 2 == 0, ((d0 + 2) mod 128) * 128 == 0)>(%c15, %c1) -> memref<7x1x9xf32> {
        %291 = arith.maxui %extracted, %in : i32
        %292 = arith.maxui %extracted, %c1303960709_i32 : i32
        %293 = math.expm1 %21 : tensor<f32>
        %294 = math.atan2 %172, %cst_3 : f16
        %295 = vector.insertelement %c61268768_i64, %144[%96 : index] : vector<9xi64>
        %296 = vector.shuffle %119, %119 [0, 1] : vector<f32>, vector<f32>
        %297 = math.tan %1 : tensor<7x1x9xf32>
        %298 = arith.remui %out, %extracted : i32
        %alloc_62 = memref.alloc() : memref<7x1x9xf32>
        affine.yield %alloc_62 : memref<7x1x9xf32>
      } else {
        %291 = vector.broadcast %false : i1 to vector<7xi1>
        %292 = vector.maskedload %alloc_15[%c1, %c0, %c6], %291, %19 : memref<7x1x9xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %293 = index.maxs %92, %121
        %294 = math.ctpop %out : i32
        %295 = index.ceildivs %c8, %81
        %296 = math.log1p %18 : tensor<9x7xf32>
        %297 = arith.subi %false, %true : i1
        %dest_62, %accumulated_value_63 = vector.scan <maxsi>, %46, %292 {inclusive = true, reduction_dim = 1 : i64} : vector<7x1xi32>, vector<7xi32>
        %298 = math.tanh %262 : tensor<7x1xf16>
        %alloc_64 = memref.alloc() : memref<7x1x9xf32>
        affine.yield %alloc_64 : memref<7x1x9xf32>
      }
      %271 = math.fpowi %172, %c1944593197_i32 : f16, i32
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, 0, (-(d2 - 16)) floordiv 128)>(%123, %c0, %25, %92)
      %273 = math.fpowi %13, %70 : tensor<7x1xf32>, tensor<7x1xi32>
      %alloca_60 = memref.alloca() : memref<1x9x7xi16>
      %274 = vector.load %alloc_22[%c5] : memref<7xf32>, vector<7x1xf32>
      %275 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %276 = vector.transfer_write %275, %1[%96, %c12, %178] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xf32>, tensor<7x1x9xf32>
      %277 = vector.multi_reduction <minf>, %39, %37 [] : vector<1xf16> to vector<1xf16>
      %278 = memref.atomic_rmw minf %172, %alloc_14[%c5, %c0, %c5] : (f16, memref<7x1x9xf16>) -> f16
      %279 = affine.min affine_map<(d0, d1) -> (d0)>(%c0, %c12)
      %280 = index.divu %123, %c8
      %281 = math.log %10 : tensor<1x9x7xf16>
      memref.tensor_store %11, %100 : memref<7x1xi16>
      %282 = vector.create_mask %95, %81, %121 : vector<1x9x7xi1>
      %283 = math.round %cst_1 : f32
      %cast_61 = tensor.cast %262 : tensor<7x1xf16> to tensor<?x?xf16>
      %284 = vector.broadcast %c15 : index to vector<1xindex>
      vector.scatter %alloc_15[%c6, %c0, %c7] [%284], %38, %126 : memref<7x1x9xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %285 = tensor.empty() : tensor<1xi1>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%285, %alloc_7 : tensor<1xi1>, memref<7x1x9xi1>) outs(%26 : tensor<9x7x1xi1>) {
      ^bb0(%in_62: i1, %in_63: i1, %out_64: i1):
        %291 = arith.xori %169, %c61268768_i64 : i64
        %292 = vector.extract_strided_slice %177 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %293 = math.round %13 : tensor<7x1xf32>
        bufferization.dealloc_tensor %12 : tensor<9x7x1xf32>
        %294 = arith.remui %c1102296611_i32, %out : i32
        %295 = index.maxs %179, %c11
        %296 = tensor.empty() : tensor<7x1x9xi64>
        %extracted_65 = tensor.extract %7[%c6, %c0, %c2] : tensor<7x1x9xf16>
        %297 = vector.broadcast %in_63 : i1 to vector<7xi1>
        %298 = vector.maskedload %alloc_20[%c8, %c0, %c0], %297, %19 : memref<9x7x1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %299 = arith.floordivsi %c61268768_i64, %169 : i64
        %alloc_66 = memref.alloc() : memref<7x1x9xi32>
        %300 = arith.maxui %c1077083642_i32, %c1944593197_i32 : i32
        %301 = bufferization.to_memref %13 : memref<7x1xf32>
        %302 = index.add %c10, %179
        %303 = math.log2 %2 : tensor<9x7x1xf32>
        %304 = vector.shuffle %263, %263 [2, 3, 4, 9, 10, 11, 12] : vector<7x1xi1>, vector<7x1xi1>
        %305 = vector.splat %302 : vector<7x1xindex>
        %306 = arith.minui %c342458842_i32, %c1077083642_i32 : i32
        %307 = math.round %extracted_65 : f16
        %308 = math.cos %cst_2 : f32
        %309 = memref.realloc %alloc_22 : memref<7xf32> to memref<9xf32>
        %cast_67 = tensor.cast %10 : tensor<1x9x7xf16> to tensor<?x?x?xf16>
        %310 = math.ctpop %113 : tensor<7x1xi32>
        %311 = arith.cmpi ne, %c-27608_i16, %c-27608_i16 : i16
        %312 = vector.broadcast %in_63 : i1 to vector<9xi1>
        %313 = vector.maskedload %alloc_7[%c4, %c0, %c2], %312, %312 : memref<7x1x9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %314 = vector.reduction <and>, %126 : vector<1xi32> into i32
        %315 = tensor.empty() : tensor<7x1xi32>
        %316 = bufferization.to_tensor %alloc_13 : memref<1x9x7xi32>
        %317 = tensor.empty(%89) : tensor<?x1x9xi1>
        %318 = affine.max affine_map<(d0, d1) -> ((d0 mod 16) * 16 - d1 * 8)>(%c13, %123)
        memref.assume_alignment %alloc_18, 1 : memref<9x7x1xi16>
        %319 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
        linalg.yield %false : i1
      } -> tensor<9x7x1xi1>
      %287 = arith.divsi %out, %c1077083642_i32 : i32
      %288 = math.round %cst : f32
      %289 = math.log %10 : tensor<1x9x7xf16>
      %290 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      linalg.yield %in_54 : i32
    } -> tensor<1x9x7xi32>
    bufferization.dealloc_tensor %176 : tensor<1x9x7xi1>
    %187 = arith.andi %c2023546911_i32, %c2023546911_i32 : i32
    %188 = vector.load %alloc_6[%c0, %c5, %c0] : memref<1x9x7xf32>, vector<7x1x9xf32>
    %189 = math.round %172 : f16
    %190 = index.ceildivu %c3, %178
    %191 = math.log2 %1 : tensor<7x1x9xf32>
    %192 = bufferization.clone %alloc_19 : memref<9x7x1xi64> to memref<9x7x1xi64>
    %193 = vector.flat_transpose %126 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %194 = vector.shuffle %37, %39 [1] : vector<1xf16>, vector<1xf16>
    %extracted_40 = tensor.extract %15[%c5, %c0, %c1] : tensor<7x1x9xi64>
    %195 = memref.realloc %alloc_22 : memref<7xf32> to memref<1xf32>
    %196 = arith.floordivsi %extracted, %c1102296611_i32 : i32
    %splat_41 = tensor.splat %c14584_i16 : tensor<1x9x7xi16>
    %197 = arith.floordivsi %c1303960709_i32, %c342458842_i32 : i32
    %198 = math.log %2 : tensor<9x7x1xf32>
    %199 = arith.cmpi ule, %c61268768_i64, %c61268768_i64 : i64
    %200 = vector.broadcast %cst_2 : f32 to vector<9x7x1xf32>
    %201 = vector.fma %200, %200, %131 : vector<9x7x1xf32>
    %202 = tensor.empty() : tensor<1x9x7xf32>
    %mapped_42 = linalg.map ins(%alloc_6, %alloc_6 : memref<1x9x7xf32>, memref<1x9x7xf32>) outs(%202 : tensor<1x9x7xf32>)
      (%in: f32, %in_54: f32) {
        %261 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %262 = vector.broadcast %c971899678_i32 : i32 to vector<7xi32>
        vector.transfer_write %262, %alloc_5[%178, %c12, %30] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi32>, memref<7x1x9xi32>
        %263 = arith.cmpi sle, %c1077083642_i32, %c1944593197_i32 : i32
        %264 = vector.reduction <minui>, %59 : vector<9xi16> into i16
        %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, (d3 floordiv 8) floordiv 128)>(%30, %121, %95, %105)
        %266 = math.tanh %7 : tensor<7x1x9xf16>
        %267 = arith.muli %c-27608_i16, %c-27608_i16 : i16
        %268 = index.add %25, %c0
        %269 = tensor.empty() : tensor<7x1x9xi1>
        %mapped_55 = linalg.map ins(%3, %3, %alloc_7 : tensor<7x1x9xi1>, tensor<7x1x9xi1>, memref<7x1x9xi1>) outs(%269 : tensor<7x1x9xi1>)
          (%in_61: i1, %in_62: i1, %in_63: i1) {
            %291 = vector.transpose %200, [2, 0, 1] : vector<9x7x1xf32> to vector<1x9x7xf32>
            %292 = vector.matrix_multiply %144, %144 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
            %293 = memref.realloc %alloc_22 : memref<7xf32> to memref<9xf32>
            memref.store %false, %alloc_7[%c1, %c0, %c2] : memref<7x1x9xi1>
            %294 = arith.divf %cst_0, %cst_1 : f32
            %295 = arith.muli %c342458842_i32, %c1944593197_i32 : i32
            %296 = math.round %10 : tensor<1x9x7xf16>
            %297 = vector.extract_strided_slice %128 {offsets = [3], sizes = [3], strides = [1]} : vector<7x1xf32> to vector<3x1xf32>
            %c-9599_i16 = arith.constant -9599 : i16
            %298 = index.add %96, %c10
            %alloca_64 = memref.alloca() : memref<1x9x7xi64>
            bufferization.dealloc_tensor %13 : tensor<7x1xf32>
            %299 = vector.matrix_multiply %177, %177 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
            memref.copy %alloc_19, %alloc_12 : memref<9x7x1xi64> to memref<9x7x1xi64>
            %300 = bufferization.to_memref %cast : memref<?x?xf32>
            %301 = math.absi %14 : tensor<1x9x7xi1>
            %collapsed_65 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<1x9x7xi32> into tensor<9x7xi32>
            %302 = index.maxs %c10, %32
            %303 = arith.ceildivsi %c1077083642_i32, %extracted : i32
            %304 = vector.matrix_multiply %177, %177 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
            %305 = math.absi %5 : tensor<9x7x1xi1>
            %306 = vector.splat %c4 : vector<9x7x1xindex>
            %307 = index.ceildivu %c1, %c13
            %308 = memref.load %100[%c1, %c0] : memref<7x1xi16>
            %309 = index.ceildivs %268, %104
            %310 = vector.extract_strided_slice %200 {offsets = [7], sizes = [1], strides = [1]} : vector<9x7x1xf32> to vector<1x7x1xf32>
            %311 = vector.multi_reduction <or>, %46, %262 [1] : vector<7x1xi32> to vector<7xi32>
            %312 = arith.addf %172, %cst_4 : f16
            %313 = vector.splat %c2023546911_i32 : vector<9x7x1xi32>
            %314 = math.exp %cst_2 : f32
            %315 = bufferization.to_tensor %alloc_21 : memref<7xf32>
            %316 = arith.minui %c14584_i16, %c14584_i16 : i16
            %true_66 = arith.constant true
            linalg.yield %true_66 : i1
          }
        %collapsed_56 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x1xi16> into tensor<7xi16>
        %270 = math.expm1 %cst_0 : f32
        %271 = index.maxs %c3, %c7
        %alloca_57 = memref.alloca() : memref<7x1x9xi32>
        %collapsed_58 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
        %272 = vector.transpose %37, [0] : vector<1xf16> to vector<1xf16>
        %273 = arith.xori %c971899678_i32, %134 : i32
        %274 = tensor.empty() : tensor<7x1x9xf16>
        %mapped_59 = linalg.map ins(%alloc_14 : memref<7x1x9xf16>) outs(%274 : tensor<7x1x9xf16>)
          (%in_61: f16) {
            %291 = bufferization.to_tensor %alloc_18 : memref<9x7x1xi16>
            %rank_62 = tensor.rank %15 : tensor<7x1x9xi64>
            %292 = memref.realloc %alloc_22 : memref<7xf32> to memref<7xf32>
            %293 = math.ipowi %9, %11 : tensor<7x1xi16>
            %294 = math.floor %10 : tensor<1x9x7xf16>
            %295 = math.atan2 %2, %2 : tensor<9x7x1xf32>
            %296 = arith.muli %c2023546911_i32, %extracted : i32
            %cast_63 = tensor.cast %collapsed_56 : tensor<7xi16> to tensor<?xi16>
            %297 = arith.addf %in, %cst : f32
            %298 = memref.load %alloc_22[%c6] : memref<7xf32>
            %299 = math.ipowi %114, %114 : tensor<9x7x1xi32>
            %300 = index.maxu %178, %c4
            %301 = arith.shrui %extracted, %c342458842_i32 : i32
            %302 = vector.multi_reduction <mul>, %128, %in [0, 1] : vector<7x1xf32> to f32
            %303 = affine.min affine_map<(d0) -> (0, 0, 0, 0)>(%95)
            %splat_64 = tensor.splat %302 : tensor<7x1x9xf32>
            %304 = memref.realloc %alloc_21 : memref<7xf32> to memref<9xf32>
            %305 = index.maxu %c13, %c10
            %306 = math.floor %cst_3 : f16
            %307 = index.maxu %c1, %300
            %308 = arith.subi %extracted_40, %c61268768_i64 : i64
            %alloc_65 = memref.alloc() : memref<7x9xi1>
            %309 = tensor.empty() : tensor<9x9xi1>
            %310 = linalg.matmul ins(%collapsed_58, %alloc_65 : tensor<9x7xi1>, memref<7x9xi1>) outs(%309 : tensor<9x9xi1>) -> tensor<9x9xi1>
            %311 = arith.shrui %false, %true : i1
            %312 = math.absi %15 : tensor<7x1x9xi64>
            %313 = arith.remsi %true, %true : i1
            %314 = index.sizeof
            %315 = arith.addi %c1303960709_i32, %extracted : i32
            %316 = index.sizeof
            %317 = arith.addf %cst_4, %cst_3 : f16
            %318 = vector.bitcast %193 : vector<1xi32> to vector<1xf32>
            %319 = vector.broadcast %in : f32 to vector<9x1xf32>
            %dest_66, %accumulated_value_67 = vector.scan <minf>, %131, %319 {inclusive = true, reduction_dim = 1 : i64} : vector<9x7x1xf32>, vector<9x1xf32>
            %320 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + 8)>(%c2, %32, %c11, %c8)
            %cst_68 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_68 : f16
          }
        %275 = vector.broadcast %c-27608_i16 : i16 to vector<9x9xi16>
        %276 = vector.outerproduct %59, %59, %275 {kind = #vector.kind<add>} : vector<9xi16>, vector<9xi16>
        %277 = math.expm1 %13 : tensor<7x1xf32>
        %278 = index.maxu %c14, %c15
        scf.index_switch %c3 
        case 1 {
          %291 = math.atan2 %202, %202 : tensor<1x9x7xf32>
          %inserted = tensor.insert %c-27608_i16 into %8[%c5, %c0, %c4] : tensor<7x1x9xi16>
          %292 = vector.broadcast %in_54 : f32 to vector<1x9x7xf32>
          %293 = vector.broadcast %false : i1 to vector<1x9x7xi1>
          %294 = vector.broadcast %c2023546911_i32 : i32 to vector<1x9x7xi32>
          %295 = vector.gather %148[%c14, %57, %265] [%294], %293, %292 : memref<1x9x7xf32>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xf32> into vector<1x9x7xf32>
          %296 = math.tan %202 : tensor<1x9x7xf32>
          %297 = arith.remui %true, %false : i1
          %inserted_61 = tensor.insert %true into %142[%c4, %c2, %c0] : tensor<9x7x1xi1>
          memref.tensor_store %114, %alloc_20 : memref<9x7x1xi32>
          %298 = math.ctpop %14 : tensor<1x9x7xi1>
          %299 = vector.extract_strided_slice %128 {offsets = [3], sizes = [2], strides = [1]} : vector<7x1xf32> to vector<2x1xf32>
          %300 = arith.maxui %c1102296611_i32, %c2023546911_i32 : i32
          %301 = index.ceildivs %278, %c14
          %302 = vector.broadcast %c2 : index to vector<7xindex>
          %303 = vector.broadcast %true : i1 to vector<7xi1>
          %304 = vector.broadcast %c-27608_i16 : i16 to vector<7xi16>
          vector.scatter %alloc_18[%c5, %c5, %c0] [%302], %303, %304 : memref<9x7x1xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
          %305 = bufferization.to_tensor %alloc : memref<9x7x1xf16>
          bufferization.dealloc_tensor %11 : tensor<7x1xi16>
          %306 = arith.remsi %c14584_i16, %c-27608_i16 : i16
          %alloc_62 = memref.alloc() : memref<7x1xf16>
          scf.yield
        }
        default {
          %291 = math.atan %cst_2 : f32
          %292 = vector.broadcast %169 : i64 to vector<1xi64>
          %293 = vector.maskedload %alloc_8[%c0, %c8, %c0], %38, %292 : memref<1x9x7xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %294 = vector.maskedload %alloc_11[%c0, %c0, %c2], %38, %38 : memref<1x9x7xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %295 = math.cos %12 : tensor<9x7x1xf32>
          %296 = vector.extract_strided_slice %38 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %297 = arith.minf %cst_3, %172 : f16
          %298 = arith.cmpf one, %172, %cst_3 : f16
          %299 = math.log1p %12 : tensor<9x7x1xf32>
          %300 = math.round %1 : tensor<7x1x9xf32>
          %301 = arith.remui %c1102296611_i32, %c971899678_i32 : i32
          %302 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 mod 64) ceildiv 16, d0 * 2, (d3 + 112) ceildiv 2)>(%c6, %c1, %c10, %c2)
          %303 = index.sizeof
          %304 = vector.broadcast %false : i1 to vector<7x1x9xi1>
          memref.copy %alloc_6, %148 : memref<1x9x7xf32> to memref<1x9x7xf32>
          %305 = affine.load %alloc_12[%c3, %c2, %c10] : memref<9x7x1xi64>
          %collapsed_61 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<7x1x9xi16> into tensor<7x9xi16>
        }
        %279 = vector.shuffle %177, %177 [0] : vector<1xf32>, vector<1xf32>
        %280 = vector.broadcast %c14584_i16 : i16 to vector<9x9xi16>
        %281 = vector.outerproduct %59, %59, %280 {kind = #vector.kind<maxui>} : vector<9xi16>, vector<9xi16>
        %282 = arith.maxui %false, %true : i1
        %283 = arith.cmpf true, %cst_4, %172 : f16
        %284 = vector.extract %144[7] : vector<9xi64>
        %285 = tensor.empty() : tensor<i32>
        %286 = math.fpowi %20, %285 : tensor<f32>, tensor<i32>
        %287 = scf.execute_region -> tensor<7x1x9xi1> {
          %291 = vector.transpose %129, [1, 0] : vector<7x1xf32> to vector<1x7xf32>
          %292 = arith.shrsi %c1077083642_i32, %c1102296611_i32 : i32
          %293 = vector.broadcast %false : i1 to vector<i1>
          %294 = vector.transfer_write %293, %26[%278, %268, %81] : vector<i1>, tensor<9x7x1xi1>
          %295 = math.absf %202 : tensor<1x9x7xf32>
          %296 = math.ctlz %collapsed : tensor<63x1xi64>
          %297 = vector.broadcast %in_54 : f32 to vector<1x7xf32>
          vector.transfer_write %297, %148[%81, %271, %92] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x7xf32>, memref<1x9x7xf32>
          %298 = bufferization.to_tensor %alloc_19 : memref<9x7x1xi64>
          %299 = arith.addf %cst_0, %cst_0 : f32
          %300 = vector.load %alloc_15[%c4, %c0, %c2] : memref<7x1x9xi32>, vector<9x7x1xi32>
          %301 = bufferization.to_tensor %alloc_13 : memref<1x9x7xi32>
          %302 = math.absi %8 : tensor<7x1x9xi16>
          %303 = bufferization.clone %148 : memref<1x9x7xf32> to memref<1x9x7xf32>
          %alloc_61 = memref.alloc() : memref<7x1x9xi64>
          %rank_62 = tensor.rank %114 : tensor<9x7x1xi32>
          %304 = vector.broadcast %123 : index to vector<1xindex>
          vector.scatter %alloc_21[%c2] [%304], %38, %177 : memref<7xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
          %305 = arith.remui %false, %false : i1
          scf.yield %3 : tensor<7x1x9xi1>
        }
        %288 = tensor.empty() : tensor<1x7xi16>
        %289 = tensor.empty() : tensor<7x7xi16>
        %290 = linalg.matmul ins(%11, %288 : tensor<7x1xi16>, tensor<1x7xi16>) outs(%289 : tensor<7x7xi16>) -> tensor<7x7xi16>
        scf.execute_region {
          %291 = math.cos %cst_2 : f32
          %292 = vector.extract_strided_slice %122 {offsets = [4], sizes = [2], strides = [1]} : vector<7x1xi32> to vector<2x1xi32>
          %293 = arith.ori %c1077083642_i32, %c342458842_i32 : i32
          %294 = index.floordivs %c2, %c4
          %295 = vector.load %alloc_11[%c0, %c2, %c2] : memref<1x9x7xi1>, vector<9x7x1xi1>
          %296 = index.sizeof
          %297 = math.floor %cst_1 : f32
          %298 = math.tan %13 : tensor<7x1xf32>
          %299 = arith.divui %true, %true : i1
          %300 = vector.broadcast %cst : f32 to vector<9x7xf32>
          %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %132, %177, %300 : vector<9x7x1xf32>, vector<1xf32> into vector<9x7xf32>
          %302 = arith.subi %extracted_40, %c61268768_i64 : i64
          %303 = index.floordivs %c10, %67
          %304 = arith.shli %134, %c971899678_i32 : i32
          %305 = bufferization.to_tensor %alloc_15 : memref<7x1x9xi32>
          %306 = index.divu %104, %96
          %307 = vector.insertelement %c14584_i16, %59[%99 : index] : vector<9xi16>
          scf.yield
        }
        memref.assume_alignment %alloc_8, 2 : memref<1x9x7xi64>
        affine.for %arg0 = 0 to 37 {
        }
        %cst_60 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_60 : f32
      }
    %203 = affine.max affine_map<(d0, d1, d2) -> ((d1 - d0) ceildiv 128 - 1, d1)>(%c11, %c6, %96)
    %204 = math.round %12 : tensor<9x7x1xf32>
    %205 = vector.broadcast %false : i1 to vector<9xi1>
    %206 = vector.maskedload %alloc_7[%c4, %c0, %c7], %205, %205 : memref<7x1x9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
    %207 = bufferization.to_tensor %alloc_21 : memref<7xf32>
    %alloc_43 = memref.alloc() : memref<1x9x7xi1>
    %208 = scf.index_switch %c9 -> memref<9x7x1xi1> 
    case 1 {
      %261 = math.ctpop %splat_41 : tensor<1x9x7xi16>
      %262 = arith.floordivsi %false, %true : i1
      %263 = affine.if affine_set<(d0) : (d0 - d0 floordiv 2 == 0, d0 floordiv 2 >= 0)>(%c7) -> i1 {
        %279 = arith.divui %c971899678_i32, %c342458842_i32 : i32
        %280 = vector.reduction <minui>, %59 : vector<9xi16> into i16
        %281 = arith.cmpi ugt, %169, %c61268768_i64 : i64
        %282 = vector.transpose %19, [0] : vector<7xi32> to vector<7xi32>
        %283 = math.expm1 %7 : tensor<7x1x9xf16>
        %284 = index.add %121, %c6
        %285 = arith.ceildivsi %c1944593197_i32, %extracted : i32
        %286 = vector.maskedload %192[%c6, %c1, %c0], %206, %144 : memref<9x7x1xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        affine.yield %true : i1
      } else {
        %279 = affine.load %alloc_12[%c12, %c9, %c11] : memref<9x7x1xi64>
        %280 = affine.max affine_map<(d0) -> (-((d0 - 2) floordiv 16) + 1, d0 + 6)>(%67)
        %rank_57 = tensor.rank %4 : tensor<1x9x7xi32>
        %281 = math.absi %15 : tensor<7x1x9xi64>
        %282 = bufferization.clone %alloc_11 : memref<1x9x7xi1> to memref<1x9x7xi1>
        %283 = arith.ceildivsi %c342458842_i32, %c342458842_i32 : i32
        %284 = math.tan %202 : tensor<1x9x7xf32>
        %285 = math.powf %20, %20 : tensor<f32>
        affine.yield %true : i1
      }
      %264 = math.copysign %202, %202 : tensor<1x9x7xf32>
      %265 = vector.splat %c9 : vector<1x9x7xindex>
      %266 = index.divu %57, %99
      %267 = math.round %1 : tensor<7x1x9xf32>
      %268 = math.tan %12 : tensor<9x7x1xf32>
      %generated_54 = tensor.generate %90, %25 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %279 = arith.shrsi %c1077083642_i32, %c1077083642_i32 : i32
        %280 = arith.shrui %c14584_i16, %c-27608_i16 : i16
        memref.assume_alignment %alloc_11, 2 : memref<1x9x7xi1>
        %281 = arith.divsi %c1077083642_i32, %134 : i32
        tensor.yield %c1303960709_i32 : i32
      } : tensor<?x?x7xi32>
      %269 = index.maxs %c2, %c7
      %270 = vector.shuffle %193, %126 [0] : vector<1xi32>, vector<1xi32>
      %271 = vector.insert %c-27608_i16, %59 [2] : i16 into vector<9xi16>
      %alloc_55 = memref.alloc() : memref<7x1x9xi64>
      %272 = vector.broadcast %c61268768_i64 : i64 to vector<7x1x9xi64>
      %273 = vector.broadcast %true : i1 to vector<7x1x9xi1>
      %274 = vector.broadcast %c1944593197_i32 : i32 to vector<7x1x9xi32>
      %275 = vector.gather %alloc_55[%23, %c9, %57] [%274], %273, %272 : memref<7x1x9xi64>, vector<7x1x9xi32>, vector<7x1x9xi1>, vector<7x1x9xi64> into vector<7x1x9xi64>
      %extracted_56 = tensor.extract %17[%c2, %c0, %c0] : tensor<7x1x9xi16>
      %276 = arith.addf %172, %172 : f16
      %277 = vector.broadcast %true : i1 to vector<9x9xi1>
      %278 = vector.outerproduct %205, %205, %277 {kind = #vector.kind<add>} : vector<9xi1>, vector<9xi1>
      scf.yield %alloc_16 : memref<9x7x1xi1>
    }
    case 2 {
      %261 = bufferization.to_tensor %alloc_6 : memref<1x9x7xf32>
      %262 = vector.broadcast %169 : i64 to vector<i64>
      vector.transfer_write %262, %192[%203, %81, %c8] : vector<i64>, memref<9x7x1xi64>
      %263 = index.divu %81, %c9
      %264 = bufferization.to_memref %3 : memref<7x1x9xi1>
      %265 = vector.broadcast %172 : f16 to vector<1xf16>
      %266 = vector.transfer_write %265, %7[%c4, %104, %23] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf16>, tensor<7x1x9xf16>
      bufferization.dealloc_tensor %5 : tensor<9x7x1xi1>
      %267 = tensor.empty() : tensor<1x9x7xi1>
      %mapped_54 = linalg.map ins(%14 : tensor<1x9x7xi1>) outs(%267 : tensor<1x9x7xi1>)
        (%in: i1) {
          %276 = index.floordivs %c1, %c2
          %alloc_56 = memref.alloc() : memref<9x7x1xi16>
          %277 = tensor.empty() : tensor<7x1xf16>
          %278 = vector.broadcast %cst_2 : f32 to vector<7x1x9xf32>
          %279 = vector.fma %278, %278, %278 : vector<7x1x9xf32>
          %280 = arith.ceildivsi %c971899678_i32, %c342458842_i32 : i32
          %281 = arith.maxui %c1102296611_i32, %c1303960709_i32 : i32
          %282 = vector.bitcast %206 : vector<9xi1> to vector<9xi1>
          %283 = vector.broadcast %cst : f32 to vector<1x1xf32>
          vector.transfer_write %283, %alloc_6[%190, %90, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x1xf32>, memref<1x9x7xf32>
          %splat_57 = tensor.splat %134 : tensor<1x9x7xi32>
          %284 = vector.broadcast %c342458842_i32 : i32 to vector<9xi32>
          %285 = vector.maskedload %alloc_15[%c3, %c0, %c8], %206, %284 : memref<7x1x9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
          %286 = arith.minsi %c1077083642_i32, %c1944593197_i32 : i32
          %287 = math.cttz %15 : tensor<7x1x9xi64>
          %288 = vector.multi_reduction <add>, %38, %false [0] : vector<1xi1> to i1
          %289 = index.castu %c1303960709_i32 : i32 to index
          %alloc_58 = memref.alloc() : memref<7x1xf16>
          %290 = vector.broadcast %cst_3 : f16 to vector<7x1xf16>
          %291 = vector.broadcast %true : i1 to vector<7x1xi1>
          %292 = vector.gather %alloc_58[%c12, %90] [%46], %291, %290 : memref<7x1xf16>, vector<7x1xi32>, vector<7x1xi1>, vector<7x1xf16> into vector<7x1xf16>
          %293 = arith.shrsi %169, %169 : i64
          %294 = arith.addf %cst_1, %cst_1 : f32
          affine.store %cst_3, %alloc_58[%c7, %c12] : memref<7x1xf16>
          %295 = math.log2 %18 : tensor<9x7xf32>
          %296 = vector.splat %c6 : vector<7x1xindex>
          %297 = tensor.empty() : tensor<9x7x1xi1>
          %298 = vector.create_mask %c5, %90 : vector<7x1xi1>
          %299 = index.divu %c11, %c8
          %300 = vector.broadcast %172 : f16 to vector<7xf16>
          %dest_59, %accumulated_value_60 = vector.scan <maxf>, %290, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<7x1xf16>, vector<7xf16>
          %301 = vector.extract %177[0] : vector<1xf32>
          %302 = bufferization.to_tensor %alloc_15 : memref<7x1x9xi32>
          %inserted = tensor.insert %cst_0 into %202[%c0, %c6, %c1] : tensor<1x9x7xf32>
          %c1_i16 = arith.constant 1 : i16
          %c0_i16 = arith.constant 0 : i16
          %303 = vector.transfer_read %9[%32, %276], %c0_i16 : tensor<7x1xi16>, vector<i16>
          %304 = arith.divf %cst_3, %cst_4 : f16
          %305 = vector.extract %284[8] : vector<9xi32>
          %306 = bufferization.to_memref %207 : memref<7xf32>
          %alloc_61 = memref.alloc() : memref<1x9xf32>
          %307 = tensor.empty() : tensor<7x9xf32>
          %308 = linalg.matmul ins(%13, %alloc_61 : tensor<7x1xf32>, memref<1x9xf32>) outs(%307 : tensor<7x9xf32>) -> tensor<7x9xf32>
          %false_62 = arith.constant false
          linalg.yield %false_62 : i1
        }
      %268 = index.sizeof
      %269 = arith.cmpf one, %cst_1, %cst_0 : f32
      %270 = arith.maxui %extracted, %c1077083642_i32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_55 = arith.constant 0 : i32
      %271 = vector.transfer_read %alloc_13[%96, %99, %32], %c0_i32_55 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<1x9x7xi32>, vector<7x1xi32>
      %272 = vector.insert %126, %122 [4] : vector<1xi32> into vector<7x1xi32>
      bufferization.dealloc_tensor %8 : tensor<7x1x9xi16>
      %273 = index.ceildivs %c4, %178
      %274 = vector.multi_reduction <minf>, %129, %177 [0] : vector<7x1xf32> to vector<1xf32>
      %275 = affine.if affine_set<(d0) : (d0 - d0 floordiv 2 == 0, d0 floordiv 2 >= 0)>(%c9) -> memref<1x9x7xi64> {
        %276 = vector.shuffle %119, %119 [0, 1] : vector<f32>, vector<f32>
        %277 = arith.subi %c1077083642_i32, %c971899678_i32 : i32
        %alloc_56 = memref.alloc() : memref<7x1x9xi16>
        memref.tensor_store %16, %alloc_56 : memref<7x1x9xi16>
        %278 = arith.minf %cst_4, %cst_4 : f16
        %279 = arith.muli %c14584_i16, %c14584_i16 : i16
        %280 = math.expm1 %207 : tensor<7xf32>
        %281 = index.divu %273, %c1
        %282 = arith.shrui %true, %false : i1
        affine.yield %alloc_8 : memref<1x9x7xi64>
      } else {
        %276 = math.absf %207 : tensor<7xf32>
        %277 = arith.ceildivsi %false, %false : i1
        %278 = arith.cmpf ogt, %172, %cst_4 : f16
        %279 = arith.divf %cst_0, %cst : f32
        %280 = vector.broadcast %c2023546911_i32 : i32 to vector<9x7x1xi32>
        %281 = arith.floordivsi %extracted, %c1944593197_i32 : i32
        %collapsed_56 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<7x1x9xi1> into tensor<7x9xi1>
        %alloc_57 = memref.alloc() : memref<1x9x7xi64>
        affine.yield %alloc_8 : memref<1x9x7xi64>
      }
      scf.yield %alloc_16 : memref<9x7x1xi1>
    }
    case 3 {
      %261 = vector.broadcast %121 : index to vector<7xindex>
      %262 = vector.broadcast %false : i1 to vector<7xi1>
      %263 = vector.broadcast %cst_4 : f16 to vector<7xf16>
      vector.scatter %alloc_14[%c3, %c0, %c7] [%261], %262, %263 : memref<7x1x9xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %264 = index.divu %c11, %178
      %splat_54 = tensor.splat %extracted : tensor<9x7x1xi32>
      %265 = vector.splat %c7 : vector<7x1xindex>
      %266 = arith.remui %169, %extracted_40 : i64
      %267 = vector.bitcast %132 : vector<9x7x1xf32> to vector<9x7x1xf32>
      %268 = arith.minui %c1303960709_i32, %c2023546911_i32 : i32
      %269 = math.tanh %cst : f32
      %270 = bufferization.clone %alloc_15 : memref<7x1x9xi32> to memref<7x1x9xi32>
      %271 = arith.cmpi ult, %false, %true : i1
      %272 = bufferization.clone %alloc_10 : memref<7x1xi32> to memref<7x1xi32>
      %273 = bufferization.to_memref %6 : memref<1x9x7xi1>
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %144, %144, %extracted_40 : vector<9xi64>, vector<9xi64> into i64
      %275 = arith.remsi %c61268768_i64, %extracted_40 : i64
      %276 = index.divs %c1, %90
      %277 = vector.broadcast %c10 : index to vector<1xindex>
      vector.scatter %272[%c4, %c0] [%277], %38, %193 : memref<7x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      scf.yield %alloc_16 : memref<9x7x1xi1>
    }
    case 4 {
      %261 = vector.load %148[%c0, %c1, %c2] : memref<1x9x7xf32>, vector<9x7x1xf32>
      %alloc_54 = memref.alloc() : memref<1x1xi32>
      %262 = tensor.empty() : tensor<7x1xi32>
      %263 = linalg.matmul ins(%70, %alloc_54 : tensor<7x1xi32>, memref<1x1xi32>) outs(%262 : tensor<7x1xi32>) -> tensor<7x1xi32>
      %264 = bufferization.to_memref %3 : memref<7x1x9xi1>
      %265 = vector.multi_reduction <maxf>, %37, %cst_4 [0] : vector<1xf16> to f16
      %266 = vector.splat %c15 : vector<7x1x9xindex>
      memref.store %false, %alloc_16[%c4, %c2, %c0] : memref<9x7x1xi1>
      %267 = math.expm1 %172 : f16
      %alloca_55 = memref.alloca() : memref<1x9x7xi16>
      %268 = arith.minf %cst_2, %cst_2 : f32
      %269 = vector.broadcast %c2023546911_i32 : i32 to vector<9xi32>
      %270 = vector.maskedload %alloc_20[%c8, %c3, %c0], %205, %269 : memref<9x7x1xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %271 = arith.floordivsi %c1303960709_i32, %c1303960709_i32 : i32
      scf.if %true {
        %275 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
        %276 = math.cttz %collapsed : tensor<63x1xi64>
        %277 = math.floor %1 : tensor<7x1x9xf32>
        %278 = memref.atomic_rmw assign %c14584_i16, %alloc_18[%c2, %c2, %c0] : (i16, memref<9x7x1xi16>) -> i16
        %279 = index.maxs %135, %30
        %280 = tensor.empty() : tensor<9x7x1xi16>
        %281 = index.maxs %178, %89
        %282 = math.ctpop %11 : tensor<7x1xi16>
      }
      %272 = arith.remui %false, %true : i1
      %273 = bufferization.clone %alloc_22 : memref<7xf32> to memref<7xf32>
      vector.print %59 : vector<9xi16>
      %274 = arith.shrui %c14584_i16, %c-27608_i16 : i16
      scf.yield %alloc_16 : memref<9x7x1xi1>
    }
    default {
      %261 = math.log2 %10 : tensor<1x9x7xf16>
      %262 = math.log2 %cst_4 : f16
      %263 = vector.extract_strided_slice %19 {offsets = [2], sizes = [4], strides = [1]} : vector<7xi32> to vector<4xi32>
      %264 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %264, %alloc_21[%c11] : vector<f32>, memref<7xf32>
      %alloca_54 = memref.alloca() : memref<1x9x7xi32>
      %265 = index.add %c12, %c0
      %266 = scf.if %true -> (f32) {
        %274 = arith.divf %cst_2, %cst_0 : f32
        %true_59 = index.bool.constant true
        %275 = math.absi %15 : tensor<7x1x9xi64>
        %276 = index.ceildivu %90, %c12
        %277 = arith.minf %cst, %cst_0 : f32
        %278 = arith.andi %extracted, %134 : i32
        %279 = arith.remf %cst_0, %cst_0 : f32
        %280 = arith.remui %c1303960709_i32, %134 : i32
        scf.yield %cst_2 : f32
      } else {
        %274 = bufferization.clone %alloc_12 : memref<9x7x1xi64> to memref<9x7x1xi64>
        %275 = index.ceildivu %123, %30
        %276 = affine.min affine_map<(d0, d1) -> (d0 + d0 - 4 - 1, d0 - 4, (d0 floordiv 8) ceildiv 2)>(%179, %c8)
        %277 = index.casts %c61268768_i64 : i64 to index
        %alloca_59 = memref.alloca() : memref<9x7x1xf16>
        %alloca_60 = memref.alloca() : memref<9x7x1xi32>
        %278 = vector.extract %128[2] : vector<7x1xf32>
        %279 = arith.shrsi %c971899678_i32, %c2023546911_i32 : i32
        scf.yield %cst_2 : f32
      }
      %generated_55 = tensor.generate %c11 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %274 = memref.realloc %alloc_21 : memref<7xf32> to memref<7xf32>
        %275 = vector.broadcast %c11 : index to vector<9xindex>
        %276 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        vector.scatter %alloc_21[%c4] [%275], %205, %276 : memref<7xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %277 = vector.broadcast %false : i1 to vector<9x1xi1>
        %278 = vector.transfer_write %277, %6[%105, %c6, %92] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<9x1xi1>, tensor<1x9x7xi1>
        %279 = math.fpowi %172, %c1077083642_i32 : f16, i32
        tensor.yield %172 : f16
      } : tensor<?x1x9xf16>
      %267 = math.round %21 : tensor<f32>
      %268 = vector.reduction <maxui>, %126 : vector<1xi32> into i32
      %269 = math.tan %2 : tensor<9x7x1xf32>
      %270 = vector.broadcast %c1077083642_i32 : i32 to vector<1x1xi32>
      %271 = vector.outerproduct %126, %193, %270 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
      %cast_56 = tensor.cast %13 : tensor<7x1xf32> to tensor<?x?xf32>
      %272 = math.cos %20 : tensor<f32>
      %dest_57, %accumulated_value_58 = vector.scan <minf>, %200, %129 {inclusive = true, reduction_dim = 0 : i64} : vector<9x7x1xf32>, vector<7x1xf32>
      %273 = index.maxu %c11, %c14
      scf.yield %alloc_16 : memref<9x7x1xi1>
    }
    %collapsed_44 = tensor.collapse_shape %42 [[0, 1], [2]] : tensor<7x1x9xi32> into tensor<7x9xi32>
    %209 = math.tan %cst_4 : f16
    %210 = index.divu %81, %190
    %211 = tensor.empty() : tensor<9x7x1xi16>
    %212 = math.floor %13 : tensor<7x1xf32>
    %213 = arith.addf %cst_1, %cst_0 : f32
    %214 = arith.addf %cst_0, %cst : f32
    %215 = vector.bitcast %205 : vector<9xi1> to vector<9xi1>
    %216 = index.castu %163 : index to i32
    %generated_45 = tensor.generate %30, %c1 {
    ^bb0(%arg0: index, %arg1: index):
      %261 = vector.load %192[%c1, %c1, %c0] : memref<9x7x1xi64>, vector<1x9x7xi64>
      %262 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %263 = math.cttz %11 : tensor<7x1xi16>
      %alloc_54 = memref.alloc() : memref<1x9x7xi16>
      tensor.yield %cst_3 : f16
    } : tensor<?x?xf16>
    %217 = vector.broadcast %true : i1 to vector<i1>
    %218 = vector.transfer_write %217, %3[%67, %c15, %81] : vector<i1>, tensor<7x1x9xi1>
    %219 = bufferization.to_tensor %alloc_7 : memref<7x1x9xi1>
    %220 = math.round %10 : tensor<1x9x7xf16>
    %221 = index.add %190, %c11
    %222 = vector.broadcast %cst_0 : f32 to vector<f32>
    %223 = vector.transfer_write %222, %reduced[%89, %210] : vector<f32>, tensor<9x7xf32>
    %generated_46 = tensor.generate %23, %99 {
    ^bb0(%arg0: index, %arg1: index):
      %261 = vector.create_mask %104, %89, %c5 : vector<1x9x7xi1>
      %262 = index.add %190, %c4
      %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %46, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<7x1xi32>, vector<7xi32>
      %263 = index.maxu %99, %121
      tensor.yield %cst_2 : f32
    } : tensor<?x?xf32>
    %224 = math.ctpop %c1102296611_i32 : i32
    %225 = math.fma %12, %12, %12 : tensor<9x7x1xf32>
    %226 = vector.broadcast %c13 : index to vector<9xindex>
    vector.scatter %alloc_12[%c8, %c6, %c0] [%226], %205, %144 : memref<9x7x1xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
    %227 = index.sub %c14, %c0
    %228 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %alloc_47 = memref.alloc() : memref<1x9x7xi16>
    %229 = arith.shrui %c2023546911_i32, %134 : i32
    %rank = tensor.rank %8 : tensor<7x1x9xi16>
    %230 = math.ctpop %14 : tensor<1x9x7xi1>
    %231 = tensor.empty() : tensor<9x1xf32>
    %232 = linalg.matmul ins(%18, %splat : tensor<9x7xf32>, tensor<7x1xf32>) outs(%231 : tensor<9x1xf32>) -> tensor<9x1xf32>
    %233 = arith.shrui %c1303960709_i32, %c1102296611_i32 : i32
    %234 = arith.remsi %c-27608_i16, %c14584_i16 : i16
    %235 = tensor.empty() : tensor<7x1xf32>
    %mapped_48 = linalg.map ins(%splat : tensor<7x1xf32>) outs(%235 : tensor<7x1xf32>)
      (%in: f32) {
        %261 = math.round %172 : f16
        %262 = vector.broadcast %in : f32 to vector<9x7xf32>
        %dest_54, %accumulated_value_55 = vector.scan <add>, %131, %262 {inclusive = true, reduction_dim = 2 : i64} : vector<9x7x1xf32>, vector<9x7xf32>
        %263 = index.maxu %25, %c0
        %264 = math.floor %1 : tensor<7x1x9xf32>
        %265 = memref.realloc %alloc_22 : memref<7xf32> to memref<7xf32>
        %cst_56 = arith.constant 1.000000e+00 : f32
        %cst_57 = arith.constant 0.000000e+00 : f32
        %266 = vector.transfer_read %2[%90, %105, %104], %cst_57 : tensor<9x7x1xf32>, vector<f32>
        bufferization.dealloc_tensor %5 : tensor<9x7x1xi1>
        %267 = memref.load %alloc_6[%c0, %c6, %c4] : memref<1x9x7xf32>
        %268 = arith.remui %false, %false : i1
        %269 = tensor.empty() : tensor<7x1x9xf32>
        %mapped_58 = linalg.map ins(%1 : tensor<7x1x9xf32>) outs(%269 : tensor<7x1x9xf32>)
          (%in_64: f32) {
            %289 = vector.broadcast %extracted_40 : i64 to vector<1x9x7xi64>
            %290 = vector.broadcast %false : i1 to vector<1x9x7xi1>
            %291 = vector.broadcast %c1303960709_i32 : i32 to vector<1x9x7xi32>
            %292 = vector.gather %15[%178, %263, %c15] [%291], %290, %289 : tensor<7x1x9xi64>, vector<1x9x7xi32>, vector<1x9x7xi1>, vector<1x9x7xi64> into vector<1x9x7xi64>
            %293 = affine.load %62[%c5, %c7, %c2] : memref<7x1x9xf16>
            %294 = vector.transpose %177, [0] : vector<1xf32> to vector<1xf32>
            %295 = vector.splat %c4 : vector<1x9x7xindex>
            affine.store %293, %62[%c12, %c9, %c2] : memref<7x1x9xf16>
            %296 = index.mul %123, %263
            %297 = index.divu %96, %c5
            %298 = arith.remui %true, %false : i1
            %299 = math.ctpop %211 : tensor<9x7x1xi16>
            %300 = tensor.empty(%179, %c15) : tensor<?x?xf32>
            %301 = index.add %203, %163
            %302 = vector.transpose %215, [0] : vector<9xi1> to vector<9xi1>
            %303 = arith.remui %c1303960709_i32, %c971899678_i32 : i32
            %304 = math.copysign %cst_4, %293 : f16
            %305 = arith.shli %c971899678_i32, %c1077083642_i32 : i32
            memref.assume_alignment %alloc_21, 8 : memref<7xf32>
            memref.tensor_store %9, %100 : memref<7x1xi16>
            %306 = vector.reduction <or>, %215 : vector<9xi1> into i1
            %307 = arith.ori %false, %true : i1
            %308 = math.absi %4 : tensor<1x9x7xi32>
            %309 = arith.remsi %c1102296611_i32, %c2023546911_i32 : i32
            affine.store %c971899678_i32, %alloc_20[%c1, %c0, %c1] : memref<9x7x1xi32>
            %310 = arith.ceildivsi %c1944593197_i32, %c342458842_i32 : i32
            %311 = arith.floordivsi %extracted, %c1303960709_i32 : i32
            %312 = vector.broadcast %293 : f16 to vector<9xf16>
            %313 = vector.maskedload %62[%c1, %c0, %c2], %205, %312 : memref<7x1x9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
            %cst_65 = arith.constant 6.156800e+04 : f16
            %314 = index.floordivs %297, %178
            %315 = vector.splat %190 : vector<1x9x7xindex>
            %316 = arith.muli %c1944593197_i32, %c1077083642_i32 : i32
            %317 = index.maxs %57, %c1
            %318 = math.absi %c-27608_i16 : i16
            %319 = arith.divsi %c971899678_i32, %c2023546911_i32 : i32
            %cst_66 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_66 : f32
          }
        %270 = vector.flat_transpose %206 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %271 = arith.divf %cst_4, %172 : f16
        %272 = arith.cmpf one, %cst_1, %in : f32
        %273 = math.fma %2, %12, %12 : tensor<9x7x1xf32>
        %274 = scf.while (%arg0 = %c61268768_i64) : (i64) -> i64 {
          %289 = bufferization.to_memref %9 : memref<7x1xi16>
          %290 = arith.cmpf one, %cst_0, %cst_2 : f32
          %291 = math.absi %c342458842_i32 : i32
          %292 = arith.andi %134, %c342458842_i32 : i32
          %293 = vector.splat %57 : vector<7x1x9xindex>
          %294 = memref.load %alloc_19[%c6, %c3, %c0] : memref<9x7x1xi64>
          %295 = index.maxs %104, %c7
          %296 = math.floor %cst : f32
          scf.condition(%false) %169 : i64
        } do {
        ^bb0(%arg0: i64):
          %289 = vector.insertelement %172, %39[%c12 : index] : vector<1xf16>
          %290 = arith.divf %cst_3, %cst_3 : f16
          %291 = math.ceil %cst : f32
          %292 = math.tan %splat : tensor<7x1xf32>
          memref.store %cst_1, %alloc_22[%c1] : memref<7xf32>
          %293 = arith.ceildivsi %c1944593197_i32, %c971899678_i32 : i32
          %294 = index.mul %263, %90
          %295 = arith.ceildivsi %extracted_40, %extracted_40 : i64
          %296 = math.atan2 %13, %13 : tensor<7x1xf32>
          %297 = index.mul %104, %c3
          %298 = math.ctpop %11 : tensor<7x1xi16>
          %299 = vector.maskedload %alloc_6[%c0, %c8, %c1], %38, %177 : memref<1x9x7xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %300 = vector.reduction <maxsi>, %126 : vector<1xi32> into i32
          %301 = index.divu %203, %95
          %splat_64 = tensor.splat %c61268768_i64 : tensor<7x1xi64>
          %302 = arith.addf %172, %cst_4 : f16
          scf.yield %extracted_40 : i64
        }
        %275 = math.cttz %4 : tensor<1x9x7xi32>
        %cst_59 = arith.constant 1.000000e+00 : f32
        %276 = vector.transfer_read %148[%c11, %c5, %190], %cst_59 : memref<1x9x7xf32>, vector<f32>
        %splat_60 = tensor.splat %c1077083642_i32 : tensor<7x1xi32>
        %277 = arith.divsi %extracted_40, %extracted_40 : i64
        %278 = arith.minf %cst_1, %in : f32
        %279 = arith.andi %c342458842_i32, %c1303960709_i32 : i32
        %280 = vector.load %alloc_11[%c0, %c4, %c4] : memref<1x9x7xi1>, vector<9x7x1xi1>
        %cast_61 = tensor.cast %1 : tensor<7x1x9xf32> to tensor<?x?x?xf32>
        %281 = affine.load %alloc_7[%c14, %c13, %c0] : memref<7x1x9xi1>
        %generated_62 = tensor.generate %c15, %c12 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %289 = index.casts %134 : i32 to index
          %290 = index.ceildivu %57, %135
          %291 = arith.shli %extracted, %c1077083642_i32 : i32
          %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 32, d2 floordiv 64)>(%c4, %179, %105, %c2)
          tensor.yield %cst_4 : f16
        } : tensor<?x?x7xf16>
        %282 = vector.insert %c61268768_i64, %144 [3] : i64 into vector<9xi64>
        %283 = math.exp %1 : tensor<7x1x9xf32>
        %284 = arith.ceildivsi %c342458842_i32, %c2023546911_i32 : i32
        %285 = math.atan %13 : tensor<7x1xf32>
        %286 = math.floor %172 : f16
        %287 = vector.shuffle %193, %193 [0, 1] : vector<1xi32>, vector<1xi32>
        %288 = vector.insert %cst_3, %39 [0] : f16 into vector<1xf16>
        %cst_63 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_63 : f32
      }
    %236 = vector.broadcast %c3 : index to vector<1xindex>
    %237 = vector.broadcast %169 : i64 to vector<1xi64>
    vector.scatter %alloc_12[%c5, %c6, %c0] [%236], %38, %237 : memref<9x7x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
    %238 = math.fpowi %13, %113 : tensor<7x1xf32>, tensor<7x1xi32>
    %239 = vector.broadcast %210 : index to vector<7xindex>
    %240 = vector.broadcast %false : i1 to vector<7xi1>
    %241 = vector.broadcast %c14584_i16 : i16 to vector<7xi16>
    vector.scatter %alloc_18[%c8, %c1, %c0] [%239], %240, %241 : memref<9x7x1xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
    %242 = vector.splat %190 : vector<9x7x1xindex>
    %243 = memref.realloc %alloc_21 : memref<7xf32> to memref<1xf32>
    %244 = index.casts %30 : index to i32
    %245 = index.maxu %32, %96
    %extracted_49 = tensor.extract %generated[%c0, %c0, %c0] : tensor<?x?x?xi32>
    %246 = arith.shrui %c2023546911_i32, %c1102296611_i32 : i32
    %247 = arith.divf %cst, %cst_1 : f32
    %248 = index.add %81, %96
    %alloc_50 = memref.alloc() : memref<7x1xi64>
    %249 = vector.transpose %126, [0] : vector<1xi32> to vector<1xi32>
    scf.if %false {
      %261 = index.divu %c10, %57
      %262 = math.round %13 : tensor<7x1xf32>
      %263 = vector.create_mask %90, %203 : vector<7x1xi1>
      %264 = math.copysign %cst_4, %172 : f16
      %265 = arith.minf %cst_2, %cst : f32
      %alloc_54 = memref.alloc() : memref<9x7x1xf32>
      memref.tensor_store %12, %alloc_54 : memref<9x7x1xf32>
      %266 = scf.if %false -> (memref<7x1x9xf32>) {
        %alloca_55 = memref.alloca() : memref<9x7x1xi16>
        %268 = arith.shrui %c1102296611_i32, %c1303960709_i32 : i32
        memref.copy %alloc_6, %148 : memref<1x9x7xf32> to memref<1x9x7xf32>
        %alloca_56 = memref.alloca() : memref<7x1x9xi1>
        %alloca_57 = memref.alloca() : memref<7x1xi64>
        %269 = arith.remsi %c1944593197_i32, %134 : i32
        %270 = memref.realloc %alloc_22 : memref<7xf32> to memref<1xf32>
        %271 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %alloc_58 = memref.alloc() : memref<7x1x9xf32>
        scf.yield %alloc_58 : memref<7x1x9xf32>
      } else {
        %268 = arith.remf %cst_3, %cst_3 : f16
        %269 = index.divu %227, %23
        %270 = math.round %cst_2 : f32
        %271 = bufferization.to_tensor %alloc_16 : memref<9x7x1xi1>
        %272 = index.divu %c7, %c9
        %extracted_55 = tensor.extract %8[%c2, %c0, %c8] : tensor<7x1x9xi16>
        %273 = memref.realloc %alloc_22 : memref<7xf32> to memref<1xf32>
        %274 = math.log %12 : tensor<9x7x1xf32>
        %alloc_56 = memref.alloc() : memref<7x1x9xf32>
        scf.yield %alloc_56 : memref<7x1x9xf32>
      }
      %267 = math.cttz %splat_41 : tensor<1x9x7xi16>
    }
    %250 = arith.maxui %false, %false : i1
    %splat_51 = tensor.splat %extracted_49 : tensor<7x1xi32>
    bufferization.dealloc_tensor %4 : tensor<1x9x7xi32>
    %251 = arith.ceildivsi %c971899678_i32, %c2023546911_i32 : i32
    %252 = math.fpowi %12, %114 : tensor<9x7x1xf32>, tensor<9x7x1xi32>
    %253 = arith.ceildivsi %extracted_40, %extracted_40 : i64
    %254 = bufferization.clone %62 : memref<7x1x9xf16> to memref<7x1x9xf16>
    %255 = scf.while (%arg0 = %177) : (vector<1xf32>) -> vector<1xf32> {
      %261 = index.mul %248, %104
      %262 = vector.broadcast %cst : f32 to vector<1x1xf32>
      %263 = vector.outerproduct %177, %177, %262 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %264 = vector.create_mask %c12, %203, %rank : vector<1x9x7xi1>
      %265 = affine.load %alloc_16[%c12, %c12, %c8] : memref<9x7x1xi1>
      %266 = tensor.empty() : tensor<9x7xf32>
      %mapped_54 = linalg.map ins(%reduced, %18, %reduced : tensor<9x7xf32>, tensor<9x7xf32>, tensor<9x7xf32>) outs(%266 : tensor<9x7xf32>)
        (%in: f32, %in_56: f32, %in_57: f32) {
          %268 = vector.broadcast %c14584_i16 : i16 to vector<9x9xi16>
          %269 = vector.outerproduct %59, %59, %268 {kind = #vector.kind<maxui>} : vector<9xi16>, vector<9xi16>
          %270 = vector.matrix_multiply %228, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
          %271 = math.absf %21 : tensor<f32>
          %272 = index.mul %245, %261
          %273 = arith.addf %cst_0, %in : f32
          %alloc_58 = memref.alloc() : memref<9x7x1xf32>
          %274 = vector.broadcast %false : i1 to vector<7x1xi1>
          %275 = vector.gather %alloc_58[%272, %135, %c15] [%46], %274, %128 : memref<9x7x1xf32>, vector<7x1xi32>, vector<7x1xi1>, vector<7x1xf32> into vector<7x1xf32>
          %276 = bufferization.to_tensor %62 : memref<7x1x9xf16>
          %277 = vector.create_mask %99, %c14, %105 : vector<9x7x1xi1>
          %278 = vector.extract_strided_slice %228 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %279 = arith.muli %c61268768_i64, %169 : i64
          %alloc_59 = memref.alloc() : memref<9x1xf32>
          memref.tensor_store %231, %alloc_59 : memref<9x1xf32>
          %collapsed_60 = tensor.collapse_shape %114 [[0, 1], [2]] : tensor<9x7x1xi32> into tensor<63x1xi32>
          %280 = vector.maskedload %alloc_7[%c0, %c0, %c5], %38, %38 : memref<7x1x9xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %281 = index.maxu %123, %81
          %282 = arith.subi %false, %265 : i1
          %283 = arith.ori %c1303960709_i32, %c971899678_i32 : i32
          %284 = math.log1p %in : f32
          %285 = arith.minui %c-27608_i16, %c-27608_i16 : i16
          %286 = math.tan %2 : tensor<9x7x1xf32>
          bufferization.dealloc_tensor %cast_30 : tensor<?x?x?xi16>
          %287 = vector.extract_strided_slice %193 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %288 = math.rsqrt %1 : tensor<7x1x9xf32>
          %cast_61 = tensor.cast %13 : tensor<7x1xf32> to tensor<?x?xf32>
          %289 = arith.shrui %extracted_40, %c61268768_i64 : i64
          %290 = vector.transpose %36, [0, 1] : vector<7x1xi16> to vector<7x1xi16>
          %291 = math.ctpop %c2023546911_i32 : i32
          %292 = math.tanh %276 : tensor<7x1x9xf16>
          %293 = arith.muli %extracted_49, %c1944593197_i32 : i32
          %294 = math.expm1 %1 : tensor<7x1x9xf32>
          %295 = index.sizeof
          %296 = math.round %276 : tensor<7x1x9xf16>
          %297 = math.ctpop %c2023546911_i32 : i32
          %cst_62 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_62 : f32
        }
      %267 = index.sub %c8, %c13
      %collapsed_55 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<1x9x7xi1> into tensor<9x7xi1>
      memref.tensor_store %219, %alloc_7 : memref<7x1x9xi1>
      scf.condition(%false) %177 : vector<1xf32>
    } do {
    ^bb0(%arg0: vector<1xf32>):
      %261 = vector.multi_reduction <maxui>, %126, %c971899678_i32 [0] : vector<1xi32> to i32
      bufferization.dealloc_tensor %6 : tensor<1x9x7xi1>
      %262 = arith.floordivsi %extracted, %c1944593197_i32 : i32
      %263 = vector.maskedload %alloc_7[%c4, %c0, %c2], %38, %38 : memref<7x1x9xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %264 = math.floor %2 : tensor<9x7x1xf32>
      %265 = arith.negf %cst_3 : f16
      %rank_54 = tensor.rank %6 : tensor<1x9x7xi1>
      %266 = vector.multi_reduction <maxui>, %215, %true [0] : vector<9xi1> to i1
      %alloc_55 = memref.alloc() : memref<f32>
      memref.tensor_store %20, %alloc_55 : memref<f32>
      %267 = arith.remsi %extracted_40, %c61268768_i64 : i64
      %268 = affine.load %192[%c3, %c13, %c1] : memref<9x7x1xi64>
      %269 = vector.broadcast %cst_1 : f32 to vector<9x1xf32>
      %dest_56, %accumulated_value_57 = vector.scan <minf>, %132, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<9x7x1xf32>, vector<9x1xf32>
      %expanded = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<1x9x7xi1> into tensor<1x9x7x1xi1>
      %270 = math.ceil %2 : tensor<9x7x1xf32>
      %271 = tensor.empty() : tensor<1x9xf32>
      %272 = tensor.empty() : tensor<7x9xf32>
      %273 = linalg.matmul ins(%235, %271 : tensor<7x1xf32>, tensor<1x9xf32>) outs(%272 : tensor<7x9xf32>) -> tensor<7x9xf32>
      %274 = arith.divf %cst_1, %cst : f32
      scf.yield %177 : vector<1xf32>
    }
    %256 = vector.broadcast %c14584_i16 : i16 to vector<1xi16>
    %257 = vector.maskedload %alloc_18[%c7, %c4, %c0], %38, %256 : memref<9x7x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
    %258 = tensor.empty(%221, %96) : tensor<?x?xi1>
    %259 = linalg.copy ins(%generated_38 : tensor<?x?xi1>) outs(%258 : tensor<?x?xi1>) -> tensor<?x?xi1>
    %alloc_52 = memref.alloc() : memref<7x1x9xi32>
    linalg.transpose ins(%alloc_13 : memref<1x9x7xi32>) outs(%alloc_52 : memref<7x1x9xi32>) permutation = [2, 0, 1] 
    %alloc_53 = memref.alloc() : memref<1x9xi1>
    linalg.reduce ins(%6 : tensor<1x9x7xi1>) outs(%alloc_53 : memref<1x9xi1>) dimensions = [2] 
      (%in: i1, %init: i1) {
        %261 = vector.splat %c6 : vector<1x9x7xindex>
        %262 = tensor.empty() : tensor<9x7x1xf32>
        %263 = arith.shli %c14584_i16, %c-27608_i16 : i16
        %264 = math.tanh %207 : tensor<7xf32>
        %265 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %266 = vector.transfer_write %265, %7[%c8, %32, %163] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf16>, tensor<7x1x9xf16>
        %false_54 = arith.constant false
        %false_55 = arith.constant false
        %267 = vector.transfer_read %6[%104, %c4, %210], %false_55 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<1x9x7xi1>, vector<7x1xi1>
        %268 = tensor.empty() : tensor<1x9x7xi32>
        %269 = memref.atomic_rmw assign %cst_3, %alloc_14[%c3, %c0, %c8] : (f16, memref<7x1x9xf16>) -> f16
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    scf.parallel (%arg0) = (%c14) to (%178) step (%c5) {
      %261 = arith.maxui %extracted_40, %extracted_40 : i64
      %262 = arith.remf %cst_0, %cst : f32
      %263 = math.absi %0 : tensor<9x7x1xi64>
      %264 = arith.minui %c-27608_i16, %c-27608_i16 : i16
      memref.assume_alignment %62, 4 : memref<7x1x9xf16>
      %265 = vector.maskedload %alloc_10[%c5, %c0], %38, %193 : memref<7x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %266 = math.ceil %202 : tensor<1x9x7xf32>
      %267 = arith.subi %169, %extracted_40 : i64
      %268 = arith.shli %c1303960709_i32, %extracted : i32
      %269 = math.tanh %235 : tensor<7x1xf32>
      %270 = tensor.empty() : tensor<7x1x9xi1>
      %mapped_54 = linalg.map ins(%3, %3, %219 : tensor<7x1x9xi1>, tensor<7x1x9xi1>, tensor<7x1x9xi1>) outs(%270 : tensor<7x1x9xi1>)
        (%in: i1, %in_55: i1, %in_56: i1) {
          %277 = index.casts %rank : index to i32
          %278 = arith.remsi %c1102296611_i32, %extracted_49 : i32
          %279 = math.absf %231 : tensor<9x1xf32>
          %280 = arith.divui %c1303960709_i32, %extracted : i32
          %281 = vector.shuffle %36, %36 [0, 1, 2, 3, 4, 7, 8] : vector<7x1xi16>, vector<7x1xi16>
          %282 = affine.min affine_map<(d0, d1) -> (d0 floordiv 16, d0 floordiv 16 - d0 * 4)>(%245, %c0)
          %283 = index.add %203, %96
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_57 = arith.constant 0 : i16
          %284 = vector.transfer_read %9[%c1, %30], %c0_i16_57 : tensor<7x1xi16>, vector<i16>
          %285 = index.maxs %121, %81
          %286 = memref.atomic_rmw maxs %c1102296611_i32, %alloc_52[%c3, %c0, %c3] : (i32, memref<7x1x9xi32>) -> i32
          %287 = vector.create_mask %135, %c2, %c15 : vector<9x7x1xi1>
          %rank_58 = tensor.rank %6 : tensor<1x9x7xi1>
          %288 = bufferization.clone %alloc_7 : memref<7x1x9xi1> to memref<7x1x9xi1>
          %289 = arith.divf %cst_1, %cst : f32
          %from_elements = tensor.from_elements %c14584_i16, %c0_i16, %c14584_i16, %c0_i16, %c14584_i16, %c0_i16, %c14584_i16, %c0_i16, %c0_i16, %c-27608_i16, %c0_i16, %c-27608_i16, %c-27608_i16, %c-27608_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c-27608_i16, %c-27608_i16, %c0_i16, %c-27608_i16, %c0_i16, %c0_i16, %c0_i16, %c14584_i16, %c14584_i16, %c14584_i16, %c0_i16, %c-27608_i16, %c14584_i16, %c-27608_i16, %c-27608_i16, %c0_i16, %c0_i16, %c14584_i16, %c-27608_i16, %c14584_i16, %c0_i16, %c14584_i16, %c-27608_i16, %c14584_i16, %c0_i16, %c-27608_i16, %c0_i16, %c-27608_i16, %c-27608_i16, %c14584_i16, %c0_i16, %c-27608_i16, %c-27608_i16, %c-27608_i16, %c14584_i16, %c0_i16, %c-27608_i16, %c14584_i16, %c14584_i16, %c14584_i16, %c0_i16, %c0_i16, %c0_i16, %c14584_i16, %c14584_i16 : tensor<1x9x7xi16>
          %290 = math.fpowi %2, %114 : tensor<9x7x1xf32>, tensor<9x7x1xi32>
          %291 = vector.matrix_multiply %126, %126 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %292 = bufferization.to_tensor %alloc_8 : memref<1x9x7xi64>
          %293 = vector.multi_reduction <minsi>, %193, %126 [] : vector<1xi32> to vector<1xi32>
          %294 = math.absf %cst_1 : f32
          %extracted_59 = tensor.extract %3[%c3, %c0, %c3] : tensor<7x1x9xi1>
          memref.tensor_store %207, %alloc_21 : memref<7xf32>
          %295 = bufferization.to_tensor %alloc_22 : memref<7xf32>
          %296 = arith.cmpf uge, %cst_1, %cst : f32
          %297 = arith.maxui %c61268768_i64, %c61268768_i64 : i64
          %298 = arith.addf %cst, %cst_1 : f32
          bufferization.dealloc_tensor %collapsed_44 : tensor<7x9xi32>
          %299 = arith.divsi %extracted_49, %extracted_49 : i32
          %splat_60 = tensor.splat %cst_3 : tensor<9x7x1xf16>
          %300 = index.ceildivu %c4, %c11
          %301 = memref.realloc %alloc_21 : memref<7xf32> to memref<7xf32>
          %302 = arith.addf %cst, %cst_0 : f32
          %true_61 = arith.constant true
          linalg.yield %true_61 : i1
        }
      %271 = vector.broadcast %cst_2 : f32 to vector<9x7xf32>
      %272 = vector.multi_reduction <minf>, %200, %271 [2] : vector<9x7x1xf32> to vector<9x7xf32>
      %273 = index.castu %90 : index to i32
      %274 = math.log1p %reduced : tensor<9x7xf32>
      %275 = math.atan %21 : tensor<f32>
      %276 = index.divu %c11, %rank
      scf.yield
    }
    %260 = affine.vector_load %alloc_12[%c2, %245, %c14] : memref<9x7x1xi64>, vector<9xi64>
    affine.vector_store %256, %100[%c2, %c10] : memref<7x1xi16>, vector<1xi16>
    vector.print %19 : vector<7xi32>
    vector.print %36 : vector<7x1xi16>
    vector.print %37 : vector<1xf16>
    vector.print %38 : vector<1xi1>
    vector.print %39 : vector<1xf16>
    vector.print %46 : vector<7x1xi32>
    vector.print %59 : vector<9xi16>
    vector.print %119 : vector<f32>
    vector.print %122 : vector<7x1xi32>
    vector.print %126 : vector<1xi32>
    vector.print %128 : vector<7x1xf32>
    vector.print %129 : vector<7x1xf32>
    vector.print %131 : vector<9x7x1xf32>
    vector.print %132 : vector<9x7x1xf32>
    vector.print %144 : vector<9xi64>
    vector.print %177 : vector<1xf32>
    vector.print %188 : vector<7x1x9xf32>
    vector.print %193 : vector<1xi32>
    vector.print %200 : vector<9x7x1xf32>
    vector.print %201 : vector<9x7x1xf32>
    vector.print %205 : vector<9xi1>
    vector.print %206 : vector<9xi1>
    vector.print %215 : vector<9xi1>
    vector.print %217 : vector<i1>
    vector.print %222 : vector<f32>
    vector.print %228 : vector<1xf16>
    vector.print %256 : vector<1xi16>
    vector.print %257 : vector<1xi16>
    vector.print %260 : vector<9xi64>
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %c1944593197_i32 : i32
    vector.print %c2023546911_i32 : i32
    vector.print %cst_1 : f32
    vector.print %c1102296611_i32 : i32
    vector.print %c61268768_i64 : i64
    vector.print %c-27608_i16 : i16
    vector.print %c342458842_i32 : i32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c1077083642_i32 : i32
    vector.print %c971899678_i32 : i32
    vector.print %c1303960709_i32 : i32
    vector.print %cst_4 : f16
    vector.print %c14584_i16 : i16
    vector.print %true : i1
    vector.print %false : i1
    vector.print %134 : i32
    vector.print %extracted : i32
    vector.print %169 : i64
    vector.print %172 : f16
    vector.print %extracted_40 : i64
    vector.print %extracted_49 : i32
    return %10 : tensor<1x9x7xf16>
  }
}
